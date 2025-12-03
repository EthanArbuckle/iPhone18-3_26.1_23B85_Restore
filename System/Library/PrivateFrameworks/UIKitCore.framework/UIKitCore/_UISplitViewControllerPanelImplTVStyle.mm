@interface _UISplitViewControllerPanelImplTVStyle
- (double)defaultMaximumWidthForColumn:(int64_t)column withSize:(CGSize)size splitBehavior:(int64_t)behavior;
@end

@implementation _UISplitViewControllerPanelImplTVStyle

- (double)defaultMaximumWidthForColumn:(int64_t)column withSize:(CGSize)size splitBehavior:(int64_t)behavior
{
  width = size.width;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:10328 description:@"Only valid for tvOS"];

  return width;
}

@end