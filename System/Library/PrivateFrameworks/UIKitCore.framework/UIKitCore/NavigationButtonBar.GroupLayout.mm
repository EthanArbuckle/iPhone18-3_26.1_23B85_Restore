@interface NavigationButtonBar.GroupLayout
- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5;
- (BOOL)_itemDidUpdateMenu:(id)a3 fromMenu:(id)a4;
- (CGRect)_rectForPresenting:(id)a3;
- (_TtCC5UIKit19NavigationButtonBar11GroupLayout)init;
- (id)_contextMenuInteractionForItem:(id)a3;
- (id)_overflowFallbackItem;
- (id)_viewForPresenting:(id)a3;
- (void)_groupDidUpdateItems:(id)a3 removedItems:(id)a4;
- (void)_groupDidUpdatePlatterizationPreference:(void *)a3;
- (void)_groupDidUpdateRepresentative:(id)a3 fromRepresentative:(id)a4;
- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5;
- (void)_itemCustomViewDidChange:(id)a3 fromView:(id)a4;
- (void)_itemDidChangeHiddenState:(id)a3;
- (void)_itemDidChangePlatterizationPreference:(id)a3;
- (void)_itemDidChangeSelectionState:(id)a3;
- (void)_itemDidChangeWidth:(void *)a3;
@end

@implementation NavigationButtonBar.GroupLayout

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

- (void)_itemDidChangeWidth:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_18907E9C4(v4);
}

- (void)_groupDidUpdatePlatterizationPreference:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_188CF4A54(v4);
}

- (void)_groupDidUpdateItems:(id)a3 removedItems:(id)a4
{
  sub_188A34624(0, &qword_1ED48E8C0);
  v6 = sub_18A4A7548();
  v7 = a3;
  v8 = self;
  sub_188CF57A4(v7, v6);
}

- (_TtCC5UIKit19NavigationButtonBar11GroupLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_groupDidUpdateRepresentative:(id)a3 fromRepresentative:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_18907D394(v6, v7);
}

- (void)_itemCustomViewDidChange:(id)a3 fromView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_18907E9C4(v6);
}

- (void)_itemDidChangeSelectionState:(id)a3
{
  v8 = a3;
  v3 = [v8 view];
  if (v3)
  {
    v4 = v3;
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
      v7 = v8;
      v8 = v4;
    }
  }
}

- (void)_itemDidChangeHiddenState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18907D650(v4);
}

- (void)_itemDidChangePlatterizationPreference:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18907EAA8();
}

- (id)_contextMenuInteractionForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v5;
      v6 = [v6 contextMenuInteraction];
    }

    else
    {
      v7 = v3;
      v3 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (id)_overflowFallbackItem
{
  v2 = self;
  sub_18907DB40();
  v4 = v3;

  return v4;
}

- (id)_viewForPresenting:(id)a3
{
  v3 = [a3 view];

  return v3;
}

- (CGRect)_rectForPresenting:(id)a3
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