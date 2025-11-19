@interface GQDRFrame
- (GQDRFrame)init;
@end

@implementation GQDRFrame

- (GQDRFrame)init
{
  v5.receiver = self;
  v5.super_class = GQDRFrame;
  v2 = [(GQDRFrame *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->super.mMiterLimit = 4.0;
    v2->super.mWidth = 2.0;
    v2->super.mCap = 0;
    v2->super.mJoin = 0;
    v2->super.mColor = +[GQDColor blackColor];
    v3->super.mPattern = +[GQDRStrokePattern solidPattern];
  }

  return v3;
}

@end