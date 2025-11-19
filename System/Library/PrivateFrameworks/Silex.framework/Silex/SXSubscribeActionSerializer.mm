@interface SXSubscribeActionSerializer
- (id)URLForAction:(id)a3 type:(int64_t)a4;
@end

@implementation SXSubscribeActionSerializer

- (id)URLForAction:(id)a3 type:(int64_t)a4
{
  if (a4 == 1)
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