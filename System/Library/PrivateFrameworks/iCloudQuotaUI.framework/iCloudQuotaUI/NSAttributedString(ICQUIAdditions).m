@interface NSAttributedString(ICQUIAdditions)
+ (id)attributedStringWithFormat:()ICQUIAdditions attributes:links:;
+ (id)attributesForIndex:()ICQUIAdditions baseAttributes:;
+ (id)spaceArrowAttributedStringWithBaseAttributes:()ICQUIAdditions;
@end

@implementation NSAttributedString(ICQUIAdditions)

+ (id)spaceArrowAttributedStringWithBaseAttributes:()ICQUIAdditions
{
  v3 = MEMORY[0x277CCAB48];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8197];
  v7 = [v5 initWithString:v6];

  v8 = [v7 length];
  v9 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  v10 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"PresentationRightArrowBlue"];
  [v9 setImage:v10];

  v11 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
  [v7 appendAttributedString:v11];

  [v7 addAttributes:v4 range:{0, objc_msgSend(v7, "length")}];
  [v7 addAttribute:*MEMORY[0x277D74078] value:&unk_288479D28 range:{v8, objc_msgSend(v7, "length") - v8}];
  v12 = [v7 copy];

  return v12;
}

+ (id)attributesForIndex:()ICQUIAdditions baseAttributes:
{
  v5 = [a4 mutableCopy];
  v6 = [MEMORY[0x277CBEBC0] icqURLForIndex:a3];
  [v5 setObject:v6 forKey:*MEMORY[0x277D740E8]];

  v7 = [v5 copy];

  return v7;
}

+ (id)attributedStringWithFormat:()ICQUIAdditions attributes:links:
{
  v7 = a3;
  v33 = a4;
  v8 = a5;
  v9 = [v7 length];
  v35 = objc_opt_new();
  v32 = v9;
  v10 = [v7 rangeOfString:@"%@" options:2 range:{0, v9}];
  v12 = v11;
  v13 = 0;
  if ([v8 count] && v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v8;
      v16 = [v8 objectAtIndexedSubscript:v14];
      v17 = [a1 attributesForIndex:v14 baseAttributes:v33];
      v18 = objc_alloc(MEMORY[0x277CCA898]);
      v19 = [v7 substringWithRange:{v13, v10 - v13}];
      v20 = [v18 initWithString:v19 attributes:v33];
      [v35 appendAttributedString:v20];

      v21 = MEMORY[0x277CCACA8];
      v22 = [v16 text];
      v23 = [v21 stringWithFormat:@"%@", v22];

      v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23 attributes:v17];
      [v35 appendAttributedString:v24];

      if ([v16 options])
      {
        v25 = [a1 spaceArrowAttributedStringWithBaseAttributes:v17];
        [v35 appendAttributedString:v25];
      }

      v13 = v10 + v12;
      ++v14;

      v10 = [v7 rangeOfString:@"%@" options:2 range:{v10 + v12, v32 - (v10 + v12)}];
      v12 = v26;
      v8 = v15;
    }

    while (v14 < [v15 count] && v12);
  }

  v27 = objc_alloc(MEMORY[0x277CCA898]);
  v28 = [v7 substringFromIndex:v13];
  v29 = [v27 initWithString:v28 attributes:v33];
  [v35 appendAttributedString:v29];

  v30 = [v35 copy];

  return v30;
}

@end