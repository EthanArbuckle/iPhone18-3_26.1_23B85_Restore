@interface UIWebClip(SBAdditions)
- (id)sb_iconImageFileProtectionType;
- (uint64_t)sb_markIconImageFileProtectionTypeAsNone;
@end

@implementation UIWebClip(SBAdditions)

- (id)sb_iconImageFileProtectionType
{
  iconImagePath = [self iconImagePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager attributesOfItemAtPath:iconImagePath error:0];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];

  return v4;
}

- (uint64_t)sb_markIconImageFileProtectionTypeAsNone
{
  v12[1] = *MEMORY[0x1E69E9840];
  iconImagePath = [self iconImagePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager attributesOfItemAtPath:iconImagePath error:0];

  v4 = *MEMORY[0x1E696A3A8];
  v5 = *MEMORY[0x1E696A3A0];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = v5;
    v12[0] = v4;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [defaultManager2 setAttributes:v9 ofItemAtPath:iconImagePath error:0];
  }

  return v7 ^ 1u;
}

@end