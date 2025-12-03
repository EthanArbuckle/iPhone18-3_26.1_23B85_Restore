@interface TTRIQuickLookPreviewItem
- (BOOL)isEqual:(id)equal;
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
- (_TtC15RemindersUICore24TTRIQuickLookPreviewItem)init;
@end

@implementation TTRIQuickLookPreviewItem

- (NSURL)previewItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_21D0D3954(self + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL, &v12 - v4, &qword_27CE5EA20);
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_21DBF53FC();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (NSString)previewItemTitle
{
  if (*(self + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle + 8))
  {
    sub_21DBF8E0C();
    v2 = sub_21DBFA12C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

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

  v6 = sub_21D8BC074(v8);

  sub_21D0CF7E0(v8, &qword_27CE5C690);
  return v6;
}

- (_TtC15RemindersUICore24TTRIQuickLookPreviewItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end