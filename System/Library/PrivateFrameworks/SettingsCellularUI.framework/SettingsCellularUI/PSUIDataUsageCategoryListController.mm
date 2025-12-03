@interface PSUIDataUsageCategoryListController
- (BOOL)shouldShowSpinner;
- (PSUIDataUsageCategoryListController)init;
- (id)specifiers;
@end

@implementation PSUIDataUsageCategoryListController

- (PSUIDataUsageCategoryListController)init
{
  v9.receiver = self;
  v9.super_class = PSUIDataUsageCategoryListController;
  v2 = [(PSUIDataUsageCategoryListController *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:&stru_287733598 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    spinnerSpecifier = v2->_spinnerSpecifier;
    v2->_spinnerSpecifier = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x277D4D880] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x277D4D8A8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x277D4D8A0] object:0];
  }

  return v2;
}

- (id)specifiers
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    if ([(PSUIDataUsageCategoryListController *)self shouldShowSpinner])
    {
      v15[0] = self->_spinnerSpecifier;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v6 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      parentSpecifier = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
      subcategorySpecifiers = [parentSpecifier subcategorySpecifiers];
      v10 = [subcategorySpecifiers mutableCopy];

      v11 = +[CTUIDataUsageSorting userSelectedComparator];
      [v10 sortUsingComparator:v11];

      [v7 addObjectsFromArray:v10];
      [MEMORY[0x277D4D878] logSpecifiers:v7 origin:@"[PSUIDataUsageCategoryListController specifiers] end"];
      v12 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v7;
    }

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)shouldShowSpinner
{
  parentSpecifier = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
  if ([parentSpecifier appType] != 2)
  {

    goto LABEL_5;
  }

  parentSpecifier2 = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
  subcategorySpecifiers = [parentSpecifier2 subcategorySpecifiers];
  v6 = [subcategorySpecifiers count];

  if (!v6)
  {
LABEL_5:
    parentSpecifier3 = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
    v7 = [parentSpecifier3 dataUsage] == 0;

    return v7;
  }

  return 0;
}

@end