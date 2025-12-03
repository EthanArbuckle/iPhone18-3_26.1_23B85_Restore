@interface RMGenericAuthenticationCredential
- (BOOL)_prepareSchemeMAIDTask:(id)task error:(id *)error;
- (BOOL)_prepareSchemeMAIDURLRequest:(id)request error:(id *)error;
- (BOOL)prepareTask:(id)task error:(id *)error;
- (BOOL)prepareURLRequest:(id)request error:(id *)error;
- (id)_appleIDContext;
- (id)_createAuthenticationParameters;
- (id)_updateBearerPropertiesAccountIdentifier:(id)identifier afterFailure:(BOOL)failure;
- (id)_updateTestPropertiesAccountIdentifier:(id)identifier afterFailure:(BOOL)failure;
@end

@implementation RMGenericAuthenticationCredential

- (BOOL)prepareURLRequest:(id)request error:(id *)error
{
  requestCopy = request;
  _createAuthenticationParameters = [(RMGenericAuthenticationCredential *)self _createAuthenticationParameters];
  authenticationScheme = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  v9 = [NSString stringWithFormat:@"%@ %@", authenticationScheme, _createAuthenticationParameters];
  [requestCopy setValue:v9 forHTTPHeaderField:@"Authorization"];

  authenticationScheme2 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  LODWORD(authenticationScheme) = [authenticationScheme2 isEqualToString:RMAuthenticationSchemeMAID];

  if (authenticationScheme)
  {
    v11 = [(RMGenericAuthenticationCredential *)self _prepareSchemeMAIDURLRequest:requestCopy error:error];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_prepareSchemeMAIDURLRequest:(id)request error:(id *)error
{
  requestCopy = request;
  [requestCopy ak_addDeviceUDIDHeader];
  [requestCopy ak_addClientInfoHeader];
  [requestCopy ak_addDeviceSerialNumberHeader];
  properties = [(RMGenericAuthenticationCredential *)self properties];
  v7 = [properties objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldAltDSID];
  v8 = [properties objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldShortLivedToken];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = v11;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [v11 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [RMDateFormat stringUTCWithDate:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v11 description];
          }
          stringValue = ;
        }
      }
    }

    v13 = stringValue;

    v14 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue2 = v14;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue2 = [v14 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue2 = [RMDateFormat stringUTCWithDate:v14];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v14 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v14 description];
          }
          stringValue2 = ;
        }
      }
    }

    v16 = stringValue2;

    [requestCopy ak_addAuthorizationHeaderWithServiceToken:v13 forAltDSID:v16];
  }

  v17 = [properties objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldDSID];
  v18 = [properties objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldLongLivedToken];
  v19 = v18;
  if (v17)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue3 = v21;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue3 = [v21 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue3 = [RMDateFormat stringUTCWithDate:v21];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v21 description];
          }
          stringValue3 = ;
        }
      }
    }

    v23 = stringValue3;

    v24 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue4 = v24;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue4 = [v24 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue4 = [RMDateFormat stringUTCWithDate:v24];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v24 description];
          }
          stringValue4 = ;
        }
      }
    }

    v26 = stringValue4;

    v27 = [NSString stringWithFormat:@"%@:%@", v23, v26];

    v28 = [v27 dataUsingEncoding:4];
    v29 = [v28 base64EncodedStringWithOptions:0];
    [requestCopy setValue:v29 forHTTPHeaderField:@"X-Apple-RM-MDM-Token"];
  }

  return 1;
}

- (BOOL)prepareTask:(id)task error:(id *)error
{
  taskCopy = task;
  authenticationScheme = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  v8 = [authenticationScheme isEqualToString:RMAuthenticationSchemeMAID];

  if (v8)
  {
    v9 = [(RMGenericAuthenticationCredential *)self _prepareSchemeMAIDTask:taskCopy error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_prepareSchemeMAIDTask:(id)task error:(id *)error
{
  taskCopy = task;
  if (objc_opt_respondsToSelector())
  {
    _appleIDContext = [(RMGenericAuthenticationCredential *)self _appleIDContext];
    [taskCopy _setAppleIDContext:_appleIDContext];
  }

  return 1;
}

- (id)_appleIDContext
{
  if (qword_1000E66C0 != -1)
  {
    sub_10000A954();
  }

  v3 = qword_1000E66B8;
  objc_sync_enter(v3);
  v4 = objc_getAssociatedObject(self, @"AssociatedKeyAppleIDContext");
  if (!v4)
  {
    v4 = objc_opt_new();
    objc_setAssociatedObject(self, @"AssociatedKeyAppleIDContext", v4, 0x301);
  }

  objc_sync_exit(v3);

  return v4;
}

- (id)_updateTestPropertiesAccountIdentifier:(id)identifier afterFailure:(BOOL)failure
{
  failureCopy = failure;
  properties = [(RMGenericAuthenticationCredential *)self properties];
  v7 = [properties mutableCopy];

  if (failureCopy)
  {
    v8 = +[RMLog genericAuthenticationCredential];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A968(self, v8);
    }

    v9 = objc_opt_new();
    uUIDString = [v9 UUIDString];
    [v7 setObject:uUIDString forKeyedSubscript:RMAuthenticationSchemeTestFieldToken];

    v11 = [RMGenericAuthenticationCredential alloc];
    authenticationScheme = [(RMGenericAuthenticationCredential *)self authenticationScheme];
    v13 = [v11 initWithAuthenticationScheme:authenticationScheme properties:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_updateBearerPropertiesAccountIdentifier:(id)identifier afterFailure:(BOOL)failure
{
  identifierCopy = identifier;
  properties = [(RMGenericAuthenticationCredential *)self properties];
  v7 = [properties mutableCopy];

  properties2 = [(RMGenericAuthenticationCredential *)self properties];
  v9 = RMAuthenticationSchemeBearerFieldAccessToken;
  v10 = [properties2 objectForKeyedSubscript:RMAuthenticationSchemeBearerFieldAccessToken];

  v11 = +[ACAccountStore rm_defaultStore];
  v12 = [v11 rm_remoteManagementAccountForIdentifier:identifierCopy];
  rm_bearerToken = [v12 rm_bearerToken];
  v14 = rm_bearerToken;
  if (rm_bearerToken && ([rm_bearerToken isEqualToString:v10] & 1) == 0)
  {
    v16 = +[RMLog genericAuthenticationCredential];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10000AA20();
    }

    [v7 setObject:v14 forKeyedSubscript:v9];
    v17 = [RMGenericAuthenticationCredential alloc];
    authenticationScheme = [(RMGenericAuthenticationCredential *)self authenticationScheme];
    v15 = [v17 initWithAuthenticationScheme:authenticationScheme properties:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_createAuthenticationParameters
{
  authenticationScheme = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  v4 = [authenticationScheme isEqualToString:RMAuthenticationSchemeBearer];

  properties = [(RMGenericAuthenticationCredential *)self properties];
  v6 = properties;
  if (v4)
  {
    v7 = [properties objectForKeyedSubscript:RMAuthenticationSchemeBearerFieldAccessToken];
  }

  else
  {
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [properties count]);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000A7AC;
    v12 = v11[3] = &unk_1000D0F08;
    v8 = v12;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [v8 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v7 = [v9 componentsJoinedByString:{@", "}];
  }

  return v7;
}

@end