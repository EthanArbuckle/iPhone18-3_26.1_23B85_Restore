@interface PGTripTitleGenerator
+ (id)titleForFeaturedLocationNodes:(id)nodes momentNodes:(id)momentNodes locationHelper:(id)helper error:(id *)error;
+ (id)titleForTripNodeAsCollection:(id)collection locationHelper:(id)helper error:(id *)error;
+ (id)titleTupleForDayHighlightGroupNode:(id)node locationHelper:(id)helper error:(id *)error;
- (PGTripTitleGenerator)init;
@end

@implementation PGTripTitleGenerator

+ (id)titleForTripNodeAsCollection:(id)collection locationHelper:(id)helper error:(id *)error
{
  swift_getObjCClassMetadata();
  collectionCopy = collection;
  helperCopy = helper;
  tripFeatureNodes = [collectionCopy tripFeatureNodes];
  momentNodes = [collectionCopy momentNodes];
  static TripTitleGenerator.title(for:momentNodes:locationHelper:)(tripFeatureNodes, momentNodes, helperCopy);

  v11 = sub_22F740DF0();

  return v11;
}

+ (id)titleForFeaturedLocationNodes:(id)nodes momentNodes:(id)momentNodes locationHelper:(id)helper error:(id *)error
{
  swift_getObjCClassMetadata();
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  helperCopy = helper;
  static TripTitleGenerator.title(for:momentNodes:locationHelper:)(nodesCopy, momentNodesCopy, helperCopy);

  v12 = sub_22F740DF0();

  return v12;
}

+ (id)titleTupleForDayHighlightGroupNode:(id)node locationHelper:(id)helper error:(id *)error
{
  swift_getObjCClassMetadata();
  nodeCopy = node;
  helperCopy = helper;
  static TripTitleGenerator.titleTuple(highlightGroupNode:locationHelper:)(nodeCopy, helperCopy);
  v10 = v9;

  return v10;
}

- (PGTripTitleGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TripTitleGenerator();
  return [(PGTripTitleGenerator *)&v3 init];
}

@end