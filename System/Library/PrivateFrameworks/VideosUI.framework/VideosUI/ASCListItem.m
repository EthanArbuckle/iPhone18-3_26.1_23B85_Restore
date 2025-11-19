@interface ASCListItem
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6;
@end

@implementation ASCListItem

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1E3CC2538();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v5 = self;
  v6 = sub_1E3CC2574(a4);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)presentingViewControllerForLockupView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E3CC2834();

  return v6;
}

- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6
{
  v9 = _Block_copy(a6);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_1E3CC2F20(v13, v14, v12, sub_1E3B69624, v10);

  swift_unknownObjectRelease();
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E3CC3164(v8, v7);
}

@end