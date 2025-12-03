@interface S1ji7lMPfNbOh31Q
- (void)getAt:(int64_t)at completion:(id)completion;
- (void)set:(id)set at:(int64_t)at;
@end

@implementation S1ji7lMPfNbOh31Q

- (void)set:(id)set at:(int64_t)at
{
  setCopy = set;
  selfCopy = self;
  S1ji7lMPfNbOh31Q.set(_:at:)(setCopy, at);
}

- (void)getAt:(int64_t)at completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_10006A01C(at, selfCopy, v6);
  _Block_release(v6);
}

@end