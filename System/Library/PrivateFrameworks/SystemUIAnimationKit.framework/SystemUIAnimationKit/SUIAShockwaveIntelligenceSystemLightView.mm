@interface SUIAShockwaveIntelligenceSystemLightView
- (SUIAShockwaveIntelligenceSystemLightView)initWithFrame:(CGRect)frame preferringAudioReactivity:(BOOL)reactivity;
- (UIView)circleMaskView;
- (UIView)sideLightMaskView;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
@end

@implementation SUIAShockwaveIntelligenceSystemLightView

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  sub_26C5D336C(subviewCopy);
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ShockwaveIntelligenceSystemLightView();
  v2 = v6.receiver;
  [(SUIAShockwaveIntelligenceSystemLightView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    [v5 setFrame_];
  }
}

- (UIView)circleMaskView
{
  v3 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (UIView)sideLightMaskView
{
  v3 = OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (SUIAShockwaveIntelligenceSystemLightView)initWithFrame:(CGRect)frame preferringAudioReactivity:(BOOL)reactivity
{
  reactivityCopy = reactivity;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ShockwaveIntelligenceSystemLightView();
  return [(_UIIntelligenceSystemLightView *)&v10 initWithFrame:reactivityCopy preferringAudioReactivity:x, y, width, height];
}

@end