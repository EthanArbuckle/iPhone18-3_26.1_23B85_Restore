@interface PGNamingQuestion
- (PGNamingQuestion)initWithConfirmedPerson:(id)a3 contactIdentifier:(id)a4 localFactoryScore:(double)a5 serviceManager:(id)a6;
- (PGNamingQuestion)initWithPerson:(id)a3 contactIdentifier:(id)a4 localFactoryScore:(double)a5 serviceManager:(id)a6;
- (id)_additionalInfoFromContactIdentifier:(id)a3 serviceManager:(id)a4;
- (id)_personForContactSuggestion;
- (void)persistWithCreationDate:(id)a3 questionVersion:(signed __int16)a4;
@end

@implementation PGNamingQuestion

- (id)_personForContactSuggestion
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(PHPerson *)self->_person photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(verifiedType = %d)", 0];
  [v4 setPredicate:v5];

  v6 = MEMORY[0x277CD9938];
  v12[0] = self->_contactIdentifier;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v6 fetchPersonsForContactIdentifiers:v7 options:v4];

  v9 = [v8 firstObject];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)persistWithCreationDate:(id)a3 questionVersion:(signed __int16)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PGNamingQuestion *)self additionalInfo];

  if (v7)
  {
    v8 = MEMORY[0x277CD9978];
    v9 = [(PGNamingQuestion *)self entityIdentifier];
    v10 = [(PGNamingQuestion *)self type];
    v11 = [(PGNamingQuestion *)self state];
    v12 = [(PGNamingQuestion *)self entityType];
    v13 = [(PGNamingQuestion *)self displayType];
    [(PGSurveyQuestion *)self score];
    v15 = v14;
    v16 = [(PGNamingQuestion *)self additionalInfo];
    LOWORD(v23) = a4;
    v17 = [v8 creationRequestForQuestionWithEntityIdentifier:v9 type:v10 state:v11 entityType:v12 displayType:v13 score:v16 additionalInfo:v15 creationDate:v6 questionVersion:v23];
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [(PGNamingQuestion *)self entityIdentifier];
      v22 = [(PGNamingQuestion *)self contactIdentifier];
      *buf = 138412546;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Cannot persist PGNamingQuestion (personUUID: %@, contactIdentifier: %@) with a nil additional info dictionary.", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_additionalInfoFromContactIdentifier:(id)a3 serviceManager:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithObject:v5];
  v9 = [v7 contactsForIdentifiers:v8];

  v10 = [v9 anyObject];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCAC00]);
    v12 = [v10 givenName];
    [v11 setGivenName:v12];

    v13 = [v10 familyName];
    [v11 setFamilyName:v13];

    v14 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v11 style:1 options:0];
    if ([v14 length])
    {
      v21[0] = @"contactName";
      v21[1] = @"contactIdentifier";
      v22[0] = v14;
      v22[1] = v5;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    else
    {
      v17 = +[PGLogging sharedLogging];
      v18 = [v17 loggingConnection];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "No contact name resolved for contact identifier %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = +[PGLogging sharedLogging];
    v11 = [v16 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Contact found to be nil for contact identifier %@", buf, 0xCu);
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PGNamingQuestion)initWithConfirmedPerson:(id)a3 contactIdentifier:(id)a4 localFactoryScore:(double)a5 serviceManager:(id)a6
{
  result = [(PGNamingQuestion *)self initWithPerson:a3 contactIdentifier:a4 localFactoryScore:a6 serviceManager:a5];
  if (result)
  {
    result->_state = 2;
  }

  return result;
}

- (PGNamingQuestion)initWithPerson:(id)a3 contactIdentifier:(id)a4 localFactoryScore:(double)a5 serviceManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PGNamingQuestion;
  v14 = [(PGNamingQuestion *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_person, a3);
    v16 = [(PHPerson *)v15->_person uuid];
    entityIdentifier = v15->_entityIdentifier;
    v15->_entityIdentifier = v16;

    v15->_state = 0;
    v15->_localFactoryScore = a5;
    v18 = [(PGNamingQuestion *)v15 _additionalInfoFromContactIdentifier:v12 serviceManager:v13];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v18;

    objc_storeStrong(&v15->_contactIdentifier, a4);
  }

  return v15;
}

@end