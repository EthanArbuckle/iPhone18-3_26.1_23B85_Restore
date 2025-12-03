@interface POSecKeyHelper
+ (BOOL)_verifyCurve25519EncryptionKey:(__SecKey *)key;
+ (BOOL)_verifyCurve25519SigningKey:(__SecKey *)key;
+ (BOOL)checkIfBiometricConstraintsForSigning:(__SecAccessControl *)signing;
+ (BOOL)checkIfBiometricConstraintsForSigningForKey:(__SecKey *)key;
+ (BOOL)evaluateTrustForCertificates:(id)certificates rootCertificates:(id)rootCertificates;
+ (BOOL)isEncryptionAlgorithm:(id)algorithm validForKey:(__SecKey *)key;
+ (BOOL)isSEPKey:(__SecKey *)key;
+ (BOOL)isSystemKey:(__SecKey *)key;
+ (BOOL)verifyKey:(__SecKey *)key;
+ (__SecCertificate)certificateForData:(id)data;
+ (__SecIdentity)identityForKey:(__SecKey *)key andCertificate:(__SecCertificate *)certificate;
+ (__SecKey)createEncryptionKeyForAlgorithm:(id)algorithm;
+ (__SecKey)createSEPEncryptionKeyForAlgorithm:(id)algorithm shared:(BOOL)shared preboot:(BOOL)preboot;
+ (__SecKey)createSEPSigningKeyForAlgorithm:(id)algorithm shared:(BOOL)shared preboot:(BOOL)preboot;
+ (__SecKey)createUserSEPSigningKeyForAlgorithm:(id)algorithm userPresence:(BOOL)presence currentSet:(BOOL)set;
+ (__SecKey)ephemeralKeyForData:(id)data;
+ (__SecKey)ephemeralPublicKeyForData:(id)data;
+ (__SecKey)ephemeralX25529PublicKeyForData:(id)data;
+ (__SecKey)keyForData:(id)data context:(id)context;
+ (__SecKey)systemKeyForData:(id)data context:(id)context;
+ (id)dataForCertificate:(__SecCertificate *)certificate;
+ (id)dataForEphemeralKey:(__SecKey *)key;
+ (id)dataForKey:(__SecKey *)key;
+ (id)printKey:(__SecKey *)key;
+ (id)publicKeyHashForKey:(__SecKey *)key;
@end

@implementation POSecKeyHelper

+ (__SecKey)createUserSEPSigningKeyForAlgorithm:(id)algorithm userPresence:(BOOL)presence currentSet:(BOOL)set
{
  setCopy = set;
  presenceCopy = presence;
  v58[1] = *MEMORY[0x277D85DE8];
  algorithmCopy = algorithm;
  error = 0;
  v57 = @"osgn";
  v54 = @"com.apple.PlatformSSO.auth";
  v55 = @"cag";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v56 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v58[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];

  v11 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF10], 0x40000000uLL, &error);
  if (!v11)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke;
    v47[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v47[4] = error;
    v14 = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke(v47);
    goto LABEL_33;
  }

  SecAccessControlSetConstraints();
  if (presenceCopy)
  {
    data = [MEMORY[0x277CBEA90] data];
    if (setCopy)
    {
      BiometryCurrentSet = SecAccessConstraintCreateBiometryCurrentSet();
    }

    else
    {
      BiometryCurrentSet = SecAccessConstraintCreateBiometryAny();
    }

    v15 = BiometryCurrentSet;
    if (BiometryCurrentSet)
    {
      Companion = SecAccessConstraintCreateCompanion();
      if (Companion)
      {
        v17 = Companion;
        v18 = *MEMORY[0x277CBECE8];
        v53[0] = v15;
        v53[1] = Companion;
        [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
        KofN = SecAccessConstraintCreateKofN();
        v20 = KofN;
        if (KofN)
        {
          v43 = KofN;
          v42 = SecAccessControlGetConstraint();
          v21 = [v42 mutableCopy];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v28 = v23;

          v20 = v43;
          [v28 addEntriesFromDictionary:v43];
          v27 = SecAccessControlAddConstraintForOperation();
          if ((v27 & 1) == 0)
          {
            CFRelease(v11);
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_23;
            v45[3] = &__block_descriptor_40_e14___NSError_8__0l;
            v45[4] = error;
            v29 = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_23(v45);
            v11 = 0;
          }
        }

        else
        {
          CFRelease(v11);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_18;
          v46[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v46[4] = error;
          v26 = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_18(v46);
          v27 = 0;
          v11 = 0;
        }

        if (v27)
        {
          goto LABEL_21;
        }

LABEL_23:
        v11 = 0;
        goto LABEL_33;
      }

      CFRelease(v11);
      v25 = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_12();
    }

    else
    {
      CFRelease(v11);
      v24 = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_8();
    }

    goto LABEL_23;
  }

LABEL_21:
  v30 = *MEMORY[0x277CDC040];
  if (([algorithmCopy isEqualToNumber:0x2870A9198] & 1) == 0)
  {
    if ([algorithmCopy isEqualToNumber:0x2870A91B0])
    {
      v31 = &unk_2870A9150;
      goto LABEL_28;
    }

    if ([algorithmCopy isEqualToNumber:0x2870A91C8])
    {
      v32 = *MEMORY[0x277CDC050];

      v31 = &unk_2870A9138;
      v30 = v32;
      goto LABEL_28;
    }
  }

  v31 = &unk_2870A9138;
LABEL_28:
  v33 = *MEMORY[0x277CDC018];
  v51[0] = *MEMORY[0x277CDC028];
  v51[1] = v33;
  v52[0] = v30;
  v52[1] = v31;
  v34 = *MEMORY[0x277CDC158];
  v52[2] = *MEMORY[0x277CDC160];
  v35 = *MEMORY[0x277CDC4F0];
  v51[2] = v34;
  v51[3] = v35;
  v36 = *MEMORY[0x277CDBEC0];
  v49[0] = *MEMORY[0x277CDBFD0];
  v49[1] = v36;
  v50[0] = MEMORY[0x277CBEC28];
  v50[1] = v11;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v52[3] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];

  if (v11)
  {
    CFRelease(v11);
  }

  v11 = SecKeyCreateRandomKey(v38, &error);
  if (!v11)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_30;
    v44[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v44[4] = error;
    v39 = __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_30(v44);
  }

LABEL_33:
  v40 = *MEMORY[0x277D85DE8];
  return v11;
}

id __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecAccessControlCreateWithFlags."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_8()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with SecAccessConstraintCreateBiometry."];
  v1 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_12()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with SecAccessConstraintCreateCompanion."];
  v1 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecAccessConstraintCreateKofN."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error adding biometric constraint."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __78__POSecKeyHelper_createUserSEPSigningKeyForAlgorithm_userPresence_currentSet___block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateRandomKey."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)createSEPSigningKeyForAlgorithm:(id)algorithm shared:(BOOL)shared preboot:(BOOL)preboot
{
  sharedCopy = shared;
  v50[1] = *MEMORY[0x277D85DE8];
  algorithmCopy = algorithm;
  error = 0;
  v49 = @"osgn";
  v46 = @"com.apple.PlatformSSO.auth";
  v47 = @"cag";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v48 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v50[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];

  v10 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEF8], 0x40000000uLL, &error);
  if (!v10)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke;
    v36[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v36[4] = error;
    v14 = __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke(v36);
    goto LABEL_19;
  }

  v11 = *MEMORY[0x277CDBF10];
  if (!sharedCopy)
  {
    v12 = *MEMORY[0x277CDBF10];
  }

  SecAccessControlSetProtection();
  if (error)
  {
    CFRelease(v10);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke_34;
    v35[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v35[4] = error;
    v13 = __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke_34(v35);
    v10 = 0;
    goto LABEL_19;
  }

  SecAccessControlSetConstraints();
  v15 = *MEMORY[0x277CDC040];
  if (([algorithmCopy isEqualToNumber:0x2870A9198] & 1) == 0)
  {
    if ([algorithmCopy isEqualToNumber:0x2870A91B0])
    {
      v16 = &unk_2870A9150;
      goto LABEL_13;
    }

    if ([algorithmCopy isEqualToNumber:0x2870A91C8])
    {
      v17 = *MEMORY[0x277CDC050];

      v16 = &unk_2870A9138;
      v15 = v17;
      goto LABEL_13;
    }
  }

  v16 = &unk_2870A9138;
LABEL_13:
  v18 = *MEMORY[0x277CDC018];
  if (sharedCopy)
  {
    v40[0] = *MEMORY[0x277CDC028];
    v40[1] = v18;
    v41[0] = v15;
    v41[1] = v16;
    v19 = *MEMORY[0x277CDC160];
    v20 = *MEMORY[0x277CDC5D8];
    v40[2] = *MEMORY[0x277CDC158];
    v40[3] = v20;
    v41[2] = v19;
    v41[3] = MEMORY[0x277CBEC38];
    v40[4] = *MEMORY[0x277CDC4F0];
    v21 = *MEMORY[0x277CDBEC0];
    v38[0] = *MEMORY[0x277CDBFD0];
    v38[1] = v21;
    v39[0] = MEMORY[0x277CBEC28];
    v39[1] = v10;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v41[4] = v22;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v41;
    v25 = v40;
    v26 = 5;
  }

  else
  {
    v44[0] = *MEMORY[0x277CDC028];
    v44[1] = v18;
    v45[0] = v15;
    v45[1] = v16;
    v27 = *MEMORY[0x277CDC158];
    v45[2] = *MEMORY[0x277CDC160];
    v28 = *MEMORY[0x277CDC4F0];
    v44[2] = v27;
    v44[3] = v28;
    v29 = *MEMORY[0x277CDBEC0];
    v42[0] = *MEMORY[0x277CDBFD0];
    v42[1] = v29;
    v43[0] = MEMORY[0x277CBEC28];
    v43[1] = v10;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v45[3] = v22;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v45;
    v25 = v44;
    v26 = 4;
  }

  v30 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];

  CFRelease(v10);
  v10 = SecKeyCreateRandomKey(v30, &error);
  if (!v10)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke_38;
    v34[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v34[4] = error;
    v31 = __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke_38(v34);
  }

LABEL_19:
  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

id __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecAccessControlCreateWithFlags."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecAccessControlSetProtection."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __65__POSecKeyHelper_createSEPSigningKeyForAlgorithm_shared_preboot___block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateRandomKey."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)createSEPEncryptionKeyForAlgorithm:(id)algorithm shared:(BOOL)shared preboot:(BOOL)preboot
{
  prebootCopy = preboot;
  v83[1] = *MEMORY[0x277D85DE8];
  algorithmCopy = algorithm;
  error = 0;
  v81 = @"com.apple.PlatformSSO.auth";
  v82 = @"cag";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v83[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];

  if (prebootCopy)
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cisp"];

    v7 = v8;
  }

  v50 = v7;
  v80[0] = v7;
  v79[0] = @"ock";
  v79[1] = @"oece";
  v76 = @"com.apple.PlatformSSO.auth";
  v77 = @"cag";
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v78 = v49;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v80[1] = v48;
  v79[2] = @"oecd";
  v74 = @"cag";
  v73 = @"com.apple.PlatformSSO.auth";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  v75 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v80[2] = v10;
  v79[3] = @"oe";
  v70 = @"com.apple.PlatformSSO.auth";
  v71 = @"cag";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v72 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v80[3] = v12;
  v79[4] = @"od";
  v67 = @"com.apple.PlatformSSO.auth";
  v68 = @"cag";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
  v69 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v80[4] = v14;
  v79[5] = @"osgn";
  v64 = @"com.apple.PlatformSSO.auth";
  v65 = @"cag";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v66 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v80[5] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:6];

  v18 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEF8], 0x40000000uLL, &error);
  if (!v18)
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke;
    v54[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v54[4] = error;
    v25 = __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke(v54);
    v23 = 0;
    v24 = v50;
    v21 = algorithmCopy;
    goto LABEL_16;
  }

  v19 = v18;
  v20 = *MEMORY[0x277CDBF10];
  SecAccessControlSetProtection();
  v21 = algorithmCopy;
  if (error)
  {
    CFRelease(v19);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke_42;
    v53[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v53[4] = error;
    v22 = __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke_42(v53);
    v23 = 0;
    v24 = v50;
    goto LABEL_16;
  }

  v26 = v17;
  SecAccessControlSetConstraints();
  v27 = *MEMORY[0x277CDC040];
  if (([algorithmCopy isEqualToNumber:0x2870A9198] & 1) == 0 && (objc_msgSend(algorithmCopy, "isEqualToNumber:", 0x2870A91B0) & 1) == 0)
  {
    if ([algorithmCopy isEqualToNumber:0x2870A91C8])
    {
      v28 = &unk_2870A9150;
      goto LABEL_10;
    }

    if ([algorithmCopy isEqualToNumber:0x2870A91E0])
    {
      v46 = *MEMORY[0x277CDC078];

      v28 = &unk_2870A9138;
      v27 = v46;
      goto LABEL_10;
    }
  }

  v28 = &unk_2870A9138;
LABEL_10:
  v29 = *MEMORY[0x277CDC028];
  v30 = *MEMORY[0x277CDC018];
  if (shared)
  {
    v58[0] = *MEMORY[0x277CDC028];
    v58[1] = v30;
    v59[0] = v27;
    v59[1] = v28;
    v31 = *MEMORY[0x277CDC160];
    v32 = *MEMORY[0x277CDC5D8];
    v58[2] = *MEMORY[0x277CDC158];
    v58[3] = v32;
    v59[2] = v31;
    v59[3] = MEMORY[0x277CBEC38];
    v58[4] = *MEMORY[0x277CDC4F0];
    v33 = *MEMORY[0x277CDBEC0];
    v56[0] = *MEMORY[0x277CDBFD0];
    v56[1] = v33;
    v57[0] = MEMORY[0x277CBEC28];
    v57[1] = v19;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v59[4] = v34;
    v35 = MEMORY[0x277CBEAC0];
    v36 = v59;
    v37 = v58;
    v38 = 5;
  }

  else
  {
    v62[0] = *MEMORY[0x277CDC028];
    v62[1] = v30;
    v63[0] = v27;
    v63[1] = v28;
    v39 = *MEMORY[0x277CDC158];
    v63[2] = *MEMORY[0x277CDC160];
    v40 = *MEMORY[0x277CDC4F0];
    v62[2] = v39;
    v62[3] = v40;
    v41 = *MEMORY[0x277CDBEC0];
    v60[0] = *MEMORY[0x277CDBFD0];
    v60[1] = v41;
    v61[0] = MEMORY[0x277CBEC28];
    v61[1] = v19;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v63[3] = v34;
    v35 = MEMORY[0x277CBEAC0];
    v36 = v63;
    v37 = v62;
    v38 = 4;
  }

  v42 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];

  CFRelease(v19);
  v23 = SecKeyCreateRandomKey(v42, &error);
  if (!v23)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke_43;
    v52[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v52[4] = error;
    v43 = __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke_43(v52);
  }

  v24 = v50;
  v17 = v26;
LABEL_16:

  v44 = *MEMORY[0x277D85DE8];
  return v23;
}

id __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecAccessControlCreateWithFlags."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke_42(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecAccessControlSetProtection."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __68__POSecKeyHelper_createSEPEncryptionKeyForAlgorithm_shared_preboot___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateRandomKey."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)createEncryptionKeyForAlgorithm:(id)algorithm
{
  v17[4] = *MEMORY[0x277D85DE8];
  algorithmCopy = algorithm;
  error = 0;
  v4 = *MEMORY[0x277CDC040];
  if ([algorithmCopy isEqualToNumber:0x2870A9198] & 1) != 0 || (objc_msgSend(algorithmCopy, "isEqualToNumber:", 0x2870A91B0))
  {
    goto LABEL_3;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91C8])
  {
    v5 = &unk_2870A9150;
  }

  else
  {
    if (![algorithmCopy isEqualToNumber:0x2870A91E0])
    {
LABEL_3:
      v5 = &unk_2870A9138;
      goto LABEL_4;
    }

    v13 = *MEMORY[0x277CDC078];

    v5 = &unk_2870A9138;
    v4 = v13;
  }

LABEL_4:
  v6 = *MEMORY[0x277CDC018];
  v16[0] = *MEMORY[0x277CDC028];
  v16[1] = v6;
  v17[0] = v4;
  v17[1] = v5;
  v7 = *MEMORY[0x277CDC5C8];
  v16[2] = *MEMORY[0x277CDBFD0];
  v16[3] = v7;
  v17[2] = MEMORY[0x277CBEC28];
  v17[3] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v9 = SecKeyCreateRandomKey(v8, &error);
  if (!v9)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__POSecKeyHelper_createEncryptionKeyForAlgorithm___block_invoke;
    v14[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v14[4] = error;
    v10 = __50__POSecKeyHelper_createEncryptionKeyForAlgorithm___block_invoke(v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

id __50__POSecKeyHelper_createEncryptionKeyForAlgorithm___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateRandomKey."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (BOOL)checkIfBiometricConstraintsForSigningForKey:(__SecKey *)key
{
  if (!key)
  {
    return 0;
  }

  v4 = SecKeyCopyAttributes(key);
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDBEC0]];

  if (v5)
  {
    v6 = [self checkIfBiometricConstraintsForSigning:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)checkIfBiometricConstraintsForSigning:(__SecAccessControl *)signing
{
  v3 = SecAccessControlGetConstraint();
  v4 = [v3 objectForKeyedSubscript:@"ckon"];
  v5 = [v4 objectForKeyedSubscript:@"cbio"];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"cwtch"];
    v6 = v7 != 0;
  }

  return v6;
}

+ (id)dataForKey:(__SecKey *)key
{
  if (key)
  {
    v3 = SecKeyCopyAttributes(key);
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CDC178]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dataForEphemeralKey:(__SecKey *)key
{
  if (key)
  {
    v4 = SecKeyCopyExternalRepresentation(key, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__SecKey)keyForData:(id)data context:(id)context
{
  v20[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v7 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[POSecKeyHelper keyForData:context:];
  }

  if (dataCopy)
  {
    error = 0;
    v8 = *MEMORY[0x277CDC160];
    v9 = *MEMORY[0x277CDC178];
    v19[0] = *MEMORY[0x277CDC158];
    v19[1] = v9;
    v20[0] = v8;
    v20[1] = dataCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v11 = [v10 mutableCopy];

    if (contextCopy)
    {
      [v11 setObject:contextCopy forKeyedSubscript:*MEMORY[0x277CDC5A0]];
    }

    data = [MEMORY[0x277CBEA90] data];
    v13 = SecKeyCreateWithData(data, v11, &error);
    if (!v13)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __37__POSecKeyHelper_keyForData_context___block_invoke;
      v17[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v17[4] = error;
      v14 = __37__POSecKeyHelper_keyForData_context___block_invoke(v17);
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

id __37__POSecKeyHelper_keyForData_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateWithData."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)systemKeyForData:(id)data context:(id)context
{
  v19[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v7 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[POSecKeyHelper systemKeyForData:context:];
  }

  if (dataCopy)
  {
    error = 0;
    v8 = *MEMORY[0x277CDC178];
    v18[0] = *MEMORY[0x277CDC158];
    v18[1] = v8;
    v19[0] = *MEMORY[0x277CDC160];
    v19[1] = dataCopy;
    v18[2] = *MEMORY[0x277CDC5D8];
    v19[2] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v10 = [v9 mutableCopy];

    if (contextCopy)
    {
      [v10 setObject:contextCopy forKeyedSubscript:*MEMORY[0x277CDC5A0]];
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEA90]);

    v12 = SecKeyCreateWithData(v11, v10, &error);
    if (!v12)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__POSecKeyHelper_systemKeyForData_context___block_invoke;
      v16[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v16[4] = error;
      v13 = __43__POSecKeyHelper_systemKeyForData_context___block_invoke(v16);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

id __43__POSecKeyHelper_systemKeyForData_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateWithData for system key."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)ephemeralKeyForData:(id)data
{
  v15[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[POSecKeyHelper ephemeralKeyForData:];
  }

  if (dataCopy)
  {
    error = 0;
    v5 = *MEMORY[0x277CDBFE0];
    v14[0] = *MEMORY[0x277CDC028];
    v14[1] = v5;
    v6 = *MEMORY[0x277CDBFF0];
    v15[0] = *MEMORY[0x277CDC040];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = SecKeyCreateWithData(dataCopy, v7, &error);
    if (!v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __38__POSecKeyHelper_ephemeralKeyForData___block_invoke;
      v12[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v12[4] = error;
      v9 = __38__POSecKeyHelper_ephemeralKeyForData___block_invoke(v12);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

id __38__POSecKeyHelper_ephemeralKeyForData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateWithData for ephemeral key."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)ephemeralPublicKeyForData:(id)data
{
  v15[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[POSecKeyHelper ephemeralPublicKeyForData:];
  }

  if (dataCopy)
  {
    error = 0;
    v5 = *MEMORY[0x277CDBFE0];
    v14[0] = *MEMORY[0x277CDC028];
    v14[1] = v5;
    v6 = *MEMORY[0x277CDC000];
    v15[0] = *MEMORY[0x277CDC040];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = SecKeyCreateWithData(dataCopy, v7, &error);
    if (!v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__POSecKeyHelper_ephemeralPublicKeyForData___block_invoke;
      v12[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v12[4] = error;
      v9 = __44__POSecKeyHelper_ephemeralPublicKeyForData___block_invoke(v12);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

id __44__POSecKeyHelper_ephemeralPublicKeyForData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateWithData for ephemeral public key."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (__SecKey)ephemeralX25529PublicKeyForData:(id)data
{
  v15[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[POSecKeyHelper ephemeralX25529PublicKeyForData:];
  }

  if (dataCopy)
  {
    error = 0;
    v5 = *MEMORY[0x277CDBFE0];
    v14[0] = *MEMORY[0x277CDC028];
    v14[1] = v5;
    v6 = *MEMORY[0x277CDC000];
    v15[0] = *MEMORY[0x277CDC078];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = SecKeyCreateWithData(dataCopy, v7, &error);
    if (!v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__POSecKeyHelper_ephemeralX25529PublicKeyForData___block_invoke;
      v12[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v12[4] = error;
      v9 = __50__POSecKeyHelper_ephemeralX25529PublicKeyForData___block_invoke(v12);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

id __50__POSecKeyHelper_ephemeralX25529PublicKeyForData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCreateWithData for ephemeral public key."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (id)dataForCertificate:(__SecCertificate *)certificate
{
  if (certificate)
  {
    v4 = SecCertificateCopyData(certificate);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__SecCertificate)certificateForData:(id)data
{
  result = 0;
  if (data)
  {
    return SecCertificateCreateWithData(0, data);
  }

  return result;
}

+ (__SecIdentity)identityForKey:(__SecKey *)key andCertificate:(__SecCertificate *)certificate
{
  if (!key || !certificate)
  {
    return 0;
  }

  SecCFAllocatorZeroize();

  return SecIdentityCreate();
}

+ (BOOL)evaluateTrustForCertificates:(id)certificates rootCertificates:(id)rootCertificates
{
  certificatesCopy = certificates;
  rootCertificatesCopy = rootCertificates;
  v7 = rootCertificatesCopy;
  trust = 0;
  if (!certificatesCopy || ![(__CFArray *)rootCertificatesCopy count])
  {
    goto LABEL_13;
  }

  BasicX509 = SecPolicyCreateBasicX509();
  v9 = SecTrustCreateWithCertificates(certificatesCopy, BasicX509, &trust);
  if (BasicX509)
  {
    CFRelease(BasicX509);
  }

  if (v9)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke;
    v25[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v26 = v9;
    v10 = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke(v25);
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v11 = SecTrustSetAnchorCertificates(trust, v7);
  if (v11)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_70;
    v23[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v24 = v11;
    v12 = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_70(v23);
    goto LABEL_11;
  }

  v13 = SecTrustSetAnchorCertificatesOnly(trust, 1u);
  if (v13)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_74;
    v21[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v22 = v13;
    v14 = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_74(v21);
LABEL_11:
    if (trust)
    {
      CFRelease(trust);
    }

    goto LABEL_13;
  }

  error = 0;
  v17 = SecTrustEvaluateWithError(trust, &error);
  if (v17)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_78;
    v19[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v19[4] = error;
    v18 = __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_78(v19);
  }

  if (trust)
  {
    CFRelease(trust);
    trust = 0;
  }

  v15 = !v17;
LABEL_14:

  return v15;
}

id __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error with SecTrustCreateWithCertificates."];
  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_70(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error with SecTrustSetAnchorCertificates."];
  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_74(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error with SecTrustSetAnchorCertificatesOnly."];
  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __64__POSecKeyHelper_evaluateTrustForCertificates_rootCertificates___block_invoke_78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecTrustEvaluateWithError."];

  v3 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (BOOL)isSEPKey:(__SecKey *)key
{
  if (!key)
  {
    return 0;
  }

  v3 = SecKeyCopyAttributes(key);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CDC158]];
  if ([v4 isEqualToString:*MEMORY[0x277CDC160]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x277CDC170]];
  }

  return v5;
}

+ (BOOL)isSystemKey:(__SecKey *)key
{
  if (!key)
  {
    return 0;
  }

  v3 = SecKeyCopyAttributes(key);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CDC5D8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (BOOL)isEncryptionAlgorithm:(id)algorithm validForKey:(__SecKey *)key
{
  algorithmCopy = algorithm;
  v6 = SecKeyCopyAttributes(key);
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
  v8 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
  if ([v7 isEqualToString:*MEMORY[0x277CDC030]])
  {
    [v7 isEqualToString:*MEMORY[0x277CDC078]];
LABEL_4:
    intValue = [v8 intValue];
    if (intValue == 384)
    {
LABEL_8:
      v12 = &POEncryptionAlgorithmHPKE_P384_SHA384_AES_GCM_256;
      goto LABEL_11;
    }

    if (intValue == 256)
    {
      if ([algorithmCopy isEqualToNumber:0x2870A9198] & 1) != 0 || (objc_msgSend(algorithmCopy, "isEqualToNumber:", 0x2870A91B0))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v9 = [v7 isEqualToString:*MEMORY[0x277CDC040]];
  v10 = [v7 isEqualToString:*MEMORY[0x277CDC078]];
  if (v9)
  {
    goto LABEL_4;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = &POEncryptionAlgorithmHPKE_Curve25519_SHA256_ChachaPoly;
LABEL_11:
  if (([algorithmCopy isEqualToNumber:*v12] & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v13 = 1;
LABEL_14:

  return v13;
}

+ (BOOL)_verifyCurve25519SigningKey:(__SecKey *)key
{
  v4 = objc_alloc_init(_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519);
  LOBYTE(key) = [(POCryptoKitAlgorithmCurve25519 *)v4 verifyKey:key];

  return key;
}

+ (BOOL)_verifyCurve25519EncryptionKey:(__SecKey *)key
{
  v4 = objc_alloc_init(_TtC15PlatformSSOCore18POCurve25519Verify);
  LOBYTE(key) = [(POCurve25519Verify *)v4 verifyKey:key];

  return key;
}

+ (BOOL)verifyKey:(__SecKey *)key
{
  keyCopy = key;
  if (key)
  {
    v5 = SecKeyCopyAttributes(key);
    v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
    v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
    if ([v6 isEqualToString:*MEMORY[0x277CDC030]])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:*MEMORY[0x277CDC040]];
    }

    v9 = [v6 isEqualToString:*MEMORY[0x277CDC078]];
    v10 = [v6 isEqualToString:*MEMORY[0x277CDC050]];
    if (v8)
    {
      intValue = [v7 intValue];
      if (intValue == 256)
      {
        v12 = MEMORY[0x277CDC2D0];
        goto LABEL_20;
      }

      if (intValue == 384)
      {
        v12 = MEMORY[0x277CDC2D8];
LABEL_20:
        v14 = *v12;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v13 = [uUIDString dataUsingEncoding:4];

        *buf = 0;
        Signature = SecKeyCreateSignature(keyCopy, v14, v13, buf);
        if (Signature)
        {
          v18 = PO_LOG_POSecKeyHelper();
          LOBYTE(keyCopy) = 1;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v25 = 0;
            _os_log_impl(&dword_25E8B1000, v18, OS_LOG_TYPE_INFO, "key is valid", v25, 2u);
          }
        }

        else
        {
          v18 = *buf;
          code = [*buf code];
          LOBYTE(keyCopy) = code == -1004;
          if (code == -1004)
          {
            v21 = PO_LOG_POSecKeyHelper();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *v25 = 0;
              _os_log_impl(&dword_25E8B1000, v21, OS_LOG_TYPE_INFO, "key is valid", v25, 2u);
            }
          }

          else
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __28__POSecKeyHelper_verifyKey___block_invoke;
            v23[3] = &unk_279A3DC48;
            v24 = v18;
            v20 = __28__POSecKeyHelper_verifyKey___block_invoke(v23);
            v21 = v24;
          }
        }

        goto LABEL_29;
      }

LABEL_18:
      LOBYTE(keyCopy) = 0;
LABEL_30:

      return keyCopy;
    }

    if (v10)
    {
      if (![self _verifyCurve25519SigningKey:keyCopy])
      {
        goto LABEL_18;
      }

      v13 = PO_LOG_POSecKeyHelper();
      LOBYTE(keyCopy) = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
LABEL_17:
        _os_log_impl(&dword_25E8B1000, v13, OS_LOG_TYPE_INFO, "key is valid", buf, 2u);
      }
    }

    else
    {
      if (!v9 || ![self _verifyCurve25519EncryptionKey:keyCopy])
      {
        goto LABEL_18;
      }

      v13 = PO_LOG_POSecKeyHelper();
      LOBYTE(keyCopy) = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        goto LABEL_17;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  return keyCopy;
}

id __28__POSecKeyHelper_verifyKey___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to validate key"];
  v2 = PO_LOG_POSecKeyHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

+ (id)publicKeyHashForKey:(__SecKey *)key
{
  v3 = SecKeyCopyPublicKey(key);
  if (v3)
  {
    v4 = v3;
    v5 = SecKeyCopyExternalRepresentation(v3, 0);
    psso_sha256Hash = [(__CFData *)v5 psso_sha256Hash];
    v7 = [psso_sha256Hash base64EncodedStringWithOptions:0];
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)printKey:(__SecKey *)key
{
  error = 0;
  v4 = SecKeyCopyExternalRepresentation(key, &error);
  v5 = v4;
  if (v4)
  {
    v6 = [(__CFData *)v4 subdataWithRange:1, 32];
    v7 = [(__CFData *)v5 subdataWithRange:33, 32];
    if ([(__CFData *)v5 length]== 97)
    {
      v8 = [(__CFData *)v5 subdataWithRange:65, 32];
    }

    else
    {
      v8 = 0;
    }

    v10 = objc_opt_new();
    [v10 setObject:@"EC" forKeyedSubscript:@"kty"];
    [v10 setObject:@"P-256" forKeyedSubscript:@"crv"];
    psso_base64URLEncodedString = [v6 psso_base64URLEncodedString];
    [v10 setObject:psso_base64URLEncodedString forKeyedSubscript:@"x"];

    psso_base64URLEncodedString2 = [v7 psso_base64URLEncodedString];
    [v10 setObject:psso_base64URLEncodedString2 forKeyedSubscript:@"y"];

    if (v8)
    {
      psso_base64URLEncodedString3 = [v8 psso_base64URLEncodedString];
      [v10 setObject:psso_base64URLEncodedString3 forKeyedSubscript:@"d"];
    }

    v14 = SecKeyCopyPublicKey(key);
    v15 = SecKeyCopyExternalRepresentation(v14, 0);
    if (v14)
    {
      CFRelease(v14);
    }

    psso_sha256Hash = [(__CFData *)v15 psso_sha256Hash];
    v17 = [psso_sha256Hash base64EncodedStringWithOptions:0];
    [v10 setObject:v17 forKeyedSubscript:@"kid"];

    v20 = 0;
    v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:1 error:&v20];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)keyForData:context:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)systemKeyForData:context:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ephemeralKeyForData:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ephemeralPublicKeyForData:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ephemeralX25529PublicKeyForData:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end