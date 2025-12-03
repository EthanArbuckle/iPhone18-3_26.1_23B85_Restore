@interface SCLListViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (SCLListViewController)init;
- (id)specifiers;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)beginUpdates;
- (void)dealloc;
- (void)endUpdates;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reevaluateEditingMode;
- (void)setWantsEditingMode:(BOOL)mode;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    specifierSource = [(SCLListViewController *)self specifierSource];
    if (!specifierSource)
    {
      [(SCLListViewController *)self loadSpecifierSource];
    }

    specifierSource2 = [(SCLListViewController *)self specifierSource];

    allSpecifiers = [specifierSource2 allSpecifiers];
    if (!specifierSource2)
    {

      allSpecifiers = MEMORY[0x277CBEBF8];
    }

    v8 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = allSpecifiers;

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

- (void)setWantsEditingMode:(BOOL)mode
{
  if (self->_wantsEditingMode != mode)
  {
    self->_wantsEditingMode = mode;
    [(SCLListViewController *)self reevaluateEditingMode];
  }
}

- (void)reevaluateEditingMode
{
  if ([(SCLListViewController *)self isViewLoaded])
  {
    table = [(SCLListViewController *)self table];
    [table setEditing:{-[SCLListViewController wantsEditingMode](self, "wantsEditingMode")}];

    table2 = [(SCLListViewController *)self table];
    [table2 setAllowsSelectionDuringEditing:{-[SCLListViewController wantsEditingMode](self, "wantsEditingMode")}];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  v11 = changeCopy;
  if (kAllSpecifiersContext == context)
  {
    v12 = *MEMORY[0x277CCA300];
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    null = [MEMORY[0x277CBEB68] null];

    if (v13 != null)
    {
      v15 = *MEMORY[0x277CCA2F0];
      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v16 != null2)
      {
        v18 = [v11 objectForKeyedSubscript:v12];
        v19 = [v11 objectForKeyedSubscript:v15];
        [(SCLListViewController *)self beginUpdates];
        pendingUpdateStartSpecifiers = [(SCLListViewController *)self pendingUpdateStartSpecifiers];

        if (!pendingUpdateStartSpecifiers)
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
    [(SCLListViewController *)&v21 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SCLListViewController;
  pathCopy = path;
  viewCopy = view;
  [(SCLListViewController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(SCLListViewController *)self specifierAtIndexPath:pathCopy, v10.receiver, v10.super_class];
  specifierSource = [(SCLListViewController *)self specifierSource];
  [specifierSource tableView:viewCopy didSelectRowAtIndexPath:pathCopy specifier:v8];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(SCLListViewController *)self specifierAtIndexPath:path];
  v5 = [v4 objectForKeyedSubscript:@"SCLListControllerEditingEnabled"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(SCLListViewController *)self specifierAtIndexPath:path];
  v5 = [v4 objectForKeyedSubscript:@"SCLListControllerCellEditingStyle"];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v4 = [(SCLListViewController *)self specifierAtIndexPath:path];
  v5 = [v4 objectForKeyedSubscript:@"SCLListControllerTrailingSwipeActionsConfiguration"];

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(SCLListViewController *)self specifierAtIndexPath:path, style];
  v5 = [style objectForKeyedSubscript:@"SCLListControllerCellEditingStyle"];
  if ([v5 integerValue] == 2 && objc_msgSend(style, "buttonAction"))
  {
    [style performButtonAction];
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
    pendingUpdateStartSpecifiers = [(SCLListViewController *)self pendingUpdateStartSpecifiers];
    pendingUpdateEndSpecifiers = [(SCLListViewController *)self pendingUpdateEndSpecifiers];
    [(SCLListViewController *)self setPendingUpdateStartSpecifiers:0];
    [(SCLListViewController *)self setPendingUpdateEndSpecifiers:0];
    if (pendingUpdateStartSpecifiers && pendingUpdateEndSpecifiers)
    {
      v5 = [MEMORY[0x277CBEB58] setWithArray:pendingUpdateStartSpecifiers];
      v6 = [MEMORY[0x277CBEB98] setWithArray:pendingUpdateEndSpecifiers];
      [v5 minusSet:v6];

      v7 = [MEMORY[0x277CBEB58] setWithArray:pendingUpdateEndSpecifiers];
      v8 = [MEMORY[0x277CBEB98] setWithArray:pendingUpdateStartSpecifiers];
      [v7 minusSet:v8];

      indexSet = [MEMORY[0x277CCAB58] indexSet];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __35__SCLListViewController_endUpdates__block_invoke;
      v21[3] = &unk_279B6F378;
      v22 = v5;
      v23 = indexSet;
      v10 = indexSet;
      v11 = v5;
      [pendingUpdateStartSpecifiers enumerateObjectsUsingBlock:v21];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __35__SCLListViewController_endUpdates__block_invoke_2;
      v18[3] = &unk_279B6F3A0;
      v19 = pendingUpdateStartSpecifiers;
      selfCopy = self;
      [v10 enumerateRangesUsingBlock:v18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __35__SCLListViewController_endUpdates__block_invoke_3;
      v14[3] = &unk_279B6F3C8;
      v15 = v7;
      selfCopy2 = self;
      v17 = pendingUpdateEndSpecifiers;
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