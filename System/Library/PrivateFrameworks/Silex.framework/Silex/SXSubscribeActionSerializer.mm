@interface SXSubscribeActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
@end

@implementation SXSubscribeActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  if (type == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v5 setScheme:@"action"];
    [v5 setHost:@"subscribe"];
    v4 = [v5 URL];
  }

  return v4;
}

@end