@interface NSAttributedString(NCNotificationBodyAttributes)
- (id)nc_initWithAttributedString:()NCNotificationBodyAttributes contentType:;
- (id)nc_initWithString:()NCNotificationBodyAttributes contentType:;
- (id)nc_styledTextWithGylphAddedIfNecessaryForFont:()NCNotificationBodyAttributes glyphColor:;
- (uint64_t)nc_contentType;
@end

@implementation NSAttributedString(NCNotificationBodyAttributes)

- (uint64_t)nc_contentType
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [a1 attributesAtIndex:0 effectiveRange:0];
  v3 = [v2 objectForKey:@"contentType"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)nc_initWithString:()NCNotificationBodyAttributes contentType:
{
  if (a3)
  {
    v6 = MEMORY[0x277CCA898];
    v7 = a3;
    v8 = [[v6 alloc] initWithString:v7];

    v9 = [a1 nc_initWithAttributedString:v8 contentType:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nc_initWithAttributedString:()NCNotificationBodyAttributes contentType:
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = MEMORY[0x277CCAB48];
    v6 = a3;
    v7 = [[v5 alloc] initWithAttributedString:v6];

    v11 = @"contentType";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 addAttributes:v9 range:{0, objc_msgSend(v7, "length")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nc_styledTextWithGylphAddedIfNecessaryForFont:()NCNotificationBodyAttributes glyphColor:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([a1 nc_isAppleIntelligenceSummary])
  {
    if ([a1 length])
    {
      v8 = objc_opt_new();
      v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"text.line.2.summary"];
      v10 = [MEMORY[0x277D755D0] configurationWithFont:v6 scale:1];
      if (v7)
      {
        v11 = MEMORY[0x277D755D0];
        v20[0] = v7;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        v13 = [v11 configurationWithPaletteColors:v12];
        v14 = [v13 configurationByApplyingConfiguration:v10];

        v10 = v14;
      }

      v15 = [v9 imageWithSymbolConfiguration:v10];

      v16 = objc_opt_new();
      [v16 setImage:v15];
      v17 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v16];
      [v8 appendAttributedString:v17];
      v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [v8 appendAttributedString:v18];

      [v8 appendAttributedString:a1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

@end