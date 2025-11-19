@interface SBCursiveTextView
- (SBCursiveTextView)init;
- (SBCursiveTextView)initWithFrame:(CGRect)a3;
- (void)configure;
- (void)layoutSubviews;
- (void)loadText:(id)a3 pointSize:(double)a4;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityLanguage:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setTime:(float)a3;
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

- (SBCursiveTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBCursiveTextView;
  v3 = [(SBCursiveTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v7 = [(SBCursiveTextView *)self layer];
  [v7 addSublayer:self->_textLayer];
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

- (void)loadText:(id)a3 pointSize:(double)a4
{
  v5 = a3;
  v6 = [[SBCursiveTextPath alloc] initWithURL:v5];

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

- (void)setTime:(float)a3
{
  v4 = [(SBCursiveTextPath *)self->_textPath pathForTime:a3];
  v5 = MEMORY[0x223D6BD80](v4, &self->_textTransform);
  [(CAShapeLayer *)self->_textLayer setPath:v5];
  [(CAShapeLayer *)self->_textLayer setShadowPath:v5];
  CGPathRelease(v5);

  CGPathRelease(v4);
}

- (void)setFillColor:(id)a3
{
  textLayer = self->_textLayer;
  v5 = a3;
  v6 = [a3 CGColor];

  [(CAShapeLayer *)textLayer setFillColor:v6];
}

- (void)setAccessibilityLabel:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBCursiveTextView;
  v4 = a3;
  [(SBCursiveTextView *)&v5 setAccessibilityLabel:v4];
  [(SBCursiveTextPath *)self->_textPath setAccessibilityLabel:v4, v5.receiver, v5.super_class];
}

- (void)setAccessibilityLanguage:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBCursiveTextView;
  v4 = a3;
  [(SBCursiveTextView *)&v5 setAccessibilityLanguage:v4];
  [(SBCursiveTextPath *)self->_textPath setAccessibilityLanguage:v4, v5.receiver, v5.super_class];
}

@end