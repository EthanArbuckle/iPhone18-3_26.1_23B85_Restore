@interface SLDCollaborationAttributionViewService
+ (id)sharedService;
+ (void)setupInterface:(id)interface;
- (UISSlotMachine)slotMachine;
- (id)_applicationIdentifierForConnection:(id)connection;
- (id)_attributionsFromIDs:(id)ds appID:(id)d;
- (id)slotMachineForViewIdentifier:(id)identifier;
- (void)accessibilityLabelForAttributionIdentifiers:(id)identifiers reply:(id)reply;
- (void)collaborationAttributionViewForTitle:(id)title attributionIdentifiers:(id)identifiers style:(id)style placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant layerContextID:(unint64_t)d reply:(id)self0;
@end

@implementation SLDCollaborationAttributionViewService

+ (id)sharedService
{
  if (sharedService_onceToken_10 != -1)
  {
    +[SLDCollaborationAttributionViewService sharedService];
  }

  v3 = sharedService_sService_10;

  return v3;
}

uint64_t __55__SLDCollaborationAttributionViewService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationAttributionViewService);
  v1 = sharedService_sService_10;
  sharedService_sService_10 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setupInterface:(id)interface
{
  interfaceCopy = interface;
  [interfaceCopy setClass:objc_opt_class() forSelector:sel_collaborationAttributionViewForTitle_attributionIdentifiers_style_placeholderGlyphConfiguration_maxWidth_variant_layerContextID_reply_ argumentIndex:4 ofReply:0];
}

- (void)collaborationAttributionViewForTitle:(id)title attributionIdentifiers:(id)identifiers style:(id)style placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant layerContextID:(unint64_t)d reply:(id)self0
{
  titleCopy = title;
  identifiersCopy = identifiers;
  styleCopy = style;
  configurationCopy = configuration;
  replyCopy = reply;
  if (width <= 0.0)
  {
    v30 = SLDaemonLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v37 = titleCopy;
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v23 = [(SLDCollaborationAttributionViewService *)self _applicationIdentifierForConnection:currentConnection];
    if (v23)
    {
      v24 = [(SLDCollaborationAttributionViewService *)self _attributionsFromIDs:identifiersCopy appID:v23];
      v25 = [v24 count];
      if (currentConnection && v25)
      {
        v26 = [SLDCollaborationAttributionViewSlotTag tagForTitle:v37 attributions:v24 placeholderGlyphConfiguration:configurationCopy maxWidth:variant variant:width];
        v35 = [SLDCollaborationAttributionViewSlotDrawer resolvedStyleForStyle:styleCopy tag:v26];
        [(SLDRemoteRenderingService *)self _viewIDForStyle:v35 tag:v26];
        v27 = v36 = v24;
        [(SLDRemoteRenderingService *)self _connection:currentConnection onlyNeedsViewWithIdentifier:v27];
        v28 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v27 layerContextID:d connection:currentConnection];
        (replyCopy)[2](replyCopy, v28);
        [(SLDRemoteRenderingService *)self _connectionTouchedView:v27];

        v29 = v36;
      }

      else
      {
        v29 = v24;
        v32 = [identifiersCopy count];
        v33 = SLDaemonLogHandle();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
        if (v32)
        {
          if (v34)
          {
            [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
          }
        }

        else if (v34)
        {
          [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
        }

        replyCopy[2](replyCopy, 0);
      }
    }

    else
    {
      v31 = SLDaemonLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
      }

      replyCopy[2](replyCopy, 0);
    }

    titleCopy = v37;
  }
}

- (void)accessibilityLabelForAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (SLDConnectionIsEntitledForAccessibility(currentConnection))
  {
    v9 = [(SLDCollaborationAttributionViewService *)self _attributionsFromIDs:identifiersCopy appID:@"accessibility"];
    v10 = [v9 count];
    if (currentConnection)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = [identifiersCopy count];
      v13 = SLDaemonLogHandle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          [SLDCollaborationAttributionViewService accessibilityLabelForAttributionIdentifiers:reply:];
        }
      }

      else if (v14)
      {
        [SLDCollaborationAttributionViewService accessibilityLabelForAttributionIdentifiers:reply:];
      }

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v16 = [SLDImageSymbolConfiguration configurationWithName:@"person.crop.circle.badge.checkmark" coreUISize:0 weight:0 pointSize:12.0];
      v17 = [SLDCollaborationAttributionViewSlotTag tagForTitle:&stru_28468DAB8 attributions:v9 placeholderGlyphConfiguration:v16 maxWidth:0 variant:1000.0];
      v18 = [SLDCollaborationAttributionViewRenderer accessibilityLabelForTag:v17];
      (replyCopy)[2](replyCopy, v18);
    }
  }

  else
  {
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewService accessibilityLabelForAttributionIdentifiers:reply:];
    }

    replyCopy[2](replyCopy, 0);
    [currentConnection invalidate];
  }
}

- (UISSlotMachine)slotMachine
{
  slotMachine = self->_slotMachine;
  if (!slotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDCollaborationAttributionViewSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_slotMachine;
    self->_slotMachine = v6;

    slotMachine = self->_slotMachine;
  }

  return slotMachine;
}

- (id)slotMachineForViewIdentifier:(id)identifier
{
  v4 = [identifier tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    slotMachine = [(SLDCollaborationAttributionViewService *)self slotMachine];
  }

  else
  {
    slotMachine = 0;
  }

  return slotMachine;
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

- (void)collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] 0.0 was provided for the max width of the requested view. This is undefined behavior and should be sanitized before invoking this xpc interface!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] Not generating collaboration attribution view remote content because there were no attributions for the given attribution IDs. This could be because the highlight center failed to fetch the corresponding attributions. attributionIDs: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] No attribution IDs were given. This is a client-side bug and appropriate checks should be in place to prevent this. Not generating collaboration attribution view remote content", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] Cannot generate a collaboration attribution view remote content without an application identifier for the client.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessibilityLabelForAttributionIdentifiers:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] Cannot generate a collaboration attribution accessibility label for a connection without an accessibility entitlement.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessibilityLabelForAttributionIdentifiers:reply:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] Not generating collaboration attribution accessibility label because there were no attributions for the given attribution IDs. This could be because the highlight center failed to fetch the corresponding attributions. attributionIDs: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)accessibilityLabelForAttributionIdentifiers:reply:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationAttributionViewService: %p] No attribution IDs were given. This is a client-side bug and appropriate checks should be in place to prevent this. Not generating collaboration attribution accessibility label", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end