@interface UIKBTestAutoFillTableViewCellData
- (UIKBTestAutoFillTableViewCellData)initWithCell:(id)cell height:(double)height;
- (UIKBTestAutoFillTableViewCellData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIKBTestAutoFillTableViewCellData

- (UIKBTestAutoFillTableViewCellData)initWithCell:(id)cell height:(double)height
{
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = UIKBTestAutoFillTableViewCellData;
  v8 = [(UIKBTestAutoFillTableViewCellData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cell, cell);
    v9->_height = height;
    v10 = v9;
  }

  return v9;
}

- (UIKBTestAutoFillTableViewCellData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"cell"];
  [coderCopy decodeDoubleForKey:@"height"];
  v7 = v6;

  v8 = [(UIKBTestAutoFillTableViewCellData *)self initWithCell:v5 height:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  cell = self->_cell;
  coderCopy = coder;
  [coderCopy encodeObject:cell forKey:@"cell"];
  [coderCopy encodeDouble:@"height" forKey:self->_height];
}

@end