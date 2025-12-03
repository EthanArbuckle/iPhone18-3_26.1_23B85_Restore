@interface NSXPCConnection
- (BOOL)icd_isConnectionAllowedForService:(int64_t)service validationReason:(int64_t)reason;
@end

@implementation NSXPCConnection

- (BOOL)icd_isConnectionAllowedForService:(int64_t)service validationReason:(int64_t)reason
{
  processIdentifier = [(NSXPCConnection *)self processIdentifier];
  [(NSXPCConnection *)self auditToken];
  memset(buf, 0, 32);
  v8 = MSVBundleIDForAuditToken();
  v9 = ICCloudServerSupportedServiceGetName();
  if (!reason)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      *&buf[24] = processIdentifier;
      *&buf[32] = 2114;
      *&buf[34] = v9;
      *&buf[42] = 2048;
      *&buf[44] = service;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Incoming XPC connection %{public}@ from %{public}@[%ld] for service %{public}@[%ld].", buf, 0x34u);
    }
  }

  if (service != 4 && service != 1)
  {
LABEL_14:
    memset(buf, 0, 32);
    if (!TCCAccessCheckAuditToken())
    {
      if (!reason)
      {
        v17 = os_log_create("com.apple.amp.itunescloudd", "XPC");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544642;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v8;
          *&buf[22] = 1024;
          *&buf[24] = processIdentifier;
          *&buf[28] = 2114;
          *&buf[30] = v9;
          *&buf[38] = 2048;
          *&buf[40] = service;
          *&buf[48] = 2114;
          *&buf[50] = @"TCC not granted";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Refusing XPC connection %{public}@ from %{public}@[%d] for %{public}@[%ld]: %{public}@.", buf, 0x3Au);
        }
      }

      v18 = MSVAutoBugCaptureDomainiTunesCloud;
      v24[0] = @"processIdentifier";
      v19 = [NSNumber numberWithInt:processIdentifier];
      v12 = v19;
      if (v8)
      {
        v20 = v8;
      }

      else
      {
        v20 = &stru_1001E0388;
      }

      v25[0] = v19;
      v25[1] = v20;
      v24[1] = @"bundleID";
      v24[2] = @"serviceName";
      v24[3] = @"refusalReason";
      if (v9)
      {
        v21 = v9;
      }

      else
      {
        v21 = &stru_1001E0388;
      }

      v25[2] = v21;
      v25[3] = @"TCC not granted";
      v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
      v26 = v15;
      v22 = [NSArray arrayWithObjects:&v26 count:1];
      [MSVAutoBugCapture snapshotWithDomain:v18 type:@"Bug" subType:@"RefuseXPCConnection" context:&stru_1001E0388 triggerThresholdValues:0 events:v22 completion:0];

      v16 = 0;
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v11 = ICCloudServiceEntitlementStatusAccessExemptedFromUserConsentRequirement;
  v12 = [(NSXPCConnection *)self valueForEntitlement:ICCloudServiceEntitlementStatusAccessExemptedFromUserConsentRequirement];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_14;
  }

  bOOLValue = [v12 BOOLValue];
  v14 = bOOLValue;
  if (!reason && bOOLValue)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Client has %{public}@ entitlement. No need to check TCC access for cloud status monitor connection.", buf, 0x16u);
    }

    v16 = 1;
LABEL_27:

    goto LABEL_28;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v16 = 1;
LABEL_28:

  return v16;
}

@end