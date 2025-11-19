uint64_t APPLIB_DIAG_FTM_TX_RX_FREQ_CAL_SWEEP_PARSE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 2);
  v4 = *(a3 + 3);
  if (*(a3 + 2))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = a3 + 838;
  v9 = ((2 * v4 - 1) >> 1) + 1;
  v10 = (2 * v4 - 1) & 0xFFFFFFFE;
  v11 = a3 + 40 * *(a3 + 2) + v10 + 800;
  v12 = a1 + v10 + 2;
  v13 = (a3 + 854);
  v14 = v8;
  v15 = 6 * v4 + (2 * v4 + 2) * v3 + 22;
  do
  {
    if (v4 < 8 || ((v16 = 6 * v4 + (2 * v4 + 2) * v3 + 22 + 2 * v4 * v7, v17 = v12 + v16, v18 = a1 + v16, v8 < v17) ? (v19 = v18 >= v11) : (v19 = 1), !v19))
    {
      v24 = 0;
      v25 = 0;
LABEL_21:
      v26 = a1 + 1 + v24 + v15;
      do
      {
        *(v14 + 2 * v25) = *(v26 - 1);
        v26 += 2;
        ++v25;
      }

      while (v9 != v25);
      goto LABEL_7;
    }

    if (v4 >= 0x10)
    {
      v27 = (a1 + 16 + v15);
      v28 = v9 & 0xFFFFFFF0;
      v29 = v13;
      do
      {
        v30 = v27 - 16;
        v32 = vld2_s8(v30);
        v33 = vld2_s8(v27);
        v29[-1] = vorrq_s8(vshll_n_s8(v32.val[1], 8uLL), vmovl_u8(v32.val[0]));
        *v29 = vorrq_s8(vshll_n_s8(v33.val[1], 8uLL), vmovl_u8(v33.val[0]));
        v29 += 2;
        v27 += 32;
        v28 -= 16;
      }

      while (v28);
      if ((v9 & 0xFFFFFFF0) == v9)
      {
        goto LABEL_7;
      }

      v20 = v9 & 0xFFFFFFF0;
      v24 = 2 * v20;
      v25 = v20;
      if (((((2 * v4 - 1) >> 1) + 1) & 8) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = (v14 + 2 * v20);
    v22 = (a1 + 2 * v20 + v15);
    v23 = v20 - (v9 & 0xFFFFFFF8);
    do
    {
      v31 = vld2_s8(v22);
      v22 += 16;
      *v21++ = vorrq_s8(vshll_n_s8(v31.val[1], 8uLL), vmovl_u8(v31.val[0]));
      v23 += 8;
    }

    while (v23);
    v24 = 2 * (v9 & 0xFFFFFFF8);
    v25 = v9 & 0xFFFFFFF8;
    if (v25 != v9)
    {
      goto LABEL_21;
    }

LABEL_7:
    ++v7;
    v13 = (v13 + 40);
    v15 += 2 * v4;
    v14 += 40;
  }

  while (v7 != v3);
  return 0;
}

uint64_t APPLIB_DIAG_Get_TX_Power_Channel(_DWORD *a1, int a2, __int16 a3)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 589131;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 8];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 8] ^ HIBYTE(a3) ^ 0x68];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v23, 0x7FBuLL);
      __src = 589131;
      if ((v7 - 125) > 1)
      {
        v14 = 5;
      }

      else
      {
        v23[0] = v7 & 0x5F;
        v14 = 6;
        LOBYTE(v7) = 125;
      }

      v15 = ~v13;
      v22 = v7;
      v16 = v14 + 1;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v16) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v16) = v14 + 2;
      }

      *(&__src + v14) = v8;
      v17 = v16;
      v18 = v16 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v18) = v15 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v17) = v15;
      v19 = v18 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v19) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v12;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      *(a1 + v19) = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetPmicTherm(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 64843;
    *(a1 + 2) = 22839;
    if (a2 >= 0xC)
    {
      *a1 = 64843;
      *(a1 + 2) = 22839;
      *(a1 + 6) = 126;
      return 7;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_FTM_SET_REVERSE_LINK_POWER(char *a1, int a2, int a3, int a4)
{
  v58 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 140;
    *(a1 + 11) = a4;
    a1[10] = a3;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0x25];
    v11 = crc_16_l_table[a1[7] ^ 0x12 ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ a3];
    v15 = crc_16_l_table[(a4 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[12] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[14] ^ v17 ^ HIBYTE(v16))];
    v19 = v18 ^ ~(v17 >> 8);
    *(a1 + 15) = v18 ^ ~HIBYTE(crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 34)
    {
      bzero(v57, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v57[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      __src = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v57[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v57[v21 - 1] = v22;
      v24 = a1[2];
      v25 = v23;
      v26 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v57[v26 - 1] = v24 & 0x5F;
        LODWORD(v26) = v25 + 2;
        LOBYTE(v24) = 125;
      }

      v57[v25 - 1] = v24;
      v27 = a1[3];
      v28 = v26;
      v29 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v57[v29 - 1] = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v57[v28 - 1] = v27;
      v30 = a1[4];
      v31 = v29 + 1;
      if ((v30 - 125) <= 1)
      {
        v57[v31 - 1] = v30 & 0x5F;
        LODWORD(v31) = v29 + 2;
        LOBYTE(v30) = 125;
      }

      v57[v29 - 1] = v30;
      v57[v31 - 1] = 0;
      v32 = v31 + 2;
      if ((v9 - 125) <= 1)
      {
        v57[v32 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v32) = v31 + 3;
      }

      v57[v31] = v9;
      v33 = a1[7];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v57[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v57[v32 - 1] = v33;
      v35 = a1[8];
      v36 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v57[v36 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v36) = v34 + 2;
      }

      v57[v34 - 1] = v35;
      v37 = a1[9];
      v38 = v36;
      v39 = v36 + 1;
      if ((v37 - 125) <= 1)
      {
        v57[v39 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v39) = v36 + 2;
      }

      v40 = a4;
      v57[v38 - 1] = v37;
      v41 = v39;
      v42 = v39 + 1;
      if ((a3 - 125) <= 1)
      {
        v57[v42 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v43 = BYTE1(a4);
      v57[v41 - 1] = a3;
      v44 = v42 + 1;
      if (a4 - 125 <= 1)
      {
        v57[v44 - 1] = a4 & 0x5F;
        v40 = 125;
        LODWORD(v44) = v42 + 2;
      }

      v45 = BYTE2(a4);
      v57[v42 - 1] = v40;
      v46 = v44 + 1;
      if (BYTE1(a4) - 125 <= 1)
      {
        v57[v46 - 1] = BYTE1(a4) & 0x5F;
        v43 = 125;
        LODWORD(v46) = v44 + 2;
      }

      v57[v44 - 1] = v43;
      v47 = v46;
      v48 = v46 + 1;
      if (BYTE2(a4) - 125 <= 1)
      {
        v57[v48 - 1] = BYTE2(a4) & 0x5F;
        v45 = 125;
        LODWORD(v48) = v47 + 2;
      }

      v57[v47 - 1] = v45;
      v49 = ~(v18 ^ BYTE1(v17));
      v50 = a1[14];
      v51 = v48 + 1;
      if ((v50 - 125) <= 1)
      {
        v57[v51 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v51) = v48 + 2;
      }

      v52 = (v18 ^ ~(v17 >> 8)) >> 8;
      v57[v48 - 1] = v50;
      v53 = v51 + 1;
      if ((v49 - 125) <= 1)
      {
        v57[v53 - 1] = v49 & 0x5F;
        LODWORD(v53) = v51 + 2;
        LOBYTE(v49) = 125;
      }

      v57[v51 - 1] = v49;
      v54 = v53 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v57[v54 - 1] = BYTE1(v19) & 0x5F;
        v52 = 125;
        LODWORD(v54) = v53 + 2;
      }

      v57[v53 - 1] = v52;
      memcpy(a1, &__src, v54);
      result = (v54 + 1);
      a1[v54] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v55 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLDMCParserInit(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  return 1;
}

uint64_t ETLDMCParserGetToken(uint64_t *a1, unsigned __int8 a2, char *__dst, unsigned int a4)
{
  v5 = *(a1 + 2);
  v6 = *a1;
  v7 = *(*a1 + v5);
  v8 = *(a1 + 2);
  if (v7 == a2)
  {
LABEL_5:
    LODWORD(v10) = ++v8 - v5;
    if (v8 == v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = -1;
    v8 = *(a1 + 2);
    while (v7)
    {
      v7 = *(v6 + ++v8);
      --v9;
      if (v7 == a2)
      {
        goto LABEL_5;
      }
    }

    if (v9 == -1)
    {
      return 0;
    }

    LODWORD(v10) = -v9;
    if (!v9)
    {
      return 0;
    }
  }

  if (v10 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v10;
  }

  strlcpy(__dst, (v6 + v5), v10);
  *(a1 + 2) = v8;
  return 1;
}

uint64_t ETLDMCParserCountTokens(char **a1, int a2)
{
  v3 = strchr(*a1, a2);
  for (i = 1; v3; i = (i + 1))
  {
    v3 = strchr(v3 + 1, a2);
  }

  return i;
}

uint64_t ETLEVENTCreateSetMaskCommand(uint64_t a1, uint64_t a2, unsigned int a3)
{
  _ETLDebugPrint();
  if (a3 > 0x1000 || !ETLRequireFreeSpace())
  {
    return 0;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInject();

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLEVENTParseSetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  if (v4 <= 5)
  {
    v15 = *(a1 + 2);
    goto LABEL_7;
  }

  v8 = *a1;
  v9 = **a1;
  result = ETLExpectResponseCode();
  if (!result)
  {
    return result;
  }

  v11 = *(v8 + 1);
  *a2 = v11;
  if (!v11)
  {
    v12 = *(v8 + 4);
    *a4 = v12;
    v13 = (v12 + 7) >> 3;
    if (v12 <= 0x1000 && v13 <= v4 - 6)
    {
      memcpy(a3, (v8 + 6), v13);
      return 1;
    }

LABEL_7:
    _ETLDebugPrint();
    return 0;
  }

  return 0;
}

uint64_t ETLEVENTCreateGetMaskCommand()
{
  result = ETLRequireFreeSpace();
  if (result)
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedShort();
  }

  return result;
}

uint64_t ETLEVENTParseGetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  if (v4 <= 5)
  {
    v15 = *(a1 + 2);
    goto LABEL_7;
  }

  v8 = *a1;
  v9 = **a1;
  result = ETLExpectResponseCode();
  if (!result)
  {
    return result;
  }

  v11 = *(v8 + 1);
  *a2 = v11;
  if (!v11)
  {
    v12 = *(v8 + 4);
    *a4 = v12;
    v13 = (v12 + 7) >> 3;
    if (v12 <= 0x1000 && v13 <= v4 - 6)
    {
      memcpy(a3, (v8 + 6), v13);
      return 1;
    }

LABEL_7:
    _ETLDebugPrint();
    return 0;
  }

  return 0;
}

uint64_t ETLEVENTCreateEnableCommand()
{
  result = ETLRequireFreeSpace();
  if (result)
  {
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLEVENTSetMask(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v42 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v5;
  v41 = v5;
  v38 = v5;
  v39 = v5;
  v36 = v5;
  v37 = v5;
  v34 = v5;
  v35 = v5;
  v32 = v5;
  v33 = v5;
  v30 = v5;
  v31 = v5;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  v14 = v5;
  v15 = v5;
  v12 = v5;
  v13 = v5;
  __s2 = v5;
  v11 = v5;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if ((ETLFrameCreateUplink() & 1) == 0 || ETLEVENTCreateSetMaskCommand(v8, a2, a3) && ETLSendCommand() && ETLFindMatchingResponse())
  {
    _ETLDebugPrint();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t ETLEVENTGetMask()
{
  if ((ETLFrameCreateUplink() & 1) == 0 || ETLRequireFreeSpace() && (HDLCFrameInjectUnsignedChar(), HDLCFrameInjectUnsignedChar(), HDLCFrameInjectUnsignedShort()) && ETLSendCommand() && ETLFindMatchingResponse())
  {
    _ETLDebugPrint();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLEVENTEnable()
{
  _ETLDebugPrint();
  if ((ETLFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint();
LABEL_7:
    v0 = 0;
    goto LABEL_8;
  }

  if (!ETLRequireFreeSpace())
  {
    goto LABEL_7;
  }

  HDLCFrameInjectUnsignedChar();
  if (!HDLCFrameInjectUnsignedChar() || !ETLSendCommand())
  {
    goto LABEL_7;
  }

  v0 = ETLFindMatchingResponse();
LABEL_8:
  HDLCFrameFree();
  HDLCFrameFree();
  return v0;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}