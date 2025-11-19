@interface CSDSceneObservationManager
+ (CSDSceneObservationManager)shared;
- (BOOL)isBranchEmptyWithIndex:(int64_t)a3;
- (BOOL)isPassthroughRevealActive;
- (id)scenesInBranchWithIndex:(int64_t)a3;
- (int64_t)branchIndexForSceneID:(id)a3;
@end

@implementation CSDSceneObservationManager

+ (CSDSceneObservationManager)shared
{
  v2 = sub_10042AB1C();

  return v2;
}

- (BOOL)isPassthroughRevealActive
{
  v2 = self;
  v3 = sub_10042B15C();

  return v3 & 1;
}

- (int64_t)branchIndexForSceneID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10042BA04(v4, v6);

  return v8;
}

- (id)scenesInBranchWithIndex:(int64_t)a3
{
  v4 = self;
  sub_10042BAD0(a3);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (BOOL)isBranchEmptyWithIndex:(int64_t)a3
{
  v4 = self;
  sub_10042BBAC(a3);
  LOBYTE(a3) = v5;

  return a3 & 1;
}

@end