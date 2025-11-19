@interface UILabel(PXCMM)
- (BOOL)px_isOneLineForWidth:()PXCMM;
@end

@implementation UILabel(PXCMM)

- (BOOL)px_isOneLineForWidth:()PXCMM
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  [a1 textRectForBounds:1 limitedToNumberOfLines:{*MEMORY[0x1E695F058], v5, a2, 1.79769313e308}];
  v7 = v6;
  [a1 textRectForBounds:2 limitedToNumberOfLines:{v4, v5, a2, 1.79769313e308}];
  return v8 == v7;
}

@end