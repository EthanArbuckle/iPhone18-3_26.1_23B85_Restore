@interface _PKAutocompleteResultsTableViewController
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation _PKAutocompleteResultsTableViewController

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8.receiver = self;
  v8.super_class = _PKAutocompleteResultsTableViewController;
  v7 = a4;
  [(CNAutocompleteResultsTableViewController *)&v8 tableView:a3 willDisplayCell:v7 forRowAtIndexPath:a5];
  [v7 setBackgroundView:{0, v8.receiver, v8.super_class}];
}

@end