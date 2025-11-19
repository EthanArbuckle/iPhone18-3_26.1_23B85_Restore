@interface SUIAShockwaveIntelligenceSystemLightView
- (SUIAShockwaveIntelligenceSystemLightView)initWithFrame:(CGRect)a3 preferringAudioReactivity:(BOOL)a4;
- (UIView)circleMaskView;
- (UIView)sideLightMaskView;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
@end

@implementation SUIAShockwaveIntelligenceSystemLightView

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26C5D336C(v4);
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

- (SUIAShockwaveIntelligenceSystemLightView)initWithFrame:(CGRect)a3 preferringAudioReactivity:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_circleMaskView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___SUIAShockwaveIntelligenceSystemLightView_sideLightMaskView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ShockwaveIntelligenceSystemLightView();
  return [(_UIIntelligenceSystemLightView *)&v10 initWithFrame:v4 preferringAudioReactivity:x, y, width, height];
}

@end