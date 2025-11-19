@interface TSDLineEndView
+ (id)viewWithLineEnd:(id)a3 onRight:(BOOL)a4;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
@end

@implementation TSDLineEndView

+ (id)viewWithLineEnd:(id)a3 onRight:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(TSDLineEndView);
  [(TSDLineEndView *)v6 setOpaque:0];
  [(TSDLineEndView *)v6 setAlpha:0.699999988];
  [(TSDLineEndView *)v6 setLineEnd:a3];
  [(TSDLineEndView *)v6 setBounds:0.0, 0.0, 27.0, 11.0];
  [(TSDLineEndView *)v6 setOnRight:v4];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDLineEndView;
  [(TSDLineEndView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
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