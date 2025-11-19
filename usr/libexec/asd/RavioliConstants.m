@interface RavioliConstants
+ (NSUUID)ravioliUUID;
@end

@implementation RavioliConstants

+ (NSUUID)ravioliUUID
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static RavioliConstants.ravioliUUID.getter(v6);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);

  return v7.super.isa;
}

@end