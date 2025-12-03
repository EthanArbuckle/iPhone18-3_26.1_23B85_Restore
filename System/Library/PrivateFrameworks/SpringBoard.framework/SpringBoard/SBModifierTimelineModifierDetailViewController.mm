@interface SBModifierTimelineModifierDetailViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setStackSnapshot:(id)snapshot;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBModifierTimelineModifierDetailViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBModifierTimelineModifierDetailViewController;
  [(SBModifierTimelineModifierDetailViewController *)&v9 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  view = [(SBModifierTimelineModifierDetailViewController *)self view];
  [view addSubview:self->_tableView];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"NoValueCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ValueCell"];
  [(UITableView *)self->_tableView contentInset];
  [(UITableView *)self->_tableView setContentInset:?];
  v7 = [[SBModifierTimelineTextDetailViewController alloc] initWithNibName:0 bundle:0];
  textViewController = self->_textViewController;
  self->_textViewController = v7;
}

- (void)setStackSnapshot:(id)snapshot
{
  objc_storeStrong(&self->_stackSnapshot, snapshot);
  snapshotCopy = snapshot;
  [(SBModifierTimelineModifierDetailViewController *)self loadViewIfNeeded];
  [(UITableView *)self->_tableView reloadData];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBModifierTimelineModifierDetailViewController;
  [(SBModifierTimelineModifierDetailViewController *)&v5 viewWillLayoutSubviews];
  tableView = self->_tableView;
  view = [(SBModifierTimelineModifierDetailViewController *)self view];
  [view bounds];
  [(UITableView *)tableView setFrame:?];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section > 1)
  {
    if (section == 2)
    {
      querySnapshot = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
      implementingQueryMethods = [querySnapshot implementingQueryMethods];
      goto LABEL_11;
    }

    if (section == 3)
    {
      querySnapshot = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
      implementingQueryMethods = [querySnapshot nonImplementingQueryMethods];
      goto LABEL_11;
    }
  }

  else
  {
    if (!section)
    {
      v9 = 1;
      goto LABEL_12;
    }

    if (section == 1)
    {
      querySnapshot = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
      implementingQueryMethods = [querySnapshot contextMethods];
LABEL_11:
      v10 = implementingQueryMethods;
      v9 = [implementingQueryMethods count];

      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = @"ValueCell";
  }

  else
  {
    v8 = @"NoValueCell";
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  textLabel = [v9 textLabel];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [textLabel setFont:v11];

  detailTextLabel = [v9 detailTextLabel];
  v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [detailTextLabel setFont:v13];

  querySnapshot = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      contextMethods = [querySnapshot contextMethods];
      v16 = [contextMethods objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      textLabel2 = [v9 textLabel];
      [textLabel2 setText:v16];

      contextMethodsToDescriptions = [querySnapshot contextMethodsToDescriptions];
LABEL_14:
      v22 = contextMethodsToDescriptions;
      v23 = [contextMethodsToDescriptions objectForKey:v16];
      v24 = [v23 description];

      detailTextLabel2 = [v9 detailTextLabel];
      v26 = detailTextLabel2;
      if (v24)
      {
        v27 = [v24 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
        [v26 setText:v27];

        v28 = 1;
      }

      else
      {
        [detailTextLabel2 setText:0];
        v28 = 0;
      }

      [v9 setAccessoryType:v28];
      goto LABEL_18;
    }

    if ([pathCopy section] == 2 || objc_msgSend(pathCopy, "section") == 3)
    {
      if ([pathCopy section] == 2)
      {
        [querySnapshot implementingQueryMethods];
      }

      else
      {
        [querySnapshot nonImplementingQueryMethods];
      }
      contextMethods = ;
      v16 = [contextMethods objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      textLabel3 = [v9 textLabel];
      [textLabel3 setText:v16];

      contextMethodsToDescriptions = [querySnapshot queryMethodsToDescriptions];
      goto LABEL_14;
    }
  }

  else
  {
    textLabel4 = [v9 textLabel];
    modifierDescription = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot modifierDescription];
    [textLabel4 setText:modifierDescription];

    [v9 setAccessoryType:1];
  }

LABEL_18:

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section > 3)
  {
    return &stru_283094718;
  }

  else
  {
    return off_2783AD4D8[section];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  querySnapshot = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      contextMethods = [querySnapshot contextMethods];
      modifierName = [contextMethods objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      contextMethodsToDescriptions = [querySnapshot contextMethodsToDescriptions];
      goto LABEL_11;
    }

    if ([pathCopy section] == 2)
    {
      implementingQueryMethods = [querySnapshot implementingQueryMethods];
LABEL_10:
      v12 = implementingQueryMethods;
      modifierName = [implementingQueryMethods objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      contextMethodsToDescriptions = [querySnapshot queryMethodsToDescriptions];
LABEL_11:
      v13 = contextMethodsToDescriptions;
      v14 = [contextMethodsToDescriptions objectForKey:modifierName];
      modifierDescription = [v14 description];

      if (!modifierDescription)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if ([pathCopy section] == 3)
    {
      implementingQueryMethods = [querySnapshot nonImplementingQueryMethods];
      goto LABEL_10;
    }

    modifierName = 0;
  }

  else
  {
    modifierName = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot modifierName];
    modifierDescription = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot modifierDescription];
    if (modifierDescription)
    {
LABEL_12:
      [(SBModifierTimelineTextDetailViewController *)self->_textViewController setTitle:modifierName];
      [(SBModifierTimelineTextDetailViewController *)self->_textViewController setText:modifierDescription];
      navigationController = [(SBModifierTimelineModifierDetailViewController *)self navigationController];
      [navigationController pushViewController:self->_textViewController animated:1];
    }
  }

LABEL_13:
}

@end