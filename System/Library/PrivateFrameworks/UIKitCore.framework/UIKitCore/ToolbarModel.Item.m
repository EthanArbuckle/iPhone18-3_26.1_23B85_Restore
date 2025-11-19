@interface ToolbarModel.Item
- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5;
- (BOOL)_itemDidUpdateMenu:(id)a3 fromMenu:(id)a4;
- (_TtCC5UIKit12ToolbarModel4Item)init;
- (id)_contextMenuInteractionForItem:(id)a3;
- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5;
- (void)_itemCustomViewDidChange:(id)a3 fromView:(id)a4;
- (void)_itemDidChangeEnabledState:(void *)a3;
- (void)_itemDidChangeHiddenState:(id)a3;
- (void)_itemDidChangePlatterizationPreference:(id)a3;
- (void)_itemDidChangeSelectionState:(id)a3;
@end

@implementation ToolbarModel.Item

- (BOOL)_itemDidUpdateMenu:(id)a3 fromMenu:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 view];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 updatePresentedMenuFrom_];
      v10 = v8;
    }

    else
    {
      v10 = v5;
      v5 = v6;
      v6 = v8;
    }
  }

  return 0;
}

- (void)_itemDidChangeEnabledState:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_188BD4774();
}

- (void)_itemDidChangePlatterizationPreference:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890A9288(v4, &selRef__requiresOwnSection, &unk_18A663B40, &OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection);
}

- (_TtCC5UIKit12ToolbarModel4Item)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_itemCustomViewDidChange:(id)a3 fromView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188BD4774();
}

- (void)_itemDidChangeSelectionState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890A8DA0(v4);
}

- (void)_itemDidChangeHiddenState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890A9288(v4, &selRef_isHidden, &unk_18A663BB8, &OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__isHidden);
}

- (id)_contextMenuInteractionForItem:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  v4 = self;
  v5 = [v3 view];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v6;
      v7 = [v7 contextMenuInteraction];
    }

    else
    {
      v8 = v4;
      v4 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 view];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 removeAllSymbolEffectsWithOptions:v8 animated:v5];
      v12 = 0;
      v13 = v10;
    }

    else
    {
      v12 = 1;
      v13 = v7;
      v7 = v8;
      v8 = v10;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a4;
  v13 = a5;
  v9 = [v7 view];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 applyContentTransition:v8 options:v13];
      v12 = v10;
    }

    else
    {
      v12 = v7;
      v7 = v8;
      v8 = v13;
      v13 = v10;
    }
  }
}

@end