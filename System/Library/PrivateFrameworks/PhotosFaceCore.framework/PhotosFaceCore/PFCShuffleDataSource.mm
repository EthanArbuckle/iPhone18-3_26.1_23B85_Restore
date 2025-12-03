@interface PFCShuffleDataSource
- (BOOL)hasSuggestions;
- (BOOL)hasSuggestionsForShuffleSubtype:(unsigned __int16)subtype persons:(id)persons minimumCount:(int64_t)count;
- (BOOL)hasSuggestionsForSubtype:(unsigned __int16)subtype;
- (PFCShuffleDataSource)initWithPhotoLibrary:(id)library;
- (unint64_t)numberOfSuggestionsForTopPerson:(id)person;
- (void)calculateAvailableShuffles;
- (void)calculatePeople;
- (void)calculatePeopleCount;
@end

@implementation PFCShuffleDataSource

- (PFCShuffleDataSource)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PFCShuffleDataSource;
  v6 = [(PFCShuffleDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    [(PFCShuffleDataSource *)v7 calculateAvailableShuffles];
  }

  return v7;
}

- (BOOL)hasSuggestionsForSubtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  v5 = PHSuggestionStringWithSubtype();
  if (subtypeCopy > 802)
  {
    if (subtypeCopy == 803)
    {
      hasPets = [(PFCShuffleDataSource *)self hasPets];
      goto LABEL_13;
    }

    if (subtypeCopy == 804)
    {
      hasPets = [(PFCShuffleDataSource *)self hasPeople];
      goto LABEL_13;
    }
  }

  else
  {
    if (subtypeCopy == 801)
    {
      hasPets = [(PFCShuffleDataSource *)self hasNature];
      goto LABEL_13;
    }

    if (subtypeCopy == 802)
    {
      hasPets = [(PFCShuffleDataSource *)self hasCityscape];
LABEL_13:
      v8 = hasPets;
      goto LABEL_14;
    }
  }

  v7 = pfc_shuffle_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(PFCShuffleDataSource *)v5 hasSuggestionsForSubtype:v7];
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (unint64_t)numberOfSuggestionsForTopPerson:(id)person
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:person];
  v5 = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:602 persons:v4];

  return v5;
}

- (BOOL)hasSuggestionsForShuffleSubtype:(unsigned __int16)subtype persons:(id)persons minimumCount:(int64_t)count
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [PFCShuffleDataSource numberOfSuggestionsForShuffleSubtype:"numberOfSuggestionsForShuffleSubtype:persons:" persons:?];
  v7 = PHSuggestionStringWithSubtype();
  if (v6 < count)
  {
    v8 = pfc_shuffle_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218754;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      countCopy = count;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1DF9B6000, v8, OS_LOG_TYPE_DEFAULT, "[PFCShuffleDataSource] Found %lu %@ suggestions, required %lu, skipping creating shuffle descriptor for %@", &v11, 0x2Au);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6 >= count;
}

- (void)calculateAvailableShuffles
{
  self->_numberOfNatureSuggestions = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:801 persons:0];
  self->_numberOfPetSuggestions = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:803 persons:0];
  self->_numberOfCityscapeSuggestions = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:802 persons:0];

  [(PFCShuffleDataSource *)self calculatePeople];
}

- (void)calculatePeople
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:self->_photoLibrary];
  personUUIDsWithNegativeFeedback = [v3 personUUIDsWithNegativeFeedback];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = personUUIDsWithNegativeFeedback;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E6978980] localIdentifierWithUUID:{*(*(&v26 + 1) + 8 * v10), v26}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x1E695DFA8];
  v13 = [(PFCShuffleDataSource *)self fetchPersonLocalIdentifiersForSuggestionSubtype:804 photoLibrary:self->_photoLibrary];
  v14 = [v12 setWithSet:v13];

  [v14 minusSet:v5];
  v15 = [v14 copy];
  ambientPeople = self->_ambientPeople;
  self->_ambientPeople = v15;

  v17 = MEMORY[0x1E695DFA8];
  v18 = [(PFCShuffleDataSource *)self fetchPersonLocalIdentifiersForSuggestionSubtype:602 photoLibrary:self->_photoLibrary];
  v19 = [v17 setWithSet:v18];

  [v19 intersectSet:v14];
  v20 = [v19 copy];
  topAmbientPeople = self->_topAmbientPeople;
  self->_topAmbientPeople = v20;

  self->_numberOfPeopleSuggestions = [(NSSet *)self->_ambientPeople count];
  v22 = pfc_shuffle_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(NSSet *)self->_ambientPeople count];
    v24 = [(NSSet *)self->_topAmbientPeople count];
    *buf = 134218240;
    v31 = v23;
    v32 = 2048;
    v33 = v24;
    _os_log_impl(&dword_1DF9B6000, v22, OS_LOG_TYPE_DEFAULT, "[PFCShuffleDataSource] Found %td ambient people, %td VIPs", buf, 0x16u);
  }

  [(PFCShuffleDataSource *)self calculatePeopleCount];
  v25 = *MEMORY[0x1E69E9840];
}

- (void)calculatePeopleCount
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_topAmbientPeople;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFCShuffleDataSource numberOfSuggestionsForTopPerson:](self, "numberOfSuggestionsForTopPerson:", v9, v14)}];
        [dictionary setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [dictionary keysSortedByValueUsingComparator:&__block_literal_global];
  sortedTopAmbientPeople = self->_sortedTopAmbientPeople;
  self->_sortedTopAmbientPeople = v11;

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSuggestions
{
  if ([(PFCShuffleDataSource *)self hasPeople]|| [(PFCShuffleDataSource *)self hasPets]|| [(PFCShuffleDataSource *)self hasNature])
  {
    return 1;
  }

  return [(PFCShuffleDataSource *)self hasCityscape];
}

- (void)hasSuggestionsForSubtype:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF9B6000, a2, OS_LOG_TYPE_ERROR, "[PFCShuffleDataSource] bad shuffle subtype: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end