@interface SMArtwork
- (BOOL)isEqual:(id)equal;
- (SMArtwork)init;
- (int64_t)hash;
@end

@implementation SMArtwork

- (SMArtwork)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)hash
{
  Hasher.init()();
  type metadata accessor for Artwork();
  lazy protocol witness table accessor for type Artwork and conformance Artwork();
  selfCopy = self;
  dispatch thunk of Hashable.hash(into:)();
  Artwork.backgroundColor.getter();
  String.hash(into:)();

  Artwork.template.getter();
  String.hash(into:)();

  Artwork.textColor.getter();
  String.hash(into:)();

  v4 = Hasher.finalize()();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  outlined init with copy of Any?(v11, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_8;
  }

  type metadata accessor for ArtworkBridge();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = specialized static ArtworkBridge.== infix(_:_:)(self, v8);

LABEL_9:
  outlined destroy of Any?(v11);
  return v6 & 1;
}

@end