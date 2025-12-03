@interface SBExternalDisplayServiceConnectionListenerFactory
- (id)newExternalDisplayServiceListenerForDelegate:(id)delegate serviceQueue:(id)queue;
@end

@implementation SBExternalDisplayServiceConnectionListenerFactory

- (id)newExternalDisplayServiceListenerForDelegate:(id)delegate serviceQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = [[_SBExternalDisplayServiceConnectionListener alloc] initWithServiceQueue:queueCopy];

  [(_SBExternalDisplayServiceConnectionListener *)v7 setDelegate:delegateCopy];
  return v7;
}

@end