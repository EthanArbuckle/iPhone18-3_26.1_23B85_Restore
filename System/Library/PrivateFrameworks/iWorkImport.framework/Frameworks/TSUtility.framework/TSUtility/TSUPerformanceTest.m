@interface TSUPerformanceTest
- (TSUOpstat_s)timing;
- (TSUPerformanceTest)initWithName:(id)a3 selector:(SEL)a4 target:(id)a5 goalTime:(double)a6;
- (id)csvString;
- (void)dealloc;
- (void)report;
- (void)run;
- (void)setTiming:(TSUOpstat_s *)a3;
@end

@implementation TSUPerformanceTest

- (TSUPerformanceTest)initWithName:(id)a3 selector:(SEL)a4 target:(id)a5 goalTime:(double)a6
{
  v13.receiver = self;
  v13.super_class = TSUPerformanceTest;
  v10 = [(TSUPerformanceTest *)&v13 init];
  if (v10)
  {
    *(v10 + 1) = [a3 copy];
    if (a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
    }

    *(v10 + 2) = v11;
    *(v10 + 3) = a5;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0u;
    *(v10 + 4) = a6;
    v10[48] = 0;
    v10[136] = 0;
    *(v10 + 5) = 0x3FA999999999999ALL;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUPerformanceTest;
  [(TSUPerformanceTest *)&v3 dealloc];
}

- (void)run
{
  if (!self->mQuiet)
  {
    NSLog(@"test '%@' starting...", a2, self->mName);
  }

  p_mSelector = &self->mSelector;
  if (self->mSelector)
  {
    mSelector = self->mSelector;
  }

  else
  {
    mSelector = 0;
  }

  v5 = [self->mTarget methodSignatureForSelector:mSelector];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTest run]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTest.m"];
    if (*p_mSelector)
    {
      v8 = *p_mSelector;
    }

    else
    {
      v8 = 0;
    }

    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:61 isFatal:0 description:"Can't get signature for test selector '%@'!", NSStringFromSelector(v8)];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if ([v5 numberOfArguments] != 2)
  {
    v11 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
    [v11 setTarget:self->mTarget];
    if (self->mSelector)
    {
      v12 = self->mSelector;
    }

    else
    {
      v12 = 0;
    }

    [v11 setSelector:v12];
    v32.tv_sec = &self->mTiming;
    [v11 setArgument:&v32 atIndex:2];
    [v11 invoke];
    count = self->mTiming.count;
    tv_sec = self->mTiming.total_time.tv_sec;
    goto LABEL_44;
  }

  v9 = objc_opt_class();
  if (self->mSelector)
  {
    v10 = self->mSelector;
  }

  else
  {
    v10 = 0;
  }

  MethodImplementation = class_getMethodImplementation(v9, v10);
  if (self->mTiming.running)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSUOpstatStart(TSUOpstat *)"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v14, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUOpstat.h"], 48, 0, "Opstat is already running!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  gettimeofday(&self->mTiming.last_time, 0);
  self->mTiming.running = 1;
  if (self->mSelector)
  {
    v15 = self->mSelector;
  }

  else
  {
    v15 = 0;
  }

  (MethodImplementation)(self->mTarget, v15);
  if (!self->mTiming.running)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSUOpstatStop(TSUOpstat *)"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v18, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUOpstat.h"], 69, 0, "Opstat is already stopped!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v32.tv_sec = 0;
  *&v32.tv_usec = 0;
  gettimeofday(&v32, 0);
  self->mTiming.running = 0;
  tv_usec = self->mTiming.last_time.tv_usec;
  v20 = v32.tv_sec - self->mTiming.last_time.tv_sec;
  self->mTiming.last_time.tv_sec = v20;
  v21 = v32.tv_usec - tv_usec;
  self->mTiming.last_time.tv_usec = v21;
  if (v21 < 0)
  {
    self->mTiming.last_time.tv_sec = --v20;
    v21 += 1000000;
    self->mTiming.last_time.tv_usec = v21;
  }

  tv_sec = self->mTiming.total_time.tv_sec + v20;
  self->mTiming.total_time.tv_sec = tv_sec;
  v22 = self->mTiming.total_time.tv_usec + v21;
  self->mTiming.total_time.tv_usec = v22;
  if (v22 > 999999)
  {
    self->mTiming.total_time.tv_sec = ++tv_sec;
    self->mTiming.total_time.tv_usec = v22 - 1000000;
  }

  v23 = self->mTiming.count;
  if (v23)
  {
    v24 = self->mTiming.min_time.tv_sec;
    v25 = v20 < v24;
    if (v20 == v24)
    {
      v25 = v21 < self->mTiming.min_time.tv_usec;
    }

    if (v25)
    {
      self->mTiming.min_time = self->mTiming.last_time;
    }

    p_max_time = &self->mTiming.max_time;
    v27 = self->mTiming.max_time.tv_sec;
    v28 = v20 <= v27;
    if (v20 == v27)
    {
      v28 = v21 <= self->mTiming.max_time.tv_usec;
    }

    if (v28)
    {
      goto LABEL_43;
    }
  }

  else
  {
    self->mTiming.min_time = self->mTiming.last_time;
    p_max_time = &self->mTiming.max_time;
  }

  *p_max_time = self->mTiming.last_time;
LABEL_43:
  count = v23 + 1;
  self->mTiming.count = v23 + 1;
LABEL_44:
  v29 = count;
  v30 = self->mTiming.total_time.tv_usec;
  v32.tv_sec = 0;
  v31 = modf(tv_sec / count, &v32.tv_sec);
  self->mPassed = vabdd_f64(1.0, (((v31 * 1000000.0) + vcvtmd_s64_f64(v30 / v29)) / 1000000.0 + *&v32.tv_sec) / self->mGoalTime) <= self->mPrecision;
  if (!self->mQuiet)
  {
    [(TSUPerformanceTest *)self report];
  }

  self->mTarget = 0;
}

- (void)report
{
  count = self->mTiming.count;
  tv_usec = self->mTiming.total_time.tv_usec;
  tv_sec = self->mTiming.total_time.tv_sec;
  __y = 0.0;
  v6 = tv_sec;
  v7 = tv_sec / count;
  v8 = modf(v7, &__y);
  v9 = __y;
  v10 = tv_usec;
  v11 = vcvtmd_s64_f64(tv_usec / count);
  mName = self->mName;
  mPassed = self->mPassed;
  mGoalTime = self->mGoalTime;
  mPrecision = self->mPrecision;
  if (count < 2)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"elapsed time %f", self->mTiming.last_time.tv_usec / 1000000.0 + self->mTiming.last_time.tv_sec, v20, v21, v22, v23, v24];
  }

  else
  {
    __y = 0.0;
    v16 = modf(v7, &__y);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d iterations, avg %f last %f min %f max %f total %f", count, ((v16 * 1000000.0) + v11) / 1000000.0 + __y, self->mTiming.last_time.tv_usec / 1000000.0 + self->mTiming.last_time.tv_sec, self->mTiming.min_time.tv_usec / 1000000.0 + self->mTiming.min_time.tv_sec, self->mTiming.max_time.tv_usec / 1000000.0 + self->mTiming.max_time.tv_sec, v10 / 1000000.0 + v6];
  }

  v18 = rint(mPrecision * 100.0);
  v19 = "FAILED";
  if (mPassed)
  {
    v19 = "passed";
  }

  NSLog(@"test '%@' %s: %.06fs, %02.02f%% of goal %.06fs (precision %ld%%) [opstat: %@]", mName, v19, ((v8 * 1000000.0) + v11) / 1000000.0 + v9, (((v8 * 1000000.0) + v11) / 1000000.0 + v9) / mGoalTime * 100.0, *&mGoalTime, v18, v17);
}

- (id)csvString
{
  v3 = +[TSULocale currentLocale];
  v4 = [(TSULocale *)v3 listSeparator];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(NSString *)self->mName tsu_stringByAddingCSVEscapesForLocale:v3];
  if (self->mPassed)
  {
    v7 = @"TRUE";
  }

  else
  {
    v7 = @"FALSE";
  }

  return [v5 stringWithFormat:@"%@%@%.06f%@%qi%@%.06f%@%f%@%@", v6, v4, self->mTiming.total_time.tv_usec / 1000000.0 + self->mTiming.total_time.tv_sec, v4, self->mTiming.count, v4, *&self->mGoalTime, v4, *&self->mPrecision, v4, v7];
}

- (TSUOpstat_s)timing
{
  v3 = *&self->last_time.tv_usec;
  v4 = *&self[1].min_time.tv_usec;
  retstr->max_time = *&self[1].count;
  retstr->total_time = v4;
  retstr->last_time = *&self[1].max_time.tv_usec;
  *&retstr->running = *&self->total_time.tv_usec;
  retstr->min_time = v3;
  return self;
}

- (void)setTiming:(TSUOpstat_s *)a3
{
  *&self->mTiming.running = *&a3->running;
  min_time = a3->min_time;
  max_time = a3->max_time;
  total_time = a3->total_time;
  self->mTiming.last_time = a3->last_time;
  self->mTiming.total_time = total_time;
  self->mTiming.max_time = max_time;
  self->mTiming.min_time = min_time;
}

@end