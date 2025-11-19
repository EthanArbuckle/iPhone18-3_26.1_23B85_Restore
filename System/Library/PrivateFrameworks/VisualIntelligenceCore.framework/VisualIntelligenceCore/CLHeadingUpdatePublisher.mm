@interface CLHeadingUpdatePublisher
- (void)locationManager:(id)a3 didUpdateHeading:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation CLHeadingUpdatePublisher

- (void)locationManager:(id)a3 didUpdateHeading:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D89B627C(v7);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D89B51D8(v4);
}

@end