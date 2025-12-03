@interface SBKeyboardServiceConnectionListenerFactory
- (id)newKeyboardServiceListenerForDelegate:(id)delegate serviceQueue:(id)queue;
@end

@implementation SBKeyboardServiceConnectionListenerFactory

- (id)newKeyboardServiceListenerForDelegate:(id)delegate serviceQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = [[_SBKeyboardServiceConnectionListener alloc] initWithServiceQueue:queueCopy];

  [(_SBKeyboardServiceConnectionListener *)v7 setDelegate:delegateCopy];
  return v7;
}

@end