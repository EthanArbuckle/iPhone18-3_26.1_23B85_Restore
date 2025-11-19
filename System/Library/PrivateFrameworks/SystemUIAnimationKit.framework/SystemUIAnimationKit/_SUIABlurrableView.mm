@interface _SUIABlurrableView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_SUIABlurrableView)initWithCoder:(id)a3;
- (_SUIABlurrableView)initWithFrame:(CGRect)a3;
- (void)_setupBlur;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)a3;
@end

@implementation _SUIABlurrableView

- (_SUIABlurrableView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SUIABlurrableView;
  v3 = [(_SUIABlurrableView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SUIABlurrableView *)v3 _setupBlur];
  }

  return v4;
}

- (_SUIABlurrableView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _SUIABlurrableView;
  v3 = [(_SUIABlurrableView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_SUIABlurrableView *)v3 _setupBlur];
  }

  return v4;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _SUIABlurrableView;
  [(_SUIABlurrableView *)&v9 layoutSubviews];
  if ([(_SUIABlurrableView *)self isRound])
  {
    [(_SUIABlurrableView *)self bounds];
    if (v3 >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5 * 0.5;
    v7 = [(_SUIABlurrableView *)self layer];
    [v7 setCornerRadius:v6];

    v8 = [(_SUIABlurrableView *)self layer];
    [v8 setCornerCurve:*MEMORY[0x277CDA138]];
  }

  else
  {
    v8 = [(_SUIABlurrableView *)self layer];
    [v8 setCornerRadius:0.0];
  }
}

- (void)_setupBlur
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v3 setValue:@"low" forKey:*MEMORY[0x277CDA4E8]];
  [v3 setValue:@"low" forKey:*MEMORY[0x277CDA4B8]];
  v4 = [(_SUIABlurrableView *)self layer];
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 setFilters:v5];
}

- (void)setBlurRadius:(double)a3
{
  blurRadius = self->_blurRadius;
  self->_blurRadius = a3;
  if (blurRadius != a3)
  {
    v6 = [(_SUIABlurrableView *)self layer];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_blurRadius];
    [v6 setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SUIABlurrableView;
    v5 = [(_SUIABlurrableView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end