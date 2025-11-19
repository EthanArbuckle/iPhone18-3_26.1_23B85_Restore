@interface SEEndPoint
+ (id)decodeWithData:(id)a3 error:(id *)a4;
+ (id)endPointWithType:(int64_t)a3 appletIdentifier:(id)a4 identifier:(id)a5 certificateData:(id)a6 error:(id *)a7;
+ (id)parsePTAExtension:(__CFString *)a3 certificate:(__SecCertificate *)a4 specification:(id *)a5 output:(PTAEndPointExtensionContent *)a6;
+ (id)revokedEndpointWithPublicKeyIdentifier:(id)a3 appletIdentifier:(id)a4 revocationAttestation:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (SEEndPoint)initWithCoder:(id)a3;
- (id)configurePrivateData:(id)a3 confidentialData:(id)a4 contactlessPersistentVisibility:(id)a5 wiredPersistentVisibility:(id)a6 nfcExpressOnlyInLPM:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deleteEndPointLongTermPrivacyKey;
- (id)description;
- (id)dumpState;
- (id)generateEndPointPrivacyLongTermPrivacyKey;
- (id)validateAuthorizedEndpointConfig:(id)a3;
- (unint64_t)getEndpointUser;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)prependCertificateChain:(id)a3;
@end

@implementation SEEndPoint

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(SEEndPoint *)self encodeWithError:0];
  v4 = [SEEndPoint decodeWithData:v3 error:0];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(SEEndPoint *)self publicKeyIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SEEndPoint *)self publicKeyIdentifier];
    v6 = [v4 publicKeyIdentifier];
    v7 = [v5 isEqualToData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)endPointWithType:(int64_t)a3 appletIdentifier:(id)a4 identifier:(id)a5 certificateData:(id)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = SecCertificateCreateWithData(0, v15);
    v17 = v16;
    if (!v16)
    {
      if (a7)
      {
        v28 = SESDefaultLogObject();
        v29 = *MEMORY[0x1E69E5148];
        v71 = [(__CFData *)v15 base64];
        *a7 = SESCreateAndLogError();
      }

      v24 = 0;
      goto LABEL_60;
    }

    commonName = 0;
    SecCertificateCopyCommonName(v16, &commonName);
    v18 = commonName;
    v19 = SecCertificateCopyIssuerSummary();
    if ((a3 - 1) >= 5)
    {
      if (a7)
      {
        v30 = SESDefaultLogObject();
        v31 = *MEMORY[0x1E69E5148];
        *a7 = SESCreateAndLogError();
      }

      v24 = 0;
      goto LABEL_59;
    }

    v20 = off_1E82D0FE8[a3 - 1];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = __Block_byref_object_copy__1;
    if ((a3 & 6) == 4)
    {
      v21 = &PTALyonEndPointExtensionSpec;
    }

    else
    {
      v21 = &PTAEndPointExtensionSpec;
    }

    v93 = __Block_byref_object_dispose__1;
    v94 = [a1 parsePTAExtension:v20 certificate:v17 specification:v21 output:&v95];
    if (v90[5])
    {
      if (!a7)
      {
        v24 = 0;
LABEL_58:
        _Block_object_dispose(&v89, 8);

LABEL_59:
LABEL_60:

        goto LABEL_61;
      }

      v22 = SESDefaultLogObject();
      v23 = *MEMORY[0x1E69E5148];
      SESCreateAndLogError();
      *a7 = v24 = 0;
      v25 = v22;
LABEL_57:

      goto LABEL_58;
    }

    v32 = SecCertificateCopyKey(v17);
    v25 = v32;
    if (!v32)
    {
      if (a7)
      {
        v47 = SESDefaultLogObject();
        v48 = *MEMORY[0x1E69E5148];
        *a7 = SESCreateAndLogError();
      }

      v24 = 0;
      goto LABEL_57;
    }

    v88 = 0;
    v80 = v32;
    SecKeyCopyPublicBytes();
    v33 = objc_opt_new();
    *(v33 + 8) = a3;
    objc_storeStrong((v33 + 16), a4);
    v34 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
    v35 = *(v33 + 136);
    *(v33 + 136) = v34;

    if (v14)
    {
      v36 = v14;
    }

    else
    {
      v36 = v18;
    }

    objc_storeStrong((v33 + 24), v36);
    objc_storeStrong((v33 + 32), v18);
    objc_storeStrong((v33 + 40), 0);
    v37 = [0 ses_sha1];
    v38 = *(v33 + 48);
    *(v33 + 48) = v37;

    objc_storeStrong((v33 + 456), v19);
    v39 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v96];
    v40 = *(v33 + 80);
    *(v33 + 80) = v39;

    v41 = getPublicKeyBytes();
    v42 = *(v33 + 88);
    *(v33 + 88) = v41;

    if (*(v33 + 88))
    {
      v43 = [SEEndPointConfiguration configurationWithOpt1:*v97 opt2:*v98];
      v44 = *(v33 + 72);
      *(v33 + 72) = v43;

      if (*(v33 + 72))
      {
        v45 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v101];
        v46 = *(v33 + 472);
        *(v33 + 472) = v45;

        v87 = 0;
        if (*(&v104 + 1))
        {
          if (*(&v104 + 1) == 1 || *v104 != 2 || *(v104 + 1) >= 5u)
          {
            if (a7)
            {
              goto LABEL_53;
            }

            goto LABEL_55;
          }

          *&v104 = v104 + 2;
          *(&v104 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!a7)
            {
              goto LABEL_55;
            }

            goto LABEL_81;
          }

          v53 = v87;
        }

        else
        {
          v53 = 0;
        }

        v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v53];
        v55 = *(v33 + 120);
        *(v33 + 120) = v54;

        if (*(&v103 + 1))
        {
          if (*(&v103 + 1) == 1 || *v103 != 2 || *(v103 + 1) >= 5u)
          {
            if (a7)
            {
              goto LABEL_53;
            }

            goto LABEL_55;
          }

          *&v103 = v103 + 2;
          *(&v103 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!a7)
            {
              goto LABEL_55;
            }

            goto LABEL_81;
          }

          v56 = v87;
        }

        else
        {
          v56 = 0;
          v87 = 0;
        }

        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v56];
        v58 = *(v33 + 112);
        *(v33 + 112) = v57;

        if (*(&v105 + 1))
        {
          if (*(&v105 + 1) == 1 || *v105 != 2 || *(v105 + 1) >= 5u)
          {
            if (a7)
            {
LABEL_53:
              v78 = SESDefaultLogObject();
              v76 = *MEMORY[0x1E69E5148];
              v59 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v104];
              v60 = [v59 asHexString];
              *a7 = SESCreateAndLogError();

              v61 = v78;
LABEL_54:
            }

LABEL_55:
            v24 = 0;
LABEL_56:

            v25 = v80;
            goto LABEL_57;
          }

          *&v105 = v105 + 2;
          *(&v105 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!a7)
            {
              goto LABEL_55;
            }

LABEL_81:
            v77 = SESDefaultLogObject();
            v75 = *MEMORY[0x1E69E5148];
            v68 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v104];
            *a7 = SESCreateAndLogError();

            v61 = v77;
            goto LABEL_54;
          }

          v63 = v87;
        }

        else
        {
          v63 = 0;
          v87 = 0;
        }

        v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v63];
        v65 = *(v33 + 128);
        *(v33 + 128) = v64;

        if (*(&v102 + 1))
        {
          v81 = 0;
          v82 = &v81;
          v83 = 0x3032000000;
          v84 = __Block_byref_object_copy__1;
          v85 = __Block_byref_object_dispose__1;
          v86 = [MEMORY[0x1E695DF70] array];
          if (DERDecodeSequenceWithBlock() || v90[5])
          {
            if (a7)
            {
              v66 = SESDefaultLogObject();
              v67 = *MEMORY[0x1E69E5148];
              v74 = v90[5];
              *a7 = SESCreateAndLogError();
            }

            _Block_object_dispose(&v81, 8);
            v61 = v86;
            goto LABEL_54;
          }

          objc_storeStrong((v33 + 104), v82[5]);
          _Block_object_dispose(&v81, 8);
        }

        v69 = [v33 generateEndPointPrivacyLongTermPrivacyKey];
        v70 = v90[5];
        v90[5] = v69;

        if (!v90[5])
        {
          v24 = v33;
          goto LABEL_56;
        }

        if (!a7)
        {
          goto LABEL_55;
        }

        v49 = SESDefaultLogObject();
        v79 = *MEMORY[0x1E69E5148];
        [v90[5] code];
        v51 = SESCreateAndLogError();
      }

      else
      {
        if (!a7)
        {
          goto LABEL_55;
        }

        v49 = SESDefaultLogObject();
        v52 = *MEMORY[0x1E69E5148];
        v72 = *v97;
        v73 = *v98;
        v51 = SESCreateAndLogError();
      }
    }

    else
    {
      if (!a7)
      {
        goto LABEL_55;
      }

      v49 = SESDefaultLogObject();
      v50 = *MEMORY[0x1E69E5148];
      v51 = SESCreateAndLogError();
    }

    *a7 = v51;

    goto LABEL_55;
  }

  if (a7)
  {
    v26 = SESDefaultLogObject();
    v27 = *MEMORY[0x1E69E5148];
    *a7 = SESCreateAndLogError();
  }

  v24 = 0;
LABEL_61:

  return v24;
}

uint64_t __81__SEEndPoint_endPointWithType_appletIdentifier_identifier_certificateData_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = a2 + 8;
  v9 = getPublicKeyBytes();
  if (v9)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
    v10 = 0;
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = *MEMORY[0x1E69E5148];
    v17 = [MEMORY[0x1E695DEF0] dataWithDERItem:v8];
    v13 = SESCreateAndLogError();
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a3 = 1;
    v10 = 6;
  }

  return v10;
}

+ (id)parsePTAExtension:(__CFString *)a3 certificate:(__SecCertificate *)a4 specification:(id *)a5 output:(PTAEndPointExtensionContent *)a6
{
  if (a3 && a4 && a5 && a6)
  {
    v6 = SecCertificateCopyExtensionValue();
    if (v6 && !DERParseSequenceSpec())
    {
      v8 = 0;
    }

    else
    {
      v9 = SESDefaultLogObject();
      v10 = *MEMORY[0x1E69E5148];
      v8 = SESCreateAndLogError();
    }
  }

  else
  {
    v6 = SESDefaultLogObject();
    v7 = *MEMORY[0x1E69E5148];
    v8 = SESCreateAndLogError();
  }

  return v8;
}

+ (id)revokedEndpointWithPublicKeyIdentifier:(id)a3 appletIdentifier:(id)a4 revocationAttestation:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10 && v12)
  {
    v14 = objc_opt_new();
    objc_storeStrong((v14 + 16), a4);
    objc_storeStrong((v14 + 48), a3);
    objc_storeStrong((v14 + 400), a5);
    v15 = [@"A000000809434343444B417631" hexStringAsData];
    v16 = [v15 isEqualToData:v11];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v20 = [@"A00000085801010100000001" hexStringAsData];
      v21 = [v20 isEqualToData:v11];

      if (v21)
      {
        v17 = 3;
      }

      else
      {
        v22 = [@"A00000085802010100000001" hexStringAsData];
        v23 = [v22 isEqualToData:v11];

        if (v23)
        {
          v17 = 2;
        }

        else
        {
          v24 = [@"A000000909ACCE5501" hexStringAsData];
          v25 = [v24 isEqualToData:v11];

          if ((v25 & 1) == 0)
          {
            if (a6)
            {
              v27 = SESDefaultLogObject();
              v28 = *MEMORY[0x1E69E5148];
              *a6 = SESCreateAndLogError();
            }

            v19 = 0;
            goto LABEL_15;
          }

          v17 = 5;
        }
      }
    }

    *(v14 + 8) = v17;
    v19 = v14;
  }

  else
  {
    if (!a6)
    {
      v19 = 0;
      goto LABEL_16;
    }

    v14 = SESDefaultLogObject();
    v18 = *MEMORY[0x1E69E5148];
    SESCreateAndLogError();
    *a6 = v19 = 0;
  }

LABEL_15:

LABEL_16:

  return v19;
}

- (id)validateAuthorizedEndpointConfig:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [(SEEndPoint *)self configuration];
  v6 = [v5 authorizeEndPointWithAuthorizeAllowed];

  if (v6)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = SecCertificateCreateWithData(0, v4);
  if (v8 && (v9 = v8, v10 = SecCertificateCopyExtensionValue(), CFRelease(v9), v10))
  {
    [v10 DERItem];
    DERParseSequenceSpec();
    v13 = SESDefaultLogObject();
    v14 = *MEMORY[0x1E69E5148];
    v7 = SESCreateAndLogError();
  }

  else
  {
LABEL_8:
    v10 = SESDefaultLogObject();
    v11 = *MEMORY[0x1E69E5148];
    v7 = SESCreateAndLogError();
  }

LABEL_10:

  return v7;
}

- (void)prependCertificateChain:(id)a3
{
  v4 = a3;
  v7 = [(SEEndPoint *)self certificates];
  v5 = [v4 arrayByAddingObjectsFromArray:v7];

  certificates = self->_certificates;
  self->_certificates = v5;
}

- (id)configurePrivateData:(id)a3 confidentialData:(id)a4 contactlessPersistentVisibility:(id)a5 wiredPersistentVisibility:(id)a6 nfcExpressOnlyInLPM:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    if ([v12 length] != 3)
    {
      v24 = SESDefaultLogObject();
      v28 = *MEMORY[0x1E69E5148];
      [v12 length];
LABEL_13:
      v27 = SESCreateAndLogError();
      goto LABEL_21;
    }

    v47 = v14;
    v17 = [v12 bytes];
    v18 = *v17;
    v19 = __rev16(v18);
    v20 = bswap32(v18);
    v21 = *(v17 + 2);
    v22 = [(SEEndPoint *)self privateMailBoxSize];
    v23 = [v22 unsignedIntValue];

    if (v23 < v21 + HIWORD(v20))
    {
      v24 = SESDefaultLogObject();
      v25 = *MEMORY[0x1E69E5148];
      v26 = [(SEEndPoint *)self privateMailBoxSize];
      [v26 unsignedIntValue];
      v27 = SESCreateAndLogError();

LABEL_11:
      v14 = v47;
LABEL_21:

      goto LABEL_22;
    }

    v29 = [(SEEndPoint *)self configuration];
    [v29 setOffsetPrivateMailBox:v19];

    v30 = [(SEEndPoint *)self configuration];
    [v30 setLengthPrivateMailBox:v21];

    v14 = v47;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  if ([v13 length] != 3)
  {
    v24 = SESDefaultLogObject();
    v40 = *MEMORY[0x1E69E5148];
    [v12 length];
    goto LABEL_13;
  }

  v47 = v14;
  v31 = [v13 bytes];
  v32 = *v31;
  v33 = __rev16(v32);
  v34 = bswap32(v32);
  v35 = *(v31 + 2);
  v36 = [(SEEndPoint *)self confidentialMailBoxSize];
  v37 = [v36 unsignedIntegerValue];

  if (v37 < v35 + HIWORD(v34))
  {
    v24 = SESDefaultLogObject();
    v38 = *MEMORY[0x1E69E5148];
    v39 = [(SEEndPoint *)self privateMailBoxSize];
    [v39 unsignedIntValue];
    v27 = SESCreateAndLogError();

    goto LABEL_11;
  }

  v41 = [(SEEndPoint *)self configuration];
  [v41 setOffsetConfidentialMailBox:v33];

  v42 = [(SEEndPoint *)self configuration];
  [v42 setLengthConfidentialMailBox:v35];

  v14 = v47;
LABEL_15:
  if (v14)
  {
    v43 = [(SEEndPoint *)self configuration];
    [v43 setEnabledOnContactless:{objc_msgSend(v14, "BOOLValue")}];
  }

  if (v15)
  {
    v44 = [(SEEndPoint *)self configuration];
    [v44 setEnabledOnWire:{objc_msgSend(v15, "BOOLValue")}];
  }

  if (v16)
  {
    v45 = [v16 BOOLValue];
    v24 = [(SEEndPoint *)self configuration];
    [v24 setNfcExpressOnlyInLPM:v45];
    v27 = 0;
    goto LABEL_21;
  }

  v27 = 0;
LABEL_22:

  return v27;
}

- (id)generateEndPointPrivacyLongTermPrivacyKey
{
  v2 = self;
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = [(SEEndPoint *)self privacyKeyIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    goto LABEL_16;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [v2 identifier];
  v7 = [v5 stringWithFormat:@"%@::LTPrivacyKey", v6];

  v8 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697ABE0], 0, 0);
  SecAccessControlSetConstraints();
  v9 = *MEMORY[0x1E697AD78];
  v10 = *MEMORY[0x1E697AD50];
  v31[0] = *MEMORY[0x1E697AD68];
  v31[1] = v10;
  v32[0] = v9;
  v32[1] = &unk_1F4762E78;
  v31[2] = *MEMORY[0x1E697B2D0];
  v11 = *MEMORY[0x1E697AD18];
  v29[0] = *MEMORY[0x1E697B390];
  v29[1] = v11;
  v30[0] = MEMORY[0x1E695E118];
  v30[1] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697ABC8];
  v29[2] = *MEMORY[0x1E697AC48];
  v29[3] = v12;
  v30[2] = v7;
  v30[3] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v32[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  error = 0;
  v15 = SecKeyCreateRandomKey(v14, &error);
  v16 = v15;
  v17 = error;
  if (error || !v15)
  {
    v19 = SESDefaultLogObject();
    v24 = *MEMORY[0x1E69E5148];
    v2 = SESCreateAndLogError();
    v21 = 0;
  }

  else
  {
    objc_storeStrong((v2 + 464), v7);
    v17 = getSecKeyPublicBytes();
    v18 = 0;
    v19 = v18;
    v20 = v17 || v18 == 0;
    v21 = !v20;
    if (v20)
    {
      v23 = SESDefaultLogObject();
      v25 = *MEMORY[0x1E69E5148];
      v2 = SESCreateAndLogError();
    }

    else
    {
      objc_storeStrong((v2 + 56), 0);
      v22 = [v19 ses_sha1];
      v23 = *(v2 + 64);
      *(v2 + 64) = v22;
    }
  }

  if (v21)
  {
LABEL_16:
    v2 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)deleteEndPointLongTermPrivacyKey
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SEEndPoint *)self privacyKeyIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(SEEndPoint *)self privacyKeyIdentifier];
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "Deleting long term privacy key %@", buf, 0xCu);
    }

    v7 = *MEMORY[0x1E697AFF8];
    v17[0] = *MEMORY[0x1E697B020];
    v8 = *MEMORY[0x1E697AC48];
    v16[0] = v7;
    v16[1] = v8;
    v9 = [(SEEndPoint *)self privacyKeyIdentifier];
    v16[2] = *MEMORY[0x1E697B390];
    v17[1] = v9;
    v17[2] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    if (SecItemDelete(v10))
    {
      privacyKeyIdentifier = SESDefaultLogObject();
      v12 = *MEMORY[0x1E69E5148];
      v13 = SESCreateAndLogError();
    }

    else
    {
      v13 = 0;
      privacyKeyIdentifier = self->_privacyKeyIdentifier;
      self->_privacyKeyIdentifier = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)getEndpointUser
{
  if ([(SEEndPoint *)self endPointType]!= 1)
  {
    return 2;
  }

  v3 = [(SEEndPoint *)self identifier];
  v4 = [v3 componentsSeparatedByString:@"."];

  if ([v4 count] >= 2)
  {
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [v6 isEqualToString:@"OWNR"];

    if (v7)
    {
      v5 = 0;
    }

    else
    {
      v8 = [v4 objectAtIndexedSubscript:1];
      v9 = [v8 isEqualToString:@"FRND"];

      if (v9)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (id)description
{
  v194 = *MEMORY[0x1E69E9840];
  v186 = 0;
  v187 = &v186;
  v188 = 0x3032000000;
  v189 = __Block_byref_object_copy__1;
  v190 = __Block_byref_object_dispose__1;
  v191 = [MEMORY[0x1E696AD60] string];
  v3 = v187[5];
  v4 = [(SEEndPoint *)self identifier];
  [v3 appendFormat:@"Identifier : %@ : {\n", v4];

  v5 = v187[5];
  v6 = [(SEEndPoint *)self appletIdentifier];
  v7 = [v6 asHexString];
  [v5 appendFormat:@"\tAppletIdentifier : %@\n", v7];

  [v187[5] appendFormat:@"\tsharingRecords : {\n"];
  sharingRecords = self->_sharingRecords;
  v185[0] = MEMORY[0x1E69E9820];
  v185[1] = 3221225472;
  v185[2] = __25__SEEndPoint_description__block_invoke;
  v185[3] = &unk_1E82D0FA0;
  v185[4] = &v186;
  [(NSArray *)sharingRecords enumerateObjectsUsingBlock:v185];
  [v187[5] appendFormat:@"\t}\n"];
  v9 = v187[5];
  v10 = [(SEEndPoint *)self revocationAttestation];
  v11 = @"REVOKED";
  if (!v10)
  {
    v11 = @"ACTIVE";
  }

  [v9 appendFormat:@"\tstate : %@\n", v11];

  v12 = v187[5];
  v13 = [(SEEndPoint *)self issuerIdentifier];
  [v12 appendFormat:@"\tissuerIdentifier : %@\n", v13];

  v14 = v187[5];
  v15 = [(SEEndPoint *)self subjectIdentifier];
  [v14 appendFormat:@"\tsubjectIdentifier : %@\n", v15];

  v16 = v187[5];
  v17 = [(SEEndPoint *)self publicKey];
  v18 = [v17 asHexString];
  [v16 appendFormat:@"\tpublicKey : %@\n", v18];

  v19 = v187[5];
  v20 = [(SEEndPoint *)self publicKeyIdentifier];
  v21 = [v20 asHexString];
  [v19 appendFormat:@"\tpublicKeyIdentifier : %@\n", v21];

  v22 = v187[5];
  v23 = [(SEEndPoint *)self privacyPublicKey];
  v24 = [v23 asHexString];
  [v22 appendFormat:@"\tprivacyPublicKey : %@\n", v24];

  v25 = v187[5];
  v26 = [(SEEndPoint *)self privacyPublicKeyIdentifier];
  v27 = [v26 asHexString];
  [v25 appendFormat:@"\tprivacyPublicKeyIdentifier : %@\n", v27];

  v28 = v187[5];
  v29 = [(SEEndPoint *)self configuration];
  [v28 appendFormat:@"\tconfiguration : %@, \n", v29];

  v30 = v187[5];
  v31 = [(SEEndPoint *)self readerIdentifier];
  v32 = [v31 asHexString];
  [v30 appendFormat:@"\treaderIdentifier : %@, \n", v32];

  v33 = v187[5];
  v34 = [(SEEndPoint *)self readerPublicKey];
  v35 = [v34 asHexString];
  [v33 appendFormat:@"\treaderPublicKey : %@, \n", v35];

  v36 = v187[5];
  v37 = [(SEEndPoint *)self keyIdentifier];
  v38 = [v37 asHexString];
  [v36 appendFormat:@"\tkeyIdentifier : %@, \n", v38];

  v39 = v187[5];
  v40 = [(SEEndPoint *)self confidentialMailBoxSize];
  [v39 appendFormat:@"\tconfidentialMailBoxSize : %@, \n", v40];

  v41 = v187[5];
  v42 = [(SEEndPoint *)self privateMailBoxSize];
  [v41 appendFormat:@"\tprivateMailBoxSize : %@, \n", v42];

  v43 = v187[5];
  v44 = [(SEEndPoint *)self counter];
  [v43 appendFormat:@"\tcounter : %@, \n", v44];

  v45 = v187[5];
  v46 = [(SEEndPoint *)self authorizedKeys];
  [v45 appendFormat:@"\tauthorizedKeys (%lu) : {\n", objc_msgSend(v46, "count")];

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v47 = [(SEEndPoint *)self authorizedKeys];
  v48 = [v47 countByEnumeratingWithState:&v181 objects:v193 count:16];
  if (v48)
  {
    v49 = *v182;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v182 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = v187[5];
        v52 = [*(*(&v181 + 1) + 8 * i) asHexString];
        [v51 appendFormat:@"\t\t%@, \n", v52];
      }

      v48 = [v47 countByEnumeratingWithState:&v181 objects:v193 count:16];
    }

    while (v48);
  }

  [v187[5] appendFormat:@"\t}\n"];
  v53 = v187[5];
  v54 = [(SEEndPoint *)self friendlyName];
  [v53 appendFormat:@"\tfriendlyName : %@, \n", v54];

  v55 = [(SEEndPoint *)self keyRole];
  LOBYTE(v54) = v55 == 0;

  if ((v54 & 1) == 0)
  {
    v56 = v187[5];
    v57 = [(SEEndPoint *)self keyRole];
    [v56 appendFormat:@"\tkeyRole : 0x%04X, \n", objc_msgSend(v57, "unsignedShortValue")];
  }

  v58 = v187[5];
  v59 = [(SEEndPoint *)self readerInfo];
  [v58 appendFormat:@"\treaderInfo : %@, \n", v59];

  v60 = v187[5];
  v61 = [(SEEndPoint *)self invitationIdentifier];
  [v60 appendFormat:@"\tinvitationIdentifier : %@, \n", v61];

  v62 = v187[5];
  v63 = [(SEEndPoint *)self sharingSessionUUID];
  [v62 appendFormat:@"\tsharingSessionUUID : %@, \n", v63];

  v64 = v187[5];
  v65 = [(SEEndPoint *)self ownerIDSIdentifier];
  [v64 appendFormat:@"\townerIDSIdentifier : %@, \n", v65];

  v66 = v187[5];
  v67 = [(SEEndPoint *)self mailboxMapping];
  v68 = [v67 asHexString];
  [v66 appendFormat:@"\tmailboxMapping : %@, \n", v68];

  v69 = v187[5];
  v70 = [(SEEndPoint *)self trackingRequest];
  v71 = [v70 asHexString];
  [v69 appendFormat:@"\ttrackingRequest : %@, \n", v71];

  v72 = v187[5];
  v73 = [(SEEndPoint *)self trackingReceipt];
  v74 = [v73 asHexString];
  [v72 appendFormat:@"\ttrackingReceipt : %@, \n", v74];

  v75 = v187[5];
  v76 = [(SEEndPoint *)self deviceConfiguration];
  v77 = [v76 asHexString];
  [v75 appendFormat:@"\tdeviceConfiguration : %@, \n", v77];

  v78 = v187[5];
  v79 = [(SEEndPoint *)self sharingAttestationData];
  v80 = [v79 asHexString];
  [v78 appendFormat:@"\tsharingAttestationData : %@\n", v80];

  v81 = v187[5];
  v82 = [(SEEndPoint *)self ownerEphemeralKey];
  v83 = [v82 asHexString];
  [v81 appendFormat:@"\townerEphemeralKey : %@\n", v83];

  v84 = v187[5];
  v85 = [(SEEndPoint *)self additionalAttestationsDict];
  [v84 appendFormat:@"\tadditionalAttestationsDict : %lu\n", objc_msgSend(v85, "count")];

  v86 = v187[5];
  v87 = [(SEEndPoint *)self sharingEncryptedData];
  v88 = [v87 asHexString];
  [v86 appendFormat:@"\tsharingEncryptedData : %@\n", v88];

  v89 = v187[5];
  v90 = [(SEEndPoint *)self revocationAttestation];
  v91 = [v90 asHexString];
  [v89 appendFormat:@"\trevocationAttestation : %@\n", v91];

  v92 = v187[5];
  v93 = [(SEEndPoint *)self terminatedByTaskID];
  [v92 appendFormat:@"\tterminatedByTaskID : %@\n", v93];

  [v187[5] appendFormat:@"\tcarOEMProprietaryData : {\n"];
  v94 = [(SEEndPoint *)self carOEMProprietaryData];

  if (v94)
  {
    v95 = v187[5];
    v96 = [(SEEndPoint *)self carOEMProprietaryData];
    v97 = [v96 version];
    [v95 appendFormat:@"\t\tversion : %@, \n", v97];

    v98 = v187[5];
    v99 = [(SEEndPoint *)self carOEMProprietaryData];
    v100 = [v99 cipherText];
    v101 = [v100 asHexString];
    [v98 appendFormat:@"\t\tcipherText : %@, \n", v101];

    v102 = v187[5];
    v103 = [(SEEndPoint *)self carOEMProprietaryData];
    v104 = [v103 ephemeralPublicKeydata];
    v105 = [v104 asHexString];
    [v102 appendFormat:@"\t\tephemeralPublicKeydata : %@, \n", v105];

    v106 = v187[5];
    v107 = [(SEEndPoint *)self carOEMProprietaryData];
    v108 = [v107 receiverPublicKeyHash];
    v109 = [v108 asHexString];
    [v106 appendFormat:@"\t\treceiverPublicKeyHash : %@, \n", v109];
  }

  [v187[5] appendFormat:@"\t}, \n"];
  v110 = v187[5];
  v111 = [(SEEndPoint *)self environment];
  [v110 appendFormat:@"\tenvironment : %@, \n", v111];

  v112 = v187[5];
  v113 = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
  [v112 appendFormat:@"\tsharingTokenAvailabilityBitmap : %@, \n", v113];

  v114 = v187[5];
  v115 = [(SEEndPoint *)self homeUUIDString];
  [v114 appendFormat:@"\thomeUUID : %@, \n", v115];

  v116 = v187[5];
  v117 = [(SEEndPoint *)self certificates];
  [v116 appendFormat:@"\tcertificates (%lu) : {\n", objc_msgSend(v117, "count")];

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v118 = [(SEEndPoint *)self certificates];
  v119 = [v118 countByEnumeratingWithState:&v177 objects:v192 count:16];
  if (v119)
  {
    v120 = *v178;
    do
    {
      for (j = 0; j != v119; ++j)
      {
        if (*v178 != v120)
        {
          objc_enumerationMutation(v118);
        }

        v122 = v187[5];
        v123 = [*(*(&v177 + 1) + 8 * j) asHexString];
        [v122 appendFormat:@"\t\t%@, \n", v123];
      }

      v119 = [v118 countByEnumeratingWithState:&v177 objects:v192 count:16];
    }

    while (v119);
  }

  [v187[5] appendFormat:@"\t}\n}\n"];
  v124 = [(SEEndPoint *)self shareInitiatorCertificateChainData];

  if (v124)
  {
    v125 = v187[5];
    v126 = [(SEEndPoint *)self shareInitiatorCertificateChainData];
    v127 = [v126 asHexString];
    [v125 appendFormat:@"\tshareInitiatorCertificateChainData : %@\n", v127];
  }

  v128 = v187[5];
  v129 = [(SEEndPoint *)self readerLongTermPublicKeyCertificate];
  v130 = [v129 asHexString];
  [v128 appendFormat:@"\treaderLongTermPublicKeyCertificate : %@, \n", v130];

  v131 = v187[5];
  v132 = [(SEEndPoint *)self bleUUID];
  [v131 appendFormat:@"\tbleUUID : %@\n", v132];

  v133 = v187[5];
  v134 = [(SEEndPoint *)self bleIntroKey];
  v135 = [v134 asHexString];
  [v133 appendFormat:@"\tbleIntroKey : %@\n", v135];

  v136 = v187[5];
  v137 = [(SEEndPoint *)self bleOOBKey];
  v138 = [v137 asHexString];
  [v136 appendFormat:@"\tbleOOBKey : %@\n", v138];

  v139 = v187[5];
  v140 = [(SEEndPoint *)self bleOOBMasterKey];
  v141 = [v140 asHexString];
  [v139 appendFormat:@"\tbleOOBMasterKey : %@\n", v141];

  v142 = v187[5];
  v143 = [(SEEndPoint *)self bleDCKIdentifier];
  v144 = [v143 asHexString];
  [v142 appendFormat:@"\tbleDCKIdentifier : %@\n", v144];

  v145 = v187[5];
  v146 = [(SEEndPoint *)self bleAddress];
  v147 = [v146 asHexString];
  [v145 appendFormat:@"\tbleAddress : %@\n", v147];

  v148 = v187[5];
  v149 = [(SEEndPoint *)self blePairingRequest];
  [v148 appendFormat:@"\tblePairingRequest : %@\n", v149];

  v150 = v187[5];
  v151 = [(SEEndPoint *)self supportedRKEFunctions];
  [v150 appendFormat:@"\tsupportedRKEFunctions : %@\n", v151];

  v152 = v187[5];
  v153 = [(SEEndPoint *)self longTermSharedSecret];
  [v152 appendFormat:@"\tlongTermSharedSecret length : %lu\n", objc_msgSend(v153, "length")];

  v154 = v187[5];
  v155 = [(SEEndPoint *)self readerConfigID];
  v156 = [v155 asHexString];
  [v154 appendFormat:@"\treaderConfigID : %@, \n", v156];

  v157 = v187[5];
  v158 = [(SEEndPoint *)self hupData];
  v159 = [v158 asHexString];
  [v157 appendFormat:@"\thupData : %@, \n", v159];

  v160 = v187[5];
  v161 = [(SEEndPoint *)self hupDone];
  [v160 appendFormat:@"\thupDone : %d, \n", objc_msgSend(v161, "BOOLValue")];

  v162 = v187[5];
  v163 = [(SEEndPoint *)self vehicleSupportedVersionsData];
  v164 = [v163 asHexString];
  [v162 appendFormat:@"\tvehicleSupportedVersionsData : %@, \n", v164];

  v165 = v187[5];
  v166 = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
  v167 = [v166 asHexString];
  [v165 appendFormat:@"\tmailboxSizesPlusAdditionalData : %@, \n", v167];

  v168 = v187[5];
  v169 = [(SEEndPoint *)self slotIdentifier];
  [v168 appendFormat:@"\tslotIdentifier length : %ld, \n", objc_msgSend(v169, "length")];

  v170 = v187[5];
  v171 = [(SEEndPoint *)self upgradeEndpointJSONData];
  [v170 appendFormat:@"\tupgradeEndpointJSONData length : %ld, \n", objc_msgSend(v171, "length")];

  v172 = v187[5];
  v173 = [(SEEndPoint *)self anonymizedDsid];
  [v172 appendFormat:@"\tanonymizedDsid length : %ld, \n", objc_msgSend(v173, "length")];

  v174 = v187[5];
  _Block_object_dispose(&v186, 8);

  v175 = *MEMORY[0x1E69E9840];

  return v174;
}

void __25__SEEndPoint_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [a2 asHexString];
  [v4 appendFormat:@"\t%lu : %@, \n", a3, v5];
}

- (id)dumpState
{
  v3 = objc_opt_new();
  v4 = [(SEEndPoint *)self identifier];

  if (v4)
  {
    v5 = [(SEEndPoint *)self identifier];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  v6 = [(SEEndPoint *)self appletIdentifier];

  if (v6)
  {
    v7 = [(SEEndPoint *)self appletIdentifier];
    v8 = [v7 asHexString];
    [v3 setObject:v8 forKeyedSubscript:@"appletIdentifier"];
  }

  v9 = [(SEEndPoint *)self subjectIdentifier];

  if (v9)
  {
    v10 = [(SEEndPoint *)self subjectIdentifier];
    [v3 setObject:v10 forKeyedSubscript:@"subjectIdentifier"];
  }

  v11 = [(SEEndPoint *)self issuerIdentifier];

  if (v11)
  {
    v12 = [(SEEndPoint *)self issuerIdentifier];
    [v3 setObject:v12 forKeyedSubscript:@"issuerIdentifier"];
  }

  v13 = [(SEEndPoint *)self publicKey];

  if (v13)
  {
    v14 = [(SEEndPoint *)self publicKey];
    v15 = [v14 asHexString];
    [v3 setObject:v15 forKeyedSubscript:@"publicKey"];
  }

  v16 = [(SEEndPoint *)self publicKeyIdentifier];

  if (v16)
  {
    v17 = [(SEEndPoint *)self publicKeyIdentifier];
    v18 = [v17 asHexString];
    [v3 setObject:v18 forKeyedSubscript:@"publicKeyIdentifier"];
  }

  v19 = [(SEEndPoint *)self readerIdentifier];

  if (v19)
  {
    v20 = [(SEEndPoint *)self readerIdentifier];
    v21 = [v20 asHexString];
    [v3 setObject:v21 forKeyedSubscript:@"readerIdentifier"];
  }

  v22 = [(SEEndPoint *)self readerPublicKey];

  if (v22)
  {
    v23 = [(SEEndPoint *)self readerPublicKey];
    v24 = [v23 asHexString];
    [v3 setObject:v24 forKeyedSubscript:@"readerPublicKey"];
  }

  v25 = [(SEEndPoint *)self readerInfo];

  if (v25)
  {
    v26 = [(SEEndPoint *)self readerInfo];
    [v3 setObject:v26 forKeyedSubscript:@"readerInfo"];
  }

  v27 = objc_opt_new();
  v28 = [(SEEndPoint *)self authorizedKeys];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __23__SEEndPoint_dumpState__block_invoke;
  v85[3] = &unk_1E82D0FC8;
  v29 = v27;
  v86 = v29;
  [v28 enumerateObjectsUsingBlock:v85];

  [v3 setObject:v29 forKeyedSubscript:@"authorizedKeys"];
  v30 = [(SEEndPoint *)self friendlyName];

  if (v30)
  {
    v31 = [(SEEndPoint *)self friendlyName];
    [v3 setObject:v31 forKeyedSubscript:@"friendlyName"];
  }

  v32 = [(SEEndPoint *)self invitationIdentifier];

  if (v32)
  {
    v33 = [(SEEndPoint *)self invitationIdentifier];
    [v3 setObject:v33 forKeyedSubscript:@"invitationIdentifier"];
  }

  v34 = [(SEEndPoint *)self sharingSessionUUID];

  if (v34)
  {
    v35 = [(SEEndPoint *)self sharingSessionUUID];
    [v3 setObject:v35 forKeyedSubscript:@"sharingSessionUUID"];
  }

  v36 = [(SEEndPoint *)self ownerIDSIdentifier];

  if (v36)
  {
    v37 = [(SEEndPoint *)self ownerIDSIdentifier];
    [v3 setObject:v37 forKeyedSubscript:@"ownerIDSIdentifier"];
  }

  v38 = [(SEEndPoint *)self trackingRequest];

  if (v38)
  {
    v39 = [(SEEndPoint *)self trackingRequest];
    v40 = [v39 asHexString];
    [v3 setObject:v40 forKeyedSubscript:@"trackingRequest"];
  }

  v41 = [(SEEndPoint *)self trackingReceipt];

  if (v41)
  {
    v42 = [(SEEndPoint *)self trackingReceipt];
    v43 = [v42 asHexString];
    [v3 setObject:v43 forKeyedSubscript:@"trackingReceipt"];
  }

  v44 = [(SEEndPoint *)self privacyPublicKey];

  if (v44)
  {
    v45 = [(SEEndPoint *)self privacyPublicKey];
    v46 = [v45 asHexString];
    [v3 setObject:v46 forKeyedSubscript:@"privacyPublicKey"];
  }

  v47 = [(SEEndPoint *)self privacyKeyIdentifier];

  if (v47)
  {
    v48 = [(SEEndPoint *)self privacyKeyIdentifier];
    [v3 setObject:v48 forKeyedSubscript:@"privacyKeyIdentifier"];
  }

  v49 = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];

  if (v49)
  {
    v50 = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
    [v3 setObject:v50 forKeyedSubscript:@"sharingTokenAvailabilityBitmap"];
  }

  v51 = [(SEEndPoint *)self bleUUID];

  if (v51)
  {
    v52 = [(SEEndPoint *)self bleUUID];
    [v3 setObject:v52 forKeyedSubscript:@"bleUUID"];
  }

  v53 = [(SEEndPoint *)self readerConfigID];

  if (v53)
  {
    v54 = [(SEEndPoint *)self readerConfigID];
    v55 = [v54 asHexString];
    [v3 setObject:v55 forKeyedSubscript:@"readerConfigID"];
  }

  v56 = [(SEEndPoint *)self hupData];

  if (v56)
  {
    v57 = [(SEEndPoint *)self hupData];
    v58 = [v57 asHexString];
    [v3 setObject:v58 forKeyedSubscript:@"hupData"];
  }

  v59 = [(SEEndPoint *)self hupDone];

  if (v59)
  {
    v60 = [(SEEndPoint *)self hupDone];
    [v3 setObject:v60 forKeyedSubscript:@"hupDone"];
  }

  v61 = [(SEEndPoint *)self vehicleSupportedVersionsData];

  if (v61)
  {
    v62 = [(SEEndPoint *)self vehicleSupportedVersionsData];
    v63 = [v62 asHexString];
    [v3 setObject:v63 forKeyedSubscript:@"vehicleSupportedVersionsData"];
  }

  v64 = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];

  if (v64)
  {
    v65 = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
    v66 = [v65 asHexString];
    [v3 setObject:v66 forKeyedSubscript:@"mailboxSizesPlusAdditionalData"];
  }

  v67 = [(SEEndPoint *)self sharingRecords];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __23__SEEndPoint_dumpState__block_invoke_2;
  v83[3] = &unk_1E82D0FC8;
  v68 = v3;
  v84 = v68;
  [v67 enumerateObjectsUsingBlock:v83];

  v69 = MEMORY[0x1E696AEC0];
  v70 = [(SEEndPoint *)self configuration];
  v71 = [v70 opt1];
  v72 = [(SEEndPoint *)self configuration];
  v73 = [v72 opt2];
  v74 = [(SEEndPoint *)self configuration];
  v75 = [v69 stringWithFormat:@"Opt1 0x%X Opt2 0x%X OptA 0x%X", v71, v73, objc_msgSend(v74, "optA")];
  [v68 setObject:v75 forKeyedSubscript:@"configuration"];

  v76 = [(SEEndPoint *)self revocationAttestation];
  if (v76)
  {
    v77 = @"REVOKED";
  }

  else
  {
    v77 = @"ACTIVE";
  }

  [v68 setObject:v77 forKeyedSubscript:@"lifecycle"];

  v78 = [(SEEndPoint *)self terminatedByTaskID];

  if (v78)
  {
    v79 = [(SEEndPoint *)self terminatedByTaskID];
    [v68 setObject:v79 forKeyedSubscript:@"terminatedByTaskID"];
  }

  v80 = v84;
  v81 = v68;

  return v68;
}

void __23__SEEndPoint_dumpState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 asHexString];
  [v2 addObject:v3];
}

void __23__SEEndPoint_dumpState__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 asHexString];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sharingrecord-%u", a3];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SEEndPoint endPointType](self forKey:{"endPointType"), @"endPointType"}];
  v5 = [(SEEndPoint *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SEEndPoint *)self sharingRecords];
  [v4 encodeObject:v6 forKey:@"sharingRecords"];

  v7 = [(SEEndPoint *)self issuerIdentifier];
  [v4 encodeObject:v7 forKey:@"issuerIdentifier"];

  v8 = [(SEEndPoint *)self subjectIdentifier];
  [v4 encodeObject:v8 forKey:@"subjectIdentifier"];

  v9 = [(SEEndPoint *)self publicKey];
  [v4 encodeObject:v9 forKey:@"publicKey"];

  v10 = [(SEEndPoint *)self publicKeyIdentifier];
  [v4 encodeObject:v10 forKey:@"publicKeyIdentifier"];

  v11 = [(SEEndPoint *)self privacyPublicKey];
  [v4 encodeObject:v11 forKey:@"privacyPublicKey"];

  v12 = [(SEEndPoint *)self privacyPublicKeyIdentifier];
  [v4 encodeObject:v12 forKey:@"privacyPublicKeyIdentifier"];

  v13 = [(SEEndPoint *)self configuration];
  [v4 encodeObject:v13 forKey:@"configuration"];

  v14 = [(SEEndPoint *)self readerIdentifier];
  [v4 encodeObject:v14 forKey:@"readerIdentifier"];

  v15 = [(SEEndPoint *)self readerPublicKey];
  [v4 encodeObject:v15 forKey:@"readerPublicKey"];

  v16 = [(SEEndPoint *)self keyIdentifier];
  [v4 encodeObject:v16 forKey:@"keyIdentifier"];

  v17 = [(SEEndPoint *)self invitationIdentifier];
  [v4 encodeObject:v17 forKey:@"invitationIdentifier"];

  v18 = [(SEEndPoint *)self certificates];
  [v4 encodeObject:v18 forKey:@"certificates"];

  v19 = [(SEEndPoint *)self shareInitiatorCertificateChainData];
  [v4 encodeObject:v19 forKey:@"shareInitiatorCertificateChainData"];

  v20 = [(SEEndPoint *)self revocationAttestation];
  [v4 encodeObject:v20 forKey:@"revocationAttestation"];

  v21 = [(SEEndPoint *)self authorizedKeys];
  [v4 encodeObject:v21 forKey:@"authorizedKeys"];

  v22 = [(SEEndPoint *)self confidentialMailBoxSize];
  [v4 encodeObject:v22 forKey:@"confidentialMailBoxSize"];

  v23 = [(SEEndPoint *)self privateMailBoxSize];
  [v4 encodeObject:v23 forKey:@"privateMailBoxSize"];

  v24 = [(SEEndPoint *)self counter];
  [v4 encodeObject:v24 forKey:@"counter"];

  v25 = [(SEEndPoint *)self privacyKeyIdentifier];
  [v4 encodeObject:v25 forKey:@"privacyKeyIdentifier"];

  v26 = [(SEEndPoint *)self friendlyName];
  [v4 encodeObject:v26 forKey:@"friendlyName"];

  v27 = [(SEEndPoint *)self keyRole];
  [v4 encodeObject:v27 forKey:@"keyRole"];

  v28 = [(SEEndPoint *)self readerInfo];
  [v4 encodeObject:v28 forKey:@"readerInfo"];

  v29 = [(SEEndPoint *)self mailboxMapping];
  [v4 encodeObject:v29 forKey:@"mailboxMapping"];

  v30 = [(SEEndPoint *)self trackingRequest];
  [v4 encodeObject:v30 forKey:@"trackingRequest"];

  v31 = [(SEEndPoint *)self trackingReceipt];
  [v4 encodeObject:v31 forKey:@"trackingReceipt"];

  v32 = [(SEEndPoint *)self deviceConfiguration];
  [v4 encodeObject:v32 forKey:@"deviceConfiguration"];

  v33 = [(SEEndPoint *)self sharingAttestationData];
  [v4 encodeObject:v33 forKey:@"sharingAttestationData"];

  v34 = [(SEEndPoint *)self ownerEphemeralKey];
  [v4 encodeObject:v34 forKey:@"ownerEphemeralKey"];

  v35 = [(SEEndPoint *)self sharingEncryptedData];
  [v4 encodeObject:v35 forKey:@"sharingEncryptedData"];

  v36 = [(SEEndPoint *)self additionalAttestationsDict];
  [v4 encodeObject:v36 forKey:@"additionalAttestationsDict"];

  v37 = [(SEEndPoint *)self environment];
  [v4 encodeObject:v37 forKey:@"environment"];

  v38 = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
  [v4 encodeObject:v38 forKey:@"sharingTokenAvailabilityBitmap"];

  v39 = [(SEEndPoint *)self bleUUID];
  [v4 encodeObject:v39 forKey:@"bleUUID"];

  v40 = [(SEEndPoint *)self readerLongTermPublicKeyCertificate];
  [v4 encodeObject:v40 forKey:@"readerLongTermPublicKeyCertificate"];

  v41 = [(SEEndPoint *)self carOEMProprietaryData];
  [v4 encodeObject:v41 forKey:@"carOEMProprietaryData"];

  v42 = [(SEEndPoint *)self bleIntroKey];
  [v4 encodeObject:v42 forKey:@"bleIntroKey"];

  v43 = [(SEEndPoint *)self bleOOBKey];
  [v4 encodeObject:v43 forKey:@"bleOOBKey"];

  v44 = [(SEEndPoint *)self bleOOBMasterKey];
  [v4 encodeObject:v44 forKey:@"bleOOBMasterKey"];

  v45 = [(SEEndPoint *)self bleDCKIdentifier];
  [v4 encodeObject:v45 forKey:@"bleDCKIdentifier"];

  v46 = [(SEEndPoint *)self bleAddress];
  [v4 encodeObject:v46 forKey:@"bleAddress"];

  v47 = [(SEEndPoint *)self blePairingRequest];
  [v4 encodeObject:v47 forKey:@"blePairingRequest"];

  v48 = [(SEEndPoint *)self supportedRKEFunctions];
  [v4 encodeObject:v48 forKey:@"supportedRKEFunctions"];

  v49 = [(SEEndPoint *)self appletIdentifier];
  [v4 encodeObject:v49 forKey:@"appletIdentifier"];

  v50 = [(SEEndPoint *)self terminatedByTaskID];
  [v4 encodeObject:v50 forKey:@"terminatedByTaskID"];

  v51 = [(SEEndPoint *)self longTermSharedSecret];
  [v4 encodeObject:v51 forKey:@"longTermSharedSecret"];

  v52 = [(SEEndPoint *)self ownerIDSIdentifier];
  [v4 encodeObject:v52 forKey:@"ownerIDSIdentifier"];

  v53 = [(SEEndPoint *)self sharingSessionUUID];
  [v4 encodeObject:v53 forKey:@"sharingSessionUUID"];

  v54 = [(SEEndPoint *)self readerConfigID];
  [v4 encodeObject:v54 forKey:@"readerConfigID"];

  v55 = [(SEEndPoint *)self hupData];
  [v4 encodeObject:v55 forKey:@"hupData"];

  v56 = [(SEEndPoint *)self hupDone];
  [v4 encodeObject:v56 forKey:@"hupDone"];

  v57 = [(SEEndPoint *)self vehicleSupportedVersionsData];
  [v4 encodeObject:v57 forKey:@"vehicleSupportedVersionsData"];

  v58 = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
  [v4 encodeObject:v58 forKey:@"mailboxSizesPlusAdditionalData"];

  v59 = [(SEEndPoint *)self slotIdentifier];
  [v4 encodeObject:v59 forKey:@"slotIdentifier"];

  v60 = [(SEEndPoint *)self homeUUIDString];
  [v4 encodeObject:v60 forKey:@"homeUUIDString"];

  v61 = [(SEEndPoint *)self upgradeEndpointJSONData];
  [v4 encodeObject:v61 forKey:@"upgradeEndpointJSONData"];

  v62 = [(SEEndPoint *)self anonymizedDsid];
  [v4 encodeObject:v62 forKey:@"anonymizedDsid"];
}

- (SEEndPoint)initWithCoder:(id)a3
{
  v140 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v137.receiver = self;
  v137.super_class = SEEndPoint;
  v13 = [(SEEndPoint *)&v137 init];
  if (v13)
  {
    v13->_endPointType = [v4 decodeIntForKey:@"endPointType"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v4 decodeObjectOfClasses:v8 forKey:@"sharingRecords"];
    sharingRecords = v13->_sharingRecords;
    v13->_sharingRecords = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v13->_issuerIdentifier;
    v13->_issuerIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    subjectIdentifier = v13->_subjectIdentifier;
    v13->_subjectIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v13->_publicKey;
    v13->_publicKey = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v13->_publicKeyIdentifier;
    v13->_publicKeyIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPublicKey"];
    privacyPublicKey = v13->_privacyPublicKey;
    v13->_privacyPublicKey = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPublicKeyIdentifier"];
    privacyPublicKeyIdentifier = v13->_privacyPublicKeyIdentifier;
    v13->_privacyPublicKeyIdentifier = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v13->_configuration;
    v13->_configuration = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v13->_readerIdentifier;
    v13->_readerIdentifier = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v13->_readerPublicKey;
    v13->_readerPublicKey = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v13->_keyIdentifier;
    v13->_keyIdentifier = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v13->_invitationIdentifier;
    v13->_invitationIdentifier = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareInitiatorCertificateChainData"];
    shareInitiatorCertificateChainData = v13->_shareInitiatorCertificateChainData;
    v13->_shareInitiatorCertificateChainData = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyKeyIdentifier"];
    privacyKeyIdentifier = v13->_privacyKeyIdentifier;
    v13->_privacyKeyIdentifier = v42;

    v44 = [v4 decodeObjectOfClasses:v8 forKey:@"certificates"];
    certificates = v13->_certificates;
    v13->_certificates = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revocationAttestation"];
    revocationAttestation = v13->_revocationAttestation;
    v13->_revocationAttestation = v46;

    v48 = [v4 decodeObjectOfClasses:v8 forKey:@"authorizedKeys"];
    authorizedKeys = v13->_authorizedKeys;
    v13->_authorizedKeys = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidentialMailBoxSize"];
    confidentialMailBoxSize = v13->_confidentialMailBoxSize;
    v13->_confidentialMailBoxSize = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateMailBoxSize"];
    privateMailBoxSize = v13->_privateMailBoxSize;
    v13->_privateMailBoxSize = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"counter"];
    counter = v13->_counter;
    v13->_counter = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v13->_friendlyName;
    v13->_friendlyName = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyRole"];
    keyRole = v13->_keyRole;
    v13->_keyRole = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerInfo"];
    readerInfo = v13->_readerInfo;
    v13->_readerInfo = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mailboxMapping"];
    mailboxMapping = v13->_mailboxMapping;
    v13->_mailboxMapping = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v13->_trackingRequest;
    v13->_trackingRequest = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingReceipt"];
    trackingReceipt = v13->_trackingReceipt;
    v13->_trackingReceipt = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceConfiguration"];
    deviceConfiguration = v13->_deviceConfiguration;
    v13->_deviceConfiguration = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingAttestationData"];
    sharingAttestationData = v13->_sharingAttestationData;
    v13->_sharingAttestationData = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerEphemeralKey"];
    ownerEphemeralKey = v13->_ownerEphemeralKey;
    v13->_ownerEphemeralKey = v72;

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingEncryptedData"];
    sharingEncryptedData = v13->_sharingEncryptedData;
    v13->_sharingEncryptedData = v74;

    v76 = [v4 decodeObjectOfClasses:v12 forKey:@"additionalAttestationsDict"];
    additionalAttestationsDict = v13->_additionalAttestationsDict;
    v13->_additionalAttestationsDict = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v13->_environment;
    v13->_environment = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingTokenAvailabilityBitmap"];
    sharingTokenAvailabilityBitmap = v13->_sharingTokenAvailabilityBitmap;
    v13->_sharingTokenAvailabilityBitmap = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleUUID"];
    bleUUID = v13->_bleUUID;
    v13->_bleUUID = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerLongTermPublicKeyCertificate"];
    readerLongTermPublicKeyCertificate = v13->_readerLongTermPublicKeyCertificate;
    v13->_readerLongTermPublicKeyCertificate = v84;

    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carOEMProprietaryData"];
    carOEMProprietaryData = v13->_carOEMProprietaryData;
    v13->_carOEMProprietaryData = v86;

    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleIntroKey"];
    bleIntroKey = v13->_bleIntroKey;
    v13->_bleIntroKey = v88;

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleOOBKey"];
    bleOOBKey = v13->_bleOOBKey;
    v13->_bleOOBKey = v90;

    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleOOBMasterKey"];
    bleOOBMasterKey = v13->_bleOOBMasterKey;
    v13->_bleOOBMasterKey = v92;

    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleDCKIdentifier"];
    bleDCKIdentifier = v13->_bleDCKIdentifier;
    v13->_bleDCKIdentifier = v94;

    v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bleAddress"];
    bleAddress = v13->_bleAddress;
    v13->_bleAddress = v96;

    v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blePairingRequest"];
    blePairingRequest = v13->_blePairingRequest;
    v13->_blePairingRequest = v98;

    v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longTermSharedSecret"];
    longTermSharedSecret = v13->_longTermSharedSecret;
    v13->_longTermSharedSecret = v100;

    v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerIDSIdentifier"];
    ownerIDSIdentifier = v13->_ownerIDSIdentifier;
    v13->_ownerIDSIdentifier = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v13->_sharingSessionUUID;
    v13->_sharingSessionUUID = v104;

    v106 = [v4 decodeObjectOfClasses:v8 forKey:@"supportedRKEFunctions"];
    supportedRKEFunctions = v13->_supportedRKEFunctions;
    v13->_supportedRKEFunctions = v106;

    v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v13->_appletIdentifier;
    v13->_appletIdentifier = v108;

    v110 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"terminatedByTaskID"];
    terminatedByTaskID = v13->_terminatedByTaskID;
    v13->_terminatedByTaskID = v110;

    v112 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerConfigID"];
    readerConfigID = v13->_readerConfigID;
    v13->_readerConfigID = v112;

    v114 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hupData"];
    hupData = v13->_hupData;
    v13->_hupData = v114;

    v116 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hupDone"];
    hupDone = v13->_hupDone;
    v13->_hupDone = v116;

    v118 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleSupportedVersionsData"];
    vehicleSupportedVersionsData = v13->_vehicleSupportedVersionsData;
    v13->_vehicleSupportedVersionsData = v118;

    v120 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mailboxSizesPlusAdditionalData"];
    mailboxSizesPlusAdditionalData = v13->_mailboxSizesPlusAdditionalData;
    v13->_mailboxSizesPlusAdditionalData = v120;

    v122 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slotIdentifier"];
    slotIdentifier = v13->_slotIdentifier;
    v13->_slotIdentifier = v122;

    v124 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeUUIDString"];
    homeUUIDString = v13->_homeUUIDString;
    v13->_homeUUIDString = v124;

    v126 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"upgradeEndpointJSONData"];
    upgradeEndpointJSONData = v13->_upgradeEndpointJSONData;
    v13->_upgradeEndpointJSONData = v126;

    v128 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedDsid"];
    anonymizedDsid = v13->_anonymizedDsid;
    v13->_anonymizedDsid = v128;

    if (!v13->_endPointType)
    {
      v130 = SESDefaultLogObject();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        v131 = [(NSData *)v13->_publicKeyIdentifier asHexString];
        *buf = 138412290;
        v139 = v131;
        _os_log_impl(&dword_1C7B9A000, v130, OS_LOG_TYPE_INFO, "Loading from pre15.X, inferring SEEndPointTypeAlisha with PKI %@", buf, 0xCu);
      }

      v13->_endPointType = 1;
    }

    if (!v13->_appletIdentifier)
    {
      v132 = SESDefaultLogObject();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7B9A000, v132, OS_LOG_TYPE_INFO, "Loading from pre15.X, inferring appletIdentifier as CCC AID", buf, 2u);
      }

      v133 = [@"A000000809434343444B417631" hexStringAsData];
      v134 = v13->_appletIdentifier;
      v13->_appletIdentifier = v133;
    }
  }

  v135 = *MEMORY[0x1E69E9840];
  return v13;
}

@end