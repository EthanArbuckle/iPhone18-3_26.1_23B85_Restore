id sub_1010(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a7, a8, a6, v16];
  v20 = sub_124C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v25 = &stru_C498;
    *buf = 136448002;
    v27 = "STCreateErrorWithInfo";
    v28 = 2080;
    if (v17)
    {
      v25 = v17;
    }

    v29 = a7;
    v30 = 1024;
    v31 = a8;
    v32 = 2080;
    v33 = a6;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = a2;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v25;
    _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}s: Error [%s:%d][%s]: %@ - %ld - %@ %@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v21 = [v18 mutableCopy];
  }

  else
  {
    v21 = [NSMutableDictionary dictionaryWithCapacity:2];
  }

  v22 = v21;
  [v21 setObject:v19 forKey:NSDebugDescriptionErrorKey];
  if (v17)
  {
    [v22 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v23 = [NSError errorWithDomain:v15 code:a2 userInfo:v22];

  return v23;
}

id sub_124C()
{
  if (qword_10A30 != -1)
  {
    sub_3814();
  }

  v1 = off_10960;

  return v1;
}

void sub_1290(id a1)
{
  v1 = sub_15F4();
  off_10960 = os_log_create("com.apple.StreamingExtractor", v1);

  _objc_release_x1();
}

id sub_12D4()
{
  if (qword_10A38 != -1)
  {
    sub_3828();
  }

  v1 = off_10968;

  return v1;
}

void sub_1318(id a1)
{
  v1 = sub_15F4();
  off_10968 = os_log_create("com.apple.StreamingExtractor.signposts", v1);

  _objc_release_x1();
}

id STCreateAEAError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = AAThreadErrorContextLeave();
  v9 = v8;
  v10 = v8 & 0x3FF;
  if ((v8 & 0x3FF) != 0)
  {
    v11 = [NSString stringWithFormat:@"aaError: 0x%x [errno: %d (%s)] - %@", v8, v10, strerror(v8 & 0x3FF), v7];
    v22 = @"errno";
    v12 = [NSNumber numberWithInt:v10];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = sub_1010(@"STExtractorError", v10, v11, 0, v13, a2, a3, a4);

    if (v10 == 28)
    {
      v15 = STExtractorErrorDomain;
      v16 = [NSString stringWithFormat:@"AEA unarchiver returned ENOSPC: %@", v7];
      v17 = sub_1238(v15, 15, v16, v14, "STCreateAEAError", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 42);
      goto LABEL_6;
    }
  }

  else
  {
    v18 = [NSString stringWithFormat:@"aaError: 0x%x - %@", v8, v7];
    v14 = sub_1238(@"STExtractorError", v9, v18, 0, a2, a3, a4);
  }

  v19 = STExtractorErrorDomain;
  v16 = [v14 description];
  v20 = [NSString stringWithFormat:@"AEA unarchiver encountered an error: %@", v16];
  v17 = sub_1238(v19, 6, v20, v14, "STCreateAEAError", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 44);

LABEL_6:

  return v17;
}

id STAEAProgressCallback(id result)
{
  if (result)
  {
    return [result extractionProgress:?];
  }

  return result;
}

id STAEAEntryMessageCallback(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return [result processEntryMessage:a2 path:a3 data:a4];
  }

  return result;
}

uint64_t sub_2470(void *a1, uint64_t a2)
{
  if (a1)
  {

    return [a1 aeaContextCallback:a2];
  }

  else
  {
    sub_4F54();
    return 0xFFFFFFFFLL;
  }
}

void sub_2848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2894(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = sub_124C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_52B0(a1);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = 0;
    while (1)
    {
      if (v9 >= *(a1 + 56))
      {
        goto LABEL_20;
      }

      v10 = *(*(a1 + 32) + 8);
      v11 = AAAssetExtractorWrite();
      v12 = v11;
      if (v11 < 0)
      {
        break;
      }

      if (!v11)
      {
        v20 = sub_124C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_534C(a1 + 32);
        }

        [*(a1 + 32) setIsComplete:1];
LABEL_19:
        *a5 = 1;
        goto LABEL_20;
      }

      v9 += v11;
      v13 = sub_124C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(*(a1 + 32) + 32);
        *buf = 138413314;
        v22 = v14;
        v23 = 2082;
        v24 = "[STAEAExtractor supplyBytes:withCompletionBlock:]_block_invoke";
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v9;
        v29 = 2048;
        v30 = a4;
        _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "[%@] %{public}s: AAAssetExtractorWrite wrote %ld bytes which brings it to %zu out of %zu", buf, 0x34u);
      }

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_20;
      }
    }

    v15 = sub_124C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_53D0(a1 + 32);
    }

    v16 = [NSString stringWithFormat:@"AAAssetExtractorWrite returned %ld", v12];
    v17 = STCreateAEAError(v16, "[STAEAExtractor supplyBytes:withCompletionBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 441);
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_19;
  }

  v9 = 0;
LABEL_20:
  *(*(a1 + 32) + 16) += v9;
}

void sub_35B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void sub_3650(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

id sub_36A0(uint64_t a1)
{

  return [v1 setError:a1];
}

void sub_36BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

uint64_t sub_36D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

BOOL sub_36E0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_3704(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_3730(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x2Au);
}

BOOL sub_3750(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_3768(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  v4 = 136446466;
  v5 = "[STReservableSpacePolicy invalidate]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s: Invalidating the reservable space policy failed: %@", &v4, 0x16u);
}

void sub_383C(void *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_35B4(&dword_0, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_3904(void *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_35B4(&dword_0, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_39CC(void *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_35B4(&dword_0, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_3A94(void *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_35B4(&dword_0, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_3B5C(void *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_35B4(&dword_0, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_3C24(void *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_35B4(&dword_0, v4, v5, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v6, v7, v8, v9, 2u);
  }
}

id sub_3CEC(void *a1, void *a2, uint64_t *a3)
{
  v7 = sub_124C();
  if (sub_3750(v7))
  {
    v13[0] = 136447490;
    sub_358C();
    sub_35E4();
    sub_354C();
    *(&v13[13] + 2) = 237;
    sub_36BC(&dword_0, v3, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13);
  }

  v8 = STExtractorErrorDomain;
  v9 = [NSString stringWithFormat:@"Failed to get archive identifier from extractor context - identifier is required"];
  *a2 = v9;
  v10 = sub_1238(v8, 6, v9, 0, "[STAEAExtractor aeaContextCallback:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 237);
  *a3 = v10;
  return [a1 setError:v10];
}

void sub_3E28(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = sub_124C();
  if (sub_3750(v7))
  {
    v13[0] = 136447490;
    sub_3578();
    sub_35D4();
    sub_3534();
    *(&v13[13] + 2) = 240;
    sub_36BC(&dword_0, v3, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13);
  }

  v8 = STExtractorErrorDomain;
  v9 = [a1 archiveID];
  *a3 = v9;
  v10 = [NSString stringWithFormat:@"Archive identifier mismatch.  Archive: %@ - Expected: %@", a2, v9];
  v11 = sub_1238(v8, 6, v10, 0, "[STAEAExtractor aeaContextCallback:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 240);
  [a1 setError:v11];
}

id sub_3F8C(void *a1, void *a2, uint64_t *a3)
{
  v7 = sub_124C();
  if (sub_3750(v7))
  {
    v13[0] = 136447490;
    sub_358C();
    sub_35E4();
    sub_354C();
    *(&v13[13] + 2) = 234;
    sub_36BC(&dword_0, v3, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13);
  }

  v8 = STExtractorErrorDomain;
  v9 = [NSString stringWithFormat:@"No AEA context and archiveID is required. Likely an incorrectly formatted archive."];
  *a2 = v9;
  v10 = sub_1238(v8, 6, v9, 0, "[STAEAExtractor aeaContextCallback:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 234);
  *a3 = v10;
  return [a1 setError:v10];
}

void sub_40C8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_358C();
    sub_35E4();
    sub_354C();
    sub_35B4(&dword_0, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"No AEA context and decryption key was provided. Archive is not encrypted."];
  v4 = sub_35F4();
  v10 = sub_1238(v4, v5, v6, v7, v8, v9, 245);
  sub_36A0(v10);
}

void sub_41E4()
{
  v1 = sub_124C();
  if (sub_36E0(v1))
  {
    sub_358C();
    sub_35E4();
    sub_354C();
    sub_35B4(&dword_0, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"Failed to set encryption key on extractor context"];
  v4 = sub_35F4();
  v10 = sub_1238(v4, v5, v6, v7, v8, v9, 255);
  sub_36A0(v10);
}

void sub_4300(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_358C();
    sub_35E4();
    sub_354C();
    sub_35B4(&dword_0, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"No AEA context and decryption key was provided. Archive is not encrypted."];
  v4 = sub_35F4();
  v10 = sub_1238(v4, v5, v6, v7, v8, v9, 250);
  sub_36A0(v10);
}

void sub_441C()
{
  v2[0] = 136447490;
  sub_351C();
  sub_3670();
  v3 = "";
  sub_3564();
  v4 = 264;
  sub_36BC(&dword_0, v0, v1, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v2);
}

void sub_44C4()
{
  v1 = sub_124C();
  if (sub_36E0(v1))
  {
    sub_358C();
    sub_35E4();
    sub_354C();
    sub_35B4(&dword_0, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"Failed to set signing key on extractor context"];
  v4 = sub_35F4();
  v10 = sub_1238(v4, v5, v6, v7, v8, v9, 267);
  sub_36A0(v10);
}

void sub_45E0()
{
  v1 = sub_124C();
  if (sub_36E0(v1))
  {
    sub_358C();
    sub_35E4();
    sub_354C();
    sub_35B4(&dword_0, v11, v12, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v13, v14, v15, v16, 2u);
  }

  v2 = STExtractorErrorDomain;
  v3 = [NSString stringWithFormat:@"Archive is not signed - signing key was provided and is required"];
  v4 = sub_35F4();
  v10 = sub_1238(v4, v5, v6, v7, v8, v9, 261);
  sub_36A0(v10);
}

void sub_46FC(uint64_t a1, uint64_t a2)
{
  v2 = [sub_367C(a1 a2)];
  sub_362C();
  sub_3618();
  sub_3608();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

uint64_t sub_479C(uint64_t *a1)
{
  v3 = sub_124C();
  if (sub_36E0(v3))
  {
    v10[0] = 136447490;
    sub_3578();
    sub_35D4();
    sub_3534();
    *(&v10[13] + 2) = 376;
    sub_36BC(&dword_0, v1, v9, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v10);
  }

  v4 = STExtractorErrorDomain;
  v5 = __error();
  v6 = strerror(*v5);
  v7 = [NSString stringWithFormat:@"Couldn't acquire sandbox extension: %s (%d)", v6, *__error()];
  *a1 = sub_1238(v4, 10, v7, 0, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 376);

  return AAThreadErrorContextLeave();
}

void sub_48F0(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = sub_124C();
  if (sub_3750(v7))
  {
    v11[0] = 136447490;
    sub_3578();
    sub_35D4();
    sub_3534();
    *(&v11[13] + 2) = 380;
    sub_36BC(&dword_0, v3, v10, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v11);
  }

  v8 = [a1 sourceDirectory];
  v9 = [NSString stringWithFormat:@"Couldn't set input directory %@, returned %d", v8, a2];
  *a3 = STCreateAEAError(v9, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 380);
}

void sub_4A24()
{
  sub_36F8();
  v3 = sub_124C();
  if (sub_3704(v3))
  {
    sub_3578();
    sub_35D4();
    sub_3534();
    sub_3650(&dword_0, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, v11, v12, 2u);
  }

  v4 = [NSString stringWithFormat:@"Couldn't set extractor context callback, returned %d", v1];
  *v0 = STCreateAEAError(v4, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 384);
}

void sub_4B30()
{
  sub_36F8();
  v3 = sub_124C();
  if (sub_3704(v3))
  {
    sub_3578();
    sub_35D4();
    sub_3534();
    sub_3650(&dword_0, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, v11, v12, 2u);
  }

  v4 = [NSString stringWithFormat:@"Couldn't set extractor progress callback, returned %d", v1];
  *v0 = STCreateAEAError(v4, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 387);
}

void sub_4C3C()
{
  sub_36F8();
  v3 = sub_124C();
  if (sub_3704(v3))
  {
    sub_3578();
    sub_35D4();
    sub_3534();
    sub_3650(&dword_0, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, v11, v12, 2u);
  }

  v4 = [NSString stringWithFormat:@"Couldn't set extractor entry message callback, returned %d", v1];
  *v0 = STCreateAEAError(v4, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 390);
}

void sub_4D48()
{
  sub_36F8();
  v3 = sub_124C();
  if (sub_3704(v3))
  {
    sub_3578();
    sub_35D4();
    sub_3534();
    sub_3650(&dword_0, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, v11, v12, 2u);
  }

  v4 = [NSString stringWithFormat:@"Couldn't set extractor progress arg, returned %d", v1];
  *v0 = STCreateAEAError(v4, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 393);
}

void sub_4E54(NSObject *a1, uint64_t *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_358C();
    sub_35E4();
    sub_354C();
    sub_35B4(&dword_0, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  v4 = [NSString stringWithFormat:@"Couldn't create extractor"];
  *a2 = STCreateAEAError(v4, "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 369);
}

void sub_4F54()
{
  v0 = sub_124C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_3608();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

void sub_5024(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_3608();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

void sub_50F0(uint64_t a1)
{
  v1 = *(sub_36D4(a1, __stack_chk_guard) + 16);
  sub_35A0();
  sub_368C();
  sub_3730(&dword_0, v2, v3, "[%@] %{public}s: Received %zu bytes for extraction, offset %lld");
}

void sub_5170(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2082;
  *(buf + 14) = "[STAEAExtractor supplyBytes:withCompletionBlock:]";
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[%@] %{public}s: Failed to create a reservable space policy while bytes are being received: %@", buf, 0x20u);
}

void sub_51EC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_351C();
    sub_3670();
    sub_3564();
    sub_3608();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

void sub_52B0(uint64_t a1)
{
  sub_36D4(a1, __stack_chk_guard);
  *v4 = 138413058;
  *&v4[4] = *(v1 + 32);
  *&v4[12] = 2082;
  *&v4[14] = "[STAEAExtractor supplyBytes:withCompletionBlock:]_block_invoke";
  *&v4[22] = 2048;
  LOWORD(v5) = 2048;
  *(&v5 + 2) = *(v1 + 16);
  sub_3730(&dword_0, v2, v3, "[%@] %{public}s: Extracting %zu bytes, offset %lld", *v4, *&v4[8], *&v4[16], v2, v5, WORD4(v5));
}

void sub_534C(uint64_t a1)
{
  v1 = *(*a1 + 32);
  sub_35A0();
  sub_368C();
  sub_3640();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_53D0(uint64_t a1)
{
  v1 = *(*a1 + 32);
  sub_35A0();
  sub_368C();
  sub_3640();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_5454(uint64_t a1, uint64_t a2)
{
  v2 = [sub_367C(a1 a2)];
  sub_362C();
  sub_3618();
  sub_3608();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_54F4()
{
  sub_36F8();
  v3 = sub_124C();
  if (sub_3704(v3))
  {
    sub_3578();
    sub_35D4();
    sub_3534();
    sub_3650(&dword_0, v5, v6, "%{public}s: %s: AssertMacros: %s, %s file: %s, line: %d\n", v7, v8, v9, v10, v11, v12, 2u);
  }

  v4 = [NSString stringWithFormat:@"failed to suspend stream: %d", v1];
  *v0 = STCreateAEAError(v4, "[STAEAExtractor suspendStreamWithCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 507);
}

void sub_5600(uint64_t a1)
{
  sub_36D4(a1, __stack_chk_guard);
  sub_35A0();
  v3 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "[%@] %{public}s: No extractor to suspend", v2, 0x16u);
}

void sub_5680(uint64_t a1, uint64_t a2)
{
  v2 = [sub_367C(a1 a2)];
  sub_362C();
  sub_3618();
  sub_3608();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_5720(uint64_t a1)
{
  sub_36D4(a1, __stack_chk_guard);
  sub_35A0();
  sub_371C();
  sub_3640();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_579C(uint64_t a1)
{
  sub_36D4(a1, __stack_chk_guard);
  sub_35A0();
  sub_3640();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_5824(uint64_t a1, uint64_t a2)
{
  v2 = [sub_367C(a1 a2)];
  sub_362C();
  sub_3618();
  sub_3608();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_58C4(uint64_t a1)
{
  sub_36D4(a1, __stack_chk_guard);
  sub_35A0();
  sub_371C();
  sub_3640();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}