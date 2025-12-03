@interface SVPlayerItemObserver
- (AVPlayerItem)item;
- (SVPlayerItemObserver)initWithPlayer:(id)player;
- (void)setItem:(id)item;
@end

@implementation SVPlayerItemObserver

- (SVPlayerItemObserver)initWithPlayer:(id)player
{
  playerCopy = player;
  v19.receiver = self;
  v19.super_class = SVPlayerItemObserver;
  v6 = [(SVPlayerItemObserver *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    objc_initWeak(&location, v7);
    v8 = [SVKeyValueObserver alloc];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __39__SVPlayerItemObserver_initWithPlayer___block_invoke;
    v16 = &unk_279BC5D60;
    objc_copyWeak(&v17, &location);
    v9 = [(SVKeyValueObserver *)v8 initWithKeyPath:@"currentItem" ofObject:playerCopy withOptions:1 change:&v13];
    observer = v7->_observer;
    v7->_observer = v9;

    currentItem = [playerCopy currentItem];
    objc_storeWeak(&v7->_item, currentItem);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __39__SVPlayerItemObserver_initWithPlayer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKey:*MEMORY[0x277CCA2F0]];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setItem:v5];
}

- (void)setItem:(id)item
{
  obj = item;
  WeakRetained = objc_loadWeakRetained(&self->_item);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_item, obj);
    changeBlock = [(SVPlayerItemObserver *)self changeBlock];

    v5 = obj;
    if (changeBlock)
    {
      changeBlock2 = [(SVPlayerItemObserver *)self changeBlock];
      (changeBlock2)[2](changeBlock2, self);

      v5 = obj;
    }
  }
}

- (AVPlayerItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end