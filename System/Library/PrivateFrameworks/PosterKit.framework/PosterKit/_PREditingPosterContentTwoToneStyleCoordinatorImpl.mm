@interface _PREditingPosterContentTwoToneStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)effectiveColor1;
- (id)effectiveColor2;
- (id)itemViewWithGlassStyleApplied:(BOOL)a3;
@end

@implementation _PREditingPosterContentTwoToneStyleCoordinatorImpl

- (id)effectiveColor1
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
  v4 = [v3 variationAppliedColors];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v9 = [v8 colors];
    v7 = [v9 objectAtIndexedSubscript:0];
  }

  return v7;
}

- (id)effectiveColor2
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self variationSupportingStyle];
  v4 = [v3 variationAppliedColors];
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v9 = [v8 colors];
    v7 = [v9 objectAtIndexedSubscript:1];
  }

  return v7;
}

- (double)itemViewLuminance
{
  v2 = [(_PREditingPosterContentTwoToneStyleCoordinatorImpl *)self effectiveColor1];
  v3 = [[PRPosterColorValues alloc] initWithColor:v2];
  v4 = [(PRPosterColorValues *)v3 hslValues];
  [v4 luminance];
  v6 = v5;

  return v6;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)a3
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v5 = [(_PREditingPosterContentTwoToneStyleCoordinatorImpl *)self effectiveColor1];
    v6 = [(_PREditingPosterContentTwoToneStyleCoordinatorImpl *)self effectiveColor2];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    [(UIView *)v10 setClipsToBounds:1];
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 25.0, 50.0}];
    [(UIView *)v11 setBackgroundColor:v5];
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