@interface SKUIBadgeLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIBadgeLabel)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation SKUIBadgeLabel

- (SKUIBadgeLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBadgeLabel initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIBadgeLabel;
  height = [(SKUIBadgeLabel *)&v15 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    layer = [(SKUIBadgeLabel *)height layer];
    [layer setCornerRadius:6.0];

    v11 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(SKUIBadgeLabel *)v9 setFont:v11];

    [(SKUIBadgeLabel *)v9 setTextAlignment:1];
    [(SKUIBadgeLabel *)v9 setClipsToBounds:1];
    defaultBackgroundColor = [objc_opt_class() defaultBackgroundColor];
    [(SKUIBadgeLabel *)v9 setBackgroundColor:defaultBackgroundColor];

    defaultTextColor = [objc_opt_class() defaultTextColor];
    [(SKUIBadgeLabel *)v9 setTextColor:defaultTextColor];
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v7.receiver = self;
  v7.super_class = SKUIBadgeLabel;
  [(SKUIBadgeLabel *)&v7 sizeThatFits:fits.width, fits.height];
  v4 = v3 + 9.0;
  v6 = v5 + 0.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  superview = [(SKUIBadgeLabel *)self superview];

  if (!superview)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    backgroundColor = [(SKUIBadgeLabel *)self backgroundColor];
    [backgroundColor set];

    v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 6.0}];
    [v11 fill];

    CGContextRestoreGState(CurrentContext);
  }

  v12.receiver = self;
  v12.super_class = SKUIBadgeLabel;
  [(SKUIBadgeLabel *)&v12 drawTextInRect:x, y, width, height];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBadgeLabel initWithFrame:]";
}

@end