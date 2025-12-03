@interface _PREditingPosterContentTwoToneStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)effectiveColor1;
- (id)effectiveColor2;
- (id)itemViewWithGlassStyleApplied:(BOOL)applied;
@end

@implementation _PREditingPosterContentTwoToneStyleCoordinatorImpl

- (id)effectiveColor1
{
  variationSupportingStyle = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
  variationAppliedColors = [variationSupportingStyle variationAppliedColors];
  v5 = [variationAppliedColors objectAtIndexedSubscript:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style colors];
    v7 = [colors objectAtIndexedSubscript:0];
  }

  return v7;
}

- (id)effectiveColor2
{
  variationSupportingStyle = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
  variationAppliedColors = [variationSupportingStyle variationAppliedColors];
  v5 = [variationAppliedColors objectAtIndexedSubscript:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    colors = [style colors];
    v7 = [colors objectAtIndexedSubscript:1];
  }

  return v7;
}

- (double)itemViewLuminance
{
  effectiveColor1 = [(_PREditingPosterContentTwoToneStyleCoordinatorImpl *)self effectiveColor1];
  v3 = [[PRPosterColorValues alloc] initWithColor:effectiveColor1];
  hslValues = [(PRPosterColorValues *)v3 hslValues];
  [hslValues luminance];
  v6 = v5;

  return v6;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)applied
{
  itemView = self->_itemView;
  if (!itemView)
  {
    effectiveColor1 = [(_PREditingPosterContentTwoToneStyleCoordinatorImpl *)self effectiveColor1];
    effectiveColor2 = [(_PREditingPosterContentTwoToneStyleCoordinatorImpl *)self effectiveColor2];
    v7 = effectiveColor2;
    if (effectiveColor2)
    {
      v8 = effectiveColor2;
    }

    else
    {
      v8 = effectiveColor1;
    }

    v9 = v8;

    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    [(UIView *)v10 setClipsToBounds:1];
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 25.0, 50.0}];
    [(UIView *)v11 setBackgroundColor:effectiveColor1];
    [(UIView *)v11 setAutoresizingMask:22];
    [(UIView *)v10 addSubview:v11];
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{25.0, 0.0, 25.0, 50.0}];
    [(UIView *)v12 setAutoresizingMask:19];
    [(UIView *)v12 setBackgroundColor:v9];

    [(UIView *)v10 addSubview:v12];
    v13 = self->_itemView;
    self->_itemView = v10;
    v14 = v10;

    color1View = self->_color1View;
    self->_color1View = v11;
    v16 = v11;

    color2View = self->_color2View;
    self->_color2View = v12;

    itemView = self->_itemView;
  }

  return itemView;
}

@end