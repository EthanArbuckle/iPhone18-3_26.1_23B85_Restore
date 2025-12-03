@interface PGPlaceZeroKeywordGenerator
- (PGPlaceZeroKeywordGenerator)init;
- (PGPlaceZeroKeywordGenerator)initWithGraph:(id)graph photoLibrary:(id)library searchComputationCache:(id)cache options:(id)options;
- (id)generatePlaceZeroKeywords;
@end

@implementation PGPlaceZeroKeywordGenerator

- (PGPlaceZeroKeywordGenerator)initWithGraph:(id)graph photoLibrary:(id)library searchComputationCache:(id)cache options:(id)options
{
  v9 = sub_22F740CA0();
  graphCopy = graph;
  v11 = sub_22F3CF06C(graphCopy, library, cache, v9);

  return v11;
}

- (id)generatePlaceZeroKeywords
{
  selfCopy = self;
  sub_22F3C5AF0();

  type metadata accessor for PlaceZeroKeyword();
  v3 = sub_22F741160();

  return v3;
}

- (PGPlaceZeroKeywordGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end