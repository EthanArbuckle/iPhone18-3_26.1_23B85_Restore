@interface TSULogHelper
+ (id)sharedInstance;
- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)max;
@end

@implementation TSULogHelper

+ (id)sharedInstance
{
  if (qword_280A63E48 != -1)
  {
    sub_277115724();
  }

  v3 = qword_280A63E40;

  return v3;
}

- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)max
{
  throttleCount = [(TSULogHelper *)self throttleCount];
  [(TSULogHelper *)self setThrottleCount:[(TSULogHelper *)self throttleCount]+ 1];
  lastThrottleCheck = [(TSULogHelper *)self lastThrottleCheck];
  if (throttleCount == max && TSUPerformanceCat_init_token != -1)
  {
    sub_277115738();
  }

  if (throttleCount < max || !lastThrottleCheck)
  {
    goto LABEL_12;
  }

  [lastThrottleCheck timeIntervalSinceNow];
  v8 = v7;
  [lastThrottleCheck timeIntervalSinceNow];
  if (v9 < -300.0)
  {
    if (TSUPerformanceCat_init_token != -1)
    {
      sub_27711574C();
    }

    [(TSULogHelper *)self setThrottleCount:0];
  }

  if (v8 >= -60.0)
  {
    v10 = 1;
  }

  else
  {
LABEL_12:
    date = [MEMORY[0x277CBEAA8] date];
    [(TSULogHelper *)self setLastThrottleCheck:date];

    v10 = 0;
  }

  return v10;
}

@end