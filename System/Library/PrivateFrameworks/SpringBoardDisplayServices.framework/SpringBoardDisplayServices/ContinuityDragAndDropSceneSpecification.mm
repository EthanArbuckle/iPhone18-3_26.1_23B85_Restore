@interface ContinuityDragAndDropSceneSpecification
- (NSArray)defaultExtensions;
- (NSString)uiSceneSessionRole;
- (_TtC26SpringBoardDisplayServices39ContinuityDragAndDropSceneSpecification)init;
@end

@implementation ContinuityDragAndDropSceneSpecification

- (NSString)uiSceneSessionRole
{
  if (qword_280434110 != -1)
  {
    swift_once();
  }

  v3 = qword_280434178;

  return v3;
}

- (NSArray)defaultExtensions
{
  selfCopy = self;
  v3 = sub_26B9E3728();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434120, &qword_26B9E6E48);
    v4 = sub_26B9E691C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC26SpringBoardDisplayServices39ContinuityDragAndDropSceneSpecification)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ContinuityDragAndDropSceneSpecification *)&v3 init];
}

@end