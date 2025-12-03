@interface UIWebSelectPopover
- (UIWebSelectPopover)initWithDOMHTMLSelectElement:(id)element cachedItems:(id)items singleSelectionItem:(id)item singleSelectionIndex:(unint64_t)index multipleSelection:(BOOL)selection;
- (void)dealloc;
@end

@implementation UIWebSelectPopover

- (UIWebSelectPopover)initWithDOMHTMLSelectElement:(id)element cachedItems:(id)items singleSelectionItem:(id)item singleSelectionIndex:(unint64_t)index multipleSelection:(BOOL)selection
{
  selectionCopy = selection;
  v21.receiver = self;
  v21.super_class = UIWebSelectPopover;
  item = [(UIWebFormRotatingAccessoryPopover *)&v21 initWithDOMNode:element, items, item];
  if (item)
  {
    +[UIKeyboard defaultSizeForInterfaceOrientation:](UIKeyboard, "defaultSizeForInterfaceOrientation:", [UIApp _defaultSceneInterfaceOrientationReturningUnknownForNilScene:0]);
    [(UIWebSelectPopover *)item set_tableViewController:[[UIWebSelectTableViewController alloc] initWithDOMHTMLSelectNode:element cachedItems:items singleSelectionIndex:index multipleSelection:selectionCopy]];
    [(UIWebSelectTableViewController *)item->_tableViewController set_popover:item];
    tableViewController = item->_tableViewController;
    v13 = [objc_msgSend(element "title")];
    if (v13)
    {
      v14 = [[UINavigationController alloc] initWithRootViewController:item->_tableViewController];
      tableViewController = v14;
    }

    else
    {
      v14 = 0;
    }

    [[(UITableViewController *)item->_tableViewController tableView] sizeThatFits:320.0, 1.79769313e308];
    v16 = v15;
    v18 = v17;
    topViewController = tableViewController;
    if (v13)
    {
      topViewController = [tableViewController topViewController];
    }

    [topViewController setPreferredContentSize:{v16, v18}];
    [(UIWebRotatingNodePopover *)item setPopoverController:[[UIPopoverController alloc] initWithContentViewController:tableViewController]];

    [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl setDelegate:"setDelegate:", item->_tableViewController];
  }

  return item;
}

- (void)dealloc
{
  [(UIWebSelectTableViewController *)self->_tableViewController set_selectionNode:0];
  [(UIWebSelectTableViewController *)self->_tableViewController set_cachedItems:0];
  [(UIWebSelectTableViewController *)self->_tableViewController set_popover:0];
  [[(UITableViewController *)self->_tableViewController tableView] setDataSource:0];
  [[(UITableViewController *)self->_tableViewController tableView] setDelegate:0];
  [(UIWebSelectPopover *)self set_tableViewController:0];
  v3.receiver = self;
  v3.super_class = UIWebSelectPopover;
  [(UIWebRotatingNodePopover *)&v3 dealloc];
}

@end