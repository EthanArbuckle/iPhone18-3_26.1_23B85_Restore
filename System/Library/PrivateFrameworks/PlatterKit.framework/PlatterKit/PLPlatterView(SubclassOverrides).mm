@interface PLPlatterView(SubclassOverrides)
@end

@implementation PLPlatterView(SubclassOverrides)

- (void)_initWithRecipe:()SubclassOverrides orRecipeNamesByTraitCollection:inBundle:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_ERROR, "%{public}@: recipe and custom recipe map both specified; map will be ignored", &v2, 0xCu);
}

@end