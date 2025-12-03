@interface TSKMoviePlaybackRegistry
+ (id)sharedMoviePlaybackRegistry;
- (void)objectWillBeginMoviePlayback:(id)playback;
@end

@implementation TSKMoviePlaybackRegistry

+ (id)sharedMoviePlaybackRegistry
{
  if (sharedMoviePlaybackRegistry_createSharedMoviePlaybackRegistryOnce != -1)
  {
    +[TSKMoviePlaybackRegistry sharedMoviePlaybackRegistry];
  }

  return sharedMoviePlaybackRegistry_sharedMoviePlaybackRegistry;
}

TSKMoviePlaybackRegistry *__55__TSKMoviePlaybackRegistry_sharedMoviePlaybackRegistry__block_invoke()
{
  result = objc_alloc_init(TSKMoviePlaybackRegistry);
  sharedMoviePlaybackRegistry_sharedMoviePlaybackRegistry = result;
  return result;
}

- (void)objectWillBeginMoviePlayback:(id)playback
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSKMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:self userInfo:0];
}

@end