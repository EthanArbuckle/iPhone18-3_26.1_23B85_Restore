uint64_t featextract_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 415, 104) & 0x80000000) != 0)
  {
    return 2364547080;
  }

  v3 = *(a1 + 48);

  return featextract_closeStreams(v3, a1 + 56);
}

uint64_t featextract_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2364547073;
  }

  result = 0;
  *a2 = &IFeatextract;
  return result;
}

uint64_t featextract_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2364547079;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 416;
  }

  return result;
}

uint64_t featextract_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = heap_Calloc(*(v25 + 8), 1, 104);
  if (!v10 || (v15 = v10, *v10 = a3, v10[1] = a4, v16 = v25, v10[2] = v25, v10[3] = a1, v10[5] = 0, v10[6] = 0, v10[4] = 0, v17 = heap_Calloc(*(v16 + 8), 1, 3656), (v15[12] = v17) == 0))
  {
    Object = 2364547082;
    log_OutPublic(*(v25 + 32), "FEATEXTRACT", 31000, 0, v11, v12, v13, v14, v21);
    return Object;
  }

  paramc_ParamSetStr(*(v15[2] + 40), "voiceaddon", "");
  Voice = featextract_loadVoice(v15);
  if ((Voice & 0x80000000) != 0 || (Voice = objc_GetObject(*(v25 + 48), "LINGDB", &v23), (Voice & 0x80000000) != 0))
  {
    Object = Voice;
    goto LABEL_14;
  }

  v15[5] = *(v23 + 8);
  Object = objc_GetObject(*(v25 + 48), "SYNTHSTREAM", &v24);
  if ((Object & 0x80000000) != 0)
  {
LABEL_14:
    featextract_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return Object;
  }

  v15[6] = *(v24 + 8);
  *(v15 + 22) = 0;
  if ((paramc_ParamGetUInt(*(v25 + 40), "usewordorthography", &v22) & 0x80000000) == 0 && v22 == 1)
  {
    *(v15 + 22) = 1;
  }

  *a5 = v15;
  *(a5 + 8) = 415;
  return Object;
}

uint64_t featextract_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 415, 104);
  if ((result & 0x80000000) != 0)
  {
    return 2364547080;
  }

  if (a1)
  {
    if (a1[5])
    {
      objc_ReleaseObject(*(a1[2] + 48), "LINGDB");
    }

    if (a1[6])
    {
      objc_ReleaseObject(*(a1[2] + 48), "SYNTHSTREAM");
    }

    paramc_ParamSetStr(*(a1[2] + 40), "uselectrawdataversion", "");
    paramc_ParamSetStr(*(a1[2] + 40), "uselectreductionversion", "");
    v4 = a1[4];
    if (v4)
    {
      v5 = a1[3];
      if (!v5 || (v6 = *(v5 + 48)) == 0)
      {
        v6 = *(a1[2] + 48);
      }

      objc_ReleaseObject(v6, v4 + 152);
    }

    v7 = a1[12];
    if (v7)
    {
      heap_Free(*(a1[2] + 8), v7);
    }

    heap_Free(*(a1[2] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t featextract_loadVoice(_WORD **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  LODWORD(v19) = 0;
  BrokerString = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = BrokerString;
      if (!cstdlib_strcmp(v3 + 152, __s2))
      {
        goto LABEL_19;
      }
    }
  }

  v5 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 1, 0);
  if ((v5 & 0x80000000) != 0)
  {
    __s2[0] = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = a1[4];
  if (!v7 || cstdlib_strcmp(v7 + 152, __s2))
  {
    v8 = uselect_CheckForDataFile(*a1, a1[1], __s2, &v19);
    v4 = v8;
    if (!v19)
    {
      __s2[0] = 0;
    }

    if ((v8 & 0x80001FFF) == 0x8000000A)
    {
      return v4;
    }
  }

  if (!__s2[0])
  {
LABEL_13:
    v4 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 0);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    AddRefCountedObject = uselect_CheckForDataFile(*a1, a1[1], __s2, &v19);
    if (!v19)
    {
      __s2[0] = 0;
    }

    if ((AddRefCountedObject & 0x80001FFF) == 0x8000000A)
    {
      return AddRefCountedObject;
    }

    if (!__s2[0])
    {
      v4 = uselect_CreateBrokerString(a1[2], __s2, 0x100uLL, 0, 0, 0, 1);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }
    }

    goto LABEL_19;
  }

  v4 = v6;
LABEL_19:
  v10 = a1[4];
  if (v10)
  {
    if (cstdlib_strcmp(v10 + 152, __s2))
    {
      v11 = a1[3];
      if (!v11 || (v12 = *(v11 + 6)) == 0)
      {
        v12 = *(a1[2] + 6);
      }

      AddRefCountedObject = objc_ReleaseObject(v12, (a1[4] + 76));
      a1[4] = 0;
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        return AddRefCountedObject;
      }
    }

    else if (a1[4])
    {
      return v4;
    }
  }

  v19 = 0;
  v13 = a1[3];
  if (v13 && (v14 = *(v13 + 6)) != 0)
  {
    v15 = a1[2];
  }

  else
  {
    v15 = a1[2];
    v14 = *(v15 + 48);
  }

  AddRefCountedObject = objc_GetAddRefCountedObject(v14, __s2, uselect_ObjcVoiceOpen, uselect_ObjcVoiceClose, v15, &v19);
  if ((AddRefCountedObject & 0x80000000) != 0)
  {
    return AddRefCountedObject;
  }

  v16 = *(v19 + 32);
  a1[4] = v16;
  AddRefCountedObject = paramc_ParamSetStr(*(a1[2] + 5), "uselectrawdataversion", (v16 + 64));
  if ((AddRefCountedObject & 0x80000000) != 0)
  {
    return AddRefCountedObject;
  }

  v17 = paramc_ParamSetStr(*(a1[2] + 5), "uselectreductionversion", a1[4] + 140);
  v4 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    if (a1[4][1789] == 2)
    {
      return v17;
    }

    else
    {
      return 2364547087;
    }
  }

  return v4;
}

double Downsample__Create(uint64_t a1)
{
  v2 = heap_Alloc(a1, 56);
  if (v2)
  {
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    *(v2 + 48) = a1;
  }

  return result;
}

uint64_t Downsample__Resize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 32) == a2)
    {
      return 1;
    }

    LODWORD(v3) = *(result + 36);
    if (v3 >= a2)
    {
      *(result + 32) = a2;
      if ((v3 & 0x80000000) == 0)
      {
        v13 = *(result + 16);
        v14 = -1;
        do
        {
          *v13++ = (v14 + 2) % (*(result + 32) + 1);
          v3 = *(result + 36);
          ++v14;
        }

        while (v14 < v3);
      }

      if ((v3 & 0x40000000) == 0)
      {
        v15 = 0;
        v16 = *(result + 24);
        do
        {
          *(v16 + 4 * v15) = v15 % (*(result + 32) + 1);
          v8 = v15++ <= 2 * *(result + 36);
        }

        while (v8);
      }

      v12 = *(result + 32) + 1;
      goto LABEL_25;
    }

    *(result + 36) = a2;
    result = heap_Realloc(*(result + 48), *result, 2 * a2 + 2);
    if (result)
    {
      *v2 = result;
      result = heap_Realloc(*(v2 + 48), *(v2 + 8), (4 * *(v2 + 36) + 4));
      if (result)
      {
        *(v2 + 8) = result;
        result = heap_Realloc(*(v2 + 48), *(v2 + 16), (4 * *(v2 + 36) + 4));
        if (result)
        {
          *(v2 + 16) = result;
          result = heap_Realloc(*(v2 + 48), *(v2 + 24), (8 * *(v2 + 36) + 8));
          if (result)
          {
            *(v2 + 24) = result;
            LODWORD(v4) = *(v2 + 36);
            if ((v4 & 0x80000000) == 0)
            {
              v5 = *(v2 + 16);
              v6 = -1;
              do
              {
                *v5++ = (v6 + 2) % (*(v2 + 32) + 1);
                v4 = *(v2 + 36);
                ++v6;
              }

              while (v6 < v4);
            }

            if ((v4 & 0x40000000) == 0)
            {
              v7 = 0;
              do
              {
                *(result + 4 * v7) = v7 % (*(v2 + 32) + 1);
                LODWORD(v4) = *(v2 + 36);
                v8 = v7++ <= 2 * v4;
              }

              while (v8);
            }

            v9 = *(v2 + 32) + 1;
            if (v9 <= v4)
            {
              v10 = *v2;
              v11 = *(v2 + 8);
              do
              {
                *(v10 + 2 * v9) = 0;
                *(v11 + 4 * v9++) = 0;
                LODWORD(v4) = *(v2 + 36);
              }

              while (v9 <= v4);
            }

            *(v2 + 32) = v4;
            v12 = v4 + 1;
LABEL_25:
            *(v2 + 44) = v12 >> 1;
            return 1;
          }
        }
      }
    }

    *(v2 + 32) = 0;
  }

  return result;
}

uint64_t Downsample__Copy(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 2);
  *(a1 + 32) = v4;
  result = heap_Realloc(*(a1 + 48), *a1, 2 * (v4 + 1));
  if (result)
  {
    *a1 = result;
    result = heap_Realloc(*(a1 + 48), *(a1 + 8), 4 * (*(a1 + 32) + 1));
    if (result)
    {
      v6 = 0;
      *(a1 + 8) = result;
      v7 = *a1;
      v8 = *a2;
      v9 = a2[1];
      do
      {
        *(v7 + 2 * v6) = *(v8 + 2 * v6);
        *(result + 4 * v6) = *(v9 + 4 * v6);
        ++v6;
      }

      while (v6 <= *(a1 + 32));
      return 1;
    }
  }

  return result;
}

uint64_t *Downsample__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      v2 = result[6];
      Downsample__Empty(result);
      result = heap_Free(v2, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t *Downsample__Empty(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      result = heap_Free(result[6], *result);
    }

    *v1 = 0;
    v2 = v1[1];
    if (v2)
    {
      result = heap_Free(v1[6], v2);
    }

    v1[1] = 0;
    v3 = v1[2];
    if (v3)
    {
      result = heap_Free(v1[6], v3);
    }

    v4 = v1[3];
    v1[2] = 0;
    if (v4)
    {
      result = heap_Free(v1[6], v4);
    }

    v1[3] = 0;
    v1[4] = 0;
    v1[5] = 0;
  }

  return result;
}

uint64_t Downsample__SetCoeff(uint64_t a1, unsigned int a2, __int16 a3)
{
  if (*(a1 + 32) >= a2 || (result = Downsample__Resize(a1, a2), result))
  {
    *(*a1 + 2 * a2) = a3;
    return 1;
  }

  return result;
}

uint64_t Downsample__ResetStates(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 8);
  do
  {
    *(v2 + 4 * v1++) = 0;
  }

  while (v1 <= *(result + 32));
  *(result + 40) = 0;
  return result;
}

uint64_t *Downsample__Generate(uint64_t a1, int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  v4 = heap_Alloc(a1, 56);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 48) = a1;
  v14 = v4;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (Downsample__Resize(v4, 7u))
      {
        v6 = 0;
        v7 = *v5;
        do
        {
          *(v7 + v6 * 2) = CoeffCorrFast2[v6];
          ++v6;
        }

        while (v6 != 8);
        return v5;
      }

      goto LABEL_20;
    }

    if (Downsample__Resize(v4, 0x19u))
    {
      v10 = 0;
      v11 = *v5;
      do
      {
        *(v11 + v10 * 2) = CoeffStage1Fast[v10];
        ++v10;
      }

      while (v10 != 26);
      return v5;
    }

    goto LABEL_20;
  }

  if (a2 != 2)
  {
    if (Downsample__Resize(v4, 3u))
    {
      v12 = *v5;
      *v12 = 1223358211;
      *(v12 + 4) = 18666;
      return v5;
    }

    goto LABEL_20;
  }

  if (!Downsample__Resize(v4, 5u))
  {
LABEL_20:
    Downsample__Remove(&v14);
    return 0;
  }

  v8 = 0;
  v9 = *v5;
  do
  {
    *(v9 + v8 * 2) = CoeffStage2[v8];
    ++v8;
  }

  while (v8 != 5);
  return v5;
}

uint64_t Downsample__InterpolateBetweenTwoSamples(uint64_t a1, int a2)
{
  *(*(a1 + 8) + 4 * *(a1 + 40)) = a2;
  if (*(a1 + 44) < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    LODWORD(v4) = 0;
    v5 = *(a1 + 40) + 1;
    v6 = 4 * (v5 + *(a1 + 32));
    do
    {
      v7 = fxd_S32MultIntS32FractS16(*(*(a1 + 8) + 4 * *(*(a1 + 24) + 4 * (v5 + v3))) + *(*(a1 + 8) + 4 * *(*(a1 + 24) + v6)), *(*a1 + 2 * v3));
      v4 = fxd_S32SatAddS32S32(v4, v7);
      ++v3;
      v6 -= 4;
    }

    while (v3 < *(a1 + 44));
  }

  *(a1 + 40) = *(*(a1 + 16) + 4 * *(a1 + 40));
  return v4;
}

uint64_t Downsample__PrepareToDownsample(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 44);
  if (v3 >= 1)
  {
    v4 = a3 - 2 * v3 + 1;
    v5 = *(result + 8);
    v6 = *(result + 16);
    v7 = (2 * v3) | 1;
    do
    {
      if ((v4 & 0x80000000) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(*(a2 + 16) + 8 * v4);
      }

      v4 += 2;
      *(v5 + 4 * *(result + 40)) = v8;
      *(result + 40) = *(v6 + 4 * *(result + 40));
      --v7;
    }

    while (v7 > 2);
  }

  return result;
}

uint64_t Downsample__Vector(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v9 = a4 - a3;
      if (a4 >= a3)
      {
        if (*(a2 + 8) - 1 >= a4)
        {
          result = Vect__Create(*(a1 + 48), 1u);
          v30 = result;
          if (result)
          {
            v10 = result;
            if (Vect__Resize(result, (v9 + 1) >> 1))
            {
              Downsample__PrepareToDownsample(a1, a2, a3);
              v11 = *(a2 + 16);
              v12 = (v11 + 8 * a3);
              v13 = *(v10 + 16);
              v14 = *(a1 + 44);
              v15 = (v11 + 8 * (a3 + 2 * v14 - 1));
              v16 = *(v10 + 8) - v14;
              if (v16 >= 1)
              {
                v17 = v16 + 1;
                do
                {
                  v18 = *v12;
                  v12 += 2;
                  *v13 = v18;
                  LODWORD(v18) = *v15;
                  v15 += 4;
                  *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v18);
                  --v17;
                }

                while (v17 > 1);
                v14 = *(a1 + 44);
              }

              v19 = *(a2 + 8);
              if (2 * v14 + a4 <= v19)
              {
                if (v14 >= 1)
                {
                  v25 = v14 + 1;
                  do
                  {
                    v26 = *v12;
                    v12 += 2;
                    *v13 = v26;
                    LODWORD(v26) = *v15;
                    v15 += 4;
                    *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v26);
                    --v25;
                  }

                  while (v25 > 1);
                }
              }

              else
              {
                if ((v19 + ~a4) >= 1)
                {
                  v20 = v19 - a4;
                  do
                  {
                    v21 = *v12;
                    v12 += 2;
                    *v13 = v21;
                    LODWORD(v21) = *v15;
                    v15 += 4;
                    *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v21);
                    --v20;
                  }

                  while (v20 > 1);
                  v14 = *(a1 + 44);
                  v19 = *(a2 + 8);
                }

                v22 = v14 + a4 - v19;
                if (v22 >= 1)
                {
                  v23 = v22 + 1;
                  do
                  {
                    v24 = *v12;
                    v12 += 2;
                    *v13 = v24;
                    *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, 0);
                    --v23;
                  }

                  while (v23 > 1);
                }
              }

              result = v30;
              v27 = *(v30 + 8);
              if (v27 >= 1)
              {
                v28 = *(v30 + 16);
                v29 = v27 + 1;
                do
                {
                  *v28 /= 2;
                  v28 += 2;
                  --v29;
                }

                while (v29 > 1);
              }
            }

            else
            {
              Vect__Remove(&v30);
              return v30;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t Downsample__VectorNC(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a1 && a2 && a3 && a5 >= a4 && *(a2 + 8) - 1 >= a5)
  {
    v10 = a5 - a4 + 1;
    if (*(*a3 + 8) < v10 >> 1)
    {
      Vect__Resize(*a3, v10 >> 1);
    }

    Downsample__PrepareToDownsample(a1, a2, a4);
    v11 = *(a2 + 16);
    v12 = (v11 + 8 * a4);
    v13 = *(*a3 + 16);
    v14 = *(a1 + 44);
    v15 = (v11 + 8 * (a4 + 2 * v14 - 1));
    v16 = *(*a3 + 8) - v14;
    if (v16 >= 1)
    {
      v17 = v16 + 1;
      while (1)
      {
        *v13 = *v12;
        v18 = *v13 + Downsample__InterpolateBetweenTwoSamples(a1, *v15);
        *v13 = v18;
        v19 = 65534;
        if (v18 > 65534)
        {
          goto LABEL_13;
        }

        if (v18 <= -65537)
        {
          break;
        }

LABEL_14:
        ++v13;
        v12 += 2;
        v15 += 4;
        if (--v17 <= 1)
        {
          v14 = *(a1 + 44);
          goto LABEL_16;
        }
      }

      v19 = -65536;
LABEL_13:
      *v13 = v19;
      goto LABEL_14;
    }

LABEL_16:
    v20 = *(a2 + 8);
    if (2 * v14 + a5 <= v20)
    {
      if (v14 >= 1)
      {
        v26 = v14 + 1;
        do
        {
          v27 = *v12;
          v12 += 2;
          *v13 = v27;
          LODWORD(v27) = *v15;
          v15 += 4;
          *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v27);
          --v26;
        }

        while (v26 > 1);
      }
    }

    else
    {
      if ((v20 + ~a5) >= 1)
      {
        v21 = v20 - a5;
        do
        {
          v22 = *v12;
          v12 += 2;
          *v13 = v22;
          LODWORD(v22) = *v15;
          v15 += 4;
          *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, v22);
          --v21;
        }

        while (v21 > 1);
        v14 = *(a1 + 44);
        v20 = *(a2 + 8);
      }

      v23 = v14 + a5 - v20;
      if (v23 >= 1)
      {
        v24 = v23 + 1;
        do
        {
          v25 = *v12;
          v12 += 2;
          *v13 = v25;
          *v13++ += Downsample__InterpolateBetweenTwoSamples(a1, 0);
          --v24;
        }

        while (v24 > 1);
      }
    }

    v28 = *(*a3 + 8);
    if (v28 >= 1)
    {
      v29 = *(*a3 + 16);
      v30 = v28 + 1;
      do
      {
        *v29 /= 2;
        v29 += 2;
        --v30;
      }

      while (v30 > 1);
    }
  }

  return 1;
}

uint64_t Downsample__CascadeVector(unsigned int a1, uint64_t a2, signed int a3, int a4)
{
  v22 = 0;
  v8 = 0;
  if (a1)
  {
    v9 = a1;
    while (1)
    {
      v10 = Downsample__Generate(*(a2 + 24), v9);
      v22 = v10;
      if (!v10)
      {
        return 0;
      }

      v8 += *(v10 + 11);
      Downsample__Remove(&v22);
      if (!--v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v8 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v8;
    }

    v12 = *(a2 + 8);
    if (v8 + a4 >= v12)
    {
      v8 = v12 + ~a4;
    }

    Slice = Vect__GetSlice(a2, a3 - v11, v8 + a4, 1);
    v23 = Slice;
    if (a1)
    {
      v14 = 1;
      while (1)
      {
        v15 = Downsample__Generate(*(a2 + 24), v14);
        v22 = v15;
        if (!v15)
        {
          break;
        }

        v16 = 0;
        v17 = v15[1];
        do
        {
          *(v17 + 4 * v16++) = 0;
        }

        while (v16 <= *(v15 + 8));
        *(v15 + 10) = 0;
        v18 = Downsample__Vector(v15, v23, 0, *(v23 + 8) - 1);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        Downsample__Remove(&v22);
        Vect__Remove(&v23);
        v23 = v19;
        v11 *= 2;
        v8 *= 2;
        if (a1 < ++v14)
        {
          goto LABEL_21;
        }
      }

      v20 = 0;
    }

    else
    {
      v19 = Slice;
LABEL_21:
      v20 = Vect__GetSlice(v19, v11, *(v19 + 8) + ~v8, 1);
    }

    Vect__Remove(&v23);
  }

  return v20;
}

uint64_t Vect__Clear(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 8) = 0;
    if (*(result + 4))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 16);
        result = ESmpl__Zero();
        *(v3 + 8 * v2++) = result;
      }

      while (v2 < *(v1 + 4));
    }
  }

  return result;
}

uint64_t Vect__Reset(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 4))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 16);
        result = ESmpl__Zero();
        *(v3 + 8 * v2++) = result;
      }

      while (v2 < *(v1 + 4));
    }
  }

  return result;
}

uint64_t Vect__Create(uint64_t a1, unsigned int a2)
{
  v4 = heap_Alloc(a1, 32);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = 0;
    *(v4 + 4) = a2;
    *v4 = 22050;
    *(v4 + 24) = a1;
    v6 = heap_Alloc(a1, 8 * a2);
    *(v5 + 16) = v6;
    if (v6)
    {
      *(v5 + 8) = 0;
      if (*(v5 + 4))
      {
        v7 = 0;
        do
        {
          v8 = *(v5 + 16);
          *(v8 + 8 * v7++) = ESmpl__Zero();
        }

        while (v7 < *(v5 + 4));
      }
    }

    else
    {
      heap_Free(*(v5 + 24), v5);
      return 0;
    }
  }

  return v5;
}

uint64_t *Vect__Remove(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3)
      {
        heap_Free(*(v2 + 24), v3);
        v2 = *v1;
      }

      *(v2 + 16) = 0;
      result = heap_Free(v4, *v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t Vect__Resize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 4) >= a2)
    {
      return 1;
    }

    else
    {
      *(result + 4) = a2;
      v3 = heap_Realloc(*(result + 24), *(result + 16), 8 * a2);
      if (v3)
      {
        v4 = v3;
        result = 1;
      }

      else
      {
        *(v2 + 4) = 0;
        *(v2 + 8) = 0;
        v5 = *(v2 + 16);
        if (v5)
        {
          heap_Free(*(v2 + 24), v5);
        }

        v4 = 0;
        result = 0;
      }

      *(v2 + 16) = v4;
    }
  }

  return result;
}

uint64_t Vect__Dup(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = Vect__Create(*(a1 + 24), *(a1 + 4));
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 4);
    if (v4 == *(a1 + 4) && (*(v2 + 8) = *(a1 + 8), *v2 = *a1, *(a1 + 16)))
    {
      if (v4)
      {
        v5 = 0;
        do
        {
          *(*(v2 + 16) + 8 * v5) = *(*(a1 + 16) + 8 * v5);
          ++v5;
        }

        while (v5 < *(v2 + 4));
      }
    }

    else
    {
      heap_Free(*(a1 + 24), v2);
      return 0;
    }
  }

  return v3;
}

uint64_t Vect__Concat(uint64_t a1, uint64_t a2)
{
  result = Vect__Resize(a1, *(a2 + 8) + *(a1 + 8));
  if (result)
  {
    result = cstdlib_memmove((*(a1 + 16) + 8 * *(a1 + 8)), *(a2 + 16), 8 * *(a2 + 8));
    *(a1 + 8) += *(a2 + 8);
  }

  return result;
}

uint64_t Vect__GetSlice(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (v7 <= a2 || v7 <= a3)
  {
    return 0;
  }

  v12 = a3 - a2;
  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = -a4;
  }

  v14 = v12 / v13;
  v15 = v12 / v13 + 1;
  v9 = Vect__Create(*(a1 + 24), v15);
  *(v9 + 8) = v15;
  v16 = *(v9 + 16);
  *v9 = *a1;
  if (a4 == 1)
  {
    cstdlib_memmove(v16, (*(a1 + 16) + 8 * a2), 8 * v15);
  }

  else if (cstdlib_abs(a4) < 2)
  {
    if (a4 == -1 && v15)
    {
      v19 = (*(a1 + 16) + 8 * a3);
      v20 = v14 + 1;
      do
      {
        v21 = *v19--;
        *v16++ = v21;
        --v20;
      }

      while (v20);
    }
  }

  else if (v15)
  {
    v17 = (*(a1 + 16) + 8 * a2);
    v18 = v14 + 1;
    do
    {
      *v16++ = *v17;
      v17 += a4;
      --v18;
    }

    while (v18);
  }

  return v9;
}

_DWORD *Vect__FillSlice(_DWORD *result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a5)
  {
    v7 = *(a2 + 8);
    if (v7 > a3 && v7 > a4)
    {
      v9 = a5;
      v10 = a5 >= 1 ? (a4 - a3) / a5 : (a3 - a4) / -a5;
      v11 = v10 + 1;
      if (v10 + 1 <= v7)
      {
        v12 = result;
        v13 = *(a2 + 16);
        result[2] = v11;
        result = cstdlib_abs(a5);
        if (result < 2)
        {
          if (v9 == -1)
          {
            if (v10 != -1)
            {
              v18 = (*(v12 + 2) + 8 * v10);
              do
              {
                v19 = *v13++;
                *v18-- = v19;
                --v11;
              }

              while (v11);
            }
          }

          else if (v9 == 1)
          {
            v16 = *(v12 + 2);
            v17 = (*(a2 + 16) + 8 * a3);

            return cstdlib_memmove(v16, v17, 8 * (v10 + 1));
          }
        }

        else if (v10 != -1)
        {
          v14 = *(v12 + 2);
          do
          {
            v15 = *v13++;
            *v14 = v15;
            v14 += v9;
            --v11;
          }

          while (v11);
        }
      }
    }
  }

  return result;
}

uint64_t Vect__Copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 4) < v4)
  {
    result = Vect__Resize(a1, v4);
    if (!result)
    {
      return result;
    }

    v4 = *(a2 + 8);
  }

  *(a1 + 8) = v4;
  *a1 = *a2;
  cstdlib_memmove(*(a1 + 16), *(a2 + 16), 8 * *(a2 + 8));
  return 1;
}

uint64_t Vect__Reverse(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 2)
  {
    v2 = v1 >> 1;
    v3 = *(result + 16);
    v4 = &v3[v1];
    do
    {
      v5 = *v3;
      *v3++ = *v4;
      *v4-- = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Vect__OLA(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8) - 1;
  v5 = v4 >> 1;
  v6 = (v4 >> 1) + 1;
  v7 = *(result + 8);
  v8 = v7;
  if ((v6 + v7) > *(result + 4))
  {
    result = Vect__Resize(result, v6 + v7);
    if (!result)
    {
      return result;
    }

    v8 = *(v3 + 8);
  }

  if (v8)
  {
    v9 = *(v3 + 16) + 8 * (v7 - (v4 >> 1));
    v10 = *(a2 + 16);
    if (v4 >= 4)
    {
      v11 = v4 >> 2;
      do
      {
        v12 = *v10;
        v10 += 2;
        *v9 += v12;
        v9 += 8;
        --v11;
      }

      while (v11);
    }

    while (v5 > v4 >> 2)
    {
      *v9 += *v10;
      *(v9 + 4) = *(v10 + 4);
      v9 += 8;
      v10 += 2;
      --v5;
    }

    v13 = (v4 >> 1) + 1;
    do
    {
      v14 = *v10;
      v10 += 2;
      *v9 = v14;
      v9 += 8;
      --v13;
    }

    while (v13);
    *(v3 + 8) += v6;
  }

  else
  {
    *(v3 + 8) = *(a2 + 8);

    return Vect__Copy(v3, a2);
  }

  return result;
}

uint64_t Vect__OLAEnd(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 >> 1;
  v4 = *(result + 16) + 8 * (*(result + 8) - v2);
  v5 = *(a2 + 16);
  if (v2 >= 2)
  {
    v6 = v2 >> 1;
    do
    {
      v7 = *v5;
      v5 += 2;
      *v4 += v7;
      v4 += 8;
      --v6;
    }

    while (v6);
  }

  if (v2)
  {
    do
    {
      *v4 += *v5;
      *(v4 + 4) = *(v5 + 4);
      v4 += 8;
      v5 += 2;
      --v2;
    }

    while (v2 > v3);
  }

  return result;
}

uint64_t Vect__PutElement(uint64_t result, unsigned int a2, int a3)
{
  if (*(result + 4) > a2)
  {
    *(*(result + 16) + 8 * a2) = a3;
  }

  return result;
}

uint64_t Vect__Insert(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v8 = *(a2 + 8);
    result = Vect__Resize(a3, *(a1 + 8) + v8);
    if (result)
    {
      cstdlib_memcpy(*(a3 + 16), *(a1 + 16), 8 * a4);
      cstdlib_memcpy((*(a3 + 16) + 8 * a4), *(a2 + 16), 8 * v8);
      result = cstdlib_memcpy((*(a3 + 16) + 8 * a4 + 8 * v8), (*(a1 + 16) + 8 * a4), 8 * (*(a1 + 8) - a4));
      *(a3 + 8) = *(a1 + 8) + v8;
    }
  }

  else
  {

    return Vect__Copy(a3, a1);
  }

  return result;
}

const void **Vect__Cut(const void **result, uint64_t a2, int a3, int a4)
{
  v5 = *(result + 2);
  if (v5 <= a3)
  {
    *(a2 + 8) = 0;
  }

  else
  {
    v7 = result;
    if (a3 <= 0)
    {

      return Vect__Copy(a2, result);
    }

    else
    {
      result = Vect__Resize(a2, v5 - a3);
      if (result)
      {
        v9 = a4 - (a3 >> 1);
        v10 = *(v7 + 2);
        if ((v9 + a3) <= v10)
        {
          if ((v9 & 0x80000000) == 0)
          {
            cstdlib_memcpy(*(a2 + 16), v7[2], 8 * (v9 + 1));
            result = cstdlib_memcpy((*(a2 + 16) + 8 * v9 + 8), v7[2] + 8 * v9 + 8 * a3 - 8, 8 * (*(v7 + 2) - (v9 + a3) + 1));
            *(a2 + 8) = *(v7 + 2) - a3;
            return result;
          }

          v11 = v10 - 1;
          v14 = a3 - 1;
          v12 = a2;
          v13 = v7;
        }

        else
        {
          v11 = v10 + ~a3;
          v12 = a2;
          v13 = v7;
          v14 = 0;
        }

        return Vect__FillSlice(v12, v13, v14, v11, 1);
      }
    }
  }

  return result;
}

uint64_t WSOLA__SetWindowOverlap(unsigned __int16 *a1, int a2)
{
  a1[1] = a2;
  v3 = 274877907 * *a1 * a2;
  v4 = (v3 >> 63) + (SHIDWORD(v3) >> 6);
  a1[2] = v4;
  a1[8] = 2 * v4;
  a1[9] = v4;
  v5 = a1[6];
  v6 = 2 * v5 - v4;
  if (v5 < v4)
  {
    v6 = a1[6];
  }

  a1[16] = v6;
  v7 = 2 * (v5 + (2 * v4)) - v4 + v6;
  *(a1 + 7) = v7;
  v8 = *(a1 + 7);
  if (!v8 || v7 <= *(v8 + 8) || (v9 = 2164269066, Vect__Resize(v8, v7) == 1) && Vect__Resize(*(a1 + 8), *(a1 + 7)) == 1 && Vect__Resize(*(a1 + 9), *(a1 + 7) >> 1) == 1 && Vect__Resize(*(a1 + 10), *(a1 + 7) >> 1) == 1 && Vect__Resize(*(a1 + 11), *(a1 + 7) >> 2) == 1 && Vect__Resize(*(a1 + 12), *(a1 + 7) >> 2) == 1)
  {
    v10 = *(a1 + 5);
    if (v10)
    {
      v11 = a1[2];
      v12 = heap_Realloc(*(a1 + 41), v10, 2 * (v11 & 0x7FFFFFFF));
      if (!v12)
      {
        return 2164269066;
      }

      *(a1 + 5) = v12;
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 411774 * (v11 & 0x7FFFFFFF);
        do
        {
          v16 = (0x10000 - fxd_S32CosS32(v14 / a1[2])) >> 1;
          if (v16 >= 0xFFFF)
          {
            LOWORD(v16) = -1;
          }

          *(*(a1 + 5) + v13) = v16;
          v14 += 205887;
          v13 += 2;
        }

        while (v15 != v14);
      }
    }

    return 0;
  }

  return v9;
}

_WORD *WSOLA__SetTimeScaleFactor(_WORD *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result[9];
    v3 = v2 * a2 / 100;
    result[10] = v3;
    result[7] = v3 / v2;
    result[17] = result[14] - v3;
  }

  return result;
}

uint64_t WSOLA__Create(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 8);
  v5 = heap_Calloc(v4, 336, 1);
  v6 = v5;
  v26 = v5;
  if (v5)
  {
    *(v5 + 320) = a1;
    *(v5 + 328) = v4;
    *v5 = a2;
    *(v5 + 312) = 0;
    if ((WSOLA__SetWindowOverlap(v5, 10) & 0x80000000) == 0)
    {
      *(v6 + 2) = 4;
      v7 = 33555 * (*v6 >> 1);
      v8 = v7 >> 22;
      v6[6] = *v6 / 0xFAu;
      v9 = v6[9];
      if ((v7 >> 22) >= v9)
      {
        LOWORD(v8) = 2 * (v7 >> 22) - v9;
      }

      v6[16] = v8;
      v10 = 2 * (v6[8] + (v7 >> 22)) - v6[2] + v8;
      *(v6 + 7) = v10;
      v11 = *(v6 + 7);
      if (v11 && v10 > *(v11 + 8))
      {
        if (Vect__Resize(v11, v10) != 1 || Vect__Resize(*(v6 + 8), *(v6 + 7)) != 1 || Vect__Resize(*(v6 + 9), *(v6 + 7) >> 1) != 1 || Vect__Resize(*(v6 + 10), *(v6 + 7) >> 1) != 1 || Vect__Resize(*(v6 + 11), *(v6 + 7) >> 2) != 1 || Vect__Resize(*(v6 + 12), *(v6 + 7) >> 2) != 1)
        {
          goto LABEL_24;
        }

        v10 = *(v6 + 7);
      }

      v12 = Vect__Create(v4, v10);
      *(v6 + 7) = v12;
      if (v12)
      {
        v13 = Vect__Create(v4, *(v6 + 7));
        *(v6 + 8) = v13;
        if (v13)
        {
          v14 = Vect__Create(v4, *(v6 + 7) >> 1);
          *(v6 + 9) = v14;
          if (v14)
          {
            v15 = Vect__Create(v4, *(v6 + 7) >> 1);
            *(v6 + 10) = v15;
            if (v15)
            {
              v16 = Vect__Create(v4, *(v6 + 7) >> 2);
              *(v6 + 11) = v16;
              if (v16)
              {
                v17 = Vect__Create(v4, *(v6 + 7) >> 2);
                *(v6 + 12) = v17;
                if (v17)
                {
                  Vect__Clear(*(v6 + 7));
                  Vect__Clear(*(v6 + 8));
                  Vect__Clear(*(v6 + 9));
                  Vect__Clear(*(v6 + 10));
                  Vect__Clear(*(v6 + 11));
                  Vect__Clear(*(v6 + 12));
                  v18 = *(v6 + 7);
                  v19 = *(v6 + 8);
                  *(*(v6 + 7) + 8) = v18;
                  *(v19 + 8) = v18;
                  v20 = *(v6 + 10);
                  *(*(v6 + 9) + 8) = v18 >> 1;
                  *(v20 + 8) = v18 >> 1;
                  v18 >>= 2;
                  v21 = *(v6 + 12);
                  *(*(v6 + 11) + 8) = v18;
                  *(v21 + 8) = v18;
                  v22 = Downsample__Generate(v4, 0);
                  *(v6 + 15) = v22;
                  if (v22)
                  {
                    v23 = heap_Calloc(v4, 128, 4);
                    *(v6 + 18) = v23;
                    if (v23)
                    {
                      if ((WSOLA__CreateOLAWindow(v6) & 0x80000000) == 0)
                      {
                        v24 = v6[9];
                        v6[10] = v24;
                        v6[7] = 1;
                        v6[17] = v6[14] - v24;
                        WSOLA__Initialise(v6);
                        return v6;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_24:
    WSOLA__Remove(&v26);
    return v26;
  }

  return v6;
}

void *WSOLA__Remove(uint64_t *a1)
{
  v2 = *(*a1 + 328);
  Vect__Remove((*a1 + 56));
  Vect__Remove((*a1 + 64));
  Vect__Remove((*a1 + 72));
  Vect__Remove((*a1 + 80));
  Vect__Remove((*a1 + 88));
  Vect__Remove((*a1 + 96));
  v3 = *a1;
  if (*(*a1 + 40))
  {
    heap_Free(v2, *(*a1 + 40));
    v3 = *a1;
  }

  if (*(v3 + 120))
  {
    Downsample__Remove((v3 + 120));
    v3 = *a1;
  }

  if (*(v3 + 144))
  {
    heap_Free(v2, *(v3 + 144));
    v3 = *a1;
  }

  result = heap_Free(v2, v3);
  *a1 = 0;
  return result;
}

uint64_t WSOLA__CreateOLAWindow(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = heap_Alloc(*(a1 + 328), 4 * (v2 & 0x7FFFFFFF));
  *(a1 + 40) = v3;
  if (!v3)
  {
    return 2164269066;
  }

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 4 * (v2 & 0x7FFFFFFF);
    do
    {
      v7 = (0x10000 - fxd_S32CosS32(v5 / *(a1 + 4))) >> 1;
      if (v7 >= 0xFFFF)
      {
        LOWORD(v7) = -1;
      }

      *(*(a1 + 40) + v4) = v7;
      v5 += 205887;
      v4 += 2;
    }

    while (v6 != v4);
  }

  return 0;
}

double WSOLA__Initialise(uint64_t a1)
{
  v1 = a1;
  Vect__Reset(*(a1 + 56));
  Vect__Reset(*(v1 + 64));
  Vect__Reset(*(v1 + 72));
  Vect__Reset(*(v1 + 80));
  Vect__Reset(*(v1 + 88));
  Vect__Reset(*(v1 + 96));
  *(v1 + 304) = -1;
  *(v1 + 312) = 1;
  *(v1 + 112) = 0;
  *(v1 + 104) = 0;
  *(v1 + 281) = 0;
  cstdlib_memset(*(v1 + 144), 0, 0x200uLL);
  result = 0.0;
  *(v1 + 152) = 0u;
  v1 += 152;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 - 130) = 0;
  *(v1 - 100) = 0;
  return result;
}

uint64_t WSOLA__GetBestPositionRelToWindowOffset(__int16 *a1)
{
  v1 = a1[6];
  if (v1 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v20 = a1[a1[25] + 11];
    v8 = a1[9];
    v9 = a1 + 28;
    do
    {
      v21 = 0;
      v10 = a1[8];
      if (v10 < 1)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v11 = (*(*&v9[4 * a1[25]] + 16) + 8 * v20 + 8 * v8);
        v12 = (*(*&v9[4 * a1[24]] + 16) + 8 * (v3 - v1 + a1[16]));
        do
        {
          v14 = *v12;
          v12 += 2;
          v13 = v14;
          v15 = *v11;
          v11 += 2;
          fxd_S64SatAddS32S32(&v21 + 1, &v21, v15 * v13);
          v16 = v10--;
        }

        while (v16 > 1);
        v17 = v21;
        v18 = HIDWORD(v21);
      }

      if (v18 > v7 || v18 == v7 && v17 > v6)
      {
        v7 = v18;
        v6 = v17;
        v5 = v4;
      }

      v3 = ++v4;
      v1 = a1[6];
    }

    while (v4 < 2 * v1);
  }

  return (v5 - v1);
}

uint64_t WSOLA__GetOutputLength(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 152 + a2) == 2;
  *a3 = v3;
  if (v3)
  {
    *(a1 + 152 + a2) = 0;
  }

  return *(*(a1 + 144) + 4 * a2);
}

uint64_t WSOLA__TimeScaleInputBuffer(uint64_t a1, char a2, __int16 *a3, int a4, _WORD *a5, int *a6, int a7, char *a8, _BYTE *a9)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = *a8;
  v14 = *(a1 + 312);
  if (v14)
  {
    v11 = &a3[*(a1 + 108)];
    v9 = &a5[*(a1 + 112)];
  }

  v15 = a1 + 152;
  v187 = a1 + 56;
  v16 = (a1 + 308);
  v182 = (a1 + 72);
  v181 = (a1 + 88);
  v17 = a1 + 22;
  v169 = (a7 + 100);
  v170 = v13 | 0x80;
  v176 = a1 + 152;
  v174 = *a8;
  v173 = (a1 + 308);
  v180 = a1 + 22;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_4:
          while (v14 <= 2)
          {
            switch(v14)
            {
              case 0:
                WSOLA__Initialise(a1);
                *(a1 + 312) = 1;
LABEL_14:
                if (*(a1 + 128) == a7)
                {
                  v19 = *(a1 + 28);
LABEL_35:
                  v33 = *(a1 + 52);
                  *(a1 + 52) = 1 - v33;
                  *(a1 + 48) = 1 - v33;
                  *(a1 + 50) = v33;
                  *(a1 + 304) = 0;
                  v34 = *(*(v187 + 8 * (1 - v33)) + 16);
                  *(a1 + 136) = v34;
                  cstdlib_memmove(v34, (*(*(v187 + 8 * v33) + 16) + 8 * (v19 - *(a1 + 34))), 8 * *(a1 + 34));
                  *(a1 + 136) += 8 * *(a1 + 34);
                  *(a1 + 312) = 2;
LABEL_36:
                  v35 = *v16;
                  if (*v16 == -1)
                  {
                    v35 = *(a1 + 34);
                  }

                  v36 = *(a1 + 108);
                  v37 = *(a1 + 28);
                  v38 = v37 + v36 - v35;
                  if (v38 >= v10)
                  {
                    v39 = v10;
                  }

                  else
                  {
                    v39 = v37 + v36 - v35;
                  }

                  v40 = v39 - v36 + v35;
                  *(a1 + 308) = v40;
                  if (v39 - v36 >= 1)
                  {
                    v41 = *(a1 + 136);
                    v42 = v39 - v36 + 1;
                    do
                    {
                      *(v41 + 4) = v13;
                      v43 = *v11++;
                      *v41 = v43;
                      v41 += 8;
                      --v42;
                    }

                    while (v42 > 1);
                    *(a1 + 136) = v41;
                  }

                  *(a1 + 108) = v39;
                  if (v38 >= v10)
                  {
                    if ((a2 & 1) == 0)
                    {
                      *(a1 + 108) = 0;
                      *a9 = 0;
                      *(a1 + 280) = v13;
                      return 0;
                    }

                    if (v40 < v37)
                    {
                      v44 = *(a1 + 136);
                      v45 = v36 + v37 - v35 - v39;
                      do
                      {
                        *(v44 + 4) = v170;
                        *v44 = 0;
                        v44 += 8;
                        --v45;
                      }

                      while (v45);
                      *(a1 + 136) = v44;
                    }
                  }

                  *(a1 + 280) = v13;
                  *v16 = 0x3FFFFFFFFLL;
                  goto LABEL_52;
                }

                *(a1 + 128) = a7;
                if (a7)
                {
                  v19 = *(a1 + 28);
                  if (v169 < 1)
                  {
                    goto LABEL_35;
                  }

                  v20 = *(a1 + 18);
                  v21 = v20 * v169 / 100;
                  *(a1 + 20) = v21;
                  *(a1 + 14) = v21 / v20;
                  v22 = v19 - v21;
                }

                else
                {
                  v32 = *(a1 + 18);
                  *(a1 + 20) = v32;
                  *(a1 + 14) = 1;
                  v19 = *(a1 + 28);
                  v22 = v19 - v32;
                }

                *(a1 + 34) = v22;
                goto LABEL_35;
              case 1:
                goto LABEL_14;
              case 2:
                goto LABEL_36;
            }
          }

          if (v14 != 3)
          {
            break;
          }

LABEL_52:
          if (*(a1 + 128))
          {
            v178 = *(a1 + 32);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 56), v182, 0, *(*(a1 + 56) + 8) - 1);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 64), (a1 + 80), 0, *(*(a1 + 64) + 8) - 1);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 72), v181, 0, *(*(a1 + 72) + 8) - 1);
            Downsample__VectorNC(*(a1 + 120), *(a1 + 80), (a1 + 96), 0, *(*(a1 + 80) + 8) - 1);
            v46 = *(a1 + 32);
            v47 = *(a1 + 12);
            v48 = __OFSUB__(v46, v47);
            v49 = v46 - v47;
            if (v49 < 0 != v48)
            {
              v49 += 3;
            }

            v50 = v49 >> 2;
            v51 = (v49 >> 2) & ~(v49 >> 31);
            v52 = v51 + ((v47 + ((v47 & 0x8000) >> 15)) >> 1);
            v53 = *(*(a1 + 88) + 8);
            v54 = v53;
            v55 = v53 - 1;
            if (v54 <= v52)
            {
              v56 = v55;
            }

            else
            {
              v56 = v52;
            }

            v57 = *(a1 + 50);
            v58 = *(a1 + 18);
            v179 = v9;
            if (v51 >= v56)
            {
              v75 = *(a1 + 18);
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = *(v17 + 2 * v57);
              v48 = __OFADD__(v61, v58);
              v62 = v61 + v58;
              if (v62 < 0 != v48)
              {
                v62 += 3;
              }

              v184 = v62 >> 2;
              v63 = v51;
              v64 = v56;
              do
              {
                v65 = 0;
                v66 = 0;
                *v188 = 0;
                v67 = *(a1 + 16);
                if (v67 >= 4)
                {
                  v68 = v67 >> 2;
                  v69 = (*(v181[*(a1 + 50)] + 16) + 8 * v184);
                  v70 = (*(v181[*(a1 + 48)] + 16) + 8 * v63);
                  do
                  {
                    v72 = *v70;
                    v70 += 2;
                    v71 = v72;
                    v73 = *v69;
                    v69 += 2;
                    fxd_S64SatAddS32S32(&v188[1], v188, v73 * v71);
                    v74 = v68--;
                  }

                  while (v74 > 1);
                  v65 = v188[0];
                  v66 = v188[1];
                }

                if (v66 > v60 || v66 == v60 && v65 > v59)
                {
                  v60 = v66;
                  v59 = v65;
                  LOWORD(v50) = v63;
                }

                ++v63;
              }

              while (v63 != v64);
              LOWORD(v57) = *(a1 + 50);
              v75 = *(a1 + 18);
              v17 = v180;
            }

            v77 = 2 * v50;
            v78 = (2 * v50 - 3) & ~((2 * v50 - 3) >> 31);
            v79 = v77 + 3;
            v80 = *(*v182 + 8);
            v81 = v80;
            v82 = v80 - 1;
            if (v81 <= v79)
            {
              v79 = v82;
            }

            if (v78 < v79)
            {
              v83 = 0;
              v84 = 0;
              v85 = *(v17 + 2 * v57);
              v185 = (v85 + v75 + ((v85 + v75) >> 31)) >> 1;
              v86 = v78;
              v87 = v79;
              do
              {
                v88 = 0;
                v89 = 0;
                *v188 = 0;
                v90 = *(a1 + 16);
                if (v90 >= 2)
                {
                  v91 = v90 >> 1;
                  v92 = (*(v182[*(a1 + 50)] + 16) + 8 * v185);
                  v93 = (*(v182[*(a1 + 48)] + 16) + 8 * v86);
                  do
                  {
                    v95 = *v93;
                    v93 += 2;
                    v94 = v95;
                    v96 = *v92;
                    v92 += 2;
                    fxd_S64SatAddS32S32(&v188[1], v188, v96 * v94);
                    v97 = v91--;
                  }

                  while (v97 > 1);
                  v88 = v188[0];
                  v89 = v188[1];
                }

                if (v89 > v84 || v89 == v84 && v88 > v83)
                {
                  v84 = v89;
                  v83 = v88;
                  LOWORD(v78) = v86;
                }

                ++v86;
              }

              while (v86 != v87);
              LOWORD(v57) = *(a1 + 50);
              v75 = *(a1 + 18);
            }

            v98 = (2 * v78 - 3) & ~((2 * v78 - 3) >> 31);
            v99 = 2 * v78 + 3;
            v100 = *(*v187 + 8);
            v101 = v100;
            v102 = v100 - 1;
            if (v101 <= v99)
            {
              v99 = v102;
            }

            if (v98 < v99)
            {
              v103 = 0;
              v104 = 0;
              v183 = v75;
              v186 = *(v180 + 2 * v57);
              v105 = v98;
              v106 = v99;
              do
              {
                *v188 = 0;
                v107 = *(a1 + 16);
                if (v107 < 1)
                {
                  v114 = 0;
                  v115 = 0;
                }

                else
                {
                  v108 = (*(*(v187 + 8 * *(a1 + 50)) + 16) + 8 * v186 + 8 * v183);
                  v109 = (*(*(v187 + 8 * *(a1 + 48)) + 16) + 8 * v105);
                  do
                  {
                    v111 = *v109;
                    v109 += 2;
                    v110 = v111;
                    v112 = *v108;
                    v108 += 2;
                    fxd_S64SatAddS32S32(&v188[1], v188, v112 * v110);
                    v113 = v107--;
                  }

                  while (v113 > 1);
                  v114 = v188[0];
                  v115 = v188[1];
                }

                if (v115 > v104 || v115 == v104 && v114 > v103)
                {
                  v104 = v115;
                  v103 = v114;
                  LOWORD(v98) = v105;
                }

                ++v105;
              }

              while (v105 != v106);
            }

            v76 = v98 + v178 - *(a1 + 32);
            v15 = v176;
            v9 = v179;
            v17 = v180;
            v13 = v174;
            v10 = a4;
            v16 = v173;
          }

          else
          {
            v76 = *(v17 + 2 * *(a1 + 50));
          }

          *(v17 + 2 * *(a1 + 48)) = v76;
          v18 = *(*(v187 + 8 * *(a1 + 50)) + 16) + 8 * *(v17 + 2 * *(a1 + 50)) + 8 * *(a1 + 18);
          *(a1 + 288) = v18;
          *(a1 + 296) = *(*(v187 + 8 * *(a1 + 48)) + 16) + 8 * *(v17 + 2 * *(a1 + 48));
          if (*(a1 + 128))
          {
            v14 = 5;
            *(a1 + 312) = 5;
          }

          else
          {
LABEL_105:
            v116 = *(v18 + 4);
            if (*(a1 + 304) == -1)
            {
              *(a1 + 304) = 0;
            }

            v117 = v116 & 0x7F;
            v118 = *(a1 + 281);
            if (v118 != (v116 & 0x7F))
            {
              if (v117 == 127)
              {
                v119 = 0;
              }

              else
              {
                v119 = v116 & 0x7F;
              }

              v120 = v119 + 1;
              v121 = v119 + 2;
              if (v120 == v118 || v121 == v118)
              {
                goto LABEL_118;
              }

              v123 = v117 - 126;
              if (v117 < 0x7E)
              {
                v123 = v117 + 1;
              }

              if (v123 + 1 == v118)
              {
LABEL_118:
                *(v18 + 4) = v118 | v116 & 0x80;
                v117 = v118;
              }

              else
              {
                if (!*(v15 + v117))
                {
                  *(*(a1 + 144) + 4 * v117) = 0;
                }

                do
                {
                  *(v15 + v118) = 2;
                  v124 = v118 - 127 * ((((v118 - ((517 * v118) >> 16)) >> 1) + ((517 * v118) >> 16)) >> 6);
                  LODWORD(v118) = v124 + 1;
                }

                while (v117 != (v124 + 1));
                *(a1 + 281) = v117;
              }

              *(v15 + v117) = 1;
              v18 = *(a1 + 288);
              v116 = *(v18 + 4);
            }

            *(a1 + 312) = 1;
            if (v116 < 0)
            {
              *a9 = 2;
              *a6 = *(a1 + 112);
              v164 = *(a1 + 281);
              if (v164 != *(a1 + 280))
              {
                do
                {
                  *(v15 + v164) = 2;
                  v164 = v164 - 127 * ((((v164 - ((517 * v164) >> 16)) >> 1) + ((517 * v164) >> 16)) >> 6) + 1;
                  v165 = *(a1 + 280);
                }

                while (v165 != v164);
LABEL_189:
                v164 = v165;
                goto LABEL_190;
              }

              goto LABEL_190;
            }

            v125 = *(a1 + 281);
            if (*(a1 + 281))
            {
              v126 = *a6;
              v127 = *(a1 + 112);
              v128 = *(a1 + 304);
              if (*a6 >= v127 + *(a1 + 4) - v128)
              {
                v126 = v127 + *(a1 + 4) - v128;
              }

              v129 = v126 - v127;
              if (v126 - v127 > 1 && *(v18 + 8 * v129 - 4) != v125)
              {
                v139 = (v18 + 4);
                v131 = v127 - 1;
                v130 = -1;
                v140 = v129;
                while (1)
                {
                  v48 = __OFSUB__(v140--, 1);
                  if (v140 < 0 != v48)
                  {
                    break;
                  }

                  v141 = *v139;
                  v139 += 8;
                  ++v131;
                  ++v130;
                  if (v141 != v125)
                  {
                    *(a1 + 312) = 4;
                    goto LABEL_131;
                  }
                }
              }

              v130 = v129;
              v131 = v126;
LABEL_131:
              *(a1 + 304) = v130 + v128;
              *(*(a1 + 144) + 4 * v125) += v130;
              v132 = v131 - *(a1 + 112);
              if (v132 >= 1)
              {
                v133 = v132 + 1;
                do
                {
                  v134 = *v18;
                  v18 += 8;
                  *v9++ = v134;
                  --v133;
                }

                while (v133 > 1);
              }

              *(a1 + 288) = v18;
              if (v131 < *a6)
              {
                *(a1 + 112) = v131;
                goto LABEL_168;
              }

              *a9 = 1;
              *a6 = v131;
              *a8 = *(a1 + 281);
              *(a1 + 112) = 0;
              if (*(a1 + 304) == *(a1 + 4))
              {
                goto LABEL_192;
              }

              v166 = 4;
LABEL_194:
              *(a1 + 312) = v166;
              return 0;
            }

            v135 = *(a1 + 4);
            v14 = 1;
            if (*(a1 + 4))
            {
              v14 = 1;
              if (*(v18 + 8 * *(a1 + 4) - 4))
              {
                v136 = v18 - 8;
                v137 = -1;
                while (1)
                {
                  v48 = __OFSUB__(v135--, 1);
                  if (v135 < 0 != v48)
                  {
                    goto LABEL_176;
                  }

                  v138 = *(v136 + 12);
                  v136 += 8;
                  ++v137;
                  if (v138)
                  {
                    v14 = 4;
                    *(a1 + 312) = 4;
                    *(a1 + 288) = v136;
                    goto LABEL_175;
                  }
                }
              }
            }
          }
        }

        if (v14 == 5)
        {
          break;
        }

        if (v14 == 4)
        {
          v18 = *(a1 + 288);
          goto LABEL_105;
        }
      }

      v23 = *(a1 + 288);
      v24 = *(v23 + 4);
      if (*(a1 + 304) == -1)
      {
        *(a1 + 304) = 0;
      }

      v25 = v24 & 0x7F;
      v26 = *(a1 + 281);
      if (v26 != (v24 & 0x7F))
      {
        if (v25 == 127)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24 & 0x7F;
        }

        v28 = v27 + 1;
        v29 = v27 + 2;
        if (v28 == v26 || v29 == v26)
        {
          goto LABEL_32;
        }

        v31 = v25 - 126;
        if (v25 < 0x7E)
        {
          v31 = v25 + 1;
        }

        if (v31 + 1 == v26)
        {
LABEL_32:
          *(v23 + 4) = v26 | v24 & 0x80;
          v25 = v26;
        }

        else
        {
          if (!*(v15 + v25))
          {
            *(*(a1 + 144) + 4 * v25) = 0;
          }

          do
          {
            *(v15 + v26) = 2;
            v142 = v26 - 127 * ((((v26 - ((517 * v26) >> 16)) >> 1) + ((517 * v26) >> 16)) >> 6);
            LODWORD(v26) = v142 + 1;
          }

          while (v25 != (v142 + 1));
          *(a1 + 281) = v25;
        }

        *(v15 + v25) = 1;
        v23 = *(a1 + 288);
        v24 = *(v23 + 4);
      }

      *(a1 + 312) = 1;
      if (v24 < 0)
      {
        *a9 = 2;
        *a6 = *(a1 + 112);
        v164 = *(a1 + 281);
        if (v164 != *(a1 + 280))
        {
          do
          {
            *(v15 + v164) = 2;
            v164 = v164 - 127 * ((((v164 - ((517 * v164) >> 16)) >> 1) + ((517 * v164) >> 16)) >> 6) + 1;
            v165 = *(a1 + 280);
          }

          while (v165 != v164);
          goto LABEL_189;
        }

LABEL_190:
        *(v15 + v164) = 2;
        *a8 = *(a1 + 281);
        *(a1 + 112) = 0;
        *(a1 + 312) = 0;
        return 0;
      }

      v143 = *(a1 + 281);
      if (*(a1 + 281))
      {
        break;
      }

      v157 = *(a1 + 4);
      v14 = 1;
      if (*(v23 + 8 * v157 - 4))
      {
        v158 = v23 - 8;
        v137 = -1;
        v159 = 8;
        while (1)
        {
          v48 = __OFSUB__(v157, 1);
          LODWORD(v157) = v157 - 1;
          if (v157 < 0 != v48)
          {
            break;
          }

          v160 = *(v158 + 12);
          v158 += 8;
          v159 -= 8;
          ++v137;
          if (v160)
          {
            v14 = 5;
            *(a1 + 312) = 5;
            v161 = *(a1 + 296) - v159;
            *(a1 + 288) = v158;
            *(a1 + 296) = v161;
LABEL_175:
            *(a1 + 304) += v137;
            goto LABEL_4;
          }
        }

LABEL_176:
        v14 = 1;
      }
    }

    v144 = *(a1 + 304);
    if (*a6 - *(a1 + 112) >= *(a1 + 4) - v144)
    {
      v145 = *(a1 + 4) - v144;
    }

    else
    {
      v145 = *a6 - *(a1 + 112);
    }

    v146 = v145 + v144;
    if (v145 >= 2 && *(v23 + 8 * v145 - 4) != v143)
    {
      v162 = (v23 + 4);
      v147 = v144 - 1;
      while (1)
      {
        v48 = __OFSUB__(v145--, 1);
        if (v145 < 0 != v48)
        {
          break;
        }

        v163 = *v162;
        v162 += 8;
        ++v147;
        if (v163 != v143)
        {
          *(a1 + 312) = 5;
          goto LABEL_159;
        }
      }
    }

    v147 = v146;
LABEL_159:
    *(*(a1 + 144) + 4 * v143) += v147 - v144;
    v148 = *(a1 + 304);
    v149 = *(a1 + 112) + v147 - v148;
    *(a1 + 112) = v149;
    if (v147 > v148)
    {
      v150 = 0;
      v151 = 0;
      v152 = *(a1 + 296);
      v153 = *(a1 + 40) + 2 * v148;
      v154 = v147 - v148;
      do
      {
        v155 = *(v153 + v151 * 2 + 2 * *(a1 + 4));
        v156 = (*(v152 + 2 * v151) >> 16) * *(v153 + v151 * 2) + ((*(v152 + 2 * v151) * *(v153 + v151 * 2)) >> 16) + (*(v23 + 2 * v151) >> 16) * v155 + ((*(v23 + 2 * v151) * v155) >> 16);
        if (v156 <= -32768)
        {
          v156 = -32768;
        }

        if (v156 >= 0x7FFF)
        {
          LOWORD(v156) = 0x7FFF;
        }

        v9[v151++] = v156;
        v150 -= 8;
        --v154;
      }

      while (v154);
      *(a1 + 296) = v152 - v150;
      v23 -= v150;
      v9 = (v9 + v151 * 2);
    }

    *(a1 + 288) = v23;
    *(a1 + 304) = v147;
    if (v149 >= *a6)
    {
      break;
    }

LABEL_168:
    v14 = *(a1 + 312);
    if (v14 == 1)
    {
      *(a1 + 304) = 0;
    }
  }

  *a9 = 1;
  *a6 = *(a1 + 112);
  *a8 = *(a1 + 281);
  *(a1 + 112) = 0;
  if (*(a1 + 304) != *(a1 + 4))
  {
    v166 = 5;
    goto LABEL_194;
  }

LABEL_192:
  *(a1 + 304) = 0;
  return 0;
}

uint64_t WSOLA__rateChange(uint64_t a1, char a2, __int16 a3, __int16 *a4, int a5, _WORD *a6, int *a7, char *a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = 0;
  v15 = 0;
  v28 = 0;
  v22 = *a7;
  v16 = (a3 - 100);
  v18 = a1 + 152;
  do
  {
    v27 = *a8;
    *a7 = v22;
    WSOLA__TimeScaleInputBuffer(a1, a2, a4, a5, a6, a7, v16, &v27, &v28);
    v19 = v28;
    if (v28 - 1 > 1)
    {
      *a8 = *a8 - 127 * ((((*a8 - ((3 * *a8) >> 8)) >> 1) + ((3 * *a8) >> 8)) >> 6) + 1;
      *a7 = 0;
      v15 = 1;
    }

    else
    {
      v20 = *a9;
      if ((v20 & 0x80) != 0)
      {
        while (v15)
        {
LABEL_7:
          v20 = *a9 - 127 * ((*a9 * 0x204081020408103uLL) >> 64) + 1;
          *a9 = v20;
          if ((v20 & 0x80) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:
        if (*(v18 + v20) == 2)
        {
          *(v18 + v20) = 0;
          v15 = 1;
          goto LABEL_7;
        }
      }

      v26 += *a7;
      (*(a10 + 104))(a11, a12, a6, (2 * *a7));
      v15 = 0;
    }
  }

  while ((v19 & 0xFFFFFFFD) != 0);
  *a7 = v26;
  return 0;
}

uint64_t WSOLA__rateChange_bet4_approach(uint64_t a1, char a2, __int16 a3, __int16 *a4, int a5, _WORD *a6, int *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = 0;
  v24 = 0;
  v15 = *a7;
  v16 = (a3 - 100);
  v17 = a1 + 152;
  do
  {
    v18 = 1;
    v23 = 1;
    *a7 = v15;
    WSOLA__TimeScaleInputBuffer(a1, a2, a4, a5, a6, a7, v16, &v23, &v24);
    if ((v23 & 0x8000000000000000) == 0 && *(v17 + v23) == 2)
    {
      v18 = 0;
      *(v17 + v23) = 0;
    }

    if (v24 - 1 > 1)
    {
      break;
    }

    v14 += *a7;
    (*(a8 + 104))(a9, a10, a6, (2 * *a7));
  }

  while ((v18 & 1) != 0);
  *a7 = v14;
  return 0;
}

int *fxd_S64SatAddS32S32(int *result, int *a2, int a3)
{
  v4 = result;
  v5 = *a2;
  v6 = *a2 + a3;
  *a2 = v6;
  if (((v5 ^ a3) & 0x80000000) == 0 && (v6 ^ v5) < 0)
  {
    v7 = *result;
    if (v5 < 0)
    {
      result = fxd_S32SatAddS32S32(v7, -1);
      *v4 = result;
      v8 = -*a2;
    }

    else
    {
      result = fxd_S32SatAddS32S32(v7, 1);
      *v4 = result;
      v8 = *a2 & 0x7FFFFFFF;
    }

    goto LABEL_15;
  }

  v9 = *result;
  if (*result >= 1)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return result;
    }

    --*result;
    goto LABEL_13;
  }

  if (v9)
  {
    v10 = v6 < 1;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    *result = v9 + 1;
LABEL_13:
    v8 = *a2 ^ 0x80000000;
LABEL_15:
    *a2 = v8;
  }

  return result;
}

uint64_t fxd_S32CosS32(int a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (v1 >= 411774)
  {
    v2 = 411774;
  }

  else
  {
    v2 = v1;
  }

  v3 = v1 - 411774 * ((v1 + 411773 - v2) / 0x6487Eu);
  v4 = v3 - 102944;
  if (v3 > 308830)
  {
    v5 = 411774 - v3;
  }

  else
  {
    v5 = v3;
  }

  if ((v3 - 205888) >= 0x1921F)
  {
    v6 = 1;
  }

  else
  {
    v5 = v3 - 205887;
    v6 = -1;
  }

  v7 = 205887 - v3;
  if (v4 < 0x19220)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v4 < 0x19220)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6;
  }

  v10 = fxd_S32Q1616MultS32S32(v8, v8);
  v11 = fxd_S32Q1616MultS32S32(2328, v10);
  return (fxd_S32Q1616MultS32S32((v11 - 32551), v10) + 0x10000) * v9;
}

uint64_t fxd_S32Q1616MultS32S32(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  fxd_DPFExtractS32S16S16(a1, &v7 + 1, &v7);
  fxd_DPFExtractS32S16S16(a2, &v6 + 1, &v6);
  v3 = fxd_S32SatAddS32S32(((v6 * v7) >> 14) & 0x1FFFF, 2 * v6 * SHIWORD(v7));
  v4 = fxd_S32SatAddS32S32(v3, 2 * v7 * SHIWORD(v6));
  return fxd_S32SatAddS32S32(v4, (HIWORD(v7) * HIWORD(v6)) << 16);
}

uint64_t Wsola__updateSubunits(uint64_t result, int a2, int a3)
{
  v3 = *(result + 152) + 56 * a2;
  v4 = *(v3 + 46);
  if (*(v3 + 46))
  {
    v5 = *(result + 144);
    v6 = *(result + 160);
    v7 = *(v3 + 44);
    v8 = (v6 + 16 * v7);
    v9 = v8 + 1;
    v10 = v8[1] + a3;
    if (v10 < 0)
    {
      if (v4 == 1)
      {
LABEL_8:
        *v9 = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        result = (v8 + 1);
        while (1)
        {
          v14 = *result;
          result += 16;
          v13 = v14;
          v15 = v14 + v12;
          if (v14 + v12 > 1 - a3 + v11)
          {
            break;
          }

          ++v11;
          v12 = v15;
          if (v4 == v11)
          {
            goto LABEL_8;
          }
        }

        if (v11)
        {
          v16 = vdupq_n_s64(v11 - 1);
          v17 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v18 = v8 + 9;
          v19 = xmmword_26ECCE810;
          v20 = xmmword_26ECC7980;
          result = 1;
          v21 = vdupq_n_s64(4uLL);
          do
          {
            v22 = vmovn_s64(vcgeq_u64(v16, v20));
            if (vuzp1_s16(v22, *v16.i8).u8[0])
            {
              *(v18 - 8) = 1;
            }

            if (vuzp1_s16(v22, *&v16).i8[2])
            {
              *(v18 - 4) = 1;
            }

            if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v19))).i32[1])
            {
              *v18 = 1;
              v18[4] = 1;
            }

            v19 = vaddq_s64(v19, v21);
            v20 = vaddq_s64(v20, v21);
            v18 += 16;
            v17 -= 4;
          }

          while (v17);
          v23 = v11;
        }

        else
        {
          v23 = 0;
        }

        *(v6 + 16 * (v23 + v7) + 4) = a3 + v12 + v13 - v11;
      }
    }

    else
    {
      *v9 = v10;
    }

    v24 = 0;
    do
    {
      if (v24)
      {
        v5 += *(v8 - 3);
      }

      *v8 = v5;
      v8 += 4;
      ++v24;
    }

    while (v4 != v24);
  }

  return result;
}

uint64_t Wsola__findNextEventInSubUnit(uint64_t a1, unsigned int a2, int *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *a3;
  v4 = *(a1 + 152) + 56 * a2;
  v5 = *(v4 + 46);
  if (*a3 >= v5)
  {
LABEL_6:
    v3 = 0;
    result = 0;
  }

  else
  {
    v6 = (*(a1 + 160) + 16 * (v3 + *(v4 + 44)) + 10);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7)
      {
        break;
      }

      if (v5 == ++v3)
      {
        goto LABEL_6;
      }
    }

    result = 1;
  }

  *a3 = v3;
  return result;
}

uint64_t Wsola__Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1088);
  if (*(*(v9 + 160) + 12) != 35)
  {
    v14 = 0;
LABEL_9:
    v15 = *(v9 + 168);
    if (v14 >= v15)
    {
LABEL_28:
      synth_ProcessMarkers(a1, a2, a3, a4, a5, a6, a7, a8);
      if (!*(a1 + 1144) || (v26 = (*(a1 + 1096) + *(a1 + 1048)), v26 < 1) || (ClientBuffer = InOut__InsertSilence(a1, v26, *(v9 + 168) - 1), (ClientBuffer & 0x80000000) == 0) && !InOut__IsEndState(a1))
      {
        *(a1 + 1076) = 1;
        *(a1 + 1024) = *(a1 + 1028);
        ++*(v9 + 224);
        ClientBuffer = InOut__GetClientBuffer(a1, v26, v27, v28, v29, v30, v31, v32);
        if ((ClientBuffer & 0x80000000) == 0)
        {
          InOut__IsEndState(a1);
        }
      }

      return ClientBuffer;
    }

    v16 = v14 == v15 - 1;
    v17 = v14;
    v18 = 56 * v14;
    while (1)
    {
      ClientBuffer = Wsola__newunit(a1, *(v9 + 152) + v18);
      if ((ClientBuffer & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

      if ((*(*(v9 + 152) + v18 + 48) & 0xF) != 0)
      {
        if ((*(*(v9 + 152) + v18 + 48) & 2) != 0)
        {
          v25 = Wsola__matchpreviousunit_wsola(a1, v17, v16);
        }

        else if (*(*(v9 + 152) + v18 + 48))
        {
          v25 = Wsola__plosive_silence(a1, v17);
        }

        else
        {
          if ((*(*(v9 + 152) + v18 + 48) & 4) == 0)
          {
            goto LABEL_23;
          }

          v25 = Wsola__plosive_rs(a1, v17);
        }
      }

      else
      {
        v25 = Wsola__Silence(a1, v17, v16);
      }

      ClientBuffer = v25;
      if ((v25 & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

LABEL_23:
      v16 = v17 == *(v9 + 168) - 1;
      ClientBuffer = Wsola__middle(a1, v17, v19, v20, v21, v22, v23, v24);
      if ((ClientBuffer & 0x80000000) != 0)
      {
        return ClientBuffer;
      }

      if (InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

      ClientBuffer = Wsola__tail(a1, v17);
      if ((ClientBuffer & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return ClientBuffer;
      }

      ++v17;
      v18 += 56;
      if (v17 >= *(v9 + 168))
      {
        goto LABEL_28;
      }
    }
  }

  ClientBuffer = Wsola__newunit(a1, *(v9 + 152));
  if ((ClientBuffer & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    v11 = *(a1 + 1088);
    Wsola__updateSubunits(v11, 0, 0);
    v12 = *(v11 + 152);
    if (*(v12 + 46))
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        ClientBuffer = InOut__InsertSilence(a1, v13, 0);
        if ((ClientBuffer & 0x80000000) != 0)
        {
          return ClientBuffer;
        }

        InOut__IsEndState(a1);
      }

      else
      {
        ClientBuffer = 0;
      }
    }

    else
    {
      ClientBuffer = 0;
      *(v12 + 40) = 0;
    }

    if (!InOut__IsEndState(a1))
    {
      ClientBuffer = Wsola__middle(a1, 0, v33, v34, v35, v36, v37, v38);
      if ((ClientBuffer & 0x80000000) == 0 && !InOut__IsEndState(a1))
      {
        ClientBuffer = Wsola__tail(a1, 0);
        if ((ClientBuffer & 0x80000000) == 0 && !InOut__IsEndState(a1))
        {
          v14 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  return ClientBuffer;
}

uint64_t Wsola__newunit(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1088);
  v4 = *(a2 + 28);
  v5 = *(a2 + 32);
  *(v3 + 28) = v5;
  v6 = *(a2 + 48);
  if ((v6 & 0xF) == 0)
  {
    v7 = *(v3 + 4);
LABEL_7:
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v4 >= v7)
    {
      v5 += v7;
    }

    else
    {
      v5 += v4;
    }

    if (v4 < v7)
    {
      v7 = v4;
    }

    if (v8)
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 28) = v5;
    *(v3 + 32) = v7;
    goto LABEL_16;
  }

  if ((v6 & 2) != 0)
  {
    v7 = *v3;
    goto LABEL_7;
  }

  if ((v6 & 5) == 0)
  {
    goto LABEL_17;
  }

  v7 = 0;
LABEL_16:
  *(a2 + 36) = v7;
LABEL_17:
  *(v3 + 36) = v5;
  if (v6 >= 0x10)
  {
    if ((v6 & 0x20) != 0)
    {
      v10 = 8;
    }

    else
    {
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v10 = 180;
    }
  }

  else
  {
    v10 = 4;
  }

  v5 += *(v3 + v10);
  *(v3 + 28) = v5;
LABEL_24:
  result = Lookup_Init(**(a2 + 8), v4, v5);
  if ((result & 0x80000000) == 0)
  {
    v12 = *(a2 + 46);
    *(v3 + 20) = 0;
    *(v3 + 24) = v12;
  }

  return result;
}

uint64_t Wsola__middle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1088);
  v10 = *(*(v9 + 152) + 56 * a2 + 48);
  if (v10 >= 0x10 && (v10 & 0x20) == 0)
  {
    if ((v10 & 0x10) != 0)
    {
      v12 = 180;
      v13 = 20;
    }

    else
    {
      if ((v10 & 0x40) == 0)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v12 = 20;
      v13 = 208;
    }
  }

  else
  {
    v12 = 20;
    v13 = 4;
  }

  v15 = *(v9 + 36);
  v16 = *(v9 + v13) + *(v9 + v12);
  v14 = (v15 - v16);
  if (v15 - v16 < 0)
  {
    return 0;
  }

LABEL_12:
  v17 = InOut__AudioWriteToClientWithMarkers(a1, a2, v14, 2, a5, a6, a7, a8);
  if ((v17 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    *(v9 + 20) += v14;
  }

  return v17;
}

uint64_t Wsola__tail(uint64_t a1, int a2)
{
  v2 = *(a1 + 1088);
  v3 = **(*(v2 + 152) + 56 * a2 + 8);
  v4 = *(v2 + 28);
  v5 = *(v2 + 20);
  v6 = v4 - v5;
  if (v4 - v5 < 1)
  {
    v10 = *(*(v2 + 48) + 8);
    v11 = *(v2 + 12);
    v12 = 0;
    goto LABEL_5;
  }

  v7 = *(v2 + 12);
  v8 = *(v2 + 48);
  v9 = **(*(v2 + 152) + 56 * a2 + 8);
  if (v6 < v7)
  {
    InOut__DecodeToVector(a1, v9, v4 - v5, v8);
    v10 = *(*(v2 + 48) + 8);
    v11 = *(v2 + 12) - v6;
    v12 = v6;
LABEL_5:
    Wsola__zero(v10, v12, v11);
    goto LABEL_7;
  }

  InOut__DecodeToVector(a1, v9, v7, v8);
LABEL_7:

  return Lookup_DeInit(v3);
}

uint64_t Wsola__matchpreviousunit_wsola(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 1088);
  v7 = **(*(v6 + 152) + 56 * a2 + 8);
  v8 = *(v6 + 28) - *(v6 + 20);
  v9 = *(v6 + 12);
  v10 = *(v6 + 64);
  if (v8 >= v9)
  {
    *(v10 + 4) = v9;
    v11 = InOut__DecodeToVector(a1, v7, v9, v10);
    if ((v11 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v11;
    }
  }

  else
  {
    *(v10 + 4) = v8;
    v11 = InOut__DecodeToVector(a1, v7, v8, v10);
    if ((v11 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v11;
    }

    Wsola__zero(*(*(v6 + 64) + 8), *(*(v6 + 64) + 4), *(v6 + 12) - *(*(v6 + 64) + 4));
  }

  v12 = *(v6 + 48);
  v13 = *(v6 + 64);
  v14 = *(v12 + 8);
  v15 = *(v13 + 8);
  v16 = *(v6 + 8);
  v17 = *(v6 + 16);
  if (v16 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v19 += (*(v14 + 4 * v18) * *(v15 + 4 * v18)) >> 3;
      v18 += v17;
    }

    while (v18 < v16);
  }

  if (v17 <= *v6)
  {
    v20 = 0;
    v21 = *(v6 + 16);
    v22 = v15 + 4 * v17;
    do
    {
      if (v16 < 1)
      {
        v24 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v24 += (*(v14 + 4 * v23) * *(v22 + 4 * v23)) >> 3;
          v23 += v17;
        }

        while (v23 < v16);
      }

      if (v24 > v19)
      {
        v20 = v21;
        v19 = v24;
      }

      v21 += v17;
      v22 += 4 * v17;
    }

    while (v21 <= *v6);
  }

  else
  {
    v20 = 0;
  }

  v25 = *(v6 + 4) + v20;
  *(v6 + 32) = v25;
  v26 = *(v6 + 152) + 56 * a2;
  *(v26 + 36) -= v25;
  Wsola__WindowsOverlap_wsola(v6, v12, v13, 0, v20);
  v27 = a2 - 1;
  if (a2 < 1)
  {
    if (*(*(v6 + 160) + 10))
    {
      v50 = 0;
      if (Wsola__findNextEventInSubUnit(v6, 0, &v50))
      {
        v35 = *(v6 + 152);
        v36 = *(v35 + 46);
        if (v50 < v36)
        {
          v37 = *(v35 + 44);
          v38 = *(v6 + 144);
          v39 = (*(v6 + 160) + 16 * v50 + 16 * v37);
          v40 = v36 - v50;
          do
          {
            if (*v39 > v38)
            {
              *v39 = v38;
            }

            v39 += 4;
            --v40;
          }

          while (v40);
        }
      }
    }
  }

  else
  {
    v51 = 0;
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v6, a2 - 1, &v51))
      {
        v28 = *(v6 + 152);
        v29 = *(v28 + 56 * v27 + 46);
        if (v51 < v29)
        {
          v30 = *(v6 + 4);
          if (v30 >= *(*(v6 + 48) + 4))
          {
            v30 = *(*(v6 + 48) + 4);
          }

          if (a3 == 1)
          {
            v30 = 0;
          }

          v31 = *(v28 + 56 * v27 + 44);
          v32 = *(v6 + 144) + v30;
          v33 = (*(v6 + 160) + 16 * v51 + 16 * v31);
          v34 = v29 - v51;
          do
          {
            if (*v33 > v32)
            {
              *v33 = v32;
            }

            v33 += 4;
            --v34;
          }

          while (v34);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v6, *(v6 + 48), 0, *(v6 + 4));
  v11 = InOut__AudioWriteToClientWithMarkers(a1, (a2 - 1), *(v6 + 4), 1, v41, v42, v43, v44);
  if ((v11 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    Wsola__updateSubunits(v6, a2, *(*(v6 + 152) + 56 * a2 + 36));
    InOut__PutVectorInBuffer(v6, *(v6 + 48), *(v6 + 4), *(v6 + 4));
    v11 = InOut__AudioWriteToClientWithMarkers(a1, a2, *(v6 + 4), 0, v45, v46, v47, v48);
    if ((v11 & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      InOut__PutVectorInBuffer(v6, *(v6 + 64), *v6 + v20, (*(*(v6 + 64) + 4) - (*v6 + v20)));
      Wsola__updatepointers(v6, *(v6 + 4) + *(v6 + 32));
    }
  }

  return v11;
}

uint64_t Wsola__Silence(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 1088);
  v7 = **(*(v6 + 152) + 56 * a2 + 8);
  v8 = *(v6 + 4);
  v9 = *(v6 + 64);
  if (*(v6 + 28) - *(v6 + 20) >= v8)
  {
    *(v9 + 4) = v8;
    inserted = InOut__DecodeToVector(a1, v7, v8, v9);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }
  }

  else
  {
    inserted = InOut__DecodeToVector(a1, v7, *(v6 + 28) - *(v6 + 20), v9);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }

    v11 = *(v6 + 28) - *(v6 + 20);
    Wsola__zero(*(*(v6 + 64) + 8), v11, *(v6 + 4) - v11);
    *(*(v6 + 64) + 4) = *(v6 + 28) - *(v6 + 20);
  }

  Wsola__fade_out(v6, *(v6 + 48), 0, *(v6 + 4));
  v12 = *(v6 + 4);
  *(v6 + 32) = v12 >> 1;
  v13 = *(v6 + 152) + 56 * a2;
  *(v13 + 36) -= v12 >> 1;
  v14 = a2 - 1;
  if (a2 < 1)
  {
    if (*(*(v6 + 160) + 10))
    {
      v38 = 0;
      if (Wsola__findNextEventInSubUnit(v6, 0, &v38))
      {
        v22 = *(v6 + 152);
        v23 = *(v22 + 46);
        if (v38 < v23)
        {
          v24 = *(v22 + 44);
          v25 = *(v6 + 144);
          v26 = (*(v6 + 160) + 16 * v38 + 16 * v24);
          v27 = v23 - v38;
          do
          {
            if (*v26 > v25)
            {
              *v26 = v25;
            }

            v26 += 4;
            --v27;
          }

          while (v27);
        }
      }
    }
  }

  else
  {
    v39 = 0;
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v6, a2 - 1, &v39))
      {
        v15 = *(v6 + 152);
        v16 = *(v15 + 56 * v14 + 46);
        if (v39 < v16)
        {
          v17 = *(v6 + 4);
          if (v17 >= *(*(v6 + 48) + 4))
          {
            v17 = *(*(v6 + 48) + 4);
          }

          if (a3 == 1)
          {
            v17 = 0;
          }

          v18 = *(v15 + 56 * v14 + 44);
          v19 = *(v6 + 144) + v17;
          v20 = (*(v6 + 160) + 16 * v39 + 16 * v18);
          v21 = v16 - v39;
          do
          {
            if (*v20 > v19)
            {
              *v20 = v19;
            }

            v20 += 4;
            --v21;
          }

          while (v21);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v6, *(v6 + 48), 0, *(v6 + 4));
  inserted = InOut__AudioWriteToClientWithMarkers(a1, (a2 - 1), *(v6 + 4), 1, v28, v29, v30, v31);
  if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    v32 = *(*(v6 + 152) + 56 * a2 + 40);
    Wsola__updateSubunits(v6, a2, *(*(v6 + 152) + 56 * a2 + 36) + v32);
    inserted = InOut__InsertSilence(a1, v32, a2);
    if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      Wsola__fade_in(v6, *(v6 + 64), 0, *(v6 + 4));
      InOut__PutVectorInBuffer(v6, *(v6 + 64), 0, *(v6 + 4));
      inserted = InOut__AudioWriteToClientWithMarkers(a1, a2, *(v6 + 4), 0, v33, v34, v35, v36);
      if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
      {
        InOut__PutVectorInBuffer(v6, *(v6 + 64), *(v6 + 4), (*(*(v6 + 64) + 4) - *(v6 + 4)));
        Wsola__updatepointers(v6, *(v6 + 32) + (*(v6 + 4) >> 1));
      }
    }
  }

  return inserted;
}

_DWORD *Wsola__copy(_DWORD *result, uint64_t a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v5 = (a2 + 4 * a3);
    do
    {
      v6 = *v5++;
      *result++ = v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

void Wsola__zero(uint64_t a1, int a2, int a3)
{
  if (a3 >= 1)
  {
    bzero((a1 + 4 * a2), 4 * a3);
  }
}

int *Wsola__WindowsOverlap_wsola(int *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v5) = *result;
  if (*result >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a2 + 8) + 4 * a4;
    v9 = *(a3 + 8) + 4 * a5;
    v10 = *(*(result + 7) + 8);
    do
    {
      *(v8 + 4 * v7) = ((*(v9 + 4 * v7) * *(v10 + 4 * (v6 + v5))) >> 15) + ((*(v8 + 4 * v7) * *(v10 + 4 * v7)) >> 15);
      ++v7;
      v5 = *result;
      --v6;
    }

    while (v7 < v5);
  }

  return result;
}

uint64_t Wsola__WindowsOverlap_rs(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(result + 4) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 8) + 4 * a4;
    v8 = *(a3 + 8) + 4 * a5;
    v9 = *(*(result + 56) + 8);
    v10 = v9;
    do
    {
      v11 = *v10;
      v10 += 2;
      *(v7 + 4 * v6) = ((*(v8 + 4 * v6) * v9[v5 + *result]) >> 15) + ((*(v7 + 4 * v6) * v11) >> 15);
      ++v6;
      v5 -= 2;
    }

    while (v6 < *(result + 4));
  }

  return result;
}

uint64_t Wsola__fade_out(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(result + 56);
  v6 = *(v5 + 8);
  v7 = (*(a2 + 8) + 4 * a3);
  do
  {
    if (2 * (a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    *v7 = (*v7 * *(v6 + 4 * v4)) >> 15;
    ++v7;
    v4 += 2;
  }

  while (*(v5 + 4) > v4);
  return result;
}

uint64_t Wsola__fade_in(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 56);
  v5 = *(v4 + 4) - 1;
  v6 = (*(a2 + 8) + 4 * a3);
  v7 = *(v4 + 8);
  v8 = a4 & ~(a4 >> 31);
  v9 = v5 + 2;
  v10 = (v7 + 4 * v5);
  do
  {
    if (!v8)
    {
      break;
    }

    v11 = *v10;
    v10 -= 2;
    *v6 = (*v6 * v11) >> 15;
    ++v6;
    --v8;
    v9 -= 2;
  }

  while (v9 > 1);
  return result;
}

uint64_t Wsola__fade_out_closure(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(result + 56);
  v6 = *(v5 + 8);
  v7 = *(a2 + 8) + 4 * a3;
  do
  {
    if ((a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    *(v7 + 4 * v4) = (*(v7 + 4 * v4) * *(v6 + 4 * v4)) >> 15;
    ++v4;
  }

  while (v4 < *(v5 + 4));
  return result;
}

uint64_t Wsola__fade_in_burst(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 56);
  v5 = *(v4 + 4) - 1;
  v6 = *(v4 + 8);
  v7 = (*(a2 + 8) + 4 * a3);
  v8 = *(result + 216);
  v9 = a4 & ~(a4 >> 31);
  do
  {
    if (!v9)
    {
      break;
    }

    *v7 = (*v7 * *(v6 + 4 * v5)) >> 15;
    ++v7;
    v5 -= v8;
    --v9;
  }

  while ((v5 & 0x80000000) == 0);
  return result;
}

uint64_t Wsola__OverlapWindow__Init(uint64_t result, int a2)
{
  if (a2 > 15999)
  {
    if (a2 == 16000)
    {
      v2 = 161;
      v3 = &smpOverlapWindow_16;
      goto LABEL_11;
    }

    if (a2 == 22050)
    {
      v2 = 221;
      v3 = &smpOverlapWindow_22;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 8000)
    {
      v2 = 81;
      v3 = &smpOverlapWindow_8;
      goto LABEL_11;
    }

    if (a2 == 11025)
    {
      v2 = 113;
      v3 = &smpOverlapWindow_11;
LABEL_11:
      v4 = *(result + 56);
      *(v4 + 8) = v3;
      *v4 = v2;
      *(v4 + 4) = v2;
    }
  }

  return result;
}

uint64_t Wsola__matchpreviousunit_rs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1088);
  v5 = **(*(v4 + 152) + 56 * a2 + 8);
  v6 = *(v4 + 28) - *(v4 + 20);
  v7 = *(v4 + 192);
  if (v6 >= v7)
  {
    v11 = *(v4 + 64);
    *(v11 + 4) = v7;
    v9 = InOut__DecodeToVector(a1, v5, v7, v11);
    if ((v9 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v9;
    }
  }

  else
  {
    v8 = *(v4 + 64);
    if (v6 <= ((2 * *(v4 + 220)) | 1))
    {
      v10 = 0;
      *(v8 + 4) = 0;
    }

    else
    {
      *(v8 + 4) = v6;
      v9 = InOut__DecodeToVector(a1, v5, v6, v8);
      if ((v9 & 0x80000000) != 0 || InOut__IsEndState(a1))
      {
        return v9;
      }

      v8 = *(v4 + 64);
      v10 = *(v8 + 4);
    }

    Wsola__zero(*(v8 + 8), v10, *(v4 + 12) - v10);
  }

  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 220);
  v15 = (v14 >> 1);
  v16 = -(v14 >> 1);
  v17 = *(v4 + 188);
  v18 = v15;
  if (v15 < v17)
  {
    v19 = v15;
    v20 = -536870912;
    v18 = v15;
    v21 = 4 * v15 + 4 * v16;
    do
    {
      if (v15 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = (*(v12 + 8) + v21);
        v24 = v15 - v16;
        do
        {
          v25 = *v23++;
          v22 += v25;
          --v24;
        }

        while (v24);
      }

      if (v22 > v20)
      {
        v20 = v22;
        v18 = v19;
      }

      ++v19;
      v21 += 4;
    }

    while (v19 != v17);
  }

  v26 = v18 - v15;
  if (v18 - v15 <= v15)
  {
    v26 = v15;
  }

  v27 = *(v13 + 4);
  if (v26 + v17 >= v27)
  {
    v28 = *(v13 + 4);
  }

  else
  {
    v28 = v26 + v17;
  }

  if (v26 < v28 - v15)
  {
    v29 = 0;
    v30 = v18 + v16;
    if (v30 <= v15)
    {
      v30 = v15;
    }

    v31 = v30 - (v26 + v15) + v28;
    v32 = 4 * v30 - 4 * v15;
    do
    {
      if (v15 < 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        v34 = (*(v13 + 8) + v32);
        v35 = v15 + v15;
        do
        {
          v36 = *v34++;
          v33 += v36;
          --v35;
        }

        while (v35);
      }

      if (v33 > v29)
      {
        v29 = v33;
        v26 = v30;
      }

      LODWORD(v30) = v30 + 1;
      v32 += 4;
    }

    while (v31 != v30);
  }

  v37 = v26 + v15 - v18;
  v38 = v27 - v17;
  if (v37 >= v38)
  {
    v39 = v38 - 1;
  }

  else
  {
    v39 = v37;
  }

  v40 = v39 + *(v4 + 204);
  *(v4 + 32) = v40;
  v41 = *(v4 + 152) + 56 * a2;
  *(v41 + 36) -= v40;
  Wsola__WindowsOverlap_rs(v4, v12, v13, v15, v39);
  if (a2 <= 0)
  {
    v42 = (a2 - 1);
  }

  else
  {
    v58 = 0;
    v42 = (a2 - 1);
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v4, a2 - 1, &v58))
      {
        v43 = *(v4 + 152) + 56 * v42;
        v44 = *(v43 + 46);
        if (v58 < v44)
        {
          v45 = *(v43 + 44);
          v46 = *(v4 + 144) + v15 + *(v4 + 204);
          v47 = (*(v4 + 160) + 16 * v58 + 16 * v45);
          v48 = v44 - v58;
          do
          {
            if (*v47 > v46)
            {
              *v47 = v46;
            }

            v47 += 4;
            --v48;
          }

          while (v48);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v4, *(v4 + 48), 0, (*(v4 + 204) + v15));
  v9 = InOut__AudioWriteToClientWithMarkers(a1, v42, (*(v4 + 204) + v15), 1, v49, v50, v51, v52);
  if ((v9 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    Wsola__updateSubunits(v4, a2, *(*(v4 + 152) + 56 * a2 + 36));
    InOut__PutVectorInBuffer(v4, *(v4 + 48), *(v4 + 204) + v15, *(v4 + 204));
    v9 = InOut__AudioWriteToClientWithMarkers(a1, a2, *(v4 + 204), 0, v53, v54, v55, v56);
    if ((v9 & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      InOut__PutVectorInBuffer(v4, *(v4 + 64), *(v4 + 200) + v39, (*(*(v4 + 64) + 4) - (*(v4 + 200) + v39)));
      Wsola__updatepointers(v4, *(v4 + 204) + *(v4 + 32));
    }
  }

  return v9;
}

uint64_t Wsola__plosive_rs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1088);
  v5 = **(*(v4 + 152) + 56 * a2 + 8);
  v6 = *(v4 + 212);
  v7 = *(v4 + 64);
  if (*(v4 + 28) - *(v4 + 20) >= v6)
  {
    *(v7 + 4) = v6;
    v8 = InOut__DecodeToVector(a1, v5, v6, v7);
    if ((v8 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v8;
    }
  }

  else
  {
    v8 = InOut__DecodeToVector(a1, v5, *(v4 + 28) - *(v4 + 20), v7);
    if ((v8 & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return v8;
    }

    v9 = *(v4 + 28) - *(v4 + 20);
    Wsola__zero(*(*(v4 + 64) + 8), v9, *(v4 + 212) - v9);
    *(*(v4 + 64) + 4) = *(v4 + 28) - *(v4 + 20);
  }

  Wsola__fade_out_closure(v4, *(v4 + 48), 0, *(v4 + 208));
  *(v4 + 32) = 0;
  v10 = a2 - 1;
  if (a2 < 1)
  {
    if (*(*(v4 + 160) + 10))
    {
      v32 = 0;
      if (Wsola__findNextEventInSubUnit(v4, 0, &v32))
      {
        v17 = *(v4 + 152);
        v18 = *(v17 + 46);
        if (v32 < v18)
        {
          v19 = *(v17 + 44);
          v20 = *(v4 + 144);
          v21 = (*(v4 + 160) + 16 * v32 + 16 * v19);
          v22 = v18 - v32;
          do
          {
            if (*v21 > v20)
            {
              *v21 = v20;
            }

            v21 += 4;
            --v22;
          }

          while (v22);
        }
      }
    }
  }

  else
  {
    v33 = 0;
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v4, a2 - 1, &v33))
      {
        v11 = *(v4 + 152);
        v12 = *(v11 + 56 * v10 + 46);
        if (v33 < v12)
        {
          v13 = *(v11 + 56 * v10 + 44);
          v14 = *(v4 + 144) + *(v4 + 208);
          v15 = (*(v4 + 160) + 16 * v33 + 16 * v13);
          v16 = v12 - v33;
          do
          {
            if (*v15 > v14)
            {
              *v15 = v14;
            }

            v15 += 4;
            --v16;
          }

          while (v16);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v4, *(v4 + 48), 0, *(*(v4 + 48) + 4));
  v8 = InOut__AudioWriteToClientWithMarkers(a1, (a2 - 1), *(*(v4 + 48) + 4), 1, v23, v24, v25, v26);
  if ((v8 & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    Wsola__fade_in_burst(v4, *(v4 + 64), 0, *(*(v4 + 64) + 4));
    Wsola__updateSubunits(v4, a2, *(*(v4 + 152) + 56 * a2 + 36));
    InOut__PutVectorInBuffer(v4, *(v4 + 64), 0, *(*(v4 + 64) + 4));
    v8 = InOut__AudioWriteToClientWithMarkers(a1, a2, *(*(v4 + 64) + 4), 0, v27, v28, v29, v30);
    if ((v8 & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      Wsola__updatepointers(v4, *(v4 + 212) + *(v4 + 32));
    }
  }

  return v8;
}

uint64_t Wsola__plosive_silence(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1088);
  v5 = **(*(v4 + 152) + 56 * a2 + 8);
  v6 = *(v4 + 180);
  v7 = *(v4 + 64);
  if (*(v4 + 28) - *(v4 + 20) >= v6)
  {
    *(v7 + 4) = v6;
    inserted = InOut__DecodeToVector(a1, v5, v6, v7);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }
  }

  else
  {
    inserted = InOut__DecodeToVector(a1, v5, *(v4 + 28) - *(v4 + 20), v7);
    if ((inserted & 0x80000000) != 0 || InOut__IsEndState(a1))
    {
      return inserted;
    }

    v9 = *(v4 + 28) - *(v4 + 20);
    Wsola__zero(*(*(v4 + 64) + 8), v9, *(v4 + 180) - v9);
    *(*(v4 + 64) + 4) = *(v4 + 28) - *(v4 + 20);
  }

  *(v4 + 32) = 0;
  if (a2 < 1)
  {
    if (*(*(v4 + 160) + 10))
    {
      v32 = 0;
      if (Wsola__findNextEventInSubUnit(v4, 0, &v32))
      {
        v16 = *(v4 + 152);
        v17 = *(v16 + 46);
        if (v32 < v17)
        {
          v18 = *(v16 + 44);
          v19 = *(v4 + 144);
          v20 = (*(v4 + 160) + 16 * v32 + 16 * v18);
          v21 = v17 - v32;
          do
          {
            if (*v20 > v19)
            {
              *v20 = v19;
            }

            v20 += 4;
            --v21;
          }

          while (v21);
        }
      }
    }
  }

  else
  {
    v33 = 0;
    if (a2 != 1)
    {
      if (Wsola__findNextEventInSubUnit(v4, a2 - 1, &v33))
      {
        v10 = *(v4 + 152) + 56 * (a2 - 1);
        v11 = *(v10 + 46);
        if (v33 < v11)
        {
          v12 = *(v10 + 44);
          v13 = *(v4 + 144);
          v14 = (*(v4 + 160) + 16 * v33 + 16 * v12);
          v15 = v11 - v33;
          do
          {
            if (*v14 > v13)
            {
              *v14 = v13;
            }

            v14 += 4;
            --v15;
          }

          while (v15);
        }
      }
    }
  }

  InOut__PutVectorInBuffer(v4, *(v4 + 48), 0, *(v4 + 180));
  inserted = InOut__AudioWriteToClientWithMarkers(a1, (a2 - 1), 1, 1, v22, v23, v24, v25);
  if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
  {
    v26 = *(*(v4 + 152) + 56 * a2 + 40);
    Wsola__updateSubunits(v4, a2, *(*(v4 + 152) + 56 * a2 + 36) + v26);
    inserted = InOut__InsertSilence(a1, v26, a2);
    if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
    {
      Wsola__updateSubunits(v4, a2, *(*(v4 + 152) + 56 * a2 + 36));
      InOut__PutVectorInBuffer(v4, *(v4 + 64), 0, *(*(v4 + 64) + 4));
      inserted = InOut__AudioWriteToClientWithMarkers(a1, a2, *(*(v4 + 64) + 4), 0, v27, v28, v29, v30);
      if ((inserted & 0x80000000) == 0 && !InOut__IsEndState(a1))
      {
        Wsola__updatepointers(v4, *(v4 + 180) + *(v4 + 32));
      }
    }
  }

  return inserted;
}

BOOL AdjacentUnits(int a1, int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 != 35 && !a2)
  {
    return !*(a3 + 12) && cstdlib_abs((*(a4 + 4) - (*(a3 + 4) + *(a3 + 8)))) < 4;
  }

  return result;
}

uint64_t synthfx_ExtractFeaturesForSynth_Demi(int a1, uint64_t a2)
{
  v3 = a1;
  v86 = *(a2 + 136);
  v87 = v86 != 0;
  v4 = *(a2 + 32) - 2;
  *(a2 + 32) = v4;
  *(a2 + 48) += 4;
  *(a2 + 56) -= 4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = 0;
  v6 = v4;
  do
  {
    *(*(a2 + 24) + 4 * v5) = *(*(a2 + 24) + 4 * v5 + 4);
    *(*(a2 + 40) + 8 * v5) = *(*(a2 + 40) + 8 * v5 + 8);
    ++v5;
  }

  while (v4 != v5);
  if (v4 == 1)
  {
LABEL_5:
    *(a2 + 32) = 0;
    v7 = *(a2 + 112);
    goto LABEL_6;
  }

  LOWORD(v44) = v4;
  if (!a1)
  {
    v90 = 0uLL;
    v89 = 0uLL;
    UnitData = Lookup_GetUnitData(***(a2 + 40), **(a2 + 24), &v90);
    if ((UnitData & 0x80000000) != 0)
    {
      return UnitData;
    }

    if (*(a2 + 32))
    {
      v65 = 0;
      v66 = 0;
      v44 = 1;
      v4 = 1;
      while (1)
      {
        v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * (v65 + 1)), *(*(a2 + 24) + 4 * (v65 + 1)), &v89);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        v67 = *(a2 + 32);
        if (v65 >= v67)
        {
          ++v65;
        }

        else
        {
          v68 = v65 + 2;
          v69 = 8 * v65 + 8;
          do
          {
            if (*(*(a2 + 40) + v69 - 8) != *(*(a2 + 40) + v69))
            {
              break;
            }

            v70 = *(*(a2 + 64) + v66) != 35 && *(*(a2 + 96) + 2 * v66) == 0;
            if (!v70 || BYTE12(v90) != 0)
            {
              break;
            }

            if (cstdlib_abs((DWORD1(v89) - (DWORD1(v90) + DWORD2(v90)))) > 3)
            {
              break;
            }

            ++v65;
            v66 = (v65 & 1) + (v65 >> 1);
            v90 = v89;
            ++v44;
            v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * v68), *(*(a2 + 24) + 4 * v68), &v89);
            v72 = v68++ - 1;
            v69 += 8;
          }

          while (v72 < *(a2 + 32));
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          v67 = *(a2 + 32);
          ++v65;
        }

        v66 = (v65 & 1) + (v65 >> 1);
        v90 = v89;
        ++v44;
        ++v4;
        if (v65 >= v67)
        {
          goto LABEL_139;
        }
      }
    }

    v4 = 1;
    LOWORD(v44) = 1;
LABEL_139:
    v6 = v4;
  }

  v25 = 2164269066;
  if (!v86)
  {
    LOWORD(v44) = 1;
  }

  v45 = heap_Calloc(*(*a2 + 8), v6, 56);
  *(a2 + 128) = v45;
  if (v45)
  {
    *(a2 + 120) = v4;
    v46 = heap_Calloc(*(*a2 + 8), v44, 16);
    *(a2 + 112) = v46;
    if (v46)
    {
      v7 = v46;
      *(a2 + 106) = v44;
LABEL_6:
      v92 = 0;
      v8 = *(a2 + 128);
      *&v90 = v8;
      *(&v90 + 1) = v7;
      *(v8 + 44) = 0;
      if (v3)
      {
        v9 = *(a2 + 32);
        if (*(a2 + 32))
        {
          v10 = 0;
          v11 = 0;
          v12 = *(a2 + 24);
          v13 = *(a2 + 40);
          v14 = v8 + 40;
          v15 = *(a2 + 64);
          v16 = (*(a2 + 48) + 2);
          v17 = v7;
          do
          {
            v18 = (v10 >> 1) + (v10 & 1);
            *(v14 - 40) = *(v12 + 4 * v10);
            *(v14 - 32) = *(v13 + 8 * v10);
            *(v14 - 24) = *(v16 - 1);
            *(v14 - 20) = *v16;
            *(v14 + 4) = v10;
            if (!v10 || (v10 & 1) != 0)
            {
              v22 = *(*(a2 + 96) + 2 * v18);
              *v14 = v22;
              v19 = (v15 + v18);
              LODWORD(v21) = *(v15 + v18);
              if (v21 != 35)
              {
                goto LABEL_19;
              }

              if (v22)
              {
                LOBYTE(v21) = 35;
                goto LABEL_19;
              }

              v21 = v14;
            }

            else
            {
              *v14 = 0;
              v19 = (v15 + v18);
              v20 = *(v15 + v18);
              if (v20 != 35)
              {
                v23 = v7 + 16 * v10;
                *(v17 + 12) = v20;
                *(v17 + 8) = v11;
                goto LABEL_20;
              }

              v21 = (v8 + 56 * v10 + 40);
            }

            *v21 = 1;
            LOBYTE(v21) = *v19;
LABEL_19:
            *(v17 + 12) = v21;
            *(v17 + 8) = v11;
            v23 = v17;
            if (v10)
            {
              goto LABEL_22;
            }

LABEL_20:
            if (!v18)
            {
LABEL_22:
              v24 = *(*(a2 + 80) + 2 * v18);
              goto LABEL_23;
            }

            v24 = 0;
LABEL_23:
            v16 += 2;
            *(v23 + 10) = v24;
            v11 += v24;
            ++v10;
            v14 += 56;
            v17 += 16;
          }

          while (v9 != v10);
        }

        v25 = 0;
        *(a2 + 120) = v9;
        *(a2 + 106) = v9;
        goto LABEL_25;
      }

      v89 = 0uLL;
      v88 = 0uLL;
      v25 = Lookup_GetUnitData(***(a2 + 40), **(a2 + 24), &v89);
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      if (**(a2 + 64) == 35)
      {
        v47 = DWORD2(v89);
        if (DWORD2(v89) >= 0x16)
        {
          v47 = 22;
        }

        if (*(a2 + 16))
        {
          v48 = v47;
        }

        else
        {
          v48 = 1;
        }

        DWORD2(v89) = v48;
      }

      v49 = 1;
      v91 = 1;
      FillUnit(a2, v8, 0, 0, &v89, 0, v87);
      FillSubunit(a2, &v90, v8, 0, 0, &v89, &v92, v87);
      if (!*(a2 + 32))
      {
        v73 = 0;
        LOWORD(v9) = 1;
        goto LABEL_120;
      }

      v85 = v7;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      LODWORD(v7) = 0;
      LOWORD(v9) = 1;
      while (1)
      {
        v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * (v7 + 1)), *(*(a2 + 24) + 4 * (v7 + 1)), &v88);
        if (v7 < *(a2 + 32))
        {
          break;
        }

LABEL_84:
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        v60 = v7 + 1;
        v61 = *(a2 + 32);
        if (v7 + 1 < v61)
        {
          v52 = (v60 & 1) + (v60 >> 1);
          v89 = v88;
          v62 = v61 - 2;
          if (*(*(a2 + 64) + v52) == 35 && v7 == v62)
          {
            DWORD2(v89) = 4;
          }

          ++v50;
          FillUnit(a2, v8 + 56 * v50, v7 + 1, (v60 & 1) + (v60 >> 1), &v89, ++v51, v87);
          LOWORD(v9) = v9 + 1;
          LOWORD(v91) = v9;
          FillSubunit(a2, &v90, v8 + 56 * v50, v60, (v60 & 1) + (v60 >> 1), &v89, &v92, v87);
          LODWORD(v7) = v7 + 1;
          if (v60 < *(a2 + 32))
          {
            continue;
          }
        }

        v73 = v52;
        v49 = v51 + 1;
        v3 = 0;
        v7 = v85;
LABEL_120:
        if (v86)
        {
          v75 = v49;
        }

        else
        {
          v75 = 0;
        }

        *(a2 + 120) = v9;
        *(a2 + 106) = v75;
        v76 = *(a2 + 64);
        if (*v76 == 35)
        {
          *(v8 + 48) = 68;
          *(v8 + 104) = *(v8 + 104) & 0xF0 | 4;
        }

        if (v76[v73] == 35)
        {
          v77 = v8 + 56 * v9;
          *(v77 - 64) = *(v77 - 64) & 0xF | 0x40;
          *(v77 - 8) = 68;
        }

        if (v9 < 3u)
        {
LABEL_25:
          if (!v3 && (v25 & 0x80000000) == 0 && v86)
          {
            v26 = *(a2 + 16);
            if ((v26 & 1) == 0)
            {
              v27 = *(a2 + 128);
              v28 = *(a2 + 112) + 16 * *(v27 + 44);
              if (*(v28 + 12) == 35)
              {
                *(v27 + 48) = *(v27 + 48) & 0xF0 | 1;
                v29 = *(v27 + 40);
                v30 = *(v27 + 32);
                v31 = *(v28 + 4);
                v32 = 10 * v29;
                v33 = v29 > 0;
                v34 = v31 > 50;
                v35 = v32 - v31;
                if (v32 >= v31)
                {
                  v36 = *(v28 + 4);
                }

                else
                {
                  v36 = v32;
                }

                if (v32 <= v31)
                {
                  v35 = 15;
                }

                v37 = !v33 || !v34;
                if (v33 && v34)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = *(v28 + 4);
                }

                if (!v37)
                {
                  v32 = v35;
                }

                v39 = v32 / 10;
                v40 = v31 - v38;
                v41 = __OFSUB__(v30, v40);
                v42 = v30 - v40;
                if (v42 < 0 == v41)
                {
                  *(v28 + 4) = v38;
                  *(v27 + 28) += v40;
                  *(v27 + 32) = v42;
                }

                *(v27 + 40) = v39;
              }
            }

            if ((v26 & 4) == 0)
            {
              v43 = *(a2 + 128) + 56 * v9;
              if (*(*(a2 + 112) + 16 * *(v43 - 12) + 16 * *(v43 - 10) - 4) == 35)
              {
                *(v43 - 8) = *(v43 - 8) & 0xF | 0x10;
              }
            }
          }

          return v25;
        }

        v78 = (v8 + 104);
        v79 = 1;
        while (2)
        {
          v80 = *v78;
          if ((v80 & 0xF) == 0 && *(v78 - 1) == 1)
          {
            v81 = 65;
            v82 = 4;
            v83 = -16;
            v84 = 1;
            goto LABEL_135;
          }

          if (v80 <= 0xF && *(v78 - 1) == 1)
          {
            v81 = 20;
            v82 = 64;
            v83 = 15;
            v84 = -1;
LABEL_135:
            *(v78 - 4) = 3;
            *(v7 + 16 * *(v78 - 2) + 4) = 3;
            *(v8 + 56 * (v79 + v84) + 48) = *(v8 + 56 * (v79 + v84) + 48) & v83 | v82;
            *v78 = v81;
          }

          ++v79;
          v78 += 56;
          if (v9 - 1 == v79)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      v53 = v8 + 56 * v50;
      v54 = v7;
      while (1)
      {
        v7 = v54;
        v56 = *(*(a2 + 64) + v52) != 35 && *(*(a2 + 96) + 2 * v52) == 0 && BYTE12(v89) == 0;
        if (!v56 || cstdlib_abs((DWORD1(v88) - (DWORD1(v89) + DWORD2(v89)))) > 3)
        {
          goto LABEL_84;
        }

        ++v54;
        if (v7 + 1 >= *(a2 + 32))
        {
          goto LABEL_83;
        }

        v52 = (v54 & 1) + (v54 >> 1);
        v89 = v88;
        *(v53 + 32) += DWORD2(v88);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v58 = *(*(a2 + 96) + 2 * v52);
        v57 = *(v53 + 48) & 0xF;
        *(v53 + 48) = v57 | 0x20;
        if (v58)
        {
          goto LABEL_79;
        }

        if (*(*(a2 + 88) + v52) == 80)
        {
          v57 |= 0x40u;
          goto LABEL_79;
        }

LABEL_80:
        v59 = v86;
        if (v86)
        {
          v59 = *(v53 + 46) + 1;
        }

        *(v53 + 46) = v59;
        FillSubunit(a2, &v90, v8 + 56 * v50, v7 + 1, (v54 & 1) + (v54 >> 1), &v89, &v92, v87);
        v25 = Lookup_GetUnitData(**(*(a2 + 40) + 8 * v7 + 16), *(*(a2 + 24) + 4 * v7 + 8), &v88);
        ++v51;
        if (v54 >= *(a2 + 32))
        {
LABEL_83:
          LODWORD(v7) = v7 + 1;
          goto LABEL_84;
        }
      }

      v57 = *(v53 + 48) & 0xF | 0x20;
LABEL_79:
      *(v53 + 48) = v57;
      goto LABEL_80;
    }
  }

  return v25;
}

void *FillUnit(void *result, uint64_t a2, int a3, int a4, uint64_t a5, __int16 a6, int a7)
{
  *a2 = *a5;
  v7 = result[6];
  *(a2 + 8) = *(result[5] + 8 * a3);
  v8 = *(v7 + 4 * a3);
  LODWORD(v7) = *(v7 + 2 * ((2 * a3) | 1));
  *(a2 + 16) = v8;
  *(a2 + 20) = v7;
  *(a2 + 28) = *(a5 + 4);
  *(a2 + 36) = 0;
  v9 = *(result[12] + 2 * a4);
  *(a2 + 48) = 34;
  if (a3)
  {
    *(a2 + 40) = 0;
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      if (*(result[11] + a4) != 80)
      {
        goto LABEL_11;
      }

      v10 = 66;
    }
  }

  else if (v9)
  {
    *(a2 + 40) = v9;
    v10 = 32;
  }

  else
  {
    *(a2 + 40) = 0;
    if (*(result[11] + a4) != 80)
    {
      goto LABEL_11;
    }

    v10 = 36;
  }

  *(a2 + 48) = v10;
LABEL_11:
  if (a7 != 1)
  {
    a6 = 0;
  }

  *(a2 + 46) = a7 == 1;
  *(a2 + 44) = a6;
  return result;
}

uint64_t FillSubunit(uint64_t result, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, _WORD *a7, int a8)
{
  if (!a8)
  {
    *(a3 + 44) = 0;
    return result;
  }

  v8 = *(a2 + 8) + 16 * *(a3 + 44) + 16 * *(a3 + 46);
  *(v8 - 4) = *(*(result + 64) + a5);
  v9 = *(a6 + 8);
  *(v8 - 12) = v9;
  if (*(a2 + 16) == 1)
  {
    if ((a4 & 1) == 0)
    {
      v10 = *(*a2 + 46);
      *(v8 - 16) = 0;
      *(v8 - 8) = *a7;
      if (a5 || v10 != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((a4 & 1) == 0)
  {
    *(v8 - 16) = 0;
    *(v8 - 8) = *a7;
LABEL_10:
    *(v8 - 6) = 0;
    return result;
  }

  v11 = *(result + 72) - 1;
  *(v8 - 16) = 0;
  *(v8 - 8) = *a7;
  if (v11 != a5)
  {
LABEL_29:
    v24 = *(*(result + 80) + 2 * a5);
    *(v8 - 6) = v24;
    *a7 += v24;
    return result;
  }

  v12 = *(result + 16) & 4;
  v13 = *(*(result + 80) + 2 * a5);
  *(v8 - 6) = v13;
  *a7 += v13;
  v14 = *(*(result + 96) + 2 * a5);
  if (!*(*(result + 96) + 2 * a5) || !*(a3 + 46))
  {
    v25 = (v12 << 14) | 0x20000;
LABEL_32:
    *(v8 - 16) = v25;
    return result;
  }

  if (v12)
  {
    v25 = v14 | 0x30000;
    goto LABEL_32;
  }

  v15 = 10 * v14;
  if (v15 >= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v15 <= v9)
  {
    v17 = 15;
  }

  else
  {
    v17 = v15 - v9;
  }

  if (v9 <= 50)
  {
    v18 = v9;
  }

  else
  {
    v18 = v16;
  }

  if (v9 > 50)
  {
    v15 = v17;
  }

  v19 = v15 / 10;
  v20 = v9 - v18;
  v21 = *(a3 + 32);
  v22 = __OFSUB__(v21, v20);
  v23 = v21 - v20;
  if (v23 < 0 == v22)
  {
    *(v8 - 12) = v18;
    *(a3 + 32) = v23;
  }

  *(v8 - 16) = 0x20000;
  *(result + 104) = v19;
  return result;
}

uint64_t synth_Wsola__Wsola(uint64_t a1)
{
  v2 = *(a1 + 1088);
  *(v2 + 144) = 0;
  *(v2 + 88) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = 0;
  *(v2 + 20) = 0;
  *(v2 + 36) = 0;
  *(v2 + 28) = 0;
  *(v2 + 44) = 0;
  v3 = *(a1 + 1040);
  if (v3 > 15999)
  {
    if (v3 == 16000)
    {
      v4 = 160;
    }

    else
    {
      if (v3 != 22050)
      {
        goto LABEL_8;
      }

      v4 = 220;
    }

    *v2 = v4;
    v5 = 4;
    goto LABEL_13;
  }

  if (v3 == 8000)
  {
    v4 = 80;
    goto LABEL_10;
  }

  if (v3 != 11025)
  {
LABEL_8:
    v4 = *v2;
    goto LABEL_14;
  }

  v4 = 112;
LABEL_10:
  *v2 = v4;
  v5 = 2;
LABEL_13:
  *(v2 + 16) = v5;
LABEL_14:
  *(v2 + 4) = v4 >> 1;
  *(v2 + 8) = 2 * v4;
  *(v2 + 12) = 3 * v4;
  *(v2 + 64) = v2 + 112;
  *(v2 + 72) = v2 + 128;
  *(v2 + 48) = v2 + 80;
  *(v2 + 56) = v2 + 96;
  Wsola__OverlapWindow__Init(v2, v3);
  v6 = *(a1 + 1088);
  v7 = *(a1 + 1040);
  if (v7 > 15999)
  {
    if (v7 == 16000)
    {
      v8 = 216;
      *(v6 + 184) = 216;
      *(v6 + 196) = 188;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x500000020;
      v9 = 6;
      goto LABEL_24;
    }

    if (v7 == 22050)
    {
      v8 = 298;
      *(v6 + 184) = 298;
      *(v6 + 196) = 260;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x50000002CLL;
      v9 = 8;
      goto LABEL_24;
    }
  }

  else
  {
    if (v7 == 8000)
    {
      v8 = 108;
      *(v6 + 184) = 108;
      *(v6 + 196) = 94;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x500000010;
      v9 = 2;
      goto LABEL_24;
    }

    if (v7 == 11025)
    {
      v8 = 149;
      *(v6 + 184) = 149;
      *(v6 + 196) = 130;
      *(v6 + 208) = *v6;
      *(v6 + 212) = 0x500000016;
      v9 = 4;
LABEL_24:
      *(v6 + 220) = v9;
      goto LABEL_25;
    }
  }

  v8 = *(v6 + 184);
LABEL_25:
  *(v6 + 180) = 1;
  *(v6 + 188) = v8 >> 1;
  *(v6 + 192) = v8;
  v10 = *(v6 + 4);
  *(v6 + 200) = v10;
  *(v6 + 204) = v10 >> 1;
  *(v2 + 224) = 0;
  return 0;
}

void synth_doWsolaSynthesis(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1088);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  Psola_GetSynthMode(a1, &v22 + 1, v24, v23, &v22, &v21 + 1, &v21, &v20);
  Synth_LinkMsgLayers(a1);
  if ((v3 & 0x80000000) == 0 && (synthfx_ExtractFeaturesForSynth_Demi(SHIDWORD(v22) > 0, a1 + 512) & 0x80000000) == 0)
  {
    if ((Synth_Reset(a1) & 0x80000000) == 0 && (Synth__InitForProcessing(a1) & 0x80000000) == 0 && (InOut__GetClientBuffer(a1, v4, v5, v6, v7, v8, v9, v10) & 0x80000000) == 0 && !InOut__IsEndState(a1) && *(a1 + 1024))
    {
      *(v2 + 144) = 0;
      if (SHIDWORD(v22) < 2)
      {
        if (HIDWORD(v22) == 1)
        {
          v17 = v22;
          if (v22 >= 1)
          {
            v17 = 10 * v22;
            LODWORD(v22) = 10 * v22;
          }

          v18 = HIDWORD(v21);
          if (SHIDWORD(v21) >= 1)
          {
            v18 = 10 * HIDWORD(v21);
            HIDWORD(v21) *= 10;
          }

          v19 = v21;
          if (v21 >= 1)
          {
            v19 = 10 * v21;
            LODWORD(v21) = 10 * v21;
          }

          Psola_Process(a1, v17, v18, v19);
        }

        else
        {
          Wsola__Process(a1, HIDWORD(v22), v11, v12, v13, v14, v15, v16);
        }
      }

      else
      {
        Psola_DoSpecTreatment();
      }
    }

    Synth_UnlinkMsgLayers(a1);
  }
}

uint64_t synth_SetWaitPeriod(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return 2164269071;
  }

  result = 0;
  *(a1 + 1044) = a2;
  v4 = 1717986919 * (*(a1 + 1040) * 2 * (a2 & 0x7FFF) + 5);
  *(a1 + 1048) = (v4 >> 34) + (v4 >> 63);
  return result;
}

uint64_t synth_SetRateBaseline(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x32)
  {
    v2 = 50;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 0x190)
  {
    v3 = 400;
  }

  else
  {
    v3 = v2;
  }

  *(a1 + 1056) = v3;
  *(a1 + 1052) = MapProsodyValue_Scaling(50, 100, 400, v3, 100);
  return 0;
}

uint64_t synth_SetPitchBaseline(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xC8)
  {
    v2 = 200;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= 0x32)
  {
    v3 = 50;
  }

  else
  {
    v3 = v2;
  }

  *(a1 + 1060) = v3;
  *(a1 + 1054) = MapProsodyValue_Scaling(50, 100, 200, v3, 100);
  return 0;
}

uint64_t CheckForVFStateTriggers(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 25)
  {
    return 0;
  }

  __s[5] = v2;
  __s[6] = v3;
  __s[0] = 0;
  v12 = 0;
  paramc_ParamGetStr(*(*(a1 + 16) + 40), "waitfactor", __s);
  paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v12);
  result = 0;
  if (v12 != 1)
  {
    if ((paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", a2[6]) & 0x80000000) != 0)
    {
      v7 = *(*(a1 + 16) + 40);
      v8 = __s[0];
      v9 = cstdlib_strlen(__s[0]);
      paramc_ParamRipple(v7, "waitfactor", v8, (v9 + 1));
    }

    paramc_ParamRelease(*(*(a1 + 16) + 40));
    v10 = a2[6];
    if (v10 <= 9u)
    {
      result = 0;
      *(a1 + 1044) = v10;
      v11 = 1717986919 * (*(a1 + 1040) * 2 * (v10 & 0xF) + 5);
      *(a1 + 1048) = (v11 >> 34) + (v11 >> 63);
    }

    else
    {
      return 2164269071;
    }
  }

  return result;
}

uint64_t synth_ProcessMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1082);
  if (v8 < *(a1 + 1080))
  {
    v10 = 32 * v8;
    do
    {
      if (*(a1 + 1152))
      {
        v11 = *(a1 + 648);
        v12 = *(v11 + v10);
        if (v12 == 16)
        {
          if (*(v11 + v10 + 24) != 100)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45002, "%s%u", a5, a6, a7, a8, "pitch");
          }
        }

        else if (v12 == 13)
        {
          result = synth_ResetParams(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      result = CheckForVFStateTriggers(a1, (*(a1 + 648) + v10));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      ++v8;
      v10 += 32;
    }

    while (v8 < *(a1 + 1080));
  }

  return 0;
}

uint64_t synth_splitGID(uint64_t a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v4 = *(a1 + 928);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 928);
  }

  v6 = (v5 - 1);
  v7 = 1;
  v8 = 64;
  while (v6 + v7 != 1)
  {
    v9 = *(a1 + 936);
    v10 = *(v9 + v8);
    --v7;
    v8 += 40;
    if (v10 > a2)
    {
      v6 = -v7;
LABEL_10:
      v11 = 5 * v6;
      *a3 = v9 + 8 * v11;
      v12 = a2 - *(*(a1 + 936) + 8 * v11 + 24);
      goto LABEL_11;
    }
  }

  if (v4)
  {
    v9 = *(a1 + 936);
    goto LABEL_10;
  }

  v12 = 0;
  *a3 = 0;
LABEL_11:
  *a4 = v12;
  return 0;
}

uint64_t InOut__PutVectorInBuffer(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 < 1)
  {
    a4 = 0;
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(v4 + 8);
    v6 = a4;
    v7 = (*(a2 + 8) + 4 * a3);
    do
    {
      v8 = *v7++;
      *v5++ = v8;
      --v6;
    }

    while (v6);
  }

  *(v4 + 4) = a4;
  return a4;
}

uint64_t InOut__GetClientBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1008);
  if (v8)
  {
    v9 = *(*(a1 + 1000) + 56);
  }

  else
  {
    v9 = *(*(a1 + 984) + 56);
    v8 = *(a1 + 992);
  }

  return InOut__PutOutput(a1, v9, v8, *(a1 + 1076) == 0, a5, a6, a7, a8);
}

uint64_t InOut__PutOutput(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 1072);
  if (v11 == 1)
  {
    v15 = a4;
    result = synth_ProcessMarkers(a1, a2, a3, a4, a5, a6, a7, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v16 = *(a1 + 1080);
    v17 = *(a1 + 1082);
    v18 = (v16 - v17);
    if (v16 == v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(a1 + 648) + 32 * v17;
    }

    *(a1 + 1082) = v16;
    if (v15)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    *(a1 + 1032) = v20;
    v21 = *(a1 + 1024);
    v22 = v21 != 0;
    v23 = v21 - 1;
    if (!v22)
    {
      v23 = 0;
    }

    if (v16 != v17)
    {
      v24 = (v19 + 12);
      v25 = v18;
      do
      {
        if (*v24 > v23)
        {
          *v24 = v23;
        }

        v24 += 8;
        --v25;
      }

      while (v25);
    }

    result = a2(a3, v20, a1 + 1016, a1 + 1024, v19, v18);
    if ((result & 0x80000000) == 0 && *(a1 + 1016) && v15 && *(a1 + 1024))
    {
      *(a1 + 1084) += *(a1 + 1036);
      *(a1 + 1036) = 0;
      *(a1 + 1028) = 0;
      return result;
    }

    goto LABEL_27;
  }

  if (v11)
  {
    return 0;
  }

  *(a1 + 1024) = 0;
  *(a1 + 1036) = 0;
  v12 = (a1 + 1016);
  result = a2(a3, *(a1 + 1032), a1 + 1016, a1 + 1024, 0, 0);
  if ((result & 0x80000000) != 0 || !*(a1 + 1024) || !*v12)
  {
LABEL_27:
    v14 = 2;
    goto LABEL_28;
  }

  v14 = 1;
LABEL_28:
  *(a1 + 1072) = v14;
  return result;
}

uint64_t InOut__DecodeToVector(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  if (a3 < 1)
  {
    result = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 1088);
  v15 = a3;
  v8 = *(*(v7 + 72) + 4);
  if (v8 < 1)
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    result = Lookup_Decode(a2, &v15, *(v7 + 40) + 2 * v9);
    v5 = v15 + v9;
    if (v15 + v9 < 1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  purgeBufferToVector(v7, &v15, *(v7 + 40));
  v9 = v15;
  v15 = v5 - v15;
  if (!*(*(v7 + 72) + 4))
  {
    goto LABEL_7;
  }

LABEL_4:
  result = 0;
LABEL_8:
  v11 = *(v7 + 40);
  v12 = *(a4 + 8);
  v13 = v5;
  do
  {
    v14 = *v11++;
    *v12++ = v14;
    --v13;
  }

  while (v13);
LABEL_10:
  *(a4 + 4) = v5;
  return result;
}

uint64_t purgeBufferToVector(uint64_t result, _DWORD *a2, _WORD *a3)
{
  LODWORD(v3) = *a2;
  if (*a2 < 1 || (v4 = *(result + 72), v5 = *(v4 + 4), v5 < 1))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    if (v3 >= v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = v3;
    }

    v6 = *(v4 + 8);
    v7 = v3;
    do
    {
      v8 = *v6++;
      *a3++ = v8;
      --v7;
    }

    while (v7);
    if (v3 >= v5)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v9 = 0;
      v10 = *(v4 + 8);
      do
      {
        *(v10 + 4 * v9) = *(v10 + 4 * v3 + 4 * v9);
        ++v9;
      }

      while (*(v4 + 4) > v3 + v9);
    }

    *(v4 + 4) = v9;
  }

  *a2 = v3;
  return result;
}

uint64_t InOut__AudioWriteToClient__No_Subunits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 1)
  {
    return 0;
  }

  v8 = a3;
  v11 = *(a1 + 1088);
  do
  {
    v12 = *(a1 + 1028);
    v13 = *(a1 + 1024);
    if (v12 >= v13)
    {
      result = InOut__GetClientBuffer(a1, a2, a3, a4, a5, a6, a7, a8);
      if ((result & 0x80000000) != 0 || *(a1 + 1072) == 2)
      {
        return result;
      }

      v13 = *(a1 + 1024);
      v12 = *(a1 + 1028);
    }

    v15 = v13 - v12;
    if (v8 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v8;
    }

    *(v11 + 144) += v16;
    result = synthDecodeToClient(a1, a2, v16, a4, a5, a6, a7, a8);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v8 -= v16;
  }

  while (*(a1 + 1072) != 2 && v8 > 0);
  return result;
}

uint64_t synthDecodeToClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a1 + 1088);
  v12 = *(a1 + 1028);
  v13 = *(a1 + 1024);
  if (v12 < v13)
  {
    result = 0;
    goto LABEL_7;
  }

  result = InOut__GetClientBuffer(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0 && *(a1 + 1072) != 2)
  {
    v13 = *(a1 + 1024);
    v12 = *(a1 + 1028);
LABEL_7:
    v15 = v13 - v12;
    if (v15 >= v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = v15;
    }

    v24 = v16;
    v17 = *(*(v11 + 72) + 4);
    if (v17 >= 1)
    {
      purgeBufferToVector(v11, &v24, (*(a1 + 1016) + 2 * v12));
      result = 0;
      v18 = v24;
      v12 = *(a1 + 1028) + v24;
      *(a1 + 1028) = v12;
      v24 = v16 - v18;
      v17 = *(*(v11 + 72) + 4);
    }

    if (v17)
    {
      do
      {
LABEL_15:
        *(a1 + 1036) += v16;
        v8 -= v16;
        if (!v8)
        {
          return result;
        }

        result = InOut__GetClientBuffer(a1, a2, a3, a4, a5, a6, a7, a8);
        if ((result & 0x80000000) != 0 || *(a1 + 1072) == 2)
        {
          return result;
        }

        v20 = *(a1 + 1028);
        if (*(a1 + 1024) - v20 >= v8)
        {
          v16 = v8;
        }

        else
        {
          v16 = *(a1 + 1024) - v20;
        }

        v23 = v16;
        v21 = *(*(v11 + 72) + 4);
        if (v21 >= 1)
        {
          purgeBufferToVector(v11, &v23, (*(a1 + 1016) + 2 * v20));
          result = 0;
          v22 = v23;
          LODWORD(v20) = *(a1 + 1028) + v23;
          *(a1 + 1028) = v20;
          v23 = v16 - v22;
          v21 = *(*(v11 + 72) + 4);
        }
      }

      while (v21);
      result = Lookup_Decode(a2, &v23, *(a1 + 1016) + 2 * v20);
      v19 = v23;
    }

    else
    {
      result = Lookup_Decode(a2, &v24, *(a1 + 1016) + 2 * v12);
      v19 = v24;
    }

    *(a1 + 1028) += v19;
    goto LABEL_15;
  }

  return result;
}

uint64_t synth_LimitMarkersDestPos(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a2 + 12);
    do
    {
      if (*v4 > result)
      {
        *v4 = result;
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t InOut__AudioWriteToClientWithMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 1)
  {
    return 0;
  }

  else
  {
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v12 = *(a1 + 1088);
    if ((a2 & 0x80000000) != 0)
    {
      if (*(a1 + 618))
      {
        v47 = 0;
        v48 = 0;
        goto LABEL_21;
      }

      v13 = 0;
    }

    else
    {
      v13 = **(*(v12 + 152) + 56 * a2 + 8);
      if (*(a1 + 618))
      {
        v48 = 0;
        v47 = v13;
        if (Wsola__findNextEventInSubUnit(v12, a2, &v48) && *(*(v12 + 160) + 16 * (v48 + *(*(v12 + 152) + 56 * v10 + 44))) < *(v12 + 144))
        {
          do
          {
            v14 = *(v12 + 152);
            v15 = v14 + 56 * v10;
            if (v48 >= *(v15 + 46))
            {
              break;
            }

            v16 = *(v12 + 160);
            v17 = v16 + 16 * (v48 + *(v15 + 44));
            if (*v17 >= *(v12 + 144))
            {
              break;
            }

            v18 = *(v17 + 8);
            v19 = *(v17 + 10);
            if (v19 + v18 > *(a1 + 656))
            {
              log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45000, "%s%u%s%u%s%u", a5, a6, a7, a8, "index");
              v19 = *(a1 + 656);
              if (v18 >= v19)
              {
                v18 = *(a1 + 656);
              }

              LOWORD(v19) = v19 - v18;
              v14 = *(v12 + 152);
              v16 = *(v12 + 160);
            }

            v20 = *(v14 + 56 * v10 + 44);
            if (v19)
            {
              v21 = *(a1 + 1084);
              v22 = v19;
              v23 = *(a1 + 648) + 32 * v18 + 16;
              do
              {
                *(v23 - 4) = (*(v16 + 16 * (v48 + v20)) - v21);
                v23 += 32;
                --v22;
              }

              while (v22);
            }

            *(v16 + 16 * (v48 + v20) + 10) = 0;
            *(a1 + 1080) = v19 + v18;
          }

          while (Wsola__findNextEventInSubUnit(v12, v10, &v48));
        }

        while (1)
        {
LABEL_21:
          v26 = *(a1 + 1028);
          v27 = *(a1 + 1024);
          if (v26 >= v27)
          {
            ClientBuffer = InOut__GetClientBuffer(a1, a2, a3, a4, a5, a6, a7, a8);
            if ((ClientBuffer & 0x80000000) != 0 || *(a1 + 1072) == 2)
            {
              return ClientBuffer;
            }

            v27 = *(a1 + 1024);
            v26 = *(a1 + 1028);
          }

          v28 = v27 - v26;
          if (v9 >= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v9;
          }

          *(v12 + 144) += v29;
          if (v9 <= v28)
          {
            v30 = 1;
          }

          else
          {
            v30 = 2;
          }

          if (v8 == 2)
          {
            v8 = v30;
          }

          if ((v10 & 0x80000000) == 0)
          {
            v31 = v48;
            v32 = *(v12 + 152);
            if (v48 < *(v32 + 56 * v10 + 46))
            {
              break;
            }
          }

LABEL_55:
          ClientBuffer = synthDecodeToClient(a1, v47, v29, a4, a5, a6, a7, a8);
          if ((ClientBuffer & 0x80000000) == 0 && *(a1 + 1072) != 2)
          {
            v9 -= v29;
            if ((v10 & 0x80000000) == 0 && v9 >= 1)
            {
              Wsola__findNextEventInSubUnit(v12, v10, &v48);
            }

            if (v9 > 0)
            {
              continue;
            }
          }

          return ClientBuffer;
        }

        v33 = *(v12 + 160);
        while (1)
        {
          v34 = *(v32 + 56 * v10 + 44);
          if (v8 == 1)
          {
            v35 = v31 + v34;
            v36 = *(v12 + 144);
            if (*(v33 + 16 * v35 + 10))
            {
              v37 = *(v33 + 16 * v35);
              goto LABEL_43;
            }
          }

          else
          {
            v36 = *(v12 + 144);
            v35 = v34 + v31;
          }

          v38 = (v33 + 16 * v35);
          v37 = *v38;
          if (*v38 <= v36 && *(v38 + 5))
          {
            if (v8 == 1)
            {
LABEL_43:
              if (v37 < v36)
              {
                v36 = v37;
              }

              *(v33 + 16 * v35) = v36;
            }

            v39 = v33 + 16 * v35;
            v40 = *(v39 + 8);
            v41 = *(v39 + 10);
            if (v41 + v40 > *(a1 + 656))
            {
              log_OutPublic(*(*(a1 + 16) + 32), "SYNTH", 45000, "%s%u%s%u%s%u", a5, a6, a7, a8, "index");
              v42 = *(a1 + 656);
              if (v40 >= v42)
              {
                v40 = *(a1 + 656);
              }

              LOWORD(v41) = v42 - v40;
              v32 = *(v12 + 152);
              v33 = *(v12 + 160);
            }

            v43 = v31 + *(v32 + 56 * v10 + 44);
            if (v41)
            {
              v44 = *(v33 + 16 * v43) - *(a1 + 1084);
              v45 = v41;
              v46 = (*(a1 + 648) + 32 * v40 + 16);
              do
              {
                *(v46 - 1) = v44;
                *v46 = 0;
                v46 += 8;
                --v45;
              }

              while (v45);
            }

            *(v33 + 16 * v43 + 10) = 0;
            *(a1 + 1080) = v41 + v40;
          }

          if (++v31 >= *(v32 + 56 * v10 + 46))
          {
            goto LABEL_55;
          }
        }
      }
    }

    return InOut__AudioWriteToClient__No_Subunits(a1, v13, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t InOut__InsertSilence(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 1088);
  v7 = **(v6 + 72);
  v8 = *(v6 + 48);
  if (v7 >= *v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = v7;
  }

  Wsola__zero(*(v8 + 1), 0, v9);
  result = 0;
  if (v9 >= 1 && a2 >= 1)
  {
    do
    {
      v16 = a2;
      if (v9 < a2)
      {
        v16 = v9;
      }

      if (a2 >= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = a2;
      }

      v18 = *(*(v6 + 48) + 8);
      v19 = *(v6 + 72);
      v20 = *(v19 + 8);
      do
      {
        v21 = *v18++;
        *v20++ = v21;
        --v16;
      }

      while (v16);
      *(v19 + 4) = v17;
      result = InOut__AudioWriteToClientWithMarkers(a1, a3, v17, 0, v10, v11, v12, v13);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v22 = *(a1 + 1072) == 2 || (a2 - v9) <= 0;
      a2 -= v9;
    }

    while (!v22);
  }

  return result;
}

uint64_t Psola_OutputDataPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v12 = *(a1 + 1028);
  v13 = *(a1 + 1024);
  if (v12 >= v13)
  {
    ClientBuffer = InOut__GetClientBuffer(a1, a2, a3, a4, a5, a6, a7, a8);
    if ((ClientBuffer & 0x80000000) != 0)
    {
      return ClientBuffer;
    }

    if (InOut__IsEndState(a1))
    {
LABEL_24:
      InOut__IsEndState(a1);
      return ClientBuffer;
    }

    v13 = *(a1 + 1024);
    v12 = *(a1 + 1028);
  }

  else
  {
    ClientBuffer = 0;
  }

  LODWORD(v15) = v13 - v12;
  if (v15 >= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v15;
  }

  if (v15 >= 1)
  {
    v16 = *(a1 + 1016);
    v17 = (a2 + 2 * v9);
    v18 = v12;
    v19 = v15;
    do
    {
      v20 = *v17++;
      *(v16 + 2 * v18++) = v20;
      --v19;
    }

    while (v19);
  }

  *(a1 + 1028) = v15 + v12;
  *(a1 + 1036) += v15;
  v21 = v8 - v15;
  if (!v21)
  {
LABEL_23:
    if ((ClientBuffer & 0x80000000) != 0)
    {
      return ClientBuffer;
    }

    goto LABEL_24;
  }

  v22 = v15 + v9;
  while (1)
  {
    ClientBuffer = InOut__GetClientBuffer(a1, a2, a3, a4, a5, a6, a7, a8);
    if ((ClientBuffer & 0x80000000) != 0)
    {
      return ClientBuffer;
    }

    if (InOut__IsEndState(a1))
    {
      goto LABEL_24;
    }

    v23 = *(a1 + 1028);
    LODWORD(v24) = *(a1 + 1024) - v23;
    if (v24 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v24;
    }

    if (v24 >= 1)
    {
      v25 = *(a1 + 1016);
      v26 = (a2 + 2 * v22);
      v27 = *(a1 + 1028);
      v28 = v24;
      do
      {
        v29 = *v26++;
        *(v25 + 2 * v27++) = v29;
        --v28;
      }

      while (v28);
    }

    v22 += v24;
    *(a1 + 1028) = v24 + v23;
    *(a1 + 1036) += v24;
    v21 -= v24;
    if (!v21)
    {
      goto LABEL_23;
    }
  }
}

uint64_t Psola_GetDecodedUnitData_VE(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, uint64_t a7, char *a8, unsigned int *a9, _DWORD *a10, unsigned int *a11)
{
  v11 = a7;
  v17 = *a2;
  if (*a2)
  {
    v32 = 0;
    v33 = 0;
    UnitData = Lookup_GetUnitData(v17, a3, &v32);
    if ((UnitData & 0x80000000) == 0)
    {
      v19 = Convert2Samples(a1, HIDWORD(v32));
      if (a5 < 0)
      {
        a5 = Convert2Samples(a1, v33);
      }

      if (a6 + a4 + a5 > v11)
      {
        *a9 = 0;
        *a10 = 0;
        v20 = 2164269065;
        *a11 = 0;
        return v20;
      }

      if (v19 >= a4)
      {
        v27 = a4;
      }

      else
      {
        v27 = v19;
      }

      *a9 = v27;
      *a10 = a5;
      *a11 = a6;
      return Lookup_GetDecodedData(*a2, v19 - *a9, *a9 + a6 + *a10, a8);
    }

    return UnitData;
  }

  v21 = a2[1];
  if (!v21)
  {
    return 0;
  }

  LODWORD(v32) = a4;
  v30 = 0;
  v31 = a6 + 10;
  v20 = (*(*(a1 + 952) + 48))(v21, a3, &v32, &v31, &v30, a8, a7);
  if ((v20 & 0x80000000) == 0)
  {
    v23 = v32;
    *a9 = v32;
    if (a5 < 0)
    {
      v26 = v31;
      *a10 = v30 - (v23 + v31);
    }

    else
    {
      if (a6 + a4 + a5 >= v11)
      {
        v24 = v11;
      }

      else
      {
        v24 = a6 + a4 + a5;
      }

      v25 = v30;
      if (v30 < v24)
      {
        bzero(&a8[2 * v30], 2 * (v24 + ~v30) + 2);
        v25 = v24;
      }

      *a10 = a5;
      v26 = v25 - (v23 + a5);
    }

    *a11 = v26;
  }

  return v20;
}

uint64_t Psola_IsAdjacent(uint64_t a1, void **a2, signed int a3, void **a4, signed int a5, _DWORD *a6)
{
  v15 = 0;
  v16 = 0;
  v14[0] = 0;
  v14[1] = 0;
  *a6 = 0;
  if (**(a1 + 936))
  {
    v6 = a2 == a4;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && a3 >= 1 && a5 >= 1)
  {
    Lookup_GetUnitData(*a2, a3, &v15);
    Lookup_GetUnitData(*a4, a5, v14);
    v13 = cstdlib_abs((HIDWORD(v14[0]) - (HIDWORD(v15) + v16)));
    if (v13 <= 3)
    {
      *a6 = 1;
    }
  }

  return 0;
}

uint64_t Psola_Process(uint64_t a1, int a2, int a3, int a4)
{
  ClientBuffer = 2164269066;
  v9 = *(a1 + 1088);
  v73 = 0;
  *v74 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v10 = heap_Alloc(*(*(a1 + 16) + 8), 4812);
  if (!v10)
  {
    return ClientBuffer;
  }

  v11 = v10;
  v12 = heap_Alloc(*(*(a1 + 16) + 8), 48000);
  if (!v12)
  {
    v22 = 0;
    v67 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v14 = 0;
    goto LABEL_47;
  }

  v13 = heap_Calloc(*(*(a1 + 16) + 8), 1, 48);
  v14 = v13;
  if (!v13 || (*(v13 + 8) = 961, v15 = heap_Alloc(*(*(a1 + 16) + 8), 1922), (*v14 = v15) == 0) || (v14[3] = 961, v16 = heap_Alloc(*(*(a1 + 16) + 8), 1922), (v14[2] = v16) == 0) || (v14[5] = 961, v17 = heap_Alloc(*(*(a1 + 16) + 8), 1922), (v14[4] = v17) == 0))
  {
    v22 = 0;
    v67 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_47;
  }

  v18 = heap_Alloc(*(*(a1 + 16) + 8), 60008);
  if (!v18)
  {
    v22 = 0;
    v67 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_47;
  }

  v57 = a2;
  v19 = heap_Alloc(*(*(a1 + 16) + 8), 60008);
  if (!v19)
  {
    v22 = 0;
    v67 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_47;
  }

  v55 = a3;
  v20 = heap_Alloc(*(*(a1 + 16) + 8), 60008);
  if (!v20)
  {
    v22 = 0;
    v67 = 0;
    v21 = 0;
    goto LABEL_47;
  }

  v58 = a4;
  v21 = heap_Alloc(*(*(a1 + 16) + 8), 60006);
  if (!v21 || (v67 = heap_Alloc(*(*(a1 + 16) + 8), 60006)) == 0)
  {
    v22 = 0;
    v67 = 0;
    goto LABEL_47;
  }

  v65 = v9;
  v22 = heap_Alloc(*(*(a1 + 16) + 8), 60006);
  if (!v22)
  {
    goto LABEL_47;
  }

  bzero(v11, 0x12CCuLL);
  *v18 = 0;
  *v21 = 0;
  v21[2] = 0;
  *v19 = 0;
  *v67 = 0;
  v67[2] = 0;
  UnitModif = Psola_SetUpCrossFading(a1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 100, 100, v21, v67, &v73, &v72 + 1);
  if ((UnitModif & 0x80000000) != 0)
  {
LABEL_74:
    ClientBuffer = UnitModif;
    goto LABEL_47;
  }

  v63 = 0;
  v24 = 0;
  v56 = 0;
  v74[0] = 0;
  LODWORD(v25) = *(v65 + 168);
  v59 = 1;
  v26 = -1;
  v27 = -1;
  do
  {
    v61 = v26;
    v62 = v27;
    v66 = v24;
    if (v24 >= v25)
    {
      v60 = 0;
      v64 = -1;
    }

    else
    {
      v28 = *(v65 + 152) + v63;
      v64 = *v28;
      v60 = *(v28 + 8);
      Psola_checkMarker(a1, v65, v24);
      v24 = v66;
      LOWORD(v25) = *(v65 + 168);
    }

    if (v24 < v25 && (Psola_SilUnitLen(a1, *(v65 + 152) + v63, v58) & 0x80000000) != 0)
    {
      if (!v60)
      {
        ClientBuffer = 2164269062;
        goto LABEL_47;
      }

      UnitModif = Pmk_Lookup_UnitPeriInfo(v60[2], v64, v20);
      if ((UnitModif & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      Psola_AssignPeriRanges(v20);
      if (!v20[2])
      {
        v41 = v18;
        v42 = v21;
        v35 = v66;
        v26 = v61;
        v27 = v62;
        goto LABEL_38;
      }

      if (*(a1 + 1148) && (Psola_IsAdjacent(a1, v56, v62, v60, v64, &v69), v69))
      {
        Psola_SyncOverlappingPeriods(v19, v20);
        v40 = 1;
      }

      else
      {
        v40 = 100;
      }

      v54 = v40;
      UnitModif = Psola_CalculateModificationFactors(a1, *(v65 + 152) + v63, v57, v55, v58, &v71, &v70 + 1, &v70);
      if ((UnitModif & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      UnitModif = Psola_GetUnitModif (a1, v64, v20, v71, SHIDWORD(v70), v70, v22, v43);
      v29 = v54;
      if ((UnitModif & 0x80000000) != 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v20 = 0;
      *v22 = 0;
      v29 = 100;
      v22[2] = 0;
    }

    UnitModif = Psola_SetUpCrossFading(a1, v62, v64, v29, v29, v67, v22, &v72, &v71 + 1);
    if ((UnitModif & 0x80000000) != 0)
    {
      goto LABEL_74;
    }

    v35 = v66;
    if (v66 && (v61 & 0x80000000) == 0)
    {
      v36 = Psola_SilUnitLen(a1, *(v65 + 152) + 56 * v61, v58);
      if (*v19)
      {
        v39 = v36;
      }

      else
      {
        v39 = v36 & ~(v36 >> 31);
      }

      if (v39 < 0)
      {
        UnitModif = Psola_LoadUnitData(a1, v56, v62, v19, v12, &v74[1], &v73 + 1);
        if ((UnitModif & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

        UnitModif = Psola_DoPeriSynth(a1, v62, v61, v11, v14, &v68, v12, HIDWORD(v73), v19, v67, v73, SHIDWORD(v72), v72, SHIDWORD(v71), v74);
        v35 = v66;
        if ((UnitModif & 0x80000000) != 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        Psola_SynthSilence(a1, v62, v61, v11, v39, v74, v37, v38);
        v35 = v66;
      }
    }

    v59 = 3 - v59;
    v26 = v35;
    v41 = v19;
    v19 = v20;
    v42 = v67;
    v67 = v22;
    v27 = v64;
    v56 = v60;
    HIDWORD(v72) = HIDWORD(v71);
    LODWORD(v73) = v72;
    v22 = v21;
    v20 = v18;
    v21 = v42;
    v18 = v41;
LABEL_38:
    v24 = v35 + 1;
    v25 = *(v65 + 168);
    v63 += 56;
  }

  while (v35 < v25);
  v21 = v42;
  v18 = v41;
  if (*(a1 + 1144))
  {
    v31 = (*(a1 + 1096) + *(a1 + 1048));
    if (v31 >= 1)
    {
      Psola_SynthSilence(a1, 0xFFFFFFFFLL, v25 - 1, v11, v31, v74, v33, v34);
    }
  }

  Psola_FlushOlaBufPart(a1, v11, v11[2] + *v11, v30, v31, v32, v33, v34);
  *(a1 + 1076) = 1;
  *(a1 + 1024) = *(a1 + 1028);
  ++*(v65 + 224);
  ClientBuffer = InOut__GetClientBuffer(a1, v47, v48, v49, v50, v51, v52, v53);
  if ((ClientBuffer & 0x80000000) == 0)
  {
    InOut__IsEndState(a1);
  }

LABEL_47:
  heap_Free(*(*(a1 + 16) + 8), v11);
  if (v12)
  {
    heap_Free(*(*(a1 + 16) + 8), v12);
  }

  if (v14)
  {
    if (*v14)
    {
      heap_Free(*(*(a1 + 16) + 8), *v14);
    }

    v44 = v14[2];
    if (v44)
    {
      heap_Free(*(*(a1 + 16) + 8), v44);
    }

    v45 = v14[4];
    if (v45)
    {
      heap_Free(*(*(a1 + 16) + 8), v45);
    }

    heap_Free(*(*(a1 + 16) + 8), v14);
  }

  if (v18)
  {
    heap_Free(*(*(a1 + 16) + 8), v18);
  }

  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  if (v20)
  {
    heap_Free(*(*(a1 + 16) + 8), v20);
  }

  if (v21)
  {
    heap_Free(*(*(a1 + 16) + 8), v21);
  }

  if (v67)
  {
    heap_Free(*(*(a1 + 16) + 8), v67);
  }

  if (v22)
  {
    heap_Free(*(*(a1 + 16) + 8), v22);
  }

  return ClientBuffer;
}

uint64_t Psola_SetUpCrossFading(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned __int16 *a6, unsigned __int16 *a7, _DWORD *a8, int *a9)
{
  v9 = *(a1 + 1040);
  v10 = v9 * a4;
  v11 = 274877907 * v9 * a4;
  v12 = v11 >> 63;
  v13 = v11 >> 38;
  v14 = v9 * a5 / 1000;
  v15 = a6[1] + *a6;
  *a9 = 0;
  v16 = a6[2];
  if (a6[2])
  {
    v17 = 0;
    v18 = 0;
    v19 = a7 + 20003;
    while (v18 < a7[1] >> 1 && v17 < v14)
    {
      v21 = v19[v18 + *a7];
      a6[v15 + 20003 + v18] = v19[v18 + *a7];
      v17 += v21;
      *a9 = v17;
      if (v16 == ++v18)
      {
        goto LABEL_9;
      }
    }

    LOWORD(v16) = v18;
  }

LABEL_9:
  v22 = v13 + v12;
  a6[2] = v16;
  LODWORD(v16) = *a7;
  if (*a7)
  {
    v23 = 0;
    if (a6[1] && v10 >= 1000)
    {
      v23 = 0;
      v24 = &a6[v15 + 20002];
      v25 = -1;
      v26 = 1;
      do
      {
        v27 = v26;
        v28 = *v24--;
        a7[v25 + 20003 + v16] = v28;
        v23 += v28;
        v16 = *a7;
        if (v26 >= v16)
        {
          break;
        }

        ++v26;
        --v25;
      }

      while (v27 < (a6[1] + 1) >> 1 && v23 < v22);
    }

    else
    {
      LODWORD(v27) = 0;
    }

    v30 = v16;
  }

  else
  {
    v23 = 0;
    LODWORD(v27) = 0;
    v30 = 0;
  }

  v31 = v30 - v27;
  if ((v30 - v27) >= 1)
  {
    v32 = a7[1];
    v33 = a7[2];
    if (v31 < v30 + v32 + v33)
    {
      v34 = -v27;
      v35 = -v27 + v30;
      v36 = v35 - v31;
      v37 = 2 * v36 + 6;
      v38 = 2 * v36 + 20006;
      v39 = 2 * v36 + 40006;
      v40 = 2 * v35;
      v41 = 2 * v35 + 40006;
      v42 = 2 * v35 + 20006;
      v43 = v40 + 6;
      v44 = v32 + v33 - v34;
      do
      {
        *(a7 + v37) = *(a7 + v43);
        *(a7 + v38) = *(a7 + v42);
        *(a7 + v39) = *(a7 + v41);
        v37 += 2;
        v38 += 2;
        v39 += 2;
        v41 += 2;
        v42 += 2;
        v43 += 2;
        --v44;
      }

      while (v44);
      LOWORD(v16) = *a7;
    }

    *a7 = v16 - v31;
  }

  if (v23 < v22)
  {
    v22 = v23;
  }

  *a8 = v22;
  if (*a9 < v14)
  {
    v14 = *a9;
  }

  *a9 = v14;
  if ((*a8 + v14 < 0) ^ __OFADD__(*a8, v14) | (*a8 + v14 == 0) && a6[1] && a7[1])
  {
    return 2164269071;
  }

  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "crossfading lengths between unit %d and %d: %d+%d\n", a6, a7, a8, a2);
  return 0;
}

uint64_t Psola_checkMarker(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 160) + 16 * *(*(a2 + 152) + 56 * a3 + 44);
  if (*(v3 + 10))
  {
    v4 = result;
    if (!a3 || (a3 & 1) != 0)
    {
      v5 = *(v3 + 8);
      v6 = v5 + *(v3 + 10);
      v7 = 32 * v5;
      do
      {
        v8 = *(v4 + 648);
        v9 = *(v8 + v7);
        if (v9 <= 16)
        {
          if (v9 == 13)
          {
            result = synth_ResetParams(v4);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            goto LABEL_18;
          }

          if (v9 == 16)
          {
            v14 = *(v8 + v7 + 24);
            *(v4 + 1054) = v14;
            v11 = *(*(v4 + 16) + 40);
            v12 = v14;
            v13 = "pitch";
            goto LABEL_15;
          }
        }

        else
        {
          switch(v9)
          {
            case 17:
              *(v4 + 1064) = *(v8 + v7 + 24);
              break;
            case 18:
              v15 = *(v8 + v7 + 24);
              *(v4 + 1052) = v15;
              v11 = *(*(v4 + 16) + 40);
              v12 = v15;
              v13 = "rate";
LABEL_15:
              result = paramc_ParamSetUInt(v11, v13, v12);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              break;
            case 25:
              v10 = *(v8 + v7 + 24);
              *(v4 + 1044) = v10;
              v11 = *(*(v4 + 16) + 40);
              v12 = v10;
              v13 = "waitfactor";
              goto LABEL_15;
          }
        }

LABEL_18:
        ++v5;
        v7 += 32;
      }

      while (v5 < v6);
    }
  }

  return result;
}

uint64_t Psola_SilUnitLen(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if (a3 < 0)
    {
      v5 = 274877907 * (500 - *(a1 + 1040) * a3);
      v3 = (v5 >> 38) + (v5 >> 63);
    }

    else
    {
      v3 = (v3 * a3 + 500) / 0x3E8u;
    }
  }

  return Convert2Samples(a1, 10 * v3);
}

unsigned __int16 *Psola_AssignPeriRanges(unsigned __int16 *result)
{
  v1 = result[3];
  v2 = (result[2] + result[1] + v1);
  if (result[2] + result[1] + v1)
  {
    v3 = 0;
    v4 = result + 10004;
    result[1] = 0;
    v5 = (result + 4);
    while (*v5 < 0)
    {
      result[1] = ++v3;
      ++v5;
      if (v2 == v3)
      {
        result[2] = 0;
LABEL_17:
        result[3] = v2 - v3;
        return result;
      }
    }

    result[2] = 0;
    if (v3 >= v2)
    {
      goto LABEL_17;
    }

    v6 = 0;
    v7 = v2 - v3;
    v8 = *result;
    do
    {
      v9 = *v5++;
      if (v9 >= v8)
      {
        break;
      }

      result[2] = ++v6;
      --v7;
    }

    while (v7);
    result[3] = v2 - (v3 + v6);
    if (!v3 && v6)
    {
      result[1] = 1;
      if (v6 == 1)
      {
        v10 = (v2 - 1);
        if (v2 != 1)
        {
          v11 = &result[v10];
          v12 = v10 - 1;
          do
          {
            result[v2 + 4] = v11[4];
            result[v2 + 10004] = v11[10004];
            result[v2 + 20004] = v11[20004];
            LODWORD(v2) = v2 - 1;
            --v11;
          }

          while (v12--);
        }

        v14 = *v4;
        v15 = v14 + (v14 >> 15);
        result[10005] = v15 >> 1;
        v16 = v14 - (v15 >> 1);
        *v4 = v16;
        result[5] = result[4] + v16;
        *(result + 10002) = 0;
      }

      else
      {
        result[2] = v6 - 1;
      }
    }
  }

  return result;
}

unsigned __int16 *Psola_SyncOverlappingPeriods(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result[1] && a2[1])
  {
    v2 = result[1] + result[2] - 1;
    v3 = (a2 + 3);
    v4 = a2[2] + a2[1] + a2[3];
    v5 = a2 + 4;
    v6 = v2;
    v7 = result + 10004;
    v8 = result[v2 + 10004] + result[v2 + 4] - *result;
    v9 = v4 - 1;
    v10 = a2[(v4 - 1) + 4];
    v11 = a2 + 10004;
    v12 = a2[(v4 - 1) + 10004];
    if (v4 <= 1)
    {
      v16 = 0;
      *v5 = v8;
      v19 = (a2 + 4);
    }

    else
    {
      v13 = 0;
      if (a2[5] - v8 >= 0)
      {
        v14 = a2[5] - v8;
      }

      else
      {
        v14 = v8 - a2[5];
      }

      do
      {
        if (v5[++v13 + 1] - v8 >= 0)
        {
          v15 = v5[v13 + 1] - v8;
        }

        else
        {
          v15 = v8 - v5[v13 + 1];
        }

        v16 = v13;
        v17 = v13 + 1 >= v4 || v15 >= v14;
        v14 = v15;
      }

      while (!v17);
      v18 = v13;
      v19 = &v5[v13];
      *v19 = v8;
      if (v18)
      {
        do
        {
          v20 = v7[v6];
          a2[v18 + 10003] = v20;
          v8 -= v20;
          v3[v18] = v8;
          if (v18 < 2)
          {
            break;
          }

          --v18;
        }

        while (v6-- > 0);
      }

      else
      {
        v16 = 0;
      }
    }

    v22 = v16 + 1;
    if (v16 + 1 >= v4)
    {
      v24 = 0;
      v9 = v16;
    }

    else
    {
      v23 = *v19 + 32;
      if (v23 <= v5[v22])
      {
        v24 = 0;
        v9 = v16;
      }

      else
      {
        v24 = 0;
        v25 = v16;
        while (1)
        {
          ++v24;
          if (v25 + 2 >= v4)
          {
            break;
          }

          v26 = a2[v25++ + 6];
          if (v23 <= v26)
          {
            v9 = v25;
            break;
          }
        }
      }

      v22 = v9 + 1;
    }

    if (v22 < v4)
    {
      v27 = v9;
      v28 = v16;
      v29 = v5[v16];
      v30 = v27 + 5;
      do
      {
        v31 = &a2[v28];
        v32 = a2[v30];
        v11[v28++] = v32 - v29;
        v31[5] = v32;
        v33 = v30 - 3;
        ++v30;
        v29 = v32;
      }

      while (v33 < v4);
      v16 = v28;
    }

    v34 = v12 + v10;
    if (v16 >= 1)
    {
      v35 = v24 + v16;
      while (v34 - 32 < v5[v16])
      {
        ++v24;
        v36 = __OFSUB__(v16--, 1);
        if ((v16 < 0) ^ v36 | (v16 == 0))
        {
          v16 = 0;
          goto LABEL_43;
        }
      }
    }

    v35 = v24;
LABEL_43:
    v11[v16] = v34 - v5[v16];
    if (v35)
    {
      v37 = *v3;
      while (v37)
      {
        --v35;
        *v3 = --v37;
        if (!v35)
        {
          return Psola_AssignPeriRanges(a2);
        }
      }

      v38 = a2[2];
      while (v38)
      {
        --v35;
        a2[2] = --v38;
        if (!v35)
        {
          return Psola_AssignPeriRanges(a2);
        }
      }

      v39 = a2[1];
      do
      {
        if (!v39)
        {
          break;
        }

        --v35;
        a2[1] = --v39;
      }

      while (v35);
    }

    return Psola_AssignPeriRanges(a2);
  }

  return result;
}

uint64_t Psola_CalculateModificationFactors(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int *a6, int *a7, _DWORD *a8)
{
  if (a3 < 1)
  {
    if (!a3)
    {
      a3 = *(a2 + 16);
    }
  }

  else
  {
    a3 = *(a2 + 16) * a3 / 1000;
  }

  *a6 = a3;
  if (a4 < 1)
  {
    if (!a4)
    {
      a4 = *(a2 + 20);
    }
  }

  else
  {
    a4 = *(a2 + 20) * a4 / 1000;
  }

  *a7 = a4;
  *a8 = a5;
  v8 = *(a1 + 1052);
  if (v8 == 100)
  {
    v9 = 1000;
  }

  else
  {
    if (v8 - 50 > 0x15E)
    {
      return 2164269071;
    }

    v9 = ((v8 >> 1) + 100000) / v8;
  }

  v10 = 10 * *(a1 + 1054);
  if (v10 && v10 != 1000)
  {
    v11 = 274877907 * (*a6 * v10 + 500);
    *a6 = (v11 >> 38) + (v11 >> 63);
    v12 = 274877907 * (*a7 * v10 + 500);
    *a7 = (v12 >> 38) + (v12 >> 63);
  }

  result = 0;
  if (v9 != 1000)
  {
    v14 = 274877907 * (*a8 * v9 + 500);
    *a8 = (v14 >> 38) + (v14 >> 63);
  }

  return result;
}

uint64_t Psola_GetUnitModif (uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8)
{
  v8 = a7;
  v11 = a3[1];
  v12 = a3[2] + v11 - 1;
  if (v11 <= v12)
  {
    v13 = 0;
    v14 = a3[1];
    do
    {
      v13 += a3[v14++ + 10004];
    }

    while (v14 <= v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    v16 = (1000 * v13 + *(a1 + 1040) / 2) / *(a1 + 1040);
    v15 = (-1000 * a6 + v16 / 2) / v16;
  }

  v17 = v13;
  if (v15)
  {
    v17 = (v15 * v13 + 500) / 1000;
  }

  result = 2164269065;
  if (a4 >= 1 && a5 < 1 || a4 <= 0 && a5 > 0)
  {
    return 2164269074;
  }

  v51 = a3[2] + v11;
  *a7 = 0;
  if (v11)
  {
    for (i = 0; i != v11; *a7 = i)
    {
      *(a7 + 2 * i + 6) = i;
      *(a7 + 20006 + 2 * i) = 0;
      *(a7 + 40006 + 2 * i) = a3[i + 10004];
      ++i;
    }

    v20 = v11;
  }

  else
  {
    v20 = 0;
  }

  *(a7 + 2) = 0;
  if (v11 <= v12)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v52 = a3 + 10004;
    v53 = a5 - a4;
    v36 = a3 + 20004;
    while (1)
    {
      v37 = v52[v11];
      if (v15)
      {
        v35 += (v15 * v37 + 500) / 1000;
      }

      else
      {
        v35 = v34 + v37;
      }

      v38 = v20 <= 0x2710 ? 10000 : v20;
      v39 = v11 == v12 && v34 == 0;
      v40 = v39;
      if (v34 + (v37 >> 1) <= v35 || v40)
      {
        break;
      }

LABEL_84:
      v33 += v37;
      LOWORD(v11) = v11 + 1;
      if (v11 > v12)
      {
        goto LABEL_21;
      }
    }

    v42 = 0;
    a8 = &v8[v20];
    v43 = v38 - v20;
    while (1)
    {
      v44 = a4;
      if (v15)
      {
        if (v17)
        {
          v44 = (v17 / 2 + v34 * v53) / v17 + a4;
        }
      }

      else
      {
        v44 = (v13 / 2 + v33 * v53) / v13 + a4;
      }

      v45 = v37;
      if (v36[v11] != 1)
      {
        goto LABEL_63;
      }

      if (v44 < 1)
      {
        v45 = v37;
        if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        v46 = *(a1 + 1040);
        v44 = -v44;
      }

      else
      {
        v46 = 1000 * v52[v11];
      }

      v45 = (v46 + (v44 >> 1)) / v44;
LABEL_63:
      if (!v43)
      {
        return result;
      }

      if (v45 <= 0x10)
      {
        v47 = 16;
      }

      else
      {
        v47 = v45;
      }

      if (v47 >= 0x3C1)
      {
        v47 = 961;
      }

      a8[3] = v11;
      a8[20003] = v47;
      if (v36[v11])
      {
        v48 = 0;
      }

      else
      {
        v48 = v42;
      }

      v42 = 1 - v42;
      v34 += v47;
      if (!v15)
      {
        v35 = v34;
      }

      a8[10003] = v48;
      v8[1] = ++v32;
      a6 = v34 + (v37 >> 1);
      a7 = v11 == v12 && v34 == 0;
      ++v20;
      ++a8;
      --v43;
      if (a6 > v35 && (a7 & 1) == 0)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_21:
  v21 = a3[2] + a3[1] + a3[3];
  v8[2] = 0;
  if (v51 >= v21)
  {
LABEL_28:
    log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "modified unit %d: f0Beg=%d, f0End=%d, dur=%d\n", a6, a7, a8, a2);
    if (v8[1] + *v8 + v8[2])
    {
      v30 = 0;
      v31 = (v8[1] + *v8 + v8[2]);
      do
      {
        if (v30 == *v8)
        {
          log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  --- start of nominal part\n", v27, v28, v29, v50);
        }

        log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  peri num: %d, type: %d, orig len: %d, new len: %d, rev: %d\n", v27, v28, v29, v8[v30 + 3]);
        if (v30 == *v8 + v8[1] - 1)
        {
          log_OutText(*(*(a1 + 16) + 32), "PSOLA", 100, 0, "  --- end of nominal part\n", v27, v28, v29, v50);
        }

        ++v30;
      }

      while (v31 != v30);
    }

    return 0;
  }

  else
  {
    v22 = 0;
    v23 = v51;
    if (v20 <= 0x2710)
    {
      v24 = 10000;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - v20;
    v26 = &v8[v20];
    while (v25)
    {
      v26[3] = v23;
      v26[10003] = 0;
      v26[20003] = a3[v23 + 10004];
      v8[2] = ++v22;
      ++v23;
      --v25;
      ++v26;
      if (v23 >= v21)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

void Psola_SynthSilence(uint64_t a1, uint64_t a2, int a3, int *a4, int a5, int *a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "PMK: %d 0 %d\n", a6, a7, a8, a2);
  v17 = *(a1 + 1052);
  if (v17 == 100)
  {
    v18 = 1000;
  }

  else if (v17 - 50 > 0x15E)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v17 >> 1) + 100000) / v17;
  }

  v33 = (v18 * a5 + 500) / 1000;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "synthesizing silence for unit %d, len=%d\n", v14, v15, v16, a2);
  Psola_FlushOlaBufPart(a1, a4, *a6, v19, v20, v21, v22, v23);
  Psola_DepositMarkers(a1, a3, v24, v25, v26, v27, v28, v29);
  v32 = (*a6 + v33);
  *a6 = v32;
  if (*a4 <= v32)
  {
    Psola_AddToOlaBufAux(a1, a4, v34, 0, 0, v32, v30, v31);
  }
}

uint64_t Psola_LoadUnitData(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, char *a5, int *a6, _DWORD *a7)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a6 = 0;
  v10 = a4[1] + a4[2] + a4[3] - 1;
  v11 = &a4[v10];
  v12 = *a4;
  v14 = (a4 + 4);
  v13 = a4[4];
  *a7 = 0;
  if (v13 <= 0)
  {
    v15 = -v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v11[10004] + v14[v10];
  result = Psola_GetDecodedUnitData_VE(a1, a2, a3, v15, v12, (v16 - v12) & ~((v16 - v12) >> 31), 24000, a5, &v23, &v21, &v22);
  if ((result & 0x80000000) == 0)
  {
    v18 = v23;
    *a7 = v23;
    v19 = v21 + v18 + v22;
    *a6 = v19;
    if (*a7 + v16 > v19 || *a7 + *v14 < 0)
    {
      return 2164269065;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t Psola_DoPeriSynth(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 *a10, int a11, int a12, int a13, int a14, int *a15)
{
  v15 = a8;
  v17 = a1;
  log_OutText(*(*(a1 + 16) + 32), "PSOLA", 99, 0, "synthesizing unit %d\n", a6, a7, a8, a2);
  log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, "PMK: %d", v18, v19, v20, a2);
  if (a10[1])
  {
    v24 = *a10;
    do
    {
      log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, " %d %d", v21, v22, v23, *(a9 + 40008 + 2 * a10[v24++ + 3]));
    }

    while (a10[1] + *a10 > v24);
  }

  v25 = a15;
  log_OutText(*(*(v17 + 16) + 32), "PSOLA", 99, 0, "\n", v21, v22, v23, v87);
  v26 = *a10;
  v27 = a10[1];
  v28 = v27 + v26;
  v29 = a10 + 20003;
  v30 = 0;
  if (*a10)
  {
    v31 = *a10;
    v32 = (a10 + 20003);
    do
    {
      v33 = *v32++;
      v30 += v33;
      --v31;
    }

    while (v31);
  }

  v34 = 0;
  if (a10[1])
  {
    v35 = &v29[*a10];
    do
    {
      v36 = *v35++;
      v34 += v36;
      LODWORD(v27) = v27 - 1;
    }

    while (v27);
  }

  v37 = v28 + a10[2];
  v38 = a13;
  v39 = *a15;
  v101 = a12 + a11;
  if ((v101 < 0) ^ __OFADD__(a12, a11) | (v101 == 0))
  {
    v101 = (v29[v26] + (v29[v26] >> 15)) << 16 >> 17;
    v97 = *a15;
  }

  else
  {
    v97 = v39 - a11;
  }

  v100 = a14 + a13;
  if ((a14 + a13 < 0) ^ __OFADD__(a14, a13) | (a14 + a13 == 0))
  {
    v40 = v29[v28 - 1];
    v38 = (v40 + (v40 >> 15)) >> 1;
    v100 = v38;
  }

  v41 = v39 + v34;
  if (v37)
  {
    v42 = 0;
    v43 = 0;
    v92 = v41 - v38;
    v44 = v39 - v30;
    v96 = (a10 + 3);
    v94 = (a10 + 20003);
    v95 = a9 + 20008;
    v45 = a9 + 8;
    v89 = (v37 - 1);
    v90 = v37;
    v91 = (v37 + 1);
    v46 = v15;
    v47 = a5;
    v105 = a9 + 8;
    v93 = v17;
    while (1)
    {
      v106 = v43;
      v107 = v44;
      if (v42)
      {
        if (v42 == v90)
        {
          v48 = v96[v89];
          LODWORD(v49) = *(v95 + 2 * v48);
          result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v45 + 2 * v48) + v46, v49, v47);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LODWORD(v51) = 0;
          v52 = 0;
          v53 = v89;
          v54 = a10 + 20003;
        }

        else
        {
          v56 = v96[v42];
          v57 = v56 - 1;
          if (a10[v42 + 10003])
          {
            v49 = *(v95 + 2 * v56);
            v51 = *(v95 + 2 * v57);
            v58 = *(v105 + 2 * v56);
            result = Psola_ReallocIfNeeded(*(*(v17 + 16) + 8), v47, v49);
            if (v49 >= 1 && (result & 0x80000000) == 0)
            {
              v59 = (a7 + 2 * (v58 + v15));
              v60 = (*v47 + 2 * v49 - 2);
              v61 = v49;
              do
              {
                v62 = *v59++;
                *v60-- = v62;
                --v61;
              }

              while (v61);
            }

            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v63 = *(v105 + 2 * v57);
            result = Psola_ReallocIfNeeded(*(*(v17 + 16) + 8), (v47 + 16), v51);
            if (v51 >= 1 && (result & 0x80000000) == 0)
            {
              v64 = (a7 + 2 * (v63 + v15));
              v65 = (*(v47 + 16) + 2 * v51 - 2);
              v66 = v51;
              do
              {
                v67 = *v64++;
                *v65-- = v67;
                --v66;
              }

              while (v66);
            }
          }

          else
          {
            LODWORD(v49) = *(v95 + 2 * v57);
            LODWORD(v51) = *(v95 + 2 * v56);
            v68 = v46;
            result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v105 + 2 * v57) + v46, v49, v47);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v105 + 2 * v56) + v68, v51, (v47 + 16));
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v53 = v42 - 1;
          v54 = a10 + 20003;
          v52 = v94[v42];
        }

        v69 = v54[v53];
        if (v49 <= v69)
        {
          v103 = 0;
        }

        else
        {
          cstdlib_memmove(*v47, (*v47 + 2 * (v49 - v54[v53])), 2 * v54[v53]);
          v103 = 0;
          LODWORD(v49) = v69;
        }
      }

      else
      {
        v55 = *v96;
        LODWORD(v51) = *(v95 + 2 * v55);
        v103 = Psola_CopyDataPart(*(*(v17 + 16) + 8), a7, *(v45 + 2 * v55) + v46, v51, (v47 + 16));
        if ((v103 & 0x80000000) != 0)
        {
          return v103;
        }

        LODWORD(v49) = 0;
        v52 = *v94;
      }

      if (v51 >= v52)
      {
        LODWORD(v51) = v52;
      }

      Psola_ApplyHanning(*(v47 + 32), a6, *v47, v49, 1);
      Psola_ApplyHanning(*(v47 + 32), a6, *(v47 + 16), v51, 0);
      Psola_ApplyFadingPart(*v47, v49, v107 - v49, v97, v101, 1);
      Psola_ApplyFadingPart(*(v47 + 16), v51, v107, v97, v101, 1);
      Psola_ApplyFadingPart(*v47, v49, v107 - v49, v92, v100, 0);
      Psola_ApplyFadingPart(*(v47 + 16), v51, v107, v92, v100, 0);
      v17 = v93;
      Psola_AddToOlaBuf(v93, a4, *v47, v49, v107 - v49, v70, v71, v72);
      Psola_AddToOlaBuf(v93, a4, *(v47 + 16), v51, v107, v73, v74, v75);
      v44 = v52 + v107;
      if (v106)
      {
        v47 = a5;
        v45 = a9 + 8;
        v43 = 1;
      }

      else
      {
        if (v44 >= *a15 + 961 || v42 == v90)
        {
          Psola_FlushOlaBufPart(v93, a4, *a15, v76, v77, v78, v79, v80);
          Psola_DepositMarkers(v93, a3, v81, v82, v83, v84, v85, v86);
          v103 = 0;
          v43 = 1;
        }

        else
        {
          v43 = 0;
        }

        v47 = a5;
        v45 = a9 + 8;
      }

      ++v42;
      v46 = v15;
      if (v42 == v91)
      {
        v25 = a15;
        v41 = *a15 + v34;
        result = v103;
        goto LABEL_54;
      }
    }
  }

  result = 0;
LABEL_54:
  *v25 = v41;
  return result;
}

void Psola_FlushOlaBufPart(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3 - *a2;
  if (v8 >= 1)
  {
    v11 = a2[1];
    v12 = a2[2];
    if (v8 >= v12)
    {
      v13 = a2[2];
    }

    else
    {
      v13 = v8;
    }

    if (v13 >= 2400 - v11)
    {
      v14 = (2400 - v11);
    }

    else
    {
      v14 = v13;
    }

    v15 = v8 - v14;
    if (v8 >= v12)
    {
      v16 = (v12 - v14);
    }

    else
    {
      v16 = v15;
    }

    if (v14 >= 1)
    {
      Psola_OutputDataPart(a1, (a2 + 3), v11, v14, a5, a6, a7, a8);
      bzero(a2 + 2 * a2[1] + 12, (2 * v14));
    }

    if (v16 >= 1)
    {
      Psola_OutputDataPart(a1, (a2 + 3), 0, v16, a5, a6, a7, a8);
      bzero(a2 + 3, (2 * v16));
    }

    v17 = v15 - v16;
    if (v17 >= 1)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      do
      {
        if (v17 >= 0x64)
        {
          v18 = 100;
        }

        else
        {
          v18 = v17;
        }

        Psola_OutputDataPart(a1, v21, 0, v18, a5, a6, a7, a8);
        v19 = __OFSUB__(v17, v18);
        v17 -= v18;
      }

      while (!((v17 < 0) ^ v19 | (v17 == 0)));
    }

    v20 = a2[1] + v8;
    *a2 += v8;
    a2[1] = v20 % 2400;
    a2[2] -= v16 + v14;
  }
}

uint64_t Psola_DepositMarkers(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(*(result + 1088) + 160) + 16 * *(*(*(result + 1088) + 152) + 56 * a2 + 44);
  v10 = *(v9 + 10) + *(v9 + 8);
  if (v10 > *(result + 656))
  {
    result = log_OutPublic(*(*(result + 16) + 32), "PSOLA", 45000, "%s%u%s%u%s%u", a5, a6, a7, a8, "index");
    v10 = *(v8 + 656);
  }

  v11 = *(v8 + 1080);
  if (v10 > v11)
  {
    v12 = *(v8 + 1028);
    v13 = (*(v8 + 648) + 32 * v11 + 16);
    v14 = v10 - v11;
    do
    {
      *(v13 - 1) = v12;
      *v13 = 0;
      v13 += 8;
      --v14;
    }

    while (v14);
    *(v8 + 1080) = v10;
    *(v9 + 10) = 0;
  }

  return result;
}

void Psola_AddToOlaBuf(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 <= a5)
  {
    v19 = v8;
    v20 = v9;
    v10 = a5;
    v11 = a4;
    if (a4 < 1)
    {
      Psola_AddToOlaBufAux(a1, a2, v18, 0, 0, a5, a7, a8);
    }

    else
    {
      v15 = 0;
      do
      {
        if (v11 >= 0x960)
        {
          v16 = 2400;
        }

        else
        {
          v16 = v11;
        }

        Psola_AddToOlaBufAux(a1, a2, a3, v15, v16, v10, a7, a8);
        v15 = (v16 + v15);
        v10 = (v10 + v16);
        v17 = __OFSUB__(v11, v16);
        v11 -= v16;
      }

      while (!((v11 < 0) ^ v17 | (v11 == 0)));
    }
  }
}

void Psola_AddToOlaBufAux(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = a6 + a5;
  v14 = a6 + a5 - 2400;
  v15 = *a2;
  if (v14 > *a2)
  {
    Psola_FlushOlaBufPart(a1, a2, v14, a4, a5, a6, a7, a8);
    v15 = *a2;
  }

  v16 = (v8 - v15 + a2[1]) % 2400;
  if (2400 - v16 >= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = 2400 - v16;
  }

  v18 = v9 - v17;
  if (v17 >= 1)
  {
    v19 = a2 + v16 + 6;
    v20 = (a3 + 2 * v10);
    v21 = v17;
    do
    {
      v22 = *v20++;
      *v19++ += v22;
      --v21;
    }

    while (v21);
  }

  if (v18 >= 1)
  {
    v23 = v17 + v10;
    v24 = a2 + 3;
    v25 = (a3 + 2 * v23);
    do
    {
      v26 = *v25++;
      *v24++ += v26;
      --v18;
    }

    while (v18);
  }

  v27 = v13 - v15;
  if (a2[2] > v27)
  {
    v27 = a2[2];
  }

  a2[2] = v27;
}

uint64_t Psola_CopyDataPart(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, uint64_t *a5)
{
  v8 = a4;
  v9 = Psola_ReallocIfNeeded(a1, a5, a4);
  if ((v9 & 0x80000000) == 0)
  {
    cstdlib_memcpy(*a5, (a2 + 2 * a3), 2 * v8);
  }

  return v9;
}

__int16 *Psola_ApplyHanning(__int16 *result, int *a2, __int16 *a3, int a4, int a5)
{
  if (*a2 != a4)
  {
    if (a4 >= 1)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = HanningTab[v5 / a4];
        *v6++ = v7 + ((HanningTab[v5 / a4 + 1] - v7) * (v5 % a4)) / a4;
        v5 += 200;
      }

      while (200 * a4 != v5);
    }

    *a2 = a4;
  }

  if (a5)
  {
    if (a4 >= 1)
    {
      v8 = a4;
      do
      {
        v9 = *result++;
        *a3 = v9 * *a3 / 0x8000;
        ++a3;
        --v8;
      }

      while (v8);
    }
  }

  else if (a4 >= 1)
  {
    v10 = a4;
    do
    {
      v11 = *result++;
      *a3 = (0x7FFF - v11) * *a3 / 0x8000;
      ++a3;
      --v10;
    }

    while (v10);
  }

  return result;
}

void Psola_ApplyFadingPart(__int16 *a1, int a2, int a3, int a4, int a5, int a6)
{
  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = a3 + a2;
  v8 = a5 + a4;
  if (a3 + a2 >= a5 + a4)
  {
    v9 = a5 + a4;
  }

  else
  {
    v9 = a3 + a2;
  }

  v10 = v9 - v6;
  if (v10 >= 1)
  {
    v11 = v10 + v6 - a3;
    v12 = v6 - a3;
    if (a6)
    {
      v13 = v6 - a4;
      do
      {
        a1[v12] = v13 * a1[v12] / a5;
        ++v13;
        ++v12;
      }

      while (v12 < v11);
    }

    else
    {
      v14 = a5 + a4 - v6;
      do
      {
        a1[v12] = v14 * a1[v12] / a5;
        ++v12;
        --v14;
      }

      while (v12 < v11);
    }
  }

  if (a4 > a3 && a6)
  {
    if (a4 - a3 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = a4 - a3;
    }

    if (v15 <= 0)
    {
      return;
    }

LABEL_27:
    bzero(a1, (2 * v15));
    return;
  }

  if (!a6)
  {
    v16 = __OFSUB__(v7, v8);
    v15 = v7 - v8;
    if (!((v15 < 0) ^ v16 | (v15 == 0)))
    {
      if (v15 >= a2)
      {
        v15 = a2;
      }

      if (v15 >= 1)
      {
        a1 += a2 - v15;
        goto LABEL_27;
      }
    }
  }
}

uint64_t Psola_ReallocIfNeeded(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (a2[1] >= a3)
  {
    return 0;
  }

  v4 = (a3 & 0xFFFFFFFFFFFFFE00) + 512;
  v5 = heap_Realloc(a1, *a2, 2 * v4);
  if (!v5)
  {
    return 2164269066;
  }

  v6 = v5;
  result = 0;
  *a2 = v6;
  a2[1] = v4;
  return result;
}

uint64_t Psola_GetSynthMode(uint64_t a1, _DWORD *a2, _BYTE *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  if ((*(a1 + 1152) & 2) != 0)
  {
    *a2 = 1;
    *a7 = 100;
  }

  else
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t Synth_RetrieveInputBlock(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2164269076;
  *a3 = 0;
  v4 = *(a1 + 328);
  if (!*(a1 + 328))
  {
    return v3;
  }

  v8 = 0;
  v9 = (a1 + 336);
  for (i = (a1 + 64); ; i += 4)
  {
    v11 = *(i - 2);
    if (!v11 || *(i - 6))
    {
      goto LABEL_7;
    }

    if (!cstdlib_strcmp(v11, __s2))
    {
      break;
    }

    v4 = *(a1 + 328);
LABEL_7:
    ++v8;
    v9 += 2;
    if (v8 >= v4)
    {
      return v3;
    }
  }

  if (*v9)
  {
    v3 = 0;
    goto LABEL_12;
  }

  v3 = (*(*(a1 + 32) + 88))(*(i - 1), *i, v9, v9 + 1);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_12:
    *a3 = v9;
  }

  return v3;
}

uint64_t Synth_SetVoicePartsAndRelativeIds(uint64_t a1, uint64_t a2)
{
  v4 = 2164269066;
  v5 = heap_Alloc(*(*(a1 + 16) + 8), 8 * *(a1 + 544));
  *(a1 + 552) = v5;
  if (v5)
  {
    v6 = heap_Alloc(*(*(a1 + 16) + 8), 4 * *(a1 + 544));
    *(a1 + 536) = v6;
    if (v6)
    {
      if (*(a1 + 544))
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        do
        {
          synth_splitGID(a1, *(a2 + v8), (*(a1 + 552) + v7), (*(a1 + 536) + v8));
          ++v9;
          v8 += 4;
          v7 += 8;
        }

        while (v9 < *(a1 + 544));
      }

      return 0;
    }
  }

  return v4;
}

void Synth_LinkMsgLayers(uint64_t a1)
{
  v13 = 0;
  v2 = *(a1 + 616);
  cstdlib_memset((a1 + 512), 0, 0xA0uLL);
  *(a1 + 512) = *(a1 + 16);
  if ((Synth_RetrieveInputBlock(a1, "text/x-realspeak-usphonemes;charset=tts", &v13) & 0x80000000) == 0)
  {
    v3 = v13;
    v4 = *v13 + 1;
    *(a1 + 528) = **v13;
    *(a1 + 576) = v4;
    LOWORD(v3) = *(v3 + 8) - 2;
    *(a1 + 584) = v3;
    if (!*(v4 + v3) && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-usids;version=4.0", &v13) & 0x80000000) == 0)
    {
      v5 = *v13;
      v6 = *(v13 + 8);
      *(a1 + 544) = v6 >> 2;
      if ((v6 >> 2) == 2 * *(a1 + 584) && (Synth_SetVoicePartsAndRelativeIds(a1, v5) & 0x80000000) == 0 && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-targf0;version=4.0", &v13) & 0x80000000) == 0)
      {
        v7 = v13;
        *(a1 + 560) = *v13;
        LODWORD(v7) = *(v7 + 8);
        *(a1 + 568) = v7 >> 1;
        if ((v7 >> 1) == 4 * *(a1 + 584) && (Synth_RetrieveInputBlock(a1, "application/x-realspeak-usmarkers-u16;version=4.0", &v13) & 0x80000000) == 0)
        {
          v8 = v13;
          v9 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
          *(a1 + 592) = v9;
          if (v9)
          {
            cstdlib_memcpy(v9, *v8, *(v8 + 8));
            if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-usplosives;version=4.0", &v13) & 0x80000000) == 0)
            {
              *(a1 + 600) = *v13;
              if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-usdurs;version=4.0", &v13) & 0x80000000) == 0)
              {
                v10 = v13;
                v11 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
                *(a1 + 608) = v11;
                if (v11)
                {
                  cstdlib_memcpy(v11, *v10, *(v10 + 8));
                  if ((*(a1 + 528) & 1) == 0)
                  {
                    **(a1 + 608) = v2;
                  }

                  *(a1 + 664) = a1;
                  if ((Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v13) & 0x80000000) == 0)
                  {
                    v12 = (v13 + 8);
                    Synth_SetupMarkers(a1 + 512, *v13, *(v13 + 8) >> 5, (v13 + 8));
                    *v12 *= 32;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 Synth_SetupMarkers(uint64_t a1, int *a2, unsigned int a3, unsigned int *a4)
{
  v8 = *(a1 + 72) + a3;
  *(a1 + 144) = v8;
  if (a3)
  {
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10;
      v10 += 8;
      if (v11 == 8)
      {
        *(a1 + 144) = ++v8;
      }

      --v9;
    }

    while (v9);
  }

  v12 = heap_Calloc(*(*a1 + 8), v8, 32);
  *(a1 + 136) = v12;
  if (!v12)
  {
    return result;
  }

  LOWORD(v14) = *(a1 + 72);
  if (!v14)
  {
    v17 = 0;
    v25 = 0;
    goto LABEL_30;
  }

  v15 = 0;
  i = 0;
  v14 = 0;
  v17 = 0;
  do
  {
    v18 = *(*(a1 + 80) + 2 * v15);
    if (i)
    {
      v19 = (*(a1 + 136) + 32 * v14);
      *v19 = 8;
      v19[6] = 0;
      ++v14;
      ++*(*(a1 + 80) + 2 * v15);
    }

    for (i = 0; v18; --v18)
    {
      if (v17 >= a3 || v14 >= *(a1 + 144))
      {
        continue;
      }

      v20 = &a2[8 * v17];
      if (*v20 == 33)
      {
        if (v20[6] != 35)
        {
          goto LABEL_21;
        }
      }

      else if (*v20 != 8 || !v20[6])
      {
        goto LABEL_21;
      }

      i = 1;
LABEL_21:
      result = *v20;
      v21 = *(v20 + 1);
      v22 = *(a1 + 136) + 32 * v14;
      *v22 = result;
      *(v22 + 16) = v21;
      ++v17;
      ++v14;
    }

    if (v15 || (*(a1 + 16) & 1) != 0)
    {
      v23 = (*(a1 + 136) + 32 * v14);
      *v23 = 33;
      v23[6] = *(*(a1 + 64) + v15);
      ++v14;
      ++*(*(a1 + 80) + 2 * v15);
    }

    ++v15;
    v24 = *(a1 + 72);
  }

  while (v15 < v24);
  v25 = v24 > 2;
LABEL_30:
  *(a1 + 144) = v14;
  *a4 = v17;
  if (**(a1 + 64) == 35)
  {
    v26 = *(a1 + 80);
    if (!*v26)
    {
      v27 = *(v26 + 2);
      if (v25)
      {
        if (v27 >= v14)
        {
          v28 = v14;
        }

        else
        {
          v28 = *(v26 + 2);
        }

        if (v28)
        {
          v29 = 0;
          v30 = *(a1 + 136);
          v31 = 32 * v28;
          while (*(v30 + v29) != 0x4000)
          {
            v29 += 32;
            if (v31 == v29)
            {
              return result;
            }
          }

          v32 = (v30 + v29);
          result = *(v30 + 16);
          v34 = *v32;
          v33 = v32[1];
          *v32 = *v30;
          v32[1] = result;
          v35 = *(a1 + 136);
          *v35 = v34;
          v35[1] = v33;
          v36 = *(a1 + 80);
          ++*v36;
          --v36[1];
        }
      }

      else
      {
        *v26 = v27;
      }
    }
  }

  return result;
}

uint64_t Synth_UnlinkMsgLayers(void *a1)
{
  v2 = a1[69];
  if (v2)
  {
    heap_Free(*(a1[2] + 8), v2);
    a1[69] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    heap_Free(*(a1[2] + 8), v3);
    a1[67] = 0;
  }

  v4 = a1[76];
  if (v4)
  {
    heap_Free(*(a1[2] + 8), v4);
    a1[76] = 0;
  }

  v5 = a1[74];
  if (v5)
  {
    heap_Free(*(a1[2] + 8), v5);
    a1[74] = 0;
  }

  v6 = a1[81];
  if (v6)
  {
    heap_Free(*(a1[2] + 8), v6);
    a1[81] = 0;
  }

  v7 = a1[78];
  if (v7)
  {
    heap_Free(*(a1[2] + 8), v7);
    a1[78] = 0;
  }

  v8 = a1[80];
  if (v8)
  {
    heap_Free(*(a1[2] + 8), v8);
    a1[80] = 0;
  }

  return 0;
}

uint64_t Synth_Reset(uint64_t a1)
{
  *(a1 + 1084) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(*(*(a1 + 1088) + 72) + 4) = 0;
  *(a1 + 1068) = 3;
  InOut__ResetOutputState(a1);
  *(a1 + 1096) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1076) = 0;
  return 0;
}

uint64_t Synth__InitForProcessing(uint64_t a1)
{
  v2 = *(a1 + 632);
  v3 = *(a1 + 1088);
  *(v3 + 168) = v2;
  v4 = *(a1 + 624);
  *(v3 + 152) = *(a1 + 640);
  *(v3 + 160) = v4;
  if ((*(a1 + 1152) & 2) != 0)
  {
    *(a1 + 1144) = (*(a1 + 528) & 4) != 0;
  }

  else
  {
    *(a1 + 1144) = 1;
    if (v2)
    {
      v5 = 0;
      do
      {
        v6 = Convert2Samples(a1, *(*(v3 + 152) + 56 * v5 + 28));
        v7 = *(*(a1 + 1088) + 152) + 56 * v5;
        *(v7 + 28) = v6;
        v8 = Convert2Samples(a1, *(v7 + 32));
        v3 = *(a1 + 1088);
        v9 = *(v3 + 152);
        *(v9 + 56 * v5 + 32) = v8;
        v10 = *(v9 + 56 * v5 + 40);
        if (v10 >= 1)
        {
          v11 = Convert2SamplesX(a1, v10);
          v3 = *(a1 + 1088);
          v9 = *(v3 + 152);
          *(v9 + 56 * v5 + 40) = v11;
        }

        v12 = v9 + 56 * v5;
        v13 = *(v12 + 46);
        if (*(v12 + 46))
        {
          v14 = 0;
          v15 = (*(v3 + 160) + 16 * *(v12 + 44) + 4);
          do
          {
            if (*v15 >= 1)
            {
              v16 = Convert2Samples(a1, *v15);
              *v15 = v16;
              v14 += v16;
            }

            v15 += 4;
            --v13;
          }

          while (v13);
          v3 = *(a1 + 1088);
          v17 = *(v3 + 152) + 56 * v5;
          v19 = *(v17 + 32);
          v18 = (v17 + 32);
          if (v14 > v19)
          {
            *v18 = v14;
          }
        }

        ++v5;
        v20 = *(v3 + 168);
      }

      while (v5 < v20);
    }

    else
    {
      LOWORD(v20) = 0;
    }

    do
    {
      if (v20 < 3u)
      {
        break;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = *(v3 + 152);
        v26 = v25 + 56 * v24;
        if (!*(v26 + 32) && !*(v26 + 40))
        {
          v27 = v25 + 56 * v24;
          *(v27 - 10) += *(v26 + 46);
          *(v27 - 8) = *(v27 - 8) & 0xF | 0x40;
          *(v26 + 104) = *(v26 + 104) & 0xF0 | 4;
          if (v24 <= v20 - 2)
          {
            v28 = v21;
            v29 = v22;
            do
            {
              v30 = *(v3 + 152) + v28;
              v31 = *(v30 + 128);
              *(v30 + 56) = *(v30 + 112);
              *(v30 + 72) = v31;
              *(v30 + 88) = *(v30 + 144);
              *(v30 + 104) = *(v30 + 160);
              v3 = *(a1 + 1088);
              ++v29;
              v28 += 56;
            }

            while (v29 < *(v3 + 168) - 2);
            LOWORD(v20) = *(v3 + 168);
          }

          *(v3 + 168) = v20 - 1;
          ++v23;
        }

        ++v24;
        v20 = *(v3 + 168);
        ++v22;
        v21 += 56;
      }

      while (v24 < (v20 - 1));
    }

    while (v23 > 0);
    if (*(a1 + 618))
    {
      v32 = 56 * v20 - 56;
      v33 = *(v3 + 152) + v32;
      v34 = *(v33 + 46) - 1;
      *(a1 + 1096) = Convert2SamplesX(a1, *(*(v3 + 160) + 16 * (v34 + *(v33 + 44))));
      *(a1 + 1144) = 1;
      v35 = (*(*(a1 + 1088) + 160) + 16 * (v34 + *(*(*(a1 + 1088) + 152) + v32 + 44)));
      if ((*v35 & 0x30000) == 0x20000)
      {
        *(a1 + 1144) = 0;
      }

      *v35 = 0;
    }
  }

  return 0;
}

uint64_t Synth__SetVectPointer(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    *(a2 + 8) = a1;
    *a2 = a3;
    *(a2 + 4) = a3;
  }

  return 0;
}

uint64_t synth_CreateBrokerString(uint64_t a1, char *a2, size_t a3, int a4, int a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  __s1 = 0;
  __s = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (!__s || !*__s)
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 8);
  v12 = cstdlib_strlen("voiceaddonbaseuri.");
  v13 = cstdlib_strlen(__s);
  v14 = heap_Calloc(v11, 1, v12 + v13 + 1);
  if (!v14)
  {
    return 2164269066;
  }

  v15 = v14;
  cstdlib_strcpy(v14, "voiceaddonbaseuri.");
  cstdlib_strcat(v15, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v15, &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  heap_Free(*(a1 + 8), v15);
  if (__s1 && *__s1)
  {
    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v16 = cstdlib_strlen(a2);
    if (!cstdlib_strchr("\\/", a2[v16 - 1]))
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    v17 = 0;
    v18 = "_";
  }

  else
  {
LABEL_12:
    v18 = "/";
    v17 = 1;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v33);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (__s && *__s)
  {
    Str = strhelper_SafeCat(a2, "synthvao", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v33);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v33, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v19 = 0;
  }

  else
  {
    Str = strhelper_SafeCat(a2, "synth", 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v33, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v19 = 1;
  }

  Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (a4 == 1)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  if (v19)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "reduction", &__s1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v20 = cstdlib_strstr(__s1, "dev") || cstdlib_strstr(__s1, "DEV") ? "dev" : __s1;
    Str = strhelper_SafeCat(a2, v20, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "coder", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "bitrate", &__s1) & 0x80000000) != 0 || !*__s1 || (paramc_ParamGetStr(*(a1 + 40), "overheadframes", &v34) & 0x80000000) != 0 || !*v34)
  {
    v22 = &a2[cstdlib_strlen(a2)];
    while (v22 > a2)
    {
      v24 = *--v22;
      v23 = v24;
      if ((v24 - 48) >= 0xA)
      {
        if (v23 == 102)
        {
          v25 = cstdlib_strlen(v22);
          cstdlib_memmove(v22 + 1, v22, v25 + 1);
          *v22 = *v18;
          goto LABEL_61;
        }

        break;
      }
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v31);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v26 = v31;
    v27 = cstdlib_strlen(a2);
    LH_itoa(v26 / 1000, &a2[v27], 0xAu);
  }

  else
  {
    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, __s1, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v18, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a2, v34, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

LABEL_61:
  vf_MakeLower(a2);
  if ((v17 & 1) == 0)
  {
    v28 = ".dat";
    return strhelper_SafeCat(a2, v28, 0xFFFFFFFFFFFFFFFFLL, a3);
  }

  v21 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s1);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  if (!a5)
  {
    if (!__s1 || !*__s1)
    {
      return v21;
    }

    Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v36, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    *a2 = 0;
    v28 = v36;
    return strhelper_SafeCat(a2, v28, 0xFFFFFFFFFFFFFFFFLL, a3);
  }

  if (cupreader_IsCupInTheScope(a1, &v30))
  {
    return cupreader_PrependCupName(a2, v30, a3);
  }

  return v21;
}

uint64_t synth_ResetParams(uint64_t a1)
{
  result = (*(*(a1 + 984) + 48))(*(a1 + 992));
  if ((result & 0x80000000) == 0)
  {
    if ((*(a1 + 1152) & 1) == 0 || (result = (*(*(a1 + 1000) + 48))(*(a1 + 1008)), (result & 0x80000000) == 0))
    {
      result = paramc_ParamSetInt(*(*(a1 + 16) + 40), "waitfactor", 2u);
      if ((result & 0x80000000) == 0 && (*(a1 + 1152) & 2) != 0)
      {
        result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "rate", 0x64u);
        if ((result & 0x80000000) == 0)
        {
          v3 = *(*(a1 + 16) + 40);

          return paramc_ParamSetUInt(v3, "pitch", 0x64u);
        }
      }
    }
  }

  return result;
}

uint64_t synth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth;
  return result;
}

uint64_t synth_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2164269063;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 83214;
  }

  return result;
}

uint64_t synth_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v36 = 0;
  v10 = 2164269066;
  __b = 0;
  v34 = 0;
  cstdlib_memset(&__b, 0, 0x10uLL);
  if (!a5)
  {
    return 2164269063;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((safeh_HandleCheck(a1, a2, 83214, 416) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v12 = heap_Calloc(*(v36 + 8), 1, 1160);
  if (v12)
  {
    v13 = v12;
    *v12 = a3;
    *(v12 + 8) = a4;
    *(v12 + 1016) = 0u;
    *(v12 + 1032) = 2;
    v14 = v36;
    *(v12 + 16) = v36;
    *(v12 + 24) = a1;
    *(v12 + 1076) = 1;
    Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v35);
    if ((Object & 0x80000000) == 0)
    {
      *(v13 + 32) = *(v35 + 8);
      Object = objc_GetObject(*(v36 + 48), "SYNTHOUTPUTSINK", &v35);
      if ((Object & 0x80000000) == 0)
      {
        v16 = v35;
        *(v13 + 488) = *(v35 + 8);
        *(v13 + 496) = *(v16 + 16);
        *(v13 + 960) = v13;
        *(v13 + 968) = synth_CheckChange;
        *(v13 + 976) = synth_LearnChange;
        *(v13 + 1144) = 1;
        v17 = heap_Calloc(*(v36 + 8), 1, 232);
        *(v13 + 1088) = v17;
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = (v13 + 960);
        LODWORD(v30) = 0;
        if ((paramc_ParamGetInt(*(*(v13 + 16) + 40), "waitfactor", &v30) & 0x80000000) != 0)
        {
          *(v13 + 1044) = 2;
          paramc_ParamSetInt(*(*(v13 + 16) + 40), "waitfactor", 2u);
        }

        else
        {
          v32 = 0;
          paramc_ParamGetUInt(*(*(v13 + 16) + 40), "finalsentencefound", &v32);
          if (v32 != 1)
          {
            *(v13 + 1044) = v30;
          }
        }

        paramc_ParamSetUInt(*(*(v13 + 16) + 40), "finalsentencefound", 0);
        v19 = *(*(v13 + 16) + 40);
        v30 = *v18;
        v31 = *(v13 + 976);
        Object = paramc_ListenerAdd(v19, "waitfactor", &v30);
        if ((Object & 0x80000000) == 0)
        {
          v20 = *(*(v13 + 16) + 40);
          v30 = *v18;
          v31 = *(v13 + 976);
          Object = paramc_ListenerAdd(v20, "finalsentencefound", &v30);
          if ((Object & 0x80000000) == 0)
          {
            v21 = *(*(v13 + 16) + 40);
            v30 = *v18;
            v31 = *(v13 + 976);
            Object = paramc_ListenerAdd(v21, "pitch", &v30);
            if ((Object & 0x80000000) == 0)
            {
              v22 = *(*(v13 + 16) + 40);
              v30 = *v18;
              v31 = *(v13 + 976);
              Object = paramc_ListenerAdd(v22, "pitch_baseline", &v30);
              if ((Object & 0x80000000) == 0)
              {
                Object = vol_GetInterface(1u, (v13 + 984));
                if ((Object & 0x80000000) == 0)
                {
                  __b = v13;
                  v34 = PushOutput;
                  v23 = (*(*(v13 + 984) + 32))(a3, a4, &__b, v13 + 992);
                  if ((v23 & 0x80000000) != 0)
                  {
                    v10 = v23;
                    *(v13 + 992) = 0;
                  }

                  else
                  {
                    *a5 = v13;
                    *(a5 + 8) = 83213;
                    v10 = synth_ObjReopen(v13, *(a5 + 8));
                    if ((v10 & 0x80000000) == 0)
                    {
                      log_OutEvent(*(v36 + 32), 21, "", v24, v25, v26, v27, v28, v30);
                      return v10;
                    }
                  }

LABEL_24:
                  synth_loc_ObjClose(v13, 0);
                  *a5 = 0;
                  *(a5 + 8) = 0;
                  return v10;
                }
              }
            }
          }
        }
      }
    }

    v10 = Object;
    goto LABEL_24;
  }

  return v10;
}

uint64_t synth_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  return synth_loc_ObjClose(a1, 0);
}

uint64_t synth_ObjReopen(_WORD **a1, int a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = 2164269066;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *__src = 0u;
  v53 = 0u;
  v50 = 0;
  __s1 = 0;
  v49 = 0;
  v47 = 0;
  v45 = 0;
  __s2 = 0;
  __s = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 1160) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v48 = 0;
  v46 = 0;
  v44 = 0;
  v4 = a1[2];
  paramc_ParamSetStr(*(v4 + 5), "voiceaddon", "");
  BrokerString = synth_CreateBrokerString(a1[2], __src, 0x100uLL, 0, 0);
  if ((BrokerString & 0x80000000) == 0)
  {
    v6 = BrokerString;
    if (!LH_stricmp(__src, a1 + 672))
    {
      return v6;
    }
  }

  v7 = synth_CreateBrokerString(a1[2], __src, 0x100uLL, 1, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v6 = v7;
  if (!LH_stricmp(__src, a1 + 672))
  {
    return v6;
  }

  if ((Lookup_CheckForDataFile(*a1, a1[1], __src, &v47) & 0x80000000) != 0)
  {
    __src[0] = 0;
  }

  if (v47)
  {
    if (__src[0])
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_13:
  __src[0] = 0;
LABEL_14:
  Int = synth_CreateBrokerString(a1[2], __src, 0x100uLL, 0, 0);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  Int = Lookup_CheckForDataFile(*a1, a1[1], __src, &v47);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  if (v47)
  {
    if (__src[0])
    {
      goto LABEL_21;
    }
  }

  else
  {
    __src[0] = 0;
  }

  Int = synth_CreateBrokerString(a1[2], __src, 0x100uLL, 0, 1);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

LABEL_21:
  Int = synth_loc_ObjClose(a1, 1);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  cstdlib_strcpy(a1 + 672, __src);
  Int = paramc_ParamGetInt(*(a1[2] + 5), "frequencyhz", a1 + 260);
  if ((Int & 0x80000000) != 0)
  {
    return Int;
  }

  Psola_GetToolSynthMode(&v48);
  if (v48 == 1)
  {
    v9 = 2;
    goto LABEL_29;
  }

  if (!v48)
  {
    v9 = 1;
LABEL_29:
    *(a1 + 1152) = v9;
    goto LABEL_30;
  }

  if (v48 >= 2)
  {
    v9 = 6;
    goto LABEL_29;
  }

  *(a1 + 1152) = 1;
  if ((paramc_ParamGetStr(*(v4 + 5), "typeofsynthesis", &__s1) & 0x80000000) == 0)
  {
    if (!cstdlib_strcmp(__s1, "psola"))
    {
      *(a1 + 1152) = 2;
    }

    paramc_ParamRelease(*(v4 + 5));
  }

LABEL_30:
  if ((a1[144] & 2) != 0)
  {
    v41 = 0;
    if ((paramc_ParamGetUInt(*(a1[2] + 5), "rate_baseline", &v41 + 1) & 0x80000000) != 0)
    {
      *(a1 + 264) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "rate_baseline", 0x64u);
    }

    else
    {
      *(a1 + 264) = WORD2(v41);
    }

    if ((paramc_ParamGetUInt(*(a1[2] + 5), "rate", &v41 + 1) & 0x80000000) != 0)
    {
      *(a1 + 526) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "rate", 0x64u);
      v11 = *(a1 + 526);
    }

    else
    {
      v11 = WORD2(v41);
      *(a1 + 526) = WORD2(v41);
    }

    *(a1 + 526) = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 264), v11);
    if ((paramc_ParamGetUInt(*(a1[2] + 5), "pitch_baseline", &v41) & 0x80000000) != 0)
    {
      *(a1 + 265) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "pitch_baseline", 0x64u);
    }

    else
    {
      *(a1 + 265) = v41;
    }

    if ((paramc_ParamGetUInt(*(a1[2] + 5), "pitch", &v41) & 0x80000000) != 0)
    {
      *(a1 + 527) = 100;
      paramc_ParamSetUInt(*(a1[2] + 5), "pitch", 0x64u);
      v12 = *(a1 + 527);
    }

    else
    {
      v12 = v41;
      *(a1 + 527) = v41;
    }

    *(a1 + 527) = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 265), v12);
    v13 = *(a1[2] + 5);
    v39 = *(a1 + 60);
    v40 = a1[122];
    Int = paramc_ListenerAdd(v13, "rate_baseline", &v39);
    if ((Int & 0x80000000) != 0)
    {
      return Int;
    }

    v14 = *(a1[2] + 5);
    v39 = *(a1 + 60);
    v40 = a1[122];
    Int = paramc_ListenerAdd(v14, "rate", &v39);
    if ((Int & 0x80000000) != 0)
    {
      return Int;
    }

    if (a1[126])
    {
      (*(a1[125] + 5))();
      a1[126] = 0;
    }
  }

  else if ((a1[144] & 1) != 0 && !a1[126])
  {
    Int = tsm_GetInterface(1u, a1 + 125);
    if ((Int & 0x80000000) == 0)
    {
      v10 = *(a1[123] + 7);
      *&v39 = a1[124];
      *(&v39 + 1) = v10;
      Int = (*(a1[125] + 4))(*a1, a1[1], &v39, a1 + 126);
      if ((Int & 0x80000000) != 0)
      {
        a1[126] = 0;
        return Int;
      }

      goto LABEL_52;
    }

    return Int;
  }

LABEL_52:
  synth_Wsola__Wsola(a1);
  v15 = a1[136];
  v16 = *(v15 + 3);
  v17 = heap_Alloc(*(v4 + 1), 4 * v16);
  a1[138] = v17;
  if (v17)
  {
    Synth__SetVectPointer(v17, *(v15 + 6), v16);
    v18 = *(v15 + 3);
    v19 = heap_Alloc(*(v4 + 1), 4 * v18);
    a1[139] = v19;
    if (v19)
    {
      Synth__SetVectPointer(v19, *(v15 + 8), v18);
      v20 = (*(v15 + 2) + *(v15 + 3));
      v21 = heap_Alloc(*(v4 + 1), 4 * v20);
      a1[140] = v21;
      if (v21)
      {
        Synth__SetVectPointer(v21, *(v15 + 9), v20);
        v22 = heap_Alloc(*(v4 + 1), 2 * *(v15 + 3));
        a1[142] = v22;
        if (v22)
        {
          *(v15 + 5) = v22;
          synth_SetWaitPeriod(a1, *(a1 + 522));
          Int = synth_GetDataHandles(a1, __src, &v46, &v45, &v44);
          if ((Int & 0x80000000) != 0)
          {
            return Int;
          }

          *(a1 + 232) = 1;
          v23 = heap_Calloc(*(v4 + 1), 1, 40);
          a1[117] = v23;
          if (v23)
          {
            v24 = v45;
            v25 = v23 + 40 * (*(a1 + 232) - 1);
            *v25 = v46;
            *(v25 + 8) = v24;
            *(v25 + 16) = v44;
            *(v25 + 24) = 0;
            v26 = heap_Calloc(*(v4 + 1), 1, 1);
            *&a1[117][20 * (*(a1 + 232) - 1) + 16] = v26;
            if (v26)
            {
              Int = paramc_ParamGetStr(*(v4 + 5), "voice", &v50);
              if ((Int & 0x80000000) != 0)
              {
                return Int;
              }

              if ((paramc_ParamGetStr(*(v4 + 5), "voiceoperatingpoint", &__s) & 0x80000000) != 0)
              {
                v27 = 0;
              }

              else
              {
                v27 = cstdlib_strlen(__s) + 1;
              }

              if ((paramc_ParamGetStr(*(v4 + 5), "vopversion", &__s2) & 0x80000000) != 0 || !cstdlib_strcmp(__s2, "0.0.0"))
              {
                v28 = 0;
              }

              else
              {
                v28 = cstdlib_strlen(__s2) + 1;
              }

              v29 = *(v4 + 1);
              v30 = cstdlib_strlen(v50);
              v31 = heap_Calloc(v29, 1, (v27 + v28 + v30 + 14));
              a1[118] = v31;
              if (v31)
              {
                cstdlib_strcpy(v31, "voiceaddons.");
                v32 = cstdlib_strlen(a1[118]);
                if (cstdlib_strlen(v50))
                {
                  v33 = 0;
                  v34 = 1;
                  do
                  {
                    *(a1[118] + v32) = cstdlib_tolower(v50[v33]);
                    v33 = v34;
                    ++v32;
                  }

                  while (cstdlib_strlen(v50) > v34++);
                }

                if (v27)
                {
                  cstdlib_strcat(a1[118], ".");
                  cstdlib_strcat(a1[118], __s);
                }

                if (v28)
                {
                  cstdlib_strcat(a1[118], ".");
                  cstdlib_strcat(a1[118], __s2);
                }

                paramc_ParamRelease(*(v4 + 5));
                if ((paramc_ParamGetStr(*(v4 + 5), a1[118], &v49) & 0x80000000) == 0 || (Int = paramc_ParamSetStr(*(v4 + 5), a1[118], ""), (Int & 0x80000000) == 0) && (Int = paramc_ParamGetStr(*(v4 + 5), a1[118], &v49), (Int & 0x80000000) == 0))
                {
                  Int = synth_UpdateAddons(a1, v49);
                  if ((Int & 0x80000000) == 0)
                  {
                    paramc_ParamRelease(*(v4 + 5));
                    v36 = *(v4 + 5);
                    v37 = a1[118];
                    v39 = *(a1 + 60);
                    v40 = a1[122];
                    return paramc_ListenerAdd(v36, v37, &v39);
                  }
                }

                return Int;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}