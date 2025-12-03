@interface WiFiPolicyNetworkActivity
- (WiFiPolicyNetworkActivity)initWithLabel:(int64_t)label parent:(id)parent;
- (id)description;
- (id)nwActivityToken;
- (void)_cancelActivityTimer;
- (void)_networkActivityState:(int64_t)state;
- (void)_startActivityTimer;
- (void)_startMaxActivityLifetime;
- (void)activate;
- (void)addConnection:(id)connection;
- (void)removeConnection:(id)connection;
- (void)setHasStarted:(BOOL)started;
- (void)stopWithCompletionReason:(int)reason withClientMetric:(const char *)metric withClientDict:(id)dict andError:(id)error;
@end

@implementation WiFiPolicyNetworkActivity

- (WiFiPolicyNetworkActivity)initWithLabel:(int64_t)label parent:(id)parent
{
  parentCopy = parent;
  v15.receiver = self;
  v15.super_class = WiFiPolicyNetworkActivity;
  v8 = [(WiFiPolicyNetworkActivity *)&v15 init];
  if (v8)
  {
    if (label)
    {
      v9 = _labelDescription(label);
      NSLog(&cfstr_SCreatingActiv.isa, "[WiFiPolicyNetworkActivity initWithLabel:parent:]", v9, parentCopy != 0);

      v10 = nw_activity_create();
      if (parentCopy)
      {
        nw_activity_set_parent_activity();
        v8->_parentLabel = nw_activity_get_label();
        objc_storeStrong(&v8->_parentActivity, parent);
      }

      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      connections = v8->_connections;
      v8->_connections = v11;

      activity = v8->_activity;
      v8->_activity = v10;
    }

    v8->_state = 0;
    v8->_hasStarted = 0;
  }

  return v8;
}

- (void)activate
{
  if (self->_state > 0)
  {
    v4 = [(OS_nw_activity *)self->_activity description];
    NSLog(&cfstr_SFailedToActiv_0.isa, "[WiFiPolicyNetworkActivity activate]", v4, self->_state);
LABEL_8:

    return;
  }

  [(WiFiPolicyNetworkActivity *)self _networkActivityState:1];
  if (self->_state != 1)
  {
    v4 = [(OS_nw_activity *)self->_activity description];
    NSLog(&cfstr_SFailedToActiv.isa, "[WiFiPolicyNetworkActivity activate]", v4, self->_state);
    goto LABEL_8;
  }

  NSLog(&cfstr_SActivatingAct.isa, "[WiFiPolicyNetworkActivity activate]");
  activity = self->_activity;

  MEMORY[0x282126558](activity);
}

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  state = self->_state;
  if (state <= 1)
  {
    NSLog(&cfstr_SActivityHasSt.isa, "[WiFiPolicyNetworkActivity addConnection:]", state);
    [(WiFiPolicyNetworkActivity *)self _networkActivityState:2];
    goto LABEL_5;
  }

  if (state != 2)
  {
    NSLog(&cfstr_SFailedToAddco.isa, "[WiFiPolicyNetworkActivity addConnection:]", self->_activity, state);
LABEL_5:
    if (self->_state != 2)
    {
      goto LABEL_7;
    }
  }

  NSLog(&cfstr_SStartingActiv.isa, "[WiFiPolicyNetworkActivity addConnection:]");
  activity = self->_activity;
  nw_connection_start_activity();
  [(NSMutableSet *)self->_connections addObject:connectionCopy];
LABEL_7:
}

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  state = self->_state;
  if (state == 2)
  {
    NSLog(&cfstr_SEndingActivit.isa, "[WiFiPolicyNetworkActivity removeConnection:]");
    activity = self->_activity;
    nw_connection_end_activity();
    [(NSMutableSet *)self->_connections removeObject:connectionCopy];
  }

  else
  {
    NSLog(&cfstr_SFailedToRemov.isa, "[WiFiPolicyNetworkActivity removeConnection:]", self->_activity, state);
  }
}

- (void)stopWithCompletionReason:(int)reason withClientMetric:(const char *)metric withClientDict:(id)dict andError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  errorCopy = error;
  if (metric && dictCopy)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__WiFiPolicyNetworkActivity_stopWithCompletionReason_withClientMetric_withClientDict_andError___block_invoke;
    v33[3] = &unk_2789C80F8;
    v34 = v11;
    v12 = v11;
    [dictCopy enumerateKeysAndObjectsUsingBlock:v33];
    NSLog(&cfstr_SAddingClientM.isa, "[WiFiPolicyNetworkActivity stopWithCompletionReason:withClientMetric:withClientDict:andError:]", metric, dictCopy);
    activity = self->_activity;
    nw_activity_submit_metrics();
  }

  [(WiFiPolicyNetworkActivity *)self _networkActivityState:3];
  if ([(NSMutableSet *)self->_connections count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_connections;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * v18);
          NSLog(&cfstr_SEndingActivit_0.isa, "[WiFiPolicyNetworkActivity stopWithCompletionReason:withClientMetric:withClientDict:andError:]");
          v20 = self->_activity;
          nw_connection_end_activity();
          ++v18;
        }

        while (v16 != v18);
        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v16);
    }
  }

  if (errorCopy)
  {
    code = [errorCopy code];
    userInfo = [errorCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [errorCopy userInfo];
      v24 = [userInfo2 objectForKey:*MEMORY[0x277CCA7E8]];

      if (v24)
      {
        code2 = [v24 code];
      }

      else
      {
        code2 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      code2 = 0xFFFFFFFFLL;
    }

    NSLog(&cfstr_SReportingToNw.isa, "[WiFiPolicyNetworkActivity stopWithCompletionReason:withClientMetric:withClientDict:andError:]", code, code2);
    v27 = self->_activity;
    nw_activity_complete_with_reason_and_underlying_error();
  }

  else
  {
    v26 = self->_activity;
    nw_activity_complete_with_reason();
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __95__WiFiPolicyNetworkActivity_stopWithCompletionReason_withClientMetric_withClientDict_andError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = v13;
    v8 = v5;
    v9 = [v13 UTF8String];
    [v8 doubleValue];
    xpc_dictionary_set_double(v6, v9, v10);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __95__WiFiPolicyNetworkActivity_stopWithCompletionReason_withClientMetric_withClientDict_andError___block_invoke_cold_1(v13, v5);
    }

    v11 = *(a1 + 32);
    v12 = v13;
    xpc_dictionary_set_string(v11, [v13 UTF8String], objc_msgSend(v5, "UTF8String"));
  }
}

- (void)_startMaxActivityLifetime
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v4 = dispatch_time(0, 100000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__WiFiPolicyNetworkActivity__startMaxActivityLifetime__block_invoke;
  handler[3] = &unk_2789C7008;
  v11 = 100;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);
  activityTimer = self->_activityTimer;
  self->_activityTimer = v5;
  v7 = v5;
}

void __54__WiFiPolicyNetworkActivity__startMaxActivityLifetime__block_invoke(uint64_t a1)
{
  NSLog(&cfstr_SActivityStill.isa, "[WiFiPolicyNetworkActivity _startMaxActivityLifetime]_block_invoke", *(a1 + 48));
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(v2 + 56);
  if (*(a1 + 32) == v3)
  {
    *(v2 + 56) = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.wifi.policy.nwactivity" code:1 userInfo:0];
  v4 = [*(a1 + 40) description];
  NSLog(&cfstr_SCancellingAct.isa, "[WiFiPolicyNetworkActivity _startMaxActivityLifetime]_block_invoke", v4);

  v5 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  v6 = *(*(a1 + 40) + 8);
  [v5 networkActivityStop:nw_activity_get_label() withReason:4 withClientMetric:0 withClientDict:0 andError:v7];
}

- (void)_startActivityTimer
{
  [(WiFiPolicyNetworkActivity *)self _cancelActivityTimer];

  [(WiFiPolicyNetworkActivity *)self _startMaxActivityLifetime];
}

- (void)_cancelActivityTimer
{
  activityTimer = self->_activityTimer;
  if (activityTimer)
  {
    dispatch_source_cancel(activityTimer);
    v4 = self->_activityTimer;
    self->_activityTimer = 0;
  }
}

- (id)nwActivityToken
{
  v9 = *MEMORY[0x277D85DE8];
  *uu = 0;
  v8 = 0;
  activity = self->_activity;
  nw_activity_get_token();
  is_null = uuid_is_null(uu);
  v4 = 0;
  if (!is_null)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setHasStarted:(BOOL)started
{
  self->_hasStarted = started;
  if (started)
  {
    [(WiFiPolicyNetworkActivity *)self _startActivityTimer];
  }

  else
  {
    [(WiFiPolicyNetworkActivity *)self _cancelActivityTimer];
  }
}

- (id)description
{
  parentActivity = self->_parentActivity;
  v4 = MEMORY[0x277CCACA8];
  activity = self->_activity;
  domain = nw_activity_get_domain();
  v7 = self->_activity;
  label = nw_activity_get_label();
  nwActivityToken = [(WiFiPolicyNetworkActivity *)self nwActivityToken];
  v10 = nwActivityToken;
  if (parentActivity)
  {
    v11 = self->_parentActivity;
    v12 = nw_activity_get_domain();
    v13 = self->_parentActivity;
    v14 = nw_activity_get_label();
    v15 = [(OS_nw_activity *)self->_parentActivity description];
    v16 = [v4 stringWithFormat:@"nw_activity %d:%d[%@] parent nw_activity %d:%d[%@]", domain, label, v10, v12, v14, v15];
  }

  else
  {
    v17 = [v4 stringWithFormat:@"nw_activity %d:%d[%@]", domain, label, nwActivityToken];
    v16 = 0;
  }

  return v16;
}

- (void)_networkActivityState:(int64_t)state
{
  stateCopy = state;
  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      if (state < 2)
      {
        [(WiFiPolicyNetworkActivity *)self _networkActivityAbort];
        goto LABEL_24;
      }

      if (state != 2)
      {
        goto LABEL_24;
      }

      [(WiFiPolicyNetworkActivity *)self _networkActivityRestart];
      goto LABEL_23;
    }

    if (state >= 2)
    {
      stateCopy2 = state;
    }

    else
    {
      stateCopy2 = 0;
    }

    if (state == 3)
    {
      stateCopy = stateCopy2;
    }
  }

  else
  {
    if (state)
    {
      if (state != 1 || state != 0)
      {
        goto LABEL_24;
      }

      [(WiFiPolicyNetworkActivity *)self _networkActivityAbort];
LABEL_23:
      stateCopy = 0;
      goto LABEL_24;
    }

    if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      stateCopy = 0;
    }
  }

LABEL_24:
  self->_state = stateCopy;
}

@end