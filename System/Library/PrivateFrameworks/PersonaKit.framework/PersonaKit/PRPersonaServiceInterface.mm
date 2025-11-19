@interface PRPersonaServiceInterface
+ (id)XPCInterface;
@end

@implementation PRPersonaServiceInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken != -1)
  {
    +[PRPersonaServiceInterface XPCInterface];
  }

  v3 = XPCInterface_interface;

  return v3;
}

void __41__PRPersonaServiceInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28702A9F0];
  v1 = XPCInterface_interface;
  XPCInterface_interface = v0;

  v2 = XPCInterface_interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_allLikenessesForPrimaryiCloudAccountWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = XPCInterface_interface;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_likenessesWithExternalIdentifier_completion_ argumentIndex:0 ofReply:1];
}

@end