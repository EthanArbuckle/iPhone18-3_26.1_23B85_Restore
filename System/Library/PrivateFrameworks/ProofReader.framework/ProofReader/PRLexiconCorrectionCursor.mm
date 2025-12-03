@interface PRLexiconCorrectionCursor
- (PRLexiconCorrectionCursor)initWithCursor:(_LXCursor *)cursor replacementsCount:(unint64_t)count insertionsCount:(unint64_t)insertionsCount deletionsCount:(unint64_t)deletionsCount transpositionsCount:(unint64_t)transpositionsCount advancementLength:(unint64_t)length;
- (unint64_t)errorType;
- (void)dealloc;
@end

@implementation PRLexiconCorrectionCursor

- (PRLexiconCorrectionCursor)initWithCursor:(_LXCursor *)cursor replacementsCount:(unint64_t)count insertionsCount:(unint64_t)insertionsCount deletionsCount:(unint64_t)deletionsCount transpositionsCount:(unint64_t)transpositionsCount advancementLength:(unint64_t)length
{
  v16.receiver = self;
  v16.super_class = PRLexiconCorrectionCursor;
  v14 = [(PRLexiconCorrectionCursor *)&v16 init];
  if (v14)
  {
    v14->_cursor = CFRetain(cursor);
    v14->_replacementsCount = count;
    v14->_insertionsCount = insertionsCount;
    v14->_deletionsCount = deletionsCount;
    v14->_transpositionsCount = transpositionsCount;
    v14->_advancementLength = length;
  }

  return v14;
}

- (void)dealloc
{
  CFRelease(self->_cursor);
  v3.receiver = self;
  v3.super_class = PRLexiconCorrectionCursor;
  [(PRLexiconCorrectionCursor *)&v3 dealloc];
}

- (unint64_t)errorType
{
  if ([(PRLexiconCorrectionCursor *)self totalEdits]> 1)
  {
    return 13;
  }

  if (self->_replacementsCount)
  {
    return 8;
  }

  if (self->_insertionsCount)
  {
    return 11;
  }

  if (self->_deletionsCount)
  {
    return 10;
  }

  if (self->_transpositionsCount)
  {
    return 9;
  }

  return 3;
}

@end