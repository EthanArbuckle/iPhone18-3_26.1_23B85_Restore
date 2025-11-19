void sub_1718(void *a1, io_iterator_t a2)
{
  v7 = a1;
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v7 action];

      if (v5)
      {
        v6 = [v7 action];
        v6[2](v6, v4);
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }
}

void sub_1E8C(uint64_t a1, uint64_t a2)
{
  v3 = [AHTDevice withService:a2];
  v4 = [v3 getBootLoader];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [v4 type];
    v7 = [v4 supportsMemoryDump];
    v8 = "NO";
    v10 = 138412802;
    v11 = v5;
    if (v7)
    {
      v8 = "YES";
    }

    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Added Device %@ bootloader %@ memory dump support %s", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained registerNotification:v4 memoryDumpLevel:*(a1 + 32)];
}

void sub_1FE4(uint64_t a1, uint64_t a2)
{
  v3 = [AHTInterface withService:a2];
  v4 = [v3 getBootLoader];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [v4 type];
    v7 = [v4 supportsMemoryDump];
    v8 = "NO";
    v10 = 138412802;
    v11 = v5;
    if (v7)
    {
      v8 = "YES";
    }

    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Added Interface %@ bootloader %@ memory dump support %s", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained registerNotification:v4 memoryDumpLevel:*(a1 + 32)];
}

id *sub_2480(id *result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return [result[4] getMemoryDumps:a2];
  }

  return result;
}

void sub_2E78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[AHTDeviceStats startDailyCollectionTimer]_block_invoke_2";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s timer cancelled", &v3, 0xCu);
  }
}

void sub_2F2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[AHTDeviceStats startCriticalErrorCollectionTimer]_block_invoke_2";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s timer cancelled", &v3, 0xCu);
  }
}

id sub_3AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"IsMtDOCalPresent";
  v4[1] = @"DisplayRepaired";
  v6 = *(a1 + 40);
  v4[2] = @"CoverGlassRepaired";
  v4[3] = @"Invalidated";
  v5 = v1;
  v7 = *(a1 + 56);
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:v4 count:4];

  return v2;
}

id sub_3DE0(uint64_t a1)
{
  v4[0] = @"AGMUltimateDecision";
  v4[1] = @"CalibrationSource";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id sub_3E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"AGMConfirmedAuthStatus";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_41E4(int a1, io_registry_entry_t entry)
{
  v2 = IORegistryEntrySearchCFProperty(entry, "IOService", @"Calibration Source", kCFAllocatorDefault, 0);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    sub_6FF4();
  }

  return v3;
}

void AHTUserEventAgentInit()
{
  if (!qword_EC28)
  {
    xpc_event_module_get_queue();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Already initialized", buf, 2u);
  }
}

uint64_t isDataInRCHL(const char *a1, unint64_t a2, size_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v19 = a2;
  v20 = a3;
  if (DERDecodeSeqContentInit(&v19, v15))
  {
    return 0;
  }

  if (DERDecodeSeqNext(v15, &v16))
  {
    return 0;
  }

  v19 = v17;
  v20 = v18;
  if (DERDecodeSeqContentInit(&v19, v15))
  {
    return 0;
  }

  while (!DERDecodeSeqNext(v15, &v16))
  {
    v19 = v17;
    v20 = v18;
  }

  if (DERDecodeSeqContentInit(&v19, v15) || DERDecodeSeqNext(v15, &v16))
  {
    return 0;
  }

  do
  {
    v19 = v17;
    v20 = v18;
    if (!DERDecodeSeqContentInit(&v19, v13))
    {
      while (!DERDecodeSeqNext(v13, &v16))
      {
        v19 = v17;
        v20 = v18;
        if (!DERDecodeSeqContentInit(&v19, v14))
        {
LABEL_24:
          while (!DERDecodeSeqNext(v14, &v16))
          {
            v19 = v17;
            v20 = v18;
            if ((v16 & 0xFE) == 0 && !DERDecodeItem(&v19, &v16))
            {
              if (a1)
              {
                v5 = v17;
                if (v17)
                {
                  v6 = v18;
                  if (v18)
                  {
                    printf("%.*s\n", v18, v17);
                    v7 = strnlen(a1, 0x10uLL);
                    v8 = v6 >= v7;
                    v9 = v6 - v7;
                    if (v8)
                    {
                      v10 = v7;
                      v11 = 0;
                      while (memcmp(a1, &v5[v11], v10))
                      {
                        if (++v11 > v9)
                        {
                          goto LABEL_24;
                        }
                      }

                      printf("found data %s\n", a1);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v12 = DERDecodeSeqNext(v15, &v16);
    result = 0;
  }

  while (!v12);
  return result;
}

uint64_t CRWasComponentRepaired(const char *a1, unint64_t a2, size_t a3)
{
  if (a1 && a2 && a3)
  {
    v6 = &off_C4E0;
    v7 = 10;
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = strnlen(v8, 0x20uLL);
      if (!strncmp(a1, v8, v9))
      {
        break;
      }

      v6 += 2;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    v10 = *v6;
    if (!*v6)
    {
LABEL_15:
      printf("Unknown component: %s\n");
      return 0;
    }

    v11 = *v10;
    if (!*v10)
    {
      return 0;
    }

    v12 = v10 + 1;
    do
    {
      printf("Checking for %s\n", v11);
      result = isDataInRCHL(*(v12 - 1), a2, a3);
      if (result)
      {
        break;
      }

      v14 = *v12++;
      v11 = v14;
    }

    while (v14);
  }

  else
  {
    printf("Invalid parameters: %p, %p, %lu\n");
    return 0;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

unint64_t *DERParseBitString(unint64_t *result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!result[1])
  {
    return (&dword_0 + 3);
  }

  v3 = **result;
  *a3 = v3;
  v4 = result[1];
  if (v4 != &dword_0 + 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = &v4[*result];
      v8 = &v5[*result];
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return (&dword_0 + 3);
  }

  if (v3)
  {
    return (&dword_0 + 3);
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != &dword_0 + 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == &dword_0 + 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

char **DERParseInteger(char **a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return (&dword_4 + 3);
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

char **DERParseInteger64(char **result, unint64_t *a2)
{
  v2 = result[1];
  if (!v2)
  {
    return (&dword_0 + 3);
  }

  v3 = *result;
  if (**result < 0)
  {
    return (&dword_0 + 3);
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return (&dword_4 + 3);
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return (&dword_4 + 3);
      }

      goto LABEL_7;
    }

    return (&dword_0 + 3);
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

unsigned __int8 **DERParseIntegerSigned(unsigned __int8 **a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, &v4);
  if (!result)
  {
    if (v4 == v4)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return (&dword_4 + 3);
    }
  }

  return result;
}

unsigned __int8 **DERParseInteger64Signed(unsigned __int8 **result, uint64_t *a2)
{
  v2 = result[1];
  if (!v2)
  {
    return (&dword_0 + 3);
  }

  v3 = *result;
  v4 = &(*result)[v2];
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return (&dword_4 + 3);
          }

          goto LABEL_10;
        }

        return (&dword_0 + 3);
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return (&dword_0 + 3);
    }

    if (v2 > 9)
    {
      return (&dword_4 + 3);
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return (&dword_4 + 3);
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  memset(v8, 170, sizeof(v8));
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  memset(v4, 170, sizeof(v4));
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_613C()
{
  sub_29DC();
  sub_29D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_61B4()
{
  sub_29DC();
  sub_29D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_622C()
{
  sub_29DC();
  sub_29D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_62E8()
{
  sub_29DC();
  sub_29D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_6360()
{
  sub_29DC();
  sub_29D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

BOOL sub_66A0(uint64_t a1, io_registry_entry_t entry)
{
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(entry, &entryID) || (v5 = IORegistryEntryIDMatching(entryID)) == 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v5;
    MatchingService = IOServiceGetMatchingService(0, v4);
    if (MatchingService)
    {
      v3 = IOObjectConformsTo(MatchingService, [*(a1 + 32) UTF8String]) != 0;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_6C4C(void *a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_44DC();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }
}

void sub_6CF8(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_44DC();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }
}

void sub_6D9C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_44DC();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }
}

void sub_6E30()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_44DC();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }
}

void sub_6EC4(uint64_t a1, void *a2, void *a3)
{
  *a1 = _NSConcreteStackBlock;
  *(a1 + 8) = 3221225472;
  *(a1 + 16) = sub_3E70;
  *(a1 + 24) = &unk_C4B8;
  v5 = a2;
  *(a1 + 32) = v5;
  AnalyticsSendEventLazy();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AHTDeviceStats agmStackChoiceStatsCollection]";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Sent Auth Status CA event %@", &v6, 0x16u);
  }

  [a3 setUltimateDecisionSet:0];
}

void sub_6FF4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_44DC();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }
}

void sub_7088(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_44DC();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }

  *a1 = -536870184;
}

void xpc_event_module_get_queue()
{
    ;
  }
}