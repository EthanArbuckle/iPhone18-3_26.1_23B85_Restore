@interface MapViewModel
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation MapViewModel

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26A809F90(v4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_26A4EC5B0(0, &qword_2803B9380);
  v6 = sub_26A851A98();
  v7 = a3;
  v8 = self;
  sub_26A80A100(v7, v6);
}

@end