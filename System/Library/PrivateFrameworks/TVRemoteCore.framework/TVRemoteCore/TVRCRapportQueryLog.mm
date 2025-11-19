@interface TVRCRapportQueryLog
@end

@implementation TVRCRapportQueryLog

uint64_t ___TVRCRapportQueryLog_block_invoke()
{
  _TVRCRapportQueryLog_log = os_log_create("com.apple.TVRemoteCore", "RapportQuery");

  return MEMORY[0x2821F96F8]();
}

@end