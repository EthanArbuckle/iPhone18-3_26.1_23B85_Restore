@interface _UITypeSelectFilterSystem
- (BOOL)_isValidMatchingRangeForString:(id)string;
- (id)_acronymMatching;
- (id)_matchingRangeWithLocation:(int64_t)location length:(int64_t)length;
- (id)_stringWithoutPunctuation:(id)punctuation;
- (id)filterResultForTypeSelectItem:(id)item;
- (int64_t)_lengthForWithoutPunctuationMatch:(id)match;
@end

@implementation _UITypeSelectFilterSystem

- (id)filterResultForTypeSelectItem:(id)item
{
  v51 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  inputString = [(_UITypeSelectFilterSystem *)self inputString];
  self->_userInputLength = [inputString length];

  string = [itemCopy string];
  typeSelectString = self->_typeSelectString;
  self->_typeSelectString = string;

  v8 = [(NSString *)self->_typeSelectString length];
  inputString2 = [(_UITypeSelectFilterSystem *)self inputString];
  if (!inputString2 || self->_userInputLength < 1)
  {

    goto LABEL_7;
  }

  if (v8 < 1)
  {
LABEL_7:
    v24 = 0;
    goto LABEL_30;
  }

  matchingRanges = self->_matchingRanges;
  self->_matchingRanges = 0;

  v11 = objc_opt_new();
  wordsWithoutPunc = self->_wordsWithoutPunc;
  self->_wordsWithoutPunc = v11;

  v13 = objc_opt_new();
  acronym = self->_acronym;
  self->_acronym = v13;

  self->_mask = 129;
  v15 = MEMORY[0x1E696AEC0];
  inputString3 = [(_UITypeSelectFilterSystem *)self inputString];
  v17 = [v15 stringWithFormat:@"%C", objc_msgSend(inputString3, "characterAtIndex:", self->_userInputLength - 1)];
  lastCharacterFromUserInput = self->_lastCharacterFromUserInput;
  self->_lastCharacterFromUserInput = v17;

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v20 = [(NSString *)self->_typeSelectString componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  words = self->_words;
  self->_words = v20;

  v22 = [(_UITypeSelectFilterSystem *)self _stringWithoutPunctuation:self->_typeSelectString];
  if ([(_UITypeSelectFilterSystem *)self _isValidMatchingRangeForString:self->_typeSelectString])
  {
    userInputLength = self->_userInputLength;
  }

  else
  {
    if (![(_UITypeSelectFilterSystem *)self _isValidMatchingRangeForString:v22])
    {
      v44 = v22;
      v45 = whitespaceAndNewlineCharacterSet;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v27 = self->_words;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v47;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v46 + 1) + 8 * i);
            if ([(_UITypeSelectFilterSystem *)self _isValidMatchingRangeForString:v32])
            {
              v33 = [(_UITypeSelectFilterSystem *)self _matchingRangeWithLocation:[(NSString *)self->_typeSelectString rangeOfString:v32 options:self->_mask] length:self->_userInputLength];
              v34 = self->_matchingRanges;
              self->_matchingRanges = v33;
            }

            v35 = [(_UITypeSelectFilterSystem *)self _stringWithoutPunctuation:v32];
            [(NSMutableArray *)self->_wordsWithoutPunc addObject:v35];
            if ([(_UITypeSelectFilterSystem *)self _isValidMatchingRangeForString:v35]&& !self->_matchingRanges)
            {
              v36 = [(_UITypeSelectFilterSystem *)self _matchingRangeWithLocation:[(NSString *)self->_typeSelectString rangeOfString:v32 options:self->_mask] length:[(_UITypeSelectFilterSystem *)self _lengthForWithoutPunctuationMatch:v32]+ self->_userInputLength + 1];
              v37 = self->_matchingRanges;
              self->_matchingRanges = v36;
            }

            if ([v35 length])
            {
              v38 = self->_acronym;
              v39 = [v35 substringToIndex:1];
              [(NSMutableString *)v38 appendString:v39];
            }
          }

          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v29);
      }

      v22 = v44;
      whitespaceAndNewlineCharacterSet = v45;
      goto LABEL_26;
    }

    userInputLength = [(_UITypeSelectFilterSystem *)self _lengthForWithoutPunctuationMatch:self->_typeSelectString]+ self->_userInputLength + 1;
  }

  v25 = [(_UITypeSelectFilterSystem *)self _matchingRangeWithLocation:0 length:userInputLength];
  v26 = self->_matchingRanges;
  self->_matchingRanges = v25;

LABEL_26:
  if (self->_matchingRanges || ([(_UITypeSelectFilterSystem *)self _acronymMatching], v40 = objc_claimAutoreleasedReturnValue(), v41 = self->_matchingRanges, self->_matchingRanges = v40, v41, self->_matchingRanges))
  {
    v42 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, v8}];
    [v42 removeIndexes:self->_matchingRanges];
    v24 = [[_UITypeSelectItemResult alloc] initWithTypeSelectItem:itemCopy matchingRanges:self->_matchingRanges unmatchingRanges:v42];
  }

  else
  {
    v24 = 0;
  }

LABEL_30:

  return v24;
}

- (BOOL)_isValidMatchingRangeForString:(id)string
{
  stringCopy = string;
  inputString = [(_UITypeSelectFilterSystem *)self inputString];
  v6 = [stringCopy rangeOfString:inputString options:self->_mask];
  v8 = v7;

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  return !v9;
}

- (id)_stringWithoutPunctuation:(id)punctuation
{
  v3 = MEMORY[0x1E696AB08];
  punctuationCopy = punctuation;
  letterCharacterSet = [v3 letterCharacterSet];
  invertedSet = [letterCharacterSet invertedSet];
  v7 = [punctuationCopy componentsSeparatedByCharactersInSet:invertedSet];

  v8 = [v7 componentsJoinedByString:&stru_1EFB14550];

  return v8;
}

- (int64_t)_lengthForWithoutPunctuationMatch:(id)match
{
  v4 = [match substringFromIndex:self->_userInputLength];
  v5 = [v4 rangeOfString:self->_lastCharacterFromUserInput options:self->_mask];

  return v5;
}

- (id)_matchingRangeWithLocation:(int64_t)location length:(int64_t)length
{
  matchingRanges = self->_matchingRanges;
  if (matchingRanges)
  {
    [(NSMutableIndexSet *)matchingRanges addIndexesInRange:location, length];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{location, length}];
    v7 = self->_matchingRanges;
    self->_matchingRanges = v6;
  }

  v8 = self->_matchingRanges;

  return v8;
}

- (id)_acronymMatching
{
  if ([(_UITypeSelectFilterSystem *)self _isValidMatchingRangeForString:self->_acronym])
  {
    v3 = objc_opt_new();
    matchingRanges = self->_matchingRanges;
    self->_matchingRanges = v3;

    if ([(NSArray *)self->_words count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [(NSMutableArray *)self->_wordsWithoutPunc objectAtIndexedSubscript:v6];
        v8 = [v7 length];

        if (v8)
        {
          typeSelectString = self->_typeSelectString;
          v10 = [(NSArray *)self->_words objectAtIndexedSubscript:v6];
          v11 = [(NSString *)typeSelectString rangeOfString:v10 options:self->_mask];

          v12 = MEMORY[0x1E696AEC0];
          inputString = [(_UITypeSelectFilterSystem *)self inputString];
          v14 = [v12 stringWithFormat:@"%C", objc_msgSend(inputString, "characterAtIndex:", v5)];

          v15 = [(NSArray *)self->_words objectAtIndexedSubscript:v6];
          v16 = [v15 rangeOfString:v14 options:self->_mask];

          [(NSMutableIndexSet *)self->_matchingRanges addIndexesInRange:v11, v16 + 1];
          ++v5;
        }

        if (v5 == self->_userInputLength)
        {
          break;
        }

        ++v6;
      }

      while (v6 < [(NSArray *)self->_words count]);
    }
  }

  v17 = self->_matchingRanges;

  return v17;
}

@end