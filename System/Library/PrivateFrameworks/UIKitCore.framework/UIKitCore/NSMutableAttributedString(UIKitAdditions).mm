@interface NSMutableAttributedString(UIKitAdditions)
- (uint64_t)_ui_restoreOriginalFontAttributes;
@end

@implementation NSMutableAttributedString(UIKitAdditions)

- (uint64_t)_ui_restoreOriginalFontAttributes
{
  v2 = *off_1E70EC978;
  v3 = [self length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__NSMutableAttributedString_UIKitAdditions___ui_restoreOriginalFontAttributes__block_invoke;
  v5[3] = &unk_1E70F3050;
  v5[4] = self;
  return [self enumerateAttribute:v2 inRange:0 options:v3 usingBlock:{0x100000, v5}];
}

@end