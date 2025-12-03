@interface DBSDisplayCellLayoutManager
- (CGRect)standardLayoutImageViewFrameForCell:(id)cell forSizing:(BOOL)sizing;
@end

@implementation DBSDisplayCellLayoutManager

- (CGRect)standardLayoutImageViewFrameForCell:(id)cell forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  contentView = [cellCopy contentView];
  [contentView bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v34.receiver = self;
  v34.super_class = DBSDisplayCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v34 standardLayoutImageViewFrameForCell:cellCopy forSizing:sizingCopy];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (userInterfaceLayoutDirection == 1)
    {
      v35.origin.x = v11;
      v35.origin.y = v13;
      v35.size.width = v15;
      v35.size.height = v17;
      v26 = CGRectGetWidth(v35) + -60.0;
      contentView2 = [cellCopy contentView];
      [contentView2 layoutMargins];
      v19 = v26 - v28;
    }

    else
    {
      contentView2 = [cellCopy contentView];
      [contentView2 layoutMargins];
      v19 = v29;
    }

    *&v23 = 60.0;
  }

  v30 = v19;
  v31 = v21;
  v32 = *&v23;
  v33 = v25;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

@end