@interface WiFiPolicyNetworkActivityTracing
+ (id)sharedNetworkActivityTracing;
- (BOOL)hasActivitiesRunning;
- (WiFiPolicyNetworkActivityTracing)init;
- (void)_networkActivityActivate:(int64_t)activate;
- (void)_networkActivityAddNWConnection:(id)connection toActivityWithLabel:(int64_t)label;
- (void)_networkActivityRemoveNWConnection:(id)connection fromActivityWithLabel:(int64_t)label completion:(id)completion;
- (void)_networkActivityStart:(int64_t)start activate:(BOOL)activate;
- (void)_networkActivityTracingCancel;
- (void)currentNetworkActivityTokenWithCompletion:(id)completion;
- (void)networkActivityActivate:(int64_t)activate;
- (void)networkActivityAddNWConnection:(id)connection toActivityWithLabel:(int64_t)label;
- (void)networkActivityRemoveNWConnection:(id)connection fromActivityWithLabel:(int64_t)label completion:(id)completion;
- (void)networkActivityStart:(int64_t)start activate:(BOOL)activate;
- (void)networkActivityStop:(int64_t)stop withReason:(int)reason withClientMetric:(const char *)metric withClientDict:(id)dict andError:(id)error;
- (void)networkActivityTracingCompleteConnectionsActivities;
@end

@implementation WiFiPolicyNetworkActivityTracing

+ (id)sharedNetworkActivityTracing
{
  if (sharedNetworkActivityTracing_sActivityTracerInitToken != -1)
  {
    +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  }

  v3 = sharedNetworkActivityTracing_sActivityTracer;

  return v3;
}

uint64_t __64__WiFiPolicyNetworkActivityTracing_sharedNetworkActivityTracing__block_invoke()
{
  v0 = objc_alloc_init(WiFiPolicyNetworkActivityTracing);
  v1 = sharedNetworkActivityTracing_sActivityTracer;
  sharedNetworkActivityTracing_sActivityTracer = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WiFiPolicyNetworkActivityTracing)init
{
  v12.receiver = self;
  v12.super_class = WiFiPolicyNetworkActivityTracing;
  v2 = [(WiFiPolicyNetworkActivityTracing *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
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

- (void)networkActivityStart:(int64_t)start activate:(BOOL)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WiFiPolicyNetworkActivityTracing_networkActivityStart_activate___block_invoke;
  block[3] = &unk_2789C6D88;
  block[4] = self;
  block[5] = start;
  activateCopy = activate;
  dispatch_async(queue, block);
}

- (void)networkActivityActivate:(int64_t)activate
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__WiFiPolicyNetworkActivityTracing_networkActivityActivate___block_invoke;
  v4[3] = &unk_2789C7170;
  v4[4] = self;
  v4[5] = activate;
  dispatch_async(queue, v4);
}

- (void)networkActivityStop:(int64_t)stop withReason:(int)reason withClientMetric:(const char *)metric withClientDict:(id)dict andError:(id)error
{
  dictCopy = dict;
  errorCopy = error;
  if (stop == 1)
  {
    NSLog(&cfstr_SLinktest.isa, "[WiFiPolicyNetworkActivityTracing networkActivityStop:withReason:withClientMetric:withClientDict:andError:]", @"linkTest");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__WiFiPolicyNetworkActivityTracing_networkActivityStop_withReason_withClientMetric_withClientDict_andError___block_invoke;
  block[3] = &unk_2789C8038;
  reasonCopy = reason;
  stopCopy = stop;
  metricCopy = metric;
  block[4] = self;
  v18 = dictCopy;
  v19 = errorCopy;
  v15 = errorCopy;
  v16 = dictCopy;
  dispatch_async(queue, block);
}

- (void)networkActivityTracingCompleteConnectionsActivities
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WiFiPolicyNetworkActivityTracing_networkActivityTracingCompleteConnectionsActivities__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)networkActivityAddNWConnection:(id)connection toActivityWithLabel:(int64_t)label
{
  connectionCopy = connection;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WiFiPolicyNetworkActivityTracing_networkActivityAddNWConnection_toActivityWithLabel___block_invoke;
  block[3] = &unk_2789C7008;
  block[4] = self;
  v10 = connectionCopy;
  labelCopy = label;
  v8 = connectionCopy;
  dispatch_async(queue, block);
}

- (void)networkActivityRemoveNWConnection:(id)connection fromActivityWithLabel:(int64_t)label completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__WiFiPolicyNetworkActivityTracing_networkActivityRemoveNWConnection_fromActivityWithLabel_completion___block_invoke;
  v13[3] = &unk_2789C8060;
  v13[4] = self;
  v14 = connectionCopy;
  v15 = completionCopy;
  labelCopy = label;
  v11 = completionCopy;
  v12 = connectionCopy;
  dispatch_async(queue, v13);
}

- (void)currentNetworkActivityTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__WiFiPolicyNetworkActivityTracing_currentNetworkActivityTokenWithCompletion___block_invoke;
  v7[3] = &unk_2789C6BA8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __78__WiFiPolicyNetworkActivityTracing_currentNetworkActivityTokenWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:@"linkTest"];
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

- (BOOL)hasActivitiesRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__WiFiPolicyNetworkActivityTracing_hasActivitiesRunning__block_invoke;
  v5[3] = &unk_2789C73A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __56__WiFiPolicyNetworkActivityTracing_hasActivitiesRunning__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_networkActivityStart:(int64_t)start activate:(BOOL)activate
{
  activateCopy = activate;
  v30 = *MEMORY[0x277D85DE8];
  v7 = _labelDescription(start);
  v8 = [(NSMutableDictionary *)self->_activities objectForKey:v7];
  if (!v8)
  {
    if (start == 1)
    {
      v11 = [[WiFiPolicyNetworkActivity alloc] initWithLabel:1 parent:0];
      if (v11)
      {
LABEL_5:
        [(NSMutableDictionary *)self->_activities setObject:v11 forKey:v7];
        if (activateCopy)
        {
          [(WiFiPolicyNetworkActivityTracing *)self _networkActivityActivate:start];
        }

        if ([(NSMutableSet *)self->_connections count])
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = self->_connections;
          v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v26;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v26 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [(WiFiPolicyNetworkActivity *)v11 addConnection:*(*(&v25 + 1) + 8 * i)];
              }

              v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
            }

            while (v14);
          }
        }

        [(WiFiPolicyNetworkActivity *)v11 setQueue:self->_queue];
        v17 = v11;
        goto LABEL_23;
      }
    }

    else
    {
      v18 = [(NSMutableDictionary *)self->_activities objectForKey:@"linkTest"];
      v19 = v18;
      if (v18)
      {
        nwActivity = [v18 nwActivity];
        v11 = [[WiFiPolicyNetworkActivity alloc] initWithLabel:start parent:nwActivity];
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        goto LABEL_5;
      }
    }

    if ([0 hasStarted])
    {
LABEL_24:
      v21 = _labelDescription(start);
      activities = self->_activities;
      v23 = [(WiFiPolicyNetworkActivity *)v11 description];
      NSLog(&cfstr_SStartActivity.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityStart:activate:]", v21, activities, v23);

      goto LABEL_25;
    }

    v17 = 0;
LABEL_23:
    [(WiFiPolicyNetworkActivity *)v17 setHasStarted:1];
    goto LABEL_24;
  }

  v9 = _labelDescription(start);
  v10 = [v8 description];
  NSLog(&cfstr_SFailedToStart.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityStart:activate:]", v9, v10, self->_activities);

LABEL_25:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_networkActivityActivate:(int64_t)activate
{
  activities = self->_activities;
  v6 = _labelDescription(activate);
  v9 = [(NSMutableDictionary *)activities objectForKey:v6];

  v7 = v9;
  if (!v9)
  {
    v8 = _labelDescription(activate);
    NSLog(&cfstr_SFailedToFindA.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityActivate:]", v8, self->_activities);

    v7 = 0;
  }

  [v7 activate];
}

void __109__WiFiPolicyNetworkActivityTracing__networkActivityStop_withReason_withClientMetric_withClientDict_andError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 parentLabel] == *(a1 + 72) && objc_msgSend(v5, "hasStarted"))
  {
    if (*(a1 + 80) && *(a1 + 32))
    {
      v6 = [*(a1 + 40) description];
      NSLog(&cfstr_SStoppingNetwo.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityStop:withReason:withClientMetric:withClientDict:andError:]_block_invoke", v6, *(a1 + 88), *(a1 + 80), *(a1 + 32), *(a1 + 48));
    }

    else
    {
      v6 = [*(a1 + 40) description];
      NSLog(&cfstr_SStoppingNetwo_0.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityStop:withReason:withClientMetric:withClientDict:andError:]_block_invoke", v6, *(a1 + 88), *(a1 + 48));
    }

    [v5 setHasStarted:0];
    [v5 stopWithCompletionReason:*(a1 + 88) withClientMetric:*(a1 + 80) withClientDict:*(a1 + 32) andError:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if ([v5 getState] == 3)
    {
      v8 = _labelDescription(*(a1 + 72));
      v9 = [*(a1 + 40) description];
      NSLog(&cfstr_SWillRemoveEnd.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityStop:withReason:withClientMetric:withClientDict:andError:]_block_invoke", v8, v9);

      [*(*(*(a1 + 64) + 8) + 40) addObject:v10];
    }
  }

  else if ([v5 parentLabel] == *(a1 + 72) && (objc_msgSend(v5, "hasStarted") & 1) == 0)
  {
    v7 = [*(a1 + 40) description];
    NSLog(&cfstr_SFailedToStopN.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityStop:withReason:withClientMetric:withClientDict:andError:]_block_invoke", v7, *(a1 + 88), *(a1 + 48));
  }
}

- (void)_networkActivityTracingCancel
{
  [(NSMutableDictionary *)self->_activities enumerateKeysAndObjectsUsingBlock:&__block_literal_global_54];
  [(NSMutableDictionary *)self->_activities removeAllObjects];
  connections = self->_connections;

  [(NSMutableSet *)connections removeAllObjects];
}

void __65__WiFiPolicyNetworkActivityTracing__networkActivityTracingCancel__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 hasStarted];
  v5 = [v3 description];

  NSLog(&cfstr_SFailedToPrope.isa, "[WiFiPolicyNetworkActivityTracing _networkActivityTracingCancel]_block_invoke", v4, v5);
}

- (void)_networkActivityAddNWConnection:(id)connection toActivityWithLabel:(int64_t)label
{
  connectionCopy = connection;
  if (([(NSMutableSet *)self->_connections containsObject:connectionCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
    activities = self->_activities;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__WiFiPolicyNetworkActivityTracing__networkActivityAddNWConnection_toActivityWithLabel___block_invoke;
    v8[3] = &unk_2789C80D0;
    labelCopy = label;
    v9 = connectionCopy;
    [(NSMutableDictionary *)activities enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __88__WiFiPolicyNetworkActivityTracing__networkActivityAddNWConnection_toActivityWithLabel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 nwActivity];
  label = nw_activity_get_label();
  v6 = *(a1 + 40);

  if (v6 == label)
  {
    [v7 addConnection:*(a1 + 32)];
  }
}

- (void)_networkActivityRemoveNWConnection:(id)connection fromActivityWithLabel:(int64_t)label completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  if ([(NSMutableSet *)self->_connections containsObject:connectionCopy])
  {
    [(NSMutableSet *)self->_connections removeObject:connectionCopy];
    activities = self->_activities;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __104__WiFiPolicyNetworkActivityTracing__networkActivityRemoveNWConnection_fromActivityWithLabel_completion___block_invoke;
    v11[3] = &unk_2789C80D0;
    labelCopy = label;
    v12 = connectionCopy;
    [(NSMutableDictionary *)activities enumerateKeysAndObjectsUsingBlock:v11];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __104__WiFiPolicyNetworkActivityTracing__networkActivityRemoveNWConnection_fromActivityWithLabel_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 nwActivity];
  label = nw_activity_get_label();
  v6 = *(a1 + 40);

  if (v6 == label)
  {
    [v7 removeConnection:*(a1 + 32)];
  }
}

@end