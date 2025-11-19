@interface VUIDownloadShowTableHeaderView
- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIDownloadShowTableHeaderView)initWithReuseIdentifier:(id)a3;
- (id)_buttonWithString:(id)a3 existingButton:(id)a4;
- (void)_selectButtonAction:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setButtonTitle:(id)a3;
- (void)setHeaderTitle:(id)a3;
@end

@implementation VUIDownloadShowTableHeaderView

- (VUIDownloadShowTableHeaderView)initWithReuseIdentifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = VUIDownloadShowTableHeaderView;
  v3 = [(VUIDownloadShowTableHeaderView *)&v11 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(VUIDownloadShowTableHeaderView *)v3 contentView];
    v6 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [v5 setBackgroundColor:v6];

    v7 = objc_alloc_init(VUISeparatorView);
    separatorView = v4->_separatorView;
    v4->_separatorView = v7;

    v9 = [(VUIDownloadShowTableHeaderView *)v4 contentView];
    [v9 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUIDownloadShowTableHeaderView;
  [(VUIDownloadShowTableHeaderView *)&v3 prepareForReuse];
  [(VUIDownloadShowTableHeaderView *)self setHeaderTitle:0];
  [(VUIDownloadShowTableHeaderView *)self setButtonTitle:0];
  [(VUIDownloadShowTableHeaderView *)self setTitleLabel:0];
  [(VUIDownloadShowTableHeaderView *)self setHeaderButton:0];
}

- (void)setHeaderTitle:(id)a3
{
  v5 = a3;
  if (self->_headerTitle != v5)
  {
    v12 = v5;
    [(VUILabel *)self->_titleLabel removeFromSuperview];
    objc_storeStrong(&self->_headerTitle, a3);
    if (self->_headerTitle)
    {
      v6 = objc_alloc_init(VUITextLayout);
      [(VUITextLayout *)v6 setTextStyle:21];
      [(VUITextLayout *)v6 setFontWeight:0];
      [(VUITextLayout *)v6 setNumberOfLines:1];
      v7 = [MEMORY[0x1E69DC888] systemGrayColor];
      [(VUITextLayout *)v6 setColor:v7];

      if (self->_headerTitle)
      {
        headerTitle = self->_headerTitle;
      }

      else
      {
        headerTitle = &stru_1F5DB25C0;
      }

      v9 = [VUILabel labelWithString:headerTitle textLayout:v6 existingLabel:self->_titleLabel];
      titleLabel = self->_titleLabel;
      self->_titleLabel = v9;

      v11 = [(VUIDownloadShowTableHeaderView *)self contentView];
      [v11 addSubview:self->_titleLabel];
    }

    [(VUIDownloadShowTableHeaderView *)self setNeedsLayout];
    v5 = v12;
  }
}

- (void)setButtonTitle:(id)a3
{
  v5 = a3;
  if (self->_buttonTitle != v5)
  {
    v12 = v5;
    [(UIButton *)self->_headerButton removeFromSuperview];
    objc_storeStrong(&self->_buttonTitle, a3);
    buttonTitle = self->_buttonTitle;
    if (buttonTitle)
    {
      v7 = [(VUIDownloadShowTableHeaderView *)self headerButton];
      v8 = [(VUIDownloadShowTableHeaderView *)self _buttonWithString:buttonTitle existingButton:v7];

      [(UIButton *)v8 addTarget:self action:sel__selectButtonAction_ forControlEvents:64];
      headerButton = self->_headerButton;
      self->_headerButton = v8;
      v10 = v8;

      v11 = [(VUIDownloadShowTableHeaderView *)self contentView];
      [v11 addSubview:self->_headerButton];
    }

    [(VUIDownloadShowTableHeaderView *)self setNeedsLayout];
    v5 = v12;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIDownloadShowTableHeaderView *)self _layoutWithSize:1 metricsOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUIDownloadShowTableHeaderView;
  [(VUIDownloadShowTableHeaderView *)&v4 layoutSubviews];
  [(VUIDownloadShowTableHeaderView *)self bounds];
  Width = CGRectGetWidth(v5);
  [(VUIDownloadShowTableHeaderView *)self bounds];
  [(VUIDownloadShowTableHeaderView *)self _layoutWithSize:0 metricsOnly:Width, CGRectGetHeight(v6)];
}

- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:25.0];
  v33 = v8;
  [(VUILabel *)self->_titleLabel sizeThatFits:width, height];
  v10 = v9;
  v12 = v11;
  [(UIButton *)self->_headerButton sizeThatFits:width, height];
  v14 = v13;
  v16 = v15;
  [(VUILabel *)self->_titleLabel bottomMarginWithBaselineMargin:10.0];
  v32 = v17;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:width];
  if (!v4)
  {
    v20 = v18;
    v21 = v19;
    [(VUILabel *)self->_titleLabel setFrame:v18, v33, v10, v12];
    [(VUIDownloadShowTableHeaderView *)self bounds];
    [(UIButton *)self->_headerButton setFrame:width - (v14 + v21), CGRectGetMidY(v35) + height * -0.5, v14, v16];
    separatorView = self->_separatorView;
    v23 = [(VUIDownloadShowTableHeaderView *)self contentView];
    [v23 bounds];
    [(VUIBaseView *)separatorView sizeThatFits:CGRectGetWidth(v36) - v20, 1.79769313e308];
    v25 = v24;
    v27 = v26;

    v28 = self->_separatorView;
    v29 = [(VUIDownloadShowTableHeaderView *)self contentView];
    [v29 bounds];
    [(VUISeparatorView *)v28 setFrame:v20, CGRectGetHeight(v37) - v27, v25, v27];
  }

  v30 = v33 + 0.0 + v12 + v32;
  v31 = width;
  result.height = v30;
  result.width = v31;
  return result;
}

- (id)_buttonWithString:(id)a3 existingButton:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
    }

    v8 = v7;
    v9 = [MEMORY[0x1E69DC888] vui_keyColor];
    [v8 setTitleColor:v9 forState:0];

    v10 = [v8 titleLabel];
    v11 = [MEMORY[0x1E69DB878] vui_fontFromTextStyle:13 fontWeight:0 fontSize:0 fontWidth:0 symbolicTraits:0.0];
    [v10 setFont:v11];

    v12 = [v8 titleLabel];
    [v12 setNumberOfLines:1];

    v13 = [v8 titleLabel];
    [v13 setAdjustsFontForContentSizeCategory:1];

    [v8 setTitle:v5 forState:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_selectButtonAction:(id)a3
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    selectionHandler[2](selectionHandler, a3);
  }
}

@end