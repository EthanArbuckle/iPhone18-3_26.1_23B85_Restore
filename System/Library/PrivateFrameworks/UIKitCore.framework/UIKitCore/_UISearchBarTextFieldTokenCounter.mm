@interface _UISearchBarTextFieldTokenCounter
- (NSIndexSet)tokenCharacterIndexes;
- (_NSRange)characterRangeForSubrangeOfTextAfterLastToken:(_NSRange)token;
- (_NSRange)characterRangeOfAllTokens;
- (_NSRange)characterRangeOfTextAfterLastToken;
- (_NSRange)subrangeOfTextAfterLastTokenForCharacterRange:(_NSRange)range;
- (_UISearchBarTextFieldTokenCounter)initWithTextStorage:(id)storage;
- (id)tokenAtCharacterIndex:(unint64_t)index;
- (unint64_t)characterIndexForInsertingTokenAtIndex:(unint64_t)index;
- (unint64_t)characterIndexForSelectingOrRemovingTokenAtIndex:(unint64_t)index;
- (unint64_t)indexOfTokenAtCharacterIndex:(unint64_t)index;
- (void)_addCharacterIndexesOfTokensInRange:(_NSRange)range toIndexSet:(id)set;
- (void)_handleProcessEditing;
@end

@implementation _UISearchBarTextFieldTokenCounter

- (NSIndexSet)tokenCharacterIndexes
{
  if ([(NSTextStorage *)self->_textStorage editedMask])
  {
    v3 = objc_opt_new();
    [(_UISearchBarTextFieldTokenCounter *)self _addCharacterIndexesOfTokensInRange:0 toIndexSet:[(NSTextStorage *)self->_textStorage length], v3];
    v4 = [v3 copy];
  }

  else
  {
    v4 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes copy];
  }

  return v4;
}

- (_NSRange)characterRangeOfTextAfterLastToken
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes count];
  v4 = [(NSTextStorage *)self->_textStorage length];
  v5 = v4;
  if (!v3)
  {
    v6 = 0;
    v7 = v4;
    goto LABEL_9;
  }

  v6 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes lastIndex]+ 1;
  v7 = v5 - v3;
  v8 = v6 + v7;
  if (os_variant_has_internal_diagnostics())
  {
    if (v8 <= v5)
    {
      goto LABEL_9;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Invalid configuration of UISearchTextField with token following text. See rdar://102647358. %@", &buf, 0xCu);
      }
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &characterRangeOfTextAfterLastToken___s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invalid configuration of UISearchTextField with token following text. See rdar://102647358. %@", &buf, 0xCu);
      }
    }
  }

  else if (v8 <= v5)
  {
    goto LABEL_9;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3010000000;
  v22 = "";
  v23 = xmmword_18A678470;
  tokenCharacterIndexes = self->_tokenCharacterIndexes;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71___UISearchBarTextFieldTokenCounter_characterRangeOfTextAfterLastToken__block_invoke;
  v15[3] = &unk_1E7116060;
  v15[4] = &v16;
  v15[5] = &buf;
  [(NSMutableIndexSet *)tokenCharacterIndexes enumerateIndexesWithOptions:2 usingBlock:v15];
  v10 = *(&buf + 1);
  v6 = *(*(&buf + 1) + 32);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
    *(*(&buf + 1) + 32) = 0;
    v7 = v17[3];
    *(v10 + 40) = v7;
  }

  else
  {
    v7 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v16, 8);
LABEL_9:
  v11 = v6;
  v12 = v7;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_UISearchBarTextFieldTokenCounter)initWithTextStorage:(id)storage
{
  storageCopy = storage;
  v19.receiver = self;
  v19.super_class = _UISearchBarTextFieldTokenCounter;
  v6 = [(_UISearchBarTextFieldTokenCounter *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textStorage, storage);
    v8 = objc_opt_new();
    tokenCharacterIndexes = v7->_tokenCharacterIndexes;
    v7->_tokenCharacterIndexes = v8;

    -[_UISearchBarTextFieldTokenCounter _addCharacterIndexesOfTokensInRange:toIndexSet:](v7, "_addCharacterIndexesOfTokensInRange:toIndexSet:", 0, [storageCopy length], v7->_tokenCharacterIndexes);
    objc_initWeak(&location, v7);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = *off_1E70ECAC0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57___UISearchBarTextFieldTokenCounter_initWithTextStorage___block_invoke;
    v16[3] = &unk_1E70F3D28;
    objc_copyWeak(&v17, &location);
    v13 = [defaultCenter addObserverForName:v12 object:storageCopy queue:mainQueue usingBlock:v16];
    textStorageObservation = v7->_textStorageObservation;
    v7->_textStorageObservation = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)_addCharacterIndexesOfTokensInRange:(_NSRange)range toIndexSet:(id)set
{
  length = range.length;
  location = range.location;
  setCopy = set;
  textStorage = self->_textStorage;
  v9 = *off_1E70EC8C8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84___UISearchBarTextFieldTokenCounter__addCharacterIndexesOfTokensInRange_toIndexSet___block_invoke;
  v11[3] = &unk_1E70F3050;
  v12 = setCopy;
  v10 = setCopy;
  [(NSTextStorage *)textStorage enumerateAttribute:v9 inRange:location options:length usingBlock:0, v11];
}

- (void)_handleProcessEditing
{
  if ([(NSTextStorage *)self->_textStorage editedMask])
  {
    [(NSMutableIndexSet *)self->_tokenCharacterIndexes removeAllIndexes];
    v3 = [(NSTextStorage *)self->_textStorage length];
    tokenCharacterIndexes = self->_tokenCharacterIndexes;

    [(_UISearchBarTextFieldTokenCounter *)self _addCharacterIndexesOfTokensInRange:0 toIndexSet:v3, tokenCharacterIndexes];
  }
}

- (_NSRange)characterRangeOfAllTokens
{
  v2 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes count];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (unint64_t)characterIndexForInsertingTokenAtIndex:(unint64_t)index
{
  v5 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes count];
  if (v5 + 1 < index)
  {
    ThrowRangeException(index, v5);
  }

  if (index)
  {
    return [(_UISearchBarTextFieldTokenCounter *)self characterIndexForSelectingOrRemovingTokenAtIndex:index - 1]+ 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)characterIndexForSelectingOrRemovingTokenAtIndex:(unint64_t)index
{
  v5 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes count];
  if (v5 < index)
  {
    ThrowRangeException(index, v5);
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  tokenCharacterIndexes = self->_tokenCharacterIndexes;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86___UISearchBarTextFieldTokenCounter_characterIndexForSelectingOrRemovingTokenAtIndex___block_invoke;
  v9[3] = &unk_1E711EDE8;
  v9[5] = &v10;
  v9[6] = index;
  v9[4] = v14;
  [(NSMutableIndexSet *)tokenCharacterIndexes enumerateIndexesUsingBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
  return v7;
}

- (_NSRange)subrangeOfTextAfterLastTokenForCharacterRange:(_NSRange)range
{
  length = range.length;
  v4 = range.location - [(NSMutableIndexSet *)self->_tokenCharacterIndexes count];
  v5 = length;
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)characterRangeForSubrangeOfTextAfterLastToken:(_NSRange)token
{
  length = token.length;
  location = token.location;
  v6 = [(NSMutableIndexSet *)self->_tokenCharacterIndexes count];
  v7 = [(NSTextStorage *)self->_textStorage length];
  if (v6)
  {
    location += [(_UISearchBarTextFieldTokenCounter *)self characterIndexForInsertingTokenAtIndex:v6];
  }

  if (location >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = location;
  }

  if (length >= v7 - v8)
  {
    v9 = v7 - v8;
  }

  else
  {
    v9 = length;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (id)tokenAtCharacterIndex:(unint64_t)index
{
  v3 = [(NSTextStorage *)self->_textStorage attribute:*off_1E70EC8C8 atIndex:index effectiveRange:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    token = [v3 token];
  }

  else
  {
    token = 0;
  }

  return token;
}

- (unint64_t)indexOfTokenAtCharacterIndex:(unint64_t)index
{
  if (([(NSMutableIndexSet *)self->_tokenCharacterIndexes containsIndex:?]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarTextFieldTokenCounter.m" lineNumber:194 description:{@"Asked for token at character index %lu which is not in set %@", index, self->_tokenCharacterIndexes}];

    if (index)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!index)
  {
    return 0;
  }

LABEL_3:
  tokenCharacterIndexes = self->_tokenCharacterIndexes;

  return [(NSMutableIndexSet *)tokenCharacterIndexes countOfIndexesInRange:0, index - 1];
}

@end