@interface USLog
+ (id)client;
+ (id)clientUI;
@end

@implementation USLog

+ (id)client
{
  if (client_onceToken != -1)
  {
    +[USLog client];
  }

  v3 = client__client;

  return v3;
}

uint64_t __15__USLog_client__block_invoke()
{
  client__client = os_log_create(kUSLogSubsystem, "client");

  return MEMORY[0x2821F96F8]();
}

+ (id)clientUI
{
  if (clientUI_onceToken != -1)
  {
    +[USLog clientUI];
  }

  v3 = clientUI__client;

  return v3;
}

uint64_t __17__USLog_clientUI__block_invoke()
{
  clientUI__client = os_log_create(kUSLogSubsystem, "clientUI");

  return MEMORY[0x2821F96F8]();
}

@end