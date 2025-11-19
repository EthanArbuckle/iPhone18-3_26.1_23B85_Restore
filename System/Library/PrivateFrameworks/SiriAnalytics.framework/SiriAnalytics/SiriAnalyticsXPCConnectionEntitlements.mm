@interface SiriAnalyticsXPCConnectionEntitlements
- (SiriAnalyticsXPCConnectionEntitlements)initWithEntitlements:(id)a3;
@end

@implementation SiriAnalyticsXPCConnectionEntitlements

- (SiriAnalyticsXPCConnectionEntitlements)initWithEntitlements:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SiriAnalyticsXPCConnectionEntitlements;
  v5 = [(SiriAnalyticsXPCConnectionEntitlements *)&v29 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_genericEntitlement = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v4;
        v6 = v4;
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;
                [(NSArray *)v7 addObject:v14];
                v15 = [v14 isEqualToString:@"runtime.management"];
                p_runtimeManagement = &v5->_runtimeManagement;
                if (v15)
                {
                  goto LABEL_16;
                }

                v17 = [v14 isEqualToString:@"runtime.introspection"];
                p_runtimeManagement = &v5->_runtimeIntrospection;
                if (v17 & 1) != 0 || (v18 = [v14 isEqualToString:@"stream.unifiedMessageStream.readonly"], p_runtimeManagement = &v5->_unifiedMessageStreamReadOnlyAccess, (v18) || (v19 = objc_msgSend(v14, "isEqualToString:", @"publish.unordered"), p_runtimeManagement = &v5->_publishUnorderedMessages, (v19) || (v20 = objc_msgSend(v14, "isEqualToString:", @"plugin.state"), p_runtimeManagement = &v5->_pluginState, v20))
                {
LABEL_16:
                  *p_runtimeManagement = 1;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v10);
        }

        extendedEntitlements = v5->_extendedEntitlements;
        v5->_extendedEntitlements = v7;

        v4 = v24;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end