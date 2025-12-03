@interface TPLCDTextViewScrollingView
- (TPLCDTextViewScrollingView)initWithFrame:(CGRect)frame owner:(id)owner;
- (void)drawRect:(CGRect)rect;
@end

@implementation TPLCDTextViewScrollingView

- (TPLCDTextViewScrollingView)initWithFrame:(CGRect)frame owner:(id)owner
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ownerCopy = owner;
  v14.receiver = self;
  v14.super_class = TPLCDTextViewScrollingView;
  height = [(TPLCDTextViewScrollingView *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_owner, owner);
    [(TPLCDTextViewScrollingView *)v12 setOpaque:0];
  }

  return v12;
}

- (void)drawRect:(CGRect)rect
{
  [(TPLCDTextViewScrollingView *)self bounds:rect.origin.x];
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