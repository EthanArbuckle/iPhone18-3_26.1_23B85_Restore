@interface PKBannerSecureIndicatorProvider
- (PKBannerSecureIndicatorProvider)init;
- (id)_calculateEffectiveState;
- (void)_notifyIndicatorWaiters;
- (void)bannerHandle:(id)a3 didChangeFromServerState:(id)a4;
- (void)consumer:(id)a3 ensureIndicatorWithCompletion:(id)a4;
- (void)consumer:(id)a3 requestsState:(id)a4;
- (void)dealloc;
- (void)registerConsumer:(id)a3;
- (void)unregisterConsumer:(id)a3;
@end

@implementation PKBannerSecureIndicatorProvider

- (PKBannerSecureIndicatorProvider)init
{
  result = PKSystemApertureIsAvailable();
  if (result)
  {
    v4.receiver = self;
    v4.super_class = PKBannerSecureIndicatorProvider;
    result = [(PKBannerSecureIndicatorProvider *)&v4 init];
    if (result)
    {
      result->_lock._os_unfair_lock_opaque = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  banner = self->_banner;
  if (banner)
  {
    [(PKBannerHandle *)banner invalidate];
  }

  v4 = self->_completions;
  v5 = v4;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PKBannerSecureIndicatorProvider_dealloc__block_invoke;
    block[3] = &unk_2799FFC10;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v6.receiver = self;
  v6.super_class = PKBannerSecureIndicatorProvider;
  [(PKBannerSecureIndicatorProvider *)&v6 dealloc];
}

void __42__PKBannerSecureIndicatorProvider_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerConsumer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lock);
    consumers = self->_consumers;
    if (!consumers)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = self->_consumers;
      self->_consumers = v7;

      consumers = self->_consumers;
    }

    if ([(NSMutableArray *)consumers indexOfObjectIdenticalTo:v5]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(NSMutableArray *)self->_consumers count])
      {
        v9 = 0;
      }

      else
      {
        v12 = MEMORY[0x277D37DD8];
        v13 = [MEMORY[0x277D37EC0] create];
        v14 = [v12 createHandleForRequest:v13 queue:MEMORY[0x277D85CD0]];
        banner = self->_banner;
        self->_banner = v14;

        v16 = self->_banner;
        v17 = [MEMORY[0x277D37EC8] createForGlyphState:0];
        [(PKBannerHandle *)v16 setState:v17];

        v9 = self->_banner;
      }

      [(NSMutableArray *)self->_consumers addObject:v5];
      v10 = [(PKBannerSecureIndicatorProvider *)self _calculateEffectiveState];
      effectiveState = self->_effectiveState;
      if (effectiveState != v10)
      {
        objc_storeStrong(&self->_effectiveState, v10);
      }

      v11 = self->_banner;
      os_unfair_lock_unlock(&self->_lock);
      if (v9)
      {
        objc_initWeak(&location, self);
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __52__PKBannerSecureIndicatorProvider_registerConsumer___block_invoke;
        v23 = &unk_2799FFDF0;
        objc_copyWeak(&v26, &location);
        v19 = v9;
        v24 = v19;
        v25 = self;
        [(PKBannerHandle *)v19 displayWithDelegate:self completion:&v20];

        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
        if (effectiveState == v10)
        {
          v9 = v19;
          goto LABEL_16;
        }
      }

      else if (effectiveState == v10)
      {
        v9 = 0;
        goto LABEL_16;
      }

      [(PKBannerHandle *)v11 setState:v10, v20, v21, v22, v23];
      goto LABEL_16;
    }

    os_unfair_lock_unlock(&self->_lock);
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_16:

    return;
  }

  __break(1u);
}

void __52__PKBannerSecureIndicatorProvider_registerConsumer___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = a1[4];
    os_unfair_lock_lock(v6 + 2);
    v4 = *&v6[4]._os_unfair_lock_opaque;
    if (v4 == v3)
    {
      *&v6[4]._os_unfair_lock_opaque = 0;

      v5 = *&v6[10]._os_unfair_lock_opaque;
      *&v6[10]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(v6 + 2);
      [a1[5] _notifyIndicatorWaiters];
    }

    else
    {
      os_unfair_lock_unlock(v6 + 2);
    }

    WeakRetained = v6;
  }
}

- (void)unregisterConsumer:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    __break(1u);
    return;
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_consumers removeObjectIdenticalTo:v11];
  [(NSMapTable *)self->_states removeObjectForKey:v11];
  v4 = self->_banner;
  v5 = [(NSMutableArray *)self->_consumers count]== 0;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    LOBYTE(v5) = 1;
    v6 = 0;
  }

  if (!v5)
  {
    v7 = [(PKBannerSecureIndicatorProvider *)self _calculateEffectiveState];
    if (self->_effectiveState == v7)
    {
      v8 = 0;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      objc_storeStrong(&self->_effectiveState, v7);
      v8 = 1;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  v8 = 0;
  v7 = 0;
  if (v6)
  {
LABEL_10:
    banner = self->_banner;
    self->_banner = 0;

    serverState = self->_serverState;
    self->_serverState = 0;
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [(PKBannerHandle *)v4 setState:v7];
  }

  if (v6)
  {
    [(PKBannerHandle *)v4 invalidate];
  }
}

- (void)_notifyIndicatorWaiters
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_banner || (serverState = self->_serverState) != 0 && (([(PKFaceIDBannerHandleServerState *)serverState isSecurelyVisible]& 1) != 0 || !self->_banner))
  {
    v5 = self->_completions;
    completions = self->_completions;
    self->_completions = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v5;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v13 + 1) + 8 * i) + 16))(*(*(&v13 + 1) + 8 * i));
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)bannerHandle:(id)a3 didChangeFromServerState:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    banner = self->_banner;
    if (banner == v10)
    {
      v8 = [(PKBannerHandle *)banner serverState];
      serverState = self->_serverState;
      self->_serverState = v8;

      os_unfair_lock_unlock(&self->_lock);
      [(PKBannerSecureIndicatorProvider *)self _notifyIndicatorWaiters];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    __break(1u);
  }
}

- (id)_calculateEffectiveState
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_consumers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_states objectForKey:*(*(&v12 + 1) + 8 * v7), v12];
        if (v8)
        {
          v9 = v8;

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = [MEMORY[0x277D37EC8] createForGlyphState:0];
LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)consumer:(id)a3 ensureIndicatorWithCompletion:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (!v14)
  {
    __break(1u);
    return;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_banner)
  {
    serverState = self->_serverState;
    if (serverState)
    {
      if (([(PKFaceIDBannerHandleServerState *)serverState isSecurelyVisible]& 1) != 0)
      {
        v8 = 1;
        goto LABEL_14;
      }

      v9 = self->_banner != 0;
    }

    else
    {
      v9 = 1;
    }

    v8 = 0;
    if (v6 && v9)
    {
      completions = self->_completions;
      if (!completions)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v12 = self->_completions;
        self->_completions = v11;

        completions = self->_completions;
      }

      v13 = MEMORY[0x25F8AAFE0](v6);
      [(NSMutableArray *)completions addObject:v13];

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    (*(v6 + 2))(v6, v8);
  }

LABEL_16:
}

- (void)consumer:(id)a3 requestsState:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    os_unfair_lock_lock(&self->_lock);
    states = self->_states;
    if (v6)
    {
      if (!states)
      {
        v8 = [MEMORY[0x277CCAB00] pk_createWeakPointerPersonalityToStrongObjects];
        v9 = self->_states;
        self->_states = v8;

        states = self->_states;
      }

      [(NSMapTable *)states setObject:v6 forKey:v12];
    }

    else
    {
      [(NSMapTable *)states removeObjectForKey:v12];
    }

    v10 = [(PKBannerSecureIndicatorProvider *)self _calculateEffectiveState];
    v11 = self->_banner;
    if (self->_effectiveState == v10)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      objc_storeStrong(&self->_effectiveState, v10);
      os_unfair_lock_unlock(&self->_lock);
      [(PKBannerHandle *)v11 setState:v10];
    }
  }

  else
  {
    __break(1u);
  }
}

@end