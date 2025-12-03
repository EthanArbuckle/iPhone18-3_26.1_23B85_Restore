@interface TVRUIButton
- (BOOL)shouldShowGlass;
- (NSString)description;
- (TVRUIButton)initWithType:(int64_t)type hasTapAction:(BOOL)action buttonLocation:(int64_t)location options:(unint64_t)options;
- (double)_highlightDuration;
- (double)_unhighlightDuration;
- (id)_accessibilityHintForButtonType:(int64_t)type;
- (id)_accessibilityIDForButtonType:(int64_t)type;
- (id)_accessibilityLabelForButtonType:(int64_t)type;
- (id)_descriptionBuilder;
- (id)_hapticForButtonType:(int64_t)type;
- (id)_pointerEffectForButtonType:(int64_t)type targetedPreview:(id)preview;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_boldTextEnabledStatusChanged:(id)changed;
- (void)_darkenSystemColorsChanged:(id)changed;
- (void)_largeTextEnabledStatusChanged:(id)changed;
- (void)_touchDown:(id)down;
- (void)_touchUp:(id)up;
- (void)_updateButtonType:(int64_t)type;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHasButtonShape:(BOOL)shape;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TVRUIButton

- (TVRUIButton)initWithType:(int64_t)type hasTapAction:(BOOL)action buttonLocation:(int64_t)location options:(unint64_t)options
{
  v60[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = TVRUIButton;
  v10 = [(TVRUIButton *)&v59 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v10)
  {
    v11 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v10->_styleProvider;
    v10->_styleProvider = v11;

    v10->_hasButtonShape = 1;
    v10->_buttonLocation = location;
    v10->_options = options;
    shouldShowGlass = [(TVRUIButton *)v10 shouldShowGlass];
    if (shouldShowGlass)
    {
      [(TVRUIButton *)v10 setBackgroundColor:0];
    }

    else
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(TVRUIButton *)v10 setBackgroundColor:clearColor];
    }

    v10->_buttonType = type;
    layer = [(TVRUIButton *)v10 layer];
    [layer setBorderColor:0];

    layer2 = [(TVRUIButton *)v10 layer];
    [layer2 setBorderWidth:0.0];

    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    buttonContentView = v10->_buttonContentView;
    v10->_buttonContentView = v17;

    [(UIView *)v10->_buttonContentView setUserInteractionEnabled:0];
    v58 = shouldShowGlass;
    if (shouldShowGlass)
    {
      [(UIView *)v10->_buttonContentView setBackgroundColor:0];
    }

    else
    {
      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v10->_buttonContentView setBackgroundColor:clearColor2];
    }

    [(TVRUIButton *)v10 addSubview:v10->_buttonContentView];
    [(TVRUIButton *)v10 _darkenSystemColorsChanged:0];
    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v20;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v10->_titleLabel setTextColor:systemGrayColor];

    [(UILabel *)v10->_titleLabel setTextAlignment:1];
    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_buttonContentView addSubview:v10->_titleLabel];
    v23 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v10->_imageView;
    v10->_imageView = v23;

    [(UIImageView *)v10->_imageView setContentMode:4];
    [(UIImageView *)v10->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_buttonContentView addSubview:v10->_imageView];
    v25 = [(TVRUIStyleProvider *)v10->_styleProvider iconForButtonType:v10->_buttonType buttonLocation:v10->_buttonLocation];
    v57 = v25;
    if (v25)
    {
      v26 = v25;
      [(UIImageView *)v10->_imageView setImage:v25];
      if (([v26 isSymbolImage] & 1) == 0)
      {
        [(UIImageView *)v10->_imageView sizeToFit];
      }
    }

    else
    {
      v27 = [(TVRUIStyleProvider *)v10->_styleProvider textForButtonType:v10->_buttonType];
      if (v27)
      {
        [(UILabel *)v10->_titleLabel setText:v27];
        buttonTextColor = [(TVRUIStyleProvider *)v10->_styleProvider buttonTextColor];
        [(UILabel *)v10->_titleLabel setTextColor:buttonTextColor];

        primaryButtonFont = [(TVRUIStyleProvider *)v10->_styleProvider primaryButtonFont];
        [(UILabel *)v10->_titleLabel setFont:primaryButtonFont];

        [(UILabel *)v10->_titleLabel sizeToFit];
      }
    }

    v30 = [(TVRUIButton *)v10 _hapticForButtonType:v10->_buttonType];
    haptic = v10->_haptic;
    v10->_haptic = v30;

    v10->_tapAction = action;
    v32 = [(TVRUIButton *)v10 _accessibilityLabelForButtonType:type];
    [(TVRUIButton *)v10 setAccessibilityLabel:v32];

    v33 = [(TVRUIButton *)v10 _accessibilityHintForButtonType:type];
    [(TVRUIButton *)v10 setAccessibilityHint:v33];

    v34 = [(TVRUIButton *)v10 _accessibilityIDForButtonType:type];
    [(TVRUIButton *)v10 setAccessibilityIdentifier:v34];

    [(TVRUIButton *)v10 addTarget:v10 action:sel__touchDown_ forControlEvents:1];
    [(TVRUIButton *)v10 addTarget:v10 action:sel__touchUp_ forControlEvents:448];
    [(TVRUIButton *)v10 setClipsToBounds:1];
    tintColorForButtonEnabled = [(TVRUIStyleProvider *)v10->_styleProvider tintColorForButtonEnabled];
    [(TVRUIButton *)v10 setTintColor:tintColorForButtonEnabled];

    v36 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v10];
    [(TVRUIButton *)v10 addInteraction:v36];

    v37 = 0.0;
    if (v10->_buttonType == 2)
    {
      if ([(TVRUIButton *)v10 _shouldReverseLayoutDirection])
      {
        v37 = 2.0;
      }

      else
      {
        v37 = 0.0;
      }
    }

    v52 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(UIImageView *)v10->_imageView centerXAnchor];
    centerXAnchor2 = [(UIView *)v10->_buttonContentView centerXAnchor];
    v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v37];
    v60[0] = v54;
    centerYAnchor = [(UIImageView *)v10->_imageView centerYAnchor];
    centerYAnchor2 = [(UIView *)v10->_buttonContentView centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v60[1] = v39;
    centerXAnchor3 = [(UILabel *)v10->_titleLabel centerXAnchor];
    centerXAnchor4 = [(UIView *)v10->_buttonContentView centerXAnchor];
    v42 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v60[2] = v42;
    centerYAnchor3 = [(UILabel *)v10->_titleLabel centerYAnchor];
    centerYAnchor4 = [(UIView *)v10->_buttonContentView centerYAnchor];
    v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v60[3] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
    [v52 activateConstraints:v46];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__boldTextEnabledStatusChanged_ name:*MEMORY[0x277D76448] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__largeTextEnabledStatusChanged_ name:*MEMORY[0x277D76810] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v10 selector:sel__darkenSystemColorsChanged_ name:*MEMORY[0x277D76460] object:0];

    if (v58)
    {
      [(TVRUIButton *)v10 setClipsToBounds:0];
      controlGlassVariant = [(TVRUIStyleProvider *)v10->_styleProvider controlGlassVariant];
      [(UIView *)v10->_buttonContentView _setBackground:controlGlassVariant];

      [(UIView *)v10->_buttonContentView setClipsToBounds:1];
      [(TVRUIButton *)v10 setNeedsLayout];
    }
  }

  return v10;
}

- (BOOL)shouldShowGlass
{
  isSolariumEnabled = [MEMORY[0x277D6C4E8] isSolariumEnabled];
  if (isSolariumEnabled)
  {
    LOBYTE(isSolariumEnabled) = ![(TVRUIButton *)self disableGlassBackground];
  }

  return isSolariumEnabled;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = TVRUIButton;
  [(TVRUIButton *)&v18 layoutSubviews];
  [(TVRUIButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  shouldShowGlass = [(TVRUIButton *)self shouldShowGlass];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  Height = CGRectGetHeight(v19);
  v13 = Height * 0.5;
  if (!shouldShowGlass)
  {
    [(TVRUIButton *)self _setCornerRadius:Height * 0.5];
  }

  highlightAnimator = [(TVRUIButton *)self highlightAnimator];
  if ([highlightAnimator isRunning])
  {
  }

  else
  {
    unhighlightAnimator = [(TVRUIButton *)self unhighlightAnimator];
    isRunning = [unhighlightAnimator isRunning];

    if ((isRunning & 1) == 0)
    {
      [(UIView *)self->_buttonContentView setBounds:v4, v6, v8, v10];
      v20.origin.x = v4;
      v20.origin.y = v6;
      v20.size.width = v8;
      v20.size.height = v10;
      MidX = CGRectGetMidX(v20);
      v21.origin.x = v4;
      v21.origin.y = v6;
      v21.size.width = v8;
      v21.size.height = v10;
      [(UIView *)self->_buttonContentView setCenter:MidX, CGRectGetMidY(v21)];
      [(UIView *)self->_buttonContentView _setCornerRadius:v13];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9.receiver = self;
  v9.super_class = TVRUIButton;
  [(TVRUIButton *)&v9 setEnabled:?];
  if ([(TVRUIButton *)self buttonLocation]!= 1)
  {
    styleProvider = [(TVRUIButton *)self styleProvider];
    v6 = styleProvider;
    if (enabledCopy)
    {
      [styleProvider tintColorForButtonEnabled];
    }

    else
    {
      [styleProvider tintColorForButtonDisabled];
    }
    v7 = ;
    imageView = [(TVRUIButton *)self imageView];
    [imageView setTintColor:v7];
  }
}

- (NSString)description
{
  _descriptionBuilder = [(TVRUIButton *)self _descriptionBuilder];
  build = [_descriptionBuilder build];

  return build;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVRUIButton;
  [(TVRUIButton *)&v5 touchesBegan:began withEvent:event];
  [(TVRButtonHaptic *)self->_haptic userInteractionBegan];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVRUIButton;
  [(TVRUIButton *)&v5 touchesEnded:ended withEvent:event];
  [(TVRButtonHaptic *)self->_haptic userInteractionEnded];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVRUIButton;
  [(TVRUIButton *)&v5 touchesCancelled:cancelled withEvent:event];
  [(TVRButtonHaptic *)self->_haptic userInteractionCancelled];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v6 = [(TVRUIButton *)self _pointerEffectForButtonType:[(TVRUIButton *)self buttonType] targetedPreview:v5];
  v7 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:0];

  return v7;
}

- (id)_pointerEffectForButtonType:(int64_t)type targetedPreview:(id)preview
{
  v4 = 0x277D75860;
  if ((type - 28) >= 3)
  {
    v4 = 0x277D75878;
  }

  v5 = [*v4 effectWithPreview:preview];

  return v5;
}

- (void)_boldTextEnabledStatusChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TVRUIButton _boldTextEnabledStatusChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  styleProvider = [(TVRUIButton *)self styleProvider];
  v6 = [styleProvider iconForButtonType:-[TVRUIButton buttonType](self buttonLocation:{"buttonType"), -[TVRUIButton buttonLocation](self, "buttonLocation")}];
  imageView = [(TVRUIButton *)self imageView];
  [imageView setImage:v6];
}

- (void)_largeTextEnabledStatusChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TVRUIButton _largeTextEnabledStatusChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  styleProvider = [(TVRUIButton *)self styleProvider];
  v6 = [styleProvider iconForButtonType:-[TVRUIButton buttonType](self buttonLocation:{"buttonType"), -[TVRUIButton buttonLocation](self, "buttonLocation")}];
  imageView = [(TVRUIButton *)self imageView];
  [imageView setImage:v6];
}

- (void)_darkenSystemColorsChanged:(id)changed
{
  shouldShowGlass = [(TVRUIButton *)self shouldShowGlass];
  buttonContentView = _TVRUIViewControllerLog();
  if (os_log_type_enabled(buttonContentView, OS_LOG_TYPE_DEBUG))
  {
    [TVRUIButton _darkenSystemColorsChanged:buttonContentView];
  }

  if (![(TVRUIButton *)self hasButtonShape])
  {
    buttonContentView = [(TVRUIButton *)self buttonContentView];
    [buttonContentView setBackgroundColor:0];
LABEL_10:

    return;
  }

  if (shouldShowGlass)
  {
    buttonBackgroundColor = 0;
  }

  else
  {
    buttonContentView = [(TVRUIButton *)self styleProvider];
    buttonBackgroundColor = [buttonContentView buttonBackgroundColor];
  }

  buttonContentView2 = [(TVRUIButton *)self buttonContentView];
  [buttonContentView2 setBackgroundColor:buttonBackgroundColor];

  if (!shouldShowGlass)
  {

    goto LABEL_10;
  }
}

- (void)setHasButtonShape:(BOOL)shape
{
  if (self->_hasButtonShape != shape)
  {
    self->_hasButtonShape = shape;
    [(TVRUIButton *)self _darkenSystemColorsChanged:0];
  }
}

- (id)_accessibilityLabelForButtonType:(int64_t)type
{
  v3 = 0;
  if (type > 9991)
  {
    if (type > 9994)
    {
      switch(type)
      {
        case 9995:
          v4 = @"TVRUIAXLabelButtonTypeFastForward";
          break;
        case 9996:
          v4 = @"TVRUIAXLabelButtonTypeRewind";
          break;
        case 9999:
          v4 = @"TVRUIAXLabelButtonTypeKeyboard";
          break;
        default:
          goto LABEL_34;
      }
    }

    else if (type == 9992)
    {
      v4 = @"TVRUIAXLabelButtonTypeMediaInfo";
    }

    else if (type == 9993)
    {
      v4 = @"TVRUIAXLabelButtonTypePlay";
    }

    else
    {
      v4 = @"TVRUIAXLabelButtonTypePause";
    }

LABEL_33:
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v5 localizedStringForKey:v4 value:&stru_287E6AEF8 table:@"Localizable"];
  }

  else
  {
    v4 = @"TVRUIAXLabelButtonTypeMenu";
    switch(type)
    {
      case 1:
        v4 = @"TVRUIAXLabelButtonTypeSelect";
        goto LABEL_33;
      case 2:
        goto LABEL_33;
      case 3:
        v4 = @"TVRUIAXLabelButtonTypeHome";
        goto LABEL_33;
      case 5:
        v4 = @"TVRUIAXLabelButtonTypePlayPause";
        goto LABEL_33;
      case 6:
        v4 = @"TVRUIAXLabelButtonTypeSkipForward";
        goto LABEL_33;
      case 7:
        v4 = @"TVRUIAXLabelButtonTypeSkipBackward";
        goto LABEL_33;
      case 12:
        v4 = @"TVRUIAXLabelButtonTypeArrowUp";
        goto LABEL_33;
      case 13:
        v4 = @"TVRUIAXLabelButtonTypeArrowDown";
        goto LABEL_33;
      case 14:
        v4 = @"TVRUIAXLabelButtonTypeArrowLeft";
        goto LABEL_33;
      case 15:
        v4 = @"TVRUIAXLabelButtonTypeArrowRight";
        goto LABEL_33;
      case 16:
      case 17:
      case 18:
        v4 = @"TVRUIAXLabelButtonTypeCaptions";
        goto LABEL_33;
      case 23:
        v4 = @"TVRUIAXLabelButtonTypeBack";
        goto LABEL_33;
      case 24:
        v4 = @"TVRUIAXLabelButtonTypeExit";
        goto LABEL_33;
      case 25:
        v4 = @"TVRUIAXLabelButtonTypeInfo";
        goto LABEL_33;
      case 26:
        v4 = @"TVRUIAXLabelButtonTypePageUp";
        goto LABEL_33;
      case 27:
        v4 = @"TVRUIAXLabelButtonTypePageDown";
        goto LABEL_33;
      case 28:
        v4 = @"TVRUIAXLabelButtonTypeGuide";
        goto LABEL_33;
      case 29:
        v4 = @"TVRUIAXLabelButtonTypeMute";
        goto LABEL_33;
      case 30:
        v4 = @"TVRUIAXLabelButtonTypePower";
        goto LABEL_33;
      default:
        break;
    }
  }

LABEL_34:

  return v3;
}

- (id)_accessibilityHintForButtonType:(int64_t)type
{
  if (type == 29)
  {
    v3 = @"TVRUIAXHintButtonTypeMute";
    goto LABEL_5;
  }

  if (type == 30)
  {
    v3 = @"TVRUIAXHintButtonTypePower";
LABEL_5:
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_287E6AEF8 table:@"Localizable"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_accessibilityIDForButtonType:(int64_t)type
{
  if (type > 9992)
  {
    if (type <= 9994)
    {
      if (type == 9993)
      {
        v4 = @"play";
      }

      else
      {
        v4 = @"pause";
      }
    }

    else
    {
      switch(type)
      {
        case 9995:
          v4 = @"fastForward";
          break;
        case 9996:
          v4 = @"rewind";
          break;
        case 9999:
          v4 = @"keyboard";
          break;
        default:
LABEL_33:
          v4 = @"unknown";
          break;
      }
    }
  }

  else
  {
    v4 = @"menu";
    switch(type)
    {
      case 1:
        v4 = @"select";
        break;
      case 2:
        break;
      case 3:
        v4 = @"home";
        break;
      case 5:
        v4 = @"playPause";
        break;
      case 6:
        v4 = @"skipForward";
        break;
      case 7:
        v4 = @"skipBackward";
        break;
      case 12:
        v4 = @"arrowUp";
        break;
      case 13:
        v4 = @"arrowDown";
        break;
      case 14:
        v4 = @"arrowLeft";
        break;
      case 15:
        v4 = @"arrowRight";
        break;
      case 16:
        v4 = @"toggleCaptions";
        break;
      case 17:
        v4 = @"alwaysOnCaptions";
        break;
      case 18:
        v4 = @"captions";
        break;
      case 23:
        v4 = @"back";
        break;
      case 24:
        v4 = @"exit";
        break;
      case 25:
        v4 = @"info";
        break;
      case 26:
        v4 = @"pageUp";
        break;
      case 27:
        v4 = @"pageDown";
        break;
      case 28:
        v4 = @"guide";
        break;
      case 29:
        v4 = @"mute";
        break;
      case 30:
        v4 = @"power";
        break;
      default:
        goto LABEL_33;
    }
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", v4];

  return v5;
}

- (id)_hapticForButtonType:(int64_t)type
{
  if (type == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [TVRButtonHaptic hapticForView:self, v3];
  }

  return v5;
}

- (double)_highlightDuration
{
  shouldShowGlass = [(TVRUIButton *)self shouldShowGlass];
  result = 0.2;
  if (shouldShowGlass)
  {
    return 0.12;
  }

  return result;
}

- (double)_unhighlightDuration
{
  shouldShowGlass = [(TVRUIButton *)self shouldShowGlass];
  result = 0.48;
  if (shouldShowGlass)
  {
    return 0.25;
  }

  return result;
}

- (void)_touchUp:(id)up
{
  shouldShowGlass = [(TVRUIButton *)self shouldShowGlass];
  highlightAnimator = [(TVRUIButton *)self highlightAnimator];
  isRunning = [highlightAnimator isRunning];

  if (isRunning)
  {
    highlightAnimator2 = [(TVRUIButton *)self highlightAnimator];
    [highlightAnimator2 stopAnimation:1];
  }

  v8 = objc_alloc(MEMORY[0x277D75D40]);
  [(TVRUIButton *)self _unhighlightDuration];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__TVRUIButton__touchUp___block_invoke;
  v11[3] = &unk_279D878A8;
  v11[4] = self;
  v12 = shouldShowGlass;
  v9 = [v8 initWithDuration:2 curve:v11 animations:?];
  [(TVRUIButton *)self setUnhighlightAnimator:v9];

  unhighlightAnimator = [(TVRUIButton *)self unhighlightAnimator];
  [unhighlightAnimator startAnimation];
}

void __24__TVRUIButton__touchUp___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) defaultBackgroundColor];
  }

  v4 = [*(a1 + 32) buttonContentView];
  [v4 setBackgroundColor:v3];

  if ((v2 & 1) == 0)
  {
  }

  [*(a1 + 32) setDefaultBackgroundColor:0];
  v5 = [*(a1 + 32) buttonContentView];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v5 setTransform:v8];

  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "#animation - button unhighlighter ran", v8, 2u);
  }
}

- (void)_touchDown:(id)down
{
  defaultBackgroundColor = [(TVRUIButton *)self defaultBackgroundColor];

  if (!defaultBackgroundColor)
  {
    buttonContentView = [(TVRUIButton *)self buttonContentView];
    backgroundColor = [buttonContentView backgroundColor];
    [(TVRUIButton *)self setDefaultBackgroundColor:backgroundColor];
  }

  unhighlightAnimator = [(TVRUIButton *)self unhighlightAnimator];
  [unhighlightAnimator stopAnimation:1];

  LOBYTE(unhighlightAnimator) = [(TVRUIButton *)self shouldShowGlass];
  v8 = objc_alloc(MEMORY[0x277D75D40]);
  [(TVRUIButton *)self _highlightDuration];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __26__TVRUIButton__touchDown___block_invoke;
  v11[3] = &unk_279D878A8;
  v12 = unhighlightAnimator;
  v11[4] = self;
  v9 = [v8 initWithDuration:3 curve:v11 animations:?];
  [(TVRUIButton *)self setHighlightAnimator:v9];

  highlightAnimator = [(TVRUIButton *)self highlightAnimator];
  [highlightAnimator startAnimation];
}

void __26__TVRUIButton__touchDown___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    goto LABEL_7;
  }

  if ([*(a1 + 32) isHighlightEffectDisabled])
  {
    v2 = [*(a1 + 32) defaultBackgroundColor];

    if (!v2)
    {
      goto LABEL_7;
    }

    v3 = [*(a1 + 32) defaultBackgroundColor];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] colorWithDisplayP3Red:0.219607843 green:0.219607843 blue:0.235294118 alpha:1.0];
  }

  v4 = v3;
  v5 = [*(a1 + 32) buttonContentView];
  [v5 setBackgroundColor:v4];

LABEL_7:
  memset(&v11, 0, sizeof(v11));
  if (*(a1 + 40) == 1)
  {
    v6 = 1.1;
  }

  else
  {
    v6 = 0.92;
  }

  CGAffineTransformMakeScale(&v11, v6, v6);
  v10 = v11;
  v7 = [*(a1 + 32) buttonContentView];
  v9 = v10;
  [v7 setTransform:&v9];

  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.a) = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "#animation - button highlighter ran", &v9, 2u);
  }
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  titleLabel = [(TVRUIButton *)self titleLabel];
  text = [titleLabel text];
  [v3 appendString:text withName:@"title"];

  v6 = [v3 appendInteger:-[TVRUIButton buttonType](self withName:{"buttonType"), @"buttonType"}];
  v7 = [v3 appendBool:-[TVRUIButton hasTapAction](self withName:{"hasTapAction"), @"hasTapAction"}];
  v8 = [v3 appendBool:-[TVRUIButton isHighlightEffectDisabled](self withName:{"isHighlightEffectDisabled"), @"highlightEffectDisabled"}];

  return v3;
}

- (void)_updateButtonType:(int64_t)type
{
  self->_buttonType = type;
  styleProvider = [(TVRUIButton *)self styleProvider];
  v6 = [styleProvider iconForButtonType:type buttonLocation:{-[TVRUIButton buttonLocation](self, "buttonLocation")}];
  imageView = [(TVRUIButton *)self imageView];
  [imageView setImage:v6];

  v8 = [(TVRUIButton *)self _accessibilityLabelForButtonType:type];
  [(TVRUIButton *)self setAccessibilityLabel:v8];

  v9 = [(TVRUIButton *)self _accessibilityHintForButtonType:type];
  [(TVRUIButton *)self setAccessibilityHint:v9];

  v10 = [(TVRUIButton *)self _accessibilityIDForButtonType:type];
  [(TVRUIButton *)self setAccessibilityIdentifier:v10];
}

- (void)_darkenSystemColorsChanged:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TVRUIButton _darkenSystemColorsChanged:]";
  _os_log_debug_impl(&dword_26CFEB000, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

@end