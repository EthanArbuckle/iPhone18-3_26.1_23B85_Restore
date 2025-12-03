@interface PSUIDataModeSubgroup
- (PSUIDataModeSubgroup)initWithHostController:(id)controller parentSpecifier:(id)specifier dataCache:(id)cache radioCache:(id)radioCache context:(id)context ctClient:(id)client;
- (PSUIDataModeSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)specifiers;
@end

@implementation PSUIDataModeSubgroup

- (PSUIDataModeSubgroup)initWithHostController:(id)controller parentSpecifier:(id)specifier dataCache:(id)cache radioCache:(id)radioCache context:(id)context ctClient:(id)client
{
  controllerCopy = controller;
  specifierCopy = specifier;
  cacheCopy = cache;
  radioCacheCopy = radioCache;
  contextCopy = context;
  clientCopy = client;
  v28.receiver = self;
  v28.super_class = PSUIDataModeSubgroup;
  v20 = [(PSUIDataModeSubgroup *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_hostController, controllerCopy);
    objc_storeWeak(&v21->_parentSpecifier, specifierCopy);
    objc_storeWeak(&v21->_dataCache, cacheCopy);
    objc_storeWeak(&v21->_radioCache, radioCacheCopy);
    objc_storeWeak(&v21->_context, contextCopy);
    v22 = [PSUIDataModeSpecifier alloc];
    WeakRetained = objc_loadWeakRetained(&v21->_hostController);
    v24 = objc_loadWeakRetained(&v21->_parentSpecifier);
    v25 = [(PSUIDataModeSpecifier *)v22 initWithCTClient:clientCopy hostController:WeakRetained parentSpecifier:v24];
    dataModeSpecifier = v21->_dataModeSpecifier;
    v21->_dataModeSpecifier = v25;

    [(PSUIDataModeSpecifier *)v21->_dataModeSpecifier setIdentifier:@"DATA_MODE"];
  }

  return v21;
}

- (id)specifiers
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [PSUIPrivacyProxySpecifier alloc];
  WeakRetained = objc_loadWeakRetained(&self->_dataCache);
  v5 = objc_loadWeakRetained(&self->_context);
  v6 = [(PSUIPrivacyProxySpecifier *)v3 initWithDataCache:WeakRetained context:v5];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(PSUIDataModeSpecifier *)self->_dataModeSpecifier showDataMode]== 2)
  {
    [v7 addObject:self->_dataModeSpecifier];
  }

  else if ([(PSUIDataModeSpecifier *)self->_dataModeSpecifier showDataMode]== 1)
  {
    lowDataModeGroupSpecifier = [(PSUIDataModeSpecifier *)self->_dataModeSpecifier lowDataModeGroupSpecifier];
    dataModeSpecifier = self->_dataModeSpecifier;
    v16[0] = lowDataModeGroupSpecifier;
    v16[1] = dataModeSpecifier;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v7 addObjectsFromArray:v10];
  }

  groupSpecifier = [(PSUIPrivacyProxySpecifier *)v6 groupSpecifier];
  v15[0] = groupSpecifier;
  v15[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v7 addObjectsFromArray:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PSUIDataModeSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

@end