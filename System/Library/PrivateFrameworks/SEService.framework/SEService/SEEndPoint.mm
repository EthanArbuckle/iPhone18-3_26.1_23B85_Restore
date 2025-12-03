@interface SEEndPoint
+ (id)decodeWithData:(id)data error:(id *)error;
+ (id)endPointWithType:(int64_t)type appletIdentifier:(id)identifier identifier:(id)a5 certificateData:(id)data error:(id *)error;
+ (id)parsePTAExtension:(__CFString *)extension certificate:(__SecCertificate *)certificate specification:(id *)specification output:(PTAEndPointExtensionContent *)output;
+ (id)revokedEndpointWithPublicKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier revocationAttestation:(id)attestation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (SEEndPoint)initWithCoder:(id)coder;
- (id)configurePrivateData:(id)data confidentialData:(id)confidentialData contactlessPersistentVisibility:(id)visibility wiredPersistentVisibility:(id)persistentVisibility nfcExpressOnlyInLPM:(id)m;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deleteEndPointLongTermPrivacyKey;
- (id)description;
- (id)dumpState;
- (id)generateEndPointPrivacyLongTermPrivacyKey;
- (id)validateAuthorizedEndpointConfig:(id)config;
- (unint64_t)getEndpointUser;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)prependCertificateChain:(id)chain;
@end

@implementation SEEndPoint

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(SEEndPoint *)self encodeWithError:0];
  v4 = [SEEndPoint decodeWithData:v3 error:0];

  return v4;
}

- (unint64_t)hash
{
  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
  v3 = [publicKeyIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
    publicKeyIdentifier2 = [equalCopy publicKeyIdentifier];
    v7 = [publicKeyIdentifier isEqualToData:publicKeyIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)endPointWithType:(int64_t)type appletIdentifier:(id)identifier identifier:(id)a5 certificateData:(id)data error:(id *)error
{
  identifierCopy = identifier;
  v14 = a5;
  dataCopy = data;
  if (dataCopy)
  {
    v16 = SecCertificateCreateWithData(0, dataCopy);
    v17 = v16;
    if (!v16)
    {
      if (error)
      {
        v28 = SESDefaultLogObject();
        v29 = *MEMORY[0x1E69E5148];
        base64 = [(__CFData *)dataCopy base64];
        *error = SESCreateAndLogError();
      }

      v24 = 0;
      goto LABEL_60;
    }

    commonName = 0;
    SecCertificateCopyCommonName(v16, &commonName);
    v18 = commonName;
    v19 = SecCertificateCopyIssuerSummary();
    if ((type - 1) >= 5)
    {
      if (error)
      {
        v30 = SESDefaultLogObject();
        v31 = *MEMORY[0x1E69E5148];
        *error = SESCreateAndLogError();
      }

      v24 = 0;
      goto LABEL_59;
    }

    v20 = off_1E82D0FE8[type - 1];
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
    if ((type & 6) == 4)
    {
      v21 = &PTALyonEndPointExtensionSpec;
    }

    else
    {
      v21 = &PTAEndPointExtensionSpec;
    }

    v93 = __Block_byref_object_dispose__1;
    v94 = [self parsePTAExtension:v20 certificate:v17 specification:v21 output:&v95];
    if (v90[5])
    {
      if (!error)
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
      *error = v24 = 0;
      v25 = v22;
LABEL_57:

      goto LABEL_58;
    }

    v32 = SecCertificateCopyKey(v17);
    v25 = v32;
    if (!v32)
    {
      if (error)
      {
        v47 = SESDefaultLogObject();
        v48 = *MEMORY[0x1E69E5148];
        *error = SESCreateAndLogError();
      }

      v24 = 0;
      goto LABEL_57;
    }

    v88 = 0;
    v80 = v32;
    SecKeyCopyPublicBytes();
    v33 = objc_opt_new();
    *(v33 + 8) = type;
    objc_storeStrong((v33 + 16), identifier);
    v34 = [MEMORY[0x1E695DEC8] arrayWithObject:dataCopy];
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
    ses_sha1 = [0 ses_sha1];
    v38 = *(v33 + 48);
    *(v33 + 48) = ses_sha1;

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
            if (error)
            {
              goto LABEL_53;
            }

            goto LABEL_55;
          }

          *&v104 = v104 + 2;
          *(&v104 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!error)
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
            if (error)
            {
              goto LABEL_53;
            }

            goto LABEL_55;
          }

          *&v103 = v103 + 2;
          *(&v103 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!error)
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
            if (error)
            {
LABEL_53:
              v78 = SESDefaultLogObject();
              v76 = *MEMORY[0x1E69E5148];
              v59 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v104];
              asHexString = [v59 asHexString];
              *error = SESCreateAndLogError();

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
            if (!error)
            {
              goto LABEL_55;
            }

LABEL_81:
            v77 = SESDefaultLogObject();
            v75 = *MEMORY[0x1E69E5148];
            v68 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v104];
            *error = SESCreateAndLogError();

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
          array = [MEMORY[0x1E695DF70] array];
          if (DERDecodeSequenceWithBlock() || v90[5])
          {
            if (error)
            {
              v66 = SESDefaultLogObject();
              v67 = *MEMORY[0x1E69E5148];
              v74 = v90[5];
              *error = SESCreateAndLogError();
            }

            _Block_object_dispose(&v81, 8);
            v61 = array;
            goto LABEL_54;
          }

          objc_storeStrong((v33 + 104), v82[5]);
          _Block_object_dispose(&v81, 8);
        }

        generateEndPointPrivacyLongTermPrivacyKey = [v33 generateEndPointPrivacyLongTermPrivacyKey];
        v70 = v90[5];
        v90[5] = generateEndPointPrivacyLongTermPrivacyKey;

        if (!v90[5])
        {
          v24 = v33;
          goto LABEL_56;
        }

        if (!error)
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
        if (!error)
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
      if (!error)
      {
        goto LABEL_55;
      }

      v49 = SESDefaultLogObject();
      v50 = *MEMORY[0x1E69E5148];
      v51 = SESCreateAndLogError();
    }

    *error = v51;

    goto LABEL_55;
  }

  if (error)
  {
    v26 = SESDefaultLogObject();
    v27 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();
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

+ (id)parsePTAExtension:(__CFString *)extension certificate:(__SecCertificate *)certificate specification:(id *)specification output:(PTAEndPointExtensionContent *)output
{
  if (extension && certificate && specification && output)
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

+ (id)revokedEndpointWithPublicKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier revocationAttestation:(id)attestation error:(id *)error
{
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  attestationCopy = attestation;
  v13 = attestationCopy;
  if (identifierCopy && attestationCopy)
  {
    v14 = objc_opt_new();
    objc_storeStrong((v14 + 16), appletIdentifier);
    objc_storeStrong((v14 + 48), identifier);
    objc_storeStrong((v14 + 400), attestation);
    hexStringAsData = [@"A000000809434343444B417631" hexStringAsData];
    v16 = [hexStringAsData isEqualToData:appletIdentifierCopy];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      hexStringAsData2 = [@"A00000085801010100000001" hexStringAsData];
      v21 = [hexStringAsData2 isEqualToData:appletIdentifierCopy];

      if (v21)
      {
        v17 = 3;
      }

      else
      {
        hexStringAsData3 = [@"A00000085802010100000001" hexStringAsData];
        v23 = [hexStringAsData3 isEqualToData:appletIdentifierCopy];

        if (v23)
        {
          v17 = 2;
        }

        else
        {
          hexStringAsData4 = [@"A000000909ACCE5501" hexStringAsData];
          v25 = [hexStringAsData4 isEqualToData:appletIdentifierCopy];

          if ((v25 & 1) == 0)
          {
            if (error)
            {
              v27 = SESDefaultLogObject();
              v28 = *MEMORY[0x1E69E5148];
              *error = SESCreateAndLogError();
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
    if (!error)
    {
      v19 = 0;
      goto LABEL_16;
    }

    v14 = SESDefaultLogObject();
    v18 = *MEMORY[0x1E69E5148];
    SESCreateAndLogError();
    *error = v19 = 0;
  }

LABEL_15:

LABEL_16:

  return v19;
}

- (id)validateAuthorizedEndpointConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    goto LABEL_8;
  }

  configuration = [(SEEndPoint *)self configuration];
  authorizeEndPointWithAuthorizeAllowed = [configuration authorizeEndPointWithAuthorizeAllowed];

  if (authorizeEndPointWithAuthorizeAllowed)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = SecCertificateCreateWithData(0, configCopy);
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

- (void)prependCertificateChain:(id)chain
{
  chainCopy = chain;
  certificates = [(SEEndPoint *)self certificates];
  v5 = [chainCopy arrayByAddingObjectsFromArray:certificates];

  certificates = self->_certificates;
  self->_certificates = v5;
}

- (id)configurePrivateData:(id)data confidentialData:(id)confidentialData contactlessPersistentVisibility:(id)visibility wiredPersistentVisibility:(id)persistentVisibility nfcExpressOnlyInLPM:(id)m
{
  dataCopy = data;
  confidentialDataCopy = confidentialData;
  visibilityCopy = visibility;
  persistentVisibilityCopy = persistentVisibility;
  mCopy = m;
  if (dataCopy)
  {
    if ([dataCopy length] != 3)
    {
      configuration7 = SESDefaultLogObject();
      v28 = *MEMORY[0x1E69E5148];
      [dataCopy length];
LABEL_13:
      v27 = SESCreateAndLogError();
      goto LABEL_21;
    }

    v47 = visibilityCopy;
    bytes = [dataCopy bytes];
    v18 = *bytes;
    v19 = __rev16(v18);
    v20 = bswap32(v18);
    v21 = *(bytes + 2);
    privateMailBoxSize = [(SEEndPoint *)self privateMailBoxSize];
    unsignedIntValue = [privateMailBoxSize unsignedIntValue];

    if (unsignedIntValue < v21 + HIWORD(v20))
    {
      configuration7 = SESDefaultLogObject();
      v25 = *MEMORY[0x1E69E5148];
      privateMailBoxSize2 = [(SEEndPoint *)self privateMailBoxSize];
      [privateMailBoxSize2 unsignedIntValue];
      v27 = SESCreateAndLogError();

LABEL_11:
      visibilityCopy = v47;
LABEL_21:

      goto LABEL_22;
    }

    configuration = [(SEEndPoint *)self configuration];
    [configuration setOffsetPrivateMailBox:v19];

    configuration2 = [(SEEndPoint *)self configuration];
    [configuration2 setLengthPrivateMailBox:v21];

    visibilityCopy = v47;
  }

  if (!confidentialDataCopy)
  {
    goto LABEL_15;
  }

  if ([confidentialDataCopy length] != 3)
  {
    configuration7 = SESDefaultLogObject();
    v40 = *MEMORY[0x1E69E5148];
    [dataCopy length];
    goto LABEL_13;
  }

  v47 = visibilityCopy;
  bytes2 = [confidentialDataCopy bytes];
  v32 = *bytes2;
  v33 = __rev16(v32);
  v34 = bswap32(v32);
  v35 = *(bytes2 + 2);
  confidentialMailBoxSize = [(SEEndPoint *)self confidentialMailBoxSize];
  unsignedIntegerValue = [confidentialMailBoxSize unsignedIntegerValue];

  if (unsignedIntegerValue < v35 + HIWORD(v34))
  {
    configuration7 = SESDefaultLogObject();
    v38 = *MEMORY[0x1E69E5148];
    privateMailBoxSize3 = [(SEEndPoint *)self privateMailBoxSize];
    [privateMailBoxSize3 unsignedIntValue];
    v27 = SESCreateAndLogError();

    goto LABEL_11;
  }

  configuration3 = [(SEEndPoint *)self configuration];
  [configuration3 setOffsetConfidentialMailBox:v33];

  configuration4 = [(SEEndPoint *)self configuration];
  [configuration4 setLengthConfidentialMailBox:v35];

  visibilityCopy = v47;
LABEL_15:
  if (visibilityCopy)
  {
    configuration5 = [(SEEndPoint *)self configuration];
    [configuration5 setEnabledOnContactless:{objc_msgSend(visibilityCopy, "BOOLValue")}];
  }

  if (persistentVisibilityCopy)
  {
    configuration6 = [(SEEndPoint *)self configuration];
    [configuration6 setEnabledOnWire:{objc_msgSend(persistentVisibilityCopy, "BOOLValue")}];
  }

  if (mCopy)
  {
    bOOLValue = [mCopy BOOLValue];
    configuration7 = [(SEEndPoint *)self configuration];
    [configuration7 setNfcExpressOnlyInLPM:bOOLValue];
    v27 = 0;
    goto LABEL_21;
  }

  v27 = 0;
LABEL_22:

  return v27;
}

- (id)generateEndPointPrivacyLongTermPrivacyKey
{
  selfCopy = self;
  v32[3] = *MEMORY[0x1E69E9840];
  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];
  v4 = [privacyKeyIdentifier length];

  if (v4)
  {
    goto LABEL_16;
  }

  v5 = MEMORY[0x1E696AEC0];
  identifier = [selfCopy identifier];
  v7 = [v5 stringWithFormat:@"%@::LTPrivacyKey", identifier];

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
    selfCopy = SESCreateAndLogError();
    v21 = 0;
  }

  else
  {
    objc_storeStrong((selfCopy + 464), v7);
    v17 = getSecKeyPublicBytes();
    v18 = 0;
    v19 = v18;
    v20 = v17 || v18 == 0;
    v21 = !v20;
    if (v20)
    {
      v23 = SESDefaultLogObject();
      v25 = *MEMORY[0x1E69E5148];
      selfCopy = SESCreateAndLogError();
    }

    else
    {
      objc_storeStrong((selfCopy + 56), 0);
      ses_sha1 = [v19 ses_sha1];
      v23 = *(selfCopy + 64);
      *(selfCopy + 64) = ses_sha1;
    }
  }

  if (v21)
  {
LABEL_16:
    selfCopy = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)deleteEndPointLongTermPrivacyKey
{
  v20 = *MEMORY[0x1E69E9840];
  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];
  v4 = [privacyKeyIdentifier length];

  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      privacyKeyIdentifier2 = [(SEEndPoint *)self privacyKeyIdentifier];
      *buf = 138412290;
      v19 = privacyKeyIdentifier2;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "Deleting long term privacy key %@", buf, 0xCu);
    }

    v7 = *MEMORY[0x1E697AFF8];
    v17[0] = *MEMORY[0x1E697B020];
    v8 = *MEMORY[0x1E697AC48];
    v16[0] = v7;
    v16[1] = v8;
    privacyKeyIdentifier3 = [(SEEndPoint *)self privacyKeyIdentifier];
    v16[2] = *MEMORY[0x1E697B390];
    v17[1] = privacyKeyIdentifier3;
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

  identifier = [(SEEndPoint *)self identifier];
  v4 = [identifier componentsSeparatedByString:@"."];

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
  string = [MEMORY[0x1E696AD60] string];
  v3 = v187[5];
  identifier = [(SEEndPoint *)self identifier];
  [v3 appendFormat:@"Identifier : %@ : {\n", identifier];

  v5 = v187[5];
  appletIdentifier = [(SEEndPoint *)self appletIdentifier];
  asHexString = [appletIdentifier asHexString];
  [v5 appendFormat:@"\tAppletIdentifier : %@\n", asHexString];

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
  revocationAttestation = [(SEEndPoint *)self revocationAttestation];
  v11 = @"REVOKED";
  if (!revocationAttestation)
  {
    v11 = @"ACTIVE";
  }

  [v9 appendFormat:@"\tstate : %@\n", v11];

  v12 = v187[5];
  issuerIdentifier = [(SEEndPoint *)self issuerIdentifier];
  [v12 appendFormat:@"\tissuerIdentifier : %@\n", issuerIdentifier];

  v14 = v187[5];
  subjectIdentifier = [(SEEndPoint *)self subjectIdentifier];
  [v14 appendFormat:@"\tsubjectIdentifier : %@\n", subjectIdentifier];

  v16 = v187[5];
  publicKey = [(SEEndPoint *)self publicKey];
  asHexString2 = [publicKey asHexString];
  [v16 appendFormat:@"\tpublicKey : %@\n", asHexString2];

  v19 = v187[5];
  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
  asHexString3 = [publicKeyIdentifier asHexString];
  [v19 appendFormat:@"\tpublicKeyIdentifier : %@\n", asHexString3];

  v22 = v187[5];
  privacyPublicKey = [(SEEndPoint *)self privacyPublicKey];
  asHexString4 = [privacyPublicKey asHexString];
  [v22 appendFormat:@"\tprivacyPublicKey : %@\n", asHexString4];

  v25 = v187[5];
  privacyPublicKeyIdentifier = [(SEEndPoint *)self privacyPublicKeyIdentifier];
  asHexString5 = [privacyPublicKeyIdentifier asHexString];
  [v25 appendFormat:@"\tprivacyPublicKeyIdentifier : %@\n", asHexString5];

  v28 = v187[5];
  configuration = [(SEEndPoint *)self configuration];
  [v28 appendFormat:@"\tconfiguration : %@, \n", configuration];

  v30 = v187[5];
  readerIdentifier = [(SEEndPoint *)self readerIdentifier];
  asHexString6 = [readerIdentifier asHexString];
  [v30 appendFormat:@"\treaderIdentifier : %@, \n", asHexString6];

  v33 = v187[5];
  readerPublicKey = [(SEEndPoint *)self readerPublicKey];
  asHexString7 = [readerPublicKey asHexString];
  [v33 appendFormat:@"\treaderPublicKey : %@, \n", asHexString7];

  v36 = v187[5];
  keyIdentifier = [(SEEndPoint *)self keyIdentifier];
  asHexString8 = [keyIdentifier asHexString];
  [v36 appendFormat:@"\tkeyIdentifier : %@, \n", asHexString8];

  v39 = v187[5];
  confidentialMailBoxSize = [(SEEndPoint *)self confidentialMailBoxSize];
  [v39 appendFormat:@"\tconfidentialMailBoxSize : %@, \n", confidentialMailBoxSize];

  v41 = v187[5];
  privateMailBoxSize = [(SEEndPoint *)self privateMailBoxSize];
  [v41 appendFormat:@"\tprivateMailBoxSize : %@, \n", privateMailBoxSize];

  v43 = v187[5];
  counter = [(SEEndPoint *)self counter];
  [v43 appendFormat:@"\tcounter : %@, \n", counter];

  v45 = v187[5];
  authorizedKeys = [(SEEndPoint *)self authorizedKeys];
  [v45 appendFormat:@"\tauthorizedKeys (%lu) : {\n", objc_msgSend(authorizedKeys, "count")];

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  authorizedKeys2 = [(SEEndPoint *)self authorizedKeys];
  v48 = [authorizedKeys2 countByEnumeratingWithState:&v181 objects:v193 count:16];
  if (v48)
  {
    v49 = *v182;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v182 != v49)
        {
          objc_enumerationMutation(authorizedKeys2);
        }

        v51 = v187[5];
        asHexString9 = [*(*(&v181 + 1) + 8 * i) asHexString];
        [v51 appendFormat:@"\t\t%@, \n", asHexString9];
      }

      v48 = [authorizedKeys2 countByEnumeratingWithState:&v181 objects:v193 count:16];
    }

    while (v48);
  }

  [v187[5] appendFormat:@"\t}\n"];
  v53 = v187[5];
  friendlyName = [(SEEndPoint *)self friendlyName];
  [v53 appendFormat:@"\tfriendlyName : %@, \n", friendlyName];

  keyRole = [(SEEndPoint *)self keyRole];
  LOBYTE(friendlyName) = keyRole == 0;

  if ((friendlyName & 1) == 0)
  {
    v56 = v187[5];
    keyRole2 = [(SEEndPoint *)self keyRole];
    [v56 appendFormat:@"\tkeyRole : 0x%04X, \n", objc_msgSend(keyRole2, "unsignedShortValue")];
  }

  v58 = v187[5];
  readerInfo = [(SEEndPoint *)self readerInfo];
  [v58 appendFormat:@"\treaderInfo : %@, \n", readerInfo];

  v60 = v187[5];
  invitationIdentifier = [(SEEndPoint *)self invitationIdentifier];
  [v60 appendFormat:@"\tinvitationIdentifier : %@, \n", invitationIdentifier];

  v62 = v187[5];
  sharingSessionUUID = [(SEEndPoint *)self sharingSessionUUID];
  [v62 appendFormat:@"\tsharingSessionUUID : %@, \n", sharingSessionUUID];

  v64 = v187[5];
  ownerIDSIdentifier = [(SEEndPoint *)self ownerIDSIdentifier];
  [v64 appendFormat:@"\townerIDSIdentifier : %@, \n", ownerIDSIdentifier];

  v66 = v187[5];
  mailboxMapping = [(SEEndPoint *)self mailboxMapping];
  asHexString10 = [mailboxMapping asHexString];
  [v66 appendFormat:@"\tmailboxMapping : %@, \n", asHexString10];

  v69 = v187[5];
  trackingRequest = [(SEEndPoint *)self trackingRequest];
  asHexString11 = [trackingRequest asHexString];
  [v69 appendFormat:@"\ttrackingRequest : %@, \n", asHexString11];

  v72 = v187[5];
  trackingReceipt = [(SEEndPoint *)self trackingReceipt];
  asHexString12 = [trackingReceipt asHexString];
  [v72 appendFormat:@"\ttrackingReceipt : %@, \n", asHexString12];

  v75 = v187[5];
  deviceConfiguration = [(SEEndPoint *)self deviceConfiguration];
  asHexString13 = [deviceConfiguration asHexString];
  [v75 appendFormat:@"\tdeviceConfiguration : %@, \n", asHexString13];

  v78 = v187[5];
  sharingAttestationData = [(SEEndPoint *)self sharingAttestationData];
  asHexString14 = [sharingAttestationData asHexString];
  [v78 appendFormat:@"\tsharingAttestationData : %@\n", asHexString14];

  v81 = v187[5];
  ownerEphemeralKey = [(SEEndPoint *)self ownerEphemeralKey];
  asHexString15 = [ownerEphemeralKey asHexString];
  [v81 appendFormat:@"\townerEphemeralKey : %@\n", asHexString15];

  v84 = v187[5];
  additionalAttestationsDict = [(SEEndPoint *)self additionalAttestationsDict];
  [v84 appendFormat:@"\tadditionalAttestationsDict : %lu\n", objc_msgSend(additionalAttestationsDict, "count")];

  v86 = v187[5];
  sharingEncryptedData = [(SEEndPoint *)self sharingEncryptedData];
  asHexString16 = [sharingEncryptedData asHexString];
  [v86 appendFormat:@"\tsharingEncryptedData : %@\n", asHexString16];

  v89 = v187[5];
  revocationAttestation2 = [(SEEndPoint *)self revocationAttestation];
  asHexString17 = [revocationAttestation2 asHexString];
  [v89 appendFormat:@"\trevocationAttestation : %@\n", asHexString17];

  v92 = v187[5];
  terminatedByTaskID = [(SEEndPoint *)self terminatedByTaskID];
  [v92 appendFormat:@"\tterminatedByTaskID : %@\n", terminatedByTaskID];

  [v187[5] appendFormat:@"\tcarOEMProprietaryData : {\n"];
  carOEMProprietaryData = [(SEEndPoint *)self carOEMProprietaryData];

  if (carOEMProprietaryData)
  {
    v95 = v187[5];
    carOEMProprietaryData2 = [(SEEndPoint *)self carOEMProprietaryData];
    version = [carOEMProprietaryData2 version];
    [v95 appendFormat:@"\t\tversion : %@, \n", version];

    v98 = v187[5];
    carOEMProprietaryData3 = [(SEEndPoint *)self carOEMProprietaryData];
    cipherText = [carOEMProprietaryData3 cipherText];
    asHexString18 = [cipherText asHexString];
    [v98 appendFormat:@"\t\tcipherText : %@, \n", asHexString18];

    v102 = v187[5];
    carOEMProprietaryData4 = [(SEEndPoint *)self carOEMProprietaryData];
    ephemeralPublicKeydata = [carOEMProprietaryData4 ephemeralPublicKeydata];
    asHexString19 = [ephemeralPublicKeydata asHexString];
    [v102 appendFormat:@"\t\tephemeralPublicKeydata : %@, \n", asHexString19];

    v106 = v187[5];
    carOEMProprietaryData5 = [(SEEndPoint *)self carOEMProprietaryData];
    receiverPublicKeyHash = [carOEMProprietaryData5 receiverPublicKeyHash];
    asHexString20 = [receiverPublicKeyHash asHexString];
    [v106 appendFormat:@"\t\treceiverPublicKeyHash : %@, \n", asHexString20];
  }

  [v187[5] appendFormat:@"\t}, \n"];
  v110 = v187[5];
  environment = [(SEEndPoint *)self environment];
  [v110 appendFormat:@"\tenvironment : %@, \n", environment];

  v112 = v187[5];
  sharingTokenAvailabilityBitmap = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
  [v112 appendFormat:@"\tsharingTokenAvailabilityBitmap : %@, \n", sharingTokenAvailabilityBitmap];

  v114 = v187[5];
  homeUUIDString = [(SEEndPoint *)self homeUUIDString];
  [v114 appendFormat:@"\thomeUUID : %@, \n", homeUUIDString];

  v116 = v187[5];
  certificates = [(SEEndPoint *)self certificates];
  [v116 appendFormat:@"\tcertificates (%lu) : {\n", objc_msgSend(certificates, "count")];

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  certificates2 = [(SEEndPoint *)self certificates];
  v119 = [certificates2 countByEnumeratingWithState:&v177 objects:v192 count:16];
  if (v119)
  {
    v120 = *v178;
    do
    {
      for (j = 0; j != v119; ++j)
      {
        if (*v178 != v120)
        {
          objc_enumerationMutation(certificates2);
        }

        v122 = v187[5];
        asHexString21 = [*(*(&v177 + 1) + 8 * j) asHexString];
        [v122 appendFormat:@"\t\t%@, \n", asHexString21];
      }

      v119 = [certificates2 countByEnumeratingWithState:&v177 objects:v192 count:16];
    }

    while (v119);
  }

  [v187[5] appendFormat:@"\t}\n}\n"];
  shareInitiatorCertificateChainData = [(SEEndPoint *)self shareInitiatorCertificateChainData];

  if (shareInitiatorCertificateChainData)
  {
    v125 = v187[5];
    shareInitiatorCertificateChainData2 = [(SEEndPoint *)self shareInitiatorCertificateChainData];
    asHexString22 = [shareInitiatorCertificateChainData2 asHexString];
    [v125 appendFormat:@"\tshareInitiatorCertificateChainData : %@\n", asHexString22];
  }

  v128 = v187[5];
  readerLongTermPublicKeyCertificate = [(SEEndPoint *)self readerLongTermPublicKeyCertificate];
  asHexString23 = [readerLongTermPublicKeyCertificate asHexString];
  [v128 appendFormat:@"\treaderLongTermPublicKeyCertificate : %@, \n", asHexString23];

  v131 = v187[5];
  bleUUID = [(SEEndPoint *)self bleUUID];
  [v131 appendFormat:@"\tbleUUID : %@\n", bleUUID];

  v133 = v187[5];
  bleIntroKey = [(SEEndPoint *)self bleIntroKey];
  asHexString24 = [bleIntroKey asHexString];
  [v133 appendFormat:@"\tbleIntroKey : %@\n", asHexString24];

  v136 = v187[5];
  bleOOBKey = [(SEEndPoint *)self bleOOBKey];
  asHexString25 = [bleOOBKey asHexString];
  [v136 appendFormat:@"\tbleOOBKey : %@\n", asHexString25];

  v139 = v187[5];
  bleOOBMasterKey = [(SEEndPoint *)self bleOOBMasterKey];
  asHexString26 = [bleOOBMasterKey asHexString];
  [v139 appendFormat:@"\tbleOOBMasterKey : %@\n", asHexString26];

  v142 = v187[5];
  bleDCKIdentifier = [(SEEndPoint *)self bleDCKIdentifier];
  asHexString27 = [bleDCKIdentifier asHexString];
  [v142 appendFormat:@"\tbleDCKIdentifier : %@\n", asHexString27];

  v145 = v187[5];
  bleAddress = [(SEEndPoint *)self bleAddress];
  asHexString28 = [bleAddress asHexString];
  [v145 appendFormat:@"\tbleAddress : %@\n", asHexString28];

  v148 = v187[5];
  blePairingRequest = [(SEEndPoint *)self blePairingRequest];
  [v148 appendFormat:@"\tblePairingRequest : %@\n", blePairingRequest];

  v150 = v187[5];
  supportedRKEFunctions = [(SEEndPoint *)self supportedRKEFunctions];
  [v150 appendFormat:@"\tsupportedRKEFunctions : %@\n", supportedRKEFunctions];

  v152 = v187[5];
  longTermSharedSecret = [(SEEndPoint *)self longTermSharedSecret];
  [v152 appendFormat:@"\tlongTermSharedSecret length : %lu\n", objc_msgSend(longTermSharedSecret, "length")];

  v154 = v187[5];
  readerConfigID = [(SEEndPoint *)self readerConfigID];
  asHexString29 = [readerConfigID asHexString];
  [v154 appendFormat:@"\treaderConfigID : %@, \n", asHexString29];

  v157 = v187[5];
  hupData = [(SEEndPoint *)self hupData];
  asHexString30 = [hupData asHexString];
  [v157 appendFormat:@"\thupData : %@, \n", asHexString30];

  v160 = v187[5];
  hupDone = [(SEEndPoint *)self hupDone];
  [v160 appendFormat:@"\thupDone : %d, \n", objc_msgSend(hupDone, "BOOLValue")];

  v162 = v187[5];
  vehicleSupportedVersionsData = [(SEEndPoint *)self vehicleSupportedVersionsData];
  asHexString31 = [vehicleSupportedVersionsData asHexString];
  [v162 appendFormat:@"\tvehicleSupportedVersionsData : %@, \n", asHexString31];

  v165 = v187[5];
  mailboxSizesPlusAdditionalData = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
  asHexString32 = [mailboxSizesPlusAdditionalData asHexString];
  [v165 appendFormat:@"\tmailboxSizesPlusAdditionalData : %@, \n", asHexString32];

  v168 = v187[5];
  slotIdentifier = [(SEEndPoint *)self slotIdentifier];
  [v168 appendFormat:@"\tslotIdentifier length : %ld, \n", objc_msgSend(slotIdentifier, "length")];

  v170 = v187[5];
  upgradeEndpointJSONData = [(SEEndPoint *)self upgradeEndpointJSONData];
  [v170 appendFormat:@"\tupgradeEndpointJSONData length : %ld, \n", objc_msgSend(upgradeEndpointJSONData, "length")];

  v172 = v187[5];
  anonymizedDsid = [(SEEndPoint *)self anonymizedDsid];
  [v172 appendFormat:@"\tanonymizedDsid length : %ld, \n", objc_msgSend(anonymizedDsid, "length")];

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
  identifier = [(SEEndPoint *)self identifier];

  if (identifier)
  {
    identifier2 = [(SEEndPoint *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  appletIdentifier = [(SEEndPoint *)self appletIdentifier];

  if (appletIdentifier)
  {
    appletIdentifier2 = [(SEEndPoint *)self appletIdentifier];
    asHexString = [appletIdentifier2 asHexString];
    [v3 setObject:asHexString forKeyedSubscript:@"appletIdentifier"];
  }

  subjectIdentifier = [(SEEndPoint *)self subjectIdentifier];

  if (subjectIdentifier)
  {
    subjectIdentifier2 = [(SEEndPoint *)self subjectIdentifier];
    [v3 setObject:subjectIdentifier2 forKeyedSubscript:@"subjectIdentifier"];
  }

  issuerIdentifier = [(SEEndPoint *)self issuerIdentifier];

  if (issuerIdentifier)
  {
    issuerIdentifier2 = [(SEEndPoint *)self issuerIdentifier];
    [v3 setObject:issuerIdentifier2 forKeyedSubscript:@"issuerIdentifier"];
  }

  publicKey = [(SEEndPoint *)self publicKey];

  if (publicKey)
  {
    publicKey2 = [(SEEndPoint *)self publicKey];
    asHexString2 = [publicKey2 asHexString];
    [v3 setObject:asHexString2 forKeyedSubscript:@"publicKey"];
  }

  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];

  if (publicKeyIdentifier)
  {
    publicKeyIdentifier2 = [(SEEndPoint *)self publicKeyIdentifier];
    asHexString3 = [publicKeyIdentifier2 asHexString];
    [v3 setObject:asHexString3 forKeyedSubscript:@"publicKeyIdentifier"];
  }

  readerIdentifier = [(SEEndPoint *)self readerIdentifier];

  if (readerIdentifier)
  {
    readerIdentifier2 = [(SEEndPoint *)self readerIdentifier];
    asHexString4 = [readerIdentifier2 asHexString];
    [v3 setObject:asHexString4 forKeyedSubscript:@"readerIdentifier"];
  }

  readerPublicKey = [(SEEndPoint *)self readerPublicKey];

  if (readerPublicKey)
  {
    readerPublicKey2 = [(SEEndPoint *)self readerPublicKey];
    asHexString5 = [readerPublicKey2 asHexString];
    [v3 setObject:asHexString5 forKeyedSubscript:@"readerPublicKey"];
  }

  readerInfo = [(SEEndPoint *)self readerInfo];

  if (readerInfo)
  {
    readerInfo2 = [(SEEndPoint *)self readerInfo];
    [v3 setObject:readerInfo2 forKeyedSubscript:@"readerInfo"];
  }

  v27 = objc_opt_new();
  authorizedKeys = [(SEEndPoint *)self authorizedKeys];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __23__SEEndPoint_dumpState__block_invoke;
  v85[3] = &unk_1E82D0FC8;
  v29 = v27;
  v86 = v29;
  [authorizedKeys enumerateObjectsUsingBlock:v85];

  [v3 setObject:v29 forKeyedSubscript:@"authorizedKeys"];
  friendlyName = [(SEEndPoint *)self friendlyName];

  if (friendlyName)
  {
    friendlyName2 = [(SEEndPoint *)self friendlyName];
    [v3 setObject:friendlyName2 forKeyedSubscript:@"friendlyName"];
  }

  invitationIdentifier = [(SEEndPoint *)self invitationIdentifier];

  if (invitationIdentifier)
  {
    invitationIdentifier2 = [(SEEndPoint *)self invitationIdentifier];
    [v3 setObject:invitationIdentifier2 forKeyedSubscript:@"invitationIdentifier"];
  }

  sharingSessionUUID = [(SEEndPoint *)self sharingSessionUUID];

  if (sharingSessionUUID)
  {
    sharingSessionUUID2 = [(SEEndPoint *)self sharingSessionUUID];
    [v3 setObject:sharingSessionUUID2 forKeyedSubscript:@"sharingSessionUUID"];
  }

  ownerIDSIdentifier = [(SEEndPoint *)self ownerIDSIdentifier];

  if (ownerIDSIdentifier)
  {
    ownerIDSIdentifier2 = [(SEEndPoint *)self ownerIDSIdentifier];
    [v3 setObject:ownerIDSIdentifier2 forKeyedSubscript:@"ownerIDSIdentifier"];
  }

  trackingRequest = [(SEEndPoint *)self trackingRequest];

  if (trackingRequest)
  {
    trackingRequest2 = [(SEEndPoint *)self trackingRequest];
    asHexString6 = [trackingRequest2 asHexString];
    [v3 setObject:asHexString6 forKeyedSubscript:@"trackingRequest"];
  }

  trackingReceipt = [(SEEndPoint *)self trackingReceipt];

  if (trackingReceipt)
  {
    trackingReceipt2 = [(SEEndPoint *)self trackingReceipt];
    asHexString7 = [trackingReceipt2 asHexString];
    [v3 setObject:asHexString7 forKeyedSubscript:@"trackingReceipt"];
  }

  privacyPublicKey = [(SEEndPoint *)self privacyPublicKey];

  if (privacyPublicKey)
  {
    privacyPublicKey2 = [(SEEndPoint *)self privacyPublicKey];
    asHexString8 = [privacyPublicKey2 asHexString];
    [v3 setObject:asHexString8 forKeyedSubscript:@"privacyPublicKey"];
  }

  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];

  if (privacyKeyIdentifier)
  {
    privacyKeyIdentifier2 = [(SEEndPoint *)self privacyKeyIdentifier];
    [v3 setObject:privacyKeyIdentifier2 forKeyedSubscript:@"privacyKeyIdentifier"];
  }

  sharingTokenAvailabilityBitmap = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];

  if (sharingTokenAvailabilityBitmap)
  {
    sharingTokenAvailabilityBitmap2 = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
    [v3 setObject:sharingTokenAvailabilityBitmap2 forKeyedSubscript:@"sharingTokenAvailabilityBitmap"];
  }

  bleUUID = [(SEEndPoint *)self bleUUID];

  if (bleUUID)
  {
    bleUUID2 = [(SEEndPoint *)self bleUUID];
    [v3 setObject:bleUUID2 forKeyedSubscript:@"bleUUID"];
  }

  readerConfigID = [(SEEndPoint *)self readerConfigID];

  if (readerConfigID)
  {
    readerConfigID2 = [(SEEndPoint *)self readerConfigID];
    asHexString9 = [readerConfigID2 asHexString];
    [v3 setObject:asHexString9 forKeyedSubscript:@"readerConfigID"];
  }

  hupData = [(SEEndPoint *)self hupData];

  if (hupData)
  {
    hupData2 = [(SEEndPoint *)self hupData];
    asHexString10 = [hupData2 asHexString];
    [v3 setObject:asHexString10 forKeyedSubscript:@"hupData"];
  }

  hupDone = [(SEEndPoint *)self hupDone];

  if (hupDone)
  {
    hupDone2 = [(SEEndPoint *)self hupDone];
    [v3 setObject:hupDone2 forKeyedSubscript:@"hupDone"];
  }

  vehicleSupportedVersionsData = [(SEEndPoint *)self vehicleSupportedVersionsData];

  if (vehicleSupportedVersionsData)
  {
    vehicleSupportedVersionsData2 = [(SEEndPoint *)self vehicleSupportedVersionsData];
    asHexString11 = [vehicleSupportedVersionsData2 asHexString];
    [v3 setObject:asHexString11 forKeyedSubscript:@"vehicleSupportedVersionsData"];
  }

  mailboxSizesPlusAdditionalData = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];

  if (mailboxSizesPlusAdditionalData)
  {
    mailboxSizesPlusAdditionalData2 = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
    asHexString12 = [mailboxSizesPlusAdditionalData2 asHexString];
    [v3 setObject:asHexString12 forKeyedSubscript:@"mailboxSizesPlusAdditionalData"];
  }

  sharingRecords = [(SEEndPoint *)self sharingRecords];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __23__SEEndPoint_dumpState__block_invoke_2;
  v83[3] = &unk_1E82D0FC8;
  v68 = v3;
  v84 = v68;
  [sharingRecords enumerateObjectsUsingBlock:v83];

  v69 = MEMORY[0x1E696AEC0];
  configuration = [(SEEndPoint *)self configuration];
  opt1 = [configuration opt1];
  configuration2 = [(SEEndPoint *)self configuration];
  opt2 = [configuration2 opt2];
  configuration3 = [(SEEndPoint *)self configuration];
  v75 = [v69 stringWithFormat:@"Opt1 0x%X Opt2 0x%X OptA 0x%X", opt1, opt2, objc_msgSend(configuration3, "optA")];
  [v68 setObject:v75 forKeyedSubscript:@"configuration"];

  revocationAttestation = [(SEEndPoint *)self revocationAttestation];
  if (revocationAttestation)
  {
    v77 = @"REVOKED";
  }

  else
  {
    v77 = @"ACTIVE";
  }

  [v68 setObject:v77 forKeyedSubscript:@"lifecycle"];

  terminatedByTaskID = [(SEEndPoint *)self terminatedByTaskID];

  if (terminatedByTaskID)
  {
    terminatedByTaskID2 = [(SEEndPoint *)self terminatedByTaskID];
    [v68 setObject:terminatedByTaskID2 forKeyedSubscript:@"terminatedByTaskID"];
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

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SEEndPoint endPointType](self forKey:{"endPointType"), @"endPointType"}];
  identifier = [(SEEndPoint *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  sharingRecords = [(SEEndPoint *)self sharingRecords];
  [coderCopy encodeObject:sharingRecords forKey:@"sharingRecords"];

  issuerIdentifier = [(SEEndPoint *)self issuerIdentifier];
  [coderCopy encodeObject:issuerIdentifier forKey:@"issuerIdentifier"];

  subjectIdentifier = [(SEEndPoint *)self subjectIdentifier];
  [coderCopy encodeObject:subjectIdentifier forKey:@"subjectIdentifier"];

  publicKey = [(SEEndPoint *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
  [coderCopy encodeObject:publicKeyIdentifier forKey:@"publicKeyIdentifier"];

  privacyPublicKey = [(SEEndPoint *)self privacyPublicKey];
  [coderCopy encodeObject:privacyPublicKey forKey:@"privacyPublicKey"];

  privacyPublicKeyIdentifier = [(SEEndPoint *)self privacyPublicKeyIdentifier];
  [coderCopy encodeObject:privacyPublicKeyIdentifier forKey:@"privacyPublicKeyIdentifier"];

  configuration = [(SEEndPoint *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  readerIdentifier = [(SEEndPoint *)self readerIdentifier];
  [coderCopy encodeObject:readerIdentifier forKey:@"readerIdentifier"];

  readerPublicKey = [(SEEndPoint *)self readerPublicKey];
  [coderCopy encodeObject:readerPublicKey forKey:@"readerPublicKey"];

  keyIdentifier = [(SEEndPoint *)self keyIdentifier];
  [coderCopy encodeObject:keyIdentifier forKey:@"keyIdentifier"];

  invitationIdentifier = [(SEEndPoint *)self invitationIdentifier];
  [coderCopy encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];

  certificates = [(SEEndPoint *)self certificates];
  [coderCopy encodeObject:certificates forKey:@"certificates"];

  shareInitiatorCertificateChainData = [(SEEndPoint *)self shareInitiatorCertificateChainData];
  [coderCopy encodeObject:shareInitiatorCertificateChainData forKey:@"shareInitiatorCertificateChainData"];

  revocationAttestation = [(SEEndPoint *)self revocationAttestation];
  [coderCopy encodeObject:revocationAttestation forKey:@"revocationAttestation"];

  authorizedKeys = [(SEEndPoint *)self authorizedKeys];
  [coderCopy encodeObject:authorizedKeys forKey:@"authorizedKeys"];

  confidentialMailBoxSize = [(SEEndPoint *)self confidentialMailBoxSize];
  [coderCopy encodeObject:confidentialMailBoxSize forKey:@"confidentialMailBoxSize"];

  privateMailBoxSize = [(SEEndPoint *)self privateMailBoxSize];
  [coderCopy encodeObject:privateMailBoxSize forKey:@"privateMailBoxSize"];

  counter = [(SEEndPoint *)self counter];
  [coderCopy encodeObject:counter forKey:@"counter"];

  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];
  [coderCopy encodeObject:privacyKeyIdentifier forKey:@"privacyKeyIdentifier"];

  friendlyName = [(SEEndPoint *)self friendlyName];
  [coderCopy encodeObject:friendlyName forKey:@"friendlyName"];

  keyRole = [(SEEndPoint *)self keyRole];
  [coderCopy encodeObject:keyRole forKey:@"keyRole"];

  readerInfo = [(SEEndPoint *)self readerInfo];
  [coderCopy encodeObject:readerInfo forKey:@"readerInfo"];

  mailboxMapping = [(SEEndPoint *)self mailboxMapping];
  [coderCopy encodeObject:mailboxMapping forKey:@"mailboxMapping"];

  trackingRequest = [(SEEndPoint *)self trackingRequest];
  [coderCopy encodeObject:trackingRequest forKey:@"trackingRequest"];

  trackingReceipt = [(SEEndPoint *)self trackingReceipt];
  [coderCopy encodeObject:trackingReceipt forKey:@"trackingReceipt"];

  deviceConfiguration = [(SEEndPoint *)self deviceConfiguration];
  [coderCopy encodeObject:deviceConfiguration forKey:@"deviceConfiguration"];

  sharingAttestationData = [(SEEndPoint *)self sharingAttestationData];
  [coderCopy encodeObject:sharingAttestationData forKey:@"sharingAttestationData"];

  ownerEphemeralKey = [(SEEndPoint *)self ownerEphemeralKey];
  [coderCopy encodeObject:ownerEphemeralKey forKey:@"ownerEphemeralKey"];

  sharingEncryptedData = [(SEEndPoint *)self sharingEncryptedData];
  [coderCopy encodeObject:sharingEncryptedData forKey:@"sharingEncryptedData"];

  additionalAttestationsDict = [(SEEndPoint *)self additionalAttestationsDict];
  [coderCopy encodeObject:additionalAttestationsDict forKey:@"additionalAttestationsDict"];

  environment = [(SEEndPoint *)self environment];
  [coderCopy encodeObject:environment forKey:@"environment"];

  sharingTokenAvailabilityBitmap = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
  [coderCopy encodeObject:sharingTokenAvailabilityBitmap forKey:@"sharingTokenAvailabilityBitmap"];

  bleUUID = [(SEEndPoint *)self bleUUID];
  [coderCopy encodeObject:bleUUID forKey:@"bleUUID"];

  readerLongTermPublicKeyCertificate = [(SEEndPoint *)self readerLongTermPublicKeyCertificate];
  [coderCopy encodeObject:readerLongTermPublicKeyCertificate forKey:@"readerLongTermPublicKeyCertificate"];

  carOEMProprietaryData = [(SEEndPoint *)self carOEMProprietaryData];
  [coderCopy encodeObject:carOEMProprietaryData forKey:@"carOEMProprietaryData"];

  bleIntroKey = [(SEEndPoint *)self bleIntroKey];
  [coderCopy encodeObject:bleIntroKey forKey:@"bleIntroKey"];

  bleOOBKey = [(SEEndPoint *)self bleOOBKey];
  [coderCopy encodeObject:bleOOBKey forKey:@"bleOOBKey"];

  bleOOBMasterKey = [(SEEndPoint *)self bleOOBMasterKey];
  [coderCopy encodeObject:bleOOBMasterKey forKey:@"bleOOBMasterKey"];

  bleDCKIdentifier = [(SEEndPoint *)self bleDCKIdentifier];
  [coderCopy encodeObject:bleDCKIdentifier forKey:@"bleDCKIdentifier"];

  bleAddress = [(SEEndPoint *)self bleAddress];
  [coderCopy encodeObject:bleAddress forKey:@"bleAddress"];

  blePairingRequest = [(SEEndPoint *)self blePairingRequest];
  [coderCopy encodeObject:blePairingRequest forKey:@"blePairingRequest"];

  supportedRKEFunctions = [(SEEndPoint *)self supportedRKEFunctions];
  [coderCopy encodeObject:supportedRKEFunctions forKey:@"supportedRKEFunctions"];

  appletIdentifier = [(SEEndPoint *)self appletIdentifier];
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];

  terminatedByTaskID = [(SEEndPoint *)self terminatedByTaskID];
  [coderCopy encodeObject:terminatedByTaskID forKey:@"terminatedByTaskID"];

  longTermSharedSecret = [(SEEndPoint *)self longTermSharedSecret];
  [coderCopy encodeObject:longTermSharedSecret forKey:@"longTermSharedSecret"];

  ownerIDSIdentifier = [(SEEndPoint *)self ownerIDSIdentifier];
  [coderCopy encodeObject:ownerIDSIdentifier forKey:@"ownerIDSIdentifier"];

  sharingSessionUUID = [(SEEndPoint *)self sharingSessionUUID];
  [coderCopy encodeObject:sharingSessionUUID forKey:@"sharingSessionUUID"];

  readerConfigID = [(SEEndPoint *)self readerConfigID];
  [coderCopy encodeObject:readerConfigID forKey:@"readerConfigID"];

  hupData = [(SEEndPoint *)self hupData];
  [coderCopy encodeObject:hupData forKey:@"hupData"];

  hupDone = [(SEEndPoint *)self hupDone];
  [coderCopy encodeObject:hupDone forKey:@"hupDone"];

  vehicleSupportedVersionsData = [(SEEndPoint *)self vehicleSupportedVersionsData];
  [coderCopy encodeObject:vehicleSupportedVersionsData forKey:@"vehicleSupportedVersionsData"];

  mailboxSizesPlusAdditionalData = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
  [coderCopy encodeObject:mailboxSizesPlusAdditionalData forKey:@"mailboxSizesPlusAdditionalData"];

  slotIdentifier = [(SEEndPoint *)self slotIdentifier];
  [coderCopy encodeObject:slotIdentifier forKey:@"slotIdentifier"];

  homeUUIDString = [(SEEndPoint *)self homeUUIDString];
  [coderCopy encodeObject:homeUUIDString forKey:@"homeUUIDString"];

  upgradeEndpointJSONData = [(SEEndPoint *)self upgradeEndpointJSONData];
  [coderCopy encodeObject:upgradeEndpointJSONData forKey:@"upgradeEndpointJSONData"];

  anonymizedDsid = [(SEEndPoint *)self anonymizedDsid];
  [coderCopy encodeObject:anonymizedDsid forKey:@"anonymizedDsid"];
}

- (SEEndPoint)initWithCoder:(id)coder
{
  v140 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v13->_endPointType = [coderCopy decodeIntForKey:@"endPointType"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sharingRecords"];
    sharingRecords = v13->_sharingRecords;
    v13->_sharingRecords = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v13->_issuerIdentifier;
    v13->_issuerIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    subjectIdentifier = v13->_subjectIdentifier;
    v13->_subjectIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v13->_publicKey;
    v13->_publicKey = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v13->_publicKeyIdentifier;
    v13->_publicKeyIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPublicKey"];
    privacyPublicKey = v13->_privacyPublicKey;
    v13->_privacyPublicKey = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPublicKeyIdentifier"];
    privacyPublicKeyIdentifier = v13->_privacyPublicKeyIdentifier;
    v13->_privacyPublicKeyIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v13->_configuration;
    v13->_configuration = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v13->_readerIdentifier;
    v13->_readerIdentifier = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v13->_readerPublicKey;
    v13->_readerPublicKey = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v13->_keyIdentifier;
    v13->_keyIdentifier = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v13->_invitationIdentifier;
    v13->_invitationIdentifier = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareInitiatorCertificateChainData"];
    shareInitiatorCertificateChainData = v13->_shareInitiatorCertificateChainData;
    v13->_shareInitiatorCertificateChainData = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyKeyIdentifier"];
    privacyKeyIdentifier = v13->_privacyKeyIdentifier;
    v13->_privacyKeyIdentifier = v42;

    v44 = [coderCopy decodeObjectOfClasses:v8 forKey:@"certificates"];
    certificates = v13->_certificates;
    v13->_certificates = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revocationAttestation"];
    revocationAttestation = v13->_revocationAttestation;
    v13->_revocationAttestation = v46;

    v48 = [coderCopy decodeObjectOfClasses:v8 forKey:@"authorizedKeys"];
    authorizedKeys = v13->_authorizedKeys;
    v13->_authorizedKeys = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidentialMailBoxSize"];
    confidentialMailBoxSize = v13->_confidentialMailBoxSize;
    v13->_confidentialMailBoxSize = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMailBoxSize"];
    privateMailBoxSize = v13->_privateMailBoxSize;
    v13->_privateMailBoxSize = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"counter"];
    counter = v13->_counter;
    v13->_counter = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v13->_friendlyName;
    v13->_friendlyName = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyRole"];
    keyRole = v13->_keyRole;
    v13->_keyRole = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerInfo"];
    readerInfo = v13->_readerInfo;
    v13->_readerInfo = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mailboxMapping"];
    mailboxMapping = v13->_mailboxMapping;
    v13->_mailboxMapping = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v13->_trackingRequest;
    v13->_trackingRequest = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingReceipt"];
    trackingReceipt = v13->_trackingReceipt;
    v13->_trackingReceipt = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceConfiguration"];
    deviceConfiguration = v13->_deviceConfiguration;
    v13->_deviceConfiguration = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingAttestationData"];
    sharingAttestationData = v13->_sharingAttestationData;
    v13->_sharingAttestationData = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerEphemeralKey"];
    ownerEphemeralKey = v13->_ownerEphemeralKey;
    v13->_ownerEphemeralKey = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingEncryptedData"];
    sharingEncryptedData = v13->_sharingEncryptedData;
    v13->_sharingEncryptedData = v74;

    v76 = [coderCopy decodeObjectOfClasses:v12 forKey:@"additionalAttestationsDict"];
    additionalAttestationsDict = v13->_additionalAttestationsDict;
    v13->_additionalAttestationsDict = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v13->_environment;
    v13->_environment = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingTokenAvailabilityBitmap"];
    sharingTokenAvailabilityBitmap = v13->_sharingTokenAvailabilityBitmap;
    v13->_sharingTokenAvailabilityBitmap = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleUUID"];
    bleUUID = v13->_bleUUID;
    v13->_bleUUID = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerLongTermPublicKeyCertificate"];
    readerLongTermPublicKeyCertificate = v13->_readerLongTermPublicKeyCertificate;
    v13->_readerLongTermPublicKeyCertificate = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carOEMProprietaryData"];
    carOEMProprietaryData = v13->_carOEMProprietaryData;
    v13->_carOEMProprietaryData = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleIntroKey"];
    bleIntroKey = v13->_bleIntroKey;
    v13->_bleIntroKey = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleOOBKey"];
    bleOOBKey = v13->_bleOOBKey;
    v13->_bleOOBKey = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleOOBMasterKey"];
    bleOOBMasterKey = v13->_bleOOBMasterKey;
    v13->_bleOOBMasterKey = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleDCKIdentifier"];
    bleDCKIdentifier = v13->_bleDCKIdentifier;
    v13->_bleDCKIdentifier = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleAddress"];
    bleAddress = v13->_bleAddress;
    v13->_bleAddress = v96;

    v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blePairingRequest"];
    blePairingRequest = v13->_blePairingRequest;
    v13->_blePairingRequest = v98;

    v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longTermSharedSecret"];
    longTermSharedSecret = v13->_longTermSharedSecret;
    v13->_longTermSharedSecret = v100;

    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerIDSIdentifier"];
    ownerIDSIdentifier = v13->_ownerIDSIdentifier;
    v13->_ownerIDSIdentifier = v102;

    v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v13->_sharingSessionUUID;
    v13->_sharingSessionUUID = v104;

    v106 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedRKEFunctions"];
    supportedRKEFunctions = v13->_supportedRKEFunctions;
    v13->_supportedRKEFunctions = v106;

    v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v13->_appletIdentifier;
    v13->_appletIdentifier = v108;

    v110 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminatedByTaskID"];
    terminatedByTaskID = v13->_terminatedByTaskID;
    v13->_terminatedByTaskID = v110;

    v112 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerConfigID"];
    readerConfigID = v13->_readerConfigID;
    v13->_readerConfigID = v112;

    v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hupData"];
    hupData = v13->_hupData;
    v13->_hupData = v114;

    v116 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hupDone"];
    hupDone = v13->_hupDone;
    v13->_hupDone = v116;

    v118 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleSupportedVersionsData"];
    vehicleSupportedVersionsData = v13->_vehicleSupportedVersionsData;
    v13->_vehicleSupportedVersionsData = v118;

    v120 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mailboxSizesPlusAdditionalData"];
    mailboxSizesPlusAdditionalData = v13->_mailboxSizesPlusAdditionalData;
    v13->_mailboxSizesPlusAdditionalData = v120;

    v122 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slotIdentifier"];
    slotIdentifier = v13->_slotIdentifier;
    v13->_slotIdentifier = v122;

    v124 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUUIDString"];
    homeUUIDString = v13->_homeUUIDString;
    v13->_homeUUIDString = v124;

    v126 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"upgradeEndpointJSONData"];
    upgradeEndpointJSONData = v13->_upgradeEndpointJSONData;
    v13->_upgradeEndpointJSONData = v126;

    v128 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedDsid"];
    anonymizedDsid = v13->_anonymizedDsid;
    v13->_anonymizedDsid = v128;

    if (!v13->_endPointType)
    {
      v130 = SESDefaultLogObject();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        asHexString = [(NSData *)v13->_publicKeyIdentifier asHexString];
        *buf = 138412290;
        v139 = asHexString;
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

      hexStringAsData = [@"A000000809434343444B417631" hexStringAsData];
      v134 = v13->_appletIdentifier;
      v13->_appletIdentifier = hexStringAsData;
    }
  }

  v135 = *MEMORY[0x1E69E9840];
  return v13;
}

@end