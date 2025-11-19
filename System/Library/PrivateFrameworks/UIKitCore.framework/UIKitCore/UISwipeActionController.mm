@interface UISwipeActionController
- ($A7B7FA971CD029BAA4A09478E9E1AEDA)configureForSwipeDirection:(SEL)a3 configuration:(unint64_t)a4 startingAtTouchLocation:(id)a5;
- (BOOL)_isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:(id)a3;
- (BOOL)_prefersRTL;
- (BOOL)swipeEnabled;
- (BOOL)swipeHandler:(id)a3 mayBeginSwipeAtLocation:(CGPoint)a4 withProposedDirection:(unint64_t)a5;
- (BOOL)touchAtLocationShouldDismissSwipedItem:(CGPoint)a3 isTouchUp:(BOOL)a4;
- (CGRect)swipeHandlerRestingFrame:(id)a3;
- (NSIndexPath)swipedIndexPath;
- (NSSet)swipedIndexPaths;
- (UIScrollView)containerView;
- (UISwipeActionController)initWithSwipeActionHost:(id)a3 style:(unint64_t)a4;
- (UISwipeActionHost)swipeActionHost;
- (UISwipeActionHost_Internal)_internalSwipeActionHost;
- (UISwipeOccurrence)currentSwipeOccurrence;
- (UIView)swipedItemView;
- (id)_existingSwipeOccurrenceForIndexPath:(id)a3;
- (id)_swipeActionsConfigurationForSwipeDirection:(unint64_t)a3 indexPath:(id)a4;
- (id)_swipedViewForItemAtIndexPath:(id)a3;
- (unint64_t)_swipeDirectionForLeadingEdge:(BOOL)a3;
- (void)_handleDeleteOfSwipeOccurrence:(id)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)a3;
- (void)deleteSectionAtIndex:(unint64_t)a3;
- (void)insertRowAtIndexPath:(id)a3;
- (void)insertSectionAtIndex:(unint64_t)a3;
- (void)moveRowAtIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)moveSectionAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)prepareForSwipeDirection:(unint64_t)a3 startingAtTouchLocation:(CGPoint)a4;
- (void)rebaseUnambiguousSwipeOccurrencesWithBlock:(id)a3;
- (void)reconfigureActiveSwipeOccurrences;
- (void)reloadData;
- (void)resetSwipedItemAnimated:(BOOL)a3 completion:(id)a4;
- (void)setSwipeEnabled:(BOOL)a3;
- (void)swipeHandler:(id)a3 didConfirmSwipeWithInfo:(id *)a4;
- (void)swipeHandler:(id)a3 didGenerateSwipeWithInfo:(id *)a4 isTracking:(BOOL)a5;
- (void)swipeHandlerDidBeginSwipe:(id)a3;
- (void)swipeItemAtIndexPath:(id)a3 configuration:(id)a4 direction:(unint64_t)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)swipeOccurrence:(id)a3 didChangeStateFrom:(int64_t)a4;
- (void)swipeOccurrence:(id)a3 willFinishWithDeletion:(BOOL)a4;
- (void)swipeOccurrenceDidFinish:(id)a3;
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

          v9 = [*(*(&v11 + 1) + 8 * i) indexPath];
          [v3 addObject:v9];
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

- (UISwipeActionController)initWithSwipeActionHost:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = UISwipeActionController;
  v7 = [(UISwipeActionController *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(UISwipeActionController *)v7 setStyle:a4];
    [(UISwipeActionController *)v8 setSwipeActionHost:v6];
    v9 = [[_UISwipeHandler alloc] initWithSwipeController:v8];
    [(UISwipeActionController *)v8 setSwipeHandler:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    swipeOccurrences = v8->_swipeOccurrences;
    v8->_swipeOccurrences = v10;

    v12 = [(UISwipeActionController *)v8 swipeActionHost];
    v13 = [v12 itemContainerViewForSwipeActionController:v8];
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

- (void)setSwipeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISwipeActionController *)self swipeHandler];
  [v4 setActive:v3];
}

- (BOOL)swipeEnabled
{
  v2 = [(UISwipeActionController *)self swipeHandler];
  v3 = [v2 isActive];

  return v3;
}

- (id)_swipeActionsConfigurationForSwipeDirection:(unint64_t)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [(UISwipeActionController *)self _prefersRTL];
  v8 = a3 != 1;
  v9 = [(UISwipeActionController *)self swipeActionHost];
  v10 = v9;
  if (v8 == v7)
  {
    [v9 swipeActionController:self trailingSwipeConfigurationForItemAtIndexPath:v6];
  }

  else
  {
    [v9 swipeActionController:self leadingSwipeConfigurationForItemAtIndexPath:v6];
  }
  v11 = ;

  return v11;
}

- (void)swipeItemAtIndexPath:(id)a3 configuration:(id)a4 direction:(unint64_t)a5 animated:(BOOL)a6 completion:(id)a7
{
  v57 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v13)
  {
    v13 = [(UISwipeActionController *)self _swipeActionsConfigurationForSwipeDirection:a5 indexPath:v12];
  }

  if (v12)
  {
    if (v13)
    {
      v15 = [v13 actions];
      if (v15)
      {
        v16 = v15;
        [v13 actions];
        v17 = v43 = a5;
        v18 = [v17 count];

        if (v18)
        {
          v44 = v14;
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
            v42 = a6;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v53 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [*(*(&v52 + 1) + 8 * i) indexPath];
                v25 = v12;
                v26 = v25;
                if (v24 == v25)
                {

LABEL_24:
                  v14 = v44;
                  goto LABEL_27;
                }

                if (v24)
                {
                  v27 = [v24 isEqual:v25];

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
              a6 = v42;
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v19 = [(UISwipeActionController *)self _swipedViewForItemAtIndexPath:v12];
          [(NSMutableSet *)v19 center];
          v29 = v28;
          v31 = v30;
          WeakRetained = objc_loadWeakRetained(&self->_containerView);
          v33 = [(NSMutableSet *)v19 superview];
          [WeakRetained convertPoint:v33 fromView:{v29, v31}];
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
          v14 = v44;
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

          v41 = [(UISwipeActionController *)self currentSwipeOccurrence];
          [v41 beginSwipeTracking:0];
          v45[0] = v39;
          v45[1] = 0;
          v46 = a6;
          memset(v47, 0, sizeof(v47));
          v48 = v40;
          v49 = xmmword_18A682680;
          [v41 updateOffsetWithSwipeInfo:v45 isTracking:0 completion:v44];

LABEL_27:
        }
      }
    }
  }
}

- (void)resetSwipedItemAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
            [(UISwipeOccurrence *)v13 resetAnimated:v4 completion:v6];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [(UISwipeActionController *)self swipeHandler];
    [v14 resetSwipe];
  }

  else
  {
    v15 = [(UISwipeActionController *)self swipeHandler];
    [v15 resetSwipe];

    if (v6)
    {
      v6[2](v6, 1);
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
        v10 = [v9 state];
        if ([v9 active] && (objc_msgSend(v9, "_hasAmbiguousIndexPath") & 1) == 0 && v10 <= 1)
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

          v12 = [v9 indexPath];
          [(UISwipeActionController *)self swipeItemAtIndexPath:v12 configuration:0 direction:v11 animated:0 completion:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (NSIndexPath)swipedIndexPath
{
  v2 = [(UISwipeActionController *)self currentSwipeOccurrence];
  v3 = [v2 indexPath];

  return v3;
}

- (UIView)swipedItemView
{
  v3 = [(UISwipeActionController *)self swipedIndexPath];
  v4 = [(UISwipeActionController *)self _swipedViewForItemAtIndexPath:v3];

  return v4;
}

- (id)_existingSwipeOccurrenceForIndexPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 indexPath];
        v11 = v4;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (v4 && v10)
        {
          v13 = [v10 isEqual:v11];

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

- (BOOL)_isSwipeForIndexPathFirstOccurrenceBeginningOrLastOccurrenceEnding:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_swipeOccurrences count]== 1)
  {
    v5 = [(NSMutableSet *)self->_swipeOccurrences anyObject];
    v6 = [v5 indexPath];
    v7 = v4;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v7 || !v6)
      {

        v10 = 0;
        v11 = v6;
        goto LABEL_11;
      }

      v9 = [v6 isEqual:v7];

      if (!v9)
      {
        v10 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    v11 = [(UISwipeActionController *)self currentSwipeOccurrence];
    v10 = v11 == 0;
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)_swipedViewForItemAtIndexPath:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(UISwipeActionController *)self swipeActionHost];
    v6 = [v5 swipeActionController:self viewForItemAtIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_prefersRTL
{
  v2 = self;
  v3 = [(UISwipeActionController *)self swipeActionHost];
  LOBYTE(v2) = [v3 layoutDirectionForSwipeActionController:v2] == 1;

  return v2;
}

- (unint64_t)_swipeDirectionForLeadingEdge:(BOOL)a3
{
  if ([(UISwipeActionController *)self _prefersRTL]!= a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)rebaseUnambiguousSwipeOccurrencesWithBlock:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"rebaseBlock != nil"}];
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
          v13 = [v12 indexPath];
          v14 = v5[2](v5, v13);

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

- (void)deleteSectionAtIndex:(unint64_t)a3
{
  swipeOccurrences = self->_swipeOccurrences;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UISwipeActionController_deleteSectionAtIndex___block_invoke;
  v4[3] = &unk_1E71229E8;
  v4[4] = self;
  v4[5] = a3;
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

- (void)deleteRowAtIndexPath:(id)a3
{
  v4 = a3;
  swipeOccurrences = self->_swipeOccurrences;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UISwipeActionController_deleteRowAtIndexPath___block_invoke;
  v7[3] = &unk_1E7122A10;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)insertSectionAtIndex:(unint64_t)a3
{
  swipeOccurrences = self->_swipeOccurrences;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UISwipeActionController_insertSectionAtIndex___block_invoke;
  v4[3] = &__block_descriptor_40_e31_v24__0__UISwipeOccurrence_8_B16l;
  v4[4] = a3;
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

- (void)insertRowAtIndexPath:(id)a3
{
  v4 = a3;
  swipeOccurrences = self->_swipeOccurrences;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UISwipeActionController_insertRowAtIndexPath___block_invoke;
  v7[3] = &unk_1E7122A58;
  v8 = v4;
  v6 = v4;
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

- (void)moveSectionAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  swipeOccurrences = self->_swipeOccurrences;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UISwipeActionController_moveSectionAtIndex_toIndex___block_invoke;
  v5[3] = &__block_descriptor_48_e31_v24__0__UISwipeOccurrence_8_B16l;
  v5[4] = a3;
  v5[5] = a4;
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

- (void)moveRowAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  swipeOccurrences = self->_swipeOccurrences;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UISwipeActionController_moveRowAtIndexPath_toIndexPath___block_invoke;
  v11[3] = &unk_1E7122A10;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)_handleDeleteOfSwipeOccurrence:(id)a3
{
  v7 = a3;
  [v7 _setHasAmbiguousIndexPath];
  v3 = [v7 currentAction];
  if (v3)
  {
    v4 = v3;
    v5 = [v7 currentAction];
    if ([v5 style] == 1)
    {
      v6 = [v7 state];

      if (v6 == 3)
      {
        [v7 _transitionToState:4];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  [v7 resetAnimated:0 completion:0];
LABEL_7:
}

- (void)prepareForSwipeDirection:(unint64_t)a3 startingAtTouchLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(UISwipeActionController *)self swipeActionHost];
  v12 = [v8 swipeActionController:self indexPathForTouchLocation:{x, y}];

  v9 = v12;
  if (a3 && v12)
  {
    v10 = [(UISwipeActionController *)self _existingSwipeOccurrenceForIndexPath:v12];
    v11 = v10;
    if (v10 && !_canReuseExistingSwipeOccurrenceForSwipeDirection(v10, a3))
    {
      [v11 _forceTeardown];
    }

    v9 = v12;
  }
}

- ($A7B7FA971CD029BAA4A09478E9E1AEDA)configureForSwipeDirection:(SEL)a3 configuration:(unint64_t)a4 startingAtTouchLocation:(id)a5
{
  y = a6.y;
  x = a6.x;
  v12 = a5;
  *&retstr->var0 = 0u;
  *&retstr->var3 = 0u;
  v13 = [(UISwipeActionController *)self swipeActionHost];
  v14 = [v13 swipeActionController:self indexPathForTouchLocation:{x, y}];

  if (!a4 || !v14)
  {
    goto LABEL_31;
  }

  v15 = [(UISwipeActionController *)self _existingSwipeOccurrenceForIndexPath:v14];
  if (v15)
  {
    v16 = v15;
    if (!_canReuseExistingSwipeOccurrenceForSwipeDirection(v15, a4))
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a3 object:self file:@"UISwipeActionController.m" lineNumber:455 description:{@"There is an existing swipe occurrence for %@ and it can't be reused for swipe direction %ld, so it should have been cleaned up in prepareForSwipeDirection: %@", v14, a4, v16}];
    }

    [(UISwipeOccurrence *)v16 updateSwipedView];
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v16 = [[UISwipeOccurrence alloc] initWithController:self indexPath:v14 defaultStyle:[(UISwipeActionController *)self style]];
  [(NSMutableSet *)self->_swipeOccurrences addObject:v16];
  if (!v12)
  {
LABEL_9:
    incomingSwipeActionsConfiguration = self->_incomingSwipeActionsConfiguration;
    if (incomingSwipeActionsConfiguration)
    {
      v18 = incomingSwipeActionsConfiguration;
    }

    else
    {
      v18 = [(UISwipeActionController *)self _swipeActionsConfigurationForSwipeDirection:a4 indexPath:v14];
    }

    v12 = v18;
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
    [(UISwipeOccurrence *)v16 prepareWithSwipeDirection:a4 configuration:v12];
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
    v25 = [(UISwipeActionController *)self swipeActionHost];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = [(UISwipeActionController *)self swipeActionHost];
      [v27 swipeActionController:self willBeginSwipeForItemAtIndexPath:v14];
    }

    [(UISwipeActionController *)self setCurrentSwipeOccurrence:v16];
    v28 = [(UISwipeActionController *)self swipeActionHost];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = [(UISwipeActionController *)self swipeActionHost];
      [v30 swipeActionController:self didBeginSwipeForItemAtIndexPath:v14];
    }
  }

  else
  {
    [(NSMutableSet *)self->_swipeOccurrences removeObject:v16];
  }

LABEL_31:
  return result;
}

- (BOOL)touchAtLocationShouldDismissSwipedItem:(CGPoint)a3 isTouchUp:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
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
    v13 = [(UISwipeActionController *)self swipeActionHost];
    v7 = [v13 gestureRecognizerViewForSwipeActionController:self];

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

          v19 = [*(*(&v28 + 1) + 8 * i) indexPath];
          v20 = [(UISwipeActionController *)self _swipedViewForItemAtIndexPath:v19];
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

- (void)swipeOccurrence:(id)a3 willFinishWithDeletion:(BOOL)a4
{
  v10 = a3;
  v5 = [(UISwipeActionController *)self swipeActionHost];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UISwipeActionController *)self swipeActionHost];
    v8 = [v10 indexPath];
    [v7 swipeActionController:self willEndSwipeForItemAtIndexPath:v8];
  }

  v9 = [(UISwipeActionController *)self swipeHandler];
  [v9 resetSwipe];
}

- (void)swipeOccurrenceDidFinish:(id)a3
{
  v9 = a3;
  v4 = [(UISwipeActionController *)self currentSwipeOccurrence];

  if (v4 == v9)
  {
    [(UISwipeActionController *)self setCurrentSwipeOccurrence:0];
  }

  v5 = [(UISwipeActionController *)self swipeActionHost];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UISwipeActionController *)self swipeActionHost];
    v8 = [v9 indexPath];
    [v7 swipeActionController:self didEndSwipeForItemAtIndexPath:v8];
  }

  [(NSMutableSet *)self->_swipeOccurrences removeObject:v9];
}

- (void)swipeOccurrence:(id)a3 didChangeStateFrom:(int64_t)a4
{
  v9 = a3;
  v6 = [(UISwipeActionController *)self _internalSwipeActionHost];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UISwipeActionController *)self _internalSwipeActionHost];
    [v8 swipeActionController:self swipeOccurrence:v9 didChangeStateFrom:a4 to:{objc_msgSend(v9, "state")}];
  }
}

- (BOOL)swipeHandler:(id)a3 mayBeginSwipeAtLocation:(CGPoint)a4 withProposedDirection:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = [(UISwipeActionController *)self swipeActionHost];
  v10 = [v9 swipeActionController:self indexPathForTouchLocation:{x, y}];

  if (v10)
  {
    v11 = [(UISwipeActionController *)self currentSwipeOccurrence];
    v12 = v11;
    if (v11 && ([v11 state] & 0xFFFFFFFFFFFFFFFELL) == 4 && (objc_msgSend(v12, "_hasAmbiguousIndexPath") & 1) != 0 || (-[UISwipeActionController swipeActionHost](self, "swipeActionHost"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0) && (-[UISwipeActionController swipeActionHost](self, "swipeActionHost"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "swipeActionController:mayBeginSwipeForItemAtIndexPath:", self, v10), v15, !v16))
    {
      v21 = 0;
      goto LABEL_22;
    }

    if (v12)
    {
      v17 = [v12 indexPath];
      v18 = v10;
      v19 = v18;
      if (v17 == v18)
      {

        goto LABEL_19;
      }

      if (v17)
      {
        v20 = [v17 isEqual:v18];

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

    v22 = [(UISwipeActionController *)self _swipeActionsConfigurationForSwipeDirection:a5 indexPath:v10];
    v17 = v22;
    if (!v22 || ([v22 actions], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, !v24))
    {
      [(UISwipeActionController *)self setIncomingSwipeActionsConfiguration:0];
      v21 = 0;
      goto LABEL_21;
    }

    [(UISwipeActionController *)self setIncomingSwipeActionsConfiguration:v17];
LABEL_19:
    v21 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v21 = 0;
LABEL_23:

  return v21;
}

- (void)swipeHandlerDidBeginSwipe:(id)a3
{
  v5 = [(UISwipeActionController *)self currentSwipeOccurrence];
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:611 description:@"No current swipe occurrence"];

    v5 = 0;
  }

  [v5 beginSwipeTracking:1];
  [(UISwipeActionController *)self setIncomingSwipeActionsConfiguration:0];
}

- (void)swipeHandler:(id)a3 didGenerateSwipeWithInfo:(id *)a4 isTracking:(BOOL)a5
{
  v5 = a5;
  v9 = [(UISwipeActionController *)self currentSwipeOccurrence];
  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:621 description:@"No current swipe occurrence"];
  }

  v10 = *&a4->var2;
  v12[0] = *&a4->var0;
  v12[1] = v10;
  v12[2] = *&a4->var4;
  [v9 updateOffsetWithSwipeInfo:v12 isTracking:v5 completion:0];
}

- (void)swipeHandler:(id)a3 didConfirmSwipeWithInfo:(id *)a4
{
  v7 = [(UISwipeActionController *)self currentSwipeOccurrence];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UISwipeActionController.m" lineNumber:629 description:@"No current swipe occurrence"];
  }

  v8 = *&a4->var2;
  v10[0] = *&a4->var0;
  v10[1] = v8;
  v10[2] = *&a4->var4;
  [v7 performPrimaryActionWithSwipeInfo:v10];
}

- (CGRect)swipeHandlerRestingFrame:(id)a3
{
  v3 = [(UISwipeActionController *)self currentSwipeOccurrence];
  if (!v3)
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

  [v3 swipedViewRestingFrame];
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

- (void)_observeScrollViewDidScroll:(id)a3
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
      v6 = [v5 isScrollAnimating];

      if (!v6)
      {
        return;
      }
    }

    v7 = [(UISwipeActionController *)self swipeHandler];
    v8 = [v7 isInteracting];

    if (v8)
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