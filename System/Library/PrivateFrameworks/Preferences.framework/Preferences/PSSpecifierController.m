@interface PSSpecifierController
- (BOOL)_getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifierAtIndex:(int64_t)a5 groups:(id)a6;
- (BOOL)getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifier:(id)a5;
- (BOOL)getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifierAtIndex:(int64_t)a5;
- (BOOL)getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifierID:(id)a5;
- (PSSpecifierController)init;
- (PSSpecifierControllerDelegate)viewController;
- (id)_createGroupIndices:(id)a3;
- (id)loadSpecifiers;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)specifierAtIndex:(int64_t)a3;
- (id)specifierAtIndexPath:(id)a3;
- (id)specifierForID:(id)a3;
- (int64_t)indexForIndexPath:(id)a3;
- (int64_t)indexOfGroup:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)createGroupIndices;
- (void)prepareSpecifiersMetadata;
- (void)reloadSpecifiers;
@end

@implementation PSSpecifierController

- (PSSpecifierController)init
{
  v5.receiver = self;
  v5.super_class = PSSpecifierController;
  v2 = [(PSSpecifierController *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(PSSpecifierController *)v2 setBundleControllers:v3];
  }

  return v2;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4
{
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [(PSSpecifierController *)self loadSpecifiersFromPlistName:v8 target:v7 bundle:v9];

  return v10;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v22 = 0;
  v23 = 0;
  v10 = a4;
  v11 = [v9 pathForResource:v8 ofType:@"plist"];
  if (!v11)
  {
    v12 = _PSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 bundlePath];
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Warning: failed to load preferences plist '%@.plist' for bundle %@", buf, 0x16u);
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v11];
  v15 = objc_opt_new();
  specifier = self->_specifier;
  v21 = v15;
  v17 = SpecifiersFromPlist(v14, specifier, v10, v8, v9, &v22, &v23, self, &v21);

  v18 = v21;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v18];
  v19 = [(PSSpecifierController *)self viewController];
  [v19 setTitle:v22];

  return v17;
}

- (id)loadSpecifiers
{
  v3 = [(PSSpecifierController *)self specifiers];

  if (!v3)
  {
    v4 = [(PSSpecifierController *)self specifier];
    v5 = [v4 identifier];
    v6 = [(PSSpecifierController *)self specifier];
    v7 = [v6 target];
    v8 = [(PSSpecifierController *)self loadSpecifiersFromPlistName:v5 target:v7];
    v9 = [v8 mutableCopy];
    [(PSSpecifierController *)self setSpecifiers:v9];
  }

  return [(PSSpecifierController *)self specifiers];
}

- (void)prepareSpecifiersMetadata
{
  v2 = self;
  objc_sync_enter(v2);
  specifiers = v2->_specifiers;
  if (specifiers && [(NSMutableArray *)specifiers count]&& ([(NSMutableArray *)v2->_specifiers objectAtIndex:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v4;
    if (*(v4 + 56))
    {
      v5 = [(NSMutableArray *)v2->_specifiers mutableCopy];
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v6 UUIDString];
      v8 = [PSSpecifier groupSpecifierWithID:v7];
      [(NSMutableArray *)v5 insertObject:v8 atIndex:0];

      v9 = v2->_specifiers;
      v2->_specifiers = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v2);

  [(PSSpecifierController *)v2 createGroupIndices];
}

- (void)reloadSpecifiers
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v3 = self;
  objc_sync_enter(v3);
  [(PSSpecifierController *)v3 setSpecifiers:0];
  [(PSSpecifierController *)v3 setGroups:0];
  objc_sync_exit(v3);

  v4 = [(PSSpecifierController *)v3 loadSpecifiers];
  v5 = [v4 mutableCopy];
  [(PSSpecifierController *)v3 setSpecifiers:v5];

  [(PSSpecifierController *)v3 prepareSpecifiersMetadata];
  v6 = [(PSSpecifierController *)v3 viewController];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(PSSpecifierController *)v3 viewController];
    [v7 specifiersDidReload];
  }

  objc_sync_exit(obj);
}

- (int64_t)numberOfSections
{
  groups = self->_groups;
  if (!groups)
  {
    [(PSSpecifierController *)self createGroupIndices];
    groups = self->_groups;
  }

  return [(NSMutableArray *)groups count];
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_groups count]- 1 == a3)
  {
    v5 = [(NSMutableArray *)self->_specifiers count];
    v6 = [(NSMutableArray *)self->_groups objectAtIndex:a3];
    v7 = v5 + ~[v6 integerValue];
  }

  else
  {
    v6 = [(NSMutableArray *)self->_groups objectAtIndex:a3 + 1];
    v8 = [v6 integerValue];
    v9 = [(NSMutableArray *)self->_groups objectAtIndex:a3];
    v7 = v8 + ~[v9 integerValue];
  }

  return v7;
}

- (int64_t)indexOfGroup:(int64_t)a3
{
  v5 = [(PSSpecifierController *)self groups];

  if (!v5)
  {
    [(PSSpecifierController *)self createGroupIndices];
  }

  v6 = [(PSSpecifierController *)self groups];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v11 = [(NSMutableArray *)self->_groups count];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    NSLog(&cfstr_CriticalErrorA_0.isa, a3, v11, v13);

    v14 = [MEMORY[0x1E69DC938] currentDevice];
    LODWORD(v11) = [v14 sf_isInternalInstall];

    if (!v11)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    NSLog(&cfstr_Specifiers.isa, self->_specifiers);
    NSLog(&cfstr_GroupIndices.isa, self->_groups);
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 bundlePath];
    v15 = [v9 lastPathComponent];
    NSLog(&cfstr_PleaseFileABug.isa, v15);

    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = [(PSSpecifierController *)self groups];
    v9 = [v8 objectAtIndex:a3];
    v10 = [v9 integerValue];
  }

  return v10;
}

- (id)_createGroupIndices:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [v3 objectAtIndex:i];
      if (!v7[7])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [v5 addObject:v8];
      }
    }
  }

  return v5;
}

- (void)createGroupIndices
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(PSSpecifierController *)obj _createGroupIndices:obj->_specifiers];
  [(PSSpecifierController *)obj setGroups:v2];

  objc_sync_exit(obj);
}

- (int64_t)indexForIndexPath:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = a3;
  v5 = [(PSSpecifierController *)self groups];

  if (!v5)
  {
    [(PSSpecifierController *)self createGroupIndices];
  }

  v6 = [v4 row];
  v7 = [v4 section];

  result = [(PSSpecifierController *)self indexOfGroup:v7];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result += v6 + 1;
  }

  return result;
}

- (id)specifierAtIndexPath:(id)a3
{
  v4 = [(PSSpecifierController *)self indexForIndexPath:a3];

  return [(PSSpecifierController *)self specifierAtIndex:v4];
}

- (id)specifierAtIndex:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PSSpecifierController *)v4 specifiers];
  v6 = [v5 count];

  v7 = 0;
  if ((a3 & 0x8000000000000000) == 0 && v6 > a3)
  {
    v8 = [(PSSpecifierController *)v4 specifiers];
    v7 = [v8 objectAtIndex:a3];
  }

  objc_sync_exit(v4);

  return v7;
}

- (BOOL)getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifierID:(id)a5
{
  v8 = [(PSSpecifierController *)self specifierForID:a5];
  LOBYTE(a4) = [(PSSpecifierController *)self getGroup:a3 row:a4 ofSpecifier:v8];

  return a4;
}

- (BOOL)getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifier:(id)a5
{
  v8 = [(NSMutableArray *)self->_specifiers indexOfObject:a5];

  return [(PSSpecifierController *)self getGroup:a3 row:a4 ofSpecifierAtIndex:v8];
}

- (BOOL)_getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifierAtIndex:(int64_t)a5 groups:(id)a6
{
  v9 = a6;
  v10 = [v9 count];
  while (1)
  {
    v11 = v10;
    if (v10-- < 1)
    {
      break;
    }

    v13 = [v9 objectAtIndex:v10];
    v14 = [v13 integerValue];

    if (v14 <= a5)
    {
      if (a3)
      {
        *a3 = v10;
      }

      if (a4)
      {
        *a4 = ~v14 + a5;
      }

      break;
    }
  }

  return v11 > 0;
}

- (BOOL)getGroup:(int64_t *)a3 row:(int64_t *)a4 ofSpecifierAtIndex:(int64_t)a5
{
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = [(PSSpecifierController *)self specifiers];

  if (!v9)
  {
    return 0;
  }

  v10 = [(PSSpecifierController *)self groups];

  if (!v10)
  {
    [(PSSpecifierController *)self createGroupIndices];
  }

  v11 = [(PSSpecifierController *)self groups];
  v12 = [(PSSpecifierController *)self _getGroup:a3 row:a4 ofSpecifierAtIndex:a5 groups:v11];

  return v12;
}

- (id)specifierForID:(id)a3
{
  v4 = a3;
  v5 = [(PSSpecifierController *)self specifiers];
  v6 = [v5 specifierForID:v4];

  return v6;
}

- (PSSpecifierControllerDelegate)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end