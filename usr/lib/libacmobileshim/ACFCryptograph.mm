@interface ACFCryptograph
- (id)compactDataFromPropertyList:(id)a3;
- (id)compressData:(id)a3;
- (id)encryptData:(id)a3 withKey:(__SecKey *)a4;
- (id)hashStringSHA256WithString:(id)a3;
- (id)signatureForData:(id)a3 withKey:(__SecKey *)a4;
- (void)clearKey:(id)a3;
- (void)fillEncryptionSuffix:(id)a3;
- (void)fillHMACSuffix:(id)a3;
@end

@implementation ACFCryptograph

- (id)encryptData:(id)a3 withKey:(__SecKey *)a4
{
  cipherTextLen = 0;
  v6 = [a3 length];
  if (!a4 || !v6 || (v7 = [a3 length], BlockSize = SecKeyGetBlockSize(a4), cipherTextLen = BlockSize, v7 > BlockSize))
  {
    if (qword_2A1EB8EA8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACFCryptograph encryptData:withKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCryptograph.m", 58, 0, "Invalid parameters");
    }

    goto LABEL_13;
  }

  v9 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
  if (!v9)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = SecKeyEncrypt(a4, 1u, [a3 bytes], objc_msgSend(a3, "length"), v9, &cipherTextLen);
  v12 = [MEMORY[0x29EDB8DA0] dataWithBytes:v10 length:cipherTextLen];
  free(v10);
  if (v11 || !v12)
  {
    if (qword_2A1EB8EA8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACFCryptograph encryptData:withKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCryptograph.m", 52, 0, "Failed to encrypt random key with public key. Status - %d");
    }

    goto LABEL_13;
  }

LABEL_14:
  if (qword_2A1EB8EA8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "-[ACFCryptograph encryptData:withKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCryptograph.m", 60, 0, "SIZE TEST: Encrypted random key size is %d", [v12 length]);
  }

  return v12;
}

- (id)signatureForData:(id)a3 withKey:(__SecKey *)a4
{
  if (!a3 || !a4 || (BlockSize = SecKeyGetBlockSize(a4), sigLen = BlockSize, BlockSize < [a3 length]))
  {
    if (qword_2A1EB8EA8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACFCryptograph signatureForData:withKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCryptograph.m", 89, 0, "Invalid parameters");
    }

    return 0;
  }

  v7 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = SecKeyRawSign(a4, 0, [a3 bytes], objc_msgSend(a3, "length"), v7, &sigLen);
  v10 = [MEMORY[0x29EDB8DA0] dataWithBytes:v8 length:sigLen];
  free(v8);
  if (v9 || !v10)
  {
    if (qword_2A1EB8EA8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACFCryptograph signatureForData:withKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCryptograph.m", 83, 0, "Failed to generate sign. Status - %d");
    }

    return 0;
  }

  return v10;
}

- (id)hashStringSHA256WithString:(id)a3
{
  v3 = ACFSHA256AsString([a3 dataUsingEncoding:4]);

  return [v3 lowercaseString];
}

- (void)fillEncryptionSuffix:(id)a3
{
  if (a3)
  {
    [a3 setLength:16];
    qmemcpy([a3 mutableBytes], "HARDCODEDKEY1321", 16);
  }

  else
  {
    [ACFCryptograph fillEncryptionSuffix:];
  }
}

- (void)fillHMACSuffix:(id)a3
{
  if (a3)
  {
    [a3 setLength:16];
    qmemcpy([a3 mutableBytes], "HARDCODEDKEY2abc", 16);
  }

  else
  {
    [ACFCryptograph fillHMACSuffix:];
  }
}

- (void)clearKey:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableBytes];
    for (i = [a3 length]; i; --i)
    {
      *v4++ = 0;
    }

    [a3 setLength:0];
  }

  else
  {
    [ACFCryptograph clearKey:];
  }
}

- (id)compactDataFromPropertyList:(id)a3
{
  v3 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:a3 format:100 options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v3 encoding:4];
  v5 = [objc_msgSend(v4 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x29EDB9F50], "characterSetWithCharactersInString:", @"\t\n", "componentsJoinedByString:", &stru_2A1EB91A0}];

  return [v5 dataUsingEncoding:4];
}

- (id)compressData:(id)a3
{
  if (!a3)
  {
    [ACFCryptograph compressData:];
    return 0;
  }

  destLen = compressBound([a3 length]);
  result = [MEMORY[0x29EDB8DF8] dataWithLength:destLen];
  if (result)
  {
    v5 = result;
    v6 = compress2([result mutableBytes], &destLen, objc_msgSend(a3, "bytes"), objc_msgSend(a3, "length"), 9);
    if (v6)
    {
      if (qword_2A1EB8EA8)
      {
        v7 = v6;
        if ((ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "[ACFCryptograph compressData:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCryptograph.m", 281, 0, "Failed to compress data with error: %d", v7);
        }
      }

      return 0;
    }

    [v5 setLength:destLen];
    return [v5 copy];
  }

  return result;
}

- (uint64_t)fillEncryptionSuffix:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();
  return [v0 handleFailureInMethod:@"nil != outKey1" object:? file:? lineNumber:? description:?];
}

- (uint64_t)fillHMACSuffix:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();
  return [v0 handleFailureInMethod:@"nil != outKey1" object:? file:? lineNumber:? description:?];
}

- (uint64_t)clearKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();
  return [v0 handleFailureInMethod:@"nil != outKey" object:? file:? lineNumber:? description:?];
}

- (uint64_t)compressData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();
  return [v0 handleFailureInMethod:@"nil != plainData" object:? file:? lineNumber:? description:?];
}

@end