uint64_t ACMobileShimCopyTicket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  Current = CFRunLoopGetCurrent();
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __ACMobileShimCopyTicket_block_invoke;
  block[3] = &unk_29EE91728;
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[9] = a4;
  block[4] = &v14;
  block[5] = &v18;
  block[10] = Current;
  dispatch_async(global_queue, block);
  v10 = *MEMORY[0x29EDB8FC0];
  while ((v19[3] & 1) == 0)
  {
    CFRunLoopRunInMode(v10, 1.0, 1u);
  }

  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void sub_298329228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __ACMobileShimCopyTicket_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __ACMobileShimCopyTicket_block_invoke_2;
  v11[3] = &unk_29EE91700;
  v3 = *(a1 + 32);
  v13 = *(a1 + 64);
  v12 = v3;
  v14 = *(a1 + 80);
  v4 = objc_alloc_init(MEMORY[0x29EDB9F38]);
  v5 = objc_alloc_init(ACMDelegate);
  [(ACMDelegate *)v5 setCopyTicketCompletion:v11];
  v6 = +[ACMRequest authenticationRequest];
  [v6 setRealm:@"APPLECONNECT.APPLE.COM"];
  [v6 setAppID:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithInteger:", 1205)}];
  [v6 setAppIDKey:@"D134F7CA19FC87A2BD841EE11F2A825C058040C92792F87B7E1C04B40291F620"];
  [v6 setUserName:v2];
  v7 = +[ACMAppleConnect sharedInstance];
  [(ACMAppleConnect *)v7 setDelegate:v5];
  v8 = CFPreferencesCopyAppValue(@"ACLogLevel", @"com.apple.ACMobileShim");
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ACMAppleConnect setLogLevel:](v7, "setLogLevel:", [v9 intValue]);
    }
  }

  [(ACMAppleConnect *)v7 authenticateWithRequest:v6 password:v1];
  return [v4 drain];
}

void __ACMobileShimCopyTicket_block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a1[6];
  if (v6)
  {
    if (a2)
    {
      v7 = a2;
      v6 = a1[6];
    }

    *v6 = a2;
  }

  v8 = a1[7];
  if (v8)
  {
    if (a3)
    {
      v9 = a3;
      v8 = a1[7];
    }

    *v8 = a3;
  }

  if (a2 && !a3)
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

  *(*(a1[5] + 8) + 24) = 1;
  v10 = a1[8];

  CFRunLoopWakeUp(v10);
}

uint64_t ACMImageWithName(uint64_t a1)
{
  v2 = +[ACMImageLoader sharedInstance];

  return [(ACMImageLoader *)v2 imageNamed:a1];
}

void sub_29832A8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ACFMakeRandomData(_BYTE *bytes, size_t a2)
{
  v2 = a2;
  v3 = bytes;
  v4 = SecRandomCopyBytes(*MEMORY[0x29EDBBCA0], a2, bytes);
  if (v4)
  {
    if (qword_2A1EB8F30)
    {
      v5 = v4;
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "void ACFMakeRandomData(unsigned char *, NSUInteger)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 71, 0, "Error with code %d occurred while creating random string", v5);
      }
    }

    for (; v2; --v2)
    {
      *v3++ = arc4random_uniform(0x100u);
    }
  }
}

void *ACFRandomData(uint64_t a1)
{
  v1 = a1;
  v4[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    a1 = [MEMORY[0x29EDB8DD0] raise:*MEMORY[0x29EDB8CD8] format:@"Attempt to allcoate 0 size random block"];
  }

  MEMORY[0x2A1C7C4A8](a1);
  ACFMakeRandomData(v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0) length:v1];
  if (![v2 length])
  {
    [MEMORY[0x29EDB8DD0] raise:*MEMORY[0x29EDB8D08] format:@"Failed to create data block"];
  }

  return v2;
}

void ACFMakeRandomString(char *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8]();
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ACFMakeRandomData(v5, v4);
  for (; a2; --a2)
  {
    v6 = *v5++;
    v7 = (107374183 * v6) >> 32;
    v8 = v6 - 40 * v7 + 46;
    if (v6 - 40 * v7 == 12)
    {
      v8 = 59;
    }

    *a1++ = v8;
  }
}

uint64_t ACFRandomString(uint64_t a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v2 = v4 - ((MEMORY[0x2A1C7C4A8]() + 16) & 0xFFFFFFFFFFFFFFF0);
  ACFMakeRandomString(v2, a1);
  v2[a1] = 0;
  return [MEMORY[0x29EDBA0F8] stringWithUTF8String:v2];
}

uint64_t ACFEncodeBase64(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (objc_opt_respondsToSelector())
    {

      return [v1 base64EncodedStringWithOptions:0];
    }

    else
    {

      return [v1 base64Encoding];
    }
  }

  return result;
}

id ACFDecodeBase64(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc(MEMORY[0x29EDB8DA0]);
    v4 = [objc_msgSend(v2 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x29EDB9F50], "newlineCharacterSet")), "componentsJoinedByString:", &stru_2A1EB91A0}];
    if (objc_opt_respondsToSelector())
    {
      a1 = [v3 initWithBase64EncodedString:v4 options:0];
    }

    else
    {
      a1 = [v3 initWithBase64Encoding:v4];
    }

    v1 = vars8;
  }

  return a1;
}

void *ACFDecodeBase32(void *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = [a1 length];
  if ((v2 & 7) != 0)
  {
    return 0;
  }

  v3 = v2;
  qmemcpy(v21, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", sizeof(v21));
  v19 = 61;
  v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v21 length:32 encoding:1];
  v5 = objc_alloc_init(MEMORY[0x29EDBA040]);
  [v5 addCharactersInString:v4];
  [v5 addCharactersInString:{objc_msgSend(objc_alloc(MEMORY[0x29EDBA0F8]), "initWithBytes:length:encoding:", &v19, 1, 1)}];
  if ([objc_msgSend(a1 stringByTrimmingCharactersInSet:{v5), "length"}])
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = v6;
    v8 = [a1 rangeOfString:@"=" options:12 range:{0, v3 + v6}];
    v6 = v7 - 1;
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  if (v6 < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  v9 = 0;
  v11 = ~v6;
  if (v11 != 2 && v11 != 5)
  {
    if ([a1 rangeOfString:@"=" options:0 range:{0, v3 + v7}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v9 = [MEMORY[0x29EDB8DF8] dataWithCapacity:(v3 >> 1) + (v3 >> 3)];
    CFRetain(a1);
    if (v3)
    {
      for (i = 0; i < v3; i += 8)
      {
        v13 = 0;
        v20 = 0;
        do
        {
          v14 = [a1 characterAtIndex:i + v13];
          if (v14 == v19)
          {
            v15 = -1;
          }

          else
          {
            v15 = [v4 rangeOfString:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"%C", v14)}];
          }

          *(&v20 + v13++) = v15;
        }

        while (v13 != 8);
        v18 = 0;
        v17 = ((8 * v20) | (BYTE1(v20) >> 2) & 7);
        if (BYTE2(v20) == 255)
        {
          v16 = 1;
        }

        else
        {
          BYTE1(v17) = (BYTE1(v20) << 6) | (2 * (BYTE2(v20) & 0x1F)) | ((v20 & 0x10000000) != 0);
          if (BYTE4(v20) == 255)
          {
            v16 = 2;
          }

          else
          {
            BYTE2(v17) = (16 * BYTE3(v20)) | (BYTE4(v20) >> 1) & 0xF;
            if (BYTE5(v20) == 255)
            {
              v16 = 3;
            }

            else
            {
              HIBYTE(v17) = (BYTE4(v20) << 7) | (4 * (BYTE5(v20) & 0x1F)) | (BYTE6(v20) >> 3) & 3;
              if (HIBYTE(v20) == 255)
              {
                v16 = 4;
              }

              else
              {
                v18 = HIBYTE(v20) & 0x1F | (32 * BYTE6(v20));
                v16 = 5;
              }
            }
          }
        }

        [v9 appendBytes:&v17 length:v16];
      }
    }

    CFRelease(a1);
  }

  return v9;
}

uint64_t ACFEncodeBase16(void *a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x29EDBA050] string];
    v3 = [a1 bytes];
    if ([a1 length])
    {
      v4 = 0;
      do
      {
        [v2 appendFormat:@"%02x", *(v3 + v4++)];
      }

      while (v4 < [a1 length]);
    }

    v5 = MEMORY[0x29EDBA0F8];

    return [v5 stringWithString:v2];
  }

  else
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSString *ACFEncodeBase16(NSData *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 306, 0, "Invalid parameter!");
    }

    return 0;
  }
}

uint64_t ACFDecodeBase16(void *a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x29EDB8DF8] data];
    if ([a1 length])
    {
      v3 = 0;
      v4 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v5 = [@"0123456789abcdef" rangeOfString:objc_msgSend(a1 options:{"substringWithRange:", v3, 1), 1}];
        if (v5 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v4 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v4 = v5;
          }

          else
          {
            v8 = v5 + 16 * v4;
            [v2 appendBytes:&v8 length:1];
            v4 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        ++v3;
      }

      while (v3 < [a1 length]);
      if (v4 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 16 * v4;
        [v2 appendBytes:&v7 length:1];
      }
    }

    return [MEMORY[0x29EDB8DA0] dataWithData:v2];
  }

  else
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSData *ACFDecodeBase16(NSString *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 352, 0, "Invalid parameter!");
    }

    return 0;
  }
}

uint64_t ACFSHA1Init()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  if (v0)
  {
    v1 = v0;
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
    CC_SHA1_Init(v0);
    v2 = MEMORY[0x29EDB8DA0];

    return [v2 dataWithBytesNoCopy:v1 length:96 freeWhenDone:1];
  }

  else
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSData *ACFSHA1Init(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 375, 0, "Error occured: malloc return NULL");
    }

    return 0;
  }
}

void ACFSHA1Update(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = [a1 bytes];
    v4 = [a2 bytes];
    v5 = [a2 length];

    CC_SHA1_Update(v3, v4, v5);
  }

  else if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "void ACFSHA1Update(NSData *, NSData *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 389, 0, "Invalid parameters!");
  }
}

uint64_t ACFSHA1Final(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    CC_SHA1_Final(md, [a1 bytes]);
    return [MEMORY[0x29EDB8DA0] dataWithBytes:md length:20];
  }

  else
  {
    if (qword_2A1EB8F30)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "NSData *ACFSHA1Final(NSData *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 407, 0, "Invalid parameter!");
      }
    }

    return 0;
  }
}

uint64_t ACFSHA1(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  CC_SHA1([a1 UTF8String], objc_msgSend(a1, "length"), md);
  return [MEMORY[0x29EDB8DA0] dataWithBytes:md length:20];
}

void *ACFSHA1AsString(void *a1)
{
  v1 = ACFSHA1(a1);
  v2 = [v1 length];
  v3 = [v1 bytes];
  v4 = [MEMORY[0x29EDBA050] string];
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      [v4 appendFormat:@"%02X", *(v3 + v5)];
      v5 = v6;
    }

    while (v2 > v6++);
  }

  return v4;
}

uint64_t ACFSHA256(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), md);
  return [MEMORY[0x29EDB8DA0] dataWithBytes:md length:32];
}

void *ACFSHA256AsString(void *a1)
{
  v1 = ACFSHA256(a1);
  v2 = [v1 length];
  v3 = [v1 bytes];
  v4 = [MEMORY[0x29EDBA050] string];
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      [v4 appendFormat:@"%02X", *(v3 + v5)];
      v5 = v6;
    }

    while (v2 > v6++);
  }

  return v4;
}

uint64_t ACFSHA256ForString(void *a1)
{
  v1 = [MEMORY[0x29EDB8DA0] dataWithBytes:objc_msgSend(a1 length:{"UTF8String"), objc_msgSend(a1, "length")}];

  return ACFSHA256(v1);
}

uint64_t ACFCrypt_Process(void *a1, void *a2, CCAlgorithm a3, uint64_t a4, unint64_t a5, void *a6, int a7, CCOptions a8)
{
  v16 = [a1 length];
  if (!v16)
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      v19 = @"decrypt";
      if (a7)
      {
        v19 = @"encrypt";
      }

      ACFLog(3, "NSData *ACFCrypt_Process(NSData *, NSData *, CCAlgorithm, NSUInteger, NSUInteger, NSData *, BOOL, CCOptions)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 527, 0, "Attempt to %@ data with zero size", v19);
    }

    return 0;
  }

  v17 = v16;
  if ([a2 length] != a4)
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      v20 = @"decrypt";
      if (a7)
      {
        v20 = @"encrypt";
      }

      ACFLog(3, "NSData *ACFCrypt_Process(NSData *, NSData *, CCAlgorithm, NSUInteger, NSUInteger, NSData *, BOOL, CCOptions)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 522, 0, "Attempt to %@ data with incorrect key", v20);
    }

    return 0;
  }

  if ((a8 & 1) == 0 && v17 % a5)
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      v18 = @"decrypt";
      if (a7)
      {
        v18 = @"encrypt";
      }

      ACFLog(3, "NSData *ACFCrypt_Process(NSData *, NSData *, CCAlgorithm, NSUInteger, NSUInteger, NSData *, BOOL, CCOptions)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 517, 0, "Attempt to %@ data with incorrect size", v18);
    }

    return 0;
  }

  dataOutAvailable = v17 + a5;
  dataOut = malloc_type_malloc(dataOutAvailable, 0x970B5A1FuLL);
  if (!dataOut)
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSData *ACFCrypt_Process(NSData *, NSData *, CCAlgorithm, NSUInteger, NSUInteger, NSData *, BOOL, CCOptions)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 512, 0, "Error occured in crypt: malloc return NULL");
    }

    return 0;
  }

  v23 = dataOut;
  v29 = 0;
  v24 = CCCrypt(a7 ^ 1, a3, a8, [a2 bytes], objc_msgSend(a2, "length"), objc_msgSend(a6, "bytes"), objc_msgSend(a1, "bytes"), objc_msgSend(a1, "length"), dataOut, dataOutAvailable, &v29);
  if (v24)
  {
    if (qword_2A1EB8F30)
    {
      v25 = v24;
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        v26 = @"decryption";
        if (a7)
        {
          v26 = @"encryption";
        }

        ACFLog(3, "NSData *ACFCrypt_Process(NSData *, NSData *, CCAlgorithm, NSUInteger, NSUInteger, NSData *, BOOL, CCOptions)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 494, 0, "Error with code %d has been occured during %@ process", v25, v26);
      }
    }

    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x29EDB8DF8] dataWithBytes:v23 length:v29];
  }

  free(v23);
  return v27;
}

void *ACFEncodeObscuredString(void *a1, unint64_t a2)
{
  v3 = [a1 UTF8String];
  if (v3)
  {
    v4 = v3;
    v5 = strlen(v3);
    v6 = v5;
    if (2 * v5 > a2)
    {
      a2 = 2 * v5;
    }

    v7 = ACFRandomString(a2);
    v8 = [MEMORY[0x29EDB8DF8] dataWithBytes:objc_msgSend(v7 length:{"UTF8String"), objc_msgSend(v7, "length")}];
    v9 = [v8 mutableBytes];
    if (v9)
    {
      v10 = a2 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      do
      {
        if (v11 >> 1 >= v6)
        {
          v12 = 0;
        }

        else
        {
          v12 = v4[v11 >> 1];
        }

        *(v9 + v11) = v12;
        v11 += 2;
      }

      while (v11 < a2);
    }
  }

  else
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSData *ACFEncodeObscuredString(NSString *, NSUInteger)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 626, 0, "Failed to generate obscured string, extractng UTF8 string from NSString failed.");
    }

    return 0;
  }

  return v8;
}

uint64_t ACFObscureAndBaseEncode64String(void *a1)
{
  if (!a1)
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSString *ACFObscureAndBaseEncode64String(NSString *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 655, 0, "Invalid Parameters");
    }

    return 0;
  }

  v1 = ACFEncodeObscuredString(a1, 2 * [a1 lengthOfBytesUsingEncoding:4]);
  if (!v1)
  {
    if (qword_2A1EB8F30 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSString *ACFObscureAndBaseEncode64String(NSString *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 650, 0, "Failed to generate obscured string");
    }

    return 0;
  }

  result = ACFEncodeBase64(v1);
  if (qword_2A1EB8F30 && !result)
  {
    if ((ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "NSString *ACFObscureAndBaseEncode64String(NSString *)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFEncryption.m", 645, 0, "Failed encoding Base64 string");
    }

    return 0;
  }

  return result;
}

uint64_t ACFDecodeObscuredString(void *a1)
{
  v2 = [a1 length];
  if (v2 < 2)
  {
    return 0;
  }

  v3 = v2 >> 1;
  v4 = malloc_type_malloc((v2 >> 1) + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 bytes];
  v7 = 0;
  do
  {
    v8 = *v6;
    v6 += 2;
    v5[v7++] = v8;
  }

  while (v3 != v7);
  v5[v3] = 0;
  v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v5];
  free(v5);
  return v9;
}

uint64_t ACFHmacSHA1(void *a1, void *a2)
{
  result = 0;
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v5 = [a2 bytes];
      v6 = [a2 length];
      v7 = [a1 bytes];
      v8 = [a1 length];
      result = 0;
      if (v7)
      {
        if (v5)
        {
          v9[0] = 0;
          v9[1] = 0;
          v10 = 0;
          CCHmac(0, v5, v6, v7, v8, v9);
          return [MEMORY[0x29EDB8DA0] dataWithBytes:v9 length:20];
        }
      }
    }
  }

  return result;
}

uint64_t ACFHmacSHA256(void *a1, void *a2)
{
  result = 0;
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v5 = [a2 bytes];
      v6 = [a2 length];
      v7 = [a1 bytes];
      v8 = [a1 length];
      result = 0;
      if (v7)
      {
        if (v5)
        {
          memset(v9, 0, sizeof(v9));
          CCHmac(2u, v5, v6, v7, v8, v9);
          return [MEMORY[0x29EDB8DA0] dataWithBytes:v9 length:32];
        }
      }
    }
  }

  return result;
}

uint64_t ACFLogSettingsGetLevel()
{
  v1 = 2;
  result = _logLevel;
  if (_logLevel < 0)
  {
    if (ACFPreferencesGetIntegerValue(@"ACCLogLevel", @"com.apple.ist.ds.appleconnect.mobile.external", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90], 0, &v1))
    {
      return v1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t ACFLogSettingsGetDestination()
{
  v1 = 0;
  result = _logDestination;
  if (_logDestination >= 3)
  {
    result = ACFPreferencesGetIntegerValue(@"ACCLogDestination", @"com.apple.ist.ds.appleconnect.mobile.external", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90], 0, &v1);
    if (result)
    {
      return v1;
    }
  }

  return result;
}

CFStringRef ACFLogSettingsGetFilePath()
{
  if (_logFilePath)
  {
    return CFStringCreateCopy(*MEMORY[0x29EDB8ED8], _logFilePath);
  }

  else
  {
    return ACFPreferencesCopyString(@"ACCLogFilePath", @"com.apple.ist.ds.appleconnect.mobile.external", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90], 0);
  }
}

void ACFLogSettingsSetLevel(unsigned int a1)
{
  valuePtr = a1;
  if (a1 <= 5)
  {
    v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v1)
    {
      v2 = v1;
      CFPreferencesSetValue(@"ACCLogLevel", v1, @"com.apple.ist.ds.appleconnect.mobile.external", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
      CFRelease(v2);
    }
  }
}

void ACFLogSettingsSetDestination(unsigned int a1)
{
  valuePtr = a1;
  if (a1 <= 2)
  {
    v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v1)
    {
      v2 = v1;
      CFPreferencesSetValue(@"ACCLogDestination", v1, @"com.apple.ist.ds.appleconnect.mobile.external", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
      CFRelease(v2);
    }
  }
}

uint64_t ACFLogSettingsSynchronizeWithPreferences()
{
  if (ACFGetHomedirAccess())
  {
    v0 = ACFPreferencesCopyPreferencesFilePath(@"com.apple.ist.ds.appleconnect.mobile.external", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
    if (v0)
    {
      v1 = v0;
      v7 = 0;
      v2 = ACFPreferencesCopyDictionaryWithContentsOfFile(v0, &v7);
      v3 = v2;
      if (v7 || !v2)
      {
        v4 = 0;
        v5 = 0;
        if (!v2)
        {
LABEL_9:
          CFRelease(v1);
          return v5;
        }
      }

      else
      {
        ACFLogSettingsSynchronizeFromDictionary(v2);
        v4 = 1;
      }

      CFRelease(v3);
      v5 = v4;
      goto LABEL_9;
    }
  }

  return 0;
}

const __CFDictionary *ACFLogSettingsSynchronizeFromDictionary(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, @"ACCLogLevel");
    v7 = 0;
    if (ACFConvertCFTypeToInteger(Value, &v7) && v7 <= 5)
    {
      _logLevel = v7;
    }

    v3 = CFDictionaryGetValue(v1, @"ACCLogDestination");
    v6 = 0;
    if (ACFConvertCFTypeToInteger(v3, &v6) && v6 <= 2)
    {
      _logDestination = v6;
    }

    result = CFDictionaryGetValue(v1, @"ACCLogFilePath");
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      result = CFStringGetTypeID();
      if (v5 == result)
      {
        result = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v4);
        _logFilePath = result;
      }
    }
  }

  return result;
}

void ACFLogImpl(int a1, uint64_t a2, char *__s, uint64_t a4, const char *a5, uint64_t a6)
{
  if (!a6)
  {
    return;
  }

  v8 = __s;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = "ACUnknown";
  }

  if (__s)
  {
    v12 = strrchr(__s, 47);
    if (v12)
    {
      v8 = v12 + 1;
    }
  }

  Destination = ACFLogSettingsGetDestination();
  if (!Destination)
  {
    v14 = a1;
    v15 = a2;
    v16 = v8;
    v17 = a4;
    v18 = v11;
    v19 = a6;
    v20 = 0;
LABEL_17:

    ACFLogImplASL(v14, v15, v16, v17, v18, v19, v20);
    return;
  }

  if (Destination != 1)
  {
    if (Destination != 2)
    {
      return;
    }

    v14 = a1;
    v15 = a2;
    v16 = v8;
    v17 = a4;
    v18 = v11;
    v19 = a6;
    v20 = 1;
    goto LABEL_17;
  }

  ACFLogImplStandard(a1, a2, v8, a4, v11, a6);
}

asl_object_t ACFLogImplASL(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, int a7)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = "";
  }

  result = asl_open(0, v13, 2u);
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (a7 != 1)
  {
    v20 = 0xFFFFFFFFLL;
LABEL_25:
    v21 = 1;
    goto LABEL_26;
  }

  FilePath = ACFLogSettingsGetFilePath();
  v17 = FilePath;
  if (FilePath)
  {
    CopyExpandingTildeInPath = FilePath;
  }

  else
  {
    CopyExpandingTildeInPath = @"~/Library/Logs/AppleConnect.log";
  }

  if (CFStringHasPrefix(CopyExpandingTildeInPath, @"~"))
  {
    if (!ACFGetHomedirAccess())
    {
      v19 = 0;
      goto LABEL_19;
    }

    CopyExpandingTildeInPath = ACFStringCreateCopyExpandingTildeInPath(CopyExpandingTildeInPath);
    v19 = CopyExpandingTildeInPath;
    if (!CopyExpandingTildeInPath)
    {
LABEL_19:
      v20 = 0xFFFFFFFFLL;
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v19 = 0;
  }

  buffer[0] = 0;
  if (CFStringGetCString(CopyExpandingTildeInPath, buffer, 1024, 0x8000100u) != 1)
  {
    goto LABEL_19;
  }

  v20 = open(buffer, 522, 438);
  if (v17)
  {
LABEL_20:
    CFRelease(v17);
  }

LABEL_21:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20 == -1)
  {
    goto LABEL_25;
  }

  asl_add_log_file(v15, v20);
  v21 = 0;
LABEL_26:
  if (a1 >= 5)
  {
    v22 = 5;
  }

  else
  {
    v22 = a1;
  }

  buffer[0] = 0;
  v23 = kACFLogLevelNames[a1];
  v24 = pthread_self();
  v25 = CFStringCreateWithFormat(0, 0, @"%s: %@ <%s:%s, %s:%ld, Thread:%p>", v23, a6, v13, a2, a3, a4, v24);
  v26 = v25;
  if (v25)
  {
    v27 = ACFStringConvertToCString(v25, 0x8000100u, buffer);
  }

  else
  {
    v27 = 0;
  }

  v28 = "";
  if (v27)
  {
    v28 = v27;
  }

  asl_log(v15, 0, v22, "%s", v28);
  if ((v21 & 1) == 0)
  {
    MEMORY[0x29C288C40](v15, v20);
    close(v20);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    if (buffer[0] == 1)
    {
      free(v27);
    }
  }

  return MEMORY[0x29C288C10](v15);
}

void ACFLogImplStandard(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v10 = kACFLogLevelNames[a1];
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = "";
  }

  v12 = pthread_self();
  v13 = CFStringCreateWithFormat(0, 0, @"%s: %@ <%s:%s, %s:%ld, Thread:%p>", v10, a6, v11, a2, a3, a4, v12);
  if (v13)
  {
    v14 = v13;
    CFShow(v13);

    CFRelease(v14);
  }
}

void ACFLog(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    ACFLogWithArgs(a1, a2, a3, a4, a5, a6, va);
  }
}

void ACFLogWithArgs(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, char *cStr, uint64_t a7)
{
  if (cStr)
  {
    v13 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x29EDB8EE8]);
    if (v13)
    {
      v14 = v13;
      ACFLogNSWithArgs(a1, a2, a3, a4, a5, v13, a7);

      CFRelease(v14);
    }
  }
}

void ACFLogNSWithArgs(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    ACFLogImpl(a1, a2, a3, a4, a5, [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:a6 arguments:a7]);
  }
}

void ACFLogCF(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, const __CFString *a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a6)
  {
    ACFLogCFWithArgs(a1, a2, a3, a4, a5, a6, &a9);
  }
}

void ACFLogCFWithArgs(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, CFStringRef format, va_list arguments)
{
  if (format)
  {
    v12 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
    if (v12)
    {
      v13 = v12;
      ACFLogImpl(a1, a2, a3, a4, a5, v12);

      CFRelease(v13);
    }
  }
}

void ACFLogNS(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {
    ACFLogNSWithArgs(a1, a2, a3, a4, a5, a6, &a9);
  }
}

double ACFProfileCurrentTime()
{
  if (*&ACFProfileCurrentTime_sACFProfileScale == 0.0 && !pthread_mutex_lock(&ACFProfileCurrentTime_sACFProfileMutex))
  {
    if (*&ACFProfileCurrentTime_sACFProfileScale == 0.0)
    {
      info = 0;
      mach_timebase_info(&info);
      LODWORD(v1) = info.denom;
      LODWORD(v0) = info.numer;
      *&ACFProfileCurrentTime_sACFProfileScale = v0 / v1 * 0.000000001;
    }

    pthread_mutex_unlock(&ACFProfileCurrentTime_sACFProfileMutex);
  }

  return *&ACFProfileCurrentTime_sACFProfileScale * mach_absolute_time();
}

double ACFProfileStart(uint64_t a1, char *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = ACFProfileCurrentTime();
  if (a5)
  {
    ACFLog(8, a1, a2, a3, a4, "<%s> { ");
  }

  else
  {
    ACFLog(8, a1, a2, a3, a4, "{");
  }

  return v10;
}

void ACFProfileEnd(uint64_t a1, char *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  ACFProfileCurrentTime();
  if (a5)
  {
    ACFLog(8, a1, a2, a3, a4, "} <%s> duration: %g seconds");
  }

  else
  {
    ACFLog(8, a1, a2, a3, a4, "} duration: %g seconds");
  }
}

void ACFLogC(int a1, uint64_t a2, char *a3, uint64_t a4, const char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {
    ACFLogWithArgs(a1, a2, a3, a4, a5, a6, &a9);
  }
}

id mapUserName(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBA050] stringWithString:a1];
  v2 = [v1 length];
  [v1 replaceOccurrencesOfString:@" " withString:@"#" options:0 range:{0, v2}];
  [v1 replaceOccurrencesOfString:@"@" withString:@"%" options:0 range:{0, v2}];
  v3 = [v1 copy];

  return v3;
}

void sub_298345F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x298345F4CLL);
  }

  JUMPOUT(0x298345F78);
}

void sub_298345F70(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exc_buf);
      if (qword_2A1EB8F40 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACFHTTPMethodInvocation invoke]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFHTTPMethodInvocation.m", 182, 0, "Exception has been thrown - %@");
      }

      objc_end_catch();
      JUMPOUT(0x298345E48);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x298345E50);
  }

  JUMPOUT(0x298345F4CLL);
}

void sub_298345FD4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x298345FE0);
  }

  JUMPOUT(0x298345F4CLL);
}

__CFData *ACFDataCreateFromByteString(const __CFAllocator *a1, const __CFString *a2)
{
  v13 = 0;
  v3 = ACFStringConvertToCString(a2, 0x8000100u, &v13);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = strlen(v3);
  v6 = v5;
  if (v5)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDataCreateMutable(a1, v5 >> 1);
    if (Mutable)
    {
      __endptr = 0;
      __str[2] = 0;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += 2)
        {
          __str[0] = v4[i];
          __str[1] = v4[i + 1];
          bytes = strtol(__str, &__endptr, 16);
          CFDataAppendBytes(Mutable, &bytes, 1);
        }
      }
    }
  }

  if (v13)
  {
    free(v4);
  }

  return Mutable;
}

char *ACFStringConvertToCString(const __CFString *a1, CFStringEncoding a2, _BYTE *a3)
{
  if (a1)
  {
    CStringPtr = CFStringGetCStringPtr(a1, a2);
    if (CStringPtr)
    {
      result = strdup(CStringPtr);
      *a3 = 1;
      return result;
    }

    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
    v10 = MaximumSizeForEncoding + 1;
    if ((MaximumSizeForEncoding + 1) >= 2)
    {
      v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x376ED239uLL);
      if (!v11)
      {
        return v11;
      }

      if (CFStringGetCString(a1, v11, v10, a2))
      {
        *a3 = 1;
        return v11;
      }

      bzero(v11, v10);
      free(v11);
    }
  }

  return 0;
}

__CFString *ACFDataCreateByteString(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr)
  {
    return 0;
  }

  v6 = Length;
  Mutable = CFStringCreateMutable(a1, 2 * Length);
  if (Mutable && v6 >= 1)
  {
    do
    {
      v8 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02X", v8);
      --v6;
    }

    while (v6);
  }

  return Mutable;
}

uint64_t ACFNumberGetBooleanValue(const __CFNumber *a1)
{
  valuePtr = 0.0;
  if (!CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr))
  {
    return 0;
  }

  v1 = MEMORY[0x29EDB8EF8];
  if (valuePtr != 0.0)
  {
    v1 = MEMORY[0x29EDB8F00];
  }

  return *v1;
}

uint64_t ACFGetBooleanValue(const __CFString *a1)
{
  v1 = *MEMORY[0x29EDB8EF8];
  if (!a1)
  {
    return v1;
  }

  v3 = CFGetTypeID(a1);
  if (v3 == CFBooleanGetTypeID())
  {
    return a1;
  }

  if (v3 == CFNumberGetTypeID())
  {

    return ACFNumberGetBooleanValue(a1);
  }

  else
  {
    if (v3 != CFStringGetTypeID())
    {
      return v1;
    }

    return ACFStringGetBooleanValue(a1);
  }
}

uint64_t ACFStringGetBooleanValue(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v2 = MutableCopy;
  CFStringTrimWhitespace(MutableCopy);
  Length = CFStringGetLength(v2);
  v7.location = 0;
  v7.length = Length;
  if (CFStringCompareWithOptions(v2, @"NO", v7, 1uLL) && (v8.location = 0, v8.length = Length, CFStringCompareWithOptions(v2, @"FALSE", v8, 1uLL)) && (v9.location = 0, v9.length = Length, CFStringCompareWithOptions(v2, @"0", v9, 1uLL)))
  {
    v10.location = 0;
    v10.length = Length;
    if (CFStringCompareWithOptions(v2, @"YES", v10, 1uLL))
    {
      v11.location = 0;
      v11.length = Length;
      if (CFStringCompareWithOptions(v2, @"TRUE", v11, 1uLL))
      {
        if (CFStringGetDoubleValue(v2) == 0.0)
        {
          v5 = 0;
          goto LABEL_11;
        }
      }
    }

    v4 = MEMORY[0x29EDB8F00];
  }

  else
  {
    v4 = MEMORY[0x29EDB8EF8];
  }

  v5 = *v4;
LABEL_11:
  CFRelease(v2);
  return v5;
}

__CFString *ACFStringCreateCopyExpandingTildeInPath(CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    if (CFStringHasPrefix(MutableCopy, @"~"))
    {
      v3 = ACFCopyHomeDirectoryURLForUser(0);
      if (v3)
      {
        v4 = v3;
        v5 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
        if (v5)
        {
          v6 = v5;
          v8.location = 0;
          v8.length = 1;
          CFStringReplace(v2, v8, v5);
          CFRelease(v6);
        }

        CFRelease(v4);
      }
    }
  }

  return v2;
}

CFURLRef ACFCopyHomeDirectoryURLForUser(const __CFString *a1)
{
  if (a1)
  {
    v11 = 0;
    v2 = ACFStringConvertToCString(a1, 0x8000100u, &v11);
    if (!v2)
    {
      if (qword_2A1EB8F48 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "CFURLRef ACFCopyHomeDirectoryURLForUser(CFStringRef)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 259, 0, "Failed to convert user name '%@' to UTF8 string.", a1);
      }

      return 0;
    }

    v3 = v2;
    v4 = getpwnam(v2);
    if (v11 == 1)
    {
      free(v3);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = geteuid();
    if (!v5)
    {
      v5 = getuid();
    }

    v4 = getpwuid(v5);
  }

  if (!v4)
  {
    return 0;
  }

LABEL_10:
  pw_dir = v4->pw_dir;
  if (!pw_dir)
  {
    return 0;
  }

  v7 = strlen(pw_dir);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *MEMORY[0x29EDB8EF0];

  return CFURLCreateFromFileSystemRepresentation(v9, pw_dir, v8, 1u);
}

uint64_t ACFConvertCFTypeToInteger(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {

      return CFNumberGetValue(v3, kCFNumberCFIndexType, a2);
    }

    else if (v4 == CFStringGetTypeID())
    {
      *a2 = CFStringGetIntValue(v3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *ACFPreferencesCopyPreferencesFilePath(const __CFString *a1, const __CFString *a2, CFStringRef theString1)
{
  v6 = CFStringCompare(theString1, *MEMORY[0x29EDB8F90], 0);
  v7 = CFStringCompare(a2, *MEMORY[0x29EDB8F98], 0);
  Mutable = CFStringCreateMutable(0, 0);
  v9 = Mutable;
  if (Mutable)
  {
    if (v7)
    {
      if (CFStringCompare(a2, *MEMORY[0x29EDB8FB0], 0))
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v11 = ACFCopyHomeDirectoryURLForUser(v10);
      if (v11)
      {
        v12 = v11;
        v13 = CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
        if (v13)
        {
          v14 = v13;
          CFStringAppend(v9, v13);
          CFStringAppend(v9, @"/");
          CFRelease(v14);
        }

        CFRelease(v12);
      }
    }

    else
    {
      if (v6)
      {
        v15 = @"/";
      }

      else
      {
        v15 = @"/Network/";
      }

      CFStringAppend(Mutable, v15);
    }

    if (v6)
    {
      v16 = v7 == kCFCompareEqualTo;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    if (v16)
    {
      v18 = @"Library/Preferences/";
    }

    else
    {
      v18 = @"Library/Preferences/ByHost/";
    }

    CFStringAppend(v9, v18);
    CFStringAppend(v9, a1);
    if ((v17 & 1) == 0 && CFStringCompare(theString1, *MEMORY[0x29EDB8FA8], 0))
    {
      CFStringAppend(v9, @".");
      CFStringAppend(v9, theString1);
    }

    CFStringAppend(v9, @".plist");
  }

  return v9;
}

CFTypeRef ACFPreferencesCopyValue(CFStringRef key, CFStringRef applicationID, CFStringRef userName, const __CFString *a4, const __CFDictionary *a5)
{
  if (!sACFHomedirAllowed)
  {
    if (*MEMORY[0x29EDB8F98] != userName)
    {
      goto LABEL_13;
    }

    v10 = ACFPreferencesCopyValueDirectlyFromFile(@"/Library/Preferences", key, applicationID);
    if (a5)
    {
      goto LABEL_16;
    }

    return v10;
  }

  v10 = CFPreferencesCopyValue(key, applicationID, userName, a4);
  if (v10)
  {
    return v10;
  }

  v11 = *MEMORY[0x29EDB8FB0];
  if (*MEMORY[0x29EDB8F98] != userName && v11 != userName)
  {
    v13 = ACFCopyLoginUserName();
    if (v13)
    {
      v14 = v13;
      v10 = 0;
      if (CFStringCompare(userName, v13, 0) == kCFCompareEqualTo)
      {
        v10 = CFPreferencesCopyValue(key, applicationID, v11, a4);
      }

      CFRelease(v14);
      if (!a5)
      {
        return v10;
      }

      goto LABEL_16;
    }
  }

LABEL_13:
  v10 = 0;
  if (!a5)
  {
    return v10;
  }

LABEL_16:
  if (v10)
  {
    return v10;
  }

  Value = CFDictionaryGetValue(a5, key);
  if (!Value)
  {
    return 0;
  }

  return CFRetain(Value);
}

CFStringRef ACFCopyLoginUserName()
{
  v2 = *MEMORY[0x29EDCA608];
  if (getlogin_r(cStr, 0x100uLL))
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  }
}

CFTypeRef ACFPreferencesCopyValueDirectlyFromFile(uint64_t a1, const void *a2, uint64_t a3)
{
  error = 0;
  format = 0;
  v4 = CFStringCreateWithFormat(0, 0, @"%@/%@.plist", a1, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  if (v6)
  {
    v7 = v6;
    v8 = CFReadStreamCreateWithFile(0, v6);
    v9 = v8;
    if (v8 && CFReadStreamOpen(v8) == 1)
    {
      v10 = CFPropertyListCreateWithStream(0, v9, 0, 0, &format, &error);
      if (v10)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v10))
        {
          Value = CFDictionaryGetValue(v10, a2);
          if (Value)
          {
            v13 = CFRetain(Value);
LABEL_12:
            CFRelease(v5);
            CFRelease(v7);
            if (v9)
            {
              CFReadStreamClose(v9);
              CFRelease(v9);
            }

            if (v10)
            {
              CFRelease(v10);
            }

            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v13 = 0;
    goto LABEL_12;
  }

  CFRelease(v5);
  v13 = 0;
LABEL_17:
  if (error)
  {
    CFRelease(error);
  }

  return v13;
}

CFMutableDictionaryRef ACFPreferencesCopyDictionaryWithContentsOfFile(CFStringRef filePath, CFStringRef *a2)
{
  v4 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFReadStreamCreateWithFile(*MEMORY[0x29EDB8ED8], v4);
    if (v6)
    {
      v7 = v6;
      if (CFReadStreamOpen(v6))
      {
        error = 0;
        format = kCFPropertyListXMLFormat_v1_0;
        v8 = CFPropertyListCreateWithStream(0, v7, 0, 0, &format, &error);
        if (v8)
        {
          v9 = v8;
          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(v9))
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
          }

          else
          {
            MutableCopy = 0;
          }

          CFRelease(v9);
        }

        else
        {
          MutableCopy = 0;
        }

        v12 = error;
        if (error)
        {
          if (a2)
          {
            *a2 = CFErrorCopyDescription(error);
            v12 = error;
          }

          CFRelease(v12);
        }

        CFReadStreamClose(v7);
      }

      else
      {
        MutableCopy = 0;
      }

      CFRelease(v7);
    }

    else
    {
      MutableCopy = 0;
      if (a2)
      {
        *a2 = CFStringCreateWithFormat(0, 0, @"Failed to create read stream with file %@.", v5);
      }
    }

    CFRelease(v5);
  }

  else
  {
    MutableCopy = 0;
    if (a2)
    {
      *a2 = CFStringCreateWithFormat(0, 0, @"Failed to create CFURL with path %@.", filePath);
    }
  }

  return MutableCopy;
}

const void *ACFPreferencesCopyArray(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5)
{
  v5 = ACFPreferencesCopyValue(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

const void *ACFPreferencesCopyDictionary(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5)
{
  v5 = ACFPreferencesCopyValue(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFDictionaryGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

const void *ACFPreferencesCopyString(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5)
{
  v5 = ACFPreferencesCopyValue(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFStringGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t ACFPreferencesGetBooleanValue(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5, Boolean *a6)
{
  v7 = ACFPreferencesCopyValue(a1, a2, a3, a4, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = ACFGetBooleanValue(v7);
  if (v9)
  {
    if (a6)
    {
      *a6 = CFBooleanGetValue(v9);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v8);
  return v10;
}

uint64_t ACFPreferencesGetIntegerValue(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5, void *a6)
{
  v7 = ACFPreferencesCopyValue(a1, a2, a3, a4, a5);
  v8 = ACFConvertCFTypeToInteger(v7, a6);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t ACFPreferencesGetDoubleValue(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFDictionary *a5, double *a6)
{
  v7 = ACFPreferencesCopyValue(a1, a2, a3, a4, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 == CFNumberGetTypeID())
  {
    Value = CFNumberGetValue(v8, kCFNumberDoubleType, a6);
  }

  else if (v9 == CFStringGetTypeID())
  {
    if (a6)
    {
      *a6 = CFStringGetDoubleValue(v8);
    }

    Value = 1;
  }

  else
  {
    Value = 0;
  }

  CFRelease(v8);
  return Value;
}

uint64_t ACFPreferencesSynchronize(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  if (sACFHomedirAllowed)
  {
    return CFPreferencesSynchronize(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t ACFSystemVersion()
{
  if (!ACFSystemVersion_sACFSystemVersion)
  {
    v0 = ACFCopySystemVersionDictionary();
    if (v0)
    {
      v1 = v0;
      Value = CFDictionaryGetValue(v0, @"ProductVersion");
      if (!Value)
      {
        if (qword_2A1EB8F48 && (ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "unsigned int ACFSystemVersion(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 664, 0, "Failed to get system version. SystemVersion.plist doesn't contain ProductVersion.");
        }

        goto LABEL_20;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, Value, @".");
      if (!ArrayBySeparatingStrings)
      {
        if (qword_2A1EB8F48 && (ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "unsigned int ACFSystemVersion(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 669, 0, "Failed to get system version. Failed to create substring from ProductVersion string %@.", 0);
        }

        goto LABEL_20;
      }

      v4 = ArrayBySeparatingStrings;
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      if (Count < 1)
      {
        v9 = 0;
        v8 = 0;
      }

      else
      {
        v6 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
        v8 = CFStringGetIntValue(ValueAtIndex) << 16;
        if (v6 == 1)
        {
          v9 = 0;
        }

        else
        {
          v10 = CFArrayGetValueAtIndex(v4, 1);
          v9 = CFStringGetIntValue(v10) << 8;
          if (v6 >= 3)
          {
            v11 = CFArrayGetValueAtIndex(v4, 2);
            IntValue = CFStringGetIntValue(v11);
LABEL_19:
            ACFSystemVersion_sACFSystemVersion = v8 | v9 | IntValue;
            CFRelease(v4);
LABEL_20:
            CFRelease(v1);
            return ACFSystemVersion_sACFSystemVersion;
          }
        }
      }

      IntValue = 0;
      goto LABEL_19;
    }
  }

  return ACFSystemVersion_sACFSystemVersion;
}

CFPropertyListRef ACFCopySystemVersionDictionary()
{
  error = 0;
  format = kCFPropertyListXMLFormat_v1_0;
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
  if (!v0)
  {
    if (qword_2A1EB8F48 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "CFDictionaryRef ACFCopySystemVersionDictionary(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 712, 0, "Failed to read SystemVersion.plist. CFURLCreateWithFileSystemPath fails");
    }

    return 0;
  }

  v1 = v0;
  v2 = CFReadStreamCreateWithFile(0, v0);
  if (!v2)
  {
    if (qword_2A1EB8F48 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "CFDictionaryRef ACFCopySystemVersionDictionary(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 714, 0, "Failed to read SystemVersion.plist. CFReadStreamCreateWithFile fails.");
    }

    CFRelease(v1);
    return 0;
  }

  v3 = v2;
  if (!CFReadStreamOpen(v2))
  {
    if (qword_2A1EB8F48 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "CFDictionaryRef ACFCopySystemVersionDictionary(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 716, 0, "Failed to read SystemVersion.plist. CFReadStreamOpen fails.");
    }

    goto LABEL_19;
  }

  v4 = CFPropertyListCreateWithStream(0, v3, 0, 0, &format, &error);
  v5 = v4;
  if (qword_2A1EB8F48 && !v4)
  {
    if ((ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "CFDictionaryRef ACFCopySystemVersionDictionary(void)", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFCoreFoundationConveniences.c", 718, 0, "Failed to read SystemVersion.plist. CFPropertyListCreateFromStream fails: %@.", error);
    }

LABEL_19:
    v5 = 0;
  }

  CFRelease(v1);
  CFReadStreamClose(v3);
  CFRelease(v3);
  if (error)
  {
    CFRelease(error);
  }

  return v5;
}

CFStringRef ACFCopyProcessNameForPID(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(v7, 0, 512);
  v3 = 648;
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = a1;
  v1 = sysctl(v4, 4u, v7, &v3, 0, 0);
  result = 0;
  if (!v1)
  {
    return CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], &v7[15] + 3, 0x8000100u);
  }

  return result;
}

uint64_t ACMExternalAppleConnectPrivateCreate(uint64_t a1)
{
  v2 = +[ACMExternalAppleConnectImplComponents components];

  return [v2 createAppleConnectImplWithMasterObject:a1];
}

void sub_29834D480(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void dispatch_async_on_main_thread(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v2 = [ACFDispatchHelper alloc];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __dispatch_async_on_main_thread_block_invoke;
  v4[3] = &unk_29EE91BB8;
  v4[4] = a1;
  v4[5] = &v5;
  v3 = [(ACFDispatchHelper *)v2 initWithBlock:v4];
  v6[5] = v3;
  [(ACFDispatchHelper *)v3 performSelectorOnMainThread:sel_dispatch withObject:0 waitUntilDone:0];
  _Block_object_dispose(&v5, 8);
}

void sub_29835552C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __dispatch_async_on_main_thread_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
}