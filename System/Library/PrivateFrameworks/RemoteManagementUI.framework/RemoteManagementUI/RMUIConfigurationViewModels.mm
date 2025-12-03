@interface RMUIConfigurationViewModels
- (RMUIConfigurationViewModels)initWithCoder:(id)coder;
- (RMUIConfigurationViewModels)initWithProfileViewModels:(id)models pluginSectionViewModels:(id)viewModels pluginViewModels:(id)pluginViewModels;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMUIConfigurationViewModels

- (RMUIConfigurationViewModels)initWithProfileViewModels:(id)models pluginSectionViewModels:(id)viewModels pluginViewModels:(id)pluginViewModels
{
  modelsCopy = models;
  viewModelsCopy = viewModels;
  pluginViewModelsCopy = pluginViewModels;
  v15.receiver = self;
  v15.super_class = RMUIConfigurationViewModels;
  v12 = [(RMUIConfigurationViewModels *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profileViewModels, models);
    objc_storeStrong(&v13->_pluginSectionViewModels, viewModels);
    objc_storeStrong(&v13->_pluginViewModels, pluginViewModels);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  profileViewModels = [(RMUIConfigurationViewModels *)self profileViewModels];
  [coderCopy encodeObject:profileViewModels forKey:@"profileViewModels"];

  pluginSectionViewModels = [(RMUIConfigurationViewModels *)self pluginSectionViewModels];
  [coderCopy encodeObject:pluginSectionViewModels forKey:@"pluginSectionViewModels"];

  pluginViewModels = [(RMUIConfigurationViewModels *)self pluginViewModels];
  [coderCopy encodeObject:pluginViewModels forKey:@"pluginViewModels"];
}

- (RMUIConfigurationViewModels)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = RMUIConfigurationViewModels;
  v5 = [(RMUIConfigurationViewModels *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"profileViewModels"];
    profileViewModels = v5->_profileViewModels;
    v5->_profileViewModels = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"pluginSectionViewModels"];
    pluginSectionViewModels = v5->_pluginSectionViewModels;
    v5->_pluginSectionViewModels = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"pluginViewModels"];
    pluginViewModels = v5->_pluginViewModels;
    v5->_pluginViewModels = v19;
  }

  return v5;
}

@end