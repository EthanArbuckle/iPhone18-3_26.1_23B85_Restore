@interface VUILibraryMenuDataSourceFactory
+ (id)_validCategoriesForPlatform;
+ (id)libraryMenuDataSourceForFamilyMember:(id)member;
+ (id)libraryMenuDataSourceForMediaLibrary:(id)library;
@end

@implementation VUILibraryMenuDataSourceFactory

+ (id)libraryMenuDataSourceForMediaLibrary:(id)library
{
  libraryCopy = library;
  if ([libraryCopy type])
  {
    +[VUILibraryMenuDataSourceFactory _validCategoriesForHomeSharing];
  }

  else
  {
    +[VUILibraryMenuDataSourceFactory _validCategoriesForPlatform];
  }
  v4 = ;
  v5 = [[VUIMPMenuDataSource alloc] initWithValidCategories:v4];
  [(VUIMPMenuDataSource *)v5 setMediaLibrary:libraryCopy];

  return v5;
}

+ (id)libraryMenuDataSourceForFamilyMember:(id)member
{
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  if (stringValue)
  {
    v5 = +[VUILibraryMenuDataSourceFactory _validCategoriesForPlatform];
    v6 = [v5 mutableCopy];

    [v6 removeObject:&unk_1F5E5D608];
    v7 = [VUIFamilySharingMenuDataSource alloc];
    v8 = [v6 copy];
    v9 = [(VUIFamilySharingMenuDataSource *)v7 initWithValidCategories:v8];

    [(VUIFamilySharingMenuDataSource *)v9 setOwnerIdentifier:stringValue];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F5E5D620, &unk_1F5E5D638, &unk_1F5E5D650, &unk_1F5E5D668, &unk_1F5E5D680, &unk_1F5E5D6B0, &unk_1F5E5D6C8, &unk_1F5E5D608, &unk_1F5E5D698, 0}];
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2)
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