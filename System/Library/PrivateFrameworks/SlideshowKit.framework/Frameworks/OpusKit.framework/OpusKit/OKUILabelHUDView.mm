@interface OKUILabelHUDView
- (CGSize)sizeThatFits:(CGSize)fits;
- (OKUILabelHUDView)init;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)sizeToFit;
- (void)updateShadowPath;
@end

@implementation OKUILabelHUDView

- (OKUILabelHUDView)init
{
  v3 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  if (v3)
  {
    v4 = *"";
  }

  else
  {
    v4 = 160.0;
  }

  if (v3)
  {
    v5 = 60.0;
  }

  else
  {
    v5 = 40.0;
  }

  v20.receiver = self;
  v20.super_class = OKUILabelHUDView;
  v6 = [(OKUILabelHUDView *)&v20 initWithFrame:0.0, 0.0, v4, v5];
  v7 = v6;
  if (v6)
  {
    [(OKUILabelHUDView *)v6 setAutoresizingMask:45];
    [(OKUILabelHUDView *)v7 setUserInteractionEnabled:0];
    [-[OKUILabelHUDView layer](v7 "layer")];
    [-[OKUILabelHUDView layer](v7 "layer")];
    [-[OKUILabelHUDView layer](v7 "layer")];
    [-[OKUILabelHUDView layer](v7 "layer")];
    layer = [(OKUILabelHUDView *)v7 layer];
    LODWORD(v9) = 0.5;
    [layer setShadowOpacity:v9];
    [-[OKUILabelHUDView layer](v7 "layer")];
    v10 = MEMORY[0x277D75208];
    [(OKUILabelHUDView *)v7 bounds];
    [-[OKUILabelHUDView layer](v7 "layer")];
    v11 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    [(OKUILabelHUDView *)v7 bounds];
    if (v11)
    {
      v16 = 20.0;
      v17 = 10.0;
    }

    else
    {
      v16 = 12.0;
      v17 = 6.0;
    }

    v21 = CGRectInset(*&v12, v16, v17);
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    v7->_label = v18;
    [(UILabel *)v18 setAutoresizingMask:45];
    [(UILabel *)v7->_label setText:0];
    -[UILabel setFont:](v7->_label, "setFont:", [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-Bold" size:24.0]);
    -[UILabel setTextColor:](v7->_label, "setTextColor:", [MEMORY[0x277D75348] colorWithWhite:0.899999976 alpha:1.0]);
    [(UILabel *)v7->_label setTextAlignment:1];
    [(UILabel *)v7->_label setBaselineAdjustment:1];
    -[UILabel setBackgroundColor:](v7->_label, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(UILabel *)v7->_label setAdjustsFontSizeToFitWidth:1];
    [(OKUILabelHUDView *)v7 addSubview:v7->_label];
  }

  return v7;
}

- (void)dealloc
{
  label = self->_label;
  if (label)
  {

    self->_label = 0;
  }

  v4.receiver = self;
  v4.super_class = OKUILabelHUDView;
  [(OKUILabelHUDView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OKUILabelHUDView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKUILabelHUDView;
  [(OKUILabelHUDView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(OKUILabelHUDView *)self updateShadowPath];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(OKUILabelHUDView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKUILabelHUDView;
  [(OKUILabelHUDView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(OKUILabelHUDView *)self updateShadowPath];
  }
}

- (void)updateShadowPath
{
  v3 = MEMORY[0x277D75208];
  [(OKUILabelHUDView *)self bounds];
  v4 = [objc_msgSend(v3 "bezierPathWithRoundedRect:"CGPath" cornerRadius:?")];
  layer = [(OKUILabelHUDView *)self layer];

  [layer setShadowPath:v4];
}

- (void)sizeToFit
{
  [(OKUILabelHUDView *)self center];
  v4 = v3;
  v6 = v5;
  v7.receiver = self;
  v7.super_class = OKUILabelHUDView;
  [(OKUILabelHUDView *)&v7 sizeToFit];
  [(OKUILabelHUDView *)self setCenter:v4, v6];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_label sizeThatFits:fits.width, fits.height];
  v4 = v3;
  v6 = v5;
  v7 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  v8 = 40.0;
  if (!v7)
  {
    v8 = 24.0;
  }

  v9 = v4 + v8;
  v10 = 20.0;
  if (!v7)
  {
    v10 = 12.0;
  }

  v11 = v6 + v10;
  result.height = v11;
  result.width = v9;
  return result;
}

@end