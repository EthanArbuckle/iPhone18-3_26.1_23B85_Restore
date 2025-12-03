@interface TimedAction
- (TimedAction)initWithConnId:(id)id interfaceIndex:(int)index owner:(id)owner target:(unint64_t)target;
- (id)description;
- (void)dealloc;
- (void)setTarget:(unint64_t)target;
@end

@implementation TimedAction

- (TimedAction)initWithConnId:(id)id interfaceIndex:(int)index owner:(id)owner target:(unint64_t)target
{
  v37 = *MEMORY[0x277D85DE8];
  idCopy = id;
  ownerCopy = owner;
  v30.receiver = self;
  v30.super_class = TimedAction;
  v13 = [(TimedAction *)&v30 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v13->_connectionId, id);
  v14->_interfaceIndex = index;
  objc_storeStrong(&v14->_owner, owner);
  v14->_target = target;
  if (v14->_connectionId && v14->_owner)
  {
    date = [MEMORY[0x277CBEAA8] date];
    entryTime = v14->_entryTime;
    v14->_entryTime = date;

    v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    timer = v14->_timer;
    v14->_timer = v17;

    dispatch_source_set_timer(v14->_timer, v14->_target, 0xFFFFFFFFFFFFFFFFLL, 0);
    v19 = v14->_timer;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__TimedAction_initWithConnId_interfaceIndex_owner_target___block_invoke;
    v27[3] = &unk_27898CAB8;
    v28 = v14;
    indexCopy = index;
    dispatch_source_set_event_handler(v19, v27);
    dispatch_activate(v14->_timer);

LABEL_5:
    v20 = v14;
    goto LABEL_9;
  }

  v21 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    connectionId = v14->_connectionId;
    owner = v14->_owner;
    target = v14->_target;
    *buf = 138412802;
    v32 = connectionId;
    v33 = 2112;
    ownerCopy2 = owner;
    v35 = 2048;
    targetCopy = target;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Progress Target: underspecifed action (id/who/target): %@/%@/%llu", buf, 0x20u);
  }

  v20 = 0;
LABEL_9:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

void __58__TimedAction_initWithConnId_interfaceIndex_owner_target___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Progress Target: action fired for %@", &v11, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:*(a1 + 40)];
  v5 = +[ProgressTargetHandler sharedInstance];
  [v5 doActionsForNetworkType:{objc_msgSend(v4, "type")}];

  v6 = connStore;
  v7 = [*(a1 + 32) connectionId];
  [v6 removeObjectForKey:v7];

  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Progress Target: collected for %@", buf, 0xCu);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v6.receiver = self;
  v6.super_class = TimedAction;
  [(TimedAction *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setTarget:(unint64_t)target
{
  v14 = *MEMORY[0x277D85DE8];
  if (target)
  {
    self->_target = target;
    dispatch_source_set_timer(self->_timer, target, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v5 = connStore;
    connectionId = [(TimedAction *)self connectionId];
    [v5 removeObjectForKey:connectionId];

    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }

  v8 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2048;
    targetCopy = target;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Progress Target: action updated for %@: %llu", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [connStore count];
  owner = [(TimedAction *)self owner];
  connectionId = [(TimedAction *)self connectionId];
  v7 = [v3 stringWithFormat:@"%p(%lu): owner: %@, conn: %@, ifIndex: %d", self, v4, owner, connectionId, -[TimedAction interfaceIndex](self, "interfaceIndex")];

  return v7;
}

@end