@interface SBModifierTimelineModifierDetailViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setStackSnapshot:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v6 = [(SBModifierTimelineModifierDetailViewController *)self view];
  [v6 addSubview:self->_tableView];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"NoValueCell"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ValueCell"];
  [(UITableView *)self->_tableView contentInset];
  [(UITableView *)self->_tableView setContentInset:?];
  v7 = [[SBModifierTimelineTextDetailViewController alloc] initWithNibName:0 bundle:0];
  textViewController = self->_textViewController;
  self->_textViewController = v7;
}

- (void)setStackSnapshot:(id)a3
{
  objc_storeStrong(&self->_stackSnapshot, a3);
  v5 = a3;
  [(SBModifierTimelineModifierDetailViewController *)self loadViewIfNeeded];
  [(UITableView *)self->_tableView reloadData];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBModifierTimelineModifierDetailViewController;
  [(SBModifierTimelineModifierDetailViewController *)&v5 viewWillLayoutSubviews];
  tableView = self->_tableView;
  v4 = [(SBModifierTimelineModifierDetailViewController *)self view];
  [v4 bounds];
  [(UITableView *)tableView setFrame:?];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
      v8 = [v7 implementingQueryMethods];
      goto LABEL_11;
    }

    if (a4 == 3)
    {
      v7 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
      v8 = [v7 nonImplementingQueryMethods];
      goto LABEL_11;
    }
  }

  else
  {
    if (!a4)
    {
      v9 = 1;
      goto LABEL_12;
    }

    if (a4 == 1)
    {
      v7 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
      v8 = [v7 contextMethods];
LABEL_11:
      v10 = v8;
      v9 = [v8 count];

      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = @"ValueCell";
  }

  else
  {
    v8 = @"NoValueCell";
  }

  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [v9 textLabel];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v10 setFont:v11];

  v12 = [v9 detailTextLabel];
  v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [v12 setFont:v13];

  v14 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
  if ([v6 section])
  {
    if ([v6 section] == 1)
    {
      v15 = [v14 contextMethods];
      v16 = [v15 objectAtIndex:{objc_msgSend(v6, "row")}];
      v17 = [v9 textLabel];
      [v17 setText:v16];

      v18 = [v14 contextMethodsToDescriptions];
LABEL_14:
      v22 = v18;
      v23 = [v18 objectForKey:v16];
      v24 = [v23 description];

      v25 = [v9 detailTextLabel];
      v26 = v25;
      if (v24)
      {
        v27 = [v24 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
        [v26 setText:v27];

        v28 = 1;
      }

      else
      {
        [v25 setText:0];
        v28 = 0;
      }

      [v9 setAccessoryType:v28];
      goto LABEL_18;
    }

    if ([v6 section] == 2 || objc_msgSend(v6, "section") == 3)
    {
      if ([v6 section] == 2)
      {
        [v14 implementingQueryMethods];
      }

      else
      {
        [v14 nonImplementingQueryMethods];
      }
      v15 = ;
      v16 = [v15 objectAtIndex:{objc_msgSend(v6, "row")}];
      v21 = [v9 textLabel];
      [v21 setText:v16];

      v18 = [v14 queryMethodsToDescriptions];
      goto LABEL_14;
    }
  }

  else
  {
    v19 = [v9 textLabel];
    v20 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot modifierDescription];
    [v19 setText:v20];

    [v9 setAccessoryType:1];
  }

LABEL_18:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 > 3)
  {
    return &stru_283094718;
  }

  else
  {
    return off_2783AD4D8[a4];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  [a3 deselectRowAtIndexPath:v16 animated:1];
  v6 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot querySnapshot];
  if ([v16 section])
  {
    if ([v16 section] == 1)
    {
      v7 = [v6 contextMethods];
      v8 = [v7 objectAtIndex:{objc_msgSend(v16, "row")}];

      v9 = [v6 contextMethodsToDescriptions];
      goto LABEL_11;
    }

    if ([v16 section] == 2)
    {
      v11 = [v6 implementingQueryMethods];
LABEL_10:
      v12 = v11;
      v8 = [v11 objectAtIndex:{objc_msgSend(v16, "row")}];

      v9 = [v6 queryMethodsToDescriptions];
LABEL_11:
      v13 = v9;
      v14 = [v9 objectForKey:v8];
      v10 = [v14 description];

      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if ([v16 section] == 3)
    {
      v11 = [v6 nonImplementingQueryMethods];
      goto LABEL_10;
    }

    v8 = 0;
  }

  else
  {
    v8 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot modifierName];
    v10 = [(SBSwitcherModifierStackSnapshot *)self->_stackSnapshot modifierDescription];
    if (v10)
    {
LABEL_12:
      [(SBModifierTimelineTextDetailViewController *)self->_textViewController setTitle:v8];
      [(SBModifierTimelineTextDetailViewController *)self->_textViewController setText:v10];
      v15 = [(SBModifierTimelineModifierDetailViewController *)self navigationController];
      [v15 pushViewController:self->_textViewController animated:1];
    }
  }

LABEL_13:
}

@end