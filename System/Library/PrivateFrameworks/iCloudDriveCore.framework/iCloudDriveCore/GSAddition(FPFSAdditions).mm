@interface GSAddition(FPFSAdditions)
+ (uint64_t)brc_isLegacyConflictAddition:()FPFSAdditions;
@end

@implementation GSAddition(FPFSAdditions)

+ (uint64_t)brc_isLegacyConflictAddition:()FPFSAdditions
{
  v3 = a3;
  nameSpace = [v3 nameSpace];
  v5 = [nameSpace isEqualToString:*MEMORY[0x277D0D610]];

  if (v5)
  {
    name = [v3 name];
    v7 = [name componentsSeparatedByString:@"_"];

    if (v7 && [v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      if ([v7 count] == 4 && objc_msgSend(v8, "hasSuffix:", @":"))
      {
        v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];

        v8 = v9;
      }

      if (v8)
      {
        v10 = [MEMORY[0x277CFAE60] validateMangledIDString:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end