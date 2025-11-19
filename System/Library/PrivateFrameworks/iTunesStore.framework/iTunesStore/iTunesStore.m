void sub_275BC5358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, __int16 a17, uint64_t a18, __int16 a19, uint64_t a20)
{
  if (v20)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275BC5E48(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = *MEMORY[0x277D85EF8];
  v21 = a3;
  reply_port = mig_get_reply_port();
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  v15.msgh_bits = -2147478253;
  *&v15.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 3, 0x38u, 0x40u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v15.msgh_id == 71)
  {
    v13 = 4294966988;
  }

  else if (v15.msgh_id == 1300)
  {
    if ((v15.msgh_bits & 0x80000000) != 0)
    {
      v13 = 4294966996;
      if (v16 == 1 && v15.msgh_size == 56 && !v15.msgh_remote_port && HIBYTE(v18) == 1)
      {
        v14 = v19;
        if (v19 == v21)
        {
          *a4 = v17;
          *a5 = v14;
          return 0;
        }
      }
    }

    else if (v15.msgh_size == 36)
    {
      v13 = 4294966996;
      if (HIDWORD(v17))
      {
        if (v15.msgh_remote_port)
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = HIDWORD(v17);
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }
  }

  else
  {
    v13 = 4294966995;
  }

  mach_msg_destroy(&v15);
  return v13;
}

uint64_t sub_275BC6038(uint64_t a1, uint64_t a2)
{
  v2 = qword_27A6716D0[(byte_275C655A0[byte_275C65280[(-3 * (dword_280A376D0 ^ 0x8A ^ dword_280A376C0))] ^ 7] ^ (-3 * (dword_280A376D0 ^ 0x8A ^ dword_280A376C0))) + 11];
  v3 = *(v2 - 4);
  v4 = qword_27A6716D0[(byte_275C657F4[(byte_275C654AC[(-3 * (v3 ^ dword_280A376C0 ^ 0x8A)) - 12] ^ 0xEA) - 4] ^ (-3 * (v3 ^ dword_280A376C0 ^ 0x8A))) - 188];
  v5 = v3 - &v12 + *v4;
  v6 = 1543604477 * (v5 - 0x45EA3381FA58338ALL);
  v7 = 1543604477 * (v5 ^ 0x45EA3381FA58338ALL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -3 * (*(v2 - 4) ^ 0x8A ^ v7);
  v8 = qword_27A6716D0[((-3 * ((dword_280A376C0 + dword_280A376D0) ^ 0x8A)) ^ byte_275C657F0[byte_275C654A0[(-3 * ((dword_280A376C0 + dword_280A376D0) ^ 0x8A))] ^ 0xB0]) - 90] - 12;
  v9 = (*(v8 + 8 * ((v7 ^ byte_275C655A0[byte_275C65280[v7] ^ 7]) + 2978)))(a2);
  v10 = *(v8 + 8 * ((byte_275C64B78[(byte_275C656F0[(-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))] ^ 0xE2) - 8] ^ (-3 * ((*v4 + *(v2 - 4)) ^ 0x8A))) + 2833));

  return v10(v9);
}

uint64_t sub_275BC62C4()
{
  v0 = qword_27A6716D0[((-3 * ((dword_280A376C0 - dword_280A376D8) ^ 0x8A)) ^ byte_275C64B70[byte_275C656F0[(-3 * ((dword_280A376C0 - dword_280A376D8) ^ 0x8A))] ^ 0x78]) - 199];
  v1 = *(v0 - 4);
  v2 = qword_27A6716D0[(byte_275C65080[byte_275C64D70[(-3 * (v1 ^ dword_280A376C0 ^ 0x8A))] ^ 6] ^ (-3 * (v1 ^ dword_280A376C0 ^ 0x8A))) - 62];
  v3 = 1543604477 * ((*v2 + v1) ^ &v12 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v4 = *(v0 - 4);
  v5 = qword_27A6716D0[((-3 * (dword_280A376D8 ^ 0x8A ^ dword_280A376C0)) ^ byte_275C64B70[byte_275C656F0[(-3 * (dword_280A376D8 ^ 0x8A ^ dword_280A376C0))] ^ 0x80]) - 241] - 12;
  (*(v5 + 8 * ((byte_275C64B70[byte_275C656F0[(-3 * ((v3 - v4) ^ 0x8A))] ^ 0xEC] ^ (-3 * ((v3 - v4) ^ 0x8A))) + 2786)))(*qword_27A6716D0[(byte_275C64F80[byte_275C64C70[(-3 * (v4 ^ 0x8A ^ v3))] ^ 0x90] ^ (-3 * (v4 ^ 0x8A ^ v3))) - 90]);
  v6 = -3 * (*(v0 - 4) ^ 0x8A ^ *v2);
  (*(v5 + 8 * ((byte_275C65188[(byte_275C64E78[v6 - 8] ^ 0xF0) - 8] ^ v6) + 2937)))(*qword_27A6716D0[(v6 ^ byte_275C65080[byte_275C64D70[v6] ^ 0x3F]) - 118]);
  v7 = *(v0 - 4);
  v8 = *v2;
  v9 = *qword_27A6716D0[((-3 * (v7 ^ 0x8A ^ v8)) ^ byte_275C64B70[byte_275C656F0[(-3 * (v7 ^ 0x8A ^ v8))] ^ 0xA9]) - 98];
  v10 = *(v5 + 8 * (((-3 * ((v8 + v7) ^ 0x8A)) ^ byte_275C64F80[byte_275C64C70[(-3 * ((v8 + v7) ^ 0x8A))] ^ 0xC3]) + 2895));

  return v10(v9);
}

unint64_t b64_encode_(unsigned __int8 *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, _DWORD *a6)
{
  if (!a6)
  {
    b64_encode__cold_8();
  }

  v6 = a6;
  v7 = a3;
  v8 = a2;
  v9 = (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  *a6 = 0;
  if (a5)
  {
    v9 += 2 * ((a5 + v9 - 1) / a5) - 2;
  }

  if (a3)
  {
    if (v9 <= a4)
    {
      if (a2 >= 3)
      {
        v28 = v9;
        v10 = 0;
        v11 = a3 + a4;
        v12 = a5;
        do
        {
          v13 = v7;
          v14 = a1;
          v15 = *a1;
          v16 = a1[1];
          v17 = a1[2];
          v18 = b64_chars[v15 >> 2];
          *v13 = b64_chars[v15 >> 2];
          if (!memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v18, 0x41uLL))
          {
            b64_encode__cold_7();
          }

          if (v10 + 1 == v12)
          {
            b64_encode__cold_6();
          }

          v19 = (v16 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v15 & 3));
          v20 = b64_chars[v19];
          *(v13 + 1) = b64_chars[v19];
          if (!memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v20, 0x41uLL))
          {
            b64_encode__cold_5();
          }

          if (v10 + 2 == v12)
          {
            b64_encode__cold_4();
          }

          v21 = (v17 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v16 & 0xF));
          v22 = b64_chars[v21];
          *(v13 + 2) = b64_chars[v21];
          if (!memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v22, 0x41uLL))
          {
            b64_encode__cold_3();
          }

          if (v10 + 3 == v12)
          {
            b64_encode__cold_2();
          }

          v23 = b64_chars[v17 & 0x3F];
          *(v13 + 3) = b64_chars[v17 & 0x3F];
          if (!memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v23, 0x41uLL))
          {
            b64_encode__cold_1();
          }

          v7 = v13 + 4;
          v10 += 4;
          if (v10 == v12 && v7 != v11)
          {
            v10 = 0;
            *(v13 + 4) = 2573;
            v7 = v13 + 6;
          }

          v8 -= 3;
          a1 = v14 + 3;
        }

        while (v8 > 2);
        a1 = v14 + 3;
        v6 = a6;
        v9 = v28;
      }

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v29[i] = a1[i];
        }

        if ((i - 1) <= 1)
        {
          bzero(&v29[v8], v8 ^ 3);
        }

        b64_encode_(v29, 3, v7, 12, 0, v6);
        if (v8 != 3)
        {
          v25 = 2 - v8;
          if (v8 > 2)
          {
            v25 = 0;
          }

          memset((v8 + v7 + 1), 61, v25 + 1);
        }
      }
    }

    else
    {
      v9 = 0;
      *a6 = 1;
    }
  }

  return v9;
}

unint64_t b64_encode2(unsigned __int8 *a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, unsigned int a6, int *a7)
{
  v7 = a5 & 0xF;
  if (v7 <= 1)
  {
    if ((a5 & 0xF) != 0)
    {
      if (v7 == 1)
      {
        a6 = 0;
        goto LABEL_12;
      }

LABEL_15:
      b64_encode2_cold_2();
    }

    if ((a6 & 0x80000000) == 0)
    {
      if ((a6 & 3) != 0)
      {
        b64_encode2_cold_1();
      }

      goto LABEL_12;
    }

LABEL_11:
    a6 = 64;
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    goto LABEL_11;
  }

  if (v7 != 3)
  {
    goto LABEL_15;
  }

  a6 = 76;
LABEL_12:
  v10 = 0;
  v8 = &v10;
  if (a7)
  {
    v8 = a7;
  }

  return b64_encode_(a1, a2, a3, a4, a6, v8);
}

_BYTE *b64_decode_(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, __int16 a5, void *a6, _DWORD *a7)
{
  v7 = a2 >> 2;
  if ((a2 & 3) != 0)
  {
    ++v7;
  }

  if (!a6)
  {
    b64_decode__cold_4();
  }

  if (!a7)
  {
    b64_decode__cold_3();
  }

  v8 = 3 * v7;
  *a6 = 0;
  *a7 = 0;
  if (a3)
  {
    if (v8 > a4)
    {
      v8 = 0;
      *a7 = 1;
      return v8;
    }

    v9 = a3;
    if (!a2)
    {
      return (v9 - a3);
    }

    v10 = 0;
    v11 = 0;
    v9 = a3;
    while (1)
    {
      v12 = *a1;
      if (v12 == 61)
      {
        if (v10 >= 4)
        {
          b64_decode__cold_2();
        }

        *(&v15 + v10) = 0;
        ++v11;
        goto LABEL_16;
      }

      v13 = b64_indexes[v12];
      if (v13 != 255)
      {
        if (v10 >= 4)
        {
          b64_decode__cold_1();
        }

        v11 = 0;
        *(&v15 + v10) = v13;
LABEL_16:
        if (++v10 == 4)
        {
          *v9 = (4 * v15) | (v16 >> 4) & 3;
          if (v11 == 2)
          {
            return (++v9 - a3);
          }

          v9[1] = (16 * v16) | (v17 >> 2) & 0xF;
          if (v11 == 1)
          {
            v9 += 2;
            return (v9 - a3);
          }

          v9[2] = v18 + (v17 << 6);
          if (v11)
          {
            v9 += 3;
            return (v9 - a3);
          }

          v10 = 0;
          v9 += 3;
        }

        goto LABEL_27;
      }

      if (v12 <= 0x20)
      {
        if (((1 << v12) & 0x100000B00) != 0)
        {
          if ((a5 & 0x200) != 0)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }

        if (((1 << v12) & 0x2400) != 0)
        {
          goto LABEL_27;
        }
      }

      if ((a5 & 0x100) != 0)
      {
LABEL_34:
        v8 = 0;
        *a7 = 3;
        *a6 = a1;
        return v8;
      }

LABEL_27:
      ++a1;
      if (!--a2)
      {
        return (v9 - a3);
      }
    }
  }

  return v8;
}

_BYTE *b64_decode2(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, __int16 a5, char *a6, char *a7)
{
  if (!a6)
  {
    a6 = &v9;
  }

  if (!a7)
  {
    a7 = &v8;
  }

  return b64_decode_(a1, a2, a3, a4, a5, a6, a7);
}

const char *b64_getErrorString(unsigned int a1)
{
  if (a1 > 3 || (v1 = *(&b64_LookupErrorStringA__s_strings + a1), *v1 != a1))
  {
    v3 = 0;
    v2 = "";
    while (1)
    {
      v1 = *(&b64_LookupErrorStringA__s_strings + v3);
      if (*v1 == a1)
      {
        break;
      }

      v3 += 8;
      if (v3 == 32)
      {
        return v2;
      }
    }
  }

  return *(v1 + 8);
}

uint64_t b64_getErrorStringLength(unsigned int a1)
{
  if (a1 > 3 || (v1 = *(&b64_LookupErrorStringA__s_strings + a1), *v1 != a1))
  {
    v3 = 0;
    while (1)
    {
      v1 = *(&b64_LookupErrorStringA__s_strings + v3);
      if (*v1 == a1)
      {
        break;
      }

      v3 += 8;
      if (v3 == 32)
      {
        return 0;
      }
    }
  }

  return *(v1 + 16);
}

void sub_275BC7A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BC7F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ISDeviceIncompatibleAppErrorWithAppTitle(void *a1)
{
  if ([a1 length])
  {
    v2 = MGCopyAnswer();
    v3 = [v2 integerValue] - 1;
    if (v3 <= 2 && [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleWithIdentifier:", @"com.apple.itunesstore", "localizedStringForKey:value:table:", off_27A670638[v3], &stru_2884BCFD0, 0), a1])
    {
      [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.itunesstore", "localizedStringForKey:value:table:", @"INCOMPATIBLE_PURCHASE_TITLE", &stru_2884BCFD0, 0}];
    }
  }

  v4 = *MEMORY[0x277D6A110];

  return SSError();
}

uint64_t ISBiometricsAddHeadersForTouchIDRequestToURLRequest(void *a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = +[ISBiometricStore sharedInstance];
  v12 = ISBiometricsHTTPHeaderValueForBiometricStateWithStore(v11);
  v13 = v12;
  if (a3)
  {
    v14 = +[ISDevice sharedInstance];
    v15 = [v14 deviceBiometricStyle];

    if (v15 != 2 || [v11 keyCountForAccountIdentifier:v10] != 1)
    {
LABEL_17:
      v56 = 0;
      v22 = [v11 publicKeyDataForAccountIdentifier:v10 purpose:a4 error:{&v56, v53}];
      v23 = v56;
      if (v22)
      {
        v24 = ISCopyEncodedBase64([v22 bytes], objc_msgSend(v22, "length"));
        goto LABEL_34;
      }

      v25 = v9;
      v26 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v26)
      {
        v26 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v27 = [v26 shouldLog];
      if ([v26 shouldLogToDisk])
      {
        v28 = v27 | 2;
      }

      else
      {
        v28 = v27;
      }

      v29 = [v26 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 2;
      }

      if (v30)
      {
        v57 = 138412546;
        v58 = v10;
        v59 = 2114;
        v60 = v23;
        LODWORD(v54) = 22;
        v53 = &v57;
        v31 = _os_log_send_and_compose_impl();

        if (!v31)
        {
LABEL_33:

          v24 = 0;
          v9 = v25;
LABEL_34:

          if (!v13)
          {
            goto LABEL_48;
          }

LABEL_35:
          v55 = v23;
          v32 = v11;
          v33 = v9;
          [v9 setValue:v13 forHTTPHeaderField:{*MEMORY[0x277D6A1C8], v53}];
          v34 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
          if (!v34)
          {
            v34 = [MEMORY[0x277D69B38] sharedConfig];
          }

          v35 = [v34 shouldLog];
          if ([v34 shouldLogToDisk])
          {
            v36 = v35 | 2;
          }

          else
          {
            v36 = v35;
          }

          v37 = [v34 OSLogObject];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v36;
          }

          else
          {
            v38 = v36 & 2;
          }

          if (v38)
          {
            v57 = 138543362;
            v58 = v13;
            LODWORD(v54) = 12;
            v53 = &v57;
            v39 = _os_log_send_and_compose_impl();

            if (!v39)
            {
LABEL_47:

              v9 = v33;
              v11 = v32;
              v23 = v55;
              goto LABEL_48;
            }

            v37 = [MEMORY[0x277CCACA8] stringWithCString:v39 encoding:{4, &v57, v54}];
            free(v39);
            v53 = v37;
            SSFileLog();
          }

          goto LABEL_47;
        }

        v29 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v57, v54}];
        free(v31);
        v53 = v29;
        SSFileLog();
      }

      goto LABEL_33;
    }

    v16 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!v16)
    {
      v16 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      LOWORD(v57) = 0;
      LODWORD(v54) = 2;
      v53 = &v57;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_16:

        a4 = 0;
        goto LABEL_17;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v57, v54}];
      free(v21);
      v53 = v19;
      SSFileLog();
    }

    goto LABEL_16;
  }

  v24 = 0;
  v23 = 0;
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_48:
  if (!v24)
  {
    goto LABEL_75;
  }

  if (([v13 isEqualToString:@"E"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"EP"))
  {
    v40 = v9;
    [v9 setValue:v24 forHTTPHeaderField:{*MEMORY[0x277D6A1A8], v53}];
    v41 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v41)
    {
      v41 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v42 = [v41 shouldLog];
    if ([v41 shouldLogToDisk])
    {
      v43 = v42 | 2;
    }

    else
    {
      v43 = v42;
    }

    v44 = [v41 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v43;
    }

    else
    {
      v45 = v43 & 2;
    }

    if (!v45)
    {
      goto LABEL_73;
    }

    v57 = 138543362;
    v58 = v24;
    LODWORD(v54) = 12;
  }

  else
  {
    v40 = v9;
    v41 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v41)
    {
      v41 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v46 = [v41 shouldLog];
    if ([v41 shouldLogToDisk])
    {
      v47 = v46 | 2;
    }

    else
    {
      v47 = v46;
    }

    v44 = [v41 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 & 2;
    }

    if (!v48)
    {
      goto LABEL_73;
    }

    v57 = 138543362;
    v58 = v24;
    LODWORD(v54) = 12;
  }

  v49 = _os_log_send_and_compose_impl();

  if (v49)
  {
    v44 = [MEMORY[0x277CCACA8] stringWithCString:v49 encoding:{4, &v57, v54}];
    free(v49);
    SSFileLog();
LABEL_73:
  }

  v9 = v40;

LABEL_75:
  if (a5)
  {
    v50 = v23;
    *a5 = v23;
  }

  v51 = *MEMORY[0x277D85DE8];
  return 0;
}

__CFString *ISBiometricsHTTPHeaderValueForBiometricStateWithStore(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = objc_alloc_init(ISBiometricStore);
  }

  v4 = v3;
  if (![(ISBiometricStore *)v3 canPerformBiometricOptIn])
  {
    goto LABEL_27;
  }

  v5 = [(ISBiometricStore *)v4 biometricState];
  if (!v5)
  {
    v8 = @"U";
    goto LABEL_28;
  }

  if (v5 == 1)
  {
    v8 = @"D";
    goto LABEL_28;
  }

  if (v5 != 2)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  v6 = +[ISDevice sharedInstance];
  v7 = [v6 deviceBiometricStyle];

  if (v7 == 2)
  {
    v8 = @"E";
    goto LABEL_28;
  }

  if (v7 != 3)
  {
    v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v17[0] = 0;
      LODWORD(v16) = 2;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_26:

        goto LABEL_27;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, v17, v16}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v8 = @"EP";
LABEL_28:

  return v8;
}

void ISBiometricsAddHeadersForTouchIDSignatureToURLRequest(void *a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D6A1A0];
  v6 = a3;
  v7 = a1;
  [v7 setValue:a2 forHTTPHeaderField:v5];
  [v7 setValue:v6 forHTTPHeaderField:*MEMORY[0x277D6A1B8]];

  [v7 setValue:@"1" forHTTPHeaderField:*MEMORY[0x277D6A1C0]];
}

BOOL ISBiometricsHasEntitlement(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = SecTaskCreateFromSelf(0);
  if (!v2)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v3 = v2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(v2, v1, &error);
  if (error)
  {
    v5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v16 = 138543618;
      v17 = v1;
      v18 = 2114;
      v19 = error;
      LODWORD(v14) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        CFRelease(error);
        goto LABEL_16;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v16, v14}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  v11 = v4 != 0;
  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(v3);
LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_275BCBB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275BCC26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BCC7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_275BCCC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BCDD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275BCE294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_275BCE7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_275BCF220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_275BCF928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_275BCFFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_275BD06C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_275BD285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_275BD2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

BOOL ISThreadSetBackgroundPriority(int a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  v3 = v2;
  if (!a1)
  {
    if (!v2)
    {
      v3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v3 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      [MEMORY[0x277CCACC8] currentThread];
      v17 = v16 = 134217984;
      LODWORD(v15) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_25:
        v8 = 0;
        goto LABEL_26;
      }

      v11 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v16, v15}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_25;
  }

  if (!v2)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  [MEMORY[0x277CCACC8] currentThread];
  v17 = v16 = 134217984;
  LODWORD(v15) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v16, v15}];
    free(v7);
    SSFileLog();
LABEL_12:
  }

  v8 = 4096;
LABEL_26:

  result = setpriority(3, 0, v8) == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275BD62E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __CreateMainQueue()
{
  __MainQueue = objc_alloc_init(ISOperationQueue);

  return MEMORY[0x2821F96F8]();
}

uint64_t _set_path_class(const char *a1, int a2)
{
  v8 = 0;
  v7 = xmmword_275C64AB8;
  v6 = 0;
  if (getattrlist(a1, &v7, &v6, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v6) == a2)
  {
    return 0;
  }

  v5 = a2;
  result = setattrlist(a1, &v7, &v5, 4uLL, 0);
  if (result)
  {
    return *__error();
  }

  return result;
}

void setFileClassC(void *a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if ((_set_path_class([v5 fileSystemRepresentation], 3) & 0xFFFFFFFD) != 0)
  {
    v7 = v6;
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v15 = 138543362;
      v16 = v5;
      LODWORD(v14) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_14:

        *a3 = 0;
        goto LABEL_15;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v15, v14}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
}

void sub_275BD8948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_275BDCCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275BDF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BE1EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _HostResolutionCallback(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v14[0] = 0;
  LODWORD(v13) = 2;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, v14, v13}];
    free(v11);
    SSFileLog();
LABEL_12:
  }

  v12 = _errorForStreamError(a3);
  [a4 _resolutionCompletedWithError:v12];
}

_DWORD *_errorForStreamError(_DWORD *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    if (*a1 || a1[2])
    {
      v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v2)
      {
        v2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v3 = [v2 shouldLog];
      if ([v2 shouldLogToDisk])
      {
        v4 = v3 | 2;
      }

      else
      {
        v4 = v3;
      }

      v5 = [v2 OSLogObject];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = v4;
      }

      else
      {
        v6 = v4 & 2;
      }

      if (v6)
      {
        v7 = *v1;
        v8 = v1[2];
        v13 = 134218240;
        v14 = v7;
        v15 = 1024;
        v16 = v8;
        LODWORD(v12) = 18;
        v9 = _os_log_send_and_compose_impl();

        if (!v9)
        {
LABEL_16:

          a1 = ISError(0, 0, 0);
          goto LABEL_17;
        }

        v5 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v13, v12}];
        free(v9);
        SSFileLog();
      }

      goto LABEL_16;
    }

    a1 = 0;
  }

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];

  return a1;
}

void *ISImageResourceCreateImageForResourceName(void *a1, _DWORD *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  HIDWORD(v34) = 0;
  if (ISImageResourceCreateImageForResourceName_bundle)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v6 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      *v35 = 0;
      LODWORD(v34) = 2;
      ImageForImageSource = _os_log_send_and_compose_impl();

      if (!ImageForImageSource)
      {
        goto LABEL_55;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithCString:ImageForImageSource encoding:{4, v35, v34}];
      free(ImageForImageSource);
      SSFileLog();
    }

    goto LABEL_41;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = ISImageResourceCreateImageForResourceName_bundle;
  ISImageResourceCreateImageForResourceName_bundle = v13;

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = [ISImageResourceCreateImageForResourceName_bundle URLForResource:v4 withExtension:@"tiff"];
  v6 = v5;
  if (!v5)
  {
    v17 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v17)
    {
      v17 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v19 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v17 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (!v22)
    {
      goto LABEL_40;
    }

LABEL_38:
    *v35 = 138543618;
    *&v35[4] = ISImageResourceCreateImageForResourceName_bundle;
    *&v35[12] = 2114;
    *&v35[14] = v4;
    LODWORD(v34) = 22;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
LABEL_41:

      ImageForImageSource = 0;
      goto LABEL_55;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, v35, v34, *v35, *&v35[16], v36}];
    free(v26);
    SSFileLog();
LABEL_40:

    goto LABEL_41;
  }

  v7 = CGImageSourceCreateWithURL(v5, 0);
  if (!v7)
  {
    v17 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v17)
    {
      v17 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v23 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v21 = [v17 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 2;
    }

    if (!v25)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v8 = v7;
  if (!CGImageSourceGetCount(v7))
  {
    v27 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v27)
    {
      v27 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
      *&v35[4] = *v35 = 138543362;
      LODWORD(v34) = 12;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_53:

        ImageForImageSource = 0;
        goto LABEL_54;
      }

      v30 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, v35, v34}];
      free(v31);
      SSFileLog();
    }

    goto LABEL_53;
  }

  v9 = [MEMORY[0x277D69A80] currentDevice];
  [v9 screenScale];
  v11 = v10;

  ImageForImageSource = _ISImageResourceCreateImageForImageSource(v8, &v34 + 1, v11);
LABEL_54:
  CFRelease(v8);
LABEL_55:

  if (a2)
  {
    *a2 = HIDWORD(v34);
  }

  v32 = *MEMORY[0x277D85DE8];
  return ImageForImageSource;
}

CGImageRef _ISImageResourceCreateImageForImageSource(CGImageSource *a1, float *a2, float a3)
{
  Count = CGImageSourceGetCount(a1);
  v7 = 2.0;
  v8 = 1.0;
  if (a3 == 2.0 && (Count & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = 2.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = 1;
  v11 = 2;
  if (Count == 3)
  {
    v8 = 3.0;
  }

  else
  {
    v11 = 0;
  }

  if (Count != 2)
  {
    v10 = v11;
    v7 = v8;
  }

  if (a3 == 3.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = (a3 == 2.0) & ((Count & 0xFFFFFFFFFFFFFFFELL) == 2);
  }

  if (a3 == 3.0)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = CGImageSourceCreateImageAtIndex(a1, v12, 0);
  if (a2)
  {
    *a2 = v13;
  }

  return result;
}

BOOL ISImageResourceShouldUseRetina()
{
  if (ISImageResourceShouldUseRetina_kPKPaymentContentItemImageAndScaleAttachment)
  {
    return 1;
  }

  SSVPassKitFramework();
  v1 = SSVWeakLinkedStringConstantForString();
  v2 = ISImageResourceShouldUseRetina_kPKPaymentContentItemImageAndScaleAttachment;
  ISImageResourceShouldUseRetina_kPKPaymentContentItemImageAndScaleAttachment = v1;

  return ISImageResourceShouldUseRetina_kPKPaymentContentItemImageAndScaleAttachment != 0;
}

uint64_t ISImageResourceShouldUseTinting()
{
  SSVPassKitFramework();
  v0 = SSVWeakLinkedStringConstantForString();
  return 0;
}

id __GetDictionaryValueForNetworkType(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = SSGetStringForNetworkType();
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    if (SSNetworkTypeIsCellularType())
    {
      while (a2 >= 2)
      {
        --a2;
        v6 = SSGetStringForNetworkType();
        v5 = [v3 objectForKey:v6];

        if (v5)
        {
          goto LABEL_7;
        }
      }
    }

    v5 = 0;
  }

LABEL_7:

  return v5;
}

void __ISRecordSPIClassUsage(void *a1)
{
  v1 = a1;
  if ((SSIsDaemon() & 1) == 0)
  {
    v2 = v1;
    AnalyticsSendEventLazy();
  }
}

id __ISCurrentProcessName()
{
  if (__ISCurrentProcessName_onceToken != -1)
  {
    __ISCurrentProcessName_cold_1();
  }

  v1 = __ISCurrentProcessName_processName;

  return v1;
}

uint64_t __ISRecordSPIFunctionUsage()
{
  result = SSIsDaemon();
  if ((result & 1) == 0)
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

void sub_275BF3528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275BF43E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ISError(int a1, uint64_t a2, uint64_t a3)
{
  __ISRecordSPIFunctionUsage();

  return MEMORY[0x2821CF680](0, @"SSErrorDomain", a1, a2, a3);
}

uint64_t ISErrorIndicatesSlowNetwork(void *a1)
{
  __ISRecordSPIFunctionUsage();
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v3 = [a1 code];
    v4 = 0x111u >> (v3 - 15);
    if ((v3 + 1009) >= 9)
    {
      LOBYTE(v4) = 0;
    }
  }

  else if ([v2 isEqualToString:@"SSErrorDomain"])
  {
    LOBYTE(v4) = [a1 code] == 110;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t ISErrorIsEqual(void *a1, uint64_t a2, uint64_t a3)
{
  __ISRecordSPIFunctionUsage();
  if (!a1 || [a1 code] != a3)
  {
    return 0;
  }

  v6 = [a1 domain];

  return [v6 isEqualToString:a2];
}

uint64_t ISErrorWithDomain(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  __ISRecordSPIFunctionUsage();

  return MEMORY[0x2821CF680](0, a1, a2, a3, a4);
}

uint64_t ISErrorWithExternalError(void *a1)
{
  __ISRecordSPIFunctionUsage();
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA738]] && (objc_msgSend(a1, "code") & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFB4ELL)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"UNTRUSTED_CERT_TITLE", &stru_2884BCFD0, 0}];
    v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"UNTRUSTED_CERT_BODY", &stru_2884BCFD0, 0}];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = [a1 domain];
  v6 = [a1 code];
  v7 = [a1 userInfo];

  return MEMORY[0x2821CF688](0, v5, v6, v3, v4, v7);
}

uint64_t ISErrorWithUnderlyingError(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  __ISRecordSPIFunctionUsage();

  return MEMORY[0x2821CF680](a1, a2, a3, a4, a5);
}

__CFString *ISClientIdentifierForBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.AppStore"])
  {
    v2 = @"Software";
  }

  else if ([v1 isEqualToString:@"com.apple.MobileStore"])
  {
    v2 = @"WiFi-Music";
  }

  else if ([v1 isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.mobileipod"))
  {
    v2 = @"MusicPlayer";
  }

  else if ([v1 isEqualToString:@"com.apple.videos"])
  {
    v2 = @"VideoPlayer";
  }

  else if ([v1 isEqualToString:@"com.apple.iBooks"])
  {
    v2 = @"eBooks";
  }

  else if ([v1 isEqualToString:@"com.apple.itunesu"])
  {
    v2 = @"iTunesU";
  }

  else if ([v1 isEqualToString:@"com.apple.podcasts"])
  {
    v2 = @"Podcasts";
  }

  else if ([v1 isEqualToString:@"com.apple.news"])
  {
    v2 = @"News";
  }

  else if ([v1 isEqualToString:@"com.apple.MobileSMS"])
  {
    v2 = @"Messages";
  }

  else if ([v1 isEqualToString:@"com.apple.ios.NewsstandStore"])
  {
    v2 = @"Newsstand";
  }

  else if ([v1 isEqualToString:@"com.apple.WelcomeKit"])
  {
    v2 = @"matd";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *ISClientIdentifierForURLScheme(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"itms-apps"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"itms-apps"))
  {
    v2 = @"Software";
  }

  else if ([v1 isEqualToString:@"itms-books"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"itms-bookss"))
  {
    v2 = @"eBooks";
  }

  else if ([v1 isEqualToString:@"itms-gc"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"itms-gcs"))
  {
    v2 = @"GameCenter";
  }

  else if ([v1 isEqualToString:@"itms-itunesu"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"itms-itunesus"))
  {
    v2 = @"iTunesU";
  }

  else if ([v1 isEqualToString:@"its-music"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"its-musics"))
  {
    v2 = @"MusicPlayer";
  }

  else if ([v1 isEqualToString:@"itms"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"itmss"))
  {
    v2 = @"WiFi-Music";
  }

  else if (([v1 isEqualToString:@"its-videos"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"its-videoss"))
  {
    v2 = @"VideoPlayer";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (![objc_msgSend(MEMORY[0x277D69B38] "sharedConfig")])
  {
    goto LABEL_24;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if ((a2 & 2) != 0)
  {
    [v5 addObject:@"reachable"];
    if ((a2 & 0x40000) == 0)
    {
LABEL_4:
      if ((a2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((a2 & 0x40000) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"wwan"];
  if ((a2 & 8) == 0)
  {
LABEL_5:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v6 addObject:@"automatic"];
  if ((a2 & 0x20) == 0)
  {
LABEL_6:
    if ((a2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v6 addObject:@"on-demand"];
  if ((a2 & 8) == 0)
  {
LABEL_7:
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v6 addObject:@"on-traffic"];
  if ((a2 & 4) == 0)
  {
LABEL_8:
    if ((a2 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v6 addObject:@"connection-required"];
  if ((a2 & 0x20000) == 0)
  {
LABEL_9:
    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    [v6 addObject:@"local"];
    if ((a2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_31:
  [v6 addObject:@"direct"];
  if ((a2 & 0x10000) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if (a2)
  {
LABEL_11:
    [v6 addObject:@"transient"];
  }

LABEL_12:
  v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 & 2;
  }

  if (v10)
  {
    v18 = 138412802;
    v19 = objc_opt_class();
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = [v6 componentsJoinedByString:{@", "}];
    LODWORD(v17) = 28;
    v16 = &v18;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v18, v17}];
      free(v12);
      v16 = v13;
      SSFileLog();
    }
  }

LABEL_24:
  result = [a3 _reloadNetworkTypeWithReachabilityFlags:{a2, v16}];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarrierChangeNotification(uint64_t a1, uint64_t a2)
{
  CFPreferencesAppSynchronize(@"com.apple.carrier");
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v3 postNotificationName:@"ISCarrierSettingsDidChangeNotification" object:a2];
}

void __NetworkTypeOverrideChangedNotification(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____NetworkTypeOverrideChangedNotification_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_275BF8FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_275BF9158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BF94A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BF977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_275BF98D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BF9BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275BFB1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

Class initUIAlertController()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUIAlertController_cold_1();
  }

  result = objc_getClass("UIAlertController");
  classUIAlertController = result;
  getUIAlertControllerClass = UIAlertControllerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initUIAlertAction()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUIAlertController_cold_1();
  }

  result = objc_getClass("UIAlertAction");
  classUIAlertAction = result;
  getUIAlertActionClass = UIAlertActionFunction;
  return result;
}

Class initUIWindow()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUIAlertController_cold_1();
  }

  result = objc_getClass("UIWindow");
  classUIWindow = result;
  getUIWindowClass = UIWindowFunction;
  return result;
}

Class initUIScreen()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUIAlertController_cold_1();
  }

  result = objc_getClass("UIScreen");
  classUIScreen = result;
  getUIScreenClass = UIScreenFunction;
  return result;
}

Class initUIViewController()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUIAlertController_cold_1();
  }

  result = objc_getClass("UIViewController");
  classUIViewController = result;
  getUIViewControllerClass = UIViewControllerFunction;
  return result;
}

Class initUIApplication()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUIAlertController_cold_1();
  }

  result = objc_getClass("UIApplication");
  classUIApplication = result;
  getUIApplicationClass = UIApplicationFunction;
  return result;
}

void sub_275BFE178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_275BFE83C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id ISCopyDigestFromString(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v10 = 0;
  if ([a1 getBytes:v11 maxLength:32 usedLength:&v10 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(a1, "length"), 0}] && v10 == 32)
  {
    for (i = 0; i < v10; i += 2)
    {
      *__str = *&v11[i];
      v9 = 0;
      v4 = strtol(__str, 0, 16);
      if (v4 <= 255)
      {
        v7 = v4;
        [v2 appendBytes:&v7 length:1];
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void *ISStringFromDigest(unsigned __int8 *a1, unsigned int a2)
{
  v4 = [MEMORY[0x277CCAB68] string];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *a1++;
      [v4 appendFormat:@"%02x", v6];
      --v5;
    }

    while (v5);
  }

  return v4;
}

void *ISMD5StringForBytes(const void *a1, CC_LONG a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (CC_MD5(a1, a2, md))
  {
    v2 = [MEMORY[0x277CCAB68] string];
    for (i = 0; i != 16; ++i)
    {
      [v2 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

unsigned __int8 *ISSHA1DataForBytes(const void *a1, CC_LONG a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = CC_SHA1(a1, a2, md);
  if (result)
  {
    result = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ISCopyEncodedBase64(unsigned __int8 *a1, unint64_t a2)
{
  result = b64_encode2(a1, a2, 0, 0, 1, 0, 0);
  if (result)
  {
    v5 = result;
    result = malloc_type_malloc(result, 0x9754F1CAuLL);
    if (result)
    {
      v6 = result;
      if (!b64_encode2(a1, a2, result, v5, 1, 0, 0) || (result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v6 length:v5 encoding:4 freeWhenDone:1]) == 0)
      {
        free(v6);
        return 0;
      }
    }
  }

  return result;
}

_BYTE *ISCopyDecodedBase64(unsigned __int8 *a1, unsigned int a2)
{
  v3 = a2;
  result = b64_decode2(a1, a2, 0, 0, 1, 0, 0);
  if (result)
  {
    v5 = result;
    v6 = malloc_type_malloc(result, 0x5F3D94D5uLL);
    b64_decode2(a1, v3, v6, v5, 1, 0, 0);
    result = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:v5 freeWhenDone:1];
    if (!result)
    {
      free(v6);
      return 0;
    }
  }

  return result;
}

id ISCopyDecompressedGZipDataForData()
{
  v0 = MEMORY[0x28223BE20]();
  v8 = *MEMORY[0x277D85DE8];
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [v0 length];
  strm.next_in = [v0 bytes];
  v1 = 0;
  if (!inflateInit2_(&strm, 31, "1.2.12", 112))
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB28]);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v7;
      v2 = inflate(&strm, 0);
      if (v2 > 1)
      {
        break;
      }

      v3 = v2;
      if (strm.avail_out != 0x4000)
      {
        [v1 appendBytes:v7 length:0x4000 - strm.avail_out];
      }

      if (v3)
      {
        inflateEnd(&strm);
        goto LABEL_9;
      }
    }

    inflateEnd(&strm);

    v1 = 0;
  }

LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t ISCopyGzippedDataForData(void *a1)
{
  v2 = [a1 bytes];
  v3 = [a1 length];
  v4 = 0;
  if (v2)
  {
    v5 = v3;
    if (v3)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v3];
      memset(&v10.avail_in, 0, 104);
      v10.avail_in = v5;
      v10.avail_out = v5;
      v10.next_out = [v6 mutableBytes];
      if (v6 && !deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112) && (v7 = deflate(&v10, 4), v8 = deflateEnd(&v10), v7 == 1))
      {
        v4 = 0;
        if (!v8 && v5 == v10.total_in)
        {
          [v6 setLength:v10.total_out];
          v4 = [v6 copy];
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

void sub_275C0167C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x275C0162CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_275C05864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275C06560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275C06718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275C06AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275C06D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void MachineDataAddHeadersToRequestProperties(void *a1, void *a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __MachineDataAddHeadersToRequestProperties_block_invoke;
  v5[3] = &unk_27A671178;
  v6 = v3;
  v4 = v3;
  __GetMachineDataHeaders(a2, v5);
}

void __GetMachineDataHeaders(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v4 = MEMORY[0x277C8BA30]([a1 unsignedLongLongValue], &v20, &v18 + 4, &v19, &v18);
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v21 = 138543618;
      v22 = @"ISMachineDataActionOperation";
      v23 = 2048;
      v24 = v5;
      LODWORD(v17) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v21, v17}];
      free(v11);
      SSFileLog();
    }

    v11 = 0;
    goto LABEL_14;
  }

  if (v20)
  {
    v13 = objc_alloc(MEMORY[0x277CBEA90]);
    v14 = [v13 initWithBytesNoCopy:v20 length:HIDWORD(v18) freeWhenDone:0];
    v12 = [v14 base64EncodedStringWithOptions:0];
  }

  else
  {
    v12 = 0;
  }

  if (v19)
  {
    v15 = objc_alloc(MEMORY[0x277CBEA90]);
    v6 = [v15 initWithBytesNoCopy:v19 length:v18 freeWhenDone:0];
    v11 = [v6 base64EncodedStringWithOptions:0];
    goto LABEL_20;
  }

  v11 = 0;
LABEL_21:
  v3[2](v3, v12, v11);
  if (v20)
  {
    MEMORY[0x277C8BA80]();
  }

  if (v19)
  {
    MEMORY[0x277C8BA80]();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __MachineDataAddHeadersToRequestProperties_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [*(a1 + 32) setValue:v6 forHTTPHeaderField:*MEMORY[0x277D6A178]];
  }

  if (v5)
  {
    [*(a1 + 32) setValue:v5 forHTTPHeaderField:*MEMORY[0x277D6A170]];
  }
}

void MachineDataAddHeadersToRequestProperties_V1_5(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:-1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __MachineDataAddHeadersToRequestProperties_V1_5_block_invoke;
  v4[3] = &unk_27A671178;
  v5 = v1;
  v3 = v1;
  __GetMachineDataHeaders(v2, v4);
}

void sub_275C0B10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275C0D680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ISSoftwareMapXPC(uint64_t a1, uint64_t a2)
{
  if (__ISSoftwareMapXPC_sOnce != -1)
  {
    __ISSoftwareMapXPC_cold_1();
  }

  v4 = __ISSoftwareMapXPC_sConnection;
  if (__ISSoftwareMapXPC_sConnection)
  {

    return [v4 sendMessage:a1 withReply:a2];
  }

  else
  {
    v6 = *(a2 + 16);

    return v6(a2, 0);
  }
}

void sub_275C0DD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __StartWatchingInstallationNotifications()
{
  v0 = [ISSoftwareMap mainThreadProxy];

  return [v0 _startWatchingInstallationNotifications];
}

uint64_t __SoftwareMappingChangedNotification()
{
  v0 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v0)
  {
    v0 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  if (os_log_type_enabled([v0 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v3 = v2;
  }

  else
  {
    v3 = v2 & 2;
  }

  if (v3)
  {
    v10[0] = 0;
    LODWORD(v9) = 2;
    v8 = v10;
    v4 = _os_log_send_and_compose_impl();
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x277CCACA8] stringWithCString:v4 encoding:{4, v10, v9}];
      free(v5);
      v8 = v6;
      SSFileLog();
    }
  }

  +[ISSoftwareMap invalidateCurrentMap];
  return [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

uint64_t ISCompareSoftwareVersions(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (!a1)
  {
    return -1;
  }

  if (!a2)
  {
    return 1;
  }

  if (a3)
  {
    v6 = [a3 indexOfObject:a1];
    v7 = [a3 indexOfObject:a2];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL || v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = -1;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 1;
      v10 = 1;
      if (v6 <= v7)
      {
        v10 = -1;
      }

      if (v6 == v7)
      {
        v10 = 0;
      }

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return v10;
      }
    }

    return v8;
  }

  return [a1 compare:a2];
}

void sub_275C0F3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275C0F6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275C0FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275C10130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275C10768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ISUniqueOperationLock(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[ISUniqueOperationManager sharedInstance];
  v7 = [(ISUniqueOperationManager *)v6 predecessorForKey:a1 operation:a2];
  AssociatedObject = objc_getAssociatedObject(a3, "com.apple.iTunesStore.ISUniqueOperationQueueAdjusts");
  if (!AssociatedObject || [AssociatedObject BOOLValue])
  {
    pthread_mutex_lock(&__LocksLock);
    v9 = [a3 maxConcurrentOperationCount];
    if (v9 != -1)
    {
      [a3 setMaxConcurrentOperationCount:v9 + 1];
    }

    pthread_mutex_unlock(&__LocksLock);
  }

  [__GetLockForKey(a1) lock];
  [(ISUniqueOperationManager *)v6 setPredecessorIfNeeded:a2 forKey:a1];
  return v7;
}

id __GetLockForKey(uint64_t a1)
{
  pthread_mutex_lock(&__LocksLock);
  v2 = __UniqueOperationLocks;
  if (!__UniqueOperationLocks)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    __UniqueOperationLocks = v2;
  }

  v3 = [v2 objectForKey:a1];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [__UniqueOperationLocks setObject:v3 forKey:a1];
  }

  pthread_mutex_unlock(&__LocksLock);
  return v3;
}

uint64_t ISUniqueOperationQueueAdjustsConcurrentOperationCount(void *a1)
{
  AssociatedObject = objc_getAssociatedObject(a1, "com.apple.iTunesStore.ISUniqueOperationQueueAdjusts");
  if (!AssociatedObject)
  {
    return 1;
  }

  return [AssociatedObject BOOLValue];
}

void ISUniqueOperationQueueSetAdjustsConcurrentOperationCount(id object, int a2)
{
  if (a2)
  {

    objc_setAssociatedObject(object, "com.apple.iTunesStore.ISUniqueOperationQueueAdjusts", 0, 0x301);
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:0];
    objc_setAssociatedObject(object, "com.apple.iTunesStore.ISUniqueOperationQueueAdjusts", v3, 0x301);
  }
}

uint64_t ISUniqueOperationUnlock(uint64_t a1, uint64_t a2, void *a3)
{
  [+[ISUniqueOperationManager sharedInstance](ISUniqueOperationManager uniqueOperationFinished:"uniqueOperationFinished:forKey:" forKey:a2, a1];
  [__GetLockForKey(a1) unlock];
  AssociatedObject = objc_getAssociatedObject(a3, "com.apple.iTunesStore.ISUniqueOperationQueueAdjusts");
  if (!AssociatedObject || (result = [AssociatedObject BOOLValue], result))
  {
    pthread_mutex_lock(&__LocksLock);
    v7 = [a3 maxConcurrentOperationCount];
    if (v7 >= 2)
    {
      [a3 setMaxConcurrentOperationCount:v7 - 1];
    }

    return pthread_mutex_unlock(&__LocksLock);
  }

  return result;
}

uint64_t ISDictionaryValueForCaseInsensitiveString(void *a1, void *a2)
{
  result = [a1 objectForKey:a2];
  if (!result)
  {
    v5 = [a2 lowercaseString];

    return [a1 objectForKey:v5];
  }

  return result;
}

void sub_275C12C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class ISWeakLinkedClassForString(NSString *a1, const void *a2)
{
  __ISGetHandleForLibrary(a2);

  return NSClassFromString(a1);
}

const void *__ISGetHandleForLibrary(const void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&__HandleLock);
  Mutable = __HandleForLibrary;
  if (!__HandleForLibrary)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __HandleForLibrary = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    v6 = [objc_msgSend(CPSystemRootDirectory() stringByAppendingPathComponent:{@"System", "stringByAppendingPathComponent:", @"Library"}];
    switch(a1)
    {
      case 0uLL:
        v7 = [objc_msgSend(CPSystemRootDirectory() stringByAppendingPathComponent:{@"usr", "stringByAppendingPathComponent:", @"lib"}];
        v8 = @"libAccessibility.dylib";
        goto LABEL_49;
      case 1uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"Contacts.framework"}];
        v8 = @"Contacts";
        goto LABEL_49;
      case 2uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"ContactsUI.framework"}];
        v8 = @"ContactsUI";
        goto LABEL_49;
      case 3uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"MediaPlayer.framework"}];
        v8 = @"MediaPlayer";
        goto LABEL_49;
      case 4uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"MessageUI.framework"}];
        v8 = @"MessageUI";
        goto LABEL_49;
      case 5uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"MusicLibrary.framework"}];
        v8 = @"MusicLibrary";
        goto LABEL_49;
      case 6uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"AssetsLibrary.framework"}];
        v8 = @"AssetsLibrary";
        goto LABEL_49;
      case 7uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"ToneLibrary.framework"}];
        v8 = @"ToneLibrary";
        goto LABEL_49;
      case 8uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"PhotoLibrary.framework"}];
        v8 = @"PhotoLibrary";
        goto LABEL_49;
      case 9uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"Social.framework"}];
        v8 = @"Social";
        goto LABEL_49;
      case 0xAuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"Accounts.framework"}];
        v8 = @"Accounts";
        goto LABEL_49;
      case 0xBuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"AccountSettings.framework"}];
        v8 = @"AccountSettings";
        goto LABEL_49;
      case 0xCuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"AppleAccount.framework"}];
        v8 = @"AppleAccount";
        goto LABEL_49;
      case 0xDuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"AskPermission.framework"}];
        v8 = @"AskPermission";
        goto LABEL_49;
      case 0xEuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"Celestial.framework"}];
        v8 = @"Celestial";
        goto LABEL_49;
      case 0xFuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"CoreMedia.framework"}];
        v8 = @"CoreMedia";
        goto LABEL_49;
      case 0x10uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"AudioToolbox.framework"}];
        v8 = @"AudioToolbox";
        goto LABEL_49;
      case 0x11uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"ManagedConfiguration.framework"}];
        v8 = @"ManagedConfiguration";
        goto LABEL_49;
      case 0x12uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"MobileBackup.framework"}];
        v8 = @"MobileBackup";
        goto LABEL_49;
      case 0x13uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"StoreKit.framework"}];
        v8 = @"StoreKit";
        goto LABEL_49;
      case 0x14uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"StoreKitUI.framework"}];
        v8 = @"StoreKitUI";
        goto LABEL_49;
      case 0x15uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"BiometricKit.framework"}];
        v8 = @"BiometricKit";
        goto LABEL_49;
      case 0x16uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"Radio.framework"}];
        v8 = @"Radio";
        goto LABEL_49;
      case 0x17uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"MobileInstallation.framework"}];
        v8 = @"MobileInstallation";
        goto LABEL_49;
      case 0x18uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"StreamingZip.framework"}];
        v8 = @"StreamingZip";
        goto LABEL_49;
      case 0x19uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"PassKit.framework"}];
        v8 = @"PassKit";
        goto LABEL_49;
      case 0x1AuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"AppleAccountUI.framework"}];
        v8 = @"AppleAccountUI";
        goto LABEL_49;
      case 0x1BuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"CoreDuet.framework"}];
        v8 = @"CoreDuet";
        goto LABEL_49;
      case 0x1CuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"CoreTelephony.framework"}];
        v8 = @"CoreTelephony";
        goto LABEL_49;
      case 0x1DuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"AppStoreDaemon.framework"}];
        v8 = @"AppStoreDaemon";
        goto LABEL_49;
      case 0x1EuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"LocalAuthentication.framework"}];
        v8 = @"LocalAuthentication";
        goto LABEL_49;
      case 0x1FuLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"MobileKeyBag.framework"}];
        v8 = @"MobileKeyBag";
        goto LABEL_49;
      case 0x20uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"SafariServices.framework"}];
        v8 = @"SafariServices";
        goto LABEL_49;
      case 0x21uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"CryptoTokenKit.framework"}];
        v8 = @"CryptoTokenKit";
        goto LABEL_49;
      case 0x22uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"BookLibrary.framework"}];
        v8 = @"BookLibrary";
        goto LABEL_49;
      case 0x23uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"CoreGraphics.framework"}];
        v8 = @"CoreGraphics";
        goto LABEL_49;
      case 0x24uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"DeviceIdentity.framework"}];
        v8 = @"DeviceIdentity";
        goto LABEL_49;
      case 0x25uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"MobileActivation.framework"}];
        v8 = @"MobileActivation";
        goto LABEL_49;
      case 0x26uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"PassKitCore.framework"}];
        v8 = @"PassKitCore";
        goto LABEL_49;
      case 0x27uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"PassKitUI.framework"}];
        v8 = @"PassKitUI";
        goto LABEL_49;
      case 0x28uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", @"MediaAccessibility.framework"}];
        v8 = @"MediaAccessibility";
        goto LABEL_49;
      case 0x29uLL:
        v7 = [objc_msgSend(v6 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", @"RTCReporting.framework"}];
        v8 = @"RTCReporting";
LABEL_49:
        v9 = [v7 stringByAppendingPathComponent:v8];
        if (!v9)
        {
          goto LABEL_52;
        }

        *__error() = 0;
        v10 = dlopen([v9 fileSystemRepresentation], 1);
        if (!v10)
        {
          goto LABEL_52;
        }

        v11 = v10;
        CFDictionarySetValue(__HandleForLibrary, a1, v10);
        pthread_mutex_unlock(&__HandleLock);
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        [v12 postNotificationName:@"ISWeakLibraryLoaded" object:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", a1), @"Library", 0)}];
        Value = v11;
        goto LABEL_5;
      default:
LABEL_52:
        v13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v13)
        {
          v13 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v14 = [v13 shouldLog];
        if ([v13 shouldLogToDisk])
        {
          v15 = v14 | 2;
        }

        else
        {
          v15 = v14;
        }

        if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v15 &= 2u;
        }

        if (v15)
        {
          v19 = 134218242;
          v20 = a1;
          v21 = 2080;
          v22 = dlerror();
          LODWORD(v18) = 22;
          v16 = _os_log_send_and_compose_impl();
          if (v16)
          {
            v17 = v16;
            [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v19, v18}];
            free(v17);
            SSFileLog();
          }
        }

        break;
    }
  }

  pthread_mutex_unlock(&__HandleLock);
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return Value;
}

void *ISWeakLinkedSymbolForString(const char *a1, const void *a2)
{
  result = __ISGetHandleForLibrary(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

void *ISWeakLinkedStringConstantForString(const char *a1, const void *a2)
{
  result = __ISGetHandleForLibrary(a2);
  if (result)
  {
    result = dlsym(result, a1);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t ISURLCachePurgeMemoryCache(void *a1)
{
  v1 = [a1 _CFURLCache];

  return MEMORY[0x28210D1A0](v1);
}

uint64_t ISURLCacheSaveMemoryCache(void *a1)
{
  v1 = [a1 _CFURLCache];

  return MEMORY[0x28210D198](v1);
}

void sub_275C1735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SSVPurchaseAddDownloadPropertiesForBuyParameters(void *a1)
{
  v13 = a1;
  v1 = [v13 buyParameters];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v1 unescapedValues:1];
    v3 = *MEMORY[0x277D6A018];
    v4 = [v13 valueForDownloadProperty:*MEMORY[0x277D6A018]];

    if (!v4)
    {
      v5 = [v2 objectForKey:@"appExtVrsId"];
      if (v5)
      {
        [v13 setValue:*MEMORY[0x277D69EE8] forDownloadProperty:v3];
      }
    }

    v6 = *MEMORY[0x277D69F88];
    v7 = [v13 valueForDownloadProperty:*MEMORY[0x277D69F88]];

    if (!v7)
    {
      v8 = [v2 objectForKey:@"bid"];
      if (v8)
      {
        [v13 setValue:v8 forDownloadProperty:v6];
      }
    }

    v9 = *MEMORY[0x277D6A080];
    v10 = [v13 valueForDownloadProperty:*MEMORY[0x277D6A080]];

    if (!v10)
    {
      v11 = [v2 objectForKey:@"salableAdamId"];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v11, "longLongValue")}];
        [v13 setValue:v12 forDownloadProperty:v9];
      }
    }
  }
}

id ISFairPlaySAPSessionURLBag()
{
  if (ISFairPlaySAPSessionURLBag_sOnce != -1)
  {
    ISFairPlaySAPSessionURLBag_cold_1();
  }

  v1 = ISFairPlaySAPSessionURLBag_sBag;

  return v1;
}

void __ISFairPlaySAPSessionURLBag_block_invoke()
{
  v2 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v0 = [[ISSSURLBag alloc] initWithURLBagContext:v2];
  v1 = ISFairPlaySAPSessionURLBag_sBag;
  ISFairPlaySAPSessionURLBag_sBag = v0;
}

void sub_275C1A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ISAccountURLWithURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = [v4 touchIDContinueToken];
  if (v6)
  {
    v7 = [v3 copyQueryStringDictionaryWithUnescapedValues:0];
    v8 = [MEMORY[0x277CBEBC0] escapedStringForString:v6];
    [v7 setObject:v8 forKeyedSubscript:@"tidContinueToken"];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __ISAccountURLWithURL_block_invoke;
    v29[3] = &unk_27A670B38;
    v30 = v9;
    v10 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v29];
    v11 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v12 = [v3 scheme];
    [v11 setScheme:v12];

    v13 = [v3 host];
    [v11 setHost:v13];

    v14 = [v3 path];
    [v11 setPath:v14];

    [v11 setPercentEncodedQueryItems:v10];
    v15 = [v11 URL];

    v5 = v15;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setObject:@"account" forKey:@"action"];
  v17 = [v5 absoluteString];
  [v16 setObject:v17 forKey:@"url"];

  if ([v4 shouldPersonalizeResponseActions])
  {
    v18 = [v4 accountScope];
    v19 = [v4 requiredUniqueIdentifier];
    v20 = v19;
    if (v19 && [v19 unsignedLongLongValue])
    {
      v21 = [v20 stringValue];
      [v16 setObject:v21 forKeyedSubscript:@"dsid"];

      v22 = MEMORY[0x277CEE160];
      if (v18)
      {
        v22 = MEMORY[0x277CEE158];
      }

      v23 = [MEMORY[0x277CB8F48] ams_accountTypeIdentifierForMediaType:*v22];
      [v16 setObject:v23 forKeyedSubscript:@"accountType"];
    }
  }

  v24 = [MEMORY[0x277CBEBC0] queryStringForDictionary:v16 escapedValues:1];
  if (v24)
  {
    v25 = MEMORY[0x277CBEBC0];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://?%@", v24];
    v27 = [v25 URLWithString:v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __ISAccountURLWithURL_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass = ACAccountStoreFunction;
  return result;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

uint64_t __InvalidateBagsNotification(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v11[0] = 0;
  LODWORD(v10) = 2;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, v11, v10}];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  return [a2 invalidateAllURLBags];
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ISCopyLoadMoreRangesFromArray(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v12 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"endId"];
          v9 = [v7 objectForKey:@"startId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v9];
              v5 = v12;
              [v13 addObject:v8];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v13;
}

void aslgmuibau()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = qword_27A6716D0[((-3 * (dword_280A376E8 ^ 0x8A ^ dword_280A376C0)) ^ byte_275C655A0[byte_275C65280[(-3 * (dword_280A376E8 ^ 0x8A ^ dword_280A376C0))] ^ 7]) + 16];
  v1 = *(v0 - 4);
  v2 = qword_27A6716D0[(byte_275C64F88[(byte_275C64C7C[(-3 * (v1 ^ dword_280A376C0 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_280A376C0 ^ 0x8A))) - 58];
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_27A6716D0[((-3 * ((dword_280A376C0 - dword_280A376E8) ^ 0x8A)) ^ byte_275C64B70[byte_275C656F0[(-3 * ((dword_280A376C0 - dword_280A376E8) ^ 0x8A))] ^ 0xE2]) - 111] - 12;
  v7 = *(v6 + 8 * ((60 * ((*(v6 + 8 * ((byte_275C64B78[(byte_275C656F0[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 2697)))(24, 0x1010040E2407E0ALL) != 0)) | 0x682u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C27CA8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_275C27D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 8) = 1840074139;
  v8 = *(v5 + 72);
  return (*(v6 + 8 * ((2 * (v4 == 0)) | 0x915)))(a1, 737898976, a3, a4);
}

uint64_t sub_275C27DF8()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_275C27E8C()
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

uint64_t sub_275C283B8()
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

uint64_t sub_275C28840(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))();
}

uint64_t sub_275C28888()
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

uint64_t sub_275C28914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a6 + 16) = v10;
  v15 = *(v11 + 8);
  return (*(v13 + 8 * (((((v11 == 0) ^ v9 ^ 0x32 ^ (v12 - 54)) & 1) * ((v9 ^ 0x832) - 2401)) ^ v9 ^ 0x832)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_275C28D14@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_275C28D70()
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

uint64_t sub_275C28DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 48) = v6;
  v11 = *(v8 + 8);
  return (*(v9 + 8 * (((a2 + v7 - 737898377 + (v7 | 0x804) - 2567) * (v8 != 0)) ^ (v7 + 1812))))(a1, a2, a3, a4, a5);
}

uint64_t sub_275C28F10@<X0>(int a1@<W8>)
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

uint64_t sub_275C292B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v34 ^ 0xEFC)))();
  v36 = *v33;
  v37 = (*(v33 + 3) - 2027506636 + v34 + 1434 - 2818);
  v38 = qword_27A6716D0[v34 - 1372] - 4;
  (*(v35 + 8 * (v34 ^ 0xECB)))();
  v47 = (*(v35 + 8 * (v34 ^ 0xEF5)))(a12, 0);
  return (*(v35 + 8 * ((19 * (((v34 + 1) ^ (v47 == 0)) & 1)) ^ v34)))(v47, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_275C293DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, qword_27A6716D0[v35 - 2212] - 12);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == qword_27A6716D0[v35 - 2202] - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_275C294D0()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_275C29580()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_275C29618()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_275C296D0()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_275C29748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_275C2A0B4@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_275C2A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(*qword_27A6716D0[v21 ^ 0x478], *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_275C2A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
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

uint64_t sub_275C2A858@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

void sub_275C2A8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v55 = *(a6 + 144);
  (*(v53 + 8 * (v52 + 737901331)))(*(v55 - 0x1729FABDC6538B0));
  *(v55 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  v56 = *(v54 - 140);
  JUMPOUT(0x275C2A910);
}

uint64_t sub_275C2AB44(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_275C2AC3C(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_275C2AD0C(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_275C2AD58(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_275C2AD8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  v25 = *(v24 - 124);
  JUMPOUT(0x275C2AF20);
}

uint64_t sub_275C2B138()
{
  v6 = *(v4 - 0x1729FABDC6538B0);
  v7 = ((2 * v1) & 0xCFFFF5F6 ^ 0xC4FE32EF ^ (v3 + 191)) + (v1 ^ 0xD80E00D) - 1744829179;
  v8 = (*(v6 + v7) << 24) | (*(v6 + v7 + 1) << 16) | (*(v6 + v7 + 2) << 8) | *(v6 + v7 + 3);
  *(v4 + v0) = v2;
  return (*(v5 + 8 * (((((v4 == 0x1729FABDC6538B0) ^ (v3 + 69)) & 1) * (v3 - 1570)) ^ (v3 + 191))))();
}

uint64_t sub_275C2B24C()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_275C2B360(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x275C2B38CLL);
}

void fm23w5mn5o()
{
  v0 = qword_27A6716D0[((-3 * (qword_280A376B8 ^ 0x8A ^ dword_280A376C0)) ^ byte_275C64B70[byte_275C656F0[(-3 * (qword_280A376B8 ^ 0x8A ^ dword_280A376C0))] ^ 0x8E]) - 41];
  v1 = 1543604477 * ((*v0 + qword_280A376B8) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_280A376B8 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C2B4F8()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_275C2B544()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_275C2B624@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_275C2B67C@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
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

uint64_t sub_275C2B76C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_280A377D8 == 0)) ^ 0x215u)))();
}

uint64_t sub_275C2B808()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_275C2B910@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_275C2BA04(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

uint64_t sub_275C2BABC()
{
  (*(v3 + 8 * ((v2 - v0 - 2361) ^ (v5 - 1158))))(v1);
  v7 = *(v6 - 96);
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85DE8];
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

uint64_t sub_275C3076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v35 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117);
}

uint64_t sub_275C30878(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
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

uint64_t sub_275C30B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
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

uint64_t sub_275C30BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_275C30C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_275C30CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35);
  *a35 = 0;
  return sub_275C30AE4(v37, v38, 551906117);
}

void sub_275C30DEC()
{
  v5 = (v0 + 276668541) & 0xEF8258EA;
  v7 = *v1 - ((2 * *v1) & 0x133BDFB86) - 0x75332ED76621023DLL;
  v8 = *(v4 - 184);
  v9 = *(v4 - 176);
  v10 = *(v4 - 168);
  v6 = *(v2 + 8 * v5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_275C35764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_275C358A8()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x275C35914);
}

uint64_t sub_275C35968()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_275C35A08()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

void sub_275C35A60()
{
  v2 = *v1;
  v3 = (((v0 + 409103236) & 0xE79D96BA) - 1317876888) ^ *(v1 + 2);
  JUMPOUT(0x275C355A8);
}

uint64_t sub_275C35AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void sub_275C35B18()
{
  v2 = *v1;
  v3 = (v0 + 624) ^ *(v1 + 2) ^ 0xB172CC98;
  JUMPOUT(0x275C355A8);
}

void y1rKtVxYz7()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = qword_27A6716D0[((-3 * (dword_280A376C8 ^ 0x8A ^ dword_280A376C0)) ^ byte_275C65080[byte_275C64D70[(-3 * (dword_280A376C8 ^ 0x8A ^ dword_280A376C0))] ^ 0xE6]) - 36];
  v1 = -3 * (*v0 ^ dword_280A376C0 ^ 0x8A);
  v2 = qword_27A6716D0[(byte_275C65188[(byte_275C64E78[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = qword_27A6716D0[((-3 * ((dword_280A376C0 + dword_280A376C8) ^ 0x8A)) ^ byte_275C657F0[byte_275C654A0[(-3 * ((dword_280A376C0 + dword_280A376C8) ^ 0x8A))] ^ 0xEA]) - 199] - 12;
  v7 = *(v6 + 8 * ((225 * ((*(v6 + 8 * ((byte_275C657F4[(byte_275C654AC[v2 - 12] ^ 0xEA) - 4] ^ v2) + 2739)))(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C35D2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_275C35E6C()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

void sub_275C35F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
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

uint64_t sub_275C36418()
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

uint64_t sub_275C365D4@<X0>(int a1@<W8>)
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

uint64_t sub_275C366F0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_275C3677C()
{
  v3 = *v0;
  v4 = (v2 + *(v0 + 2) + v1 + 2792 - 2901);
  JUMPOUT(0x275C36794);
}

uint64_t sub_275C367C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

void sub_275C36834(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  JUMPOUT(0x275C3687CLL);
}

uint64_t sub_275C36978()
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

uint64_t sub_275C369F8@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
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

uint64_t sub_275C36EB8()
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

uint64_t sub_275C37364@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_275C3743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = (v37 - 160 + v34);
  *v38 = *(v35 + 12);
  v38[1] = 1862975980;
  v38[2] = 1862975973;
  return (*(v36 + 8 * (((((v38 == 0) ^ (v33 - 120)) & 1) * ((v33 - 577) ^ 0x176)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_275C374DC()
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

uint64_t sub_275C3756C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40, _DWORD *a41)
{
  v46 = (v45 + v41 - 630) | 0x241;
  v47 = a7 + v41 - 262;
  v48 = *v42;
  v49 = *a8;
  v50 = *a8 - 1862975969;
  *(*v42 + v50) = 0;
  *(v48 + v50 + 1) = 0;
  *(v48 + v49 + (v46 ^ 0x90F53574)) = 0;
  *(v48 + v50 + 3) = 11;
  *a8 += 4;
  v51 = *v42 + (*a41 - 1862975969);
  v52 = *(v44 + 8 * v47);
  return (*(v44 + 8 * (((a40 <= v51) * (((31 * (v46 ^ 0xB08) - 2202) | 0x502) - 1950)) ^ v46)))(v51, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_275C376D8@<X0>(int a1@<W8>)
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

void sub_275C3786C()
{
  v3 = *v0;
  v4 = (*(v0 + 2) + v2) - 0x75332ED76621023DLL - (((v1 + 2794) ^ 0x133BDF0D3) & (2 * (*(v0 + 2) + v2)));
  JUMPOUT(0x275C378B0);
}

uint64_t sub_275C378C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_275C37AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v41 + 8 * (v42 + 306)))();
  v43 = *v39;
  v44 = (*(v39 + 3) - 1862975969);
  v45 = *(v40 + 8 * (v42 - 2646)) - 4;
  (*(v41 + 8 * (v42 ^ 0x1C1)))();
  v54 = (*(v41 + 8 * (v42 + 315)))(*(v40 + 8 * (v42 - 2649)), 0);
  return (*(v41 + 8 * (((v54 == 0) * ((((v42 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v42)))(v54, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_275C37BC8(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_275C37CA4()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_275C37D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_275C37E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_275C37EC4()
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

uint64_t sub_275C37F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v19 = (v14 + 63928535) & 0xFC3089EF;
  *(v18 - 256) = v15;
  v20 = (*(v17 + 8 * (v19 ^ 0x2CD)))(v15, v16, va);
  *(v18 - 248) = v20;
  return (*(v17 + 8 * (((v20 == 0) * (((v19 - 1939) ^ 0xFFFFF92F) + v19 - 599)) ^ v19)))(v20, v21, v22, v23, v24, v25, v26, v27, a1, a2, a3);
}

uint64_t sub_275C38048(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_275C380D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_275C385DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
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

void sub_275C38668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x275C386D4);
}

uint64_t sub_275C387C8@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_275C3882C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
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

uint64_t sub_275C38E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 8 * (v21 ^ 0x428);
  v24 = v23 ^ 0x247;
  (*(v22 + 8 * (v23 ^ 0xD32)))(v20);
  v25 = (*(v22 + 8 * (v24 ^ 0xF72)))(**(v18 + 8 * (v24 - 1277)), a14, a18);
  return (*(v22 + 8 * (((v19 == 0) * (v24 - 805)) ^ v24)))(v25);
}

void sub_275C38E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731));
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  v27 = *(v24 - 188);
  JUMPOUT(0x275C38EF0);
}

uint64_t sub_275C390C0(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

void sub_275C392E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  v19 = *(v18 - 172);
  JUMPOUT(0x275C394E4);
}

uint64_t sub_275C396F0@<X0>(int a1@<W8>)
{
  v7 = *(v4 - 0x60E31FD2FE548731);
  v8 = ((a1 << ((v3 - 12) & 0xDB ^ 0xCA)) & 0xFBDFE956 ^ v2) + (a1 ^ 0xC4418324);
  v9 = (*(v7 + v8 - 2112877739) << 24) | (*(v7 + v8 + (((v3 & 0x77094EFF) - 366141693) & 0x15D2DD6B ^ 0x82100A3C)) << 16) | (*(v7 + v8 - 2112877737) << 8) | *(v7 + v8 - 2112877736);
  *(v4 + v5) = v1;
  return (*(v6 + 8 * (v3 & 0x77094EFF ^ (511 * (v4 == 0x60E31FD2FE548731)))))();
}

uint64_t sub_275C397E0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_275C398E4(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x275C39920);
}

void uv5t6nhkui()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = qword_27A6716D0[(byte_275C65080[byte_275C64D70[(-3 * ((dword_280A376C0 - dword_280A376A8) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_280A376C0 - dword_280A376A8) ^ 0x8A))) - 53];
  v1 = qword_27A6716D0[((-3 * ((dword_280A376C0 + *v0) ^ 0x8A)) ^ byte_275C65080[byte_275C64D70[(-3 * ((dword_280A376C0 + *v0) ^ 0x8A))] ^ 6]) - 62];
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = qword_27A6716D0[((-3 * ((dword_280A376C0 + dword_280A376A8) ^ 0x8A)) ^ byte_275C64B70[byte_275C656F0[(-3 * ((dword_280A376C0 + dword_280A376A8) ^ 0x8A))] ^ 0xEC]) - 178] - 12;
  v6 = *(v5 + 8 * ((32 * ((*(v5 + 8 * ((byte_275C657F4[(byte_275C654AC[v1 - 12] ^ 0xB0) - 4] ^ v1) + 2848)))(24, 0x1010040E2407E0ALL) == 0)) | 0xACAu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C39B50(uint64_t a1)
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

uint64_t sub_275C39BFC@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 - 798723295)))(v1);
  v5 = *(v4 - 96);
  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void p435tmhbla()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = qword_27A6716D0[((-3 * (dword_280A376B0 ^ 0x8A ^ dword_280A376C0)) ^ byte_275C64F80[byte_275C64C70[(-3 * (dword_280A376B0 ^ 0x8A ^ dword_280A376C0))] ^ 0x42]) - 166];
  v1 = *(v0 - 4);
  v2 = qword_27A6716D0[((-3 * ((dword_280A376C0 - v1) ^ 0x8A)) ^ byte_275C64B70[byte_275C656F0[(-3 * ((dword_280A376C0 - v1) ^ 0x8A))] ^ 0x8E]) - 41];
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_27A6716D0[((-3 * ((dword_280A376C0 - dword_280A376B0) ^ 0x8A)) ^ byte_275C655A0[byte_275C65280[(-3 * ((dword_280A376C0 - dword_280A376B0) ^ 0x8A))] ^ 7]) - 6] - 12;
  v7 = (*(v6 + 8 * ((byte_275C64B78[(byte_275C656F0[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 2718)))(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C3E524(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

uint64_t sub_275C3E5C8@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 - 1329486522)))(v1);
  v5 = *(v4 - 96);
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void fy34trz2st()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = qword_27A6716D0[((-3 * (dword_280A376E0 ^ 0x8A ^ dword_280A376C0)) ^ byte_275C657F0[byte_275C654A0[(-3 * (dword_280A376E0 ^ 0x8A ^ dword_280A376C0))] ^ 0xEA]) - 198];
  v1 = -3 * ((dword_280A376C0 + *v0) ^ 0x8A);
  v2 = qword_27A6716D0[(byte_275C65188[(byte_275C64E78[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = qword_27A6716D0[((-3 * ((dword_280A376C0 - dword_280A376E0) ^ 0x8A)) ^ byte_275C657F0[byte_275C654A0[(-3 * ((dword_280A376C0 - dword_280A376E0) ^ 0x8A))] ^ 0xB0]) - 90] - 12;
  v7 = *(v6 + 8 * ((29 * ((*(v6 + 8 * ((byte_275C65084[(byte_275C64D70[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 2890)))(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CDu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C423D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_275C42460@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 2218)))(v1);
  v5 = *(v4 - 96);
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_275C4585C@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *MEMORY[0x277D85DE8];
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

uint64_t sub_275C45AB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_275C45B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_275C45BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W8>)
{
  *(v7 + 8) = 1546755450;
  v10 = qword_27A6716D0[v6 - 1996];
  v11 = qword_27A6716D0[v6 - 2005] - 12;
  return (*(v8 + 8 * ((57 * (((v7 == 0) ^ a6) & 1)) ^ v6)))(a1, a2, a3, a4, a5, 3128662369);
}

uint64_t sub_275C45CC8()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_275C46250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
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

uint64_t sub_275C462E4@<X0>(_DWORD *a1@<X8>)
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

uint64_t sub_275C467FC()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_275C4689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
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

uint64_t sub_275C469E4@<X0>(int a1@<W8>)
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

uint64_t sub_275C46AD0@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_275C46B50()
{
  v3 = *(v0 - 0x2B7CC17BA9FDC7E6);
  v4 = (*v1 + v2);
  JUMPOUT(0x275C46B88);
}

uint64_t sub_275C46BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6));
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_275C46DC0()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_275C46E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t sub_275C47414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = (v48 - 240 + v44);
  *v49 = *(v46 - 0x2B7CC17BA9FDC7DALL);
  v49[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v49[2] = 1917268408;
  return (*(v47 + 8 * (((v49 != 0) | (4 * (v49 != 0))) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_275C4751C()
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

uint64_t sub_275C475C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  v59 = v54 - 2879;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v60 = *v48 + 4;
  *v48 = v60;
  v61 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v60 - 1917268404);
  v62 = *(v53 + 8 * v59);
  return (*(v53 + 8 * ((8 * (a18 <= v61)) | (16 * (a18 <= v61)) | v58)))(v61, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_275C47BE4()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_275C47C48@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_275C47CA0()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_275C47CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v55 = (v52 + 146) | 0x849;
  v56 = (*(v54 + 8 * (v52 + 2460)))();
  *(v53 + 64) = 0;
  *(v53 + 76) = 0;
  *(v53 + 40) = 0;
  (*(v54 + 8 * (v55 ^ 0x15D)))(v56);
  v57 = *(v50 - 0x2B7CC17BA9FDC7E6);
  v58 = *(v50 - 0x2B7CC17BA9FDC7DALL) + ((v55 - 92548938) & 0xBFFFBDE1 ^ 0x37C3572D);
  v59 = *(v51 + 8 * (v55 ^ 0xAC5)) - 4;
  (*(v54 + 8 * (v55 + 218)))();
  v68 = (*(v54 + 8 * (v55 + 212)))(a16, 0);
  return (*(v54 + 8 * (((v68 == 0) * (((v55 - 1709) | 0x140) - 1353)) ^ v55)))(v68, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_275C47EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, qword_27A6716D0[v52 ^ 0x2FF] - 12);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == qword_27A6716D0[v52 - 727] - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_275C48000()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_275C480B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_275C4815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_275C48218()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_275C4828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_275C48CC4@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_275C48D28()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_275C48D60()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_275C48DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v34 + 76) = 0;
  *(v34 + 40) = 0;
  v37 = (*(v36 + 8 * (v33 ^ 0xD56)))(**(v35 + 8 * (v33 ^ 0x631)), *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v33 - v32 + 1383) ^ 0x37C3572Du), &a27, &a31);
  return (*(v36 + 8 * ((15 * ((v37 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v37) & 0xF9FEDD78) != v33 - 1929764732)) ^ v33)))();
}

uint64_t sub_275C48FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
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

uint64_t sub_275C49B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

uint64_t sub_275C49C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = ((((v19 + 187) | 0x2C0) ^ 0xFB6FF42E) & (2 * v18)) + (v18 ^ 0x7DB7F9EF);
  v23 = v22 - 2109209807;
  v24 = (v19 - 1339747575) & 0x4FDAEDA3 ^ 0x82480331;
  v25 = (*(v16 + v22 - 2109209071) << 24) | (*(v16 + v22 - 2109209070) << 16) | (*(v16 + v22 + v24) << 8);
  v26 = *(v16 + v23 + 739);
  *(v20 + a3) = v17;
  return (*(v21 + 8 * (v19 ^ (176 * (v20 != a2)))))(v24, a2, a3, 2185757489, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_275C49E70(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = ((2 * v9) & 0xDFFFFF76) + (v9 ^ 0xEFFFFFBB) + 268435525;
  v17 = (*(v8 + v16 + 1) << (((v13 - 33) & 0xE9) - 17)) | (*(v8 + v16) << 24) | (*(v8 + v16 + 2) << 8) | *(v8 + v16 + 3);
  *(v11 + a1) = v10;
  *(v15 - 244) = 0;
  *a8 = (*(v14 + 8 * (a2 ^ 0xB19)))(v12, 0x100004077774924);
  JUMPOUT(0x275C49F50);
}

uint64_t sub_275C49FC0()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_275C4A060(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_275C4A25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  v31 = *(v30 - 244);
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL);
}

uint64_t sub_275C4A37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_275C4A488(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  v4 = *(v3 + 8 * (v2 ^ 0x98F));
  JUMPOUT(0x275C4A4F4);
}

uint64_t gJa8aF901k(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_2884B6B90[40 * ((*(&unk_2884B6B9C + 23572))(24, 0x1010040E2407E0ALL) == 0) + 2369];
    __asm { BRAA            X8, X17 }
  }

  result = 4294922295;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275C4AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_275C4AD40()
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

uint64_t sub_275C4ADD8@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
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

uint64_t sub_275C4B27C()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_275C4B2DC()
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

uint64_t sub_275C4B360()
{
  *(v3 + 40) = v1;
  v7 = *(v2 + 8);
  return (*(v4 + 8 * ((((v5 + v0 + 1520545374) & 0xADA1A7CB ^ 0x5DD) * (v2 == 0)) ^ v0)))(4294922294);
}

uint64_t sub_275C4B794()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_275C4B7E8()
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

uint64_t sub_275C4B870()
{
  *(v3 + 80) = v1;
  v7 = *(v2 + 8);
  return (*(v4 + 8 * (((((v0 - 70057) & 0xF7BDAFFF ^ (v5 - 2719)) + 5 * (v0 ^ 0x994)) * (v2 == 0)) ^ v0)))(4294922294);
}

uint64_t sub_275C4B9AC@<X0>(int a1@<W8>)
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

uint64_t sub_275C4BD68()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_275C4BDBC()
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

uint64_t sub_275C4BE48()
{
  *(v3 + 120) = v0;
  v8 = *(v2 + 8);
  return (*(v4 + 8 * ((((((v1 + 2289) ^ 0x8F2) - v6 + 2951) ^ (v5 - 791) ^ (255 * ((v1 + 2289) ^ 0x8F2))) * (v2 == 0)) ^ (v1 + 2289))))(4294922294);
}

uint64_t sub_275C4BF68@<X0>(int a1@<W8>)
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

uint64_t sub_275C4C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 144) = (*(v16 + 8 * (v17 ^ 0x25E)))();
  v18 = *v14;
  v19 = (*(v14 + 3) - 1295758285);
  v20 = qword_27A6716D0[v17 - 2494] - 4;
  (*(v16 + 8 * (v17 ^ 0x269)))();
  v21 = (*(v16 + 8 * (v17 ^ 0x257)))(a14, 0);
  *(v15 + 152) = v21;
  return (*(v16 + 8 * (((v21 == 0) * (125 * (v17 ^ 0x9D9) - 2327)) | v17)))(4294922293, v21);
}

uint64_t sub_275C4C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_275C4C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, qword_27A6716D0[v46 - 1629] - 12);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == qword_27A6716D0[v46 ^ 0x675] - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_275C4C518()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_275C4C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_275C4C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_275C4C728()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_275C4C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_275C4D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(*qword_27A6716D0[v26 ^ 0xEB], *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_275C4D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
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

uint64_t sub_275C4D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void sub_275C4D628()
{
  v2 = *v0;
  v3 = *(v0 + 2) ^ (v1 - 1172238736);
  JUMPOUT(0x275C4D64CLL);
}

uint64_t sub_275C4D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(*qword_27A6716D0[(4 * (v25 ^ 0x5A5)) ^ 0x102], a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

void sub_275C4D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v30 = *(v26 + 216);
  (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v30 - 0x78520B45E1B54CDELL));
  *(v30 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  v31 = *(v29 - 124);
  JUMPOUT(0x275C4D85CLL);
}

uint64_t sub_275C4DAD0@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_275C4DBC8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_275C4DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  v27 = *(v26 - 112);
  JUMPOUT(0x275C4DEA0);
}

uint64_t sub_275C4E0AC@<X0>(int a1@<W8>)
{
  v6 = a1 - 2200;
  v7 = (a1 - 1973414721) & 0x759FE87D;
  v8 = *(v3 - 0x78520B45E1B54CDELL);
  v9 = ((2 * v1) & 0xEFEFE5DE ^ 0xE008809A) + (v1 ^ 0x7FBBAA2);
  v10 = (*(v8 + (v7 ^ 0x8080509) + v9) << ((v6 - 72) & 0x3D ^ 0x21)) | (*(v8 + v9 + 134745362) << 16) | (*(v8 + v9 + 134745363) << 8) | *(v8 + v9 + 134745364);
  *(v3 + v4) = v2;
  return (*(v5 + 8 * (v6 ^ (11 * (v3 == 0x78520B45E1B54CDELL)))))(v10);
}

uint64_t sub_275C4E198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v6 + 8 * (v7 + 2385)))(a2);
  *(v3 - 0x78520B45E1B54CDELL) = 0;
  *(v3 + v5) = -1172238684;
  *(v3 + v4) = v8;
  (*(v6 + 8 * (v7 ^ 0x9B3)))(v3 - 0x78520B45E1B54CDELL);
  return (*(v6 + 8 * ((((v9 + ((((v7 + 1479) | 0x18) - 138496025) & 0xFFFDE776) - 2855) ^ ((v7 + 1479) | 0x18) ^ 0x87D) * (v2 == 0)) | (v7 + 1479) | 0x18)))(a1);
}

void sub_275C4E27C()
{
  *v0 = 0;
  *(v0 + 8) = 504896673;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0x8EA)))(v0);
  JUMPOUT(0x275C4A8B0);
}

uint64_t jkag7Bg01u(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  result = 4294922295;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275C4E9B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30)
{
  v33 = a5 + a4 - 322;
  (*(v32 + 8 * (a4 + v31)))(*v30);
  *v30 = a30;
  *a27 = a16;
  return (*(v32 + 8 * ((1760 * (a29 == 0)) ^ v33)))();
}

uint64_t sub_275C4EB88()
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

uint64_t sub_275C4ED20@<X0>(int a1@<W8>)
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

uint64_t sub_275C4F0AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 16) = v8 + 12;
  return (*(v9 + 8 * ((125 * (((a4 + v6 - 2106) ^ (a4 + 969) ^ (v7 - 1113)) + v10 > 0xFFFFFFFB)) ^ v6)))(4294922289);
}

uint64_t sub_275C4F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
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

uint64_t sub_275C4F18C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 24) = v7;
  v11 = *(v8 + 8);
  return (*(v9 + 8 * ((((a4 + v6 - 211) ^ (a4 - 166) ^ (v6 + 1351269140) & 0xAF7544DF) * (v8 != 0)) ^ v6)))(4294922294);
}

uint64_t sub_275C4F2B4@<X0>(int a1@<W8>)
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

uint64_t sub_275C4F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 56) = v8 + 12;
  return (*(v9 + 8 * ((63 * ((v10 + v7) < 0xFFFFFFF8)) ^ v6)))(4294922289);
}

uint64_t sub_275C4F654(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

uint64_t sub_275C4F6E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 64) = v7;
  v11 = *(v8 + 8);
  return (*(v9 + 8 * ((((((v6 + 873925960) | 0x808080CA) - a4 + 201) ^ 0x725) * (v8 == 0)) ^ v6)))(4294922294);
}

uint64_t sub_275C4FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (v13 ^ 0x223) - a5 + 597;
  (*(v14 + 8 * (v13 + 2414)))();
  v16 = *v12;
  v17 = *(v12 + 3) + (v15 ^ 0x2F07D44 ^ (43 * (v13 ^ 0x223u)));
  v18 = qword_27A6716D0[v13 - 538] - 4;
  (*(v14 + 8 * (v13 + 2429)))();
  v20 = (*(v14 + 8 * (v13 ^ 0x9BB)))(a12, 0);
  return (*(v14 + 8 * (v13 | (8 * (v20 == 0)))))(4294922293, v20);
}

uint64_t sub_275C4FD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v43 + 8 * (v40 + 2724)))(v42, qword_27A6716D0[(v40 + 1979) ^ 0x89D] - 12);
  (*(v43 + 8 * (v40 + 2734)))(v42);
  (*(v43 + 8 * ((v40 + 1979) ^ 0x333)))(v42, v41);
  v44 = (*(v43 + 8 * ((v40 + 1979) ^ 0x30B)))();
  return (*(v43 + 8 * (((v44 == qword_27A6716D0[(v40 + 1979) ^ 0x88B] - 12) * (((v40 + 1459144467) & 0xA9073F7D ^ 0xFFFFFC95) + ((v40 + 2135594790) & 0x80B56C4F))) ^ (v40 + 1979))))(v44, v45, v46, v47, v48, v49, v50, v51, a9, v39, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_275C4FE94()
{
  v7 = v0;
  (*(v4 + 8 * (v1 ^ 0xA7D)))(v3, v2);
  v5 = (*(v4 + 8 * (v1 + 2493)))();
  return (*(v4 + 8 * (((v5 == v7) * (v1 + 1718 + v1 + 625 - 988)) ^ v1)))(v5);
}

uint64_t sub_275C4FF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7Du)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * (((v9 ^ 0x94E) - 2007) ^ 0x255)) ^ v9)))();
}

uint64_t sub_275C4FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7D)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * ((11 * (v9 ^ 0x1CD) + 272272676) & 0xEFC57AB2 ^ 0xBCF)) ^ v9)))();
}

uint64_t sub_275C500B0()
{
  v5 = v0;
  (*(v4 + 8 * ((v1 + 289) ^ 0xA7D)))(v3, v2);
  v6 = (*(v4 + 8 * ((v1 + 289) ^ 0xA45)))() == v5;
  return (*(v4 + 8 * ((v6 * (((v1 - 2065532648) & 0x7B1D8EBE) - 769)) ^ (v1 + 289))))();
}

uint64_t sub_275C50130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = 5 * (v46 ^ 0x4DB);
  (*(v47 + 8 * (v48 ^ 0x298)))(a45);
  (*(v47 + 8 * (v48 + 376)))(a46);
  return (*(v47 + 8 * (((a44 == 0) * ((((v48 + 335837067) | 0xA093108A) ^ 0xFFFFFF88) + v48 - 1265137643)) ^ v48)))(a44, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_275C50BCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = 0;
  a16 = 0;
  v23 = (*(v22 + 8 * (v21 ^ 0xC76)))(*qword_27A6716D0[v21 ^ 0x711], *v20, v19 + *(v20 + 12) + ((v21 - 1265136953) ^ (a2 - 284)) - 356, &a19, &a16);
  return (*(v22 + 8 * ((134 * ((v23 ^ 0x3733C776) - 84018724 + ((2 * v23) & 0x6E678EEC) != 1110557013)) ^ v21)))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11);
}

uint64_t sub_275C50D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t sub_275C51354@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0x9B4;
  (*(v13 + 8 * (a1 + 368)))(v12);
  v15 = (v14 - 618) | 0x20;
  (*(v13 + 8 * (v15 + 2601)))(*qword_27A6716D0[v15 - 354], a12, a9);
  return (*(v13 + 8 * ((173 * ((((v15 + 805797662) | 0x84901148) ^ 0xB49791CA) == -45003)) ^ v15)))(4294922293);
}

void sub_275C5138C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, uint64_t a56, uint64_t a57)
{
  v60 = *(a6 + 160);
  (*(v58 + 8 * (a4 ^ v57)))(*(v60 - 0x161D22D60BEDB2F3));
  *(v60 - 0x161D22D60BEDB2F3) = a57;
  *a55 = a18;
  v61 = *(v59 - 124);
  JUMPOUT(0x275C513ECLL);
}

uint64_t sub_275C515B0(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3128 * ((v2 ^ 0x17Cu) - 1228 == (v1 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_275C51644(uint64_t a1)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = ((v1 + 1) ^ v3) != (v2 ^ 0x2D496C09);
  return (*(v6 + 8 * (((v7 << 6) | (v7 << 7)) ^ v4)))();
}

void sub_275C517D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 - 0x161D22D60BEDB2EBLL) = ((a5 + a4 + 1250) ^ 0x7878E419) + a16 - ((2 * a16) & 0xF0F1C64A);
  *(a20 - 0x161D22D60BEDB2E7) = -499228505;
  v21 = *(v20 - 112);
  JUMPOUT(0x275C519BCLL);
}

uint64_t sub_275C51BE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
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
    return (*(v10 + 8 * (((*(qword_27A6716D0[a5 - 602 + a2] - 4) == 0) * (((a5 + a2 - 1727431518) & 0x66F68BBF) - 2568)) ^ (a5 + a2 + 527))))();
  }

  return (*(v10 + 8 * ((16 * (((v7 == v8) ^ (((-77 - a2) ^ 0x2F) + 1)) & 1)) | 0x7AC)))();
}

uint64_t sub_275C520DC@<X0>(int a1@<W8>)
{
  v8 = (a1 - 1387687271) & 0x52B66EFA;
  (*(v7 + 8 * (a1 ^ 0xB4C)))();
  *(v2 - 0x161D22D60BEDB2F3) = 0;
  *(v2 + v6) = 2021188389;
  *(v2 + v4) = v5;
  (*(v7 + 8 * (v8 + 2352)))(v2 - 0x161D22D60BEDB2F3);
  return (*(v7 + 8 * (((((((v8 + 718) | 0x2C1) + 806746591) | 0x84819002) + 1265135760 + 354 * (((v8 + 718) | 0x2C1) ^ 0x7EE) - 3057) * (v1 == 0)) ^ ((v8 + 718) | 0x2C1))))(v3);
}

void sub_275C52204()
{
  *v0 = 0;
  *(v0 + 8) = 1907636452;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0xA4E)))(v0);
  JUMPOUT(0x275C4E4C0);
}

void asabc800ag(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
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

uint64_t sub_275C522E4(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * (v4 | (4 * v4) | 0x542u)))(4294922293);
}

uint64_t sub_275C52DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, int a35, unsigned int a36, uint64_t a37)
{
  v39 = 2 * (a5 ^ (a5 - 167));
  v40 = v38 + a5 - 2045;
  (*(v37 + 8 * (a5 ^ (a5 - 2422))))(*a11);
  *a11 = a37;
  *a34 = a26;
  return (*(v37 + 8 * (((a36 == 0) * (v39 ^ 0xC50)) ^ v40)))(a36, v41, v42, v43, 2932264581, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275C52ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, int a41, unsigned int a42, uint64_t a43)
{
  v45 = a5 ^ (a5 + 168);
  v46 = a5 + v44 - 1924;
  (*(v43 + 8 * (a5 + v44)))(*(a38 - 0x1A8CA07156B7B2ABLL));
  *(a38 - 0x1A8CA07156B7B2ABLL) = a43;
  *a40 = a31;
  return (*(v43 + 8 * (((a42 == 0) * (v45 ^ 0x163)) ^ v46)))(a42, v47, v48, v49, 2932264581, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275C53144()
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

uint64_t sub_275C531E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
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

uint64_t sub_275C536CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v14 + 8 * (v12 + 2426)))();
  v15 = *(v13 - 0x1A8CA07156B7B2ABLL);
  v16 = *(v13 - 0x1A8CA07156B7B29FLL);
  v17 = qword_27A6716D0[v12 ^ 0x216] - 4;
  (*(v14 + 8 * (v12 + 2441)))();
  v19 = (*(v14 + 8 * (v12 + 2435)))(a12, 0);
  return (*(v14 + 8 * (((((v12 - 67) ^ (v19 == 0)) & 1) * ((v12 - 528963) & 0xAECEDEAD ^ 0xAEC6CEB3)) ^ v12)))(4294922293, v19);
}

uint64_t sub_275C537B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ v12 ^ (a5 - 99);
  v17 = (*(v14 + 8 * ((v13 ^ v12) + 513)))(a12, a2, 0);
  *(v15 - 256) = v17;
  return (*(v14 + 8 * ((((v16 ^ (v17 == 0)) & 1) * ((((v13 ^ v12) - 2374) | 0x210) ^ 0x265)) ^ v13 ^ v12)))(4294922293);
}

uint64_t sub_275C5382C()
{
  (*(v1 + 8 * (v0 ^ 0x90A)))(v2, qword_27A6716D0[v0 - 610] - 12);
  (*(v1 + 8 * (v0 ^ 0x9F4)))(v2);
  *(v4 - 248) = (*(v1 + 8 * (v0 ^ 0x9D0)))(v2, v3);
  v5 = (*(v1 + 8 * (v0 ^ 0x9E8)))();
  return (*(v1 + 8 * (((v5 == qword_27A6716D0[v0 ^ 0x268] - 12) * (v0 ^ 0x36E ^ ((v0 + 399) | 0x3B2))) ^ v0)))(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_275C53930(uint64_t a1)
{
  v4 = (v1 - 1359520148) & 0x5108A6FB;
  *(v3 - 248) = a1;
  (*(v2 + 8 * (v4 + 1074)))();
  (*(v2 + 8 * (v4 + 1074)))(*(v3 - 256));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C54554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 1187;
  v32 = (v28 - 1126878) & 0xAED7FFAF;
  a19 = 0;
  a28 = 0;
  a27 = v30;
  v33 = (*(v29 + 8 * (v28 + 2754)))(*qword_27A6716D0[v28 - 161], *(a24 - 0x1A8CA07156B7B2ABLL), *(a24 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  return (*(v29 + 8 * ((13 * ((v33 ^ (v32 - 1325847814)) - 44073024 + ((2 * v33) & 0xBF7FF2FE) == 1830779202)) ^ v31)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_275C5468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
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

uint64_t sub_275C54A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  *(v30 + 8) = v32 - 4096;
  *(v33 - 200) = v31;
  return (*(v29 + 8 * (((a28 <= 0x1000) * (v28 - 777)) ^ v28)))(a1, a2, a3, a4, 2932264581);
}

void sub_275C54A70()
{
  *(v2 - 164) = 0;
  v3 = *(v1 + v0);
  JUMPOUT(0x275C54E80);
}

uint64_t sub_275C54B58()
{
  *(v4 - 180) = -45007;
  *(v4 - 164) = -45007;
  return (*(v1 + 8 * (((v2 == v3) * (((v0 + 338) ^ 0x664) + ((v0 + 338) ^ 0xFFFFFD87))) ^ (v0 + 338))))();
}

void sub_275C54DD8()
{
  (*(v4 + 8 * (v1 ^ (v0 - 2422))))();
  *(v5 + v2) = 0;
  *(v5 - 0x71166887D0A76934) = v6;
  *(v5 + v3) = 164704100;
  (*(v4 + 8 * (v1 ^ 0xAEC6C50F)))(v5 + v2);
  sub_275C55074();
}

void sub_275C54E54()
{
  v2 = *v0;
  v3 = *(v0 + 2) ^ v1;
  JUMPOUT(0x275C54E7CLL);
}

uint64_t sub_275C54EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
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

uint64_t sub_275C54FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(a27 - 0x71166887D0A76934) = (a5 ^ (a5 - 369)) + 524352999 + a28 - ((2 * a28) & 0x3E81FBCE) - 913;
  *(a27 - 0x71166887D0A76930) = 164704100;
  return sub_275C55074(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275C55254(uint64_t a1, int a2)
{
  v8 = *(v6 - 0x71166887D0A7693CLL);
  v9 = (*(v8 + v5) << ((v4 ^ 0x2A) + 13)) | (*(v8 + (a2 + v3 - 3)) << 16) | (*(v8 + (a2 + v3 - 2)) << 8) | *(v8 + (a2 + v3 - 1));
  *(v6 - 0x71166887D0A76930) = v2 + 1509109630;
  return (*(v7 + 8 * ((1085 * (v9 == 261 * (v4 ^ 0x22A) - 2871)) ^ v4)))();
}

uint64_t sub_275C553D4@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(a1 + v3) << (((v4 - 32) & 0x3F) - 31)) | (*(a1 + (v1 + 1)) << 16) | (*(a1 + (v1 + 2)) << ((v4 - 120) & 0x7D ^ 0x15)) | *(a1 + (v1 + 3));
  *(v5 - 0x71166887D0A76930) = v2 - 908234881;
  return (*(v6 + 8 * ((978 * (v8 != 0)) ^ (v4 - 342))))(0);
}

uint64_t sub_275C5548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = (*(v8 + 8 * (v7 ^ 0x999)))(v6 << (((-67 * (v7 ^ 0x1E)) ^ 0xB7u) + a5 + v7 - 29), 0x1010040F32E1FD2);
  v12 = v5 == v9 || v10 == 0;
  return (*(v8 + 8 * ((60 * v12) ^ v7)))(4294922294);
}

uint64_t sub_275C55620@<X0>(int a1@<W4>, int a2@<W5>, int *a3@<X8>)
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

uint64_t sub_275C55738@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  *(a7 + 4) = *(v9 + v8) + a5;
  v13 = *(v9 + v10) + a4;
  *(v9 + v10) = v13;
  *(a7 + 12) = *(v9 + v8) + (a6 + v13 - 4);
  *(v9 + v10) += *a7;
  return (*(v11 + 8 * (((v12 + ((a3 + a1) | a2) - 2894) * (v7 == 0)) ^ a3)))();
}

uint64_t sub_275C5584C@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 < v5;
  *(v2 + v3) = 0;
  if (v7 == (v3 + 1) > 0xFFFFFFFFFA44B07CLL)
  {
    v7 = a1 + v3 + (v1 + 1329) + 411 < v4;
  }

  return (*(v6 + 8 * ((3224 * v7) ^ v1)))(4294922262);
}

uint64_t sub_275C558AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 160) = a22;
  *(v28 - 148) = a27;
  return (*(v27 + 8 * ((((7 * (((a4 - 645) | 0x148) ^ 0x77D)) ^ 0x109) * (a22 != 0)) ^ (a4 + 564))))(0);
}

uint64_t sub_275C55904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v21 = (*(v20 + 8 * (v17 ^ 0xAE1)))(32 * v18, 0x1010040F32E1FD2);
  *a17 = v21;
  return (*(v20 + 8 * (((v21 == 0) * (((v17 - 95) | 0x648) - 1850)) ^ v17)))(v19);
}

uint64_t sub_275C55964()
{
  *(v3 - 137) = v1 != 0;
  *(v3 - 144) = 0;
  return (*(v2 + 8 * (((((v0 - 28) ^ (v1 != 0)) & 1) * ((v0 + 996) ^ 0x54E)) ^ (v0 + 996))))();
}

uint64_t sub_275C559B0@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
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

void sub_275C55AAC()
{
  v4 = *(v2 + 32 * v1 + 16);
  v5 = *v3 - 0x75332ED76621023DLL - ((*v3 << (((v0 - 66) & 0xBEu) + 73)) & 0x133BDFB86);
  JUMPOUT(0x275C55B04);
}

uint64_t sub_275C55C64@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 329;
  v6 = (v1 - 16 + a1);
  v7 = *(v4 + v1 - 16);
  *(v6 - 1) = *(v4 + v1 - 16 - 16);
  *v6 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v5 + 181761835) & 0xF52A87AD ^ 0x43E)) ^ v5)))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_275C55E68@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a2 + v9) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 == ((v2 + v4) | v5) + a1) * v6) ^ v2)))();
}

uint64_t sub_275C55EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, void *a17)
{
  v19 = 7 * ((v18 + a5 - 1176) ^ 0x6F9);
  v20 = v18 + a5 - 793;
  *(*a17 + 32 * a7 + 24) = (*(v17 + 8 * (v18 + a5 - 6)))(*a15, 0x100004077774924);
  return (*(v17 + 8 * (((*(*a17 + 32 * a7 + 24) == 0) * (v19 ^ 0xB6)) ^ v20)))();
}

void sub_275C55F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t *a14)
{
  v16 = *(v15 + 32 * a7 + 16);
  v17 = *a14;
  v18 = *a13 - 0x75332ED76621023DLL - ((((v14 - 124694624) & 0x76EB33F) + 0x133BDF859) & (2 * *a13));
  JUMPOUT(0x275C55B64);
}

uint64_t sub_275C55FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 451 * (a5 ^ (a5 + 1));
  v27 = *(v25 - 148);
  v28 = v26 + *(v25 - 144) - 1352;
  *(v25 - 144) = v28;
  LOBYTE(v27) = v28 < v27;
  *(v25 - 137) = v27;
  return (*(v24 + 8 * ((((v26 ^ v27) & 1) * (v26 ^ 0x54E)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275C5601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = 11 * (v27 ^ 0x74);
  (*(v28 + 8 * ((v27 ^ 0x63F) + 1084)))(a22);
  *a10 = a27;
  return (*(v28 + 8 * (((a20 == 0x71166887D0A7693CLL) * ((((v29 - 1782) | 0x296) + 521) ^ 0x888)) ^ v29)))(0);
}

uint64_t sub_275C56308@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 2253) | 0xA0;
  (*(v20 + 8 * (a1 + 682)))();
  *(v18 + v19) = 0;
  *(v18 - 0x71166887D0A76934) = v21;
  *(v18 - 0x71166887D0A76930) = 164704100;
  (*(v20 + 8 * (v22 + 2775)))(v18 + v19);
  return (*(v20 + 8 * (((((((v22 + 76) & 0xD7) + 68) ^ (a17 == 0x1A8CA07156B7B2ABLL)) & 1) * (((v22 + 2121187148) & 0x819146D7 ^ 0xAEC6C852) + 1362702777)) ^ (v22 + 2121187148) & 0x819146D7)))(v17);
}

void sub_275C56428()
{
  *(v1 + v2) = 0;
  *(v1 - 0x1A8CA07156B7B2A3) = 1488562574;
  *(v1 - 0x1A8CA07156B7B29FLL) = 0;
  (*(v3 + 8 * ((v0 ^ 0x1098) + 1756)))(v1 + v2);
  sub_275C52338();
}

void Gg9q7vHg34(unint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_275C565DC(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v3 + 8 * ((39 * v4) ^ v2)))(4294922293);
}

uint64_t sub_275C5662C()
{
  *v0 = 0;
  *(v0 + 8) = 0x205585D268BFA235;
  *(v0 + 16) = 0;
  v2 = (*(v1 + 23584))(4096, 0x100004077774924);
  *v0 = v2;
  return (*(v1 + 8 * ((20 * (v2 == 0)) ^ 0x801)))();
}

uint64_t sub_275C566F8@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 - 694574375)))(v1);
  result = 4294922293;
  v5 = *(v3 - 96);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}