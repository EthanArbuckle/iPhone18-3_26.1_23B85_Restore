@interface SUTableCellLayoutManager
- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
@end

@implementation SUTableCellLayoutManager

- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v23.receiver = self;
  v23.super_class = SUTableCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v23 accessoryEndingRectForCell:a3 forNewEditingState:a4 showingDeleteConfirmation:a5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [a3 configuration];
  if (v14)
  {
    [v14 frameForAccessoryViewWithFrame:{v7, v9, v11, v13}];
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