@interface PXSharedLibraryIncludedPeopleInfo
+ (id)personForParticipant:(id)participant;
- (BOOL)isEqual:(id)equal;
- (NSPersonNameComponents)nameComponents;
- (NSString)name;
- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)participant;
- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)participant person:(id)person;
- (PXSharedLibraryIncludedPeopleInfo)initWithPerson:(id)person;
- (id)_initWithParticipant:(id)participant person:(id)person;
- (unint64_t)hash;
@end

@implementation PXSharedLibraryIncludedPeopleInfo

- (NSPersonNameComponents)nameComponents
{
  participant = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
  nameComponents = [participant nameComponents];

  if (!nameComponents)
  {
    person = [(PXSharedLibraryIncludedPeopleInfo *)self person];
    nameComponents = [person px_nameComponents];
  }

  return nameComponents;
}

- (NSString)name
{
  participant = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
  person = [(PXSharedLibraryIncludedPeopleInfo *)self person];
  px_localizedName = [person px_localizedName];

  if (![(__CFString *)px_localizedName length])
  {
    name = [participant name];

    if ([(__CFString *)name length])
    {
      px_localizedName = name;
    }

    else
    {
      px_localizedName = [participant appleIDAddress];
    }
  }

  if (!px_localizedName)
  {
    px_localizedName = &stru_1F1741150;
  }

  return px_localizedName;
}

- (unint64_t)hash
{
  participant = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
  v4 = [participant hash];
  person = [(PXSharedLibraryIncludedPeopleInfo *)self person];
  v6 = [person hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    person = [(PXSharedLibraryIncludedPeopleInfo *)self person];
    person2 = [v5 person];
    if (person | person2)
    {
      localIdentifier = [person localIdentifier];
      [person2 localIdentifier];
    }

    else
    {
      localIdentifier = [(PXSharedLibraryIncludedPeopleInfo *)self participant];
      [v5 participant];
    }
    v10 = ;
    if (localIdentifier == v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = [localIdentifier isEqual:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithParticipant:(id)participant person:(id)person
{
  participantCopy = participant;
  personCopy = person;
  v12.receiver = self;
  v12.super_class = PXSharedLibraryIncludedPeopleInfo;
  v9 = [(PXSharedLibraryIncludedPeopleInfo *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, participant);
    objc_storeStrong(p_isa + 2, person);
  }

  return p_isa;
}

- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)participant
{
  participantCopy = participant;
  if (!participantCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v6 = [(PXSharedLibraryIncludedPeopleInfo *)self _initWithParticipant:participantCopy person:0];

  return v6;
}

- (PXSharedLibraryIncludedPeopleInfo)initWithParticipant:(id)participant person:(id)person
{
  participantCopy = participant;
  personCopy = person;
  v9 = personCopy;
  if (!participantCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"participant"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    goto LABEL_3;
  }

  if (!personCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(PXSharedLibraryIncludedPeopleInfo *)self _initWithParticipant:participantCopy person:v9];

  return v10;
}

- (PXSharedLibraryIncludedPeopleInfo)initWithPerson:(id)person
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = [(PXSharedLibraryIncludedPeopleInfo *)self _initWithParticipant:0 person:personCopy];

  return v6;
}

+ (id)personForParticipant:(id)participant
{
  v11[1] = *MEMORY[0x1E69E9840];
  contact = [participant contact];
  if (contact)
  {
    px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    librarySpecificFetchOptions = [px_systemPhotoLibrary librarySpecificFetchOptions];

    v6 = MEMORY[0x1E6978980];
    v11[0] = contact;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [v6 fetchPersonsForContacts:v7 options:librarySpecificFetchOptions];

    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end