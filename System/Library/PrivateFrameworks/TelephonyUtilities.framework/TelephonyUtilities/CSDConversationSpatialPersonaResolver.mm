@interface CSDConversationSpatialPersonaResolver
- (NSString)description;
- (NSUUID)localParticipantNearbyClusterUUID;
- (int64_t)nearbyClusterState;
- (unint64_t)generationCounter;
- (unint64_t)setLocalSpatialPersonaEnabled:(BOOL)enabled;
- (void)configureWithLocalParticipantID:(unint64_t)d groupUUID:(id)iD spatialPersonaEnabled:(BOOL)enabled localParticipantCluster:(id)cluster;
- (void)reset;
- (void)setLocalParticipantCluster:(id)cluster;
- (void)setLocalParticipantNearbyClusterUUID:(id)d;
@end

@implementation CSDConversationSpatialPersonaResolver

- (NSUUID)localParticipantNearbyClusterUUID
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v10 - v5;
  sub_100292084();
  v7 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100015468(v6, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  return isa;
}

- (void)setLocalParticipantNearbyClusterUUID:(id)d
{
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v13 - v8;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = 1;
  }

  sub_10000AF74(v9, v11, 1, v10);
  selfCopy = self;
  sub_1002921B8(v9);
}

- (unint64_t)generationCounter
{
  selfCopy = self;
  sub_100292664();
  v4 = v3;

  return v4;
}

- (int64_t)nearbyClusterState
{
  selfCopy = self;
  sub_100292F54();
  v4 = v3;

  return v4;
}

- (void)reset
{
  selfCopy = self;
  sub_100293EE8();
}

- (void)configureWithLocalParticipantID:(unint64_t)d groupUUID:(id)iD spatialPersonaEnabled:(BOOL)enabled localParticipantCluster:(id)cluster
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  clusterCopy = cluster;
  selfCopy = self;
  sub_100294148();

  (*(v9 + 8))(v13, v8);
}

- (unint64_t)setLocalSpatialPersonaEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1002947CC();
  v5 = v4;

  return v5;
}

- (void)setLocalParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  selfCopy = self;
  sub_100294D80();
}

- (NSString)description
{
  selfCopy = self;
  CSDConversationSpatialPersonaResolver.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end