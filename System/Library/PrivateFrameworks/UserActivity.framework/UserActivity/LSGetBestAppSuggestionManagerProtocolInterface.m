@interface LSGetBestAppSuggestionManagerProtocolInterface
@end

@implementation LSGetBestAppSuggestionManagerProtocolInterface

void ___LSGetBestAppSuggestionManagerProtocolInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A6CBA0];
  v1 = _LSGetBestAppSuggestionManagerProtocolInterface_result;
  _LSGetBestAppSuggestionManagerProtocolInterface_result = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [_LSGetBestAppSuggestionManagerProtocolInterface_result setClasses:v4 forSelector:sel_doDetermineBestAppSuggestionWithCompletionHandler_ argumentIndex:0 ofReply:1];
}

@end