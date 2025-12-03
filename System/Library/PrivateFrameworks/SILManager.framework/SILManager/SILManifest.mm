@interface SILManifest
+ (BOOL)usesSoftBoundary;
+ (BOOL)validateFlipBookStates:(id)states;
+ (_TtC10SILManager11SILManifest)manifest;
+ (void)setUsesSoftBoundary:(BOOL)boundary;
- (NSArray)indicators;
- (NSDictionary)cursorNameByAxCursorName;
- (_TtC10SILManager11SILManifest)init;
- (_TtC10SILManager11SILManifest)initWithIndicators:(id)indicators cursors:(id)cursors;
- (id)indicatorFromName:(id)name error:(id *)error;
- (id)indicatorFromType:(int64_t)type error:(id *)error;
- (int64_t)maxAssetBpr;
- (int64_t)maxAssetExtent;
- (int64_t)maxCursorExtent;
- (unsigned)cursorTypeFromName:(id)name;
- (void)setMaxCursorExtent:(int64_t)extent;
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

- (_TtC10SILManager11SILManifest)initWithIndicators:(id)indicators cursors:(id)cursors
{
  type metadata accessor for SILIndicatorDesc();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SILCursorDesc();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return SILManifest.init(indicators:cursors:)(v4, v5);
}

- (unsigned)cursorTypeFromName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LODWORD(v4) = SILManifest.cursorTypeFrom(name:)(v8);

  return v4;
}

- (id)indicatorFromType:(int64_t)type error:(id *)error
{
  selfCopy = self;
  v6 = SILManifest.indicatorFrom(type:)(type);

  return v6;
}

- (id)indicatorFromName:(id)name error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  v9 = SILManifest.indicatorFrom(name:)(v5, v7);

  return v9;
}

- (int64_t)maxAssetBpr
{
  selfCopy = self;
  v3 = SILManifest.maxAssetBpr()();

  return v3;
}

- (int64_t)maxCursorExtent
{
  selfCopy = self;
  v3 = SILManifest.maxCursorExtent.getter();

  return v3;
}

- (void)setMaxCursorExtent:(int64_t)extent
{
  v3 = self + OBJC_IVAR____TtC10SILManager11SILManifest____lazy_storage___maxCursorExtent;
  *v3 = extent;
  v3[8] = 0;
}

- (int64_t)maxAssetExtent
{
  selfCopy = self;
  v3 = SILManifest.maxAssetExtent()();

  return v3;
}

+ (BOOL)validateFlipBookStates:(id)states
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

+ (void)setUsesSoftBoundary:(BOOL)boundary
{
  if (one-time initialization token for usesSoftBoundary != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SILManifest.usesSoftBoundary = boundary;
}

- (_TtC10SILManager11SILManifest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end