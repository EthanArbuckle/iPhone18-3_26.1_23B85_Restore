@interface PXGridTipsHelper
+ (void)updatePopoverTip:(id)a3 sourceRect:(CGRect)a4;
@end

@implementation PXGridTipsHelper

+ (void)updatePopoverTip:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = +[PXGridTipsHelper_Swift shared];
  [v9 updatePopoverTip:v8 sourceRect:{x, y, width, height}];
}

@end