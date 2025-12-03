@interface UITableViewPlaceholder
- (UITableViewPlaceholder)initWithInsertionIndexPath:(NSIndexPath *)insertionIndexPath reuseIdentifier:(NSString *)reuseIdentifier rowHeight:(CGFloat)rowHeight;
@end

@implementation UITableViewPlaceholder

- (UITableViewPlaceholder)initWithInsertionIndexPath:(NSIndexPath *)insertionIndexPath reuseIdentifier:(NSString *)reuseIdentifier rowHeight:(CGFloat)rowHeight
{
  v10 = insertionIndexPath;
  v11 = reuseIdentifier;
  v17.receiver = self;
  v17.super_class = UITableViewPlaceholder;
  v12 = [(UITableViewPlaceholder *)&v17 init];
  if (!v12)
  {
    goto LABEL_8;
  }

  if (v10)
  {
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v12 file:@"_UITableViewDropCoordinator.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"insertionIndexPath != nil"}];

    if (v11)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:v12 file:@"_UITableViewDropCoordinator.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

LABEL_4:
  if (rowHeight <= 0.0 && rowHeight != -1.0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v12 file:@"_UITableViewDropCoordinator.m" lineNumber:443 description:@"Invalid row height provided for the placeholder. Value must be greater than zero or UITableViewAutomaticDimension."];
  }

  objc_storeStrong(&v12->_insertionIndexPath, insertionIndexPath);
  objc_storeStrong(&v12->_reuseIdentifier, reuseIdentifier);
  v12->_rowHeight = rowHeight;
LABEL_8:

  return v12;
}

@end