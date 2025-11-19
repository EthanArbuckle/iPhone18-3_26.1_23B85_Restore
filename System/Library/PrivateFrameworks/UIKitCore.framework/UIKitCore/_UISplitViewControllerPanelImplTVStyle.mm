@interface _UISplitViewControllerPanelImplTVStyle
- (double)defaultMaximumWidthForColumn:(int64_t)a3 withSize:(CGSize)a4 splitBehavior:(int64_t)a5;
@end

@implementation _UISplitViewControllerPanelImplTVStyle

- (double)defaultMaximumWidthForColumn:(int64_t)a3 withSize:(CGSize)a4 splitBehavior:(int64_t)a5
{
  width = a4.width;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"UISplitViewControllerPanelImpl.m" lineNumber:10328 description:@"Only valid for tvOS"];

  return width;
}

@end