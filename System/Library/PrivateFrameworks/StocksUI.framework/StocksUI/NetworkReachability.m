@interface NetworkReachability
+ (id)sharedNetworkReachability;
- (_TtC8StocksUI19NetworkReachability)init;
@end

@implementation NetworkReachability

+ (id)sharedNetworkReachability
{
  if (qword_28128FD98 != -1)
  {
    swift_once();
  }

  v3 = qword_28128FDA0;

  return v3;
}

- (_TtC8StocksUI19NetworkReachability)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FCNetworkReachability *)&v3 init];
}

@end