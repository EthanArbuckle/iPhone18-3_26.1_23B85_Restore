@interface PLProgressHUD
- (CGSize)sizeThatFits:(CGSize)a3;
- (PLProgressHUD)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)done;
- (void)hide;
- (void)layoutSubviews;
- (void)setText:(id)a3;
- (void)showInView:(id)a3;
@end

@implementation PLProgressHUD

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PLProgressHUD;
  [(PLProgressHUD *)&v14 layoutSubviews];
  [(PLProgressHUD *)self bounds];
  v4 = v3;
  v6 = v5;
  [MEMORY[0x277D750E8] defaultSizeForStyle:100];
  v8 = v7;
  v10 = v9;
  v11 = round((v6 - v9) * 0.5);
  [(UIActivityIndicatorView *)self->_activityIndicatorView setFrame:15.0, v11, v7, v9];
  v15.origin.x = 15.0;
  v15.origin.y = v11;
  v15.size.width = v8;
  v15.size.height = v10;
  v16.origin.x = CGRectGetMaxX(v15) + 5.0;
  v16.size.width = v4 - v16.origin.x + -15.0;
  v16.origin.y = 0.0;
  v16.size.height = v6;
  v17 = CGRectIntegral(v16);
  [(UILabel *)self->_label setFrame:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  [[(UIImageView *)self->_checkmarkView image] size];
  v18.size.width = v12;
  v18.size.height = v13;
  v18.origin.x = 18.0;
  v18.origin.y = 18.0;
  v19 = CGRectIntegral(v18);
  [(UIImageView *)self->_checkmarkView setFrame:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [MEMORY[0x277D750E8] defaultSizeForStyle:100];
  v7 = v6;
  v9 = v8;
  if ([(NSString *)[(UILabel *)self->_label text] length])
  {
    [(UILabel *)self->_label sizeThatFits:width, height];
    v12 = v11 + 5.0;
  }

  else
  {
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = 0.0;
  }

  v13 = ceil(v7 + 15.0 + v12 + 15.0);
  if (v9 >= v10)
  {
    v10 = v9;
  }

  v14 = ceil(v10 + 15.0 + 15.0);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)done
{
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  [(UIActivityIndicatorView *)self->_activityIndicatorView removeFromSuperview];

  self->_activityIndicatorView = 0;
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:{objc_msgSend(objc_msgSend(MEMORY[0x277D755B8], "imageNamed:inBundle:", @"PLProgressHUDCheckmark", PLPhotoLibraryFrameworkBundle()), "_flatImageWithColor:", objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.65))}];
  self->_checkmarkView = v3;
  [(PLProgressHUD *)self addSubview:v3];
  if (self->_isShowing)
  {

    [(PLProgressHUD *)self setNeedsLayout];
  }
}

- (void)hide
{
  self->_isShowing = 0;
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];

  [(PLProgressHUD *)self removeFromSuperview];
}

- (void)showInView:(id)a3
{
  self->_isShowing = 1;
  [a3 addSubview:self];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  [a3 bounds];
  v6 = v5;
  v8 = v7;
  [(PLProgressHUD *)self sizeThatFits:v5, v7];
  v12.size.width = v9;
  v12.size.height = v10;
  v12.origin.x = (v6 - v9) * 0.5;
  v12.origin.y = (v8 - v10) * 0.5;
  v13 = CGRectIntegral(v12);
  [(PLProgressHUD *)self setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];

  [(PLProgressHUD *)self setAutoresizingMask:45];
}

- (void)setText:(id)a3
{
  [(UILabel *)self->_label setText:a3];

  [(PLProgressHUD *)self setNeedsLayout];
}

- (void)dealloc
{
  if (self->_isShowing)
  {
    [(PLProgressHUD *)self hide];
  }

  v3.receiver = self;
  v3.super_class = PLProgressHUD;
  [(PLProgressHUD *)&v3 dealloc];
}

- (PLProgressHUD)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PLProgressHUD;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(PLProgressHUD *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    v7->_backdropView = v8;
    [(PLProgressHUD *)v7 addSubview:v8];
    [-[PLProgressHUD px_screen](v7 "px_screen")];
    v10 = v9;
    v19.width = 16.0;
    v19.height = 16.0;
    UIGraphicsBeginImageContextWithOptions(v19, 0, v10);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = 16.0;
    v20.size.height = 16.0;
    CGContextAddRect(CurrentContext, v20);
    CGContextAddPath(CurrentContext, [objc_msgSend(MEMORY[0x277D75208] bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{0.0, 16.0, 16.0, 7.0, 7.0), "CGPath"}]);
    CGContextEOClip(CurrentContext);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = 16.0;
    v21.size.height = 16.0;
    UIRectFill(v21);
    CGContextRestoreGState(CurrentContext);
    ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v13 = [(UIImage *)ImageFromCurrentImageContext resizableImageWithCapInsets:7.0, 7.0, 7.0, 7.0];
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
    [v14 setAlpha:0.0];
    [v14 _setBackdropMaskViewFlags:7];
    [v14 setAutoresizingMask:18];
    [-[_UIBackdropView contentView](v7->_backdropView "contentView")];
    [v14 setFrame:?];
    [-[_UIBackdropView contentView](v7->_backdropView "contentView")];

    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    v7->_label = v15;
    -[UILabel setBackgroundColor:](v15, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    -[UILabel setTextColor:](v7->_label, "setTextColor:", [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5]);
    -[UILabel setFont:](v7->_label, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:16.0]);
    [(PLProgressHUD *)v7 addSubview:v7->_label];
    v16 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v7->_activityIndicatorView = v16;
    [(PLProgressHUD *)v7 addSubview:v16];
    [(PLProgressHUD *)v7 setOpaque:0];
    [(PLProgressHUD *)v7 setNeedsDisplay];
    [-[PLProgressHUD layer](v7 "layer")];
  }

  return v7;
}

@end