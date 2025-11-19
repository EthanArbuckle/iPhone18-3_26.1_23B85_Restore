@interface RMUIPluginSectionViewModel
+ (id)newPluginSectionViewModelWithHeading:(id)a3 viewModels:(id)a4;
- (RMUIPluginSectionViewModel)initWithCoder:(id)a3;
- (RMUIPluginSectionViewModel)initWithHeading:(id)a3 viewModels:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMUIPluginSectionViewModel

+ (id)newPluginSectionViewModelWithHeading:(id)a3 viewModels:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RMUIPluginSectionViewModel alloc] initWithHeading:v6 viewModels:v5];

  return v7;
}

- (RMUIPluginSectionViewModel)initWithHeading:(id)a3 viewModels:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RMUIPluginSectionViewModel;
  v9 = [(RMUIPluginSectionViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heading, a3);
    objc_storeStrong(&v10->_viewModels, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMUIPluginSectionViewModel *)self heading];
  [v4 encodeObject:v5 forKey:@"heading"];

  v6 = [(RMUIPluginSectionViewModel *)self viewModels];
  [v4 encodeObject:v6 forKey:@"viewModels"];
}

- (RMUIPluginSectionViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RMUIPluginSectionViewModel;
  v5 = [(RMUIPluginSectionViewModel *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"heading"];
    heading = v5->_heading;
    v5->_heading = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"viewModels"];
    viewModels = v5->_viewModels;
    v5->_viewModels = v12;
  }

  return v5;
}

@end