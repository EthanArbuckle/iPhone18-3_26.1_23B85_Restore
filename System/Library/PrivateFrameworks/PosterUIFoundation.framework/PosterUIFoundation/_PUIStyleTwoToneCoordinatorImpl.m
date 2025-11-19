@interface _PUIStyleTwoToneCoordinatorImpl
- (double)itemViewLuminance;
- (id)effectiveColor1;
- (id)effectiveColor2;
- (id)itemView;
@end

@implementation _PUIStyleTwoToneCoordinatorImpl

- (id)effectiveColor1
{
  v3 = [(PUIStyleUICoordinatorImpl *)self variationSupportingStyle];
  v4 = [v3 variationAppliedColors];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PUIStyleUICoordinatorImpl *)self style];
    v9 = [v8 colors];
    v7 = [v9 objectAtIndexedSubscript:0];
  }

  return v7;
}

- (id)effectiveColor2
{
  v3 = [(PUIStyleUICoordinatorImpl *)self variationSupportingStyle];
  v4 = [v3 variationAppliedColors];
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PUIStyleUICoordinatorImpl *)self style];
    v9 = [v8 colors];
    v7 = [v9 objectAtIndexedSubscript:1];
  }

  return v7;
}

- (double)itemViewLuminance
{
  v2 = [(_PUIStyleTwoToneCoordinatorImpl *)self effectiveColor1];
  v3 = [[PUIColorValues alloc] initWithColor:v2];
  v4 = [(PUIColorValues *)v3 hslValues];
  [v4 luminance];
  v6 = v5;

  return v6;
}

- (id)itemView
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v4 = [(_PUIStyleTwoToneCoordinatorImpl *)self effectiveColor1];
    v5 = [(_PUIStyleTwoToneCoordinatorImpl *)self effectiveColor2];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    [(UIView *)v9 setClipsToBounds:1];
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 25.0, 50.0}];
    [(UIView *)v10 setBackgroundColor:v4];
    [(UIView *)v10 setAutoresizingMask:22];
    [(UIView *)v9 addSubview:v10];
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{25.0, 0.0, 25.0, 50.0}];
    [(UIView *)v11 setAutoresizingMask:19];
    [(UIView *)v11 setBackgroundColor:v8];

    [(UIView *)v9 addSubview:v11];
    v12 = self->_itemView;
    self->_itemView = v9;
    v13 = v9;

    color1View = self->_color1View;
    self->_color1View = v10;
    v15 = v10;

    color2View = self->_color2View;
    self->_color2View = v11;

    itemView = self->_itemView;
  }

  return itemView;
}

@end