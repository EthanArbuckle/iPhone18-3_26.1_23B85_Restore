@interface UISceneProposalActionResponse
+ (id)responseWithPersistentIdentifier:(id)identifier;
+ (id)responseWithSceneID:(id)d;
- (NSString)persistentIdentifier;
- (UISceneProposalActionResponse)initWithInfo:(id)info error:(id)error;
- (id)_responseWithPersistentIdentifier:(id)identifier;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISceneProposalActionResponse

+ (id)responseWithPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self alloc];
  v6 = [v5 _responseWithPersistentIdentifier:identifierCopy];

  return v6;
}

+ (id)responseWithSceneID:(id)d
{
  dCopy = d;
  v5 = [self alloc];
  v6 = [v5 _responseWithPersistentIdentifier:dCopy];

  return v6;
}

- (id)_responseWithPersistentIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E698E700];
  identifierCopy = identifier;
  v6 = objc_alloc_init(v4);
  [v6 setObject:identifierCopy forSetting:10];

  v9.receiver = self;
  v9.super_class = UISceneProposalActionResponse;
  v7 = [(UISceneProposalActionResponse *)&v9 initWithInfo:v6 error:0];

  return v7;
}

- (UISceneProposalActionResponse)initWithInfo:(id)info error:(id)error
{
  error = [(UISceneProposalActionResponse *)self _responseWithPersistentIdentifier:0, error];

  return error;
}

- (NSString)persistentIdentifier
{
  info = [(UISceneProposalActionResponse *)self info];
  v3 = [info objectForSetting:10];
  v4 = v3;

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 10)
  {
    return @"sceneID";
  }

  else
  {
    return 0;
  }
}

@end