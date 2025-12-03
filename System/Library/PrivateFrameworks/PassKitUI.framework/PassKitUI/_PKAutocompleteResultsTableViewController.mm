@interface _PKAutocompleteResultsTableViewController
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation _PKAutocompleteResultsTableViewController

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = _PKAutocompleteResultsTableViewController;
  cellCopy = cell;
  [(CNAutocompleteResultsTableViewController *)&v8 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  [cellCopy setBackgroundView:{0, v8.receiver, v8.super_class}];
}

@end