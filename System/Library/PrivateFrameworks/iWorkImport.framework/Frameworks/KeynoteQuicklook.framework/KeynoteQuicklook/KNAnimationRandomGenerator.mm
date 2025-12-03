@interface KNAnimationRandomGenerator
+ (id)randomGeneratorFromPluginContext:(id)context;
+ (id)randomGeneratorWithSeed:(id)seed;
+ (void)configureFromUserDefaults;
- (KNAnimationRandomGenerator)initWithSeed:(id)seed;
- (double)doubleBetween:(double)between :(double)a4;
- (double)randomDouble;
- (int64_t)intBetween:(int64_t)between :(int64_t)a4;
- (void)dealloc;
- (void)setSeed:(unint64_t)seed;
@end

@implementation KNAnimationRandomGenerator

+ (void)configureFromUserDefaults
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[KNAnimationRandomGenerator configureFromUserDefaults]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v8, v13, v7, 42, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v9, v10);
  }

  v14 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4);
  byte_280A3BFA0 = objc_msgSend_BOOLForKey_(v14, v11, @"RandomNumberSeedAlwaysZero");
  byte_280A3BFA1 = objc_msgSend_BOOLForKey_(v14, v12, @"RandomNumberSeedAlwaysRandom");
}

- (KNAnimationRandomGenerator)initWithSeed:(id)seed
{
  seedCopy = seed;
  v13.receiver = self;
  v13.super_class = KNAnimationRandomGenerator;
  v7 = [(KNAnimationRandomGenerator *)&v13 init];
  if (v7)
  {
    if (byte_280A3BFA0)
    {
      objc_msgSend_setSeed_(v7, v5, 0);
    }

    else if (byte_280A3BFA1 == 1 || !seedCopy)
    {
      v10 = arc4random_uniform(0x7FFFFFFFu);
      objc_msgSend_setSeed_(v7, v11, v10);
    }

    else
    {
      v8 = objc_msgSend_integerValue(seedCopy, v5, v6);
      objc_msgSend_setSeed_(v7, v9, v8);
    }
  }

  return v7;
}

+ (id)randomGeneratorFromPluginContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_isBuild(contextCopy, v4, v5))
  {
    v8 = objc_msgSend_buildAttributes(contextCopy, v6, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"KNBuildCustomAttributesRandomNumberSeed");
LABEL_5:
    v14 = v10;

    goto LABEL_7;
  }

  if (objc_msgSend_isTransition(contextCopy, v6, v7))
  {
    v8 = objc_msgSend_transitionAttributes(contextCopy, v11, v12);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v13, @"KNTransitionCustomAttributesRandomNumberSeed");
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:
  v15 = [KNAnimationRandomGenerator alloc];
  v17 = objc_msgSend_initWithSeed_(v15, v16, v14);

  return v17;
}

+ (id)randomGeneratorWithSeed:(id)seed
{
  seedCopy = seed;
  v4 = [KNAnimationRandomGenerator alloc];
  v6 = objc_msgSend_initWithSeed_(v4, v5, seedCopy);

  return v6;
}

- (void)dealloc
{
  randGenerator = self->_randGenerator;
  if (randGenerator)
  {
    MEMORY[0x277C8F960](randGenerator, 0x1000C40B98A05D4);
  }

  v4.receiver = self;
  v4.super_class = KNAnimationRandomGenerator;
  [(KNAnimationRandomGenerator *)&v4 dealloc];
}

- (void)setSeed:(unint64_t)seed
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v6 = 0;
    v7 = 0;
    operator new();
  }

  TSCERandGenerator::setNewDocumentSeed(randGenerator);
  self->_seed = seed;
}

- (double)randomDouble
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationRandomGenerator randomDouble]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 113, 0, "invalid nil value for '%{public}s'", "_randGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    randGenerator = self->_randGenerator;
  }

  TSCERandGenerator::randomDouble(randGenerator);
  return result;
}

- (int64_t)intBetween:(int64_t)between :(int64_t)a4
{
  if (!self->_randGenerator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationRandomGenerator intBetween::]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 119, 0, "invalid nil value for '%{public}s'", "_randGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (between >= a4)
  {
    betweenCopy = a4;
  }

  else
  {
    betweenCopy = between;
  }

  if (between <= a4)
  {
    betweenCopy2 = a4;
  }

  else
  {
    betweenCopy2 = between;
  }

  if (betweenCopy <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationRandomGenerator intBetween::]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 132, 0, "Random generator int between value less that INT_MIN is undefined : %ld.", betweenCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (betweenCopy2 >= 0x80000000)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationRandomGenerator intBetween::]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 133, 0, "Random generator int between value greater than INT_MAX is undefined : %ld.", betweenCopy2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  TSCERandGenerator::randWithMinMax(self->_randGenerator, betweenCopy, betweenCopy2);
  return vcvtmd_s64_f64(v30);
}

- (double)doubleBetween:(double)between :(double)a4
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationRandomGenerator doubleBetween::]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRandomGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 142, 0, "invalid nil value for '%{public}s'", "_randGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    randGenerator = self->_randGenerator;
  }

  if (between >= a4)
  {
    betweenCopy = a4;
  }

  else
  {
    betweenCopy = between;
  }

  if (between >= a4)
  {
    a4 = between;
  }

  TSCERandGenerator::randomDouble(randGenerator);
  v17 = a4 * v16;
  v18 = betweenCopy * v16;
  v19 = betweenCopy + v17 - v18;
  result = betweenCopy + v17 - v18;
  if (betweenCopy >= 0.0 != a4 < 0.0)
  {
    return v19;
  }

  return result;
}

@end