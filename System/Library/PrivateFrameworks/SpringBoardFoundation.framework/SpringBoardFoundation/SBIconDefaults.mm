@interface SBIconDefaults
- (void)_bindAndRegisterDefaults;
- (void)clearLegacyDefaults;
@end

@implementation SBIconDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"maxIconListCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBMaxIconListCount" toDefaultValue:&unk_1F3D3E748 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didShowIconReorderAlert"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBDidShowReorderText" toDefaultValue:v5 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableLiveIcons"];
  v7 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBDisableLiveIcons" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"suppressAppShortcutTruncation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBSuppressAppShortcutTruncation" toDefaultValue:@"NO" options:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"suppressSetCurrentPage"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBFolderViewSuppressSetCurrentPage" toDefaultValue:v7 options:4];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"legacyIconState"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"iconState" toDefaultValue:0 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"legacyIconState2"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"iconState2" toDefaultValue:0 options:1];
}

- (void)clearLegacyDefaults
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v3 = [_store objectForKey:@"iconState"];
  if (v3)
  {
  }

  else
  {
    v4 = [_store objectForKey:@"iconState2"];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  [_store removeObjectForKey:@"iconState"];
  [_store removeObjectForKey:@"iconState2"];
  [(BSAbstractDefaultDomain *)self synchronizeDefaults];
LABEL_5:
}

@end