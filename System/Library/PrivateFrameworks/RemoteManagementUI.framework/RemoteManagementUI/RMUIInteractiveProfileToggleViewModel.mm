@interface RMUIInteractiveProfileToggleViewModel
- (RMUIInteractiveProfileToggleViewModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIInteractiveProfileToggleViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(RMUIInteractiveProfileToggleViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMUIInteractiveProfileToggleViewModel toggleState](self, "toggleState")}];
  [coderCopy encodeObject:v6 forKey:@"toggleState"];
}

- (RMUIInteractiveProfileToggleViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RMUIInteractiveProfileToggleViewModel;
  v5 = [(RMUIInteractiveProfileToggleViewModel *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toggleState"];
    v5->_toggleState = [v9 BOOLValue];
  }

  return v5;
}

@end