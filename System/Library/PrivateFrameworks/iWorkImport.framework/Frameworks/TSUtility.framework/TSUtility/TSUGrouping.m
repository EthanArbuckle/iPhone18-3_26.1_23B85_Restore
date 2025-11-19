@interface TSUGrouping
+ (void)beginGrouping;
+ (void)endGrouping;
@end

@implementation TSUGrouping

+ (void)beginGrouping
{
  os_unfair_lock_lock(&unk_280A63E50);
  ++qword_280A63E60;

  os_unfair_lock_unlock(&unk_280A63E50);
}

+ (void)endGrouping
{
  if (!qword_280A63E60)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUGrouping endGrouping]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCutting.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:57 isFatal:0 description:"Mismatched beginGrouping / endGrouping calls"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  os_unfair_lock_lock(&unk_280A63E50);
  if (qword_280A63E60)
  {
    --qword_280A63E60;
  }

  os_unfair_lock_unlock(&unk_280A63E50);
}

@end