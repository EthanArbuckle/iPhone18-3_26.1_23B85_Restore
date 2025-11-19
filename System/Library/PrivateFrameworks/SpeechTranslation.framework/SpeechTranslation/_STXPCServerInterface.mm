@interface _STXPCServerInterface
+ (NSXPCInterface)interface;
@end

@implementation _STXPCServerInterface

+ (NSXPCInterface)interface
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C1F0D0];
  v3 = +[_STSpeechTranslatorXPCInterface interface];
  [v2 setInterface:v3 forSelector:sel_makePeerWithConfiguration_inReply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v6 = [v4 setWithArray:v5];
  [v2 setClasses:v6 forSelector:sel_makePeerWithConfiguration_inReply_ argumentIndex:0 ofReply:0];

  v7 = +[_STSpeechTranslatorXPCInterface interface];
  [v2 setInterface:v7 forSelector:sel_makePeerWithIdentifier_inReply_ argumentIndex:0 ofReply:1];

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end