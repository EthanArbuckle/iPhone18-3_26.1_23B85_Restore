@interface TUIGradientContentLabelCell
- (BOOL)_usePadStyle;
- (TUIGradientContentLabelCell)initWithFrame:(CGRect)a3;
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
- (void)setCandidate:(id)a3;
- (void)setPredictionPosition:(unint64_t)a3;
- (void)setStyle:(id)a3;
@end

@implementation TUIGradientContentLabelCell

- (BOOL)_usePadStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)setPredictionPosition:(unint64_t)a3
{
  self->_predictionPosition = a3;
  v4 = [(TUIGradientContentLabelCell *)self gradientLabel];
  [v4 setPredictionPosition:a3];
}

- (id)cellBackgroundImage
{
  v3 = [(TUIGradientContentLabelCell *)self isHighlighted];
  v4 = [(TUICandidateBaseCell *)self style];
  v5 = v4;
  if (v3)
  {
    [v4 highlightedCellBackgroundImage];
  }

  else
  {
    [v4 cellBackgroundImage];
  }
  v6 = ;

  return v6;
}

- (id)cellBackgroundColor
{
  v3 = [(TUIGradientContentLabelCell *)self isHighlighted];
  v4 = [(TUICandidateBaseCell *)self style];
  v5 = v4;
  if (v3)
  {
    [v4 highlightedBackgroundColor];
  }

  else
  {
    [v4 cellBackgroundColor];
  }
  v6 = ;

  return v6;
}

- (void)setCandidate:(id)a3
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v14;
    gradientLabel = self->_gradientLabel;
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringInDeviceLanguageForKey:@"CREATE_POLL"];
    [(TUICandidateGradientContentLabel *)gradientLabel setPrimaryLabelText:v7];

    v8 = [v4 shouldSuggestTitle];
    v9 = self->_gradientLabel;
    if (v8)
    {
      v10 = [v4 candidate];
      [(TUICandidateGradientContentLabel *)v9 setCaptionLabelText:v10];
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
    v11 = [v14 candidateProperty];
    v12 = self->_gradientLabel;
    v13 = [v14 candidate];
    [(TUICandidateGradientContentLabel *)v12 setPrimaryLabelText:v13];

    [(TUICandidateGradientContentLabel *)self->_gradientLabel setLightingEffectEnabled:1];
    if (v11 == 2)
    {
      [(TUIGradientContentLabelCell *)self setAccessibilityIdentifier:@"SmartReply"];
    }
  }
}

- (void)setStyle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(TUIGradientContentLabelCell *)self gradientLabel];
    v5 = [v4 textColor];

    [v6 setTextColor:v5];
  }
}

- (TUIGradientContentLabelCell)initWithFrame:(CGRect)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = TUIGradientContentLabelCell;
  v3 = [(TUISuggestionCandidateCell *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v23 = [(TUICandidateGradientContentLabel *)v3->_gradientLabel leadingAnchor];
    v22 = [(TUIGradientContentLabelCell *)v3 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(TUICandidateGradientContentLabel *)v3->_gradientLabel trailingAnchor];
    v9 = [(TUIGradientContentLabelCell *)v3 trailingAnchor];
    v10 = [v20 constraintEqualToAnchor:v9];
    v25[1] = v10;
    v11 = [(TUICandidateGradientContentLabel *)v3->_gradientLabel topAnchor];
    v12 = [(TUIGradientContentLabelCell *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:v7];
    v25[2] = v13;
    v14 = [(TUICandidateGradientContentLabel *)v3->_gradientLabel bottomAnchor];
    v15 = [(TUIGradientContentLabelCell *)v3 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:v8];
    v25[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v17];
  }

  return v3;
}

@end