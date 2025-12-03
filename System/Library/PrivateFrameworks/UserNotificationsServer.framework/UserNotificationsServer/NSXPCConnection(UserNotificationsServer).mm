@interface NSXPCConnection(UserNotificationsServer)
- (BOOL)uns_requestContainsDisallowedPrivateUserInfo:()UserNotificationsServer;
- (id)uns_clientAuditToken;
- (id)uns_clientBundleProxy;
- (uint64_t)_uns_connection:()UserNotificationsServer isAuthorizedToSendNotificationsForManagementDomainOfBundleIdentifier:;
- (uint64_t)_uns_connection:()UserNotificationsServer valueForEntitlementKey:matchesValue:;
- (uint64_t)uns_hasEntitlement:()UserNotificationsServer capability:;
- (uint64_t)uns_isAllowedFromDaemon;
- (uint64_t)uns_isAllowedToReadSettings;
- (uint64_t)uns_isAllowedToRequestUserNotificationsForBundleIdentifier:()UserNotificationsServer;
- (uint64_t)uns_isAllowedToWriteSettings;
- (uint64_t)uns_isInternalUserNotificationsTool;
- (void)uns_isAllowedToReadSettings;
- (void)uns_isAllowedToWriteSettings;
@end

@implementation NSXPCConnection(UserNotificationsServer)

- (uint64_t)uns_isAllowedFromDaemon
{
  _xpcConnection = [self _xpcConnection];
  HasEntitlement = BSXPCConnectionHasEntitlement();

  if ((HasEntitlement & 1) == 0 && _os_feature_enabled_impl() && os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    [NSXPCConnection(UserNotificationsServer) uns_isAllowedFromDaemon];
  }

  return HasEntitlement;
}

- (id)uns_clientAuditToken
{
  uns_getClientConnectionDetails = [self uns_getClientConnectionDetails];
  auditToken = [uns_getClientConnectionDetails auditToken];
  v4 = auditToken;
  if (auditToken)
  {
    v5 = auditToken;
  }

  else
  {
    v6 = MEMORY[0x277CF0B98];
    [self auditToken];
    v5 = [v6 tokenFromAuditToken:&v9];
  }

  v7 = v5;

  return v7;
}

- (id)uns_clientBundleProxy
{
  uns_clientAuditToken = [self uns_clientAuditToken];
  v3 = uns_clientAuditToken;
  if (uns_clientAuditToken)
  {
    [uns_clientAuditToken pid];
  }

  else
  {
    [self processIdentifier];
  }

  v4 = BSBundleIDForPID();
  v5 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:v4];

  return v5;
}

- (uint64_t)uns_isAllowedToReadSettings
{
  v1 = [self uns_hasEntitlement:@"com.apple.private.usernotifications.settings" capability:@"read"];
  if ((v1 & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    [NSXPCConnection(UserNotificationsServer) uns_isAllowedToReadSettings];
  }

  return v1;
}

- (BOOL)uns_requestContainsDisallowedPrivateUserInfo:()UserNotificationsServer
{
  allKeys = [a3 allKeys];
  v5 = [allKeys containsObject:@"com.apple.private.untool.override"];

  if (!v5)
  {
    return 0;
  }

  v6 = MEMORY[0x277CE2078];
  v7 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "Request contains Apple private userInfo, checking request's entitlement...", buf, 2u);
  }

  uns_isInternalUserNotificationsTool = [self uns_isInternalUserNotificationsTool];
  v9 = *v6;
  if (uns_isInternalUserNotificationsTool)
  {
    result = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v11 = 0;
    _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "Request is allowed for Apple private userInfo.", v11, 2u);
    return 0;
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    [NSXPCConnection(UserNotificationsServer) uns_requestContainsDisallowedPrivateUserInfo:];
  }

  return 1;
}

- (uint64_t)uns_isAllowedToRequestUserNotificationsForBundleIdentifier:()UserNotificationsServer
{
  v4 = a3;
  if (([self uns_isAllowedFromDaemon] & 1) == 0)
  {
    [self processIdentifier];
    v6 = BSBundleIDForPID();
    if ([v6 isEqual:v4])
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v6];
      containingBundle = [v7 containingBundle];
      bundleIdentifier = [containingBundle bundleIdentifier];
      v10 = [bundleIdentifier isEqual:v4];

      if ((v10 & 1) == 0)
      {
        v11 = MEMORY[0x277CF0B98];
        _xpcConnection = [self _xpcConnection];
        v13 = [v11 tokenFromXPCConnection:_xpcConnection];

        if ([self _uns_connection:v13 isAuthorizedToSendNotificationsForBundleIdentifier:v4])
        {
        }

        else
        {
          v14 = [self _uns_connection:v13 isAuthorizedToSendNotificationsForManagementDomainOfBundleIdentifier:v4];

          if ((v14 & 1) == 0)
          {
            _xpcConnection2 = [self _xpcConnection];
            HasEntitlement = BSXPCConnectionHasEntitlement();

            if ((HasEntitlement & 1) == 0)
            {
              _xpcConnection3 = [self _xpcConnection];
              v18 = BSXPCConnectionHasEntitlement();

              if ((v18 & 1) == 0)
              {
                _xpcConnection4 = [self _xpcConnection];
                v20 = BSXPCConnectionHasEntitlement();

                if ((v20 & 1) == 0)
                {
                  _xpcConnection5 = [self _xpcConnection];
                  v22 = BSXPCConnectionHasEntitlement();

                  if ((v22 & 1) == 0)
                  {
                    _xpcConnection6 = [self _xpcConnection];
                    v24 = BSXPCConnectionHasEntitlement();

                    if ((v24 & 1) == 0)
                    {
                      if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
                      {
                        [NSXPCConnection(UserNotificationsServer) uns_isAllowedToRequestUserNotificationsForBundleIdentifier:];
                      }

                      v5 = 0;
                      goto LABEL_20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    protocol = [v7 protocol];
    v26 = [protocol isEqualToString:*MEMORY[0x277D77D48]];

    if (v26)
    {
      bundleIdentifier2 = [v7 bundleIdentifier];
      v5 = [MEMORY[0x277D77CB0] isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:bundleIdentifier2];
      if ((v5 & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
      {
        [NSXPCConnection(UserNotificationsServer) uns_isAllowedToRequestUserNotificationsForBundleIdentifier:];
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_20:

    goto LABEL_21;
  }

  v5 = 1;
LABEL_21:

  return v5;
}

- (uint64_t)uns_isAllowedToWriteSettings
{
  v1 = [self uns_hasEntitlement:@"com.apple.private.usernotifications.settings" capability:@"write"];
  if ((v1 & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    [NSXPCConnection(UserNotificationsServer) uns_isAllowedToWriteSettings];
  }

  return v1;
}

- (uint64_t)uns_hasEntitlement:()UserNotificationsServer capability:
{
  v6 = a3;
  v7 = a4;
  v8 = [self valueForEntitlement:v6];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(UserNotificationsServer) *)v6 uns_hasEntitlement:v7 capability:v12];
    }

    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  if (!v9)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v9 containsObject:v7];

LABEL_8:
  return v11;
}

- (uint64_t)uns_isInternalUserNotificationsTool
{
  if ([self uns_isAllowedFromDaemon] && (objc_msgSend(self, "uns_getClientConnectionDetails"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    isInternalTool = [v2 isInternalTool];
  }

  else
  {
    v5 = MEMORY[0x277CF0B98];
    _xpcConnection = [self _xpcConnection];
    v3 = [v5 tokenFromXPCConnection:_xpcConnection];

    isInternalTool = [v3 unc_isInternalUserNotificationsTool];
  }

  v7 = isInternalTool;

  return v7;
}

- (uint64_t)_uns_connection:()UserNotificationsServer isAuthorizedToSendNotificationsForManagementDomainOfBundleIdentifier:
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:1 error:&v14];
  v9 = v14;
  managementDomain = [v8 managementDomain];
  if (v9)
  {
    v11 = *MEMORY[0x277CE2078];
    if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(UserNotificationsServer) *)v7 _uns_connection:v11 isAuthorizedToSendNotificationsForManagementDomainOfBundleIdentifier:v9];
    }

    v12 = 0;
  }

  else
  {
    v12 = [self _uns_connection:v6 valueForEntitlementKey:@"com.apple.private.usernotifications.app-management-domains" matchesValue:managementDomain];
  }

  return v12;
}

- (uint64_t)_uns_connection:()UserNotificationsServer valueForEntitlementKey:matchesValue:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 length])
  {
    v10 = [v7 valueForEntitlement:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15[0] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

      v10 = v11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v10 containsObject:v9];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)uns_isAllowedToRequestUserNotificationsForBundleIdentifier:()UserNotificationsServer .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uns_isAllowedToRequestUserNotificationsForBundleIdentifier:()UserNotificationsServer .cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uns_isAllowedToReadSettings
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uns_isAllowedToWriteSettings
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uns_hasEntitlement:()UserNotificationsServer capability:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_270AA8000, log, OS_LOG_TYPE_ERROR, "Entitlement '%{public}@' for capability '%{public}@' is not valid because it is not an NSArray", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_uns_connection:()UserNotificationsServer isAuthorizedToSendNotificationsForManagementDomainOfBundleIdentifier:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v7 = v6;
  v8 = @"<null>";
  if (v6)
  {
    v8 = v6;
  }

  v10 = 138543618;
  v11 = a1;
  v12 = 2114;
  v13 = v8;
  _os_log_error_impl(&dword_270AA8000, v5, OS_LOG_TYPE_ERROR, "Failed to lookup application record to get management domain for '%{public}@'. Error: '%{public}@'", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end