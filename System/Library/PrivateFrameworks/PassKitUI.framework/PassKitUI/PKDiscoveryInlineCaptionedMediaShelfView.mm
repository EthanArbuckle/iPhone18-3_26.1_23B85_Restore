@interface PKDiscoveryInlineCaptionedMediaShelfView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoveryInlineCaptionedMediaShelfView)initWithShelf:(id)shelf mediaView:(id)view;
- (void)layoutSubviews;
- (void)setContentInsets:(UIEdgeInsets)insets;
@end

@implementation PKDiscoveryInlineCaptionedMediaShelfView

- (PKDiscoveryInlineCaptionedMediaShelfView)initWithShelf:(id)shelf mediaView:(id)view
{
  shelfCopy = shelf;
  viewCopy = view;
  v31.receiver = self;
  v31.super_class = PKDiscoveryInlineCaptionedMediaShelfView;
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v13 = [(PKDiscoveryShelfView *)&v31 initWithFrame:*MEMORY[0x1E695F058], v10, v11, v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_shelf, shelf);
    v14->_isInline = [(PKDiscoveryInlineMediaShelf *)v14->_shelf displayType]== 1;
    media = [shelfCopy media];
    media = v14->_media;
    v14->_media = media;

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    mediaContainerView = v14->_mediaContainerView;
    v14->_mediaContainerView = v17;

    [(UIView *)v14->_mediaContainerView setClipsToBounds:1];
    [(PKDiscoveryInlineCaptionedMediaShelfView *)v14 addSubview:v14->_mediaContainerView];
    if (v14->_isInline)
    {
      [(UIView *)v14->_mediaContainerView _setContinuousCornerRadius:8.0];
    }

    objc_storeStrong(&v14->_mediaView, view);
    v19 = MEMORY[0x1E69DC888];
    backgroundColor = [(PKDiscoveryMedia *)v14->_media backgroundColor];
    v21 = [v19 pkui_colorWithPKColor:backgroundColor];
    v22 = v21;
    if (v21)
    {
      secondarySystemBackgroundColor = v21;
    }

    else
    {
      secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    }

    v24 = secondarySystemBackgroundColor;

    [(UIView *)v14->_mediaView setBackgroundColor:v24];
    [(UIView *)v14->_mediaContainerView addSubview:v14->_mediaView];
    [(UIView *)v14->_mediaView setAccessibilityIgnoresInvertColors:1];
    localizedCaption = [shelfCopy localizedCaption];
    if (localizedCaption)
    {
      v26 = [[PKDiscoveryInlineMediaCaptionView alloc] initWithCaptionText:localizedCaption];
      captionView = v14->_captionView;
      v14->_captionView = v26;
    }

    [(UIView *)v14->_mediaContainerView addSubview:v14->_captionView];
    v28 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    [v28 lineHeight];
    v14->_leadingSpace = v29;
  }

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (self->_isInline)
  {
    [(PKDiscoveryShelfView *)self contentInsets:fits.width];
    width = width - (v5 + v6);
  }

  v7 = *MEMORY[0x1E695F060];
  media = [(PKDiscoveryInlineMediaShelf *)self->_shelf media];
  [media width];
  v10 = v9;
  [media height];
  if (v11 > 0.0 && v10 > 0.0)
  {
    v7 = width;
  }

  captionView = self->_captionView;
  if (captionView)
  {
    [(PKDiscoveryInlineMediaCaptionView *)captionView sizeThatFits:v7, 1.79769313e308];
  }

  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  [v13 lineHeight];

  PKSizeRoundToPixel();
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v9.receiver = self;
  v9.super_class = PKDiscoveryInlineCaptionedMediaShelfView;
  [(PKDiscoveryShelfView *)&v9 setContentInsets:?];
  captionView = self->_captionView;
  if (captionView)
  {
    [(PKDiscoveryShelfView *)captionView setContentInsets:top, left, bottom, right];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = PKDiscoveryInlineCaptionedMediaShelfView;
  [(PKDiscoveryInlineCaptionedMediaShelfView *)&v21 layoutSubviews];
  [(PKDiscoveryInlineCaptionedMediaShelfView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKDiscoveryShelfView *)self contentInsets];
  v8 = v7;
  v10 = v9;
  media = [(PKDiscoveryInlineMediaShelf *)self->_shelf media];
  v12 = media;
  if (self->_isInline)
  {
    v6 = v6 - (v8 + v10);
    v13 = v4 + v8;
  }

  else
  {
    v13 = v4;
  }

  [media width];
  v15 = v14;
  [v12 height];
  v17 = 0.0;
  v18 = 0.0;
  if (v16 > 0.0 && v15 > 0.0)
  {
    v18 = v16 * (v6 / v15);
  }

  captionView = self->_captionView;
  if (captionView)
  {
    [(PKDiscoveryInlineMediaCaptionView *)captionView sizeThatFits:v6, 1.79769313e308];
    v17 = v20;
  }

  [(UIView *)self->_mediaContainerView setFrame:v13, self->_leadingSpace, v6, v18 + v17];
  [(UIView *)self->_mediaView setFrame:0.0, 0.0, v6, v18];
  if (self->_captionView)
  {
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v6;
    v22.size.height = v18;
    [(PKDiscoveryInlineMediaCaptionView *)self->_captionView setFrame:0.0, CGRectGetMaxY(v22), v6, v17];
  }
}

@end