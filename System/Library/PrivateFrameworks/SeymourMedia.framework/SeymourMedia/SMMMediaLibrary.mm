@interface SMMMediaLibrary
+ (void)addGlobalPlaylistWithIdentifier:(id)identifier completion:(id)completion;
+ (void)addTrackWithIdentifier:(int64_t)identifier completion:(id)completion;
@end

@implementation SMMMediaLibrary

+ (void)addTrackWithIdentifier:(int64_t)identifier completion:(id)completion
{
  completionCopy = completion;
  defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SMMMediaLibrary_addTrackWithIdentifier_completion___block_invoke;
  v8[3] = &unk_277DA2AB0;
  v9 = completionCopy;
  v7 = completionCopy;
  [defaultMediaLibrary addStoreItem:identifier andAddTracksToCloudLibrary:1 withCompletion:v8];
}

+ (void)addGlobalPlaylistWithIdentifier:(id)identifier completion:(id)completion
{
  v5 = MEMORY[0x277CD5E10];
  completionCopy = completion;
  identifierCopy = identifier;
  defaultMediaLibrary = [v5 defaultMediaLibrary];
  [defaultMediaLibrary addGlobalPlaylistWithID:identifierCopy andAddToCloudLibrary:1 completion:completionCopy];
}

@end