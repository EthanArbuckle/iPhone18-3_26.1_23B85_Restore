@interface TSWPInteriorTextWrapController
+ (id)sharedInteriorTextWrapController;
- (id)beginWrappingToColumn:(id)a3 target:(id)a4 hasWrapables:(BOOL *)a5;
- (unsigned)splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 floatingCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9;
@end

@implementation TSWPInteriorTextWrapController

+ (id)sharedInteriorTextWrapController
{
  result = +[TSWPInteriorTextWrapController sharedInteriorTextWrapController]::sSharedInstance;
  if (!+[TSWPInteriorTextWrapController sharedInteriorTextWrapController]::sSharedInstance)
  {
    result = objc_alloc_init(a1);
    +[TSWPInteriorTextWrapController sharedInteriorTextWrapController]::sSharedInstance = result;
  }

  return result;
}

- (id)beginWrappingToColumn:(id)a3 target:(id)a4 hasWrapables:(BOOL *)a5
{
  v8 = objc_alloc_init(TSWPInteriorCookie);
  objc_opt_class();
  [a4 parent];
  [(TSWPInteriorCookie *)v8 setLayout:TSUDynamicCast()];
  [(TSWPInteriorCookie *)v8 setColumn:a3];
  *a5 = 1;
  return v8;
}

- (unsigned)splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 floatingCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *a8 = 1.0;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    return 1;
  }

  v15 = [v14 layout];

  return [v15 cropLine:a4 lineSegmentRects:{x, y, width, height}];
}

@end