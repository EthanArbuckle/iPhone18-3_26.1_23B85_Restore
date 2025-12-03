@interface SLDPillService
+ (id)sharedService;
- (UISSlotMachine)highlightDisambiguationPillSlotMachine;
- (UISSlotMachine)highlightPillSlotMachine;
- (id)_applicationIdentifierForConnection:(id)connection;
- (id)_attributionsFromIDs:(id)ds appID:(id)d;
- (id)slotMachineForViewIdentifier:(id)identifier;
- (void)accessibilityLabelForAttributionIdentifier:(id)identifier reply:(id)reply;
- (void)accessibilityLabelForAttributionIdentifiers:(id)identifiers reply:(id)reply;
- (void)highlightDisambiguationPillForAttributionIdentifier:(id)identifier style:(id)style maxWidth:(double)width variant:(unint64_t)variant layerContextID:(unint64_t)d reply:(id)reply;
- (void)highlightPillForAttributionIdentifiers:(id)identifiers style:(id)style maxWidth:(double)width variant:(unint64_t)variant layerContextID:(unint64_t)d reply:(id)reply;
@end

@implementation SLDPillService

+ (id)sharedService
{
  if (sharedService_onceToken_5 != -1)
  {
    +[SLDPillService sharedService];
  }

  v3 = sharedService_sService_5;

  return v3;
}

uint64_t __31__SLDPillService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDPillService);
  v1 = sharedService_sService_5;
  sharedService_sService_5 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (UISSlotMachine)highlightPillSlotMachine
{
  highlightPillSlotMachine = self->_highlightPillSlotMachine;
  if (!highlightPillSlotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDHighlightPillSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_highlightPillSlotMachine;
    self->_highlightPillSlotMachine = v6;

    highlightPillSlotMachine = self->_highlightPillSlotMachine;
  }

  return highlightPillSlotMachine;
}

- (UISSlotMachine)highlightDisambiguationPillSlotMachine
{
  highlightDisambiguationPillSlotMachine = self->_highlightDisambiguationPillSlotMachine;
  if (!highlightDisambiguationPillSlotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDHighlightDisambiguationPillSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_highlightDisambiguationPillSlotMachine;
    self->_highlightDisambiguationPillSlotMachine = v6;

    highlightDisambiguationPillSlotMachine = self->_highlightDisambiguationPillSlotMachine;
  }

  return highlightDisambiguationPillSlotMachine;
}

- (void)highlightPillForAttributionIdentifiers:(id)identifiers style:(id)style maxWidth:(double)width variant:(unint64_t)variant layerContextID:(unint64_t)d reply:(id)reply
{
  identifiersCopy = identifiers;
  styleCopy = style;
  replyCopy = reply;
  if (width <= 0.0)
  {
    v25 = SLDaemonLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v18 = [(SLDPillService *)self _applicationIdentifierForConnection:currentConnection];
    if (v18)
    {
      v19 = [(SLDPillService *)self _attributionsFromIDs:identifiersCopy appID:v18];
      v20 = [v19 count];
      if (currentConnection && v20)
      {
        v29 = v19;
        v21 = [SLDHighlightPillSlotTag tagForHighlightAttributions:v19 maxWidth:[SLHighlightPillMetrics maxSendersToDisplayWithStyle:styleCopy variant:variant] maxSendersToDisplay:variant variant:width];
        v22 = [v21 resolvedStyleForStyle:styleCopy];
        v30 = [[SLHighlightPillMetrics alloc] initWithSlotStyle:styleCopy tag:v21 variant:variant];
        if ([(SLHighlightPillMetrics *)v30 hasValidMetricsForDrawing])
        {
          v23 = [(SLDRemoteRenderingService *)self _viewIDForStyle:v22 tag:v21];
          [(SLDRemoteRenderingService *)self _connection:currentConnection onlyNeedsViewWithIdentifier:v23];
          v24 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v23 layerContextID:d connection:currentConnection];
          (replyCopy)[2](replyCopy, v24);
          [(SLDRemoteRenderingService *)self _connectionTouchedView:v23];
          CTFontRemoveFromCaches();
          CGFontCacheGetLocalCache();
          CGFontCacheReset();
        }

        else
        {
          v28 = SLDaemonLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [SLDPillService highlightPillForAttributionIdentifiers:v28 style:width maxWidth:? variant:? layerContextID:? reply:?];
          }

          replyCopy[2](replyCopy, 0);
        }

        v19 = v29;
      }

      else
      {
        v27 = SLDaemonLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
        }

        replyCopy[2](replyCopy, 0);
      }
    }

    else
    {
      v26 = SLDaemonLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
      }

      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)highlightDisambiguationPillForAttributionIdentifier:(id)identifier style:(id)style maxWidth:(double)width variant:(unint64_t)variant layerContextID:(unint64_t)d reply:(id)reply
{
  identifierCopy = identifier;
  styleCopy = style;
  replyCopy = reply;
  if (width <= 0.0)
  {
    v25 = SLDaemonLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v18 = [(SLDPillService *)self _applicationIdentifierForConnection:currentConnection];
    if (v18)
    {
      v19 = [[SLHighlightCenter alloc] initWithAppIdentifier:v18];
      v20 = [(SLHighlightCenter *)v19 fetchAttributionForAttributionIdentifier:identifierCopy];
      v21 = v20;
      if (currentConnection && v20)
      {
        v22 = [SLDHighlightDisambiguationPillSlotTag tagForHighlightAttribution:v20 maxWidth:variant variant:width];
        v28 = [v22 resolvedStyleForStyle:styleCopy];
        [(SLDRemoteRenderingService *)self _viewIDForStyle:v28 tag:v22];
        v23 = v29 = v19;
        [(SLDRemoteRenderingService *)self _connection:currentConnection onlyNeedsViewWithIdentifier:v23];
        v24 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v23 layerContextID:d connection:currentConnection];
        (replyCopy)[2](replyCopy, v24);
        [(SLDRemoteRenderingService *)self _connectionTouchedView:v23];
        CTFontRemoveFromCaches();
        CGFontCacheGetLocalCache();
        CGFontCacheReset();

        v19 = v29;
      }

      else
      {
        v27 = SLDaemonLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
        }

        replyCopy[2](replyCopy, 0);
      }
    }

    else
    {
      v26 = SLDaemonLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
      }

      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)accessibilityLabelForAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (SLDConnectionIsEntitledForAccessibility(currentConnection))
  {
    v8 = [(SLDPillService *)self _attributionsFromIDs:identifiersCopy appID:@"accessibility"];
    v9 = [v8 count];
    if (currentConnection)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v11 = [SLDHighlightPillSlotTag tagForHighlightAttributions:v8 maxWidth:3 maxSendersToDisplay:0 variant:1000.0];
      v12 = [SLHighlightPillMetrics accessibilityLabelFor:v11];
      (replyCopy)[2](replyCopy, v12);
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0);
    [currentConnection invalidate];
  }
}

- (void)accessibilityLabelForAttributionIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (SLDConnectionIsEntitledForAccessibility(currentConnection))
  {
    v7 = [[SLHighlightCenter alloc] initWithAppIdentifier:@"accessibility"];
    v8 = [(SLHighlightCenter *)v7 fetchAttributionForAttributionIdentifier:identifierCopy];
    v9 = v8;
    if (currentConnection && v8)
    {
      v10 = [SLDHighlightDisambiguationPillSlotTag tagForHighlightAttribution:v8 maxWidth:0 variant:1000.0];
      v11 = [SLHighlightDisambiguationPillMetrics accessibilityLabelFor:v10];
      replyCopy[2](replyCopy, v11);
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0);
    [currentConnection invalidate];
  }
}

- (id)_applicationIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = MEMORY[0x277CC1E90];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v13 = 0;
  v7 = [v6 bundleRecordForAuditToken:v14 error:&v13];
  v8 = v13;
  applicationIdentifier = [v7 applicationIdentifier];

  if (!applicationIdentifier)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SLDPillService *)self _applicationIdentifierForConnection:v8, v10];
    }
  }

  applicationIdentifier2 = [v7 applicationIdentifier];

  return applicationIdentifier2;
}

- (id)_attributionsFromIDs:(id)ds appID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [[SLHighlightCenter alloc] initWithAppIdentifier:dCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SLHighlightCenter *)v8 fetchAttributionForAttributionIdentifier:*(*(&v18 + 1) + 8 * i), v18];
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)slotMachineForViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    highlightPillSlotMachine = [(SLDPillService *)self highlightPillSlotMachine];
LABEL_5:
    v10 = highlightPillSlotMachine;
    goto LABEL_7;
  }

  v8 = [identifierCopy tag];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    highlightPillSlotMachine = [(SLDPillService *)self highlightDisambiguationPillSlotMachine];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDPillService: %p] 0.0 was provided for the max width of the requested pill. This is undefined behavior and should be sanitized before invoking this xpc interface!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDPillService: %p] Cannot generate a pill without attributions.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)highlightPillForAttributionIdentifiers:(double)a3 style:maxWidth:variant:layerContextID:reply:.cold.3(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDPillService: %p] metrics for the given request are invalid. This may mean the maxWidth provided was invalid (maxWidth: %f). No pill will be drawn.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDPillService: %p] Cannot generate a pill without an application identifier for the client.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_applicationIdentifierForConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  OUTLINED_FUNCTION_3();
  v10 = 2048;
  v11 = a1;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@: %p] Failed to generate a bundle record, or the record's app ID is nil. This is required to look up attribution data. Error: %@", v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end