@interface SILManifest
+ (BOOL)usesSoftBoundary;
+ (BOOL)validateFlipBookStates:(id)a3;
+ (_TtC10SILManager11SILManifest)manifest;
+ (void)setUsesSoftBoundary:(BOOL)a3;
- (NSArray)indicators;
- (NSDictionary)cursorNameByAxCursorName;
- (_TtC10SILManager11SILManifest)init;
- (_TtC10SILManager11SILManifest)initWithIndicators:(id)a3 cursors:(id)a4;
- (id)indicatorFromName:(id)a3 error:(id *)a4;
- (id)indicatorFromType:(int64_t)a3 error:(id *)a4;
- (int64_t)maxAssetBpr;
- (int64_t)maxAssetExtent;
- (int64_t)maxCursorExtent;
- (unsigned)cursorTypeFromName:(id)a3;
- (void)setMaxCursorExtent:(int64_t)a3;
@end

@implementation SILManifest

- (NSArray)indicators
{
  type metadata accessor for SILIndicatorDesc();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSDictionary)cursorNameByAxCursorName
{

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC10SILManager11SILManifest)initWithIndicators:(id)a3 cursors:(id)a4
{
  type metadata accessor for SILIndicatorDesc();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SILCursorDesc();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return SILManifest.init(indicators:cursors:)(v4, v5);
}

- (unsigned)cursorTypeFromName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LODWORD(v4) = SILManifest.cursorTypeFrom(name:)(v8);

  return v4;
}

- (id)indicatorFromType:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  v6 = SILManifest.indicatorFrom(type:)(a3);

  return v6;
}

- (id)indicatorFromName:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  v9 = SILManifest.indicatorFrom(name:)(v5, v7);

  return v9;
}

- (int64_t)maxAssetBpr
{
  v2 = self;
  v3 = SILManifest.maxAssetBpr()();

  return v3;
}

- (int64_t)maxCursorExtent
{
  v2 = self;
  v3 = SILManifest.maxCursorExtent.getter();

  return v3;
}

- (void)setMaxCursorExtent:(int64_t)a3
{
  v3 = self + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent;
  *v3 = a3;
  v3[8] = 0;
}

- (int64_t)maxAssetExtent
{
  v2 = self;
  v3 = SILManifest.maxAssetExtent()();

  return v3;
}

+ (BOOL)validateFlipBookStates:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSaySiGGGMd);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized static SILManifest.validateFlipBookStates(_:)(v3);

  return v4 & 1;
}

+ (_TtC10SILManager11SILManifest)manifest
{
  if (one-time initialization token for manifest != -1)
  {
    swift_once();
  }

  v3 = static SILManifest.manifest;

  return v3;
}

+ (BOOL)usesSoftBoundary
{
  if (one-time initialization token for usesSoftBoundary != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static SILManifest.usesSoftBoundary;
}

+ (void)setUsesSoftBoundary:(BOOL)a3
{
  if (one-time initialization token for usesSoftBoundary != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SILManifest.usesSoftBoundary = a3;
}

- (_TtC10SILManager11SILManifest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end