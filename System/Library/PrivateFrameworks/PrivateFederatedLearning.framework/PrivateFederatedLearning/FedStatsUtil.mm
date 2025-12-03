@interface FedStatsUtil
+ (id)intToBitString:(int)string length:(int)length;
+ (id)sha1:(id)sha1;
+ (int)bitStringToInt:(id)int;
@end

@implementation FedStatsUtil

+ (int)bitStringToInt:(id)int
{
  intCopy = int;
  v4 = [intCopy length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = v4 - 1;
    do
    {
      v9 = [intCopy substringWithRange:{v6, 1}];
      v10 = [v9 isEqualToString:@"1"];

      v11 = 1 << v8;
      if (!v10)
      {
        v11 = 0;
      }

      v7 += v11;
      ++v6;
      --v8;
    }

    while (v5 != v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)intToBitString:(int)string length:(int)length
{
  string = [MEMORY[0x277CCAB68] string];
  if (length >= 1)
  {
    v7 = 0;
    do
    {
      if ((string >> v7))
      {
        v8 = @"1";
      }

      else
      {
        v8 = @"0";
      }

      [string insertString:v8 atIndex:0];
      ++v7;
    }

    while (length != v7);
  }

  return string;
}

+ (id)sha1:(id)sha1
{
  v14 = *MEMORY[0x277D85DE8];
  sha1Copy = sha1;
  uTF8String = [sha1 UTF8String];
  v7 = strlen(uTF8String);
  CC_SHA1(uTF8String, v7, md);
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    v10 = [self intToBitString:md[i] length:8];
    [v8 appendFormat:@"%@", v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

@end