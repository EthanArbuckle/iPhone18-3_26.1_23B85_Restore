@interface SPAKE2Common
- (BOOL)generateStateWithError:(id *)error;
- (BOOL)processMsg1:(id)msg1 error:(id *)error;
- (BOOL)processMsg2Orig:(id)orig error:(id *)error;
- (BOOL)processMsg2Web:(id)web error:(id *)error;
- (BOOL)setupProver:(id *)prover;
- (BOOL)setupRFCProver:(id *)prover;
- (BOOL)setupRFCVerifier:(id *)verifier;
- (BOOL)setupVerifier:(id *)verifier;
- (SPAKE2Common)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng cp:(ccspake_cp *)cp;
- (id)_decodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error;
- (id)_decodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error;
- (id)_decryptMessageInBase64:(id)base64 info:(id)info error:(id *)error;
- (id)_decryptMessageInBinary:(id)binary info:(id)info error:(id *)error;
- (id)_encodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error;
- (id)_encodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error;
- (id)_encryptMessageAsBase64:(id)base64 info:(id)info error:(id *)error;
- (id)_encryptMessageAsBinary:(id)binary info:(id)info error:(id *)error;
- (id)decryptMessage:(id)message error:(id *)error;
- (id)encryptMessage:(id)message error:(id *)error;
- (id)getMsg1WithError:(id *)error;
- (id)getMsg2WithError:(id *)error;
- (void)dealloc;
@end

@implementation SPAKE2Common

- (SPAKE2Common)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng cp:(ccspake_cp *)cp
{
  saltCopy = salt;
  codeCopy = code;
  v16.receiver = self;
  v16.super_class = SPAKE2Common;
  v12 = [(SPAKE2Common *)&v16 init];
  v13 = v12;
  if (!v12)
  {
LABEL_5:
    cp = v13;
    goto LABEL_6;
  }

  [(SPAKE2Common *)v12 setRng:rng];
  if (cp)
  {
    [(SPAKE2Common *)v13 setCp:cp];
    [(SPAKE2Common *)v13 setMac:ccspake_mac_hkdf_hmac_sha256()];
    [(SPAKE2Common *)v13 cp];
    v14 = ccspake_sizeof_ctx();
    [(SPAKE2Common *)v13 setSpake_ctx:malloc_type_malloc(v14, 0x1EB6F675uLL)];
    if (![(SPAKE2Common *)v13 spake_ctx])
    {
      cp = 0;
      goto LABEL_6;
    }

    [(SPAKE2Common *)v13 setSalt:saltCopy];
    [(SPAKE2Common *)v13 setCode:codeCopy];
    [(SPAKE2Common *)v13 cp];
    [(SPAKE2Common *)v13 setW_size:ccspake_sizeof_w()];
    [(SPAKE2Common *)v13 cp];
    [(SPAKE2Common *)v13 setPoint_size:ccspake_sizeof_point()];
    goto LABEL_5;
  }

LABEL_6:

  return cp;
}

- (BOOL)generateStateWithError:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  code = [(SPAKE2Common *)self code];
  uTF8String = [code UTF8String];

  v7 = &v26 - ((2 * [(SPAKE2Common *)self w_size]+ 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ccscrypt_storage_size();
  if ((v8 & 0x8000000000000000) != 0)
  {
    if (!error)
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
    *error = v18 = 0;
    goto LABEL_13;
  }

  v9 = malloc_type_malloc(v8, 0x59020BCFuLL);
  if (!v9)
  {
    if (!error)
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
  strlen(uTF8String);
  salt = [(SPAKE2Common *)self salt];
  [salt length];
  salt2 = [(SPAKE2Common *)self salt];
  [salt2 bytes];
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

  if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = v13;
    v27 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccscrypt failed: %d", v13];
    v28 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v15 userInfo:v17];

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

- (BOOL)setupProver:(id *)prover
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

  if (prover && v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_prover_init failed: %d", v7, *MEMORY[0x277CCA450]];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *prover = [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v7 userInfo:v10];
  }

  result = v7 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupRFCProver:(id *)prover
{
  v18[1] = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self cp];
  [(SPAKE2Common *)self mac];
  [(SPAKE2Common *)self rng];
  strlen(context);
  strlen(idProver);
  strlen(idVerifier);
  w_size = [(SPAKE2Common *)self w_size];
  v5 = [(SPAKE2Common *)self w0];
  bytes = [v5 bytes];
  v7 = [(SPAKE2Common *)self w1];
  v14 = bytes;
  bytes2 = [v7 bytes];
  v8 = ccspake_prover_initialize();

  if (prover && v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_prover_initialize failed: %d", v8, idVerifier, w_size, v14, bytes2];
    v18[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *prover = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupVerifier:(id *)verifier
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
      if (verifier)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = L;
        v23 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_generate_L failed: %d", L];
        v24 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        *verifier = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

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

      if (verifier)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = v15;
        v21 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_verifier_init failed: %d", v15, v6];
        v22 = v11;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *verifier = [v16 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v17 userInfo:v18];

        goto LABEL_10;
      }
    }
  }

  else if (verifier)
  {
    v13 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"malloc failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *verifier = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v11];
    goto LABEL_10;
  }

  result = 0;
LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupRFCVerifier:(id *)verifier
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
      if (verifier)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = L;
        v27 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_generate_L failed: %d", L];
        v28 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *verifier = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

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
      w_size = [(SPAKE2Common *)self w_size];
      v15 = [(SPAKE2Common *)self w0];
      bytes = [v15 bytes];
      point_size = [(SPAKE2Common *)self point_size];
      v23 = w_size;
      v17 = ccspake_verifier_initialize();

      free(v6);
      if (!v17)
      {
        result = 1;
        goto LABEL_12;
      }

      if (verifier)
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = v17;
        v25 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_verifier_initialize failed: %d", v17, idVerifier, v23, bytes, point_size, v6];
        v26 = v11;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *verifier = [v18 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v19 userInfo:v20];

        goto LABEL_10;
      }
    }
  }

  else if (verifier)
  {
    v13 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"malloc failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *verifier = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v11];
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
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  [raw_session_key length];
  raw_session_key2 = [(SPAKE2Common *)self raw_session_key];
  [raw_session_key2 mutableBytes];
  cc_clear();

  v5.receiver = self;
  v5.super_class = SPAKE2Common;
  [(SPAKE2Common *)&v5 dealloc];
}

- (id)getMsg1WithError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0xD365D7C2uLL);
  if (!v5)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"malloc failed";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v14];

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
    if (!error)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = v8;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_kex_generate failed: %d", v8, *MEMORY[0x277CCA450]];
    v18 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_7:
    error = 0;
    goto LABEL_9;
  }

  error = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{-[SPAKE2Common point_size](self, "point_size")}];
  free(v6);
LABEL_9:
  v15 = *MEMORY[0x277D85DE8];

  return error;
}

- (BOOL)processMsg1:(id)msg1 error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  msg1Copy = msg1;
  [(SPAKE2Common *)self spake_ctx];
  [msg1Copy length];
  [msg1Copy bytes];

  v7 = ccspake_kex_process();
  v8 = v7;
  if (error && v7)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_kex_process failed: %d", v7, *MEMORY[0x277CCA450]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getMsg2WithError:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  v4 = ccspake_mac_compute();
  if (v4)
  {
    if (error)
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = v4;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_generate failed: %d", v4, *MEMORY[0x277CCA450]];
      v13 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *error = [v5 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v6 userInfo:v8];
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

- (BOOL)processMsg2Orig:(id)orig error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  origCopy = orig;
  [(SPAKE2Common *)self spake_ctx];
  [origCopy length];
  [origCopy bytes];

  session_key = ccspake_mac_verify_and_get_session_key();
  if (session_key)
  {
    if (!error)
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
    *error = v12 = 0;
  }

  else
  {
    v10 = [[_SFAESKeySpecifier alloc] initWithBitSize:0];
    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v19 length:16 freeWhenDone:0];
    v13 = [(_SFSymmetricKey *)[_SFAESKey alloc] initWithData:v11 specifier:v10 error:error];
    [(SPAKE2Common *)self setSession_key:v13];

    cc_clear();
    session_key = [(SPAKE2Common *)self session_key];
    v12 = session_key != 0;

    if (session_key)
    {
      v12 = 1;
      [(SPAKE2Common *)self setVerified:1];
    }
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)processMsg2Web:(id)web error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  webCopy = web;
  [(SPAKE2Common *)self spake_ctx];
  [webCopy length];
  [webCopy bytes];

  session_key = ccspake_mac_verify_and_get_session_key();
  if (session_key)
  {
    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_verify_and_get_session_key failed: %d", session_key, *MEMORY[0x277CCA450]];
      v15 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:session_key userInfo:v10];
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

- (id)encryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v8 = [[_SFAuthenticatedEncryptionOperation alloc] initWithKeySpecifier:v7];
  getSessionKey = [(SPAKE2Common *)self getSessionKey];
  salt = [(SPAKE2Common *)self salt];
  v11 = [(_SFAuthenticatedEncryptionOperation *)v8 encrypt:messageCopy withKey:getSessionKey additionalAuthenticatedData:salt error:error];

  if (v11)
  {
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:error];
    v13 = v12;
    if (v12)
    {
      if (error)
      {
        *error = 0;
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

- (id)decryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v8 = [[_SFAuthenticatedEncryptionOperation alloc] initWithKeySpecifier:v7];
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:messageCopy error:error];

  if (v9)
  {
    getSessionKey = [(SPAKE2Common *)self getSessionKey];
    salt = [(SPAKE2Common *)self salt];
    v12 = [(_SFAuthenticatedEncryptionOperation *)v8 decrypt:v9 withKey:getSessionKey additionalAuthenticatedData:salt error:error];

    if (v12)
    {
      if (error)
      {
        *error = 0;
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

- (id)_encodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  binaryCopy = binary;
  infoCopy = info;
  keyCopy = key;
  ccsha256_di();
  [keyCopy length];
  [keyCopy bytes];

  [infoCopy length];
  [infoCopy UTF8String];

  v13 = cchkdf();
  if (!v13)
  {
    errorCopy = error;
    ccaes_gcm_encrypt_mode();
    v16 = [MEMORY[0x277CBEB28] dataWithLength:{12, v39}];
    v19 = [(SPAKE2Common *)self rng];
    (v19->var0)(v19, [v16 length], objc_msgSend(v16, "mutableBytes"));
    v17 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(binaryCopy, "length")}];
    v20 = [MEMORY[0x277CBEB28] dataWithLength:16];
    v34 = 0;
    [v16 length];
    [v16 bytes];
    [binaryCopy length];
    bytes = [binaryCopy bytes];
    mutableBytes = [v17 mutableBytes];
    v31 = [v20 length];
    mutableBytes2 = [v20 mutableBytes];
    v30 = mutableBytes;
    v23 = ccgcm_one_shot();
    cc_clear();
    if (v23)
    {
      if (!error)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = v23;
      v35 = *MEMORY[0x277CCA450];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccgm_one_shot failed: %d", v23, v30, v31, mutableBytes2];
      v36 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *errorCopy = [v24 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v25 userInfo:v27];

      v18 = 0;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v26 appendBytes:&v34 length:{1, bytes, v30, v31, mutableBytes2}];
      [v26 appendData:v16];
      [v26 appendData:v20];
      [v26 appendData:v17];
      v18 = [MEMORY[0x277CBEA90] dataWithData:v26];
    }

LABEL_11:
    goto LABEL_12;
  }

  if (!error)
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
  *error = v18 = 0;
LABEL_12:

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_decodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  binaryCopy = binary;
  keyCopy = key;
  infoCopy = info;
  if ([binaryCopy length] <= 0x1C)
  {
    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47[0] = @"message too short";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      *error = [v12 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-163 userInfo:v13];
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v38 = *[binaryCopy bytes];
  if (v38)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown version: %d", v38];
      v45 = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *error = [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-7 userInfo:v15];

      goto LABEL_7;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  ccsha256_di();
  [keyCopy length];
  [keyCopy bytes];
  [infoCopy length];
  [infoCopy UTF8String];
  v19 = cchkdf();
  if (v19)
  {
    if (!error)
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
    *error = v16 = 0;
  }

  else
  {
    ccaes_gcm_decrypt_mode();
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(binaryCopy length:{"bytes", v43) + 1, 12}];
    v23 = [MEMORY[0x277CBEB28] dataWithBytes:objc_msgSend(binaryCopy length:{"bytes") + 13, 16}];
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(binaryCopy length:{"bytes") + 29, objc_msgSend(binaryCopy, "length") - 29}];
    v26 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v25, "length")}];
    [v24 length];
    v37 = v24;
    [v24 bytes];
    [v25 length];
    bytes = [v25 bytes];
    mutableBytes = [v26 mutableBytes];
    v34 = [v23 length];
    mutableBytes2 = [v23 mutableBytes];
    v33 = mutableBytes;
    v29 = ccgcm_one_shot();
    cc_clear();
    if (v29)
    {
      if (error)
      {
        v36 = MEMORY[0x277CCA9B8];
        v30 = v29;
        v39 = *MEMORY[0x277CCA450];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccgm_one_shot failed: %d", v29, v33, v34, mutableBytes2];
        v40 = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        *error = [v36 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v30 userInfo:v32];
      }

      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CBEA90] dataWithData:{v26, bytes, v33, v34, mutableBytes2}];
    }

    v22 = v37;
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_encryptMessageAsBinary:(id)binary info:(id)info error:(id *)error
{
  infoCopy = info;
  binaryCopy = binary;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _encodeBinary:binaryCopy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

- (id)_decryptMessageInBinary:(id)binary info:(id)info error:(id *)error
{
  infoCopy = info;
  binaryCopy = binary;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _decodeBinary:binaryCopy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

- (id)_encodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error
{
  v6 = [(SPAKE2Common *)self _encodeBinary:base64 withKey:key info:info error:error];
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

- (id)_decodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  infoCopy = info;
  v12 = MEMORY[0x277CBEA90];
  base64Copy = base64;
  v14 = [[v12 alloc] initWithBase64EncodedString:base64Copy options:0];

  if (v14)
  {
    error = [(SPAKE2Common *)self _decodeBinary:v14 withKey:keyCopy info:infoCopy error:error];
  }

  else if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"failed to decode base64";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v15 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-7 userInfo:v16];

    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)_encryptMessageAsBase64:(id)base64 info:(id)info error:(id *)error
{
  infoCopy = info;
  base64Copy = base64;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _encodeBase64:base64Copy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

- (id)_decryptMessageInBase64:(id)base64 info:(id)info error:(id *)error
{
  infoCopy = info;
  base64Copy = base64;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _decodeBase64:base64Copy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

@end