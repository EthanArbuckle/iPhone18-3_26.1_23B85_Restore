@interface NSURL(UCNSURLExtras)
- (id)transformPayloadWithBlock:()UCNSURLExtras;
@end

@implementation NSURL(UCNSURLExtras)

- (id)transformPayloadWithBlock:()UCNSURLExtras
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  if ([v6 count] && (v7 = objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v8 = objc_msgSend(v7, "name"), v9 = objc_msgSend(v8, "isEqualToString:", @"p"), v8, v7, v9))
  {
    v10 = [v6 objectAtIndexedSubscript:0];
    v11 = [v10 value];

    v12 = v4[2](v4, v11);
    v13 = MEMORY[0x277CCAD18];
    v14 = [v6 objectAtIndexedSubscript:0];
    v15 = [v14 name];
    v16 = [v13 queryItemWithName:v15 value:v12];

    v21[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v5 setQueryItems:v17];

    v18 = [v5 URL];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end