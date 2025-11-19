@interface SiriUIContentButton
+ (id)buttonWithImageMask:(id)a3 style:(int64_t)a4;
+ (id)buttonWithImageTemplate:(id)a3 style:(int64_t)a4;
+ (id)buttonWithLightWeightFont;
+ (id)buttonWithMediumWeightFont;
+ (id)buttonWithRole:(int64_t)a3;
+ (id)eyesFreeButtonWithImageTemplate:(id)a3 style:(int64_t)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SiriUIContentButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)hitTestEdgeInsets;
- (void)_updateStyling;
- (void)_updateTintColor;
- (void)configureRoleForConfirmationOptions:(id)a3;
- (void)setDefaultColorForTemplate:(id)a3;
- (void)setHighlightColorForTemplate:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOverrideTextColor:(id)a3;
- (void)setRole:(int64_t)a3;
- (void)setUsePlatterStyle:(BOOL)a3;
@end

@implementation SiriUIContentButton

+ (id)buttonWithRole:(int64_t)a3
{
  v4 = [a1 button];
  [v4 setRole:a3];

  return v4;
}

+ (id)buttonWithLightWeightFont
{
  v2 = [a1 button];
  v3 = [v2 titleLabel];
  v4 = [MEMORY[0x277D74300] siriui_dynamicLightWeightBodySizeFont];
  [v3 setFont:v4];

  v5 = [v2 titleLabel];
  [v5 setTextAlignment:1];

  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v2 setTitleColor:v6 forState:2];

  return v2;
}

+ (id)buttonWithMediumWeightFont
{
  v2 = [a1 button];
  v3 = [v2 titleLabel];
  v4 = [MEMORY[0x277D74300] siriui_dynamicMediumWeightBodySizeFont];
  [v3 setFont:v4];

  v5 = [v2 titleLabel];
  [v5 setTextAlignment:1];

  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v2 setTitleColor:v6 forState:2];

  return v2;
}

+ (id)buttonWithImageMask:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 button];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  if (a4)
  {
    [MEMORY[0x277D75348] siriui_maskingColor];
  }

  else
  {
    [MEMORY[0x277D75348] siriui_transparantButtonColor];
  }
  v9 = ;
  v10 = [v6 _flatImageWithColor:v9];
  [v7 setImage:v10 forState:0];

  if (a4)
  {
    [MEMORY[0x277D75348] siriui_maskingHighlightColor];
  }

  else
  {
    [MEMORY[0x277D75348] siriui_transparantHighlightedButtonColor];
  }
  v11 = ;
  v12 = [v6 _flatImageWithColor:v11];
  [v7 setImage:v12 forState:1];

  return v7;
}

+ (id)buttonWithImageTemplate:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 button];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setImage:v6 forState:0];
  [v7 _setIsRenderingImageTemplate:1];
  if (a4)
  {
    v9 = [MEMORY[0x277D75348] siriui_maskingColor];
    [v7 setDefaultColorForTemplate:v9];

    [MEMORY[0x277D75348] siriui_maskingHighlightColor];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] siriui_transparantButtonColor];
    [v7 setDefaultColorForTemplate:v10];

    [MEMORY[0x277D75348] siriui_transparantHighlightedButtonColor];
  }
  v11 = ;
  [v7 setHighlightColorForTemplate:v11];

  return v7;
}

+ (id)eyesFreeButtonWithImageTemplate:(id)a3 style:(int64_t)a4
{
  v4 = [SiriUIContentButton buttonWithImageTemplate:a3 style:a4];
  [v4 setContentVerticalAlignment:3];
  [v4 setContentHorizontalAlignment:3];

  return v4;
}

- (SiriUIContentButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SiriUIContentButton;
  v3 = [(SiriUIContentButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&v3->_hitTestEdgeInsets.top = *MEMORY[0x277D768C8];
    *&v3->_hitTestEdgeInsets.bottom = v5;
    v6 = [(SiriUIContentButton *)v3 titleLabel];
    v7 = [MEMORY[0x277D75348] siriui_textColor];
    [v6 setTextColor:v7];

    v8 = [(SiriUIContentButton *)v4 titleLabel];
    [v8 setLineBreakMode:4];

    v9 = [MEMORY[0x277D75348] clearColor];
    [(SiriUIContentButton *)v4 setBackgroundColor:v9];

    [(SiriUIContentButton *)v4 setExclusiveTouch:1];
    [(SiriUIContentButton *)v4 setUsePlatterStyle:SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets()];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SiriUIContentButton;
  [(SiriUIContentButton *)&v4 setHighlighted:a3];
  [(SiriUIContentButton *)self _updateStyling];
}

- (void)setUsePlatterStyle:(BOOL)a3
{
  if (self->_usePlatterStyle != a3)
  {
    self->_usePlatterStyle = a3;
    [(SiriUIContentButton *)self _updateStyling];
  }
}

- (void)setRole:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = SiriUIContentButton;
  [(SiriUIContentButton *)&v17 setRole:?];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = [(SiriUIContentButton *)self titleLabel];
        v6 = [MEMORY[0x277D74300] siriUI_dynamicSubHeadlineEmphasizedSizeFont];
        [v5 setFont:v6];

        v7 = [MEMORY[0x277D75348] siriui_lightTextColor];
        [(SiriUIContentButton *)self setTitleColor:v7 forState:0];

        v8 = [MEMORY[0x277D75348] systemBlueColor];
LABEL_9:
        v15 = v8;
        [(SiriUIContentButton *)self setBackgroundColor:v8];

        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_8:
    v12 = [(SiriUIContentButton *)self titleLabel];
    v13 = [MEMORY[0x277D74300] siriUI_dynamicSubHeadlineMediumSizeFont];
    [v12 setFont:v13];

    v14 = [MEMORY[0x277D75348] labelColor];
    [(SiriUIContentButton *)self setTitleColor:v14 forState:0];

    v8 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v9 = [(SiriUIContentButton *)self titleLabel];
    v10 = [MEMORY[0x277D74300] siriUI_dynamicSubHeadlineEmphasizedSizeFont];
    [v9 setFont:v10];

    v11 = [MEMORY[0x277D75348] siriui_lightTextColor];
    [(SiriUIContentButton *)self setTitleColor:v11 forState:0];

    v8 = [MEMORY[0x277D75348] systemRedColor];
    goto LABEL_9;
  }

LABEL_10:
  v16 = [(SiriUIContentButton *)self titleLabel];
  [v16 setTextAlignment:1];
}

- (void)_updateStyling
{
  if (!-[SiriUIContentButton isHighlighted](self, "isHighlighted") || (-[SiriUIContentButton imageView](self, "imageView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 image], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if (self->_isRenderingImageTemplate)
    {
      v5 = [(SiriUIContentButton *)self isHighlighted];
      v6 = &OBJC_IVAR___SiriUIContentButton__defaultColorForTemplate;
      if (v5)
      {
        v6 = &OBJC_IVAR___SiriUIContentButton__highlightColorForTemplate;
      }

      v7 = *(&self->super.super.super.super.super.isa + *v6);
      v13 = [(SiriUIContentButton *)self imageView];
      [v13 setTintColor:v7];
      goto LABEL_20;
    }

    if ([(SiriUIContentButton *)self role]== 3)
    {
      v8 = [MEMORY[0x277D75348] systemRedColor];
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
      v8 = ;
    }

LABEL_15:
    v13 = v8;
    [(SiriUIContentButton *)self setBackgroundColor:?];
    goto LABEL_21;
  }

  if ([(SiriUIContentButton *)self role]== 3)
  {
    v9 = [MEMORY[0x277D75348] systemRedColor];
LABEL_18:
    v10 = 0.75;
    goto LABEL_19;
  }

  if ([(SiriUIContentButton *)self role]== 1)
  {
    v9 = [MEMORY[0x277D75348] systemBlueColor];
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

    v8 = [MEMORY[0x277D75348] siriui_highlightColor];
    goto LABEL_15;
  }

  v9 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v10 = 0.15;
LABEL_19:
  v13 = v9;
  v7 = [v9 colorWithAlphaComponent:v10];
  [(SiriUIContentButton *)self setBackgroundColor:v7];
LABEL_20:

LABEL_21:
}

- (void)configureRoleForConfirmationOptions:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v28 + 1) + 8 * v11);
      v13 = [v12 type];
      v14 = [v13 isEqualToString:v9];

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

        v17 = [v16 buttonRole];
        v18 = [v17 isEqualToString:v10];

        if (v18)
        {
          v19 = self;
          v20 = 1;
          goto LABEL_14;
        }

        v21 = [v16 buttonRole];
        v22 = [v21 isEqualToString:v26];

        if (v22)
        {
          v19 = self;
          v20 = 3;
LABEL_14:
          [(SiriUIContentButton *)v19 setRole:v20];
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
    v24 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
    v6 = v24;
  }

  while (v24);
LABEL_23:
  [(SiriUIContentButton *)self _updateStyling];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  p_hitTestEdgeInsets = &self->_hitTestEdgeInsets;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_hitTestEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_hitTestEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))) & 1) != 0 || ![(SiriUIContentButton *)self isEnabled]|| [(SiriUIContentButton *)self isHidden])
  {
    v17.receiver = self;
    v17.super_class = SiriUIContentButton;
    v9 = [(SiriUIContentButton *)&v17 pointInside:v7 withEvent:x, y];
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

- (void)setOverrideTextColor:(id)a3
{
  objc_storeStrong(&self->_overrideTextColor, a3);

  [(SiriUIContentButton *)self _updateStyling];
}

- (void)setDefaultColorForTemplate:(id)a3
{
  objc_storeStrong(&self->_defaultColorForTemplate, a3);

  [(SiriUIContentButton *)self _updateTintColor];
}

- (void)setHighlightColorForTemplate:(id)a3
{
  objc_storeStrong(&self->_highlightColorForTemplate, a3);

  [(SiriUIContentButton *)self _updateTintColor];
}

- (void)_updateTintColor
{
  if (self->_isRenderingImageTemplate)
  {
    v4 = [(SiriUIContentButton *)self isHighlighted];
    v5 = [(SiriUIContentButton *)self imageView];
    v7 = v5;
    v6 = &OBJC_IVAR___SiriUIContentButton__defaultColorForTemplate;
    if (v4)
    {
      v6 = &OBJC_IVAR___SiriUIContentButton__highlightColorForTemplate;
    }

    [v5 setTintColor:*(&self->super.super.super.super.super.isa + *v6)];
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