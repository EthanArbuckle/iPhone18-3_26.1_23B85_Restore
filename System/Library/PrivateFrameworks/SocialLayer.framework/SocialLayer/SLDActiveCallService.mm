@interface SLDActiveCallService
+ (id)sharedService;
- (UISSlotMachine)activeCallViewSlotMachine;
- (id)_lookupActiveTUConversation;
- (id)slotMachineForViewIdentifier:(id)identifier;
- (void)activeCallViewForStyle:(id)style maxWidth:(double)width layerContextID:(unint64_t)d reply:(id)reply;
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

- (void)activeCallViewForStyle:(id)style maxWidth:(double)width layerContextID:(unint64_t)d reply:(id)reply
{
  styleCopy = style;
  if (width <= 0.0)
  {
    replyCopy = reply;
    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SLDActiveCallService activeCallViewForStyle:v18 maxWidth:? layerContextID:? reply:?];
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v11 = MEMORY[0x277CCAE80];
    replyCopy2 = reply;
    replyCopy = [v11 currentConnection];
    _lookupActiveTUConversation = [(SLDActiveCallService *)self _lookupActiveTUConversation];
    v15 = _lookupActiveTUConversation;
    if (_lookupActiveTUConversation)
    {
      messagesGroupPhotoData = [_lookupActiveTUConversation messagesGroupPhotoData];
      displayName = [v15 displayName];
    }

    else
    {
      messagesGroupPhotoData = 0;
      displayName = &stru_28468DAB8;
    }

    v24 = messagesGroupPhotoData;
    v19 = [SLDActiveCallViewSlotTag tagForMaxWidth:v15 != 0 callActive:messagesGroupPhotoData activeCallGroupPhotoData:displayName activeCallDisplayName:width];
    v20 = [v19 resolvedStyleForStyle:styleCopy];
    [(SLDRemoteRenderingService *)self _viewIDForStyle:v20 tag:v19];
    v22 = v21 = styleCopy;
    [(SLDRemoteRenderingService *)self _connection:replyCopy onlyNeedsViewWithIdentifier:v22];
    v23 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v22 layerContextID:d connection:replyCopy];
    replyCopy2[2](replyCopy2, v23);

    [(SLDRemoteRenderingService *)self _connectionTouchedView:v22];
    styleCopy = v21;
  }
}

- (id)slotMachineForViewIdentifier:(id)identifier
{
  v4 = [identifier tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    activeCallViewSlotMachine = [(SLDActiveCallService *)self activeCallViewSlotMachine];
  }

  else
  {
    activeCallViewSlotMachine = 0;
  }

  return activeCallViewSlotMachine;
}

- (id)_lookupActiveTUConversation
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  conversationManager = [mEMORY[0x277D6EDF8] conversationManager];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeConversations = [conversationManager activeConversations];
  v5 = [activeConversations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(activeConversations);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 state] == 3)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [activeConversations countByEnumeratingWithState:&v11 objects:v15 count:16];
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