@interface VUITextBadge
+ (id)attributedTextFromString:(id)a3 fontColor:(id)a4 fontSize:(double)a5;
- (CGSize)_textSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)badgeInsets;
- (VUITextBadge)initWithAttributedString:(id)a3 tintColor:(id)a4 cornerRadius:(double)a5;
- (VUITextBadge)initWithFrame:(CGRect)a3;
- (VUITextBadge)initWithTitle:(id)a3 tintColor:(id)a4 fontSize:(double)a5 cornerRadius:(double)a6;
- (void)drawRect:(CGRect)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation VUITextBadge

- (VUITextBadge)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VUITextBadge;
  v3 = [(VUITextBadge *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(VUITextBadge *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (VUITextBadge)initWithAttributedString:(id)a3 tintColor:(id)a4 cornerRadius:(double)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(VUITextBadge *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attributedTitle, a3);
    objc_storeStrong(&v12->_tintColor, a4);
    v12->_cornerRadius = a5;
  }

  return v12;
}

- (VUITextBadge)initWithTitle:(id)a3 tintColor:(id)a4 fontSize:(double)a5 cornerRadius:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = [objc_opt_class() attributedTextFromString:v11 fontColor:v12 fontSize:a5];
  v14 = [(VUITextBadge *)self initWithAttributedString:v13 tintColor:v12 cornerRadius:a6];

  if (v14)
  {
    objc_storeStrong(&v14->_title, a3);
    v14->_fontSize = a5;
    v14->_cornerRadius = a6;
    v14->_strokeSize = 2.0;
    *&v14->_badgeInsets.top = kDefaultBadgeInsets;
    *&v14->_badgeInsets.bottom = unk_1E42978F0;
  }

  return v14;
}

+ (id)attributedTextFromString:(id)a3 fontColor:(id)a4 fontSize:(double)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69DB648];
  v16[0] = *MEMORY[0x1E69DB650];
  v16[1] = v7;
  v17[0] = a4;
  v8 = MEMORY[0x1E69DB878];
  v9 = a4;
  v10 = a3;
  v11 = [v8 boldSystemFontOfSize:a5];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [v13 initWithString:v10 attributes:v12];

  return v14;
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    title = self->_title;
    self->_title = v5;

    v7 = [objc_opt_class() attributedTextFromString:v4 fontColor:self->_tintColor fontSize:self->_fontSize];

    [(VUITextBadge *)self setAttributedTitle:v7];
  }
}

- (void)setAttributedTitle:(id)a3
{
  if (self->_attributedTitle != a3)
  {
    v4 = [a3 copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    [(VUITextBadge *)self setNeedsDisplay];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUITextBadge *)self _textSize:a3.width];
  v5 = v4 + self->_badgeInsets.left + self->_badgeInsets.right;
  v7 = v6 + self->_badgeInsets.top + self->_badgeInsets.bottom;
  result.height = v7;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, width, height}];
  if (self->_backgroundImage)
  {
    v7 = v10;
    CGContextAddPath(CurrentContext, [v10 CGPath]);
    CGContextClip(CurrentContext);
    [(UIImage *)self->_backgroundImage drawAtPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  [(UIColor *)self->_tintColor set];
  badgeStyle = self->_badgeStyle;
  if (badgeStyle == 1)
  {
    [v10 setLineWidth:self->_strokeSize];
    [v10 stroke];
  }

  else if (badgeStyle == 2)
  {
    [v10 fill];
  }

  CGContextSetBlendMode(CurrentContext, self->_textBlendMode);
  v9 = [(VUITextBadge *)self attributedTitle];
  [v9 drawAtPoint:{self->_badgeInsets.left, self->_badgeInsets.top}];

  CGContextRestoreGState(CurrentContext);
}

- (CGSize)_textSize
{
  v2 = [(VUITextBadge *)self attributedTitle];
  [v2 boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
  v4 = v3;
  v6 = v5;

  v7 = ceil(v4);
  v8 = ceil(v6);
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)badgeInsets
{
  top = self->_badgeInsets.top;
  left = self->_badgeInsets.left;
  bottom = self->_badgeInsets.bottom;
  right = self->_badgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end