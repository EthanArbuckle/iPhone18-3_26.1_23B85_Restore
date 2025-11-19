@interface SBHDomainIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)a3 inDomain:(id)a4;
- (SBHDomainIconGridSizeClassSet)initWithGridSizeClassDomain:(id)a3 filter:(id)a4;
- (id)gridSizeClasses;
@end

@implementation SBHDomainIconGridSizeClassSet

- (SBHDomainIconGridSizeClassSet)initWithGridSizeClassDomain:(id)a3 filter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DFD8] set];
  v14.receiver = self;
  v14.super_class = SBHDomainIconGridSizeClassSet;
  v10 = [(SBHIconGridSizeClassSet *)&v14 initWithGridSizeClasses:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_gridSizeClassDomain, a3);
    v11 = [v8 copy];
    filter = v10->_filter;
    v10->_filter = v11;
  }

  return v10;
}

- (id)gridSizeClasses
{
  v3 = [(SBHDomainIconGridSizeClassSet *)self gridSizeClassDomain];
  v4 = [(SBHDomainIconGridSizeClassSet *)self filter];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SBHDomainIconGridSizeClassSet_gridSizeClasses__block_invoke;
  v11[3] = &unk_1E808C8F8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [v3 enumerateGridSizeClassesUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

uint64_t __48__SBHDomainIconGridSizeClassSet_gridSizeClasses__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v8 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(), v6 = v8, v5))
  {
    v5 = [*(a1 + 32) addObject:v8];
    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)containsGridSizeClass:(id)a3 inDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHDomainIconGridSizeClassSet *)self filter];
  v9 = v8;
  if (v8 && !(*(v8 + 16))(v8, v6))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 containsGridSizeClass:v6];
  }

  return v10;
}

@end