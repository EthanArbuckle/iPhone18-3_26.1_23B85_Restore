@interface SBHTooltipView
+ (SBHTooltipViewParameters)defaultTooltipViewParameters;
- (CGSize)_contentSizeThatFitsAvailableSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (SBHTooltipView)initWithText:(id)text;
- (SBHTooltipView)initWithText:(id)text tooltipViewParameters:(SBHTooltipViewParameters *)parameters;
- (SBHTooltipViewParameters)tooltipViewParameters;
- (void)layoutSubviews;
- (void)setText:(id)text;
- (void)setTooltipViewParameters:(SBHTooltipViewParameters *)parameters;
@end

@implementation SBHTooltipView

- (SBHTooltipView)initWithText:(id)text
{
  textCopy = text;
  v5 = objc_opt_class();
  if (!v5)
  {
    v8 = 0u;
    memset(v7, 0, sizeof(v7));
    if (self)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  [v5 defaultTooltipViewParameters];
  if (!self)
  {
    goto LABEL_5;
  }

LABEL_3:
  self = [(SBHTooltipView *)self initWithText:textCopy tooltipViewParameters:v7];
LABEL_6:

  return self;
}

- (SBHTooltipView)initWithText:(id)text tooltipViewParameters:(SBHTooltipViewParameters *)parameters
{
  v62[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v58.receiver = self;
  v58.super_class = SBHTooltipView;
  v5 = [(SBHTooltipView *)&v58 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [textCopy copy];
    text = v5->_text;
    v5->_text = v6;

    *&v5->_tooltipViewParameters.maxWidth = *&parameters->maxWidth;
    v9 = *&parameters->textInsets.top;
    v8 = *&parameters->textInsets.bottom;
    v10 = *&parameters->maxLines;
    v5->_tooltipViewParameters.continuousCornerRadius = parameters->continuousCornerRadius;
    *&v5->_tooltipViewParameters.textInsets.top = v9;
    *&v5->_tooltipViewParameters.textInsets.bottom = v8;
    *&v5->_tooltipViewParameters.maxLines = v10;
    objc_storeStrong(&v5->_tooltipViewParameters.textFontStyle, parameters->textFontStyle);
    v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v61[0] = v11;
    v62[0] = @"folderLight";
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v61[1] = v12;
    v62[1] = @"folderLight";
    v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v61[2] = v13;
    v62[2] = @"folderDark";
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];

    v14 = MEMORY[0x1E69AE158];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v17 = [v14 materialViewWithRecipeNamesByTraitCollection:v45 inBundle:v15 options:0 initialWeighting:0 scaleAdjustment:currentTraitCollection compatibleWithTraitCollection:1.0];
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v17;

    v19 = v5->_backgroundView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v19 setBackgroundColor:clearColor];

    [(UIView *)v5->_backgroundView _setContinuousCornerRadius:v5->_tooltipViewParameters.continuousCornerRadius];
    [(UIView *)v5->_backgroundView setAlpha:1.0];
    [(SBHTooltipView *)v5 addSubview:v5->_backgroundView];
    [(UIView *)v5->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v5->_backgroundView topAnchor];
    topAnchor2 = [(SBHTooltipView *)v5 topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v60[0] = v50;
    bottomAnchor = [(UIView *)v5->_backgroundView bottomAnchor];
    bottomAnchor2 = [(SBHTooltipView *)v5 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v60[1] = v21;
    leadingAnchor = [(UIView *)v5->_backgroundView leadingAnchor];
    leadingAnchor2 = [(SBHTooltipView *)v5 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v60[2] = v24;
    trailingAnchor = [(UIView *)v5->_backgroundView trailingAnchor];
    trailingAnchor2 = [(SBHTooltipView *)v5 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v60[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
    [v43 activateConstraints:v28];

    v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v5->_label;
    v5->_label = v29;

    [(UILabel *)v5->_label setText:textCopy];
    [(UILabel *)v5->_label setNumberOfLines:v5->_tooltipViewParameters.maxLines];
    [(UILabel *)v5->_label setAdjustsFontSizeToFitWidth:0];
    if (v5->_tooltipViewParameters.shouldTruncateText)
    {
      v31 = 5;
    }

    else
    {
      v31 = 0;
    }

    [(UILabel *)v5->_label setLineBreakMode:v31];
    [(UILabel *)v5->_label setTextAlignment:1];
    [(UILabel *)v5->_label _setContinuousCornerRadius:v5->_tooltipViewParameters.continuousCornerRadius];
    v32 = v5->_label;
    v33 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5->_tooltipViewParameters.textFontStyle];
    [(UILabel *)v32 setFont:v33];

    [(UIView *)v5->_backgroundView addSubview:v5->_label];
    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = MEMORY[0x1E696ACD8];
    topAnchor3 = [(UILabel *)v5->_label topAnchor];
    topAnchor4 = [(UIView *)v5->_backgroundView topAnchor];
    v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v5->_tooltipViewParameters.textInsets.top];
    v59[0] = v51;
    bottomAnchor3 = [(UILabel *)v5->_label bottomAnchor];
    bottomAnchor4 = [(UIView *)v5->_backgroundView bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v5->_tooltipViewParameters.textInsets.bottom];
    v59[1] = v34;
    leadingAnchor3 = [(UILabel *)v5->_label leadingAnchor];
    leadingAnchor4 = [(UIView *)v5->_backgroundView leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v5->_tooltipViewParameters.textInsets.left];
    v59[2] = v37;
    trailingAnchor3 = [(UILabel *)v5->_label trailingAnchor];
    trailingAnchor4 = [(UIView *)v5->_backgroundView trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v5->_tooltipViewParameters.textInsets.right];
    v59[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v44 activateConstraints:v41];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(SBHTooltipView *)self _contentSizeThatFitsAvailableSize:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBHTooltipView;
  [(SBHTooltipView *)&v11 layoutSubviews];
  [(SBHTooltipView *)self tooltipViewParameters];

  if (v9 >= 0.0)
  {
    [(SBHTooltipView *)self tooltipViewParameters];
    backgroundView = [(SBHTooltipView *)self backgroundView];
    [backgroundView _setContinuousCornerRadius:v7];

    backgroundView2 = v8;
  }

  else
  {
    [(SBHTooltipView *)self bounds];
    v4 = v3 * 0.5;
    backgroundView2 = [(SBHTooltipView *)self backgroundView];
    [backgroundView2 _setContinuousCornerRadius:v4];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:textCopy])
  {
    v5 = [textCopy copy];
    text = self->_text;
    self->_text = v5;

    label = self->_label;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __26__SBHTooltipView_setText___block_invoke;
    v8[3] = &unk_1E8088C90;
    v8[4] = self;
    [MEMORY[0x1E69DD250] transitionWithView:label duration:196608 options:v8 animations:0 completion:0.25];
  }
}

uint64_t __26__SBHTooltipView_setText___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setText:*(*(a1 + 32) + 408)];
  [*(a1 + 32) invalidateIntrinsicContentSize];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

- (void)setTooltipViewParameters:(SBHTooltipViewParameters *)parameters
{
  p_tooltipViewParameters = &self->_tooltipViewParameters;
  v6 = *&self->_tooltipViewParameters.textInsets.bottom;
  v25[2] = *&self->_tooltipViewParameters.textInsets.top;
  v25[3] = v6;
  continuousCornerRadius = self->_tooltipViewParameters.continuousCornerRadius;
  v7 = *&self->_tooltipViewParameters.maxLines;
  v25[0] = *&self->_tooltipViewParameters.maxWidth;
  v25[1] = v7;
  p_textFontStyle = &self->_tooltipViewParameters.textFontStyle;
  v27 = self->_tooltipViewParameters.textFontStyle;
  v9 = *&parameters->textInsets.bottom;
  v21 = *&parameters->textInsets.top;
  v22 = v9;
  textFontStyle = parameters->textFontStyle;
  v23 = parameters->continuousCornerRadius;
  v11 = *&parameters->maxLines;
  v19 = *&parameters->maxWidth;
  v20 = v11;
  v24 = textFontStyle;
  if ((SBHTooltipViewParametersEqualToTooltipViewParameters(v25, &v19) & 1) == 0)
  {
    *&p_tooltipViewParameters->maxWidth = *&parameters->maxWidth;
    v12 = *&parameters->maxLines;
    v13 = *&parameters->textInsets.top;
    v14 = *&parameters->textInsets.bottom;
    p_tooltipViewParameters->continuousCornerRadius = parameters->continuousCornerRadius;
    *&p_tooltipViewParameters->textInsets.top = v13;
    *&p_tooltipViewParameters->textInsets.bottom = v14;
    *&p_tooltipViewParameters->maxLines = v12;
    objc_storeStrong(p_textFontStyle, parameters->textFontStyle);
    [(UILabel *)self->_label setNumberOfLines:p_tooltipViewParameters->maxLines, v19, v20, v21, v22, *&v23];
    [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:0];
    if (p_tooltipViewParameters->shouldTruncateText)
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    [(UILabel *)self->_label setLineBreakMode:v15];
    [(UILabel *)self->_label _setContinuousCornerRadius:p_tooltipViewParameters->continuousCornerRadius];
    label = self->_label;
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*p_textFontStyle];
    [(UILabel *)label setFont:v17];

    [(SBHTooltipView *)self invalidateIntrinsicContentSize];
    [(SBHTooltipView *)self setNeedsLayout];
  }

  v18 = parameters->textFontStyle;
}

+ (SBHTooltipViewParameters)defaultTooltipViewParameters
{
  result = *MEMORY[0x1E69DDD00];
  *&retstr->maxWidth = xmmword_1BEE87D10;
  retstr->maxLines = 1;
  retstr->shouldTruncateText = 1;
  __asm { FMOV            V0.2D, #8.0 }

  *&retstr->textInsets.top = _Q0;
  *&retstr->textInsets.bottom = _Q0;
  retstr->continuousCornerRadius = -1.0;
  retstr->textFontStyle = result;
  return result;
}

- (CGSize)_contentSizeThatFitsAvailableSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  text = [(SBHTooltipView *)self text];
  v5 = [text length];

  if (v5)
  {
    label = self->_label;
    v7.f64[0] = height;
    v7.f64[1] = width;
    p_tooltipViewParameters = &self->_tooltipViewParameters;
    v9 = vsubq_f64(vsubq_f64(v7, *&p_tooltipViewParameters->textInsets.top), *&p_tooltipViewParameters->textInsets.bottom);
    v10 = vextq_s8(*&p_tooltipViewParameters->maxWidth, *&p_tooltipViewParameters->maxWidth, 8uLL);
    v11 = vbslq_s8(vcgtq_f64(v10, v9), v9, v10);
    v18 = vbicq_s8(v11, vcltzq_f64(v11));
    [(UILabel *)label sizeThatFits:v18.f64[1]];
    v13.f64[1] = v12;
    v14 = vaddq_f64(vaddq_f64(vbslq_s8(vcgtq_f64(v13, v18), v18, v13), *&p_tooltipViewParameters->textInsets.top), *&p_tooltipViewParameters->textInsets.bottom);
  }

  else
  {
    v14 = vextq_s8(*MEMORY[0x1E695F060], *MEMORY[0x1E695F060], 8uLL);
  }

  v15 = v14.f64[1];
  result.height = v14.f64[0];
  result.width = v15;
  return result;
}

- (SBHTooltipViewParameters)tooltipViewParameters
{
  textFontStyle = self->_tooltipViewParameters.textFontStyle;
  retstr->continuousCornerRadius = self->_tooltipViewParameters.continuousCornerRadius;
  v5 = *&self->_tooltipViewParameters.textInsets.bottom;
  *&retstr->textInsets.top = *&self->_tooltipViewParameters.textInsets.top;
  *&retstr->textInsets.bottom = v5;
  v6 = *&self->_tooltipViewParameters.maxLines;
  *&retstr->maxWidth = *&self->_tooltipViewParameters.maxWidth;
  *&retstr->maxLines = v6;
  result = textFontStyle;
  retstr->textFontStyle = result;
  return result;
}

@end