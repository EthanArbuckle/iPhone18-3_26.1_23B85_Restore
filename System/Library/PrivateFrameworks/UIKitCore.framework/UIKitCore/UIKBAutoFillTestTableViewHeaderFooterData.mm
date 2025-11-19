@interface UIKBAutoFillTestTableViewHeaderFooterData
- (UIKBAutoFillTestTableViewHeaderFooterData)initWithCoder:(id)a3;
- (UIKBAutoFillTestTableViewHeaderFooterData)initWithTitle:(id)a3 view:(id)a4 height:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIKBAutoFillTestTableViewHeaderFooterData

- (UIKBAutoFillTestTableViewHeaderFooterData)initWithTitle:(id)a3 view:(id)a4 height:(double)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = UIKBAutoFillTestTableViewHeaderFooterData;
  v10 = [(UIKBAutoFillTestTableViewHeaderFooterData *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeStrong(&v10->_headerFooterView, a4);
    v10->_height = a5;
    v13 = v10;
  }

  return v10;
}

- (UIKBAutoFillTestTableViewHeaderFooterData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"title"];
  v6 = [v4 decodeObjectForKey:@"headerFooterView"];
  [v4 decodeDoubleForKey:@"height"];
  v8 = v7;

  v9 = [(UIKBAutoFillTestTableViewHeaderFooterData *)self initWithTitle:v5 view:v6 height:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  title = self->_title;
  v7 = v4;
  if (title)
  {
    [v4 encodeObject:title forKey:@"title"];
    v4 = v7;
  }

  headerFooterView = self->_headerFooterView;
  if (headerFooterView)
  {
    [v7 encodeObject:headerFooterView forKey:@"headerFooterView"];
    v4 = v7;
  }

  [v4 encodeDouble:@"height" forKey:self->_height];
}

@end