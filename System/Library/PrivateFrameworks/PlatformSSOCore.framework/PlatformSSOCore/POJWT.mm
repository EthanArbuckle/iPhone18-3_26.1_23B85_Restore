@interface POJWT
- (POJWT)initWithString:(id)string;
- (__SecKey)decodeEphemeralPublicKey;
- (id)stringRepresentation;
@end

@implementation POJWT

- (POJWT)initWithString:(id)string
{
  stringCopy = string;
  v34.receiver = self;
  v34.super_class = POJWT;
  v5 = [(POJWT *)&v34 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [stringCopy componentsSeparatedByString:@"."];
  if (![v6 count])
  {
    v23 = __24__POJWT_initWithString___block_invoke();

LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  rawHeader = v5->_rawHeader;
  v5->_rawHeader = v7;

  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v10 = [v9 psso_initWithBase64URLEncodedString:v5->_rawHeader];

  if (v10)
  {
    v11 = [[POJWTHeader alloc] initWithJWTData:v10];
    decodedHeader = v5->_decodedHeader;
    v5->_decodedHeader = v11;
  }

  v13 = [v6 count];
  if (v13 == 3)
  {
    v14 = 0;
    v19 = 64;
    v20 = 2;
    v21 = 48;
    v22 = 1;
    goto LABEL_10;
  }

  if (v13 != 5)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __24__POJWT_initWithString___block_invoke_7;
    v32[3] = &unk_279A3DC48;
    v33 = v6;
    v29 = v6;
    v30 = __24__POJWT_initWithString___block_invoke_7(v32);

    goto LABEL_13;
  }

  v14 = 1;
  v15 = [v6 objectAtIndexedSubscript:1];
  rawEncryptedKey = v5->_rawEncryptedKey;
  v5->_rawEncryptedKey = v15;

  v17 = [v6 objectAtIndexedSubscript:2];
  rawIV = v5->_rawIV;
  v5->_rawIV = v17;

  v19 = 72;
  v20 = 4;
  v21 = 56;
  v22 = 3;
LABEL_10:
  v24 = [v6 objectAtIndexedSubscript:v22];
  v25 = *(&v5->super.isa + v21);
  *(&v5->super.isa + v21) = v24;

  v26 = [v6 objectAtIndexedSubscript:v20];
  v27 = *(&v5->super.isa + v19);
  *(&v5->super.isa + v19) = v26;

  v5->_jwe = v14;
LABEL_11:
  v28 = v5;
LABEL_14:

  return v28;
}

id __24__POJWT_initWithString___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing JWT parts."];
  v1 = PO_LOG_POJWT();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POJWT_initWithString___block_invoke_7(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Incorrect number of JWT parts."];
  v3 = PO_LOG_POJWT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_7_cold_1(v2, a1, v3);
  }

  return v2;
}

- (id)stringRepresentation
{
  isJWE = [(POJWT *)self isJWE];
  v4 = MEMORY[0x277CCACA8];
  rawHeader = [(POJWT *)self rawHeader];
  if (isJWE)
  {
    rawEncryptedKey = [(POJWT *)self rawEncryptedKey];
    rawIV = [(POJWT *)self rawIV];
    rawCipherText = [(POJWT *)self rawCipherText];
    rawAuthenticationTag = [(POJWT *)self rawAuthenticationTag];
    v10 = [v4 stringWithFormat:@"%@.%@.%@.%@.%@", rawHeader, rawEncryptedKey, rawIV, rawCipherText, rawAuthenticationTag];
  }

  else
  {
    rawEncryptedKey = [(POJWT *)self rawBody];
    rawIV = [(POJWT *)self rawSignature];
    v10 = [v4 stringWithFormat:@"%@.%@.%@", rawHeader, rawEncryptedKey, rawIV];
  }

  return v10;
}

- (__SecKey)decodeEphemeralPublicKey
{
  v28[2] = *MEMORY[0x277D85DE8];
  error = 0;
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  decodedHeader = [(POJWT *)self decodedHeader];
  v5 = [decodedHeader epk];
  v6 = [v5 objectForKeyedSubscript:@"x"];
  v7 = [v3 psso_initWithBase64URLEncodedString:v6];

  v8 = objc_alloc(MEMORY[0x277CBEA90]);
  decodedHeader2 = [(POJWT *)self decodedHeader];
  v10 = [decodedHeader2 epk];
  v11 = [v10 objectForKeyedSubscript:@"y"];
  v12 = [v8 psso_initWithBase64URLEncodedString:v11];

  if (!v7 || [v7 length] != 32)
  {
    v20 = __33__POJWT_decodeEphemeralPublicKey__block_invoke();
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if (!v12 || [v12 length] != 32)
  {
    v21 = __33__POJWT_decodeEphemeralPublicKey__block_invoke_30();
    goto LABEL_10;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v25 = 4;
  [v13 appendBytes:&v25 length:1];
  [v13 appendData:v7];
  [v13 appendData:v12];
  v14 = *MEMORY[0x277CDC040];
  v15 = *MEMORY[0x277CDBFE0];
  v27[0] = *MEMORY[0x277CDC028];
  v27[1] = v15;
  v16 = *MEMORY[0x277CDC000];
  v28[0] = v14;
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v18 = SecKeyCreateWithData(v13, v17, &error);
  if (error)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __33__POJWT_decodeEphemeralPublicKey__block_invoke_38;
    v24[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v24[4] = error;
    v19 = __33__POJWT_decodeEphemeralPublicKey__block_invoke_38(v24);
  }

LABEL_11:
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

id __33__POJWT_decodeEphemeralPublicKey__block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"epk X value is missing or invalid when decrypting JWT."];
  v1 = PO_LOG_POJWT();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __33__POJWT_decodeEphemeralPublicKey__block_invoke_30()
{
  v0 = [POError errorWithCode:-1008 description:@"epk Y value is missing or invalid when decrypting JWT."];
  v1 = PO_LOG_POJWT();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __33__POJWT_decodeEphemeralPublicKey__block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error importing epk when decrypting JWT"];

  v3 = PO_LOG_POJWT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

void __24__POJWT_initWithString___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25E8B1000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __24__POJWT_initWithString___block_invoke_7_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a2 + 32), "count")}];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end