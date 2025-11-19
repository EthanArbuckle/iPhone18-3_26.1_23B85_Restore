@interface SSAuthenticationResponse
- (BOOL)isManagedStudent;
- (BOOL)isNewCustomer;
- (NSNumber)accountUniqueIdentifier;
- (NSNumber)failureType;
- (NSString)accountName;
- (NSString)creditsString;
- (NSString)storeFrontIdentifier;
- (NSString)token;
- (NSString)userMessage;
- (SSAuthenticationResponse)initWithURLResponse:(id)a3 dictionary:(id)a4;
- (id)_valueForFirstAvailableKey:(id)a3;
- (id)altDSID;
- (id)newAccount;
- (int64_t)_responseTypeForErrorNumber:(int64_t)a3;
- (int64_t)_responseTypeForFailureType:(int64_t)a3;
- (int64_t)_responseTypeForStatusValue:(int64_t)a3;
- (int64_t)accountKind;
- (int64_t)availableServiceTypes;
- (int64_t)enabledServiceTypes;
- (int64_t)responseType;
@end

@implementation SSAuthenticationResponse

- (SSAuthenticationResponse)initWithURLResponse:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SSAuthenticationResponse;
  v8 = [(SSAuthenticationResponse *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    responseDictionary = v8->_responseDictionary;
    v8->_responseDictionary = v9;

    v11 = [v6 copy];
    urlResponse = v8->_urlResponse;
    v8->_urlResponse = v11;
  }

  return v8;
}

- (int64_t)accountKind
{
  v2 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"accountKind", 0];
  v3 = 0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 intValue] == 1;
  }

  return v3;
}

- (NSString)accountName
{
  v3 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"appleId", @"accountName", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = v3, (v5 = v4) == 0))
  {
    v6 = [(NSDictionary *)self->_responseDictionary objectForKey:@"personInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"acAccountName"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v7;
        v5 = v3;
      }

      else
      {
        v5 = 0;
        v3 = v7;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = v3;
  }

  return v5;
}

- (NSNumber)accountUniqueIdentifier
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"dsPersonId"];
  v3 = SSAccountGetUniqueIdentifierFromValue(v2);

  return v3;
}

- (id)altDSID
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"altDsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)availableServiceTypes
{
  v2 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"is-cloud-enabled", @"is-saga-enabled", 0];
  v3 = 0;
  if (objc_opt_respondsToSelector())
  {
    if ([v2 BOOLValue])
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)creditsString
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"creditDisplay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)enabledServiceTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"services", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v9 isEqualToString:@"locker"])
            {
              v3 |= 4uLL;
            }

            else if ([v9 isEqualToString:@"purchase-history"])
            {
              v3 |= 2uLL;
            }

            else
            {
              v3 |= [v9 isEqualToString:@"social"];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v3 = 0;
    }

    v2 = v11;
  }

  return v3;
}

- (NSNumber)failureType
{
  v2 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"failureType", @"errorNumber", 0];
  v3 = 0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "intValue")}];
  }

  return v3;
}

- (BOOL)isManagedStudent
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"isManagedStudent"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isNewCustomer
{
  v2 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"newCustomer", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newAccount
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(SSAuthenticationResponse *)self accountUniqueIdentifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v25 = [v4 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    v26 = v4;
    [v4 accountsWithAccountType:?];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v30 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [v10 username];
        v12 = [(SSAuthenticationResponse *)self accountName];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = off_1E84AB000;
      v15 = [[SSAccount alloc] initWithBackingAccount:v10];

      if (v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v14 = off_1E84AB000;
    }

    v15 = objc_alloc_init(v14[2]);
LABEL_13:
    [(SSAccount *)v15 setAccountKind:[(SSAuthenticationResponse *)self accountKind]];
    v16 = [(SSAuthenticationResponse *)self accountName];
    [(SSAccount *)v15 setAccountName:v16];

    [(SSAccount *)v15 setAccountScope:SSAccountScopeForURLBagType([(SSAuthenticationResponse *)self URLBagType])];
    v17 = [(SSAuthenticationResponse *)self altDSID];
    [(SSAccount *)v15 setAltDSID:v17];

    [(SSAccount *)v15 setAvailableServiceTypes:[(SSAuthenticationResponse *)self availableServiceTypes]];
    v18 = [(SSAuthenticationResponse *)self creditsString];
    [(SSAccount *)v15 setCreditsString:v18];

    [(SSAccount *)v15 setEnabledServiceTypes:[(SSAuthenticationResponse *)self enabledServiceTypes]];
    [(SSAccount *)v15 setManagedAppleID:[(SSAuthenticationResponse *)self isManagedStudent]];
    [(SSAccount *)v15 setNewCustomer:[(SSAuthenticationResponse *)self isNewCustomer]];
    v19 = [(SSAuthenticationResponse *)self token];
    [(SSAccount *)v15 setSecureToken:v19];

    v20 = [(SSAuthenticationResponse *)self storeFrontIdentifier];
    [(SSAccount *)v15 setStoreFrontIdentifier:v20];

    [(SSAccount *)v15 setUniqueIdentifier:v3];
    v21 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"address", 0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 objectForKey:@"firstName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSAccount *)v15 setFirstName:v22];
      }

      v23 = [v21 objectForKey:@"lastName"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSAccount *)v15 setLastName:v23];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)responseType
{
  v3 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"failureType", 0];
  if (objc_opt_respondsToSelector())
  {
    v4 = -[SSAuthenticationResponse _responseTypeForFailureType:](self, "_responseTypeForFailureType:", [v3 integerValue]);
  }

  else
  {
    v6 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"errorNumber", 0];

    if (objc_opt_respondsToSelector())
    {
      v5 = -[SSAuthenticationResponse _responseTypeForErrorNumber:](self, "_responseTypeForErrorNumber:", [v6 integerValue]);
      v3 = v6;
      goto LABEL_9;
    }

    v3 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"status", 0];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 3;
      goto LABEL_9;
    }

    v4 = -[SSAuthenticationResponse _responseTypeForStatusValue:](self, "_responseTypeForStatusValue:", [v3 integerValue]);
  }

  v5 = v4;
LABEL_9:

  return v5;
}

- (NSString)storeFrontIdentifier
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(NSHTTPURLResponse *)self->_urlResponse allHeaderFields];
  v3 = [v2 objectForKey:@"X-Set-Apple-Store-Front"];
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [@"X-Set-Apple-Store-Front" lowercaseString];
  v4 = [v2 objectForKey:v5];

  if (!v4)
  {
    v3 = [v2 objectForKey:@"X-Apple-Request-Store-Front"];
    if (v3)
    {
LABEL_2:
      v4 = v3;
      goto LABEL_4;
    }

    v7 = [@"X-Apple-Request-Store-Front" lowercaseString];
    v4 = [v2 objectForKey:v7];

    if (!v4)
    {
      v8 = +[SSAccountStore defaultStore];
      v9 = [v8 localAccount];
      v10 = [v9 resultWithError:0];

      v4 = [v10 storeFrontIdentifier];

      if (!v4)
      {
        v11 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v11)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        v12 = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        v14 = [v11 OSLogObject];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v13 &= 2u;
        }

        if (v13)
        {
          LODWORD(v24) = 138543362;
          *(&v24 + 4) = objc_opt_class();
          v15 = *(&v24 + 4);
          LODWORD(v23) = 12;
          v16 = _os_log_send_and_compose_impl();

          if (!v16)
          {
LABEL_21:

            v4 = 0;
            goto LABEL_4;
          }

          v14 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v24, v23, v24}];
          free(v16);
          SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, v14);
        }

        goto LABEL_21;
      }
    }
  }

LABEL_4:

  return v4;
}

- (NSString)token
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"xToken"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = v3, (v5 = v4) == 0))
  {
    v5 = [(NSDictionary *)self->_responseDictionary objectForKey:@"passwordToken"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
      v5 = v4;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)userMessage
{
  v2 = [(SSAuthenticationResponse *)self _valueForFirstAvailableKey:@"customerMessage", @"errorKey", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  return v3;
}

- (int64_t)_responseTypeForErrorNumber:(int64_t)a3
{
  if ((a3 - 9007) > 2)
  {
    return 3;
  }

  else
  {
    return qword_1D4B38FA8[a3 - 9007];
  }
}

- (int64_t)_responseTypeForFailureType:(int64_t)a3
{
  v3 = 3;
  if (a3 == -128)
  {
    v3 = 1;
  }

  if (a3 == -5000)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_responseTypeForStatusValue:(int64_t)a3
{
  v3 = 3;
  if (a3 == -128)
  {
    v3 = 1;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a3 == -5000)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (id)_valueForFirstAvailableKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_responseDictionary objectForKey:@"accountInfo"];
  v11 = &v13;
  if (v4)
  {
    do
    {
      v6 = [(NSDictionary *)self->_responseDictionary objectForKey:v4];
      if (!v6)
      {
        v6 = [v5 objectForKey:v4];
      }

      v7 = v11++;
      v8 = *v7;

      if (v8)
      {
        v9 = v6 == 0;
      }

      else
      {
        v9 = 0;
      }

      v4 = v8;
    }

    while (v9);
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return v6;
}

@end