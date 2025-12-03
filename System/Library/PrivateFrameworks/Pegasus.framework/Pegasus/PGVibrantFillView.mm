@interface PGVibrantFillView
- (PGVibrantFillView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)PG_updateVibrancyEffectForTintColor;
- (void)tintColorDidChange;
@end

@implementation PGVibrantFillView

- (void)PG_updateVibrancyEffectForTintColor
{
  tintColor = [(PGVibrantFillView *)self tintColor];
  pG_wantsVibrancyEffect = [tintColor PG_wantsVibrancyEffect];
  v5 = *MEMORY[0x1E6979CF8];
  if (!pG_wantsVibrancyEffect)
  {
    v5 = 0;
  }

  v10 = v5;

  layer = [(PGVibrantFillView *)self layer];
  compositingFilter = [layer compositingFilter];

  if (([compositingFilter isEqualToString:v10] & 1) == 0 && compositingFilter != v10)
  {
    layer2 = [(PGVibrantFillView *)self layer];
    [layer2 setCompositingFilter:v10];
  }

  tintColor2 = [(PGVibrantFillView *)self tintColor];
  [(PGVibrantFillView *)self setBackgroundColor:tintColor2];
}

- (PGVibrantFillView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PGVibrantFillView;
  v3 = [(PGVibrantFillView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PGVibrantFillView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PGVibrantFillView;
  v5 = [(PGVibrantFillView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PGVibrantFillView;
  [(PGVibrantFillView *)&v3 tintColorDidChange];
  [(PGVibrantFillView *)self PG_updateVibrancyEffectForTintColor];
}

@end