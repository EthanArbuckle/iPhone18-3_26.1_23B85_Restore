@interface TUIGradientContentLabelCell
- (BOOL)_usePadStyle;
- (TUIGradientContentLabelCell)initWithFrame:(CGRect)frame;
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
- (void)setCandidate:(id)candidate;
- (void)setPredictionPosition:(unint64_t)position;
- (void)setStyle:(id)style;
@end

@implementation TUIGradientContentLabelCell

- (BOOL)_usePadStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)setPredictionPosition:(unint64_t)position
{
  self->_predictionPosition = position;
  gradientLabel = [(TUIGradientContentLabelCell *)self gradientLabel];
  [gradientLabel setPredictionPosition:position];
}

- (id)cellBackgroundImage
{
  isHighlighted = [(TUIGradientContentLabelCell *)self isHighlighted];
  style = [(TUICandidateBaseCell *)self style];
  v5 = style;
  if (isHighlighted)
  {
    [style highlightedCellBackgroundImage];
  }

  else
  {
    [style cellBackgroundImage];
  }
  v6 = ;

  return v6;
}

- (id)cellBackgroundColor
{
  isHighlighted = [(TUIGradientContentLabelCell *)self isHighlighted];
  style = [(TUICandidateBaseCell *)self style];
  v5 = style;
  if (isHighlighted)
  {
    [style highlightedBackgroundColor];
  }

  else
  {
    [style cellBackgroundColor];
  }
  v6 = ;

  return v6;
}

- (void)setCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = candidateCopy;
    gradientLabel = self->_gradientLabel;
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringInDeviceLanguageForKey:@"CREATE_POLL"];
    [(TUICandidateGradientContentLabel *)gradientLabel setPrimaryLabelText:v7];

    shouldSuggestTitle = [v4 shouldSuggestTitle];
    v9 = self->_gradientLabel;
    if (shouldSuggestTitle)
    {
      candidate = [v4 candidate];
      [(TUICandidateGradientContentLabel *)v9 setCaptionLabelText:candidate];
    }

    else
    {
      [(TUICandidateGradientContentLabel *)self->_gradientLabel setCaptionLabelText:0];
    }

    if (objc_opt_respondsToSelector())
    {
      -[TUICandidateGradientContentLabel setPrimaryLabelImage:](self->_gradientLabel, "setPrimaryLabelImage:", [v4 performSelector:sel_icon]);
    }

    [(TUICandidateGradientContentLabel *)self->_gradientLabel setLightingEffectEnabled:1];
    [(TUIGradientContentLabelCell *)self setAccessibilityIdentifier:@"SmartAction"];
  }

  else
  {
    candidateProperty = [candidateCopy candidateProperty];
    v12 = self->_gradientLabel;
    candidate2 = [candidateCopy candidate];
    [(TUICandidateGradientContentLabel *)v12 setPrimaryLabelText:candidate2];

    [(TUICandidateGradientContentLabel *)self->_gradientLabel setLightingEffectEnabled:1];
    if (candidateProperty == 2)
    {
      [(TUIGradientContentLabelCell *)self setAccessibilityIdentifier:@"SmartReply"];
    }
  }
}

- (void)setStyle:(id)style
{
  if (style)
  {
    styleCopy = style;
    gradientLabel = [(TUIGradientContentLabelCell *)self gradientLabel];
    textColor = [styleCopy textColor];

    [gradientLabel setTextColor:textColor];
  }
}

- (TUIGradientContentLabelCell)initWithFrame:(CGRect)frame
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = TUIGradientContentLabelCell;
  v3 = [(TUISuggestionCandidateCell *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TUICandidateGradientContentLabel alloc];
    v5 = [(TUICandidateGradientContentLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    gradientLabel = v3->_gradientLabel;
    v3->_gradientLabel = v5;

    [(TUICandidateGradientContentLabel *)v3->_gradientLabel reconfigureForAlignment:0];
    [(TUIGradientContentLabelCell *)v3 addSubview:v3->_gradientLabel];
    if ([(TUIGradientContentLabelCell *)v3 _usePadStyle])
    {
      v7 = 6.0;
    }

    else
    {
      v7 = 8.0;
    }

    if ([(TUIGradientContentLabelCell *)v3 _usePadStyle])
    {
      v8 = -6.0;
    }

    else
    {
      v8 = 0.0;
    }

    leadingAnchor = [(TUICandidateGradientContentLabel *)v3->_gradientLabel leadingAnchor];
    leadingAnchor2 = [(TUIGradientContentLabelCell *)v3 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v21;
    trailingAnchor = [(TUICandidateGradientContentLabel *)v3->_gradientLabel trailingAnchor];
    trailingAnchor2 = [(TUIGradientContentLabelCell *)v3 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v10;
    topAnchor = [(TUICandidateGradientContentLabel *)v3->_gradientLabel topAnchor];
    topAnchor2 = [(TUIGradientContentLabelCell *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7];
    v25[2] = v13;
    bottomAnchor = [(TUICandidateGradientContentLabel *)v3->_gradientLabel bottomAnchor];
    bottomAnchor2 = [(TUIGradientContentLabelCell *)v3 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v8];
    v25[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v17];
  }

  return v3;
}

@end