@interface S1ji7lMPfNbOh31Q
- (void)getAt:(int64_t)a3 completion:(id)a4;
- (void)set:(id)a3 at:(int64_t)a4;
@end

@implementation S1ji7lMPfNbOh31Q

- (void)set:(id)a3 at:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  S1ji7lMPfNbOh31Q.set(_:at:)(v6, a4);
}

- (void)getAt:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_10006A01C(a3, v7, v6);
  _Block_release(v6);
}

@end