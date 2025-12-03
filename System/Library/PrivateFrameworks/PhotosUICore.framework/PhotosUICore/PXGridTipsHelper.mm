@interface PXGridTipsHelper
+ (void)updatePopoverTip:(id)tip sourceRect:(CGRect)rect;
@end

@implementation PXGridTipsHelper

+ (void)updatePopoverTip:(id)tip sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  tipCopy = tip;
  v9 = +[PXGridTipsHelper_Swift shared];
  [v9 updatePopoverTip:tipCopy sourceRect:{x, y, width, height}];
}

@end