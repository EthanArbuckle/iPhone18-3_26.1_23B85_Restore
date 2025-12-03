@interface SearchUILocalAudioCache
- (void)computeObjectForKey:(id)key completionHandler:(id)handler;
@end

@implementation SearchUILocalAudioCache

- (void)computeObjectForKey:(id)key completionHandler:(id)handler
{
  v6 = MEMORY[0x1E69705E8];
  handlerCopy = handler;
  keyCopy = key;
  defaultMediaLibrary = [v6 defaultMediaLibrary];
  v9 = [defaultMediaLibrary entityWithSpotlightIdentifier:keyCopy];

  (*(handler + 2))(handlerCopy, v9);
}

@end