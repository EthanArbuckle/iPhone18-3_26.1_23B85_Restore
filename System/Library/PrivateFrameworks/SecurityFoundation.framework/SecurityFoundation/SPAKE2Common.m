@interface SPAKE2Common
- (BOOL)generateStateWithError:(id *)a3;
- (BOOL)processMsg1:(id)a3 error:(id *)a4;
- (BOOL)processMsg2Orig:(id)a3 error:(id *)a4;
- (BOOL)processMsg2Web:(id)a3 error:(id *)a4;
- (BOOL)setupProver:(id *)a3;
- (BOOL)setupRFCProver:(id *)a3;
- (BOOL)setupRFCVerifier:(id *)a3;
- (BOOL)setupVerifier:(id *)a3;
- (SPAKE2Common)initWithSalt:(id)a3 code:(id)a4 rng:(ccrng_state *)a5 cp:(ccspake_cp *)a6;
- (id)_decodeBase64:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6;
- (id)_decodeBinary:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6;
- (id)_decryptMessageInBase64:(id)a3 info:(id)a4 error:(id *)a5;
- (id)_decryptMessageInBinary:(id)a3 info:(id)a4 error:(id *)a5;
- (id)_encodeBase64:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6;
- (id)_encodeBinary:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6;
- (id)_encryptMessageAsBase64:(id)a3 info:(id)a4 error:(id *)a5;
- (id)_encryptMessageAsBinary:(id)a3 info:(id)a4 error:(id *)a5;
- (id)decryptMessage:(id)a3 error:(id *)a4;
- (id)encryptMessage:(id)a3 error:(id *)a4;
- (id)getMsg1WithError:(id *)a3;
- (id)getMsg2WithError:(id *)a3;
- (void)dealloc;
@end

@implementation SPAKE2Common

- (SPAKE2Common)initWithSalt:(id)a3 code:(id)a4 rng:(ccrng_state *)a5 cp:(ccspake_cp *)a6
{
  v10 = a3;
  v11 = a4;
  v16.receiver = self;
  v16.super_class = SPAKE2Common;
  v12 = [(SPAKE2Common *)&v16 init];
  v13 = v12;
  if (!v12)
  {
LABEL_5:
    a6 = v13;
    goto LABEL_6;
  }

  [(SPAKE2Common *)v12 setRng:a5];
  if (a6)
  {
    [(SPAKE2Common *)v13 setCp:a6];
    [(SPAKE2Common *)v13 setMac:ccspake_mac_hkdf_hmac_sha256()];
    [(SPAKE2Common *)v13 cp];
    v14 = ccspake_sizeof_ctx();
    [(SPAKE2Common *)v13 setSpake_ctx:malloc_type_malloc(v14, 0x1EB6F675uLL)];
    if (![(SPAKE2Common *)v13 spake_ctx])
    {
      a6 = 0;
      goto LABEL_6;
    }

    [(SPAKE2Common *)v13 setSalt:v10];
    [(SPAKE2Common *)v13 setCode:v11];
    [(SPAKE2Common *)v13 cp];
    [(SPAKE2Common *)v13 setW_size:ccspake_sizeof_w()];
    [(SPAKE2Common *)v13 cp];
    [(SPAKE2Common *)v13 setPoint_size:ccspake_sizeof_point()];
    goto LABEL_5;
  }

LABEL_6:

  return a6;
}

- (BOOL)generateStateWithError:(id *)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = [(SPAKE2Common *)self code];
  v6 = [v5 UTF8String];

  v7 = &v26 - ((2 * [(SPAKE2Common *)self w_size]+ 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ccscrypt_storage_size();
  if ((v8 & 0x8000000000000000) != 0)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"sscrypt_storage_size params failed";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v20 = v19;
    v21 = -1;
LABEL_10:
    [v20 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v21 userInfo:v16];
    *a3 = v18 = 0;
    goto LABEL_13;
  }

  v9 = malloc_type_malloc(v8, 0x59020BCFuLL);
  if (!v9)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

    v22 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"malloc failed";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = v22;
    v21 = -8;
    goto LABEL_10;
  }

  v10 = v9;
  strlen(v6);
  v11 = [(SPAKE2Common *)self salt];
  [v11 length];
  v12 = [(SPAKE2Common *)self salt];
  [v12 bytes];
  v13 = ccscrypt();

  free(v10);
  if (!v13)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:{-[SPAKE2Common w_size](self, "w_size")}];
    [(SPAKE2Common *)self setW0:v23];

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v7[-[SPAKE2Common w_size](self length:{"w_size")], -[SPAKE2Common w_size](self, "w_size")}];
    [(SPAKE2Common *)self setW1:v16];
    v18 = 1;
    goto LABEL_13;
  }

  if (a3)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = v13;
    v27 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccscrypt failed: %d", v13];
    v28 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a3 = [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v15 userInfo:v17];

    v18 = 0;
LABEL_13:

    goto LABEL_14;
  }

LABEL_11:
  v18 = 0;
LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)setupProver:(id *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self cp];
  [(SPAKE2Common *)self mac];
  [(SPAKE2Common *)self rng];
  [(SPAKE2Common *)self w_size];
  v5 = [(SPAKE2Common *)self w0];
  [v5 bytes];
  v6 = [(SPAKE2Common *)self w1];
  [v6 bytes];
  v7 = ccspake_prover_init();

  if (a3 && v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_prover_init failed: %d", v7, *MEMORY[0x277CCA450]];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v7 userInfo:v10];
  }

  result = v7 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupRFCProver:(id *)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self cp];
  [(SPAKE2Common *)self mac];
  [(SPAKE2Common *)self rng];
  strlen(context);
  strlen(idProver);
  strlen(idVerifier);
  v4 = [(SPAKE2Common *)self w_size];
  v5 = [(SPAKE2Common *)self w0];
  v6 = [v5 bytes];
  v7 = [(SPAKE2Common *)self w1];
  v14 = v6;
  v15 = [v7 bytes];
  v8 = ccspake_prover_initialize();

  if (a3 && v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_prover_initialize failed: %d", v8, idVerifier, v4, v14, v15];
    v18[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a3 = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupVerifier:(id *)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0xDFF5DE34uLL);
  if (v5)
  {
    v6 = v5;
    [(SPAKE2Common *)self cp];
    [(SPAKE2Common *)self w_size];
    v7 = [(SPAKE2Common *)self w1];
    [v7 bytes];
    [(SPAKE2Common *)self point_size];
    [(SPAKE2Common *)self rng];
    L = ccspake_generate_L();

    if (L)
    {
      free(v6);
      if (a3)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = L;
        v23 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_generate_L failed: %d", L];
        v24 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        *a3 = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_10:
      }
    }

    else
    {
      [(SPAKE2Common *)self spake_ctx];
      [(SPAKE2Common *)self cp];
      [(SPAKE2Common *)self mac];
      [(SPAKE2Common *)self rng];
      [(SPAKE2Common *)self w_size];
      v14 = [(SPAKE2Common *)self w0];
      [v14 bytes];
      [(SPAKE2Common *)self point_size];
      v15 = ccspake_verifier_init();

      free(v6);
      if (!v15)
      {
        result = 1;
        goto LABEL_12;
      }

      if (a3)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = v15;
        v21 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_verifier_init failed: %d", v15, v6];
        v22 = v11;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a3 = [v16 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v17 userInfo:v18];

        goto LABEL_10;
      }
    }
  }

  else if (a3)
  {
    v13 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"malloc failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a3 = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v11];
    goto LABEL_10;
  }

  result = 0;
LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupRFCVerifier:(id *)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0x1C64FC9AuLL);
  if (v5)
  {
    v6 = v5;
    [(SPAKE2Common *)self cp];
    [(SPAKE2Common *)self w_size];
    v7 = [(SPAKE2Common *)self w1];
    [v7 bytes];
    [(SPAKE2Common *)self point_size];
    [(SPAKE2Common *)self rng];
    L = ccspake_generate_L();

    if (L)
    {
      free(v6);
      if (a3)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = L;
        v27 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_generate_L failed: %d", L];
        v28 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *a3 = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_10:
      }
    }

    else
    {
      [(SPAKE2Common *)self spake_ctx];
      [(SPAKE2Common *)self cp];
      [(SPAKE2Common *)self mac];
      [(SPAKE2Common *)self rng];
      strlen(context);
      strlen(idProver);
      strlen(idVerifier);
      v14 = [(SPAKE2Common *)self w_size];
      v15 = [(SPAKE2Common *)self w0];
      v16 = [v15 bytes];
      v24 = [(SPAKE2Common *)self point_size];
      v23 = v14;
      v17 = ccspake_verifier_initialize();

      free(v6);
      if (!v17)
      {
        result = 1;
        goto LABEL_12;
      }

      if (a3)
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = v17;
        v25 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_verifier_initialize failed: %d", v17, idVerifier, v23, v16, v24, v6];
        v26 = v11;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *a3 = [v18 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v19 userInfo:v20];

        goto LABEL_10;
      }
    }
  }

  else if (a3)
  {
    v13 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"malloc failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a3 = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v11];
    goto LABEL_10;
  }

  result = 0;
LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  free([(SPAKE2Common *)self spake_ctx]);
  v3 = [(SPAKE2Common *)self raw_session_key];
  [v3 length];
  v4 = [(SPAKE2Common *)self raw_session_key];
  [v4 mutableBytes];
  cc_clear();

  v5.receiver = self;
  v5.super_class = SPAKE2Common;
  [(SPAKE2Common *)&v5 dealloc];
}

- (id)getMsg1WithError:(id *)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0xD365D7C2uLL);
  if (!v5)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"malloc failed";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a3 = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v14];

    goto LABEL_7;
  }

  v6 = v5;
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self point_size];
  v7 = ccspake_kex_generate();
  if (v7)
  {
    v8 = v7;
    free(v6);
    if (!a3)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = v8;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_kex_generate failed: %d", v8, *MEMORY[0x277CCA450]];
    v18 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a3 = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_7:
    a3 = 0;
    goto LABEL_9;
  }

  a3 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{-[SPAKE2Common point_size](self, "point_size")}];
  free(v6);
LABEL_9:
  v15 = *MEMORY[0x277D85DE8];

  return a3;
}

- (BOOL)processMsg1:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SPAKE2Common *)self spake_ctx];
  [v6 length];
  [v6 bytes];

  v7 = ccspake_kex_process();
  v8 = v7;
  if (a4 && v7)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_kex_process failed: %d", v7, *MEMORY[0x277CCA450]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getMsg2WithError:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  v4 = ccspake_mac_compute();
  if (v4)
  {
    if (a3)
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = v4;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_generate failed: %d", v4, *MEMORY[0x277CCA450]];
      v13 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *a3 = [v5 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v6 userInfo:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:32];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)processMsg2Orig:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SPAKE2Common *)self spake_ctx];
  [v6 length];
  [v6 bytes];

  session_key = ccspake_mac_verify_and_get_session_key();
  if (session_key)
  {
    if (!a4)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = session_key;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_verify_and_get_session_key failed: %d", session_key, *MEMORY[0x277CCA450]];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v9 userInfo:v11];
    *a4 = v12 = 0;
  }

  else
  {
    v10 = [[_SFAESKeySpecifier alloc] initWithBitSize:0];
    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v19 length:16 freeWhenDone:0];
    v13 = [(_SFSymmetricKey *)[_SFAESKey alloc] initWithData:v11 specifier:v10 error:a4];
    [(SPAKE2Common *)self setSession_key:v13];

    cc_clear();
    v14 = [(SPAKE2Common *)self session_key];
    v12 = v14 != 0;

    if (v14)
    {
      v12 = 1;
      [(SPAKE2Common *)self setVerified:1];
    }
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)processMsg2Web:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SPAKE2Common *)self spake_ctx];
  [v6 length];
  [v6 bytes];

  session_key = ccspake_mac_verify_and_get_session_key();
  if (session_key)
  {
    if (a4)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_verify_and_get_session_key failed: %d", session_key, *MEMORY[0x277CCA450]];
      v15 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *a4 = [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:session_key userInfo:v10];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEB28] dataWithBytes:v16 length:32];
    [(SPAKE2Common *)self setRaw_session_key:v11];

    cc_clear();
    [(SPAKE2Common *)self setVerified:1];
  }

  result = session_key == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)encryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v8 = [[_SFAuthenticatedEncryptionOperation alloc] initWithKeySpecifier:v7];
  v9 = [(SPAKE2Common *)self getSessionKey];
  v10 = [(SPAKE2Common *)self salt];
  v11 = [(_SFAuthenticatedEncryptionOperation *)v8 encrypt:v6 withKey:v9 additionalAuthenticatedData:v10 error:a4];

  if (v11)
  {
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:a4];
    v13 = v12;
    if (v12)
    {
      if (a4)
      {
        *a4 = 0;
      }

      v14 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)decryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v8 = [[_SFAuthenticatedEncryptionOperation alloc] initWithKeySpecifier:v7];
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  if (v9)
  {
    v10 = [(SPAKE2Common *)self getSessionKey];
    v11 = [(SPAKE2Common *)self salt];
    v12 = [(_SFAuthenticatedEncryptionOperation *)v8 decrypt:v9 withKey:v10 additionalAuthenticatedData:v11 error:a4];

    if (v12)
    {
      if (a4)
      {
        *a4 = 0;
      }

      v13 = v12;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_encodeBinary:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a4;
  ccsha256_di();
  [v12 length];
  [v12 bytes];

  [v11 length];
  [v11 UTF8String];

  v13 = cchkdf();
  if (!v13)
  {
    v33 = a6;
    ccaes_gcm_encrypt_mode();
    v16 = [MEMORY[0x277CBEB28] dataWithLength:{12, v39}];
    v19 = [(SPAKE2Common *)self rng];
    (v19->var0)(v19, [v16 length], objc_msgSend(v16, "mutableBytes"));
    v17 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v10, "length")}];
    v20 = [MEMORY[0x277CBEB28] dataWithLength:16];
    v34 = 0;
    [v16 length];
    [v16 bytes];
    [v10 length];
    v21 = [v10 bytes];
    v22 = [v17 mutableBytes];
    v31 = [v20 length];
    v32 = [v20 mutableBytes];
    v30 = v22;
    v23 = ccgcm_one_shot();
    cc_clear();
    if (v23)
    {
      if (!a6)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = v23;
      v35 = *MEMORY[0x277CCA450];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccgm_one_shot failed: %d", v23, v30, v31, v32];
      v36 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *v33 = [v24 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v25 userInfo:v27];

      v18 = 0;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v26 appendBytes:&v34 length:{1, v21, v30, v31, v32}];
      [v26 appendData:v16];
      [v26 appendData:v20];
      [v26 appendData:v17];
      v18 = [MEMORY[0x277CBEA90] dataWithData:v26];
    }

LABEL_11:
    goto LABEL_12;
  }

  if (!a6)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = v13;
  v37 = *MEMORY[0x277CCA450];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"cchkdf failed: %d", v13];
  v38 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v15 userInfo:v17];
  *a6 = v18 = 0;
LABEL_12:

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_decodeBinary:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6
{
  v47[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 length] <= 0x1C)
  {
    if (a6)
    {
      v12 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47[0] = @"message too short";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      *a6 = [v12 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-163 userInfo:v13];
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v38 = *[v9 bytes];
  if (v38)
  {
    if (a6)
    {
      v14 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown version: %d", v38];
      v45 = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *a6 = [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-7 userInfo:v15];

      goto LABEL_7;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  ccsha256_di();
  [v10 length];
  [v10 bytes];
  [v11 length];
  [v11 UTF8String];
  v19 = cchkdf();
  if (v19)
  {
    if (!a6)
    {
      goto LABEL_8;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = v19;
    v41 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"cchkdf failed: %d", v19];
    v42 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [v20 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v21 userInfo:v23];
    *a6 = v16 = 0;
  }

  else
  {
    ccaes_gcm_decrypt_mode();
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes", v43) + 1, 12}];
    v23 = [MEMORY[0x277CBEB28] dataWithBytes:objc_msgSend(v9 length:{"bytes") + 13, 16}];
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes") + 29, objc_msgSend(v9, "length") - 29}];
    v26 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v25, "length")}];
    [v24 length];
    v37 = v24;
    [v24 bytes];
    [v25 length];
    v27 = [v25 bytes];
    v28 = [v26 mutableBytes];
    v34 = [v23 length];
    v35 = [v23 mutableBytes];
    v33 = v28;
    v29 = ccgcm_one_shot();
    cc_clear();
    if (v29)
    {
      if (a6)
      {
        v36 = MEMORY[0x277CCA9B8];
        v30 = v29;
        v39 = *MEMORY[0x277CCA450];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccgm_one_shot failed: %d", v29, v33, v34, v35];
        v40 = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        *a6 = [v36 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v30 userInfo:v32];
      }

      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CBEA90] dataWithData:{v26, v27, v33, v34, v35}];
    }

    v22 = v37;
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_encryptMessageAsBinary:(id)a3 info:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _encodeBinary:v9 withKey:v10 info:v8 error:a5];

  return v11;
}

- (id)_decryptMessageInBinary:(id)a3 info:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _decodeBinary:v9 withKey:v10 info:v8 error:a5];

  return v11;
}

- (id)_encodeBase64:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6
{
  v6 = [(SPAKE2Common *)self _encodeBinary:a3 withKey:a4 info:a5 error:a6];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_decodeBase64:(id)a3 withKey:(id)a4 info:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CBEA90];
  v13 = a3;
  v14 = [[v12 alloc] initWithBase64EncodedString:v13 options:0];

  if (v14)
  {
    a6 = [(SPAKE2Common *)self _decodeBinary:v14 withKey:v10 info:v11 error:a6];
  }

  else if (a6)
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"failed to decode base64";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a6 = [v15 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-7 userInfo:v16];

    a6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return a6;
}

- (id)_encryptMessageAsBase64:(id)a3 info:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _encodeBase64:v9 withKey:v10 info:v8 error:a5];

  return v11;
}

- (id)_decryptMessageInBase64:(id)a3 info:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _decodeBase64:v9 withKey:v10 info:v8 error:a5];

  return v11;
}

@end