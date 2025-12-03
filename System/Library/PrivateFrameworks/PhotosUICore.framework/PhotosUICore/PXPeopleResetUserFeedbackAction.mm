@interface PXPeopleResetUserFeedbackAction
- (NSString)actionIdentifier;
- (NSString)localizedActionName;
- (PXPeopleResetUserFeedbackAction)initWithPerson:(id)person;
- (PXPeopleResetUserFeedbackAction)initWithPhotoLibrary:(id)library;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXPeopleResetUserFeedbackAction

- (NSString)actionIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (NSString)localizedActionName
{
  selfCopy = self;
  sub_1A42F8D6C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1A524C634();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXPeopleResetUserFeedbackAction)initWithPerson:(id)person
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PXPeopleResetUserFeedbackAction_person) = person;
  personCopy = person;
  result = [personCopy photoLibrary];
  if (result)
  {
    v8 = result;
    v10.receiver = self;
    v10.super_class = ObjectType;
    v9 = [(PXPhotosAction *)&v10 initWithPhotoLibrary:result];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A42F90E4(sub_1A3FABAE4, v5, sub_1A42F931C, &block_descriptor_156, &block_descriptor_3_4);
}

- (void)performUndo:(id)undo
{
  v4 = _Block_copy(undo);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A42F90E4(sub_1A3D7A9AC, v5, sub_1A42F93B4, &block_descriptor_7_0, &block_descriptor_10_6);
}

- (PXPeopleResetUserFeedbackAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end