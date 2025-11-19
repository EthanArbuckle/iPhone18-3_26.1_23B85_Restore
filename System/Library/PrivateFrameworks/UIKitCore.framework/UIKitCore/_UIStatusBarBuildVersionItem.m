@interface _UIStatusBarBuildVersionItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (_UIStatusBarStringView)buildVersionView;
- (void)_create_buildVersionView;
@end

@implementation _UIStatusBarBuildVersionItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v4 = _UIKitPreferencesOnce();
  v5 = [v4 objectForKey:@"UIStatusBarShowBuildVersion"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (_UIStatusBarStringView)buildVersionView
{
  buildVersionView = self->_buildVersionView;
  if (!buildVersionView)
  {
    [(_UIStatusBarBuildVersionItem *)self _create_buildVersionView];
    buildVersionView = self->_buildVersionView;
  }

  return buildVersionView;
}

- (void)_create_buildVersionView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  buildVersionView = self->_buildVersionView;
  self->_buildVersionView = v4;

  v6 = +[UIDevice currentDevice];
  v7 = [v6 buildVersion];

  [(_UIStatusBarStringView *)self->_buildVersionView setText:v7];
}

@end