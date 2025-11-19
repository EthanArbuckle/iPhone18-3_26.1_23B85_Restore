@interface PKEditTableNoPassesView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEditTableNoPassesView)initWithFrame:(CGRect)a3;
- (PKEditTableNoPassesViewDelegate)delegate;
- (void)findAppsForWalletTapped;
- (void)layoutSubviews;
- (void)scanCodeButtonTapped;
@end

@implementation PKEditTableNoPassesView

- (PKEditTableNoPassesView)initWithFrame:(CGRect)a3
{
  v37.receiver = self;
  v37.super_class = PKEditTableNoPassesView;
  v3 = [(PKEditTableNoPassesView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v11 = v3->_titleLabel;
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    v13 = v3->_titleLabel;
    v14 = PKLocalizedString(&cfstr_PassEditingNoP.isa);
    [(UILabel *)v13 setText:v14];

    [(PKEditTableNoPassesView *)v3 addSubview:v3->_titleLabel];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v15;

    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    v17 = v3->_descriptionLabel;
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    v19 = v3->_descriptionLabel;
    v20 = PKLocalizedString(&cfstr_PassEditingNoP_0.isa);
    [(UILabel *)v19 setText:v20];

    [(PKEditTableNoPassesView *)v3 addSubview:v3->_descriptionLabel];
    objc_initWeak(&location, v3);
    if (PKRearCameraIsAllowed())
    {
      v21 = MEMORY[0x1E69DC628];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __41__PKEditTableNoPassesView_initWithFrame___block_invoke;
      v34[3] = &unk_1E8010A60;
      objc_copyWeak(&v35, &location);
      v22 = [v21 actionWithHandler:v34];
      v23 = PKLocalizedString(&cfstr_ScanCode.isa);
      v24 = ButtonWithTitle(v23, v22);
      buttonScanCode = v3->_buttonScanCode;
      v3->_buttonScanCode = v24;

      [(PKEditTableNoPassesView *)v3 addSubview:v3->_buttonScanCode];
      objc_destroyWeak(&v35);
    }

    v26 = MEMORY[0x1E69DC628];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __41__PKEditTableNoPassesView_initWithFrame___block_invoke_2;
    v32[3] = &unk_1E8010A60;
    objc_copyWeak(&v33, &location);
    v27 = [v26 actionWithHandler:v32];
    v28 = PKLocalizedString(&cfstr_AppStore.isa);
    v29 = ButtonWithTitle(v28, v27);
    buttonFindApps = v3->_buttonFindApps;
    v3->_buttonFindApps = v29;

    [(PKEditTableNoPassesView *)v3 addSubview:v3->_buttonFindApps];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __41__PKEditTableNoPassesView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanCodeButtonTapped];
}

void __41__PKEditTableNoPassesView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained findAppsForWalletTapped];
}

- (void)layoutSubviews
{
  [(PKEditTableNoPassesView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&slice, 0, sizeof(slice));
  v22.origin.x = v3;
  v22.origin.y = v5;
  v22.size.width = v7;
  v22.size.height = v9;
  [(UILabel *)self->_titleLabel sizeThatFits:v7, v9];
  v12 = v11;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  CGRectDivide(v24, &slice, &v22, v12, CGRectMinYEdge);
  [(UILabel *)self->_titleLabel pkui_setFrame:0 animated:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  CGRectDivide(v22, &slice, &v22, 16.0, CGRectMinYEdge);
  [(UILabel *)self->_descriptionLabel sizeThatFits:v8 + -80.0, v22.size.height];
  v14 = v13;
  CGRectDivide(v22, &slice, &v22, v13, CGRectMinYEdge);
  [(UILabel *)self->_descriptionLabel pkui_setFrame:0 animated:40.0, slice.origin.y, v8 + -80.0, v14];
  CGRectDivide(v22, &slice, &v22, 16.0, CGRectMinYEdge);
  buttonScanCode = self->_buttonScanCode;
  if (buttonScanCode)
  {
    v16 = [(UIButton *)buttonScanCode titleLabel];
    [v16 sizeThatFits:{v8, v22.size.height}];
    v18 = v17;

    CGRectDivide(v22, &slice, &v22, v18, CGRectMinYEdge);
    [(UIButton *)self->_buttonScanCode frame];
    PKSizeAlignedInRect();
    [(UIButton *)self->_buttonScanCode setFrame:?];
    CGRectDivide(v22, &slice, &v22, 16.0, CGRectMinYEdge);
  }

  v19 = [(UIButton *)self->_buttonFindApps titleLabel];
  [v19 sizeThatFits:{v8, v22.size.height}];
  v21 = v20;

  CGRectDivide(v22, &slice, &v22, v21 + 5.0, CGRectMinYEdge);
  [(UIButton *)self->_buttonFindApps frame];
  PKSizeAlignedInRect();
  [(UIButton *)self->_buttonFindApps setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_titleLabel sizeThatFits:?];
  v7 = (v6 + 0.0) + 16;
  [(UILabel *)self->_descriptionLabel sizeThatFits:width + -80.0, height];
  v9 = (v8 + v7) + 16;
  buttonScanCode = self->_buttonScanCode;
  if (buttonScanCode)
  {
    v11 = [(UIButton *)buttonScanCode titleLabel];
    [v11 sizeThatFits:{width, height}];
    v13 = v12;

    v9 = (v13 + 5.0 + v9) + 16;
  }

  v14 = [(UIButton *)self->_buttonFindApps titleLabel];
  [v14 sizeThatFits:{width, height}];
  v16 = v15;

  v17 = fmin(height, (v16 + 5.0 + v9));
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)scanCodeButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v6;
    if (v5)
    {
      [v6 noPassesViewScanCodeButtonTapped:self];
      v4 = v6;
    }
  }
}

- (void)findAppsForWalletTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v6;
    if (v5)
    {
      [v6 noPassesViewFindAppsForWalletTapped:self];
      v4 = v6;
    }
  }
}

- (PKEditTableNoPassesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end