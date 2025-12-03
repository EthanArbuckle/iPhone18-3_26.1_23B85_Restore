@interface PTClassicMicro
+ (BOOL)isError:(uint64_t)error;
+ (id)getACLfromAssetACL:(id)l error:(id *)error;
+ (id)getNonce:(void *)nonce error:;
+ (id)sign:(id)sign designatedKey:(id)key extAuth:(id)auth seHandle:(id)handle seid:(id)seid error:(id *)error;
+ (id)sign:(void *)sign aid:(unsigned int)aid slotNumber:(void *)number assetACL:(void *)l assetACLAttesetation:(unsigned __int8)attesetation operationApprovalVersion:(void *)version extAuth:(void *)auth seHandle:(void *)self0 seid:(void *)self1 error:;
+ (uint64_t)evaluateSecureElementACL:(void *)l assetACLAttesetation:(void *)attesetation extAuth:(void *)auth seid:(void *)seid operation:(void *)operation nonce:(unsigned __int8)nonce operationApprovalVersion:(void *)version outOperationApproval:(void *)self0 outOperationApprovalAttestation:(void *)self1 error:;
+ (uint64_t)select:(void *)select seHandle:(uint64_t)handle error:;
+ (void)executeCommand:(uint64_t)command itemData:(uint64_t)data spec:(void *)spec seHandle:(void *)handle error:;
@end

@implementation PTClassicMicro

+ (id)sign:(id)sign designatedKey:(id)key extAuth:(id)auth seHandle:(id)handle seid:(id)seid error:(id *)error
{
  seidCopy = seid;
  handleCopy = handle;
  authCopy = auth;
  keyCopy = key;
  signCopy = sign;
  v17 = [keyCopy aid];
  slotNumber = [keyCopy slotNumber];
  assetACL = [keyCopy assetACL];
  assetACLAttestation = [keyCopy assetACLAttestation];
  operationApprovalVersion = [keyCopy operationApprovalVersion];

  v22 = [PTClassicMicro sign:signCopy aid:v17 slotNumber:slotNumber assetACL:assetACL assetACLAttesetation:assetACLAttestation operationApprovalVersion:operationApprovalVersion extAuth:authCopy seHandle:handleCopy seid:seidCopy error:error];

  return v22;
}

+ (id)sign:(void *)sign aid:(unsigned int)aid slotNumber:(void *)number assetACL:(void *)l assetACLAttesetation:(unsigned __int8)attesetation operationApprovalVersion:(void *)version extAuth:(void *)auth seHandle:(void *)self0 seid:(void *)self1 error:
{
  v48 = a2;
  signCopy = sign;
  numberCopy = number;
  lCopy = l;
  versionCopy = version;
  authCopy = auth;
  handleCopy = handle;
  objc_opt_self();
  v60[0] = 0;
  v20 = [PTClassicMicro select:signCopy seHandle:authCopy error:v60];
  v21 = v60[0];
  if ((v20 & 1) == 0)
  {
    if (!seid)
    {
      v28 = v48;
      goto LABEL_29;
    }

    v22 = SESDefaultLogObject();
    v35 = *MEMORY[0x1E69E5148];
    asHexString = [signCopy asHexString];
    *seid = SESCreateAndLogError();
    goto LABEL_15;
  }

  v59 = v21;
  v22 = [PTClassicMicro getNonce:authCopy error:&v59];
  v23 = v59;

  if (v22 && !v23)
  {
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v24 = [PTClassicMicro evaluateSecureElementACL:numberCopy assetACLAttesetation:lCopy extAuth:versionCopy seid:handleCopy operation:@"osgn" nonce:v22 operationApprovalVersion:attesetation outOperationApproval:&v58 outOperationApprovalAttestation:&v57 error:&v56];
    asHexString = v58;
    v47 = v57;
    v26 = v56;
    v21 = v26;
    if (v24 && asHexString && v47 && !v26)
    {
      v55 = 1;
      v54 = bswap32(aid) >> 16;
      hexStringAsData = [@"0001" hexStringAsData];
      v53[0] = &v55;
      v53[1] = 1;
      v53[2] = &v54;
      v53[3] = 2;
      v28 = v48;
      v53[4] = [v48 DERItem];
      v53[5] = v29;
      v53[6] = [hexStringAsData DERItem];
      v53[7] = v30;
      v53[8] = [asHexString DERItem];
      v53[9] = v31;
      v53[10] = [v47 DERItem];
      v53[11] = v32;
      v52 = 0;
      v33 = [PTClassicMicro executeCommand:v53 itemData:&PTSignInputSpec spec:authCopy seHandle:&v52 error:?];
      v34 = v52;
      v21 = v34;
      v45 = hexStringAsData;
      v46 = v33;
      if (!v33 || v34)
      {
        if (seid)
        {
          v39 = SESDefaultLogObject();
          v40 = *MEMORY[0x1E69E5148];
          *seid = SESCreateAndLogError();
        }
      }

      else
      {
        [v33 DERItem];
        DERParseSequenceSpec();
        if (seid)
        {
          v41 = SESDefaultLogObject();
          v44 = *MEMORY[0x1E69E5148];
          asHexString2 = [v46 asHexString];
          *seid = SESCreateAndLogError();

          v28 = v48;
        }
      }
    }

    else
    {
      if (seid)
      {
        v37 = SESDefaultLogObject();
        v38 = *MEMORY[0x1E69E5148];
        *seid = SESCreateAndLogError();
      }

      v28 = v48;
    }

    goto LABEL_27;
  }

  if (seid)
  {
    asHexString = SESDefaultLogObject();
    v36 = *MEMORY[0x1E69E5148];
    *seid = SESCreateAndLogError();
    v21 = v23;
LABEL_15:
    v28 = v48;
LABEL_27:

    goto LABEL_28;
  }

  v21 = v23;
  v28 = v48;
LABEL_28:

LABEL_29:

  return 0;
}

+ (uint64_t)select:(void *)select seHandle:(uint64_t)handle error:
{
  selectCopy = select;
  v7 = a2;
  objc_opt_self();
  v8 = [MEMORY[0x1E695DF88] dataWithBytes:&select_seHandle_error__selectHdr length:4];
  [v8 appendU8:{objc_msgSend(v7, "length")}];
  [v8 appendData:v7];

  v9 = [selectCopy transceive:v8 error:handle];

  LODWORD(v7) = [PTClassicMicro isError:v9];
  return v7 ^ 1;
}

+ (id)getNonce:(void *)nonce error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [PTClassicMicro executeCommand:0 itemData:0 spec:v4 seHandle:nonce error:?];

  return v5;
}

+ (uint64_t)evaluateSecureElementACL:(void *)l assetACLAttesetation:(void *)attesetation extAuth:(void *)auth seid:(void *)seid operation:(void *)operation nonce:(unsigned __int8)nonce operationApprovalVersion:(void *)version outOperationApproval:(void *)self0 outOperationApprovalAttestation:(void *)self1 error:
{
  operationCopy = operation;
  seidCopy = seid;
  authCopy = auth;
  attesetationCopy = attesetation;
  lCopy = l;
  v22 = a2;
  objc_opt_self();
  v28 = 0;
  v29 = 0;
  v23 = SSEEvaluateSecureElementACL(attesetationCopy, 0xFFFFFFFFLL, authCopy, v22, lCopy, seidCopy, operationCopy, nonce, &v29, &v28);

  *version = v29;
  v24 = v28;
  *approval = v24;
  if (!v23 && *version && v24)
  {
    return 1;
  }

  if (attestation)
  {
    v25 = SESDefaultLogObject();
    v26 = *MEMORY[0x1E69E5148];
    *attestation = SESCreateAndLogError();
  }

  return 0;
}

+ (void)executeCommand:(uint64_t)command itemData:(uint64_t)data spec:(void *)spec seHandle:(void *)handle error:
{
  v33 = a2;
  specCopy = spec;
  objc_opt_self();
  v11 = 0;
  if (command && data && (encodeSequenceSpec(), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    handle = 0;
  }

  else
  {
    v32 = 1;
    v33 = __rev16(a2);
    v26 = &v32;
    v27 = 1;
    v28 = &v33;
    v29 = 2;
    dERItem = [v11 DERItem];
    v31 = v12;
    v13 = encodeSequenceSpec();
    v25 = 0;
    v24 = 8429696;
    v14 = [MEMORY[0x1E695DF88] dataWithBytes:&v24 length:5];
    [v14 appendU16BE:{objc_msgSend(v13, "length")}];
    [v14 appendData:v13];
    [v14 appendU16BE:0];
    v23 = 0;
    v15 = [specCopy transceive:v14 error:&v23];
    v16 = v23;
    v17 = v16;
    if (!v15 || v16 || [PTClassicMicro isError:v15])
    {
      if (handle)
      {
        v18 = SESDefaultLogObject();
        v19 = *MEMORY[0x1E69E5148];
        asHexString = [v15 asHexString];
        asHexString2 = [v14 asHexString];
        *handle = SESCreateAndLogError();

        handle = 0;
      }
    }

    else
    {
      handle = [v15 subdataWithRange:{0, objc_msgSend(v15, "length") - 2}];
    }
  }

  return handle;
}

+ (BOOL)isError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  if ([v2 length] >= 2)
  {
    bytes = [v2 bytes];
    v3 = *([v2 length] + bytes - 2) != 144;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (id)getACLfromAssetACL:(id)l error:(id *)error
{
  lCopy = l;
  memset(v10, 0, sizeof(v10));
  if (DERParseSequenceSpec())
  {
    if (error)
    {
      v6 = SESDefaultLogObject();
      v7 = *MEMORY[0x1E69E5148];
      base64 = [lCopy base64];
      *error = SESCreateAndLogError();

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x1E695DEF0] dataWithDERItem:v10];
  }

  return error;
}

@end