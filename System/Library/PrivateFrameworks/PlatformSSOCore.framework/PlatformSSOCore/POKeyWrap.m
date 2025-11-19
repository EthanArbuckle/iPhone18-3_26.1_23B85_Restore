@interface POKeyWrap
- (POKeyWrap)init;
- (id)unwrapBlob:(id)a3;
- (id)wrapBlob:(id)a3;
@end

@implementation POKeyWrap

- (POKeyWrap)init
{
  v3.receiver = self;
  v3.super_class = POKeyWrap;
  return [(POKeyWrap *)&v3 init];
}

- (id)wrapBlob:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] < 0xFFFFFF80)
  {
    v5 = [v3 length];
    v6 = *MEMORY[0x277CDC540];
    if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, bytes) && !SecRandomCopyBytes(v6, 0x10uLL, &v49))
    {
      HIDWORD(v47) = 128;
      v8 = aks_wrap_key(bytes, 32, 13, -1, __src, &v47 + 4, 0, v7, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v8)
      {
        v9 = v8;
        memset_s(bytes, 0, 32, 0x20uLL);
        LODWORD(v47) = v9;
        v10 = __22__POKeyWrap_wrapBlob___block_invoke_2();
      }

      else
      {
        v11 = HIDWORD(v47);
        if (HIDWORD(v47) < 0x81)
        {
          v13 = HIDWORD(v47) + 20 + v5;
          v14 = __CFADD__(HIDWORD(v47) + 20, v5);
          v15 = v13 + 16;
          v16 = v13 >= 0xFFFFFFFFFFFFFFF0;
          if (v14 || v16)
          {
            memset_s(bytes, 0, 32, 0x20uLL);
            v22 = __22__POKeyWrap_wrapBlob___block_invoke_11();
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v15];
            v18 = v17;
            if (!v17)
            {
              memset_s(bytes, 0, 32, 0x20uLL);
              v23 = __22__POKeyWrap_wrapBlob___block_invoke_18();
              goto LABEL_26;
            }

            v19 = [v17 mutableBytes];
            *v19 = v11;
            if (v11)
            {
              v20 = v19 + 1;
              memcpy(v19 + 1, __src, v11);
              *(v20 + v11) = v49;
              if ([v3 bytes] || !v5)
              {
                [v3 bytes];
                v25 = CCCryptorGCMOneshotEncrypt();
                memset_s(bytes, 0, 32, 0x20uLL);
                if (!v25)
                {
                  goto LABEL_26;
                }

                v26 = __22__POKeyWrap_wrapBlob___block_invoke_36();
              }

              else
              {
                memset_s(bytes, 0, 32, 0x20uLL);
                v21 = __22__POKeyWrap_wrapBlob___block_invoke_30();
              }
            }

            else
            {
              memset_s(bytes, 0, 32, 0x20uLL);
              v24 = __22__POKeyWrap_wrapBlob___block_invoke_24();
            }
          }
        }

        else
        {
          memset_s(bytes, 0, 32, 0x20uLL);
          v12 = __22__POKeyWrap_wrapBlob___block_invoke_7();
        }
      }
    }
  }

  else
  {
    v4 = __22__POKeyWrap_wrapBlob___block_invoke();
  }

  v18 = 0;
LABEL_26:

  v27 = *MEMORY[0x277D85DE8];

  return v18;
}

id __22__POKeyWrap_wrapBlob___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Input blob too large for wrapping"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with wrap key size"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_7()
{
  v0 = [POError errorWithCode:-1001 description:@"Wrapped key size exceeds maximum allowed size"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_11()
{
  v0 = [POError errorWithCode:-1001 description:@"Integer overflow in blob size calculation"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_18()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to allocate memory for wrapped blob"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_24()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid wrapped key size of 0"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_30()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid input blob with null bytes but non-zero length"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __22__POKeyWrap_wrapBlob___block_invoke_36()
{
  v0 = [POError errorWithCode:-1001 description:@"Crypto error wrapping key"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

- (id)unwrapBlob:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 length];
  v5 = [v3 bytes];

  if (v4 <= 0xF)
  {
    v6 = __24__POKeyWrap_unwrapBlob___block_invoke();
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFCLL) == 0x10)
  {
    v7 = __24__POKeyWrap_unwrapBlob___block_invoke_51();
    goto LABEL_13;
  }

  v10 = *v5;
  v9 = v5 + 1;
  v8 = v10;
  v11 = v4 - 20 - v10;
  if (v4 - 20 < v10)
  {
    v12 = __24__POKeyWrap_unwrapBlob___block_invoke_57();
    goto LABEL_13;
  }

  v21 = 32;
  if (aks_unwrap_key(v9, v8, 13, -1, __s, &v21))
  {
    memset_s(__s, 0, 32, 0x20uLL);
    v13 = __24__POKeyWrap_unwrapBlob___block_invoke_63();
    goto LABEL_13;
  }

  if (v21 != 32)
  {
    memset_s(__s, 0, 32, 0x20uLL);
    v15 = __24__POKeyWrap_unwrapBlob___block_invoke_67();
    goto LABEL_13;
  }

  if (v11 <= 0xF)
  {
    memset_s(__s, 0, 32, 0x20uLL);
    v14 = __24__POKeyWrap_unwrapBlob___block_invoke_73();
    goto LABEL_13;
  }

  v16 = [MEMORY[0x277CBEB28] dataWithLength:v11 - 16];
  [v16 mutableBytes];
  v19 = CCCryptorGCMOneshotDecrypt();
  memset_s(__s, 0, 32, 0x20uLL);
  if (v19)
  {
    v20 = __24__POKeyWrap_unwrapBlob___block_invoke_79();
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __24__POKeyWrap_unwrapBlob___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap key tag size"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_51()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap key size data"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_57()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with wrap key data"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_63()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrapping key"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_67()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap key size"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_73()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with unwrap data size"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __24__POKeyWrap_unwrapBlob___block_invoke_79()
{
  v0 = [POError errorWithCode:-1001 description:@"Crypto error unwrapping key"];
  v1 = PO_LOG_POKeyWrap();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

void __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end