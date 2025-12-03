@interface ToolbarModel.Item
- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated;
- (BOOL)_itemDidUpdateMenu:(id)menu fromMenu:(id)fromMenu;
- (_TtCC5UIKit12ToolbarModel4Item)init;
- (id)_contextMenuInteractionForItem:(id)item;
- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options;
- (void)_itemCustomViewDidChange:(id)change fromView:(id)view;
- (void)_itemDidChangeEnabledState:(void *)state;
- (void)_itemDidChangeHiddenState:(id)state;
- (void)_itemDidChangePlatterizationPreference:(id)preference;
- (void)_itemDidChangeSelectionState:(id)state;
@end

@implementation ToolbarModel.Item

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

- (void)_itemDidChangeEnabledState:(void *)state
{
  stateCopy = state;
  selfCopy = self;
  sub_188BD4774();
}

- (void)_itemDidChangePlatterizationPreference:(id)preference
{
  preferenceCopy = preference;
  selfCopy = self;
  sub_1890A9288(preferenceCopy, &selRef__requiresOwnSection, &unk_18A663B40, &OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection);
}

- (_TtCC5UIKit12ToolbarModel4Item)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_itemCustomViewDidChange:(id)change fromView:(id)view
{
  changeCopy = change;
  viewCopy = view;
  selfCopy = self;
  sub_188BD4774();
}

- (void)_itemDidChangeSelectionState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1890A8DA0(stateCopy);
}

- (void)_itemDidChangeHiddenState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1890A9288(stateCopy, &selRef_isHidden, &unk_18A663BB8, &OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__isHidden);
}

- (id)_contextMenuInteractionForItem:(id)item
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  selfCopy = self;
  view = [v3 view];
  if (view)
  {
    v6 = view;
    objc_opt_self();
    contextMenuInteraction = swift_dynamicCastObjCClass();
    if (contextMenuInteraction)
    {
      v8 = v6;
      contextMenuInteraction = [contextMenuInteraction contextMenuInteraction];
    }

    else
    {
      v8 = selfCopy;
      selfCopy = v6;
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

@end