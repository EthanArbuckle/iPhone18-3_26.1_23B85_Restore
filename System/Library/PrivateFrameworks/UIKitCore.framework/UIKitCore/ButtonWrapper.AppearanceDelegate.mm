@interface ButtonWrapper.AppearanceDelegate
- (CGRect)bounds;
- (_TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate)init;
- (double)additionalEdgeSpacingForButtonBarButton:(id)button representingBarButtonItem:(id)item;
- (id)tintColorForButtonBarButton:(id)button;
@end

@implementation ButtonWrapper.AppearanceDelegate

- (double)additionalEdgeSpacingForButtonBarButton:(id)button representingBarButtonItem:(id)item
{
  v6 = self + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_metrics;
  result = 0.0;
  if (*(&self->super.isa + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_metrics) == 1)
  {
    v21 = v4;
    v22 = v5;
    v8 = *(v6 + 3);
    v18 = *(v6 + 2);
    v19 = v8;
    v20 = *(v6 + 8);
    v9 = *(v6 + 1);
    v16 = *v6;
    v17 = v9;
    v10 = *(&self->super.isa + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isSingleItemSection);
    itemCopy = item;
    selfCopy = self;
    sub_188E4FA28(itemCopy, v10, v14);

    return v15;
  }

  return result;
}

- (id)tintColorForButtonBarButton:(id)button
{
  tintColor = [objc_opt_self() tintColor];

  return tintColor;
}

- (CGRect)bounds
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end