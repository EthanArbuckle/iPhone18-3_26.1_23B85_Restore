@interface TIKeyboardInputManagerFavonius_th
- (id)keyboardBehaviors;
- (id)trimmedInputStem;
- (id)trimmedInputStemForStem:(id)a3;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)candidateRejected:(id)a3;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6;
- (void)registerLearningForCompletion:(id)a3 fullCompletion:(id)a4 context:(id)a5 prefix:(id)a6 mode:(id)a7;
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
  v3 = [(TIKeyboardInputManagerFavonius_th *)self inputStem];
  v4 = [(TIKeyboardInputManagerFavonius_th *)self trimmedInputStemForStem:v3];

  return v4;
}

- (id)trimmedInputStemForStem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    v6 = [v4 _lastLongCharacter];
    if (v6)
    {
      v7 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:v6];
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
    v10 = [(TIKeyboardInputManagerFavonius_th *)&v15 maxPriorWordTokensAfterTrimming];
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
      if ([v5 length] > 0xC || v9 > v10 + 1 && v11)
      {
        v14.receiver = self;
        v14.super_class = TIKeyboardInputManagerFavonius_th;
        v12 = [(TIKeyboardInputManagerFavonius_th *)&v14 trimmedInputStem];
      }

      else
      {
        v12 = v5;
      }

      v8 = v12;
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

- (void)candidateRejected:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerBase *)&v4 candidateRejected:a3];
  [(TIKeyboardInputManagerFavonius_th *)self setWordBoundary];
}

- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerBase *)&v7 registerLearning:a3 fullCandidate:a4 keyboardState:a5 mode:a6];
  [(TIKeyboardInputManagerFavonius_th *)self setWordBoundary];
}

- (void)registerLearningForCompletion:(id)a3 fullCompletion:(id)a4 context:(id)a5 prefix:(id)a6 mode:(id)a7
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerBase *)&v8 registerLearningForCompletion:a3 fullCompletion:a4 context:a5 prefix:a6 mode:a7];
  [(TIKeyboardInputManagerFavonius_th *)self setWordBoundary];
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIKeyboardInputManagerFavonius_th *)self inputStem];
  v9 = [v6 string];
  v10 = [v8 stringByAppendingString:v9];

  v11 = [(TIKeyboardInputManagerFavonius_th *)self trimmedInputStemForStem:v10];
  v12 = [(TIKeyboardInputManagerFavonius_th *)self lastAutocorrectionList];
  v13 = [v12 corrections];
  v14 = [v13 autocorrection];

  v15 = [v14 input];
  v16 = [v14 candidate];
  v17 = [v15 isEqualToString:v16];

  v18 = [v11 length];
  if (v18 < [v8 length] && !(v17 & 1 | ((objc_msgSend(v8, "hasSuffix:", v11) & 1) == 0)))
  {
    [(TIKeyboardInputManagerFavonius_th *)self textAccepted:v14 fromPredictiveInputBar:0 withInput:0];
    [v7 deleteTextBackward:v8];
    v19 = [v14 candidate];
    [v7 insertText:v19];

    v20 = [(TIKeyboardInputManagerFavonius_th *)self previousTouchEvent];
    [(TIKeyboardInputManagerFavonius_th *)self addTouch:v20 shouldHitTest:1];
  }

  v21.receiver = self;
  v21.super_class = TIKeyboardInputManagerFavonius_th;
  [(TIKeyboardInputManagerFavonius_th *)&v21 addInput:v6 withContext:v7];
}

@end