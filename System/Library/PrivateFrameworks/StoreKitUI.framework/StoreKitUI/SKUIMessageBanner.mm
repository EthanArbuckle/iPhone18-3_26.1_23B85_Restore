@interface SKUIMessageBanner
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIMessageBanner)initWithFrame:(CGRect)frame;
- (SKUIMessageBannerDelegate)delegate;
- (void)_buttonAction:(id)action;
- (void)_clearButtonAction:(id)action;
- (void)layoutSubviews;
- (void)setMessage:(id)message;
- (void)setShowsClearButton:(BOOL)button;
@end

@implementation SKUIMessageBanner

- (SKUIMessageBanner)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMessageBanner initWithFrame:];
  }

  v19.receiver = self;
  v19.super_class = SKUIMessageBanner;
  height = [(SKUIMessageBanner *)&v19 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = height->_label;
    height->_label = v9;

    [(UILabel *)height->_label setNumberOfLines:0];
    [(SKUIMessageBanner *)height addSubview:height->_label];
    v11 = [MEMORY[0x277D75220] buttonWithType:1];
    button = height->_button;
    height->_button = v11;

    [(UIButton *)height->_button addTarget:height action:sel__buttonAction_ forControlEvents:64];
    [(SKUIMessageBanner *)height addSubview:height->_button];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = height->_borderView;
    height->_borderView = v13;

    v15 = height->_borderView;
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
    [(UIView *)v15 setBackgroundColor:v16];

    [(SKUIMessageBanner *)height addSubview:height->_borderView];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIMessageBanner *)height setBackgroundColor:whiteColor];
  }

  return height;
}

- (void)setShowsClearButton:(BOOL)button
{
  if ([(SKUIMessageBanner *)self showsClearButton]!= button)
  {
    if (button)
    {
      v5 = objc_alloc_init(SKUIMessageBannerCloseButton);
      clearButton = self->_clearButton;
      self->_clearButton = &v5->super;

      [(UIButton *)self->_clearButton addTarget:self action:sel__clearButtonAction_ forControlEvents:64];
      [(UIButton *)self->_clearButton setAdjustsImageWhenHighlighted:0];
      v7 = self->_clearButton;
      v8 = MEMORY[0x277D755B8];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v8 imageNamed:@"BannerCloseButton" inBundle:v9];
      [(UIButton *)v7 setImage:v10 forState:0];

      LODWORD(v11) = -1.0;
      [(UIButton *)self->_clearButton setCharge:v11];
      [(SKUIMessageBanner *)self addSubview:self->_clearButton];

      [(SKUIMessageBanner *)self setNeedsLayout];
    }

    else
    {
      [(UIButton *)self->_clearButton removeFromSuperview];
      v12 = self->_clearButton;
      self->_clearButton = 0;
    }
  }
}

- (void)setMessage:(id)message
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D74240];
  messageCopy = message;
  v6 = objc_alloc_init(v4);
  [v6 setAlignment:1];
  [v6 setLineBreakMode:4];
  v12[0] = *MEMORY[0x277D740A8];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v13[0] = v7;
  v12[1] = *MEMORY[0x277D740C0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v12[2] = *MEMORY[0x277D74118];
  v13[1] = blackColor;
  v13[2] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  label = self->_label;
  v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:messageCopy attributes:v9];

  [(UILabel *)label setAttributedText:v11];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = SKUIMessageBanner;
  [(SKUIMessageBanner *)&v33 layoutSubviews];
  [(SKUIMessageBanner *)self bounds];
  MaxX = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_button setFrame:?];
  borderView = self->_borderView;
  v34.origin.x = MaxX;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  MaxY = CGRectGetMaxY(v34);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v15 = MaxY - 1.0 / v14;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  [(UIView *)borderView setFrame:v6, v15, v8, 1.0 / v17];

  clearButton = self->_clearButton;
  if (clearButton)
  {
    [(UIButton *)clearButton sizeToFit];
    [(SKUIMessageBanner *)self bringSubviewToFront:self->_clearButton];
    [(UIButton *)self->_clearButton frame];
    v20 = v19;
    v22 = v21;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v25 = 10.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v25 = 20.0;
    }

    v26 = MaxX + v25;
    v27 = (v10 - v22) * 0.5;
    v28 = floorf(v27);
    [(UIButton *)self->_clearButton setFrame:v26, v28, v20, v22];
    v35.origin.x = v26;
    v35.origin.y = v28;
    v35.size.width = v20;
    v35.size.height = v22;
    MaxX = CGRectGetMaxX(v35);
    [(SKUIMessageBanner *)self bounds];
    v8 = CGRectGetMaxX(v36) - MaxX;
  }

  label = self->_label;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v32 = 20.0;
  }

  else
  {
    v32 = 10.0;
  }

  v37.origin.x = MaxX;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v38 = CGRectInset(v37, v32, 15.0);
  [(UILabel *)label setFrame:v38.origin.x, v38.origin.y, v38.size.width, v38.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  label = self->_label;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 40.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 20.0;
  }

  [(UILabel *)label sizeThatFits:width - v7, 1.79769313e308];
  v9 = v8 + 30.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)_buttonAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained askPermissionBannerDidSelect:self];
}

- (void)_clearButtonAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 askPermissionBannerDidClear:self];
  }
}

- (SKUIMessageBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMessageBanner initWithFrame:]";
}

@end