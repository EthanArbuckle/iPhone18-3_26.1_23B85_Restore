@interface TSUCutting
+ (void)beginCutting;
+ (void)endCutting;
@end

@implementation TSUCutting

+ (void)beginCutting
{
  os_unfair_lock_lock(&unk_280A63E50);
  ++qword_280A63E58;

  os_unfair_lock_unlock(&unk_280A63E50);
}

+ (void)endCutting
{
  if (!qword_280A63E58)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUCutting endCutting]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCutting.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:32 isFatal:0 description:"Mismatched beginCutting / endCutting calls"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  os_unfair_lock_lock(&unk_280A63E50);
  if (qword_280A63E58)
  {
    --qword_280A63E58;
  }

  os_unfair_lock_unlock(&unk_280A63E50);
}

@end