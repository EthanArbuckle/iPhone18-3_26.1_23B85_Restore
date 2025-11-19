@interface PRPosterContentStyleBackgroundRenderer
- (PRPosterContentStyleBackgroundRenderer)initWithView:(id)a3;
- (void)clearAnyPreviousStyle;
- (void)renderDiscreteColorStyle:(id)a3;
- (void)renderGradientStyle:(id)a3;
@end

@implementation PRPosterContentStyleBackgroundRenderer

- (PRPosterContentStyleBackgroundRenderer)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterContentStyleBackgroundRenderer;
  v6 = [(PRPosterContentStyleBackgroundRenderer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (void)clearAnyPreviousStyle
{
  colorViews = self->_colorViews;
  if (colorViews)
  {
    [(NSArray *)colorViews performSelector:sel_removeFromSuperview];
    v4 = self->_colorViews;
    self->_colorViews = 0;
  }

  if (self->_originalBackgroundColor)
  {
    [(UIView *)self->_view setBackgroundColor:?];
    originalBackgroundColor = self->_originalBackgroundColor;
    self->_originalBackgroundColor = 0;
  }

  gradientView = self->_gradientView;
  if (gradientView)
  {

    [(_PRContentStyleGradientView *)gradientView removeFromSuperview];
  }
}

- (void)renderDiscreteColorStyle:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PRPosterContentStyleBackgroundRenderer *)self clearAnyPreviousStyle];
  if ([v4 allowsVariation])
  {
    [v4 variationAppliedColors];
  }

  else
  {
    [v4 colors];
  }
  v5 = ;

  [(UIView *)self->_view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([v5 count] < 2)
  {
    v25 = [(UIView *)self->_view backgroundColor];
    originalBackgroundColor = self->_originalBackgroundColor;
    self->_originalBackgroundColor = v25;

    view = self->_view;
    v14 = [v5 firstObject];
    [(UIView *)view setBackgroundColor:v14];
  }

  else
  {
    v14 = [v5 objectAtIndexedSubscript:0];
    v15 = [v5 objectAtIndexedSubscript:1];
    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    MidX = CGRectGetMidX(v29);
    v30.origin.x = v7;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    v18 = [v16 initWithFrame:{0.0, 0.0, MidX, CGRectGetMaxY(v30)}];
    [v18 setBackgroundColor:v14];
    [v18 setAutoresizingMask:22];
    [(UIView *)self->_view addSubview:v18];
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    v31.origin.x = v7;
    v31.origin.y = v9;
    v31.size.width = v11;
    v31.size.height = v13;
    v20 = CGRectGetMidX(v31);
    v32.origin.x = v7;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v13;
    v21 = CGRectGetMidX(v32);
    v33.origin.x = v7;
    v33.origin.y = v9;
    v33.size.width = v11;
    v33.size.height = v13;
    v22 = [v19 initWithFrame:{v20, 0.0, v21, CGRectGetMaxY(v33)}];
    [v22 setAutoresizingMask:19];
    [v22 setBackgroundColor:v15];
    [(UIView *)self->_view addSubview:v22];
    v28[0] = v18;
    v28[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    colorViews = self->_colorViews;
    self->_colorViews = v23;
  }
}

- (void)renderGradientStyle:(id)a3
{
  v4 = a3;
  [(PRPosterContentStyleBackgroundRenderer *)self clearAnyPreviousStyle];
  v23 = [v4 colors];
  v5 = [v4 gradientType];
  v6 = MEMORY[0x1E6979DA8];
  v7 = MEMORY[0x1E6979DB0];
  if (v5 != 1)
  {
    v7 = MEMORY[0x1E6979DA0];
  }

  if (v5 != 2)
  {
    v6 = v7;
  }

  v8 = *v6;
  v9 = [v4 locations];
  [v4 startPoint];
  v11 = v10;
  v13 = v12;
  [v4 endPoint];
  v15 = v14;
  v17 = v16;

  v18 = [v23 bs_map:&__block_literal_global_38];
  gradientView = self->_gradientView;
  if (!gradientView)
  {
    v20 = [_PRContentStyleGradientView alloc];
    [(UIView *)self->_view bounds];
    v26 = CGRectInset(v25, -10.0, -10.0);
    v21 = [(_PRContentStyleGradientView *)v20 initWithFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
    [(_PRContentStyleGradientView *)v21 setAutoresizingMask:18];
    v22 = self->_gradientView;
    self->_gradientView = v21;

    gradientView = self->_gradientView;
  }

  [(UIView *)self->_view addSubview:gradientView];
  [(_PRContentStyleGradientView *)self->_gradientView setColors:v18 locations:v9 type:v8];
  [(_PRContentStyleGradientView *)self->_gradientView setStartPoint:v11 endPoint:v13, v15, v17];
}

uint64_t __62__PRPosterContentStyleBackgroundRenderer_renderGradientStyle___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

@end