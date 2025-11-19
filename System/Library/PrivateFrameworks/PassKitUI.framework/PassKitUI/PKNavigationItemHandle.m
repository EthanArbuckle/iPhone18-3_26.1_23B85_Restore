@interface PKNavigationItemHandle
- (_BYTE)consume;
- (uint64_t)updateItem;
- (void)_deactivateFromDisconnect:(uint64_t)a1;
- (void)dealloc;
@end

@implementation PKNavigationItemHandle

- (_BYTE)consume
{
  v1 = a1;
  if (a1)
  {
    if (a1[24] == 1)
    {
      v2 = a1;
      WeakRetained = objc_loadWeakRetained(v2 + 1);
      v4 = objc_loadWeakRetained(v2 + 2);
      v1[24] = 0;
      objc_storeWeak(v2 + 1, 0);
      objc_storeWeak(v2 + 2, 0);
      if (v4)
      {
        [v4 endProvidingForNavigationItemHandle:v2];
      }

      if (WeakRetained)
      {
        [(PKNavigationItemController *)WeakRetained _consumeHandle:v2];
        v1 = v5;
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
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
  if (!a1 || a1[24] != 1)
  {
    return 0;
  }

  v1 = a1;
  WeakRetained = objc_loadWeakRetained(v1 + 1);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(v1 + 2);
    v4 = [v3 configurationForNavigationItemHandle:v1];

    if (v4)
    {
      [(PKNavigationItemController *)WeakRetained _updateItemWithConfiguration:v4 forHandle:v1];
      v6 = v5;
    }

    else
    {
      [(PKNavigationItemHandle *)v1 _deactivateFromDisconnect:?];
      v6 = 0;
    }
  }

  else
  {
    [(PKNavigationItemHandle *)v1 _deactivateFromDisconnect:?];
    v6 = 0;
  }

  return v6;
}

- (void)_deactivateFromDisconnect:(uint64_t)a1
{
  if (a1 && *(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = objc_loadWeakRetained((a1 + 16));
    objc_storeWeak((a1 + 8), 0);
    objc_storeWeak((a1 + 16), 0);
    if (v4)
    {
      [v4 endProvidingForNavigationItemHandle:a1];
    }

    if ((a2 & 1) == 0)
    {
      [(PKNavigationItemController *)WeakRetained _disconnectHandle:a1];
    }
  }
}

@end