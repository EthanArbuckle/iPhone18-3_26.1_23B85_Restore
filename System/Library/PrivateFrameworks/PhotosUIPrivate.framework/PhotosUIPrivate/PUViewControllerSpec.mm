@interface PUViewControllerSpec
- (CGSize)_portraitOrientedSizeForSize:(CGSize)result;
- (CGSize)layoutReferenceSize;
- (CGSize)secondScreenSize;
- (PUViewControllerSpec)init;
- (void)_didChange;
- (void)_publishChange:(id)change;
- (void)_setCurrentLayoutStyle:(int64_t)style;
- (void)_updateCurrentLayoutStyleIfNeeded;
- (void)_willChange;
- (void)assertInsideChangesBlock;
- (void)performChanges:(id)changes;
- (void)registerChangeObserver:(id)observer;
- (void)setLayoutReferenceSize:(CGSize)size;
- (void)setPrefersCompactLayoutForSplitScreen:(BOOL)screen;
- (void)setPresentedForSecondScreen:(BOOL)screen;
- (void)setSecondScreenSize:(CGSize)size;
- (void)setTraitCollection:(id)collection;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation PUViewControllerSpec

- (CGSize)secondScreenSize
{
  width = self->_secondScreenSize.width;
  height = self->_secondScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)layoutReferenceSize
{
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setCurrentLayoutStyle:(int64_t)style
{
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_currentLayoutStyle != style)
  {
    self->_currentLayoutStyle = style;
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [currentChange setLayoutStyleChanged:1];
  }
}

- (void)_updateCurrentLayoutStyleIfNeeded
{
  if ([(PUViewControllerSpec *)self _needsUpdateLayoutStyle])
  {
    traitCollection = [(PUViewControllerSpec *)self traitCollection];
    layoutReferenceSize = [(PUViewControllerSpec *)self layoutReferenceSize];
    v6 = traitCollection;
    if (traitCollection)
    {
      v7 = v4;
      v8 = v5;
      layoutReferenceSize = [traitCollection horizontalSizeClass];
      v6 = traitCollection;
      if (layoutReferenceSize)
      {
        px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
        [px_mainScreen _referenceBounds];
        v11 = v10;
        v13 = v12;

        [(PUViewControllerSpec *)self _portraitOrientedSizeForSize:v7, v8];
        v15 = v14;
        v17 = v16;
        prefersCompactLayoutForSplitScreen = [(PUViewControllerSpec *)self prefersCompactLayoutForSplitScreen];
        [(PUViewControllerSpec *)self _setNeedsUpdateLayoutStyle:0];
        if ([traitCollection horizontalSizeClass] == 2 && (v17 < v13 ? (v19 = 1) : (v19 = v15 < v11), objc_msgSend(traitCollection, "verticalSizeClass") == 2 && (!prefersCompactLayoutForSplitScreen || !v19)))
        {
          v20 = 4;
        }

        else
        {
          v21 = fmin(v8, v7);
          if (v21 <= 400.0)
          {
            if (v21 <= 350.0)
            {
              v20 = 1;
            }

            else
            {
              v20 = 2;
            }
          }

          else
          {
            v20 = 3;
          }
        }

        layoutReferenceSize = [(PUViewControllerSpec *)self _setCurrentLayoutStyle:v20];
        v6 = traitCollection;
      }
    }

    MEMORY[0x1EEE66BB8](layoutReferenceSize, v6);
  }
}

- (CGSize)_portraitOrientedSizeForSize:(CGSize)result
{
  if (result.width <= result.height)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (result.width > result.height)
  {
    result.width = result.height;
  }

  v4 = height;
  result.height = v4;
  return result;
}

- (void)_publishChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([changeCopy changed])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _changeObservers = [(PUViewControllerSpec *)self _changeObservers];
    v6 = [_changeObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_changeObservers);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 viewControllerSpec:self didChange:changeCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [_changeObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_didChange
{
  v3 = [(PUViewControllerSpec *)self _changeCount]- 1;
  [(PUViewControllerSpec *)self _setChangeCount:v3];
  if (!v3)
  {
    [(PUViewControllerSpec *)self updateIfNeeded];
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [(PUViewControllerSpec *)self _setCurrentChange:0];
    [(PUViewControllerSpec *)self _publishChange:currentChange];
  }
}

- (void)_willChange
{
  _changeCount = [(PUViewControllerSpec *)self _changeCount];
  [(PUViewControllerSpec *)self _setChangeCount:_changeCount + 1];
  if (!_changeCount)
  {
    newSpecChange = [(PUViewControllerSpec *)self newSpecChange];
    v7 = newSpecChange;
    if (!newSpecChange)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUViewControllerSpec.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"currentChange != nil"}];

      newSpecChange = 0;
    }

    [(PUViewControllerSpec *)self _setCurrentChange:newSpecChange];
  }
}

- (void)setPrefersCompactLayoutForSplitScreen:(BOOL)screen
{
  screenCopy = screen;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_prefersCompactLayoutForSplitScreen != screenCopy)
  {
    self->_prefersCompactLayoutForSplitScreen = screenCopy;
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [currentChange setPrefersCompactLayoutForSplitScreenChanged:1];
  }
}

- (void)setSecondScreenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_secondScreenSize.width || height != self->_secondScreenSize.height)
  {
    self->_secondScreenSize.width = width;
    self->_secondScreenSize.height = height;
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [currentChange setSecondScreenSizeChanged:1];
  }
}

- (void)setPresentedForSecondScreen:(BOOL)screen
{
  screenCopy = screen;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_presentedForSecondScreen != screenCopy)
  {
    self->_presentedForSecondScreen = screenCopy;
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [currentChange setPresentedForSecondScreenChanged:1];
  }
}

- (void)setLayoutReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_layoutReferenceSize.width || height != self->_layoutReferenceSize.height)
  {
    self->_layoutReferenceSize.width = width;
    self->_layoutReferenceSize.height = height;
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [currentChange setLayoutReferenceSizeChanged:1];

    [(PUViewControllerSpec *)self _invalidateLayoutStyle];
  }
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_traitCollection != collectionCopy)
  {
    objc_storeStrong(&self->_traitCollection, collection);
    currentChange = [(PUViewControllerSpec *)self currentChange];
    [currentChange setTraitCollectionChanged:1];

    [(PUViewControllerSpec *)self _invalidateLayoutStyle];
  }
}

- (void)assertInsideChangesBlock
{
  currentChange = [(PUViewControllerSpec *)self currentChange];

  if (!currentChange)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUViewControllerSpec.m" lineNumber:48 description:@"not within a change block"];
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  _changeObservers = [(PUViewControllerSpec *)self _changeObservers];
  [_changeObservers removeObject:observerCopy];
}

- (void)registerChangeObserver:(id)observer
{
  observerCopy = observer;
  _changeObservers = [(PUViewControllerSpec *)self _changeObservers];
  [_changeObservers addObject:observerCopy];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUViewControllerSpec.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"changes != NULL"}];
  }

  [(PUViewControllerSpec *)self _willChange];
  changesCopy[2]();
  [(PUViewControllerSpec *)self _didChange];
}

- (PUViewControllerSpec)init
{
  v6.receiver = self;
  v6.super_class = PUViewControllerSpec;
  v2 = [(PUViewControllerSpec *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v2->__changeObservers;
    v2->__changeObservers = weakObjectsHashTable;
  }

  return v2;
}

@end