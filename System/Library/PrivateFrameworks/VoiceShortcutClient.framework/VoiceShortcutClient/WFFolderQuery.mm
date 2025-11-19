@interface WFFolderQuery
- (WFFolderQuery)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFolderQuery

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = WFFolderQuery;
  [(WFResultQuery *)&v3 encodeWithCoder:a3];
}

- (WFFolderQuery)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFFolderQuery;
  return [(WFResultQuery *)&v4 initWithCoder:a3];
}

@end