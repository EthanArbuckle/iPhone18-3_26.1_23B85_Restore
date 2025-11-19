@interface VUILibraryMenuDataSourceFactory
+ (id)_validCategoriesForPlatform;
+ (id)libraryMenuDataSourceForFamilyMember:(id)a3;
+ (id)libraryMenuDataSourceForMediaLibrary:(id)a3;
@end

@implementation VUILibraryMenuDataSourceFactory

+ (id)libraryMenuDataSourceForMediaLibrary:(id)a3
{
  v3 = a3;
  if ([v3 type])
  {
    +[VUILibraryMenuDataSourceFactory _validCategoriesForHomeSharing];
  }

  else
  {
    +[VUILibraryMenuDataSourceFactory _validCategoriesForPlatform];
  }
  v4 = ;
  v5 = [[VUIMPMenuDataSource alloc] initWithValidCategories:v4];
  [(VUIMPMenuDataSource *)v5 setMediaLibrary:v3];

  return v5;
}

+ (id)libraryMenuDataSourceForFamilyMember:(id)a3
{
  v3 = [a3 memberIdentifier];
  v4 = [v3 stringValue];

  if (v4)
  {
    v5 = +[VUILibraryMenuDataSourceFactory _validCategoriesForPlatform];
    v6 = [v5 mutableCopy];

    [v6 removeObject:&unk_1F5E5D608];
    v7 = [VUIFamilySharingMenuDataSource alloc];
    v8 = [v6 copy];
    v9 = [(VUIFamilySharingMenuDataSource *)v7 initWithValidCategories:v8];

    [(VUIFamilySharingMenuDataSource *)v9 setOwnerIdentifier:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_validCategoriesForPlatform
{
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F5E5D620, &unk_1F5E5D638, &unk_1F5E5D650, &unk_1F5E5D668, &unk_1F5E5D680, &unk_1F5E5D698, 0}];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F5E5D620, &unk_1F5E5D638, &unk_1F5E5D650, &unk_1F5E5D668, &unk_1F5E5D680, &unk_1F5E5D6B0, &unk_1F5E5D6C8, &unk_1F5E5D608, &unk_1F5E5D698, 0}];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7)
    {
      goto LABEL_6;
    }

    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F5E5D638, &unk_1F5E5D650, &unk_1F5E5D6B0, &unk_1F5E5D6C8, &unk_1F5E5D608, &unk_1F5E5D698, 0, v11, v12, v13}];
  }

  v8 = v5;

  v2 = v8;
LABEL_6:
  [v2 addObject:&unk_1F5E5D6E0];
  v9 = [v2 copy];

  return v9;
}

@end