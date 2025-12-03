@interface SKUIIPhoneProductPageView
- (SKUIIPhoneProductPageView)initWithFrame:(CGRect)frame;
- (void)animateYPosition:(double)position;
- (void)layoutSubviews;
- (void)setBannerView:(id)view;
- (void)setView:(id)view;
@end

@implementation SKUIIPhoneProductPageView

- (SKUIIPhoneProductPageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPhoneProductPageView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIIPhoneProductPageView;
  height = [(SKUIIPhoneProductPageView *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    [(SKUIIPhoneProductPageView *)height setBackgroundColor:v9];

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(SKUIIPhoneProductPageView *)height addSubview:v10];
  }

  return height;
}

- (void)setView:(id)view
{
  viewCopy = view;
  view = self->_view;
  if (view != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)view removeFromSuperview];
    objc_storeStrong(&self->_view, view);
    [(SKUIIPhoneProductPageView *)self addSubview:self->_view];
    view = [(SKUIIPhoneProductPageView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](view, viewCopy);
}

- (void)setBannerView:(id)view
{
  viewCopy = view;
  bannerView = self->_bannerView;
  if (bannerView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)bannerView removeFromSuperview];
    objc_storeStrong(&self->_bannerView, view);
    [(SKUIIPhoneProductPageView *)self addSubview:self->_bannerView];
    bannerView = [(SKUIIPhoneProductPageView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](bannerView, viewCopy);
}

- (void)animateYPosition:(double)position
{
  if (position != 0.0 && self->_view != 0)
  {
    [(SKUIIPhoneProductPageView *)self bounds];
    v7 = v6;
    v9 = v8 - position;
    [(SKUIIPhoneProductPageView *)self bounds];
    v11 = v10;
    v13 = v12;
    v19 = objc_alloc_init(MEMORY[0x277CD9E10]);
    [v19 setKeyPath:@"position"];
    [v19 setRemovedOnCompletion:0];
    v14 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    [v19 setTimingFunction:v14];

    v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v7, v9}];
    [v19 setFromValue:v15];

    v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v11, v13}];
    [v19 setToValue:v16];

    [v19 setDuration:0.200000003];
    layer = [(UIView *)self->_view layer];
    [layer setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    layer2 = [(UIView *)self->_view layer];
    [layer2 addAnimation:v19 forKey:@"ANIMATION_KEY"];
  }
}

- (void)layoutSubviews
{
  [(SKUIIPhoneProductPageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  view = self->_view;
  if (view)
  {
    [(UIView *)view setFrame:v3];
  }

  bannerView = self->_bannerView;
  if (bannerView)
  {
    [(UIView *)bannerView frame];
    bannerOffset = self->_bannerOffset;
    [(UIView *)self->_bannerView sizeThatFits:v6, v8];
    [(UIView *)self->_bannerView setFrame:v4, bannerOffset, v12, v13];
    v14 = self->_bannerView;

    [(SKUIIPhoneProductPageView *)self bringSubviewToFront:v14];
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPhoneProductPageView initWithFrame:]";
}

@end