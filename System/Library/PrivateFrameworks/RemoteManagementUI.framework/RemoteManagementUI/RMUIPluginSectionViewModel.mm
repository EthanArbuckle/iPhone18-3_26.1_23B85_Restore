@interface RMUIPluginSectionViewModel
+ (id)newPluginSectionViewModelWithHeading:(id)heading viewModels:(id)models;
- (RMUIPluginSectionViewModel)initWithCoder:(id)coder;
- (RMUIPluginSectionViewModel)initWithHeading:(id)heading viewModels:(id)models;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIPluginSectionViewModel

+ (id)newPluginSectionViewModelWithHeading:(id)heading viewModels:(id)models
{
  modelsCopy = models;
  headingCopy = heading;
  v7 = [[RMUIPluginSectionViewModel alloc] initWithHeading:headingCopy viewModels:modelsCopy];

  return v7;
}

- (RMUIPluginSectionViewModel)initWithHeading:(id)heading viewModels:(id)models
{
  headingCopy = heading;
  modelsCopy = models;
  v12.receiver = self;
  v12.super_class = RMUIPluginSectionViewModel;
  v9 = [(RMUIPluginSectionViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heading, heading);
    objc_storeStrong(&v10->_viewModels, models);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  heading = [(RMUIPluginSectionViewModel *)self heading];
  [coderCopy encodeObject:heading forKey:@"heading"];

  viewModels = [(RMUIPluginSectionViewModel *)self viewModels];
  [coderCopy encodeObject:viewModels forKey:@"viewModels"];
}

- (RMUIPluginSectionViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = RMUIPluginSectionViewModel;
  v5 = [(RMUIPluginSectionViewModel *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"heading"];
    heading = v5->_heading;
    v5->_heading = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"viewModels"];
    viewModels = v5->_viewModels;
    v5->_viewModels = v12;
  }

  return v5;
}

@end