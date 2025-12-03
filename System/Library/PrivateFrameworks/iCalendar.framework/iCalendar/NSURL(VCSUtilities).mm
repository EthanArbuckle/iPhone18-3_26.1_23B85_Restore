@interface NSURL(VCSUtilities)
+ (BOOL)VCS_isValidURI:()VCSUtilities;
+ (id)VCS_URLForAddress:()VCSUtilities scheme:noAddress:;
@end

@implementation NSURL(VCSUtilities)

+ (id)VCS_URLForAddress:()VCSUtilities scheme:noAddress:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    if (([self VCS_isValidURI:v8] & 1) == 0)
    {
      if ([v9 isEqualToString:@"mailto"] && (objc_msgSend(v8, "rangeOfString:", @"@"), v11) || objc_msgSend(v9, "isEqualToString:", @"tel") && objc_msgSend(v8, "VCS_isPhoneNumber"))
      {
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v13 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v14 = MEMORY[0x277CCACA8];
        uRLFragmentAllowedCharacterSet = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
        v16 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];
        v17 = [v14 stringWithFormat:@"%@:%@", v9, v16];

        v8 = v13;
      }

      else
      {
        v17 = v10;
      }

      v8 = v17;
    }

    v18 = [MEMORY[0x277CBEBC0] URLWithString:v8 encodingInvalidCharacters:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)VCS_isValidURI:()VCSUtilities
{
  v3 = a3;
  if ([v3 hasPrefix:@"/"])
  {
    v4 = 1;
  }

  else
  {
    [v3 rangeOfString:@":"];
    v4 = v5 != 0;
  }

  return v4;
}

@end