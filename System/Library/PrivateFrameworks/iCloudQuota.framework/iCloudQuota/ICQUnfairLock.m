@interface ICQUnfairLock
- (ICQUnfairLock)init;
- (void)synchronized:(id)a3;
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

- (void)synchronized:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v4)
  {
    v4[2]();
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end