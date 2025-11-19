@interface RBClientInheritanceManager
- (RBClientInheritanceManager)init;
- (RBClientInheritanceManager)initWithInheritances:(id)a3 delegate:(id)a4;
- (RBClientInheritanceManagerDelegate)delegate;
- (id)description;
- (void)_lock_sendQueuedInheritancesAndUnlock;
- (void)setInheritances:(id)a3;
@end

@implementation RBClientInheritanceManager

- (void)_lock_sendQueuedInheritancesAndUnlock
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  os_unfair_lock_assert_owner((a1 + 36));
  if (*(a1 + 32) != 1)
  {
    [*(a1 + 16) minusSet:*(a1 + 8)];
    [*(a1 + 24) intersectSet:*(a1 + 8)];
    if (![*(a1 + 16) count] && !objc_msgSend(*(a1 + 24), "count"))
    {
      v10 = *(a1 + 16);
      *(a1 + 16) = 0;

      v11 = *(a1 + 24);
      *(a1 + 24) = 0;

      goto LABEL_3;
    }

    *(a1 + 32) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [objc_alloc(MEMORY[0x277D46E98]) initWithGainedInheritances:*(a1 + 16) lostInheritances:*(a1 + 24)];
    if (v4)
    {
      v5 = rbs_connection_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v4;
        _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Inheritance changeset: %{public}@", buf, 0xCu);
      }
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;

    v7 = *(a1 + 24);
    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 36));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__RBClientInheritanceManager__lock_sendQueuedInheritancesAndUnlock__block_invoke;
    v12[3] = &unk_279B32B80;
    v12[4] = a1;
    v13 = v4;
    v8 = v4;
    [WeakRetained inheritanceManager:a1 didChangeInheritances:v8 completion:v12];

LABEL_13:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_3:
  v2 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock((a1 + 36));
}

uint64_t __67__RBClientInheritanceManager__lock_sendQueuedInheritancesAndUnlock__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 36));
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) gainedInheritances];
  [v2 unionSet:v3];

  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) lostInheritances];
  [v4 minusSet:v5];

  *(*(a1 + 32) + 32) = 0;
  v6 = *(a1 + 32);

  return [(RBClientInheritanceManager *)v6 _lock_sendQueuedInheritancesAndUnlock];
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_inheritances allObjects];
  v4 = [v3 count];

  v5 = [(NSMutableSet *)self->_queuedGainedInheritances allObjects];
  v6 = [v5 count];

  v7 = [(NSMutableSet *)self->_queuedLostInheritances allObjects];
  v8 = [v7 count];

  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [objc_opt_class() description];
  v10 = @" inheritances:[\n\t";
  if (!v4)
  {
    v10 = &stru_287507640;
  }

  v22 = v10;
  v24 = v4;
  if (v4)
  {
    v21 = [(NSMutableSet *)self->_inheritances allObjects];
    v11 = [v21 componentsJoinedByString:{@", \n\t"}];
    v12 = @"\n\t]";
  }

  else
  {
    v12 = &stru_287507640;
    v11 = &stru_287507640;
  }

  if (v6)
  {
    v13 = @" queuedGainedInheritances:[\n\t";
  }

  else
  {
    v13 = &stru_287507640;
  }

  if (v6)
  {
    v20 = [(NSMutableSet *)self->_queuedGainedInheritances allObjects];
    v14 = [v20 componentsJoinedByString:{@", \n\t"}];
    v15 = @"\n\t]";
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = &stru_287507640;
    v14 = &stru_287507640;
    if (v8)
    {
LABEL_11:
      v16 = [(NSMutableSet *)self->_queuedLostInheritances allObjects];
      v17 = [v16 componentsJoinedByString:{@", \n\t"}];
      v18 = [v23 initWithFormat:@"<%@| %@%@%@%@%@%@%@%@%@>", v9, v22, v11, v12, v13, v14, v15, @" queuedLostInheritances:[\n\t", v17, @"\n\t]"];

      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v18 = [v23 initWithFormat:@"<%@| %@%@%@%@%@%@%@%@%@>", v9, v22, v11, v12, v13, v14, v15, &stru_287507640, &stru_287507640, &stru_287507640];
  if (v6)
  {
LABEL_12:
  }

LABEL_13:
  if (v24)
  {
  }

  os_unfair_lock_unlock(&self->_lock);

  return v18;
}

- (RBClientInheritanceManager)initWithInheritances:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = RBClientInheritanceManager;
  v8 = [(RBClientInheritanceManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_awaitingAck = 0;
    v10 = [MEMORY[0x277CBEB58] set];
    inheritances = v9->_inheritances;
    v9->_inheritances = v10;

    if (v6)
    {
      [(RBClientInheritanceManager *)v9 setInheritances:v6];
    }
  }

  return v9;
}

- (RBClientInheritanceManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBClientInheritanceManager.m" lineNumber:46 description:@"wrong initializer"];

  return 0;
}

- (void)setInheritances:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 mutableCopy];
  queuedGainedInheritances = self->_queuedGainedInheritances;
  self->_queuedGainedInheritances = v5;

  v7 = [(NSMutableSet *)self->_inheritances mutableCopy];
  queuedLostInheritances = self->_queuedLostInheritances;
  self->_queuedLostInheritances = v7;

  [(NSMutableSet *)self->_queuedGainedInheritances minusSet:self->_inheritances];
  [(NSMutableSet *)self->_queuedLostInheritances minusSet:v4];

  [(RBClientInheritanceManager *)self _lock_sendQueuedInheritancesAndUnlock];
}

- (RBClientInheritanceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end