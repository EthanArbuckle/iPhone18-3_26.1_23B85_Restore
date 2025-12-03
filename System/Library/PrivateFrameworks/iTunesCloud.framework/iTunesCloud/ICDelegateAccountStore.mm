@interface ICDelegateAccountStore
+ (void)openWithOptions:(id)options completionHandler:(id)handler;
- (BOOL)_resetCorruptionUsingSQL;
- (BOOL)connectionNeedsResetForCorruption:(id)corruption;
- (id)_initWithValidatedOptions:(id)options;
- (id)_popConnection;
- (id)initSingleWriterWithOptions:(id)options error:(id *)error;
- (void)_openWithXPCWriter:(id)writer completionHandler:(id)handler;
- (void)_postDidChangeNotification;
- (void)_recycleConnection:(id)connection;
- (void)_resetCorruptionUsingXPC;
- (void)_writeSQLUsingBlock:(id)block;
- (void)_writeUsingBlock:(id)block;
- (void)_writeXPCUsingBlock:(id)block;
- (void)addDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler;
- (void)close;
- (void)readUsingBlock:(id)block;
- (void)removeAllTokensWithCompletionHandler:(id)handler;
- (void)removeDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler;
- (void)removeIdentityPropertiesForUserIdentity:(id)identity completionHandler:(id)handler;
- (void)removeTokenForUserIdentity:(id)identity completionHandler:(id)handler;
- (void)removeTokensExpiringBeforeDate:(id)date completionHandler:(id)handler;
- (void)setIdentityProperties:(id)properties forUserIdentity:(id)identity completionHandler:(id)handler;
- (void)setToken:(id)token forUserIdentity:(id)identity completionHandler:(id)handler;
@end

@implementation ICDelegateAccountStore

- (void)_writeXPCUsingBlock:(id)block
{
  blockCopy = block;
  v4 = self->_xpcWriter;
  blockCopy[2](blockCopy, v4);
}

- (void)_writeUsingBlock:(id)block
{
  blockCopy = block;
  if (!self->_isOpen)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Cannot use a closed delegate account store: %@", self}];
  }

  if ([(ICDelegateAccountStoreOptions *)self->_options isSingleWriter])
  {
    [(ICDelegateAccountStore *)self _writeSQLUsingBlock:blockCopy];
  }

  else
  {
    [(ICDelegateAccountStore *)self _writeXPCUsingBlock:blockCopy];
  }
}

- (void)_writeSQLUsingBlock:(id)block
{
  blockCopy = block;
  _popConnection = [(ICDelegateAccountStore *)self _popConnection];
  v6 = [[ICDelegateAccountStoreReader alloc] initWithConnection:_popConnection];
  v7 = [[ICDelegateAccountStoreSQLWriter alloc] initWithConnection:_popConnection];
  lastExpirationPruningDate = [(ICDelegateAccountStoreReader *)v6 lastExpirationPruningDate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ICDelegateAccountStore__writeSQLUsingBlock___block_invoke;
  v9[3] = &unk_1E7BF46E0;
  v9[4] = lastExpirationPruningDate;
  v10 = v7;
  v11 = blockCopy;
  [_popConnection performTransaction:v9];

  [(ICDelegateAccountStoreReader *)v6 invalidate];
  [(ICDelegateAccountStoreSQLWriter *)v7 invalidate];

  [(ICDelegateAccountStore *)self _recycleConnection:_popConnection];
}

uint64_t __46__ICDelegateAccountStore__writeSQLUsingBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v3 = v2;
  if (!*(a1 + 32) || ([v2 timeIntervalSinceDate:?], v4 >= 43200.0))
  {
    [*(a1 + 40) removeTokensExpiringBeforeDate:v3 completionHandler:0];
  }

  (*(*(a1 + 48) + 16))();

  return 1;
}

- (void)_resetCorruptionUsingXPC
{
  xpcWriter = self->_xpcWriter;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__ICDelegateAccountStore__resetCorruptionUsingXPC__block_invoke;
  v3[3] = &unk_1E7BF7958;
  v3[4] = self;
  [(ICDelegateAccountStoreXPCWriter *)xpcWriter recreateWithCompletionHandler:v3];
}

void __50__ICDelegateAccountStore__resetCorruptionUsingXPC__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_FAULT, "Could not recreate delegate account store: %{public}@", &v7, 0xCu);
    }
  }
}

- (BOOL)_resetCorruptionUsingSQL
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = __SQLiteOptionsWithAccountStoreOptions(self->_options);
  v4 = [[ICSQLiteConnection alloc] initWithOptions:v3];
  if (![(ICSQLiteConnection *)v4 truncate])
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_FAULT, "Could not truncate delegate account store for reset", buf, 2u);
    }

    goto LABEL_9;
  }

  v10 = 0;
  v5 = __SetupSingleWriterWithConnection(v4, &v10);
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_FAULT, "Could not setup delegate account store for reset: %{public}@", buf, 0xCu);
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  [(ICSQLiteConnection *)v4 setDelegate:self];
  [(ICDelegateAccountStore *)self _recycleConnection:v4];
  [(ICDelegateAccountStore *)self _postDidChangeNotification];
  v7 = 1;
LABEL_10:

  return v7;
}

- (void)_recycleConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_connectionPool count]> 2)
  {
    os_unfair_lock_unlock(&self->_lock);
    [connectionCopy close];
  }

  else
  {
    [(NSMutableArray *)self->_connectionPool addObject:connectionCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_postDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICDelegateAccountStoreDidChangeNotification" object:self];
}

- (id)_popConnection
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_connectionPool count])
  {
    v3 = [(NSMutableArray *)self->_connectionPool objectAtIndex:0];
    [(NSMutableArray *)self->_connectionPool removeObjectAtIndex:0];
    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v4 = __SQLiteOptionsWithAccountStoreOptions(self->_options);
  [v4 setReadOnly:{-[ICDelegateAccountStoreOptions isSingleWriter](self->_options, "isSingleWriter") ^ 1}];
  v3 = [[ICSQLiteConnection alloc] initWithOptions:v4];
  [(ICSQLiteConnection *)v3 setDelegate:self];

LABEL_6:

  return v3;
}

- (void)_openWithXPCWriter:(id)writer completionHandler:(id)handler
{
  writerCopy = writer;
  handlerCopy = handler;
  objc_storeStrong(&self->_xpcWriter, writer);
  objc_initWeak(&location, self);
  xpcWriter = self->_xpcWriter;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__ICDelegateAccountStore__openWithXPCWriter_completionHandler___block_invoke;
  v14[3] = &unk_1E7BFA328;
  objc_copyWeak(&v15, &location);
  [(ICDelegateAccountStoreXPCWriter *)xpcWriter setExternalChangeHandler:v14];
  v10 = self->_xpcWriter;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__ICDelegateAccountStore__openWithXPCWriter_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF46B8;
  v12[4] = self;
  v11 = handlerCopy;
  v13 = v11;
  [(ICDelegateAccountStoreXPCWriter *)v10 openWithCompletionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __63__ICDelegateAccountStore__openWithXPCWriter_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _postDidChangeNotification];
    WeakRetained = v2;
  }
}

void __63__ICDelegateAccountStore__openWithXPCWriter_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  v6 = *(*(a1 + 32) + 24);
  if (a3)
  {
    [v6 setDatabasePath:a3];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [v6 XPCServiceName];
    v8 = [v7 length];

    if (v8 && [v14 code] == -7003 && (objc_msgSend(v14, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"ICError"), v9, v10))
    {
      v11 = +[ICDelegateAccountStoreSchema defaultDatabasePath];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 length];
    v13 = *(a1 + 32);
    if (v12)
    {
      [v13[3] setDatabasePath:v11];
    }

    else
    {
      [v13 close];
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)connectionNeedsResetForCorruption:(id)corruption
{
  if ([(ICDelegateAccountStoreOptions *)self->_options isSingleWriter])
  {

    return [(ICDelegateAccountStore *)self _resetCorruptionUsingSQL];
  }

  else
  {
    [(ICDelegateAccountStore *)self _resetCorruptionUsingXPC];
    return 0;
  }
}

- (void)setToken:(id)token forUserIdentity:(id)identity completionHandler:(id)handler
{
  tokenCopy = token;
  identityCopy = identity;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__ICDelegateAccountStore_setToken_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF4640;
  v15 = tokenCopy;
  v16 = identityCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = identityCopy;
  v13 = tokenCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v14];
}

void __69__ICDelegateAccountStore_setToken_forUserIdentity_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ICDelegateAccountStore_setToken_forUserIdentity_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7BF98C0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 setToken:v3 forUserIdentity:v4 completionHandler:v6];
}

uint64_t __69__ICDelegateAccountStore_setToken_forUserIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)setIdentityProperties:(id)properties forUserIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ICDelegateAccountStore_setIdentityProperties_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF4640;
  v15 = propertiesCopy;
  v16 = identityCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = identityCopy;
  v13 = propertiesCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v14];
}

void __82__ICDelegateAccountStore_setIdentityProperties_forUserIdentity_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__ICDelegateAccountStore_setIdentityProperties_forUserIdentity_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7BF98C0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 setIdentityProperties:v3 forUserIdentity:v4 completionHandler:v6];
}

uint64_t __82__ICDelegateAccountStore_setIdentityProperties_forUserIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)removeTokensExpiringBeforeDate:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ICDelegateAccountStore_removeTokensExpiringBeforeDate_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF4690;
  v11 = dateCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = dateCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v10];
}

void __75__ICDelegateAccountStore_removeTokensExpiringBeforeDate_completionHandler___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__ICDelegateAccountStore_removeTokensExpiringBeforeDate_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7BF98C0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 removeTokensExpiringBeforeDate:v3 completionHandler:v5];
}

uint64_t __75__ICDelegateAccountStore_removeTokensExpiringBeforeDate_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)removeTokenForUserIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ICDelegateAccountStore_removeTokenForUserIdentity_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF4690;
  v11 = identityCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = identityCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v10];
}

void __71__ICDelegateAccountStore_removeTokenForUserIdentity_completionHandler___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__ICDelegateAccountStore_removeTokenForUserIdentity_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7BF98C0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 removeTokenForUserIdentity:v3 completionHandler:v5];
}

uint64_t __71__ICDelegateAccountStore_removeTokenForUserIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)removeIdentityPropertiesForUserIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ICDelegateAccountStore_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF4690;
  v11 = identityCopy;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = identityCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v10];
}

void __84__ICDelegateAccountStore_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__ICDelegateAccountStore_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7BF98C0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 removeIdentityPropertiesForUserIdentity:v3 completionHandler:v5];
}

uint64_t __84__ICDelegateAccountStore_removeIdentityPropertiesForUserIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)removeDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ICDelegateAccountStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF4640;
  v15 = dsCopy;
  v16 = identityCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = identityCopy;
  v13 = dsCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v14];
}

void __82__ICDelegateAccountStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__ICDelegateAccountStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7BF98C0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 removeDelegationUUIDs:v3 forUserIdentity:v4 completionHandler:v6];
}

uint64_t __82__ICDelegateAccountStore_removeDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)removeAllTokensWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__ICDelegateAccountStore_removeAllTokensWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7BF4668;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v6];
}

void __63__ICDelegateAccountStore_removeAllTokensWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__ICDelegateAccountStore_removeAllTokensWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7BF98C0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 removeAllTokensWithCompletionHandler:v4];
}

uint64_t __63__ICDelegateAccountStore_removeAllTokensWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)addDelegationUUIDs:(id)ds forUserIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__ICDelegateAccountStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF4640;
  v15 = dsCopy;
  v16 = identityCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = identityCopy;
  v13 = dsCopy;
  [(ICDelegateAccountStore *)self _writeUsingBlock:v14];
}

void __79__ICDelegateAccountStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__ICDelegateAccountStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7BF98C0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 addDelegationUUIDs:v3 forUserIdentity:v4 completionHandler:v6];
}

uint64_t __79__ICDelegateAccountStore_addDelegationUUIDs_forUserIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 32) _postDidChangeNotification];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)readUsingBlock:(id)block
{
  blockCopy = block;
  if (!self->_isOpen)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Cannot use a closed delegate account store: %@", self}];
  }

  _popConnection = [(ICDelegateAccountStore *)self _popConnection];
  v5 = [[ICDelegateAccountStoreReader alloc] initWithConnection:_popConnection];
  blockCopy[2](blockCopy, v5);
  [(ICDelegateAccountStoreReader *)v5 invalidate];

  [(ICDelegateAccountStore *)self _recycleConnection:_popConnection];
}

- (void)close
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_connectionPool;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 setDelegate:{0, v11}];
        [v8 close];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  connectionPool = self->_connectionPool;
  self->_connectionPool = 0;

  [(ICDelegateAccountStoreXPCWriter *)self->_xpcWriter invalidate];
  self->_isOpen = 0;
  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;
}

- (id)initSingleWriterWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if (([optionsCopy isSingleWriter] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"options not single-writer"];
  }

  v7 = __SQLiteOptionsWithAccountStoreOptions(optionsCopy);
  v8 = [[ICSQLiteConnection alloc] initWithOptions:v7];
  v15 = 0;
  v9 = __SetupSingleWriterWithConnection(v8, &v15);
  v10 = v15;
  if (v9)
  {
    v11 = [(ICDelegateAccountStore *)self _initWithValidatedOptions:optionsCopy];
    if (v11)
    {
      v12 = v11;
      [(ICSQLiteConnection *)v8 setDelegate:v11];
      [v12[1] addObject:v8];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (error)
  {
    v13 = v10;
    v12 = 0;
    *error = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (id)_initWithValidatedOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = ICDelegateAccountStore;
  v5 = [(ICDelegateAccountStore *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    connectionPool = v5->_connectionPool;
    v5->_connectionPool = v6;

    v5->_isOpen = 1;
    v5->_lock._os_unfair_lock_opaque = 0;
    v8 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v8;

    objc_storeStrong(&v5->_strongSelf, v5);
  }

  return v5;
}

+ (void)openWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if ([optionsCopy isSingleWriter])
  {
    v12 = 0;
    v8 = [[self alloc] initSingleWriterWithOptions:optionsCopy error:&v12];
    v9 = v12;
    handlerCopy[2](handlerCopy, v8, v9);
  }

  else
  {
    v10 = [[ICDelegateAccountStoreXPCWriter alloc] initWithAccountStoreOptions:optionsCopy];
    if (v10)
    {
      v11 = [[self alloc] _initWithValidatedOptions:optionsCopy];
      [v11 _openWithXPCWriter:v10 completionHandler:handlerCopy];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid XPC options"];
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }
}

@end