@interface RMUIKeyValueDetailViewModel
- (RMUIKeyValueDetailViewModel)init;
- (RMUIKeyValueDetailViewModel)initWithCoder:(id)coder;
- (RMUIKeyValueDetailViewModel)initWithTitle:(id)title value:(id)value;
- (void)clearModel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIKeyValueDetailViewModel

- (RMUIKeyValueDetailViewModel)init
{
  v7.receiver = self;
  v7.super_class = RMUIKeyValueDetailViewModel;
  v2 = [(RMUIKeyValueDetailViewModel *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    viewID = v2->_viewID;
    v2->_viewID = uUIDString;
  }

  return v2;
}

- (RMUIKeyValueDetailViewModel)initWithTitle:(id)title value:(id)value
{
  titleCopy = title;
  valueCopy = value;
  v9 = [(RMUIKeyValueDetailViewModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (void)clearModel
{
  [(RMUIKeyValueDetailViewModel *)self setTitle:0];

  [(RMUIKeyValueDetailViewModel *)self setValue:0];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  viewID = [(RMUIKeyValueDetailViewModel *)self viewID];
  [coderCopy encodeObject:viewID forKey:@"viewID"];

  title = [(RMUIKeyValueDetailViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  value = [(RMUIKeyValueDetailViewModel *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (RMUIKeyValueDetailViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = RMUIKeyValueDetailViewModel;
  v5 = [(RMUIKeyValueDetailViewModel *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"viewID"];
    viewID = v5->_viewID;
    v5->_viewID = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"value"];
    value = v5->_value;
    v5->_value = v13;
  }

  return v5;
}

@end