@interface PRJyutpingContext
- (PRJyutpingContext)init;
@end

@implementation PRJyutpingContext

- (PRJyutpingContext)init
{
  v3.receiver = self;
  v3.super_class = PRJyutpingContext;
  result = [(PRPinyinContext *)&v3 init];
  if (result)
  {
    result->super._romanization = 1;
  }

  return result;
}

@end