@interface TCCDAttributionChain
- (TCCDAttributionChain)initWithMessage:(id)message evaluateResponsibility:(BOOL)responsibility processInfo:(id)info;
- (TCCDProcess)accessingProcess;
- (TCCDProcess)responsibleProcess;
- (id)attributedBundleUsingOutermostBundle:(BOOL)bundle computedStaticCodeRef:(const void *)ref computedNonIdentifiableBundleURL:(id *)l;
- (id)createProcessFromAuditToken:(id *)token processInfo:(id)info;
- (id)description;
@end

@implementation TCCDAttributionChain

- (TCCDProcess)accessingProcess
{
  accessingProcess = self->_accessingProcess;
  if (accessingProcess)
  {
    requestingProcess = accessingProcess;
  }

  else
  {
    requestingProcess = [(TCCDAttributionChain *)self requestingProcess];
  }

  return requestingProcess;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_responsibleProcessIsValid)
  {
    responsibleProcess = self->_responsibleProcess;
    if (responsibleProcess)
    {
      v6 = [(TCCDProcess *)responsibleProcess description];
      [v4 appendFormat:@"responsible={%@}, ", v6];
    }
  }

  else
  {
    [v3 appendString:{@"Invalid Responsible Process, "}];
  }

  if (self->_accessingProcessSpecified)
  {
    if (self->_accessingProcessIsValid)
    {
      accessingProcess = self->_accessingProcess;
      if (accessingProcess)
      {
        v8 = [(TCCDProcess *)accessingProcess description];
        [v4 appendFormat:@"accessing={%@}, ", v8];
      }
    }

    else
    {
      [v4 appendString:{@"Invalid Accessing Process, "}];
    }
  }

  requestingProcess = [(TCCDAttributionChain *)self requestingProcess];

  if (requestingProcess)
  {
    requestingProcess2 = [(TCCDAttributionChain *)self requestingProcess];
    v11 = [requestingProcess2 description];
    [v4 appendFormat:@"requesting={%@}, ", v11];
  }

  return v4;
}

- (TCCDProcess)responsibleProcess
{
  responsibleProcess = self->_responsibleProcess;
  if (responsibleProcess)
  {
    accessingProcess = responsibleProcess;
  }

  else
  {
    accessingProcess = [(TCCDAttributionChain *)self accessingProcess];
  }

  return accessingProcess;
}

- (id)createProcessFromAuditToken:(id *)token processInfo:(id)info
{
  v5 = [TCCDProcess alloc];
  v6 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v6;
  v7 = [(TCCDProcess *)v5 initWithAuditToken:v9 responsibleIdentity:0];

  return v7;
}

- (TCCDAttributionChain)initWithMessage:(id)message evaluateResponsibility:(BOOL)responsibility processInfo:(id)info
{
  messageCopy = message;
  infoCopy = info;
  v38.receiver = self;
  v38.super_class = TCCDAttributionChain;
  v9 = [(TCCDAttributionChain *)&v38 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_25;
  }

  *buf = 0u;
  v40 = 0u;
  [(TCCDAttributionChain *)v9 getAuditToken:buf fromMessage:messageCopy];
  v36 = *buf;
  v37 = v40;
  v11 = [(TCCDAttributionChain *)v10 createProcessFromAuditToken:&v36 processInfo:infoCopy];
  [(TCCDAttributionChain *)v10 setRequestingProcess:v11];

  requestingProcess = [(TCCDAttributionChain *)v10 requestingProcess];

  if (!requestingProcess)
  {
    goto LABEL_22;
  }

  [(TCCDAttributionChain *)v10 setAccessingProcessSpecified:0];
  length = 0;
  data = xpc_dictionary_get_data(messageCopy, "target_token", &length);
  if (data)
  {
    v14 = data;
    if (!xpc_dictionary_get_BOOL(messageCopy, "use_indirect_token"))
    {
      v15 = "target_token";
      goto LABEL_8;
    }
  }

  v15 = "indirect_object_token";
  v16 = xpc_dictionary_get_data(messageCopy, "indirect_object_token", &length);
  if (v16)
  {
    v14 = v16;
LABEL_8:
    [(TCCDAttributionChain *)v10 setAccessingProcessSpecified:1];
    [(TCCDAttributionChain *)v10 setAccessingProcessIsValid:0];
    if (length != 32)
    {
      v20 = +[TCCDPlatform currentPlatform];
      server = [v20 server];
      logHandle = [server logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_10005C9F8(v15, v10);
      }

      goto LABEL_24;
    }

    v17 = v14[1];
    v36 = *v14;
    v37 = v17;
    v18 = [(TCCDAttributionChain *)v10 createProcessFromAuditToken:&v36 processInfo:infoCopy];
    accessingProcess = v10->_accessingProcess;
    v10->_accessingProcess = v18;

    if (v10->_accessingProcess)
    {
      [(TCCDAttributionChain *)v10 setAccessingProcessIsValid:1];
      goto LABEL_24;
    }

    v26 = +[TCCDPlatform currentPlatform];
    server2 = [v26 server];
    logHandle2 = [server2 logHandle];

    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_10005CA9C(v15, v10);
    }

LABEL_22:
    v10 = 0;
    goto LABEL_28;
  }

  v23 = xpc_dictionary_get_value(messageCopy, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");

  if (v23)
  {
    v24 = xpc_dictionary_get_value(messageCopy, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
    v25 = v24;
    if (!v24 || xpc_dictionary_get_uint64(v24, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_TYPE_KEY") != 1)
    {

      goto LABEL_24;
    }

    v14 = xpc_dictionary_get_data(v25, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_AUDIT_TOKEN_KEY", &length);

    if (v14)
    {
      v15 = "indirect_object_token";
      goto LABEL_8;
    }
  }

LABEL_24:
  v10->_responsibleProcessIsValid = 1;
  responsibleProcess = v10->_responsibleProcess;
  v10->_responsibleProcess = 0;

LABEL_25:
  v30 = +[TCCDPlatform currentPlatform];
  server3 = [v30 server];
  logHandle3 = [server3 logHandle];

  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_INFO))
  {
    v33 = [(TCCDAttributionChain *)v10 description];
    *buf = 138543362;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_INFO, "AttributionChain: %{public}@", buf, 0xCu);
  }

LABEL_28:
  return v10;
}

- (id)attributedBundleUsingOutermostBundle:(BOOL)bundle computedStaticCodeRef:(const void *)ref computedNonIdentifiableBundleURL:(id *)l
{
  bundleCopy = bundle;
  v7 = [(TCCDAttributionChain *)self responsibleProcess:bundle];
  responsiblePath = [v7 responsiblePath];
  v9 = [NSURL fileURLWithPath:responsiblePath];

  if (l)
  {
    *l = 0;
  }

  if (v9)
  {
    v10 = +[TCCDPlatform currentPlatform];
    v11 = v10;
    if (bundleCopy)
    {
      [v10 appBundleURLContainingExecutableURL:v9];
    }

    else
    {
      [v10 bundleURLContainingExecutableURL:v9];
    }
    v13 = ;

    if (v13)
    {
      v14 = [TCCDBundle bundleWithURL:v13];
      if (v14)
      {
        logHandle2 = v14;
        bundleIdentifier = [v14 bundleIdentifier];

        if (bundleIdentifier)
        {
LABEL_19:

          goto LABEL_20;
        }

        v16 = +[TCCDPlatform currentPlatform];
        server = [v16 server];
        logHandle = [server logHandle];

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138543362;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "BUNDLE_ATTRIBUTION: attributed bundle %{public}@ has no identifier and is not valid.", &v23, 0xCu);
        }

        if (l)
        {
          v19 = v13;
          *l = v13;
        }
      }

      else
      {
        v20 = +[TCCDPlatform currentPlatform];
        server2 = [v20 server];
        logHandle2 = [server2 logHandle];

        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
        {
          sub_10005CB40(v13, logHandle2);
        }
      }
    }

    logHandle2 = 0;
    goto LABEL_19;
  }

  logHandle2 = 0;
LABEL_20:

  return logHandle2;
}

@end