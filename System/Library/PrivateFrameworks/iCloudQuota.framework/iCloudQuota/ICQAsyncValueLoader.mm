@interface ICQAsyncValueLoader
- (ICQAsyncValueLoader)initWithDefaultValue:(id)a3 valueFetcher:(id)a4;
- (id)value;
- (void)fetchValueAsynchronously;
@end

@implementation ICQAsyncValueLoader

- (ICQAsyncValueLoader)initWithDefaultValue:(id)a3 valueFetcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ICQAsyncValueLoader;
  v9 = [(ICQAsyncValueLoader *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    fetchValue = v9->_fetchValue;
    v9->_fetchValue = v10;

    v9->_valueLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_value, a3);
    [(ICQAsyncValueLoader *)v9 fetchValueAsynchronously];
  }

  return v9;
}

- (void)fetchValueAsynchronously
{
  v3 = [(ICQAsyncValueLoader *)self fetchValue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ICQAsyncValueLoader_fetchValueAsynchronously__block_invoke;
  v4[3] = &unk_27A652F20;
  v4[4] = self;
  (v3)[2](v3, v4);
}

void __47__ICQAsyncValueLoader_fetchValueAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  objc_storeStrong((*(a1 + 32) + 16), a2);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v4 = [*(a1 + 32) didUpdate];

  if (v4)
  {
    v5 = [*(a1 + 32) didUpdate];
    (v5)[2](v5, v6);
  }
}

- (id)value
{
  os_unfair_lock_lock(&self->_valueLock);
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_valueLock);

  return v3;
}

@end