@interface SBSMenuBarSystemService
- (BOOL)isMenuBarSupported;
- (void)toggleMenuBarVisibility;
@end

@implementation SBSMenuBarSystemService

- (BOOL)isMenuBarSupported
{
  client = [(SBSAbstractSystemService *)self client];
  isMenuBarSupported = [client isMenuBarSupported];

  return isMenuBarSupported;
}

- (void)toggleMenuBarVisibility
{
  client = [(SBSAbstractSystemService *)self client];
  [client toggleMenuBarVisibility];
}

@end