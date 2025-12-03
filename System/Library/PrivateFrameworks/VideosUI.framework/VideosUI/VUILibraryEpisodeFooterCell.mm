@interface VUILibraryEpisodeFooterCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUILibraryEpisodeFooterCell)initWithFrame:(CGRect)frame;
- (VUILibraryEpisodeFooterCellDelegate)delegate;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation VUILibraryEpisodeFooterCell

- (VUILibraryEpisodeFooterCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = VUILibraryEpisodeFooterCell;
  v3 = [(VUILibraryEpisodeFooterCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUISeparatorView);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v4;

    [(VUILibraryEpisodeFooterCell *)v3 addSubview:v3->_bottomSeparatorView];
    v6 = objc_alloc_init(VUISeparatorView);
    topSeparatorView = v3->_topSeparatorView;
    v3->_topSeparatorView = v6;

    [(VUILibraryEpisodeFooterCell *)v3 addSubview:v3->_topSeparatorView];
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUILibraryEpisodeFooterCell *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3 = MEMORY[0x1E69DD2E8];
  [(VUILibraryEpisodeFooterCell *)self bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v28)];
  v5 = v4;
  v7 = v6;
  topSeparatorView = self->_topSeparatorView;
  [(VUILibraryEpisodeFooterCell *)self bounds];
  [(VUIBaseView *)topSeparatorView sizeThatFits:CGRectGetWidth(v29) - (v5 + v7), 1.79769313e308];
  v10 = v9;
  v12 = v11;
  bottomSeparatorView = self->_bottomSeparatorView;
  [(VUILibraryEpisodeFooterCell *)self bounds];
  [(VUIBaseView *)bottomSeparatorView sizeThatFits:CGRectGetWidth(v30) - (v5 + v7), 1.79769313e308];
  v15 = v14;
  v17 = v16;
  textContentView = [(VUIButton *)self->_titleButton textContentView];
  [(VUILibraryEpisodeFooterCell *)self bounds];
  [textContentView sizeThatFits:{CGRectGetWidth(v31), 1.79769313e308}];
  v20 = v19;
  v22 = v21;

  [(VUISeparatorView *)self->_topSeparatorView setFrame:v5, 0.0, v10, v12];
  v23 = self->_bottomSeparatorView;
  [(VUILibraryEpisodeFooterCell *)self bounds];
  [(VUISeparatorView *)v23 setFrame:v5, CGRectGetMaxY(v32), v15, v17];
  titleButton = self->_titleButton;
  [(VUILibraryEpisodeFooterCell *)self bounds];
  v25 = CGRectGetMidX(v33) - v20 * 0.5;
  [(VUILibraryEpisodeFooterCell *)self bounds];
  v26 = CGRectGetMidY(v34) - v22 * 0.5;

  [(VUIButton *)titleButton setFrame:v25, v26, v20, v22];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(VUILibraryEpisodeFooterCell *)self traitCollection:fits.width];
  [VUIUtilities scaleContentSizeValue:v4 forTraitCollection:54.0];
  v6 = v5;

  v7 = v6 + 0.0;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:titleCopy])
  {
    objc_storeStrong(&self->_title, title);
    if (self->_title)
    {
      v6 = objc_alloc_init(VUITextLayout);
      vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
      [(VUITextLayout *)v6 setColor:vui_keyColor];

      [(VUITextLayout *)v6 setTextStyle:13];
      [(VUITextLayout *)v6 setMaximumContentSizeCategory:12];
      v8 = [VUIButton alloc];
      traitCollection = [(VUILibraryEpisodeFooterCell *)self traitCollection];
      v10 = -[VUIButton initWithType:interfaceStyle:](v8, "initWithType:interfaceStyle:", 8, [traitCollection userInterfaceStyle]);
      titleButton = self->_titleButton;
      self->_titleButton = v10;

      v12 = [VUILabel labelWithString:self->_title textLayout:v6 existingLabel:0];
      [(VUIButton *)self->_titleButton setTextContentView:v12];
      v13 = self->_titleButton;
      color = [(VUITextLayout *)v6 color];
      [(VUIButton *)v13 setTintColor:color];

      objc_initWeak(&location, self);
      v15 = self->_titleButton;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __40__VUILibraryEpisodeFooterCell_setTitle___block_invoke;
      v19 = &unk_1E872DE30;
      objc_copyWeak(&v20, &location);
      [(VUIButton *)v15 setSelectActionHandler:&v16];
      [(VUILibraryEpisodeFooterCell *)self addSubview:self->_titleButton, v16, v17, v18, v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

void __40__VUILibraryEpisodeFooterCell_setTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 titleButtonPressedForStoreId:WeakRetained[82]];
}

- (VUILibraryEpisodeFooterCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end