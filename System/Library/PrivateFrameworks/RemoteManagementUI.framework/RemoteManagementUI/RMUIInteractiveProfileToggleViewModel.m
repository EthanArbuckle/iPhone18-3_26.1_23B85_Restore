@interface RMUIInteractiveProfileToggleViewModel
- (RMUIInteractiveProfileToggleViewModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMUIInteractiveProfileToggleViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMUIInteractiveProfileToggleViewModel *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMUIInteractiveProfileToggleViewModel toggleState](self, "toggleState")}];
  [v4 encodeObject:v6 forKey:@"toggleState"];
}

- (RMUIInteractiveProfileToggleViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RMUIInteractiveProfileToggleViewModel;
  v5 = [(RMUIInteractiveProfileToggleViewModel *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"toggleState"];
    v5->_toggleState = [v9 BOOLValue];
  }

  return v5;
}

@end