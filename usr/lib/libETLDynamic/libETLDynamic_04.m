uint64_t APPLIB_DIAG_FTMNvItemRead(char *a1, int a2, unsigned int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 19)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 15) = 0;
    *a1 = 2891;
    *(a1 + 2) = 0x900000025C0024;
    *(a1 + 5) = a3;
    v4 = crc_16_l_table[a1[7] ^ 0x5FLL];
    v5 = crc_16_l_table[a1[8] ^ 0xB7 ^ v4];
    v6 = crc_16_l_table[(a1[9] ^ v5 ^ HIBYTE(v4))];
    v7 = crc_16_l_table[(v6 ^ HIBYTE(v5) ^ a3)];
    v8 = a3 >> 8;
    v9 = crc_16_l_table[(a3 >> 8) ^ crc_16_l_table[(v6 ^ HIBYTE(v5) ^ a3)] ^ (v6 >> 8)];
    v10 = v9 ^ ~(v7 >> 8);
    *(a1 + 6) = v9 ^ ~(v7 >> 8);
    if (a2 >= 0x1C)
    {
      v12 = a3;
      v13 = v9 ^ (v7 >> 8);
      bzero(v27, 0x7F5uLL);
      __src = 0x25C00240B4BLL;
      v25 = 144;
      if ((v12 - 125) > 1)
      {
        v14 = 11;
      }

      else
      {
        v27[0] = v12 & 0x5F;
        v14 = 12;
        LOBYTE(v12) = 125;
      }

      v15 = ~v13;
      v26 = v12;
      v16 = v14;
      v17 = v14 + 1;
      if (v8 - 125 <= 1)
      {
        *(&__src + v17) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v17) = v14 + 2;
      }

      v18 = BYTE1(v10);
      *(&__src + v16) = v8;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LODWORD(v20) = v19 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        *(&__src + v21) = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      v3 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t APPLIB_DIAG_FTMNvItemWrite(void *a1, int a2, __int16 a3, void *__src, int a5)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 - a5 >= 21)
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 13) = 0;
    *a1 = 2891;
    *(a1 + 2) = 0xE0000025D0024;
    *(a1 + 5) = a3;
    *(a1 + 6) = a5;
    memcpy(a1 + 14, __src, a5);
    v10 = 8 * (a5 + 14);
    if (8 * (a5 + 14))
    {
      LOWORD(v11) = -1;
      v12 = a1;
      do
      {
        v13 = *v12++;
        v11 = crc_16_l_table[(v13 ^ v11)] ^ ((v11 & 0xFF00) >> 8);
        v10 -= 8;
      }

      while (v10);
      v14 = ~v11;
      v15 = ~v11 >> 8;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(a1 + a5 + 14) = v14;
    *(a1 + a5 + 15) = v15;
    v16 = (a5 + 16);
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __srca[v22] = v19 & 0x5F;
            __srca[v21] = 125;
            if (!--v16)
            {
              goto LABEL_17;
            }
          }

          ++v17;
          __srca[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_17:
      memcpy(a1, __srca, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ModeChange(_WORD *a1, int a2, unsigned int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 10)
  {
    *a1 = 0;
    a1[4] = 0;
    *a1 = 41;
    v5 = a3;
    *(a1 + 1) = a3;
    v6 = a3 >> 8;
    *(a1 + 2) = BYTE1(a3);
    v7 = crc_16_l_table[a3 ^ 0x44];
    v8 = crc_16_l_table[crc_16_l_table[a3 ^ 0x44] ^ (a3 >> 8) ^ 0xB3];
    v9 = v8 ^ (v7 >> 8);
    v10 = v8 ^ ~(v7 >> 8);
    *(a1 + 3) = v10;
    v11 = BYTE1(v10);
    *(a1 + 4) = BYTE1(v10);
    bzero(v20, 0x7FEuLL);
    __src[0] = 41;
    if ((v5 - 125) > 1)
    {
      v12 = 2;
    }

    else
    {
      v20[0] = v5 & 0x5F;
      v12 = 3;
      LOBYTE(v5) = 125;
    }

    v13 = ~v9;
    __src[1] = v5;
    v14 = v12 + 1;
    if (v6 - 125 <= 1)
    {
      __src[v14] = v6 & 0x5F;
      LOBYTE(v6) = 125;
      LODWORD(v14) = v12 + 2;
    }

    __src[v12] = v6;
    v15 = v14;
    v16 = v14 + 1;
    if ((v13 - 125) <= 1)
    {
      __src[v16] = v13 & 0x5F;
      LODWORD(v16) = v15 + 2;
      LOBYTE(v13) = 125;
    }

    __src[v15] = v13;
    v17 = v16 + 1;
    if ((v11 - 125) <= 1)
    {
      __src[v17] = v11 & 0x5F;
      LOBYTE(v11) = 125;
      LODWORD(v17) = v16 + 2;
    }

    __src[v16] = v11;
    memcpy(a1, __src, v17);
    result = (v17 + 1);
    *(a1 + v17) = 126;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetStatus(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 5132;
    *(a1 + 2) = 58;
    if (a2 >= 6)
    {
      *a1 = 2117735436;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetDeviceID(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 65099;
    *(a1 + 2) = -18861;
    if (a2 >= 0xC)
    {
      *a1 = 65099;
      *(a1 + 2) = -18861;
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

uint64_t APPLIB_DIAG_DetectSim(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 130635;
    *(a1 + 2) = -20597;
    if (a2 >= 0xC)
    {
      *a1 = 130635;
      *(a1 + 2) = -20597;
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

uint64_t DetectAndStripSpecialCharacters(_BYTE *a1, int a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a3 <= 2048 && a3 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (a3 < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v6 = 0;
      do
      {
        v7 = v6;
        v8 = a1[v6];
        if (v8 == 125)
        {
          ++v6;
          LOBYTE(v8) = a1[v7 + 1] ^ 0x20;
        }

        __src[v3++] = v8;
        ++v6;
      }

      while (v6 < a3);
    }

    bzero(a1, a3);
    memcpy(a1, __src, v3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t APPLIB_DIAG_SendRawRequest(char *a1, int a2, const void *a3, int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  result = 0xFFFFFFFFLL;
  if (a3 && a4 + 7 <= a2)
  {
    bzero(a1, a4 + 7);
    memcpy(a1, a3, a4);
    v9 = 8 * a4;
    if (((8 * a4) & 0xFFF8) != 0)
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      *&a1[a4] = ~v10;
      result = 0xFFFFFFFFLL;
      if (a4 > 1022)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = &a1[a4];
      *v13 = 0;
      v13[1] = 0;
      result = 0xFFFFFFFFLL;
      if (a4 > 1022)
      {
        goto LABEL_20;
      }
    }

    v14 = (a4 + 2);
    if (2 * v14 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (a4 < -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = a1;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            v19 = v15;
            v20 = v15 + 1;
            if ((v18 - 125) > 1)
            {
              break;
            }

            v15 += 2;
            __src[v20] = v17 & 0x5F;
            __src[v19] = 125;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }

          ++v15;
          __src[v19] = v17;
          --v14;
        }

        while (v14);
      }

LABEL_19:
      memcpy(a1, __src, v15);
      result = (v15 + 1);
      a1[v15] = 126;
    }
  }

LABEL_20:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_SetOneRx(_DWORD *a1, int a2, __int16 a3)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 195915;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 0x78];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 0x78] ^ HIBYTE(a3) ^ 0x95];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v23, 0x7FBuLL);
      __src = 195915;
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

uint64_t APPLIB_DIAG_Get_RSSI_Channel(_DWORD *a1, int a2, __int16 a3)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 261451;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 0xA0];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 0xA0] ^ HIBYTE(a3) ^ 0x8C];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v23, 0x7FBuLL);
      __src = 261451;
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

uint64_t APPLIB_DIAG_Get_OneRxConfig(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 7)
  {
    bzero(a1, a2);
    *a1 = 326987;
    *(a1 + 2) = 15959;
    if (a2 >= 0xC)
    {
      *a1 = 326987;
      *(a1 + 2) = 15959;
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

uint64_t APPLIB_DIAG_Release_BB_RESET_DET_N(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 523595;
    *(a1 + 2) = 5183;
    if (a2 >= 0xC)
    {
      *a1 = 523595;
      *(a1 + 2) = 5183;
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

uint64_t APPLIB_DIAG_PowerDown_BaseBand(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 654667;
    *(a1 + 2) = -29137;
    if (a2 >= 0xC)
    {
      *a1 = 654667;
      *(a1 + 2) = -29137;
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

uint64_t APPLIB_DIAG_EDLOAD(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 982347;
    *(a1 + 2) = -15577;
    if (a2 >= 0xC)
    {
      *a1 = 982347;
      *(a1 + 2) = -15577;
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

uint64_t ETLNVCreateReadCommand()
{
  v8 = *MEMORY[0x29EDCA608];
  if (HDLCFrameGetFreeSpace() <= 0x84)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v0, v1, v2, v3, v4, v5, 133);
    result = 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();
    result = HDLCFrameInjectUnsignedShort();
    if (result)
    {
      HDLCFrameInject();
      result = HDLCFrameInjectUnsignedShort();
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLNVParseReadResponse(_DWORD *a1, int a2, _DWORD *a3, _OWORD *a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  *a6 = 0;
  if (v8 <= 0x84)
  {
    _ETLDebugPrint("ETLNVParseReadResponse", "Response size %u not enough, need %u\n", a3, a4, a5, a6, a7, a8, 133);
    return 0;
  }

  else
  {
    v9 = *a1;
    if (*(*a1 + 1) == a2)
    {
      if (a5 <= 0x7F)
      {
        _ETLDebugPrint("ETLNVParseReadResponse", "Provided buffer has capacity %u, need %u\n", a3, a4, a5, a6, a7, a8, a5);
        return 0;
      }

      else
      {
        v10 = *(v9 + 3);
        v11 = *(v9 + 19);
        v12 = *(v9 + 51);
        a4[2] = *(v9 + 35);
        a4[3] = v12;
        *a4 = v10;
        a4[1] = v11;
        v13 = *(v9 + 67);
        v14 = *(v9 + 83);
        v15 = *(v9 + 115);
        a4[6] = *(v9 + 99);
        a4[7] = v15;
        a4[4] = v13;
        a4[5] = v14;
        *a6 = 128;
        v16 = *(v9 + 131);
        if (v16)
        {
          if (v16 == 5)
          {
            *a3 = 5;
            return 1;
          }

          else
          {
            *a3 = v16;
            _ETLDebugPrint("ETLNVParseReadResponse", "Return code was %u\n", a3, a4, a5, a6, a7, a8, v16);
            return 0;
          }
        }

        else
        {
          *a3 = 0;
          return 1;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLNVParseReadResponse", "Returned item number %u mismatches expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 1));
      return 0;
    }
  }
}

uint64_t ETLNVCreateWriteCommand(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a4 > 0x80)
  {
    result = 0;
  }

  else
  {
    if (HDLCFrameGetFreeSpace() <= 0x87)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, v5, v6, v7, v8, v9, 136);
      result = 0;
      v13 = *MEMORY[0x29EDCA608];
      return result;
    }

    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedShort();
    result = HDLCFrameInject();
    if (result)
    {
      HDLCFrameInject();
      result = HDLCFrameInjectUnsignedShort();
      v11 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLNVParseWriteResponseWithStatus(unsigned int *a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2] <= 2)
  {
    v12 = a1[2];
    _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Response size %u not enough, need %u\n", a3, a4, a5, a6, a7, a8, 3);
    return 0;
  }

  else
  {
    v8 = *a1;
    if (*(*a1 + 1) != a2)
    {
      v9 = a3;
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Returned item number %u mismatches expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 1));
      a3 = v9;
    }

    v10 = *(v8 + 131);
    *a3 = v10;
    if (v10)
    {
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "NV write response indicates failure with status code %u\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t ETLNVParseWriteResponse(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2] <= 2)
  {
    v10 = a1[2];
    _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Response size %u not enough, need %u\n", a3, a4, a5, a6, a7, a8, 3);
    return 0;
  }

  else
  {
    v8 = *a1;
    if (*(*a1 + 1) != a2)
    {
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Returned item number %u mismatches expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 1));
    }

    if (*(v8 + 131))
    {
      _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "NV write response indicates failure with status code %u\n", a3, a4, a5, a6, a7, a8, *(v8 + 131));
      return 0;
    }

    else
    {
      return 1;
    }
  }
}

void *ETLNVRead(uint64_t (**a1)(void, void *, uint64_t, _OWORD *, uint64_t, uint64_t, void), int a2, _OWORD *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  Response = 0;
  v38 = *MEMORY[0x29EDCA608];
  if (a1 && a3 && a6)
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    memset(v32, 0, sizeof(v32));
    v33 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (HDLCFrameGetFreeSpace() > 0x84)
      {
        HDLCFrameInjectUnsignedChar();
        if (HDLCFrameInjectUnsignedShort())
        {
          memset(v37, 0, sizeof(v37));
          HDLCFrameInject();
          if (HDLCFrameInjectUnsignedShort())
          {
            Response = malloc((2 * DWORD2(v34) + 32));
            if (!Response)
            {
LABEL_21:
              HDLCFrameFree();
              HDLCFrameFree();
              goto LABEL_22;
            }

            v21 = HDLCFrameEncode();
            if (!v21)
            {
              goto LABEL_23;
            }

            v22 = v21;
            LODWORD(v37[0]) = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, Response, v21);
            }

            if (*a1)
            {
              v23 = (*a1)(a1, Response, v22, v37, 1, a7, 0);
              v31 = v37[0];
              free(Response);
              Response = 0;
              if (!v23 || v31 != v22)
              {
                goto LABEL_21;
              }

              LOBYTE(v37[0]) = 38;
              if (ETLFindMatchingResponse(a1, v32, v37, a7))
              {
                Response = ETLNVParseReadResponse(v32, a2, a6, a3, a4, a5, v24, v25);
                goto LABEL_21;
              }
            }

            else
            {
LABEL_23:
              free(Response);
            }
          }
        }

LABEL_20:
        Response = 0;
        goto LABEL_21;
      }

      v30 = 133;
      v26 = "ETLRequireFreeSpace";
      v27 = "Need %u bytes free space, but only have %u\n";
    }

    else
    {
      v26 = "ETLNVRead";
      v27 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v26, v27, v15, v16, v17, v18, v19, v20, v30);
    goto LABEL_20;
  }

LABEL_22:
  v28 = *MEMORY[0x29EDCA608];
  return Response;
}

uint64_t ETLNVWriteWithStatus(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, uint64_t a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    memset(v38, 0, sizeof(v38));
    v39 = 0;
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    if (HDLCFrameCreateUplink())
    {
      if (a4 <= 0x80)
      {
        if (HDLCFrameGetFreeSpace() <= 0x87)
        {
          _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v17, v18, v19, v20, v21, v22, 136);
        }

        else
        {
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedShort();
          if (HDLCFrameInject())
          {
            memset(v40, 0, sizeof(v40));
            HDLCFrameInject();
            if (HDLCFrameInjectUnsignedShort())
            {
              if (ETLSendCommand(a1, v38, a6))
              {
                LOBYTE(v40[0]) = 39;
                v23 = ETLFindMatchingResponse(a1, v36, v40, a6);
                v30 = 0;
                if (!v23 || LOBYTE(v40[0]) != 39)
                {
                  goto LABEL_18;
                }

                if (DWORD2(v36[0]) <= 2)
                {
                  _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Response size %u not enough, need %u\n", v24, v25, v26, v27, v28, v29, 3);
                }

                else
                {
                  v31 = *&v36[0];
                  if (*(*&v36[0] + 1) != a2)
                  {
                    _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "Returned item number %u mismatches expected %u\n", v24, v25, v26, v27, v28, v29, *(*&v36[0] + 1));
                  }

                  v32 = *(v31 + 131);
                  *a5 = v32;
                  if (!v32)
                  {
                    v30 = 1;
                    goto LABEL_18;
                  }

                  _ETLDebugPrint("ETLNVParseWriteResponseWithStatus", "NV write response indicates failure with status code %u\n", v24, v25, v26, v27, v28, v29, v32);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLNVWriteWithStatus", "Failed to create command frame\n", v11, v12, v13, v14, v15, v16, v35);
    }

    v30 = 0;
LABEL_18:
    HDLCFrameFree();
    HDLCFrameFree();
    goto LABEL_19;
  }

  v30 = 0;
LABEL_19:
  v33 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t ETLMaverickNVReadFactory(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, void *a3, uint64_t a4, _WORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3 || !a5 || !a6)
  {
    v36 = "Transport, destBuffer, amountRead, or status memory cannot be NULL\n";
LABEL_22:
    _ETLDebugPrint("ETLMaverickNVReadFactory", v36, a3, a4, a5, a6, a7, a8, v39);
    return 0;
  }

  if (a4 > 0x7F)
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    memset(v40, 0, sizeof(v40));
    v41 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v15, v16, v17, v18, v19, v20, FreeSpace);
      }

      else
      {
        v45 = 1900107;
        if (HDLCFrameInject())
        {
          MatchingResponse = HDLCFrameInjectUnsignedInt();
          if (!MatchingResponse)
          {
            goto LABEL_28;
          }

          MatchingResponse = malloc((2 * DWORD2(v42) + 32));
          if (!MatchingResponse)
          {
            goto LABEL_28;
          }

          v28 = MatchingResponse;
          v29 = HDLCFrameEncode();
          if (v29)
          {
            v30 = v29;
            v45 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v28, v29);
            }

            if (*a1)
            {
              v31 = (*a1)(a1, v28, v30, &v45, 1, a7, 0);
              v32 = v45;
              free(v28);
              MatchingResponse = 0;
              if (v31 && v32 == v30)
              {
                MatchingResponse = ETLSubsysFindMatchingResponse(a1, v40, a7);
                if (MatchingResponse)
                {
                  MatchingResponse = ETLMaverickParseNVReadFactory(v40, a3, a4, a5, a6, v33, v34, v35);
                }
              }

              goto LABEL_28;
            }
          }

          free(v28);
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v21, v22, v23, v24, v25, v26, v39);
        }
      }

      MatchingResponse = 0;
LABEL_28:
      v38 = MatchingResponse;
      HDLCFrameFree();
      HDLCFrameFree();
      return v38;
    }

    v36 = "Failed to create command frame\n";
    goto LABEL_22;
  }

  _ETLDebugPrint("ETLMaverickNVReadFactory", "Buffer size (%u) should be more than %u\n", a3, a4, a5, a6, a7, a8, a4);
  return 0;
}

uint64_t ETLMaverickParseNVReadFactory(_DWORD **a1, void *__dst, uint64_t a3, _WORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  *a5 = 4;
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_14:
    _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Failed on parsing Factory Response Header.\n", v16, v17, v18, v19, v20, v21, v23);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_14;
  }

  if (BYTE1(v11) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_14;
  }

  v12 = HIWORD(v11);
  if (v12 != 28)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_14;
  }

  if (v9 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v13 = v10[2];
    if (v13 != 5 && v10[2])
    {
      *a5 = v13;
      _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Failed on NV Read via Factory command.\n", a3, a4, a5, a6, a7, a8, v22);
      return 0;
    }

    else
    {
      *a5 = v13;
      v14 = v10[3];
      *a4 = v14;
      if (v14 <= a3)
      {
        memcpy(__dst, v10 + 4, v14);
        return 1;
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseNVReadFactory", "Read amount, %u, is greater than the destination buffer size (%u)\n", a3, a4, a5, a6, a7, a8, v14);
        return 0;
      }
    }
  }
}

uint64_t ETLMaverickNVWriteFactory(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3)
  {
    v31 = "Transport or srcBuffer cannot be NULL\n";
LABEL_15:
    _ETLDebugPrint("ETLMaverickNVWriteFactory", v31, a3, a4, a5, a6, a7, a8, v33);
    return 0;
  }

  if (a4 >= 0x2000)
  {
    _ETLDebugPrint("ETLMaverickNVWriteFactory", "Buffer size (%u) should be less than %u\n", a3, a4, a5, a6, a7, a8, a4);
    return 0;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "Failed to create command frame\n";
    goto LABEL_15;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v38 = 1965643;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v17, v18, v19, v20, v21, v22, v33);
    goto LABEL_19;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInject() || !ETLSendCommand(a1, v36, a5) || !ETLSubsysFindMatchingResponse(a1, v34, a5))
  {
    goto LABEL_19;
  }

  v30 = ETLMaverickParseNVWriteFactory(v34, v23, v24, v25, v26, v27, v28, v29);
LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v30;
}

uint64_t ETLMaverickParseNVWriteFactory(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseNVWriteFactory", "Failed on parsing Factory Response Header.\n", v13, v14, v15, v16, v17, v18, v20);
    return 0;
  }

  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_12;
  }

  if (BYTE1(v10) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    goto LABEL_12;
  }

  v11 = HIWORD(v10);
  if (v11 != 29)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
    goto LABEL_12;
  }

  if (v9 <= 1)
  {
    _ETLDebugPrint("ETLMaverickParseNVWriteFactory", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else if (*(*a1 + 4) >= 2u)
  {
    _ETLDebugPrint("ETLMaverickParseNVWriteFactory", "Failed on writing NV via Factory command\n", a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  else
  {
    return 1;
  }
}

double ETLPingParametersInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = xmmword_2977CA770;
  *(a1 + 32) = &__block_literal_global;
  *(a1 + 40) = &__block_literal_global_4;
  return result;
}

uint64_t ETLPing(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  if (!*(a2 + 8))
  {
LABEL_5:
    v14 = 0;
    v15 = 0;
    v5 = *(a2 + 16);
    if (v5 && (v6 = *(a2 + 24)) != 0)
    {
      if (*(a2 + 28))
      {
        v7 = v6 + 4;
      }

      else
      {
        v7 = v6;
      }

      v8 = malloc(v7);
    }

    else
    {
      if ((*(a2 + 28) & 1) == 0)
      {
        if (*a2)
        {
          v10 = (a2 + 4);
LABEL_24:
          v11 = 0;
          while (1)
          {
            if (!ETLBBSendEcho(a1, &v14))
            {
LABEL_29:
              v8 = 0;
              v12 = 0;
              goto LABEL_36;
            }

            if (ETLBBCheckEchoResponse(a1, &v14, 1, *v10))
            {
              break;
            }

            if ((*(*(a2 + 32) + 16))(*(a2 + 32), v11))
            {
              v11 = (v11 + 1);
              if (v11 < *a2)
              {
                continue;
              }
            }

            goto LABEL_29;
          }

          v8 = 0;
LABEL_34:
          (*(*(a2 + 40) + 16))(*(a2 + 40), v11);
          goto LABEL_35;
        }

        v8 = 0;
        goto LABEL_35;
      }

      v6 = *(a2 + 24);
      LODWORD(v7) = v6 + 4;
      v9 = malloc(v6 + 4);
      v8 = v9;
      if (!v6)
      {
        v14 = v9;
        LODWORD(v15) = 4;
        if (*a2)
        {
LABEL_14:
          v10 = (a2 + 4);
          if (v8)
          {
            v11 = 0;
            do
            {
              *v8 = v11;
              if (!ETLBBSendEcho(a1, &v14))
              {
                break;
              }

              if (ETLBBCheckEchoResponse(a1, &v14, 1, *v10))
              {
                goto LABEL_34;
              }

              if (!(*(*(a2 + 32) + 16))(*(a2 + 32), v11))
              {
                break;
              }

              v11 = (v11 + 1);
            }

            while (v11 < *a2);
            v12 = 0;
            goto LABEL_36;
          }

          goto LABEL_24;
        }

LABEL_35:
        v12 = 1;
LABEL_36:
        free(v8);
        return v12;
      }
    }

    memcpy(v8 + 1, v5, v6);
    v14 = v8;
    LODWORD(v15) = v7;
    if (*a2)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  v4 = 0;
  while (ETLBBPing(a1))
  {
    usleep(1000 * *(a2 + 12));
    if (++v4 >= *(a2 + 8))
    {
      goto LABEL_5;
    }
  }

  return 0;
}

void *ETLTimestampGetTimeval(void *result, uint64_t a2)
{
  v2 = (43685 * *result) >> 16;
  v3 = 5 * (*result >> 16) + ((v2 + (((*result - v2) & 0xFFFE) >> 1)) >> 13) + 2;
  *a2 = ((v3 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  *(a2 + 8) = 1000 * ((v3 >> 2) - 1000 * (((v3 >> 2) * 0x4189374BC6A7F0uLL) >> 64));
  return result;
}

uint64_t ETLTimestampFromTimeval(uint64_t result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = ((-25600 * (*(result + 8) % 1250)) | ((800 * *result + *(result + 8) / 1250) << 16)) - 16565655306240000;
    }
  }

  return result;
}

uint64_t ETLTimestampGetHoursMinutesSeconds(uint64_t result, _DWORD *a2, int *a3, _DWORD *a4)
{
  *a4 = result % 60;
  *a3 = (result / 60) % 60;
  v4 = (result / 3600 * 0x2AAAAAAAAAAAAAABLL) >> 64;
  *a2 = result / 3600 - 24 * ((v4 >> 63) + (v4 >> 2));
  return result;
}

uint64_t ETLTimestampsEqual(unint64_t *a1, unint64_t *a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

uint64_t eUICC::GetVinylType::Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v44[4] = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (!*a1)
  {
    *v44 = 22;
    v41 = "transport";
LABEL_31:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a3, a4, a5, a6, a7, a8, v41);
    goto LABEL_32;
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_30;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_30;
  }

  LODWORD(__src[0]) = 8453451;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v17, v18, v19, v20, v21, v22, v43);
    goto LABEL_30;
  }

  v23 = *(a1 + 8);
  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
LABEL_30:
    *v44 = 12;
    v41 = "success";
    goto LABEL_31;
  }

  v24 = *(a1 + 12);
  v25.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v47 = 0;
  *__src = 0u;
  v46 = 0u;
  *&v44[4] = 0;
  *&v44[8] = 0;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v26 = malloc(0x20uLL);
    if (!v26)
    {
      goto LABEL_34;
    }

    v33 = v26;
    v34 = HDLCFrameEncode();
    if (!v34)
    {
      goto LABEL_33;
    }

    v35 = v34;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v33, v34);
    }

    if (!*v8)
    {
LABEL_33:
      free(v33);
LABEL_34:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v27, v28, v29, v30, v31, v32, "success");
      v40 = 5;
      goto LABEL_35;
    }

    v36 = (*v8)(v8, v33, v35, &__ns, 1, v24, 0);
    rep = __ns.__rep_;
    free(v33);
    if (v36)
    {
      v38 = rep == v35;
    }

    else
    {
      v38 = 0;
    }

    if (!v38)
    {
      goto LABEL_34;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v8, __src, &_ETLResponseRingBuffer, &__ns, v24) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_34;
    }

    v39 = LODWORD(__src[1]) >= 6 ? 6 : LODWORD(__src[1]);
    memcpy(&v44[4], __src[0], v39);
    if (v44[8] != 2)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ - v25.__d_.__rep_ > 1000000 * v24)
    {
      v40 = 60;
      goto LABEL_35;
    }
  }

  v40 = 0;
LABEL_35:
  HDLCFrameFree();
  *v44 = v40;
LABEL_32:
  HDLCFrameFree();
  return *v44;
}

uint64_t eUICC::GetData::Perform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a8 + 4) = v9;
  v10 = (a8 + 4);
  *(a8 + 228) = v9;
  *(a8 + 244) = v9;
  *(a8 + 196) = v9;
  *(a8 + 212) = v9;
  *(a8 + 164) = v9;
  *(a8 + 180) = v9;
  *(a8 + 132) = v9;
  *(a8 + 148) = v9;
  *(a8 + 100) = v9;
  *(a8 + 116) = v9;
  *(a8 + 68) = v9;
  *(a8 + 84) = v9;
  *(a8 + 36) = v9;
  *(a8 + 52) = v9;
  *(a8 + 20) = v9;
  v11 = *a1;
  if (!*a1)
  {
    *a8 = 22;
    v44 = "transport";
LABEL_31:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a2, a3, a4, a5, a6, a7, v44);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_30;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
    goto LABEL_30;
  }

  LODWORD(__src[0]) = 5700939;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v20, v21, v22, v23, v24, v25, v46);
    goto LABEL_30;
  }

  v26 = *(a1 + 8);
  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
LABEL_30:
    *a8 = 12;
    v44 = "success";
    goto LABEL_31;
  }

  v27 = *(a1 + 12);
  v28.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v49 = 0;
  *__src = 0u;
  v48 = 0u;
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[8] = 0u;
  v10[9] = 0u;
  v10[10] = 0u;
  v10[11] = 0u;
  v10[12] = 0u;
  v10[13] = 0u;
  v10[14] = 0u;
  *(v10 + 238) = 0u;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v29 = malloc(0x20uLL);
    if (!v29)
    {
      goto LABEL_34;
    }

    v36 = v29;
    v37 = HDLCFrameEncode();
    if (!v37)
    {
      goto LABEL_33;
    }

    v38 = v37;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v36, v37);
    }

    if (!*v11)
    {
LABEL_33:
      free(v36);
LABEL_34:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v30, v31, v32, v33, v34, v35, "success");
      v43 = 5;
      goto LABEL_35;
    }

    v39 = (*v11)(v11, v36, v38, &__ns, 1, v27, 0);
    rep = __ns.__rep_;
    free(v36);
    if (v39)
    {
      v41 = rep == v38;
    }

    else
    {
      v41 = 0;
    }

    if (!v41)
    {
      goto LABEL_34;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v11, __src, &_ETLResponseRingBuffer, &__ns, v27) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_34;
    }

    v42 = LODWORD(__src[1]) >= 0xFE ? 254 : LODWORD(__src[1]);
    memcpy(v10, __src[0], v42);
    if (*(a8 + 8) != 2)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ - v28.__d_.__rep_ > 1000000 * v27)
    {
      v43 = 60;
      goto LABEL_35;
    }
  }

  v43 = 0;
LABEL_35:
  HDLCFrameFree();
  *a8 = v43;
  return HDLCFrameFree();
}

uint64_t eUICC::SwitchMode::Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v33[4] = 0xAAAAAAAAAAAAAAAALL;
  v34 = -1431655766;
  *v33 = -1;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v8 = *a1;
  if (!*a1)
  {
    *v33 = 22;
    v26 = "transport";
LABEL_21:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a3, a4, a5, a6, a7, a8, v26);
    goto LABEL_22;
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
LABEL_19:
    *v33 = 12;
LABEL_20:
    v26 = "success";
    goto LABEL_21;
  }

  v35 = 5766475;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v17, v18, v19, v20, v21, v22, v28);
    goto LABEL_19;
  }

  v23 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_19;
  }

  v24 = *(a1 + 9);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_19;
  }

  v25 = *(a1 + 10);
  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!ETLSendCommand(v8, v31, *(a1 + 12)) || (ETLSubsysFindMatchingResponse(v8, v29, *(a1 + 12)) & 1) == 0)
  {
    *v33 = 5;
    goto LABEL_20;
  }

  if (DWORD2(v29[0]) != 8)
  {
    *v33 = 40;
    v26 = "sizeof(result) == HDLCFrameGetPayloadLength( &rsp)";
    goto LABEL_21;
  }

  if (*(*&v29[0] + 4) != 1)
  {
    *v33 = -4;
    v26 = "VinylError::kStatusSuccess == result.cmd_ack_status";
    goto LABEL_21;
  }

  HDLCFrameFree();
  if (!HDLCFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (HDLCFrameInjectUnsignedShort() & 1) == 0)
  {
    *v33 = 12;
    goto LABEL_20;
  }

  *v33 = eUICC::PollResult<eUICC::SwitchMode::Response::{unnamed type#1}>(v31, &v33[4], v8, *(a1 + 12));
LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return *v33;
}

uint64_t eUICC::PollResult<eUICC::SwitchMode::Response::{unnamed type#1}>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  *a2 = 0;
  *(a2 + 8) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_22;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_21:
      free(v16);
LABEL_22:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_23;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_22;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, v25, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_22;
    }

    if (DWORD2(v25[0]) < 0xC)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, DWORD2(v25[0]));
    }

    else
    {
      v22 = *(*&v25[0] + 8);
      *a2 = **&v25[0];
      *(a2 + 8) = v22;
      if (v22 != 2)
      {
        v23 = 0;
        goto LABEL_23;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_23:
  HDLCFrameFree();
  return v23;
}

uint64_t eUICC::InstallTicket::Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v8 = *a1;
  v9 = *(a1 + 24);
  if (v9 % 0x5DC)
  {
    v10 = v9 / 0x5DC + 1;
  }

  else
  {
    v10 = v9 / 0x5DC;
  }

  if (!v8)
  {
    v65 = "transport";
    goto LABEL_57;
  }

  if (!*(a1 + 16) || !v9 || !v10)
  {
    v65 = "request.data && request.data_len && segment_count";
LABEL_57:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a3, a4, a5, a6, a7, a8, v65);
    v64 = 22;
    v13 = 2863311530;
    goto LABEL_58;
  }

  v12 = 0;
  v13 = 2863311530;
  v74 = v10;
  while (2)
  {
    v75 = v12;
    *(a1 + 24);
    if (!HDLCFrameCreateUplink())
    {
      goto LABEL_68;
    }

    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace < 4)
    {
      goto LABEL_71;
    }

    LODWORD(v82[0]) = 5897547;
    if ((HDLCFrameInject() & 1) == 0)
    {
LABEL_67:
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v27, v28, v29, v30, v31, v32, v73);
LABEL_68:
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v14, v15, v16, v17, v18, v19, "success");
      v64 = 12;
      break;
    }

    v33 = *(a1 + 8);
    if (!HDLCFrameInjectUnsignedChar())
    {
      goto LABEL_68;
    }

    if (!HDLCFrameInjectUnsignedShort())
    {
      goto LABEL_68;
    }

    if (!HDLCFrameInjectUnsignedShort())
    {
      goto LABEL_68;
    }

    if (!HDLCFrameInjectUnsignedShort())
    {
      goto LABEL_68;
    }

    v34 = *(a1 + 16);
    if ((HDLCFrameInject() & 1) == 0)
    {
      goto LABEL_68;
    }

    v35 = *(a1 + 32);
    v36 = malloc((2 * DWORD2(v79) + 32));
    if (!v36)
    {
LABEL_64:
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v37, v38, v39, v40, v41, v42, "success");
      v64 = 5;
      break;
    }

    v43 = v36;
    v44 = HDLCFrameEncode();
    if (!v44)
    {
      goto LABEL_63;
    }

    v45 = v44;
    LODWORD(v82[0]) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v43, v44);
    }

    if (!*v8)
    {
LABEL_63:
      free(v43);
      goto LABEL_64;
    }

    v46 = (*v8)(v8, v43, v45, v82, 1, v35, 0);
    v47 = v82[0];
    free(v43);
    if (!v46 || v47 != v45)
    {
      goto LABEL_64;
    }

    v48 = *(a1 + 32);
    LOBYTE(v82[0]) = 75;
    if (!_ETLResponseRingBuffer)
    {
      v49 = v48;
      TelephonyUtilRingBufferInitialize();
      v48 = v49;
    }

    if (!ETLFindMatchingResponseUsingBuffer(v8, v77, &_ETLResponseRingBuffer, v82, v48) || LOBYTE(v82[0]) != 75)
    {
      goto LABEL_64;
    }

    if (DWORD2(v77[0]) != 6)
    {
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v37, v38, v39, v40, v41, v42, "sizeof( result) == HDLCFrameGetPayloadLength( &rsp)");
      v64 = 40;
      break;
    }

    if (*(*&v77[0] + 4) != 1)
    {
      _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v37, v38, v39, v40, v41, v42, "VinylError::kStatusSuccess == result.cmd_ack_status");
      v64 = 4294967286;
      break;
    }

    HDLCFrameFree();
    if (!HDLCFrameCreateUplink())
    {
      goto LABEL_68;
    }

    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace < 4)
    {
LABEL_71:
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v21, v22, v23, v24, v25, v26, FreeSpace);
      goto LABEL_68;
    }

    LODWORD(v82[0]) = 4980043;
    if ((HDLCFrameInject() & 1) == 0)
    {
      goto LABEL_67;
    }

    if ((HDLCFrameInjectUnsignedShort() & 1) == 0)
    {
      goto LABEL_68;
    }

    v50 = *(a1 + 32);
    v76.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v13 = 0;
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    while (1)
    {
      __ns.__rep_ = 100000000;
      std::this_thread::sleep_for (&__ns);
      v51 = malloc((2 * DWORD2(v79) + 32));
      if (!v51)
      {
        goto LABEL_60;
      }

      v58 = v51;
      v59 = HDLCFrameEncode();
      if (!v59)
      {
        goto LABEL_59;
      }

      v60 = v59;
      LODWORD(__ns.__rep_) = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v58, v59);
      }

      if (!*v8)
      {
LABEL_59:
        free(v58);
LABEL_60:
        _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v52, v53, v54, v55, v56, v57, "success");
        v64 = 5;
LABEL_61:
        HDLCFrameFree();
        _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v67, v68, v69, v70, v71, v72, "0 == response.error");
        goto LABEL_58;
      }

      v61 = (*v8)(v8, v58, v60, &__ns, 1, v50, 0);
      rep = __ns.__rep_;
      free(v58);
      if (v61)
      {
        v63 = rep == v60;
      }

      else
      {
        v63 = 0;
      }

      if (!v63)
      {
        goto LABEL_60;
      }

      LOBYTE(__ns.__rep_) = 75;
      if (!_ETLResponseRingBuffer)
      {
        TelephonyUtilRingBufferInitialize();
      }

      if (!ETLFindMatchingResponseUsingBuffer(v8, v82, &_ETLResponseRingBuffer, &__ns, v50) || LOBYTE(__ns.__rep_) != 75)
      {
        goto LABEL_60;
      }

      if (DWORD2(v82[0]) >= 0xB)
      {
        break;
      }

      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v52, v53, v54, v55, v56, v57, DWORD2(v82[0]));
LABEL_36:
      if (std::chrono::steady_clock::now().__d_.__rep_ - v76.__d_.__rep_ > 1000000 * v50)
      {
        v64 = 60;
        goto LABEL_61;
      }
    }

    v13 = **&v82[0];
    if (((*(*&v82[0] + 4) | ((*(*&v82[0] + 8) | (*(*&v82[0] + 10) << 16)) << 32)) & 0xFF00000000) == 0x200000000)
    {
      goto LABEL_36;
    }

    HDLCFrameFree();
    v64 = 0;
    v12 = v75 + 1;
    if (v75 + 1 != v74)
    {
      continue;
    }

    break;
  }

LABEL_58:
  HDLCFrameFree();
  return v64 | (v13 << 32);
}

uint64_t eUICC::StreamAPDU::Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v47[4] = 0xAAAAAAAAAAAAAAAALL;
  v48 = -1431655766;
  *v47 = -1;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v8 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v9 = *a1;
  if (!*a1)
  {
    *v47 = 22;
    v40 = "transport";
LABEL_34:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a3, a4, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_32;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
LABEL_32:
    *v47 = 12;
LABEL_33:
    v40 = "success";
    goto LABEL_34;
  }

  v49 = 5832011;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v18, v19, v20, v21, v22, v23, v42);
    goto LABEL_32;
  }

  v24 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_32;
  }

  v25 = *(a1 + 10);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_32;
  }

  v26 = *(a1 + 12);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_32;
  }

  v27 = *(a1 + 14);
  v28 = HDLCFrameInjectUnsignedChar();
  if (v28 && *(a1 + 14))
  {
    v29 = 0;
    v30 = 1;
    while (*(a1 + 24) >= v30 - 1)
    {
      v31 = *(*(a1 + 16) + v29);
      if (!HDLCFrameInjectUnsignedChar())
      {
        goto LABEL_32;
      }

      v32 = (*(a1 + 16) + v29);
      v33 = *(v32 + 1);
      v34 = *v32;
      if (!HDLCFrameInject())
      {
        goto LABEL_32;
      }

      v35 = *(*(a1 + 16) + v29 + 16);
      if (!HDLCFrameInjectUnsignedChar())
      {
        goto LABEL_32;
      }

      v36 = *(a1 + 16) + v29;
      v37 = *(v36 + 24);
      v38 = *(v36 + 16);
      v28 = HDLCFrameInject();
      v29 += 32;
      if (v28)
      {
        v39 = v30 >= *(a1 + 14);
      }

      else
      {
        v39 = 1;
      }

      ++v30;
      if (v39)
      {
        goto LABEL_20;
      }
    }

    *v47 = 22;
    v40 = "i <= request.apdu_payload.apdu_data_size";
    goto LABEL_34;
  }

LABEL_20:
  if ((v28 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((ETLSendCommand(v9, v45, *(a1 + 32)) & 1) == 0)
  {
    *v47 = 5;
    goto LABEL_33;
  }

  _ETLDebugFlags |= v8;
  if ((ETLSubsysFindMatchingResponse(v9, v43, *(a1 + 32)) & 1) == 0)
  {
    *v47 = 5;
    goto LABEL_33;
  }

  if (DWORD2(v43[0]) != 6)
  {
    *v47 = 40;
    v40 = "sizeof( result) == HDLCFrameGetPayloadLength( &rsp)";
    goto LABEL_34;
  }

  if (*(*&v43[0] + 4) != 1)
  {
    *v47 = -10;
    v40 = "VinylError::kStatusSuccess == result.cmd_ack_status";
    goto LABEL_34;
  }

  HDLCFrameFree();
  if (!HDLCFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (HDLCFrameInjectUnsignedShort() & 1) == 0)
  {
    *v47 = 12;
    goto LABEL_33;
  }

  *v47 = eUICC::PollResult<eUICC::StreamAPDU::Response::{unnamed type#1}>(v45, &v47[4], v9, *(a1 + 32));
LABEL_35:
  _ETLDebugFlags |= v8;
  HDLCFrameFree();
  return *v47;
}

uint64_t eUICC::PollResult<eUICC::StreamAPDU::Response::{unnamed type#1}>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  *a2 = 0;
  *(a2 + 7) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_22;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_21:
      free(v16);
LABEL_22:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_23;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_22;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, v25, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_22;
    }

    if (DWORD2(v25[0]) < 0xB)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, DWORD2(v25[0]));
    }

    else
    {
      v22 = **&v25[0];
      *(a2 + 7) = *(*&v25[0] + 7);
      *a2 = v22;
      if (*(a2 + 8) != 2)
      {
        v23 = 0;
        goto LABEL_23;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_23:
  HDLCFrameFree();
  return v23;
}

uint64_t eUICC::InitPersoSession::Perform@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x90uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53830;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v12 = *a1;
  if (!*a1)
  {
    v31 = "transport";
    v32 = 22;
LABEL_15:
    *v4 = v32;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v6, v7, v8, v9, v10, v11, v31);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_14:
    v31 = "success";
    v32 = 12;
    goto LABEL_15;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
    goto LABEL_14;
  }

  v37 = 5963083;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v20, v21, v22, v23, v24, v25, v34);
    goto LABEL_14;
  }

  v26 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v27 = *(a1 + 9);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v28 = *(a1 + 10);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v29 = *(a1 + 12);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_14;
  }

  v30 = *(a1 + 12);
  if ((HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_14;
  }

  *v4 = eUICC::PollResult<eUICC::InitPersoSession::Response::contents>(v35, (v4 + 4), v12, *(a1 + 28));
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::InitPersoSession::Response::contents>(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v27 = 0;
  *__src = 0u;
  v26 = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  *(a2 + 121) = 0u;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_24:
      free(v16);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_26;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x89)
      {
        v22 = 137;
      }

      else
      {
        v22 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v22);
      if (*(a2 + 4) != 2)
      {
        v23 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_26:
  HDLCFrameFree();
  return v23;
}

uint64_t eUICC::AuthPersoSession::Perform@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x210uLL);
  bzero(v4, 0x210uLL);
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53880;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v12 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v13 = *a1;
  if (!*a1)
  {
    v32 = "transport";
    v33 = 22;
LABEL_15:
    *v4 = v33;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v6, v7, v8, v9, v10, v11, v32);
    goto LABEL_16;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_14:
    v32 = "success";
    v33 = 12;
    goto LABEL_15;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v15, v16, v17, v18, v19, v20, FreeSpace);
    goto LABEL_14;
  }

  v38 = 6028619;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v21, v22, v23, v24, v25, v26, v35);
    goto LABEL_14;
  }

  v27 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v28 = *(a1 + 9);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v29 = *(a1 + 10);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v30 = *(a1 + 12);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_14;
  }

  v31 = *(a1 + 12);
  if ((HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_14;
  }

  _ETLDebugFlags |= v12;
  *v4 = eUICC::PollResult<eUICC::AuthPersoSession::Response::contents>(v36, v4 + 4, v13, *(a1 + 2064));
LABEL_16:
  _ETLDebugFlags |= v12;
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::AuthPersoSession::Response::contents>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v27 = 0;
  *__src = 0u;
  v26 = 0u;
  bzero(a2, 0x209uLL);
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_24:
      free(v16);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_26;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x209)
      {
        v22 = 521;
      }

      else
      {
        v22 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v22);
      if (a2[4] != 2)
      {
        v23 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_26:
  HDLCFrameFree();
  return v23;
}

uint64_t eUICC::FinalizePersoSession::Perform@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xCuLL);
  *v4 = 0;
  v4[2] = 0;
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E538D0;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v12 = *a1;
  if (!*a1)
  {
    v31 = "transport";
    v32 = 22;
LABEL_15:
    *v4 = v32;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v6, v7, v8, v9, v10, v11, v31);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_14:
    v31 = "success";
    v32 = 12;
    goto LABEL_15;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
    goto LABEL_14;
  }

  v37 = 6094155;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v20, v21, v22, v23, v24, v25, v34);
    goto LABEL_14;
  }

  v26 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v27 = *(a1 + 9);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v28 = *(a1 + 10);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_14;
  }

  v29 = *(a1 + 12);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_14;
  }

  v30 = *(a1 + 12);
  if ((HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_14;
  }

  *v4 = eUICC::PollResult<eUICC::FinalizePersoSession::Response::contents>(v35, v4 + 4, v12, *(a1 + 272));
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::FinalizePersoSession::Response::contents>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v27 = 0;
  *__src = 0u;
  v26 = 0u;
  *a2 = 0;
  *(a2 + 3) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_24:
      free(v16);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_26;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 7)
      {
        v22 = 7;
      }

      else
      {
        v22 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v22);
      if (a2[4] != 2)
      {
        v23 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_26:
  HDLCFrameFree();
  return v23;
}

uint64_t eUICC::ValidatePerso::Perform@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x1780uLL);
  bzero(v4, 0x1780uLL);
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53920;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v12 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v13 = *a1;
  if (!*a1)
  {
    v30 = "transport";
    v31 = 22;
LABEL_13:
    *v4 = v31;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v6, v7, v8, v9, v10, v11, v30);
    goto LABEL_14;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_12:
    v30 = "success";
    v31 = 12;
    goto LABEL_13;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v15, v16, v17, v18, v19, v20, FreeSpace);
    goto LABEL_12;
  }

  v36 = 6356299;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v21, v22, v23, v24, v25, v26, v33);
    goto LABEL_12;
  }

  v27 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_12;
  }

  v28 = *(a1 + 10);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_12;
  }

  v29 = *(a1 + 10);
  if ((HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_12;
  }

  _ETLDebugFlags |= v12;
  *v4 = eUICC::PollResult<eUICC::ValidatePerso::Response::contents>(v34, v4 + 4, v13, *(a1 + 80));
LABEL_14:
  _ETLDebugFlags |= v12;
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::ValidatePerso::Response::contents>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v27 = 0;
  *__src = 0u;
  v26 = 0u;
  bzero(a2, 0x1779uLL);
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_24:
      free(v16);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_26;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x1779)
      {
        v22 = 6009;
      }

      else
      {
        v22 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v22);
      if (a2[4] != 2)
      {
        v23 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_26:
  HDLCFrameFree();
  return v23;
}

uint64_t eUICC::DeleteProfile::Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v46[4] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _ETLDebugFlags & 2;
  _ETLDebugFlags &= ~2u;
  v9 = *a1;
  if (!*a1)
  {
    *v46 = 22;
    v28 = "transport";
LABEL_12:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a3, a4, a5, a6, a7, a8, v28);
    goto LABEL_13;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_11:
    *v46 = 12;
    v28 = "success";
    goto LABEL_12;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_11;
  }

  LODWORD(__src[0]) = 7011659;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v18, v19, v20, v21, v22, v23, v45);
    goto LABEL_11;
  }

  v24 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_11;
  }

  v25 = *(a1 + 9);
  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
    goto LABEL_11;
  }

  _ETLDebugFlags |= v8;
  v26 = *(a1 + 12);
  v27.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v49 = 0;
  *__src = 0u;
  v48 = 0u;
  *&v46[4] = 0;
  *&v46[7] = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v30 = malloc(0x20uLL);
    if (!v30)
    {
      goto LABEL_37;
    }

    v37 = v30;
    v38 = HDLCFrameEncode();
    if (!v38)
    {
      goto LABEL_36;
    }

    v39 = v38;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v37, v38);
    }

    if (!*v9)
    {
LABEL_36:
      free(v37);
LABEL_37:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v31, v32, v33, v34, v35, v36, "success");
      v44 = 5;
      goto LABEL_38;
    }

    v40 = (*v9)(v9, v37, v39, &__ns, 1, v26, 0);
    rep = __ns.__rep_;
    free(v37);
    if (v40)
    {
      v42 = rep == v39;
    }

    else
    {
      v42 = 0;
    }

    if (!v42)
    {
      goto LABEL_37;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v9, __src, &_ETLResponseRingBuffer, &__ns, v26) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_37;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v31, v32, v33, v34, v35, v36, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 7)
      {
        v43 = 7;
      }

      else
      {
        v43 = LODWORD(__src[1]);
      }

      memcpy(&v46[4], __src[0], v43);
      if (v46[8] != 2)
      {
        v44 = 0;
        goto LABEL_38;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v27.__d_.__rep_ <= 1000000 * v26);
  v44 = 60;
LABEL_38:
  HDLCFrameFree();
  *v46 = v44;
LABEL_13:
  _ETLDebugFlags |= v8;
  HDLCFrameFree();
  return *v46;
}

uint64_t eUICC::GetCSN::Perform@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x1CuLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(v4 + 6) = 0;
  *v4 = -1;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A1E53970;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v12 = *a1;
  if (!*a1)
  {
    v27 = "transport";
    v30 = 22;
LABEL_34:
    *v4 = v30;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v6, v7, v8, v9, v10, v11, v27);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_32;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
LABEL_32:
    v27 = "success";
LABEL_33:
    v30 = 12;
    goto LABEL_34;
  }

  LODWORD(__src[0]) = 5504331;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v20, v21, v22, v23, v24, v25, v47);
    goto LABEL_32;
  }

  v26 = *(a1 + 8);
  v27 = "success";
  if ((HDLCFrameInjectUnsignedChar() & 1) == 0)
  {
    goto LABEL_33;
  }

  v28 = *(a1 + 12);
  v29.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(v4 + 4) = 0;
  v51 = 0;
  rep = v29.__d_.__rep_;
  *__src = 0u;
  v50 = 0u;
  *(v4 + 12) = 0;
  *(v4 + 18) = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v31 = malloc(0x20uLL);
    if (!v31)
    {
      goto LABEL_38;
    }

    v38 = v31;
    v39 = HDLCFrameEncode();
    if (!v39)
    {
      goto LABEL_37;
    }

    v40 = v39;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v38, v39);
    }

    if (!*v12)
    {
LABEL_37:
      free(v38);
LABEL_38:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v32, v33, v34, v35, v36, v37, "success");
      v45 = 5;
      goto LABEL_39;
    }

    v41 = (*v12)(v12, v38, v40, &__ns, 1, v28, 0);
    v42 = __ns.__rep_;
    free(v38);
    if (v41)
    {
      v43 = v42 == v40;
    }

    else
    {
      v43 = 0;
    }

    if (!v43)
    {
      goto LABEL_38;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(v12, __src, &_ETLResponseRingBuffer, &__ns, v28) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_38;
    }

    if (LODWORD(__src[1]) < 5)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v32, v33, v34, v35, v36, v37, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x16)
      {
        v44 = 22;
      }

      else
      {
        v44 = LODWORD(__src[1]);
      }

      memcpy(v4 + 4, __src[0], v44);
      if (*(v4 + 8) != 2)
      {
        v45 = 0;
        goto LABEL_39;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - rep <= 1000000 * v28);
  v45 = 60;
LABEL_39:
  HDLCFrameFree();
  *v4 = v45;
  return HDLCFrameFree();
}

unint64_t eUICC::GetSIMSKU::Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v8 = *a1;
  if (!*a1)
  {
    v43 = -1431699456;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", a3, a4, a5, a6, a7, a8, "transport");
    v45 = 43520;
    v47 = 22;
LABEL_23:
    v46 = 170;
    goto LABEL_24;
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_22:
    v43 = -1431699456;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
    v45 = 43520;
    v47 = 12;
    goto LABEL_23;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v17, v18, v19, v20, v21, v22, FreeSpace);
    goto LABEL_22;
  }

  v55 = 5242443;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v23, v24, v25, v26, v27, v28, v49);
    goto LABEL_22;
  }

  v29 = *(a1 + 8);
  v30 = malloc((2 * DWORD2(v52) + 32));
  if (!v30)
  {
LABEL_26:
    v43 = -1431699456;
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v31, v32, v33, v34, v35, v36, "success");
    v45 = 43520;
    v46 = 170;
    v47 = 5;
    goto LABEL_24;
  }

  v37 = v30;
  v38 = HDLCFrameEncode();
  if (!v38)
  {
    goto LABEL_25;
  }

  v39 = v38;
  v55 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v37, v38);
  }

  if (!*v8)
  {
LABEL_25:
    free(v37);
    goto LABEL_26;
  }

  v40 = (*v8)(v8, v37, v39, &v55, 1, v29, 0);
  v41 = v55;
  free(v37);
  if (!v40 || v41 != v39)
  {
    goto LABEL_26;
  }

  v42 = *(a1 + 8);
  LOBYTE(v55) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(v8, v50, &_ETLResponseRingBuffer, &v55, v42) || v55 != 75)
  {
    goto LABEL_26;
  }

  v43 = **&v50[0] & 0xFFFF0000;
  v44 = *(*&v50[0] + 6);
  v45 = **&v50[0] & 0xFF00;
  v46 = **&v50[0];
  if (*(*&v50[0] + 4) == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = 0xFFFFFFFFLL;
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v47 | ((v45 | v46 | v43) << 32);
}

uint64_t eUICC::StoreData::Perform@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  memset(a2 + 1, 170, 0x1780uLL);
  *a2 = -1;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v10 = *a1;
  if (!*a1)
  {
    *a2 = 22;
    v28 = "transport";
    goto LABEL_24;
  }

  if (!*(a1 + 16) || (*(a1 + 24) - 1) >= 0x7FFF)
  {
    *a2 = 22;
    v28 = "request.data && request.data_len && (request.data_len < kRequestMaxSize)";
LABEL_24:
    _ETLDebugPrint("Perform", "Condition %s failed %s/%d\n", v4, v5, v6, v7, v8, v9, v28);
    return HDLCFrameFree();
  }

  if (!HDLCFrameCreateUplink())
  {
LABEL_22:
    *a2 = 12;
LABEL_23:
    v28 = "success";
    goto LABEL_24;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_22;
  }

  v35 = 10943819;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v18, v19, v20, v21, v22, v23, v30);
    goto LABEL_22;
  }

  v24 = *(a1 + 8);
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_22;
  }

  v25 = *(a1 + 24);
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_22;
  }

  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  if ((HDLCFrameInject() & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((ETLSendCommand(v10, v33, *(a1 + 32)) & 1) == 0)
  {
    *a2 = 5;
    goto LABEL_23;
  }

  if ((ETLSubsysFindMatchingResponse(v10, v31, *(a1 + 32)) & 1) == 0)
  {
    *a2 = 5;
    goto LABEL_23;
  }

  if (DWORD2(v31[0]) != 6)
  {
    *a2 = 40;
    v28 = "sizeof( result) == HDLCFrameGetPayloadLength( &rsp)";
    goto LABEL_24;
  }

  if (*(*&v31[0] + 4) != 1)
  {
    *a2 = -10;
    v28 = "VinylError::kStatusSuccess == result.cmd_ack_status";
    goto LABEL_24;
  }

  HDLCFrameFree();
  if (!HDLCFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (HDLCFrameInjectUnsignedShort() & 1) == 0)
  {
    *a2 = 12;
    goto LABEL_23;
  }

  *a2 = eUICC::PollResult<eUICC::StoreData::Response::{unnamed type#1}>(v33, a2 + 4, v10, *(a1 + 32));
  return HDLCFrameFree();
}

uint64_t eUICC::PollResult<eUICC::StoreData::Response::{unnamed type#1}>(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v27 = 0;
  *__src = 0u;
  v26 = 0u;
  bzero(a2, 0x177DuLL);
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v9 = malloc((2 * *(a1 + 8) + 32));
    if (!v9)
    {
      goto LABEL_25;
    }

    v16 = v9;
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    LODWORD(__ns.__rep_) = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a3)
    {
LABEL_24:
      free(v16);
LABEL_25:
      _ETLDebugPrint("PollResult", "Condition %s failed %s/%d\n", v10, v11, v12, v13, v14, v15, "success");
      v23 = 5;
      goto LABEL_26;
    }

    v19 = (*a3)(a3, v16, v18, &__ns, 1, a4, 0);
    rep = __ns.__rep_;
    free(v16);
    if (v19)
    {
      v21 = rep == v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    LOBYTE(__ns.__rep_) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (!ETLFindMatchingResponseUsingBuffer(a3, __src, &_ETLResponseRingBuffer, &__ns, a4) || LOBYTE(__ns.__rep_) != 75)
    {
      goto LABEL_25;
    }

    if (LODWORD(__src[1]) < 9)
    {
      _ETLDebugPrint("PollResult", "Received payload length (%d) is smaller than required size (%d)\n", v10, v11, v12, v13, v14, v15, LODWORD(__src[1]));
    }

    else
    {
      if (LODWORD(__src[1]) >= 0x177D)
      {
        v22 = 6013;
      }

      else
      {
        v22 = LODWORD(__src[1]);
      }

      memcpy(a2, __src[0], v22);
      if (a2[8] != 2)
      {
        v23 = 0;
        goto LABEL_26;
      }
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_ <= 1000000 * a4);
  v23 = 60;
LABEL_26:
  HDLCFrameFree();
  return v23;
}

BOOL ETLeUICCGetCSN(uint64_t a1, _OWORD *a2, char a3, int a4)
{
  v12 = 0;
  v11 = 0;
  v10 = a3;
  v13 = a4;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = a1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  eUICC::GetCSN::Perform(&v9, &v7);
  if (a2 && !*v7 && *(v7 + 8) == 1)
  {
    *a2 = *(v7 + 10);
  }

  v5 = v8;
  if (!v8 || atomic_fetch_add((v8 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    return a2 != 0;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a2 != 0;
}

uint64_t ETLeUICCGetSimType(uint64_t a1, int *a2, char a3, int a4)
{
  *a2 = 0;
  v15 = 0;
  v14 = 0;
  v13 = a3;
  v16 = a4;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = a1;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  eUICC::GetCSN::Perform(&v12, &v10);
  v5 = *(v10 + 8);
  if (v5 == 1)
  {
    v7 = 2;
  }

  else
  {
    result = 0;
    if (v5 != 3)
    {
      goto LABEL_6;
    }

    v7 = 1;
  }

  *a2 = v7;
  result = 1;
LABEL_6:
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::InitPersoSession::Response *,std::shared_ptr<eUICC::InitPersoSession::Response>::__shared_ptr_default_delete<eUICC::InitPersoSession::Response,eUICC::InitPersoSession::Response>,std::allocator<eUICC::InitPersoSession::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::InitPersoSession::Response *,std::shared_ptr<eUICC::InitPersoSession::Response>::__shared_ptr_default_delete<eUICC::InitPersoSession::Response,eUICC::InitPersoSession::Response>,std::allocator<eUICC::InitPersoSession::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::InitPersoSession::Response *,std::shared_ptr<eUICC::InitPersoSession::Response>::__shared_ptr_default_delete<eUICC::InitPersoSession::Response,eUICC::InitPersoSession::Response>,std::allocator<eUICC::InitPersoSession::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CA812)
  {
    if (((v2 & 0x80000002977CA812 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CA812))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CA812 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<eUICC::InitPersoSession::Response>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::AuthPersoSession::Response *,std::shared_ptr<eUICC::AuthPersoSession::Response>::__shared_ptr_default_delete<eUICC::AuthPersoSession::Response,eUICC::AuthPersoSession::Response>,std::allocator<eUICC::AuthPersoSession::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::AuthPersoSession::Response *,std::shared_ptr<eUICC::AuthPersoSession::Response>::__shared_ptr_default_delete<eUICC::AuthPersoSession::Response,eUICC::AuthPersoSession::Response>,std::allocator<eUICC::AuthPersoSession::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::AuthPersoSession::Response *,std::shared_ptr<eUICC::AuthPersoSession::Response>::__shared_ptr_default_delete<eUICC::AuthPersoSession::Response,eUICC::AuthPersoSession::Response>,std::allocator<eUICC::AuthPersoSession::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CA903)
  {
    if (((v2 & 0x80000002977CA903 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CA903))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CA903 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::FinalizePersoSession::Response *,std::shared_ptr<eUICC::FinalizePersoSession::Response>::__shared_ptr_default_delete<eUICC::FinalizePersoSession::Response,eUICC::FinalizePersoSession::Response>,std::allocator<eUICC::FinalizePersoSession::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::FinalizePersoSession::Response *,std::shared_ptr<eUICC::FinalizePersoSession::Response>::__shared_ptr_default_delete<eUICC::FinalizePersoSession::Response,eUICC::FinalizePersoSession::Response>,std::allocator<eUICC::FinalizePersoSession::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::FinalizePersoSession::Response *,std::shared_ptr<eUICC::FinalizePersoSession::Response>::__shared_ptr_default_delete<eUICC::FinalizePersoSession::Response,eUICC::FinalizePersoSession::Response>,std::allocator<eUICC::FinalizePersoSession::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CA9F8)
  {
    if (((v2 & 0x80000002977CA9F8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CA9F8))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CA9F8 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::ValidatePerso::Response *,std::shared_ptr<eUICC::ValidatePerso::Response>::__shared_ptr_default_delete<eUICC::ValidatePerso::Response,eUICC::ValidatePerso::Response>,std::allocator<eUICC::ValidatePerso::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::ValidatePerso::Response *,std::shared_ptr<eUICC::ValidatePerso::Response>::__shared_ptr_default_delete<eUICC::ValidatePerso::Response,eUICC::ValidatePerso::Response>,std::allocator<eUICC::ValidatePerso::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::ValidatePerso::Response *,std::shared_ptr<eUICC::ValidatePerso::Response>::__shared_ptr_default_delete<eUICC::ValidatePerso::Response,eUICC::ValidatePerso::Response>,std::allocator<eUICC::ValidatePerso::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CAAEALL)
  {
    if (((v2 & 0x80000002977CAAEALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CAAEALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CAAEALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<eUICC::GetCSN::Response *,std::shared_ptr<eUICC::GetCSN::Response>::__shared_ptr_default_delete<eUICC::GetCSN::Response,eUICC::GetCSN::Response>,std::allocator<eUICC::GetCSN::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::GetCSN::Response *,std::shared_ptr<eUICC::GetCSN::Response>::__shared_ptr_default_delete<eUICC::GetCSN::Response,eUICC::GetCSN::Response>,std::allocator<eUICC::GetCSN::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::GetCSN::Response *,std::shared_ptr<eUICC::GetCSN::Response>::__shared_ptr_default_delete<eUICC::GetCSN::Response,eUICC::GetCSN::Response>,std::allocator<eUICC::GetCSN::Response>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977CABCDLL)
  {
    if (((v2 & 0x80000002977CABCDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977CABCDLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977CABCDLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_Unlock(_BYTE *a1, int a2, unsigned __int8 *a3, int a4)
{
  v40 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 13 || a4 != 6)
  {
    goto LABEL_24;
  }

  bzero(a1, a2);
  *a1 = 65;
  v8 = *a3;
  a1[1] = v8;
  v9 = a3[1];
  a1[2] = v9;
  v10 = a3[2];
  a1[3] = v10;
  v11 = a3[3];
  a1[4] = v11;
  v12 = a3[4];
  a1[5] = v12;
  v13 = a3[5];
  a1[6] = v13;
  v14 = crc_16_l_table[v8 ^ 0xA];
  v15 = crc_16_l_table[(v9 ^ v14) ^ 0x5C];
  v16 = crc_16_l_table[(v10 ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(v11 ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(v12 ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(v13 ^ v18 ^ HIBYTE(v17))];
  v20 = v19 ^ ~(v18 >> 8);
  a1[7] = v20;
  v21 = BYTE1(v20);
  a1[8] = v21;
  if (a2 < 0x12)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v36 = v21;
  bzero(v39, 0x7FEuLL);
  __src = 65;
  if ((v8 - 125) <= 1)
  {
    v39[0] = v8 & 0x5F;
    v38 = 125;
    v22 = 3;
    v23 = 4;
    if ((v9 - 125) > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v38 = v8;
  v22 = 2;
  v23 = 3;
  if ((v9 - 125) <= 1)
  {
LABEL_10:
    *(&__src + v23) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v23) = v22 + 2;
  }

LABEL_11:
  *(&__src + v22) = v9;
  v24 = v23;
  v25 = v23 + 1;
  if ((v10 - 125) <= 1)
  {
    *(&__src + v25) = v10 & 0x5F;
    LODWORD(v25) = v24 + 2;
    LOBYTE(v10) = 125;
  }

  *(&__src + v24) = v10;
  v26 = v25 + 1;
  if ((v11 - 125) <= 1)
  {
    *(&__src + v26) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = v11;
  v27 = v26;
  v28 = v26 + 1;
  if ((v12 - 125) <= 1)
  {
    *(&__src + v28) = v12 & 0x5F;
    LODWORD(v28) = v27 + 2;
    LOBYTE(v12) = 125;
  }

  v29 = ~(v19 ^ BYTE1(v18));
  *(&__src + v27) = v12;
  v30 = v28 + 1;
  if ((v13 - 125) <= 1)
  {
    *(&__src + v30) = v13 & 0x5F;
    LOBYTE(v13) = 125;
    LODWORD(v30) = v28 + 2;
  }

  *(&__src + v28) = v13;
  v31 = v30;
  v32 = v30 + 1;
  if ((v29 - 125) <= 1)
  {
    *(&__src + v32) = v29 & 0x5F;
    LODWORD(v32) = v31 + 2;
    LOBYTE(v29) = 125;
  }

  *(&__src + v31) = v29;
  v33 = v36;
  v34 = v32 + 1;
  if ((v36 - 125) <= 1)
  {
    *(&__src + v34) = v36 & 0x5F;
    v33 = 125;
    LODWORD(v34) = v32 + 2;
  }

  *(&__src + v32) = v33;
  memcpy(a1, &__src, v34);
  result = (v34 + 1);
  a1[v34] = 126;
LABEL_24:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_Lock(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 11387;
    *(a1 + 2) = 61;
    if (a2 >= 6)
    {
      *a1 = 2117938299;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_CreateICCID_EFS_File(char *a1, int a2)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a2 < 64)
  {
    goto LABEL_4;
  }

  if (!a1)
  {
    goto LABEL_4;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[48] = 0;
  *(a1 + 2) = 0u;
  *a1 = 8523;
  *(a1 + 1) = 0;
  a1[4] = 1;
  *(a1 + 5) = 0uLL;
  a1[21] = 0;
  a1[22] = 1;
  *(a1 + 23) = 0;
  a1[25] = 0;
  a1[26] = 1;
  a1[31] = 0;
  *(a1 + 27) = 0;
  *(a1 + 16) = 10;
  *(a1 + 34) = 778922355;
  *(a1 + 19) = 30836;
  a1[40] = 116;
  a1[41] = 0;
  v2 = crc_16_l_table[~*a1];
  v3 = crc_16_l_table[(a1[1] ^ ~v2)];
  v4 = crc_16_l_table[(a1[2] ^ v3 ^ HIBYTE(v2))];
  v5 = crc_16_l_table[(a1[3] ^ v4 ^ HIBYTE(v3))];
  v6 = crc_16_l_table[(a1[4] ^ v5 ^ HIBYTE(v4))];
  v7 = crc_16_l_table[(a1[5] ^ v6 ^ HIBYTE(v5))];
  v8 = crc_16_l_table[(a1[6] ^ v7 ^ HIBYTE(v6))];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v7))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  v12 = crc_16_l_table[(a1[10] ^ v11 ^ HIBYTE(v10))];
  v13 = crc_16_l_table[(a1[11] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(a1[12] ^ v13 ^ HIBYTE(v12))];
  v15 = crc_16_l_table[(a1[13] ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[(a1[14] ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(a1[15] ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(a1[16] ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(a1[17] ^ v18 ^ HIBYTE(v17))];
  v20 = crc_16_l_table[(a1[18] ^ v19 ^ HIBYTE(v18))];
  v21 = crc_16_l_table[(a1[19] ^ v20 ^ HIBYTE(v19))];
  v22 = crc_16_l_table[(a1[20] ^ v21 ^ HIBYTE(v20))];
  v23 = crc_16_l_table[(a1[21] ^ v22 ^ HIBYTE(v21))];
  v24 = crc_16_l_table[(a1[22] ^ v23 ^ HIBYTE(v22))];
  v25 = crc_16_l_table[(a1[23] ^ v24 ^ HIBYTE(v23))];
  v26 = crc_16_l_table[(a1[24] ^ v25 ^ HIBYTE(v24))];
  v27 = crc_16_l_table[(a1[25] ^ v26 ^ HIBYTE(v25))];
  v28 = crc_16_l_table[(v27 ^ HIBYTE(v26)) ^ 1];
  v29 = crc_16_l_table[(a1[27] ^ v28 ^ HIBYTE(v27))];
  v30 = crc_16_l_table[(a1[28] ^ v29 ^ HIBYTE(v28))];
  v31 = crc_16_l_table[(a1[29] ^ v30 ^ HIBYTE(v29))];
  v32 = crc_16_l_table[(a1[30] ^ v31 ^ HIBYTE(v30))];
  v33 = crc_16_l_table[(a1[31] ^ v32 ^ HIBYTE(v31))];
  v34 = crc_16_l_table[(v33 ^ HIBYTE(v32)) ^ 0xA];
  v35 = crc_16_l_table[(v34 ^ HIBYTE(v33))];
  v36 = crc_16_l_table[(a1[34] ^ v35 ^ HIBYTE(v34))];
  v37 = crc_16_l_table[(a1[35] ^ v36 ^ HIBYTE(v35))];
  v38 = crc_16_l_table[(a1[36] ^ v37 ^ HIBYTE(v36))];
  v39 = crc_16_l_table[(a1[37] ^ v38 ^ HIBYTE(v37))];
  v40 = crc_16_l_table[(v39 ^ HIBYTE(v38)) ^ 0x74];
  v41 = crc_16_l_table[(v40 ^ HIBYTE(v39)) ^ 0x78];
  v42 = crc_16_l_table[(v41 ^ HIBYTE(v40)) ^ 0x74];
  *(a1 + 21) = crc_16_l_table[(v42 ^ HIBYTE(v41))] ^ ~(v42 >> 8);
  if (a2 >= 0x58)
  {
    bzero(__src, 0x800uLL);
    v46 = 0;
    v47 = 0;
    do
    {
      while (1)
      {
        v48 = a1[v46];
        v49 = v47;
        v50 = v47 + 1;
        if ((v48 - 125) > 1)
        {
          break;
        }

        v47 += 2;
        __src[v50] = v48 & 0x5F;
        __src[v49] = 125;
        if (++v46 == 44)
        {
          goto LABEL_9;
        }
      }

      ++v47;
      __src[v49] = v48;
      ++v46;
    }

    while (v46 != 44);
LABEL_9:
    memcpy(a1, __src, v47);
    result = (v47 + 1);
    a1[v47] = 126;
    v51 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_4:
    result = 0xFFFFFFFFLL;
    v44 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t APPLIB_DIAG_GetICCID(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2 < 64)
  {
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 4727168;
  a1[4] = 1;
  *(a1 + 5) = 0;
  a1[7] = 0;
  a1[8] = 119;
  *(a1 + 9) = 0;
  a1[11] = 0;
  *(a1 + 6) = 4097;
  *(a1 + 14) = 0uLL;
  a1[30] = 107;
  *(a1 + 31) = 0;
  a1[33] = 0;
  a1[34] = 107;
  *(a1 + 35) = 0;
  *(a1 + 38) = 0;
  a1[42] = 1;
  *(a1 + 43) = 0;
  *(a1 + 46) = 0;
  a1[50] = 10;
  v2 = 440;
  *(a1 + 51) = 0;
  LOWORD(v3) = -1;
  v4 = a1;
  do
  {
    v5 = *v4++;
    v3 = crc_16_l_table[(v5 ^ v3)] ^ ((v3 & 0xFF00) >> 8);
    v2 -= 8;
  }

  while (v2);
  *(a1 + 55) = ~v3;
  if (a2 >= 114)
  {
    bzero(__src, 0x800uLL);
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = a1[v9];
        v12 = v10;
        v13 = v10 + 1;
        if ((v11 - 125) > 1)
        {
          break;
        }

        v10 += 2;
        __src[v13] = v11 & 0x5F;
        __src[v12] = 125;
        if (++v9 == 57)
        {
          goto LABEL_11;
        }
      }

      ++v10;
      __src[v12] = v11;
      ++v9;
    }

    while (v9 != 57);
LABEL_11:
    memcpy(a1, __src, v10);
    result = (v10 + 1);
    a1[v10] = 126;
    v14 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_6:
    result = 0xFFFFFFFFLL;
    v7 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t APPLIB_DIAG_Read_Meid(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = -26842;
    v3 = 1064;
    a1[2] = 7;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_Meid(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 1943, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_Msl(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    strcpy(a1, "&U");
    v3 = 1064;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(a1 + v8);
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      *(a1 + v9) = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_Msl(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 85, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_Otksl(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    strcpy(a1, "&U");
    v3 = 1064;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(a1 + v8);
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      *(a1 + v9) = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_Otksl(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 219, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_AKey(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 25, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_AKeyCSum(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 26, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_BlueToothAddr(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50001, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_BlueToothAddr(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 20774;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_WiFi_MAC_Addr(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50002, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_WiFi_MAC_Addr(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 21030;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_WiFi_Cal_Data(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 64)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50003, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_WiFi_Cal_Data(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 21286;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_USB2ETHERNET_MAC_Addr(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50004, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_USB2ETHERNET_MAC_Addr(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 21542;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_GetSerialNumAndChipID(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x9B390003000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x9B390003000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetNonce(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x82E10002000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x82E10002000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SfpNvBackup(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0xFC590007000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xFC590007000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SfpNvRestore(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x7F910008000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x7F910008000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadRootManifest(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x17)
  {
    bzero(a1, a2);
    *a1 = 851275;
    a1[1] = 10;
    *(a1 + 4) = 5546;
    if (a2 >= 20)
    {
      *a1 = 0xA000CFD4BLL;
      *(a1 + 4) = 5546;
      *(a1 + 10) = 126;
      return 11;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_StartProvision(_WORD *a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a1 && 2 * a4 + 22 < a2)
  {
    bzero(a1, a2);
    *a1 = 851531;
    a1[2] = 0;
    a1[3] = a4;
    memcpy(a1 + 4, a3, a4);
    v8 = 8 * (a4 + 8);
    if (8 * (a4 + 8))
    {
      LOWORD(v9) = -1;
      v10 = a1;
      do
      {
        v11 = *v10++;
        v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
        v8 -= 8;
      }

      while (v8);
      v12 = ~v9;
      v13 = ~v9 >> 8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(a1 + a4 + 8) = v12;
    *(a1 + a4 + 9) = v13;
    v16 = a4 + 10;
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __src[v22] = v19 & 0x5F;
            __src[v21] = 125;
            if (!--v16)
            {
              goto LABEL_19;
            }
          }

          ++v17;
          __src[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_19:
      memcpy(a1, __src, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FinishProvision(_WORD *a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a1 && 2 * a4 + 22 < a2)
  {
    bzero(a1, a2);
    *a1 = 851531;
    a1[2] = 1;
    a1[3] = a4;
    memcpy(a1 + 4, a3, a4);
    v8 = 8 * (a4 + 8);
    if (8 * (a4 + 8))
    {
      LOWORD(v9) = -1;
      v10 = a1;
      do
      {
        v11 = *v10++;
        v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
        v8 -= 8;
      }

      while (v8);
      v12 = ~v9;
      v13 = ~v9 >> 8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(a1 + a4 + 8) = v12;
    *(a1 + a4 + 9) = v13;
    v16 = a4 + 10;
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __src[v22] = v19 & 0x5F;
            __src[v21] = 125;
            if (!--v16)
            {
              goto LABEL_19;
            }
          }

          ++v17;
          __src[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_19:
      memcpy(a1, __src, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_WriteCalibrationManifest(_WORD *a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a1 || 2 * a4 + 22 >= a2)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  bzero(a1, a2);
  *a1 = 851531;
  a1[2] = 6;
  a1[3] = a4;
  memcpy(a1 + 4, a3, a4);
  v8 = a4 + 8;
  v9 = 8 * (a4 + 8);
  if (8 * (a4 + 8))
  {
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + v8) = ~v10;
    *(a1 + a4 + 9) = ~v10 >> 8;
    result = 0xFFFFFFFFLL;
    if (a4 > 0x3F6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + v8) = 0;
    *(a1 + a4 + 9) = 0;
    result = 0xFFFFFFFFLL;
    if (a4 > 0x3F6)
    {
      goto LABEL_9;
    }
  }

  v15 = a4 + 10;
  if (2 * v15 <= a2)
  {
    bzero(__src, 0x800uLL);
    v16 = 0;
    v17 = 0;
    do
    {
      while (1)
      {
        v18 = *(a1 + v16);
        v19 = v17;
        v20 = v17 + 1;
        if ((v18 - 125) > 1)
        {
          break;
        }

        v17 += 2;
        __src[v20] = v18 & 0x5F;
        __src[v19] = 125;
        if (v15 == ++v16)
        {
          goto LABEL_16;
        }
      }

      ++v17;
      __src[v19] = v18;
      ++v16;
    }

    while (v15 != v16);
LABEL_16:
    memcpy(a1, __src, v17);
    result = (v17 + 1);
    *(a1 + v17) = 126;
  }

LABEL_9:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ReadCalibrationBackup(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0xCFE90005000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xCFE90005000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_BackupCalibrationData(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0xD6310004000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xD6310004000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_RestoreCalibrationData(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x66490009000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x66490009000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadManifestStatus(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x53D000C000CFD4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x53D000C000CFD4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_CheckCalibrationData(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x129000D000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x129000D000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadCalCounter(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x2B41000E000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x2B41000E000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ETLSMSCreateAddress(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if ((v4 & 0xF0) != 0)
  {
    v5 = 15;
  }

  else
  {
    v5 = v4;
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 1) = 0;
  memcpy((a1 + 1), __s, v5);
  return 1;
}

uint64_t ETLSMSCreateMessage(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if ((v4 & 0xF8u) <= 0xC7uLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = -57;
  }

  *a1 = v5;
  *(a1 + 17) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 129) = 0u;
  *(a1 + 145) = 0u;
  *(a1 + 161) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 1) = 0u;
  memcpy((a1 + 1), __s, v5);
  return 1;
}

uint64_t ETLSMSCreateSendSMSCommand(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v6, v7, v8, v9, v10, v11, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v20 = "ETLSubsysAddHeaderInternal";
    v21 = "Failed to inject\n";
LABEL_15:
    _ETLDebugPrint(v20, v21, v12, v13, v14, v15, v16, v17, v22);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 0xD7)
  {
    v22 = 216;
    v20 = "ETLRequireFreeSpace";
    v21 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_15;
  }

  if (*a2 > 0xFu)
  {
    return 0;
  }

  if (*a3 > 0xC7u)
  {
    return 0;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  if (!HDLCFrameInject())
  {
    return 0;
  }

  v18 = *a3;
  if (!HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLSMSParseSendSMSResponse(unsigned int *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
    return 0;
  }

  else
  {
    v9 = **a1;
    if (v9 == 75)
    {
      if (BYTE1(v9) == 252)
      {
        v10 = HIWORD(v9);
        if (v10 == 1)
        {
          if (v8 - 4 <= 1)
          {
            _ETLDebugPrint("ETLSMSParseSendSMSResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 2);
            return 0;
          }

          else
          {
            v11 = *(*a1 + 4);
            *a2 = v11;
            _ETLDebugPrint("ETLSMSParseSendSMSResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, v11);
            return 1;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v9));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLSMSSendSMS(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5)
{
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLSMSSendSMS", "Failed to create command frame\n", v10, v11, v12, v13, v14, v15, v35);
    goto LABEL_24;
  }

  if (!ETLSMSCreateSendSMSCommand(v38, a2, a3))
  {
    goto LABEL_24;
  }

  v16 = malloc((2 * DWORD2(v38[0]) + 32));
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = HDLCFrameEncode();
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  v40 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v17, v18);
  }

  if (!*a1)
  {
LABEL_26:
    free(v17);
    goto LABEL_24;
  }

  v20 = (*a1)(a1, v17, v19, &v40, 1, a5, 0);
  v21 = v40;
  free(v17);
  if (v20)
  {
    v22 = v21 == v19;
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
    goto LABEL_24;
  }

  LOBYTE(v40) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v23 = ETLFindMatchingResponseUsingBuffer(a1, v36, &_ETLResponseRingBuffer, &v40, a5);
  v30 = 0;
  if (v23 && v40 == 75)
  {
    if (DWORD2(v36[0]) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v24, v25, v26, v27, v28, v29, DWORD2(v36[0]));
    }

    else
    {
      v31 = **&v36[0];
      if (**&v36[0] == 75)
      {
        if (BYTE1(v31) == 252)
        {
          v32 = HIWORD(v31);
          if (v32 == 1)
          {
            if ((DWORD2(v36[0]) - 4) > 1)
            {
              v33 = *(*&v36[0] + 4);
              *a4 = v33;
              _ETLDebugPrint("ETLSMSParseSendSMSResponse", "Status was %u\n", v24, v25, v26, v27, v28, v29, v33);
              v30 = 1;
              goto LABEL_25;
            }

            _ETLDebugPrint("ETLSMSParseSendSMSResponse", "response requires %u bytes, got %u\n", v24, v25, v26, v27, v28, v29, 2);
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, v32);
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, BYTE1(v31));
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, **&v36[0]);
      }
    }

LABEL_24:
    v30 = 0;
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v30;
}

uint64_t ETLFlushResponseFull(uint64_t a1)
{
  TelephonyUtilRingBufferReset();
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t ETLGetResponse(uint64_t a1, _BYTE **a2, _BYTE *a3)
{
  if (!_ETLResponseRingBuffer)
  {
    v5 = a1;
    TelephonyUtilRingBufferInitialize();
    a1 = v5;
  }

  result = ETLFrameReadFromTransport(a1, a2, &_ETLResponseRingBuffer, _ETLResponseHDLCReadParameters);
  if (result)
  {
    v7 = *(a2 + 2);
    if ((_ETLDebugFlags & 2) != 0)
    {
      v8 = result;
      off_2A18A5818(&str_3, 1, *a2, v7);
      result = v8;
      LODWORD(v7) = *(a2 + 2);
    }

    if (v7)
    {
      *a3 = **a2;
    }
  }

  return result;
}

uint64_t ETLGetResponseUsingBuffer(uint64_t a1, _BYTE **a2, uint64_t *a3, _BYTE *a4)
{
  result = ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters);
  if (result)
  {
    v7 = *(a2 + 2);
    if ((_ETLDebugFlags & 2) != 0)
    {
      v8 = result;
      off_2A18A5818(&str_3, 1, *a2, v7);
      result = v8;
      LODWORD(v7) = *(a2 + 2);
    }

    if (v7)
    {
      *a4 = **a2;
    }
  }

  return result;
}

uint64_t ETLFindMatchingResponse(uint64_t a1, unsigned __int8 **a2, _BYTE *a3, unsigned int a4)
{
  if (!_ETLResponseRingBuffer)
  {
    v6 = a1;
    v7 = a2;
    TelephonyUtilRingBufferInitialize();
    a1 = v6;
    a2 = v7;
  }

  return ETLFindMatchingResponseUsingBuffer(a1, a2, &_ETLResponseRingBuffer, a3, a4);
}

uint64_t ETLFindMatchingResponseUsingBuffer(uint64_t a1, unsigned __int8 **a2, uint64_t *a3, _BYTE *a4, unsigned int a5)
{
  v10 = mach_absolute_time();
  if (a5 == -1)
  {
    if (ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters))
    {
      do
      {
        v18 = *(a2 + 2);
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 1, *a2, v18);
          v18 = *(a2 + 2);
        }

        if (v18)
        {
          v19 = **a2;
          if (v19 == *a4)
          {
            return 1;
          }
        }

        else
        {
          v19 = 0;
          if (!*a4)
          {
            return 1;
          }
        }

        if ((v19 - 19) <= 0x34 && ((1 << (v19 - 19)) & 0x10800000000027) != 0)
        {
LABEL_26:
          _ETLDebugPrint("ETLFindMatchingResponseUsingBuffer", "Received error code %u\n", v12, v18, v14, v15, v16, v17, v19);
          *a4 = v19;
          return 1;
        }

        HDLCFrameFree();
      }

      while ((ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters) & 1) != 0);
    }
  }

  else
  {
    v11 = v10;
    while (ETLFrameReadFromTransport(a1, a2, a3, _ETLResponseHDLCReadParameters))
    {
      v18 = *(a2 + 2);
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 1, *a2, v18);
        v18 = *(a2 + 2);
      }

      if (v18)
      {
        v19 = **a2;
        v20 = *a4;
        v21 = v19 == v20;
        if (v19 == v20)
        {
          return v21;
        }
      }

      else
      {
        v19 = 0;
        v21 = *a4 == 0;
        if (!*a4)
        {
          return v21;
        }
      }

      if ((v19 - 19) <= 0x34 && ((1 << (v19 - 19)) & 0x10800000000027) != 0)
      {
        goto LABEL_26;
      }

      HDLCFrameFree();
      v22 = mach_absolute_time();
      v23 = *&ETLGetTimeDifferenceMilliseconds_conversion;
      if (*&ETLGetTimeDifferenceMilliseconds_conversion == 0.0)
      {
        info = 0xAAAAAAAAAAAAAAAALL;
        mach_timebase_info(&info);
        LODWORD(v25) = info.denom;
        LODWORD(v24) = info.numer;
        v23 = v24 * 0.000001 / v25;
        ETLGetTimeDifferenceMilliseconds_conversion = *&v23;
      }

      if ((v23 * (v22 - v11)) >= a5)
      {
        return v21;
      }
    }
  }

  _ETLDebugPrint("ETLFindMatchingResponseUsingBuffer", "Failed to receive response from Baseband\n", v12, v13, v14, v15, v16, v17, v27);
  return 0;
}

uint64_t ETLSendCommand(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = malloc((2 * *(a2 + 8) + 32));
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = HDLCFrameEncode();
  if (v7)
  {
    v8 = v7;
    v9 = -1431655766;
    v13 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v6, v7);
    }

    if (*a1)
    {
      v10 = (*a1)(a1, v6, v8, &v13, 1, a3, 0);
      v9 = v13;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  free(v6);
  return v11;
}

uint64_t ETLSendRaw(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (HDLCFrameCreateUplink())
  {
    v8 = HDLCFrameInjectUnsignedChar();
    if (a4 && v8)
    {
      if ((HDLCFrameInject() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!v8)
    {
      goto LABEL_14;
    }

    v10 = malloc(0x55555574uLL);
    if (v10)
    {
      v11 = v10;
      v12 = HDLCFrameEncode();
      if (v12)
      {
        v13 = v12;
        v14 = -1431655766;
        v17 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v11, v12);
        }

        if (*a1)
        {
          v15 = (*a1)(a1, v11, v13, &v17, 1, a5, 0);
          v14 = v17;
        }

        else
        {
          v15 = 0;
        }

        if (v14 == v13)
        {
          v9 = v15;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      free(v11);
      goto LABEL_21;
    }

LABEL_14:
    v9 = 0;
LABEL_21:
    HDLCFrameFree();
    return v9;
  }

  return 0;
}

BOOL ETLRequireFreeSpace(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < a2)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v3, v4, v5, v6, v7, v8, a2);
  }

  return FreeSpace >= a2;
}

BOOL ETLCheckPayloadLength(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = *(a1 + 8) - a2;
  if (v9 < a3)
  {
    _ETLDebugPrint("ETLCheckPayloadLength", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, a3);
  }

  return v9 >= v8;
}

BOOL ETLExpectResponseCode(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (a1 != a2)
  {
    _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", a3, a4, a5, a6, a7, a8, a1);
  }

  return v9 == a2;
}

uint64_t ETLNVRAMExtTranslateID(int a1, const char **a2)
{
  result = 0;
  if (a1 <= 67288)
  {
    if (a1 > 65767)
    {
      if (a1 == 65768)
      {
        v4 = "/nv/item_files/hsusb/device_composition";
      }

      else
      {
        if (a1 != 67288)
        {
          return result;
        }

        v4 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh0";
      }
    }

    else if (a1 == 65633)
    {
      v4 = "/nv/item_files/modem/mmode/lte_bandpref";
    }

    else
    {
      if (a1 != 65728)
      {
        return result;
      }

      v4 = "/nv/item_files/modem/utils/a2/sps_dynamic_usb_endpoint";
    }
  }

  else if (a1 <= 67296)
  {
    if (a1 == 67289)
    {
      v4 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh1";
    }

    else
    {
      if (a1 != 67290)
      {
        return result;
      }

      v4 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_enable";
    }
  }

  else
  {
    switch(a1)
    {
      case 67297:
        v4 = "/nv/item_files/gps/cgps/me/gnss_main_wwan_tx_antenna_im_jamming_power";
        break;
      case 67298:
        v4 = "/nv/item_files/gps/cgps/me/gnss_aux_wwan_tx_antenna_im_jamming_power";
        break;
      case 67299:
        v4 = "/nv/item_files/gps/cgps/me/gnss_wlan_bt_delta_tx_antenna_im_jamming_power";
        break;
      default:
        return result;
    }
  }

  *a2 = v4;
  a2[1] = 0xAAAAAAAA00000000;
  return 1;
}

uint64_t ETLNVRAMExtWrite(void *a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  *a5 = 0xFFFF;
  if (a2 <= 67288)
  {
    if (a2 > 65767)
    {
      if (a2 == 65768)
      {
        v7 = "/nv/item_files/hsusb/device_composition";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }

      if (a2 == 67288)
      {
        v7 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh0";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }
    }

    else
    {
      if (a2 == 65633)
      {
        v7 = "/nv/item_files/modem/mmode/lte_bandpref";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }

      if (a2 == 65728)
      {
        v7 = "/nv/item_files/modem/utils/a2/sps_dynamic_usb_endpoint";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      }
    }
  }

  else if (a2 <= 67296)
  {
    if (a2 == 67289)
    {
      v7 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh1";
      return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
    }

    if (a2 == 67290)
    {
      v7 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_enable";
      return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
    }
  }

  else
  {
    switch(a2)
    {
      case 67297:
        v7 = "/nv/item_files/gps/cgps/me/gnss_main_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      case 67298:
        v7 = "/nv/item_files/gps/cgps/me/gnss_aux_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
      case 67299:
        v7 = "/nv/item_files/gps/cgps/me/gnss_wlan_bt_delta_tx_antenna_im_jamming_power";
        return ETLEFS2Put(a1, 0, 524352, 0, v7, a3, a4, a5, a6);
    }
  }

  *a5 = 0x10000;
  return 0;
}

uint64_t ETLNVRAMExtRead(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, void *a3, unsigned int a4, _DWORD *a5, unsigned int *a6, unsigned int a7)
{
  *a5 = 0xFFFF;
  if (a2 <= 67288)
  {
    if (a2 > 65767)
    {
      if (a2 == 65768)
      {
        v9 = "/nv/item_files/hsusb/device_composition";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }

      if (a2 == 67288)
      {
        v9 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh0";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }
    }

    else
    {
      if (a2 == 65633)
      {
        v9 = "/nv/item_files/modem/mmode/lte_bandpref";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }

      if (a2 == 65728)
      {
        v9 = "/nv/item_files/modem/utils/a2/sps_dynamic_usb_endpoint";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      }
    }
  }

  else if (a2 <= 67296)
  {
    if (a2 == 67289)
    {
      v9 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_thresh1";
      return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
    }

    if (a2 == 67290)
    {
      v9 = "/nv/item_files/modem/hdr/srch/hdr_acq_div_enable";
      return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    switch(a2)
    {
      case 67297:
        v9 = "/nv/item_files/gps/cgps/me/gnss_main_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      case 67298:
        v9 = "/nv/item_files/gps/cgps/me/gnss_aux_wwan_tx_antenna_im_jamming_power";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
      case 67299:
        v9 = "/nv/item_files/gps/cgps/me/gnss_wlan_bt_delta_tx_antenna_im_jamming_power";
        return ETLEFS2Get(a1, 0, 0, v9, a3, a4, a5, a6, a7);
    }
  }

  *a5 = 0x10000;
  return 0;
}

uint64_t APPLIB_DIAG_GPS_SA_RF_VERIF_MODE_SWITCH(_DWORD *a1, int a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x12)
  {
    goto LABEL_13;
  }

  bzero(a1, a2);
  *a1 = 6622539;
  *(a1 + 2) = 276;
  *(a1 + 6) = a3;
  v7 = crc_16_l_table[a3 ^ 0x3B] ^ 0xFFB0;
  *(a1 + 7) = crc_16_l_table[a3 ^ 0x3B] ^ 0xB0;
  v8 = HIBYTE(v7);
  *(a1 + 8) = HIBYTE(v7);
  if (a2 < 18)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v9 = v7;
  bzero(v17, 0x7F9uLL);
  __src = 6622539;
  v15 = 276;
  if ((a3 - 125) <= 1)
  {
    v17[0] = a3 & 0x5F;
    v16 = 125;
    v10 = 8;
    v11 = 9;
    if ((v9 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = a3;
  v10 = 7;
  v11 = 8;
  if ((v9 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v11) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v11) = v10 + 2;
  }

LABEL_10:
  *(&__src + v10) = v9;
  v12 = v11 + 1;
  if ((v8 - 125) <= 1)
  {
    *(&__src + v12) = v8 & 0x5F;
    LOBYTE(v8) = 125;
    LODWORD(v12) = v11 + 2;
  }

  *(&__src + v11) = v8;
  memcpy(a1, &__src, v12);
  result = (v12 + 1);
  *(a1 + v12) = 126;
LABEL_13:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_HW_CONFIG(char *a1, int a2, uint64_t a3)
{
  v38 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x16)
  {
    bzero(a1, a2);
    *a1 = 6622539;
    *(a1 + 2) = 12826;
    v7 = *(a3 + 4);
    *(a1 + 6) = *a3;
    a1[10] = v7;
    *(a1 + 11) = 0;
    a1[13] = 0;
    v8 = a1[6];
    v9 = crc_16_l_table[v8 ^ 0x33];
    v10 = crc_16_l_table[a1[7] ^ 0xD6 ^ v9];
    v11 = crc_16_l_table[(a1[8] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[9] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[10] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[crc_16_l_table[(v14 ^ HIBYTE(v13))] ^ (v14 >> 8)];
    *(a1 + 7) = v16 ^ ~HIBYTE(crc_16_l_table[(v14 ^ HIBYTE(v13))]);
    if (a2 >= 32)
    {
      bzero(v37, 0x7FFuLL);
      v17 = *a1;
      if ((v17 - 125) > 1)
      {
        v18 = 1;
      }

      else
      {
        v37[0] = v17 & 0x5F;
        v18 = 2;
        LOBYTE(v17) = 125;
      }

      __src = v17;
      v19 = a1[1];
      v20 = v18 + 1;
      if ((v19 - 125) <= 1)
      {
        v37[v20 - 1] = v19 & 0x5F;
        LODWORD(v20) = v18 + 2;
        LOBYTE(v19) = 125;
      }

      v37[v18 - 1] = v19;
      *&v37[v20 - 1] = 840564837;
      v21 = v20 + 5;
      if ((v8 - 125) <= 1)
      {
        v37[v21 - 1] = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v21) = v20 + 6;
      }

      v37[v20 + 3] = v8;
      v22 = a1[7];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v37[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v37[v21 - 1] = v22;
      v24 = a1[8];
      v25 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v37[v25 - 1] = v24 & 0x5F;
        LOBYTE(v24) = 125;
        LODWORD(v25) = v23 + 2;
      }

      v37[v23 - 1] = v24;
      v26 = a1[9];
      v27 = v25 + 1;
      if ((v26 - 125) <= 1)
      {
        v37[v27 - 1] = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v27) = v25 + 2;
      }

      v37[v25 - 1] = v26;
      v28 = ~(v16 ^ BYTE1(v15));
      v29 = a1[10];
      v30 = v27 + 1;
      if ((v29 - 125) <= 1)
      {
        v37[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v27 + 2;
      }

      v31 = ((v16 ^ ~(v15 >> 8)) >> 8);
      v37[v27 - 1] = v29;
      v32 = &v37[v30 - 1];
      *v32 = 0;
      v32[2] = 0;
      v33 = v30 + 4;
      if ((v28 - 125) <= 1)
      {
        v37[v33 - 1] = v28 & 0x5F;
        LOBYTE(v28) = 125;
        LODWORD(v33) = v30 + 5;
      }

      v37[v30 + 2] = v28;
      v34 = v33 + 1;
      if ((v31 - 125) <= 1)
      {
        v37[v34 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v34) = v33 + 2;
      }

      v37[v33 - 1] = v31;
      memcpy(a1, &__src, v34);
      result = (v34 + 1);
      a1[v34] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_FTM_GNSS_EXTERNAL_LNA(unsigned __int8 *a1, int a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x11)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 2231115;
  a1[4] = -3;
  a1[6] = a3;
  v7 = a1[5];
  v8 = crc_16_l_table[crc_16_l_table[v7 ^ 0xBA] ^ a3 ^ 0xEC];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(crc_16_l_table[v7 ^ 0xBA]))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  v12 = v11 ^ ~(v10 >> 8);
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v31, 0x7FAuLL);
  __src = 2231115;
  v29 = -3;
  if ((v7 - 125) <= 1)
  {
    v31[0] = v7 & 0x5F;
    v30 = 125;
    v13 = 7;
    v14 = 8;
    if ((a3 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = v7;
  v13 = 6;
  v14 = 7;
  if ((a3 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v14) = a3 & 0x5F;
    LOBYTE(a3) = 125;
    LODWORD(v14) = v13 + 2;
  }

LABEL_10:
  *(&__src + v13) = a3;
  v15 = a1[7];
  v16 = v14 + 1;
  if ((v15 - 125) <= 1)
  {
    *(&__src + v16) = v15 & 0x5F;
    LOBYTE(v15) = 125;
    LODWORD(v16) = v14 + 2;
  }

  *(&__src + v14) = v15;
  v17 = a1[8];
  v18 = v16 + 1;
  if ((v17 - 125) <= 1)
  {
    *(&__src + v18) = v17 & 0x5F;
    LOBYTE(v17) = 125;
    LODWORD(v18) = v16 + 2;
  }

  *(&__src + v16) = v17;
  v19 = ~(v11 ^ BYTE1(v10));
  v20 = a1[9];
  v21 = v18;
  v22 = v18 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&__src + v22) = v20 & 0x5F;
    LOBYTE(v20) = 125;
    LODWORD(v22) = v21 + 2;
  }

  v23 = (v11 ^ ~(v10 >> 8)) >> 8;
  *(&__src + v21) = v20;
  v24 = v22;
  v25 = v22 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v25) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v19;
  v26 = v25 + 1;
  if (BYTE1(v12) - 125 <= 1)
  {
    *(&__src + v26) = BYTE1(v12) & 0x5F;
    v23 = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = v23;
  memcpy(a1, &__src, v26);
  result = (v26 + 1);
  a1[v26] = 126;
LABEL_21:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_StartIQTest(unsigned __int8 *a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 16)
  {
    bzero(a1, a2);
    *a1 = xmmword_2977CACB0;
    *(a1 + 8) = 2560;
    v5 = crc_16_l_table[a1[7] ^ 0x6DLL];
    v6 = crc_16_l_table[a1[8] ^ 0xA6 ^ v5];
    v7 = crc_16_l_table[(a1[9] ^ v6 ^ HIBYTE(v5))];
    v8 = crc_16_l_table[(a1[10] ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(a1[11] ^ v8 ^ HIBYTE(v7))];
    v10 = crc_16_l_table[(a1[12] ^ v9 ^ HIBYTE(v8))];
    v11 = crc_16_l_table[(a1[13] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[14] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[15] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12))];
    LOWORD(v13) = crc_16_l_table[v14 ^ (v13 >> 8) ^ 0xA];
    v15 = crc_16_l_table[(a1[18] ^ v13 ^ HIBYTE(v14))];
    LOWORD(v13) = crc_16_l_table[(a1[19] ^ v15 ^ BYTE1(v13))];
    v16 = crc_16_l_table[(a1[20] ^ v13 ^ HIBYTE(v15))];
    *(a1 + 11) = crc_16_l_table[(a1[21] ^ v16 ^ BYTE1(v13))] ^ ~(v16 >> 8);
    if (a2 >= 0x30)
    {
      bzero(__src, 0x800uLL);
      v17 = 0;
      v18 = 0;
      do
      {
        while (1)
        {
          v19 = a1[v17];
          v20 = v18;
          v21 = v18 + 1;
          if ((v19 - 125) > 1)
          {
            break;
          }

          v18 += 2;
          __src[v21] = v19 & 0x5F;
          __src[v20] = 125;
          if (++v17 == 24)
          {
            goto LABEL_9;
          }
        }

        ++v18;
        __src[v20] = v19;
        ++v17;
      }

      while (v17 != 24);
LABEL_9:
      memcpy(a1, __src, v18);
      result = (v18 + 1);
      a1[v18] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_GEN8_SV_TRACK(char *a1, int a2, _DWORD *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x12)
  {
    bzero(a1, a2);
    *a1 = 6622539;
    *(a1 + 2) = 12827;
    v7 = *(a3 + 3);
    *(a1 + 6) = *a3;
    *(a1 + 9) = v7;
    v8 = a1[6];
    LOWORD(v7) = crc_16_l_table[v8 ^ 0xEB];
    v9 = crc_16_l_table[(a1[7] ^ v7) ^ 0xCF];
    LOWORD(v7) = crc_16_l_table[(a1[8] ^ v9 ^ BYTE1(v7))];
    v10 = crc_16_l_table[(a1[9] ^ v7 ^ HIBYTE(v9))];
    LOWORD(v7) = crc_16_l_table[(a1[10] ^ v10 ^ BYTE1(v7))];
    v11 = crc_16_l_table[(a1[11] ^ v7 ^ HIBYTE(v10))];
    v12 = crc_16_l_table[(a1[12] ^ v11 ^ BYTE1(v7))];
    *(a1 + 13) = v12 ^ ~HIBYTE(crc_16_l_table[(a1[11] ^ v7 ^ HIBYTE(v10))]);
    if (a2 >= 30)
    {
      bzero(v38, 0x7F9uLL);
      __src = 6622539;
      v36 = 12827;
      if ((v8 - 125) > 1)
      {
        v13 = 7;
      }

      else
      {
        v38[0] = v8 & 0x5F;
        v13 = 8;
        LOBYTE(v8) = 125;
      }

      v37 = v8;
      v14 = a1[7];
      v15 = v13 + 1;
      if ((v14 - 125) <= 1)
      {
        *(&__src + v15) = v14 & 0x5F;
        LOBYTE(v14) = 125;
        LODWORD(v15) = v13 + 2;
      }

      *(&__src + v13) = v14;
      v16 = a1[8];
      v17 = v15;
      v18 = v15 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v18) = v16 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v16) = 125;
      }

      *(&__src + v17) = v16;
      v19 = a1[9];
      v20 = v18;
      v21 = v18 + 1;
      if ((v19 - 125) <= 1)
      {
        *(&__src + v21) = v19 & 0x5F;
        LOBYTE(v19) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      v22 = a1[10];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        *(&__src + v23) = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      *(&__src + v21) = v22;
      v24 = a1[11];
      v25 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        *(&__src + v25) = v24 & 0x5F;
        LOBYTE(v24) = 125;
        LODWORD(v25) = v23 + 2;
      }

      *(&__src + v23) = v24;
      v26 = ~(v12 ^ BYTE1(v11));
      v27 = a1[12];
      v28 = v25;
      v29 = v25 + 1;
      if ((v27 - 125) <= 1)
      {
        *(&__src + v29) = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v30 = ((v12 ^ ~(v11 >> 8)) >> 8);
      *(&__src + v28) = v27;
      v31 = v29;
      v32 = v29 + 1;
      if ((v26 - 125) <= 1)
      {
        *(&__src + v32) = v26 & 0x5F;
        LOBYTE(v26) = 125;
        LODWORD(v32) = v31 + 2;
      }

      *(&__src + v31) = v26;
      v33 = v32 + 1;
      if ((v30 - 125) <= 1)
      {
        *(&__src + v33) = v30 & 0x5F;
        LOBYTE(v30) = 125;
        LODWORD(v33) = v32 + 2;
      }

      *(&__src + v32) = v30;
      memcpy(a1, &__src, v33);
      result = (v33 + 1);
      a1[v33] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_Byte(char *a1, int a2, int a3, void *__src, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5 && a3 && a1 && a2 >= 0xD && __src)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 5;
    *(a1 + 1) = a3;
    a1[5] = a5;
    memcpy(a1 + 6, __src, a5);
    v9 = 8 * (a5 + 6);
    if (8 * (a5 + 6))
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      v13 = ~v10;
      v14 = ~v10 >> 8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    a1[a5 + 6] = v13;
    a1[a5 + 7] = v14;
    v15 = (a5 + 8);
    result = 0xFFFFFFFFLL;
    if (v15 <= 1024 && 2 * v15 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = a1;
        do
        {
          while (1)
          {
            v19 = *v17++;
            v18 = v19;
            v20 = v16;
            v21 = v16 + 1;
            if ((v19 - 125) > 1)
            {
              break;
            }

            v16 += 2;
            __srca[v21] = v18 & 0x5F;
            __srca[v20] = 125;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          ++v16;
          __srca[v20] = v18;
          --v15;
        }

        while (v15);
      }

LABEL_20:
      memcpy(a1, __srca, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_Word(char *a1, int a2, int a3, void *__src, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5 && a3 && a1 && a2 >= 0xD && __src)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 6;
    *(a1 + 1) = a3;
    v8 = 2 * a5;
    a1[5] = a5;
    memcpy(a1 + 6, __src, 2 * a5);
    v9 = 8 * (v8 + 6);
    if ((v9 & 0xFFF0) != 0)
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      v13 = ~v10;
      v14 = ~v10 >> 8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    a1[v8 + 6] = v13;
    a1[v8 + 7] = v14;
    v15 = (v8 + 8);
    result = 0xFFFFFFFFLL;
    if (v15 <= 1024 && 2 * v15 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = a1;
        do
        {
          while (1)
          {
            v19 = *v17++;
            v18 = v19;
            v20 = v16;
            v21 = v16 + 1;
            if ((v19 - 125) > 1)
            {
              break;
            }

            v16 += 2;
            __srca[v21] = v18 & 0x5F;
            __srca[v20] = 125;
            if (!--v15)
            {
              goto LABEL_20;
            }
          }

          ++v16;
          __srca[v20] = v18;
          --v15;
        }

        while (v15);
      }

LABEL_20:
      memcpy(a1, __srca, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_MemoryPoke_DWord(char *a1, int a2, int a3, void *__src, int a5)
{
  v22 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a5)
  {
    if (a3)
    {
      if (a1)
      {
        if (a2 >= 0xD)
        {
          if (__src)
          {
            *a1 = 0;
            *(a1 + 5) = 0;
            *a1 = 7;
            *(a1 + 1) = a3;
            v8 = 4 * a5;
            a1[5] = a5;
            memcpy(a1 + 6, __src, 4 * a5);
            v9 = 8 * (v8 + 6);
            LOWORD(v10) = -1;
            v11 = a1;
            do
            {
              v12 = *v11++;
              v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
              v9 -= 8;
            }

            while (v9);
            a1[v8 + 6] = ~v10;
            a1[v8 + 7] = ~v10 >> 8;
            v13 = (v8 + 8);
            result = 0xFFFFFFFFLL;
            if (v13 <= 1024 && 2 * v13 <= a2)
            {
              bzero(__srca, 0x800uLL);
              if (v13 < 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = 0;
                v15 = a1;
                do
                {
                  while (1)
                  {
                    v17 = *v15++;
                    v16 = v17;
                    v18 = v14;
                    v19 = v14 + 1;
                    if ((v17 - 125) > 1)
                    {
                      break;
                    }

                    v14 += 2;
                    __srca[v19] = v16 & 0x5F;
                    __srca[v18] = 125;
                    if (!--v13)
                    {
                      goto LABEL_17;
                    }
                  }

                  ++v14;
                  __srca[v18] = v16;
                  --v13;
                }

                while (v13);
              }

LABEL_17:
              memcpy(a1, __srca, v14);
              result = (v14 + 1);
              a1[v14] = 126;
            }
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GPS_SessionControl(char *a1, int a2, char a3, void *__src, int a5)
{
  v23 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 39 && __src && a5)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 108;
    a1[1] = a3;
    *(a1 + 1) = a5;
    memcpy(a1 + 4, __src, a5);
    v9 = a5 + 4;
    v10 = 8 * (a5 + 4);
    if (8 * (a5 + 4))
    {
      LOWORD(v11) = -1;
      v12 = a1;
      do
      {
        v13 = *v12++;
        v11 = crc_16_l_table[(v13 ^ v11)] ^ ((v11 & 0xFF00) >> 8);
        v10 -= 8;
      }

      while (v10);
      a1[v9] = ~v11;
      a1[a5 + 5] = ~v11 >> 8;
      result = 0xFFFFFFFFLL;
      if (a5 > 1018)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a1[v9] = 0;
      a1[a5 + 5] = 0;
      result = 0xFFFFFFFFLL;
      if (a5 > 1018)
      {
        goto LABEL_20;
      }
    }

    v14 = (a5 + 6);
    if (2 * v14 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (a5 < -5)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = a1;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            v19 = v15;
            v20 = v15 + 1;
            if ((v18 - 125) > 1)
            {
              break;
            }

            v15 += 2;
            __srca[v20] = v17 & 0x5F;
            __srca[v19] = 125;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }

          ++v15;
          __srca[v19] = v17;
          --v14;
        }

        while (v14);
      }

LABEL_19:
      memcpy(a1, __srca, v15);
      result = (v15 + 1);
      a1[v15] = 126;
    }
  }

LABEL_20:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LZ4_compress_limitedOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v131 = *MEMORY[0x29EDCA608];
  bzero(v130, 0x4000uLL);
  if (v9 > 65546)
  {
    if (v9 <= 0x7E000000)
    {
      v128 = v7;
      v68 = v12 + v9;
      v69 = v11;
      v70 = (v68 - 12);
      OUTLINED_FUNCTION_19();
      v71 = (v12 + 2);
      v122 = v72 - 8;
      v124 = v73;
      v126 = v72;
      v120 = v72 - 6;
      v74 = 0xFFFFLL;
      v14 = v12;
LABEL_67:
      v75 = (v14 + 1);
      v76 = *(v14 + 1);
      do
      {
        v77 = (v76 * v4) >> 20;
        v78 = *v71;
        v79 = *&v130[2 * v77];
        *&v130[2 * v77] = v75 - v12;
        if ((v12 + v79 + v74) >= v75)
        {
          OUTLINED_FUNCTION_28(v75);
          if (v25)
          {
            OUTLINED_FUNCTION_17();
            do
            {
              v86 = v83;
              v87 = v84;
              v88 = v82 + v83;
              v89 = (v81 + v86);
              if (v88 <= v12 || v89 <= v14)
              {
                break;
              }

              v91 = *(v88 - 1);
              --v85;
              v83 = v86 - 1;
              v84 += v80;
            }

            while (*(v89 - 1) == v91);
            OUTLINED_FUNCTION_3();
            if (!(!v25 & v24))
            {
              if (v93 < 15)
              {
                *v69 = 16 * (v89 - v14);
              }

              else
              {
                *v69 = -16;
                if (v93 <= 0x10D)
                {
                  v100 = v86 + v94;
                }

                else
                {
                  OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_34();
                  OUTLINED_FUNCTION_1();
                  v118 = v95;
                  memset(v96, v97, v98);
                  OUTLINED_FUNCTION_2();
                  OUTLINED_FUNCTION_39();
                  OUTLINED_FUNCTION_13();
                  v92 = &v69[v99 + 2];
                  v100 = v99 + v118 + v86;
                }

                *v92 = v100;
                v92 = (v92 + 1);
              }

              v101 = (v92 + (v87 >> 32));
              do
              {
                v92 = OUTLINED_FUNCTION_30(v92);
              }

              while (!v24);
              while (1)
              {
                *v101 = v89 - v102;
                v69 = v101 + 1;
                v14 = v89 + 1;
                if ((v89 + 1) >= v70)
                {
LABEL_93:
                  if (v14 < v122)
                  {
                    OUTLINED_FUNCTION_27();
                    if (v25)
                    {
                      ++v14;
                    }
                  }

                  if (v14 < v120)
                  {
                    OUTLINED_FUNCTION_25();
                    if (v25)
                    {
                      v14 = (v14 + 2);
                    }
                  }

                  if (v14 < v124)
                  {
                    OUTLINED_FUNCTION_9();
                  }
                }

                else
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_29();
                    if (!v25)
                    {
                      break;
                    }

                    v14 += 2;
                    if (v14 >= v70)
                    {
                      goto LABEL_93;
                    }
                  }

                  OUTLINED_FUNCTION_8();
                  v14 = (v14 + (v103 >> 3));
                }

                OUTLINED_FUNCTION_7();
                if (!v25 & v24)
                {
                  break;
                }

                if (v105 < 15)
                {
                  OUTLINED_FUNCTION_11(v104);
                }

                else
                {
                  OUTLINED_FUNCTION_4(v104);
                  if (v24)
                  {
                    v4 = 510;
                    v107 = (v14 - v89 - 529) / 0x1FEu;
                    memset(v101 + 1, 255, v107 * 2 + 2);
                    OUTLINED_FUNCTION_2();
                    OUTLINED_FUNCTION_19();
                    v69 = &v101[v107 + 2];
                  }

                  if (v106 >= 0xFF)
                  {
                    *v69++ = -1;
                    LOBYTE(v106) = v106 + 1;
                  }

                  *v69++ = v106;
                }

                if (v14 > v70)
                {
                  goto LABEL_117;
                }

                *&v130[2 * ((*(v14 - 2) * v4) >> 20)] = v14 - 2 - v12;
                v108 = (*v14 * v4) >> 20;
                v102 = (v12 + *&v130[2 * v108]);
                *&v130[2 * v108] = v14 - v12;
                if ((v102 + v74) < v14 || *v102 != *v14)
                {
                  v71 = (v14 + 2);
                  if (v14 + 2 <= v70)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_117;
                }

                *v69 = 0;
                v101 = v69 + 1;
                v89 = v14;
              }
            }

            goto LABEL_118;
          }
        }

        OUTLINED_FUNCTION_14();
      }

      while (v71 <= v70);
LABEL_117:
      v61 = v126 - v14;
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_24();
      if (v109 > v128)
      {
        goto LABEL_118;
      }

      v111 = v61 - 15;
      if (v61 < 15)
      {
        *v69 = 16 * v61;
      }

      else
      {
        *v69 = -16;
        v112 = v69 + 1;
        if (v61 >= 0x10E)
        {
          OUTLINED_FUNCTION_40();
          if (v24)
          {
            v114 = v115;
          }

          OUTLINED_FUNCTION_12(v113, v114);
          v112 = OUTLINED_FUNCTION_15();
        }

        *v112 = v111;
        v69 = v112;
      }

      v116 = v69 + 1;
      goto LABEL_130;
    }
  }

  else if (v9 <= 0x7E000000)
  {
    v13 = v12 + v9;
    v14 = v12;
    v15 = v11;
    if (v9 >= 0xE)
    {
      v127 = v7;
      v16 = (v13 - 12);
      OUTLINED_FUNCTION_19();
      v121 = (v17 - 8);
      v123 = v18;
      v125 = v17;
      v119 = (v17 - 6);
      v14 = v12;
      v129 = v11;
      v15 = v11;
LABEL_5:
      v19 = *(v14 + 1);
      while (1)
      {
        OUTLINED_FUNCTION_41();
        v22 = v130[v21];
        v130[v21] = v20 - v12;
        if ((v12 + v22 + v23) >= v20 && *(v12 + v22) == *v20)
        {
          break;
        }

        OUTLINED_FUNCTION_32();
        if (!v25 & v24)
        {
LABEL_56:
          LODWORD(v11) = v129;
          v7 = v127;
          v13 = v125;
          goto LABEL_57;
        }
      }

      OUTLINED_FUNCTION_17();
      do
      {
        v32 = v29;
        v33 = v30;
        v34 = v28 + v29;
        v35 = (v27 + v32);
        if (v34 <= v12 || v35 <= v14)
        {
          break;
        }

        v37 = *(v34 - 1);
        --v31;
        v29 = v32 - 1;
        v30 += v26;
      }

      while (*(v35 - 1) == v37);
      OUTLINED_FUNCTION_3();
      if (!(!v25 & v24))
      {
        if (v39 < 15)
        {
          *v15 = 16 * (v35 - v14);
        }

        else
        {
          OUTLINED_FUNCTION_26();
          if (!v25 & v24)
          {
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_34();
            OUTLINED_FUNCTION_1();
            memset(v42, v43, v44);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_39();
            v40 = OUTLINED_FUNCTION_5(v45 + v32);
            v48 = v47 + v46 + v32;
          }

          else
          {
            v48 = v32 + v41;
          }

          *v40 = v48;
          v38 = v40 + 1;
        }

        v49 = (v38 + (v33 >> 32));
        do
        {
          v38 = OUTLINED_FUNCTION_30(v38);
        }

        while (!v24);
        while (1)
        {
          *v49 = v35 - v50;
          v15 = v49 + 1;
          v14 = v35 + 1;
          if ((v35 + 1) >= v16)
          {
LABEL_32:
            if (v14 < v121)
            {
              OUTLINED_FUNCTION_27();
              if (v25)
              {
                ++v14;
              }
            }

            if (v14 < v119)
            {
              OUTLINED_FUNCTION_25();
              if (v25)
              {
                v14 = (v14 + 2);
              }
            }

            if (v14 < v123)
            {
              OUTLINED_FUNCTION_9();
            }
          }

          else
          {
            while (1)
            {
              OUTLINED_FUNCTION_29();
              if (!v25)
              {
                break;
              }

              v14 += 2;
              if (v14 >= v16)
              {
                goto LABEL_32;
              }
            }

            OUTLINED_FUNCTION_8();
            v14 = (v14 + (v51 >> 3));
          }

          OUTLINED_FUNCTION_7();
          if (!v25 & v24)
          {
            break;
          }

          if (v53 < 15)
          {
            OUTLINED_FUNCTION_11(v52);
          }

          else
          {
            OUTLINED_FUNCTION_4(v52);
            if (v24)
            {
              v4 = 510;
              v55 = (v14 - v35 - 529) / 0x1FEu;
              memset(v49 + 1, 255, v55 * 2 + 2);
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_19();
              v15 = &v49[v55 + 2];
            }

            if (v54 >= 0xFF)
            {
              OUTLINED_FUNCTION_23();
            }

            *v15++ = v54;
          }

          if (v14 > v16)
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_36(v14);
          v130[v57] = v56;
          v58 = *v14;
          v59 = (*v14 * v4) >> 19;
          v50 = (v12 + v130[v59]);
          v130[v59] = v14 - v12;
          if ((v50 + v60) < v14 || *v50 != v58)
          {
            if (v14 + 2 <= v16)
            {
              goto LABEL_5;
            }

            goto LABEL_56;
          }

          *v15 = 0;
          v49 = v15 + 1;
          v35 = v14;
        }
      }

      goto LABEL_118;
    }

LABEL_57:
    v61 = v13 - v14;
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_24();
    if (v62 <= v7)
    {
      if (v61 < 15)
      {
        *v15 = 16 * v61;
      }

      else
      {
        v63 = OUTLINED_FUNCTION_22();
        if (v61 >= 0x10E)
        {
          OUTLINED_FUNCTION_40();
          if (v24)
          {
            v66 = v67;
          }

          OUTLINED_FUNCTION_12(v65, v66);
          v63 = OUTLINED_FUNCTION_15();
        }

        *v63 = v64;
        v15 = v63;
      }

      v116 = v15 + 1;
LABEL_130:
      memcpy(v116, v14, v61);
      result = (v116 + v61 - v11);
      goto LABEL_131;
    }
  }

LABEL_118:
  result = 0;
LABEL_131:
  v117 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LZ4_compress_limitedOutput_withState(unsigned int *a1, unsigned __int16 *a2, _BYTE *a3, unint64_t a4, unsigned int a5)
{
  if ((a1 & 3) != 0)
  {
    return 0;
  }

  bzero(a1, 0x4000uLL);
  if (a4 > 65546)
  {
    if (a4 <= 0x7E000000)
    {
      v96 = a5;
      v16 = a2 + a4;
      v17 = (v16 - 12);
      a1[(-1640531535 * *a2) >> 20] = 0;
      v90 = (v16 - 8);
      v92 = (v16 - 5);
      v94 = v16;
      OUTLINED_FUNCTION_18();
LABEL_9:
      v20 = (v6 + 1);
      v21 = *(v6 + 1);
      do
      {
        v22 = (-1640531535 * v21) >> 20;
        v23 = *v19;
        v24 = a1[v22];
        a1[v22] = v20 - a2;
        if (a2 + v24 + v18 >= v20)
        {
          OUTLINED_FUNCTION_28(v20);
          if (v25)
          {
            OUTLINED_FUNCTION_16();
            do
            {
              OUTLINED_FUNCTION_20();
              if (!v25 & v27)
              {
                v28 = a4 > v6;
              }

              else
              {
                v28 = 0;
              }
            }

            while (v28 && *(a4 - 1) == *(v26 - 1));
            OUTLINED_FUNCTION_3();
            if (!(!v25 & v27))
            {
              if (v29 < 15)
              {
                *v5 = 16 * (a4 - v6);
              }

              else
              {
                OUTLINED_FUNCTION_26();
                if (!v25 & v27)
                {
                  OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_34();
                  OUTLINED_FUNCTION_1();
                  memset(v32, v33, v34);
                  OUTLINED_FUNCTION_2();
                  OUTLINED_FUNCTION_39();
                  v30 = OUTLINED_FUNCTION_5(v35 + v7);
                  v38 = v37 + v36 + v7;
                }

                else
                {
                  v38 = v7 + v31;
                }

                *v30 = v38;
              }

              OUTLINED_FUNCTION_38();
              do
              {
                v40 = *v6;
                v6 += 4;
                *v39++ = v40;
              }

              while (v39 < v24);
              while (1)
              {
                OUTLINED_FUNCTION_21();
                if (v42 >= v17)
                {
LABEL_33:
                  if (v6 < v90 && *v41 == *v6)
                  {
                    ++v41;
                    v6 += 2;
                  }

                  if (v6 < v89 && *v41 == *v6)
                  {
                    ++v6;
                  }

                  if (v6 < v92)
                  {
                    OUTLINED_FUNCTION_31();
                  }
                }

                else
                {
                  while (*v41 == *v6)
                  {
                    v6 += 4;
                    v41 += 2;
                    if (v6 >= v17)
                    {
                      goto LABEL_33;
                    }
                  }

                  OUTLINED_FUNCTION_8();
                  v6 = (v6 + (v43 >> 3));
                }

                OUTLINED_FUNCTION_33();
                if (!v25 & v27)
                {
                  break;
                }

                if (v45 < 15)
                {
                  OUTLINED_FUNCTION_11(v44);
                }

                else
                {
                  OUTLINED_FUNCTION_4(v44);
                  if (v27)
                  {
                    a4 = (v6 - a4 - 529);
                    OUTLINED_FUNCTION_42();
                    OUTLINED_FUNCTION_2();
                    v46 = a4 % 0x1FE;
                    v5 = (v24 + v7 + 4);
                  }

                  if (v46 >= 0xFF)
                  {
                    OUTLINED_FUNCTION_23();
                  }

                  *v5++ = v46;
                }

                if (v6 > v17)
                {
                  goto LABEL_56;
                }

                a1[(-1640531535 * *(v6 - 1)) >> 20] = v6 - 2 - a2;
                v47 = (-1640531535 * *v6) >> 20;
                v48 = (a2 + a1[v47]);
                a1[v47] = v6 - a2;
                if ((v48 + v18) < v6 || *v48 != *v6)
                {
                  v19 = (v6 + 1);
                  if ((v6 + 1) <= v17)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_56;
                }

                OUTLINED_FUNCTION_37();
              }
            }

            return 0;
          }
        }

        OUTLINED_FUNCTION_14();
      }

      while (v19 <= v17);
LABEL_56:
      v49 = v94 - v6;
      OUTLINED_FUNCTION_13();
      LODWORD(a3) = v98;
      OUTLINED_FUNCTION_35();
      if (v50 > v96)
      {
        return 0;
      }

      if (v49 >= 15)
      {
        v51 = OUTLINED_FUNCTION_22();
        if (v49 < 0x10E)
        {
          goto LABEL_119;
        }

        goto LABEL_115;
      }

LABEL_120:
      *v5 = 16 * v49;
      goto LABEL_121;
    }

    return 0;
  }

  if (a4 > 0x7E000000)
  {
    return 0;
  }

  v15 = a2 + a4;
  if (a4 >= 0xD)
  {
    OUTLINED_FUNCTION_19();
    *(a1 + ((*a2 * v8) >> 19)) = 0;
    if (a4 != 13)
    {
      v97 = a5;
      v53 = (v15 - 12);
      v91 = (v15 - 8);
      v93 = (v15 - 5);
      v95 = v15;
      OUTLINED_FUNCTION_18();
LABEL_62:
      v54 = *(v6 + 1);
      while (1)
      {
        OUTLINED_FUNCTION_41();
        v57 = *(a1 + v56);
        *(a1 + v56) = v55 - a2;
        if (a2 + v57 + v58 >= v55 && *(a2 + v57) == *v55)
        {
          break;
        }

        OUTLINED_FUNCTION_32();
        if (!v25 & v27)
        {
LABEL_110:
          LODWORD(a3) = v98;
          a5 = v97;
          v15 = v95;
          goto LABEL_111;
        }
      }

      OUTLINED_FUNCTION_16();
      do
      {
        OUTLINED_FUNCTION_20();
        if (!v25 & v27)
        {
          v60 = a4 > v6;
        }

        else
        {
          v60 = 0;
        }
      }

      while (v60 && *(a4 - 1) == *(v59 - 1));
      OUTLINED_FUNCTION_3();
      if (!(!v25 & v27))
      {
        if (v61 < 15)
        {
          *v5 = 16 * (a4 - v6);
        }

        else
        {
          OUTLINED_FUNCTION_26();
          if (!v25 & v27)
          {
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_34();
            OUTLINED_FUNCTION_1();
            memset(v64, v65, v66);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_39();
            v62 = OUTLINED_FUNCTION_5(v67 + v7);
            v70 = v69 + v68 + v7;
          }

          else
          {
            v70 = v7 + v63;
          }

          *v62 = v70;
        }

        OUTLINED_FUNCTION_38();
        do
        {
          v72 = *v6;
          v6 += 4;
          *v71++ = v72;
        }

        while (v71 < v57);
        while (1)
        {
          OUTLINED_FUNCTION_21();
          if (v74 >= v53)
          {
LABEL_87:
            if (v6 < v91 && *v73 == *v6)
            {
              ++v73;
              v6 += 2;
            }

            if (v6 < v89 && *v73 == *v6)
            {
              ++v6;
            }

            if (v6 < v93)
            {
              OUTLINED_FUNCTION_31();
            }
          }

          else
          {
            while (*v73 == *v6)
            {
              v6 += 4;
              v73 += 2;
              if (v6 >= v53)
              {
                goto LABEL_87;
              }
            }

            OUTLINED_FUNCTION_8();
            v6 = (v6 + (v75 >> 3));
          }

          OUTLINED_FUNCTION_33();
          if (!v25 & v27)
          {
            break;
          }

          if (v77 < 15)
          {
            OUTLINED_FUNCTION_11(v76);
          }

          else
          {
            OUTLINED_FUNCTION_4(v76);
            if (v27)
            {
              a4 = (v6 - a4 - 529);
              v8 = 510;
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_19();
              v5 = (v57 + v7 + 4);
            }

            if (v78 >= 0xFF)
            {
              OUTLINED_FUNCTION_23();
            }

            *v5++ = v78;
          }

          if (v6 > v53)
          {
            goto LABEL_110;
          }

          OUTLINED_FUNCTION_36(v6);
          *(a1 + v80) = v79;
          v81 = *v6;
          v82 = (*v6 * v8) >> 19;
          v83 = (a2 + *(a1 + v82));
          *(a1 + v82) = v6 - a2;
          if ((v83 + v84) < v6 || *v83 != v81)
          {
            if ((v6 + 1) <= v53)
            {
              goto LABEL_62;
            }

            goto LABEL_110;
          }

          OUTLINED_FUNCTION_37();
        }
      }

      return 0;
    }
  }

  v6 = a2;
  v5 = a3;
LABEL_111:
  v49 = v15 - v6;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_35();
  if (v85 > a5)
  {
    return 0;
  }

  if (v49 < 15)
  {
    goto LABEL_120;
  }

  v51 = OUTLINED_FUNCTION_22();
  if (v49 >= 0x10E)
  {
LABEL_115:
    OUTLINED_FUNCTION_40();
    if (v27)
    {
      v87 = v88;
    }

    OUTLINED_FUNCTION_12(v86, v87);
    v51 = OUTLINED_FUNCTION_15();
  }

LABEL_119:
  *v51 = v52;
  v5 = v51;
LABEL_121:
  memcpy(v5 + 1, v6, v49);
  return (v5 + 1 + v49 - a3);
}

uint64_t LZ4_compress_limitedOutput_continue(void *a1, _DWORD *a2, _BYTE *a3, unsigned int a4)
{
  if (a4 > 0x7E000000)
  {
    return 0;
  }

  if (a1[2050] != a2)
  {
    return 0;
  }

  v7 = a1[2049];
  v8 = a1[2048];
  v9 = a2 + a4;
  a1[2050] = v9;
  v66 = a2;
  if (a4 >= 0xD)
  {
    v68 = a2 + a4;
    *(a1 + ((-1640531535 * *a2) >> 20)) = a2 - v7;
    if (a4 != 13)
    {
      v12 = a3;
      v13 = (v68 - 12);
      v65 = v12;
      v14 = (a2 + 2);
      v15 = 0xFFFFLL;
      v10 = a2;
      v11 = v12;
LABEL_8:
      v16 = (v10 + 1);
      v17 = *(v10 + 1);
      while (1)
      {
        v18 = (-1640531535 * v17) >> 20;
        v19 = *v14;
        v20 = *(a1 + v18);
        *(a1 + v18) = v16 - v7;
        if (v7 + v20 + v15 >= v16)
        {
          OUTLINED_FUNCTION_28(v16);
          if (v25)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_14();
        if (v14 > v13)
        {
LABEL_58:
          LODWORD(a3) = v65;
          goto LABEL_59;
        }
      }

      v26 = 0;
      v27 = v24 - v10;
      v28 = v24 - v10 - 15;
      v29 = (v24 << 32) - (v10 << 32);
      v30 = v24 - v10 - 15;
      do
      {
        v31 = v26;
        v32 = v29;
        v33 = v7 + v20 + v26;
        v34 = v24 + v31;
        v35 = v24 + v31 - v10;
        if (v24 + v31 <= v10 || v33 <= v22)
        {
          break;
        }

        v37 = *(v33 - 1);
        --v30;
        v26 = v31 - 1;
        v29 += v23;
      }

      while (*(v34 - 1) == v37);
      v38 = v27 + v31;
      v39 = v11 + 1;
      if (&v11[(v32 >> 32) + 9 + (v27 + v31) / 255] <= v21)
      {
        if (v38 < 15)
        {
          *v11 = 16 * v35;
        }

        else
        {
          *v11 = -16;
          if (v38 <= 0x10D)
          {
            v45 = v31 + v28;
          }

          else
          {
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_1();
            v64 = v40;
            memset(v41, v42, v43);
            OUTLINED_FUNCTION_13();
            v39 = &v11[v44 + 2];
            v45 = v44 + v64 + v31;
          }

          *v39 = v45;
          v39 = (v39 + 1);
        }

        v46 = (v39 + (v32 >> 32));
        do
        {
          v39 = OUTLINED_FUNCTION_30(v39);
        }

        while (!v48);
        while (1)
        {
          *v46 = v34 - v47;
          v11 = v46 + 1;
          v10 = v34 + 4;
          if (v34 + 4 >= v13)
          {
LABEL_34:
            if (v10 < (v68 - 8))
            {
              OUTLINED_FUNCTION_27();
              if (v25)
              {
                v10 += 4;
              }
            }

            if (v10 < (v68 - 6))
            {
              OUTLINED_FUNCTION_25();
              if (v25)
              {
                v10 += 2;
              }
            }

            if (v10 < (v68 - 5))
            {
              OUTLINED_FUNCTION_9();
            }
          }

          else
          {
            while (1)
            {
              OUTLINED_FUNCTION_29();
              if (!v25)
              {
                break;
              }

              v10 += 8;
              if (v10 >= v13)
              {
                goto LABEL_34;
              }
            }

            OUTLINED_FUNCTION_8();
            v10 += v49 >> 3;
          }

          OUTLINED_FUNCTION_7();
          if (!v25 & v48)
          {
            break;
          }

          if (v51 < 15)
          {
            OUTLINED_FUNCTION_11(v50);
          }

          else
          {
            OUTLINED_FUNCTION_4(v50);
            if (v48)
            {
              v53 = v10 - v34 - 529;
              v54 = v53 / 0x1FE;
              memset(v46 + 1, 255, v54 * 2 + 2);
              v15 = 0xFFFFLL;
              v52 = v53 % 0x1FE;
              v11 = &v46[v54 + 2];
            }

            if (v52 >= 0xFF)
            {
              *v11++ = -1;
              LOBYTE(v52) = v52 + 1;
            }

            *v11++ = v52;
          }

          if (v10 > v13)
          {
            goto LABEL_58;
          }

          *(a1 + ((-1640531535 * *(v10 - 2)) >> 20)) = v10 - 2 - v7;
          v55 = (-1640531535 * *v10) >> 20;
          v47 = (v7 + *(a1 + v55));
          *(a1 + v55) = v10 - v7;
          if (v47 + v15 < v10 || *v47 != *v10)
          {
            v14 = (v10 + 2);
            if (v10 + 2 <= v13)
            {
              goto LABEL_8;
            }

            goto LABEL_58;
          }

          *v11 = 0;
          v46 = v11 + 1;
          v34 = v10;
        }
      }

      return 0;
    }

    v10 = a2;
    v11 = a3;
LABEL_59:
    v9 = v68;
  }

  else
  {
    v10 = a2;
    v11 = a3;
  }

  v56 = &v9[-v10];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_24();
  if (v58 > v57)
  {
    return 0;
  }

  v59 = v56 - 15;
  if (v56 < 15)
  {
    *v11 = 16 * v56;
  }

  else
  {
    *v11 = -16;
    v60 = v11 + 1;
    if (v56 >= 0x10E)
    {
      OUTLINED_FUNCTION_40();
      if (v48)
      {
        v62 = v63;
      }

      memset(v61, 255, (v66 + a4 - v10 - v62 + 239) / 0xFF + 1);
      v60 = OUTLINED_FUNCTION_15();
    }

    *v60 = v59;
    v11 = v60;
  }

  memcpy(v11 + 1, v10, v56);
  return (v11 + 1 + v56 - a3);
}

uint64_t lz4_decode_safe(void **a1, unint64_t a2, char *a3, unint64_t *a4, unint64_t a5)
{
  v6 = *a1;
  v7 = *a4;
  v28 = *a1;
  if (*a4 >= a5)
  {
    v20 = *a1;
    return v20 - v28;
  }

  else
  {
    while (1)
    {
      *a4 = v7;
      *a1 = v6;
      v14 = *v7;
      v12 = v7 + 1;
      v13 = v14;
      v15 = v14 >> 4;
      if (v15 == 15)
      {
        v15 = 15;
        while (v12 < a5)
        {
          v22 = *v12++;
          v15 += v22;
          if (v22 != 255)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }

LABEL_3:
      v16 = &v12[v15];
      if (&v12[v15] > a5)
      {
        return 0;
      }

      v17 = &v6[v15];
      if (&v6[v15] > a3)
      {
        break;
      }

      memcpy(v6, v12, v15);
      if (v16 >= a5)
      {
        v20 = &v6[v15];
        return v20 - v28;
      }

      v7 = v16 + 2;
      if ((v16 + 2) > a5)
      {
        return 0;
      }

      v18 = *v16;
      if (!*v16 || &v17[-v18] < a2)
      {
        return 0;
      }

      v19 = (v13 & 0xF) + 4;
      if ((v13 & 0xF) == 0xF)
      {
        v19 = 19;
        while (v7 < a5)
        {
          v23 = *v7++;
          v19 += v23;
          if (v23 != 255)
          {
            goto LABEL_10;
          }
        }

        return 0;
      }

LABEL_10:
      v20 = &v17[v19];
      if (&v17[v19] > a3)
      {
        if (v17 != a3)
        {
          v25 = a3 - v17;
          if ((a3 - v17) <= 1)
          {
            v25 = 1;
          }

          v26 = &v6[v15];
          v27 = -v18;
          do
          {
            *v26 = v26[v27];
            ++v26;
            --v25;
          }

          while (v25);
        }

        return a3 - v28;
      }

      if (v19)
      {
        v21 = -v18;
        do
        {
          *v17 = v17[v21];
          ++v17;
          --v19;
        }

        while (v19);
      }

      v6 = v20;
      if (v7 >= a5)
      {
        return v20 - v28;
      }
    }

    if (v6 != a3)
    {
      memcpy(v6, v12, a3 - v6);
    }

    return a3 - v28;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}