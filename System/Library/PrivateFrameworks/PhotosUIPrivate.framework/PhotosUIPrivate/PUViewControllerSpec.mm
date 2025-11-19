@interface PUViewControllerSpec
- (CGSize)_portraitOrientedSizeForSize:(CGSize)result;
- (CGSize)layoutReferenceSize;
- (CGSize)secondScreenSize;
- (PUViewControllerSpec)init;
- (void)_didChange;
- (void)_publishChange:(id)a3;
- (void)_setCurrentLayoutStyle:(int64_t)a3;
- (void)_updateCurrentLayoutStyleIfNeeded;
- (void)_willChange;
- (void)assertInsideChangesBlock;
- (void)performChanges:(id)a3;
- (void)registerChangeObserver:(id)a3;
- (void)setLayoutReferenceSize:(CGSize)a3;
- (void)setPrefersCompactLayoutForSplitScreen:(BOOL)a3;
- (void)setPresentedForSecondScreen:(BOOL)a3;
- (void)setSecondScreenSize:(CGSize)a3;
- (void)setTraitCollection:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
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

- (void)_setCurrentLayoutStyle:(int64_t)a3
{
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_currentLayoutStyle != a3)
  {
    self->_currentLayoutStyle = a3;
    v5 = [(PUViewControllerSpec *)self currentChange];
    [v5 setLayoutStyleChanged:1];
  }
}

- (void)_updateCurrentLayoutStyleIfNeeded
{
  if ([(PUViewControllerSpec *)self _needsUpdateLayoutStyle])
  {
    v22 = [(PUViewControllerSpec *)self traitCollection];
    v3 = [(PUViewControllerSpec *)self layoutReferenceSize];
    v6 = v22;
    if (v22)
    {
      v7 = v4;
      v8 = v5;
      v3 = [v22 horizontalSizeClass];
      v6 = v22;
      if (v3)
      {
        v9 = [MEMORY[0x1E69DCEB0] px_mainScreen];
        [v9 _referenceBounds];
        v11 = v10;
        v13 = v12;

        [(PUViewControllerSpec *)self _portraitOrientedSizeForSize:v7, v8];
        v15 = v14;
        v17 = v16;
        v18 = [(PUViewControllerSpec *)self prefersCompactLayoutForSplitScreen];
        [(PUViewControllerSpec *)self _setNeedsUpdateLayoutStyle:0];
        if ([v22 horizontalSizeClass] == 2 && (v17 < v13 ? (v19 = 1) : (v19 = v15 < v11), objc_msgSend(v22, "verticalSizeClass") == 2 && (!v18 || !v19)))
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

        v3 = [(PUViewControllerSpec *)self _setCurrentLayoutStyle:v20];
        v6 = v22;
      }
    }

    MEMORY[0x1EEE66BB8](v3, v6);
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

- (void)_publishChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 changed])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(PUViewControllerSpec *)self _changeObservers];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 viewControllerSpec:self didChange:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v4 = [(PUViewControllerSpec *)self currentChange];
    [(PUViewControllerSpec *)self _setCurrentChange:0];
    [(PUViewControllerSpec *)self _publishChange:v4];
  }
}

- (void)_willChange
{
  v4 = [(PUViewControllerSpec *)self _changeCount];
  [(PUViewControllerSpec *)self _setChangeCount:v4 + 1];
  if (!v4)
  {
    v5 = [(PUViewControllerSpec *)self newSpecChange];
    v7 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PUViewControllerSpec.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"currentChange != nil"}];

      v5 = 0;
    }

    [(PUViewControllerSpec *)self _setCurrentChange:v5];
  }
}

- (void)setPrefersCompactLayoutForSplitScreen:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_prefersCompactLayoutForSplitScreen != v3)
  {
    self->_prefersCompactLayoutForSplitScreen = v3;
    v5 = [(PUViewControllerSpec *)self currentChange];
    [v5 setPrefersCompactLayoutForSplitScreenChanged:1];
  }
}

- (void)setSecondScreenSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_secondScreenSize.width || height != self->_secondScreenSize.height)
  {
    self->_secondScreenSize.width = width;
    self->_secondScreenSize.height = height;
    v7 = [(PUViewControllerSpec *)self currentChange];
    [v7 setSecondScreenSizeChanged:1];
  }
}

- (void)setPresentedForSecondScreen:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_presentedForSecondScreen != v3)
  {
    self->_presentedForSecondScreen = v3;
    v5 = [(PUViewControllerSpec *)self currentChange];
    [v5 setPresentedForSecondScreenChanged:1];
  }
}

- (void)setLayoutReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_layoutReferenceSize.width || height != self->_layoutReferenceSize.height)
  {
    self->_layoutReferenceSize.width = width;
    self->_layoutReferenceSize.height = height;
    v7 = [(PUViewControllerSpec *)self currentChange];
    [v7 setLayoutReferenceSizeChanged:1];

    [(PUViewControllerSpec *)self _invalidateLayoutStyle];
  }
}

- (void)setTraitCollection:(id)a3
{
  v6 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_traitCollection != v6)
  {
    objc_storeStrong(&self->_traitCollection, a3);
    v5 = [(PUViewControllerSpec *)self currentChange];
    [v5 setTraitCollectionChanged:1];

    [(PUViewControllerSpec *)self _invalidateLayoutStyle];
  }
}

- (void)assertInsideChangesBlock
{
  v4 = [(PUViewControllerSpec *)self currentChange];

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUViewControllerSpec.m" lineNumber:48 description:@"not within a change block"];
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PUViewControllerSpec *)self _changeObservers];
  [v5 removeObject:v4];
}

- (void)registerChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PUViewControllerSpec *)self _changeObservers];
  [v5 addObject:v4];
}

- (void)performChanges:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUViewControllerSpec.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"changes != NULL"}];
  }

  [(PUViewControllerSpec *)self _willChange];
  v6[2]();
  [(PUViewControllerSpec *)self _didChange];
}

- (PUViewControllerSpec)init
{
  v6.receiver = self;
  v6.super_class = PUViewControllerSpec;
  v2 = [(PUViewControllerSpec *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v2->__changeObservers;
    v2->__changeObservers = v3;
  }

  return v2;
}

@end