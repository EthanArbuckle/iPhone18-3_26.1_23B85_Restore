@interface PPContactsImporter
+ (id)defaultInstance;
+ (uint64_t)_shouldImport;
- (PPContactsImporter)initWithDatabase:(id)a3;
- (id)_entitiesForScoredContact:(void *)a1;
- (id)_scoredContactWithContactIdentifier:(uint64_t)a1;
- (id)_sourceForContactWithContactIdentifier:(void *)a1;
- (uint64_t)_donateScoredNamedEntities:(void *)a3 source:(void *)a4 error:;
- (uint64_t)importScoredContact:(void *)a3 contactsIdentifier:(void *)a4 error:;
- (void)_deleteAndReAddWholeContact:(void *)a3 contactIdentifier:;
- (void)_flushNamedEntities;
- (void)_handleNotificationWithError:(uint64_t)a1;
- (void)importContactsDataWithShouldContinueBlock:(id)a3;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation PPContactsImporter

- (void)visitDeleteContactEvent:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v13 = [a3 contactIdentifier];
  if (self)
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _deleteContact: %@", buf, 0xCu);
    }

    v15 = 0;
    namedEntityStore = self->_namedEntityStore;
    v6 = *MEMORY[0x277D3A600];
    v20[0] = v13;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v14 = 0;
    v8 = [(PPLocalNamedEntityStore *)namedEntityStore deleteAllNamedEntitiesFromSourcesWithBundleId:v6 documentIds:v7 deletedCount:&v15 error:&v14];
    v9 = v14;

    v10 = pp_contacts_log_handle();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v17 = v15;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _deleteContact: deleted %tu named entities for %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "PPContactsImporter: _deleteContact: failed to delete entities: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)visitUpdateContactEvent:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v47 = [a3 contact];
  v4 = [v47 identifier];
  if (self)
  {
    v5 = pp_contacts_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _updateContact: %@", &buf, 0xCu);
    }

    v6 = [(PPContactsImporter *)self _scoredContactWithContactIdentifier:v4];
    v7 = [v6 contact];
    v8 = [v7 contactsContactIdentifierWithError:0];

    if ([v8 length])
    {
      v44 = v8;
      v45 = [PPContactsImporter _entitiesForScoredContact:v6];
      v43 = [v45 _pas_mappedArrayWithTransform:&__block_literal_global_72];
      v46 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v43];
      v9 = pp_contacts_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v39 = [v46 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v39;
        _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "PPContactsImporter: _updateContact: new set: %tu", &buf, 0xCu);
      }

      v10 = [PPContactsImporter _sourceForContactWithContactIdentifier:v4];
      v11 = objc_opt_new();
      v12 = objc_autoreleasePoolPush();
      v13 = objc_alloc(MEMORY[0x277CBEB98]);
      v14 = [v10 bundleId];
      v15 = [v13 initWithObjects:{v14, 0}];

      objc_autoreleasePoolPop(v12);
      [v11 setMatchingSourceBundleIds:v15];

      v16 = objc_autoreleasePoolPush();
      v17 = objc_alloc(MEMORY[0x277CBEB98]);
      v18 = [v10 documentId];
      v19 = [v17 initWithObjects:{v18, 0}];

      objc_autoreleasePoolPop(v16);
      [v11 setMatchingSourceDocumentIds:v19];

      v20 = objc_autoreleasePoolPush();
      v21 = objc_alloc(MEMORY[0x277CBEB98]);
      v22 = [v10 groupId];
      v23 = [v21 initWithObjects:{v22, 0}];

      objc_autoreleasePoolPop(v20);
      [v11 setMatchingSourceGroupIds:v23];

      v24 = objc_opt_new();
      namedEntityStore = self->_namedEntityStore;
      v49 = 0;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v55 = __51__PPContactsImporter__updateContactWithIdentifier___block_invoke_74;
      v56 = &unk_2789790F8;
      v26 = v24;
      v57 = v26;
      LOBYTE(namedEntityStore) = [(PPLocalNamedEntityStore *)namedEntityStore iterNamedEntityRecordsWithQuery:v11 error:&v49 block:&buf];
      v27 = v49;
      v28 = pp_contacts_log_handle();
      v29 = v28;
      if (namedEntityStore)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v40 = [v26 count];
          LODWORD(v50) = 134217984;
          *(&v50 + 4) = v40;
          _os_log_debug_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEBUG, "PPContactsImporter: _updateContact: existing set: %tu", &v50, 0xCu);
        }

        v30 = [v26 mutableCopy];
        [v30 minusSet:v46];
        v31 = pp_contacts_log_handle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v41 = [v30 count];
          LODWORD(v50) = 134217984;
          *(&v50 + 4) = v41;
          _os_log_debug_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEBUG, "PPContactsImporter: _updateContact: to delete: %tu", &v50, 0xCu);
        }

        if ([v30 count])
        {
          v32 = pp_contacts_log_handle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v50) = 0;
            _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _updateContact: detected deletions, reimporting whole contact.", &v50, 2u);
          }

          [(PPContactsImporter *)self _deleteAndReAddWholeContact:v6 contactIdentifier:v4];
        }

        else
        {
          v33 = [v46 mutableCopy];
          [v33 minusSet:v26];
          v34 = pp_contacts_log_handle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v42 = [v33 count];
            LODWORD(v50) = 134217984;
            *(&v50 + 4) = v42;
            _os_log_debug_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEBUG, "PPContactsImporter: _updateContact: to add: %tu", &v50, 0xCu);
          }

          *&v50 = MEMORY[0x277D85DD0];
          *(&v50 + 1) = 3221225472;
          v51 = __51__PPContactsImporter__updateContactWithIdentifier___block_invoke_76;
          v52 = &unk_2789740A0;
          v35 = v33;
          v53 = v35;
          v36 = [v45 _pas_filteredArrayWithTest:&v50];
          if ([v36 count])
          {
            v48 = v27;
            [(PPContactsImporter *)self _donateScoredNamedEntities:v36 source:v10 error:&v48];
            v37 = v48;

            v27 = v37;
          }
        }

        v8 = v44;
      }

      else
      {
        v8 = v44;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v50) = 138412290;
          *(&v50 + 4) = v27;
          _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "PPContactsImporter: _updateContact: failed to iterate existing records: %@", &v50, 0xCu);
        }

        [(PPContactsImporter *)self _deleteAndReAddWholeContact:v6 contactIdentifier:v4];
      }
    }

    else
    {
      v27 = pp_contacts_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v4;
        _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "failed to load contact %@", &buf, 0xCu);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)_scoredContactWithContactIdentifier:(uint64_t)a1
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v20[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v4 setMatchingIdentifiers:v5];

  v6 = *(a1 + 16);
  v15 = 0;
  v7 = [v6 contactsWithQuery:v4 error:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [PPContactScorer scoredContactsWithContacts:v7];
    if ([v9 count]>= 2)
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v14 = [v9 count];
        *buf = 138412546;
        v17 = v3;
        v18 = 2048;
        v19 = v14;
        _os_log_fault_impl(&dword_23224A000, v10, OS_LOG_TYPE_FAULT, "received an unexpected number of contacts back from identifier query: %@ -> %tu", buf, 0x16u);
      }
    }

    v11 = [v9 firstObject];
  }

  else
  {
    v9 = pp_contacts_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPContactsImporter: _addContact: failed to load contacts to import from CN: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_entitiesForScoredContact:(void *)a1
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [v1 scoredPostalAddresses];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count") + 2}];

  v5 = [v1 contact];
  v6 = [v5 localizedFullName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D3A420]);
    v9 = [v1 contact];
    v10 = [v9 localizedFullName];
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v11 languageCode];
    v13 = [v8 initWithName:v10 category:1 language:v12];

    v14 = objc_alloc(MEMORY[0x277D3A498]);
    [v1 score];
    v16 = [v14 initWithItem:v13 score:{fmin(v15, 1.0)}];
    [v4 addObject:v16];
  }

  v17 = [v1 contact];
  v18 = [v17 organizationName];
  v19 = [v18 length];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277D3A420]);
    v21 = [v1 contact];
    v22 = [v21 organizationName];
    v23 = [MEMORY[0x277CBEAF8] currentLocale];
    v24 = [v23 languageCode];
    v25 = [v20 initWithName:v22 category:2 language:v24];

    v26 = objc_alloc(MEMORY[0x277D3A498]);
    [v1 score];
    v28 = [v26 initWithItem:v25 score:{fmin(v27, 1.0)}];
    [v4 addObject:v28];
  }

  v49 = v1;
  v50 = v4;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [v1 scoredPostalAddresses];
  v29 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v53;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v52 + 1) + 8 * i);
        v34 = [v33 labeledValue];
        v35 = [v34 value];

        v36 = [v35 singleLineNormalizedAddressString];
        if (v36)
        {
          v37 = [v35 thoroughfare];
          if ([v37 length])
          {
            v38 = [v35 locality];
            if ([v38 length])
            {
            }

            else
            {
              v39 = [v35 postalCode];
              v40 = [v39 length];

              if (!v40)
              {
                goto LABEL_17;
              }
            }

            v41 = objc_alloc(MEMORY[0x277D3A420]);
            v42 = [MEMORY[0x277CBEAF8] currentLocale];
            v43 = [v42 languageCode];
            v37 = [v41 initWithName:v36 category:12 language:v43];

            v44 = objc_alloc(MEMORY[0x277D3A498]);
            [v33 score];
            v46 = [v44 initWithItem:v37 score:{fmin(v45, 1.0)}];
            [v50 addObject:v46];
          }
        }

LABEL_17:
      }

      v30 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v30);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)_sourceForContactWithContactIdentifier:(void *)a1
{
  v1 = MEMORY[0x277D3A4E0];
  v2 = a1;
  v3 = [[v1 alloc] initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:0 donationCount:0 contactHandleCount:0 flags:1];
  v4 = objc_alloc(MEMORY[0x277D3A4D8]);
  v5 = *MEMORY[0x277D3A600];
  v6 = objc_opt_new();
  v7 = [v4 initWithBundleId:v5 groupId:0 documentId:v2 date:v6 relevanceDate:0 contactHandles:0 language:0 metadata:v3];

  return v7;
}

void __51__PPContactsImporter__updateContactWithIdentifier___block_invoke_74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 entity];
  [v2 addObject:v3];
}

- (void)_deleteAndReAddWholeContact:(void *)a3 contactIdentifier:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 24);
  v8 = *MEMORY[0x277D3A600];
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = 0;
  LOBYTE(v8) = [v7 deleteAllNamedEntitiesFromSourcesWithBundleId:v8 documentIds:v9 deletedCount:0 error:&v17];
  v10 = v17;

  if ((v8 & 1) == 0)
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_fault_impl(&dword_23224A000, v11, OS_LOG_TYPE_FAULT, "PPContactsImporter failed to delete old entities during contact update and reimport: %@", buf, 0xCu);
    }
  }

  v16 = v10;
  v12 = [(PPContactsImporter *)a1 importScoredContact:v5 contactsIdentifier:v6 error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    v14 = pp_contacts_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "PPContactsImporter: failed to import scored contact during update and reimport: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PPContactsImporter__updateContactWithIdentifier___block_invoke_76(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 item];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (uint64_t)_donateScoredNamedEntities:(void *)a3 source:(void *)a4 error:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = pp_contacts_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 count];
    v11 = [v8 documentId];
    *buf = 134218242;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: donating %tu entities from %@", buf, 0x16u);
  }

  v12 = *(a1 + 24);
  v20 = 0;
  v13 = [v12 donateNamedEntities:v7 source:v8 algorithm:14 cloudSync:0 sentimentScore:&v20 error:0.0];
  v14 = v20;
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    if (a4)
    {
      v16 = v14;
      *a4 = v15;
    }

    v17 = pp_contacts_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPContactsImporter: failed to donate named entity: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (uint64_t)importScoredContact:(void *)a3 contactsIdentifier:(void *)a4 error:
{
  if (!a1)
  {
    return 0;
  }

  v7 = a2;
  v8 = [PPContactsImporter _sourceForContactWithContactIdentifier:a3];
  v9 = [PPContactsImporter _entitiesForScoredContact:v7];

  if ([v9 count])
  {
    v10 = [(PPContactsImporter *)a1 _donateScoredNamedEntities:v9 source:v8 error:a4];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)visitAddContactEvent:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = [a3 contact];
  v4 = [v16 identifier];
  if (self)
  {
    v5 = pp_contacts_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _addContact: %@", buf, 0xCu);
    }

    v6 = [(PPContactsImporter *)self _scoredContactWithContactIdentifier:v4];
    v7 = [v6 contact];
    v8 = [v7 contactsContactIdentifierWithError:0];

    if (![v8 length])
    {
      v10 = pp_contacts_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "failed to load contact %@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    v17 = 0;
    v9 = [(PPContactsImporter *)self importScoredContact:v6 contactsIdentifier:v8 error:&v17];
    v10 = v17;
    v11 = pp_contacts_log_handle();
    v12 = v11;
    if (v9)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v13 = [v6 contact];
      v14 = [v13 identifier];
      *buf = 138412290;
      v19 = v14;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _addContact: imported %@ due to CN change", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v13 = [v6 contact];
      v14 = [v13 identifier];
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPContactsImporter: _addContact: failed to import %@: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)visitDropEverythingEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = pp_contacts_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: CNChangeHistoryDropEverythingEvent", buf, 2u);
  }

  v13 = 0;
  namedEntityStore = self->_namedEntityStore;
  v6 = *MEMORY[0x277D3A600];
  v12 = 0;
  v7 = [(PPLocalNamedEntityStore *)namedEntityStore deleteAllNamedEntitiesFromSourcesWithBundleId:v6 deletedCount:&v13 error:&v12];
  v8 = v12;
  v9 = pp_contacts_log_handle();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v13;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: CNChangeHistoryDropEverythingEvent: deleted %tu named entities", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPContactsImporter: CNChangeHistoryDropEverythingEvent: failed to delete entities: %@", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)importContactsDataWithShouldContinueBlock:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v3 = +[PPContactsImporter _shouldImport];
  v4 = pp_contacts_log_handle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: performing contacts import.", &buf, 2u);
    }

    v4 = [PPContactScorer mostRelevantContactsWithStore:self->_contactStore shouldContinueBlock:v27];
    v6 = pp_contacts_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: got %tu scored contacts", &buf, 0xCu);
    }

    if ([v4 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__9057;
      v43 = __Block_byref_object_dispose__9058;
      v44 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__9057;
      v37 = __Block_byref_object_dispose__9058;
      v38 = 0;
      db = self->_db;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __69__PPContactsImporter__loadContactIdentifiersAlreadyImportedInPastDay__block_invoke;
      v32[3] = &unk_278974078;
      v32[4] = &buf;
      v32[5] = &v33;
      [(PPSQLDatabase *)db readTransactionWithClient:6 block:v32];
      if (*(*(&buf + 1) + 40))
      {
        v9 = objc_opt_new();
        [v9 timeIntervalSinceDate:*(*(&buf + 1) + 40)];
        if ((v10 / 86400.0) >= 1)
        {
          v11 = v34[5];
          v34[5] = 0;
        }
      }

      v12 = v34[5];
      _Block_object_dispose(&v33, 8);

      _Block_object_dispose(&buf, 8);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v4 = v4;
      v13 = [v4 countByEnumeratingWithState:&v28 objects:v39 count:16];
      if (v13)
      {
        v14 = *v29;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v4);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            if ((v27[2]() & 1) == 0)
            {
              if (v12)
              {
                v21 = v12;
                v22 = v21;
                if (self)
                {
                  v23 = self->_db;
                  *&buf = MEMORY[0x277D85DD0];
                  *(&buf + 1) = 3221225472;
                  v41 = __56__PPContactsImporter__stashImportedContactsIdentifiers___block_invoke;
                  v42 = &unk_278978B68;
                  v43 = v21;
                  [(PPSQLDatabase *)v23 writeTransactionWithClient:6 block:&buf];
                }
              }

              goto LABEL_32;
            }

            v18 = [v16 contact];
            v19 = [v18 contactsContactIdentifierWithError:0];

            if (![v19 length] || (objc_msgSend(v12, "containsObject:", v19) & 1) != 0)
            {

LABEL_32:
              objc_autoreleasePoolPop(v17);

              goto LABEL_33;
            }

            [(PPContactsImporter *)self importScoredContact:v16 contactsIdentifier:v19 error:0];
            [v12 addObject:v19];

            objc_autoreleasePoolPop(v17);
          }

          v13 = [v4 countByEnumeratingWithState:&v28 objects:v39 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v20 = self;
        if (!self)
        {
          goto LABEL_33;
        }
      }

      else
      {

        v20 = self;
      }

      [(PPSQLDatabase *)v20->_db writeTransactionWithClient:6 block:&__block_literal_global_64_9047, self];
      [(PPContactsImporter *)v26 _flushNamedEntities];
LABEL_33:
    }
  }

  else if (v5)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: skipping Contacts import due to settings.", &buf, 2u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)_shouldImport
{
  objc_opt_self();
  v0 = +[PPSettings sharedInstance];
  v1 = [v0 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A600]];

  return v1;
}

- (void)_flushNamedEntities
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *(a1 + 24);
    v6 = 0;
    v2 = [v1 flushDonationsWithError:&v6];
    v3 = v6;
    if ((v2 & 1) == 0)
    {
      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: Warning: failed to flush named entities: %@", buf, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __56__PPContactsImporter__stashImportedContactsIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v4 addObject:v5];

  [v4 addObject:*(a1 + 32)];
  v10 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v10];
  v7 = v10;
  if (v6)
  {
    [PPSQLKVStore storeBlob:v6 forKey:@"alreadyImportedContactsIdentifiers" transaction:v3];
  }

  else
  {
    v8 = pp_contacts_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "_stashAlreadyImportedContactsIdentifiers: failed to serialize NSArray: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __69__PPContactsImporter__loadContactIdentifiersAlreadyImportedInPastDay__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PPSQLKVStore loadBlobForKey:@"alreadyImportedContactsIdentifiers" transaction:v3];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 initWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v21 = 0;
    v12 = [v5 unarchivedObjectOfClasses:v11 fromData:v4 error:&v21];
    v13 = v21;

    if (v12 && [v12 count] == 2)
    {
      v14 = [v12 objectAtIndexedSubscript:0];
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = [v12 objectAtIndexedSubscript:1];
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v19 = pp_contacts_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = @"alreadyImportedContactsIdentifiers";
        v24 = 2112;
        v25 = v13;
        _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "Failed to unarchive _PASTuple2 for KVS key %@: %@", buf, 0x16u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (PPContactsImporter)initWithDatabase:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PPContactsImporter;
  v6 = [(PPContactsImporter *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, a3);
    v8 = [[PPContactStorage alloc] initWithDatabase:v7->_db foundInAppsHarvestStoreGetter:&__block_literal_global_9066];
    v9 = [[PPLocalContactStore alloc] initWithStorage:v8 namedEntityStoreOverride:0];
    contactStore = v7->_contactStore;
    v7->_contactStore = v9;

    v11 = [[PPNamedEntityStorage alloc] initWithDatabase:v7->_db];
    v12 = [PPLocalNamedEntityStore alloc];
    v13 = [objc_alloc(MEMORY[0x277D425F0]) initWithResult:v7->_contactStore];
    v14 = +[PPTrialWrapper sharedInstance];
    v15 = [(PPLocalNamedEntityStore *)v12 initWithStorage:v11 topicStoreForNamedEntityMapping:0 lazyContactStoreForMapsFeedback:v13 trialWrapper:v14];
    namedEntityStore = v7->_namedEntityStore;
    v7->_namedEntityStore = v15;

    objc_initWeak(&location, v7);
    v17 = MEMORY[0x277D3A458];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __47__PPContactsImporter__registerForNotifications__block_invoke;
    v22[3] = &unk_2789797B8;
    objc_copyWeak(&v23, &location);
    [v17 addContactsObserverForLifetimeOfObject:v7 block:v22];
    v18 = pp_contacts_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: performing initial history sync up.", buf, 2u);
    }

    [PPContactsImporter _handleNotificationWithError:v7];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __47__PPContactsImporter__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [PPContactsImporter _handleNotificationWithError:?];
    WeakRetained = v2;
  }
}

- (void)_handleNotificationWithError:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  if ((+[PPContactsImporter _shouldImport]& 1) != 0)
  {
    v2 = *(a1 + 16);
    v19 = 0;
    v3 = [v2 contactsChangeHistoryForClient:@"com.apple.proactive.PersonalizationPortrait.PPContactsImporter" error:&v19];
    v4 = v19;
    if (v3)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [v3 value];
      v14 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v14)
      {
        v6 = *v16;
        v7 = v14;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          [v9 acceptEventVisitor:a1];
          objc_opt_class();
          LOBYTE(v9) = objc_opt_isKindOfClass();
          objc_autoreleasePoolPop(v10);
          if (v9)
          {
            break;
          }

          if (v7 == ++v8)
          {
            v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
            if (v7)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      [*(a1 + 16) clearChangeHistoryForClient:@"com.apple.proactive.PersonalizationPortrait.PPContactsImporter" historyResult:v3];
      v11 = pp_contacts_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: done handling contact change history.", buf, 2u);
      }

      if (v14)
      {
        [(PPContactsImporter *)a1 _flushNamedEntities];
      }
    }

    else
    {
      v12 = pp_contacts_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v4;
        _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPContactsImporter: failed to load CN change history: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = pp_contacts_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: _handleNotificationWithError bypassed due to settings", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)defaultInstance
{
  if ((+[PPContactsImporter _shouldImport]& 1) != 0)
  {
    v2 = +[PPSQLDatabase sharedInstance];
    v3 = v2;
    if (v2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__PPContactsImporter_defaultInstance__block_invoke;
      block[3] = &unk_2789790A8;
      v8 = v2;
      if (defaultInstance__pasOnceToken6 != -1)
      {
        dispatch_once(&defaultInstance__pasOnceToken6, block);
      }

      v4 = defaultInstance__pasExprOnceResult;
      v5 = v8;
    }

    else
    {
      v5 = pp_contacts_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPContactsImporter: giving up on initialization due to lack of DB singleton.", buf, 2u);
      }

      v4 = 0;
    }
  }

  else
  {
    v3 = pp_contacts_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: defaultInstance bypassed due to settings", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

void __37__PPContactsImporter_defaultInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[PPContactsImporter alloc] initWithDatabase:*(a1 + 32)];
  v4 = defaultInstance__pasExprOnceResult;
  defaultInstance__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

@end