@interface PTClassicKey
+ (id)_withExportedBlob:(id)a3 error:(id *)a4;
+ (id)_withNativePTData:(id)a3 error:(id *)a4;
+ (id)withData:(id)a3 error:(id *)a4;
- ($BE749665CD263385F3F5ED554982D87D)accessControlConstraintsItem;
- ($BE749665CD263385F3F5ED554982D87D)assetACLAttestationItem;
- ($BE749665CD263385F3F5ED554982D87D)assetACLItem;
- ($BE749665CD263385F3F5ED554982D87D)encryptedWrappedKeyBlobItem;
- ($BE749665CD263385F3F5ED554982D87D)keyBlobItem;
- (NSData)keyIdentifier;
- (id)description;
@end

@implementation PTClassicKey

+ (id)withData:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [v5 u8:0];
    if (v6 == 230)
    {
      v7 = [PTClassicKey _withExportedBlob:v5 error:a4];
      goto LABEL_8;
    }

    if (v6 == 48)
    {
      v7 = [PTClassicKey _withNativePTData:v5 error:a4];
LABEL_8:
      a4 = v7;
      goto LABEL_9;
    }
  }

  if (a4)
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

LABEL_9:

  return a4;
}

+ (id)_withNativePTData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_new();
    objc_storeStrong((v7 + 128), a3);
    *(v7 + 120) = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    if (DERParseSequenceSpec())
    {
      if (a4)
      {
        v8 = SESDefaultLogObject();
        v9 = *MEMORY[0x1E69E5148];
        v10 = [v6 base64];
        *a4 = SESCreateAndLogError();
LABEL_14:

        a4 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (DERParseSequenceSpec())
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v8 = SESDefaultLogObject();
      v13 = *MEMORY[0x1E69E5148];
      v10 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v20];
      v14 = [v10 base64];
    }

    else
    {
      if (!DERParseSequenceSpec())
      {
        *(v7 + 168) = v18;
        v17 = v21;
        *(v7 + 184) = v19;
        *(v7 + 136) = v20;
        *(v7 + 152) = v17;
        *(v7 + 200) = 0u;
        a4 = v7;
        goto LABEL_15;
      }

      if (!a4)
      {
        goto LABEL_15;
      }

      v8 = SESDefaultLogObject();
      v15 = *MEMORY[0x1E69E5148];
      v10 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v18];
      v14 = [v10 base64];
    }

    *a4 = SESCreateAndLogError();

    goto LABEL_14;
  }

  if (a4)
  {
    v11 = SESDefaultLogObject();
    v12 = *MEMORY[0x1E69E5148];
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

LABEL_16:

  return a4;
}

+ (id)_withExportedBlob:(id)a3 error:(id *)a4
{
  v6 = a3;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v31 = [v6 DERItem];
  v32 = v7;
  if (!DERDecodeItem())
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3010000000;
    v29 = 0;
    v30 = 0;
    v28 = &unk_1C7CBAD23;
    if (DERDecodeSequenceContentWithBlock() || !v26[5])
    {
      if (!a4)
      {
LABEL_10:
        _Block_object_dispose(&v25, 8);
        goto LABEL_11;
      }

      v10 = SESDefaultLogObject();
      v11 = *MEMORY[0x1E69E5148];
      v12 = [v6 base64];
      v13 = SESCreateAndLogError();
    }

    else
    {
      v10 = objc_opt_new();
      objc_storeStrong((v10 + 128), a3);
      *(v10 + 120) = 1;
      if (DERParseSequenceSpec())
      {
        if (!a4)
        {
          goto LABEL_9;
        }

        v12 = SESDefaultLogObject();
        v15 = *MEMORY[0x1E69E5148];
        v16 = [MEMORY[0x1E695DEF0] dataWithDERItem:v26 + 4];
        v24 = [v16 base64];
        *a4 = SESCreateAndLogError();

        goto LABEL_8;
      }

      v17 = DERLengthOfEncodedSequence() + 32;
      v18 = v26[5];
      v19 = v18 >= v17;
      v20 = v18 - v17;
      if (v19)
      {
        v22 = v26 + 4;
        v26[4] += v17;
        v22[1] = v20;
        DERParseSequenceSpec();
        *(v10 + 200) = 0u;
        a4 = v10;
        goto LABEL_9;
      }

      if (!a4)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = SESDefaultLogObject();
      v21 = *MEMORY[0x1E69E5148];
      v13 = SESCreateAndLogError();
    }

    *a4 = v13;
LABEL_8:

    a4 = 0;
    goto LABEL_9;
  }

  if (a4)
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    v23 = [v6 base64];
    *a4 = SESCreateAndLogError();

    a4 = 0;
  }

LABEL_11:

  return a4;
}

uint64_t __40__PTClassicKey__withExportedBlob_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 0xC00000000000001CLL)
  {
    *(*(*(a1 + 32) + 8) + 32) = *(a2 + 8);
    *a3 = 1;
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PTClassicKey *)self keyNumber];
  v5 = [(PTClassicKey *)self keyIdentifier];
  v6 = [v5 asHexString];
  v7 = [v3 stringWithFormat:@"Key: keyNumber 0x%X keyIdentifier %@ isExported %d", v4, v6, self->_isExportedData];

  return v7;
}

- (NSData)keyIdentifier
{
  v3 = [MEMORY[0x1E695DF88] dataWithLength:32];
  CC_SHA256(self->_ptKeyBlob.publicKey.data, self->_ptKeyBlob.publicKey.length, [v3 mutableBytes]);
  [v3 setLength:16];

  return v3;
}

- ($BE749665CD263385F3F5ED554982D87D)keyBlobItem
{
  objc_copyStruct(v4, &self->_keyBlobItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)encryptedWrappedKeyBlobItem
{
  objc_copyStruct(v4, &self->_encryptedWrappedKeyBlobItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)assetACLItem
{
  objc_copyStruct(v4, &self->_assetACLItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)assetACLAttestationItem
{
  objc_copyStruct(v4, &self->_assetACLAttestationItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($BE749665CD263385F3F5ED554982D87D)accessControlConstraintsItem
{
  objc_copyStruct(v4, &self->_accessControlConstraintsItem, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end