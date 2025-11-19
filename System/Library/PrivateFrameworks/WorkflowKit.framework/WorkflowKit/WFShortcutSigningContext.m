@interface WFShortcutSigningContext
+ (id)contextWithAppleIDAccount:(id)a3 signingKey:(__SecKey *)a4;
+ (id)contextWithAuthData:(id)a3;
+ (id)contextWithSigningCertificateChain:(id)a3;
- (BOOL)validateAppleIDCertificatesWithError:(id *)a3;
- (BOOL)validateSigningCertificateChainWithICloudIdentifier:(id *)a3 error:(id *)a4;
- (BOOL)validateWithSigningMethod:(int64_t *)a3 iCloudIdentifier:(id *)a4 error:(id *)a5;
- (WFShortcutSigningContext)initWithAppleIDValidationRecord:(id)a3 appleIDCertificateChain:(id)a4 signingPublicKey:(__SecKey *)a5 signingPublicKeyData:(id)a6;
- (WFShortcutSigningContext)initWithSigningCertificateChain:(id)a3;
- (__SecKey)copyPublicKey;
- (id)generateAuthData;
- (void)dealloc;
- (void)validateAppleIDValidationRecordWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation WFShortcutSigningContext

- (BOOL)validateSigningCertificateChainWithICloudIdentifier:(id *)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = getWFSecurityLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Validating Shortcut Signing Certificate Chain", buf, 0xCu);
  }

  v8 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v9 = [v8 if_map:&__block_literal_global_239_74617];

  Revocation = SecPolicyCreateRevocation(3uLL);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__WFShortcutSigningContext_validateSigningCertificateChainWithICloudIdentifier_error___block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = Revocation;
  v11 = _Block_copy(aBlock);
  trust = 0;
  v12 = SecTrustCreateWithCertificates(v9, Revocation, &trust);
  if (!v12 || !trust)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __86__WFShortcutSigningContext_validateSigningCertificateChainWithICloudIdentifier_error___block_invoke_240;
    v26[3] = &__block_descriptor_40_e5_v8__0l;
    v26[4] = trust;
    v14 = _Block_copy(v26);
    v18 = [v9 objectAtIndexedSubscript:0];

    if (a3)
    {
      *buf = 0;
      SecCertificateCopyCommonName(v18, buf);
      *a3 = *buf;
    }

    v25 = 0;
    if (SecTrustEvaluateWithError(trust, &v25))
    {
      if (SecCertificateCopyExtensionValue())
      {
        v19 = getWFSecurityLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEFAULT, "%s Shortcut Signing Certificate Chain Validated Successfully", buf, 0xCu);
        }

        v17 = 1;
        goto LABEL_26;
      }

      v19 = WFShortcutSigningContextSigningCertificateChainFailureError(0);
      v21 = getWFSecurityLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Unrecognized Shortcut Signing Certificate: %@", buf, 0x16u);
      }

      if (a4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v19 = WFShortcutSigningContextSigningCertificateChainFailureError(v25);
      v20 = getWFSecurityLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Failed to Evaluate Shortcut Signing Certificate Chain: %@", buf, 0x16u);
      }

      if (a4)
      {
LABEL_24:
        v22 = v19;
        v17 = 0;
        *a4 = v19;
LABEL_26:

        (v14[2].isa)(v14);
        goto LABEL_27;
      }
    }

    v17 = 0;
    goto LABEL_26;
  }

  v13 = WFErrorFromSecurityOSStatus(v12);
  v14 = WFShortcutSigningContextSigningCertificateChainFailureError(v13);

  if (a4)
  {
    v15 = v14;
    *a4 = v14;
  }

  v16 = getWFSecurityLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Validating Shortcut Signing Certificate Chain Failed: %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_27:

  v11[2](v11);
  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)validateAppleIDValidationRecordWithCompletion:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Validating AppleID Validation Record", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E69CDE10]);
  v7 = [v6 myAccountWithError:0];
  v8 = [v7 altDSID];
  v9 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
  v10 = [v9 altDSID];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    v12 = getWFSecurityLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Found the current user's AppleID Validation Record", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 1, 3, 0, 0);
  }

  else if (+[WFSharingSettings isPrivateSharingEnabled])
  {
    v13 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
    v14 = [v13 validatedEmailHashes];
    v15 = WFCombinedHashStringFromArray(v14);

    v16 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
    v17 = [v16 validatedPhoneHashes];
    v18 = WFCombinedHashStringFromArray(v17);

    v19 = objc_alloc_init(MEMORY[0x1E69CDE40]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__WFShortcutSigningContext_validateAppleIDValidationRecordWithCompletion___block_invoke;
    v23[3] = &unk_1E837FBD8;
    v24 = v4;
    [v19 contactIDForEmailHash:v15 phoneHash:v18 completion:v23];
  }

  else
  {
    v20 = getWFSecurityLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]";
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Skipping AppleID Validation Record due to Private Sharing Disabled", buf, 0xCu);
    }

    v21 = [WFSharingSettings privateSharingDisabledErrorWithShortcutName:0];
    (*(v4 + 2))(v4, 0, 2, 0, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __74__WFShortcutSigningContext_validateAppleIDValidationRecordWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Found contact matching with AppleID Validation Record", &v12, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v14[0] = *MEMORY[0x1E696A578];
    v9 = WFLocalizedString(@"This shortcut cannot be opened because it was shared by someone who is not in your contacts.");
    v14[1] = *MEMORY[0x1E696AA08];
    v15[0] = v9;
    v15[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v7 = [v8 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v10];

    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Contact with matching AppleID Validation Record Couldn't be found", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateAppleIDCertificatesWithError:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[WFShortcutSigningContext validateAppleIDCertificatesWithError:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Validating AppleID Certificate Chain", buf, 0xCu);
  }

  v6 = [(WFShortcutSigningContext *)self appleIDCertificateChain];
  v7 = [v6 if_map:&__block_literal_global_227_74650];

  v8 = v7;
  trust = 0;
  error = 0;
  if (!v8)
  {
    v14 = 0;
    v12 = 0;
    LODWORD(v13) = -6705;
    goto LABEL_15;
  }

  AppleIDAuthorityPolicy = SecPolicyCreateAppleIDAuthorityPolicy();
  if (AppleIDAuthorityPolicy)
  {
    v10 = SecTrustCreateWithCertificates(v8, AppleIDAuthorityPolicy, &trust);
    if (v10)
    {
      v28 = v10;
      v26 = getWFSecurityLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "WFAppleIDVerifyCertificateChain";
        v37 = 1024;
        LODWORD(v38) = v28;
        v27 = "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecTrustCreateWithCertificates failed with error %d";
        v29 = v26;
        v30 = 18;
LABEL_40:
        _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_ERROR, v27, buf, v30);
      }
    }

    else
    {
      if (trust)
      {
        if (SecTrustEvaluateWithError(trust, &error) || (Domain = CFErrorGetDomain(error), CFEqual(Domain, *MEMORY[0x1E696A768])) && CFErrorGetCode(error) == -67818)
        {
          v12 = 0;
          LODWORD(v13) = 0;
          v14 = 1;
        }

        else
        {
          v12 = error;
          v13 = getWFSecurityLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v36 = "WFAppleIDVerifyCertificateChain";
            v37 = 2112;
            v38 = v12;
            _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecTrustEvaluateWithError failed with error %@", buf, 0x16u);
          }

          LODWORD(v13) = NSErrorToOSStatus();
          v14 = 0;
        }

        goto LABEL_11;
      }

      v26 = getWFSecurityLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v36 = "WFAppleIDVerifyCertificateChain";
        v27 = "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecTrustCreateWithCertificates returned NULL trust";
        goto LABEL_39;
      }
    }
  }

  else
  {
    v26 = getWFSecurityLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "WFAppleIDVerifyCertificateChain";
      v27 = "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecPolicyCreateAppleIDAuthorityPolicy failed";
LABEL_39:
      v29 = v26;
      v30 = 12;
      goto LABEL_40;
    }
  }

  v14 = 0;
  v12 = 0;
  LODWORD(v13) = -6762;
LABEL_11:
  if (trust)
  {
    CFRelease(trust);
  }

  if (AppleIDAuthorityPolicy)
  {
    CFRelease(AppleIDAuthorityPolicy);
  }

LABEL_15:
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    v13 = v13;
  }

  else
  {
    v13 = 4294960596;
  }

  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    v17 = getWFSecurityLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[WFShortcutSigningContext validateAppleIDCertificatesWithError:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Shortcut AppleID Certificate Chain Validated Successfully", buf, 0xCu);
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v33[0] = *MEMORY[0x1E696A578];
    v19 = WFLocalizedString(@"Failed to verify Apple Account information of this shortcut");
    v34[0] = v19;
    v33[1] = *MEMORY[0x1E696AA08];
    v20 = WFErrorFromSecurityOSStatus(v13);
    v34[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v17 = [v18 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v21];

    v22 = getWFSecurityLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[WFShortcutSigningContext validateAppleIDCertificatesWithError:]";
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Failed to Evaluate AppleID Certificate Chain: %@", buf, 0x16u);
    }

    if (a3)
    {
      v23 = v17;
      *a3 = v17;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)validateWithSigningMethod:(int64_t *)a3 iCloudIdentifier:(id *)a4 error:(id *)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__74659;
  v42 = __Block_byref_object_dispose__74660;
  v43 = 0;
  v9 = getWFSecurityLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFShortcutSigningContext validateWithSigningMethod:iCloudIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Start validating Shortcut Signing Context", &buf, 0xCu);
  }

  v10 = [(WFShortcutSigningContext *)self appleIDValidationRecord];

  if (v10)
  {
    v45[3] = 2;
    v11 = [(WFShortcutSigningContext *)self validateAppleIDCertificatesWithError:a5];
    *(v49 + 24) = v11;
    if (v11)
    {
      v12 = [(WFShortcutSigningContext *)self appleIDValidationRecord];

      if (v12)
      {
        v13 = dispatch_semaphore_create(0);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__74659;
        v59 = __Block_byref_object_dispose__74660;
        v60 = 0;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __77__WFShortcutSigningContext_validateWithSigningMethod_iCloudIdentifier_error___block_invoke;
        v32[3] = &unk_1E837FB90;
        v34 = &v48;
        p_buf = &buf;
        v36 = &v44;
        v37 = &v38;
        v14 = v13;
        v33 = v14;
        [(WFShortcutSigningContext *)self validateAppleIDValidationRecordWithCompletion:v32];
        v15 = dispatch_time(0, 30000000000);
        v16 = dispatch_semaphore_wait(v14, v15);
        v17 = *(v49 + 24);
        if (v16)
        {
          v17 = 0;
        }

        *(v49 + 24) = v17;
        if (a5 && (v17 & 1) == 0)
        {
          v18 = *(*(&buf + 1) + 40);
          if (v18)
          {
            *a5 = v18;
          }

          else
          {
            v24 = MEMORY[0x1E696ABC0];
            v54 = *MEMORY[0x1E696A578];
            v25 = WFLocalizedString(@"Failed to verify Apple Account information of this shortcut");
            v55 = v25;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            v27 = [v24 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v26];
            *a5 = v27;
          }
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        *(v49 + 24) = 0;
        if (a5)
        {
          v21 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E696A578];
          v22 = WFLocalizedString(@"This shortcut file data is corrupted");
          v53 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          *a5 = [v21 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v23];
        }
      }
    }
  }

  else
  {
    v45[3] = 1;
    v19 = (v39 + 5);
    obj = v39[5];
    v20 = [(WFShortcutSigningContext *)self validateSigningCertificateChainWithICloudIdentifier:&obj error:a5];
    objc_storeStrong(v19, obj);
    *(v49 + 24) = v20;
  }

  if (a3)
  {
    *a3 = v45[3];
  }

  if (a4)
  {
    *a4 = v39[5];
  }

  v28 = *(v49 + 24);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28 & 1;
}

void __77__WFShortcutSigningContext_validateWithSigningMethod_iCloudIdentifier_error___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v13 = a5;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  *(*(*(a1 + 56) + 8) + 24) = a3;
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
  v12 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)validateWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[WFShortcutSigningContext validateWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Start validating Shortcut Signing Context", buf, 0xCu);
  }

  v6 = [(WFShortcutSigningContext *)self appleIDCertificateChain];

  if (!v6)
  {
    v17 = 0;
    v18 = 0;
    v7 = [(WFShortcutSigningContext *)self validateSigningCertificateChainWithICloudIdentifier:&v18 error:&v17];
    v10 = v18;
    v8 = v17;
    v11 = 1;
LABEL_10:
    v4[2](v4, v7, v11, v10, v8);

    goto LABEL_11;
  }

  v19 = 0;
  v7 = [(WFShortcutSigningContext *)self validateAppleIDCertificatesWithError:&v19];
  v8 = v19;
  if (!v7)
  {
    v10 = 0;
    v11 = 2;
    goto LABEL_10;
  }

  v9 = [(WFShortcutSigningContext *)self appleIDValidationRecord];

  if (!v9)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v13 = WFLocalizedString(@"This shortcut file data is corrupted");
    v21 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v14];

    v10 = 0;
    v7 = 0;
    v11 = 2;
    v8 = v15;
    goto LABEL_10;
  }

  [(WFShortcutSigningContext *)self validateAppleIDValidationRecordWithCompletion:v4];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (__SecKey)copyPublicKey
{
  v3 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(WFShortcutSigningContext *)self signingCertificateChain];
    v6 = [v5 firstObject];
    v7 = [v6 copyPublicKey];

    return v7;
  }

  else
  {
    v9 = [(WFShortcutSigningContext *)self signingPublicKey];

    return CFRetain(v9);
  }
}

- (void)dealloc
{
  signingPublicKey = self->_signingPublicKey;
  if (signingPublicKey)
  {
    CFRelease(signingPublicKey);
  }

  v4.receiver = self;
  v4.super_class = WFShortcutSigningContext;
  [(WFShortcutSigningContext *)&v4 dealloc];
}

- (WFShortcutSigningContext)initWithSigningCertificateChain:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFShortcutSigningContext;
  v5 = [(WFShortcutSigningContext *)&v10 init];
  if (v5 && [v4 count])
  {
    v6 = [v4 copy];
    signingCertificateChain = v5->_signingCertificateChain;
    v5->_signingCertificateChain = v6;

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFShortcutSigningContext)initWithAppleIDValidationRecord:(id)a3 appleIDCertificateChain:(id)a4 signingPublicKey:(__SecKey *)a5 signingPublicKeyData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = WFShortcutSigningContext;
  v14 = [(WFShortcutSigningContext *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_appleIDValidationRecord, a3);
    v16 = [v12 copy];
    appleIDCertificateChain = v15->_appleIDCertificateChain;
    v15->_appleIDCertificateChain = v16;

    v15->_signingPublicKey = CFRetain(a5);
    v18 = [v13 copy];
    signingPublicKeySignature = v15->_signingPublicKeySignature;
    v15->_signingPublicKeySignature = v18;

    v20 = v15;
  }

  return v15;
}

- (id)generateAuthData
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v4 = [v3 count];

  if (!v4)
  {
    v13 = [(WFShortcutSigningContext *)self appleIDValidationRecord];

    if (!v13)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v14 = [(WFShortcutSigningContext *)self appleIDCertificateChain];
    v6 = [v14 if_compactMap:&__block_literal_global_178_74676];

    v15 = [v6 count];
    v16 = [(WFShortcutSigningContext *)self appleIDCertificateChain];
    v17 = [v16 count];

    if (v15 == v17)
    {
      v11 = SecKeyCopyExternalRepresentation([(WFShortcutSigningContext *)self signingPublicKey], 0);
      v18 = MEMORY[0x1E695DF90];
      v26[0] = @"AppleIDCertificateChain";
      v26[1] = @"SigningPublicKey";
      v27[0] = v6;
      v27[1] = v11;
      v26[2] = @"SigningPublicKeySignature";
      v19 = [(WFShortcutSigningContext *)self signingPublicKeySignature];
      v27[2] = v19;
      v26[3] = @"AppleIDValidationRecord";
      v20 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
      v21 = [v20 data];
      v27[3] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
      v12 = [v18 dictionaryWithDictionary:v22];

      goto LABEL_7;
    }

LABEL_8:

    v23 = 0;
    goto LABEL_11;
  }

  v5 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v6 = [v5 if_compactMap:&__block_literal_global_74674];

  v7 = [v6 count];
  v8 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v9 = [v8 count];

  if (v7 != v9)
  {
    goto LABEL_8;
  }

  v10 = MEMORY[0x1E695DF90];
  v28 = @"SigningCertificateChain";
  v29[0] = v6;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v12 = [v10 dictionaryWithDictionary:v11];
LABEL_7:

LABEL_10:
  v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:200 options:0 error:0];

LABEL_11:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)contextWithSigningCertificateChain:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSigningCertificateChain:v4];

  return v5;
}

+ (id)contextWithAppleIDAccount:(id)a3 signingKey:(__SecKey *)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 identity];
  if (v7)
  {
    v8 = [v6 identity];
    v9 = [v8 copyCertificate];

    v10 = [v6 identity];
    v11 = [v10 copyIntermediateCertificate];

    v12 = 0;
    if (v9 && v11)
    {
      v26 = [[WFShortcutSigningCertificate alloc] initWithCertificate:v9];
      v13 = [[WFShortcutSigningCertificate alloc] initWithCertificate:v11];
      v14 = [v7 copyPrivateKey];
      if (v14)
      {
        v15 = v14;
        v16 = SecKeyCopyPublicKey(a4);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __65__WFShortcutSigningContext_contextWithAppleIDAccount_signingKey___block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v16;
        v17 = _Block_copy(aBlock);
        v18 = SecKeyCopyExternalRepresentation(v16, 0);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __65__WFShortcutSigningContext_contextWithAppleIDAccount_signingKey___block_invoke_2;
        v27[3] = &__block_descriptor_40_e5_v8__0l;
        v27[4] = v18;
        v19 = _Block_copy(v27);
        Signature = SecKeyCreateSignature(v15, *MEMORY[0x1E697B1E0], v18, 0);
        v29[0] = v26;
        v29[1] = v13;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
        v22 = [a1 alloc];
        v23 = [v6 validationRecord];
        v12 = [v22 initWithAppleIDValidationRecord:v23 appleIDCertificateChain:v21 signingPublicKey:v16 signingPublicKeyData:Signature];

        v19[2](v19);
        v17[2](v17);
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)contextWithAuthData:(id)a3
{
  v74[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    a1 = 0;
    goto LABEL_22;
  }

  v6 = [v5 objectForKeyedSubscript:@"SigningCertificateChain"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 if_compactMap:&__block_literal_global_183_74703];
      v8 = [v7 count];
      if (v8 == [v6 count])
      {
        a1 = [a1 contextWithSigningCertificateChain:v7];
      }

      else
      {
        a1 = 0;
      }

      goto LABEL_21;
    }
  }

  v9 = [v5 objectForKeyedSubscript:@"AppleIDCertificateChain"];

  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:@"AppleIDCertificateChain"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 if_compactMap:&__block_literal_global_186_74704];
        v12 = [v11 count];
        if (v12 == [v10 count])
        {
          v13 = [v5 objectForKeyedSubscript:@"SigningPublicKey"];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v17 = v14;

          v18 = [v5 objectForKeyedSubscript:@"SigningPublicKeySignature"];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          signature = v19;

          v20 = [v11 firstObject];
          v21 = [v20 copyPublicKey];

          v22 = *MEMORY[0x1E697AD78];
          v23 = *MEMORY[0x1E697AD30];
          v73[0] = *MEMORY[0x1E697AD68];
          v73[1] = v23;
          v24 = *MEMORY[0x1E697AD40];
          v74[0] = v22;
          v74[1] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
          v56 = SecKeyCreateWithData(v17, v25, 0);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __48__WFShortcutSigningContext_contextWithAuthData___block_invoke_3;
          aBlock[3] = &__block_descriptor_40_e5_v8__0l;
          aBlock[4] = v56;
          v26 = _Block_copy(aBlock);
          if (!SecKeyVerifySignature(v21, *MEMORY[0x1E697B1E0], v17, signature, 0))
          {
            v37 = 0;
            a1 = 0;
            goto LABEL_58;
          }

          v27 = [v5 objectForKeyedSubscript:@"AppleIDValidationRecord"];

          if (!v27)
          {
            v37 = 1;
            goto LABEL_58;
          }

          v28 = [v5 objectForKeyedSubscript:@"AppleIDValidationRecord"];
          v29 = v28;
          if (v28)
          {
            v53 = v17;
            v54 = v25;
            v30 = v28;
            v66 = 0;
            v67 = &v66;
            v68 = 0x3032000000;
            v69 = __Block_byref_object_copy__74659;
            v70 = __Block_byref_object_dispose__74660;
            v71 = 0;
            v62 = 0;
            v63 = &v62;
            v64 = 0x2020000000;
            v65 = 1;
            v50 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
            v31 = dispatch_queue_create("SFAppleIDQueue", v50);
            v32 = dispatch_semaphore_create(0);
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __48__WFShortcutSigningContext_contextWithAuthData___block_invoke_190;
            v58[3] = &unk_1E837FB60;
            v60 = &v66;
            v61 = &v62;
            v33 = v32;
            v59 = v33;
            v49 = v30;
            v51 = v31;
            WFAppleIDParseValidationRecordData(v30, v31, v58);
            v34 = dispatch_time(0, 30000000000);
            v52 = v33;
            v35 = dispatch_semaphore_wait(v33, v34);
            v36 = 0;
            v55 = 0;
            v17 = v53;
            v25 = v54;
            if (v67[5] && !v35)
            {
              if (*(v63 + 6))
              {
                v55 = 0;
                v36 = 0;
              }

              else
              {
                v38 = objc_alloc(MEMORY[0x1E69CDE18]);
                v55 = [v38 initWithDictionary:v67[5]];
                v39 = [v67[5] objectForKeyedSubscript:@"altDsID"];
                [v55 setAltDSID:v39];

                v40 = [v67[5] objectForKeyedSubscript:@"SuggestValidDuration"];
                if (v40)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v41 = v40;
                  }

                  else
                  {
                    v41 = 0;
                  }
                }

                else
                {
                  v41 = 0;
                }

                v42 = v41;

                [v55 setSuggestedValidDuration:{objc_msgSend(v42, "unsignedIntValue")}];
                v43 = [v67[5] objectForKeyedSubscript:@"ValidatedEmailHashes"];
                if ([v43 count])
                {
                  v44 = v43;
                }

                else
                {
                  v44 = 0;
                }

                [v55 setValidatedEmailHashes:v44];
                v47 = [v67[5] objectForKeyedSubscript:@"ValidatedPhoneHashes"];

                if ([v47 count])
                {
                  v45 = v47;
                }

                else
                {
                  v45 = 0;
                }

                [v55 setValidatedPhoneHashes:{v45, v47}];
                v46 = [v67[5] objectForKeyedSubscript:@"ValidAsOf"];
                [v55 setValidStartDate:v46];

                v36 = 1;
              }
            }

            _Block_object_dispose(&v62, 8);
            _Block_object_dispose(&v66, 8);

            if ((v36 & 1) == 0)
            {
              a1 = 0;
              v29 = v49;
              goto LABEL_57;
            }

            v29 = v49;
          }

          else
          {
            v55 = 0;
          }

          a1 = [[a1 alloc] initWithAppleIDValidationRecord:v55 appleIDCertificateChain:v11 signingPublicKey:v56 signingPublicKeyData:signature];
LABEL_57:

          v37 = 0;
LABEL_58:
          v26[2](v26);

          if ((v37 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }
    }
  }

LABEL_20:
  a1 = 0;
LABEL_21:

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];

  return a1;
}

void __48__WFShortcutSigningContext_contextWithAuthData___block_invoke_190(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

WFShortcutSigningCertificate *__48__WFShortcutSigningContext_contextWithAuthData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFShortcutSigningCertificate alloc] initWithCertificateData:v2];

  return v3;
}

WFShortcutSigningCertificate *__48__WFShortcutSigningContext_contextWithAuthData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFShortcutSigningCertificate alloc] initWithCertificateData:v2];

  return v3;
}

@end