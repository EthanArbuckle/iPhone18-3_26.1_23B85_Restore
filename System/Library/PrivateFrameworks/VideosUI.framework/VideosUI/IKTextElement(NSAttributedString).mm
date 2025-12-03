@interface IKTextElement(NSAttributedString)
- (id)textAttributes;
@end

@implementation IKTextElement(NSAttributedString)

- (id)textAttributes
{
  if (textAttributes_onceToken != -1)
  {
    [IKTextElement(NSAttributedString) textAttributes];
  }

  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [self attributedStringWithFont:v2];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__IKTextElement_NSAttributedString__textAttributes__block_invoke_2;
  v8[3] = &unk_1E872FE58;
  v6 = dictionary;
  v9 = v6;
  [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0x100000, v8}];

  return v6;
}

@end