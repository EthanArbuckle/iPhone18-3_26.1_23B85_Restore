uint64_t Rhelp2_Lookup_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t **a5)
{
  v19 = 0;
  v18 = 0uLL;
  inited = InitRsrcFunction(a1, a2, &v19);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 0;
    v11 = heap_Calloc(*(v19 + 8), 1, 968);
    if (!v11)
    {
      return 2164269066;
    }

    v12 = v11;
    *v11 = v19;
    *(v11 + 8) = a3;
    cstdlib_strcpy((v11 + 16), a4);
    v17 = xmmword_26ED62860;
    Data = psi_VFDat__loadData(v12 + 232, a1, a2, a4, v12 + 88, 0, v12 + 136, 0, v12 + 184, 1);
    if ((Data & 0x80000000) != 0 || (Data = psi_Lookup__InitFromDatFiles(v12 + 232, v12 + 88, v12 + 136, v12 + 184, 0), (Data & 0x80000000) != 0))
    {
      v14 = Data;
    }

    else
    {
      v14 = chi_DecodePolyphone__Create(v12 + 400, 0, v19, *(v12 + 192), &v17);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v18;
        *(v12 + 936) = v17;
        *(v12 + 952) = v15;
LABEL_10:
        *a5 = v12;
        return v14;
      }
    }

    *a5 = v12;
    Rhelp2_Lookup_ObjClose(a5);
    v12 = 0;
    goto LABEL_10;
  }

  return inited;
}

uint64_t Rhelp2_Lookup_ObjClose(uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = chi_DecodePolyphone__Delete(v2 + 50, *v2);
    if ((v3 & 0x80000000) == 0)
    {
      v3 = psi_VFDat__unloadData((v2 + 29), (v2 + 11), (v2 + 17), (v2 + 23));
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  heap_Free(*(*v2 + 8), v2);
  *a1 = 0;
  return v4;
}

uint64_t Rhelp2_LoadUnitData(uint64_t a1, int a2, int *a3, unsigned int *a4, _DWORD *a5, _WORD *a6, unsigned int a7)
{
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v44 = 0;
  v12 = *a3;
  if (*a3 <= 0x35B)
  {
    v13 = 860 - *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = *a4;
  PreviousDemiID = psi_Lookup__getPreviousDemiID(a1 + 232, a2, &v49, &v50 + 1, &v52 + 1, &v52, &v51 + 1, &v50, &v51);
  if ((PreviousDemiID & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  v36 = a5;
  v39 = v52;
  v16 = HIDWORD(v51);
  v37 = a7;
  v38 = v51;
  v17 = a4;
  v18 = v12 - 860;
  if (v12 < 0x35C)
  {
    v19 = HIDWORD(v52) + 860;
    v23 = v12;
  }

  else
  {
    v19 = HIDWORD(v52) + 860;
    if (v12 == 860)
    {
      v23 = 860;
    }

    else
    {
      if (HIDWORD(v51))
      {
        v20 = HIDWORD(v51) + 860;
      }

      else
      {
        v20 = 860;
      }

      if (HIDWORD(v51))
      {
        v19 += HIDWORD(v51);
      }

      v21 = HIDWORD(v51) >= v18;
      v22 = HIDWORD(v51) - v18;
      if (v21)
      {
        v23 = v12;
      }

      else
      {
        v23 = v20;
      }

      if (v21)
      {
        v19 = HIDWORD(v52) + v12;
      }

      v16 = v21 ? v22 : 0;
    }
  }

  if (v14 - 440 >= 0x35D)
  {
    v24 = 1300;
  }

  else
  {
    v24 = v14;
  }

  if (v14 == 440)
  {
    v25 = 440;
  }

  else
  {
    v25 = v24;
  }

  if (HIBYTE(v50))
  {
    v25 = 440;
  }

  if (v14 < 0x1B8)
  {
    v26 = 440;
  }

  else
  {
    v14 = v25;
    v26 = v25;
  }

  v27 = HIBYTE(v50) != 0;
  v28 = v19 + v26;
  xi_Segment__Init_for_psola(a1 + 760, *a1, a1 + 936);
  *a3 = v23;
  *v17 = v14;
  v42 = __PAIR64__(v28, v16);
  LODWORD(v43) = 0;
  HIDWORD(v43) = v39;
  LODWORD(v44) = 0x10000;
  HIDWORD(v44) = v38;
  LOBYTE(v45) = 68;
  BYTE1(v45) = 16 * v27;
  PreviousDemiID = vect_s_t__createVect(*(*a1 + 8), &v46, v16 + v28 + 2160);
  if ((PreviousDemiID & 0x80000000) != 0 || (LODWORD(v48) = HIDWORD(v48), PreviousDemiID = psi_DataMapSegment__InitPoly(a1 + 232, &v43 + 1, &v44 + 1), (PreviousDemiID & 0x80000000) != 0) || (PreviousDemiID = xi_Segment__InitPoly_withDur(a1 + 760, &v42, HIDWORD(v43), SHIDWORD(v44), *(a1 + 256), *(*(a1 + 272) + 44)), (PreviousDemiID & 0x80000000) != 0))
  {
LABEL_40:
    inited = PreviousDemiID;
  }

  else
  {
    inited = chi_DecodePolyphone__InitPoly(a1 + 400);
    if ((inited & 0x80000000) == 0)
    {
      v30 = HIDWORD(v42);
      *(a1 + 672) = HIDWORD(v44);
      v41 = v30;
      chi_DecodePolyphone__SmpRequested(a1 + 400, (a1 + 760), &v41, &v46);
      v31 = *a3 + HIDWORD(v52) + *v17;
      *v36 = v31;
      if (v31 <= v37)
      {
        if (v12 <= 0x35B)
        {
          if (v31)
          {
            v35 = v47;
            do
            {
              *a6++ = v35[v13++];
              --v31;
            }

            while (v31);
          }
        }

        else if (v31)
        {
          v33 = v47;
          do
          {
            v34 = *v33++;
            *a6++ = v34;
            --v31;
          }

          while (v31);
        }
      }

      else
      {
        inited = 2164269065;
      }
    }
  }

  vect_s_t__deleteVect(&v46);
  chi_DecodePolyphone__DeinitPoly((a1 + 400));
  psi_DataMapSegment__DeinitPoly(a1 + 232);
  xi_Segment__DeinitPoly((a1 + 760));
  return inited;
}

uint64_t Rhelp2_Lookup_Deinit(uint64_t a1)
{
  chi_DecodePolyphone__DeinitPoly((a1 + 400));
  psi_DataMapSegment__DeinitPoly(a1 + 232);
  xi_Segment__DeinitPoly((a1 + 760));
  return 0;
}

uint64_t Rhelp2_Lookup_NrUnits(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 236);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Rhelp2_Lookup_Fingerprint(uint64_t a1, char *__dst, size_t __n)
{
  v3 = __n;
  v6 = 2164269057;
  v7 = *(a1 + 80);
  if (v7)
  {
    if (cstdlib_strlen(v7) >= __n)
    {
      v6 = 2164269057;
    }

    else
    {
      v6 = 0;
    }

    cstdlib_strncpy(__dst, *(a1 + 80), v3);
  }

  else
  {
    v8 = *(a1 + 236);
    v9 = __n;
    cstdlib_strncpy(__dst, (a1 + 16), __n);
    LODWORD(v10) = cstdlib_strlen(__dst);
    v11 = v10 < v3;
    if (v10 < v3 && v8)
    {
      v10 = v10;
      do
      {
        __dst[v10++] = (v8 % 0xA) | 0x30;
        v11 = v10 < v3;
        if (v10 >= v9)
        {
          break;
        }

        v12 = v8 > 9;
        v8 /= 0xAu;
      }

      while (v12);
    }

    if (v11)
    {
      v6 = 0;
      __dst[v10] = 0;
    }
  }

  return v6;
}

uint64_t rhelp2_lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ILookup;
  return result;
}

uint64_t psi_Synthesis__Denit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2164269056;
  if (!a1)
  {
    return 2164269062;
  }

  if (chi_DecodePolyphone__Delete((a1 + 1232), *(a1 + 16)))
  {
    v12 = "error in chi_DecodePolyphone__Delete";
  }

  else if (rho_Concat__Delete(a1 + 1592))
  {
    v12 = "error in rho_Concat__Delete";
  }

  else
  {
    if (!psi_VFDat__unloadData(a1 + 1064, a2, a3, a4))
    {
      return 0;
    }

    v12 = "error in psi_VFDat__unloadData";
  }

  log_OutText(*(*(a1 + 16) + 32), "SYNTH", 3, 0, v12, v9, v10, v11, v14);
  return v4;
}

uint64_t psi_Synthesis__Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2164269056;
  if (a1)
  {
    *(a1 + 1928) = 0;
    if (*(a5 + 12) == 22050)
    {
      if (psi_Lookup__InitFromDatFiles(a1 + 1064, a2, a3, a4, 0))
      {
        v12 = a1 + 16;
        v13 = "error in psi_Lookup__InitFromDatFiles";
      }

      else
      {
        v12 = a1 + 16;
        if (chi_DecodePolyphone__Create(a1 + 1232, a1, *(a1 + 16), *(a4 + 8), a5))
        {
          v13 = "error in chi_DecodePolyphone__Create";
        }

        else
        {
          if (!rho_Concat__Create(a1 + 1592, *(a1 + 16), a5))
          {
            v5 = 0;
            v15 = *(a5 + 16);
            *(a1 + 1976) = *a5;
            *(a1 + 1992) = v15;
            return v5;
          }

          v13 = "error in rho_Concat__Create";
        }
      }

      log_OutText(*(*v12 + 32), "SYNTH", 3, 0, v13, v9, v10, v11, v16);
    }

    psi_Synthesis__Denit(a1, a1 + 920, a1 + 968, a1 + 1016);
  }

  return v5;
}

uint64_t psi_Synthesis__FeedAllUnits(uint64_t a1, uint64_t a2)
{
  result = 2164269056;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 1928) = a2;
      *(a2 + 20) = 0;
      *(a1 + 1960) = 3;
    }
  }

  return result;
}

uint64_t psi_Synthesis__ProcessOnePolyphone(uint64_t a1, int a2)
{
  result = 0;
  v4 = *(a1 + 1960);
  if (v4 == 7)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (v4 != 5)
  {
    if (v4 != 3)
    {
      return result;
    }

    *(a1 + 1960) = 5;
  }

  result = rho_concatenate((a1 + 1592), a1 + 1232, (a1 + 1752), (a1 + 1928), a1 + 1064, a2);
  if (result)
  {
    v5 = result;
    if (*(*(a1 + 1928) + 20) != *(*(a1 + 1928) + 16))
    {
      return v5;
    }

    LODWORD(result) = 7;
LABEL_9:
    *(a1 + 1960) = result;
    return v5;
  }

  return result;
}

_DWORD *v_equ_i_t(_DWORD *result, int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *v_zap_i_t(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, 4 * a2);
  }

  return a1;
}

_WORD *v_equ_s_t(_WORD *result, __int16 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *v_zap_s_t(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, (2 * a2));
  }

  return a1;
}

_BYTE *v_equ_c_t(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *v_zap_c_t(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, a2);
  }

  return a1;
}

_BYTE *v_equ_uc_t(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *v_zap_uc_t(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, a2);
  }

  return a1;
}

uint64_t vect_i_t__fillZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2164269056;
  }

  cstdlib_memset(v2, 0, (4 * *(a1 + 20)));
  return 0;
}

uint64_t vect_i_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = a1;
    v6 = heap_Calloc(a1, 4, a3);
    *(a2 + 8) = v6;
    if (v6)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      cstdlib_memset(v6, 0, 4 * a3);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_i_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_u_t__fillZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2164269056;
  }

  cstdlib_memset(v2, 0, 4 * *(a1 + 20));
  return 0;
}

uint64_t vect_u_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 4, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      cstdlib_memset(v7, 0, 4 * v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_u_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_s_t__fillZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2164269056;
  }

  cstdlib_memset(v2, 0, 2 * *(a1 + 20));
  return 0;
}

uint64_t vect_s_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 2, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      cstdlib_memset(v7, 0, 2 * v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_s_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_us_t__fillZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2164269056;
  }

  cstdlib_memset(v2, 0, 2 * *(a1 + 20));
  return 0;
}

uint64_t vect_us_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 2, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      cstdlib_memset(v7, 0, 2 * v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_us_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_c_t__fillZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2164269056;
  }

  cstdlib_memset(v2, 0, *(a1 + 20));
  return 0;
}

uint64_t vect_c_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 1, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      cstdlib_memset(v7, 0, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_c_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_uc_t__fillZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2164269066;
  }

  cstdlib_memset(v2, 0, *(a1 + 20));
  return 0;
}

uint64_t vect_uc_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = a3;
  *a2 = a1;
  v6 = heap_Calloc(a1, 1, a3);
  *(a2 + 8) = v6;
  if (!v6)
  {
    return 2164269066;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  cstdlib_memset(v6, 0, v5);
  return 0;
}

uint64_t vect_uc_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t z__fxd_S32ShMultRndS32S32(int a1, int a2, __int16 a3)
{
  v3 = ((a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16) + (1 << (a3 - 17))) >> (a3 - 16);
  if (a3 == 16)
  {
    v3 = (a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16);
  }

  return (v3 + (((a2 >> 16) * (a1 >> 16)) << (32 - a3)));
}

uint64_t rho_Concat__OverlapWindow__Init(uint64_t a1, int a2)
{
  v2 = 2164269056;
  if (a2 > 15999)
  {
    if (a2 == 16000)
    {
      v3 = 161;
      v4 = &smpOverlapWindow_16_0;
      goto LABEL_10;
    }

    if (a2 == 22050)
    {
      v3 = 221;
      v4 = &smpOverlapWindow_22_0;
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 == 8000)
    {
      v3 = 81;
      v4 = &smpOverlapWindow_8_0;
      goto LABEL_10;
    }

    if (a2 == 11025)
    {
      v3 = 113;
      v4 = &smpOverlapWindow_11_0;
LABEL_10:
      v2 = 0;
      *(a1 + 136) = v4;
      *(a1 + 144) = v3;
      *(a1 + 148) = v3;
    }
  }

  return v2;
}

uint64_t rho_Concat__OverlapWindow__Denit(uint64_t a1)
{
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return 0;
}

uint64_t rho_Concat__WindowsOverlap_wsola(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a1 + 4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 8) + 2 * a4;
    v8 = *(a3 + 8) + 2 * a5;
    v9 = *(a1 + 136);
    v10 = 4 * v5;
    do
    {
      v11 = *(v7 + 2 * v6);
      v12 = *(v9 + 4 * v6);
      v13 = *(v9 + 4 * v6) >> 16;
      v14 = v11 >> 16;
      v15 = (v11 * v13 + v14 * v12 + ((v11 * v12 + 0x8000) >> 16) + 0x2000) >> 14;
      LOWORD(v13) = v14 * v13;
      v16 = *(v8 + 2 * v6);
      *(v7 + 2 * v6++) = v15 + 4 * (v13 + (v16 >> 15) * HIWORD(*(v9 + v10))) + ((v16 * (*(v9 + v10) >> 16) + (v16 >> 16) * *(v9 + v10) + ((v16 * *(v9 + v10) + 0x8000) >> 16) + 0x2000) >> 14);
      v10 -= 4;
    }

    while (v10);
  }

  return 0;
}

uint64_t rho_Concat__fade_out(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(a1 + 136);
  v6 = *(a2 + 8) + 2 * a3;
  do
  {
    if (2 * (a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    v7 = *(v6 + v4);
    v8 = *(v5 + 4 * v4);
    *(v6 + v4) = ((v7 * (*(v5 + 4 * v4) >> 16) + (v7 >> 16) * v8 + ((v7 * v8 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(*(v5 + 4 * v4)) * (v7 >> 15);
    v4 += 2;
  }

  while (*(a1 + 144) > v4);
  return 0;
}

uint64_t rho_Concat__fade_in(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 144) - 1;
  v5 = (*(a2 + 8) + 2 * a3);
  v6 = a4 & ~(a4 >> 31);
  v7 = v4 + 2;
  v8 = (*(a1 + 136) + 4 * v4);
  do
  {
    if (!v6)
    {
      break;
    }

    v9 = *v8;
    v8 -= 2;
    *v5 = ((*v5 * (v9 >> 16) + (*v5 >> 16) * v9 + ((*v5 * v9 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(v9) * (*v5 >> 15);
    ++v5;
    --v6;
    v7 -= 2;
  }

  while (v7 > 1);
  return 0;
}

uint64_t rho_Concat__fade_out_closure(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(a1 + 136);
  v6 = *(a2 + 8) + 2 * a3;
  do
  {
    if ((a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    v7 = *(v6 + 2 * v4);
    v8 = *(v5 + 4 * v4);
    *(v6 + 2 * v4) = ((v7 * (*(v5 + 4 * v4) >> 16) + (v7 >> 16) * v8 + ((v7 * v8 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(*(v5 + 4 * v4)) * (v7 >> 15);
    ++v4;
  }

  while (v4 < *(a1 + 144));
  return 0;
}

uint64_t rho_Concat__fade_in_burst(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 144) - 1;
  v5 = (*(a2 + 8) + 2 * a3);
  v6 = a4 & ~(a4 >> 31);
  v7 = v4 + 5;
  v8 = (*(a1 + 136) + 4 * v4);
  do
  {
    if (!v6)
    {
      break;
    }

    v9 = *v8;
    v8 -= 5;
    *v5 = ((*v5 * (v9 >> 16) + (*v5 >> 16) * v9 + ((*v5 * v9 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(v9) * (*v5 >> 15);
    ++v5;
    --v6;
    v7 -= 5;
  }

  while (v7 > 4);
  return 0;
}

uint64_t eta_Synth_RetrieveInputBlock(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2164269076;
  *a3 = 0;
  v4 = *(a1 + 296);
  if (!*(a1 + 296))
  {
    return v3;
  }

  v8 = 0;
  v9 = (a1 + 304);
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

    v4 = *(a1 + 296);
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

void eta_Synth_LinkMsgLayers(uint64_t a1)
{
  v13 = 0;
  cstdlib_memset((a1 + 464), 0, 0x98uLL);
  *(a1 + 464) = *(a1 + 16);
  if ((eta_Synth_RetrieveInputBlock(a1, "text/x-realspeak-usphonemes;charset=tts", &v13) & 0x80000000) == 0)
  {
    v2 = v13;
    v3 = *v13 + 1;
    *(a1 + 472) = **v13;
    *(a1 + 512) = v3;
    v4 = (*(v2 + 8) - 2);
    *(a1 + 520) = v4;
    if (!*(v3 + v4) && (eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usids;version=4.0", &v13) & 0x80000000) == 0)
    {
      v5 = v13;
      *(a1 + 488) = *v13;
      LODWORD(v5) = *(v5 + 8) >> 2;
      *(a1 + 496) = v5;
      if (v5 == 2 * *(a1 + 520) && (eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usmarkers-u16;version=4.0", &v13) & 0x80000000) == 0)
      {
        v6 = v13;
        v7 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
        *(a1 + 536) = v7;
        if (v7)
        {
          cstdlib_memcpy(v7, *v6, *(v6 + 8));
          if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usplosives;version=4.0", &v13) & 0x80000000) == 0)
          {
            v8 = v13;
            v9 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
            *(a1 + 560) = v9;
            if (v9)
            {
              cstdlib_memcpy(v9, *v8, *(v8 + 8));
              if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usdurs;version=4.0", &v13) & 0x80000000) == 0)
              {
                v10 = v13;
                v11 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
                *(a1 + 584) = v11;
                if (v11)
                {
                  cstdlib_memcpy(v11, *v10, *(v10 + 8));
                  if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v13) & 0x80000000) == 0)
                  {
                    v12 = (v13 + 8);
                    eta_Synth_SetupMarkers(a1 + 464, *v13, *(v13 + 8) >> 5, (v13 + 8));
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

__n128 eta_Synth_SetupMarkers(uint64_t a1, int *a2, int a3, int *a4)
{
  v8 = (*(a1 + 56) + a3);
  *(a1 + 144) = v8;
  if (a3 >= 1)
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

  if (*(a1 + 56) < 1)
  {
    v17 = 0;
    v25 = 0;
    goto LABEL_31;
  }

  v14 = 0;
  i = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(*(a1 + 72) + v14);
    if (i)
    {
      v19 = (*(a1 + 136) + 32 * v16);
      *v19 = 8;
      v19[6] = 0;
      ++v16;
      ++*(*(a1 + 72) + v14);
    }

    for (i = 0; v18; --v18)
    {
      if (v17 >= a3 || v16 >= *(a1 + 144))
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
      v22 = *(a1 + 136) + 32 * v16;
      *v22 = result;
      *(v22 + 16) = v21;
      ++v17;
      ++v16;
    }

    v23 = *(a1 + 48);
    if (v14 || *v23 != 35 || (*(a1 + 8) & 1) != 0)
    {
      v24 = (*(a1 + 136) + 32 * v16);
      *v24 = 33;
      v24[6] = v23[v14];
      ++v16;
      ++*(*(a1 + 72) + v14);
    }

    ++v14;
  }

  while (v14 < *(a1 + 56));
  v25 = v16;
LABEL_31:
  *(a1 + 144) = v25;
  *a4 = v17;
  if (**(a1 + 48) == 35)
  {
    v26 = *(a1 + 72);
    if (!*v26)
    {
      v27 = v26[1];
      if (*(a1 + 56) < 3)
      {
        *v26 = v27;
        *(*(a1 + 72) + 1) = 0;
      }

      else if (v26[1])
      {
        v28 = 0;
        v29 = 32 * v27;
        while (32 * (*(a1 + 144) & ~(*(a1 + 144) >> 31)) != v28)
        {
          v30 = *(a1 + 136);
          if (v30[v28 / 0x10].n128_u32[0] == 0x4000)
          {
            v31 = &v30[v28 / 0x10];
            v32 = *v31;
            result = v31[1];
            v33 = v30[1];
            *v31 = *v30;
            v31[1] = v33;
            v34 = *(a1 + 136);
            *v34 = v32;
            v34[1] = result;
            ++**(a1 + 72);
            --*(*(a1 + 72) + 1);
            return result;
          }

          v28 += 32;
          if (v29 == v28)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t eta_Synth_UnlinkMsgLayers(void *a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  v2 = a1[73];
  if (v2)
  {
    heap_Free(*(a1[2] + 8), v2);
    a1[73] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    heap_Free(*(a1[2] + 8), v3);
    a1[67] = 0;
  }

  v4 = a1[70];
  if (v4)
  {
    heap_Free(*(a1[2] + 8), v4);
    a1[70] = 0;
  }

  v5 = a1[75];
  if (!v5)
  {
    return 0;
  }

  heap_Free(*(a1[2] + 8), v5);
  result = 0;
  a1[75] = 0;
  return result;
}

uint64_t eta_Synth_Reset(uint64_t a1)
{
  mu_Reset(a1 + 1936);
  *(a1 + 1688) = 0;
  return 0;
}

uint64_t smc1175mrf22spi_DecoderProcess_F1(uint64_t a1, int a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5, char *a6, _WORD *a7, _DWORD *a8, int a9, int a10)
{
  v41[2] = *MEMORY[0x277D85DE8];
  if (a7 && a4 && a3 && a5 && (v14 = a6) != 0)
  {
    if (*a4)
    {
      v38 = 0;
      *a7 = 0;
      result = SecurelyRetrievePointer(a1, a2, &v38);
      if ((result & 0x80000000) == 0)
      {
        v17 = v38;
        v19 = (v38 + 8);
        v18 = *(v38 + 8);
        if (v18 <= *a4)
        {
          v20 = (a5 + 608);
          *(v38 + 4) = 19;
          ReadStream_CheckWhatModeFirst(v17 + 38, v17 + 65, a3, *v17, v18, v17 + 1, v41, v17 + 2140, v17 + 3, v19, v17 + 6, 1, *(v17 + 2506), 4);
          smc1175mrf22_ReadStream(a3, *(v38 + 8), (a5 + 608), *(v38 + 12), (v38 + 2140));
          v21 = v38;
          *a4 = *(v38 + 8);
          fxd_MultiStageVectorDecodeLsp__32BIT(a8, *(v21 + 4 * a9 + 152), (v21 + 32 * a9 + 164), *(v21 + 8 * a9 + 360), 16, v21 + 40 * a9 + 32, (a5 + 1340));
          fxd_OrderCheckLsp__S32((a5 + 1340), 16);
          LH_S32ToLH_S32((a5 + 1340), (v38 + 2072), 0x10u);
          v22 = 0;
          for (i = 0; i != 4; ++i)
          {
            v24 = v38;
            *(v38 + 1990) = 0;
            v25 = (*(v24 + 49) + 160 * i);
            v25[8] = 0u;
            v25[9] = 0u;
            v25[6] = 0u;
            v25[7] = 0u;
            v25[4] = 0u;
            v25[5] = 0u;
            v25[2] = 0u;
            v25[3] = 0u;
            *v25 = 0u;
            v25[1] = 0u;
            if (*(v24 + 1) == 19 && i < *v24)
            {
              LOBYTE(v26) = 0;
              v27 = 0;
            }

            else
            {
              v26 = *v20;
              v27 = v20[1];
              v20 += 2;
            }

            smc1175mrf22_fxd_DecodWFSet1_5p(a5, v40, 80, v26, v27);
            v28 = 0;
            v29 = v38;
            do
            {
              v30 = *(a5 + v28);
              v31 = (2 * v30 * v29[996] + 0x4000) >> 15;
              if (v31 <= -32768)
              {
                v31 = -32768;
              }

              if (v31 >= 0x7FFF)
              {
                LOWORD(v31) = 0x7FFF;
              }

              *(a5 + v28) = v30 + v31;
              v28 += 2;
            }

            while (v28 != 160);
            if (*(v29 + 1) == 19 && i < *v29)
            {
              v32 = 0;
            }

            else
            {
              v33 = *v20++;
              v32 = smc1175mrf22_fxd_DecodeCodeGain(v33, a5, 0, (v29 + 917), 80);
              v29 = v38;
            }

            v34 = 0;
            v29[982] = v32;
            v29[969] = v32;
            v35 = *(v29 + 49);
            v36 = v35 + 160 * i;
            v37 = v35 + v22;
            do
            {
              *(v37 + v34) += (2 * *(a5 + v34) * v29[969] + 0x8000) >> 16;
              v34 += 2;
            }

            while (v34 != 160);
            v29[996] = v29[995];
            LH_S32ToLH_S32((a5 + 1340), v29 + 1036, 0x10u);
            LH_S32ToLH_S32((a5 + 1340), __dst, 0x10u);
            if (a10)
            {
              fxd_LspToCosLsp__32BITX(__dst, __dst, 16);
              fxd_HighPrecisionCosLspToAi__32BIT(__dst, (a5 + 544), 16);
              FillZeroLH_S32(a5, 0x60u);
              LH_S32ToLH_S32((v38 + 2008), a5, 0x10u);
              fxd_HighPrecisionFastSynthesisFilter(v36, (a5 + 384), 80, 0, (a5 + 544), 0x10u, 28, a5, 14);
              LH_S32ToLH_S32((a5 + 320), (v38 + 2008), 0x10u);
            }

            LH_S16ToLH_S16((a5 + 384), v14, 0x50u);
            v14 += 160;
            *a7 += 160;
            v22 += 160;
          }

          LH_S32ToLH_S32((a5 + 1340), (v38 + 2072), 0x10u);
          LH_S16ToLH_S16((v38 + 1040), (v38 + 400), *(v38 + 20));
          FillZeroLH_S16((v38 + 2 * *(v38 + 20) + 400), 0x140u);
          result = 0;
          ++*(v38 + 2136);
        }

        else
        {
          *a4 = 0;
          *a7 = 0;
          return 2353012745;
        }
      }

      return result;
    }
  }

  else if (!a4)
  {
    goto LABEL_12;
  }

  *a4 = 0;
LABEL_12:
  result = 2353012742;
  if (a7)
  {
    *a7 = 0;
  }

  return result;
}

uint64_t GetBit(uint64_t result, _DWORD *a2, int a3)
{
  if (a3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v4 += *(result + v3) << v3;
      ++v3;
    }

    while (a3 != v3);
    result += a3;
  }

  *a2 = v4;
  return result;
}

unsigned __int8 *smc1175mrf22_ReadStream(unsigned __int8 *result, unsigned int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v14[213] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    v6 = v14;
    do
    {
      v7 = *result++;
      v8 = vdupq_n_s32(v7);
      *v6++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v8, xmmword_26ED62690), vshlq_u32(v8, xmmword_26ED62680))), 0x101010101010101);
      --v5;
    }

    while (v5);
  }

  if (a4)
  {
    v9 = 0;
    v10 = v14;
    do
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v13 += *(v10 + v12) << v12;
          ++v12;
        }

        while (v11 != v12);
        v10 = (v10 + v11);
      }

      else
      {
        v13 = 0;
      }

      *a3++ = v13;
      ++a5;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

unsigned int *ReadStream_CheckWhatModeFirst(unsigned int *result, int *a2, uint64_t a3, int a4, int a5, int *a6, void *a7, char *__dst, _DWORD *a9, int *a10, _DWORD *a11, int a12, char a13, int a14)
{
  v19 = result;
  v20 = 0;
  v71 = *MEMORY[0x277D85DE8];
  *a7 = -1;
  a7[1] = -1;
  do
  {
    v22 = vdupq_n_s32(*(a3 + v20));
    *&v70[8 * v20++] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v22, xmmword_26ED62690), vshlq_u32(v22, xmmword_26ED62680))), 0x101010101010101);
  }

  while (v20 != 5);
  if (a13)
  {
    if (!a12)
    {
      switch(a13)
      {
        case 3:
          *a6 = 22;
          *a10 = 49;
          *&v31 = 0x300000003;
          *(&v31 + 1) = 0x300000003;
          *a7 = v31;
          *a11 = 3;
          *a9 = 44;
          v24 = au16BitAllocatiobMod22;
          v25 = __dst;
          v26 = 88;
          break;
        case 2:
          *a6 = 21;
          *a10 = 39;
          *&v30 = 0x200000002;
          *(&v30 + 1) = 0x200000002;
          *a7 = v30;
          *a11 = 2;
          *a9 = 36;
          v24 = &au16BitAllocatiobMod21;
          v25 = __dst;
          v26 = 72;
          break;
        case 1:
          *a6 = 20;
          *a10 = 28;
          *&v23 = 0x100000001;
          *(&v23 + 1) = 0x100000001;
          *a7 = v23;
          *a11 = 1;
          *a9 = 28;
          v24 = au16BitAllocatiobMod20;
          v25 = __dst;
          v26 = 56;
          break;
        default:
LABEL_17:
          v28 = 0;
          goto LABEL_18;
      }

      result = cstdlib_memcpy(v25, v24, v26);
      goto LABEL_17;
    }

LABEL_10:
    *a6 = 19;
    *a10 = 16;
    *&v27 = 0x100000001;
    *(&v27 + 1) = 0x100000001;
    *a7 = v27;
    *a11 = 1;
    *a9 = 15;
    result = cstdlib_memcpy(__dst, &au16BitAllocatiobMod19, 0x1EuLL);
    v28 = 0;
    a14 = 4 - a4;
    goto LABEL_18;
  }

  if (a12)
  {
    goto LABEL_10;
  }

  if (v70[0] != 1)
  {
    if (!v70[0])
    {
      *a6 = 15;
      *a10 = 28;
      *&v29 = 0x100000001;
      *(&v29 + 1) = 0x100000001;
      *a7 = v29;
      v28 = 1;
      *a11 = 1;
      *a9 = 29;
      result = cstdlib_memcpy(__dst, &au16BitAllocatiobMod15, 0x3AuLL);
      *__dst = 1;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v70[1])
  {
    *a6 = 16;
    *a10 = 39;
    *&v58 = 0x200000002;
    *(&v58 + 1) = 0x200000002;
    *a7 = v58;
    v28 = 2;
    *a11 = 2;
    *a9 = 37;
    result = cstdlib_memcpy(__dst, &au16BitAllocatiobMod16, 0x4AuLL);
LABEL_76:
    *__dst = 65537;
    goto LABEL_18;
  }

  if (!v70[2])
  {
    *a6 = 17;
    *a10 = 50;
    *&v59 = 0x300000003;
    *(&v59 + 1) = 0x300000003;
    *a7 = v59;
    v28 = 3;
    *a11 = 3;
    *a9 = 46;
    result = cstdlib_memcpy(__dst, &au16BitAllocatiobMod17, 0x5CuLL);
    *(__dst + 2) = 1;
    goto LABEL_76;
  }

  if (v70[3])
  {
    if (v70[4])
    {
      goto LABEL_17;
    }

    v53 = 0;
    v54 = v70;
    while (v53 != 9)
    {
      v55 = 0;
      v56 = 0;
      v57 = word_26ED63682[v53];
      do
      {
        v56 += v54[v55] << v55;
        ++v55;
      }

      while (v57 != v55);
      v54 += v57;
      v67[v53++] = v56;
      if (v53 == 10)
      {
        goto LABEL_86;
      }
    }

    v69 = 0;
LABEL_86:
    v66.i64[0] = 0x400000004;
    v66.i64[1] = 0x400000004;
    *a7 = vaddq_s32(*&v68[4], v66);
    *a6 = 23;
    *(__dst + 8) = 3;
    *__dst = xmmword_26ED631C0;
    v28 = 9;
  }

  else
  {
    v60 = 0;
    v61 = v70;
    while (v60 != 8)
    {
      v62 = 0;
      v63 = 0;
      v64 = word_26ED6366E[v60];
      do
      {
        v63 += v61[v62] << v62;
        ++v62;
      }

      while (v64 != v62);
      v61 += v64;
      v67[v60++] = v63;
      if (v60 == 9)
      {
        goto LABEL_84;
      }
    }

    *&v68[16] = 0;
LABEL_84:
    v65.i64[0] = 0x100000001;
    v65.i64[1] = 0x100000001;
    *a7 = vaddq_s32(*v68, v65);
    *a6 = 18;
    *__dst = xmmword_26ED631D0;
    v28 = 8;
  }

LABEL_18:
  v32 = *a6;
  if ((*a6 - 20) >= 3)
  {
    if (v32 != 19)
    {
      if (v32 == 15)
      {
        v35 = v19[1];
        if (v35 >= 1)
        {
          v36 = a2 + 8;
          v28 = v28;
          do
          {
            v37 = *v36++;
            *&__dst[2 * v28++] = v37;
            --v35;
          }

          while (v35);
        }
      }

      else
      {
        v38 = *v19;
        if (v38 >= 1)
        {
          v28 = v28;
          do
          {
            v39 = *a2++;
            *&__dst[2 * v28++] = v39;
            --v38;
          }

          while (v38);
        }
      }
    }
  }

  else
  {
    v33 = *v19;
    if (v33 >= 1)
    {
      v28 = v28;
      do
      {
        v34 = *a2++;
        *&__dst[2 * v28++] = v34;
        --v33;
      }

      while (v33);
    }
  }

  if (a14 >= 1)
  {
    v40 = 0;
    if (v32 == 23)
    {
      v41 = 7;
    }

    else
    {
      v41 = 5;
    }

    while (1)
    {
      if (v32 != 19)
      {
        v42 = &__dst[2 * v28];
        if (v40)
        {
          *v42 = v41;
          v43 = &__dst[2 * v28 + 2];
        }

        else
        {
          *v42 = 9;
          v43 = (v42 + 1);
        }

        v28 = (v28 + 2);
        *v43 = 8;
      }

      result = *(a7 + v40);
      if (result >= 1)
      {
        break;
      }

      v46 = v28;
LABEL_54:
      ++v40;
      v28 = v46;
      if (v40 == a14)
      {
        goto LABEL_57;
      }
    }

    v44 = 0;
    while (1)
    {
      v45 = &__dst[2 * v28];
      if (!v44)
      {
        break;
      }

      v46 = v28 + 2;
      if (v44 > 2)
      {
        *v45 = 1310725;
        if (v32 == 23)
        {
          v47 = &__dst[2 * v46];
          goto LABEL_50;
        }
      }

      else
      {
        *v45 = 1114116;
        if (v32 == 23)
        {
          v47 = &__dst[2 * v46];
LABEL_50:
          v46 = (v28 + 3);
          *v47 = 6;
        }
      }

      ++v44;
      LODWORD(v28) = v46;
      if (result == v44)
      {
        goto LABEL_54;
      }
    }

    *v45 = 1310725;
    v47 = v45 + 4;
    goto LABEL_50;
  }

  LODWORD(v46) = v28;
LABEL_57:
  v48 = 0;
  v49 = &__dst[2 * v46];
  *(v49 + 4) = 0;
  v50 = (v49 + 8);
  *&__dst[2 * v46] = 0;
  if (v50 >= __dst)
  {
    v48 = 0;
    do
    {
      v51 = *v50--;
      v48 += v51;
    }

    while (v50 >= __dst);
  }

  if ((v48 & 7) != 0)
  {
    v52 = (v48 >> 3) + 1;
  }

  else
  {
    v52 = v48 >> 3;
  }

  *a10 = v52;
  *a9 = (2 * v46 + 6) >> 1;
  return result;
}

uint64_t smc1175mrf22spi_GetInfo(__int16 a1, char a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return 2353012742;
  }

  *(a4 + 8) = 40;
  *a4 = vdup_n_s32(0x53FCu);
  *(a4 + 28) = 1704;
  *(a4 + 16) = 4007;
  *(a4 + 20) = 0x34000D500680280;
  v4 = 0;
  if (a3 == 1)
  {
    *(a4 + 30) = 0;
  }

  else
  {
    *(a4 + 30) = 92015056;
    *(a4 + 12) = 4;
    *(a4 + 18) = a1;
    *(a4 + 34) = a2;
  }

  return v4;
}

uint64_t SecurelyRetrievePointer(uint64_t a1, int a2, uint64_t *a3)
{
  *a3 = 0;
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      *a3 = a1;
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_DecoderOpen(__int16 a1, char a2, unsigned __int8 *a3, char *__b, uint64_t a5)
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = 2353012742;
  if (__b)
  {
    v7 = __b;
    cstdlib_memset(__b, 0, 0x9D0uLL);
    if (a5)
    {
      *a5 = v7;
      *(a5 + 8) = 65732;
      if (a3)
      {
        v79 = 32;
        v11 = 1;
        smc1175mrf22_ReadStream(a3, 4u, __src, 1, &v79);
        v12 = __src[0];
        *(v7 + 192) = __src[0];
        v13 = v12;
        v70 = a2;
        v69 = a5;
        v68 = a1;
        if (v13 < 1)
        {
          LOWORD(v12) = 0;
          v14 = 0;
        }

        else
        {
          memset_pattern16(v80, &unk_26ED636C0, (2 * v12) & 0x1FFFF);
          v14 = 0;
          v11 = v13 + 1;
          v15 = v80;
          do
          {
            v16 = *v15++;
            v14 += v16;
            --v13;
          }

          while (v13);
        }

        if ((v14 & 7) != 0)
        {
          v17 = (v14 >> 3) + 1;
        }

        else
        {
          v17 = v14 >> 3;
        }

        v18 = v17;
        smc1175mrf22_ReadStream(a3 + 4, v17, v81, v12, v80);
        if (*(v7 + 192) >= 1)
        {
          v19 = 0;
          LODWORD(v20) = v18 + 4;
          v21 = (v7 + 164);
          v22 = v7 + 360;
          v71 = v7 + 260;
          v72 = v7 + 32;
          v73 = v7 + 164;
          v74 = v7 + 152;
          v75 = v7;
          do
          {
            v23 = v11 + 1;
            v24 = &v80[v11 - 1];
            *v24 = 32;
            smc1175mrf22_ReadStream(&a3[v20], 4u, &v74[4 * v19], 1, v24);
            v76 = &v74[4 * v19];
            v25 = *v76;
            if (v25 <= 0)
            {
              v26 = 0;
              v27 = v11 + 1;
            }

            else
            {
              memset_pattern16(&v80[v23 - 1], &unk_26ED636C0, 2 * v25);
              v26 = 0;
              v27 = v11 + v25 + 1;
              v28 = &v80[v23 - 1];
              do
              {
                v29 = *v28++;
                v26 += v29;
                --v25;
              }

              while (v25);
            }

            v30 = v20 + 4;
            if ((v26 & 7) != 0)
            {
              v31 = (v26 >> 3) + 1;
            }

            else
            {
              v31 = v26 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v30], v31, &v73[32 * v19], (v27 - v23), &v80[v23 - 1]);
            v32 = *v76;
            v33 = 12 * v32 + 24;
            if (v32 < 1)
            {
              if (v33 != v81[v19])
              {
                return 2353012745;
              }

              v38 = 0;
              v37 = &v80[v27 - 1];
              v39 = v27;
            }

            else
            {
              v34 = *v76;
              v35 = v21;
              do
              {
                v36 = *v35++;
                v33 += 32 * v36;
                --v34;
              }

              while (v34);
              if (v33 != v81[v19])
              {
                return 2353012745;
              }

              v37 = &v80[v27 - 1];
              memset_pattern16(v37, &unk_26ED636C0, 2 * v32);
              v38 = 0;
              v39 = v27 + v32;
              v40 = v37;
              do
              {
                v41 = *v40++;
                v38 += v41;
                --v32;
              }

              while (v32);
            }

            v42 = v30 + v31;
            if ((v38 & 7) != 0)
            {
              v43 = (v38 >> 3) + 1;
            }

            else
            {
              v43 = v38 >> 3;
            }

            v44 = v43;
            v45 = v39 - v27;
            v46 = (v39 - v27);
            smc1175mrf22_ReadStream(&a3[v42], v43, __src, v46, v37);
            if (v46)
            {
              memcpy(&v71[32 * v19], __src, 4 * v45);
            }

            v47 = 0;
            v48 = 0;
            v49 = &v80[v39 - 1];
            *v49 = 2097184;
            v49[2] = 32;
            *(v49 + 3) = 2097184;
            do
            {
              v48 += v49[v47++];
            }

            while (v47 != 5);
            v50 = (v42 + v44);
            v51 = v39 + 5;
            if ((v48 & 7) != 0)
            {
              v52 = (v48 >> 3) + 1;
            }

            else
            {
              v52 = v48 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v50], v52, __src, 5, v49);
            *(v75 + 7) = __src[1];
            v53 = *v76;
            if (v53 < 1)
            {
              v11 = v39 + 5;
            }

            else
            {
              memset_pattern16(&v80[v51 - 1], &unk_26ED636C0, 2 * v53);
              v11 = v39 + v53 + 5;
            }

            if (v11 - v51 < 1)
            {
              v54 = 0;
            }

            else
            {
              v54 = 0;
              v55 = &v80[v51 - 1];
              v56 = (v11 - v51);
              do
              {
                v57 = *v55++;
                v54 += v57;
                --v56;
              }

              while (v56);
            }

            v58 = v50 + v52;
            if ((v54 & 7) != 0)
            {
              v59 = (v54 >> 3) + 1;
            }

            else
            {
              v59 = v54 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v58], v59, &v72[40 * v19], (v11 - v51), &v80[v51 - 1]);
            v20 = v58 + v59;
            v77 = 16;
            *&v22[8 * v19] = &a3[v20];
            v60 = *v76;
            if (v60 < 1)
            {
              v7 = v75;
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = 4 * v60;
              v7 = v75;
              do
              {
                v62 += 32 * v21[v61 / 4];
                v61 += 4;
              }

              while (v63 != v61);
              if (v62)
              {
                v64 = 0;
                v65 = v62 >> 1;
                if (v65 <= 1)
                {
                  v66 = 1;
                }

                else
                {
                  v66 = v65;
                }

                do
                {
                  smc1175mrf22_ReadStream(&a3[v20], 2u, __src, 1, &v77);
                  *(*&v22[8 * v19] + 2 * v64) = __src[0];
                  LODWORD(v20) = v20 + 2;
                  ++v64;
                }

                while (v66 != v64);
              }
            }

            ++v19;
            v21 += 8;
          }

          while (v19 < *(v7 + 192));
        }

        *v7 = v68;
        *(v7 + 6) = 1;
        *(v7 + 8) = xmmword_26ED636A0;
        *(v7 + 49) = v7 + 1194;
        smc1175mrf22spi_DecoderResetMemory(*v69, v69[1]);
        v5 = 0;
        *(v7 + 534) = 0;
        v7[2506] = v70;
      }
    }

    else
    {
      return 2353012744;
    }
  }

  return v5;
}

uint64_t smc1175mrf22spi_DecoderResetMemory(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      cstdlib_memset((a1 + 400), 0, 0x59AuLL);
      cstdlib_memset((a1 + 2008), 0, 0x40uLL);
      cstdlib_memset((a1 + 1994), 0, 6uLL);
      cstdlib_memset((a1 + 2000), 0, 6uLL);
      *(a1 + 1990) = 214695936;
      v4 = (a1 + 1964);
      memset_pattern16((a1 + 1834), &unk_26ED636B0, 0x68uLL);
      v5 = 13;
      do
      {
        *(v4 - 13) = 0;
        *v4++ = 0;
        --v5;
      }

      while (v5);
      fxd_LinSpace(v8, 0, 25736, 16);
      result = 0;
      v6 = v8[1];
      v7 = vshll_high_n_s16(v8[0], 0xAuLL);
      *(a1 + 2072) = vshll_n_s16(*v8[0].i8, 0xAuLL);
      *(a1 + 2088) = v7;
      *(a1 + 2104) = vshll_n_s16(*v6.i8, 0xAuLL);
      *(a1 + 2120) = vshll_high_n_s16(v6, 0xAuLL);
      *(a1 + 2136) = 0;
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_getDecoderBufferSize(unsigned __int16 *a1, int a2, uint64_t a3, unsigned int *a4, unsigned int *a5, int a6, int *a7)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v13 = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((v13 & 0x80000000) == 0)
  {
    if (a1)
    {
      v14 = *a5;
      if (*a5)
      {
        if (v14 < 0x280)
        {
          *a5 &= 0x3FEu;
          if (v14 <= 0xA1)
          {
            v16 = v14 != 1;
          }

          else
          {
            v16 = 2;
          }

          if (v14 <= 0x141)
          {
            v17 = v16;
          }

          else
          {
            v17 = 3;
          }

          if (v14 <= 0x1E1)
          {
            v15 = v17;
          }

          else
          {
            v15 = 4;
          }
        }

        else
        {
          *a5 = 640;
          v15 = 4;
        }

        *a7 = v15;
        ReadStream_CheckWhatModeFirst(a1 + 38, a1 + 65, a3, *a1, a1[4], a1 + 1, v19, a1 + 2140, a1 + 3, a1 + 2, a1 + 6, a6, *(a1 + 2506), v15);
        v14 = *(a1 + 2);
      }

      else
      {
        *(a1 + 1) = 0;
        *(a1 + 6) = 0;
        *a5 = 0;
      }

      *a4 = v14;
    }

    else
    {
      return 2353012744;
    }
  }

  return v13;
}

uint64_t smc1175mrf22spi_getSpectrum(unsigned __int16 *a1, int a2, unsigned __int8 *a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((v9 & 0x80000000) == 0)
  {
    if (!a1)
    {
      return 2353012744;
    }

    v15 = 0;
    v16 = 0;
    ReadStream_CheckWhatModeFirst(a1 + 38, a1 + 65, a3, *a1, a1[4], &v15, &v17, __dst, &v16, &v16 + 1, &v15 + 1, 0, *(a1 + 2506), 0);
    smc1175mrf22_ReadStream(a3, WORD2(v16), a4, v16, __dst);
    v10 = v15;
    *a5 = v15 == 15;
    if (v10 <= 18)
    {
      if (v10 > 16)
      {
        if (v10 == 17)
        {
          v11 = 3;
        }

        else
        {
          v11 = 8;
        }

        goto LABEL_20;
      }

      if (v10 == 15)
      {
        v11 = 1;
        goto LABEL_20;
      }

      if (v10 == 16)
      {
        v11 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v10 - 20) < 3)
      {
        v11 = 0;
        *a5 = 0;
        goto LABEL_20;
      }

      if (v10 == 19)
      {
        v11 = 0;
        goto LABEL_20;
      }

      if (v10 == 23)
      {
        v11 = 9;
        goto LABEL_20;
      }
    }

    v11 = 4;
LABEL_20:
    v12 = 0;
    v13 = &a4[v11];
    do
    {
      a4[v12] = v13[v12];
      ++v12;
    }

    while (v12 != 5);
  }

  return v9;
}

uint64_t smc1175mrf22spi_DecoderProcess(unsigned __int16 *a1, int a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5, char *a6, _WORD *a7, _DWORD *a8, int a9, int a10, int a11, int a12)
{
  v108 = *MEMORY[0x277D85DE8];
  v103 = 0;
  if (!a7 || !a4 || !a3 || !a5 || !a6)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!*a4)
  {
LABEL_12:
    *a4 = 0;
LABEL_13:
    result = 2353012742;
    if (a7)
    {
      *a7 = 0;
    }

    return result;
  }

  *a7 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      if (*(a1 + 2) > *a4)
      {
        *a4 = 0;
        *a7 = 0;
        return 2353012745;
      }

      v20 = (a5 + 608);
      v21 = a1 + 76;
      ReadStream_CheckWhatModeFirst(a1 + 38, a1 + 65, a3, *a1, *(a1 + 2), a1 + 1, v104, a1 + 2140, a1 + 3, a1 + 2, a1 + 6, 0, *(a1 + 2506), a10);
      smc1175mrf22_ReadStream(a3, a1[4], (a5 + 608), a1[6], a1 + 1070);
      v22 = 0;
      v23 = *(a1 + 1);
      *a4 = *(a1 + 2);
      __dst = a6;
      if (v23 <= 16)
      {
        if (v23 == 15)
        {
          v20 = (a5 + 612);
          v22 = 1;
        }

        else if (v23 == 16)
        {
          v22 = 0;
          v20 = (a5 + 616);
        }
      }

      else
      {
        switch(v23)
        {
          case 17:
            v22 = 0;
            v20 = (a5 + 620);
            break;
          case 18:
            v22 = 0;
            v20 = (a5 + 640);
            break;
          case 23:
            v22 = 0;
            v20 = (a5 + 644);
            break;
        }
      }

      if (a11)
      {
        fxd_MultiStageVectorDecodeLsp__32BIT(a8, *&v21[2 * a9], &a1[16 * a9 + 82], *&a1[4 * a9 + 180], 16, &a1[20 * a9 + 16], __b);
        fxd_OrderCheckLsp__S32(__b, 16);
        fxd_MultiStageVectorDecodeLsp__32BIT(v20, *&v21[2 * v22], &a1[16 * v22 + 82], *&a1[4 * v22 + 180], 16, &a1[20 * v22 + 16], (a5 + 1340));
        fxd_OrderCheckLsp__S32((a5 + 1340), 16);
      }

      v24 = *&v21[2 * v22];
      v102 = 0;
      if (a10 >= 1)
      {
        v101 = 0;
        v25 = 0;
        v26 = &v20[v24];
        v95 = (a1 + 917);
        v97 = a1 + 982;
        v27 = (a1 + 969);
        do
        {
          v28 = 80 * v25;
          v29 = v104 + v25;
          v98 = v25;
          if (a12)
          {
            v96 = v104 + v25;
            v30 = v26;
            smc1175mrf22_DecodeLag_11_22(*v26, v25, *(a1 + 1), &v103, &v102);
            smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22((*(a1 + 49) + 160 * v25), v103, 80);
            v31 = 0;
            a1[995] = smc1175mrf22_fxd_qgp[v30[1]];
            v32 = *(a1 + 49) + v101;
            do
            {
              v33 = (2 * *(v32 + v31) * a1[995] + 0x4000) >> 15;
              if (v33 <= -32768)
              {
                v33 = -32768;
              }

              if (v33 >= 0x7FFF)
              {
                LOWORD(v33) = 0x7FFF;
              }

              *(v32 + v31) = v33;
              v31 += 2;
            }

            while (v31 != 160);
            smc1175mrf22_fxd_DecodWFSet1_5p(a5, v107, 80, v30[2], v30[3]);
            v34 = v103;
            if (v103 > 79)
            {
              v42 = smc1175mrf22_fxd_DecodeCodeGain(v30[4], a5, 5, v95, 80);
              v43 = 0;
              a1[982] = v42;
              a1[969] = v42;
              v44 = *(a1 + 49);
              do
              {
                *(v44 + 2 * (v107[v43] + v28)) += (2 * *(a5 + 2 * v107[v43]) * *v27 + 0x8000) >> 16;
                ++v43;
              }

              while (v43 != 5);
            }

            else
            {
              v35 = 0;
              do
              {
                v36 = (2 * *(a5 + v35) * a1[996] + 0x4000) >> 15;
                if (v36 <= -32768)
                {
                  v36 = -32768;
                }

                if (v36 >= 0x7FFF)
                {
                  LOWORD(v36) = 0x7FFF;
                }

                *(a5 + 2 * v34++) += v36;
                v35 += 2;
              }

              while (v34 != 80);
              v37 = smc1175mrf22_fxd_DecodeCodeGain(v30[4], a5, 0, v95, 80);
              v38 = 0;
              a1[982] = v37;
              a1[969] = v37;
              v39 = *(a1 + 49) + v101;
              do
              {
                *(v39 + v38) += (2 * *(a5 + v38) * *v27 + 0x8000) >> 16;
                v38 += 2;
              }

              while (v38 != 160);
            }

            if (*v96 > 1)
            {
              v45 = *(a1 + 1);
              smc1175mrf22_fxd_DecodWFSet1_4p(a5, v107, 80, v30[5], v30[6]);
              if (*(a1 + 1) < 23)
              {
                v41 = v30 + 7;
                v46 = v45 > 22;
                v47 = (43690 * v97[v46] + 0x8000) >> 16;
              }

              else
              {
                v46 = v45 > 22;
                LOWORD(v47) = smc1175mrf22_fxd_DecodeCodeGain(v30[7], a5, 4, v95 + 8 * v46, 80);
                v97[v46] = v47;
                v41 = v30 + 8;
              }

              v27[v46] = v47;
              v48 = v103;
              if (v103 > 79)
              {
                v55 = 0;
                v56 = *(a1 + 49);
                do
                {
                  *(v56 + 2 * (v107[v55] + v28)) += (2 * *(a5 + 2 * v107[v55]) * v27[v45 > 22] + 0x8000) >> 16;
                  ++v55;
                }

                while (v55 != 4);
              }

              else
              {
                v49 = v103 + 1;
                v50 = a5;
                do
                {
                  v51 = (2 * *v50 * a1[996] + 0x4000) >> 15;
                  if (v51 <= -32768)
                  {
                    v51 = -32768;
                  }

                  if (v51 >= 0x7FFF)
                  {
                    LOWORD(v51) = 0x7FFF;
                  }

                  v50[v48] += v51;
                  ++v50;
                  v52 = v49++ == 80;
                }

                while (!v52);
                v53 = 0;
                v54 = *(a1 + 49) + v101;
                do
                {
                  *(v54 + v53) += (2 * *(a5 + v53) * v27[v45 > 22] + 0x8000) >> 16;
                  v53 += 2;
                }

                while (v53 != 160);
              }

              if (*v96 <= 2)
              {
                goto LABEL_137;
              }

              v57 = 2 * (*(a1 + 1) > 22);
              v58 = v41;
              smc1175mrf22_fxd_DecodWFSet1_4p(a5, v107, 80, *v41, v41[1]);
              if (*(a1 + 1) < 23)
              {
                v41 = v58 + 2;
                v59 = ((v97[v57] << 15) + 0x8000) >> 16;
              }

              else
              {
                LOWORD(v59) = smc1175mrf22_fxd_DecodeCodeGain(v58[2], a5, 4, v95 + 8 * v57, 80);
                v97[v57] = v59;
                v41 = v58 + 3;
              }

              v27[v57] = v59;
              v60 = v103;
              if (v103 > 79)
              {
                v66 = 0;
                v67 = *(a1 + 49);
                do
                {
                  *(v67 + 2 * (v107[v66] + v28)) += (2 * *(a5 + 2 * v107[v66]) * v27[v57] + 0x8000) >> 16;
                  ++v66;
                }

                while (v66 != 4);
              }

              else
              {
                v61 = v103 + 1;
                v62 = a5;
                do
                {
                  v63 = (2 * *v62 * a1[996] + 0x4000) >> 15;
                  if (v63 <= -32768)
                  {
                    v63 = -32768;
                  }

                  if (v63 >= 0x7FFF)
                  {
                    LOWORD(v63) = 0x7FFF;
                  }

                  v62[v60] += v63;
                  ++v62;
                  v52 = v61++ == 80;
                }

                while (!v52);
                v64 = 0;
                v65 = *(a1 + 49) + v101;
                do
                {
                  *(v65 + v64) += (2 * *(a5 + v64) * v27[v57] + 0x8000) >> 16;
                  v64 += 2;
                }

                while (v64 != 160);
              }

              if (*v96 <= 3)
              {
                goto LABEL_137;
              }

              if (*(a1 + 1) <= 22)
              {
                v68 = 0;
              }

              else
              {
                v68 = 3;
              }

              v69 = v41;
              smc1175mrf22_fxd_DecodWFSet1_5p(a5, v107, 80, *v41, v41[1]);
              if (*(a1 + 1) < 23)
              {
                v41 = v69 + 2;
                v70 = (26214 * v97[v68] + 0x8000) >> 16;
              }

              else
              {
                LOWORD(v70) = smc1175mrf22_fxd_DecodeCodeGain(v69[2], a5, 5, v95 + 8 * v68, 80);
                v97[v68] = v70;
                v41 = v69 + 3;
              }

              v27[v68] = v70;
              v71 = v103;
              v29 = v96;
              if (v103 > 79)
              {
                v77 = 0;
                v78 = *(a1 + 49);
                do
                {
                  *(v78 + 2 * (v107[v77] + v28)) += (2 * *(a5 + 2 * v107[v77]) * v27[v68] + 0x8000) >> 16;
                  ++v77;
                }

                while (v77 != 5);
              }

              else
              {
                v72 = v103 + 1;
                v73 = a5;
                do
                {
                  v74 = (2 * *v73 * a1[996] + 0x4000) >> 15;
                  if (v74 <= -32768)
                  {
                    v74 = -32768;
                  }

                  if (v74 >= 0x7FFF)
                  {
                    LOWORD(v74) = 0x7FFF;
                  }

                  v73[v71] += v74;
                  ++v73;
                  v52 = v72++ == 80;
                }

                while (!v52);
                v75 = 0;
                v76 = *(a1 + 49) + v101;
                do
                {
                  *(v76 + v75) += (2 * *(a5 + v75) * v27[v68] + 0x8000) >> 16;
                  v75 += 2;
                }

                while (v75 != 160);
              }

              goto LABEL_113;
            }

            v41 = v30 + 5;
          }

          else
          {
            v40 = *v29;
            if (*v29 <= 1)
            {
              v41 = v26 + 5;
            }

            else if (v40 == 2)
            {
              v41 = v26 + 8;
            }

            else
            {
              if (v40 != 3)
              {
                v41 = v26 + 14;
LABEL_113:
                if (*v29 >= 5)
                {
                  v79 = 4;
                  do
                  {
                    if (*(a1 + 1) <= 22)
                    {
                      v80 = 0;
                    }

                    else
                    {
                      v80 = v79;
                    }

                    if (a12)
                    {
                      v81 = v41;
                      smc1175mrf22_fxd_DecodWFSet1_5p(a5, v107, 80, *v41, v41[1]);
                      if (*(a1 + 1) < 23)
                      {
                        v41 = v81 + 2;
                        v82 = (21846 * v97[v80] + 0x8000) >> 16;
                      }

                      else
                      {
                        LOWORD(v82) = smc1175mrf22_fxd_DecodeCodeGain(v81[2], a5, 5, v95 + 8 * v80, 80);
                        v97[v80] = v82;
                        v41 = v81 + 3;
                      }

                      v27[v80] = v82;
                      v83 = v103;
                      if (v103 > 79)
                      {
                        v89 = 0;
                        v90 = *(a1 + 49);
                        do
                        {
                          *(v90 + 2 * (v107[v89] + v28)) += (2 * *(a5 + 2 * v107[v89]) * v27[v80] + 0x8000) >> 16;
                          ++v89;
                        }

                        while (v89 != 5);
                      }

                      else
                      {
                        v84 = v103 + 1;
                        v85 = a5;
                        do
                        {
                          v86 = (2 * *v85 * a1[996] + 0x4000) >> 15;
                          if (v86 <= -32768)
                          {
                            v86 = -32768;
                          }

                          if (v86 >= 0x7FFF)
                          {
                            LOWORD(v86) = 0x7FFF;
                          }

                          v85[v83] += v86;
                          ++v85;
                          v52 = v84++ == 80;
                        }

                        while (!v52);
                        v87 = 0;
                        v88 = *(a1 + 49) + v101;
                        do
                        {
                          *(v88 + v87) += (2 * *(a5 + v87) * v27[v80] + 0x8000) >> 16;
                          v87 += 2;
                        }

                        while (v87 != 160);
                      }
                    }

                    else
                    {
                      v41 += 3;
                    }

                    ++v79;
                  }

                  while (v79 < *v29);
                }

                goto LABEL_137;
              }

              v41 = v26 + 11;
            }
          }

LABEL_137:
          v91 = v41;
          a1[996] = a1[995];
          v92 = *(a1 + 49);
          if (v98 > 1)
          {
            v93 = a5 + 1340;
            v94 = __b;
          }

          else
          {
            v93 = (a1 + 1036);
            v94 = (a5 + 1340);
          }

          fxd_InterpolateVectors_32BIT(v93, v94, v105, s32prev[v98], 16);
          if (a11)
          {
            fxd_LspToCosLsp__32BITX(v105, v105, 16);
            fxd_HighPrecisionCosLspToAi__32BIT(v105, (a5 + 544), 16);
            fxd_HighPrecisionExpandLpcBandwidth(a5 + 544, (a5 + 544), 32505, 16, 0);
            FillZeroLH_S32(a5, 0x60u);
            LH_S32ToLH_S32(a1 + 1004, a5, 0x10u);
            fxd_HighPrecisionFastSynthesisFilter(v92 + 2 * v28, (a5 + 384), 80, 0, (a5 + 544), 0x10u, 28, a5, 14);
            LH_S32ToLH_S32((a5 + 320), a1 + 1004, 0x10u);
          }

          LH_S16ToLH_S16((a5 + 384), __dst, 0x50u);
          __dst += 160;
          *a7 += 160;
          v25 = v98 + 1;
          v101 += 160;
          v26 = v91;
        }

        while (v98 + 1 != a10);
      }

      LH_S32ToLH_S32((a5 + 1340), a1 + 1036, 0x10u);
      LH_S16ToLH_S16(a1 + 520, a1 + 200, *(a1 + 5));
      FillZeroLH_S16(&a1[*(a1 + 5) + 200], 0x140u);
      result = 0;
      ++*(a1 + 534);
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_DecoderClose(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 65732, 2512);
  if (a1)
  {
    v4 = result;
  }

  else
  {
    v4 = -1941954552;
  }

  if (result >= 0)
  {
    return v4;
  }

  else
  {
    return result;
  }
}

void *smc1175mrf22_fxd_DecodWFSet1_5p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  result = FillZeroLH_S16(a1, a3);
  v11 = dword_26ED636E0[a5 & 0xF];
  if (a4)
  {
    v12 = 0x2000;
  }

  else
  {
    v12 = -8192;
  }

  *(a1 + v11) = v12;
  *a2 = v11;
  v13 = (dword_26ED637A0[a5 >> 4] + v11) % a3;
  if ((a4 & 2) != 0)
  {
    v14 = 0x2000;
  }

  else
  {
    v14 = -8192;
  }

  *(a1 + v13) = v14;
  a2[1] = v13;
  v15 = (dword_26ED637A0[(a5 >> 8) & 0xF] + v13) % a3;
  if ((a4 & 4) != 0)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = -8192;
  }

  *(a1 + v15) = v16;
  a2[2] = v15;
  v17 = (dword_26ED637A0[a5 >> 12] + v15) % a3;
  if ((a4 & 8) != 0)
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = -8192;
  }

  *(a1 + v17) = v18;
  a2[3] = v17;
  v19 = (dword_26ED637A0[HIWORD(a5) & 0xF] + v17) % a3;
  if ((a4 & 0x10) != 0)
  {
    v20 = 0x2000;
  }

  else
  {
    v20 = -8192;
  }

  *(a1 + v19) = v20;
  a2[4] = v19;
  return result;
}

void *smc1175mrf22_fxd_DecodWFSet1_4p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  result = FillZeroLH_S16(a1, a3);
  v11 = dword_26ED63720[a5 & 0x1F];
  if (a4)
  {
    v12 = 0x2000;
  }

  else
  {
    v12 = -8192;
  }

  *(a1 + v11) = v12;
  *a2 = v11;
  v13 = (dword_26ED637A0[(a5 >> 5) & 0xF] + v11) % a3;
  if ((a4 & 2) != 0)
  {
    v14 = 0x2000;
  }

  else
  {
    v14 = -8192;
  }

  *(a1 + v13) = v14;
  a2[1] = v13;
  v15 = (dword_26ED637A0[(a5 >> 9) & 0xF] + v13) % a3;
  if ((a4 & 4) != 0)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = -8192;
  }

  *(a1 + v15) = v16;
  a2[2] = v15;
  v17 = (dword_26ED637A0[(a5 >> 13) & 0xF] + v15) % a3;
  if ((a4 & 8) != 0)
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = -8192;
  }

  *(a1 + v17) = v18;
  a2[3] = v17;
  return result;
}

uint64_t smc1175mrf22_fxd_gain_predict(int16x4_t *a1, __int16 *a2, int a3, _WORD *a4)
{
  if (a3 < 1)
  {
    v6 = 20971;
  }

  else
  {
    v5 = a3;
    v6 = 20971;
    do
    {
      v7 = *a2++;
      v6 += (v7 * v7) >> 5;
      --v5;
    }

    while (v5);
  }

  v8 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_26ED637E0), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16(((v6 / (a3 << 8)) >> 1), &s16LogTable)) << 7));
  result = fxd_U16LookupPow10U16U16((((v8 >> 36) + (v8 >> 63)) >> 1), &u16PowTable);
  *a4 = 2 * result;
  return result;
}

uint64_t smc1175mrf22_fxd_gain_predict_pulses(int16x4_t *a1, int a2, __int16 a3, _WORD *a4)
{
  v5 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_26ED637E0), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16((((((a2 << 11) | 0x14) << 16 >> 6) / (a3 << 8)) >> 1), &s16LogTable)) << 7));
  result = fxd_U16LookupPow10U16U16((((v5 >> 36) + (v5 >> 63)) >> 1), &u16PowTable);
  *a4 = 2 * result;
  return result;
}

uint64_t smc1175mrf22_fxd_gain_update(uint64_t a1, __int16 a2, __int16 a3)
{
  *(a1 + 6) = *(a1 + 4);
  *(a1 + 2) = *a1;
  result = fxd_S16Lookup10Log10S16S16(a2, &s16LogTable);
  *a1 = 4 * (result + a3);
  return result;
}

uint64_t smc1175mrf22_fxd_DecodeCodeGain(unsigned int a1, __int16 *a2, int a3, uint64_t a4, __int16 a5)
{
  v15 = 0;
  if (a3)
  {
    smc1175mrf22_fxd_gain_predict_pulses(a4, a3, a5, &v15);
  }

  else
  {
    smc1175mrf22_fxd_gain_predict(a4, a2, a5, &v15);
  }

  if (a1 > 58)
  {
    if (a1 > 0x3C)
    {
      v8 = smc1175mrf22_fxd_qgc[a1];
      v10 = 2 * v15 * v8;
      v11 = a1 > 0x3E;
      v12 = (v10 + 512) >> 10;
      v13 = (v10 + 2048) >> 12;
      if (a1 <= 0x3E)
      {
        LOWORD(v9) = v13;
      }

      else
      {
        LOWORD(v9) = v12;
      }

      if (v11)
      {
        v7 = 3082;
      }

      else
      {
        v7 = 1541;
      }
    }

    else
    {
      v8 = smc1175mrf22_fxd_qgc[a1];
      v9 = (2 * v15 * v8 + 4096) >> 13;
      v7 = 770;
    }
  }

  else
  {
    v7 = 0;
    v8 = smc1175mrf22_fxd_qgc[a1];
    v9 = (2 * v15 * v8 + 0x2000) >> 14;
  }

  *(a4 + 6) = *(a4 + 4);
  *(a4 + 2) = *a4;
  *a4 = 4 * (fxd_S16Lookup10Log10S16S16(v8, &s16LogTable) + v7);
  return v9;
}

_WORD *smc1175mrf22_fxd_ExcitWFSet0_Decod_8Khz(_WORD *result, int a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    if (a3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = -a3;
    }

    if (a3 == 1)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }

    v6 = &smc1175mrf22_s16LongTermInterpolationTable + 20 * (3 - v4);
    v7 = &smc1175mrf22_s16LongTermInterpolationTable + 20 * v4;
    v8 = &result[v5 - a2];
    do
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = v8 + 1;
      for (i = 11; i > 1; --i)
      {
        v11 += ((*&v7[v10 * 2] * v8[v9]) >> 1) + ((*&v6[v10 * 2] * v8[v10 + 1]) >> 1);
        ++v10;
        --v9;
      }

      v14 = (v11 + 0x2000) >> 14;
      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      if (v14 >= 0x7FFF)
      {
        LOWORD(v14) = 0x7FFF;
      }

      *result++ = v14;
      v8 = v12;
      v15 = __OFSUB__(a4--, 1);
    }

    while (!((a4 < 0) ^ v15 | (a4 == 0)));
  }

  return result;
}

_WORD *smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22(_WORD *result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    v5 = 0xFFFFFFFF00000000 * a2;
    do
    {
      *v4++ = *(result + (v5 >> 31));
      v5 += 0x100000000;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t smc1175mrf22_DecodeLag_8(uint64_t result, int a2, int a3, char a4, int *a5, int *a6, int *a7)
{
  v10 = result;
  if (a4)
  {
    v13 = *a7 - 5;
    if (v13 <= a2)
    {
      v13 = a2;
    }

    if (v13 + 9 > a3)
    {
      v13 = a3 - 9;
    }

    v14 = result & 0xF;
    if (v14 <= 3)
    {
      v15 = v13 + v14;
LABEL_18:
      *a5 = v15;
      *a6 = 0;
      goto LABEL_35;
    }

    if (v14 > 0xB)
    {
      v15 = v13 + v14 - 6;
      goto LABEL_18;
    }

    if ((result & 0xFu) <= 7)
    {
      if ((result & 0xFu) > 5)
      {
        if (v14 == 6)
        {
          *a6 = 0;
LABEL_32:
          v16 = v13 + 4;
          goto LABEL_34;
        }

        v18 = 1;
      }

      else
      {
        if (v14 == 4)
        {
          *a6 = 1;
          v16 = v13 + 3;
LABEL_34:
          *a5 = v16;
          goto LABEL_35;
        }

        v18 = -1;
      }

      *a6 = v18;
      goto LABEL_32;
    }

    if ((result & 0xFu) > 9)
    {
      if (v14 != 10)
      {
        *a6 = -1;
        v16 = v13 + 6;
        goto LABEL_34;
      }

      v17 = 1;
    }

    else
    {
      if (v14 != 8)
      {
        *a6 = 0;
        goto LABEL_29;
      }

      v17 = -1;
    }

    *a6 = v17;
LABEL_29:
    v16 = v13 + 5;
    goto LABEL_34;
  }

  if (result > 197)
  {
    v12 = 0;
    v11 = result - 112;
  }

  else
  {
    result = fxd_S32ShMultRndS32S32(result + 2, 1431655765, 31);
    v11 = (result >> 1) + 19;
    v12 = -3 * (result >> 1) + v10 + 1;
  }

  *a5 = v11;
  *a6 = v12;
LABEL_35:
  *a7 = *a5;
  return result;
}

uint64_t smc1175mrf22_DecodeLag_11_22(uint64_t result, char a2, unsigned int a3, int *a4, _DWORD *a5)
{
  if (a2)
  {
    if (a3 >= 0x17)
    {
      v6 = 6;
    }

    else
    {
      v6 = 4;
    }

    if (a3 <= 0x1D)
    {
      v7 = v6;
    }

    else
    {
      v7 = 4;
    }

    if (a3 >= 0xF)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    if (a3 >= 0xC)
    {
      v9 = v8;
    }

    else
    {
      v9 = 4;
    }

    if (a3 >= 9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    v5 = result + (-1 << v10) + *a5 + 1;
  }

  else if (a3 > 5)
  {
    if (a3 > 0xB)
    {
      if (a3 >= 0x1E)
      {
        v5 = *a4;
        goto LABEL_21;
      }

      v5 = result + 54;
    }

    else
    {
      v5 = result + 40;
    }
  }

  else
  {
    v5 = result + 30;
  }

  *a4 = v5;
LABEL_21:
  *a5 = v5;
  return result;
}

uint64_t SearchNextMarkerOfRTCSubType(uint64_t result, unsigned int a2, int *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = *a5;
  v8 = *a6;
  if (*a5 >= a2)
  {
    v15 = 0;
  }

  else
  {
    do
    {
      if (a4)
      {
        v9 = (result + 32 * v7);
        v10 = a3;
        v11 = a4;
        while (1)
        {
          v12 = *v10++;
          if (v12 == *v9)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_6;
          }
        }

        v14 = v9[3];
        if (v8 == -1)
        {
          v13 = v14 != 0;
        }

        else
        {
          v13 = v14 > *(result + 32 * v8 + 12);
        }

        if (!v13)
        {
          v8 = v7;
        }
      }

      else
      {
LABEL_6:
        v13 = 0;
      }

      v7 += !v13;
      v15 = v7 < a2;
    }

    while (v7 < a2 && !v13);
  }

  *a7 = 0;
  if (v8 < a2 && a4)
  {
    v16 = a4;
    while (1)
    {
      v17 = *a3++;
      if (v17 == *(result + 32 * v8))
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_23;
      }
    }

    *a7 = 1;
  }

LABEL_23:
  *a5 = v7;
  if (!v15 || *a7 != 0)
  {
    v7 = v8;
  }

  *a6 = v7;
  return result;
}

uint64_t SearchNextMarker(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, _DWORD *a5, _DWORD *a6, int *a7)
{
  v7 = 0;
  if (a2 && a4)
  {
    v8 = *a5;
    LODWORD(v9) = *a6;
    if (v8 >= a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = *a6;
      while (2)
      {
        v9 = v11;
        v12 = (a1 + 32 * v8);
        v13 = *v12;
        v14 = a3;
        v15 = a4;
        while (1)
        {
          v16 = *v14++;
          if (v16 == v13)
          {
            break;
          }

          if (!--v15)
          {
            v11 = v9;
            goto LABEL_15;
          }
        }

        v17 = v12[3];
        if (v9 == -1)
        {
          if (v17)
          {
            v21 = 0;
            LODWORD(v9) = -1;
            goto LABEL_24;
          }

          v11 = v8;
        }

        else
        {
          v18 = (a1 + 32 * v9);
          if (v17 >= v18[3])
          {
            goto LABEL_18;
          }

          v11 = v8;
          if (v13 != *v18)
          {
            goto LABEL_18;
          }
        }

LABEL_15:
        v10 = ++v8 >= a2;
        if (v8 != a2)
        {
          continue;
        }

        break;
      }

      LODWORD(v8) = a2;
      LODWORD(v9) = v11;
    }

LABEL_18:
    *a7 = 0;
    if (v9 < a2)
    {
      v19 = a4;
      while (1)
      {
        v20 = *a3++;
        if (v20 == *(a1 + 32 * v9))
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_25;
        }
      }

      v21 = 1;
LABEL_24:
      *a7 = v21;
    }

LABEL_25:
    *a5 = v8;
    if (v10 || *a7 != 0)
    {
      LODWORD(v8) = v9;
    }

    *a6 = v8;
    v7 = *a7;
    if (v7)
    {
      return *(a1 + 32 * v9);
    }
  }

  return v7;
}

uint64_t Lookup_CheckForDataFile(_WORD *a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v21 = 0;
  v22 = 0;
  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = ssftriff_reader_ObjOpen(a1, a2, 2, a3, "VFNT", 1031, &v21);
  if ((v9 & 0x1FFF) > 0x14 || ((1 << v9) & 0x102010) == 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  v19 = v21;
  if ((v18 & 0x80000000) == 0 && v21)
  {
    *a4 = 1;
LABEL_13:
    ssftriff_reader_ObjClose(v19, v10, v11, v12, v13, v14, v15, v16);
    return v18;
  }

  if (v21)
  {
    goto LABEL_13;
  }

  return v18;
}

uint64_t Lookup_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v20 = 0;
  v21 = 0;
  inited = InitRsrcFunction(a1, a2, &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2164269066;
  *a5 = 0;
  v12 = heap_Calloc(*(v21 + 8), 1, 144);
  if (v12)
  {
    v13 = v12;
    v14 = v21;
    *v12 = v21;
    v12[1] = a3;
    v12[16] = a1;
    v12[17] = a2;
    if (!a3 || (v15 = *(a3 + 48)) == 0)
    {
      v15 = *(v14 + 48);
    }

    AddRefCountedObject = objc_GetAddRefCountedObject(v15, a4, Lookup_ObjcVoiceOpen, Lookup_ObjcVoiceClose, v13, &v20);
    if ((AddRefCountedObject & 0x80000000) != 0 || (*(v13 + 16) = *(v20 + 32), AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_InterfaceQuery(*(v21 + 24)), (AddRefCountedObject & 0x80000000) != 0))
    {
      v11 = AddRefCountedObject;
    }

    else
    {
      v17 = (*(*(v13 + 40) + 32))(a1, a2, *(*(v13 + 16) + 336), *(*(v13 + 16) + 344), v13 + 24);
      v18 = heap_Alloc(*(*v13 + 8), 44100);
      *(v13 + 72) = v18;
      if (v18)
      {
        *(v13 + 80) = 22050;
        *(v13 + 88) = 0;
        v11 = v17;
        if ((v17 & 0x80000000) == 0)
        {
          v11 = v17;
LABEL_18:
          *a5 = v13;
          return v11;
        }
      }
    }

    *a5 = v13;
    Lookup_ObjClose(a5);
    v13 = 0;
    goto LABEL_18;
  }

  return v11;
}

uint64_t Lookup_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v74 = *MEMORY[0x277D85DE8];
  *v70 = 0;
  v71 = 0;
  v69 = 0;
  *__s1 = 0;
  memset(__n, 0, sizeof(__n));
  v65 = 0;
  v66 = 0;
  NullHandle = safeh_GetNullHandle();
  v12 = v11;
  v64 = 0;
  v63 = 0;
  inited = InitRsrcFunction(a1, a2, &v71);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v14 = 2164269066;
  v15 = heap_Calloc(*(v71 + 8), 1, 600);
  if (v15)
  {
    v16 = v15;
    cstdlib_strncpy(v15, a3, 0x100uLL);
    *(v16 + 352) = 0;
    *(v16 + 528) = 0;
    *(v16 + 440) = 0x2800000014;
    *(v16 + 448) = 40;
    if (UriGetUrlPrefixLength(v16, 0))
    {
      v17 = InitRsrcFunction(*(a5 + 128), *(a5 + 136), &v66);
      if ((v17 & 0x80000000) != 0)
      {
        v14 = v17;
        goto LABEL_84;
      }

      if ((objc_GetObject(*(v66 + 48), "URIFETCHER", &v65) & 0x80000000) != 0)
      {
        v25 = 0;
      }

      else
      {
        v25 = v65[1];
        NullHandle = v65[2];
        v12 = v65[3];
      }

      v26 = osspi_DataOpenEx(*(v71 + 64), *(v71 + 8), v25, NullHandle, v12, v16, (v16 + 592));
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_80;
      }

      v26 = osspi_DataMap(*(v16 + 592), 0, &v63, &v64);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = ssftriff_reader_ObjOpenEx(a1, a2, 4 * (v64 != 0), a3, v64, v63, "VFNT", 1031, v70);
    if ((v26 & 0x80000000) == 0)
    {
      v27 = ssftriff_reader_OpenChunk(*v70, __s1, __n, 0);
      if ((v27 & 0x80000000) == 0)
      {
        v28 = "VINF";
        v60 = a3;
        v61 = a1;
        do
        {
          if (cstdlib_strcmp(__s1, v28))
          {
            if (cstdlib_strcmp(__s1, "VFFP"))
            {
              if (!cstdlib_strcmp(__s1, "CODR"))
              {
                ssftriff_reader_GetChunkData(*v70, __n[0], &__n[1], v31);
                if ((v26 & 0x80000000) != 0)
                {
                  goto LABEL_80;
                }

                v50 = heap_Alloc(*(v71 + 8), __n[0]);
                *(v16 + 336) = v50;
                if (!v50)
                {
                  goto LABEL_81;
                }

                cstdlib_memcpy(v50, *&__n[1], __n[0]);
                *(v16 + 344) = __n[0];
                goto LABEL_75;
              }

              if (cstdlib_strcmp(__s1, "CTUN"))
              {
                if (!cstdlib_strcmp(__s1, "UNIT"))
                {
                  v51 = *v70;
                  v52 = (v16 + 360);
                  v53 = (v16 + 368);
                  goto LABEL_60;
                }

                if (cstdlib_strcmp(__s1, "UOP1"))
                {
                  if (!cstdlib_strcmp(__s1, "UOP2"))
                  {
                    *__dst = 0;
                    v26 = ssftriff_reader_DetachChunkData(*v70, (v16 + 392), __dst);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_80;
                    }

                    v54 = *__dst;
                    *(v16 + 400) = **__dst;
                    v55 = v54[1];
                    *(v16 + 404) = v55;
                    v54 += 2;
                    *(v16 + 408) = v54;
                    *(v16 + 416) = &v54[v55];
                    goto LABEL_75;
                  }

                  if (cstdlib_strcmp(__s1, "UOP3"))
                  {
                    if (!cstdlib_strcmp(__s1, "WPAR"))
                    {
                      ssftriff_reader_GetChunkData(*v70, __n[0], &__n[1], v33);
                      if ((v26 & 0x80000000) != 0)
                      {
                        goto LABEL_80;
                      }

                      *(v16 + 440) = **&__n[1];
                      goto LABEL_75;
                    }

                    if (!cstdlib_strcmp(__s1, "PPAR"))
                    {
                      ssftriff_reader_GetChunkData(*v70, __n[0], &__n[1], v34);
                      if ((v26 & 0x80000000) != 0)
                      {
                        goto LABEL_80;
                      }

                      v56 = *&__n[1];
                      *(v16 + 444) = **&__n[1];
                      *(v16 + 448) = *(v56 + 4);
                      goto LABEL_75;
                    }

                    if (!cstdlib_strcmp(__s1, "PMPP"))
                    {
                      v51 = *v70;
                      v52 = (v16 + 456);
                      v53 = (v16 + 464);
                      goto LABEL_60;
                    }

                    if (!cstdlib_strcmp(__s1, "PMBO"))
                    {
                      v51 = *v70;
                      v52 = (v16 + 472);
                      v53 = (v16 + 480);
LABEL_60:
                      v26 = ssftriff_reader_DetachChunkData(v51, v52, v53);
                      if ((v26 & 0x80000000) != 0)
                      {
                        goto LABEL_80;
                      }

                      goto LABEL_75;
                    }

                    if (cstdlib_strcmp(__s1, "PMUO"))
                    {
                      if (cstdlib_strcmp(__s1, "PMUD"))
                      {
                        if (cstdlib_strcmp(__s1, "SPCH"))
                        {
                          log_OutText(*(v71 + 32), "LOOKUP", 3, 0, "Unknown data: %s for %s", v35, v36, v37, __s1);
                        }

                        else
                        {
                          *(v16 + 520) = ssftriff_reader_GetPosition(*v70);
                          *(v16 + 524) = __n[0];
                        }
                      }

                      else
                      {
                        *(v16 + 516) = ssftriff_reader_GetPosition(*v70);
                      }
                    }

                    else
                    {
                      *(v16 + 512) = ssftriff_reader_GetPosition(*v70);
                    }
                  }

                  else
                  {
                    *(v16 + 508) = ssftriff_reader_GetPosition(*v70);
                    *(v16 + 432) = 1;
                  }
                }

                else
                {
                  *(v16 + 504) = ssftriff_reader_GetPosition(*v70);
                  *(v16 + 384) = 1;
                }
              }

              else
              {
                ssftriff_reader_GetChunkData(*v70, __n[0], &__n[1], v32);
                *(v16 + 328) = **&__n[1];
              }
            }

            else
            {
              ssftriff_reader_GetChunkData(*v70, __n[0], &__n[1], v30);
              v49 = heap_Alloc(*(v71 + 8), __n[0]);
              *(v16 + 352) = v49;
              if (!v49)
              {
                goto LABEL_81;
              }

              ssftriff_reader_ReadStringZ(*v70, *&__n[1], __n[0], 0, v49, __n);
            }
          }

          else
          {
            v38 = v28;
            v39 = a4;
            v40 = NullHandle;
            v41 = v25;
            v62 = 0;
            ssftriff_reader_GetChunkData(*v70, __n[0], &__n[1], v29);
            if ((v42 & 0x80000000) != 0)
            {
              goto LABEL_93;
            }

            v43 = __n[0];
            if (__n[0])
            {
              v44 = 0;
              while (1)
              {
                __s2[0] = 0;
                __dst[0] = 0;
                v62 = 256;
                v42 = ssftriff_reader_ReadStringZ(*v70, *&__n[1], v43, v44, __dst, &v62);
                if ((v42 & 0x80000000) == 0)
                {
                  v19 = __n[0];
                  if (v44 < __n[0])
                  {
                    v44 += v62;
                    v62 = 256;
                    v42 = ssftriff_reader_ReadStringZ(*v70, *&__n[1], __n[0], v44, __s2, &v62);
                  }
                }

                if ((v42 & 0x80000000) != 0)
                {
                  break;
                }

                v45 = v62;
                if (cstdlib_strcmp(__dst, "Freq"))
                {
                  if (cstdlib_strcmp(__dst, "AvgSpeed"))
                  {
                    if (cstdlib_strcmp(__dst, "DurSizeBits"))
                    {
                      if (cstdlib_strcmp(__dst, "GUID") && cstdlib_strcmp(__dst, "ComponentID"))
                      {
                        if (!cstdlib_strcmp(__dst, "Coder"))
                        {
                          if (!__s2[0])
                          {
                            log_OutText(*(v71 + 32), "LOOKUP", 1, 0, "undefined coder for (Genius) synth data %s: %s", v46, v47, v48, v60);
                            v42 = 2164269081;
                            break;
                          }

                          cstdlib_strcpy((v16 + 256), "decoder/");
                          cstdlib_strcat((v16 + 256), __s2);
                        }
                      }

                      else
                      {
                        cstdlib_strcpy((v16 + 528), __s2);
                      }
                    }

                    else
                    {
                      *(v16 + 324) = LH_atou(__s2);
                    }
                  }

                  else
                  {
                    *(v16 + 322) = LH_atou(__s2);
                  }
                }

                else
                {
                  *(v16 + 320) = LH_atou(__s2);
                }

                v44 += v45;
                log_OutText(*(v71 + 32), "LOOKUP", 3, 0, "VF attribute %s=%s", v46, v47, v48, __dst);
                v43 = __n[0];
                if (v44 >= __n[0])
                {
                  goto LABEL_52;
                }
              }

LABEL_93:
              v14 = v42;
              v59 = v41;
              NullHandle = v40;
              a4 = v39;
              a1 = v61;
              if (!v59)
              {
LABEL_84:
                if (*v70)
                {
                  ssftriff_reader_ObjClose(*v70, v18, v19, v20, v21, v22, v23, v24);
                }

                if ((v14 & 0x80000000) != 0)
                {
                  v57 = *(v16 + 592);
                  if (v57)
                  {
                    osspi_DataClose(v57);
                  }

                  *(a4 + 32) = v16;
                  Lookup_ObjcVoiceClose(a1, a2, a4);
                  *(a4 + 32) = 0;
                }

                else
                {
                  *(a4 + 32) = v16;
                }

                return v14;
              }

LABEL_82:
              if (NullHandle)
              {
                objc_ReleaseObject(*(v66 + 48), "URIFETCHER");
              }

              goto LABEL_84;
            }

LABEL_52:
            v25 = v41;
            NullHandle = v40;
            a4 = v39;
            v28 = v38;
            a1 = v61;
          }

LABEL_75:
          v26 = ssftriff_reader_CloseChunk(*v70);
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_80;
          }

          v27 = ssftriff_reader_OpenChunk(*v70, __s1, __n, 0);
        }

        while ((v27 & 0x80000000) == 0);
      }

      v14 = v27;
      if ((v27 & 0x1FFF) == 0x14)
      {
        v14 = ssftriff_reader_ObjClose(*v70, v18, v19, v20, v21, v22, v23, v24);
        *v70 = 0;
        if (!v25)
        {
          goto LABEL_84;
        }

        goto LABEL_82;
      }

LABEL_81:
      if (!v25)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }

LABEL_80:
    v14 = v26;
    goto LABEL_81;
  }

  return v14;
}

uint64_t Lookup_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v17 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) == 0)
  {
    v5 = v3[42];
    if (v5)
    {
      heap_Free(*(v17 + 8), v5);
      v3[42] = 0;
    }

    v6 = v3[44];
    if (v6)
    {
      heap_Free(*(v17 + 8), v6);
      v3[44] = 0;
    }

    v7 = v3[45];
    if (v7)
    {
      inited = ssftriff_reader_ReleaseChunkData(v7);
    }

    v8 = v3[47];
    if (v8)
    {
      inited = ssftriff_reader_ReleaseChunkData(v8);
    }

    v9 = v3[49];
    if (v9)
    {
      inited = ssftriff_reader_ReleaseChunkData(v9);
    }

    v10 = v3[53];
    if (v10)
    {
      inited = ssftriff_reader_ReleaseChunkData(v10);
    }

    v11 = v3[57];
    if (v11)
    {
      inited = ssftriff_reader_ReleaseChunkData(v11);
    }

    v12 = v3[59];
    if (v12)
    {
      inited = ssftriff_reader_ReleaseChunkData(v12);
    }

    v13 = v3[61];
    if (v13)
    {
      inited = ssftriff_reader_ReleaseChunkData(v13);
    }

    v14 = v3[62];
    if (v14)
    {
      inited = ssftriff_reader_ReleaseChunkData(v14);
    }

    v15 = v3[74];
    if (v15)
    {
      osspi_DataClose(v15);
    }

    heap_Free(*(v17 + 8), v3);
  }

  return inited;
}

uint64_t Lookup_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (v3)
  {
    heap_Free(*(*v2 + 8), v3);
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
  }

  v4 = *(v2 + 40);
  if (v4 && (v5 = *(v2 + 24)) != 0)
  {
    v6 = (*(v4 + 40))(v5, *(v2 + 32));
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = *(v2 + 8);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = *(*v2 + 48);
    }

    objc_ReleaseObject(v9, v7);
  }

  v10 = *(v2 + 48);
  if (!v10 || (v6 = brk_DataClose(*(*v2 + 24), v10), (v6 & 0x80000000) == 0))
  {
    v11 = *(v2 + 96);
    if (!v11 || (v6 = brk_DataClose(*(*v2 + 24), v11), (v6 & 0x80000000) == 0))
    {
      v12 = *(v2 + 104);
      if (!v12 || (v6 = brk_DataClose(*(*v2 + 24), v12), (v6 & 0x80000000) == 0))
      {
        v13 = *(v2 + 112);
        if (!v13 || (v6 = brk_DataClose(*(*v2 + 24), v13), (v6 & 0x80000000) == 0))
        {
          v14 = *(v2 + 120);
          if (!v14 || (v6 = brk_DataClose(*(*v2 + 24), v14), (v6 & 0x80000000) == 0))
          {
            v15 = *(v2 + 40);
            if (!v15 || (v6 = brk_InterfaceRelease(*(*v2 + 24), v15), (v6 & 0x80000000) == 0))
            {
              heap_Free(*(*v2 + 8), v2);
              *a1 = 0;
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t Lookup_Init(uint64_t a1, int a2, int a3)
{
  v10 = a3;
  v11 = a2;
  v9 = 0;
  result = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), &v11, &v10, 0, &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v5 = v9;
    v6 = *(a1 + 16);
    v7 = *(v6 + 524);
    if (v9 + HIDWORD(v9) > v7)
    {
      v5 = v7 - HIDWORD(v9);
      LODWORD(v9) = v7 - HIDWORD(v9);
    }

    result = brk_DataMap(*(*a1 + 24), *(a1 + 48), (*(v6 + 520) + HIDWORD(v9)), v5, a1 + 56);
    if ((result & 0x80000000) == 0)
    {
      v8 = v9;
      *(a1 + 64) = 0;
      *(a1 + 68) = v8;
    }
  }

  return result;
}

uint64_t Lookup_Init_II(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  result = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), a2, a3, 0, &v6 + 4, &v6);
  if ((result & 0x80000000) == 0)
  {
    if (v6)
    {
      result = brk_DataMap(*(*a1 + 24), *(a1 + 48), (*(*(a1 + 16) + 520) + HIDWORD(v6)), v6, a1 + 56);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 64) = 0;
    *(a1 + 68) = v5;
  }

  return result;
}

uint64_t Lookup_DeInit(uint64_t *a1)
{
  v1 = a1[7];
  if (!v1)
  {
    return 0;
  }

  result = brk_DataUnmap(*(*a1 + 24), a1[6], v1);
  a1[7] = 0;
  return result;
}

uint64_t Lookup_Decode(uint64_t a1, int *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  result = 2164269063;
  v5 = *(a1 + 56);
  if (!v5)
  {
    return 2164269073;
  }

  if (!(*a2 >> 30))
  {
    v8 = *(a1 + 64);
    v7 = *(a1 + 68);
    v12 = *a2;
    v13 = v7;
    result = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), v5 + v8, &v13, a3, &v12);
    v9 = v13;
    *a2 = v12;
    v10 = *(a1 + 64) + v9;
    v11 = *(a1 + 68) - v9;
    *(a1 + 64) = v10;
    *(a1 + 68) = v11;
  }

  return result;
}

uint64_t Lookup_GetDecodedData(uint64_t a1, unsigned int a2, unsigned int a3, void *__dst)
{
  v8 = *(a1 + 84);
  if (v8 <= a2 && (v9 = *(a1 + 88), v10 = v9 + v8, v9 + v8 >= a2) && (v11 = a3 + a2, *(a1 + 80) + v8 >= a3 + a2) && *(a1 + 56))
  {
    v12 = 0;
  }

  else
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = brk_DataUnmap(*(*a1 + 24), *(a1 + 48), v13);
      *(a1 + 56) = 0;
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v15 = *(a1 + 80);
    if (v15 < a3)
    {
      v16 = *(a1 + 72);
      if (v16)
      {
        heap_Free(*(*a1 + 8), v16);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
      }

      v17 = heap_Alloc(*(*a1 + 8), 2 * a3);
      *(a1 + 72) = v17;
      if (!v17)
      {
        return 2164269066;
      }

      *(a1 + 80) = a3;
      v15 = a3;
    }

    *(a1 + 84) = a2;
    *(a1 + 88) = 0;
    v12 = Lookup_Init(a1, a2, v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v8 = *(a1 + 84);
    v9 = *(a1 + 88);
    v11 = a3 + a2;
    v10 = v9 + v8;
  }

  v18 = v11 >= v10;
  v19 = v11 - v10;
  if (v19 == 0 || !v18)
  {
    goto LABEL_19;
  }

  v21 = v19;
  v12 = Lookup_Decode(a1, &v21, *(a1 + 72) + 2 * v9);
  if ((v12 & 0x80000000) == 0)
  {
    v8 = *(a1 + 84);
    *(a1 + 88) += v21;
LABEL_19:
    cstdlib_memcpy(__dst, (*(a1 + 72) + 2 * (a2 - v8)), 2 * a3);
  }

  return v12;
}

uint64_t Lookup_GetUnitData(void *a1, unsigned int a2, uint64_t a3)
{
  *a3 = a2;
  v4 = a1[2];
  v5 = *(v4 + 368);
  if (v5)
  {
    v6 = v5 + 8 * a2;
    v7 = *v6;
    *(a3 + 4) = *v6 & 0x7FFFFFFF;
    if (*(v4 + 324) == 32)
    {
      v8 = *(v6 + 4);
    }

    else
    {
      *(a3 + 8) = 0;
      v13 = *(v6 + 5) >> 4;
      *(a3 + 8) = v13;
      v8 = v13 | (16 * *(v6 + 4));
    }

    *(a3 + 8) = v8;
    result = 0;
    *(a3 + 12) = v7 < 0;
    return result;
  }

  if (*(v4 + 384))
  {
    __src = 0;
    result = brk_DataMap(*(*a1 + 24), a1[12], *(v4 + 504) + 6 * a2, 6, &__src);
    if ((result & 0x80000000) == 0 && __src)
    {
      cstdlib_memmove((a3 + 4), __src, 4uLL);
      v11 = *(a3 + 4);
      *(a3 + 12) = v11 < 0;
      *(a3 + 4) = v11 & 0x7FFFFFFF;
      v12 = __src;
      *(a3 + 8) = *(__src + 2);
      return brk_DataUnmap(*(*a1 + 24), a1[12], v12);
    }

    return result;
  }

  v14 = *(v4 + 408);
  if (v14)
  {
    result = 0;
    v15 = *(v4 + 400);
    v16 = *(v4 + 416);
    v17 = *(v14 + 4 * (a2 / v15)) + *(v16 + 2 * a2);
    *(a3 + 4) = v17;
    *(a3 + 8) = *(v14 + 4 * ((a2 + 1) / v15)) - v17 + *(v16 + 2 * (a2 + 1));
LABEL_13:
    *(a3 + 12) = 0;
    return result;
  }

  if (!*(v4 + 432))
  {
    return 0;
  }

  __src = 0;
  result = brk_DataMap(*(*a1 + 24), a1[13], *(v4 + 508) + 4 * a2, 4, &__src);
  if ((result & 0x80000000) == 0)
  {
    v18 = __src;
    *(a3 + 4) = *__src;
    result = brk_DataUnmap(*(*a1 + 24), a1[13], v18);
    if ((result & 0x80000000) == 0)
    {
      *(a3 + 8) = 0;
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t Lookup_Freq(uint64_t a1, _WORD *a2)
{
  v2 = *(*(a1 + 16) + 320);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_AvgSpeed(uint64_t a1, _WORD *a2)
{
  v2 = *(*(a1 + 16) + 322);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_NrUnits(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 16) + 328);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_Fingerprint(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = 2164269057;
  v7 = *(a1 + 16);
  v8 = *(v7 + 352);
  if (v8)
  {
    if (cstdlib_strlen(v8) >= a3)
    {
      v6 = 2164269057;
    }

    else
    {
      v6 = 0;
    }

    cstdlib_strncpy(a2, *(*(a1 + 16) + 352), a3);
  }

  else
  {
    v10 = *(v7 + 328);
    if (IsThisUrlOrRealPath(v7, 0, 0))
    {
      if (SplitpathOrUrl(v7, 0, 0, 0, a2, 0))
      {
        for (i = a2; ; ++i)
        {
          if (*i == 95)
          {
            *i = 47;
          }

          else if (!*i)
          {
            goto LABEL_19;
          }
        }
      }

      return 2164269063;
    }

    else
    {
      v12 = cstdlib_strchr(v7, 58);
      if (v12)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v7;
      }

      cstdlib_strncpy(a2, v13, a3);
LABEL_19:
      LODWORD(v14) = cstdlib_strlen(a2);
      v15 = v14 < a3;
      if (v14 < a3 && v10)
      {
        v14 = v14;
        do
        {
          a2[v14++] = (v10 % 0xA) | 0x30;
          v15 = v14 < a3;
          if (v14 >= a3)
          {
            break;
          }

          v16 = v10 > 9;
          v10 /= 0xAu;
        }

        while (v16);
      }

      if (v15)
      {
        v6 = 0;
        a2[v14] = 0;
      }
    }
  }

  return v6;
}

uint64_t Lookup_GetComponentID(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 2164269074;
  }

  result = 0;
  *a2 = *(a1 + 16) + 528;
  return result;
}

uint64_t Lookup_HasSupportForWsola(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 16) + 440);
  if (!v2)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t Lookup_HasSupportForPsola(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3 && *(v3 + 464))
    {
      *a2 = *(v3 + 444);
      *a3 = *(v3 + 448);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Lookup_UnitPeriInfo(void *a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1[2] + 464))
  {
    return 2164269076;
  }

  v29 = 0;
  v28 = 0;
  *a3 = 0;
  v6 = a3 + 8;
  writeToPeriVec(a3 + 8, 0, 0);
  v7 = a1[2];
  v8 = *(*(v7 + 464) + 52);
  if (v8)
  {
    v30 = v8 * (a2 >> 10);
    unpackU32(&v29, *(v7 + 480), &v30, v8);
  }

  else
  {
    v29 = 0;
  }

  if ((a2 & 0x3FF) != 0)
  {
    v10 = a1[2];
    v11 = *(*(v10 + 464) + 56);
    v30 = v11 * (a2 - 1);
    v12 = unpackU32_Offline(&v28 + 1, *(v10 + 512), *(*a1 + 24), a1[14], &v30, v11);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v13 = a1[2];
    v14 = *(*(v13 + 464) + 56);
  }

  else
  {
    HIDWORD(v28) = 0;
    v13 = a1[2];
    v14 = *(*(v13 + 464) + 56);
    v30 = v14 * a2;
  }

  v9 = unpackU32_Offline(&v28, *(v13 + 512), *(*a1 + 24), a1[14], &v30, v14);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v15 = v28 - HIDWORD(v28);
  if (v28 == HIDWORD(v28))
  {
    return v9;
  }

  v27 = 0;
  v12 = brk_DataMap(*(*a1 + 24), a1[15], (*(a1[2] + 516) + HIDWORD(v28) + v29), (v28 - HIDWORD(v28)), &v27);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = v27;
  v17 = *(a1[2] + 464);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  LODWORD(v25) = 0;
  unpackU32(&v31, v27, &v25, v17[5]);
  writeToPeriVec(v6, 0, v17[4] + v31);
  v18 = v17[7];
  if (v18)
  {
    unpackU32(&v31, v16, &v25, v18);
    v19 = v17[6] + v31;
  }

  else
  {
    LOWORD(v19) = 0;
  }

  *a3 = v19;
  v21 = v17[12];
  if (v15 <= (v25 + v21 + v17[11] - 1) >> 3)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      unpackU32(&v32 + 1, v16, &v25, v21);
      unpackU32(&v33 + 1, v16, &v25, v17[11]);
      for (; HIDWORD(v32); --HIDWORD(v32))
      {
        writeToPeriVec(a3 + 56, v22, SWORD2(v33));
        if (v22)
        {
          writeToPeriVec(v6, v22, *(*(a3 + 16) + 2 * v22 - 2) + v23);
        }

        unpackU32(&v33, v16, &v25, 1u);
        if (v33)
        {
          if (v17[10] && (unpackU32(&v33, v16, &v25, 1u), !v33))
          {
            unpackS32(&v31 + 1, v16, &v25, v17[10]);
            LOWORD(v24) = v23 + WORD2(v31);
          }

          else
          {
            unpackU32(&v32, v16, &v25, v17[9]);
            v24 = v17[8] + v32;
          }

          writeToPeriVec(a3 + 32, v22, v24);
          v23 = *(*(a3 + 40) + 2 * v22);
        }

        else
        {
          writeToPeriVec(a3 + 32, v22, v23);
        }

        ++v22;
      }

      v21 = v17[12];
    }

    while (v15 > (v25 + v21 + v17[11] - 1) >> 3);
  }

  *(a3 + 2) = v22;
  v9 = brk_DataUnmap(*(*a1 + 24), a1[15], v27);
  if ((v9 & 0x80000000) == 0 && !*(*(a1[2] + 464) + 28))
  {
    v25 = 0;
    v26 = 0;
    Lookup_GetUnitData(a1, a2, &v25);
    *a3 = v26;
  }

  return v9;
}

uint64_t writeToPeriVec(uint64_t a1, unsigned int a2, __int16 a3)
{
  v6 = *(a1 + 16);
  if (v6 <= a2)
  {
    result = heap_Realloc(*(*a1 + 8), *(a1 + 8), 2 * v6 + 300);
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = result;
    *(a1 + 16) += 150;
  }

  else
  {
    result = *(a1 + 8);
  }

  *(result + 2 * a2) = a3;
  return result;
}

uint64_t lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ILookup_0;
  return result;
}

uint64_t Pmk_Lookup_ObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  v17 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 0;
    v9 = heap_Calloc(*(v17 + 8), 1, 40);
    if (!v9)
    {
      return 2164269066;
    }

    v10 = v9;
    v11 = v17;
    *v9 = v17;
    v9[1] = a3;
    if (!a3 || (v12 = *(a3 + 48)) == 0)
    {
      v12 = *(v11 + 48);
    }

    AddRefCountedObject = objc_GetAddRefCountedObject(v12, a4, Pmk_Lookup_ObjcVoiceOpen, Pmk_Lookup_ObjcVoiceClose, v11, &v16);
    if ((AddRefCountedObject & 0x80000000) != 0 || (v10[2] = *(v16 + 32), AddRefCountedObject = brk_DataOpen(*(v17 + 24)), (AddRefCountedObject & 0x80000000) != 0))
    {
      v14 = AddRefCountedObject;
    }

    else
    {
      v14 = brk_DataOpen(*(v17 + 24));
      if ((v14 & 0x80000000) == 0)
      {
LABEL_13:
        *a5 = v10;
        return v14;
      }
    }

    *a5 = v10;
    Pmk_Lookup_ObjClose(a5);
    v10 = 0;
    goto LABEL_13;
  }

  return inited;
}

uint64_t Pmk_Lookup_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  *v44 = 0;
  v45 = 0;
  v43 = 0;
  *__s1 = 0;
  *v41 = 0;
  v40 = 0;
  inited = InitRsrcFunction(a1, a2, &v45);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = heap_Calloc(*(v45 + 8), 1, 336);
  if (!v9)
  {
    return 2164269066;
  }

  v10 = v9;
  if (cstdlib_strlen(a3) > 0xFF)
  {
    return 2164269065;
  }

  cstdlib_strncpy(v10, a3, 0xFFuLL);
  *(v10 + 264) = 0;
  *(v10 + 312) = 0;
  *(v10 + 320) = 0;
  *(v10 + 304) = 0;
  *(v10 + 328) = -1;
  *(v10 + 330) = -1;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "PIMK", 1031, v44);
  v19 = *v44;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  for (i = ssftriff_reader_OpenChunk(*v44, __s1, &v40, 0); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v44, __s1, &v40, 0))
  {
    if (cstdlib_strcmp(__s1, "PMKH"))
    {
      if (!cstdlib_strcmp(__s1, "PMKF"))
      {
        ssftriff_reader_GetChunkData(*v44, v40, v41, v22);
        v28 = heap_Alloc(*(v45 + 8), v40);
        *(v10 + 320) = v28;
        if (!v28)
        {
          return 2164269066;
        }

LABEL_22:
        ssftriff_reader_ReadStringZ(*v44, *v41, v40, 0, v28, &v40);
        goto LABEL_23;
      }

      if (!cstdlib_strcmp(__s1, "PMKP"))
      {
        ssftriff_reader_GetChunkData(*v44, v40, v41, v23);
        v28 = heap_Alloc(*(v45 + 8), v40);
        *(v10 + 312) = v28;
        if (!v28)
        {
          return 2164269066;
        }

        goto LABEL_22;
      }

      if (cstdlib_strcmp(__s1, "PMFD"))
      {
        if (cstdlib_strcmp(__s1, "PMPP"))
        {
          if (cstdlib_strcmp(__s1, "PMBO"))
          {
            if (cstdlib_strcmp(__s1, "PMUO"))
            {
              if (!cstdlib_strcmp(__s1, "PMUD"))
              {
                *(v10 + 296) = ssftriff_reader_GetPosition(*v44);
              }
            }

            else
            {
              *(v10 + 300) = ssftriff_reader_GetPosition(*v44);
            }
          }

          else
          {
            v26 = ssftriff_reader_DetachChunkData(*v44, (v10 + 272), (v10 + 280));
            if ((v26 & 0x80000000) != 0)
            {
LABEL_50:
              v11 = v26;
              goto LABEL_51;
            }
          }
        }

        else
        {
          ssftriff_reader_GetChunkData(*v44, v40, v41, v25);
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_50;
          }

          v32 = heap_Alloc(*(v45 + 8), 60);
          *(v10 + 264) = v32;
          if (!v32)
          {
            return 2164269066;
          }

          v33 = *(v10 + 328);
          if (v33 > 3)
          {
            v11 = 2164269081;
LABEL_51:
            v19 = *v44;
LABEL_52:
            if (v19)
            {
              ssftriff_reader_ObjClose(v19, v12, v13, v14, v15, v16, v17, v18);
            }

LABEL_54:
            *(a4 + 32) = v10;
            Pmk_Lookup_ObjcVoiceClose(a1, a2, a4);
            *(a4 + 32) = 0;
            return v11;
          }

          v34 = *v41;
          v35 = (*v41 + 4);
          *(v10 + 260) = **v41;
          if (v33 == 1 && !*(v10 + 329) && !*(v10 + 330))
          {
            v32[1] = v34[1];
            *v32 = v34[2];
            v32[3] = v34[3];
            v32[2] = v34[4];
            v35 = v34 + 5;
          }

          v32[5] = *v35;
          v32[4] = v35[1];
          v32[7] = v35[2];
          v32[6] = v35[3];
          v32[9] = v35[4];
          v32[8] = v35[5];
          v32[10] = v35[6];
          v32[11] = v35[7];
          v32[12] = v35[8];
          v32[13] = v35[9];
          v32[14] = v35[10];
        }
      }

      else
      {
        ssftriff_reader_GetChunkData(*v44, v40, v41, v24);
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v29 = heap_Calloc(*(v45 + 8), 9, 2);
        *(v10 + 304) = v29;
        if (!v29)
        {
          return 2164269066;
        }

        v30 = 0;
        v31 = *v41;
        do
        {
          *(v29 + v30) = *(v31 + v30);
          v30 += 2;
        }

        while (v30 != 18);
      }
    }

    else
    {
      ssftriff_reader_GetChunkData(*v44, v40, v41, v21);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_50;
      }

      v27 = *v41;
      *(v10 + 328) = **v41;
      *(v10 + 329) = v27[1];
      *(v10 + 330) = v27[2];
      *(v10 + 256) = v27[3];
      *(v10 + 257) = v27[4];
      *(v10 + 258) = v27[5];
      *(v10 + 259) = v27[6];
    }

LABEL_23:
    v26 = ssftriff_reader_CloseChunk(*v44);
    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_50;
    }
  }

  v11 = i;
  v36 = i & 0x1FFF;
  v19 = *v44;
  if (v36 != 20)
  {
    goto LABEL_52;
  }

  v37 = ssftriff_reader_ObjClose(*v44, v12, v13, v14, v15, v16, v17, v18);
  v11 = v37;
  *v44 = 0;
  if ((v37 & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  if (*(v10 + 264))
  {
    v38 = v37;
  }

  else
  {
    v38 = 2164269081;
  }

  if ((v38 & 0x80000000) != 0)
  {
    v11 = v38;
    goto LABEL_54;
  }

  *(a4 + 32) = v10;
  return v11;
}

uint64_t Pmk_Lookup_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v12 = 0;
  inited = InitRsrcFunction(a1, a2, &v12);
  if ((inited & 0x80000000) == 0)
  {
    v5 = v3[34];
    if (v5)
    {
      inited = ssftriff_reader_ReleaseChunkData(v5);
    }

    v6 = v3[36];
    if (v6)
    {
      inited = ssftriff_reader_ReleaseChunkData(v6);
    }

    v7 = v3[40];
    if (v7)
    {
      heap_Free(*(v12 + 8), v7);
    }

    v8 = v3[39];
    if (v8)
    {
      heap_Free(*(v12 + 8), v8);
    }

    v9 = v3[38];
    if (v9)
    {
      heap_Free(*(v12 + 8), v9);
    }

    v10 = v3[33];
    if (v10)
    {
      heap_Free(*(v12 + 8), v10);
    }

    heap_Free(*(v12 + 8), v3);
  }

  return inited;
}

uint64_t Pmk_Lookup_ObjClose(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = v2[1];
    if (!v4 || (v5 = *(v4 + 48)) == 0)
    {
      v5 = *(*v2 + 48);
    }

    objc_ReleaseObject(v5, v3);
  }

  v6 = v2[3];
  if (v6)
  {
    v7 = brk_DataClose(*(*v2 + 24), v6);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[4];
  if (!v8 || (v7 = brk_DataClose(*(*v2 + 24), v8), (v7 & 0x80000000) == 0))
  {
    heap_Free(*(*v2 + 8), v2);
    *a1 = 0;
  }

  return v7;
}

uint64_t Pmk_Lookup_UnitPeriInfo(void *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  v22 = 0;
  *(a3 + 8) = 0;
  v5 = a3 + 8;
  *a3 = 0;
  v6 = a1[2];
  if (*(v6 + 256) > a2)
  {
    v20 = 0;
    v19 = 0;
    v9 = *(*(v6 + 264) + 52);
    if (v9)
    {
      v21 = a2 / *(v6 + 260) * v9;
      unpackU32(&v20, *(v6 + 280), &v21, v9);
      v6 = a1[2];
    }

    else
    {
      v20 = 0;
    }

    if (a2 % *(v6 + 260))
    {
      v10 = *(*(v6 + 264) + 56);
      v21 = v10 * (a2 - 1);
      result = unpackU32_Offline(&v19 + 1, *(v6 + 300), *(*a1 + 24), a1[4], &v21, v10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = a1[2];
      v11 = *(*(v6 + 264) + 56);
    }

    else
    {
      HIDWORD(v19) = 0;
      v11 = *(*(v6 + 264) + 56);
      v21 = v11 * a2;
    }

    result = unpackU32_Offline(&v19, *(v6 + 300), *(*a1 + 24), a1[4], &v21, v11);
    if ((result & 0x80000000) == 0)
    {
      v12 = v19 - HIDWORD(v19);
      if (v19 != HIDWORD(v19))
      {
        result = brk_DataMap(*(*a1 + 24), a1[3], (*(a1[2] + 296) + HIDWORD(v19) + v20), (v19 - HIDWORD(v19)), &v22);
        if ((result & 0x80000000) == 0)
        {
          v13 = v22;
          v14 = a1[2];
          v25 = 0;
          v26 = 0;
          v24 = 0;
          v23 = 0;
          v15 = *(v14 + 264);
          if (*(v14 + 328) == 1 && !*(v14 + 329) && !*(v14 + 330))
          {
            unpackU32(&v23, v22, &v26 + 1, v15[1]);
            unpackU32(&v23, v13, &v26 + 1, v15[3]);
          }

          unpackU32(&v23, v13, &v26 + 1, v15[5]);
          *(a3 + 8) = v15[4] + v23;
          unpackU32(&v23, v13, &v26 + 1, v15[7]);
          *a3 = v15[6] + v23;
          v16 = v15[12];
          if (v12 <= (HIDWORD(v26) + v16 + v15[11] - 1) >> 3)
          {
            v18 = 0;
          }

          else
          {
            LOWORD(v17) = 0;
            v18 = 0;
            do
            {
              unpackU32(&v25, v13, &v26 + 1, v16);
              unpackU32(&v26, v13, &v26 + 1, v15[11]);
              for (; v25; LODWORD(v25) = v25 - 1)
              {
                *(a3 + 40008 + 2 * v18) = v26;
                if (v18)
                {
                  *(v5 + 2 * v18) = *(v5 + 2 * (v18 - 1)) + v17;
                }

                unpackU32(&v25 + 1, v13, &v26 + 1, 1u);
                if (HIDWORD(v25))
                {
                  if (v15[10] && (unpackU32(&v25 + 1, v13, &v26 + 1, 1u), !HIDWORD(v25)))
                  {
                    unpackS32(&v24, v13, &v26 + 1, v15[10]);
                    LOWORD(v17) = v17 + v24;
                  }

                  else
                  {
                    unpackU32(&v24 + 1, v13, &v26 + 1, v15[9]);
                    v17 = v15[8] + HIDWORD(v24);
                  }
                }

                *(a3 + 20008 + 2 * v18++) = v17;
              }

              v16 = v15[12];
            }

            while (v12 > (HIDWORD(v26) + v16 + v15[11] - 1) >> 3);
          }

          *(a3 + 2) = v18;
          return brk_DataUnmap(*(*a1 + 24), a1[3], v22);
        }
      }
    }
  }

  return result;
}

uint64_t Pmk_Lookup_Fingerprint(uint64_t a1, void *a2)
{
  *a2 = *(*(a1 + 16) + 320);
  if (*(*(a1 + 16) + 320))
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t pmk_lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &IPmkLookup;
  return result;
}

uint64_t packU32(unsigned int a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = *a3 + a4;
    v5 = (v4 - 1) >> 3;
    v6 = (v4 - 1) & 7;
    if (v6 + 1 < a4)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = a4;
    }

    *(a2 + v5) += (a1 & ~(-1 << v7)) << (-v4 & 7);
    v8 = a1 >> v7;
    if (a1 >> v7)
    {
      v9 = v5 - 1;
      do
      {
        *(a2 + v9--) += v8;
        v10 = v8 > 0xFF;
        v8 >>= 8;
      }

      while (v10);
    }

    *a3 += a4;
  }

  return 0;
}

uint64_t packS32(unsigned int a1, uint64_t a2, _DWORD *a3, int a4)
{
  v7 = a1;
  if ((a1 & 0x80000000) != 0)
  {
    packU32(1u, a2, a3, 1u);
    v7 = -v7;
  }

  else
  {
    ++*a3;
  }

  packU32(v7, a2, a3, a4 - 1);
  return 0;
}

uint64_t unpackU32_Offline(int *a1, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int a6)
{
  v23 = 0;
  if (a6)
  {
    v10 = *a5;
    *a5 += a6;
    result = brk_DataMap(a3, a4, a2 + (v10 >> 3), 4, &v23);
    if (!result)
    {
      v12 = 8 - (v10 & 7);
      if (v12 >= a6)
      {
        v13 = a6;
      }

      else
      {
        v13 = 8 - (v10 & 7);
      }

      v14 = v23;
      v15 = (*v23 >> (v12 - v13)) & ~(-1 << v13);
      *a1 = v15;
      v16 = a6 - v13;
      v17 = a6 - v13 - 8;
      if (a6 - v13 < 8)
      {
        v18 = 1;
        if (!v16)
        {
          return brk_DataUnmap(a3, a4, v14);
        }
      }

      else
      {
        v18 = (v17 >> 3) + 2;
        v19 = (v14 + 1);
        v20 = (v17 >> 3) + 1;
        do
        {
          *a1 = v15 << 8;
          v21 = *v19++;
          v15 = v21 | (v15 << 8);
          *a1 = v15;
          v16 -= 8;
          --v20;
        }

        while (v20);
        if (!v16)
        {
          return brk_DataUnmap(a3, a4, v14);
        }
      }

      v22 = v15 << v16;
      *a1 = v22;
      *a1 = (*(v14 + v18) >> (8 - v16)) + v22;
      return brk_DataUnmap(a3, a4, v14);
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t unpackU32(int *a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  if (!a4)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v4 = *a3;
  v5 = v4 >> 3;
  v6 = 8 - (*a3 & 7);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 8 - (*a3 & 7);
  }

  *a3 = v4 + a4;
  v8 = (*(a2 + v5) >> (v6 - v7)) & ~(-1 << v7);
  *a1 = v8;
  v9 = a4 - v7;
  v10 = (v5 + 1);
  if (a4 - v7 >= 8)
  {
    do
    {
      *a1 = v8 << 8;
      v8 = *(a2 + v10) | (v8 << 8);
      *a1 = v8;
      v9 -= 8;
      ++v10;
    }

    while (v9 > 7);
  }

  if (v9)
  {
    v11 = v8 << v9;
    *a1 = v11;
    v12 = (*(a2 + v10) >> (8 - v9)) + v11;
LABEL_10:
    *a1 = v12;
  }

  return 0;
}

uint64_t unpackS32(int *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v10 = 0;
  *a1 = 0;
  unpackU32(&v10 + 1, a2, a3, 1u);
  unpackU32(&v10, a2, a3, a4 - 1);
  if (HIDWORD(v10))
  {
    v8 = -v10;
  }

  else
  {
    v8 = v10;
  }

  *a1 = v8;
  return 0;
}

uint64_t smcadpcmf5spi_GenDecOpen(_WORD *a1, int a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v6 = 2328911882;
  v26 = 0;
  result = 2328911878;
  if (!a3 || !a5)
  {
    return result;
  }

  v29 = 0;
  __b = 0u;
  v28 = 0u;
  inited = InitRsrcFunction(a1, a2, &v26);
  if (inited < 0)
  {
    return inited & 0xFDFFF | 0x8AD02000;
  }

  v12 = heap_Calloc(*(v26 + 8), 1, 88);
  if (!v12)
  {
    return 2328911882;
  }

  v13 = v12;
  *(v12 + 80) = v26;
  *a5 = 0;
  *(a5 + 8) = 0;
  v14 = *a3;
  v15 = a3[1];
  *(v12 + 4) = v15;
  if (a4 == 4)
  {
    *(v12 + 56) = 0;
    Info = smcadpcmf5spi_GetInfo(8450, v14, v15, 0, 0, &__b);
    if (Info < 0)
    {
      v21 = Info & 0x1FFFFF;
    }

    else
    {
      *(v13 + 40) = heap_Calloc(*(v26 + 8), 1, HIWORD(v28));
      if (v29)
      {
        *(v13 + 48) = heap_Calloc(*(v26 + 8), 1, v29);
      }

      v17 = heap_Calloc(*(v26 + 8), *(v13 + 4), 2);
      *(v13 + 16) = v17;
      if (!*(v13 + 40) || v29 && !*(v13 + 48) || !v17)
      {
        goto LABEL_21;
      }

      NullHandle = safeh_GetNullHandle();
      v20 = smcadpcmf5spi_DecoderOpen(8450, v15, NullHandle, v19, 0, 0, *(v13 + 40), v13 + 64);
      v6 = v20;
      if ((v20 & 0x80000000) == 0)
      {
        *(v13 + 2) = WORD3(v28);
        *(v13 + 4) = WORD2(v28) >> 1;
        *(v13 + 6) = WORD4(__b);
        *v13 = 4;
        *(v13 + 8) = 0;
        if (!v20)
        {
          result = 0;
          *a5 = v13;
          *(a5 + 8) = 173;
          return result;
        }

        goto LABEL_21;
      }

      v21 = v20 & 0x1FFFFF;
    }

    v6 = v21 | 0x8AD02000;
  }

  else
  {
    v6 = 2328911881;
  }

LABEL_21:
  v22 = *(v13 + 40);
  v23 = v26;
  if (v22)
  {
    heap_Free(*(v26 + 8), v22);
    v23 = v26;
  }

  v24 = *(v13 + 48);
  if (v24)
  {
    heap_Free(*(v23 + 8), v24);
    v23 = v26;
  }

  v25 = *(v13 + 16);
  if (v25)
  {
    heap_Free(*(v23 + 8), v25);
    v23 = v26;
  }

  heap_Free(*(v23 + 8), v13);
  return v6;
}

uint64_t smcadpcmf5spi_GenDecGetInfo(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  result = safeh_HandleCheck(a1, a2, 173, 88);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      v13 = *a3 + *(a1 + 6);
      v14 = *(a1 + 4);
      v15 = (*a4 + v13 - 1) / v14;
      v16 = *(a1 + 8);
      v17 = v13 / v14 - v16;
      if (v13 / v14 < v16)
      {
        v17 = 0;
      }

      v18 = *(a1 + 2);
      *a6 = v17 * v18;
      *a7 = (v15 - v17 + 1) * v18;
      *(a1 + 28) = *a4;
      *(a1 + 32) = v13 - v17 * v14;
      *(a1 + 24) = 0;
      if (!result)
      {
        smcadpcmf5spi_DecoderResetMemory(*(a1 + 64), *(a1 + 72));
        return 0;
      }
    }

    else
    {
      return 2328911880;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_GenDecClose(uint64_t *a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  v8 = safeh_HandleCheck(a1, a2, 173, 88);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!a1)
  {
    return 2328911880;
  }

  v6 = smcadpcmf5spi_DecoderClose(a1[8], a1[9]);
  heap_Free(*(a1[10] + 8), a1[5]);
  v9 = a1[6];
  if (v9)
  {
    heap_Free(*(a1[10] + 8), v9);
  }

  heap_Free(*(a1[10] + 8), a1[2]);
  heap_Free(*(a1[10] + 8), a1);
  return v6;
}

uint64_t smcadpcmf5spi_GenDecProcess(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, char *a5, unsigned int *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = safeh_HandleCheck(a1, a2, 173, 88);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!a1)
  {
    return 2328911880;
  }

  if (*a6 >= *(a1 + 28))
  {
    v12 = *(a1 + 28);
  }

  else
  {
    v12 = *a6;
  }

  v28 = a4;
  v29 = a6;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(a1 + 24);
  if (v12 <= v13)
  {
    cstdlib_memcpy(a5, *(a1 + 16), 2 * v12);
    cstdlib_memmove(*(a1 + 16), (*(a1 + 16) + 2 * v12), 2 * (*(a1 + 24) - v12));
    v17 = &a5[2 * v12];
    *(a1 + 24) -= v12;
    *(a1 + 28) -= v12;
    goto LABEL_14;
  }

  v14 = *a4;
  v15 = *(a1 + 2);
  if (v14 < v15)
  {
    if (*(a1 + 24))
    {
      cstdlib_memcpy(a5, *(a1 + 16), 2 * v13);
      v16 = *(a1 + 24);
      v17 = &a5[2 * v16];
      *(a1 + 28) -= v16;
      *(a1 + 24) = 0;
LABEL_14:
      LODWORD(v18) = a3;
      goto LABEL_15;
    }

LABEL_12:
    v17 = a5;
    goto LABEL_14;
  }

  v18 = a3;
  v17 = a5;
  while (1)
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 4);
    v31 = v15;
    v30 = 2 * v21;
    *(a1 + 56) = 0;
    v11 = smcadpcmf5spi_DecoderProcess(*(a1 + 64), *(a1 + 72), 0, v18, &v31, *(a1 + 48), v32, &v30);
    v22 = v30 >> 1;
    v30 >>= 1;
    if (v20 >= v21)
    {
      *(a1 + 32) -= v22;
      goto LABEL_31;
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      LOWORD(v22) = v22 - v23;
      v24 = &v32[v23];
      *(a1 + 32) = 0;
      if (*(a1 + 28) < v22)
      {
        LOWORD(v22) = *(a1 + 28);
      }
    }

    else
    {
      if (*(a1 + 24))
      {
        cstdlib_memcpy(v17, *(a1 + 16), 2 * *(a1 + 24));
        v25 = *(a1 + 24);
        v17 += 2 * v25;
        v22 = *(a1 + 28) - v25;
        *(a1 + 28) = v22;
        v12 -= v25;
        *(a1 + 24) = 0;
      }

      else
      {
        v22 = *(a1 + 28);
      }

      v24 = v32;
      if (v22 > *(a1 + 4))
      {
        LOWORD(v22) = v30;
      }
    }

    v26 = v22;
    if (v12 < v22)
    {
      break;
    }

    cstdlib_memcpy(v17, v24, 2 * v22);
    *(a1 + 28) -= v26;
    v17 += 2 * v26;
    v12 -= v26;
LABEL_31:
    v18 += v31;
    if (v12)
    {
      v14 -= v31;
      v15 = *(a1 + 2);
      if (v14 >= v15)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v27 = v22 - v12;
  cstdlib_memcpy(*(a1 + 16), &v24[v12], 2 * v27);
  *(a1 + 24) = v27;
  cstdlib_memcpy(v17, v24, 2 * v12);
  *(a1 + 28) -= v12;
  v17 += 2 * v12;
  LODWORD(v18) = v18 + v31;
LABEL_15:
  *v28 = v18 - a3;
  *v29 = (v17 - a5) >> 1;
  return v11;
}

uint64_t gsmc_vssq5_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2328911873;
  }

  result = 0;
  *a2 = &dec_I;
  return result;
}

uint64_t FG_adpcm_init_state(uint64_t result)
{
  *result = 0;
  *(result + 2) = 0;
  return result;
}

__int16 *adpcm_coder(__int16 *result, _BYTE *a2, int a3, __int16 *a4)
{
  v4 = *a4;
  v5 = *(a4 + 2);
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = stepsizeTable[*(a4 + 2)];
    v10 = a3 + 1;
    do
    {
      v11 = *result++;
      v12 = (v11 >> 2) - v4;
      if (v12 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = -v12;
      }

      v14 = v13 - v9;
      if (v13 >= v9)
      {
        v25 = 2 * v9;
        if (v14 >= v9 >> 1)
        {
          v26 = 10;
        }

        else
        {
          v26 = 8;
        }

        if (v14 >= v9 >> 1)
        {
          v27 = v9 >> 1;
        }

        else
        {
          v27 = 0;
        }

        v28 = v9 + (v9 >> 3) + v27;
        v29 = v14 - v27 < v9 >> 2;
        v23 = v26 | 1;
        if (v29)
        {
          v23 = v26;
        }

        else
        {
          v28 += v9 >> 2;
        }

        v30 = v13 - v25;
        v31 = v25 + (v9 >> 2);
        if (v30 >= v9)
        {
          v32 = 14;
        }

        else
        {
          v32 = 12;
        }

        if (v30 >= v9)
        {
          v33 = v9;
        }

        else
        {
          v33 = 0;
        }

        v34 = v31 + v33;
        v29 = v30 - v33 < v9 >> 1;
        v35 = v32 | 1;
        if (v29)
        {
          v35 = v32;
        }

        else
        {
          v34 += v9 >> 1;
        }

        if (v13 < 2 * v9)
        {
          v24 = v28;
        }

        else
        {
          v23 = v35;
          v24 = v34;
        }
      }

      else
      {
        v15 = v9 >> 1;
        v16 = v13 >= v9 >> 1;
        if (v13 < v9 >> 1)
        {
          v15 = 0;
        }

        v17 = v13 - v15;
        v18 = v15 + (v9 >> 4);
        if (v17 >= (v9 >> 2))
        {
          v19 = (4 * v16) | 2;
        }

        else
        {
          v19 = 4 * v16;
        }

        if (v17 >= (v9 >> 2))
        {
          v20 = v9 >> 2;
        }

        else
        {
          v20 = 0;
        }

        v21 = v17 - v20;
        v22 = v18 + v20;
        if (v21 >= (v9 >> 3))
        {
          v23 = v19 | 1;
        }

        else
        {
          v23 = v19;
        }

        if (v21 >= (v9 >> 3))
        {
          v24 = v22 + (v9 >> 3);
        }

        else
        {
          v24 = v22;
        }
      }

      if (v12 < 0)
      {
        v24 = -v24;
      }

      v4 += v24;
      if (v4 <= -8192)
      {
        v4 = -8192;
      }

      if (v4 >= 0x1FFF)
      {
        v4 = 0x1FFF;
      }

      v36 = indexTable[v23 | (v12 >> 27) & 0x10];
      v5 = (v36 + v5) & ~((v36 + v5) >> 31);
      if (v5 >= 88)
      {
        v5 = 88;
      }

      v9 = stepsizeTable[v5];
      v37 = v6 + 1;
      v7 |= v12 >> 31 << v6;
      if (v6)
      {
        a2[(v6 >> 1) + 1] = v23 | v8;
        if (v6 == 7)
        {
          v37 = 0;
          *a2 = v7;
          a2 += 5;
          v7 = 0;
        }
      }

      else
      {
        v8 = 16 * v23;
      }

      --v10;
      v6 = v37;
    }

    while (v10 > 1);
  }

  *a4 = v4;
  *(a4 + 2) = v5;
  return result;
}

unsigned __int8 *adpcm_decoder(unsigned __int8 *result, _WORD *a2, int a3, __int16 *a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = *result++;
    v7 = v8;
    v9 = *(a4 + 2);
    v10 = stepsizeTable[*(a4 + 2)];
    v11 = *a4;
    for (i = a3 + 1; i > 1; --i)
    {
      if (v4 == 8)
      {
        v14 = *result++;
        v7 = v14;
        v4 = 1;
        if (!v5)
        {
LABEL_7:
          v15 = *result++;
          v13 = v15;
          LODWORD(v6) = v15 >> 4;
          goto LABEL_8;
        }
      }

      else
      {
        ++v4;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v13 = v6;
LABEL_8:
      v5 ^= 1u;
      v16 = indexTable[v6 & 0xF];
      v9 = (v16 + v9) & ~((v16 + v9) >> 31);
      if (v9 >= 88)
      {
        v9 = 88;
      }

      v17 = (v6 << 30) >> 31;
      v18 = (((v6 << 29) >> 31) & (v10 >> 1)) + (v10 >> 4) + (v17 & (v10 >> 2));
      if (v6)
      {
        v18 += v10 >> 3;
      }

      v19 = v10 + (v10 >> 3) + (v17 & (v10 >> 1));
      if (v6)
      {
        v19 += v10 >> 2;
      }

      v20 = (v10 >> 2) + 2 * v10 + (v10 & ((v6 << 30) >> 31));
      v21 = v20 + (v10 >> 1);
      if ((v6 & 1) == 0)
      {
        v21 = v20;
      }

      if ((v6 & 4) == 0)
      {
        v21 = v19;
      }

      if ((v6 & 8) == 0)
      {
        v21 = v18;
      }

      v22 = (v7 & 1) == 0;
      v7 >>= 1;
      if (!v22)
      {
        v21 = -v21;
      }

      v11 += v21;
      if (v11 <= -8192)
      {
        v11 = -8192;
      }

      if (v11 >= 0x1FFF)
      {
        v11 = 0x1FFF;
      }

      v10 = stepsizeTable[v9];
      *a4 = v11;
      *(a4 + 2) = v9;
      *a2++ = 4 * v11;
      v6 = v13;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_GetInfo(int a1, int a2, unsigned __int16 a3, int a4, int a5, char *__b)
{
  if (a5 == 1)
  {
    if ((a1 & 0xFE00FFFF) != 0x2102)
    {
      return 2327847168;
    }
  }

  else
  {
    result = 2327847168;
    if (a2 != 10000 || (a1 & 0xFE00FFFF) != 0x2102)
    {
      return result;
    }
  }

  if (!__b)
  {
    return 2327846918;
  }

  cstdlib_memset(__b, 0, 0x24uLL);
  *(__b + 2) = 0;
  if (!a3 || (a3 & 7) != 0)
  {
    return 2327846919;
  }

  result = 2327846919;
  if (!(a3 >> 13))
  {
    v12 = ((5 * a3) >> 3) + 3;
    *(__b + 11) = v12;
    *(__b + 12) = v12;
    LOWORD(v12) = 8 * v12;
    *(__b + 13) = v12;
    *(__b + 14) = v12;
    if (a4)
    {
      return 2327846913;
    }

    else
    {
      *(__b + 8) = 10000;
      *(__b + 10) = 2 * a3;
      result = 0;
      if (a5 == 1)
      {
        *(__b + 30) = 0;
      }

      else
      {
        *(__b + 30) = 4;
        *(__b + 3) = 0;
        *(__b + 9) = 0;
      }
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_DecoderOpen(int a1, unsigned int a2, int a3, int a4, int a5, int a6, _WORD *__b, uint64_t a8)
{
  v8 = 2327846918;
  if ((a1 & 0xFE00FFFF) != 0x2102)
  {
    return 2327847168;
  }

  if (!a8)
  {
    return 2327846920;
  }

  if (__b)
  {
    cstdlib_memset(__b, 0, 4uLL);
    *a8 = __b;
    *(a8 + 8) = 65708;
    if (HIWORD(a2))
    {
      return 2327846919;
    }

    else
    {
      v8 = 0;
      *__b = a2;
      __b[1] = ((5 * a2) >> 3) + 3;
    }
  }

  return v8;
}

uint64_t smcadpcmf5spi_DecoderProcess(unsigned __int16 *a1, int a2, int a3, uint64_t a4, _WORD *a5, uint64_t a6, _WORD *a7, _WORD *a8)
{
  if (a8 && a5 && a4 && a7)
  {
    if (*a5)
    {
      *a8 = 0;
      if (a3)
      {
        *a5 = 0;
        return 2327846913;
      }

      else
      {
        result = safeh_HandleCheck(a1, a2, 65708, 4);
        if ((result & 0x80000000) == 0)
        {
          if (*a5 == a1[1])
          {
            v14 = 0;
            BYTE2(v14) = *a4;
            LOWORD(v14) = *(a4 + 1);
            adpcm_decoder((a4 + 3), a7, *a1, &v14);
            result = 0;
            *a8 = 2 * *a1;
          }

          else
          {
            *a5 = 0;
            *a8 = 0;
            return 2327846921;
          }
        }
      }

      return result;
    }
  }

  else if (!a5)
  {
    goto LABEL_10;
  }

  *a5 = 0;
LABEL_10:
  result = 2327846918;
  if (a8)
  {
    *a8 = 0;
  }

  return result;
}

uint64_t smc155mrf22spi_GenDecOpen(_WORD *a1, int a2, int *a3, int a4, uint64_t a5)
{
  v6 = -2043650038;
  result = 2251317254;
  if (a3 && a5)
  {
    v26 = 0;
    __b = 0u;
    v25 = 0u;
    v22 = 0;
    __dst = 0;
    v21 = 0;
    inited = InitRsrcFunction(a1, a2, &v21);
    if (inited < 0)
    {
      v18 = inited & 0x3FFFFF;
      return v18 | 0x86302000;
    }

    v12 = heap_Calloc(*(v21 + 8), 1, 712);
    if (!v12)
    {
      return 2251317258;
    }

    v13 = v12;
    *(v12 + 704) = v21;
    *a5 = v12;
    *(a5 + 8) = 99;
    cstdlib_memcpy(&__dst + 2, a3, 2uLL);
    cstdlib_memcpy(&__dst, a3 + 2, 2uLL);
    cstdlib_memcpy(&v22 + 2, a3 + 1, 2uLL);
    cstdlib_memcpy(&v22, a3 + 6, 2uLL);
    v14 = __dst;
    *(v13 + 680) = 0;
    LODWORD(result) = smc155mrf22spi_GetInfo(1057026, HIWORD(__dst), v14 & 3, 0, 0, &__b);
    if ((result & 0x80000000) == 0)
    {
      *(v13 + 664) = heap_Calloc(*(v21 + 8), 1, HIWORD(v25));
      v15 = heap_Calloc(*(v21 + 8), 1, v26);
      *(v13 + 672) = v15;
      if (!*(v13 + 664) || !v15)
      {
        goto LABEL_13;
      }

      NullHandle = safeh_GetNullHandle();
      result = smc155mrf22spi_DecoderOpen(1057026, v14 & 3, NullHandle, v17, a3 + 2, a4 - 8, *(v13 + 664), v13 + 688);
      if ((result & 0x80000000) == 0)
      {
        *(v13 + 2) = WORD3(v25);
        *(v13 + 4) = WORD2(v25) >> 1;
        *(v13 + 6) = WORD4(__b);
        *v13 = 8;
        *(v13 + 8) = HIWORD(v22);
        return result;
      }
    }

    v6 = result;
LABEL_13:
    v19 = *(v13 + 664);
    if (v19)
    {
      heap_Free(*(v21 + 8), v19);
      *(v13 + 664) = 0;
    }

    v20 = *(v13 + 672);
    if (v20)
    {
      heap_Free(*(v21 + 8), v20);
      *(v13 + 672) = 0;
    }

    v18 = v6 & 0x3FFFFF;
    return v18 | 0x86302000;
  }

  return result;
}

uint64_t smc155mrf22spi_GenDecGetInfo(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v12 & 0x80000000) == 0)
  {
    if (a1)
    {
      v13 = *a3 + *(a1 + 6);
      v14 = *(a1 + 4);
      v15 = (*a4 + v13 - 1) / v14;
      v16 = *(a1 + 8);
      v17 = v13 / v14 - v16;
      if (v13 / v14 < v16)
      {
        v17 = 0;
      }

      v18 = *(a1 + 2);
      *a6 = v17 * v18;
      *a7 = v18 + v18 * (v15 - v17);
      *(a1 + 652) = *a4;
      *(a1 + 656) = v13 - v17 * v14;
      *(a1 + 650) = 0;
      cstdlib_memset((a1 + 10), 0, 2 * v14);
      smc155mrf22spi_DecoderResetMemory(*(a1 + 688), *(a1 + 696));
    }

    else
    {
      return 2251317256;
    }
  }

  return v12;
}

uint64_t smc155mrf22spi_GenDecClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1)
  {
    return 2251317256;
  }

  v4 = smc155mrf22spi_DecoderClose(a1[86], a1[87]);
  v5 = a1[83];
  if (v5)
  {
    heap_Free(*(a1[88] + 8), v5);
    a1[83] = 0;
  }

  v6 = a1[84];
  if (v6)
  {
    heap_Free(*(a1[88] + 8), v6);
    a1[84] = 0;
  }

  heap_Free(*(a1[88] + 8), a1);
  return v4;
}

uint64_t smc155mrf22spi_GenDecProcess(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int *a4, char *a5, unsigned int *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!a1)
  {
    return 2251317256;
  }

  if (*a6 >= *(a1 + 652))
  {
    v12 = *(a1 + 652);
  }

  else
  {
    v12 = *a6;
  }

  v30 = a4;
  v29 = a3;
  if (!v12)
  {
LABEL_12:
    v17 = a5;
    goto LABEL_14;
  }

  v13 = *(a1 + 650);
  if (v12 <= v13)
  {
    cstdlib_memcpy(a5, (a1 + 10), 2 * v12);
    cstdlib_memmove((a1 + 10), (a1 + 10 + 2 * v12), 2 * (*(a1 + 650) - v12));
    v17 = &a5[2 * v12];
    *(a1 + 650) -= v12;
    *(a1 + 652) -= v12;
    goto LABEL_14;
  }

  v14 = *a4;
  v15 = *(a1 + 2);
  if (*a4 < v15)
  {
    if (*(a1 + 650))
    {
      cstdlib_memcpy(a5, (a1 + 10), 2 * v13);
      v16 = *(a1 + 650);
      v17 = &a5[2 * v16];
      *(a1 + 652) -= v16;
      *(a1 + 650) = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17 = a5;
  while (1)
  {
    v19 = *(a1 + 656);
    v20 = *(a1 + 4);
    v32 = v15;
    v31 = 2 * v20;
    if (v19 >= v20)
    {
      v26 = v19 >= 3 * v20;
      *(a1 + 680) = v26;
      v11 = smc155mrf22spi_DecoderProcess(*(a1 + 688), *(a1 + 696), v26, a3, &v32, *(a1 + 672), v33, &v31, 0, 0);
      v27 = v31;
      v31 >>= 1;
      *(a1 + 656) -= v27 >> 1;
      goto LABEL_31;
    }

    *(a1 + 680) = 0;
    v11 = smc155mrf22spi_DecoderProcess(*(a1 + 688), *(a1 + 696), 0, a3, &v32, *(a1 + 672), v33, &v31, 0, 0);
    v21 = v31 >> 1;
    v31 >>= 1;
    v22 = *(a1 + 656);
    if (v22)
    {
      v23 = v21 - v22;
      v24 = &v33[2 * v22];
      *(a1 + 656) = 0;
      v25 = v23 >= *(a1 + 652) ? *(a1 + 652) : v23;
    }

    else
    {
      if (*(a1 + 650))
      {
        cstdlib_memcpy(v17, (a1 + 10), 2 * *(a1 + 650));
        v28 = *(a1 + 650);
        v17 += 2 * v28;
        v25 = *(a1 + 652) - v28;
        *(a1 + 652) = v25;
        v12 -= v28;
        *(a1 + 650) = 0;
      }

      else
      {
        v25 = *(a1 + 652);
      }

      if (v25 > *(a1 + 4))
      {
        v25 = v31;
      }

      v24 = v33;
    }

    if (v25 > v12)
    {
      break;
    }

    LH_S16ToLH_S16(v24, v17, v25);
    *(a1 + 652) -= v25;
    v17 += 2 * v25;
    v12 -= v25;
LABEL_31:
    a3 += v32;
    if (v12)
    {
      v14 -= v32;
      v15 = *(a1 + 2);
      if (v14 >= v15)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  LH_S16ToLH_S16(&v24[2 * v12], (a1 + 10), v25 - v12);
  *(a1 + 650) = v25 - v12;
  LH_S16ToLH_S16(v24, v17, v12);
  *(a1 + 652) -= v12;
  v17 += 2 * v12;
  LODWORD(a3) = a3 + v32;
LABEL_14:
  *v30 = a3 - v29;
  *a6 = (v17 - a5) >> 1;
  return v11;
}

uint64_t gsmc_155mrf22_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2251317249;
  }

  result = 0;
  *a2 = &dec_I_0;
  return result;
}

uint64_t smc155mrf22_fxd_gain_predict(int16x4_t *a1, __int16 *a2, int a3, _WORD *a4)
{
  if (a3 < 1)
  {
    v6 = 20971;
  }

  else
  {
    v5 = a3;
    v6 = 20971;
    do
    {
      v7 = *a2++;
      v6 += (v7 * v7) >> 5;
      --v5;
    }

    while (v5);
  }

  v8 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_26ED637E0), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16(((v6 / (a3 << 8)) >> 1), &s16LogTable_0)) << 7));
  result = fxd_U16LookupPow10U16U16((((v8 >> 36) + (v8 >> 63)) >> 1), &u16PowTable_0);
  *a4 = 2 * result;
  return result;
}

uint64_t smc155mrf22_fxd_gain_predict_pulses(int16x4_t *a1, int a2, __int16 a3, _WORD *a4)
{
  v5 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_26ED637E0), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16((((((a2 << 11) | 0x14) << 16 >> 6) / (a3 << 8)) >> 1), &s16LogTable_0)) << 7));
  result = fxd_U16LookupPow10U16U16((((v5 >> 36) + (v5 >> 63)) >> 1), &u16PowTable_0);
  *a4 = 2 * result;
  return result;
}

uint64_t smc155mrf22_fxd_gain_update(uint64_t a1, __int16 a2, __int16 a3)
{
  *(a1 + 6) = *(a1 + 4);
  *(a1 + 2) = *a1;
  result = fxd_S16Lookup10Log10S16S16(a2, &s16LogTable_0);
  *a1 = 4 * (result + a3);
  return result;
}

uint64_t smc155mrf22_fxd_DecodeCodeGain(unsigned int a1, __int16 *a2, int a3, uint64_t a4, __int16 a5)
{
  v15 = 0;
  if (a3)
  {
    smc155mrf22_fxd_gain_predict_pulses(a4, a3, a5, &v15);
  }

  else
  {
    smc155mrf22_fxd_gain_predict(a4, a2, a5, &v15);
  }

  if (a1 > 58)
  {
    if (a1 > 0x3C)
    {
      v8 = smc155mrf22_fxd_qgc[a1];
      v10 = 2 * v15 * v8;
      v11 = a1 > 0x3E;
      v12 = (v10 + 512) >> 10;
      v13 = (v10 + 2048) >> 12;
      if (a1 <= 0x3E)
      {
        LOWORD(v9) = v13;
      }

      else
      {
        LOWORD(v9) = v12;
      }

      if (v11)
      {
        v7 = 3082;
      }

      else
      {
        v7 = 1541;
      }
    }

    else
    {
      v8 = smc155mrf22_fxd_qgc[a1];
      v9 = (2 * v15 * v8 + 4096) >> 13;
      v7 = 770;
    }
  }

  else
  {
    v7 = 0;
    v8 = smc155mrf22_fxd_qgc[a1];
    v9 = (2 * v15 * v8 + 0x2000) >> 14;
  }

  *(a4 + 6) = *(a4 + 4);
  *(a4 + 2) = *a4;
  *a4 = 4 * (fxd_S16Lookup10Log10S16S16(v8, &s16LogTable_0) + v7);
  return v9;
}

unsigned __int8 *smc155mrf22_ReadStream(unsigned __int8 *result, unsigned int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v14[49] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    v6 = v14;
    do
    {
      v7 = *result++;
      v8 = vdupq_n_s32(v7);
      *v6++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v8, xmmword_26ED62690), vshlq_u32(v8, xmmword_26ED62680))), 0x101010101010101);
      --v5;
    }

    while (v5);
  }

  if (a4)
  {
    v9 = 0;
    v10 = v14;
    do
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v13 += *(v10 + v12) << v12;
          ++v12;
        }

        while (v11 != v12);
        v10 = (v10 + v11);
      }

      else
      {
        v13 = 0;
      }

      *a3++ = v13;
      ++a5;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t smc155mrf22spi_GetInfo(int a1, int a2, unsigned int a3, unsigned int a4, int a5, char *__b)
{
  if (a5 == 1)
  {
    if (a1 != 1057026)
    {
      return 2250252544;
    }
  }

  else
  {
    result = 2250252544;
    if (a1 != 1057026 || a2 != 4005)
    {
      return result;
    }
  }

  if (!__b)
  {
    return 2250252294;
  }

  cstdlib_memset(__b, 0, 0x24uLL);
  *(__b + 2) = 40;
  if (a3 > 3)
  {
    return 2250252295;
  }

  v12 = dword_26ED66730[a3];
  v13 = 0x310025001C0025uLL >> (16 * a3);
  *(__b + 11) = v13;
  *(__b + 12) = v13;
  v14 = 0x188012800E00128uLL >> (16 * a3);
  *__b = v12;
  *(__b + 1) = v12;
  *(__b + 13) = v14;
  *(__b + 14) = v14;
  result = 2250252289;
  if (a5 == 1)
  {
    if (!a4)
    {
      result = 0;
      *(__b + 8) = 4005;
      *(__b + 10) = 640;
      *(__b + 30) = 0;
    }
  }

  else if (a4 < 2)
  {
    result = 0;
    *(__b + 10) = 640;
    *(__b + 30) = 56624768;
    *(__b + 12) = 0xFA500000004;
  }

  return result;
}

uint64_t smc155mrf22spi_DecoderOpen(int a1, unsigned int a2, int a3, int a4, int *a5, int a6, char *__b, uint64_t a8)
{
  v8 = 2250252294;
  if (a1 != 1057026)
  {
    return 2250252544;
  }

  if (__b)
  {
    cstdlib_memset(__b, 0, 0x680uLL);
    if (a8)
    {
      *a8 = __b;
      *(a8 + 8) = 65634;
      if (a2 > 3)
      {
        return 2250252295;
      }

      else if (a5)
      {
        v16 = *a5;
        v15 = a5 + 1;
        v14 = v16;
        *(__b + 11) = v16;
        *(__b + 6) = v15;
        v17 = 8 * v16 + 24;
        if (v16 >= 1)
        {
          v18 = v14;
          v19 = v15;
          do
          {
            v20 = *v19++;
            v17 += 32 * v20;
            --v18;
          }

          while (v18);
        }

        if (v17 == a6)
        {
          v21 = &v15[v14];
          *(__b + 7) = v21;
          v22 = &v21[v14];
          *(__b + 10) = v22[1];
          *(__b + 191) = v22 + 5;
          LODWORD(v22) = dword_26ED66760[a2];
          LODWORD(v21) = dword_26ED66770[a2];
          v23 = dword_26ED66780[a2];
          v24 = dword_26ED66790[a2];
          *(__b + 28) = 0x18D00000036;
          *(__b + 9) = v23;
          *(__b + 3) = v21;
          *(__b + 4) = v24;
          *(__b + 5) = 22050;
          *(__b + 4) = v22;
          ClearLongTermMemory(__b);
          *(__b + 8) = __b + 866;
          *(__b + 1506) = xmmword_26ED66750;
          fxd_LinSpace((__b + 1624), 0, 25736, 16);
          v8 = 0;
          *(__b + 414) = 0;
        }

        else
        {
          return 2250252297;
        }
      }
    }

    else
    {
      return 2250252296;
    }
  }

  return v8;
}

uint64_t smc155mrf22spi_DecoderProcess(uint64_t a1, int a2, unsigned int a3, unsigned __int8 *a4, _WORD *a5, uint64_t a6, char *a7, _WORD *a8, void *a9, _WORD *a10)
{
  v57 = *MEMORY[0x277D85DE8];
  if (a8 && a5 && a4 && a6 && (v14 = a7) != 0)
  {
    if (*a5)
    {
      *a8 = 0;
      if (a3 >= 2)
      {
        *a5 = 0;
        return 2250252289;
      }

      else
      {
        result = safeh_HandleCheck(a1, a2, 65634, 1664);
        if ((result & 0x80000000) == 0)
        {
          if (a1)
          {
            if (*(a1 + 12) <= *a5)
            {
              smc155mrf22_ReadStream(a4, *(a1 + 12), (a6 + 608), *(a1 + 16), &au16BitAllocationTable[56 * *(a1 + 4) - 840]);
              *a5 = *(a1 + 12);
              v52 = a3;
              if (a3)
              {
                fxd_LinSpace(a6 + 832, 0, 25736, 16);
              }

              else
              {
                fxd_MultiStageVectorDecodeLsp((a6 + 608), *(a1 + 44), *(a1 + 48), *(a1 + 1528), 16, (a6 + 832));
                fxd_OrderCheckLsp((a6 + 832), 16, *(a1 + 40));
              }

              v18 = 0;
              v19 = 0;
              v20 = (a6 + 608 + 4 * *(a1 + 44));
              v54 = 0;
              v55 = 0;
              v53 = a8;
              do
              {
                v21 = 80 * v19;
                smc155mrf22_DecodeLag_11_22(*v20, v19, *(a1 + 4), &v55, &v54);
                smc155mrf22_fxd_ExcitWFSet0_Decod_11_22((*(a1 + 64) + 160 * v19), v55, 80);
                v22 = 0;
                *(a1 + 1518) = smc155mrf22_fxd_qgp[v20[1]];
                v23 = *(a1 + 64) + v18;
                do
                {
                  v24 = (2 * *(v23 + v22) * *(a1 + 1518) + 0x4000) >> 15;
                  if (v24 <= -32768)
                  {
                    v24 = -32768;
                  }

                  if (v24 >= 0x7FFF)
                  {
                    LOWORD(v24) = 0x7FFF;
                  }

                  *(v23 + v22) = v24;
                  v22 += 2;
                }

                while (v22 != 160);
                v25 = v20[2];
                v26 = v20[3];
                if (*(a1 + 4) == 16)
                {
                  smc155mrf22_fxd_DecodWFSet1_4p(a6, v56, 80, v25, v26);
                }

                else
                {
                  smc155mrf22_fxd_DecodWFSet1_5p(a6, v56, 80, v25, v26);
                }

                v27 = v55;
                if (v55 > 79)
                {
                  if (*(a1 + 4) == 16)
                  {
                    v33 = 4;
                  }

                  else
                  {
                    v33 = 5;
                  }

                  v34 = smc155mrf22_fxd_DecodeCodeGain(v20[4], a6, v33, a1 + 1506, 80);
                  *(a1 + 1516) = v34;
                  *(a1 + 1514) = v34;
                  v32 = *(a1 + 64);
                  v35 = v56;
                  do
                  {
                    v36 = *v35++;
                    *(v32 + 2 * (v36 + v21)) += (2 * *(a6 + 2 * v36) * *(a1 + 1514) + 0x8000) >> 16;
                    --v33;
                  }

                  while (v33);
                }

                else
                {
                  v28 = 0;
                  do
                  {
                    v29 = (2 * *(a6 + v28) * *(a1 + 1520) + 0x4000) >> 15;
                    if (v29 <= -32768)
                    {
                      v29 = -32768;
                    }

                    if (v29 >= 0x7FFF)
                    {
                      LOWORD(v29) = 0x7FFF;
                    }

                    *(a6 + 2 * v27++) += v29;
                    v28 += 2;
                  }

                  while (v27 != 80);
                  v30 = smc155mrf22_fxd_DecodeCodeGain(v20[4], a6, 0, a1 + 1506, 80);
                  v31 = 0;
                  *(a1 + 1516) = v30;
                  *(a1 + 1514) = v30;
                  v32 = *(a1 + 64);
                  do
                  {
                    *(v32 + v18 + v31) += (2 * *(a6 + v31) * *(a1 + 1514) + 0x8000) >> 16;
                    v31 += 2;
                  }

                  while (v31 != 160);
                }

                if (*(a1 + 36) < 2)
                {
                  v20 += 5;
                }

                else
                {
                  smc155mrf22_fxd_DecodWFSet1_4p(a6, v56, 80, v20[5], v20[6]);
                  *(a1 + 1514) = (43690 * *(a1 + 1516) + 0x8000) >> 16;
                  v37 = v55;
                  if (v55 > 79)
                  {
                    v43 = 0;
                    v32 = *(a1 + 64);
                    do
                    {
                      *(v32 + 2 * (v56[v43] + v21)) += (2 * *(a6 + 2 * v56[v43]) * *(a1 + 1514) + 0x8000) >> 16;
                      ++v43;
                    }

                    while (v43 != 4);
                  }

                  else
                  {
                    v38 = v55 + 1;
                    v39 = a6;
                    do
                    {
                      v40 = (2 * *v39 * *(a1 + 1520) + 0x4000) >> 15;
                      if (v40 <= -32768)
                      {
                        v40 = -32768;
                      }

                      if (v40 >= 0x7FFF)
                      {
                        LOWORD(v40) = 0x7FFF;
                      }

                      v39[v37] += v40;
                      ++v39;
                      v41 = v38++ == 80;
                    }

                    while (!v41);
                    v42 = 0;
                    v32 = *(a1 + 64);
                    do
                    {
                      *(v32 + v18 + v42) += (2 * *(a6 + v42) * *(a1 + 1514) + 0x8000) >> 16;
                      v42 += 2;
                    }

                    while (v42 != 160);
                  }

                  if (*(a1 + 36) == 3)
                  {
                    smc155mrf22_fxd_DecodWFSet1_4p(a6, v56, 80, v20[7], v20[8]);
                    *(a1 + 1514) = ((*(a1 + 1516) << 15) + 0x8000) >> 16;
                    v44 = v55;
                    if (v55 > 79)
                    {
                      v49 = 0;
                      v32 = *(a1 + 64);
                      do
                      {
                        *(v32 + 2 * (v56[v49] + v21)) += (2 * *(a6 + 2 * v56[v49]) * *(a1 + 1514) + 0x8000) >> 16;
                        ++v49;
                      }

                      while (v49 != 4);
                    }

                    else
                    {
                      v45 = v55 + 1;
                      v46 = a6;
                      do
                      {
                        v47 = (2 * *v46 * *(a1 + 1520) + 0x4000) >> 15;
                        if (v47 <= -32768)
                        {
                          v47 = -32768;
                        }

                        if (v47 >= 0x7FFF)
                        {
                          LOWORD(v47) = 0x7FFF;
                        }

                        v46[v44] += v47;
                        ++v46;
                        v41 = v45++ == 80;
                      }

                      while (!v41);
                      v48 = 0;
                      v32 = *(a1 + 64);
                      do
                      {
                        *(v32 + v18 + v48) += (2 * *(a6 + v48) * *(a1 + 1514) + 0x8000) >> 16;
                        v48 += 2;
                      }

                      while (v48 != 160);
                    }

                    v20 += 9;
                  }

                  else
                  {
                    v20 += 7;
                  }
                }

                *(a1 + 1520) = *(a1 + 1518);
                v50 = (v32 + 160 * v19);
                if (v52)
                {
                  LH_S16ToLH_S16(v50, (a6 + 384), 0x50u);
                  v51 = v53;
                }

                else
                {
                  v51 = v53;
                  if (v19 == 3)
                  {
                    LH_S16ToLH_S16((a6 + 832), (a6 + 544), 0x10u);
                  }

                  else
                  {
                    fxd_InterpolateVectors((a1 + 1624), (a6 + 832), (a6 + 544), word_26EDF1290[v19], 16);
                  }

                  fxd_LspToCosLsp((a6 + 544), (a6 + 544), 16);
                  fxd_HighPrecisionCosLspToAi(a6 + 544, (a6 + 544), 16);
                  fxd_HighPrecisionExpandLpcBandwidth(a6 + 544, (a6 + 544), 32505, 16, 0);
                  FillZeroLH_S32(a6, 0x60u);
                  LH_S32ToLH_S32((a1 + 1560), a6, 0x10u);
                  fxd_HighPrecisionFastSynthesisFilter(v50, (a6 + 384), 80, 0, (a6 + 544), 0x10u, 28, a6, 14);
                  LH_S32ToLH_S32((a6 + 320), (a1 + 1560), 0x10u);
                }

                LH_S16ToLH_S16((a6 + 384), v14, 0x50u);
                v14 += 160;
                *v51 += 160;
                ++v19;
                v18 += 160;
              }

              while (v19 != 4);
              if (a9)
              {
                *a10 = 4;
                cstdlib_memcpy(a9, a1, 4uLL);
              }

              LH_S16ToLH_S16((a6 + 832), (a1 + 1624), 0x10u);
              LH_S16ToLH_S16((a1 + 712), (a1 + 72), *(a1 + 32));
              FillZeroLH_S16((a1 + 72 + 2 * *(a1 + 32)), 0x140u);
              result = 0;
              ++*(a1 + 1656);
            }

            else
            {
              *a5 = 0;
              *a8 = 0;
              return 2250252297;
            }
          }

          else
          {
            return 2250252296;
          }
        }
      }

      return result;
    }
  }

  else if (!a5)
  {
    goto LABEL_14;
  }

  *a5 = 0;
LABEL_14:
  result = 2250252294;
  if (a8)
  {
    *a8 = 0;
  }

  return result;
}

uint64_t smc155mrf22spi_DecoderClose(uint64_t a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  LODWORD(result) = safeh_HandleCheck(a1, a2, 65634, 1664);
  if (a1)
  {
    v7 = result;
  }

  else
  {
    v7 = -2044715000;
  }

  if (result >= 0)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

uint64_t smc155mrf22spi_DecoderResetMemory(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 65634, 1664);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      ClearLongTermMemory(a1);
      *(a1 + 1506) = xmmword_26ED66750;
      fxd_LinSpace(a1 + 1624, 0, 25736, 16);
      return 0;
    }

    else
    {
      return 2250252296;
    }
  }

  return result;
}

void *ClearLongTermMemory(uint64_t a1)
{
  cstdlib_memset((a1 + 72), 0, 0x59AuLL);
  cstdlib_memset((a1 + 1560), 0, 0x40uLL);
  cstdlib_memset((a1 + 1536), 0, 0xCuLL);

  return cstdlib_memset((a1 + 1548), 0, 0xCuLL);
}

_WORD *smc155mrf22_fxd_ExcitWFSet0_Decod_8Khz(_WORD *result, int a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    if (a3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = -a3;
    }

    if (a3 == 1)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }

    v6 = &smc155mrf22_s16LongTermInterpolationTable + 20 * (3 - v4);
    v7 = &smc155mrf22_s16LongTermInterpolationTable + 20 * v4;
    v8 = &result[v5 - a2];
    do
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = v8 + 1;
      for (i = 11; i > 1; --i)
      {
        v11 += ((*&v7[v10 * 2] * v8[v9]) >> 1) + ((*&v6[v10 * 2] * v8[v10 + 1]) >> 1);
        ++v10;
        --v9;
      }

      v14 = (v11 + 0x2000) >> 14;
      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      if (v14 >= 0x7FFF)
      {
        LOWORD(v14) = 0x7FFF;
      }

      *result++ = v14;
      v8 = v12;
      v15 = __OFSUB__(a4--, 1);
    }

    while (!((a4 < 0) ^ v15 | (a4 == 0)));
  }

  return result;
}

_WORD *smc155mrf22_fxd_ExcitWFSet0_Decod_11_22(_WORD *result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    v5 = 0xFFFFFFFF00000000 * a2;
    do
    {
      *v4++ = *(result + (v5 >> 31));
      v5 += 0x100000000;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t smc155mrf22_DecodeLag_8(uint64_t result, int a2, int a3, char a4, int *a5, int *a6, int *a7)
{
  v10 = result;
  if (a4)
  {
    v13 = *a7 - 5;
    if (v13 <= a2)
    {
      v13 = a2;
    }

    if (v13 + 9 > a3)
    {
      v13 = a3 - 9;
    }

    v14 = result & 0xF;
    if (v14 <= 3)
    {
      v15 = v13 + v14;
LABEL_18:
      *a5 = v15;
      *a6 = 0;
      goto LABEL_35;
    }

    if (v14 > 0xB)
    {
      v15 = v13 + v14 - 6;
      goto LABEL_18;
    }

    if ((result & 0xFu) <= 7)
    {
      if ((result & 0xFu) > 5)
      {
        if (v14 == 6)
        {
          *a6 = 0;
LABEL_32:
          v16 = v13 + 4;
          goto LABEL_34;
        }

        v18 = 1;
      }

      else
      {
        if (v14 == 4)
        {
          *a6 = 1;
          v16 = v13 + 3;
LABEL_34:
          *a5 = v16;
          goto LABEL_35;
        }

        v18 = -1;
      }

      *a6 = v18;
      goto LABEL_32;
    }

    if ((result & 0xFu) > 9)
    {
      if (v14 != 10)
      {
        *a6 = -1;
        v16 = v13 + 6;
        goto LABEL_34;
      }

      v17 = 1;
    }

    else
    {
      if (v14 != 8)
      {
        *a6 = 0;
        goto LABEL_29;
      }

      v17 = -1;
    }

    *a6 = v17;
LABEL_29:
    v16 = v13 + 5;
    goto LABEL_34;
  }

  if (result > 197)
  {
    v12 = 0;
    v11 = result - 112;
  }

  else
  {
    result = fxd_S32ShMultRndS32S32(result + 2, 1431655765, 31);
    v11 = (result >> 1) + 19;
    v12 = -3 * (result >> 1) + v10 + 1;
  }

  *a5 = v11;
  *a6 = v12;
LABEL_35:
  *a7 = *a5;
  return result;
}

uint64_t smc155mrf22_DecodeLag_11_22(uint64_t result, char a2, unsigned int a3, int *a4, _DWORD *a5)
{
  if (a2)
  {
    if (a3 >= 0x17)
    {
      v6 = 6;
    }

    else
    {
      v6 = 4;
    }

    if (a3 <= 0x1D)
    {
      v7 = v6;
    }

    else
    {
      v7 = 4;
    }

    if (a3 >= 0xF)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    if (a3 >= 0xC)
    {
      v9 = v8;
    }

    else
    {
      v9 = 4;
    }

    if (a3 >= 9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    v5 = result + (-1 << v10) + *a5 + 1;
  }

  else if (a3 > 5)
  {
    if (a3 > 0xB)
    {
      if (a3 >= 0x1E)
      {
        v5 = *a4;
        goto LABEL_21;
      }

      v5 = result + 54;
    }

    else
    {
      v5 = result + 40;
    }
  }

  else
  {
    v5 = result + 30;
  }

  *a4 = v5;
LABEL_21:
  *a5 = v5;
  return result;
}

void *smc155mrf22_fxd_DecodWFSet1_5p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  result = FillZeroLH_S16(a1, a3);
  v11 = dword_26ED667F0[a5 & 0xF];
  if (a4)
  {
    v12 = 0x2000;
  }

  else
  {
    v12 = -8192;
  }

  *(a1 + v11) = v12;
  *a2 = v11;
  v13 = (dword_26ED668B0[a5 >> 4] + v11) % a3;
  if ((a4 & 2) != 0)
  {
    v14 = 0x2000;
  }

  else
  {
    v14 = -8192;
  }

  *(a1 + v13) = v14;
  a2[1] = v13;
  v15 = (dword_26ED668B0[(a5 >> 8) & 0xF] + v13) % a3;
  if ((a4 & 4) != 0)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = -8192;
  }

  *(a1 + v15) = v16;
  a2[2] = v15;
  v17 = (dword_26ED668B0[a5 >> 12] + v15) % a3;
  if ((a4 & 8) != 0)
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = -8192;
  }

  *(a1 + v17) = v18;
  a2[3] = v17;
  v19 = (dword_26ED668B0[HIWORD(a5) & 0xF] + v17) % a3;
  if ((a4 & 0x10) != 0)
  {
    v20 = 0x2000;
  }

  else
  {
    v20 = -8192;
  }

  *(a1 + v19) = v20;
  a2[4] = v19;
  return result;
}

void *smc155mrf22_fxd_DecodWFSet1_4p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  result = FillZeroLH_S16(a1, a3);
  v11 = dword_26ED66830[a5 & 0x1F];
  if (a4)
  {
    v12 = 0x2000;
  }

  else
  {
    v12 = -8192;
  }

  *(a1 + v11) = v12;
  *a2 = v11;
  v13 = (dword_26ED668B0[(a5 >> 5) & 0xF] + v11) % a3;
  if ((a4 & 2) != 0)
  {
    v14 = 0x2000;
  }

  else
  {
    v14 = -8192;
  }

  *(a1 + v13) = v14;
  a2[1] = v13;
  v15 = (dword_26ED668B0[(a5 >> 9) & 0xF] + v13) % a3;
  if ((a4 & 4) != 0)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = -8192;
  }

  *(a1 + v15) = v16;
  a2[2] = v15;
  v17 = (dword_26ED668B0[(a5 >> 13) & 0xF] + v15) % a3;
  if ((a4 & 8) != 0)
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = -8192;
  }

  *(a1 + v17) = v18;
  a2[3] = v17;
  return result;
}

uint64_t smcsch1spi_GenDecOpen(_WORD *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = 2617270297;
  v29 = 0;
  v27 = 0;
  result = 2617270278;
  if (a3 && a5)
  {
    __dst = 0;
    v30 = 0;
    v28 = 0;
    inited = InitRsrcFunction(a1, a2, &v27);
    if (inited < 0)
    {
      return inited & 0xFDFFF | 0x9C002000;
    }

    v12 = heap_Calloc(*(v27 + 8), 1, 144);
    if (!v12)
    {
      return 2617270282;
    }

    v13 = v12;
    *a5 = 0;
    *(a5 + 8) = 0;
    *(v12 + 136) = v27;
    if (a4 < 8)
    {
      goto LABEL_6;
    }

    cstdlib_memcpy(&__dst + 2, a3, 2uLL);
    if (HIWORD(__dst) != 11000)
    {
      goto LABEL_15;
    }

    cstdlib_memcpy(&__dst, (a3 + 2), 2uLL);
    v13[10] = 100 * __dst;
    cstdlib_memcpy(&v30, (a3 + 4), 2uLL);
    Int = paramc_ParamGetInt(*(v27 + 40), "decoderoverheadframes", &v29);
    v15 = v29;
    if (!v29)
    {
      v15 = 2;
    }

    if (Int < 0)
    {
      v15 = 2;
    }

    *(v13 + 40) = v15;
    cstdlib_memcpy(&v28, (a3 + 6), 2uLL);
    if (v28)
    {
      goto LABEL_15;
    }

    if (a4 - 8 < 0x18)
    {
      goto LABEL_6;
    }

    cstdlib_memcpy(v13 + 25, (a3 + 8), 4uLL);
    if (v13[25])
    {
      v19 = *(*(v13 + 17) + 32);
      v20 = "incompatible coded speech base format version (%d > (expected) %d)";
      v26 = v13[25];
LABEL_20:
      log_OutText(v19, "GSMCSCH1", 0, 0, v20, v16, v17, v18, v26);
      goto LABEL_15;
    }

    cstdlib_memcpy(v13 + 13, (a3 + 12), 4uLL);
    cstdlib_memcpy(v13 + 12, (a3 + 16), 4uLL);
    cstdlib_memcpy(v13 + 11, (a3 + 20), 4uLL);
    v21 = v13[11];
    if (v21 <= 15999)
    {
      if (v21 == 8000)
      {
        goto LABEL_28;
      }

      v22 = 12000;
    }

    else
    {
      if (v21 == 16000 || v21 == 48000)
      {
        goto LABEL_28;
      }

      v22 = 24000;
    }

    if (v21 != v22)
    {
      goto LABEL_15;
    }

LABEL_28:
    cstdlib_memcpy(v13 + 19, (a3 + 24), 4uLL);
    cstdlib_memcpy(v13 + 18, (a3 + 28), 4uLL);
    if ((a4 & 0xFFFFFFFC) != 0x20)
    {
      cstdlib_memcpy(v13 + 24, (a3 + 32), 4uLL);
      v23 = v13[24];
      if (!v23)
      {
        goto LABEL_15;
      }

      if (8 * v23 + 44 == a4)
      {
        *(v13 + 11) = a3 + 36;
        v24 = v13[12];
        if (v24 == v13[11])
        {
          v25 = 20 * (v24 / 0x3E8);
          v13[14] = v25;
          v13[15] = v25;
          result = smcsch1spi_GenDecInitializeLowLevelDecoder(v13);
          v6 = result;
          if (!result)
          {
            *a5 = v13;
            *(a5 + 8) = 448;
            return result;
          }

          goto LABEL_15;
        }

        v19 = *(*(v13 + 17) + 32);
        v20 = "incompatible coded speech base: the speech base was encoded using internal resampling, but it's being decoded without it";
        goto LABEL_20;
      }
    }

LABEL_6:
    v6 = 2617270281;
LABEL_15:
    smcsch1spi_GenDecDestroyLowLevelDecoder(v13);
    heap_Free(*(v27 + 8), v13);
    return v6;
  }

  return result;
}

uint64_t smcsch1spi_GenDecInitializeLowLevelDecoder(uint64_t a1)
{
  v2 = 2617270282;
  smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
  v3 = *(*(a1 + 136) + 8);
  size = opus_decoder_get_size(1);
  v5 = heap_Alloc(v3, size);
  *a1 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (opus_decoder_init(v5, *(a1 + 44), 1u))
  {
    v2 = 2617270272;
LABEL_4:
    smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
    return v2;
  }

  *(a1 + 64) = 5760;
  v7 = heap_Alloc(*(*(a1 + 136) + 8), 11520);
  *(a1 + 8) = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  *(a1 + 32) = v7;
  *(a1 + 68) = 0;
  v8 = heap_Alloc(*(*(a1 + 136) + 8), 2 * *(a1 + 60));
  result = 0;
  *(a1 + 24) = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t *smcsch1spi_GenDecDestroyLowLevelDecoder(uint64_t *result)
{
  v1 = result;
  if (*result)
  {
    result = heap_Free(*(result[17] + 8), *result);
    *v1 = 0;
  }

  v2 = v1[2];
  if (v2)
  {
    result = heap_Free(*(v1[17] + 8), v2);
    v1[2] = 0;
  }

  v3 = v1[1];
  if (v3)
  {
    result = heap_Free(*(v1[17] + 8), v3);
    v1[1] = 0;
  }

  v4 = v1[3];
  if (v4)
  {
    result = heap_Free(*(v1[17] + 8), v4);
    v1[3] = 0;
  }

  return result;
}

uint64_t smcsch1spi_GenDecGetInfo(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = 2617270272;
  if (!a1)
  {
    return 2617270280;
  }

  v14 = *a3;
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(v15 + 8 * v16);
  if (*a3 > v17)
  {
    *a3 = v17;
    v16 = *(a1 + 96);
    v14 = v17;
  }

  v37[0] = v14;
  v37[1] = 0;
  v18 = ssft_bsearch(v37, v15, v16, 8, smcsch1spi_CompareChunkIndexCells);
  *(a1 + 104) = v18;
  if (v18)
  {
    v25 = *v18;
    if (*a3 >= *v18 && (v26 = v18[2], *a3 < v26) && v18[1] <= v18[3])
    {
      v28 = *a3 - *v18 + *(a1 + 76);
      v29 = *a4 + v28 - 1;
      if (v29 + v25 >= v26)
      {
        v30 = v26 - v25;
        v29 = v30 - 1;
        *a4 = v30 - v28;
      }

      v31 = *(a1 + 60);
      *(a1 + 112) = v28 / v31;
      *(a1 + 116) = v29 / v31;
      v32 = *(a1 + 80);
      v33 = v28 / v31 - v32;
      if (v28 / v31 <= v32)
      {
        *(a1 + 120) = 0;
      }

      else
      {
        *(a1 + 120) = v33;
        if (v28 / v31 != v32)
        {
          v34 = *(a1 + 76);
          do
          {
            if (v28 >= v34 + v33 * v31)
            {
              break;
            }

            *(a1 + 120) = --v33;
          }

          while (v33);
        }
      }

      v35 = v18[1];
      *a6 = v35;
      *a7 = v18[3] - v35;
      *(a1 + 128) = *a4;
      *(a1 + 132) = v28;
      *(a1 + 124) = 0;
      *(a1 + 82) = 0;
      if (*a1)
      {
        if (opus_decoder_ctl(*a1, 4028, v19, v20, v21, v22, v23, v24, v36))
        {
          return 2617270272;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "inconsistent chunk index (sample and Byte offsets are not monotonically increasing)", v22, v23, v24, v36);
    }
  }

  else
  {
    log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "requested start of speech segment (sample %d) missing from speech base", v22, v23, v24, *a3);
    return 2617270281;
  }

  return v13;
}

uint64_t smcsch1spi_CompareChunkIndexCells(unsigned int *a1, unsigned int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (v4 >= *a2)
    {
      return v4 >= a2[2];
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t smcsch1spi_GenDecClose(uint64_t *a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  v6 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v6 & 0x80000000) == 0)
  {
    if (a1)
    {
      smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
      heap_Free(*(a1[17] + 8), a1);
    }

    else
    {
      return 2617270280;
    }
  }

  return v6;
}

uint64_t smcsch1spi_GenDecProcess(uint64_t a1, int a2, char *a3, _DWORD *a4, char *a5, unsigned int *a6)
{
  __dst = 0;
  v11 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v11 & 0x80000000) == 0)
  {
    if (a1)
    {
      v12 = *(a1 + 128);
      if (*a6 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = *a6;
      }

      v44 = a4;
      v45 = a6;
      v42 = a5;
      v43 = a3;
      if (v13)
      {
        v14 = *(a1 + 82);
        if (v13 <= v14)
        {
          cstdlib_memcpy(a5, *(a1 + 24), 2 * v13);
          cstdlib_memmove(*(a1 + 24), (*(a1 + 24) + 2 * v13), 2 * (*(a1 + 82) - v13));
          v46 = &a5[2 * v13];
          *(a1 + 82) -= v13;
          *(a1 + 128) -= v13;
LABEL_41:
          *v44 = a3 - v43;
          *v45 = (v46 - v42) >> 1;
          return v11;
        }

        v15 = *a4;
        if (*a4 > 1u)
        {
          v16 = *(a1 + 124);
          v46 = a5;
          v17 = v13;
          while (1)
          {
            v18 = v17;
            v19 = *(a1 + 120);
            v20 = v16 >= v19 && v16 < *(a1 + 112);
            cstdlib_memcpy(&__dst, a3, 1uLL);
            v21 = __dst;
            cstdlib_memcpy(&__dst, a3 + 1, 1uLL);
            v25 = v21 | (__dst << 8);
            if (!v25)
            {
              break;
            }

            if (v25 >= 0x2D01)
            {
              v39 = *(*(a1 + 136) + 32);
              v40 = "inconsistent packet payload size declared in frame header (%d Bytes > (expected) %d Bytes)";
              v41 = v21 | (__dst << 8);
              goto LABEL_45;
            }

            v26 = v15 - 2;
            v15 = v26 - v25;
            if (v26 < v25)
            {
              log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "missing required packet payload Bytes for decoding one frame (%d Bytes < (expected) %d Bytes)", v22, v23, v24, v26);
              return 2617270281;
            }

            v27 = a3 + 2;
            v28 = *(a1 + 60);
            if (v16 >= v19)
            {
              v29 = smcsch1spi_GenDecProcessOneFrameWithLowLevelDecoder(a1, v27, v25);
              v11 = v29;
              v17 = v18;
              if (v20)
              {
                if ((v29 & 0x80000000) != 0)
                {
                  return v11;
                }

                v11 = 0;
                *(a1 + 132) -= v28;
              }

              else
              {
                if ((v29 & 0x80000000) != 0)
                {
                  return v11;
                }

                v30 = *(a1 + 132);
                if (v30)
                {
                  v31 = v28 - v30;
                  v32 = (*(a1 + 32) + 2 * v30);
                  *(a1 + 132) = 0;
                  v33 = *(a1 + 128);
                  if (v33 >= v31)
                  {
                    LOWORD(v33) = v31;
                  }
                }

                else
                {
                  if (*(a1 + 82))
                  {
                    cstdlib_memcpy(v46, *(a1 + 24), 2 * *(a1 + 82));
                    v34 = *(a1 + 82);
                    v46 += 2 * v34;
                    v33 = *(a1 + 128) - v34;
                    *(a1 + 128) = v33;
                    LODWORD(v17) = v18 - v34;
                    *(a1 + 82) = 0;
                  }

                  else
                  {
                    v33 = *(a1 + 128);
                  }

                  v32 = *(a1 + 32);
                  if (v33 > *(a1 + 60))
                  {
                    LOWORD(v33) = v28;
                  }
                }

                v35 = v33;
                v36 = v33 - v17;
                if (v33 <= v17)
                {
                  cstdlib_memcpy(v46, v32, 2 * v33);
                  v11 = 0;
                  *(a1 + 128) -= v35;
                  v46 += 2 * v35;
                  v17 = v17 - v35;
                }

                else
                {
                  cstdlib_memcpy(*(a1 + 24), &v32[2 * v17], 2 * (v33 - v17));
                  *(a1 + 82) = v36;
                  cstdlib_memcpy(v46, v32, 2 * v17);
                  v11 = 0;
                  *(a1 + 128) -= v17;
                  v46 += 2 * v17;
                  v17 = 0;
                }
              }
            }

            else
            {
              *(a1 + 132) -= v28;
              v17 = v18;
            }

            a3 = &v27[v25];
            v16 = *(a1 + 124) + 1;
            *(a1 + 124) = v16;
            if (!v17 || v15 <= 1)
            {
              goto LABEL_41;
            }
          }

          v39 = *(*(a1 + 136) + 32);
          v40 = "null packet payload size declared in frame header";
LABEL_45:
          log_OutText(v39, "GSMCSCH1", 0, 0, v40, v22, v23, v24, v41);
          return 2617270272;
        }

        if (*(a1 + 82))
        {
          cstdlib_memcpy(a5, *(a1 + 24), 2 * v14);
          v37 = *(a1 + 82);
          v46 = &a5[2 * v37];
          *(a1 + 128) -= v37;
          *(a1 + 82) = 0;
          goto LABEL_41;
        }
      }

      v46 = a5;
      goto LABEL_41;
    }

    return 2617270280;
  }

  return v11;
}

uint64_t smcsch1spi_GenDecProcessOneFrameWithLowLevelDecoder(uint64_t a1, char *a2, int a3)
{
  v4 = opus_decode(*a1, a2, a3, *(a1 + 8), *(a1 + 64), 0);
  if ((v4 & 0x80000000) != 0)
  {
    v8 = 2617270272;
    v11 = *(*(a1 + 136) + 32);
    v12 = opus_strerror(v4);
    log_OutText(v11, "GSMCSCH1", 0, 0, "error during decoding: %s", v13, v14, v15, v12);
  }

  else
  {
    if (v4 >= 0x1681)
    {
      v8 = 2617270272;
      v9 = *(*(a1 + 136) + 32);
      v10 = "inconsistent number of decoded samples (%d samples > (expected) %d samples)";
LABEL_8:
      log_OutText(v9, "GSMCSCH1", 0, 0, v10, v5, v6, v7, v4);
      return v8;
    }

    if (v4 != *(a1 + 56))
    {
      v8 = 2617270272;
      v9 = *(*(a1 + 136) + 32);
      v10 = "inconsistent number of decoded samples (%d samples != (expected) %d samples)";
      goto LABEL_8;
    }

    return 0;
  }

  return v8;
}

uint64_t gsmc_sch1_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2617270273;
  }

  result = 0;
  *a2 = &dec_I_1;
  return result;
}

uint64_t opus_decoder_get_size(int a1)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v5 = 0;
  if (silk_Get_Decoder_Size(&v5))
  {
    return 0;
  }

  v5 = (v5 + 7) & 0xFFFFFFF8;
  return celt_decoder_get_size(a1) + v5 + 80;
}

uint64_t opus_decoder_init(_DWORD *a1, int a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 <= 15999)
  {
    if (a2 != 8000)
    {
      v7 = 12000;
LABEL_7:
      if (a2 != v7)
      {
        return result;
      }
    }
  }

  else if (a2 != 16000 && a2 != 48000)
  {
    v7 = 24000;
    goto LABEL_7;
  }

  if (a3 - 3 >= 0xFFFFFFFE)
  {
    v17 = 0;
    size = opus_decoder_get_size(a3);
    bzero(a1, size);
    if (silk_Get_Decoder_Size(&v17))
    {
      return 4294967293;
    }

    v9 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v17 + 7) & 0xFFFFFFF8;
    v10 = v9 + 80;
    *a1 = v9 + 80;
    a1[1] = 80;
    a1[11] = a3;
    a1[2] = a3;
    a1[3] = a2;
    a1[6] = a2;
    a1[4] = a3;
    if (silk_InitDecoder((a1 + 20)) || celt_decoder_init((a1 + v10), a2, a3))
    {
      return 4294967293;
    }

    else
    {
      opus_custom_decoder_ctl((a1 + v10), 10016, v11, v12, v13, v14, v15, v16, 0);
      result = 0;
      a1[14] = 0;
      a1[15] = a2 / 0x190u;
    }
  }

  return result;
}

uint64_t opus_decode_native(int *a1, char *a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, _DWORD *a8, int a9)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a6 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a7;
  if (!a2 || !a3 || a6)
  {
    if (a5 % (a1[3] / 400))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!a2 || !a3)
  {
    LODWORD(v25) = 0;
    while (1)
    {
      v27 = opus_decode_frame(a1, 0, 0, (a4 + 2 * a1[2] * v25), (a5 - v25), 0, a7, a8);
      if ((v27 & 0x80000000) != 0)
      {
        return v27;
      }

      v25 = (v27 + v25);
      if (v25 >= a5)
      {
        goto LABEL_27;
      }
    }
  }

  if (a3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = 0;
  v38 = 0;
  v17 = *a2;
  v18 = v17;
  if ((~v17 & 0x60) != 0)
  {
    v19 = 1000;
  }

  else
  {
    v19 = 1001;
  }

  if ((v17 & 0x80u) == 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1002;
  }

  v34 = v19;
  v35 = v20;
  bandwidth = opus_packet_get_bandwidth(a2);
  samples_per_frame = opus_packet_get_samples_per_frame(a2, a1[3]);
  nb_channels = opus_packet_get_nb_channels(a2);
  v22 = opus_packet_parse_impl(a2, a3, v10, &v38, 0, v40, &v39, a8);
  v25 = v22;
  if ((v22 & 0x80000000) == 0)
  {
    v26 = &a2[v39];
    if (a6)
    {
      if (a5 < samples_per_frame || v18 < 0 || a1[13] == 1002)
      {
        return opus_decode_native(a1, 0, 0, a4, a5, 0, 0, 0, a9);
      }

      else
      {
        if (a5 != samples_per_frame)
        {
          v32 = a1[17];
          v33 = opus_decode_native(a1, 0, 0, a4, (a5 - samples_per_frame), 0, 0, 0, a9);
          if ((v33 & 0x80000000) != 0)
          {
            v25 = v33;
            a1[17] = v32;
            return v25;
          }
        }

        a1[15] = samples_per_frame;
        a1[12] = bandwidth;
        a1[13] = v34;
        a1[11] = nb_channels;
        v27 = opus_decode_frame(a1, v26, v40[0], (a4 + 2 * a1[2] * (a5 - samples_per_frame)), samples_per_frame, 1, v23, v24);
        if ((v27 & 0x80000000) == 0)
        {
          a1[17] = a5;
          return a5;
        }
      }
    }

    else
    {
      if (v22 * samples_per_frame > a5)
      {
        return 4294967294;
      }

      a1[15] = samples_per_frame;
      a1[12] = bandwidth;
      a1[13] = v35;
      a1[11] = nb_channels;
      if (!v22)
      {
LABEL_27:
        a1[17] = v25;
        return v25;
      }

      v29 = v22;
      v30 = v40;
      LODWORD(v25) = 0;
      while (1)
      {
        v27 = opus_decode_frame(a1, v26, *v30, (a4 + 2 * a1[2] * v25), (a5 - v25), 0, v23, v24);
        if ((v27 & 0x80000000) != 0)
        {
          break;
        }

        v31 = *v30++;
        v26 += v31;
        v25 = (v27 + v25);
        if (!--v29)
        {
          goto LABEL_27;
        }
      }
    }

    return v27;
  }

  return v25;
}

uint64_t opus_decode_frame(int *a1, unsigned __int8 *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v182 = *MEMORY[0x277D85DE8];
  v175 = 0;
  v8 = a1[3];
  v9 = v8 / 50;
  if ((v8 / 50) >> 3 > a5)
  {
    return 4294967294;
  }

  v11 = a6;
  v12 = a4;
  v13 = a3;
  v171 = ((v8 / 50) >> 3);
  v15 = a1[1];
  v172 = *a1;
  v16 = v9 >> 1;
  v17 = v9 >> 2;
  v180 = 0;
  v178 = 0u;
  v179 = 0u;
  v177 = 0u;
  v176 = 0;
  v18 = 3 * (v8 / 25);
  if (v18 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v18;
  }

  if (a3 > 1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v173 = v9 >> 2;
    v169 = a6;
    v20 = a1[15];
    v21 = a1[13];
    ec_dec_init(&v177, a2, a3);
    v23 = a1[14];
    if (v23 < 1)
    {
      v25 = 0;
      v164 = 0;
      v165 = 0;
      v166 = 1;
      v24 = a2;
    }

    else
    {
      if (v21 != 1002 || v23 == 1002)
      {
        v24 = a2;
        if (v21 != 1002)
        {
          v11 = v169;
          if (v23 == 1002)
          {
            v165 = 0;
            v164 = a1[2] * v173;
            v25 = 1;
          }

          else
          {
            v25 = 0;
            v164 = 0;
            v165 = 0;
          }

          v166 = 1;
LABEL_46:
          v61 = v20 <= v10;
          LODWORD(v10) = v20;
          v17 = v173;
          if (!v61)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_54;
        }

        v25 = 0;
        v164 = 0;
        v165 = 0;
      }

      else if (a1[16])
      {
        v24 = a2;
        v25 = 0;
        v164 = 0;
        v165 = 0;
        v21 = 1002;
      }

      else
      {
        v31 = 2 * a1[2] * v173;
        v32 = &v161[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
        bzero(v32, v31);
        if (v173 >= v20)
        {
          v33 = v20;
        }

        else
        {
          v33 = v173;
        }

        v165 = v32;
        opus_decode_frame(a1, 0, 0, v32, v33, 0);
        v24 = a2;
        v164 = 0;
        v21 = 1002;
        v25 = 1;
      }

      v166 = 1;
    }

    v11 = v169;
    goto LABEL_46;
  }

  v19 = a1[15];
  if (v10 >= v19)
  {
    v10 = v19;
  }

  else
  {
    v10 = v10;
  }

LABEL_16:
  v21 = a1[14];
  if (!v21)
  {
    v30 = a1[2] * v10;
    if (v30 >= 1)
    {
      bzero(a4, (2 * v30));
    }

    return v10;
  }

  if (v10 <= v9)
  {
    if (v10 >= v9)
    {
      v165 = 0;
      v24 = 0;
      v166 = 0;
      v164 = 0;
      v25 = 0;
    }

    else
    {
      if (v10 > v16)
      {
        v173 = v9 >> 2;
        v25 = 0;
        v164 = 0;
        v166 = 0;
        v24 = 0;
        v165 = 0;
        v20 = v9 >> 1;
        goto LABEL_46;
      }

      if (v21 == 1000)
      {
        v162 = 0;
        v164 = 0;
        v166 = 0;
        v170 = 0;
        v165 = 0;
LABEL_58:
        if (v16 <= v10)
        {
          v39 = v10;
        }

        else
        {
          v39 = v9 >> 1;
        }

        v40 = 2 * a1[2] * v39;
        v37 = &v161[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
        bzero(v37, v40);
        if (a1[14] == 1002)
        {
          silk_InitDecoder(a1 + v15);
        }

        v169 = v11;
        v41 = 1000 * v10 / a1[3];
        if (v41 <= 10)
        {
          v41 = 10;
        }

        a1[8] = v41;
        v42 = v170;
        if (!v166)
        {
          goto LABEL_73;
        }

        a1[5] = a1[11];
        if (v21 != 1000)
        {
          goto LABEL_71;
        }

        v43 = a1[12];
        switch(v43)
        {
          case 1103:
            goto LABEL_71;
          case 1102:
            v44 = 12000;
            break;
          case 1101:
            v44 = 8000;
            break;
          default:
LABEL_71:
            v44 = 16000;
            break;
        }

        a1[7] = v44;
LABEL_73:
        v173 = v17;
        v167 = v21;
        v168 = v13;
        v45 = 0;
        if (v42)
        {
          v46 = 2 * v169;
        }

        else
        {
          v46 = 1;
        }

        v47 = v37;
        do
        {
          if (silk_Decode((a1 + v15), a1 + 4, v46, v45 == 0, &v177, v47, &v176))
          {
            if (!v46)
            {
              return 4294967293;
            }

            v176 = v10;
            v48 = a1[2] * v10;
            if (v48 >= 1)
            {
              bzero(v47, (2 * v48));
            }

            v49 = v10;
          }

          else
          {
            v49 = v176;
            v48 = a1[2] * v176;
          }

          v47 += 2 * v48;
          v45 += v49;
        }

        while (v45 < v10);
        v50 = v166;
        if (v169)
        {
          v50 = 0;
        }

        if (v50 != 1)
        {
          *&v161[4] = v169 == 0;
          *&v161[8] = 0;
          v36 = 0;
          v163 = 0;
          v35 = 17;
          v166 = 1;
LABEL_108:
          v38 = v172;
          v24 = v170;
          goto LABEL_109;
        }

        v51 = __clz(v179);
        if (a1[13] == 1001)
        {
          v52 = 20;
        }

        else
        {
          v52 = 0;
        }

        v53 = DWORD2(v178) + v51 + v52 - 15;
        v54 = v168;
        v24 = v170;
        if (v53 > 8 * v168)
        {
          v36 = 0;
          v163 = 0;
          v35 = 17;
          v166 = 1;
          *&v161[4] = 1;
          goto LABEL_56;
        }

        if (v167 == 1001)
        {
          v36 = ec_dec_bit_logp(&v177, 12);
          if (!v36)
          {
            *&v161[8] = 0;
            v163 = 0;
            v35 = 17;
            v167 = 1001;
LABEL_107:
            v166 = 1;
            *&v161[4] = 1;
            goto LABEL_108;
          }

          v55 = ec_dec_bit_logp(&v177, 1);
          v56 = ec_dec_uint(&v177, 0x100u) + 2;
          v57 = DWORD2(v178);
          v58 = __clz(v179);
        }

        else
        {
          v36 = 1;
          v55 = ec_dec_bit_logp(&v177, 1);
          v57 = DWORD2(v178);
          v58 = __clz(v179);
          v56 = v54 - ((DWORD2(v178) + v58 - 25) >> 3);
        }

        v59 = 8 * (v54 - v56);
        v60 = v57 + v58 - 32;
        v61 = v59 < v60;
        if (v59 >= v60)
        {
          v62 = v56;
        }

        else
        {
          v36 = 0;
          v62 = 0;
        }

        if (v61)
        {
          v63 = 0;
        }

        else
        {
          v63 = v54 - v56;
        }

        v168 = v63;
        *&v161[8] = v62;
        DWORD2(v177) -= v62;
        v163 = v55;
        v35 = 17;
        goto LABEL_107;
      }

      v165 = 0;
      v24 = 0;
      v166 = 0;
      v164 = 0;
      if (v10 >= v17)
      {
        v34 = v9 >> 2;
      }

      else
      {
        v34 = v10;
      }

      if (v10 < v16)
      {
        LODWORD(v10) = v34;
      }

      v25 = 0;
    }

LABEL_54:
    v162 = v25;
    if (v21 == 1002)
    {
      v173 = v17;
      v166 = 0;
      v35 = 0;
      v36 = 0;
      v163 = 0;
      *&v161[4] = v11 == 0;
      *&v161[8] = 0;
      v37 = &v181;
      v167 = 1002;
      v168 = v13;
LABEL_56:
      v38 = v172;
LABEL_109:
      v170 = v24;
      v64 = a1[12] - 1101;
      v65 = v35;
      if (v64 > 3)
      {
        v66 = 21;
      }

      else
      {
        v66 = dword_26ED66940[v64];
      }

      opus_custom_decoder_ctl((a1 + v38), 10012, a3, a4, a5, a6, a7, a8, v66);
      opus_custom_decoder_ctl((a1 + v38), 10008, v67, v68, v69, v70, v71, v72, a1[11]);
      v73 = v164;
      if (v36)
      {
        v73 = 0;
      }

      v74 = 2 * v73;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v36)
      {
        v76 = 0;
      }

      else
      {
        v76 = v162;
      }

      v77 = &v161[-v75];
      bzero(&v161[-v75], v74);
      v169 = v36;
      v164 = v76;
      if ((v166 & v76) == 1)
      {
        if (v173 >= v10)
        {
          v84 = v10;
        }

        else
        {
          v84 = v173;
        }

        opus_decode_frame(a1, 0, 0, v77, v84, 0);
        v85 = 0;
        v86 = &v181;
        v165 = v77;
      }

      else if (v36)
      {
        v87 = v173;
        v88 = 2 * a1[2] * v173;
        v86 = &v161[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
        bzero(v86, v88);
        if (v163)
        {
          v89 = v172;
          opus_custom_decoder_ctl((a1 + v172), 10010, v78, v79, v80, v81, v82, v83, 0);
          v90 = v87;
          v38 = v89;
          celt_decode_with_ec((a1 + v89), &v170[v168], *&v161[8], v86, v90, 0);
          opus_custom_decoder_ctl((a1 + v89), 4031, v91, v92, v93, v94, v95, v96, &v175);
          v85 = 1;
        }

        else
        {
          v85 = 0;
          v38 = v172;
        }
      }

      else
      {
        v85 = 0;
        v86 = &v181;
      }

      opus_custom_decoder_ctl((a1 + v38), 10010, v78, v79, v80, v81, v82, v83, v65);
      if (v167 == 1000)
      {
        LOWORD(v174) = -1;
        v103 = a1[2] * v10;
        if (v103 >= 1)
        {
          bzero(v12, (2 * v103));
        }

        if (a1[14] == 1001 && (!v85 || !a1[16]))
        {
          opus_custom_decoder_ctl((a1 + v38), 10010, v97, v98, v99, v100, v101, v102, 0);
          celt_decode_with_ec((a1 + v38), &v174, 2u, v12, v171, 0);
        }

        v104 = 0;
      }

      else
      {
        if (v9 >= v10)
        {
          v105 = v10;
        }

        else
        {
          v105 = v9;
        }

        v106 = a1[14];
        v107 = v170;
        if (v167 != v106 && v106 >= 1 && !a1[16])
        {
          opus_custom_decoder_ctl((a1 + v38), 4028, v97, v98, v99, v100, v101, v102, *v161);
          v107 = v170;
        }

        if (*&v161[4])
        {
          v108 = v107;
        }

        else
        {
          v108 = 0;
        }

        v104 = celt_decode_with_ec((a1 + v38), v108, v168, v12, v105, &v177);
        if (!v166)
        {
          goto LABEL_153;
        }
      }

      v109 = (a1[2] * v10);
      if (v109 >= 1)
      {
        v110 = v12;
        do
        {
          v111 = *v37;
          v37 += 2;
          v112 = *v110 + v111;
          if (v112 >= 0x7FFF)
          {
            v112 = 0x7FFF;
          }

          if (v112 <= -32768)
          {
            LOWORD(v112) = 0x8000;
          }

          *v110++ = v112;
          --v109;
        }

        while (v109);
      }

LABEL_153:
      v174 = 0;
      opus_custom_decoder_ctl((a1 + v38), 10015, v97, v98, v99, v100, v101, v102, &v174);
      v119 = *(v174 + 64);
      v120 = v163;
      v121 = v171;
      if (v169 != 0 && !v163)
      {
        opus_custom_decoder_ctl((a1 + v38), 4028, v113, v114, v115, v116, v117, v118, *v161);
        opus_custom_decoder_ctl((a1 + v38), 10010, v122, v123, v124, v125, v126, v127, 0);
        celt_decode_with_ec((a1 + v38), &v170[v168], *&v161[8], v86, v173, 0);
        opus_custom_decoder_ctl((a1 + v38), 4031, v128, v129, v130, v131, v132, v133, &v175);
        smooth_fade(&v12[a1[2] * (v10 - v121)], &v86[2 * a1[2] * v121], &v12[a1[2] * (v10 - v121)], v121, a1[2], v119, a1[3]);
      }

      if (v85)
      {
        v134 = a1[2];
        if (v134 >= 1)
        {
          v135 = 0;
          v136 = v86;
          v137 = v12;
          do
          {
            if (v121 >= 1)
            {
              v138 = 0;
              v139 = v121;
              do
              {
                v137[v138] = *&v136[v138 * 2];
                v138 += v134;
                --v139;
              }

              while (v139);
            }

            ++v135;
            ++v137;
            v136 += 2;
          }

          while (v135 != v134);
        }

        smooth_fade(&v86[2 * v134 * v121], &v12[v134 * v121], &v12[v134 * v121], v121, v134, v119, a1[3]);
      }

      v140 = v169;
      if (v164)
      {
        v141 = a1[2];
        if (v10 >= v173)
        {
          v146 = v141 * v121;
          v147 = v165;
          if (v141 * v121 >= 1)
          {
            v148 = (v141 * v121);
            v149 = v165;
            v150 = v12;
            do
            {
              v151 = *v149++;
              *v150++ = v151;
              --v148;
            }

            while (v148);
          }

          v143 = &v147[2 * v146];
          v142 = a1[3];
          v144 = &v12[v146];
          v145 = v144;
        }

        else
        {
          v142 = a1[3];
          v143 = v165;
          v144 = v12;
          v145 = v12;
        }

        smooth_fade(v143, v144, v145, v121, v141, v119, v142);
      }

      v152 = a1[10];
      if (v152)
      {
        v153 = (21771 * v152 + 0x4000) >> 15;
        v154 = v153 >> 10;
        if (v154 <= 14)
        {
          if (v154 >= -15)
          {
            v156 = ((((((326528 * (v153 & 0x3FF)) >> 16) + 14819) * 32 * (v153 & 0x3FF) + 1494482944) >> 16) * 32 * (v153 & 0x3FF) + 1073676288) >> 16;
            v155 = v154 > -3 ? v156 << (v154 + 2) : v156 >> (-2 - v154);
          }

          else
          {
            v155 = 0;
          }
        }

        else
        {
          v155 = 2130706432;
        }

        v157 = (a1[2] * v10);
        if (v157 >= 1)
        {
          do
          {
            v158 = HIWORD(v155) * *v12 + ((v155 * *v12 + 0x8000) >> 16);
            if (v158 <= -32767)
            {
              v158 = -32767;
            }

            if (v158 >= 0x7FFF)
            {
              LOWORD(v158) = 0x7FFF;
            }

            *v12++ = v158;
            --v157;
          }

          while (v157);
        }
      }

      v159 = v175 ^ v179;
      if (v168 < 2)
      {
        v159 = 0;
      }

      a1[18] = v159;
      a1[14] = v167;
      a1[16] = v140 != 0 && !v120;
      if (v104 >= 0)
      {
        return v10;
      }

      else
      {
        return v104;
      }
    }

    v170 = v24;
    goto LABEL_58;
  }

  v26 = v10;
  while (1)
  {
    v27 = v26 >= v9 ? v9 : v26;
    v28 = opus_decode_frame(a1, 0, 0, v12, v27, 0);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    v12 += a1[2] * v28;
    v29 = __OFSUB__(v26, v28);
    v26 -= v28;
    if ((v26 < 0) ^ v29 | (v26 == 0))
    {
      return v10;
    }
  }

  return v28;
}