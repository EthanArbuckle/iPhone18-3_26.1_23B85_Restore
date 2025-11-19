@interface SearchUILocalAudioCache
- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUILocalAudioCache

- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E69705E8];
  v7 = a4;
  v8 = a3;
  v10 = [v6 defaultMediaLibrary];
  v9 = [v10 entityWithSpotlightIdentifier:v8];

  (*(a4 + 2))(v7, v9);
}

@end