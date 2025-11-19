@interface _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemViewWithGlassStyleApplied:(BOOL)a3;
- (unint64_t)_preferredMaterialType;
- (void)setContentsLuminance:(double)a3;
@end

@implementation _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl

- (void)setContentsLuminance:(double)a3
{
  v8.receiver = self;
  v8.super_class = _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl;
  [(_PREditingPosterContentStyleCoordinatorImpl *)&v8 setContentsLuminance:?];
  v5 = [[PRPosterContentVibrantMonochromeStyle alloc] initWithBackgroundType:a3 <= 0.9 preferredMaterialType:[(_PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl *)self _preferredMaterialType]];
  [(_PREditingPosterContentStyleCoordinatorImpl *)self setStyle:v5];
  itemView = self->_itemView;
  v7 = [(PRPosterContentVibrantMonochromeStyle *)v5 effectiveColor];
  [(UIView *)itemView setBackgroundColor:v7];
}

- (unint64_t)_preferredMaterialType
{
  v2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  v3 = [v2 preferredMaterialType];

  return v3;
}

- (double)itemViewLuminance
{
  v2 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  if ([v2 backgroundType])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)a3
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v5 = a3;
    v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v7 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v8 = [v6 effectiveColor];
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v9 setTintColor:v8];
      [(UIView *)v7 _setBackground:v9];
      [(UIView *)v7 setClipsToBounds:1];
      v10 = [(UIView *)v7 layer];
      [v10 setCornerRadius:17.0];

      v11 = [(UIView *)v7 layer];
      [v11 setCornerCurve:*MEMORY[0x1E69796E8]];
    }

    else
    {
      [(UIView *)v7 setBackgroundColor:v8];
    }

    v12 = self->_itemView;
    self->_itemView = v7;

    itemView = self->_itemView;
  }

  return itemView;
}

@end