@interface TSUFakeProgress
- (TSUFakeProgress)initWithMaxValue:(double)value;
- (TSUFakeProgress)initWithMaxValue:(double)value numberOfStages:(unint64_t)stages;
- (void)advanceToStage:(unint64_t)stage;
- (void)p_slowlyAdvanceToNextStage;
- (void)start;
- (void)stop;
@end

@implementation TSUFakeProgress

- (TSUFakeProgress)initWithMaxValue:(double)value numberOfStages:(unint64_t)stages
{
  if (!stages)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFakeProgress initWithMaxValue:numberOfStages:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:678 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "numberOfStages > 0"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v14.receiver = self;
  v14.super_class = TSUFakeProgress;
  v9 = [(TSUBasicProgress *)&v14 initWithMaxValue:value];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("TSUFakeProgress", v10);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v11;

    v9->_numberOfStages = stages;
    v9->_stopped = 1;
  }

  return v9;
}

- (TSUFakeProgress)initWithMaxValue:(double)value
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUFakeProgress initWithMaxValue:]", value}];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:689 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUFakeProgress initWithMaxValue:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)start
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27709486C;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_277094910;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)advanceToStage:(unint64_t)stage
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770949A4;
  v4[3] = &unk_27A7025D0;
  v4[4] = self;
  v4[5] = stage;
  dispatch_async(accessQueue, v4);
}

- (void)p_slowlyAdvanceToNextStage
{
  if (!self->_stopped && self->_currentStage < self->_numberOfStages)
  {
    v3 = dispatch_time(0, 250000000);
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_277094AFC;
    block[3] = &unk_27A7023D8;
    block[4] = self;
    dispatch_after(v3, accessQueue, block);
  }
}

@end