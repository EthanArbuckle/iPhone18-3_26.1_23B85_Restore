@interface _PBFPosterRoleProcessorTransaction
+ (_PBFPosterRoleProcessorTransaction)transactionWithReason:(id)reason context:(id)context userInfo:(id)info observers:(id)observers processor:(id)processor;
- (NSArray)emittedEvents;
- (NSArray)executedChanges;
- (NSString)description;
- (PBFPosterRoleProcessor)processor;
- (_PBFPosterRoleProcessorTransaction)init;
- (void)appendEmittedEvent:(id)event;
- (void)appendExecutedChange:(id)change;
- (void)cancel;
- (void)invalidate;
@end

@implementation _PBFPosterRoleProcessorTransaction

+ (_PBFPosterRoleProcessorTransaction)transactionWithReason:(id)reason context:(id)context userInfo:(id)info observers:(id)observers processor:(id)processor
{
  contextCopy = context;
  processorCopy = processor;
  observersCopy = observers;
  infoCopy = info;
  reasonCopy = reason;
  v17 = objc_alloc_init(_PBFPosterRoleProcessorTransaction);
  objc_storeWeak(&v17->_processor, processorCopy);

  v18 = [reasonCopy copy];
  reason = v17->_reason;
  v17->_reason = v18;

  objc_storeStrong(&v17->_context, context);
  v20 = [infoCopy copy];

  userInfo = v17->_userInfo;
  v17->_userInfo = v20;

  pbf_transitionContextIdentifier = [contextCopy pbf_transitionContextIdentifier];
  uUIDString = [pbf_transitionContextIdentifier UUIDString];
  v24 = [uUIDString substringToIndex:7];
  shortIdentifier = v17->_shortIdentifier;
  v17->_shortIdentifier = v24;

  v26 = [observersCopy copy];
  observers = v17->_observers;
  v17->_observers = v26;

  if (objc_opt_respondsToSelector())
  {
    pbf_transitionAffectedRoles = [contextCopy pbf_transitionAffectedRoles];
    if ([pbf_transitionAffectedRoles count])
    {
      objc_storeStrong(&v17->_affectedRoles, pbf_transitionAffectedRoles);
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

- (void)appendEmittedEvent:(id)event
{
  eventCopy = event;
  if (eventCopy && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0 && ([(BSAtomicFlag *)self->_cancelFlag getFlag]& 1) == 0)
  {
    [(NSMutableArray *)self->_emittedEvents addObject:eventCopy];
  }
}

- (NSArray)emittedEvents
{
  v2 = [(NSMutableArray *)self->_emittedEvents copy];

  return v2;
}

- (void)appendExecutedChange:(id)change
{
  changeCopy = change;
  if (changeCopy && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0 && ([(BSAtomicFlag *)self->_cancelFlag getFlag]& 1) == 0)
  {
    [(NSMutableArray *)self->_executedChanges addObject:changeCopy];
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

  build = [v3 build];

  return build;
}

- (PBFPosterRoleProcessor)processor
{
  WeakRetained = objc_loadWeakRetained(&self->_processor);

  return WeakRetained;
}

@end