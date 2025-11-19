@interface SLDActiveCallService
+ (id)sharedService;
- (UISSlotMachine)activeCallViewSlotMachine;
- (id)_lookupActiveTUConversation;
- (id)slotMachineForViewIdentifier:(id)a3;
- (void)activeCallViewForStyle:(id)a3 maxWidth:(double)a4 layerContextID:(unint64_t)a5 reply:(id)a6;
@end

@implementation SLDActiveCallService

+ (id)sharedService
{
  if (sharedService_onceToken_8 != -1)
  {
    +[SLDActiveCallService sharedService];
  }

  v3 = sharedService_sService_8;

  return v3;
}

uint64_t __37__SLDActiveCallService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDActiveCallService);
  v1 = sharedService_sService_8;
  sharedService_sService_8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (UISSlotMachine)activeCallViewSlotMachine
{
  activeCallViewSlotMachine = self->_activeCallViewSlotMachine;
  if (!activeCallViewSlotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDActiveCallViewSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_activeCallViewSlotMachine;
    self->_activeCallViewSlotMachine = v6;

    activeCallViewSlotMachine = self->_activeCallViewSlotMachine;
  }

  return activeCallViewSlotMachine;
}

- (void)activeCallViewForStyle:(id)a3 maxWidth:(double)a4 layerContextID:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  if (a4 <= 0.0)
  {
    v13 = a6;
    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SLDActiveCallService activeCallViewForStyle:v18 maxWidth:? layerContextID:? reply:?];
    }

    v13[2](v13, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCAE80];
    v12 = a6;
    v13 = [v11 currentConnection];
    v14 = [(SLDActiveCallService *)self _lookupActiveTUConversation];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 messagesGroupPhotoData];
      v17 = [v15 displayName];
    }

    else
    {
      v16 = 0;
      v17 = &stru_28468DAB8;
    }

    v24 = v16;
    v19 = [SLDActiveCallViewSlotTag tagForMaxWidth:v15 != 0 callActive:v16 activeCallGroupPhotoData:v17 activeCallDisplayName:a4];
    v20 = [v19 resolvedStyleForStyle:v10];
    [(SLDRemoteRenderingService *)self _viewIDForStyle:v20 tag:v19];
    v22 = v21 = v10;
    [(SLDRemoteRenderingService *)self _connection:v13 onlyNeedsViewWithIdentifier:v22];
    v23 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v22 layerContextID:a5 connection:v13];
    v12[2](v12, v23);

    [(SLDRemoteRenderingService *)self _connectionTouchedView:v22];
    v10 = v21;
  }
}

- (id)slotMachineForViewIdentifier:(id)a3
{
  v4 = [a3 tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SLDActiveCallService *)self activeCallViewSlotMachine];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_lookupActiveTUConversation
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 conversationManager];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 activeConversations];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 state] == 3)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)activeCallViewForStyle:(uint64_t)a1 maxWidth:(NSObject *)a2 layerContextID:reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDActiveCallService: %p] 0.0 was provided for the max width of the requested view. This is undefined behavior and should be sanitized before invoking this xpc interface!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end