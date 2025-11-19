@interface SBExternalDisplayServiceConnectionListenerFactory
- (id)newExternalDisplayServiceListenerForDelegate:(id)a3 serviceQueue:(id)a4;
@end

@implementation SBExternalDisplayServiceConnectionListenerFactory

- (id)newExternalDisplayServiceListenerForDelegate:(id)a3 serviceQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_SBExternalDisplayServiceConnectionListener alloc] initWithServiceQueue:v5];

  [(_SBExternalDisplayServiceConnectionListener *)v7 setDelegate:v6];
  return v7;
}

@end