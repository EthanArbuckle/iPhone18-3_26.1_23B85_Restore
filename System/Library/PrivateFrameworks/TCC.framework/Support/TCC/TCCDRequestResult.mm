@interface TCCDRequestResult
+ (void)populateReplyMessageToDeny:(id)deny withError:(id)error;
- (TCCDRequestResult)init;
- (id)descriptionWithRespectToService:(id)service;
- (void)denyAuthorizationWithErrorCode:(int64_t)code format:(id)format;
- (void)populateReplyMessage:(id)message;
@end

@implementation TCCDRequestResult

- (TCCDRequestResult)init
{
  v5.receiver = self;
  v5.super_class = TCCDRequestResult;
  v2 = [(TCCDRequestResult *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TCCDRequestResult *)v2 setAuthorizationVersion:1];
  }

  return v3;
}

+ (void)populateReplyMessageToDeny:(id)deny withError:(id)error
{
  errorCopy = error;
  xdict = deny;
  xpc_dictionary_set_BOOL(xdict, "result", 0);
  xpc_dictionary_set_uint64(xdict, "auth_value", 0);
  xpc_dictionary_set_uint64(xdict, "auth_reason", 1uLL);
  localizedDescription = [errorCopy localizedDescription];
  xpc_dictionary_set_string(xdict, "auth_error_string", [localizedDescription UTF8String]);

  code = [errorCopy code];
  xpc_dictionary_set_uint64(xdict, "auth_error_code", code);
}

- (void)denyAuthorizationWithErrorCode:(int64_t)code format:(id)format
{
  formatCopy = format;
  [(TCCDRequestResult *)self setAuthorizationValue:0];
  [(TCCDRequestResult *)self setAuthorizationReason:1];
  [(TCCDRequestResult *)self setDatabaseAction:0];
  v7 = [TCCDServer newErrorWithCode:code format:formatCopy arguments:&v11];

  [(TCCDRequestResult *)self setError:v7];
  v8 = +[TCCDPlatform currentPlatform];
  server = [v8 server];
  logHandle = [server logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    sub_100057720(self, logHandle);
  }
}

- (id)descriptionWithRespectToService:(id)service
{
  serviceCopy = service;
  v5 = objc_alloc_init(NSMutableString);
  objc_msgSend(v5, "appendString:", @"ReqResult(");
  if (serviceCopy && ([serviceCopy authorizationRightStateForValue:-[TCCDRequestResult authorizationValue](self reason:{"authorizationValue"), -[TCCDRequestResult authorizationReason](self, "authorizationReason")}], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 description];
    [v5 appendFormat:@"Auth Right: %@", v8];
  }

  else
  {
    [v5 appendFormat:@"Auth Value: 0x%llx", -[TCCDRequestResult authorizationValue](self, "authorizationValue")];
  }

  [v5 appendString:{@", "}];
  [v5 appendFormat:@"promptType: %lu, ", -[TCCDRequestResult promptType](self, "promptType")];
  error = [(TCCDRequestResult *)self error];

  if (error)
  {
    error2 = [(TCCDRequestResult *)self error];
    localizedDescription = [error2 localizedDescription];
    [v5 appendFormat:@"error: %@, ", localizedDescription];
  }

  [v5 appendString:@"DB Action:"];
  if ([(TCCDRequestResult *)self databaseAction])
  {
    if ([(TCCDRequestResult *)self databaseAction]== 1)
    {
      v12 = @"Update";
    }

    else
    {
      if ([(TCCDRequestResult *)self databaseAction]!= 2)
      {
        goto LABEL_14;
      }

      v12 = @"Retry";
    }
  }

  else
  {
    v12 = @"None";
  }

  [v5 appendString:v12];
LABEL_14:
  if ([(TCCDRequestResult *)self doUpdateOfSubjectVerifierData])
  {
    [v5 appendString:{@", UpdateVerifierData"}];
  }

  [v5 appendString:@""]);
  v13 = [v5 copy];

  return v13;
}

- (void)populateReplyMessage:(id)message
{
  xdict = message;
  v4 = [(TCCDRequestResult *)self authorizationValue]== 1;
  v5 = xdict;
  if (v4)
  {
    v6 = "preflight_unknown";
LABEL_9:
    v7 = 1;
LABEL_10:
    xpc_dictionary_set_BOOL(v5, v6, v7);
    goto LABEL_11;
  }

  if ([(TCCDRequestResult *)self authorizationValue])
  {
    v6 = "result";
LABEL_8:
    v5 = xdict;
    goto LABEL_9;
  }

  if ([(TCCDRequestResult *)self authorizationReason]== 7)
  {
    v6 = "restricted";
    goto LABEL_8;
  }

  if ([(TCCDRequestResult *)self authorizationReason]!= 8 || [(TCCDRequestResult *)self servicePolicyAction]!= 1)
  {
    v6 = "result";
    v5 = xdict;
    v7 = 0;
    goto LABEL_10;
  }

  servicePolicyActionDescription = [(TCCDRequestResult *)self servicePolicyActionDescription];
  xpc_dictionary_set_string(xdict, "abort", [servicePolicyActionDescription UTF8String]);

  servicePolicyActionKeyName = [(TCCDRequestResult *)self servicePolicyActionKeyName];
  xpc_dictionary_set_string(xdict, "problem_key", [servicePolicyActionKeyName UTF8String]);

LABEL_11:
  if ([(TCCDRequestResult *)self replyNoCacheAuthorization])
  {
    xpc_dictionary_set_BOOL(xdict, "do_not_cache", 1);
  }

  xpc_dictionary_set_uint64(xdict, "auth_value", [(TCCDRequestResult *)self authorizationValue]);
  xpc_dictionary_set_uint64(xdict, "auth_reason", [(TCCDRequestResult *)self authorizationReason]);
  xpc_dictionary_set_uint64(xdict, "auth_version", [(TCCDRequestResult *)self authorizationVersion]);
  xpc_dictionary_set_uint64(xdict, "prompt_type", [(TCCDRequestResult *)self promptType]);
  if (([(TCCDRequestResult *)self databaseFlags]& 0x10) != 0)
  {
    xpc_dictionary_set_BOOL(xdict, "has_prompted_for_allow", ([(TCCDRequestResult *)self databaseFlags]& 0x10) != 0);
  }

  error = [(TCCDRequestResult *)self error];

  if (error)
  {
    error2 = [(TCCDRequestResult *)self error];
    localizedDescription = [error2 localizedDescription];
    xpc_dictionary_set_string(xdict, "auth_error_string", [localizedDescription UTF8String]);

    error3 = [(TCCDRequestResult *)self error];
    xpc_dictionary_set_uint64(xdict, "auth_error_code", [error3 code]);

    if ([(TCCDRequestResult *)self authorizationReason]== 8 && [(TCCDRequestResult *)self servicePolicyAction]== 1)
    {
      servicePolicyActionDescription2 = [(TCCDRequestResult *)self servicePolicyActionDescription];
      xpc_dictionary_set_string(xdict, "auth_abort_description", [servicePolicyActionDescription2 UTF8String]);

      servicePolicyActionKeyName2 = [(TCCDRequestResult *)self servicePolicyActionKeyName];
      xpc_dictionary_set_string(xdict, "auth_abort_key", [servicePolicyActionKeyName2 UTF8String]);
    }
  }
}

@end