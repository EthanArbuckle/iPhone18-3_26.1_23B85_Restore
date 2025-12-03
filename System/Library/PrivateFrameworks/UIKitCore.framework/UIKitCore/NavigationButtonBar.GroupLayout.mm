@interface NavigationButtonBar.GroupLayout
- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated;
- (BOOL)_itemDidUpdateMenu:(id)menu fromMenu:(id)fromMenu;
- (CGRect)_rectForPresenting:(id)presenting;
- (_TtCC5UIKit19NavigationButtonBar11GroupLayout)init;
- (id)_contextMenuInteractionForItem:(id)item;
- (id)_overflowFallbackItem;
- (id)_viewForPresenting:(id)presenting;
- (void)_groupDidUpdateItems:(id)items removedItems:(id)removedItems;
- (void)_groupDidUpdatePlatterizationPreference:(void *)preference;
- (void)_groupDidUpdateRepresentative:(id)representative fromRepresentative:(id)fromRepresentative;
- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options;
- (void)_itemCustomViewDidChange:(id)change fromView:(id)view;
- (void)_itemDidChangeHiddenState:(id)state;
- (void)_itemDidChangePlatterizationPreference:(id)preference;
- (void)_itemDidChangeSelectionState:(id)state;
- (void)_itemDidChangeWidth:(void *)width;
@end

@implementation NavigationButtonBar.GroupLayout

- (BOOL)_itemDidUpdateMenu:(id)menu fromMenu:(id)fromMenu
{
  menuCopy = menu;
  fromMenuCopy = fromMenu;
  view = [menuCopy view];
  if (view)
  {
    v8 = view;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 updatePresentedMenuFrom_];
      v10 = v8;
    }

    else
    {
      v10 = menuCopy;
      menuCopy = fromMenuCopy;
      fromMenuCopy = v8;
    }
  }

  return 0;
}

- (void)_itemDidChangeWidth:(void *)width
{
  widthCopy = width;
  selfCopy = self;
  sub_18907E9C4(widthCopy);
}

- (void)_groupDidUpdatePlatterizationPreference:(void *)preference
{
  preferenceCopy = preference;
  selfCopy = self;
  sub_188CF4A54(preferenceCopy);
}

- (void)_groupDidUpdateItems:(id)items removedItems:(id)removedItems
{
  sub_188A34624(0, &qword_1ED48E8C0);
  v6 = sub_18A4A7548();
  itemsCopy = items;
  selfCopy = self;
  sub_188CF57A4(itemsCopy, v6);
}

- (_TtCC5UIKit19NavigationButtonBar11GroupLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_groupDidUpdateRepresentative:(id)representative fromRepresentative:(id)fromRepresentative
{
  representativeCopy = representative;
  fromRepresentativeCopy = fromRepresentative;
  selfCopy = self;
  sub_18907D394(representativeCopy, fromRepresentativeCopy);
}

- (void)_itemCustomViewDidChange:(id)change fromView:(id)view
{
  changeCopy = change;
  viewCopy = view;
  selfCopy = self;
  sub_18907E9C4(changeCopy);
}

- (void)_itemDidChangeSelectionState:(id)state
{
  stateCopy = state;
  view = [stateCopy view];
  if (view)
  {
    v4 = view;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 setSelected_];
    }

    else
    {
      v7 = stateCopy;
      stateCopy = v4;
    }
  }
}

- (void)_itemDidChangeHiddenState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_18907D650(stateCopy);
}

- (void)_itemDidChangePlatterizationPreference:(id)preference
{
  preferenceCopy = preference;
  selfCopy = self;
  sub_18907EAA8();
}

- (id)_contextMenuInteractionForItem:(id)item
{
  itemCopy = item;
  view = [itemCopy view];
  if (view)
  {
    v5 = view;
    objc_opt_self();
    contextMenuInteraction = swift_dynamicCastObjCClass();
    if (contextMenuInteraction)
    {
      v7 = v5;
      contextMenuInteraction = [contextMenuInteraction contextMenuInteraction];
    }

    else
    {
      v7 = itemCopy;
      itemCopy = v5;
    }
  }

  else
  {
    contextMenuInteraction = 0;
  }

  return contextMenuInteraction;
}

- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  _itemCopy = _item;
  optionsCopy = options;
  view = [_itemCopy view];
  if (view)
  {
    v10 = view;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 removeAllSymbolEffectsWithOptions:optionsCopy animated:animatedCopy];
      v12 = 0;
      v13 = v10;
    }

    else
    {
      v12 = 1;
      v13 = _itemCopy;
      _itemCopy = optionsCopy;
      optionsCopy = v10;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options
{
  _itemCopy = _item;
  transitionCopy = transition;
  optionsCopy = options;
  view = [_itemCopy view];
  if (view)
  {
    v10 = view;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 applyContentTransition:transitionCopy options:optionsCopy];
      v12 = v10;
    }

    else
    {
      v12 = _itemCopy;
      _itemCopy = transitionCopy;
      transitionCopy = optionsCopy;
      optionsCopy = v10;
    }
  }
}

- (id)_overflowFallbackItem
{
  selfCopy = self;
  sub_18907DB40();
  v4 = v3;

  return v4;
}

- (id)_viewForPresenting:(id)presenting
{
  view = [presenting view];

  return view;
}

- (CGRect)_rectForPresenting:(id)presenting
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end