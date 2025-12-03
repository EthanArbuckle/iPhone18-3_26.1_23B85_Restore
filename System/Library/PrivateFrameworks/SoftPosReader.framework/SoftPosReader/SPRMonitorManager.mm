@interface SPRMonitorManager
- (BOOL)storeAuditLog:(id)log error:(id *)error;
- (id)sendAuditLogsAndReturnError:(id *)error;
- (id)sendIncidentLog:(id)log error:(id *)error;
@end

@implementation SPRMonitorManager

- (BOOL)storeAuditLog:(id)log error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)sendAuditLogsAndReturnError:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)sendIncidentLog:(id)log error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end