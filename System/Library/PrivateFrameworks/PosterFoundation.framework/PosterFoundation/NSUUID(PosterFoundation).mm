@interface NSUUID(PosterFoundation)
+ (__CFString)pf_nonnullUUIDStringOrSentinel:()PosterFoundation;
+ (id)pf_UUIDFromArbitraryString:()PosterFoundation;
+ (id)pf_UUIDFromString:()PosterFoundation;
+ (id)pf_defaultInstanceIdentifier;
+ (id)pf_invalidInstanceIdentifier;
@end

@implementation NSUUID(PosterFoundation)

+ (id)pf_invalidInstanceIdentifier
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v0;
}

+ (id)pf_defaultInstanceIdentifier
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];

  return v0;
}

+ (id)pf_UUIDFromString:()PosterFoundation
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pf_UUIDFromArbitraryString:()PosterFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  uTF8String = [a3 UTF8String];
  v4 = strlen(uTF8String);
  CC_SHA256(uTF8String, v4, md);
  v5 = objc_opt_new();
  for (i = 0; i != 32; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v5 substringWithRange:{0, 8}];
  v10 = [v5 substringWithRange:{8, 4}];
  v11 = [v5 substringWithRange:{12, 4}];
  v12 = [v5 substringWithRange:{16, 4}];
  v13 = [v5 substringWithRange:{20, 12}];
  v14 = [v8 stringWithFormat:@"%@-%@-%@-%@-%@", v9, v10, v11, v12, v13];
  v15 = [v7 initWithUUIDString:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (__CFString)pf_nonnullUUIDStringOrSentinel:()PosterFoundation
{
  uUIDString = [a3 UUIDString];
  v4 = uUIDString;
  if (uUIDString)
  {
    v5 = uUIDString;
  }

  else
  {
    v5 = @"(Null UUID)";
  }

  v6 = v5;

  return v5;
}

@end