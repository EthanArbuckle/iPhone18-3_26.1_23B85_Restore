@interface CTUIListWithHeaderLoadingGroup
- (CTUIListWithHeaderLoadingGroup)initWithHostController:(id)controller;
- (PSListController)hostController;
- (id)specifiers;
- (void)setContentSpecifiers:(id)specifiers;
@end

@implementation CTUIListWithHeaderLoadingGroup

- (CTUIListWithHeaderLoadingGroup)initWithHostController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CTUIListWithHeaderLoadingGroup;
  v5 = [(CTUIListWithHeaderLoadingGroup *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostController, controllerCopy);
    v7 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:&stru_287733598 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    spinnerSpecifier = v6->_spinnerSpecifier;
    v6->_spinnerSpecifier = v7;
  }

  return v6;
}

- (void)setContentSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v7 = specifiersCopy;
  if (specifiersCopy)
  {
    v5 = specifiersCopy;
    specifiersCopy = v7;
  }

  contentSpecifiers = self->_contentSpecifiers;
  self->_contentSpecifiers = specifiersCopy;
}

- (id)specifiers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:self->_headerSpecifiers];
  v4 = v3;
  if (self->_contentSpecifiers)
  {
    [v3 addObjectsFromArray:?];
  }

  else
  {
    [v3 addObject:self->_spinnerSpecifier];
  }

  return v4;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end