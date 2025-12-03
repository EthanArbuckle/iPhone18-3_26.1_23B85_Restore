@interface UISwipeActionDeleteScanlineView
- (UISwipeActionDeleteScanlineView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setDeleteLineColor:(id)color;
@end

@implementation UISwipeActionDeleteScanlineView

- (UISwipeActionDeleteScanlineView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v18.receiver = self;
  v18.super_class = UISwipeActionDeleteScanlineView;
  v5 = [(UIView *)&v18 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = [[UIView alloc] initWithFrame:0.0, 0.0, width, 1.0];
    topLine = v5->_topLine;
    v5->_topLine = v6;

    v8 = v5->_topLine;
    v9 = +[UIColor systemRedColor];
    [(UIView *)v8 setBackgroundColor:v9];

    [(UIView *)v5 addSubview:v5->_topLine];
    v10 = [UIView alloc];
    [(UIView *)v5 bounds];
    v11 = [(UIView *)v10 initWithFrame:?];
    bottomLineWrapper = v5->_bottomLineWrapper;
    v5->_bottomLineWrapper = v11;

    [(UIView *)v5->_bottomLineWrapper setClipsToBounds:1];
    [(UIView *)v5 addSubview:v5->_bottomLineWrapper];
    v13 = [[UIView alloc] initWithFrame:0.0, height + -1.0, width, 1.0];
    bottomLine = v5->_bottomLine;
    v5->_bottomLine = v13;

    v15 = v5->_bottomLine;
    v16 = +[UIColor systemRedColor];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v5->_bottomLineWrapper addSubview:v5->_bottomLine];
  }

  return v5;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  [(UIView *)self->_bottomLineWrapper setFrame:?];
  [(UIView *)self frame];
  [(UIView *)self->_topLine setFrame:0.0, 0.0];
  [(UIView *)self frame];
  v4 = v3 + -1.0;
  [(UIView *)self frame];
  bottomLine = self->_bottomLine;

  [(UIView *)bottomLine setFrame:0.0, v4];
}

- (void)setDeleteLineColor:(id)color
{
  topLine = self->_topLine;
  colorCopy = color;
  [(UIView *)topLine setBackgroundColor:colorCopy];
  [(UIView *)self->_bottomLine setBackgroundColor:colorCopy];
}

@end