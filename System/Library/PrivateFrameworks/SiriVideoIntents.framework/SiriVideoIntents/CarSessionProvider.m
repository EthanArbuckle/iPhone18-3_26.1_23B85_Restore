@interface CarSessionProvider
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CarSessionProvider

- (void)sessionDidConnect:(id)a3
{
  v3 = a3;

  sub_2697AF47C(v3);
}

- (void)sessionDidDisconnect:(id)a3
{
  v3 = a3;

  sub_2697AF6AC();
}

@end