@interface UISceneProposalActionResponse
+ (id)responseWithPersistentIdentifier:(id)a3;
+ (id)responseWithSceneID:(id)a3;
- (NSString)persistentIdentifier;
- (UISceneProposalActionResponse)initWithInfo:(id)a3 error:(id)a4;
- (id)_responseWithPersistentIdentifier:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISceneProposalActionResponse

+ (id)responseWithPersistentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 _responseWithPersistentIdentifier:v4];

  return v6;
}

+ (id)responseWithSceneID:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 _responseWithPersistentIdentifier:v4];

  return v6;
}

- (id)_responseWithPersistentIdentifier:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:10];

  v9.receiver = self;
  v9.super_class = UISceneProposalActionResponse;
  v7 = [(UISceneProposalActionResponse *)&v9 initWithInfo:v6 error:0];

  return v7;
}

- (UISceneProposalActionResponse)initWithInfo:(id)a3 error:(id)a4
{
  v5 = [(UISceneProposalActionResponse *)self _responseWithPersistentIdentifier:0, a4];

  return v5;
}

- (NSString)persistentIdentifier
{
  v2 = [(UISceneProposalActionResponse *)self info];
  v3 = [v2 objectForSetting:10];
  v4 = v3;

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 10)
  {
    return @"sceneID";
  }

  else
  {
    return 0;
  }
}

@end