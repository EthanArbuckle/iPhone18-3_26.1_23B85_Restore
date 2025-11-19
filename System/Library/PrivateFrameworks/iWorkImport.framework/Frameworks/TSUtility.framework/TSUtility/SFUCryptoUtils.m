@interface SFUCryptoUtils
+ (BOOL)checkKey:(id)a3 againstPassphraseVerifier:(id)a4;
+ (id)decodePassphraseHint:(id)a3;
+ (id)generatePassphraseVerifierForKey:(id)a3 verifierVersion:(unsigned __int16)a4;
+ (id)generateRandomSalt;
+ (id)generateRandomSaltWithLength:(unint64_t)a3;
+ (id)hashForPassphrase:(id)a3 withSalt:(id)a4;
+ (id)newBufferedInputStreamForDecryptingFile:(id)a3 key:(id)a4 isDeflated:(BOOL)a5 zipStream:(id *)a6;
+ (id)newBufferedInputStreamForDecryptingZippedBundle:(id)a3 key:(id)a4 zipArchive:(id)a5 isDeflated:(BOOL)a6 zipStream:(id *)a7;
+ (id)saltForSageFiles;
+ (id)saltFromVerifier:(id)a3 saltLength:(unint64_t)a4;
+ (id)sha1HashFromStorage:(id)a3;
+ (id)sha256HashFromData:(id)a3;
+ (id)sha256HashFromDataArray:(id)a3;
+ (id)sha256HashFromStorage:(id)a3;
+ (id)sha256HashFromString:(id)a3;
+ (id)sha256HashFromStrings:(id)a3;
+ (unsigned)iterationCountFromPassphraseVerifier:(id)a3;
@end

@implementation SFUCryptoUtils

+ (id)generateRandomSalt
{
  v2 = objc_opt_class();

  return [v2 generateRandomSaltWithLength:32];
}

+ (id)generateRandomSaltWithLength:(unint64_t)a3
{
  v4 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], a3, v4))
  {
    free(v4);
    return 0;
  }

  else
  {
    v6 = MEMORY[0x277CBEA90];

    return [v6 dataWithBytesNoCopy:v4 length:a3 freeWhenDone:1];
  }
}

+ (id)hashForPassphrase:(id)a3 withSalt:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  [objc_msgSend(MEMORY[0x277CBEB28] dataWithData:{a4), "appendData:", objc_msgSend(a3, "dataUsingEncoding:", 4)}];

  return MEMORY[0x2821F9670](a1, sel_sha256HashFromData_);
}

+ (id)generatePassphraseVerifierForKey:(id)a3 verifierVersion:(unsigned __int16)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  if ([a3 keyType])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SFUCryptoUtils generatePassphraseVerifierForKey:verifierVersion:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoUtils.mm"], 91, 0, "Unsupported key type");
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB28] data];
    v30 = 0;
    v9 = [[SFUMemoryOutputStream alloc] initWithData:v8];
    v29 = v4;
    v28 = 1;
    [(SFUMemoryOutputStream *)v9 writeBuffer:&v29 size:2];
    [(SFUMemoryOutputStream *)v9 writeBuffer:&v28 size:2];
    v27 = [a3 iterationCount];
    [(SFUMemoryOutputStream *)v9 writeBuffer:&v27 size:4];
    if (v4 >= 2)
    {
      -[SFUMemoryOutputStream writeBuffer:size:](v9, "writeBuffer:size:", [objc_msgSend(a3 "saltData")], objc_msgSend(objc_msgSend(a3, "saltData"), "length"));
    }

    v10 = [a1 ivLengthForKey:a3];
    MEMORY[0x28223BE20]();
    v12 = &v25 - v11;
    v13 = *MEMORY[0x277CDC540];
    v14 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v10, &v25 - v11);
    v15 = MEMORY[0x277CBE648];
    if (v14)
    {

      [MEMORY[0x277CBEAD8] raise:*v15 format:@"SFUCryptor failed to copy random bytes."];
      v9 = 0;
    }

    [(SFUMemoryOutputStream *)v9 writeBuffer:v12 size:v10];
    if (SecRandomCopyBytes(v13, 0x20uLL, bytes))
    {

      [MEMORY[0x277CBEAD8] raise:*v15 format:@"SFUCryptor failed to copy random bytes."];
      v9 = 0;
    }

    v16 = [[SFUCryptor alloc] initWithKey:a3 operation:0 iv:v12 ivLength:v10 usePKCS7Padding:v4 == 1];
    if (![(SFUCryptor *)v16 cryptDataFromBuffer:bytes length:32 toStream:v9 finished:0 error:&v30])
    {

      v17 = MEMORY[0x277CBEAD8];
      v18 = *v15;
      v19 = [v30 localizedDescription];
      [v17 raise:v18 format:{@"SFUCryptor failed. %@: %@", v19, objc_msgSend(v30, "localizedFailureReason")}];
      v9 = 0;
      v16 = 0;
    }

    if (CC_SHA256_Init(&c) && CC_SHA256_Update(&c, bytes, 0x20u) && CC_SHA256_Final(md, &c))
    {
      if (![(SFUCryptor *)v16 cryptDataFromBuffer:md length:32 toStream:v9 finished:1 error:&v30])
      {

        v20 = MEMORY[0x277CBEAD8];
        v21 = *v15;
        v22 = [v30 localizedDescription];
        [v20 raise:v21 format:{@"SFUCryptor failed. %@: %@", v22, objc_msgSend(v30, "localizedFailureReason")}];
        v16 = 0;
        v9 = 0;
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SFUCryptoUtils generatePassphraseVerifierForKey:verifierVersion:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v23, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoUtils.mm"], 157, 0, "CC_SHA256 failed");
      +[TSUAssertionHandler logBacktraceThrottled];
      v8 = 0;
    }
  }

  return v8;
}

+ (unsigned)iterationCountFromPassphraseVerifier:(id)a3
{
  v4 = [[SFUMemoryInputStream alloc] initWithData:a3];
  if ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a3])
  {
    [(SFUMemoryInputStream *)v4 seekToOffset:4];
    v7 = 0;
    v5 = [(SFUMemoryInputStream *)v4 readToBuffer:&v7 size:4];

    if (v5 == 4)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

+ (id)saltFromVerifier:(id)a3 saltLength:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = [[SFUMemoryInputStream alloc] initWithData:a3];
  if ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a3])
  {
    v12 = 0;
    if ([(SFUMemoryInputStream *)v7 readToBuffer:&v12 size:2]== 2 && v12)
    {
      if (v12 == 1)
      {
        v8 = [a1 saltForSageFiles];
      }

      else
      {
        v10 = [(SFUMemoryInputStream *)v7 seekToOffset:8];
        MEMORY[0x28223BE20](v10);
        if ([(SFUMemoryInputStream *)v7 readToBuffer:&v11[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] size:a4]== a4)
        {
          v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v11[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] length:a4];
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

+ (id)saltForSageFiles
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"someSalt" length:8];

  return v2;
}

+ (BOOL)checkKey:(id)a3 againstPassphraseVerifier:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = [[SFUMemoryInputStream alloc] initWithData:a4];
  v32 = 0;
  if (-[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v32, 2) == 2 && (v8 = v32, v31 = 0, -[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v31, 2) == 2) && ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a4] & 1) != 0 && (v30 = 0, -[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v30, 4) == 4) && (v9 = v30, v9 == objc_msgSend(a3, "iterationCount")) && (v8 < 2 || (v10 = objc_msgSend(objc_msgSend(a3, "saltData"), "length"), MEMORY[0x28223BE20](v10), -[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:") == v10)))
  {
    v11 = [a1 ivLengthForKey:a3];
    v12 = v11;
    v13 = v11;
    MEMORY[0x28223BE20](v11);
    v15 = &v26 - v14;
    if ([(SFUMemoryInputStream *)v7 readToBuffer:&v26 - v14 size:v13]== v12)
    {
      v16 = [[SFUCryptor alloc] initWithKey:a3 operation:1 iv:v15 ivLength:v13 usePKCS7Padding:v8 == 1];
      v17 = 0;
      v28 = 0;
      v29 = 0;
      do
      {
        v18 = v17;
        v19 = [(SFUCryptor *)v16 cryptDataFromStream:v7 toBuffer:&data[v17] length:64 - v17 bytesRead:&v29 error:&v28];
        v17 = v29 + v18;
      }

      while (v19 && v29 != 0);

      LOBYTE(v21) = 0;
      if (v18 == 64 && !v28)
      {
        v21 = CC_SHA256_Init(&c);
        if (v21)
        {
          v21 = CC_SHA256_Update(&c, data, 0x20u);
          if (v21)
          {
            v21 = CC_SHA256_Final(md, &c);
            if (v21)
            {
              LOBYTE(v21) = v38 == *md && v39 == v34 && v40 == v35 && v41 == v36;
            }
          }
        }
      }
    }

    else
    {

      LOBYTE(v21) = 0;
    }
  }

  else
  {

    LOBYTE(v21) = 0;
  }

  return v21;
}

+ (id)newBufferedInputStreamForDecryptingFile:(id)a3 key:(id)a4 isDeflated:(BOOL)a5 zipStream:(id *)a6
{
  v7 = a5;
  v9 = [[SFUFileInputStream alloc] initWithPath:a3 offset:0];
  if (v9)
  {
    v10 = v9;
    v11 = [[SFUCryptoInputStream alloc] initForDecryptionWithInputStream:v9 key:a4];

    if (!v7)
    {
      if (!v11)
      {
        return 0;
      }

LABEL_10:
      v13 = [[SFUBufferedInputStream alloc] initWithStream:v11];

      return v13;
    }
  }

  else
  {
    if (!v7)
    {
      return 0;
    }

    v11 = 0;
  }

  v12 = v11;
  v11 = [[SFUZipInflateInputStream alloc] initWithInput:v11];

  if (v11)
  {
    if (a6)
    {
      *a6 = v11;
    }

    goto LABEL_10;
  }

  return 0;
}

+ (id)newBufferedInputStreamForDecryptingZippedBundle:(id)a3 key:(id)a4 zipArchive:(id)a5 isDeflated:(BOOL)a6 zipStream:(id *)a7
{
  v8 = a6;
  v10 = [a5 entryWithName:a3];
  if (v10 && (v11 = [v10 inputStream]) != 0)
  {
    v12 = [[SFUCryptoInputStream alloc] initForDecryptionWithInputStream:v11 key:a4];
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    if (!v8)
    {
LABEL_4:
      if (!v12)
      {
        return 0;
      }

LABEL_11:
      v14 = [[SFUBufferedInputStream alloc] initWithStream:v12];

      return v14;
    }
  }

  v13 = [[SFUZipInflateInputStream alloc] initWithInput:v12];

  if (v13)
  {
    if (a7)
    {
      *a7 = v13;
    }

    v12 = v13;
    goto LABEL_11;
  }

  return 0;
}

+ (id)decodePassphraseHint:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(a3 length:"bytes") encoding:{result, 4}];

    return v5;
  }

  return result;
}

+ (id)sha256HashFromData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = CC_SHA256_Init(&v7);
  if ([a3 length] >> 32)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SFUCryptoUtils sha256HashFromData:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoUtils.mm"], 426, 0, "overflow  in sha256HashFromData");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v4 && CC_SHA256_Update(&v7, [a3 bytes], objc_msgSend(a3, "length")) && CC_SHA256_Final(md, &v7))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromStorage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = CC_SHA256_Init(&c);
  v5 = [a3 bufferedInputStream];
  [v5 disableSystemCaching];
  data = 0;
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = [v5 readToOwnBuffer:&data size:0xFFFFFFFFLL];
    if (!v6)
    {
      break;
    }

    if (!CC_SHA256_Update(&c, data, v6))
    {
      return 0;
    }
  }

  if (CC_SHA256_Final(md, &c))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromString:(id)a3
{
  [a3 dataUsingEncoding:4];

  return MEMORY[0x2821F9670](a1, sel_sha256HashFromData_);
}

+ (id)sha1HashFromStorage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = CC_SHA1_Init(&c);
  v5 = [a3 bufferedInputStream];
  [v5 disableSystemCaching];
  data = 0;
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = [v5 readToOwnBuffer:&data size:0xFFFFFFFFLL];
    if (!v6)
    {
      break;
    }

    if (!CC_SHA1_Update(&c, data, v6))
    {
      return 0;
    }
  }

  if (CC_SHA1_Final(md, &c))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromDataArray:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v4 = CC_SHA256_Init(&c) != 0;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 length] >> 32)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SFUCryptoUtils sha256HashFromDataArray:]"];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoUtils.mm"], 510, 0, "overflow in sha256HashFromData");
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v4 = v4 && CC_SHA256_Update(&c, [v9 bytes], objc_msgSend(v9, "length")) != 0;
      }

      v6 = [a3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  if (v4 && CC_SHA256_Final(md, &c))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromStrings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v4 = CC_SHA256_Init(&c) != 0;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) dataUsingEncoding:{4, v12}];
        if ([v9 length] >> 32)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SFUCryptoUtils sha256HashFromStrings:]"];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUCryptoUtils.mm"], 533, 0, "overflow in sha256HashFromData");
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v4 = v4 && CC_SHA256_Update(&c, [v9 bytes], objc_msgSend(v9, "length")) != 0;
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  if (v4 && CC_SHA256_Final(md, &c))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

@end