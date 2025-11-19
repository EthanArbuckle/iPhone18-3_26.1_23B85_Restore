@interface PUIGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (PUIGradientView)initWithFrame:(CGRect)a3 usesBlur:(BOOL)a4;
- (void)layoutSubviews;
- (void)setColors:(id)a3;
- (void)setColors:(id)a3 locations:(id)a4 type:(id)a5;
- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4;
- (void)setUsesBlur:(BOOL)a3;
@end

@implementation PUIGradientView

- (PUIGradientView)initWithFrame:(CGRect)a3 usesBlur:(BOOL)a4
{
  v4 = a4;
  v12.receiver = self;
  v12.super_class = PUIGradientView;
  v5 = [(PUIGradientView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(PUIGradientView *)v5 setClipsToBounds:1];
    v7 = [MEMORY[0x1E6979380] layer];
    gradientLayer = v6->_gradientLayer;
    v6->_gradientLayer = v7;

    v9 = v6->_gradientLayer;
    [(PUIGradientView *)v6 bounds];
    [(CAGradientLayer *)v9 setFrame:?];
    v10 = [(PUIGradientView *)v6 layer];
    [v10 addSublayer:v6->_gradientLayer];

    [(PUIGradientView *)v6 setUsesBlur:v4];
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

- (void)setUsesBlur:(BOOL)a3
{
  if (self->_usesBlur != a3)
  {
    if (a3)
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
      v8 = [(CAGradientLayer *)self->_gradientLayer filters];
      v9 = [v8 mutableCopy];
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
      v12 = [(CAGradientLayer *)self->_gradientLayer filters];
      v13 = [v12 mutableCopy];
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

- (void)setColors:(id)a3 locations:(id)a4 type:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10)
  {
    [(CAGradientLayer *)self->_gradientLayer setColors:v10];
  }

  if (v8)
  {
    [(CAGradientLayer *)self->_gradientLayer setLocations:v8];
  }

  if (v9)
  {
    [(CAGradientLayer *)self->_gradientLayer setType:v9];
  }
}

- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(CAGradientLayer *)self->_gradientLayer setStartPoint:a3.x, a3.y];
  gradientLayer = self->_gradientLayer;

  [(CAGradientLayer *)gradientLayer setEndPoint:x, y];
}

- (NSArray)colors
{
  v2 = [(CAGradientLayer *)self->_gradientLayer colors];
  v3 = [v2 bs_compactMap:&__block_literal_global_1];

  return v3;
}

- (void)setColors:(id)a3
{
  gradientLayer = self->_gradientLayer;
  v4 = [a3 bs_compactMap:&__block_literal_global_18];
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