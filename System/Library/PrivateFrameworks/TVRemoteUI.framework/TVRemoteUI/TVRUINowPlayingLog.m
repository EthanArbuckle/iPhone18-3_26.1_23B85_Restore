@interface TVRUINowPlayingLog
@end

@implementation TVRUINowPlayingLog

uint64_t ___TVRUINowPlayingLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "NowPlaying");
  v1 = _TVRUINowPlayingLog_log;
  _TVRUINowPlayingLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end