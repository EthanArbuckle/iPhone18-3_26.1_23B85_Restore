@interface PKApplyActionContentActionItemRow
- (NSCopying)identifier;
- (PKApplyActionContentActionItemRow)initWithApplyActionContentActionItem:(id)a3 selectionHandler:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureCell:(id)a3;
- (void)handleCellSelection;
@end

@implementation PKApplyActionContentActionItemRow

- (PKApplyActionContentActionItemRow)initWithApplyActionContentActionItem:(id)a3 selectionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKApplyActionContentActionItemRow;
  v9 = [(PKApplyActionContentActionItemRow *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionItem, a3);
    v11 = [v8 copy];
    selectionHandler = v10->_selectionHandler;
    v10->_selectionHandler = v11;
  }

  return v10;
}

- (NSCopying)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  actionItem = self->_actionItem;
  if (actionItem)
  {
    v7 = [(PKApplyActionContentActionItem *)actionItem identifier];
    [v3 appendString:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  [(PKApplyActionContentActionItemRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    [v4 setActionItem:self->_actionItem];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKApplyActionContentActionItemRow allocWithZone:?];
  v6 = [(PKApplyActionContentActionItem *)self->_actionItem copyWithZone:a3];
  actionItem = v5->_actionItem;
  v5->_actionItem = v6;

  v8 = [self->_selectionHandler copyWithZone:a3];
  selectionHandler = v5->_selectionHandler;
  v5->_selectionHandler = v8;

  return v5;
}

- (void)handleCellSelection
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    selectionHandler[2]();
  }
}

@end