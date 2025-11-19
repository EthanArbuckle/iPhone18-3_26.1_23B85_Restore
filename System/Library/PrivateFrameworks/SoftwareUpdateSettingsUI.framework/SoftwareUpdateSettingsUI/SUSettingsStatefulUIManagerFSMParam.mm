@interface SUSettingsStatefulUIManagerFSMParam
- (SUSettingsStatefulUIManagerFSMParam)initWithRetriesCount:(unsigned __int8)a3;
@end

@implementation SUSettingsStatefulUIManagerFSMParam

- (SUSettingsStatefulUIManagerFSMParam)initWithRetriesCount:(unsigned __int8)a3
{
  v8 = a2;
  v7 = a3;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUSettingsStatefulUIManagerFSMParam;
  v5 = [(SUSettingsStatefulUIManagerFSMParam *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    [(SUSettingsStatefulUIManagerFSMParam *)v9 setRetries:v7];
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

@end