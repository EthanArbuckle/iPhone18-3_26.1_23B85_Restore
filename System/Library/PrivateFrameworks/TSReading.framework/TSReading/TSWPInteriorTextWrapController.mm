@interface TSWPInteriorTextWrapController
+ (id)sharedInteriorTextWrapController;
- (id)beginWrappingToColumn:(id)column target:(id)target hasWrapables:(BOOL *)wrapables;
- (unsigned)splitLine:(CGRect)line lineSegmentRects:(CGRect)rects[128] wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics floatingCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info;
@end

@implementation TSWPInteriorTextWrapController

+ (id)sharedInteriorTextWrapController
{
  result = +[TSWPInteriorTextWrapController sharedInteriorTextWrapController]::sSharedInstance;
  if (!+[TSWPInteriorTextWrapController sharedInteriorTextWrapController]::sSharedInstance)
  {
    result = objc_alloc_init(self);
    +[TSWPInteriorTextWrapController sharedInteriorTextWrapController]::sSharedInstance = result;
  }

  return result;
}

- (id)beginWrappingToColumn:(id)column target:(id)target hasWrapables:(BOOL *)wrapables
{
  v8 = objc_alloc_init(TSWPInteriorCookie);
  objc_opt_class();
  [target parent];
  [(TSWPInteriorCookie *)v8 setLayout:TSUDynamicCast()];
  [(TSWPInteriorCookie *)v8 setColumn:column];
  *wrapables = 1;
  return v8;
}

- (unsigned)splitLine:(CGRect)line lineSegmentRects:(CGRect)rects[128] wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics floatingCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  *hint = 1.0;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    return 1;
  }

  layout = [v14 layout];

  return [layout cropLine:rects lineSegmentRects:{x, y, width, height}];
}

@end