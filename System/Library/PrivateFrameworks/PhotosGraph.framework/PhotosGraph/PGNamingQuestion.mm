@interface PGNamingQuestion
- (PGNamingQuestion)initWithConfirmedPerson:(id)person contactIdentifier:(id)identifier localFactoryScore:(double)score serviceManager:(id)manager;
- (PGNamingQuestion)initWithPerson:(id)person contactIdentifier:(id)identifier localFactoryScore:(double)score serviceManager:(id)manager;
- (id)_additionalInfoFromContactIdentifier:(id)identifier serviceManager:(id)manager;
- (id)_personForContactSuggestion;
- (void)persistWithCreationDate:(id)date questionVersion:(signed __int16)version;
@end

@implementation PGNamingQuestion

- (id)_personForContactSuggestion
{
  v12[1] = *MEMORY[0x277D85DE8];
  photoLibrary = [(PHPerson *)self->_person photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(verifiedType = %d)", 0];
  [librarySpecificFetchOptions setPredicate:v5];

  v6 = MEMORY[0x277CD9938];
  v12[0] = self->_contactIdentifier;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v6 fetchPersonsForContactIdentifiers:v7 options:librarySpecificFetchOptions];

  firstObject = [v8 firstObject];

  v10 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)persistWithCreationDate:(id)date questionVersion:(signed __int16)version
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  additionalInfo = [(PGNamingQuestion *)self additionalInfo];

  if (additionalInfo)
  {
    v8 = MEMORY[0x277CD9978];
    entityIdentifier = [(PGNamingQuestion *)self entityIdentifier];
    type = [(PGNamingQuestion *)self type];
    state = [(PGNamingQuestion *)self state];
    entityType = [(PGNamingQuestion *)self entityType];
    displayType = [(PGNamingQuestion *)self displayType];
    [(PGSurveyQuestion *)self score];
    v15 = v14;
    additionalInfo2 = [(PGNamingQuestion *)self additionalInfo];
    LOWORD(v23) = version;
    v17 = [v8 creationRequestForQuestionWithEntityIdentifier:entityIdentifier type:type state:state entityType:entityType displayType:displayType score:additionalInfo2 additionalInfo:v15 creationDate:dateCopy questionVersion:v23];
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      entityIdentifier2 = [(PGNamingQuestion *)self entityIdentifier];
      contactIdentifier = [(PGNamingQuestion *)self contactIdentifier];
      *buf = 138412546;
      v25 = entityIdentifier2;
      v26 = 2112;
      v27 = contactIdentifier;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot persist PGNamingQuestion (personUUID: %@, contactIdentifier: %@) with a nil additional info dictionary.", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_additionalInfoFromContactIdentifier:(id)identifier serviceManager:(id)manager
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = MEMORY[0x277CBEB98];
  managerCopy = manager;
  v8 = [v6 setWithObject:identifierCopy];
  v9 = [managerCopy contactsForIdentifiers:v8];

  anyObject = [v9 anyObject];

  if (anyObject)
  {
    loggingConnection2 = objc_alloc_init(MEMORY[0x277CCAC00]);
    givenName = [anyObject givenName];
    [loggingConnection2 setGivenName:givenName];

    familyName = [anyObject familyName];
    [loggingConnection2 setFamilyName:familyName];

    v14 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:loggingConnection2 style:1 options:0];
    if ([v14 length])
    {
      v21[0] = @"contactName";
      v21[1] = @"contactIdentifier";
      v22[0] = v14;
      v22[1] = identifierCopy;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    else
    {
      v17 = +[PGLogging sharedLogging];
      loggingConnection = [v17 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = identifierCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No contact name resolved for contact identifier %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = +[PGLogging sharedLogging];
    loggingConnection2 = [v16 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = identifierCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Contact found to be nil for contact identifier %@", buf, 0xCu);
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PGNamingQuestion)initWithConfirmedPerson:(id)person contactIdentifier:(id)identifier localFactoryScore:(double)score serviceManager:(id)manager
{
  result = [(PGNamingQuestion *)self initWithPerson:person contactIdentifier:identifier localFactoryScore:manager serviceManager:score];
  if (result)
  {
    result->_state = 2;
  }

  return result;
}

- (PGNamingQuestion)initWithPerson:(id)person contactIdentifier:(id)identifier localFactoryScore:(double)score serviceManager:(id)manager
{
  personCopy = person;
  identifierCopy = identifier;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = PGNamingQuestion;
  v14 = [(PGNamingQuestion *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_person, person);
    uuid = [(PHPerson *)v15->_person uuid];
    entityIdentifier = v15->_entityIdentifier;
    v15->_entityIdentifier = uuid;

    v15->_state = 0;
    v15->_localFactoryScore = score;
    v18 = [(PGNamingQuestion *)v15 _additionalInfoFromContactIdentifier:identifierCopy serviceManager:managerCopy];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v18;

    objc_storeStrong(&v15->_contactIdentifier, identifier);
  }

  return v15;
}

@end