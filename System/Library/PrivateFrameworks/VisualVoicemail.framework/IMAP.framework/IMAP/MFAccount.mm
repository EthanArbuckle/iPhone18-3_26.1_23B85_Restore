@interface MFAccount
+ (id)accountPropertiesValueForKey:(id)key value:(id)value;
+ (id)accountWithProperties:(id)properties;
+ (id)authSchemesForAccountClass;
- (BOOL)_BOOLForAccountInfoKey:(id)key defaultValue:(BOOL)value;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port;
- (BOOL)fetchTokensIfNecessary:(id *)necessary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isManaged;
- (BOOL)setCredentialItem:(id)item forKey:(id)key error:(id *)error;
- (BOOL)setOAuth2Token:(id)token refreshToken:(id)refreshToken error:(id *)error;
- (BOOL)shouldFetchACEDBInfoForError:(id)error;
- (BOOL)supportsMailDrop;
- (BOOL)usesSSL;
- (Class)connectionClass;
- (MFAccount)initWithProperties:(id)properties andMambaID:(const char *)d;
- (MFAccount)initWithoutPersistentAccount;
- (NSString)description;
- (NSString)displayName;
- (NSString)uniqueId;
- (NSString)vf_publicDescription;
- (id)_newConnection;
- (id)_objectForAccountInfoKey:(id)key;
- (id)_passwordWithError:(id *)error;
- (id)_privacySafeDescription;
- (id)clientCertificates;
- (id)credentialItemForKey:(id)key error:(id *)error;
- (id)customDescriptionForError:(id)error authScheme:(id)scheme defaultDescription:(id)description;
- (id)defaultConnectionSettings;
- (id)insecureConnectionSettings;
- (id)loginDisabledErrorWithTitle:(id)title;
- (id)missingPasswordErrorWithTitle:(id)title;
- (id)password;
- (id)preferredAuthScheme;
- (id)secureConnectionSettings;
- (id)valueInAccountPropertiesForKey:(id)key;
- (unint64_t)credentialAccessibility;
- (unint64_t)hash;
- (unsigned)defaultPortNumber;
- (unsigned)defaultSecurePortNumber;
- (unsigned)portNumber;
- (void)_queueAccountInfoDidChange;
- (void)_setAccountProperties:(id)properties;
- (void)accountInfoDidChange;
- (void)applySettingsAsDefault:(id)default;
- (void)dealloc;
- (void)removeValueInAccountPropertiesForKey:(id)key;
- (void)reportAuthenticationError:(id)error authScheme:(id)scheme;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setClientCertificates:(id)certificates;
- (void)setDisplayName:(id)name;
- (void)setDomain:(id)domain;
- (void)setHostname:(id)hostname;
- (void)setPassword:(id)password;
- (void)setPreferredAuthScheme:(id)scheme;
- (void)setUsername:(id)username;
- (void)setUsesSSL:(BOOL)l;
- (void)setValueInAccountProperties:(id)properties forKey:(id)key;
@end

@implementation MFAccount

- (BOOL)shouldFetchACEDBInfoForError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CCA5B8]];

  v7 = 0x4601u >> (code - 51);
  if ((code - 51) > 0xE)
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

  domain2 = [errorCopy domain];
  v10 = [domain2 isEqualToString:@"MFMessageErrorDomain"];

  if (v10)
  {
    v8 = code == 1034;
  }

  domain3 = [errorCopy domain];
  v12 = [domain3 isEqualToString:*MEMORY[0x277CBACE8]];

  v13 = (code - 1) < 2;
  if (!v12)
  {
    v13 = v8;
  }

  if (v13)
  {
    shouldHealAccounts = [objc_opt_class() shouldHealAccounts];
  }

  else
  {
    shouldHealAccounts = 0;
  }

  return shouldHealAccounts;
}

+ (id)accountWithProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [objc_alloc(objc_opt_class()) initWithProperties:propertiesCopy];

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
  v5[4] = self;
  v3 = [authSchemesForAccountClass_knownSchemes vf_filter:v5];

  return v3;
}

uint64_t __39__MFAccount_authSchemesForAccountClass__block_invoke()
{
  authSchemesForAccountClass_knownSchemes = +[MFAuthScheme knownSchemes];

  return MEMORY[0x2821F96F8]();
}

- (MFAccount)initWithProperties:(id)properties andMambaID:(const char *)d
{
  propertiesCopy = properties;
  self->mambaID = d;
  initWithoutPersistentAccount = [(MFAccount *)self initWithoutPersistentAccount];
  if (initWithoutPersistentAccount)
  {
    v8 = [propertiesCopy mutableCopy];
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

    _accountClass = [objc_opt_class() _accountClass];
    [v11 setObject:_accountClass forKey:@"Class"];

    [(MFAccount *)initWithoutPersistentAccount _setAccountProperties:v11];
  }

  return initWithoutPersistentAccount;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueId = [equalCopy uniqueId];
    uniqueId2 = [(MFAccount *)self uniqueId];
    v7 = [uniqueId isEqualToString:uniqueId2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uniqueId = [(MFAccount *)self uniqueId];
  v3 = [uniqueId hash];

  return v3;
}

- (id)_privacySafeDescription
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"ACAccountIdentifierKey"];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  isActive = [(MFAccount *)self isActive];
  v7 = "not ";
  if (isActive)
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
  vf_hexString = [v4 vf_hexString];
  _privacySafeDescription = [(MFAccount *)self _privacySafeDescription];
  v7 = [_privacySafeDescription stringByAppendingFormat:@" displayName=%@", vf_hexString];

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

- (void)setAccountProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  unsavedAccountProperties = self->_unsavedAccountProperties;
  if (!unsavedAccountProperties)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_unsavedAccountProperties;
    self->_unsavedAccountProperties = v8;

    unsavedAccountProperties = self->_unsavedAccountProperties;
  }

  [(NSMutableDictionary *)unsavedAccountProperties setValue:propertyCopy forKey:keyCopy];
}

- (void)_queueAccountInfoDidChange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_accountInfoDidChange object:0];

  [(MFAccount *)self performSelector:sel_accountInfoDidChange withObject:0 afterDelay:0.0];
}

- (void)_setAccountProperties:(id)properties
{
  v29 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  _MFLockGlobalLock();
  v5 = [propertiesCopy mutableCopy];
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
  v10 = [propertiesCopy objectForKey:@"OAuth2Token"];
  v23 = propertiesCopy;
  v11 = [propertiesCopy objectForKey:@"OAuth2RefreshToken"];
  if (v10)
  {
    [(MFAccount *)self setOAuth2Token:v10 refreshToken:v11 error:0];
  }

  uniqueId = [(MFAccount *)self uniqueId];
  excludedAccountPropertyKeys = [objc_opt_class() excludedAccountPropertyKeys];
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
        if (([excludedAccountPropertyKeys containsObject:v19] & 1) == 0)
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

+ (id)accountPropertiesValueForKey:(id)key value:(id)value
{
  valueCopy = value;
  v6 = [key isEqual:@"EmailAddresses"];
  v7 = valueCopy;
  if (v6)
  {
    v7 = [MEMORY[0x277D24F40] addressListFromEncodedString:valueCopy];
  }

  return v7;
}

- (void)setValueInAccountProperties:(id)properties forKey:(id)key
{
  keyCopy = key;
  propertiesCopy = properties;
  if ([keyCopy isEqual:@"Password"])
  {
    [(MFAccount *)self setPassword:propertiesCopy];
  }

  else
  {
    [(MFAccount *)self setAccountProperty:propertiesCopy forKey:keyCopy];
  }

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (void)removeValueInAccountPropertiesForKey:(id)key
{
  keyCopy = key;
  _MFLockGlobalLock();
  [(MFAccount *)self removeAccountPropertyForKey:keyCopy];

  _MFUnlockGlobalLock();
}

- (id)valueInAccountPropertiesForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqual:@"SSLEnabled"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MFAccount usesSSL](self, "usesSSL")}];
    goto LABEL_10;
  }

  _MFLockGlobalLock();
  v5 = [(MFAccount *)self accountPropertyForKey:keyCopy];
  _MFUnlockGlobalLock();
  if ([keyCopy isEqual:@"Password"])
  {
    password = [(MFAccount *)self password];
    goto LABEL_5;
  }

  if ([keyCopy isEqual:@"EmailAddresses"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      allKeys = [v5 allKeys];
      v7 = [allKeys componentsJoinedByString:{@", "}];

      v5 = allKeys;
      goto LABEL_6;
    }

    password = [v5 componentsJoinedByString:{@", "}];
LABEL_5:
    v7 = password;
LABEL_6:

    v5 = v7;
  }

LABEL_10:

  return v5;
}

- (id)_objectForAccountInfoKey:(id)key
{
  keyCopy = key;
  _MFLockGlobalLock();
  v5 = [(MFAccount *)self accountPropertyForKey:keyCopy];

  _MFUnlockGlobalLock();

  return v5;
}

- (BOOL)_BOOLForAccountInfoKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  _MFLockGlobalLock();
  v7 = [(MFAccount *)self accountPropertyForKey:keyCopy];

  _MFUnlockGlobalLock();
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      value = [v7 BOOLValue];
    }
  }

  return value;
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (!v3)
  {
    username = [(MFAccount *)self username];
    hostname = [(MFAccount *)self hostname];
    v6 = hostname;
    if (!hostname || ([hostname isEqualToString:&stru_288159858] & 1) != 0)
    {
      v3 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (username && ![username isEqualToString:&stru_288159858])
    {
      v7 = MEMORY[0x277CCACA8];
      accountTypeString = [objc_opt_class() accountTypeString];
      v3 = [v7 stringWithFormat:@"%@:%@@%@", accountTypeString, username, v6];

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

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  displayName = [(MFAccount *)self displayName];
  if (displayName != nameCopy)
  {
    v5 = displayName ? displayName : &stru_288159858;
    if (([(__CFString *)nameCopy isEqualToString:v5]& 1) == 0)
    {
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:nameCopy forKey:@"DisplayName"];
      _MFUnlockGlobalLock();
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  username = [(MFAccount *)self username];
  if (username != usernameCopy)
  {
    v5 = username ? username : &stru_288159858;
    if (([(__CFString *)usernameCopy isEqualToString:v5]& 1) == 0)
    {
      _MFLockGlobalLock();
      if (usernameCopy && [(__CFString *)usernameCopy length])
      {
        [(MFAccount *)self setAccountProperty:usernameCopy forKey:@"Username"];
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

- (void)setHostname:(id)hostname
{
  hostnameCopy = hostname;
  hostname = [(MFAccount *)self hostname];
  if ([(__CFString *)hostnameCopy length])
  {
    mf_stringWithNoExtraSpaces = [(__CFString *)hostnameCopy mf_stringWithNoExtraSpaces];

    v6 = mf_stringWithNoExtraSpaces;
  }

  else
  {
    v6 = hostnameCopy;
  }

  v9 = v6;
  if (hostname != v6)
  {
    v7 = hostname ? hostname : &stru_288159858;
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

- (void)setPassword:(id)password
{
  passwordCopy = password;
  _password = [(MFAccount *)self _password];
  if (_password != passwordCopy)
  {
    v5 = _password ? _password : &stru_288159858;
    if (([(__CFString *)passwordCopy isEqualToString:v5]& 1) == 0)
    {
      if (!passwordCopy || ![(__CFString *)passwordCopy length])
      {
        _MFLockGlobalLock();
        [(MFAccount *)self removeAccountPropertyForKey:@"Password"];
        _MFUnlockGlobalLock();
      }

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (id)_passwordWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (id)password
{
  preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
  v4 = preferredAuthScheme;
  if (preferredAuthScheme && [preferredAuthScheme requiresPassword])
  {
    _password = [(MFAccount *)self _password];
  }

  else
  {
    _password = &stru_288159858;
  }

  return _password;
}

- (unint64_t)credentialAccessibility
{
  v5 = 0;
  v2 = [(MFAccount *)self _passwordWithError:&v5];
  v3 = [v2 length] == 0;

  return v3;
}

- (id)credentialItemForKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (BOOL)setCredentialItem:(id)item forKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (BOOL)setOAuth2Token:(id)token refreshToken:(id)refreshToken error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (BOOL)fetchTokensIfNecessary:(id *)necessary
{
  if (necessary)
  {
    *necessary = 0;
  }

  return 1;
}

- (unsigned)portNumber
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"PortNumber"];
  intValue = [v3 intValue];

  if (intValue)
  {
    return intValue;
  }

  if ([(MFAccount *)self usesSSL])
  {
    defaultSecurePortNumber = [(MFAccount *)self defaultSecurePortNumber];
    if (defaultSecurePortNumber)
    {
      return defaultSecurePortNumber;
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
  usesSSL = [objc_opt_class() usesSSL];

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"SSLEnabled" defaultValue:usesSSL];
}

- (void)setUsesSSL:(BOOL)l
{
  lCopy = l;
  if ([(MFAccount *)self usesSSL]!= l)
  {
    _MFLockGlobalLock();
    if (lCopy)
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

- (void)setDomain:(id)domain
{
  domainCopy = domain;
  domain = [(MFAccount *)self domain];
  if (domain != domainCopy)
  {
    v5 = domain ? domain : &stru_288159858;
    if (([(__CFString *)domainCopy isEqualToString:v5]& 1) == 0)
    {
      _MFLockGlobalLock();
      if (domainCopy && [(__CFString *)domainCopy length])
      {
        [(MFAccount *)self setAccountProperty:domainCopy forKey:@"Domain"];
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
    hostname = [(MFAccount *)self hostname];
    v4 = [MFMessageKeychainManager copyClientSSLIdentityForHostName:hostname error:0];

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

- (void)setClientCertificates:(id)certificates
{
  certificatesCopy = certificates;
  if ([certificatesCopy count])
  {
    v4 = [certificatesCopy objectAtIndex:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  properties = [(MFAccount *)self properties];
  [defaultCenter postNotificationName:@"AccountInfoDidChange" object:self userInfo:properties];
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

- (void)setPreferredAuthScheme:(id)scheme
{
  schemeCopy = scheme;
  preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];

  v5 = schemeCopy;
  if (preferredAuthScheme != schemeCopy)
  {
    name = [schemeCopy name];
    _MFLockGlobalLock();
    if (name)
    {
      [(MFAccount *)self setAccountProperty:name forKey:@"AuthenticationScheme"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"AuthenticationScheme"];
    }

    _MFUnlockGlobalLock();

    v5 = schemeCopy;
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
  preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
  v3 = [preferredAuthScheme connectionClassForAccountClass:objc_opt_class()];

  return v3;
}

- (id)defaultConnectionSettings
{
  v3 = objc_alloc_init(MFConnectionSettings);
  [(MFConnectionSettings *)v3 setUsesSSL:[(MFAccount *)self usesSSL]];
  hostname = [(MFAccount *)self hostname];
  [(MFConnectionSettings *)v3 setHostname:hostname];

  [(MFConnectionSettings *)v3 setPortNumber:[(MFAccount *)self portNumber]];
  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    clientCertificates = [(MFAccount *)self clientCertificates];
    [(MFConnectionSettings *)v3 setClientCertificates:clientCertificates];
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
  uniqueId = [(MFAccount *)self uniqueId];
  [(MFConnectionSettings *)v3 setAccountIdentifier:uniqueId];

  networkAccountIdentifier = [(MFAccount *)self networkAccountIdentifier];
  [(MFConnectionSettings *)v3 setNetworkAccountIdentifier:networkAccountIdentifier];

  sourceApplicationBundleIdentifier = [(MFAccount *)self sourceApplicationBundleIdentifier];
  if ([sourceApplicationBundleIdentifier length])
  {
    [(MFConnectionSettings *)v3 setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];
  }

  return v3;
}

- (void)applySettingsAsDefault:(id)default
{
  defaultCopy = default;
  -[MFAccount setUsesSSL:](self, "setUsesSSL:", [defaultCopy usesSSL]);
  -[MFAccount setPortNumber:](self, "setPortNumber:", [defaultCopy portNumber]);
  tryDirectSSL = [defaultCopy tryDirectSSL];

  [(MFAccount *)self setTryDirectSSL:tryDirectSSL];
}

- (id)insecureConnectionSettings
{
  v6[1] = *MEMORY[0x277D85DE8];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  [defaultConnectionSettings setUsesSSL:0];
  [defaultConnectionSettings setTryDirectSSL:0];
  v6[0] = defaultConnectionSettings;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)secureConnectionSettings
{
  v7[1] = *MEMORY[0x277D85DE8];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  [defaultConnectionSettings setUsesSSL:1];
  [defaultConnectionSettings setTryDirectSSL:1];
  [defaultConnectionSettings setPortNumber:{-[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber")}];
  v7[0] = defaultConnectionSettings;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port
{
  bOOLValue = [(MFAccount *)self defaultSecurePortNumber]== port;
  v5 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

- (id)customDescriptionForError:(id)error authScheme:(id)scheme defaultDescription:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  v9 = descriptionCopy;
  if ([(MFAccount *)self credentialAccessibility]== 1)
  {
    v9 = descriptionCopy;
    if ([errorCopy code] == 1032)
    {
      v10 = MEMORY[0x277CCACA8];
      username = [(MFAccount *)self username];
      hostname = [(MFAccount *)self hostname];
      v9 = [v10 stringWithFormat:@"No password provided for user “%@” on server “%@”.\n\nPlease go to Mail Account Settings and enter a password.", username, hostname];
    }
  }

  return v9;
}

- (void)reportAuthenticationError:(id)error authScheme:(id)scheme
{
  schemeCopy = scheme;
  errorCopy = error;
  v11 = +[MFActivityMonitor currentMonitor];
  localizedDescription = [errorCopy localizedDescription];
  v9 = [(MFAccount *)self customDescriptionForError:errorCopy authScheme:schemeCopy defaultDescription:localizedDescription];

  v10 = [errorCopy setLocalizedDescription:v9];
  [v11 setError:errorCopy];
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

- (id)missingPasswordErrorWithTitle:(id)title
{
  v4 = MEMORY[0x277CCACA8];
  titleCopy = title;
  displayName = [(MFAccount *)self displayName];
  v7 = [v4 stringWithFormat:@"No password provided for “%@”.\n\nPlease go to Mail Account Settings and enter a password.", displayName];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1055 localizedDescription:v7 title:titleCopy userInfo:0];

  return v8;
}

- (id)loginDisabledErrorWithTitle:(id)title
{
  v4 = MEMORY[0x277CCACA8];
  titleCopy = title;
  displayName = [(MFAccount *)self displayName];
  v7 = [v4 stringWithFormat:@"Logins are disabled for “%@”.", displayName];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1059 localizedDescription:v7 title:titleCopy userInfo:0];

  return v8;
}

@end