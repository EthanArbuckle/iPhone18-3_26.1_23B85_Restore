@interface TIKeyboardInputManagerBase
- (TIKeyboardInputManagerBase)initWithInputMode:(id)mode keyboardState:(id)state;
- (_NSRange)smartSelectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options;
- (id)handleKeyboardInput:(id)input;
- (id)keyboardConfiguration;
- (int64_t)deletionCountForString:(id)string;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
@end

@implementation TIKeyboardInputManagerBase

- (int64_t)deletionCountForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length] && (v5 = objc_msgSend(v4, "length"), v5 >= 1))
  {
    v6 = v5;
    v7 = 0;
    do
    {
      [v4 _rangeOfBackwardDeletionClusterAtIndex:v6 - 1];
      v6 -= v8;
      ++v7;
    }

    while (v6 > 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)smartSelectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    [handlerCopy open];
    v6 = [MEMORY[0x277D6F3D0] setWithCandidates:0];
    [handlerCopy pushCandidateResultSet:v6];
    [handlerCopy close];
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    [handlerCopy open];
    v6 = [MEMORY[0x277D6F328] listWithAutocorrection:0 predictions:0];
    [handlerCopy pushCandidates:v6];
    [handlerCopy close];
  }
}

- (id)handleKeyboardInput:(id)input
{
  v3 = MEMORY[0x277D6F410];
  inputCopy = input;
  v5 = objc_alloc_init(v3);
  string = [inputCopy string];

  if (string)
  {
    string2 = [inputCopy string];

    [v5 setInsertionText:string2];
  }

  else
  {
    isBackspace = [inputCopy isBackspace];

    if (isBackspace)
    {
      [v5 setDeletionCount:1];
    }
  }

  return v5;
}

- (id)keyboardConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277D6F3E0]);
  v3 = objc_alloc_init(MEMORY[0x277D6F3F0]);
  [v2 setInputManagerState:v3];

  return v2;
}

- (TIKeyboardInputManagerBase)initWithInputMode:(id)mode keyboardState:(id)state
{
  modeCopy = mode;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerBase;
  v7 = [(TIKeyboardInputManagerBase *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_inputMode, mode);
  }

  return v8;
}

@end