@interface PKInboxDataSource
- (BOOL)hasInboxMessages;
- (BOOL)inboxVisible;
- (PKInboxDataSource)initWithDelegate:(id)delegate;
- (id)activeInboxMessages;
- (id)expiredInboxMessages;
- (id)inboxMessageWithIdentifier:(id)identifier;
- (unint64_t)badgeCount;
- (void)_accountUserInvitationsCompletion:(id)completion;
- (void)_updateInboxMessages;
- (void)dealloc;
- (void)updateInboxWithCompletion:(id)completion;
@end

@implementation PKInboxDataSource

- (void)_updateInboxMessages
{
  os_unfair_lock_lock(&self->_lock);
  updatingInbox = self->_updatingInbox;
  os_unfair_lock_unlock(&self->_lock);
  if (!updatingInbox)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_updatingInbox = 1;
    os_unfair_lock_unlock(&self->_lock);
    v4 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __41__PKInboxDataSource__updateInboxMessages__block_invoke;
    v20[3] = &unk_1E8015210;
    v20[4] = self;
    v8 = v6;
    v21 = v8;
    v9 = v7;
    v22 = v9;
    v10 = v5;
    v23 = v10;
    [v4 addOperation:v20];
    null = [MEMORY[0x1E695DFB0] null];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__PKInboxDataSource__updateInboxMessages__block_invoke_3;
    v16[3] = &unk_1E8020910;
    v16[4] = self;
    v17 = v10;
    v18 = v9;
    v19 = v8;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = [v4 evaluateWithInput:null completion:v16];
  }
}

void __41__PKInboxDataSource__updateInboxMessages__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__PKInboxDataSource__updateInboxMessages__block_invoke_2;
  v12[3] = &unk_1E8023318;
  v8 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v6;
  v17 = v7;
  v15 = v9;
  v10 = v6;
  v11 = v7;
  [v8 _accountUserInvitationsCompletion:v12];
}

void __41__PKInboxDataSource__updateInboxMessages__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 isHidden];
        v10 = (a1 + 32);
        if ((v9 & 1) == 0)
        {
          if ([v8 isExpired])
          {
            v11 = 40;
          }

          else
          {
            v11 = 48;
          }

          v10 = (a1 + v11);
        }

        [*v10 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 64) + 16))();
}

void __41__PKInboxDataSource__updateInboxMessages__block_invoke_3(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 60));
  if (PKEqualObjects() && PKEqualObjects())
  {
    v2 = PKEqualObjects() ^ 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = [*(a1 + 56) copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  v9 = [*(a1 + 48) copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [*(*(a1 + 32) + 24) count] || objc_msgSend(*(*(a1 + 32) + 32), "count") || objc_msgSend(*(*(a1 + 32) + 40), "count") != 0;
  if ([*(*(a1 + 32) + 24) count])
  {
    v13 = 1;
  }

  else
  {
    v13 = [*(*(a1 + 32) + 40) count] != 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = *(*(a1 + 32) + 24);
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v17 += [*(*(&v32 + 1) + 8 * i) shouldBadge];
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  *(*(a1 + 32) + 72) = v17;
  *(*(a1 + 32) + 65) = v13;
  *(*(a1 + 32) + 64) = v12;
  *(*(a1 + 32) + 56) = 0;
  v20 = [*(*(a1 + 32) + 48) copy];
  [*(*(a1 + 32) + 48) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 60));
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v22 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained inboxDataSourceDidUpdateInboxMessages:*(a1 + 32)];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = v20;
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        (*(*(*(&v28 + 1) + 8 * j) + 16))(*(*(&v28 + 1) + 8 * j));
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v25);
  }
}

- (BOOL)inboxVisible
{
  os_unfair_lock_lock(&self->_lock);
  inboxVisible = self->_inboxVisible;
  os_unfair_lock_unlock(&self->_lock);
  return inboxVisible;
}

- (PKInboxDataSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKInboxDataSource;
  v5 = [(PKInboxDataSource *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v6->_paymentService;
    v6->_paymentService = paymentService;

    [(PKPaymentService *)v6->_paymentService registerObserver:v6];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    inboxUpdateCompletionBlocks = v6->_inboxUpdateCompletionBlocks;
    v6->_inboxUpdateCompletionBlocks = v9;

    v6->_lock._os_unfair_lock_opaque = 0;
    [(PKInboxDataSource *)v6 _updateInboxMessages];
  }

  return v6;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKInboxDataSource;
  [(PKInboxDataSource *)&v3 dealloc];
}

- (id)activeInboxMessages
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_activeInboxMessages copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)expiredInboxMessages
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_expiredInboxMessages copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)inboxMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    activeInboxMessages = self->_activeInboxMessages;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__PKInboxDataSource_inboxMessageWithIdentifier___block_invoke;
    v17[3] = &unk_1E80232F0;
    v6 = identifierCopy;
    v18 = v6;
    v7 = [(NSMutableArray *)activeInboxMessages pk_firstObjectPassingTest:v17];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      hiddenInboxMessages = self->_hiddenInboxMessages;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__PKInboxDataSource_inboxMessageWithIdentifier___block_invoke_2;
      v15[3] = &unk_1E80232F0;
      v10 = v6;
      v16 = v10;
      v8 = [(NSMutableArray *)hiddenInboxMessages pk_firstObjectPassingTest:v15];

      if (!v8)
      {
        expiredInboxMessages = self->_expiredInboxMessages;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __48__PKInboxDataSource_inboxMessageWithIdentifier___block_invoke_3;
        v13[3] = &unk_1E80232F0;
        v14 = v10;
        v8 = [(NSMutableArray *)expiredInboxMessages pk_firstObjectPassingTest:v13];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __48__PKInboxDataSource_inboxMessageWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

uint64_t __48__PKInboxDataSource_inboxMessageWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

uint64_t __48__PKInboxDataSource_inboxMessageWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)updateInboxWithCompletion:(id)completion
{
  aBlock = completion;
  os_unfair_lock_lock(&self->_lock);
  if (aBlock)
  {
    inboxUpdateCompletionBlocks = self->_inboxUpdateCompletionBlocks;
    v5 = _Block_copy(aBlock);
    [(NSMutableArray *)inboxUpdateCompletionBlocks addObject:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(PKInboxDataSource *)self _updateInboxMessages];
}

- (unint64_t)badgeCount
{
  os_unfair_lock_lock(&self->_lock);
  badgeCount = self->_badgeCount;
  os_unfair_lock_unlock(&self->_lock);
  return badgeCount;
}

- (BOOL)hasInboxMessages
{
  os_unfair_lock_lock(&self->_lock);
  hasInboxMessages = self->_hasInboxMessages;
  os_unfair_lock_unlock(&self->_lock);
  return hasInboxMessages;
}

- (void)_accountUserInvitationsCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__61;
  v17[4] = __Block_byref_object_dispose__61;
  v18 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke;
  v16[3] = &unk_1E8016750;
  v16[4] = self;
  v16[5] = v17;
  [v5 addOperation:v16];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__61;
  v14[4] = __Block_byref_object_dispose__61;
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_4;
  v13[3] = &unk_1E8016750;
  v13[4] = self;
  v13[5] = v14;
  [v5 addOperation:v13];
  null = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_6;
  v9[3] = &unk_1E8023368;
  v11 = v17;
  v12 = v14;
  v7 = completionCopy;
  v10 = v7;
  v8 = [v5 evaluateWithInput:null completion:v9];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v17, 8);
}

void __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_2;
  v12[3] = &unk_1E801B7E8;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v8 featureApplicationsForAccountUserInvitationWithCompletion:v12];
}

void __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pk_objectsPassingTest:&__block_literal_global_236];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  (*(*(a1 + 40) + 16))();
}

uint64_t __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 applicationState];
  v4 = [v2 applicationStateReason];

  IsTerminal = PKFeatureApplicationStateIsTerminal();
  v7 = v3 == 14 && v4 == 14;
  if (v3 == 12)
  {
    v7 = 1;
  }

  return !IsTerminal || v7;
}

void __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_5;
  v12[3] = &unk_1E8012DD0;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v8 familyMembersWithCompletion:v12];
}

void __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 altDSID];
        if (v11)
        {
          [v4 setObject:v10 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  (*(*(a1 + 40) + 16))();
}

void __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_6(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_7;
  v4[3] = &unk_1E8023340;
  v4[4] = a1[6];
  v3 = [v2 pk_arrayByApplyingBlock:v4];
  (*(a1[4] + 16))();
}

id __55__PKInboxDataSource__accountUserInvitationsCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 invitationDetails];
  v5 = [v4 originatorAltDSID];

  if (v5)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PKInboxMessage accountUserInvitationInboxMessageWithAccountUserInvitation:v3 familyMember:v6];

  return v7;
}

@end