@interface TITextChecker
+ (id)_UITextCheckerWithAsynchronousLoading:(BOOL)loading;
- (BOOL)doneLoading;
@end

@implementation TITextChecker

- (BOOL)doneLoading
{
  checker = [(TITextChecker *)self checker];
  if (checker)
  {
    checker2 = [(TITextChecker *)self checker];
    _doneLoading = [checker2 _doneLoading];
  }

  else
  {
    _doneLoading = 1;
  }

  return _doneLoading;
}

+ (id)_UITextCheckerWithAsynchronousLoading:(BOOL)loading
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TITextChecker__UITextCheckerWithAsynchronousLoading___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  loadingCopy = loading;
  if (_UITextCheckerWithAsynchronousLoading__onceToken != -1)
  {
    dispatch_once(&_UITextCheckerWithAsynchronousLoading__onceToken, block);
  }

  v3 = _UITextCheckerWithAsynchronousLoading__checker;

  return v3;
}

void __55__TITextChecker__UITextCheckerWithAsynchronousLoading___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getUITextCheckerClass_softClass;
  v10 = getUITextCheckerClass_softClass;
  if (!getUITextCheckerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getUITextCheckerClass_block_invoke;
    v6[3] = &unk_278733760;
    v6[4] = &v7;
    __getUITextCheckerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (v2)
  {
    v4 = [[v2 alloc] _initWithAsynchronousLoading:*(a1 + 32)];
    v5 = _UITextCheckerWithAsynchronousLoading__checker;
    _UITextCheckerWithAsynchronousLoading__checker = v4;
  }
}

@end