@interface PSSGRequestState
- (NSSet)pendingKeys;
- (PSSGRequestState)initWithRequestType:(id)type requestedKeys:(id)keys;
- (id)description;
- (id)withLockReturningObject:(id)object;
- (void)markCompleted:(id)completed;
- (void)withLock:(id)lock;
@end

@implementation PSSGRequestState

- (PSSGRequestState)initWithRequestType:(id)type requestedKeys:(id)keys
{
  typeCopy = type;
  keysCopy = keys;
  v13.receiver = self;
  v13.super_class = PSSGRequestState;
  v8 = [(PSSGRequestState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(PSSGRequestState *)v8 setRequestType:typeCopy];
    [(PSSGRequestState *)v9 setRequestedKeys:keysCopy];
    v10 = [MEMORY[0x277CBEB58] setWithSet:keysCopy];
    pendingKeys = v9->_pendingKeys;
    v9->_pendingKeys = v10;
  }

  return v9;
}

- (void)markCompleted:(id)completed
{
  completedCopy = completed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PSSGRequestState_markCompleted___block_invoke;
  v6[3] = &unk_279A483F0;
  v6[4] = self;
  v7 = completedCopy;
  v5 = completedCopy;
  [(PSSGRequestState *)self withLock:v6];
}

- (NSSet)pendingKeys
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__PSSGRequestState_pendingKeys__block_invoke;
  v4[3] = &unk_279A48CF0;
  v4[4] = self;
  v2 = [(PSSGRequestState *)self withLockReturningObject:v4];

  return v2;
}

id __31__PSSGRequestState_pendingKeys__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) copy];

  return v1;
}

- (void)withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)withLockReturningObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v5 = objectCopy[2](objectCopy);

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)description
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__PSSGRequestState_description__block_invoke;
  v4[3] = &unk_279A48CF0;
  v4[4] = self;
  v2 = [(PSSGRequestState *)self withLockReturningObject:v4];

  return v2;
}

id __31__PSSGRequestState_description__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) mutableCopy];
  [v2 minusSet:*(*(a1 + 32) + 8)];
  v3 = [*(*(a1 + 32) + 8) allObjects];
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = [v2 allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 32) requestType];
  v9 = [v7 stringWithFormat:@"pending %@: %@ [completed: %@]", v8, v4, v6];

  return v9;
}

@end