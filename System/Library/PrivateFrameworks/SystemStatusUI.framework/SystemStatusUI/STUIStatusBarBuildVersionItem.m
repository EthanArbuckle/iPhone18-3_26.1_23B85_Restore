@interface STUIStatusBarBuildVersionItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (STUIStatusBarStringView)buildVersionView;
- (void)_create_buildVersionView;
@end

@implementation STUIStatusBarBuildVersionItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  if (qword_280C1E8C8 != -1)
  {
    dispatch_once(&qword_280C1E8C8, &__block_literal_global_15);
  }

  return _MergedGlobals_58;
}

void __63__STUIStatusBarBuildVersionItem_canEnableDisplayItem_fromData___block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v0 = [v2 dictionaryRepresentation];
  v1 = [v0 objectForKey:@"UIStatusBarShowBuildVersion"];
  _MergedGlobals_58 = [v1 BOOLValue];
}

- (STUIStatusBarStringView)buildVersionView
{
  buildVersionView = self->_buildVersionView;
  if (!buildVersionView)
  {
    [(STUIStatusBarBuildVersionItem *)self _create_buildVersionView];
    buildVersionView = self->_buildVersionView;
  }

  return buildVersionView;
}

- (void)_create_buildVersionView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  buildVersionView = self->_buildVersionView;
  self->_buildVersionView = v4;

  v6 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v6 buildVersion];

  if (MEMORY[0x26D6A38C0]("[STUIStatusBarBuildVersionItem _create_buildVersionView]"))
  {
    if (qword_280C1E8D0 != -1)
    {
      dispatch_once(&qword_280C1E8D0, &__block_literal_global_26_0);
    }

    if (byte_280C1E8C1 == 1)
    {
      v7 = [v8 stringByAppendingString:@"*"];

      v8 = v7;
    }
  }

  [(STUIStatusBarStringView *)self->_buildVersionView setText:v8];
}

@end