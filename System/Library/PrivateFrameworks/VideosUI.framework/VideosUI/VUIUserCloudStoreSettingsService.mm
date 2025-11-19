@interface VUIUserCloudStoreSettingsService
+ (void)fetchWithCompletionHandler:(id)a3;
+ (void)updateWithSettings:(NSDictionary *)a3 completionHandler:(id)a4;
@end

@implementation VUIUserCloudStoreSettingsService

+ (void)updateWithSettings:(NSDictionary *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1E38364EC(&unk_1E42B1BB0, v7);
}

+ (void)fetchWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1E38364EC(&unk_1E42B1BA0, v5);
}

@end