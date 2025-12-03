@interface VUITextBadge
+ (id)attributedTextFromString:(id)string fontColor:(id)color fontSize:(double)size;
- (CGSize)_textSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)badgeInsets;
- (VUITextBadge)initWithAttributedString:(id)string tintColor:(id)color cornerRadius:(double)radius;
- (VUITextBadge)initWithFrame:(CGRect)frame;
- (VUITextBadge)initWithTitle:(id)title tintColor:(id)color fontSize:(double)size cornerRadius:(double)radius;
- (void)drawRect:(CGRect)rect;
- (void)setAttributedTitle:(id)title;
- (void)setTitle:(id)title;
@end

@implementation VUITextBadge

- (VUITextBadge)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUITextBadge;
  v3 = [(VUITextBadge *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(VUITextBadge *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (VUITextBadge)initWithAttributedString:(id)string tintColor:(id)color cornerRadius:(double)radius
{
  stringCopy = string;
  colorCopy = color;
  v11 = [(VUITextBadge *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attributedTitle, string);
    objc_storeStrong(&v12->_tintColor, color);
    v12->_cornerRadius = radius;
  }

  return v12;
}

- (VUITextBadge)initWithTitle:(id)title tintColor:(id)color fontSize:(double)size cornerRadius:(double)radius
{
  titleCopy = title;
  colorCopy = color;
  v13 = [objc_opt_class() attributedTextFromString:titleCopy fontColor:colorCopy fontSize:size];
  v14 = [(VUITextBadge *)self initWithAttributedString:v13 tintColor:colorCopy cornerRadius:radius];

  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
    v14->_fontSize = size;
    v14->_cornerRadius = radius;
    v14->_strokeSize = 2.0;
    *&v14->_badgeInsets.top = kDefaultBadgeInsets;
    *&v14->_badgeInsets.bottom = unk_1E42978F0;
  }

  return v14;
}

+ (id)attributedTextFromString:(id)string fontColor:(id)color fontSize:(double)size
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69DB648];
  v16[0] = *MEMORY[0x1E69DB650];
  v16[1] = v7;
  v17[0] = color;
  v8 = MEMORY[0x1E69DB878];
  colorCopy = color;
  stringCopy = string;
  v11 = [v8 boldSystemFontOfSize:size];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [v13 initWithString:stringCopy attributes:v12];

  return v14;
}

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    titleCopy = title;
    v5 = [titleCopy copy];
    title = self->_title;
    self->_title = v5;

    v7 = [objc_opt_class() attributedTextFromString:titleCopy fontColor:self->_tintColor fontSize:self->_fontSize];

    [(VUITextBadge *)self setAttributedTitle:v7];
  }
}

- (void)setAttributedTitle:(id)title
{
  if (self->_attributedTitle != title)
  {
    v4 = [title copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    [(VUITextBadge *)self setNeedsDisplay];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUITextBadge *)self _textSize:fits.width];
  v5 = v4 + self->_badgeInsets.left + self->_badgeInsets.right;
  v7 = v6 + self->_badgeInsets.top + self->_badgeInsets.bottom;
  result.height = v7;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
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
  attributedTitle = [(VUITextBadge *)self attributedTitle];
  [attributedTitle drawAtPoint:{self->_badgeInsets.left, self->_badgeInsets.top}];

  CGContextRestoreGState(CurrentContext);
}

- (CGSize)_textSize
{
  attributedTitle = [(VUITextBadge *)self attributedTitle];
  [attributedTitle boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
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