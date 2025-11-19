@interface WKUIAssetLoadStatusProvider
- (WKUIAssetLoadStatusProvider)init;
- (WKUIAssetLoadStatusProvider)initWithWorkoutIdentifier:(id)a3 dependencies:(id)a4 assetLoadStatus:(int64_t)a5 bundleReason:(int64_t)a6;
- (int64_t)assetLoadStatus;
- (void)setAssetLoadStatus:(int64_t)a3;
@end

@implementation WKUIAssetLoadStatusProvider

- (int64_t)assetLoadStatus
{
  v3 = OBJC_IVAR___WKUIAssetLoadStatusProvider_assetLoadStatus;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAssetLoadStatus:(int64_t)a3
{
  v5 = OBJC_IVAR___WKUIAssetLoadStatusProvider_assetLoadStatus;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (WKUIAssetLoadStatusProvider)initWithWorkoutIdentifier:(id)a3 dependencies:(id)a4 assetLoadStatus:(int64_t)a5 bundleReason:(int64_t)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = *(a4 + OBJC_IVAR___SMDependencies_dependencies);
  v12 = objc_allocWithZone(type metadata accessor for WorkoutAssetLoadStatusProvider());

  v13 = WorkoutAssetLoadStatusProvider.init(workoutIdentifier:dependencies:assetLoadStatus:bundleReason:)(v8, v10, v11, a5, 2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

- (WKUIAssetLoadStatusProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end