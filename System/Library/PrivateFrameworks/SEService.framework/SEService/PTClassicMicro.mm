@interface PTClassicMicro
+ (BOOL)isError:(uint64_t)a1;
+ (id)getACLfromAssetACL:(id)a3 error:(id *)a4;
+ (id)getNonce:(void *)a3 error:;
+ (id)sign:(id)a3 designatedKey:(id)a4 extAuth:(id)a5 seHandle:(id)a6 seid:(id)a7 error:(id *)a8;
+ (id)sign:(void *)a3 aid:(unsigned int)a4 slotNumber:(void *)a5 assetACL:(void *)a6 assetACLAttesetation:(unsigned __int8)a7 operationApprovalVersion:(void *)a8 extAuth:(void *)a9 seHandle:(void *)a10 seid:(void *)a11 error:;
+ (uint64_t)evaluateSecureElementACL:(void *)a3 assetACLAttesetation:(void *)a4 extAuth:(void *)a5 seid:(void *)a6 operation:(void *)a7 nonce:(unsigned __int8)a8 operationApprovalVersion:(void *)a9 outOperationApproval:(void *)a10 outOperationApprovalAttestation:(void *)a11 error:;
+ (uint64_t)select:(void *)a3 seHandle:(uint64_t)a4 error:;
+ (void)executeCommand:(uint64_t)a3 itemData:(uint64_t)a4 spec:(void *)a5 seHandle:(void *)a6 error:;
@end

@implementation PTClassicMicro

+ (id)sign:(id)a3 designatedKey:(id)a4 extAuth:(id)a5 seHandle:(id)a6 seid:(id)a7 error:(id *)a8
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v15 aid];
  v18 = [v15 slotNumber];
  v19 = [v15 assetACL];
  v20 = [v15 assetACLAttestation];
  v21 = [v15 operationApprovalVersion];

  v22 = [PTClassicMicro sign:v16 aid:v17 slotNumber:v18 assetACL:v19 assetACLAttesetation:v20 operationApprovalVersion:v21 extAuth:v14 seHandle:v13 seid:v12 error:a8];

  return v22;
}

+ (id)sign:(void *)a3 aid:(unsigned int)a4 slotNumber:(void *)a5 assetACL:(void *)a6 assetACLAttesetation:(unsigned __int8)a7 operationApprovalVersion:(void *)a8 extAuth:(void *)a9 seHandle:(void *)a10 seid:(void *)a11 error:
{
  v48 = a2;
  v17 = a3;
  v51 = a5;
  v50 = a6;
  v49 = a8;
  v18 = a9;
  v19 = a10;
  objc_opt_self();
  v60[0] = 0;
  v20 = [PTClassicMicro select:v17 seHandle:v18 error:v60];
  v21 = v60[0];
  if ((v20 & 1) == 0)
  {
    if (!a11)
    {
      v28 = v48;
      goto LABEL_29;
    }

    v22 = SESDefaultLogObject();
    v35 = *MEMORY[0x1E69E5148];
    v25 = [v17 asHexString];
    *a11 = SESCreateAndLogError();
    goto LABEL_15;
  }

  v59 = v21;
  v22 = [PTClassicMicro getNonce:v18 error:&v59];
  v23 = v59;

  if (v22 && !v23)
  {
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v24 = [PTClassicMicro evaluateSecureElementACL:v51 assetACLAttesetation:v50 extAuth:v49 seid:v19 operation:@"osgn" nonce:v22 operationApprovalVersion:a7 outOperationApproval:&v58 outOperationApprovalAttestation:&v57 error:&v56];
    v25 = v58;
    v47 = v57;
    v26 = v56;
    v21 = v26;
    if (v24 && v25 && v47 && !v26)
    {
      v55 = 1;
      v54 = bswap32(a4) >> 16;
      v27 = [@"0001" hexStringAsData];
      v53[0] = &v55;
      v53[1] = 1;
      v53[2] = &v54;
      v53[3] = 2;
      v28 = v48;
      v53[4] = [v48 DERItem];
      v53[5] = v29;
      v53[6] = [v27 DERItem];
      v53[7] = v30;
      v53[8] = [v25 DERItem];
      v53[9] = v31;
      v53[10] = [v47 DERItem];
      v53[11] = v32;
      v52 = 0;
      v33 = [PTClassicMicro executeCommand:v53 itemData:&PTSignInputSpec spec:v18 seHandle:&v52 error:?];
      v34 = v52;
      v21 = v34;
      v45 = v27;
      v46 = v33;
      if (!v33 || v34)
      {
        if (a11)
        {
          v39 = SESDefaultLogObject();
          v40 = *MEMORY[0x1E69E5148];
          *a11 = SESCreateAndLogError();
        }
      }

      else
      {
        [v33 DERItem];
        DERParseSequenceSpec();
        if (a11)
        {
          v41 = SESDefaultLogObject();
          v44 = *MEMORY[0x1E69E5148];
          v43 = [v46 asHexString];
          *a11 = SESCreateAndLogError();

          v28 = v48;
        }
      }
    }

    else
    {
      if (a11)
      {
        v37 = SESDefaultLogObject();
        v38 = *MEMORY[0x1E69E5148];
        *a11 = SESCreateAndLogError();
      }

      v28 = v48;
    }

    goto LABEL_27;
  }

  if (a11)
  {
    v25 = SESDefaultLogObject();
    v36 = *MEMORY[0x1E69E5148];
    *a11 = SESCreateAndLogError();
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

+ (uint64_t)select:(void *)a3 seHandle:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [MEMORY[0x1E695DF88] dataWithBytes:&select_seHandle_error__selectHdr length:4];
  [v8 appendU8:{objc_msgSend(v7, "length")}];
  [v8 appendData:v7];

  v9 = [v6 transceive:v8 error:a4];

  LODWORD(v7) = [PTClassicMicro isError:v9];
  return v7 ^ 1;
}

+ (id)getNonce:(void *)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [PTClassicMicro executeCommand:0 itemData:0 spec:v4 seHandle:a3 error:?];

  return v5;
}

+ (uint64_t)evaluateSecureElementACL:(void *)a3 assetACLAttesetation:(void *)a4 extAuth:(void *)a5 seid:(void *)a6 operation:(void *)a7 nonce:(unsigned __int8)a8 operationApprovalVersion:(void *)a9 outOperationApproval:(void *)a10 outOperationApprovalAttestation:(void *)a11 error:
{
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = a2;
  objc_opt_self();
  v28 = 0;
  v29 = 0;
  v23 = SSEEvaluateSecureElementACL(v20, 0xFFFFFFFFLL, v19, v22, v21, v18, v17, a8, &v29, &v28);

  *a9 = v29;
  v24 = v28;
  *a10 = v24;
  if (!v23 && *a9 && v24)
  {
    return 1;
  }

  if (a11)
  {
    v25 = SESDefaultLogObject();
    v26 = *MEMORY[0x1E69E5148];
    *a11 = SESCreateAndLogError();
  }

  return 0;
}

+ (void)executeCommand:(uint64_t)a3 itemData:(uint64_t)a4 spec:(void *)a5 seHandle:(void *)a6 error:
{
  v33 = a2;
  v10 = a5;
  objc_opt_self();
  v11 = 0;
  if (a3 && a4 && (encodeSequenceSpec(), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    a6 = 0;
  }

  else
  {
    v32 = 1;
    v33 = __rev16(a2);
    v26 = &v32;
    v27 = 1;
    v28 = &v33;
    v29 = 2;
    v30 = [v11 DERItem];
    v31 = v12;
    v13 = encodeSequenceSpec();
    v25 = 0;
    v24 = 8429696;
    v14 = [MEMORY[0x1E695DF88] dataWithBytes:&v24 length:5];
    [v14 appendU16BE:{objc_msgSend(v13, "length")}];
    [v14 appendData:v13];
    [v14 appendU16BE:0];
    v23 = 0;
    v15 = [v10 transceive:v14 error:&v23];
    v16 = v23;
    v17 = v16;
    if (!v15 || v16 || [PTClassicMicro isError:v15])
    {
      if (a6)
      {
        v18 = SESDefaultLogObject();
        v19 = *MEMORY[0x1E69E5148];
        v20 = [v15 asHexString];
        v22 = [v14 asHexString];
        *a6 = SESCreateAndLogError();

        a6 = 0;
      }
    }

    else
    {
      a6 = [v15 subdataWithRange:{0, objc_msgSend(v15, "length") - 2}];
    }
  }

  return a6;
}

+ (BOOL)isError:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 length] >= 2)
  {
    v4 = [v2 bytes];
    v3 = *([v2 length] + v4 - 2) != 144;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (id)getACLfromAssetACL:(id)a3 error:(id *)a4
{
  v5 = a3;
  memset(v10, 0, sizeof(v10));
  if (DERParseSequenceSpec())
  {
    if (a4)
    {
      v6 = SESDefaultLogObject();
      v7 = *MEMORY[0x1E69E5148];
      v9 = [v5 base64];
      *a4 = SESCreateAndLogError();

      a4 = 0;
    }
  }

  else
  {
    a4 = [MEMORY[0x1E695DEF0] dataWithDERItem:v10];
  }

  return a4;
}

@end