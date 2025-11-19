@interface PXSharedLibraryIncludedPeopleInfo
+ (id)personForParticipant:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSPersonNameComponents)nameComponents;
- (NSString)name;
- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)a3;
- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)a3 person:(id)a4;
- (PXSharedLibraryIncludedPeopleInfo)initWithPerson:(id)a3;
- (id)_initWithParticipant:(id)a3 person:(id)a4;
- (unint64_t)hash;
@end

@implementation PXSharedLibraryIncludedPeopleInfo

- (NSPersonNameComponents)nameComponents
{
  v3 = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
  v4 = [v3 nameComponents];

  if (!v4)
  {
    v5 = [(PXSharedLibraryIncludedPeopleInfo *)self person];
    v4 = [v5 px_nameComponents];
  }

  return v4;
}

- (NSString)name
{
  v3 = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
  v4 = [(PXSharedLibraryIncludedPeopleInfo *)self person];
  v5 = [v4 px_localizedName];

  if (![(__CFString *)v5 length])
  {
    v6 = [v3 name];

    if ([(__CFString *)v6 length])
    {
      v5 = v6;
    }

    else
    {
      v5 = [v3 appleIDAddress];
    }
  }

  if (!v5)
  {
    v5 = &stru_1F1741150;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
  v4 = [v3 hash];
  v5 = [(PXSharedLibraryIncludedPeopleInfo *)self person];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXSharedLibraryIncludedPeopleInfo *)self person];
    v7 = [v5 person];
    if (v6 | v7)
    {
      v8 = [v6 localIdentifier];
      [v7 localIdentifier];
    }

    else
    {
      v8 = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
      [v5 participant];
    }
    v10 = ;
    if (v8 == v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isEqual:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithParticipant:(id)a3 person:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSharedLibraryIncludedPeopleInfo;
  v9 = [(PXSharedLibraryIncludedPeopleInfo *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v6 = [(PXSharedLibraryIncludedPeopleInfo *)self _initWithParticipant:v5 person:0];

  return v6;
}

- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)a3 person:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"participant"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(PXSharedLibraryIncludedPeopleInfo *)self _initWithParticipant:v7 person:v9];

  return v10;
}

- (PXSharedLibraryIncludedPeopleInfo)initWithPerson:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = [(PXSharedLibraryIncludedPeopleInfo *)self _initWithParticipant:0 person:v5];

  return v6;
}

+ (id)personForParticipant:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 contact];
  if (v3)
  {
    v4 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    v6 = MEMORY[0x1E6978980];
    v11[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [v6 fetchPersonsForContacts:v7 options:v5];

    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end