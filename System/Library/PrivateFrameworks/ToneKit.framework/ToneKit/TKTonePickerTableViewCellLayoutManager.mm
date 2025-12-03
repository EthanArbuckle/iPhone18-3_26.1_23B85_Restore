@interface TKTonePickerTableViewCellLayoutManager
- (CGRect)_adjustedTextFrameWithOriginalTextFrame:(CGRect)frame forCell:(id)cell;
@end

@implementation TKTonePickerTableViewCellLayoutManager

- (CGRect)_adjustedTextFrameWithOriginalTextFrame:(CGRect)frame forCell:(id)cell
{
  y = frame.origin.y;
  height = frame.size.height;
  width = frame.size.width;
  x = frame.origin.x;
  cellCopy = cell;
  contentView = [cellCopy contentView];
  [contentView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [cellCopy safeAreaInsets];
  v17 = v16;
  v19 = v18;
  v20 = MEMORY[0x277D75D18];
  semanticContentAttribute = [cellCopy semanticContentAttribute];

  v22 = [v20 userInterfaceLayoutDirectionForSemanticContentAttribute:semanticContentAttribute];
  [(TKTonePickerTableViewCellLayoutManager *)self minimumTextIndentation];
  v24 = v23;
  if (v22)
  {
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    MaxX = CGRectGetMaxX(v39);
    v40.origin.x = x;
    v27 = width;
    v26 = y;
    v40.origin.y = y;
    v40.size.width = width;
    v28 = height;
    v40.size.height = height;
    MinX = MaxX - CGRectGetMaxX(v40);
    v17 = v19;
  }

  else
  {
    v41.origin.x = x;
    v27 = width;
    v26 = y;
    v41.origin.y = y;
    v41.size.width = width;
    v28 = height;
    v41.size.height = height;
    MinX = CGRectGetMinX(v41);
  }

  v30 = v24 - MinX - v17;
  v31 = 0.0;
  if (v30 >= 0.0)
  {
    v31 = v30;
  }

  v32 = x + v31;
  if (v22)
  {
    v32 = x;
  }

  v33 = v27 - v31;
  v34 = v26;
  v35 = v28;
  result.size.height = v35;
  result.size.width = v33;
  result.origin.y = v34;
  result.origin.x = v32;
  return result;
}

@end