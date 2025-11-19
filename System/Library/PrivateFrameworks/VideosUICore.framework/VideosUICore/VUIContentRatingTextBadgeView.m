@interface VUIContentRatingTextBadgeView
+ (CGSize)_badgeSizeForAttributedRatingText:(id)a3;
+ (UIEdgeInsets)_paddingEdgeInsets;
+ (id)_attributedRatingTextForText:(id)a3 color:(id)a4;
+ (id)_badgeImageWithAttributedRatingText:(id)a3 andColor:(id)a4;
+ (void)_drawBadgeWithAttributedRatingText:(id)a3 inContext:(CGContext *)a4 rect:(CGRect)a5 color:(id)a6;
- (CGSize)_intrinsicContentSize;
- (NSString)contentRatingText;
- (VUIContentRatingTextBadgeView)initWithBaselineOffsetFromBottom:(double)a3;
- (VUIContentRatingTextBadgeView)initWithFrame:(CGRect)a3;
- (id)firstBaselineAnchor;
- (void)_updateContentRatingAttributedText:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setContentRatingAttributedText:(id)a3;
- (void)tintColorDidChange;
@end

@implementation VUIContentRatingTextBadgeView

- (VUIContentRatingTextBadgeView)initWithBaselineOffsetFromBottom:(double)a3
{
  v4 = [(VUIContentRatingTextBadgeView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentGuide = v4->_contentGuide;
    v4->_contentGuide = v5;

    [(VUIContentRatingTextBadgeView *)v4 addLayoutGuide:v4->_contentGuide];
    v7 = [(UILayoutGuide *)v4->_contentGuide bottomAnchor];
    v8 = [(VUIContentRatingTextBadgeView *)v4 bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-a3];
    [v9 setActive:1];

    v10 = [(UILayoutGuide *)v4->_contentGuide topAnchor];
    v11 = [(VUIContentRatingTextBadgeView *)v4 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [(UILayoutGuide *)v4->_contentGuide leadingAnchor];
    v14 = [(VUIContentRatingTextBadgeView *)v4 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(UILayoutGuide *)v4->_contentGuide trailingAnchor];
    v17 = [(VUIContentRatingTextBadgeView *)v4 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];
  }

  return v4;
}

- (VUIContentRatingTextBadgeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VUIContentRatingTextBadgeView;
  v3 = [(VUIContentRatingTextBadgeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3 setVuiBackgroundColor:v4];
  }

  return v3;
}

- (NSString)contentRatingText
{
  v2 = [(VUIContentRatingTextBadgeView *)self contentRatingAttributedText];
  v3 = [v2 string];

  return v3;
}

- (void)setContentRatingAttributedText:(id)a3
{
  if (self->_contentRatingAttributedText != a3)
  {
    v4 = [a3 copy];
    contentRatingAttributedText = self->_contentRatingAttributedText;
    self->_contentRatingAttributedText = v4;

    [(VUIContentRatingTextBadgeView *)self invalidateIntrinsicContentSize];

    [(UIView *)self vui_setNeedsLayout];
  }
}

+ (id)_badgeImageWithAttributedRatingText:(id)a3 andColor:(id)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [a1 _attributedRatingTextForText:v5 color:0];
    [a1 _badgeSizeForAttributedRatingText:v6];
    v8 = v7;
    v10 = v9;
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = v12;
    v18.width = v8;
    v18.height = v10;
    UIGraphicsBeginImageContextWithOptions(v18, 0, v13);

    [a1 _drawBadgeWithAttributedRatingText:v6 inContext:UIGraphicsGetCurrentContext() rect:0 color:{0.0, 0.0, v8, v10}];
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    v15 = [v14 imageWithRenderingMode:2];

    UIGraphicsEndImageContext();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v9 = objc_opt_class();
  v10 = [(VUIContentRatingTextBadgeView *)self contentRatingAttributedText];
  v11 = [(VUIContentRatingTextBadgeView *)self tintColor];
  [v9 _drawBadgeWithAttributedRatingText:v10 inContext:CurrentContext rect:v11 color:{x, y, width, height}];

  CGContextRestoreGState(CurrentContext);
}

- (id)firstBaselineAnchor
{
  v3 = [(VUIContentRatingTextBadgeView *)self contentGuide];
  v4 = v3;
  if (!v3)
  {
    v3 = self;
  }

  v5 = [v3 bottomAnchor];

  return v5;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = VUIContentRatingTextBadgeView;
  [(VUIContentRatingTextBadgeView *)&v4 tintColorDidChange];
  v3 = [(VUIContentRatingTextBadgeView *)self contentRatingText];
  [(VUIContentRatingTextBadgeView *)self _updateContentRatingAttributedText:v3];

  [(VUIContentRatingTextBadgeView *)self setNeedsDisplay];
}

- (void)_updateContentRatingAttributedText:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIContentRatingTextBadgeView *)self tintColor];
  v7 = [v5 _attributedRatingTextForText:v4 color:v6];

  [(VUIContentRatingTextBadgeView *)self setContentRatingAttributedText:v7];
}

- (CGSize)_intrinsicContentSize
{
  v3 = objc_opt_class();
  v4 = [(VUIContentRatingTextBadgeView *)self contentRatingAttributedText];
  [v3 _badgeSizeForAttributedRatingText:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)_attributedRatingTextForText:(id)a3 color:(id)a4
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] blackColor];
    }

    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:0.4];
    v8 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v9 = [v8 mutableCopy];

    [v9 setLineBreakMode:4];
    [v9 setAlignment:1];
    v10 = *MEMORY[0x277D740A8];
    v14[0] = *MEMORY[0x277D740C0];
    v14[1] = v10;
    v15[0] = v6;
    v15[1] = v7;
    v14[2] = *MEMORY[0x277D74118];
    v15[2] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (CGSize)_badgeSizeForAttributedRatingText:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = [v5 length];

  if (v6)
  {
    [a1 _paddingEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 vui_bounds];
    v17 = v16;

    [v4 boundingRectWithSize:2 options:0 context:{v17, 0.0}];
    v24 = CGRectIntegral(v23);
    v18 = v14 + v10 + v24.size.width;
    v19 = v12 + v8 + v24.size.height;
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v20 = v18;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)_drawBadgeWithAttributedRatingText:(id)a3 inContext:(CGContext *)a4 rect:(CGRect)a5 color:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a6;
  v12 = a3;
  [a1 _paddingEdgeInsets];
  [v12 drawAtPoint:{x + v13, y + v14}];

  v15 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x + 1.0 cornerRadius:{y + 1.0, width + -2.0, height + -2.0, 6.0}];
  v16 = v17;
  if (!v17)
  {
    v16 = [MEMORY[0x277D75348] blackColor];
  }

  v18 = v16;
  [v16 set];
  [v15 setLineWidth:2.0];
  [v15 stroke];
}

+ (UIEdgeInsets)_paddingEdgeInsets
{
  v2 = 2.0;
  v3 = 4.0;
  v4 = 2.0;
  v5 = 4.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end