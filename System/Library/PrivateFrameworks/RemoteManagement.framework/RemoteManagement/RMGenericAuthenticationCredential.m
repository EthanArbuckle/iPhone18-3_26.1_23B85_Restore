@interface RMGenericAuthenticationCredential
- (BOOL)_prepareSchemeMAIDTask:(id)a3 error:(id *)a4;
- (BOOL)_prepareSchemeMAIDURLRequest:(id)a3 error:(id *)a4;
- (BOOL)prepareTask:(id)a3 error:(id *)a4;
- (BOOL)prepareURLRequest:(id)a3 error:(id *)a4;
- (id)_appleIDContext;
- (id)_createAuthenticationParameters;
- (id)_updateBearerPropertiesAccountIdentifier:(id)a3 afterFailure:(BOOL)a4;
- (id)_updateTestPropertiesAccountIdentifier:(id)a3 afterFailure:(BOOL)a4;
@end

@implementation RMGenericAuthenticationCredential

- (BOOL)prepareURLRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RMGenericAuthenticationCredential *)self _createAuthenticationParameters];
  v8 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  v9 = [NSString stringWithFormat:@"%@ %@", v8, v7];
  [v6 setValue:v9 forHTTPHeaderField:@"Authorization"];

  v10 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  LODWORD(v8) = [v10 isEqualToString:RMAuthenticationSchemeMAID];

  if (v8)
  {
    v11 = [(RMGenericAuthenticationCredential *)self _prepareSchemeMAIDURLRequest:v6 error:a4];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_prepareSchemeMAIDURLRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 ak_addDeviceUDIDHeader];
  [v5 ak_addClientInfoHeader];
  [v5 ak_addDeviceSerialNumberHeader];
  v6 = [(RMGenericAuthenticationCredential *)self properties];
  v7 = [v6 objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldAltDSID];
  v8 = [v6 objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldShortLivedToken];
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
      v12 = v11;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [RMDateFormat stringUTCWithDate:v11];
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
          v12 = ;
        }
      }
    }

    v13 = v12;

    v14 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [RMDateFormat stringUTCWithDate:v14];
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
          v15 = ;
        }
      }
    }

    v16 = v15;

    [v5 ak_addAuthorizationHeaderWithServiceToken:v13 forAltDSID:v16];
  }

  v17 = [v6 objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldDSID];
  v18 = [v6 objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldLongLivedToken];
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
      v22 = v21;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v21 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [RMDateFormat stringUTCWithDate:v21];
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
          v22 = ;
        }
      }
    }

    v23 = v22;

    v24 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v24 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [RMDateFormat stringUTCWithDate:v24];
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
          v25 = ;
        }
      }
    }

    v26 = v25;

    v27 = [NSString stringWithFormat:@"%@:%@", v23, v26];

    v28 = [v27 dataUsingEncoding:4];
    v29 = [v28 base64EncodedStringWithOptions:0];
    [v5 setValue:v29 forHTTPHeaderField:@"X-Apple-RM-MDM-Token"];
  }

  return 1;
}

- (BOOL)prepareTask:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  v8 = [v7 isEqualToString:RMAuthenticationSchemeMAID];

  if (v8)
  {
    v9 = [(RMGenericAuthenticationCredential *)self _prepareSchemeMAIDTask:v6 error:a4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_prepareSchemeMAIDTask:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(RMGenericAuthenticationCredential *)self _appleIDContext];
    [v5 _setAppleIDContext:v6];
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

- (id)_updateTestPropertiesAccountIdentifier:(id)a3 afterFailure:(BOOL)a4
{
  v4 = a4;
  v6 = [(RMGenericAuthenticationCredential *)self properties];
  v7 = [v6 mutableCopy];

  if (v4)
  {
    v8 = +[RMLog genericAuthenticationCredential];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A968(self, v8);
    }

    v9 = objc_opt_new();
    v10 = [v9 UUIDString];
    [v7 setObject:v10 forKeyedSubscript:RMAuthenticationSchemeTestFieldToken];

    v11 = [RMGenericAuthenticationCredential alloc];
    v12 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
    v13 = [v11 initWithAuthenticationScheme:v12 properties:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_updateBearerPropertiesAccountIdentifier:(id)a3 afterFailure:(BOOL)a4
{
  v5 = a3;
  v6 = [(RMGenericAuthenticationCredential *)self properties];
  v7 = [v6 mutableCopy];

  v8 = [(RMGenericAuthenticationCredential *)self properties];
  v9 = RMAuthenticationSchemeBearerFieldAccessToken;
  v10 = [v8 objectForKeyedSubscript:RMAuthenticationSchemeBearerFieldAccessToken];

  v11 = +[ACAccountStore rm_defaultStore];
  v12 = [v11 rm_remoteManagementAccountForIdentifier:v5];
  v13 = [v12 rm_bearerToken];
  v14 = v13;
  if (v13 && ([v13 isEqualToString:v10] & 1) == 0)
  {
    v16 = +[RMLog genericAuthenticationCredential];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10000AA20();
    }

    [v7 setObject:v14 forKeyedSubscript:v9];
    v17 = [RMGenericAuthenticationCredential alloc];
    v18 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
    v15 = [v17 initWithAuthenticationScheme:v18 properties:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_createAuthenticationParameters
{
  v3 = [(RMGenericAuthenticationCredential *)self authenticationScheme];
  v4 = [v3 isEqualToString:RMAuthenticationSchemeBearer];

  v5 = [(RMGenericAuthenticationCredential *)self properties];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 objectForKeyedSubscript:RMAuthenticationSchemeBearerFieldAccessToken];
  }

  else
  {
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
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