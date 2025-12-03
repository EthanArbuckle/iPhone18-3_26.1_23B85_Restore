@interface PTUIModuleController
- (PTUIModuleController)initWithSettings:(id)settings presentingRow:(id)row;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_initWithModule:(id)module presentingRow:(id)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadWithModule:(id)module;
- (void)_updateTitle;
- (void)module:(id)module didInsertRows:(id)rows deleteRows:(id)deleteRows;
- (void)module:(id)module didInsertSections:(id)sections deleteSections:(id)deleteSections;
- (void)moduleDidReload:(id)reload;
- (void)showActionsForRowTableViewCell:(id)cell;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation PTUIModuleController

- (PTUIModuleController)initWithSettings:(id)settings presentingRow:(id)row
{
  v6 = MEMORY[0x277D43218];
  rowCopy = row;
  v8 = [v6 moduleWithSettings:settings];
  v9 = [(PTUIModuleController *)self _initWithModule:v8 presentingRow:rowCopy];

  return v9;
}

- (id)_initWithModule:(id)module presentingRow:(id)row
{
  moduleCopy = module;
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = PTUIModuleController;
  v9 = [(PTUIModuleController *)&v14 initWithStyle:2];
  p_isa = &v9->super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_module, module);
    [p_isa[130] addObserver:p_isa];
    title = [rowCopy title];
    title2 = title;
    if (!title)
    {
      title2 = [p_isa[130] title];
    }

    objc_storeStrong(p_isa + 131, title2);
    if (!title)
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

- (void)_reloadWithModule:(id)module
{
  moduleCopy = module;
  [(PTModule *)self->_module removeObserver:self];
  module = self->_module;
  self->_module = moduleCopy;
  v6 = moduleCopy;

  title = [(PTModule *)self->_module title];
  title = self->_title;
  self->_title = title;

  [(PTUIModuleController *)self _updateTitle];
  [(PTModule *)self->_module addObserver:self];

  tableView = [(PTUIModuleController *)self tableView];
  [tableView reloadData];
}

- (void)_updateTitle
{
  navigationItem = [(PTUIModuleController *)self navigationItem];
  [navigationItem setTitle:self->_title];

  view = [(PTUIModuleController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  v6 = windowScene;
  if (windowScene)
  {
    [windowScene setTitle:self->_title];
    v6 = windowScene;
  }
}

- (void)module:(id)module didInsertSections:(id)sections deleteSections:(id)deleteSections
{
  deleteSectionsCopy = deleteSections;
  sectionsCopy = sections;
  tableView = [(PTUIModuleController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(PTUIModuleController *)self tableView];
  [tableView2 insertSections:sectionsCopy withRowAnimation:100];

  tableView3 = [(PTUIModuleController *)self tableView];
  [tableView3 deleteSections:deleteSectionsCopy withRowAnimation:100];

  tableView4 = [(PTUIModuleController *)self tableView];
  [tableView4 endUpdates];
}

- (void)module:(id)module didInsertRows:(id)rows deleteRows:(id)deleteRows
{
  deleteRowsCopy = deleteRows;
  rowsCopy = rows;
  tableView = [(PTUIModuleController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(PTUIModuleController *)self tableView];
  [tableView2 insertRowsAtIndexPaths:rowsCopy withRowAnimation:100];

  tableView3 = [(PTUIModuleController *)self tableView];
  [tableView3 deleteRowsAtIndexPaths:deleteRowsCopy withRowAnimation:100];

  tableView4 = [(PTUIModuleController *)self tableView];
  [tableView4 endUpdates];
}

- (void)moduleDidReload:(id)reload
{
  tableView = [(PTUIModuleController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PTModule *)self->_module sectionAtIndex:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [(PTModule *)self->_module sectionAtIndex:section];
  title = [v4 title];

  if ([title length])
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v6 setFont:v7];

    [v6 setText:title];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(PTModule *)self->_module sectionAtIndex:section];
  footerTextGetter = [v4 footerTextGetter];

  if (footerTextGetter)
  {
    v6 = footerTextGetter[2](footerTextGetter);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  module = self->_module;
  viewCopy = view;
  v7 = [(PTModule *)module rowAtIndexPath:path];
  tableViewCellClass = [v7 tableViewCellClass];
  v9 = [tableViewCellClass reuseIdentifierForRow:v7];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [[tableViewCellClass alloc] initWithStyle:objc_msgSend(tableViewCellClass reuseIdentifier:{"cellStyleForRow:", v7), v9}];
  }

  [v10 setRow:v7];

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(PTModule *)self->_module rowAtIndexPath:path];
  [objc_msgSend(v4 "tableViewCellClass")];
  v6 = v5;

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PTModule *)self->_module rowAtIndexPath:pathCopy];
  action = [v7 action];
  if (action)
  {
    defaultUIAction = action;
  }

  else
  {
    defaultUIAction = [v7 defaultUIAction];
    if (!defaultUIAction)
    {
LABEL_7:
      v14 = [(PTModule *)self->_module indexPathForRow:v7];
      [viewCopy deselectRowAtIndexPath:v14 animated:1];

      goto LABEL_8;
    }
  }

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
  isEditing = [v10 isEditing];

  if (isEditing)
  {
    goto LABEL_7;
  }

  handler = [defaultUIAction handler];
  v13 = (handler)[2](handler, v7, self);

  if (!v13 || [defaultUIAction deselectsRowOnSuccess])
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)showActionsForRowTableViewCell:(id)cell
{
  v11[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  array = [MEMORY[0x277CBEB18] array];
  if ([array count])
  {
    v6 = objc_alloc(MEMORY[0x277D546D8]);
    v7 = [cellCopy row];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v9 = [v6 initWithActivityItems:v8 applicationActivities:array];

    [(PTUIModuleController *)self presentViewController:v9 animated:1 completion:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end