@interface PTUIModuleController
- (PTUIModuleController)initWithSettings:(id)a3 presentingRow:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_initWithModule:(id)a3 presentingRow:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadWithModule:(id)a3;
- (void)_updateTitle;
- (void)module:(id)a3 didInsertRows:(id)a4 deleteRows:(id)a5;
- (void)module:(id)a3 didInsertSections:(id)a4 deleteSections:(id)a5;
- (void)moduleDidReload:(id)a3;
- (void)showActionsForRowTableViewCell:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation PTUIModuleController

- (PTUIModuleController)initWithSettings:(id)a3 presentingRow:(id)a4
{
  v6 = MEMORY[0x277D43218];
  v7 = a4;
  v8 = [v6 moduleWithSettings:a3];
  v9 = [(PTUIModuleController *)self _initWithModule:v8 presentingRow:v7];

  return v9;
}

- (id)_initWithModule:(id)a3 presentingRow:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PTUIModuleController;
  v9 = [(PTUIModuleController *)&v14 initWithStyle:2];
  p_isa = &v9->super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_module, a3);
    [p_isa[130] addObserver:p_isa];
    v11 = [v8 title];
    v12 = v11;
    if (!v11)
    {
      v12 = [p_isa[130] title];
    }

    objc_storeStrong(p_isa + 131, v12);
    if (!v11)
    {
    }

    [p_isa _updateTitle];
  }

  return p_isa;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PTUIModuleController;
  [(PTUIModuleController *)&v3 viewDidLayoutSubviews];
  [(PTUIModuleController *)self _updateTitle];
}

- (void)_reloadWithModule:(id)a3
{
  v4 = a3;
  [(PTModule *)self->_module removeObserver:self];
  module = self->_module;
  self->_module = v4;
  v6 = v4;

  v7 = [(PTModule *)self->_module title];
  title = self->_title;
  self->_title = v7;

  [(PTUIModuleController *)self _updateTitle];
  [(PTModule *)self->_module addObserver:self];

  v9 = [(PTUIModuleController *)self tableView];
  [v9 reloadData];
}

- (void)_updateTitle
{
  v3 = [(PTUIModuleController *)self navigationItem];
  [v3 setTitle:self->_title];

  v4 = [(PTUIModuleController *)self view];
  v5 = [v4 window];
  v7 = [v5 windowScene];

  v6 = v7;
  if (v7)
  {
    [v7 setTitle:self->_title];
    v6 = v7;
  }
}

- (void)module:(id)a3 didInsertSections:(id)a4 deleteSections:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PTUIModuleController *)self tableView];
  [v9 beginUpdates];

  v10 = [(PTUIModuleController *)self tableView];
  [v10 insertSections:v8 withRowAnimation:100];

  v11 = [(PTUIModuleController *)self tableView];
  [v11 deleteSections:v7 withRowAnimation:100];

  v12 = [(PTUIModuleController *)self tableView];
  [v12 endUpdates];
}

- (void)module:(id)a3 didInsertRows:(id)a4 deleteRows:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PTUIModuleController *)self tableView];
  [v9 beginUpdates];

  v10 = [(PTUIModuleController *)self tableView];
  [v10 insertRowsAtIndexPaths:v8 withRowAnimation:100];

  v11 = [(PTUIModuleController *)self tableView];
  [v11 deleteRowsAtIndexPaths:v7 withRowAnimation:100];

  v12 = [(PTUIModuleController *)self tableView];
  [v12 endUpdates];
}

- (void)moduleDidReload:(id)a3
{
  v3 = [(PTUIModuleController *)self tableView];
  [v3 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PTModule *)self->_module sectionAtIndex:a4];
  v5 = [v4 numberOfRows];

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [(PTModule *)self->_module sectionAtIndex:a4];
  v5 = [v4 title];

  if ([v5 length])
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v6 setFont:v7];

    [v6 setText:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(PTModule *)self->_module sectionAtIndex:a4];
  v5 = [v4 footerTextGetter];

  if (v5)
  {
    v6 = v5[2](v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  module = self->_module;
  v6 = a3;
  v7 = [(PTModule *)module rowAtIndexPath:a4];
  v8 = [v7 tableViewCellClass];
  v9 = [v8 reuseIdentifierForRow:v7];
  v10 = [v6 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [[v8 alloc] initWithStyle:objc_msgSend(v8 reuseIdentifier:{"cellStyleForRow:", v7), v9}];
  }

  [v10 setRow:v7];

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(PTModule *)self->_module rowAtIndexPath:a4];
  [objc_msgSend(v4 "tableViewCellClass")];
  v6 = v5;

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(PTModule *)self->_module rowAtIndexPath:v6];
  v8 = [v7 action];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v7 defaultUIAction];
    if (!v9)
    {
LABEL_7:
      v14 = [(PTModule *)self->_module indexPathForRow:v7];
      [v15 deselectRowAtIndexPath:v14 animated:1];

      goto LABEL_8;
    }
  }

  v10 = [v15 cellForRowAtIndexPath:v6];
  v11 = [v10 isEditing];

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = [v9 handler];
  v13 = (v12)[2](v12, v7, self);

  if (!v13 || [v9 deselectsRowOnSuccess])
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)showActionsForRowTableViewCell:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x277D546D8]);
    v7 = [v4 row];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v9 = [v6 initWithActivityItems:v8 applicationActivities:v5];

    [(PTUIModuleController *)self presentViewController:v9 animated:1 completion:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end