@interface TSUCustomFormatWrapper
- (TSUCustomFormatWrapper)initWithCustomFormat:(void *)format;
@end

@implementation TSUCustomFormatWrapper

- (TSUCustomFormatWrapper)initWithCustomFormat:(void *)format
{
  v5.receiver = self;
  v5.super_class = TSUCustomFormatWrapper;
  result = [(TSUCustomFormatWrapper *)&v5 init];
  if (result)
  {
    result->mCustomFormat = format;
  }

  return result;
}

@end