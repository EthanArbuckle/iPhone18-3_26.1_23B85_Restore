@interface SPRMonitorManager
- (BOOL)storeAuditLog:(id)a3 error:(id *)a4;
- (id)sendAuditLogsAndReturnError:(id *)a3;
- (id)sendIncidentLog:(id)a3 error:(id *)a4;
@end

@implementation SPRMonitorManager

- (BOOL)storeAuditLog:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)sendAuditLogsAndReturnError:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)sendIncidentLog:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end