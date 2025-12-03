@interface WFResultQuery
- (WFResultQuery)initWithCoder:(id)coder;
@end

@implementation WFResultQuery

- (WFResultQuery)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WFResultQuery;
  return [(WFResultQuery *)&v4 init];
}

@end