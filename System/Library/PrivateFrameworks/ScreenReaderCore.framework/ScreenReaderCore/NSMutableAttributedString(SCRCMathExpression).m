@interface NSMutableAttributedString(SCRCMathExpression)
- (void)scrcAppendFormat:()SCRCMathExpression;
@end

@implementation NSMutableAttributedString(SCRCMathExpression)

- (void)scrcAppendFormat:()SCRCMathExpression
{
  v10 = [MEMORY[0x277CCA898] _scrcStringWithFormat:a3 args:&a9];
  [a1 appendAttributedString:v10];
}

@end