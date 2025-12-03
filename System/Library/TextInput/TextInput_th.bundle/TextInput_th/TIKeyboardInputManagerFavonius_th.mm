@interface TIKeyboardInputManagerFavonius_th
- (id)keyboardBehaviors;
- (id)trimmedInputStem;
- (id)trimmedInputStemForStem:(id)stem;
- (void)addInput:(id)input withContext:(id)context;
- (void)candidateRejected:(id)rejected;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode;
- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode;
- (void)setWordBoundary;
@end

@implementation TIKeyboardInputManagerFavonius_th

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (void)loadDictionaries
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerFavonius_th *)&v4 loadDictionaries];
  v3 = *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (v3)
  {
    *(*(v3 + 264) + 64) = 1;
  }
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7050]);

  return v2;
}

- (id)trimmedInputStem
{
  inputStem = [(TIKeyboardInputManagerFavonius_th *)self inputStem];
  v4 = [(TIKeyboardInputManagerFavonius_th *)self trimmedInputStemForStem:inputStem];

  return v4;
}

- (id)trimmedInputStemForStem:(id)stem
{
  stemCopy = stem;
  v5 = stemCopy;
  if (*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    _lastLongCharacter = [stemCopy _lastLongCharacter];
    if (_lastLongCharacter)
    {
      v7 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:_lastLongCharacter];
    }

    else
    {
      v7 = &stru_2A252D530;
    }

    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerFavonius_th;
    v9 = [(TIKeyboardInputManagerFavonius_th *)&v16 countOfWordsIninputStem:v5];
    v15.receiver = self;
    v15.super_class = TIKeyboardInputManagerFavonius_th;
    maxPriorWordTokensAfterTrimming = [(TIKeyboardInputManagerFavonius_th *)&v15 maxPriorWordTokensAfterTrimming];
    if (v9)
    {
      v11 = ([v5 length] / v9) > 2.5;
    }

    else
    {
      v11 = 0;
    }

    if (([(TIKeyboardInputManagerFavonius_th *)self stringEndsWord:v7]& 1) != 0)
    {
      v8 = &stru_2A252D530;
    }

    else
    {
      if ([v5 length] > 0xC || v9 > maxPriorWordTokensAfterTrimming + 1 && v11)
      {
        v14.receiver = self;
        v14.super_class = TIKeyboardInputManagerFavonius_th;
        trimmedInputStem = [(TIKeyboardInputManagerFavonius_th *)&v14 trimmedInputStem];
      }

      else
      {
        trimmedInputStem = v5;
      }

      v8 = trimmedInputStem;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setWordBoundary
{
  v2 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.isa + v2))
  {
    [(TIKeyboardInputManagerFavonius_th *)self dropInput];
    v4 = *(&self->super.super.super.isa + v2);

    MEMORY[0x2A1C69AA8](v4, 0);
  }
}

- (void)candidateRejected:(id)rejected
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerBase *)&v4 candidateRejected:rejected];
  [(TIKeyboardInputManagerFavonius_th *)self setWordBoundary];
}

- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerBase *)&v7 registerLearning:learning fullCandidate:candidate keyboardState:state mode:mode];
  [(TIKeyboardInputManagerFavonius_th *)self setWordBoundary];
}

- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerBase *)&v8 registerLearningForCompletion:completion fullCompletion:fullCompletion context:context prefix:prefix mode:mode];
  [(TIKeyboardInputManagerFavonius_th *)self setWordBoundary];
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  inputStem = [(TIKeyboardInputManagerFavonius_th *)self inputStem];
  string = [inputCopy string];
  v10 = [inputStem stringByAppendingString:string];

  v11 = [(TIKeyboardInputManagerFavonius_th *)self trimmedInputStemForStem:v10];
  lastAutocorrectionList = [(TIKeyboardInputManagerFavonius_th *)self lastAutocorrectionList];
  corrections = [lastAutocorrectionList corrections];
  autocorrection = [corrections autocorrection];

  input = [autocorrection input];
  candidate = [autocorrection candidate];
  v17 = [input isEqualToString:candidate];

  v18 = [v11 length];
  if (v18 < [inputStem length] && !(v17 & 1 | ((objc_msgSend(inputStem, "hasSuffix:", v11) & 1) == 0)))
  {
    [(TIKeyboardInputManagerFavonius_th *)self textAccepted:autocorrection fromPredictiveInputBar:0 withInput:0];
    [contextCopy deleteTextBackward:inputStem];
    candidate2 = [autocorrection candidate];
    [contextCopy insertText:candidate2];

    previousTouchEvent = [(TIKeyboardInputManagerFavonius_th *)self previousTouchEvent];
    [(TIKeyboardInputManagerFavonius_th *)self addTouch:previousTouchEvent shouldHitTest:1];
  }

  v21.receiver = self;
  v21.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerFavonius_th *)&v21 addInput:inputCopy withContext:contextCopy];
}

@end