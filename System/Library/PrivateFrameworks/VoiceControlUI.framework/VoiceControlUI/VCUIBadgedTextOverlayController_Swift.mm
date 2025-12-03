@interface VCUIBadgedTextOverlayController_Swift
+ (id)textSegmentModelsForText:(id)text type:(int64_t)type start:(int64_t)start;
- (BOOL)isOverlay;
- (CGRect)focusRect;
- (CGSize)preferredContentSize;
- (NSString)text;
- (_TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift)initWithNibName:(id)name bundle:(id)bundle;
- (id)displayedTextSegmentModels;
- (int64_t)zOrder;
- (void)setFocusRect:(CGRect)rect;
- (void)setIsOverlay:(BOOL)overlay;
- (void)setPopoverShowing:(BOOL)showing;
- (void)setStartIndex:(int64_t)index;
- (void)setText:(id)text;
- (void)setType:(int64_t)type;
- (void)setZOrder:(int64_t)order;
- (void)viewDidLoad;
@end

@implementation VCUIBadgedTextOverlayController_Swift

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2724304C4();
}

- (CGSize)preferredContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController);
  selfCopy = self;
  view = [v2 view];
  if (view)
  {
    v7 = view;
    [view intrinsicContentSize];
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

- (void)setText:(id)text
{
  v4 = sub_272434930();
  v6 = v5;
  selfCopy = self;
  sub_272430B8C(v4, v6);
}

- (void)setType:(int64_t)type
{
  selfCopy = self;
  sub_272430D98(type);
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

- (void)setFocusRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_27243102C(x, y, width, height);
}

- (void)setStartIndex:(int64_t)index
{
  selfCopy = self;
  sub_2724312C8(index);
}

- (void)setPopoverShowing:(BOOL)showing
{
  selfCopy = self;
  sub_27243151C(showing);
}

- (int64_t)zOrder
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setZOrder:(int64_t)order
{
  v5 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = order;
}

- (BOOL)isOverlay
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsOverlay:(BOOL)overlay
{
  v5 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = overlay;
}

+ (id)textSegmentModelsForText:(id)text type:(int64_t)type start:(int64_t)start
{
  v7 = sub_272434930();
  v9 = v8;
  if (type == 1)
  {
    v10 = 3;
    startCopy2 = start;
    v12 = 0;
  }

  else
  {
    if (type)
    {
      result = sub_272434CC0();
      __break(1u);
      return result;
    }

    v10 = 2;
    startCopy2 = start;
    v12 = 1;
  }

  sub_27240EE70(v10, startCopy2, v12, v7, v9);

  type metadata accessor for VCUIBadgedTextSegmentModel();
  v13 = sub_272434A40();

  return v13;
}

- (id)displayedTextSegmentModels
{
  selfCopy = self;
  sub_2724341D0();
  v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type);

  sub_27242FFD8(v3);

  type metadata accessor for VCUIBadgedTextSegmentModel();
  v4 = sub_272434A40();

  return v4;
}

- (_TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_272434930();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return VCUIBadgedTextOverlayController_Swift.init(nibName:bundle:)(v5, v7, bundle);
}

@end