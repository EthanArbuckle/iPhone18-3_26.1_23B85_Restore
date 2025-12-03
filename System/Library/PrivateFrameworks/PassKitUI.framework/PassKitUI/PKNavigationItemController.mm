@interface PKNavigationItemController
- (_BYTE)initWithDelegate:(_BYTE *)delegate;
- (id)_redeemVoucher:(void *)voucher forProvider:(void *)provider usingHandle:;
- (id)isActiveVoucher:(_BOOL8)voucher;
- (void)_activate;
- (void)_consumeHandle:(uint64_t)handle;
- (void)_disconnectHandle:(uint64_t)handle;
- (void)_disconnectVoucher:(uint64_t)voucher;
- (void)_ensure;
- (void)_interrupt;
- (void)_recover;
- (void)_updateItemWithConfiguration:(void *)configuration forHandle:;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKNavigationItemController

- (_BYTE)initWithDelegate:(_BYTE *)delegate
{
  result = a2;
  v4 = result;
  if (!delegate)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v6.receiver = delegate;
    v6.super_class = PKNavigationItemController;
    v5 = objc_msgSendSuper2(&v6, sel_init);
    delegate = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 1, v4);
      delegate[16] = 1;
    }

LABEL_5:

    return delegate;
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_handle);
  v4 = objc_loadWeakRetained(&self->_voucher);
  if (WeakRetained | v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PKNavigationItemController_dealloc__block_invoke;
    block[3] = &unk_1E8010A10;
    v7 = WeakRetained;
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v5.receiver = self;
  v5.super_class = PKNavigationItemController;
  [(PKNavigationItemController *)&v5 dealloc];
}

void __37__PKNavigationItemController_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(PKNavigationItemHandle *)v2 _deactivateFromDisconnect:?];
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    [(PKNavigationItemVoucher *)v3 _invalidateFromDisconnect:?];
  }
}

- (void)_activate
{
  if (self)
  {
    if (*(self + 56) != 1)
    {
      if (*(self + 57))
      {
        return;
      }

      *(self + 56) = 1;
      WeakRetained = objc_loadWeakRetained((self + 8));
      [WeakRetained willActivateNavigationItemController:self];

      v3 = objc_loadWeakRetained((self + 48));
      if (v3)
      {
      }

      else
      {
        v4 = objc_loadWeakRetained((self + 40));

        if (!v4)
        {
          v5 = [[PKNavigationItemVoucher alloc] _initForController:self];
          if (v5)
          {
            objc_storeWeak((self + 48), v5);
            return;
          }
        }
      }
    }

    __break(1u);
  }
}

- (void)_interrupt
{
  if (self && (*(self + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));

    if (!WeakRetained)
    {
      if (*(self + 56) != 1)
      {
        return;
      }

      v3 = objc_loadWeakRetained((self + 32));
      v4 = objc_loadWeakRetained((self + 48));
      v5 = v4;
      if (!v3 || !v4)
      {
        if (v3)
        {
          [(PKNavigationItemHandle *)v3 consume];
LABEL_14:

          return;
        }

        if (v4)
        {
          [(PKNavigationItemVoucher *)v4 _invalidateFromDisconnect:?];
          objc_storeWeak((self + 48), 0);
        }

        v6 = [[PKNavigationItemVoucher alloc] _initForController:self];

        if (v6)
        {
          objc_storeWeak((self + 48), v6);
          v5 = v6;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }
}

- (void)_ensure
{
  if (self && (*(self + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));

    if (WeakRetained)
    {
      __break(1u);
    }

    else if (*(self + 56) == 1)
    {

      [(PKNavigationItemController *)self _interrupt];
    }

    else
    {

      [(PKNavigationItemController *)self _activate];
    }
  }
}

- (id)isActiveVoucher:(_BOOL8)voucher
{
  result = a2;
  v4 = result;
  if (!voucher)
  {
    goto LABEL_5;
  }

  if (result && *(result + 16) != 1)
  {
    WeakRetained = objc_loadWeakRetained((voucher + 48));
    voucher = WeakRetained == v4;

LABEL_5:
    return voucher;
  }

  __break(1u);
  return result;
}

- (void)invalidate
{
  if (self && (*(self + 57) & 1) == 0)
  {
    *(self + 57) = 1;
    WeakRetained = objc_loadWeakRetained((self + 8));
    v2 = objc_loadWeakRetained((self + 32));
    v3 = objc_loadWeakRetained((self + 48));
    objc_storeWeak((self + 8), 0);
    objc_storeWeak((self + 32), 0);
    objc_storeWeak((self + 40), 0);
    objc_storeWeak((self + 48), 0);
    if (v2)
    {
      [(PKNavigationItemHandle *)v2 _deactivateFromDisconnect:?];
    }

    if (v3)
    {
      [(PKNavigationItemVoucher *)v3 _invalidateFromDisconnect:?];
    }

    if (*(self + 56) == 1)
    {
      *(self + 56) = 0;
      [WeakRetained didDeactivateNavigationItemController:self dirty:(*(self + 16) & 1) == 0];
      *(self + 16) = 0;
      objc_storeWeak((self + 24), 0);
    }
  }
}

- (void)_recover
{
  if (self && (*(self + 57) & 1) == 0 && *(self + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((self + 32));
    v2 = objc_loadWeakRetained((self + 48));
    if (!(WeakRetained | v2))
    {
      v3 = objc_loadWeakRetained((self + 8));
      if (v3)
      {
        *(self + 56) = 0;
        v4 = *(self + 16);
        *(self + 16) = 0;
        objc_storeWeak((self + 24), 0);
        [v3 didDeactivateNavigationItemController:self dirty:(v4 & 1) == 0];
      }

      else
      {
        [(PKNavigationItemController *)self invalidate];
      }
    }
  }
}

- (void)_disconnectHandle:(uint64_t)handle
{
  v3 = a2;
  if (handle)
  {
    v4 = v3;
    if (!v3)
    {
      __break(1u);
      return;
    }

    objc_storeWeak((handle + 32), 0);
    [(PKNavigationItemController *)handle _recover];
    v3 = v4;
  }
}

- (void)_disconnectVoucher:(uint64_t)voucher
{
  v3 = a2;
  if (voucher)
  {
    v4 = v3;
    if (!v3)
    {
      __break(1u);
      return;
    }

    objc_storeWeak((voucher + 48), 0);
    [(PKNavigationItemController *)voucher _recover];
    v3 = v4;
  }
}

- (void)_consumeHandle:(uint64_t)handle
{
  v3 = a2;
  v4 = v3;
  if (!handle)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((handle + 32));

    if (WeakRetained == v4 && (*(handle + 57) & 1) == 0 && *(handle + 56) == 1)
    {
      v6 = objc_loadWeakRetained((handle + 40));
      if (v6)
      {
      }

      else
      {
        v7 = objc_loadWeakRetained((handle + 48));

        if (!v7)
        {
          objc_storeWeak((handle + 32), 0);
          v8 = [[PKNavigationItemVoucher alloc] _initForController:handle];
          if (v8)
          {
            objc_storeWeak((handle + 48), v8);
LABEL_10:

            return;
          }
        }
      }
    }
  }

  __break(1u);
}

- (id)_redeemVoucher:(void *)voucher forProvider:(void *)provider usingHandle:
{
  v7 = a2;
  voucherCopy = voucher;
  providerCopy = provider;
  selfCopy = providerCopy;
  if (!self)
  {
    goto LABEL_35;
  }

  if (!v7 || providerCopy && *(providerCopy + 24) == 1)
  {
    goto LABEL_36;
  }

  if (*(self + 57))
  {
    goto LABEL_34;
  }

  WeakRetained = objc_loadWeakRetained(self + 6);

  if (WeakRetained != v7)
  {
    goto LABEL_36;
  }

  v12 = objc_loadWeakRetained(self + 4);

  if (v12)
  {
    goto LABEL_36;
  }

  v13 = objc_loadWeakRetained(self + 5);

  if (v13)
  {
    goto LABEL_36;
  }

  if (!voucherCopy)
  {
    v14 = objc_loadWeakRetained(self + 1);
    voucherCopy = [v14 providerForNavigationItemController:self];

    if (!voucherCopy)
    {
      [(PKNavigationItemController *)self invalidate];
      goto LABEL_34;
    }
  }

  if (![voucherCopy willActivateNavigationItemHandleWithVoucher:v7])
  {
LABEL_34:
    self = 0;
    goto LABEL_35;
  }

  if (!selfCopy)
  {
    v15 = [PKNavigationItemHandle alloc];
    if (!v15)
    {
      goto LABEL_37;
    }

    v35.receiver = v15;
    v35.super_class = PKNavigationItemHandle;
    selfCopy = objc_msgSendSuper2(&v35, sel_init);
  }

  while (1)
  {
    objc_storeWeak(self + 5, selfCopy);
    v16 = objc_loadWeakRetained(self + 3);
    v17 = v7;
    voucherCopy = voucherCopy;
    v18 = v16;
    if (!selfCopy)
    {
      break;
    }

    if (*(selfCopy + 24) != 1)
    {
      v19 = objc_loadWeakRetained(selfCopy + 1);

      if (!v19)
      {
        v20 = selfCopy;
        if (*(v17 + 16) != 1)
        {
          v21 = v20;
          v22 = objc_loadWeakRetained(v17 + 1);
          if (v22)
          {
            v23 = v22;
            *(v17 + 16) = 1;
            objc_storeWeak(v17 + 1, 0);
            v24 = v17;
            v25 = v21;
            v26 = objc_loadWeakRetained(v23 + 6);

            if (v26 == v24 && (*(v23 + 57) & 1) == 0 && *(v23 + 56) == 1)
            {
              v27 = objc_loadWeakRetained(v23 + 4);

              if (!v27)
              {
                v28 = objc_loadWeakRetained(v23 + 5);

                if (v28 == v25)
                {
                  objc_storeWeak(v23 + 6, 0);
                  objc_storeWeak(v23 + 5, 0);
                  objc_storeWeak(v23 + 4, v25);
                  v29 = v23;
                  if (*(selfCopy + 24) != 1)
                  {
                    v30 = v29;
                    *(selfCopy + 24) = 1;
                    objc_storeWeak(selfCopy + 1, v29);

                    v31 = v30;
                    if (*(selfCopy + 24) == 1)
                    {
                      v32 = objc_loadWeakRetained(selfCopy + 1);

                      if (v32 == v31)
                      {
                        v33 = objc_loadWeakRetained(v25 + 2);

                        if (!v33)
                        {
                          objc_storeWeak(v25 + 2, voucherCopy);
                          [voucherCopy beginProvidingForNavigationItemHandle:v25 withConsumedVoucher:v24];
                          if (voucherCopy != v18)
                          {
                            [(PKNavigationItemHandle *)v25 updateItem];
                          }

                          break;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    selfCopy = 0;
  }

  objc_storeWeak(self + 3, voucherCopy);
  self = selfCopy;
  selfCopy = self;
LABEL_35:

  return self;
}

- (void)_updateItemWithConfiguration:(void *)configuration forHandle:
{
  v5 = a2;
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (!self)
  {
LABEL_13:

    return;
  }

  if (v5)
  {
    if (configurationCopy)
    {
      WeakRetained = objc_loadWeakRetained((self + 32));

      if (WeakRetained == v7 && (*(self + 57) & 1) == 0 && *(self + 56) == 1)
      {
        v9 = objc_loadWeakRetained((self + 40));
        if (v9)
        {
        }

        else
        {
          v10 = objc_loadWeakRetained((self + 48));

          if (!v10)
          {
            v11 = objc_loadWeakRetained((self + 8));
            v12 = v11;
            if (v11)
            {
              [v11 navigationItemController:self updateItemWithConfiguration:v5];
            }

            else
            {
              [(PKNavigationItemController *)self invalidate];
            }

            goto LABEL_13;
          }
        }
      }
    }
  }

  __break(1u);
}

@end