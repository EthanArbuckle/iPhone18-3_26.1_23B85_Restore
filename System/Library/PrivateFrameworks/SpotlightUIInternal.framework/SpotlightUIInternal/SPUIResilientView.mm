@interface SPUIResilientView
- (void)setFrame:(CGRect)frame;
@end

@implementation SPUIResilientView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  memset(&v12, 0, sizeof(v12));
  [(SPUIResilientView *)self transform];
  v11 = v12;
  if (CGAffineTransformIsIdentity(&v11))
  {
    v10.receiver = self;
    v10.super_class = SPUIResilientView;
    [(SPUIResilientView *)&v10 setFrame:x, y, width, height, v8.receiver, v8.super_class];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
    v9 = v12;
    CGAffineTransformInvert(&v11, &v9);
    [(SPUIResilientView *)self frame];
    v9 = v11;
    v15 = CGRectApplyAffineTransform(v13, &v9);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (!CGRectEqualToRect(v14, v15))
    {
      [(SPUIResilientView *)&v8 setFrame:x, y, width, height, self, SPUIResilientView];
    }
  }
}

@end