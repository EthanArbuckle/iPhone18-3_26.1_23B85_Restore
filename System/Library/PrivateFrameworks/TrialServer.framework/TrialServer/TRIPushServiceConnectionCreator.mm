@interface TRIPushServiceConnectionCreator
- (id)connectionWithDelegate:(id)a3 environment:(unsigned __int8)a4;
@end

@implementation TRIPushServiceConnectionCreator

- (id)connectionWithDelegate:(id)a3 environment:(unsigned __int8)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"com.apple.triald.aps.sandbox-environment"];

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Sandbox mode enabled for APS: %d", v12, 8u);
  }

  if (v6)
  {
    v8 = objc_alloc_init(TRISandboxedPushServiceConnection);
  }

  else
  {
    v8 = [[TRIPushServiceConnection alloc] initWithDelegate:v4];
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end