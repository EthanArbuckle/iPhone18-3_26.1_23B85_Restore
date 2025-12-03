@interface TTRIQuickLookPreviewController.DataSource
- (_TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource)init;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
@end

@implementation TTRIQuickLookPreviewController.DataSource

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
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

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v4 = *(self + OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems);
  if ((v4 & 0xC000000000000001) != 0)
  {
    selfCopy = self;
    v5 = MEMORY[0x223D44740](index, v4);

    goto LABEL_5;
  }

  if (index < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  v5 = *(v4 + 8 * index + 32);
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