@interface ConversationPersonFilter
- (BOOL)_matchesCallerFilter:(id)a3;
- (BOOL)_matchesParticipantsFilter:(id)a3;
- (BOOL)matches:(id)a3;
- (ConversationPersonFilter)initWithCaller:(id)a3 participants:(id)a4 dataSource:(id)a5;
- (id)_contactPoolForConversation:(id)a3;
- (id)_identifiersForRecommendedPerson:(id)a3;
@end

@implementation ConversationPersonFilter

- (ConversationPersonFilter)initWithCaller:(id)a3 participants:(id)a4 dataSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ConversationPersonFilter;
  v12 = [(ConversationPersonFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_caller, a3);
    objc_storeStrong(&v13->_participants, a4);
    objc_storeStrong(&v13->_contactsDataSource, a5);
  }

  return v13;
}

- (BOOL)matches:(id)a3
{
  v3 = self;
  v4 = [(ConversationPersonFilter *)self _contactPoolForConversation:a3];
  v5 = [(ConversationPersonFilter *)v3 _matchesCallerFilter:v4];
  LOBYTE(v3) = [(ConversationPersonFilter *)v3 _matchesParticipantsFilter:v4];

  return v5 & v3;
}

- (BOOL)_matchesCallerFilter:(id)a3
{
  v4 = a3;
  v5 = [(ConversationPersonFilter *)self caller];

  if (v5)
  {
    v6 = [(ConversationPersonFilter *)self caller];
    v7 = [(ConversationPersonFilter *)self _identifiersForRecommendedPerson:v6];

    v8 = [v4 callerPoolContainsOneOf:v7];
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ConversationPersonFilter: matchesCaller=%@", &v12, 0xCu);
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)_matchesParticipantsFilter:(id)a3
{
  v4 = a3;
  v5 = [(ConversationPersonFilter *)self participants];
  v6 = [v5 count];

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(ConversationPersonFilter *)self participants];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(ConversationPersonFilter *)self _identifiersForRecommendedPerson:*(*(&v18 + 1) + 8 * i)];
          v13 = [v4 participantsPoolContainsOneOf:v12];

          if (!v13)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 1;
  }

  v15 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v14)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ConversationPersonFilter: matchesParticipants=%@", buf, 0xCu);
  }

  return v14;
}

- (id)_contactPoolForConversation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [v4 remoteMembers];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v35 + 1) + 8 * i) handle];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v12 = [(ConversationPersonFilter *)self contactsDataSource];
  v40 = CNContactIdentifierKey;
  v13 = [NSArray arrayWithObjects:&v40 count:1];
  v14 = [v12 tu_contactsForHandles:v5 keyDescriptors:v13 error:0];

  v15 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [v14 allValues];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [v15 addObjectsFromArray:*(*(&v31 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  v21 = [[ContactPool alloc] initWithContacts:v15];
  v22 = [v4 initiator];

  v23 = &__NSArray0__struct;
  if (v22)
  {
    v24 = [v4 initiator];
    v25 = [v14 objectForKeyedSubscript:v24];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &__NSArray0__struct;
    }

    v23 = v27;
  }

  v28 = [[ContactPool alloc] initWithContacts:v23];
  v29 = objc_alloc_init(ConversationContactPool);
  [(ConversationContactPool *)v29 setCallerPool:v28];
  [(ConversationContactPool *)v29 setParticipantsPool:v21];

  return v29;
}

- (id)_identifiersForRecommendedPerson:(id)a3
{
  v3 = [a3 extractRecommendation];
  v4 = [v3 contactIdentifiers];

  v5 = [NSSet setWithArray:v4];

  return v5;
}

@end