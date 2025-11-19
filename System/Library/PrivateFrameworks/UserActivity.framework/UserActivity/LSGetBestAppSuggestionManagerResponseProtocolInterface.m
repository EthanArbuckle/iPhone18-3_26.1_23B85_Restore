@interface LSGetBestAppSuggestionManagerResponseProtocolInterface
@end

@implementation LSGetBestAppSuggestionManagerResponseProtocolInterface

void ___LSGetBestAppSuggestionManagerResponseProtocolInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A69500];
  v1 = _LSGetBestAppSuggestionManagerResponseProtocolInterface_result;
  _LSGetBestAppSuggestionManagerResponseProtocolInterface_result = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [_LSGetBestAppSuggestionManagerResponseProtocolInterface_result setClasses:v4 forSelector:sel_notifyBestAppsChanged_when_confidence_ argumentIndex:0 ofReply:0];
}

@end