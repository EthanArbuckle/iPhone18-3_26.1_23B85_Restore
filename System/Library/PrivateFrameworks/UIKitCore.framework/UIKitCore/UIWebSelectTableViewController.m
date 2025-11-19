@interface UIWebSelectTableViewController
- (UIWebSelectTableViewController)initWithDOMHTMLSelectNode:(id)a3 cachedItems:(id)a4 singleSelectionIndex:(unint64_t)a5 multipleSelection:(BOOL)a6;
- (id)_optionsForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setupGroupsAndOptions;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
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
  v16 = self;
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
        v11 = [v10 node];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v8 = 0;
          v13 = v10;
          goto LABEL_10;
        }

        [v11 parentNode];
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

        if (!v16->_allowsMultipleSelection && [v10 selected])
        {
          v16->_singleSelectionIndex = [v4 count];
          v16->_singleSelectionSection = [v17 count];
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

  [(UIWebSelectTableViewController *)v16 set_groupsAndOptions:v17];
}

- (UIWebSelectTableViewController)initWithDOMHTMLSelectNode:(id)a3 cachedItems:(id)a4 singleSelectionIndex:(unint64_t)a5 multipleSelection:(BOOL)a6
{
  v16.receiver = self;
  v16.super_class = UIWebSelectTableViewController;
  v10 = [(UITableViewController *)&v16 initWithStyle:0];
  v11 = v10;
  if (v10)
  {
    [(UIWebSelectTableViewController *)v10 set_selectionNode:a3];
    [(UIWebSelectTableViewController *)v11 set_cachedItems:a4];
    v11->_singleSelectionIndex = a5;
    v11->_singleSelectionSection = 0;
    v11->_allowsMultipleSelection = a6;
    [(UIWebSelectTableViewController *)v11 _setupGroupsAndOptions];
    v15 = 0;
    v14 = 0;
    [a3 getTextWritingDirection:&v15 override:&v14];
    v11->_textAlignment = 2 * (v15 != 0);
    v12 = [a3 title];
    -[UIViewController setTitle:](v11, "setTitle:", [v12 _uikit_stringWithWritingDirection:v15 asOverride:v14]);
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

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = UIWebSelectTableViewController;
  [(UITableViewController *)&v9 viewWillAppear:a3];
  singleSelectionIndex = self->_singleSelectionIndex;
  if (singleSelectionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:singleSelectionIndex inSection:self->_singleSelectionSection];
    v6 = [(UITableViewController *)self tableView];
    v7 = [v5 section];
    if (v7 < [(UITableView *)v6 numberOfSections])
    {
      v8 = [v5 row];
      if (v8 < -[UITableView numberOfRowsInSection:](v6, "numberOfRowsInSection:", [v5 section]))
      {
        [(UITableView *)v6 scrollToRowAtIndexPath:v5 atScrollPosition:2 animated:0];
      }
    }
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    return 1;
  }

  groupsAndOptions = self->_groupsAndOptions;

  return [(NSArray *)groupsAndOptions count];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    return 1;
  }

  v7 = [-[NSArray objectAtIndex:](self->_groupsAndOptions objectAtIndex:{a4), "options"}];

  return [v7 count];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  WebThreadLock();
  v6 = [objc_msgSend(-[NSArray objectAtIndex:](self->_groupsAndOptions objectAtIndex:{a4), "group"), "node"}];
  if (!v6)
  {
    return 0;
  }

  return [v6 itemTitle];
}

- (id)_optionsForSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_groupsAndOptions objectAtIndex:a3];

  return [v3 options];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"UIWebPopoverTableViewCellReuseIdentifier"];
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
    v7 = -[UIWebSelectTableViewController _optionsForSection:](self, "_optionsForSection:", [a4 section]);
    [(UIView *)v6 bounds];
    [(UITableViewCell *)v6 contentRectForBounds:?];
    [(UITableViewCell *)v6 textRectForContentRect:?];
    v9 = v8;
    [(UIFont *)[(UILabel *)[(UITableViewCell *)v6 textLabel] font] pointSize];
    v11 = v10;
    v12 = [(UILabel *)[(UITableViewCell *)v6 textLabel] font];
    v13 = v12;
    if (v9 != self->_maximumTextWidth || self->_fontSize == 0.0)
    {
      self->_maximumTextWidth = v9;
      self->_fontSize = adjustedFontSize(v12, self->_cachedItems, v9, v11);
    }

    v14 = [objc_msgSend(v7 objectAtIndex:{objc_msgSend(a4, "row")), "node"}];
    WebThreadLock();
    [v14 populateCell:v6];
    -[UILabel setFont:](-[UITableViewCell textLabel](v6, "textLabel"), "setFont:", [v13 fontWithSize:self->_fontSize]);
    [(UILabel *)[(UITableViewCell *)v6 textLabel] setLineBreakMode:0];
    [(UILabel *)[(UITableViewCell *)v6 textLabel] setNumberOfLines:2];
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if ([(UIWebSelectTableViewController *)self _isEmpty])
  {
    return;
  }

  v7 = -[NSArray objectAtIndex:](self->_groupsAndOptions, "objectAtIndex:", [a4 section]);
  v8 = [v7 options];
  if (self->_allowsMultipleSelection)
  {
    [a3 deselectRowAtIndexPath:objc_msgSend(a3 animated:{"indexPathForSelectedRow"), 0}];
    v9 = [a3 cellForRowAtIndexPath:a4];
    if ([objc_msgSend(v9 "textLabel")])
    {
      v10 = [v9 accessoryType];
      v11 = v10 == 0;
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }

      [v9 setAccessoryType:v12];
      v13 = [v8 objectAtIndex:{objc_msgSend(a4, "row")}];
      WebThreadLock();
      -[DOMHTMLSelectElement _activateItemAtIndex:allowMultipleSelection:](-[UIWebSelectTableViewController _selectionNode](self, "_selectionNode"), "_activateItemAtIndex:allowMultipleSelection:", [a4 row] + objc_msgSend(v7, "offset"), 1);

      [v13 setSelected:v11];
    }

    return;
  }

  [a3 deselectRowAtIndexPath:a4 animated:0];
  singleSelectionIndex = self->_singleSelectionIndex;
  if (singleSelectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
LABEL_14:
    v16 = [a3 cellForRowAtIndexPath:a4];
    if (![objc_msgSend(v16 "textLabel")])
    {
      return;
    }

    if (v15)
    {
      v17 = [a3 cellForRowAtIndexPath:v15];
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
      self->_singleSelectionIndex = [a4 row];
      self->_singleSelectionSection = [a4 section];
      v19 = [v8 objectAtIndex:self->_singleSelectionIndex];
      WebThreadLock();
      -[DOMHTMLSelectElement _activateItemAtIndex:](-[UIWebSelectTableViewController _selectionNode](self, "_selectionNode"), "_activateItemAtIndex:", [a4 row] + objc_msgSend(v7, "offset"));
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
  if (![a4 isEqual:v15])
  {
    goto LABEL_14;
  }

LABEL_24:
  popover = self->_popover;

  [(UIWebSelectPopover *)popover _userActionDismissedPopover:0];
}

@end