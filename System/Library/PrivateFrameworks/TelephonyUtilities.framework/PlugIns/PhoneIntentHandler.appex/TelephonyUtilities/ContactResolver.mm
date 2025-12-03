@interface ContactResolver
+ (id)keysToFetch;
- (ContactResolver)initWithDataSource:(id)source logger:(id)logger;
- (id)_contactsMatchingIdentifiers:(id)identifiers;
- (id)_contactsMatchingNamesForPerson:(id)person;
- (id)matchingContactsForPerson:(id)person;
- (void)_sendSiriMatchAnalyticsEventForIdentifiers:(id)identifiers contactsMatchingId:(id)id contactsMatchingName:(id)name;
@end

@implementation ContactResolver

- (ContactResolver)initWithDataSource:(id)source logger:(id)logger
{
  sourceCopy = source;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = ContactResolver;
  v9 = [(ContactResolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactsDataSource, source);
    objc_storeStrong(&v10->_coreAnalyticsLogger, logger);
  }

  return v10;
}

+ (id)keysToFetch
{
  if (qword_100057A30 != -1)
  {
    sub_10002F038();
  }

  v3 = qword_100057A28;

  return v3;
}

- (id)matchingContactsForPerson:(id)person
{
  personCopy = person;
  tu_allContactIdentifiers = [personCopy tu_allContactIdentifiers];
  v6 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218242;
    v22 = [tu_allContactIdentifiers count];
    v23 = 2112;
    v24 = personCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Person contains %ld contact IDs. Person: %@", &v21, 0x16u);
  }

  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = tu_allContactIdentifiers;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching identifiers: %@", &v21, 0xCu);
  }

  v8 = [(ContactResolver *)self _contactsMatchingIdentifiers:tu_allContactIdentifiers];
  v9 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    v21 = 134217984;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found %ld contacts matching siriMatches", &v21, 0xCu);
  }

  v11 = [StartCallIntentHandlerUtilities sortContacts:v8 withIdentifiers:tu_allContactIdentifiers];
  v12 = [v11 count];
  v13 = IntentHandlerDefaultLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found contacts matching siriMatches", &v21, 2u);
    }

    v15 = &__NSArray0__struct;
    v16 = v11;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002F04C(v14);
    }

    v17 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store by names", &v21, 2u);
    }

    v16 = [(ContactResolver *)self _contactsMatchingNamesForPerson:personCopy];
    v15 = v16;
  }

  v18 = v16;
  [(ContactResolver *)self _sendSiriMatchAnalyticsEventForIdentifiers:tu_allContactIdentifiers contactsMatchingId:v11 contactsMatchingName:v15];
  v19 = [[ContactPool alloc] initWithContacts:v18];

  return v19;
}

- (id)_contactsMatchingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = &__NSArray0__struct;
  if ([identifiersCopy count])
  {
    v6 = IntentHandlerDefaultLog();
    v7 = os_signpost_id_generate(v6);

    v8 = IntentHandlerDefaultLog();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v10 = [CNContact predicateForContactsWithIdentifiers:identifiersCopy];
    contactsDataSource = [(ContactResolver *)self contactsDataSource];
    v12 = +[ContactResolver keysToFetch];
    v22 = 0;
    v13 = [contactsDataSource unifiedContactsMatchingPredicate:v10 keysToFetch:v12 error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &__NSArray0__struct;
    }

    v5 = v15;

    if (v14)
    {
      v16 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10002F090(v14, v16);
      }
    }

    v17 = IntentHandlerDefaultLog();
    v18 = v17;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v7, "contactsMatchingIdentifiers", "", v21, 2u);
    }
  }

  v19 = [v5 copy];

  return v19;
}

- (id)_contactsMatchingNamesForPerson:(id)person
{
  personCopy = person;
  v5 = IntentHandlerDefaultLog();
  v6 = os_signpost_id_generate(v5);

  v7 = IntentHandlerDefaultLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "contactsMatchingName", "", buf, 2u);
  }

  displayName = [personCopy displayName];

  v10 = [CNContact predicateForContactsMatchingName:displayName options:1];

  contactsDataSource = [(ContactResolver *)self contactsDataSource];
  v12 = +[ContactResolver keysToFetch];
  v24 = 0;
  v13 = [contactsDataSource unifiedContactsMatchingPredicate:v10 keysToFetch:v12 error:&v24];
  v14 = v24;
  v15 = &__NSArray0__struct;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  if (v14)
  {
    v17 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002F108(v14, v17);
    }
  }

  v18 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F180(v16, v18);
  }

  v19 = IntentHandlerDefaultLog();
  v20 = v19;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingName", "", v23, 2u);
  }

  v21 = [v16 copy];

  return v21;
}

- (void)_sendSiriMatchAnalyticsEventForIdentifiers:(id)identifiers contactsMatchingId:(id)id contactsMatchingName:(id)name
{
  nameCopy = name;
  idCopy = id;
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [identifiers count]);
  v10 = [idCopy count];

  v11 = [NSNumber numberWithUnsignedInteger:v10];
  v12 = [nameCopy count];

  v13 = [NSNumber numberWithUnsignedInteger:v12];
  v14 = +[INPreferences sharedPreferences];
  _cachedSiriLanguageCode = [v14 _cachedSiriLanguageCode];

  if (_cachedSiriLanguageCode)
  {
    v16 = _cachedSiriLanguageCode;
  }

  else
  {
    v16 = @"N/A";
  }

  coreAnalyticsLogger = [(ContactResolver *)self coreAnalyticsLogger];
  [coreAnalyticsLogger logSiriMatchEvent:v18 matchesByIdCount:v11 matchesByNameCount:v13 siriLocale:v16];
}

@end