@interface PSUISIMSubgroup
- (PSListController)listController;
- (PSSpecifier)parentSpecifier;
- (PSUISIMSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUISIMSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier;
- (id)specifiers;
@end

@implementation PSUISIMSubgroup

- (PSUISIMSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier
{
  controllerCopy = controller;
  parentSpecifierCopy = parentSpecifier;
  v12.receiver = self;
  v12.super_class = PSUISIMSubgroup;
  v9 = [(PSUISIMSubgroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_listController, controllerCopy);
    objc_storeWeak(&v10->_parentSpecifier, parentSpecifierCopy);
  }

  return v10;
}

- (PSUISIMSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)specifiers
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  bundleControllers = self->_bundleControllers;
  self->_bundleControllers = v4;

  v33 = *MEMORY[0x277D3FE08];
  v34[0] = @"SIMSettings";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v31 = @"items";
  v23 = v30;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v32 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v9 = objc_loadWeakRetained(&self->_listController);
  bundle = [v9 bundle];
  v11 = objc_loadWeakRetained(&self->_listController);
  v28 = 0;
  v12 = SpecifiersFromPlist();

  v13 = v28;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v13, &v28];
  [v3 addObjectsFromArray:v12];
  v14 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    v19 = MEMORY[0x277D3FC90];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (!*(*(*(&v24 + 1) + 8 * i) + *v19))
        {
          [v14 addObject:?];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    [v15 removeObjectsInArray:v14];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

@end