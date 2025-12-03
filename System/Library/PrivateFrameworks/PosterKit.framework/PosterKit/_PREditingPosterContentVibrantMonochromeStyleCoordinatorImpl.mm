@interface _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl
- (double)itemViewLuminance;
- (id)itemViewWithGlassStyleApplied:(BOOL)applied;
- (unint64_t)_preferredMaterialType;
- (void)setContentsLuminance:(double)luminance;
@end

@implementation _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl

- (void)setContentsLuminance:(double)luminance
{
  v8.receiver = self;
  v8.super_class = _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl;
  [(_PREditingPosterContentStyleCoordinatorImpl *)&v8 setContentsLuminance:?];
  v5 = [[PRPosterContentVibrantMonochromeStyle alloc] initWithBackgroundType:luminance <= 0.9 preferredMaterialType:[(_PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl *)self _preferredMaterialType]];
  [(_PREditingPosterContentStyleCoordinatorImpl *)self setStyle:v5];
  itemView = self->_itemView;
  effectiveColor = [(PRPosterContentVibrantMonochromeStyle *)v5 effectiveColor];
  [(UIView *)itemView setBackgroundColor:effectiveColor];
}

- (unint64_t)_preferredMaterialType
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  preferredMaterialType = [style preferredMaterialType];

  return preferredMaterialType;
}

- (double)itemViewLuminance
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
  if ([style backgroundType])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)applied
{
  itemView = self->_itemView;
  if (!itemView)
  {
    appliedCopy = applied;
    style = [(_PREditingPosterContentStyleCoordinatorImpl *)self style];
    v7 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    effectiveColor = [style effectiveColor];
    if (appliedCopy)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
      [v9 setTintColor:effectiveColor];
      [(UIView *)v7 _setBackground:v9];
      [(UIView *)v7 setClipsToBounds:1];
      layer = [(UIView *)v7 layer];
      [layer setCornerRadius:17.0];

      layer2 = [(UIView *)v7 layer];
      [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];
    }

    else
    {
      [(UIView *)v7 setBackgroundColor:effectiveColor];
    }

    v12 = self->_itemView;
    self->_itemView = v7;

    itemView = self->_itemView;
  }

  return itemView;
}

@end