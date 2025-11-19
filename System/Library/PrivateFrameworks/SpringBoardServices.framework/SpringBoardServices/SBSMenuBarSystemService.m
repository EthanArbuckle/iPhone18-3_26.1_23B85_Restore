@interface SBSMenuBarSystemService
- (BOOL)isMenuBarSupported;
- (void)toggleMenuBarVisibility;
@end

@implementation SBSMenuBarSystemService

- (BOOL)isMenuBarSupported
{
  v2 = [(SBSAbstractSystemService *)self client];
  v3 = [v2 isMenuBarSupported];

  return v3;
}

- (void)toggleMenuBarVisibility
{
  v2 = [(SBSAbstractSystemService *)self client];
  [v2 toggleMenuBarVisibility];
}

@end