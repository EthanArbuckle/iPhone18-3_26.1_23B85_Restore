@interface NSMutableAttributedString(PhotosUICore)
- (void)px_replaceFontWithFontDescriptor:()PhotosUICore keepingSymbolicTraits:;
- (void)px_replaceOccurrencesOfString:()PhotosUICore withTextAttachmentWithImage:;
@end

@implementation NSMutableAttributedString(PhotosUICore)

- (void)px_replaceFontWithFontDescriptor:()PhotosUICore keepingSymbolicTraits:
{
  v6 = a3;
  v7 = *MEMORY[0x1E69DB648];
  v8 = [self length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__NSMutableAttributedString_PhotosUICore__px_replaceFontWithFontDescriptor_keepingSymbolicTraits___block_invoke;
  v10[3] = &unk_1E7731960;
  v13 = a4;
  v11 = v6;
  selfCopy = self;
  v9 = v6;
  [self enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0x100000, v10}];
}

- (void)px_replaceOccurrencesOfString:()PhotosUICore withTextAttachmentWithImage:
{
  v26 = a3;
  v6 = a4;
  string = [self string];
  v8 = [string rangeOfString:v26];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = *MEMORY[0x1E69DB648];
    do
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [v11 setImage:v6];
      v12 = [self attributesAtIndex:v8 longestEffectiveRange:0 inRange:{v8, v10}];
      v13 = [v12 objectForKeyedSubscript:v25];
      [v6 size];
      if (v13)
      {
        v15 = v14;
        if (v14 > 0.0)
        {
          [v13 descender];
          v17 = v16;
          [v13 ascender];
          v19 = v18 - v17;
          [v6 size];
          [v11 setBounds:{0.0, v17, v20 * (v19 / v15), v19}];
        }
      }

      v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:{v11, v25}];
      [self replaceCharactersInRange:v8 withAttributedString:{v10, v21}];
      string2 = [self string];
      string3 = [self string];
      v8 = [string2 rangeOfString:v26 options:0 range:{v8, objc_msgSend(string3, "length") - v8}];
      v10 = v24;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

@end