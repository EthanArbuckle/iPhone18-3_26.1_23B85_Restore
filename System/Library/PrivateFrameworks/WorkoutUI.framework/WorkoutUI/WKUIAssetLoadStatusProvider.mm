@interface WKUIAssetLoadStatusProvider
- (WKUIAssetLoadStatusProvider)init;
- (WKUIAssetLoadStatusProvider)initWithWorkoutIdentifier:(id)identifier dependencies:(id)dependencies assetLoadStatus:(int64_t)status bundleReason:(int64_t)reason;
- (int64_t)assetLoadStatus;
- (void)setAssetLoadStatus:(int64_t)status;
@end

@implementation WKUIAssetLoadStatusProvider

- (int64_t)assetLoadStatus
{
  v3 = OBJC_IVAR___WKUIAssetLoadStatusProvider_assetLoadStatus;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAssetLoadStatus:(int64_t)status
{
  v5 = OBJC_IVAR___WKUIAssetLoadStatusProvider_assetLoadStatus;
  swift_beginAccess();
  *(&self->super.isa + v5) = status;
}

- (WKUIAssetLoadStatusProvider)initWithWorkoutIdentifier:(id)identifier dependencies:(id)dependencies assetLoadStatus:(int64_t)status bundleReason:(int64_t)reason
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = *(dependencies + OBJC_IVAR___SMDependencies_dependencies);
  v12 = objc_allocWithZone(type metadata accessor for WorkoutAssetLoadStatusProvider());

  v13 = WorkoutAssetLoadStatusProvider.init(workoutIdentifier:dependencies:assetLoadStatus:bundleReason:)(v8, v10, v11, status, 2);
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