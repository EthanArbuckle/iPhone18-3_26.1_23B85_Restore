@interface TSUDateParserLibrary
- (TSUDateParserLibrary)initWithLocale:(id)a3;
- (id)checkoutDateParser;
- (void)prepareDateParserInBackground;
- (void)returnDateParser:(id)a3;
@end

@implementation TSUDateParserLibrary

- (TSUDateParserLibrary)initWithLocale:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSUDateParserLibrary;
  v5 = [(TSUDateParserLibrary *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->mLocale = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAvailableDateParsers = v6->mAvailableDateParsers;
    v6->mAvailableDateParsers = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA928]);
    mParserLibraryConditionVariable = v6->mParserLibraryConditionVariable;
    v6->mParserLibraryConditionVariable = v9;

    v6->mNumberOfUses = 0;
    v6->mParsersCreated = 0;
    v6->mMaxPermittedParsers = 1;
  }

  return v6;
}

- (id)checkoutDateParser
{
  [(NSCondition *)self->mParserLibraryConditionVariable lock];
  if (!self->mMaxPermittedParsers)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParserLibrary checkoutDateParser]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateParserLibrary.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:40 isFatal:0 description:"can't have no permitted parsers"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  mNumberOfUses = self->mNumberOfUses;
  if (mNumberOfUses != -1)
  {
    self->mNumberOfUses = mNumberOfUses + 1;
    mMaxPermittedParsers = self->mMaxPermittedParsers;
    v7 = [MEMORY[0x277CCAC38] processInfo];
    if (mMaxPermittedParsers >= [v7 processorCount])
    {
    }

    else
    {
      mParsersCreated = self->mParsersCreated;
      v9 = self->mMaxPermittedParsers;

      if (mParsersCreated == v9)
      {
        v10 = sqrtf(self->mNumberOfUses) * 0.008;
        if (v10 < 1.0)
        {
          v10 = 1.0;
        }

        v11 = v10;
        if (self->mMaxPermittedParsers < v11)
        {
          self->mMaxPermittedParsers = v11;
        }
      }
    }
  }

  while (![(NSMutableArray *)self->mAvailableDateParsers count])
  {
    if (self->mParsersCreated >= self->mMaxPermittedParsers)
    {
      [(NSCondition *)self->mParserLibraryConditionVariable wait];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [[TSUDateParser alloc] initWithLocale:self->mLocale];
      [(NSMutableArray *)self->mAvailableDateParsers addObject:v13];

      objc_autoreleasePoolPop(v12);
      ++self->mParsersCreated;
    }
  }

  v14 = [(NSMutableArray *)self->mAvailableDateParsers lastObject];
  [(NSMutableArray *)self->mAvailableDateParsers removeLastObject];
  [(NSCondition *)self->mParserLibraryConditionVariable unlock];

  return v14;
}

- (void)returnDateParser:(id)a3
{
  mParserLibraryConditionVariable = self->mParserLibraryConditionVariable;
  v5 = a3;
  [(NSCondition *)mParserLibraryConditionVariable lock];
  [(NSMutableArray *)self->mAvailableDateParsers addObject:v5];

  [(NSCondition *)self->mParserLibraryConditionVariable signal];
  v6 = self->mParserLibraryConditionVariable;

  [(NSCondition *)v6 unlock];
}

- (void)prepareDateParserInBackground
{
  if (!self->mParsersCreated)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_27708BF50;
    block[3] = &unk_27A7023D8;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

@end