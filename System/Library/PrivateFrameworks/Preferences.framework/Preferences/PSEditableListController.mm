@interface PSEditableListController
- (BOOL)performDeletionActionForSpecifier:(id)specifier;
- (PSEditableListController)init;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_setEditable:(BOOL)editable animated:(BOOL)animated;
- (void)didLock;
- (void)setEditable:(BOOL)editable;
- (void)setEditingButtonHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)suspend;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation PSEditableListController

- (PSEditableListController)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PSEditableListController;
  v2 = [(PSListController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = PS_LocalizedString(@"EDIT");
    v5 = [v3 initWithTitle:v4 style:0 target:v2 action:sel_editDoneTapped];
    editBarButtonItem = v2->_editBarButtonItem;
    v2->_editBarButtonItem = v5;

    navigationItem = [(PSEditableListController *)v2 navigationItem];
    editBarButtonItem = [(PSEditableListController *)v2 editBarButtonItem];
    v12[0] = editBarButtonItem;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [navigationItem setRightBarButtonItems:v9];
  }

  return v2;
}

- (void)setEditingButtonHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  v15[1] = *MEMORY[0x1E69E9840];
  if (hidden)
  {
    [(PSEditableListController *)self setEditable:0];
    if (self->_editingDisabled != hiddenCopy)
    {
      self->_editingDisabled = hiddenCopy;
      navigationItem = [(PSEditableListController *)self navigationItem];
      [navigationItem setRightBarButtonItems:self->_previousRightBarButtonItems animated:animatedCopy];

      previousRightBarButtonItems = self->_previousRightBarButtonItems;
      self->_previousRightBarButtonItems = 0;
    }
  }

  else if (self->_editingDisabled)
  {
    self->_editingDisabled = 0;
    navigationItem2 = [(PSEditableListController *)self navigationItem];
    rightBarButtonItems = [navigationItem2 rightBarButtonItems];
    v11 = self->_previousRightBarButtonItems;
    self->_previousRightBarButtonItems = rightBarButtonItems;

    navigationItem3 = [(PSEditableListController *)self navigationItem];
    editBarButtonItem = [(PSEditableListController *)self editBarButtonItem];
    v15[0] = editBarButtonItem;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [navigationItem3 setRightBarButtonItems:v14 animated:animatedCopy];
  }
}

- (void)_setEditable:(BOOL)editable animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_editable = editable;
  navigationItem = [(PSEditableListController *)self navigationItem];
  [navigationItem setHidesBackButton:self->_editable animated:animatedCopy];

  if (self->_editable)
  {
    v7 = @"DONE";
  }

  else
  {
    v7 = @"EDIT";
  }

  v8 = PS_LocalizedString(v7);
  [(UIBarButtonItem *)self->_editBarButtonItem setTitle:v8];

  if (self->_editable)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [(UIBarButtonItem *)self->_editBarButtonItem setStyle:v9];
  table = self->super._table;
  editable = self->_editable;

  [(UITableView *)table setEditing:editable animated:animatedCopy];
}

- (void)setEditable:(BOOL)editable
{
  if (self->_editable != editable)
  {
    [PSEditableListController _setEditable:"_setEditable:animated:" animated:?];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(PSListController *)self indexForIndexPath:pathCopy];
  if (self->_editable)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->super._specifiers objectAtIndex:v6];
    v9 = [v8 propertyForKey:@"cellObject"];
    isUserInteractionEnabled = [v9 isUserInteractionEnabled];

    if (isUserInteractionEnabled)
    {
      v7 = pathCopy;
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = v7;

  return v7;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(NSArray *)self->super._specifiers objectAtIndex:[(PSListController *)self indexForIndexPath:path]];
  v5 = v4[7];
  v7 = v5 == 1 || (v5 - 3) < 2;

  return v7;
}

- (BOOL)performDeletionActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"deletionAction"];
  if (NSSelectorFromString(v4))
  {
    target = [specifierCopy target];
    v6 = SFPerformSelector();

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)suspend
{
  v3.receiver = self;
  v3.super_class = PSEditableListController;
  [(PSViewController *)&v3 suspend];
  [(PSEditableListController *)self _setEditable:0 animated:0];
}

- (void)didLock
{
  v3.receiver = self;
  v3.super_class = PSEditableListController;
  [(PSViewController *)&v3 didLock];
  [(PSEditableListController *)self _setEditable:0 animated:0];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(PSListController *)self specifierAtIndexPath:path, style];
  if (style)
  {
    v7 = style;
    [(PSEditableListController *)self performDeletionActionForSpecifier:style];
    [(PSListController *)self removeSpecifier:v7 animated:1];
    style = v7;
  }
}

@end