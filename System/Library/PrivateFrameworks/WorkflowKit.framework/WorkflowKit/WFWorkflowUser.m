@interface WFWorkflowUser
+ (id)JSONKeyPathsByPropertyKey;
- (NSString)displayName;
- (NSString)twitterDisplayName;
- (NSString)websiteDisplayName;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation WFWorkflowUser

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(MTLModel *)[WFMutableWorkflowUser allocWithZone:?]];
  v5 = [(MTLModel *)self dictionaryValue];
  [(WFMutableWorkflowUser *)v4 setValuesForKeysWithDictionary:v5];

  return v4;
}

- (NSString)displayName
{
  v3 = [(WFWorkflowUser *)self websiteDisplayName];
  v4 = [(WFWorkflowUser *)self fullName];
  v5 = [(WFWorkflowUser *)self twitterDisplayName];
  v6 = [(WFWorkflowUser *)self mainIdentity];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 == 2)
  {
    v7 = v4;
    goto LABEL_6;
  }

  v7 = v3;
  if (v6 == 1)
  {
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (![v8 length] && objc_msgSend(v4, "length"))
  {
    v9 = v4;

    v8 = v9;
  }

  if (![v8 length] && objc_msgSend(v5, "length"))
  {
    v10 = v5;

    v8 = v10;
  }

  if (![v8 length] && objc_msgSend(v3, "length"))
  {
    v11 = v3;

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
  v2 = [(WFWorkflowUser *)self twitter];
  if ([v2 length])
  {
    v3 = [@"@" stringByAppendingString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)websiteDisplayName
{
  v2 = [(WFWorkflowUser *)self websiteURL];
  v3 = [v2 wf_displayStringWithCharacterLimit:0x7FFFFFFFFFFFFFFFLL];

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