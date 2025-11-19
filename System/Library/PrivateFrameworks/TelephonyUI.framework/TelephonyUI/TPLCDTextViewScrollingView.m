@interface TPLCDTextViewScrollingView
- (TPLCDTextViewScrollingView)initWithFrame:(CGRect)a3 owner:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation TPLCDTextViewScrollingView

- (TPLCDTextViewScrollingView)initWithFrame:(CGRect)a3 owner:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TPLCDTextViewScrollingView;
  v11 = [(TPLCDTextViewScrollingView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_owner, a4);
    [(TPLCDTextViewScrollingView *)v12 setOpaque:0];
  }

  return v12;
}

- (void)drawRect:(CGRect)a3
{
  [(TPLCDTextViewScrollingView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TPLCDTextView *)self->_owner bounds];
  v13 = v12;
  v14 = v9 - (v12 + 30.0);
  [(TPLCDTextView *)self->_owner _drawTextInRect:0 verticallyOffset:v5, v7, v14, v11];
  owner = self->_owner;

  [(TPLCDTextView *)owner _drawTextInRect:0 verticallyOffset:v5 + v14 + 30.0, v7, v13, v11];
}

@end