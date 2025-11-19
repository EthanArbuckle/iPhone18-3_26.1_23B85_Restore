@interface NSError(SUSpace)
+ (id)spaceErrorWithAdditionalSpaceRequired:()SUSpace originalError:;
- (BOOL)isSUCoreInsufficientSpace;
@end

@implementation NSError(SUSpace)

- (BOOL)isSUCoreInsufficientSpace
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277D646E0]])
  {
    v3 = [a1 code] == 8600;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)spaceErrorWithAdditionalSpaceRequired:()SUSpace originalError:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 domain];
  if (![v6 isEqualToString:@"com.apple.softwareupdateservices.errors"])
  {

    goto LABEL_5;
  }

  v7 = [v5 code];

  if (v7 != 6)
  {
LABEL_5:
    v8 = [SUUtility errorWithCode:6 originalError:v5];
    goto LABEL_6;
  }

  v8 = v5;
LABEL_6:
  v9 = v8;
  if (a3)
  {
    v10 = [v8 userInfo];
    v11 = [v10 objectForKey:@"SUAdditionalSpaceRequired"];

    if (!v11)
    {
      v17 = @"SUAdditionalSpaceRequired";
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      v18[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [SUUtility updateError:v9 withAdditionalUserInfo:v13];

      v9 = v14;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

@end