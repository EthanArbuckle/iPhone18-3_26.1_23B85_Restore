@interface FedStatsUtil
+ (id)intToBitString:(int)a3 length:(int)a4;
+ (id)sha1:(id)a3;
+ (int)bitStringToInt:(id)a3;
@end

@implementation FedStatsUtil

+ (int)bitStringToInt:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = v4 - 1;
    do
    {
      v9 = [v3 substringWithRange:{v6, 1}];
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

+ (id)intToBitString:(int)a3 length:(int)a4
{
  v6 = +[NSMutableString string];
  if (a4 >= 1)
  {
    v7 = 0;
    do
    {
      if ((a3 >> v7))
      {
        v8 = @"1";
      }

      else
      {
        v8 = @"0";
      }

      [v6 insertString:v8 atIndex:0];
      ++v7;
    }

    while (a4 != v7);
  }

  return v6;
}

+ (id)sha1:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  CC_SHA1(v6, v7, md);
  v8 = [NSMutableString stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    v10 = [a1 intToBitString:md[i] length:8];
    [v8 appendFormat:@"%@", v10];
  }

  return v8;
}

@end