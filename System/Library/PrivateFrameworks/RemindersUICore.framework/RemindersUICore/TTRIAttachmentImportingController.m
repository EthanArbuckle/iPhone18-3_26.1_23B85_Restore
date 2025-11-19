@interface TTRIAttachmentImportingController
- (_TtC15RemindersUICore33TTRIAttachmentImportingController)init;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
@end

@implementation TTRIAttachmentImportingController

- (_TtC15RemindersUICore33TTRIAttachmentImportingController)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TTRIAttachmentImportingController *)&v5 init];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_21DAAC3CC();
  v6 = sub_21DBF9E6C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = self;
  v11[4] = sub_21DAAC510;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D0D74FC;
  v11[3] = &block_descriptor_50;
  v8 = _Block_copy(v11);
  v9 = self;
  v10 = a3;

  [v10 dismissViewControllerAnimated:1 completion:v8];

  _Block_release(v8);
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = self;
  v14[4] = sub_21DAAC50C;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D0D74FC;
  v14[3] = &block_descriptor_36_3;
  v8 = _Block_copy(v14);
  v9 = a4;
  v10 = self;
  v11 = v9;
  v12 = v10;
  v13 = a3;

  [v13 dismissViewControllerAnimated:1 completion:v8];

  _Block_release(v8);
}

@end