@interface RMUIKeyValueDetailViewModel
- (RMUIKeyValueDetailViewModel)init;
- (RMUIKeyValueDetailViewModel)initWithCoder:(id)a3;
- (RMUIKeyValueDetailViewModel)initWithTitle:(id)a3 value:(id)a4;
- (void)clearModel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMUIKeyValueDetailViewModel

- (RMUIKeyValueDetailViewModel)init
{
  v7.receiver = self;
  v7.super_class = RMUIKeyValueDetailViewModel;
  v2 = [(RMUIKeyValueDetailViewModel *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    viewID = v2->_viewID;
    v2->_viewID = v4;
  }

  return v2;
}

- (RMUIKeyValueDetailViewModel)initWithTitle:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RMUIKeyValueDetailViewModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (void)clearModel
{
  [(RMUIKeyValueDetailViewModel *)self setTitle:0];

  [(RMUIKeyValueDetailViewModel *)self setValue:0];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMUIKeyValueDetailViewModel *)self viewID];
  [v4 encodeObject:v5 forKey:@"viewID"];

  v6 = [(RMUIKeyValueDetailViewModel *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(RMUIKeyValueDetailViewModel *)self value];
  [v4 encodeObject:v7 forKey:@"value"];
}

- (RMUIKeyValueDetailViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RMUIKeyValueDetailViewModel;
  v5 = [(RMUIKeyValueDetailViewModel *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"viewID"];
    viewID = v5->_viewID;
    v5->_viewID = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"value"];
    value = v5->_value;
    v5->_value = v13;
  }

  return v5;
}

@end