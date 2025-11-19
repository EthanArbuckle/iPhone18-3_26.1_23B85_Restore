@interface PKNavigationItemController
- (_BYTE)initWithDelegate:(_BYTE *)a1;
- (id)_redeemVoucher:(void *)a3 forProvider:(void *)a4 usingHandle:;
- (id)isActiveVoucher:(_BOOL8)a1;
- (void)_activate;
- (void)_consumeHandle:(uint64_t)a1;
- (void)_disconnectHandle:(uint64_t)a1;
- (void)_disconnectVoucher:(uint64_t)a1;
- (void)_ensure;
- (void)_interrupt;
- (void)_recover;
- (void)_updateItemWithConfiguration:(void *)a3 forHandle:;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKNavigationItemController

- (_BYTE)initWithDelegate:(_BYTE *)a1
{
  result = a2;
  v4 = result;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v6.receiver = a1;
    v6.super_class = PKNavigationItemController;
    v5 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 1, v4);
      a1[16] = 1;
    }

LABEL_5:

    return a1;
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
  if (a1)
  {
    if (*(a1 + 56) != 1)
    {
      if (*(a1 + 57))
      {
        return;
      }

      *(a1 + 56) = 1;
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      [WeakRetained willActivateNavigationItemController:a1];

      v3 = objc_loadWeakRetained((a1 + 48));
      if (v3)
      {
      }

      else
      {
        v4 = objc_loadWeakRetained((a1 + 40));

        if (!v4)
        {
          v5 = [[PKNavigationItemVoucher alloc] _initForController:a1];
          if (v5)
          {
            objc_storeWeak((a1 + 48), v5);
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
  if (a1 && (*(a1 + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));

    if (!WeakRetained)
    {
      if (*(a1 + 56) != 1)
      {
        return;
      }

      v3 = objc_loadWeakRetained((a1 + 32));
      v4 = objc_loadWeakRetained((a1 + 48));
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
          objc_storeWeak((a1 + 48), 0);
        }

        v6 = [[PKNavigationItemVoucher alloc] _initForController:a1];

        if (v6)
        {
          objc_storeWeak((a1 + 48), v6);
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
  if (a1 && (*(a1 + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));

    if (WeakRetained)
    {
      __break(1u);
    }

    else if (*(a1 + 56) == 1)
    {

      [(PKNavigationItemController *)a1 _interrupt];
    }

    else
    {

      [(PKNavigationItemController *)a1 _activate];
    }
  }
}

- (id)isActiveVoucher:(_BOOL8)a1
{
  result = a2;
  v4 = result;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (result && *(result + 16) != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    a1 = WeakRetained == v4;

LABEL_5:
    return a1;
  }

  __break(1u);
  return result;
}

- (void)invalidate
{
  if (a1 && (*(a1 + 57) & 1) == 0)
  {
    *(a1 + 57) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v2 = objc_loadWeakRetained((a1 + 32));
    v3 = objc_loadWeakRetained((a1 + 48));
    objc_storeWeak((a1 + 8), 0);
    objc_storeWeak((a1 + 32), 0);
    objc_storeWeak((a1 + 40), 0);
    objc_storeWeak((a1 + 48), 0);
    if (v2)
    {
      [(PKNavigationItemHandle *)v2 _deactivateFromDisconnect:?];
    }

    if (v3)
    {
      [(PKNavigationItemVoucher *)v3 _invalidateFromDisconnect:?];
    }

    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
      [WeakRetained didDeactivateNavigationItemController:a1 dirty:(*(a1 + 16) & 1) == 0];
      *(a1 + 16) = 0;
      objc_storeWeak((a1 + 24), 0);
    }
  }
}

- (void)_recover
{
  if (a1 && (*(a1 + 57) & 1) == 0 && *(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = objc_loadWeakRetained((a1 + 48));
    if (!(WeakRetained | v2))
    {
      v3 = objc_loadWeakRetained((a1 + 8));
      if (v3)
      {
        *(a1 + 56) = 0;
        v4 = *(a1 + 16);
        *(a1 + 16) = 0;
        objc_storeWeak((a1 + 24), 0);
        [v3 didDeactivateNavigationItemController:a1 dirty:(v4 & 1) == 0];
      }

      else
      {
        [(PKNavigationItemController *)a1 invalidate];
      }
    }
  }
}

- (void)_disconnectHandle:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    if (!v3)
    {
      __break(1u);
      return;
    }

    objc_storeWeak((a1 + 32), 0);
    [(PKNavigationItemController *)a1 _recover];
    v3 = v4;
  }
}

- (void)_disconnectVoucher:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    if (!v3)
    {
      __break(1u);
      return;
    }

    objc_storeWeak((a1 + 48), 0);
    [(PKNavigationItemController *)a1 _recover];
    v3 = v4;
  }
}

- (void)_consumeHandle:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained == v4 && (*(a1 + 57) & 1) == 0 && *(a1 + 56) == 1)
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      if (v6)
      {
      }

      else
      {
        v7 = objc_loadWeakRetained((a1 + 48));

        if (!v7)
        {
          objc_storeWeak((a1 + 32), 0);
          v8 = [[PKNavigationItemVoucher alloc] _initForController:a1];
          if (v8)
          {
            objc_storeWeak((a1 + 48), v8);
LABEL_10:

            return;
          }
        }
      }
    }
  }

  __break(1u);
}

- (id)_redeemVoucher:(void *)a3 forProvider:(void *)a4 usingHandle:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (!v7 || v9 && *(v9 + 24) == 1)
  {
    goto LABEL_36;
  }

  if (*(a1 + 57))
  {
    goto LABEL_34;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);

  if (WeakRetained != v7)
  {
    goto LABEL_36;
  }

  v12 = objc_loadWeakRetained(a1 + 4);

  if (v12)
  {
    goto LABEL_36;
  }

  v13 = objc_loadWeakRetained(a1 + 5);

  if (v13)
  {
    goto LABEL_36;
  }

  if (!v8)
  {
    v14 = objc_loadWeakRetained(a1 + 1);
    v8 = [v14 providerForNavigationItemController:a1];

    if (!v8)
    {
      [(PKNavigationItemController *)a1 invalidate];
      goto LABEL_34;
    }
  }

  if (![v8 willActivateNavigationItemHandleWithVoucher:v7])
  {
LABEL_34:
    a1 = 0;
    goto LABEL_35;
  }

  if (!v10)
  {
    v15 = [PKNavigationItemHandle alloc];
    if (!v15)
    {
      goto LABEL_37;
    }

    v35.receiver = v15;
    v35.super_class = PKNavigationItemHandle;
    v10 = objc_msgSendSuper2(&v35, sel_init);
  }

  while (1)
  {
    objc_storeWeak(a1 + 5, v10);
    v16 = objc_loadWeakRetained(a1 + 3);
    v17 = v7;
    v8 = v8;
    v18 = v16;
    if (!v10)
    {
      break;
    }

    if (*(v10 + 24) != 1)
    {
      v19 = objc_loadWeakRetained(v10 + 1);

      if (!v19)
      {
        v20 = v10;
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
                  if (*(v10 + 24) != 1)
                  {
                    v30 = v29;
                    *(v10 + 24) = 1;
                    objc_storeWeak(v10 + 1, v29);

                    v31 = v30;
                    if (*(v10 + 24) == 1)
                    {
                      v32 = objc_loadWeakRetained(v10 + 1);

                      if (v32 == v31)
                      {
                        v33 = objc_loadWeakRetained(v25 + 2);

                        if (!v33)
                        {
                          objc_storeWeak(v25 + 2, v8);
                          [v8 beginProvidingForNavigationItemHandle:v25 withConsumedVoucher:v24];
                          if (v8 != v18)
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
    v10 = 0;
  }

  objc_storeWeak(a1 + 3, v8);
  a1 = v10;
  v10 = a1;
LABEL_35:

  return a1;
}

- (void)_updateItemWithConfiguration:(void *)a3 forHandle:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
LABEL_13:

    return;
  }

  if (v5)
  {
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));

      if (WeakRetained == v7 && (*(a1 + 57) & 1) == 0 && *(a1 + 56) == 1)
      {
        v9 = objc_loadWeakRetained((a1 + 40));
        if (v9)
        {
        }

        else
        {
          v10 = objc_loadWeakRetained((a1 + 48));

          if (!v10)
          {
            v11 = objc_loadWeakRetained((a1 + 8));
            v12 = v11;
            if (v11)
            {
              [v11 navigationItemController:a1 updateItemWithConfiguration:v5];
            }

            else
            {
              [(PKNavigationItemController *)a1 invalidate];
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