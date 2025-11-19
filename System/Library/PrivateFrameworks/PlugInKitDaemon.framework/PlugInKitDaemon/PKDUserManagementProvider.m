@interface PKDUserManagementProvider
- (BOOL)isMultiUser;
- (id)listAllPersonaAttributesWithError:(id *)a3;
- (unint64_t)personaGenerationIdentifierWithError:(id *)a3;
@end

@implementation PKDUserManagementProvider

- (BOOL)isMultiUser
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = +[UMUserManager sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

- (id)listAllPersonaAttributesWithError:(id *)a3
{
  v4 = +[UMUserManager sharedManager];
  v5 = [v4 listAllPersonaAttributesWithError:a3];

  return v5;
}

- (unint64_t)personaGenerationIdentifierWithError:(id *)a3
{
  v4 = +[UMUserManager sharedManager];
  v5 = [v4 personaGenerationIdentifierWithError:a3];

  return v5;
}

@end