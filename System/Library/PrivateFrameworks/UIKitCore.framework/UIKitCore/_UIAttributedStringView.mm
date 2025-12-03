@interface _UIAttributedStringView
- (_UIAttributedStringView)initWithFrame:(CGRect)frame;
- (void)_updateContentsScale:(id)scale;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)frame;
- (void)setString:(id)string;
- (void)setTextRotationAngle:(double)angle;
@end

@implementation _UIAttributedStringView

- (_UIAttributedStringView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIAttributedStringView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    layer = [(UIView *)v4 layer];
    [(CALayer *)layer setContentsGravity:*MEMORY[0x1E6979E00]];
    [(CALayer *)layer setAlignmentMode:*MEMORY[0x1E6979560]];
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

- (void)setFrame:(CGRect)frame
{
  v5 = CGRectIntegral(frame);
  v4.receiver = self;
  v4.super_class = _UIAttributedStringView;
  [(UIView *)&v4 setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (void)_updateContentsScale:(id)scale
{
  _scroller = [(UIView *)self _scroller];
  if ([scale object] == _scroller)
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
    layer = [(UIView *)self layer];
    [_scroller zoomScale];

    [(CALayer *)layer setContentsScale:?];
  }
}

- (void)didMoveToSuperview
{
  _scroller = [(UIView *)self _scroller];
  if (_scroller)
  {
    v4 = _scroller;
    [MEMORY[0x1E6979518] setDisableActions:1];
    layer = [(UIView *)self layer];
    [v4 zoomScale];

    [(CALayer *)layer setContentsScale:?];
  }
}

- (void)setString:(id)string
{
  stringCopy = string;

  self->_string = string;
  layer = [(UIView *)self layer];
  string = self->_string;

  [(CALayer *)layer setString:string];
}

- (void)setTextRotationAngle:(double)angle
{
  layer = [(UIView *)self layer];
  CGAffineTransformMakeRotation(&v5, angle);
  [(CALayer *)layer setAffineTransform:&v5];
}

@end