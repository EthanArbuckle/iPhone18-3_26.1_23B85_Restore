@interface ICQUnfairLock
- (ICQUnfairLock)init;
- (void)synchronized:(id)synchronized;
@end

@implementation ICQUnfairLock

- (ICQUnfairLock)init
{
  v3.receiver = self;
  v3.super_class = ICQUnfairLock;
  result = [(ICQUnfairLock *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)synchronized:(id)synchronized
{
  synchronizedCopy = synchronized;
  os_unfair_lock_lock(&self->_lock);
  if (synchronizedCopy)
  {
    synchronizedCopy[2]();
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end