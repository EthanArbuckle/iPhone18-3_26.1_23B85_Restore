@interface UISwipeActionController
- ($A7B7FA971CD029BAA4A09478E9E1AEDA)configureForSwipeDirection:(SEL)direction configuration:(unint64_t)configuration startingAtTouchLocation:(id)location;
- (BOOL)_isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:(id)ending;
- (BOOL)_prefersRTL;
- (BOOL)swipeEnabled;
- (BOOL)swipeHandler:(id)handler mayBeginSwipeAtLocation:(CGPoint)location withProposedDirection:(unint64_t)direction;
- (BOOL)touchAtLocationShouldDismissSwipedItem:(CGPoint)item isTouchUp:(BOOL)up;
- (CGRect)swipeHandlerRestingFrame:(id)frame;
- (NSIndexPath)swipedIndexPath;
- (NSSet)swipedIndexPaths;
- (UIScrollView)containerView;
- (UISwipeActionController)initWithSwipeActionHost:(id)host style:(unint64_t)style;
- (UISwipeActionHost)swipeActionHost;
- (UISwipeActionHost_Internal)_internalSwipeActionHost;
- (UISwipeOccurrence)currentSwipeOccurrence;
- (UIView)swipedItemView;
- (id)_existingSwipeOccurrenceForIndexPath:(id)path;
- (id)_swipeActionsConfigurationForSwipeDirection:(unint64_t)direction indexPath:(id)path;
- (id)_swipedViewForItemAtIndexPath:(id)path;
- (unint64_t)_swipeDirectionForLeadingEdge:(BOOL)edge;
- (void)_handleDeleteOfSwipeOccurrence:(id)occurrence;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)path;
- (void)deleteSectionAtIndex:(unint64_t)index;
- (void)insertRowAtIndexPath:(id)path;
- (void)insertSectionAtIndex:(unint64_t)index;
- (void)moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)moveSectionAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)prepareForSwipeDirection:(unint64_t)direction startingAtTouchLocation:(CGPoint)location;
- (void)rebaseUnambiguousSwipeOccurrencesWithBlock:(id)block;
- (void)reconfigureActiveSwipeOccurrences;
- (void)reloadData;
- (void)resetSwipedItemAnimated:(BOOL)animated completion:(id)completion;
- (void)setSwipeEnabled:(BOOL)enabled;
- (void)swipeHandler:(id)handler didConfirmSwipeWithInfo:(id *)info;
- (void)swipeHandler:(id)handler didGenerateSwipeWithInfo:(id *)info isTracking:(BOOL)tracking;
- (void)swipeHandlerDidBeginSwipe:(id)swipe;
- (void)swipeItemAtIndexPath:(id)path configuration:(id)configuration direction:(unint64_t)direction animated:(BOOL)animated completion:(id)completion;
- (void)swipeOccurrence:(id)occurrence didChangeStateFrom:(int64_t)from;
- (void)swipeOccurrence:(id)occurrence willFinishWithDeletion:(BOOL)deletion;
- (void)swipeOccurrenceDidFinish:(id)finish;
- (void)updateLayout;
@end

@implementation UISwipeActionController

- (UISwipeActionHost)swipeActionHost
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionHost);

  return WeakRetained;
}

- (void)reloadData
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_swipeOccurrences;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _setDidReloadData];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(UISwipeActionController *)self resetSwipedItemAnimated:0 completion:0];
}

- (void)updateLayout
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_swipeOccurrences;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateLayout];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (NSSet)swipedIndexPaths
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_swipeOccurrences count])
  {
    v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableSet count](self->_swipeOccurrences, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_swipeOccurrences;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          indexPath = [*(*(&v11 + 1) + 8 * i) indexPath];
          [v3 addObject:indexPath];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  return v3;
}

- (UISwipeOccurrence)currentSwipeOccurrence
{
  WeakRetained = objc_loadWeakRetained(&self->_currentSwipeOccurrence);

  return WeakRetained;
}

- (UISwipeActionController)initWithSwipeActionHost:(id)host style:(unint64_t)style
{
  hostCopy = host;
  v16.receiver = self;
  v16.super_class = UISwipeActionController;
  v7 = [(UISwipeActionController *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(UISwipeActionController *)v7 setStyle:style];
    [(UISwipeActionController *)v8 setSwipeActionHost:hostCopy];
    v9 = [[_UISwipeHandler alloc] initWithSwipeController:v8];
    [(UISwipeActionController *)v8 setSwipeHandler:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    swipeOccurrences = v8->_swipeOccurrences;
    v8->_swipeOccurrences = v10;

    swipeActionHost = [(UISwipeActionController *)v8 swipeActionHost];
    v13 = [swipeActionHost itemContainerViewForSwipeActionController:v8];
    [(UISwipeActionController *)v8 setContainerView:v13];

    WeakRetained = objc_loadWeakRetained(&v8->_containerView);
    [WeakRetained _addScrollViewScrollObserver:v8];
  }

  return v8;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  [WeakRetained _removeScrollViewScrollObserver:self];

  v4.receiver = self;
  v4.super_class = UISwipeActionController;
  [(UISwipeActionController *)&v4 dealloc];
}

- (UISwipeActionHost_Internal)_internalSwipeActionHost
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionHost);

  return WeakRetained;
}

- (void)setSwipeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  swipeHandler = [(UISwipeActionController *)self swipeHandler];
  [swipeHandler setActive:enabledCopy];
}

- (BOOL)swipeEnabled
{
  swipeHandler = [(UISwipeActionController *)self swipeHandler];
  isActive = [swipeHandler isActive];

  return isActive;
}

- (id)_swipeActionsConfigurationForSwipeDirection:(unint64_t)direction indexPath:(id)path
{
  pathCopy = path;
  _prefersRTL = [(UISwipeActionController *)self _prefersRTL];
  v8 = direction != 1;
  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  v10 = swipeActionHost;
  if (v8 == _prefersRTL)
  {
    [swipeActionHost swipeActionController:self trailingSwipeConfigurationForItemAtIndexPath:pathCopy];
  }

  else
  {
    [swipeActionHost swipeActionController:self leadingSwipeConfigurationForItemAtIndexPath:pathCopy];
  }
  v11 = ;

  return v11;
}

- (void)swipeItemAtIndexPath:(id)path configuration:(id)configuration direction:(unint64_t)direction animated:(BOOL)animated completion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  configurationCopy = configuration;
  completionCopy = completion;
  if (!configurationCopy)
  {
    configurationCopy = [(UISwipeActionController *)self _swipeActionsConfigurationForSwipeDirection:direction indexPath:pathCopy];
  }

  if (pathCopy)
  {
    if (configurationCopy)
    {
      actions = [configurationCopy actions];
      if (actions)
      {
        v16 = actions;
        [configurationCopy actions];
        v17 = v43 = direction;
        v18 = [v17 count];

        if (v18)
        {
          v44 = completionCopy;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v19 = self->_swipeOccurrences;
          v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v53;
            animatedCopy = animated;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v53 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                indexPath = [*(*(&v52 + 1) + 8 * i) indexPath];
                v25 = pathCopy;
                v26 = v25;
                if (indexPath == v25)
                {

LABEL_24:
                  completionCopy = v44;
                  goto LABEL_27;
                }

                if (indexPath)
                {
                  v27 = [indexPath isEqual:v25];

                  if (v27)
                  {
                    goto LABEL_24;
                  }
                }

                else
                {
                }
              }

              v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v52 objects:v56 count:16];
              animated = animatedCopy;
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v19 = [(UISwipeActionController *)self _swipedViewForItemAtIndexPath:pathCopy];
          [(NSMutableSet *)v19 center];
          v29 = v28;
          v31 = v30;
          WeakRetained = objc_loadWeakRetained(&self->_containerView);
          superview = [(NSMutableSet *)v19 superview];
          [WeakRetained convertPoint:superview fromView:{v29, v31}];
          v35 = v34;
          v37 = v36;

          if (!v43)
          {
            [(UISwipeActionController *)self _prefersRTL];
          }

          [_UISwipeHandler initiateSwipeWithDirection:"initiateSwipeWithDirection:configuration:location:userInitiated:" configuration:v35 location:v37 userInitiated:?];
          v50 = 0u;
          v51 = 0u;
          swipeHandler = self->_swipeHandler;
          completionCopy = v44;
          if (swipeHandler)
          {
            [(_UISwipeHandler *)swipeHandler currentSwipeConfig];
            v39 = v50;
            v40 = v51;
          }

          else
          {
            v39 = 0;
            v40 = 0;
          }

          currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
          [currentSwipeOccurrence beginSwipeTracking:0];
          v45[0] = v39;
          v45[1] = 0;
          animatedCopy2 = animated;
          memset(v47, 0, sizeof(v47));
          v48 = v40;
          v49 = xmmword_18A682680;
          [currentSwipeOccurrence updateOffsetWithSwipeInfo:v45 isTracking:0 completion:v44];

LABEL_27:
        }
      }
    }
  }
}

- (void)resetSwipedItemAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = self->_preparingSwipeOccurrence;
  if (v7)
  {
    *&self->_flags |= 1u;
  }

  if ([(NSMutableSet *)self->_swipeOccurrences count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NSMutableSet *)self->_swipeOccurrences copy];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (v13 == v7)
          {
            [(UISwipeOccurrence *)v13 resetWhilePreparing];
          }

          else
          {
            [(UISwipeOccurrence *)v13 resetAnimated:animatedCopy completion:completionCopy];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    swipeHandler = [(UISwipeActionController *)self swipeHandler];
    [swipeHandler resetSwipe];
  }

  else
  {
    swipeHandler2 = [(UISwipeActionController *)self swipeHandler];
    [swipeHandler2 resetSwipe];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)reconfigureActiveSwipeOccurrences
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_swipeOccurrences copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        state = [v9 state];
        if ([v9 active] && (objc_msgSend(v9, "_hasAmbiguousIndexPath") & 1) == 0 && state <= 1)
        {
          [v9 resetForReconfiguration];
          if ([v9 direction])
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          indexPath = [v9 indexPath];
          [(UISwipeActionController *)self swipeItemAtIndexPath:indexPath configuration:0 direction:v11 animated:0 completion:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (NSIndexPath)swipedIndexPath
{
  currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
  indexPath = [currentSwipeOccurrence indexPath];

  return indexPath;
}

- (UIView)swipedItemView
{
  swipedIndexPath = [(UISwipeActionController *)self swipedIndexPath];
  v4 = [(UISwipeActionController *)self _swipedViewForItemAtIndexPath:swipedIndexPath];

  return v4;
}

- (id)_existingSwipeOccurrenceForIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_swipeOccurrences;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        indexPath = [v9 indexPath];
        v11 = pathCopy;
        v12 = v11;
        if (indexPath == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (pathCopy && indexPath)
        {
          v13 = [indexPath isEqual:v11];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (BOOL)_isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:(id)ending
{
  endingCopy = ending;
  if ([(NSMutableSet *)self->_swipeOccurrences count]== 1)
  {
    anyObject = [(NSMutableSet *)self->_swipeOccurrences anyObject];
    indexPath = [anyObject indexPath];
    v7 = endingCopy;
    v8 = v7;
    if (indexPath == v7)
    {
    }

    else
    {
      if (!v7 || !indexPath)
      {

        v10 = 0;
        currentSwipeOccurrence = indexPath;
        goto LABEL_11;
      }

      v9 = [indexPath isEqual:v7];

      if (!v9)
      {
        v10 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
    v10 = currentSwipeOccurrence == 0;
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)_swipedViewForItemAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
    v6 = [swipeActionHost swipeActionController:self viewForItemAtIndexPath:pathCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_prefersRTL
{
  selfCopy = self;
  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  LOBYTE(selfCopy) = [swipeActionHost layoutDirectionForSwipeActionController:selfCopy] == 1;

  return selfCopy;
}

- (unint64_t)_swipeDirectionForLeadingEdge:(BOOL)edge
{
  if ([(UISwipeActionController *)self _prefersRTL]!= edge)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)rebaseUnambiguousSwipeOccurrencesWithBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"rebaseBlock != nil"}];
  }

  v6 = [(NSMutableSet *)self->_swipeOccurrences copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 _hasAmbiguousIndexPath] & 1) == 0)
        {
          indexPath = [v12 indexPath];
          v14 = blockCopy[2](blockCopy, indexPath);

          if (v14)
          {
            [v12 setIndexPath:v14];
          }

          else
          {
            [(UISwipeActionController *)self _handleDeleteOfSwipeOccurrence:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)deleteSectionAtIndex:(unint64_t)index
{
  swipeOccurrences = self->_swipeOccurrences;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UISwipeActionController_deleteSectionAtIndex___block_invoke;
  v4[3] = &unk_1E71229E8;
  v4[4] = self;
  v4[5] = index;
  [(NSMutableSet *)swipeOccurrences enumerateObjectsUsingBlock:v4];
}

void __48__UISwipeActionController_deleteSectionAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  if (([v14 _hasAmbiguousIndexPath] & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [v14 indexPath];
    v5 = [v4 section];

    if (v3 >= v5)
    {
      v11 = *(a1 + 40);
      v12 = [v14 indexPath];
      v13 = [v12 section];

      if (v11 == v13)
      {
        [*(a1 + 32) _handleDeleteOfSwipeOccurrence:v14];
      }
    }

    else
    {
      v6 = MEMORY[0x1E696AC88];
      v7 = [v14 indexPath];
      v8 = [v7 row];
      v9 = [v14 indexPath];
      v10 = [v6 indexPathForRow:v8 inSection:{objc_msgSend(v9, "section") - 1}];
      [v14 setIndexPath:v10];
    }
  }
}

- (void)deleteRowAtIndexPath:(id)path
{
  pathCopy = path;
  swipeOccurrences = self->_swipeOccurrences;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UISwipeActionController_deleteRowAtIndexPath___block_invoke;
  v7[3] = &unk_1E7122A10;
  v8 = pathCopy;
  selfCopy = self;
  v6 = pathCopy;
  [(NSMutableSet *)swipeOccurrences enumerateObjectsUsingBlock:v7];
}

void __48__UISwipeActionController_deleteRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  if (([v15 _hasAmbiguousIndexPath] & 1) == 0)
  {
    v3 = [*(a1 + 32) section];
    v4 = [v15 indexPath];
    if (v3 == [v4 section])
    {
      v5 = [*(a1 + 32) row];
      v6 = [v15 indexPath];
      v7 = [v6 row];

      if (v5 < v7)
      {
        v8 = MEMORY[0x1E696AC88];
        v9 = [v15 indexPath];
        v10 = [v9 row] - 1;
        v11 = [v15 indexPath];
        v12 = [v8 indexPathForRow:v10 inSection:{objc_msgSend(v11, "section")}];
        [v15 setIndexPath:v12];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v13 = *(a1 + 32);
    v14 = [v15 indexPath];
    LODWORD(v13) = [v13 isEqual:v14];

    if (v13)
    {
      [*(a1 + 40) _handleDeleteOfSwipeOccurrence:v15];
    }
  }

LABEL_8:
}

- (void)insertSectionAtIndex:(unint64_t)index
{
  swipeOccurrences = self->_swipeOccurrences;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UISwipeActionController_insertSectionAtIndex___block_invoke;
  v4[3] = &__block_descriptor_40_e31_v24__0__UISwipeOccurrence_8_B16l;
  v4[4] = index;
  [(NSMutableSet *)swipeOccurrences enumerateObjectsUsingBlock:v4];
}

void __48__UISwipeActionController_insertSectionAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([v11 _hasAmbiguousIndexPath] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v11 indexPath];
    v5 = [v4 section];

    if (v3 <= v5)
    {
      v6 = MEMORY[0x1E696AC88];
      v7 = [v11 indexPath];
      v8 = [v7 row];
      v9 = [v11 indexPath];
      v10 = [v6 indexPathForRow:v8 inSection:{objc_msgSend(v9, "section") + 1}];
      [v11 setIndexPath:v10];
    }
  }
}

- (void)insertRowAtIndexPath:(id)path
{
  pathCopy = path;
  swipeOccurrences = self->_swipeOccurrences;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UISwipeActionController_insertRowAtIndexPath___block_invoke;
  v7[3] = &unk_1E7122A58;
  v8 = pathCopy;
  v6 = pathCopy;
  [(NSMutableSet *)swipeOccurrences enumerateObjectsUsingBlock:v7];
}

void __48__UISwipeActionController_insertRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (([v12 _hasAmbiguousIndexPath] & 1) == 0)
  {
    v3 = [*(a1 + 32) section];
    v4 = [v12 indexPath];
    if (v3 == [v4 section])
    {
      v5 = [*(a1 + 32) row];
      v6 = [v12 indexPath];
      v7 = [v6 row];

      if (v5 > v7)
      {
        goto LABEL_6;
      }

      v8 = MEMORY[0x1E696AC88];
      v4 = [v12 indexPath];
      v9 = [v4 row];
      v10 = [v12 indexPath];
      v11 = [v8 indexPathForRow:v9 + 1 inSection:{objc_msgSend(v10, "section")}];
      [v12 setIndexPath:v11];
    }
  }

LABEL_6:
}

- (void)moveSectionAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  swipeOccurrences = self->_swipeOccurrences;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UISwipeActionController_moveSectionAtIndex_toIndex___block_invoke;
  v5[3] = &__block_descriptor_48_e31_v24__0__UISwipeOccurrence_8_B16l;
  v5[4] = index;
  v5[5] = toIndex;
  [(NSMutableSet *)swipeOccurrences enumerateObjectsUsingBlock:v5];
}

void __54__UISwipeActionController_moveSectionAtIndex_toIndex___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  if (([v23 _hasAmbiguousIndexPath] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v23 indexPath];
    v5 = [v4 section];

    if (v3 == v5)
    {
      v6 = MEMORY[0x1E696AC88];
      v7 = [v23 indexPath];
      v8 = [v6 indexPathForRow:objc_msgSend(v7 inSection:{"row"), *(a1 + 40)}];
      [v23 setIndexPath:v8];
LABEL_8:

      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v10 = [v23 indexPath];
    v11 = [v10 section];

    if (v9 < v11)
    {
      v12 = MEMORY[0x1E696AC88];
      v13 = [v23 indexPath];
      v14 = [v13 row];
      v15 = [v23 indexPath];
      v16 = [v12 indexPathForRow:v14 inSection:{objc_msgSend(v15, "section") - 1}];
      [v23 setIndexPath:v16];
    }

    v17 = *(a1 + 40);
    v18 = [v23 indexPath];
    v19 = [v18 section];

    if (v17 <= v19)
    {
      v20 = MEMORY[0x1E696AC88];
      v7 = [v23 indexPath];
      v21 = [v7 row];
      v8 = [v23 indexPath];
      v22 = [v20 indexPathForRow:v21 inSection:{objc_msgSend(v8, "section") + 1}];
      [v23 setIndexPath:v22];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  swipeOccurrences = self->_swipeOccurrences;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UISwipeActionController_moveRowAtIndexPath_toIndexPath___block_invoke;
  v11[3] = &unk_1E7122A10;
  v12 = pathCopy;
  v13 = indexPathCopy;
  v9 = indexPathCopy;
  v10 = pathCopy;
  [(NSMutableSet *)swipeOccurrences enumerateObjectsUsingBlock:v11];
}

void __58__UISwipeActionController_moveRowAtIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  if ([v23 _hasAmbiguousIndexPath])
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 32);
  v4 = [v23 indexPath];
  LODWORD(v3) = [v3 isEqual:v4];

  if (v3)
  {
    [v23 setIndexPath:*(a1 + 40)];
    goto LABEL_12;
  }

  v5 = [*(a1 + 32) section];
  v6 = [v23 indexPath];
  if (v5 != [v6 section])
  {
    goto LABEL_7;
  }

  v7 = [*(a1 + 32) row];
  v8 = [v23 indexPath];
  v9 = [v8 row];

  if (v7 < v9)
  {
    v10 = MEMORY[0x1E696AC88];
    v6 = [v23 indexPath];
    v11 = [v6 row] - 1;
    v12 = [v23 indexPath];
    v13 = [v10 indexPathForRow:v11 inSection:{objc_msgSend(v12, "section")}];
    [v23 setIndexPath:v13];

LABEL_7:
  }

  v14 = [*(a1 + 40) section];
  v15 = [v23 indexPath];
  if (v14 == [v15 section])
  {
    v16 = [*(a1 + 40) row];
    v17 = [v23 indexPath];
    v18 = [v17 row];

    if (v16 > v18)
    {
      goto LABEL_12;
    }

    v19 = MEMORY[0x1E696AC88];
    v15 = [v23 indexPath];
    v20 = [v15 row];
    v21 = [v23 indexPath];
    v22 = [v19 indexPathForRow:v20 + 1 inSection:{objc_msgSend(v21, "section")}];
    [v23 setIndexPath:v22];
  }

LABEL_12:
}

- (void)_handleDeleteOfSwipeOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  [occurrenceCopy _setHasAmbiguousIndexPath];
  currentAction = [occurrenceCopy currentAction];
  if (currentAction)
  {
    v4 = currentAction;
    currentAction2 = [occurrenceCopy currentAction];
    if ([currentAction2 style] == 1)
    {
      state = [occurrenceCopy state];

      if (state == 3)
      {
        [occurrenceCopy _transitionToState:4];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  [occurrenceCopy resetAnimated:0 completion:0];
LABEL_7:
}

- (void)prepareForSwipeDirection:(unint64_t)direction startingAtTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  v12 = [swipeActionHost swipeActionController:self indexPathForTouchLocation:{x, y}];

  v9 = v12;
  if (direction && v12)
  {
    v10 = [(UISwipeActionController *)self _existingSwipeOccurrenceForIndexPath:v12];
    v11 = v10;
    if (v10 && !_canReuseExistingSwipeOccurrenceForSwipeDirection(v10, direction))
    {
      [v11 _forceTeardown];
    }

    v9 = v12;
  }
}

- ($A7B7FA971CD029BAA4A09478E9E1AEDA)configureForSwipeDirection:(SEL)direction configuration:(unint64_t)configuration startingAtTouchLocation:(id)location
{
  y = a6.y;
  x = a6.x;
  locationCopy = location;
  *&retstr->var0 = 0u;
  *&retstr->var3 = 0u;
  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  v14 = [swipeActionHost swipeActionController:self indexPathForTouchLocation:{x, y}];

  if (!configuration || !v14)
  {
    goto LABEL_31;
  }

  v15 = [(UISwipeActionController *)self _existingSwipeOccurrenceForIndexPath:v14];
  if (v15)
  {
    v16 = v15;
    if (!_canReuseExistingSwipeOccurrenceForSwipeDirection(v15, configuration))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:direction object:self file:@"UISwipeActionController.m" lineNumber:455 description:{@"There is an existing swipe occurrence for %@ and it can't be reused for swipe direction %ld, so it should have been cleaned up in prepareForSwipeDirection: %@", v14, configuration, v16}];
    }

    [(UISwipeOccurrence *)v16 updateSwipedView];
    if (locationCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v16 = [[UISwipeOccurrence alloc] initWithController:self indexPath:v14 defaultStyle:[(UISwipeActionController *)self style]];
  [(NSMutableSet *)self->_swipeOccurrences addObject:v16];
  if (!locationCopy)
  {
LABEL_9:
    incomingSwipeActionsConfiguration = self->_incomingSwipeActionsConfiguration;
    if (incomingSwipeActionsConfiguration)
    {
      v18 = incomingSwipeActionsConfiguration;
    }

    else
    {
      v18 = [(UISwipeActionController *)self _swipeActionsConfigurationForSwipeDirection:configuration indexPath:v14];
    }

    locationCopy = v18;
  }

LABEL_13:
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  p_preparingSwipeOccurrence = &self->_preparingSwipeOccurrence;
  preparingSwipeOccurrence = self->_preparingSwipeOccurrence;
  if (has_internal_diagnostics)
  {
    if (preparingSwipeOccurrence || (*&self->_flags & 1) != 0)
    {
      v33 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: reentrantly preparing a swipe occurrence is not supported", buf, 2u);
      }
    }
  }

  else if (preparingSwipeOccurrence || (*&self->_flags & 1) != 0)
  {
    v32 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0F28) + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: reentrantly preparing a swipe occurrence is not supported", buf, 2u);
    }
  }

  objc_storeStrong(&self->_preparingSwipeOccurrence, v16);
  if (v16)
  {
    [(UISwipeOccurrence *)v16 prepareWithSwipeDirection:configuration configuration:locationCopy];
  }

  else
  {
    *buf = 0u;
    v38 = 0u;
  }

  v22 = v38;
  *&retstr->var0 = *buf;
  *&retstr->var3 = v22;
  flags = self->_flags;
  if (os_variant_has_internal_diagnostics())
  {
    if ((flags & 1) == 0 && *p_preparingSwipeOccurrence != v16)
    {
      v34 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v34, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: preparingSwipeOccurrence was unexpectedly changed to a different occurrence", buf, 2u);
      }
    }
  }

  else if ((flags & 1) == 0 && *p_preparingSwipeOccurrence != v16)
  {
    v36 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0F30) + 8);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: preparingSwipeOccurrence was unexpectedly changed to a different occurrence", buf, 2u);
    }
  }

  v24 = self->_preparingSwipeOccurrence;
  self->_preparingSwipeOccurrence = 0;

  *&self->_flags &= ~1u;
  if (retstr->var0 && [(UISwipeOccurrence *)v16 active]&& (flags & 1) == 0)
  {
    swipeActionHost2 = [(UISwipeActionController *)self swipeActionHost];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      swipeActionHost3 = [(UISwipeActionController *)self swipeActionHost];
      [swipeActionHost3 swipeActionController:self willBeginSwipeForItemAtIndexPath:v14];
    }

    [(UISwipeActionController *)self setCurrentSwipeOccurrence:v16];
    swipeActionHost4 = [(UISwipeActionController *)self swipeActionHost];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      swipeActionHost5 = [(UISwipeActionController *)self swipeActionHost];
      [swipeActionHost5 swipeActionController:self didBeginSwipeForItemAtIndexPath:v14];
    }
  }

  else
  {
    [(NSMutableSet *)self->_swipeOccurrences removeObject:v16];
  }

LABEL_31:
  return result;
}

- (BOOL)touchAtLocationShouldDismissSwipedItem:(CGPoint)item isTouchUp:(BOOL)up
{
  y = item.y;
  x = item.x;
  v34 = *MEMORY[0x1E69E9840];
  if (up)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_swipeOccurrences;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v24 + 1) + 8 * v11) shouldDismissWithTouchLocation:{x, y, v24}])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          v12 = 1;
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

LABEL_23:
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
    v7 = [swipeActionHost gestureRecognizerViewForSwipeActionController:self];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = self->_swipeOccurrences;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          indexPath = [*(*(&v28 + 1) + 8 * i) indexPath];
          v20 = [(UISwipeActionController *)self _swipedViewForItemAtIndexPath:indexPath];
          if (v20)
          {
            [(NSMutableSet *)v7 convertPoint:v20 toView:x, y];
            if (v21 >= 0.0)
            {
              v22 = v21;
              [v20 bounds];
              if (v22 <= CGRectGetHeight(v35))
              {

                goto LABEL_23;
              }
            }
          }
        }

        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v12 = [(NSMutableSet *)self->_swipeOccurrences count]!= 0;
  }

LABEL_25:

  return v12;
}

- (void)swipeOccurrence:(id)occurrence willFinishWithDeletion:(BOOL)deletion
{
  occurrenceCopy = occurrence;
  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    swipeActionHost2 = [(UISwipeActionController *)self swipeActionHost];
    indexPath = [occurrenceCopy indexPath];
    [swipeActionHost2 swipeActionController:self willEndSwipeForItemAtIndexPath:indexPath];
  }

  swipeHandler = [(UISwipeActionController *)self swipeHandler];
  [swipeHandler resetSwipe];
}

- (void)swipeOccurrenceDidFinish:(id)finish
{
  finishCopy = finish;
  currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];

  if (currentSwipeOccurrence == finishCopy)
  {
    [(UISwipeActionController *)self setCurrentSwipeOccurrence:0];
  }

  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    swipeActionHost2 = [(UISwipeActionController *)self swipeActionHost];
    indexPath = [finishCopy indexPath];
    [swipeActionHost2 swipeActionController:self didEndSwipeForItemAtIndexPath:indexPath];
  }

  [(NSMutableSet *)self->_swipeOccurrences removeObject:finishCopy];
}

- (void)swipeOccurrence:(id)occurrence didChangeStateFrom:(int64_t)from
{
  occurrenceCopy = occurrence;
  _internalSwipeActionHost = [(UISwipeActionController *)self _internalSwipeActionHost];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _internalSwipeActionHost2 = [(UISwipeActionController *)self _internalSwipeActionHost];
    [_internalSwipeActionHost2 swipeActionController:self swipeOccurrence:occurrenceCopy didChangeStateFrom:from to:{objc_msgSend(occurrenceCopy, "state")}];
  }
}

- (BOOL)swipeHandler:(id)handler mayBeginSwipeAtLocation:(CGPoint)location withProposedDirection:(unint64_t)direction
{
  y = location.y;
  x = location.x;
  swipeActionHost = [(UISwipeActionController *)self swipeActionHost];
  v10 = [swipeActionHost swipeActionController:self indexPathForTouchLocation:{x, y}];

  if (v10)
  {
    currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
    v12 = currentSwipeOccurrence;
    if (currentSwipeOccurrence && ([currentSwipeOccurrence state] & 0xFFFFFFFFFFFFFFFELL) == 4 && (objc_msgSend(v12, "_hasAmbiguousIndexPath") & 1) != 0 || (-[UISwipeActionController swipeActionHost](self, "swipeActionHost"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0) && (-[UISwipeActionController swipeActionHost](self, "swipeActionHost"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "swipeActionController:mayBeginSwipeForItemAtIndexPath:", self, v10), v15, !v16))
    {
      v21 = 0;
      goto LABEL_22;
    }

    if (v12)
    {
      indexPath = [v12 indexPath];
      v18 = v10;
      v19 = v18;
      if (indexPath == v18)
      {

        goto LABEL_19;
      }

      if (indexPath)
      {
        v20 = [indexPath isEqual:v18];

        if (v20)
        {
          v21 = 1;
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v22 = [(UISwipeActionController *)self _swipeActionsConfigurationForSwipeDirection:direction indexPath:v10];
    indexPath = v22;
    if (!v22 || ([v22 actions], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, !v24))
    {
      [(UISwipeActionController *)self setIncomingSwipeActionsConfiguration:0];
      v21 = 0;
      goto LABEL_21;
    }

    [(UISwipeActionController *)self setIncomingSwipeActionsConfiguration:indexPath];
LABEL_19:
    v21 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v21 = 0;
LABEL_23:

  return v21;
}

- (void)swipeHandlerDidBeginSwipe:(id)swipe
{
  currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
  v7 = currentSwipeOccurrence;
  if (!currentSwipeOccurrence)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:611 description:@"No current swipe occurrence"];

    currentSwipeOccurrence = 0;
  }

  [currentSwipeOccurrence beginSwipeTracking:1];
  [(UISwipeActionController *)self setIncomingSwipeActionsConfiguration:0];
}

- (void)swipeHandler:(id)handler didGenerateSwipeWithInfo:(id *)info isTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
  if (!currentSwipeOccurrence)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:621 description:@"No current swipe occurrence"];
  }

  v10 = *&info->var2;
  v12[0] = *&info->var0;
  v12[1] = v10;
  v12[2] = *&info->var4;
  [currentSwipeOccurrence updateOffsetWithSwipeInfo:v12 isTracking:trackingCopy completion:0];
}

- (void)swipeHandler:(id)handler didConfirmSwipeWithInfo:(id *)info
{
  currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
  if (!currentSwipeOccurrence)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:629 description:@"No current swipe occurrence"];
  }

  v8 = *&info->var2;
  v10[0] = *&info->var0;
  v10[1] = v8;
  v10[2] = *&info->var4;
  [currentSwipeOccurrence performPrimaryActionWithSwipeInfo:v10];
}

- (CGRect)swipeHandlerRestingFrame:(id)frame
{
  currentSwipeOccurrence = [(UISwipeActionController *)self currentSwipeOccurrence];
  if (!currentSwipeOccurrence)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "No current swipe occurrence.", buf, 2u);
      }
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &swipeHandlerRestingFrame____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18[0] = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "No current swipe occurrence.", v18, 2u);
      }
    }
  }

  [currentSwipeOccurrence swipedViewRestingFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_swipeOccurrences count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerView);
    if ([WeakRetained isTracking])
    {
    }

    else
    {
      v5 = objc_loadWeakRetained(&self->_containerView);
      isScrollAnimating = [v5 isScrollAnimating];

      if (!isScrollAnimating)
      {
        return;
      }
    }

    swipeHandler = [(UISwipeActionController *)self swipeHandler];
    isInteracting = [swipeHandler isInteracting];

    if (isInteracting)
    {

      [(UISwipeActionController *)self updateLayout];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [(NSMutableSet *)self->_swipeOccurrences copy];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            if ([v14 state] != 3 && objc_msgSend(v14, "state") != 4 && objc_msgSend(v14, "state") != 5)
            {
              [v14 resetAnimated:1 completion:0];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (UIScrollView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end