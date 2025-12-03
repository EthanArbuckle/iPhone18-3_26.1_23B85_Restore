@interface PSSearchOperation
+ (__CFStringTokenizer)_wordBoundaryTokenizer;
- (BOOL)_searchEntries:(id)entries forQuery:(id)query;
- (BOOL)_systemLanguageHasContinuousScript;
- (PSSearchOperation)initWithSearchQuery:(id)query rootEntries:(id)entries;
- (PSSearchOperationDelegate)delegate;
- (id)_filterEntriesMatchingQuery:(id)query forQuery:(id)forQuery;
- (id)debugDescription;
- (id)description;
- (void)_didCancel;
- (void)dealloc;
- (void)main;
@end

@implementation PSSearchOperation

- (PSSearchOperation)initWithSearchQuery:(id)query rootEntries:(id)entries
{
  queryCopy = query;
  entriesCopy = entries;
  v14.receiver = self;
  v14.super_class = PSSearchOperation;
  v8 = [(PSSearchOperation *)&v14 init];
  if (v8)
  {
    v9 = [queryCopy copy];
    query = v8->_query;
    v8->_query = v9;

    v11 = [entriesCopy copy];
    rootEntries = v8->_rootEntries;
    v8->_rootEntries = v11;
  }

  return v8;
}

- (void)dealloc
{
  [(PSSearchOperation *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = PSSearchOperation;
  [(PSSearchOperation *)&v3 dealloc];
}

- (void)_didCancel
{
  delegate = [(PSSearchOperation *)self delegate];
  [delegate searchOperationDidCancel:self];

  [(PSSearchOperation *)self setDelegate:0];
}

- (void)main
{
  if ([(PSSearchOperation *)self isCancelled])
  {
    goto LABEL_7;
  }

  v3 = objc_alloc_init(PSSearchResults);
  currentResults = self->_currentResults;
  self->_currentResults = v3;

  delegate = [(PSSearchOperation *)self delegate];
  [delegate searchOperationDidBegin:self];

  if (![(NSString *)self->_query length])
  {
    goto LABEL_6;
  }

  if (![(PSSearchOperation *)self _searchEntries:self->_rootEntries forQuery:self->_query]|| ([(PSSearchOperation *)self isNewQuery], ([(PSSearchOperation *)self isCancelled]& 1) != 0))
  {
LABEL_7:

    [(PSSearchOperation *)self _didCancel];
    return;
  }

  delegate2 = [(PSSearchOperation *)self delegate];
  [delegate2 searchOperation:self configureSearchResults:self->_currentResults];

  [(PSSearchOperation *)self isNewQuery];
LABEL_6:
  if (([(PSSearchOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_7;
  }

  delegate3 = [(PSSearchOperation *)self delegate];
  currentResults = [(PSSearchOperation *)self currentResults];
  [delegate3 searchOperationDidFinish:self withResults:currentResults];
}

- (BOOL)_searchEntries:(id)entries forQuery:(id)query
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queryCopy = query;
  if (([(PSSearchOperation *)self isCancelled]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    delegate = [(PSSearchOperation *)self delegate];
    if (delegate)
    {
      delegate2 = [(PSSearchOperation *)self delegate];
      v11 = [delegate2 searchOperation:self filteredEntriesForEntries:entriesCopy];
    }

    else
    {
      v11 = entriesCopy;
    }

    v12 = [(PSSearchOperation *)self _filterEntriesMatchingQuery:v11 forQuery:queryCopy];
    currentResults = self->_currentResults;
    allObjects = [v12 allObjects];
    [(PSSearchResults *)currentResults addEntries:allObjects];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          childEntries = [*(*(&v22 + 1) + 8 * i) childEntries];
          if ([childEntries count] && !-[PSSearchOperation _searchEntries:forQuery:](self, "_searchEntries:forQuery:", childEntries, queryCopy))
          {

            v8 = 0;
            goto LABEL_17;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_17:
  }

  return v8;
}

+ (__CFStringTokenizer)_wordBoundaryTokenizer
{
  if (_wordBoundaryTokenizer_onceToken != -1)
  {
    +[PSSearchOperation _wordBoundaryTokenizer];
  }

  return _wordBoundaryTokenizer_tokenizer;
}

void __43__PSSearchOperation__wordBoundaryTokenizer__block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v3.location = 0;
  v3.length = 0;
  _wordBoundaryTokenizer_tokenizer = CFStringTokenizerCreate(v0, 0, v3, 4uLL, v1);
}

- (BOOL)_systemLanguageHasContinuousScript
{
  if (_systemLanguageHasContinuousScript_onceToken != -1)
  {
    [PSSearchOperation _systemLanguageHasContinuousScript];
  }

  return _systemLanguageHasContinuousScript_systemLanguageIsContinuous;
}

void __55__PSSearchOperation__systemLanguageHasContinuousScript__block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x1E695D9B0]];
  v2 = [v1 lowercaseString];

  _systemLanguageHasContinuousScript_systemLanguageIsContinuous = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [&unk_1EFE65EE0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(&unk_1EFE65EE0);
        }

        if ([v2 isEqualToString:*(*(&v7 + 1) + 8 * v6)])
        {
          _systemLanguageHasContinuousScript_systemLanguageIsContinuous = 1;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [&unk_1EFE65EE0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_filterEntriesMatchingQuery:(id)query forQuery:(id)forQuery
{
  v26[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  forQueryCopy = forQuery;
  v6 = +[PSSearchOperation _wordBoundaryTokenizer];
  v28.length = [(__CFString *)forQueryCopy length];
  v28.location = 0;
  CFStringTokenizerSetString(v6, forQueryCopy, v28);
  array = [MEMORY[0x1E695DF70] array];
  while (CFStringTokenizerAdvanceToNextToken(v6))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
    if (CurrentTokenRange.location != -1 && CurrentTokenRange.length)
    {
      v9 = [(__CFString *)forQueryCopy substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v11 = [whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(v9, "characterAtIndex:", 0)}];

      if ((v11 & 1) == 0)
      {
        if ([(PSSearchOperation *)self _systemLanguageHasContinuousScript])
        {
          v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name CONTAINS[cd] %@", v9];
          v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY keywords CONTAINS[cd] %@", v9];
        }

        else
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = [MEMORY[0x1E696AE70] escapedPatternForString:v9];
          v16 = [v14 stringWithFormat:@".*\\b%@.*", v15];

          v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name MATCHES[cd] %@", v16];
          v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY keywords MATCHES[cd] %@", v16];
        }

        v17 = MEMORY[0x1E696AB28];
        v26[0] = v12;
        v26[1] = v13;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
        v19 = [v17 orPredicateWithSubpredicates:v18];

        [array addObject:v19];
      }
    }
  }

  if ([array count])
  {
    v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
    v21 = queryCopy;
    v22 = [queryCopy filteredSetUsingPredicate:v20];
  }

  else
  {
    v22 = [MEMORY[0x1E695DFD8] set];
    v21 = queryCopy;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PSSearchOperation;
  v4 = [(PSSearchOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ query: %@, new query: %d", v4, self->_query, self->_newQuery];

  return v5;
}

- (id)debugDescription
{
  v3 = [(PSSearchOperation *)self description];
  v4 = [v3 stringByAppendingFormat:@", current results: %@", self->_currentResults];

  return v4;
}

- (PSSearchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end