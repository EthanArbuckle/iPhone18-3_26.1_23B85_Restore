@interface UILabel(RangeBold)
- (void)setBoldSubString:()RangeBold;
- (void)setColor:()RangeBold toSubstring:;
@end

@implementation UILabel(RangeBold)

- (void)setBoldSubString:()RangeBold
{
  v4 = a3;
  text = [self text];
  v6 = [text rangeOfString:v4];
  v8 = v7;

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D74300];
    font = [self font];
    fontDescriptor = [font fontDescriptor];
    v12 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    font2 = [self font];
    [font2 pointSize];
    v20 = [v9 fontWithDescriptor:v12 size:?];

    attributedText = [self attributedText];

    if (attributedText)
    {
      attributedText2 = [self attributedText];
      v16 = [attributedText2 mutableCopy];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CCAB48]);
      attributedText2 = [self text];
      v16 = [v17 initWithString:attributedText2];
    }

    v18 = v16;

    [v18 addAttribute:*MEMORY[0x277D740A8] value:v20 range:{v6, v8}];
    v19 = [v18 copy];
    [self setAttributedText:v19];
  }
}

- (void)setColor:()RangeBold toSubstring:
{
  v17 = a3;
  v6 = a4;
  text = [self text];
  v8 = [text rangeOfString:v6 options:4];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    attributedText = [self attributedText];

    if (attributedText)
    {
      attributedText2 = [self attributedText];
      v13 = [attributedText2 mutableCopy];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277CCAB48]);
      attributedText2 = [self text];
      v13 = [v14 initWithString:attributedText2];
    }

    v15 = v13;

    [v15 addAttribute:*MEMORY[0x277D740C0] value:v17 range:{v8, v10}];
    v16 = [v15 copy];
    [self setAttributedText:v16];
  }
}

@end