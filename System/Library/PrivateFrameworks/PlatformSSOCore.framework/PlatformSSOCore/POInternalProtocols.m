@interface POInternalProtocols
+ (id)interfaceWithInternalProtocol:(id)a3;
@end

@implementation POInternalProtocols

+ (id)interfaceWithInternalProtocol:(id)a3
{
  v3 = a3;
  if (interfaceWithInternalProtocol__onceToken != -1)
  {
    +[POInternalProtocols interfaceWithInternalProtocol:];
  }

  v4 = [interfaceWithInternalProtocol__protocolCache objectForKey:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v3];
    [interfaceWithInternalProtocol__protocolCache setObject:v4 forKey:v3];
  }

  v5 = v4;

  return v5;
}

uint64_t __53__POInternalProtocols_interfaceWithInternalProtocol___block_invoke()
{
  interfaceWithInternalProtocol__protocolCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end