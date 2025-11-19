@interface UIKBTestAutoFillTableViewCellData
- (UIKBTestAutoFillTableViewCellData)initWithCell:(id)a3 height:(double)a4;
- (UIKBTestAutoFillTableViewCellData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIKBTestAutoFillTableViewCellData

- (UIKBTestAutoFillTableViewCellData)initWithCell:(id)a3 height:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = UIKBTestAutoFillTableViewCellData;
  v8 = [(UIKBTestAutoFillTableViewCellData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cell, a3);
    v9->_height = a4;
    v10 = v9;
  }

  return v9;
}

- (UIKBTestAutoFillTableViewCellData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"cell"];
  [v4 decodeDoubleForKey:@"height"];
  v7 = v6;

  v8 = [(UIKBTestAutoFillTableViewCellData *)self initWithCell:v5 height:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  cell = self->_cell;
  v5 = a3;
  [v5 encodeObject:cell forKey:@"cell"];
  [v5 encodeDouble:@"height" forKey:self->_height];
}

@end