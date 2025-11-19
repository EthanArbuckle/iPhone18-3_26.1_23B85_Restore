@interface CXCallDTMFUpdate
- (id)tuCallDTMFUpdate;
@end

@implementation CXCallDTMFUpdate

- (id)tuCallDTMFUpdate
{
  v3 = [TUCallDTMFUpdate alloc];
  v4 = [(CXCallDTMFUpdate *)self digits];
  v5 = [v3 initWithDigits:v4];

  v6 = [(CXCallDTMFUpdate *)self UUID];
  [v5 setUUID:v6];

  return v5;
}

@end