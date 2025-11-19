@interface PKPlayerManifest
+ (id)manifestForPlayMyPodcastsWithSiriContext:(id)a3;
+ (id)manifestForShowUuid:(id)a3 siriContext:(id)a4;
+ (id)manifestForStationId:(id)a3 siriContext:(id)a4;
- (PKPlayerManifest)init;
@end

@implementation PKPlayerManifest

+ (id)manifestForShowUuid:(id)a3 siriContext:(id)a4
{
  v5 = sub_25EA1E648();
  v7 = v6;
  v8 = a4;
  v9 = _s11PodcastsKit14PlayerManifestC19manifestForShowUuid_11siriContextACSS_AA04SiriJ0CSgtFZ_0(v5, v7, a4);

  return v9;
}

+ (id)manifestForPlayMyPodcastsWithSiriContext:(id)a3
{
  type metadata accessor for GenericPlayPodcasts();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v6 = a3;
  v7 = sub_25EA176BC(v4, 0, 0, a3, v5, type metadata accessor for GenericPlayPodcasts, &off_2870B0760);

  return v7;
}

+ (id)manifestForStationId:(id)a3 siriContext:(id)a4
{
  v5 = sub_25EA1E648();
  v7 = v6;
  v8 = type metadata accessor for Station();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___PKStation_id];
  *v10 = v5;
  v10[1] = v7;
  v16.receiver = v9;
  v16.super_class = v8;
  v11 = a4;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v14 = sub_25EA176BC(v12, 0, 0, a4, v13, type metadata accessor for Station, &off_2870B0770);

  return v14;
}

- (PKPlayerManifest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end