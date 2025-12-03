@interface SXGradientView
- (SXGradientView)initWithGradient:(id)gradient;
@end

@implementation SXGradientView

- (SXGradientView)initWithGradient:(id)gradient
{
  gradientCopy = gradient;
  v17.receiver = self;
  v17.super_class = SXGradientView;
  v6 = [(SXGradientView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradient, gradient);
    layer = [(SXGradientView *)v7 layer];
    [gradientCopy startPoint];
    [layer setStartPoint:?];
    [gradientCopy endPoint];
    [layer setEndPoint:?];
    array = [MEMORY[0x1E695DF70] array];
    gradient = [(SXGradientView *)v7 gradient];
    colors = [gradient colors];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__SXGradientView_initWithGradient___block_invoke;
    v15[3] = &unk_1E84FFD18;
    v16 = array;
    v12 = array;
    [colors enumerateObjectsUsingBlock:v15];

    [layer setColors:v12];
    locations = [gradientCopy locations];
    [layer setLocations:locations];
  }

  return v7;
}

uint64_t __35__SXGradientView_initWithGradient___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 CGColor];

  return [v3 addObject:v5];
}

@end