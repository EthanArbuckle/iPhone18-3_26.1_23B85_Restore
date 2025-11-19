@interface ShareSheetIsMessagesApp
@end

@implementation ShareSheetIsMessagesApp

void ___ShareSheetIsMessagesApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"MobileSMS"];
  _ShareSheetIsMessagesApp_isMessages = v0;
}

@end