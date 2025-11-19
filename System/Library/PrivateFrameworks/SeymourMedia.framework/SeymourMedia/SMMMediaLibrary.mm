@interface SMMMediaLibrary
+ (void)addGlobalPlaylistWithIdentifier:(id)a3 completion:(id)a4;
+ (void)addTrackWithIdentifier:(int64_t)a3 completion:(id)a4;
@end

@implementation SMMMediaLibrary

+ (void)addTrackWithIdentifier:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SMMMediaLibrary_addTrackWithIdentifier_completion___block_invoke;
  v8[3] = &unk_277DA2AB0;
  v9 = v5;
  v7 = v5;
  [v6 addStoreItem:a3 andAddTracksToCloudLibrary:1 withCompletion:v8];
}

+ (void)addGlobalPlaylistWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CD5E10];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultMediaLibrary];
  [v8 addGlobalPlaylistWithID:v7 andAddToCloudLibrary:1 completion:v6];
}

@end