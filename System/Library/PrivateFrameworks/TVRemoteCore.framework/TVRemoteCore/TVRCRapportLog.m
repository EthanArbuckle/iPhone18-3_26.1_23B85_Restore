@interface TVRCRapportLog
@end

@implementation TVRCRapportLog

uint64_t ___TVRCRapportLog_block_invoke()
{
  _TVRCRapportLog_log = os_log_create("com.apple.TVRemoteCore", "Rapport");

  return MEMORY[0x2821F96F8]();
}

@end