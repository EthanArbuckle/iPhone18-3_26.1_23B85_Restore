@interface TSDLineEndView
+ (id)viewWithLineEnd:(id)end onRight:(BOOL)right;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
@end

@implementation TSDLineEndView

+ (id)viewWithLineEnd:(id)end onRight:(BOOL)right
{
  rightCopy = right;
  v6 = objc_alloc_init(TSDLineEndView);
  [(TSDLineEndView *)v6 setOpaque:0];
  [(TSDLineEndView *)v6 setAlpha:0.699999988];
  [(TSDLineEndView *)v6 setLineEnd:end];
  [(TSDLineEndView *)v6 setBounds:0.0, 0.0, 27.0, 11.0];
  [(TSDLineEndView *)v6 setOnRight:rightCopy];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDLineEndView;
  [(TSDLineEndView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  mLineEnd = self->mLineEnd;
  mOnRight = self->mOnRight;
  [(TSDLineEndView *)self contentScaleFactor];
  v8 = v7;
  [(TSDLineEndView *)self bounds];
  v11 = [(TSDLineEnd *)mLineEnd newLineEndImageOnRight:mOnRight forContentsScale:v8 withSize:v9, v10];
  [(TSDLineEndView *)self bounds];
  v13.origin.x = TSDRectWithSize();
  CGContextDrawImage(CurrentContext, v13, v11);

  CGImageRelease(v11);
}

@end