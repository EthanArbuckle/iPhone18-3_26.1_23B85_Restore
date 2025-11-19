@interface SCLListViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (SCLListViewController)init;
- (id)specifiers;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)beginUpdates;
- (void)dealloc;
- (void)endUpdates;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reevaluateEditingMode;
- (void)setWantsEditingMode:(BOOL)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SCLListViewController

- (SCLListViewController)init
{
  v5.receiver = self;
  v5.super_class = SCLListViewController;
  v2 = [(SCLListViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCLListViewController *)v2 addObserver:v2 forKeyPath:@"specifierSource.allSpecifiers" options:3 context:kAllSpecifiersContext];
  }

  return v3;
}

- (void)dealloc
{
  [(SCLListViewController *)self removeObserver:self forKeyPath:@"specifierSource.allSpecifiers" context:kAllSpecifiersContext];
  v3.receiver = self;
  v3.super_class = SCLListViewController;
  [(SCLListViewController *)&v3 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(SCLListViewController *)self specifierSource];
    if (!v5)
    {
      [(SCLListViewController *)self loadSpecifierSource];
    }

    v6 = [(SCLListViewController *)self specifierSource];

    v7 = [v6 allSpecifiers];
    if (!v6)
    {

      v7 = MEMORY[0x277CBEBF8];
    }

    v8 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v7;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SCLListViewController;
  [(SCLListViewController *)&v3 viewDidLoad];
  [(SCLListViewController *)self reevaluateEditingMode];
}

- (void)setWantsEditingMode:(BOOL)a3
{
  if (self->_wantsEditingMode != a3)
  {
    self->_wantsEditingMode = a3;
    [(SCLListViewController *)self reevaluateEditingMode];
  }
}

- (void)reevaluateEditingMode
{
  if ([(SCLListViewController *)self isViewLoaded])
  {
    v3 = [(SCLListViewController *)self table];
    [v3 setEditing:{-[SCLListViewController wantsEditingMode](self, "wantsEditingMode")}];

    v4 = [(SCLListViewController *)self table];
    [v4 setAllowsSelectionDuringEditing:{-[SCLListViewController wantsEditingMode](self, "wantsEditingMode")}];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = v10;
  if (kAllSpecifiersContext == a6)
  {
    v12 = *MEMORY[0x277CCA300];
    v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v14 = [MEMORY[0x277CBEB68] null];

    if (v13 != v14)
    {
      v15 = *MEMORY[0x277CCA2F0];
      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v17 = [MEMORY[0x277CBEB68] null];

      if (v16 != v17)
      {
        v18 = [v11 objectForKeyedSubscript:v12];
        v19 = [v11 objectForKeyedSubscript:v15];
        [(SCLListViewController *)self beginUpdates];
        v20 = [(SCLListViewController *)self pendingUpdateStartSpecifiers];

        if (!v20)
        {
          [(SCLListViewController *)self setPendingUpdateStartSpecifiers:v18];
        }

        [(SCLListViewController *)self setPendingUpdateEndSpecifiers:v19];
        [(SCLListViewController *)self endUpdates];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SCLListViewController;
    [(SCLListViewController *)&v21 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = SCLListViewController;
  v6 = a4;
  v7 = a3;
  [(SCLListViewController *)&v10 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(SCLListViewController *)self specifierAtIndexPath:v6, v10.receiver, v10.super_class];
  v9 = [(SCLListViewController *)self specifierSource];
  [v9 tableView:v7 didSelectRowAtIndexPath:v6 specifier:v8];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(SCLListViewController *)self specifierAtIndexPath:a4];
  v5 = [v4 objectForKeyedSubscript:@"SCLListControllerEditingEnabled"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(SCLListViewController *)self specifierAtIndexPath:a4];
  v5 = [v4 objectForKeyedSubscript:@"SCLListControllerCellEditingStyle"];
  v6 = [v5 integerValue];

  return v6;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v4 = [(SCLListViewController *)self specifierAtIndexPath:a4];
  v5 = [v4 objectForKeyedSubscript:@"SCLListControllerTrailingSwipeActionsConfiguration"];

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6 = [(SCLListViewController *)self specifierAtIndexPath:a5, a4];
  v5 = [v6 objectForKeyedSubscript:@"SCLListControllerCellEditingStyle"];
  if ([v5 integerValue] == 2 && objc_msgSend(v6, "buttonAction"))
  {
    [v6 performButtonAction];
  }
}

- (void)beginUpdates
{
  v3.receiver = self;
  v3.super_class = SCLListViewController;
  [(SCLListViewController *)&v3 beginUpdates];
  [(SCLListViewController *)self setUpdateCount:[(SCLListViewController *)self updateCount]+ 1];
}

- (void)endUpdates
{
  [(SCLListViewController *)self setUpdateCount:[(SCLListViewController *)self updateCount]- 1];
  if (![(SCLListViewController *)self updateCount])
  {
    v3 = [(SCLListViewController *)self pendingUpdateStartSpecifiers];
    v4 = [(SCLListViewController *)self pendingUpdateEndSpecifiers];
    [(SCLListViewController *)self setPendingUpdateStartSpecifiers:0];
    [(SCLListViewController *)self setPendingUpdateEndSpecifiers:0];
    if (v3 && v4)
    {
      v5 = [MEMORY[0x277CBEB58] setWithArray:v3];
      v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
      [v5 minusSet:v6];

      v7 = [MEMORY[0x277CBEB58] setWithArray:v4];
      v8 = [MEMORY[0x277CBEB98] setWithArray:v3];
      [v7 minusSet:v8];

      v9 = [MEMORY[0x277CCAB58] indexSet];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __35__SCLListViewController_endUpdates__block_invoke;
      v21[3] = &unk_279B6F378;
      v22 = v5;
      v23 = v9;
      v10 = v9;
      v11 = v5;
      [v3 enumerateObjectsUsingBlock:v21];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __35__SCLListViewController_endUpdates__block_invoke_2;
      v18[3] = &unk_279B6F3A0;
      v19 = v3;
      v20 = self;
      [v10 enumerateRangesUsingBlock:v18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __35__SCLListViewController_endUpdates__block_invoke_3;
      v14[3] = &unk_279B6F3C8;
      v15 = v7;
      v16 = self;
      v17 = v4;
      v12 = v7;
      [v17 enumerateObjectsUsingBlock:v14];
    }
  }

  v13.receiver = self;
  v13.super_class = SCLListViewController;
  [(SCLListViewController *)&v13 endUpdates];
}

uint64_t __35__SCLListViewController_endUpdates__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

void __35__SCLListViewController_endUpdates__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) subarrayWithRange:{a2, a3}];
  [*(a1 + 40) removeContiguousSpecifiers:v4 animated:1];
}

void __35__SCLListViewController_endUpdates__block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([a1[4] containsObject:?])
  {
    v5 = a1[5];
    if (a3)
    {
      v6 = [a1[6] objectAtIndexedSubscript:a3 - 1];
      [v5 insertSpecifier:v7 afterSpecifier:v6];
    }

    else
    {
      [a1[5] insertSpecifier:v7 atIndex:0];
    }
  }
}

@end