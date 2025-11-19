@interface TFBetaAppLaunchScreenViewSpecification
- (CGSize)headerIconViewSize;
- (TFBetaAppLaunchScreenViewSpecification)initWithTraitCollection:(id)a3;
- (UIEdgeInsets)buttonModuleContentLayoutInsets;
- (UIEdgeInsets)scrollViewContentLayoutInsets;
- (id)_createBodyTextFontForTraitCollection:(id)a3;
- (id)_createBodyTitleFontForTraitCollection:(id)a3;
- (id)_createPrimaryButtonTextFontForTraitCollection:(id)a3;
- (id)_createSubtitleFontForTraitCollection:(id)a3;
- (id)_createTitleFontForTraitCollection:(id)a3;
@end

@implementation TFBetaAppLaunchScreenViewSpecification

- (TFBetaAppLaunchScreenViewSpecification)initWithTraitCollection:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = TFBetaAppLaunchScreenViewSpecification;
  v5 = [(TFBetaAppLaunchScreenViewSpecification *)&v45 init];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D75520];
    v8 = [(TFBetaAppLaunchScreenViewSpecification *)v5 _titleFontStyle];
    v9 = [v7 metricsForTextStyle:v8];
    titleFontMetrics = v6->_titleFontMetrics;
    v6->_titleFontMetrics = v9;

    v11 = MEMORY[0x277D75520];
    v12 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _subtitleFontStyle];
    v13 = [v11 metricsForTextStyle:v12];
    subtitleFontMetrics = v6->_subtitleFontMetrics;
    v6->_subtitleFontMetrics = v13;

    v15 = MEMORY[0x277D75520];
    v16 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _bodyTitleFontStyle];
    v17 = [v15 metricsForTextStyle:v16];
    bodyTitleFontMetrics = v6->_bodyTitleFontMetrics;
    v6->_bodyTitleFontMetrics = v17;

    v19 = MEMORY[0x277D75520];
    v20 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _bodyTextFontStyle];
    v21 = [v19 metricsForTextStyle:v20];
    bodyTextFontMetrics = v6->_bodyTextFontMetrics;
    v6->_bodyTextFontMetrics = v21;

    v23 = MEMORY[0x277D75520];
    v24 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _primaryButtonTextFontStyle];
    v25 = [v23 metricsForTextStyle:v24];
    primaryButtonTextFontMetrics = v6->_primaryButtonTextFontMetrics;
    v6->_primaryButtonTextFontMetrics = v25;

    v27 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _createTitleFontForTraitCollection:v4];
    titleFont = v6->_titleFont;
    v6->_titleFont = v27;

    v29 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _createSubtitleFontForTraitCollection:v4];
    subtitleFont = v6->_subtitleFont;
    v6->_subtitleFont = v29;

    v31 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _createBodyTitleFontForTraitCollection:v4];
    bodyTitleFont = v6->_bodyTitleFont;
    v6->_bodyTitleFont = v31;

    v33 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _createBodyTextFontForTraitCollection:v4];
    bodyTextFont = v6->_bodyTextFont;
    v6->_bodyTextFont = v33;

    v35 = [(TFBetaAppLaunchScreenViewSpecification *)v6 _createPrimaryButtonTextFontForTraitCollection:v4];
    primaryButtonTextFont = v6->_primaryButtonTextFont;
    v6->_primaryButtonTextFont = v35;

    [(UIFontMetrics *)v6->_titleFontMetrics scaledValueForValue:24.0];
    v6->_viewTopMarginToTitleLabelFirstBaseline = v37;
    [(UIFontMetrics *)v6->_subtitleFontMetrics scaledValueForValue:40.0];
    v6->_titleLabelLastBaselineToSubtitleLabelFirstBaseline = v38;
    *&v6->_viewTopMarginAdditionalPaddingAsFractionOfTotalHeight = xmmword_26D313B10;
    v6->_bottommostLabelLastBaselineToImageTopEdge = 32.0;
    [(UIFontMetrics *)v6->_bodyTitleFontMetrics scaledValueForValue:40.0];
    v6->_lockupBottomEdgeToBodyTitleLabelFirstBaseline = v39;
    [(UIFontMetrics *)v6->_bodyTextFontMetrics scaledValueForValue:28.0];
    v6->_bodyTitleLabelLastBaselineToBodyTextLabelFirstBaseline = v40;
    *&v6->_buttonBackgroundTopEdgeToPrimaryButtonTopEdge = xmmword_26D313B20;
    v6->_interButtonPadding = 8.0;
    v41 = [v4 horizontalSizeClass];
    v6->_scrollViewContentLayoutInsets.top = 0.0;
    v42 = 34.0;
    if (v41 == 2)
    {
      v42 = 140.0;
    }

    v43 = 130.0;
    v6->_scrollViewContentLayoutInsets.left = v42;
    if (v41 != 2)
    {
      v43 = 24.0;
    }

    v6->_scrollViewContentLayoutInsets.bottom = 0.0;
    v6->_scrollViewContentLayoutInsets.right = v42;
    v6->_buttonModuleContentLayoutInsets.top = 0.0;
    v6->_buttonModuleContentLayoutInsets.left = v43;
    v6->_buttonModuleContentLayoutInsets.bottom = 10.0;
    v6->_buttonModuleContentLayoutInsets.right = v43;
  }

  return v6;
}

- (CGSize)headerIconViewSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_createTitleFontForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)self _titleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D743F8]];

  return v7;
}

- (id)_createSubtitleFontForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)self _subtitleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D74418]];

  return v7;
}

- (id)_createBodyTitleFontForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)self _bodyTitleFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D74420]];

  return v7;
}

- (id)_createBodyTextFontForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)self _bodyTextFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D74418]];

  return v7;
}

- (id)_createPrimaryButtonTextFontForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74310];
  v5 = a3;
  v6 = [(TFBetaAppLaunchScreenViewSpecification *)self _primaryButtonTextFontStyle];
  v7 = [v4 tf_systemFontWithTextStyle:v6 weight:v5 forTraitCollection:*MEMORY[0x277D74418]];

  return v7;
}

- (UIEdgeInsets)scrollViewContentLayoutInsets
{
  top = self->_scrollViewContentLayoutInsets.top;
  left = self->_scrollViewContentLayoutInsets.left;
  bottom = self->_scrollViewContentLayoutInsets.bottom;
  right = self->_scrollViewContentLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)buttonModuleContentLayoutInsets
{
  top = self->_buttonModuleContentLayoutInsets.top;
  left = self->_buttonModuleContentLayoutInsets.left;
  bottom = self->_buttonModuleContentLayoutInsets.bottom;
  right = self->_buttonModuleContentLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end