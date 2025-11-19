uint64_t unzlocal_getLong(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (unzlocal_getByte(a1, a2, &v11) || (v6 = v11, unzlocal_getByte(a1, a2, &v11)) || (v7 = v11, unzlocal_getByte(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 + (v7 << 8) + (v11 << 16);
    result = unzlocal_getByte(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t unzlocal_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if (unzlocal_getByte(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = unzlocal_getByte(a1, a2, &v9);
    v6 = v8 + (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t amai_unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[17];
  a1[12] = 0;
  a1[13] = v2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t amai_unzClose(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    amai_unzCloseCurrentFile(a1);
  }

  (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  free(a1);
  return 0;
}

uint64_t amai_unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 184) || *(v2 + 280))
  {
    v3 = 0;
  }

  else if (*(v2 + 160) == *(v2 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128))
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 288) = 0;
  return v3;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0) || (v52 = 0, unzlocal_getLong(a1, *(a1 + 64), &v52)))
  {
    v11 = -1;
  }

  else if (v52 == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = -103;
  }

  v46 = v11;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v44 = unzlocal_getShort(a1, *(a1 + 64), &v54 + 1);
  v12 = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v55 + 1);
  Long = unzlocal_getLong(a1, *(a1 + 64), &v56);
  v15.i32[0] = v56;
  v16 = vshlq_u32(vdupq_n_s32(v56), xmmword_298561590);
  v16.i32[0] = vshlq_u32(v15, xmmword_298561580).u32[0];
  LODWORD(v62) = ((v56 >> 21) & 0xF) - 1;
  HIDWORD(v62) = (v56 >> 25) + 1980;
  v61 = vandq_s8(v16, xmmword_2985615A0);
  v17 = unzlocal_getLong(a1, *(a1 + 64), &v56 + 1) | Long;
  v18 = unzlocal_getLong(a1, *(a1 + 64), &v57);
  v19 = v17 | v18 | unzlocal_getLong(a1, *(a1 + 64), &v57 + 1);
  v20 = v19 | unzlocal_getShort(a1, *(a1 + 64), &v58);
  v21 = unzlocal_getShort(a1, *(a1 + 64), &v58 + 1);
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v59);
  v23 = unzlocal_getShort(a1, *(a1 + 64), &v59 + 1);
  v24 = unzlocal_getShort(a1, *(a1 + 64), &v60);
  v25 = unzlocal_getLong(a1, *(a1 + 64), &v60 + 1);
  if (unzlocal_getLong(a1, *(a1 + 64), &v53) | v25 | v24 | v23 | v22 | v21 | v20 | v13 | v12 | v44 | Short)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v46;
  }

  v27 = v58;
  if (a4)
  {
    v29 = a7;
    v28 = a6;
    if (v26)
    {
      v31 = a8;
    }

    else
    {
      v30 = a5;
      v31 = a8;
      if (v58 < a5)
      {
        *(a4 + v58) = 0;
        v30 = v27;
      }

      v26 = 0;
      if (a5 && v27)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64)) == v30)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      v27 -= v30;
    }
  }

  else
  {
    v28 = a6;
    v31 = a8;
    v29 = a7;
  }

  v32 = *(&v58 + 1);
  if (!v28 || v26)
  {
    v35 = *(&v58 + 1) + v27;
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  if (*(&v58 + 1) >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = *(&v58 + 1);
  }

  if (!v27)
  {
    v26 = 0;
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v34 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v27, 1);
  if (v34)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v29)
  {
LABEL_37:
    if (v32)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v28, v33) == v33)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_41:
  v35 = v32 - v33 + v27;
  if (!v31)
  {
    goto LABEL_56;
  }

LABEL_42:
  if (!v26)
  {
    v36 = v59;
    v37 = a9;
    if (v59 < a9)
    {
      *(v31 + v59) = 0;
      v37 = v36;
    }

    if (v35)
    {
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v35, 1))
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      if (!a9)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v36)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v31, v37) == v37)
        {
          v26 = v26;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_56;
    }

    v26 = 0;
    if (a9)
    {
      goto LABEL_52;
    }
  }

LABEL_56:
  if (a2 && !v26)
  {
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  if (a3 && !v26)
  {
    *a3 = v53;
  }

  return v26;
}

uint64_t amai_unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[14])
  {
    return 4294967196;
  }

  v2 = a1[9];
  v3 = a1[12] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[26] + a1[27] + a1[28] + a1[13] + 46;
  a1[12] = v3;
  a1[13] = v5;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t amai_unzLocateFile(uint64_t a1, char *__s, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1 && strlen(__s) <= 0xFF)
  {
    if (*(a1 + 112))
    {
      v8 = *(a1 + 96);
      v9 = *(a1 + 104);
      v18 = *(a1 + 240);
      v19 = *(a1 + 256);
      v10 = *(a1 + 280);
      v20 = *(a1 + 272);
      v14 = *(a1 + 176);
      v15 = *(a1 + 192);
      v16 = *(a1 + 208);
      v17 = *(a1 + 224);
      v12 = *(a1 + 144);
      v13 = *(a1 + 160);
      v11 = *(a1 + 136);
      *(a1 + 96) = 0;
      *(a1 + 104) = v11;
      result = unzlocal_GetCurrentFileInfoInternal(a1, a1 + 144, (a1 + 280), 0, 0, 0, 0, 0, 0);
      for (*(a1 + 112) = result == 0; !result; result = amai_unzGoToNextFile(a1))
      {
        result = unzlocal_GetCurrentFileInfoInternal(a1, 0, 0, v21, 0x100uLL, 0, 0, 0, 0);
        if (result)
        {
          break;
        }

        result = amai_unzStringFileNameCompare(v21, __s, a3);
        if (!result)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 96) = v8;
      *(a1 + 104) = v9;
      *(a1 + 240) = v18;
      *(a1 + 256) = v19;
      *(a1 + 176) = v14;
      *(a1 + 192) = v15;
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
      *(a1 + 144) = v12;
      *(a1 + 160) = v13;
      *(a1 + 272) = v20;
      *(a1 + 280) = v10;
    }

    else
    {
      result = 4294967196;
    }
  }

  else
  {
    result = 4294967194;
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amai_unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  v56[2] = *MEMORY[0x29EDCA608];
  if (!a1 || !*(a1 + 112))
  {
    v17 = 4294967194;
    goto LABEL_49;
  }

  if (*(a1 + 288))
  {
    amai_unzCloseCurrentFile(a1);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    goto LABEL_48;
  }

  v55 = 0;
  v56[0] = 0;
  v54 = 0;
  Long = unzlocal_getLong(a1, *(a1 + 64), v56);
  v11 = v56[0];
  Short = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v14 = -103;
  if (!unzlocal_getShort(a1, *(a1 + 64), &v55))
  {
    v19 = v11 == 67324752 ? 0 : -103;
    v20 = v13 | Short | Long;
    v14 = v20 ? -1 : v19;
    if (!v20 && v11 == 67324752)
    {
      v14 = -103;
      if (v55 == *(a1 + 168))
      {
        if ((v55 & 0xFFFFFFFFFFFFFFF7) != 0)
        {
          v14 = -103;
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  v15 = unzlocal_getLong(a1, *(a1 + 64), &v55);
  v16 = unzlocal_getLong(a1, *(a1 + 64), &v55) || v15 | v14 || v55 != *(a1 + 184) && (v54 & 8) == 0;
  v18 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v55) && !v16)
  {
    v18 = v55 != *(a1 + 192) && (v54 & 8) == 0;
  }

  v21 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v55) && !v18)
  {
    v21 = v55 != *(a1 + 200) && (v54 & 8) == 0;
  }

  v53 = 0;
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v53);
  v23 = 0;
  v24 = v53;
  if (!v22 && !v21)
  {
    v23 = v53 == *(a1 + 208);
  }

  v52 = 0;
  if (unzlocal_getShort(a1, *(a1 + 64), &v52) || !v23)
  {
LABEL_48:
    v17 = 4294967193;
    goto LABEL_49;
  }

  v25 = *(a1 + 280);
  v26 = v52;
  v27 = malloc(0x120uLL);
  if (!v27)
  {
    goto LABEL_67;
  }

  v28 = v27;
  v29 = malloc(0x4000uLL);
  *v28 = v29;
  *(v28 + 17) = v24 + v25 + 30;
  *(v28 + 36) = v26;
  *(v28 + 19) = 0;
  *(v28 + 70) = a4;
  if (!v29)
  {
    free(v28);
    goto LABEL_67;
  }

  *(v28 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  if (a3)
  {
    *a3 = 6;
    v30 = *(a1 + 160) & 6;
    if (v30 > 3)
    {
      if (v30 == 6)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_56;
      }

      v31 = 9;
    }

    *a3 = v31;
  }

LABEL_56:
  v34 = *(a1 + 184);
  *(v28 + 20) = 0;
  *(v28 + 21) = v34;
  v35 = *(a1 + 168);
  *(v28 + 32) = *(a1 + 64);
  *(v28 + 33) = v35;
  v36 = *(a1 + 16);
  *(v28 + 12) = *a1;
  *(v28 + 13) = v36;
  v37 = *(a1 + 48);
  *(v28 + 14) = *(a1 + 32);
  *(v28 + 15) = v37;
  *(v28 + 34) = *(a1 + 88);
  *(v28 + 6) = 0;
  if (!a4 && v35 == 8)
  {
    *(v28 + 1) = 0;
    *(v28 + 4) = 0;
    *(v28 + 10) = 0;
    *(v28 + 11) = 0;
    *(v28 + 9) = 0;
    v38 = inflateInit2_((v28 + 8), -15, "1.2.12", 112);
    if (v38)
    {
      v17 = v38;
      free(v28);
      goto LABEL_49;
    }

    *(v28 + 16) = 1;
    v25 = *(a1 + 280);
  }

  *(v28 + 11) = *(a1 + 192);
  *(v28 + 15) = v25 + (v26 + v24) + 30;
  *(v28 + 4) = 0;
  *(a1 + 288) = v28;
  if (!a5)
  {
    v17 = 0;
    goto LABEL_49;
  }

  v39 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_2985615B0;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v41 = *a5;
  if (*a5)
  {
    v42 = a5 + 1;
    v43 = 305419896;
    v44 = 591751049;
    do
    {
      v43 = crc_table[v41 ^ v43] ^ (v43 >> 8);
      v44 = 134775813 * (v44 + v43) + 1;
      *(a1 + 304) = v43;
      *(a1 + 312) = v44;
      v39 = crc_table[(v39 ^ BYTE3(v44))] ^ (v39 >> 8);
      *(a1 + 320) = v39;
      v45 = *v42++;
      v41 = v45;
    }

    while (v45);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), v56, 12) < 0xC)
  {
LABEL_67:
    v17 = 4294967192;
    goto LABEL_49;
  }

  v46 = 0;
  v48 = *(a1 + 320);
  v47 = *(a1 + 328);
  v49 = *(a1 + 304);
  v50 = *(a1 + 312);
  do
  {
    v51 = *(v56 + v46) ^ (((v48 & 0xFFFD ^ 3) * (v48 | 2)) >> 8);
    *(v56 + v46) = v51;
    v49 = *(v47 + 8 * (v51 ^ v49)) ^ (v49 >> 8);
    v50 = 134775813 * (v50 + v49) + 1;
    *(a1 + 304) = v49;
    *(a1 + 312) = v50;
    v48 = *(v47 + 8 * (v48 ^ BYTE3(v50))) ^ (v48 >> 8);
    *(a1 + 320) = v48;
    ++v46;
  }

  while (v46 != 12);
  v17 = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
LABEL_49:
  v32 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t amai_unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      LODWORD(v10) = *(v4 + 16);
      if (!v10)
      {
        v11 = *(v4 + 176);
        if (v11)
        {
          if (v11 >= 0x4000)
          {
            v10 = 0x4000;
          }

          else
          {
            v10 = *(v4 + 176);
          }

          if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v10) != v10)
          {
            return 0xFFFFFFFFLL;
          }

          if (*(a1 + 296))
          {
            v12 = 0;
            do
            {
              v13 = *(a1 + 328);
              v14 = *(*v4 + v12) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
              *(*v4 + v12) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
              v15 = *(v13 + 8 * (v14 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
              v16 = 134775813 * (*(a1 + 312) + v15) + 1;
              *(a1 + 304) = v15;
              *(a1 + 312) = v16;
              *(a1 + 320) = *(v13 + 8 * (*(a1 + 320) ^ BYTE3(v16))) ^ (*(a1 + 320) >> 8);
              *(*v4 + v12++) = v14;
            }

            while (v10 != v12);
          }

          *(v4 + 120) += v10;
          *(v4 + 176) -= v10;
          *(v4 + 8) = *v4;
          *(v4 + 16) = v10;
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (*(v4 + 264) && !*(v4 + 280))
      {
        break;
      }

      if (v10 || *(v4 + 176))
      {
        v17 = *(v4 + 40);
        v10 = v17 >= v10 ? v10 : v17;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
          }

          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v10);
        *(v4 + 184) -= v19;
        *(v4 + 16) -= v10;
        v20 = *(v4 + 40) - v10;
        *(v4 + 40) = v20;
        *(v4 + 32) += v19;
        *(v4 + 8) += v19;
        v9 = (v10 + v9);
        *(v4 + 48) += v19;
        if (v20)
        {
          continue;
        }
      }

      return v9;
    }

    v21 = *(v4 + 48);
    v22 = *(v4 + 32);
    v23 = inflate((v4 + 8), 2);
    if ((v23 & 0x80000000) == 0 && *(v4 + 56))
    {
      v26 = *(v4 + 48);
      v27 = v26 - v21;
      *(v4 + 160) = crc32(*(v4 + 160), v22, v26 - v21);
      *(v4 + 184) -= v27;
      return 4294967293;
    }

    v24 = *(v4 + 48) - v21;
    *(v4 + 160) = crc32(*(v4 + 160), v22, v24);
    *(v4 + 184) -= v24;
    v9 = (v9 + v24);
    if (v23)
    {
      break;
    }

    if (!*(v4 + 40))
    {
      return v9;
    }
  }

  if (v23 == 1)
  {
    return v9;
  }

  else
  {
    return v23;
  }
}

uint64_t unzlocal_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

void *amai_zipOpen2()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v67 = *MEMORY[0x29EDCA608];
  memset(__src, 0, 512);
  if (v1)
  {
    v7 = v1[1];
    __src[0] = *v1;
    __src[1] = v7;
    v8 = v1[3];
    __src[2] = v1[2];
    __src[3] = v8;
  }

  else
  {
    amai_fill_fopen_filefunc(__src);
  }

  if (v5)
  {
    v9 = 7;
  }

  else
  {
    v9 = 11;
  }

  v10 = (*&__src[0])(*(&__src[3] + 1), v6, v9);
  *&__src[4] = v10;
  if (!v10)
  {
    goto LABEL_75;
  }

  *&__src[1044] = (*(&__src[1] + 1))(*(&__src[3] + 1), v10);
  LODWORD(__src[13]) = 0;
  v11 = malloc(0x4160uLL);
  *(&__src[4] + 8) = 0u;
  DWORD2(__src[5]) = 0;
  *(&__src[1044] + 8) = 0u;
  if (v11)
  {
    *(&__src[1045] + 1) = 0;
    if (v5 == 2)
    {
      v64 = 0;
      v65 = 0;
      v61 = 0;
      v62 = 0;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v12 = *&__src[4];
      v52 = v3;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], 0, 2) || ((v15 = (*(&__src[1] + 1))(*(&__src[3] + 1), v12), v16 = v15, v15 >= 0xFFFF) ? (v17 = 0xFFFFLL) : (v17 = v15), (v18 = malloc(0x404uLL)) == 0))
      {
        v13 = 0;
        v56 = 0;
      }

      else
      {
        v19 = v18;
        if (v16 >= 5)
        {
          v20 = 4;
          while (2)
          {
            v21 = v20 + 1024;
            if (v20 + 1024 >= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 += 1024;
            }

            v22 = v20 >= 0x404 ? 1028 : v20;
            if (!(*&__src[2])(*(&__src[3] + 1), v12, v16 - v20, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v12, v19, v22) == v22)
            {
              v23 = (v22 - 4);
              v24 = v20 - v16 - v23;
              v25 = v22 - 3;
              v26 = &v19[v23 + 1];
              while (*(v26 - 1) != 80 || *v26 != 75 || v26[1] != 5 || v26[2] != 6)
              {
                ++v24;
                --v26;
                v27 = __OFSUB__(v25--, 1);
                if ((v25 < 0) ^ v27 | (v25 == 0))
                {
                  goto LABEL_40;
                }
              }

              if (v24)
              {
                v13 = -v24;
                v56 = 1;
                goto LABEL_45;
              }

LABEL_40:
              if (v21 < v17)
              {
                continue;
              }
            }

            break;
          }
        }

        v13 = 0;
        v56 = 0;
LABEL_45:
        free(v19);
      }

      v53 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v13, 0);
      HIDWORD(v54) = unzlocal_getLong(__src, *&__src[4], &v63);
      LODWORD(v54) = unzlocal_getShort(__src, *&__src[4], &v62);
      Short = unzlocal_getShort(__src, *&__src[4], &v61);
      v28 = unzlocal_getShort(__src, *&__src[4], &v60);
      v29 = unzlocal_getShort(__src, *&__src[4], &v59);
      v30 = v60;
      v57 = v59;
      v31 = v61;
      v32 = v62;
      Long = unzlocal_getLong(__src, *&__src[4], &v65);
      v34 = unzlocal_getLong(__src, *&__src[4], &v64);
      v35 = unzlocal_getShort(__src, *&__src[4], &v58);
      v36 = v65;
      v51 = v64;
      v37 = v13 >= v65 + v64;
      v38 = v13 - (v65 + v64);
      if (!v37 || v34 | Long | v35 || v57 != v30 || v31 || v32 || !v56 || v29 || v28 || Short || v54 || v53)
      {
        (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_74:
        free(v11);
LABEL_75:
        v11 = 0;
        goto LABEL_76;
      }

      v39 = v58;
      if (v58)
      {
        v40 = malloc(v58 + 1);
        *(&__src[1045] + 1) = v40;
        if (v40)
        {
          v41 = (*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v40, v39);
          *(*(&__src[1045] + 1) + v41) = 0;
        }
      }

      *(&__src[1044] + 1) = v38;
      v42 = malloc(0xFF0uLL);
      v43 = v38;
      v44 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v38 + v51, 0);
      if (v44)
      {
        v45 = -1;
      }

      else
      {
        v45 = 0;
      }

      if (v36 && !v44)
      {
        while (1)
        {
          v46 = v36 >= 0xFF0 ? 4080 : v36;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v42, v46) != v46)
          {
            break;
          }

          v47 = add_data_in_datablock(&__src[4] + 1, v42, v46);
          v45 = v47;
          v36 -= v46;
          if (!v36 || v47)
          {
            goto LABEL_78;
          }
        }

        v45 = -1;
      }

LABEL_78:
      if (v42)
      {
        free(v42);
      }

      *&__src[1044] = v43;
      *&__src[1045] = v57;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], v43 + v51, 0))
      {
        v50 = 0;
      }

      else
      {
        v50 = v45 == 0;
      }

      v14 = v50;
      v3 = v52;
      if (!v52)
      {
LABEL_15:
        if (v14)
        {
          memcpy(v11, __src, 0x4160uLL);
          goto LABEL_76;
        }

        if (*(&__src[1045] + 1))
        {
          free(*(&__src[1045] + 1));
        }

        goto LABEL_74;
      }
    }

    else
    {
      v14 = 1;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    *v3 = *(&__src[1045] + 1);
    goto LABEL_15;
  }

  (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_76:
  v48 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t add_data_in_datablock(void *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967192;
  }

  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v8 = malloc(0x1010uLL);
  if (v8)
  {
    v6 = v8;
    *v8 = 0;
    *(v8 + 8) = xmmword_2985615C0;
    *a1 = v8;
    a1[1] = v8;
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v9 = v6[1];
    while (1)
    {
      if (v9)
      {
        v10 = v6[2];
      }

      else
      {
        v11 = malloc(0x1010uLL);
        if (!v11)
        {
          *v6 = 0;
          return 4294967192;
        }

        v10 = 0;
        *v11 = 0;
        *(v11 + 8) = xmmword_2985615C0;
        *v6 = v11;
        v9 = 4080;
        v6 = v11;
        a1[1] = v11;
      }

      if (v9 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = v6 + v10 + 32;
        v14 = v12;
        v15 = a2;
        do
        {
          v16 = *v15++;
          *v13++ = v16;
          --v14;
        }

        while (v14);
        v9 = v6[1];
        v10 = v6[2];
      }

      v9 -= v12;
      v6[1] = v9;
      v6[2] = v10 + v12;
      a2 += v12;
      v3 -= v12;
      if (!v3)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return 4294967192;
}

uint64_t amai_zipOpenNewFileInZip3(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, unsigned int a7, char *__s, int a9, int a10, int a11, int a12, int a13, int a14, _BYTE *a15, uint64_t a16)
{
  v101 = *MEMORY[0x29EDCA608];
  result = 4294967194;
  if (!a1)
  {
    goto LABEL_94;
  }

  if ((a9 & 0xFFFFFFF7) != 0)
  {
    goto LABEL_94;
  }

  if (*(a1 + 88) == 1)
  {
    result = amai_zipCloseFileInZipRaw(a1, 0, 0);
    if (result)
    {
      goto LABEL_94;
    }
  }

  v95 = a4;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = "-";
  }

  v96 = a5;
  if (__s)
  {
    v26 = strlen(__s);
  }

  else
  {
    v26 = 0;
  }

  v27 = strlen(v25);
  if (a3)
  {
    v28 = *(a3 + 24);
    if (!v28)
    {
      v29 = *(a3 + 20);
      v30 = v29 - 80;
      if (v29 <= 0x50)
      {
        v30 = *(a3 + 20);
      }

      if (v29 <= 0x7BC)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 - 1980;
      }

      v28 = ((32 * *(a3 + 4) + (*a3 >> 1)) + (*(a3 + 8) << 11)) | (((*(a3 + 12) + 32 * *(a3 + 16) + 32) << 16) + (v31 << 25));
    }
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 16640) = v28;
  v32 = 2 * ((a10 & 0xFFFFFFFE) == 8);
  *(a1 + 240) = v32;
  if (a10 == 2)
  {
    v32 = 4;
  }

  else
  {
    if (a10 != 1)
    {
      goto LABEL_25;
    }

    v32 = 6;
  }

  *(a1 + 240) = v32;
LABEL_25:
  if (a15)
  {
    *(a1 + 240) = v32 | 1;
  }

  *(a1 + 16648) = 0;
  *(a1 + 16656) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = a9;
  *(a1 + 252) = a11;
  v33 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  *(a1 + 216) = v33;
  v34 = a7 + v26 + v27 + 46;
  *(a1 + 232) = v34;
  v35 = malloc(v34);
  *(a1 + 224) = v35;
  *v35 = 33639248;
  v35[1] = 1310720;
  v36 = *(a1 + 240);
  *(v35 + 4) = v36;
  if (v36 >= 0x10000)
  {
    *(v35 + 4) = -1;
  }

  v37 = *(a1 + 248);
  *(v35 + 5) = v37;
  if (v37 >= 0x10000)
  {
    *(v35 + 5) = -1;
  }

  v38 = 0;
  v39 = v35 + 3;
  v40 = *(a1 + 16640);
  do
  {
    v41 = v40;
    *(v39 + v38) = v40;
    v40 >>= 8;
    ++v38;
  }

  while (v38 != 4);
  if (v41 >= 0x100)
  {
    *v39 = -1;
  }

  *(v35 + 2) = 0;
  v35[6] = 0;
  *(v35 + 14) = v27;
  if (v27 >= 0x10000uLL)
  {
    *(v35 + 14) = -1;
  }

  *(v35 + 15) = a7;
  if (a7 >= 0x10000)
  {
    *(v35 + 15) = -1;
  }

  *(v35 + 16) = v26;
  if (v26 >= 0x10000)
  {
    *(v35 + 16) = -1;
  }

  *(v35 + 17) = 0;
  v42 = v26;
  if (a3)
  {
    v43 = *(a3 + 32);
    *(v35 + 18) = v43;
    if (v43 >= 0x10000)
    {
      *(v35 + 18) = -1;
    }

    v44 = 0;
    v45 = (v35 + 38);
    v46 = *(a3 + 40);
    do
    {
      v47 = v46;
      *(v45 + v44) = v46;
      v46 >>= 8;
      ++v44;
    }

    while (v44 != 4);
    if (v47 >= 0x100)
    {
      *v45 = -1;
    }
  }

  else
  {
    *(v35 + 18) = 0;
    *(v35 + 38) = 0;
  }

  v48 = 0;
  v49 = (v35 + 42);
  v50 = v33 - *(a1 + 16712);
  do
  {
    v51 = v50;
    *(v49 + v48) = v50;
    v50 >>= 8;
    ++v48;
  }

  while (v48 != 4);
  if (v51 >= 0x100)
  {
    *v49 = -1;
  }

  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      *(*(a1 + 224) + i + 46) = v25[i];
    }
  }

  if (a7)
  {
    v53 = v27 + 46;
    v54 = a7;
    do
    {
      v55 = *a6++;
      *(*(a1 + 224) + v53++) = v55;
      --v54;
    }

    while (v54);
  }

  if (v26)
  {
    v56 = a7 + v27 + 46;
    do
    {
      v57 = *__s++;
      *(*(a1 + 224) + v56++) = v57;
      --v42;
    }

    while (v42);
  }

  if (!*(a1 + 224))
  {
    result = 4294967192;
    goto LABEL_94;
  }

  v97[0] = 67324752;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  LOWORD(v97[0]) = 20;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v58 = *(a1 + 64);
  v59 = *(a1 + 240);
  LOWORD(v97[0]) = v59;
  if (v59 >= 0x10000)
  {
    LOWORD(v97[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v58, v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v60 = *(a1 + 64);
  v61 = *(a1 + 248);
  LOWORD(v97[0]) = v61;
  if (v61 >= 0x10000)
  {
    LOWORD(v97[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v60, v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v62 = 0;
  v63 = *(a1 + 64);
  v64 = *(a1 + 16640);
  do
  {
    v65 = v64;
    *(v97 + v62) = v64;
    v64 >>= 8;
    ++v62;
  }

  while (v62 != 4);
  if (v65 >= 0x100)
  {
    v97[0] = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v63, v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v97[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v97[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v97[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 4) != 4)
  {
    goto LABEL_91;
  }

  v66 = *(a1 + 64);
  LOWORD(v97[0]) = v27;
  if (v27 >= 0x10000uLL)
  {
    LOWORD(v97[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v66, v97, 2) != 2)
  {
    goto LABEL_91;
  }

  v67 = *(a1 + 64);
  LOWORD(v97[0]) = v96;
  if (v96 >= 0x10000)
  {
    LOWORD(v97[0]) = -1;
  }

  v68 = (*(a1 + 16))(*(a1 + 56), v67, v97, 2);
  v69 = v68 != 2;
  if (v68 == 2 && v27)
  {
    v69 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v25, v27) != v27;
  }

  v70 = v96;
  if (v96 && !v69)
  {
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v95, v96) == v70)
    {
      *(a1 + 104) = 0;
      *(a1 + 128) = 0x4000;
      *(a1 + 112) = 0;
      *(a1 + 120) = a1 + 256;
      *(a1 + 136) = 0;
      v71 = a1 + 0x4000;
      v72 = a15;
      goto LABEL_97;
    }

LABEL_91:
    *(a1 + 104) = 0;
    *(a1 + 128) = 0x4000;
    *(a1 + 112) = 0;
    *(a1 + 120) = a1 + 256;
    result = 0xFFFFFFFFLL;
    *(a1 + 136) = 0;
    v71 = a1 + 0x4000;
    goto LABEL_92;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0x4000;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 256;
  *(a1 + 136) = 0;
  v71 = a1 + 0x4000;
  v72 = a15;
  if (v69)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_92;
  }

LABEL_97:
  if (*(a1 + 248) != 8 || *(a1 + 252))
  {
    goto LABEL_99;
  }

  if (a12 < 0)
  {
    v94 = a12;
  }

  else
  {
    v94 = -a12;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = deflateInit2_((a1 + 96), a10, 8, v94, a13, a14, "1.2.12", 112);
  if (result)
  {
LABEL_92:
    *(v71 + 312) = 0;
    goto LABEL_94;
  }

  *(a1 + 208) = 1;
  v72 = a15;
LABEL_99:
  *(v71 + 312) = 0;
  if (!v72)
  {
    goto LABEL_107;
  }

  *(v71 + 272) = 1;
  crc_table = get_crc_table();
  *(a1 + 16688) = crc_table;
  if (!crypthead_calls++)
  {
    v76 = time(0);
    srand(v76 ^ 0xBB40E64E);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  for (j = 0; j != 10; v100[j++] = (((v79 & 0xFFFD ^ 3) * (v79 | 2)) >> 8) ^ (v78 >> 7))
  {
    v78 = rand();
    v79 = *(a1 + 16680);
    v80 = crc_table[(*(a1 + 16664) ^ (v78 >> 7))] ^ (*(a1 + 16664) >> 8);
    *(a1 + 16664) = v80;
    v81 = 134775813 * (*(a1 + 16672) + v80) + 1;
    *(a1 + 16672) = v81;
    *(a1 + 16680) = crc_table[(v79 ^ BYTE3(v81))] ^ (v79 >> 8);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  v82 = 0;
  v83 = *(a1 + 16680);
  v84 = *(a1 + 16664);
  v85 = *(a1 + 16672);
  do
  {
    v86 = (v83 & 0xFFFD ^ 3) * (v83 | 2);
    v87 = v100[v82];
    v84 = crc_table[(v87 ^ v84)] ^ (v84 >> 8);
    *(a1 + 16664) = v84;
    v85 = 134775813 * (v85 + v84) + 1;
    *(a1 + 16672) = v85;
    v83 = crc_table[(v83 ^ BYTE3(v85))] ^ (v83 >> 8);
    *(a1 + 16680) = v83;
    *(v97 + v82++) = v87 ^ HIBYTE(v86);
  }

  while (v82 != 10);
  v88 = ((v83 & 0xFFFFFFFD ^ 3) * (v83 | 2)) >> 8;
  v89 = crc_table[(v84 ^ BYTE2(a16))] ^ (v84 >> 8);
  *(a1 + 16664) = v89;
  v90 = 134775813 * (v85 + v89) + 1;
  *(a1 + 16672) = v90;
  v91 = crc_table[(v83 ^ BYTE3(v90))] ^ (v83 >> 8);
  *(a1 + 16680) = v91;
  v98 = v88 ^ BYTE2(a16);
  v92 = crc_table[v89 ^ BYTE3(a16)] ^ (v89 >> 8);
  *(a1 + 16664) = v92;
  v93 = 134775813 * (v90 + v92) + 1;
  *(a1 + 16672) = v93;
  *(a1 + 16680) = crc_table[(v91 ^ BYTE3(v93))] ^ (v91 >> 8);
  v99 = (((v91 & 0xFFFD ^ 3) * (v91 | 2)) >> 8) ^ BYTE3(a16);
  *(a1 + 16696) = 12;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v97, 12) != 12)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_107:
    result = 0;
    *(a1 + 88) = 1;
  }

LABEL_94:
  v73 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amai_zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 16648) = crc32(*(a1 + 16648), a2, a3);
  while (*(a1 + 104))
  {
    v4 = *(a1 + 128);
    if (v4 || (result = zipFlushWriteBuffer(a1), v4 = 0x4000, *(a1 + 128) = 0x4000, *(a1 + 120) = a1 + 256, result != -1))
    {
      if (*(a1 + 248) == 8 && !*(a1 + 252))
      {
        v10 = *(a1 + 136);
        result = deflate((a1 + 96), 0);
        LODWORD(v7) = *(a1 + 136) - v10;
      }

      else
      {
        v6 = *(a1 + 104);
        v7 = v6 >= v4 ? v4 : v6;
        if (v6)
        {
          v8 = 0;
          do
          {
            *(*(a1 + 120) + v8) = *(*(a1 + 96) + v8);
            ++v8;
          }

          while (v7 != v8);
          v6 = *(a1 + 104);
          v4 = *(a1 + 128);
        }

        result = 0;
        *(a1 + 104) = v6 - v7;
        *(a1 + 128) = v4 - v7;
        *(a1 + 96) += v7;
        v9 = *(a1 + 120) + v7;
        *(a1 + 112) += v7;
        *(a1 + 120) = v9;
        *(a1 + 136) += v7;
      }

      *(a1 + 212) += v7;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t zipFlushWriteBuffer(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (*(a1 + 16656) && v2)
  {
    v3 = (a1 + 256);
    v4 = *(a1 + 212);
    do
    {
      v5 = *(a1 + 16680);
      v6 = *(a1 + 16688);
      v7 = *(v6 + 8 * (*v3 ^ *(a1 + 16664))) ^ (*(a1 + 16664) >> 8);
      *(a1 + 16664) = v7;
      v8 = 134775813 * (*(a1 + 16672) + v7) + 1;
      *(a1 + 16672) = v8;
      *(a1 + 16680) = *(v6 + 8 * (v5 ^ BYTE3(v8))) ^ (v5 >> 8);
      *v3++ ^= ((v5 & 0xFFFD ^ 3) * (v5 | 2)) >> 8;
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), a1 + 256, v2) == *(a1 + 212))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a1 + 212) = 0;
  return result;
}

uint64_t amai_zipCloseFileInZipRaw(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 104) = 0;
  if (*(a1 + 248) == 8 && !*(a1 + 252))
  {
    do
    {
      if (!*(a1 + 128))
      {
        v33 = zipFlushWriteBuffer(a1);
        *(a1 + 128) = 0x4000;
        *(a1 + 120) = a1 + 256;
        if (v33 == -1)
        {
          v6 = 0xFFFFFFFFLL;
          goto LABEL_10;
        }
      }

      v34 = *(a1 + 136);
      v35 = deflate((a1 + 96), 4);
      *(a1 + 212) += *(a1 + 136) - v34;
    }

    while (!v35);
    if (v35 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v35;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 212))
  {
    if (zipFlushWriteBuffer(a1) == -1)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_10:
  if (*(a1 + 248) == 8 && !(*(a1 + 252) | v6))
  {
    v6 = deflateEnd((a1 + 96));
    *(a1 + 208) = 0;
  }

  if (!*(a1 + 252))
  {
    a3 = *(a1 + 16648);
    a2 = *(a1 + 112);
  }

  v7 = 0;
  v8 = *(a1 + 136);
  v9 = *(a1 + 16696);
  v10 = (*(a1 + 224) + 16);
  v11 = a3;
  do
  {
    v12 = v11;
    *(v10 + v7) = v11;
    v11 >>= 8;
    ++v7;
  }

  while (v7 != 4);
  v13 = v8 + v9;
  if (v12 >= 0x100)
  {
    *v10 = -1;
  }

  v14 = 0;
  v15 = (*(a1 + 224) + 20);
  v16 = v8 + v9;
  do
  {
    v17 = v16;
    *(v15 + v14) = v16;
    v16 >>= 8;
    ++v14;
  }

  while (v14 != 4);
  if (v17 >= 0x100)
  {
    *v15 = -1;
  }

  if (*(a1 + 184) == 1)
  {
    *(*(a1 + 224) + 36) = 1;
  }

  v18 = 0;
  v19 = (*(a1 + 224) + 24);
  v20 = a2;
  do
  {
    v21 = v20;
    *(v19 + v18) = v20;
    v20 >>= 8;
    ++v18;
  }

  while (v18 != 4);
  if (v21 >= 0x100)
  {
    *v19 = -1;
  }

  if (v6)
  {
    free(*(a1 + 224));
  }

  else
  {
    v6 = add_data_in_datablock((a1 + 72), *(a1 + 224), *(a1 + 232));
    free(*(a1 + 224));
    if (!v6)
    {
      v22 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 216) + 14, 0))
      {
        goto LABEL_59;
      }

      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        v25 = a3;
        *(&v37 + v23) = a3;
        a3 >>= 8;
        ++v23;
      }

      while (v23 != 4);
      if (v25 >= 0x100)
      {
        v37 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v24, &v37, 4) != 4)
      {
        goto LABEL_59;
      }

      v26 = 0;
      v27 = *(a1 + 64);
      do
      {
        v28 = v13;
        *(&v38 + v26) = v13;
        v13 >>= 8;
        ++v26;
      }

      while (v26 != 4);
      if (v28 >= 0x100)
      {
        v38 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v27, &v38, 4) == 4)
      {
        v29 = 0;
        v30 = *(a1 + 64);
        do
        {
          v31 = a2;
          *(&v39 + v29) = a2;
          a2 >>= 8;
          ++v29;
        }

        while (v29 != 4);
        if (v31 >= 0x100)
        {
          v39 = -1;
        }

        if ((*(a1 + 16))(*(a1 + 56), v30, &v39, 4) == 4)
        {
          v32 = 0;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
LABEL_59:
        v32 = -1;
      }

      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v22, 0))
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v32;
      }
    }
  }

  ++*(a1 + 16720);
  *(a1 + 88) = 0;
  return v6;
}

uint64_t amai_zipClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a2;
  if (*(a1 + 88) != 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = strlen(v2);
    goto LABEL_9;
  }

  v4 = amai_zipCloseFileInZipRaw(a1, 0, 0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = *(a1 + 16728);
  if (v2)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  if (!v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v8 = 0;
      v4 = 0;
      do
      {
        v10 = v9[2];
        if (v4)
        {
          v4 = -1;
        }

        else if (v10)
        {
          v11 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v9 + 4);
          v10 = v9[2];
          if (v11 == v10)
          {
            v4 = 0;
          }

          else
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = 0;
        }

        v8 += v10;
        v9 = *v9;
      }

      while (v9);
      goto LABEL_21;
    }

    v4 = 0;
  }

  v8 = 0;
LABEL_21:
  v12 = *(a1 + 72);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  if (!v4)
  {
    v31 = 101010256;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 16720);
    LOWORD(v31) = v15;
    if (v15 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v14, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 16720);
    LOWORD(v31) = v17;
    if (v17 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v16, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v19 = *(a1 + 64);
    do
    {
      v20 = v8;
      *(&v31 + v18) = v8;
      v8 >>= 8;
      ++v18;
    }

    while (v18 != 4);
    if (v20 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v19, &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    v21 = 0;
    v22 = *(a1 + 64);
    v23 = v7 - *(a1 + 16712);
    do
    {
      v24 = v23;
      *(&v31 + v21) = v23;
      v23 >>= 8;
      ++v21;
    }

    while (v21 != 4);
    if (v24 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v22, &v31, 4) == 4)
    {
      v25 = *(a1 + 64);
      LOWORD(v31) = v6;
      if (v6 >= 0x10000)
      {
        LOWORD(v31) = -1;
      }

      v26 = (*(a1 + 16))(*(a1 + 56), v25, &v31, 2);
      if (v26 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      if (v26 == 2 && v6)
      {
        if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v2, v6) == v6)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }
    }

    else
    {
LABEL_53:
      v4 = -1;
    }
  }

  v27 = (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v5 = v28;
  }

  else
  {
    v5 = v4;
  }

  v29 = *(a1 + 16728);
  if (v29)
  {
    free(v29);
  }

  free(a1);
  return v5;
}

_BYTE *init_keys(_BYTE *result, void *a2, uint64_t a3)
{
  *a2 = xmmword_2985615B0;
  a2[2] = 878082192;
  v3 = *result;
  if (*result)
  {
    v6 = result + 1;
    do
    {
      result = update_keys(a2, a3, v3);
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t update_keys(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  v4 = 134775813 * (a1[1] + v3) + 1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(v4))) ^ (a1[2] >> 8);
  return a3;
}

uint64_t SinopeRestoreHost::create@<X0>(SinopeRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: BasebandUpdater Version: %s\n", v8, v9, v10, v11, v12, "SinopeRestoreHost");
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v13 = operator new(0xE8uLL);
  ACFURestoreHost::ACFURestoreHost(v13);
  *v13 = &unk_2A1EE8700;
  *a3 = v13;
  result = SinopeRestoreHost::init(v13, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v15 = *(*v13 + 24);

    return v15(v13);
  }

  return result;
}

void sub_2984BB9B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

__CFDictionary *SinopeRestoreHost::createRequest(ACFULogging *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 17))
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: security mode demotion disallowed for Baseband\n", v40, v41, v42, v43, v44, "SinopeRestoreHost");
    return 0;
  }

  else
  {
    v5 = *(a2 + 8);
    v52 = *a2;
    v53 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = ACFURestoreHost::createRequest(a1, &v52, a3);
    v7 = v53;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (!v6)
    {
      v45 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v45, 2u, "%s::%s: failed to create output request dictionary\n", v46, v47, v48, v49, v50, "SinopeRestoreHost");
      return v6;
    }

    Value = CFDictionaryGetValue(v6, @"BbFactoryDebugEnable");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v9))
        {
          CFDictionarySetValue(v6, @"Cellular1,BbFactoryDebugEnable", *MEMORY[0x29EDB8F00]);
        }
      }
    }

    CFDictionaryRemoveValue(v6, @"BbFactoryDebugEnable");
    if (*(a3 + 16) == 1)
    {
      v12 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v12, 0, "%s::%s: reset epro to false for all firmware file tags\n", v13, v14, v15, v16, v17, "SinopeRestoreHost");
      v18 = *(a1 + 17);
      if (v18 != *(a1 + 18))
      {
        v19 = *MEMORY[0x29EDB8EF8];
        while (1)
        {
          v20 = CFDictionaryGetValue(v6, *v18);
          memset(__p, 170, sizeof(__p));
          ACFUCommon::stringFromCFString(*v18, __p);
          if (!v20)
          {
            break;
          }

          v22 = CFGetTypeID(v20);
          TypeID = CFDictionaryGetTypeID();
          if (v22 == TypeID)
          {
            CFDictionarySetValue(v20, @"EPRO", v19);
LABEL_18:
            v30 = 0;
            v31 = 1;
            goto LABEL_19;
          }

          v32 = ACFULogging::getLogInstance(TypeID);
          ACFULogging::handleMessage(v32, 2u, "%s::%s: invalid type for %s\n", v33, v34, v35, v36, v37, "SinopeRestoreHost");
          v31 = 0;
          v30 = 1;
LABEL_19:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if ((v31 & 1) == 0)
          {
            if (v30)
            {
              CFRelease(v6);
              return 0;
            }

            return v6;
          }

          v18 += 2;
          if (v18 == *(a1 + 18))
          {
            return v6;
          }
        }

        v24 = ACFULogging::getLogInstance(v21);
        ACFULogging::handleMessage(v24, 3u, "%s::%s: Tag %s doesn't exist -- continue...\n", v25, v26, v27, v28, v29, "SinopeRestoreHost");
        goto LABEL_18;
      }
    }
  }

  return v6;
}

void sub_2984BBCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void SinopeRestoreHost::modifyRequestForNonPersistentDemotion(const void ***this, __CFDictionary *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Modifying request for non-persistent demotion\n", v5, v6, v7, v8, v9, "SinopeRestoreHost");
  CFDictionarySetValue(a2, @"Cellular1,SocLiveNonce", *MEMORY[0x29EDB8F00]);
  v10 = this[17];
  if (v10 == this[18])
  {
    return;
  }

  v11 = *MEMORY[0x29EDB8EF8];
  while (1)
  {
    Value = CFDictionaryGetValue(a2, *v10);
    memset(__p, 170, sizeof(__p));
    ACFUCommon::stringFromCFString(*v10, __p);
    if (!Value)
    {
      v16 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v16, 3u, "%s::%s: Tag %s doesn't exist -- continue...\n", v17, v18, v19, v20, v21, "SinopeRestoreHost");
      goto LABEL_7;
    }

    v14 = CFGetTypeID(Value);
    TypeID = CFDictionaryGetTypeID();
    if (v14 != TypeID)
    {
      break;
    }

    CFDictionarySetValue(Value, @"Trusted", v11);
LABEL_7:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v10 += 2;
    if (v10 == this[18])
    {
      return;
    }
  }

  v22 = ACFULogging::getLogInstance(TypeID);
  ACFULogging::handleMessage(v22, 2u, "%s::%s: invalid type for %s\n", v23, v24, v25, v26, v27, "SinopeRestoreHost");
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2984BBE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SinopeRestoreHost::~SinopeRestoreHost(SinopeRestoreHost *this)
{
  ACFURestoreHost::~ACFURestoreHost(this);

  operator delete(v1);
}

uint64_t SinopeRestoreHost::init(SinopeRestoreHost *this, const __CFDictionary *a2, const __CFString *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v46 = xmmword_29EE9B8B0;
  v47 = *&off_29EE9B8C0;
  *&v48 = @"BbFactoryDebugEnable";
  v42 = xmmword_29EE9B870;
  v43 = *&off_29EE9B880;
  v44 = xmmword_29EE9B890;
  v45 = *&off_29EE9B8A0;
  *__src = xmmword_29EE9B850;
  *&__src[16] = *&off_29EE9B860;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 5, __src, &v48 + 8, 0x11uLL);
  v46 = xmmword_29EE9B938;
  v47 = *&off_29EE9B948;
  v48 = xmmword_29EE9B958;
  *&v49 = @"Cellular1,BbFactoryActivationManifestKeyHash";
  v42 = xmmword_29EE9B8F8;
  v43 = *&off_29EE9B908;
  v44 = xmmword_29EE9B918;
  v45 = *&off_29EE9B928;
  *__src = xmmword_29EE9B8D8;
  *&__src[16] = *&off_29EE9B8E8;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 8, __src, &v49 + 8, 0x13uLL);
  *__src = @"@Cellular1,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 11, __src, &__src[8], 1uLL);
  *__src = @"Cellular1,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 14, __src, &__src[8], 1uLL);
  v48 = xmmword_29EE9B9F0;
  v49 = *&off_29EE9BA00;
  v50 = xmmword_29EE9BA10;
  v51 = *&off_29EE9BA20;
  v44 = xmmword_29EE9B9B0;
  v45 = *&off_29EE9B9C0;
  v46 = xmmword_29EE9B9D0;
  v47 = *&off_29EE9B9E0;
  *__src = xmmword_29EE9B970;
  *&__src[16] = *&off_29EE9B980;
  v42 = xmmword_29EE9B990;
  v43 = *&off_29EE9B9A0;
  std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(this + 17, __src, v52, 0xCuLL);
  TypeID = CFNumberGetTypeID();
  *__src = @"Cellular1,ChipID";
  *&__src[8] = TypeID;
  v6 = CFNumberGetTypeID();
  *&__src[16] = @"Cellular1,BoardID";
  *&__src[24] = v6;
  v7 = CFNumberGetTypeID();
  *&v42 = @"Cellular1,SecurityDomain";
  *(&v42 + 1) = v7;
  v8 = CFBooleanGetTypeID();
  *&v43 = @"Cellular1,ProductionMode";
  *(&v43 + 1) = v8;
  v9 = CFBooleanGetTypeID();
  *&v44 = @"Cellular1,SecurityMode";
  *(&v44 + 1) = v9;
  v10 = CFBooleanGetTypeID();
  *&v45 = @"Cellular1,UID_MODE";
  *(&v45 + 1) = v10;
  v11 = CFNumberGetTypeID();
  *&v46 = @"Cellular1,ECID";
  *(&v46 + 1) = v11;
  v12 = CFDataGetTypeID();
  *&v47 = @"Cellular1,Nonce";
  *(&v47 + 1) = v12;
  v13 = CFBooleanGetTypeID();
  *&v48 = @"Cellular1,BbFactoryDebugEnable";
  *(&v48 + 1) = v13;
  v14 = CFBooleanGetTypeID();
  *&v49 = @"Cellular1,BbFATPCalibrationEnable";
  *(&v49 + 1) = v14;
  v15 = CFBooleanGetTypeID();
  *&v50 = @"Cellular1,BbCalibrationEnable";
  *(&v50 + 1) = v15;
  v16 = CFBooleanGetTypeID();
  *&v51 = @"Cellular1,BbProvisioningEnable";
  *(&v51 + 1) = v16;
  v17 = CFBooleanGetTypeID();
  v52[0] = @"Cellular1,BbActivationBypassEnable";
  v52[1] = v17;
  v18 = CFBooleanGetTypeID();
  v52[2] = @"Cellular1,FDRAllowUnsealed";
  v52[3] = v18;
  v19 = CFDataGetTypeID();
  v52[4] = @"Cellular1,BbFDRSecurityKeyHash";
  v52[5] = v19;
  v20 = CFDataGetTypeID();
  v52[6] = @"Cellular1,BbProvisioningManifestKeyHash";
  v52[7] = v20;
  v21 = CFDataGetTypeID();
  v52[8] = @"Cellular1,BbActivationManifestKeyHash";
  v52[9] = v21;
  v22 = CFBooleanGetTypeID();
  v52[10] = @"Cellular1,HardwareConfigLockOverride";
  v52[11] = v22;
  v23 = CFDataGetTypeID();
  v52[12] = @"Cellular1,BbFactoryActivationManifestKeyHash";
  v52[13] = v23;
  v24 = CFBooleanGetTypeID();
  v52[14] = @"BbFactoryDebugEnable";
  v52[15] = v24;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(this + 20, __src, &v53);
  *(this + 23) = @"Cellular1,BbFDRSecurityKeyHash";
  memset(__src, 170, 24);
  GetBasebandTatsuTagToFileNameMap(__src);
  v25 = *__src;
  if (*__src != &__src[8])
  {
    v26 = (this + 208);
    do
    {
      v27 = CFStringCompare(v25[4], @"Cellular1,LLB", 0) == kCFCompareEqualTo;
      v28 = v25[4];
      v29 = *v26;
      v30 = (this + 208);
      v31 = (this + 208);
      if (*v26)
      {
        while (1)
        {
          while (1)
          {
            v31 = v29;
            v32 = v29[4];
            if (v32 <= v28)
            {
              break;
            }

            v29 = *v31;
            v30 = v31;
            if (!*v31)
            {
              goto LABEL_10;
            }
          }

          if (v32 >= v28)
          {
            break;
          }

          v29 = v31[1];
          if (!v29)
          {
            v30 = v31 + 1;
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v33 = operator new(0x30uLL);
        v33[4] = v28;
        *(v33 + 20) = v27;
        std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(this + 25, v31, v30, v33);
      }

      v34 = v25[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = v34->isa;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v25[2];
          v36 = *v35 == v25;
          v25 = v35;
        }

        while (!v36);
      }

      v25 = v35;
    }

    while (v35 != &__src[8]);
  }

  *(this + 28) = @"Baseband";
  v37 = ACFURestoreHost::init(this, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(__src, *&__src[8]);
  v38 = *MEMORY[0x29EDCA608];
  return v37;
}

const void *SinopeRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2, int a3)
{
  memset(&v79, 170, sizeof(v79));
  GetBasebandTatsuTagToFileNameMap(&v77);
  v6 = std::map<__CFString const*,std::string>::at(&v77, kBasebandRTKitOS);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *v6, v6[1]);
  }

  else
  {
    v7 = *v6;
    v79.__r_.__value_.__r.__words[2] = v6[2];
    *&v79.__r_.__value_.__l.__data_ = v7;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v77, *(&v77 + 1));
  v8 = CFDictionaryContainsKey(a2, *(a1 + 8));
  if (v8)
  {
    v9 = ACFURestoreHost::copyDataFromFileDictionary(*(a1 + 8), a2, a3);
    v10 = v9;
    if (!v9 || (v11 = CFGetTypeID(v9), v11 != CFDataGetTypeID()))
    {
      std::string::basic_string[abi:ne200100]<0>(v75, "copyFirmware: rooted override data unavailable");
      v12 = ACFUError::addError(a1 + 24, v75, 0x3E8uLL, 0);
      if (v76 < 0)
      {
        operator delete(v75[0]);
      }

      LogInstance = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: rooted override data unavailable\n", v14, v15, v16, v17, v18, "SinopeRestoreHost");
      goto LABEL_41;
    }

LABEL_12:
    ACFUFTABFile::create(v10, 0, 0xFFFF, &v77);
    v27 = v77;
    if (v77)
    {
      if ((*(*v77 + 16))(v77, &v79))
      {
        v28 = (*(*v27 + 40))(v27);
        if (v28 && (TypeID = CFDataGetTypeID(), v30 = CFGetTypeID(v28), TypeID == v30))
        {
          v31 = ACFULogging::getLogInstance(v30);
          std::string::basic_string[abi:ne200100]<0>(&v65, "SinopeRestoreHost");
          v32 = std::string::append(&v65, "::");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v66.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v66.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          v34 = std::string::append(&v66, "copyFirmwareUpdater");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v78 = v34->__r_.__value_.__r.__words[2];
          v77 = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v31, &v77, 3, "outData", v28);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          (*(*v27 + 24))(v27);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: could not create output data");
          v37 = ACFUError::addError(a1 + 24, __p, 0x3E8uLL, 0);
          if (v68 < 0)
          {
            operator delete(__p[0]);
          }

          v38 = ACFULogging::getLogInstance(v37);
          ACFULogging::handleMessage(v38, 2u, "%s::%s: could not create output data\n", v39, v40, v41, v42, v43, "SinopeRestoreHost");
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v69, "copyFirmware: bundle firmware specified is invalid");
        v51 = ACFUError::addError(a1 + 24, v69, 0x3E8uLL, 0);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        v52 = ACFULogging::getLogInstance(v51);
        ACFULogging::handleMessage(v52, 2u, "%s::%s: bundle firmware specified is invalid\n", v53, v54, v55, v56, v57, "SinopeRestoreHost");
        v28 = 0;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v71, "copyFirmware: failed to init firmware");
      v44 = ACFUError::addError(a1 + 24, v71, 0xFA0uLL, 0);
      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      v45 = ACFULogging::getLogInstance(v44);
      v27 = 0;
      ACFULogging::handleMessage(v45, 2u, "%s::%s: failed to init firmware\n", v46, v47, v48, v49, v50, "SinopeRestoreHost");
      v28 = 0;
    }

    goto LABEL_23;
  }

  v19 = ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage(v19, 0, "%s::%s: no firmware override specified\n", v20, v21, v22, v23, v24, "SinopeRestoreHost");
  v25 = ACFURestoreHost::copyDataFromFileDictionary(@"Cellular1,RTKitOS", a2, a3);
  v10 = v25;
  if (v25)
  {
    v26 = CFGetTypeID(v25);
    if (v26 == CFDataGetTypeID())
    {
      goto LABEL_12;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v73, "copyFirmware: rtkitos bundle data unavailable");
  v58 = ACFUError::addError(a1 + 24, v73, 0x3E8uLL, 0);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v59 = ACFULogging::getLogInstance(v58);
  ACFULogging::handleMessage(v59, 2u, "%s::%s: rtkitos bundle data unavailable\n", v60, v61, v62, v63, v64, "SinopeRestoreHost");
LABEL_41:
  v28 = 0;
  v27 = 0;
  if (v10)
  {
LABEL_23:
    CFRelease(v10);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    (*(*v27 + 56))(v27);
  }

  return v28;
}

void sub_2984BC8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  _Unwind_Resume(exception_object);
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE99680, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

char *std::vector<__CFString const*>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

char *std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = a2[1];
    a3[4] = v6;
    a3[5] = v9;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE99688, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v12 = operator new(8 * v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * (v8 >> 3)];
    *v13 = a2;
    v6 = v13 + 8;
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[8 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

const __CFDictionary *ParseUpdaterDebugArgs(const __CFDictionary *result, uint64_t a2)
{
  v45 = *MEMORY[0x29EDCA608];
  if (result)
  {
    result = CFDictionaryGetValue(result, @"Options");
    if (result)
    {
      v3 = result;
      v36[0] = 0xAAAAAAAAAAAAAAAALL;
      v36[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v36, result);
      Bool = ctu::cf::map_adapter::getBool(v36, @"RestoreInternal");
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, @"DebugArgs", &value))
      {
        v5 = CFGetTypeID(value);
        if (v5 == CFStringGetTypeID())
        {
          memset(&__p, 170, sizeof(__p));
          memset(__b, 170, sizeof(__b));
          CFStringGetCString(value, __b, 1024, 0x8000100u);
          std::string::basic_string[abi:ne200100]<0>(&__p, __b);
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            std::string::operator=((a2 + 40), &__p);
            *&v41[1] = 0;
            v42 = 0;
            v43 = 0;
            std::operator+<char>();
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = *__b;
            if (__b[23] >= 0)
            {
              v8 = HIBYTE(*&__b[16]);
            }

            else
            {
              v8 = *&__b[8];
            }

            if (v8)
            {
              v9 = 0;
              v10 = MEMORY[0x29EDCA600];
              do
              {
                while (1)
                {
                  v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v12 = v11->__r_.__value_.__s.__data_[v9];
                  v13 = (v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(v10 + 4 * v12 + 60) & 0x4000;
                  v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  if (v9 >= v8 || !v13)
                  {
                    break;
                  }

                  v14->__r_.__value_.__s.__data_[v9++] = 0;
                }

                std::vector<char *>::push_back[abi:ne200100](&v41[1], v14 + v9);
                v15 = v9 + 1;
                do
                {
                  v16 = v15;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  v18 = p_p->__r_.__value_.__s.__data_[v16];
                  if ((v18 & 0x80000000) != 0)
                  {
                    v19 = __maskrune(v18, 0x4000uLL);
                  }

                  else
                  {
                    v19 = *(v10 + 4 * v18 + 60) & 0x4000;
                  }

                  v15 = v16 + 1;
                }

                while (v16 < v8 && !v19);
                v9 = v16;
              }

              while (v16 < v8);
            }

            std::vector<char *>::push_back[abi:ne200100](&v41[1], 0);
            v20 = MEMORY[0x29EDCA660];
            v21 = MEMORY[0x29EDCA650];
            *MEMORY[0x29EDCA658] = 1;
            *v20 = 1;
            while (1)
            {
              v22 = *&v41[1];
              v23 = getopt_long(((v42 - *&v41[1]) >> 3) - 1, *&v41[1], "dmfl:tnp:iuseb:o:", &ParseDebugArgs(std::string &,UpdaterDebugArgs &,BOOL)::long_options, 0);
              switch(v23)
              {
                case 'b':
                  if (!Bool)
                  {
                    continue;
                  }

                  std::string::basic_string[abi:ne200100]<0>(&v39[1], *v21);
                  v24 = v41[0];
                  if ((v41[0] & 0x8000000000000000) != 0)
                  {
                    v25 = *&v39[1];
                    v26 = v40;
                    if (strncasecmp("ROM", *&v39[1], v40))
                    {
                      goto LABEL_70;
                    }

                    *(a2 + 64) = 0;
LABEL_85:
                    operator delete(v25);
                  }

                  else
                  {
                    v25 = &v39[1];
                    v26 = v41[0];
                    if (!strncasecmp("ROM", &v39[1], v41[0]))
                    {
                      *(a2 + 64) = 0;
                    }

                    else
                    {
LABEL_70:
                      if (!strncasecmp("PL", v25, v26))
                      {
                        v31 = 1;
                      }

                      else
                      {
                        v31 = 2;
                      }

                      *(a2 + 64) = v31;
                      if (v24 < 0)
                      {
                        v25 = *&v39[1];
                        goto LABEL_85;
                      }
                    }
                  }

                  continue;
                case 'c':
                case 'g':
                case 'h':
                case 'j':
                case 'k':
                case 'q':
                case 'r':
                  continue;
                case 'd':
                  *(a2 + 35) = 1;
                  continue;
                case 'e':
                  *(a2 + 37) = 1;
                  continue;
                case 'f':
                  if (Bool)
                  {
                    *(a2 + 8) = 1;
                  }

                  continue;
                case 'i':
                  if (Bool)
                  {
                    *(a2 + 32) = 1;
                  }

                  continue;
                case 'l':
                  *(a2 + 4) = atoi(*v21);
                  continue;
                case 'm':
                  *(a2 + 36) = 1;
                  continue;
                case 'n':
                  if (Bool)
                  {
                    *(a2 + 9) = 1;
                  }

                  continue;
                case 'o':
                  if (!Bool)
                  {
                    continue;
                  }

                  std::string::basic_string[abi:ne200100]<0>(v37, *v21);
                  v29 = v39[0];
                  if ((v39[0] & 0x8000000000000000) != 0)
                  {
                    v25 = *v37;
                    v30 = v38;
                    if (!strncasecmp("UART", *v37, v38))
                    {
                      *(a2 + 65) = 0;
                      goto LABEL_85;
                    }

LABEL_76:
                    if (!strncasecmp("PCIE", v25, v30))
                    {
                      v32 = 1;
                    }

                    else
                    {
                      v32 = 2;
                    }

                    *(a2 + 65) = v32;
                    if (v29 < 0)
                    {
                      v25 = *v37;
                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    v25 = v37;
                    v30 = v39[0];
                    if (strncasecmp("UART", v37, v39[0]))
                    {
                      goto LABEL_76;
                    }

                    *(a2 + 65) = 0;
                  }

                  continue;
                case 'p':
                  if (!Bool)
                  {
                    continue;
                  }

                  std::string::basic_string[abi:ne200100]<0>(__b, *v21);
                  v27 = std::stol(__b, 0, 10);
                  v28 = v27;
                  if ((__b[23] & 0x80000000) != 0)
                  {
                    operator delete(*__b);
                    if ((v28 & 0x8000000000000000) == 0)
                    {
LABEL_82:
                      *(a2 + 16) = v28;
                      *(a2 + 24) = 1;
                    }
                  }

                  else if ((v27 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_82;
                  }

                  break;
                case 's':
                  if (Bool)
                  {
                    *(a2 + 34) = 1;
                  }

                  continue;
                case 't':
                  if (Bool)
                  {
                    *a2 = 1;
                  }

                  continue;
                case 'u':
                  if (Bool)
                  {
                    *(a2 + 33) = 1;
                  }

                  continue;
                default:
                  if (v23 != -1)
                  {
                    continue;
                  }

                  if (v22)
                  {
                    operator delete(v22);
                  }

                  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  goto LABEL_89;
              }
            }
          }

LABEL_89:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      result = MEMORY[0x29C28BA90](v36);
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void GetBasebandTatsuTagToFileNameMap(void *a1@<X8>)
{
  v16[3] = *MEMORY[0x29EDCA608];
  memset(a1, 170, 24);
  v4 = @"Cellular1,LLB";
  std::string::basic_string[abi:ne200100]<0>(v5, "illb");
  v5[3] = @"Cellular1,iBSS";
  std::string::basic_string[abi:ne200100]<0>(v6, "ibss");
  v6[3] = @"Cellular1,PMUFW";
  std::string::basic_string[abi:ne200100]<0>(v7, "apmu");
  v7[3] = @"Cellular1,PMUFW2";
  std::string::basic_string[abi:ne200100]<0>(v8, "pmfw");
  v8[3] = @"Cellular1,iBootData";
  std::string::basic_string[abi:ne200100]<0>(v9, "ibdt");
  v9[3] = @"Cellular1,RTKitOS";
  std::string::basic_string[abi:ne200100]<0>(v10, "rkos");
  v10[3] = @"Cellular1,CdpAscDl";
  std::string::basic_string[abi:ne200100]<0>(v11, "cdpd");
  v11[3] = @"Cellular1,CdpAscUl";
  std::string::basic_string[abi:ne200100]<0>(v12, "cdpu");
  v12[3] = @"Cellular1,CdpHost";
  std::string::basic_string[abi:ne200100]<0>(v13, "cdph");
  v13[3] = @"Cellular1,L1CL1S";
  std::string::basic_string[abi:ne200100]<0>(v14, "l1cs");
  v14[3] = @"Cellular1,ProvisioningFirmware";
  std::string::basic_string[abi:ne200100]<0>(v15, "prfw");
  v15[3] = @"Cellular1,Recipe";
  std::string::basic_string[abi:ne200100]<0>(v16, "rcpi");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, &v4, 12);
  v2 = 48;
  do
  {
    if (*(&v5[v2 - 1] - 1) < 0)
    {
      operator delete(v5[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_2984BD9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 360;
  v13 = -384;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t SinopeUpdaterGetTags(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    v14 = inited;
    v15 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v15, 2u, "%s::%s: failed to init logging\n", v16, v17, v18, v19, v20, "SinopeRestoreInfo");
    v21 = *MEMORY[0x29EDB8ED8];
    v22 = v14;
LABEL_9:
    v12 = 0;
    *a4 = CFErrorCreate(v21, @"SinopeRestoreInfo", v22, 0);
    return v12;
  }

  v10 = SinopeRestoreHost::create(a1, @"SinopeRestoreInfo", &v35);
  v11 = v35;
  if (!v35)
  {
    v23 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v23, 2u, "%s::%s: failed to create host object\n", v24, v25, v26, v27, v28, "SinopeRestoreInfo");
    v21 = *MEMORY[0x29EDB8ED8];
    v22 = 4000;
    goto LABEL_9;
  }

  v12 = (**v35)(v35);
  if (!v12)
  {
    v29 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v29, 2u, "%s::%s: failed to get tags\n", v30, v31, v32, v33, v34, "SinopeRestoreInfo");
    *a4 = ACFURestoreHost::getError(v11);
  }

  (*(*v11 + 24))(v11);
  return v12;
}

const __CFData *SinopeUpdaterCopyFirmware(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v7 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, v7, a2, a3);
  if (inited)
  {
    v23 = inited;
    v24 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v24, 2u, "%s::%s: failed to init logging\n", v25, v26, v27, v28, v29, "SinopeRestoreInfo");
    v21 = 0;
    *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"SinopeRestoreInfo", v23, 0);
    return v21;
  }

  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@", @"DeviceInfo", @"ACFUFirmware");
  if (!v11)
  {
    v30 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v30, 2u, "%s::%s: failed to create Baseband Firmware override key path (read)\n", v31, v32, v33, v34, v35, "SinopeRestoreInfo");
    return 0;
  }

  v12 = v11;
  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict)
  {
    v17 = 0;
    goto LABEL_9;
  }

  TypeID = CFStringGetTypeID();
  v15 = CFGetTypeID(ValueForKeyPathInDict);
  if (TypeID != v15)
  {
    v49 = ACFULogging::getLogInstance(v15);
    CFGetTypeID(ValueForKeyPathInDict);
    ACFULogging::handleMessage(v49, 2u, "%s::%s: Baseband Firmware override has wrong type %lu\n", v50, v51, v52, v53, v54, "SinopeRestoreInfo");
LABEL_26:
    v20 = 0;
    v21 = 0;
    ValueForKeyPathInDict = 0;
    goto LABEL_13;
  }

  v16 = CFStringCreateWithFormat(v10, 0, @"%@.%@", @"Options", @"ACFUFirmware");
  if (!v16)
  {
    v55 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v55, 2u, "%s::%s: failed to create Baseband Firmware override key path (write)\n", v56, v57, v58, v59, v60, "SinopeRestoreInfo");
    goto LABEL_26;
  }

  v17 = v16;
  v18 = AMSupportCopySetValueForKeyPathInDict();
  ValueForKeyPathInDict = v18;
  if (!v18)
  {
    v61 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v61, 2u, "%s::%s: failed to copy options\n", v62, v63, v64, v65, v66, "SinopeRestoreInfo");
    v21 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  v7 = v18;
LABEL_9:
  v19 = SinopeRestoreHost::create(v7, @"SinopeRestoreInfo", &v67);
  v20 = v67;
  if (!v67)
  {
    v36 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v36, 2u, "%s::%s: failed to create host object\n", v37, v38, v39, v40, v41, "SinopeRestoreInfo");
    Error = CFErrorCreate(v10, @"SinopeRestoreInfo", 4000, 0);
    goto LABEL_22;
  }

  v21 = ACFURestoreHost::copyFirmware(v67);
  if (!v21)
  {
    v43 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v43, 2u, "%s::%s: failed to copy firmware\n", v44, v45, v46, v47, v48, "SinopeRestoreInfo");
    Error = ACFURestoreHost::getError(v20);
LABEL_22:
    v21 = 0;
    *a4 = Error;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    CFRelease(v17);
  }

LABEL_13:
  CFRelease(v12);
  if (ValueForKeyPathInDict)
  {
    CFRelease(ValueForKeyPathInDict);
  }

  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  return v21;
}

__CFDictionary *SinopeUpdaterCreateRequest(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v125[0] = 0xAAAAAAAAAAAAAAAALL;
  v125[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = ACFUError::ACFUError(v125, @"SinopeRestoreInfo");
  v123 = 0;
  v124 = 0;
  v122 = 0xAAAAAAAAAAAA0000;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v116 = v9;
  v117 = v9;
  LOBYTE(v116) = 0;
  DWORD1(v116) = 0;
  WORD4(v116) = 0;
  LOBYTE(v117) = 0;
  BYTE8(v117) = 0;
  v120 = 0xAAAAAAAAAAAA0202;
  __p[1] = 0;
  v119 = 0uLL;
  __p[0] = 0xAAAA000000000000;
  v121[0] = @"Cellular1,ProductionMode";
  v121[1] = @"Cellular1,SecurityMode";
  LogInstance = ACFULogging::getLogInstance(v8);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    v57 = ACFULogging::getLogInstance(inited);
    v63 = "%s::%s: failed to init logging\n";
LABEL_38:
    ACFULogging::handleMessage(v57, 2u, v63, v58, v59, v60, v61, v62, "SinopeRestoreInfo");
    v35 = 0;
LABEL_42:
    Copy = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    v57 = ACFULogging::getLogInstance(inited);
    v63 = "%s::%s: null error parameter\n";
    goto LABEL_38;
  }

  v12 = ParseUpdaterDebugArgs(a1, &v116);
  if ((BYTE3(__p[0]) & 1) != 0 || BYTE4(__p[0]) == 1)
  {
    LOBYTE(v122) = 1;
  }

  v13 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v13, 0, "%s::%s: Let's check if we need to take the regular bbticket vs prov flow\n", v14, v15, v16, v17, v18, "SinopeRestoreInfo");
  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  v20 = Value;
  if (!Value)
  {
    v64 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v64, 2u, "%s::%s: null device info\n", v65, v66, v67, v68, v69, "SinopeRestoreInfo");
    v33 = *MEMORY[0x29EDB8ED8];
    v70 = 4001;
LABEL_46:
    CFError = CFErrorCreate(v33, @"SinopeRestoreInfo", v70, 0);
LABEL_47:
    v35 = 0;
LABEL_35:
    Copy = 0;
    *a4 = CFError;
    goto LABEL_12;
  }

  v21 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  if (v21 != TypeID)
  {
    v71 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v71, 2u, "%s::%s: incorrect device info type\n", v72, v73, v74, v75, v76, "SinopeRestoreInfo");
LABEL_44:
    v33 = *MEMORY[0x29EDB8ED8];
    v70 = 4002;
    goto LABEL_46;
  }

  v23 = CFDictionaryGetValue(v20, @"BasebandProvInfo");
  v24 = v23;
  if (v23)
  {
    v25 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v25, 0, "%s::%s: Prov flow\n", v26, v27, v28, v29, v30, "SinopeRestoreInfo");
    v31 = CFGetTypeID(v24);
    v32 = CFDictionaryGetTypeID();
    if (v31 == v32)
    {
      v33 = *MEMORY[0x29EDB8ED8];
      Copy = CFDictionaryCreateCopy(*MEMORY[0x29EDB8ED8], v20);
      if (Copy)
      {
        v35 = 0;
        goto LABEL_12;
      }

      v89 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v89, 2u, "%s::%s: failed to create options cp\n", v90, v91, v92, v93, v94, "SinopeRestoreInfo");
      v70 = 4000;
      goto LABEL_46;
    }

    v83 = ACFULogging::getLogInstance(v32);
    ACFULogging::handleMessage(v83, 2u, "%s::%s: incorrect baseband prov info type\n", v84, v85, v86, v87, v88, "SinopeRestoreInfo");
    goto LABEL_44;
  }

  v37 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v37, 0, "%s::%s: Regular bbticket flow\n", v38, v39, v40, v41, v42, "SinopeRestoreInfo");
  v43 = SinopeRestoreHost::create(a1, @"SinopeRestoreInfo", &v115);
  v35 = v115;
  if (!v115)
  {
    v95 = ACFULogging::getLogInstance(v43);
    ACFULogging::handleMessage(v95, 2u, "%s::%s: failed to create host object\n", v96, v97, v98, v99, v100, "SinopeRestoreInfo");
    CFError = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"SinopeRestoreInfo", 4000, 0);
    goto LABEL_47;
  }

  v44 = CFDictionaryGetValue(a1, @"FirmwareData");
  v45 = v44;
  if (!v44 || (v46 = CFDataGetTypeID(), v44 = CFGetTypeID(v45), v46 != v44))
  {
    v77 = ACFULogging::getLogInstance(v44);
    ACFULogging::handleMessage(v77, 0, "%s::%s: Invalid or no firmware file present in restore options\n", v78, v79, v80, v81, v82, "SinopeRestoreInfo");
    goto LABEL_42;
  }

  GetBasebandTatsuTagToFileNameMap(v113);
  RTKitFirmware::create(v113, v45, 0, &v115);
  std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v123, &v115);
  v47 = v115;
  v115 = 0;
  if (v47)
  {
    (*(*v47 + 56))(v47);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v113, v114);
  if (!v123)
  {
    v50 = ACFULogging::getLogInstance(v48);
    ACFULogging::handleMessage(v50, 2u, "%s::%s: Failed to find firmware\n", v51, v52, v53, v54, v55, "SinopeRestoreInfo");
    std::string::basic_string[abi:ne200100]<0>(v111, "SinopeUpdaterCreateRequest: failed to open firmware");
    ACFUError::addError(v125, v111, 0x3E8uLL, 0);
    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    CFError = ACFUError::getCFError(v125);
    goto LABEL_35;
  }

  v109 = v123;
  v110 = v124;
  if (v124)
  {
    atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Copy = (*(*v35 + 8))(v35, &v109, v121);
  v49 = v110;
  if (v110)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v110);
  }

  if (!Copy)
  {
    v101 = ACFULogging::getLogInstance(v49);
    ACFULogging::handleMessage(v101, 2u, "%s::%s: failed to create request dict\n", v102, v103, v104, v105, v106, "SinopeRestoreInfo");
    std::string::basic_string[abi:ne200100]<0>(v107, "SinopeUpdaterCreateRequest: failed to create request dict");
    ACFUError::addError(v125, v107, 0xFA1uLL, 0);
    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    CFError = ACFURestoreHost::getError(v35);
    goto LABEL_35;
  }

  if (BYTE4(__p[0]) == 1)
  {
    SinopeRestoreHost::modifyRequestForNonPersistentDemotion(v35, Copy);
  }

LABEL_12:
  if (SHIBYTE(v119) < 0)
  {
    operator delete(__p[1]);
  }

  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  if (v124)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v124);
  }

  ACFUError::~ACFUError(v125);
  return Copy;
}

void sub_2984BE5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  v42 = *(v40 - 88);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ACFUError::~ACFUError((v40 - 80));
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t ACFUDataContainer::DirectDataRef::DirectDataRef(uint64_t this, void *a2, uint64_t a3, char a4)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 17) = 1;
  return this;
}

void ACFUDataContainer::DirectDataRef::~DirectDataRef(ACFUDataContainer::DirectDataRef *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if (*(this + 17) == 1)
      {
        if (*(this + 16))
        {
          if (v2 % sysconf(29))
          {
            v4 = sysconf(29);
            v5 = sysconf(29);
            LogInstance = ACFULogging::getLogInstance(v5);
            v3 += v2 % v5;
            v20 = *(this + 1);
            ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: unmaping new length for page alignment (alignedLength: %zu. originalLength: %zu)\n", v7, v8, v9, v10, v11, "ACFUDataContainer");
            v2 = v2 / v4 * v4;
          }

          v12 = munmap(v2, v3);
          if (v12 == -1)
          {
            v13 = ACFULogging::getLogInstance(v12);
            v14 = __error();
            strerror(*v14);
            ACFULogging::handleMessage(v13, 2u, "%s::%s: failed to unmap file: (%s)\n", v15, v16, v17, v18, v19, "ACFUDataContainer");
          }
        }

        else
        {
          free(*this);
        }
      }
    }
  }
}

void ACFUDataContainer::create(ACFUDataContainer *this@<X0>, ACFUDataContainer **a2@<X8>)
{
  v5 = operator new(0x20uLL);
  *v5 = 0;
  v5[2] = -1;
  *(v5 + 2) = 0;
  *(v5 + 12) = 0;
  *a2 = v5;
  if ((ACFUDataContainer::init(v5, this) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a2, 0);
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init data container object\n", v8, v9, v10, v11, v12, "ACFUDataContainer");
  }
}

{
  v5 = operator new(0x20uLL);
  *v5 = 0;
  v5[2] = -1;
  *(v5 + 2) = 0;
  *(v5 + 12) = 0;
  *a2 = v5;
  if ((ACFUDataContainer::init(v5, this) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a2, 0);
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init data container object\n", v8, v9, v10, v11, v12, "ACFUDataContainer");
  }
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, const __CFData *a2)
{
  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, a2);
      *this = MutableCopy;
      if (MutableCopy)
      {
        return 1;
      }

      v7 = "%s::%s: failed to allocate space for file object\n";
    }

    else
    {
      v7 = "%s::%s: data is of an unsupported type\n";
    }
  }

  else
  {
    v7 = "%s::%s: bad parameter!\n";
  }

  ACFUDataContainer::init(v7);
  return 0;
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, __CFData *a2)
{
  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v5 = AMSupportSafeRetain();
      *this = v5;
      if (v5)
      {
        return 1;
      }

      v7 = "%s::%s: failed to allocate space for file object\n";
    }

    else
    {
      v7 = "%s::%s: data is of an unsupported type\n";
    }
  }

  else
  {
    v7 = "%s::%s: bad parameter!\n";
  }

  ACFUDataContainer::init(v7);
  return 0;
}

void ACFUDataContainer::create(__CFString *this@<X0>, const __CFString *a2@<X1>, ACFUDataContainer **a3@<X8>)
{
  v3 = a2;
  v6 = operator new(0x20uLL);
  *v6 = 0;
  v6[2] = -1;
  *(v6 + 2) = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  if ((ACFUDataContainer::init(v6, this, v3) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a3, 0);
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init data container object\n", v9, v10, v11, v12, v13, "ACFUDataContainer");
  }
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, __CFString *a2, char a3)
{
  ACFUCommon::stringFromCFString(a2, &v43);
  v46 = v44;
  *v45 = v43;
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    if (HIBYTE(v44))
    {
      v7 = v45;
      goto LABEL_6;
    }

LABEL_40:
    LogInstance = ACFULogging::getLogInstance(v6);
    v41 = "%s::%s: failed to acquire file path string\n";
LABEL_44:
    ACFULogging::handleMessage(LogInstance, 2u, v41, v36, v37, v38, v39, v40, "ACFUDataContainer");
    goto LABEL_21;
  }

  if (!v45[1])
  {
    goto LABEL_40;
  }

  v7 = v45[0];
LABEL_6:
  if (access(v7, 0))
  {
    *(this + 25) = 1;
    if (v46 >= 0)
    {
      v8 = v45;
    }

    else
    {
      v8 = v45[0];
    }

    v9 = open(v8, 514, 438);
  }

  else
  {
    if (v46 >= 0)
    {
      v10 = v45;
    }

    else
    {
      v10 = v45[0];
    }

    if (access(v10, 6))
    {
      if (v46 >= 0)
      {
        v11 = v45;
      }

      else
      {
        v11 = v45[0];
      }

      v12 = access(v11, 4);
      if (v12)
      {
        v13 = ACFULogging::getLogInstance(v12);
        v14 = __error();
        strerror(*v14);
        v20 = "%s::%s: no read or write permissions to file: (%s)\n";
LABEL_20:
        ACFULogging::handleMessage(v13, 2u, v20, v15, v16, v17, v18, v19, "ACFUDataContainer");
LABEL_21:
        v21 = 0;
        goto LABEL_37;
      }

      v23 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v23, 2u, "%s::%s: no write permissions to file... attempting to open file as read-only\n", v24, v25, v26, v27, v28, "ACFUDataContainer");
      if (v46 >= 0)
      {
        v29 = v45;
      }

      else
      {
        v29 = v45[0];
      }

      v9 = open(v29, 0);
    }

    else
    {
      *(this + 25) = 1;
      if (v46 >= 0)
      {
        v22 = v45;
      }

      else
      {
        v22 = v45[0];
      }

      v9 = open(v22, 2);
    }
  }

  *(this + 2) = v9;
  if ((v9 & 0x80000000) != 0)
  {
    v13 = ACFULogging::getLogInstance(v9);
    v42 = __error();
    strerror(*v42);
    v20 = "%s::%s: failed to open file error: (%s)\n";
    goto LABEL_20;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  *(this + 2) = Copy;
  if (!Copy)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v41 = "%s::%s: failed to create copy of file path\n";
    goto LABEL_44;
  }

  if ((a3 & 1) == 0)
  {
    MutableFileDatafromFilePath = ACFUCommon::createMutableFileDatafromFilePath(a2, v31);
    *this = MutableFileDatafromFilePath;
    if (MutableFileDatafromFilePath)
    {
      v32 = 0;
      goto LABEL_36;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v41 = "%s::%s: failed to acquire firmware data from file path\n";
    goto LABEL_44;
  }

  v32 = 1;
LABEL_36:
  *(this + 24) = v32;
  v21 = 1;
LABEL_37:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  return v21;
}

void sub_2984BEEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFData *ACFUDataContainer::copyData(ACFUDataContainer *this)
{
  if (*(this + 24) != 1)
  {
    v5 = *this;
    if (*this)
    {
      AMSupportSafeRetain();
      return *this;
    }

    else
    {
      ACFUDataContainer::copyData(0);
      return 0;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v2 = *(this + 2);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v15 = "%s::%s: file path has not been initialized\n";
LABEL_20:
    ACFULogging::handleMessage(LogInstance, 2u, v15, v10, v11, v12, v13, v14, "ACFUDataContainer");
    goto LABEL_22;
  }

  ACFUCommon::stringFromCFString(v2, &v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = v24;
  *__p = v23;
  if (SHIBYTE(v24) < 0)
  {
    if (__p[1])
    {
      v4 = __p[0];
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (!HIBYTE(v24))
  {
LABEL_19:
    LogInstance = ACFULogging::getLogInstance(v3);
    v15 = "%s::%s: failed to acquire file path c string\n";
    goto LABEL_20;
  }

  v4 = __p;
LABEL_12:
  v7 = stat(v4, &v27);
  if (v7 != -1)
  {
    v6 = ACFUDataContainer::copyData(this, 0, v27.st_size);
    goto LABEL_14;
  }

  v16 = ACFULogging::getLogInstance(v7);
  v17 = __error();
  strerror(*v17);
  ACFULogging::handleMessage(v16, 2u, "%s::%s: failed to obtain file stats: (%s)\n", v18, v19, v20, v21, v22, "ACFUDataContainer");
LABEL_22:
  v6 = 0;
LABEL_14:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_2984BF034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

__CFData *ACFUDataContainer::copyData(ACFUDataContainer *this, unsigned int a2, unint64_t a3)
{
  if (!a3)
  {
    ACFUDataContainer::copyData(this);
    return 0;
  }

  v3 = a3;
  Length = ACFUDataContainer::getLength(this);
  if (!Length)
  {
    ACFUDataContainer::copyData(0);
    return 0;
  }

  if (Length <= a2)
  {
    ACFUDataContainer::copyData(Length);
    return 0;
  }

  v7 = a2;
  v8 = Length - a2;
  if (v8 < v3)
  {
    LogInstance = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: reducing requested length %zu -> %zu\n", v10, v11, v12, v13, v14, "ACFUDataContainer");
    v3 = v8;
  }

  if (*(this + 24) != 1)
  {
    if (*this)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
      if (Mutable)
      {
        BytePtr = CFDataGetBytePtr(*this);
        CFDataAppendBytes(Mutable, &BytePtr[v7], v3);
      }

      else
      {
        ACFUDataContainer::copyData(0);
      }

      return Mutable;
    }

    ACFUDataContainer::copyData(Length);
    return 0;
  }

  if ((*(this + 2) & 0x80000000) != 0)
  {
    ACFUDataContainer::copyData(Length);
    return 0;
  }

  v15 = (a2 / sysconf(29));
  v16 = sysconf(29);
  v17 = (v15 * v16);
  v18 = a2 - v17;
  v19 = ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage(v19, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v20, v21, v22, v23, v24, "ACFUDataContainer");
  v25 = mmap(0, v3 + v18, 1, 2, *(this + 2), v17);
  if (v25 == -1)
  {
    ACFUDataContainer::copyData(0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }

  v26 = v25;
  v27 = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  Mutable = v27;
  if (v27)
  {
    CFDataAppendBytes(v27, &v26[v18], v3);
    v29 = munmap(v26, v3 + v18);
    if (v29 == -1)
    {
      v30 = ACFULogging::getLogInstance(v29);
      v31 = __error();
      strerror(*v31);
      ACFULogging::handleMessage(v30, 4u, "%s::%s: failed to un-map file: (%s)\n", v32, v33, v34, v35, v36, "ACFUDataContainer");
    }
  }

  else
  {
    ACFUDataContainer::copyData(0);
  }

  return Mutable;
}

CFIndex ACFUDataContainer::getLength(const __CFString **this)
{
  if (*(this + 24) == 1)
  {
    ACFUCommon::stringFromCFString(this[2], __p);
    if (v14 >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = __p[0];
    }

    v2 = stat(v1, &v15);
    if (v2 == -1)
    {
      LogInstance = ACFULogging::getLogInstance(v2);
      v7 = __error();
      strerror(*v7);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to determine file size for path '%s' (%s)\n", v8, v9, v10, v11, v12, "ACFUDataContainer");
      st_size = 0;
    }

    else
    {
      st_size = v15.st_size;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return st_size;
  }

  else
  {
    v4 = *this;

    return CFDataGetLength(v4);
  }
}

void sub_2984BF424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUDataContainer::copyDirectData(ACFUDataContainer *this@<X0>, size_t __size@<X2>, unsigned int a3@<W1>, ACFUDataContainer::DirectDataRef **a4@<X8>)
{
  *a4 = 0;
  if (!__size)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v32 = "%s::%s: invalid offset value\n";
    v33 = 2;
    goto LABEL_11;
  }

  if (*(this + 24) == 1)
  {
    if ((*(this + 2) & 0x80000000) != 0)
    {
      v34 = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(v34, 2u, "%s::%s: invalid file descriptor\n", v35, v36, v37, v38, v39, "ACFUDataContainer");
      return;
    }

    v8 = sysconf(29);
    v9 = sysconf(29);
    v10 = ACFULogging::getLogInstance(v9);
    v11 = (v9 * (a3 / v8));
    v12 = a3 - v11;
    ACFULogging::handleMessage(v10, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v13, v14, v15, v16, v17, "ACFUDataContainer");
    v18 = mmap(0, v12 + __size, 1, 1, *(this + 2), v11);
    if (v18 == -1)
    {
      v47 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
      v48 = __error();
      strerror(*v48);
      ACFULogging::handleMessage(v47, 2u, "%s::%s: failed to map file: (%s)\n", v49, v50, v51, v52, v53, "ACFUDataContainer");
      return;
    }

    v19 = operator new(0x18uLL);
    *v19 = &v18[v12];
    v20 = 1;
    goto LABEL_9;
  }

  v21 = *this;
  if (!*this)
  {
    v40 = ACFULogging::getLogInstance(this);
    v46 = "%s::%s: object does not hold any data\n";
LABEL_17:
    ACFULogging::handleMessage(v40, 2u, v46, v41, v42, v43, v44, v45, "ACFUDataContainer");
    return;
  }

  v22 = malloc(__size);
  if (!v22)
  {
    v40 = ACFULogging::getLogInstance(0);
    v46 = "%s::%s: unable to allocate data\n";
    goto LABEL_17;
  }

  v23 = v22;
  BytePtr = CFDataGetBytePtr(v21);
  memcpy(v23, &BytePtr[a3], __size);
  v19 = operator new(0x18uLL);
  v20 = 0;
  *v19 = v23;
LABEL_9:
  v19[1] = __size;
  *(v19 + 16) = v20;
  *(v19 + 17) = 1;
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a4, v19);
  if (**a4)
  {
    return;
  }

  LogInstance = ACFULogging::getLogInstance(v25);
  v32 = "%s::%s: failed to create file data\n";
  v33 = 4;
LABEL_11:
  ACFULogging::handleMessage(LogInstance, v33, v32, v27, v28, v29, v30, v31, "ACFUDataContainer");
}

uint64_t ACFUDataContainer::setData(const __CFString **this, __CFData *a2)
{
  if (*(this + 24) == 1)
  {
    ACFUDataContainer::setData(this);
    return 0;
  }

  v3 = *this;
  if (v3)
  {
    CFRelease(v3);
    *this = 0;
  }

  v4 = AMSupportSafeRetain();
  *this = v4;
  if (!v4)
  {
    ACFUDataContainer::setData(0);
    return 0;
  }

  if (*(this + 25) != 1)
  {
    return 1;
  }

  v5 = this[2];
  if (!v5)
  {
    ACFUDataContainer::setData(v4);
    return 0;
  }

  v6 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], v5, 0);
  if (!v6)
  {
    ACFUDataContainer::setData(0);
    return 0;
  }

  v7 = v6;
  v8 = *this;
  v9 = 1;
  v10 = AMSupportWriteDataToFileURL();
  CFRelease(v7);
  if (v10)
  {
    ACFUDataContainer::setData(v10);
    return 0;
  }

  return v9;
}

uint64_t ACFUDataContainer::getData(ACFUDataContainer *this)
{
  if (*(this + 24) != 1)
  {
    return *this;
  }

  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot aquire reference for a memory optimized data container. Please use copyData() instead\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
  return 0;
}

void ACFUDataContainer::~ACFUDataContainer(ACFUDataContainer *this)
{
  v2 = *(this + 2);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
    *(this + 2) = 0;
  }
}

void std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](ACFUDataContainer **a1, ACFUDataContainer *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDataContainer::~ACFUDataContainer(v3);

    operator delete(v4);
  }
}

void std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](ACFUDataContainer::DirectDataRef **a1, ACFUDataContainer::DirectDataRef *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDataContainer::DirectDataRef::~DirectDataRef(v3);

    operator delete(v4);
  }
}

void ACFUDataContainer::copyData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: object does not hold any data\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: offset out of range\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable data in unoptimized path\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable data in optimized path\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v2 = __error();
  strerror(*v2);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to map file: (%s)\n", v3, v4, v5, v6, v7, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid file descriptor\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get backing length\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid length value\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

void ACFUDataContainer::setData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to overwrite file (%d)\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create path url\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file path has not been initialized\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain new file data\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot setData for a memory optimized data container.\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
}

__CFDictionary *ACFURestoreHost::getTags(ACFURestoreHost *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    ArrayFromList = ACFURestoreHost::createArrayFromList(this + 5);
    if (ArrayFromList)
    {
      v4 = ArrayFromList;
      v5 = ACFURestoreHost::createArrayFromList(this + 14);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(*(this + 2), @"DeviceInfo");
        if (Value && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
        {
          CFDictionaryAddValue(Mutable, @"BuildIdentityTags", v4);
          CFDictionaryAddValue(Mutable, @"ResponseTags", v6);
          LogInstance = ACFULogging::getLogInstance(v9);
          std::string::basic_string[abi:ne200100]<0>(&v16, "ACFURestoreHost");
          v11 = std::string::append(&v16, "::");
          v12 = *&v11->__r_.__value_.__l.__data_;
          v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&v17.__r_.__value_.__l.__data_ = v12;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          v13 = std::string::append(&v17, "getTags");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v19 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(LogInstance, __p, 0, "Request Tags:", Mutable);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "getTags: failed to get device info list");
          ACFUError::addError(this + 24, v20, 0xFA1uLL, 0);
          ACFURestoreHost::getTags(v20);
        }

        CFRelease(v6);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "getTags: failed to create response tag list");
        ACFUError::addError(this + 24, v21, 0xFA0uLL, 0);
        ACFURestoreHost::getTags(v21);
      }

      CFRelease(v4);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "getTags: failed to create build identity tag list");
      ACFUError::addError(this + 24, v22, 0xFA0uLL, 0);
      ACFURestoreHost::getTags(v22);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "getTags: failed to allocate output dictionary");
    ACFUError::addError(this + 24, v23, 0xFA0uLL, 0);
    ACFURestoreHost::getTags(v23);
  }

  return Mutable;
}

void sub_2984BFF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef ACFURestoreHost::createArrayFromList(const void ***a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    v4 = Mutable;
    for (i = *a1; i != a1[1]; ++i)
    {
      v6 = *i;
      CFArrayAppendValue(v4, v6);
    }

    Copy = CFArrayCreateCopy(v2, v4);
    CFRelease(v4);
    return Copy;
  }

  else
  {
    ACFURestoreHost::createArrayFromList(0);
    return 0;
  }
}

const __CFData *ACFURestoreHost::copyFirmware(ACFURestoreHost *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Firmware/%@/Rooted/ftab.bin", *(this + 28));
  if (!v3)
  {
    ACFURestoreHost::copyFirmware(0);
    return 0;
  }

  v4 = v3;
  v5 = CFDictionaryGetValue(*(this + 2), @"DestBundlePath");
  v6 = v5;
  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    v8 = std::string::basic_string[abi:ne200100]<0>(&v186, "ACFURestoreHost");
    v9 = std::string::append(v8, "::");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v187.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v187.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v187, "copyFirmware");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v188.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v188.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &v188, 0, "personalizedURL: ", v6);
    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v187.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }
  }

  v13 = CFDictionaryContainsKey(*(this + 2), @"BundleDataDict");
  v14 = v13;
  v15 = ACFULogging::getLogInstance(v13);
  if (!v14)
  {
    ACFULogging::handleMessage(v15, 0, "%s::%s: running host invoked restore info -- using bundleURL\n", v16, v17, v18, v19, v20, "ACFURestoreHost");
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      ACFURestoreHost::copyFirmware(0);
      goto LABEL_174;
    }

    v33 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v33)
    {
      ACFURestoreHost::copyFirmware(0);
      goto LABEL_174;
    }

    v25 = v33;
    v34 = CFDictionaryGetValue(*(this + 2), @"BundlePath");
    if (!v34 || (v35 = v34, v36 = CFURLGetTypeID(), v36 != CFGetTypeID(v35)))
    {
      std::string::basic_string[abi:ne200100]<0>(v184, "copyFirmware: failed to get src bundle URL");
      ACFUError::addError(this + 24, v184, 0xFA1uLL, 0);
      ACFURestoreHost::copyFirmware(v184);
      v30 = 0;
LABEL_19:
      v32 = v4;
LABEL_161:
      CFRelease(v32);
      goto LABEL_162;
    }

    v37 = CFDictionaryGetValue(*(this + 2), @"Options");
    v162 = v4;
    if (v37 && (v39 = v37, v40 = CFGetTypeID(v37), v40 == CFDictionaryGetTypeID()))
    {
      cf.__r_.__value_.__r.__words[0] = 0;
      v41 = CFDictionaryGetValue(v39, @"ACFUFirmware");
      if (v41)
      {
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v41))
        {
          if (v6)
          {
            AMSupportCopyURLWithAppendedComponent();
            std::string::basic_string[abi:ne200100]<0>(v183, "copyFirmware: failed to create personalized rooted FW URL");
            ACFUError::addError(this + 24, v183, 0xFA0uLL, 0);
            ACFURestoreHost::copyFirmware(v183);
LABEL_181:
            v30 = 0;
            goto LABEL_19;
          }

          URLFromString = AMSupportCreateURLFromString();
          if (!URLFromString)
          {
            std::string::basic_string[abi:ne200100]<0>(v182, "copyFirmware: failed to create src rooted FW URL");
            ACFUError::addError(this + 24, v182, 0xFA0uLL, 0);
            ACFURestoreHost::copyFirmware(v182);
            goto LABEL_181;
          }

          v44 = URLFromString;
          CFDictionaryAddValue(Mutable, *(this + 1), URLFromString);
          CFDictionaryAddValue(v25, *(this + 1), v44);
          CFRelease(v44);
        }
      }

      v161 = v41 != 0;
    }

    else
    {
      v161 = 0;
    }

    v45 = *(this + 17);
    if (v45 != *(this + 18))
    {
      v46 = 0;
      while (1)
      {
        v180 = 0;
        value = 0;
        PathFromBuildID = ACFURestoreHost::getPathFromBuildID(*(this + 2), *v45, v38);
        ACFUCommon::stringFromCFString(*v45, &v188);
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v188.__r_.__value_.__l.__size_)
          {
            std::string::__init_copy_ctor_external(&v187, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
            goto LABEL_43;
          }
        }

        else if (*(&v188.__r_.__value_.__s + 23))
        {
          v187 = v188;
          goto LABEL_43;
        }

        v48 = std::string::basic_string[abi:ne200100]<0>(&v187, "UNDEF");
LABEL_43:
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

        v188 = v187;
        if (PathFromBuildID)
        {
          if (v6)
          {
            if (AMSupportCopyURLWithAppendedComponent() || !v180)
            {
              std::string::basic_string[abi:ne200100]<0>(v175, "copyFirmware: failed to create personalized FW URL");
              v83 = ACFUError::addError(this + 24, v175, 0xFA0uLL, 0);
              if (v176 < 0)
              {
                operator delete(v175[0]);
              }

              v84 = ACFULogging::getLogInstance(v83);
              ACFULogging::handleMessage(v84, 2u, "%s::%s: copyFirmware: failed to create personalized FW URL (status: %d)\n", v85, v86, v87, v88, v89, "ACFURestoreHost");
              goto LABEL_76;
            }

            doesPathExist = ACFUCommon::doesPathExist(v180, v49);
            if (doesPathExist)
            {
              v51 = ACFULogging::getLogInstance(doesPathExist);
              std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
              v52 = std::string::append(&cf, "::");
              v53 = *&v52->__r_.__value_.__l.__data_;
              v186.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
              *&v186.__r_.__value_.__l.__data_ = v53;
              v52->__r_.__value_.__l.__size_ = 0;
              v52->__r_.__value_.__r.__words[2] = 0;
              v52->__r_.__value_.__r.__words[0] = 0;
              v54 = std::string::append(&v186, "copyFirmware");
              v55 = *&v54->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v55;
              v54->__r_.__value_.__l.__size_ = 0;
              v54->__r_.__value_.__r.__words[2] = 0;
              v54->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v51, &v187, 0, "Firmware Object: ", *v45);
              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v57 = ACFULogging::getLogInstance(v56);
              std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
              v58 = std::string::append(&cf, "::");
              v59 = *&v58->__r_.__value_.__l.__data_;
              v186.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
              *&v186.__r_.__value_.__l.__data_ = v59;
              v58->__r_.__value_.__l.__size_ = 0;
              v58->__r_.__value_.__r.__words[2] = 0;
              v58->__r_.__value_.__r.__words[0] = 0;
              v60 = std::string::append(&v186, "copyFirmware");
              v61 = *&v60->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v61;
              v60->__r_.__value_.__l.__size_ = 0;
              v60->__r_.__value_.__r.__words[2] = 0;
              v60->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v57, &v187, 0, "Personalized Bundle FW URL: ", v180);
              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v46 = 1;
            }

            else if (v180)
            {
              CFRelease(v180);
              v46 = 0;
              v180 = 0;
            }

            else
            {
              v46 = 0;
            }
          }

          if (AMSupportCopyURLWithAppendedComponent() || !value)
          {
            std::string::basic_string[abi:ne200100]<0>(v173, "copyFirmware: failed to create default FW URL");
            v76 = ACFUError::addError(this + 24, v173, 0xFA0uLL, 0);
            if (v174 < 0)
            {
              operator delete(v173[0]);
            }

            v77 = ACFULogging::getLogInstance(v76);
            ACFULogging::handleMessage(v77, 2u, "%s::%s: copyFirmware: failed to create default FW URL, (status: %d)\n", v78, v79, v80, v81, v82, "ACFURestoreHost");
LABEL_76:
            v67 = 4;
            goto LABEL_86;
          }

          if (v46)
          {
            v75 = v180;
          }

          else
          {
            v75 = value;
          }

          CFDictionaryAddValue(Mutable, *v45, v75);
          CFDictionaryAddValue(v25, *v45, value);
          if (value)
          {
            CFRelease(value);
            v67 = 0;
            value = 0;
          }

          else
          {
            v67 = 0;
          }
        }

        else
        {
          if (*(v45 + 8) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: failed to find FW");
            v68 = ACFUError::addError(this + 24, __p, 0xFA1uLL, 0);
            if (v178 < 0)
            {
              operator delete(__p[0]);
            }

            v69 = ACFULogging::getLogInstance(v68);
            ACFULogging::handleMessage(v69, 2u, "%s::%s: copyFirmware: failed to find FW (%s) in build ID\n", v70, v71, v72, v73, v74, "ACFURestoreHost");
            goto LABEL_76;
          }

          v62 = ACFULogging::getLogInstance(v48);
          std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
          v63 = std::string::append(&cf, "::");
          v64 = *&v63->__r_.__value_.__l.__data_;
          v186.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
          *&v186.__r_.__value_.__l.__data_ = v64;
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          v65 = std::string::append(&v186, "copyFirmware");
          v66 = *&v65->__r_.__value_.__l.__data_;
          v187.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
          *&v187.__r_.__value_.__l.__data_ = v66;
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v62, &v187, 0, "skipping optional file...", *v45);
          if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v187.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v186.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v67 = 29;
        }

LABEL_86:
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
          if (!v67)
          {
            goto LABEL_91;
          }
        }

        else if (!v67)
        {
          goto LABEL_91;
        }

        if (v67 != 29)
        {
          v30 = 0;
          goto LABEL_160;
        }

LABEL_91:
        v45 += 16;
        if (v45 == *(this + 18))
        {
          goto LABEL_100;
        }
      }
    }

    v46 = 0;
LABEL_100:
    v90 = (*(*this + 40))(this, Mutable, 0);
    v30 = v90;
    if (v90)
    {
      v91 = HIDWORD(v161);
    }

    else
    {
      v91 = HIDWORD(v161);
      if (v46)
      {
        v92 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v92, 0, "%s::%s: attempting copyFirmwareUpdater again with source bundle file map\n", v93, v94, v95, v96, v97, "ACFURestoreHost");
        v90 = (*(*this + 40))(this, v25, 0);
        v30 = v90;
      }

      if (!v30)
      {
        std::string::basic_string[abi:ne200100]<0>(v171, "copyFirmware: updater failed to find firmware data with bundleURL");
        v151 = ACFUError::addError(this + 24, v171, 0xFA0uLL, 0);
        v30 = 0;
        v152 = "%s::%s: updater failed to find firmware data with bundleURL\n";
        if (v172 < 0)
        {
          v153 = v171;
          goto LABEL_168;
        }

        goto LABEL_169;
      }
    }

    v98 = !v161;
    if (!v6)
    {
      v98 = 1;
    }

    if (((v91 | v98) & 1) == 0)
    {
      v99 = ACFULogging::getLogInstance(v90);
      ACFULogging::handleMessage(v99, 0, "%s::%s: copying preflighted rooted firmware into the dst bundle...\n", v100, v101, v102, v103, v104, "ACFURestoreHost");
      v90 = ACFURestoreHost::copyToPersonalizedBundlePath(v105, *(this + 2), v162, v30);
      if (v90)
      {
        std::string::basic_string[abi:ne200100]<0>(v169, "copyFirmware: failed to perform destination bundle copy of rooted firmware");
        v151 = ACFUError::addError(this + 24, v169, 0xFA3uLL, 0);
        v152 = "%s::%s: failed to perform destination bundle copy of rooted firmware\n";
        if (v170 < 0)
        {
          v153 = v169;
LABEL_168:
          operator delete(*v153);
        }

LABEL_169:
        v155 = ACFULogging::getLogInstance(v151);
        ACFULogging::handleMessage(v155, 2u, v152, v156, v157, v158, v159, v160, "ACFURestoreHost");
LABEL_160:
        v32 = v162;
        goto LABEL_161;
      }
    }

    if ((v6 == 0) | v46 & 1)
    {
      if (v46)
      {
        v106 = ACFULogging::getLogInstance(v90);
        ACFULogging::handleMessage(v106, 0, "%s::%s: removing any personalized bits of bundle firmware\n", v107, v108, v109, v110, v111, "ACFURestoreHost");
        v112 = *(this + 17);
        if (v112 != *(this + 18))
        {
          while (1)
          {
            v113 = CFDictionaryGetValue(Mutable, *v112);
            if (v113 || *(v112 + 8) != 1)
            {
              if ((ACFUCommon::removeFileWithURL(v113, v114) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v163, "copyFirmware: failed to remove bundle fw personalized bits");
                v151 = ACFUError::addError(this + 24, v163, 0x3ECuLL, 0);
                v152 = "%s::%s: failed to remove bundle fw personalized bits\n";
                if (v164 < 0)
                {
                  v153 = v163;
                  goto LABEL_168;
                }

                goto LABEL_169;
              }
            }

            else
            {
              v115 = ACFULogging::getLogInstance(0);
              v116 = std::string::basic_string[abi:ne200100]<0>(&v186, "ACFURestoreHost");
              v117 = std::string::append(v116, "::");
              v118 = *&v117->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v118;
              v117->__r_.__value_.__l.__size_ = 0;
              v117->__r_.__value_.__r.__words[2] = 0;
              v117->__r_.__value_.__r.__words[0] = 0;
              v119 = std::string::append(&v187, "copyFirmware");
              v120 = *&v119->__r_.__value_.__l.__data_;
              v188.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
              *&v188.__r_.__value_.__l.__data_ = v120;
              v119->__r_.__value_.__l.__size_ = 0;
              v119->__r_.__value_.__r.__words[2] = 0;
              v119->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v115, &v188, 0, "skipping removal of optional file...", *v112);
              if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v188.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v186.__r_.__value_.__l.__data_);
              }
            }

            v112 += 16;
            if (v112 == *(this + 18))
            {
              goto LABEL_160;
            }
          }
        }
      }

      goto LABEL_160;
    }

    v121 = ACFULogging::getLogInstance(v90);
    ACFULogging::handleMessage(v121, 0, "%s::%s: copying preflighted bundle firmware into the dst bundle...\n", v122, v123, v124, v125, v126, "ACFURestoreHost");
    v128 = *(this + 17);
    if (v128 == *(this + 18))
    {
      goto LABEL_160;
    }

    while (1)
    {
      v129 = ACFURestoreHost::getPathFromBuildID(*(this + 2), *v128, v127);
      ACFUCommon::stringFromCFString(*v128, &v188);
      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v188.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v187, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
          goto LABEL_129;
        }
      }

      else if (*(&v188.__r_.__value_.__s + 23))
      {
        v187 = v188;
        goto LABEL_129;
      }

      v130 = std::string::basic_string[abi:ne200100]<0>(&v187, "UNDEF");
LABEL_129:
      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v188.__r_.__value_.__l.__data_);
      }

      v188 = v187;
      if (v129)
      {
        if (!ACFURestoreHost::copyToPersonalizedBundlePath(v130, *(this + 2), v129, v30))
        {
          v131 = 0;
          goto LABEL_146;
        }

        std::string::basic_string[abi:ne200100]<0>(v165, "copyFirmware: failed to perform destination bundle copy of rooted firmware");
        v144 = ACFUError::addError(this + 24, v165, 0xFA3uLL, 0);
        if (v166 < 0)
        {
          operator delete(v165[0]);
        }

        v145 = ACFULogging::getLogInstance(v144);
        ACFULogging::handleMessage(v145, 2u, "%s::%s: failed to perform destination bundle copy of rooted firmware\n", v146, v147, v148, v149, v150, "ACFURestoreHost");
        goto LABEL_145;
      }

      if (*(v128 + 8) != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v167, "copyFirmware: failed to find FW in personalized path");
        v137 = ACFUError::addError(this + 24, v167, 0xFA1uLL, 0);
        if (v168 < 0)
        {
          operator delete(v167[0]);
        }

        v138 = ACFULogging::getLogInstance(v137);
        ACFULogging::handleMessage(v138, 2u, "%s::%s: failed to find FW (%s) in build ID in personalized path\n", v139, v140, v141, v142, v143, "ACFURestoreHost");
LABEL_145:
        v131 = 4;
        goto LABEL_146;
      }

      v132 = ACFULogging::getLogInstance(v130);
      std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
      v133 = std::string::append(&cf, "::");
      v134 = *&v133->__r_.__value_.__l.__data_;
      v186.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
      *&v186.__r_.__value_.__l.__data_ = v134;
      v133->__r_.__value_.__l.__size_ = 0;
      v133->__r_.__value_.__r.__words[2] = 0;
      v133->__r_.__value_.__r.__words[0] = 0;
      v135 = std::string::append(&v186, "copyFirmware");
      v136 = *&v135->__r_.__value_.__l.__data_;
      v187.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
      *&v187.__r_.__value_.__l.__data_ = v136;
      v135->__r_.__value_.__l.__size_ = 0;
      v135->__r_.__value_.__r.__words[2] = 0;
      v135->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v132, &v187, 0, "skipping copying of optional file...", *v128);
      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v187.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v186.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      v131 = 48;
LABEL_146:
      if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v188.__r_.__value_.__l.__data_);
        if (v131)
        {
LABEL_150:
          if (v131 != 48)
          {
            goto LABEL_160;
          }
        }
      }

      else if (v131)
      {
        goto LABEL_150;
      }

      v128 += 16;
      if (v128 == *(this + 18))
      {
        goto LABEL_160;
      }
    }
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: running device invoked restore info -- using bundleData\n", v16, v17, v18, v19, v20, "ACFURestoreHost");
  v21 = CFDictionaryGetValue(*(this + 2), @"BundleDataDict");
  if (v21 && (v22 = v21, v23 = CFDictionaryGetTypeID(), v21 = CFGetTypeID(v22), v23 == v21))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v22);
    if (MutableCopy)
    {
      v25 = MutableCopy;
      v26 = CFDictionaryGetValue(*(this + 2), @"FirmwareData");
      if (v26)
      {
        v27 = v26;
        v28 = CFDataGetTypeID();
        if (v28 == CFGetTypeID(v27))
        {
          CFDictionarySetValue(v25, *(this + 1), v27);
        }
      }

      v29 = (*(*this + 40))(this, v25, 1);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v185, "copyFirmware: updater failed to find firmware data with bundleData");
        ACFUError::addError(this + 24, v185, 0xFA0uLL, 0);
        ACFURestoreHost::copyFirmware(v185);
        v30 = 0;
      }

      Mutable = 0;
      goto LABEL_19;
    }

    ACFURestoreHost::copyFirmware(0);
  }

  else
  {
    ACFURestoreHost::copyFirmware(v21);
  }

  Mutable = 0;
LABEL_174:
  v30 = 0;
  v25 = v4;
LABEL_162:
  CFRelease(v25);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

void sub_2984C11E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ACFULogging *ACFURestoreHost::getPathFromBuildID(ACFURestoreHost *this, const __CFDictionary *a2, const __CFString *a3)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@.%@.%@", @"BuildIdentity", a2, @"Info", @"Path");
  if (v3)
  {
    v4 = v3;
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueForKeyPathInDict))
      {
        ACFURestoreHost::getPathFromBuildID(ValueForKeyPathInDict);
      }
    }

    else
    {
      ACFURestoreHost::getPathFromBuildID(0);
    }

    CFRelease(v4);
  }

  else
  {
    ACFURestoreHost::getPathFromBuildID(0);
    return 0;
  }

  return ValueForKeyPathInDict;
}

uint64_t ACFURestoreHost::copyToPersonalizedBundlePath(ACFURestoreHost *this, CFDictionaryRef theDict, const __CFString *a3, const __CFData *a4)
{
  Value = CFDictionaryGetValue(theDict, @"DestBundlePath");
  if (Value && (v5 = Value, v6 = CFURLGetTypeID(), Value = CFGetTypeID(v5), v6 == Value))
  {
    v7 = *MEMORY[0x29EDB8ED8];
    v8 = AMSupportCopyURLWithAppendedComponent();
    if (v8)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v8);
      return 4000;
    }

    v9 = MEMORY[0x29C28AF20](0);
    if (v9)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v9);
      return 1003;
    }

    v10 = AMSupportWriteDataToFileURL();
    if (v10)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v10);
      return 1004;
    }

    doesPathExist = ACFUCommon::doesPathExist(0, v11);
    if (!doesPathExist)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(doesPathExist);
      return 1004;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: destination bundle was not specified, so we are skipping the copy step...\n", v14, v15, v16, v17, v18, "ACFURestoreHost");
  }

  return 0;
}

__CFDictionary *ACFURestoreHost::createRequest(uint64_t a1, CFDictionaryRef **a2, uint64_t a3)
{
  allocator = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    std::string::basic_string[abi:ne200100]<0>(v171, "createRequest: Failed to allocate output dictionary");
    ACFUError::addError(a1 + 24, v171, 0xFA0uLL, 0);
    ACFURestoreHost::createRequest(v171, (a1 + 24));
    return 0;
  }

  v7 = Mutable;
  v8 = *(a1 + 88);
  if (v8 != *(a1 + 96))
  {
    v9 = *MEMORY[0x29EDB8F00];
    do
    {
      v10 = *v8++;
      CFDictionaryAddValue(v7, v10, v9);
    }

    while (v8 != *(a1 + 96));
  }

  ACFUCommon::parseDebugArgs(*(a1 + 16), "validateDeviceId", &__s);
  v12 = __s.__r_.__value_.__r.__words[0];
  if (!__s.__r_.__value_.__r.__words[0])
  {
    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping device identity validation against build identity\n", v14, v15, v16, v17, v18, "ACFURestoreHost");
  }

  v19 = CFDictionaryGetValue(*(a1 + 16), @"BuildIdentity");
  if (!v19 || (v20 = v19, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v20)))
  {
    std::string::basic_string[abi:ne200100]<0>(v170, "createRequest: Failed to get build identity dict from options");
    ACFUError::addError(a1 + 24, v170, 0xFA1uLL, 0);
    ACFURestoreHost::createRequest(v170);
    goto LABEL_124;
  }

  v22 = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  if (!v22 || (v23 = v22, v24 = CFDictionaryGetTypeID(), v24 != CFGetTypeID(v23)))
  {
    std::string::basic_string[abi:ne200100]<0>(v169, "createRequest: Failed to get build identity dict from options");
    ACFUError::addError(a1 + 24, v169, 0xFA1uLL, 0);
    ACFURestoreHost::createRequest(v169);
    goto LABEL_124;
  }

  if (v12)
  {
    std::map<__CFString const*,unsigned long>::map[abi:ne200100](v168, a1 + 160);
    v25 = ACFURestoreHost::validateDeviceInfoAgainstBuildIdentity((a1 + 64), (a1 + 40), v23, v20, v168);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v168, v168[1]);
    if ((v25 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v167, "createRequest: Failed to validate device identity tags");
      ACFUError::addError(a1 + 24, v167, 0xFA9uLL, 0);
      ACFURestoreHost::createRequest(v167);
      goto LABEL_124;
    }
  }

  std::map<__CFString const*,unsigned long>::map[abi:ne200100](v166, a1 + 160);
  v26 = ACFURestoreHost::populateDictFromIdentity((a1 + 40), v166, v20, v7);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v166, v166[1]);
  if ((v26 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v165, "createRequest: Failed to build parameters out of build identity");
    ACFUError::addError(a1 + 24, v165, 0xFA4uLL, 0);
    ACFURestoreHost::createRequest(v165);
    goto LABEL_124;
  }

  std::map<__CFString const*,unsigned long>::map[abi:ne200100](v164, a1 + 160);
  v27 = ACFURestoreHost::populateDictFromIdentity((a1 + 64), v164, v23, v7);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v164, v164[1]);
  if ((v27 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v163, "createRequest: Failed to build parameters out of device identity");
    ACFUError::addError(a1 + 24, v163, 0xFA4uLL, 0);
    ACFURestoreHost::createRequest(v163);
    goto LABEL_124;
  }

  if (*a3)
  {
    v29 = CFDictionaryGetValue(v23, *a3);
    if (!v29 || (v30 = v29, v31 = CFDataGetTypeID(), v28 = CFGetTypeID(v30), v31 != v28))
    {
      std::string::basic_string[abi:ne200100]<0>(v162, "createRequest: Production mode not present in device info. This is fatal!");
      ACFUError::addError(a1 + 24, v162, 0xFA1uLL, 0);
      ACFURestoreHost::createRequest(v162);
      goto LABEL_124;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = *(a3 + 8);
  if (v32)
  {
    v33 = CFDictionaryGetValue(v23, v32);
    if (!v33 || (v34 = v33, v35 = CFDataGetTypeID(), v28 = CFGetTypeID(v34), v35 != v28))
    {
      std::string::basic_string[abi:ne200100]<0>(v161, "createRequest: Security mode not present in device info. This is fatal!");
      ACFUError::addError(a1 + 24, v161, 0xFA1uLL, 0);
      ACFURestoreHost::createRequest(v161);
      goto LABEL_124;
    }
  }

  else
  {
    v34 = 0;
  }

  v140 = v34;
  v141 = v30;
  theDict = v23;
  v36 = *(a1 + 136);
  if (v36 != *(a1 + 144))
  {
    value = *MEMORY[0x29EDB8F00];
    do
    {
      ACFUCommon::stringFromCFString(*v36, &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v159, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_33;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v159 = __s;
        goto LABEL_33;
      }

      std::string::basic_string[abi:ne200100]<0>(&v159, "UNDEF");
LABEL_33:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = v159;
      v37 = CFDictionaryGetValue(v20, *v36);
      v38 = v37;
      if (!v37)
      {
        if (*(v36 + 8) == 1)
        {
          v41 = ACFULogging::getLogInstance(0);
          v47 = "%s::%s: optional tag %s missing from build identity, skipping\n";
          goto LABEL_42;
        }

LABEL_49:
        std::string::basic_string[abi:ne200100]<0>(__p, "createRequest: could not find FW in build ID");
        v53 = ACFUError::addError(a1 + 24, __p, 0x3EDuLL, 0);
        if (v158 < 0)
        {
          operator delete(__p[0]);
        }

        v54 = ACFULogging::getLogInstance(v53);
        v60 = "%s::%s: could not find FW (%s) in build ID\n";
LABEL_52:
        ACFULogging::handleMessage(v54, 2u, v60, v55, v56, v57, v58, v59, "ACFURestoreHost");
LABEL_53:
        v48 = 4;
        goto LABEL_72;
      }

      v39 = CFGetTypeID(v37);
      if (v39 != CFDictionaryGetTypeID())
      {
        goto LABEL_49;
      }

      if (*a2)
      {
        MeasureDataWithTag = ACFUFirmware::getMeasureDataWithTag(*a2, *v36);
        if (!MeasureDataWithTag)
        {
          v41 = ACFULogging::getLogInstance(0);
          v47 = "%s::%s: tag %s missing from firmware, skipping\n";
LABEL_42:
          ACFULogging::handleMessage(v41, 0, v47, v42, v43, v44, v45, v46, "ACFURestoreHost");
          v48 = 24;
          goto LABEL_72;
        }
      }

      else
      {
        MeasureDataWithTag = CFDictionaryGetValue(v38, @"Digest");
        if (!MeasureDataWithTag)
        {
          std::string::basic_string[abi:ne200100]<0>(v155, "createRequest: no digest in build ID");
          v86 = ACFUError::addError(a1 + 24, v155, 0x3EDuLL, 0);
          if (v156 < 0)
          {
            operator delete(v155[0]);
          }

          v54 = ACFULogging::getLogInstance(v86);
          v60 = "%s::%s: no digest in build ID (%s)\n";
          goto LABEL_52;
        }
      }

      v49 = CFGetTypeID(MeasureDataWithTag);
      if (v49 != CFDataGetTypeID())
      {
        std::string::basic_string[abi:ne200100]<0>(v153, "createRequest: wrong digest type");
        v64 = ACFUError::addError(a1 + 24, v153, 0x3EDuLL, 0);
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        v54 = ACFULogging::getLogInstance(v64);
        v60 = "%s::%s: wrong digest type (%s)\n";
        goto LABEL_52;
      }

      v50 = CFDictionaryGetValue(v38, @"Trusted");
      v51 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!v51)
      {
        std::string::basic_string[abi:ne200100]<0>(v151, "createRequest: failed to allocate internal data structure");
        v65 = ACFUError::addError(a1 + 24, v151, 0xFA0uLL, 0);
        if (v152 < 0)
        {
          operator delete(v151[0]);
        }

        v66 = ACFULogging::getLogInstance(v65);
        ACFULogging::handleMessage(v66, 2u, "%s::%s: failed to allocate internal data structure\n", v67, v68, v69, v70, v71, "ACFURestoreHost");
        goto LABEL_53;
      }

      if (*a3)
      {
        if (*(a3 + 16) == 1)
        {
          v52 = *std::map<__CFString const*,std::string>::at(a1 + 200, v36);
        }

        else
        {
          v52 = 0;
        }

        ACFURestoreHost::createBoolFromData(v141, &v159);
        if (v159.__r_.__value_.__s.__data_[8] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v149, "createRequest: epro data to BOOLean conversion failure");
          v72 = ACFUError::addError(a1 + 24, v149, 0x3EDuLL, 0);
          if (v150 < 0)
          {
            operator delete(v149[0]);
          }

          v73 = ACFULogging::getLogInstance(v72);
          ACFULogging::handleMessage(v73, 2u, "%s::%s: epro data to BOOLean conversion failure\n", v74, v75, v76, v77, v78, "ACFURestoreHost");
          goto LABEL_53;
        }

        if (v52)
        {
          CFDictionaryAddValue(v51, @"DPRO", value);
          v61 = MEMORY[0x29EDB8EF8];
        }

        else
        {
          v61 = &v159;
        }

        CFDictionaryAddValue(v51, @"EPRO", v61->__r_.__value_.__l.__data_);
      }

      if (*(a3 + 8))
      {
        if (*(a3 + 17) == 1)
        {
          v62 = *(std::map<__CFString const*,std::string>::at(a1 + 200, v36) + 1);
        }

        else
        {
          v62 = 0;
        }

        ACFURestoreHost::createBoolFromData(v140, &v159);
        if (v159.__r_.__value_.__s.__data_[8] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v147, "createRequest: esec data to BOOLean conversion failure");
          v79 = ACFUError::addError(a1 + 24, v147, 0x3EDuLL, 0);
          if (v148 < 0)
          {
            operator delete(v147[0]);
          }

          v80 = ACFULogging::getLogInstance(v79);
          ACFULogging::handleMessage(v80, 2u, "%s::%s: esec data to BOOLean conversion failure\n", v81, v82, v83, v84, v85, "ACFURestoreHost");
          goto LABEL_53;
        }

        if (v62)
        {
          CFDictionaryAddValue(v51, @"DSEC", value);
          v63 = MEMORY[0x29EDB8EF8];
        }

        else
        {
          v63 = &v159;
        }

        CFDictionaryAddValue(v51, @"ESEC", v63->__r_.__value_.__l.__data_);
      }

      CFDictionaryAddValue(v51, @"Digest", MeasureDataWithTag);
      if (v50)
      {
        CFDictionaryAddValue(v51, @"Trusted", v50);
      }

      CFDictionaryAddValue(v7, *v36, v51);
      CFRelease(v51);
      v48 = 0;
LABEL_72:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
        if (v48)
        {
LABEL_76:
          if (v48 != 24)
          {
            goto LABEL_124;
          }
        }
      }

      else if (v48)
      {
        goto LABEL_76;
      }

      v36 += 16;
    }

    while (v36 != *(a1 + 144));
  }

  if (!*(a1 + 184))
  {
    goto LABEL_113;
  }

  v87 = CFDictionaryGetValue(*(a1 + 16), @"Options");
  if (v87 && (v88 = v87, v89 = CFDictionaryContainsKey(v87, @"TrustObjectDigest"), v89))
  {
    v90 = ACFULogging::getLogInstance(v89);
    ACFULogging::handleMessage(v90, 0, "%s::%s: Using FDR trust object hash in updater options override\n", v91, v92, v93, v94, v95, "ACFURestoreHost");
    v96 = CFDictionaryGetValue(v88, @"TrustObjectDigest");
    if (!v96 || (v97 = v96, v98 = CFDataGetTypeID(), v99 = CFGetTypeID(v97), v98 != v99))
    {
      std::string::basic_string[abi:ne200100]<0>(v146, "createRequest: Invalid FDR trust object hash in updater options override");
      ACFUError::addError(a1 + 24, v146, 0x3EDuLL, 0);
      ACFURestoreHost::createRequest(v146);
      goto LABEL_124;
    }
  }

  else
  {
    v100 = CFDictionaryContainsKey(theDict, @"ACFU,FDRTrustObjectHash");
    v101 = v100;
    v102 = ACFULogging::getLogInstance(v100);
    if (!v101)
    {
      ACFULogging::handleMessage(v102, 0, "%s::%s: Requesting FDR trust object hash\n", v103, v104, v105, v106, v107, "ACFURestoreHost");
      v117 = CFDataCreateMutable(allocator, 0);
      if (!v117)
      {
        std::string::basic_string[abi:ne200100]<0>(v144, "createRequest: Failed to create empty trust object hash");
        ACFUError::addError(a1 + 24, v144, 0xFA0uLL, 0);
        ACFURestoreHost::createRequest(v144);
        goto LABEL_124;
      }

      v118 = v117;
      CFDictionarySetValue(v7, *(a1 + 184), v117);
      CFRelease(v118);
      v97 = 0;
      goto LABEL_107;
    }

    ACFULogging::handleMessage(v102, 0, "%s::%s: Using FDR trust object hash in client updater override\n", v103, v104, v105, v106, v107, "ACFURestoreHost");
    v108 = CFDictionaryGetValue(theDict, @"ACFU,FDRTrustObjectHash");
    if (!v108 || (v97 = v108, v109 = CFDataGetTypeID(), v99 = CFGetTypeID(v97), v109 != v99))
    {
      std::string::basic_string[abi:ne200100]<0>(v145, "createRequest: Invalid FDR trust object hash in client updater override");
      ACFUError::addError(a1 + 24, v145, 0x3EDuLL, 0);
      ACFURestoreHost::createRequest(v145);
      goto LABEL_124;
    }
  }

  v110 = ACFULogging::getLogInstance(v99);
  ACFULogging::handleMessage(v110, 0, "%s::%s: Applying FDR trust object hash override\n", v111, v112, v113, v114, v115, "ACFURestoreHost");
  CFDictionarySetValue(v7, *(a1 + 184), v97);
LABEL_107:
  v119 = ACFULogging::getLogInstance(v116);
  std::string::basic_string[abi:ne200100]<0>(&v143, "ACFURestoreHost");
  v120 = std::string::append(&v143, "::");
  v121 = *&v120->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v121;
  v120->__r_.__value_.__l.__size_ = 0;
  v120->__r_.__value_.__r.__words[2] = 0;
  v120->__r_.__value_.__r.__words[0] = 0;
  v122 = std::string::append(&v159, "createRequest");
  v123 = *&v122->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v123;
  v122->__r_.__value_.__l.__size_ = 0;
  v122->__r_.__value_.__r.__words[2] = 0;
  v122->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v119, &__s, 4, "FDR Trust Object Digest: ", v97);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

LABEL_113:
  if (*(a1 + 192))
  {
    v28 = CFDictionaryGetValue(theDict, @"ACFU,FDRAllowUnsealed");
    if (v28)
    {
      v124 = v28;
      v125 = CFGetTypeID(v28);
      v28 = CFBooleanGetTypeID();
      if (v125 == v28)
      {
        v28 = CFBooleanGetValue(v124);
        if (v28)
        {
          v126 = ACFULogging::getLogInstance(v28);
          ACFULogging::handleMessage(v126, 0, "%s::%s: allowing unsealed FDR data\n", v127, v128, v129, v130, v131, "ACFURestoreHost");
          CFDictionaryAddValue(v7, *(a1 + 192), *MEMORY[0x29EDB8F00]);
        }
      }
    }
  }

  v132 = ACFULogging::getLogInstance(v28);
  std::string::basic_string[abi:ne200100]<0>(&v143, "ACFURestoreHost");
  v133 = std::string::append(&v143, "::");
  v134 = *&v133->__r_.__value_.__l.__data_;
  v159.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
  *&v159.__r_.__value_.__l.__data_ = v134;
  v133->__r_.__value_.__l.__size_ = 0;
  v133->__r_.__value_.__r.__words[2] = 0;
  v133->__r_.__value_.__r.__words[0] = 0;
  v135 = std::string::append(&v159, "createRequest");
  v136 = *&v135->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v136;
  v135->__r_.__value_.__l.__size_ = 0;
  v135->__r_.__value_.__r.__words[2] = 0;
  v135->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v132, &__s, 0, "Request Dictionary:", v7);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

LABEL_124:
  if (ACFUError::hasError((a1 + 24)))
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

void sub_2984C2374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ACFURestoreHost::validateDeviceInfoAgainstBuildIdentity(const __CFString ***a1, const __CFString ***a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    v88 = 1;
    return v88 & 1;
  }

  cf2 = 0;
  cf = 0;
  v94 = (a5 + 8);
  while (1)
  {
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      while (*v10 != *v5)
      {
        if (++v10 == v11)
        {
          goto LABEL_27;
        }
      }
    }

    if (v10 == v11)
    {
      goto LABEL_27;
    }

    ACFUCommon::stringFromCFString(*v5, &v100);
    Value = CFDictionaryGetValue(a3, *v5);
    if (!Value)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v27 = "%s::%s: tag '%s' not found in device info, skipping validation\n";
      goto LABEL_21;
    }

    v13 = CFDictionaryGetValue(a4, *v5);
    v14 = v13;
    if (!v13)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v27 = "%s::%s: tag '%s' not found in build identity, skipping validation\n";
      goto LABEL_21;
    }

    v15 = *v94;
    if (!*v94)
    {
      goto LABEL_18;
    }

    v16 = *v5;
    v17 = v94;
    do
    {
      v18 = v15[4];
      v19 = v18 >= v16;
      v20 = v18 < v16;
      if (v19)
      {
        v17 = v15;
      }

      v15 = v15[v20];
    }

    while (v15);
    if (v17 == v94 || v16 < v17[4])
    {
LABEL_18:
      LogInstance = ACFULogging::getLogInstance(v13);
      v27 = "%s::%s: tag '%s' not found in tss-request map, skipping validation\n";
LABEL_21:
      v28 = 3;
      ACFULogging::handleMessage(LogInstance, 3u, v27, v22, v23, v24, v25, v26, "ACFURestoreHost");
      v29 = 0;
      goto LABEL_22;
    }

    v91 = CFGetTypeID(Value);
    v90 = CFGetTypeID(v14);
    v30 = std::map<__CFString const*,std::string>::at(a5, v5);
    v31 = *v30;
    v32 = ACFULogging::getLogInstance(v30);
    ACFUCommon::cfTypeDescription(v91, 1, &v98);
    ACFUCommon::cfTypeDescription(v31, 1, &__p);
    ACFULogging::handleMessage(v32, 4u, "%s::%s: attempting to convert tag '%s' from device info type (%s) to tss-request map type (%s)\n", v33, v34, v35, v36, v37, "ACFURestoreHost");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
      if (!cf)
      {
        goto LABEL_36;
      }

LABEL_35:
      CFRelease(cf);
      goto LABEL_36;
    }

    if (cf)
    {
      goto LABEL_35;
    }

LABEL_36:
    v38 = ACFURestoreHost::convertCFType(Value, v31);
    cf = v38;
    if (v38)
    {
      v39 = ACFULogging::getLogInstance(v38);
      ACFUCommon::cfTypeDescription(v90, 1, &v98);
      ACFUCommon::cfTypeDescription(v31, 1, &__p);
      ACFULogging::handleMessage(v39, 4u, "%s::%s: attempting to convert tag '%s' from build identity type (%s) to tss-request map type (%s)\n", v40, v41, v42, v43, v44, "ACFURestoreHost");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98);
      }

      if (cf2)
      {
        CFRelease(cf2);
      }

      cf2 = ACFURestoreHost::convertCFType(v14, v31);
      if (cf2)
      {
        v45 = CFEqual(cf, cf2);
        if (v45)
        {
          v28 = 0;
          v29 = 1;
          goto LABEL_22;
        }

        v58 = ACFULogging::getLogInstance(v45);
        ACFULogging::handleMessage(v58, 2u, "%s::%s: tag '%s' has different values in device info and build identity\n", v59, v60, v61, v62, v63, "ACFURestoreHost");
        v65 = ACFULogging::getLogInstance(v64);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v66 = std::string::append(&v96, "::");
        v67 = *&v66->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v69 = *&v68->__r_.__value_.__l.__data_;
        v99 = v68->__r_.__value_.__r.__words[2];
        v98 = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v65, &v98, 2, "device info value: ", Value);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v71 = ACFULogging::getLogInstance(v70);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v72 = std::string::append(&v96, "::");
        v73 = *&v72->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v99 = v74->__r_.__value_.__r.__words[2];
        v98 = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v71, &v98, 2, "device info value converted: ", cf);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v77 = ACFULogging::getLogInstance(v76);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v78 = std::string::append(&v96, "::");
        v79 = *&v78->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v99 = v80->__r_.__value_.__r.__words[2];
        v98 = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v77, &v98, 2, "build identity value: ", v14);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        v83 = ACFULogging::getLogInstance(v82);
        std::string::basic_string[abi:ne200100]<0>(&v96, "ACFURestoreHost");
        v84 = std::string::append(&v96, "::");
        v85 = *&v84->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        v86 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v99 = v86->__r_.__value_.__r.__words[2];
        v98 = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v83, &v98, 2, "build identity value converted: ", cf2);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v52 = ACFULogging::getLogInstance(0);
        ACFUCommon::cfTypeDescription(v90, 1, &v98);
        ACFUCommon::cfTypeDescription(v31, 1, &__p);
        ACFULogging::handleMessage(v52, 2u, "%s::%s: failed to convert tag '%s' from build identity type (%s) to tss-request map type (%s)\n", v53, v54, v55, v56, v57, "ACFURestoreHost");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        cf2 = 0;
      }
    }

    else
    {
      v46 = ACFULogging::getLogInstance(0);
      ACFUCommon::cfTypeDescription(v91, 1, &v98);
      ACFUCommon::cfTypeDescription(v31, 1, &__p);
      ACFULogging::handleMessage(v46, 2u, "%s::%s: failed to convert tag '%s' from device info type (%s) to tss-request map type (%s)\n", v47, v48, v49, v50, v51, "ACFURestoreHost");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98);
      }

      cf = 0;
    }

    v29 = 0;
    v28 = 8;
LABEL_22:
    if ((v101 & 0x80000000) == 0)
    {
      break;
    }

    operator delete(v100);
    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (++v5 == v6)
    {
      v88 = 1;
      goto LABEL_82;
    }
  }

  if (v29)
  {
    goto LABEL_27;
  }

LABEL_26:
  if (v28 < 4)
  {
    goto LABEL_27;
  }

  v88 = 0;
LABEL_82:
  if (cf)
  {
    CFRelease(cf);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  return v88 & 1;
}

void sub_2984C2E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestoreHost::populateDictFromIdentity(unint64_t **a1, uint64_t a2, CFDictionaryRef theDict, __CFDictionary *a4)
{
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v8 = (a2 + 8);
    do
    {
      v9 = *v8;
      v10 = *v4;
      if (!*v8)
      {
        goto LABEL_11;
      }

      v11 = v8;
      do
      {
        v12 = v9[4];
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = v9[v14];
      }

      while (v9);
      if (v11 != v8 && v10 >= v11[4])
      {
        Value = CFDictionaryGetValue(theDict, v10);
        if (Value)
        {
          v23 = Value;
          v24 = std::map<__CFString const*,std::string>::at(a2, v4);
          result = ACFURestoreHost::convertCFType(v23, *v24);
          if (!result)
          {
            return result;
          }

          v26 = result;
          CFDictionarySetValue(a4, *v4, result);
          CFRelease(v26);
          goto LABEL_17;
        }

        ACFUCommon::stringFromCFString(*v4, __p);
        LogInstance = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: tag '%s' not found in identity dictionary, ignoring\n", v29, v30, v31, v32, v33, "ACFURestoreHost");
      }

      else
      {
LABEL_11:
        ACFUCommon::stringFromCFString(*v4, __p);
        v16 = ACFULogging::getLogInstance(v15);
        ACFULogging::handleMessage(v16, 3u, "%s::%s: tag '%s' not found in tss-request map, ignoring\n", v17, v18, v19, v20, v21, "ACFURestoreHost");
      }

      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_17:
      ++v4;
    }

    while (v4 != a1[1]);
  }

  return 1;
}

void sub_2984C3100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFURestoreHost::createBoolFromData(ACFURestoreHost *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x29EDB8EF8];
  otherNumber = 0;
  valuePtr = 0;
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v8 = v6;
    Num64Num32FromData = ACFURestoreHost::createNum64Num32FromData(this, &otherNumber, v7);
    v10 = Num64Num32FromData;
    if (Num64Num32FromData)
    {
      v11 = otherNumber;
      v12 = CFNumberCompare(v8, otherNumber, 0);
      v13 = *MEMORY[0x29EDB8F00];
      if (v12)
      {
        v5 = *MEMORY[0x29EDB8F00];
      }
    }

    else
    {
      LogInstance = ACFULogging::getLogInstance(Num64Num32FromData);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: CFData to CFBoolean conversion failure\n", v16, v17, v18, v19, v20, "ACFURestoreHost");
      v11 = otherNumber;
    }

    v14 = !v10;
    CFRelease(v8);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    ACFURestoreHost::createBoolFromData(0);
    v14 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v14;
}

CFErrorRef ACFURestoreHost::getError(ACFURestoreHost *this)
{
  if (!ACFUError::hasError((this + 24)))
  {
    return 0;
  }

  return ACFUError::getCFError((this + 24));
}

void ACFURestoreHost::~ACFURestoreHost(ACFURestoreHost *this)
{
  *this = &unk_2A1EE8780;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 160, *(this + 21));
  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  ACFUError::~ACFUError((this + 24));
}

uint64_t ACFURestoreHost::init(const void **this, const __CFDictionary *a2, const __CFString *a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ACFU Version: %s\n", v7, v8, v9, v10, v11, "ACFURestoreHost");
  if (a2)
  {
    v13 = a3 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v16 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v16, 2u, "%s::%s: bad parameter: options %p, domain %p\n", v17, v18, v19, v20, v21, "ACFURestoreHost");
  }

  else
  {
    this[2] = a2;
    AMSupportSafeRetain();
    AppendedDomain = ACFUError::createAppendedDomain(this + 3, a3);
  }

  if (this[5] == this[6] || this[17] == this[18] || this[8] == this[9] || this[11] == this[12] || this[14] == this[15] || !this[22] || !this[27] || !this[28])
  {
    v22 = ACFULogging::getLogInstance(AppendedDomain);
    ACFULogging::handleMessage(v22, 2u, "%s::%s: initialization failure due to incomplete parameters\n", v23, v24, v25, v26, v27, "ACFURestoreHost");
    return 0;
  }

  return v14;
}

CFTypeRef ACFURestoreHost::convertCFType(__CFString *this, ACFUCommon *a2)
{
  v4 = CFGetTypeID(this);
  LogInstance = ACFULogging::getLogInstance(v4);
  ACFUCommon::cfTypeDescription(a2, 1, &cf);
  ACFUCommon::cfTypeDescription(v4, 1, __p);
  ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: desired type %s, received type %s\n", v6, v7, v8, v9, v10, "ACFURestoreHost");
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(cf.data) < 0)
  {
    operator delete(cf.isa);
  }

  if (v4 == a2)
  {
    v12 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v12, 4u, "%s::%s: no conversion necessary\n", v13, v14, v15, v16, v17, "ACFURestoreHost");
    return CFRetain(this);
  }

  if (CFNumberGetTypeID() != a2 || (v19 = CFStringGetTypeID(), v4 != v19))
  {
    if (CFNumberGetTypeID() == a2 && (v34 = CFDataGetTypeID(), v4 == v34))
    {
      v35 = ACFULogging::getLogInstance(v34);
      ACFULogging::handleMessage(v35, 4u, "%s::%s: converting from data to number\n", v36, v37, v38, v39, v40, "ACFURestoreHost");
      cf.isa = 0;
      Num64Num32FromData = ACFURestoreHost::createNum64Num32FromData(this, &cf, v41);
      if (!Num64Num32FromData)
      {
        v43 = ACFULogging::getLogInstance(Num64Num32FromData);
        ACFULogging::handleMessage(v43, 2u, "%s::%s: failed to convert from number to data\n", v44, v45, v46, v47, v48, "ACFURestoreHost");
        goto LABEL_15;
      }
    }

    else
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID != a2 || (TypeID = CFDataGetTypeID(), v4 != TypeID))
      {
        v57 = ACFULogging::getLogInstance(TypeID);
        ACFUCommon::cfTypeDescription(a2, 1, &cf);
        ACFUCommon::cfTypeDescription(v4, 1, __p);
        ACFULogging::handleMessage(v57, 2u, "%s::%s: unsupported conversion: desired type %s, received type %s\n", v58, v59, v60, v61, v62, "ACFURestoreHost");
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(cf.data) < 0)
        {
          operator delete(cf.isa);
        }

        return 0;
      }

      v50 = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(v50, 4u, "%s::%s: converting from data to BOOLean\n", v51, v52, v53, v54, v55, "ACFURestoreHost");
      ACFURestoreHost::createBoolFromData(this, &cf);
      if (LOBYTE(cf.info) == 1)
      {
        ACFURestoreHost::convertCFType(v56);
        return 0;
      }
    }

    return cf.isa;
  }

  v20 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v20, 4u, "%s::%s: converting from string to number\n", v21, v22, v23, v24, v25, "ACFURestoreHost");
  cf.isa = 0;
  v27 = ACFURestoreHost::createNum32FromString(this, &cf, v26);
  if (v27)
  {
    return cf.isa;
  }

  v28 = ACFULogging::getLogInstance(v27);
  ACFULogging::handleMessage(v28, 2u, "%s::%s: failed to convert from string to number\n", v29, v30, v31, v32, v33, "ACFURestoreHost");
LABEL_15:
  result = cf.isa;
  if (!cf.isa)
  {
    return result;
  }

  CFRelease(cf.isa);
  return 0;
}

void sub_2984C3730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestoreHost::createNum32FromString(const __CFString *this, const __CFString *a2, const __CFNumber **a3)
{
  valuePtr = 0;
  ACFUCommon::stringFromCFString(this, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    valuePtr = std::stoi(&__str, 0, 0);
    v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
    a2->isa = v6;
    if (v6)
    {
      v7 = 1;
      goto LABEL_6;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v15 = "%s::%s: Failed to create CF number from int value\n";
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    v15 = "%s::%s: failed to get string\n";
  }

  ACFULogging::handleMessage(LogInstance, 2u, v15, v10, v11, v12, v13, v14, "ACFURestoreHost");
  v7 = 0;
LABEL_6:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

BOOL ACFURestoreHost::createNum64Num32FromData(ACFURestoreHost *this, const __CFData *a2, const __CFNumber **a3)
{
  Length = CFDataGetLength(this);
  BytePtr = CFDataGetBytePtr(this);
  if (Length - 1 >= 8)
  {
    ACFURestoreHost::createNum64Num32FromData(Length);
  }

  else
  {
    if (Length < 5)
    {
      valuePtr = 0;
      memcpy(&valuePtr, BytePtr, Length);
      v7 = *MEMORY[0x29EDB8ED8];
      p_valuePtr = &valuePtr;
      v9 = kCFNumberSInt32Type;
    }

    else
    {
      __dst = 0;
      memcpy(&__dst, BytePtr, Length);
      v7 = *MEMORY[0x29EDB8ED8];
      p_valuePtr = &__dst;
      v9 = kCFNumberSInt64Type;
    }

    *a2 = CFNumberCreate(v7, v9, p_valuePtr);
  }

  return Length - 1 < 8;
}

void ACFURestoreHost::ACFURestoreHost(ACFURestoreHost *this)
{
  *this = &unk_2A1EE8780;
  *(this + 1) = @"ACFU,RootedFW";
  *(this + 2) = 0;
  ACFUError::ACFUError((this + 24), @"RestoreHost");
  *(this + 21) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = this + 208;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

uint64_t *std::map<__CFString const*,unsigned long>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,unsigned long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,unsigned long>,std::__tree_node<std::__value_type<__CFString const*,unsigned long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,unsigned long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,unsigned long>,std::__tree_node<std::__value_type<__CFString const*,unsigned long>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, v5 + 1, v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__find_equal<__CFString const*>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void ACFURestoreHost::getTags(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get device info list\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create response tag list\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create build identity tag list\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate output dictionary\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

void ACFURestoreHost::copyFirmware(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: updater failed to find firmware data with bundleData\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: copyFirmware: failed to create src rooted FW URL\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to create personalized rooted FW URL (status: %d)\n", v2, v3, v4, v5, v6, v7);
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get src bundle URL\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

void ACFURestoreHost::copyFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable copy of source device firmware data dictionary (type: %hhu)\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed due to incompatible bundle data dictionary\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate source bundle firmware path dictionary (type: %hhu)\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate bundle firmware path dictionary (type: %hhu)\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate data for personalized path\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

void ACFURestoreHost::getPathFromBuildID(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  CFGetTypeID(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: path has wrong type %lu\n", v3, v4, v5, v6, v7, "ACFURestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get dict entry\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create build ID key path\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

void ACFURestoreHost::copyToPersonalizedBundlePath(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to create destination path URL (status: %d)\n", v2, v3, v4, v5, v6, v7);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to create directory @ dstPathURL (status: %d)\n", v2, v3, v4, v5, v6, v7);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: failed to copy data to dstPathURL (status: %d)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: destination path does not exist after creation attempt (status: %d)\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

void ACFURestoreHost::createRequest(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to validate device identity tags\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to build parameters out of build identity\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to build parameters out of device identity\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: production mode not present in device info. This is fatal!\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: security mode not present in device info. This is fatal!\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid FDR trust object hash in updater options override\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid FDR trust object hash in client updater override\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to create empty trust object hash\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get build identity dict from options\n", v2, v3, v4, v5, v6, "ACFURestoreHost");
}

BOOL ACFURestoreHost::createRequest(uint64_t a1, ACFUError *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to allocate output dictionary\n", v4, v5, v6, v7, v8, "ACFURestoreHost");
  return ACFUError::hasError(a2);
}

void ACFURestoreHost::createNum64Num32FromData(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: data length %ld is not within range\n", v2, v3, v4, v5, v6, v7);
}

void ACFUErrorContainer::ACFUErrorContainer(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  AMSupportSafeRetain();
}

void sub_2984C4918(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUErrorContainer::~ACFUErrorContainer(ACFUErrorContainer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
    *(this + 4) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ACFUError::ACFUError(ACFUError *this, const __CFString *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  v5 = operator new(0x18uLL);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = 0;
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](v4, v5);
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](&v6, 0);
  *this = a2;
  AMSupportSafeRetain();
}

CFErrorRef ACFUError::getCFError(ACFUError *this)
{
  if (**(this + 1) == *(*(this + 1) + 8))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: Looks like there is no error present; Nothing to be done here.\n", v17, v18, v19, v20, v21, "ACFUError");
    return 0;
  }

  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = *(*(this + 1) + 8);
  v5 = (v4 - 40);
  if (*(v4 - 17) < 0)
  {
    v5 = *v5;
  }

  v6 = CFStringCreateWithCString(v2, v5, 0x8000100u);
  if (v6)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F38], v6);
    v8 = *(*(this + 1) + 8);
    if (*(v8 - 8))
    {
      v9 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v9, 3u, "%s::%s: Populating underlying error\n", v10, v11, v12, v13, v14, "ACFUError");
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F68], *(*(*(this + 1) + 8) - 8));
      v8 = *(*(this + 1) + 8);
    }

    v15 = CFErrorCreate(v2, *this, *(v8 - 16), Mutable);
    if (v15)
    {
      if (!Mutable)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v23 = "%s::%s: failed to create CFError object\n";
  }

  else
  {
    v23 = "%s::%s: failed to create CFString for error object\n";
  }

  ACFUError::getCFError(v23);
  v15 = 0;
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

uint64_t ACFUError::addError(uint64_t a1, uint64_t a2, std::string::size_type a3, std::string::size_type a4)
{
  v7 = a4;
  v8 = a3;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 16))
  {
    result = std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(*(a1 + 8), a2, &v8, &v7);
  }

  else
  {
    std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(*(a1 + 8), *(v4 + 8), a2, &v8, &v7);
    result = v5 + 40;
    *(v4 + 8) = v5 + 40;
  }

  *(v4 + 8) = result;
  return result;
}

const void *ACFUError::createAppendedDomain(const void **this, const __CFString *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 3, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, *this);
  CFArrayAppendValue(Mutable, a2);
  Copy = CFArrayCreateCopy(v4, Mutable);
  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  *this = CFStringCreateByCombiningStrings(v4, Copy, @"::");
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return *this;
}

void ACFUError::~ACFUError(void ***this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](this + 1, 0);
}

void std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](&v3);
    operator delete(v2);
  }
}

void std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        ACFUErrorContainer::~ACFUErrorContainer((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(uint64_t a1, uint64_t a2, std::string::size_type *a3, std::string::size_type *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = (v11 + 40 * v4);
  *(&v20 + 1) = v11 + 40 * v10;
  std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(a1, v19, a2, a3, a4);
  *&v20 = v19 + 40;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(&v18);
  return v17;
}

void sub_2984C4F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(int a1, std::string *this, uint64_t a3, std::string::size_type *a4, std::string::size_type *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  ACFUErrorContainer::ACFUErrorContainer(this, &__p, *a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2984C4FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(40 * a2);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(int a1, ACFUErrorContainer *this, ACFUErrorContainer *a3, uint64_t a4)
{
  if (this != a3)
  {
    v6 = this;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = v6 + v7;
      if (*(v6 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      *(a4 + v7 + 24) = *(v6 + v7 + 24);
      v7 += 40;
    }

    while ((v6 + v7) != a3);
    while (v6 != a3)
    {
      ACFUErrorContainer::~ACFUErrorContainer(v6);
      v6 = (v6 + 40);
    }
  }
}

void sub_2984C50E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 + v2 - 40);
    v5 = -v2;
    do
    {
      ACFUErrorContainer::~ACFUErrorContainer(v4);
      v4 = (v6 - 40);
      v5 += 40;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ACFUErrorContainer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    ACFUErrorContainer::~ACFUErrorContainer((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ACFULogging::initLog(ACFULogging *this, CFDictionaryRef theDict, void (*a3)(void *, const char *), void *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Options");
    if (Value && (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v9)) && (v11 = CFDictionaryGetValue(v9, @"RestoreInternal")) != 0)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      v14 = 2;
      if (v13 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v12) == 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }
      }
    }

    else
    {
      v14 = 2;
    }

    *(this + 9) = a3;
    *(this + 10) = a4;
    ACFUCommon::parseDebugArgs(theDict, "logLevel", &v34);
    v16 = v35;
    if (v35 == 4006)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2A13B95B0, 3u, "%s::%s: Key: %s not found while parsing debugArgs, but this is not error\n", v17, v18, v19, v20, v21, "ACFULogging");
LABEL_16:
      v22 = v14;
      goto LABEL_17;
    }

    if (v35)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2A13B95B0, 0, "%s::%s: Failed to parse debugArgs\n", v29, v30, v31, v32, v33, "ACFULogging");
      return v16;
    }

    v22 = v34;
    if (v34 >= 5)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2A13B95B0, 3u, "%s::%s: Unexpected value: %u for Key: %s\n", v23, v24, v25, v26, v27, "ACFULogging");
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 9) = a3;
    *(this + 10) = a4;
    v22 = 2;
  }

LABEL_17:
  v16 = 0;
  *(this + 22) = v22;
  return v16;
}

void *ACFULogging::getLogInstance(ACFULogging *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    ACFULogging::getLogInstance();
  }

  return &unk_2A13B95B0;
}

void ACFULogging::handleMessage(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a2)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a2)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (vsnprintf((a1 + 92), 0xC00uLL, a3, &a9) >= 0xC01)
  {
    strcpy((a1 + 3099), "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, *(a1 + a2), a1 + 92);
  std::mutex::unlock((a1 + 8));
}

void ACFULogging::ACFULogging(ACFULogging *this)
{
  *this = 17830144;
  *(this + 4) = 2;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 22) = 2;
  bzero(this + 92, 0xC00uLL);
  *(this + 396) = 0;
  v2 = os_log_create("com.apple.AppleConvergedFirmwareUpdater", "service");
  v3 = *(this + 396);
  *(this + 396) = v2;
}

void ACFULogging::log(ACFULogging *this, os_log_type_t a2, uint64_t type)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 10);
    v6 = *MEMORY[0x29EDCA608];

    v4(v5, type);
  }

  else
  {
    v8 = *(this + 396);
    if (os_log_type_enabled(v8, a2))
    {
      v10 = 136315138;
      v11 = type;
      _os_log_impl(&dword_29849C000, v8, a2, "%s", &v10, 0xCu);
    }

    v9 = *MEMORY[0x29EDCA608];
  }
}

void ACFULogging::handleMessageBinary(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v8 = a3;
  v10 = a1;
  v46 = *MEMORY[0x29EDCA608];
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      goto LABEL_43;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    goto LABEL_43;
  }

  std::mutex::lock((v10 + 8));
  if (a5)
  {
    v16 = 0;
    if (a5 <= 0x3E80)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = 112;
    }

    if (a5 <= 0x3E80)
    {
      a6 = 0;
    }

    v41 = v10;
    v39 = v17;
    v40 = a6;
    do
    {
      v18 = a6 ^ 1;
      if (v16 != v17)
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        if (*(a2 + 23) >= 0)
        {
          LOBYTE(v19) = a2;
        }

        else
        {
          v19 = *a2;
        }

        ACFULogging::handleMessageInternal(v10, v8, "%s -- middle of buffer snipped -- \n", v11, v12, v13, v14, v15, v19);
        v16 = a5 - 112;
      }

      v44 = 0u;
      memset(v45, 0, sizeof(v45));
      v43 = 0u;
      v20 = a5 - v16;
      if (a5 == v16)
      {
        *(v45 + 15) = 538976288;
        *&v21 = 0x2020202020202020;
        *(&v21 + 1) = 0x2020202020202020;
        v44 = v21;
        v45[0] = v21;
        v22 = 51;
        v43 = v21;
      }

      else
      {
        v23 = v8;
        if (v20 >= 0x10)
        {
          v20 = 16;
        }

        v24 = (a4 + v16);
        if (v20 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v20;
        }

        v26 = (54 - 3 * v25) - 3;
        v27 = (a4 + v16);
        v28 = v25;
        v29 = &v43 + 1;
        do
        {
          v30 = *v27++;
          v31 = a0123456789abcd[v30 & 0xF];
          *(v29 - 1) = a0123456789abcd[v30 >> 4];
          *v29 = v31;
          v29[1] = 32;
          v29 += 3;
          v26 += 3;
          --v28;
        }

        while (v28);
        memset(v29 - 1, 32, 3 * (17 - v25));
        v32 = &v43;
        v33 = 0;
        do
        {
          v35 = *v24++;
          v34 = v35;
          if ((v35 - 32) >= 0x5F)
          {
            v34 = 46;
          }

          *(v32 + v26) = v34;
          v32 = (v32 + 1);
          --v33;
          --v25;
        }

        while (v25);
        v22 = v26 - v33;
        v8 = v23;
        v10 = v41;
        a6 = v40;
        v17 = v39;
      }

      strcpy(&v43 + v22, "\r\n");
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v36) = a2;
      }

      else
      {
        v36 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s %04zx  %s", v11, v12, v13, v14, v15, v36);
      v16 += 16;
    }

    while (v16 < a5);
    if (a6)
    {
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v37) = a2;
      }

      else
      {
        v37 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s (snipped)\n", v11, v12, v13, v14, v15, v37);
    }
  }

  std::mutex::unlock((v10 + 8));
LABEL_43:
  v38 = *MEMORY[0x29EDCA608];
}

void ACFULogging::handleMessageInternal(char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (vsnprintf(a1 + 92, 0xC00uLL, a3, &a9) >= 0xC01)
  {
    strcpy(a1 + 3099, "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, a1[a2], (a1 + 92));
}

void ACFULogging::handleMessageCFType(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (a5)
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%s: %s\n %@\n", v15, a4, a5);
    v17 = v16;
    if (v16)
    {
      ACFUCommon::stringFromCFString(v16, &v25);
      v28 = v26;
      *__p = v25;
      if (SHIBYTE(v26) < 0)
      {
        if (__p[1])
        {
          LOBYTE(v23) = __p[0];
        }

        else
        {
          v23 = "UNDEF";
        }
      }

      else
      {
        v23 = __p;
        if (!HIBYTE(v26))
        {
          v23 = "UNDEF";
        }
      }

      ACFULogging::handleMessageInternal(a1, a3, "%s", v18, v19, v20, v21, v22, v23);
      CFRelease(v17);
      goto LABEL_18;
    }

    v24 = "%s::%s: failed to format CFString\n";
  }

  else
  {
    v24 = "%s::%s: CFType to be printed is NULL\n";
  }

  ACFULogging::handleMessageInternal(a1, 2, v24, v10, v11, v12, v13, v14, "ACFULogging");
LABEL_18:
  std::mutex::unlock((a1 + 8));
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2984C5AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 8));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ACFULogging::getLogInstance()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    ACFULogging::ACFULogging(&unk_2A13B95B0);
    __cxa_atexit(ACFULogging::~ACFULogging, &unk_2A13B95B0, &dword_29849C000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void ACFUFTABFile::create(const __CFData *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_2A1EE87D0;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if ((a2 & 2) != 0)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v35);
    v37 = "%s::%s: function does not support memory optimization flow\n";
LABEL_19:
    LogInstance = ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage(LogInstance, 2u, v37, v39, v40, v41, v42, v43, "ACFUFTABFile");
    v8 = 0;
LABEL_12:
    *a4 = v8;
    return;
  }

  v9 = ACFUFTABFile::init(v8, a1);
  if ((v9 & 1) == 0)
  {
    v36 = (*(*v8 + 56))(v8);
    v37 = "%s::%s: failed to open file\n";
    goto LABEL_19;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    if (a2 >= 3)
    {
      v19 = ACFULogging::getLogInstance(v9);
      v25 = "%s::%s: invalid optimization mask\n";
      v26 = 2;
    }

    else
    {
      *(v8 + 16) = a2;
      v19 = ACFULogging::getLogInstance(v9);
      v25 = "%s::%s: Object initialized!\n";
      v26 = 4;
    }

    ACFULogging::handleMessage(v19, v26, v25, v20, v21, v22, v23, v24, "ACFUFTABFile");
    goto LABEL_12;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(a3, v44);
  v11 = v44[0];
  v12 = v44[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4u, "%s::%s: Didn't find a matching embedded ftab\n", v14, v15, v16, v17, v18, "ACFUFTABFile");
      v45 = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 3;
  }

  v27 = ACFULogging::getLogInstance(v10);
  if (*(v11 + 23) < 0)
  {
    v33 = *v11;
  }

  ACFULogging::handleMessage(v27, 0, "%s::%s: Using embedded ftab '%s'\n", v28, v29, v30, v31, v32, "ACFUFTABFile");
  v34 = (**v8)(v8, v11);
  ACFUFTABFile::create(v34, a2, 0xFFFFLL);
  v45 = v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::embeddedFTABFilenamesForChipRevision(ACFUFTABFile *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this >= 0x40)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v24 = "%s::%s: Chip major revision seems unreasonable: %d\n";
LABEL_10:
    ACFULogging::handleMessage(LogInstance, 2u, v24, v19, v20, v21, v22, v23, "ACFUFTABFile");
    return;
  }

  if ((this & 0xFu) >= 6)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v24 = "%s::%s: Chip minor revision seems unreasonable: %d\n";
    goto LABEL_10;
  }

  v3 = (this >> 4) + 97;
  v4 = snprintf(__str, 5uLL, "_%c%cf", v3, this & 0xF | 0x30u);
  v5 = ACFULogging::getLogInstance(v4);
  ACFULogging::handleMessage(v5, 4u, "%s::%s: %s\n", v6, v7, v8, v9, v10, "ACFUFTABFile");
  std::string::basic_string[abi:ne200100]<0>(__p, __str);
  std::vector<std::string>::push_back[abi:ne200100](a2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = snprintf(__str, 5uLL, "_%cxf", v3);
  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 4u, "%s::%s: %s\n", v13, v14, v15, v16, v17, "ACFUFTABFile");
  std::string::basic_string[abi:ne200100]<0>(__p, __str);
  std::vector<std::string>::push_back[abi:ne200100](a2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2984C6010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ACFUFTABFile::setManifestOnData(ACFUDataContainer **this, CFDataRef theData, __CFData **a3)
{
  v5 = this;
  if (!a3)
  {
    v6 = this[1];
    if (!v6)
    {
      ACFUFTABFile::setManifestOnData(0);
      return 0;
    }

    this = ACFUDataContainer::isOptimized(v6);
    if (this)
    {
      ACFUFTABFile::setManifestOnData(this);
      return 0;
    }
  }

  if (!theData)
  {
    ACFUFTABFile::setManifestOnData(this);
    return 0;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::setManifestOnData(Length);
    return 0;
  }

  if (a3)
  {
    if (!*a3)
    {
      ACFUFTABFile::setManifestOnData(Length);
      return 0;
    }

    isValidFileData = ACFUFTABFile::isValidFileData(v5, *a3, 0);
    if ((isValidFileData & 1) == 0)
    {
      ACFUFTABFile::setManifestOnData(isValidFileData);
      return 0;
    }

    if (*(v5 + 16) != 1)
    {
      v9 = *a3;
      if (*a3)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if (*(v5 + 16) != 1)
  {
    isValidFileData = ACFUDataContainer::getData(*(v5 + 1));
    v9 = isValidFileData;
    if (isValidFileData)
    {
LABEL_11:
      v10 = *(CFDataGetBytePtr(v9) + 10);
      v11 = CFDataGetLength(theData);
      BytePtr = CFDataGetBytePtr(v9);
      if (*(BytePtr + 5))
      {
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v14, v15, v16, v17, v18, "ACFUFTABFile");
        ACFUFTABFile::removeManifestPadding(v19, v9);
        v20 = *(CFDataGetBytePtr(v9) + 4);
        v38.length = *(CFDataGetBytePtr(v9) + 5);
        v38.location = v20;
        CFDataDeleteBytes(v9, v38);
        *(CFDataGetBytePtr(v9) + 4) = 0;
        *(CFDataGetBytePtr(v9) + 5) = 0;
      }

      v21 = CFDataGetLength(v9);
      v22 = v10 - 1;
      v23 = *&CFDataGetBytePtr(v9)[16 * v22 + 52];
      v24 = CFDataGetBytePtr(v9);
      v25 = ((*(v24 + 4 * v22 + 14) + v23) + 3) & 0x1FFFFFFFCLL;
      v26 = __OFSUB__(v25, v21);
      v27 = v25 - v21;
      if (v27 < 0 != v26)
      {
        ACFUFTABFile::setManifestOnData(v24);
      }

      else
      {
        if (!((v27 < 0) ^ v26 | (v27 == 0)))
        {
          v28 = ACFULogging::getLogInstance(v24);
          ACFULogging::handleMessage(v28, 0, "%s::%s: padding %ld byte(s) at the end of ftab\n", v29, v30, v31, v32, v33, "ACFUFTABFile");
          CFDataIncreaseLength(v9, v27);
        }

        *(CFDataGetBytePtr(v9) + 5) = v11;
        *(CFDataGetBytePtr(v9) + 4) = v25;
        v34 = CFDataGetBytePtr(theData);
        CFDataAppendBytes(v9, v34, v11);
        if (a3)
        {
          v35 = *a3;

          return ACFUFTABFile::isValidFileData(v5, v35, 0);
        }

        if ((*(*v5 + 88))(v5))
        {

          return ACFUFTABFile::isCacheValid(v5);
        }
      }

      return 0;
    }

LABEL_25:
    ACFUFTABFile::setManifestOnData(isValidFileData);
    return 0;
  }

  return ACFUFTABFile::setManifestToTopOnData(v5, theData, 0);
}

uint64_t ACFUFTABFile::isValidFileData(ACFUFTABFile *this, CFDataRef theData, char a3)
{
  v6 = theData;
  if (!theData)
  {
    v8 = (this + 8);
    isOptimized = *(this + 1);
    if (!isOptimized)
    {
      v6 = 0;
      v37 = "%s::%s: no file data?!\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::isOptimized(isOptimized);
    if (isOptimized)
    {
      if (a3)
      {
        v6 = 0;
        v37 = "%s::%s: header only validation unsupported with optimized data\n";
        goto LABEL_69;
      }

      isOptimized = ACFUDataContainer::copyData(*v8, 0, 0x30uLL);
      v6 = isOptimized;
      if (isOptimized)
      {
        isOptimized = CFDataGetBytePtr(isOptimized);
        if (!isOptimized)
        {
LABEL_68:
          v37 = "%s::%s: failed to get byte pointer\n";
          goto LABEL_69;
        }

        v9 = isOptimized;
        isOptimized = ACFUDataContainer::copyData(*v8, 16 * *(isOptimized + 10) + 32, 0x10uLL);
        if (isOptimized)
        {
          v10 = isOptimized;
          BytePtr = CFDataGetBytePtr(isOptimized);
          if (BytePtr)
          {
            v12 = &v9[*(BytePtr + 1) + *(BytePtr + 2)];
            CFRelease(v10);
            v14 = v9;
            goto LABEL_12;
          }

          CFRelease(v10);
          goto LABEL_68;
        }

        v37 = "%s::%s: failed to aquire ftab file header\n";
LABEL_69:
        LogInstance = ACFULogging::getLogInstance(isOptimized);
        ACFULogging::handleMessage(LogInstance, 2u, v37, v39, v40, v41, v42, v43, "ACFUFTABFile");
        std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](v8, 0);
        goto LABEL_61;
      }

LABEL_64:
      v37 = "%s::%s: failed to copy ftab header\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::copyData(*v8);
    v6 = isOptimized;
    if (!isOptimized)
    {
      goto LABEL_64;
    }
  }

  v9 = CFDataGetBytePtr(v6);
  v14 = CFDataGetBytePtr(v6);
  Length = CFDataGetLength(v6);
  v12 = &v14[Length];
LABEL_12:
  if ((v12 - v14) <= 0x30)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v16 = (v9 + 40);
  v15 = *(v9 + 10);
  v17 = &v14[16 * v15 + 48];
  if (v17 > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v18 = *(v9 + 5);
  v19 = &v14[*(v9 + 4)];
  if ((a3 & 1) == 0 && &v19[v18] > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if (*(v9 + 4) != 0x62617466736F6B72)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if ((v15 - 192) <= 0xFFFFFF40)
  {
    ACFUFTABFile::isValidFileData((v9 + 40));
    goto LABEL_58;
  }

  if (v18 && v19 < v17)
  {
    ACFUFTABFile::isValidFileData(Length);
LABEL_58:
    v31 = 0;
    if (theData)
    {
      return 0;
    }

    goto LABEL_59;
  }

  cf = v6;
  if (theData)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *&CFDataGetBytePtr(theData)[v20 + 52];
      v23 = CFDataGetBytePtr(theData);
      if ((a3 & 1) == 0)
      {
        v24 = &v14[v22 + *(v23 + v20 + 56)];
        if (v24 > v12 || v24 < v17)
        {
          ACFUFTABFile::isValidFileData(v23);
          goto LABEL_49;
        }
      }

      v26 = CFDataGetBytePtr(theData);
      if (&v14[*(v26 + v20 + 52)] < v17)
      {
        break;
      }

      ++v21;
      v20 += 16;
      if (v21 >= *v16)
      {
        return 1;
      }
    }

    ACFUFTABFile::isValidFileData(v26);
LABEL_49:
    v31 = 0;
LABEL_50:
    v6 = cf;
    if (theData)
    {
      return 0;
    }

LABEL_59:
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, 0);
    if (v31)
    {
      CFRelease(v31);
    }

LABEL_61:
    v27 = 0;
    if (!v6)
    {
      return v27;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v29 = 48;
  do
  {
    v30 = ACFUDataContainer::copyData(*(this + 1), v29, 0x10uLL);
    v31 = v30;
    if (!v30)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v32 = CFDataGetBytePtr(v30);
    if (!v32)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v33 = &v14[v32[1]];
    if ((a3 & 1) == 0)
    {
      v34 = &v33[v32[2]];
      if (v34 > v12 || v34 < v17)
      {
        ACFUFTABFile::isValidFileData(v32);
        goto LABEL_50;
      }
    }

    if (v33 < v17)
    {
      ACFUFTABFile::isValidFileData(v32);
      goto LABEL_50;
    }

    CFRelease(v31);
    ++v28;
    v29 += 16;
  }

  while (v28 < *v16);
  v27 = 1;
  v6 = cf;
  if (!cf)
  {
    return v27;
  }

LABEL_43:
  CFRelease(v6);
  return v27;
}

uint64_t ACFUFTABFile::setManifestToTopOnData(ACFUFTABFile *this, const __CFData *a2, __CFData **a3)
{
  if (!a3)
  {
    v73 = *(this + 1);
    if (!v73)
    {
      ACFUFTABFile::setManifestToTopOnData(0);
      return 0;
    }

    isOptimized = ACFUDataContainer::isOptimized(v73);
    if (isOptimized)
    {
      ACFUFTABFile::setManifestToTopOnData(isOptimized);
      return 0;
    }

    Data = ACFUDataContainer::getData(*(this + 1));
    v7 = Data;
    if (Data)
    {
      goto LABEL_5;
    }

LABEL_25:
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  if (!*a3)
  {
    ACFUFTABFile::setManifestToTopOnData(this);
    return 0;
  }

  Data = ACFUFTABFile::isValidFileData(this, *a3, 0);
  if ((Data & 1) == 0)
  {
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = *(CFDataGetBytePtr(v7) + 10);
  BytePtr = CFDataGetBytePtr(v7);
  if (*(BytePtr + 5))
  {
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v11, v12, v13, v14, v15, "ACFUFTABFile");
    v17 = ACFUFTABFile::removeManifestPadding(v16, v7);
    v18 = *(CFDataGetBytePtr(v7) + 4);
    v112.length = *(CFDataGetBytePtr(v7) + 5);
    v112.location = v18;
    CFDataDeleteBytes(v7, v112);
    if (v17 && v8)
    {
      v19 = 52;
      v20 = v8;
      do
      {
        v21 = *(CFDataGetBytePtr(v7) + 5);
        v22 = CFDataGetBytePtr(v7);
        *&v22[v19] -= v21;
        v19 += 16;
        --v20;
      }

      while (v20);
    }

    *(CFDataGetBytePtr(v7) + 4) = 0;
    *(CFDataGetBytePtr(v7) + 5) = 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    return 0;
  }

  v107 = Mutable;
  v24 = a2;
  v109 = this;
  v105 = CFDataGetBytePtr(v7);
  v104 = *(CFDataGetBytePtr(v7) + 13);
  v103 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 52];
  v102 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 56];
  v25 = *(CFDataGetBytePtr(v7) + 13);
  v108 = v8;
  v26 = ((v25 + 3) & 0xFFFFFFFC) - v25;
  v27 = v26 + *(CFDataGetBytePtr(v7) + 13);
  *(CFDataGetBytePtr(v7) + 4) = v27;
  v106 = v24;
  Length = CFDataGetLength(v24);
  v29 = CFDataGetBytePtr(v7);
  *(v29 + 5) = Length;
  v30 = ACFULogging::getLogInstance(v29);
  v31 = *(CFDataGetBytePtr(v7) + 4);
  v97 = *(CFDataGetBytePtr(v7) + 5);
  ACFULogging::handleMessage(v30, 0, "%s::%s: manifestOffset: %u, manifestSize: %u\n", v32, v33, v34, v35, v36, "ACFUFTABFile");
  v37 = *(CFDataGetBytePtr(v7) + 4);
  v38 = CFDataGetBytePtr(v7);
  v39 = *(v38 + 5) + v37;
  v40 = ACFULogging::getLogInstance(v38);
  v101 = (v25 + 3) & 0xFFFFFFFC;
  v41 = v25;
  ACFULogging::handleMessage(v40, 0, "%s::%s: startOfManifestUnaligned: %ld, startOfManifestAligned: %ld, paddingBeforeManifestStart: %u\n", v42, v43, v44, v45, v46, "ACFUFTABFile");
  v48 = ACFULogging::getLogInstance(v47);
  v100 = (v39 + 3) & 0xFFFFFFFC;
  v49 = v39;
  ACFULogging::handleMessage(v48, 0, "%s::%s: endOfManifestUnaligned: %ld, endOfManifestAligned: %ld, paddingAfterManifestEnd: %u\n", v50, v51, v52, v53, v54, "ACFUFTABFile");
  v98 = v100 - v39;
  v99 = v26;
  if (v108)
  {
    v55 = 0;
    v56 = ((v39 + 3) & 0xFFFFFFFC) - v39 + v26;
    v57 = 16 * v108;
    while (1)
    {
      v58 = *(CFDataGetBytePtr(v7) + 5);
      v59 = CFDataGetBytePtr(v7);
      *&v59[v55 + 52] += v56 + v58;
      if (!a3)
      {
        v60 = CFDataGetBytePtr(v7);
        v111 = 4;
        LODWORD(v110) = *&v60[v55 + 48];
        BYTE4(v110) = 0;
        v61 = CFDataGetBytePtr(v7);
        updated = ACFUFTABFile::updateCache(v109, &v110, *&v61[v55 + 52], 0);
        v63 = updated;
        if ((updated & 1) == 0)
        {
          v64 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v64, 2u, "%s::%s: failed to update cache\n", v65, v66, v67, v68, v69, "ACFUFTABFile");
        }

        if (v111 < 0)
        {
          operator delete(v110);
        }

        if (!v63)
        {
          break;
        }
      }

      v55 += 16;
      if (v57 == v55)
      {
        v70 = v109;
        v72 = v106;
        v71 = v107;
        goto LABEL_27;
      }
    }

    v95 = 0;
    v71 = v107;
    goto LABEL_46;
  }

  v57 = 0;
  v70 = this;
  v72 = v106;
  v71 = v107;
LABEL_27:
  v75 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v71, v75, 48);
  v76 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v71, v76 + 48, v57);
  if (v101 != v41)
  {
    v78 = ACFULogging::getLogInstance(v77);
    ACFULogging::handleMessage(v78, 0, "%s::%s: paddingBeforeManifestStart %u bytes\n", v79, v80, v81, v82, v83, "ACFUFTABFile");
    CFDataIncreaseLength(v71, v99);
  }

  v84 = CFDataGetBytePtr(v72);
  v85 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v71, v84, *(v85 + 5));
  if (v100 != v49)
  {
    v87 = ACFULogging::getLogInstance(v86);
    ACFULogging::handleMessage(v87, 0, "%s::%s: paddingAfterManifestEnd %u bytes\n", v88, v89, v90, v91, v92, "ACFUFTABFile");
    CFDataIncreaseLength(v71, v98);
  }

  CFDataAppendBytes(v71, &v105[v104], v103 - v104 + v102);
  if (!a3)
  {
    if (ACFUDataContainer::setData(v70[1], v71) && ((*v70)[11])(v70))
    {
      isCacheValid = ACFUFTABFile::isCacheValid(v70);
      goto LABEL_36;
    }

LABEL_45:
    v95 = 0;
    goto LABEL_46;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  v93 = AMSupportSafeRetain();
  *a3 = v93;
  if (!v93)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    goto LABEL_45;
  }

  isCacheValid = ACFUFTABFile::isValidFileData(v70, v93, 0);
LABEL_36:
  v95 = isCacheValid;
LABEL_46:
  CFRelease(v71);
  return v95;
}

void sub_2984C6CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::removeManifestPadding(ACFUFTABFile *this, CFDataRef theData)
{
  if (!theData)
  {
    ACFUFTABFile::removeManifestPadding(this);
    return 0;
  }

  v3 = *(CFDataGetBytePtr(theData) + 5);
  BytePtr = CFDataGetBytePtr(theData);
  if (!v3)
  {
    ACFUFTABFile::removeManifestPadding(BytePtr);
    return 0;
  }

  v5 = *(BytePtr + 4);
  if (v5 >= *(CFDataGetBytePtr(theData) + 13))
  {
    v18 = *(CFDataGetBytePtr(theData) + 10) - 1;
    v19 = *&CFDataGetBytePtr(theData)[16 * v18 + 52];
    v20 = CFDataGetBytePtr(theData);
    v21 = (*(v20 + 4 * v18 + 14) + v19);
    LogInstance = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest at the end - startOfManifest: %u, endOfFiles: %u, padding: %u\n", v23, v24, v25, v26, v27, "ACFUFTABFile");
    v30.location = v21;
    v30.length = v5 - v21;
    CFDataDeleteBytes(theData, v30);
    v28 = CFDataGetBytePtr(theData);
    result = 0;
    *(v28 + 4) = v21;
  }

  else
  {
    v6 = CFDataGetBytePtr(theData);
    v7 = *(v6 + 13) - (v5 + v3);
    v8 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v8, 0, "%s::%s: manifest is at top - endOfManifest: %u, startOfFiles: %u, paddingAfterManifestEnd: %u\n", v9, v10, v11, v12, v13, "ACFUFTABFile");
    v29.location = (*(CFDataGetBytePtr(theData) + 4) + v3);
    v29.length = v7;
    CFDataDeleteBytes(theData, v29);
    if (*(CFDataGetBytePtr(theData) + 10))
    {
      v14 = 0;
      v15 = 52;
      do
      {
        v16 = CFDataGetBytePtr(theData);
        *&v16[v15] -= v7;
        ++v14;
        v15 += 16;
      }

      while (v14 < *(CFDataGetBytePtr(theData) + 10));
    }

    return 1;
  }

  return result;
}