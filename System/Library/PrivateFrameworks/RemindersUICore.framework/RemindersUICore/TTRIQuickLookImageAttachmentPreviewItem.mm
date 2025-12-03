@interface TTRIQuickLookImageAttachmentPreviewItem
- (BOOL)isEqual:(id)equal;
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
- (_TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem)init;
@end

@implementation TTRIQuickLookImageAttachmentPreviewItem

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = TTRIQuickLookImageAttachmentPreviewItem.isEqual(_:)(v8);

  sub_21D1A8418(v8);
  return v6 & 1;
}

- (_TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSURL)previewItemURL
{
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL, v3, v5);
  v8 = sub_21DBF53FC();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)previewItemTitle
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v2 = sub_21DBFA12C();

  return v2;
}

@end