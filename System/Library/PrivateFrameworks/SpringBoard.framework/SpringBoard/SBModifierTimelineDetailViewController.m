@interface SBModifierTimelineDetailViewController
- (id)_prettyStringForEventPredicateDetails:(id)a3;
- (id)_stackSnapshotAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_numberOfModifiersInStackSnapshot:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setEntry:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBModifierTimelineDetailViewController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = SBModifierTimelineDetailViewController;
  [(SBModifierTimelineDetailViewController *)&v13 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView contentInset];
  [(UITableView *)self->_tableView setContentInset:?];
  v6 = [(SBModifierTimelineDetailViewController *)self view];
  [v6 addSubview:self->_tableView];

  v7 = [[SBModifierTimelineModifierDetailViewController alloc] initWithNibName:0 bundle:0];
  modifierDetailViewController = self->_modifierDetailViewController;
  self->_modifierDetailViewController = v7;

  v9 = [[SBModifierTimelineTextDetailViewController alloc] initWithNibName:0 bundle:0];
  textDetailViewController = self->_textDetailViewController;
  self->_textDetailViewController = v9;

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Done" style:2 target:self action:sel__done];
  v12 = [(SBModifierTimelineDetailViewController *)self navigationItem];
  [v12 setRightBarButtonItem:v11];
}

- (void)setEntry:(id)a3
{
  objc_storeStrong(&self->_entry, a3);
  v5 = a3;
  [(SBModifierTimelineDetailViewController *)self loadViewIfNeeded];
  [(UITableView *)self->_tableView reloadData];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBModifierTimelineDetailViewController;
  [(SBModifierTimelineDetailViewController *)&v5 viewWillLayoutSubviews];
  tableView = self->_tableView;
  v4 = [(SBModifierTimelineDetailViewController *)self view];
  [v4 bounds];
  [(UITableView *)tableView setFrame:?];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 > 2)
  {
    return &stru_283094718;
  }

  else
  {
    return off_2783C3DF0[a4];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = [(SBSwitcherModifierTimelineEntry *)self->_entry responseSnapshot];
      v9 = [v7 responseNames];
      v8 = [v9 count];
    }

    else
    {
      if (a4 != 1)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v7 = [(SBSwitcherModifierTimelineEntry *)self->_entry stackSnapshotAfterEvent];
      v8 = [(SBModifierTimelineDetailViewController *)self _numberOfModifiersInStackSnapshot:v7];
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_9:

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"Cell"];
  }

  [v7 setAccessoryType:1];
  if (![v6 section])
  {
    v8 = [v7 textLabel];
    v9 = [(SBSwitcherModifierTimelineEntry *)self->_entry eventSnapshot];
    v10 = [v9 eventName];
    v11 = v8;
    goto LABEL_7;
  }

  if ([v6 section] == 1)
  {
    v8 = -[SBModifierTimelineDetailViewController _stackSnapshotAtIndex:](self, "_stackSnapshotAtIndex:", [v6 row]);
    v9 = [v7 textLabel];
    v10 = [v8 modifierName];
    v11 = v9;
LABEL_7:
    [v11 setText:v10];
LABEL_8:

    goto LABEL_9;
  }

  if ([v6 section] == 2)
  {
    v8 = [v7 textLabel];
    v9 = [(SBSwitcherModifierTimelineEntry *)self->_entry responseSnapshot];
    v10 = [v9 responseNames];
    v13 = [v10 objectAtIndex:{objc_msgSend(v6, "row")}];
    [v8 setText:v13];

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23 = a4;
  [a3 deselectRowAtIndexPath:v23 animated:1];
  if (![v23 section])
  {
    v6 = [(SBSwitcherModifierTimelineEntry *)self->_entry eventSnapshot];
    v7 = 1008;
    [(SBModifierTimelineTextDetailViewController *)self->_textDetailViewController prepareForReuse];
    textDetailViewController = self->_textDetailViewController;
    v11 = [v6 eventName];
    [(SBModifierTimelineTextDetailViewController *)textDetailViewController setTitle:v11];

    v12 = self->_textDetailViewController;
    v13 = [(SBModifierTimelineDetailViewController *)self _prettyStringForEventPredicateDetails:v6];
    [(SBModifierTimelineTextDetailViewController *)v12 setAttributedText:v13];

    goto LABEL_5;
  }

  if ([v23 section] == 1)
  {
    v6 = -[SBModifierTimelineDetailViewController _stackSnapshotAtIndex:](self, "_stackSnapshotAtIndex:", [v23 row]);
    v7 = 1000;
    modifierDetailViewController = self->_modifierDetailViewController;
    v9 = [v6 modifierName];
    [(SBModifierTimelineModifierDetailViewController *)modifierDetailViewController setTitle:v9];

    [(SBModifierTimelineModifierDetailViewController *)self->_modifierDetailViewController setStackSnapshot:v6];
LABEL_5:
    v14 = [(SBModifierTimelineDetailViewController *)self navigationController];
    [v14 pushViewController:*(&self->super.super.super.isa + v7) animated:1];

LABEL_6:
    goto LABEL_7;
  }

  if ([v23 section] == 2)
  {
    [(SBModifierTimelineTextDetailViewController *)self->_textDetailViewController prepareForReuse];
    v15 = self->_textDetailViewController;
    v16 = [(SBSwitcherModifierTimelineEntry *)self->_entry responseSnapshot];
    v17 = [v16 responseNames];
    v18 = [v17 objectAtIndex:{objc_msgSend(v23, "row")}];
    [(SBModifierTimelineTextDetailViewController *)v15 setTitle:v18];

    v19 = self->_textDetailViewController;
    v20 = [(SBSwitcherModifierTimelineEntry *)self->_entry responseSnapshot];
    v21 = [v20 responseDescriptions];
    v22 = [v21 objectAtIndex:{objc_msgSend(v23, "row")}];
    [(SBModifierTimelineTextDetailViewController *)v19 setText:v22];

    v6 = [(SBModifierTimelineDetailViewController *)self navigationController];
    [v6 pushViewController:self->_textDetailViewController animated:1];
    goto LABEL_6;
  }

LABEL_7:
}

- (int64_t)_numberOfModifiersInStackSnapshot:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SBModifierTimelineDetailViewController__numberOfModifiersInStackSnapshot___block_invoke;
  v6[3] = &unk_2783C2C58;
  v6[4] = &v7;
  [v3 enumerateModifierSnapshots:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_stackSnapshotAtIndex:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__144;
  v13 = __Block_byref_object_dispose__144;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v4 = [(SBSwitcherModifierTimelineEntry *)self->_entry stackSnapshotAfterEvent];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SBModifierTimelineDetailViewController__stackSnapshotAtIndex___block_invoke;
  v7[3] = &unk_2783C3DD0;
  v7[5] = &v9;
  v7[6] = a3;
  v7[4] = v8;
  [v4 enumerateModifierSnapshots:v7];

  v5 = v10[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __64__SBModifierTimelineDetailViewController__stackSnapshotAtIndex___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 == a1[6])
  {
    v9 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v6 = v9;
    *a3 = 1;
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 + 1;
}

- (id)_prettyStringForEventPredicateDetails:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v3;
  v5 = [v3 eventDescription];
  v6 = [v5 componentsSeparatedByString:@"\n"];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = *MEMORY[0x277D740C0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 hasSuffix:@"YES"])
        {
          [MEMORY[0x277D75348] systemGreenColor];
        }

        else
        {
          [MEMORY[0x277D75348] labelColor];
        }
        v13 = ;
        v14 = objc_alloc(MEMORY[0x277CCA898]);
        v25 = v10;
        v26 = v13;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v16 = [v14 initWithString:v12 attributes:v15];
        [v4 appendAttributedString:v16];

        v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
        [v4 appendAttributedString:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  return v4;
}

@end