uint64_t sub_BD8(uint64_t *a1, uint64_t a2)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v4 = sub_160F34(0x1Eu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v5, 30, v6, "AVE_Prop_Cfg_GGM_Init", a1, a2);
      v7 = sub_175AE4();
      v12 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v12, "AVE_Prop_Cfg_GGM_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v6, "AVE_Prop_Cfg_GGM_Init", a1, a2);
    }
  }

  *(a1 + 1) = 0u;
  a1[4] = 0;
  *a1 = a2;
  *(a1 + 4) = -2;
  a1[1] = 0xFFFFFF9BFFFFFFFFLL;
  if (sub_160EF0(0x1Eu, 7))
  {
    v8 = sub_160F34(0x1Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v9, 30, v10, "AVE_Prop_Cfg_GGM_Init", a1, a2, 0);
      v9 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v9);
  }

  return 0;
}

uint64_t sub_D8C(uint64_t *a1)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v2 = sub_160F34(0x1Eu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v3, 30, v4, "AVE_Prop_Cfg_GGM_Uninit", a1, 0);
      v5 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_GGM_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v3, 30, v4, "AVE_Prop_Cfg_GGM_Uninit", a1, 0);
    }
  }

  v6 = *a1;
  if (sub_160EF0(0x1Eu, 7))
  {
    v7 = sub_160F34(0x1Eu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_GGM_Uninit", a1, v6, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

int *sub_F18(int *result, int a2)
{
  if (result)
  {
    v3 = *result++;
    v2 = v3;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      while (*result != a2)
      {
        result += 24;
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_F48(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      result += 12 * a2 + 12;
    }
  }

  return result;
}

uint64_t sub_F68(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8) <= a2)
    {
      return 4294966296;
    }

    else
    {
      result = 0;
      *a3 = *(v3 + 12 * a2 + 20);
    }
  }

  return result;
}

uint64_t sub_F9C(char *a1, _DWORD *a2)
{
  v2 = 4294966295;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = 0;
      v5[24 * v4 + 1] = 1;
      do
      {
        *&v6[v7] = -NAN;
        v7 += 3;
      }

      while (v7 != 21);
      ++v4;
      v6 += 24;
    }

    while (v4 != 5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = 0;
    v11 = 1;
    v12 = -1;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      while (1)
      {
        v14 = *a1;
        if (v14 <= 0x54)
        {
          break;
        }

        if (*a1 <= 0x6Bu)
        {
          if (v14 == 85)
          {
            goto LABEL_29;
          }

          if (v14 == 99)
          {
LABEL_31:
            v12 = 0;
            goto LABEL_38;
          }

          if (v14 != 105)
          {
            goto LABEL_36;
          }

LABEL_26:
          ++a1;
          v12 = 1;
        }

        else if (*a1 > 0x73u)
        {
          if (v14 == 116)
          {
            goto LABEL_32;
          }

          if (v14 != 117)
          {
            goto LABEL_36;
          }

LABEL_29:
          ++a1;
          v12 = 4;
        }

        else
        {
          if (v14 == 108)
          {
            goto LABEL_30;
          }

          if (v14 != 115)
          {
            goto LABEL_36;
          }

LABEL_33:
          ++a1;
          v12 = 5;
        }
      }

      if (*a1 > 0x4Bu)
      {
        switch(v14)
        {
          case 'L':
LABEL_30:
            ++a1;
            v12 = 3;
            break;
          case 'S':
            goto LABEL_33;
          case 'T':
LABEL_32:
            ++a1;
            v12 = 2;
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        if (*a1 > 0x42u)
        {
          if (v14 == 67)
          {
            goto LABEL_31;
          }

          if (v14 != 73)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        if (v14 == 32)
        {
          goto LABEL_38;
        }

        if (!*a1)
        {
          return v2;
        }

LABEL_36:
        if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 <= 0x19)
        {
          __endptr = 0;
          v15 = strtol(a1, &__endptr, 0);
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v10 = v15;
            }

            else if (v12 == 4)
            {
              v13 = v15;
            }

            else if (v9 > 4 || (v16 = &v5[24 * v9], v17 = v16[2], v17 > 6))
            {
              if (sub_160EF0(0x10u, 4))
              {
                v20 = sub_160F34(0x10u);
                v21 = sub_175AE4();
                v22 = sub_160F68(4);
                if (v20)
                {
                  if (v9 > 4)
                  {
                    v23 = -1;
                  }

                  else
                  {
                    v23 = v5[24 * v9 + 2];
                  }

                  printf("%lld %d AVE %s: %s:%d Invalid bounds %d %d\n", v21, 16, v22, "AVE_MCTF_SMap_Parse", 266, v9, v23);
                  v21 = sub_175AE4();
                  v22 = sub_160F68(4);
                  if (v9 > 4)
                  {
                    v24 = -1;
                  }

                  else
                  {
                    v24 = v5[24 * v9 + 2];
                  }
                }

                else if (v9 > 4)
                {
                  v24 = -1;
                }

                else
                {
                  v24 = v5[24 * v9 + 2];
                }

                syslog(3, "%lld %d AVE %s: %s:%d Invalid bounds %d %d", v21, 16, v22, "AVE_MCTF_SMap_Parse", 266, v9, v24);
              }

              v2 = 4294966278;
            }

            else
            {
              *v16 = v8;
              v16[1] = v11;
              v18 = &v16[3 * v17];
              v18[3] = v10;
              v18[4] = v13;
              v18[5] = v15;
              v19 = v17 + 1;
              v16[2] = v19;
              if (*a2 <= v9)
              {
                *a2 = v9 + 1;
              }

              v10 = 0;
              if (v19 == 7)
              {
                v8 = 0;
                v11 = 1;
              }

              v13 = 0x7FFFFFFF;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              if (v9 != v15)
              {
                v11 = 1;
                v10 = 0;
                v13 = 0x7FFFFFFF;
              }

              v9 = v15;
            }

            else if (v12 == 2)
            {
              v11 = v15;
            }
          }

          else
          {
            v8 = v15;
          }

          a1 = __endptr;
        }

        else
        {
LABEL_38:
          ++a1;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1354(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v7 = a3;
  if (sub_160EF0(a2, a3))
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      if (v8 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = v8;
      }

      v11 = (a1 + 12);
      do
      {
        if (sub_160EF0(a2, v7))
        {
          v12 = sub_160F34(a2);
          if (a3 < 0)
          {
            if ((-a3 & 0x20) != 0)
            {
              v18 = 0;
            }

            else
            {
              v18 = v12;
            }

            v19 = v11[1];
            if (v18 == 1)
            {
              printf("\t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              v20 = *(a1 + 8);
              v24 = v11[1];
              v26 = v11[2];
            }

            else
            {
              v25 = v11[1];
              v28 = v11[2];
              v22 = *(a1 + 8);
            }

            v23 = *v11;
            syslog(3, "\t[%p %s rI:%d/%d L:%d U:%d S:%d]", v11);
          }

          else
          {
            v13 = v12 ^ 1;
            v14 = sub_175AE4();
            v15 = sub_160F68(v7);
            v16 = v11[1];
            if ((v13 | ((a3 & 0x20) >> 5)))
            {
              v31 = v11[1];
              v33 = v11[2];
              v27 = *(a1 + 8);
            }

            else
            {
              printf("%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v14, a2, v15, v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              v14 = sub_175AE4();
              sub_160F68(v7);
              v17 = *(a1 + 8);
              v30 = v11[1];
              v32 = v11[2];
            }

            v29 = *v11;
            syslog(3, "%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]", v14, a2);
          }
        }

        ++v9;
        v11 += 3;
      }

      while (v10 != v9);
    }
  }

  return 0;
}

uint64_t sub_1558(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == 4 || valuePtr == 16)
      {
        *(a1 + 10480) = valuePtr == 4;
        result = sub_160EF0(0x1Eu, 6);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(6);
          v13 = *a2;
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v11, 30, v12, a1, *(a1 + 80), *a2, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(6);
            v14 = *(a1 + 80);
          }

          v30 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v11);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | Incorrect motion vector size (%d), %p %lld %p %p %p\n", v26, 30, v27, "AVE_Prop_OF_SetMotionVectorSize", 52, "iMotionVectorSize == kAVEMotionVectorSize_16x16 || iMotionVectorSize == kAVEMotionVectorSize_4x4", valuePtr, a1, *(a1 + 80), a2, a3, a4);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 80);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Incorrect motion vector size (%d), %p %lld %p %p %p", v26, 30, v27, "AVE_Prop_OF_SetMotionVectorSize", 52, "iMotionVectorSize == kAVEMotionVectorSize_16x16 || iMotionVectorSize == kAVEMotionVectorSize_4x4");
        }

        return 4294965292;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(a1 + 80);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_OF_SetMotionVectorSize", 42, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 80);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_OF_SetMotionVectorSize", 42, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_OF_SetMotionVectorSize", 33, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_OF_SetMotionVectorSize");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_OF_SetMotionVectorSize");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_19B8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 10480))
    {
      v10 = 4;
    }

    else
    {
      v10 = 16;
    }

    valuePtr = v10;
    v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      *a5 = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v14 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v15, 30, v16, a1, *(a1 + 80), *a2, valuePtr, v12);
          v15 = sub_175AE4();
          sub_160F68(7);
          v17 = *(a1 + 80);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v15, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d\n", v23, 30, v24, "AVE_Prop_OF_GetMotionVectorSize", 97, "pNum != __null", a1, *(a1 + 80), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v25 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v24, "AVE_Prop_OF_GetMotionVectorSize", 97, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_OF_GetMotionVectorSize", 85, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v21, 30, v26, "AVE_Prop_OF_GetMotionVectorSize", 85);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_OF_GetMotionVectorSize", 85);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1CFC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 10483) = 2 * (Value != 0);
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v11 = Value != 0;
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(6);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v13, 30, v14, a1, *(a1 + 80), *a2, v11);
          v13 = sub_175AE4();
          sub_160F68(6);
          v16 = *(a1 + 80);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v13);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v24 = *(a1 + 80);
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_OF_SetMultiPassSearch", 136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v26 = *(a1 + 80);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_OF_SetMultiPassSearch", 136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_SetMultiPassSearch", 127, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v20, 30, v27, "AVE_Prop_OF_SetMultiPassSearch");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_SetMultiPassSearch");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2044(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10483);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10483))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld Get %s: %d\n", v15, 30, v16, a1, *(a1 + 80), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 80);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_OF_GetMultiPassSearch", 171, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_OF_GetMultiPassSearch", 171);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_OF_GetMultiPassSearch", 171);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2270(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr <= 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | Incorrect client PID (%d), %p %lld %p %p %p\n", v26, 30, v27, "AVE_Prop_OF_SetClientPID", 222, "iClientPID > 0", valuePtr, a1, *(a1 + 80), a2, a3, a4);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 80);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Incorrect client PID (%d), %p %lld %p %p %p", v26, 30, v27, "AVE_Prop_OF_SetClientPID", 222, "iClientPID > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 612) = valuePtr;
        result = sub_160EF0(0x1Eu, 6);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(6);
          v13 = *a2;
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v11, 30, v12, a1, *(a1 + 80), *a2, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(6);
            v14 = *(a1 + 80);
          }

          v30 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v11);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(a1 + 80);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_OF_SetClientPID", 214, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 80);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_OF_SetClientPID", 214, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_OF_SetClientPID", 205, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_OF_SetClientPID");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_OF_SetClientPID");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_26BC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 612);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v14, 30, v15, a1, *(a1 + 80), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 80);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_OF_GetClientPID", 266, "pNum != __null", a1, *(a1 + 80), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_OF_GetClientPID", 266, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_GetClientPID", 255, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_OF_GetClientPID", 255);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_GetClientPID", 255);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_29EC(void *a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v11 = Value != 0;
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(6);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v13, 30, v14, a1, a1[10], *a2, v11);
          v13 = sub_175AE4();
          sub_160F68(6);
          v16 = a1[10];
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v13);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v24 = a1[10];
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_OF_SetIsHardwareAccelerated", 305, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v26 = a1[10];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_OF_SetIsHardwareAccelerated", 305, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_SetIsHardwareAccelerated", 296, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v20, 30, v27, "AVE_Prop_OF_SetIsHardwareAccelerated");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_SetIsHardwareAccelerated");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2D20(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (sub_E71EC(*(a1 + 92), 2, 2, valuePtr))
      {
        *(a1 + 10120) = valuePtr;
        result = sub_160EF0(0x1Eu, 6);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(6);
          v13 = *a2;
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v11, 30, v12, a1, *(a1 + 80), *a2, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(6);
            v14 = *(a1 + 80);
          }

          v30 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v11);
          return 0;
        }

        return result;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to find search range mode (%d), %p %lld %p %p %p\n", v26, 30, v27, "AVE_Prop_OF_SetMotionEstimationSearchMode", 356, "pSREntry != __null", valuePtr, a1, *(a1 + 80), a2, a3, a4);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          v28 = *(a1 + 80);
        }

        else
        {
          v31 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to find search range mode (%d), %p %lld %p %p %p", v26, 30, v27, "AVE_Prop_OF_SetMotionEstimationSearchMode", 356, "pSREntry != __null");
      }
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      v22 = *(a1 + 80);
      v23 = CFGetTypeID(a4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_OF_SetMotionEstimationSearchMode", 346, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v24 = *(a1 + 80);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_OF_SetMotionEstimationSearchMode", 346, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v15 = sub_160F34(0x1Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_OF_SetMotionEstimationSearchMode", 337, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
      v18 = sub_175AE4();
      v29 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_OF_SetMotionEstimationSearchMode");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_OF_SetMotionEstimationSearchMode");
    }
  }

  return 4294966295;
}

uint64_t sub_316C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10120);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v14, 30, v15, a1, *(a1 + 80), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 80);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_OF_GetMotionEstimationSearchMode", 400, "pNum != __null", a1, *(a1 + 80), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_OF_GetMotionEstimationSearchMode", 400, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_GetMotionEstimationSearchMode", 390, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_OF_GetMotionEstimationSearchMode", 390);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_GetMotionEstimationSearchMode", 390);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_34A0(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_16FEFC(*(a1 + 92), 2, 2);
    if (v10)
    {
      v11 = v10;
      Mutable = CFArrayCreateMutable(a3, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v13 = Mutable;
        v14 = sub_13CB28(v11 + 1, *v11, Mutable);
        if (v14)
        {
          v15 = v14;
          if (sub_160EF0(0x1Eu, 4))
          {
            v16 = sub_160F34(0x1Eu);
            v17 = sub_175AE4();
            v18 = sub_160F68(4);
            if (v16)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to make CFMutableArrayRef %p %lld %p %p %p %p %d\n", v17, 30, v18, "AVE_Prop_OF_GetSupportedMotionSearchModes", 451, "ret == 0", a1, *(a1 + 80), a2, a3, a4, a5, *v11);
              v17 = sub_175AE4();
              v18 = sub_160F68(4);
              v42 = *v11;
              v41 = *(a1 + 80);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make CFMutableArrayRef %p %lld %p %p %p %p %d", v17, 30, v18, "AVE_Prop_OF_GetSupportedMotionSearchModes", 451, "ret == 0", a1);
          }
        }

        else
        {
          *a5 = v13;
          if (sub_160EF0(0x1Eu, 7))
          {
            v31 = sub_160F34(0x1Eu);
            v32 = sub_175AE4();
            v33 = sub_160F68(7);
            v34 = *v11;
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v32, 30, v33, a1, *(a1 + 80), *a2, *v11, v13);
              v32 = sub_175AE4();
              sub_160F68(7);
              v35 = *(a1 + 80);
              v39 = *v11;
              v38 = *a2;
            }

            else
            {
              v40 = *v11;
            }

            syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v32, 30);
          }

          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create CFMutableArrayRef %p %lld %p %p %p %p\n", v28, 30, v29, "AVE_Prop_OF_GetSupportedMotionSearchModes", 446, "pArray != __null", a1, *(a1 + 80), a2, a3, a4, a5);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            v30 = *(a1 + 80);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFMutableArrayRef %p %lld %p %p %p %p", v28, 30, v29, "AVE_Prop_OF_GetSupportedMotionSearchModes", 446, "pArray != __null");
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get search range %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_OF_GetSupportedMotionSearchModes", 441, "pSR != __null", a1, *(a1 + 80), a2, a3, a4, a5, *(a1 + 92));
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v26 = *(a1 + 80);
          v43 = *(a1 + 92);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get search range %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_OF_GetSupportedMotionSearchModes", 441, "pSR != __null", a1);
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_OF_GetSupportedMotionSearchModes", 433, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v22, 30, v37, "AVE_Prop_OF_GetSupportedMotionSearchModes", 433);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_OF_GetSupportedMotionSearchModes", 433);
      }
    }

    return 4294966295;
  }

  return v15;
}

uint64_t sub_39FC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 11720) = Value != 0;
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v11 = Value != 0;
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(6);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v13, 30, v14, a1, *(a1 + 80), *a2, v11);
          v13 = sub_175AE4();
          sub_160F68(6);
          v16 = *(a1 + 80);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v13);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v24 = *(a1 + 80);
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_OF_SetAttachCost", 489, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v26 = *(a1 + 80);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_OF_SetAttachCost", 489, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_SetAttachCost", 480, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v20, 30, v27, "AVE_Prop_OF_SetAttachCost");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_SetAttachCost");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3D40(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11720);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 11720))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld Get %s: %d\n", v14, 30, v15, a1, *(a1 + 80), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 80);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_OF_GetAttachCost", 524, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_OF_GetAttachCost", 524);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_OF_GetAttachCost", 524);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3F64(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr >= 5)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | Incorrect LRME RC pass number (%d), %p %lld %p %p %p\n", v26, 30, v27, "AVE_Prop_OF_SetLRMERCPassNum", 575, "iLRMERCPassNum >= 0 && iLRMERCPassNum <= 4", valuePtr, a1, *(a1 + 80), a2, a3, a4);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 80);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Incorrect LRME RC pass number (%d), %p %lld %p %p %p", v26, 30, v27, "AVE_Prop_OF_SetLRMERCPassNum", 575, "iLRMERCPassNum >= 0 && iLRMERCPassNum <= 4");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 10483) = valuePtr;
        result = sub_160EF0(0x1Eu, 6);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(6);
          v13 = *a2;
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v11, 30, v12, a1, *(a1 + 80), *a2, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(6);
            v14 = *(a1 + 80);
          }

          v30 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v11);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(a1 + 80);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_OF_SetLRMERCPassNum", 566, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 80);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_OF_SetLRMERCPassNum", 566, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_OF_SetLRMERCPassNum", 557, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_OF_SetLRMERCPassNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_OF_SetLRMERCPassNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_43B4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10483);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v14, 30, v15, a1, *(a1 + 80), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 80);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_OF_GetLRMERCPassNum", 619, "pNum != __null", a1, *(a1 + 80), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 80);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_OF_GetLRMERCPassNum", 619, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_GetLRMERCPassNum", 608, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_OF_GetLRMERCPassNum", 608);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_GetLRMERCPassNum", 608);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_46E8(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = sub_14CE6C(a4, (a1 + 100), 512);
      sub_172100((a1 + 100), 512, "%s", v10, v11, v12, v13, v14, v9);
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v16 = sub_160F34(0x1Eu);
        v17 = sub_175AE4();
        v18 = sub_160F68(6);
        v19 = *a2;
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: %s\n", v17, 30, v18, a1, *(a1 + 80), *a2, (a1 + 100));
          v17 = sub_175AE4();
          sub_160F68(6);
          v20 = *(a1 + 80);
        }

        v32 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: %s", v17);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 80);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_OF_SetSessionName", 657, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          v30 = *(a1 + 80);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_OF_SetSessionName", 657, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_OF_SetSessionName", 648, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v24, 30, v31, "AVE_Prop_OF_SetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_OF_SetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_4A34(uint64_t a1, const char **a2, CFAllocatorRef alloc, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, (a1 + 100), 0);
    if (v10)
    {
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %s\n", v13, 30, v14, a1, *(a1 + 80), *a2, (a1 + 100));
          v13 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 80);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %s", v13);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_OF_GetSessionName", 699, "pStr != __null", a1, alloc, a4, a5, (a1 + 100));
          v24 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_OF_GetSessionName", 699);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_OF_GetSessionName", 699);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_OF_GetSessionName", 691, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v20, 30, v25, "AVE_Prop_OF_GetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_OF_GetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_4D2C(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v9 = sub_160F34(0x1Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v10, 30, v11, "AVE_Prop_OF_MakeDict", 746, "AVE_DevID_None < eDevID && eDevID< AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v10, 30, v11);
      }
    }

    return 4294966295;
  }

  else
  {
    v13 = sub_84FBC(&off_1FCFC8, 10, a1, a2, a3, a4);
    v14 = v13;
    if (v13 && sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_OF_MakeDict", 753, "ret == 0", v7, v6, a3, a4, v14);
        v18 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_OF_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_OF_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t sub_4F8C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v6 = sub_85624(&off_1FCFC8, 10, *(a1 + 92), 256, a1, *(a1 + 80), a2, a3);
  if (v6 && sub_160EF0(0x1Eu, 4))
  {
    v7 = sub_160F34(0x1Eu);
    v8 = sub_175AE4();
    v9 = sub_160F68(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld 0x%x %d %p %p %d\n", v8, 30, v9, "AVE_Prop_OF_SetProperty", 778, "ret == 0", a1, *(a1 + 80), 256, *(a1 + 92), a2, a3, v6);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      v10 = *(a1 + 80);
      v12 = *(a1 + 92);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld 0x%x %d %p %p %d", v8, 30, v9, "AVE_Prop_OF_SetProperty", 778, "ret == 0");
  }

  return v6;
}

uint64_t sub_5114(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v8 = sub_85B98(&off_1FCFC8, 10, *(a1 + 92), 256, a1, *(a1 + 80), a2, a3, a4);
  if (v8 && sub_160EF0(0x1Eu, 4))
  {
    v9 = sub_160F34(0x1Eu);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld 0x%x %d %p %p %p %d\n", v10, 30, v11, "AVE_Prop_OF_GetProperty", 805, "ret == 0", a1, *(a1 + 80), 256, *(a1 + 92), a2, a3, a4, v8);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      v12 = *(a1 + 80);
      v14 = *(a1 + 92);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld 0x%x %d %p %p %p %d", v10, 30, v11, "AVE_Prop_OF_GetProperty", 805, "ret == 0", a1);
  }

  return v8;
}

uint64_t sub_52B0(int a1, int a2, int *a3)
{
  if (a3)
  {
    v5 = a2 * a1;
    if (a2 * a1 >= 1)
    {
      v6 = a2 * a1;
    }

    else
    {
      v6 = 2073600;
    }

    if (v5 < 0)
    {
      v12 = 0;
      v11 = 0;
      v8 = 0;
      LODWORD(v9) = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = &dword_1831A0;
      while (1)
      {
        v11 = v7;
        v12 = *(v10 - 1);
        if (v5 == v7)
        {
          v8 = *(v10 - 1);
        }

        if (v9 == 6)
        {
          break;
        }

        v13 = *v10;
        v10 += 2;
        v7 = v13;
        ++v9;
        if (v5 < v13)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v9) = 7;
    }

LABEL_18:
    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      if (v9 >= 6)
      {
        LODWORD(v9) = 6;
      }

      if (!v8)
      {
        v8 = dword_183198[2 * v9 + 1];
      }

      v17 = __OFSUB__(v8, v12);
      v18 = v8 - v12;
      if (!((v18 < 0) ^ v17 | (v18 == 0)))
      {
        v12 = ((v6 - v11) * v18 / (dword_183198[2 * v9] - v11) + v12);
      }
    }

    result = 0;
    *a3 = v12;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v15, 30, v16, "AVE_Enc_Preset_Find_Bitrate", 85, "pBitrate != __null", a1, a2, 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v15, 30);
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_54B8(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int *a9, __CFDictionary *a10)
{
  if (a9)
  {
    v15 = a6 < 1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && a1 != 0 && a5 != 0 && a10 != 0)
  {
    if (*a9 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = a8;
    for (i = (a9 + 12); ; i += 4)
    {
      v23 = *(i - 2);
      if (!sub_85308(a5, a6, a3, a7 | 0x30000u, a1, a2, v23))
      {
        v33 = sub_14CE6C(v23, 0, 0);
        if (sub_160EF0(0x1Eu, 5))
        {
          v37 = sub_160F34(0x1Eu);
          v38 = sub_175AE4();
          v34 = sub_160F68(5);
          if (!v33)
          {
            v33 = &unk_1A7265;
          }

          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d\n", v38, 30, v34, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, v33, v20);
            v39 = sub_175AE4();
            v36 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", v39, 30, v36, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", v38, 30, v34, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }
        }

        return 4294966288;
      }

      v24 = *(i - 2);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          sub_14B618(v23, *i != 0, a10);
          goto LABEL_30;
        }

        if (v24 == 2)
        {
          v27 = *i;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            sub_14B76C(v23, a10, *i);
            break;
          case 5:
            v27 = *i * v21;
LABEL_27:
            v26 = v27;
            v25 = v23;
LABEL_28:
            sub_14B9CC(v25, v26, a10);
            break;
          case 4:
            v25 = v23;
            v26 = a8;
            goto LABEL_28;
        }
      }

LABEL_30:
      if (++v20 >= *a9)
      {
        return 0;
      }
    }
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v29 = sub_160F34(0x1Eu);
    v30 = sub_175AE4();
    v31 = sub_160F68(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p\n", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v32 = sub_175AE4();
      v35 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v32, 30, v35, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }
  }

  return 4294966295;
}

uint64_t sub_58FC(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int a9, void *a10)
{
  v14 = a1;
  v15 = a10;
  v71[0] = 0;
  if (a6 >= 1 && a1 && a5 && a10)
  {
    v16 = sub_52B0(a8, a9, v71);
    v66 = a2;
    if (v16)
    {
      v17 = v16;
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d\n", v19, 30, v20, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3, a4, a5, a6, a7, a8, a9, a10, v71[0], v17);
          v21 = sub_175AE4();
          v57 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", v21, 30, v57, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", v19, 30, v20, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }
      }
    }

    else
    {
      v26 = 0;
      v67 = 0;
      v27 = &dword_1FD248;
      v64 = a4;
      while (1)
      {
        Mutable = CFDictionaryCreateMutable(a4, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          break;
        }

        v29 = Mutable;
        v30 = *v27;
        if (*v27 >= 11)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v48 = sub_160F34(0x1Eu);
            v49 = sub_175AE4();
            v50 = sub_160F68(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d\n", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26, v30);
              v51 = sub_175AE4();
              v60 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v51, 30, v60, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }
          }

          CFRelease(v29);
          return 4294966295;
        }

        v31 = *(v27 + 2);
        if (sub_54B8(v14, a2, a3, a4, a5, a6, a7, v71[0], v27, Mutable))
        {
          ++v67;
          if (sub_160EF0(0x1Eu, 5))
          {
            v32 = v14;
            v33 = sub_160F34(0x1Eu);
            v65 = sub_175AE4();
            v34 = sub_160F68(5);
            v35 = *(v27 + 1);
            if (v33)
            {
              v36 = v15;
              v62 = v15;
              a2 = v66;
              v37 = v32;
              printf("%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s\n", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, v64, a5, a6, a7, v71[0], v62, v29, v26, v31, v35);
              v38 = sub_175AE4();
              v39 = sub_160F68(5);
              v63 = v35;
              v14 = v37;
              v15 = v36;
              a4 = v64;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v38, 30, v39, "AVE_Enc_CreatePresetDict", 291, v14, v66, a3, v64, a5, a6, a7, v71[0], v15, v29, v26, v31, v63);
            }

            else
            {
              a2 = v66;
              v14 = v32;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, a4, a5, a6, a7, v71[0], v15, v29, v26, v31, *(v27 + 1));
            }
          }
        }

        else
        {
          CFDictionarySetValue(v15, v31, v29);
        }

        CFRelease(v29);
        ++v26;
        v27 += 86;
        if (v26 == 3)
        {
          if (v67 >= 3)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v52 = sub_160F34(0x1Eu);
              v53 = sub_175AE4();
              v54 = sub_160F68(4);
              if (v52)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d\n", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v67, 3, 0);
                v55 = sub_175AE4();
                v61 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v55, 30, v61, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }
            }

            return 4294966296;
          }

          else
          {
            if (sub_160EF0(0x1Eu, 7))
            {
              v40 = sub_160F34(0x1Eu);
              v41 = sub_175AE4();
              v42 = sub_160F68(7);
              if (v40)
              {
                printf("%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d\n", v41, 30, v42, v14, v66, v15, 3, v67);
                v43 = sub_175AE4();
                sub_160F68(7);
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v43);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v41);
              }
            }

            return 0;
          }
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v44 = sub_160F34(0x1Eu);
        v45 = sub_175AE4();
        v46 = sub_160F68(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d\n", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26);
          v47 = sub_175AE4();
          v59 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v47, 30, v59, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p\n", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v25 = sub_175AE4();
        v58 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v25, 30, v58, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }
    }

    return 4294966295;
  }

  return v17;
}

uint64_t sub_6390(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 2) >= 7)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | Out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance", 55, "iMaximumReferenceFrameDistance >= 2 && iMaximumReferenceFrameDistance <= 8", a1, *(a1 + 544), a2, a3, a4, valuePtr, 2, 8);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 544);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance", 55, "iMaximumReferenceFrameDistance >= 2 && iMaximumReferenceFrameDistance <= 8", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 12016) = valuePtr;
        *(a1 + 648) = v9;
        result = sub_160EF0(0x1Eu, 6);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(6);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v12, 30, v13, a1, *(a1 + 544), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(6);
            v15 = *(a1 + 544);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 544);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance", 42, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 544);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance", 42, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance", 32, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_GGM_SetMaximumReferenceFrameDistance");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_6800(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 12016);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v14, 30, v15, a1, *(a1 + 544), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 544);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_GGM_GetMaximumReferenceFrameDistance", 101, "pNum != __null", a1, *(a1 + 544), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_GGM_GetMaximumReferenceFrameDistance", 101, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_GGM_GetMaximumReferenceFrameDistance", 90, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_GGM_GetMaximumReferenceFrameDistance", 90);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_GGM_GetMaximumReferenceFrameDistance", 90);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_6B30(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 732) = Value;
      *(a1 + 656) = Value;
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(6);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v12, 30, v13, a1, *(a1 + 544), *a2, Value);
          v12 = sub_175AE4();
          sub_160F68(6);
          v15 = *(a1 + 544);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 544);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_GGM_SetRealTime", 143, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 544);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_GGM_SetRealTime", 143, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_GGM_SetRealTime", 131, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_GGM_SetRealTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_GGM_SetRealTime");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_6E64(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = &kCFBooleanTrue;
    v11 = *(a1 + 732);
    if (!v11)
    {
      v10 = &kCFBooleanFalse;
    }

    v12 = *v10;
    if (v11 < 0)
    {
      v12 = 0;
    }

    *a5 = v12;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld Get %s: %d\n", v15, 30, v16, a1, *(a1 + 544), *a2, v11);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 544);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_GGM_GetRealTime", 179, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_GGM_GetRealTime", 179);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_GGM_GetRealTime", 179);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_7088(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -101;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 100) >= 0x12D)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | Out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_GGM_SetPriority", 240, "iPriority >= -100 && iPriority <= 200", a1, *(a1 + 544), a2, a3, a4, valuePtr, -100, 200);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 544);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_GGM_SetPriority", 240, "iPriority >= -100 && iPriority <= 200", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 736) = valuePtr;
        *(a1 + 652) = v9;
        result = sub_160EF0(0x1Eu, 6);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(6);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld Set %s: %d\n", v12, 30, v13, a1, *(a1 + 544), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(6);
            v15 = *(a1 + 544);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Set %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 544);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_GGM_SetPriority", 230, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 544);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_GGM_SetPriority", 230, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_GGM_SetPriority", 220, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_GGM_SetPriority");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_GGM_SetPriority");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_74F8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 736);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %d %p\n", v14, 30, v15, a1, *(a1 + 544), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 544);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_GGM_GetPriority", 284, "pNum != __null", a1, *(a1 + 544), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_GGM_GetPriority", 284, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_GGM_GetPriority", 274, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_GGM_GetPriority", 274);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_GGM_GetPriority", 274);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_7828(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      a1[93] = valuePtr;
      a1[84] = v9;
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(6);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: 0x%llx\n", v12, 30, v13, a1, a1[68], *a2, valuePtr);
          v12 = sub_175AE4();
          sub_160F68(6);
          v15 = a1[68];
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: 0x%llx", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = a1[68];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_GGM_SetDebugFeature", 324, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = a1[68];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_GGM_SetDebugFeature", 324, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_GGM_SetDebugFeature", 314, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_GGM_SetDebugFeature");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_GGM_SetDebugFeature");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_7B70(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[93];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: 0x%llx %p\n", v14, 30, v15, a1, a1[68], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = a1[68];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld Get %s: 0x%llx %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_GGM_GetDebugFeature", 371, "pNum != __null", a1, a1[68], a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = a1[68];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_GGM_GetDebugFeature", 371, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_GGM_GetDebugFeature", 361, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_GGM_GetDebugFeature", 361);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_GGM_GetDebugFeature", 361);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_7EA0(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = sub_14CE6C(a4, (a1 + 24), 512);
      sub_172100((a1 + 24), 512, "%s", v10, v11, v12, v13, v14, v9);
      result = sub_160EF0(0x1Eu, 6);
      if (result)
      {
        v16 = sub_160F34(0x1Eu);
        v17 = sub_175AE4();
        v18 = sub_160F68(6);
        v19 = *a2;
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld Set %s: %s\n", v17, 30, v18, a1, *(a1 + 544), *a2, (a1 + 24));
          v17 = sub_175AE4();
          sub_160F68(6);
          v20 = *(a1 + 544);
        }

        v32 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Set %s: %s", v17);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 544);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_GGM_SetSessionName", 409, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          v30 = *(a1 + 544);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_GGM_SetSessionName", 409, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_GGM_SetSessionName", 400, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v24, 30, v31, "AVE_Prop_GGM_SetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_GGM_SetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_81EC(uint64_t a1, const char **a2, CFAllocatorRef alloc, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, (a1 + 24), 0);
    if (v10)
    {
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld Get %s: %s\n", v13, 30, v14, a1, *(a1 + 544), *a2, (a1 + 24));
          v13 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 544);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld Get %s: %s", v13);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_GGM_GetSessionName", 451, "pStr != __null", a1, alloc, a4, a5, (a1 + 24));
          v24 = sub_175AE4();
          v26 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_GGM_GetSessionName", 451);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_GGM_GetSessionName", 451);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_GGM_GetSessionName", 443, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v20, 30, v25, "AVE_Prop_GGM_GetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_GGM_GetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_84E4(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFDictionary **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v12)
      {
        v13 = v12;
        sub_14B9CC(kCVPixelBufferWidthKey, 0x2000, v12);
        sub_14B9CC(kCVPixelBufferHeightKey, 5, v13);
        sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, 1278226488, v13);
        CFDictionarySetValue(v13, kCVPixelBufferIOSurfacePropertiesKey, v11);
        *a5 = v13;
        if (sub_160EF0(0x1Eu, 7))
        {
          v14 = sub_160F34(0x1Eu);
          v15 = sub_175AE4();
          v16 = sub_160F68(7);
          v17 = *a2;
          if (v14)
          {
            printf("%lld %d AVE %s: %p %lld Get %s: %p\n", v15, 30, v16, a1, a1[68], *a2, v13);
            v15 = sub_175AE4();
            sub_160F68(7);
            v18 = a1[68];
          }

          v33 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld Get %s: %p", v15);
        }

        v27 = 0;
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create dictionary %p %lld %p %p %p %p\n", v29, 30, v30, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 500, "pDict != __null", a1, a1[68], a2, allocator, a4, a5);
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v34 = a1[68];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create dictionary %p %lld %p %p %p %p", v29, 30, v30, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 500, "pDict != __null");
        }

        v27 = 4294966293;
      }

      CFRelease(v11);
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create dictionary %p %lld %p %p %p %p\n", v24, 30, v25, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 495, "pIOSurfaceProperties != __null", a1, a1[68], a2, allocator, a4, a5);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v26 = a1[68];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create dictionary %p %lld %p %p %p %p", v24, 30, v25, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 495, "pIOSurfaceProperties != __null");
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 484, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v22, 30, v32, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 484);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_GGM_GetBorderPixelBufferAttributes", 484);
      }
    }

    return 4294966295;
  }

  return v27;
}

uint64_t sub_898C(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v9 = sub_160F34(0x1Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v10, 30, v11, "AVE_Prop_GGM_MakeDict", 558, "AVE_DevID_None < eDevID && eDevID< AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v10, 30, v11);
      }
    }

    return 4294966295;
  }

  else
  {
    v13 = sub_84FBC(&off_1FD650, 8, a1, a2, a3, a4);
    v14 = v13;
    if (v13 && sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_GGM_MakeDict", 565, "ret == 0", v7, v6, a3, a4, v14);
        v18 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_GGM_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_GGM_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t sub_8BEC(uint64_t a1, const __CFString *a2, const void *a3)
{
  v6 = sub_85624(&off_1FD650, 8, *(a1 + 552), 256, a1, *(a1 + 544), a2, a3);
  if (v6 && sub_160EF0(0x1Eu, 4))
  {
    v7 = sub_160F34(0x1Eu);
    v8 = sub_175AE4();
    v9 = sub_160F68(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld 0x%x %d %p %p %d\n", v8, 30, v9, "AVE_Prop_GGM_SetProperty", 590, "ret == 0", a1, *(a1 + 544), 256, *(a1 + 552), a2, a3, v6);
      v8 = sub_175AE4();
      v9 = sub_160F68(4);
      v10 = *(a1 + 544);
      v12 = *(a1 + 552);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld 0x%x %d %p %p %d", v8, 30, v9, "AVE_Prop_GGM_SetProperty", 590, "ret == 0");
  }

  return v6;
}

uint64_t sub_8D74(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v8 = sub_85B98(&off_1FD650, 8, *(a1 + 552), 256, a1, *(a1 + 544), a2, a3, a4);
  if (v8 && sub_160EF0(0x1Eu, 4))
  {
    v9 = sub_160F34(0x1Eu);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld 0x%x %d %p %p %p %d\n", v10, 30, v11, "AVE_Prop_GGM_GetProperty", 617, "ret == 0", a1, *(a1 + 544), 256, *(a1 + 552), a2, a3, a4, v8);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      v12 = *(a1 + 544);
      v14 = *(a1 + 552);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld 0x%x %d %p %p %p %d", v10, 30, v11, "AVE_Prop_GGM_GetProperty", 617, "ret == 0", a1);
  }

  return v8;
}

uint64_t sub_8F10(const void *a1, unint64_t a2, pthread_mutex_t *a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v39 = 0;
  v7 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v8 = sub_160F34(0xBu);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %dx%d\n", v9, 11, v10, "AVE_Plugin_GGM_StartSession", a1, a3, v4, v6);
      v9 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %dx%d", v9);
  }

  if (a1 && a3 && v4 >= 1 && v6 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v12 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v13 = v12[68];
      kdebug_trace();
      v12[1] = a3;
      v39 = __PAIR64__(v6, v4);
      v14 = sub_EBEC(v12, &v39);
      if (v14)
      {
        if (sub_160EF0(0xBu, 4))
        {
          v15 = sub_160F34(0xBu);
          v37 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to start GGM session %p %p %dx%d %p %lld %d\n", v37, 11, v16, "AVE_Plugin_GGM_StartSession", 264, "ret == 0", a1, a3, v4, v6, v12, v13, v14);
            v38 = sub_175AE4();
            v34 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to start GGM session %p %p %dx%d %p %lld %d", v38, 11, v34, "AVE_Plugin_GGM_StartSession", 264, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to start GGM session %p %p %dx%d %p %lld %d", v37, 11, v16, "AVE_Plugin_GGM_StartSession", 264, "ret == 0");
          }
        }

        v12[1] = 0;
      }

      kdebug_trace();
      sub_13DC4C(*v12);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %dx%d\n", v22, 11, v23, "AVE_Plugin_GGM_StartSession", 248, "pPI != __null", a1, a3, v4, v6);
          v24 = sub_175AE4();
          v36 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %dx%d", v24, 11, v36);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %dx%d", v22, 11, v23);
        }
      }

      v12 = 0;
      v14 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %dx%d %d\n", v18, 11, v19, "AVE_Plugin_GGM_StartSession", 243, "processor != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a3, v4, v6, 0);
        v20 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %dx%d %d", v20, 11, v35, "AVE_Plugin_GGM_StartSession");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %dx%d %d", v18, 11, v19, "AVE_Plugin_GGM_StartSession");
      }
    }

    v12 = 0;
    v14 = 4294966295;
  }

  if ((sub_175AE4() - v7) >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 6;
  }

  v26 = sub_175994(v14);
  if (v14)
  {
    v27 = 4;
  }

  else
  {
    v27 = v25;
  }

  if (sub_160EF0(0xBu, v27))
  {
    v28 = sub_160F34(0xBu);
    v29 = sub_175AE4();
    v30 = sub_160F68(v27);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %dx%d %p %d %d\n", v29, 11, v30, "AVE_Plugin_GGM_StartSession", a1, a3, v4, v6, v12, v14, v26);
      v31 = sub_175AE4();
      v32 = sub_160F68(v27);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %dx%d %p %d %d", v31, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %dx%d %p %d %d", v29, 11, v30);
    }
  }

  return v26;
}

uint64_t sub_9514(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 11, v5, "AVE_Plugin_GGM_CompleteFrames", a1);
      v6 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 11, v30, "AVE_Plugin_GGM_CompleteFrames", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 11, v5, "AVE_Plugin_GGM_CompleteFrames", a1);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v8 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v9 = v8[68];
      kdebug_trace();
      v10 = sub_10AD0(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to complete GGM session %p %p %lld %d\n", v12, 11, v13, "AVE_Plugin_GGM_CompleteFrames", 384, "ret == 0", a1, v8, v9, v10);
          v14 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to complete GGM session %p %p %lld %d", v14, 11, v31, "AVE_Plugin_GGM_CompleteFrames");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to complete GGM session %p %p %lld %d", v12, 11, v13, "AVE_Plugin_GGM_CompleteFrames");
        }
      }

      kdebug_trace();
      sub_13DC4C(*v8);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p\n", v19, 11, v20, "AVE_Plugin_GGM_CompleteFrames", 375, "pPI != __null", a1);
          v19 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p", v19);
      }

      v8 = 0;
      v9 = 0;
      v10 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d\n", v16, 11, v17, "AVE_Plugin_GGM_CompleteFrames", 371, "processor != __null", 0, 0);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d", v16, 11);
    }

    v8 = 0;
    v9 = 0;
    v10 = 4294966295;
  }

  v21 = sub_175AE4() - v2;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = sub_175994(v10);
  if (v10)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_GGM_CompleteFrames", a1, v8, v9, v21, v10, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_9A0C(const void *a1, void *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 11, v7, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", a1, a2);
      v8 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 11, v34, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 11, v7, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v11 = *(v10 + 544);
      kdebug_trace();
      v12 = sub_11368(v10, a2);
      if (v12 && sub_160EF0(0xBu, 4))
      {
        v13 = sub_160F34(0xBu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM property dictionary %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", 442, "ret == 0", a1, a2, v11, v12);
          v16 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM property dictionary %p %p %lld %d", v16, 11, v35, "AVE_Plugin_GGM_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM property dictionary %p %p %lld %d", v14, 11, v15, "AVE_Plugin_GGM_CopySupportedPropertyDictionary");
        }
      }

      kdebug_trace();
      sub_13DC4C(*v10);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v21 = sub_160F34(0xBu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %d\n", v22, 11, v23, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", 431, "pPI != __null", a1, a2, 0);
          v24 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %d", v24, 11, v37);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %d", v22, 11, v23);
        }
      }

      v11 = 0;
      v12 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v17 = sub_160F34(0xBu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v18, 11, v19, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", 424, "processor != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0);
        v20 = sub_175AE4();
        v36 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v20, 11, v36);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v18, 11, v19);
      }
    }

    v11 = 0;
    v12 = 4294966295;
  }

  v25 = sub_175AE4() - v4;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_175994(v12);
  if (v12)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_160EF0(0xBu, v28))
  {
    v29 = sub_160F34(0xBu);
    v30 = sub_175AE4();
    v31 = sub_160F68(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v30, 11, v31, "AVE_Plugin_GGM_CopySupportedPropertyDictionary", a1, a2, v11, v25, v12, v27);
      v32 = sub_175AE4();
      v38 = sub_160F68(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v32, 11, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t sub_9F20(const void *a1, const __CFDictionary *a2)
{
  v4 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v5 = sub_160F34(0xBu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 11, v7, "AVE_Plugin_GGM_SetProperties", a1, a2);
      v8 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 11, v30, "AVE_Plugin_GGM_SetProperties", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 11, v7, "AVE_Plugin_GGM_SetProperties", a1, a2);
    }
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v11 = v10[68];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, sub_C75C, v10);
      kdebug_trace();
      sub_13DC4C(*v10);
      v12 = 0;
      v13 = 1;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %d\n", v19, 11, v20, "AVE_Plugin_GGM_SetProperties", 488, "pPI != __null", a1, a2, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %d", v21, 11, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %d", v19, 11, v20);
        }
      }

      v13 = 0;
      v11 = 0;
      v12 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v15, 11, v16, "AVE_Plugin_GGM_SetProperties", 483, "processor != __null && propertyDictionary != __null", a1, a2, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v17, 11, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v15, 11, v16);
      }
    }

    v13 = 0;
    v11 = 0;
    v12 = 4294966295;
  }

  v22 = sub_175AE4() - v4;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 6;
  }

  v24 = sub_175994(v12);
  if (!v13)
  {
    v23 = 4;
  }

  if (sub_160EF0(0xBu, v23))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_GGM_SetProperties", a1, a2, v11, v22, v12, v24);
      v28 = sub_175AE4();
      v33 = sub_160F68(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v24;
}

uint64_t sub_A35C(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7)
{
  v13 = sub_175AE4();
  if (sub_160EF0(0xBu, 7))
  {
    v14 = sub_160F34(0xBu);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p 0x%x %p\n", v15, 11, v16, "AVE_Plugin_GGM_ProcessFrame2", a1, a2, a3, a4, a5, a6, a7);
      v17 = sub_175AE4();
      v44 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p 0x%x %p", v17, 11, v44, "AVE_Plugin_GGM_ProcessFrame2", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p 0x%x %p", v15, 11, v16, "AVE_Plugin_GGM_ProcessFrame2", a1);
    }
  }

  v51 = a2;
  if (a1 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v19 = DerivedStorage;
      v50 = v13;
      sub_13DC18(*DerivedStorage);
      v20 = v19[68];
      v21 = *(v19 + 152);
      v22 = *(v19 + 4);
      kdebug_trace();
      v23 = sub_1171C();
      if (v23 && sub_160EF0(0xBu, 4))
      {
        v24 = sub_160F34(0xBu);
        v48 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to process GGM session %p %p %p %p %p 0x%x %p %p %lld %d\n", v48, 11, v25, "AVE_Plugin_GGM_ProcessFrame2", 335, "ret == 0", a1, v51, a3, a4, a5, a6, a7, v19, v20, v23);
          v49 = sub_175AE4();
          v45 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to process GGM session %p %p %p %p %p 0x%x %p %p %lld %d", v49, 11, v45, "AVE_Plugin_GGM_ProcessFrame2", 335, "ret == 0", a1, v51, a3, a4);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to process GGM session %p %p %p %p %p 0x%x %p %p %lld %d", v48, 11, v25, "AVE_Plugin_GGM_ProcessFrame2", 335, "ret == 0", a1, v51, a3, a4);
        }
      }

      kdebug_trace();
      sub_13DC4C(*v19);
      v13 = v50;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v30 = sub_160F34(0xBu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to GGM CM object storage %p %p %p %p %p 0x%x %p %d\n", v31, 11, v32, "AVE_Plugin_GGM_ProcessFrame2", 322, "pPI != __null", a1, a2, a3, a4, a5, a6, a7, 0);
          v33 = sub_175AE4();
          v47 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to GGM CM object storage %p %p %p %p %p 0x%x %p %d", v33, 11, v47, "AVE_Plugin_GGM_ProcessFrame2", 322, "pPI != __null", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to GGM CM object storage %p %p %p %p %p 0x%x %p %d", v31, 11, v32, "AVE_Plugin_GGM_ProcessFrame2", 322, "pPI != __null", a1, a2);
        }
      }

      v19 = 0;
      v20 = 0;
      v23 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v26 = sub_160F34(0xBu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | %s Wrong parameter %p %p %p %p %p 0x%x %p\n", v27, 11, v28, "AVE_Plugin_GGM_ProcessFrame2", 316, "processor != __null && currentFrame != __null", "AVE_Plugin_GGM_ProcessFrame2", a1, a2, a3, a4, a5, a6, a7);
        v29 = sub_175AE4();
        v46 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | %s Wrong parameter %p %p %p %p %p 0x%x %p", v29, 11, v46, "AVE_Plugin_GGM_ProcessFrame2", 316, "processor != __null && currentFrame != __null", "AVE_Plugin_GGM_ProcessFrame2", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | %s Wrong parameter %p %p %p %p %p 0x%x %p", v27, 11, v28, "AVE_Plugin_GGM_ProcessFrame2", 316, "processor != __null && currentFrame != __null", "AVE_Plugin_GGM_ProcessFrame2", a1);
      }
    }

    v19 = 0;
    v20 = 0;
    v23 = 4294966295;
  }

  v34 = sub_175AE4() - v13;
  if (v34 >= 50000)
  {
    v35 = 5;
  }

  else
  {
    v35 = 7;
  }

  v36 = sub_175994(v23);
  if (v23)
  {
    v37 = 4;
  }

  else
  {
    v37 = v35;
  }

  if (sub_160EF0(0xBu, v37))
  {
    v38 = sub_160F34(0xBu);
    v39 = sub_175AE4();
    v40 = sub_160F68(v37);
    if (v38)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v39, 11, v40, "AVE_Plugin_GGM_ProcessFrame2", a1, v51, v19, v20, v34, v23, v36);
      v41 = sub_175AE4();
      v42 = sub_160F68(v37);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v41, 11, v42, "AVE_Plugin_GGM_ProcessFrame2");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v39, 11, v40, "AVE_Plugin_GGM_ProcessFrame2");
    }
  }

  return v36;
}

uint64_t AVE_Plugin_GGM_CreateInstance(const void *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  memset(v59, 0, sizeof(v59));
  v7 = sub_175AE4();
  sub_160F98();
  sub_151990();
  v8 = sub_1502C8();
  sub_1621A4(v8 + 552);
  if (sub_160EF0(0xBu, 0))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(0);
    if (v9)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v10, 11, v11, "905.5.3", "prod", "Oct 23 2025", "06:45:22");
      v10 = sub_175AE4();
      sub_160F68(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v10);
  }

  v12 = sub_160D68(v59, 128);
  if (v12 >= 1 && sub_160EF0(0xBu, 0))
  {
    v13 = sub_160F34(0xBu);
    v14 = sub_175AE4();
    v15 = sub_160F68(0);
    if (v13)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v14, 11, v15, v59);
      v16 = sub_175AE4();
      v52 = sub_160F68(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v16, 11, v52, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v14, 11, v15, v59);
    }
  }

  if (sub_160EF0(0xBu, 6))
  {
    v17 = sub_160F34(0xBu);
    v18 = sub_175AE4();
    v19 = sub_160F68(6);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d\n", v18, 11, v19, "AVE_Plugin_GGM_CreateInstance", a1, a2, a4, a3);
      v18 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d", v18, 11);
  }

  if (a4)
  {
    kdebug_trace();
    *a4 = 0;
    VTDeghostingProcessorGetClassID();
    if (CMDerivedObjectCreate())
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create GGM CM object %p %p %d %d\n", v21, 11, v22, "AVE_Plugin_GGM_CreateInstance", 607, "res == noErr", a1, a4, a3, v12);
          v23 = sub_175AE4();
          v53 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create GGM CM object %p %p %d %d", v23, 11, v53);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create GGM CM object %p %p %d %d", v21, 11, v22);
        }
      }

      v31 = 4294966292;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v29 = DerivedStorage;
        bzero(DerivedStorage, 0x4D88uLL);
        v30 = sub_13DB68();
        *v29 = v30;
        if (v30)
        {
          v31 = sub_CBF8(v29, a1, a2, a3);
          if (!v31)
          {
            v36 = v29[68];
            *a4 = 0;
            goto LABEL_32;
          }

          if (sub_160EF0(0xBu, 4))
          {
            v32 = sub_160F34(0xBu);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            if (v32)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to open GGM session %p %p %p %p %d %d\n", v33, 11, v34, "AVE_Plugin_GGM_CreateInstance", 623, "ret == 0", a1, a4, 0, v29, a3, v31);
              v35 = sub_175AE4();
              v55 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to open GGM session %p %p %p %p %d %d", v35, 11, v55, "AVE_Plugin_GGM_CreateInstance", 623);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to open GGM session %p %p %p %p %d %d", v33, 11, v34, "AVE_Plugin_GGM_CreateInstance", 623);
            }
          }
        }

        else
        {
          if (sub_160EF0(0xBu, 4))
          {
            v48 = sub_160F34(0xBu);
            v49 = sub_175AE4();
            v50 = sub_160F68(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create plugin mutex %p %p %p %p %d %d\n", v49, 11, v50, "AVE_Plugin_GGM_CreateInstance", 618, "pPI->pPIMutex != __null", a1, a4, 0, v29, a3, v12);
              v51 = sub_175AE4();
              v57 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create plugin mutex %p %p %p %p %d %d", v51, 11, v57, "AVE_Plugin_GGM_CreateInstance", 618);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create plugin mutex %p %p %p %p %d %d", v49, 11, v50, "AVE_Plugin_GGM_CreateInstance", 618);
            }
          }

          v31 = 4294966293;
        }

        if (*v29)
        {
          sub_13DBD0(*v29);
          *v29 = 0;
        }
      }

      else
      {
        if (sub_160EF0(0xBu, 4))
        {
          v45 = sub_160F34(0xBu);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %d %d\n", v46, 11, v47, "AVE_Plugin_GGM_CreateInstance", 611, "pPI != __null", 0, a3, v12);
            v46 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %d %d", v46, 11);
        }

        v31 = 4294966296;
      }
    }

    sub_151B10();
    sub_132F88();
    v36 = 0;
    v29 = 0;
LABEL_32:
    kdebug_trace();
    goto LABEL_35;
  }

  if (sub_160EF0(0xBu, 4))
  {
    v24 = sub_160F34(0xBu);
    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d, %d\n", v25, 11, v26, "AVE_Plugin_GGM_CreateInstance", 595, "instanceOut != __null", a1, 0, a3, v12);
      v27 = sub_175AE4();
      v54 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d, %d", v27, 11, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d, %d", v25, 11, v26);
    }
  }

  v29 = 0;
  v36 = 0;
  v31 = 4294966295;
LABEL_35:
  if ((sub_175AE4() - v7) >= 50000)
  {
    v37 = 5;
  }

  else
  {
    v37 = 6;
  }

  v38 = sub_175994(v31);
  if (v31)
  {
    v39 = 4;
  }

  else
  {
    v39 = v37;
  }

  if (sub_160EF0(0xBu, v39))
  {
    v40 = sub_160F34(0xBu);
    v41 = sub_175AE4();
    v42 = sub_160F68(v39);
    if (v40)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %d %d %d\n", v41, 11, v42, "AVE_Plugin_GGM_CreateInstance", a1, a4, 0, v29, v36, a3, v31, v38);
      v43 = sub_175AE4();
      v56 = sub_160F68(v39);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %d %d %d", v43, 11, v56, "AVE_Plugin_GGM_CreateInstance", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %d %d %d", v41, 11, v42, "AVE_Plugin_GGM_CreateInstance", a1);
    }
  }

  return v38;
}

uint64_t sub_B440(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 11, v5, "AVE_Plugin_GGM_Invalidate", a1);
      v6 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 11, v30, "AVE_Plugin_GGM_Invalidate", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 11, v5, "AVE_Plugin_GGM_Invalidate", a1);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v8 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v9 = v8[68];
      kdebug_trace();
      v10 = sub_E6F8(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to stop GGM session %p %p %lld %d\n", v12, 11, v13, "AVE_Plugin_GGM_Invalidate", 43, "ret == 0", a1, v8, v9, v10);
          v14 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to stop GGM session %p %p %lld %d", v14, 11, v31, "AVE_Plugin_GGM_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to stop GGM session %p %p %lld %d", v12, 11, v13, "AVE_Plugin_GGM_Invalidate");
        }
      }

      kdebug_trace();
      sub_13DC4C(*v8);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %d\n", v19, 11, v20, "AVE_Plugin_GGM_Invalidate", 34, "pPI != __null", a1, 0);
          v19 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %d", v19, 11);
      }

      v8 = 0;
      v9 = 0;
      v10 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d\n", v16, 11, v17, "AVE_Plugin_GGM_Invalidate", 30, "object != __null", 0, 0);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d", v16, 11);
    }

    v8 = 0;
    v9 = 0;
    v10 = 4294966295;
  }

  v21 = sub_175AE4() - v2;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = sub_175994(v10);
  if (v10)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_GGM_Invalidate", a1, v8, v9, v21, v10, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t sub_B940(const void *a1)
{
  v2 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v3 = sub_160F34(0xBu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 11, v5, "AVE_Plugin_GGM_Finalize", a1);
      v6 = sub_175AE4();
      v30 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 11, v30, "AVE_Plugin_GGM_Finalize", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 11, v5, "AVE_Plugin_GGM_Finalize", a1);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v8 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v9 = v8[68];
      kdebug_trace();
      v10 = sub_DFE0(v8);
      if (v10 && sub_160EF0(0xBu, 4))
      {
        v11 = sub_160F34(0xBu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to close GGM session %p %p %lld %d\n", v12, 11, v13, "AVE_Plugin_GGM_Finalize", 93, "ret == 0", a1, v8, v9, v10);
          v14 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to close GGM session %p %p %lld %d", v14, 11, v31, "AVE_Plugin_GGM_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to close GGM session %p %p %lld %d", v12, 11, v13, "AVE_Plugin_GGM_Finalize");
        }
      }

      kdebug_trace();
      sub_13DC4C(*v8);
      sub_13DBD0(*v8);
      *v8 = 0;
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %d\n", v19, 11, v20, "AVE_Plugin_GGM_Finalize", 83, "pPI != __null", a1, 0);
          v19 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %d", v19, 11);
      }

      v8 = 0;
      v9 = 0;
      v10 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v15 = sub_160F34(0xBu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d\n", v16, 11, v17, "AVE_Plugin_GGM_Finalize", 79, "object != __null", 0, 0);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d", v16, 11);
    }

    v8 = 0;
    v9 = 0;
    v10 = 4294966295;
  }

  v21 = sub_175AE4() - v2;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = sub_175994(v10);
  if (v10)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (sub_160EF0(0xBu, v24))
  {
    v25 = sub_160F34(0xBu);
    v26 = sub_175AE4();
    v27 = sub_160F68(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_GGM_Finalize", a1, v8, v9, v21, v10, v23);
      v28 = sub_175AE4();
      v32 = sub_160F68(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  sub_151B10();

  return sub_132F88();
}

uint64_t sub_BE58(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v9 = sub_160F34(0xBu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v10, 11, v11, "AVE_Plugin_GGM_CopyProperty", a1, a2, a3, a4);
      v10 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v10, 11);
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v13 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v14 = v13[68];
      kdebug_trace();
      v15 = sub_10FBC(v13, a3, a2, a4);
      kdebug_trace();
      sub_13DC4C(*v13);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v20 = sub_160F34(0xBu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %p %p %d\n", v21, 11, v22, "AVE_Plugin_GGM_CopyProperty", 143, "pPI != __null", a1, a2, a3, a4, 0);
          v23 = sub_175AE4();
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %p %p %d", v23, 11, v35, "AVE_Plugin_GGM_CopyProperty", 143);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %p %p %d", v21, 11, v22, "AVE_Plugin_GGM_CopyProperty", 143);
        }
      }

      v13 = 0;
      v14 = 0;
      v15 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v16 = sub_160F34(0xBu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d\n", v17, 11, v18, "AVE_Plugin_GGM_CopyProperty", 138, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0);
        v19 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d", v19, 11, v34, "AVE_Plugin_GGM_CopyProperty", 138);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p %d", v17, 11, v18, "AVE_Plugin_GGM_CopyProperty", 138);
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 4294966295;
  }

  v24 = sub_175AE4() - v8;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 6;
  }

  v26 = sub_175994(v15);
  if (v15)
  {
    v27 = 4;
  }

  else
  {
    v27 = v25;
  }

  if (sub_160EF0(0xBu, v27))
  {
    v28 = a1;
    v29 = a3;
    v30 = sub_160F34(0xBu);
    v37 = sub_175AE4();
    v31 = sub_160F68(v27);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v37, 11, v31, "AVE_Plugin_GGM_CopyProperty", v28, v13, v29, a4, v14, v24, v15, v26);
      v32 = sub_175AE4();
      v36 = sub_160F68(v27);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v36, "AVE_Plugin_GGM_CopyProperty", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v37, 11, v31, "AVE_Plugin_GGM_CopyProperty", v28);
    }
  }

  return v26;
}

uint64_t sub_C300(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_175AE4();
  if (sub_160EF0(0xBu, 6))
  {
    v7 = sub_160F34(0xBu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v8, 11, v9, "AVE_Plugin_GGM_SetProperty", a1, a2, a3);
      v8 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v8);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_13DC18(*DerivedStorage);
      v12 = v11[68];
      kdebug_trace();
      v13 = sub_C870(v11, a2, a3);
      kdebug_trace();
      sub_13DC4C(*v11);
    }

    else
    {
      if (sub_160EF0(0xBu, 4))
      {
        v18 = sub_160F34(0xBu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %p %d\n", v19, 11, v20, "AVE_Plugin_GGM_SetProperty", 194, "pPI != __null", a1, a2, a3, 0);
          v21 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %p %d", v21, 11, v32, "AVE_Plugin_GGM_SetProperty");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get GGM CM object storage %p %p %p %d", v19, 11, v20, "AVE_Plugin_GGM_SetProperty");
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0xBu, 4))
    {
      v14 = sub_160F34(0xBu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d\n", v15, 11, v16, "AVE_Plugin_GGM_SetProperty", 189, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0);
        v17 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d", v17, 11, v31, "AVE_Plugin_GGM_SetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d", v15, 11, v16, "AVE_Plugin_GGM_SetProperty");
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = sub_175AE4() - v6;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 6;
  }

  v24 = sub_175994(v13);
  if (v13)
  {
    v25 = 4;
  }

  else
  {
    v25 = v23;
  }

  if (sub_160EF0(0xBu, v25))
  {
    v26 = sub_160F34(0xBu);
    v27 = sub_175AE4();
    v28 = sub_160F68(v25);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_GGM_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v29 = sub_175AE4();
      v33 = sub_160F68(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v29, 11, v33, "AVE_Plugin_GGM_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v27, 11, v28, "AVE_Plugin_GGM_SetProperty");
    }
  }

  return v13;
}

void sub_C75C(const __CFString *a1, const void *a2, void *a3)
{
  v6 = sub_C870(a3, a1, a2);
  if (v6)
  {
    v7 = v6;
    if (sub_160EF0(0xBu, 4))
    {
      v8 = sub_160F34(0xBu);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s: Failed to set property %p %p %p %d\n", v9, 11, v10, "AVE_Session_GGM_ApplierFunc", a1, a2, a3, v7);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s: Failed to set property %p %p %p %d", v9, 11);
    }
  }
}

uint64_t sub_C870(void *a1, const __CFString *a2, const void *a3)
{
  if (sub_160EF0(0xDu, 7))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 13, v8, "AVE_Session_GGM_SetProperty", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    v9 = sub_8BEC(a1, a2, a3);
    if (v9 && sub_160EF0(0xDu, 4))
    {
      v10 = sub_160F34(0xDu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d\n", v11, 13, v12, "AVE_Session_GGM_SetProperty", 467, "ret == 0", a1, a1[68], a2, a3, v9);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        v13 = a1[68];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to set property %p %lld %p %p %d", v11, 13, v12, "AVE_Session_GGM_SetProperty", 467);
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v14 = sub_160F34(0xDu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p\n", v15, 13, v16, "AVE_Session_GGM_SetProperty", 462, "pINS != __null && pKey != __null", a1, a2, a3);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p", v17, 13, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p", v15, 13, v16);
      }
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v18 = sub_160F34(0xDu);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v19, 13, v20, "AVE_Session_GGM_SetProperty", a1, v9);
      v21 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v24, "AVE_Session_GGM_SetProperty", a1, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v19, 13, v20, "AVE_Session_GGM_SetProperty", a1, v9);
    }
  }

  return v9;
}

uint64_t sub_CBF8(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (sub_160EF0(0xDu, 7))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v9, 13, v10, "AVE_Session_GGM_Open", a1);
      v11 = sub_175AE4();
      v84 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v11, 13, v84, "AVE_Session_GGM_Open", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v9, 13, v10, "AVE_Session_GGM_Open", a1);
    }
  }

  if (a1 && (a4 - 1) < 2)
  {
    if (sub_160EF0(0xDu, 7))
    {
      v12 = sub_160F34(0xDu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %s: %p %p %p %d\n", v13, 13, v14, "AVE_Session_GGM_Open", a1, a2, a3, a4);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s: %p %p %p %d", v13, 13);
    }

    if (*(a1 + 20))
    {
      if (sub_160EF0(0xDu, 4))
      {
        v20 = sub_160F34(0xDu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 20);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong state, skip create driver %p %d %d\n", v21, 13, v22, "AVE_Session_GGM_Open", 114, "pINS->eState == AVE_PI_State_None", a1, *(a1 + 20), a4);
          v21 = sub_175AE4();
          sub_160F68(4);
          v24 = *(a1 + 20);
        }

        else
        {
          v93 = *(a1 + 20);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong state, skip create driver %p %d %d", v21, 13);
      }

      v19 = 4294966285;
      goto LABEL_31;
    }

    *(a1 + 16) = a4;
    v25 = sub_13DB68();
    *(a1 + 624) = v25;
    if (!v25)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v49 = sub_160F34(0xDu);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create request id mutex %p %d\n", v50, 13, v51, "AVE_Session_GGM_Open", 119, "pINS->pSurfaceIDMutex != __null", a1, a4);
          v50 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create request id mutex %p %d", v50, 13);
      }

      v19 = 4294966293;
      goto LABEL_31;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    *(a1 + 616) = Mutable;
    if (!Mutable)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v52 = sub_160F34(0xDu);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create dictionary %p %d\n", v53, 13, v54, "AVE_Session_GGM_Open", 124, "pINS->pSurfaceIDToFrameNumberDict != __null", a1, a4);
          v53 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create dictionary %p %d", v53, 13);
      }

      v19 = 4294966292;
      goto LABEL_31;
    }

    *(a1 + 10812) = 2;
    *(a1 + 536) = 4;
    v27 = (a1 + 568);
    *(a1 + 568) = 0;
    v28 = sub_1289FC(4, 2);
    if (!*(a1 + 568))
    {
      v19 = v28;
      if (sub_160EF0(0xDu, 4))
      {
        v55 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v57 = sub_160F68(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create driver instance %p %d %d\n", v56, 13, v57, "AVE_Session_GGM_Open", 134, "pINS->pDrvInstance != __null", a1, a4, v19);
          v56 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create driver instance %p %d %d", v56, 13);
      }

      if (!v19)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }

    if (sub_160EF0(0xDu, 7))
    {
      v29 = sub_160F34(0xDu);
      v30 = sub_175AE4();
      v31 = sub_160F68(7);
      if (v29)
      {
        printf("%lld %d AVE %s: %s: pDrvInstance = %p\n", v30, 13, v31, "AVE_Session_GGM_Open", *v27);
        v30 = sub_175AE4();
        v31 = sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s: pDrvInstance = %p", v30, 13, v31, "AVE_Session_GGM_Open", *v27);
    }

    *(a1 + 544) = sub_129118(*(a1 + 568));
    v58 = sub_129100(*(a1 + 568));
    *(a1 + 552) = v58;
    v59 = *(sub_16FD90(v58) + 1);
    *(a1 + 556) = v59;
    if (v59 <= 29)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v60 = sub_160F34(0xDu);
        v61 = sub_175AE4();
        v62 = sub_160F68(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | device type %d (< %d) is not supported %p %d\n", v61, 13, v62, "AVE_Session_GGM_Open", 146, "false", *(a1 + 556), 30, a1, a4);
          v61 = sub_175AE4();
          v62 = sub_160F68(4);
          v63 = *(a1 + 556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | device type %d (< %d) is not supported %p %d", v61, 13, v62);
      }

      v19 = 4294966294;
      goto LABEL_31;
    }

    if (sub_160EF0(0xDu, 7))
    {
      v64 = sub_160F34(0xDu);
      v65 = sub_175AE4();
      v66 = sub_160F68(7);
      if (v64)
      {
        printf("%lld %d AVE %s: %s Enter %p\n", v65, 13, v66, "AVE_GGM_SetParamsDefault", a1);
        v67 = sub_175AE4();
        v87 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Enter %p", v67, 13, v87, "AVE_GGM_SetParamsDefault", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Enter %p", v65, 13, v66, "AVE_GGM_SetParamsDefault", a1);
      }
    }

    v68 = sub_1502C8();
    *(a1 + 756) = 15360;
    *(a1 + 10804) = 1;
    *(a1 + 12016) = 8;
    *(a1 + 10596) = 0x100000001;
    *(a1 + 752) = v68[103];
    *(a1 + 10245) = 1;
    *(a1 + 10212) = 257;
    v69 = v68[20];
    if (v69 < 0)
    {
      v69 = -1;
    }

    *(a1 + 732) = v69;
    if (sub_160EF0(0xDu, 7))
    {
      v70 = sub_160F34(0xDu);
      v71 = sub_175AE4();
      v72 = sub_160F68(7);
      if (v70)
      {
        printf("%lld %d AVE %s: %s Exit %p %d\n", v71, 13, v72, "AVE_GGM_SetParamsDefault", a1, 0);
        v73 = sub_175AE4();
        v88 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s Exit %p %d", v73, 13, v88, "AVE_GGM_SetParamsDefault", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s Exit %p %d", v71, 13, v72, "AVE_GGM_SetParamsDefault", a1, 0);
      }
    }

    if (a3)
    {
      CFDictionaryApplyFunction(a3, sub_C75C, a1);
    }

    *(a1 + 560) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v74 = sub_DB1C(a1, a2);
    if (v74)
    {
      v19 = v74;
      if (sub_160EF0(0xDu, 4))
      {
        v75 = sub_160F34(0xDu);
        v76 = sub_175AE4();
        v77 = sub_160F68(4);
        if (v75)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d %d\n", v76, 13, v77, "AVE_Session_GGM_Open", 167, "ret == 0", a1, *(a1 + 544), a4, v19);
          v76 = sub_175AE4();
          v77 = sub_160F68(4);
        }

        v95 = a4;
        v96 = v19;
        v92 = a1;
        v94 = *(a1 + 544);
        v90 = 167;
        v89 = v77;
        v78 = "%lld %d AVE %s: %s:%d %s | Failed to create property dictionary %p %lld %d %d";
LABEL_112:
        syslog(3, v78, v76, 13, v89, "AVE_Session_GGM_Open", v90, "ret == 0", v92, v94, v95, v96);
      }
    }

    else
    {
      v79 = sub_CBCA0(*(a1 + 544), (a1 + 688));
      if (v79)
      {
        v19 = v79;
        if (sub_160EF0(0xDu, 4))
        {
          v80 = sub_160F34(0xDu);
          v76 = sub_175AE4();
          v81 = sub_160F68(4);
          if (v80)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create dump instance %p %lld %d %d\n", v76, 13, v81, "AVE_Session_GGM_Open", 173, "ret == 0", a1, *(a1 + 544), a4, v19);
            v76 = sub_175AE4();
            v81 = sub_160F68(4);
          }

          v95 = a4;
          v96 = v19;
          v92 = a1;
          v94 = *(a1 + 544);
          v90 = 173;
          v89 = v81;
          v78 = "%lld %d AVE %s: %s:%d %s | Failed to create dump instance %p %lld %d %d";
          goto LABEL_112;
        }
      }

      else
      {
        v19 = sub_BD8((a1 + 640), *(a1 + 544));
        if (!v19)
        {
          *(a1 + 20) = 1;
LABEL_43:
          if (sub_160EF0(0xDu, 7))
          {
            v38 = sub_160F34(0xDu);
            v39 = sub_175AE4();
            v40 = sub_160F68(7);
            if (v38)
            {
              printf("%lld %d AVE %s: %s: %p %lld %d %p %p %d %d\n", v39, 13, v40, "AVE_Session_GGM_Open", a1, *(a1 + 544), *(a1 + 20), a2, a3, a4, v19);
              v41 = sub_175AE4();
              v42 = sub_160F68(7);
              v43 = *(a1 + 544);
              v91 = *(a1 + 20);
              syslog(3, "%lld %d AVE %s: %s: %p %lld %d %p %p %d %d", v41, 13, v42, "AVE_Session_GGM_Open");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s: %p %lld %d %p %p %d %d", v39, 13, v40, "AVE_Session_GGM_Open");
            }
          }

          goto LABEL_47;
        }

        if (sub_160EF0(0xDu, 4))
        {
          v82 = sub_160F34(0xDu);
          v76 = sub_175AE4();
          v83 = sub_160F68(4);
          if (v82)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to init property config %p %lld %d %d\n", v76, 13, v83, "AVE_Session_GGM_Open", 178, "ret == 0", a1, *(a1 + 544), a4, v19);
            v76 = sub_175AE4();
            v83 = sub_160F68(4);
          }

          v95 = a4;
          v96 = v19;
          v92 = a1;
          v94 = *(a1 + 544);
          v90 = 178;
          v89 = v83;
          v78 = "%lld %d AVE %s: %s:%d %s | Failed to init property config %p %lld %d %d";
          goto LABEL_112;
        }
      }
    }

LABEL_31:
    v32 = *(a1 + 688);
    if (v32)
    {
      sub_CC04C(v32);
      *(a1 + 688) = 0;
    }

    v33 = *(a1 + 632);
    if (v33)
    {
      CFRelease(v33);
      *(a1 + 632) = 0;
    }

    v34 = *(a1 + 560);
    if (v34)
    {
      CFRelease(v34);
      *(a1 + 560) = 0;
    }

    v35 = *(a1 + 568);
    if (v35)
    {
      sub_12916C(v35);
      *(a1 + 568) = 0;
    }

    v36 = *(a1 + 616);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 616) = 0;
    }

    v37 = *(a1 + 624);
    if (v37)
    {
      sub_13DBD0(v37);
      *(a1 + 624) = 0;
    }

    goto LABEL_43;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v15 = sub_160F34(0xDu);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d %d\n", v16, 13, v17, "AVE_Session_GGM_Open", 107, "pINS != __null && (eGGMMode == kVTDeghostingProcessorMode_Repair || eGGMMode == kVTDeghostingProcessorMode_Statistics)", a1, a2, a3, a4, 0);
      v18 = sub_175AE4();
      v85 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d %d", v18, 13, v85, "AVE_Session_GGM_Open");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %d %d", v16, 13, v17, "AVE_Session_GGM_Open");
    }
  }

  v19 = 4294966295;
LABEL_47:
  if (sub_160EF0(0xDu, 7))
  {
    v44 = sub_160F34(0xDu);
    v45 = sub_175AE4();
    v46 = sub_160F68(7);
    if (v44)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v45, 13, v46, "AVE_Session_GGM_Open", a1, v19);
      v47 = sub_175AE4();
      v86 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v47, 13, v86, "AVE_Session_GGM_Open", a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v45, 13, v46, "AVE_Session_GGM_Open", a1, v19);
    }
  }

  return v19;
}

uint64_t sub_DB1C(uint64_t a1, const __CFAllocator *a2)
{
  v4 = sub_1502C8();
  if (sub_160EF0(0xDu, 7))
  {
    v5 = sub_160F34(0xDu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 13, v7, "AVE_Session_GGM_CreatePropertyDict", a1, a2);
      v8 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 13, v31, "AVE_Session_GGM_CreatePropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 13, v7, "AVE_Session_GGM_CreatePropertyDict", a1, a2);
    }
  }

  if (a1)
  {
    if (v4[396])
    {
      v9 = 257;
    }

    else
    {
      v9 = 258;
    }

    Mutable = CFDictionaryCreateMutable(a2, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a1 + 632) = Mutable;
    if (Mutable)
    {
      v11 = sub_898C(*(a1 + 552), v9, *(a1 + 544), Mutable);
      if (!v11)
      {
        goto LABEL_29;
      }

      if (sub_160EF0(0xDu, 4))
      {
        v12 = sub_160F34(0xDu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = *(a1 + 552);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d\n", v13, 13, v14, "AVE_Session_GGM_CreatePropertyDict", 585, "ret == 0", a1, *(a1 + 544), v9, *(a1 + 552), v11);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          v16 = *(a1 + 544);
        }

        v32 = *(a1 + 552);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to make property dictionary %p %lld 0x%x %d %d", v13, 13, v14, "AVE_Session_GGM_CreatePropertyDict");
      }
    }

    else
    {
      if (sub_160EF0(0xDu, 4))
      {
        v20 = sub_160F34(0xDu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 552);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d\n", v21, 13, v22, "AVE_Session_GGM_CreatePropertyDict", 580, "pINS->pPropDict != __null", a1, *(a1 + 544), v9, *(a1 + 552), 0);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v24 = *(a1 + 544);
        }

        v33 = *(a1 + 552);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create CFDict %p %lld 0x%x %d %d", v21, 13, v22, "AVE_Session_GGM_CreatePropertyDict");
      }

      v11 = 4294966293;
    }

    v25 = *(a1 + 632);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 632) = 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v17 = sub_160F34(0xDu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p\n", v18, 13, v19, "AVE_Session_GGM_CreatePropertyDict", 563, "pINS != __null", 0);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p", v18);
    }

    LODWORD(v9) = 0;
    v11 = 4294966295;
  }

LABEL_29:
  if (sub_160EF0(0xDu, 7))
  {
    v26 = sub_160F34(0xDu);
    v27 = sub_175AE4();
    v28 = sub_160F68(7);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v27, 13, v28, "AVE_Session_GGM_CreatePropertyDict", a1, v9, v11);
      v29 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v27);
    }
  }

  return v11;
}

uint64_t sub_DFE0(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 13, v4, "AVE_Session_GGM_Close", a1);
      v5 = sub_175AE4();
      v48 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v48, "AVE_Session_GGM_Close", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 13, v4, "AVE_Session_GGM_Close", a1);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xDu, 7))
    {
      v6 = sub_160F34(0xDu);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *(a1 + 544);
      if (v6)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d\n", v7, 13, v8, "AVE_Session_GGM_Close", a1, *(a1 + 544), *(a1 + 20));
        v7 = sub_175AE4();
        sub_160F68(7);
        v10 = *(a1 + 544);
        v51 = *(a1 + 20);
      }

      else
      {
        v50 = *(a1 + 544);
      }

      syslog(3, "%lld %d AVE %s: %s: %p %lld %d", v7);
    }

    v14 = *(a1 + 20);
    if (v14 <= 0)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v22 = sub_160F34(0xDu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 544);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong state, skip destroy driver %p %lld %d\n", v23, 13, v24, "AVE_Session_GGM_Close", 249, "pINS->eState > AVE_PI_State_None", a1, *(a1 + 544), *(a1 + 20));
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v26 = *(a1 + 544);
          v55 = *(a1 + 20);
        }

        else
        {
          v54 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong state, skip destroy driver %p %lld %d", v23, 13, v24);
      }

      v27 = 4294966285;
    }

    else
    {
      if (v14 >= 3)
      {
        v15 = sub_E6F8(a1);
        if (v15)
        {
          v16 = v15;
          if (sub_160EF0(0xDu, 4))
          {
            v17 = sub_160F34(0xDu);
            v18 = sub_175AE4();
            v19 = sub_160F68(4);
            v20 = *(a1 + 20);
            if (v17)
            {
              printf("%lld %d AVE %s: %s: Failed to stop GGM session %p %lld %d %d\n", v18, 13, v19, "AVE_Session_GGM_Close", a1, *(a1 + 544), *(a1 + 20), v16);
              v18 = sub_175AE4();
              sub_160F68(4);
              v21 = *(a1 + 544);
            }

            v52 = *(a1 + 20);
            syslog(3, "%lld %d AVE %s: %s: Failed to stop GGM session %p %lld %d %d", v18);
          }
        }
      }

      v27 = sub_12916C(*(a1 + 568));
      if (v27)
      {
        if (sub_160EF0(0xDu, 4))
        {
          v28 = sub_160F34(0xDu);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          v31 = *(a1 + 20);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to destroy driver %p %lld %d %d\n", v29, 13, v30, "AVE_Session_GGM_Close", 266, "ret == 0", a1, *(a1 + 544), *(a1 + 20), v27);
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v32 = *(a1 + 544);
          }

          v56 = *(a1 + 20);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to destroy driver %p %lld %d %d", v29, 13, v30);
        }
      }

      else
      {
        *(a1 + 568) = 0;
        *(a1 + 20) = 0;
      }
    }

    sub_D8C((a1 + 640));
    v33 = *(a1 + 688);
    if (v33)
    {
      sub_CCDA4(v33);
      sub_CC04C(*(a1 + 688));
      *(a1 + 688) = 0;
    }

    v34 = *(a1 + 632);
    if (v34)
    {
      CFRelease(v34);
      *(a1 + 632) = 0;
    }

    v35 = *(a1 + 560);
    if (v35)
    {
      CFRelease(v35);
      *(a1 + 560) = 0;
    }

    v36 = *(a1 + 616);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 616) = 0;
    }

    v37 = *(a1 + 624);
    if (v37)
    {
      sub_13DBD0(v37);
      *(a1 + 624) = 0;
    }

    if (sub_160EF0(0xDu, 7))
    {
      v38 = sub_160F34(0xDu);
      v39 = sub_175AE4();
      v40 = sub_160F68(7);
      v41 = *(a1 + 20);
      if (v38)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d %d\n", v39, 13, v40, "AVE_Session_GGM_Close", a1, *(a1 + 544), *(a1 + 20), v27);
        v39 = sub_175AE4();
        sub_160F68(7);
        v42 = *(a1 + 544);
      }

      v53 = *(a1 + 20);
      syslog(3, "%lld %d AVE %s: %s: %p %lld %d %d", v39);
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v11 = sub_160F34(0xDu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d\n", v12, 13, v13, "AVE_Session_GGM_Close", 242, "pINS != __null", 0, 0);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d", v12, 13);
    }

    v27 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v43 = sub_160F34(0xDu);
    v44 = sub_175AE4();
    v45 = sub_160F68(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v44, 13, v45, "AVE_Session_GGM_Close", a1, v27);
      v46 = sub_175AE4();
      v49 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v46, 13, v49, "AVE_Session_GGM_Close", a1, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v44, 13, v45, "AVE_Session_GGM_Close", a1, v27);
    }
  }

  return v27;
}

uint64_t sub_E6F8(uint64_t a1)
{
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 13, v4, "AVE_Session_GGM_Stop", a1);
      v5 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v31, "AVE_Session_GGM_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 13, v4, "AVE_Session_GGM_Stop", a1);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xDu, 7))
    {
      v6 = sub_160F34(0xDu);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *(a1 + 544);
      if (v6)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d\n", v7, 13, v8, "AVE_Session_GGM_Stop", a1, *(a1 + 544), *(a1 + 20));
        v7 = sub_175AE4();
        sub_160F68(7);
        v10 = *(a1 + 544);
        v34 = *(a1 + 20);
      }

      else
      {
        v33 = *(a1 + 544);
      }

      syslog(3, "%lld %d AVE %s: %s: %p %lld %d", v7);
    }

    if (*(a1 + 20) >= 3 && (v37 = 0, v14 = sub_12C9EC(*(a1 + 568), &v37, 1), v14))
    {
      v15 = v14;
      if (sub_160EF0(0xDu, 4))
      {
        v16 = sub_160F34(0xDu);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        v19 = *(a1 + 544);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to stop driver %p %lld %d\n", v17, 13, v18, "AVE_Session_GGM_Stop", 397, "ret == 0", a1, *(a1 + 544), v15);
          v17 = sub_175AE4();
          v18 = sub_160F68(4);
          v20 = *(a1 + 544);
        }

        else
        {
          v36 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to stop driver %p %lld %d", v17, 13, v18);
      }
    }

    else
    {
      v15 = 0;
      *(a1 + 20) = 1;
    }

    if (sub_160EF0(0xDu, 7))
    {
      v21 = sub_160F34(0xDu);
      v22 = sub_175AE4();
      v23 = sub_160F68(7);
      v24 = *(a1 + 20);
      if (v21)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d %d\n", v22, 13, v23, "AVE_Session_GGM_Stop", a1, *(a1 + 544), *(a1 + 20), v15);
        v22 = sub_175AE4();
        sub_160F68(7);
        v25 = *(a1 + 544);
      }

      v35 = *(a1 + 20);
      syslog(3, "%lld %d AVE %s: %s: %p %lld %d %d", v22);
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v11 = sub_160F34(0xDu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d\n", v12, 13, v13, "AVE_Session_GGM_Stop", 386, "pINS != __null", 0, 0);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d", v12, 13);
    }

    v15 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v26 = sub_160F34(0xDu);
    v27 = sub_175AE4();
    v28 = sub_160F68(7);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v27, 13, v28, "AVE_Session_GGM_Stop", a1, v15);
      v29 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v29, 13, v32, "AVE_Session_GGM_Stop", a1, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v27, 13, v28, "AVE_Session_GGM_Stop", a1, v15);
    }
  }

  return v15;
}

uint64_t sub_EBEC(uint64_t a1, unsigned int *a2)
{
  if (sub_160EF0(0xDu, 7))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v5, 13, v6, "AVE_Session_GGM_Start", a1);
      v7 = sub_175AE4();
      v42 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v7, 13, v42, "AVE_Session_GGM_Start", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v6, "AVE_Session_GGM_Start", a1);
    }
  }

  if (!a1 || !a2)
  {
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p\n", v14, 13, v15, "AVE_Session_GGM_Start", 331, "pINS != __null && pDimension != __null", a1, a2);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p", v14, 13);
    }

    goto LABEL_23;
  }

  if (*a2 < 1 || a2[1] <= 0)
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      v19 = *a2;
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %lld %d %p %dx%d\n", v17, 13, v18, "AVE_Session_GGM_Start", 335, "pDimension->iWidth > 0 && pDimension->iHeight > 0", a1, *(a1 + 544), *(a1 + 20), a2, *a2, a2[1]);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
      }

      v58 = *a2;
      v60 = a2[1];
      v54 = *(a1 + 20);
      v48 = *(a1 + 544);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %lld %d %p %dx%d", v17, 13, v18, "AVE_Session_GGM_Start", 335);
    }

LABEL_23:
    v20 = 4294966295;
    goto LABEL_24;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    v11 = *a2;
    if (v8)
    {
      printf("%lld %d AVE %s: %s: %p %lld %d %dx%d\n", v9, 13, v10, "AVE_Session_GGM_Start", a1, *(a1 + 544), *(a1 + 20), *a2, a2[1]);
      v9 = sub_175AE4();
      sub_160F68(7);
      v12 = *(a1 + 544);
      v47 = *a2;
      v53 = a2[1];
      v44 = *(a1 + 20);
    }

    else
    {
      v49 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %s: %p %lld %d %dx%d", v9, 13);
  }

  if (*(a1 + 20) == 1)
  {
    v26 = *a2;
    v27 = a2[1];
    *(a1 + 1480) = *a2;
    *(a1 + 1484) = v27;
    v20 = sub_14E248(*(a1 + 552), 4, 2, v26, v27, 1);
    if (v20)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v28 = sub_160F34(0xDu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | Dimensions (%dx%d) is not supported %p %lld %d %p %d\n", v29, 13, v30, "AVE_Session_GGM_Start", 354, "ret == 0", *a2, a2[1], a1, *(a1 + 544), *(a1 + 20), a2, v20);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          v31 = *(a1 + 544);
          v59 = *(a1 + 20);
          v50 = a2[1];
          v45 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Dimensions (%dx%d) is not supported %p %lld %d %p %d", v29, 13, v30, "AVE_Session_GGM_Start", 354, "ret == 0");
      }
    }

    else
    {
      *(a1 + 576) = a1;
      *(a1 + 592) = sub_F348;
      *(a1 + 20) = 2;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v32 = sub_160F34(0xDu);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      v35 = *(a1 + 544);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong state %p %lld, %d\n", v33, 13, v34, "AVE_Session_GGM_Start", 342, "pINS->eState == AVE_PI_State_Init", a1, *(a1 + 544), *(a1 + 20));
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        v36 = *(a1 + 544);
        v55 = *(a1 + 20);
      }

      else
      {
        v51 = *(a1 + 544);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong state %p %lld, %d", v33, 13, v34);
    }

    v20 = 4294966285;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v37 = sub_160F34(0xDu);
    v38 = sub_175AE4();
    v39 = sub_160F68(7);
    v40 = a2[1];
    if (v37)
    {
      printf("%lld %d AVE %s: %s: %p %lld %d %dx%d %d\n", v38, 13, v39, "AVE_Session_GGM_Start", a1, *(a1 + 544), *(a1 + 20), *a2, a2[1], v20);
      v38 = sub_175AE4();
      sub_160F68(7);
      v41 = *(a1 + 544);
      v56 = a2[1];
      v46 = *(a1 + 20);
      v52 = *a2;
    }

    else
    {
      v57 = a2[1];
    }

    syslog(3, "%lld %d AVE %s: %s: %p %lld %d %dx%d %d", v38, 13);
  }

LABEL_24:
  if (sub_160EF0(0xDu, 7))
  {
    v21 = sub_160F34(0xDu);
    v22 = sub_175AE4();
    v23 = sub_160F68(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v22, 13, v23, "AVE_Session_GGM_Start", a1, v20);
      v24 = sub_175AE4();
      v43 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 13, v43, "AVE_Session_GGM_Start", a1, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 13, v23, "AVE_Session_GGM_Start", a1, v20);
    }
  }

  return v20;
}

uint64_t sub_F348(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  *keys = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  *values = 0u;
  v184 = 0u;
  if (sub_160EF0(0xDu, 7))
  {
    v6 = sub_160F34(0xDu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v7, 13, v8, "AVE_Session_GGM_CallBack", a1);
      v9 = sub_175AE4();
      v146 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v9, 13, v146, "AVE_Session_GGM_CallBack", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v7, 13, v8, "AVE_Session_GGM_CallBack", a1);
    }
  }

  if (a1 && a2)
  {
    if (sub_160EF0(0xDu, 7))
    {
      v10 = sub_160F34(0xDu);
      v11 = sub_175AE4();
      v12 = sub_160F68(7);
      if (v10)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d %p %d\n", v11, 13, v12, "AVE_Session_GGM_CallBack", a1, *(a1 + 544), *(a1 + 16), a2, a3);
        v11 = sub_175AE4();
        v12 = sub_160F68(7);
        v13 = *(a1 + 544);
        v158 = *(a1 + 16);
      }

      syslog(3, "%lld %d AVE %s: %s: %p %lld %d %p %d", v11, 13, v12);
    }

    v19 = *(a2 + 319);
    v20 = *(a1 + 16);
    v180 = v19;
    if (v20 == 1)
    {
      v22 = 644;
    }

    else
    {
      if (v20 != 2)
      {
        goto LABEL_26;
      }

      v21 = *(a2 + 321);
      if (v21)
      {
        goto LABEL_23;
      }

      v22 = 640;
    }

    v21 = *&a2[v22];
    if (v21)
    {
LABEL_23:
      pixelBuffer = v21;
      PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
      v177 = a3;
      v178 = a2;
      if (sub_160EF0(0xDu, 7))
      {
        v24 = a3;
        v25 = sub_160F34(0xDu);
        theArray = sub_175AE4();
        v26 = sub_160F68(7);
        v27 = sub_116BC(PixelFormatType);
        v28 = HIBYTE(v27);
        v29 = BYTE2(v27);
        v30 = BYTE1(v27);
        v31 = v27;
        Width = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        if (v25)
        {
          v34 = v24;
          a2 = v178;
          printf("%lld %d AVE %s: %s: pOutBuf CVPixelFormatType is %c%c%c%c, %lux%lu, %p %lld %p %d\n", theArray, 13, v26, "AVE_Session_GGM_CallBack", v28, v29, v30, v31, Width, Height, a1, *(a1 + 544), v178, v34);
          theArray = sub_175AE4();
          v26 = sub_160F68(7);
          CVPixelBufferGetWidth(pixelBuffer);
          CVPixelBufferGetHeight(pixelBuffer);
          v173 = *(a1 + 544);
          v162 = v31;
          a3 = v177;
        }

        else
        {
          v40 = v24;
          a2 = v178;
          v162 = v31;
          a3 = v40;
        }

        syslog(3, "%lld %d AVE %s: %s: pOutBuf CVPixelFormatType is %c%c%c%c, %lux%lu, %p %lld %p %d", theArray, 13, v26, "AVE_Session_GGM_CallBack", v28, v29, v30, v162);
        v19 = v180;
      }

      v41 = a2[10];
      v42 = (v41 - *(a1 + 12016));
      sub_13DC18(*(a1 + 624));
      Count = CFDictionaryGetCount(*(a1 + 616));
      if (sub_160EF0(0xDu, 7))
      {
        v44 = sub_160F34(0xDu);
        v45 = sub_175AE4();
        v46 = sub_160F68(7);
        v47 = *(a1 + 544);
        if (v44)
        {
          printf("%lld %d AVE %s: %s: processed frame: %d, frame to be removed: %d, dict count: %d, %p %lld %d\n", v45, 13, v46, "AVE_Session_GGM_CallBack", v41, v42, Count, a1, *(a1 + 544), *(a1 + 16));
          v45 = sub_175AE4();
          v46 = sub_160F68(7);
          v165 = *(a1 + 544);
          v170 = *(a1 + 16);
        }

        else
        {
          v166 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s: processed frame: %d, frame to be removed: %d, dict count: %d, %p %lld %d", v45, 13, v46, "AVE_Session_GGM_CallBack");
      }

      if (Count >= 1)
      {
        CFDictionaryGetKeysAndValues(*(a1 + 616), keys, values);
        v48 = 0;
        while (values[v48] != v42)
        {
          if ((Count & 0x7FFFFFFF) == ++v48)
          {
            goto LABEL_49;
          }
        }

        CFDictionaryRemoveValue(*(a1 + 616), keys[v48]);
        if (sub_160EF0(0xDu, 7))
        {
          v49 = sub_160F34(0xDu);
          v50 = sub_175AE4();
          v51 = sub_160F68(7);
          v52 = *(a1 + 16);
          if (v49)
          {
            printf("%lld %d AVE %s: %s: Removed paDictValues[%d] = %d from SurfaceID dict (%d), %p %lld %d %d\n", v50, 13, v51, "AVE_Session_GGM_CallBack", v48, LODWORD(values[v48]), Count, a1, *(a1 + 544), *(a1 + 16), v41);
            v50 = sub_175AE4();
            v51 = sub_160F68(7);
            v171 = *(a1 + 16);
            v167 = *(a1 + 544);
            v153 = values[v48];
          }

          else
          {
            v172 = *(a1 + 16);
          }

          syslog(3, "%lld %d AVE %s: %s: Removed paDictValues[%d] = %d from SurfaceID dict (%d), %p %lld %d %d", v50, 13, v51, "AVE_Session_GGM_CallBack");
        }
      }

LABEL_49:
      sub_13DC4C(*(a1 + 624));
      v175 = v41;
      if (*(a1 + 16) == 1)
      {
        v53 = pixelBuffer;
        CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
        v54 = (CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0) + 0x8000);
        v176 = a2[10];
        if (sub_160EF0(0xDu, 7))
        {
          v55 = sub_160F34(0xDu);
          v56 = sub_175AE4();
          v57 = sub_160F68(7);
          if (v55)
          {
            printf("%lld %d AVE %s: %s Enter %p\n", v56, 13, v57, "AVE_GGM_CreateStatsArray", a1);
            v58 = sub_175AE4();
            v148 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: %s Enter %p", v58, 13, v148, "AVE_GGM_CreateStatsArray", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Enter %p", v56, 13, v57, "AVE_GGM_CreateStatsArray", a1);
          }
        }

        if (sub_160EF0(0xDu, 7))
        {
          v59 = sub_160F34(0xDu);
          v60 = sub_175AE4();
          v61 = sub_160F68(7);
          v62 = *(a1 + 16);
          if (v59)
          {
            printf("%lld %d AVE %s: %s: %p %lld %d, frame %d\n", v60, 13, v61, "AVE_GGM_CreateStatsArray", a1, *(a1 + 544), *(a1 + 16), v176);
            v60 = sub_175AE4();
            sub_160F68(7);
            v159 = *(a1 + 16);
            v154 = *(a1 + 544);
          }

          else
          {
            v160 = *(a1 + 16);
          }

          syslog(3, "%lld %d AVE %s: %s: %p %lld %d, frame %d", v60);
        }

        if (v54[1] == -889275714)
        {
          v63 = *v54;
        }

        else
        {
          v63 = 0;
        }

        theArraya = CFArrayCreateMutable(*(a1 + 560), 0, &kCFTypeArrayCallBacks);
        if (theArraya)
        {
          v64 = v63;
          if (v63 < 1)
          {
            v80 = 0;
            v81 = 1;
          }

          else
          {
            v65 = 0;
            v66 = kVTDeghostingBoundingBoxStatisticsKey_MaximumGradient;
            v67 = kVTDeghostingBoundingBoxStatisticsKey_MaximumTemporalDifference;
            v68 = v54 + 5;
            v174 = kVTDeghostingBoundingBoxStatisticsKey_MaximumTemporalDifference;
            while (1)
            {
              Mutable = CFDictionaryCreateMutable(*(a1 + 560), 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (!Mutable)
              {
                break;
              }

              v70 = Mutable;
              if (*(v68 - 2) == -889275714)
              {
                v71 = *(v68 - 3);
              }

              else
              {
                v71 = -1;
              }

              sub_14B9CC(v66, v71, Mutable);
              if (*v68 == -889275714)
              {
                v72 = *(v68 - 1);
              }

              else
              {
                v72 = -1;
              }

              sub_14B9CC(v67, v72, v70);
              CFArrayAppendValue(theArraya, v70);
              if (sub_160EF0(0xDu, 6))
              {
                v73 = v66;
                v74 = sub_160F34(0xDu);
                v75 = sub_175AE4();
                v76 = sub_160F68(6);
                v77 = *(a1 + 544);
                if (v74)
                {
                  printf("%lld %d AVE %s: %s: Frame: %d, Stats for GG#%d(%d): (%d)-(%d), %p %lld\n", v75, 13, v76, "AVE_GGM_CreateStatsArray", v176, v65, v64, v71, v72, a1, v77);
                  v78 = sub_175AE4();
                  v79 = sub_160F68(6);
                  syslog(3, "%lld %d AVE %s: %s: Frame: %d, Stats for GG#%d(%d): (%d)-(%d), %p %lld", v78, 13, v79, "AVE_GGM_CreateStatsArray", v176, v65, v64, v71, v72, a1, *(a1 + 544));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s: Frame: %d, Stats for GG#%d(%d): (%d)-(%d), %p %lld", v75, 13, v76, "AVE_GGM_CreateStatsArray", v176, v65, v64, v71, v72, a1, v77);
                }

                v66 = v73;
                v67 = v174;
              }

              ++v65;
              v68 += 4;
              if (v64 == v65)
              {
                v80 = 0;
                v81 = 1;
                a3 = v177;
                a2 = v178;
                v53 = pixelBuffer;
                v19 = v180;
                goto LABEL_98;
              }
            }

            a2 = v178;
            if (sub_160EF0(0xDu, 4))
            {
              v86 = sub_160F34(0xDu);
              v87 = sub_175AE4();
              v88 = sub_160F68(4);
              if (v86)
              {
                printf("%lld %d AVE %s: %s:%d %s | Failed to create stats dict for BBox (%d), %p %lld\n", v87, 13, v88, "AVE_GGM_CreateStatsArray", 697, "pStatsDict != __null", v65, a1, *(a1 + 544));
                v87 = sub_175AE4();
                v88 = sub_160F68(4);
                v89 = *(a1 + 544);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create stats dict for BBox (%d), %p %lld", v87, 13, v88);
            }

            v90 = 0;
            v53 = pixelBuffer;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v90);
              if (ValueAtIndex)
              {
                CFRelease(ValueAtIndex);
              }

              ++v90;
            }

            while (v64 != v90);
            CFRelease(theArraya);
            theArraya = 0;
            v81 = 0;
            v80 = -1003;
          }

          a3 = v177;
          v19 = v180;
        }

        else
        {
          if (sub_160EF0(0xDu, 4))
          {
            v82 = sub_160F34(0xDu);
            v83 = sub_175AE4();
            v84 = sub_160F68(4);
            if (v82)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create stats array, %p %lld\n", v83, 13, v84, "AVE_GGM_CreateStatsArray", 686, "*pStatsArray != __null", a1, *(a1 + 544));
              v83 = sub_175AE4();
              sub_160F68(4);
              v85 = *(a1 + 544);
              v53 = pixelBuffer;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create stats array, %p %lld", v83, 13);
          }

          theArraya = 0;
          v81 = 0;
          v80 = -1003;
        }

LABEL_98:
        if (sub_160EF0(0xDu, 7))
        {
          v92 = sub_160F34(0xDu);
          v93 = sub_175AE4();
          v94 = sub_160F68(7);
          if (v92)
          {
            printf("%lld %d AVE %s: %s: %p %lld %d, frame %d, %d\n", v93, 13, v94, "AVE_GGM_CreateStatsArray", a1, *(a1 + 544), *(a1 + 16), v176, v80);
            v93 = sub_175AE4();
            sub_160F68(7);
            v155 = *(a1 + 544);
            v161 = *(a1 + 16);
            v53 = pixelBuffer;
          }

          syslog(3, "%lld %d AVE %s: %s: %p %lld %d, frame %d, %d", v93, 13);
        }

        if (sub_160EF0(0xDu, 7))
        {
          v95 = sub_160F34(0xDu);
          v96 = sub_175AE4();
          v97 = sub_160F68(7);
          if (v95)
          {
            printf("%lld %d AVE %s: %s Exit %p %d\n", v96, 13, v97, "AVE_GGM_CreateStatsArray", a1, v80);
            v96 = sub_175AE4();
            v97 = sub_160F68(7);
            v53 = pixelBuffer;
          }

          syslog(3, "%lld %d AVE %s: %s Exit %p %d", v96, 13, v97, "AVE_GGM_CreateStatsArray", a1, v80);
        }

        if ((v81 & 1) == 0 && sub_160EF0(0xDu, 5))
        {
          v98 = sub_160F34(0xDu);
          v99 = sub_175AE4();
          v100 = sub_160F68(5);
          if (v98)
          {
            printf("%lld %d AVE %s: %s: Failed to create stats array for frame (%d) %p %lld %d %d\n", v99, 13, v100, "AVE_Session_GGM_CallBack", a2[10], a1, *(a1 + 544), a3, v80);
            v99 = sub_175AE4();
            sub_160F68(5);
            v101 = *(a1 + 544);
            v152 = a2[10];
            v53 = pixelBuffer;
          }

          syslog(3, "%lld %d AVE %s: %s: Failed to create stats array for frame (%d) %p %lld %d %d", v99, 13);
        }

        CVPixelBufferUnlockBaseAddress(v53, 1uLL);
      }

      else
      {
        theArraya = 0;
        v53 = pixelBuffer;
      }

      sub_CD63C(*(a1 + 688), 0, v53);
      v102 = *(a1 + 8);
      v103 = *(a1 + 16);
      v104 = sub_175994(a3);
      if (sub_160EF0(0xDu, 7))
      {
        v105 = sub_160F34(0xDu);
        v106 = sub_175AE4();
        v107 = sub_160F68(7);
        if (v105)
        {
          printf("%lld %d AVE %s: %s Enter %p %d %p %d 0x%x %p %p %p\n", v106, 13, v107, "AVE_Session_GGM_Emit", v102, v103, v19, v104, 0, 0, theArraya, v53);
          v108 = sub_175AE4();
          v149 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d 0x%x %p %p %p", v108, 13, v149, "AVE_Session_GGM_Emit", v102);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d 0x%x %p %p %p", v106, 13, v107, "AVE_Session_GGM_Emit", v102);
        }
      }

      if (v103 == 2)
      {
        v109 = VTDeghostingProcessorSessionEmitRepair();
      }

      else
      {
        if (v103 != 1)
        {
          v110 = -17691;
          goto LABEL_126;
        }

        v109 = VTDeghostingProcessorSessionEmitStatistics();
      }

      v110 = v109;
      if (!v109)
      {
        v18 = 0;
LABEL_131:
        if (sub_160EF0(0xDu, 7))
        {
          v115 = sub_160F34(0xDu);
          v116 = sub_175AE4();
          v117 = sub_160F68(7);
          if (v115)
          {
            printf("%lld %d AVE %s: %s Exit %p %d %p %d 0x%x %p %p %p %d %d\n", v116, 13, v117, "AVE_Session_GGM_Emit", v102, v103, v180, v104, 0, 0, theArraya, v53, v110, v18);
            v118 = sub_175AE4();
            v151 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d 0x%x %p %p %p %d %d", v118, 13, v151, "AVE_Session_GGM_Emit", v102, v103);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d 0x%x %p %p %p %d %d", v116, 13, v117, "AVE_Session_GGM_Emit", v102, v103);
          }
        }

        LODWORD(a3) = v177;
        a2 = v178;
        v39 = v175;
        v119 = theArraya;
        if (v18 && sub_160EF0(0xDu, 4))
        {
          v120 = sub_160F34(0xDu);
          v121 = sub_175AE4();
          v122 = sub_160F68(4);
          if (v120)
          {
            printf("%lld %d AVE %s: %s: Failed to emit for frame (%p-%d) %p %lld %d %d %d\n", v121, 13, v122, "AVE_Session_GGM_CallBack", v180, v178[10], a1, *(a1 + 544), *(a1 + 16), v177, v18);
            v121 = sub_175AE4();
            v122 = sub_160F68(4);
            v163 = *(a1 + 544);
            v168 = *(a1 + 16);
            v156 = v178[10];
            v119 = theArraya;
          }

          syslog(3, "%lld %d AVE %s: %s: Failed to emit for frame (%p-%d) %p %lld %d %d %d", v121, 13, v122, "AVE_Session_GGM_CallBack");
        }

        if (v119)
        {
          TypeID = CFArrayGetTypeID();
          if (TypeID == CFGetTypeID(v119))
          {
            v124 = CFArrayGetCount(v119);
            if (v124 >= 1)
            {
              v125 = 0;
              v126 = v124 & 0x7FFFFFFF;
              do
              {
                v127 = CFArrayGetValueAtIndex(v119, v125);
                if (v127)
                {
                  CFRelease(v127);
                }

                ++v125;
              }

              while (v126 != v125);
            }

            CFRelease(v119);
          }

          else if (sub_160EF0(0xDu, 4))
          {
            v128 = sub_160F34(0xDu);
            v129 = sub_175AE4();
            v130 = sub_160F68(4);
            if (v128)
            {
              printf("%lld %d AVE %s: %s:%d %s | Wrong parameters %p, %p %lld\n", v129, 13, v130, "AVE_GGM_ReleaseStatsArray", 761, "pStatsArray != __null && CFArrayGetTypeID() == CFGetTypeID(pStatsArray)", v119, a1, *(a1 + 544));
              v129 = sub_175AE4();
              v130 = sub_160F68(4);
              v169 = *(a1 + 544);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters %p, %p %lld", v129, 13, v130);
          }
        }

LABEL_154:
        v131 = *(a2 + 321);
        if (v131)
        {
          CFRelease(v131);
          *(a2 + 321) = 0;
        }

        v132 = 0;
        v133 = a2 + 646;
        v134 = 1;
        do
        {
          v135 = v134;
          v136 = *&v133[2 * v132];
          if (v136)
          {
            CFRelease(v136);
            *&v133[2 * v132] = 0;
          }

          v134 = 0;
          v132 = 1;
        }

        while ((v135 & 1) != 0);
        v137 = *(a2 + 322);
        if (v137)
        {
          CFRelease(v137);
          *(a2 + 322) = 0;
        }

        v138 = *(a2 + 320);
        if (v138)
        {
          CFRelease(v138);
          *(a2 + 320) = 0;
        }

        if (sub_160EF0(0xDu, 7))
        {
          v139 = sub_160F34(0xDu);
          v140 = sub_175AE4();
          v141 = sub_160F68(7);
          if (v139)
          {
            printf("%lld %d AVE %s: %s: %p %lld %p %p-%zu %d %d\n", v140, 13, v141, "AVE_Session_GGM_CallBack", a1, *(a1 + 544), a2, v180, v39, a3, v18);
            v140 = sub_175AE4();
            v141 = sub_160F68(7);
            v157 = *(a1 + 544);
          }

          syslog(3, "%lld %d AVE %s: %s: %p %lld %p %p-%zu %d %d", v140, 13, v141, "AVE_Session_GGM_CallBack");
        }

        goto LABEL_169;
      }

LABEL_126:
      if (sub_160EF0(0xDu, 4))
      {
        v111 = sub_160F34(0xDu);
        v112 = sub_175AE4();
        v113 = sub_160F68(4);
        if (v111)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to emit for GGM mode(%d) %p %d\n", v112, 13, v113, "AVE_Session_GGM_Emit", 648, "res == noErr", v103, v102, v110);
          v114 = sub_175AE4();
          v53 = pixelBuffer;
          v150 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to emit for GGM mode(%d) %p %d", v114, 13, v150);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to emit for GGM mode(%d) %p %d", v112, 13, v113);
        }
      }

      v18 = sub_175994(0);
      goto LABEL_131;
    }

LABEL_26:
    if (sub_160EF0(0xDu, 4))
    {
      v35 = sub_160F34(0xDu);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | pOutBuf is NULL, %p %lld %d %p %d\n", v36, 13, v37, "AVE_Session_GGM_CallBack", 857, "pOutBuf != __null", a1, *(a1 + 544), *(a1 + 16), a2, a3);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        v38 = *(a1 + 544);
        v164 = *(a1 + 16);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pOutBuf is NULL, %p %lld %d %p %d", v36, 13, v37, "AVE_Session_GGM_CallBack", 857);
    }

    v39 = 0;
    v18 = 4294966295;
    goto LABEL_154;
  }

  if (sub_160EF0(0xDu, 4))
  {
    v14 = sub_160F34(0xDu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d\n", v15, 13, v16, "AVE_Session_GGM_CallBack", 823, "pINS != __null && pFrameInfo != __null", a1, a2, a3);
      v17 = sub_175AE4();
      v147 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v17, 13, v147);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %d", v15, 13, v16);
    }
  }

  v18 = 4294966295;
LABEL_169:
  if (sub_160EF0(0xDu, 7))
  {
    v142 = sub_160F34(0xDu);
    v143 = sub_175AE4();
    v144 = sub_160F68(7);
    if (v142)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v143, 13, v144, "AVE_Session_GGM_CallBack", a1, a3, v18);
      v143 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v143);
  }

  return v18;
}

uint64_t sub_10AD0(uint64_t a1)
{
  v36 = 0;
  if (sub_160EF0(0xDu, 7))
  {
    v2 = sub_160F34(0xDu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 13, v4, "AVE_Session_GGM_Complete", a1);
      v5 = sub_175AE4();
      v30 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 13, v30, "AVE_Session_GGM_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 13, v4, "AVE_Session_GGM_Complete", a1);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xDu, 7))
    {
      v6 = sub_160F34(0xDu);
      v7 = sub_175AE4();
      v8 = sub_160F68(7);
      v9 = *(a1 + 544);
      if (v6)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d\n", v7, 13, v8, "AVE_Session_GGM_Complete", a1, *(a1 + 544), *(a1 + 20));
        v7 = sub_175AE4();
        sub_160F68(7);
        v10 = *(a1 + 544);
        v33 = *(a1 + 20);
      }

      else
      {
        v32 = *(a1 + 544);
      }

      syslog(3, "%lld %d AVE %s: %s: %p %lld %d", v7);
    }

    if (*(a1 + 20) < 3)
    {
      v14 = 0;
    }

    else
    {
      v36 = 0;
      v14 = sub_12D170(*(a1 + 568), &v36);
      if (v14 && sub_160EF0(0xDu, 4))
      {
        v15 = sub_160F34(0xDu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 544);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to complete driver %p %lld %d\n", v16, 13, v17, "AVE_Session_GGM_Complete", 435, "ret == 0", a1, *(a1 + 544), v14);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v19 = *(a1 + 544);
        }

        else
        {
          v35 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to complete driver %p %lld %d", v16, 13, v17);
      }
    }

    if (sub_160EF0(0xDu, 7))
    {
      v20 = sub_160F34(0xDu);
      v21 = sub_175AE4();
      v22 = sub_160F68(7);
      v23 = *(a1 + 20);
      if (v20)
      {
        printf("%lld %d AVE %s: %s: %p %lld %d %d\n", v21, 13, v22, "AVE_Session_GGM_Complete", a1, *(a1 + 544), *(a1 + 20), v14);
        v21 = sub_175AE4();
        sub_160F68(7);
        v24 = *(a1 + 544);
      }

      v34 = *(a1 + 20);
      syslog(3, "%lld %d AVE %s: %s: %p %lld %d %d", v21);
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v11 = sub_160F34(0xDu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d\n", v12, 13, v13, "AVE_Session_GGM_Complete", 424, "pINS != __null", 0, 0);
        v12 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %d", v12, 13);
    }

    v14 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v25 = sub_160F34(0xDu);
    v26 = sub_175AE4();
    v27 = sub_160F68(7);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v26, 13, v27, "AVE_Session_GGM_Complete", a1, v14);
      v28 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v28, 13, v31, "AVE_Session_GGM_Complete", a1, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 13, v27, "AVE_Session_GGM_Complete", a1, v14);
    }
  }

  return v14;
}

uint64_t sub_10FBC(void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xDu, 7))
  {
    v8 = sub_160F34(0xDu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 13, v10, "AVE_Session_GGM_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 13);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_8D74(a1, a2, a3, a4);
    if (v11 && sub_160EF0(0xDu, 4))
    {
      v12 = sub_160F34(0xDu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d\n", v13, 13, v14, "AVE_Session_GGM_GetProperty", 498, "ret == 0", a1, a1[68], a2, a3, a4, v11);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        v15 = a1[68];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get property %p %lld %p %p %p %d", v13, 13, v14, "AVE_Session_GGM_GetProperty", 498, "ret == 0");
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v16 = sub_160F34(0xDu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p\n", v17, 13, v18, "AVE_Session_GGM_GetProperty", 493, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v19, 13, v25, "AVE_Session_GGM_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p %p %p", v17, 13, v18, "AVE_Session_GGM_GetProperty");
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v20 = sub_160F34(0xDu);
    v21 = sub_175AE4();
    v22 = sub_160F68(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v21, 13, v22, "AVE_Session_GGM_GetProperty", a1, v11);
      v23 = sub_175AE4();
      v26 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 13, v26, "AVE_Session_GGM_GetProperty", a1, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 13, v22, "AVE_Session_GGM_GetProperty", a1, v11);
    }
  }

  return v11;
}

uint64_t sub_11368(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xDu, 7))
  {
    v4 = sub_160F34(0xDu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 13, v6, "AVE_Session_GGM_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v24 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 13, v24, "AVE_Session_GGM_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 13, v6, "AVE_Session_GGM_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 632);
    if (v8)
    {
      v9 = CFGetRetainCount(*(a1 + 632));
      if (v9 != 1 && sub_160EF0(0xDu, 5))
      {
        v10 = sub_160F34(0xDu);
        v11 = sub_175AE4();
        v12 = sub_160F68(5);
        v13 = *(a1 + 544);
        if (v10)
        {
          printf("%lld %d AVE %s: %s: property dictionary reference count %p %lld %d\n", v11, 13, v12, "AVE_Session_GGM_GetPropertyDict", a1, *(a1 + 544), v9);
          v11 = sub_175AE4();
          sub_160F68(5);
          v14 = *(a1 + 544);
        }

        else
        {
          v26 = *(a1 + 544);
        }

        syslog(3, "%lld %d AVE %s: %s: property dictionary reference count %p %lld %d", v11);
      }

      CFRetain(v8);
      v18 = 0;
    }

    else
    {
      v18 = 4294966288;
    }

    *a2 = v8;
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v15 = sub_160F34(0xDu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p\n", v16, 13, v17, "AVE_Session_GGM_GetPropertyDict", 520, "pINS != __null && ppDict != __null", a1, a2);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p", v16, 13);
    }

    v18 = 4294966295;
  }

  if (sub_160EF0(0xDu, 7))
  {
    v19 = sub_160F34(0xDu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v20, 13, v21, "AVE_Session_GGM_GetPropertyDict", a1, v18);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 13, v25, "AVE_Session_GGM_GetPropertyDict", a1, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 13, v21, "AVE_Session_GGM_GetPropertyDict", a1, v18);
    }
  }

  return v18;
}

uint64_t sub_116BC(unsigned int a1)
{
  if (a1 > 0x63)
  {
    v2 = a1 >> 8;
    v3 = a1 & 0xFF000000;
    v1 = a1;
  }

  else
  {
    v1 = (a1 % 0xAu) | 0x30;
    LOBYTE(v2) = (a1 / 0xAu) | 0x30;
    a1 = 0x200000;
    v3 = 0x20000000;
  }

  return a1 & 0xFF0000 | v3 | (v2 << 8) | v1;
}

uint64_t sub_1171C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  pixelBuffer = 0;
  v332 = v12;
  v330 = 0;
  v356[1] = 0;
  v356[0] = 0;
  v329 = 0;
  memset(v328, 0, sizeof(v328));
  bzero(v347, 0x1738uLL);
  if (sub_160EF0(0xDu, 7))
  {
    v13 = sub_160F34(0xDu);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v14, 13, v15, "AVE_Session_GGM_Process2", v11);
      v16 = sub_175AE4();
      v200 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v16, 13, v200, "AVE_Session_GGM_Process2", v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v14, &dword_C + 1, v15, "AVE_Session_GGM_Process2", v11);
    }
  }

  if (v11)
  {
    if (v6)
    {
      TypeID = VTDeghostingFrameBufferGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        if (sub_160EF0(0xDu, 7))
        {
          v18 = sub_160F34(0xDu);
          v19 = sub_175AE4();
          v20 = sub_160F68(7);
          if (v18)
          {
            printf("%lld %d AVE %s: %s: %p %p %p %p 0x%x %p %lld %d %p-%d\n", v19, 13, v20, "AVE_Session_GGM_Process2", v11, v8, v6, v332, v4, v2, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608));
            v19 = sub_175AE4();
            v20 = sub_160F68(7);
            v300 = *(v11 + 608);
            v266 = *(v11 + 544);
            v282 = *(v11 + 16);
          }

          syslog(3, "%lld %d AVE %s: %s: %p %p %p %p 0x%x %p %lld %d %p-%d", v19, 13, v20, "AVE_Session_GGM_Process2", v11, v8, v6, v332);
        }

        if (*(v11 + 20) <= 1)
        {
          if (sub_160EF0(0xDu, 4))
          {
            v33 = sub_160F34(0xDu);
            v34 = sub_175AE4();
            v35 = sub_160F68(4);
            v36 = *(v11 + 544);
            if (v33)
            {
              printf("%lld %d AVE %s: %s:%d %s | Wrong state, skip process driver %p %lld %d\n", v34, 13, v35, "AVE_Session_GGM_Process2", 1550, "pINS->eState >= AVE_PI_State_Ready", v11, *(v11 + 544), *(v11 + 20));
              v34 = sub_175AE4();
              v35 = sub_160F68(4);
              v37 = *(v11 + 544);
              v239 = *(v11 + 20);
            }

            else
            {
              v228 = *(v11 + 544);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong state, skip process driver %p %lld %d", v34, 13, v35);
          }

          v25 = 4294966285;
          goto LABEL_48;
        }

        v326 = 0u;
        v327 = 0u;
        v324 = 0u;
        v325 = 0u;
        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        *v318 = 0u;
        v319 = 0u;
        *v316 = 0u;
        *cf = 0u;
        bzero(v355, 0x4A40uLL);
        v31 = *(v11 + 16);
        if (v31 == 1)
        {
          v32 = 14336;
        }

        else
        {
          if (v31 != 2)
          {
LABEL_33:
            Frame = VTDeghostingFrameBufferGetFrame();
            pixelBuffer = Frame;
            if (!Frame || !CVPixelBufferGetIOSurface(Frame))
            {
              if (sub_160EF0(0xDu, 4))
              {
                v47 = sub_160F34(0xDu);
                v48 = sub_175AE4();
                v49 = sub_160F68(4);
                if (v47)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Failed to get current frame %p %lld %d %p-%d\n", v48, 13, v49, "AVE_Session_GGM_Process2", 1572, "pCurrentFrame != __null && CVPixelBufferGetIOSurface(pCurrentFrame) != __null", v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608));
                  v48 = sub_175AE4();
                  v49 = sub_160F68(4);
                }

                v268 = *(v11 + 608);
                v227 = *(v11 + 544);
                v241 = *(v11 + 16);
                syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get current frame %p %lld %d %p-%d", v48, 13, v49, "AVE_Session_GGM_Process2", 1572);
              }

              goto LABEL_47;
            }

            v39 = sub_13CE4(v11, &pixelBuffer, *(v11 + 20) == 2);
            if (v39)
            {
              v25 = v39;
              if (!sub_160EF0(0xDu, 4))
              {
LABEL_48:
                sub_13DC18(*(v11 + 624));
                v50 = *(v11 + 616);
                IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
                ID = IOSurfaceGetID(IOSurface);
                CFDictionaryRemoveValue(v50, ID);
                sub_13DC4C(*(v11 + 624));
                if (cf[1])
                {
                  CFRelease(cf[1]);
                  cf[1] = 0;
                }

                v53 = 0;
                v54 = 1;
                do
                {
                  v55 = v54;
                  v56 = v318[v53 + 1];
                  if (v56)
                  {
                    CFRelease(v56);
                    v318[v53 + 1] = 0;
                  }

                  v54 = 0;
                  v53 = 1;
                }

                while ((v55 & 1) != 0);
                if (v318[0])
                {
                  CFRelease(v318[0]);
                  v318[0] = 0;
                }

                if (v316[1])
                {
                  CFRelease(v316[1]);
                  v316[1] = 0;
                }

                goto LABEL_58;
              }

              v40 = sub_160F34(0xDu);
              v41 = sub_175AE4();
              v42 = sub_160F68(4);
              v43 = *(v11 + 608);
              if (v40)
              {
                printf("%lld %d AVE %s: %s:%d %s | Failed to verify current frame %p %lld %d %p-%d %p\n", v41, 13, v42, "AVE_Session_GGM_Process2", 1579, "ret == 0", v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608), pixelBuffer);
                v44 = sub_175AE4();
                v45 = sub_160F68(4);
                v267 = *(v11 + 608);
                v283 = pixelBuffer;
                v240 = *(v11 + 16);
                v255 = v10;
                v220 = v11;
                v226 = *(v11 + 544);
                v208 = 1579;
                v203 = v45;
                v46 = "%lld %d AVE %s: %s:%d %s | Failed to verify current frame %p %lld %d %p-%d %p";
LABEL_39:
                syslog(3, v46, v44, 13, v203, "AVE_Session_GGM_Process2", v208, "ret == 0", v220, v226, v240, v255, v267, v283, v291);
                goto LABEL_48;
              }

              v269 = *(v11 + 608);
              v284 = pixelBuffer;
              v244 = *(v11 + 16);
              v256 = v10;
              v222 = v11;
              v229 = *(v11 + 544);
              v209 = 1579;
              v204 = v42;
              v67 = "%lld %d AVE %s: %s:%d %s | Failed to verify current frame %p %lld %d %p-%d %p";
              goto LABEL_69;
            }

            if (*(v11 + 20) == 2)
            {
              bzero(v338, 0x1080uLL);
              bzero(v336, 0x2FCCuLL);
              bzero(v335, 0x25A0uLL);
              bzero(v334, 0x53F0uLL);
              bzero(v333, 0x5DD8uLL);
              v337[0] = v11 + 712;
              v337[1] = v11 + 1480;
              v337[2] = v11 + 10792;
              v338[1] = *(v11 + 688);
              v342 = v336;
              v343 = v11 + 12040;
              v344 = v335;
              v345 = v334;
              v346 = v333;
              v61 = *(v11 + 656);
              v339 = *(v11 + 640);
              v340 = v61;
              v341 = *(v11 + 672);
              v62 = sub_12A644(*(v11 + 568), v337, v11 + 576, 1, *(v11 + 560), 0, 0, v11 + 24, (v11 + 11812), 0);
              if (v62)
              {
                v25 = v62;
                if (!sub_160EF0(0xDu, 4))
                {
                  goto LABEL_48;
                }

                v63 = sub_160F34(0xDu);
                v41 = sub_175AE4();
                v64 = sub_160F68(4);
                v65 = *(v11 + 608);
                if (v63)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Failed to start driver %p %lld %d %p-%d %d\n", v41, 13, v64, "AVE_Session_GGM_Process2", 1608, "ret == 0", v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608), v25);
                  v44 = sub_175AE4();
                  v66 = sub_160F68(4);
                  v267 = *(v11 + 608);
                  v283 = v25;
                  v240 = *(v11 + 16);
                  v255 = v10;
                  v220 = v11;
                  v226 = *(v11 + 544);
                  v208 = 1608;
                  v203 = v66;
                  v46 = "%lld %d AVE %s: %s:%d %s | Failed to start driver %p %lld %d %p-%d %d";
                  goto LABEL_39;
                }

                v269 = *(v11 + 608);
                v284 = v25;
                v244 = *(v11 + 16);
                v256 = v10;
                v222 = v11;
                v229 = *(v11 + 544);
                v209 = 1608;
                v204 = v64;
                v67 = "%lld %d AVE %s: %s:%d %s | Failed to start driver %p %lld %d %p-%d %d";
LABEL_69:
                syslog(3, v67, v41, 13, v204, "AVE_Session_GGM_Process2", v209, "ret == 0", v222, v229, v244, v256, v269, v284, v291);
                goto LABEL_48;
              }

              *(v11 + 20) = 3;
            }

            if (!*(v11 + 608))
            {
              v68 = sub_1502C8();
              v333[0].f64[0] = *(v11 + 1480);
              PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
              v70 = sub_167CD8(PixelFormatType);
              if (v70)
              {
                if (v68[420])
                {
                  v71 = v68 + 420;
                }

                else
                {
                  v71 = 0;
                }

                sub_CC848(*(v11 + 688), v71, *(v11 + 536), *(v11 + 10812), *(v68 + 103), *(v68 + 104), v333, 1, *(v70 + 3), *(v70 + 1), 0);
              }
            }

            sub_CCF60(*(v11 + 688), 0, pixelBuffer);
            Parameters = VTDeghostingFrameBufferGetParameters();
            if (!Parameters || (v73 = Parameters, v74 = CFDictionaryGetTypeID(), v74 != CFGetTypeID(v73)))
            {
              if (sub_160EF0(0xDu, 4))
              {
                v88 = sub_160F34(0xDu);
                v89 = sub_175AE4();
                v90 = sub_160F68(4);
                if (v88)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Failed to get current frame dict %p %lld %d %p-%d\n", v89, 13, v90, "AVE_Session_GGM_Process2", 1637, "pCurrentFrameDict != __null && CFDictionaryGetTypeID() == CFGetTypeID(pCurrentFrameDict)", v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608));
                  v89 = sub_175AE4();
                  v90 = sub_160F68(4);
                }

                v270 = *(v11 + 608);
                v230 = *(v11 + 544);
                v245 = *(v11 + 16);
                syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get current frame dict %p %lld %d %p-%d", v89, 13, v90, "AVE_Session_GGM_Process2", 1637);
              }

              goto LABEL_47;
            }

            v313 = v4;
            Value = CFDictionaryGetValue(v73, kVTDeghostingFrameKey_BorderPixels);
            if (!Value)
            {
              if (sub_160EF0(0xDu, 4))
              {
                v91 = sub_160F34(0xDu);
                v92 = sub_175AE4();
                v93 = sub_160F68(4);
                if (v91)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Failed to get border pixels %p %lld %d %p-%d\n", v92, 13, v93, "AVE_Session_GGM_Process2", 1644, "pBorderPixels != __null", v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608));
                  v92 = sub_175AE4();
                  v93 = sub_160F68(4);
                }

                v271 = *(v11 + 608);
                v231 = *(v11 + 544);
                v246 = *(v11 + 16);
                syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get border pixels %p %lld %d %p-%d", v92, 13, v93, "AVE_Session_GGM_Process2", 1644);
              }

              goto LABEL_47;
            }

            v76 = Value;
            v77 = CVPixelBufferGetPixelFormatType(Value);
            Width = CVPixelBufferGetWidth(v76);
            Height = CVPixelBufferGetHeight(v76);
            v80 = Height;
            if (Width == 0x2000 && Height == 5 && v77 == 1278226488)
            {
              v81 = sub_14114(v11, v73, &v352, &v330, 0);
              if (v81)
              {
                v25 = v81;
                if (!sub_160EF0(0xDu, 4))
                {
                  goto LABEL_48;
                }

                v82 = sub_160F34(0xDu);
                v41 = sub_175AE4();
                v83 = sub_160F68(4);
                v84 = *(v11 + 608);
                if (v82)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Failed to parse bounding box from frame dict %p, %p %lld %d %p-%d %d\n", v41, 13, v83, "AVE_Session_GGM_Process2", 1665, "ret == 0", v73, v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608), v25);
                  v85 = sub_175AE4();
                  v86 = sub_160F68(4);
                  v87 = *(v11 + 544);
                  v285 = *(v11 + 608);
                  v257 = *(v11 + 16);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to parse bounding box from frame dict %p, %p %lld %d %p-%d %d", v85, 13, v86, "AVE_Session_GGM_Process2", 1665, "ret == 0");
                  goto LABEL_48;
                }

                v284 = *(v11 + 608);
                v291 = v25;
                v256 = *(v11 + 16);
                v269 = v10;
                v229 = v11;
                v244 = *(v11 + 544);
                v222 = v73;
                v209 = 1665;
                v204 = v83;
                v67 = "%lld %d AVE %s: %s:%d %s | Failed to parse bounding box from frame dict %p, %p %lld %d %p-%d %d";
                goto LABEL_69;
              }

              if ((v313 & 2) != 0)
              {
                v351 |= 0x200uLL;
              }

              v348[0] = *(v11 + 16);
              v348[1] = *(v11 + 608);
              v349 = v330;
              v350 = v330;
              v355[1362] = *(v11 + 10244);
              if (v348[0] == 2)
              {
                v106 = sub_150D8(v11, v73, v348, v330);
                if (v106)
                {
                  v25 = v106;
                  if (sub_160EF0(0xDu, 4))
                  {
                    v107 = sub_160F34(0xDu);
                    v108 = sub_175AE4();
                    v109 = sub_160F68(4);
                    v110 = *(v11 + 608);
                    if (v107)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | Failed to parse weights from frame dict %p, %p %lld %d %p-%d %d\n", v108, 13, v109, "AVE_Session_GGM_Process2", 1686, "ret == 0", v73, v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608), v25);
                      v108 = sub_175AE4();
                      v109 = sub_160F68(4);
                      v111 = *(v11 + 544);
                      v287 = *(v11 + 608);
                      v259 = *(v11 + 16);
                    }

                    else
                    {
                      v288 = *(v11 + 608);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to parse weights from frame dict %p, %p %lld %d %p-%d %d", v108, 13, v109, "AVE_Session_GGM_Process2", 1686, "ret == 0");
                  }

                  goto LABEL_48;
                }
              }

              sub_13DC18(*(v11 + 624));
              if (*(v11 + 16) == 1)
              {
                v112 = CVPixelBufferGetIOSurface(pixelBuffer);
                v113 = IOSurfaceGetID(v112);
                CFDictionarySetValue(*(v11 + 616), v113, *(v11 + 608));
                if (sub_160EF0(0xDu, 7))
                {
                  v114 = v76;
                  v115 = sub_160F34(0xDu);
                  v116 = sub_175AE4();
                  v117 = sub_160F68(7);
                  v118 = *(v11 + 544);
                  if (v115)
                  {
                    printf("%lld %d AVE %s: %s: Added (%d, %d) to SurfaceID dict, %p %lld %d\n", v116, 13, v117, "AVE_Session_GGM_Process2", v113, *(v11 + 608), v11, *(v11 + 544), *(v11 + 16));
                    v116 = sub_175AE4();
                    v117 = sub_160F68(7);
                    v119 = *(v11 + 544);
                    v248 = *(v11 + 16);
                    v216 = *(v11 + 608);
                  }

                  else
                  {
                    v233 = *(v11 + 544);
                  }

                  syslog(3, "%lld %d AVE %s: %s: Added (%d, %d) to SurfaceID dict, %p %lld %d", v116, 13, v117);
                  v76 = v114;
                }
              }

              sub_13DC4C(*(v11 + 624));
              if (!v8)
              {
                texture = v76;
                v315 = v10;
                v126 = *(v11 + 16);
                if (v126 == 1)
                {
                  Count = 0;
                  v354 = 12288;
                  goto LABEL_142;
                }

                v312 = v11;
                Count = 0;
                goto LABEL_131;
              }

              v120 = CFArrayGetTypeID();
              if (v120 == CFGetTypeID(v8))
              {
                texture = v76;
                v312 = v11;
                v315 = v10;
                Count = CFArrayGetCount(v8);
                if (Count >= 3)
                {
                  if (sub_160EF0(0xDu, 4))
                  {
                    v134 = sub_160F34(0xDu);
                    v135 = sub_175AE4();
                    v136 = sub_160F68(4);
                    if (v134)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | Wrong reference number %d (<= %d) %p %lld %d %p-%d\n", v135, 13, v136, "AVE_Session_GGM_Process2", 1722, "iRefNum >= 0 && iRefNum <= 2", Count, 2, v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608));
                      v135 = sub_175AE4();
                      v136 = sub_160F68(4);
                    }

                    v292 = *(v11 + 608);
                    v260 = *(v11 + 544);
                    v273 = *(v11 + 16);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong reference number %d (<= %d) %p %lld %d %p-%d", v135, 13, v136, "AVE_Session_GGM_Process2", 1722, "iRefNum >= 0 && iRefNum <= 2");
                    goto LABEL_47;
                  }

                  goto LABEL_227;
                }

                if (sub_160EF0(0xDu, 7))
                {
                  v122 = sub_160F34(0xDu);
                  v123 = sub_175AE4();
                  v124 = sub_160F68(7);
                  if (v122)
                  {
                    printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, RefNum: %d, %p %lld\n", v123, 13, v124, "AVE_Session_GGM_Process2", *(v11 + 16), *(v11 + 608), Count, v11, *(v11 + 544));
                    v123 = sub_175AE4();
                    v124 = sub_160F68(7);
                    v125 = *(v11 + 544);
                    v217 = *(v11 + 608);
                    v211 = *(v11 + 16);
                  }

                  else
                  {
                    v251 = *(v11 + 544);
                  }

                  syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, RefNum: %d, %p %lld", v123, 13, v124);
                }

                v156 = v8;
                if (Count == 2)
                {
                  goto LABEL_172;
                }

                if (*(v11 + 16) == 1)
                {
                  v354 = 12288;
                }

                v156 = v8;
                if (Count)
                {
LABEL_172:
                  v157 = 0;
                  v158 = &v353;
                  while (1)
                  {
                    memset(v333, 0, 80);
                    ValueAtIndex = CFArrayGetValueAtIndex(v156, v157);
                    if (!ValueAtIndex || (v160 = VTDeghostingFrameBufferGetTypeID(), v160 != CFGetTypeID(ValueAtIndex)))
                    {
                      if (!sub_160EF0(0xDu, 4))
                      {
                        goto LABEL_227;
                      }

                      v180 = sub_160F34(0xDu);
                      v181 = sub_175AE4();
                      v182 = sub_160F68(4);
                      if (v180)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | Failed to get frame buffer for ref(%d) %p %p, %p %lld %d %p-%d\n", v181, 13, v182, "AVE_Session_GGM_Process2", 1743, "pReferenceFramesBuffer[i] != __null && VTDeghostingFrameBufferGetTypeID() == CFGetTypeID(pReferenceFramesBuffer[i])", v157, ValueAtIndex, v8, v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608));
                        v181 = sub_175AE4();
                        v182 = sub_160F68(4);
                        v293 = v315;
                        v301 = *(v312 + 608);
                        v277 = *(v312 + 544);
                        v289 = *(v312 + 16);
                      }

                      else
                      {
                        v301 = *(v312 + 608);
                        v289 = *(v312 + 16);
                        v293 = v315;
                        v277 = *(v312 + 544);
                      }

                      v252 = v8;
                      v261 = v312;
                      v224 = v157;
                      v236 = ValueAtIndex;
                      v213 = 1743;
                      v219 = "pReferenceFramesBuffer[i] != __null && VTDeghostingFrameBufferGetTypeID() == CFGetTypeID(pReferenceFramesBuffer[i])";
                      v206 = v182;
                      v183 = "%lld %d AVE %s: %s:%d %s | Failed to get frame buffer for ref(%d) %p %p, %p %lld %d %p-%d";
LABEL_221:
                      syslog(3, v183, v181, 13, v206, "AVE_Session_GGM_Process2", v213, v219, v224, v236, v252, v261, v277, v289, v293, v301);
                      goto LABEL_227;
                    }

                    v161 = VTDeghostingFrameBufferGetParameters();
                    if (!v161 || (v162 = CFDictionaryGetTypeID(), v162 != CFGetTypeID(v161)))
                    {
                      if (!sub_160EF0(0xDu, 4))
                      {
                        goto LABEL_227;
                      }

                      v184 = sub_160F34(0xDu);
                      v181 = sub_175AE4();
                      v185 = sub_160F68(4);
                      if (v184)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | Failed to get frame dict for ref(%d) %p %p, %p %lld %d %p-%d\n", v181, 13, v185, "AVE_Session_GGM_Process2", 1751, "pReferenceFramesDict[i] != __null && CFDictionaryGetTypeID() == CFGetTypeID(pReferenceFramesDict[i])", v157, v161, v8, v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608));
                        v181 = sub_175AE4();
                        v185 = sub_160F68(4);
                        v293 = v315;
                        v301 = *(v312 + 608);
                        v277 = *(v312 + 544);
                        v289 = *(v312 + 16);
                      }

                      else
                      {
                        v301 = *(v312 + 608);
                        v289 = *(v312 + 16);
                        v293 = v315;
                        v277 = *(v312 + 544);
                      }

                      v252 = v8;
                      v261 = v312;
                      v224 = v157;
                      v236 = v161;
                      v213 = 1751;
                      v219 = "pReferenceFramesDict[i] != __null && CFDictionaryGetTypeID() == CFGetTypeID(pReferenceFramesDict[i])";
                      v206 = v185;
                      v183 = "%lld %d AVE %s: %s:%d %s | Failed to get frame dict for ref(%d) %p %p, %p %lld %d %p-%d";
                      goto LABEL_221;
                    }

                    v163 = sub_15E9C(v11, v161, v158, v157, v333);
                    if (v163)
                    {
                      break;
                    }

                    v164 = sub_14114(v11, v161, (v158 - 80), &v330, v333[0].f64);
                    if (v164)
                    {
                      v25 = v164;
                      if (!sub_160EF0(0xDu, 4))
                      {
                        goto LABEL_228;
                      }

                      v194 = sub_160F34(0xDu);
                      v190 = sub_175AE4();
                      v195 = sub_160F68(4);
                      v196 = *(v312 + 608);
                      if (v194)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | Failed to parse bounding box from frame dict for ref(%d) %p, %p %lld %d %p-%d %d\n", v190, 13, v195, "AVE_Session_GGM_Process2", 1768, "ret == 0", v157, v161, v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608), v25);
                        v190 = sub_175AE4();
                        v195 = sub_160F68(4);
                        v295 = *(v312 + 608);
                        v302 = v25;
                        v279 = *(v312 + 16);
                        v290 = v315;
                        v253 = v312;
                        v263 = *(v312 + 544);
                        v225 = v157;
                        v237 = v161;
                      }

                      else
                      {
                        v295 = *(v312 + 608);
                        v302 = v25;
                        v279 = *(v312 + 16);
                        v290 = v315;
                        v263 = *(v312 + 544);
                        v237 = v161;
                        v253 = v312;
                        v225 = v157;
                      }

                      v214 = 1768;
                      v207 = v195;
                      v193 = "%lld %d AVE %s: %s:%d %s | Failed to parse bounding box from frame dict for ref(%d) %p, %p %lld %d %p-%d %d";
                      goto LABEL_225;
                    }

                    v165 = v330;
                    *(v158 - 355) = v330;
                    *(v158 - 354) = v165;
                    v166 = VTDeghostingFrameBufferGetFrame();
                    v356[v157] = v166;
                    if (!v166 || (v167 = v166, !CVPixelBufferGetIOSurface(v166)))
                    {
                      if (sub_160EF0(0xDu, 4))
                      {
                        v186 = sub_160F34(0xDu);
                        v187 = sub_175AE4();
                        v188 = sub_160F68(4);
                        if (v186)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | Failed to get frame buffer for ref(%d) %p, %p %lld %d %p-%d\n", v187, 13, v188, "AVE_Session_GGM_Process2", 1780, "pReferenceFramesBuf[i] != __null && CVPixelBufferGetIOSurface(pReferenceFramesBuf[i]) != __null", v157, v161, v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608));
                          v187 = sub_175AE4();
                          v188 = sub_160F68(4);
                          v294 = *(v312 + 608);
                          v262 = *(v312 + 544);
                          v278 = *(v312 + 16);
                        }

                        else
                        {
                          v297 = *(v312 + 608);
                          v281 = *(v312 + 16);
                          v265 = *(v312 + 544);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get frame buffer for ref(%d) %p, %p %lld %d %p-%d", v187, 13, v188, "AVE_Session_GGM_Process2", 1780, "pReferenceFramesBuf[i] != __null && CVPixelBufferGetIOSurface(pReferenceFramesBuf[i]) != __null", v157);
                      }

                      goto LABEL_227;
                    }

                    if (*(v11 + 16) == 1)
                    {
                      v168 = CVPixelBufferGetIOSurface(v167);
                      v169 = IOSurfaceGetID(v168);
                      sub_13DC18(*(v11 + 624));
                      v170 = CFDictionaryGetValue(*(v11 + 616), v169);
                      sub_13DC4C(*(v11 + 624));
                      v171 = *(v11 + 608) - v170;
                      if (v171 < 1 || v171 > *(v11 + 12016))
                      {
                        if (sub_160EF0(0xDu, 4))
                        {
                          v197 = sub_160F34(0xDu);
                          v198 = sub_175AE4();
                          v199 = sub_160F68(4);
                          if (v197)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | Failed to get frame number and index for ref(%d) %d-%d %d, %p, %p %lld %d %p-%d\n", v198, 13, v199, "AVE_Session_GGM_Process2", 1800, "iRefIdxTemp > 0 && iRefIdxTemp <= pINS->VideoParamsDriver.iMaximumReferenceFrameDistance", v157, v170, v171, *(v312 + 12016), v167, v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608));
                            v198 = sub_175AE4();
                            v199 = sub_160F68(4);
                            v308 = *(v312 + 608);
                            v296 = *(v312 + 544);
                            v303 = *(v312 + 16);
                          }

                          else
                          {
                            v309 = *(v312 + 608);
                            v304 = *(v312 + 16);
                            v298 = *(v312 + 544);
                          }

                          v264 = *(v312 + 12016);
                          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get frame number and index for ref(%d) %d-%d %d, %p, %p %lld %d %p-%d", v198, 13, v199, "AVE_Session_GGM_Process2", 1800, "iRefIdxTemp > 0 && iRefIdxTemp <= pINS->VideoParamsDriver.iMaximumReferenceFrameDistance", v157, v170);
                        }

                        goto LABEL_227;
                      }

                      *(v158 - 356) = v171;
                      v156 = v8;
                      if (sub_160EF0(0xDu, 6))
                      {
                        v172 = sub_160F34(0xDu);
                        v173 = sub_175AE4();
                        v174 = sub_160F68(6);
                        v175 = *(v11 + 16);
                        v176 = *(v11 + 608);
                        v177 = *(v11 + 544);
                        v11 = v312;
                        if (v172)
                        {
                          printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, Ref Index: %d, %p %lld\n", v173, 13, v174, "AVE_Session_GGM_Process2", v175, v176, v157, v171, v312, v177);
                          v178 = sub_175AE4();
                          v179 = sub_160F68(6);
                          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, Ref Index: %d, %p %lld", v178, 13, v179, "AVE_Session_GGM_Process2", *(v312 + 16), *(v312 + 608), v157, v171, v312, *(v312 + 544));
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, Ref Index: %d, %p %lld", v173, 13, v174, "AVE_Session_GGM_Process2", v175, v176, v157, v171, v312, v177);
                        }

                        v156 = v8;
                      }
                    }

                    ++v157;
                    v158 += 94;
                    if ((Count & 3) == v157)
                    {
                      goto LABEL_190;
                    }
                  }

                  v25 = v163;
                  if (!sub_160EF0(0xDu, 4))
                  {
                    goto LABEL_228;
                  }

                  v189 = sub_160F34(0xDu);
                  v190 = sub_175AE4();
                  v191 = sub_160F68(4);
                  v192 = *(v312 + 608);
                  if (v189)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | Failed to parse homography matrix from frame dict for ref(%d) %p, %p %lld %d %p-%d %d\n", v190, 13, v191, "AVE_Session_GGM_Process2", 1759, "ret == 0", v157, v161, v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608), v25);
                    v190 = sub_175AE4();
                    v191 = sub_160F68(4);
                    v295 = *(v312 + 608);
                    v302 = v25;
                    v279 = *(v312 + 16);
                    v290 = v315;
                    v253 = v312;
                    v263 = *(v312 + 544);
                    v225 = v157;
                    v237 = v161;
                  }

                  else
                  {
                    v295 = *(v312 + 608);
                    v302 = v25;
                    v279 = *(v312 + 16);
                    v290 = v315;
                    v263 = *(v312 + 544);
                    v237 = v161;
                    v253 = v312;
                    v225 = v157;
                  }

                  v214 = 1759;
                  v207 = v191;
                  v193 = "%lld %d AVE %s: %s:%d %s | Failed to parse homography matrix from frame dict for ref(%d) %p, %p %lld %d %p-%d %d";
LABEL_225:
                  syslog(3, v193, v190, 13, v207, "AVE_Session_GGM_Process2", v214, "ret == 0", v225, v237, v253, v263, v279, v290, v295, v302);
                  goto LABEL_228;
                }

LABEL_190:
                v126 = *(v11 + 16);
LABEL_131:
                if (v126 != 2)
                {
                  v11 = v312;
                  goto LABEL_142;
                }

                if (v332)
                {
                  v11 = v312;
                  v129 = sub_13CE4(v312, &v332, 0);
                  if (v129)
                  {
                    v25 = v129;
                    if (!sub_160EF0(0xDu, 4))
                    {
                      v10 = v315;
                      goto LABEL_48;
                    }

                    v130 = sub_160F34(0xDu);
                    v41 = sub_175AE4();
                    v131 = sub_160F68(4);
                    v132 = *(v312 + 608);
                    if (v130)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | Failed to verify pDestinationBuffer %p %lld %d %p-%d %p\n", v41, 13, v131, "AVE_Session_GGM_Process2", 1832, "ret == 0", v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608), v332);
                      v44 = sub_175AE4();
                      v133 = sub_160F68(4);
                      v267 = *(v312 + 608);
                      v283 = v332;
                      v240 = *(v312 + 16);
                      v255 = v315;
                      v220 = v312;
                      v226 = *(v312 + 544);
                      v208 = 1832;
                      v10 = v315;
                      v203 = v133;
                      v46 = "%lld %d AVE %s: %s:%d %s | Failed to verify pDestinationBuffer %p %lld %d %p-%d %p";
                      goto LABEL_39;
                    }

                    v269 = *(v312 + 608);
                    v284 = v332;
                    v10 = v315;
                    v244 = *(v312 + 16);
                    v256 = v315;
                    v222 = v312;
                    v229 = *(v312 + 544);
                    v209 = 1832;
                    v204 = v131;
                    v67 = "%lld %d AVE %s: %s:%d %s | Failed to verify pDestinationBuffer %p %lld %d %p-%d %p";
                    goto LABEL_69;
                  }

LABEL_142:
                  v316[1] = CVPixelBufferRetain(pixelBuffer);
                  v318[0] = CVPixelBufferRetain(texture);
                  if (*(v11 + 16) == 2)
                  {
                    if (Count >= 1)
                    {
                      v137 = &v318[1];
                      v138 = Count;
                      v139 = v356;
                      do
                      {
                        v140 = *v139++;
                        *v137++ = CVPixelBufferRetain(v140);
                        --v138;
                      }

                      while (v138);
                    }

                    v141 = CVPixelBufferGetIOSurface(pixelBuffer);
                    v142 = IOSurfaceGetID(v141);
                    v143 = CVPixelBufferGetIOSurface(v332);
                    if (v142 != IOSurfaceGetID(v143))
                    {
                      cf[1] = CVPixelBufferRetain(v332);
                    }
                  }

                  DWORD2(v327) = *(v11 + 608);
                  *&v325 = v355;
                  *(&v325 + 1) = v347;
                  v316[0] = v315;
                  *(&v324 + 1) = v328;
                  if (sub_160EF0(0xDu, 6))
                  {
                    v144 = sub_160F34(0xDu);
                    v145 = sub_175AE4();
                    v146 = sub_160F68(6);
                    if (v144)
                    {
                      printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, GG Num: %d, HW flag: 0x%x, FFWGG: %d, %p, %lld\n", v145, 13, v146, "AVE_Session_GGM_Process2", *(v11 + 16), *(v11 + 608), v349, *(v11 + 756), (v351 >> 9) & 1, v11, *(v11 + 544));
                      v145 = sub_175AE4();
                      v146 = sub_160F68(6);
                      v274 = *(v11 + 544);
                      v234 = *(v11 + 756);
                      v218 = *(v11 + 608);
                      v212 = *(v11 + 16);
                    }

                    syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, GG Num: %d, HW flag: 0x%x, FFWGG: %d, %p, %lld", v145, 13, v146, "AVE_Session_GGM_Process2");
                  }

                  v25 = sub_12D95C(*(v11 + 568), v316);
                  if (!v25)
                  {
                    ++*(v11 + 608);
                    v10 = v315;
LABEL_58:
                    if (sub_160EF0(0xDu, 7))
                    {
                      v57 = sub_160F34(0xDu);
                      v58 = sub_175AE4();
                      v59 = sub_160F68(7);
                      if (v57)
                      {
                        printf("%lld %d AVE %s: %s: %p %lld %d %p-%d %d\n", v58, 13, v59, "AVE_Session_GGM_Process2", v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608), v25);
                        v58 = sub_175AE4();
                        v59 = sub_160F68(7);
                        v60 = *(v11 + 544);
                        v242 = *(v11 + 608);
                        v221 = *(v11 + 16);
                      }

                      else
                      {
                        v243 = *(v11 + 608);
                      }

                      syslog(3, "%lld %d AVE %s: %s: %p %lld %d %p-%d %d", v58, 13, v59);
                    }

                    goto LABEL_17;
                  }

                  if (!sub_160EF0(0xDu, 4))
                  {
                    v10 = v315;
                    goto LABEL_48;
                  }

                  v147 = sub_160F34(0xDu);
                  v41 = sub_175AE4();
                  v148 = sub_160F68(4);
                  v149 = *(v11 + 608);
                  if (v147)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | Failed to process driver %p %lld %d %p-%d %d\n", v41, 13, v148, "AVE_Session_GGM_Process2", 1872, "ret == 0", v11, *(v11 + 544), *(v11 + 16), v315, *(v11 + 608), v25);
                    v150 = sub_175AE4();
                    v151 = sub_160F68(4);
                    v152 = *(v11 + 544);
                    v275 = *(v11 + 608);
                    v10 = v315;
                    v249 = *(v11 + 16);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to process driver %p %lld %d %p-%d %d", v150, 13, v151, "AVE_Session_GGM_Process2", 1872);
                    goto LABEL_48;
                  }

                  v269 = *(v11 + 608);
                  v284 = v25;
                  v10 = v315;
                  v244 = *(v11 + 16);
                  v256 = v315;
                  v222 = v11;
                  v229 = *(v11 + 544);
                  v209 = 1872;
                  v204 = v148;
                  v67 = "%lld %d AVE %s: %s:%d %s | Failed to process driver %p %lld %d %p-%d %d";
                  goto LABEL_69;
                }

                if (sub_160EF0(0xDu, 4))
                {
                  v153 = sub_160F34(0xDu);
                  v154 = sub_175AE4();
                  v155 = sub_160F68(4);
                  if (v153)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | pDestinationBuffer is NULL %p %lld %d %p-%d\n", v154, 13, v155, "AVE_Session_GGM_Process2", 1826, "pDestinationBuffer != __null", v312, *(v312 + 544), *(v312 + 16), v315, *(v312 + 608));
                    v154 = sub_175AE4();
                    v155 = sub_160F68(4);
                    v276 = *(v312 + 608);
                    v235 = *(v312 + 544);
                    v250 = *(v312 + 16);
                    v10 = v315;
                  }

                  else
                  {
                    v10 = v315;
                    v280 = *(v312 + 608);
                    v238 = *(v312 + 544);
                    v254 = *(v312 + 16);
                  }

                  v11 = v312;
                  syslog(3, "%lld %d AVE %s: %s:%d %s | pDestinationBuffer is NULL %p %lld %d %p-%d", v154, 13, v155, "AVE_Session_GGM_Process2", 1826);
                  goto LABEL_47;
                }

LABEL_227:
                v25 = 4294966295;
LABEL_228:
                v11 = v312;
                v10 = v315;
                goto LABEL_48;
              }

              if (sub_160EF0(0xDu, 4))
              {
                v127 = sub_160F34(0xDu);
                v103 = sub_175AE4();
                v128 = sub_160F68(4);
                if (v127)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Failed to get reference frame array %p, %p %lld %d %p-%d\n", v103, 13, v128, "AVE_Session_GGM_Process2", 1715, "CFArrayGetTypeID() == CFGetTypeID(pReferenceFramesArray)", v8, v11, *(v11 + 544), *(v11 + 16), v10, *(v11 + 608));
                  v103 = sub_175AE4();
                  v128 = sub_160F68(4);
                }

                v272 = v10;
                v286 = *(v11 + 608);
                v247 = *(v11 + 544);
                v258 = *(v11 + 16);
                v223 = v8;
                v232 = v11;
                v210 = 1715;
                v215 = "CFArrayGetTypeID() == CFGetTypeID(pReferenceFramesArray)";
                v205 = v128;
                v105 = "%lld %d AVE %s: %s:%d %s | Failed to get reference frame array %p, %p %lld %d %p-%d";
LABEL_100:
                syslog(3, v105, v103, 13, v205, "AVE_Session_GGM_Process2", v210, v215, v223, v232, v247, v258, v272, v286, v291, v299, v305, v306, v310);
              }
            }

            else if (sub_160EF0(0xDu, 4))
            {
              v94 = sub_160F34(0xDu);
              v314 = sub_175AE4();
              v95 = sub_160F68(4);
              v96 = sub_116BC(v77);
              v97 = HIBYTE(v96);
              v98 = BYTE2(v96);
              v99 = BYTE1(v96);
              v100 = v96;
              if (!v94)
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid border pixels attributes: %c%c%c%c, %dx%d, %p %lld %d %p-%d", v314, 13, v95, "AVE_Session_GGM_Process2", 1656, "iBorderPixelsWidth == (256 * 32) && iBorderPixelsHeight == 5 && iBorderPixelsFormatType == kCVPixelFormatType_OneComponent8", HIBYTE(v96), BYTE2(v96), BYTE1(v96), v96);
                goto LABEL_47;
              }

              v307 = v10;
              v101 = v10;
              v102 = Width;
              printf("%lld %d AVE %s: %s:%d %s | Invalid border pixels attributes: %c%c%c%c, %dx%d, %p %lld %d %p-%d\n", v314, 13, v95, "AVE_Session_GGM_Process2", 1656, "iBorderPixelsWidth == (256 * 32) && iBorderPixelsHeight == 5 && iBorderPixelsFormatType == kCVPixelFormatType_OneComponent8", HIBYTE(v96), BYTE2(v96), BYTE1(v96), v96, Width, v80, v11, *(v11 + 544), *(v11 + 16), v307, *(v11 + 608));
              v103 = sub_175AE4();
              v104 = sub_160F68(4);
              v306 = v101;
              v310 = *(v11 + 608);
              v299 = *(v11 + 544);
              v305 = *(v11 + 16);
              v286 = v80;
              v291 = v11;
              v258 = v100;
              v272 = v102;
              v10 = v101;
              v232 = v98;
              v247 = v99;
              v215 = "iBorderPixelsWidth == (256 * 32) && iBorderPixelsHeight == 5 && iBorderPixelsFormatType == kCVPixelFormatType_OneComponent8";
              v223 = v97;
              v210 = 1656;
              v205 = v104;
              v105 = "%lld %d AVE %s: %s:%d %s | Invalid border pixels attributes: %c%c%c%c, %dx%d, %p %lld %d %p-%d";
              goto LABEL_100;
            }

LABEL_47:
            v25 = 4294966295;
            goto LABEL_48;
          }

          v32 = 1024;
        }

        *(v11 + 756) = v32;
        v354 = v32;
        goto LABEL_33;
      }
    }
  }

  if (sub_160EF0(0xDu, 4))
  {
    v21 = sub_160F34(0xDu);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | %s Wrong parameter %p %p %p %p %p 0x%x %p\n", v22, 13, v23, "AVE_Session_GGM_Process2", 1541, "pINS != __null && pCurrentFrameBuffer != __null && VTDeghostingFrameBufferGetTypeID() == CFGetTypeID(pCurrentFrameBuffer)", "AVE_Session_GGM_Process2", v11, v10, v8, v6, v332, v4, v2);
      v24 = sub_175AE4();
      v201 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %s Wrong parameter %p %p %p %p %p 0x%x %p", v24, 13, v201, "AVE_Session_GGM_Process2", 1541, "pINS != __null && pCurrentFrameBuffer != __null && VTDeghostingFrameBufferGetTypeID() == CFGetTypeID(pCurrentFrameBuffer)", "AVE_Session_GGM_Process2", v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | %s Wrong parameter %p %p %p %p %p 0x%x %p", v22, 13, v23, "AVE_Session_GGM_Process2", 1541, "pINS != __null && pCurrentFrameBuffer != __null && VTDeghostingFrameBufferGetTypeID() == CFGetTypeID(pCurrentFrameBuffer)", "AVE_Session_GGM_Process2", v11);
    }
  }

  v25 = 4294966295;
LABEL_17:
  if (sub_160EF0(0xDu, 7))
  {
    v26 = sub_160F34(0xDu);
    v27 = sub_175AE4();
    v28 = sub_160F68(7);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v27, 13, v28, "AVE_Session_GGM_Process2", v11, v25);
      v29 = sub_175AE4();
      v202 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v29, 13, v202, "AVE_Session_GGM_Process2", v11, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v27, 13, v28, "AVE_Session_GGM_Process2", v11, v25);
    }
  }

  return v25;
}

uint64_t sub_13CE4(size_t a1, const void **a2, int a3)
{
  v47 = 0;
  if (!*a2)
  {
    if (!sub_160EF0(0xDu, 4))
    {
      return 4294966295;
    }

    v26 = sub_160F34(0xDu);
    v19 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p\n", v19, 13, v27, "AVE_GGM_VerifyImageBuffer", 976, "pINS != __null && pImgBuf != __null", a1, *a2);
      v28 = sub_175AE4();
      sub_160F68(4);
      v29 = *a2;
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p", v28, 13);
      return 4294966295;
    }

    v38 = a1;
    v40 = *a2;
    v36 = 976;
    v37 = "pINS != __null && pImgBuf != __null";
    v35 = v27;
    v30 = "%lld %d AVE %s: %s:%d %s | Wrong parameter %p %p";
    goto LABEL_20;
  }

  if (CVPixelBufferGetWidth(*a2) != *(a1 + 1480) || (v6 = CVPixelBufferGetHeight(*a2), v7 = *(a1 + 1484), v6 != v7))
  {
    if (!sub_160EF0(0xDu, 4))
    {
      return 4294966295;
    }

    v18 = sub_160F34(0xDu);
    v19 = sub_175AE4();
    v20 = sub_160F68(4);
    Width = CVPixelBufferGetWidth(*a2);
    Height = CVPixelBufferGetHeight(*a2);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | Wrong parameter, buffer size (%zux%zu) is not matching with (%dx%d) %p %p\n", v19, 13, v20, "AVE_GGM_VerifyImageBuffer", 982, "CVPixelBufferGetWidth(pImgBuf) == pINS->VideoParams.ui32Width && CVPixelBufferGetHeight(pImgBuf) == pINS->VideoParams.ui32Height", Width, Height, *(a1 + 1480), *(a1 + 1484), a1, *a2);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      CVPixelBufferGetWidth(*a2);
      CVPixelBufferGetHeight(*a2);
      v25 = *a2;
      v42 = *(a1 + 1480);
      v44 = *(a1 + 1484);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter, buffer size (%zux%zu) is not matching with (%dx%d) %p %p", v23, 13, v24, "AVE_GGM_VerifyImageBuffer", 982);
      return 4294966295;
    }

    v45 = a1;
    v46 = *a2;
    v41 = *(a1 + 1480);
    v43 = *(a1 + 1484);
    v38 = Width;
    v40 = Height;
    v36 = 982;
    v37 = "CVPixelBufferGetWidth(pImgBuf) == pINS->VideoParams.ui32Width && CVPixelBufferGetHeight(pImgBuf) == pINS->VideoParams.ui32Height";
    v35 = v20;
    v30 = "%lld %d AVE %s: %s:%d %s | Wrong parameter, buffer size (%zux%zu) is not matching with (%dx%d) %p %p";
LABEL_20:
    syslog(3, v30, v19, 13, v35, "AVE_GGM_VerifyImageBuffer", v36, v37, v38, v40, v41, v43, v45, v46, v47);
    return 4294966295;
  }

  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v8 = *(a1 + 536);
  v48[2] = *(a1 + 552);
  v48[3] = v8;
  v9 = *(a1 + 10812);
  v48[4] = *(a1 + 756);
  v48[5] = v9;
  v10 = *(a1 + 680);
  if (v10 <= 0)
  {
    v10 = *(a1 + 1480);
  }

  if (*(a1 + 684) > 0)
  {
    LODWORD(v7) = *(a1 + 684);
  }

  v48[0] = v10;
  v48[1] = v7;
  v11 = sub_DCDC0(v48, a2, &v47);
  if (v11)
  {
    v12 = v11;
    if (sub_160EF0(0xDu, 4))
    {
      v13 = sub_160F34(0xDu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to verify pImgBuf %p %d\n", v14, 13, v15, "AVE_GGM_VerifyImageBuffer", 997, "ret == 0", *a2, v12);
        v14 = sub_175AE4();
        sub_160F68(4);
        v17 = *a2;
      }

      else
      {
        v39 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to verify pImgBuf %p %d", v14, 13);
    }
  }

  else if (a3)
  {
    v32 = HIDWORD(v52);
    if (HIDWORD(v52) == 3)
    {
      *(a1 + 10244) = 1;
      *(a1 + 10569) = BYTE4(v53);
    }

    v12 = 0;
    v33 = DWORD2(v51);
    *(a1 + 10808) = DWORD1(v51);
    v34 = v52;
    *(a1 + 10228) = v52;
    *(a1 + 10232) = v33;
    *(a1 + 10211) = v32 != 1;
    *(a1 + 10821) = 1;
    *(a1 + 12492) = v34;
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t sub_14114(int32x2_t *a1, CFDictionaryRef theDict, uint64_t a3, int *a4, double *a5)
{
  memset(&rect, 0, sizeof(rect));
  Value = CFDictionaryGetValue(theDict, kVTDeghostingFrameKey_BoundingBoxes);
  if (!Value || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    if (!sub_160EF0(0xDu, 4))
    {
LABEL_60:
      v219 = 0;
      goto LABEL_61;
    }

    v137 = sub_160F34(0xDu);
    v138 = sub_175AE4();
    v139 = sub_160F68(4);
    v140 = a1[2].u32[0];
    if (!v137)
    {
      v180 = a1[2].u32[0];
      v189 = a1[76].u32[0];
      v173 = a1[68];
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get bounding box array %p, %p %lld %d %d", v138, 13, v139, "AVE_GGM_ParseBBox");
      goto LABEL_60;
    }

    v141 = a4;
    printf("%lld %d AVE %s: %s:%d %s | Failed to get bounding box array %p, %p %lld %d %d\n", v138, 13, v139, "AVE_GGM_ParseBBox", 1140, "pBBoxArray != __null && CFArrayGetTypeID() == CFGetTypeID(pBBoxArray)", Value, a1, *&a1[68], a1[2].i32[0], a1[76].i32[0]);
    v142 = sub_175AE4();
    v143 = sub_160F68(4);
    v179 = a1[2].u32[0];
    v188 = a1[76].u32[0];
    v171 = a1;
    v172 = a1[68];
    v169 = "pBBoxArray != __null && CFArrayGetTypeID() == CFGetTypeID(pBBoxArray)";
    v170 = Value;
    v167 = 1140;
    v165 = v143;
    v144 = "%lld %d AVE %s: %s:%d %s | Failed to get bounding box array %p, %p %lld %d %d";
LABEL_58:
    a4 = v141;
    syslog(3, v144, v142, 13, v165, "AVE_GGM_ParseBBox", v167, v169, v170, v171, *&v172, v179, v188);
    goto LABEL_60;
  }

  v214 = Value;
  Count = CFArrayGetCount(Value);
  v12 = Count;
  if ((Count - 1) > 0x1F)
  {
    if (!sub_160EF0(0xDu, 4))
    {
      goto LABEL_60;
    }

    v145 = sub_160F34(0xDu);
    v146 = sub_175AE4();
    v147 = sub_160F68(4);
    v148 = a1[2].u32[0];
    if (!v145)
    {
      v183 = a1[2].u32[0];
      v192 = a1[76].u32[0];
      v176 = a1[68];
      syslog(3, "%lld %d AVE %s: %s:%d %s | Incorrect bounding box number (%d), %p %lld %d %d", v146, 13, v147, "AVE_GGM_ParseBBox");
      goto LABEL_60;
    }

    v141 = a4;
    printf("%lld %d AVE %s: %s:%d %s | Incorrect bounding box number (%d), %p %lld %d %d\n", v146, 13, v147, "AVE_GGM_ParseBBox", 1145, "iBBoxNumTemp > 0 && iBBoxNumTemp <= 32", v12, a1, *&a1[68], a1[2].i32[0], a1[76].i32[0]);
    v142 = sub_175AE4();
    v149 = sub_160F68(4);
    v179 = a1[2].u32[0];
    v188 = a1[76].u32[0];
    v171 = a1;
    v172 = a1[68];
    v169 = "iBBoxNumTemp > 0 && iBBoxNumTemp <= 32";
    v170 = v12;
    v167 = 1145;
    v165 = v149;
    v144 = "%lld %d AVE %s: %s:%d %s | Incorrect bounding box number (%d), %p %lld %d %d";
    goto LABEL_58;
  }

  v206 = a4;
  v13 = 0;
  v218 = 0;
  v219 = 0;
  v217 = Count & 0x7FFFFFFF;
  v14 = (a3 + 16);
  v210 = Count;
  v211 = Count;
  __asm { FMOV            V0.2D, #2.0 }

  v216 = _Q0;
  v204 = Count;
  v205 = Count;
  __asm { FMOV            V0.2D, #-1.0 }

  v209 = _Q0;
  v203 = Count;
  v202 = Count;
  v207 = Count;
  v208 = Count;
  v21 = Value;
  v212 = a5;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v21, v13);
    if (!ValueAtIndex)
    {
      if (sub_160EF0(0xDu, 4))
      {
        v150 = sub_160F34(0xDu);
        v151 = sub_175AE4();
        v152 = sub_160F68(4);
        v153 = a1[2].u32[0];
        if (v150)
        {
          printf("%lld %d AVE %s: %s:%d %s | Dictionary is NULL for BBox (%d), %p %lld %d %d\n", v151, 13, v152, "AVE_GGM_ParseBBox", 1154, "pBBoxDict != __null", v13, a1, *&a1[68], a1[2].i32[0], a1[76].i32[0]);
          v151 = sub_175AE4();
          v152 = sub_160F68(4);
        }

        v181 = a1[2].u32[0];
        v190 = a1[76].u32[0];
        v174 = a1[68];
        syslog(3, "%lld %d AVE %s: %s:%d %s | Dictionary is NULL for BBox (%d), %p %lld %d %d", v151, 13, v152, "AVE_GGM_ParseBBox");
      }

      goto LABEL_81;
    }

    if (!CGRectMakeWithDictionaryRepresentation(ValueAtIndex, &rect))
    {
      if (sub_160EF0(0xDu, 4))
      {
        v154 = sub_160F34(0xDu);
        v155 = sub_175AE4();
        v156 = sub_160F68(4);
        v157 = a1[2].u32[0];
        if (v154)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get CGRect for BBox (%d), %p %lld %d %d\n", v155, 13, v156, "AVE_GGM_ParseBBox", 1158, "CGRectMakeWithDictionaryRepresentation(pBBoxDict, &sBBox)", v13, a1, *&a1[68], a1[2].i32[0], a1[76].i32[0]);
          v155 = sub_175AE4();
          v156 = sub_160F68(4);
        }

        v182 = a1[2].u32[0];
        v191 = a1[76].u32[0];
        v175 = a1[68];
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get CGRect for BBox (%d), %p %lld %d %d", v155, 13, v156, "AVE_GGM_ParseBBox");
      }

LABEL_81:
      result = 4294966295;
      goto LABEL_82;
    }

    origin = rect.origin;
    size = rect.size;
    *(v14 - 1) = rect.origin;
    *v14 = vaddq_f64(origin, size);
    if (sub_160EF0(0xDu, 6))
    {
      v25 = sub_160F34(0xDu);
      v26 = sub_175AE4();
      v27 = sub_160F68(6);
      v28 = a1[2].i32[0];
      v29 = a1[76].i32[0];
      v30 = *(v14 - 2);
      v31 = *(v14 - 1);
      v32 = *v14;
      v33 = v14[1];
      v34 = a1[68];
      if (v25)
      {
        printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Original GG#%d(%d): %.15f-%.15f, %.15f-%.15f, %p %lld\n", v26, 13, v27, "AVE_GGM_ParseBBox", v28, v29, v13, v211, v30, v32, v31, v33, a1, *&v34);
        v35 = sub_175AE4();
        v36 = sub_160F68(6);
        v37 = *(v14 - 2);
        v38 = *(v14 - 1);
        syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Original GG#%d(%d): %.15f-%.15f, %.15f-%.15f, %p %lld", v35, 13, v36, "AVE_GGM_ParseBBox", a1[2].i32[0], a1[76].i32[0], v13, v211, v37, *v14, v38, v14[1], a1, *&a1[68]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Original GG#%d(%d): %.15f-%.15f, %.15f-%.15f, %p %lld", v26, 13, v27, "AVE_GGM_ParseBBox", v28, v29, v13, v210, v30, v32, v31, v33, a1, *&v34);
      }
    }

    v39 = *v14;
    v40 = v14[1];
    v41 = vbslq_s8(vcgtq_f64(v216, *(v14 - 2)), v216, *(v14 - 2));
    *(v14 - 2) = v41.f64[0];
    v42 = a1[185].u32[0] + -3.0;
    *(v14 - 1) = v41.f64[1];
    *&v43 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v41)));
    if (v42 < v39)
    {
      v39 = v42;
    }

    *v14 = v39;
    if (a1[185].u32[1] + -3.0 < v40)
    {
      v40 = a1[185].u32[1] + -3.0;
    }

    v14[1] = v40;
    v44.f64[0] = v39;
    v44.f64[1] = v40;
    *(&v43 + 1) = vadd_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(v44))), 0x100000001);
    v45 = a1[185];
    *v46.i8 = vadd_s32(v45, -1);
    v46.i64[1] = v46.i64[0];
    v47.i64[0] = 0x100000001;
    v47.i64[1] = 0x100000001;
    *v48.i8 = v45;
    v48.u64[1] = v45;
    v49.i64[0] = 0x100000001;
    v49.i64[1] = 0x100000001;
    v50 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(v46, v47)), v46, vaddq_s32(v48, v49)), v49);
    v47.i64[0] = 0x200000002;
    v47.i64[1] = 0x200000002;
    v51 = vmaxq_s32((v43 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v47);
    v52 = vminq_s32(v51, v50);
    v53 = vextq_s8(v51, v51, 8uLL).u64[0];
    if (a5)
    {
      v54 = vcgt_s32(*v52.i8, v53);
      v55 = ((v54.i32[0] | v54.i32[1]) & 1) == 0 && (v52.i32[2] - v52.i32[0] + 1) <= v45.i32[0] && (v52.i32[3] - v52.i32[1] + 1) <= v45.i32[1];
    }

    else
    {
      v55 = 0;
      if (a1[2].i32[0] == 1)
      {
        v56 = 928;
      }

      else
      {
        v56 = 832;
      }

      v57 = vcge_s32(v53, *v52.i8);
      if ((v57.i8[0] & 1) != 0 && (v57.i8[4] & 1) != 0 && v52.i32[2] - v52.i32[0] < v56)
      {
        v55 = v52.i32[3] - v52.i32[1] < v56;
      }
    }

    *(v14 + 16) = v55;
    if (v55)
    {
      v58 = (a3 + 40 * v218);
      if (a5 && a1[2].i32[0] == 1)
      {
        v60 = a5[7];
        v59 = a5[8];
        v61 = a5[4];
        v62 = a5[5];
        v63 = a5[6];
        v64 = *a5;
        v65 = a5[1];
        v67 = a5[2];
        v66 = a5[3];
        v68 = *a5 * (v61 * v59 - v62 * v60) - v65 * (v66 * v59 - v62 * v63) + v67 * (v66 * v60 - v61 * v63);
        v69 = 1.0 / v68;
        if (v68 == 0.0)
        {
          v69 = 0.0000001;
        }

        v70.f64[0] = (v61 * v59 - v60 * v62) * v69;
        v71 = (v67 * v60 - v65 * v59) * v69;
        v72.f64[0] = v65 * v62 - v67 * v61;
        v73 = (v62 * v63 - v66 * v59) * v69;
        v74 = (v64 * v59 - v67 * v63) * v69;
        v75 = v66 * v67 - v64 * v62;
        v76 = (v66 * v60 - v63 * v61) * v69;
        v77 = (v63 * v65 - v64 * v60) * v69;
        v78 = (v64 * v61 - v66 * v65) * v69;
        v79.f64[0] = v41.f64[1] * v71;
        v80 = v41.f64[1] * v74;
        *&v81 = v78 + v41.f64[1] * v77 + v76 * v41.f64[0];
        *&v82 = v78 + v41.f64[1] * v77 + v76 * v39;
        v83.f64[0] = v40 * v71;
        v84 = v40 * v74;
        v85 = v40 * v77;
        *&v86 = v78 + v85 + v76 * v41.f64[0];
        *&v87 = v78 + v85 + v76 * v39;
        v72.f64[1] = v75;
        v88 = vmulq_n_f64(v72, v69);
        v70.f64[1] = v73;
        v79.f64[1] = v80;
        v89 = vdivq_f64(vaddq_f64(v88, vmlaq_n_f64(v79, v70, v41.f64[0])), vdupq_lane_s64(v81, 0));
        v90 = vdivq_f64(vaddq_f64(v88, vmlaq_n_f64(v79, v70, v39)), vdupq_lane_s64(v82, 0));
        v83.f64[1] = v84;
        v91 = vdivq_f64(vaddq_f64(v88, vmlaq_n_f64(v83, v70, v41.f64[0])), vdupq_lane_s64(v86, 0));
        v92 = vdivq_f64(vaddq_f64(v88, vmlaq_n_f64(v83, v70, v39)), vdupq_lane_s64(v87, 0));
        v93 = vbslq_s8(vcgtq_f64(v90, v89), v89, v90);
        v94 = vbslq_s8(vcgtq_f64(v92, v91), v91, v92);
        v95 = vbslq_s8(vcgtq_f64(v94, v93), v93, v94);
        v96 = vaddq_f64(vcvtq_f64_f32(vcvt_f32_s32((*&vadd_s32(a1[185], 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0))), v209);
        v97 = vmaxnmq_f64(v95, 0);
        v98 = vbslq_s8(vcgtq_f64(v89, v90), v89, v90);
        v99 = vbslq_s8(vcgtq_f64(v91, v92), v91, v92);
        v100 = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v98, v99), v98, v99), 0);
        *(v14 - 1) = vbslq_s8(vcgtq_f64(v96, v97), v97, v96);
        *v14 = vbslq_s8(vcgtq_f64(v96, v100), v100, v96);
        if (sub_160EF0(0xDu, 6))
        {
          v101 = sub_160F34(0xDu);
          v102 = sub_175AE4();
          v103 = sub_160F68(6);
          v104 = a1[2].i32[0];
          v105 = a1[76].i32[0];
          v106 = *(v14 - 2);
          v107 = *(v14 - 1);
          v108 = *v14;
          v109 = v14[1];
          v110 = a1[68];
          if (v101)
          {
            printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Warped GG#%d-%d(%d): %.15f-%.15f, %.15f-%.15f, %p %lld\n", v102, 13, v103, "AVE_GGM_ParseBBox", v104, v105, v13, v218, v205, v106, v108, v107, v109, a1, *&v110);
            v111 = sub_175AE4();
            v112 = sub_160F68(6);
            v113 = *(v14 - 2);
            v114 = *(v14 - 1);
            v21 = v214;
            syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Warped GG#%d-%d(%d): %.15f-%.15f, %.15f-%.15f, %p %lld", v111, 13, v112, "AVE_GGM_ParseBBox", a1[2].i32[0], a1[76].i32[0], v13, v218, v205, v113, *v14, v114, v14[1], a1, *&a1[68]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Warped GG#%d-%d(%d): %.15f-%.15f, %.15f-%.15f, %p %lld", v102, 13, v103, "AVE_GGM_ParseBBox", v104, v105, v13, v218, v204, v106, v108, v107, v109, a1, *&v110);
          }
        }

        *(v58 + 16) = *(v14 + 16);
        v58[2] = 2 * ((*v14 + 1.0) * 0.5);
        __asm { FMOV            V1.2D, #0.5 }

        v130 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(*(v14 - 2), _Q1)));
        *v58 = vadd_s32(v130, v130);
        v58[3] = 2 * ((v14[1] + 1.0) * 0.5);
        if (sub_160EF0(0xDu, 6))
        {
          v131 = sub_160F34(0xDu);
          v132 = sub_175AE4();
          v133 = sub_160F68(6);
          if (v131)
          {
            printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Warped and aligned GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld\n", v132, 13, v133, "AVE_GGM_ParseBBox", a1[2].i32[0], a1[76].i32[0], v13, v218, v203, *v58, v58[2], v58[1], v58[3], *(v58 + 16), a1, *&a1[68]);
            v134 = sub_175AE4();
            v135 = sub_160F68(6);
            v201 = a1[68];
            v197 = v58[3];
            v199 = *(v58 + 16);
            v187 = v58[2];
            v195 = v58[1];
            v178 = *v58;
            a5 = v212;
            syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Warped and aligned GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld", v134, 13, v135, "AVE_GGM_ParseBBox", a1[2].u32[0], a1[76].u32[0]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Warped and aligned GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld", v132, 13, v133, "AVE_GGM_ParseBBox", a1[2].u32[0], a1[76].u32[0]);
          }
        }
      }

      else
      {
        *(v58 + 16) = v55;
        *v58 = v52;
        if (sub_160EF0(0xDu, 6))
        {
          v124 = sub_160F34(0xDu);
          v125 = sub_175AE4();
          v126 = sub_160F68(6);
          if (v124)
          {
            printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Aligned GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld\n", v125, 13, v126, "AVE_GGM_ParseBBox", a1[2].i32[0], a1[76].i32[0], v13, v218, v202, *v58, v58[2], v58[1], v58[3], *(v58 + 16), a1, *&a1[68]);
            v127 = sub_175AE4();
            v128 = sub_160F68(6);
            v200 = a1[68];
            v196 = v58[3];
            v198 = *(v58 + 16);
            v186 = v58[2];
            v194 = v58[1];
            v177 = *v58;
            a5 = v212;
            v166 = a1[2].u32[0];
            v168 = a1[76].u32[0];
            v164 = v128;
            v163 = v127;
          }

          else
          {
            v166 = a1[2].u32[0];
            v168 = a1[76].u32[0];
            v164 = v126;
            v163 = v125;
          }

          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Aligned GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld", v163, 13, v164, "AVE_GGM_ParseBBox", v166, v168);
        }
      }

      ++v218;
      ++v219;
    }

    else
    {
      v215 = v52;
      if (sub_160EF0(0xDu, 5))
      {
        v115 = sub_160F34(0xDu);
        v213 = sub_175AE4();
        v116 = sub_160F68(5);
        v117 = a1[2].i32[0];
        v118 = a1[76].i32[0];
        v119 = *(v14 + 16);
        v120 = a1[68];
        v121 = v215.i32[0];
        v122 = v215.i32[1];
        if (v115)
        {
          printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Invalid GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld\n", v213, 13, v116, "AVE_GGM_ParseBBox", v117, v118, v13, v218, v208, v215.i32[0], v215.i32[2], v215.i32[1], v215.i32[3], v119, a1, *&v120);
          v215.i64[0] = sub_175AE4();
          v123 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Invalid GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld", v215.i64[0], 13, v123, "AVE_GGM_ParseBBox", a1[2].i32[0], a1[76].i32[0], v13, v218, v208, v121, v215.i32[2], v122, v215.i32[3], *(v14 + 16), a1, *&a1[68]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Invalid GG#%d-%d(%d): %d-%d, %d-%d, %d, %p %lld", v213, 13, v116, "AVE_GGM_ParseBBox", v117, v118, v13, v218, v207, v215.i32[0], v215.i32[2], v215.i32[1], v215.i32[3], v119, a1, *&v120);
        }

        v21 = v214;
        a5 = v212;
      }

      *v14 = *(v14 + 16);
      *(v14 - 2) = 0.0;
      *(v14 - 1) = 0.0;
    }

    ++v13;
    v14 += 5;
  }

  while (v217 != v13);
  if ((v219 - 1) < 0x20)
  {
    result = 0;
LABEL_82:
    a4 = v206;
    goto LABEL_62;
  }

  a4 = v206;
  if (sub_160EF0(0xDu, 4))
  {
    v158 = sub_160F34(0xDu);
    v159 = sub_175AE4();
    v160 = sub_160F68(4);
    v161 = a1[2].u32[0];
    if (v158)
    {
      printf("%lld %d AVE %s: %s:%d %s | Incorrect valid bounding box number (%d), %p %lld %d %d\n", v159, 13, v160, "AVE_GGM_ParseBBox", 1275, "iValidBBoxNum > 0 && iValidBBoxNum <= 32", v219, a1, *&a1[68], a1[2].i32[0], a1[76].i32[0]);
      v159 = sub_175AE4();
      v160 = sub_160F68(4);
      v162 = a1[68];
      v184 = a1[2].u32[0];
      v193 = a1[76].u32[0];
    }

    else
    {
      v185 = a1[2].u32[0];
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Incorrect valid bounding box number (%d), %p %lld %d %d", v159, 13, v160, "AVE_GGM_ParseBBox");
  }

LABEL_61:
  result = 4294966295;
LABEL_62:
  *a4 = v219;
  return result;
}

uint64_t sub_150D8(CFIndex a1, CFDictionaryRef theDict, uint64_t a3, int a4)
{
  *valuePtr = 0;
  v96 = 0.0;
  Value = CFDictionaryGetValue(theDict, kVTDeghostingFrameKey_RepairWeights);
  if (!Value || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    if (sub_160EF0(0xDu, 4))
    {
      v43 = sub_160F34(0xDu);
      v44 = sub_175AE4();
      v45 = sub_160F68(4);
      v46 = *(a1 + 16);
      if (v43)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to get repair weight array %p, %p %lld %d %d\n", v44, 13, v45, "AVE_GGM_ParseWeight", 1309, "pRepairWeightArray != __null && CFArrayGetTypeID() == CFGetTypeID(pRepairWeightArray)", Value, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
      }

      v85 = *(a1 + 16);
      v88 = *(a1 + 608);
      v83 = *(a1 + 544);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get repair weight array %p, %p %lld %d %d", v44, 13, v45, "AVE_GGM_ParseWeight");
    }

    return 4294966295;
  }

  Count = CFArrayGetCount(Value);
  if (Count != a4)
  {
    if (sub_160EF0(0xDu, 4))
    {
      v47 = sub_160F34(0xDu);
      v48 = sub_175AE4();
      v49 = sub_160F68(4);
      v50 = *(a1 + 16);
      if (v47)
      {
        printf("%lld %d AVE %s: %s:%d %s | Repair weight number (%d) doesn't match bounding box number (%d), %p %lld %d %d\n", v48, 13, v49, "AVE_GGM_ParseWeight", 1316, "iRepairWeightNum == iBBoxNum", Count, a4, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
        v48 = sub_175AE4();
        v49 = sub_160F68(4);
      }

      v89 = *(a1 + 16);
      v92 = *(a1 + 608);
      v86 = *(a1 + 544);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Repair weight number (%d) doesn't match bounding box number (%d), %p %lld %d %d", v48, 13, v49, "AVE_GGM_ParseWeight");
    }

    return 4294966295;
  }

  if (a4 >= 1)
  {
    v10 = 0;
    v11 = kVTDeghostingBoundingBoxRepairOptionKey_EnableBlurFilter;
    v95 = kVTDeghostingBoundingBoxRepairOptionKey_StrongSpatialFilterWeight;
    v12 = (a3 + 1304);
    v94 = kVTDeghostingBoundingBoxRepairOptionKey_SpatialFilterWeight;
    key = kVTDeghostingBoundingBoxRepairOptionKey_SpatioTemporalFilterWeight;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
      if (!ValueAtIndex)
      {
        break;
      }

      v14 = ValueAtIndex;
      v15 = CFDictionaryGetTypeID();
      if (v15 != CFGetTypeID(v14))
      {
        break;
      }

      v16 = CFDictionaryGetValue(v14, v11);
      v17 = CFBooleanGetTypeID();
      if (v17 != CFGetTypeID(v16))
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v55 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v57 = sub_160F68(4);
        v58 = *(a1 + 16);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get blur filter enablement for BBox (%d), %p %lld %d %d\n", v56, 13, v57, "AVE_GGM_ParseWeight", 1334, "CFBooleanGetTypeID() == CFGetTypeID(pTempBool)", v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
        }

        v87 = *(a1 + 16);
        v90 = *(a1 + 608);
        v82 = a1;
        v84 = *(a1 + 544);
        v80 = "CFBooleanGetTypeID() == CFGetTypeID(pTempBool)";
        v81 = *&v10;
        v79 = 1334;
        v78 = v57;
        v59 = "%lld %d AVE %s: %s:%d %s | Failed to get blur filter enablement for BBox (%d), %p %lld %d %d";
LABEL_78:
        syslog(3, v59, v56, 13, v78, "AVE_GGM_ParseWeight", v79, v80, *&v81, v82, v84, v87, v90, v91);
        return 4294966295;
      }

      v12[96] = CFBooleanGetValue(v16);
      v18 = CFDictionaryGetValue(v14, v95);
      v19 = CFNumberGetTypeID();
      if (v19 != CFGetTypeID(v18))
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v60 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v61 = sub_160F68(4);
        v62 = *(a1 + 16);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get base color weight for BBox (%d), %p %lld %d %d\n", v56, 13, v61, "AVE_GGM_ParseWeight", 1343, "CFNumberGetTypeID() == CFGetTypeID(pTempNum)", v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v61 = sub_160F68(4);
        }

        v87 = *(a1 + 16);
        v90 = *(a1 + 608);
        v82 = a1;
        v84 = *(a1 + 544);
        v80 = "CFNumberGetTypeID() == CFGetTypeID(pTempNum)";
        v81 = *&v10;
        v79 = 1343;
        v78 = v61;
        v59 = "%lld %d AVE %s: %s:%d %s | Failed to get base color weight for BBox (%d), %p %lld %d %d";
        goto LABEL_78;
      }

      CFNumberGetValue(v18, kCFNumberFloatType, &valuePtr[1]);
      if (valuePtr[1] < 0.0 || valuePtr[1] > 1.0)
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v63 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v64 = sub_160F68(4);
        v65 = *(a1 + 16);
        if (v63)
        {
          printf("%lld %d AVE %s: %s:%d %s | Invalid base color weight (%f) for BBox (%d), %p %lld %d %d\n", v56, 13, v64, "AVE_GGM_ParseWeight", 1349, "fBaseColorWeight >= 0.0 && fBaseColorWeight <= 1.0", valuePtr[1], v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v64 = sub_160F68(4);
        }

        v90 = *(a1 + 16);
        v91 = *(a1 + 608);
        v84 = a1;
        v87 = *(a1 + 544);
        v82 = v10;
        v81 = valuePtr[1];
        v79 = 1349;
        v80 = "fBaseColorWeight >= 0.0 && fBaseColorWeight <= 1.0";
        v78 = v64;
        v59 = "%lld %d AVE %s: %s:%d %s | Invalid base color weight (%f) for BBox (%d), %p %lld %d %d";
        goto LABEL_78;
      }

      *v12 = vcvts_n_s32_f32(valuePtr[1], 0xAuLL);
      v20 = CFDictionaryGetValue(v14, v94);
      v21 = CFNumberGetTypeID();
      if (v21 != CFGetTypeID(v20))
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v66 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v67 = sub_160F68(4);
        v68 = *(a1 + 16);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get spatial weight for BBox (%d), %p %lld %d %d\n", v56, 13, v67, "AVE_GGM_ParseWeight", 1358, "CFNumberGetTypeID() == CFGetTypeID(pTempNum)", v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v67 = sub_160F68(4);
        }

        v87 = *(a1 + 16);
        v90 = *(a1 + 608);
        v82 = a1;
        v84 = *(a1 + 544);
        v80 = "CFNumberGetTypeID() == CFGetTypeID(pTempNum)";
        v81 = *&v10;
        v79 = 1358;
        v78 = v67;
        v59 = "%lld %d AVE %s: %s:%d %s | Failed to get spatial weight for BBox (%d), %p %lld %d %d";
        goto LABEL_78;
      }

      CFNumberGetValue(v20, kCFNumberFloatType, valuePtr);
      if (valuePtr[0] < 0.0 || valuePtr[0] > 1.0)
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v69 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v70 = sub_160F68(4);
        v71 = *(a1 + 16);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | Invalid spatial weight (%f) for BBox (%d), %p %lld %d %d\n", v56, 13, v70, "AVE_GGM_ParseWeight", 1364, "fSpatialWeight >= 0.0 && fSpatialWeight <= 1.0", valuePtr[0], v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v70 = sub_160F68(4);
        }

        v90 = *(a1 + 16);
        v91 = *(a1 + 608);
        v84 = a1;
        v87 = *(a1 + 544);
        v82 = v10;
        v81 = valuePtr[0];
        v79 = 1364;
        v80 = "fSpatialWeight >= 0.0 && fSpatialWeight <= 1.0";
        v78 = v70;
        v59 = "%lld %d AVE %s: %s:%d %s | Invalid spatial weight (%f) for BBox (%d), %p %lld %d %d";
        goto LABEL_78;
      }

      v12[32] = vcvts_n_s32_f32(valuePtr[0], 0xAuLL);
      v22 = CFDictionaryGetValue(v14, key);
      v23 = CFNumberGetTypeID();
      if (v23 != CFGetTypeID(v22))
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v72 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v73 = sub_160F68(4);
        v74 = *(a1 + 16);
        if (v72)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to get bounding box weight for BBox (%d), %p %lld %d %d\n", v56, 13, v73, "AVE_GGM_ParseWeight", 1373, "CFNumberGetTypeID() == CFGetTypeID(pTempNum)", v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v73 = sub_160F68(4);
        }

        v87 = *(a1 + 16);
        v90 = *(a1 + 608);
        v82 = a1;
        v84 = *(a1 + 544);
        v80 = "CFNumberGetTypeID() == CFGetTypeID(pTempNum)";
        v81 = *&v10;
        v79 = 1373;
        v78 = v73;
        v59 = "%lld %d AVE %s: %s:%d %s | Failed to get bounding box weight for BBox (%d), %p %lld %d %d";
        goto LABEL_78;
      }

      CFNumberGetValue(v22, kCFNumberFloatType, &v96);
      if (v96 < 0.0 || v96 > 1.0)
      {
        if (!sub_160EF0(0xDu, 4))
        {
          return 4294966295;
        }

        v75 = sub_160F34(0xDu);
        v56 = sub_175AE4();
        v76 = sub_160F68(4);
        v77 = *(a1 + 16);
        if (v75)
        {
          printf("%lld %d AVE %s: %s:%d %s | Invalid bounding box weight (%f) for BBox (%d), %p %lld %d %d\n", v56, 13, v76, "AVE_GGM_ParseWeight", 1379, "fBBoxWeight >= 0.0 && fBBoxWeight <= 1.0", v96, v10, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
          v56 = sub_175AE4();
          v76 = sub_160F68(4);
        }

        v90 = *(a1 + 16);
        v91 = *(a1 + 608);
        v84 = a1;
        v87 = *(a1 + 544);
        v82 = v10;
        v81 = v96;
        v79 = 1379;
        v80 = "fBBoxWeight >= 0.0 && fBBoxWeight <= 1.0";
        v78 = v76;
        v59 = "%lld %d AVE %s: %s:%d %s | Invalid bounding box weight (%f) for BBox (%d), %p %lld %d %d";
        goto LABEL_78;
      }

      v12[64] = vcvts_n_s32_f32(v96, 0xAuLL);
      if (sub_160EF0(0xDu, 6))
      {
        v24 = sub_160F34(0xDu);
        v25 = sub_175AE4();
        v26 = sub_160F68(6);
        v27 = *(a1 + 16);
        v28 = *(a1 + 608);
        v29 = v12[96];
        v30 = valuePtr[1];
        v31 = valuePtr[0];
        v32 = v96;
        v33 = *v12;
        v34 = v12[32];
        v35 = v12[64];
        v36 = *(a1 + 544);
        if (v24)
        {
          printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, GG#%d: %d, %f-%f-%f, %d-%d-%d, %p %lld\n", v25, 13, v26, "AVE_GGM_ParseWeight", v27, v28, v10, v29, v30, v31, v32, v33, v34, v35, a1, v36);
          v37 = sub_175AE4();
          v38 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, GG#%d: %d, %f-%f-%f, %d-%d-%d, %p %lld", v37, 13, v38, "AVE_GGM_ParseWeight", *(a1 + 16), *(a1 + 608), v10, v12[96], valuePtr[1], valuePtr[0], v96, *v12, v12[32], v12[64], a1, *(a1 + 544));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, GG#%d: %d, %f-%f-%f, %d-%d-%d, %p %lld", v25, 13, v26, "AVE_GGM_ParseWeight", v27, v28, v10, v29, v30, v31, v32, v33, v34, v35, a1, v36);
        }
      }

      ++v10;
      ++v12;
      if (a4 == v10)
      {
        if (a4 > 31)
        {
          return 0;
        }

        goto LABEL_24;
      }
    }

    if (sub_160EF0(0xDu, 4))
    {
      v51 = sub_160F34(0xDu);
      v52 = sub_175AE4();
      v53 = sub_160F68(4);
      v54 = *(a1 + 16);
      if (v51)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to get repair weight dict for BBox (%d), %p %p %lld %d %d\n", v52, 13, v53, "AVE_GGM_ParseWeight", 1326, "pRepairWeightDict != __null && CFDictionaryGetTypeID() == CFGetTypeID(pRepairWeightDict)", v10, Value, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
        v52 = sub_175AE4();
        v53 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get repair weight dict for BBox (%d), %p %p %lld %d %d", v52, 13, v53, "AVE_GGM_ParseWeight", 1326, "pRepairWeightDict != __null && CFDictionaryGetTypeID() == CFGetTypeID(pRepairWeightDict)", v10, Value, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
    }

    return 4294966295;
  }

LABEL_24:
  v39 = a4 + 1;
  v40 = (a3 + 4 * a4 + 1304);
  do
  {
    v40[96] = -1;
    *v40 = -1;
    v40[32] = -1;
    v40[64] = -1;
    ++v40;
  }

  while (v39++ != 32);
  return 0;
}

uint64_t sub_15E9C(uint64_t a1, CFDictionaryRef theDict, __int128 *a3, uint64_t a4, float64x2_t *a5)
{
  if (CFDictionaryGetValue(theDict, kVTDeghostingFrameKey_Homography))
  {
    VTCreateHomographyMatrixWithArrayRepresentation();
    a5->f64[0] = v10;
    a5->f64[1] = v11;
    v13 = v12;
    v15.i32[1] = v14;
    a5[1] = vcvtq_f64_f32(v15);
    a5[2].f64[0] = v16;
    a5[2].f64[1] = v13;
    a5[3].f64[0] = v17;
    a5[3].f64[1] = v18;
    a5[4].f64[0] = v19;
    if (sub_160EF0(0xDu, 6))
    {
      v20 = sub_160F34(0xDu);
      v21 = sub_175AE4();
      v22 = sub_160F68(6);
      if (v20)
      {
        printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgF: %.15lf %.15lf %.15lf, %.15lf %.15lf %.15lf, %.15lf %.15lf %.15lf, %p %lld\n", v21, 13, v22, "AVE_GGM_ParseHmg", *(a1 + 16), *(a1 + 608), a4, a5->f64[0], a5->f64[1], a5[1].f64[0], a5[1].f64[1], a5[2].f64[0], a5[2].f64[1], a5[3].f64[0], a5[3].f64[1], a5[4].f64[0], a1, *(a1 + 544));
        v21 = sub_175AE4();
        v22 = sub_160F68(6);
        v23 = *a5;
        v24 = a5[1];
        v25 = a5[2];
        v26 = a5[3];
        v27 = a5[4].f64[0];
        v28 = *(a1 + 544);
        v98 = *(a1 + 608);
        v97 = *(a1 + 16);
      }

      syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgF: %.15lf %.15lf %.15lf, %.15lf %.15lf %.15lf, %.15lf %.15lf %.15lf, %p %lld", v21, 13, v22, "AVE_GGM_ParseHmg");
    }

    if (sub_160EF0(0xDu, 6))
    {
      v34 = sub_160F34(0xDu);
      v35 = sub_175AE4();
      v36 = sub_160F68(6);
      v37 = *(a1 + 16);
      v38 = *(a1 + 608);
      if (v34)
      {
        printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgF HP: %.*e %.*e %.*e, %.*e %.*e %.*e, %.*e %.*e %.*e, %p %lld\n", v35, 13, v36, "AVE_GGM_ParseHmg", v37, v38, a4, 17, a5->f64[0], 17, a5->f64[1], 17, a5[1].f64[0], 17, a5[1].f64[1], 17, a5[2].f64[0], 17, a5[2].f64[1], 17, a5[3].f64[0], 17, a5[3].f64[1], 17, a5[4].f64[0], a1, *(a1 + 544));
        v39 = sub_175AE4();
        v40 = sub_160F68(6);
        v41 = a5->f64[0];
        v42 = a5->f64[1];
        v43 = a5[1].f64[0];
        v44 = a5[1].f64[1];
        v45 = a5[2].f64[0];
        v46 = a5[2].f64[1];
        v47 = a5[3].f64[0];
        v48 = a5[3].f64[1];
        v49 = *(a1 + 544);
        v103 = a5[4].f64[0];
        syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgF HP: %.*e %.*e %.*e, %.*e %.*e %.*e, %.*e %.*e %.*e, %p %lld", v39, 13, v40, "AVE_GGM_ParseHmg", *(a1 + 16), *(a1 + 608), a4, 17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgF HP: %.*e %.*e %.*e, %.*e %.*e %.*e, %.*e %.*e %.*e, %p %lld", v35, 13, v36, "AVE_GGM_ParseHmg", v37, v38, a4, 17);
      }
    }

    v50 = 0;
    v51 = vdupq_n_s64(0x4110000000000000uLL);
    v52 = vdupq_n_s64(0xC1E0000000000000);
    v53 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
    v54 = vdupq_n_s64(0xFFFFFFFF80000000);
    do
    {
      v55 = vrndaq_f64(vmulq_f64(a5[v50], v51));
      v56 = vcgtq_f64(v55, v52);
      v57 = vmvnq_s8(v56);
      v58 = vcgtq_f64(v53, v55);
      v59 = vornq_s8(v58, v56);
      *&v55.f64[0] = vmovn_s64(vcvtq_s64_f64(v55));
      v60.i64[0] = SLODWORD(v55.f64[0]);
      v60.i64[1] = SHIDWORD(v55.f64[0]);
      a3[v50++] = vbslq_s8(vornq_s8(v57, v58), vbslq_s8(v54, v59, vmvnq_s8(v59)), v60);
    }

    while (v50 != 3);
    v61 = a5[1].f64[0] * 32.0;
    v62 = round(v61);
    v63 = v62 < 2147483650.0 || v62 <= -2147483650.0;
    v64 = v62 >= 2147483650.0 || v62 <= -2147483650.0;
    v65 = !v63;
    LODWORD(v66) = llround(v61);
    if (v65)
    {
      v67 = 0x7FFFFFFFLL;
    }

    else
    {
      v67 = 0xFFFFFFFF80000000;
    }

    v66 = v66;
    if (v64)
    {
      v66 = v67;
    }

    *(a3 + 2) = v66;
    v68 = a5[2].f64[1] * 32.0;
    v69 = round(v68);
    v70 = v69 <= -2147483650.0;
    v71 = v69 < 2147483650.0 || v69 <= -2147483650.0;
    if (v69 >= 2147483650.0)
    {
      v70 = 1;
    }

    if (v71)
    {
      v72 = 0xFFFFFFFF80000000;
    }

    else
    {
      v72 = 0x7FFFFFFFLL;
    }

    v73 = llround(v68);
    if (v70)
    {
      v74 = v72;
    }

    else
    {
      v74 = v73;
    }

    *(a3 + 5) = v74;
    for (i = 6; i != 9; ++i)
    {
      v76 = a5->f64[i] * 268435456.0;
      v77 = round(v76);
      v78 = v77 <= -2147483650.0;
      v79 = v77 < 2147483650.0 || v77 <= -2147483650.0;
      if (v77 >= 2147483650.0)
      {
        v78 = 1;
      }

      if (v79)
      {
        v80 = 0xFFFFFFFF80000000;
      }

      else
      {
        v80 = 0x7FFFFFFFLL;
      }

      v81 = llround(v76);
      if (v78)
      {
        v82 = v80;
      }

      else
      {
        v82 = v81;
      }

      *(a3 + i * 8) = v82;
    }

    result = sub_160EF0(0xDu, 6);
    if (result)
    {
      v84 = sub_160F34(0xDu);
      v85 = sub_175AE4();
      v86 = sub_160F68(6);
      v87 = *(a1 + 16);
      v88 = *(a1 + 608);
      if (v84)
      {
        v89 = a4;
        printf("%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgI: 0x%x-0x%x-0x%x 0x%x-0x%x-0x%x 0x%x-0x%x-0x%x, %p %lld\n", v85, 13, v86, "AVE_GGM_ParseHmg", v87, v88, a4, *a3, *(a3 + 2), *(a3 + 4), *(a3 + 6), *(a3 + 8), *(a3 + 10), *(a3 + 12), *(a3 + 14), *(a3 + 16), a1, *(a1 + 544));
        v90 = sub_175AE4();
        v91 = sub_160F68(6);
        v92 = *a3;
        v93 = a3[1];
        v94 = a3[2];
        v95 = a3[3];
        v96 = *(a3 + 8);
        v102 = *(a1 + 544);
        syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgI: 0x%x-0x%x-0x%x 0x%x-0x%x-0x%x 0x%x-0x%x-0x%x, %p %lld", v90, 13, v91, "AVE_GGM_ParseHmg", *(a1 + 16), *(a1 + 608), v89);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s: Mode: %d, Frame: %d, Ref%d, HmgI: 0x%x-0x%x-0x%x 0x%x-0x%x-0x%x 0x%x-0x%x-0x%x, %p %lld", v85, 13, v86, "AVE_GGM_ParseHmg", v87, v88, a4);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0xDu, 4))
    {
      v29 = sub_160F34(0xDu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      v32 = *(a1 + 16);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to get homography array %p, %p %lld %d %d\n", v30, 13, v31, "AVE_GGM_ParseHmg", 1455, "pHmgArray != __null", theDict, a1, *(a1 + 544), *(a1 + 16), *(a1 + 608));
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        v33 = *(a1 + 544);
        v99 = *(a1 + 16);
        v101 = *(a1 + 608);
      }

      else
      {
        v100 = *(a1 + 16);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to get homography array %p, %p %lld %d %d", v30, 13, v31, "AVE_GGM_ParseHmg");
    }

    return 4294966295;
  }

  return result;
}