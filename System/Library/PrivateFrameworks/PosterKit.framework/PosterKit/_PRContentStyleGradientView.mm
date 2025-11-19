@interface _PRContentStyleGradientView
- (_PRContentStyleGradientView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setColors:(id)a3 locations:(id)a4 type:(id)a5;
- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4;
@end

@implementation _PRContentStyleGradientView

- (_PRContentStyleGradientView)initWithFrame:(CGRect)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _PRContentStyleGradientView;
  v3 = [(_PRContentStyleGradientView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_PRContentStyleGradientView *)v3 setClipsToBounds:1];
    v5 = [MEMORY[0x1E6979380] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v5;

    [(CAGradientLayer *)v4->_gradientLayer setStartPoint:0.5, 0.0];
    [(CAGradientLayer *)v4->_gradientLayer setEndPoint:0.5, 1.0];
    v7 = v4->_gradientLayer;
    [(_PRContentStyleGradientView *)v4 bounds];
    [(CAGradientLayer *)v7 setFrame:?];
    v8 = [(_PRContentStyleGradientView *)v4 layer];
    [v8 addSublayer:v4->_gradientLayer];

    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v9 setValue:&unk_1F1C6B980 forKey:@"inputRadius"];
    [v9 setName:@"filters.gaussianBlur.inputRadius"];
    v10 = v4->_gradientLayer;
    v14[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(CAGradientLayer *)v10 setFilters:v11];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _PRContentStyleGradientView;
  [(_PRContentStyleGradientView *)&v4 layoutSubviews];
  gradientLayer = self->_gradientLayer;
  [(_PRContentStyleGradientView *)self bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
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

@end