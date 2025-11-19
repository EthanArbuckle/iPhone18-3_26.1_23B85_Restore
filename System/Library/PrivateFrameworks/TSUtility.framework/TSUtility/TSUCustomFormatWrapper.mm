@interface TSUCustomFormatWrapper
- (TSUCustomFormatWrapper)initWithCustomFormat:(void *)a3;
@end

@implementation TSUCustomFormatWrapper

- (TSUCustomFormatWrapper)initWithCustomFormat:(void *)a3
{
  v5.receiver = self;
  v5.super_class = TSUCustomFormatWrapper;
  result = [(TSUCustomFormatWrapper *)&v5 init];
  if (result)
  {
    result->mCustomFormat = a3;
  }

  return result;
}

@end