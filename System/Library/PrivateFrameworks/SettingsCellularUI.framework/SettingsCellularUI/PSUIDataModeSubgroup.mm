@interface PSUIDataModeSubgroup
- (PSUIDataModeSubgroup)initWithHostController:(id)a3 parentSpecifier:(id)a4 dataCache:(id)a5 radioCache:(id)a6 context:(id)a7 ctClient:(id)a8;
- (PSUIDataModeSubgroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)specifiers;
@end

@implementation PSUIDataModeSubgroup

- (PSUIDataModeSubgroup)initWithHostController:(id)a3 parentSpecifier:(id)a4 dataCache:(id)a5 radioCache:(id)a6 context:(id)a7 ctClient:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = PSUIDataModeSubgroup;
  v20 = [(PSUIDataModeSubgroup *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_hostController, v14);
    objc_storeWeak(&v21->_parentSpecifier, v15);
    objc_storeWeak(&v21->_dataCache, v16);
    objc_storeWeak(&v21->_radioCache, v17);
    objc_storeWeak(&v21->_context, v18);
    v22 = [PSUIDataModeSpecifier alloc];
    WeakRetained = objc_loadWeakRetained(&v21->_hostController);
    v24 = objc_loadWeakRetained(&v21->_parentSpecifier);
    v25 = [(PSUIDataModeSpecifier *)v22 initWithCTClient:v19 hostController:WeakRetained parentSpecifier:v24];
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
    v8 = [(PSUIDataModeSpecifier *)self->_dataModeSpecifier lowDataModeGroupSpecifier];
    dataModeSpecifier = self->_dataModeSpecifier;
    v16[0] = v8;
    v16[1] = dataModeSpecifier;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v7 addObjectsFromArray:v10];
  }

  v11 = [(PSUIPrivacyProxySpecifier *)v6 groupSpecifier];
  v15[0] = v11;
  v15[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v7 addObjectsFromArray:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PSUIDataModeSubgroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

@end