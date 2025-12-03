@interface UILabel(PXAnimatedCounter)
- (double)boundingRectForCharacterRange:()PXAnimatedCounter;
@end

@implementation UILabel(PXAnimatedCounter)

- (double)boundingRectForCharacterRange:()PXAnimatedCounter
{
  v7 = objc_alloc(MEMORY[0x1E69DB850]);
  attributedText = [self attributedText];
  v9 = [v7 initWithAttributedString:attributedText];

  v10 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
  [v9 addLayoutManager:v10];
  v11 = objc_alloc(MEMORY[0x1E69DB800]);
  [self bounds];
  v14 = [v11 initWithSize:{v12, v13}];
  [v14 setLineFragmentPadding:0.0];
  [v10 addTextContainer:v14];
  v18 = 0;
  v19 = 0;
  [v10 characterRangeForGlyphRange:a3 actualGlyphRange:{a4, &v18}];
  [v10 boundingRectForGlyphRange:v18 inTextContainer:{v19, v14}];
  v16 = v15;

  return v16;
}

@end