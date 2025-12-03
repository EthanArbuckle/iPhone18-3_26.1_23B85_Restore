@interface PXRetailExperienceInterface
+ (id)createRetailExperienceViewController:(id)controller;
- (_TtC12PhotosUICore27PXRetailExperienceInterface)init;
@end

@implementation PXRetailExperienceInterface

+ (id)createRetailExperienceViewController:(id)controller
{
  v3 = _Block_copy(controller);
  *(swift_allocObject() + 16) = v3;
  v4 = sub_1A4774934();

  return v4;
}

- (_TtC12PhotosUICore27PXRetailExperienceInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXRetailExperienceInterface();
  return [(PXRetailExperienceInterface *)&v3 init];
}

@end