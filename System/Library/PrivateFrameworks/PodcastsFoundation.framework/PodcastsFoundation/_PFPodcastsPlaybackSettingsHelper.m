@interface _PFPodcastsPlaybackSettingsHelper
+ (id)settingsFor:(id)a3 defaultsProvider:(id)a4;
+ (void)saveSettings:(id)a3 podcastUUID:(id)a4 defaultsProvider:(id)a5;
@end

@implementation _PFPodcastsPlaybackSettingsHelper

+ (id)settingsFor:(id)a3 defaultsProvider:(id)a4
{
  if (a3)
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
  sub_1D90B4FFC(v5, v7, a4, ObjCClassMetadata);
  swift_unknownObjectRelease();

  v9 = sub_1D917802C();

  return v9;
}

+ (void)saveSettings:(id)a3 podcastUUID:(id)a4 defaultsProvider:(id)a5
{
  v7 = sub_1D917805C();
  if (a4)
  {
    v8 = sub_1D917820C();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  static PodcastsPlaybackSettingsHelper.saveSettings(_:podcastUUID:defaultsProvider:)(v7, v8, a4, a5);
  swift_unknownObjectRelease();
}

@end