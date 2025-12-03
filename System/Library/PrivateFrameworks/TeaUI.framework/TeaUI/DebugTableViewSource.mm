@interface DebugTableViewSource
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation DebugTableViewSource

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1D816DC00();

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1D816DDAC();

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D816DF2C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1D816E824();
  v8 = v7;

  if (v8)
  {
    v9 = sub_1D8190EE4();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  sub_1D816E9D0(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end