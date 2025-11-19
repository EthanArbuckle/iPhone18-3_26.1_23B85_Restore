uint64_t IcpUtility::getNumProcessors(IcpUtility *this)
{
  if (qword_280A716E0 == -1)
  {
    result = _MergedGlobals_3;
    if (_MergedGlobals_3 > 0)
    {
      return result;
    }
  }

  else
  {
    IcpUtility::getNumProcessors();
    result = _MergedGlobals_3;
    if (_MergedGlobals_3 > 0)
    {
      return result;
    }
  }

  host_info_outCnt = 12;
  v2 = MEMORY[0x277CB0230]();
  v3 = host_info(v2, 1, &host_info_out, &host_info_outCnt);
  v4 = v6;
  if (v6 <= 1)
  {
    v4 = 1;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

CFIndex ___ZN10IcpUtility16getNumProcessorsEv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"numCoresForProRes", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_3 = v1;
  return result;
}

uint64_t IcpUtility::logLevel(IcpUtility *this)
{
  if (IcpUtility::logLevel(void)::pred != -1)
  {
    IcpUtility::logLevel();
  }

  return IcpUtility::logLevel(void)::s_logLevel;
}

CFIndex ___ZN10IcpUtility8logLevelEv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"IcpLogLevel", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    IcpUtility::logLevel(void)::s_logLevel = result;
  }

  return result;
}

uint64_t Macroblock::getScanTable(int a1, unsigned int a2)
{
  if ((a1 - 1) >= 2)
  {
    if (!a1 && a2 < 4)
    {
      return *(&off_27A7182F0 + a2);
    }
  }

  else if (a2 <= 3)
  {
    return *(&off_27A718310 + a2);
  }

  return 0;
}

uint64_t enabledSignpostCategories()
{
  if (qword_280A716F0 != -1)
  {
    enabledSignpostCategories_cold_1();
  }

  return _MergedGlobals_4;
}

CFIndex __enabledSignpostCategories_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x277CBF028];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"VideoToolboxCodecSignpostLevel", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if ((AppIntegerValue & 0x8000000000000000) == 0)
    {
      v2 = _MergedGlobals_4;
      _MergedGlobals_4 |= 1u;
      if (AppIntegerValue)
      {
        _MergedGlobals_4 = v2 | 3;
      }
    }
  }

  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppIntegerValue(@"ProResCoreCodecSignpostLevel", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = _MergedGlobals_4;
      _MergedGlobals_4 |= 0x100u;
      if (v3)
      {
        _MergedGlobals_4 = v4 | 0x1000100;
      }
    }
  }

  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"ProResRAWCoreCodecSignpostLevel", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && (result & 0x8000000000000000) == 0)
  {
    v6 = _MergedGlobals_4;
    _MergedGlobals_4 |= 0x10000u;
    if (result)
    {
      _MergedGlobals_4 = v6 | 0x1010000;
    }
  }

  return result;
}

uint64_t Picture::getCodedSize(void *a1)
{
  v1 = 1;
  v2 = a1;
  while (1)
  {
    v3 = v2[1];
    v4 = v1 >= v3;
    v5 = v1 - v3;
    if (!v4)
    {
      break;
    }

    v2 = v2[2];
    v1 = v5;
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v2) = *(*v2 + v1) << 24;
LABEL_5:
  v6 = 2;
  v7 = a1;
  while (1)
  {
    v8 = v7[1];
    v4 = v6 >= v8;
    v9 = v6 - v8;
    if (!v4)
    {
      break;
    }

    v7 = v7[2];
    v6 = v9;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  LODWORD(v7) = *(*v7 + v6) << 16;
LABEL_9:
  v10 = 3;
  v11 = a1;
  while (1)
  {
    v12 = v11[1];
    v4 = v10 >= v12;
    v13 = v10 - v12;
    if (!v4)
    {
      break;
    }

    v11 = v11[2];
    v10 = v13;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  LODWORD(v11) = *(*v11 + v10) << 8;
LABEL_13:
  v14 = 4;
  do
  {
    v15 = a1[1];
    v4 = v14 >= v15;
    v16 = v14 - v15;
    if (!v4)
    {
      return v7 | v2 | v11 | *(*a1 + v14);
    }

    a1 = a1[2];
    v14 = v16;
  }

  while (a1);
  return v7 | v2 | v11;
}

void *PictureDecoder::PictureDecoder(void *result, uint64_t a2)
{
  v2 = 0;
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v3 = a2;
  do
  {
    v4 = *(v3 + 8);
    v3 = *(v3 + 16);
    v2 += v4;
  }

  while (v3);
  if (v2)
  {
    v5 = 0;
    v6 = a2;
    while (1)
    {
      v7 = v6[1];
      v8 = v5 >= v7;
      v9 = v5 - v7;
      if (!v8)
      {
        break;
      }

      v6 = v6[2];
      v5 = v9;
      if (!v6)
      {
        return result;
      }
    }

    v10 = *(*v6 + v5);
    if (v10 >= 0x40)
    {
      v11 = 0;
      v12 = v10 >> 3;
      v13 = a2;
      do
      {
        v14 = *(v13 + 8);
        v13 = *(v13 + 16);
        v11 += v14;
      }

      while (v13);
      if (v11 >= v12)
      {
        v15 = 7;
        v16 = a2;
        do
        {
          v17 = v16[1];
          v8 = v15 >= v17;
          v18 = v15 - v17;
          if (!v8)
          {
            v19 = result;
            LODWORD(v16) = (*(*v16 + v15) >> 4) & 3;
            goto LABEL_18;
          }

          v16 = v16[2];
          v15 = v18;
        }

        while (v16);
        v19 = result;
LABEL_18:
        v20 = *(a2 + 64);
        v21 = *(a2 + 68);
        v23 = v20 + 15;
        v22 = v20 < -15;
        v24 = v20 + 30;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = v24 >> 4;
        v26 = v21 + 15;
        v22 = v21 < -15;
        v27 = v21 + 30;
        if (v22)
        {
          v26 = v27;
        }

        v28 = v26 >> 4;
        v29 = 1 << v16;
        v30 = calculateNumberOfSlicesPerMBRow(v25, v16);
        result = v19;
        v19[2] = v12;
        v19[3] = v25;
        v19[4] = v28;
        v19[5] = v29;
        v19[6] = v30;
        v19[7] = v28 * v30;
      }
    }
  }

  return result;
}

int *PictureDecoder::addJobsToQueue(int *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(*result + 8);
  v6 = *(*result + 16);
  if (v5 <= v4)
  {
    while (v6)
    {
      v7 = v6;
      v4 -= v5;
      v5 = v6[1];
      v6 = v6[2];
      if (v4 < v5)
      {
        goto LABEL_5;
      }
    }

    v9 = 0;
    v48 = &SegmentedBuffer::nullSegment;
    v49 = 0;
    v10 = 2 * result[7];
  }

  else
  {
    v7 = *result;
LABEL_5:
    v8 = *v7 + v4;
    v9 = v5 - v4;
    *&v48 = v8;
    *(&v48 + 1) = v9;
    v49 = v6;
    v10 = 2 * result[7];
    if (v9 > v10)
    {
LABEL_12:
      v11 = (v8 + v10);
      v13 = v9 - v10;
      goto LABEL_14;
    }
  }

  v11 = &SegmentedBuffer::nullSegment;
  while (v6)
  {
    v12 = v6;
    v10 -= v9;
    v9 = v6[1];
    v6 = v6[2];
    if (v10 < v9)
    {
      v8 = *v12;
      goto LABEL_12;
    }
  }

  v13 = 0;
LABEL_14:
  v14 = 0;
  *&v46 = v11;
  *(&v46 + 1) = v13;
  v15 = &v46;
  v47 = v6;
  do
  {
    v16 = *(v15 + 1);
    v15 = *(v15 + 2);
    v14 += v16;
  }

  while (v15);
  if (result[4] >= 1)
  {
    v17 = 0;
    v18 = *(v3 + 76);
    v19 = 0x10u >> v18;
    v20 = *(v3 + 60);
    v21 = *(v3 + 68) >> v18;
    v23 = *(v3 + 32);
    v22 = *(v3 + 40);
    v24 = *(v3 + 24);
    while (1)
    {
      *a2 = a3;
      v25 = result[3];
      *(a2 + 8) = result[6];
      *(a2 + 12) = v25;
      *(a2 + 16) = v24;
      *(a2 + 24) = v23;
      *(a2 + 32) = v22;
      if (v21 >= v19)
      {
        v26 = v19;
      }

      else
      {
        v26 = v21;
      }

      if (v26 >= v20)
      {
        v26 = v20;
      }

      if (v25 >= 1)
      {
        break;
      }

LABEL_53:
      if (v22)
      {
        v22 += *(v3 + 56) * v26;
      }

      v24 += *(v3 + 48) * v26;
      v23 += *(v3 + 52) * v26;
      v21 -= v26;
      v20 -= v26;
      a2 += 48;
      if (++v17 >= result[4])
      {
        return result;
      }
    }

    v27 = result[5];
    while (1)
    {
      while (v25 < v27)
      {
        v27 /= 2;
      }

      v28 = 0;
      *(a3 + 28) = v27;
      *(a3 + 32) = v26;
      v29 = &v48;
      do
      {
        v30 = *(v29 + 1);
        v31 = v28 >= v30;
        v32 = v28 - v30;
        if (!v31)
        {
          v33 = *(*v29 + v28) << 8;
          goto LABEL_33;
        }

        v29 = *(v29 + 2);
        v28 = v32;
      }

      while (v29);
      v33 = 0;
LABEL_33:
      v34 = &v48;
      v35 = 1;
      while (1)
      {
        v36 = *(v34 + 1);
        v31 = v35 >= v36;
        v37 = v35 - v36;
        if (!v31)
        {
          break;
        }

        v34 = *(v34 + 2);
        v35 = v37;
        if (!v34)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v34) = *(*v34 + v35);
LABEL_37:
      v38 = v34 | v33;
      if (v38 >= v14)
      {
        LODWORD(v39) = v14;
      }

      else
      {
        LODWORD(v39) = v38;
      }

      v40 = v46;
      *(a3 + 16) = v47;
      *a3 = v40;
      *(a3 + 24) = v39;
      v3 = *result;
      *(a3 + 88) = *result;
      v39 = v39;
      v41 = *(&v46 + 1);
      v42 = v39;
      if (*(&v46 + 1) > v39)
      {
LABEL_43:
        *&v46 = v46 + v42;
        *(&v46 + 1) = v41 - v42;
        v43 = *(&v48 + 1);
        v44 = 2;
        if (*(&v48 + 1) <= 2uLL)
        {
          goto LABEL_44;
        }

LABEL_46:
        *&v48 = v48 + v44;
        *(&v48 + 1) = v43 - v44;
        a3 += 96;
        v14 -= v39;
        v45 = __OFSUB__(v25, v27);
        v25 -= v27;
        if ((v25 < 0) ^ v45 | (v25 == 0))
        {
          goto LABEL_53;
        }
      }

      else
      {
        while (v47)
        {
          v42 -= v41;
          v46 = *v47;
          v47 = v47[2];
          v41 = *(&v46 + 1);
          if (v42 < *(&v46 + 1))
          {
            goto LABEL_43;
          }
        }

        *&v46 = &SegmentedBuffer::nullSegment;
        *(&v46 + 1) = 0;
        v47 = 0;
        v43 = *(&v48 + 1);
        v44 = 2;
        if (*(&v48 + 1) > 2uLL)
        {
          goto LABEL_46;
        }

LABEL_44:
        while (v49)
        {
          v44 -= v43;
          v48 = *v49;
          v49 = v49[2];
          v43 = *(&v48 + 1);
          if (v44 < *(&v48 + 1))
          {
            goto LABEL_46;
          }
        }

        *&v48 = &SegmentedBuffer::nullSegment;
        *(&v48 + 1) = 0;
        v49 = 0;
        a3 += 96;
        v14 -= v39;
        v45 = __OFSUB__(v25, v27);
        v25 -= v27;
        if ((v25 < 0) ^ v45 | (v25 == 0))
        {
          goto LABEL_53;
        }
      }
    }
  }

  return result;
}

uint64_t SliceDecoder::decode()
{
  v137 = MEMORY[0x28223BE20]();
  v1 = 0;
  v145 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 11);
  v3 = *(v2 + 76) + *(v2 + 72);
  v4 = 6 - v3;
  v5 = 1 << (6 - (*(v2 + 76) + *(v2 + 72)));
  v6 = *(v0 + 7);
  v7 = 4 * v6;
  v8 = &v144[(4 * v6) << (6 - (*(v2 + 76) + *(v2 + 72)))];
  v142 = *v0;
  v134 = v0;
  v143 = *(v0 + 2);
  v9 = &v142;
  while (1)
  {
    v10 = *(v9 + 1);
    v56 = v1 >= v10;
    v11 = v1 - v10;
    if (!v56)
    {
      break;
    }

    v9 = *(v9 + 2);
    v1 = v11;
    if (!v9)
    {
      v12 = 0;
      v13 = *(v0 + 6);
      if (v13 <= 0)
      {
        return 0;
      }

      goto LABEL_11;
    }
  }

  v14 = *(*v9 + v1);
  v15 = v14;
  v16 = v14 >> 3;
  if (v15 == 127)
  {
    v12 = 8;
  }

  else
  {
    v12 = v16;
  }

  v13 = *(v0 + 6);
  if (v12 >= v13)
  {
    return 0;
  }

LABEL_11:
  v17 = &v142;
  v18 = 1;
  while (1)
  {
    v19 = *(v17 + 1);
    v56 = v18 >= v19;
    v20 = v18 - v19;
    if (!v56)
    {
      break;
    }

    v17 = *(v17 + 2);
    v18 = v20;
    if (!v17)
    {
      goto LABEL_15;
    }
  }

  LODWORD(v17) = *(*v17 + v18);
LABEL_15:
  if (v17 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17;
  }

  if (v21 >= 0xE0)
  {
    v21 = 224;
  }

  if (v17 >= 0x81)
  {
    v22 = 4 * v21 - 384;
  }

  else
  {
    v22 = v21;
  }

  v23 = **(v2 + 104);
  v24 = &v142;
  v25 = 2;
  while (1)
  {
    v26 = *(v24 + 1);
    v56 = v25 >= v26;
    v27 = v25 - v26;
    if (!v56)
    {
      break;
    }

    v24 = *(v24 + 2);
    v25 = v27;
    if (!v24)
    {
      goto LABEL_27;
    }
  }

  LODWORD(v24) = *(*v24 + v25) << 8;
LABEL_27:
  v28 = &v142;
  v29 = 3;
  while (1)
  {
    v30 = *(v28 + 1);
    v56 = v29 >= v30;
    v31 = v29 - v30;
    if (!v56)
    {
      break;
    }

    v28 = *(v28 + 2);
    v29 = v31;
    if (!v28)
    {
      goto LABEL_31;
    }
  }

  LODWORD(v28) = *(*v28 + v29);
LABEL_31:
  v32 = v28 | v24;
  v33 = &v142;
  v34 = 4;
  while (1)
  {
    v35 = *(v33 + 1);
    v56 = v34 >= v35;
    v36 = v34 - v35;
    if (!v56)
    {
      break;
    }

    v33 = *(v33 + 2);
    v34 = v36;
    if (!v33)
    {
      goto LABEL_35;
    }
  }

  LODWORD(v33) = *(*v33 + v34) << 8;
LABEL_35:
  v37 = &v142;
  v38 = 5;
  while (1)
  {
    v39 = *(v37 + 1);
    v56 = v38 >= v39;
    v40 = v38 - v39;
    if (!v56)
    {
      break;
    }

    v37 = *(v37 + 2);
    v38 = v40;
    if (!v37)
    {
      v41 = v33;
      if (v23)
      {
        goto LABEL_40;
      }

LABEL_46:
      v46 = v12 + v32 + v41;
      v47 = v13 - v46;
      if (v13 - v46 < 0)
      {
        return 0;
      }

      goto LABEL_55;
    }
  }

  v41 = *(*v37 + v38) | v33;
  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_40:
  v42 = &v142;
  v43 = 6;
  while (1)
  {
    v44 = *(v42 + 1);
    v56 = v43 >= v44;
    v45 = v43 - v44;
    if (!v56)
    {
      break;
    }

    v42 = *(v42 + 2);
    v43 = v45;
    if (!v42)
    {
      goto LABEL_48;
    }
  }

  LODWORD(v42) = *(*v42 + v43) << 8;
LABEL_48:
  v48 = &v142;
  v49 = 7;
  do
  {
    v50 = *(v48 + 1);
    v56 = v49 >= v50;
    v51 = v49 - v50;
    if (!v56)
    {
      v47 = *(*v48 + v49) | v42;
      v46 = v12 + v32 + v41;
      if ((v47 & 0x80000000) != 0)
      {
        return 0;
      }

      goto LABEL_55;
    }

    v48 = *(v48 + 2);
    v49 = v51;
  }

  while (v48);
  v47 = v42;
  v46 = v12 + v32 + v41;
  if ((v47 & 0x80000000) != 0)
  {
    return 0;
  }

LABEL_55:
  v52 = v13 - v47 - v46;
  if ((v52 & 0x80000000) != 0 || !v12)
  {
    return 0;
  }

  if (v22 != v137[16].i32[0])
  {
    v53 = v137 + 16;
    v55 = *(v2 + 144);
    v54 = *(v2 + 152);
    v56 = v54 + 64 <= v137 || v54 >= v53;
    v57 = !v56;
    v58 = v55 < v53 && v55 + 64 > v137;
    if (v58 || v57)
    {
      v83 = 0;
      v84 = v137 + 8;
      do
      {
        v84[-8].i16[0] = v22 * *(v55 + v83);
        v84->i16[0] = v22 * *(v54 + v83);
        v84 = (v84 + 2);
        ++v83;
      }

      while (v83 != 64);
    }

    else
    {
      v59 = vdupq_n_s32(v22);
      v60 = vmovl_u8(*v55);
      v61 = vmovl_high_u8(*v55);
      *v137 = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v60.i8)), vmulq_s32(v59, vmovl_high_u16(v60)));
      v137[1] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v61.i8)), vmulq_s32(v59, vmovl_high_u16(v61)));
      v62 = vmovl_u8(*v54);
      v63 = vmovl_high_u8(*v54);
      v137[8] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v62.i8)), vmulq_s32(v59, vmovl_high_u16(v62)));
      v137[9] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v63.i8)), vmulq_s32(v59, vmovl_high_u16(v63)));
      v64 = *(v55 + 16);
      v65 = vmovl_u8(*v64.i8);
      v66 = vmovl_high_u8(v64);
      v137[2] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v65.i8)), vmulq_s32(v59, vmovl_high_u16(v65)));
      v137[3] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v66.i8)), vmulq_s32(v59, vmovl_high_u16(v66)));
      v67 = *(v54 + 16);
      v68 = vmovl_u8(*v67.i8);
      v69 = vmovl_high_u8(v67);
      v137[10] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v68.i8)), vmulq_s32(v59, vmovl_high_u16(v68)));
      v137[11] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v69.i8)), vmulq_s32(v59, vmovl_high_u16(v69)));
      v70 = *(v55 + 32);
      v71 = vmovl_u8(*v70.i8);
      v72 = vmovl_high_u8(v70);
      v137[4] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v71.i8)), vmulq_s32(v59, vmovl_high_u16(v71)));
      v137[5] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v72.i8)), vmulq_s32(v59, vmovl_high_u16(v72)));
      v73 = *(v54 + 32);
      v74 = vmovl_u8(*v73.i8);
      v75 = vmovl_high_u8(v73);
      v137[12] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v74.i8)), vmulq_s32(v59, vmovl_high_u16(v74)));
      v137[13] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v75.i8)), vmulq_s32(v59, vmovl_high_u16(v75)));
      v76 = *(v55 + 48);
      v77 = vmovl_u8(*v76.i8);
      v78 = vmovl_high_u8(v76);
      v137[6] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v77.i8)), vmulq_s32(v59, vmovl_high_u16(v77)));
      v137[7] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v78.i8)), vmulq_s32(v59, vmovl_high_u16(v78)));
      v79 = *(v54 + 48);
      v80 = vmovl_u8(*v79.i8);
      v81 = vmovl_high_u8(v79);
      v137[14] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v80.i8)), vmulq_s32(v59, vmovl_high_u16(v80)));
      v137[15] = vuzp1q_s16(vmulq_s32(v59, vmovl_u16(*v81.i8)), vmulq_s32(v59, vmovl_high_u16(v81)));
    }

    v53->i32[0] = v22;
  }

  __n = v52;
  v128 = (*(v2 + 84) - 4) * v6 + (((*(v2 + 84) - 4) * v6) >> 31);
  bzero(v144, 2 * (((v128 & 0xFFFFFFFE) + v7) << v4));
  v138 = *v134;
  v140 = *(v134 + 2);
  v85 = v12;
  v86 = *(v134 + 1);
  v130 = v5;
  v135 = v47;
  if (v86 > v12)
  {
LABEL_77:
    v87 = (v138 + v85);
    v88 = v86 - v85;
    *&v138 = v138 + v85;
    if (v86 - v85 < v32)
    {
      goto LABEL_80;
    }
  }

  else
  {
    while (v140)
    {
      v85 -= v86;
      v138 = *v140;
      v140 = *(v140 + 2);
      v86 = *(&v138 + 1);
      if (v85 < *(&v138 + 1))
      {
        goto LABEL_77;
      }
    }

    v88 = 0;
    v87 = &SegmentedBuffer::nullSegment;
    *&v138 = &SegmentedBuffer::nullSegment;
    v140 = 0;
    if (v32)
    {
LABEL_80:
      operator new[]();
    }
  }

  BitstreamReader::initialize(v141, v87, v32);
  VLD_RLD(v141, v144, __clz(v7) ^ 0x1F, *(v2 + 96), v4, *(v2 + 88), v89, v90, v91, v92, v93, v94);
  if (v87 && v87 != v138)
  {
    MEMORY[0x277CB0020](v87, 0x1000C8077774924);
  }

  if (v88 > v32)
  {
LABEL_87:
    v95 = (v138 + v32);
    v96 = v88 - v32;
    *&v138 = v95;
    if (v96 < v41)
    {
      goto LABEL_90;
    }
  }

  else
  {
    while (v140)
    {
      v32 -= v88;
      v138 = *v140;
      v140 = *(v140 + 2);
      v88 = *(&v138 + 1);
      if (v32 < *(&v138 + 1))
      {
        goto LABEL_87;
      }
    }

    v96 = 0;
    v95 = &SegmentedBuffer::nullSegment;
    *&v138 = &SegmentedBuffer::nullSegment;
    v140 = 0;
    if (v41)
    {
LABEL_90:
      operator new[]();
    }
  }

  BitstreamReader::initialize(v141, v95, v41);
  v97 = __clz(v128 >> 1);
  v98 = 7 - v3;
  VLD_RLD(v141, v8, v97 ^ 0x1F, *(v2 + 96), 7 - v3, *(v2 + 88), v99, v100, v101, v102, v103, v104);
  if (v95 && v95 != v138)
  {
    MEMORY[0x277CB0020](v95, 0x1000C8077774924);
  }

  if (v96 > v41)
  {
LABEL_97:
    v105 = (v138 + v41);
    v106 = v96 - v41;
    *&v138 = v138 + v41;
    v107 = v135;
    if (v106 < v135)
    {
      goto LABEL_100;
    }
  }

  else
  {
    while (v140)
    {
      v41 -= v96;
      v138 = *v140;
      v140 = *(v140 + 2);
      v96 = *(&v138 + 1);
      if (v41 < *(&v138 + 1))
      {
        goto LABEL_97;
      }
    }

    v106 = 0;
    v105 = &SegmentedBuffer::nullSegment;
    *&v138 = &SegmentedBuffer::nullSegment;
    v140 = 0;
    v107 = v135;
    if (v135)
    {
LABEL_100:
      operator new[]();
    }
  }

  BitstreamReader::initialize(v141, v105, v135);
  VLD_RLD(v141, &v8[v5], v97 ^ 0x1F, *(v2 + 96), v98, *(v2 + 88), v108, v109, v110, v111, v112, v113);
  if (v105 && v105 != v138)
  {
    MEMORY[0x277CB0020](v105, 0x1000C8077774924);
  }

  *v136 = *(v134 + 9);
  if (*v136)
  {
    if (v106 <= v107)
    {
      v114 = __n;
      while (v140)
      {
        v107 -= v106;
        v138 = *v140;
        v140 = *(v140 + 2);
        v106 = *(&v138 + 1);
        if (v107 < *(&v138 + 1))
        {
          goto LABEL_112;
        }
      }

      v115 = &SegmentedBuffer::nullSegment;
      v139 = &SegmentedBuffer::nullSegment;
      if (!__n)
      {
LABEL_116:
        BitstreamReader::initialize(v141, v115, v114);
        v116 = *(v2 + 104);
        v117 = *(v116 + 4);
        v129 = (*(v116 + 8))(v141, *v136, *(v134 + 20), (16 * *(v134 + 7)), (*(v134 + 8) << *(v2 + 76)));
        __na = 16 * v117;
        if (v115 && v115 != v139)
        {
          MEMORY[0x277CB0020](v115, 0x1000C8077774924);
        }

        v5 = v130;
        if (*(v134 + 7) < 1)
        {
          return v129;
        }

        goto LABEL_120;
      }
    }

    else
    {
      v114 = __n;
LABEL_112:
      v115 = (v138 + v107);
      v139 = (v138 + v107);
      if (v106 - v107 >= v114)
      {
        goto LABEL_116;
      }
    }

    operator new[]();
  }

  v129 = **(v2 + 104) == 0;
  __na = 0;
  if (*(v134 + 7) >= 1)
  {
LABEL_120:
    v118 = 0;
    v131 = *(*(v2 + 128) + 20);
    v119 = *(v134 + 6);
    v120 = 2 * v5;
    v121 = &v142;
    v122 = v144;
    do
    {
      (*(v2 + 112))(v122, v121, *(v2 + 120), v137);
      v123 = &v122[v120 / 2];
      (*(v2 + 112))(v123, &v121[v120], *(v2 + 120), v137);
      v124 = &v123[v120 / 2];
      (*(v2 + 112))(v124, &v121[v120 + v120], *(v2 + 120), v137);
      v125 = &v124[v120 / 2];
      (*(v2 + 112))(v125, &v121[v120 + v120 + v120], *(v2 + 120), v137);
      v126 = &v121[v120 + v120 + v120 + v120];
      if (*(v2 + 84) >= 5)
      {
        v127 = 4;
        do
        {
          (*(v2 + 112))(v8, v126, *(v2 + 120), v137 + 8);
          ++v127;
          v8 = (v8 + v120);
          v126 += v120;
        }

        while (v127 < *(v2 + 84));
      }

      (*(v134 + 5))(v119, v121, *(v134 + 16), *(v134 + 8), *v136, *(v134 + 20), *(v2 + 136));
      v122 = &v125[v120 / 2];
      v119 += v131;
      *v136 += __na;
      ++v118;
      v121 = v126;
    }

    while (v118 < *(v134 + 7));
  }

  return v129;
}

uint64_t VLD_RLD(uint64_t result, __int16 *a2, int a3, int a4, char a5, const signed __int8 *a6, double a7, double a8, double a9, double a10, double a11, uint32x4_t a12)
{
  v13 = HIDWORD(*result);
  if (!v13)
  {
    return result;
  }

  v14 = *(result + 16);
  v15 = RiceExpComboCodeCatalog[EntropyCode::firstDcCodeBook];
  v16 = v15 & 3;
  v17 = v15 >> 5;
  v18 = __clz(v13);
  if (v18 <= v16)
  {
    v21 = v18 + 1;
    if (v15 >= 0x20)
    {
      v22 = v13 << v21;
      v21 += v17;
      v18 = (v22 >> -v17) + (v18 << v17);
    }
  }

  else
  {
    v19 = (v15 >> 2) & 7;
    v20 = v19 + 2 * (v18 - (v16 + 1)) + 1;
    v18 = ((v16 + 1) << v17) + (-1 << v19) + (v13 >> ((v16 ^ 0x1F) - (v19 + 2 * (v18 - (v16 + 1)) + 1)));
    v21 = v20 + v16 + 1;
  }

  v23 = *(result + 24);
  v24 = -(v18 & 1) ^ (v18 >> 1);
  v25 = *result << v21;
  v26 = *(result + 8) - v21;
  if (v26 < 0)
  {
    v28 = v21 - *(result + 8);
    if (v14 < v23)
    {
      v29 = *v14++;
      v30 = bswap32(v29);
      goto LABEL_29;
    }

    v31 = *(result + 32);
    if (v14 >= v31)
    {
      v30 = 0;
      goto LABEL_29;
    }

    v32 = v31 - v14;
    if ((v31 - v14) < 4)
    {
      v30 = 0;
      v33 = 32;
      v34 = *(result + 16);
      goto LABEL_26;
    }

    if (v32 >= 0x20)
    {
      v35 = v32 & 0xFFFFFFFFFFFFFFE0;
      v33 = 32 - 8 * (v32 & 0xFFFFFFE0);
      v36 = xmmword_277875230;
      v37 = xmmword_277875240;
      v38 = xmmword_277875250;
      v39 = xmmword_277875260;
      v40 = (v14 + 4);
      v41 = 0uLL;
      a12.i64[0] = 0x700000007;
      a12.i64[1] = 0x700000007;
      v42.i64[0] = 0x8700000087;
      v42.i64[1] = 0x8700000087;
      v43.i64[0] = 0xFFFFFF00FFFFFF00;
      v43.i64[1] = 0xFFFFFF00FFFFFF00;
      v44 = 0uLL;
      v45 = v32 & 0xFFFFFFFFFFFFFFE0;
      v46 = 0uLL;
      v12 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v51 = v40[-1];
        v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v51, xmmword_277875270), vaddq_s32(v38, a12)), v44);
        v41 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v51, xmmword_277875280), vaddq_s32(v39, a12)), v41);
        v46 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v51, xmmword_277875290), vaddq_s32(v37, a12)), v46);
        v12 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v51, xmmword_2778752A0), vaddq_s32(v36, a12)), v12);
        v48 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875270), vaddq_s32(v38, v42)), v48);
        v47 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875280), vaddq_s32(v39, v42)), v47);
        v49 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875290), vaddq_s32(v37, v42)), v49);
        v50 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_2778752A0), vaddq_s32(v36, v42)), v50);
        v39 = vaddq_s32(v39, v43);
        v38 = vaddq_s32(v38, v43);
        v37 = vaddq_s32(v37, v43);
        v40 += 2;
        v36 = vaddq_s32(v36, v43);
        v45 -= 32;
      }

      while (v45);
      v52 = vorrq_s8(vorrq_s8(vorrq_s8(v47, v41), vorrq_s8(v49, v46)), vorrq_s8(vorrq_s8(v48, v44), vorrq_s8(v50, v12)));
      *v52.i8 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
      v30 = v52.i32[0] | v52.i32[1];
      if (v32 == v35)
      {
        goto LABEL_28;
      }

      if ((v32 & 0x1C) == 0)
      {
        v34 = v14 + v35;
LABEL_26:
        v62 = v33 - 8;
        do
        {
          v63 = *v34++;
          v30 |= v63 << v62;
          v62 -= 8;
        }

        while (v34 != v31);
LABEL_28:
        v14 = *(result + 32);
LABEL_29:
        v25 |= v30 << v28;
        v26 += 32;
        *a2 = v24;
        v27 = 1;
        if (!a3)
        {
          goto LABEL_67;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v30 = 0;
      v35 = 0;
      v33 = 32;
    }

    v53 = vdupq_n_s32(v33);
    v33 = 32 - 8 * (v32 & 0xFFFFFFFC);
    v34 = v14 + (v32 & 0xFFFFFFFFFFFFFFFCLL);
    v54 = vaddq_s32(v53, xmmword_277875250);
    v55 = v30;
    v56 = (v14 + v35);
    v57 = v35 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
    v58.i64[0] = 0x700000007;
    v58.i64[1] = 0x700000007;
    v59.i64[0] = 0x1F0000001FLL;
    v59.i64[1] = 0x1F0000001FLL;
    do
    {
      v60 = *v56++;
      a12.i32[0] = v60;
      a12 = vmovl_u16(*&vmovl_u8(*a12.i8));
      v55 = vorrq_s8(vshlq_u32(a12, vaddq_s32(v54, v58)), v55);
      v54 = vaddq_s32(v54, v59);
      v57 += 4;
    }

    while (v57);
    v61 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
    v30 = v61.i32[0] | v61.i32[1];
    if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  *a2 = v24;
  v27 = 1;
  if (a3)
  {
LABEL_30:
    v64 = xmmword_277875250;
    v65.i64[0] = 0x700000007;
    v65.i64[1] = 0x700000007;
    v66.i64[0] = 0x1F0000001FLL;
    v66.i64[1] = 0x1F0000001FLL;
    v67 = xmmword_277875230;
    v68 = xmmword_277875240;
    v69 = xmmword_277875260;
    v70.i64[0] = 0x8700000087;
    v70.i64[1] = 0x8700000087;
    v71.i64[0] = 0xFFFFFF00FFFFFF00;
    v71.i64[1] = 0xFFFFFF00FFFFFF00;
    v72 = a2;
    v27 = 1;
    v73 = 3;
    while (1)
    {
      if (!HIDWORD(v25))
      {
        return result;
      }

      v76 = v73;
      if ((v73 & 0x8000u) != 0)
      {
        v76 = -v73;
      }

      if (v76 >= 3)
      {
        v76 = 3;
      }

      v77 = RiceExpComboCodeCatalog[EntropyCode::levelDifferenceCodeBook[v76]];
      v78 = v77 & 3;
      v79 = v77 >> 5;
      v80 = __clz(HIDWORD(v25));
      if (v80 <= v78)
      {
        v83 = v80 + 1;
        if (v77 >= 0x20)
        {
          v84 = HIDWORD(v25) << v83;
          v83 += v79;
          v80 = (v84 >> -v79) + (v80 << v79);
        }
      }

      else
      {
        v81 = (v77 >> 2) & 7;
        v82 = v81 + 2 * (v80 - (v78 + 1)) + 1;
        v80 = ((v78 + 1) << v79) + (-1 << v81) + (HIDWORD(v25) >> ((v78 ^ 0x1F) - (v81 + 2 * (v80 - (v78 + 1)) + 1)));
        v83 = v82 + v78 + 1;
      }

      v85 = (v73 >> 15) & 1;
      v86 = v85 ? -v80 : v80;
      v25 <<= v83;
      v26 -= v83;
      if (v26 < 0)
      {
        break;
      }

LABEL_33:
      v72 += (1 << a5);
      v73 = (-(v80 & 1) ^ (v86 >> 1)) + (v80 & v85);
      v24 += v73;
      *v72 = v24;
      if (++v27 >> a3)
      {
        goto LABEL_67;
      }
    }

    if (v14 < v23)
    {
      v74 = *v14++;
      v75 = bswap32(v74);
    }

    else
    {
      v87 = *(result + 32);
      if (v14 >= v87)
      {
        v75 = 0;
      }

      else
      {
        v88 = v87 - v14;
        if ((v87 - v14) < 4)
        {
          v75 = 0;
          v89 = 32;
          v90 = v14;
          goto LABEL_64;
        }

        if (v88 < 0x20)
        {
          v75 = 0;
          v91 = 0;
          v89 = 32;
          goto LABEL_59;
        }

        v91 = v88 & 0xFFFFFFFFFFFFFFE0;
        v92 = (v14 + 4);
        v93 = 0uLL;
        v94 = 0uLL;
        v95 = v88 & 0xFFFFFFFFFFFFFFE0;
        v226 = v69;
        v96 = v64;
        v97 = v68;
        v98 = v67;
        v99 = 0uLL;
        v100 = 0uLL;
        v101 = 0uLL;
        v89 = 32 - 8 * (v88 & 0xFFFFFFE0);
        v102 = 0uLL;
        v103 = 0uLL;
        v104 = 0uLL;
        do
        {
          v105 = v92[-1];
          v94 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v105, xmmword_277875270), vaddq_s32(v64, v65)), v94);
          v93 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v105, xmmword_277875280), vaddq_s32(v69, v65)), v93);
          v99 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v105, xmmword_277875290), vaddq_s32(v68, v65)), v99);
          v100 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v105, xmmword_2778752A0), vaddq_s32(v67, v65)), v100);
          v102 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v92, xmmword_277875270), vaddq_s32(v64, v70)), v102);
          v101 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v92, xmmword_277875280), vaddq_s32(v69, v70)), v101);
          v103 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v92, xmmword_277875290), vaddq_s32(v68, v70)), v103);
          v104 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v92, xmmword_2778752A0), vaddq_s32(v67, v70)), v104);
          v69 = vaddq_s32(v69, v71);
          v64 = vaddq_s32(v64, v71);
          v68 = vaddq_s32(v68, v71);
          v92 += 2;
          v67 = vaddq_s32(v67, v71);
          v95 -= 32;
        }

        while (v95);
        v12 = vorrq_s8(v103, v99);
        v106 = vorrq_s8(vorrq_s8(vorrq_s8(v101, v93), v12), vorrq_s8(vorrq_s8(v102, v94), vorrq_s8(v104, v100)));
        v107 = vorr_s8(*v106.i8, *&vextq_s8(v106, v106, 8uLL));
        v75 = v107.i32[0] | v107.i32[1];
        if (v88 != v91)
        {
          v67 = v98;
          v68 = v97;
          v69 = v226;
          v64 = v96;
          if ((v88 & 0x1C) == 0)
          {
            v90 = (v14 + v91);
LABEL_64:
            v115 = v89 - 8;
            do
            {
              v116 = *v90;
              v90 = (v90 + 1);
              v75 |= v116 << v115;
              v115 -= 8;
            }

            while (v90 != v87);
LABEL_66:
            v14 = *(result + 32);
            goto LABEL_32;
          }

LABEL_59:
          v108 = vdupq_n_s32(v89);
          v89 = 32 - 8 * (v88 & 0xFFFFFFFC);
          v90 = (v14 + (v88 & 0xFFFFFFFFFFFFFFFCLL));
          v109 = vaddq_s32(v108, v64);
          v110 = v75;
          v111 = (v14 + v91);
          v112 = v91 - (v88 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v113 = *v111++;
            v12.i32[0] = v113;
            v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
            v110 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v109, v65)), v110);
            v109 = vaddq_s32(v109, v66);
            v112 += 4;
          }

          while (v112);
          v114 = vorr_s8(*v110.i8, *&vextq_s8(v110, v110, 8uLL));
          v75 = v114.i32[0] | v114.i32[1];
          if (v88 == (v88 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v14 = *(result + 32);
        v67 = v98;
        v68 = v97;
        v69 = v226;
        v64 = v96;
      }
    }

LABEL_32:
    v25 |= v75 << -v26;
    v26 += 32;
    goto LABEL_33;
  }

LABEL_67:
  if (HIDWORD(v25))
  {
    v117 = a4 << a3;
    v118 = 2u;
    v119 = 4u;
    v120 = xmmword_277875250;
    v121.i64[0] = 0x700000007;
    v121.i64[1] = 0x700000007;
    v122.i64[0] = 0x1F0000001FLL;
    v122.i64[1] = 0x1F0000001FLL;
    v123 = xmmword_277875230;
    v124 = xmmword_277875240;
    v125 = xmmword_277875260;
    v126.i64[0] = 0x8700000087;
    v126.i64[1] = 0x8700000087;
    v127.i64[0] = 0xFFFFFF00FFFFFF00;
    v127.i64[1] = 0xFFFFFF00FFFFFF00;
    do
    {
      v128 = EntropyCode::levelCodeBook[v118];
      v129 = (&RiceExpComboCodeVLDPairTables + 40960 * EntropyCode::runCodeBook[v119] + 4096 * v128 + 4 * (v25 >> 54));
      v130 = *v129;
      if (*v129)
      {
        v119 = *(v129 + 2);
        v118 = *(v129 + 3) + 1;
        v131 = (v118 ^ ((HIDWORD(v25) << v130) >> 31)) - ((HIDWORD(v25) << v130) >> 31);
        v132 = v130 + 1;
        v25 <<= v132;
        v26 -= v132;
        if (v26 < 0)
        {
          goto LABEL_112;
        }

        goto LABEL_71;
      }

      v134 = RiceExpComboCodeCatalog[EntropyCode::runCodeBook[v119]];
      v135 = v134 & 3;
      v136 = v134 >> 5;
      v119 = __clz(HIDWORD(v25));
      if (v119 <= v135)
      {
        v141 = v119 + 1;
        if (v134 >= 0x20)
        {
          v143 = HIDWORD(v25) << v141;
          v144 = v136 + v141;
          v119 = (v143 >> -v136) + (v119 << v136);
          v139 = v25 << v144;
          v140 = v26 - v144;
          if (v140 >= 0)
          {
LABEL_78:
            v142 = HIDWORD(v139);
            if (!HIDWORD(v139))
            {
              return result;
            }

            goto LABEL_104;
          }
        }

        else
        {
          v139 = v25 << v141;
          v140 = v26 - v141;
          if (v140 >= 0)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v137 = (v134 >> 2) & 7;
        v138 = v137 + 2 * (v119 - (v135 + 1)) + 1;
        v119 = ((v135 + 1) << v136) + (-1 << v137) + (HIDWORD(v25) >> ((v135 ^ 0x1F) - (v137 + 2 * (v119 - (v135 + 1)) + 1)));
        v139 = v25 << (v138 + v135 + 1);
        v140 = v26 - (v138 + v135 + 1);
        if (v140 >= 0)
        {
          goto LABEL_78;
        }
      }

      if (v14 < v23)
      {
        v145 = *v14++;
        v146 = bswap32(v145);
        goto LABEL_103;
      }

      v147 = *(result + 32);
      if (v14 >= v147)
      {
        v146 = 0;
        goto LABEL_103;
      }

      v148 = v147 - v14;
      if ((v147 - v14) >= 4)
      {
        if (v148 < 0x20)
        {
          v146 = 0;
          v151 = 0;
          v149 = 32;
LABEL_95:
          v168 = vdupq_n_s32(v149);
          v149 = 32 - 8 * (v148 & 0xFFFFFFFC);
          v150 = (v14 + (v148 & 0xFFFFFFFFFFFFFFFCLL));
          v169 = vaddq_s32(v168, v120);
          v170 = v146;
          v171 = (v14 + v151);
          v172 = v151 - (v148 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v173 = *v171++;
            v12.i32[0] = v173;
            v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
            v170 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v169, v121)), v170);
            v169 = vaddq_s32(v169, v122);
            v172 += 4;
          }

          while (v172);
          v174 = vorr_s8(*v170.i8, *&vextq_s8(v170, v170, 8uLL));
          v146 = v174.i32[0] | v174.i32[1];
          if (v148 == (v148 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_102;
          }

          goto LABEL_100;
        }

        v151 = v148 & 0xFFFFFFFFFFFFFFE0;
        v152 = (v14 + 4);
        v153 = 0uLL;
        v154 = 0uLL;
        v155 = v148 & 0xFFFFFFFFFFFFFFE0;
        v227 = v125;
        v156 = v120;
        v157 = v124;
        v158 = v123;
        v159 = 0uLL;
        v160 = 0uLL;
        v161 = 0uLL;
        v149 = 32 - 8 * (v148 & 0xFFFFFFE0);
        v162 = 0uLL;
        v163 = 0uLL;
        v164 = 0uLL;
        do
        {
          v165 = v152[-1];
          v154 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v165, xmmword_277875270), vaddq_s32(v120, v121)), v154);
          v153 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v165, xmmword_277875280), vaddq_s32(v125, v121)), v153);
          v159 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v165, xmmword_277875290), vaddq_s32(v124, v121)), v159);
          v160 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v165, xmmword_2778752A0), vaddq_s32(v123, v121)), v160);
          v162 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v152, xmmword_277875270), vaddq_s32(v120, v126)), v162);
          v161 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v152, xmmword_277875280), vaddq_s32(v125, v126)), v161);
          v163 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v152, xmmword_277875290), vaddq_s32(v124, v126)), v163);
          v164 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v152, xmmword_2778752A0), vaddq_s32(v123, v126)), v164);
          v125 = vaddq_s32(v125, v127);
          v120 = vaddq_s32(v120, v127);
          v124 = vaddq_s32(v124, v127);
          v152 += 2;
          v123 = vaddq_s32(v123, v127);
          v155 -= 32;
        }

        while (v155);
        v12 = vorrq_s8(v163, v159);
        v166 = vorrq_s8(vorrq_s8(vorrq_s8(v161, v153), v12), vorrq_s8(vorrq_s8(v162, v154), vorrq_s8(v164, v160)));
        v167 = vorr_s8(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
        v146 = v167.i32[0] | v167.i32[1];
        if (v148 == v151)
        {
          v14 = *(result + 32);
          v123 = v158;
          v124 = v157;
          v125 = v227;
          v120 = v156;
          goto LABEL_103;
        }

        if ((v148 & 0x1C) != 0)
        {
          v123 = v158;
          v124 = v157;
          v125 = v227;
          v120 = v156;
          goto LABEL_95;
        }

        v150 = (v14 + v151);
        v123 = v158;
        v124 = v157;
        v125 = v227;
        v120 = v156;
      }

      else
      {
        v146 = 0;
        v149 = 32;
        v150 = v14;
      }

LABEL_100:
      v175 = v149 - 8;
      do
      {
        v176 = *v150;
        v150 = (v150 + 1);
        v146 |= v176 << v175;
        v175 -= 8;
      }

      while (v150 != v147);
LABEL_102:
      v14 = *(result + 32);
LABEL_103:
      v139 |= v146 << -v140;
      v140 += 32;
      v142 = HIDWORD(v139);
      if (!HIDWORD(v139))
      {
        return result;
      }

LABEL_104:
      v177 = RiceExpComboCodeCatalog[v128];
      v178 = v177 & 3;
      v179 = v177 >> 5;
      v180 = __clz(v142);
      v181 = (v177 >> 2) & 7;
      v182 = v181 + 2 * (v180 - (v178 + 1)) + 1;
      v183 = ((v178 + 1) << (v177 >> 5)) + (-1 << v181) + (v142 >> ((v177 & 3 ^ 0x1F) - v182));
      v184 = v177 >= 0x20;
      v185 = (v177 >> 5) + v180 + 1;
      v186 = (v142 << (v180 + 1) >> -v179) + (v180 << v179);
      if (!v184)
      {
        v185 = v180 + 1;
        v186 = v180;
      }

      if (v180 <= v178)
      {
        v187 = v186;
      }

      else
      {
        v185 = v182 + v178 + 1;
        v187 = v183;
      }

      if (v119 > 0x7DF)
      {
        return result;
      }

      v118 = v187 + 1;
      if ((v187 + 1) >= 0x4000)
      {
        return result;
      }

      v131 = (((v142 << v185) >> 31) ^ v118) - ((v142 << v185) >> 31);
      v188 = v185 + 1;
      v25 = v139 << v188;
      v26 = v140 - v188;
      if (v26 < 0)
      {
LABEL_112:
        if (v14 < v23)
        {
          v189 = *v14++;
          v190 = bswap32(v189);
          goto LABEL_134;
        }

        v191 = *(result + 32);
        if (v14 >= v191)
        {
          v190 = 0;
        }

        else
        {
          v192 = v191 - v14;
          if (v191 - v14 < 4)
          {
            v190 = 0;
            v193 = 32;
            v194 = v14;
            goto LABEL_131;
          }

          if (v192 < 0x20)
          {
            v190 = 0;
            v195 = 0;
            v193 = 32;
            goto LABEL_126;
          }

          v228 = v120;
          v196 = v125;
          v197 = v124;
          v198 = v123;
          v195 = v192 & 0xFFFFFFFFFFFFFFE0;
          v193 = 32 - 8 * (v192 & 0xFFFFFFE0);
          v199 = xmmword_277875230;
          v200 = xmmword_277875240;
          v201 = xmmword_277875250;
          v202 = 0uLL;
          v203 = 0uLL;
          v204 = xmmword_277875260;
          v205 = (v14 + 4);
          v206 = v192 & 0xFFFFFFFFFFFFFFE0;
          v207 = 0uLL;
          v208 = 0uLL;
          v209 = 0uLL;
          v210 = 0uLL;
          v211 = 0uLL;
          v212 = 0uLL;
          do
          {
            v213 = v205[-1];
            v203 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v213, xmmword_277875270), vaddq_s32(v201, v121)), v203);
            v202 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v213, xmmword_277875280), vaddq_s32(v204, v121)), v202);
            v207 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v213, xmmword_277875290), vaddq_s32(v200, v121)), v207);
            v208 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v213, xmmword_2778752A0), vaddq_s32(v199, v121)), v208);
            v210 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v205, xmmword_277875270), vaddq_s32(v201, v126)), v210);
            v209 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v205, xmmword_277875280), vaddq_s32(v204, v126)), v209);
            v211 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v205, xmmword_277875290), vaddq_s32(v200, v126)), v211);
            v212 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v205, xmmword_2778752A0), vaddq_s32(v199, v126)), v212);
            v204 = vaddq_s32(v204, v127);
            v201 = vaddq_s32(v201, v127);
            v200 = vaddq_s32(v200, v127);
            v205 += 2;
            v199 = vaddq_s32(v199, v127);
            v206 -= 32;
          }

          while (v206);
          v214 = vorrq_s8(v209, v202);
          v12 = vorrq_s8(v211, v207);
          v215 = vorrq_s8(vorrq_s8(v214, v12), vorrq_s8(vorrq_s8(v210, v203), vorrq_s8(v212, v208)));
          v216 = vorr_s8(*v215.i8, *&vextq_s8(v215, v215, 8uLL));
          v190 = v216.i32[0] | v216.i32[1];
          if (v192 == v195)
          {
            v14 = *(result + 32);
            v123 = v198;
            v124 = v197;
            v125 = v196;
            v120 = v228;
          }

          else
          {
            v123 = v198;
            if ((v192 & 0x1C) == 0)
            {
              v194 = (v14 + v195);
              v124 = v197;
              v125 = v196;
              v120 = v228;
              goto LABEL_131;
            }

            v124 = v197;
            v125 = v196;
            v120 = v228;
LABEL_126:
            v217 = vdupq_n_s32(v193);
            v193 = 32 - 8 * (v192 & 0xFFFFFFFC);
            v194 = (v14 + (v192 & 0xFFFFFFFFFFFFFFFCLL));
            v218 = vaddq_s32(v217, v120);
            v219 = v190;
            v220 = (v14 + v195);
            v221 = v195 - (v192 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v222 = *v220++;
              v12.i32[0] = v222;
              v12 = vmovl_u16(*&vmovl_u8(*v12.i8));
              v219 = vorrq_s8(vshlq_u32(v12, vaddq_s32(v218, v121)), v219);
              v218 = vaddq_s32(v218, v122);
              v221 += 4;
            }

            while (v221);
            v223 = vorr_s8(*v219.i8, *&vextq_s8(v219, v219, 8uLL));
            v190 = v223.i32[0] | v223.i32[1];
            if (v192 != (v192 & 0xFFFFFFFFFFFFFFFCLL))
            {
LABEL_131:
              v224 = v193 - 8;
              do
              {
                v225 = *v194;
                v194 = (v194 + 1);
                v190 |= v225 << v224;
                v224 -= 8;
              }

              while (v194 != *(result + 32));
            }

            v14 = *(result + 32);
          }
        }

LABEL_134:
        v25 |= v190 << -v26;
        v26 += 32;
        v133 = v119 + v27;
        if (v133 >= v117)
        {
          return result;
        }

        goto LABEL_135;
      }

LABEL_71:
      v133 = v119 + v27;
      if (v133 >= v117)
      {
        return result;
      }

LABEL_135:
      a2[((v133 & ~(-1 << a3)) << a5) + a6[v133 >> a3]] = v131;
      v27 = v133 + 1;
    }

    while (HIDWORD(v25));
  }

  return result;
}

uint64_t convertY416ToX444(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6, int a7, int a8, BOOL a9, unsigned __int16 a10)
{
  if (a8 >= 1)
  {
    if (a7 >= 1)
    {
      v10 = a7 - 1;
    }

    else
    {
      v10 = a7 + 14;
    }

    if (a7 < 1)
    {
      if ((a7 & 0xF) == 0 && a9)
      {
        v26 = a8;
        v27 = a5 + 62;
        do
        {
          *(v27 - 2) = *(v27 - 6);
          v27 += a6;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      v11 = 0;
      v12 = a2;
      v13 = a4;
      v14 = a6;
      v15 = a8;
      do
      {
        v16 = 0;
        v17 = (result + v11 * v12);
        v18 = &a3[v11 * v13];
        v19 = &a5[v11 * v14];
        do
        {
          v20 = *v17;
          v21 = v17[1];
          v22 = v17[2];
          v23 = v17[3];
          *v18++ = vuzp2q_s16(vuzp1q_s32(*v17, v21), vuzp1q_s32(v22, v23));
          *v19 = vuzp2q_s32(v20, v21);
          v19[1] = vuzp2q_s32(v22, v23);
          v19 += 2;
          v17 += 4;
          v16 += 8;
        }

        while (v16 < a7);
        if (a9)
        {
          v24 = &a5[v11 * v14 + 56];
          v25 = (v10 >> 4) + 1;
          if (a7 >= 17)
          {
            do
            {
              *(v24 + 2) = a10 & ((*v24 + *(v24 + 4) + 1) >> 1);
              *(v24 + 3) = a10 & ((*(v24 + 1) + *(v24 + 5) + 1) >> 1);
              v24 += 64;
              --v25;
            }

            while (v25 > 1);
          }

          if ((a7 & 0xF) == 0)
          {
            *(v24 + 1) = *v24;
          }
        }

        ++v11;
      }

      while (v11 != v15);
    }
  }

  return result;
}

uint64_t convertV216ToX422(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6, int a7, int a8)
{
  if (a8 >= 1 && a7 >= 1)
  {
    for (i = 0; i != a8; ++i)
    {
      v9 = 0;
      v10 = (result + i * a2);
      v11 = &a3[i * a4];
      v12 = &a5[i * a6];
      do
      {
        v13 = *v10;
        v14 = v10[1];
        v10 += 2;
        *v12++ = vuzp1q_s16(v13, v14);
        *v11++ = vuzp2q_s16(v13, v14);
        v9 += 8;
      }

      while (v9 < a7);
    }
  }

  return result;
}

unint64_t *convertV216ToV210(unint64_t *result, int a2, __n128 *a3, int a4, int a5, int a6, double a7, double a8, int8x16_t a9, int8x16_t a10, int32x4_t a11, int16x8_t a12)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = xmmword_2778DE090;
  v25 = 0x10008000100080;
  if (a4 >= 16 * ((a5 + 5) / 6) && a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      v14 = a5;
      v15 = a3;
      for (j = result; ; j += 3)
      {
        v22 = v14;
        if (v14 >= 6)
        {
          goto LABEL_9;
        }

        if (v14 < 1)
        {
          break;
        }

        v23 = 0;
        do
        {
          *(&v24 + v23) = *(j + v23);
          ++v23;
        }

        while (v22 != v23);
        j = &v24;
LABEL_9:
        a9.i64[0] = *j;
        a10.i64[0] = *(j + 4);
        a11.i64[0] = *(j + 10);
        a12.i64[0] = j[2];
        v17 = vzip1q_s16(vqtbl1q_s8(a9, xmmword_2778DE080), a10);
        v18 = vzip1q_s16(a11, a12);
        v19 = vzip1q_s32(v17, v18);
        v20 = vzip2q_s32(v17, v18);
        v21 = vzip2q_s16(v19, 0);
        a11 = vshlq_n_s32(vzip1q_s16(v20, 0), 4uLL);
        a10 = vorrq_s8(vshrq_n_u32(v21, 6uLL), a11);
        a9 = vorrq_s8(a10, vshlq_n_s32(vzip2q_s16(v20, 0), 0xEuLL));
        *v15++ = a9;
        v14 = v22 - 6;
      }

      result = (result + a2);
      a3 = (a3 + a4);
    }
  }

  return result;
}

uint64_t AlphaDecoder::AlphaDecoder(uint64_t result, int a2, int a3, char a4)
{
  *result = a2;
  *(result + 4) = 0;
  *(result + 8) = 0;
  if ((a4 & 1) == 0)
  {
    if (a3 > 1932812658)
    {
      if (a3 > 2016698738)
      {
        if (a3 != 2016698739 && a3 != 2033463606)
        {
          if (a3 != 2033463352)
          {
            return result;
          }

          goto LABEL_24;
        }
      }

      else if (a3 != 1932812659 && a3 != 1949589875)
      {
        if (a3 != 1983131704)
        {
          return result;
        }

        *(result + 4) = 1;
        v4 = decodeIntAlpha<8,unsigned char,true>;
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            return result;
          }

          v4 = decodeIntAlpha<16,unsigned char,true>;
        }

LABEL_30:
        *(result + 8) = v4;
        return result;
      }
    }

    else
    {
      if (a3 <= 1647719541)
      {
        if (a3 != 32 && a3 != 1111970369)
        {
          if (a3 != 1647719521)
          {
            return result;
          }

          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if (a3 != 1647719542)
      {
        if (a3 != 1916022840)
        {
          if (a3 != 1916036716)
          {
            return result;
          }

          *(result + 4) = 4;
          v4 = decodeIntAlpha<8,float,false>;
          if (a2 != 1)
          {
            if (a2 != 2)
            {
              return result;
            }

            v4 = decodeIntAlpha<16,float,false>;
          }

          goto LABEL_30;
        }

LABEL_24:
        *(result + 4) = 1;
        v4 = decodeIntAlpha<8,unsigned char,false>;
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            return result;
          }

          v4 = decodeIntAlpha<16,unsigned char,false>;
        }

        goto LABEL_30;
      }
    }

LABEL_27:
    *(result + 4) = 2;
    v4 = decodeIntAlpha<8,unsigned short,false>;
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      v4 = decodeIntAlpha<16,unsigned short,false>;
    }

    goto LABEL_30;
  }

  return result;
}

BOOL decodeIntAlpha<8,unsigned char,false>(uint64_t *a1, int64x2_t *a2, unsigned int a3, int a4, int a5)
{
  if (a3 == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a5;
  }

  if (a3 == a4)
  {
    v7 = a5;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 * a4;
  v9 = *a1;
  v10 = *(a1 + 2);
  v12 = a1[2];
  v11 = a1[3];
  v13 = 255;
  v14 = -1;
  v15.i64[0] = 0x700000007;
  v15.i64[1] = 0x700000007;
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x8700000087;
  v17.i64[1] = 0x8700000087;
  v18.i64[0] = 0xFFFFFF00FFFFFF00;
  v18.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v19 = v8;
    v20 = a2;
LABEL_9:
    v21 = a2;
    do
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v24 = 9;
        v25 = (SHIDWORD(v9) >> 23) + v14;
        v14 = ((SHIDWORD(v9) >> 23) + v14);
        v13 &= v14;
        v26 = HIDWORD(v9) << 9;
        if (((HIDWORD(v9) << 9) & 0x80000000) == 0)
        {
LABEL_37:
          if (v26 >> 27)
          {
            v59 = 5;
          }

          else
          {
            v59 = 16;
          }

          v9 <<= v59 + v24;
          v10 -= v59 + v24;
          if (v10 < 0)
          {
            if (v12 < v11)
            {
              v60 = *v12++;
              v61 = bswap32(v60);
              goto LABEL_61;
            }

            v62 = a1[4];
            if (v12 >= v62)
            {
              v61 = 0;
            }

            else
            {
              v63 = v62 - v12;
              if ((v62 - v12) < 4)
              {
                v61 = 0;
                v64 = 32;
                v65 = v12;
                goto LABEL_58;
              }

              if (v63 >= 0x20)
              {
                v66 = v63 & 0xFFFFFFFFFFFFFFE0;
                v67 = (v12 + 4);
                v68 = 0uLL;
                v69 = 0uLL;
                v70 = v63 & 0xFFFFFFFFFFFFFFE0;
                v71 = xmmword_277875260;
                v72 = xmmword_277875250;
                v73 = xmmword_277875240;
                v74 = xmmword_277875230;
                v75 = 0uLL;
                v76 = 0uLL;
                v77 = 0uLL;
                v64 = 32 - 8 * (v63 & 0xFFFFFFE0);
                v78 = 0uLL;
                v79 = 0uLL;
                v80 = 0uLL;
                do
                {
                  v81 = v67[-1];
                  v69 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v81, xmmword_277875270), vaddq_s32(v72, v15)), v69);
                  v68 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v81, xmmword_277875280), vaddq_s32(v71, v15)), v68);
                  v75 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v81, xmmword_277875290), vaddq_s32(v73, v15)), v75);
                  v76 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v81, xmmword_2778752A0), vaddq_s32(v74, v15)), v76);
                  v78 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v67, xmmword_277875270), vaddq_s32(v72, v17)), v78);
                  v77 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v67, xmmword_277875280), vaddq_s32(v71, v17)), v77);
                  v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v67, xmmword_277875290), vaddq_s32(v73, v17)), v79);
                  v80 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v67, xmmword_2778752A0), vaddq_s32(v74, v17)), v80);
                  v71 = vaddq_s32(v71, v18);
                  v72 = vaddq_s32(v72, v18);
                  v73 = vaddq_s32(v73, v18);
                  v67 += 2;
                  v74 = vaddq_s32(v74, v18);
                  v70 -= 32;
                }

                while (v70);
                v5 = vorrq_s8(v79, v75);
                v82 = vorrq_s8(vorrq_s8(vorrq_s8(v77, v68), v5), vorrq_s8(vorrq_s8(v78, v69), vorrq_s8(v80, v76)));
                *v82.i8 = vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
                v61 = v82.i32[0] | v82.i32[1];
                if (v63 != v66)
                {
                  if ((v63 & 0x1C) == 0)
                  {
                    v65 = (v12 + v66);
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
                v61 = 0;
                v66 = 0;
                v64 = 32;
LABEL_53:
                v83 = vdupq_n_s32(v64);
                v64 = 32 - 8 * (v63 & 0xFFFFFFFC);
                v65 = (v12 + (v63 & 0xFFFFFFFFFFFFFFFCLL));
                v84 = vaddq_s32(v83, xmmword_277875250);
                v85 = v61;
                v86 = (v12 + v66);
                v87 = v66 - (v63 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v88 = *v86++;
                  v5.i32[0] = v88;
                  v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                  v85 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v84, v15)), v85);
                  v84 = vaddq_s32(v84, v16);
                  v87 += 4;
                }

                while (v87);
                v89 = vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
                v61 = v89.i32[0] | v89.i32[1];
                if (v63 != (v63 & 0xFFFFFFFFFFFFFFFCLL))
                {
LABEL_58:
                  v90 = v64 - 8;
                  do
                  {
                    v91 = *v65;
                    v65 = (v65 + 1);
                    v61 |= v91 << v90;
                    v90 -= 8;
                  }

                  while (v65 != v62);
                }
              }

              v12 = a1[4];
            }

LABEL_61:
            v9 |= v61 << -v10;
            v10 += 32;
          }

          v92 = (v26 >> -v59) + 1;
          v93 = vqtbl1q_s8(vzip1q_s8(v14, v14), xmmword_2778DE0B0).u64[0];
          if (v92 < v19)
          {
            goto LABEL_82;
          }

          v94 = vdupq_lane_s64(v93, 0);
          while (2)
          {
            if (v19 < 8)
            {
              v95 = v21;
              goto LABEL_72;
            }

            v96 = v19 >> 3;
            if ((v96 - 1) <= 2)
            {
              v95 = v21;
              v97 = v19 >> 3;
              goto LABEL_71;
            }

            v95 = (v21 + 8 * (v96 & 0x1FFFFFFC));
            v97 = v96 - (v96 & 0x1FFFFFFC);
            v98 = v21 + 1;
            v99 = v96 & 0x1FFFFFFC;
            do
            {
              v98[-1] = v94;
              *v98 = v94;
              v98 += 2;
              v99 -= 4;
            }

            while (v99);
            if ((v96 & 0x1FFFFFFC) != v96)
            {
              do
              {
LABEL_71:
                v95->i64[0] = v93;
                v95 = (v95 + 8);
                --v97;
              }

              while (v97);
            }

LABEL_72:
            if ((v19 & 4) != 0)
            {
              v95->i32[0] = v93;
              v95 = (v95 + 4);
              if ((v19 & 2) != 0)
              {
                goto LABEL_78;
              }

LABEL_74:
              if ((v19 & 1) == 0)
              {
                goto LABEL_75;
              }

LABEL_79:
              v95->i8[0] = v25;
              if (!--v6)
              {
                return v13 == 255;
              }
            }

            else
            {
              if ((v19 & 2) == 0)
              {
                goto LABEL_74;
              }

LABEL_78:
              v95->i8[0] = v25;
              v95->i8[1] = v25;
              v95 = (v95 + 2);
              if (v19)
              {
                goto LABEL_79;
              }

LABEL_75:
              if (!--v6)
              {
                return v13 == 255;
              }
            }

            v92 -= v19;
            v20 = (v20 + a3);
            v19 = v8;
            v21 = v20;
            if (v92 < v8)
            {
              v21 = v20;
              v19 = v8;
LABEL_82:
              if (v92 < 8)
              {
                a2 = v21;
                goto LABEL_90;
              }

              v100 = v92 >> 3;
              if ((v100 - 1) <= 2)
              {
                a2 = v21;
                v101 = v92 >> 3;
                goto LABEL_89;
              }

              a2 = (v21 + 8 * (v100 & 0x1FFFFFFC));
              v101 = v100 - (v100 & 0x1FFFFFFC);
              v102 = vdupq_lane_s64(v93, 0);
              v103 = v21 + 1;
              v104 = v100 & 0x1FFFFFFC;
              do
              {
                v103[-1] = v102;
                *v103 = v102;
                v103 += 2;
                v104 -= 4;
              }

              while (v104);
              if ((v100 & 0x1FFFFFFC) != v100)
              {
                do
                {
LABEL_89:
                  a2->i64[0] = v93;
                  a2 = (a2 + 8);
                  --v101;
                }

                while (v101);
              }

LABEL_90:
              if ((v92 & 4) != 0)
              {
                a2->i32[0] = v93;
                a2 = (a2 + 4);
                if ((v92 & 2) != 0)
                {
                  goto LABEL_95;
                }

LABEL_92:
                v19 -= v92;
                if (v92)
                {
LABEL_96:
                  a2->i8[0] = v25;
                  a2 = (a2 + 1);
                }
              }

              else
              {
                if ((v92 & 2) == 0)
                {
                  goto LABEL_92;
                }

LABEL_95:
                a2->i8[0] = v25;
                a2->i8[1] = v25;
                a2 = (a2 + 2);
                v19 -= v92;
                if (v92)
                {
                  goto LABEL_96;
                }
              }

              goto LABEL_9;
            }

            continue;
          }
        }
      }

      else
      {
        v24 = 5;
        LOBYTE(v25) = smallAlphaDiffVLDTable_8b[v9 >> 59] + v14;
        v14 = v25;
        v13 = v25 & v13;
        v26 = 32 * HIDWORD(v9);
        if (((32 * HIDWORD(v9)) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      v9 <<= v24 + 1;
      v10 -= v24 + 1;
      if (v10 < 0)
      {
        if (v12 < v11)
        {
          v22 = *v12++;
          v23 = bswap32(v22);
        }

        else
        {
          v27 = a1[4];
          if (v12 < v27)
          {
            v28 = v27 - v12;
            if ((v27 - v12) < 4)
            {
              v23 = 0;
              v29 = 32;
              v30 = v12;
              goto LABEL_34;
            }

            if (v28 >= 0x20)
            {
              v31 = v28 & 0xFFFFFFFFFFFFFFE0;
              v29 = 32 - 8 * (v28 & 0xFFFFFFE0);
              v32 = xmmword_277875230;
              v33 = xmmword_277875240;
              v34 = xmmword_277875250;
              v35 = 0uLL;
              v36 = 0uLL;
              v37 = xmmword_277875260;
              v38 = (v12 + 4);
              v39 = v28 & 0xFFFFFFFFFFFFFFE0;
              v40 = 0uLL;
              v41 = 0uLL;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
              v45 = 0uLL;
              do
              {
                v46 = v38[-1];
                v36 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_277875270), vaddq_s32(v34, v15)), v36);
                v35 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_277875280), vaddq_s32(v37, v15)), v35);
                v40 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_277875290), vaddq_s32(v33, v15)), v40);
                v41 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_2778752A0), vaddq_s32(v32, v15)), v41);
                v43 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_277875270), vaddq_s32(v34, v17)), v43);
                v42 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_277875280), vaddq_s32(v37, v17)), v42);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_277875290), vaddq_s32(v33, v17)), v44);
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_2778752A0), vaddq_s32(v32, v17)), v45);
                v37 = vaddq_s32(v37, v18);
                v34 = vaddq_s32(v34, v18);
                v33 = vaddq_s32(v33, v18);
                v38 += 2;
                v32 = vaddq_s32(v32, v18);
                v39 -= 32;
              }

              while (v39);
              v47 = vorrq_s8(v42, v35);
              v5 = vorrq_s8(v44, v40);
              v48 = vorrq_s8(vorrq_s8(v47, v5), vorrq_s8(vorrq_s8(v43, v36), vorrq_s8(v45, v41)));
              v49 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
              v23 = v49.i32[0] | v49.i32[1];
              if (v28 == v31)
              {
                goto LABEL_36;
              }

              if ((v28 & 0x1C) == 0)
              {
                v30 = (v12 + v31);
LABEL_34:
                v57 = v29 - 8;
                do
                {
                  v58 = *v30;
                  v30 = (v30 + 1);
                  v23 |= v58 << v57;
                  v57 -= 8;
                }

                while (v30 != v27);
LABEL_36:
                v12 = a1[4];
                goto LABEL_11;
              }
            }

            else
            {
              v23 = 0;
              v31 = 0;
              v29 = 32;
            }

            v50 = vdupq_n_s32(v29);
            v29 = 32 - 8 * (v28 & 0xFFFFFFFC);
            v30 = (v12 + (v28 & 0xFFFFFFFFFFFFFFFCLL));
            v51 = vaddq_s32(v50, xmmword_277875250);
            v52 = v23;
            v53 = (v12 + v31);
            v54 = v31 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v55 = *v53++;
              v5.i32[0] = v55;
              v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
              v52 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v51, v15)), v52);
              v51 = vaddq_s32(v51, v16);
              v54 += 4;
            }

            while (v54);
            v56 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
            v23 = v56.i32[0] | v56.i32[1];
            if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          v23 = 0;
        }

LABEL_11:
        v9 |= v23 << -v10;
        v10 += 32;
      }

      v21->i8[0] = v25;
      v21 = (v21 + 1);
      --v19;
    }

    while (v19);
    if (--v6)
    {
      a2 = (v20 + a3);
      continue;
    }

    return v13 == 255;
  }
}

BOOL decodeIntAlpha<16,unsigned char,false>(uint64_t *a1, int64x2_t *a2, unsigned int a3, int a4, int a5)
{
  if (a3 == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a5;
  }

  if (a3 == a4)
  {
    v7 = a5;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 * a4;
  v9 = *a1;
  v10 = *(a1 + 2);
  v12 = a1[2];
  v11 = a1[3];
  v13 = 0xFFFF;
  LOWORD(v14) = -1;
  v15.i64[0] = 0x700000007;
  v15.i64[1] = 0x700000007;
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x8700000087;
  v17.i64[1] = 0x8700000087;
  v18.i64[0] = 0xFFFFFF00FFFFFF00;
  v18.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v19 = v8;
    v20 = a2;
LABEL_9:
    v21 = a2;
    do
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v24 = SHIDWORD(v9) >> 15;
        v25 = 17;
      }

      else
      {
        LOWORD(v24) = smallAlphaDiffVLDTable_16b[HIBYTE(v9)];
        v25 = 8;
      }

      v14 = (v24 + v14);
      v13 &= v14;
      v26 = (65281 * v14 + 0x800000) >> 24;
      LODWORD(v27) = HIDWORD(v9) << v25;
      if (((HIDWORD(v9) << v25) & 0x80000000) == 0)
      {
        if (v27 >> 27)
        {
          v60 = 5;
        }

        else
        {
          v60 = 16;
        }

        v61 = v60 + v25;
        if ((v60 + v25) < 0x21)
        {
LABEL_64:
          v9 <<= v61;
          v10 -= v61;
          if (v10 >= 0)
          {
LABEL_86:
            v129 = (v27 >> -v60) + 1;
            v130 = vqtbl1q_s8(vzip1q_s8(v26, v26), xmmword_2778DE0B0).u64[0];
            if (v129 < v19)
            {
              goto LABEL_106;
            }

            v131 = vdupq_lane_s64(v130, 0);
            while (1)
            {
              if (v19 < 8)
              {
                v132 = v21;
                goto LABEL_96;
              }

              v133 = v19 >> 3;
              if ((v133 - 1) <= 2)
              {
                break;
              }

              v132 = (v21 + 8 * (v133 & 0x1FFFFFFC));
              v134 = v133 - (v133 & 0x1FFFFFFC);
              v135 = v21 + 1;
              v136 = v133 & 0x1FFFFFFC;
              do
              {
                v135[-1] = v131;
                *v135 = v131;
                v135 += 2;
                v136 -= 4;
              }

              while (v136);
              if ((v133 & 0x1FFFFFFC) != v133)
              {
                goto LABEL_95;
              }

LABEL_96:
              if ((v19 & 4) != 0)
              {
                v132->i32[0] = v130;
                v132 = (v132 + 4);
                if ((v19 & 2) == 0)
                {
LABEL_98:
                  if (v19)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_99;
                }
              }

              else if ((v19 & 2) == 0)
              {
                goto LABEL_98;
              }

              v132->i8[0] = v26;
              v132->i8[1] = v26;
              v132 = (v132 + 2);
              if (v19)
              {
LABEL_103:
                v132->i8[0] = v26;
                if (!--v6)
                {
                  return v13 == 0xFFFF;
                }

                goto LABEL_104;
              }

LABEL_99:
              if (!--v6)
              {
                return v13 == 0xFFFF;
              }

LABEL_104:
              v129 -= v19;
              v20 = (v20 + a3);
              v19 = v8;
              v21 = v20;
              if (v129 < v8)
              {
                v21 = v20;
                v19 = v8;
LABEL_106:
                if (v129 < 8)
                {
                  a2 = v21;
                  goto LABEL_114;
                }

                v137 = v129 >> 3;
                if ((v137 - 1) <= 2)
                {
                  a2 = v21;
                  v138 = v129 >> 3;
                  goto LABEL_113;
                }

                a2 = (v21 + 8 * (v137 & 0x1FFFFFFC));
                v138 = v137 - (v137 & 0x1FFFFFFC);
                v139 = vdupq_lane_s64(v130, 0);
                v140 = v21 + 1;
                v141 = v137 & 0x1FFFFFFC;
                do
                {
                  v140[-1] = v139;
                  *v140 = v139;
                  v140 += 2;
                  v141 -= 4;
                }

                while (v141);
                if ((v137 & 0x1FFFFFFC) != v137)
                {
                  do
                  {
LABEL_113:
                    a2->i64[0] = v130;
                    a2 = (a2 + 8);
                    --v138;
                  }

                  while (v138);
                }

LABEL_114:
                if ((v129 & 4) != 0)
                {
                  a2->i32[0] = v130;
                  a2 = (a2 + 4);
                  if ((v129 & 2) != 0)
                  {
                    goto LABEL_119;
                  }

LABEL_116:
                  v19 -= v129;
                  if (v129)
                  {
LABEL_120:
                    a2->i8[0] = v26;
                    a2 = (a2 + 1);
                  }
                }

                else
                {
                  if ((v129 & 2) == 0)
                  {
                    goto LABEL_116;
                  }

LABEL_119:
                  a2->i8[0] = v26;
                  a2->i8[1] = v26;
                  a2 = (a2 + 2);
                  v19 -= v129;
                  if (v129)
                  {
                    goto LABEL_120;
                  }
                }

                goto LABEL_9;
              }
            }

            v132 = v21;
            v134 = v19 >> 3;
            do
            {
LABEL_95:
              v132->i64[0] = v130;
              v132 = (v132 + 8);
              --v134;
            }

            while (v134);
            goto LABEL_96;
          }

          if (v12 < v11)
          {
            v95 = *v12++;
            v96 = bswap32(v95);
LABEL_85:
            v9 |= v96 << -v10;
            v10 += 32;
            goto LABEL_86;
          }

          v97 = a1[4];
          if (v12 >= v97)
          {
            v96 = 0;
            goto LABEL_85;
          }

          v98 = v97 - v12;
          if (v97 - v12 < 4)
          {
            v96 = 0;
            v99 = 32;
            v100 = v12;
            goto LABEL_82;
          }

          if (v98 >= 0x20)
          {
            v101 = v98 & 0xFFFFFFFFFFFFFFE0;
            v99 = 32 - 8 * (v98 & 0xFFFFFFE0);
            v102 = xmmword_277875230;
            v103 = xmmword_277875240;
            v104 = xmmword_277875250;
            v105 = 0uLL;
            v106 = 0uLL;
            v107 = xmmword_277875260;
            v108 = (v12 + 4);
            v109 = v98 & 0xFFFFFFFFFFFFFFE0;
            v110 = 0uLL;
            v111 = 0uLL;
            v112 = 0uLL;
            v113 = 0uLL;
            v114 = 0uLL;
            v115 = 0uLL;
            do
            {
              v116 = v108[-1];
              v106 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_277875270), vaddq_s32(v104, v15)), v106);
              v105 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_277875280), vaddq_s32(v107, v15)), v105);
              v110 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_277875290), vaddq_s32(v103, v15)), v110);
              v111 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_2778752A0), vaddq_s32(v102, v15)), v111);
              v113 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_277875270), vaddq_s32(v104, v17)), v113);
              v112 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_277875280), vaddq_s32(v107, v17)), v112);
              v114 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_277875290), vaddq_s32(v103, v17)), v114);
              v115 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_2778752A0), vaddq_s32(v102, v17)), v115);
              v107 = vaddq_s32(v107, v18);
              v104 = vaddq_s32(v104, v18);
              v103 = vaddq_s32(v103, v18);
              v108 += 2;
              v102 = vaddq_s32(v102, v18);
              v109 -= 32;
            }

            while (v109);
            v117 = vorrq_s8(v112, v105);
            v5 = vorrq_s8(v114, v110);
            v118 = vorrq_s8(vorrq_s8(v117, v5), vorrq_s8(vorrq_s8(v113, v106), vorrq_s8(v115, v111)));
            v119 = vorr_s8(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
            v96 = v119.i32[0] | v119.i32[1];
            if (v98 == v101)
            {
              goto LABEL_84;
            }

            if ((v98 & 0x1C) == 0)
            {
              v100 = (v12 + v101);
LABEL_82:
              v127 = v99 - 8;
              do
              {
                v128 = *v100;
                v100 = (v100 + 1);
                v96 |= v128 << v127;
                v127 -= 8;
              }

              while (v100 != a1[4]);
LABEL_84:
              v12 = a1[4];
              goto LABEL_85;
            }
          }

          else
          {
            v96 = 0;
            v101 = 0;
            v99 = 32;
          }

          v120 = vdupq_n_s32(v99);
          v99 = 32 - 8 * (v98 & 0xFFFFFFFC);
          v100 = (v12 + (v98 & 0xFFFFFFFFFFFFFFFCLL));
          v121 = vaddq_s32(v120, xmmword_277875250);
          v122 = v96;
          v123 = (v12 + v101);
          v124 = v101 - (v98 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v125 = *v123++;
            v5.i32[0] = v125;
            v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
            v122 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v121, v15)), v122);
            v121 = vaddq_s32(v121, v16);
            v124 += 4;
          }

          while (v124);
          v126 = vorr_s8(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
          v96 = v126.i32[0] | v126.i32[1];
          if (v98 == (v98 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_84;
          }

          goto LABEL_82;
        }

        v9 <<= v25;
        v10 -= v25;
        if (v10 >= 0)
        {
LABEL_63:
          v27 = HIDWORD(v9);
          v61 = v60;
          goto LABEL_64;
        }

        if (v12 < v11)
        {
          v62 = *v12++;
          v63 = bswap32(v62);
LABEL_62:
          v9 |= v63 << -v10;
          v10 += 32;
          goto LABEL_63;
        }

        v64 = a1[4];
        if (v12 >= v64)
        {
          v63 = 0;
          goto LABEL_62;
        }

        v65 = v64 - v12;
        if ((v64 - v12) < 4)
        {
          v63 = 0;
          v66 = 32;
          v67 = v12;
          goto LABEL_59;
        }

        if (v65 >= 0x20)
        {
          v68 = v65 & 0xFFFFFFFFFFFFFFE0;
          v69 = (v12 + 4);
          v70 = 0uLL;
          v71 = 0uLL;
          v72 = v65 & 0xFFFFFFFFFFFFFFE0;
          v73 = xmmword_277875260;
          v74 = xmmword_277875250;
          v75 = xmmword_277875240;
          v76 = xmmword_277875230;
          v77 = 0uLL;
          v78 = 0uLL;
          v79 = 0uLL;
          v66 = 32 - 8 * (v65 & 0xFFFFFFE0);
          v80 = 0uLL;
          v81 = 0uLL;
          v82 = 0uLL;
          do
          {
            v83 = v69[-1];
            v71 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875270), vaddq_s32(v74, v15)), v71);
            v70 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875280), vaddq_s32(v73, v15)), v70);
            v77 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875290), vaddq_s32(v75, v15)), v77);
            v78 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_2778752A0), vaddq_s32(v76, v15)), v78);
            v80 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875270), vaddq_s32(v74, v17)), v80);
            v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875280), vaddq_s32(v73, v17)), v79);
            v81 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875290), vaddq_s32(v75, v17)), v81);
            v82 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_2778752A0), vaddq_s32(v76, v17)), v82);
            v73 = vaddq_s32(v73, v18);
            v74 = vaddq_s32(v74, v18);
            v75 = vaddq_s32(v75, v18);
            v69 += 2;
            v76 = vaddq_s32(v76, v18);
            v72 -= 32;
          }

          while (v72);
          v5 = vorrq_s8(v81, v77);
          v84 = vorrq_s8(vorrq_s8(vorrq_s8(v79, v70), v5), vorrq_s8(vorrq_s8(v80, v71), vorrq_s8(v82, v78)));
          v85 = vorr_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
          v63 = v85.i32[0] | v85.i32[1];
          if (v65 == v68)
          {
            goto LABEL_61;
          }

          if ((v65 & 0x1C) == 0)
          {
            v67 = (v12 + v68);
LABEL_59:
            v93 = v66 - 8;
            do
            {
              v94 = *v67;
              v67 = (v67 + 1);
              v63 |= v94 << v93;
              v93 -= 8;
            }

            while (v67 != v64);
LABEL_61:
            v12 = a1[4];
            goto LABEL_62;
          }
        }

        else
        {
          v63 = 0;
          v68 = 0;
          v66 = 32;
        }

        v86 = vdupq_n_s32(v66);
        v66 = 32 - 8 * (v65 & 0xFFFFFFFC);
        v67 = (v12 + (v65 & 0xFFFFFFFFFFFFFFFCLL));
        v87 = vaddq_s32(v86, xmmword_277875250);
        v88 = v63;
        v89 = (v12 + v68);
        v90 = v68 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v91 = *v89++;
          v5.i32[0] = v91;
          v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
          v88 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v87, v15)), v88);
          v87 = vaddq_s32(v87, v16);
          v90 += 4;
        }

        while (v90);
        v92 = vorr_s8(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
        v63 = v92.i32[0] | v92.i32[1];
        if (v65 == (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_61;
        }

        goto LABEL_59;
      }

      v28 = v25 + 1;
      v9 <<= v28;
      v10 -= v28;
      if (v10 < 0)
      {
        if (v12 < v11)
        {
          v22 = *v12++;
          v23 = bswap32(v22);
        }

        else
        {
          v29 = a1[4];
          if (v12 >= v29)
          {
            v23 = 0;
          }

          else
          {
            v30 = v29 - v12;
            if ((v29 - v12) < 4)
            {
              v23 = 0;
              v31 = 32;
              v32 = v12;
              goto LABEL_34;
            }

            if (v30 >= 0x20)
            {
              v33 = v30 & 0xFFFFFFFFFFFFFFE0;
              v31 = 32 - 8 * (v30 & 0xFFFFFFE0);
              v34 = xmmword_277875230;
              v35 = xmmword_277875240;
              v36 = xmmword_277875250;
              v37 = 0uLL;
              v38 = 0uLL;
              v39 = xmmword_277875260;
              v40 = (v12 + 4);
              v41 = v30 & 0xFFFFFFFFFFFFFFE0;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
              v45 = 0uLL;
              v46 = 0uLL;
              v47 = 0uLL;
              do
              {
                v48 = v40[-1];
                v38 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875270), vaddq_s32(v36, v15)), v38);
                v37 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875280), vaddq_s32(v39, v15)), v37);
                v42 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875290), vaddq_s32(v35, v15)), v42);
                v43 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_2778752A0), vaddq_s32(v34, v15)), v43);
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875270), vaddq_s32(v36, v17)), v45);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875280), vaddq_s32(v39, v17)), v44);
                v46 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875290), vaddq_s32(v35, v17)), v46);
                v47 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_2778752A0), vaddq_s32(v34, v17)), v47);
                v39 = vaddq_s32(v39, v18);
                v36 = vaddq_s32(v36, v18);
                v35 = vaddq_s32(v35, v18);
                v40 += 2;
                v34 = vaddq_s32(v34, v18);
                v41 -= 32;
              }

              while (v41);
              v49 = vorrq_s8(v44, v37);
              v5 = vorrq_s8(v46, v42);
              v50 = vorrq_s8(vorrq_s8(v49, v5), vorrq_s8(vorrq_s8(v45, v38), vorrq_s8(v47, v43)));
              *v50.i8 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
              v23 = v50.i32[0] | v50.i32[1];
              if (v30 != v33)
              {
                if ((v30 & 0x1C) == 0)
                {
                  v32 = (v12 + v33);
                  goto LABEL_34;
                }

                goto LABEL_29;
              }
            }

            else
            {
              v23 = 0;
              v33 = 0;
              v31 = 32;
LABEL_29:
              v51 = vdupq_n_s32(v31);
              v31 = 32 - 8 * (v30 & 0xFFFFFFFC);
              v32 = (v12 + (v30 & 0xFFFFFFFFFFFFFFFCLL));
              v52 = vaddq_s32(v51, xmmword_277875250);
              v53 = v23;
              v54 = (v12 + v33);
              v55 = v33 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v56 = *v54++;
                v5.i32[0] = v56;
                v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                v53 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v52, v15)), v53);
                v52 = vaddq_s32(v52, v16);
                v55 += 4;
              }

              while (v55);
              v57 = vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
              v23 = v57.i32[0] | v57.i32[1];
              if (v30 != (v30 & 0xFFFFFFFFFFFFFFFCLL))
              {
LABEL_34:
                v58 = v31 - 8;
                do
                {
                  v59 = *v32;
                  v32 = (v32 + 1);
                  v23 |= v59 << v58;
                  v58 -= 8;
                }

                while (v32 != v29);
              }
            }

            v12 = a1[4];
          }
        }

        v9 |= v23 << -v10;
        v10 += 32;
      }

      v21->i8[0] = v26;
      v21 = (v21 + 1);
      --v19;
    }

    while (v19);
    if (--v6)
    {
      a2 = (v20 + a3);
      continue;
    }

    return v13 == 0xFFFF;
  }
}

BOOL decodeIntAlpha<8,unsigned char,true>(uint64_t *a1, int64x2_t *a2, unsigned int a3, int a4, int a5)
{
  if (a3 == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a5;
  }

  if (a3 == a4)
  {
    v7 = a5;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 * a4;
  v9 = *a1;
  v10 = *(a1 + 2);
  v12 = a1[2];
  v11 = a1[3];
  v13 = 255;
  LOBYTE(v14) = -1;
  v15.i64[0] = 0x700000007;
  v15.i64[1] = 0x700000007;
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x8700000087;
  v17.i64[1] = 0x8700000087;
  v18.i64[0] = 0xFFFFFF00FFFFFF00;
  v18.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v19 = v8;
    v20 = a2;
LABEL_9:
    v21 = a2;
    do
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v24 = 9;
        v14 = ((SHIDWORD(v9) >> 23) + v14);
        v13 &= v14;
        v25 = convertToV408[v14];
        v26 = HIDWORD(v9) << 9;
        if (((HIDWORD(v9) << 9) & 0x80000000) == 0)
        {
LABEL_37:
          if (v26 >> 27)
          {
            v58 = 5;
          }

          else
          {
            v58 = 16;
          }

          v9 <<= v58 + v24;
          v10 -= v58 + v24;
          if (v10 < 0)
          {
            if (v12 < v11)
            {
              v59 = *v12++;
              v60 = bswap32(v59);
              goto LABEL_61;
            }

            v61 = a1[4];
            if (v12 >= v61)
            {
              v60 = 0;
            }

            else
            {
              v62 = v61 - v12;
              if ((v61 - v12) < 4)
              {
                v60 = 0;
                v63 = 32;
                v64 = v12;
                goto LABEL_58;
              }

              if (v62 >= 0x20)
              {
                v65 = v62 & 0xFFFFFFFFFFFFFFE0;
                v66 = (v12 + 4);
                v67 = 0uLL;
                v68 = 0uLL;
                v69 = v62 & 0xFFFFFFFFFFFFFFE0;
                v70 = xmmword_277875260;
                v71 = xmmword_277875250;
                v72 = xmmword_277875240;
                v73 = xmmword_277875230;
                v74 = 0uLL;
                v75 = 0uLL;
                v76 = 0uLL;
                v63 = 32 - 8 * (v62 & 0xFFFFFFE0);
                v77 = 0uLL;
                v78 = 0uLL;
                v79 = 0uLL;
                do
                {
                  v80 = v66[-1];
                  v68 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v80, xmmword_277875270), vaddq_s32(v71, v15)), v68);
                  v67 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v80, xmmword_277875280), vaddq_s32(v70, v15)), v67);
                  v74 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v80, xmmword_277875290), vaddq_s32(v72, v15)), v74);
                  v75 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v80, xmmword_2778752A0), vaddq_s32(v73, v15)), v75);
                  v77 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v66, xmmword_277875270), vaddq_s32(v71, v17)), v77);
                  v76 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v66, xmmword_277875280), vaddq_s32(v70, v17)), v76);
                  v78 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v66, xmmword_277875290), vaddq_s32(v72, v17)), v78);
                  v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v66, xmmword_2778752A0), vaddq_s32(v73, v17)), v79);
                  v70 = vaddq_s32(v70, v18);
                  v71 = vaddq_s32(v71, v18);
                  v72 = vaddq_s32(v72, v18);
                  v66 += 2;
                  v73 = vaddq_s32(v73, v18);
                  v69 -= 32;
                }

                while (v69);
                v5 = vorrq_s8(v78, v74);
                v81 = vorrq_s8(vorrq_s8(vorrq_s8(v76, v67), v5), vorrq_s8(vorrq_s8(v77, v68), vorrq_s8(v79, v75)));
                v82 = vorr_s8(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
                v60 = v82.i32[0] | v82.i32[1];
                if (v62 != v65)
                {
                  if ((v62 & 0x1C) == 0)
                  {
                    v64 = (v12 + v65);
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
                v60 = 0;
                v65 = 0;
                v63 = 32;
LABEL_53:
                v83 = vdupq_n_s32(v63);
                v63 = 32 - 8 * (v62 & 0xFFFFFFFC);
                v64 = (v12 + (v62 & 0xFFFFFFFFFFFFFFFCLL));
                v84 = vaddq_s32(v83, xmmword_277875250);
                v85 = v60;
                v86 = (v12 + v65);
                v87 = v65 - (v62 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v88 = *v86++;
                  v5.i32[0] = v88;
                  v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                  v85 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v84, v15)), v85);
                  v84 = vaddq_s32(v84, v16);
                  v87 += 4;
                }

                while (v87);
                v89 = vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
                v60 = v89.i32[0] | v89.i32[1];
                if (v62 != (v62 & 0xFFFFFFFFFFFFFFFCLL))
                {
LABEL_58:
                  v90 = v63 - 8;
                  do
                  {
                    v91 = *v64;
                    v64 = (v64 + 1);
                    v60 |= v91 << v90;
                    v90 -= 8;
                  }

                  while (v64 != v61);
                }
              }

              v12 = a1[4];
            }

LABEL_61:
            v9 |= v60 << -v10;
            v10 += 32;
          }

          v92 = (v26 >> -v58) + 1;
          v93 = vqtbl1q_s8(vzip1q_s8(v25, v25), xmmword_2778DE0B0).u64[0];
          if (v92 < v19)
          {
            goto LABEL_82;
          }

          v94 = vdupq_lane_s64(v93, 0);
          while (2)
          {
            if (v19 < 8)
            {
              v95 = v21;
              goto LABEL_72;
            }

            v96 = v19 >> 3;
            if ((v96 - 1) <= 2)
            {
              v95 = v21;
              v97 = v19 >> 3;
              goto LABEL_71;
            }

            v95 = (v21 + 8 * (v96 & 0x1FFFFFFC));
            v97 = v96 - (v96 & 0x1FFFFFFC);
            v98 = v21 + 1;
            v99 = v96 & 0x1FFFFFFC;
            do
            {
              v98[-1] = v94;
              *v98 = v94;
              v98 += 2;
              v99 -= 4;
            }

            while (v99);
            if ((v96 & 0x1FFFFFFC) != v96)
            {
              do
              {
LABEL_71:
                v95->i64[0] = v93;
                v95 = (v95 + 8);
                --v97;
              }

              while (v97);
            }

LABEL_72:
            if ((v19 & 4) != 0)
            {
              v95->i32[0] = v93;
              v95 = (v95 + 4);
              if ((v19 & 2) != 0)
              {
                goto LABEL_78;
              }

LABEL_74:
              if ((v19 & 1) == 0)
              {
                goto LABEL_75;
              }

LABEL_79:
              v95->i8[0] = v25;
              if (!--v6)
              {
                return v13 == 255;
              }
            }

            else
            {
              if ((v19 & 2) == 0)
              {
                goto LABEL_74;
              }

LABEL_78:
              v95->i8[0] = v25;
              v95->i8[1] = v25;
              v95 = (v95 + 2);
              if (v19)
              {
                goto LABEL_79;
              }

LABEL_75:
              if (!--v6)
              {
                return v13 == 255;
              }
            }

            v92 -= v19;
            v20 = (v20 + a3);
            v19 = v8;
            v21 = v20;
            if (v92 < v8)
            {
              v21 = v20;
              v19 = v8;
LABEL_82:
              if (v92 < 8)
              {
                a2 = v21;
                goto LABEL_90;
              }

              v100 = v92 >> 3;
              if ((v100 - 1) <= 2)
              {
                a2 = v21;
                v101 = v92 >> 3;
                goto LABEL_89;
              }

              a2 = (v21 + 8 * (v100 & 0x1FFFFFFC));
              v101 = v100 - (v100 & 0x1FFFFFFC);
              v102 = vdupq_lane_s64(v93, 0);
              v103 = v21 + 1;
              v104 = v100 & 0x1FFFFFFC;
              do
              {
                v103[-1] = v102;
                *v103 = v102;
                v103 += 2;
                v104 -= 4;
              }

              while (v104);
              if ((v100 & 0x1FFFFFFC) != v100)
              {
                do
                {
LABEL_89:
                  a2->i64[0] = v93;
                  a2 = (a2 + 8);
                  --v101;
                }

                while (v101);
              }

LABEL_90:
              if ((v92 & 4) != 0)
              {
                a2->i32[0] = v93;
                a2 = (a2 + 4);
                if ((v92 & 2) != 0)
                {
                  goto LABEL_95;
                }

LABEL_92:
                v19 -= v92;
                if (v92)
                {
LABEL_96:
                  a2->i8[0] = v25;
                  a2 = (a2 + 1);
                }
              }

              else
              {
                if ((v92 & 2) == 0)
                {
                  goto LABEL_92;
                }

LABEL_95:
                a2->i8[0] = v25;
                a2->i8[1] = v25;
                a2 = (a2 + 2);
                v19 -= v92;
                if (v92)
                {
                  goto LABEL_96;
                }
              }

              goto LABEL_9;
            }

            continue;
          }
        }
      }

      else
      {
        v24 = 5;
        v14 = (smallAlphaDiffVLDTable_8b[v9 >> 59] + v14);
        v13 &= v14;
        v25 = convertToV408[v14];
        v26 = 32 * HIDWORD(v9);
        if (((32 * HIDWORD(v9)) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      v9 <<= v24 + 1;
      v10 -= v24 + 1;
      if (v10 < 0)
      {
        if (v12 < v11)
        {
          v22 = *v12++;
          v23 = bswap32(v22);
        }

        else
        {
          v27 = a1[4];
          if (v12 < v27)
          {
            v28 = v27 - v12;
            if ((v27 - v12) < 4)
            {
              v23 = 0;
              v29 = 32;
              v30 = v12;
              goto LABEL_34;
            }

            if (v28 >= 0x20)
            {
              v31 = v28 & 0xFFFFFFFFFFFFFFE0;
              v29 = 32 - 8 * (v28 & 0xFFFFFFE0);
              v32 = xmmword_277875230;
              v33 = xmmword_277875240;
              v34 = xmmword_277875250;
              v35 = 0uLL;
              v36 = 0uLL;
              v37 = xmmword_277875260;
              v38 = (v12 + 4);
              v39 = v28 & 0xFFFFFFFFFFFFFFE0;
              v40 = 0uLL;
              v41 = 0uLL;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
              v45 = 0uLL;
              do
              {
                v46 = v38[-1];
                v36 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_277875270), vaddq_s32(v34, v15)), v36);
                v35 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_277875280), vaddq_s32(v37, v15)), v35);
                v40 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_277875290), vaddq_s32(v33, v15)), v40);
                v41 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v46, xmmword_2778752A0), vaddq_s32(v32, v15)), v41);
                v43 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_277875270), vaddq_s32(v34, v17)), v43);
                v42 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_277875280), vaddq_s32(v37, v17)), v42);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_277875290), vaddq_s32(v33, v17)), v44);
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v38, xmmword_2778752A0), vaddq_s32(v32, v17)), v45);
                v37 = vaddq_s32(v37, v18);
                v34 = vaddq_s32(v34, v18);
                v33 = vaddq_s32(v33, v18);
                v38 += 2;
                v32 = vaddq_s32(v32, v18);
                v39 -= 32;
              }

              while (v39);
              v47 = vorrq_s8(v42, v35);
              v5 = vorrq_s8(v44, v40);
              v48 = vorrq_s8(vorrq_s8(v47, v5), vorrq_s8(vorrq_s8(v43, v36), vorrq_s8(v45, v41)));
              *v48.i8 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
              v23 = v48.i32[0] | v48.i32[1];
              if (v28 == v31)
              {
                goto LABEL_36;
              }

              if ((v28 & 0x1C) == 0)
              {
                v30 = (v12 + v31);
LABEL_34:
                v56 = v29 - 8;
                do
                {
                  v57 = *v30;
                  v30 = (v30 + 1);
                  v23 |= v57 << v56;
                  v56 -= 8;
                }

                while (v30 != v27);
LABEL_36:
                v12 = a1[4];
                goto LABEL_11;
              }
            }

            else
            {
              v23 = 0;
              v31 = 0;
              v29 = 32;
            }

            v49 = vdupq_n_s32(v29);
            v29 = 32 - 8 * (v28 & 0xFFFFFFFC);
            v30 = (v12 + (v28 & 0xFFFFFFFFFFFFFFFCLL));
            v50 = vaddq_s32(v49, xmmword_277875250);
            v51 = v23;
            v52 = (v12 + v31);
            v53 = v31 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v54 = *v52++;
              v5.i32[0] = v54;
              v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
              v51 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v50, v15)), v51);
              v50 = vaddq_s32(v50, v16);
              v53 += 4;
            }

            while (v53);
            v55 = vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
            v23 = v55.i32[0] | v55.i32[1];
            if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          v23 = 0;
        }

LABEL_11:
        v9 |= v23 << -v10;
        v10 += 32;
      }

      v21->i8[0] = v25;
      v21 = (v21 + 1);
      --v19;
    }

    while (v19);
    if (--v6)
    {
      a2 = (v20 + a3);
      continue;
    }

    return v13 == 255;
  }
}

BOOL decodeIntAlpha<16,unsigned char,true>(uint64_t *a1, int64x2_t *a2, unsigned int a3, int a4, int a5)
{
  if (a3 == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a5;
  }

  if (a3 == a4)
  {
    v7 = a5;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 * a4;
  v9 = *a1;
  v10 = *(a1 + 2);
  v12 = a1[2];
  v11 = a1[3];
  v13 = 0xFFFF;
  LOWORD(v14) = -1;
  v15.i64[0] = 0x700000007;
  v15.i64[1] = 0x700000007;
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x8700000087;
  v17.i64[1] = 0x8700000087;
  v18.i64[0] = 0xFFFFFF00FFFFFF00;
  v18.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v19 = v8;
    v20 = a2;
LABEL_9:
    v21 = a2;
    do
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v24 = SHIDWORD(v9) >> 15;
        v25 = 17;
      }

      else
      {
        LOWORD(v24) = smallAlphaDiffVLDTable_16b[HIBYTE(v9)];
        v25 = 8;
      }

      v14 = (v24 + v14);
      v13 &= v14;
      v26 = ((56065 * v14 + 0x800000) >> 24) + 16;
      LODWORD(v27) = HIDWORD(v9) << v25;
      if (((HIDWORD(v9) << v25) & 0x80000000) == 0)
      {
        if (v27 >> 27)
        {
          v60 = 5;
        }

        else
        {
          v60 = 16;
        }

        v61 = v60 + v25;
        if ((v60 + v25) < 0x21)
        {
LABEL_64:
          v9 <<= v61;
          v10 -= v61;
          if (v10 >= 0)
          {
LABEL_86:
            v129 = (v27 >> -v60) + 1;
            v130 = vqtbl1q_s8(vzip1q_s8(v26, v26), xmmword_2778DE0B0).u64[0];
            if (v129 < v19)
            {
              goto LABEL_106;
            }

            v131 = vdupq_lane_s64(v130, 0);
            while (1)
            {
              if (v19 < 8)
              {
                v132 = v21;
                goto LABEL_96;
              }

              v133 = v19 >> 3;
              if ((v133 - 1) <= 2)
              {
                break;
              }

              v132 = (v21 + 8 * (v133 & 0x1FFFFFFC));
              v134 = v133 - (v133 & 0x1FFFFFFC);
              v135 = v21 + 1;
              v136 = v133 & 0x1FFFFFFC;
              do
              {
                v135[-1] = v131;
                *v135 = v131;
                v135 += 2;
                v136 -= 4;
              }

              while (v136);
              if ((v133 & 0x1FFFFFFC) != v133)
              {
                goto LABEL_95;
              }

LABEL_96:
              if ((v19 & 4) != 0)
              {
                v132->i32[0] = v130;
                v132 = (v132 + 4);
                if ((v19 & 2) == 0)
                {
LABEL_98:
                  if (v19)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_99;
                }
              }

              else if ((v19 & 2) == 0)
              {
                goto LABEL_98;
              }

              v132->i8[0] = v26;
              v132->i8[1] = v26;
              v132 = (v132 + 2);
              if (v19)
              {
LABEL_103:
                v132->i8[0] = v26;
                if (!--v6)
                {
                  return v13 == 0xFFFF;
                }

                goto LABEL_104;
              }

LABEL_99:
              if (!--v6)
              {
                return v13 == 0xFFFF;
              }

LABEL_104:
              v129 -= v19;
              v20 = (v20 + a3);
              v19 = v8;
              v21 = v20;
              if (v129 < v8)
              {
                v21 = v20;
                v19 = v8;
LABEL_106:
                if (v129 < 8)
                {
                  a2 = v21;
                  goto LABEL_114;
                }

                v137 = v129 >> 3;
                if ((v137 - 1) <= 2)
                {
                  a2 = v21;
                  v138 = v129 >> 3;
                  goto LABEL_113;
                }

                a2 = (v21 + 8 * (v137 & 0x1FFFFFFC));
                v138 = v137 - (v137 & 0x1FFFFFFC);
                v139 = vdupq_lane_s64(v130, 0);
                v140 = v21 + 1;
                v141 = v137 & 0x1FFFFFFC;
                do
                {
                  v140[-1] = v139;
                  *v140 = v139;
                  v140 += 2;
                  v141 -= 4;
                }

                while (v141);
                if ((v137 & 0x1FFFFFFC) != v137)
                {
                  do
                  {
LABEL_113:
                    a2->i64[0] = v130;
                    a2 = (a2 + 8);
                    --v138;
                  }

                  while (v138);
                }

LABEL_114:
                if ((v129 & 4) != 0)
                {
                  a2->i32[0] = v130;
                  a2 = (a2 + 4);
                  if ((v129 & 2) != 0)
                  {
                    goto LABEL_119;
                  }

LABEL_116:
                  v19 -= v129;
                  if (v129)
                  {
LABEL_120:
                    a2->i8[0] = v26;
                    a2 = (a2 + 1);
                  }
                }

                else
                {
                  if ((v129 & 2) == 0)
                  {
                    goto LABEL_116;
                  }

LABEL_119:
                  a2->i8[0] = v26;
                  a2->i8[1] = v26;
                  a2 = (a2 + 2);
                  v19 -= v129;
                  if (v129)
                  {
                    goto LABEL_120;
                  }
                }

                goto LABEL_9;
              }
            }

            v132 = v21;
            v134 = v19 >> 3;
            do
            {
LABEL_95:
              v132->i64[0] = v130;
              v132 = (v132 + 8);
              --v134;
            }

            while (v134);
            goto LABEL_96;
          }

          if (v12 < v11)
          {
            v95 = *v12++;
            v96 = bswap32(v95);
LABEL_85:
            v9 |= v96 << -v10;
            v10 += 32;
            goto LABEL_86;
          }

          v97 = a1[4];
          if (v12 >= v97)
          {
            v96 = 0;
            goto LABEL_85;
          }

          v98 = v97 - v12;
          if (v97 - v12 < 4)
          {
            v96 = 0;
            v99 = 32;
            v100 = v12;
            goto LABEL_82;
          }

          if (v98 >= 0x20)
          {
            v101 = v98 & 0xFFFFFFFFFFFFFFE0;
            v99 = 32 - 8 * (v98 & 0xFFFFFFE0);
            v102 = xmmword_277875230;
            v103 = xmmword_277875240;
            v104 = xmmword_277875250;
            v105 = 0uLL;
            v106 = 0uLL;
            v107 = xmmword_277875260;
            v108 = (v12 + 4);
            v109 = v98 & 0xFFFFFFFFFFFFFFE0;
            v110 = 0uLL;
            v111 = 0uLL;
            v112 = 0uLL;
            v113 = 0uLL;
            v114 = 0uLL;
            v115 = 0uLL;
            do
            {
              v116 = v108[-1];
              v106 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_277875270), vaddq_s32(v104, v15)), v106);
              v105 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_277875280), vaddq_s32(v107, v15)), v105);
              v110 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_277875290), vaddq_s32(v103, v15)), v110);
              v111 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v116, xmmword_2778752A0), vaddq_s32(v102, v15)), v111);
              v113 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_277875270), vaddq_s32(v104, v17)), v113);
              v112 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_277875280), vaddq_s32(v107, v17)), v112);
              v114 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_277875290), vaddq_s32(v103, v17)), v114);
              v115 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v108, xmmword_2778752A0), vaddq_s32(v102, v17)), v115);
              v107 = vaddq_s32(v107, v18);
              v104 = vaddq_s32(v104, v18);
              v103 = vaddq_s32(v103, v18);
              v108 += 2;
              v102 = vaddq_s32(v102, v18);
              v109 -= 32;
            }

            while (v109);
            v117 = vorrq_s8(v112, v105);
            v5 = vorrq_s8(v114, v110);
            v118 = vorrq_s8(vorrq_s8(v117, v5), vorrq_s8(vorrq_s8(v113, v106), vorrq_s8(v115, v111)));
            v119 = vorr_s8(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
            v96 = v119.i32[0] | v119.i32[1];
            if (v98 == v101)
            {
              goto LABEL_84;
            }

            if ((v98 & 0x1C) == 0)
            {
              v100 = (v12 + v101);
LABEL_82:
              v127 = v99 - 8;
              do
              {
                v128 = *v100;
                v100 = (v100 + 1);
                v96 |= v128 << v127;
                v127 -= 8;
              }

              while (v100 != a1[4]);
LABEL_84:
              v12 = a1[4];
              goto LABEL_85;
            }
          }

          else
          {
            v96 = 0;
            v101 = 0;
            v99 = 32;
          }

          v120 = vdupq_n_s32(v99);
          v99 = 32 - 8 * (v98 & 0xFFFFFFFC);
          v100 = (v12 + (v98 & 0xFFFFFFFFFFFFFFFCLL));
          v121 = vaddq_s32(v120, xmmword_277875250);
          v122 = v96;
          v123 = (v12 + v101);
          v124 = v101 - (v98 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v125 = *v123++;
            v5.i32[0] = v125;
            v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
            v122 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v121, v15)), v122);
            v121 = vaddq_s32(v121, v16);
            v124 += 4;
          }

          while (v124);
          v126 = vorr_s8(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
          v96 = v126.i32[0] | v126.i32[1];
          if (v98 == (v98 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_84;
          }

          goto LABEL_82;
        }

        v9 <<= v25;
        v10 -= v25;
        if (v10 >= 0)
        {
LABEL_63:
          v27 = HIDWORD(v9);
          v61 = v60;
          goto LABEL_64;
        }

        if (v12 < v11)
        {
          v62 = *v12++;
          v63 = bswap32(v62);
LABEL_62:
          v9 |= v63 << -v10;
          v10 += 32;
          goto LABEL_63;
        }

        v64 = a1[4];
        if (v12 >= v64)
        {
          v63 = 0;
          goto LABEL_62;
        }

        v65 = v64 - v12;
        if ((v64 - v12) < 4)
        {
          v63 = 0;
          v66 = 32;
          v67 = v12;
          goto LABEL_59;
        }

        if (v65 >= 0x20)
        {
          v68 = v65 & 0xFFFFFFFFFFFFFFE0;
          v69 = (v12 + 4);
          v70 = 0uLL;
          v71 = 0uLL;
          v72 = v65 & 0xFFFFFFFFFFFFFFE0;
          v73 = xmmword_277875260;
          v74 = xmmword_277875250;
          v75 = xmmword_277875240;
          v76 = xmmword_277875230;
          v77 = 0uLL;
          v78 = 0uLL;
          v79 = 0uLL;
          v66 = 32 - 8 * (v65 & 0xFFFFFFE0);
          v80 = 0uLL;
          v81 = 0uLL;
          v82 = 0uLL;
          do
          {
            v83 = v69[-1];
            v71 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875270), vaddq_s32(v74, v15)), v71);
            v70 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875280), vaddq_s32(v73, v15)), v70);
            v77 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875290), vaddq_s32(v75, v15)), v77);
            v78 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_2778752A0), vaddq_s32(v76, v15)), v78);
            v80 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875270), vaddq_s32(v74, v17)), v80);
            v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875280), vaddq_s32(v73, v17)), v79);
            v81 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875290), vaddq_s32(v75, v17)), v81);
            v82 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_2778752A0), vaddq_s32(v76, v17)), v82);
            v73 = vaddq_s32(v73, v18);
            v74 = vaddq_s32(v74, v18);
            v75 = vaddq_s32(v75, v18);
            v69 += 2;
            v76 = vaddq_s32(v76, v18);
            v72 -= 32;
          }

          while (v72);
          v5 = vorrq_s8(v81, v77);
          v84 = vorrq_s8(vorrq_s8(vorrq_s8(v79, v70), v5), vorrq_s8(vorrq_s8(v80, v71), vorrq_s8(v82, v78)));
          v85 = vorr_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
          v63 = v85.i32[0] | v85.i32[1];
          if (v65 == v68)
          {
            goto LABEL_61;
          }

          if ((v65 & 0x1C) == 0)
          {
            v67 = (v12 + v68);
LABEL_59:
            v93 = v66 - 8;
            do
            {
              v94 = *v67;
              v67 = (v67 + 1);
              v63 |= v94 << v93;
              v93 -= 8;
            }

            while (v67 != v64);
LABEL_61:
            v12 = a1[4];
            goto LABEL_62;
          }
        }

        else
        {
          v63 = 0;
          v68 = 0;
          v66 = 32;
        }

        v86 = vdupq_n_s32(v66);
        v66 = 32 - 8 * (v65 & 0xFFFFFFFC);
        v67 = (v12 + (v65 & 0xFFFFFFFFFFFFFFFCLL));
        v87 = vaddq_s32(v86, xmmword_277875250);
        v88 = v63;
        v89 = (v12 + v68);
        v90 = v68 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v91 = *v89++;
          v5.i32[0] = v91;
          v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
          v88 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v87, v15)), v88);
          v87 = vaddq_s32(v87, v16);
          v90 += 4;
        }

        while (v90);
        v92 = vorr_s8(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
        v63 = v92.i32[0] | v92.i32[1];
        if (v65 == (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_61;
        }

        goto LABEL_59;
      }

      v28 = v25 + 1;
      v9 <<= v28;
      v10 -= v28;
      if (v10 < 0)
      {
        if (v12 < v11)
        {
          v22 = *v12++;
          v23 = bswap32(v22);
        }

        else
        {
          v29 = a1[4];
          if (v12 >= v29)
          {
            v23 = 0;
          }

          else
          {
            v30 = v29 - v12;
            if ((v29 - v12) < 4)
            {
              v23 = 0;
              v31 = 32;
              v32 = v12;
              goto LABEL_34;
            }

            if (v30 >= 0x20)
            {
              v33 = v30 & 0xFFFFFFFFFFFFFFE0;
              v31 = 32 - 8 * (v30 & 0xFFFFFFE0);
              v34 = xmmword_277875230;
              v35 = xmmword_277875240;
              v36 = xmmword_277875250;
              v37 = 0uLL;
              v38 = 0uLL;
              v39 = xmmword_277875260;
              v40 = (v12 + 4);
              v41 = v30 & 0xFFFFFFFFFFFFFFE0;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
              v45 = 0uLL;
              v46 = 0uLL;
              v47 = 0uLL;
              do
              {
                v48 = v40[-1];
                v38 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875270), vaddq_s32(v36, v15)), v38);
                v37 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875280), vaddq_s32(v39, v15)), v37);
                v42 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875290), vaddq_s32(v35, v15)), v42);
                v43 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_2778752A0), vaddq_s32(v34, v15)), v43);
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875270), vaddq_s32(v36, v17)), v45);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875280), vaddq_s32(v39, v17)), v44);
                v46 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875290), vaddq_s32(v35, v17)), v46);
                v47 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_2778752A0), vaddq_s32(v34, v17)), v47);
                v39 = vaddq_s32(v39, v18);
                v36 = vaddq_s32(v36, v18);
                v35 = vaddq_s32(v35, v18);
                v40 += 2;
                v34 = vaddq_s32(v34, v18);
                v41 -= 32;
              }

              while (v41);
              v49 = vorrq_s8(v44, v37);
              v5 = vorrq_s8(v46, v42);
              v50 = vorrq_s8(vorrq_s8(v49, v5), vorrq_s8(vorrq_s8(v45, v38), vorrq_s8(v47, v43)));
              *v50.i8 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
              v23 = v50.i32[0] | v50.i32[1];
              if (v30 != v33)
              {
                if ((v30 & 0x1C) == 0)
                {
                  v32 = (v12 + v33);
                  goto LABEL_34;
                }

                goto LABEL_29;
              }
            }

            else
            {
              v23 = 0;
              v33 = 0;
              v31 = 32;
LABEL_29:
              v51 = vdupq_n_s32(v31);
              v31 = 32 - 8 * (v30 & 0xFFFFFFFC);
              v32 = (v12 + (v30 & 0xFFFFFFFFFFFFFFFCLL));
              v52 = vaddq_s32(v51, xmmword_277875250);
              v53 = v23;
              v54 = (v12 + v33);
              v55 = v33 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v56 = *v54++;
                v5.i32[0] = v56;
                v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                v53 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v52, v15)), v53);
                v52 = vaddq_s32(v52, v16);
                v55 += 4;
              }

              while (v55);
              v57 = vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
              v23 = v57.i32[0] | v57.i32[1];
              if (v30 != (v30 & 0xFFFFFFFFFFFFFFFCLL))
              {
LABEL_34:
                v58 = v31 - 8;
                do
                {
                  v59 = *v32;
                  v32 = (v32 + 1);
                  v23 |= v59 << v58;
                  v58 -= 8;
                }

                while (v32 != v29);
              }
            }

            v12 = a1[4];
          }
        }

        v9 |= v23 << -v10;
        v10 += 32;
      }

      v21->i8[0] = v26;
      v21 = (v21 + 1);
      --v19;
    }

    while (v19);
    if (--v6)
    {
      a2 = (v20 + a3);
      continue;
    }

    return v13 == 0xFFFF;
  }
}

BOOL decodeIntAlpha<8,unsigned short,false>(uint64_t *a1, int64x2_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v6 = 2 * a4;
  v7 = v6 == a3;
  if (v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  if (v7)
  {
    v9 = a5;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 * a4;
  v11 = *a1;
  v12 = *(a1 + 2);
  v14 = a1[2];
  v13 = a1[3];
  v15 = 255;
  LOBYTE(v16) = -1;
  v17.i64[0] = 0x700000007;
  v17.i64[1] = 0x700000007;
  v18.i64[0] = 0x1F0000001FLL;
  v18.i64[1] = 0x1F0000001FLL;
  v19.i64[0] = 0x8700000087;
  v19.i64[1] = 0x8700000087;
  v20.i64[0] = 0xFFFFFF00FFFFFF00;
  v20.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v21 = v10;
    v22 = a2;
LABEL_9:
    v23 = a2;
    do
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        v26 = 9;
        v16 = ((SHIDWORD(v11) >> 23) + v16);
        v15 &= v16;
        v27 = v16 | (v16 << 8);
        v28 = HIDWORD(v11) << 9;
        if (((HIDWORD(v11) << 9) & 0x80000000) == 0)
        {
LABEL_37:
          if (v28 >> 27)
          {
            v61 = 5;
          }

          else
          {
            v61 = 16;
          }

          v11 <<= v61 + v26;
          v12 -= v61 + v26;
          if (v12 < 0)
          {
            if (v14 < v13)
            {
              v62 = *v14++;
              v63 = bswap32(v62);
              goto LABEL_61;
            }

            v64 = a1[4];
            if (v14 >= v64)
            {
              v63 = 0;
            }

            else
            {
              v65 = v64 - v14;
              if ((v64 - v14) < 4)
              {
                v63 = 0;
                v66 = 32;
                v67 = v14;
                goto LABEL_58;
              }

              if (v65 >= 0x20)
              {
                v68 = v65 & 0xFFFFFFFFFFFFFFE0;
                v69 = (v14 + 4);
                v70 = 0uLL;
                v71 = 0uLL;
                v72 = v65 & 0xFFFFFFFFFFFFFFE0;
                v73 = xmmword_277875260;
                v74 = xmmword_277875250;
                v75 = xmmword_277875240;
                v76 = xmmword_277875230;
                v77 = 0uLL;
                v78 = 0uLL;
                v79 = 0uLL;
                v66 = 32 - 8 * (v65 & 0xFFFFFFE0);
                v80 = 0uLL;
                v81 = 0uLL;
                v82 = 0uLL;
                do
                {
                  v83 = v69[-1];
                  v71 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875270), vaddq_s32(v74, v17)), v71);
                  v70 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875280), vaddq_s32(v73, v17)), v70);
                  v77 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_277875290), vaddq_s32(v75, v17)), v77);
                  v78 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v83, xmmword_2778752A0), vaddq_s32(v76, v17)), v78);
                  v80 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875270), vaddq_s32(v74, v19)), v80);
                  v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875280), vaddq_s32(v73, v19)), v79);
                  v81 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_277875290), vaddq_s32(v75, v19)), v81);
                  v82 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v69, xmmword_2778752A0), vaddq_s32(v76, v19)), v82);
                  v73 = vaddq_s32(v73, v20);
                  v74 = vaddq_s32(v74, v20);
                  v75 = vaddq_s32(v75, v20);
                  v69 += 2;
                  v76 = vaddq_s32(v76, v20);
                  v72 -= 32;
                }

                while (v72);
                v5 = vorrq_s8(v81, v77);
                v84 = vorrq_s8(vorrq_s8(vorrq_s8(v79, v70), v5), vorrq_s8(vorrq_s8(v80, v71), vorrq_s8(v82, v78)));
                *v84.i8 = vorr_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
                v63 = v84.i32[0] | v84.i32[1];
                if (v65 != v68)
                {
                  if ((v65 & 0x1C) == 0)
                  {
                    v67 = (v14 + v68);
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
                v63 = 0;
                v68 = 0;
                v66 = 32;
LABEL_53:
                v85 = vdupq_n_s32(v66);
                v66 = 32 - 8 * (v65 & 0xFFFFFFFC);
                v67 = (v14 + (v65 & 0xFFFFFFFFFFFFFFFCLL));
                v86 = vaddq_s32(v85, xmmword_277875250);
                v87 = v63;
                v88 = (v14 + v68);
                v89 = v68 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v90 = *v88++;
                  v5.i32[0] = v90;
                  v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                  v87 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v86, v17)), v87);
                  v86 = vaddq_s32(v86, v18);
                  v89 += 4;
                }

                while (v89);
                v91 = vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
                v63 = v91.i32[0] | v91.i32[1];
                if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
                {
LABEL_58:
                  v92 = v66 - 8;
                  do
                  {
                    v93 = *v67;
                    v67 = (v67 + 1);
                    v63 |= v93 << v92;
                    v92 -= 8;
                  }

                  while (v67 != v64);
                }
              }

              v14 = a1[4];
            }

LABEL_61:
            v11 |= v63 << -v12;
            v12 += 32;
          }

          v94 = (v28 >> -v61) + 1;
          v95 = vqtbl1q_s8(v27, xmmword_2778DE0B0).u64[0];
          if (v94 < v21)
          {
            goto LABEL_82;
          }

          v96 = vdupq_lane_s64(v95, 0);
          while (2)
          {
            if (v21 < 8)
            {
              i64 = v23;
              goto LABEL_72;
            }

            v98 = v21 >> 3;
            if ((v98 - 1) <= 2)
            {
              i64 = v23;
              v99 = v21 >> 3;
              goto LABEL_71;
            }

            i64 = v23[v98 & 0x1FFFFFFC].i64;
            v99 = v98 - (v98 & 0x1FFFFFFC);
            v100 = v23 + 2;
            v101 = v98 & 0x1FFFFFFC;
            do
            {
              v100[-2] = v96;
              v100[-1] = v96;
              *v100 = v96;
              v100[1] = v96;
              v100 += 4;
              v101 -= 4;
            }

            while (v101);
            if ((v98 & 0x1FFFFFFC) != v98)
            {
              do
              {
LABEL_71:
                *i64 = v95;
                i64[1] = v95;
                i64 += 2;
                --v99;
              }

              while (v99);
            }

LABEL_72:
            if ((v21 & 4) != 0)
            {
              *i64++ = v95;
              if ((v21 & 2) != 0)
              {
                goto LABEL_78;
              }

LABEL_74:
              if ((v21 & 1) == 0)
              {
                goto LABEL_75;
              }

LABEL_79:
              *i64 = v27;
              if (!--v8)
              {
                return v15 == 255;
              }
            }

            else
            {
              if ((v21 & 2) == 0)
              {
                goto LABEL_74;
              }

LABEL_78:
              *i64 = v95;
              i64 = (i64 + 4);
              if (v21)
              {
                goto LABEL_79;
              }

LABEL_75:
              if (!--v8)
              {
                return v15 == 255;
              }
            }

            v94 -= v21;
            v22 = (v22 + a3);
            v21 = v10;
            v23 = v22;
            if (v94 < v10)
            {
              v23 = v22;
              v21 = v10;
LABEL_82:
              if (v94 < 8)
              {
                a2 = v23;
                goto LABEL_91;
              }

              v102 = v94 >> 3;
              if ((v102 - 1) <= 2)
              {
                a2 = v23;
                v103 = v94 >> 3;
                goto LABEL_89;
              }

              a2 = &v23[v102 & 0x1FFFFFFC];
              v103 = v102 - (v102 & 0x1FFFFFFC);
              v104 = vdupq_lane_s64(v95, 0);
              v105 = v23 + 2;
              v106 = v102 & 0x1FFFFFFC;
              do
              {
                v105[-2] = v104;
                v105[-1] = v104;
                *v105 = v104;
                v105[1] = v104;
                v105 += 4;
                v106 -= 4;
              }

              while (v106);
              if ((v102 & 0x1FFFFFFC) != v102)
              {
LABEL_89:
                v107 = vdupq_lane_s64(v95, 0);
                do
                {
                  *a2++ = v107;
                  --v103;
                }

                while (v103);
              }

LABEL_91:
              if ((v94 & 4) != 0)
              {
                a2->i64[0] = v95;
                a2 = (a2 + 8);
                if ((v94 & 2) != 0)
                {
                  goto LABEL_96;
                }

LABEL_93:
                v21 -= v94;
                if (v94)
                {
LABEL_97:
                  a2->i16[0] = v27;
                  a2 = (a2 + 2);
                }
              }

              else
              {
                if ((v94 & 2) == 0)
                {
                  goto LABEL_93;
                }

LABEL_96:
                a2->i32[0] = v95;
                a2 = (a2 + 4);
                v21 -= v94;
                if (v94)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_9;
            }

            continue;
          }
        }
      }

      else
      {
        v26 = 5;
        v16 = (smallAlphaDiffVLDTable_8b[v11 >> 59] + v16);
        v15 &= v16;
        v27 = v16 | (v16 << 8);
        v28 = 32 * HIDWORD(v11);
        if (((32 * HIDWORD(v11)) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      v11 <<= v26 + 1;
      v12 -= v26 + 1;
      if (v12 < 0)
      {
        if (v14 < v13)
        {
          v24 = *v14++;
          v25 = bswap32(v24);
        }

        else
        {
          v29 = a1[4];
          if (v14 < v29)
          {
            v30 = v29 - v14;
            if ((v29 - v14) < 4)
            {
              v25 = 0;
              v31 = 32;
              v32 = v14;
              goto LABEL_34;
            }

            if (v30 >= 0x20)
            {
              v33 = v30 & 0xFFFFFFFFFFFFFFE0;
              v31 = 32 - 8 * (v30 & 0xFFFFFFE0);
              v34 = xmmword_277875230;
              v35 = xmmword_277875240;
              v36 = xmmword_277875250;
              v37 = 0uLL;
              v38 = 0uLL;
              v39 = xmmword_277875260;
              v40 = (v14 + 4);
              v41 = v30 & 0xFFFFFFFFFFFFFFE0;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
              v45 = 0uLL;
              v46 = 0uLL;
              v47 = 0uLL;
              do
              {
                v48 = v40[-1];
                v38 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875270), vaddq_s32(v36, v17)), v38);
                v37 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875280), vaddq_s32(v39, v17)), v37);
                v42 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_277875290), vaddq_s32(v35, v17)), v42);
                v43 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v48, xmmword_2778752A0), vaddq_s32(v34, v17)), v43);
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875270), vaddq_s32(v36, v19)), v45);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875280), vaddq_s32(v39, v19)), v44);
                v46 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_277875290), vaddq_s32(v35, v19)), v46);
                v47 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v40, xmmword_2778752A0), vaddq_s32(v34, v19)), v47);
                v39 = vaddq_s32(v39, v20);
                v36 = vaddq_s32(v36, v20);
                v35 = vaddq_s32(v35, v20);
                v40 += 2;
                v34 = vaddq_s32(v34, v20);
                v41 -= 32;
              }

              while (v41);
              v49 = vorrq_s8(v44, v37);
              v5 = vorrq_s8(v46, v42);
              v50 = vorrq_s8(vorrq_s8(v49, v5), vorrq_s8(vorrq_s8(v45, v38), vorrq_s8(v47, v43)));
              v51 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
              v25 = v51.i32[0] | v51.i32[1];
              if (v30 == v33)
              {
                goto LABEL_36;
              }

              if ((v30 & 0x1C) == 0)
              {
                v32 = (v14 + v33);
LABEL_34:
                v59 = v31 - 8;
                do
                {
                  v60 = *v32;
                  v32 = (v32 + 1);
                  v25 |= v60 << v59;
                  v59 -= 8;
                }

                while (v32 != v29);
LABEL_36:
                v14 = a1[4];
                goto LABEL_11;
              }
            }

            else
            {
              v25 = 0;
              v33 = 0;
              v31 = 32;
            }

            v52 = vdupq_n_s32(v31);
            v31 = 32 - 8 * (v30 & 0xFFFFFFFC);
            v32 = (v14 + (v30 & 0xFFFFFFFFFFFFFFFCLL));
            v53 = vaddq_s32(v52, xmmword_277875250);
            v54 = v25;
            v55 = (v14 + v33);
            v56 = v33 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v57 = *v55++;
              v5.i32[0] = v57;
              v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
              v54 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v53, v17)), v54);
              v53 = vaddq_s32(v53, v18);
              v56 += 4;
            }

            while (v56);
            v58 = vorr_s8(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
            v25 = v58.i32[0] | v58.i32[1];
            if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          v25 = 0;
        }

LABEL_11:
        v11 |= v25 << -v12;
        v12 += 32;
      }

      v23->i16[0] = v27;
      v23 = (v23 + 2);
      --v21;
    }

    while (v21);
    if (--v8)
    {
      a2 = (v22 + a3);
      continue;
    }

    return v15 == 255;
  }
}

BOOL decodeIntAlpha<16,unsigned short,false>(uint64_t *a1, int64x2_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v6 = 2 * a4;
  v7 = v6 == a3;
  if (v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  if (v7)
  {
    v9 = a5;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 * a4;
  v11 = *a1;
  v12 = *(a1 + 2);
  v14 = a1[2];
  v13 = a1[3];
  LOWORD(v15) = -1;
  LOWORD(v16) = -1;
  v17.i64[0] = 0x700000007;
  v17.i64[1] = 0x700000007;
  v18.i64[0] = 0x1F0000001FLL;
  v18.i64[1] = 0x1F0000001FLL;
  v19.i64[0] = 0x8700000087;
  v19.i64[1] = 0x8700000087;
  v20.i64[0] = 0xFFFFFF00FFFFFF00;
  v20.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v21 = v10;
    v22 = a2;
LABEL_9:
    v23 = a2;
    do
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        v26 = 17;
        v27 = (SHIDWORD(v11) >> 15) + v16;
        v16 = v27;
        v15 = (v27 & v15);
        LODWORD(v28) = HIDWORD(v11) << 17;
        if (((HIDWORD(v11) << 17) & 0x80000000) == 0)
        {
LABEL_37:
          if (v28 >> 27)
          {
            v62 = 5;
          }

          else
          {
            v62 = 16;
          }

          v63 = v62 + v26;
          if ((v62 + v26) >= 0x21)
          {
            v11 <<= v26;
            v12 -= v26;
            if (v12 < 0)
            {
              if (v14 < v13)
              {
                v64 = *v14++;
                v65 = bswap32(v64);
                goto LABEL_62;
              }

              v66 = a1[4];
              if (v14 >= v66)
              {
                v65 = 0;
              }

              else
              {
                v67 = v66 - v14;
                if ((v66 - v14) < 4)
                {
                  v65 = 0;
                  v68 = 32;
                  v69 = v14;
                  goto LABEL_59;
                }

                if (v67 >= 0x20)
                {
                  v70 = v67 & 0xFFFFFFFFFFFFFFE0;
                  v71 = (v14 + 4);
                  v72 = 0uLL;
                  v73 = 0uLL;
                  v74 = v67 & 0xFFFFFFFFFFFFFFE0;
                  v75 = xmmword_277875260;
                  v76 = xmmword_277875250;
                  v77 = xmmword_277875240;
                  v78 = xmmword_277875230;
                  v79 = 0uLL;
                  v80 = 0uLL;
                  v81 = 0uLL;
                  v68 = 32 - 8 * (v67 & 0xFFFFFFE0);
                  v82 = 0uLL;
                  v83 = 0uLL;
                  v84 = 0uLL;
                  do
                  {
                    v85 = v71[-1];
                    v73 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v85, xmmword_277875270), vaddq_s32(v76, v17)), v73);
                    v72 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v85, xmmword_277875280), vaddq_s32(v75, v17)), v72);
                    v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v85, xmmword_277875290), vaddq_s32(v77, v17)), v79);
                    v80 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v85, xmmword_2778752A0), vaddq_s32(v78, v17)), v80);
                    v82 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v71, xmmword_277875270), vaddq_s32(v76, v19)), v82);
                    v81 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v71, xmmword_277875280), vaddq_s32(v75, v19)), v81);
                    v83 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v71, xmmword_277875290), vaddq_s32(v77, v19)), v83);
                    v84 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v71, xmmword_2778752A0), vaddq_s32(v78, v19)), v84);
                    v75 = vaddq_s32(v75, v20);
                    v76 = vaddq_s32(v76, v20);
                    v77 = vaddq_s32(v77, v20);
                    v71 += 2;
                    v78 = vaddq_s32(v78, v20);
                    v74 -= 32;
                  }

                  while (v74);
                  v5 = vorrq_s8(v83, v79);
                  v86 = vorrq_s8(vorrq_s8(vorrq_s8(v81, v72), v5), vorrq_s8(vorrq_s8(v82, v73), vorrq_s8(v84, v80)));
                  v87 = vorr_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
                  v65 = v87.i32[0] | v87.i32[1];
                  if (v67 != v70)
                  {
                    if ((v67 & 0x1C) == 0)
                    {
                      v69 = (v14 + v70);
                      goto LABEL_59;
                    }

                    goto LABEL_54;
                  }
                }

                else
                {
                  v65 = 0;
                  v70 = 0;
                  v68 = 32;
LABEL_54:
                  v88 = vdupq_n_s32(v68);
                  v68 = 32 - 8 * (v67 & 0xFFFFFFFC);
                  v69 = (v14 + (v67 & 0xFFFFFFFFFFFFFFFCLL));
                  v89 = vaddq_s32(v88, xmmword_277875250);
                  v90 = v65;
                  v91 = (v14 + v70);
                  v92 = v70 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v93 = *v91++;
                    v5.i32[0] = v93;
                    v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                    v90 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v89, v17)), v90);
                    v89 = vaddq_s32(v89, v18);
                    v92 += 4;
                  }

                  while (v92);
                  v94 = vorr_s8(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
                  v65 = v94.i32[0] | v94.i32[1];
                  if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
                  {
LABEL_59:
                    v95 = v68 - 8;
                    do
                    {
                      v96 = *v69;
                      v69 = (v69 + 1);
                      v65 |= v96 << v95;
                      v95 -= 8;
                    }

                    while (v69 != v66);
                  }
                }

                v14 = a1[4];
              }

LABEL_62:
              v11 |= v65 << -v12;
              v12 += 32;
            }

            v28 = HIDWORD(v11);
            v63 = v62;
          }

          v11 <<= v63;
          v12 -= v63;
          if (v12 < 0)
          {
            if (v14 < v13)
            {
              v97 = *v14++;
              v98 = bswap32(v97);
              goto LABEL_85;
            }

            v99 = a1[4];
            if (v14 >= v99)
            {
              v98 = 0;
            }

            else
            {
              v100 = v99 - v14;
              if (v99 - v14 < 4)
              {
                v98 = 0;
                v101 = 32;
                v102 = v14;
                goto LABEL_82;
              }

              if (v100 >= 0x20)
              {
                v103 = v100 & 0xFFFFFFFFFFFFFFE0;
                v101 = 32 - 8 * (v100 & 0xFFFFFFE0);
                v104 = xmmword_277875230;
                v105 = xmmword_277875240;
                v106 = xmmword_277875250;
                v107 = 0uLL;
                v108 = 0uLL;
                v109 = xmmword_277875260;
                v110 = (v14 + 4);
                v111 = v100 & 0xFFFFFFFFFFFFFFE0;
                v112 = 0uLL;
                v113 = 0uLL;
                v114 = 0uLL;
                v115 = 0uLL;
                v116 = 0uLL;
                v117 = 0uLL;
                do
                {
                  v118 = v110[-1];
                  v108 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v118, xmmword_277875270), vaddq_s32(v106, v17)), v108);
                  v107 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v118, xmmword_277875280), vaddq_s32(v109, v17)), v107);
                  v112 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v118, xmmword_277875290), vaddq_s32(v105, v17)), v112);
                  v113 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v118, xmmword_2778752A0), vaddq_s32(v104, v17)), v113);
                  v115 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v110, xmmword_277875270), vaddq_s32(v106, v19)), v115);
                  v114 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v110, xmmword_277875280), vaddq_s32(v109, v19)), v114);
                  v116 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v110, xmmword_277875290), vaddq_s32(v105, v19)), v116);
                  v117 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v110, xmmword_2778752A0), vaddq_s32(v104, v19)), v117);
                  v109 = vaddq_s32(v109, v20);
                  v106 = vaddq_s32(v106, v20);
                  v105 = vaddq_s32(v105, v20);
                  v110 += 2;
                  v104 = vaddq_s32(v104, v20);
                  v111 -= 32;
                }

                while (v111);
                v119 = vorrq_s8(v114, v107);
                v5 = vorrq_s8(v116, v112);
                v120 = vorrq_s8(vorrq_s8(v119, v5), vorrq_s8(vorrq_s8(v115, v108), vorrq_s8(v117, v113)));
                *v120.i8 = vorr_s8(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
                v98 = v120.i32[0] | v120.i32[1];
                if (v100 != v103)
                {
                  if ((v100 & 0x1C) == 0)
                  {
                    v102 = (v14 + v103);
                    goto LABEL_82;
                  }

                  goto LABEL_77;
                }
              }

              else
              {
                v98 = 0;
                v103 = 0;
                v101 = 32;
LABEL_77:
                v121 = vdupq_n_s32(v101);
                v101 = 32 - 8 * (v100 & 0xFFFFFFFC);
                v102 = (v14 + (v100 & 0xFFFFFFFFFFFFFFFCLL));
                v122 = vaddq_s32(v121, xmmword_277875250);
                v123 = v98;
                v124 = (v14 + v103);
                v125 = v103 - (v100 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v126 = *v124++;
                  v5.i32[0] = v126;
                  v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
                  v123 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v122, v17)), v123);
                  v122 = vaddq_s32(v122, v18);
                  v125 += 4;
                }

                while (v125);
                v127 = vorr_s8(*v123.i8, *&vextq_s8(v123, v123, 8uLL));
                v98 = v127.i32[0] | v127.i32[1];
                if (v100 != (v100 & 0xFFFFFFFFFFFFFFFCLL))
                {
LABEL_82:
                  v128 = v101 - 8;
                  do
                  {
                    v129 = *v102;
                    v102 = (v102 + 1);
                    v98 |= v129 << v128;
                    v128 -= 8;
                  }

                  while (v102 != a1[4]);
                }
              }

              v14 = a1[4];
            }

LABEL_85:
            v11 |= v98 << -v12;
            v12 += 32;
          }

          v130 = (v28 >> -v62) + 1;
          v131 = vqtbl1q_s8(v16, xmmword_2778DE0B0).u64[0];
          if (v130 < v21)
          {
            goto LABEL_106;
          }

          v132 = vdupq_lane_s64(v131, 0);
          while (2)
          {
            if (v21 < 8)
            {
              i64 = v23;
              goto LABEL_96;
            }

            v134 = v21 >> 3;
            if ((v134 - 1) <= 2)
            {
              i64 = v23;
              v135 = v21 >> 3;
              goto LABEL_95;
            }

            i64 = v23[v134 & 0x1FFFFFFC].i64;
            v135 = v134 - (v134 & 0x1FFFFFFC);
            v136 = v23 + 2;
            v137 = v134 & 0x1FFFFFFC;
            do
            {
              v136[-2] = v132;
              v136[-1] = v132;
              *v136 = v132;
              v136[1] = v132;
              v136 += 4;
              v137 -= 4;
            }

            while (v137);
            if ((v134 & 0x1FFFFFFC) != v134)
            {
              do
              {
LABEL_95:
                *i64 = v131;
                i64[1] = v131;
                i64 += 2;
                --v135;
              }

              while (v135);
            }

LABEL_96:
            if ((v21 & 4) != 0)
            {
              *i64++ = v131;
              if ((v21 & 2) != 0)
              {
                goto LABEL_102;
              }

LABEL_98:
              if ((v21 & 1) == 0)
              {
                goto LABEL_99;
              }

LABEL_103:
              *i64 = v27;
              if (!--v8)
              {
                return v15 == 0xFFFF;
              }
            }

            else
            {
              if ((v21 & 2) == 0)
              {
                goto LABEL_98;
              }

LABEL_102:
              *i64 = v131;
              i64 = (i64 + 4);
              if (v21)
              {
                goto LABEL_103;
              }

LABEL_99:
              if (!--v8)
              {
                return v15 == 0xFFFF;
              }
            }

            v130 -= v21;
            v22 = (v22 + a3);
            v21 = v10;
            v23 = v22;
            if (v130 < v10)
            {
              v23 = v22;
              v21 = v10;
LABEL_106:
              if (v130 < 8)
              {
                a2 = v23;
                goto LABEL_115;
              }

              v138 = v130 >> 3;
              if ((v138 - 1) <= 2)
              {
                a2 = v23;
                v139 = v130 >> 3;
                goto LABEL_113;
              }

              a2 = &v23[v138 & 0x1FFFFFFC];
              v139 = v138 - (v138 & 0x1FFFFFFC);
              v140 = vdupq_lane_s64(v131, 0);
              v141 = v23 + 2;
              v142 = v138 & 0x1FFFFFFC;
              do
              {
                v141[-2] = v140;
                v141[-1] = v140;
                *v141 = v140;
                v141[1] = v140;
                v141 += 4;
                v142 -= 4;
              }

              while (v142);
              if ((v138 & 0x1FFFFFFC) != v138)
              {
LABEL_113:
                v143 = vdupq_lane_s64(v131, 0);
                do
                {
                  *a2++ = v143;
                  --v139;
                }

                while (v139);
              }

LABEL_115:
              if ((v130 & 4) != 0)
              {
                a2->i64[0] = v131;
                a2 = (a2 + 8);
                if ((v130 & 2) != 0)
                {
                  goto LABEL_120;
                }

LABEL_117:
                v21 -= v130;
                if (v130)
                {
LABEL_121:
                  a2->i16[0] = v27;
                  a2 = (a2 + 2);
                }
              }

              else
              {
                if ((v130 & 2) == 0)
                {
                  goto LABEL_117;
                }

LABEL_120:
                a2->i32[0] = v131;
                a2 = (a2 + 4);
                v21 -= v130;
                if (v130)
                {
                  goto LABEL_121;
                }
              }

              goto LABEL_9;
            }

            continue;
          }
        }
      }

      else
      {
        v26 = 8;
        v27 = smallAlphaDiffVLDTable_16b[HIBYTE(v11)] + v16;
        v16 = v27;
        v15 = (v27 & v15);
        LODWORD(v28) = HIDWORD(v11) << 8;
        if (((HIDWORD(v11) << 8) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }
      }

      v29 = v26 + 1;
      v11 <<= v29;
      v12 -= v29;
      if (v12 < 0)
      {
        if (v14 < v13)
        {
          v24 = *v14++;
          v25 = bswap32(v24);
        }

        else
        {
          v30 = a1[4];
          if (v14 < v30)
          {
            v31 = v30 - v14;
            if ((v30 - v14) < 4)
            {
              v25 = 0;
              v32 = 32;
              v33 = v14;
              goto LABEL_34;
            }

            if (v31 >= 0x20)
            {
              v34 = v31 & 0xFFFFFFFFFFFFFFE0;
              v32 = 32 - 8 * (v31 & 0xFFFFFFE0);
              v35 = xmmword_277875230;
              v36 = xmmword_277875240;
              v37 = xmmword_277875250;
              v38 = 0uLL;
              v39 = 0uLL;
              v40 = xmmword_277875260;
              v41 = (v14 + 4);
              v42 = v31 & 0xFFFFFFFFFFFFFFE0;
              v43 = 0uLL;
              v44 = 0uLL;
              v45 = 0uLL;
              v46 = 0uLL;
              v47 = 0uLL;
              v48 = 0uLL;
              do
              {
                v49 = v41[-1];
                v39 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v49, xmmword_277875270), vaddq_s32(v37, v17)), v39);
                v38 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v49, xmmword_277875280), vaddq_s32(v40, v17)), v38);
                v43 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v49, xmmword_277875290), vaddq_s32(v36, v17)), v43);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v49, xmmword_2778752A0), vaddq_s32(v35, v17)), v44);
                v46 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v41, xmmword_277875270), vaddq_s32(v37, v19)), v46);
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v41, xmmword_277875280), vaddq_s32(v40, v19)), v45);
                v47 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v41, xmmword_277875290), vaddq_s32(v36, v19)), v47);
                v48 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v41, xmmword_2778752A0), vaddq_s32(v35, v19)), v48);
                v40 = vaddq_s32(v40, v20);
                v37 = vaddq_s32(v37, v20);
                v36 = vaddq_s32(v36, v20);
                v41 += 2;
                v35 = vaddq_s32(v35, v20);
                v42 -= 32;
              }

              while (v42);
              v50 = vorrq_s8(v45, v38);
              v5 = vorrq_s8(v47, v43);
              v51 = vorrq_s8(vorrq_s8(v50, v5), vorrq_s8(vorrq_s8(v46, v39), vorrq_s8(v48, v44)));
              v52 = vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
              v25 = v52.i32[0] | v52.i32[1];
              if (v31 == v34)
              {
                goto LABEL_36;
              }

              if ((v31 & 0x1C) == 0)
              {
                v33 = (v14 + v34);
LABEL_34:
                v60 = v32 - 8;
                do
                {
                  v61 = *v33;
                  v33 = (v33 + 1);
                  v25 |= v61 << v60;
                  v60 -= 8;
                }

                while (v33 != v30);
LABEL_36:
                v14 = a1[4];
                goto LABEL_11;
              }
            }

            else
            {
              v25 = 0;
              v34 = 0;
              v32 = 32;
            }

            v53 = vdupq_n_s32(v32);
            v32 = 32 - 8 * (v31 & 0xFFFFFFFC);
            v33 = (v14 + (v31 & 0xFFFFFFFFFFFFFFFCLL));
            v54 = vaddq_s32(v53, xmmword_277875250);
            v55 = v25;
            v56 = (v14 + v34);
            v57 = v34 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v58 = *v56++;
              v5.i32[0] = v58;
              v5 = vmovl_u16(*&vmovl_u8(*v5.i8));
              v55 = vorrq_s8(vshlq_u32(v5, vaddq_s32(v54, v17)), v55);
              v54 = vaddq_s32(v54, v18);
              v57 += 4;
            }

            while (v57);
            v59 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
            v25 = v59.i32[0] | v59.i32[1];
            if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          v25 = 0;
        }

LABEL_11:
        v11 |= v25 << -v12;
        v12 += 32;
      }

      v23->i16[0] = v27;
      v23 = (v23 + 2);
      --v21;
    }

    while (v21);
    if (--v8)
    {
      a2 = (v22 + a3);
      continue;
    }

    return v15 == 0xFFFF;
  }
}

BOOL decodeIntAlpha<8,float,false>(uint64_t *a1, int32x2_t *a2, unsigned int a3, unsigned int a4, int a5, double a6, double a7, double a8, double a9, double a10, uint32x4_t a11)
{
  v11 = 4 * a4;
  v12 = v11 == a3;
  if (v11 == a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5;
  }

  if (v12)
  {
    v14 = a5;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 * a4;
  v16 = *a1;
  v17 = *(a1 + 2);
  v19 = a1[2];
  v18 = a1[3];
  v20 = 255;
  LOBYTE(v21) = -1;
  v22.i64[0] = 0x700000007;
  v22.i64[1] = 0x700000007;
  v23.i64[0] = 0x1F0000001FLL;
  v23.i64[1] = 0x1F0000001FLL;
  v24.i64[0] = 0x8700000087;
  v24.i64[1] = 0x8700000087;
  v25.i64[0] = 0xFFFFFF00FFFFFF00;
  v25.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v26 = v15;
    v27 = a2;
    do
    {
      while (1)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          v30 = SHIDWORD(v16) >> 23;
          v31 = 9;
        }

        else
        {
          LOBYTE(v30) = smallAlphaDiffVLDTable_8b[v16 >> 59];
          v31 = 5;
        }

        v21 = (v30 + v21);
        v20 &= v21;
        v32 = v21 * 0.00392156863;
        *&v32 = v32;
        v33 = HIDWORD(v16) << v31;
        if (((HIDWORD(v16) << v31) & 0x80000000) != 0)
        {
          break;
        }

        if (v33 >> 27)
        {
          v39 = 5;
        }

        else
        {
          v39 = 16;
        }

        v16 <<= v39 + v31;
        v17 -= v39 + v31;
        if (v17 >= 0)
        {
          v40 = (v33 >> -v39) + 1;
          if (v40 >= v26)
          {
            goto LABEL_64;
          }

          goto LABEL_29;
        }

        if (v19 < v18)
        {
          v65 = *v19++;
          v66 = bswap32(v65);
          goto LABEL_63;
        }

        v67 = a1[4];
        if (v19 >= v67)
        {
          v66 = 0;
          goto LABEL_63;
        }

        v68 = v67 - v19;
        if ((v67 - v19) >= 4)
        {
          if (v68 < 0x20)
          {
            v66 = 0;
            v73 = 0;
            v69 = 32;
LABEL_55:
            v91 = vdupq_n_s32(v69);
            v69 = 32 - 8 * (v68 & 0xFFFFFFFC);
            v70 = (v19 + (v68 & 0xFFFFFFFFFFFFFFFCLL));
            v92 = vaddq_s32(v91, xmmword_277875250);
            v93 = v66;
            v94 = (v19 + v73);
            v95 = v73 - (v68 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v96 = *v94++;
              a11.i32[0] = v96;
              a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
              v93 = vorrq_s8(vshlq_u32(a11, vaddq_s32(v92, v22)), v93);
              v92 = vaddq_s32(v92, v23);
              v95 += 4;
            }

            while (v95);
            v97 = vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
            v66 = v97.i32[0] | v97.i32[1];
            if (v68 == (v68 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_62;
            }

            goto LABEL_60;
          }

          v73 = v68 & 0xFFFFFFFFFFFFFFE0;
          v74 = (v19 + 4);
          v75 = 0uLL;
          v76 = 0uLL;
          v77 = v68 & 0xFFFFFFFFFFFFFFE0;
          v78 = xmmword_277875260;
          v79 = xmmword_277875240;
          v80 = xmmword_277875250;
          v81 = xmmword_277875230;
          v82 = 0uLL;
          v83 = 0uLL;
          v84 = 0uLL;
          v69 = 32 - 8 * (v68 & 0xFFFFFFE0);
          v85 = 0uLL;
          v86 = 0uLL;
          v87 = 0uLL;
          do
          {
            v88 = v74[-1];
            v76 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v88, xmmword_277875270), vaddq_s32(v80, v22)), v76);
            v75 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v88, xmmword_277875280), vaddq_s32(v78, v22)), v75);
            v82 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v88, xmmword_277875290), vaddq_s32(v79, v22)), v82);
            v83 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v88, xmmword_2778752A0), vaddq_s32(v81, v22)), v83);
            v85 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v74, xmmword_277875270), vaddq_s32(v80, v24)), v85);
            v84 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v74, xmmword_277875280), vaddq_s32(v78, v24)), v84);
            v86 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v74, xmmword_277875290), vaddq_s32(v79, v24)), v86);
            v87 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v74, xmmword_2778752A0), vaddq_s32(v81, v24)), v87);
            v78 = vaddq_s32(v78, v25);
            v80 = vaddq_s32(v80, v25);
            v79 = vaddq_s32(v79, v25);
            v74 += 2;
            v81 = vaddq_s32(v81, v25);
            v77 -= 32;
          }

          while (v77);
          v89 = vorrq_s8(vorrq_s8(vorrq_s8(v84, v75), vorrq_s8(v86, v82)), vorrq_s8(vorrq_s8(v85, v76), vorrq_s8(v87, v83)));
          a11.i64[0] = vextq_s8(v89, v89, 8uLL).u64[0];
          v90 = vorr_s8(*v89.i8, *a11.i8);
          v66 = v90.i32[0] | v90.i32[1];
          if (v68 == v73)
          {
            goto LABEL_62;
          }

          if ((v68 & 0x1C) != 0)
          {
            goto LABEL_55;
          }

          v70 = (v19 + v73);
        }

        else
        {
          v66 = 0;
          v69 = 32;
          v70 = v19;
        }

LABEL_60:
        v98 = v69 - 8;
        do
        {
          v99 = *v70;
          v70 = (v70 + 1);
          v66 |= v99 << v98;
          v98 -= 8;
        }

        while (v70 != v67);
LABEL_62:
        v19 = a1[4];
LABEL_63:
        v16 |= v66 << -v17;
        v17 += 32;
        v40 = (v33 >> -v39) + 1;
        if (v40 >= v26)
        {
LABEL_64:
          v100 = vdup_lane_s32(*&v32, 0);
          while (1)
          {
            if (v26 >= 8)
            {
              v101 = v26 >> 3;
              do
              {
                *a2 = v100;
                a2[1] = v100;
                a2[2] = v100;
                a2[3] = v100;
                a2 += 4;
                --v101;
              }

              while (v101);
            }

            if ((v26 & 4) != 0)
            {
              *a2 = v100;
              a2[1] = v100;
              a2 += 2;
              if ((v26 & 2) == 0)
              {
LABEL_70:
                if (v26)
                {
                  goto LABEL_75;
                }

                goto LABEL_71;
              }
            }

            else if ((v26 & 2) == 0)
            {
              goto LABEL_70;
            }

            *a2++ = v100;
            if (v26)
            {
LABEL_75:
              a2->i32[0] = LODWORD(v32);
              if (!--v13)
              {
                return v20 == 255;
              }

              goto LABEL_76;
            }

LABEL_71:
            if (!--v13)
            {
              return v20 == 255;
            }

LABEL_76:
            v40 -= v26;
            v27 = (v27 + a3);
            v26 = v15;
            a2 = v27;
            if (v40 < v15)
            {
              a2 = v27;
              v26 = v15;
              if (v40 >= 8)
              {
                goto LABEL_78;
              }

              goto LABEL_80;
            }
          }
        }

LABEL_29:
        if (v40 >= 8)
        {
LABEL_78:
          v102 = v40 >> 3;
          v103 = vdup_lane_s32(*&v32, 0);
          do
          {
            *a2 = v103;
            a2[1] = v103;
            a2[2] = v103;
            a2[3] = v103;
            a2 += 4;
            --v102;
          }

          while (v102);
        }

LABEL_80:
        if ((v40 & 4) != 0)
        {
          v104 = vdup_lane_s32(*&v32, 0);
          *a2 = v104;
          a2[1] = v104;
          a2 += 2;
          if ((v40 & 2) == 0)
          {
            goto LABEL_82;
          }

LABEL_85:
          *a2++ = vdup_lane_s32(*&v32, 0);
          v26 -= v40;
          if (v40)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if ((v40 & 2) != 0)
          {
            goto LABEL_85;
          }

LABEL_82:
          v26 -= v40;
          if (v40)
          {
LABEL_86:
            a2->i32[0] = LODWORD(v32);
            a2 = (a2 + 4);
          }
        }
      }

      v16 <<= v31 + 1;
      v17 -= v31 + 1;
      if (v17 < 0)
      {
        if (v19 < v18)
        {
          v28 = *v19++;
          v29 = bswap32(v28);
        }

        else
        {
          v34 = a1[4];
          if (v19 < v34)
          {
            v35 = v34 - v19;
            if ((v34 - v19) < 4)
            {
              v29 = 0;
              v36 = 32;
              v37 = v19;
              goto LABEL_45;
            }

            if (v35 >= 0x20)
            {
              v38 = v35 & 0xFFFFFFFFFFFFFFE0;
              v36 = 32 - 8 * (v35 & 0xFFFFFFE0);
              v41 = xmmword_277875230;
              v42 = xmmword_277875240;
              v43 = xmmword_277875250;
              v44 = 0uLL;
              v45 = 0uLL;
              v46 = xmmword_277875260;
              v47 = (v19 + 4);
              v48 = v35 & 0xFFFFFFFFFFFFFFE0;
              v49 = 0uLL;
              v50 = 0uLL;
              v51 = 0uLL;
              v52 = 0uLL;
              v53 = 0uLL;
              v54 = 0uLL;
              do
              {
                v55 = v47[-1];
                v45 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v55, xmmword_277875270), vaddq_s32(v43, v22)), v45);
                v44 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v55, xmmword_277875280), vaddq_s32(v46, v22)), v44);
                v49 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v55, xmmword_277875290), vaddq_s32(v42, v22)), v49);
                v50 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v55, xmmword_2778752A0), vaddq_s32(v41, v22)), v50);
                v52 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v47, xmmword_277875270), vaddq_s32(v43, v24)), v52);
                v51 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v47, xmmword_277875280), vaddq_s32(v46, v24)), v51);
                v53 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v47, xmmword_277875290), vaddq_s32(v42, v24)), v53);
                v54 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v47, xmmword_2778752A0), vaddq_s32(v41, v24)), v54);
                v46 = vaddq_s32(v46, v25);
                v43 = vaddq_s32(v43, v25);
                v42 = vaddq_s32(v42, v25);
                v47 += 2;
                v41 = vaddq_s32(v41, v25);
                v48 -= 32;
              }

              while (v48);
              v56 = vorrq_s8(vorrq_s8(vorrq_s8(v51, v44), vorrq_s8(v53, v49)), vorrq_s8(vorrq_s8(v52, v45), vorrq_s8(v54, v50)));
              a11.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
              v57 = vorr_s8(*v56.i8, *a11.i8);
              v29 = v57.i32[0] | v57.i32[1];
              if (v35 == v38)
              {
                goto LABEL_47;
              }

              if ((v35 & 0x1C) == 0)
              {
                v37 = (v19 + v38);
LABEL_45:
                v71 = v36 - 8;
                do
                {
                  v72 = *v37;
                  v37 = (v37 + 1);
                  v29 |= v72 << v71;
                  v71 -= 8;
                }

                while (v37 != v34);
LABEL_47:
                v19 = a1[4];
                goto LABEL_10;
              }
            }

            else
            {
              v29 = 0;
              v38 = 0;
              v36 = 32;
            }

            v58 = vdupq_n_s32(v36);
            v36 = 32 - 8 * (v35 & 0xFFFFFFFC);
            v37 = (v19 + (v35 & 0xFFFFFFFFFFFFFFFCLL));
            v59 = vaddq_s32(v58, xmmword_277875250);
            v60 = v29;
            v61 = (v19 + v38);
            v62 = v38 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v63 = *v61++;
              a11.i32[0] = v63;
              a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
              v60 = vorrq_s8(vshlq_u32(a11, vaddq_s32(v59, v22)), v60);
              v59 = vaddq_s32(v59, v23);
              v62 += 4;
            }

            while (v62);
            v64 = vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
            v29 = v64.i32[0] | v64.i32[1];
            if (v35 == (v35 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }

          v29 = 0;
        }

LABEL_10:
        v16 |= v29 << -v17;
        v17 += 32;
      }

      a2->i32[0] = LODWORD(v32);
      a2 = (a2 + 4);
      --v26;
    }

    while (v26);
    if (--v13)
    {
      a2 = (v27 + a3);
      continue;
    }

    return v20 == 255;
  }
}

BOOL decodeIntAlpha<16,float,false>(uint64_t a1, int32x2_t *a2, unsigned int a3, unsigned int a4, int a5, double a6, double a7, double a8, double a9, double a10, uint32x4_t a11)
{
  v11 = 4 * a4;
  v12 = v11 == a3;
  if (v11 == a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5;
  }

  if (v12)
  {
    v14 = a5;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 * a4;
  v16 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = 0xFFFF;
  LOWORD(v21) = -1;
  v22.i64[0] = 0x700000007;
  v22.i64[1] = 0x700000007;
  v23.i64[0] = 0x1F0000001FLL;
  v23.i64[1] = 0x1F0000001FLL;
  v24.i64[0] = 0x8700000087;
  v24.i64[1] = 0x8700000087;
  v25.i64[0] = 0xFFFFFF00FFFFFF00;
  v25.i64[1] = 0xFFFFFF00FFFFFF00;
  while (2)
  {
    v26 = v15;
    v27 = a2;
    do
    {
      while (1)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          v30 = SHIDWORD(v16) >> 15;
          v31 = 17;
        }

        else
        {
          LOWORD(v30) = smallAlphaDiffVLDTable_16b[HIBYTE(v16)];
          v31 = 8;
        }

        v21 = (v30 + v21);
        v20 &= v21;
        v32 = v21 * 0.0000152590219;
        *&v32 = v32;
        LODWORD(v33) = HIDWORD(v16) << v31;
        if (((HIDWORD(v16) << v31) & 0x80000000) != 0)
        {
          break;
        }

        if (v33 >> 27)
        {
          v40 = 5;
        }

        else
        {
          v40 = 16;
        }

        v41 = v40 + v31;
        if ((v40 + v31) < 0x21)
        {
          v16 <<= v41;
          v17 -= v41;
          if (v17 >= 0)
          {
            goto LABEL_29;
          }

          goto LABEL_68;
        }

        v67 = v16 << v31;
        v68 = v17 - v31;
        if (v68 >= 0)
        {
          v33 = HIDWORD(v67);
          v16 = v67 << v40;
          v17 = v68 - v40;
          if (v17 >= 0)
          {
            goto LABEL_29;
          }

          goto LABEL_68;
        }

        if (v19 < v18)
        {
          v69 = *v19++;
          v70 = bswap32(v69);
          goto LABEL_67;
        }

        v73 = *(a1 + 32);
        if (v19 >= v73)
        {
          v70 = 0;
          goto LABEL_67;
        }

        v74 = v73 - v19;
        if ((v73 - v19) >= 4)
        {
          if (v74 < 0x20)
          {
            v70 = 0;
            v77 = 0;
            v75 = 32;
LABEL_59:
            v95 = vdupq_n_s32(v75);
            v75 = 32 - 8 * (v74 & 0xFFFFFFFC);
            v76 = (v19 + (v74 & 0xFFFFFFFFFFFFFFFCLL));
            v96 = vaddq_s32(v95, xmmword_277875250);
            v97 = v70;
            v98 = (v19 + v77);
            v99 = v77 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v100 = *v98++;
              a11.i32[0] = v100;
              a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
              v97 = vorrq_s8(vshlq_u32(a11, vaddq_s32(v96, v22)), v97);
              v96 = vaddq_s32(v96, v23);
              v99 += 4;
            }

            while (v99);
            v101 = vorr_s8(*v97.i8, *&vextq_s8(v97, v97, 8uLL));
            v70 = v101.i32[0] | v101.i32[1];
            if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_66;
            }

            goto LABEL_64;
          }

          v77 = v74 & 0xFFFFFFFFFFFFFFE0;
          v78 = (v19 + 4);
          v79 = 0uLL;
          v80 = 0uLL;
          v81 = v74 & 0xFFFFFFFFFFFFFFE0;
          v82 = xmmword_277875260;
          v83 = xmmword_277875240;
          v84 = xmmword_277875250;
          v85 = xmmword_277875230;
          v86 = 0uLL;
          v87 = 0uLL;
          v88 = 0uLL;
          v75 = 32 - 8 * (v74 & 0xFFFFFFE0);
          v89 = 0uLL;
          v90 = 0uLL;
          v91 = 0uLL;
          do
          {
            v92 = v78[-1];
            v80 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v92, xmmword_277875270), vaddq_s32(v84, v22)), v80);
            v79 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v92, xmmword_277875280), vaddq_s32(v82, v22)), v79);
            v86 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v92, xmmword_277875290), vaddq_s32(v83, v22)), v86);
            v87 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v92, xmmword_2778752A0), vaddq_s32(v85, v22)), v87);
            v89 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v78, xmmword_277875270), vaddq_s32(v84, v24)), v89);
            v88 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v78, xmmword_277875280), vaddq_s32(v82, v24)), v88);
            v90 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v78, xmmword_277875290), vaddq_s32(v83, v24)), v90);
            v91 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v78, xmmword_2778752A0), vaddq_s32(v85, v24)), v91);
            v82 = vaddq_s32(v82, v25);
            v84 = vaddq_s32(v84, v25);
            v83 = vaddq_s32(v83, v25);
            v78 += 2;
            v85 = vaddq_s32(v85, v25);
            v81 -= 32;
          }

          while (v81);
          v93 = vorrq_s8(vorrq_s8(vorrq_s8(v88, v79), vorrq_s8(v90, v86)), vorrq_s8(vorrq_s8(v89, v80), vorrq_s8(v91, v87)));
          a11.i64[0] = vextq_s8(v93, v93, 8uLL).u64[0];
          v94 = vorr_s8(*v93.i8, *a11.i8);
          v70 = v94.i32[0] | v94.i32[1];
          if (v74 == v77)
          {
            goto LABEL_66;
          }

          if ((v74 & 0x1C) != 0)
          {
            goto LABEL_59;
          }

          v76 = (v19 + v77);
        }

        else
        {
          v70 = 0;
          v75 = 32;
          v76 = v19;
        }

LABEL_64:
        v102 = v75 - 8;
        do
        {
          v103 = *v76;
          v76 = (v76 + 1);
          v70 |= v103 << v102;
          v102 -= 8;
        }

        while (v76 != v73);
LABEL_66:
        v19 = *(a1 + 32);
LABEL_67:
        v104 = (v70 << -v68) | v67;
        v33 = HIDWORD(v104);
        v16 = v104 << v40;
        v17 = v68 + 32 - v40;
        if (v17 >= 0)
        {
LABEL_29:
          v42 = (v33 >> -v40) + 1;
          if (v42 >= v26)
          {
            goto LABEL_89;
          }

          goto LABEL_30;
        }

LABEL_68:
        if (v19 < v18)
        {
          v105 = *v19++;
          v106 = bswap32(v105);
          goto LABEL_88;
        }

        v107 = *(a1 + 32);
        if (v19 >= v107)
        {
          v106 = 0;
          goto LABEL_88;
        }

        v108 = v107 - v19;
        if (v107 - v19 >= 4)
        {
          if (v108 < 0x20)
          {
            v106 = 0;
            v111 = 0;
            v109 = 32;
LABEL_80:
            v129 = vdupq_n_s32(v109);
            v109 = 32 - 8 * (v108 & 0xFFFFFFFC);
            v110 = (v19 + (v108 & 0xFFFFFFFFFFFFFFFCLL));
            v130 = vaddq_s32(v129, xmmword_277875250);
            v131 = v106;
            v132 = (v19 + v111);
            v133 = v111 - (v108 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v134 = *v132++;
              a11.i32[0] = v134;
              a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
              v131 = vorrq_s8(vshlq_u32(a11, vaddq_s32(v130, v22)), v131);
              v130 = vaddq_s32(v130, v23);
              v133 += 4;
            }

            while (v133);
            v135 = vorr_s8(*v131.i8, *&vextq_s8(v131, v131, 8uLL));
            v106 = v135.i32[0] | v135.i32[1];
            if (v108 == (v108 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_87;
            }

            goto LABEL_85;
          }

          v111 = v108 & 0xFFFFFFFFFFFFFFE0;
          v109 = 32 - 8 * (v108 & 0xFFFFFFE0);
          v112 = xmmword_277875230;
          v113 = xmmword_277875240;
          v114 = xmmword_277875250;
          v115 = 0uLL;
          v116 = 0uLL;
          v117 = xmmword_277875260;
          v118 = (v19 + 4);
          v119 = v108 & 0xFFFFFFFFFFFFFFE0;
          v120 = 0uLL;
          v121 = 0uLL;
          v122 = 0uLL;
          v123 = 0uLL;
          v124 = 0uLL;
          v125 = 0uLL;
          do
          {
            v126 = v118[-1];
            v116 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v126, xmmword_277875270), vaddq_s32(v114, v22)), v116);
            v115 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v126, xmmword_277875280), vaddq_s32(v117, v22)), v115);
            v120 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v126, xmmword_277875290), vaddq_s32(v113, v22)), v120);
            v121 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v126, xmmword_2778752A0), vaddq_s32(v112, v22)), v121);
            v123 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v118, xmmword_277875270), vaddq_s32(v114, v24)), v123);
            v122 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v118, xmmword_277875280), vaddq_s32(v117, v24)), v122);
            v124 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v118, xmmword_277875290), vaddq_s32(v113, v24)), v124);
            v125 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v118, xmmword_2778752A0), vaddq_s32(v112, v24)), v125);
            v117 = vaddq_s32(v117, v25);
            v114 = vaddq_s32(v114, v25);
            v113 = vaddq_s32(v113, v25);
            v118 += 2;
            v112 = vaddq_s32(v112, v25);
            v119 -= 32;
          }

          while (v119);
          v127 = vorrq_s8(vorrq_s8(vorrq_s8(v122, v115), vorrq_s8(v124, v120)), vorrq_s8(vorrq_s8(v123, v116), vorrq_s8(v125, v121)));
          a11.i64[0] = vextq_s8(v127, v127, 8uLL).u64[0];
          v128 = vorr_s8(*v127.i8, *a11.i8);
          v106 = v128.i32[0] | v128.i32[1];
          if (v108 == v111)
          {
            goto LABEL_87;
          }

          if ((v108 & 0x1C) != 0)
          {
            goto LABEL_80;
          }

          v110 = (v19 + v111);
        }

        else
        {
          v106 = 0;
          v109 = 32;
          v110 = v19;
        }

LABEL_85:
        v136 = v109 - 8;
        do
        {
          v137 = *v110;
          v110 = (v110 + 1);
          v106 |= v137 << v136;
          v136 -= 8;
        }

        while (v110 != *(a1 + 32));
LABEL_87:
        v19 = *(a1 + 32);
LABEL_88:
        v16 |= v106 << -v17;
        v17 += 32;
        v42 = (v33 >> -v40) + 1;
        if (v42 >= v26)
        {
LABEL_89:
          v138 = vdup_lane_s32(*&v32, 0);
          while (1)
          {
            if (v26 >= 8)
            {
              v139 = v26 >> 3;
              do
              {
                *a2 = v138;
                a2[1] = v138;
                a2[2] = v138;
                a2[3] = v138;
                a2 += 4;
                --v139;
              }

              while (v139);
            }

            if ((v26 & 4) != 0)
            {
              *a2 = v138;
              a2[1] = v138;
              a2 += 2;
              if ((v26 & 2) == 0)
              {
LABEL_95:
                if (v26)
                {
                  goto LABEL_100;
                }

                goto LABEL_96;
              }
            }

            else if ((v26 & 2) == 0)
            {
              goto LABEL_95;
            }

            *a2++ = v138;
            if (v26)
            {
LABEL_100:
              a2->i32[0] = LODWORD(v32);
              if (!--v13)
              {
                return v20 == 0xFFFF;
              }

              goto LABEL_101;
            }

LABEL_96:
            if (!--v13)
            {
              return v20 == 0xFFFF;
            }

LABEL_101:
            v42 -= v26;
            v27 = (v27 + a3);
            v26 = v15;
            a2 = v27;
            if (v42 < v15)
            {
              a2 = v27;
              v26 = v15;
              if (v42 >= 8)
              {
                goto LABEL_103;
              }

              goto LABEL_105;
            }
          }
        }

LABEL_30:
        if (v42 >= 8)
        {
LABEL_103:
          v140 = v42 >> 3;
          v141 = vdup_lane_s32(*&v32, 0);
          do
          {
            *a2 = v141;
            a2[1] = v141;
            a2[2] = v141;
            a2[3] = v141;
            a2 += 4;
            --v140;
          }

          while (v140);
        }

LABEL_105:
        if ((v42 & 4) != 0)
        {
          v142 = vdup_lane_s32(*&v32, 0);
          *a2 = v142;
          a2[1] = v142;
          a2 += 2;
          if ((v42 & 2) == 0)
          {
            goto LABEL_107;
          }

LABEL_110:
          *a2++ = vdup_lane_s32(*&v32, 0);
          v26 -= v42;
          if (v42)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if ((v42 & 2) != 0)
          {
            goto LABEL_110;
          }

LABEL_107:
          v26 -= v42;
          if (v42)
          {
LABEL_111:
            a2->i32[0] = LODWORD(v32);
            a2 = (a2 + 4);
          }
        }
      }

      v34 = v31 + 1;
      v16 <<= v34;
      v17 -= v34;
      if (v17 < 0)
      {
        if (v19 < v18)
        {
          v28 = *v19++;
          v29 = bswap32(v28);
        }

        else
        {
          v35 = *(a1 + 32);
          if (v19 < v35)
          {
            v36 = v35 - v19;
            if ((v35 - v19) < 4)
            {
              v29 = 0;
              v37 = 32;
              v38 = v19;
              goto LABEL_46;
            }

            if (v36 >= 0x20)
            {
              v39 = v36 & 0xFFFFFFFFFFFFFFE0;
              v37 = 32 - 8 * (v36 & 0xFFFFFFE0);
              v43 = xmmword_277875230;
              v44 = xmmword_277875240;
              v45 = xmmword_277875250;
              v46 = 0uLL;
              v47 = 0uLL;
              v48 = xmmword_277875260;
              v49 = (v19 + 4);
              v50 = v36 & 0xFFFFFFFFFFFFFFE0;
              v51 = 0uLL;
              v52 = 0uLL;
              v53 = 0uLL;
              v54 = 0uLL;
              v55 = 0uLL;
              v56 = 0uLL;
              do
              {
                v57 = v49[-1];
                v47 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v57, xmmword_277875270), vaddq_s32(v45, v22)), v47);
                v46 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v57, xmmword_277875280), vaddq_s32(v48, v22)), v46);
                v51 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v57, xmmword_277875290), vaddq_s32(v44, v22)), v51);
                v52 = vorrq_s8(vshlq_u32(vqtbl1q_s8(v57, xmmword_2778752A0), vaddq_s32(v43, v22)), v52);
                v54 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v49, xmmword_277875270), vaddq_s32(v45, v24)), v54);
                v53 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v49, xmmword_277875280), vaddq_s32(v48, v24)), v53);
                v55 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v49, xmmword_277875290), vaddq_s32(v44, v24)), v55);
                v56 = vorrq_s8(vshlq_u32(vqtbl1q_s8(*v49, xmmword_2778752A0), vaddq_s32(v43, v24)), v56);
                v48 = vaddq_s32(v48, v25);
                v45 = vaddq_s32(v45, v25);
                v44 = vaddq_s32(v44, v25);
                v49 += 2;
                v43 = vaddq_s32(v43, v25);
                v50 -= 32;
              }

              while (v50);
              v58 = vorrq_s8(vorrq_s8(vorrq_s8(v53, v46), vorrq_s8(v55, v51)), vorrq_s8(vorrq_s8(v54, v47), vorrq_s8(v56, v52)));
              a11.i64[0] = vextq_s8(v58, v58, 8uLL).u64[0];
              v59 = vorr_s8(*v58.i8, *a11.i8);
              v29 = v59.i32[0] | v59.i32[1];
              if (v36 == v39)
              {
                goto LABEL_48;
              }

              if ((v36 & 0x1C) == 0)
              {
                v38 = (v19 + v39);
LABEL_46:
                v71 = v37 - 8;
                do
                {
                  v72 = *v38;
                  v38 = (v38 + 1);
                  v29 |= v72 << v71;
                  v71 -= 8;
                }

                while (v38 != v35);
LABEL_48:
                v19 = *(a1 + 32);
                goto LABEL_10;
              }
            }

            else
            {
              v29 = 0;
              v39 = 0;
              v37 = 32;
            }

            v60 = vdupq_n_s32(v37);
            v37 = 32 - 8 * (v36 & 0xFFFFFFFC);
            v38 = (v19 + (v36 & 0xFFFFFFFFFFFFFFFCLL));
            v61 = vaddq_s32(v60, xmmword_277875250);
            v62 = v29;
            v63 = (v19 + v39);
            v64 = v39 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v65 = *v63++;
              a11.i32[0] = v65;
              a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
              v62 = vorrq_s8(vshlq_u32(a11, vaddq_s32(v61, v22)), v62);
              v61 = vaddq_s32(v61, v23);
              v64 += 4;
            }

            while (v64);
            v66 = vorr_s8(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
            v29 = v66.i32[0] | v66.i32[1];
            if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v29 = 0;
        }

LABEL_10:
        v16 |= v29 << -v17;
        v17 += 32;
      }

      a2->i32[0] = LODWORD(v32);
      a2 = (a2 + 4);
      --v26;
    }

    while (v26);
    if (--v13)
    {
      a2 = (v27 + a3);
      continue;
    }

    return v20 == 0xFFFF;
  }
}

uint64_t PixelWriter::PixelWriter(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = a6;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a6;
  *(a1 + 13) = 1;
  v11 = *(a2 + 36);
  *(a1 + 16) = v11;
  *(a1 + 20) = 0;
  v12 = (a1 + 20);
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  if (v11 > 1953903667)
  {
    v13 = 1999778102;
    if (v11 <= 2016686641)
    {
      if (v11 == 1953903668)
      {
        goto LABEL_21;
      }

      if (v11 == 1983000880)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v11 == 2016698739 || v11 == 2016687156)
      {
        v6 = 0;
        v13 = 1999909174;
        goto LABEL_24;
      }

      if (v11 == 2016686642)
      {
        v13 = 1966223670;
        goto LABEL_24;
      }
    }

    goto LABEL_79;
  }

  if (v11 <= 1937126451)
  {
    if (v11 == 1932812659)
    {
      goto LABEL_20;
    }

    if (v11 == 1937125938)
    {
      v13 = 1983000886;
      goto LABEL_24;
    }

LABEL_79:
    if (a3 != 2)
    {
      goto LABEL_25;
    }

    if (v11 <= 1647719520)
    {
      if (v11 == 32 || v11 == 1111970369)
      {
        goto LABEL_215;
      }

      v22 = 1378955371;
    }

    else if (v11 > 1848848433)
    {
      if (v11 == 1915892016)
      {
        goto LABEL_215;
      }

      v22 = 1848848434;
    }

    else
    {
      if (v11 == 1647719521)
      {
        goto LABEL_215;
      }

      v22 = 1815294002;
    }

    if (v11 != v22)
    {
LABEL_216:
      *v12 = (0x10u >> a4) * PixelBuffer::getNumBytesPerPixelData(v11);
      goto LABEL_27;
    }

LABEL_215:
    v11 = 1983000886;
    *(a1 + 13) = 0;
    *(a1 + 16) = 1983000886;
    goto LABEL_216;
  }

  if (v11 == 1937126452)
  {
LABEL_20:
    v6 = 0;
    v13 = 2033463606;
    goto LABEL_24;
  }

  if (v11 == 1949589875)
  {
LABEL_21:
    v6 = 0;
    v13 = 2050240822;
    goto LABEL_24;
  }

  if (v11 != 1953903154)
  {
    goto LABEL_79;
  }

  v13 = 2050109750;
LABEL_24:
  *(a1 + 13) = 0;
  *(a1 + 16) = v13;
  v11 = v13;
LABEL_25:
  *v12 = (0x10u >> a4) * PixelBuffer::getNumBytesPerPixelData(v11);
  if (a3 == 3)
  {
    v21 = *(a1 + 16);
    v16 = from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>;
    v17 = from_444_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>;
    if (v21 > 1966223669)
    {
      if (v21 <= 1999909173)
      {
        if (v21 > 1983131703)
        {
          if (v21 != 1983131704)
          {
            if (v21 != 1999778102)
            {
              return a1;
            }

            goto LABEL_185;
          }

          v18 = v6 == 0;
          if (v6)
          {
            v19 = from_444_to_v408<8,8,(AlphaOutputMethod)1,false>;
          }

          else
          {
            v19 = from_444_to_v408<8,8,(AlphaOutputMethod)2,false>;
          }

          v16 = from_444_to_v408<8,8,(AlphaOutputMethod)2,true>;
          v20 = from_444_to_v408<8,8,(AlphaOutputMethod)1,true>;
          goto LABEL_183;
        }

        if (v21 == 1966223670)
        {
          v16 = from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>;
          v17 = from_444_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>;
          goto LABEL_185;
        }

        if (v21 != 1983000886)
        {
          return a1;
        }

        if (a4 <= 1)
        {
          if (!a4)
          {
            v16 = from_444_to_v216<8,8,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
            v17 = from_444_to_v216<8,8,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_444_to_v216<8,4,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
              v17 = from_444_to_v216<8,4,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B8B8[a5];
          v16 = off_28866B8D0[a5];
          goto LABEL_185;
        }

        if (a4 != 2)
        {
          if (a4 != 3)
          {
            return a1;
          }

          v16 = from_444_to_v216<1,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
          v17 = from_444_to_v216<1,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
          if (a5 != 2)
          {
            if (a5 != 3)
            {
              return a1;
            }

            v16 = from_444_to_v216<1,1,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
            v17 = from_444_to_v216<1,1,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
          }

          goto LABEL_185;
        }

        v25 = a5 - 1;
        if (a5 - 1 >= 3)
        {
          return a1;
        }

        v17 = off_28866B8E8[v25];
        v26 = off_28866B900;
        goto LABEL_382;
      }

      if (v21 <= 2033463605)
      {
        if (v21 == 1999909174)
        {
          v18 = v6 == 0;
          if (v6)
          {
            v19 = from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>;
          }

          else
          {
            v19 = from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>;
          }

          v16 = from_444_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>;
          v20 = from_444_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>;
          goto LABEL_183;
        }

        if (v21 != 2033463352)
        {
          return a1;
        }

        if (v6)
        {
          if (a4 > 1)
          {
            if (a4 != 2)
            {
              if (a4 != 3)
              {
                return a1;
              }

              v16 = from_444_to_y408<1,2,(AlphaOutputMethod)1,true>;
              v17 = from_444_to_y408<1,2,(AlphaOutputMethod)1,false>;
              if (a5 != 2)
              {
                if (a5 != 3)
                {
                  return a1;
                }

                v16 = from_444_to_y408<1,1,(AlphaOutputMethod)1,true>;
                v17 = from_444_to_y408<1,1,(AlphaOutputMethod)1,false>;
              }

              goto LABEL_185;
            }

            v25 = a5 - 1;
            if (a5 - 1 >= 3)
            {
              return a1;
            }

            v17 = off_28866B768[v25];
            v26 = off_28866B780;
            goto LABEL_382;
          }

          if (!a4)
          {
            v16 = from_444_to_y408<8,8,(AlphaOutputMethod)1,true>;
            v17 = from_444_to_y408<8,8,(AlphaOutputMethod)1,false>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_444_to_y408<8,4,(AlphaOutputMethod)1,true>;
              v17 = from_444_to_y408<8,4,(AlphaOutputMethod)1,false>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B738[a5];
          v16 = off_28866B750[a5];
        }

        else
        {
          if (a4 > 1)
          {
            if (a4 != 2)
            {
              if (a4 != 3)
              {
                return a1;
              }

              v16 = from_444_to_y408<1,2,(AlphaOutputMethod)2,true>;
              v17 = from_444_to_y408<1,2,(AlphaOutputMethod)2,false>;
              if (a5 != 2)
              {
                if (a5 != 3)
                {
                  return a1;
                }

                v16 = from_444_to_y408<1,1,(AlphaOutputMethod)2,true>;
                v17 = from_444_to_y408<1,1,(AlphaOutputMethod)2,false>;
              }

              goto LABEL_185;
            }

            v25 = a5 - 1;
            if (a5 - 1 >= 3)
            {
              return a1;
            }

            v17 = off_28866B7C8[v25];
            v26 = off_28866B7E0;
            goto LABEL_382;
          }

          if (!a4)
          {
            v16 = from_444_to_y408<8,8,(AlphaOutputMethod)2,true>;
            v17 = from_444_to_y408<8,8,(AlphaOutputMethod)2,false>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_444_to_y408<8,4,(AlphaOutputMethod)2,true>;
              v17 = from_444_to_y408<8,4,(AlphaOutputMethod)2,false>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B798[a5];
          v16 = off_28866B7B0[a5];
        }
      }

      else
      {
        switch(v21)
        {
          case 2033463606:
            if (v6)
            {
              if (a4 > 1)
              {
                if (a4 != 2)
                {
                  if (a4 != 3)
                  {
                    return a1;
                  }

                  v16 = from_444_to_y416<1,2,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
                  v17 = from_444_to_y416<1,2,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
                  if (a5 != 2)
                  {
                    if (a5 != 3)
                    {
                      return a1;
                    }

                    v16 = from_444_to_y416<1,1,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
                    v17 = from_444_to_y416<1,1,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
                  }

                  goto LABEL_185;
                }

                v25 = a5 - 1;
                if (a5 - 1 >= 3)
                {
                  return a1;
                }

                v17 = off_28866B948[v25];
                v26 = off_28866B960;
                goto LABEL_382;
              }

              if (!a4)
              {
                v16 = from_444_to_y416<8,8,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
                v17 = from_444_to_y416<8,8,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
                if (a5)
                {
                  if (a5 != 1)
                  {
                    return a1;
                  }

                  v16 = from_444_to_y416<8,4,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
                  v17 = from_444_to_y416<8,4,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
                }

                goto LABEL_185;
              }

              if (a4 != 1 || a5 >= 3)
              {
                return a1;
              }

              v17 = off_28866B918[a5];
              v16 = off_28866B930[a5];
            }

            else
            {
              if (a4 > 1)
              {
                if (a4 != 2)
                {
                  if (a4 != 3)
                  {
                    return a1;
                  }

                  v16 = from_444_to_y416<1,2,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
                  v17 = from_444_to_y416<1,2,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
                  if (a5 != 2)
                  {
                    if (a5 != 3)
                    {
                      return a1;
                    }

                    v16 = from_444_to_y416<1,1,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
                    v17 = from_444_to_y416<1,1,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
                  }

                  goto LABEL_185;
                }

                v25 = a5 - 1;
                if (a5 - 1 >= 3)
                {
                  return a1;
                }

                v17 = off_28866B9A8[v25];
                v26 = off_28866B9C0;
                goto LABEL_382;
              }

              if (!a4)
              {
                v16 = from_444_to_y416<8,8,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
                v17 = from_444_to_y416<8,8,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
                if (a5)
                {
                  if (a5 != 1)
                  {
                    return a1;
                  }

                  v16 = from_444_to_y416<8,4,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
                  v17 = from_444_to_y416<8,4,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
                }

                goto LABEL_185;
              }

              if (a4 != 1 || a5 >= 3)
              {
                return a1;
              }

              v17 = off_28866B978[a5];
              v16 = off_28866B990[a5];
            }

            break;
          case 2050109750:
            v16 = from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>;
            v17 = from_444_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>;
            break;
          case 2050240822:
            v18 = v6 == 0;
            if (v6)
            {
              v19 = from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>;
            }

            else
            {
              v19 = from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>;
            }

            v16 = from_444_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>;
            v20 = from_444_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>;
            goto LABEL_183;
          default:
            return a1;
        }
      }
    }

    else if (v21 <= 1647719520)
    {
      if (v21 <= 1111970368)
      {
        if (v21 == 32)
        {
          v18 = v6 == 0;
          if (v6)
          {
            v19 = from_444_to_32ARGB<8,8,(AlphaOutputMethod)1,false>;
          }

          else
          {
            v19 = from_444_to_32ARGB<8,8,(AlphaOutputMethod)2,false>;
          }

          v16 = from_444_to_32ARGB<8,8,(AlphaOutputMethod)2,true>;
          v20 = from_444_to_32ARGB<8,8,(AlphaOutputMethod)1,true>;
          goto LABEL_183;
        }

        if (v21 != 846624121)
        {
          return a1;
        }

        if (a4 <= 1)
        {
          if (!a4)
          {
            v16 = from_444_to_2vuy<8,8,(AlphaOutputMethod)0,true>;
            v17 = from_444_to_2vuy<8,8,(AlphaOutputMethod)0,false>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_444_to_2vuy<8,4,(AlphaOutputMethod)0,true>;
              v17 = from_444_to_2vuy<8,4,(AlphaOutputMethod)0,false>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B6D8[a5];
          v16 = off_28866B6F0[a5];
          goto LABEL_185;
        }

        if (a4 != 2)
        {
          if (a4 != 3)
          {
            return a1;
          }

          v16 = from_444_to_2vuy<1,2,(AlphaOutputMethod)0,true>;
          v17 = from_444_to_2vuy<1,2,(AlphaOutputMethod)0,false>;
          if (a5 != 2)
          {
            if (a5 != 3)
            {
              return a1;
            }

            v16 = from_444_to_2vuy<1,1,(AlphaOutputMethod)0,true>;
            v17 = from_444_to_2vuy<1,1,(AlphaOutputMethod)0,false>;
          }

          goto LABEL_185;
        }

        v25 = a5 - 1;
        if (a5 - 1 >= 3)
        {
          return a1;
        }

        v17 = off_28866B708[v25];
        v26 = off_28866B720;
        goto LABEL_382;
      }

      if (v21 == 1111970369)
      {
        v18 = v6 == 0;
        if (v6)
        {
          v19 = from_444_to_32BGRA<8,8,(AlphaOutputMethod)1,false>;
        }

        else
        {
          v19 = from_444_to_32BGRA<8,8,(AlphaOutputMethod)2,false>;
        }

        v16 = from_444_to_32BGRA<8,8,(AlphaOutputMethod)2,true>;
        v20 = from_444_to_32BGRA<8,8,(AlphaOutputMethod)1,true>;
        goto LABEL_183;
      }

      if (v21 != 1378955371)
      {
        return a1;
      }

      v16 = from_444_to_R10k<8,8,(AlphaOutputMethod)0,true>;
      v17 = from_444_to_R10k<8,8,(AlphaOutputMethod)0,false>;
    }

    else if (v21 <= 1915892015)
    {
      if (v21 == 1647719521)
      {
        v18 = v6 == 0;
        if (v6)
        {
          v19 = from_444_to_b64a<8,8,(AlphaOutputMethod)1,false>;
        }

        else
        {
          v19 = from_444_to_b64a<8,8,(AlphaOutputMethod)2,false>;
        }

        v16 = from_444_to_b64a<8,8,(AlphaOutputMethod)2,true>;
        v20 = from_444_to_b64a<8,8,(AlphaOutputMethod)1,true>;
        goto LABEL_183;
      }

      if (v21 != 1848848434)
      {
        return a1;
      }

      v16 = from_444_to_n302<8,8,(AlphaOutputMethod)0,true>;
      v17 = from_444_to_n302<8,8,(AlphaOutputMethod)0,false>;
    }

    else
    {
      if (v21 == 1915892016)
      {
        v16 = from_444_to_r210<8,8,(AlphaOutputMethod)0,true>;
        v17 = from_444_to_r210<8,8,(AlphaOutputMethod)0,false>;
        goto LABEL_185;
      }

      if (v21 != 1916022840)
      {
        if (v21 == 1916036716)
        {
          v18 = v6 == 0;
          if (v6)
          {
            v19 = from_444_to_r4fl<8,8,(AlphaOutputMethod)1,false>;
          }

          else
          {
            v19 = from_444_to_r4fl<8,8,(AlphaOutputMethod)2,false>;
          }

          v16 = from_444_to_r4fl<8,8,(AlphaOutputMethod)2,true>;
          v20 = from_444_to_r4fl<8,8,(AlphaOutputMethod)1,true>;
          goto LABEL_183;
        }

        return a1;
      }

      if (v6)
      {
        if (a4 > 1)
        {
          if (a4 != 2)
          {
            if (a4 != 3)
            {
              return a1;
            }

            v16 = from_444_to_r408<1,2,(AlphaOutputMethod)1,true>;
            v17 = from_444_to_r408<1,2,(AlphaOutputMethod)1,false>;
            if (a5 != 2)
            {
              if (a5 != 3)
              {
                return a1;
              }

              v16 = from_444_to_r408<1,1,(AlphaOutputMethod)1,true>;
              v17 = from_444_to_r408<1,1,(AlphaOutputMethod)1,false>;
            }

            goto LABEL_185;
          }

          v25 = a5 - 1;
          if (a5 - 1 >= 3)
          {
            return a1;
          }

          v17 = off_28866B828[v25];
          v26 = off_28866B840;
          goto LABEL_382;
        }

        if (!a4)
        {
          v16 = from_444_to_r408<8,8,(AlphaOutputMethod)1,true>;
          v17 = from_444_to_r408<8,8,(AlphaOutputMethod)1,false>;
          if (a5)
          {
            if (a5 != 1)
            {
              return a1;
            }

            v16 = from_444_to_r408<8,4,(AlphaOutputMethod)1,true>;
            v17 = from_444_to_r408<8,4,(AlphaOutputMethod)1,false>;
          }

          goto LABEL_185;
        }

        if (a4 != 1 || a5 >= 3)
        {
          return a1;
        }

        v17 = off_28866B7F8[a5];
        v16 = off_28866B810[a5];
      }

      else
      {
        if (a4 > 1)
        {
          if (a4 != 2)
          {
            if (a4 != 3)
            {
              return a1;
            }

            v16 = from_444_to_r408<1,2,(AlphaOutputMethod)2,true>;
            v17 = from_444_to_r408<1,2,(AlphaOutputMethod)2,false>;
            if (a5 != 2)
            {
              if (a5 != 3)
              {
                return a1;
              }

              v16 = from_444_to_r408<1,1,(AlphaOutputMethod)2,true>;
              v17 = from_444_to_r408<1,1,(AlphaOutputMethod)2,false>;
            }

            goto LABEL_185;
          }

          v25 = a5 - 1;
          if (a5 - 1 >= 3)
          {
            return a1;
          }

          v17 = off_28866B888[v25];
          v26 = off_28866B8A0;
          goto LABEL_382;
        }

        if (!a4)
        {
          v16 = from_444_to_r408<8,8,(AlphaOutputMethod)2,true>;
          v17 = from_444_to_r408<8,8,(AlphaOutputMethod)2,false>;
          if (a5)
          {
            if (a5 != 1)
            {
              return a1;
            }

            v16 = from_444_to_r408<8,4,(AlphaOutputMethod)2,true>;
            v17 = from_444_to_r408<8,4,(AlphaOutputMethod)2,false>;
          }

          goto LABEL_185;
        }

        if (a4 != 1 || a5 >= 3)
        {
          return a1;
        }

        v17 = off_28866B858[a5];
        v16 = off_28866B870[a5];
      }
    }

    goto LABEL_185;
  }

  if (a3 != 2)
  {
    return a1;
  }

LABEL_27:
  v15 = *(a1 + 16);
  v16 = from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>;
  v17 = from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>;
  if (v15 > 1999778101)
  {
    if (v15 <= 2033463605)
    {
      if (v15 == 1999778102)
      {
        goto LABEL_185;
      }

      if (v15 == 1999909174)
      {
        v18 = v6 == 0;
        if (v6)
        {
          v19 = from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,false>;
        }

        else
        {
          v19 = from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,false>;
        }

        v16 = from_422_to_y416_10bits<8,8,(AlphaOutputMethod)2,true>;
        v20 = from_422_to_y416_10bits<8,8,(AlphaOutputMethod)1,true>;
        goto LABEL_183;
      }

      if (v15 != 2033463352)
      {
        return a1;
      }

      if (v6)
      {
        if (a4 <= 1)
        {
          if (!a4)
          {
            v16 = from_422_to_y408<8,8,(AlphaOutputMethod)1,true>;
            v17 = from_422_to_y408<8,8,(AlphaOutputMethod)1,false>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_422_to_y408<8,4,(AlphaOutputMethod)1,true>;
              v17 = from_422_to_y408<8,4,(AlphaOutputMethod)1,false>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B438[a5];
          v16 = off_28866B450[a5];
          goto LABEL_185;
        }

        if (a4 != 2)
        {
          if (a4 != 3)
          {
            return a1;
          }

          v16 = from_422_to_y408<1,2,(AlphaOutputMethod)1,true>;
          v17 = from_422_to_y408<1,2,(AlphaOutputMethod)1,false>;
          if (a5 != 2)
          {
            if (a5 != 3)
            {
              return a1;
            }

            v16 = from_422_to_y408<1,1,(AlphaOutputMethod)1,true>;
            v17 = from_422_to_y408<1,1,(AlphaOutputMethod)1,false>;
          }

          goto LABEL_185;
        }

        v25 = a5 - 1;
        if (a5 - 1 >= 3)
        {
          return a1;
        }

        v17 = off_28866B468[v25];
        v26 = off_28866B480;
      }

      else
      {
        if (a4 <= 1)
        {
          if (!a4)
          {
            v16 = from_422_to_y408<8,8,(AlphaOutputMethod)2,true>;
            v17 = from_422_to_y408<8,8,(AlphaOutputMethod)2,false>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_422_to_y408<8,4,(AlphaOutputMethod)2,true>;
              v17 = from_422_to_y408<8,4,(AlphaOutputMethod)2,false>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B498[a5];
          v16 = off_28866B4B0[a5];
          goto LABEL_185;
        }

        if (a4 != 2)
        {
          if (a4 != 3)
          {
            return a1;
          }

          v16 = from_422_to_y408<1,2,(AlphaOutputMethod)2,true>;
          v17 = from_422_to_y408<1,2,(AlphaOutputMethod)2,false>;
          if (a5 != 2)
          {
            if (a5 != 3)
            {
              return a1;
            }

            v16 = from_422_to_y408<1,1,(AlphaOutputMethod)2,true>;
            v17 = from_422_to_y408<1,1,(AlphaOutputMethod)2,false>;
          }

          goto LABEL_185;
        }

        v25 = a5 - 1;
        if (a5 - 1 >= 3)
        {
          return a1;
        }

        v17 = off_28866B4C8[v25];
        v26 = off_28866B4E0;
      }

      goto LABEL_382;
    }

    if (v15 == 2033463606)
    {
      if (v6)
      {
        if (a4 <= 1)
        {
          if (!a4)
          {
            v16 = from_422_to_y416<8,8,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
            v17 = from_422_to_y416<8,8,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_422_to_y416<8,4,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
              v17 = from_422_to_y416<8,4,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B618[a5];
          v16 = off_28866B630[a5];
          goto LABEL_185;
        }

        if (a4 != 2)
        {
          if (a4 != 3)
          {
            return a1;
          }

          v16 = from_422_to_y416<1,2,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
          v17 = from_422_to_y416<1,2,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
          if (a5 != 2)
          {
            if (a5 != 3)
            {
              return a1;
            }

            v16 = from_422_to_y416<1,1,(AlphaOutputMethod)1,true,(PixelOutputStoreType)0>;
            v17 = from_422_to_y416<1,1,(AlphaOutputMethod)1,false,(PixelOutputStoreType)0>;
          }

          goto LABEL_185;
        }

        v25 = a5 - 1;
        if (a5 - 1 >= 3)
        {
          return a1;
        }

        v17 = off_28866B648[v25];
        v26 = off_28866B660;
      }

      else
      {
        if (a4 <= 1)
        {
          if (!a4)
          {
            v16 = from_422_to_y416<8,8,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
            v17 = from_422_to_y416<8,8,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
            if (a5)
            {
              if (a5 != 1)
              {
                return a1;
              }

              v16 = from_422_to_y416<8,4,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
              v17 = from_422_to_y416<8,4,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
            }

            goto LABEL_185;
          }

          if (a4 != 1 || a5 >= 3)
          {
            return a1;
          }

          v17 = off_28866B678[a5];
          v16 = off_28866B690[a5];
          goto LABEL_185;
        }

        if (a4 != 2)
        {
          if (a4 != 3)
          {
            return a1;
          }

          v16 = from_422_to_y416<1,2,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
          v17 = from_422_to_y416<1,2,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
          if (a5 != 2)
          {
            if (a5 != 3)
            {
              return a1;
            }

            v16 = from_422_to_y416<1,1,(AlphaOutputMethod)2,true,(PixelOutputStoreType)0>;
            v17 = from_422_to_y416<1,1,(AlphaOutputMethod)2,false,(PixelOutputStoreType)0>;
          }

          goto LABEL_185;
        }

        v25 = a5 - 1;
        if (a5 - 1 >= 3)
        {
          return a1;
        }

        v17 = off_28866B6A8[v25];
        v26 = off_28866B6C0;
      }

      goto LABEL_382;
    }

    if (v15 != 2050109750)
    {
      if (v15 == 2050240822)
      {
        v18 = v6 == 0;
        if (v6)
        {
          v19 = from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,false>;
        }

        else
        {
          v19 = from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,false>;
        }

        v16 = from_422_to_y416_12bits<8,8,(AlphaOutputMethod)2,true>;
        v20 = from_422_to_y416_12bits<8,8,(AlphaOutputMethod)1,true>;
        goto LABEL_183;
      }

      return a1;
    }

    v16 = from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>;
    v17 = from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>;
LABEL_185:
    *(a1 + 24) = v17;
    *(a1 + 32) = v16;
    return a1;
  }

  if (v15 <= 1966223669)
  {
    if (v15 == 846624121)
    {
      if (a4 <= 1)
      {
        if (!a4)
        {
          v16 = from_422_to_2vuy<8,8,(AlphaOutputMethod)0,true>;
          v17 = from_422_to_2vuy<8,8,(AlphaOutputMethod)0,false>;
          if (a5)
          {
            if (a5 != 1)
            {
              return a1;
            }

            v16 = from_422_to_2vuy<8,4,(AlphaOutputMethod)0,true>;
            v17 = from_422_to_2vuy<8,4,(AlphaOutputMethod)0,false>;
          }

          goto LABEL_185;
        }

        if (a4 != 1 || a5 >= 3)
        {
          return a1;
        }

        v17 = off_28866B3D8[a5];
        v16 = off_28866B3F0[a5];
        goto LABEL_185;
      }

      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return a1;
        }

        v16 = from_422_to_2vuy<1,2,(AlphaOutputMethod)0,true>;
        v17 = from_422_to_2vuy<1,2,(AlphaOutputMethod)0,false>;
        if (a5 != 2)
        {
          if (a5 != 3)
          {
            return a1;
          }

          v16 = from_422_to_2vuy<1,1,(AlphaOutputMethod)0,true>;
          v17 = from_422_to_2vuy<1,1,(AlphaOutputMethod)0,false>;
        }

        goto LABEL_185;
      }

      v25 = a5 - 1;
      if (a5 - 1 >= 3)
      {
        return a1;
      }

      v17 = off_28866B408[v25];
      v26 = off_28866B420;
      goto LABEL_382;
    }

    if (v15 != 1916022840)
    {
      if (v15 == 1916036716)
      {
        v18 = v6 == 0;
        if (v6)
        {
          v19 = from_422_to_r4fl<8,8,(AlphaOutputMethod)1,false>;
        }

        else
        {
          v19 = from_422_to_r4fl<8,8,(AlphaOutputMethod)2,false>;
        }

        v16 = from_422_to_r4fl<8,8,(AlphaOutputMethod)2,true>;
        v20 = from_422_to_r4fl<8,8,(AlphaOutputMethod)1,true>;
LABEL_183:
        v23 = v20;
        v17 = v19;
        if (!v18)
        {
          v16 = v23;
        }

        goto LABEL_185;
      }

      return a1;
    }

    if (v6)
    {
      if (a4 <= 1)
      {
        if (!a4)
        {
          v16 = from_422_to_r408<8,8,(AlphaOutputMethod)1,true>;
          v17 = from_422_to_r408<8,8,(AlphaOutputMethod)1,false>;
          if (a5)
          {
            if (a5 != 1)
            {
              return a1;
            }

            v16 = from_422_to_r408<8,4,(AlphaOutputMethod)1,true>;
            v17 = from_422_to_r408<8,4,(AlphaOutputMethod)1,false>;
          }

          goto LABEL_185;
        }

        if (a4 != 1 || a5 >= 3)
        {
          return a1;
        }

        v17 = off_28866B4F8[a5];
        v16 = off_28866B510[a5];
        goto LABEL_185;
      }

      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return a1;
        }

        v16 = from_422_to_r408<1,2,(AlphaOutputMethod)1,true>;
        v17 = from_422_to_r408<1,2,(AlphaOutputMethod)1,false>;
        if (a5 != 2)
        {
          if (a5 != 3)
          {
            return a1;
          }

          v16 = from_422_to_r408<1,1,(AlphaOutputMethod)1,true>;
          v17 = from_422_to_r408<1,1,(AlphaOutputMethod)1,false>;
        }

        goto LABEL_185;
      }

      v25 = a5 - 1;
      if (a5 - 1 >= 3)
      {
        return a1;
      }

      v17 = off_28866B528[v25];
      v26 = off_28866B540;
LABEL_382:
      v16 = v26[v25];
      goto LABEL_185;
    }

    if (a4 > 1)
    {
      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return a1;
        }

        v16 = from_422_to_r408<1,2,(AlphaOutputMethod)2,true>;
        v17 = from_422_to_r408<1,2,(AlphaOutputMethod)2,false>;
        if (a5 != 2)
        {
          if (a5 != 3)
          {
            return a1;
          }

          v16 = from_422_to_r408<1,1,(AlphaOutputMethod)2,true>;
          v17 = from_422_to_r408<1,1,(AlphaOutputMethod)2,false>;
        }

        goto LABEL_185;
      }

      v25 = a5 - 1;
      if (a5 - 1 >= 3)
      {
        return a1;
      }

      v17 = off_28866B588[v25];
      v26 = off_28866B5A0;
      goto LABEL_382;
    }

    if (!a4)
    {
      v16 = from_422_to_r408<8,8,(AlphaOutputMethod)2,true>;
      v17 = from_422_to_r408<8,8,(AlphaOutputMethod)2,false>;
      if (a5)
      {
        if (a5 != 1)
        {
          return a1;
        }

        v16 = from_422_to_r408<8,4,(AlphaOutputMethod)2,true>;
        v17 = from_422_to_r408<8,4,(AlphaOutputMethod)2,false>;
      }

      goto LABEL_185;
    }

    if (a4 != 1 || a5 >= 3)
    {
      return a1;
    }

    v17 = off_28866B558[a5];
    v16 = off_28866B570[a5];
    goto LABEL_185;
  }

  switch(v15)
  {
    case 1966223670:
      v16 = from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>;
      v17 = from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>;
      goto LABEL_185;
    case 1983000886:
      if (a4 <= 1)
      {
        if (!a4)
        {
          v16 = from_422_to_v216<8,8,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
          v17 = from_422_to_v216<8,8,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
          if (a5)
          {
            if (a5 != 1)
            {
              return a1;
            }

            v16 = from_422_to_v216<8,4,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
            v17 = from_422_to_v216<8,4,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
          }

          goto LABEL_185;
        }

        if (a4 != 1 || a5 >= 3)
        {
          return a1;
        }

        v17 = off_28866B5B8[a5];
        v16 = off_28866B5D0[a5];
        goto LABEL_185;
      }

      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return a1;
        }

        v16 = from_422_to_v216<1,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
        v17 = from_422_to_v216<1,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
        if (a5 != 2)
        {
          if (a5 != 3)
          {
            return a1;
          }

          v16 = from_422_to_v216<1,1,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>;
          v17 = from_422_to_v216<1,1,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>;
        }

        goto LABEL_185;
      }

      v25 = a5 - 1;
      if (a5 - 1 >= 3)
      {
        return a1;
      }

      v17 = off_28866B5E8[v25];
      v26 = off_28866B600;
      goto LABEL_382;
    case 1983131704:
      v18 = v6 == 0;
      if (v6)
      {
        v19 = from_422_to_v408<8,8,(AlphaOutputMethod)1,false>;
      }

      else
      {
        v19 = from_422_to_v408<8,8,(AlphaOutputMethod)2,false>;
      }

      v16 = from_422_to_v408<8,8,(AlphaOutputMethod)2,true>;
      v20 = from_422_to_v408<8,8,(AlphaOutputMethod)1,true>;
      goto LABEL_183;
  }

  return a1;
}

int8x16_t *from_422_to_2vuy<8,8,(AlphaOutputMethod)0,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v18 = a2 + 8;
    v19 = a2 + 32;
    v20 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 7;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[8 * a3];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v7);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v7), v8), v9);
    v14 = vminq_u8(vmaxq_u8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v8), v9);
    *result = vzip1q_s8(v14, v13);
    result[1] = vzip2q_s8(v14, v13);
    result = (result + a3);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v7);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v7), v8), v9);
    v17 = vminq_u8(vmaxq_u8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v8), v9);
    vst2_s8(v11, *(&v16 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v17, v16);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v18 = v10 + 8;
  v19 = v10 + 32;
  v20 = v10 + 40;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v21 = result + 1;
    v22 = v5 + 1;
    v23.i64[0] = 0x8080808080808080;
    v23.i64[1] = 0x8080808080808080;
    v24.i64[0] = 0x101010101010101;
    v24.i64[1] = 0x101010101010101;
    v25.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v25.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v26 = *a2++;
      v27 = v26;
      i8 = v21[-1].i8;
      v29 = *v18++;
      v30 = vqmovn_high_s16(vqmovn_s16(v27), v29);
      v31 = *v19++;
      v32 = v31;
      v33 = *v20++;
      v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32), v33), v23);
      v35 = vminq_u8(vmaxq_u8(veorq_s8(v30, v23), v24), v25);
      v36 = vminq_u8(vmaxq_u8(vzip1q_s8(v34, vdupq_laneq_s64(v34, 1)), v24), v25);
      vst2_s8(i8, *(&v35 - 8));
      *v21 = vzip2q_s8(v36, v35);
      v21 = (v21 + a3);
      --v22;
    }

    while (v22 > 1);
  }

  return result;
}

int8x16_t *from_422_to_2vuy<8,8,(AlphaOutputMethod)0,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v18 = a2 + 8;
    v19 = a2 + 32;
    v20 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 7;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[8 * a3];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v7);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v7), v8), v9);
    v14 = vminq_u8(vmaxq_u8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v8), v9);
    *result = vzip1q_s8(v14, v13);
    result[1] = vzip2q_s8(v14, v13);
    result = (result + a3);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v7);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v7), v8), v9);
    v17 = vminq_u8(vmaxq_u8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v8), v9);
    vst2_s8(v11, *(&v16 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v17, v16);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v18 = v10 + 8;
  v19 = v10 + 32;
  v20 = v10 + 40;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v21 = result + 1;
    v22 = v5 + 1;
    v23.i64[0] = 0x8080808080808080;
    v23.i64[1] = 0x8080808080808080;
    v24.i64[0] = 0x101010101010101;
    v24.i64[1] = 0x101010101010101;
    v25.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v25.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v26 = *a2++;
      v27 = v26;
      i8 = v21[-1].i8;
      v29 = *v18++;
      v30 = vqmovn_high_s16(vqmovn_s16(v27), v29);
      v31 = *v19++;
      v32 = v31;
      v33 = *v20++;
      v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32), v33), v23);
      v35 = vminq_u8(vmaxq_u8(veorq_s8(v30, v23), v24), v25);
      v36 = vminq_u8(vmaxq_u8(vzip1q_s8(v34, vdupq_laneq_s64(v34, 1)), v24), v25);
      vst2_s8(i8, *(&v35 - 8));
      *v21 = vzip2q_s8(v36, v35);
      v21 = (v21 + a3);
      --v22;
    }

    while (v22 > 1);
  }

  return result;
}

int8x16_t *from_422_to_2vuy<8,4,(AlphaOutputMethod)0,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v18 = a2 + 4;
    v19 = a2 + 16;
    v20 = a2 + 20;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 3;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[4 * a3];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v7);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v7), v8), v9);
    v14 = vminq_u8(vmaxq_u8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v8), v9);
    *result = vzip1q_s8(v14, v13);
    result[1] = vzip2q_s8(v14, v13);
    result = (result + a3);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v7);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v7), v8), v9);
    v17 = vminq_u8(vmaxq_u8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v8), v9);
    vst2_s8(v11, *(&v16 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v17, v16);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v18 = v10 + 4;
  v19 = v10 + 16;
  v20 = v10 + 20;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v21 = result + 1;
    v22 = v5 + 1;
    v23.i64[0] = 0x8080808080808080;
    v23.i64[1] = 0x8080808080808080;
    v24.i64[0] = 0x101010101010101;
    v24.i64[1] = 0x101010101010101;
    v25.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v25.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v26 = *a2++;
      v27 = v26;
      i8 = v21[-1].i8;
      v29 = *v18++;
      v30 = vqmovn_high_s16(vqmovn_s16(v27), v29);
      v31 = *v19++;
      v32 = v31;
      v33 = *v20++;
      v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32), v33), v23);
      v35 = vminq_u8(vmaxq_u8(veorq_s8(v30, v23), v24), v25);
      v36 = vminq_u8(vmaxq_u8(vzip1q_s8(v34, vdupq_laneq_s64(v34, 1)), v24), v25);
      vst2_s8(i8, *(&v35 - 8));
      *v21 = vzip2q_s8(v36, v35);
      v21 = (v21 + a3);
      --v22;
    }

    while (v22 > 1);
  }

  return result;
}

int8x16_t *from_422_to_2vuy<8,4,(AlphaOutputMethod)0,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v18 = a2 + 4;
    v19 = a2 + 16;
    v20 = a2 + 20;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = a4 - 3;
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v10 = a2 + 1;
    v11 = &result->i8[4 * a3];
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v7);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v7), v8), v9);
    v14 = vminq_u8(vmaxq_u8(vzip1q_s8(v12, vdupq_laneq_s64(v12, 1)), v8), v9);
    *result = vzip1q_s8(v14, v13);
    result[1] = vzip2q_s8(v14, v13);
    result = (result + a3);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v7);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v7), v8), v9);
    v17 = vminq_u8(vmaxq_u8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v8), v9);
    vst2_s8(v11, *(&v16 - 8));
    v11 += 16;
    --v5;
    *v11 = vzip2q_s8(v17, v16);
    --v6;
    ++a2;
  }

  while (v6 > 1);
  v18 = v10 + 4;
  v19 = v10 + 16;
  v20 = v10 + 20;
  a2 = v10;
  if (v5 >= 1)
  {
LABEL_10:
    v21 = result + 1;
    v22 = v5 + 1;
    v23.i64[0] = 0x8080808080808080;
    v23.i64[1] = 0x8080808080808080;
    v24.i64[0] = 0x101010101010101;
    v24.i64[1] = 0x101010101010101;
    v25.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v25.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    do
    {
      v26 = *a2++;
      v27 = v26;
      i8 = v21[-1].i8;
      v29 = *v18++;
      v30 = vqmovn_high_s16(vqmovn_s16(v27), v29);
      v31 = *v19++;
      v32 = v31;
      v33 = *v20++;
      v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v32), v33), v23);
      v35 = vminq_u8(vmaxq_u8(veorq_s8(v30, v23), v24), v25);
      v36 = vminq_u8(vmaxq_u8(vzip1q_s8(v34, vdupq_laneq_s64(v34, 1)), v24), v25);
      vst2_s8(i8, *(&v35 - 8));
      *v21 = vzip2q_s8(v36, v35);
      v21 = (v21 + a3);
      --v22;
    }

    while (v22 > 1);
  }

  return result;
}

double from_422_to_2vuy<4,8,(AlphaOutputMethod)0,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t a5)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  if (v6 < 2)
  {
    v24 = a2 + 4;
    v25 = a2 + 8;
    v26 = a2 + 12;
    v27 = a2 + 16;
    v28 = a2 + 20;
    v29 = a2 + 24;
    v30 = a2 + 28;
    v31 = &a1[v5];
    v33 = a4 - v6;
    if (!a4)
    {
      return *a5.i64;
    }

LABEL_13:
    if (v6 == 1)
    {
      a5 = vqmovn_high_s16(vqmovn_s16(*v25), *v26);
      v34.i64[0] = 0x8080808080808080;
      v34.i64[1] = 0x8080808080808080;
      v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v34);
      v55.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v35, vdupq_laneq_s64(v35, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
      v55.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v31, v55);
    }

    if (v33 < 2)
    {
      v39 = a1;
      if (v33 != 1)
      {
        return *a5.i64;
      }
    }

    else
    {
      a5.i16[0] = -32640;
      a5.i8[2] = 0x80;
      a5.i8[3] = 0x80;
      a5.i8[4] = 0x80;
      a5.i8[5] = 0x80;
      a5.i8[6] = 0x80;
      a5.i8[7] = 0x80;
      a5.i8[8] = 0x80;
      a5.i8[9] = 0x80;
      a5.i8[10] = 0x80;
      a5.i8[11] = 0x80;
      a5.i8[12] = 0x80;
      a5.i8[13] = 0x80;
      a5.i8[14] = 0x80;
      a5.i8[15] = 0x80;
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v38.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v38.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v39 = a1;
      do
      {
        v40 = *a2++;
        v41 = v40;
        v42 = *v24++;
        v43 = vqmovn_high_s16(vqmovn_s16(v41), v42);
        v44 = *v27++;
        v45 = v44;
        v46 = *v28++;
        v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v45), v46), a5);
        v48 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v43, vrev64q_s32(v43)), a5), v37), v38);
        v49 = vminq_u8(vmaxq_u8(vzip1q_s8(v47, vdupq_laneq_s64(v47, 1)), v37), v38);
        vst2_s8(v39, *(&v48 - 8));
        v36 = 2 * a3;
        v39 += v36;
        *&a1[a3] = vzip2q_s8(v49, v48);
        v50 = v33 - 2;
        a1 = v39;
        v51 = v33 > 3;
        v33 -= 2;
      }

      while (v51);
      if (v50 != 1)
      {
        return *a5.i64;
      }
    }

    a5 = vqmovn_high_s16(vqmovn_s16(*a2), *v24);
    v52.i64[0] = 0x8080808080808080;
    v52.i64[1] = 0x8080808080808080;
    v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v27), *v28), v52);
    v56.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v53, vdupq_laneq_s64(v53, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
    v56.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(v39, v56);
    return *a5.i64;
  }

  a5.i16[0] = -32640;
  a5.i8[2] = 0x80;
  a5.i8[3] = 0x80;
  a5.i8[4] = 0x80;
  a5.i8[5] = 0x80;
  a5.i8[6] = 0x80;
  a5.i8[7] = 0x80;
  a5.i8[8] = 0x80;
  a5.i8[9] = 0x80;
  a5.i8[10] = 0x80;
  a5.i8[11] = 0x80;
  a5.i8[12] = 0x80;
  a5.i8[13] = 0x80;
  a5.i8[14] = 0x80;
  a5.i8[15] = 0x80;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v10 = a4;
  do
  {
    v11 = a2 + 1;
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[4]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), a5);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), a5), v8), v9);
    v15 = vminq_u8(vmaxq_u8(vzip1q_s8(v13, vdupq_laneq_s64(v13, 1)), v8), v9);
    v16 = a1;
    vst2_s8(v16, *(&v14 - 8));
    v7 = a3 + v5;
    v17 = &v16[v7];
    *&a1[a3] = vzip2q_s8(v15, v14);
    v18 = &a1[v5];
    a1 += 2 * a3;
    v19 = vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), a5);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v19, vrev64q_s32(v19)), a5), v8), v9);
    v22 = vminq_u8(vmaxq_u8(vzip1q_s8(v20, vdupq_laneq_s64(v20, 1)), v8), v9);
    vst2_s8(v18, *(&v21 - 8));
    *v17 = vzip2q_s8(v22, v21);
    v23 = v10 - 2;
    LODWORD(v17) = v10 - 8;
    v10 -= 2;
    ++a2;
  }

  while (v17 > 3);
  v24 = v11 + 4;
  v25 = v11 + 8;
  v26 = v11 + 12;
  v27 = v11 + 16;
  v28 = v11 + 20;
  v29 = v11 + 24;
  v30 = v11 + 28;
  v31 = &a1[v5];
  v6 = v23 - 8;
  if (a4 <= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = a4;
  }

  v33 = v23 - v32 + 8;
  a2 = v11;
  if (v33 + v6)
  {
    goto LABEL_13;
  }

  return *a5.i64;
}

double from_422_to_2vuy<4,8,(AlphaOutputMethod)0,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t a5)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  if (v6 < 2)
  {
    v24 = a2 + 4;
    v25 = a2 + 8;
    v26 = a2 + 12;
    v27 = a2 + 16;
    v28 = a2 + 20;
    v29 = a2 + 24;
    v30 = a2 + 28;
    v31 = &a1[v5];
    v33 = a4 - v6;
    if (!a4)
    {
      return *a5.i64;
    }

LABEL_13:
    if (v6 == 1)
    {
      a5 = vqmovn_high_s16(vqmovn_s16(*v25), *v26);
      v34.i64[0] = 0x8080808080808080;
      v34.i64[1] = 0x8080808080808080;
      v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v34);
      v55.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v35, vdupq_laneq_s64(v35, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
      v55.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v31, v55);
    }

    if (v33 < 2)
    {
      v39 = a1;
      if (v33 != 1)
      {
        return *a5.i64;
      }
    }

    else
    {
      a5.i16[0] = -32640;
      a5.i8[2] = 0x80;
      a5.i8[3] = 0x80;
      a5.i8[4] = 0x80;
      a5.i8[5] = 0x80;
      a5.i8[6] = 0x80;
      a5.i8[7] = 0x80;
      a5.i8[8] = 0x80;
      a5.i8[9] = 0x80;
      a5.i8[10] = 0x80;
      a5.i8[11] = 0x80;
      a5.i8[12] = 0x80;
      a5.i8[13] = 0x80;
      a5.i8[14] = 0x80;
      a5.i8[15] = 0x80;
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v38.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v38.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v39 = a1;
      do
      {
        v40 = *a2++;
        v41 = v40;
        v42 = *v24++;
        v43 = vqmovn_high_s16(vqmovn_s16(v41), v42);
        v44 = *v27++;
        v45 = v44;
        v46 = *v28++;
        v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v45), v46), a5);
        v48 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v43, vrev64q_s32(v43)), a5), v37), v38);
        v49 = vminq_u8(vmaxq_u8(vzip1q_s8(v47, vdupq_laneq_s64(v47, 1)), v37), v38);
        vst2_s8(v39, *(&v48 - 8));
        v36 = 2 * a3;
        v39 += v36;
        *&a1[a3] = vzip2q_s8(v49, v48);
        v50 = v33 - 2;
        a1 = v39;
        v51 = v33 > 3;
        v33 -= 2;
      }

      while (v51);
      if (v50 != 1)
      {
        return *a5.i64;
      }
    }

    a5 = vqmovn_high_s16(vqmovn_s16(*a2), *v24);
    v52.i64[0] = 0x8080808080808080;
    v52.i64[1] = 0x8080808080808080;
    v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v27), *v28), v52);
    v56.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v53, vdupq_laneq_s64(v53, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
    v56.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(v39, v56);
    return *a5.i64;
  }

  a5.i16[0] = -32640;
  a5.i8[2] = 0x80;
  a5.i8[3] = 0x80;
  a5.i8[4] = 0x80;
  a5.i8[5] = 0x80;
  a5.i8[6] = 0x80;
  a5.i8[7] = 0x80;
  a5.i8[8] = 0x80;
  a5.i8[9] = 0x80;
  a5.i8[10] = 0x80;
  a5.i8[11] = 0x80;
  a5.i8[12] = 0x80;
  a5.i8[13] = 0x80;
  a5.i8[14] = 0x80;
  a5.i8[15] = 0x80;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v10 = a4;
  do
  {
    v11 = a2 + 1;
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[4]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), a5);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), a5), v8), v9);
    v15 = vminq_u8(vmaxq_u8(vzip1q_s8(v13, vdupq_laneq_s64(v13, 1)), v8), v9);
    v16 = a1;
    vst2_s8(v16, *(&v14 - 8));
    v7 = a3 + v5;
    v17 = &v16[v7];
    *&a1[a3] = vzip2q_s8(v15, v14);
    v18 = &a1[v5];
    a1 += 2 * a3;
    v19 = vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), a5);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v19, vrev64q_s32(v19)), a5), v8), v9);
    v22 = vminq_u8(vmaxq_u8(vzip1q_s8(v20, vdupq_laneq_s64(v20, 1)), v8), v9);
    vst2_s8(v18, *(&v21 - 8));
    *v17 = vzip2q_s8(v22, v21);
    v23 = v10 - 2;
    LODWORD(v17) = v10 - 8;
    v10 -= 2;
    ++a2;
  }

  while (v17 > 3);
  v24 = v11 + 4;
  v25 = v11 + 8;
  v26 = v11 + 12;
  v27 = v11 + 16;
  v28 = v11 + 20;
  v29 = v11 + 24;
  v30 = v11 + 28;
  v31 = &a1[v5];
  v6 = v23 - 8;
  if (a4 <= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = a4;
  }

  v33 = v23 - v32 + 8;
  a2 = v11;
  if (v33 + v6)
  {
    goto LABEL_13;
  }

  return *a5.i64;
}

double from_422_to_2vuy<4,4,(AlphaOutputMethod)0,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t a5)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  if (v6 < 2)
  {
    v24 = a2 + 2;
    v25 = a2 + 4;
    v26 = a2 + 6;
    v27 = a2 + 8;
    v28 = a2 + 10;
    v29 = a2 + 12;
    v30 = a2 + 14;
    v31 = &a1[v5];
    v33 = a4 - v6;
    if (!a4)
    {
      return *a5.i64;
    }

LABEL_13:
    if (v6 == 1)
    {
      a5 = vqmovn_high_s16(vqmovn_s16(*v25), *v26);
      v34.i64[0] = 0x8080808080808080;
      v34.i64[1] = 0x8080808080808080;
      v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v34);
      v55.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v35, vdupq_laneq_s64(v35, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
      v55.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v31, v55);
    }

    if (v33 < 2)
    {
      v39 = a1;
      if (v33 != 1)
      {
        return *a5.i64;
      }
    }

    else
    {
      a5.i16[0] = -32640;
      a5.i8[2] = 0x80;
      a5.i8[3] = 0x80;
      a5.i8[4] = 0x80;
      a5.i8[5] = 0x80;
      a5.i8[6] = 0x80;
      a5.i8[7] = 0x80;
      a5.i8[8] = 0x80;
      a5.i8[9] = 0x80;
      a5.i8[10] = 0x80;
      a5.i8[11] = 0x80;
      a5.i8[12] = 0x80;
      a5.i8[13] = 0x80;
      a5.i8[14] = 0x80;
      a5.i8[15] = 0x80;
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v38.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v38.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v39 = a1;
      do
      {
        v40 = *a2++;
        v41 = v40;
        v42 = *v24++;
        v43 = vqmovn_high_s16(vqmovn_s16(v41), v42);
        v44 = *v27++;
        v45 = v44;
        v46 = *v28++;
        v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v45), v46), a5);
        v48 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v43, vrev64q_s32(v43)), a5), v37), v38);
        v49 = vminq_u8(vmaxq_u8(vzip1q_s8(v47, vdupq_laneq_s64(v47, 1)), v37), v38);
        vst2_s8(v39, *(&v48 - 8));
        v36 = 2 * a3;
        v39 += v36;
        *&a1[a3] = vzip2q_s8(v49, v48);
        v50 = v33 - 2;
        a1 = v39;
        v51 = v33 > 3;
        v33 -= 2;
      }

      while (v51);
      if (v50 != 1)
      {
        return *a5.i64;
      }
    }

    a5 = vqmovn_high_s16(vqmovn_s16(*a2), *v24);
    v52.i64[0] = 0x8080808080808080;
    v52.i64[1] = 0x8080808080808080;
    v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v27), *v28), v52);
    v56.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v53, vdupq_laneq_s64(v53, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
    v56.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(v39, v56);
    return *a5.i64;
  }

  a5.i16[0] = -32640;
  a5.i8[2] = 0x80;
  a5.i8[3] = 0x80;
  a5.i8[4] = 0x80;
  a5.i8[5] = 0x80;
  a5.i8[6] = 0x80;
  a5.i8[7] = 0x80;
  a5.i8[8] = 0x80;
  a5.i8[9] = 0x80;
  a5.i8[10] = 0x80;
  a5.i8[11] = 0x80;
  a5.i8[12] = 0x80;
  a5.i8[13] = 0x80;
  a5.i8[14] = 0x80;
  a5.i8[15] = 0x80;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v10 = a4;
  do
  {
    v11 = a2 + 1;
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[2]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[10]), a5);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), a5), v8), v9);
    v15 = vminq_u8(vmaxq_u8(vzip1q_s8(v13, vdupq_laneq_s64(v13, 1)), v8), v9);
    v16 = a1;
    vst2_s8(v16, *(&v14 - 8));
    v7 = a3 + v5;
    v17 = &v16[v7];
    *&a1[a3] = vzip2q_s8(v15, v14);
    v18 = &a1[v5];
    a1 += 2 * a3;
    v19 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[14]), a5);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v19, vrev64q_s32(v19)), a5), v8), v9);
    v22 = vminq_u8(vmaxq_u8(vzip1q_s8(v20, vdupq_laneq_s64(v20, 1)), v8), v9);
    vst2_s8(v18, *(&v21 - 8));
    *v17 = vzip2q_s8(v22, v21);
    v23 = v10 - 2;
    LODWORD(v17) = v10 - 4;
    v10 -= 2;
    ++a2;
  }

  while (v17 > 3);
  v24 = v11 + 2;
  v25 = v11 + 4;
  v26 = v11 + 6;
  v27 = v11 + 8;
  v28 = v11 + 10;
  v29 = v11 + 12;
  v30 = v11 + 14;
  v31 = &a1[v5];
  v6 = v23 - 4;
  if (a4 <= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a4;
  }

  v33 = v23 - v32 + 4;
  a2 = v11;
  if (v33 + v6)
  {
    goto LABEL_13;
  }

  return *a5.i64;
}

double from_422_to_2vuy<4,4,(AlphaOutputMethod)0,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t a5)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  if (v6 < 2)
  {
    v24 = a2 + 2;
    v25 = a2 + 4;
    v26 = a2 + 6;
    v27 = a2 + 8;
    v28 = a2 + 10;
    v29 = a2 + 12;
    v30 = a2 + 14;
    v31 = &a1[v5];
    v33 = a4 - v6;
    if (!a4)
    {
      return *a5.i64;
    }

LABEL_13:
    if (v6 == 1)
    {
      a5 = vqmovn_high_s16(vqmovn_s16(*v25), *v26);
      v34.i64[0] = 0x8080808080808080;
      v34.i64[1] = 0x8080808080808080;
      v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v34);
      v55.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v35, vdupq_laneq_s64(v35, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
      v55.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v31, v55);
    }

    if (v33 < 2)
    {
      v39 = a1;
      if (v33 != 1)
      {
        return *a5.i64;
      }
    }

    else
    {
      a5.i16[0] = -32640;
      a5.i8[2] = 0x80;
      a5.i8[3] = 0x80;
      a5.i8[4] = 0x80;
      a5.i8[5] = 0x80;
      a5.i8[6] = 0x80;
      a5.i8[7] = 0x80;
      a5.i8[8] = 0x80;
      a5.i8[9] = 0x80;
      a5.i8[10] = 0x80;
      a5.i8[11] = 0x80;
      a5.i8[12] = 0x80;
      a5.i8[13] = 0x80;
      a5.i8[14] = 0x80;
      a5.i8[15] = 0x80;
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v38.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v38.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v39 = a1;
      do
      {
        v40 = *a2++;
        v41 = v40;
        v42 = *v24++;
        v43 = vqmovn_high_s16(vqmovn_s16(v41), v42);
        v44 = *v27++;
        v45 = v44;
        v46 = *v28++;
        v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v45), v46), a5);
        v48 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v43, vrev64q_s32(v43)), a5), v37), v38);
        v49 = vminq_u8(vmaxq_u8(vzip1q_s8(v47, vdupq_laneq_s64(v47, 1)), v37), v38);
        vst2_s8(v39, *(&v48 - 8));
        v36 = 2 * a3;
        v39 += v36;
        *&a1[a3] = vzip2q_s8(v49, v48);
        v50 = v33 - 2;
        a1 = v39;
        v51 = v33 > 3;
        v33 -= 2;
      }

      while (v51);
      if (v50 != 1)
      {
        return *a5.i64;
      }
    }

    a5 = vqmovn_high_s16(vqmovn_s16(*a2), *v24);
    v52.i64[0] = 0x8080808080808080;
    v52.i64[1] = 0x8080808080808080;
    v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v27), *v28), v52);
    v56.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v53, vdupq_laneq_s64(v53, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
    v56.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(v39, v56);
    return *a5.i64;
  }

  a5.i16[0] = -32640;
  a5.i8[2] = 0x80;
  a5.i8[3] = 0x80;
  a5.i8[4] = 0x80;
  a5.i8[5] = 0x80;
  a5.i8[6] = 0x80;
  a5.i8[7] = 0x80;
  a5.i8[8] = 0x80;
  a5.i8[9] = 0x80;
  a5.i8[10] = 0x80;
  a5.i8[11] = 0x80;
  a5.i8[12] = 0x80;
  a5.i8[13] = 0x80;
  a5.i8[14] = 0x80;
  a5.i8[15] = 0x80;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v10 = a4;
  do
  {
    v11 = a2 + 1;
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[2]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[10]), a5);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), a5), v8), v9);
    v15 = vminq_u8(vmaxq_u8(vzip1q_s8(v13, vdupq_laneq_s64(v13, 1)), v8), v9);
    v16 = a1;
    vst2_s8(v16, *(&v14 - 8));
    v7 = a3 + v5;
    v17 = &v16[v7];
    *&a1[a3] = vzip2q_s8(v15, v14);
    v18 = &a1[v5];
    a1 += 2 * a3;
    v19 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]);
    v20 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[14]), a5);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v19, vrev64q_s32(v19)), a5), v8), v9);
    v22 = vminq_u8(vmaxq_u8(vzip1q_s8(v20, vdupq_laneq_s64(v20, 1)), v8), v9);
    vst2_s8(v18, *(&v21 - 8));
    *v17 = vzip2q_s8(v22, v21);
    v23 = v10 - 2;
    LODWORD(v17) = v10 - 4;
    v10 -= 2;
    ++a2;
  }

  while (v17 > 3);
  v24 = v11 + 2;
  v25 = v11 + 4;
  v26 = v11 + 6;
  v27 = v11 + 8;
  v28 = v11 + 10;
  v29 = v11 + 12;
  v30 = v11 + 14;
  v31 = &a1[v5];
  v6 = v23 - 4;
  if (a4 <= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a4;
  }

  v33 = v23 - v32 + 4;
  a2 = v11;
  if (v33 + v6)
  {
    goto LABEL_13;
  }

  return *a5.i64;
}