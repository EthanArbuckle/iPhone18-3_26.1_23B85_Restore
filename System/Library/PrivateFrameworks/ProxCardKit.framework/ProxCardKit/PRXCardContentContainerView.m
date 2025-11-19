@interface PRXCardContentContainerView
- (CGRect)originalFrame;
- (PRXCardContentContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PRXCardContentContainerView

- (PRXCardContentContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = PRXCardContentContainerView;
  v7 = [(PRXCardContentContainerView *)&v9 initWithFrame:?];
  [(PRXCardContentContainerView *)v7 setOriginalFrame:x, y, width, height];
  return v7;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PRXCardContentContainerView;
  [(PRXCardContentContainerView *)&v18 layoutSubviews];
  v3 = [(PRXCardContentContainerView *)self subviews];
  v4 = [v3 count];

  if (v4 == 1)
  {
    [(PRXCardContentContainerView *)self frame];
    v6 = v5;
    v7 = [(PRXCardContentContainerView *)self subviews];
    v8 = [v7 objectAtIndexedSubscript:0];

    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(PRXCardContentContainerView *)self originalFrame];
    if (v6 < v17 || v16 < v6)
    {
      [v8 setFrame:{v10, v12, v14, v6}];
    }
  }
}

- (CGRect)originalFrame
{
  x = self->_originalFrame.origin.x;
  y = self->_originalFrame.origin.y;
  width = self->_originalFrame.size.width;
  height = self->_originalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end