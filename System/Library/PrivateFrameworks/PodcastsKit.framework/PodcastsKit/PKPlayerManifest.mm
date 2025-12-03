@interface PKPlayerManifest
+ (id)manifestForPlayMyPodcastsWithSiriContext:(id)context;
+ (id)manifestForShowUuid:(id)uuid siriContext:(id)context;
+ (id)manifestForStationId:(id)id siriContext:(id)context;
- (PKPlayerManifest)init;
@end

@implementation PKPlayerManifest

+ (id)manifestForShowUuid:(id)uuid siriContext:(id)context
{
  v5 = sub_25EA1E648();
  v7 = v6;
  contextCopy = context;
  v9 = _s11PodcastsKit14PlayerManifestC19manifestForShowUuid_11siriContextACSS_AA04SiriJ0CSgtFZ_0(v5, v7, context);

  return v9;
}

+ (id)manifestForPlayMyPodcastsWithSiriContext:(id)context
{
  type metadata accessor for GenericPlayPodcasts();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  contextCopy = context;
  v7 = sub_25EA176BC(v4, 0, 0, context, v5, type metadata accessor for GenericPlayPodcasts, &off_2870B0760);

  return v7;
}

+ (id)manifestForStationId:(id)id siriContext:(id)context
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
  contextCopy = context;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = objc_allocWithZone(type metadata accessor for PlayerManifest());
  v14 = sub_25EA176BC(v12, 0, 0, context, v13, type metadata accessor for Station, &off_2870B0770);

  return v14;
}

- (PKPlayerManifest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end