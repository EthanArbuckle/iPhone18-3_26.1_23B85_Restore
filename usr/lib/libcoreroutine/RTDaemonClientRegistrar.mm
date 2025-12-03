@interface RTDaemonClientRegistrar
- (RTDaemonClientRegistrar)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RTDaemonClientRegistrar

- (RTDaemonClientRegistrar)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = RTDaemonClientRegistrar;
  return [(RTDaemonClientRegistrar *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end