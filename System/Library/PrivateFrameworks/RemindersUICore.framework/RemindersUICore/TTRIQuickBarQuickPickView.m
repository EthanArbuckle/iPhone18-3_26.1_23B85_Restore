@interface TTRIQuickBarQuickPickView
- (NSArray)accessibilityElements;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)itemAction:(id)a3;
- (void)layoutSubviews;
@end

@implementation TTRIQuickBarQuickPickView

- (void)layoutSubviews
{
  v2 = self;
  sub_21D4AF6D8();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIQuickBarQuickPickView *)&v3 _dynamicUserInterfaceTraitDidChange];
  v2[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_needsUpdateItemImages] = 1;
  [v2 setNeedsLayout];
}

- (void)itemAction:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D4B0400(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_21D4B06AC();

  if (v3)
  {
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end