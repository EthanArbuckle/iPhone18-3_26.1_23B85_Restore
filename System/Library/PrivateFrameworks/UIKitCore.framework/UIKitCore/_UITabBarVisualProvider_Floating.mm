@interface _UITabBarVisualProvider_Floating
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options;
- (CGSize)intrinsicContentSizeGivenSize:(CGSize)size;
- (_TtC5UIKit32_UITabBarVisualProvider_Floating)initWithTabBar:(id)bar;
- (id)exchangeItem:(id)item withItem:(id)withItem;
- (id)focusedTabBarItem;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)preferredFocusEnvironments;
- (id)resolvedPresentationSourceItemForItem:(id)item;
- (id)tabBarItemAtPoint:(CGPoint)point;
- (id)viewsForMorphingToTarget:(int64_t)target;
- (void)_shim_layoutItemsOnly;
- (void)_shim_setAccessoryView:(id)view;
- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)changeItemsTo:(id)to removingItems:(id)items selectedItem:(id)item oldSelectedItem:(id)selectedItem animate:(BOOL)animate;
- (void)changeSelectedItem:(id)item fromItem:(id)fromItem;
- (void)didEndCustomizingItems;
- (void)glassGroupContainerDidChange:(id)change;
- (void)handleSelectionGesture:(id)gesture;
- (void)layoutSubviews;
- (void)minimizeBehaviorDidChange;
- (void)morphAnimationsForHostedElementsDidEnd;
- (void)observeContentScrollView:(id)view;
- (void)prepare;
- (void)scrollAwayInteraction:(id)interaction progressDidChange:(double)change tracking:(BOOL)tracking;
- (void)selectCollapseTabIfPossible;
- (void)setBackgroundTransitionProgress:(double)progress forceUpdate:(BOOL)update animated:(BOOL)animated;
- (void)setCurrentMorphTarget:(int64_t)target;
- (void)setHostedElements:(int64_t)elements;
- (void)setMinimized:(BOOL)minimized;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)teardown;
- (void)updateItem:(id)item;
- (void)updateProperties;
- (void)updateUnselectedItemTintColor;
- (void)willBeginCustomizingItems;
@end

@implementation _UITabBarVisualProvider_Floating

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188B77FB4();
}

- (void)minimizeBehaviorDidChange
{
  selfCopy = self;
  sub_188B79E64();
}

- (void)_shim_setAccessoryView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188B7C2D8(view);
}

- (void)glassGroupContainerDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_188F56408(change);
}

- (void)changeItemsTo:(id)to removingItems:(id)items selectedItem:(id)item oldSelectedItem:(id)selectedItem animate:(BOOL)animate
{
  toCopy = to;
  if (to)
  {
    sub_188A34624(0, &qword_1EA9306B0);
    toCopy = sub_18A4A7548();
  }

  if (items)
  {
    sub_188A34624(0, &qword_1EA9306B0);
    sub_18A4A7548();
  }

  itemCopy = item;
  selectedItemCopy = selectedItem;
  selfCopy = self;
  sub_188B7E660(toCopy, item, selectedItem, animate);
}

- (_TtC5UIKit32_UITabBarVisualProvider_Floating)initWithTabBar:(id)bar
{
  barCopy = bar;
  v4 = sub_188B7DC0C(barCopy);

  return v4;
}

- (void)prepare
{
  selfCopy = self;
  sub_188B7B9CC();
}

- (CGSize)intrinsicContentSizeGivenSize:(CGSize)size
{
  width = size.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x150);
  selfCopy = self;
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
  v10 = (*((*v4 & selfCopy->super.super.isa) + 0x138))(v7);

  v11 = v9 + v10;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)changeSelectedItem:(id)item fromItem:(id)fromItem
{
  itemCopy = item;
  fromItemCopy = fromItem;
  selfCopy = self;
  sub_188B86638(item, fromItem);
}

- (void)observeContentScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188B8A3D8(view);
}

- (void)setHostedElements:(int64_t)elements
{
  v5 = type metadata accessor for _UITabBarVisualProvider_Floating();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  hostedElements = [(_UITabBarVisualProvider *)&v9 hostedElements];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(_UITabBarVisualProvider *)&v8 setHostedElements:elements];
  if ([(_UITabBarVisualProvider_Floating *)selfCopy hostedElements]!= hostedElements)
  {
    sub_188B7FFB8();
  }
}

- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_188BF942C(element, optionsCopy);
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

- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  selfCopy = self;
  tabBar = [(_UITabBarVisualProvider *)selfCopy tabBar];
  [(UIView *)tabBar setNeedsLayout];
}

- (void)setBackgroundTransitionProgress:(double)progress forceUpdate:(BOOL)update animated:(BOOL)animated
{
  selfCopy = self;
  sub_188C37D98(progress);
}

- (void)teardown
{
  selfCopy = self;
  sub_188CABB10();
}

- (void)updateProperties
{
  selfCopy = self;
  sub_188F53F88();
}

- (void)willBeginCustomizingItems
{
  selfCopy = self;
  sub_188F546FC();
}

- (void)didEndCustomizingItems
{
  selfCopy = self;
  sub_188F5493C();
}

- (id)exchangeItem:(id)item withItem:(id)withItem
{
  itemCopy = item;
  withItemCopy = withItem;
  selfCopy = self;
  sub_188F5563C(itemCopy, withItemCopy);

  sub_188A34624(0, &qword_1EA9306B0);
  v9 = sub_18A4A7518();

  return v9;
}

- (void)updateItem:(id)item
{
  v5 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  itemCopy = item;
  selfCopy = self;

  v9 = sub_18903AA14(itemCopy, v6);

  if (v9)
  {
    sub_189205920();
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  selfCopy = self;
  sub_188F56050(attribute);
}

- (void)updateUnselectedItemTintColor
{
  selfCopy = self;
  sub_188F561A0();
}

- (id)resolvedPresentationSourceItemForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_188F566EC(itemCopy);

  return v6;
}

- (id)tabBarItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  tabBar = [(_UITabBarVisualProvider *)selfCopy tabBar];
  v7 = [(UITabBar *)tabBar hitTest:0 withEvent:x, y];

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
      v9 = selfCopy;
      selfCopy = v7;
    }
  }

  else
  {
    Strong = 0;
  }

  return Strong;
}

- (void)setCurrentMorphTarget:(int64_t)target
{
  selfCopy = self;
  sub_188F56930(target);
}

- (void)selectCollapseTabIfPossible
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton);
  if (v2)
  {
    [v2 performPrimaryAction];
  }
}

- (void)setMinimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  selfCopy = self;
  sub_188F542AC();
  tabBar = [(_UITabBarVisualProvider *)selfCopy tabBar];
  _updateMorphTargetBlock = [(UITabBar *)tabBar _updateMorphTargetBlock];

  if (_updateMorphTargetBlock)
  {
    if (minimizedCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    _updateMorphTargetBlock[2](_updateMorphTargetBlock, v6);
    _Block_release(_updateMorphTargetBlock);
  }
}

- (id)viewsForMorphingToTarget:(int64_t)target
{
  selfCopy = self;
  sub_188F56AC0(target);

  sub_188A34624(0, &qword_1ED48F680);
  v5 = sub_18A4A7518();

  return v5;
}

- (void)morphAnimationsForHostedElementsDidEnd
{
  selfCopy = self;
  sub_188F56DEC();
}

- (id)focusedTabBarItem
{
  selfCopy = self;
  v3 = sub_188F56FE8();

  return v3;
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
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
  selfCopy = self;
  sub_188B79120();
}

- (void)handleSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_188F53378(gestureCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_188F581E8(beginCopy);

  return self & 1;
}

- (void)scrollAwayInteraction:(id)interaction progressDidChange:(double)change tracking:(BOOL)tracking
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_188F58924(tracking, change);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = sub_188F58D5C(requestCopy);

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_188F5977C(regionCopy);

  return v9;
}

@end