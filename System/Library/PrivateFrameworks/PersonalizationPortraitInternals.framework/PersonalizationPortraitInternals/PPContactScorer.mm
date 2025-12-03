@interface PPContactScorer
+ (double)_scoreWithInitialScore:(void *)score identifier:(void *)identifier rankMap:;
+ (id)_contactRankMapWithRankedIdentifiers:(uint64_t)identifiers;
+ (id)_contactsWithIdentifiers:(void *)identifiers store:;
+ (id)_scoreAndSortContacts:(void *)contacts rankMap:;
+ (id)_scoredLabeledValues:(uint64_t)values;
+ (id)mostRelevantContactsWithName:(id)name store:(id)store;
+ (id)mostRelevantContactsWithStore:(id)store shouldContinueBlock:(id)block;
+ (id)scoredContactsWithContacts:(id)contacts;
+ (void)scoreContactNameRecords:(id)records;
@end

@implementation PPContactScorer

+ (void)scoreContactNameRecords:(id)records
{
  v34 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v5 = pp_contacts_signpost_handle();
  v6 = os_signpost_id_generate(v5);

  v7 = pp_contacts_signpost_handle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PPContactScorer.scoreContactNameRecords", "", buf, 2u);
  }

  spid = v6;

  v9 = +[PPPeopleSuggester sharedInstance];
  rankedContactIdentifiers = [v9 rankedContactIdentifiers];
  v11 = [(PPContactScorer *)self _contactRankMapWithRankedIdentifiers:rankedContactIdentifiers];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = recordsCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        source = [v17 source];
        v19 = +[PPConfiguration sharedInstance];
        v20 = v19;
        if (source == 1)
        {
          [v19 recordSourceContactsInitialScore];
        }

        else
        {
          [v19 recordSourceNonContactsInitialScore];
        }

        v22 = v21;

        sourceIdentifier = [v17 sourceIdentifier];
        [v17 setScore:{+[PPContactScorer _scoreWithInitialScore:identifier:rankMap:](v22, self, sourceIdentifier, v11)}];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  [v12 sortUsingComparator:&__block_literal_global_8];
  v24 = pp_contacts_signpost_handle();
  v25 = v24;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v25, OS_SIGNPOST_INTERVAL_END, spid, "PPContactScorer.scoreContactNameRecords", "", buf, 2u);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)_contactRankMapWithRankedIdentifiers:(uint64_t)identifiers
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PPContactScorer__contactRankMapWithRankedIdentifiers___block_invoke;
  v6[3] = &unk_278976948;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

+ (double)_scoreWithInitialScore:(void *)score identifier:(void *)identifier rankMap:
{
  identifierCopy = identifier;
  scoreCopy = score;
  objc_opt_self();
  v8 = [identifierCopy objectForKeyedSubscript:scoreCopy];

  if (v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
    self = self + (1.0 - unsignedIntegerValue / [identifierCopy count]) * (1.0 - self);
  }

  return self;
}

uint64_t __43__PPContactScorer_scoreContactNameRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

void __56__PPContactScorer__contactRankMapWithRankedIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (id)scoredContactsWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = pp_contacts_signpost_handle();
  v6 = os_signpost_id_generate(v5);

  v7 = pp_contacts_signpost_handle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PPContactScorer.scoredContactsWithContacts", "", buf, 2u);
  }

  v9 = +[PPPeopleSuggester sharedInstance];
  rankedContactIdentifiers = [v9 rankedContactIdentifiers];
  v11 = [(PPContactScorer *)self _contactRankMapWithRankedIdentifiers:rankedContactIdentifiers];

  v12 = [(PPContactScorer *)self _scoreAndSortContacts:contactsCopy rankMap:v11];

  v13 = pp_contacts_signpost_handle();
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v6, "PPContactScorer.scoredContactsWithContacts", "", v16, 2u);
  }

  return v12;
}

+ (id)_scoreAndSortContacts:(void *)contacts rankMap:
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  contactsCopy = contacts;
  v5 = objc_opt_self();
  if ([v4 count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = v4;
    obj = v4;
    v32 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v32)
    {
      v30 = *v37;
      v31 = v5;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v36 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          source = [v7 source];
          v9 = +[PPConfiguration sharedInstance];
          v10 = v9;
          if (source == 1)
          {
            [v9 recordSourceContactsInitialScore];
          }

          else
          {
            [v9 recordSourceNonContactsInitialScore];
          }

          v12 = v11;

          v13 = v12;
          v14 = [v7 contactsContactIdentifierWithError:0];
          v34 = v14;
          if (v14)
          {
            v13 = [(PPContactScorer *)v13 _scoreWithInitialScore:v5 identifier:v14 rankMap:contactsCopy];
          }

          v15 = MEMORY[0x277D3A488];
          phoneNumbers = [v7 phoneNumbers];
          v16 = [(PPContactScorer *)v5 _scoredLabeledValues:phoneNumbers];
          emailAddresses = [v7 emailAddresses];
          v18 = [(PPContactScorer *)v5 _scoredLabeledValues:emailAddresses];
          socialProfiles = [v7 socialProfiles];
          v20 = [(PPContactScorer *)v5 _scoredLabeledValues:socialProfiles];
          postalAddresses = [v7 postalAddresses];
          v22 = [(PPContactScorer *)v5 _scoredLabeledValues:postalAddresses];
          v23 = [v15 scoredContactWithContact:v7 scoredPhoneNumbers:v16 scoredEmailAddresses:v18 scoredSocialProfiles:v20 scoredPostalAddresses:v22 score:0 flags:v13];

          if (v23)
          {
            [v29 addObject:v23];
          }

          objc_autoreleasePoolPop(context);
          v5 = v31;
        }

        v32 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v32);
    }

    [v29 sortUsingSelector:sel_reverseCompare_];
    v4 = v26;
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_scoredLabeledValues:(uint64_t)values
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = PPContactLabelScoringMap();
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        label = [v9 label];
        v12 = [v3 objectForKeyedSubscript:label];

        if (v12)
        {
          [v12 doubleValue];
          v14 = (v13 + 1.0) * 0.5;
        }

        else
        {
          v14 = 0.5;
        }

        v15 = [MEMORY[0x277D3A4A0] scoredLabeledValueWithLabeledValue:v9 score:0 flags:v14];
        if (v15)
        {
          [v4 addObject:v15];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v4 sortUsingSelector:sel_reverseCompare_];
  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)mostRelevantContactsWithName:(id)name store:(id)store
{
  storeCopy = store;
  nameCopy = name;
  v8 = pp_contacts_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PPContactScorer.mostRelevantContactsWithName", "", buf, 2u);
  }

  v12 = +[PPPeopleSuggester sharedInstance];
  v13 = [v12 rankedContactIdentifiersMatchingName:nameCopy];

  rankedContactIdentifiers = [v12 rankedContactIdentifiers];
  v15 = [(PPContactScorer *)self _contactRankMapWithRankedIdentifiers:rankedContactIdentifiers];

  v16 = [(PPContactScorer *)self _contactsWithIdentifiers:v13 store:storeCopy];

  v17 = [(PPContactScorer *)self _scoreAndSortContacts:v16 rankMap:v15];

  v18 = pp_contacts_signpost_handle();
  v19 = v18;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_END, v9, "PPContactScorer.mostRelevantContactsWithName", "", v21, 2u);
  }

  return v17;
}

+ (id)_contactsWithIdentifiers:(void *)identifiers store:
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  [v6 setMatchingIdentifiers:v5];

  v12 = 0;
  v7 = [identifiersCopy contactsWithQuery:v6 error:&v12];

  v8 = v12;
  if (!v7)
  {
    v9 = pp_contacts_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPContactScorer: failed to resolve ranked identifiers to contacts: %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)mostRelevantContactsWithStore:(id)store shouldContinueBlock:(id)block
{
  storeCopy = store;
  blockCopy = block;
  v8 = pp_contacts_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_contacts_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PPContactScorer.mostRelevantContacts", "", buf, 2u);
  }

  if (blockCopy[2](blockCopy))
  {
    v12 = +[PPPeopleSuggester sharedInstance];
    rankedContactIdentifiers = [v12 rankedContactIdentifiers];

    if (blockCopy[2](blockCopy))
    {
      v14 = [(PPContactScorer *)self _contactRankMapWithRankedIdentifiers:rankedContactIdentifiers];
      v15 = [(PPContactScorer *)self _contactsWithIdentifiers:rankedContactIdentifiers store:storeCopy];
      if (blockCopy[2](blockCopy))
      {
        v16 = [(PPContactScorer *)self _scoreAndSortContacts:v15 rankMap:v14];
        v17 = pp_contacts_signpost_handle();
        v18 = v17;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *v20 = 0;
          _os_signpost_emit_with_name_impl(&dword_23224A000, v18, OS_SIGNPOST_INTERVAL_END, v9, "PPContactScorer.mostRelevantContacts", "", v20, 2u);
        }
      }

      else
      {
        v18 = pp_contacts_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "mostRelevantContactsWithStore stopping due to shouldContinueBlock", v21, 2u);
        }

        v16 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v14 = pp_contacts_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "mostRelevantContactsWithStore stopping due to shouldContinueBlock", v22, 2u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    rankedContactIdentifiers = pp_contacts_log_handle();
    if (os_log_type_enabled(rankedContactIdentifiers, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_23224A000, rankedContactIdentifiers, OS_LOG_TYPE_DEFAULT, "mostRelevantContactsWithStore stopping due to shouldContinueBlock", v23, 2u);
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

@end