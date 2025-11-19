@interface PRLexiconCorrectionCursor
- (PRLexiconCorrectionCursor)initWithCursor:(_LXCursor *)a3 replacementsCount:(unint64_t)a4 insertionsCount:(unint64_t)a5 deletionsCount:(unint64_t)a6 transpositionsCount:(unint64_t)a7 advancementLength:(unint64_t)a8;
- (unint64_t)errorType;
- (void)dealloc;
@end

@implementation PRLexiconCorrectionCursor

- (PRLexiconCorrectionCursor)initWithCursor:(_LXCursor *)a3 replacementsCount:(unint64_t)a4 insertionsCount:(unint64_t)a5 deletionsCount:(unint64_t)a6 transpositionsCount:(unint64_t)a7 advancementLength:(unint64_t)a8
{
  v16.receiver = self;
  v16.super_class = PRLexiconCorrectionCursor;
  v14 = [(PRLexiconCorrectionCursor *)&v16 init];
  if (v14)
  {
    v14->_cursor = CFRetain(a3);
    v14->_replacementsCount = a4;
    v14->_insertionsCount = a5;
    v14->_deletionsCount = a6;
    v14->_transpositionsCount = a7;
    v14->_advancementLength = a8;
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