@interface VUILibraryAlertView
- (VUILibraryAlertView)initWithFrame:(CGRect)frame;
- (void)configureSubtitleTextLayout:(id)layout;
- (void)configureTitleTextLayout:(id)layout;
- (void)layoutSubviews;
@end

@implementation VUILibraryAlertView

- (VUILibraryAlertView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = VUILibraryAlertView;
  v3 = [(VUILibraryAlertView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v3->_scrollView;
    v3->_scrollView = v4;

    [(UIScrollView *)v3->_scrollView setAutoresizingMask:18];
    [(UIScrollView *)v3->_scrollView setDirectionalLockEnabled:1];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(VUILibraryAlertView *)v3 addSubview:v3->_scrollView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v3->_containerView;
    v3->_containerView = v6;

    [(UIScrollView *)v3->_scrollView addSubview:v3->_containerView];
    v8 = objc_alloc_init(VUITextLayout);
    [(VUILibraryAlertView *)v3 configureTitleTextLayout:v8];
    v9 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v8 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UIView *)v3->_containerView addSubview:v3->_titleLabel];
    v11 = objc_alloc_init(VUITextLayout);
    [(VUILibraryAlertView *)v3 configureSubtitleTextLayout:v11];
    v12 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v11 existingLabel:0];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v12;

    [(UIView *)v3->_containerView addSubview:v3->_subtitleLabel];
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUILibraryAlertView *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];

    [(UIScrollView *)v3->_scrollView setContentInsetAdjustmentBehavior:3];
  }

  return v3;
}

- (void)configureTitleTextLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy setTextStyle:2];
  vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [layoutCopy setColor:vui_primaryTextColor];

  [layoutCopy setFontWeight:10];
  [layoutCopy setAlignment:1];
  [layoutCopy setNumberOfLines:0];
}

- (void)configureSubtitleTextLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy setTextStyle:14];
  vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [layoutCopy setColor:vui_secondaryTextColor];

  [layoutCopy setAlignment:1];
  [layoutCopy setNumberOfLines:0];
}

- (void)layoutSubviews
{
  [(VUILibraryAlertView *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  scrollView = self->_scrollView;
  [(VUILibraryAlertView *)self bounds];
  [(UIScrollView *)scrollView setFrame:?];
  [(VUILibraryAlertView *)self bounds];
  Width = CGRectGetWidth(v36);
  [MEMORY[0x1E69DD2E8] vui_padding];
  v14 = v13;
  v16 = Width - (v13 + v15);
  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    if ([(VUILibraryAlertView *)self vuiIsRTL])
    {
      v17 = v10;
    }

    else
    {
      v17 = v6;
    }

    v16 = v16 - v17;
  }

  [(VUILibraryAlertView *)self bounds];
  v18 = CGRectGetHeight(v37) - v4 - v8;
  [(VUILabel *)self->_titleLabel sizeThatFits:v16, 1.79769313e308];
  v20 = v19;
  [(VUILabel *)self->_subtitleLabel sizeThatFits:v16, 1.79769313e308];
  v22 = v21;
  [(VUILabel *)self->_subtitleLabel topMarginToLabel:self->_titleLabel withBaselineMargin:35.0];
  v24 = v23;
  v25 = v20 + v22 + v23;
  v26 = v25 > v18;
  if (v25 <= v18)
  {
    v27 = (v18 - v25) * 0.5;
  }

  else
  {
    v27 = 0.0;
  }

  [(UIScrollView *)self->_scrollView setScrollEnabled:v26];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:[(UIScrollView *)self->_scrollView isScrollEnabled]];
  v28 = self->_scrollView;
  [(VUILibraryAlertView *)self bounds];
  [(UIScrollView *)v28 setContentSize:v16, fmax(v25, CGRectGetHeight(v38))];
  [(UIView *)self->_containerView setFrame:v14, v27, v16, v20 + v22 + v24];
  [(VUILabel *)self->_titleLabel setFrame:0.0, 0.0, v16, v20];
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    text = [(VUILabel *)subtitleLabel text];
    if (text)
    {
      v31 = text;
      text2 = [(VUILabel *)self->_subtitleLabel text];
      v33 = [text2 isEqualToString:&stru_1F5DB25C0];

      if ((v33 & 1) == 0)
      {
        v34 = self->_subtitleLabel;

        [(VUILabel *)v34 setFrame:0.0, v20 + v24, v16, v22];
      }
    }
  }
}

@end