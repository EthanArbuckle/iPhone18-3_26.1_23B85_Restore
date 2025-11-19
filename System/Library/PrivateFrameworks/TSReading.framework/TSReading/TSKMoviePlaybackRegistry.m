@interface TSKMoviePlaybackRegistry
+ (id)sharedMoviePlaybackRegistry;
- (void)objectWillBeginMoviePlayback:(id)a3;
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

- (void)objectWillBeginMoviePlayback:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];

  [v4 postNotificationName:@"TSKMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:self userInfo:0];
}

@end