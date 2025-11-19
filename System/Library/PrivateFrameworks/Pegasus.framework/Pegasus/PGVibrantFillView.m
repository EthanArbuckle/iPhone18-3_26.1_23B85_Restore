@interface PGVibrantFillView
- (PGVibrantFillView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)PG_updateVibrancyEffectForTintColor;
- (void)tintColorDidChange;
@end

@implementation PGVibrantFillView

- (void)PG_updateVibrancyEffectForTintColor
{
  v3 = [(PGVibrantFillView *)self tintColor];
  v4 = [v3 PG_wantsVibrancyEffect];
  v5 = *MEMORY[0x1E6979CF8];
  if (!v4)
  {
    v5 = 0;
  }

  v10 = v5;

  v6 = [(PGVibrantFillView *)self layer];
  v7 = [v6 compositingFilter];

  if (([v7 isEqualToString:v10] & 1) == 0 && v7 != v10)
  {
    v8 = [(PGVibrantFillView *)self layer];
    [v8 setCompositingFilter:v10];
  }

  v9 = [(PGVibrantFillView *)self tintColor];
  [(PGVibrantFillView *)self setBackgroundColor:v9];
}

- (PGVibrantFillView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PGVibrantFillView;
  v3 = [(PGVibrantFillView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PGVibrantFillView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = PGVibrantFillView;
  v5 = [(PGVibrantFillView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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