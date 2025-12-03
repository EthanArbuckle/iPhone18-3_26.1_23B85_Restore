@interface WFTableView.Coordinator
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
@end

@implementation WFTableView.Coordinator

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v6 = sub_2746380BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463805C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_27442E6E0();

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v7 = sub_2746380BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_27463805C();
  sub_27463805C();
  viewCopy = view;
  selfCopy = self;
  sub_27442E890(viewCopy, v13);

  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20 = sub_27463804C();
  v19(v16, v7);

  return v20;
}

@end