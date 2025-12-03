@interface SiriUIContentButton
+ (id)buttonWithImageMask:(id)mask style:(int64_t)style;
+ (id)buttonWithImageTemplate:(id)template style:(int64_t)style;
+ (id)buttonWithLightWeightFont;
+ (id)buttonWithMediumWeightFont;
+ (id)buttonWithRole:(int64_t)role;
+ (id)eyesFreeButtonWithImageTemplate:(id)template style:(int64_t)style;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SiriUIContentButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)hitTestEdgeInsets;
- (void)_updateStyling;
- (void)_updateTintColor;
- (void)configureRoleForConfirmationOptions:(id)options;
- (void)setDefaultColorForTemplate:(id)template;
- (void)setHighlightColorForTemplate:(id)template;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOverrideTextColor:(id)color;
- (void)setRole:(int64_t)role;
- (void)setUsePlatterStyle:(BOOL)style;
@end

@implementation SiriUIContentButton

+ (id)buttonWithRole:(int64_t)role
{
  button = [self button];
  [button setRole:role];

  return button;
}

+ (id)buttonWithLightWeightFont
{
  button = [self button];
  titleLabel = [button titleLabel];
  siriui_dynamicLightWeightBodySizeFont = [MEMORY[0x277D74300] siriui_dynamicLightWeightBodySizeFont];
  [titleLabel setFont:siriui_dynamicLightWeightBodySizeFont];

  titleLabel2 = [button titleLabel];
  [titleLabel2 setTextAlignment:1];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [button setTitleColor:secondaryLabelColor forState:2];

  return button;
}

+ (id)buttonWithMediumWeightFont
{
  button = [self button];
  titleLabel = [button titleLabel];
  siriui_dynamicMediumWeightBodySizeFont = [MEMORY[0x277D74300] siriui_dynamicMediumWeightBodySizeFont];
  [titleLabel setFont:siriui_dynamicMediumWeightBodySizeFont];

  titleLabel2 = [button titleLabel];
  [titleLabel2 setTextAlignment:1];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [button setTitleColor:secondaryLabelColor forState:2];

  return button;
}

+ (id)buttonWithImageMask:(id)mask style:(int64_t)style
{
  maskCopy = mask;
  button = [self button];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [button setBackgroundColor:clearColor];

  if (style)
  {
    [MEMORY[0x277D75348] siriui_maskingColor];
  }

  else
  {
    [MEMORY[0x277D75348] siriui_transparantButtonColor];
  }
  v9 = ;
  v10 = [maskCopy _flatImageWithColor:v9];
  [button setImage:v10 forState:0];

  if (style)
  {
    [MEMORY[0x277D75348] siriui_maskingHighlightColor];
  }

  else
  {
    [MEMORY[0x277D75348] siriui_transparantHighlightedButtonColor];
  }
  v11 = ;
  v12 = [maskCopy _flatImageWithColor:v11];
  [button setImage:v12 forState:1];

  return button;
}

+ (id)buttonWithImageTemplate:(id)template style:(int64_t)style
{
  templateCopy = template;
  button = [self button];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [button setBackgroundColor:clearColor];

  [button setImage:templateCopy forState:0];
  [button _setIsRenderingImageTemplate:1];
  if (style)
  {
    siriui_maskingColor = [MEMORY[0x277D75348] siriui_maskingColor];
    [button setDefaultColorForTemplate:siriui_maskingColor];

    [MEMORY[0x277D75348] siriui_maskingHighlightColor];
  }

  else
  {
    siriui_transparantButtonColor = [MEMORY[0x277D75348] siriui_transparantButtonColor];
    [button setDefaultColorForTemplate:siriui_transparantButtonColor];

    [MEMORY[0x277D75348] siriui_transparantHighlightedButtonColor];
  }
  v11 = ;
  [button setHighlightColorForTemplate:v11];

  return button;
}

+ (id)eyesFreeButtonWithImageTemplate:(id)template style:(int64_t)style
{
  v4 = [SiriUIContentButton buttonWithImageTemplate:template style:style];
  [v4 setContentVerticalAlignment:3];
  [v4 setContentHorizontalAlignment:3];

  return v4;
}

- (SiriUIContentButton)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SiriUIContentButton;
  v3 = [(SiriUIContentButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&v3->_hitTestEdgeInsets.top = *MEMORY[0x277D768C8];
    *&v3->_hitTestEdgeInsets.bottom = v5;
    titleLabel = [(SiriUIContentButton *)v3 titleLabel];
    siriui_textColor = [MEMORY[0x277D75348] siriui_textColor];
    [titleLabel setTextColor:siriui_textColor];

    titleLabel2 = [(SiriUIContentButton *)v4 titleLabel];
    [titleLabel2 setLineBreakMode:4];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SiriUIContentButton *)v4 setBackgroundColor:clearColor];

    [(SiriUIContentButton *)v4 setExclusiveTouch:1];
    [(SiriUIContentButton *)v4 setUsePlatterStyle:SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets()];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SiriUIContentButton;
  [(SiriUIContentButton *)&v4 setHighlighted:highlighted];
  [(SiriUIContentButton *)self _updateStyling];
}

- (void)setUsePlatterStyle:(BOOL)style
{
  if (self->_usePlatterStyle != style)
  {
    self->_usePlatterStyle = style;
    [(SiriUIContentButton *)self _updateStyling];
  }
}

- (void)setRole:(int64_t)role
{
  v17.receiver = self;
  v17.super_class = SiriUIContentButton;
  [(SiriUIContentButton *)&v17 setRole:?];
  if (role <= 1)
  {
    if (role)
    {
      if (role == 1)
      {
        titleLabel = [(SiriUIContentButton *)self titleLabel];
        siriUI_dynamicSubHeadlineEmphasizedSizeFont = [MEMORY[0x277D74300] siriUI_dynamicSubHeadlineEmphasizedSizeFont];
        [titleLabel setFont:siriUI_dynamicSubHeadlineEmphasizedSizeFont];

        siriui_lightTextColor = [MEMORY[0x277D75348] siriui_lightTextColor];
        [(SiriUIContentButton *)self setTitleColor:siriui_lightTextColor forState:0];

        systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
LABEL_9:
        v15 = systemBlueColor;
        [(SiriUIContentButton *)self setBackgroundColor:systemBlueColor];

        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_8:
    titleLabel2 = [(SiriUIContentButton *)self titleLabel];
    siriUI_dynamicSubHeadlineMediumSizeFont = [MEMORY[0x277D74300] siriUI_dynamicSubHeadlineMediumSizeFont];
    [titleLabel2 setFont:siriUI_dynamicSubHeadlineMediumSizeFont];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(SiriUIContentButton *)self setTitleColor:labelColor forState:0];

    systemBlueColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
    goto LABEL_9;
  }

  if (role == 2)
  {
    goto LABEL_8;
  }

  if (role == 3)
  {
    titleLabel3 = [(SiriUIContentButton *)self titleLabel];
    siriUI_dynamicSubHeadlineEmphasizedSizeFont2 = [MEMORY[0x277D74300] siriUI_dynamicSubHeadlineEmphasizedSizeFont];
    [titleLabel3 setFont:siriUI_dynamicSubHeadlineEmphasizedSizeFont2];

    siriui_lightTextColor2 = [MEMORY[0x277D75348] siriui_lightTextColor];
    [(SiriUIContentButton *)self setTitleColor:siriui_lightTextColor2 forState:0];

    systemBlueColor = [MEMORY[0x277D75348] systemRedColor];
    goto LABEL_9;
  }

LABEL_10:
  titleLabel4 = [(SiriUIContentButton *)self titleLabel];
  [titleLabel4 setTextAlignment:1];
}

- (void)_updateStyling
{
  if (!-[SiriUIContentButton isHighlighted](self, "isHighlighted") || (-[SiriUIContentButton imageView](self, "imageView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 image], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if (self->_isRenderingImageTemplate)
    {
      isHighlighted = [(SiriUIContentButton *)self isHighlighted];
      v6 = &OBJC_IVAR___SiriUIContentButton__defaultColorForTemplate;
      if (isHighlighted)
      {
        v6 = &OBJC_IVAR___SiriUIContentButton__highlightColorForTemplate;
      }

      v7 = *(&self->super.super.super.super.super.isa + *v6);
      imageView = [(SiriUIContentButton *)self imageView];
      [imageView setTintColor:v7];
      goto LABEL_20;
    }

    if ([(SiriUIContentButton *)self role]== 3)
    {
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      if ([(SiriUIContentButton *)self role]== 1)
      {
        [MEMORY[0x277D75348] systemBlueColor];
      }

      else
      {
        [(SiriUIContentButton *)self role];
        [MEMORY[0x277D75348] tertiarySystemFillColor];
      }
      systemRedColor = ;
    }

LABEL_15:
    imageView = systemRedColor;
    [(SiriUIContentButton *)self setBackgroundColor:?];
    goto LABEL_21;
  }

  if ([(SiriUIContentButton *)self role]== 3)
  {
    systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
LABEL_18:
    v10 = 0.75;
    goto LABEL_19;
  }

  if ([(SiriUIContentButton *)self role]== 1)
  {
    systemRedColor2 = [MEMORY[0x277D75348] systemBlueColor];
    goto LABEL_18;
  }

  if ([(SiriUIContentButton *)self role]!= 2)
  {
    overrideTextColor = self->_overrideTextColor;
    if (overrideTextColor)
    {
      [(SiriUIContentButton *)self setTitleColor:overrideTextColor forState:0];
    }

    else
    {
      if (self->_usePlatterStyle)
      {
        [MEMORY[0x277D75348] siriui_platterTextHighlightColor];
      }

      else
      {
        [MEMORY[0x277D75348] siriui_lightTextColor];
      }
      v12 = ;
      [(SiriUIContentButton *)self setTitleColor:v12 forState:0];
    }

    systemRedColor = [MEMORY[0x277D75348] siriui_highlightColor];
    goto LABEL_15;
  }

  systemRedColor2 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v10 = 0.15;
LABEL_19:
  imageView = systemRedColor2;
  v7 = [systemRedColor2 colorWithAlphaComponent:v10];
  [(SiriUIContentButton *)self setBackgroundColor:v7];
LABEL_20:

LABEL_21:
}

- (void)configureRoleForConfirmationOptions:(id)options
{
  v37 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [optionsCopy countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v29;
  v9 = *MEMORY[0x277D48B88];
  v10 = *MEMORY[0x277D48B80];
  v26 = *MEMORY[0x277D48B78];
  *&v5 = 136315394;
  v25 = v5;
  do
  {
    v11 = 0;
    do
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(optionsCopy);
      }

      v12 = *(*(&v28 + 1) + 8 * v11);
      type = [v12 type];
      v14 = [type isEqualToString:v9];

      if (v14)
      {
        if (v7)
        {
          v15 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v33 = "[SiriUIContentButton configureRoleForConfirmationOptions:]";
            v34 = 2112;
            v35 = v12;
            _os_log_error_impl(&dword_26948D000, v15, OS_LOG_TYPE_ERROR, "%s Warning: Duplicated confirm confirmationOption included in SAUIConfirmationOptions : %@", buf, 0x16u);
          }
        }

        v16 = v12;

        buttonRole = [v16 buttonRole];
        v18 = [buttonRole isEqualToString:v10];

        if (v18)
        {
          selfCopy2 = self;
          v20 = 1;
          goto LABEL_14;
        }

        buttonRole2 = [v16 buttonRole];
        v22 = [buttonRole2 isEqualToString:v26];

        if (v22)
        {
          selfCopy2 = self;
          v20 = 3;
LABEL_14:
          [(SiriUIContentButton *)selfCopy2 setRole:v20];
        }

        else
        {
          [(SiriUIContentButton *)self setRole:0];
          v23 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v33 = "[SiriUIContentButton configureRoleForConfirmationOptions:]";
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&dword_26948D000, v23, OS_LOG_TYPE_DEFAULT, "%s %@ does not specify primary or destructive roles.", buf, 0x16u);
          }
        }

        v7 = v16;
      }

      ++v11;
    }

    while (v6 != v11);
    v24 = [optionsCopy countByEnumeratingWithState:&v28 objects:v36 count:16];
    v6 = v24;
  }

  while (v24);
LABEL_23:
  [(SiriUIContentButton *)self _updateStyling];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  p_hitTestEdgeInsets = &self->_hitTestEdgeInsets;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_hitTestEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_hitTestEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))) & 1) != 0 || ![(SiriUIContentButton *)self isEnabled]|| [(SiriUIContentButton *)self isHidden])
  {
    v17.receiver = self;
    v17.super_class = SiriUIContentButton;
    v9 = [(SiriUIContentButton *)&v17 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    [(SiriUIContentButton *)self bounds];
    left = self->_hitTestEdgeInsets.left;
    v19.origin.x = v13 + left;
    v19.origin.y = p_hitTestEdgeInsets->top + v14;
    v19.size.width = v15 - (left + self->_hitTestEdgeInsets.right);
    v19.size.height = v16 - (p_hitTestEdgeInsets->top + self->_hitTestEdgeInsets.bottom);
    v18.x = x;
    v18.y = y;
    v9 = CGRectContainsPoint(v19, v18);
  }

  v10 = v9;

  return v10;
}

- (void)setOverrideTextColor:(id)color
{
  objc_storeStrong(&self->_overrideTextColor, color);

  [(SiriUIContentButton *)self _updateStyling];
}

- (void)setDefaultColorForTemplate:(id)template
{
  objc_storeStrong(&self->_defaultColorForTemplate, template);

  [(SiriUIContentButton *)self _updateTintColor];
}

- (void)setHighlightColorForTemplate:(id)template
{
  objc_storeStrong(&self->_highlightColorForTemplate, template);

  [(SiriUIContentButton *)self _updateTintColor];
}

- (void)_updateTintColor
{
  if (self->_isRenderingImageTemplate)
  {
    isHighlighted = [(SiriUIContentButton *)self isHighlighted];
    imageView = [(SiriUIContentButton *)self imageView];
    v7 = imageView;
    v6 = &OBJC_IVAR___SiriUIContentButton__defaultColorForTemplate;
    if (isHighlighted)
    {
      v6 = &OBJC_IVAR___SiriUIContentButton__highlightColorForTemplate;
    }

    [imageView setTintColor:*(&self->super.super.super.super.super.isa + *v6)];
  }
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end