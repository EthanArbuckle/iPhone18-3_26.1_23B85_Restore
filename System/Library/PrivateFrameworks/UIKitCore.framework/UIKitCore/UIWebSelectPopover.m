@interface UIWebSelectPopover
- (UIWebSelectPopover)initWithDOMHTMLSelectElement:(id)a3 cachedItems:(id)a4 singleSelectionItem:(id)a5 singleSelectionIndex:(unint64_t)a6 multipleSelection:(BOOL)a7;
- (void)dealloc;
@end

@implementation UIWebSelectPopover

- (UIWebSelectPopover)initWithDOMHTMLSelectElement:(id)a3 cachedItems:(id)a4 singleSelectionItem:(id)a5 singleSelectionIndex:(unint64_t)a6 multipleSelection:(BOOL)a7
{
  v7 = a7;
  v21.receiver = self;
  v21.super_class = UIWebSelectPopover;
  v11 = [(UIWebFormRotatingAccessoryPopover *)&v21 initWithDOMNode:a3, a4, a5];
  if (v11)
  {
    +[UIKeyboard defaultSizeForInterfaceOrientation:](UIKeyboard, "defaultSizeForInterfaceOrientation:", [UIApp _defaultSceneInterfaceOrientationReturningUnknownForNilScene:0]);
    [(UIWebSelectPopover *)v11 set_tableViewController:[[UIWebSelectTableViewController alloc] initWithDOMHTMLSelectNode:a3 cachedItems:a4 singleSelectionIndex:a6 multipleSelection:v7]];
    [(UIWebSelectTableViewController *)v11->_tableViewController set_popover:v11];
    tableViewController = v11->_tableViewController;
    v13 = [objc_msgSend(a3 "title")];
    if (v13)
    {
      v14 = [[UINavigationController alloc] initWithRootViewController:v11->_tableViewController];
      tableViewController = v14;
    }

    else
    {
      v14 = 0;
    }

    [[(UITableViewController *)v11->_tableViewController tableView] sizeThatFits:320.0, 1.79769313e308];
    v16 = v15;
    v18 = v17;
    v19 = tableViewController;
    if (v13)
    {
      v19 = [tableViewController topViewController];
    }

    [v19 setPreferredContentSize:{v16, v18}];
    [(UIWebRotatingNodePopover *)v11 setPopoverController:[[UIPopoverController alloc] initWithContentViewController:tableViewController]];

    [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl setDelegate:"setDelegate:", v11->_tableViewController];
  }

  return v11;
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