@interface CSDSceneObservationManager
+ (CSDSceneObservationManager)shared;
- (BOOL)isBranchEmptyWithIndex:(int64_t)index;
- (BOOL)isPassthroughRevealActive;
- (id)scenesInBranchWithIndex:(int64_t)index;
- (int64_t)branchIndexForSceneID:(id)d;
@end

@implementation CSDSceneObservationManager

+ (CSDSceneObservationManager)shared
{
  v2 = sub_10042AB1C();

  return v2;
}

- (BOOL)isPassthroughRevealActive
{
  selfCopy = self;
  v3 = sub_10042B15C();

  return v3 & 1;
}

- (int64_t)branchIndexForSceneID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10042BA04(v4, v6);

  return v8;
}

- (id)scenesInBranchWithIndex:(int64_t)index
{
  selfCopy = self;
  sub_10042BAD0(index);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (BOOL)isBranchEmptyWithIndex:(int64_t)index
{
  selfCopy = self;
  sub_10042BBAC(index);
  LOBYTE(index) = v5;

  return index & 1;
}

@end