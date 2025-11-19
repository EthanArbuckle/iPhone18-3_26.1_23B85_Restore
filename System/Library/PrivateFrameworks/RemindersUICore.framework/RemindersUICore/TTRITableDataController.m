@interface TTRITableDataController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC15RemindersUICore23TTRITableDataController)init;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation TTRITableDataController

- (_TtC15RemindersUICore23TTRITableDataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s15RemindersUICore23TTRITableDataControllerC16numberOfSections2inSiSo11UITableViewC_tF_0();

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_21DBE1C10(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  v12 = TTRITableDataController.tableView(_:cellForRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  TTRITableDataController.tableView(_:viewForHeaderInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  TTRITableDataController.tableView(_:viewForFooterInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_21DBE1E54(a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_21DBE21A0(a4);
  v9 = v8;

  return v9;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  if (sub_21DBD5884(v9))
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    ObjectType = swift_getObjectType();
    v19 = (*(v15 + 48))(v16, v17, v10, ObjectType, v15);

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

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  if (sub_21DBD5884(v9))
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    ObjectType = swift_getObjectType();
    v19 = (*(v15 + 64))(v16, v17, v10, ObjectType, v15);

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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v9 = self;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = self;
  if (sub_21DBD5210(v9))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 96))(v9, v10, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v12 = a3;
  v13 = self;
  if (sub_21DBD5884(v11))
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 72))(a4, v18, v19, v12, ObjectType, v17);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
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
  v17 = a3;
  v18 = self;
  TTRITableDataController.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)(v13, v10, v16);

  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20 = sub_21DBF5C6C();
  v19(v16, v7);

  return v20;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = sub_21DBF5D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21DBF5CAC();
  sub_21DBF5CAC();
  v14 = a3;
  v15 = self;
  TTRITableDataController.tableView(_:moveRowAt:to:)(v14, v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
}

@end