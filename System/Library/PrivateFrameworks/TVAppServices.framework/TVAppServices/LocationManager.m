@interface LocationManager
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationManager

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26CC80480(v4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_26CC18080(0, &qword_2804BCC50, 0x277CE41F8);
  v6 = sub_26CD3A7AC();
  v7 = a3;
  v8 = self;
  sub_26CC81F34(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_26CC82248(v8);
}

@end