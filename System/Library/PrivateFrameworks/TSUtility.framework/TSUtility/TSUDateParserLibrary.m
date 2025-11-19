@interface TSUDateParserLibrary
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedDateParserLibrary;
- (TSUDateParserLibrary)init;
- (id)checkoutDateParser;
- (void)returnDateParser:(id)a3;
@end

@implementation TSUDateParserLibrary

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSUDateParserLibrary;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedDateParserLibrary
{
  result = sharedDateParserLibrary_sSingletonInstance;
  if (!sharedDateParserLibrary_sSingletonInstance)
  {
    objc_sync_enter(a1);
    if (!sharedDateParserLibrary_sSingletonInstance)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      sharedDateParserLibrary_sSingletonInstance = v4;
      if (!v4)
      {
        v5 = +[TSUAssertionHandler currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUDateParserLibrary sharedDateParserLibrary]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParserLibrary.m"), 19, @"Couldn't create singleton instance of %@", a1}];
      }
    }

    objc_sync_exit(a1);
    return sharedDateParserLibrary_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUDateParserLibrary allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParserLibrary.m"), 19, @"Don't alloc a singleton"}];
  return 0;
}

- (TSUDateParserLibrary)init
{
  v4.receiver = self;
  v4.super_class = TSUDateParserLibrary;
  v2 = [(TSUDateParserLibrary *)&v4 init];
  if (v2)
  {
    v2->mAvailableDateParsers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->mParserLibraryConditionVariable = objc_alloc_init(MEMORY[0x277CCA928]);
    v2->mNumberOfUses = 0;
    v2->mParsersCreated = 0;
    v2->mMaxPermittedParsers = 1;
  }

  return v2;
}

- (id)checkoutDateParser
{
  [(NSCondition *)self->mParserLibraryConditionVariable lock];
  if (!self->mMaxPermittedParsers)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParserLibrary checkoutDateParser]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParserLibrary.m"), 39, @"can't have no permitted parsers"}];
  }

  mNumberOfUses = self->mNumberOfUses;
  if (mNumberOfUses != -1)
  {
    self->mNumberOfUses = mNumberOfUses + 1;
    mMaxPermittedParsers = self->mMaxPermittedParsers;
    if (mMaxPermittedParsers < [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")])
    {
      mParsersCreated = self->mParsersCreated;
      if (mParsersCreated == self->mMaxPermittedParsers)
      {
        v8 = sqrtf(self->mNumberOfUses) * 0.008;
        v9 = v8;
        v10 = v9;
        if (v8 <= 1.0)
        {
          v10 = 1;
        }

        if (v10 > mParsersCreated)
        {
          self->mMaxPermittedParsers = v10;
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
      v11 = [[TSUDateParser alloc] initWithLocale:0];
      [(NSMutableArray *)self->mAvailableDateParsers addObject:v11];

      ++self->mParsersCreated;
    }
  }

  v12 = [(NSMutableArray *)self->mAvailableDateParsers lastObject];
  [(NSMutableArray *)self->mAvailableDateParsers removeLastObject];
  [(NSCondition *)self->mParserLibraryConditionVariable unlock];
  return v12;
}

- (void)returnDateParser:(id)a3
{
  [(NSCondition *)self->mParserLibraryConditionVariable lock];
  [(NSMutableArray *)self->mAvailableDateParsers addObject:a3];
  [(NSCondition *)self->mParserLibraryConditionVariable signal];
  mParserLibraryConditionVariable = self->mParserLibraryConditionVariable;

  [(NSCondition *)mParserLibraryConditionVariable unlock];
}

@end