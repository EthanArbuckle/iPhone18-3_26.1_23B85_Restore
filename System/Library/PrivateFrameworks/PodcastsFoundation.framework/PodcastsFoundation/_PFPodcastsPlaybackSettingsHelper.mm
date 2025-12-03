@interface _PFPodcastsPlaybackSettingsHelper
+ (id)settingsFor:(id)for defaultsProvider:(id)provider;
+ (void)saveSettings:(id)settings podcastUUID:(id)d defaultsProvider:(id)provider;
@end

@implementation _PFPodcastsPlaybackSettingsHelper

+ (id)settingsFor:(id)for defaultsProvider:(id)provider
{
  if (for)
  {
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D90B4FFC(v5, v7, provider, ObjCClassMetadata);
  swift_unknownObjectRelease();

  v9 = sub_1D917802C();

  return v9;
}

+ (void)saveSettings:(id)settings podcastUUID:(id)d defaultsProvider:(id)provider
{
  v7 = sub_1D917805C();
  if (d)
  {
    v8 = sub_1D917820C();
    d = v9;
  }

  else
  {
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  static PodcastsPlaybackSettingsHelper.saveSettings(_:podcastUUID:defaultsProvider:)(v7, v8, d, provider);
  swift_unknownObjectRelease();
}

@end