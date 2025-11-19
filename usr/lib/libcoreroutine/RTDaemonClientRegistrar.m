@interface RTDaemonClientRegistrar
- (RTDaemonClientRegistrar)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RTDaemonClientRegistrar

- (RTDaemonClientRegistrar)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = RTDaemonClientRegistrar;
  return [(RTDaemonClientRegistrar *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

@end