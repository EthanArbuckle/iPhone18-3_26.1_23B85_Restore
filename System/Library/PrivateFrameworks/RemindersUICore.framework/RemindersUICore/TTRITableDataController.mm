@interface TTRITableDataController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC15RemindersUICore23TTRITableDataController)init;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation TTRITableDataController

- (_TtC15RemindersUICore23TTRITableDataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = _s15RemindersUICore23TTRITableDataControllerC16numberOfSections2inSiSo11UITableViewC_tF_0();

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_21DBE1C10(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  v12 = TTRITableDataController.tableView(_:cellForRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  TTRITableDataController.tableView(_:viewForHeaderInSection:)(v8, viewCopy, section);
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  TTRITableDataController.tableView(_:viewForFooterInSection:)(v8, viewCopy, section);
  v10 = v9;

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_21DBE1E54(section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_21DBE21A0(section);
  v9 = v8;

  return v9;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  if (sub_21DBD5884(v9))
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    ObjectType = swift_getObjectType();
    v19 = (*(v15 + 48))(v16, v17, viewCopy, ObjectType, v15);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    v19 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return v19 & 1;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  if (sub_21DBD5884(v9))
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    ObjectType = swift_getObjectType();
    v19 = (*(v15 + 64))(v16, v17, viewCopy, ObjectType, v15);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    v19 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return v19 & 1;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  selfCopy = self;
  if (sub_21DBD5210(v8))
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 88))(ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v13 & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  if (sub_21DBD5210(v9))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 96))(v9, viewCopy, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  if (sub_21DBD5884(v11))
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 72))(style, v18, v19, viewCopy, ObjectType, v17);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_21DBF5CAC();
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  TTRITableDataController.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)(v13, v10, v16);

  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20 = sub_21DBF5C6C();
  v19(v16, v7);

  return v20;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21DBF5CAC();
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  TTRITableDataController.tableView(_:moveRowAt:to:)(viewCopy, v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
}

@end