@interface AlphanumericPINTableViewCell
- (AlphanumericPINTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation AlphanumericPINTableViewCell

- (AlphanumericPINTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v29.receiver = self;
  v29.super_class = AlphanumericPINTableViewCell;
  v4 = [(AlphanumericPINTableViewCell *)&v29 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(AlphanumericPINTextField);
    pinTextField = v4->_pinTextField;
    v4->_pinTextField = v5;

    v7 = v4->_pinTextField;
    v8 = +[PSListController appearance];
    v9 = [v8 textColor];
    [(AlphanumericPINTextField *)v7 setTextColor:v9];

    v10 = +[PSListController appearance];
    LODWORD(v8) = [v10 usesDarkTheme];

    if (v8)
    {
      [(AlphanumericPINTextField *)v4->_pinTextField setKeyboardAppearance:1];
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_18B008000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "set devicePasscodeEntry (AlphanumericPINTableViewCell)", v28, 2u);
    }

    [(AlphanumericPINTextField *)v4->_pinTextField setSecureTextEntry:1];
    [(AlphanumericPINTextField *)v4->_pinTextField setDevicePasscodeEntry:1];
    [(AlphanumericPINTableViewCell *)v4 setSelectionStyle:0];
    v11 = +[PSListController appearance];
    v12 = [v11 editableInsertionPointColor];

    if (v12)
    {
      v13 = v4->_pinTextField;
      v14 = +[PSListController appearance];
      v15 = [v14 editableInsertionPointColor];
      [(AlphanumericPINTextField *)v13 setInsertionPointColor:v15];
    }

    v16 = +[PSListController appearance];
    v17 = [v16 editableSelectionBarColor];

    if (v17)
    {
      v18 = v4->_pinTextField;
      v19 = +[PSListController appearance];
      v20 = [v19 editableSelectionBarColor];
      [(AlphanumericPINTextField *)v18 setSelectionBarColor:v20];
    }

    v21 = +[PSListController appearance];
    v22 = [v21 editableSelectionHighlightColor];

    if (v22)
    {
      v23 = v4->_pinTextField;
      v24 = +[PSListController appearance];
      v25 = [v24 editableSelectionHighlightColor];
      [(AlphanumericPINTextField *)v23 setSelectionHighlightColor:v25];
    }

    v26 = [(AlphanumericPINTableViewCell *)v4 contentView];
    [v26 addSubview:v4->_pinTextField];

    [(AlphanumericPINTableViewCell *)v4 setAccessibilityIdentifier:@"ALPHANUMERIC_PIN_CELL"];
  }

  return v4;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = AlphanumericPINTableViewCell;
  [(AlphanumericPINTableViewCell *)&v17 layoutSubviews];
  v3 = [(AlphanumericPINTableViewCell *)self editableTextField];
  [v3 setHidden:1];

  v4 = [(AlphanumericPINTableViewCell *)self contentView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(AlphanumericPINTextField *)self->_pinTextField sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v14 = v13;
  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  v15 = (CGRectGetHeight(v18) - v14) * 0.5;
  v16 = floorf(v15);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  [(AlphanumericPINTextField *)self->_pinTextField setFrame:15.0, v16, CGRectGetWidth(v19) + -30.0, v14];
}

@end