@interface TICryptographer
+ (id)sharedCryptographer;
+ (id)singletonInstance;
+ (void)setSharedCryptographer:(id)a3;
- (NSData)deviceSalt;
- (TICryptographer)init;
- (id)stringDigestForName:(id)a3;
@end

@implementation TICryptographer

+ (id)sharedCryptographer
{
  if (__testingInstance_23886)
  {
    v2 = __testingInstance_23886;
  }

  else
  {
    v2 = +[TICryptographer singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_23888 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_23888, &__block_literal_global_23889);
  }

  v3 = singletonInstance_singletonInstance_23890;

  return v3;
}

- (id)stringDigestForName:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23863;
  v14 = __Block_byref_object_dispose__23864;
  v15 = 0;
  v5 = [(TICryptographer *)self dispatchQueue];
  v9 = v4;
  v6 = v4;
  TIDispatchSync();

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __39__TICryptographer_stringDigestForName___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedRecipientName];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) cachedRecipientDigest];
    v5 = [v4 copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) deviceSalt];
    if (v10)
    {
      memset(&c, 0, sizeof(c));
      CC_SHA1_Init(&c);
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = strlen(CStringPtr);
        CC_SHA1_Update(&c, v12, v13);
      }

      else
      {
        Length = CFStringGetLength(v9);
        if (Length >= 1)
        {
          v16 = Length;
          v17 = 0;
          do
          {
            usedBufLen = 0;
            v33.location = v17;
            v33.length = v16;
            Bytes = CFStringGetBytes(v9, v33, 0x8000100u, 0, 0, buffer, 512, &usedBufLen);
            CC_SHA1_Update(&c, buffer, usedBufLen);
            v17 += Bytes;
            v19 = v16 <= Bytes;
            v16 -= Bytes;
          }

          while (!v19);
        }
      }

      BytePtr = CFDataGetBytePtr(v10);
      v21 = CFDataGetLength(v10);
      CC_SHA1_Update(&c, BytePtr, v21);
      CC_SHA1_Final(buffer, &c);
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 40);
      for (i = 0; i != 20; ++i)
      {
        CFStringAppendFormat(Mutable, 0, @"%x", buffer[i]);
      }
    }

    else
    {
      Mutable = 0;
    }

    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = Mutable;

    [*(a1 + 32) setCachedRecipientName:*(a1 + 40)];
    v25 = *(*(*(a1 + 48) + 8) + 40);
    v26 = *(a1 + 32);
    v27 = *MEMORY[0x277D85DE8];

    [v26 setCachedRecipientDigest:v25];
  }
}

- (NSData)deviceSalt
{
  v19 = *MEMORY[0x277D85DE8];
  deviceSalt = self->_deviceSalt;
  if (!deviceSalt)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF10]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF28], @"deviceSalt");
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], @"com.apple.TextInput");
    result = 0;
    SecItemCopyMatching(Mutable, &result);
    if (result)
    {
      v6 = self->_deviceSalt;
      self->_deviceSalt = result;
    }

    if (!self->_deviceSalt)
    {
      arc4random_buf(&__buf, 0x14uLL);
      v7 = CFDataCreate(v4, &__buf, 20);
      v8 = self->_deviceSalt;
      self->_deviceSalt = v7;

      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], self->_deviceSalt);
      v9 = SecItemAdd(Mutable, 0);
      if (v9)
      {
        v10 = v9;
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v11 = TIOSLogFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to write to keychain with error %d", "-[TICryptographer deviceSalt]", v10];
          __buf = 138412290;
          v18 = v15;
          _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", &__buf, 0xCu);
        }

        v12 = self->_deviceSalt;
        self->_deviceSalt = 0;
      }
    }

    CFRelease(Mutable);
    deviceSalt = self->_deviceSalt;
  }

  v13 = *MEMORY[0x277D85DE8];

  return deviceSalt;
}

- (TICryptographer)init
{
  v7.receiver = self;
  v7.super_class = TICryptographer;
  v2 = [(TICryptographer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.crypto", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

uint64_t __36__TICryptographer_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TICryptographer);
  v1 = singletonInstance_singletonInstance_23890;
  singletonInstance_singletonInstance_23890 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setSharedCryptographer:(id)a3
{
  v4 = a3;
  if (__testingInstance_23886 != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance_23886, a3);
    v4 = v5;
  }
}

@end