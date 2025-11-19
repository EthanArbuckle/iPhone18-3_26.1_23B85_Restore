@interface PXPeopleRemovalUtilities
+ (void)presentAlertFor:(id)a3 totalNumberOfPeople:(int64_t)a4 presentationEnvironment:(id)a5 undoManager:(id)a6 sourceItem:(id)a7 completion:(id)a8;
@end

@implementation PXPeopleRemovalUtilities

+ (void)presentAlertFor:(id)a3 totalNumberOfPeople:(int64_t)a4 presentationEnvironment:(id)a5 undoManager:(id)a6 sourceItem:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a8);
  _Block_copy(v13);
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a6;
  swift_unknownObjectRetain();
  sub_1A3D78DFC(v14, a4, a5, a6, a7, v13);
  _Block_release(v13);
  _Block_release(v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

@end