@interface VUIAppInstallerHelper
- (VUIAppInstallerHelper)initWithPunchoutAction:(id)action;
@end

@implementation VUIAppInstallerHelper

- (VUIAppInstallerHelper)initWithPunchoutAction:(id)action
{
  actionCopy = action;
  AppInstallerHelper.init(punchoutAction:)();
  return result;
}

@end