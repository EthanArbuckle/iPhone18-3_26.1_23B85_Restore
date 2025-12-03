@interface PKApplyActionContentActionItemRow
- (NSCopying)identifier;
- (PKApplyActionContentActionItemRow)initWithApplyActionContentActionItem:(id)item selectionHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureCell:(id)cell;
- (void)handleCellSelection;
@end

@implementation PKApplyActionContentActionItemRow

- (PKApplyActionContentActionItemRow)initWithApplyActionContentActionItem:(id)item selectionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = PKApplyActionContentActionItemRow;
  v9 = [(PKApplyActionContentActionItemRow *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionItem, item);
    v11 = [handlerCopy copy];
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
    identifier = [(PKApplyActionContentActionItem *)actionItem identifier];
    [v3 appendString:identifier];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  [(PKApplyActionContentActionItemRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setActionItem:self->_actionItem];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PKApplyActionContentActionItemRow allocWithZone:?];
  v6 = [(PKApplyActionContentActionItem *)self->_actionItem copyWithZone:zone];
  actionItem = v5->_actionItem;
  v5->_actionItem = v6;

  v8 = [self->_selectionHandler copyWithZone:zone];
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