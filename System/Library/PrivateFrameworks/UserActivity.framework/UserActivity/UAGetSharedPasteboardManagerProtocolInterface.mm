@interface UAGetSharedPasteboardManagerProtocolInterface
@end

@implementation UAGetSharedPasteboardManagerProtocolInterface

void ___UAGetSharedPasteboardManagerProtocolInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A6CC00];
  v1 = _UAGetSharedPasteboardManagerProtocolInterface_result;
  _UAGetSharedPasteboardManagerProtocolInterface_result = v0;

  v13 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v14 = [v13 setWithObjects:{v12, v11, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [_UAGetSharedPasteboardManagerProtocolInterface_result setClasses:v14 forSelector:sel_localPasteboardTypesDidChange_forGeneration_ argumentIndex:0 ofReply:0];
  [_UAGetSharedPasteboardManagerProtocolInterface_result setClasses:v14 forSelector:sel_fetchRemotePasteboardTypesForProcess_withCompletion_ argumentIndex:0 ofReply:1];
  [_UAGetSharedPasteboardManagerProtocolInterface_result setClasses:v14 forSelector:sel_fetchRemotePasteboardForProcess_withCompletion_ argumentIndex:0 ofReply:1];
}

@end