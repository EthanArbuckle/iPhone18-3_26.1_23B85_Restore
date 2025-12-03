@interface PGTripLocationScore
- (PGTripLocationScore)init;
- (PGTripLocationScore)initWithLocationNode:(id)node score:(double)score momentNodes:(id)nodes;
@end

@implementation PGTripLocationScore

- (PGTripLocationScore)initWithLocationNode:(id)node score:(double)score momentNodes:(id)nodes
{
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v8 = sub_22F741180();
  *(&self->super.isa + OBJC_IVAR___PGTripLocationScore_locationNode) = node;
  *(&self->super.isa + OBJC_IVAR___PGTripLocationScore__score) = score;
  *(&self->super.isa + OBJC_IVAR___PGTripLocationScore_momentNodes) = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TripLocationScore();
  nodeCopy = node;
  return [(PGTripLocationScore *)&v11 init];
}

- (PGTripLocationScore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end