@interface WFFolderQuery
- (WFFolderQuery)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFolderQuery

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = WFFolderQuery;
  [(WFResultQuery *)&v3 encodeWithCoder:coder];
}

- (WFFolderQuery)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WFFolderQuery;
  return [(WFResultQuery *)&v4 initWithCoder:coder];
}

@end