@interface CXCallDTMFUpdate
- (id)tuCallDTMFUpdate;
@end

@implementation CXCallDTMFUpdate

- (id)tuCallDTMFUpdate
{
  v3 = [TUCallDTMFUpdate alloc];
  digits = [(CXCallDTMFUpdate *)self digits];
  v5 = [v3 initWithDigits:digits];

  uUID = [(CXCallDTMFUpdate *)self UUID];
  [v5 setUUID:uUID];

  return v5;
}

@end