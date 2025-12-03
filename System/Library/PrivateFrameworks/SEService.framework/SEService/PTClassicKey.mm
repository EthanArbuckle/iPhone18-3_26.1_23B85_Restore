@interface PTClassicKey
+ (id)_withExportedBlob:(id)blob error:(id *)error;
+ (id)_withNativePTData:(id)data error:(id *)error;
+ (id)withData:(id)data error:(id *)error;
- ($BE749665CD263385F3F5ED554982D87D)accessControlConstraintsItem;
- ($BE749665CD263385F3F5ED554982D87D)assetACLAttestationItem;
- ($BE749665CD263385F3F5ED554982D87D)assetACLItem;
- ($BE749665CD263385F3F5ED554982D87D)encryptedWrappedKeyBlobItem;
- ($BE749665CD263385F3F5ED554982D87D)keyBlobItem;
- (NSData)keyIdentifier;
- (id)description;
@end

@implementation PTClassicKey

+ (id)withData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v6 = [dataCopy u8:0];
    if (v6 == 230)
    {
      v7 = [PTClassicKey _withExportedBlob:dataCopy error:error];
      goto LABEL_8;
    }

    if (v6 == 48)
    {
      v7 = [PTClassicKey _withNativePTData:dataCopy error:error];
LABEL_8:
      error = v7;
      goto LABEL_9;
    }
  }

  if (error)
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();

    error = 0;
  }

LABEL_9:

  return error;
}

+ (id)_withNativePTData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = objc_opt_new();
    objc_storeStrong((v7 + 128), data);
    *(v7 + 120) = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    if (DERParseSequenceSpec())
    {
      if (error)
      {
        v8 = SESDefaultLogObject();
        v9 = *MEMORY[0x1E69E5148];
        base64 = [dataCopy base64];
        *error = SESCreateAndLogError();
LABEL_14:

        error = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (DERParseSequenceSpec())
    {
      if (!error)
      {
        goto LABEL_15;
      }

      v8 = SESDefaultLogObject();
      v13 = *MEMORY[0x1E69E5148];
      base64 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v20];
      v10Base64 = [base64 base64];
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
        error = v7;
        goto LABEL_15;
      }

      if (!error)
      {
        goto LABEL_15;
      }

      v8 = SESDefaultLogObject();
      v15 = *MEMORY[0x1E69E5148];
      base64 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v18];
      v10Base64 = [base64 base64];
    }

    *error = SESCreateAndLogError();

    goto LABEL_14;
  }

  if (error)
  {
    v11 = SESDefaultLogObject();
    v12 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();

    error = 0;
  }

LABEL_16:

  return error;
}

+ (id)_withExportedBlob:(id)blob error:(id *)error
{
  blobCopy = blob;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  dERItem = [blobCopy DERItem];
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
      if (!error)
      {
LABEL_10:
        _Block_object_dispose(&v25, 8);
        goto LABEL_11;
      }

      v10 = SESDefaultLogObject();
      v11 = *MEMORY[0x1E69E5148];
      base64 = [blobCopy base64];
      v13 = SESCreateAndLogError();
    }

    else
    {
      v10 = objc_opt_new();
      objc_storeStrong((v10 + 128), blob);
      *(v10 + 120) = 1;
      if (DERParseSequenceSpec())
      {
        if (!error)
        {
          goto LABEL_9;
        }

        base64 = SESDefaultLogObject();
        v15 = *MEMORY[0x1E69E5148];
        v16 = [MEMORY[0x1E695DEF0] dataWithDERItem:v26 + 4];
        base642 = [v16 base64];
        *error = SESCreateAndLogError();

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
        error = v10;
        goto LABEL_9;
      }

      if (!error)
      {
LABEL_9:

        goto LABEL_10;
      }

      base64 = SESDefaultLogObject();
      v21 = *MEMORY[0x1E69E5148];
      v13 = SESCreateAndLogError();
    }

    *error = v13;
LABEL_8:

    error = 0;
    goto LABEL_9;
  }

  if (error)
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    base643 = [blobCopy base64];
    *error = SESCreateAndLogError();

    error = 0;
  }

LABEL_11:

  return error;
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
  keyNumber = [(PTClassicKey *)self keyNumber];
  keyIdentifier = [(PTClassicKey *)self keyIdentifier];
  asHexString = [keyIdentifier asHexString];
  v7 = [v3 stringWithFormat:@"Key: keyNumber 0x%X keyIdentifier %@ isExported %d", keyNumber, asHexString, self->_isExportedData];

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