@interface VUIUserCloudStoreSettingsService
+ (void)fetchWithCompletionHandler:(id)handler;
+ (void)updateWithSettings:(NSDictionary *)settings completionHandler:(id)handler;
@end

@implementation VUIUserCloudStoreSettingsService

+ (void)updateWithSettings:(NSDictionary *)settings completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = settings;
  v7[3] = v6;
  v7[4] = self;
  settingsCopy = settings;

  sub_1E38364EC(&unk_1E42B1BB0, v7);
}

+ (void)fetchWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_1E38364EC(&unk_1E42B1BA0, v5);
}

@end