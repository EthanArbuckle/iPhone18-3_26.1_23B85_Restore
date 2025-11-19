@interface TITypologyProfileState
+ (BOOL)_removePersistedStateAtURL:(id)a3;
+ (BOOL)removePersistedState;
+ (id)_typologyProfileStateFromURL:(id)a3;
+ (id)defaultPersistentURL;
+ (id)typologyProfileStateFromPersistedState;
- (BOOL)_authenticateHashToken:(id)a3 forProfileInstallationDate:(id)a4 userNotificationDate:(id)a5 userResponse:(id)a6;
- (BOOL)_persistStateToURL:(id)a3;
- (BOOL)persistState;
- (NSData)salt;
- (TITypologyProfileState)initWithCoder:(id)a3;
- (TITypologyProfileState)initWithProfileInstallationDate:(id)a3;
- (TITypologyProfileState)initWithProfileInstallationDate:(id)a3 userNotificationDate:(id)a4 userResponse:(id)a5;
- (id)_hashTokenForProfileInstallationDate:(id)a3 userNotificationDate:(id)a4 userResponse:(id)a5;
- (id)hashForString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyProfileState

- (BOOL)persistState
{
  v3 = [objc_opt_class() defaultPersistentURL];
  LOBYTE(self) = [(TITypologyProfileState *)self _persistStateToURL:v3];

  return self;
}

- (BOOL)_persistStateToURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [(TITypologyProfileState *)self encodeWithCoder:v5];
  v6 = [v5 encodedData];
  v7 = v6;
  if (v6)
  {
    v13 = 0;
    v8 = [v6 writeToURL:v4 options:1073741825 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      v10 = TITypologyProfileStateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "Unable to persist state: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  profileInstallationDate = self->_profileInstallationDate;
  userNotificationDate = self->_userNotificationDate;
  v7 = self->_userResponse;
  v8 = userNotificationDate;
  v11 = profileInstallationDate;
  v9 = a3;
  v10 = [(TITypologyProfileState *)self _hashTokenForProfileInstallationDate:v11 userNotificationDate:v8 userResponse:v7];
  [v9 encodeObject:v11 forKey:@"InstallDate"];
  [v9 encodeObject:v8 forKey:@"UserNotificationDate"];
  [v9 encodeObject:v7 forKey:@"UserResponse"];

  [v9 encodeObject:v10 forKey:@"HashToken"];
}

- (TITypologyProfileState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstallDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserNotificationDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserResponse"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HashToken"];

  if ([(TITypologyProfileState *)self _authenticateHashToken:v8 forProfileInstallationDate:v5 userNotificationDate:v6 userResponse:v7])
  {
    self = [(TITypologyProfileState *)self initWithProfileInstallationDate:v5 userNotificationDate:v6 userResponse:v7];
    v9 = self;
  }

  else
  {
    v10 = TITypologyProfileStateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "Unable to instantiate decoded typology profile state: authentication failed.", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (TITypologyProfileState)initWithProfileInstallationDate:(id)a3 userNotificationDate:(id)a4 userResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_areValidFieldValues(v8, v9, v10))
  {
    v20.receiver = self;
    v20.super_class = TITypologyProfileState;
    v11 = [(TITypologyProfileState *)&v20 init];
    if (v11)
    {
      v12 = [v8 copy];
      profileInstallationDate = v11->_profileInstallationDate;
      v11->_profileInstallationDate = v12;

      v14 = [v9 copy];
      userNotificationDate = v11->_userNotificationDate;
      v11->_userNotificationDate = v14;

      v16 = [v10 copy];
      userResponse = v11->_userResponse;
      v11->_userResponse = v16;
    }

    self = v11;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TITypologyProfileState)initWithProfileInstallationDate:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 distantPast];
  v7 = [(TITypologyProfileState *)self initWithProfileInstallationDate:v5 userNotificationDate:v6 userResponse:@"None"];

  return v7;
}

- (BOOL)_authenticateHashToken:(id)a3 forProfileInstallationDate:(id)a4 userNotificationDate:(id)a5 userResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  if (!v14)
  {
    v16 = 0;
LABEL_9:
    v17 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    v16 = v14;
    goto LABEL_11;
  }

  v15 = [v14 length];

  if (!v15 || !_areValidFieldValues(v11, v12, v13))
  {
    v17 = 0;
    goto LABEL_13;
  }

  v16 = [(TITypologyProfileState *)self _hashTokenForProfileInstallationDate:v11 userNotificationDate:v12 userResponse:v13];
  if (![v16 length] || (objc_msgSend(v16, "isEqualToString:", v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = 1;
LABEL_11:

LABEL_13:
  return v17;
}

- (id)_hashTokenForProfileInstallationDate:(id)a3 userNotificationDate:(id)a4 userResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_areValidFieldValues(v8, v9, v10))
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v11 setLocale:v12];

    [v11 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v13 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    [v11 setTimeZone:v13];

    v14 = [v11 stringFromDate:v8];
    v15 = [v11 stringFromDate:v9];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"profileInstalled:%@, userNotification:%@, userResponse:%@", v14, v15, v10];
    v17 = [(TITypologyProfileState *)self hashForString:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (NSData)salt
{
  v14 = *MEMORY[0x277D85DE8];
  salt = self->_salt;
  if (!salt)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF10]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF28], @"typologyProfileStateSalt");
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], @"com.apple.TextInput");
    v12 = 0;
    SecItemCopyMatching(Mutable, &v12);
    if (v12)
    {
      v6 = self->_salt;
      self->_salt = v12;
    }

    if (!self->_salt)
    {
      arc4random_buf(__buf, 0x20uLL);
      v7 = CFDataCreate(v4, __buf, 32);
      v8 = self->_salt;
      self->_salt = v7;

      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], self->_salt);
      if (SecItemAdd(Mutable, 0))
      {
        v9 = self->_salt;
        self->_salt = 0;
      }
    }

    CFRelease(Mutable);
    salt = self->_salt;
  }

  v10 = *MEMORY[0x277D85DE8];

  return salt;
}

- (id)hashForString:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TITypologyProfileState *)self salt];
  if (v5)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
    if (CStringPtr)
    {
      v7 = CStringPtr;
      v8 = strlen(CStringPtr);
      CC_SHA256_Update(&c, v7, v8);
    }

    else
    {
      Length = CFStringGetLength(v4);
      if (Length >= 1)
      {
        v11 = Length;
        v12 = 0;
        do
        {
          usedBufLen = 0;
          v25.location = v12;
          v25.length = v11;
          Bytes = CFStringGetBytes(v4, v25, 0x8000100u, 0, 0, buffer, 512, &usedBufLen);
          CC_SHA256_Update(&c, buffer, usedBufLen);
          v12 += Bytes;
          v14 = v11 <= Bytes;
          v11 -= Bytes;
        }

        while (!v14);
      }
    }

    BytePtr = CFDataGetBytePtr(v5);
    v16 = CFDataGetLength(v5);
    CC_SHA256_Update(&c, BytePtr, v16);
    CC_SHA256_Final(buffer, &c);
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 64);
    for (i = 0; i != 32; ++i)
    {
      CFStringAppendFormat(Mutable, 0, @"%x", buffer[i]);
    }
  }

  else
  {
    Mutable = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return Mutable;
}

+ (BOOL)removePersistedState
{
  v3 = TITypologyProfileStateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, "Removing persisted state", v7, 2u);
  }

  v4 = [a1 defaultPersistentURL];
  v5 = [a1 _removePersistedStateAtURL:v4];

  return v5;
}

+ (BOOL)_removePersistedStateAtURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v13 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v13];

  v7 = v13;
  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      v8 = [v7 domain];
      if ([v8 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v9 = [v7 code];

        if (v9 == 4)
        {
          v10 = TITypologyProfileStateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_INFO, "No persisted state to remove", buf, 2u);
          }

LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v10 = TITypologyProfileStateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "Failed to remove persisted state: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)typologyProfileStateFromPersistedState
{
  v3 = [a1 defaultPersistentURL];
  v4 = [a1 _typologyProfileStateFromURL:v3];

  return v4;
}

+ (id)_typologyProfileStateFromURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:0 error:&v16];
  v5 = v16;
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v11 = [v6 code];

        if (v11 == 260)
        {
          v7 = TITypologyProfileStateLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22CA55000, v7, OS_LOG_TYPE_INFO, "No persisted state found.", buf, 2u);
          }

LABEL_15:
          v9 = 0;
          v8 = v6;
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v7 = TITypologyProfileStateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "Unable to read persisted state: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v15 = v5;
  v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [[a1 alloc] initWithCoder:v7];
  }

  else
  {
    v12 = TITypologyProfileStateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "Failed to initialize keyed unarchiver with persisted data: %@", buf, 0xCu);
    }

    v7 = 0;
    v9 = 0;
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)defaultPersistentURL
{
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:TI_KB_USER_DIRECTORY()];
  v3 = [v2 URLByAppendingPathComponent:@"typologyProfileState.dat"];

  return v3;
}

@end