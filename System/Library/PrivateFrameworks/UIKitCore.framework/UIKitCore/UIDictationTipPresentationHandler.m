@interface UIDictationTipPresentationHandler
- (BOOL)dictationCommandTipsEnabled;
- (BOOL)dictationTipShownOverLimit:(int64_t)a3;
- (BOOL)tipShownLastWeek;
- (UIDictationTipPresentationHandler)init;
- (int64_t)dictationTipDisplayCount:(int64_t)a3;
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

- (BOOL)dictationTipShownOverLimit:(int64_t)a3
{
  v5 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v6 = [v5 valueForPreferenceKey:*MEMORY[0x1E69D9738]];

  v7 = [v6 integerValue];
  LOBYTE(a3) = v7 <= [(UIDictationTipPresentationHandler *)self dictationTipDisplayCount:a3];

  return a3;
}

- (BOOL)tipShownLastWeek
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:@"DictationOneTipPerDayEnabled"];

  if (v3)
  {
    v4 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v5 = [v4 valueForPreferenceKey:*MEMORY[0x1E69D9730]];

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

- (int64_t)dictationTipDisplayCount:(int64_t)a3
{
  v3 = [UIDictationTipController dictationTipPreferenceKey:a3];
  if (v3)
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 valueForPreferenceKey:v3];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end