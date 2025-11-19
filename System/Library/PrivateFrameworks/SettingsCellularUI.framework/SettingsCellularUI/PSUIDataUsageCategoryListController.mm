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

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x277D4D880] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x277D4D8A8] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x277D4D8A0] object:0];
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
      v8 = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
      v9 = [v8 subcategorySpecifiers];
      v10 = [v9 mutableCopy];

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
  v3 = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
  if ([v3 appType] != 2)
  {

    goto LABEL_5;
  }

  v4 = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
  v5 = [v4 subcategorySpecifiers];
  v6 = [v5 count];

  if (!v6)
  {
LABEL_5:
    v8 = [(PSUIDataUsageCategoryListController *)self parentSpecifier];
    v7 = [v8 dataUsage] == 0;

    return v7;
  }

  return 0;
}

@end