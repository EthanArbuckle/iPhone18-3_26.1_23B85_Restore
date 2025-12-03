@interface UIWebSelectTableViewController
- (UIWebSelectTableViewController)initWithDOMHTMLSelectNode:(id)node cachedItems:(id)items singleSelectionIndex:(unint64_t)index multipleSelection:(BOOL)selection;
- (id)_optionsForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setupGroupsAndOptions;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIWebSelectTableViewController

- (void)_setupGroupsAndOptions
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [[UIWebOptGroup alloc] initWithGroup:0 itemOffset:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_cachedItems;
  selfCopy = self;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v18 = *v20;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        node = [v10 node];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v8 = 0;
          v13 = v10;
          goto LABEL_10;
        }

        [node parentNode];
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();
        if (((v14 | v8) & 1) == 0)
        {
          v13 = 0;
          v8 = v14 ^ 1;
LABEL_10:
          [(UIWebOptGroup *)v3 setOptions:v4];
          [v17 addObject:v3];

          v3 = [[UIWebOptGroup alloc] initWithGroup:v13 itemOffset:v7];
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (isKindOfClass)
          {
            continue;
          }
        }

        if (!selfCopy->_allowsMultipleSelection && [v10 selected])
        {
          selfCopy->_singleSelectionIndex = [v4 count];
          selfCopy->_singleSelectionSection = [v17 count];
        }

        [v4 addObject:v10];
        ++v7;
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [(UIWebOptGroup *)v3 setOptions:v4];
  [v17 addObject:v3];

  [(UIWebSelectTableViewController *)selfCopy set_groupsAndOptions:v17];
}

- (UIWebSelectTableViewController)initWithDOMHTMLSelectNode:(id)node cachedItems:(id)items singleSelectionIndex:(unint64_t)index multipleSelection:(BOOL)selection
{
  v16.receiver = self;
  v16.super_class = UIWebSelectTableViewController;
  v10 = [(UITableViewController *)&v16 initWithStyle:0];
  v11 = v10;
  if (v10)
  {
    [(UIWebSelectTableViewController *)v10 set_selectionNode:node];
    [(UIWebSelectTableViewController *)v11 set_cachedItems:items];
    v11->_singleSelectionIndex = index;
    v11->_singleSelectionSection = 0;
    v11->_allowsMultipleSelection = selection;
    [(UIWebSelectTableViewController *)v11 _setupGroupsAndOptions];
    v15 = 0;
    v14 = 0;
    [node getTextWritingDirection:&v15 override:&v14];
    v11->_textAlignment = 2 * (v15 != 0);
    title = [node title];
    -[UIViewController setTitle:](v11, "setTitle:", [title _uikit_stringWithWritingDirection:v15 asOverride:v14]);
  }

  return v11;
}

- (void)dealloc
{
  [(UIWebSelectTableViewController *)self set_groupsAndOptions:0];
  [(UIWebSelectTableViewController *)self set_selectionNode:0];
  [(UIWebSelectTableViewController *)self set_cachedItems:0];
  v3.receiver = self;
  v3.super_class = UIWebSelectTableViewController;
  [(UITableViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = UIWebSelectTableViewController;
  [(UITableViewController *)&v9 viewWillAppear:appear];
  singleSelectionIndex = self->_singleSelectionIndex;
  if (singleSelectionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:singleSelectionIndex inSection:self->_singleSelectionSection];
    tableView = [(UITableViewController *)self tableView];
    section = [v5 section];
    if (section < [(UITableView *)tableView numberOfSections])
    {
      v8 = [v5 row];
      if (v8 < -[UITableView numberOfRowsInSection:](tableView, "numberOfRowsInSection:", [v5 section]))
      {
        [(UITableView *)tableView scrollToRowAtIndexPath:v5 atScrollPosition:2 animated:0];
      }
    }
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    return 1;
  }

  groupsAndOptions = self->_groupsAndOptions;

  return [(NSArray *)groupsAndOptions count];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    return 1;
  }

  v7 = [-[NSArray objectAtIndex:](self->_groupsAndOptions objectAtIndex:{section), "options"}];

  return [v7 count];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (!section)
  {
    return 0;
  }

  WebThreadLock();
  v6 = [objc_msgSend(-[NSArray objectAtIndex:](self->_groupsAndOptions objectAtIndex:{section), "group"), "node"}];
  if (!v6)
  {
    return 0;
  }

  return [v6 itemTitle];
}

- (id)_optionsForSection:(int64_t)section
{
  v3 = [(NSArray *)self->_groupsAndOptions objectAtIndex:section];

  return [v3 options];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"UIWebPopoverTableViewCellReuseIdentifier"];
  if (!v6)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"UIWebPopoverTableViewCellReuseIdentifier"];
  }

  [(UILabel *)[(UITableViewCell *)v6 textLabel] setTextAlignment:self->_textAlignment];
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    [(UILabel *)[(UITableViewCell *)v6 textLabel] setEnabled:0];
    [(UILabel *)[(UITableViewCell *)v6 textLabel] setText:_UINSLocalizedStringWithDefaultValue(@"No Options", @"No Options")];
    [(UITableViewCell *)v6 setAccessoryType:0];
    [(UITableViewCell *)v6 setSelectionStyle:0];
  }

  else
  {
    v7 = -[UIWebSelectTableViewController _optionsForSection:](self, "_optionsForSection:", [path section]);
    [(UIView *)v6 bounds];
    [(UITableViewCell *)v6 contentRectForBounds:?];
    [(UITableViewCell *)v6 textRectForContentRect:?];
    v9 = v8;
    [(UIFont *)[(UILabel *)[(UITableViewCell *)v6 textLabel] font] pointSize];
    v11 = v10;
    font = [(UILabel *)[(UITableViewCell *)v6 textLabel] font];
    v13 = font;
    if (v9 != self->_maximumTextWidth || self->_fontSize == 0.0)
    {
      self->_maximumTextWidth = v9;
      self->_fontSize = adjustedFontSize(font, self->_cachedItems, v9, v11);
    }

    v14 = [objc_msgSend(v7 objectAtIndex:{objc_msgSend(path, "row")), "node"}];
    WebThreadLock();
    [v14 populateCell:v6];
    -[UILabel setFont:](-[UITableViewCell textLabel](v6, "textLabel"), "setFont:", [v13 fontWithSize:self->_fontSize]);
    [(UILabel *)[(UITableViewCell *)v6 textLabel] setLineBreakMode:0];
    [(UILabel *)[(UITableViewCell *)v6 textLabel] setNumberOfLines:2];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    return;
  }

  v7 = -[NSArray objectAtIndex:](self->_groupsAndOptions, "objectAtIndex:", [path section]);
  options = [v7 options];
  if (self->_allowsMultipleSelection)
  {
    [view deselectRowAtIndexPath:objc_msgSend(view animated:{"indexPathForSelectedRow"), 0}];
    v9 = [view cellForRowAtIndexPath:path];
    if ([objc_msgSend(v9 "textLabel")])
    {
      accessoryType = [v9 accessoryType];
      v11 = accessoryType == 0;
      if (accessoryType)
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }

      [v9 setAccessoryType:v12];
      v13 = [options objectAtIndex:{objc_msgSend(path, "row")}];
      WebThreadLock();
      -[DOMHTMLSelectElement _activateItemAtIndex:allowMultipleSelection:](-[UIWebSelectTableViewController _selectionNode](self, "_selectionNode"), "_activateItemAtIndex:allowMultipleSelection:", [path row] + objc_msgSend(v7, "offset"), 1);

      [v13 setSelected:v11];
    }

    return;
  }

  [view deselectRowAtIndexPath:path animated:0];
  singleSelectionIndex = self->_singleSelectionIndex;
  if (singleSelectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
LABEL_14:
    v16 = [view cellForRowAtIndexPath:path];
    if (![objc_msgSend(v16 "textLabel")])
    {
      return;
    }

    if (v15)
    {
      v17 = [view cellForRowAtIndexPath:v15];
      if (v17)
      {
        v18 = v17;
        if ([v17 accessoryType] == 3)
        {
          [v18 setAccessoryType:0];
        }
      }
    }

    if (v16 && ![v16 accessoryType])
    {
      [v16 setAccessoryType:3];
      self->_singleSelectionIndex = [path row];
      self->_singleSelectionSection = [path section];
      v19 = [options objectAtIndex:self->_singleSelectionIndex];
      WebThreadLock();
      -[DOMHTMLSelectElement _activateItemAtIndex:](-[UIWebSelectTableViewController _selectionNode](self, "_selectionNode"), "_activateItemAtIndex:", [path row] + objc_msgSend(v7, "offset"));
      [v19 setSelected:1];
    }

    if (v15)
    {
      v20 = [-[UIWebSelectTableViewController _optionsForSection:](self _optionsForSection:{objc_msgSend(v15, "section")), "objectAtIndex:", objc_msgSend(v15, "row")}];
      WebThreadLock();
      [v20 setSelected:0];
    }

    goto LABEL_24;
  }

  v15 = [MEMORY[0x1E696AC88] indexPathForRow:singleSelectionIndex inSection:self->_singleSelectionSection];
  if (![path isEqual:v15])
  {
    goto LABEL_14;
  }

LABEL_24:
  popover = self->_popover;

  [(UIWebSelectPopover *)popover _userActionDismissedPopover:0];
}

@end