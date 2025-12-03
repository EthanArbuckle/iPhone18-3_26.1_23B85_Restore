@interface PRSentenceCorrection
- (BOOL)presentAsGrammarError;
- (PRSentenceCorrection)initWithCategory:(int)category range:(_NSRange)range word:(id)word corrections:(id)corrections;
- (_NSRange)range;
- (void)dealloc;
@end

@implementation PRSentenceCorrection

- (PRSentenceCorrection)initWithCategory:(int)category range:(_NSRange)range word:(id)word corrections:(id)corrections
{
  length = range.length;
  location = range.location;
  v14.receiver = self;
  v14.super_class = PRSentenceCorrection;
  v11 = [(PRSentenceCorrection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_category = category;
    v11->_range.location = location;
    v11->_range.length = length;
    v11->_word = [word copy];
    v12->_corrections = [corrections copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRSentenceCorrection;
  [(PRSentenceCorrection *)&v3 dealloc];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)presentAsGrammarError
{
  if (presentAsGrammarError_onceToken != -1)
  {
    [PRSentenceCorrection presentAsGrammarError];
  }

  return (self->_category & 0xFFFFFFFE) == 4;
}

uint64_t __45__PRSentenceCorrection_presentAsGrammarError__block_invoke()
{
  if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }

  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v1 BOOLForKey:@"NSSpellCheckerSentenceCorrectionMissingArticleEnabled"];
  }

  return result;
}

@end