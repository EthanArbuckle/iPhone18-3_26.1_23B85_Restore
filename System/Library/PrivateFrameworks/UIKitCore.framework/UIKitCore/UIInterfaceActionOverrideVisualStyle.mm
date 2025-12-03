@interface UIInterfaceActionOverrideVisualStyle
+ (id)styleOverride;
- (BOOL)isEqual:(id)equal;
- (id)actionTitleLabelFontForViewState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newActionBackgroundViewForViewState:(id)state;
- (id)newActionSeparatorViewForGroupViewState:(id)state;
@end

@implementation UIInterfaceActionOverrideVisualStyle

+ (id)styleOverride
{
  v2 = [self alloc];
  v3 = objc_alloc_init(UIInterfaceActionConcreteVisualStyle);
  v4 = [v2 initWithConcreteVisualStyle:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = UIInterfaceActionOverrideVisualStyle;
  v4 = [(UIInterfaceActionVisualStyle *)&v12 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = UIInterfaceActionOverrideVisualStyle;
  if ([(UIInterfaceActionVisualStyle *)&v14 isEqual:equalCopy])
  {
    v5 = equalCopy;
    customSeparatorAttributes = self->_customSeparatorAttributes;
    customSeparatorAttributes = [v5 customSeparatorAttributes];
    if (customSeparatorAttributes == customSeparatorAttributes)
    {
      v10 = 1;
    }

    else
    {
      customActionHighlightAttributes = self->_customActionHighlightAttributes;
      customActionHighlightAttributes = [v5 customActionHighlightAttributes];
      if ([(UIInterfaceActionHighlightAttributes *)customActionHighlightAttributes isEqual:customActionHighlightAttributes])
      {
        v10 = 1;
      }

      else
      {
        v11 = self->_customSeparatorAttributes;
        customSeparatorAttributes2 = [v5 customSeparatorAttributes];
        v10 = [(UIInterfaceActionSeparatorAttributes *)v11 isEqual:customSeparatorAttributes2];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  if ([stateCopy isHighlighted] && (-[UIInterfaceActionOverrideVisualStyle customActionHighlightAttributes](self, "customActionHighlightAttributes"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    customActionHighlightAttributes = [(UIInterfaceActionOverrideVisualStyle *)self customActionHighlightAttributes];
    newBackgroundHighlightView = [customActionHighlightAttributes newBackgroundHighlightView];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIInterfaceActionOverrideVisualStyle;
    newBackgroundHighlightView = [(UIInterfaceActionVisualStyle *)&v11 newActionBackgroundViewForViewState:stateCopy];
  }

  [(UIInterfaceActionOverrideVisualStyle *)self customSelectionHighlightContinuousCornerRadius];
  if (newBackgroundHighlightView)
  {
    v9 = v8;
    if ([stateCopy isHighlighted])
    {
      if (v9 > 0.0)
      {
        [newBackgroundHighlightView setClipsToBounds:1];
        [newBackgroundHighlightView _setContinuousCornerRadius:v9];
        [newBackgroundHighlightView setRoundedCornerPosition:{objc_msgSend(stateCopy, "visualCornerPosition")}];
      }
    }
  }

  return newBackgroundHighlightView;
}

- (id)newActionSeparatorViewForGroupViewState:(id)state
{
  stateCopy = state;
  customSeparatorAttributes = [(UIInterfaceActionOverrideVisualStyle *)self customSeparatorAttributes];
  newSeparatorView = [customSeparatorAttributes newSeparatorView];

  if (!newSeparatorView)
  {
    v9.receiver = self;
    v9.super_class = UIInterfaceActionOverrideVisualStyle;
    newSeparatorView = [(UIInterfaceActionVisualStyle *)&v9 newActionSeparatorViewForGroupViewState:stateCopy];
  }

  if (self->_alignActionSeparatorLeadingEdgeWithContent)
  {
    [(UIInterfaceActionVisualStyle *)self contentMargin];
    [newSeparatorView setHorizontalLineLeadingInset:v7];
  }

  return newSeparatorView;
}

- (id)actionTitleLabelFontForViewState:(id)state
{
  stateCopy = state;
  customTitleLabelFontProviderForViewState = self->_customTitleLabelFontProviderForViewState;
  if (!customTitleLabelFontProviderForViewState || (customTitleLabelFontProviderForViewState[2](customTitleLabelFontProviderForViewState, stateCopy), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8.receiver = self;
    v8.super_class = UIInterfaceActionOverrideVisualStyle;
    v6 = [(UIInterfaceActionVisualStyle *)&v8 actionTitleLabelFontForViewState:stateCopy];
  }

  return v6;
}

@end