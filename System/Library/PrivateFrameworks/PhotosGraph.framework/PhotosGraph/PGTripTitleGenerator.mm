@interface PGTripTitleGenerator
+ (id)titleForFeaturedLocationNodes:(id)a3 momentNodes:(id)a4 locationHelper:(id)a5 error:(id *)a6;
+ (id)titleForTripNodeAsCollection:(id)a3 locationHelper:(id)a4 error:(id *)a5;
+ (id)titleTupleForDayHighlightGroupNode:(id)a3 locationHelper:(id)a4 error:(id *)a5;
- (PGTripTitleGenerator)init;
@end

@implementation PGTripTitleGenerator

+ (id)titleForTripNodeAsCollection:(id)a3 locationHelper:(id)a4 error:(id *)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = a4;
  v9 = [v7 tripFeatureNodes];
  v10 = [v7 momentNodes];
  static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v9, v10, v8);

  v11 = sub_22F740DF0();

  return v11;
}

+ (id)titleForFeaturedLocationNodes:(id)a3 momentNodes:(id)a4 locationHelper:(id)a5 error:(id *)a6
{
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  v11 = a5;
  static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v9, v10, v11);

  v12 = sub_22F740DF0();

  return v12;
}

+ (id)titleTupleForDayHighlightGroupNode:(id)a3 locationHelper:(id)a4 error:(id *)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = a4;
  static TripTitleGenerator.titleTuple(highlightGroupNode:locationHelper:)(v7, v8);
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