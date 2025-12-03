@interface SBHLibraryCategoriesRootFolder
- (void)enumerateAllIconsWithBaseIndexPath:(id)path options:(unint64_t)options usingBlock:(id)block;
- (void)setSupportsBadging:(BOOL)badging;
@end

@implementation SBHLibraryCategoriesRootFolder

- (void)setSupportsBadging:(BOOL)badging
{
  if (self->_supportsBadging != badging)
  {
    self->_supportsBadging = badging;
    model = [(SBRootFolder *)self model];
    [model enumerateLeafIconsUsingBlock:&__block_literal_global_80];
  }
}

- (void)enumerateAllIconsWithBaseIndexPath:(id)path options:(unint64_t)options usingBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__SBHLibraryCategoriesRootFolder_enumerateAllIconsWithBaseIndexPath_options_usingBlock___block_invoke;
  v12[3] = &unk_1E80916C8;
  v16 = (options & 2) != 0;
  v13 = pathCopy;
  v14 = blockCopy;
  optionsCopy = options;
  v10 = blockCopy;
  v11 = pathCopy;
  [(SBFolder *)self enumerateListsUsingBlock:v12];
}

void __88__SBHLibraryCategoriesRootFolder_enumerateAllIconsWithBaseIndexPath_options_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (*(a1 + 56) != 1 || ([v7 isHidden] & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__SBHLibraryCategoriesRootFolder_enumerateAllIconsWithBaseIndexPath_options_usingBlock___block_invoke_2;
    v10[3] = &unk_1E80916A0;
    v13 = a3;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14 = a4;
    v15 = v9;
    [v8 enumerateIconsUsingBlock:v10];
  }
}

void __88__SBHLibraryCategoriesRootFolder_enumerateAllIconsWithBaseIndexPath_options_usingBlock___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:a3 listIndex:a1[6]];
  v7 = [v6 bs_indexPathByAddingPrefix:a1[4]];
  (*(a1[5] + 16))();
  if ([v5 isFolderIcon] && (a1[8] & 1) != 0)
  {
    v8 = [v5 folder];
    [v8 enumerateAllIconsWithBaseIndexPath:v7 options:a1[8] usingBlock:a1[5]];
    goto LABEL_7;
  }

  if ([v5 isCategoryIcon] && (a1[8] & 1) != 0)
  {
    v8 = [v5 category];
    v9 = [v8 expandedPodFolder];
    [v9 enumerateAllIconsWithBaseIndexPath:v7 options:a1[8] usingBlock:a1[5]];

LABEL_7:
  }
}

@end