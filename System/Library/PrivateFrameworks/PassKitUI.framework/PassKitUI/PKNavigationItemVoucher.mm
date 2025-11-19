@interface PKNavigationItemVoucher
- (id)_initForController:(id *)a1;
- (id)redeemForProvider:(void *)a3 usingHandle:;
- (void)_invalidateFromDisconnect:(uint64_t)a1;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKNavigationItemVoucher

- (id)redeemForProvider:(void *)a3 usingHandle:
{
  v5 = a2;
  result = a3;
  v7 = result;
  if (!a1)
  {
    v10 = 0;
LABEL_11:

    return v10;
  }

  if (!result || *(result + 24) != 1)
  {
    v8 = a1;
    v9 = v8;
    if (v8[2])
    {
      v10 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v8 + 1);
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
  if (a1)
  {
    [(PKNavigationItemVoucher *)a1 _invalidateFromDisconnect:?];
  }
}

- (id)_initForController:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = PKNavigationItemVoucher;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
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

- (void)_invalidateFromDisconnect:(uint64_t)a1
{
  if (a1 && (*(a1 + 16) & 1) == 0)
  {
    *(a1 + 16) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    objc_storeWeak((a1 + 8), 0);
    if ((a2 & 1) == 0)
    {
      [(PKNavigationItemController *)WeakRetained _disconnectVoucher:a1];
    }
  }
}

@end