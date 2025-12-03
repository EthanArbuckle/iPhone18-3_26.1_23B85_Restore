@interface _TVAlertView
+ (id)_newLabelWithText:(id)text;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVAlertView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAdditionalLabels:(id)labels;
- (void)setImageProxy:(id)proxy;
- (void)setImageSize:(CGSize)size;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation _TVAlertView

- (_TVAlertView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = _TVAlertView;
  v3 = [(_TVAlertView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_TVImageView);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    v6 = v3->_imageView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(_TVImageView *)v6 setBackgroundColor:v7];

    [(_TVImageView *)v3->_imageView setClipsToBounds:1];
    [(_TVImageView *)v3->_imageView _setContinuousCornerRadius:5.0];
    [(_TVAlertView *)v3 addSubview:v3->_imageView];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v8;

    v10 = v3->_titleLabel;
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v10 setFont:v11];

    v12 = v3->_titleLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v12 setTextColor:blackColor];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(_TVAlertView *)v3 addSubview:v3->_titleLabel];
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v14;

    v16 = v3->_messageLabel;
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v16 setFont:v17];

    v18 = v3->_messageLabel;
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v18 setTextColor:blackColor2];

    [(UILabel *)v3->_messageLabel setTextAlignment:1];
    [(UILabel *)v3->_messageLabel setNumberOfLines:0];
    [(_TVAlertView *)v3 addSubview:v3->_messageLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = _TVAlertView;
  [(_TVAlertView *)&v19 layoutSubviews];
  if (self->_imageProxy)
  {
    [(_TVAlertView *)self bounds];
    UIRectCenteredXInRect();
    [(_TVImageView *)self->_imageView setFrame:?];
    [(_TVImageView *)self->_imageView setHidden:0];
    [(_TVImageView *)self->_imageView frame];
    CGRectGetMaxY(v22);
  }

  else
  {
    [(_TVImageView *)self->_imageView setHidden:1];
  }

  text = [(UILabel *)self->_titleLabel text];
  v4 = [text length];

  titleLabel = self->_titleLabel;
  if (v4)
  {
    [(UILabel *)titleLabel tv_heightToFirstBaseline];
    [(UILabel *)self->_titleLabel tv_scaledValueForValue:36.0];
    [(UILabel *)self->_titleLabel frame];
    [(_TVAlertView *)self bounds];
    UIRectCenteredXInRect();
    [(UILabel *)self->_titleLabel setFrame:?];
    [(UILabel *)self->_titleLabel setHidden:0];
    [(UILabel *)self->_titleLabel frame];
    CGRectGetMaxY(v23);
  }

  else
  {
    [(UILabel *)titleLabel setHidden:1];
  }

  text2 = [(UILabel *)self->_messageLabel text];
  v7 = [text2 length];

  messageLabel = self->_messageLabel;
  if (v7)
  {
    [(UILabel *)messageLabel tv_heightToFirstBaseline];
    [(UILabel *)self->_messageLabel tv_scaledValueForValue:25.0];
    [(UILabel *)self->_messageLabel frame];
    [(_TVAlertView *)self bounds];
    UIRectCenteredXInRect();
    [(UILabel *)self->_messageLabel setFrame:?];
    [(UILabel *)self->_messageLabel setHidden:0];
    [(UILabel *)self->_messageLabel frame];
    CGRectGetMaxY(v24);
  }

  else
  {
    [(UILabel *)messageLabel setHidden:1];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_additionalLabelViews;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        [v14 tv_scaledValueForValue:{25.0, v15}];
        [v14 tv_heightToFirstBaseline];
        [v14 frame];
        [(_TVAlertView *)self bounds];
        UIRectCenteredXInRect();
        [v14 setFrame:?];
        [v14 frame];
        CGRectGetMaxY(v25);
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v33 = *MEMORY[0x277D85DE8];
  if (self->_imageProxy)
  {
    v5 = self->_imageSize.height + 24.0;
  }

  else
  {
    v5 = 0.0;
  }

  if ([(NSString *)self->_title length])
  {
    [(UILabel *)self->_titleLabel tv_heightToFirstBaseline];
    v7 = v6;
    [(UILabel *)self->_titleLabel tv_scaledValueForValue:36.0];
    v9 = v8 - v7;
    if (!self->_imageProxy)
    {
      v9 = 24.0;
    }

    v10 = v5 + v9;
    [(UILabel *)self->_titleLabel frame];
    v5 = v10 + CGRectGetHeight(v35);
  }

  if ([(NSString *)self->_message length])
  {
    [(UILabel *)self->_messageLabel tv_heightToFirstBaseline];
    v12 = v11;
    [(UILabel *)self->_messageLabel tv_scaledValueForValue:25.0];
    if (self->_imageProxy || self->_titleLabel)
    {
      v14 = v13 - v12;
    }

    else
    {
      v14 = 24.0;
    }

    v15 = v5 + v14;
    [(UILabel *)self->_messageLabel frame];
    v5 = v15 + CGRectGetHeight(v36);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = self->_additionalLabelViews;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        [v21 tv_scaledValueForValue:{25.0, v28}];
        v23 = v22;
        [v21 tv_heightToFirstBaseline];
        v25 = v5 + v23 - v24;
        [v21 frame];
        v5 = v25 + CGRectGetHeight(v37);
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  v26 = v5 + 24.0;
  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)setAdditionalLabels:(id)labels
{
  v24 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  if (![(NSArray *)self->_additionalLabels isEqualToArray:labelsCopy])
  {
    v5 = [labelsCopy copy];
    additionalLabels = self->_additionalLabels;
    self->_additionalLabels = v5;

    [(NSArray *)self->_additionalLabelViews makeObjectsPerformSelector:sel_removeFromSuperview];
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_additionalLabels, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_additionalLabels;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      v12 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = [objc_opt_class() _newLabelWithText:{*(*(&v19 + 1) + 8 * v14), v19}];
          [v15 sizeThatFits:{230.0, 0.0}];
          [v15 setFrame:{v12, v13, 230.0, v16}];
          [(_TVAlertView *)self addSubview:v15];
          [v7 addObject:v15];

          ++v14;
        }

        while (v10 != v14);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v17 = [v7 copy];
    additionalLabelViews = self->_additionalLabelViews;
    self->_additionalLabelViews = v17;
  }
}

- (void)setImageProxy:(id)proxy
{
  proxyCopy = proxy;
  if (self->_imageProxy != proxyCopy)
  {
    v6 = proxyCopy;
    objc_storeStrong(&self->_imageProxy, proxy);
    [(_TVImageView *)self->_imageView setImageProxy:self->_imageProxy];
    [(_TVAlertView *)self setNeedsLayout];
    proxyCopy = v6;
  }
}

- (void)setImageSize:(CGSize)size
{
  if (self->_imageSize.width != size.width || self->_imageSize.height != size.height)
  {
    self->_imageSize = size;
    [(_TVAlertView *)self setNeedsLayout];
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [messageCopy copy];
    message = self->_message;
    self->_message = v4;

    [(UILabel *)self->_messageLabel setText:self->_message];
    [(UILabel *)self->_messageLabel sizeThatFits:230.0, 0.0];
    [(UILabel *)self->_messageLabel setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 230.0, v6];
    [(_TVAlertView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(UILabel *)self->_titleLabel sizeThatFits:230.0, 0.0];
    [(UILabel *)self->_titleLabel setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 230.0, v6];
    [(_TVAlertView *)self setNeedsLayout];
  }
}

+ (id)_newLabelWithText:(id)text
{
  v3 = MEMORY[0x277D756B8];
  textCopy = text;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [v5 setFont:v6];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v5 setTextColor:systemGrayColor];

  [v5 setTextAlignment:1];
  [v5 setText:textCopy];

  [v5 setNumberOfLines:0];
  return v5;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end