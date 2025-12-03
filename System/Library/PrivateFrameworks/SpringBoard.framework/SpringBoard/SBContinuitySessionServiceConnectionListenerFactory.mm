@interface SBContinuitySessionServiceConnectionListenerFactory
- (id)newContinuitySessionServiceListenerForDelegate:(id)delegate serviceQueue:(id)queue;
@end

@implementation SBContinuitySessionServiceConnectionListenerFactory

- (id)newContinuitySessionServiceListenerForDelegate:(id)delegate serviceQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = [[_SBContinuitySessionServiceConnectionListener alloc] initWithServiceQueue:queueCopy];

  [(_SBContinuitySessionServiceConnectionListener *)v7 setDelegate:delegateCopy];
  return v7;
}

@end