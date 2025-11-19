@interface UIScrollView(SUPPT)
- (uint64_t)_testingScrollStep;
- (uint64_t)runScrollTest:()SUPPT withDelta:forIterations:;
- (uint64_t)scrollBy:()SUPPT forIterations:;
@end

@implementation UIScrollView(SUPPT)

- (uint64_t)_testingScrollStep
{
  [a1 contentOffset];
  v5 = v4;
  LODWORD(v6) = __TestingScrollYDelta;
  if (*&__TestingScrollYDelta > 0.0 && ([a1 bounds], v8 = v5 + v7 + *&__TestingScrollYDelta, objc_msgSend(a1, "contentSize"), LODWORD(v6) = __TestingScrollYDelta, v8 > v9) || *&v6 < 0.0 && v5 + *&v6 < 0.0)
  {
    *&v6 = -*&v6;
    __TestingScrollYDelta = LODWORD(v6);
    --__TestingScrollIterationsLeft;
  }

  [a1 setContentOffset:0 animated:{0.0, v5 + *&v6}];
  if (__TestingScrollIterationsLeft)
  {

    return [a1 performSelector:a2 withObject:0 afterDelay:0.0];
  }

  else
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];

    return [v11 endCurrentPPT];
  }
}

- (uint64_t)scrollBy:()SUPPT forIterations:
{
  __TestingScrollYDelta = LODWORD(a4);
  __TestingScrollIterationsLeft = a3;
  return [a1 _testingScrollStep];
}

- (uint64_t)runScrollTest:()SUPPT withDelta:forIterations:
{
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 beginPPTWithName:a4];
  [v9 startedTest:__CurrentTestName];
  *&v10 = a2;

  return [a1 scrollBy:a5 forIterations:v10];
}

@end