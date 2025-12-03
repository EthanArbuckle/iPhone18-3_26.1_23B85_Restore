@interface ICSTravelAdvisoryBehavior
- (ICSTravelAdvisoryBehavior)initWithString:(id)string;
@end

@implementation ICSTravelAdvisoryBehavior

- (ICSTravelAdvisoryBehavior)initWithString:(id)string
{
  v4.receiver = self;
  v4.super_class = ICSTravelAdvisoryBehavior;
  return [(ICSProperty *)&v4 initWithValue:string type:5007];
}

@end