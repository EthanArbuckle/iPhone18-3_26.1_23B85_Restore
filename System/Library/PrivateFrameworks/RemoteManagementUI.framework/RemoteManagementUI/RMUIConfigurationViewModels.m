@interface RMUIConfigurationViewModels
- (RMUIConfigurationViewModels)initWithCoder:(id)a3;
- (RMUIConfigurationViewModels)initWithProfileViewModels:(id)a3 pluginSectionViewModels:(id)a4 pluginViewModels:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMUIConfigurationViewModels

- (RMUIConfigurationViewModels)initWithProfileViewModels:(id)a3 pluginSectionViewModels:(id)a4 pluginViewModels:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RMUIConfigurationViewModels;
  v12 = [(RMUIConfigurationViewModels *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profileViewModels, a3);
    objc_storeStrong(&v13->_pluginSectionViewModels, a4);
    objc_storeStrong(&v13->_pluginViewModels, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMUIConfigurationViewModels *)self profileViewModels];
  [v4 encodeObject:v5 forKey:@"profileViewModels"];

  v6 = [(RMUIConfigurationViewModels *)self pluginSectionViewModels];
  [v4 encodeObject:v6 forKey:@"pluginSectionViewModels"];

  v7 = [(RMUIConfigurationViewModels *)self pluginViewModels];
  [v4 encodeObject:v7 forKey:@"pluginViewModels"];
}

- (RMUIConfigurationViewModels)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RMUIConfigurationViewModels;
  v5 = [(RMUIConfigurationViewModels *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"profileViewModels"];
    profileViewModels = v5->_profileViewModels;
    v5->_profileViewModels = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"pluginSectionViewModels"];
    pluginSectionViewModels = v5->_pluginSectionViewModels;
    v5->_pluginSectionViewModels = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"pluginViewModels"];
    pluginViewModels = v5->_pluginViewModels;
    v5->_pluginViewModels = v19;
  }

  return v5;
}

@end