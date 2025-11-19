void SSFileLog(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = a2;
  if ([v10 writeToDisk])
  {
    pthread_mutex_lock(&__FileLogsLock);
    if (!__FileLogs)
    {
      v12 = [[SSLRUCache alloc] initWithMaxSize:10];
      v13 = __FileLogs;
      __FileLogs = v12;
    }

    if (!__FileLogsDateFormatter)
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v15 = __FileLogsDateFormatter;
      __FileLogsDateFormatter = v14;

      [__FileLogsDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
      v16 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
      [__FileLogsDateFormatter setLocale:v16];
    }

    v17 = [__FileLogs objectForKey:v10];
    if (v17)
    {
      v18 = v17;
      pthread_mutex_unlock(&__FileLogsLock);
LABEL_9:
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];
      v22 = __FileLogsDateFormatter;
      v23 = [MEMORY[0x1E695DF00] date];
      v24 = [v22 stringFromDate:v23];

      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [%d]: %@\n", v24, getpid(), v21];
      [(SSRollableLog *)v18 writeString:v25];

      goto LABEL_10;
    }

    v19 = [SSRollableLog alloc];
    v20 = [v10 logFileOptions];
    v18 = [(SSRollableLog *)v19 initWithLogOptions:v20];

    [__FileLogs setObject:v18 forKey:v10];
    pthread_mutex_unlock(&__FileLogsLock);
    if (v18)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
}

id SSGenerateLogCorrelationString()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  v2 = [v1 componentsSeparatedByString:@"-"];
  v3 = [v2 firstObject];

  return v3;
}

id SSHashIfNeeded(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (+[SSDevice deviceIsInternalBuild](SSDevice, "deviceIsInternalBuild") || (+[SSLogConfig sharedStoreServicesConfig](SSLogConfig, "sharedStoreServicesConfig"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 debugLogsEnabled], v2, v3))
    {
      v4 = v1;
    }

    else
    {
      if (SSHashIfNeeded_ss_once_token___COUNTER__ != -1)
      {
        SSHashIfNeeded_cold_1();
      }

      v5 = SSHashIfNeeded_ss_once_object___COUNTER__;
      v6 = [v5 objectForKey:v1];
      v7 = v6;
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v8 = [v1 dataUsingEncoding:10];
        if (CC_SHA512([v8 bytes], objc_msgSend(v8, "length"), md))
        {
          v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
          for (i = 0; i != 64; ++i)
          {
            [v4 appendFormat:@"%02x", md[i]];
          }

          [v5 setObject:v4 forKey:v1];
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __SSHashIfNeeded_block_invoke()
{
  v0 = objc_alloc_init(SSLRUCache);
  v1 = SSHashIfNeeded_ss_once_object___COUNTER__;
  SSHashIfNeeded_ss_once_object___COUNTER__ = v0;
}

void aslgmuibau()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E84B4150[((-3 * (dword_1EC7E1DF0 ^ 0x8A ^ dword_1EC7E1DC8)) ^ byte_1D4B39C10[byte_1D4B398F0[(-3 * (dword_1EC7E1DF0 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 7]) + 16];
  v1 = *(v0 - 4);
  v2 = qword_1E84B4150[(byte_1D4B395F8[(byte_1D4B392EC[(-3 * (v1 ^ dword_1EC7E1DC8 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_1EC7E1DC8 ^ 0x8A))) - 58];
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DF0) ^ 0x8A)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DF0) ^ 0x8A))] ^ 0xE2]) - 111] - 12;
  v7 = *(v6 + 8 * ((60 * ((*(v6 + 8 * ((byte_1D4B391E8[(byte_1D4B39D60[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 2697)))(24, 0x1010040E2407E0ALL) != 0)) | 0x682u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4AEA28C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_1D4AEA3DC()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_1D4AEA470()
{
  v8 = v3 ^ (v6 + 851);
  v9 = *v4;
  *(*v4 + v2) = 0;
  *(v9 + (v8 - 1289608258 + v1)) = 0;
  v10 = v1 - 2027506636;
  *(v9 + (v10 + 3)) = 1;
  *(v9 + (v10 + 2)) = 0;
  *v0 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4AEA99C()
{
  v6 = *(v3 + 8) - 1523222835 + v4 + (v0 ^ 0x6B0) - 2015;
  v7 = v2 > 0x1918BB1C;
  v8 = v1 + 1846409495 > v6;
  if (v7 != v6 < 0xE6E744DF)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1289 * v8) ^ v0)))();
}

uint64_t sub_1D4AEAE24(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))();
}

uint64_t sub_1D4AEAE6C()
{
  v5 = *(v3 + 8) - 780318865;
  v6 = v1 > ((v0 - 144781323) & 0xDCA5BEFF) - 321852806;
  v7 = v2 - 967755454 > v5;
  if (v5 < 0x3F2A850A == v6)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((v6 * (v0 ^ 0x67D)) ^ v0)))();
}

uint64_t sub_1D4AEB2F8@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_1D4AEB354()
{
  v6 = *(v3 + 8) - 1439124990;
  v7 = v1 > 0xE81A105A;
  v8 = v2 - 1626561575 > v6;
  if (v7 == v6 < 0x17E5EF9D)
  {
    v7 = v8;
  }

  return (*(v5 + 8 * ((v7 * (((v0 - 1811644490) | 0x40001037) - v4 + 17)) | v0)))();
}

uint64_t sub_1D4AEB4F4@<X0>(int a1@<W8>)
{
  v6 = ((2 * (v2 + 2 * a1)) & 0xFBDFFF3C) + ((v2 + 2 * a1) ^ 0xFDEFFF9F);
  if (v1 > 0x6F87E38C != v6 - 1836573492 < 0x90781C6B)
  {
    v7 = v6 - 1836573492 < 0x90781C6B;
  }

  else
  {
    v7 = v6 - 1836573492 > v3;
  }

  return (*(v5 + 8 * (v4 ^ (2045 * v7))))();
}

uint64_t sub_1D4AEB894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v34 + 8 * (v33 ^ 0xEFC)))();
  (*(v34 + 8 * (v33 ^ 0xECB)))();
  v43 = (*(v34 + 8 * (v33 ^ 0xEF5)))(a12, 0);
  return (*(v34 + 8 * ((19 * (((v33 + 1) ^ (v43 == 0)) & 1)) ^ v33)))(v43, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D4AEB9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, qword_1E84B4150[v35 - 2212] - 12);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == qword_1E84B4150[v35 - 2202] - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1D4AEBAB4()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_1D4AEBB64()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_1D4AEBBFC()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_1D4AEBCB4()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_1D4AEBD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1D4AEC698@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_1D4AEC6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(*qword_1E84B4150[v21 ^ 0x478], *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_1D4AEC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (*(v25 + 8 * (v22 + 1803)))(*v23, *v20, (*(v20 + 12) - 2027506636), &a18, &a20);
  v35 = (v27 ^ ((v22 ^ (v24 + 934)) + 1668486274)) - 556171400 + ((2 * v27) & 0x6EEF49F2);
  if (v35 == 374416497)
  {
    v36 = (*(v25 + 8 * ((v21 - 10) ^ 0xD4049077)))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v25 + 8 * ((37 * v36) ^ 0x78C)))();
  }

  else if (v35 == 642851956)
  {
    return (*(v25 + 4792))(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v38 = 946232179 * ((v26 - 108) ^ 0x907B3CCF);
    *(v26 - 104) = v38 ^ 0x638;
    *(v26 - 100) = v35 - v38 + 962804850;
    v39 = (*(v25 + 8 * ((v21 - 29) ^ 0xD4049077)))(v26 - 108);
    return (*(v25 + 8 * ((3280 * (*(v26 - 108) != 1181123576)) ^ 0x4AD)))(v39);
  }
}

uint64_t sub_1D4AECE3C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

void sub_1D4AECE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v54 = *(a6 + 144);
  (*(v53 + 8 * (v52 + 737901331)))(*(v54 - 0x1729FABDC6538B0));
  *(v54 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  JUMPOUT(0x1D4AECEF4);
}

uint64_t sub_1D4AED128(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_1D4AED220(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D4AED2F0(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_1D4AED33C(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_1D4AED370(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  JUMPOUT(0x1D4AED504);
}

uint64_t sub_1D4AED830()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_1D4AED944(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x1D4AED970);
}

void fm23w5mn5o()
{
  v0 = qword_1E84B4150[((-3 * (qword_1EC7E1DC0 ^ 0x8A ^ dword_1EC7E1DC8)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * (qword_1EC7E1DC0 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 0x8E]) - 41];
  v1 = 1543604477 * ((*v0 + qword_1EC7E1DC0) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_1EC7E1DC0 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4AEDADC()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_1D4AEDB28()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_1D4AEDC08@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_1D4AEDC60@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4AEDD50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_1EC7E2B48 == 0)) ^ 0x215u)))();
}

uint64_t sub_1D4AEDDEC()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_1D4AEDEF4@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D4AEDFE8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4AF2D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v35 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117);
}

uint64_t sub_1D4AF2E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if ((a33 + 6) < 5)
  {
    goto LABEL_2;
  }

  if (a33 == -1)
  {
    v61 = a3 + v54;
    v62 = a3 + v54 - 600;
    v63 = (*(v53 + 8 * (v54 + 551908262)))(*a10, &a48) != 0;
    return (*(v53 + 8 * ((v63 * (v61 - 763)) ^ v62)))();
  }

  else
  {
    if (a33 == -8)
    {
LABEL_2:
      v55 = a3 + v54 - 600;
      v56 = (v54 + 13) ^ ((*(v53 + 8 * (v54 + 551908262)))(*a19, &a53) == ((v54 - 686759667) ^ 0xB62B78EF));
      return (*(v53 + 8 * ((44 * (v56 & 1)) ^ v55)))();
    }

    v58 = a3 + v54;
    v59 = a3 + v54 - 189;
    v60 = (*(v53 + 8 * (v54 ^ (v54 + 1160))))(*a11, &a38) == (v54 ^ (v54 - 225)) - 227;
    return (*(v53 + 8 * ((v60 * (v58 + 892)) ^ v59)))();
  }
}

uint64_t sub_1D4AF3148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + 8 * (v38 + 415)))(v39 - 144, 0);
  if (v40 >= 0)
  {
    a31 = *(v39 - 144);
  }

  v48 = a31 / (((v38 - 512) | 0x40u) ^ 0x856);
  v49 = *(a36 + 40 * v36 + 36);
  v51 = v49 >= v48;
  v50 = v49 - v48;
  v51 = !v51 || v50 >= 0x12C;
  v52 = !v51;
  return (*(v37 + 8 * ((35 * v52) | v38)))(v40, v41, 551906117, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1D4AF31DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_1D4AF3254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4AF32DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35);
  *a35 = 0;
  return sub_1D4AF30C8(v37, v38, 551906117);
}

void sub_1D4AF33D0()
{
  v3 = (((v0 + 276668541) & 0xEF8258EA ^ 0x2B2) - 460) | 0x103;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1D4AF7D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_1D4AF7E8C()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x1D4AF7EF8);
}

uint64_t sub_1D4AF7F4C()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_1D4AF7FEC()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

uint64_t sub_1D4AF8088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void y1rKtVxYz7()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E84B4150[((-3 * (dword_1EC7E1DD0 ^ 0x8A ^ dword_1EC7E1DC8)) ^ byte_1D4B396F0[byte_1D4B393E0[(-3 * (dword_1EC7E1DD0 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 0xE6]) - 36];
  v1 = -3 * (*v0 ^ dword_1EC7E1DC8 ^ 0x8A);
  v2 = qword_1E84B4150[(byte_1D4B397F8[(byte_1D4B394E8[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 + dword_1EC7E1DD0) ^ 0x8A)) ^ byte_1D4B39E60[byte_1D4B39B10[(-3 * ((dword_1EC7E1DC8 + dword_1EC7E1DD0) ^ 0x8A))] ^ 0xEA]) - 199] - 12;
  v7 = *(v6 + 8 * ((225 * ((*(v6 + 8 * ((byte_1D4B39E64[(byte_1D4B39B1C[v2 - 12] ^ 0xEA) - 4] ^ v2) + 2739)))(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4AF8310(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_1D4AF8450()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

void sub_1D4AF84EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 + v11;
  v17 = *v12;
  *(*v12 + v10) = 0;
  *(v17 + v9 + ((v16 - 687) ^ 0x50750E82u)) = 0;
  *(v17 + (v9 - 1862975966)) = 1;
  *(v17 + (v9 - 1862975967)) = 0;
  *v8 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4AF89FC()
{
  v5 = *(v3 + 8) + 1570186821;
  v6 = v1 > 0x6BCA8EAD;
  v7 = v6 ^ (v5 < 0x9435714E);
  v8 = ((v0 - 204706424) & 0xCCB3BEFE ^ 0xE5AA9FD3) + v2 > v5;
  if (v7)
  {
    v8 = v6;
  }

  return (*(v4 + 8 * ((58 * v8) ^ v0)))();
}

uint64_t sub_1D4AF8BB8@<X0>(int a1@<W8>)
{
  v6 = ((2 * ((a1 << (v4 - 114)) + v2)) & 0x6FFDD6F0) + (v4 ^ 0xB7FEEF0A ^ ((a1 << (v4 - 114)) + v2));
  if (v1 > 0x26199F4 != v6 + 1168079502 < 0xFD9E6607)
  {
    v7 = v6 + 1168079502 < 0xFD9E6607;
  }

  else
  {
    v7 = v6 + 1168079502 > v3;
  }

  return (*(v5 + 8 * ((247 * !v7) ^ v4)))();
}

uint64_t sub_1D4AF8CD4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4AF8DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

void sub_1D4AF8E18(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  JUMPOUT(0x1D4AF8E60);
}

uint64_t sub_1D4AF8F5C()
{
  v6 = ((v0 + 189) ^ (v5 + 379) ^ 0x7989D80) + *(v3 + 8);
  v7 = v1 > 0x24907D0;
  v8 = v2 - 1901316530 > v6;
  if (v7 == v6 < 0xFDB6F82B)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((28 * !v7) ^ v0)))();
}

uint64_t sub_1D4AF8FDC@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
{
  v7 = *v3;
  v8 = *a2 + v2;
  *(*v3 + v8 + 3) = 1;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8) = 0;
  *(v7 + v8 + 2) = 0;
  *a2 += 4;
  return (*(v5 + 8 * ((((v6 + v4 - 1412033483) & 0x5429E8E6) + 423) ^ (v4 + a1))))();
}

uint64_t sub_1D4AF949C()
{
  v5 = *(v3 + 8) + 290418297;
  v6 = v1 > ((v0 - 626445980) & 0xE5D6FAA6 ^ 0x789276DB);
  v7 = v2 - 656214107 > v5;
  if (v6 == v5 < ((v0 + 565057358) & 0xDE51E6FE) + 1206761118)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((4007 * v6) ^ v0)))();
}

uint64_t sub_1D4AF9948@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_1D4AF9A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = (v37 - 160 + v34);
  *v38 = *(v35 + 12);
  v38[1] = 1862975980;
  v38[2] = 1862975973;
  return (*(v36 + 8 * (((((v38 == 0) ^ (v33 - 120)) & 1) * ((v33 - 577) ^ 0x176)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D4AF9AC0()
{
  v6 = *(v3 + 8) - 874318352;
  v7 = v2 > 0xFD7EBEF7;
  v8 = v0 - 1820950745 > v6;
  if (v7 != v6 < (((v1 ^ 0xC33) - 2810) ^ (v5 + 2) ^ 0xC201705B))
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((77 * ((((v1 ^ 0x33) - 1) ^ v8) & 1)) | v1 ^ 0xC33)))();
}

uint64_t sub_1D4AF9B50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40, _DWORD *a41)
{
  v46 = (v45 + v41 - 630) | 0x241;
  v47 = *v42;
  v48 = *a8;
  v49 = *a8 - 1862975969;
  *(*v42 + v49) = 0;
  *(v47 + v49 + 1) = 0;
  *(v47 + v48 + (v46 ^ 0x90F53574)) = 0;
  *(v47 + v49 + 3) = 11;
  *a8 += 4;
  v50 = *v42 + (*a41 - 1862975969);
  return (*(v44 + 8 * (((a40 <= v50) * (((31 * (v46 ^ 0xB08) - 2202) | 0x502) - 1950)) ^ v46)))(v50, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_1D4AF9CBC@<X0>(int a1@<W8>)
{
  v6 = (((v4 | 0x2A2) + 1836946254) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xB6BECB1B);
  if (v1 > 0x44054D84 != v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168)
  {
    v7 = v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168;
  }

  else
  {
    v7 = v6 + 87811921 > v3;
  }

  return (*(v5 + 8 * ((2032 * v7) ^ v4)))();
}

uint64_t sub_1D4AF9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_1D4AFA09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v40 + 8 * (v41 + 306)))();
  (*(v40 + 8 * (v41 ^ 0x1C1)))();
  v50 = (*(v40 + 8 * (v41 + 315)))(*(v39 + 8 * (v41 - 2649)), 0);
  return (*(v40 + 8 * (((v50 == 0) * ((((v41 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v41)))(v50, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1D4AFA1AC(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_1D4AFA288()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_1D4AFA344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_1D4AFA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_1D4AFA4A8()
{
  v5 = v1 - 596;
  v6 = (v1 - 385) | 8;
  v7 = v3;
  v8 = v2;
  v9 = v0;
  v10 = v1;
  (*(v4 + 8 * (v1 ^ 0x9F5)))(v7, v8);
  v11 = (*(v4 + 8 * (v10 ^ 0x9CD)))() == v9;
  return (*(v4 + 8 * (((((v5 ^ v11) & 1) == 0) * (v6 ^ 0x3A)) ^ v10)))();
}

uint64_t sub_1D4AFA52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v19 = (v14 + 63928535) & 0xFC3089EF;
  *(v18 - 256) = v15;
  v20 = (*(v17 + 8 * (v19 ^ 0x2CD)))(v15, v16, va);
  *(v18 - 248) = v20;
  return (*(v17 + 8 * (((v20 == 0) * (((v19 - 1939) ^ 0xFFFFF92F) + v19 - 599)) ^ v19)))(v20, v21, v22, v23, v24, v25, v26, v27, a1, a2, a3);
}

uint64_t sub_1D4AFA62C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_1D4AFA6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1D4AFABC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = v48 + 1475;
  *(v49 - 0x60E31FD2FE548731) = 0;
  *(v49 - 0x60E31FD2FE548729) = 495030071;
  *(v49 - 0x60E31FD2FE548725) = -1179748465;
  (*(v50 + 8 * (v48 + 2621)))(v49 - 0x60E31FD2FE548731);
  (*(v50 + 8 * (v51 + 1053)))(a47);
  (*(v50 + 8 * (v51 + 1053)))(a48);
  return (*(v50 + 8 * (((a46 == 0) * ((((v51 - 1839001745) & 0x6D9CEFDB) + 85) ^ v51 ^ 0x1AB)) | v51)))();
}

void sub_1D4AFAC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x1D4AFACB8);
}

uint64_t sub_1D4AFADAC@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_1D4AFAE10@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a7 = 0;
  a11 = 0;
  v16 = (*(v14 + 8 * ((a1 | 0x800020A2) ^ 0xC0803BD7)))(**(v13 + 8 * ((a1 | 0x800020A2) + 1065340784)), *v12, (*(v12 + 12) - 1862975969), &a7, &a11);
  if (v16)
  {
    if (v16 == 268435459)
    {
      a12 = 0x60E31FD2FE548731;
      return (*(v14 + 2896))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4);
    }

    else
    {
      v33 = 946232179 * ((((2 * (v15 - 108)) | 0xD1772250) - (v15 - 108) - 1757122856) ^ 0xF8C0ADE7);
      *(v15 - 104) = v33 ^ 0x638;
      *(v15 - 100) = ((2 * v16) & 0xBF6DDBF6) - v33 + (v16 ^ 0xDFB6EDFB) + 1878881000;
      v34 = (*(v14 + 23736))(v15 - 108);
      return (*(v14 + 8 * ((474 * (*(v15 - 108) != 1181123576)) ^ 0x4FF)))(v34);
    }
  }

  else
  {
    v24 = (*(v14 + 23584))(24, 0x1010040E2407E0ALL);
    return (*(v14 + 8 * ((114 * (((v24 == 0) ^ 0x31) & 1)) ^ 0x6B8)))(v24, v25, v26, v27, v28, v29, v30, v31, a2);
  }
}

uint64_t sub_1D4AFB444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 8 * (v21 ^ 0x428);
  v24 = v23 ^ 0x247;
  (*(v22 + 8 * (v23 ^ 0xD32)))(v20);
  v25 = (*(v22 + 8 * (v24 ^ 0xF72)))(**(v18 + 8 * (v24 - 1277)), a14, a18);
  return (*(v22 + 8 * (((v19 == 0) * (v24 - 805)) ^ v24)))(v25);
}

void sub_1D4AFB478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731));
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  JUMPOUT(0x1D4AFB4D4);
}

uint64_t sub_1D4AFB6A4(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

void sub_1D4AFB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x1D4AFBAC8);
}

uint64_t sub_1D4AFBDC4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a1 - 1296381823) & 0x4D453FDF;
  v17 = a1 + 2592;
  (*(v13 + 8 * (a1 + 2592)))();
  *(v10 - 0x60E31FD2FE548731) = 0;
  *(v10 + v12) = 495030071;
  *(v10 + v11) = v15;
  (*(v13 + 8 * v17))(v10 - 0x60E31FD2FE548731);
  v18 = (*(v13 + 8 * (v16 + 447)))(a9);
  return (*(v13 + 8 * (((((v16 - 2147481931) | 0x40802022) + (v16 ^ 0x2E ^ (v14 - 15))) * (v9 == 0)) ^ v16)))(v18);
}

void sub_1D4AFBEC8(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x1D4AFBF04);
}

void uv5t6nhkui()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = qword_1E84B4150[(byte_1D4B396F0[byte_1D4B393E0[(-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DB0) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DB0) ^ 0x8A))) - 53];
  v1 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 + *v0) ^ 0x8A)) ^ byte_1D4B396F0[byte_1D4B393E0[(-3 * ((dword_1EC7E1DC8 + *v0) ^ 0x8A))] ^ 6]) - 62];
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 + dword_1EC7E1DB0) ^ 0x8A)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * ((dword_1EC7E1DC8 + dword_1EC7E1DB0) ^ 0x8A))] ^ 0xEC]) - 178] - 12;
  v6 = *(v5 + 8 * ((32 * ((*(v5 + 8 * ((byte_1D4B39E64[(byte_1D4B39B1C[v1 - 12] ^ 0xB0) - 4] ^ v1) + 2848)))(24, 0x1010040E2407E0ALL) == 0)) | 0xACAu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4AFC134(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x210BB38616FB3631;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  if (v3)
  {
    v4 = 1422;
  }

  else
  {
    v4 = 1423;
  }

  return (*(v1 + 8 * v4))();
}

void p435tmhbla()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E84B4150[((-3 * (dword_1EC7E1DB8 ^ 0x8A ^ dword_1EC7E1DC8)) ^ byte_1D4B395F0[byte_1D4B392E0[(-3 * (dword_1EC7E1DB8 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 0x42]) - 166];
  v1 = *(v0 - 4);
  v2 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 - v1) ^ 0x8A)) ^ byte_1D4B391E0[byte_1D4B39D60[(-3 * ((dword_1EC7E1DC8 - v1) ^ 0x8A))] ^ 0x8E]) - 41];
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DB8) ^ 0x8A)) ^ byte_1D4B39C10[byte_1D4B398F0[(-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DB8) ^ 0x8A))] ^ 7]) - 6] - 12;
  v7 = (*(v6 + 8 * ((byte_1D4B391E8[(byte_1D4B39D60[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 2718)))(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4B00B08(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

void fy34trz2st()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E84B4150[((-3 * (dword_1EC7E1DE8 ^ 0x8A ^ dword_1EC7E1DC8)) ^ byte_1D4B39E60[byte_1D4B39B10[(-3 * (dword_1EC7E1DE8 ^ 0x8A ^ dword_1EC7E1DC8))] ^ 0xEA]) - 198];
  v1 = -3 * ((dword_1EC7E1DC8 + *v0) ^ 0x8A);
  v2 = qword_1E84B4150[(byte_1D4B397F8[(byte_1D4B394E8[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = qword_1E84B4150[((-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DE8) ^ 0x8A)) ^ byte_1D4B39E60[byte_1D4B39B10[(-3 * ((dword_1EC7E1DC8 - dword_1EC7E1DE8) ^ 0x8A))] ^ 0xB0]) - 90] - 12;
  v7 = *(v6 + 8 * ((29 * ((*(v6 + 8 * ((byte_1D4B396F4[(byte_1D4B393E0[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 2890)))(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CDu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4B049BC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_1D4B07E40@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4B08098(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_1D4B08100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D4B082AC()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_1D4B08834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v9 - 0x2B7CC17BA9FDC7DELL) + 1385189627 + v10 + (v6 ^ (a6 - 239)) - 1492;
  v13 = v7 > 0x513E1BD0;
  v14 = v8 + 1014674043 > v12;
  if (v13 == v12 < 0xAEC1E42B)
  {
    v13 = v14;
  }

  return (*(v11 + 8 * ((114 * !v13) ^ v6)))();
}

uint64_t sub_1D4B088C8@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 - 0x2B7CC17BA9FDC7E6);
  v6 = *a1 - 1917268404;
  *(v5 + (*a1 - 1917268403)) = 107;
  *(v5 + v6 + 2) = -40;
  *(v5 + v6) = 113;
  *(v5 + v6 + 3) = 108;
  *a1 += 4;
  return (*(v4 + 8 * (((((v2 + v3 - 2886) | 0x521) == 1381) * ((v3 ^ 0xBA7B9EC4) - 1558)) ^ (v2 + v3 - 1916))))();
}

uint64_t sub_1D4B08DE0()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_1D4B08E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v9 ^ 0x2BF;
  v14 = *(v10 - 0x2B7CC17BA9FDC7E6);
  *(v14 + v8) = 0;
  *(v14 + (v7 - 1917268403)) = 0;
  v15 = a6 + v13 - 1873;
  *(v14 + (v7 - 1917268402)) = 0;
  *(v14 + v7 + (v15 ^ 0x37C3572Eu)) = 1;
  *v6 += 4;
  return (*(v12 + 8 * ((v11 + v15 - 1377) ^ 0x60D ^ (v11 + v15 - 1916))))();
}

uint64_t sub_1D4B08FC8@<X0>(int a1@<W8>)
{
  v9 = ((2 * ((a1 << ((v7 ^ v3) - 40)) + v2)) & 0xFF7B3EF4) + (((a1 << ((v7 ^ v3) - 40)) + v2) ^ 0x7FBD9F7B);
  if (v1 > v6 != v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568)
  {
    v10 = v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568;
  }

  else
  {
    v10 = v9 - 1559314134 > v5;
  }

  return (*(v8 + 8 * ((2428 * v10) ^ v7)))();
}

uint64_t sub_1D4B090B4@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D4B0918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6));
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_1D4B093A4()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_1D4B09434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v13 ^ (a6 - 125);
  v18 = a11 - ((2 * a11) & 0x32A2E7DBEA424B78) - 0x66AE8C120ADEDA44;
  v19 = (((2 * v12) & 0xD6C19B7E) + *(v14 - 0x2B7CC17BA9FDC7E6) + 0x10292E00949F3241 + (v17 ^ v12 ^ 0xEFD6D1FFD11B54DELL));
  *v19 = HIBYTE(v18) ^ 0x99;
  v19[1] = BYTE6(v18) ^ 0x51;
  v19[2] = BYTE5(v18) ^ 0x73;
  v19[3] = BYTE4(v18) ^ 0xED;
  v19[4] = ((a11 - ((2 * a11) & 0xEA424B78) - 182377028) >> 24) ^ 0xF5;
  v19[5] = BYTE2(v18) ^ 0x21;
  v19[6] = BYTE1(v18) ^ 0x25;
  v19[7] = v18 ^ 0xBC;
  *v11 += 8;
  return (*(v16 + 8 * (((173 * (v17 ^ (a6 + 7)) == 1557) * ((19 * (v17 ^ (a6 - 91))) ^ 0x7EA)) ^ (v15 + v17 - 1615))))();
}

uint64_t sub_1D4B099F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = (v48 - 240 + v44);
  *v49 = *(v46 - 0x2B7CC17BA9FDC7DALL);
  v49[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v49[2] = 1917268408;
  return (*(v47 + 8 * (((v49 != 0) | (4 * (v49 != 0))) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1D4B09B00()
{
  v4 = (v0 ^ 0xC61CBD83) + v1;
  v5 = ((v0 - 75523240) & 0xBEFBFB7F ^ 0xD390A8ED) + *(v2 - 0x2B7CC17BA9FDC7DELL);
  v6 = v1 > 0x39E340F5;
  v7 = v4 > v5;
  if (v6 == v5 < 0xC61CBF06)
  {
    v6 = v7;
  }

  return (*(v3 + 8 * ((37 * !v6) ^ v0)))();
}

uint64_t sub_1D4B09BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v59 = *v48 + 4;
  *v48 = v59;
  v60 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v59 - 1917268404);
  return (*(v53 + 8 * ((8 * (a18 <= v60)) | (16 * (a18 <= v60)) | v58)))(v60, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1D4B0A1C8()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_1D4B0A22C@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1D4B0A284()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_1D4B0A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = (v50 + 146) | 0x849;
  v54 = (*(v52 + 8 * (v50 + 2460)))();
  *(v51 + 64) = 0;
  *(v51 + 76) = 0;
  *(v51 + 40) = 0;
  (*(v52 + 8 * (v53 ^ 0x15D)))(v54);
  (*(v52 + 8 * (v53 + 218)))();
  v63 = (*(v52 + 8 * (v53 + 212)))(a16, 0);
  return (*(v52 + 8 * (((v63 == 0) * (((v53 - 1709) | 0x140) - 1353)) ^ v53)))(v63, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1D4B0A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, qword_1E84B4150[v52 ^ 0x2FF] - 12);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == qword_1E84B4150[v52 - 727] - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1D4B0A5E4()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_1D4B0A698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_1D4B0A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_1D4B0A7FC()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_1D4B0A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1D4B0B2A8@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_1D4B0B30C()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_1D4B0B344()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_1D4B0B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v34 + 76) = 0;
  *(v34 + 40) = 0;
  v37 = (*(v36 + 8 * (v33 ^ 0xD56)))(**(v35 + 8 * (v33 ^ 0x631)), *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v33 - v32 + 1383) ^ 0x37C3572Du), &a27, &a31);
  return (*(v36 + 8 * ((15 * ((v37 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v37) & 0xF9FEDD78) != v33 - 1929764732)) ^ v33)))();
}

uint64_t sub_1D4B0B5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v37 = (*(v35 + 8 * (v34 ^ 0xD59)))(*v33, *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v34 - v32 + 1374) ^ 0x37C3572Du), &a27, &a31);
  v45 = (v37 ^ 0xFEFE6FE6) + 2113648318 + ((2 * v37) & 0xFDFCDFCC);
  if (v45 == -1929763161)
  {
    v48 = -45017;
  }

  else
  {
    if (v45 == 2096768676)
    {
      v46 = (*(v35 + 8 * (v32 - 1166304933)))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v35 + 8 * ((v46 * (((v32 - 1166307785) ^ 0xFFFFFFD7) + ((v32 - 1166307785) | 1))) ^ (v32 - 1166305952))))();
    }

    v49 = 946232179 * ((((v36 - 108) ^ 0xCCAC8659 | 0xE433420F) - ((v36 - 108) ^ 0xCCAC8659) + (((v36 - 108) ^ 0xCCAC8659) & 0x1BCCBDF0)) ^ 0xB8E4F899);
    *(v36 - 104) = (v32 - 1166306289) ^ v49;
    *(v36 - 100) = v45 - v49 - 759547329;
    v37 = (*(v35 + 8 * (v32 - 1166304914)))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v48 = -45016;
    }

    else
    {
      v48 = 0;
    }
  }

  a28 = 0x5C8F431131299E9FLL;
  return (*(v35 + 8 * ((3185 * (v48 == ((169 * (((((v32 - 1166306849) | 6) - 105) | 0x400) ^ 0x7AE)) ^ 0x743))) ^ ((v32 - 1166306849) | 6))))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1D4B0C100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

void sub_1D4B0C454(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *(v9 + a1) = v8;
  *(v12 - 244) = 0;
  *a8 = (*(v11 + 8 * (a2 ^ 0xB19)))(v10, 0x100004077774924);
  JUMPOUT(0x1D4B0C534);
}

uint64_t sub_1D4B0C5A4()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_1D4B0C644(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_1D4B0C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL);
}

uint64_t sub_1D4B0C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_1D4B0CA6C(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  JUMPOUT(0x1D4B0CAD8);
}

uint64_t gJa8aF901k(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_1F5026010[40 * ((*(&unk_1F502601C + 23572))(24, 0x1010040E2407E0ALL) == 0) + 2369];
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_1D4B0D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_1D4B0D324()
{
  v5 = *(v3 + 8) + 1843760272;
  v6 = v1 > 0x740256CA;
  v7 = v2 + 1052898664 > v5;
  if (v6 == v5 < (((v0 - 2135940658) | 0x770C8502) ^ 0x7C410E47u))
  {
    LOBYTE(v6) = v7;
  }

  return (*(v4 + 8 * ((119 * ((v0 ^ 0x49 ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_1D4B0D3BC@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v6 = *(a1 - 0x2E52CFE8A53EA7A5);
  v7 = *a2 - 1295758285;
  *(v6 + v7 + 1) = 43;
  *(v6 + v7 + 2) = -115;
  *(v6 + v7) = 99;
  *(v6 + v7 + 3) = 110;
  *a2 += 4;
  return (*(v2 + 8 * (((v4 == v3) * ((v4 + 1418907529) & 0xB3B08FDD ^ 0xD0)) ^ (v5 + v4 - 2370))))(0);
}

uint64_t sub_1D4B0D860()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_1D4B0D8C0()
{
  v6 = *(v3 + 8) - 1490089906;
  v7 = v1 > 0x3AB8DB0C;
  v8 = v2 + (v0 ^ 0xAEEu) + v5 + v0 - 708 - 2142322298 > v6;
  if (v7 == v6 < 0xC54724EF)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((1620 * v7) ^ v0)))();
}

uint64_t sub_1D4B0DD78()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_1D4B0DDCC()
{
  v7 = (((v0 - 195) | 0x91D) ^ 0xCBC5EDE3) + *(v3 + 8);
  v8 = v1 > 0x1621FE5A;
  v9 = v2 - 1667084840 > v7;
  if (v8 == v7 < 0xE9DE019D)
  {
    v8 = v9;
  }

  return (*(v4 + 8 * ((v8 * ((v0 - v6 + 2757) ^ (v5 - 12))) ^ v0)))();
}

uint64_t sub_1D4B0DF90@<X0>(int a1@<W8>)
{
  v7 = (((v2 + 2 * a1) << (((v5 - 34) ^ 0x8D) - 88)) & 0x3F7FFF60) + ((v2 + 2 * a1) ^ 0x1FBFFFB1);
  if (v1 > v4 != (v7 - 1803469259) < 0xB4413DE6)
  {
    v8 = (v7 - 1803469259) < 0xB4413DE6;
  }

  else
  {
    v8 = v7 - 1803469259 > v3;
  }

  return (*(v6 + 8 * ((324 * v8) ^ v5)))();
}

uint64_t sub_1D4B0E34C()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_1D4B0E3A0()
{
  v6 = *(v3 + 8) - 595448546;
  v7 = v1 > ((v0 - 1515455313) | 0x5210A600u) - v5 + 90551864;
  v8 = v2 - 1386310150 > v6;
  if (v6 < 0xFA9A49BF == v7)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((3530 * v7) ^ v0)))();
}

uint64_t sub_1D4B0E54C@<X0>(int a1@<W8>)
{
  v7 = (a1 << (((v5 - 35) ^ 0x65) + 5)) + v2;
  v8 = ((2 * v7) & 0xFCBBF95C) + (v7 ^ 0xFE5DFCAF);
  if (v1 > v4 != v8 - 1485663003 < 0xA5D09194)
  {
    v9 = v8 - 1485663003 < 0xA5D09194;
  }

  else
  {
    v9 = v8 - 1485663003 > v3;
  }

  return (*(v6 + 8 * ((3276 * v9) ^ v5)))();
}

uint64_t sub_1D4B0E8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 144) = (*(v15 + 8 * (v16 ^ 0x25E)))();
  (*(v15 + 8 * (v16 ^ 0x269)))();
  v17 = (*(v15 + 8 * (v16 ^ 0x257)))(a14, 0);
  *(v14 + 152) = v17;
  return (*(v15 + 8 * (((v17 == 0) * (125 * (v16 ^ 0x9D9) - 2327)) | v16)))(4294922293, v17);
}

uint64_t sub_1D4B0E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_1D4B0E9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, qword_1E84B4150[v46 - 1629] - 12);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == qword_1E84B4150[v46 ^ 0x675] - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1D4B0EAFC()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_1D4B0EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_1D4B0EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_1D4B0ED0C()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_1D4B0ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1D4B0F5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(*qword_1E84B4150[v26 ^ 0xEB], *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1D4B0F760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (*(v26 + 8 * (v25 ^ 0x9DC)))(*v27, *v24, (v25 - 1295758285 + *(v24 + 12) - 681), &a19, &a24);
  v31 = (v30 ^ 0x27F3FFED) - 2130497 + ((2 * v30) & 0x4FE7FFDA);
  if (v31 == 668171692)
  {
    v32 = (*(v26 + 8 * (v28 - 138631312)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v26 + 8 * ((v32 * ((v28 - 138630772) ^ (v28 - 138631575))) ^ (v28 - 138633243))))();
  }

  else if (v31 == 936607151)
  {
    return (*(v26 + 8 * ((211 * (35 * ((v28 - 138633676) ^ 0x247) == -44492)) ^ (v28 - 138633676))))(4294922279);
  }

  else
  {
    v34 = 946232179 * ((1523044408 - ((v29 - 108) | 0x5AC7D038) + ((v29 - 108) | 0xA5382FC7)) ^ 0x35431308);
    *(v29 - 104) = (v28 - 138632668) ^ v34;
    *(v29 - 100) = v31 - v34 + 669049655;
    (*(v26 + 23736))(v29 - 108);
    return (*(v26 + 8 * ((1045 * (*(v29 - 108) != 1181123576)) ^ (v28 - 138633785))))(4294922280);
  }
}

uint64_t sub_1D4B0FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1D4B0FD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(*qword_1E84B4150[(4 * (v25 ^ 0x5A5)) ^ 0x102], a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

void sub_1D4B0FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v29 = *(v26 + 216);
  (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v29 - 0x78520B45E1B54CDELL));
  *(v29 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  JUMPOUT(0x1D4B0FE40);
}

uint64_t sub_1D4B100B4@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_1D4B101AC@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_1D4B10264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  JUMPOUT(0x1D4B10484);
}

uint64_t sub_1D4B10690@<X0>(int a1@<W8>)
{
  v6 = a1 - 2200;
  v7 = (a1 - 1973414721) & 0x759FE87D;
  v8 = *(v3 - 0x78520B45E1B54CDELL);
  v9 = ((2 * v1) & 0xEFEFE5DE ^ 0xE008809A) + (v1 ^ 0x7FBBAA2);
  v10 = (*(v8 + (v7 ^ 0x8080509) + v9) << ((v6 - 72) & 0x3D ^ 0x21)) | (*(v8 + v9 + 134745362) << 16) | (*(v8 + v9 + 134745363) << 8) | *(v8 + v9 + 134745364);
  *(v3 + v4) = v2;
  return (*(v5 + 8 * (v6 ^ (11 * (v3 == 0x78520B45E1B54CDELL)))))(v10);
}

uint64_t sub_1D4B1077C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v6 + 8 * (v7 + 2385)))(a2);
  *(v3 - 0x78520B45E1B54CDELL) = 0;
  *(v3 + v5) = -1172238684;
  *(v3 + v4) = v8;
  (*(v6 + 8 * (v7 ^ 0x9B3)))(v3 - 0x78520B45E1B54CDELL);
  return (*(v6 + 8 * ((((v9 + ((((v7 + 1479) | 0x18) - 138496025) & 0xFFFDE776) - 2855) ^ ((v7 + 1479) | 0x18) ^ 0x87D) * (v2 == 0)) | (v7 + 1479) | 0x18)))(a1);
}

void sub_1D4B10860()
{
  *v0 = 0;
  *(v0 + 8) = 504896673;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0x8EA)))(v0);
  JUMPOUT(0x1D4B0CE94);
}

uint64_t jkag7Bg01u(uint64_t a1, uint64_t a2)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_1D4B10F94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30)
{
  v33 = a5 + a4 - 322;
  (*(v32 + 8 * (a4 + v31)))(*v30);
  *v30 = a30;
  *a27 = a16;
  return (*(v32 + 8 * ((1760 * (a29 == 0)) ^ v33)))();
}

uint64_t sub_1D4B1116C()
{
  v5 = *(v3 + 8) - 748115895;
  v6 = v1 > ((v0 + 857) ^ 0xBAE3162F);
  v7 = v2 + 1189952448 + ((v0 - 1601795400) | 0x1411018Au) > v5;
  if (v6 == v5 < 0x451CE12D)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((1003 * v6) ^ v0)))();
}

uint64_t sub_1D4B11304@<X0>(int a1@<W8>)
{
  v6 = (a1 << (((v4 - 33) | 0x41) + 62)) + ((v4 + 479) ^ 0x4A4 ^ (v2 + 230));
  v7 = ((2 * v6) & 0xF76FFDFC) + (v6 ^ 0x7BB7FEFE);
  if (v1 > 0x24ACDCE0 != v7 + 1604002845 < 0xDB53231B)
  {
    v8 = v7 + 1604002845 < 0xDB53231B;
  }

  else
  {
    v8 = v7 + 1604002845 > v3;
  }

  return (*(v5 + 8 * ((104 * v8) ^ v4)))();
}

uint64_t sub_1D4B11690(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 16) = v8 + 12;
  return (*(v9 + 8 * ((125 * (((a4 + v6 - 2106) ^ (a4 + 969) ^ (v7 - 1113)) + v10 > 0xFFFFFFFB)) ^ v6)))(4294922289);
}

uint64_t sub_1D4B116DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(v8 + 8) + 1736112910;
  v11 = v7 > 0x26D0CC09;
  v12 = v6 - 1885921201 > v10;
  if (v11 != v10 < ((a5 + ((v5 + 604175601) | 0x90949080) - 391) ^ 0xD92F3321))
  {
    v12 = v11;
  }

  return (*(v9 + 8 * ((v12 | (2 * v12)) ^ v5)))();
}

uint64_t sub_1D4B11898@<X0>(int a1@<W8>)
{
  v7 = ((((v5 + 1490577244) & 0xA7279E77) - 201429150) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xF9FF3CE4);
  if (v1 > v4 != v7 - 172588860 < 0xEFB5BDA8)
  {
    v8 = v7 - 172588860 < 0xEFB5BDA8;
  }

  else
  {
    v8 = v7 - 172588860 > v3;
  }

  return (*(v6 + 8 * ((15 * v8) ^ v5)))();
}

uint64_t sub_1D4B11BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 56) = v8 + 12;
  return (*(v9 + 8 * ((63 * ((v10 + v7) < 0xFFFFFFF8)) ^ v6)))(4294922289);
}

uint64_t sub_1D4B11C38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = (((a5 + a4 + v5 - 975 - 186 - 434) | 0x310) ^ 0xBF92BAD8) + *(v8 + 8);
  v11 = v6 > 0xCEB90DB3;
  v12 = v7 - 407970139 > v10;
  if (v11 == v10 < 0x3146F244)
  {
    v11 = v12;
  }

  return (*(v9 + 8 * (((32 * v11) | (v11 << 6)) ^ (v5 - 975))))();
}

uint64_t sub_1D4B12204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2414)))();
  (*(v13 + 8 * (v12 + 2429)))();
  v15 = (*(v13 + 8 * (v12 ^ 0x9BB)))(a12, 0);
  return (*(v13 + 8 * (v12 | (8 * (v15 == 0)))))(4294922293, v15);
}

uint64_t sub_1D4B12344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v43 + 8 * (v40 + 2724)))(v42, qword_1E84B4150[(v40 + 1979) ^ 0x89D] - 12);
  (*(v43 + 8 * (v40 + 2734)))(v42);
  (*(v43 + 8 * ((v40 + 1979) ^ 0x333)))(v42, v41);
  v44 = (*(v43 + 8 * ((v40 + 1979) ^ 0x30B)))();
  return (*(v43 + 8 * (((v44 == qword_1E84B4150[(v40 + 1979) ^ 0x88B] - 12) * (((v40 + 1459144467) & 0xA9073F7D ^ 0xFFFFFC95) + ((v40 + 2135594790) & 0x80B56C4F))) ^ (v40 + 1979))))(v44, v45, v46, v47, v48, v49, v50, v51, a9, v39, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1D4B12478()
{
  v7 = v0;
  (*(v4 + 8 * (v1 ^ 0xA7D)))(v3, v2);
  v5 = (*(v4 + 8 * (v1 + 2493)))();
  return (*(v4 + 8 * (((v5 == v7) * (v1 + 1718 + v1 + 625 - 988)) ^ v1)))(v5);
}

uint64_t sub_1D4B12528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7Du)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * (((v9 ^ 0x94E) - 2007) ^ 0x255)) ^ v9)))();
}

uint64_t sub_1D4B125D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7D)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * ((11 * (v9 ^ 0x1CD) + 272272676) & 0xEFC57AB2 ^ 0xBCF)) ^ v9)))();
}

uint64_t sub_1D4B12694()
{
  v5 = v0;
  (*(v4 + 8 * ((v1 + 289) ^ 0xA7D)))(v3, v2);
  v6 = (*(v4 + 8 * ((v1 + 289) ^ 0xA45)))() == v5;
  return (*(v4 + 8 * ((v6 * (((v1 - 2065532648) & 0x7B1D8EBE) - 769)) ^ (v1 + 289))))();
}

uint64_t sub_1D4B12714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = 5 * (v46 ^ 0x4DB);
  (*(v47 + 8 * (v48 ^ 0x298)))(a45);
  (*(v47 + 8 * (v48 + 376)))(a46);
  return (*(v47 + 8 * (((a44 == 0) * ((((v48 + 335837067) | 0xA093108A) ^ 0xFFFFFF88) + v48 - 1265137643)) ^ v48)))(a44, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1D4B131B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = 0;
  a16 = 0;
  v23 = (*(v22 + 8 * (v21 ^ 0xC76)))(*qword_1E84B4150[v21 ^ 0x711], *v20, v19 + *(v20 + 12) + ((v21 - 1265136953) ^ (a2 - 284)) - 356, &a19, &a16);
  return (*(v22 + 8 * ((134 * ((v23 ^ 0x3733C776) - 84018724 + ((2 * v23) & 0x6E678EEC) != 1110557013)) ^ v21)))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11);
}

uint64_t sub_1D4B132EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v15 = (*(v13 + 8 * (v9 + 1008)))(*v11, *v7, (*(v7 + 12) + v8), va1, va);
  v16 = (v15 ^ 0xF235DB53) + 1073473023 + (((v9 - 1265137083) ^ 0x50FC276C) & (2 * v15));
  if (v16 == 842121554)
  {
    v17 = (*(v13 + 23584))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v13 + 8 * ((v17 * (11 * (v12 ^ 0xB4979086) - 327)) ^ 0x73C)))();
  }

  else if (v16 == 1110557013)
  {
    v23 = v10;
    return (*(v13 + 4816))(4294922279);
  }

  else
  {
    v19 = 946232179 * ((((2 * (v14 - 108)) | 0xAD5392EC) - (v14 - 108) - 1453967734) ^ 0xC6D2F5B9);
    *(v14 - 104) = v19 ^ 0x638;
    *(v14 - 100) = v16 - v19 + 495099793;
    (*(v13 + 23736))(v14 - 108);
    return (*(v13 + 8 * ((173 * (*(v14 - 108) != 1181123576)) ^ 0x164)))(4294922280);
  }
}

uint64_t sub_1D4B13938@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0x9B4;
  (*(v13 + 8 * (a1 + 368)))(v12);
  v15 = (v14 - 618) | 0x20;
  (*(v13 + 8 * (v15 + 2601)))(*qword_1E84B4150[v15 - 354], a12, a9);
  return (*(v13 + 8 * ((173 * ((((v15 + 805797662) | 0x84901148) ^ 0xB49791CA) == -45003)) ^ v15)))(4294922293);
}

void sub_1D4B13970(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, uint64_t a56, uint64_t a57)
{
  v59 = *(a6 + 160);
  (*(v58 + 8 * (a4 ^ v57)))(*(v59 - 0x161D22D60BEDB2F3));
  *(v59 - 0x161D22D60BEDB2F3) = a57;
  *a55 = a18;
  JUMPOUT(0x1D4B139D0);
}

uint64_t sub_1D4B13B94(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3128 * ((v2 ^ 0x17Cu) - 1228 == (v1 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_1D4B13C28(uint64_t a1)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = ((v1 + 1) ^ v3) != (v2 ^ 0x2D496C09);
  return (*(v6 + 8 * (((v7 << 6) | (v7 << 7)) ^ v4)))();
}

void sub_1D4B13DB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 - 0x161D22D60BEDB2EBLL) = ((a5 + a4 + 1250) ^ 0x7878E419) + a16 - ((2 * a16) & 0xF0F1C64A);
  *(a20 - 0x161D22D60BEDB2E7) = -499228505;
  JUMPOUT(0x1D4B13FA0);
}

uint64_t sub_1D4B141CC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v7 - 0x161D22D60BEDB2F3);
  v12 = ((2 * v5) & 0xFFDFE97E ^ 0xC45CC14E) + (v5 ^ 0x1DD19418) + 1051457;
  v13 = (*(v11 + v12) << 24) | (*(v11 + v12 + 1) << 16) | (*(v11 + v12 + 2) << 8);
  v14 = *(v11 + v12 + 3);
  *(v7 + v9) = v6;
  if (!(v13 | v14))
  {
    return (*(v10 + 8 * ((((a2 ^ (a2 + 493)) - 407) * (v7 == v8)) ^ (a5 + a2 + 27))))(4294922294);
  }

  if ((v13 | v14) == 0xFFFF4FFB)
  {
    return (*(v10 + 8 * (((*(qword_1E84B4150[a5 - 602 + a2] - 4) == 0) * (((a5 + a2 - 1727431518) & 0x66F68BBF) - 2568)) ^ (a5 + a2 + 527))))();
  }

  return (*(v10 + 8 * ((16 * (((v7 == v8) ^ (((-77 - a2) ^ 0x2F) + 1)) & 1)) | 0x7AC)))();
}

uint64_t sub_1D4B146C0@<X0>(int a1@<W8>)
{
  v8 = (a1 - 1387687271) & 0x52B66EFA;
  (*(v7 + 8 * (a1 ^ 0xB4C)))();
  *(v2 - 0x161D22D60BEDB2F3) = 0;
  *(v2 + v6) = 2021188389;
  *(v2 + v4) = v5;
  (*(v7 + 8 * (v8 + 2352)))(v2 - 0x161D22D60BEDB2F3);
  return (*(v7 + 8 * (((((((v8 + 718) | 0x2C1) + 806746591) | 0x84819002) + 1265135760 + 354 * (((v8 + 718) | 0x2C1) ^ 0x7EE) - 3057) * (v1 == 0)) ^ ((v8 + 718) | 0x2C1))))(v3);
}

void sub_1D4B147E8()
{
  *v0 = 0;
  *(v0 + 8) = 1907636452;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0xA4E)))(v0);
  JUMPOUT(0x1D4B10AA4);
}

void asabc800ag(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4B148C8(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * (v4 | (4 * v4) | 0x542u)))(4294922293);
}

uint64_t sub_1D4B1538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, int a35, unsigned int a36, uint64_t a37)
{
  v39 = 2 * (a5 ^ (a5 - 167));
  v40 = v38 + a5 - 2045;
  (*(v37 + 8 * (a5 ^ (a5 - 2422))))(*a11);
  *a11 = a37;
  *a34 = a26;
  return (*(v37 + 8 * (((a36 == 0) * (v39 ^ 0xC50)) ^ v40)))(a36, v41, v42, v43, 2932264581, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4B154B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, int a41, unsigned int a42, uint64_t a43)
{
  v45 = a5 ^ (a5 + 168);
  v46 = a5 + v44 - 1924;
  (*(v43 + 8 * (a5 + v44)))(*(a38 - 0x1A8CA07156B7B2ABLL));
  *(a38 - 0x1A8CA07156B7B2ABLL) = a43;
  *a40 = a31;
  return (*(v43 + 8 * (((a42 == 0) * (v45 ^ 0x163)) ^ v46)))(a42, v47, v48, v49, 2932264581, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4B15728()
{
  v4 = *(v2 - 0x1A8CA07156B7B2A3) - 1579938237 + ((v1 - 531815500) & 0x1FB2DF3F);
  if (v0 > 0x572430B != v4 < 0xFA8DBCF0)
  {
    v5 = v0 > 0x572430B;
  }

  else
  {
    v5 = v0 - 91374841 + v1 - 62 > v4;
  }

  return (*(v3 + 8 * ((27 * !v5) ^ v1)))();
}

uint64_t sub_1D4B157C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v8 - 0x1A8CA07156B7B2ABLL);
  v12 = ((2 * v6) & 0xFD37F77A) + (v6 ^ 0xFE9BFBBD);
  *(v11 + v12 + 23331908) = 0;
  v13 = a5 + v7 - 493;
  *(v11 + v12 + 23331907) = 0;
  *(v11 + v12 + 23331909) = 0;
  *(v11 + v12 + (v13 ^ 0xAFA2CAC3)) = 1;
  *v5 += 4;
  return (*(v9 + 8 * ((690 * (((a5 + v7 + 1561448301) ^ 0xBD89E42) + ((a5 + v7 + 1561448301) & 0xF42766F7) == 2164)) ^ (v10 + v13 - 2775))))(0);
}

uint64_t sub_1D4B15CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2426)))();
  (*(v13 + 8 * (v12 + 2441)))();
  v15 = (*(v13 + 8 * (v12 + 2435)))(a12, 0);
  return (*(v13 + 8 * (((((v12 - 67) ^ (v15 == 0)) & 1) * ((v12 - 528963) & 0xAECEDEAD ^ 0xAEC6CEB3)) ^ v12)))(4294922293, v15);
}

uint64_t sub_1D4B15D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ v12 ^ (a5 - 99);
  v17 = (*(v14 + 8 * ((v13 ^ v12) + 513)))(a12, a2, 0);
  *(v15 - 256) = v17;
  return (*(v14 + 8 * ((((v16 ^ (v17 == 0)) & 1) * ((((v13 ^ v12) - 2374) | 0x210) ^ 0x265)) ^ v13 ^ v12)))(4294922293);
}

uint64_t sub_1D4B15E10()
{
  (*(v1 + 8 * (v0 ^ 0x90A)))(v2, qword_1E84B4150[v0 - 610] - 12);
  (*(v1 + 8 * (v0 ^ 0x9F4)))(v2);
  *(v4 - 248) = (*(v1 + 8 * (v0 ^ 0x9D0)))(v2, v3);
  v5 = (*(v1 + 8 * (v0 ^ 0x9E8)))();
  return (*(v1 + 8 * (((v5 == qword_1E84B4150[v0 ^ 0x268] - 12) * (v0 ^ 0x36E ^ ((v0 + 399) | 0x3B2))) ^ v0)))(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1D4B15F14(uint64_t a1)
{
  v4 = (v1 - 1359520148) & 0x5108A6FB;
  *(v3 - 248) = a1;
  (*(v2 + 8 * (v4 + 1074)))();
  (*(v2 + 8 * (v4 + 1074)))(*(v3 - 256));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4B16B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 1187;
  v32 = (v28 - 1126878) & 0xAED7FFAF;
  a19 = 0;
  a28 = 0;
  a27 = v30;
  v33 = (*(v29 + 8 * (v28 + 2754)))(*qword_1E84B4150[v28 - 161], *(a24 - 0x1A8CA07156B7B2ABLL), *(a24 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  return (*(v29 + 8 * ((13 * ((v33 ^ (v32 - 1325847814)) - 44073024 + ((2 * v33) & 0xBF7FF2FE) == 1830779202)) ^ v31)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1D4B16C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v37 = (*(v32 + 8 * (v29 + 1567)))(*v33, *(v30 + v31), *(v30 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  v43 = (v37 ^ 0x7F9FF9FF) - 578846912 + ((v37 << ((v29 - 113) & 0x9F ^ (v35 - 1))) & 0xFF3FF3FE);
  if (v43 == v28)
  {
    v46 = 4294922279;
    v47 = v34;
  }

  else
  {
    if (v43 == 1562343743)
    {
      v44 = (*(v32 + 23584))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v32 + 8 * ((115 * v44) ^ 0x391)))();
    }

    v48 = 946232179 * ((((v36 - 108) | 0x211FEA39) - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6);
    *(v36 - 104) = v48 ^ 0x638;
    *(v36 - 100) = v43 - v48 - 225122396;
    (*(v32 + 23736))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v46 = 4294922280;
    }

    else
    {
      v46 = 0;
    }

    v47 = v34;
  }

  if (v46)
  {
    v49 = v34;
  }

  else
  {
    v49 = v47;
  }

  a20 = v49;
  return (*(v32 + 8 * ((2576 * (v46 == 0)) ^ 0xB3)))(v46, 4130263200, v38, v39, 2932264581, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1D4B16FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  *(v30 + 8) = v32 - 4096;
  *(v33 - 200) = v31;
  return (*(v29 + 8 * (((a28 <= 0x1000) * (v28 - 777)) ^ v28)))(a1, a2, a3, a4, 2932264581);
}

uint64_t sub_1D4B1713C()
{
  *(v4 - 180) = -45007;
  *(v4 - 164) = -45007;
  return (*(v1 + 8 * (((v2 == v3) * (((v0 + 338) ^ 0x664) + ((v0 + 338) ^ 0xFFFFFD87))) ^ (v0 + 338))))();
}

void sub_1D4B173BC()
{
  (*(v4 + 8 * (v1 ^ (v0 - 2422))))();
  *(v5 + v2) = 0;
  *(v5 - 0x71166887D0A76934) = v6;
  *(v5 + v3) = 164704100;
  (*(v4 + 8 * (v1 ^ 0xAEC6C50F)))(v5 + v2);
  sub_1D4B17658();
}

uint64_t sub_1D4B17488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v32 = 163 * (a5 ^ (a5 + 1));
  v33 = a5 + v31 - 2863;
  v34 = *(v30 - 200);
  v35 = (*(v29 + 8 * (a5 + v31)))(*(v34 - 0x71166887D0A7693CLL));
  *(v34 - 0x71166887D0A7693CLL) = *(v30 - 176);
  **(v30 - 192) = a29;
  v36 = *(v30 - 180);
  *(v30 - 164) = v36;
  return (*(v29 + 8 * ((204 * (v36 != (v32 ^ 0x1E9))) ^ v33)))(v35);
}

uint64_t sub_1D4B175E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(a27 - 0x71166887D0A76934) = (a5 ^ (a5 - 369)) + 524352999 + a28 - ((2 * a28) & 0x3E81FBCE) - 913;
  *(a27 - 0x71166887D0A76930) = 164704100;
  return sub_1D4B17658(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4B17838(uint64_t a1, int a2)
{
  v8 = *(v6 - 0x71166887D0A7693CLL);
  v9 = (*(v8 + v5) << ((v4 ^ 0x2A) + 13)) | (*(v8 + (a2 + v3 - 3)) << 16) | (*(v8 + (a2 + v3 - 2)) << 8) | *(v8 + (a2 + v3 - 1));
  *(v6 - 0x71166887D0A76930) = v2 + 1509109630;
  return (*(v7 + 8 * ((1085 * (v9 == 261 * (v4 ^ 0x22A) - 2871)) ^ v4)))();
}

uint64_t sub_1D4B179B8@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(a1 + v3) << (((v4 - 32) & 0x3F) - 31)) | (*(a1 + (v1 + 1)) << 16) | (*(a1 + (v1 + 2)) << ((v4 - 120) & 0x7D ^ 0x15)) | *(a1 + (v1 + 3));
  *(v5 - 0x71166887D0A76930) = v2 - 908234881;
  return (*(v6 + 8 * ((978 * (v8 != 0)) ^ (v4 - 342))))(0);
}

uint64_t sub_1D4B17A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = (*(v8 + 8 * (v7 ^ 0x999)))(v6 << (((-67 * (v7 ^ 0x1E)) ^ 0xB7u) + a5 + v7 - 29), 0x1010040F32E1FD2);
  v12 = v5 == v9 || v10 == 0;
  return (*(v8 + 8 * ((60 * v12) ^ v7)))(4294922294);
}

uint64_t sub_1D4B17C04@<X0>(int a1@<W4>, int a2@<W5>, int *a3@<X8>)
{
  v16 = bswap64(*(*(v10 + v9) + (((a2 - 4) << ((a1 ^ v5) + 118)) & ((a1 - 1455) + v7)) + ((a2 - 4) ^ v6) + v3));
  *(a3 - 3) = (v16 + v4 - (v8 & (2 * v16))) ^ v4;
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 8;
  v17 = *(v10 + v9);
  *(a3 - 1) = (*(v17 + (v14 + v16 + 4)) << 24) | (*(v17 + (v14 + v16 + 5)) << 16) | (*(v17 + (v14 + v16 + 6)) << 8) | *(v17 + (v14 + v16 + 7));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  v18 = *(v10 + v9);
  *a3 = (*(v18 + (v16 + v14)) << 24) | (*(v18 + (v16 + v14 + 1)) << 16) | (*(v18 + (v16 + v14 + 2)) << 8) | *(v18 + (v16 + v14 + 3));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  return (*(v13 + 8 * (a1 | (2 * (v16 + v14 + *(a3 - 1) + *a3 > (*(v10 + v11) ^ v15))))))();
}

uint64_t sub_1D4B17D1C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  *(a7 + 4) = *(v9 + v8) + a5;
  v13 = *(v9 + v10) + a4;
  *(v9 + v10) = v13;
  *(a7 + 12) = *(v9 + v8) + (a6 + v13 - 4);
  *(v9 + v10) += *a7;
  return (*(v11 + 8 * (((v12 + ((a3 + a1) | a2) - 2894) * (v7 == 0)) ^ a3)))();
}

uint64_t sub_1D4B17E30@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 < v5;
  *(v2 + v3) = 0;
  if (v7 == (v3 + 1) > 0xFFFFFFFFFA44B07CLL)
  {
    v7 = a1 + v3 + (v1 + 1329) + 411 < v4;
  }

  return (*(v6 + 8 * ((3224 * v7) ^ v1)))(4294922262);
}

uint64_t sub_1D4B17E90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 160) = a22;
  *(v28 - 148) = a27;
  return (*(v27 + 8 * ((((7 * (((a4 - 645) | 0x148) ^ 0x77D)) ^ 0x109) * (a22 != 0)) ^ (a4 + 564))))(0);
}

uint64_t sub_1D4B17EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v21 = (*(v20 + 8 * (v17 ^ 0xAE1)))(32 * v18, 0x1010040F32E1FD2);
  *a17 = v21;
  return (*(v20 + 8 * (((v21 == 0) * (((v17 - 95) | 0x648) - 1850)) ^ v17)))(v19);
}

uint64_t sub_1D4B17F48()
{
  *(v3 - 137) = v1 != 0;
  *(v3 - 144) = 0;
  return (*(v2 + 8 * (((((v0 - 28) ^ (v1 != 0)) & 1) * ((v0 + 996) ^ 0x54E)) ^ (v0 + 996))))();
}

uint64_t sub_1D4B17F94@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v12 - 160);
  v14 = 32 * a1;
  *(*a10 + v14) = *(v13 + v14);
  v16 = (v13 + v14 + 8);
  v15 = *v16;
  *(v12 - 136) = a1;
  *(v12 - 128) = v16;
  *(*a10 + v14 + 8) = v15;
  v17 = *(v13 + v14 + 12);
  *(v12 - 120) = v13 + v14 + 12;
  *(*a10 + v14 + 12) = v17;
  *(*a10 + v14 + 16) = 0;
  *(*a10 + v14 + 24) = 0;
  *(*a10 + v14 + 16) = (*(v11 + 8 * (v10 ^ 0xE57)))(*v16, 0x100004077774924);
  return (*(v11 + 8 * (((*(*a10 + v14 + 16) == 0) * (v10 - 1432 + ((v10 - 315706908) & 0x12D14A6F) - 601)) ^ v10)))();
}

uint64_t sub_1D4B18248@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 329;
  v6 = (v1 - 16 + a1);
  v7 = *(v4 + v1 - 16);
  *(v6 - 1) = *(v4 + v1 - 16 - 16);
  *v6 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v5 + 181761835) & 0xF52A87AD ^ 0x43E)) ^ v5)))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_1D4B1844C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a2 + v9) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 == ((v2 + v4) | v5) + a1) * v6) ^ v2)))();
}

uint64_t sub_1D4B18488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, void *a17)
{
  v19 = 7 * ((v18 + a5 - 1176) ^ 0x6F9);
  v20 = v18 + a5 - 793;
  *(*a17 + 32 * a7 + 24) = (*(v17 + 8 * (v18 + a5 - 6)))(*a15, 0x100004077774924);
  return (*(v17 + 8 * (((*(*a17 + 32 * a7 + 24) == 0) * (v19 ^ 0xB6)) ^ v20)))();
}

uint64_t sub_1D4B1859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 451 * (a5 ^ (a5 + 1));
  v27 = *(v25 - 148);
  v28 = v26 + *(v25 - 144) - 1352;
  *(v25 - 144) = v28;
  LOBYTE(v27) = v28 < v27;
  *(v25 - 137) = v27;
  return (*(v24 + 8 * ((((v26 ^ v27) & 1) * (v26 ^ 0x54E)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D4B18600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = 11 * (v27 ^ 0x74);
  (*(v28 + 8 * ((v27 ^ 0x63F) + 1084)))(a22);
  *a10 = a27;
  return (*(v28 + 8 * (((a20 == 0x71166887D0A7693CLL) * ((((v29 - 1782) | 0x296) + 521) ^ 0x888)) ^ v29)))(0);
}

uint64_t sub_1D4B188EC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 2253) | 0xA0;
  (*(v20 + 8 * (a1 + 682)))();
  *(v18 + v19) = 0;
  *(v18 - 0x71166887D0A76934) = v21;
  *(v18 - 0x71166887D0A76930) = 164704100;
  (*(v20 + 8 * (v22 + 2775)))(v18 + v19);
  return (*(v20 + 8 * (((((((v22 + 76) & 0xD7) + 68) ^ (a17 == 0x1A8CA07156B7B2ABLL)) & 1) * (((v22 + 2121187148) & 0x819146D7 ^ 0xAEC6C852) + 1362702777)) ^ (v22 + 2121187148) & 0x819146D7)))(v17);
}

void sub_1D4B18A0C()
{
  *(v1 + v2) = 0;
  *(v1 - 0x1A8CA07156B7B2A3) = 1488562574;
  *(v1 - 0x1A8CA07156B7B29FLL) = 0;
  (*(v3 + 8 * ((v0 ^ 0x1098) + 1756)))(v1 + v2);
  sub_1D4B1491C();
}

void Gg9q7vHg34(unint64_t a1, uint64_t a2)
{
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4B18BC0(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v3 + 8 * ((39 * v4) ^ v2)))(4294922293);
}

uint64_t sub_1D4B18C10()
{
  *v0 = 0;
  *(v0 + 8) = 0x205585D268BFA235;
  *(v0 + 16) = 0;
  v2 = (*(v1 + 23584))(4096, 0x100004077774924);
  *v0 = v2;
  return (*(v1 + 8 * ((20 * (v2 == 0)) ^ 0x801)))();
}

uint64_t sub_1D4B1C4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = -191875503 * (v19 ^ 1) - 2 * v19 + 5;
  *(&a19 + 16 * &a19 - 144 * ((&a9 - 0x36F214C141B3E0BELL) / 9) - 0x6F214C141B3E10D1) = *(qword_1E84B4290[v20 + 6] + 8) ^ *(a2 + 15) ^ 0xD1 ^ *(qword_1E84B4290[v20 + 1] + 13) ^ *(qword_1E84B4290[v20 + 5] + 14);
  return (*(a5 + 8 * v20))();
}

void __getAMSUIPrivacyViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAMSUIPrivacyViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSPrivacyController.m" lineNumber:33 description:{@"Unable to find class %s", "AMSUIPrivacyViewController"}];

  __break(1u);
}

void __getAMSUIPrivacyViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleMediaServicesUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SSPrivacyController.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getOBBundleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOBBundleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSPrivacyController.m" lineNumber:34 description:{@"Unable to find class %s", "OBBundle"}];

  __break(1u);
}

void OnBoardingKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SSPrivacyController.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getOBPrivacyFlowClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOBPrivacyFlowClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSPrivacyController.m" lineNumber:35 description:{@"Unable to find class %s", "OBPrivacyFlow"}];

  __break(1u);
}

void __getISStoreURLOperationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISStoreURLOperationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSPrivacyController.m" lineNumber:43 description:{@"Unable to find class %s", "ISStoreURLOperation"}];

  __break(1u);
}

void iTunesStoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iTunesStoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SSPrivacyController.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void __getISProtocolDataProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISProtocolDataProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSPrivacyController.m" lineNumber:41 description:{@"Unable to find class %s", "ISProtocolDataProvider"}];

  __break(1u);
}

void __getISOperationQueueClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISOperationQueueClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSPrivacyController.m" lineNumber:42 description:{@"Unable to find class %s", "ISOperationQueue"}];

  __break(1u);
}

void getAAFollowUpUserInfoAccountIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAAFollowUpUserInfoAccountIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void getAAFollowUpUserInfoAltDSID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAAFollowUpUserInfoAltDSID(void)"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getFLFollowUpControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFLFollowUpControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:31 description:{@"Unable to find class %s", "FLFollowUpController"}];

  __break(1u);
}

void CoreFollowUpLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreFollowUpLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SSFollowUpController.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void AppleAccountLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleAccountLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SSFollowUpController.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void __getFLFollowUpActionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFLFollowUpActionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:30 description:{@"Unable to find class %s", "FLFollowUpAction"}];

  __break(1u);
}

void __getFLFollowUpItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFLFollowUpItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SSFollowUpController.m" lineNumber:32 description:{@"Unable to find class %s", "FLFollowUpItem"}];

  __break(1u);
}

uint64_t SSSQLiteBindFoundationValueToStatement_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void SSSQLiteBindFoundationValueToStatement(sqlite3_stmt *, NSInteger, id)"}];

  return [v0 handleFailureInFunction:v1 file:@"SSSQLiteDatabase.m" lineNumber:768 description:&stru_1F503F418];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}