@interface PUIGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (PUIGradientView)initWithFrame:(CGRect)frame usesBlur:(BOOL)blur;
- (void)layoutSubviews;
- (void)setColors:(id)colors;
- (void)setColors:(id)colors locations:(id)locations type:(id)type;
- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (void)setUsesBlur:(BOOL)blur;
@end

@implementation PUIGradientView

- (PUIGradientView)initWithFrame:(CGRect)frame usesBlur:(BOOL)blur
{
  blurCopy = blur;
  v12.receiver = self;
  v12.super_class = PUIGradientView;
  v5 = [(PUIGradientView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(PUIGradientView *)v5 setClipsToBounds:1];
    layer = [MEMORY[0x1E6979380] layer];
    gradientLayer = v6->_gradientLayer;
    v6->_gradientLayer = layer;

    v9 = v6->_gradientLayer;
    [(PUIGradientView *)v6 bounds];
    [(CAGradientLayer *)v9 setFrame:?];
    layer2 = [(PUIGradientView *)v6 layer];
    [layer2 addSublayer:v6->_gradientLayer];

    [(PUIGradientView *)v6 setUsesBlur:blurCopy];
  }

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUIGradientView;
  [(PUIGradientView *)&v4 layoutSubviews];
  gradientLayer = self->_gradientLayer;
  [(PUIGradientView *)self bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
}

- (void)setUsesBlur:(BOOL)blur
{
  if (self->_usesBlur != blur)
  {
    if (blur)
    {
      if (!self->_blurFilter)
      {
        v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
        blurFilter = self->_blurFilter;
        self->_blurFilter = v5;

        [(CAFilter *)self->_blurFilter setValue:&unk_1F1C926B8 forKey:@"inputRadius"];
        [(CAFilter *)self->_blurFilter setValue:&unk_1F1C926D0 forKey:@"inputHardEdges"];
        [(CAFilter *)self->_blurFilter setValue:&unk_1F1C926D0 forKey:@"inputNormalizeEdges"];
      }

      p_gradientLayer = &self->_gradientLayer;
      filters = [(CAGradientLayer *)self->_gradientLayer filters];
      v9 = [filters mutableCopy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = objc_opt_new();
      }

      v16 = v11;

      [v16 addObject:self->_blurFilter];
    }

    else
    {
      p_gradientLayer = &self->_gradientLayer;
      filters2 = [(CAGradientLayer *)self->_gradientLayer filters];
      v13 = [filters2 mutableCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = objc_opt_new();
      }

      v16 = v15;

      [v16 removeObject:self->_blurFilter];
    }

    [(CAGradientLayer *)*p_gradientLayer setFilters:v16];
  }
}

- (void)setColors:(id)colors locations:(id)locations type:(id)type
{
  colorsCopy = colors;
  locationsCopy = locations;
  typeCopy = type;
  if (colorsCopy)
  {
    [(CAGradientLayer *)self->_gradientLayer setColors:colorsCopy];
  }

  if (locationsCopy)
  {
    [(CAGradientLayer *)self->_gradientLayer setLocations:locationsCopy];
  }

  if (typeCopy)
  {
    [(CAGradientLayer *)self->_gradientLayer setType:typeCopy];
  }
}

- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  [(CAGradientLayer *)self->_gradientLayer setStartPoint:point.x, point.y];
  gradientLayer = self->_gradientLayer;

  [(CAGradientLayer *)gradientLayer setEndPoint:x, y];
}

- (NSArray)colors
{
  colors = [(CAGradientLayer *)self->_gradientLayer colors];
  v3 = [colors bs_compactMap:&__block_literal_global_1];

  return v3;
}

- (void)setColors:(id)colors
{
  gradientLayer = self->_gradientLayer;
  v4 = [colors bs_compactMap:&__block_literal_global_18];
  [(CAGradientLayer *)gradientLayer setColors:v4];
}

uint64_t __29__PUIGradientView_setColors___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (CGPoint)startPoint
{
  [(CAGradientLayer *)self->_gradientLayer startPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)endPoint
{
  [(CAGradientLayer *)self->_gradientLayer endPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

@end