@interface _UIAttributedStringView
- (_UIAttributedStringView)initWithFrame:(CGRect)a3;
- (void)_updateContentsScale:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)a3;
- (void)setString:(id)a3;
- (void)setTextRotationAngle:(double)a3;
@end

@implementation _UIAttributedStringView

- (_UIAttributedStringView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIAttributedStringView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    v5 = [(UIView *)v4 layer];
    [(CALayer *)v5 setContentsGravity:*MEMORY[0x1E6979E00]];
    [(CALayer *)v5 setAlignmentMode:*MEMORY[0x1E6979560]];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v4;
}

- (void)dealloc
{
  -[NSNotificationCenter _uiRemoveObserver:names:]([MEMORY[0x1E696AD88] defaultCenter], self, &unk_1EFE2E098);

  v3.receiver = self;
  v3.super_class = _UIAttributedStringView;
  [(UIView *)&v3 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  v5 = CGRectIntegral(a3);
  v4.receiver = self;
  v4.super_class = _UIAttributedStringView;
  [(UIView *)&v4 setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (void)_updateContentsScale:(id)a3
{
  v5 = [(UIView *)self _scroller];
  if ([a3 object] == v5)
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6 = [(UIView *)self layer];
    [v5 zoomScale];

    [(CALayer *)v6 setContentsScale:?];
  }
}

- (void)didMoveToSuperview
{
  v3 = [(UIView *)self _scroller];
  if (v3)
  {
    v4 = v3;
    [MEMORY[0x1E6979518] setDisableActions:1];
    v5 = [(UIView *)self layer];
    [v4 zoomScale];

    [(CALayer *)v5 setContentsScale:?];
  }
}

- (void)setString:(id)a3
{
  v5 = a3;

  self->_string = a3;
  v6 = [(UIView *)self layer];
  string = self->_string;

  [(CALayer *)v6 setString:string];
}

- (void)setTextRotationAngle:(double)a3
{
  v4 = [(UIView *)self layer];
  CGAffineTransformMakeRotation(&v5, a3);
  [(CALayer *)v4 setAffineTransform:&v5];
}

@end