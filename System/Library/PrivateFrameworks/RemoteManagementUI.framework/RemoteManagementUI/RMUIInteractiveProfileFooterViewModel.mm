@interface RMUIInteractiveProfileFooterViewModel
- (RMUIInteractiveProfileFooterViewModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIInteractiveProfileFooterViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(RMUIInteractiveProfileFooterViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];
}

- (RMUIInteractiveProfileFooterViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RMUIInteractiveProfileFooterViewModel;
  v5 = [(RMUIInteractiveProfileFooterViewModel *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;
  }

  return v5;
}

@end