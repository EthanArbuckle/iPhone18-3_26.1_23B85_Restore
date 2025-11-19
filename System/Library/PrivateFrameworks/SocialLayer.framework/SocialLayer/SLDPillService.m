@interface SLDPillService
+ (id)sharedService;
- (UISSlotMachine)highlightDisambiguationPillSlotMachine;
- (UISSlotMachine)highlightPillSlotMachine;
- (id)_applicationIdentifierForConnection:(id)a3;
- (id)_attributionsFromIDs:(id)a3 appID:(id)a4;
- (id)slotMachineForViewIdentifier:(id)a3;
- (void)accessibilityLabelForAttributionIdentifier:(id)a3 reply:(id)a4;
- (void)accessibilityLabelForAttributionIdentifiers:(id)a3 reply:(id)a4;
- (void)highlightDisambiguationPillForAttributionIdentifier:(id)a3 style:(id)a4 maxWidth:(double)a5 variant:(unint64_t)a6 layerContextID:(unint64_t)a7 reply:(id)a8;
- (void)highlightPillForAttributionIdentifiers:(id)a3 style:(id)a4 maxWidth:(double)a5 variant:(unint64_t)a6 layerContextID:(unint64_t)a7 reply:(id)a8;
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

- (void)highlightPillForAttributionIdentifiers:(id)a3 style:(id)a4 maxWidth:(double)a5 variant:(unint64_t)a6 layerContextID:(unint64_t)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (a5 <= 0.0)
  {
    v25 = SLDaemonLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
    }

    v16[2](v16, 0);
  }

  else
  {
    v17 = [MEMORY[0x277CCAE80] currentConnection];
    v18 = [(SLDPillService *)self _applicationIdentifierForConnection:v17];
    if (v18)
    {
      v19 = [(SLDPillService *)self _attributionsFromIDs:v14 appID:v18];
      v20 = [v19 count];
      if (v17 && v20)
      {
        v29 = v19;
        v21 = [SLDHighlightPillSlotTag tagForHighlightAttributions:v19 maxWidth:[SLHighlightPillMetrics maxSendersToDisplayWithStyle:v15 variant:a6] maxSendersToDisplay:a6 variant:a5];
        v22 = [v21 resolvedStyleForStyle:v15];
        v30 = [[SLHighlightPillMetrics alloc] initWithSlotStyle:v15 tag:v21 variant:a6];
        if ([(SLHighlightPillMetrics *)v30 hasValidMetricsForDrawing])
        {
          v23 = [(SLDRemoteRenderingService *)self _viewIDForStyle:v22 tag:v21];
          [(SLDRemoteRenderingService *)self _connection:v17 onlyNeedsViewWithIdentifier:v23];
          v24 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v23 layerContextID:a7 connection:v17];
          (v16)[2](v16, v24);
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
            [SLDPillService highlightPillForAttributionIdentifiers:v28 style:a5 maxWidth:? variant:? layerContextID:? reply:?];
          }

          v16[2](v16, 0);
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

        v16[2](v16, 0);
      }
    }

    else
    {
      v26 = SLDaemonLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
      }

      v16[2](v16, 0);
    }
  }
}

- (void)highlightDisambiguationPillForAttributionIdentifier:(id)a3 style:(id)a4 maxWidth:(double)a5 variant:(unint64_t)a6 layerContextID:(unint64_t)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (a5 <= 0.0)
  {
    v25 = SLDaemonLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
    }

    v16[2](v16, 0);
  }

  else
  {
    v17 = [MEMORY[0x277CCAE80] currentConnection];
    v18 = [(SLDPillService *)self _applicationIdentifierForConnection:v17];
    if (v18)
    {
      v19 = [[SLHighlightCenter alloc] initWithAppIdentifier:v18];
      v20 = [(SLHighlightCenter *)v19 fetchAttributionForAttributionIdentifier:v14];
      v21 = v20;
      if (v17 && v20)
      {
        v22 = [SLDHighlightDisambiguationPillSlotTag tagForHighlightAttribution:v20 maxWidth:a6 variant:a5];
        v28 = [v22 resolvedStyleForStyle:v15];
        [(SLDRemoteRenderingService *)self _viewIDForStyle:v28 tag:v22];
        v23 = v29 = v19;
        [(SLDRemoteRenderingService *)self _connection:v17 onlyNeedsViewWithIdentifier:v23];
        v24 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v23 layerContextID:a7 connection:v17];
        (v16)[2](v16, v24);
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

        v16[2](v16, 0);
      }
    }

    else
    {
      v26 = SLDaemonLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SLDPillService highlightPillForAttributionIdentifiers:style:maxWidth:variant:layerContextID:reply:];
      }

      v16[2](v16, 0);
    }
  }
}

- (void)accessibilityLabelForAttributionIdentifiers:(id)a3 reply:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  if (SLDConnectionIsEntitledForAccessibility(v7))
  {
    v8 = [(SLDPillService *)self _attributionsFromIDs:v13 appID:@"accessibility"];
    v9 = [v8 count];
    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v6[2](v6, 0);
    }

    else
    {
      v11 = [SLDHighlightPillSlotTag tagForHighlightAttributions:v8 maxWidth:3 maxSendersToDisplay:0 variant:1000.0];
      v12 = [SLHighlightPillMetrics accessibilityLabelFor:v11];
      (v6)[2](v6, v12);
    }
  }

  else
  {
    v6[2](v6, 0);
    [v7 invalidate];
  }
}

- (void)accessibilityLabelForAttributionIdentifier:(id)a3 reply:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CCAE80] currentConnection];
  if (SLDConnectionIsEntitledForAccessibility(v6))
  {
    v7 = [[SLHighlightCenter alloc] initWithAppIdentifier:@"accessibility"];
    v8 = [(SLHighlightCenter *)v7 fetchAttributionForAttributionIdentifier:v12];
    v9 = v8;
    if (v6 && v8)
    {
      v10 = [SLDHighlightDisambiguationPillSlotTag tagForHighlightAttribution:v8 maxWidth:0 variant:1000.0];
      v11 = [SLHighlightDisambiguationPillMetrics accessibilityLabelFor:v10];
      v5[2](v5, v11);
    }

    else
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    v5[2](v5, 0);
    [v6 invalidate];
  }
}

- (id)_applicationIdentifierForConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x277CC1E90];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v13 = 0;
  v7 = [v6 bundleRecordForAuditToken:v14 error:&v13];
  v8 = v13;
  v9 = [v7 applicationIdentifier];

  if (!v9)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SLDPillService *)self _applicationIdentifierForConnection:v8, v10];
    }
  }

  v11 = [v7 applicationIdentifier];

  return v11;
}

- (id)_attributionsFromIDs:(id)a3 appID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [[SLHighlightCenter alloc] initWithAppIdentifier:v6];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
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
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v7 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)slotMachineForViewIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(SLDPillService *)self highlightPillSlotMachine];
LABEL_5:
    v10 = v7;
    goto LABEL_7;
  }

  v8 = [v4 tag];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v7 = [(SLDPillService *)self highlightDisambiguationPillSlotMachine];
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