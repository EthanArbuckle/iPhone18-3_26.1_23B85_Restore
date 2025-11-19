@interface CTUIListLoadingGroup
- (CTUIListLoadingGroup)initWithHostController:(id)a3 groupSpecifier:(id)a4;
- (NSArray)specifiers;
- (PSListController)hostController;
- (PSSpecifier)groupSpecifier;
- (void)setSpecifiers:(id)a3;
@end

@implementation CTUIListLoadingGroup

- (CTUIListLoadingGroup)initWithHostController:(id)a3 groupSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CTUIListLoadingGroup;
  v8 = [(CTUIListLoadingGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_hostController, v6);
    objc_storeWeak(&v9->_groupSpecifier, v7);
    v10 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:&stru_287733598 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    spinnerSpecifier = v9->_spinnerSpecifier;
    v9->_spinnerSpecifier = v10;
  }

  return v9;
}

- (void)setSpecifiers:(id)a3
{
  v5 = a3;
  if (v5 | self->_specifiers)
  {
    v14 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_hostController);
    [WeakRetained beginUpdates];

    specifiers = self->_specifiers;
    v8 = objc_loadWeakRetained(&self->_hostController);
    v9 = v8;
    if (specifiers)
    {
      [v8 removeContiguousSpecifiers:self->_specifiers animated:1];
    }

    else
    {
      [v8 removeSpecifier:self->_spinnerSpecifier animated:1];
    }

    objc_storeStrong(&self->_specifiers, a3);
    v10 = objc_loadWeakRetained(&self->_hostController);
    if (v14)
    {
      v11 = objc_loadWeakRetained(&self->_groupSpecifier);
      [v10 insertContiguousSpecifiers:v14 afterSpecifier:v11 animated:1];
    }

    else
    {
      spinnerSpecifier = self->_spinnerSpecifier;
      v11 = objc_loadWeakRetained(&self->_groupSpecifier);
      [v10 insertSpecifier:spinnerSpecifier afterSpecifier:v11 animated:1];
    }

    v13 = objc_loadWeakRetained(&self->_hostController);
    [v13 endUpdates];

    v5 = v14;
  }
}

- (NSArray)specifiers
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_specifiers)
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

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

@end