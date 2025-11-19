@interface SXGradientView
- (SXGradientView)initWithGradient:(id)a3;
@end

@implementation SXGradientView

- (SXGradientView)initWithGradient:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SXGradientView;
  v6 = [(SXGradientView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradient, a3);
    v8 = [(SXGradientView *)v7 layer];
    [v5 startPoint];
    [v8 setStartPoint:?];
    [v5 endPoint];
    [v8 setEndPoint:?];
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [(SXGradientView *)v7 gradient];
    v11 = [v10 colors];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__SXGradientView_initWithGradient___block_invoke;
    v15[3] = &unk_1E84FFD18;
    v16 = v9;
    v12 = v9;
    [v11 enumerateObjectsUsingBlock:v15];

    [v8 setColors:v12];
    v13 = [v5 locations];
    [v8 setLocations:v13];
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