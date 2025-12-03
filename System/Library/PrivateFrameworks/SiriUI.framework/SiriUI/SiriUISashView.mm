@interface SiriUISashView
+ ($131113AABFBD927EF350151908AA1243)_textContainerStyleForSashItem:(SEL)item;
+ (id)_font;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUISashView)initWithFrame:(CGRect)frame;
- (UIButton)backNavigationButton;
- (void)_setupBackNavigationButton;
- (void)layoutSubviews;
- (void)setNavigating:(BOOL)navigating;
- (void)setSashItem:(id)item locale:(id)locale;
@end

@implementation SiriUISashView

- (SiriUISashView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = SiriUISashView;
  v3 = [(SiriUISashView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    contentView = v3->_contentView;
    v3->_contentView = v9;

    layer = [(SiriUISashView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    imageView = v3->_imageView;
    v3->_imageView = v12;

    v14 = [[SiriUITextContainerView alloc] initWithText:0];
    textContainerView = v3->_textContainerView;
    v3->_textContainerView = v14;

    v16 = v3->_textContainerView;
    _font = [objc_opt_class() _font];
    [(SiriUITextContainerView *)v16 setFont:_font];

    v18 = v3->_textContainerView;
    siriui_semiTransparentTextColor = [MEMORY[0x277D75348] siriui_semiTransparentTextColor];
    [(SiriUITextContainerView *)v18 setTextColor:siriui_semiTransparentTextColor];

    v20 = [MEMORY[0x277D75210] effectWithStyle:8];
    v21 = [MEMORY[0x277D75D00] effectForBlurEffect:v20 style:1];
    v22 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v21];
    vibrantTextBackgroundView = v3->_vibrantTextBackgroundView;
    v3->_vibrantTextBackgroundView = v22;

    contentView = [(UIVisualEffectView *)v3->_vibrantTextBackgroundView contentView];
    [contentView addSubview:v3->_textContainerView];

    [(UIView *)v3->_contentView addSubview:v3->_imageView];
    [(UIView *)v3->_contentView addSubview:v3->_vibrantTextBackgroundView];
    [(SiriUISashView *)v3 addSubview:v3->_contentView];
    if (SiriLanguageIsRTL())
    {
      v25 = v3->_contentView;
      CGAffineTransformMakeScale(&v29, -1.0, 1.0);
      [(UIView *)v25 setTransform:&v29];
      v26 = v3->_imageView;
      CGAffineTransformMakeScale(&v29, -1.0, 1.0);
      [(UIImageView *)v26 setTransform:&v29];
      v27 = v3->_textContainerView;
      CGAffineTransformMakeScale(&v29, -1.0, 1.0);
      [(SiriUITextContainerView *)v27 setTransform:&v29];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SiriUISashView;
  [(SiriUISashView *)&v29 layoutSubviews];
  [(SiriUISashView *)self bounds];
  v4 = v3;
  v6 = v5;
  v27 = v8;
  v28 = v7;
  v9 = 16.0;
  height = 20.0;
  image = [(SiriSharedUISashItem *)self->_sashItem image];
  if (image)
  {
    v30.origin.x = 16.0;
    v30.origin.y = 16.0;
    v30.size.width = 20.0;
    v30.size.height = 20.0;
    MaxX = CGRectGetMaxX(v30);
  }

  else
  {
    MaxX = 0.0;
  }

  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v28;
  v31.size.height = v27;
  v25 = v4;
  rect = CGRectGetWidth(v31) - MaxX;
  v32.origin.x = v4;
  v24 = v6;
  v32.origin.y = v6;
  v32.size.width = v28;
  v32.size.height = v27;
  v13 = CGRectGetHeight(v32) - 16.0;
  if (self->_requestsExtraPadding)
  {
    v14 = v13 - 16.0;
  }

  else
  {
    v14 = v13;
  }

  y = 16.0;
  width = 20.0;
  if (v14 > 20.0)
  {
    v33.origin.x = MaxX;
    v33.origin.y = 16.0;
    v33.size.width = rect;
    v33.size.height = v14;
    MidY = CGRectGetMidY(v33);
    v34.origin.x = 16.0;
    v34.origin.y = 16.0;
    v34.size.width = 20.0;
    v34.size.height = 20.0;
    y = MidY + CGRectGetHeight(v34) * -0.5;
  }

  [(UIVisualEffectView *)self->_vibrantButtonBackgroundView setHidden:[(SiriUISashView *)self isNavigating:0x4034000000000000]^ 1];
  [(UIVisualEffectView *)self->_vibrantButtonBackgroundView setFrame:16.0, 16.0, v23, v22];
  backNavigationButton = self->_backNavigationButton;
  [(UIVisualEffectView *)self->_vibrantButtonBackgroundView bounds];
  [(UIButton *)backNavigationButton setFrame:?];
  if ([(SiriUISashView *)self isNavigating])
  {
    v35.origin.x = 16.0;
    v35.origin.y = y;
    v35.size.width = 20.0;
    v35.size.height = 20.0;
    v36 = CGRectOffset(v35, 20.0 + 10.0, 0.0);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v36.origin.x = MaxX;
    v36.origin.y = 16.0;
    v36.size.width = rect;
    v36.size.height = v14;
    v37 = CGRectOffset(v36, 20.0 + 10.0, 0.0);
    MaxX = v37.origin.x;
    v9 = v37.origin.y;
    v20 = v37.size.width;
    v14 = v37.size.height;
  }

  else
  {
    x = 16.0;
    v20 = rect;
  }

  [(UIView *)self->_contentView setFrame:v25, v24, v28, v27];
  [(UIImageView *)self->_imageView setFrame:x, y, width, height];
  [(UIVisualEffectView *)self->_vibrantTextBackgroundView setFrame:MaxX, v9, v20, v14];
  textContainerView = self->_textContainerView;
  [(UIVisualEffectView *)self->_vibrantTextBackgroundView bounds];
  [(SiriUITextContainerView *)textContainerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  sashItem = self->_sashItem;
  v6 = 0.0;
  if (sashItem && ![(SiriSharedUISashItem *)sashItem isHidden:fits.width])
  {
    image = [(SiriSharedUISashItem *)self->_sashItem image];
    if (image)
    {
      v8 = 20.0 + 16.0;
    }

    else
    {
      v8 = 0.0;
    }

    [(SiriUITextContainerView *)self->_textContainerView sizeThatFits:width - v8, 1.79769313e308];
    v10 = 20.0 + 16.0;
    if (20.0 + 16.0 < v9)
    {
      v10 = v9;
    }

    if (self->_requestsExtraPadding)
    {
      v6 = v10 + 16.0;
    }

    else
    {
      v6 = v10;
    }
  }

  v11 = width;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setSashItem:(id)item locale:(id)locale
{
  itemCopy = item;
  if (![(SiriSharedUISashItem *)self->_sashItem isEqual:itemCopy])
  {
    objc_storeStrong(&self->_sashItem, item);
    sashItem = self->_sashItem;
    if (sashItem)
    {
      isHidden = [(SiriSharedUISashItem *)sashItem isHidden];
    }

    else
    {
      isHidden = 1;
    }

    imageView = self->_imageView;
    image = [itemCopy image];
    [(UIImageView *)imageView setImage:image];

    textContainerView = self->_textContainerView;
    title = [itemCopy title];
    [(SiriUITextContainerView *)textContainerView setText:title];

    v13 = self->_textContainerView;
    v14 = objc_opt_class();
    if (v14)
    {
      [v14 _textContainerStyleForSashItem:itemCopy];
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
    }

    [(SiriUITextContainerView *)v13 setTextContainerStyle:&v21];
    [(UIImageView *)self->_imageView setHidden:isHidden];
    [(SiriUITextContainerView *)self->_textContainerView setHidden:isHidden];
    backgroundColor = [itemCopy backgroundColor];

    if (backgroundColor)
    {
      contentView = self->_contentView;
      backgroundColor2 = [itemCopy backgroundColor];
      [(UIView *)contentView setBackgroundColor:backgroundColor2];
    }

    textColor = [itemCopy textColor];

    if (textColor)
    {
      v19 = self->_textContainerView;
      textColor2 = [itemCopy textColor];
      [(SiriUITextContainerView *)v19 setTextColor:textColor2];

      [(UIVisualEffectView *)self->_vibrantTextBackgroundView setEffect:0];
    }

    self->_requestsExtraPadding = [itemCopy requestsExtraPadding];
    [(SiriUISashView *)self setNeedsLayout];
  }
}

- (void)setNavigating:(BOOL)navigating
{
  if (self->_navigating != navigating)
  {
    self->_navigating = navigating;
    if (navigating)
    {
      [(SiriUISashView *)self _setupBackNavigationButton];
    }

    [(SiriUISashView *)self setNeedsLayout];
  }
}

- (UIButton)backNavigationButton
{
  backNavigationButton = self->_backNavigationButton;
  if (!backNavigationButton)
  {
    [(SiriUISashView *)self _setupBackNavigationButton];
    backNavigationButton = self->_backNavigationButton;
  }

  return backNavigationButton;
}

- (void)_setupBackNavigationButton
{
  if (!self->_backNavigationButton)
  {
    v15 = [MEMORY[0x277D755D0] configurationWithWeight:7];
    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.left.circle.fill"];
    v4 = [v3 imageWithConfiguration:v15];

    v5 = [MEMORY[0x277D75220] buttonWithType:0];
    backNavigationButton = self->_backNavigationButton;
    self->_backNavigationButton = v5;

    [(UIButton *)self->_backNavigationButton setBackgroundImage:v4 forState:0];
    [(UIButton *)self->_backNavigationButton setBackgroundImage:v4 forState:1];
    v7 = self->_backNavigationButton;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIButton *)v7 setTintColor:systemGrayColor];

    v9 = self->_backNavigationButton;
    UIEdgeInsetsMakeWithEdges();
    [(UIButton *)v9 _setTouchInsets:?];
    v10 = [MEMORY[0x277D75210] effectWithStyle:8];
    v11 = [MEMORY[0x277D75D00] effectForBlurEffect:v10 style:4];
    v12 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v11];
    vibrantButtonBackgroundView = self->_vibrantButtonBackgroundView;
    self->_vibrantButtonBackgroundView = v12;

    contentView = [(UIVisualEffectView *)self->_vibrantButtonBackgroundView contentView];
    [contentView addSubview:self->_backNavigationButton];

    [(UIView *)self->_contentView addSubview:self->_vibrantButtonBackgroundView];
  }
}

+ (id)_font
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277D74430];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v17[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v4 = *MEMORY[0x277D769D0];
  v5 = *MEMORY[0x277D74380];
  v14[0] = *MEMORY[0x277D74378];
  v14[1] = v5;
  v15[0] = v4;
  v15[1] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v6];
  v8 = MEMORY[0x277D74300];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:15.0];
  v11 = round(v10);

  v12 = [v8 fontWithDescriptor:v7 size:{fmax(v11, 15.0)}];

  return v12;
}

+ ($131113AABFBD927EF350151908AA1243)_textContainerStyleForSashItem:(SEL)item
{
  *&retstr->var0 = unk_2694DDDB8;
  *&retstr->var2 = unk_2694DDDC8;
  *&retstr->var3.left = unk_2694DDDD8;
  retstr->var3.right = 16.0;
  image = [a4 image];

  if (image)
  {
    result = SiriLanguageIsRTL();
    v7 = 32;
    if (result)
    {
      v7 = 48;
    }

    *(&retstr->var0 + v7) = *(&retstr->var0 + v7) + -8.0;
  }

  return result;
}

@end