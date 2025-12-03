@interface TVRUIPagingButton
- (TVRUIPagingButton)initWithTitle:(id)title styleProvider:(id)provider;
- (_TVRUIEventDelegate)buttonEventDelegate;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonReleased:(id)released;
- (void)_darkenSystemColorsChanged:(id)changed;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation TVRUIPagingButton

- (TVRUIPagingButton)initWithTitle:(id)title styleProvider:(id)provider
{
  v58[10] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  providerCopy = provider;
  v57.receiver = self;
  v57.super_class = TVRUIPagingButton;
  v8 = [(TVRUIPagingButton *)&v57 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    buttonBackgroundColor = [providerCopy buttonBackgroundColor];
    [(TVRUIPagingButton *)v8 setBackgroundColor:buttonBackgroundColor];

    [providerCopy secondaryButtonSize];
    v11 = v10 * 0.5;
    layer = [(TVRUIPagingButton *)v8 layer];
    [layer setCornerRadius:v11];

    v13 = [[TVRUIButton alloc] initWithType:26 hasTapAction:0];
    topButton = v8->_topButton;
    v8->_topButton = v13;

    [(TVRUIButton *)v8->_topButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIPagingButton *)v8 addSubview:v8->_topButton];
    v15 = [[TVRUIButton alloc] initWithType:27 hasTapAction:0];
    bottomButton = v8->_bottomButton;
    v8->_bottomButton = v15;

    [(TVRUIButton *)v8->_bottomButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIPagingButton *)v8 addSubview:v8->_bottomButton];
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v17;

    [(UILabel *)v8->_titleLabel setText:titleCopy];
    buttonTextColor = [providerCopy buttonTextColor];
    [(UILabel *)v8->_titleLabel setTextColor:buttonTextColor];

    pagingButtonFont = [providerCopy pagingButtonFont];
    [(UILabel *)v8->_titleLabel setFont:pagingButtonFont];

    [(UILabel *)v8->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_titleLabel setTextAlignment:1];
    [(UILabel *)v8->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(TVRUIPagingButton *)v8 addSubview:v8->_titleLabel];
    v42 = MEMORY[0x277CCAAD0];
    topAnchor = [(TVRUIButton *)v8->_topButton topAnchor];
    topAnchor2 = [(TVRUIPagingButton *)v8 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v58[0] = v52;
    centerXAnchor = [(TVRUIButton *)v8->_topButton centerXAnchor];
    centerXAnchor2 = [(TVRUIPagingButton *)v8 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[1] = v49;
    widthAnchor = [(TVRUIButton *)v8->_topButton widthAnchor];
    widthAnchor2 = [(TVRUIPagingButton *)v8 widthAnchor];
    v46 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v58[2] = v46;
    heightAnchor = [(TVRUIButton *)v8->_topButton heightAnchor];
    widthAnchor3 = [(TVRUIButton *)v8->_topButton widthAnchor];
    v43 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
    v58[3] = v43;
    centerXAnchor3 = [(UILabel *)v8->_titleLabel centerXAnchor];
    centerXAnchor4 = [(TVRUIPagingButton *)v8 centerXAnchor];
    v39 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v58[4] = v39;
    centerYAnchor = [(UILabel *)v8->_titleLabel centerYAnchor];
    centerYAnchor2 = [(TVRUIPagingButton *)v8 centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v58[5] = v36;
    bottomAnchor = [(TVRUIButton *)v8->_bottomButton bottomAnchor];
    bottomAnchor2 = [(TVRUIPagingButton *)v8 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v58[6] = v33;
    centerXAnchor5 = [(TVRUIButton *)v8->_bottomButton centerXAnchor];
    centerXAnchor6 = [(TVRUIPagingButton *)v8 centerXAnchor];
    v21 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v58[7] = v21;
    heightAnchor2 = [(TVRUIButton *)v8->_bottomButton heightAnchor];
    [(TVRUIButton *)v8->_topButton heightAnchor];
    v23 = v56 = titleCopy;
    [heightAnchor2 constraintEqualToAnchor:v23];
    v24 = v55 = providerCopy;
    v58[8] = v24;
    widthAnchor4 = [(TVRUIButton *)v8->_bottomButton widthAnchor];
    widthAnchor5 = [(TVRUIButton *)v8->_topButton widthAnchor];
    v27 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v58[9] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:10];
    [v42 activateConstraints:v28];

    providerCopy = v55;
    titleCopy = v56;

    [(TVRUIButton *)v8->_topButton addTarget:v8 action:sel__buttonPressed_ forControlEvents:1];
    [(TVRUIButton *)v8->_topButton addTarget:v8 action:sel__buttonReleased_ forControlEvents:448];
    [(TVRUIButton *)v8->_bottomButton addTarget:v8 action:sel__buttonPressed_ forControlEvents:1];
    [(TVRUIButton *)v8->_bottomButton addTarget:v8 action:sel__buttonReleased_ forControlEvents:448];
    [(TVRUIPagingButton *)v8 setStyleProvider:v55];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__darkenSystemColorsChanged_ name:*MEMORY[0x277D76460] object:0];
  }

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  [(TVRUIPagingButton *)self setUserInteractionEnabled:?];
  v5 = 1.0;
  if (!self->_enabled)
  {
    styleProvider = [(TVRUIPagingButton *)self styleProvider];
    [styleProvider disabledButtonAlpha];
    v5 = v7;
  }

  topButton = [(TVRUIPagingButton *)self topButton];
  [topButton setEnabled:enabledCopy];

  topButton2 = [(TVRUIPagingButton *)self topButton];
  [topButton2 setAlpha:v5];

  bottomButton = [(TVRUIPagingButton *)self bottomButton];
  [bottomButton setEnabled:enabledCopy];

  bottomButton2 = [(TVRUIPagingButton *)self bottomButton];
  [bottomButton2 setAlpha:v5];

  styleProvider2 = [(TVRUIPagingButton *)self styleProvider];
  v13 = styleProvider2;
  if (enabledCopy)
  {
    [styleProvider2 buttonTextColor];
  }

  else
  {
    [styleProvider2 tintColorForButtonDisabled];
  }
  v14 = ;
  titleLabel = [(TVRUIPagingButton *)self titleLabel];
  [titleLabel setTextColor:v14];

  [(TVRUIPagingButton *)self setAlpha:v5];
}

- (void)_darkenSystemColorsChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TVRUIPagingButton _darkenSystemColorsChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  styleProvider = [(TVRUIPagingButton *)self styleProvider];
  buttonBackgroundColor = [styleProvider buttonBackgroundColor];
  [(TVRUIPagingButton *)self setBackgroundColor:buttonBackgroundColor];
}

- (void)_buttonPressed:(id)pressed
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [pressed buttonType]);
  buttonEventDelegate = [(TVRUIPagingButton *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUIPagingButton *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUIPagingButton *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)released
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [released buttonType]);
  buttonEventDelegate = [(TVRUIPagingButton *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUIPagingButton *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUIPagingButton *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (_TVRUIEventDelegate)buttonEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEventDelegate);

  return WeakRetained;
}

@end