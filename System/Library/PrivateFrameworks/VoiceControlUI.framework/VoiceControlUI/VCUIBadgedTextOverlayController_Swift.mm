@interface VCUIBadgedTextOverlayController_Swift
+ (id)textSegmentModelsForText:(id)a3 type:(int64_t)a4 start:(int64_t)a5;
- (BOOL)isOverlay;
- (CGRect)focusRect;
- (CGSize)preferredContentSize;
- (NSString)text;
- (_TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift)initWithNibName:(id)a3 bundle:(id)a4;
- (id)displayedTextSegmentModels;
- (int64_t)zOrder;
- (void)setFocusRect:(CGRect)a3;
- (void)setIsOverlay:(BOOL)a3;
- (void)setPopoverShowing:(BOOL)a3;
- (void)setStartIndex:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setZOrder:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation VCUIBadgedTextOverlayController_Swift

- (void)viewDidLoad
{
  v2 = self;
  sub_2724304C4();
}

- (CGSize)preferredContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController);
  v3 = self;
  v4 = [v2 view];
  if (v4)
  {
    v7 = v4;
    [v4 intrinsicContentSize];
    v9 = v8;
    v11 = v10;

    v5 = v9 + 0.0;
    v6 = v11 + 0.0;
  }

  else
  {
    __break(1u);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (NSString)text
{

  v2 = sub_272434910();

  return v2;
}

- (void)setText:(id)a3
{
  v4 = sub_272434930();
  v6 = v5;
  v7 = self;
  sub_272430B8C(v4, v6);
}

- (void)setType:(int64_t)a3
{
  v4 = self;
  sub_272430D98(a3);
}

- (CGRect)focusRect
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect);
  v4 = *(&self->super._overrideTransitioningDelegate + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect);
  v5 = *(&self->super._view + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFocusRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_27243102C(x, y, width, height);
}

- (void)setStartIndex:(int64_t)a3
{
  v4 = self;
  sub_2724312C8(a3);
}

- (void)setPopoverShowing:(BOOL)a3
{
  v4 = self;
  sub_27243151C(a3);
}

- (int64_t)zOrder
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setZOrder:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (BOOL)isOverlay
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsOverlay:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

+ (id)textSegmentModelsForText:(id)a3 type:(int64_t)a4 start:(int64_t)a5
{
  v7 = sub_272434930();
  v9 = v8;
  if (a4 == 1)
  {
    v10 = 3;
    v11 = a5;
    v12 = 0;
  }

  else
  {
    if (a4)
    {
      result = sub_272434CC0();
      __break(1u);
      return result;
    }

    v10 = 2;
    v11 = a5;
    v12 = 1;
  }

  sub_27240EE70(v10, v11, v12, v7, v9);

  type metadata accessor for VCUIBadgedTextSegmentModel();
  v13 = sub_272434A40();

  return v13;
}

- (id)displayedTextSegmentModels
{
  v2 = self;
  sub_2724341D0();
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type);

  sub_27242FFD8(v3);

  type metadata accessor for VCUIBadgedTextSegmentModel();
  v4 = sub_272434A40();

  return v4;
}

- (_TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_272434930();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return VCUIBadgedTextOverlayController_Swift.init(nibName:bundle:)(v5, v7, a4);
}

@end