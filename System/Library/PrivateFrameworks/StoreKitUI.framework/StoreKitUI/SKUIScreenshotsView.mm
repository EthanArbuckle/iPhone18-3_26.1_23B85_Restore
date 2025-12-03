@interface SKUIScreenshotsView
- (SKUIScreenshotsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setPrimaryView:(id)view;
@end

@implementation SKUIScreenshotsView

- (SKUIScreenshotsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScreenshotsView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIScreenshotsView;
  height = [(SKUIScreenshotsView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = height->_separatorView;
    height->_separatorView = v9;

    v11 = height->_separatorView;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v11 setBackgroundColor:v12];

    [(SKUIScreenshotsView *)height addSubview:height->_separatorView];
  }

  return height;
}

- (void)setPrimaryView:(id)view
{
  viewCopy = view;
  primaryView = self->_primaryView;
  if (primaryView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)primaryView removeFromSuperview];
    objc_storeStrong(&self->_primaryView, view);
    [(SKUIScreenshotsView *)self addSubview:self->_primaryView];
    primaryView = [(SKUIScreenshotsView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](primaryView, viewCopy);
}

- (void)layoutSubviews
{
  [(SKUIScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  primaryView = self->_primaryView;
  if (primaryView)
  {
    [(UIView *)primaryView setFrame:?];
  }

  if (self->_separatorView)
  {
    [(SKUIScreenshotsView *)self bringSubviewToFront:?];
    separatorView = self->_separatorView;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = v6 - 1.0 / v9;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    [(UIView *)separatorView setFrame:15.0, v10, v4 + -15.0, 1.0 / v12];
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScreenshotsView initWithFrame:]";
}

@end