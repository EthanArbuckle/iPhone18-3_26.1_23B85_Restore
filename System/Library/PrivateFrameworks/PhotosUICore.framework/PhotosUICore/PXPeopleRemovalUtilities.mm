@interface PXPeopleRemovalUtilities
+ (void)presentAlertFor:(id)for totalNumberOfPeople:(int64_t)people presentationEnvironment:(id)environment undoManager:(id)manager sourceItem:(id)item completion:(id)completion;
@end

@implementation PXPeopleRemovalUtilities

+ (void)presentAlertFor:(id)for totalNumberOfPeople:(int64_t)people presentationEnvironment:(id)environment undoManager:(id)manager sourceItem:(id)item completion:(id)completion
{
  v13 = _Block_copy(completion);
  _Block_copy(v13);
  forCopy = for;
  swift_unknownObjectRetain();
  managerCopy = manager;
  swift_unknownObjectRetain();
  sub_1A3D78DFC(forCopy, people, environment, manager, item, v13);
  _Block_release(v13);
  _Block_release(v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

@end