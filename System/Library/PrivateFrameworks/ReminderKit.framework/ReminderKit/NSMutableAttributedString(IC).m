@interface NSMutableAttributedString(IC)
- (void)ic_appendAttributedSubstring:()IC fromRange:;
- (void)ic_replaceCharactersInRange:()IC withAttributedSubstring:fromRange:;
@end

@implementation NSMutableAttributedString(IC)

- (void)ic_replaceCharactersInRange:()IC withAttributedSubstring:fromRange:
{
  v12 = a5;
  v13 = [v12 string];
  v14 = [v13 substringWithRange:{a6, a7}];
  [a1 replaceCharactersInRange:a3 withString:{a4, v14}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__NSMutableAttributedString_IC__ic_replaceCharactersInRange_withAttributedSubstring_fromRange___block_invoke;
  v15[3] = &unk_1E7509E30;
  v15[6] = a7;
  v15[7] = a3;
  v15[4] = a1;
  v15[5] = a6;
  [v12 enumerateAttributesInRange:a6 options:a7 usingBlock:{0x100000, v15}];
}

- (void)ic_appendAttributedSubstring:()IC fromRange:
{
  v8 = a3;
  [a1 ic_replaceCharactersInRange:objc_msgSend(a1 withAttributedSubstring:"length") fromRange:{0, v8, a4, a5}];
}

@end