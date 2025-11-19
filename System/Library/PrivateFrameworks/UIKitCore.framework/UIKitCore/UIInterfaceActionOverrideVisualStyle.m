@interface UIInterfaceActionOverrideVisualStyle
+ (id)styleOverride;
- (BOOL)isEqual:(id)a3;
- (id)actionTitleLabelFontForViewState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newActionBackgroundViewForViewState:(id)a3;
- (id)newActionSeparatorViewForGroupViewState:(id)a3;
@end

@implementation UIInterfaceActionOverrideVisualStyle

+ (id)styleOverride
{
  v2 = [a1 alloc];
  v3 = objc_alloc_init(UIInterfaceActionConcreteVisualStyle);
  v4 = [v2 initWithConcreteVisualStyle:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = UIInterfaceActionOverrideVisualStyle;
  v4 = [(UIInterfaceActionVisualStyle *)&v12 copyWithZone:a3];
  v5 = [(UIInterfaceActionSeparatorAttributes *)self->_customSeparatorAttributes copy];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(UIInterfaceActionHighlightAttributes *)self->_customActionHighlightAttributes copy];
  v8 = v4[8];
  v4[8] = v7;

  v9 = [self->_customTitleLabelFontProviderForViewState copy];
  v10 = v4[9];
  v4[9] = v9;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIInterfaceActionOverrideVisualStyle;
  if ([(UIInterfaceActionVisualStyle *)&v14 isEqual:v4])
  {
    v5 = v4;
    customSeparatorAttributes = self->_customSeparatorAttributes;
    v7 = [v5 customSeparatorAttributes];
    if (customSeparatorAttributes == v7)
    {
      v10 = 1;
    }

    else
    {
      customActionHighlightAttributes = self->_customActionHighlightAttributes;
      v9 = [v5 customActionHighlightAttributes];
      if ([(UIInterfaceActionHighlightAttributes *)customActionHighlightAttributes isEqual:v9])
      {
        v10 = 1;
      }

      else
      {
        v11 = self->_customSeparatorAttributes;
        v12 = [v5 customSeparatorAttributes];
        v10 = [(UIInterfaceActionSeparatorAttributes *)v11 isEqual:v12];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  if ([v4 isHighlighted] && (-[UIInterfaceActionOverrideVisualStyle customActionHighlightAttributes](self, "customActionHighlightAttributes"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(UIInterfaceActionOverrideVisualStyle *)self customActionHighlightAttributes];
    v7 = [v6 newBackgroundHighlightView];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIInterfaceActionOverrideVisualStyle;
    v7 = [(UIInterfaceActionVisualStyle *)&v11 newActionBackgroundViewForViewState:v4];
  }

  [(UIInterfaceActionOverrideVisualStyle *)self customSelectionHighlightContinuousCornerRadius];
  if (v7)
  {
    v9 = v8;
    if ([v4 isHighlighted])
    {
      if (v9 > 0.0)
      {
        [v7 setClipsToBounds:1];
        [v7 _setContinuousCornerRadius:v9];
        [v7 setRoundedCornerPosition:{objc_msgSend(v4, "visualCornerPosition")}];
      }
    }
  }

  return v7;
}

- (id)newActionSeparatorViewForGroupViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionOverrideVisualStyle *)self customSeparatorAttributes];
  v6 = [v5 newSeparatorView];

  if (!v6)
  {
    v9.receiver = self;
    v9.super_class = UIInterfaceActionOverrideVisualStyle;
    v6 = [(UIInterfaceActionVisualStyle *)&v9 newActionSeparatorViewForGroupViewState:v4];
  }

  if (self->_alignActionSeparatorLeadingEdgeWithContent)
  {
    [(UIInterfaceActionVisualStyle *)self contentMargin];
    [v6 setHorizontalLineLeadingInset:v7];
  }

  return v6;
}

- (id)actionTitleLabelFontForViewState:(id)a3
{
  v4 = a3;
  customTitleLabelFontProviderForViewState = self->_customTitleLabelFontProviderForViewState;
  if (!customTitleLabelFontProviderForViewState || (customTitleLabelFontProviderForViewState[2](customTitleLabelFontProviderForViewState, v4), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionOverrideVisualStyle;
    v6 = [(UIInterfaceActionVisualStyle *)&v8 actionTitleLabelFontForViewState:v4];
  }

  return v6;
}

@end