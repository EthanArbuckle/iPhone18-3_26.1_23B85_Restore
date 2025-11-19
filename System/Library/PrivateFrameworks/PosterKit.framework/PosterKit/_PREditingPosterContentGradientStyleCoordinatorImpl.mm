@interface _PREditingPosterContentGradientStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemView;
@end

@implementation _PREditingPosterContentGradientStyleCoordinatorImpl

- (double)itemViewLuminance
{
  v2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v3 = [v2 colors];
  v4 = [v3 firstObject];

  v5 = [[PRPosterColorValues alloc] initWithColor:v4];
  v6 = [(PRPosterColorValues *)v5 hslValues];
  [v6 luminance];
  v8 = v7;

  return v8;
}

- (id)itemView
{
  gradientItemView = self->_gradientItemView;
  if (!gradientItemView)
  {
    v4 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v5 = [v4 colors];
    v6 = [v4 gradientType];
    v7 = MEMORY[0x1E6979DA8];
    v8 = MEMORY[0x1E6979DB0];
    if (v6 != 1)
    {
      v8 = MEMORY[0x1E6979DA0];
    }

    if (v6 != 2)
    {
      v7 = v8;
    }

    v9 = *v7;
    v10 = [v4 locations];
    [v4 startPoint];
    v12 = v11;
    v14 = v13;
    [v4 endPoint];
    v16 = v15;
    v18 = v17;
    v19 = [v5 bs_map:&__block_literal_global_45];
    v20 = [objc_alloc(MEMORY[0x1E69C5560]) initWithFrame:1 usesBlur:{0.0, 0.0, 50.0, 50.0}];
    [v20 setColors:v19 locations:v10 type:v9];
    [v20 setStartPoint:v12 endPoint:{v14, v16, v18}];
    v21 = self->_gradientItemView;
    self->_gradientItemView = v20;

    gradientItemView = self->_gradientItemView;
  }

  return gradientItemView;
}

@end