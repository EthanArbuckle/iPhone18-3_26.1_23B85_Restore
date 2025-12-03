@interface PKNavigationItemHandle
- (_BYTE)consume;
- (uint64_t)updateItem;
- (void)_deactivateFromDisconnect:(uint64_t)disconnect;
- (void)dealloc;
@end

@implementation PKNavigationItemHandle

- (_BYTE)consume
{
  selfCopy = self;
  if (self)
  {
    if (self[24] == 1)
    {
      selfCopy2 = self;
      WeakRetained = objc_loadWeakRetained(selfCopy2 + 1);
      v4 = objc_loadWeakRetained(selfCopy2 + 2);
      selfCopy[24] = 0;
      objc_storeWeak(selfCopy2 + 1, 0);
      objc_storeWeak(selfCopy2 + 2, 0);
      if (v4)
      {
        [v4 endProvidingForNavigationItemHandle:selfCopy2];
      }

      if (WeakRetained)
      {
        [(PKNavigationItemController *)WeakRetained _consumeHandle:selfCopy2];
        selfCopy = v5;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  if (self->_activated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__PKNavigationItemHandle_dealloc__block_invoke;
      block[3] = &unk_1E8010970;
      v7 = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v5.receiver = self;
  v5.super_class = PKNavigationItemHandle;
  [(PKNavigationItemHandle *)&v5 dealloc];
}

- (uint64_t)updateItem
{
  if (!self || self[24] != 1)
  {
    return 0;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(selfCopy + 1);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(selfCopy + 2);
    v4 = [v3 configurationForNavigationItemHandle:selfCopy];

    if (v4)
    {
      [(PKNavigationItemController *)WeakRetained _updateItemWithConfiguration:v4 forHandle:selfCopy];
      v6 = v5;
    }

    else
    {
      [(PKNavigationItemHandle *)selfCopy _deactivateFromDisconnect:?];
      v6 = 0;
    }
  }

  else
  {
    [(PKNavigationItemHandle *)selfCopy _deactivateFromDisconnect:?];
    v6 = 0;
  }

  return v6;
}

- (void)_deactivateFromDisconnect:(uint64_t)disconnect
{
  if (disconnect && *(disconnect + 24) == 1)
  {
    *(disconnect + 24) = 0;
    WeakRetained = objc_loadWeakRetained((disconnect + 8));
    v4 = objc_loadWeakRetained((disconnect + 16));
    objc_storeWeak((disconnect + 8), 0);
    objc_storeWeak((disconnect + 16), 0);
    if (v4)
    {
      [v4 endProvidingForNavigationItemHandle:disconnect];
    }

    if ((a2 & 1) == 0)
    {
      [(PKNavigationItemController *)WeakRetained _disconnectHandle:disconnect];
    }
  }
}

@end