uint64_t fe_unixlit_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  v3 = *(a1 + 56);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_unixlit_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2321555457;
  }

  result = 0;
  *a2 = &IFeUnixlit;
  return result;
}

uint64_t LhpuCreate(uint64_t a1)
{
  result = heap_Alloc(a1, 52);
  if (result)
  {
    *result = 0;
    *(result + 12) = 0;
    *(result + 18) = 0;
  }

  return result;
}

uint64_t LhpuRemove(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      heap_Free(a1, v3);
      *a2 = 0;
    }
  }

  return 0;
}

uint64_t LhpuSetSymbol(uint64_t a1, const char *a2, size_t a3)
{
  if (a3 > 9)
  {
    return 4294967294;
  }

  cstdlib_strncpy(a1, a2, a3);
  result = 0;
  *(a1 + a3) = 0;
  *(a1 + 12) = 0;
  *(a1 + 18) = 0;
  return result;
}

uint64_t LhpuSetDurValue(uint64_t a1, unsigned __int8 *a2)
{
  v4 = cstdlib_atoi(a2);
  *(a1 + 16) = v4;
  *(a1 + 12) = 1;
  v5 = *a2;
  if (!v4)
  {
    v7 = 0;
    if (v5 == 48)
    {
      return 0;
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  result = 0;
  v7 = 2;
  if (v5 == 45 || v5 == 43)
  {
LABEL_8:
    *(a1 + 12) = v7;
  }

  return result;
}

uint64_t LhpuAddBpTime(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 18) > 6u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = cstdlib_atoi(a2);
  result = 0;
  v5 = *(a1 + 18);
  v6 = a1 + 4 * v5;
  *(v6 + 22) = v3;
  *(v6 + 20) = 0;
  *(a1 + 18) = v5 + 1;
  return result;
}

uint64_t phonmapmrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2322604033;
  }

  result = 0;
  *a2 = &IPhonmapmrk;
  return result;
}

uint64_t phonmapmrk_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2322604039;
  v31 = 0;
  v32 = 0;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v32 + 32), "PHONMAP", 4, 0, "Entering phonmapmrk_ObjOpen", v10, v11, v12, v29);
      v13 = heap_Calloc(*(v32 + 8), 1, 912);
      if (v13)
      {
        v14 = v13;
        v15 = v32;
        v13[1] = a4;
        v13[2] = v15;
        *v13 = a3;
        Object = objc_GetObject(*(v32 + 48), "SYNTHSTREAM", &v31);
        if ((Object & 0x80000000) != 0)
        {
          v5 = Object;
          log_OutPublic(*(v14[2] + 32), "PHONMAP", 45101, 0, v17, v18, v19, v20, v30);
          *a5 = v14;
          *(a5 + 8) = 29349;
          phonmapmrk_ObjClose(v14, *(a5 + 8));
          v14 = 0;
          v27 = 0;
        }

        else
        {
          v14[109] = *(v31 + 8);
          v21 = objc_GetObject(*(v32 + 48), "PHONMAP", &v31);
          if ((v21 & 0x80000000) != 0)
          {
            log_OutPublic(*(v14[2] + 32), "PHONMAP", 45102, 0, v22, v23, v24, v25, v30);
            v5 = 0;
          }

          else
          {
            v5 = v21;
            v26 = v31;
            v14[3] = *(v31 + 8);
            *(v14 + 2) = *(v26 + 16);
          }

          v27 = 29349;
        }

        *a5 = v14;
        *(a5 + 8) = v27;
        log_OutText(*(v32 + 32), "PHONMAP", 4, 0, "Leaving phonmapmrk_ObjOpen: %x", v23, v24, v25, v5);
      }

      else
      {
        return 2322604042;
      }
    }
  }

  return v5;
}

uint64_t phonmapmrk_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29349, 912);
  if ((v3 & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v7 = v3;
  v8 = a1[2];
  log_OutText(*(v8 + 32), "PHONMAP", 4, 0, "Entering phonmapmrk_ObjClose", v4, v5, v6, v16);
  if (a1[109])
  {
    v9 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
    if (v9 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }
  }

  if (a1[3])
  {
    v10 = objc_ReleaseObject(*(v8 + 48), "PHONMAP");
    if (v10 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v10;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "PHONMAP", 4, 0, "Leaving phonmapmrk_ObjClose: %x", v12, v13, v14, v7);
  return v7;
}

uint64_t phonmapmrk_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 1;
  v9 = 0;
  if ((safeh_HandleCheck(a1, a2, 29349, 912) & 0x80000000) != 0)
  {
    return 2322604040;
  }

  synstrmaux_InitStreamOpener(a1 + 48, *(*(a1 + 16) + 32), "PHONMAP");
  if (!*(a1 + 32))
  {
    return 0;
  }

  result = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "markermode", &v9);
  if ((result & 0x80000000) == 0)
  {
    if ((v9 & 4) == 0 || (paramc_ParamGetInt(*(*(a1 + 16) + 40), "phonmapmrkenabled", &v8) & 0x80000000) == 0 && !v8)
    {
      return 0;
    }

    synstrmaux_RegisterInStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
    synstrmaux_RegisterOutStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", a1 + 896);
    return synstrmaux_OpenStreams((a1 + 48), *(a1 + 872), a3, a4);
  }

  return result;
}

uint64_t phonmapmrk_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v7 = safeh_HandleCheck(a1, a2, 29349, 912);
  if ((v7 & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v8 = v7;
  *a5 = 1;
  v9 = *(a1 + 880);
  if (v9)
  {
    v8 = (*(*(a1 + 872) + 144))(v9, *(a1 + 888), &v48 + 4, &v48);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_10:
      log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", v10, v11, v12, v13, "lhError");
      return v8;
    }

    if (HIDWORD(v48))
    {
      v14 = (*(*(a1 + 872) + 88))(*(a1 + 880), *(a1 + 888), &v47, &v48 + 4);
      if ((v14 & 0x80000000) != 0)
      {
        v8 = v14;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", v15, v16, v17, v18, "lhError");
        return v8;
      }

      v19 = (*(*(a1 + 872) + 112))(*(a1 + 896), *(a1 + 904), &v46, HIDWORD(v48));
      if ((v19 & 0x80000000) != 0)
      {
        v8 = v19;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", v20, v21, v22, v23, "lhError");
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v8;
      }

      v24 = HIDWORD(v48);
      v25 = HIDWORD(v48) >> 5;
      HIDWORD(v48) >>= 5;
      if (v24 >= 0x20)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = (v46 + v26);
          v29 = (v47 + v26);
          v30 = *(v47 + v26 + 16);
          *v28 = *(v47 + v26);
          v28[1] = v30;
          if (*v29 == 33)
          {
            v44 = 0;
            *v28 = 38;
            v45[0] = v29[6];
            v45[1] = 0;
            if (((*(*(a1 + 24) + 64))(*(a1 + 32), *(a1 + 40), 0, v45, &v44, 0) & 0x80000000) != 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45107, "%s%u%s%x", v31, v32, v33, v34, "phonemeID");
              v44 = &szEMPTY;
              v35 = &szEMPTY;
            }

            else
            {
              v35 = v44;
            }

            v36 = strhelper_Strdup(*(*(a1 + 16) + 8), v35);
            *(v46 + v26 + 24) = v36;
            v25 = HIDWORD(v48);
          }

          ++v27;
          v26 += 32;
        }

        while (v27 < v25);
      }

      else
      {
        v26 = 0;
      }

      v37 = (*(*(a1 + 872) + 120))(*(a1 + 896), *(a1 + 904), v26);
      if ((v37 & 0x80000000) != 0)
      {
        v42 = v37;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", v38, v39, v40, v41, "lhError");
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v42;
      }

      v8 = (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), v26);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else if (v48)
    {
      return synstrmaux_CloseOutStreamsOnly((a1 + 48), *(a1 + 872));
    }

    else
    {
      *a5 = 0;
    }
  }

  return v8;
}

uint64_t phonmapmrk_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 29349, 912) & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v3 = *(a1 + 872);

  return synstrmaux_CloseStreams((a1 + 48), v3);
}

uint64_t LhplGetSymbol(const char *a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  cstdlib_strlen(a1);
  v8 = 0;
  k = a1;
  v10 = a1;
LABEL_2:
  v11 = k;
  while (1)
  {
    while (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *v11;
        if (v12 <= 0x20)
        {
          if (v12 > 0xC)
          {
            if (v12 != 13 && v12 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v12 < 9 || v12 == 12)
            {
              return result;
            }
          }

          v23 = v11 + 1;
          v22 = *(v11 + 1);
          if (v22 > 0x20)
          {
            if (v22 > 0x2C)
            {
              if (v22 != 45)
              {
LABEL_108:
                if (v22 - 48 >= 0xA)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_109:
                ++v23;
                while (1)
                {
                  v22 = *v23;
                  if (v22 <= 0x1F)
                  {
                    break;
                  }

                  if (v22 <= 0x2C)
                  {
                    goto LABEL_154;
                  }

                  ++v23;
                  if (v22 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_85:
                if (v22 > 0xB)
                {
                  v27 = v22 == 13;
                  goto LABEL_221;
                }

                if (v22 >= 9)
                {
                  goto LABEL_213;
                }

                return 0xFFFFFFFFLL;
              }

LABEL_107:
              v30 = *++v23;
              v22 = v30;
              goto LABEL_108;
            }
          }

          else
          {
            if (v22 > 0xC)
            {
              if (v22 != 32 && v22 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              result = 0xFFFFFFFFLL;
              if (v22 < 9 || v22 == 12)
              {
                return result;
              }
            }

            v23 = v11 + 2;
            v22 = *(v11 + 2);
            if (v22 <= 0x20)
            {
              do
              {
                if (v22 > 0xC)
                {
                  if (v22 != 13 && v22 != 32)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

                else
                {
                  result = 0xFFFFFFFFLL;
                  if (v22 < 9 || v22 == 12)
                  {
                    return result;
                  }
                }

                v29 = *++v23;
                v22 = v29;
              }

              while (v29 < 0x21);
            }

            if (v22 > 0x2C)
            {
              if (v22 != 45)
              {
                if (v22 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_109;
              }

              goto LABEL_107;
            }
          }

          if (v22 != 43)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_107;
        }

        if (v12 <= 0x2C)
        {
          if (v12 != 43)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_57:
          v23 = v11;
          goto LABEL_107;
        }

        if (v12 == 45)
        {
          goto LABEL_57;
        }

        if (v12 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        v23 = v11 + 1;
        v22 = *(v11 + 1);
        if (v22 <= 0x1F)
        {
          goto LABEL_85;
        }

        if (v22 > 0x2C)
        {
          goto LABEL_108;
        }

LABEL_154:
        if (v22 == 32)
        {
          while (1)
          {
LABEL_213:
            while (1)
            {
              v22 = *++v23;
              if (v22 > 0xD)
              {
                break;
              }

              if (v22 < 9 || v22 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v27 = v22 == 32;
            if (v22 > 0x20)
            {
              break;
            }

LABEL_221:
            if (!v27)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v22 != 44)
        {
          return 0xFFFFFFFFLL;
        }

        v43 = (v11 - 1);
        do
        {
          v44 = *++v43;
        }

        while (!cstdlib_strchr("0123456789+-", v44));
        v11 = v23 + 1;
        LhpuAddBpTime(a2, v43);
        v8 = 3;
      }

      else
      {
        v15 = *v11;
        if (v15 <= 0xD)
        {
          if (v15 < 9 || v15 == 12)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_28:
          i = (v11 + 1);
          v18 = *(v11 + 1);
          if (v18 > 0xD)
          {
            if (v18 > 0x20)
            {
LABEL_131:
              if (v18 - 48 >= 0xA)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_132;
            }

            if (v18 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v18 < 9 || v18 == 12)
            {
              return result;
            }
          }

          for (i = (v11 + 2); ; ++i)
          {
            v20 = *i;
            if (v20 > 0xD)
            {
              if (v20 > 0x20)
              {
                if (v20 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_132:
                ++i;
                while (1)
                {
                  v18 = *i;
                  if (v18 <= 0x1F)
                  {
                    break;
                  }

                  if (v18 <= 0x29)
                  {
                    goto LABEL_129;
                  }

                  ++i;
                  if (v18 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_60:
                if (v18 <= 0xB)
                {
                  if (v18 < 9)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  goto LABEL_188;
                }

                v26 = v18 == 13;
                goto LABEL_196;
              }

              if (v20 != 32)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v20 < 9 || v20 == 12)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v15 <= 0x20)
        {
          if (v15 != 32)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_28;
        }

        if (v15 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        i = (v11 + 1);
        v18 = *(v11 + 1);
        if (v18 <= 0x1F)
        {
          goto LABEL_60;
        }

        if (v18 > 0x29)
        {
          goto LABEL_131;
        }

LABEL_129:
        if (v18 == 32)
        {
          while (1)
          {
LABEL_188:
            while (1)
            {
              v18 = *++i;
              if (v18 > 0xD)
              {
                break;
              }

              if (v18 < 9 || v18 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v26 = v18 == 32;
            if (v18 > 0x20)
            {
              break;
            }

LABEL_196:
            if (!v26)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v18 != 41)
        {
          return 0xFFFFFFFFLL;
        }

        for (j = i + 2; ; ++j)
        {
          v39 = *(j - 1);
          if (v39 <= 0x1F)
          {
            if (v39 > 0xB)
            {
              if (v39 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v39 < 9)
            {
              return 0xFFFFFFFFLL;
            }

            continue;
          }

          if (v39 > 0x28)
          {
            if (v39 == 93)
            {
              v65 = (v11 - 1);
              do
              {
                v66 = *++v65;
              }

              while (!cstdlib_strchr("0123456789", v66));
              LhpuSetBpPitch(a2, v65);
              goto LABEL_411;
            }

            return 0xFFFFFFFFLL;
          }

          if (v39 != 32)
          {
            break;
          }
        }

        if (v39 != 40)
        {
          return 0xFFFFFFFFLL;
        }

        v40 = (v11 - 1);
        do
        {
          v41 = *++v40;
        }

        while (!cstdlib_strchr("0123456789", v41));
        LhpuSetBpPitch(a2, v40);
        v8 = 2;
        v11 = j;
      }
    }

    if (v8 != 1)
    {
      v45 = *v11;
      if (v45 > 0x2D)
      {
        if (v45 > 0x4A)
        {
          result = 0xFFFFFFFFLL;
          if (v45 > 0x5D)
          {
            if (v45 == 96 || v45 > 0x7A)
            {
              return result;
            }
          }

          else if (v45 == 75 || v45 > 0x5A)
          {
            return result;
          }
        }

        else if (v45 > 0x39)
        {
          result = 0xFFFFFFFFLL;
          if (v45 < 0x3F || v45 == 70)
          {
            return result;
          }
        }

        else if (v45 != 46 && v45 < 0x37)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v45 <= 0x20)
        {
          if (v45 > 0xB)
          {
            if (v45 != 13 && v45 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            if (!*v11)
            {
              return 1;
            }

            if (v45 < 9)
            {
              return 0xFFFFFFFFLL;
            }
          }

          for (k = v11 + 1; ; ++k)
          {
            v46 = *k;
            if (v46 > 0xC)
            {
              if (v46 != 32 && v46 != 13)
              {
LABEL_262:
                v8 = 0;
                v10 = v11;
                goto LABEL_2;
              }
            }

            else if (v46 < 9 || v46 == 12)
            {
              goto LABEL_262;
            }
          }
        }

        if (v45 > 0x26)
        {
          if (v45 != 39)
          {
            if (v45 != 42)
            {
              return 0xFFFFFFFFLL;
            }

            j = (v11 + 1);
            v67 = *(v11 + 1);
            if (v67 > 0x2D)
            {
              if (v67 <= 0x3B)
              {
                if (v67 != 46 && v67 <= 0x39)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_427;
              }

              v68 = v67 == 63;
            }

            else
            {
              v68 = v67 == 33;
              if (v67 > 0x21)
              {
                if (v67 != 44)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_427:
                ++j;
LABEL_428:
                LhpuSetSymbol(a2, v11, j - v11);
                goto LABEL_412;
              }
            }

            if (!v68)
            {
              return 0xFFFFFFFFLL;
            }

            j = (v11 + 2);
            if (v11[2] == 92)
            {
              goto LABEL_427;
            }

            goto LABEL_428;
          }
        }

        else
        {
          result = 0xFFFFFFFFLL;
          if (v45 == 33 || v45 > 0x24)
          {
            return result;
          }
        }
      }

      for (j = (v11 + 1); ; ++j)
      {
        v49 = *j;
        if (v49 > 0x3C)
        {
          if (v49 > 0x5B)
          {
            if (v49 > 0x7A)
            {
              if (v49 == 124 || v49 >= 0x7F)
              {
                goto LABEL_428;
              }
            }

            else if (v49 != 96 && v49 != 92)
            {
              goto LABEL_428;
            }
          }

          else if (v49 > 0x46)
          {
            if (v49 != 75)
            {
              goto LABEL_398;
            }
          }

          else if (v49 != 62 && v49 != 70)
          {
            goto LABEL_428;
          }
        }

        else if (v49 > 0x2B)
        {
          if (v49 > 0x36)
          {
            if (v49 != 58 && v49 != 60)
            {
              goto LABEL_428;
            }
          }

          else if (v49 != 45 && v49 < 0x30)
          {
            goto LABEL_428;
          }
        }

        else if (v49 > 0x24)
        {
          if (v49 == 37)
          {
            do
            {
              v50 = j[1];
              if (v50 > 0x22)
              {
                if (v50 == 37)
                {
                  goto LABEL_428;
                }

                v53 = j;
                if (v50 >= 0x7F)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v50 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v50 == 34)
                {
                  v51 = j + 2;
                  v52 = j[2];
                  if (v52 > 0x22)
                  {
                    if (v52 == 37 || v52 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v52 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v54 = v51[1];
                      if (v54 <= 0x22)
                      {
                        break;
                      }

                      if (v54 != 37)
                      {
                        ++v51;
                        if (v54 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v54 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v53 = v51++;
                  }

                  while (v54 != 34);
                }

                else
                {
                  v53 = j;
                }
              }

              v49 = v53[2];
              j = v53 + 2;
              if (v49 > 0x26)
              {
                goto LABEL_398;
              }

              if (v49 < 0x25)
              {
                goto LABEL_428;
              }
            }

            while (v49 != 38);
LABEL_384:
            while (2)
            {
              v60 = j[1];
              if (v60 > 0x3E)
              {
                if (v60 > 0x5A)
                {
                  if (v60 > 0x5F)
                  {
                    if (v60 == 96 || v60 > 0x7A)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v60 < 0x5E)
                  {
                    goto LABEL_428;
                  }
                }

                else
                {
                  v62 = v60 == 70;
                  if (v60 > 0x46)
                  {
                    v62 = v60 == 75;
                  }

                  if (v62)
                  {
                    goto LABEL_428;
                  }
                }
              }

              else if (v60 > 0x27)
              {
                v61 = v60 == 46;
                if (v60 <= 0x2E)
                {
                  goto LABEL_396;
                }

                if (v60 - 55 >= 3)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v60 < 0x22)
                {
                  goto LABEL_428;
                }

                if (v60 >= 0x25)
                {
                  v61 = v60 == 39;
LABEL_396:
                  if (!v61)
                  {
                    goto LABEL_428;
                  }
                }
              }

              j += 2;
              while (2)
              {
                v49 = *j;
                if (v49 > 0x3C)
                {
                  if (v49 > 0x5B)
                  {
                    if (v49 > 0x7A)
                    {
                      if (v49 == 124 || v49 >= 0x7F)
                      {
                        goto LABEL_428;
                      }
                    }

                    else if (v49 != 92 && v49 != 96)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v49 > 0x46)
                  {
                    if (v49 != 75)
                    {
                      goto LABEL_398;
                    }
                  }

                  else if (v49 != 62 && v49 != 70)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v49 > 0x2B)
                {
                  if (v49 > 0x36)
                  {
                    if (v49 != 58 && v49 != 60)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v49 != 45 && v49 < 0x30)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v49 <= 0x24)
                {
                  if (v49 != 33)
                  {
                    goto LABEL_428;
                  }

LABEL_361:
                  ++j;
                  continue;
                }

                break;
              }

              if (v49 != 37)
              {
                if (v49 < 0x27)
                {
                  continue;
                }

                if (v49 != 43)
                {
                  goto LABEL_428;
                }

                goto LABEL_361;
              }

              break;
            }

            while (1)
            {
              v58 = j[1];
              if (v58 > 0x22)
              {
                if (v58 == 37)
                {
                  goto LABEL_428;
                }

                v56 = j;
                if (v58 > 0x7E)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v58 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v58 == 34)
                {
                  v57 = j + 2;
                  v59 = j[2];
                  if (v59 > 0x22)
                  {
                    if (v59 == 37 || v59 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v59 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v55 = v57[1];
                      if (v55 <= 0x22)
                      {
                        break;
                      }

                      if (v55 != 37)
                      {
                        ++v57;
                        if (v55 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v55 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v56 = v57++;
                  }

                  while (v55 != 34);
                }

                else
                {
                  v56 = j;
                }
              }

              v49 = v56[2];
              j = v56 + 2;
              if (v49 > 0x26)
              {
                break;
              }

              if (v49 < 0x25)
              {
                goto LABEL_428;
              }

              if (v49 == 38)
              {
                goto LABEL_384;
              }
            }

LABEL_398:
            if (v49 != 91)
            {
              goto LABEL_428;
            }

            k = (j + 1);
            LhpuSetSymbol(a2, v11, j - v11);
            v8 = 1;
            v10 = v11;
            goto LABEL_2;
          }

          if (v49 < 0x27)
          {
            goto LABEL_384;
          }

          if (v49 != 43)
          {
            goto LABEL_428;
          }
        }

        else if (v49 != 33)
        {
          goto LABEL_428;
        }
      }
    }

    v14 = *v11;
    if (v14 > 0x27)
    {
      break;
    }

    if (v14 > 0xC)
    {
      if (v14 != 13 && v14 != 32)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
      if (v14 < 9 || v14 == 12)
      {
        return result;
      }
    }

    v19 = v11 + 1;
    v24 = *(v11 + 1);
    if (v24 > 0x27)
    {
      if (v24 > 0x2C)
      {
        if (v24 != 45)
        {
          if (v24 - 48 >= 0xA)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    else
    {
      if (v24 > 0xC)
      {
        if (v24 != 32 && v24 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        result = 0xFFFFFFFFLL;
        if (v24 < 9 || v24 == 12)
        {
          return result;
        }
      }

      v19 = v11 + 2;
      v24 = *(v11 + 2);
      if (v24 <= 0x27)
      {
        do
        {
          if (v24 > 0xC)
          {
            if (v24 != 13 && v24 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v24 < 9 || v24 == 12)
            {
              return result;
            }
          }

          v31 = *++v19;
          v24 = v31;
        }

        while (v31 < 0x28);
      }

      if (v24 > 0x2C)
      {
        if (v24 != 45)
        {
          if (v24 - 48 > 9)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    if (v24 != 40)
    {
      if (v24 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_141:
      v32 = *(v19 + 1);
      v25 = (v19 + 1);
      if ((v32 - 48) > 9)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_142:
      v19 = (v25 + 1);
      while (1)
      {
        v28 = *v19;
        if (v28 <= 0x20)
        {
          break;
        }

        if (v28 <= 0x2F)
        {
          goto LABEL_157;
        }

        ++v19;
        if (v28 >= 0x3A)
        {
          goto LABEL_400;
        }
      }

      if (v28 > 0xC)
      {
        if (v28 != 32 && v28 != 13)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_179;
      }

      goto LABEL_171;
    }

LABEL_158:
    v34 = (v11 - 1);
    do
    {
      v35 = *++v34;
    }

    while (!cstdlib_strchr("0123456789+-(", v35));
    v11 = v19 + 1;
    v8 = 2;
    if (*v34 != 40)
    {
      LhpuSetDurValue(a2, v34);
      v8 = 2;
    }
  }

  if (v14 <= 0x2C)
  {
    v19 = v11;
    if (v14 != 40)
    {
      if (v14 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_71:
      v25 = (v11 + 1);
      if (*(v11 + 1) - 48 >= 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_142;
    }

    goto LABEL_158;
  }

  if (v14 == 45)
  {
    goto LABEL_71;
  }

  if (v14 - 48 >= 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v11 + 1;
  v28 = *(v11 + 1);
  if (v28 <= 0x20)
  {
    if (v28 <= 0xC)
    {
      result = 0xFFFFFFFFLL;
      if (v28 < 9 || v28 == 12)
      {
        return result;
      }

      goto LABEL_179;
    }

    goto LABEL_177;
  }

  if (v28 <= 0x2F)
  {
LABEL_157:
    if (v28 != 40)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_158;
  }

  if (v28 >= 0x3A)
  {
    goto LABEL_402;
  }

LABEL_165:
  ++v19;
  while (1)
  {
    v28 = *v19;
    if (v28 <= 0x20)
    {
      break;
    }

    if (v28 <= 0x2F)
    {
      goto LABEL_157;
    }

    ++v19;
    if (v28 >= 0x3A)
    {
LABEL_400:
      if (v28 == 93)
      {
        LOBYTE(v19) = v19 - 1;
        goto LABEL_403;
      }

      return 0xFFFFFFFFLL;
    }
  }

  if (v28 > 0xC)
  {
LABEL_177:
    if (v28 != 13 && v28 != 32)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_179;
  }

LABEL_171:
  if (v28 < 9 || v28 == 12)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
LABEL_179:
    while (1)
    {
      v28 = *++v19;
      if (v28 > 0x1F)
      {
        break;
      }

      if (v28 > 0xB)
      {
        if (v28 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v28 < 9)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v28 > 0x28)
    {
      break;
    }

    if (v28 != 32)
    {
      goto LABEL_157;
    }
  }

LABEL_402:
  if (v28 != 93)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_403:
  v63 = (v11 - 1);
  do
  {
    v64 = *++v63;
  }

  while (!cstdlib_strchr("0123456789+-]", v64));
  LOBYTE(j) = v19 + 1;
  if (*v63 != 93)
  {
    LhpuSetDurValue(a2, v63);
  }

LABEL_411:
  LOBYTE(v11) = v10;
LABEL_412:
  result = 0;
  *a3 = v11 - a1;
  *a4 = j + ~a1;
  return result;
}

uint64_t phonmap_GetLanguagesInVoiceMaps(uint64_t a1, int a2, _WORD *a3, unsigned __int16 *a4, char *a5)
{
  v5 = 2322604039;
  if (!a3 || !a4)
  {
    return 2322604039;
  }

  v10 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v10 & 0x80000000) == 0)
  {
    Size = ssftmap_GetSize(*(a1 + 56));
    *a3 = Size;
    if (!a5)
    {
      *a4 = 4 * Size;
      return v10;
    }

    v12 = *a4;
    if (v12 < 4)
    {
      return 2322604041;
    }

    v14 = *(a1 + 56);
    v24 = 0;
    if (v14)
    {
      *a5 = 0;
      *a4 = 1;
      if ((ssftmap_IteratorOpen(v14, 0, 1, &v24) & 0x80000000) == 0)
      {
        v22 = 0;
        __s = 0;
        if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
        {
          v18 = 0;
        }

        else
        {
          v15 = cstdlib_strlen(a5);
          v16 = cstdlib_strlen(__s);
          if (v16 + v15 + cstdlib_strlen(",") > v12)
          {
            v17 = 0;
LABEL_19:
            a5[v17 - 1] = 0;
            ssftmap_IteratorClose(v24);
            return 2322604041;
          }

          while (1)
          {
            cstdlib_strcat(a5, __s);
            cstdlib_strcat(a5, ",");
            v19 = cstdlib_strlen(a5);
            *a4 = v19;
            if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
            {
              break;
            }

            v20 = cstdlib_strlen(a5);
            v21 = cstdlib_strlen(__s);
            if (v21 + v20 + cstdlib_strlen(",") > v12)
            {
              v17 = v19;
              goto LABEL_19;
            }
          }

          v18 = v19;
        }

        a5[v18 - 1] = 0;
        ssftmap_IteratorClose(v24);
      }

      return 0;
    }

    return v5;
  }

  return v10;
}

uint64_t phonmap_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2322604033;
  }

  result = 0;
  *a2 = &IPhonmap;
  return result;
}

uint64_t phonmap_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Data = 2322604038;
  v39 = 0;
  v40 = 0;
  if (a5)
  {
    v38 = 0;
    __b = 0u;
    v37 = 0u;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v40);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v40 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: Begin", v10, v11, v12, v32);
      v13 = heap_Calloc(*(v40 + 8), 1, 624);
      if (v13)
      {
        v18 = v13;
        *v13 = a3;
        v13[1] = a4;
        v19 = v40;
        v13[2] = v40;
        if ((paramc_ParamGetStr(*(v19 + 40), "fevoice", &v39) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v40 + 40), "voice", &v39), (Str & 0x80000000) != 0))
        {
          Data = Str;
        }

        else
        {
          Data = phonmap_loc_LoadData(v18, v39, v20, v21, v22, v23, v24, v25);
          if (v39)
          {
            paramc_ParamRelease(*(v40 + 40));
          }

          if ((Data & 0x80000000) == 0)
          {
            cstdlib_memset(&__b, 0, 0x28uLL);
            *&__b = ssftmap_ElemCopyString;
            *(&v37 + 1) = stringmap_loc_ElemCopyPtr_0;
            *(&__b + 1) = ssftmap_ElemFreeString;
            v38 = stringmap_loc_ElemFreeNoOp_0;
            *&v37 = ssftmap_ElemCompareKeysString;
            v27 = *(v18[2] + 8);
            v34[0] = __b;
            v34[1] = v37;
            v35 = stringmap_loc_ElemFreeNoOp_0;
            Data = ssftmap_ObjOpen(v27, 0, v34, v18 + 77);
            if ((Data & 0x80000000) == 0)
            {
              *a5 = v18;
              *(a5 + 8) = 29348;
LABEL_15:
              log_OutText(*(v40 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: End (%x)", v28, v29, v30, Data);
              return Data;
            }
          }
        }

        *a5 = v18;
        *(a5 + 8) = 29348;
        phonmap_ObjClose(v18, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        goto LABEL_15;
      }

      log_OutPublic(*(v40 + 32), "PHONMAP", 29000, 0, v14, v15, v16, v17, v33);
      Data = 2322604042;
      goto LABEL_15;
    }

    return inited;
  }

  return Data;
}

uint64_t phonmap_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  v7 = v3;
  if (v3 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v9 = a1[2];
    log_OutText(*(v9 + 32), "PHONMAP", 4, 0, "PHONMAP ObjClose : Begin", v4, v5, v6, v67);
    v17 = a1[3];
    if (v17)
    {
      v7 = stringmap_reader_ObjClose(v17, v10, v11, v12, v13, v14, v15, v16);
    }

    v18 = a1[4];
    if (v18)
    {
      v7 = stringmap_reader_ObjClose(v18, v10, v11, v12, v13, v14, v15, v16);
    }

    v19 = a1[5];
    if (v19)
    {
      v7 = stringmap_reader_ObjClose(v19, v10, v11, v12, v13, v14, v15, v16);
    }

    v20 = a1[6];
    if (v20)
    {
      v7 = stringmap_reader_ObjClose(v20, v10, v11, v12, v13, v14, v15, v16);
    }

    v21 = a1[7];
    if (v21)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v21, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v22, v23, v24, v25, v26, v27, v28);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(a1[7]);
    }

    v29 = v8[9];
    if (v29)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v29, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v30, v31, v32, v33, v34, v35, v36);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[9]);
    }

    v37 = v8[8];
    if (v37)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v37, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v38, v39, v40, v41, v42, v43, v44);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[8]);
    }

    v45 = v8[10];
    if (v45)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v45, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v46, v47, v48, v49, v50, v51, v52);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[10]);
    }

    v53 = v8[75];
    if (v53)
    {
      v7 = stringmap_reader_ObjClose(v53, v10, v11, v12, v13, v14, v15, v16);
    }

    v54 = v8[76];
    if (v54)
    {
      v7 = stringmap_reader_ObjClose(v54, v10, v11, v12, v13, v14, v15, v16);
    }

    v55 = v8[77];
    if (v55)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v55, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v56, v57, v58, v59, v60, v61, v62);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[77]);
    }

    heap_Free(*(v9 + 8), v8);
    log_OutText(*(v9 + 32), "PHONMAP", 4, 0, "PHONMAP ObjClose : End (%x)", v63, v64, v65, v7);
  }

  return v7;
}

uint64_t phonmap_ObjReopen(uint64_t a1, int a2)
{
  v18 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v7 = *(a1 + 16);
  log_OutText(*(v7 + 32), "PHONMAP", 4, 0, "PHONMAP ObjReopen : Begin", v4, v5, v6, v17);
  if ((paramc_ParamGetStr(*(v7 + 40), "fevoice", &v18) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v7 + 40), "voice", &v18), (Str & 0x80000000) != 0))
  {
    Data = Str;
  }

  else
  {
    Data = phonmap_loc_LoadData(a1, v18, v8, v9, v10, v11, v12, v13);
    if (v18)
    {
      paramc_ParamRelease(*(v7 + 40));
    }
  }

  log_OutText(*(v7 + 32), "PHONMAP", 4, 0, "PHONMAP ObjReopen : End (%x)", v11, v12, v13, Data);
  return Data;
}

uint64_t phonmap_LhTtsToLhPSym(void *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (!a4 || !a5 || !*a4)
  {
    return 2322604039;
  }

  v11 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = a1[2];
  v13 = cstdlib_strlen(a4);
  v14 = Utf8_DepesLengthInBytesUtf8(a4, v13);
  v15 = heap_Alloc(*(v12 + 8), v14 + 1);
  if (!v15)
  {
    log_OutPublic(*(v12 + 32), "PHONMAP", 29000, 0, v16, v17, v18, v19, v34);
    return 2322604042;
  }

  v20 = v15;
  StrMap = utf8_DepesToUtf8(a4, v13, 0, v15, v14, 0, 0);
  if ((StrMap & 0x80000000) != 0)
  {
LABEL_17:
    v29 = StrMap;
    goto LABEL_18;
  }

  *(v20 + v14) = 0;
  log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhTtsToLhPSym : Begin (%s)", v22, v23, v24, v20);
  if (a3)
  {
    if (a3 != 1)
    {
      v31 = *(v12 + 32);
      v29 = 2322604039;
      goto LABEL_28;
    }

    if (!a6 || !*a6)
    {
      MapTroughLng = a1[3];
      v35 = MapTroughLng;
      goto LABEL_25;
    }

    cstdlib_strcpy(__dst, "phonmap/");
    cstdlib_strcat(__dst, a6);
    StrMap = phonmap_loc_GetStrMap(a1, __dst, "LANG", &v35, 0);
    if ((StrMap & 0x80000000) == 0)
    {
      MapTroughLng = v35;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!a6 || !*a6)
  {
    v32 = phonmap_reader_Maps(a1[7], 1, a4, a5);
    goto LABEL_27;
  }

  MapTroughLng = phonmap_findMapTroughLng(a1[7], a6);
  if (MapTroughLng)
  {
LABEL_25:
    v32 = stringmap_reader_ReverseMap(MapTroughLng, a4, a5);
LABEL_27:
    v29 = v32;
    v31 = *(v12 + 32);
LABEL_28:
    log_OutText(v31, "PHONMAP", 4, 0, "PHONMAP LhTtsToLhPSym : End (%x, %s)", v25, v26, v27, v29);
    heap_Free(*(v12 + 8), v20);
    if ((v29 & 0x80000000) == 0)
    {
      return v29;
    }

    goto LABEL_29;
  }

  v29 = 2322604052;
LABEL_18:
  heap_Free(*(v12 + 8), v20);
LABEL_29:
  if ((v29 & 0x1FFFu) <= 0x14 && ((1 << v29) & 0x10001A) != 0)
  {
    return (v29 & 0x1FFF) - 1972363264;
  }

  return v29;
}

uint64_t phonmap_LhPToLhTtsSequence(void *a1, int a2, int a3, const char *a4, unsigned int a5, char *a6, char *a7)
{
  v7 = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, a7);
  v8 = v7 & 0x1FFF | 0x8A702000;
  if (((1 << v7) & 0x10001A) == 0)
  {
    v8 = v7;
  }

  if ((v7 & 0x1FFFu) <= 0x14)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  if (v7 == 1)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheck(void *a1, int a2, int a3, const char *a4, unsigned int a5, char *a6)
{
  LODWORD(result) = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, 0);
  v7 = (result & 0x1FFFu) > 0x14 || ((1 << result) & 0x10001A) == 0;
  v8 = result & 0x1FFF | 0x8A702000;
  if (v7)
  {
    v8 = result;
  }

  if (result < 0)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

uint64_t phonmap_LhPToIpaSym(uint64_t a1, int a2, char *a3, uint64_t *a4)
{
  v4 = 2322604039;
  if (a3 && a4 && *a3)
  {
    v8 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP LhPToIpaSym : Begin", v9, v10, v11, v20);
      v15 = *(a1 + 600);
      if (v15)
      {
        v16 = stringmap_reader_WReverseMap(v15, a3, a4);
      }

      else
      {
        v16 = 2322604033;
      }

      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP LhPToIpaSym : End (%x)", v12, v13, v14, v16);
      if (((1 << v16) & 0x10001A) != 0)
      {
        v17 = (v16 & 0x1FFF) - 1972363264;
      }

      else
      {
        v17 = v16;
      }

      if ((v16 & 0x1FFFu) <= 0x14)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v16 < 0)
      {
        return v18;
      }

      else
      {
        return v16;
      }
    }
  }

  return v4;
}

uint64_t phonmap_IpaToLhPSequence(uint64_t a1, int a2, _WORD *a3, unsigned int a4, _WORD *a5, char *a6, _BYTE *a7)
{
  v58 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v45 = 0;
  v46 = 0;
  memset(v57, 0, sizeof(v57));
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *__dst = 0u;
  v50 = 0u;
  __s = 0;
  if (!a3)
  {
    return 2322604039;
  }

  StrMap = 2322604039;
  if (a5 && a4 && *a3)
  {
    *a5 = 0;
    v14 = safeh_HandleCheck(a1, a2, 29348, 624);
    StrMap = v14;
    v18 = v14 >= 0 ? a1 : 0;
    if ((v14 & 0x80000000) == 0)
    {
      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : Begin", v15, v16, v17, v43);
      if (a6 && a7 && *a6 && *a7)
      {
        cstdlib_strcpy(__dst, "phonmap_ipa/");
        cstdlib_strcat(__dst, a6);
        paramc_ParamGetStr(*(*(a1 + 16) + 40), "fedataprefix", &__s);
        v22 = __s;
        if (__s && *__s && (v23 = cstdlib_strlen(__s) - 1, v22[v23] == 47))
        {
          cstdlib_strcpy(v48, __s);
          v48[v23] = 0;
          v24 = 1;
          do
          {
            if (v24 == 1)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }

            v26 = brokeraux_ComposeBrokerString(*(a1 + 16), __dst, v25, 1, a6, v48, 0, v57, 0x80uLL);
            if (v26 < 0)
            {
              StrMap = v26 | 0x8A702000;
            }

            else
            {
              StrMap = phonmap_loc_GetStrMap(v18, v57, "IPA ", &v45, v24 == 1);
            }

            if (v24 > 1)
            {
              break;
            }

            ++v24;
          }

          while ((StrMap & 0x80000000) != 0);
        }

        else
        {
          v29 = brokeraux_ComposeBrokerString(*(a1 + 16), __dst, 0, 1, a6, 0, 0, v57, 0x80uLL);
          if (v29 < 0)
          {
            StrMap = v29 | 0x8A702000;
          }

          else
          {
            StrMap = phonmap_loc_GetStrMap(a1, v57, "IPA ", &v45, 0);
          }
        }

        v27 = v45 != 0;
      }

      else
      {
        if (!*(a1 + 600))
        {
          log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v19, v20, v21, 2322604033);
          v28 = 1;
          return v28 | 0x8A702000;
        }

        v45 = *(a1 + 600);
        v27 = 1;
      }

      v30 = StrMap >= 0;
      if ((StrMap & 0x80000000) != 0 || !v27)
      {
LABEL_45:
        log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v19, v20, v21, StrMap);
        if (v30)
        {
          return StrMap;
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
        while (1)
        {
          if (LH_wcslen(a3) <= v32)
          {
            log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v33, v34, v35, StrMap);
            return StrMap;
          }

          v36 = &a3[v32];
          if (*v36 == 32)
          {
            v37 = 1;
            v47 = 1;
            v46 = &phonmap_IpaToLhPSequence_szWordBnd;
            v38 = &phonmap_IpaToLhPSequence_szWordBnd;
          }

          else
          {
            StrMap = stringmap_reader_WMapToken(v45, v36, &v47, &v46);
            if ((StrMap & 0x80000000) != 0)
            {
              goto LABEL_49;
            }

            v37 = v47;
            v38 = v46;
          }

          if (LH_wcslen(v38) + v31 + 1 >= a4)
          {
            break;
          }

          v32 += v37;
          LH_wcscpy(&a5[v31], v46);
          v31 += LH_wcslen(v46);
          if (!v45)
          {
            v30 = 1;
            goto LABEL_45;
          }
        }

        StrMap = 2322604041;
LABEL_49:
        log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v39, v40, v41, StrMap);
      }

      v28 = StrMap & 0x1FFF;
      if (v28 <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
      {
        return v28 | 0x8A702000;
      }
    }
  }

  return StrMap;
}

uint64_t phonmap_LhPToSapi5Sym(void *a1, int a2, char *a3, uint64_t *a4)
{
  v4 = 2322604039;
  if (a3 && a4 && *a3)
  {
    v8 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP LhPToSapi5Sym : Begin", v9, v10, v11, v20);
      v15 = a1[76];
      if (v15 || (v15 = a1[75]) != 0)
      {
        v16 = stringmap_reader_WReverseMap(v15, a3, a4);
      }

      else
      {
        v16 = 2322604033;
      }

      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP LhPToSapi5Sym : End (%x)", v12, v13, v14, v16);
      if (((1 << v16) & 0x10001A) != 0)
      {
        v17 = (v16 & 0x1FFF) - 1972363264;
      }

      else
      {
        v17 = v16;
      }

      if ((v16 & 0x1FFFu) <= 0x14)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v16 < 0)
      {
        return v18;
      }

      else
      {
        return v16;
      }
    }
  }

  return v4;
}

uint64_t phonmap_Sapi5ToLhPSequence(void *a1, int a2, _WORD *a3, unsigned int a4, _WORD *a5)
{
  v33 = 0;
  v32 = 0;
  v5 = 2322604039;
  if (!a3 || !a5 || !a4 || !*a3)
  {
    return v5;
  }

  *a5 = 0;
  v13 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : Begin", v10, v11, v12, v31);
  v17 = a1[76];
  if (!v17)
  {
    v17 = a1[75];
  }

  if (v17)
  {
    v18 = v13;
  }

  else
  {
    v18 = 2322604033;
  }

  if ((v18 & 0x80000000) == 0)
  {
    if (LH_wcslen(a3))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        v13 = stringmap_reader_WMapToken(v17, &a3[v22], &v33, &v32);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_20;
        }

        v25 = v33;
        if (LH_wcslen(v32) + v24 + 1 >= a4)
        {
          v5 = 2322604041;
          log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v26, v27, v28, 2322604041);
          return v5;
        }

        v22 = (v23 + v25);
        LH_wcscpy(&a5[v24], v32);
        v24 += LH_wcslen(v32);
        v23 = v22;
      }

      while (LH_wcslen(a3) > v22);
    }

    log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v19, v20, v21, v13);
    return v13;
  }

  v13 = v18;
LABEL_20:
  log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v14, v15, v16, v13);
  if (((1 << v13) & 0x10001A) != 0)
  {
    v29 = (v13 & 0x1FFF) - 1972363264;
  }

  else
  {
    v29 = v13;
  }

  if ((v13 & 0x1FFFu) <= 0x14)
  {
    return v29;
  }

  else
  {
    return v13;
  }
}

uint64_t phonmap_GetLhPAlphabetInfoEx(uint64_t a1, int a2, int a3, char *a4, __int16 *a5, char *a6, char *a7)
{
  v14 = 2322604039;
  if (!LH_stricmp(a4, "alphabet"))
  {
    if (!a5)
    {
      return 2322604039;
    }

    v23 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v23 & 0x80000000) != 0)
    {
      return v23;
    }

    v27 = *(a1 + 16);
    log_OutText(*(v27 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : Begin", v24, v25, v26, v43);
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          MapTroughLng = *(a1 + 40);
          goto LABEL_40;
        }

LABEL_47:
        log_OutText(*(v27 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : End (%x)", v28, v29, v30, v14);
        v18 = v14;
LABEL_48:
        if ((v18 & 0x1FFFu) <= 0x14)
        {
          if (((1 << v18) & 0x10001A) != 0)
          {
            return (v18 & 0x1FFF) - 1972363264;
          }

          else
          {
            return v18;
          }
        }

        return v18;
      }

      if (a7 && *a7)
      {
        v37 = *(a1 + 72);
        goto LABEL_39;
      }

      v42 = *(a1 + 72);
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
          MapTroughLng = *(a1 + 24);
LABEL_40:
          LhPAlphabetCore = phonmap_GetLhPAlphabetCore(MapTroughLng, a5, a6);
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      if (a7 && *a7)
      {
        v37 = *(a1 + 56);
LABEL_39:
        MapTroughLng = phonmap_findMapTroughLng(v37, a7);
        if (MapTroughLng)
        {
          goto LABEL_40;
        }

        v14 = 2322604052;
        goto LABEL_47;
      }

      v42 = *(a1 + 56);
    }

    LhPAlphabetCore = phonmap_reader_MapsGetGetLhPAlphabetCore(v42, a5, a6);
LABEL_44:
    v18 = LhPAlphabetCore;
    log_OutText(*(v27 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : End (%x)", v39, v40, v41, LhPAlphabetCore);
    if ((v18 & 0x80000000) == 0)
    {
      return v18;
    }

    goto LABEL_48;
  }

  if (LH_stricmp(a4, "version"))
  {
    return 2322604039;
  }

  v18 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *(a1 + 16);
    log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : Begin (%s)", v15, v16, v17, a4);
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
LABEL_32:
          log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : End (%x, %s)", v20, v21, v22, v14);
          return v14;
        }

LABEL_19:
        v33 = *a5;
        v34 = cstdlib_strlen((a1 + 88));
        if (v33)
        {
          if (v34 < *a5)
          {
            v35 = (a1 + 88);
LABEL_28:
            cstdlib_strcpy(a6, v35);
LABEL_30:
            log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : End (%x, %s)", v20, v21, v22, v18);
            return v18;
          }

LABEL_31:
          v14 = 2322604041;
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    v36 = *a5;
    v34 = cstdlib_strlen((a1 + 344));
    if (v36)
    {
      if (v34 < *a5)
      {
        v35 = (a1 + 344);
        goto LABEL_28;
      }

      goto LABEL_31;
    }

LABEL_29:
    *a5 = v34 + 1;
    goto LABEL_30;
  }

  return v18;
}

uint64_t phonmap_GetLhPSampleEx(void *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v6 = 2322604039;
  if (!a4 || !a5 || !*a4)
  {
    return v6;
  }

  v12 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = a1[2];
  log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPSample : Begin (%s)", v13, v14, v15, a4);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MapTroughLng = a1[4];
LABEL_20:
        v22 = stringmap_reader_Map(MapTroughLng, a4, a5);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a6 && *a6)
    {
      v21 = a1[8];
LABEL_19:
      MapTroughLng = phonmap_findMapTroughLng(v21, a6);
      if (MapTroughLng)
      {
        goto LABEL_20;
      }

      v6 = 2322604052;
      goto LABEL_27;
    }

    v23 = a1[8];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (a6 && *a6)
    {
      v21 = a1[10];
      goto LABEL_19;
    }

    v23 = a1[10];
LABEL_23:
    v22 = phonmap_reader_Maps(v23, 0, a4, a5);
LABEL_24:
    v6 = v22;
    v24 = *(v16 + 32);
    if ((v6 & 0x80000000) == 0)
    {
      log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP phonmap_GetLhPSample : End (%x, %s)", v17, v18, v19, v6);
      return v6;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    MapTroughLng = a1[6];
    goto LABEL_20;
  }

LABEL_27:
  v24 = *(v16 + 32);
LABEL_28:
  log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP phonmap_GetLhPSample : End (%x, %s)", v17, v18, v19, v6);
  if (((1 << v6) & 0x10001A) != 0)
  {
    v25 = (v6 & 0x1FFF) - 1972363264;
  }

  else
  {
    v25 = v6;
  }

  if ((v6 & 0x1FFFu) <= 0x14)
  {
    return v25;
  }

  else
  {
    return v6;
  }
}

uint64_t phonmap_LhPToLhTtsSymEx(void *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v6 = 2322604039;
  if (!a4 || !a5 || !*a4)
  {
    return v6;
  }

  v12 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = a1[2];
  log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : Begin (%s)", v13, v14, v15, a4);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MapTroughLng = a1[3];
LABEL_20:
        v22 = stringmap_reader_Map(MapTroughLng, a4, a5);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a6 && *a6)
    {
      v21 = a1[7];
LABEL_19:
      MapTroughLng = phonmap_findMapTroughLng(v21, a6);
      if (MapTroughLng)
      {
        goto LABEL_20;
      }

      v6 = 2322604052;
      goto LABEL_27;
    }

    v23 = a1[7];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (a6 && *a6)
    {
      v21 = a1[9];
      goto LABEL_19;
    }

    v23 = a1[9];
LABEL_23:
    v22 = phonmap_reader_Maps(v23, 0, a4, a5);
LABEL_24:
    v6 = v22;
    v24 = *(v16 + 32);
    if ((v6 & 0x80000000) == 0)
    {
      log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : End (%x, %s)", v17, v18, v19, v6);
      return v6;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    MapTroughLng = a1[5];
    goto LABEL_20;
  }

LABEL_27:
  v24 = *(v16 + 32);
LABEL_28:
  log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : End (%x, %s)", v17, v18, v19, v6);
  if (((1 << v6) & 0x10001A) != 0)
  {
    v25 = (v6 & 0x1FFF) - 1972363264;
  }

  else
  {
    v25 = v6;
  }

  if ((v6 & 0x1FFFu) <= 0x14)
  {
    return v25;
  }

  else
  {
    return v6;
  }
}

uint64_t phonmap_LhPToLhPSequenceEx(void *a1, int a2, int a3, const char **a4, char *a5)
{
  v5 = 2322604039;
  if (a4 && *a4)
  {
    v10 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        a5 = a1[3];
        v44 = 1;
LABEL_14:
        v12 = a1[2];
        v13 = *a4;
        v14 = cstdlib_strlen(*a4);
        v15 = *a4;
        log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : Begin (%s)", v16, v17, v18, *a4);
        v50 = LhpuCreate(*(v12 + 8));
        if (!v50)
        {
          log_OutPublic(*(v12 + 32), "PHONMAP", 29000, 0, v19, v20, v21, v22, v43);
          return 2322604042;
        }

        v23 = &v13[v14];
        v49 = 0;
        v48 = 0;
        if (v15 < &v13[v14])
        {
          do
          {
            if (*v15 == 18)
            {
              ++v15;
            }

            else if (LhplGetSymbol(v15, v50, &v49 + 1, &v49))
            {
              cstdlib_memmove(v15, v15 + 1, (v23 + ~v15));
              *--v23 = 0;
              log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v24, v25, v26, v43);
            }

            else
            {
              if (a5)
              {
                v48 = 0;
                v27 = v50;
                Symbol = LhpuGetSymbol(v50);
                stringmap_reader_Map(a5, Symbol, &v48);
                if (v48 || (v29 = LhpuGetSymbol(v27), !cstdlib_strcmp(v29, "_")))
                {
                  v15 += v49 + 1;
                }

                else
                {
                  cstdlib_memmove(v15, &v15[v49 + 1], (~(v49 + v15) + v23));
                  v23 += ~v49;
                  *v23 = 0;
                  log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v30, v31, v32, v43);
                }
              }

              if (!v44)
              {
                v47 = 0;
                if ((ssftmap_IteratorOpen(a1[7], 0, 1, &v47) & 0x80000000) == 0)
                {
                  v45 = 0;
                  v46 = 0;
                  v48 = 0;
                  while ((ssftmap_IteratorNext(v47, &v46, &v45) & 0x80000000) == 0)
                  {
                    v48 = 0;
                    v33 = v45;
                    v34 = LhpuGetSymbol(v50);
                    stringmap_reader_Map(v33, v34, &v48);
                    if (v48)
                    {
                      v15 += v49 + 1;
                      goto LABEL_34;
                    }
                  }

                  if (!v48)
                  {
                    v35 = LhpuGetSymbol(v50);
                    if (cstdlib_strcmp(v35, "_"))
                    {
                      cstdlib_memmove(v15, &v15[v49 + 1], (~(v49 + v15) + v23));
                      v23 += ~v49;
                      *v23 = 0;
                      log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v36, v37, v38, v43);
                    }
                  }

LABEL_34:
                  ssftmap_IteratorClose(v47);
                }
              }
            }
          }

          while (v15 < v23);
        }

        LhpuRemove(*(v12 + 8), &v50);
        log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : End (%s)", v39, v40, v41, *a4);
        return v10;
      }
    }

    else
    {
      MapTroughLng = phonmap_findMapTroughLng(a1[7], a5);
      if (MapTroughLng)
      {
        if (a5)
        {
          v44 = *a5 != 0;
          if (*a5)
          {
            a5 = MapTroughLng;
          }

          else
          {
            a5 = 0;
          }
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_14;
      }

      return 2322604052;
    }
  }

  return v5;
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheckEx(void *a1, int a2, int a3, const char *a4, unsigned int a5, char *a6, char *a7)
{
  LODWORD(result) = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, a7);
  v8 = (result & 0x1FFFu) > 0x14 || ((1 << result) & 0x10001A) == 0;
  v9 = result & 0x1FFF | 0x8A702000;
  if (v8)
  {
    v9 = result;
  }

  if (result < 0)
  {
    return v9;
  }

  else
  {
    return result;
  }
}

uint64_t phonmap_loc_LoadData(_WORD **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v133 = *MEMORY[0x277D85DE8];
  *v122 = 0;
  v121 = 0;
  v119 = 0;
  *__s1 = 0;
  __s2 = 0;
  *v118 = 0;
  v116 = 0;
  v114 = 0;
  v132[0] = 0;
  v131[0] = 0;
  v130[0] = 0;
  v115[0] = 0;
  v11 = a1 + 3;
  v10 = a1[3];
  if (v10)
  {
    stringmap_reader_ObjClose(v10, a2, a3, a4, a5, a6, a7, a8);
    *v11 = 0;
  }

  v12 = a1[4];
  if (v12)
  {
    stringmap_reader_ObjClose(v12, a2, a3, a4, a5, a6, a7, a8);
    a1[4] = 0;
  }

  v13 = a1[5];
  if (v13)
  {
    stringmap_reader_ObjClose(v13, a2, a3, a4, a5, a6, a7, a8);
    a1[5] = 0;
  }

  v14 = a1[6];
  if (v14)
  {
    stringmap_reader_ObjClose(v14, a2, a3, a4, a5, a6, a7, a8);
    a1[6] = 0;
  }

  v113 = 0;
  __b = 0u;
  v112 = 0u;
  v16 = (a1 + 7);
  v15 = a1[7];
  if (v15)
  {
    *&__dst = 0;
    if ((ssftmap_IteratorOpen(v15, 0, 1, &__dst) & 0x80000000) == 0)
    {
      v124[0] = 0;
      *__src = 0;
      while ((ssftmap_IteratorNext(__dst, v124, __src) & 0x80000000) == 0)
      {
        stringmap_reader_ObjClose(*__src, v17, v18, v19, v20, v21, v22, v23);
      }

      ssftmap_IteratorClose(__dst);
    }

    ssftmap_ObjClose(*v16);
    *v16 = 0;
  }

  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v112 + 1) = stringmap_loc_ElemCopyPtr_0;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v113 = stringmap_loc_ElemFreeNoOp_0;
  *&v112 = ssftmap_ElemCompareKeysString;
  v24 = *(a1[2] + 1);
  __dst = __b;
  v126 = v112;
  v127 = stringmap_loc_ElemFreeNoOp_0;
  v25 = ssftmap_ObjOpen(v24, 0, &__dst, a1 + 7);
  if ((v25 & 0x80000000) == 0)
  {
    v27 = (a1 + 8);
    v26 = a1[8];
    if (v26)
    {
      *&__dst = 0;
      if ((ssftmap_IteratorOpen(v26, 0, 1, &__dst) & 0x80000000) == 0)
      {
        v124[0] = 0;
        *__src = 0;
        while ((ssftmap_IteratorNext(__dst, v124, __src) & 0x80000000) == 0)
        {
          stringmap_reader_ObjClose(*__src, v28, v29, v30, v31, v32, v33, v34);
        }

        ssftmap_IteratorClose(__dst);
      }

      ssftmap_ObjClose(*v27);
      *v27 = 0;
    }

    v35 = *(a1[2] + 1);
    __dst = __b;
    v126 = v112;
    v127 = v113;
    v25 = ssftmap_ObjOpen(v35, 0, &__dst, a1 + 8);
    if ((v25 & 0x80000000) == 0)
    {
      v37 = (a1 + 9);
      v36 = a1[9];
      if (v36)
      {
        *&__dst = 0;
        if ((ssftmap_IteratorOpen(v36, 0, 1, &__dst) & 0x80000000) == 0)
        {
          v124[0] = 0;
          *__src = 0;
          while ((ssftmap_IteratorNext(__dst, v124, __src) & 0x80000000) == 0)
          {
            stringmap_reader_ObjClose(*__src, v38, v39, v40, v41, v42, v43, v44);
          }

          ssftmap_IteratorClose(__dst);
        }

        ssftmap_ObjClose(*v37);
        *v37 = 0;
      }

      v45 = *(a1[2] + 1);
      __dst = __b;
      v126 = v112;
      v127 = v113;
      v25 = ssftmap_ObjOpen(v45, 0, &__dst, a1 + 9);
      if ((v25 & 0x80000000) == 0)
      {
        v47 = (a1 + 10);
        v46 = a1[10];
        if (v46)
        {
          *&__dst = 0;
          if ((ssftmap_IteratorOpen(v46, 0, 1, &__dst) & 0x80000000) == 0)
          {
            v124[0] = 0;
            *__src = 0;
            while ((ssftmap_IteratorNext(__dst, v124, __src) & 0x80000000) == 0)
            {
              stringmap_reader_ObjClose(*__src, v48, v49, v50, v51, v52, v53, v54);
            }

            ssftmap_IteratorClose(__dst);
          }

          ssftmap_ObjClose(*v47);
          *v47 = 0;
        }

        v55 = *(a1[2] + 1);
        __dst = __b;
        v126 = v112;
        v127 = v113;
        v25 = ssftmap_ObjOpen(v55, 0, &__dst, a1 + 10);
        if ((v25 & 0x80000000) == 0)
        {
          v63 = a1[75];
          if (v63)
          {
            stringmap_reader_ObjClose(v63, v56, v57, v58, v59, v60, v61, v62);
            a1[75] = 0;
          }

          v64 = a1[76];
          if (v64)
          {
            stringmap_reader_ObjClose(v64, v56, v57, v58, v59, v60, v61, v62);
            a1[76] = 0;
          }

          if ((paramc_ParamGetStr(*(a1[2] + 5), "langcode", &__s2) & 0x80000000) != 0)
          {
            __s2 = "";
          }

          v107 = v11;
          if ((paramc_ParamGetStr(*(a1[2] + 5), "voicemodel", &v116) & 0x80000000) != 0)
          {
            v116 = 0;
          }

          cstdlib_strcpy(&__dst, "phonmap/");
          cstdlib_strcat(&__dst, __s2);
          cstdlib_strcat(&__dst, "/");
          cstdlib_strcat(&__dst, a2);
          brokeraux_ComposeBrokerString(a1[2], &__dst, 1, 1, __s2, a2, v116, v130, 0x80uLL);
          cstdlib_strcpy(v128, "phonmap_ipa/");
          cstdlib_strcat(v128, __s2);
          brokeraux_ComposeBrokerString(a1[2], v128, 1, 1, __s2, 0, 0, v131, 0x80uLL);
          cstdlib_strcpy(v129, &__dst);
          brokeraux_ComposeBrokerString(a1[2], v129, 1, 1, __s2, a2, 0, v132, 0x80uLL);
          v65 = 0;
          while (1)
          {
            if (*(a1[2] + 3))
            {
              v66 = 2;
              goto LABEL_58;
            }

            for (i = &v130[128 * v65]; *i == 47; ++i)
            {
              *i = 95;
LABEL_57:
              ;
            }

            if (*i)
            {
              goto LABEL_57;
            }

            cstdlib_strcat(&v130[128 * v65], ".dat");
            v66 = 3;
LABEL_58:
            *(&v124[32] + ++v65) = v66;
            if (v65 == 3)
            {
              v68 = 0;
              v108 = 0;
              v69 = 0;
              v70 = 1;
              while (1)
              {
                v109 = &v130[128 * v69];
                v71 = v69;
                v72 = ssftriff_reader_ObjOpen(*a1, a1[1], *(&v124[32] + v69 + 1), v109, "PHMP", 1031, v122);
                if ((v72 & 0x80000000) != 0)
                {
                  if (!v70 && !v68)
                  {
                    return v72;
                  }

                  v104 = v71;
                  v72 = 0;
                }

                else
                {
                  v73 = v108;
                  if (!v71)
                  {
                    v73 = 1;
                  }

                  v108 = v73;
                  v106 = v71;
                  if ((ssftriff_reader_OpenChunk(*v122, __s1, &v119, v118) & 0x80000000) == 0)
                  {
                    v81 = v71 | 2;
                    while (1)
                    {
                      if (!cstdlib_strcmp(__s1, "LINF") || !cstdlib_strcmp(__s1, "VINF"))
                      {
                        if ((v72 & 0x80000000) == 0)
                        {
                          v87 = v119;
                          if (v119)
                          {
                            v88 = 0;
                            do
                            {
                              __src[0] = 0;
                              LOBYTE(v124[0]) = 0;
                              v110 = 256;
                              LODWORD(v72) = ssftriff_reader_ReadStringZ(*v122, *v118, v87, v88, v124, &v110);
                              if ((v72 & 0x80000000) == 0 && v88 < v119)
                              {
                                v88 += v110;
                                v110 = 256;
                                LODWORD(v72) = ssftriff_reader_ReadStringZ(*v122, *v118, v119, v88, __src, &v110);
                              }

                              if ((v72 & 0x80000000) != 0)
                              {
                                break;
                              }

                              v89 = v110;
                              if (!LH_stricmp(v124, "version"))
                              {
                                v90 = (a1 + 11);
                                if (v81 != 2)
                                {
                                  v90 = (a1 + 43);
                                }

                                cstdlib_strcpy(v90, __src);
                              }

                              if (!cstdlib_strcmp(__s1, "VINF") && !LH_stricmp(v124, "language"))
                              {
                                cstdlib_strcpy(v115, __src);
                              }

                              if (!cstdlib_strcmp(__s1, "VINF") && !LH_stricmp(v124, "version"))
                              {
                                cstdlib_strcpy(a1 + 344, __src);
                              }

                              v88 += v89;
                              v87 = v119;
                            }

                            while (v88 < v119);
                          }
                        }

                        goto LABEL_103;
                      }

                      if (!cstdlib_strcmp(__s1, "LANG"))
                      {
                        v82 = *v122;
                        v83 = v109;
                        v84 = *a1;
                        v85 = a1[1];
                        v86 = v107;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "LEXA"))
                      {
                        v82 = *v122;
                        v83 = v109;
                        v84 = *a1;
                        v85 = a1[1];
                        v86 = a1 + 4;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "SLAN"))
                      {
                        v82 = *v122;
                        v83 = v109;
                        v84 = *a1;
                        v85 = a1[1];
                        v86 = a1 + 5;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "SLEX"))
                      {
                        v82 = *v122;
                        v83 = v109;
                        v84 = *a1;
                        v85 = a1[1];
                        v86 = a1 + 6;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "VOIC"))
                      {
                        break;
                      }

                      if (!cstdlib_strcmp(__s1, "VEXA"))
                      {
                        v91 = ssftmap_Find(a1[8], v115, &v114);
                        if (v91 < 0)
                        {
                          v91 = stringmap_reader_ObjOpen(*a1, a1[1], v109, *v122, &v114);
                          if ((v91 & 0x80000000) == 0)
                          {
                            v94 = (a1 + 8);
                            goto LABEL_125;
                          }
                        }

                        goto LABEL_102;
                      }

                      if (!cstdlib_strcmp(__s1, "SVOI"))
                      {
                        v91 = ssftmap_Find(a1[9], v115, &v114);
                        if (v91 < 0)
                        {
                          v91 = stringmap_reader_ObjOpen(*a1, a1[1], v109, *v122, &v114);
                          if ((v91 & 0x80000000) == 0)
                          {
                            v94 = (a1 + 9);
                            goto LABEL_125;
                          }
                        }

                        goto LABEL_102;
                      }

                      if (!cstdlib_strcmp(__s1, "SVEX"))
                      {
                        v91 = ssftmap_Find(a1[10], v115, &v114);
                        if (v91 < 0)
                        {
                          v91 = stringmap_reader_ObjOpen(*a1, a1[1], v109, *v122, &v114);
                          if ((v91 & 0x80000000) == 0)
                          {
                            v94 = (a1 + 10);
LABEL_125:
                            LODWORD(v72) = ssftmap_Insert(*v94, v115, v114);
                            if ((v72 & 0x80000000) != 0)
                            {
                              stringmap_reader_ObjClose(v114, v95, v96, v97, v98, v99, v100, v101);
                            }

                            goto LABEL_103;
                          }
                        }

                        goto LABEL_102;
                      }

                      if (!cstdlib_strcmp(__s1, "IPA "))
                      {
                        v82 = *v122;
                        v83 = v109;
                        v84 = *a1;
                        v85 = a1[1];
                        v86 = a1 + 75;
LABEL_101:
                        v91 = stringmap_reader_ObjOpen(v84, v85, v83, v82, v86);
LABEL_102:
                        LODWORD(v72) = v91;
                        goto LABEL_103;
                      }

                      if (!cstdlib_strcmp(__s1, "SAPI"))
                      {
                        v82 = *v122;
                        v83 = v109;
                        v84 = *a1;
                        v85 = a1[1];
                        v86 = a1 + 76;
                        goto LABEL_101;
                      }

LABEL_103:
                      v92 = ssftriff_reader_CloseChunk(*v122);
                      if (v72 > -1 && v92 < 0)
                      {
                        v72 = v92;
                      }

                      else
                      {
                        v72 = v72;
                      }

                      if ((ssftriff_reader_OpenChunk(*v122, __s1, &v119, v118) & 0x80000000) != 0)
                      {
                        goto LABEL_128;
                      }
                    }

                    if (!v115[0])
                    {
                      cstdlib_strcpy(v115, __s2);
                    }

                    v91 = ssftmap_Find(a1[7], v115, &v114);
                    if (v91 < 0)
                    {
                      v91 = stringmap_reader_ObjOpen(*a1, a1[1], v109, *v122, &v114);
                      if ((v91 & 0x80000000) == 0)
                      {
                        v94 = (a1 + 7);
                        goto LABEL_125;
                      }
                    }

                    goto LABEL_102;
                  }

LABEL_128:
                  if (*v122)
                  {
                    v102 = ssftriff_reader_ObjClose(*v122, v74, v75, v76, v77, v78, v79, v80);
                    *v122 = 0;
                    if (v72 > -1 && v102 < 0)
                    {
                      v72 = v102;
                    }

                    else
                    {
                      v72 = v72;
                    }
                  }

                  v104 = v106;
                }

                v69 = v104 + 1;
                if (v69 != 3)
                {
                  v68 = v108 != 0;
                  v70 = v69 != 2;
                  if (v69 != 2 || !v108)
                  {
                    continue;
                  }
                }

                return v72;
              }
            }
          }
        }
      }
    }
  }

  return v25;
}

uint64_t phonmap_loc_GetStrMap(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  *a4 = 0;
  cstdlib_strcpy(__dst, a2);
  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, a3);
  v10 = 0;
  if ((ssftmap_Find(*(a1 + 616), __dst, a4) & 0x80000000) != 0)
  {
    Chunk = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 2 * (a5 != 0), a2, "PHMP", 1031, &v26);
    if ((Chunk & 0x80000000) != 0 || (Chunk = ssftriff_reader_FindChunk(v26, a3, 1, &v25, &v24), (Chunk & 0x80000000) != 0) || (Chunk = stringmap_reader_ObjOpen(*a1, *(a1 + 8), a2, v26, a4), (Chunk & 0x80000000) != 0))
    {
      v10 = Chunk;
    }

    else
    {
      v10 = ssftmap_Insert(*(a1 + 616), __dst, *a4);
      if ((v10 & 0x80000000) != 0)
      {
        stringmap_reader_ObjClose(*a4, v12, v13, v14, v15, v16, v17, v18);
        *a4 = 0;
      }
    }

    if (v24)
    {
      v19 = ssftriff_reader_CloseChunk(v26);
      if (v19 >= 0 || v10 <= -1)
      {
        v10 = v10;
      }

      else
      {
        v10 = v19;
      }
    }

    if (v26)
    {
      v21 = ssftriff_reader_ObjClose(v26, v12, v13, v14, v15, v16, v17, v18);
      if (v21 >= 0 || v10 <= -1)
      {
        v10 = v10;
      }

      else
      {
        v10 = v21;
      }
    }

    if ((v10 & 0x80000000) == 0)
    {
      if (*a4)
      {
        return v10;
      }

      else
      {
        return 2322604033;
      }
    }
  }

  return v10;
}

uint64_t phonmap_findMapTroughLng(uint64_t result, char *a2)
{
  if (result)
  {
    v5 = 0;
    if ((ssftmap_IteratorOpen(result, 0, 1, &v5) & 0x80000000) == 0)
    {
      v3 = 0;
      v4 = 0;
      while ((ssftmap_IteratorNext(v5, &v4, &v3) & 0x80000000) == 0)
      {
        if (!a2 || !LH_stricmp(v4, a2))
        {
          ssftmap_IteratorClose(v5);
          return v3;
        }
      }

      ssftmap_IteratorClose(v5);
    }

    return 0;
  }

  return result;
}

uint64_t phonmap_reader_Maps(uint64_t a1, int a2, char *a3, uint64_t *a4)
{
  v12 = 0;
  v4 = 2322604052;
  if (!a1)
  {
    return 2322604039;
  }

  if ((ssftmap_IteratorOpen(a1, 0, 1, &v12) & 0x80000000) == 0)
  {
    *v10 = 0;
    v11 = 0;
    while ((ssftmap_IteratorNext(v12, &v11, v10) & 0x80000000) == 0)
    {
      if (a2)
      {
        v8 = stringmap_reader_ReverseMap(*v10, a3, a4);
      }

      else
      {
        v8 = stringmap_reader_Map(*v10, a3, a4);
      }

      v4 = v8;
      if ((v8 & 0x80000000) == 0)
      {
        v4 = 0;
        break;
      }
    }

    ssftmap_IteratorClose(v12);
  }

  return v4;
}

uint64_t phonmap_LhPToLhTtsSequenceLng(void *a1, int a2, int a3, const char *a4, unsigned int a5, char *a6, char *a7)
{
  v118 = *MEMORY[0x277D85DE8];
  v7 = 2322604039;
  v109 = 0;
  if (!a4)
  {
    return 2322604039;
  }

  if (!a6)
  {
    return 2322604039;
  }

  if (!a5)
  {
    return 2322604039;
  }

  v10 = a4;
  if (!*a4)
  {
    return 2322604039;
  }

  StrMap = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((StrMap & 0x80000000) != 0)
  {
    return StrMap;
  }

  v105 = a1[2];
  if (a3)
  {
    if (a3 == 1)
    {
      if (a7 && *a7)
      {
        cstdlib_strcpy(__dst, "phonmap/");
        cstdlib_strcat(__dst, a7);
        StrMap = phonmap_loc_GetStrMap(a1, __dst, "LANG", &v109, 0);
        if ((StrMap & 0x80000000) != 0)
        {
          return StrMap;
        }

        v19 = v109;
      }

      else
      {
        v19 = a1[3];
        v109 = v19;
      }

      v22 = v19;
      if (!v19)
      {
        goto LABEL_97;
      }

      goto LABEL_20;
    }

    return 2322604039;
  }

  MapTroughLng = phonmap_findMapTroughLng(a1[7], a7);
  if (!MapTroughLng)
  {
    return 2322604052;
  }

  if (a7 && *a7)
  {
    v22 = MapTroughLng;
    v109 = MapTroughLng;
LABEL_20:
    if (*v10)
    {
      v7 = safeh_HandleCheck(a1, a2, 29348, 624);
      if ((v7 & 0x80000000) == 0)
      {
        v23 = a1[2];
        v24 = cstdlib_strlen(v10);
        *a6 = 0;
        log_OutText(*(v23 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v25, v26, v27, v10);
        v112 = LhpuCreate(*(v23 + 8));
        if (v112)
        {
          v111 = 0;
          __s = 0;
          if (v24 >= 1)
          {
            v32 = 0;
            v33 = &v10[v24];
            v102 = a5;
            v34 = v22;
            v35 = v33;
            v100 = v33;
            v101 = v34;
            v104 = a6;
            while (1)
            {
              v106 = v7;
              v36 = v112;
              Symbol = LhplGetSymbol(v10, v112, &v111 + 1, &v111);
              v107 = v10;
              if (!Symbol)
              {
                break;
              }

              if (Symbol == 1)
              {
                v7 = v106;
                goto LABEL_94;
              }

              v38 = 1;
              v39 = 1;
              v7 = v106;
LABEL_87:
              if (v39)
              {
                v10 = &v107[v38];
                if (&v107[v38] < v35)
                {
                  continue;
                }
              }

              goto LABEL_94;
            }

            __s1[0] = 0;
            __s = 0;
            v40 = LhpuGetSymbol(v36);
            stringmap_reader_Map(v34, v40, &__s);
            if (__s)
            {
              if (!LhpuHasDurSpec(v36) && !LhpuGetcBp(v36))
              {
                cstdlib_strcpy(__s1, __s);
                v76 = cstdlib_strchr(__s1, 124);
                v45 = v104;
                if (v76)
                {
                  *v76 = 0;
                }

                v7 = v106;
                goto LABEL_84;
              }

              v41 = cstdlib_strchr(__s, 124);
              if (v41)
              {
                v42 = 0;
                do
                {
                  v43 = v42;
                  v44 = &__s[v42++];
                }

                while (v44 < v41);
              }

              else
              {
                v43 = cstdlib_strlen(__s);
              }

              if (v43 < 2u)
              {
                cstdlib_strcpy(__s1, __s);
                if (LhpuHasDurSpec(v36))
                {
                  DurValue = LhpuGetDurValue(v36);
                  __s2[0] = 91;
                  IsAbs = LhpuDurSpecIsAbs(v36);
                  v59 = &__s2[1];
                  if (!IsAbs)
                  {
                    v59 = &__s2[1];
                    if (DurValue >= 1)
                    {
                      __s2[1] = 43;
                      v59 = v116;
                    }
                  }

                  LH_itoa(DurValue, v59, 0xAu);
                  cstdlib_strcat(__s1, __s2);
                  if (LhpuGetcBp(v36))
                  {
                    v60 = 0;
                    v61 = 0;
                    do
                    {
                      __s2[0] = 40;
                      v62 = LhpuGetpBp(v36);
                      LH_itoa(*(v62 + v60 + 2), &__s2[1], 0xAu);
                      cstdlib_strcat(__s2, ",");
                      v63 = *(LhpuGetpBp(v36) + v60);
                      v64 = cstdlib_strlen(__s2);
                      LH_itoa(v63, &__s2[v64], 0xAu);
                      cstdlib_strcat(__s2, ")");
                      cstdlib_strcat(__s1, __s2);
                      ++v61;
                      v60 += 4;
                    }

                    while (v61 < LhpuGetcBp(v36));
                  }

                  cstdlib_strcat(__s1, "]");
                  v45 = v104;
                  v7 = v106;
                  v34 = v101;
                  goto LABEL_84;
                }

                cstdlib_strcat(__s1, "[");
                if (LhpuGetcBp(v36))
                {
                  v71 = 0;
                  v72 = 0;
                  do
                  {
                    __s2[0] = 40;
                    v73 = LhpuGetpBp(v36);
                    LH_itoa(*(v73 + v71 + 2), &__s2[1], 0xAu);
                    cstdlib_strcat(__s2, ",");
                    v74 = *(LhpuGetpBp(v36) + v71);
                    v75 = cstdlib_strlen(__s2);
                    LH_itoa(v74, &__s2[v75], 0xAu);
                    cstdlib_strcat(__s2, ")");
                    cstdlib_strcat(__s1, __s2);
                    ++v72;
                    v71 += 4;
                  }

                  while (v72 < LhpuGetcBp(v36));
                }

                cstdlib_strcat(__s1, "]");
                v45 = v104;
                v7 = v106;
              }

              else
              {
                v46 = 0;
                v114 = 0;
                v47 = v43;
                do
                {
                  if (v41)
                  {
                    __s2[v46 - 8] = cstdlib_atoi(v41 + 1);
                    v41 = cstdlib_strchr(v41 + 1, 58);
                  }

                  ++v46;
                }

                while (v47 != v46);
                v48 = v112;
                if (LhpuHasDurSpec(v112))
                {
                  if (LhpuDurSpecIsAbs(v48))
                  {
                    v49 = 0;
                    LODWORD(v50) = 0;
                    v51 = 0;
                    v103 = v47;
                    do
                    {
                      *__s2 = __s[v49];
                      cstdlib_strcat(__s1, __s2);
                      v52 = 1374389535 * (__s2[v49 - 8] * LhpuGetDurValue(v48) + 50);
                      __s2[0] = 91;
                      v108 = (v52 >> 37) + (v52 >> 63);
                      LH_itoa(v108, &__s2[1], 0xAu);
                      cstdlib_strcat(__s1, __s2);
                      if (v50 < LhpuGetcBp(v48))
                      {
                        v53 = 4 * v50;
                        v50 = v50;
                        do
                        {
                          if (v108 + v51 < *(LhpuGetpBp(v48) + v53 + 2))
                          {
                            break;
                          }

                          __s2[0] = 40;
                          v54 = LhpuGetpBp(v48);
                          LH_itoa(*(v54 + v53 + 2) - v51, &__s2[1], 0xAu);
                          cstdlib_strcat(__s2, ",");
                          v55 = *(LhpuGetpBp(v48) + v53);
                          v56 = cstdlib_strlen(__s2);
                          LH_itoa(v55, &__s2[v56], 0xAu);
                          cstdlib_strcat(__s2, ")");
                          cstdlib_strcat(__s1, __s2);
                          ++v50;
                          v53 += 4;
                        }

                        while (v50 < LhpuGetcBp(v48));
                        LODWORD(v50) = v50;
                        v47 = v103;
                      }

                      cstdlib_strcat(__s1, "]");
                      v51 += v108;
                      ++v49;
                    }

                    while (v49 != v47);
                  }

                  else
                  {
                    *__s2 = *__s;
                    cstdlib_strcat(__s1, __s2);
                    __s2[0] = 91;
                    v77 = LhpuGetDurValue(v48);
                    v78 = 1374389535 * (v114 * v77 + 50);
                    v79 = ((v78 >> 37) + (v78 >> 63));
                    v80 = &__s2[1];
                    if (v79 >= 1)
                    {
                      __s2[1] = 43;
                      v80 = v116;
                    }

                    LH_itoa(v79, v80, 0xAu);
                    cstdlib_strcat(__s1, __s2);
                    if (LhpuGetcBp(v48))
                    {
                      v81 = 0;
                      v82 = 0;
                      do
                      {
                        __s2[0] = 40;
                        v83 = LhpuGetpBp(v48);
                        LH_itoa(*(v83 + v81 + 2), &__s2[1], 0xAu);
                        cstdlib_strcat(__s2, ",");
                        v84 = *(LhpuGetpBp(v48) + v81);
                        v85 = cstdlib_strlen(__s2);
                        LH_itoa(v84, &__s2[v85], 0xAu);
                        cstdlib_strcat(__s2, ")");
                        cstdlib_strcat(__s1, __s2);
                        ++v82;
                        v81 += 4;
                      }

                      while (v82 < LhpuGetcBp(v48));
                    }

                    cstdlib_strcat(__s1, "]");
                    v86 = 1;
                    do
                    {
                      *__s2 = __s[v86];
                      cstdlib_strcat(__s1, __s2);
                      __s2[0] = 91;
                      v87 = 1374389535 * (__s2[v86 - 8] * LhpuGetDurValue(v48) + 50);
                      v88 = ((v87 >> 37) + (v87 >> 63));
                      v89 = &__s2[1];
                      if (v88 >= 1)
                      {
                        __s2[1] = 43;
                        v89 = v116;
                      }

                      LH_itoa(v88, v89, 0xAu);
                      cstdlib_strcat(__s1, __s2);
                      cstdlib_strcat(__s1, "]");
                      ++v86;
                    }

                    while (v47 != v86);
                  }
                }

                else
                {
                  *__s2 = *__s;
                  cstdlib_strcat(__s1, __s2);
                  cstdlib_strcat(__s1, "[");
                  if (LhpuGetcBp(v48))
                  {
                    v65 = 0;
                    v66 = 0;
                    do
                    {
                      __s2[0] = 40;
                      v67 = LhpuGetpBp(v48);
                      LH_itoa(*(v67 + v65 + 2), &__s2[1], 0xAu);
                      cstdlib_strcat(__s2, ",");
                      v68 = *(LhpuGetpBp(v48) + v65);
                      v69 = cstdlib_strlen(__s2);
                      LH_itoa(v68, &__s2[v69], 0xAu);
                      cstdlib_strcat(__s2, ")");
                      cstdlib_strcat(__s1, __s2);
                      ++v66;
                      v65 += 4;
                    }

                    while (v66 < LhpuGetcBp(v48));
                  }

                  cstdlib_strcat(__s1, "]");
                  v70 = 1;
                  do
                  {
                    *__s2 = __s[v70];
                    cstdlib_strcat(__s1, __s2);
                    ++v70;
                  }

                  while (v47 != v70);
                }

                v45 = v104;
                v7 = v106;
                v34 = v101;
              }

              v35 = v100;
            }

            else
            {
              v7 = 1;
              v45 = v104;
            }

LABEL_84:
            v90 = cstdlib_strlen(__s1) + v32;
            v39 = v90 < v102;
            if (v90 < v102)
            {
              cstdlib_strcat(v45, __s1);
              v32 += cstdlib_strlen(__s1);
            }

            v38 = v111 + 1;
            goto LABEL_87;
          }

LABEL_94:
          LhpuRemove(*(v23 + 8), &v112);
          log_OutText(*(v23 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v91, v92, v93, v7);
          if (v7 == 1)
          {
            log_OutText(*(v23 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v15, v16, v17, v98);
            v7 = 1;
          }
        }

        else
        {
          log_OutPublic(*(v23 + 32), "PHONMAP", 29000, 0, v28, v29, v30, v31, v97);
          v7 = 2322604042;
        }
      }
    }

    StrMap = v7;
    goto LABEL_97;
  }

  StrMap = phonmap_LhPToLhTtsSequenceLngMoreMaps(a1, a2, a1[7], v10, a5, a6);
LABEL_97:
  log_OutText(*(v105 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSequence : End (%x, %s)", v15, v16, v17, StrMap);
  if (StrMap == 1)
  {
    log_OutText(*(v105 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v94, v95, v96, v99);
    return 1;
  }

  else if ((StrMap & 0x80000000) != 0 && (StrMap & 0x1FFFu) <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
  {
    return (StrMap & 0x1FFF) - 1972363264;
  }

  return StrMap;
}

uint64_t phonmap_LhPToLhTtsSequenceLngMoreMaps(uint64_t a1, int a2, uint64_t a3, const char *a4, unsigned int a5, char *a6)
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = 2322604039;
  if (a5)
  {
    v7 = a4;
    if (*a4)
    {
      v12 = safeh_HandleCheck(a1, a2, 29348, 624);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      else
      {
        v97 = v12;
        v13 = *(a1 + 16);
        v14 = cstdlib_strlen(v7);
        *a6 = 0;
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v15, v16, v17, v7);
        v107 = LhpuCreate(*(v13 + 8));
        if (v107)
        {
          v93 = v13;
          v106 = 0;
          __src = 0;
          if (v14 >= 1)
          {
            v22 = &v7[v14];
            v23 = 0;
            v100 = a5;
            v94 = a3;
            v95 = a6;
            v96 = v22;
            do
            {
              Symbol = LhplGetSymbol(v7, v107, &v106 + 1, &v106);
              if (Symbol)
              {
                if (Symbol == 1)
                {
                  break;
                }

                ++v7;
                v25 = 1;
              }

              else
              {
                v104 = 0;
                v25 = 1;
                if ((ssftmap_IteratorOpen(a3, 0, 1, &v104) & 0x80000000) == 0)
                {
                  v102 = 0;
                  v103 = 0;
                  __src = 0;
                  if ((ssftmap_IteratorNext(v104, &v103, &v102) & 0x80000000) != 0)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v26 = v107;
                    __s[0] = 0;
                    __src = 0;
                    v27 = v102;
                    v28 = LhpuGetSymbol(v107);
                    stringmap_reader_Map(v27, v28, &__src);
                    if (__src)
                    {
                      v29 = 0;
LABEL_22:
                      if (LhpuHasDurSpec(v26) || LhpuGetcBp(v26))
                      {
                        v32 = cstdlib_strchr(__src, 124);
                        if (v32)
                        {
                          v33 = 0;
                          do
                          {
                            v34 = v33;
                            v35 = &__src[v33++];
                          }

                          while (v35 < v32);
                        }

                        else
                        {
                          v34 = cstdlib_strlen(__src);
                        }

                        v98 = v23;
                        if (v34 < 2u)
                        {
                          cstdlib_strcpy(__s, __src);
                          if (LhpuHasDurSpec(v26))
                          {
                            DurValue = LhpuGetDurValue(v26);
                            __s2 = 91;
                            IsAbs = LhpuDurSpecIsAbs(v26);
                            v53 = &v110;
                            if (!IsAbs)
                            {
                              v53 = &v110;
                              if (DurValue >= 1)
                              {
                                v110 = 43;
                                v53 = v111;
                              }
                            }

                            LH_itoa(DurValue, v53, 0xAu);
                            cstdlib_strcat(__s, &__s2);
                            if (LhpuGetcBp(v26))
                            {
                              v54 = 0;
                              v55 = 0;
                              do
                              {
                                __s2 = 40;
                                v56 = LhpuGetpBp(v26);
                                LH_itoa(*(v56 + v54 + 2), &v110, 0xAu);
                                cstdlib_strcat(&__s2, ",");
                                v57 = *(LhpuGetpBp(v26) + v54);
                                v58 = cstdlib_strlen(&__s2);
                                LH_itoa(v57, &__s2 + v58, 0xAu);
                                cstdlib_strcat(&__s2, ")");
                                cstdlib_strcat(__s, &__s2);
                                ++v55;
                                v54 += 4;
                              }

                              while (v55 < LhpuGetcBp(v26));
                            }
                          }

                          else
                          {
                            cstdlib_strcat(__s, "[");
                            if (LhpuGetcBp(v26))
                            {
                              v65 = 0;
                              v66 = 0;
                              do
                              {
                                __s2 = 40;
                                v67 = LhpuGetpBp(v26);
                                LH_itoa(*(v67 + v65 + 2), &v110, 0xAu);
                                cstdlib_strcat(&__s2, ",");
                                v68 = *(LhpuGetpBp(v26) + v65);
                                v69 = cstdlib_strlen(&__s2);
                                LH_itoa(v68, &__s2 + v69, 0xAu);
                                cstdlib_strcat(&__s2, ")");
                                cstdlib_strcat(__s, &__s2);
                                ++v66;
                                v65 += 4;
                              }

                              while (v66 < LhpuGetcBp(v26));
                            }
                          }

                          cstdlib_strcat(__s, "]");
                          a3 = v94;
                          a6 = v95;
                        }

                        else
                        {
                          v36 = 0;
                          v108 = 0;
                          v37 = v34;
                          do
                          {
                            if (v32)
                            {
                              *(&v108 + v36) = cstdlib_atoi(v32 + 1);
                              v32 = cstdlib_strchr(v32 + 1, 58);
                            }

                            ++v36;
                          }

                          while (v37 != v36);
                          v38 = v107;
                          v101 = v37;
                          if (LhpuHasDurSpec(v107))
                          {
                            if (LhpuDurSpecIsAbs(v38))
                            {
                              v39 = 0;
                              LODWORD(v40) = 0;
                              v41 = 0;
                              v42 = 50;
                              v99 = v7;
                              do
                              {
                                __s2 = __src[v39];
                                v110 = 0;
                                cstdlib_strcat(__s, &__s2);
                                v43 = LhpuGetDurValue(v38);
                                v44 = v42;
                                v45 = v42 + *(&v108 + v39) * v43;
                                v46 = (v42 + *(&v108 + v39) * v43) / 100;
                                __s2 = 91;
                                LH_itoa((v45 / 100), &v110, 0xAu);
                                cstdlib_strcat(__s, &__s2);
                                v38 = v107;
                                if (v40 < LhpuGetcBp(v107))
                                {
                                  v47 = 4 * v40;
                                  v40 = v40;
                                  do
                                  {
                                    if ((v45 / 100) + v41 < *(LhpuGetpBp(v38) + v47 + 2))
                                    {
                                      break;
                                    }

                                    __s2 = 40;
                                    v48 = LhpuGetpBp(v38);
                                    LH_itoa(*(v48 + v47 + 2) - v41, &v110, 0xAu);
                                    cstdlib_strcat(&__s2, ",");
                                    v49 = *(LhpuGetpBp(v38) + v47);
                                    v50 = cstdlib_strlen(&__s2);
                                    LH_itoa(v49, &__s2 + v50, 0xAu);
                                    cstdlib_strcat(&__s2, ")");
                                    cstdlib_strcat(__s, &__s2);
                                    ++v40;
                                    v47 += 4;
                                  }

                                  while (v40 < LhpuGetcBp(v38));
                                  LODWORD(v40) = v40;
                                  v7 = v99;
                                }

                                cstdlib_strcat(__s, "]");
                                v41 += v46;
                                ++v39;
                                v42 = v44;
                              }

                              while (v39 != v101);
                            }

                            else
                            {
                              __s2 = *__src;
                              v110 = 0;
                              cstdlib_strcat(__s, &__s2);
                              __s2 = 91;
                              v71 = LhpuGetDurValue(v38);
                              v72 = 1374389535 * (v108 * v71 + 50);
                              v73 = ((v72 >> 37) + (v72 >> 63));
                              v74 = &v110;
                              if (v73 >= 1)
                              {
                                v110 = 43;
                                v74 = v111;
                              }

                              LH_itoa(v73, v74, 0xAu);
                              cstdlib_strcat(__s, &__s2);
                              if (LhpuGetcBp(v38))
                              {
                                v75 = 0;
                                v76 = 0;
                                do
                                {
                                  __s2 = 40;
                                  v77 = LhpuGetpBp(v38);
                                  LH_itoa(*(v77 + v75 + 2), &v110, 0xAu);
                                  cstdlib_strcat(&__s2, ",");
                                  v78 = *(LhpuGetpBp(v38) + v75);
                                  v79 = cstdlib_strlen(&__s2);
                                  LH_itoa(v78, &__s2 + v79, 0xAu);
                                  cstdlib_strcat(&__s2, ")");
                                  cstdlib_strcat(__s, &__s2);
                                  ++v76;
                                  v75 += 4;
                                }

                                while (v76 < LhpuGetcBp(v38));
                              }

                              cstdlib_strcat(__s, "]");
                              v80 = 1;
                              do
                              {
                                __s2 = __src[v80];
                                v110 = 0;
                                cstdlib_strcat(__s, &__s2);
                                __s2 = 91;
                                v81 = 1374389535 * (*(&v108 + v80) * LhpuGetDurValue(v38) + 50);
                                v82 = ((v81 >> 37) + (v81 >> 63));
                                v83 = &v110;
                                if (v82 >= 1)
                                {
                                  v110 = 43;
                                  v83 = v111;
                                }

                                LH_itoa(v82, v83, 0xAu);
                                cstdlib_strcat(__s, &__s2);
                                cstdlib_strcat(__s, "]");
                                ++v80;
                              }

                              while (v101 != v80);
                            }
                          }

                          else
                          {
                            __s2 = *__src;
                            v110 = 0;
                            cstdlib_strcat(__s, &__s2);
                            cstdlib_strcat(__s, "[");
                            if (LhpuGetcBp(v38))
                            {
                              v59 = 0;
                              v60 = 0;
                              do
                              {
                                __s2 = 40;
                                v61 = LhpuGetpBp(v38);
                                LH_itoa(*(v61 + v59 + 2), &v110, 0xAu);
                                cstdlib_strcat(&__s2, ",");
                                v62 = *(LhpuGetpBp(v38) + v59);
                                v63 = cstdlib_strlen(&__s2);
                                LH_itoa(v62, &__s2 + v63, 0xAu);
                                cstdlib_strcat(&__s2, ")");
                                cstdlib_strcat(__s, &__s2);
                                ++v60;
                                v59 += 4;
                              }

                              while (v60 < LhpuGetcBp(v38));
                            }

                            cstdlib_strcat(__s, "]");
                            v64 = 1;
                            do
                            {
                              __s2 = __src[v64];
                              v110 = 0;
                              cstdlib_strcat(__s, &__s2);
                              ++v64;
                            }

                            while (v101 != v64);
                          }

                          a3 = v94;
                          a6 = v95;
                          v23 = v98;
                        }
                      }

                      else
                      {
                        cstdlib_strcpy(__s, __src);
                        v70 = cstdlib_strchr(__s, 124);
                        if (v70)
                        {
                          *v70 = 0;
                        }
                      }

                      v22 = v96;
                      if (cstdlib_strlen(__s) + v23 >= v100)
                      {
                        v29 = 1;
                      }

                      else
                      {
                        cstdlib_strcat(a6, __s);
                        v23 = v23 + cstdlib_strlen(__s);
                      }

                      v7 += v106 + 1;
                    }

                    else
                    {
                      v29 = 0;
                      while (1)
                      {
                        if (cstdlib_strlen(__s) + v23 >= v100)
                        {
                          v29 = 1;
                        }

                        else
                        {
                          cstdlib_strcat(a6, __s);
                          v23 = v23 + cstdlib_strlen(__s);
                        }

                        v7 += v106 + 1;
                        if ((ssftmap_IteratorNext(v104, &v103, &v102) & 0x80000000) != 0)
                        {
                          break;
                        }

                        __s[0] = 0;
                        __src = 0;
                        v30 = v102;
                        v31 = LhpuGetSymbol(v26);
                        stringmap_reader_Map(v30, v31, &__src);
                        if (__src)
                        {
                          v97 = 1;
                          goto LABEL_22;
                        }
                      }

                      v97 = 1;
                      v22 = v96;
                    }
                  }

                  ssftmap_IteratorClose(v104);
                  v25 = v29 == 0;
                }
              }
            }

            while (v25 && v7 < v22);
          }

          LhpuRemove(*(v93 + 8), &v107);
          log_OutText(*(v93 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v84, v85, v86, v97);
          v6 = v97;
          if (v97 == 1)
          {
            log_OutText(*(v93 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v87, v88, v89, v92);
          }
        }

        else
        {
          log_OutPublic(*(v13 + 32), "PHONMAP", 29000, 0, v18, v19, v20, v21, v91);
          return 2322604042;
        }
      }
    }
  }

  return v6;
}

uint64_t phonmap_GetLhPAlphabetCore(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0;
  result = stringmap_reader_MapGetRawData(a1, &v13, &v12);
  if ((result & 0x80000000) == 0)
  {
    v6 = v13;
    if (v13)
    {
      v7 = 0;
      v8 = 0;
      v9 = v12;
      v10 = 1;
      while (1)
      {
        if (*(v9 + v7))
        {
          if (v6 > v7)
          {
            while (*(v9 + v7))
            {
              if (v10)
              {
                v11 = *a2;
                if (*a2)
                {
                  if (v11 <= v8)
                  {
                    goto LABEL_26;
                  }

                  *(a3 + v8) = *(v9 + v7);
                }

                ++v8;
              }

              if (++v7 >= v6)
              {
                v7 = v6;
                if (v10)
                {
                  goto LABEL_19;
                }

                goto LABEL_23;
              }
            }
          }

          v7 = v7;
          if (v10)
          {
LABEL_19:
            v11 = *a2;
            if (*a2)
            {
              if (v11 <= v8)
              {
                goto LABEL_26;
              }

              *(a3 + v8) = 32;
            }

            ++v8;
          }

LABEL_23:
          v10 ^= 1u;
        }

        else
        {
          ++v7;
        }

        if (v7 >= v6)
        {
          goto LABEL_25;
        }
      }
    }
  }

  LOWORD(v8) = 0;
LABEL_25:
  v11 = *a2;
  if (*a2)
  {
LABEL_26:
    if (v11 <= v8)
    {
      result = 2322604041;
    }

    else
    {
      *(a3 + v8) = 0;
    }
  }

  *a2 = v8 + 1;
  return result;
}

uint64_t phonmap_reader_MapsGetGetLhPAlphabetCore(uint64_t a1, __int16 *a2, uint64_t a3)
{
  LhPAlphabetCore = 2322604052;
  v14 = 0;
  v4 = 2322604039;
  if (a1 && a3)
  {
    v7 = *a2;
    v13 = *a2;
    if ((ssftmap_IteratorOpen(a1, 0, 1, &v14) & 0x80000000) != 0)
    {
      return 2322604052;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if ((ssftmap_IteratorNext(v14, &v12, &v11) & 0x80000000) == 0)
      {
        v8 = 0;
        v9 = v7;
        while (1)
        {
          LhPAlphabetCore = phonmap_GetLhPAlphabetCore(v11, &v13, a3 + v8);
          if ((LhPAlphabetCore & 0x80000000) != 0)
          {
            break;
          }

          v9 -= v13 - 1;
          v8 += v13 - 1;
          v13 = v9;
          if ((ssftmap_IteratorNext(v14, &v12, &v11) & 0x80000000) != 0)
          {
            v7 = v7 - v9 + 1;
            break;
          }
        }
      }

      *a2 = v7;
      ssftmap_IteratorClose(v14);
      return LhPAlphabetCore;
    }
  }

  return v4;
}

uint64_t charcount_CountBlanks(uint64_t a1, unsigned int a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (utf8_BelongsToSet(4u, a1, v4, a2))
      {
        ++v5;
      }

      v4 = (utf8_determineUTF8CharLength(*(a1 + v4)) + v4);
    }

    while (v4 < a2);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t charcount_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2709528577;
  }

  result = 0;
  *a2 = &ICharcount;
  return result;
}

uint64_t charcount_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2709528586;
  v34 = 0;
  if (!a5)
  {
    return 2709528582;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v34);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v34 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjOpen: Begin", v10, v11, v12, v29);
  v13 = heap_Calloc(*(v34 + 8), 1, 48);
  if (!v13)
  {
    v22 = v34;
    goto LABEL_11;
  }

  v18 = v13;
  *v13 = a3;
  v13[1] = a4;
  v19 = v34;
  v13[2] = v34;
  v20 = *(v19 + 8);
  v31 = xmmword_287EECEF8;
  *&v32 = off_287EECF08;
  v21 = vector_ObjOpen(v20, &v31, 1, v18 + 3);
  v22 = v34;
  if (!v21)
  {
LABEL_11:
    log_OutPublic(*(v22 + 32), "CHARCOUNT", 16000, 0, v14, v15, v16, v17, v30);
    return v5;
  }

  v23 = *(v34 + 8);
  v31 = xmmword_287EECF10;
  v32 = *off_287EECF20;
  v33 = off_287EECF30;
  v5 = ssftmap_ObjOpen(v23, 0, &v31, v18 + 4);
  v27 = 29350;
  if ((v5 & 0x80000000) != 0)
  {
    *a5 = v18;
    *(a5 + 8) = 29350;
    charcount_ObjClose(v18, *(a5 + 8));
    v18 = 0;
    v27 = 0;
  }

  *a5 = v18;
  *(a5 + 8) = v27;
  log_OutText(*(v34 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjOpen: End (%x)", v24, v25, v26, v5);
  return v5;
}

uint64_t charcount_ObjClose(void *a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = a1[2];
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjClose : Begin", v3, v4, v5, v12);
    vector_ObjClose(a1[3]);
    ssftmap_ObjClose(a1[4]);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t charcount_ObjReopen(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjReopen : Begin", v3, v4, v5, v12);
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjReopen : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t charcount_AddCharcountEvent(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  __s2 = 0;
  __s = 0;
  Str = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v25[0] = 0;
  v8 = *(a1 + 16);
  v9 = Utf8_LengthInUtf8chars(a3, a4);
  v10 = v9 - charcount_CountBlanks(a3, a4);
  *(a1 + 40) += v10;
  Str = paramc_ParamGetStr(*(v8 + 40), "voice", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v11 = paramc_ParamGetStr(*(v8 + 40), "voiceoperatingpoint", &__s2);
  if ((v11 & 0x80000000) == 0 || (v11 = paramc_ParamGetStr(*(v8 + 40), "voicemodel", &__s2), (v11 & 0x80000000) == 0))
  {
    v12 = cstdlib_strlen(__s);
    v13 = cstdlib_strlen(__s2);
    v14 = heap_Calloc(*(v8 + 8), 1, (v12 + v13 + 2));
    if (v14)
    {
      v19 = v14;
      cstdlib_strcpy(v14, __s);
      cstdlib_strcat(v19, "_");
      cstdlib_strcat(v19, __s2);
      LODWORD(v25[0]) = v10;
      v25[1] = v19;
      if (!vector_Add(*(a1 + 24), v25))
      {
        v11 = 2709528586;
        log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v20, v21, v22, v23, v25[0]);
      }

      heap_Free(*(v8 + 8), v19);
    }

    else
    {
      v11 = 2709528586;
      log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v15, v16, v17, v18, v25[0]);
    }
  }

  return v11;
}

uint64_t charcount_ReportCharcounts(void *a1, int a2)
{
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29350, 48);
  v4 = v3;
  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v32 = 0;
    v6 = a1[2];
    Size = vector_GetSize(a1[3]);
    if (Size)
    {
      v8 = Size;
      v9 = 0;
      while (vector_GetElemAt(a1[3], v9, &v32))
      {
        if ((ssftmap_Find(a1[4], *(v32 + 8), &v31) & 0x80000000) != 0)
        {
          v10 = v32;
          v30 = *v32;
        }

        else
        {
          v30 = *v32 + *v31;
          ssftmap_Remove(a1[4], *(v32 + 8));
          v10 = v32;
        }

        v4 = ssftmap_Insert(a1[4], *(v10 + 8), &v30);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        if (v8 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v4 = 2709528576;
    }

    else
    {
LABEL_13:
      if ((ssftmap_IteratorOpen(v5[4], 0, 0, &v29) & 0x80000000) == 0)
      {
        while ((ssftmap_IteratorNext(v29, &v28, &v31) & 0x80000000) == 0)
        {
          log_OutEvent(*(v6 + 32), 31, "%s%s%s%u", v16, v17, v18, v19, v20, "VOICE_VOP");
          log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Number of utf-8 characters processed for voice_model%s=%d", v21, v22, v23, v28);
        }

        ssftmap_IteratorClose(v29);
      }

      log_OutEvent(*(v6 + 32), 30, "%s%u", v11, v12, v13, v14, v15, "CHARS");
      log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Total number of utf-8 characters processed %d", v24, v25, v26, *(v5 + 10));
    }

    vector_Clear(a1[3]);
    ssftmap_Clear(v5[4]);
    *(v5 + 10) = 0;
  }

  return v4;
}

uint64_t charcount_CheckAndModifyLastCharcountEvent(uint64_t a1, int a2, uint64_t a3, unsigned __int16 a4)
{
  __s2 = 0;
  __s = 0;
  v7 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a1 + 16);
    if (charcount_CountBlanks(a3, a4) != a4)
    {
      v26 = 0;
      Str = paramc_ParamGetStr(*(v8 + 40), "voice", &__s);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      else
      {
        v10 = paramc_ParamGetStr(*(v8 + 40), "voiceoperatingpoint", &__s2);
        if ((v10 & 0x80000000) == 0 || (v10 = paramc_ParamGetStr(*(v8 + 40), "voicemodel", &__s2), v7 = v10, (v10 & 0x80000000) == 0))
        {
          v7 = 2709528586;
          v11 = cstdlib_strlen(__s);
          v12 = cstdlib_strlen(__s2);
          v13 = heap_Calloc(*(v8 + 8), 1, (v11 + v12 + 2));
          if (v13)
          {
            v14 = v13;
            cstdlib_strcpy(v13, __s);
            cstdlib_strcat(v14, "_");
            cstdlib_strcat(v14, __s2);
            Size = vector_GetSize(*(a1 + 24));
            if (vector_GetElemAt(*(a1 + 24), Size - 1, &v26))
            {
              if (cstdlib_strcmp(*(v26 + 8), v14))
              {
                v16 = *(v8 + 8);
                v17 = *(v26 + 8);
                v18 = cstdlib_strlen(v14);
                v19 = heap_Realloc(v16, v17, v18 + 1);
                if (!v19)
                {
                  log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v20, v21, v22, v23, v25);
                  goto LABEL_15;
                }

                *(v26 + 8) = v19;
                cstdlib_strcpy(v19, v14);
              }

              v7 = v10;
            }

            else
            {
              v7 = 2709528576;
            }

LABEL_15:
            heap_Free(*(v8 + 8), v14);
          }
        }
      }
    }
  }

  return v7;
}

uint64_t charcount_ElemCopyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v7 = cstdlib_strlen(*(a1 + 8));
    result = heap_Alloc(a2, v7 + 1);
    *(a3 + 8) = result;
    if (result)
    {
      *a3 = *a1;
      cstdlib_strcpy(result, *(a1 + 8));
      return 1;
    }
  }

  return result;
}

void *charcount_ElemFreeParts(void *result, void *a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      return heap_Free(a2, v2);
    }
  }

  return result;
}

uint64_t charcount_IElemValueCopy(const void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 4);
  if (!v5)
  {
    return 2709528586;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 4uLL);
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t wordSeg_stricmp(char *a1, unsigned __int8 *a2)
{
  LOBYTE(v2) = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    v5 = *a1;
    v6 = v5 - v2;
    if (v5 == v2)
    {
      ++a1;
      ++v3;
    }

    else if (v5 >= 1 && ssft_tolower(v2) == v5)
    {
      ++a1;
      ++v3;
      v6 = 0;
    }

    v2 = *v3;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 == 0;
    }
  }

  while (!v7);
  result = v6 != 0;
  if (v6 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t fe_word_seg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v5 = 2359304199;
  v26 = 0;
  v27 = 0;
  if (a5)
  {
    v25 = 0;
    v23 = 0;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v29);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v29[6], "SYNTHSTREAM", &v28);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v29[6], "FE_DEPES", &v27);
    v9 = v29[6];
    if ((Object & 0x80000000) != 0)
    {
      v20 = "SYNTHSTREAM";
    }

    else
    {
      v10 = objc_GetObject(v9, "FE_DCTLKP", &v26);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = heap_Alloc(v29[1], 1208);
        if (v11)
        {
          v16 = v11;
          *v11 = v29;
          *(v11 + 8) = *(v28 + 8);
          v17 = v26;
          v18 = v27;
          *(v11 + 32) = *(v27 + 8);
          *(v11 + 16) = *(v18 + 16);
          v19 = *(v17 + 8);
          *(v11 + 56) = v19;
          *(v11 + 40) = *(v17 + 16);
          *(v11 + 1032) = 0;
          *(v11 + 1040) = 0;
          *(v11 + 1048) = 0;
          *(v11 + 1056) = 0;
          *(v11 + 1188) = 0x100000000;
          *(v11 + 952) = 0u;
          *(v11 + 968) = 0u;
          *(v11 + 984) = 0u;
          *(v11 + 1000) = 0u;
          *(v11 + 1010) = 0u;
          v24 = -1;
          v5 = (*(v19 + 96))(*(v11 + 40), *(v11 + 48), "fecfg", "backtrans", &v25, &v24, &v23);
          if ((v5 & 0x80000000) != 0)
          {
            heap_Free(v29[1], v16);
          }

          else
          {
            *(v16 + 1200) = v24 != 0;
            *a5 = v16;
            *(a5 + 8) = 86237;
          }
        }

        else
        {
          log_OutPublic(v29[4], "FE_WORDSEG", 61000, 0, v12, v13, v14, v15, v22);
          objc_ReleaseObject(v29[6], "SYNTHSTREAM");
          objc_ReleaseObject(v29[6], "FE_DEPES");
          objc_ReleaseObject(v29[6], "FE_DCTLKP");
          return 2359304202;
        }

        return v5;
      }

      Object = v10;
      objc_ReleaseObject(v29[6], "SYNTHSTREAM");
      v9 = v29[6];
      v20 = "FE_DEPES";
    }

    objc_ReleaseObject(v9, v20);
    return Object;
  }

  return v5;
}

uint64_t fe_word_seg_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 86237, 1208);
  if ((result & 0x80000000) != 0)
  {
    return 2359304200;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_word_seg_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 86237, 1208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2359304200;
  }
}

uint64_t fe_word_seg_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_WORDSEG");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 8), a3, a4);
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, &unk_26ECDB47D, 0), (v7 & 0x80000000) != 0))
  {
    v11 = v7;
    *(a1 + 1196) = 54;
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 8));
  }

  else
  {
    v11 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
    if ((v11 & 0x80000000) != 0)
    {
      *(a1 + 1192) = 0;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "depes grammar %s not present", v8, v9, v10, "word_segmentation");
      v11 = 0;
    }

    *(a1 + 1196) = 54;
  }

  return v11;
}

uint64_t fe_word_seg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  __src = 0;
  *a5 = 1;
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &v168, &v167 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = HIDWORD(v167);
  v9 = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v166 + 4, &v166);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!HIDWORD(v167))
  {
    v59 = v166;
    if (!v166)
    {
      v161 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v161) & 0x80000000) != 0 || !v161 || !*v161)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (HIDWORD(v166))
    {
      v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v167);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v7 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), __src, v167);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v167);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v59 = v166;
    }

    if (!v59)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
  }

  *(a1 + 1188) = log_GetLogLevel(*(*a1 + 32)) > 4;
  log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Processing Sentence=%s", v10, v11, v12, v168);
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v167);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v13 = v167;
  *(a1 + 1040) = v167 >> 5;
  *(a1 + 1042) = v13 >> 5;
  v14 = heap_Alloc(*(*a1 + 8), v13);
  *(a1 + 1032) = v14;
  if (!v14 || (cstdlib_memcpy(v14, __src, v167), v19 = heap_Calloc(*(*a1 + 8), 1, (HIDWORD(v167) + 33)), (*(a1 + 1016) = v19) == 0))
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v15, v16, v17, v18, v155);
    v9 = 2359304202;
    goto LABEL_130;
  }

  *(a1 + 1024) = WORD2(v167) + 32;
  cstdlib_strcpy(v19, v168);
  v20 = cstdlib_strlen(*(a1 + 1016));
  v21 = Utf8_LengthInUtf8chars(*(a1 + 1016), v20);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1000), v21);
  if ((NewCharStr & 0x80000000) != 0 || (cstdlib_memset(*(a1 + 1000), 110, v21), *(*(a1 + 1000) + v21) = 0, NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1008), v21), (NewCharStr & 0x80000000) != 0))
  {
    v9 = NewCharStr;
    goto LABEL_130;
  }

  v159 = (a1 + 1000);
  cstdlib_memset(*(a1 + 1008), 32, v21);
  v23 = 0;
  *(*(a1 + 1008) + v21) = 0;
  if (*(a1 + 1040) < 2u)
  {
    goto LABEL_86;
  }

  v157 = v13;
  v158 = v8;
  v23 = 0;
  v24 = 1;
  v25 = 88;
  v26 = 3;
  do
  {
    v27 = (*(*(a1 + 1032) + 32 * v24 + 12) - *(*(a1 + 1032) + 12));
    v28 = Utf8_LengthInUtf8chars(*(a1 + 1016), v27);
    v29 = *(a1 + 1032);
    v30 = (v29 + 32 * v24);
    v31 = *v30;
    if (*v30 != 34)
    {
      if (v31 != 21)
      {
        if (v31 == 1)
        {
          ++v23;
        }

        goto LABEL_37;
      }

      if (!*(v30 + 3))
      {
        goto LABEL_37;
      }
    }

    v32 = *(a1 + 1040);
    LOWORD(v33) = v20;
    if (v24 + 1 < v32)
    {
      v34 = (v29 + v25);
      v35 = v26;
      while (1)
      {
        v36 = *(v34 - 6);
        if (v36 == 21)
        {
          if (*v34)
          {
LABEL_27:
            v33 = *(v34 - 3) - *(v29 + 12);
            break;
          }
        }

        else if (v36 == 34)
        {
          goto LABEL_27;
        }

        v34 += 4;
        if (v32 == v35++)
        {
          LOWORD(v33) = v20;
          break;
        }
      }
    }

    if (v31 == 34)
    {
      v38 = 112;
    }

    else if (wordSeg_stricmp(*(v30 + 3), "normal"))
    {
      if (wordSeg_stricmp(*(*(a1 + 1032) + 32 * v24 + 24), "spell"))
      {
        v38 = 110;
      }

      else
      {
        v38 = 115;
      }
    }

    else
    {
      v38 = 110;
    }

    for (; v27 < v33; v27 = (utf8_determineUTF8CharLength(*(*(a1 + 1016) + v27)) + v27))
    {
      *(*(a1 + 1000) + v28++) = v38;
    }

LABEL_37:
    ++v24;
    v39 = *(a1 + 1040);
    v25 += 32;
    ++v26;
  }

  while (v24 < v39);
  if (v39 >= 2)
  {
    v40 = 2;
    v41 = 1;
    v42 = 88;
    while (1)
    {
      v43 = *(a1 + 1032);
      v44 = *(v43 + 32 * v41 + 12);
      LODWORD(v43) = *(v43 + 12);
      v45 = v44 - v43;
      v46 = Utf8_LengthInUtf8chars(*(a1 + 1016), (v44 - v43));
      v47 = *(a1 + 1032);
      v48 = v47 + 32 * v41;
      if (*v48 != 7)
      {
        if (*v48 == 36)
        {
          v49 = *(v48 + 24);
          if (v49)
          {
            v50 = *(a1 + 1040);
            LOWORD(v51) = v20;
            if (v41 + 1 < v50)
            {
              v52 = (v47 + v42);
              v53 = v40;
              while (*(v52 - 6) != 36 || !*v52)
              {
                ++v53;
                v52 += 4;
                if (v50 == v53)
                {
                  LOWORD(v51) = v20;
                  goto LABEL_63;
                }
              }

              v58 = v47 + 32 * v53;
              LOWORD(v51) = v20;
              if (*v58 == 36)
              {
                LOWORD(v51) = v20;
                if (*(v58 + 24))
                {
                  v51 = *(v58 + 12) - *(v47 + 12);
                }
              }
            }

LABEL_63:
            if (!wordSeg_stricmp(v49, "latin") && v51 > v45)
            {
              do
              {
                *(*(a1 + 1000) + v46) = 108;
                v45 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v45));
                ++v46;
              }

              while (v45 < v51);
            }
          }
        }

        goto LABEL_66;
      }

      v54 = *(v48 + 24);
      if (v54)
      {
        v55 = *(v48 + 16) + v45;
        if (v20 >= v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = v20;
        }

        if (v54 == 43)
        {
          v57 = 112;
LABEL_57:
          while (v45 < v56)
          {
            *(*(a1 + 1000) + v46) = v57;
            v45 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v45));
            ++v46;
          }

          goto LABEL_66;
        }

        if (v54 == 16)
        {
          v57 = 116;
          goto LABEL_57;
        }
      }

LABEL_66:
      ++v41;
      ++v40;
      v42 += 32;
      if (v41 >= *(a1 + 1040))
      {
        v8 = v158;
        v13 = v157;
        goto LABEL_86;
      }
    }
  }

  v8 = v158;
  v13 = v157;
LABEL_86:
  if (!v20)
  {
    goto LABEL_105;
  }

  v61 = v13;
  v62 = v8;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  do
  {
    v66 = v65;
    if (*(*(a1 + 1016) + v65) == 32)
    {
      v67 = v64;
      *(*v159 + v64) = 32;
      *(*(a1 + 1008) + v64) = 32;
    }

    else
    {
      v67 = v64;
    }

    v68 = *(*v159 + v67);
    if (v68 == 115 || v68 == 110)
    {
      v63 = 1;
    }

    v65 = v66 + utf8_determineUTF8CharLength(*(*(a1 + 1016) + v66));
    ++v64;
  }

  while (v65 < v20);
  v13 = v61;
  if (v63 != 1)
  {
    v104 = 0;
    v106 = 0;
    v8 = v62;
    goto LABEL_107;
  }

  LODWORD(v161) = 0;
  wordSeg_logMarkers(a1, "Start of Chinese Word Segmentation", v69, v70, v71, v72, v73, v74);
  v8 = v62;
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Orth   =%s", v75, v76, v77, *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Region =%s", v78, v79, v80, *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Hex    =%s", v81, v82, v83, *(a1 + 1008));
  }

  WordDefs = wordSeg_GetWordDefs(a1, &v164, &v163, v23);
  if ((WordDefs & 0x80000000) != 0)
  {
    v9 = WordDefs;
    v106 = 0;
    goto LABEL_128;
  }

  v85 = v164;
  v86 = v163;
  wordSeg_ParseOutPOSAndAttributes(a1, v164, v163);
  if (*(a1 + 1188) == 1)
  {
    wordSeg_logMarkers(a1, "After POS and ATTRIBUTE processing", v87, v88, v89, v90, v91, v92);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", v93, v94, v95, *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", v96, v97, v98, *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", v99, v100, v101, *(a1 + 1008));
  }

  if (*(a1 + 1192) != 1)
  {
LABEL_105:
    v104 = 0;
    v106 = 0;
    goto LABEL_107;
  }

  v102 = cstdlib_strlen(*(a1 + 1016));
  HIDWORD(v167) = v102 + 1;
  v103 = heap_Calloc(*(*a1 + 8), 1, (v102 + 2));
  v104 = v103;
  if (!v103)
  {
    v106 = 0;
    goto LABEL_115;
  }

  cstdlib_strcpy(v103, *(a1 + 1016));
  v105 = heap_Alloc(*(*a1 + 8), v167);
  v106 = v105;
  if (!v105)
  {
LABEL_115:
    v107 = 0;
    goto LABEL_116;
  }

  cstdlib_memcpy(v105, *(a1 + 1032), v167);
  v107 = 1;
LABEL_116:
  v112 = wordSeg_setDepesLayers(a1, v85, v86);
  if ((v112 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  v112 = wordSeg_execDepesLayers(a1, &v161, v113, v114, v115, v116, v117, v118);
  if ((v112 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v161)
  {
    goto LABEL_124;
  }

  v160 = 0;
  v112 = wordSeg_processDepesOutput(a1, v85, v86, &v160);
  if ((v112 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v160 != 1)
  {
    goto LABEL_123;
  }

  v128 = *(*a1 + 32);
  if (v107)
  {
    log_OutPublic(v128, "FE_WORDSEG", 61005, 0, v124, v125, v126, v127, v155);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "!! Restoring backup as post-processing fails !!", v129, v130, v131, v156);
    cstdlib_strcpy(*(a1 + 1016), v104);
    cstdlib_memcpy(*(a1 + 1032), v106, v167);
    heap_Free(*(*a1 + 8), v104);
    heap_Free(*(*a1 + 8), v106);
    v104 = 0;
    v106 = 0;
    v13 = v61;
LABEL_123:
    wordSeg_logMarkers(a1, "After DEPES result processing", v122, v123, v124, v125, v126, v127);
LABEL_124:
    v8 = v62;
    if (*(a1 + 1188) == 1)
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", v119, v120, v121, *(a1 + 1016));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", v132, v133, v134, *(a1 + 1000));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", v135, v136, v137, *(a1 + 1008));
    }

LABEL_107:
    v108 = cstdlib_strlen(*(a1 + 1016));
    LODWORD(v167) = 32 * *(a1 + 1040);
    HIDWORD(v167) = v108 + 1;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Final Sentence %s", v109, v110, v111, *(a1 + 1016));
    v112 = (*(*(a1 + 8) + 104))(*(a1 + 920), *(a1 + 928), *(a1 + 1016), HIDWORD(v167));
    if ((v112 & 0x80000000) == 0)
    {
      v112 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), *(a1 + 1032), v167);
      if ((v112 & 0x80000000) == 0)
      {
        v112 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), v8);
        if ((v112 & 0x80000000) == 0)
        {
          v112 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v13);
          if ((v112 & 0x80000000) == 0)
          {
            v112 = (*(*(a1 + 32) + 112))(*(a1 + 16), *(a1 + 24), &v162, 0);
            if ((v112 & 0x80000000) == 0)
            {
              v162 += HIDWORD(v167) - v8;
              v112 = (*(*(a1 + 32) + 104))(*(a1 + 16), *(a1 + 24));
            }
          }
        }
      }
    }

LABEL_126:
    v9 = v112;
    if (v104)
    {
LABEL_127:
      heap_Free(*(*a1 + 8), v104);
    }
  }

  else
  {
    log_OutPublic(v128, "FE_WORDSEG", 61005, "%s%s", v124, v125, v126, v127, "ABORT");
    v9 = 2359304192;
    if (v104)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  if (v106)
  {
    heap_Free(*(*a1 + 8), v106);
  }

LABEL_130:
  if (*(a1 + 1056))
  {
    v138 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 1048) + 8 * v138));
      *(*(a1 + 1048) + 8 * v138++) = 0;
    }

    while (v138 < *(a1 + 1056));
  }

  *(a1 + 1056) = 0;
  v139 = *(a1 + 1048);
  if (v139)
  {
    heap_Free(*(*a1 + 8), v139);
    *(a1 + 1048) = 0;
  }

  *(a1 + 1058) = 0;
  v140 = *(a1 + 1032);
  if (v140)
  {
    heap_Free(*(*a1 + 8), v140);
    *(a1 + 1032) = 0;
    *(a1 + 1040) = 0;
  }

  v141 = *(a1 + 952);
  if (v141)
  {
    heap_Free(*(*a1 + 8), v141);
    *(a1 + 952) = 0;
  }

  v142 = *(a1 + 960);
  if (v142)
  {
    heap_Free(*(*a1 + 8), v142);
    *(a1 + 960) = 0;
  }

  v143 = *(a1 + 968);
  if (v143)
  {
    heap_Free(*(*a1 + 8), v143);
    *(a1 + 968) = 0;
  }

  v144 = *(a1 + 976);
  if (v144)
  {
    heap_Free(*(*a1 + 8), v144);
    *(a1 + 976) = 0;
  }

  v145 = *(a1 + 1000);
  if (v145)
  {
    heap_Free(*(*a1 + 8), v145);
    *(a1 + 1000) = 0;
  }

  v146 = *(a1 + 1008);
  if (v146)
  {
    heap_Free(*(*a1 + 8), v146);
    *(a1 + 1008) = 0;
  }

  v147 = *(a1 + 1016);
  if (v147)
  {
    heap_Free(*(*a1 + 8), v147);
    *(a1 + 1016) = 0;
    *(a1 + 1024) = 0;
  }

  v148 = v164;
  if (v164)
  {
    v149 = v163;
    if (v163)
    {
      v150 = (v164 + 32);
      do
      {
        v151 = *(v150 - 3);
        if (v151)
        {
          heap_Free(*(*a1 + 8), v151);
          *(v150 - 3) = 0;
        }

        v152 = *(v150 - 2);
        if (v152)
        {
          heap_Free(*(*a1 + 8), v152);
          *(v150 - 2) = 0;
        }

        v153 = *(v150 - 1);
        if (v153)
        {
          heap_Free(*(*a1 + 8), v153);
          *(v150 - 1) = 0;
        }

        if (*v150)
        {
          heap_Free(*(*a1 + 8), *v150);
          *v150 = 0;
        }

        v154 = v150[3];
        if (v154)
        {
          heap_Free(*(*a1 + 8), v154);
          v150[3] = 0;
        }

        v150 += 9;
        --v149;
      }

      while (v149);
    }

    heap_Free(*(*a1 + 8), v148);
  }

  return v9;
}

_DWORD *wordSeg_logMarkers(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  if (result[297])
  {
    v8 = result;
    result = log_OutText(*(*result + 32), "FE_WORDSEG", 5, 0, "%s", a6, a7, a8, a2);
    if (*(v8 + 520))
    {
      v9 = 0;
      do
      {
        marker_getString(*(*(v8 + 129) + 32 * v9));
        v24 = 0;
        hasCharPtrArg = marker_hasCharPtrArg(*(*(v8 + 129) + 32 * v9));
        v14 = *(v8 + 129);
        if (hasCharPtrArg && (v15 = *(v14 + 32 * v9 + 24)) != 0)
        {
          v16 = cstdlib_strlen(v15);
          v14 = *(v8 + 129);
          if (v16 <= 0x40uLL)
          {
            v17 = v16;
          }

          else
          {
            v17 = 63;
          }

          if (v17)
          {
            v18 = *(v14 + 32 * v9 + 24);
            v19 = 1 - v17;
            v20 = &v25;
            while (1)
            {
              v21 = *v18;
              *(v20 - 1) = v21;
              if (!v21)
              {
                break;
              }

              ++v18;
              ++v19;
              ++v20;
              if (v19 == 1)
              {
                goto LABEL_17;
              }
            }

            if (v19)
            {
              bzero(v20, -v19);
            }
          }

LABEL_17:
          *(&v24 + v17) = 0;
        }

        else
        {
          v24 = 0;
        }

        v22 = (v14 + 32 * v9);
        if (*v22 == 32)
        {
          v24 = 48;
          if (v22[6] == 1)
          {
            v23 = 49;
          }

          else
          {
            v23 = 48;
          }

          v24 = v23;
          v25 = 0;
        }

        result = log_OutText(*(*v8 + 32), "FE_WORDSEG", 5, 0, "marker[%d] %d(%s) %u,%u %u,%u %s%s", v11, v12, v13, v9++);
      }

      while (v9 < *(v8 + 520));
    }
  }

  return result;
}

uint64_t wordSeg_GetWordDefs(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4)
{
  v5 = a1;
  v6 = heap_Calloc(*(*a1 + 8), 1, 72 * a4 + 72);
  if (!v6)
  {
    v21 = 2359304202;
    log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61000, 0, v7, v8, v9, v10, v99);
    return v21;
  }

  v11 = v6;
  v100 = a2;
  if (*(v5 + 1040) < 2u)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(v5 + 1032);
      if (*(v15 + v12 + 32) == 1)
      {
        v16 = *(v5 + 1000);
        if (*(v16 + Utf8_LengthInUtf8chars(*(v5 + 1016), *(v15 + v12 + 44) - *(v15 + 12))) == 110)
        {
          v17 = v11 + 72 * v13;
          *v17 = v14;
          *(v17 + 8) = 0u;
          v18 = (v17 + 8);
          *(v17 + 44) = 0;
          *(v17 + 48) = 0;
          *(v17 + 24) = 0u;
          *(v17 + 40) = 1;
          *(v17 + 56) = 0;
          v19 = *(v5 + 1032) + v12;
          *(v17 + 64) = *(v19 + 36);
          NewCharStr = wordSeg_GetNewCharStr(v5, (v17 + 8), *(v19 + 48));
          if ((NewCharStr & 0x80000000) != 0)
          {
            v21 = NewCharStr;
            goto LABEL_117;
          }

          cstdlib_strncpy(*v18, (*(v5 + 1016) + (*(*(v5 + 1032) + v12 + 44) - *(*(v5 + 1032) + 12))), *(*(v5 + 1032) + v12 + 48));
          ++v13;
        }
      }

      ++v14;
      v12 += 32;
    }

    while (v14 < *(v5 + 1040));
  }

  *a3 = v13;
  v101 = v11;
  v104 = v5;
  if (*(v5 + 1040) >= 2u)
  {
    v102 = (v11 + 16);
    v22 = 1;
    while (1)
    {
      v23 = *(v5 + 1032);
      v24 = (v23 + 32 * v22);
      if (*v24 == 37)
      {
        v25 = *(v5 + 1000);
        if (*(v25 + Utf8_LengthInUtf8chars(*(v5 + 1016), v24[3] - *(v23 + 12))) == 110)
        {
          break;
        }
      }

LABEL_55:
      if (++v22 >= *(v5 + 1040))
      {
        v13 = *a3;
        v11 = v101;
        goto LABEL_81;
      }
    }

    v30 = *(v5 + 1040);
    v31 = v100;
    v11 = v101;
    if (v30 < 2)
    {
      goto LABEL_79;
    }

    v32 = *a3;
    v33 = *(v104 + 1032);
    v34 = v33 + 32 * v22;
    v35 = (v33 + 44);
    v36 = 1;
    while (*(v35 - 3) != 1 || *v35 != *(v34 + 12))
    {
      ++v36;
      v35 += 8;
      if (v30 == v36)
      {
        goto LABEL_79;
      }
    }

    if (!*a3)
    {
LABEL_79:
      log_OutPublic(*(*v104 + 32), "FE_WORDSEG", 61005, 0, v26, v27, v28, v29, v99);
      v21 = 0;
      goto LABEL_118;
    }

    v37 = v102;
    while (*(v37 - 8) != v36)
    {
      v37 += 9;
      if (!--v32)
      {
        goto LABEL_79;
      }
    }

    v38 = cstdlib_strlen(*(v34 + 24));
    v39 = wordSeg_GetNewCharStr(v104, v37, v38);
    if ((v39 & 0x80000000) != 0)
    {
      v21 = v39;
      v11 = v101;
      goto LABEL_118;
    }

    if (v38)
    {
      v40 = *(*(v104 + 1032) + 32 * v22 + 24);
      v41 = 1 - v38;
      v42 = (*v37 + 1);
      while (1)
      {
        v43 = *v40;
        *(v42 - 1) = v43;
        if (!v43)
        {
          break;
        }

        ++v40;
        ++v41;
        ++v42;
        if (v41 == 1)
        {
          goto LABEL_35;
        }
      }

      if (v41)
      {
        bzero(v42, -v41);
      }
    }

LABEL_35:
    v5 = v104;
    v44 = *(v104 + 1032);
    v45 = v44 + 32 * *(v37 - 8);
    LODWORD(v44) = *(v44 + 12);
    v46 = *(v45 + 12);
    v47 = v46 - v44;
    v48 = v46 - v44 + *(v45 + 16);
    v49 = (v46 - v44);
    v50 = Utf8_LengthInUtf8chars(*(v104 + 1016), v49);
    if (v49 >= v48)
    {
      goto LABEL_120;
    }

    v55 = v50;
    LODWORD(v56) = v47;
    do
    {
      v57 = *(v104 + 1016);
      v58 = *(v57 + v56);
      if (v56 && v58 == 92 && *(v57 + v56 - 1) != 32)
      {
        break;
      }

      LODWORD(v56) = v56 + utf8_determineUTF8CharLength(v58);
    }

    while (v56 < v48);
    v5 = v104;
    if (v56 == v47)
    {
LABEL_120:
      log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61013, "%s%d", v51, v52, v53, v54, "at input position");
      v21 = 2359304192;
      v31 = v100;
      v11 = v101;
      goto LABEL_118;
    }

    log_OutText(*(*v104 + 32), "FE_WORDSEG", 5, 0, "word _%s_", v52, v53, v54, *(v37 - 1));
    if (v56 > v47)
    {
      v59 = v55;
      do
      {
        v60 = *(*(v104 + 1016) + v47);
        if (*(*(v104 + 1016) + v47) >= 48 && v60 <= *(v104 + 1196))
        {
          *(*(v104 + 1008) + v59) = 120;
          v60 = *(*(v104 + 1016) + v47);
        }

        LOWORD(v47) = v47 + utf8_determineUTF8CharLength(v60);
        ++v59;
      }

      while (v47 < v56);
    }

    if (v49 + 1 == v48 && *v37)
    {
      *(*(v104 + 1008) + v55) = 120;
    }

    v61 = *(v104 + 1016);
    if (*(v61 + v56) == 92 && *(v61 + v56 - 1) != 32)
    {
      v62 = v56 + 1;
      if ((v56 + 1) >= v48)
      {
LABEL_54:
        v5 = v104;
        if (v62 != v48)
        {
          goto LABEL_120;
        }

        goto LABEL_55;
      }

      v63 = (v56 + 1);
      v64 = 1;
      v56 = v63;
      while (!v56 || *(v61 + v56) != 92 || *(v61 + (v56 - 1)) == 32)
      {
        v64 = ++v56 < v48;
        if (v56 == v48)
        {
          LOWORD(v56) = v48;
          break;
        }
      }

      v65 = v56 - v62;
      if (v56 == v62)
      {
        if (v64)
        {
          goto LABEL_69;
        }

        goto LABEL_54;
      }

      v5 = v104;
      if ((wordSeg_GetNewCharStr(v104, v37 + 1, (v56 - v62)) & 0x80000000) != 0)
      {
        goto LABEL_120;
      }

      cstdlib_strncpy(v37[1], (*(v104 + 1016) + v63), v65);
      log_OutText(*(*v104 + 32), "FE_WORDSEG", 5, 0, "pos _%s_", v66, v67, v68, v37[1]);
      if (v64)
      {
LABEL_69:
        v69 = v56 + 1;
        LOWORD(v70) = v69;
        if (v69 < v48)
        {
          v71 = *(v104 + 1016);
          v70 = v69;
          while (*(v71 + v70) != 92 || *(v71 + (v70 - 1)) == 32)
          {
            ++v70;
            v5 = v104;
            if (v70 == v48)
            {
              goto LABEL_76;
            }
          }
        }

        v5 = v104;
        if (v70 != v48)
        {
          goto LABEL_120;
        }

LABEL_76:
        if (v69 != v48)
        {
          v72 = v48 - v69;
          if ((wordSeg_GetNewCharStr(v5, v37 + 2, v72) & 0x80000000) != 0)
          {
            goto LABEL_120;
          }

          cstdlib_strncpy(v37[2], (*(v5 + 1016) + v69), v72);
          log_OutText(*(*v5 + 32), "FE_WORDSEG", 5, 0, "attr _%s_", v73, v74, v75, v37[2]);
        }

        goto LABEL_55;
      }
    }

    v62 = v56;
    goto LABEL_54;
  }

LABEL_81:
  if (!v13)
  {
LABEL_115:
    v21 = 0;
    goto LABEL_117;
  }

  v76 = 0;
  v77 = (v5 + 1060);
  while (1)
  {
    v78 = v11 + 72 * v76;
    v79 = *(v78 + 16);
    if (v79)
    {
      break;
    }

LABEL_114:
    if (++v76 >= *a3)
    {
      goto LABEL_115;
    }
  }

  v80 = *(v78 + 8);
  v81 = cstdlib_strlen(v80);
  v82 = cstdlib_strlen(v79);
  *(v78 + 44) = 0;
  v106 = 0;
  cstdlib_memset(v77, 0, 0x80uLL);
  v103 = v82;
  v83 = v82;
  if (v82 >= 3u)
  {
    v86 = 0;
    while (1)
    {
      v87 = &v79[v86];
      v108[0] = *v87;
      v108[1] = v87[1];
      v108[2] = 0;
      v88 = cstdlib_strtol(v108, &v106, 0x10u);
      v107[0] = v87[2];
      v107[1] = v87[3];
      v107[2] = 0;
      if (cstdlib_strtol(v107, &v106, 0x10u) == 49 && (v88 - 5) <= 0x28)
      {
        break;
      }

      v86 += 4;
      if (v83 <= v86 || (v86 | 3u) > v83)
      {
        goto LABEL_85;
      }
    }

    *v77 = v81;
    v11 = v101;
    v89 = (v78 + 44);
    v85 = v104;
    goto LABEL_108;
  }

LABEL_85:
  if (v81)
  {
    v84 = 0;
    v85 = v104;
    while (!v84 || v80[v84] != 92 || v80[(v84 - 1)] == 32)
    {
      if (v81 == ++v84)
      {
        LOWORD(v84) = v81;
        goto LABEL_101;
      }
    }

    v81 = v84;
  }

  else
  {
    LOWORD(v84) = 0;
    v85 = v104;
  }

LABEL_101:
  v109 = v84;
  OrthPinyinWords = wordSeg_GetOrthPinyinWords(v85, v81, v80, &v109);
  if (!OrthPinyinWords)
  {
    v11 = v101;
    if (v81 != 1)
    {
LABEL_109:
      OrthPinyinWords = *(v78 + 48) != 1;
      goto LABEL_110;
    }

    v89 = (v78 + 48);
LABEL_108:
    OrthPinyinWords = 1;
    *v89 = 1;
    goto LABEL_110;
  }

  v11 = v101;
  if (!v83 || (v103 & 3) != 0 || v83 >> 2 != OrthPinyinWords)
  {
    goto LABEL_109;
  }

LABEL_110:
  *(v78 + 40) = OrthPinyinWords;
  v91 = (v78 + 40);
  v92 = heap_Calloc(*(*v85 + 8), 1, 2 * OrthPinyinWords + 2);
  *(v78 + 56) = v92;
  if (v92)
  {
    if (*v91 >= 2u)
    {
      v97 = 0;
      do
      {
        *(v92 + 2 * v97) = v77[v97];
        ++v97;
      }

      while (v97 < *v91);
    }

    goto LABEL_114;
  }

  v21 = 2359304202;
  log_OutPublic(*(*v85 + 32), "FE_WORDSEG", 61000, 0, v93, v94, v95, v96, v99);
LABEL_117:
  v31 = v100;
LABEL_118:
  *v31 = v11;
  return v21;
}

size_t wordSeg_ParseOutPOSAndAttributes(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = cstdlib_strlen(*(a1 + 1016));
  v6 = Utf8_LengthInUtf8chars(*(a1 + 1016), v5);
  result = cstdlib_strlen(*(a1 + 1016));
  if (!v5)
  {
    goto LABEL_64;
  }

  v50 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v52 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  do
  {
    v14 = v8;
    while (1)
    {
      v15 = *(a1 + 1000);
      if (v11)
      {
        v16 = &v15[v11];
        v17 = *v16;
        if (v17 != 110 && v17 != 115 || *(v16 - 1) != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = *v15;
        if (v18 != 110 && v18 != 115)
        {
          goto LABEL_22;
        }
      }

      if (v10 >= a3)
      {
LABEL_19:
        v9 = 0;
      }

      else
      {
        v19 = v10;
        v20 = (a2 + 72 * v10);
        while (1)
        {
          v21 = *v20;
          v20 += 36;
          v22 = *(*(a1 + 1032) + 32 * v21 + 12) - *(*(a1 + 1032) + 12);
          if (v22 == v14)
          {
            break;
          }

          ++v19;
          if (v22 > v14 || v19 >= v13)
          {
            goto LABEL_19;
          }
        }

        v10 = v19;
        v9 = 1;
      }

      v52 = v12;
LABEL_22:
      v24 = *(a1 + 1016);
      result = *(v24 + v12);
      if (!v12 || result != 92 || *(v24 + v12 - 1) == 32)
      {
        goto LABEL_30;
      }

      if (v9 == 1)
      {
        break;
      }

      if (v15[v11] == 115)
      {
        goto LABEL_32;
      }

LABEL_30:
      result = utf8_determineUTF8CharLength(result);
      v12 += result;
      ++v11;
      v14 = v12;
      if (v5 <= v12)
      {
        goto LABEL_64;
      }
    }

    if (!*(a2 + 72 * v10 + 16) || v15[v11] != 110)
    {
      goto LABEL_30;
    }

LABEL_32:
    v48 = v9;
    v49 = a3;
    v25 = v12;
    v26 = v11;
    v27 = v12;
    if (v5 > v12)
    {
      v28 = *(*(a1 + 1016) + v12);
      v29 = v12;
      v26 = v11;
      v25 = v12;
      v27 = v12;
      while (v28 != 32)
      {
        result = utf8_determineUTF8CharLength(v28);
        v29 += result;
        ++v26;
        v27 = v29;
        if (v5 <= v29)
        {
          v25 = v29;
          break;
        }

        v28 = *(*(a1 + 1016) + v29);
        v25 = v29;
      }
    }

    v8 = v12;
    if (v12 == v25)
    {
      v50 = v50 + v11 - v26;
    }

    else
    {
      v47 = v27;
      cstdlib_memmove((*(a1 + 1016) + v12), (*(a1 + 1016) + v25), (v5 - v27));
      *(*(a1 + 1016) + (v14 + v5 - v47)) = 0;
      v30 = v50 - v26;
      cstdlib_memmove((*(a1 + 1000) + v11), (*(a1 + 1000) + v26), v30);
      v31 = v11 + v50 - v26;
      *(*(a1 + 1000) + v31) = 0;
      result = cstdlib_memmove((*(a1 + 1008) + v11), (*(a1 + 1008) + v26), v30);
      v27 = v47;
      v8 = v12;
      v50 = v11 + v50 - v26;
      *(*(a1 + 1008) + v31) = 0;
    }

    v9 = v48;
    a3 = v49;
    v32 = v27 - v14;
    v33 = *(a1 + 1040);
    if (v33 >= 2)
    {
      v34 = *(a1 + 1032);
      v35 = *(v34 + 12);
      v36 = (v34 + 48);
      v37 = v33 - 1;
      do
      {
        v38 = *(v36 - 1);
        if (v38 >= v35 + v14)
        {
          v38 -= v32;
          *(v36 - 1) = v38;
        }

        v39 = v38 - v35;
        if (*(v36 - 4) == 1 && v39 == v52)
        {
          *v36 -= v32;
        }

        v36 += 8;
        --v37;
      }

      while (v37);
    }

    if (*(*(a1 + 1000) + v11 - 1) == 110)
    {
      v41 = a2 + 72 * v10;
      v43 = *(v41 + 8);
      v42 = (v41 + 8);
      result = v43;
      if (v43)
      {
        v44 = v27 - v14;
        result = cstdlib_strlen(result);
        LOWORD(v32) = v44;
        v8 = v12;
        if (result)
        {
          v45 = 0;
          v46 = *v42;
          do
          {
            if (v45 && *(v46 + v45) == 92 && *(v46 + (v45 - 1)) != 32)
            {
              break;
            }

            ++v45;
          }

          while (v45 < result);
          if (*(v46 + v45) == 92 && *(v46 + (v45 - 1)) != 32)
          {
            *(v46 + v45) = 0;
          }
        }
      }
    }

    v5 = (v5 - v32);
  }

  while (v5 > v8);
LABEL_64:
  *(*(a1 + 1032) + 16) = v5;
  return result;
}

uint64_t wordSeg_setDepesLayers(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = cstdlib_strlen(*(a1 + 1016));
  v7 = cstdlib_strlen(*(a1 + 1000));
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 952), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  cstdlib_strcpy(*(a1 + 952), &unk_26ECDB47D);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 960), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  cstdlib_strcpy(*(a1 + 960), &unk_26ECDB47D);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 968), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  cstdlib_strcpy(*(a1 + 968), &unk_26ECDB47D);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 976), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  v43 = v7;
  v40 = v6;
  cstdlib_strcpy(*(a1 + 976), &unk_26ECDB47D);
  v51 = v6 + 32;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v41 = a3;
    v42 = a2;
    while (1)
    {
      v13 = (a2 + 72 * v9);
      v14 = *(*(a1 + 1032) + 32 * *v13 + 12) - *(*(a1 + 1032) + 12);
      v15 = Utf8_LengthInUtf8chars(*(a1 + 1016), v14);
      if (v15 > v11)
      {
        v16 = v15;
        v10 = wordSeg_GrowDepesLayers(a1, &v51, v12, v11, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, v14 - v12, v15 - v11, 1);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v12 = v14;
        v11 = v16;
      }

      v44 = v9;
      if (v13[20])
      {
        break;
      }

LABEL_47:
      v9 = v44 + 1;
      a2 = v42;
      if (v44 + 1 == v41)
      {
        goto LABEL_50;
      }
    }

    v17 = 0;
    v45 = 0;
    v18 = v13[20] == 1;
    while (1)
    {
      if (v17)
      {
        v19 = *(*(v13 + 7) + 2 * v17 - 2);
        v50 = Utf8_LengthInUtf8chars(*(v13 + 1), v19);
        v20 = *(*(v13 + 7) + 2 * v17) - *(*(v13 + 7) + 2 * v17 - 2);
        v21 = Utf8_LengthInUtf8chars(*(v13 + 1), v20);
      }

      else
      {
        if (v18)
        {
          v20 = cstdlib_strlen(*(v13 + 1));
          v21 = Utf8_LengthInUtf8chars(*(v13 + 1), v20);
        }

        else
        {
          v20 = **(v13 + 7);
          v21 = Utf8_LengthInUtf8chars(*(v13 + 1), v20);
        }

        v19 = 0;
        v50 = 0;
      }

      if (v20 >= 0x40u)
      {
        break;
      }

      v46 = v21;
      cstdlib_strncpy(__dst, (*(v13 + 1) + v19), v20);
      __dst[v20] = 0;
      v48 = v11;
      v49 = v19;
      if (*(v13 + 11) == 1 || *(v13 + 12) == 1)
      {
        v26 = *(v13 + 2);
      }

      else
      {
        v35 = *(v13 + 2);
        if (v35)
        {
          v26 = v52;
          cstdlib_strncpy(v52, (v35 + v45), 4uLL);
          v52[4] = 0;
          v45 += 4;
        }

        else
        {
          v26 = &unk_26ECDB47D;
        }
      }

      v27 = cstdlib_strlen(v26);
      v28 = cstdlib_strlen(__dst);
      v29 = Utf8_LengthInUtf8chars(__dst, v28);
      v47 = v12;
      if (v17)
      {
        v30 = 0;
        v31 = 0;
        v32 = &unk_26ECDB47D;
        v33 = &unk_26ECDB47D;
      }

      else
      {
        v33 = *(v13 + 3);
        if (v33)
        {
          v34 = cstdlib_strlen(*(v13 + 3));
          v30 = Utf8_LengthInUtf8chars(v33, v34);
        }

        else
        {
          v30 = 0;
          v33 = &unk_26ECDB47D;
        }

        v32 = *(v13 + 4);
        if (v32)
        {
          v36 = cstdlib_strlen(*(v13 + 4));
          v31 = Utf8_LengthInUtf8chars(v32, v36);
        }

        else
        {
          v31 = 0;
          v32 = &unk_26ECDB47D;
        }
      }

      LOWORD(v37) = v29;
      if (v29 <= v27)
      {
        LOWORD(v37) = v27;
      }

      if (*(a1 + 1200))
      {
        LOWORD(v37) = v29;
      }

      v37 = v37;
      if (v37 <= v30)
      {
        v37 = v30;
      }

      if (v37 <= v31)
      {
        LOWORD(v37) = v31;
      }

      v10 = wordSeg_GrowDepesLayers(a1, &v51, v49, v50, v26, __dst, v33, v32, v37, v37, 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      ++v17;
      v38 = v13[20];
      if (v17 < v38)
      {
        NewCharStr = wordSeg_GrowDepesLayers(a1, &v51, v49, v50, "*", "*", "~", "~", 1u, 1u, 0);
        if ((NewCharStr & 0x80000000) != 0)
        {
          return NewCharStr;
        }

        v10 = 0;
        v38 = v13[20];
      }

      v18 = 0;
      v12 = v20 + v47;
      v11 = v48 + v46;
      if (v17 >= v38)
      {
        goto LABEL_47;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61011, "%s%d%s%d", v22, v23, v24, v25, "trying to handle pinyin word length");
    return 2359304192;
  }

  LOWORD(v12) = 0;
  LOWORD(v11) = 0;
  v10 = 0;
LABEL_50:
  if (v43 > v11)
  {
    return wordSeg_GrowDepesLayers(a1, &v51, v12, v11, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, v40 - v12, v43 - v11, 1);
  }

  return v10;
}

uint64_t wordSeg_execDepesLayers(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = 0;
  *a2 = 0;
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L1: %s", a6, a7, a8, *(a1 + 952));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L2: %s", v10, v11, v12, *(a1 + 960));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L3: %s", v13, v14, v15, *(a1 + 968));
    if (!*(a1 + 1200))
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L4: %s", v16, v17, v18, *(a1 + 976));
    }
  }

  v19 = *(*(a1 + 32) + 120);
  v20 = *(a1 + 952);
  v21 = cstdlib_strlen(v20);
  v22 = v19(*(a1 + 16), *(a1 + 24), 0, v20, v21);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v23 = *(*(a1 + 32) + 120);
  v24 = *(a1 + 960);
  v25 = cstdlib_strlen(v24);
  v22 = v23(*(a1 + 16), *(a1 + 24), 1, v24, v25);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v26 = *(*(a1 + 32) + 120);
  v27 = *(a1 + 968);
  v28 = cstdlib_strlen(v27);
  v22 = v26(*(a1 + 16), *(a1 + 24), 2, v27, v28);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (!*(a1 + 1200))
  {
    v29 = *(*(a1 + 32) + 120);
    v30 = *(a1 + 976);
    v31 = cstdlib_strlen(v30);
    v22 = v29(*(a1 + 16), *(a1 + 24), 3, v30, v31);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }
  }

  v32 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
  if ((v32 & 0x80000000) != 0)
  {
    v37 = v32;
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61006, "%s%s", v33, v34, v35, v36, "functionName");
    return v37;
  }

  v37 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, a1 + 984, &v58 + 2);
  if ((v37 & 0x80000000) == 0)
  {
    *(*(a1 + 984) + HIWORD(v58)) = 0;
    if (!*(a1 + 1200))
    {
      v38 = (a1 + 992);
      v37 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 1, a1 + 992, &v58);
      if ((v37 & 0x80000000) == 0)
      {
        *(*(a1 + 992) + v58) = 0;
        if (*(a1 + 1188) == 1)
        {
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L1: %s", v39, v40, v41, *(a1 + 984));
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L2: %s", v42, v43, v44, *(a1 + 992));
        }

        v45 = HIWORD(v58);
        if (v45 != Utf8_LengthInUtf8chars(*v38, v58))
        {
          v55 = *(*a1 + 32);
          v56 = 61008;
          goto LABEL_30;
        }

        if (HIWORD(v58))
        {
          v50 = 0;
          v51 = 0;
          do
          {
            v52 = *(*(a1 + 984) + v50);
            v53 = (*v38)[v51];
            if (v52 == 42)
            {
              if (v53 != 42)
              {
                goto LABEL_29;
              }
            }

            else if (v52 == 32 && v53 != 32)
            {
LABEL_29:
              v55 = *(*a1 + 32);
              v56 = 61009;
LABEL_30:
              log_OutPublic(v55, "FE_WORDSEG", v56, 0, v46, v47, v48, v49, v57);
              *a2 = 1;
              return v37;
            }

            ++v50;
            v51 += utf8_determineUTF8CharLength(v53);
          }

          while (v50 < HIWORD(v58));
        }
      }
    }
  }

  return v37;
}

uint64_t wordSeg_processDepesOutput(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v326 = *MEMORY[0x277D85DE8];
  v322 = 0;
  *__s2 = 0;
  v320 = 0;
  *__dst = 0;
  v7 = cstdlib_strlen(*(a1 + 952));
  v8 = cstdlib_strlen(*(a1 + 984));
  v287 = a4;
  *a4 = 0;
  v300 = a3;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v310 = v7;
    v305 = v8;
    v301 = (a1 + 1000);
    v303 = (a1 + 1016);
    while (1)
    {
      v15 = (a2 + 72 * v9);
      v16 = *(v15 + 2);
      v317 = v10;
      if (v16)
      {
        if (!*(v15 + 11))
        {
          v18 = cstdlib_strlen(v16);
          v19 = *(*(a1 + 1032) + 32 * *v15 + 12) - *(*(a1 + 1032) + 12);
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "DOING hexStr=%s posInSentStr=%d", v20, v21, v22, *(v15 + 2));
          if ((*&v18 & 0x3FFFCLL) != 0)
          {
            break;
          }
        }
      }

      v17 = v11;
LABEL_6:
      ++v9;
      v11 = v17;
      v10 = v317;
      if (v9 == v300)
      {
        goto LABEL_159;
      }
    }

    v312 = v19;
    v298 = a2 + 72 * v9;
    v23 = 0;
    v308 = 0;
    v296 = (v18 >> 2);
    v290 = v9;
    while (1)
    {
      v24 = (4 * v23);
      if (*(a1 + 1200))
      {
        v315 = v13;
        v25 = utf8_determineUTF8CharLength(*(*(v298 + 8) + v308));
        cstdlib_strncpy(__dst, (*(v298 + 8) + v308), v25);
        __s2[v25] = 0;
        cstdlib_strncpy(__s2, (*(v298 + 16) + v24), 4uLL);
        v322 = 0;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisOrthStr=%s", v26, v27, v28, __dst);
        v29 = v14 + 1;
        v30 = v310;
        while (v29 < v310 && cstdlib_strncmp((*(a1 + 952) + v14), __dst, v25))
        {
          v14 += utf8_determineUTF8CharLength(*(*(a1 + 952) + v14));
          v29 = v14 + 1;
        }

        if (cstdlib_strncmp((*(a1 + 952) + v14), __dst, v25))
        {
          v139 = *(*a1 + 32);
          v281 = "orth1";
LABEL_317:
          LODWORD(v286) = v281;
          v279 = "%s%s%s%s%s%s";
          v280 = 61012;
          goto LABEL_318;
        }

        v308 += v25;
        v317 = v25;
      }

      else
      {
        cstdlib_strncpy(__s2, (*(v298 + 16) + v24), 4uLL);
        v322 = 0;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisHexStr=%s", v35, v36, v37, __s2);
        v30 = v310;
        if (v14 + 4 < v310)
        {
          while (cstdlib_strncmp((*(a1 + 952) + v14), __s2, 4uLL))
          {
            v38 = v14 + 1;
            v13 = v13 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v13));
            v39 = v14++ + 5;
            if (v39 >= v310)
            {
              goto LABEL_22;
            }
          }
        }

        v38 = v14;
LABEL_22:
        v315 = v13;
        v14 = v38;
        if (cstdlib_strncmp((*(a1 + 952) + v38), __s2, 4uLL))
        {
          v139 = *(*a1 + 32);
LABEL_316:
          v281 = "hex1(first 4 chars)";
          goto LABEL_317;
        }
      }

      v40 = v14;
      v41 = v14;
      do
      {
        v42 = ++v41;
        if (v30 <= v41)
        {
          break;
        }

        v43 = *(*(a1 + 952) + v41);
        if (v43 == 42)
        {
          break;
        }
      }

      while (v43 != 32);
      v44 = v41 - v14;
      v45 = v305;
      if (v44 > 63)
      {
        v139 = *(*a1 + 32);
        v278 = "(L1InIdx)start position";
        goto LABEL_305;
      }

      v46 = *(a1 + 1200);
      if (v44 < 1)
      {
        v53 = 0;
        v49 = v317;
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = v317;
        v50 = v315;
        do
        {
          if (v46)
          {
            v51 = *(*(a1 + 952) + v40);
          }

          else
          {
            v51 = *(*(a1 + 960) + v50);
          }

          if (v51 != 126)
          {
            v52 = v47++;
            __s1[v52] = v51;
          }

          ++v48;
          ++v50;
          ++v40;
        }

        while (v44 > v48);
        v53 = v47;
      }

      __s1[v53] = 0;
      v54 = v12;
      v306 = v23;
      if (v46)
      {
        while (v54 + 1 < v305 && cstdlib_strncmp((*(a1 + 984) + v12), __dst, v49))
        {
          v12 += utf8_determineUTF8CharLength(*(*(a1 + 984) + v12));
          v54 = v12;
        }

        v55 = (*(a1 + 984) + v12);
        v56 = __dst;
        v57 = v49;
      }

      else
      {
        if (v12 + 4 < v305)
        {
          v58 = v12;
          while (cstdlib_strncmp((*(a1 + 984) + v58), __s2, 4uLL))
          {
            v12 = v58 + 1;
            v11 = v11 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v11));
            v59 = v58++ + 5;
            if (v59 >= v305)
            {
              goto LABEL_49;
            }
          }

          v12 = v58;
        }

LABEL_49:
        v55 = (*(a1 + 984) + v12);
        v56 = __s2;
        v57 = 4;
      }

      if (cstdlib_strncmp(v55, v56, v57))
      {
        v139 = *(*a1 + 32);
        goto LABEL_316;
      }

      if (cstdlib_strncmp("d700", __s2, 4uLL) && cstdlib_strncmp("0aff", __s2, 4uLL))
      {
        v60 = v12;
        if (v305 <= v12)
        {
          v61 = v12;
        }

        else
        {
          v61 = v12;
          do
          {
            v62 = *(*(a1 + 984) + v61);
            if (v62 == 32)
            {
              break;
            }

            if (v62 == 42)
            {
              break;
            }

            ++v61;
          }

          while (v305 > v61);
        }
      }

      else
      {
        v61 = v12 + 4;
        v60 = v12;
      }

      v63 = v61 - v60;
      if (v63 > 63)
      {
        v139 = *(*a1 + 32);
        v278 = "start position";
LABEL_305:
        LODWORD(v286) = v278;
LABEL_306:
        v279 = "%s%d%s%d";
        v280 = 61011;
LABEL_318:
        log_OutPublic(v139, "FE_WORDSEG", v280, v279, v31, v32, v33, v34, v286);
LABEL_319:
        v277 = 0;
        *v287 = 1;
        return v277;
      }

      if (v63 < 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = *(a1 + 1200);
        v67 = v11;
        do
        {
          if (v66)
          {
            v68 = *(*(a1 + 984) + v60);
          }

          else
          {
            v68 = *(*(a1 + 992) + v67);
          }

          if (v68 != 32 && v68 != 126)
          {
            __s[v64++] = v68;
          }

          ++v65;
          ++v67;
          ++v60;
        }

        while (v63 > v65);
      }

      __s[v64] = 0;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing words IN=_%s_ OUT=_%s_", v32, v33, v34, __s1);
      if (cstdlib_strcmp(__s1, __s))
      {
        if (*(a1 + 1200))
        {
          v282 = *(*a1 + 32);
          v283 = "original word";
LABEL_314:
          log_OutPublic(v282, "FE_WORDSEG", 61002, "%s%s%s%s", v69, v70, v71, v72, v283);
          goto LABEL_319;
        }

        v73 = cstdlib_strlen(__s);
        v74 = cstdlib_strlen(__s1);
        v323 = 0;
        if (!wordSeg_GetOrthPinyinWords(a1, v64, __s, &v323))
        {
          v282 = *(*a1 + 32);
          v283 = "original pinyin";
          goto LABEL_314;
        }

        v75 = v73 - v74;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "updating pinyin from %s to %s", v70, v71, v72, __s1);
        v76 = cstdlib_strlen(*(a1 + 1016));
        v77 = cstdlib_strlen(__s1);
        v294 = cstdlib_strlen(__s);
        v78 = v75;
        v289 = v77;
        v291 = cstdlib_strlen(*(a1 + 1000));
        v292 = v75;
        if (v75 < 1)
        {
          if (v75 < 0)
          {
            v91 = v312;
            v96 = v312 - v75;
            if (v312 - v78 > v76)
            {
              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61005, "%s%d%s%d%s%d", v79, v80, v81, v82, "incorrect position detected : pos");
LABEL_311:
              v277 = 2359304192;
LABEL_312:
              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61010, 0, v87, v88, v89, v90, v285);
              return v277;
            }

            cstdlib_memmove((*v303 + v312), (*v303 + v312 - v78), (v76 - (v312 - v78)));
            v97 = v76 + v78;
            *(*v303 + v97) = 0;
            v9 = v290;
            cstdlib_memmove((*v301 + v312), (*v301 + v96), (v76 - v96));
            v94 = v312;
            *(*v301 + v97) = 0;
          }

          else
          {
            v94 = v312;
            v91 = v312;
          }

          v95 = (a1 + 1016);
        }

        else
        {
          v83 = *(a1 + 1024);
          if (v76 + v75 > v83)
          {
            if (v75 <= 0x20)
            {
              v84 = 32;
            }

            else
            {
              v84 = v75;
            }

            v85 = v83 + v84;
            MrkMemory = wordSeg_ReallocCharStr(a1, v303, (v83 + v84));
            if ((MrkMemory & 0x80000000) != 0 || (MrkMemory = wordSeg_ReallocCharStr(a1, v301, v85), (MrkMemory & 0x80000000) != 0))
            {
LABEL_301:
              v277 = MrkMemory;
              goto LABEL_312;
            }

            *(a1 + 1024) = v85;
          }

          v91 = v312;
          v92 = v76 + v75;
          __len = v75 + v312;
          v93 = v76 - v312;
          cstdlib_memmove((*v303 + __len), (*v303 + v312), v93);
          *(*v303 + v92) = 0;
          cstdlib_memmove((*v301 + __len), (*v301 + v312), v93);
          v94 = v312;
          *(*v301 + v92) = 0;
          v95 = (a1 + 1016);
          v9 = v290;
        }

        v98 = v294;
        cstdlib_memmove((*v95 + v94), __s, v294);
        v45 = v305;
        if (v294)
        {
          v102 = v91;
          LODWORD(v103) = v291 - v91;
          if (v291 >= v91)
          {
            v103 = v103;
          }

          else
          {
            v103 = 0;
          }

          do
          {
            if (!v103)
            {
              break;
            }

            *(*v301 + v102++) = 88;
            --v103;
            --v98;
          }

          while (v98);
        }

        v104 = *(a1 + 1040);
        if (v104 >= 2)
        {
          v105 = *(a1 + 1032);
          v106 = *(v105 + 12);
          v107 = v104 - 1;
          v108 = (v105 + 48);
          do
          {
            if (*(v108 - 4) == 1)
            {
              v109 = *(v108 - 1);
              v110 = v109 - v106;
              if (v109 - v106 == v91)
              {
                *v108 = v292 + v289;
                v110 = v91;
              }
            }

            else
            {
              v109 = *(v108 - 1);
              v110 = v109 - v106;
            }

            if (v110 >= v91 + v289)
            {
              *(v108 - 1) = v109 + v292;
            }

            v108 += 8;
            --v107;
          }

          while (v107);
        }

        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER pinyin rule      =%s", v99, v100, v101, *(a1 + 1016));
      }

      if (*(a1 + 1200))
      {
        v111 = v12 + v317;
        for (i = v312; v45 > v111; v111 += utf8_determineUTF8CharLength(0x7Eu))
        {
          if (*(*(a1 + 984) + v111) != 126)
          {
            break;
          }
        }

        v17 = v11;
      }

      else
      {
        v111 = v12 + 4;
        v17 = (v11 + 4);
        for (i = v312; v45 > v111; v17 = v17 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v17)))
        {
          if (*(*(a1 + 984) + v111) != 126)
          {
            break;
          }

          ++v111;
        }
      }

      v113 = cstdlib_strlen(__s);
      v114 = i + v113;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "posInSentStr=%d", v115, v116, v117, (i + v113));
      if (v310 > v42)
      {
        v118 = *(*(a1 + 952) + v42);
        v119 = *(*(a1 + 984) + v111);
        if (v118 != v119)
        {
          break;
        }
      }

      v13 = v315;
LABEL_154:
      v312 = v114;
      if (*(a1 + 1200))
      {
        v158 = utf8_determineUTF8CharLength(*(*(a1 + 952) + v14));
        v159 = utf8_determineUTF8CharLength(*(*(a1 + 984) + v111));
      }

      else
      {
        v13 = v13 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v13));
        v17 = v17 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v17));
        v158 = 1;
        v159 = 1;
      }

      v12 = v159 + v111;
      v14 += v158;
      v23 = v306 + 1;
      v11 = v17;
      if (v306 + 1 >= v296)
      {
        goto LABEL_6;
      }
    }

    v313 = i + v113;
    v120 = (i + v113);
    if (v118 == 42 && v119 == 32)
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "insert boundary at position %d", v32, v33, v34, (i + v113));
      v121 = cstdlib_strlen(*(a1 + 1016));
      v122 = Utf8_LengthInUtf8chars(*(a1 + 1016), (i + v113));
      v123 = Utf8_LengthInUtf8chars(*(a1 + 1016), v121);
      v124 = *(a1 + 1024);
      if (v121 >= v124)
      {
        MrkMemory = wordSeg_ReallocCharStr(a1, v303, (v124 + 32));
        if ((MrkMemory & 0x80000000) != 0)
        {
          goto LABEL_301;
        }

        MrkMemory = wordSeg_ReallocCharStr(a1, v301, (*(a1 + 1024) + 32));
        if ((MrkMemory & 0x80000000) != 0)
        {
          goto LABEL_301;
        }

        *(a1 + 1024) += 32;
      }

      cstdlib_memmove((*(a1 + 1016) + v114 + 1), (*(a1 + 1016) + v114), v121 - v120);
      *(*(a1 + 1016) + v114) = 32;
      *(*(a1 + 1016) + v121 + 1) = 0;
      v125 = v122 + 1;
      v126 = v123 - v122;
      cstdlib_memmove((*(a1 + 1000) + v125), (*(a1 + 1000) + v122), v126);
      *(*(a1 + 1000) + v122) = 88;
      v127 = v123 + 1;
      *(*(a1 + 1000) + v127) = 0;
      cstdlib_memmove((*(a1 + 1008) + v125), (*(a1 + 1008) + v122), v126);
      *(*(a1 + 1008) + v122) = 32;
      *(*(a1 + 1008) + v127) = 0;
      v131 = *(a1 + 1040);
      if (v131 >= 2)
      {
        v132 = *(a1 + 1032);
        v133 = *(v132 + 12);
        v134 = v131 - 1;
        v135 = (v132 + 44);
        v9 = v290;
        v136 = v313;
        v13 = v315;
        do
        {
          if (*v135 - v133 >= v120)
          {
            ++*v135;
          }

          v135 += 8;
          --v134;
        }

        while (v134);
        v137 = 1;
        v138 = "AFTER insert rule      =%s posInSentStr=%d";
        goto LABEL_153;
      }

      v137 = 1;
      v138 = "AFTER insert rule      =%s posInSentStr=%d";
    }

    else
    {
      v139 = *(*a1 + 32);
      if (v118 != 32 || v119 != 42)
      {
        v280 = 61010;
        v279 = 0;
        goto LABEL_318;
      }

      log_OutText(v139, "FE_WORDSEG", 5, 0, "delete boundary at position %d", v32, v33, v34, v120);
      v140 = cstdlib_strlen(*v303);
      if (!(i + v113) || (i + v113) == v140)
      {
        goto LABEL_321;
      }

      v141 = (i + v113 - 1);
      v142 = i + v113 - 1;
      do
      {
        v143 = v141;
        if (!v142)
        {
          break;
        }

        v144 = *(*v303 + v142);
        --v141;
        --v142;
      }

      while (v144 != 32);
      v145 = v140;
      if ((i + v113 + 1) > v140)
      {
        v145 = i + v113 + 1;
      }

      v146 = i + v113;
      while (++v146 < v140)
      {
        if (*(*v303 + v146) == 32)
        {
          goto LABEL_144;
        }
      }

      v146 = v145;
LABEL_144:
      if (v146 - v143 >= 65)
      {
LABEL_321:
        v139 = *(*a1 + 32);
        v286 = "deleting boundary at position";
        goto LABEL_306;
      }

      v147 = cstdlib_strlen(*(a1 + 1016));
      v148 = Utf8_LengthInUtf8chars(*(a1 + 1016), v120);
      v149 = Utf8_LengthInUtf8chars(*(a1 + 1016), v147);
      cstdlib_memmove((*(a1 + 1016) + v313), (*(a1 + 1016) + (v120 + 1)), v147 - (v120 + 1));
      *(*(a1 + 1016) + v147 - 1) = 0;
      v150 = v148 + 1;
      v151 = v149 - v150;
      cstdlib_memmove((*(a1 + 1000) + v148), (*(a1 + 1000) + v150), v151);
      *(*(a1 + 1000) + v148) = 88;
      v152 = v149 - 1;
      *(*(a1 + 1000) + v152) = 0;
      cstdlib_memmove((*(a1 + 1008) + v148), (*(a1 + 1008) + v150), v151);
      *(*(a1 + 1008) + v148) = 32;
      *(*(a1 + 1008) + v152) = 0;
      v153 = *(a1 + 1040);
      if (v153 >= 2)
      {
        v154 = *(a1 + 1032);
        v155 = *(v154 + 12);
        v156 = v153 - 1;
        v157 = (v154 + 44);
        v9 = v290;
        v136 = v313;
        v13 = v315;
        do
        {
          if (*v157 - v155 >= v120)
          {
            --*v157;
          }

          v157 += 8;
          --v156;
        }

        while (v156);
        v137 = 0xFFFF;
        v138 = "AFTER delete rule      =%s posInSentStr=%d";
        goto LABEL_153;
      }

      v137 = 0xFFFF;
      v138 = "AFTER delete rule      =%s posInSentStr=%d";
    }

    v9 = v290;
    v136 = v313;
    v13 = v315;
LABEL_153:
    v114 = v136 + v137;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, v138, v128, v129, v130, *(a1 + 1016));
    goto LABEL_154;
  }

LABEL_159:
  v160 = cstdlib_strlen(*(a1 + 1016));
  v161 = cstdlib_strlen(*(a1 + 1000));
  v162 = v160;
  v163 = v161;
  if (!v161)
  {
    goto LABEL_300;
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v304 = 0;
  LODWORD(v168) = 0;
  if (v162 >= v161)
  {
    v169 = v161;
  }

  else
  {
    v169 = v162;
  }

  v297 = v162;
  v295 = v161;
  v293 = v169;
  do
  {
    v170 = *(a1 + 1000);
    v171 = *(v170 + v166);
    if (v171 != 110 && v171 != 88 || v169 <= v166)
    {
      goto LABEL_190;
    }

    v172 = 0;
    v173 = v166;
    do
    {
      v174 = *(v170 + v173);
      if (v174 == 88)
      {
        v172 = 1;
      }

      else if (v174 == 32)
      {
        break;
      }

      ++v173;
    }

    while (v169 > v173);
    if (v172 != 1)
    {
LABEL_190:
      LODWORD(v173) = v166;
      goto LABEL_191;
    }

    v302 = v167;
    v175 = Utf8_LengthInBytes(*(a1 + 1016), v164);
    v299 = Utf8_LengthInBytes(*(a1 + 1016), v173);
    v176 = v299;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing modified region from %d to %d (last region processed %d,%d)", v177, v178, v179, v175);
    v180 = v175;
    if (v175 <= v165)
    {
      goto LABEL_210;
    }

    if (v165 >= v166)
    {
      v181 = 0;
    }

    else
    {
      v181 = 0;
      v182 = *(a1 + 1000);
      do
      {
        v183 = v165;
        v184 = *(v182 + v165);
        if ((v184 == 110 || v184 == 88) && v165 < v166)
        {
          while (1)
          {
            v185 = *(v182 + v183);
            if (v185 != 110 && v185 != 88)
            {
              break;
            }

            if (*(*(a1 + 1008) + v183) == 120)
            {
              v181 = (v181 + 1);
            }

            else
            {
              v181 = v181;
            }

            if (v166 == ++v183)
            {
              v165 = v166;
              goto LABEL_188;
            }
          }

          v165 = v183;
        }

LABEL_188:
        ++v165;
      }

      while (v165 < v166);
    }

    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "skipping %d pinyin words in region (%d,%d)", v88, v89, v90, v181);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "START curWordDef=%d curHexCount=%d", v186, v187, v188, v168);
    v192 = 0;
    if (v300 <= v168 || !v181)
    {
      goto LABEL_209;
    }

    v192 = 0;
    v193 = v168 + 1;
    v194 = (a2 + 16 + 72 * v168);
    v195 = v304;
    while (1)
    {
      if (!*v194)
      {
        ++v192;
        goto LABEL_204;
      }

      v196 = cstdlib_strlen(*v194) >> 2;
      if (v195)
      {
        v197 = v181 - v196 + v195;
        if (v197 < 0)
        {
          v195 = (v195 + v181);
          goto LABEL_208;
        }

        goto LABEL_203;
      }

      v197 = v181 - v196;
      if (v197 < 0)
      {
        break;
      }

LABEL_203:
      v195 = 0;
      LODWORD(v168) = v168 + 1;
      v181 = v197;
LABEL_204:
      if (v193 < v300)
      {
        ++v193;
        v194 += 9;
        if (v181)
        {
          continue;
        }
      }

      goto LABEL_208;
    }

    v195 = v181;
LABEL_208:
    v304 = v195;
LABEL_209:
    LODWORD(v168) = v192 + v168;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "END curWordDef=%d curHexCount=%d", v189, v190, v191, v168);
    v176 = v299;
    v180 = v175;
LABEL_210:
    v198 = *(a1 + 1040);
    if (v198 < 2)
    {
      goto LABEL_241;
    }

    v199 = 1;
    while (2)
    {
      v200 = *(a1 + 1032);
      v201 = v199;
      v202 = (v200 + 32 * v199);
      while (2)
      {
        v203 = v202[3];
        v204 = (v203 - *(v200 + 12));
        if (v204 > v176)
        {
          if (*v202 == 1 || *v202 == 37)
          {
            goto LABEL_241;
          }

          goto LABEL_219;
        }

        if (v204 < v180 || *v202 != 37)
        {
LABEL_219:
          ++v201;
          v202 += 8;
          if (v201 >= v198)
          {
            goto LABEL_241;
          }

          continue;
        }

        break;
      }

      if (v198 < 2u)
      {
        v207 = v180;
        LOWORD(v198) = 1;
      }

      else
      {
        v205 = (v200 + 44);
        v206 = 1;
        while (*(v205 - 3) != 1 || *v205 != v203)
        {
          ++v206;
          v205 += 8;
          if (v198 == v206)
          {
            v207 = v180;
            goto LABEL_229;
          }
        }

        v207 = v180;
        LOWORD(v198) = v206;
      }

LABEL_229:
      v208 = v198;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "invalidate (WORD and HEX) markers %d and %d", v88, v89, v90, v201);
      if (v208 <= v201)
      {
        v209 = v201;
      }

      else
      {
        v209 = v208;
      }

      if (v208 >= v201)
      {
        v210 = v201;
      }

      else
      {
        v210 = v208;
      }

      v211 = (v209 + 1);
      v212 = *(a1 + 1040);
      if (v212 > v211)
      {
        cstdlib_memmove((*(a1 + 1032) + 32 * v209), (*(a1 + 1032) + 32 * v211), 32 * (v212 - v211));
        LOWORD(v212) = *(a1 + 1040);
      }

      v213 = v212 - 1;
      *(a1 + 1040) = v212 - 1;
      v214 = (v210 + 1);
      v215 = (v212 - 1);
      v216 = v215 >= v214;
      v217 = v215 - v214;
      if (v217 != 0 && v216)
      {
        cstdlib_memmove((*(a1 + 1032) + 32 * v210), (*(a1 + 1032) + 32 * v214), 32 * v217);
        v213 = *(a1 + 1040);
      }

      LOWORD(v198) = v213 - 1;
      *(a1 + 1040) = v198;
      v199 = v210 - 1;
      v180 = v207;
      if ((v210 - 1) < v198)
      {
        continue;
      }

      break;
    }

LABEL_241:
    if (v176 <= v180)
    {
      goto LABEL_299;
    }

    while (2)
    {
      v218 = v175;
      if (v176 <= v175)
      {
        v221 = v175;
      }

      else
      {
        v219 = *(a1 + 1016);
        v220 = v175;
        v221 = v175;
        if (*(v219 + v175) == 32)
        {
          v222 = v219 + 1;
          while (v176 > v220 + 1)
          {
            v223 = *(v222 + v220++);
            if (v223 != 32)
            {
              v221 = v220;
              v218 = v220;
              goto LABEL_250;
            }
          }

          v221 = v299;
          v218 = v176;
        }
      }

LABEL_250:
      LODWORD(v175) = v221;
      do
      {
        v175 = (v175 + 1);
      }

      while (v176 > v175 && *(*(a1 + 1016) + v175) != 32);
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing word from %d to %d", v88, v89, v90, v218);
      v323 = 0;
      v309 = v175 - v221;
      OrthPinyinWords = wordSeg_GetOrthPinyinWords(a1, (v175 - v221), *(a1 + 1016) + v221, &v323);
      if (!OrthPinyinWords)
      {
        log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61002, "%s%s", v225, v226, v227, v228, "parsing region");
        goto LABEL_311;
      }

      v229 = OrthPinyinWords;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "got %d words", v226, v227, v228, OrthPinyinWords);
      v230 = *(a1 + 1048);
      if (v230)
      {
        v231 = *(a1 + 1058);
        if (*(a1 + 1056) + 1 >= v231)
        {
          v232 = heap_Realloc(*(*a1 + 8), v230, 8 * v231 + 136);
          if (!v232)
          {
            goto LABEL_307;
          }

          *(a1 + 1048) = v232;
          v237 = *(a1 + 1058) + 16;
          goto LABEL_260;
        }
      }

      else
      {
        v238 = heap_Calloc(*(*a1 + 8), 1, 136);
        *(a1 + 1048) = v238;
        if (!v238)
        {
          goto LABEL_307;
        }

        v237 = 16;
LABEL_260:
        *(a1 + 1058) = v237;
      }

      v239 = heap_Calloc(*(*a1 + 8), 1, (4 * v229) | 1);
      if (!v239)
      {
LABEL_307:
        v277 = 2359304202;
        log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v233, v234, v235, v236, v285);
        goto LABEL_312;
      }

      v307 = v218;
      v302 = v221;
      v240 = *(a1 + 1056);
      *(*(a1 + 1048) + 8 * v240) = v239;
      *(a1 + 1056) = v240 + 1;
      if (v300 <= v168)
      {
        v316 = 0;
        goto LABEL_282;
      }

      v314 = v239;
      v316 = 0;
      v311 = 0;
      v241 = 0;
      v242 = 0;
      v168 = v168;
      v243 = v304;
      while (2)
      {
        v244 = a2 + 72 * v168;
        v247 = *(v244 + 16);
        v246 = (v244 + 16);
        v245 = v247;
        if (!v247)
        {
LABEL_278:
          if (++v168 >= v300 || (v243 = 0, v241 = v242, v229 <= v242))
          {
            v304 = 0;
            LODWORD(v218) = v307;
            goto LABEL_282;
          }

          continue;
        }

        break;
      }

      v248 = cstdlib_strlen(v245);
      if (!v316)
      {
        if (v311)
        {
          v316 = 0;
        }

        else
        {
          v249 = a2 + 72 * v168;
          v311 = *(v249 + 68);
          v316 = *(v249 + 64) + 2 * v243;
        }
      }

      v250 = (v248 >> 2) - v243;
      v251 = v229 - v241;
      if (v250 < v251)
      {
        v252 = 4 * ((v248 >> 2) - v243);
        if (v252)
        {
          v253 = (*v246 + (4 * v243));
          v254 = (v314 + (4 * v241));
          v255 = 1 - v252;
          while (1)
          {
            v256 = *v253;
            *v254 = v256;
            if (!v256)
            {
              break;
            }

            ++v254;
            ++v253;
            if (++v255 == 1)
            {
              goto LABEL_277;
            }
          }

          if (v255)
          {
            bzero(v254, -v255);
          }
        }

LABEL_277:
        v242 += v250;
        goto LABEL_278;
      }

      v272 = (v314 + (4 * v241));
      v273 = (*(a2 + 72 * v168 + 16) + (4 * v243));
      v274 = 1 - 4 * v251;
      LODWORD(v218) = v307;
      while (1)
      {
        v275 = *v273;
        *v272 = v275;
        if (!v275)
        {
          break;
        }

        ++v272;
        ++v273;
        if (++v274 == 1)
        {
          goto LABEL_296;
        }
      }

      if (v274)
      {
        v276 = v251;
        bzero(v272, -v274);
        v251 = v276;
      }

LABEL_296:
      if (v250 == v251)
      {
        v304 = 0;
        LODWORD(v168) = v168 + 1;
      }

      else
      {
        v304 = v251;
      }

LABEL_282:
      MrkInsertPos = wordSeg_GetMrkInsertPos(a1, *(*(a1 + 1032) + 12) + v218, *(*(a1 + 1032) + 12) + v218 + v309);
      if (*(a1 + 1188) == 1)
      {
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add WORD marker at index %d (spos=%d, epos=%d)", v257, v258, v259, MrkInsertPos);
      }

      MrkMemory = wordSeg_GetMrkMemory(a1, MrkInsertPos);
      if ((MrkMemory & 0x80000000) != 0)
      {
        goto LABEL_301;
      }

      v261 = *(a1 + 1032);
      v262 = (v261 + 32 * MrkInsertPos);
      v262[3] = *(v261 + 12) + v218;
      v262[4] = v309;
      *v262 = 1;
      v263 = (4 * v229) >> 1;
      v262[1] = v316;
      v262[2] = v263;
      v267 = wordSeg_GetMrkInsertPos(a1, *(v261 + 12) + v218, *(v261 + 12) + v218 + (4 * v229));
      if (*(a1 + 1188) == 1)
      {
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add HEX marker at index %d (spos=%d, epos=%d)", v264, v265, v266, v267);
      }

      MrkMemory = wordSeg_GetMrkMemory(a1, v267);
      if ((MrkMemory & 0x80000000) != 0)
      {
        goto LABEL_301;
      }

      v268 = *(a1 + 1032) + 32 * v267;
      *v268 = 37;
      *(v268 + 24) = *(*(a1 + 1048) + 8 * *(a1 + 1056) - 8);
      v269 = *(a1 + 1032);
      v270 = *(v269 + 12) + v307;
      v271 = (v269 + 32 * v267);
      v271[3] = v270;
      v271[4] = 2 * (4 * v229);
      v271[1] = v316;
      v271[2] = v263;
      v176 = v299;
      if (v299 > v175)
      {
        continue;
      }

      break;
    }

LABEL_299:
    v167 = v302;
    Utf8_LengthInUtf8chars(*(a1 + 1016), v302);
    v165 = v173;
    v162 = v297;
    v163 = v295;
    v169 = v293;
LABEL_191:
    v166 = v173 + 1;
    v164 = (v173 + 1);
  }

  while (v163 > v164);
LABEL_300:
  v277 = 0;
  *(*(a1 + 1032) + 16) = v162;
  return v277;
}

uint64_t fe_word_seg_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_word_seg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2359304193;
  }

  result = 0;
  *a2 = &IWordSeg;
  return result;
}

uint64_t wordSeg_GetNewCharStr(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *a2;
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    *a2 = 0;
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, a3 + 1);
  *a2 = v7;
  if (v7)
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v8, v9, v10, v11, v13);
  return 2359304202;
}

uint64_t wordSeg_GetOrthPinyinWords(uint64_t a1, unsigned int a2, uint64_t a3, unsigned __int16 *a4)
{
  v7 = *(a1 + 1200);
  *a4 = 0;
  if (v7)
  {
    if (a2)
    {
      LOWORD(v8) = 0;
      v9 = 0;
      v10 = a1 + 1060;
      do
      {
        v11 = *a4 + utf8_determineUTF8CharLength(*(a3 + v8));
        *a4 = v11;
        *(v10 + 2 * v9++) = v11;
        v8 = *a4;
      }

      while (v8 < a2);
      return v9;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  for (i = 0; i < a2; *a4 = i)
  {
    while (1)
    {
      v13 = *(a3 + i);
      if (v13 - 97 > 0x19)
      {
        break;
      }

      *a4 = ++i;
      if (a2 <= i)
      {
        if (a2 == i)
        {
          return 0;
        }

        goto LABEL_17;
      }
    }

    if ((v13 < 0x31 || v13 > *(a1 + 1196)) && (!i || v13 != 39 || *(a3 + i - 1) != 114))
    {
      goto LABEL_27;
    }

LABEL_17:
    *(a1 + 1060 + 2 * v9++) = i + 1;
    i = *a4 + 1;
  }

  if (a2 == i)
  {
    v14 = i;
    v15 = *(a3 + i - 1);
    if ((v15 < 0x31 || v15 > *(a1 + 1196)) && (a2 < 3 || v15 != 39 || *(a3 + v14 - 2) != 114))
    {
      LOBYTE(v13) = *(a3 + v14);
LABEL_27:
      if (!cstdlib_strchr("|-=*()&%^@#$", v13))
      {
        return 0;
      }
    }
  }

  return v9;
}

uint64_t wordSeg_GrowDepesLayers(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, const char *a5, char *a6, char *a7, char *a8, unsigned __int16 a9, unsigned __int16 a10, int a11)
{
  v11 = a7;
  if (!*(a1 + 1200))
  {
    v37 = (a1 + 960);
    v38 = cstdlib_strlen(*(a1 + 960));
    v39 = (a1 + 952);
    v76 = cstdlib_strlen(*(a1 + 952));
    v73 = a2;
    v40 = *a2;
    v41 = v38 + a9;
    if (v41 > v40)
    {
      if (a9 <= 0x20u)
      {
        v42 = 32;
      }

      else
      {
        v42 = a9;
      }

      __n = v40 + v42;
      v43 = (v40 + v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 952), v43);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v44 = (v43 - v38);
      cstdlib_memset((*(a1 + 952) + v76), 0, v44);
      result = wordSeg_ReallocCharStr(a1, (a1 + 960), v43);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_memset((*(a1 + 960) + v38), 0, v44);
      result = wordSeg_ReallocCharStr(a1, (a1 + 968), __n);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_memset((*(a1 + 968) + v76), 0, v44);
      result = wordSeg_ReallocCharStr(a1, (a1 + 976), __n);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_memset((*(a1 + 976) + v76), 0, v44);
      *v73 = __n;
      v11 = a7;
    }

    if (a11 == 1)
    {
      cstdlib_strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v76 + a10) = 0;
      cstdlib_strncat(*(a1 + 960), (*(a1 + 1016) + a3), a9);
      *(*(a1 + 960) + v41) = 0;
      if (a10)
      {
        for (i = 0; i < a10; ++i)
        {
          cstdlib_strcat(*(a1 + 968), " ");
        }

        for (j = 0; j < a10; ++j)
        {
          cstdlib_strcat(*(a1 + 976), " ");
        }
      }
    }

    else
    {
      v47 = v11;
      v48 = cstdlib_strlen(a5);
      v49 = cstdlib_strlen(a6);
      v50 = cstdlib_strlen(v47);
      v81 = cstdlib_strlen(a8);
      cstdlib_strcat(*v39, a5);
      v51 = a10 - v48;
      if (v51 >= 1)
      {
        v52 = 0;
        do
        {
          cstdlib_strcat(*v39, "~");
          ++v52;
        }

        while (v51 > v52);
      }

      cstdlib_strcat(*v37, a6);
      v53 = a10 - v49;
      if (v53 >= 1)
      {
        v54 = 0;
        do
        {
          cstdlib_strcat(*v37, "~");
          ++v54;
        }

        while (v53 > v54);
      }

      cstdlib_strcat(*(a1 + 968), a7);
      v55 = a10 - v50;
      if (v55 >= 1)
      {
        v56 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 968), "~");
          ++v56;
        }

        while (v55 > v56);
      }

      cstdlib_strcat(*(a1 + 976), a8);
      v57 = a10 - v81;
      if (v57 >= 1)
      {
        v58 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 976), "~");
          ++v58;
        }

        while (v57 > v58);
      }
    }

    return 0;
  }

  v16 = (a1 + 952);
  v17 = cstdlib_strlen(*(a1 + 952));
  v75 = (a1 + 960);
  v18 = cstdlib_strlen(*(a1 + 960));
  v72 = (a1 + 968);
  v19 = cstdlib_strlen(*(a1 + 968));
  v20 = cstdlib_strlen(a6);
  v21 = v11;
  v22 = v20;
  v23 = cstdlib_strlen(v21);
  v24 = cstdlib_strlen(a8);
  v25 = *a2;
  if (a9 + v17 + v22 < v25 && a9 + v18 + v23 < v25 && a9 + v19 + v24 < v25)
  {
LABEL_21:
    if (a11 == 1)
    {
      cstdlib_strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v17 + a10) = 0;
      if (a10)
      {
        for (k = 0; k < a10; ++k)
        {
          cstdlib_strcat(*v75, " ");
        }

        for (m = 0; m < a10; ++m)
        {
          cstdlib_strcat(*v72, " ");
        }
      }
    }

    else
    {
      v59 = cstdlib_strlen(a6);
      v60 = Utf8_LengthInUtf8chars(a6, v59);
      v61 = cstdlib_strlen(a7);
      v62 = Utf8_LengthInUtf8chars(a7, v61);
      v63 = cstdlib_strlen(a8);
      v64 = Utf8_LengthInUtf8chars(a8, v63);
      cstdlib_strcat(*v16, a6);
      v65 = a10 - v60;
      if (v65 >= 1)
      {
        v66 = 0;
        do
        {
          cstdlib_strcat(*v16, "~");
          ++v66;
        }

        while (v65 > v66);
      }

      cstdlib_strcat(*v75, a7);
      v67 = a10 - v62;
      if (v67 >= 1)
      {
        v68 = 0;
        do
        {
          cstdlib_strcat(*v75, "~");
          ++v68;
        }

        while (v67 > v68);
      }

      cstdlib_strcat(*v72, a8);
      v69 = a10 - v64;
      if (v69 >= 1)
      {
        v70 = 0;
        do
        {
          cstdlib_strcat(*v72, "~");
          ++v70;
        }

        while (v69 > v70);
      }
    }

    return 0;
  }

  v28 = v23;
  if (v22 > v23)
  {
    v28 = v22;
  }

  if (v28 <= v24)
  {
    v28 = v24;
  }

  v29 = v28 + a9;
  v30 = v25 + a9 + v28;
  v31 = v25 + 32;
  if (v29 <= 0x20)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  result = wordSeg_ReallocCharStr(a1, (a1 + 952), v32);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memset((*(a1 + 952) + v17), 0, v32 - v17);
    result = wordSeg_ReallocCharStr(a1, v75, v32);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_memset((*(a1 + 960) + v18), 0, v32 - v18);
      result = wordSeg_ReallocCharStr(a1, v72, v32);
      if ((result & 0x80000000) == 0)
      {
        cstdlib_memset(&(*v72)[v19], 0, v32 - v19);
        *a2 = v32;
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t wordSeg_ReallocCharStr(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v5)
  {
    v10 = v5;
    result = 0;
    *a2 = v10;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v6, v7, v8, v9, v12);
    return 2359304202;
  }

  return result;
}

uint64_t wordSeg_GetMrkInsertPos(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 1040);
  if (v3 < 2)
  {
    return 1;
  }

  v4 = (*(a1 + 1032) + 48);
  v5 = 1;
  while (*(v4 - 1) <= a2)
  {
    ++v5;
    v4 += 8;
    if (v3 == v5)
    {
      return v3;
    }
  }

  result = v5;
  if (*(v4 - 1) == a2 && v3 > v5)
  {
    while (*(v4 - 1) == a2 && *v4 + a2 <= a3)
    {
      ++v5;
      v4 += 8;
      if (v3 == v5)
      {
        return v3;
      }
    }

    return v5;
  }

  return result;
}

uint64_t wordSeg_GetMrkMemory(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 1040);
  if (v4 < *(a1 + 1042))
  {
    v5 = *(a1 + 1032);
LABEL_5:
    cstdlib_memmove((v5 + 32 * a2 + 32), (v5 + 32 * a2), 32 * (v4 - a2));
    result = 0;
    ++*(a1 + 1040);
    return result;
  }

  v6 = v4 + 1;
  *(a1 + 1042) = v6;
  v5 = heap_Realloc(*(*a1 + 8), *(a1 + 1032), 32 * v6);
  if (v5)
  {
    *(a1 + 1032) = v5;
    v4 = *(a1 + 1040);
    goto LABEL_5;
  }

  log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v7, v8, v9, v10, v12);
  return 2359304202;
}

uint64_t tryLoadingCrfModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  log_OutText(*(a5 + 32), "FE_PW", 5, 0, "looking for CRF PW model at %s", a6, a7, a8, a7);
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, a7, "CRPH", v8, (v8 & 0xFFFFFFu) >> 16, 0);
  if ((Only_ReferenceCnt & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PW", 5, 0, "no CRF PW model found", v16, v17, v18, a7);
  }

  return Only_ReferenceCnt;
}

uint64_t pw_crf_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t *a8, unsigned __int16 *a9, _DWORD *a10)
{
  v13 = a1;
  v14 = a10;
  v187 = *MEMORY[0x277D85DE8];
  v173 = 0;
  v174 = a8;
  v172 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  if (a7)
  {
    v15 = 0;
    v16 = a7;
    v17 = (a6 + 8);
    do
    {
      v18 = *(v17 - 1);
      if (cstdlib_strcmp(*v17, "non"))
      {
        *v14 = 0;
      }

      v15 += cstdlib_strlen(v18);
      v17 += 5;
      --v16;
    }

    while (v16);
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (*v14)
  {
    return 0;
  }

  v161 = a2;
  v20 = 2586845194;
  v21 = heap_Calloc(*(v13 + 8), v19, 8);
  if (!v21)
  {
    return v20;
  }

  v22 = v21;
  v23 = heap_Calloc(*(v13 + 8), v19, 8);
  v24 = *(v13 + 8);
  v162 = v23;
  if (!v23)
  {
    v123 = v22;
LABEL_196:
    heap_Free(v24, v123);
    return v20;
  }

  v25 = heap_Calloc(v24, v19, 8);
  if (!v25)
  {
    heap_Free(*(v13 + 8), v22);
    v24 = *(v13 + 8);
    v123 = v162;
    goto LABEL_196;
  }

  v26 = v25;
  if (!a7)
  {
    goto LABEL_182;
  }

  v163 = v22;
  v27 = 0;
  v28 = 0;
  v156 = a7;
  v157 = a6;
  v159 = v13;
  v160 = v25;
  do
  {
    v158 = v27;
    v29 = (a6 + 40 * v27);
    v30 = *v29;
    if (cstdlib_strlen(*v29))
    {
      v31 = 0;
      v164 = 0;
      v32 = 0;
      do
      {
        v33 = 83;
        __s2 = 83;
        v185 = 0u;
        memset(v186, 0, sizeof(v186));
        v184 = 0u;
        *__s = 0u;
        v181 = 0u;
        memset(v182, 0, sizeof(v182));
        *__s1 = 0u;
        v180 = 0u;
        v34 = utf8_determineUTF8CharLength(v30[v31]);
        v35 = v34;
        if (cstdlib_strlen(*v29) != v34)
        {
          if (cstdlib_strlen(*v29) - v34 == v31)
          {
            v33 = 69;
          }

          else if (v32)
          {
            v33 = 77;
          }

          else
          {
            v33 = 66;
          }
        }

        v170 = v28;
        __s2 = v33;
        __c = 0;
        v175 = 0;
        cstdlib_strncpy(__c_1, &v30[v31], v34 + 1);
        __c_1[v34] = 0;
        v176 = 0;
        if (((*(a3 + 96))(a4, a5, "wpcrf", __c_1, &v175, &v176, &__c) & 0x80000000) == 0)
        {
          if (v176)
          {
            v39 = 0;
            v40 = (v162 + 8 * v28);
            while (1)
            {
              v41 = cstdlib_strchr(*(v175 + 8 * v39), __c);
              if (v41)
              {
                break;
              }

              if (++v39 >= v176)
              {
                goto LABEL_69;
              }
            }

            v44 = v41;
            v45 = *(v175 + 8 * v39);
            v46 = v41 - v45;
            if (v41 == v45 && v46 < 1)
            {
              v48 = __c_1;
            }

            else
            {
              if (v46 < 0)
              {
                LODWORD(v46) = v45 - v41;
              }

              v48 = __s1;
              cstdlib_strncat(__s1, v45, v46);
            }

            cstdlib_strcat(__s, v48);
            v49 = v44 + 1;
            v50 = cstdlib_strchr(v44 + 1, __c);
            if (v50)
            {
              v51 = v50;
              v52 = 0;
              do
              {
                cstdlib_strcat(__s, " ");
                v53 = v51 - v49;
                if (v51 - v49 < 0)
                {
                  v53 = v49 - v51;
                }

                v54 = v53;
                cstdlib_strncat(__s, v49, v53);
                if (!v52)
                {
                  v55 = v54 == 1 && *v49 == 49;
                  *v40 = v55;
                }

                v49 = v51 + 1;
                v51 = cstdlib_strchr(v51 + 1, __c);
                --v52;
              }

              while (v51);
            }

LABEL_68:
            cstdlib_strcat(__s, " ");
            cstdlib_strncat(__s, &__s2, 1uLL);
            v13 = v159;
            v26 = v160;
            goto LABEL_69;
          }

          if (((*(a3 + 96))(a4, a5, "wpcrf", "NULL", &v175, &v176, &__c) & 0x80000000) == 0 && v176)
          {
            v42 = 0;
            while (1)
            {
              v43 = cstdlib_strchr(*(v175 + 8 * v42), __c);
              if (v43)
              {
                break;
              }

              if (++v42 >= v176)
              {
                goto LABEL_69;
              }
            }

            v56 = v43;
            v57 = *(v175 + 8 * v42);
            v58 = v43 - v57;
            if (v43 == v57 && v58 < 1)
            {
              v60 = __c_1;
            }

            else
            {
              if (v58 < 0)
              {
                LODWORD(v58) = v57 - v43;
              }

              v60 = __s1;
              cstdlib_strncat(__s1, v57, v58);
            }

            cstdlib_strcat(__s, v60);
            v61 = v56 + 1;
            v62 = cstdlib_strchr(v61, __c);
            if (v62)
            {
              v63 = v62;
              do
              {
                cstdlib_strcat(__s, " ");
                v64 = v63 - v61;
                if (v63 - v61 < 0)
                {
                  v64 = v61 - v63;
                }

                cstdlib_strncat(__s, v61, v64);
                v61 = v63 + 1;
                v63 = cstdlib_strchr(v63 + 1, __c);
              }

              while (v63);
            }

            goto LABEL_68;
          }
        }

LABEL_69:
        if (LogLevel >= 5)
        {
          log_OutText(*(v13 + 32), "FE_PW", 5, 0, "[PWCRF] Feat: %s", v36, v37, v38, __s);
        }

        v65 = heap_Calloc(*(v13 + 8), 1, 69);
        v28 = v170;
        *(v26 + 8 * v170) = v65;
        if (!v65)
        {
LABEL_175:
          v20 = 2584748042;
          v22 = v163;
          goto LABEL_176;
        }

        if (!cstdlib_strlen(__s1))
        {
          cstdlib_strncpy(*(v26 + 8 * v170), &v30[v31], v35);
          goto LABEL_76;
        }

        if (cstdlib_strcmp(__s1, "NULL"))
        {
          cstdlib_strcpy(*(v26 + 8 * v170), __s1);
LABEL_76:
          v66 = *(v13 + 8);
          v67 = cstdlib_strlen(__s);
          v68 = heap_Calloc(v66, 1, v67 + 1);
          v163[v170] = v68;
          if (!v68)
          {
            goto LABEL_175;
          }

          cstdlib_strcpy(v68, __s);
          if (v164)
          {
            if (__s2 == 69)
            {
              v69 = 83;
            }

            else
            {
              v69 = 66;
            }

            v70 = v163[v170];
            v70[cstdlib_strlen(v70) - 1] = v69;
          }

          v164 = 0;
          v28 = v170 + 1;
          goto LABEL_93;
        }

        if (__s2 == 69 && v170)
        {
          v71 = v163[v170 - 1];
          if (v71[cstdlib_strlen(v71) - 1] == 66)
          {
            v72 = 83;
          }

          else
          {
            v72 = 69;
          }

          v73 = v163[v170 - 1];
          v73[cstdlib_strlen(v73) - 1] = v72;
          v28 = v170;
        }

        else
        {
          v74 = v164;
          if (__s2 == 66)
          {
            v74 = 1;
          }

          v164 = v74;
        }

        heap_Free(*(v13 + 8), *(v26 + 8 * v28));
        *(v26 + 8 * v28) = 0;
LABEL_93:
        v32 += v35;
        v31 = v32;
      }

      while (cstdlib_strlen(*v29) > v32);
    }

    a6 = v157;
    v27 = v158 + 1;
  }

  while (v158 + 1 != v156);
  v22 = v163;
  if (!v28)
  {
LABEL_182:
    v124 = 0;
    v20 = 2584748040;
    a9 = 0;
    v80 = v173;
    v127 = 1;
    LODWORD(v79) = v172;
    goto LABEL_184;
  }

  v170 = v28;
  v75 = crf_Process(v161, v163, v28, &v173, &v172);
  v79 = v172;
  v80 = v173;
  if (!v172)
  {
    v20 = v75;
    goto LABEL_177;
  }

  v81 = 1;
  v82 = v173;
  v83 = v162;
  v84 = v172;
  do
  {
    v85 = *v83;
    v83 += 2;
    if (!v85)
    {
      goto LABEL_115;
    }

    if (v81 == 1)
    {
      if (v79 != 1)
      {
        **v80 = 66;
        v86 = *(v80 + 8);
        v87 = *v86;
        if (v87 == 83)
        {
          *v86 = 69;
        }

        else if (v87 == 66)
        {
          *v86 = 77;
        }
      }

      goto LABEL_115;
    }

    **v82 = 69;
    v88 = *(v82 - 8);
    v89 = *v88;
    if (v89 == 83)
    {
      v90 = 66;
    }

    else
    {
      if (v89 != 69)
      {
        goto LABEL_109;
      }

      v90 = 77;
    }

    *v88 = v90;
LABEL_109:
    if (v81 < v79)
    {
      v91 = *(v82 + 8);
      v92 = *v91;
      if (v92 == 69)
      {
        *v91 = 83;
      }

      else if (v92 == 77)
      {
        *v91 = 66;
      }
    }

LABEL_115:
    ++v81;
    v82 += 8;
    --v84;
  }

  while (v84);
  v93 = (v80 + 8);
  v94 = v79;
  do
  {
    v95 = *(v93 - 1);
    v96 = *v95;
    if (v94 == 1)
    {
      if (v96 == 77)
      {
        LOBYTE(v97) = 69;
      }

      else
      {
        if (v96 != 66)
        {
          break;
        }

        LOBYTE(v97) = 83;
      }

      goto LABEL_135;
    }

    if (*v95 <= 0x4Cu)
    {
      if (v96 != 66)
      {
        if (v96 == 69)
        {
          v97 = **v93 | 8;
          if (v97 == 77)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_136;
      }

      v98 = **v93;
      LOBYTE(v97) = 83;
      goto LABEL_133;
    }

    if (v96 == 77)
    {
      v98 = **v93;
      LOBYTE(v97) = 69;
LABEL_133:
      if (v98 == 66 || v98 == 83)
      {
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    if (v96 == 83 && (**v93 | 8) == 0x4D)
    {
      LOBYTE(v97) = 66;
LABEL_135:
      *v95 = v97;
    }

LABEL_136:
    ++v93;
    --v94;
  }

  while (v94);
  if (LogLevel >= 5)
  {
    do
    {
      v99 = *v80;
      v80 += 8;
      log_OutText(*(v13 + 32), "FE_PW", 5, 0, "[PWCRF] Predicted Tag: %s", v76, v77, v78, v99);
      --v79;
    }

    while (v79);
  }

  v100 = v172;
  v101 = v173;
  if (!v172)
  {
    v26 = v160;
    goto LABEL_247;
  }

  v102 = 0;
  v103 = v172 - 1;
  v169 = v172 - 1;
  while (2)
  {
    v104 = cstdlib_strlen(v163[v102]) - 1;
    v105 = v101[v102];
    v106 = *v105;
    if (v106 == 83)
    {
      if (*(v163[v102] + v104) != 83)
      {
        *v105 = 66;
        v115 = v102 + 1;
        if (v115 < v100)
        {
          v116 = *(v163[v115] + cstdlib_strlen(v163[v115]) - 1);
          v117 = v102;
          while (v116 != 69)
          {
            *v101[v115] = 77;
            if (v103 == v115)
            {
              goto LABEL_157;
            }

            v116 = *(v163[v115 + 1] + cstdlib_strlen(v163[v115 + 1]) - 1);
            ++v117;
            ++v115;
          }

          *v101[v115] = 69;
          v118 = v117 + 2;
          if (v117 + 2 >= v100)
          {
            goto LABEL_170;
          }

          v119 = v101[v118];
          v120 = *v119;
          if (v120 == 77)
          {
            goto LABEL_167;
          }

          if (v120 != 69)
          {
            goto LABEL_170;
          }

          goto LABEL_168;
        }
      }

      goto LABEL_157;
    }

    if (v106 != 69 || (v107 = *(v163[v102] + v104), v107 == 69) || v107 == 83 || (*v105 = 77, v108 = v102 + 1, v102 + 1 >= v100))
    {
LABEL_157:
      ++v102;
      goto LABEL_158;
    }

    v109 = &v101[v108];
    v110 = -2 - v102;
    v111 = v169 - v102;
    v112 = &v163[v108];
    while (1)
    {
      v113 = (*v112)[cstdlib_strlen(*v112) - 1];
      if (v113 == 83 || v113 == 69)
      {
        break;
      }

      v114 = *v109++;
      *v114 = 77;
      --v110;
      ++v112;
      if (!--v111)
      {
        goto LABEL_157;
      }
    }

    **v109 = 69;
    v118 = -v110;
    if (-v110 >= v100)
    {
      goto LABEL_171;
    }

    v119 = v101[v118];
    v121 = *v119;
    if (v121 != 69)
    {
      if (v121 == 77)
      {
LABEL_167:
        v122 = 66;
        goto LABEL_169;
      }

      goto LABEL_170;
    }

LABEL_168:
    v122 = 83;
LABEL_169:
    *v119 = v122;
LABEL_170:
    if (v118 < 2)
    {
      v102 += v118;
    }

    else
    {
LABEL_171:
      v102 = v118;
    }

LABEL_158:
    if (v102 < v100)
    {
      continue;
    }

    break;
  }

  v100 = v172;
  v101 = v173;
  if (v172)
  {
    v132 = 0;
    v133 = 0;
    v26 = v160;
    while (2)
    {
      v134 = (v157 + 40 * v132);
      if (cstdlib_strcmp(v134[2], "latin"))
      {
        v22 = v163;
        do
        {
          v135 = v133 + 1;
          if (v133 + 1 >= v100)
          {
            break;
          }

          v136 = v163[v133];
          if (v136[cstdlib_strlen(v136) - 1] == 69)
          {
            break;
          }

          v137 = v163[v133++];
        }

        while (v137[cstdlib_strlen(v137) - 1] != 83);
        v133 = v135;
        goto LABEL_232;
      }

      v138 = Utf8_Utf8NbrOfSymbols(*v134);
      if (!v132)
      {
        goto LABEL_223;
      }

      if (!v133)
      {
        goto LABEL_223;
      }

      if (!cstdlib_strlen(v163[v133]))
      {
        goto LABEL_223;
      }

      v139 = v133 - 1;
      if (!cstdlib_strlen(v163[v133 - 1]))
      {
        goto LABEL_223;
      }

      if (!cstdlib_strcmp(*(v134 - 3), "latin"))
      {
        goto LABEL_223;
      }

      v140 = v163[v133];
      if (v140[cstdlib_strlen(v140) - 1] == 77)
      {
        goto LABEL_223;
      }

      v141 = v163[v139];
      if (v141[cstdlib_strlen(v141) - 1] == 77)
      {
        goto LABEL_223;
      }

      v142 = v101[v139];
      v143 = *v142;
      if (v143 == 77)
      {
        v144 = 69;
LABEL_217:
        *v142 = v144;
      }

      else if (v143 == 66)
      {
        v144 = 83;
        goto LABEL_217;
      }

      v145 = v101[v133];
      v146 = *v145;
      if (v146 == 69)
      {
        v147 = 83;
      }

      else
      {
        if (v146 != 77)
        {
          goto LABEL_223;
        }

        v147 = 66;
      }

      *v145 = v147;
LABEL_223:
      v133 = v133 + v138 - 1;
      if (v133 >= v100)
      {
        v26 = v160;
LABEL_231:
        v22 = v163;
        goto LABEL_232;
      }

      v26 = v160;
      if (!cstdlib_strcmp(v134[7], "latin"))
      {
        goto LABEL_231;
      }

      v22 = v163;
      v148 = v163[v133 - 1];
      if (v148[cstdlib_strlen(v148) - 1] == 77)
      {
        goto LABEL_232;
      }

      v149 = v163[v133];
      if (v149[cstdlib_strlen(v149) - 1] == 77)
      {
        goto LABEL_232;
      }

      v150 = v101[v133 - 1];
      v151 = *v150;
      if (v151 == 77)
      {
        v152 = 69;
      }

      else
      {
        if (v151 != 66)
        {
          goto LABEL_237;
        }

        v152 = 83;
      }

      *v150 = v152;
LABEL_237:
      v153 = v101[v133];
      v154 = *v153;
      if (v154 == 69)
      {
        v155 = 83;
      }

      else
      {
        if (v154 != 77)
        {
          goto LABEL_232;
        }

        v155 = 66;
      }

      *v153 = v155;
LABEL_232:
      if (++v132 >= v156 || v133 >= v100)
      {
        v100 = v172;
        v101 = v173;
        v13 = v159;
        goto LABEL_246;
      }

      continue;
    }
  }

  v13 = v159;
  v26 = v160;
  v22 = v163;
LABEL_246:
  a6 = v157;
LABEL_247:
  v20 = pw_crf_alginWS(v13, v100, a6, v22, v101, &v174, &a9);
LABEL_176:
  v80 = v173;
  LODWORD(v79) = v172;
  if (v170)
  {
LABEL_177:
    v124 = v170;
    v125 = v22;
    v126 = v170;
    do
    {
      if (*v125)
      {
        heap_Free(*(v13 + 8), *v125);
      }

      ++v125;
      --v126;
    }

    while (v126);
    v127 = 0;
  }

  else
  {
    v124 = 0;
    v127 = 1;
  }

LABEL_184:
  heap_Free(*(v13 + 8), v22);
  heap_Free(*(v13 + 8), v162);
  if ((v127 & 1) == 0)
  {
    v128 = v26;
    do
    {
      if (*v128)
      {
        heap_Free(*(v13 + 8), *v128);
      }

      ++v128;
      --v124;
    }

    while (v124);
  }

  heap_Free(*(v13 + 8), v26);
  if (v80)
  {
    if (v79)
    {
      v129 = v79;
      v130 = v80;
      do
      {
        if (*v130)
        {
          heap_Free(*(v13 + 8), *v130);
        }

        ++v130;
        --v129;
      }

      while (v129);
    }

    v24 = *(v13 + 8);
    v123 = v80;
    goto LABEL_196;
  }

  return v20;
}