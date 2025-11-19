@interface _STSpeechTranslatorClientXPCInterface
+ (NSXPCInterface)interface;
@end

@implementation _STSpeechTranslatorClientXPCInterface

+ (NSXPCInterface)interface
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C1DBE0];
  v3 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_willStartTranslatedAudioWithMetadata_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_producedTranscription_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_producedTranslation_ argumentIndex:0 ofReply:0];

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

@end