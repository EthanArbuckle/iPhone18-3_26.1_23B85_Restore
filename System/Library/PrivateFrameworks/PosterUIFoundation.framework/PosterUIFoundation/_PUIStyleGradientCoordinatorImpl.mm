@interface _PUIStyleGradientCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemView;
@end

@implementation _PUIStyleGradientCoordinatorImpl

- (double)itemViewLuminance
{
  style = [(PUIStyleUICoordinatorImpl *)self style];
  colors = [style colors];
  firstObject = [colors firstObject];

  v5 = [[PUIColorValues alloc] initWithColor:firstObject];
  hslValues = [(PUIColorValues *)v5 hslValues];
  [hslValues luminance];
  v8 = v7;

  return v8;
}

- (id)itemView
{
  gradientItemView = self->_gradientItemView;
  if (!gradientItemView)
  {
    style = [(PUIStyleUICoordinatorImpl *)self style];
    colors = [style colors];
    v6 = PUIStyleGradientTypeToCAEditingGradientLayerTypeFrom([style gradientType]);
    locations = [style locations];
    [style startPoint];
    v9 = v8;
    v11 = v10;
    [style endPoint];
    v13 = v12;
    v15 = v14;
    v16 = [colors bs_map:&__block_literal_global_32];
    v17 = [[PUIGradientView alloc] initWithFrame:1 usesBlur:0.0, 0.0, 50.0, 50.0];
    [(PUIGradientView *)v17 setColors:v16 locations:locations type:v6];
    [(PUIGradientView *)v17 setStartPoint:v9 endPoint:v11, v13, v15];
    v18 = self->_gradientItemView;
    self->_gradientItemView = v17;

    gradientItemView = self->_gradientItemView;
  }

  return gradientItemView;
}

@end