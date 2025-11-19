@interface UILabel(RangeBold)
- (void)setBoldSubString:()RangeBold;
- (void)setColor:()RangeBold toSubstring:;
@end

@implementation UILabel(RangeBold)

- (void)setBoldSubString:()RangeBold
{
  v4 = a3;
  v5 = [a1 text];
  v6 = [v5 rangeOfString:v4];
  v8 = v7;

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D74300];
    v10 = [a1 font];
    v11 = [v10 fontDescriptor];
    v12 = [v11 fontDescriptorWithSymbolicTraits:2];
    v13 = [a1 font];
    [v13 pointSize];
    v20 = [v9 fontWithDescriptor:v12 size:?];

    v14 = [a1 attributedText];

    if (v14)
    {
      v15 = [a1 attributedText];
      v16 = [v15 mutableCopy];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CCAB48]);
      v15 = [a1 text];
      v16 = [v17 initWithString:v15];
    }

    v18 = v16;

    [v18 addAttribute:*MEMORY[0x277D740A8] value:v20 range:{v6, v8}];
    v19 = [v18 copy];
    [a1 setAttributedText:v19];
  }
}

- (void)setColor:()RangeBold toSubstring:
{
  v17 = a3;
  v6 = a4;
  v7 = [a1 text];
  v8 = [v7 rangeOfString:v6 options:4];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [a1 attributedText];

    if (v11)
    {
      v12 = [a1 attributedText];
      v13 = [v12 mutableCopy];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277CCAB48]);
      v12 = [a1 text];
      v13 = [v14 initWithString:v12];
    }

    v15 = v13;

    [v15 addAttribute:*MEMORY[0x277D740C0] value:v17 range:{v8, v10}];
    v16 = [v15 copy];
    [a1 setAttributedText:v16];
  }
}

@end