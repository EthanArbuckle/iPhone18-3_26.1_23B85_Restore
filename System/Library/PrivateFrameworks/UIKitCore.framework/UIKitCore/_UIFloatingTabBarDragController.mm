@interface _UIFloatingTabBarDragController
- (BOOL)_shouldAddPlaceholderForPendingDrop;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)hasActiveDrag;
- (UIDragItem)activeDropItem;
- (UIDropSession)activeDropSession;
- (_UIFloatingTabBarDragController)initWithDelegate:(id)delegate view:(id)view;
- (_UIFloatingTabBarDragControllerDelegate)delegate;
- (double)_dragInteraction:(id)interaction delayForLiftBeginningAtLocation:(CGPoint)location;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)_insertPlaceholderAtIndex:(int64_t)index;
- (void)_removePlaceholder;
- (void)_updateFavoriteOrderAnimated:(BOOL)animated;
- (void)beginEditingWithFavoriteOrder:(id)order excludedItems:(id)items;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)endEditing;
- (void)insertTabForIdentifier:(id)identifier;
- (void)removeTabForIdentifier:(id)identifier;
- (void)resetFavoriteOrderWithDefaultOrder:(id)order;
- (void)setPendingDropTab:(id)tab;
@end

@implementation _UIFloatingTabBarDragController

- (_UIFloatingTabBarDragController)initWithDelegate:(id)delegate view:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = _UIFloatingTabBarDragController;
  v8 = [(_UIFloatingTabBarDragController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [[UIDragInteraction alloc] initWithDelegate:v9];
    dragInteraction = v9->_dragInteraction;
    v9->_dragInteraction = v10;

    [viewCopy addInteraction:v9->_dragInteraction];
    v12 = [[UIDropInteraction alloc] initWithDelegate:v9];
    dropInteraction = v9->_dropInteraction;
    v9->_dropInteraction = v12;

    [viewCopy addInteraction:v9->_dropInteraction];
  }

  return v9;
}

- (void)beginEditingWithFavoriteOrder:(id)order excludedItems:(id)items
{
  self->_editing = 1;
  v6 = MEMORY[0x1E695DFA0];
  itemsCopy = items;
  v8 = [v6 orderedSetWithOrderedSet:order];
  pendingFavoriteOrder = self->_pendingFavoriteOrder;
  self->_pendingFavoriteOrder = v8;

  v10 = [MEMORY[0x1E695DFA8] setWithSet:itemsCopy];

  pendingExcludedItems = self->_pendingExcludedItems;
  self->_pendingExcludedItems = v10;
}

- (void)resetFavoriteOrderWithDefaultOrder:(id)order
{
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:order];
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

- (void)insertTabForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSMutableOrderedSet *)self->_pendingFavoriteOrder containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_pendingFavoriteOrder addObject:identifierCopy];
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    [delegate tabDragController:self updateFavoriteOrderAnimated:1];
  }
}

- (void)removeTabForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(NSMutableOrderedSet *)self->_pendingFavoriteOrder containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_pendingFavoriteOrder removeObject:identifierCopy];
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    [delegate tabDragController:self updateFavoriteOrderAnimated:1];
  }
}

- (BOOL)hasActiveDrag
{
  currentDragTab = [(_UIFloatingTabBarDragController *)self currentDragTab];
  v3 = currentDragTab != 0;

  return v3;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    v8 = [delegate tabDragController:self tabForBeginningSession:sessionCopy];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v10 = [[UIDragItem alloc] initWithItemProvider:v9];
      [(UIDragItem *)v10 setLocalObject:v8];
      [v6 addObject:v10];
      [(_UIFloatingTabBarDragController *)self setCurrentDragTab:v8];
      pendingFavoriteOrder = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      identifier = [v8 identifier];
      -[_UIFloatingTabBarDragController setCurrentDragTabOriginalIndex:](self, "setCurrentDragTabOriginalIndex:", [pendingFavoriteOrder indexOfObject:identifier]);
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87___UIFloatingTabBarDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_1E70F5DB8;
  v5[4] = self;
  [animator addCompletion:v5];
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  localObject = [item localObject];
  delegate = [(_UIFloatingTabBarDragController *)self delegate];
  v8 = [delegate tabDragController:self previewForLiftingTab:localObject];

  return v8;
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  localObject = [item localObject];
  currentDragTab = [(_UIFloatingTabBarDragController *)self currentDragTab];
  v8 = currentDragTab;
  if (localObject != currentDragTab)
  {

LABEL_4:
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    v11 = [delegate tabDragController:self previewForCancellingTab:localObject];

    goto LABEL_5;
  }

  _tabPlacement = [localObject _tabPlacement];

  if (_tabPlacement == 3)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  v7 = [(_UIFloatingTabBarDragController *)self currentDragTab:interaction];
  _tabPlacement = [v7 _tabPlacement];

  if (!operation && _tabPlacement == 3)
  {
    currentDragTab = [(_UIFloatingTabBarDragController *)self currentDragTab];
    identifier = [currentDragTab identifier];

    pendingExcludedItems = [(_UIFloatingTabBarDragController *)self pendingExcludedItems];
    [pendingExcludedItems removeObject:identifier];

    pendingFavoriteOrder = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    [pendingFavoriteOrder insertObject:identifier atIndex:{-[_UIFloatingTabBarDragController currentDragTabOriginalIndex](self, "currentDragTabOriginalIndex")}];

    [(_UIFloatingTabBarDragController *)self _updateFavoriteOrderAnimated:1];
  }
}

- (double)_dragInteraction:(id)interaction delayForLiftBeginningAtLocation:(CGPoint)location
{
  v4 = [(_UIFloatingTabBarDragController *)self delegate:interaction];
  collectionView = [v4 collectionView];

  pages = [collectionView pages];
  v7 = [pages count];

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

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    items = [sessionCopy items];
    firstObject = [items firstObject];
    localObject = [firstObject localObject];

    items2 = [sessionCopy items];
    if ([items2 count] == 1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v11 = 0;
        goto LABEL_9;
      }

      items2 = [(_UIFloatingTabBarDragController *)self delegate];
      v11 = [items2 tabDragController:self canHandleDropSessionForTab:localObject];
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

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  obj = enter;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    objc_storeWeak(&self->_activeDropSession, obj);
    items = [obj items];
    firstObject = [items firstObject];
    localObject = [firstObject localObject];

    [(_UIFloatingTabBarDragController *)self setPendingDropTab:localObject];
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  delegate = [(_UIFloatingTabBarDragController *)self delegate];
  v7 = [delegate tabDragController:self dropProposalForSession:updateCopy];

  delegate2 = [(_UIFloatingTabBarDragController *)self delegate];
  v9 = [delegate2 tabDragController:self destinationIndexPathForDropSession:updateCopy];

  if (-[_UIFloatingTabBarDragController isEditing](self, "isEditing") && [v7 operation] == 3)
  {
    [(_UIFloatingTabBarDragController *)self setPendingDropTabHasValidTarget:1];
    if ([(_UIFloatingTabBarDragController *)self _shouldAddPlaceholderForPendingDrop])
    {
      if (v9)
      {
        item = [v9 item];
      }

      else
      {
        pendingFavoriteOrder = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
        item = [pendingFavoriteOrder count];
      }

      [(_UIFloatingTabBarDragController *)self _insertPlaceholderAtIndex:item];
    }
  }

  else
  {
    [(_UIFloatingTabBarDragController *)self setPendingDropTabHasValidTarget:0];
    [(_UIFloatingTabBarDragController *)self _removePlaceholder];
  }

  return v7;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
  isEditing = [(_UIFloatingTabBarDragController *)self isEditing];
  v6 = exitCopy;
  if (isEditing)
  {
    items = [exitCopy items];
    firstObject = [items firstObject];
    localObject = [firstObject localObject];

    pendingDropTab = [(_UIFloatingTabBarDragController *)self pendingDropTab];

    if (localObject == pendingDropTab)
    {
      [(_UIFloatingTabBarDragController *)self _removePlaceholder];
      [(_UIFloatingTabBarDragController *)self setPendingDropTab:0];
    }

    v6 = exitCopy;
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  endCopy = end;
  WeakRetained = objc_loadWeakRetained(&self->_activeDropSession);

  if (WeakRetained == endCopy)
  {
    [(_UIFloatingTabBarDragController *)self setPendingDropTab:0];
    [(_UIFloatingTabBarDragController *)self setPendingDropTabHasValidTarget:0];

    objc_storeWeak(&self->_activeDropSession, 0);
  }
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  isEditing = [(_UIFloatingTabBarDragController *)self isEditing];
  delegate = [(_UIFloatingTabBarDragController *)self delegate];
  v8 = delegate;
  if (isEditing)
  {
    v21 = [delegate tabDragController:self destinationIndexPathForDropSession:dropCopy];

    items = [dropCopy items];

    firstObject = [items firstObject];
    dropCopy = [firstObject localObject];

    pendingFavoriteOrder = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    identifier = [dropCopy identifier];
    v13 = [pendingFavoriteOrder indexOfObject:identifier];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      pendingFavoriteOrder2 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      [pendingFavoriteOrder2 removeObjectAtIndex:v13];
    }

    if (v21)
    {
      item = [v21 item];
    }

    else
    {
      pendingFavoriteOrder3 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      item = [pendingFavoriteOrder3 count];
    }

    pendingFavoriteOrder4 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    identifier2 = [dropCopy identifier];
    [pendingFavoriteOrder4 insertObject:identifier2 atIndex:item];

    pendingExcludedItems = [(_UIFloatingTabBarDragController *)self pendingExcludedItems];
    identifier3 = [dropCopy identifier];
    [pendingExcludedItems removeObject:identifier3];

    [(_UIFloatingTabBarDragController *)self setPendingDropTab:0];
  }

  else
  {
    [delegate tabDragController:self acceptItemsIntoTabFromDropSession:dropCopy];
    v21 = v8;
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  itemCopy = item;
  if ([(_UIFloatingTabBarDragController *)self isEditing]|| (WeakRetained = objc_loadWeakRetained(&self->_activeDropItem), WeakRetained, WeakRetained == itemCopy))
  {
    localObject = [itemCopy localObject];
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    v8 = [delegate tabDragController:self previewForInsertingTab:localObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  animatorCopy = animator;
  if ([(_UIFloatingTabBarDragController *)self isEditing])
  {
    objc_storeWeak(&self->_activeDropItem, itemCopy);
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84___UIFloatingTabBarDragController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v11[3] = &unk_1E70F5DE0;
    objc_copyWeak(&v12, &location);
    [animatorCopy addCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)setPendingDropTab:(id)tab
{
  tabCopy = tab;
  if (self->_pendingDropTab != tabCopy)
  {
    v7 = tabCopy;
    objc_storeStrong(&self->_pendingDropTab, tab);
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    [delegate tabDragController:self pendingDropTabDidChange:v7];

    tabCopy = v7;
    if (!v7)
    {
      [(_UIFloatingTabBarDragController *)self _removePlaceholder];
      tabCopy = 0;
    }
  }
}

- (BOOL)_shouldAddPlaceholderForPendingDrop
{
  pendingDropTab = [(_UIFloatingTabBarDragController *)self pendingDropTab];
  if (pendingDropTab && [(_UIFloatingTabBarDragController *)self pendingDropTabHasValidTarget])
  {
    delegate = [(_UIFloatingTabBarDragController *)self delegate];
    pendingDropTab2 = [(_UIFloatingTabBarDragController *)self pendingDropTab];
    v6 = [delegate tabDragController:self isDisplayingTab:pendingDropTab2] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_insertPlaceholderAtIndex:(int64_t)index
{
  pendingFavoriteOrder = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
  v6 = [pendingFavoriteOrder indexOfObject:@"com.apple.UIKit.TabBar.Placeholder"];

  pendingDropTab = [(_UIFloatingTabBarDragController *)self pendingDropTab];

  if (pendingDropTab)
  {
    pendingFavoriteOrder2 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    pendingDropTab2 = [(_UIFloatingTabBarDragController *)self pendingDropTab];
    identifier = [pendingDropTab2 identifier];
    v11 = [pendingFavoriteOrder2 indexOfObject:identifier];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < index)
    {
      ++index;
    }
  }

  if (v6 != index)
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      index -= v6 < index;
      if (v6 == index)
      {
        return;
      }

      pendingFavoriteOrder3 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
      [pendingFavoriteOrder3 removeObjectAtIndex:v6];
    }

    pendingFavoriteOrder4 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    [pendingFavoriteOrder4 insertObject:@"com.apple.UIKit.TabBar.Placeholder" atIndex:index];

    [(_UIFloatingTabBarDragController *)self _updateFavoriteOrderAnimated:1];
  }
}

- (void)_removePlaceholder
{
  pendingFavoriteOrder = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
  v4 = [pendingFavoriteOrder containsObject:@"com.apple.UIKit.TabBar.Placeholder"];

  if (v4)
  {
    pendingFavoriteOrder2 = [(_UIFloatingTabBarDragController *)self pendingFavoriteOrder];
    [pendingFavoriteOrder2 removeObject:@"com.apple.UIKit.TabBar.Placeholder"];

    [(_UIFloatingTabBarDragController *)self _updateFavoriteOrderAnimated:1];
  }
}

- (void)_updateFavoriteOrderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(_UIFloatingTabBarDragController *)self delegate];
  [delegate tabDragController:self updateFavoriteOrderAnimated:animatedCopy];

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