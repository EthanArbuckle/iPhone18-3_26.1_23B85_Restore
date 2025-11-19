@interface NSLayoutManager(UIKitAdditions)
- (void)ui_enumerateTextBlocksInGlyphRange:()UIKitAdditions usingBlock:;
@end

@implementation NSLayoutManager(UIKitAdditions)

- (void)ui_enumerateTextBlocksInGlyphRange:()UIKitAdditions usingBlock:
{
  v8 = a5;
  v9 = [a1 textStorage];
  v10 = *off_1E70EC988;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__NSLayoutManager_UIKitAdditions__ui_enumerateTextBlocksInGlyphRange_usingBlock___block_invoke;
  v12[3] = &unk_1E7118B68;
  v13 = v8;
  v11 = v8;
  [v9 enumerateAttribute:v10 inRange:a3 options:a4 usingBlock:{0, v12}];
}

@end