@interface WFWorkflowUser
+ (id)JSONKeyPathsByPropertyKey;
- (NSString)displayName;
- (NSString)twitterDisplayName;
- (NSString)websiteDisplayName;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation WFWorkflowUser

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(MTLModel *)[WFMutableWorkflowUser allocWithZone:?]];
  dictionaryValue = [(MTLModel *)self dictionaryValue];
  [(WFMutableWorkflowUser *)v4 setValuesForKeysWithDictionary:dictionaryValue];

  return v4;
}

- (NSString)displayName
{
  websiteDisplayName = [(WFWorkflowUser *)self websiteDisplayName];
  fullName = [(WFWorkflowUser *)self fullName];
  twitterDisplayName = [(WFWorkflowUser *)self twitterDisplayName];
  mainIdentity = [(WFWorkflowUser *)self mainIdentity];
  v7 = twitterDisplayName;
  if (!mainIdentity)
  {
    goto LABEL_6;
  }

  if (mainIdentity == 2)
  {
    v7 = fullName;
    goto LABEL_6;
  }

  v7 = websiteDisplayName;
  if (mainIdentity == 1)
  {
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (![v8 length] && objc_msgSend(fullName, "length"))
  {
    v9 = fullName;

    v8 = v9;
  }

  if (![v8 length] && objc_msgSend(twitterDisplayName, "length"))
  {
    v10 = twitterDisplayName;

    v8 = v10;
  }

  if (![v8 length] && objc_msgSend(websiteDisplayName, "length"))
  {
    v11 = websiteDisplayName;

    v8 = v11;
  }

  if ([v8 length])
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (NSString)twitterDisplayName
{
  twitter = [(WFWorkflowUser *)self twitter];
  if ([twitter length])
  {
    v3 = [@"@" stringByAppendingString:twitter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)websiteDisplayName
{
  websiteURL = [(WFWorkflowUser *)self websiteURL];
  v3 = [websiteURL wf_displayStringWithCharacterLimit:0x7FFFFFFFFFFFFFFFLL];

  return v3;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v6[9] = *MEMORY[0x1E69E9840];
  v5[0] = @"identifier";
  v5[1] = @"email";
  v6[0] = @"uuid";
  v6[1] = @"email";
  v5[2] = @"fullName";
  v5[3] = @"twitter";
  v6[2] = @"fullName";
  v6[3] = @"twitter";
  v5[4] = @"websiteURL";
  v5[5] = @"mainIdentity";
  v6[4] = @"website";
  v6[5] = @"mainIdentity";
  v5[6] = @"profileImageURL";
  v5[7] = @"isAdmin";
  v6[6] = @"profileImage";
  v6[7] = @"isAdmin";
  v5[8] = @"dateJoined";
  v6[8] = @"dateJoined";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:9];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end