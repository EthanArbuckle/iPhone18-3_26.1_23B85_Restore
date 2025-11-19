@interface TIKeyboardInputManagerBase
- (TIKeyboardInputManagerBase)initWithInputMode:(id)a3 keyboardState:(id)a4;
- (_NSRange)smartSelectionRangeForTextInDocument:(id)a3 inRange:(_NSRange)a4 language:(id)a5 tokenizedRanges:(id)a6 options:(unint64_t)a7;
- (id)handleKeyboardInput:(id)a3;
- (id)keyboardConfiguration;
- (int64_t)deletionCountForString:(id)a3;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5;
@end

@implementation TIKeyboardInputManagerBase

- (int64_t)deletionCountForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] && (v5 = objc_msgSend(v4, "length"), v5 >= 1))
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

- (_NSRange)smartSelectionRangeForTextInDocument:(id)a3 inRange:(_NSRange)a4 language:(id)a5 tokenizedRanges:(id)a6 options:(unint64_t)a7
{
  length = a4.length;
  location = a4.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5
{
  if (a5)
  {
    v5 = a5;
    [v5 open];
    v6 = [MEMORY[0x277D6F3D0] setWithCandidates:0];
    [v5 pushCandidateResultSet:v6];
    [v5 close];
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5
{
  if (a5)
  {
    v5 = a5;
    [v5 open];
    v6 = [MEMORY[0x277D6F328] listWithAutocorrection:0 predictions:0];
    [v5 pushCandidates:v6];
    [v5 close];
  }
}

- (id)handleKeyboardInput:(id)a3
{
  v3 = MEMORY[0x277D6F410];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 string];

  if (v6)
  {
    v7 = [v4 string];

    [v5 setInsertionText:v7];
  }

  else
  {
    v8 = [v4 isBackspace];

    if (v8)
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

- (TIKeyboardInputManagerBase)initWithInputMode:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerBase;
  v7 = [(TIKeyboardInputManagerBase *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_inputMode, a3);
  }

  return v8;
}

@end