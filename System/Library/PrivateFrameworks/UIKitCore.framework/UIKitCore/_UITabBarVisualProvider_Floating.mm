@interface _UITabBarVisualProvider_Floating
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)frameForHostedElement:(int64_t)a3 options:(int64_t)a4;
- (CGSize)intrinsicContentSizeGivenSize:(CGSize)a3;
- (_TtC5UIKit32_UITabBarVisualProvider_Floating)initWithTabBar:(id)a3;
- (id)exchangeItem:(id)a3 withItem:(id)a4;
- (id)focusedTabBarItem;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)preferredFocusEnvironments;
- (id)resolvedPresentationSourceItemForItem:(id)a3;
- (id)tabBarItemAtPoint:(CGPoint)a3;
- (id)viewsForMorphingToTarget:(int64_t)a3;
- (void)_shim_layoutItemsOnly;
- (void)_shim_setAccessoryView:(id)a3;
- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4;
- (void)changeItemsTo:(id)a3 removingItems:(id)a4 selectedItem:(id)a5 oldSelectedItem:(id)a6 animate:(BOOL)a7;
- (void)changeSelectedItem:(id)a3 fromItem:(id)a4;
- (void)didEndCustomizingItems;
- (void)glassGroupContainerDidChange:(id)a3;
- (void)handleSelectionGesture:(id)a3;
- (void)layoutSubviews;
- (void)minimizeBehaviorDidChange;
- (void)morphAnimationsForHostedElementsDidEnd;
- (void)observeContentScrollView:(id)a3;
- (void)prepare;
- (void)scrollAwayInteraction:(id)a3 progressDidChange:(double)a4 tracking:(BOOL)a5;
- (void)selectCollapseTabIfPossible;
- (void)setBackgroundTransitionProgress:(double)a3 forceUpdate:(BOOL)a4 animated:(BOOL)a5;
- (void)setCurrentMorphTarget:(int64_t)a3;
- (void)setHostedElements:(int64_t)a3;
- (void)setMinimized:(BOOL)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)teardown;
- (void)updateItem:(id)a3;
- (void)updateProperties;
- (void)updateUnselectedItemTintColor;
- (void)willBeginCustomizingItems;
@end

@implementation _UITabBarVisualProvider_Floating

- (void)layoutSubviews
{
  v2 = self;
  sub_188B77FB4();
}

- (void)minimizeBehaviorDidChange
{
  v2 = self;
  sub_188B79E64();
}

- (void)_shim_setAccessoryView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B7C2D8(a3);
}

- (void)glassGroupContainerDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188F56408(a3);
}

- (void)changeItemsTo:(id)a3 removingItems:(id)a4 selectedItem:(id)a5 oldSelectedItem:(id)a6 animate:(BOOL)a7
{
  v11 = a3;
  if (a3)
  {
    sub_188A34624(0, &qword_1EA9306B0);
    v11 = sub_18A4A7548();
  }

  if (a4)
  {
    sub_188A34624(0, &qword_1EA9306B0);
    sub_18A4A7548();
  }

  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_188B7E660(v11, a5, a6, a7);
}

- (_TtC5UIKit32_UITabBarVisualProvider_Floating)initWithTabBar:(id)a3
{
  v3 = a3;
  v4 = sub_188B7DC0C(v3);

  return v4;
}

- (void)prepare
{
  v2 = self;
  sub_188B7B9CC();
}

- (CGSize)intrinsicContentSizeGivenSize:(CGSize)a3
{
  width = a3.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x150);
  v6 = self;
  if (v5())
  {
    sub_188B82DFC(v13);
    v7 = sub_188B82BE8(v13);
    v8 = &v15;
  }

  else
  {
    sub_188B82DFC(v13);
    v7 = sub_188B82BE8(v13);
    v8 = &v14;
  }

  v9 = *v8;
  v10 = (*((*v4 & v6->super.super.isa) + 0x138))(v7);

  v11 = v9 + v10;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)changeSelectedItem:(id)a3 fromItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_188B86638(a3, a4);
}

- (void)observeContentScrollView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B8A3D8(a3);
}

- (void)setHostedElements:(int64_t)a3
{
  v5 = type metadata accessor for _UITabBarVisualProvider_Floating();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(_UITabBarVisualProvider *)&v9 hostedElements];
  v8.receiver = v6;
  v8.super_class = v5;
  [(_UITabBarVisualProvider *)&v8 setHostedElements:a3];
  if ([(_UITabBarVisualProvider_Floating *)v6 hostedElements]!= v7)
  {
    sub_188B7FFB8();
  }
}

- (CGRect)frameForHostedElement:(int64_t)a3 options:(int64_t)a4
{
  v4 = a4;
  v6 = self;
  sub_188BF942C(a3, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4
{
  v5 = self;
  v4 = [(_UITabBarVisualProvider *)v5 tabBar];
  [(UIView *)v4 setNeedsLayout];
}

- (void)setBackgroundTransitionProgress:(double)a3 forceUpdate:(BOOL)a4 animated:(BOOL)a5
{
  v6 = self;
  sub_188C37D98(a3);
}

- (void)teardown
{
  v2 = self;
  sub_188CABB10();
}

- (void)updateProperties
{
  v2 = self;
  sub_188F53F88();
}

- (void)willBeginCustomizingItems
{
  v2 = self;
  sub_188F546FC();
}

- (void)didEndCustomizingItems
{
  v2 = self;
  sub_188F5493C();
}

- (id)exchangeItem:(id)a3 withItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188F5563C(v6, v7);

  sub_188A34624(0, &qword_1EA9306B0);
  v9 = sub_18A4A7518();

  return v9;
}

- (void)updateItem:(id)a3
{
  v5 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  v7 = a3;
  v8 = self;

  v9 = sub_18903AA14(v7, v6);

  if (v9)
  {
    sub_189205920();
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v4 = self;
  sub_188F56050(a3);
}

- (void)updateUnselectedItemTintColor
{
  v2 = self;
  sub_188F561A0();
}

- (id)resolvedPresentationSourceItemForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188F566EC(v4);

  return v6;
}

- (id)tabBarItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(_UITabBarVisualProvider *)v5 tabBar];
  v7 = [(UITabBar *)v6 hitTest:0 withEvent:x, y];

  if (v7)
  {
    type metadata accessor for _UITabButton();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = v7;
    }

    else
    {
      Strong = 0;
      v9 = v5;
      v5 = v7;
    }
  }

  else
  {
    Strong = 0;
  }

  return Strong;
}

- (void)setCurrentMorphTarget:(int64_t)a3
{
  v4 = self;
  sub_188F56930(a3);
}

- (void)selectCollapseTabIfPossible
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton);
  if (v2)
  {
    [v2 performPrimaryAction];
  }
}

- (void)setMinimized:(BOOL)a3
{
  v3 = a3;
  v7 = self;
  sub_188F542AC();
  v4 = [(_UITabBarVisualProvider *)v7 tabBar];
  v5 = [(UITabBar *)v4 _updateMorphTargetBlock];

  if (v5)
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v5[2](v5, v6);
    _Block_release(v5);
  }
}

- (id)viewsForMorphingToTarget:(int64_t)a3
{
  v4 = self;
  sub_188F56AC0(a3);

  sub_188A34624(0, &qword_1ED48F680);
  v5 = sub_18A4A7518();

  return v5;
}

- (void)morphAnimationsForHostedElementsDidEnd
{
  v2 = self;
  sub_188F56DEC();
}

- (id)focusedTabBarItem
{
  v2 = self;
  v3 = sub_188F56FE8();

  return v3;
}

- (id)preferredFocusEnvironments
{
  v2 = self;
  v3 = sub_188F57168();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937A90);
    v4 = sub_18A4A7518();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_shim_layoutItemsOnly
{
  v2 = self;
  sub_188B79120();
}

- (void)handleSelectionGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188F53378(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_188F581E8(v4);

  return self & 1;
}

- (void)scrollAwayInteraction:(id)a3 progressDidChange:(double)a4 tracking:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_188F58924(a5, a4);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_188F58D5C(v9);

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_188F5977C(v7);

  return v9;
}

@end