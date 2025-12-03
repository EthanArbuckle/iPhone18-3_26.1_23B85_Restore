@interface SUScriptFamilySetupDelegate
- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
@end

@implementation SUScriptFamilySetupDelegate

- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  [controller setDelegate:{0, success}];

  [controller dismissViewControllerAnimated:1 completion:0];
}

@end