@interface APPCPromotedContentView
- (APPCPromotedContentView)initWithFrame:(CGRect)a3;
- (CGRect)frame;
- (NSString)description;
- (void)layoutSubviews;
- (void)newsTransparencyViewControllerDidDismiss:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setReadiness:(int64_t)a3;
- (void)sizeCategoryChanged:(id)a3;
- (void)tapRecognized:(id)a3;
- (void)tappedPrivacyMarker:(id)a3;
@end

@implementation APPCPromotedContentView

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (void)setReadiness:(int64_t)a3
{
  v4 = self;
  sub_1C199D484(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1C19A53B0();
}

- (NSString)description
{
  v2 = self;
  sub_1C19F6164();

  v3 = sub_1C1A6F39C();

  return v3;
}

- (void)sizeCategoryChanged:(id)a3
{
  v3 = sub_1C1A6D25C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  (*(v4 + 8))(v6, v3);
}

- (APPCPromotedContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tappedPrivacyMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C19FD730();
}

- (void)newsTransparencyViewControllerDidDismiss:(id)a3
{
  v5 = self + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)tapRecognized:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer);
  v5 = self;
  v4 = v3;
  sub_1C1A4142C(v4);
}

@end