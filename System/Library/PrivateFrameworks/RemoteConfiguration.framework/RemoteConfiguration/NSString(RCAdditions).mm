@interface NSString(RCAdditions)
+ (id)rc_string:()RCAdditions;
+ (id)stringWithValue:()RCAdditions;
+ (uint64_t)rc_string:()RCAdditions isEqualToString:;
- (id)rc_numberFollowingString:()RCAdditions;
@end

@implementation NSString(RCAdditions)

+ (id)rc_string:()RCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)stringWithValue:()RCAdditions
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = RCDynamicCast(v4, v3);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = RCDynamicCast(v8, v3);
    v10 = v9;
    if (v9)
    {
      v7 = [v9 stringValue];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)rc_numberFollowingString:()RCAdditions
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(\\d*)", a3];
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:1 error:0];
  v6 = [v5 firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  if ([v6 numberOfRanges])
  {
    v7 = [v6 rangeAtIndex:1];
    v9 = [a1 substringWithRange:{v7, v8}];
    v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v10 setNumberStyle:1];
    v11 = [v10 numberFromString:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)rc_string:()RCAdditions isEqualToString:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

@end