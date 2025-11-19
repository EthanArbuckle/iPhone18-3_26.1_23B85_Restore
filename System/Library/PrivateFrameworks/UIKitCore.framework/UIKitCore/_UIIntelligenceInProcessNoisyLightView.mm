@interface _UIIntelligenceInProcessNoisyLightView
- (_TtC5UIKit38_UIIntelligenceInProcessNoisyLightView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation _UIIntelligenceInProcessNoisyLightView

- (_TtC5UIKit38_UIIntelligenceInProcessNoisyLightView)initWithCoder:(id)a3
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(UIView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit38_UIIntelligenceInProcessNoisyLightView_noiseView];
  [v2 bounds];
  [v3 setBounds_];
  v4 = *&v2[OBJC_IVAR____TtC5UIKit38_UIIntelligenceInProcessNoisyLightView_lightView];
  [v2 bounds];
  [v4 setBounds_];
}

@end