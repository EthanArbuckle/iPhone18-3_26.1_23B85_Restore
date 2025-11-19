@interface DBSDisplayCellLayoutManager
- (CGRect)standardLayoutImageViewFrameForCell:(id)a3 forSizing:(BOOL)a4;
@end

@implementation DBSDisplayCellLayoutManager

- (CGRect)standardLayoutImageViewFrameForCell:(id)a3 forSizing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  v9 = [v6 contentView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v34.receiver = self;
  v34.super_class = DBSDisplayCellLayoutManager;
  [(UITableViewCellLayoutManager *)&v34 standardLayoutImageViewFrameForCell:v6 forSizing:v4];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8 == 1)
    {
      v35.origin.x = v11;
      v35.origin.y = v13;
      v35.size.width = v15;
      v35.size.height = v17;
      v26 = CGRectGetWidth(v35) + -60.0;
      v27 = [v6 contentView];
      [v27 layoutMargins];
      v19 = v26 - v28;
    }

    else
    {
      v27 = [v6 contentView];
      [v27 layoutMargins];
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