@interface TripFeatureProcessorHelper
- (_TtC11PhotosGraph26TripFeatureProcessorHelper)init;
@end

@implementation TripFeatureProcessorHelper

- (_TtC11PhotosGraph26TripFeatureProcessorHelper)init
{
  v2 = MEMORY[0x277D84F98];
  *(&self->super.isa + OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache) = MEMORY[0x277D84F98];
  *(&self->super.isa + OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_areaCache) = v2;
  *(&self->super.isa + OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_numberOfMomentsAfterFilter) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TripFeatureProcessorHelper();
  return [(TripFeatureProcessorHelper *)&v4 init];
}

@end