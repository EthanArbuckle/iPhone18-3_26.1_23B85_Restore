@interface MFMessageKeychainManager
+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)identity withHostname:(id)hostname;
+ (__SecCertificate)_copyCertificateForPersistent:(id)persistent error:(id *)error;
+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)address error:(id *)error;
+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)name error:(id *)error;
+ (__SecIdentity)copyIdentityForPersistentReference:(id)reference error:(id *)error;
+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)address;
+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)address;
+ (id)_addCertificate:(__SecCertificate *)certificate persistent:(id *)persistent;
+ (id)_addPersistentMapping:(id)mapping forAddress:(id)address;
+ (id)_passwordForGenericAccount:(id)account service:(id)service error:(id *)error;
+ (id)_passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(__CFString *)protocol;
+ (id)_removeCertificateForPersistent:(id)persistent;
+ (id)passwordForServiceName:(id)name accountName:(id)accountName synchronizable:(BOOL)synchronizable error:(id *)error;
+ (id)persistentReferenceForIdentity:(__SecIdentity *)identity error:(id *)error;
+ (id)saveEncryptionCertificate:(__SecCertificate *)certificate forAddress:(id)address;
+ (void)initialize;
+ (void)removePasswordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol;
+ (void)removePasswordForServiceName:(id)name accountName:(id)accountName;
+ (void)setPassword:(id)password forHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol keychainAccessibility:(void *)accessibility;
+ (void)setPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility;
@end

@implementation MFMessageKeychainManager

+ (void)initialize
{
  if (!_keychainLock)
  {
    v2 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"keychainLock" andDelegate:0];
    v3 = _keychainLock;
    _keychainLock = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (id)_passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(__CFString *)protocol
{
  hostCopy = host;
  usernameCopy = username;
  valuePtr = port;
  if ([hostCopy length] && objc_msgSend(usernameCopy, "length"))
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v11, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], hostCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A0], v12);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], protocol);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    cf = 0;
    v14 = SecItemCopyMatching(Mutable, &cf);
    CFRelease(v12);
    CFRelease(Mutable);
    v15 = 0;
    if (!v14 && cf)
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v16 initWithData:cf encoding:4];
      CFRelease(cf);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)setPassword:(id)password forHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol keychainAccessibility:(void *)accessibility
{
  passwordCopy = password;
  hostCopy = host;
  usernameCopy = username;
  valuePtr = port;
  [_keychainLock mf_waitForLock];
  v17 = *MEMORY[0x277CBECE8];
  v18 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v18)
  {
    v19 = v18;
    if ([hostCopy length] && objc_msgSend(usernameCopy, "length") && objc_msgSend(passwordCopy, "length"))
    {
      v20 = [passwordCopy dataUsingEncoding:4];
      if (v20)
      {
        value = v20;
        v21 = [self _passwordForHost:hostCopy username:usernameCopy port:valuePtr keychainProtocol:protocol];
        Mutable = CFDictionaryCreateMutable(v17, 0, 0, 0);
        if (Mutable)
        {
          v23 = Mutable;
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
          CFDictionaryAddValue(v23, *MEMORY[0x277CDC118], hostCopy);
          CFDictionaryAddValue(v23, *MEMORY[0x277CDC0A0], v19);
          CFDictionaryAddValue(v23, *MEMORY[0x277CDC0A8], protocol);
          CFDictionaryAddValue(v23, *MEMORY[0x277CDBF20], usernameCopy);
          v24 = *MEMORY[0x277CBED28];
          key = *MEMORY[0x277CDC140];
          CFDictionaryAddValue(v23, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
          if (v21)
          {
            if (([v21 isEqualToString:passwordCopy] & 1) == 0)
            {
              v25 = CFDictionaryCreateMutable(v17, 0, 0, 0);
              if (v25)
              {
                v26 = v25;
                CFDictionaryAddValue(v25, *MEMORY[0x277CDC5E8], value);
                CFDictionaryAddValue(v26, *MEMORY[0x277CDBED8], accessibility);
                CFDictionaryAddValue(v26, key, v24);
                SecItemUpdate(v23, v26);
                CFRelease(v26);
              }
            }
          }

          else
          {
            v21 = 0;
            result = 0;
            CFDictionaryAddValue(v23, *MEMORY[0x277CDC5E8], value);
            CFDictionaryAddValue(v23, *MEMORY[0x277CDBED8], accessibility);
            SecItemAdd(v23, &result);
          }

          CFRelease(v23);
        }

        v20 = value;
      }
    }

    CFRelease(v19);
  }

  [_keychainLock unlock];
}

+ (void)removePasswordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol
{
  hostCopy = host;
  usernameCopy = username;
  valuePtr = port;
  [_keychainLock mf_waitForLock];
  if ([hostCopy length] && objc_msgSend(usernameCopy, "length"))
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v11, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], hostCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A0], v12);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], protocol);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], usernameCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
    SecItemDelete(Mutable);
    CFRelease(v12);
    CFRelease(Mutable);
  }

  [_keychainLock unlock];
}

+ (id)_passwordForGenericAccount:(id)account service:(id)service error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceCopy = service;
  if (![accountCopy length] || !objc_msgSend(serviceCopy, "length"))
  {
    v17 = 0;
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], serviceCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  result = 0;
  v10 = SecItemCopyMatching(Mutable, &result);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = result == 0;
  }

  if (v11)
  {
    v12 = v10;
    v13 = vm_imap_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 67109120;
        v22 = v12;
        _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching result: %d", buf, 8u);
      }

      if (!error)
      {
        v17 = 0;
        goto LABEL_20;
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
      v17 = 0;
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching succeeded with empty results", buf, 2u);
      }

      v15 = 0;
      v17 = 0;
      if (!error)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [v16 initWithData:result encoding:4];
    CFRelease(result);
    if (!error)
    {
      goto LABEL_20;
    }

    v15 = 0;
  }

  *error = v15;
LABEL_20:
  CFRelease(Mutable);
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)passwordForServiceName:(id)name accountName:(id)accountName synchronizable:(BOOL)synchronizable error:(id *)error
{
  v9 = _keychainLock;
  accountNameCopy = accountName;
  nameCopy = name;
  [v9 mf_waitForLock];
  v12 = [self _passwordForGenericAccount:accountNameCopy service:nameCopy error:error];

  [_keychainLock unlock];

  return v12;
}

+ (void)setPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility
{
  v32 = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  nameCopy = name;
  accountNameCopy = accountName;
  p_superclass = MFIMAPOperationCache.superclass;
  [_keychainLock mf_waitForLock];
  if ([nameCopy length] && objc_msgSend(passwordCopy, "length") && objc_msgSend(accountNameCopy, "length"))
  {
    v14 = [passwordCopy dataUsingEncoding:4];
    v15 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountNameCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], nameCopy);
    v17 = *MEMORY[0x277CDC140];
    v18 = *MEMORY[0x277CBED28];
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
    v19 = [self _passwordForGenericAccount:accountNameCopy service:nameCopy error:0];
    v20 = v19;
    value = v14;
    if (v19)
    {
      p_superclass = (MFIMAPOperationCache + 8);
      if (([v19 isEqualToString:passwordCopy] & 1) == 0)
      {
        v21 = CFDictionaryCreateMutable(v15, 0, 0, 0);
        CFDictionaryAddValue(v21, *MEMORY[0x277CDC5E8], value);
        CFDictionaryAddValue(v21, *MEMORY[0x277CDBED8], accessibility);
        CFDictionaryAddValue(v21, v17, v18);
        v22 = SecItemUpdate(Mutable, v21);
        if (v21)
        {
          CFRelease(v21);
        }

        if (v22)
        {
          v23 = vm_imap_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v31 = v22;
            _os_log_impl(&dword_2720B1000, v23, OS_LOG_TYPE_DEFAULT, "SecItemUpdate result: %ld", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      result = 0;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], v14);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], accessibility);
      v24 = SecItemAdd(Mutable, &result);
      if (v24)
      {
        v25 = v24;
        v26 = vm_imap_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = v25;
          _os_log_impl(&dword_2720B1000, v26, OS_LOG_TYPE_DEFAULT, "SecItemAdd result: %ld", buf, 0xCu);
        }
      }

      p_superclass = MFIMAPOperationCache.superclass;
    }

    CFRelease(Mutable);
  }

  [(__objc2_class *)p_superclass[292] unlock:value];

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)removePasswordForServiceName:(id)name accountName:(id)accountName
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accountNameCopy = accountName;
  [_keychainLock mf_waitForLock];
  if ([nameCopy length] && objc_msgSend(accountNameCopy, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountNameCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], nameCopy);
    v8 = SecItemDelete(Mutable);
    if (v8)
    {
      v9 = v8;
      v10 = vm_imap_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "SecItemDelete result: %ld", &v12, 0xCu);
      }
    }

    CFRelease(Mutable);
  }

  [_keychainLock unlock];

  v11 = *MEMORY[0x277D85DE8];
}

+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)address
{
  mf_copyUncommentedAddress = [address mf_copyUncommentedAddress];
  SMIME = SecPolicyCreateSMIME();

  return SMIME;
}

+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)address
{
  mf_copyUncommentedAddress = [address mf_copyUncommentedAddress];
  SMIME = SecPolicyCreateSMIME();

  return SMIME;
}

+ (__SecIdentity)copyIdentityForPersistentReference:(id)reference error:(id *)error
{
  keys[3] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v6 = referenceCopy;
  cf = 0;
  if (!referenceCopy)
  {
    goto LABEL_5;
  }

  v7 = *MEMORY[0x277CDC5F0];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v7;
  keys[2] = *MEMORY[0x277CDC568];
  values[0] = *MEMORY[0x277CDC240];
  values[1] = referenceCopy;
  values[2] = *MEMORY[0x277CBED28];
  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = SecItemCopyMatching(v8, &cf);
  CFRelease(v8);
  if (v9)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v9 userInfo:0];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  if (error)
  {
    v11 = v10;
    *error = v10;
  }

  v12 = cf;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)persistentReferenceForIdentity:(__SecIdentity *)identity error:(id *)error
{
  keys[4] = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (!identity)
  {
    goto LABEL_5;
  }

  v5 = *MEMORY[0x277CDC5F8];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  v6 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC560];
  keys[3] = v6;
  values[0] = *MEMORY[0x277CDC240];
  values[1] = identity;
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.identities";
  v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = SecItemCopyMatching(v7, &v13);
  CFRelease(v7);
  if (!v8)
  {
LABEL_5:
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
  if (error)
  {
LABEL_6:
    v9 = v9;
    *error = v9;
  }

LABEL_7:
  v10 = v13;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)identity withHostname:(id)hostname
{
  hostnameCopy = hostname;
  certificateRef = 0;
  if (SecIdentityCopyCertificate(identity, &certificateRef) || (v7 = SecCertificateCopyProperties(), CFRelease(certificateRef), !v7))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    theString = hostnameCopy;
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v9 = Count;
      v10 = 0;
      v11 = *MEMORY[0x277CDC4F8];
      v12 = *MEMORY[0x277CDC508];
      cf2 = *MEMORY[0x277CDC528];
      key = *MEMORY[0x277CDC510];
      v31 = *MEMORY[0x277CDC530];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
        v14 = CFGetTypeID(ValueAtIndex);
        if (v14 == CFDictionaryGetTypeID() && (v15 = CFDictionaryGetValue(ValueAtIndex, v11)) != 0 && CFEqual(v15, @"1.2.840.113635.100.6.7") && (v16 = CFDictionaryGetValue(ValueAtIndex, v12)) != 0 && CFEqual(v16, cf2) && (v17 = CFDictionaryGetValue(ValueAtIndex, key), v18 = CFGetTypeID(v17), v18 == CFArrayGetTypeID()) && (v19 = CFArrayGetCount(v17), v19 >= 1))
        {
          v20 = v19;
          v21 = 1;
          do
          {
            v22 = CFArrayGetValueAtIndex(v17, v21 - 1);
            v23 = CFGetTypeID(v22);
            v6 = v23 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v22, v12)) != 0 && CFEqual(Value, v31) && (v25 = CFDictionaryGetValue(v22, key), v26 = CFGetTypeID(v25), v26 == CFStringGetTypeID()) && CFStringHasSuffix(theString, v25) != 0;
            if (v21 >= v20)
            {
              break;
            }

            ++v21;
          }

          while (!v6);
        }

        else
        {
          v6 = 0;
        }

        ++v10;
      }

      while (v10 < v9 && !v6);
    }

    CFRelease(v7);
    hostnameCopy = theString;
  }

  return v6;
}

+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)name error:(id *)error
{
  keys[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    keys[0] = *MEMORY[0x277CDC228];
    keys[1] = keys[0];
    v7 = *MEMORY[0x277CDC428];
    keys[2] = *MEMORY[0x277CDC568];
    keys[3] = v7;
    values[0] = *MEMORY[0x277CDC240];
    values[1] = values[0];
    v8 = *MEMORY[0x277CDC430];
    values[2] = *MEMORY[0x277CBED28];
    values[3] = v8;
    v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    cf = 0;
    v10 = SecItemCopyMatching(v9, &cf);
    CFRelease(v9);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
      if (cf)
      {
        CFRelease(cf);
      }

LABEL_13:
      ValueAtIndex = 0;
      if (!error)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (!cf)
    {
      v11 = 0;
      goto LABEL_13;
    }

    Count = CFArrayGetCount(cf);
    if (Count < 1)
    {
LABEL_11:
      ValueAtIndex = 0;
    }

    else
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v15);
        if ([self _matchSSLClientIdentity:ValueAtIndex withHostname:nameCopy])
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_11;
        }
      }

      CFRetain(ValueAtIndex);
    }

    CFRelease(cf);
  }

  else
  {
    ValueAtIndex = 0;
  }

  v11 = 0;
  if (error)
  {
LABEL_18:
    v16 = v11;
    *error = v11;
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return ValueAtIndex;
}

+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)address error:(id *)error
{
  keys[4] = *MEMORY[0x277D85DE8];
  cf = 0;
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"S/MIME Encryption for %@", mf_uncommentedAddress];
  v7 = *MEMORY[0x277CDC228];
  v8 = *MEMORY[0x277CDBF20];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v8;
  v9 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v9;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v6;
  v10 = *MEMORY[0x277CBED28];
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.mobilemail.smime";
  v11 = *MEMORY[0x277CBECE8];
  v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 0;
  v13 = SecItemCopyMatching(v12, &result);
  if (result)
  {
    v14 = *MEMORY[0x277CDC5F0];
    *buf = v7;
    *&buf[8] = v14;
    *&buf[16] = *MEMORY[0x277CDC568];
    v32[0] = *MEMORY[0x277CDC230];
    v32[1] = result;
    v32[2] = v10;
    v15 = CFDictionaryCreate(v11, buf, v32, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(result);
    v16 = SecItemCopyMatching(v15, &cf);
    CFRelease(v15);
    if (v16)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v17 = 0;
      if (cf)
      {
LABEL_13:
        v20 = vm_imap_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "a";
          if (!cf)
          {
            v21 = "no";
          }

          *v28 = 136315394;
          v29 = v21;
          v30 = 2112;
          v31 = mf_uncommentedAddress;
          _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors Found %s certificate for %@.", v28, 0x16u);
        }

        goto LABEL_18;
      }
    }

    SecItemDelete(v12);
    goto LABEL_13;
  }

  v18 = v13;
  v17 = 0;
  if (v13 != -25300 && v13)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
  }

  v19 = vm_imap_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = mf_uncommentedAddress;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors Found no certificates for %@ (%ld)", buf, 0x16u);
  }

LABEL_18:
  CFRelease(v12);
  if (cf && v17)
  {

    v17 = 0;
  }

  if (error)
  {
    v22 = v17;
    *error = v17;
  }

  v23 = cf;

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)_addCertificate:(__SecCertificate *)certificate persistent:(id *)persistent
{
  keys[4] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC5F8];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  v6 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC560];
  keys[3] = v6;
  values[0] = *MEMORY[0x277CDC230];
  values[1] = certificate;
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.mobilemail.smime";
  v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = 0;
  v8 = SecItemAdd(v7, &v12);
  if (v8 == -25299)
  {
    v8 = SecItemCopyMatching(v7, &v12);
  }

  CFRelease(v7);
  if (v8)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
    if (!persistent)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (persistent)
  {
LABEL_5:
    *persistent = v12;
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (__SecCertificate)_copyCertificateForPersistent:(id)persistent error:(id *)error
{
  keys[3] = *MEMORY[0x277D85DE8];
  persistentCopy = persistent;
  v6 = *MEMORY[0x277CDC5F0];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v6;
  keys[2] = *MEMORY[0x277CDC568];
  values[0] = *MEMORY[0x277CDC230];
  values[1] = persistentCopy;
  values[2] = *MEMORY[0x277CBED28];
  v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = 0;
  v8 = SecItemCopyMatching(v7, &v14);
  CFRelease(v7);
  if (error)
  {
    if (v8 == -25300 || v8 == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
    }

    *error = v10;
  }

  v11 = v14;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)_addPersistentMapping:(id)mapping forAddress:(id)address
{
  keys[4] = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"S/MIME Encryption for %@", mf_uncommentedAddress];
  v8 = *MEMORY[0x277CDBF20];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v8;
  v9 = *MEMORY[0x277CDC5E8];
  v10 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC5E8];
  keys[3] = v10;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v7;
  values[2] = mappingCopy;
  values[3] = @"com.apple.mobilemail.smime";
  v11 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = SecItemAdd(v11, 0);
  if (v12 == -25299)
  {
    v13 = [(__CFDictionary *)v11 mutableCopy];
    [v13 removeObjectForKey:v9];
    v18 = v9;
    v19 = mappingCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = SecItemUpdate(v13, v14);
  }

  CFRelease(v11);
  if (v12)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_removeCertificateForPersistent:(id)persistent
{
  keys[4] = *MEMORY[0x277D85DE8];
  persistentCopy = persistent;
  v4 = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC558];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  v6 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v6;
  v7 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v7;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = @"com.apple.mobilemail.smime";
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theArray = 0;
  v10 = SecItemCopyMatching(v9, &theArray);
  CFRelease(v9);
  if (v10 != -25300 && v10)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = v10;
    goto LABEL_15;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
        if (CFEqual(ValueAtIndex, persistentCopy))
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_8;
        }
      }

      CFRelease(theArray);
      goto LABEL_17;
    }

LABEL_8:
    CFRelease(theArray);
  }

  v15 = *MEMORY[0x277CDC5F0];
  v27[0] = v4;
  v27[1] = v15;
  v26[0] = *MEMORY[0x277CDC230];
  v26[1] = persistentCopy;
  v16 = CFDictionaryCreate(v8, v27, v26, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = SecItemDelete(v16);
  CFRelease(v16);
  if (v17 != -25300 && v17 != 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = v17;
LABEL_15:
    v22 = [v19 errorWithDomain:v20 code:v21 userInfo:0];
    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)saveEncryptionCertificate:(__SecCertificate *)certificate forAddress:(id)address
{
  keys[4] = *MEMORY[0x277D85DE8];
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"S/MIME Encryption for %@", mf_uncommentedAddress];
  v8 = *MEMORY[0x277CDBF20];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v8;
  v9 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v9;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v7;
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.mobilemail.smime";
  v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 0;
  v11 = SecItemCopyMatching(v10, &result);
  if (v11 != -25300 && v11)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
    goto LABEL_24;
  }

  if (certificate)
  {
    if (!result)
    {
      v13 = 0;
      v16 = 1;
      goto LABEL_16;
    }

    v26 = 0;
    v12 = [self _copyCertificateForPersistent:result error:&v26];
    v13 = v26;
    if (!v12)
    {
      goto LABEL_24;
    }

    SHA1Digest = SecCertificateGetSHA1Digest();
    v15 = SecCertificateGetSHA1Digest();
    LODWORD(SHA1Digest) = CFEqual(SHA1Digest, v15) == 0;
    CFRelease(v12);
    v16 = SHA1Digest;
    if (!SHA1Digest)
    {
LABEL_16:
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v13 = 0;
  }

  if (v13)
  {
    goto LABEL_16;
  }

  v17 = SecItemDelete(v10);
  if (v17 && v17 != -25300)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v17 userInfo:0];
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = [self _removeCertificateForPersistent:result];
    v13 = 0;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  if (!v13)
  {
    v25 = 0;
    v13 = [self _addCertificate:certificate persistent:&v25];
    v19 = v25;
    v20 = v19;
    if (v19)
    {
      result = v19;
    }

    if (!v13)
    {
      v13 = [self _addPersistentMapping:result forAddress:mf_uncommentedAddress];
      if (v13)
      {
        v21 = [self _removeCertificateForPersistent:result];
      }
    }
  }

LABEL_24:
  CFRelease(v10);
  if (v13)
  {
    v22 = vm_imap_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(MFMessageKeychainManager *)mf_uncommentedAddress saveEncryptionCertificate:v13 forAddress:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)saveEncryptionCertificate:(os_log_t)log forAddress:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors Error saving encryption certificate for %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end