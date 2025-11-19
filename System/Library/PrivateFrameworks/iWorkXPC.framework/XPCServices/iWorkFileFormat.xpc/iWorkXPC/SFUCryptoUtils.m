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
  if (SecRandomCopyBytes(kSecRandomDefault, a3, v4))
  {
    free(v4);
    return 0;
  }

  else
  {

    return [NSData dataWithBytesNoCopy:v4 length:a3 freeWhenDone:1];
  }
}

+ (id)hashForPassphrase:(id)a3 withSalt:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v6 = [NSMutableData dataWithData:a4];
  -[NSMutableData appendData:](v6, "appendData:", [a3 dataUsingEncoding:4]);

  return [a1 sha256HashFromData:v6];
}

+ (id)generatePassphraseVerifierForKey:(id)a3 verifierVersion:(unsigned __int16)a4
{
  v4 = a4;
  if ([a3 keyType])
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161788();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10016179C();
    }

    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SFUCryptoUtils generatePassphraseVerifierForKey:verifierVersion:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm"], 91, 0, "Unsupported key type");
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  else
  {
    v7 = +[NSMutableData data];
    v21 = 0;
    v8 = [[SFUMemoryOutputStream alloc] initWithData:v7];
    v20 = v4;
    v19 = 1;
    [(SFUMemoryOutputStream *)v8 writeBuffer:&v20 size:2];
    [(SFUMemoryOutputStream *)v8 writeBuffer:&v19 size:2];
    v18 = [a3 iterationCount];
    [(SFUMemoryOutputStream *)v8 writeBuffer:&v18 size:4];
    if (v4 >= 2)
    {
      -[SFUMemoryOutputStream writeBuffer:size:](v8, "writeBuffer:size:", [objc_msgSend(a3 "saltData")], objc_msgSend(objc_msgSend(a3, "saltData"), "length"));
    }

    v9 = [a1 ivLengthForKey:a3];
    __chkstk_darwin();
    v11 = &v16 - v10;
    if (SecRandomCopyBytes(kSecRandomDefault, v9, &v16 - v10))
    {

      [NSException raise:NSGenericException format:@"SFUCryptor failed to copy random bytes."];
      v8 = 0;
    }

    [(SFUMemoryOutputStream *)v8 writeBuffer:v11 size:v9];
    if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
    {

      [NSException raise:NSGenericException format:@"SFUCryptor failed to copy random bytes."];
      v8 = 0;
    }

    v12 = [[SFUCryptor alloc] initWithKey:a3 operation:0 iv:v11 ivLength:v9 usePKCS7Padding:v4 == 1];
    if (![(SFUCryptor *)v12 cryptDataFromBuffer:bytes length:32 toStream:v8 finished:0 error:&v21])
    {

      v13 = [v21 localizedDescription];
      +[NSException raise:format:](NSException, "raise:format:", NSGenericException, @"SFUCryptor failed. %@: %@", v13, [v21 localizedFailureReason]);
      v12 = 0;
      v8 = 0;
    }

    if (CC_SHA256_Init(&c) && CC_SHA256_Update(&c, bytes, 0x20u) && CC_SHA256_Final(md, &c))
    {
      if (![(SFUCryptor *)v12 cryptDataFromBuffer:md length:32 toStream:v8 finished:1 error:&v21])
      {

        v14 = [v21 localizedDescription];
        +[NSException raise:format:](NSException, "raise:format:", NSGenericException, @"SFUCryptor failed. %@: %@", v14, [v21 localizedFailureReason]);
        v12 = 0;
        v8 = 0;
      }
    }

    else
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100161824();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10016184C();
      }

      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SFUCryptoUtils generatePassphraseVerifierForKey:verifierVersion:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm"], 157, 0, "CC_SHA256 failed");
      +[TSUAssertionHandler logBacktraceThrottled];
      v7 = 0;
    }
  }

  return v7;
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
  v7 = [[SFUMemoryInputStream alloc] initWithData:a3];
  if ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a3])
  {
    v11 = 0;
    if ([(SFUMemoryInputStream *)v7 readToBuffer:&v11 size:2]== 2 && v11)
    {
      if (v11 == 1)
      {
        v8 = [a1 saltForSageFiles];
      }

      else
      {
        __chkstk_darwin([(SFUMemoryInputStream *)v7 seekToOffset:8]);
        if ([(SFUMemoryInputStream *)v7 readToBuffer:&v10[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] size:a4]== a4)
        {
          v8 = [[NSData alloc] initWithBytes:&v10[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] length:a4];
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
  v2 = [[NSData alloc] initWithBytes:"someSalt" length:8];

  return v2;
}

+ (BOOL)checkKey:(id)a3 againstPassphraseVerifier:(id)a4
{
  v7 = [[SFUMemoryInputStream alloc] initWithData:a4];
  v32 = 0;
  if (-[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v32, 2) == 2 && (v8 = v32, v31 = 0, -[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v31, 2) == 2) && ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a4] & 1) != 0 && (v30 = 0, -[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v30, 4) == 4) && (v9 = v30, v9 == objc_msgSend(a3, "iterationCount")) && (v8 < 2 || (v10 = objc_msgSend(objc_msgSend(a3, "saltData"), "length"), __chkstk_darwin(v10), -[SFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:") == v10)))
  {
    v11 = [a1 ivLengthForKey:a3];
    v12 = v11;
    v13 = v11;
    __chkstk_darwin(v11);
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
        if (v19)
        {
          v20 = v29 == 0;
        }

        else
        {
          v20 = 1;
        }
      }

      while (!v20);

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
    v5 = [[NSString alloc] initWithBytes:objc_msgSend(a3 length:"bytes") encoding:{result, 4}];

    return v5;
  }

  return result;
}

+ (id)sha256HashFromData:(id)a3
{
  v4 = CC_SHA256_Init(&v6);
  if ([a3 length] >> 32)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001618D4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001618FC();
    }

    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SFUCryptoUtils sha256HashFromData:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm"], 426, 0, "overflow  in sha256HashFromData");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v4 && CC_SHA256_Update(&v6, [a3 bytes], objc_msgSend(a3, "length")) && CC_SHA256_Final(md, &v6))
  {
    return [NSData dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromStorage:(id)a3
{
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
    return [NSData dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];

  return [a1 sha256HashFromData:v4];
}

+ (id)sha256HashFromDataArray:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v4 = CC_SHA256_Init(&c) != 0;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 67109890;
    v14 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if ([v10 length] >> 32)
        {
          v11 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100161984();
          }

          v12 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v21 = v11;
            v22 = 2082;
            v23 = "+[SFUCryptoUtils sha256HashFromDataArray:]";
            v24 = 2082;
            v25 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm";
            v26 = 1024;
            v27 = 510;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d overflow in sha256HashFromData", buf, 0x22u);
          }

          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SFUCryptoUtils sha256HashFromDataArray:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm"], 510, 0, "overflow in sha256HashFromData");
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v4 = v4 && CC_SHA256_Update(&c, [v10 bytes], objc_msgSend(v10, "length")) != 0;
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v7);
  }

  if (v4 && CC_SHA256_Final(buf, &c))
  {
    return [NSData dataWithBytes:buf length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromStrings:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v4 = CC_SHA256_Init(&c) != 0;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 67109890;
    v14 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) dataUsingEncoding:{4, v14, v15}];
        if ([v10 length] >> 32)
        {
          v11 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_1001619AC();
          }

          v12 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v21 = v11;
            v22 = 2082;
            v23 = "+[SFUCryptoUtils sha256HashFromStrings:]";
            v24 = 2082;
            v25 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm";
            v26 = 1024;
            v27 = 533;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d overflow in sha256HashFromData", buf, 0x22u);
          }

          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SFUCryptoUtils sha256HashFromStrings:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptoUtils.mm"], 533, 0, "overflow in sha256HashFromData");
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v4 = v4 && CC_SHA256_Update(&c, [v10 bytes], objc_msgSend(v10, "length")) != 0;
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v7);
  }

  if (v4 && CC_SHA256_Final(buf, &c))
  {
    return [NSData dataWithBytes:buf length:32];
  }

  else
  {
    return 0;
  }
}

@end