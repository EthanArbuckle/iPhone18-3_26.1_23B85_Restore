@interface PBFDebugViewFactoryUtilities
+ (void)setupFactoryWithGalleryControllerState:(id)a3;
- (_TtC11PosterBoard28PBFDebugViewFactoryUtilities)init;
@end

@implementation PBFDebugViewFactoryUtilities

+ (void)setupFactoryWithGalleryControllerState:(id)a3
{
  sub_21B6C90C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD931C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B6D7FE0;
  *(v4 + 56) = type metadata accessor for PBFGalleryControllerState();
  *(v4 + 64) = sub_21B6393E8();
  *(v4 + 32) = a3;
  v5 = a3;
  sub_21B6C90B4();
}

- (_TtC11PosterBoard28PBFDebugViewFactoryUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PBFDebugViewFactoryUtilities();
  return [(PBFDebugViewFactoryUtilities *)&v3 init];
}

@end