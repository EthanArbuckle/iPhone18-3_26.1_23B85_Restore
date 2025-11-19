@interface _PUIStyleGradientCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemView;
@end

@implementation _PUIStyleGradientCoordinatorImpl

- (double)itemViewLuminance
{
  v2 = [(PUIStyleUICoordinatorImpl *)self style];
  v3 = [v2 colors];
  v4 = [v3 firstObject];

  v5 = [[PUIColorValues alloc] initWithColor:v4];
  v6 = [(PUIColorValues *)v5 hslValues];
  [v6 luminance];
  v8 = v7;

  return v8;
}

- (id)itemView
{
  gradientItemView = self->_gradientItemView;
  if (!gradientItemView)
  {
    v4 = [(PUIStyleUICoordinatorImpl *)self style];
    v5 = [v4 colors];
    v6 = PUIStyleGradientTypeToCAEditingGradientLayerTypeFrom([v4 gradientType]);
    v7 = [v4 locations];
    [v4 startPoint];
    v9 = v8;
    v11 = v10;
    [v4 endPoint];
    v13 = v12;
    v15 = v14;
    v16 = [v5 bs_map:&__block_literal_global_32];
    v17 = [[PUIGradientView alloc] initWithFrame:1 usesBlur:0.0, 0.0, 50.0, 50.0];
    [(PUIGradientView *)v17 setColors:v16 locations:v7 type:v6];
    [(PUIGradientView *)v17 setStartPoint:v9 endPoint:v11, v13, v15];
    v18 = self->_gradientItemView;
    self->_gradientItemView = v17;

    gradientItemView = self->_gradientItemView;
  }

  return gradientItemView;
}

@end