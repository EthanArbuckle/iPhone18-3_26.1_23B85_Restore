@interface _UIFloatingTabBarDragController
- (BOOL)_shouldAddPlaceholderForPendingDrop;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)hasActiveDrag;
- (UIDragItem)activeDropItem;
- (UIDropSession)activeDropSession;
- (_UIFloatingTabBarDragController)initWithDelegate:(id)a3 view:(id)a4;
- (_UIFloatingTabBarDragControllerDelegate)delegate;
- (double)_dragInteraction:(id)a3 delayForLiftBeginningAtLocation:(CGPoint)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)_insertPlaceholderAtIndex:(int64_t)a3;
- (void)_removePlaceholder;
- (void)_updateFavoriteOrderAnimated:(BOOL)a3;
- (void)beginEditingWithFavoriteOrder:(id)a3 excludedItems:(id)a4;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)endEditing;
- (void)insertTabForIdentifier:(id)a3;
- (void)removeTabForIdentifier:(id)a3;
- (void)resetFavoriteOrderWithDefaultOrder:(id)a3;
- (void)setPendingDropTab:(id)a3;
@end

@implementation _UIFloatingTabBarDragController

- (_UIFloatingTabBarDragController)initWithDelegate:(id)a3 view:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _UIFloatingTabBarDragController;
  v8 = [(_UIFloatingTabBarDragController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [[UIDragInteraction alloc] initWithDelegate:v9];
    dragInteraction = v9->_dragInteraction;
    v9->_dragInteraction = v10;

    [v7 addInteraction:v9->_dragInteraction];
    v12 = [[UIDropInteraction alloc] initWithDelegate:v9];
    dropInteraction = v9->_dropInteraction;
    v9->_dropInteraction = v12;

    [v7 addInteraction:v9->_dropInteraction];
  }

  return v9;
}

- (void)beginEditingWithFavoriteOrder:(id)a3 excludedItems:(id)a4
{
  self->_editing = 1;
  v6 = MEMORY[0x1E695DFA0];
  v7 = a4;
  v8 = [v6 orderedSetWithOrderedSet:a3];
  pendingFavoriteOrder = self->_pendingFavoriteOrder;
  self->_pendingFavoriteOrder = v8;

  v10 = [MEMORY[0x1E695DFA8] setWithSet:v7];

  pendingExcludedItems = self->_pendingExcludedItems;
  self->_pendingExcludedItems = v10;
}

- (void)resetFavoriteOrderWithDefaultOrder:(id)a3
{
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:a3];
  pendingFavoriteOrder = self->_pendingFavoriteOrder;
  self->_pendingFavoriteOrder = v4;

  v6 = [MEMORY[0x1E695DFA8] set];
  pendingExcludedItems = self->_pendingExcludedItems;
  self->_pendingExcludedItems = v6;

  [(UIDragInteraction *)self->_dragInteraction setEnabled:0];
  dragInteraction = self->_dragInteraction;

  [(UIDragInteraction *)dragInteraction setEnabled:1];
}

- (void)endEditing
{
  self->_editing = 0;
  pendingFavoriteOrder = self->_pendingFavoriteOrder;
  self->_pendingFavoriteOrder = 0;

  pendingExcludedItems = self->_pendingExcludedItems;
  self->_pendingExcludedItems = 0;

  [(_UIFloatingTabBarDragController *)self _removePlaceholder];
}

- (void)insertTabForIdentifier:(id)a3
{
  v5 = a3;
  if (([(NSMutableOrderedSet *)self->_pendingFavoriteOrder containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_pendingFavoriteOrder addObject:v5];
    v4 = [(_UIFloatingTabBarDragController *)self delegate];
    [v4 tabDragController:self updateFavoriteOrderAnimated:1];
  }
}

- (void)removeTabForIdentifier:(id)a3
{
  v5 = a3;
  if ([(NSMutableOrderedSet *)self->_pendingFavoriteOrder containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_pendingFavoriteOrder removeObject:v5];
    v4 = [(_UIFloatingTabBarDragController *)self delegate];
    [v4 tabDragController:self updateFavoriteOrderAnimated:1];
  }
}

- (BOOL)hasActiveDrag
{
  v2 = [(_UIFloatingTabBarDragController *)self currentDragTab];
  v3 = v2 != 0;

  return v3;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a4;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [(_UIFloatingTabBarDragController *)self delegate];
    v8 = [v7 tabDragController:self tabForBeginningSession:v5];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v10 = [[UIDragItem alloc] initWithItemProvider:v9];
      [(UIDragItem *)v10 setLocalObject:v8];
      [v6 addObject:v10];
      [(_UIFloatingTabBarDragController *)self setCurrentDragTab:v8];
      v11 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      v12 = [v8 identifier];
      -[_UIFloatingTabBarDragController setCurrentDragTabOriginalIndex:](self, "setCurrentDragTabOriginalIndex:", [v11 indexOfObject:v12]);
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87___UIFloatingTabBarDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_1E70F5DB8;
  v5[4] = self;
  [a4 addCompletion:v5];
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = [a4 localObject];
  v7 = [(_UIFloatingTabBarDragController *)self delegate];
  v8 = [v7 tabDragController:self previewForLiftingTab:v6];

  return v8;
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v6 = [a4 localObject];
  v7 = [(_UIFloatingTabBarDragController *)self currentDragTab];
  v8 = v7;
  if (v6 != v7)
  {

LABEL_4:
    v10 = [(_UIFloatingTabBarDragController *)self delegate];
    v11 = [v10 tabDragController:self previewForCancellingTab:v6];

    goto LABEL_5;
  }

  v9 = [v6 _tabPlacement];

  if (v9 == 3)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v7 = [(_UIFloatingTabBarDragController *)self currentDragTab:a3];
  v8 = [v7 _tabPlacement];

  if (!a5 && v8 == 3)
  {
    v9 = [(_UIFloatingTabBarDragController *)self currentDragTab];
    v12 = [v9 identifier];

    v10 = [(_UIFloatingTabBarDragController *)self pendingExcludedItems];
    [v10 removeObject:v12];

    v11 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    [v11 insertObject:v12 atIndex:{-[_UIFloatingTabBarDragController currentDragTabOriginalIndex](self, "currentDragTabOriginalIndex")}];

    [(_UIFloatingTabBarDragController *)self _updateFavoriteOrderAnimated:1];
  }
}

- (double)_dragInteraction:(id)a3 delayForLiftBeginningAtLocation:(CGPoint)a4
{
  v4 = [(_UIFloatingTabBarDragController *)self delegate:a3];
  v5 = [v4 collectionView];

  v6 = [v5 pages];
  v7 = [v6 count];

  if (v7 <= 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 0.15;
  }

  return v8;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    v6 = [v5 items];
    v7 = [v6 firstObject];
    v8 = [v7 localObject];

    v9 = [v5 items];
    if ([v9 count] == 1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v9 = [(_UIFloatingTabBarDragController *)self delegate];
      v11 = [v9 tabDragController:self canHandleDropSessionForTab:v8];
    }

    else
    {
      v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  obj = a4;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    objc_storeWeak(&self->_activeDropSession, obj);
    v5 = [obj items];
    v6 = [v5 firstObject];
    v7 = [v6 localObject];

    [(_UIFloatingTabBarDragController *)self setPendingDropTab:v7];
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBarDragController *)self delegate];
  v7 = [v6 tabDragController:self dropProposalForSession:v5];

  v8 = [(_UIFloatingTabBarDragController *)self delegate];
  v9 = [v8 tabDragController:self destinationIndexPathForDropSession:v5];

  if (-[_UIFloatingTabBarDragController isEditing](self, "isEditing") && [v7 operation] == 3)
  {
    [(_UIFloatingTabBarDragController *)self setPendingDropTabHasValidTarget:1];
    if ([(_UIFloatingTabBarDragController *)self _shouldAddPlaceholderForPendingDrop])
    {
      if (v9)
      {
        v10 = [v9 item];
      }

      else
      {
        v12 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
        v10 = [v12 count];
      }

      [(_UIFloatingTabBarDragController *)self _insertPlaceholderAtIndex:v10];
    }
  }

  else
  {
    [(_UIFloatingTabBarDragController *)self setPendingDropTabHasValidTarget:0];
    [(_UIFloatingTabBarDragController *)self _removePlaceholder];
  }

  return v7;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v11 = a4;
  v5 = [(_UIFloatingTabBarDragController *)self isEditing];
  v6 = v11;
  if (v5)
  {
    v7 = [v11 items];
    v8 = [v7 firstObject];
    v9 = [v8 localObject];

    v10 = [(_UIFloatingTabBarDragController *)self pendingDropTab];

    if (v9 == v10)
    {
      [(_UIFloatingTabBarDragController *)self _removePlaceholder];
      [(_UIFloatingTabBarDragController *)self setPendingDropTab:0];
    }

    v6 = v11;
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_activeDropSession);

  if (WeakRetained == v5)
  {
    [(_UIFloatingTabBarDragController *)self setPendingDropTab:0];
    [(_UIFloatingTabBarDragController *)self setPendingDropTabHasValidTarget:0];

    objc_storeWeak(&self->_activeDropSession, 0);
  }
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBarDragController *)self isEditing];
  v7 = [(_UIFloatingTabBarDragController *)self delegate];
  v8 = v7;
  if (v6)
  {
    v21 = [v7 tabDragController:self destinationIndexPathForDropSession:v5];

    v9 = [v5 items];

    v10 = [v9 firstObject];
    v5 = [v10 localObject];

    v11 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    v12 = [v5 identifier];
    v13 = [v11 indexOfObject:v12];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      [v14 removeObjectAtIndex:v13];
    }

    if (v21)
    {
      v15 = [v21 item];
    }

    else
    {
      v16 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      v15 = [v16 count];
    }

    v17 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    v18 = [v5 identifier];
    [v17 insertObject:v18 atIndex:v15];

    v19 = [(_UIFloatingTabBarDragController *)self pendingExcludedItems];
    v20 = [v5 identifier];
    [v19 removeObject:v20];

    [(_UIFloatingTabBarDragController *)self setPendingDropTab:0];
  }

  else
  {
    [v7 tabDragController:self acceptItemsIntoTabFromDropSession:v5];
    v21 = v8;
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v6 = a4;
  if ([(_UIFloatingTabBarDragController *)self isEditing]|| (WeakRetained = objc_loadWeakRetained(&self->_activeDropItem), WeakRetained, WeakRetained == v6))
  {
    v9 = [v6 localObject];
    v10 = [(_UIFloatingTabBarDragController *)self delegate];
    v8 = [v10 tabDragController:self previewForInsertingTab:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    objc_storeWeak(&self->_activeDropItem, v9);
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84___UIFloatingTabBarDragController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v11[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v12, &location);
    [v10 addCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)setPendingDropTab:(id)a3
{
  v5 = a3;
  if (self->_pendingDropTab != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_pendingDropTab, a3);
    v6 = [(_UIFloatingTabBarDragController *)self delegate];
    [v6 tabDragController:self pendingDropTabDidChange:v7];

    v5 = v7;
    if (!v7)
    {
      [(_UIFloatingTabBarDragController *)self _removePlaceholder];
      v5 = 0;
    }
  }
}

- (BOOL)_shouldAddPlaceholderForPendingDrop
{
  v3 = [(_UIFloatingTabBarDragController *)self pendingDropTab];
  if (v3 && [(_UIFloatingTabBarDragController *)self pendingDropTabHasValidTarget])
  {
    v4 = [(_UIFloatingTabBarDragController *)self delegate];
    v5 = [(_UIFloatingTabBarDragController *)self pendingDropTab];
    v6 = [v4 tabDragController:self isDisplayingTab:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_insertPlaceholderAtIndex:(int64_t)a3
{
  v5 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
  v6 = [v5 indexOfObject:@"com.apple.UIKit.TabBar.Placeholder"];

  v7 = [(_UIFloatingTabBarDragController *)self pendingDropTab];

  if (v7)
  {
    v8 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    v9 = [(_UIFloatingTabBarDragController *)self pendingDropTab];
    v10 = [v9 identifier];
    v11 = [v8 indexOfObject:v10];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < a3)
    {
      ++a3;
    }
  }

  if (v6 != a3)
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 -= v6 < a3;
      if (v6 == a3)
      {
        return;
      }

      v13 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      [v13 removeObjectAtIndex:v6];
    }

    v14 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    [v14 insertObject:@"com.apple.UIKit.TabBar.Placeholder" atIndex:a3];

    [(_UIFloatingTabBarDragController *)self _updateFavoriteOrderAnimated:1];
  }
}

- (void)_removePlaceholder
{
  v3 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
  v4 = [v3 containsObject:@"com.apple.UIKit.TabBar.Placeholder"];

  if (v4)
  {
    v5 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    [v5 removeObject:@"com.apple.UIKit.TabBar.Placeholder"];

    [(_UIFloatingTabBarDragController *)self _updateFavoriteOrderAnimated:1];
  }
}

- (void)_updateFavoriteOrderAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIFloatingTabBarDragController *)self delegate];
  [v5 tabDragController:self updateFavoriteOrderAnimated:v3];

  self->_needsFavoriteOrderUpdate = 0;
}

- (_UIFloatingTabBarDragControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIDragItem)activeDropItem
{
  WeakRetained = objc_loadWeakRetained(&self->_activeDropItem);

  return WeakRetained;
}

- (UIDropSession)activeDropSession
{
  WeakRetained = objc_loadWeakRetained(&self->_activeDropSession);

  return WeakRetained;
}

@end