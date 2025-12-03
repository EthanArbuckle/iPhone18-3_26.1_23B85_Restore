@interface POUserUnlockKey
+ (BOOL)createUnlockKeyWithPublicKey:(__SecKey *)key userName:(id)name returningCertificate:(__SecCertificate *)certificate hash:(id *)hash encryptedData:(id *)data;
+ (BOOL)unlockKey:(id)key privateKey:(__SecKey *)privateKey returningKey:(__SecKey *)returningKey;
+ (__SecCertificate)selfSignedCertWithPrivateKey:(__SecKey *)key subjectName:(id)name;
@end

@implementation POUserUnlockKey

+ (BOOL)createUnlockKeyWithPublicKey:(__SecKey *)key userName:(id)name returningCertificate:(__SecCertificate *)certificate hash:(id *)hash encryptedData:(id *)data
{
  nameCopy = name;
  *certificate = 0;
  *hash = 0;
  *data = 0;
  v13 = [POSecKeyHelper createSEPEncryptionKeyForAlgorithm:0x2870A9198 shared:1 preboot:0];
  if (v13)
  {
    v14 = v13;
    v15 = [POSecKeyHelper dataForKey:v13];
    if (v15)
    {
      error = 0;
      v16 = SecKeyCreateEncryptedData(key, *MEMORY[0x277CDC338], v15, &error);
      v17 = v16;
      if (error || !v16)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_9;
        v26[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v26[4] = error;
        v23 = __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_9(v26);
        v20 = 0;
      }

      else
      {
        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Platform SSO - %@", nameCopy];
        v19 = [self selfSignedCertWithPrivateKey:v14 subjectName:nameCopy];
        CFRelease(v14);
        v20 = v19 != 0;
        if (v19)
        {
          *hash = SecCertificateCopyPublicKeySHA1Digest();
          *certificate = v19;
          *data = [(__CFData *)v17 base64EncodedStringWithOptions:0];
        }

        else
        {
          v24 = __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_17();
        }
      }
    }

    else
    {
      v22 = __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_3();
      v20 = 0;
    }
  }

  else
  {
    v21 = __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke();
    v20 = 0;
  }

  return v20;
}

id __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"failed to create unlock key"];
  v1 = PO_LOG_POUserUnlockKey();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_3()
{
  v0 = [POError errorWithCode:-1001 description:@"failed to create unlock key data"];
  v1 = PO_LOG_POUserUnlockKey();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Failed to encrypt unlock key."];

  v3 = PO_LOG_POUserUnlockKey();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __97__POUserUnlockKey_createUnlockKeyWithPublicKey_userName_returningCertificate_hash_encryptedData___block_invoke_17()
{
  v0 = [POError errorWithCode:-1001 description:@"error creating certificate."];
  v1 = PO_LOG_POUserUnlockKey();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (BOOL)unlockKey:(id)key privateKey:(__SecKey *)privateKey returningKey:(__SecKey *)returningKey
{
  *returningKey = 0;
  v7 = MEMORY[0x277CBEA90];
  keyCopy = key;
  v9 = [[v7 alloc] initWithBase64EncodedString:keyCopy options:0];

  error = 0;
  v10 = SecKeyCreateDecryptedData(privateKey, *MEMORY[0x277CDC338], v9, &error);
  v11 = v10;
  if (error || !v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__POUserUnlockKey_unlockKey_privateKey_returningKey___block_invoke;
    v17[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v17[4] = error;
    v14 = __53__POUserUnlockKey_unlockKey_privateKey_returningKey___block_invoke(v17);
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v12 = [POSecKeyHelper systemKeyForData:v10];
  if (!v12)
  {
    v15 = __53__POUserUnlockKey_unlockKey_privateKey_returningKey___block_invoke_27();
    goto LABEL_7;
  }

  *returningKey = v12;
  v13 = 1;
LABEL_8:

  return v13;
}

id __53__POUserUnlockKey_unlockKey_privateKey_returningKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"failed to decrypt unlock key data"];

  v3 = PO_LOG_POUserUnlockKey();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __53__POUserUnlockKey_unlockKey_privateKey_returningKey___block_invoke_27()
{
  v0 = [POError errorWithCode:-1001 description:@"error loading unlockKey key"];
  v1 = PO_LOG_POUserUnlockKey();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (__SecCertificate)selfSignedCertWithPrivateKey:(__SecKey *)key subjectName:(id)name
{
  v26[3] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277CDC448];
  v24[1] = name;
  v4 = MEMORY[0x277CBEA60];
  nameCopy = name;
  v6 = [v4 arrayWithObjects:v24 count:2];
  v25 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v26[0] = v7;
  v22[0] = *MEMORY[0x277CDC450];
  v22[1] = @"US";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v23 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v26[1] = v9;
  v20[0] = *MEMORY[0x277CDC458];
  v20[1] = @"Apple Inc";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v21 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v26[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

  v13 = *MEMORY[0x277CDC210];
  v18[0] = *MEMORY[0x277CDC1F0];
  v18[1] = v13;
  v19[0] = &unk_2870A9288;
  v19[1] = &unk_2870A92A0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  v16 = *MEMORY[0x277D85DE8];
  return SelfSignedCertificate;
}

@end