@interface PGPlaceZeroKeywordGenerator
- (PGPlaceZeroKeywordGenerator)init;
- (PGPlaceZeroKeywordGenerator)initWithGraph:(id)a3 photoLibrary:(id)a4 searchComputationCache:(id)a5 options:(id)a6;
- (id)generatePlaceZeroKeywords;
@end

@implementation PGPlaceZeroKeywordGenerator

- (PGPlaceZeroKeywordGenerator)initWithGraph:(id)a3 photoLibrary:(id)a4 searchComputationCache:(id)a5 options:(id)a6
{
  v9 = sub_22F740CA0();
  v10 = a3;
  v11 = sub_22F3CF06C(v10, a4, a5, v9);

  return v11;
}

- (id)generatePlaceZeroKeywords
{
  v2 = self;
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