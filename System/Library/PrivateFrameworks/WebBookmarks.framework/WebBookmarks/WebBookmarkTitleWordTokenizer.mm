@interface WebBookmarkTitleWordTokenizer
- (WebBookmarkTitleWordTokenizer)init;
- (_NSRange)advanceToNextToken;
- (void)setString:(id)string;
@end

@implementation WebBookmarkTitleWordTokenizer

- (WebBookmarkTitleWordTokenizer)init
{
  v9.receiver = self;
  v9.super_class = WebBookmarkTitleWordTokenizer;
  v2 = [(WebBookmarkTitleWordTokenizer *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getTIWordTokenizerClass_softClass;
    v14 = getTIWordTokenizerClass_softClass;
    if (!getTIWordTokenizerClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getTIWordTokenizerClass_block_invoke;
      v10[3] = &unk_279E76638;
      v10[4] = &v11;
      __getTIWordTokenizerClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = objc_alloc_init(v3);
    wordTokenizer = v2->_wordTokenizer;
    v2->_wordTokenizer = v5;

    v7 = v2;
  }

  return v2;
}

- (_NSRange)advanceToNextToken
{
  length = 0;
  if (self->_rangeOfNextToken.location >= self->_stringLength)
  {
    stringLength = self->_stringLength;
  }

  else
  {
    stringLength = self->_rangeOfNextToken.location;
  }

  startOfUnclassifiedRangeBeforeNextToken = self->_startOfUnclassifiedRangeBeforeNextToken;
  while (startOfUnclassifiedRangeBeforeNextToken < stringLength)
  {
    v6 = [(NSString *)self->_string characterAtIndex:startOfUnclassifiedRangeBeforeNextToken];
    if ((v6 & 0xFC00) == 0xD800 && self->_startOfUnclassifiedRangeBeforeNextToken + 1 < stringLength)
    {
      v7 = [(NSString *)self->_string characterAtIndex:?];
      if ((v7 & 0xFC00) == 0xDC00)
      {
        v6 = (v7 + (v6 << 10) - 56613888);
      }

      else
      {
        v6 = v6;
      }

      if ((v7 & 0xFC00) == 0xDC00)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }

    if (cjkIdeographCharacterSet_once != -1)
    {
      [WebBookmarkTitleWordTokenizer advanceToNextToken];
    }

    v9 = [cjkIdeographCharacterSet_cjkIdeographCharacterSet longCharacterIsMember:v6];
    v10 = self->_startOfUnclassifiedRangeBeforeNextToken;
    if (v9)
    {
      length = v8;
    }

    startOfUnclassifiedRangeBeforeNextToken = v10 + v8;
    self->_startOfUnclassifiedRangeBeforeNextToken = v10 + v8;
    if (v9 && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      startOfUnclassifiedRangeBeforeNextToken = v10;
      goto LABEL_25;
    }
  }

  if (startOfUnclassifiedRangeBeforeNextToken == self->_rangeOfNextToken.location)
  {
    length = self->_rangeOfNextToken.length;
    self->_rangeOfNextToken.location = [(TIWordTokenizer *)self->_wordTokenizer advanceToNextToken];
    self->_rangeOfNextToken.length = v11;
    self->_startOfUnclassifiedRangeBeforeNextToken = length + startOfUnclassifiedRangeBeforeNextToken;
  }

  else
  {
    startOfUnclassifiedRangeBeforeNextToken = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_25:
  v12 = startOfUnclassifiedRangeBeforeNextToken;
  v13 = length;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)setString:(id)string
{
  stringCopy = string;
  v9 = stringCopy;
  if (self->_string == stringCopy)
  {
    stringLength = self->_stringLength;
  }

  else
  {
    v5 = [(NSString *)stringCopy copy];
    string = self->_string;
    self->_string = v5;

    stringLength = [(NSString *)self->_string length];
    self->_stringLength = stringLength;
  }

  [(TIWordTokenizer *)self->_wordTokenizer setString:v9 withSearchRange:0, stringLength];
  self->_rangeOfNextToken.location = [(TIWordTokenizer *)self->_wordTokenizer advanceToNextToken];
  self->_rangeOfNextToken.length = v8;
  self->_startOfUnclassifiedRangeBeforeNextToken = 0;
}

@end