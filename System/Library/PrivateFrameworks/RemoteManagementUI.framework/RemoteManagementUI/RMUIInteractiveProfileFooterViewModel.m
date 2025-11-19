@interface RMUIInteractiveProfileFooterViewModel
- (RMUIInteractiveProfileFooterViewModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMUIInteractiveProfileFooterViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMUIInteractiveProfileFooterViewModel *)self title];
  [v4 encodeObject:v5 forKey:@"title"];
}

- (RMUIInteractiveProfileFooterViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RMUIInteractiveProfileFooterViewModel;
  v5 = [(RMUIInteractiveProfileFooterViewModel *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;
  }

  return v5;
}

@end