@interface SBSplitViewHandleDimmingView
- (SBSplitViewHandleDimmingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SBSplitViewHandleDimmingView

- (SBSplitViewHandleDimmingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SBSplitViewHandleDimmingView;
  v3 = [(SBSplitViewHandleDimmingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] imageNamed:@"SplitViewDimming"];
    image = v3->_image;
    v3->_image = v4;

    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3->_image];
    dimmingView = v3->_dimmingView;
    v3->_dimmingView = v6;

    [(UIImageView *)v3->_dimmingView setAlpha:0.75];
    [(SBSplitViewHandleDimmingView *)v3 addSubview:v3->_dimmingView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SBSplitViewHandleDimmingView;
  [(SBSplitViewHandleDimmingView *)&v8 layoutSubviews];
  [(SBSplitViewHandleDimmingView *)self bounds];
  v4 = v3;
  v6 = v5;
  dimmingView = self->_dimmingView;
  [(UIImage *)self->_image size];
  SBRectWithSize();
  [(UIImageView *)dimmingView setBounds:?];
  [(UIImageView *)self->_dimmingView setCenter:v4 * 0.5, v6 * 0.5];
}

@end