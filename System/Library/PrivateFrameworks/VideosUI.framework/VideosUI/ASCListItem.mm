@interface ASCListItem
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)presentingViewControllerForLockupView:(id)view;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
@end

@implementation ASCListItem

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1E3CC2538();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = sub_1E3CC2574(only);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)presentingViewControllerForLockupView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E3CC2834();

  return v6;
}

- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  v9 = _Block_copy(block);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  viewCopy = view;
  swift_unknownObjectRetain();
  stateCopy = state;
  selfCopy = self;
  sub_1E3CC2F20(selfCopy, v14, stateCopy, sub_1E3B69624, v10);

  swift_unknownObjectRelease();
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_1E3CC3164(selfCopy, changeCopy);
}

@end