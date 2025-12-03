@interface SiriCoreNetworkActivityTracing
+ (id)sharedNetworkActivityTracing;
- (SiriCoreNetworkActivityTracing)init;
- (void)_networkActivityActivate:(int64_t)activate;
- (void)_networkActivityAddNWConnection:(id)connection;
- (void)_networkActivityRemoveNWConnection:(id)connection completion:(id)completion;
- (void)_networkActivityStart:(int64_t)start activate:(BOOL)activate;
- (void)_networkActivityStop:(int64_t)stop withReason:(int64_t)reason andError:(id)error;
- (void)_networkActivityTracingCancel;
- (void)currentNetworkActivityTokenWithCompletion:(id)completion;
- (void)networkActivityActivate:(int64_t)activate;
- (void)networkActivityAddNWConnection:(id)connection;
- (void)networkActivityRemoveNWConnection:(id)connection completion:(id)completion;
- (void)networkActivityStart:(int64_t)start activate:(BOOL)activate;
- (void)networkActivityStop:(int64_t)stop withReason:(int64_t)reason andError:(id)error;
- (void)networkActivityTracingCancel;
@end

@implementation SiriCoreNetworkActivityTracing

- (void)_networkActivityRemoveNWConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  if ([(NSMutableSet *)self->_connections containsObject:connectionCopy])
  {
    [(NSMutableSet *)self->_connections removeObject:connectionCopy];
    activities = self->_activities;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__SiriCoreNetworkActivityTracing__networkActivityRemoveNWConnection_completion___block_invoke;
    v9[3] = &unk_279BD5890;
    v10 = connectionCopy;
    [(NSMutableDictionary *)activities enumerateKeysAndObjectsUsingBlock:v9];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_networkActivityAddNWConnection:(id)connection
{
  connectionCopy = connection;
  if (([(NSMutableSet *)self->_connections containsObject:connectionCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
    activities = self->_activities;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__SiriCoreNetworkActivityTracing__networkActivityAddNWConnection___block_invoke;
    v6[3] = &unk_279BD5890;
    v7 = connectionCopy;
    [(NSMutableDictionary *)activities enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)_networkActivityTracingCancel
{
  [(NSMutableDictionary *)self->_activities removeAllObjects];
  connections = self->_connections;

  [(NSMutableSet *)connections removeAllObjects];
}

- (void)_networkActivityStop:(int64_t)stop withReason:(int64_t)reason andError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  activities = self->_activities;
  v10 = stop - 1;
  if ((stop - 1) > 8)
  {
    v11 = @"invalid";
  }

  else
  {
    v11 = off_279BD58B0[v10];
  }

  v12 = v11;
  v13 = [(NSMutableDictionary *)activities objectForKey:v12];

  if (stop == 1)
  {
    v14 = self->_activities;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__SiriCoreNetworkActivityTracing__networkActivityStop_withReason_andError___block_invoke;
    v21[3] = &unk_279BD5868;
    v23 = 1;
    reasonCopy = reason;
    v22 = errorCopy;
    [(NSMutableDictionary *)v14 enumerateKeysAndObjectsUsingBlock:v21];
  }

  if ([v13 hasStarted])
  {
    v15 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (v10 > 8)
      {
        v16 = @"invalid";
      }

      else
      {
        v16 = off_279BD58B0[v10];
      }

      v17 = v16;
      v18 = v17;
      if ((reason - 1) > 4)
      {
        v19 = @"SiriCoreNetworkActivityInvalid";
      }

      else
      {
        v19 = off_279BD58F8[reason - 1];
      }

      *buf = 136315906;
      v26 = "[SiriCoreNetworkActivityTracing _networkActivityStop:withReason:andError:]";
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s Stopping network activity %@ with reason %@ and error: %@", buf, 0x2Au);
    }

    [v13 setHasStarted:0];
    [v13 stopWithCompletionReason:reason andError:errorCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __75__SiriCoreNetworkActivityTracing__networkActivityStop_withReason_andError___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 parentLabel] == a1[5] && objc_msgSend(v4, "hasStarted"))
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[5] - 1;
      if (v6 > 8)
      {
        v7 = @"invalid";
      }

      else
      {
        v7 = off_279BD58B0[v6];
      }

      v8 = v7;
      v9 = v8;
      v10 = a1[6] - 1;
      if (v10 > 4)
      {
        v11 = @"SiriCoreNetworkActivityInvalid";
      }

      else
      {
        v11 = off_279BD58F8[v10];
      }

      v12 = a1[4];
      v14 = 136315906;
      v15 = "[SiriCoreNetworkActivityTracing _networkActivityStop:withReason:andError:]_block_invoke";
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Stopping network sub-activity %@ with reason %@ and error: %@", &v14, 0x2Au);
    }

    [v4 setHasStarted:0];
    [v4 stopWithCompletionReason:a1[6] andError:a1[4]];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_networkActivityActivate:(int64_t)activate
{
  activities = self->_activities;
  if ((activate - 1) > 8)
  {
    v4 = @"invalid";
  }

  else
  {
    v4 = off_279BD58B0[activate - 1];
  }

  v5 = v4;
  v6 = [(NSMutableDictionary *)activities objectForKey:v5];

  [v6 activate];
}

- (void)_networkActivityStart:(int64_t)start activate:(BOOL)activate
{
  activateCopy = activate;
  v26 = *MEMORY[0x277D85DE8];
  if ((start - 1) > 8)
  {
    v7 = @"invalid";
  }

  else
  {
    v7 = off_279BD58B0[start - 1];
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_activities objectForKey:v8];
  if (!v9)
  {
    if (start == 1)
    {
      v10 = [[SiriCoreNetworkActivity alloc] initWithLabel:1 parent:0];
      if (v10)
      {
LABEL_7:
        [(NSMutableDictionary *)self->_activities setObject:v10 forKey:v8];
        if (activateCopy)
        {
          [(SiriCoreNetworkActivityTracing *)self _networkActivityActivate:start];
        }

        if ([(NSMutableSet *)self->_connections count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = self->_connections;
          v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [(SiriCoreNetworkActivity *)v10 addConnection:*(*(&v21 + 1) + 8 * i), v21];
              }

              v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
            }

            while (v13);
          }
        }

        v16 = v10;
        goto LABEL_25;
      }
    }

    else
    {
      v17 = [(NSMutableDictionary *)self->_activities objectForKey:@"uiRequest"];
      v18 = v17;
      if (v17)
      {
        nwActivity = [v17 nwActivity];
        v10 = [[SiriCoreNetworkActivity alloc] initWithLabel:start parent:nwActivity];
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        goto LABEL_7;
      }
    }

    if ([0 hasStarted])
    {
LABEL_26:

      goto LABEL_27;
    }

    v16 = 0;
LABEL_25:
    [(SiriCoreNetworkActivity *)v16 setHasStarted:1, v21];
    goto LABEL_26;
  }

LABEL_27:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)currentNetworkActivityTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SiriCoreNetworkActivityTracing_currentNetworkActivityTokenWithCompletion___block_invoke;
  v7[3] = &unk_279BD6148;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __76__SiriCoreNetworkActivityTracing_currentNetworkActivityTokenWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:@"uiRequest"];
  v3 = *(a1 + 40);
  v5 = v2;
  if (v2)
  {
    v4 = [v2 nwActivityToken];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

- (void)networkActivityRemoveNWConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SiriCoreNetworkActivityTracing_networkActivityRemoveNWConnection_completion___block_invoke;
  block[3] = &unk_279BD65D8;
  block[4] = self;
  v12 = connectionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = connectionCopy;
  dispatch_async(queue, block);
}

- (void)networkActivityAddNWConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SiriCoreNetworkActivityTracing_networkActivityAddNWConnection___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)networkActivityTracingCancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SiriCoreNetworkActivityTracing_networkActivityTracingCancel__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)networkActivityStop:(int64_t)stop withReason:(int64_t)reason andError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SiriCoreNetworkActivityTracing_networkActivityStop_withReason_andError___block_invoke;
  v11[3] = &unk_279BD5840;
  stopCopy = stop;
  reasonCopy = reason;
  v11[4] = self;
  v12 = errorCopy;
  v10 = errorCopy;
  dispatch_async(queue, v11);
}

- (void)networkActivityActivate:(int64_t)activate
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SiriCoreNetworkActivityTracing_networkActivityActivate___block_invoke;
  v4[3] = &unk_279BD6170;
  v4[4] = self;
  v4[5] = activate;
  dispatch_async(queue, v4);
}

- (void)networkActivityStart:(int64_t)start activate:(BOOL)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SiriCoreNetworkActivityTracing_networkActivityStart_activate___block_invoke;
  block[3] = &unk_279BD5AD0;
  block[4] = self;
  block[5] = start;
  activateCopy = activate;
  dispatch_async(queue, block);
}

- (SiriCoreNetworkActivityTracing)init
{
  v12.receiver = self;
  v12.super_class = SiriCoreNetworkActivityTracing;
  v2 = [(SiriCoreNetworkActivityTracing *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
    activities = v2->_activities;
    v2->_activities = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    connections = v2->_connections;
    v2->_connections = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);

    v9 = dispatch_queue_create("network.activity.tracing", v8);
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

+ (id)sharedNetworkActivityTracing
{
  if (sharedNetworkActivityTracing_sActivityTracerInitToken != -1)
  {
    dispatch_once(&sharedNetworkActivityTracing_sActivityTracerInitToken, &__block_literal_global);
  }

  v3 = sharedNetworkActivityTracing_sActivityTracer;

  return v3;
}

uint64_t __62__SiriCoreNetworkActivityTracing_sharedNetworkActivityTracing__block_invoke()
{
  sharedNetworkActivityTracing_sActivityTracer = objc_alloc_init(SiriCoreNetworkActivityTracing);

  return MEMORY[0x2821F96F8]();
}

@end