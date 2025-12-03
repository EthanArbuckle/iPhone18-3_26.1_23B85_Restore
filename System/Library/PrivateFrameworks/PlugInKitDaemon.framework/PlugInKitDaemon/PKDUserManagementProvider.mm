@interface PKDUserManagementProvider
- (BOOL)isMultiUser;
- (id)listAllPersonaAttributesWithError:(id *)error;
- (unint64_t)personaGenerationIdentifierWithError:(id *)error;
@end

@implementation PKDUserManagementProvider

- (BOOL)isMultiUser
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = +[UMUserManager sharedManager];
  isMultiUser = [v2 isMultiUser];

  return isMultiUser;
}

- (id)listAllPersonaAttributesWithError:(id *)error
{
  v4 = +[UMUserManager sharedManager];
  v5 = [v4 listAllPersonaAttributesWithError:error];

  return v5;
}

- (unint64_t)personaGenerationIdentifierWithError:(id *)error
{
  v4 = +[UMUserManager sharedManager];
  v5 = [v4 personaGenerationIdentifierWithError:error];

  return v5;
}

@end