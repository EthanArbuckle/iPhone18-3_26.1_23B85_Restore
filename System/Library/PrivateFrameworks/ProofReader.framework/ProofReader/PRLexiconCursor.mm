@interface PRLexiconCursor
- (BOOL)hasChildren;
- (BOOL)hasEntries;
- (PRLexiconCursor)initWithLexicon:(id)lexicon;
- (double)prefixProbability;
- (double)terminationProbability;
- (void)_advance:(id)_advance;
- (void)_enumerateCompletions:(unint64_t)completions usingBlock:(id)block;
- (void)advanceWithString:(id)string;
- (void)dealloc;
- (void)enumerateCompletionEntries:(unint64_t)entries usingBlock:(id)block;
- (void)enumerateCompletions:(unint64_t)completions usingBlock:(id)block;
- (void)enumerateEntriesUsingBlock:(id)block;
@end

@implementation PRLexiconCursor

- (PRLexiconCursor)initWithLexicon:(id)lexicon
{
  selfCopy = self;
  if (lexicon)
  {
    v7.receiver = self;
    v7.super_class = PRLexiconCursor;
    selfCopy = [(PRLexiconCursor *)&v7 init];
    if (selfCopy)
    {
      lexiconCopy = lexicon;
      selfCopy->_lexicon = lexiconCopy;
      [(PRLexicon *)lexiconCopy lexicon];
      selfCopy->_cursor = LXLexiconCreateRootCursor();
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  cursor = self->_cursor;
  if (cursor)
  {
    CFRelease(cursor);
  }

  v4.receiver = self;
  v4.super_class = PRLexiconCursor;
  [(PRLexiconCursor *)&v4 dealloc];
}

- (void)_advance:(id)_advance
{
  if (self->_cursor)
  {
    v4 = LXCursorCreateByAdvancing();
    CFRelease(self->_cursor);
    self->_cursor = v4;
  }
}

- (void)advanceWithString:(id)string
{
  if ([string length])
  {

    [(PRLexiconCursor *)self _advance:string];
  }
}

- (BOOL)hasEntries
{
  cursor = self->_cursor;
  if (cursor)
  {
    LOBYTE(cursor) = LXCursorHasEntries() != 0;
  }

  return cursor;
}

- (BOOL)hasChildren
{
  cursor = self->_cursor;
  if (cursor)
  {
    LOBYTE(cursor) = LXCursorHasChildren() != 0;
  }

  return cursor;
}

- (double)prefixProbability
{
  cursor = self->_cursor;
  if (!cursor)
  {
    return -30.0;
  }

  MEMORY[0x1EEE18A98](cursor, a2);
  return result;
}

- (double)terminationProbability
{
  cursor = self->_cursor;
  if (!cursor)
  {
    return -30.0;
  }

  MEMORY[0x1EEE18AA0](cursor, a2);
  return result;
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  if (self->_cursor)
  {
    LXCursorEnumerateEntries();
  }

  _Block_object_dispose(v3, 8);
}

void __46__PRLexiconCursor_enumerateEntriesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = LXEntryCopyString();
  if (v2)
  {
    v3 = v2;
    LXEntryGetTokenID();
    LXEntryGetMetaFlags();
    LXEntryGetProbability();
    (*(*(a1 + 32) + 16))();
    CFRelease(v3);
  }
}

- (void)_enumerateCompletions:(unint64_t)completions usingBlock:(id)block
{
  if (self->_cursor)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2020000000;
    v4[3] = 0;
    LXCursorEnumerateEntriesRecursively();
    _Block_object_dispose(v4, 8);
  }
}

uint64_t __52__PRLexiconCursor__enumerateCompletions_usingBlock___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  LXEntryGetTokenID();
  result = LXEntryGetProbability();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 24);
  if (v7 >= a1[6])
  {
    *(v6 + 24) = v7 + 1;
  }

  else
  {
    result = (*(a1[4] + 16))();
    ++*(*(a1[5] + 8) + 24);
  }

  if (*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a3 = 1;
  }

  return result;
}

- (void)enumerateCompletions:(unint64_t)completions usingBlock:(id)block
{
  if (self->_cursor)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__PRLexiconCursor_enumerateCompletions_usingBlock___block_invoke;
    v4[3] = &unk_1E8405868;
    v4[4] = block;
    [(PRLexiconCursor *)self _enumerateCompletions:completions usingBlock:v4];
  }
}

- (void)enumerateCompletionEntries:(unint64_t)entries usingBlock:(id)block
{
  if (self->_cursor)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2020000000;
    v4[3] = 0;
    LXCursorEnumerateEntriesRecursively();
    _Block_object_dispose(v4, 8);
  }
}

void __57__PRLexiconCursor_enumerateCompletionEntries_usingBlock___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (v5)
  {
    v6 = v5;
    LXEntryGetTokenID();
    LXEntryGetProbability();
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 24);
    if (v8 >= a1[6])
    {
      *(v7 + 24) = v8 + 1;
    }

    else
    {
      (*(a1[4] + 16))();
      ++*(*(a1[5] + 8) + 24);
    }

    if (*(*(a1[5] + 8) + 24) >= a1[6])
    {
      *a3 = 1;
    }

    CFRelease(v6);
  }
}

@end