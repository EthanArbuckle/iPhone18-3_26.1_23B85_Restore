void sub_2999EC5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F27E890, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t OSLogCopyFormattedString(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = OSLogCopyFormattedStringImpl(a1, a2, a3);
  v4 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v3];

  return v4;
}

__CFString *OSLogCopyFormattedStringImpl(uint64_t a1, void *a2, uint64_t a3)
{
  v29[4] = *MEMORY[0x29EDCA608];
  v6 = objc_autoreleasePoolPush();
  if (OSLogCopyFormattedStringImpl_onceToken != -1)
  {
    OSLogCopyFormattedStringImpl_cold_1();
  }

  v27 = 0;
  v7 = [OSLogCopyFormattedStringImpl_sEncryptedLocationTypes objectForKeyedSubscript:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", a1)}];
  if (!v7)
  {
    v13 = [OSLogCopyFormattedStringImpl_sFormatter JSONObjectWithType:a1 value:a2 info:a3];
    v14 = v13;
    if (v13)
    {
      v11 = stringWithJSONObject(v13, &v27);
      if (v11)
      {
        goto LABEL_21;
      }

      v13 = v27;
    }

    v29[0] = @"decode failure";
    v28[0] = @"type";
    v28[1] = @"error";
    v15 = [v13 description];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"nil";
    }

    v29[1] = v16;
    v28[2] = @"fake JSON";
    v17 = [v14 description];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"nil";
    }

    v29[2] = v18;
    v28[3] = @"raw value";
    v19 = [a2 description];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = @"nil";
    }

    v29[3] = v20;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    goto LABEL_20;
  }

  v8 = v7;
  v25 = 0;
  v26 = 0;
  v9 = extractEncryptedData(a2, &v25, &v26);
  v10 = v26;
  if (v26 || (v11 = (*(v8 + 16))(v8, v9, v25, &v26), (v10 = v26) != 0))
  {
    v12 = v10;
LABEL_20:
    v11 = stringWithJSONObject(v12, &v27);
  }

LABEL_21:
  v21 = @"{error:complete decode failure}";
  if (v11)
  {
    v21 = v11;
  }

  v22 = v21;
  objc_autoreleasePoolPop(v6);
  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

__CFString *OSStateCreateStringWithData(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = 1;
  v4 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:a3 length:a2 freeWhenDone:0];
  v5 = OSLogCopyFormattedStringImpl(a1, v4, &v7);

  return v5;
}

id __OSLogCopyFormattedStringImpl_block_invoke()
{
  v3[2] = *MEMORY[0x29EDCA608];
  OSLogCopyFormattedStringImpl_sFormatter = objc_alloc_init(CLLogFormatter);
  v2[0] = @"Location";
  v2[1] = @"Coordinate";
  v3[0] = &__block_literal_global_6;
  v3[1] = &__block_literal_global_25;
  result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  OSLogCopyFormattedStringImpl_sEncryptedLocationTypes = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void *__OSLogCopyFormattedStringImpl_block_invoke_2(uint64_t a1, __int128 *a2, unint64_t a3)
{
  if (a3 < 0x9C)
  {
    return &unk_2A2001118;
  }

  v21 = v3;
  v22 = v4;
  v6 = a2[7];
  v18 = a2[6];
  v19 = v6;
  v20[0] = a2[8];
  *(v20 + 12) = *(a2 + 140);
  v7 = a2[3];
  v14 = a2[2];
  v15 = v7;
  v8 = a2[5];
  v16 = a2[4];
  v17 = v8;
  v9 = a2[1];
  v12 = *a2;
  v13 = v9;
  v10[6] = v18;
  v10[7] = v19;
  v11[0] = v20[0];
  *(v11 + 12) = *(v20 + 12);
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v17;
  v10[0] = v12;
  v10[1] = v9;
  return [objc_msgSend(objc_alloc(MEMORY[0x29EDBD238]) initWithClientLocation:{v10), "description"}];
}

void *__OSLogCopyFormattedStringImpl_block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 0x10)
  {
    return [MEMORY[0x29EDBA0F8] stringWithFormat:@"<%+.8f, %+.8f>", *a2, a2[1], v3, v4];
  }

  else
  {
    return &unk_2A2001140;
  }
}

id stringWithJSONObject(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v5 = 0;
  v3 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:a1 options:4 error:&v5];
  if (v3)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v3 encoding:4];
  }

  result = 0;
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t extractEncryptedData(void *a1, void *a2, void *a3)
{
  v35[3] = *MEMORY[0x29EDCA608];
  if (extractEncryptedData_onceToken != -1)
  {
    extractEncryptedData_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34[0] = @"type";
    v34[1] = @"expected type";
    v35[0] = @"decode failure";
    v35[1] = @"NSData";
    v34[2] = @"raw value";
    v35[2] = a1;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v35;
    v13 = v34;
    goto LABEL_12;
  }

  v6 = [a1 bytes];
  v7 = [a1 length];
  if (!v6 || (v8 = v7, v7 <= 7))
  {
    v32[0] = @"type";
    v32[1] = @"expected type";
    v33[0] = @"decode failure";
    v33[1] = @"NSData";
    v32[2] = @"raw value";
    v33[2] = a1;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v33;
    v13 = v32;
    goto LABEL_12;
  }

  v23 = *v6;
  if (!v23)
  {
    result = 0;
    v15 = &unk_2A2001168;
    goto LABEL_15;
  }

  v9 = v7 - 8;
  if (v7 == 8)
  {
    result = 0;
    v15 = &unk_2A2001190;
    goto LABEL_15;
  }

  if (*(v6 + 8) != 1668050021)
  {
    ccaes_ecb_decrypt_mode();
    if (v9 % ccecb_block_size())
    {
      v30[0] = @"type";
      v30[1] = @"expected type";
      v31[0] = @"decode failure";
      v31[1] = @"encrypted data";
      v30[2] = @"raw value";
      v31[2] = a1;
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v31;
      v13 = v30;
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
      localtime_r(&v23, &v28);
      if (v28.tm_hour <= 0)
      {
        v17 = -(-v28.tm_hour & 3);
      }

      else
      {
        v17 = v28.tm_hour & 3;
      }

      snprintf(__str, 0x20uLL, "logkey_%04d_%03d_%02d", v28.tm_year, v28.tm_yday, v28.tm_hour - v17);
      v18 = [extractEncryptedData_keyPath stringByAppendingFormat:@"/%s", __str];
      if ([objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")] & 1) != 0 || (v19 = localtime(&v23), snprintf(&v28, 0x20uLL, "%04d_%03d", v19->tm_year, v19->tm_yday), v18 = objc_msgSend(objc_msgSend(extractEncryptedData_keyPath, "stringByAppendingFormat:", @"/%s", &v28), "stringByAppendingFormat:", @"/%s", __str), (objc_msgSend(objc_msgSend(MEMORY[0x29EDB9FB8], "defaultManager"), "fileExistsAtPath:", v18)))
      {
        *&v28.tm_sec = 0;
        v20 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v18 options:1 error:&v28];
        if (!*&v28.tm_sec)
        {
          v22 = v20;
          ccaes_ecb_decrypt_mode();
          [v22 length];
          [v22 bytes];
          if (ccecb_one_shot())
          {
            v15 = &unk_2A20011B8;
          }

          else
          {
            if (*(v6 + 8) == 1668050021)
            {
              goto LABEL_9;
            }

            v15 = &unk_2A20011E0;
          }

          goto LABEL_14;
        }

        v24[0] = @"type";
        v24[1] = @"reason";
        v25[0] = @"decrypt failure";
        v25[1] = @"can't load key";
        v24[2] = @"keypath";
        v21 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];
        v24[3] = @"error";
        v25[2] = v21;
        v25[3] = *&v28.tm_sec;
        v11 = MEMORY[0x29EDB8DC0];
        v12 = v25;
        v13 = v24;
        v14 = 4;
LABEL_13:
        v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
LABEL_14:
        result = 0;
LABEL_15:
        *a3 = v15;
        goto LABEL_16;
      }

      v26[0] = @"type";
      v26[1] = @"reason";
      v27[0] = @"decrypt failure";
      v27[1] = @"missing key";
      v26[2] = @"expected key";
      v27[2] = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v27;
      v13 = v26;
    }

LABEL_12:
    v14 = 3;
    goto LABEL_13;
  }

LABEL_9:
  result = v6 + 12;
  *a2 = v8 - 12;
LABEL_16:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

id __extractEncryptedData_block_invoke()
{
  v0 = getenv("CLLOG_ENCRYPTION_KEY_PATH");
  if (v0)
  {
    v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v0];
  }

  else
  {
    v1 = [objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")];
  }

  result = v1;
  extractEncryptedData_keyPath = result;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}