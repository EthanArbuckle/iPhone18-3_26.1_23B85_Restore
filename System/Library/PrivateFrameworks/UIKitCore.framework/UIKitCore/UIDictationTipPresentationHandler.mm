@interface UIDictationTipPresentationHandler
- (BOOL)dictationCommandTipsEnabled;
- (BOOL)dictationTipShownOverLimit:(int64_t)limit;
- (BOOL)tipShownLastWeek;
- (UIDictationTipPresentationHandler)init;
- (int64_t)dictationTipDisplayCount:(int64_t)count;
- (void)resetHandler;
@end

@implementation UIDictationTipPresentationHandler

- (UIDictationTipPresentationHandler)init
{
  v5.receiver = self;
  v5.super_class = UIDictationTipPresentationHandler;
  v2 = [(UIDictationTipPresentationHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_isShowingTip = 0;
    [(UIDictationTipPresentationHandler *)v2 resetHandler];
  }

  return v3;
}

- (void)resetHandler
{
  [(UIDictationTipPresentationHandler *)self setTipPresentedInCurrentDictationSession:0];

  [(UIDictationTipPresentationHandler *)self resetDictationTipSignal];
}

- (BOOL)dictationTipShownOverLimit:(int64_t)limit
{
  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v6 = [mEMORY[0x1E69D9680] valueForPreferenceKey:*MEMORY[0x1E69D9738]];

  integerValue = [v6 integerValue];
  LOBYTE(limit) = integerValue <= [(UIDictationTipPresentationHandler *)self dictationTipDisplayCount:limit];

  return limit;
}

- (BOOL)tipShownLastWeek
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:@"DictationOneTipPerDayEnabled"];

  if (v3)
  {
    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v5 = [mEMORY[0x1E69D9680] valueForPreferenceKey:*MEMORY[0x1E69D9730]];

    LOBYTE(v3) = (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E695DF00] date], v6 = objc_opt_class();
  }

  return v3;
}

- (BOOL)dictationCommandTipsEnabled
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:@"DictationCommandTipsEnabled"];

  return v3;
}

- (int64_t)dictationTipDisplayCount:(int64_t)count
{
  v3 = [UIDictationTipController dictationTipPreferenceKey:count];
  if (v3)
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 valueForPreferenceKey:v3];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end