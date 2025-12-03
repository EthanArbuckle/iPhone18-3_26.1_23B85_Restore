@interface TIXPCUtils
+ (id)obtainApplicationIdentifierFromConnection:(id)connection;
+ (id)obtainBundleIdentifierFromConnection:(id)connection;
@end

@implementation TIXPCUtils

+ (id)obtainBundleIdentifierFromConnection:(id)connection
{
  if (connection && ([connection _xpcConnection], v3 = objc_claimAutoreleasedReturnValue(), v4 = xpc_connection_copy_bundle_id(), v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)obtainApplicationIdentifierFromConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  if (connection && ([connection auditToken], (v3 = SecTaskCreateWithAuditToken(0, &token)) != 0))
  {
    v4 = v3;
    error = 0;
    v5 = SecTaskCopyValueForEntitlement(v3, @"application-identifier", &error);
    if (error)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v6 = TIOSLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        error = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain application identifier: %@", "+[TIXPCUtils obtainApplicationIdentifierFromConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", &token, 0xCu);
      }

      CFRelease(error);
    }

    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

@end