@interface UIScrollView(SUPPT)
- (uint64_t)_testingScrollStep;
- (uint64_t)runScrollTest:()SUPPT withDelta:forIterations:;
- (uint64_t)scrollBy:()SUPPT forIterations:;
@end

@implementation UIScrollView(SUPPT)

- (uint64_t)_testingScrollStep
{
  [self contentOffset];
  v5 = v4;
  LODWORD(v6) = __TestingScrollYDelta;
  if (*&__TestingScrollYDelta > 0.0 && ([self bounds], v8 = v5 + v7 + *&__TestingScrollYDelta, objc_msgSend(self, "contentSize"), LODWORD(v6) = __TestingScrollYDelta, v8 > v9) || *&v6 < 0.0 && v5 + *&v6 < 0.0)
  {
    *&v6 = -*&v6;
    __TestingScrollYDelta = LODWORD(v6);
    --__TestingScrollIterationsLeft;
  }

  [self setContentOffset:0 animated:{0.0, v5 + *&v6}];
  if (__TestingScrollIterationsLeft)
  {

    return [self performSelector:a2 withObject:0 afterDelay:0.0];
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

    return [mEMORY[0x1E69DC668] endCurrentPPT];
  }
}

- (uint64_t)scrollBy:()SUPPT forIterations:
{
  __TestingScrollYDelta = LODWORD(a4);
  __TestingScrollIterationsLeft = a3;
  return [self _testingScrollStep];
}

- (uint64_t)runScrollTest:()SUPPT withDelta:forIterations:
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] beginPPTWithName:a4];
  [mEMORY[0x1E69DC668] startedTest:__CurrentTestName];
  *&v10 = a2;

  return [self scrollBy:a5 forIterations:v10];
}

@end