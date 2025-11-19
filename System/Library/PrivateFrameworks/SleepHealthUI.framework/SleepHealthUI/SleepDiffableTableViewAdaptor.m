@interface SleepDiffableTableViewAdaptor
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation SleepDiffableTableViewAdaptor

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_269CA6690();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98340();

  sub_269CA5FCC();

  (*(v7 + 8))(v9, v6);
}

@end