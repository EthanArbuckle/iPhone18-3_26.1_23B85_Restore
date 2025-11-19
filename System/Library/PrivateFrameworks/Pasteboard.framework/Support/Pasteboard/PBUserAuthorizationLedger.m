@interface PBUserAuthorizationLedger
- (PBUserAuthorizationLedger)init;
- (unint64_t)authorizationDecisionForAuditTokenInfo:(id)a3 timestamp:(unint64_t)a4;
@end

@implementation PBUserAuthorizationLedger

- (PBUserAuthorizationLedger)init
{
  v6.receiver = self;
  v6.super_class = PBUserAuthorizationLedger;
  v2 = [(PBUserAuthorizationLedger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    authorizationRecords = v2->_authorizationRecords;
    v2->_authorizationRecords = v3;
  }

  return v2;
}

- (unint64_t)authorizationDecisionForAuditTokenInfo:(id)a3 timestamp:(unint64_t)a4
{
  v6 = a3;
  PBAssertIsOnCallbackQueue();
  v7 = [v6 persistentIdentifier];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v6 bundleID];
    if (!v8)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v9 = [(PBUserAuthorizationLedger *)self authorizationRecords];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (!v10)
  {
    goto LABEL_12;
  }

  if ([v10 pasteWasAllowed])
  {
    v11 = 38;
    goto LABEL_13;
  }

  if ([v10 timestamp] >= a4)
  {
LABEL_12:
    v11 = 42;
    goto LABEL_13;
  }

  info = 0;
  mach_timebase_info(&info);
  LODWORD(v12) = info.denom;
  LODWORD(v13) = info.numer;
  if (a4 - (v12 * 1000000000.0 / v13) <= [v10 timestamp])
  {
    v11 = 39;
  }

  else
  {
    v11 = 42;
  }

LABEL_13:

  return v11;
}

@end