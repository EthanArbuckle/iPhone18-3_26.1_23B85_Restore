@interface APPCPromotedContentView
- (APPCPromotedContentView)initWithFrame:(CGRect)frame;
- (CGRect)frame;
- (NSString)description;
- (void)layoutSubviews;
- (void)newsTransparencyViewControllerDidDismiss:(id)dismiss;
- (void)setFrame:(CGRect)frame;
- (void)setReadiness:(int64_t)readiness;
- (void)sizeCategoryChanged:(id)changed;
- (void)tapRecognized:(id)recognized;
- (void)tappedPrivacyMarker:(id)marker;
@end

@implementation APPCPromotedContentView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_1C1999518(x, y, width, height);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PromotedContentView();
  [(APPCPromotedContentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setReadiness:(int64_t)readiness
{
  selfCopy = self;
  sub_1C199D484(readiness);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1C19A53B0();
}

- (NSString)description
{
  selfCopy = self;
  sub_1C19F6164();

  v3 = sub_1C1A6F39C();

  return v3;
}

- (void)sizeCategoryChanged:(id)changed
{
  v3 = sub_1C1A6D25C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  (*(v4 + 8))(v6, v3);
}

- (APPCPromotedContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tappedPrivacyMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  sub_1C19FD730();
}

- (void)newsTransparencyViewControllerDidDismiss:(id)dismiss
{
  v5 = self + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    dismissCopy = dismiss;
    selfCopy = self;
    v8(dismissCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)tapRecognized:(id)recognized
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer);
  selfCopy = self;
  v4 = v3;
  sub_1C1A4142C(v4);
}

@end