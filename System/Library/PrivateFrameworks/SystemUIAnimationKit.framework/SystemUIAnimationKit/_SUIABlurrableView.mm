@interface _SUIABlurrableView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_SUIABlurrableView)initWithCoder:(id)coder;
- (_SUIABlurrableView)initWithFrame:(CGRect)frame;
- (void)_setupBlur;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)radius;
@end

@implementation _SUIABlurrableView

- (_SUIABlurrableView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SUIABlurrableView;
  v3 = [(_SUIABlurrableView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SUIABlurrableView *)v3 _setupBlur];
  }

  return v4;
}

- (_SUIABlurrableView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _SUIABlurrableView;
  v3 = [(_SUIABlurrableView *)&v6 initWithCoder:coder];
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
    layer = [(_SUIABlurrableView *)self layer];
    [layer setCornerRadius:v6];

    layer2 = [(_SUIABlurrableView *)self layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
  }

  else
  {
    layer2 = [(_SUIABlurrableView *)self layer];
    [layer2 setCornerRadius:0.0];
  }
}

- (void)_setupBlur
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v3 setValue:@"low" forKey:*MEMORY[0x277CDA4E8]];
  [v3 setValue:@"low" forKey:*MEMORY[0x277CDA4B8]];
  layer = [(_SUIABlurrableView *)self layer];
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [layer setFilters:v5];
}

- (void)setBlurRadius:(double)radius
{
  blurRadius = self->_blurRadius;
  self->_blurRadius = radius;
  if (blurRadius != radius)
  {
    layer = [(_SUIABlurrableView *)self layer];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_blurRadius];
    [layer setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SUIABlurrableView;
    v5 = [(_SUIABlurrableView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end