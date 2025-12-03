@interface _PREditingPosterContentGradientStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemView;
@end

@implementation _PREditingPosterContentGradientStyleCoordinatorImpl

- (double)itemViewLuminance
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  colors = [style colors];
  firstObject = [colors firstObject];

  v5 = [[PRPosterColorValues alloc] initWithColor:firstObject];
  hslValues = [(PRPosterColorValues *)v5 hslValues];
  [hslValues luminance];
  v8 = v7;

  return v8;
}

- (id)itemView
{
  gradientItemView = self->_gradientItemView;
  if (!gradientItemView)
  {
    style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style colors];
    gradientType = [style gradientType];
    v7 = MEMORY[0x1E6979DA8];
    v8 = MEMORY[0x1E6979DB0];
    if (gradientType != 1)
    {
      v8 = MEMORY[0x1E6979DA0];
    }

    if (gradientType != 2)
    {
      v7 = v8;
    }

    v9 = *v7;
    locations = [style locations];
    [style startPoint];
    v12 = v11;
    v14 = v13;
    [style endPoint];
    v16 = v15;
    v18 = v17;
    v19 = [colors bs_map:&__block_literal_global_45];
    v20 = [objc_alloc(MEMORY[0x1E69C5560]) initWithFrame:1 usesBlur:{0.0, 0.0, 50.0, 50.0}];
    [v20 setColors:v19 locations:locations type:v9];
    [v20 setStartPoint:v12 endPoint:{v14, v16, v18}];
    v21 = self->_gradientItemView;
    self->_gradientItemView = v20;

    gradientItemView = self->_gradientItemView;
  }

  return gradientItemView;
}

@end