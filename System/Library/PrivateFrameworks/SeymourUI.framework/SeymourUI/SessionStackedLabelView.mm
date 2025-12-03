@interface SessionStackedLabelView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)noDataIndicator;
@end

@implementation SessionStackedLabelView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel);
  selfCopy = self;
  [v5 intrinsicContentSize];
  v8 = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) intrinsicContentSize];
  if (v8 <= v10)
  {
    v8 = v10;
  }

  [*(&self->super.super.super.isa + v4) intrinsicContentSize];
  v12 = v11;
  [*(&selfCopy->super.super.super.isa + v9) intrinsicContentSize];
  v14 = v13;

  v15 = v12 + v14;
  v16 = v8;
  result.height = v15;
  result.width = v16;
  return result;
}

- (NSString)noDataIndicator
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  bundleForClass_ = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v4 = sub_20C13C914();

  return v4;
}

@end