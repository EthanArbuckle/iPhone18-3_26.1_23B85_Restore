@interface VUISpinnerHeaderView
- (VUISpinnerHeaderView)initWithSpecifier:(id)a3;
- (void)layoutSubviews;
- (void)showText;
@end

@implementation VUISpinnerHeaderView

- (VUISpinnerHeaderView)initWithSpecifier:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = VUISpinnerHeaderView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(VUISpinnerHeaderView *)&v23 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(VUISpinnerHeaderView *)v10 setBackgroundColor:v11];

    [(VUISpinnerHeaderView *)v10 setAutoresizingMask:2];
    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    text = v10->_text;
    v10->_text = v12;

    v14 = v10->_text;
    v15 = [MEMORY[0x1E69DD050] _defaultFontForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v14 setFont:v15];

    v16 = v10->_text;
    v17 = [MEMORY[0x1E69DD050] _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v16 setTextColor:v17];

    v18 = [v5 name];
    v19 = [v18 uppercaseString];
    [(UILabel *)v10->_text setText:v19];

    [(VUISpinnerHeaderView *)v10 addSubview:v10->_text];
    v20 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v10->_spinner;
    v10->_spinner = v20;

    [(UIActivityIndicatorView *)v10->_spinner setHidesWhenStopped:1];
    [(VUISpinnerHeaderView *)v10 addSubview:v10->_spinner];
    [(UIActivityIndicatorView *)v10->_spinner startAnimating];
    objc_storeStrong(&v10->_specifier, a3);
  }

  return v10;
}

- (void)showText
{
  v4 = [(PSSpecifier *)self->_specifier name];
  v3 = [v4 uppercaseString];
  [(UILabel *)self->_text setText:v3];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = VUISpinnerHeaderView;
  [(VUISpinnerHeaderView *)&v27 layoutSubviews];
  [(UILabel *)self->_text sizeToFit];
  [(UILabel *)self->_text frame];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x1E69DDA98];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection])
  {
    [(VUISpinnerHeaderView *)self bounds];
    v13 = v12;
    v14 = [(VUISpinnerHeaderView *)self superview];
    [v14 _backgroundInset];
    v16 = v13 - v15;
    PreferencesTableViewCellLeftPad();
    v18 = v16 - v17 - v4;
  }

  else
  {
    v14 = [(VUISpinnerHeaderView *)self superview];
    [v14 _backgroundInset];
    v20 = v19;
    PreferencesTableViewCellLeftPad();
    v18 = v20 + v21;
  }

  [(VUISpinnerHeaderView *)self frame];
  v23 = floor((v22 - v6) * 0.5);
  if ([*v11 userInterfaceLayoutDirection])
  {
    v24 = v18 + -10.0 - v8;
  }

  else
  {
    v24 = v4 + v18 + 10.0;
  }

  [(VUISpinnerHeaderView *)self frame];
  v26 = floor((v25 - v10) * 0.5);
  v28.origin.x = v18;
  v28.origin.y = v23;
  v28.size.width = v4;
  v28.size.height = v6;
  v29 = CGRectIntegral(v28);
  [(UILabel *)self->_text setFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  v30.origin.x = v24;
  v30.origin.y = v26;
  v30.size.width = v8;
  v30.size.height = v10;
  v31 = CGRectIntegral(v30);
  [(UIActivityIndicatorView *)self->_spinner setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
}

@end