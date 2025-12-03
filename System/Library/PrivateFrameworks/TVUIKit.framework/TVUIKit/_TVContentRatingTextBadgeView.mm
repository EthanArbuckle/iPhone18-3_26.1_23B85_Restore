@interface _TVContentRatingTextBadgeView
+ (CGSize)_badgeSizeForAttributedRatingText:(id)text;
+ (UIEdgeInsets)_paddingEdgeInsets;
+ (id)_attributedRatingTextForText:(id)text color:(id)color;
+ (id)_badgeImageWithAttributedRatingText:(id)text andColor:(id)color;
+ (void)_drawBadgeWithAttributedRatingText:(id)text inContext:(CGContext *)context rect:(CGRect)rect color:(id)color;
- (CGSize)_intrinsicContentSize;
- (NSString)contentRatingText;
- (_TVContentRatingTextBadgeView)initWithBaselineOffsetFromBottom:(double)bottom;
- (_TVContentRatingTextBadgeView)initWithFrame:(CGRect)frame;
- (id)firstBaselineAnchor;
- (void)_updateContentRatingAttributedText:(id)text;
- (void)drawRect:(CGRect)rect;
- (void)setContentRatingAttributedText:(id)text;
- (void)tintColorDidChange;
@end

@implementation _TVContentRatingTextBadgeView

- (_TVContentRatingTextBadgeView)initWithBaselineOffsetFromBottom:(double)bottom
{
  v4 = [(_TVContentRatingTextBadgeView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentGuide = v4->_contentGuide;
    v4->_contentGuide = v5;

    [(_TVContentRatingTextBadgeView *)v4 addLayoutGuide:v4->_contentGuide];
    bottomAnchor = [(UILayoutGuide *)v4->_contentGuide bottomAnchor];
    bottomAnchor2 = [(_TVContentRatingTextBadgeView *)v4 bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-bottom];
    [v9 setActive:1];

    topAnchor = [(UILayoutGuide *)v4->_contentGuide topAnchor];
    topAnchor2 = [(_TVContentRatingTextBadgeView *)v4 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v12 setActive:1];

    leadingAnchor = [(UILayoutGuide *)v4->_contentGuide leadingAnchor];
    leadingAnchor2 = [(_TVContentRatingTextBadgeView *)v4 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 setActive:1];

    trailingAnchor = [(UILayoutGuide *)v4->_contentGuide trailingAnchor];
    trailingAnchor2 = [(_TVContentRatingTextBadgeView *)v4 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v18 setActive:1];
  }

  return v4;
}

- (_TVContentRatingTextBadgeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVContentRatingTextBadgeView;
  v3 = [(_TVContentRatingTextBadgeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_TVContentRatingTextBadgeView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (NSString)contentRatingText
{
  contentRatingAttributedText = [(_TVContentRatingTextBadgeView *)self contentRatingAttributedText];
  string = [contentRatingAttributedText string];

  return string;
}

- (void)setContentRatingAttributedText:(id)text
{
  if (self->_contentRatingAttributedText != text)
  {
    v4 = [text copy];
    contentRatingAttributedText = self->_contentRatingAttributedText;
    self->_contentRatingAttributedText = v4;

    [(_TVContentRatingTextBadgeView *)self invalidateIntrinsicContentSize];

    [(_TVContentRatingTextBadgeView *)self setNeedsDisplay];
  }
}

+ (id)_badgeImageWithAttributedRatingText:(id)text andColor:(id)color
{
  textCopy = text;
  if ([textCopy length])
  {
    v6 = [self _attributedRatingTextForText:textCopy color:0];
    [self _badgeSizeForAttributedRatingText:v6];
    v8 = v7;
    v10 = v9;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v13 = v12;
    v18.width = v8;
    v18.height = v10;
    UIGraphicsBeginImageContextWithOptions(v18, 0, v13);

    [self _drawBadgeWithAttributedRatingText:v6 inContext:UIGraphicsGetCurrentContext() rect:0 color:{0.0, 0.0, v8, v10}];
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v9 = objc_opt_class();
  contentRatingAttributedText = [(_TVContentRatingTextBadgeView *)self contentRatingAttributedText];
  tintColor = [(_TVContentRatingTextBadgeView *)self tintColor];
  [v9 _drawBadgeWithAttributedRatingText:contentRatingAttributedText inContext:CurrentContext rect:tintColor color:{x, y, width, height}];

  CGContextRestoreGState(CurrentContext);
}

- (id)firstBaselineAnchor
{
  selfCopy = [(_TVContentRatingTextBadgeView *)self contentGuide];
  v4 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  bottomAnchor = [selfCopy bottomAnchor];

  return bottomAnchor;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = _TVContentRatingTextBadgeView;
  [(_TVContentRatingTextBadgeView *)&v4 tintColorDidChange];
  contentRatingText = [(_TVContentRatingTextBadgeView *)self contentRatingText];
  [(_TVContentRatingTextBadgeView *)self _updateContentRatingAttributedText:contentRatingText];

  [(_TVContentRatingTextBadgeView *)self setNeedsDisplay];
}

- (void)_updateContentRatingAttributedText:(id)text
{
  textCopy = text;
  v5 = objc_opt_class();
  tintColor = [(_TVContentRatingTextBadgeView *)self tintColor];
  v7 = [v5 _attributedRatingTextForText:textCopy color:tintColor];

  [(_TVContentRatingTextBadgeView *)self setContentRatingAttributedText:v7];
}

- (CGSize)_intrinsicContentSize
{
  v3 = objc_opt_class();
  contentRatingAttributedText = [(_TVContentRatingTextBadgeView *)self contentRatingAttributedText];
  [v3 _badgeSizeForAttributedRatingText:contentRatingAttributedText];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)_attributedRatingTextForText:(id)text color:(id)color
{
  v16[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  colorCopy = color;
  if ([textCopy length])
  {
    if (!colorCopy)
    {
      colorCopy = [MEMORY[0x277D75348] blackColor];
    }

    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:0.4];
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v9 = [defaultParagraphStyle mutableCopy];

    [v9 setLineBreakMode:4];
    [v9 setAlignment:1];
    v10 = *MEMORY[0x277D740A8];
    v15[0] = *MEMORY[0x277D740C0];
    v15[1] = v10;
    v16[0] = colorCopy;
    v16[1] = v7;
    v15[2] = *MEMORY[0x277D74118];
    v16[2] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (CGSize)_badgeSizeForAttributedRatingText:(id)text
{
  textCopy = text;
  string = [textCopy string];
  v6 = [string length];

  if (v6)
  {
    [self _paddingEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v17 = v16;

    [textCopy boundingRectWithSize:2 options:0 context:{v17, 0.0}];
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

+ (void)_drawBadgeWithAttributedRatingText:(id)text inContext:(CGContext *)context rect:(CGRect)rect color:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  textCopy = text;
  [self _paddingEdgeInsets];
  [textCopy drawAtPoint:{x + v13, y + v14}];

  v15 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x + 1.0 cornerRadius:{y + 1.0, width + -2.0, height + -2.0, 6.0}];
  blackColor = colorCopy;
  if (!colorCopy)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v18 = blackColor;
  [blackColor set];
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