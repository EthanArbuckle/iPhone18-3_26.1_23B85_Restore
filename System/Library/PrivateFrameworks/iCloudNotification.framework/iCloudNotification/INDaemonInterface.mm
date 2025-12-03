@interface INDaemonInterface
+ (id)XPCInterface;
+ (id)_buildXPCInterface;
@end

@implementation INDaemonInterface

+ (id)XPCInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__INDaemonInterface_XPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (XPCInterface_onceToken != -1)
  {
    dispatch_once(&XPCInterface_onceToken, block);
  }

  v2 = __sINDaemonXPCInterface;

  return v2;
}

uint64_t __33__INDaemonInterface_XPCInterface__block_invoke(uint64_t result)
{
  if (!__sINDaemonXPCInterface)
  {
    __sINDaemonXPCInterface = [*(result + 32) _buildXPCInterface];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (id)_buildXPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288431300];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_syncFPItem_observeItemIDs_notifyURL_completion_ argumentIndex:1 ofReply:0];

  return v2;
}

@end