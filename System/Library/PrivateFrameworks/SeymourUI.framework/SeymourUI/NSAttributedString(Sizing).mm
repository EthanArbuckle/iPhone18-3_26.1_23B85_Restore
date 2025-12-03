@interface NSAttributedString(Sizing)
- (double)boundingRectWithWidth:()Sizing maximumNumberOfLines:lineBreakMode:;
@end

@implementation NSAttributedString(Sizing)

- (double)boundingRectWithWidth:()Sizing maximumNumberOfLines:lineBreakMode:
{
  v8 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:self];
  v9 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{a2, 1.79769313e308}];
  [v9 setLineBreakMode:a5];
  [v9 setMaximumNumberOfLines:a4];
  v10 = objc_alloc_init(MEMORY[0x277D742A8]);
  [v10 setTextContainer:v9];
  v11 = objc_alloc_init(MEMORY[0x277D74280]);
  [v11 setTextStorage:v8];
  [v11 addTextLayoutManager:v10];
  documentRange = [v10 documentRange];
  [v10 ensureLayoutForRange:documentRange];

  [v10 usageBoundsForTextContainer];
  v14 = v13;

  return v14;
}

@end