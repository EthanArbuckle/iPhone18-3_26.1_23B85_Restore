@interface PSSpecifierController
- (BOOL)_getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index groups:(id)groups;
- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifier:(id)specifier;
- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index;
- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierID:(id)d;
- (PSSpecifierController)init;
- (PSSpecifierControllerDelegate)viewController;
- (id)_createGroupIndices:(id)indices;
- (id)loadSpecifiers;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
- (id)specifierAtIndex:(int64_t)index;
- (id)specifierAtIndexPath:(id)path;
- (id)specifierForID:(id)d;
- (int64_t)indexForIndexPath:(id)path;
- (int64_t)indexOfGroup:(int64_t)group;
- (int64_t)numberOfRowsInSection:(int64_t)section;
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

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target
{
  v6 = MEMORY[0x1E696AAE8];
  targetCopy = target;
  nameCopy = name;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [(PSSpecifierController *)self loadSpecifiersFromPlistName:nameCopy target:targetCopy bundle:v9];

  return v10;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  bundleCopy = bundle;
  v22 = 0;
  v23 = 0;
  targetCopy = target;
  v11 = [bundleCopy pathForResource:nameCopy ofType:@"plist"];
  if (!v11)
  {
    v12 = _PSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bundlePath = [bundleCopy bundlePath];
      *buf = 138412546;
      v25 = nameCopy;
      v26 = 2112;
      v27 = bundlePath;
      _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "Warning: failed to load preferences plist '%@.plist' for bundle %@", buf, 0x16u);
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v11];
  v15 = objc_opt_new();
  specifier = self->_specifier;
  v21 = v15;
  v17 = SpecifiersFromPlist(v14, specifier, targetCopy, nameCopy, bundleCopy, &v22, &v23, self, &v21);

  v18 = v21;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v18];
  viewController = [(PSSpecifierController *)self viewController];
  [viewController setTitle:v22];

  return v17;
}

- (id)loadSpecifiers
{
  specifiers = [(PSSpecifierController *)self specifiers];

  if (!specifiers)
  {
    specifier = [(PSSpecifierController *)self specifier];
    identifier = [specifier identifier];
    specifier2 = [(PSSpecifierController *)self specifier];
    target = [specifier2 target];
    v8 = [(PSSpecifierController *)self loadSpecifiersFromPlistName:identifier target:target];
    v9 = [v8 mutableCopy];
    [(PSSpecifierController *)self setSpecifiers:v9];
  }

  return [(PSSpecifierController *)self specifiers];
}

- (void)prepareSpecifiersMetadata
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiers = selfCopy->_specifiers;
  if (specifiers && [(NSMutableArray *)specifiers count]&& ([(NSMutableArray *)selfCopy->_specifiers objectAtIndex:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v4;
    if (*(v4 + 56))
    {
      v5 = [(NSMutableArray *)selfCopy->_specifiers mutableCopy];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v8 = [PSSpecifier groupSpecifierWithID:uUIDString];
      [(NSMutableArray *)v5 insertObject:v8 atIndex:0];

      v9 = selfCopy->_specifiers;
      selfCopy->_specifiers = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  [(PSSpecifierController *)selfCopy createGroupIndices];
}

- (void)reloadSpecifiers
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSSpecifierController *)selfCopy setSpecifiers:0];
  [(PSSpecifierController *)selfCopy setGroups:0];
  objc_sync_exit(selfCopy);

  loadSpecifiers = [(PSSpecifierController *)selfCopy loadSpecifiers];
  v5 = [loadSpecifiers mutableCopy];
  [(PSSpecifierController *)selfCopy setSpecifiers:v5];

  [(PSSpecifierController *)selfCopy prepareSpecifiersMetadata];
  viewController = [(PSSpecifierController *)selfCopy viewController];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    viewController2 = [(PSSpecifierController *)selfCopy viewController];
    [viewController2 specifiersDidReload];
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

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_groups count]- 1 == section)
  {
    v5 = [(NSMutableArray *)self->_specifiers count];
    v6 = [(NSMutableArray *)self->_groups objectAtIndex:section];
    v7 = v5 + ~[v6 integerValue];
  }

  else
  {
    v6 = [(NSMutableArray *)self->_groups objectAtIndex:section + 1];
    integerValue = [v6 integerValue];
    v9 = [(NSMutableArray *)self->_groups objectAtIndex:section];
    v7 = integerValue + ~[v9 integerValue];
  }

  return v7;
}

- (int64_t)indexOfGroup:(int64_t)group
{
  groups = [(PSSpecifierController *)self groups];

  if (!groups)
  {
    [(PSSpecifierController *)self createGroupIndices];
  }

  groups2 = [(PSSpecifierController *)self groups];
  v7 = [groups2 count];

  if (v7 <= group)
  {
    v11 = [(NSMutableArray *)self->_groups count];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    NSLog(&cfstr_CriticalErrorA_0.isa, group, v11, v13);

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    LODWORD(v11) = [currentDevice sf_isInternalInstall];

    if (!v11)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    NSLog(&cfstr_Specifiers.isa, self->_specifiers);
    NSLog(&cfstr_GroupIndices.isa, self->_groups);
    groups3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundlePath = [groups3 bundlePath];
    lastPathComponent = [bundlePath lastPathComponent];
    NSLog(&cfstr_PleaseFileABug.isa, lastPathComponent);

    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    groups3 = [(PSSpecifierController *)self groups];
    bundlePath = [groups3 objectAtIndex:group];
    integerValue = [bundlePath integerValue];
  }

  return integerValue;
}

- (id)_createGroupIndices:(id)indices
{
  indicesCopy = indices;
  v4 = [indicesCopy count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [indicesCopy objectAtIndex:i];
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

- (int64_t)indexForIndexPath:(id)path
{
  if (!path)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  pathCopy = path;
  groups = [(PSSpecifierController *)self groups];

  if (!groups)
  {
    [(PSSpecifierController *)self createGroupIndices];
  }

  v6 = [pathCopy row];
  section = [pathCopy section];

  result = [(PSSpecifierController *)self indexOfGroup:section];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result += v6 + 1;
  }

  return result;
}

- (id)specifierAtIndexPath:(id)path
{
  v4 = [(PSSpecifierController *)self indexForIndexPath:path];

  return [(PSSpecifierController *)self specifierAtIndex:v4];
}

- (id)specifierAtIndex:(int64_t)index
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  specifiers = [(PSSpecifierController *)selfCopy specifiers];
  v6 = [specifiers count];

  v7 = 0;
  if ((index & 0x8000000000000000) == 0 && v6 > index)
  {
    specifiers2 = [(PSSpecifierController *)selfCopy specifiers];
    v7 = [specifiers2 objectAtIndex:index];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierID:(id)d
{
  v8 = [(PSSpecifierController *)self specifierForID:d];
  LOBYTE(row) = [(PSSpecifierController *)self getGroup:group row:row ofSpecifier:v8];

  return row;
}

- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifier:(id)specifier
{
  v8 = [(NSMutableArray *)self->_specifiers indexOfObject:specifier];

  return [(PSSpecifierController *)self getGroup:group row:row ofSpecifierAtIndex:v8];
}

- (BOOL)_getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index groups:(id)groups
{
  groupsCopy = groups;
  v10 = [groupsCopy count];
  while (1)
  {
    v11 = v10;
    if (v10-- < 1)
    {
      break;
    }

    v13 = [groupsCopy objectAtIndex:v10];
    integerValue = [v13 integerValue];

    if (integerValue <= index)
    {
      if (group)
      {
        *group = v10;
      }

      if (row)
      {
        *row = ~integerValue + index;
      }

      break;
    }
  }

  return v11 > 0;
}

- (BOOL)getGroup:(int64_t *)group row:(int64_t *)row ofSpecifierAtIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  specifiers = [(PSSpecifierController *)self specifiers];

  if (!specifiers)
  {
    return 0;
  }

  groups = [(PSSpecifierController *)self groups];

  if (!groups)
  {
    [(PSSpecifierController *)self createGroupIndices];
  }

  groups2 = [(PSSpecifierController *)self groups];
  v12 = [(PSSpecifierController *)self _getGroup:group row:row ofSpecifierAtIndex:index groups:groups2];

  return v12;
}

- (id)specifierForID:(id)d
{
  dCopy = d;
  specifiers = [(PSSpecifierController *)self specifiers];
  v6 = [specifiers specifierForID:dCopy];

  return v6;
}

- (PSSpecifierControllerDelegate)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end