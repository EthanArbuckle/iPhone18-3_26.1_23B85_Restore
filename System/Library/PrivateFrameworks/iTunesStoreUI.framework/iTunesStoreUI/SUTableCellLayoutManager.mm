@interface SUTableCellLayoutManager
- (CGRect)accessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation;
@end

@implementation SUTableCellLayoutManager

- (CGRect)accessoryEndingRectForCell:(id)cell forNewEditingState:(BOOL)state showingDeleteConfirmation:(BOOL)confirmation
{
  v23.receiver = self;
  v23.super_class = SUTableCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v23 accessoryEndingRectForCell:cell forNewEditingState:state showingDeleteConfirmation:confirmation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  configuration = [cell configuration];
  if (configuration)
  {
    [configuration frameForAccessoryViewWithFrame:{v7, v9, v11, v13}];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end