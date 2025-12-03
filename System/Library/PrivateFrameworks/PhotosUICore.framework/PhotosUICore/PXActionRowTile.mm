@interface PXActionRowTile
- (BOOL)isEnabled;
- (BOOL)showsMenu;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXActionRowTile)initWithFrame:(CGRect)frame;
- (PXActionRowTileDelegate)delegate;
- (void)_setupButton;
- (void)_setupDecoratedButton;
- (void)_updateButtonAction;
- (void)_updateButtonTitle;
- (void)becomeReusable;
- (void)handleButtonTap:(id)tap forEvent:(id)event;
- (void)prepareForReuse;
- (void)setEnabled:(BOOL)enabled;
- (void)setIdiom:(int64_t)idiom;
- (void)setShowsMenu:(BOOL)menu;
- (void)setTitle:(id)title;
- (void)tintColorDidChange;
- (void)widgetFooterView:(id)view didSelectDisclosure:(id)disclosure;
@end

@implementation PXActionRowTile

- (PXActionRowTileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)widgetFooterView:(id)view didSelectDisclosure:(id)disclosure
{
  v5 = [(PXActionRowTile *)self delegate:view];
  [v5 actionRowTileSelected:self tapPositionInTile:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)handleButtonTap:(id)tap forEvent:(id)event
{
  v5 = [event touchesForView:tap];
  anyObject = [v5 anyObject];

  view = [(PXActionRowTile *)self view];
  [anyObject locationInView:view];
  v8 = v7;
  v10 = v9;

  delegate = [(PXActionRowTile *)self delegate];
  [delegate actionRowTileSelected:self tapPositionInTile:{v8, v10}];
}

- (void)prepareForReuse
{
  [(PXActionRowTile *)self setHidden:0];
  [(PXUIWidgetFooterView *)self->__footer setHidden:0];
  [(PXActionRowTile *)self setTitle:0];

  [(PXActionRowTile *)self setEnabled:1];
}

- (void)becomeReusable
{
  [(PXActionRowTile *)self setHidden:1];
  footer = self->__footer;

  [(PXUIWidgetFooterView *)footer setHidden:1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _button = [(PXActionRowTile *)self _button];
  titleLabel = [_button titleLabel];
  font = [titleLabel font];
  v9 = font;
  if (font)
  {
    font2 = font;
  }

  else
  {
    _footer = [(PXActionRowTile *)self _footer];
    font2 = [_footer font];
  }

  if (font2)
  {
    [font2 ascender];
    v13 = v12;
    [font2 descender];
    v15 = v13 - v14;
    [font2 _scaledValueForValue:11.5];
    height = v15 + v16;
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PXActionRowTile;
  [(PXActionRowTile *)&v3 tintColorDidChange];
  [(PXActionRowTile *)self _updateButtonTitle];
}

- (void)_updateButtonAction
{
  v15[1] = *MEMORY[0x1E69E9840];
  _button = [(PXActionRowTile *)self _button];
  if ([_button showsMenuAsPrimaryAction])
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC928];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __38__PXActionRowTile__updateButtonAction__block_invoke;
    v12 = &unk_1E77383D0;
    objc_copyWeak(&v13, &location);
    v5 = [v4 elementWithUncachedProvider:&v9];
    v6 = MEMORY[0x1E69DCC60];
    v15[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{1, v9, v10, v11, v12}];
    v8 = [v6 menuWithChildren:v7];
    [_button setMenu:v8];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [_button setMenu:0];
  }
}

void __38__PXActionRowTile__updateButtonAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = [v4 menuElementsForActionRowTile:WeakRetained];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v3[2](v3, v8);
}

- (void)_updateButtonTitle
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (self->_idiom == 3)
  {
    title = [(PXActionRowTile *)self title];
    _footer = [(PXActionRowTile *)self _footer];
    [_footer setDisclosureTitle:title];
  }

  else
  {
    _button = [(PXActionRowTile *)self _button];
    tintColor = [(PXActionRowTile *)self tintColor];
    v6 = tintColor;
    if (tintColor)
    {
      labelColor = tintColor;
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    v8 = labelColor;

    title2 = [(PXActionRowTile *)self title];
    v10 = MEMORY[0x1A590C430](7, 0x8000, 7);
    v11 = *MEMORY[0x1E69DB648];
    v12 = *MEMORY[0x1E69DB650];
    v29[0] = *MEMORY[0x1E69DB648];
    v29[1] = v12;
    v30[0] = v10;
    v30[1] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    if (title2)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title2 attributes:v13];
    }

    else
    {
      v14 = 0;
    }

    [_button setAttributedTitle:v14 forState:0];
    v27[1] = v12;
    v28[0] = v10;
    v27[0] = v11;
    v24 = v8;
    v15 = [v8 colorWithAlphaComponent:0.5];
    v28[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

    if (title2)
    {
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title2 attributes:v16];
    }

    else
    {
      v17 = 0;
    }

    [_button setAttributedTitle:v17 forState:1];
    v25[1] = v12;
    v26[0] = v10;
    v25[0] = v11;
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    v26[1] = grayColor;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    if (title2)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title2 attributes:v19];
    }

    else
    {
      v20 = 0;
    }

    [_button setAttributedTitle:v20 forState:2];
    [_button setContentHorizontalAlignment:0];
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [_button setBackgroundColor:quaternarySystemFillColor];

    layer = [_button layer];
    [layer setCornerRadius:8.0];
  }
}

- (BOOL)showsMenu
{
  _button = [(PXActionRowTile *)self _button];
  showsMenuAsPrimaryAction = [_button showsMenuAsPrimaryAction];

  return showsMenuAsPrimaryAction;
}

- (void)setShowsMenu:(BOOL)menu
{
  menuCopy = menu;
  _button = [(PXActionRowTile *)self _button];
  [_button setShowsMenuAsPrimaryAction:menuCopy];

  [(PXActionRowTile *)self _updateButtonAction];
}

- (BOOL)isEnabled
{
  _button = [(PXActionRowTile *)self _button];
  isEnabled = [_button isEnabled];

  return isEnabled;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _button = [(PXActionRowTile *)self _button];
  [_button setEnabled:enabledCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  if (title != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)title isEqual:titleCopy];
    titleCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_title;
      self->_title = v7;

      [(PXActionRowTile *)self _updateButtonTitle];
      titleCopy = v9;
    }
  }
}

- (void)_setupDecoratedButton
{
  [(UIButton *)self->__button removeFromSuperview];
  footer = self->__footer;
  if (!footer)
  {
    v4 = [PXUIWidgetFooterView alloc];
    [(PXActionRowTile *)self bounds];
    v5 = [(PXUIWidgetFooterView *)v4 initWithFrame:?];
    v6 = self->__footer;
    self->__footer = v5;

    [(PXUIWidgetFooterView *)self->__footer setAutoresizingMask:18];
    footer = self->__footer;
  }

  [(PXUIWidgetFooterView *)footer setLayoutStyle:1];
  [(PXUIWidgetFooterView *)self->__footer setDelegate:self];
  v7 = self->__footer;
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:36.0];
  [(PXUIWidgetFooterView *)v7 setFont:v8];

  [(PXActionRowTile *)self addSubview:self->__footer];

  [(PXActionRowTile *)self _updateButtonTitle];
}

- (void)_setupButton
{
  [(PXUIWidgetFooterView *)self->__footer removeFromSuperview];
  button = self->__button;
  if (!button)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC738]);
    [(PXActionRowTile *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->__button;
    self->__button = v5;

    [(UIButton *)self->__button setAutoresizingMask:18];
    button = self->__button;
  }

  if ([MEMORY[0x1E695DF58] px_currentCharacterDirection] == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(UIButton *)button setContentHorizontalAlignment:v7];
  [(UIButton *)self->__button addTarget:self action:sel_handleButtonTap_forEvent_ forControlEvents:0x2000];
  [(PXActionRowTile *)self addSubview:self->__button];

  [(PXActionRowTile *)self _updateButtonTitle];
}

- (void)setIdiom:(int64_t)idiom
{
  if (self->_idiom != idiom)
  {
    self->_idiom = idiom;
    if (idiom == 3)
    {
      [(PXActionRowTile *)self _setupDecoratedButton];
    }

    else
    {
      [(PXActionRowTile *)self _setupButton];
    }
  }
}

- (PXActionRowTile)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXActionRowTile;
  v3 = [(PXActionRowTile *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXActionRowTile *)v3 _setupButton];
  }

  return v4;
}

@end