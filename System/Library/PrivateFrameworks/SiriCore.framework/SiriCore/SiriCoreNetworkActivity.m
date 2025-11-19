@interface SiriCoreNetworkActivity
- (SiriCoreNetworkActivity)initWithLabel:(int64_t)a3 parent:(id)a4;
- (id)nwActivityToken;
- (int)_completionReasonToNWActivityCompletionReason:(int64_t)a3;
- (void)_networkActivityState:(int64_t)a3;
- (void)activate;
- (void)addConnection:(id)a3;
- (void)removeConnection:(id)a3;
- (void)stopWithCompletionReason:(int64_t)a3 andError:(id)a4;
@end

@implementation SiriCoreNetworkActivity

- (int)_completionReasonToNWActivityCompletionReason:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_266A0C4D8[a3 - 1];
  }
}

- (void)_networkActivityState:(int64_t)a3
{
  v3 = a3;
  state = self->_state;
  if (state > 1)
  {
    if (state == 2)
    {
      if (a3 >= 2)
      {
        if (a3 == 2)
        {
          [(SiriCoreNetworkActivity *)self _networkActivityRestart];
          goto LABEL_21;
        }
      }

      else
      {
        [(SiriCoreNetworkActivity *)self _networkActivityAbort];
      }
    }

    else
    {
      if (a3 >= 2)
      {
        v6 = a3;
      }

      else
      {
        v6 = 0;
      }

      if (state == 3)
      {
        v3 = v6;
      }
    }
  }

  else if (state)
  {
    if (state == 1 && (a3 == 3 || !a3))
    {
      [(SiriCoreNetworkActivity *)self _networkActivityAbort];
LABEL_21:
      v3 = 0;
    }
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = 0;
  }

  self->_state = v3;
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

- (void)stopWithCompletionReason:(int64_t)a3 andError:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(SiriCoreNetworkActivity *)self _networkActivityState:3];
  if ([(NSMutableSet *)self->_connections count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_connections;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          activity = self->_activity;
          nw_connection_end_activity();
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v9);
    }
  }

  if (v6)
  {
    v14 = [v6 code];
    v15 = [v6 userInfo];

    if (v15)
    {
      v16 = [v6 userInfo];
      v17 = [v16 objectForKey:*MEMORY[0x277CCA7E8]];

      if (v17)
      {
        v18 = [v17 code];
      }

      else
      {
        v18 = -1;
      }
    }

    else
    {
      v18 = -1;
    }

    v20 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v28 = "[SiriCoreNetworkActivity stopWithCompletionReason:andError:]";
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v18;
      _os_log_impl(&dword_2669D1000, v20, OS_LOG_TYPE_INFO, "%s Reporting to nw_activity that SiriCoreNetworkActivity failed with error code %d and underlying error code %d", buf, 0x18u);
    }

    v21 = self->_activity;
    [(SiriCoreNetworkActivity *)self _completionReasonToNWActivityCompletionReason:a3, v23];
  }

  else
  {
    v19 = self->_activity;
    [(SiriCoreNetworkActivity *)self _completionReasonToNWActivityCompletionReason:a3];
  }

  nw_activity_complete_with_reason_and_underlying_error();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeConnection:(id)a3
{
  if (self->_state == 2)
  {
    activity = self->_activity;
    v6 = a3;
    nw_connection_end_activity();
    [(NSMutableSet *)self->_connections removeObject:v6];
  }
}

- (void)addConnection:(id)a3
{
  v6 = a3;
  state = self->_state;
  if (state <= 1)
  {
    [(SiriCoreNetworkActivity *)self _networkActivityState:2];
    state = self->_state;
  }

  if (state == 2)
  {
    activity = self->_activity;
    nw_connection_start_activity();
    [(NSMutableSet *)self->_connections addObject:v6];
  }
}

- (void)activate
{
  if (self->_state <= 0)
  {
    [(SiriCoreNetworkActivity *)self _networkActivityState:1];
    if (self->_state == 1)
    {
      activity = self->_activity;

      MEMORY[0x282126558](activity);
    }
  }
}

- (SiriCoreNetworkActivity)initWithLabel:(int64_t)a3 parent:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SiriCoreNetworkActivity;
  v7 = [(SiriCoreNetworkActivity *)&v13 init];
  if (v7)
  {
    if (a3)
    {
      v8 = nw_activity_create();
      if (v6)
      {
        nw_activity_set_parent_activity();
        v7->_parentLabel = nw_activity_get_label();
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      connections = v7->_connections;
      v7->_connections = v9;

      activity = v7->_activity;
      v7->_activity = v8;
    }

    v7->_state = 0;
    v7->_hasStarted = 0;
  }

  return v7;
}

@end