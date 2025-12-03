@interface UIKBAutoFillTestTableViewHeaderFooterData
- (UIKBAutoFillTestTableViewHeaderFooterData)initWithCoder:(id)coder;
- (UIKBAutoFillTestTableViewHeaderFooterData)initWithTitle:(id)title view:(id)view height:(double)height;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIKBAutoFillTestTableViewHeaderFooterData

- (UIKBAutoFillTestTableViewHeaderFooterData)initWithTitle:(id)title view:(id)view height:(double)height
{
  titleCopy = title;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = UIKBAutoFillTestTableViewHeaderFooterData;
  v10 = [(UIKBAutoFillTestTableViewHeaderFooterData *)&v15 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeStrong(&v10->_headerFooterView, view);
    v10->_height = height;
    v13 = v10;
  }

  return v10;
}

- (UIKBAutoFillTestTableViewHeaderFooterData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"title"];
  v6 = [coderCopy decodeObjectForKey:@"headerFooterView"];
  [coderCopy decodeDoubleForKey:@"height"];
  v8 = v7;

  v9 = [(UIKBAutoFillTestTableViewHeaderFooterData *)self initWithTitle:v5 view:v6 height:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = self->_title;
  v7 = coderCopy;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"title"];
    coderCopy = v7;
  }

  headerFooterView = self->_headerFooterView;
  if (headerFooterView)
  {
    [v7 encodeObject:headerFooterView forKey:@"headerFooterView"];
    coderCopy = v7;
  }

  [coderCopy encodeDouble:@"height" forKey:self->_height];
}

@end