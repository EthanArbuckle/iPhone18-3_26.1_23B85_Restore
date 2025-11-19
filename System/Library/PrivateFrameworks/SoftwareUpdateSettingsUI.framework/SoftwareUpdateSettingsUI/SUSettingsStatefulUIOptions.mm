@interface SUSettingsStatefulUIOptions
- (SUSettingsStatefulUIOptions)init;
@end

@implementation SUSettingsStatefulUIOptions

- (SUSettingsStatefulUIOptions)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = SUSettingsStatefulUIOptions;
  v4 = [(SUSettingsStatefulUIOptions *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_shouldHideNonTargetedUpdatesPostUserSelection = 1;
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

@end