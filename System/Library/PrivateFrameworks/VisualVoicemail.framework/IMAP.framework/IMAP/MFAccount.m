@interface MFAccount
+ (id)accountPropertiesValueForKey:(id)a3 value:(id)a4;
+ (id)accountWithProperties:(id)a3;
+ (id)authSchemesForAccountClass;
- (BOOL)_BOOLForAccountInfoKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3;
- (BOOL)fetchTokensIfNecessary:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isManaged;
- (BOOL)setCredentialItem:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setOAuth2Token:(id)a3 refreshToken:(id)a4 error:(id *)a5;
- (BOOL)shouldFetchACEDBInfoForError:(id)a3;
- (BOOL)supportsMailDrop;
- (BOOL)usesSSL;
- (Class)connectionClass;
- (MFAccount)initWithProperties:(id)a3 andMambaID:(const char *)a4;
- (MFAccount)initWithoutPersistentAccount;
- (NSString)description;
- (NSString)displayName;
- (NSString)uniqueId;
- (NSString)vf_publicDescription;
- (id)_newConnection;
- (id)_objectForAccountInfoKey:(id)a3;
- (id)_passwordWithError:(id *)a3;
- (id)_privacySafeDescription;
- (id)clientCertificates;
- (id)credentialItemForKey:(id)a3 error:(id *)a4;
- (id)customDescriptionForError:(id)a3 authScheme:(id)a4 defaultDescription:(id)a5;
- (id)defaultConnectionSettings;
- (id)insecureConnectionSettings;
- (id)loginDisabledErrorWithTitle:(id)a3;
- (id)missingPasswordErrorWithTitle:(id)a3;
- (id)password;
- (id)preferredAuthScheme;
- (id)secureConnectionSettings;
- (id)valueInAccountPropertiesForKey:(id)a3;
- (unint64_t)credentialAccessibility;
- (unint64_t)hash;
- (unsigned)defaultPortNumber;
- (unsigned)defaultSecurePortNumber;
- (unsigned)portNumber;
- (void)_queueAccountInfoDidChange;
- (void)_setAccountProperties:(id)a3;
- (void)accountInfoDidChange;
- (void)applySettingsAsDefault:(id)a3;
- (void)dealloc;
- (void)removeValueInAccountPropertiesForKey:(id)a3;
- (void)reportAuthenticationError:(id)a3 authScheme:(id)a4;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setClientCertificates:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setDomain:(id)a3;
- (void)setHostname:(id)a3;
- (void)setPassword:(id)a3;
- (void)setPreferredAuthScheme:(id)a3;
- (void)setUsername:(id)a3;
- (void)setUsesSSL:(BOOL)a3;
- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4;
@end

@implementation MFAccount

- (BOOL)shouldFetchACEDBInfoForError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCA5B8]];

  v7 = 0x4601u >> (v4 - 51);
  if ((v4 - 51) > 0xE)
  {
    LOBYTE(v7) = 0;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 domain];
  v10 = [v9 isEqualToString:@"MFMessageErrorDomain"];

  if (v10)
  {
    v8 = v4 == 1034;
  }

  v11 = [v3 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277CBACE8]];

  v13 = (v4 - 1) < 2;
  if (!v12)
  {
    v13 = v8;
  }

  if (v13)
  {
    v14 = [objc_opt_class() shouldHealAccounts];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)accountWithProperties:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithProperties:v3];

  return v4;
}

+ (id)authSchemesForAccountClass
{
  if (authSchemesForAccountClass_onceToken != -1)
  {
    +[MFAccount authSchemesForAccountClass];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__MFAccount_authSchemesForAccountClass__block_invoke_2;
  v5[3] = &__block_descriptor_40_e22_B16__0__MFAuthScheme_8l;
  v5[4] = a1;
  v3 = [authSchemesForAccountClass_knownSchemes vf_filter:v5];

  return v3;
}

uint64_t __39__MFAccount_authSchemesForAccountClass__block_invoke()
{
  authSchemesForAccountClass_knownSchemes = +[MFAuthScheme knownSchemes];

  return MEMORY[0x2821F96F8]();
}

- (MFAccount)initWithProperties:(id)a3 andMambaID:(const char *)a4
{
  v6 = a3;
  self->mambaID = a4;
  v7 = [(MFAccount *)self initWithoutPersistentAccount];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v12 = [objc_opt_class() _accountClass];
    [v11 setObject:v12 forKey:@"Class"];

    [(MFAccount *)v7 _setAccountProperties:v11];
  }

  return v7;
}

- (MFAccount)initWithoutPersistentAccount
{
  v3.receiver = self;
  v3.super_class = MFAccount;
  return [(MFAccount *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAccount;
  [(MFAccount *)&v2 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uniqueId];
    v6 = [(MFAccount *)self uniqueId];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MFAccount *)self uniqueId];
  v3 = [v2 hash];

  return v3;
}

- (id)_privacySafeDescription
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"ACAccountIdentifierKey"];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(MFAccount *)self isActive];
  v7 = "not ";
  if (v6)
  {
    v7 = "";
  }

  v8 = [v4 stringWithFormat:@"<%@ %p> ID=%@ active=%sactive", v5, self, v3, v7];

  return v8;
}

- (NSString)description
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 vf_hexString];
  v6 = [(MFAccount *)self _privacySafeDescription];
  v7 = [v6 stringByAppendingFormat:@" displayName=%@", v5];

  return v7;
}

- (NSString)vf_publicDescription
{
  if (isInternalDevice())
  {
    [(MFAccount *)self description];
  }

  else
  {
    [(MFAccount *)self _privacySafeDescription];
  }
  v3 = ;

  return v3;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  unsavedAccountProperties = self->_unsavedAccountProperties;
  if (!unsavedAccountProperties)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_unsavedAccountProperties;
    self->_unsavedAccountProperties = v8;

    unsavedAccountProperties = self->_unsavedAccountProperties;
  }

  [(NSMutableDictionary *)unsavedAccountProperties setValue:v10 forKey:v6];
}

- (void)_queueAccountInfoDidChange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_accountInfoDidChange object:0];

  [(MFAccount *)self performSelector:sel_accountInfoDidChange withObject:0 afterDelay:0.0];
}

- (void)_setAccountProperties:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _MFLockGlobalLock();
  v5 = [v4 mutableCopy];
  v6 = [v5 objectForKey:@"Password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v5 objectForKey:@"Password"];
    v9 = [v7 initWithData:v8 encoding:1];

    v6 = v9;
  }

  [v5 removeObjectForKey:@"Password"];
  _MFUnlockGlobalLock();
  v10 = [v4 objectForKey:@"OAuth2Token"];
  v23 = v4;
  v11 = [v4 objectForKey:@"OAuth2RefreshToken"];
  if (v10)
  {
    [(MFAccount *)self setOAuth2Token:v10 refreshToken:v11 error:0];
  }

  v12 = [(MFAccount *)self uniqueId];
  v13 = [objc_opt_class() excludedAccountPropertyKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if (([v13 containsObject:v19] & 1) == 0)
        {
          v20 = [v14 objectForKey:v19];
          [(MFAccount *)self setAccountProperty:v20 forKey:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  if (v6)
  {
    [(MFAccount *)self setPassword:v6];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)accountPropertiesValueForKey:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = [a3 isEqual:@"EmailAddresses"];
  v7 = v5;
  if (v6)
  {
    v7 = [MEMORY[0x277D24F40] addressListFromEncodedString:v5];
  }

  return v7;
}

- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = a3;
  if ([v7 isEqual:@"Password"])
  {
    [(MFAccount *)self setPassword:v6];
  }

  else
  {
    [(MFAccount *)self setAccountProperty:v6 forKey:v7];
  }

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (void)removeValueInAccountPropertiesForKey:(id)a3
{
  v4 = a3;
  _MFLockGlobalLock();
  [(MFAccount *)self removeAccountPropertyForKey:v4];

  _MFUnlockGlobalLock();
}

- (id)valueInAccountPropertiesForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"SSLEnabled"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MFAccount usesSSL](self, "usesSSL")}];
    goto LABEL_10;
  }

  _MFLockGlobalLock();
  v5 = [(MFAccount *)self accountPropertyForKey:v4];
  _MFUnlockGlobalLock();
  if ([v4 isEqual:@"Password"])
  {
    v6 = [(MFAccount *)self password];
    goto LABEL_5;
  }

  if ([v4 isEqual:@"EmailAddresses"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [v5 allKeys];
      v7 = [v9 componentsJoinedByString:{@", "}];

      v5 = v9;
      goto LABEL_6;
    }

    v6 = [v5 componentsJoinedByString:{@", "}];
LABEL_5:
    v7 = v6;
LABEL_6:

    v5 = v7;
  }

LABEL_10:

  return v5;
}

- (id)_objectForAccountInfoKey:(id)a3
{
  v4 = a3;
  _MFLockGlobalLock();
  v5 = [(MFAccount *)self accountPropertyForKey:v4];

  _MFUnlockGlobalLock();

  return v5;
}

- (BOOL)_BOOLForAccountInfoKey:(id)a3 defaultValue:(BOOL)a4
{
  v6 = a3;
  _MFLockGlobalLock();
  v7 = [(MFAccount *)self accountPropertyForKey:v6];

  _MFUnlockGlobalLock();
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a4 = [v7 BOOLValue];
    }
  }

  return a4;
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (!v3)
  {
    v4 = [(MFAccount *)self username];
    v5 = [(MFAccount *)self hostname];
    v6 = v5;
    if (!v5 || ([v5 isEqualToString:&stru_288159858] & 1) != 0)
    {
      v3 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v4 && ![v4 isEqualToString:&stru_288159858])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [objc_opt_class() accountTypeString];
      v3 = [v7 stringWithFormat:@"%@:%@@%@", v8, v4, v6];

      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = v6;
    }

    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:v3 forKey:@"DisplayName"];
    _MFUnlockGlobalLock();
    goto LABEL_10;
  }

LABEL_11:

  return v3;
}

- (void)setDisplayName:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self displayName];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_288159858;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:v6 forKey:@"DisplayName"];
      _MFUnlockGlobalLock();
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setUsername:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self username];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_288159858;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      _MFLockGlobalLock();
      if (v6 && [(__CFString *)v6 length])
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"Username"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Username"];
      }

      _MFUnlockGlobalLock();
      [(MFAccount *)self releaseAllConnections];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setHostname:(id)a3
{
  v8 = a3;
  v4 = [(MFAccount *)self hostname];
  if ([(__CFString *)v8 length])
  {
    v5 = [(__CFString *)v8 mf_stringWithNoExtraSpaces];

    v6 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = v6;
  if (v4 != v6)
  {
    v7 = v4 ? v4 : &stru_288159858;
    if (([(__CFString *)v6 isEqualToString:v7]& 1) == 0)
    {
      _MFLockGlobalLock();
      if (v9 && [(__CFString *)v9 length])
      {
        [(MFAccount *)self setAccountProperty:v9 forKey:@"Hostname"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Hostname"];
      }

      _MFUnlockGlobalLock();
      [(MFAccount *)self releaseAllConnections];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (BOOL)isManaged
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"mcProfileUUID"];
  v3 = [v2 length];

  return v3 != 0;
}

- (BOOL)supportsMailDrop
{
  if (![(MFAccount *)self isManaged])
  {
    return 1;
  }

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"MFAccountSupportsMailDrop" defaultValue:0];
}

- (void)setPassword:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self _password];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_288159858;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      if (!v6 || ![(__CFString *)v6 length])
      {
        _MFLockGlobalLock();
        [(MFAccount *)self removeAccountPropertyForKey:@"Password"];
        _MFUnlockGlobalLock();
      }

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (id)_passwordWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (id)password
{
  v3 = [(MFAccount *)self preferredAuthScheme];
  v4 = v3;
  if (v3 && [v3 requiresPassword])
  {
    v5 = [(MFAccount *)self _password];
  }

  else
  {
    v5 = &stru_288159858;
  }

  return v5;
}

- (unint64_t)credentialAccessibility
{
  v5 = 0;
  v2 = [(MFAccount *)self _passwordWithError:&v5];
  v3 = [v2 length] == 0;

  return v3;
}

- (id)credentialItemForKey:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

- (BOOL)setCredentialItem:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

- (BOOL)setOAuth2Token:(id)a3 refreshToken:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

- (BOOL)fetchTokensIfNecessary:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (unsigned)portNumber
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"PortNumber"];
  v4 = [v3 intValue];

  if (v4)
  {
    return v4;
  }

  if ([(MFAccount *)self usesSSL])
  {
    v6 = [(MFAccount *)self defaultSecurePortNumber];
    if (v6)
    {
      return v6;
    }
  }

  return [(MFAccount *)self defaultPortNumber];
}

- (unsigned)defaultPortNumber
{
  v2 = objc_opt_class();

  return [v2 defaultPortNumber];
}

- (unsigned)defaultSecurePortNumber
{
  v2 = objc_opt_class();

  return [v2 defaultSecurePortNumber];
}

- (BOOL)usesSSL
{
  v3 = [objc_opt_class() usesSSL];

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"SSLEnabled" defaultValue:v3];
}

- (void)setUsesSSL:(BOOL)a3
{
  v3 = a3;
  if ([(MFAccount *)self usesSSL]!= a3)
  {
    _MFLockGlobalLock();
    if (v3)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [(MFAccount *)self setAccountProperty:v5 forKey:@"SSLEnabled"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SSLEnabled"];
    }

    _MFUnlockGlobalLock();
    [(MFAccount *)self releaseAllConnections];

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setDomain:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self domain];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_288159858;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      _MFLockGlobalLock();
      if (v6 && [(__CFString *)v6 length])
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"Domain"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Domain"];
      }

      _MFUnlockGlobalLock();
      [(MFAccount *)self releaseAllConnections];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (id)clientCertificates
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLClientIdentity"];
  if (v3)
  {
    v4 = [MFMessageKeychainManager copyIdentityForPersistentReference:v3 error:0];
    if (v4)
    {
LABEL_3:
      v9[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      CFRelease(v4);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [(MFAccount *)self hostname];
    v4 = [MFMessageKeychainManager copyClientSSLIdentityForHostName:v6 error:0];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setClientCertificates:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [v7 objectAtIndex:0];
    v5 = CFGetTypeID(v4);
    if (v5 == SecIdentityGetTypeID())
    {
      v6 = [MFMessageKeychainManager persistentReferenceForIdentity:v4 error:0];
      _MFLockGlobalLock();
      if (v6)
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"SSLClientIdentity"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"SSLClientIdentity"];
      }

      _MFUnlockGlobalLock();
    }
  }
}

- (void)accountInfoDidChange
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(MFAccount *)self properties];
  [v4 postNotificationName:@"AccountInfoDidChange" object:self userInfo:v3];
}

- (id)preferredAuthScheme
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"AuthenticationScheme"];
  if ([@"PLAIN" isEqualToString:v3])
  {

    v3 = &stru_288159858;
  }

  else if (!v3)
  {
    if ([(MFAccount *)self requiresAuthentication])
    {
      v3 = &stru_288159858;
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = [MFAuthScheme schemeWithName:v3];

  return v4;
}

- (void)setPreferredAuthScheme:(id)a3
{
  v7 = a3;
  v4 = [(MFAccount *)self preferredAuthScheme];

  v5 = v7;
  if (v4 != v7)
  {
    v6 = [v7 name];
    _MFLockGlobalLock();
    if (v6)
    {
      [(MFAccount *)self setAccountProperty:v6 forKey:@"AuthenticationScheme"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"AuthenticationScheme"];
    }

    _MFUnlockGlobalLock();

    v5 = v7;
  }
}

- (id)_newConnection
{
  v3 = objc_alloc([(MFAccount *)self connectionClass]);
  mambaID = self->mambaID;

  return [v3 initWithMambaID:mambaID];
}

- (Class)connectionClass
{
  v2 = [(MFAccount *)self preferredAuthScheme];
  v3 = [v2 connectionClassForAccountClass:objc_opt_class()];

  return v3;
}

- (id)defaultConnectionSettings
{
  v3 = objc_alloc_init(MFConnectionSettings);
  [(MFConnectionSettings *)v3 setUsesSSL:[(MFAccount *)self usesSSL]];
  v4 = [(MFAccount *)self hostname];
  [(MFConnectionSettings *)v3 setHostname:v4];

  [(MFConnectionSettings *)v3 setPortNumber:[(MFAccount *)self portNumber]];
  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    v5 = [(MFAccount *)self clientCertificates];
    [(MFConnectionSettings *)v3 setClientCertificates:v5];
  }

  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    v6 = [(MFAccount *)self _shouldTryDirectSSLConnectionOnPort:[(MFConnectionSettings *)v3 portNumber]];
  }

  else
  {
    v6 = 0;
  }

  [(MFConnectionSettings *)v3 setTryDirectSSL:v6];
  if ([(MFConnectionSettings *)v3 tryDirectSSL])
  {
    [(MFAccount *)self secureServiceName];
  }

  else
  {
    [(MFAccount *)self serviceName];
  }
  v7 = ;
  [(MFConnectionSettings *)v3 setServiceName:v7];

  [(MFConnectionSettings *)v3 setConnectionServiceType:[(MFAccount *)self connectionServiceType]];
  v8 = [(MFAccount *)self uniqueId];
  [(MFConnectionSettings *)v3 setAccountIdentifier:v8];

  v9 = [(MFAccount *)self networkAccountIdentifier];
  [(MFConnectionSettings *)v3 setNetworkAccountIdentifier:v9];

  v10 = [(MFAccount *)self sourceApplicationBundleIdentifier];
  if ([v10 length])
  {
    [(MFConnectionSettings *)v3 setSourceApplicationBundleIdentifier:v10];
  }

  return v3;
}

- (void)applySettingsAsDefault:(id)a3
{
  v4 = a3;
  -[MFAccount setUsesSSL:](self, "setUsesSSL:", [v4 usesSSL]);
  -[MFAccount setPortNumber:](self, "setPortNumber:", [v4 portNumber]);
  v5 = [v4 tryDirectSSL];

  [(MFAccount *)self setTryDirectSSL:v5];
}

- (id)insecureConnectionSettings
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self defaultConnectionSettings];
  [v2 setUsesSSL:0];
  [v2 setTryDirectSSL:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)secureConnectionSettings
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self defaultConnectionSettings];
  [v3 setUsesSSL:1];
  [v3 setTryDirectSSL:1];
  [v3 setPortNumber:{-[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber")}];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3
{
  v4 = [(MFAccount *)self defaultSecurePortNumber]== a3;
  v5 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  v6 = v5;
  if (v5)
  {
    v4 = [v5 BOOLValue];
  }

  return v4;
}

- (id)customDescriptionForError:(id)a3 authScheme:(id)a4 defaultDescription:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if ([(MFAccount *)self credentialAccessibility]== 1)
  {
    v9 = v8;
    if ([v7 code] == 1032)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [(MFAccount *)self username];
      v12 = [(MFAccount *)self hostname];
      v9 = [v10 stringWithFormat:@"No password provided for user “%@” on server “%@”.\n\nPlease go to Mail Account Settings and enter a password.", v11, v12];
    }
  }

  return v9;
}

- (void)reportAuthenticationError:(id)a3 authScheme:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = +[MFActivityMonitor currentMonitor];
  v8 = [v7 localizedDescription];
  v9 = [(MFAccount *)self customDescriptionForError:v7 authScheme:v6 defaultDescription:v8];

  v10 = [v7 setLocalizedDescription:v9];
  [v11 setError:v7];
}

- (NSString)uniqueId
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"ACAccountIdentifierKey"];
  if (!v3)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    if (v5)
    {
      v6 = v5;
      v3 = CFUUIDCreateString(v4, v5);
      CFRelease(v6);
    }

    else
    {
      v3 = 0;
    }

    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:v3 forKey:@"ACAccountIdentifierKey"];
    _MFUnlockGlobalLock();
  }

  return v3;
}

- (id)missingPasswordErrorWithTitle:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(MFAccount *)self displayName];
  v7 = [v4 stringWithFormat:@"No password provided for “%@”.\n\nPlease go to Mail Account Settings and enter a password.", v6];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1055 localizedDescription:v7 title:v5 userInfo:0];

  return v8;
}

- (id)loginDisabledErrorWithTitle:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(MFAccount *)self displayName];
  v7 = [v4 stringWithFormat:@"Logins are disabled for “%@”.", v6];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1059 localizedDescription:v7 title:v5 userInfo:0];

  return v8;
}

@end