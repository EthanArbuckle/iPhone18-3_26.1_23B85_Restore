@interface UIKBRegularExpressionForEmail
@end

@implementation UIKBRegularExpressionForEmail

void ___UIKBRegularExpressionForEmail_block_invoke()
{
  if (!qword_1ED49F988)
  {
    v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2 options:4}" error:{1, 0}];
    v1 = qword_1ED49F988;
    qword_1ED49F988 = v0;
  }
}

@end