@interface PKNavigationItemVoucher
- (id)_initForController:(id *)controller;
- (id)redeemForProvider:(void *)provider usingHandle:;
- (void)_invalidateFromDisconnect:(uint64_t)disconnect;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKNavigationItemVoucher

- (id)redeemForProvider:(void *)provider usingHandle:
{
  v5 = a2;
  result = provider;
  v7 = result;
  if (!self)
  {
    v10 = 0;
LABEL_11:

    return v10;
  }

  if (!result || *(result + 24) != 1)
  {
    selfCopy = self;
    v9 = selfCopy;
    if (selfCopy[2])
    {
      v10 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(selfCopy + 1);
      v12 = WeakRetained;
      if (WeakRetained)
      {
        v10 = [(PKNavigationItemController *)WeakRetained _redeemVoucher:v9 forProvider:v5 usingHandle:v7];
      }

      else
      {
        [(PKNavigationItemVoucher *)v9 _invalidateFromDisconnect:?];
        v10 = 0;
      }
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

- (void)invalidate
{
  if (self)
  {
    [(PKNavigationItemVoucher *)self _invalidateFromDisconnect:?];
  }
}

- (id)_initForController:(id *)controller
{
  v3 = a2;
  if (controller)
  {
    v6.receiver = controller;
    v6.super_class = PKNavigationItemVoucher;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    controller = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return controller;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__PKNavigationItemVoucher_dealloc__block_invoke;
      block[3] = &unk_1E8010970;
      v7 = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v5.receiver = self;
  v5.super_class = PKNavigationItemVoucher;
  [(PKNavigationItemVoucher *)&v5 dealloc];
}

- (void)_invalidateFromDisconnect:(uint64_t)disconnect
{
  if (disconnect && (*(disconnect + 16) & 1) == 0)
  {
    *(disconnect + 16) = 1;
    WeakRetained = objc_loadWeakRetained((disconnect + 8));
    objc_storeWeak((disconnect + 8), 0);
    if ((a2 & 1) == 0)
    {
      [(PKNavigationItemController *)WeakRetained _disconnectVoucher:disconnect];
    }
  }
}

@end