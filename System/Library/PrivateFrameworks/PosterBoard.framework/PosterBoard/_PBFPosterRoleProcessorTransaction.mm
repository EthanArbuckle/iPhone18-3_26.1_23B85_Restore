@interface _PBFPosterRoleProcessorTransaction
+ (_PBFPosterRoleProcessorTransaction)transactionWithReason:(id)a3 context:(id)a4 userInfo:(id)a5 observers:(id)a6 processor:(id)a7;
- (NSArray)emittedEvents;
- (NSArray)executedChanges;
- (NSString)description;
- (PBFPosterRoleProcessor)processor;
- (_PBFPosterRoleProcessorTransaction)init;
- (void)appendEmittedEvent:(id)a3;
- (void)appendExecutedChange:(id)a3;
- (void)cancel;
- (void)invalidate;
@end

@implementation _PBFPosterRoleProcessorTransaction

+ (_PBFPosterRoleProcessorTransaction)transactionWithReason:(id)a3 context:(id)a4 userInfo:(id)a5 observers:(id)a6 processor:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = objc_alloc_init(_PBFPosterRoleProcessorTransaction);
  objc_storeWeak(&v17->_processor, v13);

  v18 = [v16 copy];
  reason = v17->_reason;
  v17->_reason = v18;

  objc_storeStrong(&v17->_context, a4);
  v20 = [v15 copy];

  userInfo = v17->_userInfo;
  v17->_userInfo = v20;

  v22 = [v12 pbf_transitionContextIdentifier];
  v23 = [v22 UUIDString];
  v24 = [v23 substringToIndex:7];
  shortIdentifier = v17->_shortIdentifier;
  v17->_shortIdentifier = v24;

  v26 = [v14 copy];
  observers = v17->_observers;
  v17->_observers = v26;

  if (objc_opt_respondsToSelector())
  {
    v28 = [v12 pbf_transitionAffectedRoles];
    if ([v28 count])
    {
      objc_storeStrong(&v17->_affectedRoles, v28);
    }
  }

  return v17;
}

- (_PBFPosterRoleProcessorTransaction)init
{
  v14.receiver = self;
  v14.super_class = _PBFPosterRoleProcessorTransaction;
  v2 = [(_PBFPosterRoleProcessorTransaction *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    cancelFlag = v2->_cancelFlag;
    v2->_cancelFlag = v3;

    v5 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v2->_invalidationFlag;
    v2->_invalidationFlag = v5;

    v7 = objc_opt_new();
    executedChanges = v2->_executedChanges;
    v2->_executedChanges = v7;

    v9 = objc_opt_new();
    emittedEvents = v2->_emittedEvents;
    v2->_emittedEvents = v9;

    v11 = objc_opt_new();
    affectedRoles = v2->_affectedRoles;
    v2->_affectedRoles = v11;
  }

  return v2;
}

- (void)appendEmittedEvent:(id)a3
{
  v4 = a3;
  if (v4 && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0 && ([(BSAtomicFlag *)self->_cancelFlag getFlag]& 1) == 0)
  {
    [(NSMutableArray *)self->_emittedEvents addObject:v4];
  }
}

- (NSArray)emittedEvents
{
  v2 = [(NSMutableArray *)self->_emittedEvents copy];

  return v2;
}

- (void)appendExecutedChange:(id)a3
{
  v4 = a3;
  if (v4 && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0 && ([(BSAtomicFlag *)self->_cancelFlag getFlag]& 1) == 0)
  {
    [(NSMutableArray *)self->_executedChanges addObject:v4];
  }
}

- (NSArray)executedChanges
{
  v2 = [(NSMutableArray *)self->_executedChanges copy];

  return v2;
}

- (void)cancel
{
  if ([(BSAtomicFlag *)self->_cancelFlag setFlag:1])
  {
    [(NSMutableArray *)self->_executedChanges removeAllObjects];
    [(NSMutableArray *)self->_emittedEvents removeAllObjects];

    objc_storeWeak(&self->_processor, 0);
  }
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    [WeakRetained noteTransactionWasInvalidated:self];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BSAtomicFlag getFlag](self->_invalidationFlag withName:{"getFlag"), @"isInvalidated"}];
  v5 = [v3 appendBool:-[BSAtomicFlag getFlag](self->_cancelFlag withName:{"getFlag"), @"isCancelled"}];
  v6 = [v3 appendObject:self->_context withName:@"context" skipIfNil:1];
  v7 = [v3 appendObject:self->_executedChanges withName:@"executedChanges" skipIfNil:1];
  v8 = [v3 appendObject:self->_emittedEvents withName:@"emittedEvents" skipIfNil:1];
  [v3 appendString:self->_reason withName:@"reason"];
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  v10 = [v3 appendPointer:WeakRetained withName:@"owner"];

  v11 = [v3 build];

  return v11;
}

- (PBFPosterRoleProcessor)processor
{
  WeakRetained = objc_loadWeakRetained(&self->_processor);

  return WeakRetained;
}

@end