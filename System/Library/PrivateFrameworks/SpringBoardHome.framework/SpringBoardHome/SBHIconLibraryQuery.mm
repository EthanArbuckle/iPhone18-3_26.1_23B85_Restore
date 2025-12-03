@interface SBHIconLibraryQuery
+ (BOOL)string:(id)string matchesSearchString:(id)searchString;
- (BOOL)isEqual:(id)equal;
- (NSPredicate)predicate;
- (SBHIconLibraryQuery)initWithMarkedTextSearchString:(id)string markedTextRange:(id)range markedTextArray:(id)array;
- (SBHIconLibraryQuery)initWithSearchString:(id)string;
- (id)_composeComparator:(id)comparator andComparator:(id)andComparator;
- (id)comparator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)prefixComparator;
- (unint64_t)hash;
@end

@implementation SBHIconLibraryQuery

- (SBHIconLibraryQuery)initWithSearchString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = SBHIconLibraryQuery;
  v5 = [(SBHIconLibraryQuery *)&v13 init];
  if (v5)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v7 = _SBHIconLibraryQueryCanonicalizedString(stringCopy, @" ", whitespaceAndNewlineCharacterSet);
    v8 = [v7 copy];
    searchString = v5->_searchString;
    v5->_searchString = v8;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    queryId = v5->_queryId;
    v5->_queryId = uUID;
  }

  return v5;
}

- (SBHIconLibraryQuery)initWithMarkedTextSearchString:(id)string markedTextRange:(id)range markedTextArray:(id)array
{
  stringCopy = string;
  rangeCopy = range;
  arrayCopy = array;
  v23.receiver = self;
  v23.super_class = SBHIconLibraryQuery;
  v11 = [(SBHIconLibraryQuery *)&v23 init];
  v12 = v11;
  if (v11)
  {
    if (v11->_markedTextRange || v11->_markedTextArray)
    {
      v13 = [rangeCopy copy];
      markedTextRange = v12->_markedTextRange;
      v12->_markedTextRange = v13;

      v15 = [arrayCopy copy];
      markedTextArray = v12->_markedTextArray;
      v12->_markedTextArray = v15;

      v17 = [stringCopy copy];
      searchString = v12->_searchString;
      v12->_searchString = v17;
    }

    else
    {
      searchString = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v20 = _SBHIconLibraryQueryCanonicalizedString(stringCopy, @" ", searchString);
      v21 = [v20 copy];
      v22 = v12->_searchString;
      v12->_searchString = v21;
    }
  }

  return v12;
}

- (NSPredicate)predicate
{
  predicate = self->_predicate;
  if (!predicate)
  {
    objc_initWeak(&location, self);
    _hasSearchString = [(SBHIconLibraryQuery *)self _hasSearchString];
    v5 = MEMORY[0x1E696AE18];
    if (_hasSearchString)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __32__SBHIconLibraryQuery_predicate__block_invoke;
      v11[3] = &unk_1E808F2E8;
      objc_copyWeak(&v12, &location);
      v6 = [v5 predicateWithBlock:v11];
      v7 = self->_predicate;
      self->_predicate = v6;

      objc_destroyWeak(&v12);
    }

    else
    {
      v8 = [MEMORY[0x1E696AE18] predicateWithValue:1];
      v9 = self->_predicate;
      self->_predicate = v8;
    }

    objc_destroyWeak(&location);
    predicate = self->_predicate;
  }

  return predicate;
}

uint64_t __32__SBHIconLibraryQuery_predicate__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v3 iconLibraryQueryingFilterStrings];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([objc_opt_class() string:*(*(&v11 + 1) + 8 * i) matchesSearchString:v5])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (BOOL)string:(id)string matchesSearchString:(id)searchString
{
  stringCopy = string;
  searchStringCopy = searchString;
  v7 = [stringCopy localizedCaseInsensitiveContainsString:searchStringCopy];
  if (v7 & 1) != 0 || (__50__SBHIconLibraryQuery_string_matchesSearchString___block_invoke(v7, stringCopy), v8 = objc_claimAutoreleasedReturnValue(), __50__SBHIconLibraryQuery_string_matchesSearchString___block_invoke(v8, searchStringCopy), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 localizedCaseInsensitiveContainsString:v9], v9, v8, (v10))
  {
    v11 = 1;
  }

  else
  {
    punctuationCharacterSet = [MEMORY[0x1E696AD48] punctuationCharacterSet];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [punctuationCharacterSet formUnionWithCharacterSet:whitespaceCharacterSet];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__SBHIconLibraryQuery_string_matchesSearchString___block_invoke_2;
    aBlock[3] = &unk_1E808F310;
    v20 = punctuationCharacterSet;
    v14 = punctuationCharacterSet;
    v15 = _Block_copy(aBlock);
    v16 = v15[2](v15, stringCopy);
    v17 = v15[2](v15, searchStringCopy);
    v11 = [v16 localizedCaseInsensitiveContainsString:v17];
  }

  return v11;
}

id __50__SBHIconLibraryQuery_string_matchesSearchString___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB08];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = _SBHIconLibraryQueryCanonicalizedString(v3, &stru_1F3D472A8, v4);

  return v5;
}

uint64_t __37__SBHIconLibraryQuery_aToZComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 iconLibraryQueryingAlphaSortString];
  v6 = [v4 iconLibraryQueryingAlphaSortString];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)prefixComparator
{
  v2 = [(NSString *)self->_searchString copy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__SBHIconLibraryQuery_prefixComparator__block_invoke;
  aBlock[3] = &unk_1E808F358;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

uint64_t __39__SBHIconLibraryQuery_prefixComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 iconLibraryQueryingAlphaSortString];
  v7 = [v5 iconLibraryQueryingAlphaSortString];

  v8 = [v6 localizedStandardRangeOfString:*(a1 + 32)];
  v9 = (v8 == 0) ^ ([v7 localizedStandardRangeOfString:*(a1 + 32)] != 0);
  v10 = -1;
  if (v8)
  {
    v10 = 1;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (id)_composeComparator:(id)comparator andComparator:(id)andComparator
{
  comparatorCopy = comparator;
  andComparatorCopy = andComparator;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__SBHIconLibraryQuery__composeComparator_andComparator___block_invoke;
  v11[3] = &unk_1E808F380;
  v12 = comparatorCopy;
  v13 = andComparatorCopy;
  v7 = andComparatorCopy;
  v8 = comparatorCopy;
  v9 = _Block_copy(v11);

  return v9;
}

uint64_t __56__SBHIconLibraryQuery__composeComparator_andComparator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  if (!v7)
  {
    v7 = (*(*(a1 + 40) + 16))();
  }

  return v7;
}

- (id)comparator
{
  aToZComparator = [(SBHIconLibraryQuery *)self aToZComparator];
  if ([(SBHIconLibraryQuery *)self _hasSearchString])
  {
    prefixComparator = [(SBHIconLibraryQuery *)self prefixComparator];
    v5 = [(SBHIconLibraryQuery *)self _composeComparator:prefixComparator andComparator:aToZComparator];

    aToZComparator = v5;
  }

  v6 = _Block_copy(aToZComparator);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  searchString = [(SBHIconLibraryQuery *)self searchString];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __31__SBHIconLibraryQuery_isEqual___block_invoke;
  v28[3] = &unk_1E808F3A8;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendString:searchString counterpart:v28];

  keyboardLanguageHint = [(SBHIconLibraryQuery *)self keyboardLanguageHint];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __31__SBHIconLibraryQuery_isEqual___block_invoke_2;
  v26[3] = &unk_1E808F3A8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendString:keyboardLanguageHint counterpart:v26];

  markedTextRange = [(SBHIconLibraryQuery *)self markedTextRange];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __31__SBHIconLibraryQuery_isEqual___block_invoke_3;
  v24[3] = &unk_1E808F3D0;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendObject:markedTextRange counterpart:v24];

  markedTextArray = [(SBHIconLibraryQuery *)self markedTextArray];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __31__SBHIconLibraryQuery_isEqual___block_invoke_4;
  v22 = &unk_1E808F3D0;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendObject:markedTextArray counterpart:&v19];

  LOBYTE(markedTextArray) = [v5 isEqual];
  return markedTextArray;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  searchString = [(SBHIconLibraryQuery *)self searchString];
  v5 = [builder appendString:searchString];

  keyboardLanguageHint = [(SBHIconLibraryQuery *)self keyboardLanguageHint];
  v7 = [builder appendString:keyboardLanguageHint];

  markedTextRange = [(SBHIconLibraryQuery *)self markedTextRange];
  v9 = [builder appendObject:markedTextRange];

  markedTextArray = [(SBHIconLibraryQuery *)self markedTextArray];
  v11 = [builder appendObject:markedTextArray];

  v12 = [builder hash];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithMarkedTextSearchString:self->_searchString markedTextRange:self->_markedTextRange markedTextArray:self->_markedTextArray];
  keyboardLanguageHint = [(SBHIconLibraryQuery *)self keyboardLanguageHint];
  [v4 setKeyboardLanguageHint:keyboardLanguageHint];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_queryId withName:@"queryId"];
  v5 = [v3 appendObject:self->_markedTextRange withName:@"markedTextRange"];
  v6 = [v3 appendObject:self->_markedTextArray withName:@"markedTextArray"];
  build = [v3 build];

  return build;
}

@end