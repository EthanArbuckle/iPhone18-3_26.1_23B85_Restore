@interface SBHDomainIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)class inDomain:(id)domain;
- (SBHDomainIconGridSizeClassSet)initWithGridSizeClassDomain:(id)domain filter:(id)filter;
- (id)gridSizeClasses;
@end

@implementation SBHDomainIconGridSizeClassSet

- (SBHDomainIconGridSizeClassSet)initWithGridSizeClassDomain:(id)domain filter:(id)filter
{
  domainCopy = domain;
  filterCopy = filter;
  v9 = [MEMORY[0x1E695DFD8] set];
  v14.receiver = self;
  v14.super_class = SBHDomainIconGridSizeClassSet;
  v10 = [(SBHIconGridSizeClassSet *)&v14 initWithGridSizeClasses:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_gridSizeClassDomain, domain);
    v11 = [filterCopy copy];
    filter = v10->_filter;
    v10->_filter = v11;
  }

  return v10;
}

- (id)gridSizeClasses
{
  gridSizeClassDomain = [(SBHDomainIconGridSizeClassSet *)self gridSizeClassDomain];
  filter = [(SBHDomainIconGridSizeClassSet *)self filter];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SBHDomainIconGridSizeClassSet_gridSizeClasses__block_invoke;
  v11[3] = &unk_1E808C8F8;
  v13 = filter;
  v6 = v5;
  v12 = v6;
  v7 = filter;
  [gridSizeClassDomain enumerateGridSizeClassesUsingBlock:v11];
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

- (BOOL)containsGridSizeClass:(id)class inDomain:(id)domain
{
  classCopy = class;
  domainCopy = domain;
  filter = [(SBHDomainIconGridSizeClassSet *)self filter];
  v9 = filter;
  if (filter && !(*(filter + 16))(filter, classCopy))
  {
    v10 = 0;
  }

  else
  {
    v10 = [domainCopy containsGridSizeClass:classCopy];
  }

  return v10;
}

@end