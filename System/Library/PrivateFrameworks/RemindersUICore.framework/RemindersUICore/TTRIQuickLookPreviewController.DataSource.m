@interface TTRIQuickLookPreviewController.DataSource
- (_TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource)init;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
@end

@implementation TTRIQuickLookPreviewController.DataSource

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems);
  if (v3 >> 62)
  {
    return sub_21DBFBD7C();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v4 = *(self + OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = self;
    v5 = MEMORY[0x223D44740](a4, v4);

    goto LABEL_5;
  }

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  v5 = *(v4 + 8 * a4 + 32);
  swift_unknownObjectRetain();
LABEL_5:

  return v5;
}

- (_TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end