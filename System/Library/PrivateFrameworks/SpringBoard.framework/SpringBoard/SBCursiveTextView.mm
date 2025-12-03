@interface SBCursiveTextView
- (SBCursiveTextView)init;
- (SBCursiveTextView)initWithFrame:(CGRect)frame;
- (void)configure;
- (void)layoutSubviews;
- (void)loadText:(id)text pointSize:(double)size;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityLanguage:(id)language;
- (void)setFillColor:(id)color;
- (void)setTime:(float)time;
@end

@implementation SBCursiveTextView

- (SBCursiveTextView)init
{
  v5.receiver = self;
  v5.super_class = SBCursiveTextView;
  v2 = [(SBCursiveTextView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBCursiveTextView *)v2 configure];
  }

  return v3;
}

- (SBCursiveTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBCursiveTextView;
  v3 = [(SBCursiveTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBCursiveTextView *)v3 configure];
  }

  return v4;
}

- (void)configure
{
  v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
  textLayer = self->_textLayer;
  self->_textLayer = v3;

  v5 = self->_textLayer;
  [(SBCursiveTextView *)self bounds];
  [(CAShapeLayer *)v5 setFrame:?];
  [(CAShapeLayer *)self->_textLayer setShadowRadius:1.0];
  LODWORD(v6) = 1036831949;
  [(CAShapeLayer *)self->_textLayer setShadowOpacity:v6];
  [(CAShapeLayer *)self->_textLayer setShadowOffset:0.0, 1.0];
  layer = [(SBCursiveTextView *)self layer];
  [layer addSublayer:self->_textLayer];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBCursiveTextView;
  [(SBCursiveTextView *)&v4 layoutSubviews];
  textLayer = self->_textLayer;
  [(SBCursiveTextView *)self bounds];
  [(CAShapeLayer *)textLayer setFrame:?];
}

- (void)loadText:(id)text pointSize:(double)size
{
  textCopy = text;
  v6 = [[SBCursiveTextPath alloc] initWithURL:textCopy];

  textPath = self->_textPath;
  self->_textPath = v6;

  v8 = self->_textPath;
  if (v8)
  {
    [(CAShapeLayer *)self->_textLayer bounds];
    [SBCursiveTextPath transformForRect:v8 pointSize:"transformForRect:pointSize:flipped:" flipped:1];
    *&self->_textTransform.a = v9;
    *&self->_textTransform.c = v10;
    *&self->_textTransform.tx = v11;
  }
}

- (void)setTime:(float)time
{
  v4 = [(SBCursiveTextPath *)self->_textPath pathForTime:time];
  v5 = MEMORY[0x223D6BD80](v4, &self->_textTransform);
  [(CAShapeLayer *)self->_textLayer setPath:v5];
  [(CAShapeLayer *)self->_textLayer setShadowPath:v5];
  CGPathRelease(v5);

  CGPathRelease(v4);
}

- (void)setFillColor:(id)color
{
  textLayer = self->_textLayer;
  colorCopy = color;
  cGColor = [color CGColor];

  [(CAShapeLayer *)textLayer setFillColor:cGColor];
}

- (void)setAccessibilityLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = SBCursiveTextView;
  labelCopy = label;
  [(SBCursiveTextView *)&v5 setAccessibilityLabel:labelCopy];
  [(SBCursiveTextPath *)self->_textPath setAccessibilityLabel:labelCopy, v5.receiver, v5.super_class];
}

- (void)setAccessibilityLanguage:(id)language
{
  v5.receiver = self;
  v5.super_class = SBCursiveTextView;
  languageCopy = language;
  [(SBCursiveTextView *)&v5 setAccessibilityLanguage:languageCopy];
  [(SBCursiveTextPath *)self->_textPath setAccessibilityLanguage:languageCopy, v5.receiver, v5.super_class];
}

@end