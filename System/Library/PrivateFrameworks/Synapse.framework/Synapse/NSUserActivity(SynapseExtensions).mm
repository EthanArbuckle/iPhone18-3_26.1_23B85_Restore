@interface NSUserActivity(SynapseExtensions)
- (BOOL)_syIsShowBacklinkIndicatorUserActivity;
- (id)_canonicalURL;
- (id)_linkContextInfo;
- (id)_linkContextPreviewMetadata;
- (id)_syLoggableDescription;
- (id)_syUserInfoDomainIdentifiers;
- (id)_syUserInfoLinkIdentifiers;
- (uint64_t)_syIsBacklinkUserActivity;
- (void)_linkContextInfo;
- (void)set_canonicalURL:()SynapseExtensions;
- (void)set_linkContextInfo:()SynapseExtensions;
- (void)set_linkContextPreviewMetadata:()SynapseExtensions;
@end

@implementation NSUserActivity(SynapseExtensions)

- (id)_canonicalURL
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.canonicalURL"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithDataRepresentation:v2 relativeToURL:0];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v1);

  return v3;
}

- (void)set_canonicalURL:()SynapseExtensions
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = [v4 dataRepresentation];
  [v5 _setPayload:v6 object:0 identifier:@"com.apple.synapse.canonicalURL"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v7 = getUAUserActivityClass_softClass_0;
  v23 = getUAUserActivityClass_softClass_0;
  if (!getUAUserActivityClass_softClass_0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __getUAUserActivityClass_block_invoke_0;
    v19[3] = &unk_27856B3C8;
    v19[4] = &v20;
    __getUAUserActivityClass_block_invoke_0(v19);
    v7 = v21[3];
  }

  v8 = v7;
  _Block_object_dispose(&v20, 8);
  [v7 observers];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v9 = v16 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 userActivityCanonicalURLWasChanged:{v5, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v5);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_linkContextInfo
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.linkContextInfo"];
  if (v2)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = SYSupportedLinkContextInfoClasses();
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClasses:v4 fromData:v2 error:&v9];
    v6 = v9;

    if (!v5)
    {
      v7 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [NSUserActivity(SynapseExtensions) _linkContextInfo];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v1);

  return v5;
}

- (void)set_linkContextInfo:()SynapseExtensions
{
  v5 = a3;
  v6 = a1;
  objc_sync_enter(v6);
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke;
    v12[3] = &unk_27856C618;
    v12[4] = &v13;
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    if (v14[3] & 1) != 0 || ([MEMORY[0x277CCA890] currentHandler], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "handleFailureInMethod:object:file:lineNumber:description:", a2, v6, @"SYNSUserActivityExtensions.m", 112, @"linkContextInfo contains objects of unsupported classes."), v10, (v14[3]))
    {
      v11 = 0;
      v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
      v8 = v11;
      if (!v7)
      {
        v9 = os_log_create("com.apple.synapse", "");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [NSUserActivity(SynapseExtensions) set_linkContextInfo:];
        }
      }
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  [v6 _setPayload:v7 object:0 identifier:@"com.apple.synapse.linkContextInfo"];

  objc_sync_exit(v6);
}

- (id)_linkContextPreviewMetadata
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 _payloadForIdentifier:@"com.apple.synapse.linkContextPreviewMetadata"];
  objc_sync_exit(v1);

  return v2;
}

- (void)set_linkContextPreviewMetadata:()SynapseExtensions
{
  v5 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  [v4 _setPayload:v5 object:0 identifier:@"com.apple.synapse.linkContextPreviewMetadata"];
  objc_sync_exit(v4);
}

- (id)_syUserInfoDomainIdentifiers
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"domainIdentifier"];

  if (v2)
  {
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_syUserInfoLinkIdentifiers
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"uuid"];

  if (v2)
  {
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_syLoggableDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a1 activityType];
  v6 = [a1 title];
  v7 = [a1 userInfo];
  v8 = [a1 persistentIdentifier];
  v9 = [a1 _syRelatedUniqueIdentifier];
  v10 = [v2 stringWithFormat:@"<%@: %p> type: %@, title: %@, userInfo: %@, persistentIdentifier: %@, relatedUniqueIdentifier: %@", v4, a1, v5, v6, v7, v8, v9];

  return v10;
}

- (uint64_t)_syIsBacklinkUserActivity
{
  v1 = [a1 activityType];
  v2 = [v1 isEqualToString:@"com.apple.notes.activity.show-backlink"];

  return v2;
}

- (BOOL)_syIsShowBacklinkIndicatorUserActivity
{
  if (![a1 _syIsBacklinkUserActivity])
  {
    return 0;
  }

  v2 = [a1 _syUserInfoDomainIdentifiers];
  v3 = [v2 count];

  v4 = [a1 _syUserInfoLinkIdentifiers];
  v5 = [v4 count];

  if (!v3)
  {
    return 0;
  }

  return v5 != 0;
}

- (void)_linkContextInfo
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "Error decoding linkContextInfo dictionary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)set_linkContextInfo:()SynapseExtensions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "Error encoding linkContextInfo dictionary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end