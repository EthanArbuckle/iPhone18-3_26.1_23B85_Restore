@interface BAADelegateImpl
+ (BOOL)isInternal;
+ (int)confirmSigKey:(unsigned int)key status:(int)status;
+ (int)generateSigKey:(unsigned int)key keyData:(id *)data attestation:(id *)attestation pubKey:(id *)pubKey;
+ (int)getBlessedUser:(unsigned int *)user keybagUUID:(unsigned __int8)d[16];
+ (int)getSigKeyCertificates:(unsigned int)certificates certificates:(id *)a4;
+ (int)getSigKeyExpDate:(unsigned int)date expirationDate:(unint64_t *)expirationDate;
+ (int)setSigKey:(unsigned int)key expirationDate:(unint64_t)date keyData:(id)data certificates:(id)certificates;
@end

@implementation BAADelegateImpl

+ (BOOL)isInternal
{
  if (getMGAnswers_onceToken != -1)
  {
    init_cold_2();
  }

  return getMGAnswers_cachedIsInternal;
}

+ (int)generateSigKey:(unsigned int)key keyData:(id *)data attestation:(id *)attestation pubKey:(id *)pubKey
{
  keyCopy = 0;
  outputStructCnt = 0;
  inputStruct = 0;
  if (!data)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
LABEL_19:
    v22 = v30;
    goto LABEL_14;
  }

  if (!attestation)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_19;
  }

  if (!pubKey)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_19;
  }

  v10 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v10)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_19;
  }

  v11 = v10;
  if (init())
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
LABEL_25:
    v22 = v30;
    goto LABEL_13;
  }

  LODWORD(inputStruct) = 1397966179;
  WORD2(inputStruct) = 18;
  keyCopy = key;
  outputStructCnt = 0x4000;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 0xCuLL, v11, &outputStructCnt))
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_25;
  }

  if (outputStructCnt <= 0xB)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_25;
  }

  if (outputStructCnt != *v11 + v11[1] + v11[2] + 12)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_25;
  }

  v12 = [MEMORY[0x29EDB8DA0] dataWithBytes:v11 + 3 length:?];
  if (!v12)
  {
    +[BAADelegateImpl generateSigKey:keyData:attestation:pubKey:];
    goto LABEL_25;
  }

  v13 = v12;
  v14 = v11 + *v11 + 12;
  v15 = [MEMORY[0x29EDB8DA0] dataWithBytes:v14 length:v11[1]];
  if (!v15)
  {
    [BAADelegateImpl generateSigKey:v13 keyData:? attestation:? pubKey:?];
LABEL_28:
    v22 = 4294967291;
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [MEMORY[0x29EDB8DA0] dataWithBytes:v14 + v11[1] length:v11[2]];
  if (!v17)
  {
    [BAADelegateImpl generateSigKey:v16 keyData:v13 attestation:? pubKey:?];
    goto LABEL_28;
  }

  v18 = v17;
  v19 = v13;
  *data = v13;
  v20 = v16;
  *attestation = v16;
  v21 = v18;
  *pubKey = v18;

  v22 = 0;
LABEL_13:
  free(v11);
LABEL_14:
  logCmdCall("generateSigKey", v22, 0, 0, 0, v23, v24, v25);
  return v22;
}

+ (int)setSigKey:(unsigned int)key expirationDate:(unint64_t)date keyData:(id)data certificates:(id)certificates
{
  v38 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  certificatesCopy = certificates;
  v11 = dataCopy;
  v12 = certificatesCopy;
  v13 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v13)
  {
    +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
    v25 = v37[0];
    goto LABEL_27;
  }

  v14 = v13;
  if (init())
  {
    +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
LABEL_31:
    v25 = v37[0];
    goto LABEL_26;
  }

  *v14 = 1397966179;
  *(v14 + 2) = 19;
  *(v14 + 2) = key;
  *(v14 + 12) = date;
  v15 = v14 + 28;
  if (!v11)
  {
    *(v14 + 5) = 0;
    goto LABEL_7;
  }

  if ([v11 length] >= 0x3FE5)
  {
    +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
    goto LABEL_31;
  }

  *(v14 + 5) = [v11 length];
  [v11 getBytes:v14 + 28 length:{objc_msgSend(v11, "length")}];
  v15 += [v11 length];
LABEL_7:
  if (![v12 count])
  {
    *(v14 + 6) = 0;
    goto LABEL_20;
  }

  *(v14 + 6) = [v12 count];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = v12;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = v17;
  v19 = v14 + 0x4000;
  v20 = *v33;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v33 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v32 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
LABEL_25:

        v25 = 4294967292;
        v12 = v31;
        goto LABEL_26;
      }

      if ((v19 - v15) <= 3)
      {
        +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
        goto LABEL_25;
      }

      *v15 = [v22 length];
      v23 = v15 + 4;
      if ([v22 length] > (v19 - v23))
      {
        +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
        goto LABEL_25;
      }

      [v22 getBytes:v23 length:{objc_msgSend(v22, "length")}];
      v15 = &v23[[v22 length]];
    }

    v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v12 = v31;
LABEL_20:
  v24 = IOConnectCallStructMethod(_MergedGlobals_0, 0, v14, v15 - v14, 0, 0);
  v25 = 0;
  if (v24)
  {
    +[BAADelegateImpl setSigKey:expirationDate:keyData:certificates:];
    v25 = v36;
  }

LABEL_26:
  free(v14);
LABEL_27:
  logCmdCall("setSigKey", v25, 0, 0, 0, v26, v27, v28);

  v29 = *MEMORY[0x29EDCA608];
  return v25;
}

+ (int)getSigKeyExpDate:(unsigned int)date expirationDate:(unint64_t *)expirationDate
{
  dateCopy = 0;
  outputStruct = 0;
  inputStruct = 0;
  v11 = 0;
  if (!expirationDate)
  {
    +[BAADelegateImpl getSigKeyExpDate:expirationDate:];
LABEL_11:
    v9 = v15;
    goto LABEL_6;
  }

  if (init())
  {
    +[BAADelegateImpl getSigKeyExpDate:expirationDate:];
    goto LABEL_11;
  }

  LODWORD(inputStruct) = 1397966179;
  WORD2(inputStruct) = 20;
  dateCopy = date;
  v11 = 8;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 0xCuLL, &outputStruct, &v11))
  {
    +[BAADelegateImpl getSigKeyExpDate:expirationDate:];
    goto LABEL_11;
  }

  if (v11 != 8)
  {
    +[BAADelegateImpl getSigKeyExpDate:expirationDate:];
    goto LABEL_11;
  }

  v9 = 0;
  *expirationDate = outputStruct;
LABEL_6:
  logCmdCall("getSigKeyExpDate", v9, 0, 0, 0, v6, v7, v8);
  return v9;
}

+ (int)getSigKeyCertificates:(unsigned int)certificates certificates:(id *)a4
{
  certificatesCopy = 0;
  outputStructCnt = 0;
  inputStruct = 0;
  v15 = 0;
  if (!a4)
  {
    +[BAADelegateImpl getSigKeyCertificates:certificates:];
LABEL_11:
    v9 = v19;
    goto LABEL_8;
  }

  v6 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v6)
  {
    +[BAADelegateImpl getSigKeyCertificates:certificates:];
    goto LABEL_11;
  }

  v7 = v6;
  if (init())
  {
    +[BAADelegateImpl getSigKeyCertificates:certificates:];
LABEL_15:
    v9 = v19;
    goto LABEL_7;
  }

  LODWORD(inputStruct) = 1397966179;
  WORD2(inputStruct) = 25;
  certificatesCopy = certificates;
  outputStructCnt = 0x4000;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 0xCuLL, v7, &outputStructCnt))
  {
    +[BAADelegateImpl getSigKeyCertificates:certificates:];
    goto LABEL_15;
  }

  v14 = 0;
  CertificatesFromBuffer = getCertificatesFromBuffer(v7, v7 + outputStructCnt, &v15, &v14);
  if (CertificatesFromBuffer)
  {
    [BAADelegateImpl getSigKeyCertificates:&v15 certificates:?];
    goto LABEL_15;
  }

  v9 = 0;
  *a4 = v15;
LABEL_7:
  free(v7);
LABEL_8:
  logCmdCall("getSigKeyCertificates", v9, 0, 0, 0, v10, v11, v12);
  return v9;
}

+ (int)confirmSigKey:(unsigned int)key status:(int)status
{
  inputStruct = 0;
  v12 = 0;
  if (init())
  {
    +[BAADelegateImpl confirmSigKey:status:];
LABEL_6:
    v9 = v13;
    goto LABEL_3;
  }

  LODWORD(inputStruct) = 1397966179;
  WORD2(inputStruct) = 21;
  v12 = __PAIR64__(status, key);
  v9 = 0;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 0x10uLL, 0, 0))
  {
    +[BAADelegateImpl confirmSigKey:status:];
    goto LABEL_6;
  }

LABEL_3:
  logCmdCall("confirmSigKey", v9, 0, 0, 0, v6, v7, v8);
  return v9;
}

+ (int)getBlessedUser:(unsigned int *)user keybagUUID:(unsigned __int8)d[16]
{
  v16 = *MEMORY[0x29EDCA608];
  outputStructCnt = 0;
  inputStruct = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  if (!user)
  {
    +[BAADelegateImpl getBlessedUser:keybagUUID:];
LABEL_13:
    v9 = v14;
    goto LABEL_7;
  }

  if (!d)
  {
    +[BAADelegateImpl getBlessedUser:keybagUUID:];
    goto LABEL_13;
  }

  if (init())
  {
    +[BAADelegateImpl getBlessedUser:keybagUUID:];
    goto LABEL_13;
  }

  LODWORD(inputStruct) = 1397966179;
  WORD2(inputStruct) = 24;
  outputStructCnt = 20;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 8uLL, outputStruct, &outputStructCnt))
  {
    +[BAADelegateImpl getBlessedUser:keybagUUID:];
    goto LABEL_13;
  }

  if (outputStructCnt != 20)
  {
    +[BAADelegateImpl getBlessedUser:keybagUUID:];
    goto LABEL_13;
  }

  v9 = 0;
  *user = *outputStruct;
  *d = *&outputStruct[4];
LABEL_7:
  logCmdCall("getBlessedUser", v9, 0, 0, 0, v6, v7, v8);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:(void *)a1 keyData:(void *)a2 attestation:pubKey:.cold.4(void *a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v6, v7, v8, v9, v10);
  }

  v4 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:(void *)a1 keyData:attestation:pubKey:.cold.5(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  v2 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.8()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.9()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.10()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)generateSigKey:keyData:attestation:pubKey:.cold.11()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.2()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.6()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)setSigKey:expirationDate:keyData:certificates:.cold.7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyExpDate:expirationDate:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyExpDate:expirationDate:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyExpDate:expirationDate:.cold.3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyExpDate:expirationDate:.cold.4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyCertificates:certificates:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyCertificates:certificates:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyCertificates:(uint64_t)a1 certificates:(CFTypeRef *)a2 .cold.3(uint64_t a1, CFTypeRef *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v5, v6, v7, v8, v9);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  OUTLINED_FUNCTION_21();
  v3 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyCertificates:certificates:.cold.4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getSigKeyCertificates:certificates:.cold.5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)confirmSigKey:status:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)confirmSigKey:status:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getBlessedUser:keybagUUID:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getBlessedUser:keybagUUID:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getBlessedUser:keybagUUID:.cold.3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getBlessedUser:keybagUUID:.cold.4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

+ (void)getBlessedUser:keybagUUID:.cold.5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

@end