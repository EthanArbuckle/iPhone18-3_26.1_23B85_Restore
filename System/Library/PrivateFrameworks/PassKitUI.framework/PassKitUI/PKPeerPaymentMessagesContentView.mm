@interface PKPeerPaymentMessagesContentView
- (PKPeerPaymentMessagesContentView)initWithFrame:(CGRect)frame;
- (UIActivityIndicatorView)activityIndicator;
- (UIButton)button;
- (UIEdgeInsets)contentInset;
- (UIImageView)imageView;
- (UILabel)label;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentMessagesContentView

- (PKPeerPaymentMessagesContentView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesContentView;
  v3 = [(PKPeerPaymentMessagesContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PKPeerPaymentTheme backgroundColor];
    [(PKPeerPaymentMessagesContentView *)v3 setBackgroundColor:v4];

    v3->_contentAlignment = *MEMORY[0x1E69BB7F8];
    v3->_verticalPadding = 10.0;
    pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIView *)v3 pkui_userInterfaceIdiomSupportsLargeLayouts];
    v6 = 44.0;
    v3->_contentInset.top = 8.0;
    if (!pkui_userInterfaceIdiomSupportsLargeLayouts)
    {
      v6 = 24.0;
    }

    v3->_contentInset.left = v6;
    v3->_contentInset.bottom = 8.0;
    v3->_contentInset.right = v6;
  }

  return v3;
}

- (void)layoutSubviews
{
  v70 = *MEMORY[0x1E69E9840];
  subviews = [(PKPeerPaymentMessagesContentView *)self subviews];
  v4 = [subviews count];

  if (v4)
  {
    [(PKPeerPaymentMessagesContentView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PKPeerPaymentMessagesContentView *)self safeAreaInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    ignoreTopSafeArea = self->_ignoreTopSafeArea;
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v20 = 0.0;
      if (!ignoreTopSafeArea)
      {
        v20 = v12;
      }

      v6 = v6 + v20;
      v8 = v8 - (v14 + v18);
      v10 = v10 - (v16 + v20);
    }

    top = self->_contentInset.top;
    left = self->_contentInset.left;
    right = self->_contentInset.right;
    v24 = v10 - (top + self->_contentInset.bottom);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    subviews2 = [(PKPeerPaymentMessagesContentView *)self subviews];
    v26 = [subviews2 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = v8 - (left + right);
      v29 = v6 + top;
      v30 = *v64;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v64 != v30)
          {
            objc_enumerationMutation(subviews2);
          }

          v32 = *(*(&v63 + 1) + 8 * i);
          [v32 sizeThatFits:{v28, v24}];
          v34 = v33;
          if ([v32 isHidden])
          {
            v34 = 0.0 - self->_verticalPadding;
          }

          if ((self->_contentAlignment.verticalAlignment & 0xFFFFFFFD) == 1)
          {
            verticalAlignment = 0;
          }

          else
          {
            verticalAlignment = self->_contentAlignment.verticalAlignment;
          }

          PKSizeAlignedInRect();
          [v32 setFrame:?];
          v36 = v34 + self->_verticalPadding;
          if (!verticalAlignment)
          {
            v29 = v29 + v36;
          }

          v24 = v24 - v36;
        }

        v27 = [subviews2 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v27);
    }

    v37 = self->_contentAlignment.verticalAlignment;
    if (v37 == 3)
    {
      [(PKPeerPaymentMessagesContentView *)self bounds];
      v45 = v44;
      subviews3 = [(PKPeerPaymentMessagesContentView *)self subviews];
      v47 = [subviews3 count];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      subviews4 = [(PKPeerPaymentMessagesContentView *)self subviews];
      v48 = [subviews4 countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = v45 / v47;
        v51 = *v56;
        v52 = 0.0;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v56 != v51)
            {
              objc_enumerationMutation(subviews4);
            }

            v54 = *(*(&v55 + 1) + 8 * j);
            if (([v54 isHidden] & 1) == 0)
            {
              [v54 frame];
              [v54 setFrame:?];
              v52 = v50 + v52;
            }
          }

          v49 = [subviews4 countByEnumeratingWithState:&v55 objects:v67 count:16];
        }

        while (v49);
      }
    }

    else
    {
      if (v37 != 1)
      {
        return;
      }

      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      subviews4 = [(PKPeerPaymentMessagesContentView *)self subviews];
      v39 = [subviews4 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v60;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v60 != v41)
            {
              objc_enumerationMutation(subviews4);
            }

            v43 = *(*(&v59 + 1) + 8 * k);
            if (([v43 isHidden] & 1) == 0)
            {
              [v43 frame];
              [v43 setFrame:?];
            }
          }

          v40 = [subviews4 countByEnumeratingWithState:&v59 objects:v68 count:16];
        }

        while (v40);
      }
    }
  }
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PKPeerPaymentMessagesContentView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_label;
    self->_label = v5;

    [(UILabel *)self->_label setNumberOfLines:0];
    v7 = self->_label;
    v8 = +[PKPeerPaymentTheme primaryTextColor];
    [(UILabel *)v7 setTextColor:v8];

    [(UILabel *)self->_label setTextAlignment:1];
    v9 = self->_label;
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v9 setFont:v10];

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    v6 = self->_activityIndicator;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v6 setColor:whiteColor];

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_activityIndicator];
    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (UIButton)button
{
  button = self->_button;
  if (!button)
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    [_glassButtonConfiguration setButtonSize:3];
    [_glassButtonConfiguration setCornerStyle:4];
    v5 = +[PKPeerPaymentTheme primaryTextColor];
    [_glassButtonConfiguration setBaseForegroundColor:v5];

    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:_glassButtonConfiguration primaryAction:0];
    v7 = self->_button;
    self->_button = v6;

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_button];
    button = self->_button;
  }

  return button;
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PKPeerPaymentMessagesContentView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_imageView;
    self->_imageView = v5;

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end