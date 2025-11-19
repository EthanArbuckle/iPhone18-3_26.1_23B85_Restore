uint64_t DecodeBlockIntra(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 112);
  v6 = *(a2 + 120);
  v39 = *(a2 + 128);
  v8 = a2 + 4 * a1;
  v40 = *(v8 + 144);
  v41 = *(a2 + 96);
  v9 = *(a2 + 8 * a1 + 16);
  v10 = *(v8 + 64);
  v11 = *(a3 + 24);
  v12 = DetermineIntraPredictionMode(*(a3 + 584), *a2, a1);
  v13 = v12;
  if (v12 == 5)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * (v12 == 6);
  }

  *(a2 + 100) = v14;
  *(a2 + 108) = 0;
  result = GrabBlockAndIQuantise(a2, a1, 1, a3);
  if (result)
  {
    return result;
  }

  v37 = v11;
  v38 = v9;
  v36 = *(a2 + 104);
  v16 = *(a2 + 105);
  ScanConvertWhatever2Raster(v7, v6, v14);
  ScanConvertWhatever2RasterFirstRowColumnOnly(v6, v39, v14);
  ReconAndUpdate(*(a3 + 584), v6, v13, *a2, a1, v40, v41);
  v17 = (v6->i16[0] * v40);
  if (v17 >= 2047)
  {
    LOWORD(v17) = 2047;
  }

  v7->i16[0] = v17;
  v18 = v7;
  if ((v13 & 4) == 0)
  {
    v20 = v37;
    v19 = v38;
    v21 = v36;
    goto LABEL_18;
  }

  v20 = v37;
  if (*(v37 + 137) != 1)
  {
    v24 = v16;
    v25 = 2 * v41;
    if ((v13 & 1) == 0)
    {
      v18[2].i16[0] = IQuantizeH263(v6[1].i16[0], v41, v25);
      v18[4].i16[0] = IQuantizeH263(v6[2].i16[0], v41, v25);
      v18[6].i16[0] = IQuantizeH263(v6[3].i16[0], v41, v25);
      v18[8].i16[0] = IQuantizeH263(v6[4].i16[0], v41, v25);
      v18[10].i16[0] = IQuantizeH263(v6[5].i16[0], v41, v25);
      v18[12].i16[0] = IQuantizeH263(v6[6].i16[0], v41, v25);
      v22 = IQuantizeH263(v6[7].i16[0], v41, v25);
      v21 = 7;
      v23 = 56;
      v19 = v38;
      v16 = v24;
      goto LABEL_17;
    }

    v18->i16[1] = IQuantizeH263(v6->i16[1], v41, v25);
    v18->i16[2] = IQuantizeH263(v6->i16[2], v41, v25);
    v18->i16[3] = IQuantizeH263(v6->i16[3], v41, v25);
    v18[1].i16[0] = IQuantizeH263(v6->i16[4], v41, v25);
    v18[1].i16[1] = IQuantizeH263(v6->i16[5], v41, v25);
    v18[1].i16[2] = IQuantizeH263(v6->i16[6], v41, v25);
    v22 = IQuantizeH263(v6->i16[7], v41, v25);
    v16 = 7;
    v23 = 7;
    v19 = v38;
LABEL_16:
    v21 = v36;
    goto LABEL_17;
  }

  v19 = v38;
  if (v13)
  {
    v7->i16[1] = IQuantizeMPEGIntra(v6->i16[1], v41, 1, a3 + 262);
    v7->i16[2] = IQuantizeMPEGIntra(v6->i16[2], v41, 2, a3 + 262);
    v7->i16[3] = IQuantizeMPEGIntra(v6->i16[3], v41, 3, a3 + 262);
    v7[1].i16[0] = IQuantizeMPEGIntra(v6->i16[4], v41, 4, a3 + 262);
    v7[1].i16[1] = IQuantizeMPEGIntra(v6->i16[5], v41, 5, a3 + 262);
    v7[1].i16[2] = IQuantizeMPEGIntra(v6->i16[6], v41, 6, a3 + 262);
    v16 = 7;
    v22 = IQuantizeMPEGIntra(v6->i16[7], v41, 7, a3 + 262);
    v23 = 7;
    goto LABEL_16;
  }

  v7[2].i16[0] = IQuantizeMPEGIntra(v6[1].i16[0], v41, 8, a3 + 262);
  v7[4].i16[0] = IQuantizeMPEGIntra(v6[2].i16[0], v41, 16, a3 + 262);
  v7[6].i16[0] = IQuantizeMPEGIntra(v6[3].i16[0], v41, 24, a3 + 262);
  v7[8].i16[0] = IQuantizeMPEGIntra(v6[4].i16[0], v41, 32, a3 + 262);
  v7[10].i16[0] = IQuantizeMPEGIntra(v6[5].i16[0], v41, 40, a3 + 262);
  v7[12].i16[0] = IQuantizeMPEGIntra(v6[6].i16[0], v41, 48, a3 + 262);
  v22 = IQuantizeMPEGIntra(v6[7].i16[0], v41, 56, a3 + 262);
  v21 = 7;
  v23 = 56;
LABEL_17:
  v18->i16[v23] = v22;
  *(a2 + 106) += 7;
LABEL_18:
  if (*(v20 + 137) == 1)
  {
    v26 = veor_s8(*v18, *&vextq_s8(*v18->i8, *v18->i8, 8uLL));
    if ((v26.i32[0] ^ v26.i32[1] ^ v18[2].u16[0] ^ ((*&v26 ^ HIDWORD(*&v26)) >> 16) ^ v18[4].u16[0] ^ v18[6].u16[0] ^ v18[8].u16[0] ^ v18[10].u16[0] ^ v18[12].u16[0] ^ v18[14].u16[0] ^ *(a2 + 108)))
    {
      v18[15].i16[3] ^= 1u;
    }
  }

  IDct8x8smart(v6, v18, *(a3 + 969), *(a2 + 106), v21, v16);
  v27 = *(a3 + 960);
  v28 = (v19 + 3);
  v29 = 9;
  result = 0;
  do
  {
    v30 = *(v27 + v6->i16[1]);
    v31 = *(v27 + v6->i16[2]);
    v32 = *(v27 + v6->i16[3]);
    *(v28 - 3) = *(v27 + v6->i16[0]);
    *(v28 - 2) = v30;
    *(v28 - 1) = v31;
    *v28 = v32;
    v33 = *(v27 + v6->i16[5]);
    v34 = *(v27 + v6->i16[6]);
    v35 = *(v27 + v6->i16[7]);
    v28[1] = *(v27 + v6->i16[4]);
    v28[2] = v33;
    v28[3] = v34;
    v28[4] = v35;
    ++v6;
    --v29;
    v28 += v10;
  }

  while (v29 > 1);
  return result;
}

uint64_t GrabBlockAndIQuantise(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 107);
  v8 = *(a1 + 96);
  v10 = *(a1 + 120);
  v9 = *(a1 + 128);
  v11 = *(a4 + 80);
  v74 = *(*(a4 + 24) + 137);
  *(a1 + 104) = 0;
  *(a1 + 106) = 0;
  if (a3)
  {
    *(v10 + 224) = 0u;
    *(v10 + 240) = 0u;
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 176) = 0u;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v12 = *(a1 + 100);
    if (v12 == 1)
    {
      v73 = &scan2ColCOLwiseTable;
      v13 = &scan2RowCOLwiseTable;
    }

    else if (v12 == 2)
    {
      v73 = &scan2RowCOLwiseTable;
      v13 = &scan2ColCOLwiseTable;
    }

    else
    {
      v73 = &scan2RowZZTable;
      v13 = &scan2ColZZTable;
    }

    v72 = v13;
    v14 = 1;
    *(a1 + 106) = 1;
    v75 = HuffmanDecQCoefFastIntra;
    if (v7)
    {
      v15 = 0;
      v65 = &lmaxIntraTab;
      v63 = 28;
      v66 = 21;
    }

    else
    {
      result = GrabDcFromBitStream(v9, a2, *(a4 + 88), v11);
      if (result)
      {
        return result;
      }

      v75 = HuffmanDecQCoefFastIntra;
      v65 = &lmaxIntraTab;
      v14 = 1;
      v63 = 28;
      v66 = 21;
      v15 = 1;
    }

    v16 = &rmaxIntraTab;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    v72 = &scan2ColZZTable;
    v73 = &scan2RowZZTable;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    v65 = &lmaxInterTab;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v75 = HuffmanDecQCoefFastInter;
    v63 = 13;
    v66 = 41;
    v16 = &rmaxInterTab;
  }

  v62 = v16;
  if (!*(*(a1 + 8) + a2))
  {
    return 0;
  }

  v76 = v14;
  v69 = v9;
  v58 = a2;
  v70 = 0;
  v17 = 0;
  v18 = 0;
  v64 = v8;
  v57 = a1;
  if (a3)
  {
    v19 = 55;
  }

  else
  {
    v19 = 25;
  }

  v60 = v19;
  v67 = (v8 | 0xFFFE) + v8 + 1;
  v68 = 2 * v8;
  v59 = a4 + 454;
  v61 = a4 + 390;
  v20 = v75;
  while (1)
  {
    v21 = v20(v11);
    if (v21 != 64)
    {
      if (v21 == -99)
      {
        return 4294965299;
      }

      LODWORD(v22) = v21 >> 8;
      v23 = v21 & 0x80;
      LODWORD(v24) = v21 & 0x1F;
      goto LABEL_19;
    }

    v26 = *(v11 + 156);
    *(v11 + 156) = v26 + 1;
    v27 = *(v11 + 4);
    if (v27)
    {
      v28 = *v11;
      v29 = v27 - 1;
      *(v11 + 4) = v29;
      if ((v28 >> v29))
      {
        *(v11 + 156) = v26 + 2;
        if (!v29)
        {
          *(v11 + 4) = 31;
          v30 = *(v11 + 160);
          v31 = *(v11 + 8);
          if (v26 + 2 > v30 || 32 * v31 > v30)
          {
            *v11 = 0;
            *(v11 + 8) = v31 + 1;
LABEL_52:
            v21 = v20(v11);
            if (v21 == -99)
            {
              return 4294965299;
            }

            v24 = v21 & 0x1F;
            v22 = (v63 & (v21 >> 7)) + v24;
            if (v22 > v60)
            {
              return 4294965299;
            }

            v23 = v21 & 0x80;
            LODWORD(v22) = v62[v22] + (v21 >> 8) + 1;
LABEL_19:
            if ((v21 & 0x40) != 0)
            {
              v25 = -1;
            }

            else
            {
              v25 = 1;
            }

            goto LABEL_64;
          }

          v28 = bswap32(*(*(v11 + 16) + 4 * v31));
          *v11 = v28;
          *(v11 + 8) = v31 + 1;
          if ((v28 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          *(v11 + 156) = v26 + 23;
          v39 = 31;
          goto LABEL_55;
        }

LABEL_47:
        v39 = v29 - 1;
        *(v11 + 4) = v29 - 1;
        if (((v28 >> (v29 - 1)) & 1) == 0)
        {
          goto LABEL_52;
        }

        v40 = v26 + 23;
        *(v11 + 156) = v26 + 23;
        if (v29 < 0x16)
        {
          v41 = 22 - v29;
          v42 = v29 + 10;
          *(v11 + 4) = v42;
          v43 = (v28 << v41) & *(v11 + 108);
          v44 = *(v11 + 160);
          v45 = *(v11 + 8);
          if (v40 > v44 || 32 * v45 > v44)
          {
            *(v11 + 8) = v45 + 1;
            *v11 = 0;
          }

          else
          {
            v46 = bswap32(*(*(v11 + 16) + 4 * v45));
            *v11 = v46;
            *(v11 + 8) = v45 + 1;
            v43 |= *(v11 + 24 + 4 * v41) & (v46 >> v42);
          }

          goto LABEL_57;
        }

LABEL_55:
        *(v11 + 4) = v39 - 21;
        v43 = (v28 >> (v39 - 21)) & *(v11 + 108);
LABEL_57:
        if (v43 == -99)
        {
          return 4294965299;
        }

        v47 = (v43 >> 1) & 0xFFF;
        LODWORD(v22) = (v43 >> 14) & 0x3F;
        v23 = v43 >> 20;
        v48 = -(v43 >> 1) & 0xFFF;
        if (v47 >= 0x800)
        {
          LODWORD(v24) = v48;
        }

        else
        {
          LODWORD(v24) = v47;
        }

        if (v47 < 0x800)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        goto LABEL_64;
      }
    }

    else
    {
      *(v11 + 4) = 31;
      v33 = *(v11 + 160);
      v34 = *(v11 + 8);
      if (v26 + 1 > v33 || 32 * v34 > v33)
      {
        *v11 = 0;
        *(v11 + 8) = v34 + 1;
      }

      else
      {
        v28 = bswap32(*(*(v11 + 16) + 4 * v34));
        *v11 = v28;
        *(v11 + 8) = v34 + 1;
        if ((v28 & 0x80000000) != 0)
        {
          *(v11 + 156) = v26 + 2;
          v29 = 31;
          goto LABEL_47;
        }
      }
    }

    v36 = v20(v11);
    if (v36 == -99)
    {
      return 4294965299;
    }

    v22 = v36 >> 8;
    v37 = (v66 & (v36 >> 7)) + v22;
    if (v37 > 0x51)
    {
      return 4294965299;
    }

    v23 = v36 & 0x80;
    v38 = v65[v37];
    v25 = (v36 & 0x40) != 0 ? -1 : 1;
    LODWORD(v24) = (v36 & 0x1F) + v38;
LABEL_64:
    v49 = v22 + v15;
    if (v49 > 63)
    {
      return 4294965299;
    }

    ++v76;
    v50 = v73[v49];
    v51 = v72[v49];
    v18 -= (v18 - v50) & ((v18 - v50) >> 31);
    v17 -= (v17 - v51) & ((v17 - v51) >> 31);
    if (v74 == 1)
    {
      break;
    }

    *(v10 + 2 * v49) = v25 * (v67 + v68 * v24);
    if (a3)
    {
      v69[v49] = v25 * v24;
    }

    v20 = v75;
    if (v23)
    {
      goto LABEL_92;
    }

LABEL_82:
    v15 = v49 + 1;
  }

  if (v24)
  {
    if (a3)
    {
      if (v49)
      {
        v52 = v64 * v24 * *(v61 + v49);
        v53 = v25 * ((v52 + (v52 < 0 ? 7 : 0)) >> 3);
      }

      else
      {
        v53 = v25 * v24 * Get_dc_scaler(v64, v58);
      }

      v69[v49] = v25 * v24;
      if (v50 | v51)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0;
      }

      v70 ^= v55;
    }

    else
    {
      v54 = ((2 * v24) | 1) * v64 * *(v59 + v49);
      v53 = v25 * ((v54 + (v54 < 0 ? 0xF : 0)) >> 4);
      v70 ^= v53;
    }
  }

  else
  {
    LOWORD(v53) = 0;
  }

  *(v10 + 2 * v49) = v53;
  v20 = v75;
  if (!v23)
  {
    goto LABEL_82;
  }

  if (a3 || (v70 & 1) == 0)
  {
    if (a3)
    {
      *(v57 + 108) = v70;
    }
  }

  else
  {
    *(v10 + 126) ^= 1u;
  }

LABEL_92:
  result = 0;
  *(v57 + 104) = v18;
  *(v57 + 105) = v17;
  *(v57 + 106) = v76;
  return result;
}

CIntraDcDecoder *GrabDcFromBitStream(__int16 *a1, int a2, CIntraDcDecoder *this, CBitStreamDeco *a4)
{
  if (a2 > 3)
  {
    return CIntraDcDecoder::GrabDcChrominance(this, a1, a4);
  }

  else
  {
    return CIntraDcDecoder::GrabDcLuminance(this, a1, a4);
  }
}

uint64_t DecodeBlockIntraDataPartitioned(void *a1, __int16 *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5, int a6, int a7, int a8, int a9, char a10, int a11, uint64_t a12, CBitStreamDeco *a13)
{
  v18 = DetermineIntraPredictionMode(*(a12 + 584), a6, a7);
  v19 = v18;
  v20 = *(a12 + 968);
  if (v18 == 5)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2 * (v18 == 6);
  }

  *v31 = 0;
  if (a11)
  {
    *(a3 + 96) = 0uLL;
    *(a3 + 112) = 0uLL;
    *(a3 + 64) = 0uLL;
    *(a3 + 80) = 0uLL;
    *(a3 + 32) = 0uLL;
    *(a3 + 48) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
    if (a10)
    {
      v22 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    *(a3 + 112) = 0uLL;
    *(a3 + 98) = 0uLL;
    *(a3 + 82) = 0uLL;
    *(a3 + 66) = 0uLL;
    *(a3 + 50) = 0uLL;
    *(a3 + 34) = 0uLL;
    *(a3 + 18) = 0uLL;
    *(a3 + 2) = 0uLL;
    if (a10)
    {
      v22 = 1;
LABEL_9:
      result = GrabAcFromBitStreamIntra(a3, v22, v21, &v31[1], v31, v20, a13);
      if (result)
      {
        return result;
      }
    }
  }

  ScanConvertWhatever2Raster(a2, a3, v21);
  ReconAndUpdate(*(a12 + 584), a2, v19, a6, a7, a9, a8);
  v24 = *(a12 + 24);
  if (*(v24 + 137) == 1)
  {
    IQuantizeBlockMPEG(a2, a8, 1, a7, a12 + 262);
  }

  else
  {
    IQuantizeBlockH263Opt(a2, a8, 1, *(v24 + 21), a7);
  }

  IDct8x8Yoyo(a4, a2, 7u, *(a12 + 960));
  v25 = (a4 + 8);
  v26 = -2;
  do
  {
    v27 = *v25;
    *a1 = *(v25 - 1);
    *(a1 + (a5 & 0xFFFFFFFC)) = v27;
    v26 += 2;
    a1 = (a1 + 4 * (a5 >> 1));
    v25 += 2;
  }

  while (v26 < 6);
  return 0;
}

uint64_t DecodeBlockInterDataPartitioned(uint64_t a1, uint64_t a2, __int16 *a3, int a4, int a5, int a6, uint64_t a7)
{
  v10 = 0;
  v11 = *(a7 + 80);
  v12 = *(a7 + 968);
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v13 = v11 + 24;
  while (1)
  {
    if (v12)
    {
      v14 = RVLCDecQCoef(v11, &MPEG4_RVLCTable_Inter);
    }

    else
    {
      v14 = HuffmanDecQCoefInter(v11);
    }

    if (v14 == 64)
    {
      v18 = *(v11 + 156);
      v19 = v18 + 1;
      *(v11 + 156) = v18 + 1;
      v20 = *(v11 + 4);
      if (v12)
      {
        if (v20)
        {
          v21 = *v11;
          v22 = v20 - 1;
          *(v11 + 4) = v20 - 1;
          v15 = (v21 >> (v20 - 1)) & 1;
          *(v11 + 156) = v18 + 7;
          if (v20 <= 6)
          {
            *(v11 + 4) = v20 + 25;
            v17 = *(v11 + 48) & (v21 << (7 - v20));
            v23 = *(v11 + 160);
            v24 = *(v11 + 8);
            if (v18 + 7 > v23 || 32 * v24 > v23)
            {
              v21 = 0;
              *(v11 + 8) = v24 + 1;
              *v11 = 0;
            }

            else
            {
              v21 = bswap32(*(*(v11 + 16) + 4 * v24));
              *v11 = v21;
              *(v11 + 8) = v24 + 1;
              v17 |= *(v13 + 4 * (7 - v20)) & (v21 >> (v20 + 25));
            }

            v36 = v20 | 0x18;
            goto LABEL_50;
          }
        }

        else
        {
          *(v11 + 4) = 31;
          v30 = *(v11 + 160);
          v31 = *(v11 + 8);
          if (v19 > v30 || 32 * v31 > v30)
          {
            v15 = 0;
            v21 = 0;
            *v11 = 0;
            *(v11 + 8) = v31 + 1;
          }

          else
          {
            v21 = bswap32(*(*(v11 + 16) + 4 * v31));
            *v11 = v21;
            *(v11 + 8) = v31 + 1;
            v15 = v21 >> 31;
          }

          v22 = 31;
        }

        *(v11 + 156) = v18 + 8;
        *(v11 + 4) = v22 - 6;
        v17 = *(v11 + 48) & (v21 >> (v22 - 6));
        if (v22 == 6)
        {
          v21 = 0;
          *(v11 + 4) = 31;
          v41 = *(v11 + 160);
          v42 = *(v11 + 8);
          if (v18 + 8 <= v41 && 32 * v42 <= v41)
          {
            v21 = bswap32(*(*(v11 + 16) + 4 * v42));
          }

          *v11 = v21;
          *(v11 + 8) = v42 + 1;
          v36 = 31;
        }

        else
        {
          v36 = v22 - 7;
          *(v11 + 4) = v22 - 7;
          *(v11 + 156) = v18 + 19;
          if ((v22 - 6) <= 0xB)
          {
            v37 = 18 - v22;
            v38 = v22 + 14;
            *(v11 + 4) = v38;
            v16 = *(v11 + 68) & (v21 << v37);
            v39 = *(v11 + 160);
            v40 = *(v11 + 8);
            if (v18 + 19 > v39 || 32 * v40 > v39)
            {
              v21 = 0;
              *(v11 + 8) = v40 + 1;
              *v11 = 0;
            }

            else
            {
              v21 = bswap32(*(*(v11 + 16) + 4 * v40));
              *v11 = v21;
              *(v11 + 8) = v40 + 1;
              v16 |= *(v13 + 4 * v37) & (v21 >> v38);
            }

            goto LABEL_66;
          }
        }

LABEL_50:
        *(v11 + 156) = v18 + 20;
        v38 = v36 - 11;
        *(v11 + 4) = v36 - 11;
        v16 = *(v11 + 68) & (v21 >> (v36 - 11));
        if (v36 == 11)
        {
          v21 = 0;
          *(v11 + 4) = 31;
          v47 = *(v11 + 160);
          v48 = *(v11 + 8);
          if (v18 + 20 <= v47 && 32 * v48 <= v47)
          {
            v21 = bswap32(*(*(v11 + 16) + 4 * v48));
          }

          *v11 = v21;
          *(v11 + 8) = v48 + 1;
          v44 = 27;
          goto LABEL_60;
        }

        v43 = v36 - 12;
        *(v11 + 4) = v43;
        *(v11 + 156) = v18 + 24;
        if (v38 <= 4)
        {
          v44 = v43 | 0x1C;
          *(v11 + 4) = v43 | 0x1C;
          v45 = *(v11 + 160);
          v46 = *(v11 + 8);
          if (v18 + 24 > v45 || 32 * v46 > v45)
          {
            v21 = 0;
            *(v11 + 8) = v46 + 1;
            *v11 = 0;
          }

          else
          {
            v21 = bswap32(*(*(v11 + 16) + 4 * v46));
            *v11 = v21;
            *(v11 + 8) = v46 + 1;
          }

LABEL_60:
          *(v11 + 156) = v18 + 25;
          goto LABEL_67;
        }

LABEL_66:
        v50 = v18 + 25;
        *(v11 + 156) = v18 + 25;
        v44 = v38 - 5;
        *(v11 + 4) = v44;
        if (!v44)
        {
          *(v11 + 4) = 31;
          v53 = *(v11 + 160);
          v54 = *(v11 + 8);
          if (v50 > v53 || 32 * v54 > v53)
          {
            *v11 = 0;
            *(v11 + 8) = v54 + 1;
            goto LABEL_70;
          }

          v55 = bswap32(*(*(v11 + 16) + 4 * v54));
          *v11 = v55;
          *(v11 + 8) = v54 + 1;
          v51 = v55 >> 31;
          goto LABEL_68;
        }

LABEL_67:
        *(v11 + 4) = v44 - 1;
        v51 = (v21 >> (v44 - 1)) & 1;
LABEL_68:
        if (v51)
        {
          v16 = -v16;
        }

        goto LABEL_70;
      }

      if (v20)
      {
        v25 = *v11;
        v26 = v20 - 1;
        *(v11 + 4) = v26;
        if (((v25 >> v26) & 1) == 0)
        {
          goto LABEL_62;
        }

        *(v11 + 156) = v18 + 2;
        if (!v26)
        {
          *(v11 + 4) = 31;
          v27 = *(v11 + 160);
          v28 = *(v11 + 8);
          if (v18 + 2 > v27 || 32 * v28 > v27)
          {
            *v11 = 0;
            *(v11 + 8) = v28 + 1;
          }

          else
          {
            v25 = bswap32(*(*(v11 + 16) + 4 * v28));
            *v11 = v25;
            *(v11 + 8) = v28 + 1;
            if ((v25 & 0x80000000) != 0)
            {
              v15 = (v25 >> 30) & 1;
              v29 = 30;
              goto LABEL_87;
            }
          }

          goto LABEL_81;
        }
      }

      else
      {
        *(v11 + 4) = 31;
        v32 = *(v11 + 160);
        v33 = *(v11 + 8);
        if (v19 > v32 || 32 * v33 > v32)
        {
          *v11 = 0;
          *(v11 + 8) = v33 + 1;
LABEL_62:
          v49 = HuffmanDecQCoefInter(v11);
          v15 = (v49 >> 7) & 1;
          v17 = v49 >> 8;
          if ((((v49 & 0x1F) != 0) & ((v49 & 0x40) >> 6)) != 0)
          {
            v16 = -((v49 & 0x1F) + lmaxInterTab[41 * v15 + (v49 >> 8)]);
          }

          else
          {
            LOWORD(v16) = (v49 & 0x1F) + lmaxInterTab[41 * v15 + (v49 >> 8)];
          }

          goto LABEL_70;
        }

        v25 = bswap32(*(*(v11 + 16) + 4 * v33));
        *v11 = v25;
        *(v11 + 8) = v33 + 1;
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        *(v11 + 156) = v18 + 2;
        v26 = 31;
      }

      *(v11 + 4) = v26 - 1;
      if ((v25 >> (v26 - 1)))
      {
        *(v11 + 156) = v18 + 3;
        if (v26 == 1)
        {
          *(v11 + 4) = 31;
          v56 = *(v11 + 160);
          v57 = *(v11 + 8);
          if (v18 + 3 > v56 || 32 * v57 > v56)
          {
            v15 = 0;
            v25 = 0;
            *v11 = 0;
            *(v11 + 8) = v57 + 1;
          }

          else
          {
            v25 = bswap32(*(*(v11 + 16) + 4 * v57));
            *v11 = v25;
            *(v11 + 8) = v57 + 1;
            v15 = v25 >> 31;
          }

          v29 = 31;
        }

        else
        {
          v29 = v26 - 2;
          v15 = (v25 >> (v26 - 2)) & 1;
          *(v11 + 156) = v18 + 9;
          if (v26 <= 7)
          {
            *(v11 + 4) = v26 | 0x18;
            v17 = *(v11 + 48) & (v25 << (8 - v26));
            v34 = *(v11 + 160);
            v35 = *(v11 + 8);
            if (v18 + 9 > v34 || 32 * v35 > v34)
            {
              v25 = 0;
              *(v11 + 8) = v35 + 1;
              *v11 = 0;
            }

            else
            {
              v25 = bswap32(*(*(v11 + 16) + 4 * v35));
              *v11 = v25;
              *(v11 + 8) = v35 + 1;
              v17 |= *(v13 + 4 * (8 - v26)) & (v25 >> (v26 | 0x18));
            }

            v68 = v26 + 23;
            goto LABEL_99;
          }
        }

LABEL_87:
        v59 = *(v11 + 48);
        *(v11 + 156) = v18 + 10;
        v17 = (v25 >> (v29 - 6)) & v59;
        if (v29 == 6)
        {
          v25 = 0;
          *(v11 + 4) = 31;
          v66 = *(v11 + 160);
          v67 = *(v11 + 8);
          if (v18 + 10 <= v66 && 32 * v67 <= v66)
          {
            v25 = bswap32(*(*(v11 + 16) + 4 * v67));
          }

          *v11 = v25;
          *(v11 + 8) = v67 + 1;
          v68 = 31;
        }

        else
        {
          *(v11 + 156) = v18 + 22;
          if ((v29 - 6) <= 0xC)
          {
            v60 = 19 - v29;
            v61 = v29 + 13;
            *(v11 + 4) = v29 + 13;
            v62 = *(v11 + 72) & (v25 << (19 - v29));
            v63 = *(v11 + 160);
            v64 = *(v11 + 8);
            if (v18 + 22 > v63 || 32 * v64 > v63)
            {
              *(v11 + 8) = v64 + 1;
              *v11 = 0;
            }

            else
            {
              v65 = bswap32(*(*(v11 + 16) + 4 * v64));
              *v11 = v65;
              *(v11 + 8) = v64 + 1;
              v62 |= *(v13 + 4 * v60) & (v65 >> v61);
            }

            *(v11 + 156) = v18 + 23;
            goto LABEL_107;
          }

          v68 = v29 - 7;
        }

LABEL_99:
        v69 = *(v11 + 72);
        v70 = v18 + 23;
        *(v11 + 156) = v18 + 23;
        v61 = v68 - 12;
        v62 = v69 & (v25 >> v61);
        if (!v61)
        {
          *(v11 + 4) = 31;
          v71 = *(v11 + 160);
          v72 = *(v11 + 8);
          if (v70 > v71 || 32 * v72 > v71)
          {
            *v11 = 0;
          }

          else
          {
            *v11 = bswap32(*(*(v11 + 16) + 4 * v72));
          }

          *(v11 + 8) = v72 + 1;
          goto LABEL_108;
        }

LABEL_107:
        *(v11 + 4) = v61 - 1;
LABEL_108:
        if ((v62 & 0x800) != 0)
        {
          LOWORD(v16) = v62 | 0xF000;
        }

        else
        {
          LOWORD(v16) = v62;
        }

        goto LABEL_70;
      }

LABEL_81:
      v58 = HuffmanDecQCoefInter(v11);
      v15 = (v58 >> 7) & 1;
      if ((v58 & 0x40) != 0)
      {
        v16 = -(v58 & 0x1F);
      }

      else
      {
        LOWORD(v16) = v58 & 0x1F;
      }

      v17 = rmaxInterTab[13 * v15 + (v58 & 0x1F)] + (v58 >> 8) + 1;
      goto LABEL_70;
    }

    if (v14 == 65437)
    {
      return 4294965299;
    }

    v15 = (v14 >> 7) & 1;
    if ((v14 & 0x40) != 0)
    {
      v16 = -(v14 & 0x1F);
    }

    else
    {
      LOWORD(v16) = v14 & 0x1F;
    }

    v17 = v14 >> 8;
LABEL_70:
    v52 = v10 + v17;
    if (v52 >= 63)
    {
      break;
    }

    v10 = v52 + 1;
    *(a2 + 2 * v52) = v16;
    if (v15)
    {
      goto LABEL_113;
    }
  }

  if (v52 != 63)
  {
    return 4294965299;
  }

  *(a2 + 126) = v16;
LABEL_113:
  ScanConvertZigZag2Raster(a3, a2);
  if (*(*(a7 + 24) + 137) == 1)
  {
    IQuantizeBlockMPEG(a3, a6, 0, a5, a7 + 326);
  }

  else
  {
    IQuantizeBlockH263(a3, a6, 0);
  }

  IDct8x8Yoyo(a2, a3, 7u);
  AddResidue_8x8(a1, a4, a2, *(a7 + 960));
  return 0;
}

uint64_t GrabAcFromBitStreamIntra(__int16 *a1, int a2, int a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6, CBitStreamDeco *a7)
{
  v13 = &scan2ColCOLwiseTable;
  v14 = &scan2RowCOLwiseTable;
  if (a3 == 1)
  {
    v14 = &scan2ColCOLwiseTable;
    v13 = &scan2RowCOLwiseTable;
  }

  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = &scan2RowZZTable;
  }

  if (a3)
  {
    v16 = v13;
  }

  else
  {
    v16 = &scan2ColZZTable;
  }

  v85 = a7 + 24;
  while (1)
  {
    if (a6)
    {
      v17 = RVLCDecQCoef(a7, &MPEG4_RVLCTable_Intra);
    }

    else
    {
      v17 = HuffmanDecQCoefIntra(a7);
    }

    if (v17 == 64)
    {
      v21 = *(a7 + 39);
      v22 = v21 + 1;
      *(a7 + 39) = v21 + 1;
      v23 = *(a7 + 1);
      if (a6)
      {
        if (v23)
        {
          v24 = *a7;
          v25 = v23 - 1;
          *(a7 + 1) = v23 - 1;
          v18 = (v24 >> (v23 - 1)) & 1;
          *(a7 + 39) = v21 + 7;
          if (v23 <= 6)
          {
            v26 = 7 - v23;
            v27 = v23 + 25;
            *(a7 + 1) = v27;
            v20 = (v24 << v26) & *(a7 + 12);
            v28 = *(a7 + 40);
            v29 = *(a7 + 2);
            if (v21 + 7 > v28 || 32 * v29 > v28)
            {
              v24 = 0;
              *(a7 + 2) = v29 + 1;
              *a7 = 0;
            }

            else
            {
              v24 = bswap32(*(*(a7 + 2) + 4 * v29));
              *a7 = v24;
              *(a7 + 2) = v29 + 1;
              v20 |= *&v85[4 * v26] & (v24 >> v27);
            }

            goto LABEL_54;
          }
        }

        else
        {
          *(a7 + 1) = 31;
          v35 = *(a7 + 40);
          v36 = *(a7 + 2);
          if (v22 > v35 || 32 * v36 > v35)
          {
            v18 = 0;
            v24 = 0;
            *a7 = 0;
            *(a7 + 2) = v36 + 1;
          }

          else
          {
            v24 = bswap32(*(*(a7 + 2) + 4 * v36));
            *a7 = v24;
            *(a7 + 2) = v36 + 1;
            v18 = v24 >> 31;
          }

          v25 = 31;
        }

        *(a7 + 39) = v21 + 8;
        v27 = v25 - 6;
        v44 = v25 == 6;
        *(a7 + 1) = v25 - 6;
        v20 = (v24 >> (v25 - 6)) & *(a7 + 12);
        if (v44)
        {
          v24 = 0;
          *(a7 + 1) = 31;
          v45 = *(a7 + 40);
          v46 = *(a7 + 2);
          if (v21 + 8 <= v45 && 32 * v46 <= v45)
          {
            v24 = bswap32(*(*(a7 + 2) + 4 * v46));
          }

          *a7 = v24;
          *(a7 + 2) = v46 + 1;
          v47 = 31;
          goto LABEL_58;
        }

LABEL_54:
        v47 = v27 - 1;
        *(a7 + 1) = v27 - 1;
        *(a7 + 39) = v21 + 19;
        if (v27 <= 0xB)
        {
          v48 = 12 - v27;
          v49 = v27 + 20;
          *(a7 + 1) = v27 + 20;
          v19 = (v24 << (12 - v27)) & *(a7 + 17);
          v50 = *(a7 + 40);
          v51 = *(a7 + 2);
          if (v21 + 19 > v50 || 32 * v51 > v50)
          {
            v24 = 0;
            *(a7 + 2) = v51 + 1;
            *a7 = 0;
          }

          else
          {
            v24 = bswap32(*(*(a7 + 2) + 4 * v51));
            *a7 = v24;
            *(a7 + 2) = v51 + 1;
            v19 |= *&v85[4 * v48] & (v24 >> v49);
          }

          goto LABEL_64;
        }

LABEL_58:
        *(a7 + 39) = v21 + 20;
        v49 = v47 - 11;
        *(a7 + 1) = v49;
        v19 = (v24 >> v49) & *(a7 + 17);
        if (!v49)
        {
          v24 = 0;
          *(a7 + 1) = 31;
          v52 = *(a7 + 40);
          v53 = *(a7 + 2);
          if (v21 + 20 <= v52 && 32 * v53 <= v52)
          {
            v24 = bswap32(*(*(a7 + 2) + 4 * v53));
          }

          *a7 = v24;
          *(a7 + 2) = v53 + 1;
          v54 = 27;
          goto LABEL_73;
        }

LABEL_64:
        v55 = v49 - 1;
        *(a7 + 1) = v49 - 1;
        *(a7 + 39) = v21 + 24;
        if (v49 > 4)
        {
          v58 = v21 + 25;
          *(a7 + 39) = v21 + 25;
          v54 = v49 - 5;
          *(a7 + 1) = v54;
          if (!v54)
          {
            *(a7 + 1) = 31;
            v59 = *(a7 + 40);
            v60 = *(a7 + 2);
            if (v58 > v59 || 32 * v60 > v59)
            {
              *a7 = 0;
              *(a7 + 2) = v60 + 1;
              goto LABEL_116;
            }

            v61 = bswap32(*(*(a7 + 2) + 4 * v60));
            *a7 = v61;
            *(a7 + 2) = v60 + 1;
            v62 = v61 >> 31;
            goto LABEL_75;
          }

LABEL_74:
          *(a7 + 1) = v54 - 1;
          v62 = (v24 >> (v54 - 1)) & 1;
LABEL_75:
          if (v62)
          {
            v19 = -v19;
          }

          goto LABEL_116;
        }

        v54 = v55 | 0x1C;
        *(a7 + 1) = v55 | 0x1C;
        v56 = *(a7 + 40);
        v57 = *(a7 + 2);
        if (v21 + 24 > v56 || 32 * v57 > v56)
        {
          v24 = 0;
          *(a7 + 2) = v57 + 1;
          *a7 = 0;
        }

        else
        {
          v24 = bswap32(*(*(a7 + 2) + 4 * v57));
          *a7 = v24;
          *(a7 + 2) = v57 + 1;
        }

LABEL_73:
        *(a7 + 39) = v21 + 25;
        goto LABEL_74;
      }

      if (v23)
      {
        v30 = *a7;
        v31 = v23 - 1;
        *(a7 + 1) = v23 - 1;
        if (((v30 >> (v23 - 1)) & 1) == 0)
        {
          goto LABEL_79;
        }

        *(a7 + 39) = v21 + 2;
        if (v23 == 1)
        {
          *(a7 + 1) = 31;
          v32 = *(a7 + 40);
          v33 = *(a7 + 2);
          if (v21 + 2 > v32 || 32 * v33 > v32)
          {
            *a7 = 0;
            *(a7 + 2) = v33 + 1;
          }

          else
          {
            v30 = bswap32(*(*(a7 + 2) + 4 * v33));
            *a7 = v30;
            *(a7 + 2) = v33 + 1;
            if ((v30 & 0x80000000) != 0)
            {
              v34 = 31;
              goto LABEL_41;
            }
          }

          goto LABEL_87;
        }
      }

      else
      {
        *(a7 + 1) = 31;
        v37 = *(a7 + 40);
        v38 = *(a7 + 2);
        if (v22 > v37 || 32 * v38 > v37)
        {
          *a7 = 0;
          *(a7 + 2) = v38 + 1;
LABEL_79:
          v63 = HuffmanDecQCoefIntra(a7);
          v18 = (v63 >> 7) & 1;
          v20 = v63 >> 8;
          if ((((v63 & 0x1F) != 0) & ((v63 & 0x40) >> 6)) != 0)
          {
            v19 = -((v63 & 0x1F) + lmaxIntraTab[21 * v18 + (v63 >> 8)]);
          }

          else
          {
            LOWORD(v19) = (v63 & 0x1F) + lmaxIntraTab[21 * v18 + (v63 >> 8)];
          }

          goto LABEL_116;
        }

        v30 = bswap32(*(*(a7 + 2) + 4 * v38));
        *a7 = v30;
        *(a7 + 2) = v38 + 1;
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        *(a7 + 39) = v21 + 2;
        v31 = 31;
      }

      v34 = v31 - 1;
      *(a7 + 1) = v31 - 1;
      if ((v30 >> (v31 - 1)))
      {
        *(a7 + 39) = v21 + 3;
        if (v31 == 1)
        {
          *(a7 + 1) = 31;
          v64 = *(a7 + 40);
          v65 = *(a7 + 2);
          if (v21 + 3 > v64 || 32 * v65 > v64)
          {
            v18 = 0;
            v30 = 0;
            *a7 = 0;
            *(a7 + 2) = v65 + 1;
          }

          else
          {
            v30 = bswap32(*(*(a7 + 2) + 4 * v65));
            *a7 = v30;
            *(a7 + 2) = v65 + 1;
            v18 = v30 >> 31;
          }

          v39 = 31;
          goto LABEL_94;
        }

LABEL_41:
        v39 = v34 - 1;
        v18 = (v30 >> (v34 - 1)) & 1;
        *(a7 + 39) = v21 + 9;
        if (v34 <= 6)
        {
          v40 = 7 - v34;
          v41 = v34 + 25;
          *(a7 + 1) = v41;
          v20 = (v30 << v40) & *(a7 + 12);
          v42 = *(a7 + 40);
          v43 = *(a7 + 2);
          if (v21 + 9 > v42 || 32 * v43 > v42)
          {
            v30 = 0;
            *(a7 + 2) = v43 + 1;
            *a7 = 0;
          }

          else
          {
            v30 = bswap32(*(*(a7 + 2) + 4 * v43));
            *a7 = v30;
            *(a7 + 2) = v43 + 1;
            v20 |= *&v85[4 * v40] & (v30 >> v41);
          }

          goto LABEL_95;
        }

LABEL_94:
        v67 = *(a7 + 12);
        *(a7 + 39) = v21 + 10;
        v41 = v39 - 6;
        v44 = v39 == 6;
        v20 = (v30 >> (v39 - 6)) & v67;
        if (v44)
        {
          v30 = 0;
          *(a7 + 1) = 31;
          v75 = *(a7 + 40);
          v76 = *(a7 + 2);
          if (v21 + 10 <= v75 && 32 * v76 <= v75)
          {
            v30 = bswap32(*(*(a7 + 2) + 4 * v76));
          }

          *a7 = v30;
          *(a7 + 2) = v76 + 1;
          v74 = 31;
          goto LABEL_104;
        }

LABEL_95:
        *(a7 + 39) = v21 + 22;
        if (v41 <= 0xC)
        {
          v68 = 13 - v41;
          v69 = v41 + 19;
          *(a7 + 1) = v69;
          v70 = (v30 << v68) & *(a7 + 18);
          v71 = *(a7 + 40);
          v72 = *(a7 + 2);
          if (v21 + 22 > v71 || 32 * v72 > v71)
          {
            *(a7 + 2) = v72 + 1;
            *a7 = 0;
          }

          else
          {
            v73 = bswap32(*(*(a7 + 2) + 4 * v72));
            *a7 = v73;
            *(a7 + 2) = v72 + 1;
            v70 |= *&v85[4 * v68] & (v73 >> v69);
          }

          *(a7 + 39) = v21 + 23;
          goto LABEL_110;
        }

        v74 = v41 - 1;
LABEL_104:
        v77 = *(a7 + 18);
        v78 = v21 + 23;
        *(a7 + 39) = v21 + 23;
        v69 = v74 - 12;
        v70 = (v30 >> v69) & v77;
        if (!v69)
        {
          *(a7 + 1) = 31;
          v79 = *(a7 + 40);
          v80 = *(a7 + 2);
          if (v78 > v79 || 32 * v80 > v79)
          {
            *a7 = 0;
          }

          else
          {
            *a7 = bswap32(*(*(a7 + 2) + 4 * v80));
          }

          *(a7 + 2) = v80 + 1;
          goto LABEL_113;
        }

LABEL_110:
        *(a7 + 1) = v69 - 1;
LABEL_113:
        if ((v70 & 0x800) != 0)
        {
          LOWORD(v19) = v70 | 0xF000;
        }

        else
        {
          LOWORD(v19) = v70;
        }

        goto LABEL_116;
      }

LABEL_87:
      v66 = HuffmanDecQCoefIntra(a7);
      v18 = (v66 >> 7) & 1;
      if ((v66 & 0x40) != 0)
      {
        v19 = -(v66 & 0x1F);
      }

      else
      {
        LOWORD(v19) = v66 & 0x1F;
      }

      v20 = rmaxIntraTab[28 * v18 + (v66 & 0x1F)] + (v66 >> 8) + 1;
      goto LABEL_116;
    }

    if (v17 == 65437)
    {
      return 4294965299;
    }

    v18 = (v17 >> 7) & 1;
    if ((v17 & 0x40) != 0)
    {
      v19 = -(v17 & 0x1F);
    }

    else
    {
      LOWORD(v19) = v17 & 0x1F;
    }

    v20 = v17 >> 8;
LABEL_116:
    v81 = a2 + v20;
    if (v81 >= 63)
    {
      break;
    }

LABEL_119:
    v82 = v15[v81];
    v83 = v16[v81];
    if (v82 > *a4)
    {
      *a4 = v82;
    }

    if (v83 > *a5)
    {
      *a5 = v83;
    }

    a1[v81] = v19;
    a2 = v81 + 1;
    if (v18)
    {
      return 0;
    }
  }

  if (v81 == 63)
  {
    v18 = 1;
    goto LABEL_119;
  }

  return 4294965299;
}

uint64_t InitInstanceGlobalsDecoGenenral(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *a1;
  if (*a1)
  {
    if (*(v8 + 96) == a2 && *(v8 + 98) == a3)
    {
      return 0;
    }

    KillInstanceGlobalsDeco(a1);
    if (*a1)
    {
      return 0;
    }
  }

  v10 = MEM_NewClear(976);
  *a1 = v10;
  if (v10)
  {
    v10[76] = a4;
    v11 = *a1;
    *(v11 + 96) = v6;
    *(v11 + 98) = v5;
    if (!InitSourceInfo((v11 + 16), v6, v5) && !InitGobHeader(*a1 + 32))
    {
      v12 = *a1;
      v13 = v5 + 15;
      v14 = (v6 + 15) & 0xFFF0;
      *v12 = v14;
      v15 = v13 & 0xFFF0;
      *(v12 + 6) = v13 & 0xFFF0;
      *(v12 + 2) = v14 >> 1;
      *(v12 + 8) = (v13 & 0xFFF0) >> 1;
      *(v12 + 4) = v14 >> 1;
      *(v12 + 10) = (v13 & 0xFFF0) >> 1;
      if (!NewMB((v12 + 104)))
      {
        *(*a1 + 112) = MEM_New(v14 >> 2);
        if (*(*a1 + 112))
        {
          *(*a1 + 120) = MEM_New(v14 >> 2);
          if (*(*a1 + 120))
          {
            *(*a1 + 128) = MEM_New(v14 >> 2);
            if (*(*a1 + 128))
            {
              *(*a1 + 136) = MEM_New(v14 >> 2);
              if (*(*a1 + 136))
              {
                *(*a1 + 144) = MEM_New(v14 >> 2);
                if (*(*a1 + 144))
                {
                  *(*a1 + 152) = MEM_New(v14 >> 2);
                  if (*(*a1 + 152))
                  {
                    *(*a1 + 160) = MEM_New(v14 >> 2);
                    if (*(*a1 + 160))
                    {
                      *(*a1 + 168) = MEM_New(v14 >> 2);
                      if (*(*a1 + 168))
                      {
                        *(*a1 + 176) = MEM_New(v14 >> 2);
                        if (*(*a1 + 176))
                        {
                          *(*a1 + 184) = MEM_New(v14 >> 2);
                          if (*(*a1 + 184))
                          {
                            *(*a1 + 192) = MEM_New(v14 >> 2);
                            if (*(*a1 + 192))
                            {
                              *(*a1 + 200) = MEM_New(v14 >> 2);
                              v16 = *a1;
                              if (*(*a1 + 200))
                              {
                                *(v16 + 208) = 0;
                                *(*a1 + 216) = MEM_New(*(*(v16 + 16) + 4));
                                if (*(*a1 + 216))
                                {
                                  InitMotionVectorArray((*a1 + 224), v14, v15);
                                  InitMotionVectorArray((*a1 + 232), v14, v15);
                                  v17 = *a1;
                                  *(v17 + 254) = 0;
                                  *(v17 + 240) = 0;
                                  *(v17 + 248) = 0;
                                  if (*(v17 + 896) || (*(*a1 + 896) = MEM_New(256), v17 = *a1, *(*a1 + 896)))
                                  {
                                    if (*(v17 + 904) || (*(*a1 + 904) = MEM_New(256), v17 = *a1, *(*a1 + 904)))
                                    {
                                      if (!InitFrame((v17 + 40), v14, v15, 0x10u, 0x10u) && !InitFrame((*a1 + 48), v14, v15, 0x10u, 0x10u) && !InitFrame((*a1 + 56), v14, v15, 0x10u, 0x10u) && !InitFrame((*a1 + 64), v14, v15, 0x10u, 0x10u))
                                      {
                                        *(*a1 + 552) = MEM_New(4 * *(*(*a1 + 16) + 4));
                                        if (*(*a1 + 552))
                                        {
                                          *(*a1 + 560) = MEM_New(*(*(*a1 + 16) + 4));
                                          if (*(*a1 + 560))
                                          {
                                            *(*a1 + 568) = MEM_New(*(*(*a1 + 16) + 4));
                                            if (*(*a1 + 568))
                                            {
                                              *(*a1 + 72) = *(*a1 + 40);
                                              if (!InitPictureInfo((*a1 + 24)))
                                              {
                                                v18 = *a1;
                                                *(*(*a1 + 24) + 149) = 0;
                                                if (!InitVopComplexityEstimation((v18 + 872)))
                                                {
                                                  v19 = *a1;
                                                  *(*(v19 + 24) + 200) = vcvtps_s32_f32(logf(*(*(*a1 + 16) + 4)) / 0.69315);
                                                  InitBitStreamDeco((v19 + 80));
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
        }
      }
    }
  }

  return 4294967188;
}

uint64_t KillInstanceGlobalsDeco(uint64_t *a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (KillSourceInfo((*a1 + 16)) || KillGobHeader((*a1 + 32)))
  {
    return 4294958336;
  }

  DelMB((*a1 + 104));
  v2 = *a1;
  v3 = *(*a1 + 112);
  if (v3)
  {
    MEM_Dispose(v3);
    *(*a1 + 112) = 0;
    v2 = *a1;
  }

  v4 = *(v2 + 120);
  if (v4)
  {
    MEM_Dispose(v4);
    *(*a1 + 120) = 0;
    v2 = *a1;
  }

  v5 = *(v2 + 128);
  if (v5)
  {
    MEM_Dispose(v5);
    *(*a1 + 128) = 0;
    v2 = *a1;
  }

  v6 = *(v2 + 136);
  if (v6)
  {
    MEM_Dispose(v6);
    *(*a1 + 136) = 0;
    v2 = *a1;
  }

  v7 = *(v2 + 144);
  if (v7)
  {
    MEM_Dispose(v7);
    *(*a1 + 144) = 0;
    v2 = *a1;
  }

  v8 = *(v2 + 152);
  if (v8)
  {
    MEM_Dispose(v8);
    *(*a1 + 152) = 0;
    v2 = *a1;
  }

  v9 = *(v2 + 160);
  if (v9)
  {
    MEM_Dispose(v9);
    *(*a1 + 160) = 0;
    v2 = *a1;
  }

  v10 = *(v2 + 168);
  if (v10)
  {
    MEM_Dispose(v10);
    *(*a1 + 168) = 0;
    v2 = *a1;
  }

  v11 = *(v2 + 176);
  if (v11)
  {
    MEM_Dispose(v11);
    *(*a1 + 176) = 0;
    v2 = *a1;
  }

  v12 = *(v2 + 184);
  if (v12)
  {
    MEM_Dispose(v12);
    *(*a1 + 184) = 0;
    v2 = *a1;
  }

  v13 = *(v2 + 192);
  if (v13)
  {
    MEM_Dispose(v13);
    *(*a1 + 192) = 0;
    v2 = *a1;
  }

  v14 = *(v2 + 200);
  if (v14)
  {
    MEM_Dispose(v14);
    *(*a1 + 200) = 0;
    v2 = *a1;
  }

  v15 = *(v2 + 216);
  if (v15)
  {
    MEM_Dispose(v15);
    *(*a1 + 216) = 0;
    v2 = *a1;
  }

  if (KillMotionVectorArray((v2 + 224)) || KillMotionVectorArray((*a1 + 232)) || KillFrame((*a1 + 40)) || KillFrame((*a1 + 48)) || KillFrame((*a1 + 56)))
  {
    return 4294958336;
  }

  v16 = *a1;
  v17 = *(*a1 + 896);
  if (v17)
  {
    MEM_Dispose(v17);
    *(*a1 + 896) = 0;
    v16 = *a1;
  }

  v18 = *(v16 + 904);
  if (v18)
  {
    MEM_Dispose(v18);
    *(*a1 + 904) = 0;
    v16 = *a1;
  }

  if (KillFrame((v16 + 64)))
  {
    return 4294958336;
  }

  v19 = *a1;
  v20 = *(*a1 + 552);
  if (v20)
  {
    MEM_Dispose(v20);
    *(*a1 + 552) = 0;
    v19 = *a1;
  }

  v21 = *(v19 + 560);
  if (v21)
  {
    MEM_Dispose(v21);
    *(*a1 + 560) = 0;
    v19 = *a1;
  }

  v22 = *(v19 + 568);
  if (v22)
  {
    MEM_Dispose(v22);
    *(*a1 + 568) = 0;
    v19 = *a1;
  }

  if (KillSourceInfo((v19 + 24)) || KillSourceInfo((*a1 + 872)) || KillBitStreamDeco((*a1 + 80)))
  {
    return 4294958336;
  }

  v24 = *a1;
  v25 = *(*a1 + 88);
  if (v25)
  {
    MEMORY[0x277CB0F50](v25, 0x1000C40FA0F61DDLL);
    v24 = *a1;
  }

  *(v24 + 88) = 0;
  v26 = *a1;
  v27 = *(*a1 + 576);
  if (v27)
  {
    MEM_Dispose(v27);
    *(*a1 + 576) = 0;
    v26 = *a1;
  }

  if (*(v26 + 584))
  {
    KillIntraPredictor((v26 + 584));
    v26 = *a1;
  }

  v28 = *(v26 + 616);
  if (v28)
  {
    MEM_Dispose(v28);
    *(*a1 + 616) = 0;
    v26 = *a1;
  }

  MEM_Dispose(*(v26 + 880));
  *(*a1 + 880) = 0;
  v29 = *a1;
  v29[111] = 0;
  MEM_Dispose(v29);
  result = 0;
  *a1 = 0;
  return result;
}

void S_BuildGammaTables(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int a4)
{
  v7 = 0;
  v8 = (a3 / 0x10000);
  v9 = dbl_27792F980[a4 == 0];
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = -16;
  }

  do
  {
    v11 = v10 / v9;
    if (v11 >= 0.0)
    {
      v12 = pow(v11, v8);
    }

    else
    {
      v12 = pow(v11 * -4.0, v8) * -0.25;
    }

    v13 = (v12 * 219.0 + 16.0 + 0.5);
    if (v13 >= 254)
    {
      LOBYTE(v14) = -2;
    }

    else
    {
      v14 = (v12 * 219.0 + 16.0 + 0.5);
    }

    if (v13 < 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    a1[v7++] = v15;
    ++v10;
  }

  while (v7 != 256);
  v16 = 0;
  v17 = 0xFFFFFFFFLL;
  if (!a4)
  {
    v17 = 4294967280;
  }

  v18 = vdupq_n_s64(0x406C000000000000uLL);
  v19 = 224.0;
  if (a4)
  {
    v19 = 254.0;
  }

  v20 = vdupq_n_s64(v17);
  v21 = vdupq_lane_s64(*&v19, 0);
  v22 = xmmword_27792F990;
  v23 = xmmword_27792F9A0;
  v24 = xmmword_27792F9B0;
  v25 = xmmword_27792F9C0;
  v26 = xmmword_27792F9D0;
  v27 = xmmword_27792F9E0;
  v28 = xmmword_27792F9F0;
  v29 = xmmword_27792F770;
  __asm
  {
    FMOV            V19.2D, #16.0
    FMOV            V20.2D, #0.5
  }

  v36.i64[0] = 0x200000002;
  v36.i64[1] = 0x200000002;
  v37.i64[0] = 0xFE000000FELL;
  v37.i64[1] = 0xFE000000FELL;
  v38 = vdupq_n_s64(0x10uLL);
  do
  {
    v39 = vmovn_s64(vaddq_s64(v28, v20));
    v40 = vmovn_s64(vaddq_s64(v29, v20));
    v41 = vmovn_s64(vaddq_s64(v26, v20));
    v42 = vmovn_s64(vaddq_s64(v27, v20));
    v43 = vmovn_s64(vaddq_s64(v24, v20));
    v44 = vmovn_s64(vaddq_s64(v25, v20));
    v45 = vmovn_s64(vaddq_s64(v22, v20));
    v46 = vmovn_s64(vaddq_s64(v23, v20));
    v47.i64[0] = v46.i32[0];
    v47.i64[1] = v46.i32[1];
    v48 = vcvtq_f64_s64(v47);
    v47.i64[0] = v45.i32[0];
    v47.i64[1] = v45.i32[1];
    v49 = vcvtq_f64_s64(v47);
    v47.i64[0] = v44.i32[0];
    v47.i64[1] = v44.i32[1];
    v50 = vcvtq_f64_s64(v47);
    v47.i64[0] = v43.i32[0];
    v47.i64[1] = v43.i32[1];
    v51 = vcvtq_f64_s64(v47);
    v47.i64[0] = v42.i32[0];
    v47.i64[1] = v42.i32[1];
    v52 = vcvtq_f64_s64(v47);
    v47.i64[0] = v41.i32[0];
    v47.i64[1] = v41.i32[1];
    v53 = vcvtq_f64_s64(v47);
    v47.i64[0] = v40.i32[0];
    v47.i64[1] = v40.i32[1];
    v54 = vcvtq_f64_s64(v47);
    v47.i64[0] = v39.i32[0];
    v47.i64[1] = v39.i32[1];
    v55 = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v48, v21)), _Q20)), vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v49, v21)), _Q20)));
    v56 = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v50, v21)), _Q20)), vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v51, v21)), _Q20)));
    v57 = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v52, v21)), _Q20)), vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v53, v21)), _Q20)));
    v58 = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(v54, v21)), _Q20)), vcvtq_s64_f64(vaddq_f64(vmlaq_f64(_Q19, v18, vdivq_f64(vcvtq_f64_s64(v47), v21)), _Q20)));
    v59 = vuzp1q_s8(vuzp1q_s16(vcgtq_s32(v36, v58), vcgtq_s32(v36, v57)), vuzp1q_s16(vcgtq_s32(v36, v56), vcgtq_s32(v36, v55)));
    *&a2[v16] = vsubq_s8(vbicq_s8(vuzp1q_s8(vuzp1q_s16(vminq_s32(v58, v37), vminq_s32(v57, v37)), vuzp1q_s16(vminq_s32(v56, v37), vminq_s32(v55, v37))), v59), v59);
    v27 = vaddq_s64(v27, v38);
    v28 = vaddq_s64(v28, v38);
    v29 = vaddq_s64(v29, v38);
    v16 += 16;
    v26 = vaddq_s64(v26, v38);
    v25 = vaddq_s64(v25, v38);
    v24 = vaddq_s64(v24, v38);
    v23 = vaddq_s64(v23, v38);
    v22 = vaddq_s64(v22, v38);
  }

  while (v16 != 256);
}

uint64_t RequestGammaLevel(uint64_t result, float a2, float a3)
{
  v3 = ((a2 * 65536.0) / a3);
  *(result + 912) = v3;
  if (v3 >= 0x4000)
  {
    if (v3 <= 0x40000)
    {
      return result;
    }

    v4 = 0x40000;
  }

  else
  {
    v4 = 0x4000;
  }

  *(result + 912) = v4;
  return result;
}

void *DrawGrid(void *result)
{
  if (*(*result + 18))
  {
    v1 = result;
    v2 = 0;
    v3 = *(*result + 16);
    v4 = (*(*result + 18) - 1) >> 4;
    v5 = 16;
    v6 = 1;
    do
    {
      if (v3)
      {
        result = memset((**v1 + 16 * v2 * *(*v1 + 24)), 128, ((v3 - 1) & 0xFFFFFFFC) + 4);
      }

      v7 = v6;
      do
      {
        if (v3)
        {
          v8 = 0;
          do
          {
            *(**v1 + v7 * *(*v1 + 24) + v8) = 0x80;
            v8 += 16;
          }

          while (v8 < v3);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 += 16;
      v6 += 16;
    }

    while (v2++ != v4);
  }

  return result;
}

uint64_t OutlineIntraMbs(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = a3[1];
  if (a3[1])
  {
    v4 = 0;
    v5 = *(*result + 24);
    v6 = *a3;
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          if (*(a2 + v4 * v7 + v8) - 3 <= 1)
          {
            v9 = (**result + ((16 * v5 * v4) & 0xFFFFFFF0) + 16 * v8);
            *v9 = -1;
            v9[1] = -1;
            v10 = v9 + v5;
            v11 = 14;
            do
            {
              v10[15] = -1;
              *v10 = -1;
              v10 += v5;
              --v11;
            }

            while (v11);
            *v10 = -1;
            *(v10 + 1) = -1;
            v6 = *a3;
          }

          ++v8;
          v7 = v6;
        }

        while (v8 < v6);
        v3 = a3[1];
        v7 = v6;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t OutlineVideoPackets(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = a3[1];
  if (a3[1])
  {
    v4 = 0;
    v5 = *(*result + 24);
    v6 = *a3;
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = (16 * v5 * v4) & 0xFFFFFFF0;
        do
        {
          if (*(a2 + v4 * v7 + v8))
          {
            v10 = (**result + v9 + 16 * v8);
            *v10 = -1;
            v10[1] = -1;
            v6 = *a3;
          }

          if (*(a2 + v4 * v6 + v8) == 3)
          {
            v11 = (**result + v9 + 16 * v8);
            v12 = 16;
            do
            {
              *v11 = -1;
              v11 += v5;
              --v12;
            }

            while (v12);
            v6 = *a3;
          }

          ++v8;
          v7 = v6;
        }

        while (v8 < v6);
        v3 = a3[1];
        v7 = v6;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t HuffmanDecMcbpcIntra(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39);
  v2 = v1 + 6;
  *(a1 + 39) = v1 + 6;
  v3 = *(a1 + 1);
  if (v3 >= 6)
  {
    v5 = v3 - 6;
    v10 = *a1;
    v6 = (*a1 >> (v3 - 6)) & *(a1 + 12);
    if (!v6)
    {
LABEL_15:
      v16 = v1 + 9;
      *(a1 + 39) = v1 + 9;
      v17 = v5 - 3;
      if (v5 >= 3)
      {
        *(a1 + 1) = v17;
        v20 = (v10 >> v17) & *(a1 + 9);
      }

      else
      {
        v18 = 3 - v5;
        v19 = v5 + 29;
        *(a1 + 1) = v5 + 29;
        v20 = (v10 << (3 - v5)) & *(a1 + 9);
        v21 = *(a1 + 40);
        v22 = *(a1 + 2);
        if (v16 > v21 || 32 * v22 > v21)
        {
          *(a1 + 2) = v22 + 1;
          *a1 = 0;
        }

        else
        {
          v23 = bswap32(*(*(a1 + 2) + 4 * v22));
          *a1 = v23;
          *(a1 + 2) = v22 + 1;
          v20 |= *(a1 + v18 + 6) & (v23 >> v19);
        }
      }

      if (v20 == 1)
      {
        return 8;
      }

      else
      {
        return 4294967197;
      }
    }
  }

  else
  {
    v4 = 6 - v3;
    v5 = v3 + 26;
    *(a1 + 1) = v3 + 26;
    v6 = (*a1 << (6 - v3)) & *(a1 + 12);
    v7 = *(a1 + 40);
    v8 = *(a1 + 2);
    if (v2 > v7 || 32 * v8 > v7)
    {
      v10 = 0;
      *(a1 + 2) = v8 + 1;
      *a1 = 0;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v8));
      *a1 = v10;
      *(a1 + 2) = v8 + 1;
      v6 |= *(a1 + v4 + 6) & (v10 >> v5);
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = mcbpcIntraBackupTab[v6];
  v12 = v5 + v11;
  *(a1 + 1) = v12;
  if (v12 >= 0x21)
  {
    v13 = v12 - 32;
    v14 = *(a1 + 2);
    *(a1 + 1) = v13;
    *(a1 + 2) = v14 - 1;
    if (*(a1 + 40) >= (32 * (v14 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * (v14 - 2)));
    }
  }

  *(a1 + 39) = v2 - v11;
  return mcbpcIntraDecodeTab[v6];
}

uint64_t HuffmanDecMcbpcInter(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39);
  v2 = v1 + 8;
  *(a1 + 39) = v1 + 8;
  v3 = *(a1 + 1);
  if (v3 >= 8)
  {
    v5 = v3 - 8;
    v10 = *a1;
    v6 = (*a1 >> (v3 - 8)) & *(a1 + 14);
  }

  else
  {
    v4 = 8 - v3;
    v5 = v3 | 0x18;
    *(a1 + 1) = v3 | 0x18;
    v6 = (*a1 << (8 - v3)) & *(a1 + 14);
    v7 = *(a1 + 40);
    v8 = *(a1 + 2);
    if (v2 > v7 || 32 * v8 > v7)
    {
      v10 = 0;
      *(a1 + 2) = v8 + 1;
      *a1 = 0;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v8));
      *a1 = v10;
      *(a1 + 2) = v8 + 1;
      v6 |= *(a1 + v4 + 6) & (v10 >> v5);
    }
  }

  if (v6 >= 3)
  {
    v11 = mcbpcInterBackupTab[v6];
    *(a1 + 1) = v5 + v11;
    if ((v5 + v11) >= 0x21)
    {
      v12 = *(a1 + 2);
      *(a1 + 1) = v5 + v11 - 32;
      *(a1 + 2) = v12 - 1;
      if (*(a1 + 40) >= (32 * (v12 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 2) + 4 * (v12 - 2)));
      }
    }

    *(a1 + 39) = v2 - v11;
    return mcbpcInterDecodeTab[v6];
  }

  *(a1 + 39) = v1 + 9;
  if (v5)
  {
    v14 = v5 - 1;
    *(a1 + 1) = v14;
    v15 = (v10 >> v14) & 1;
    if (v6)
    {
LABEL_16:
      if (v6 == 1)
      {
        if (v15)
        {
          return 18;
        }

        else
        {
          return 19;
        }
      }

      else if (v15)
      {
        return 7;
      }

      else
      {
        return 17;
      }
    }
  }

  else
  {
    *(a1 + 1) = 31;
    v16 = *(a1 + 40);
    v17 = *(a1 + 2);
    if (v1 + 9 > v16 || 32 * v17 > v16)
    {
      v10 = 0;
      v15 = 0;
      *a1 = 0;
      *(a1 + 2) = v17 + 1;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v17));
      *a1 = v10;
      *(a1 + 2) = v17 + 1;
      v15 = v10 >> 31;
    }

    v14 = 31;
    if (v6)
    {
      goto LABEL_16;
    }
  }

  if (v15)
  {
    return 20;
  }

  *(a1 + 39) = v1 + 13;
  v19 = v14 - 4;
  if (v14 >= 4)
  {
    *(a1 + 1) = v19;
    v21 = (v10 >> v19) & *(a1 + 10);
  }

  else
  {
    v20 = 4 - v14;
    v19 = v14 | 0x1C;
    *(a1 + 1) = v14 | 0x1C;
    v21 = (v10 << (4 - v14)) & *(a1 + 10);
    v22 = *(a1 + 40);
    v23 = *(a1 + 2);
    if (v1 + 13 > v22 || 32 * v23 > v22)
    {
      *(a1 + 2) = v23 + 1;
      *a1 = 0;
    }

    else
    {
      v24 = bswap32(*(*(a1 + 2) + 4 * v23));
      *a1 = v24;
      *(a1 + 2) = v23 + 1;
      v21 |= *(a1 + v20 + 6) & (v24 >> v19);
    }
  }

  if (v21 < 8)
  {
    return 4294967197;
  }

  *(a1 + 1) = v19 + 2;
  if (v19 >= 0x1F)
  {
    v25 = v19 - 30;
    v26 = *(a1 + 2);
    *(a1 + 1) = v25;
    *(a1 + 2) = v26 - 1;
    if (*(a1 + 40) >= (32 * (v26 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * (v26 - 2)));
    }
  }

  *(a1 + 39) = v1 + 11;
  return 21;
}

uint64_t HuffmanDecMvd(uint64_t result)
{
  v1 = *(result + 156);
  v2 = v1 + 11;
  *(result + 156) = v1 + 11;
  v3 = *(result + 4);
  if (v3 >= 0xB)
  {
    v5 = v3 - 11;
    v10 = *result;
    v6 = (*result >> (v3 - 11)) & *(result + 68);
  }

  else
  {
    v4 = 11 - v3;
    v5 = v3 + 21;
    *(result + 4) = v3 + 21;
    v6 = (*result << (11 - v3)) & *(result + 68);
    v7 = *(result + 160);
    v8 = *(result + 8);
    if (v2 > v7 || 32 * v8 > v7)
    {
      v10 = 0;
      *(result + 8) = v8 + 1;
      *result = 0;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v8));
      *result = v10;
      *(result + 8) = v8 + 1;
      v6 |= *(result + 4 * v4 + 24) & (v10 >> v5);
    }
  }

  if (v6 >= 8)
  {
    v11 = mvdBackupTab[v6];
    *(result + 4) = v5 + v11;
    if ((v5 + v11) >= 0x21)
    {
      v12 = *(result + 8);
      *(result + 4) = v5 + v11 - 32;
      *(result + 8) = v12 - 1;
      if (*(result + 160) >= (32 * (v12 - 1)))
      {
        *result = bswap32(*(*(result + 16) + 4 * (v12 - 2)));
      }
    }

    *(result + 156) = v2 - v11;
    LODWORD(result) = mvdDecodeTab[v6];
    goto LABEL_59;
  }

  *(result + 156) = v1 + 12;
  if (v5)
  {
    v13 = v5 - 1;
    *(result + 4) = v13;
    v14 = (v10 >> v13) & 1;
  }

  else
  {
    *(result + 4) = 31;
    v15 = *(result + 160);
    v16 = *(result + 8);
    if (v1 + 12 > v15 || 32 * v16 > v15)
    {
      v10 = 0;
      v14 = 0;
      *result = 0;
      *(result + 8) = v16 + 1;
    }

    else
    {
      v10 = bswap32(*(*(result + 16) + 4 * v16));
      *result = v10;
      *(result + 8) = v16 + 1;
      v14 = v10 >> 31;
    }

    v13 = 31;
  }

  if (v6 > 3)
  {
    if (v14)
    {
      v18 = 38;
    }

    else
    {
      v18 = 26;
    }

    if (v14)
    {
      v19 = 39;
    }

    else
    {
      v19 = 25;
    }

    if (v6 != 7)
    {
      v19 = -99;
    }

    if (v6 != 6)
    {
      v18 = v19;
    }

    v20 = v14 == 0;
    if (v14)
    {
      v21 = 36;
    }

    else
    {
      v21 = 28;
    }

    if (v20)
    {
      v22 = 27;
    }

    else
    {
      v22 = 37;
    }

    if (v6 != 5)
    {
      v22 = -99;
    }

    if (v6 != 4)
    {
      v21 = v22;
    }

    if (v6 <= 5)
    {
      LODWORD(result) = v21;
    }

    else
    {
      LODWORD(result) = v18;
    }

    goto LABEL_59;
  }

  if (v6 != 1)
  {
    if (v14)
    {
      v23 = 34;
    }

    else
    {
      v23 = 30;
    }

    if (v14)
    {
      v24 = 35;
    }

    else
    {
      v24 = 29;
    }

    if (v6 != 3)
    {
      v24 = -99;
    }

    if (v6 == 2)
    {
      LODWORD(result) = v23;
    }

    else
    {
      LODWORD(result) = v24;
    }

    goto LABEL_59;
  }

  v25 = v1 + 13;
  *(result + 156) = v25;
  if (v13)
  {
    *(result + 4) = v13 - 1;
    v26 = (v10 >> (v13 - 1)) & 1;
    if (v14)
    {
      goto LABEL_64;
    }

LABEL_69:
    result = 32;
    if (!v26)
    {
      return result;
    }

    goto LABEL_59;
  }

  *(result + 4) = 31;
  v27 = *(result + 160);
  v28 = *(result + 8);
  if (v25 > v27 || 32 * v28 > v27)
  {
    *result = 0;
    *(result + 8) = v28 + 1;
    if (!v14)
    {
      return 32;
    }

    goto LABEL_72;
  }

  v29 = bswap32(*(*(result + 16) + 4 * v28));
  *result = v29;
  *(result + 8) = v28 + 1;
  v26 = v29 >> 31;
  if (!v14)
  {
    goto LABEL_69;
  }

LABEL_64:
  if (v26)
  {
    LODWORD(result) = 33;
    goto LABEL_59;
  }

LABEL_72:
  LODWORD(result) = 31;
LABEL_59:
  if ((result & 0x20) != 0)
  {
    return result | 0xFFFFFFC0;
  }

  else
  {
    return result;
  }
}

uint64_t HuffmanDecCbpy(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39) + 6;
  *(a1 + 39) = v1;
  v2 = *(a1 + 1);
  if (v2 >= 6)
  {
    v4 = v2 - 6;
    *(a1 + 1) = v2 - 6;
    v5 = (*a1 >> (v2 - 6)) & *(a1 + 12);
  }

  else
  {
    v3 = 6 - v2;
    v4 = v2 + 26;
    *(a1 + 1) = v2 + 26;
    v5 = (*a1 << (6 - v2)) & *(a1 + 12);
    v6 = *(a1 + 40);
    v7 = *(a1 + 2);
    v8 = 32 * v7;
    if (v1 <= v6)
    {
      v9 = v8 >= v6;
      v10 = v8 == v6;
    }

    else
    {
      v9 = 1;
      v10 = 0;
    }

    if (!v10 && v9)
    {
      *(a1 + 2) = v7 + 1;
      *a1 = 0;
    }

    else
    {
      v11 = bswap32(*(*(a1 + 2) + 4 * v7));
      *a1 = v11;
      *(a1 + 2) = v7 + 1;
      v5 |= *(a1 + v3 + 6) & (v11 >> v4);
    }
  }

  if (v5 < 2)
  {
    return 4294967197;
  }

  v12 = cbpyBackupTab[v5];
  v13 = v4 + v12;
  *(a1 + 1) = v13;
  if (v13 >= 0x21)
  {
    v14 = v13 - 32;
    v15 = *(a1 + 2);
    *(a1 + 1) = v14;
    *(a1 + 2) = v15 - 1;
    if (*(a1 + 40) >= (32 * (v15 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * (v15 - 2)));
    }
  }

  *(a1 + 39) = v1 - v12;
  return cbpyDecodeTab[v5];
}

uint64_t HuffmanDecQCoefInter(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39);
  v2 = v1 + 10;
  *(a1 + 39) = v1 + 10;
  v3 = *(a1 + 1);
  if (v3 >= 0xA)
  {
    v5 = v3 - 10;
    v10 = *a1;
    v6 = (*a1 >> (v3 - 10)) & *(a1 + 16);
  }

  else
  {
    v4 = 10 - v3;
    v5 = v3 + 22;
    *(a1 + 1) = v3 + 22;
    v6 = (*a1 << (10 - v3)) & *(a1 + 16);
    v7 = *(a1 + 40);
    v8 = *(a1 + 2);
    if (v2 > v7 || 32 * v8 > v7)
    {
      v10 = 0;
      *(a1 + 2) = v8 + 1;
      *a1 = 0;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v8));
      *a1 = v10;
      *(a1 + 2) = v8 + 1;
      v6 |= *(a1 + v4 + 6) & (v10 >> v5);
    }
  }

  if (v6 < 0x22)
  {
    v17 = v1 + 13;
    *(a1 + 39) = v1 + 13;
    v18 = v5 - 3;
    if (v5 >= 3)
    {
      v20 = (v10 >> v18) & *(a1 + 9);
    }

    else
    {
      v19 = 3 - v5;
      v18 = v5 + 29;
      *(a1 + 1) = v5 + 29;
      v20 = (v10 << (3 - v5)) & *(a1 + 9);
      v21 = *(a1 + 40);
      v22 = *(a1 + 2);
      if (v17 > v21 || 32 * v22 > v21)
      {
        *(a1 + 2) = v22 + 1;
        *a1 = 0;
      }

      else
      {
        v23 = bswap32(*(*(a1 + 2) + 4 * v22));
        *a1 = v23;
        *(a1 + 2) = v22 + 1;
        v20 |= *(a1 + v19 + 6) & (v23 >> v18);
      }
    }

    v24 = v20 & 0x1FF | (8 * v6);
    v25 = coefBackupIntraSubTab[v24];
    v26 = v18 + v25;
    *(a1 + 1) = v26;
    if (v26 >= 0x21)
    {
      v27 = v26 - 32;
      v28 = *(a1 + 2);
      *(a1 + 1) = v27;
      *(a1 + 2) = v28 - 1;
      if (*(a1 + 40) >= (32 * (v28 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 2) + 4 * (v28 - 2)));
      }
    }

    *(a1 + 39) = v17 - v25;
    v16 = &coefDecodeInterSubTab + 2 * v24;
  }

  else
  {
    v11 = v6;
    v12 = coefBackupIntraTab[v6];
    v13 = v5 + v12;
    *(a1 + 1) = v13;
    if (v13 >= 0x21)
    {
      v14 = v13 - 32;
      v15 = *(a1 + 2);
      *(a1 + 1) = v14;
      *(a1 + 2) = v15 - 1;
      if (*(a1 + 40) >= (32 * (v15 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 2) + 4 * (v15 - 2)));
      }
    }

    *(a1 + 39) = v2 - v12;
    v16 = &coefDecodeInterTab + 2 * v11;
  }

  return *v16;
}

uint64_t HuffmanDecQCoefIntra(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39);
  v2 = v1 + 10;
  *(a1 + 39) = v1 + 10;
  v3 = *(a1 + 1);
  if (v3 >= 0xA)
  {
    v5 = v3 - 10;
    v10 = *a1;
    v6 = (*a1 >> (v3 - 10)) & *(a1 + 16);
  }

  else
  {
    v4 = 10 - v3;
    v5 = v3 + 22;
    *(a1 + 1) = v3 + 22;
    v6 = (*a1 << (10 - v3)) & *(a1 + 16);
    v7 = *(a1 + 40);
    v8 = *(a1 + 2);
    if (v2 > v7 || 32 * v8 > v7)
    {
      v10 = 0;
      *(a1 + 2) = v8 + 1;
      *a1 = 0;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v8));
      *a1 = v10;
      *(a1 + 2) = v8 + 1;
      v6 |= *(a1 + v4 + 6) & (v10 >> v5);
    }
  }

  if (v6 < 0x22)
  {
    v17 = v1 + 13;
    *(a1 + 39) = v1 + 13;
    v18 = v5 - 3;
    if (v5 >= 3)
    {
      v20 = (v10 >> v18) & *(a1 + 9);
    }

    else
    {
      v19 = 3 - v5;
      v18 = v5 + 29;
      *(a1 + 1) = v5 + 29;
      v20 = (v10 << (3 - v5)) & *(a1 + 9);
      v21 = *(a1 + 40);
      v22 = *(a1 + 2);
      if (v17 > v21 || 32 * v22 > v21)
      {
        *(a1 + 2) = v22 + 1;
        *a1 = 0;
      }

      else
      {
        v23 = bswap32(*(*(a1 + 2) + 4 * v22));
        *a1 = v23;
        *(a1 + 2) = v22 + 1;
        v20 |= *(a1 + v19 + 6) & (v23 >> v18);
      }
    }

    v24 = v20 & 0x1FF | (8 * v6);
    v25 = coefBackupIntraSubTab[v24];
    v26 = v18 + v25;
    *(a1 + 1) = v26;
    if (v26 >= 0x21)
    {
      v27 = v26 - 32;
      v28 = *(a1 + 2);
      *(a1 + 1) = v27;
      *(a1 + 2) = v28 - 1;
      if (*(a1 + 40) >= (32 * (v28 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 2) + 4 * (v28 - 2)));
      }
    }

    *(a1 + 39) = v17 - v25;
    v16 = &coefDecodeIntraSubTab + 2 * v24;
  }

  else
  {
    v11 = v6;
    v12 = coefBackupIntraTab[v6];
    v13 = v5 + v12;
    *(a1 + 1) = v13;
    if (v13 >= 0x21)
    {
      v14 = v13 - 32;
      v15 = *(a1 + 2);
      *(a1 + 1) = v14;
      *(a1 + 2) = v15 - 1;
      if (*(a1 + 40) >= (32 * (v15 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 2) + 4 * (v15 - 2)));
      }
    }

    *(a1 + 39) = v2 - v12;
    v16 = &coefDecodeIntraTab + 2 * v11;
  }

  return *v16;
}

uint64_t HuffmanDecQCoefFastInter(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39);
  *(a1 + 39) = v1 + 13;
  v2 = *(a1 + 1);
  if (v2 >= 0xD)
  {
    v4 = v2 - 13;
    v5 = (*a1 >> (v2 - 13)) & *(a1 + 19);
  }

  else
  {
    v3 = 13 - v2;
    v4 = v2 + 19;
    *(a1 + 1) = v2 + 19;
    v5 = (*a1 << (13 - v2)) & *(a1 + 19);
    v6 = *(a1 + 40);
    v7 = *(a1 + 2);
    if (v1 + 13 > v6 || 32 * v7 > v6)
    {
      *(a1 + 2) = v7 + 1;
      *a1 = 0;
    }

    else
    {
      v9 = bswap32(*(*(a1 + 2) + 4 * v7));
      *a1 = v9;
      *(a1 + 2) = v7 + 1;
      v5 |= *(a1 + v3 + 6) & (v9 >> v4);
    }
  }

  if (v4 < 0x14)
  {
    v10 = v4 + 13;
  }

  else
  {
    v10 = v4 - 19;
    v11 = *(a1 + 2);
    *(a1 + 1) = v10;
    *(a1 + 2) = v11 - 1;
    if (*(a1 + 40) >= (32 * (v11 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * (v11 - 2)));
    }
  }

  if (v5 < 0x110)
  {
    v13 = 13 - coefBackupIntraSubTab[v5];
    v14 = coefDecodeInterSubTab[v5];
  }

  else
  {
    v12 = v5 >> 3;
    v13 = 10 - coefBackupIntraTab[v12];
    v14 = coefDecodeInterTab[v12];
  }

  v15 = v13 + v1;
  *(a1 + 39) = v13 + v1;
  v16 = v10 - v13;
  if (v10 >= v13)
  {
    *(a1 + 1) = v16;
  }

  else
  {
    *(a1 + 1) = v16 + 32;
    v17 = *(a1 + 40);
    v18 = *(a1 + 2);
    if (v15 > v17 || 32 * v18 > v17)
    {
      *(a1 + 2) = v18 + 1;
      *a1 = 0;
    }

    else
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * v18));
      *(a1 + 2) = v18 + 1;
    }
  }

  return v14;
}

uint64_t HuffmanDecQCoefFastInter2(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  if (v2 >> 23 <= 0x10)
  {
    v3 = 19;
  }

  else
  {
    v3 = 22;
  }

  v4 = coefBackupIntraSubTab;
  if (v2 >> 23 <= 0x10)
  {
    v5 = 13;
  }

  else
  {
    v4 = coefBackupIntraTab;
    v5 = 10;
  }

  if (v2 >> 23 <= 0x10)
  {
    v6 = coefDecodeInterSubTab;
  }

  else
  {
    v6 = coefDecodeInterTab;
  }

  v7 = v2 >> v3;
  v8 = v5 - v4[v7];
  v9 = v6[v7];
  *a1 = v2 << v8;
  *a2 = v8;
  return v9;
}

uint64_t HuffmanDecQCoefFastIntra(CBitStreamDeco *a1)
{
  v1 = *(a1 + 39);
  *(a1 + 39) = v1 + 13;
  v2 = *(a1 + 1);
  if (v2 >= 0xD)
  {
    v4 = v2 - 13;
    v5 = (*a1 >> (v2 - 13)) & *(a1 + 19);
  }

  else
  {
    v3 = 13 - v2;
    v4 = v2 + 19;
    *(a1 + 1) = v2 + 19;
    v5 = (*a1 << (13 - v2)) & *(a1 + 19);
    v6 = *(a1 + 40);
    v7 = *(a1 + 2);
    if (v1 + 13 > v6 || 32 * v7 > v6)
    {
      *(a1 + 2) = v7 + 1;
      *a1 = 0;
    }

    else
    {
      v9 = bswap32(*(*(a1 + 2) + 4 * v7));
      *a1 = v9;
      *(a1 + 2) = v7 + 1;
      v5 |= *(a1 + v3 + 6) & (v9 >> v4);
    }
  }

  if (v4 < 0x14)
  {
    v10 = v4 + 13;
  }

  else
  {
    v10 = v4 - 19;
    v11 = *(a1 + 2);
    *(a1 + 1) = v10;
    *(a1 + 2) = v11 - 1;
    if (*(a1 + 40) >= (32 * (v11 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * (v11 - 2)));
    }
  }

  if (v5 < 0x110)
  {
    v13 = 13 - coefBackupIntraSubTab[v5];
    v14 = coefDecodeIntraSubTab[v5];
  }

  else
  {
    v12 = v5 >> 3;
    v13 = 10 - coefBackupIntraTab[v12];
    v14 = coefDecodeIntraTab[v12];
  }

  v15 = v13 + v1;
  *(a1 + 39) = v13 + v1;
  v16 = v10 - v13;
  if (v10 >= v13)
  {
    *(a1 + 1) = v16;
  }

  else
  {
    *(a1 + 1) = v16 + 32;
    v17 = *(a1 + 40);
    v18 = *(a1 + 2);
    if (v15 > v17 || 32 * v18 > v17)
    {
      *(a1 + 2) = v18 + 1;
      *a1 = 0;
    }

    else
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * v18));
      *(a1 + 2) = v18 + 1;
    }
  }

  return v14;
}

uint64_t HuffmanDecQCoefFastIntra2(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  if (v2 >> 23 <= 0x10)
  {
    v3 = 19;
  }

  else
  {
    v3 = 22;
  }

  v4 = coefBackupIntraSubTab;
  if (v2 >> 23 <= 0x10)
  {
    v5 = 13;
  }

  else
  {
    v4 = coefBackupIntraTab;
    v5 = 10;
  }

  if (v2 >> 23 <= 0x10)
  {
    v6 = coefDecodeIntraSubTab;
  }

  else
  {
    v6 = coefDecodeIntraTab;
  }

  v7 = v2 >> v3;
  v8 = v5 - v4[v7];
  v9 = v6[v7];
  *a1 = v2 << v8;
  *a2 = v8;
  return v9;
}

uint64_t RVLCDecQCoef(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156) + 16;
  *(a1 + 156) = v2;
  v3 = *(a1 + 4);
  if (v3 >= 0x10)
  {
    v5 = v3 - 16;
    v6 = (*a1 >> v5) & *(a1 + 88);
  }

  else
  {
    v4 = 16 - v3;
    v5 = v3 | 0x10;
    *(a1 + 4) = v5;
    v6 = (*a1 << v4) & *(a1 + 88);
    v7 = *(a1 + 160);
    v8 = *(a1 + 8);
    if (v2 > v7 || 32 * v8 > v7)
    {
      *(a1 + 8) = v8 + 1;
      *a1 = 0;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 16) + 4 * v8));
      *a1 = v10;
      *(a1 + 8) = v8 + 1;
      v6 |= *(a1 + 4 * v4 + 24) & (v10 >> v5);
    }
  }

  v11 = RVLCDecodeTable[v6];
  v12 = (a2 + 8 * v11);
  v13 = 16 - v12[3];
  v14 = v13 + v5;
  *(a1 + 4) = v14;
  if (v14 >= 0x21)
  {
    v15 = v14 - 32;
    v16 = *(a1 + 8);
    *(a1 + 4) = v15;
    *(a1 + 8) = v16 - 1;
    if (*(a1 + 160) >= (32 * (v16 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 16) + 4 * (v16 - 2)));
    }
  }

  *(a1 + 156) = v2 - v13;
  if (v11 == 169)
  {
    return 64;
  }

  else
  {
    return (((v6 >> v13) & 1) << 6) | (v12[1] << 8) | (*v12 << 7) | v12[2];
  }
}

uint64_t DecWarpingMV(CBitStreamDeco *a1)
{
  v1 = 0;
  v2 = *(a1 + 39);
  v3 = *(a1 + 1);
  v4 = a1 + 24;
  while (1)
  {
    v5 = dword_27793180C[v1];
    v6 = v2 + v5;
    *(a1 + 39) = v2 + v5;
    if (v3 >= v5)
    {
      v8 = v3 - v5;
      v10 = *a1;
      v9 = (*a1 >> v8) & *&v4[4 * v5];
    }

    else
    {
      v7 = v5 - v3;
      v8 = 32 - (v5 - v3);
      *(a1 + 1) = v8;
      if (v7 <= 0x1F)
      {
        v9 = (*a1 << v7) & *&v4[4 * v5];
      }

      else
      {
        v9 = 0;
      }

      v11 = *(a1 + 40);
      v12 = *(a1 + 2);
      if (v6 > v11 || 32 * v12 > v11)
      {
        v10 = 0;
        *(a1 + 2) = v12 + 1;
        *a1 = 0;
      }

      else
      {
        v10 = bswap32(*(*(a1 + 2) + 4 * v12));
        *a1 = v10;
        *(a1 + 2) = v12 + 1;
        v9 |= *&v4[4 * v7] & (v10 >> v8);
      }
    }

    v3 = v8 + v5;
    *(a1 + 1) = v3;
    if (v3 >= 0x21)
    {
      v3 -= 32;
      v14 = *(a1 + 2);
      *(a1 + 1) = v3;
      *(a1 + 2) = v14 - 1;
      if (*(a1 + 40) >= (32 * (v14 - 1)))
      {
        v10 = bswap32(*(*(a1 + 2) + 4 * (v14 - 2)));
        *a1 = v10;
      }
    }

    *(a1 + 39) = v2;
    if (dword_2779317D0[v1] == v9)
    {
      break;
    }

    if (++v1 == 15)
    {
      v15 = 0;
      v6 = v2;
      goto LABEL_36;
    }
  }

  *(a1 + 39) = v6;
  v16 = v3 >= v5;
  v3 -= v5;
  if (!v16)
  {
    v3 += 32;
    *(a1 + 1) = v3;
    v17 = *(a1 + 40);
    v18 = *(a1 + 2);
    if (v6 > v17 || 32 * v18 > v17)
    {
      v10 = 0;
      *(a1 + 2) = v18 + 1;
      *a1 = 0;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v18));
      *a1 = v10;
      *(a1 + 2) = v18 + 1;
    }
  }

  if (v1)
  {
    v6 = v5 + v2 + v1;
    *(a1 + 39) = v6;
    if (v3 >= v1)
    {
      v3 -= v1;
      *(a1 + 1) = v3;
      v15 = (v10 >> v3) & *&v4[4 * v1];
    }

    else
    {
      v15 = 0;
      v19 = v1 - v3;
      v3 = v3 - v1 + 32;
      *(a1 + 1) = v3;
      if (v19 <= 0x1F)
      {
        v15 = (v10 << v19) & *&v4[4 * v1];
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 2);
      if (v6 > v20 || 32 * v21 > v20)
      {
        *(a1 + 2) = v21 + 1;
        *a1 = 0;
      }

      else
      {
        v22 = bswap32(*(*(a1 + 2) + 4 * v21));
        *a1 = v22;
        *(a1 + 2) = v21 + 1;
        v15 = *&v4[4 * v19] & (v22 >> v3) | v15;
      }
    }

    v23 = v1 - 1;
    if (!(v15 >> v23))
    {
      v15 = (v15 + (-2 << v23) + 1);
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_36:
  v24 = v6 + 1;
  *(a1 + 39) = v6 + 1;
  if (v3)
  {
    *(a1 + 1) = v3 - 1;
  }

  else
  {
    *(a1 + 1) = 31;
    v25 = *(a1 + 40);
    v26 = *(a1 + 2);
    if (v24 > v25 || 32 * v26 > v25)
    {
      *a1 = 0;
    }

    else
    {
      *a1 = bswap32(*(*(a1 + 2) + 4 * v26));
    }

    *(a1 + 2) = v26 + 1;
  }

  return v15;
}

uint64_t DecBrightnessChangeFactor(CBitStreamDeco *a1)
{
  v1 = 0;
  v2 = *(a1 + 39);
  v3 = *(a1 + 1);
  v4 = a1 + 24;
  while (1)
  {
    v5 = dword_27793185C[v1];
    v6 = v2 + v5;
    *(a1 + 39) = v2 + v5;
    if (v3 >= v5)
    {
      v8 = v3 - v5;
      v10 = *a1;
      v9 = (*a1 >> v8) & *&v4[4 * v5];
    }

    else
    {
      v7 = v5 - v3;
      v8 = 32 - (v5 - v3);
      *(a1 + 1) = v8;
      if (v7 <= 0x1F)
      {
        v9 = (*a1 << v7) & *&v4[4 * v5];
      }

      else
      {
        v9 = 0;
      }

      v11 = *(a1 + 40);
      v12 = *(a1 + 2);
      if (v6 > v11 || 32 * v12 > v11)
      {
        v10 = 0;
        *(a1 + 2) = v12 + 1;
        *a1 = 0;
      }

      else
      {
        v10 = bswap32(*(*(a1 + 2) + 4 * v12));
        *a1 = v10;
        *(a1 + 2) = v12 + 1;
        v9 |= *&v4[4 * v7] & (v10 >> v8);
      }
    }

    v3 = v8 + v5;
    *(a1 + 1) = v3;
    if (v3 >= 0x21)
    {
      v3 -= 32;
      v14 = *(a1 + 2);
      *(a1 + 1) = v3;
      *(a1 + 2) = v14 - 1;
      if (*(a1 + 40) >= (32 * (v14 - 1)))
      {
        v10 = bswap32(*(*(a1 + 2) + 4 * (v14 - 2)));
        *a1 = v10;
      }
    }

    *(a1 + 39) = v2;
    if (dword_277931848[v1] == v9)
    {
      break;
    }

    if (++v1 == 5)
    {
      LODWORD(v1) = 0;
      v6 = v2;
      goto LABEL_25;
    }
  }

  *(a1 + 39) = v6;
  v15 = v3 - v5;
  if (v3 >= v5)
  {
    v3 -= v5;
  }

  else
  {
    v3 = v15 + 32;
    *(a1 + 1) = v15 + 32;
    v16 = *(a1 + 40);
    v17 = *(a1 + 2);
    if (v6 > v16 || 32 * v17 > v16)
    {
      v10 = 0;
      *(a1 + 2) = v17 + 1;
      *a1 = 0;
    }

    else
    {
      v10 = bswap32(*(*(a1 + 2) + 4 * v17));
      *a1 = v10;
      *(a1 + 2) = v17 + 1;
    }
  }

LABEL_25:
  v18 = dword_277931870[v1];
  v19 = v6 + v18;
  *(a1 + 39) = v6 + v18;
  if (v3 >= v18)
  {
    *(a1 + 1) = v3 - v18;
    v22 = (v10 >> (v3 - v18)) & *&v4[4 * v18];
  }

  else
  {
    v20 = v18 - v3;
    v21 = 32 - (v18 - v3);
    *(a1 + 1) = v21;
    if (v20 <= 0x1F)
    {
      v22 = (v10 << v20) & *&v4[4 * v18];
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 2);
    if (v19 > v23 || 32 * v24 > v23)
    {
      *(a1 + 2) = v24 + 1;
      *a1 = 0;
    }

    else
    {
      v25 = bswap32(*(*(a1 + 2) + 4 * v24));
      *a1 = v25;
      *(a1 + 2) = v24 + 1;
      v22 |= *&v4[4 * v20] & (v25 >> v21);
    }
  }

  v26 = v22 - 15;
  v27 = v22 - 112;
  if (v22 > 62)
  {
    v27 = v22 - 15;
  }

  v28 = v22 + 113;
  v29 = v22 + 625;
  if (v1 != 4)
  {
    v29 = v22;
  }

  if (v1 != 3)
  {
    v28 = v29;
  }

  if (v1 != 2)
  {
    v27 = v28;
  }

  v30 = v22 - 16;
  if (v22 > 14)
  {
    v30 = v22 - 15;
  }

  if (v22 <= 30)
  {
    v26 = v22 - 48;
  }

  if (v1 != 1)
  {
    v26 = v22;
  }

  if (!v1)
  {
    v26 = v30;
  }

  if (v1 <= 1)
  {
    return v26;
  }

  else
  {
    return v27;
  }
}

uint64_t Get_dc_scaler(int a1, int a2)
{
  v2 = a1 - 6;
  if ((a1 - 5) <= 0x13)
  {
    v2 = (a1 + 13) >> 1;
  }

  if ((a1 - 9) <= 0xF)
  {
    v3 = a1 + 8;
  }

  else
  {
    v3 = 2 * a1 - 16;
  }

  if ((a1 - 5) <= 3)
  {
    v4 = 2 * a1;
  }

  else
  {
    v4 = v3;
  }

  if (a2 > 3)
  {
    v4 = v2;
  }

  if ((a1 - 1) >= 4)
  {
    return v4;
  }

  else
  {
    return 8;
  }
}

_WORD *IQuantizeBlockH263(_WORD *result, __int16 a2, int a3)
{
  if (a3)
  {
    *result *= 8;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  do
  {
    v5 = result[v4];
    if (result[v4])
    {
      v6 = ((v5 >> 15) & 1) + 2047;
      v7 = v5 >> 15;
      v5 = (a2 + (a2 & 1) - 1 + 2 * a2 * (result[v4] - ((result[v4] >> 15) & (2 * result[v4]))));
      if (v5 >= v6)
      {
        LOWORD(v5) = v6;
      }

      LOWORD(v5) = v5 - (v7 & (2 * v5));
    }

    result[v4++] = v5;
  }

  while (v4 != 64);
  return result;
}

uint64_t IQuantizeH263(int a1, __int16 a2, __int16 a3)
{
  if (a1)
  {
    v3 = ((a1 >> 15) & 1) + 2047;
    if ((a2 + (a2 & 1) + (a1 - ((a1 >> 15) & (2 * a1))) * a3 - 1) < v3)
    {
      LOWORD(v3) = a2 + (a2 & 1) + (a1 - ((a1 >> 15) & (2 * a1))) * a3 - 1;
    }

    return (v3 - ((a1 >> 15) & (2 * v3)));
  }

  else
  {
    return 0;
  }
}

uint64_t IQuantizeBlockH263Opt(uint64_t result, __int16 a2, int a3, int a4, int a5)
{
  v6 = result;
  if (a3)
  {
    if (a4)
    {
      v7 = 8 * *result;
    }

    else
    {
      result = Get_dc_scaler(a2, a5);
      v7 = *v6 * result;
    }

    *v6 = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  do
  {
    v10 = v6[v9];
    if (v6[v9])
    {
      v11 = ((v10 >> 15) & 1) + 2047;
      v12 = v10 >> 15;
      v10 = (a2 + (a2 & 1) - 1 + 2 * a2 * (v6[v9] - ((v6[v9] >> 15) & (2 * v6[v9]))));
      if (v10 >= v11)
      {
        LOWORD(v10) = v11;
      }

      LOWORD(v10) = v10 - (v12 & (2 * v10));
    }

    v6[v9++] = v10;
  }

  while (v9 != 64);
  return result;
}

uint64_t IQuantizeMPEGIntra(int a1, int a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2 * a1 * *(a4 + a3) / 8;
  }

  else
  {
    LOWORD(v4) = 0;
  }

  return v4;
}

uint64_t IQuantizeBlockMPEG(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(v9 + 2 * v10);
    if (!*(v9 + 2 * v10))
    {
      goto LABEL_16;
    }

    if (v12 >= 0)
    {
      LOWORD(v13) = *(v9 + 2 * v10);
    }

    else
    {
      v13 = -v12;
    }

    if (v12 > 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (a3)
    {
      if (!v10)
      {
        result = Get_dc_scaler(a2, a4);
        v16 = v12 * result;
        goto LABEL_15;
      }

      v15 = v13 * a2 * *(a5 + v10) / 8;
    }

    else
    {
      v15 = ((2 * v13) | 1) * a2 * *(a5 + v10) / 16;
    }

    v16 = v15 * v14;
LABEL_15:
    *(v9 + 2 * v10) = v16;
    v11 ^= v16;
LABEL_16:
    ++v10;
  }

  while (v10 != 64);
  if (v11)
  {
    *(v9 + 126) ^= 1u;
  }

  return result;
}

int16x8_t MPEG4_IDCTVec(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(*a2, 4uLL));
  v3 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[1], 4uLL));
  v4 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[2], 4uLL));
  v5 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[3], 4uLL));
  v6 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[4], 4uLL));
  v7 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[5], 4uLL));
  v8 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[6], 4uLL));
  v9 = vqrdmulhq_s16(xmmword_2779335D0, vshlq_n_s16(a2[7], 4uLL));
  v10 = vzip1q_s16(v2, v6);
  v11 = vzip2q_s16(v2, v6);
  v12 = vzip1q_s16(v3, v7);
  v13 = vzip2q_s16(v3, v7);
  v14 = vzip1q_s16(v4, v8);
  v15 = vzip2q_s16(v4, v8);
  v16 = vzip1q_s16(v5, v9);
  v17 = vzip2q_s16(v5, v9);
  v18 = vzip1q_s16(v10, v14);
  v19 = vzip2q_s16(v10, v14);
  v20 = vzip1q_s16(v11, v15);
  v21 = vzip2q_s16(v11, v15);
  v22 = vzip1q_s16(v12, v16);
  v23 = vzip2q_s16(v12, v16);
  v24 = vzip1q_s16(v13, v17);
  v25 = vzip2q_s16(v13, v17);
  v26 = vzip1q_s16(v18, v22);
  v27 = vzip2q_s16(v18, v22);
  v28 = vzip1q_s16(v19, v23);
  v29 = vzip2q_s16(v19, v23);
  v30 = vzip1q_s16(v20, v24);
  v31 = vzip2q_s16(v20, v24);
  v32 = vzip1q_s16(v21, v25);
  v33 = vzip2q_s16(v21, v25);
  v34 = vdupq_n_s16(0x1976u);
  v35 = vqsubq_s16(vqrdmulhq_s16(v34, v27), v33);
  v36 = vqaddq_s16(v27, vqrdmulhq_s16(v34, v33));
  v37 = vdupq_n_s16(0xAA79u);
  v38 = vqaddq_s16(v31, vqrdmulhq_s16(v37, v29));
  v39 = vdupq_n_s16(0x5587u);
  v40 = vqaddq_s16(v29, vqrdmulhq_s16(v39, v31));
  v41 = vqaddq_s16(v26, v30);
  v42 = vqsubq_s16(v26, v30);
  v43 = vdupq_n_s16(0x3505u);
  v44 = vqsubq_s16(vqrdmulhq_s16(v43, v28), v32);
  v45 = vqaddq_s16(vqrdmulhq_s16(v43, v32), v28);
  v46 = vqaddq_s16(v35, v38);
  v47 = vqsubq_s16(v35, v38);
  v48 = vqsubq_s16(v36, v40);
  v49 = vqaddq_s16(v36, v40);
  v50 = vqaddq_s16(v41, v45);
  v51 = vqsubq_s16(v41, v45);
  v52 = vqaddq_s16(v42, v44);
  v53 = vqsubq_s16(v42, v44);
  v54 = vqsubq_s16(v48, v47);
  v55 = vqaddq_s16(v48, v47);
  v56 = vqaddq_s16(v50, v49);
  v57 = vqsubq_s16(v50, v49);
  v58 = vdupq_n_s16(0x5A82u);
  v59 = vqaddq_s16(v52, vqrdmulhq_s16(v58, v55));
  v60 = vdupq_n_s16(0xA57Eu);
  v61 = vqaddq_s16(v52, vqrdmulhq_s16(v60, v55));
  v62 = vqaddq_s16(v53, vqrdmulhq_s16(v58, v54));
  v63 = vqaddq_s16(v53, vqrdmulhq_s16(v60, v54));
  v64 = vqaddq_s16(v51, v46);
  v65 = vqsubq_s16(v51, v46);
  v66 = vqrdmulhq_s16(xmmword_2779335D0, v56);
  v67 = vqrdmulhq_s16(xmmword_2779335D0, v59);
  v68 = vqrdmulhq_s16(xmmword_2779335D0, v62);
  v69 = vqrdmulhq_s16(xmmword_2779335D0, v64);
  v70 = vqrdmulhq_s16(xmmword_2779335D0, v65);
  v71 = vqrdmulhq_s16(xmmword_2779335D0, v63);
  v72 = vqrdmulhq_s16(xmmword_2779335D0, v61);
  v73 = vqrdmulhq_s16(xmmword_2779335D0, v57);
  v74 = vzip1q_s16(v66, v70);
  v75 = vzip2q_s16(v66, v70);
  v76 = vzip1q_s16(v67, v71);
  v77 = vzip2q_s16(v67, v71);
  v78 = vzip1q_s16(v68, v72);
  v79 = vzip2q_s16(v68, v72);
  v80 = vzip1q_s16(v69, v73);
  v81 = vzip2q_s16(v69, v73);
  v82 = vzip1q_s16(v74, v78);
  v83 = vzip2q_s16(v74, v78);
  v84 = vzip1q_s16(v75, v79);
  v85 = vzip2q_s16(v75, v79);
  v86 = vzip1q_s16(v76, v80);
  v87 = vzip2q_s16(v76, v80);
  v88 = vzip1q_s16(v77, v81);
  v89 = vzip2q_s16(v77, v81);
  v90 = vzip1q_s16(v82, v86);
  v91 = vzip2q_s16(v82, v86);
  v92 = vzip1q_s16(v83, v87);
  v93 = vzip2q_s16(v83, v87);
  v94 = vzip1q_s16(v84, v88);
  v95 = vzip2q_s16(v84, v88);
  v96 = vzip1q_s16(v85, v89);
  v97 = vzip2q_s16(v85, v89);
  v98 = vqsubq_s16(vqrdmulhq_s16(v34, v91), v97);
  v99 = vqaddq_s16(v91, vqrdmulhq_s16(v34, v97));
  v100 = vqaddq_s16(v95, vqrdmulhq_s16(v37, v93));
  v101 = vqaddq_s16(v93, vqrdmulhq_s16(v39, v95));
  v102 = vqaddq_s16(v90, v94);
  v103 = vqsubq_s16(v90, v94);
  v104 = vqsubq_s16(vqrdmulhq_s16(v43, v92), v96);
  v105 = vqaddq_s16(vqrdmulhq_s16(v43, v96), v92);
  v106 = vqaddq_s16(v98, v100);
  v107 = vqsubq_s16(v98, v100);
  v108 = vqsubq_s16(v99, v101);
  v109 = vqaddq_s16(v99, v101);
  v110 = vqaddq_s16(v102, v105);
  v111 = vqsubq_s16(v102, v105);
  v112 = vqaddq_s16(v103, v104);
  v113 = vqsubq_s16(v103, v104);
  v114 = vqsubq_s16(v108, v107);
  v115 = vqaddq_s16(v108, v107);
  v116 = vqaddq_s16(v110, v109);
  v117 = vqsubq_s16(v110, v109);
  v118 = vqaddq_s16(v112, vqrdmulhq_s16(v58, v115));
  v119 = vqaddq_s16(v112, vqrdmulhq_s16(v60, v115));
  v120 = vqaddq_s16(v113, vqrdmulhq_s16(v58, v114));
  v121 = vqaddq_s16(v113, vqrdmulhq_s16(v60, v114));
  v113.i64[0] = 0x200020002000200;
  v113.i64[1] = 0x200020002000200;
  *a1 = vqrdmulhq_s16(v113, v116);
  a1[1] = vqrdmulhq_s16(v113, v118);
  a1[2] = vqrdmulhq_s16(v113, v120);
  a1[3] = vqrdmulhq_s16(v113, vqaddq_s16(v111, v106));
  a1[4] = vqrdmulhq_s16(v113, vqsubq_s16(v111, v106));
  a1[5] = vqrdmulhq_s16(v113, v121);
  result = vqrdmulhq_s16(v113, v117);
  a1[6] = vqrdmulhq_s16(v113, v119);
  a1[7] = result;
  return result;
}

int8x8_t *MC_2H_1V_Vec(int8x8_t *result, int a2, const unsigned __int8 *a3, int a4, int16x8_t *a5, unsigned int a6)
{
  v6 = vdupq_n_s16(a6);
  v7 = (a3 + 1);
  for (i = 9; i > 1; --i)
  {
    v9 = *a5++;
    *result = vqmovun_s16(vqaddq_s16(vhaddq_s16(vaddl_u8(*v7, *(v7 - 1)), v6), v9));
    result = (result + a2);
    v7 = (v7 + a4);
  }

  return result;
}

int8x8_t *MC_1H_2V_Vec(int8x8_t *result, int a2, uint8x8_t *a3, int a4, int16x8_t *a5, unsigned int a6)
{
  v6 = vdupq_n_s16(a6);
  v7 = vmovl_u8(*a3);
  v8 = (a3 + a4);
  for (i = 9; i > 1; --i)
  {
    v10 = vmovl_u8(*v8);
    v11 = *a5++;
    *result = vqmovun_s16(vqaddq_s16(vhaddq_s16(vaddw_u8(v7, *v8), v6), v11));
    result = (result + a2);
    v8 = (v8 + a4);
    v7 = v10;
  }

  return result;
}

int8x8_t *MC_2H_2V_Vec(int8x8_t *result, int a2, uint8x8_t *a3, int a4, int16x8_t *a5, unsigned int a6)
{
  v6 = vdupq_n_s16(a6);
  v7 = vaddl_u8(*a3, *&vextq_s8(*a3->i8, *a3->i8, 1uLL));
  v8 = (a3 + a4);
  for (i = 9; i > 1; --i)
  {
    v10 = vaddl_u8(*v8, *&vextq_s8(*v8->i8, *v8->i8, 1uLL));
    v11 = *a5++;
    *result = vqmovun_s16(vqaddq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(v7, v6), v10), 2uLL), v11));
    result = (result + a2);
    v8 = (v8 + a4);
    v7 = v10;
  }

  return result;
}

unsigned __int8 *Reconstruct_8x8Vec(unsigned __int8 *result, int a2, unsigned __int8 *a3, int a4, int16x8_t *a5, int a6, int a7, int a8, int a9, unsigned __int8 *a10)
{
  v12 = result;
  v33 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    Get_QuarterPel(a3, a4, a6, a7, a9, a10, 8, v32);
    result = AddResidueTo_8x8(a5, v32, v12, a2, a10);
  }

  else if (a7 | a6)
  {
    if (a6 != 1 || a7)
    {
      if (a6 || a7 != 1)
      {
        if (a6 == 1 && a7 == 1)
        {
          v26 = vdupq_n_s16(2 - a9);
          v27 = vaddl_u8(*a3, *&vextq_s8(*a3, *a3, 1uLL));
          v28 = &a3[a4];
          for (i = 9; i > 1; --i)
          {
            v30 = vaddl_u8(*v28, *&vextq_s8(*v28->i8, *v28->i8, 1uLL));
            v31 = *a5++;
            *v12 = vqmovun_s16(vqaddq_s16(vshrq_n_s16(vaddq_s16(vaddq_s16(v27, v26), v30), 2uLL), v31));
            v12 += a2;
            v28 = (v28 + a4);
            v27 = v30;
          }
        }
      }

      else
      {
        v20 = vdupq_n_s16(1 - a9);
        v21 = vmovl_u8(*a3);
        v22 = &a3[a4];
        for (j = 9; j > 1; --j)
        {
          v24 = vmovl_u8(*v22);
          v25 = *a5++;
          *v12 = vqmovun_s16(vqaddq_s16(vhaddq_s16(vaddw_u8(v21, *v22), v20), v25));
          v12 += a2;
          v22 = (v22 + a4);
          v21 = v24;
        }
      }
    }

    else
    {
      v14 = vdupq_n_s16(1 - a9);
      v15 = (a3 + 1);
      for (k = 9; k > 1; --k)
      {
        v17 = *a5++;
        *v12 = vqmovun_s16(vqaddq_s16(vhaddq_s16(vaddl_u8(*v15, *(v15 - 1)), v14), v17));
        v12 += a2;
        v15 = (v15 + a4);
      }
    }
  }

  else
  {
    for (m = 9; m > 1; --m)
    {
      v19 = *a5++;
      *v12 = vqmovun_s16(vqaddq_s16(vmovl_u8(*a3), v19));
      a3 += a4;
      v12 += a2;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void VCPMP4VRegister()
{
  if (atomic_load_explicit(&VCPMP4VRegister::registered, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&VCPMP4VRegister::registered, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<VCPMP4VRegister::$_0 &&>>);
  }
}

void VCPMP4VRegisterInternal()
{
  if (atomic_load_explicit(&VCPMP4VRegisterInternal::registered, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&VCPMP4VRegisterInternal::registered, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<VCPMP4VRegisterInternal::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<VCPMP4VRegister::$_0 &&>>()
{
  keys[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  keys[0] = *MEMORY[0x277CE2B70];
  values = *MEMORY[0x277CBED10];
  v1 = CFDictionaryCreate(v0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  VTRegisterVideoDecoderWithInfo();
  CFRelease(v1);
  v2 = *MEMORY[0x277D85DE8];
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<VCPMP4VRegisterInternal::$_0 &&>>()
{
  keys[2] = *MEMORY[0x277D85DE8];
  valuePtr = 1000;
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v2 = *MEMORY[0x277CE2B68];
  keys[0] = *MEMORY[0x277CE2B50];
  keys[1] = v2;
  v3 = *MEMORY[0x277CBED10];
  values[0] = v1;
  values[1] = v3;
  v4 = CFDictionaryCreate(v0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  VTRegisterVideoDecoderWithInfo();
  CFRelease(v4);
  CFRelease(v1);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t SetBufferInfo(uint64_t result, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  *result = a3;
  *(result + 2) = a4;
  *(result + 4) = a5;
  *(result + 6) = a6;
  *(result + 8) = a3 + 2 * a5;
  *(result + 10) = a4 + 2 * a6;
  *(result + 12) = (a4 + 2 * a6) * (a3 + 2 * a5);
  *(result + 16) = a2;
  return result;
}

uint64_t NewBuffer_U8(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = MEM_NewClear(40);
  *a1 = v10;
  if (!v10)
  {
    return 0;
  }

  v10[8] = a2;
  v10[9] = a3;
  v10[10] = a4;
  v10[11] = a5;
  v10[12] = a2 + 2 * a4;
  v10[13] = a3 + 2 * a5;
  v11 = (a3 + 2 * a5) * (a2 + 2 * a4);
  *(v10 + 7) = v11;
  *(v10 + 32) = 8;
  v12 = (v11 + 16);
  *(*a1 + 8) = MEM_New(v11 + 16);
  v13 = *(*a1 + 8);
  if (!v13)
  {
    return 0;
  }

  **a1 = v13 + *(*a1 + 24) * *(*a1 + 22) + *(*a1 + 20);
  return v12;
}

_WORD *NewBuffer_S16(_WORD *result, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  if (result)
  {
    v9 = result;
    result = MEM_NewClear(40);
    *v9 = result;
    if (result)
    {
      result[8] = a2;
      result[9] = a3;
      result[10] = a4;
      result[11] = a5;
      result[12] = a2 + 2 * a4;
      result[13] = a3 + 2 * a5;
      v10 = (a3 + 2 * a5) * (a2 + 2 * a4);
      *(result + 7) = v10;
      *(result + 32) = 8;
      *(*v9 + 8) = MEM_New(2 * v10);
      **v9 = *(*v9 + 8) + 2 * *(*v9 + 24) * *(*v9 + 22) + 2 * *(*v9 + 20);
      if (*(*v9 + 8))
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t InitFrame(void **a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = MEM_NewClear(168);
  *a1 = v10;
  if (v10)
  {
    v11 = NewBuffer_U8(v10, a2, a3, a4, a5);
    v12 = NewBuffer_U8(*a1 + 8, a2 >> 1, a3 >> 1, a4 >> 1, a5 >> 1) + v11;
    v13 = v12 + NewBuffer_U8(*a1 + 16, a2 >> 1, a3 >> 1, a4 >> 1, a5 >> 1);
    v14 = *a1;
    if (v13 == (a3 + 2 * a5) * (a2 + 2 * a4) + (((a3 + 2 * a5) * (a2 + 2 * a4)) >> 1) + 48)
    {
      v15 = 0;
      v14[3] = **v14;
      *(*a1 + 4) = ***a1 + 8;
      *(*a1 + 5) = ***a1 + 8 * *(**a1 + 24);
      *(*a1 + 6) = ***a1 + 8 * *(**a1 + 24) + 8;
      v16 = *a1;
      v17 = **a1;
      *(v16 + 120) = vdupq_n_s32(*(v17 + 24));
      *(v16 + 9) = v17;
      *(*a1 + 10) = **a1;
      *(*a1 + 11) = **a1;
      *(*a1 + 12) = **a1;
      *(*a1 + 7) = **(*a1 + 1);
      *(*a1 + 8) = **(*a1 + 2);
      v18 = *a1;
      v19 = *(*a1 + 1);
      v20 = *(*(*a1 + 2) + 24);
      v18[34] = *(v19 + 24);
      v18[35] = v20;
      *(v18 + 13) = v19;
      *(*a1 + 14) = *(*a1 + 2);
      v21 = *a1;
      v21[20] = 0x800000008;
      *&v22 = 0x1000000010;
      *(&v22 + 1) = 0x1000000010;
      *(v21 + 9) = v22;
    }

    else
    {
      DelBuffer_U8(v14);
      DelBuffer_U8(*a1 + 1);
      DelBuffer_U8(*a1 + 2);
      MEM_Dispose(*a1);
      *a1 = 0;
      return -108;
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t DelBuffer_U8(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = (v1[7] + 16);
  v4 = *(v1 + 1);
  if (v4)
  {
    MEM_Dispose(v4);
    v1 = *a1;
  }

  *v1 = 0;
  *(*a1 + 1) = 0;
  MEM_Dispose(*a1);
  *a1 = 0;
  return v3;
}

uint64_t DelBuffer_S16(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v1 + 7);
  v4 = v1[1];
  if (v4)
  {
    MEM_Dispose(v4);
    v1 = *a1;
  }

  *v1 = 0;
  *(*a1 + 1) = 0;
  MEM_Dispose(*a1);
  *a1 = 0;
  return v3;
}

uint64_t KillFrame(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    DelBuffer_U8(v2);
    DelBuffer_U8(*a1 + 1);
    DelBuffer_U8(*a1 + 2);
    for (i = 24; i != 72; i += 8)
    {
      *(*a1 + i) = 0;
    }

    do
    {
      *(*a1 + i) = 0;
      i += 8;
    }

    while (i != 120);
    MEM_Dispose(*a1);
    *a1 = 0;
  }

  return 0;
}

unint64_t SideExtendBuffer_U8(unint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 18);
  v4 = *(result + 24);
  v5 = *(result + 20);
  v6 = *(result + 22);
  v7 = *(result + 8);
  v8 = (v6 * v4);
  v9 = (v8 + v5);
  v34 = *(result + 26);
  v35 = v6;
  if (!*(result + 22))
  {
    v33 = *(result + 18);
    if (*(result + 18))
    {
      goto LABEL_7;
    }

LABEL_17:
    v20 = v9 + v2 - 1;
    goto LABEL_18;
  }

  v10 = (v7 + v5);
  v11 = v6;
  do
  {
    memmove(v10, (v7 + v9), v2);
    v10 += v4;
    --v11;
  }

  while (v11);
  v12 = *(v1 + 8);
  v33 = v35 + v3;
  v13 = (v35 + v3) * v4;
  v14 = (v12 + v5 - v4 + v13);
  v15 = (v12 + (v13 + v5));
  v16 = v35;
  do
  {
    result = memmove(v15, v14, v2);
    v15 += v4;
    --v16;
  }

  while (v16);
  v7 = *(v1 + 8);
  v6 = v35;
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_7:
  v17 = (v5 - 1) & 0xFFFFFFF8;
  v18 = v3;
  do
  {
    if (v5)
    {
      result = memset((v7 + v8), *(v7 + v9), v17 + 8);
    }

    v7 += v4;
    --v18;
  }

  while (v18);
  v19 = (v9 + v2);
  v20 = v19 - 1;
  v21 = *(v1 + 8);
  do
  {
    if (v5)
    {
      result = memset((v21 + v19), *(v21 + v20), v17 + 8);
    }

    v21 += v4;
    --v3;
  }

  while (v3);
  v7 = *(v1 + 8);
  v6 = v35;
LABEL_18:
  if (v6)
  {
    result = 0;
    v22 = *(v7 + v9);
    v23 = *(v7 + v20);
    v24 = v5 + (v33 - 1) * v4;
    v25 = *(v7 + v24);
    v26 = *(v7 + v2 + v24 - 1);
    do
    {
      if (v5)
      {
        v27 = result * v4;
        v28 = result + 1;
        v29 = (~result + v34) * v4;
        v30 = (v4 << 32) * (v34 - result) - 0x100000000;
        v31 = v5;
        v32 = v28 * v4 - 1;
        do
        {
          *(*(v1 + 8) + v27) = v22;
          *(*(v1 + 8) + v32) = v23;
          *(*(v1 + 8) + v29) = v25;
          *(*(v1 + 8) + (v30 >> 32)) = v26;
          ++v29;
          ++v27;
          v30 -= 0x100000000;
          --v32;
          --v31;
        }

        while (v31);
      }

      else
      {
        v28 = result + 1;
      }

      result = v28;
    }

    while (v28 != v6);
  }

  return result;
}

uint64_t SideExtendBuffer_S16(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 18);
  v3 = *(result + 24);
  v4 = *(result + 26);
  v5 = *(result + 20);
  v6 = *(result + 22);
  v7 = 2 * v3;
  if (*(result + 22))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v1)
      {
        v10 = *(result + 8);
        v11 = v10 + 2 * (v6 * v3);
        v12 = v10 + v8;
        v13 = v5;
        do
        {
          *(v12 + 2 * v13) = *(v11 + 2 * v13);
          ++v13;
        }

        while (v13 < v5 + v1);
      }

      ++v9;
      v8 += v7;
    }

    while (v9 != v6);
  }

  v14 = (v6 + v2);
  if (v14 < v4)
  {
    v15 = 2 * v3 * v14;
    v16 = (v6 + v2);
    do
    {
      if (v1)
      {
        v17 = *(result + 8);
        v18 = v17 + 2 * (v14 - 1) * v3;
        v19 = v17 + v15;
        v20 = v5;
        do
        {
          *(v19 + 2 * v20) = *(v18 + 2 * v20);
          ++v20;
        }

        while (v20 < v5 + v1);
      }

      ++v16;
      v15 += v7;
    }

    while (v16 < v4);
  }

  if (v2)
  {
    v21 = vdupq_n_s64(v5 - 1);
    v22 = 2 * v6 * v3 + 8;
    v23 = vdupq_n_s64(8uLL);
    v24 = v6;
    do
    {
      if (v5)
      {
        v25 = *(result + 8);
        v26 = *(v25 + 2 * v24 * v3 + 2 * v5);
        v27 = (v25 + v22);
        v28 = (v5 + 7) & 0x1FFF8;
        v29 = xmmword_27792F770;
        v30 = xmmword_27792F9F0;
        v31 = xmmword_27792F9E0;
        v32 = xmmword_27792F9D0;
        do
        {
          v33 = vmovn_s64(vcgeq_u64(v21, v29));
          if (vuzp1_s8(vuzp1_s16(v33, *v21.i8), *v21.i8).u8[0])
          {
            *(v27 - 4) = v26;
          }

          if (vuzp1_s8(vuzp1_s16(v33, *&v21), *&v21).i8[1])
          {
            *(v27 - 3) = v26;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v30))), *&v21).i8[2])
          {
            *(v27 - 2) = v26;
            *(v27 - 1) = v26;
          }

          v34 = vmovn_s64(vcgeq_u64(v21, v31));
          if (vuzp1_s8(*&v21, vuzp1_s16(v34, *&v21)).i32[1])
          {
            *v27 = v26;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(v34, *&v21)).i8[5])
          {
            v27[1] = v26;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v32)))).i8[6])
          {
            v27[2] = v26;
            v27[3] = v26;
          }

          v31 = vaddq_s64(v31, v23);
          v30 = vaddq_s64(v30, v23);
          v29 = vaddq_s64(v29, v23);
          v27 += 8;
          v32 = vaddq_s64(v32, v23);
          v28 -= 8;
        }

        while (v28);
      }

      ++v24;
      v22 += 2 * v3;
    }

    while (v24 < v14);
    v35 = (v5 + v1);
    v36 = vdupq_n_s64(v3 - v35 - 1);
    v37 = 2 * v6 * v3 + 2 * v35 + 8;
    v38 = v6;
    do
    {
      if (v35 < v3)
      {
        v39 = 0;
        v40 = *(result + 8);
        v41 = *(v40 + 2 * v38 * v3 + 2 * v35 - 2);
        v42 = (v40 + v37);
        do
        {
          v43 = vdupq_n_s64(v39);
          v44 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_27792F770)));
          if (vuzp1_s8(vuzp1_s16(v44, *v36.i8), *v36.i8).u8[0])
          {
            *(v42 - 4) = v41;
          }

          if (vuzp1_s8(vuzp1_s16(v44, *&v36), *&v36).i8[1])
          {
            *(v42 - 3) = v41;
          }

          if (vuzp1_s8(vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_27792F9F0)))), *&v36).i8[2])
          {
            *(v42 - 2) = v41;
            *(v42 - 1) = v41;
          }

          v45 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_27792F9E0)));
          if (vuzp1_s8(*&v36, vuzp1_s16(v45, *&v36)).i32[1])
          {
            *v42 = v41;
          }

          if (vuzp1_s8(*&v36, vuzp1_s16(v45, *&v36)).i8[5])
          {
            v42[1] = v41;
          }

          if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_27792F9D0))))).i8[6])
          {
            v42[2] = v41;
            v42[3] = v41;
          }

          v39 += 8;
          v42 += 8;
        }

        while (((v3 - v35 + 7) & 0xFFFFFFFFFFFFFFF8) != v39);
      }

      ++v38;
      v37 += 2 * v3;
    }

    while (v38 < v14);
  }

  if (v6)
  {
    v46 = 0;
    v47 = *(result + 8);
    v48 = v5 + v3 * v6;
    v49 = *(v47 + 2 * v48);
    v50 = *(v47 + 2 * (v48 + v1) - 2);
    v51 = v5 + (v14 - 1) * v3;
    v52 = *(v47 + 2 * v51);
    v53 = *(v47 + 2 * (v51 + v1) - 2);
    result = v5;
    do
    {
      if (v5)
      {
        v54 = v46 + 1;
        v55 = (~v46 + v4) * v3;
        v56 = v4 - v46;
        v57 = (v47 + 2 * v46 * v3);
        v58 = (v47 + 2 * v55);
        v59 = (v47 - 2 + 2 * v3 * v54);
        v60 = v3 * v56 - 1;
        v61 = v5;
        do
        {
          *v57++ = v49;
          *v59-- = v50;
          *v58++ = v52;
          *(v47 + 2 * v60--) = v53;
          --v61;
        }

        while (v61);
      }

      else
      {
        v54 = v46 + 1;
      }

      v46 = v54;
    }

    while (v54 != v6);
  }

  return result;
}

unint64_t SideExtendFrame(unint64_t *a1)
{
  SideExtendBuffer_U8(*a1);
  SideExtendBuffer_U8(a1[1]);
  v2 = a1[2];

  return SideExtendBuffer_U8(v2);
}

void *CopyFrame(void *result, void *a2)
{
  if (result && a2)
  {
    v3 = result;
    memmove(*(*a2 + 8), *(*result + 8), *(*result + 28));
    memmove(*(a2[1] + 8), *(v3[1] + 8), *(v3[1] + 28));
    v4 = v3[2];
    v5 = *(v4 + 8);
    v6 = *(a2[2] + 8);
    v7 = *(v4 + 28);

    return memmove(v6, v5, v7);
  }

  return result;
}

uint64_t CopyU8BlockToFrame(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = *(a5 + 8 * a6 + 72);
  if (a7 + a2 <= v8[8] && a8 + a2 <= v8[9])
  {
    v9 = *(a5 + 8 * a6 + 24) + a7 + v8[12] * a8;
    if (a4)
    {
      if (a2 >= 1)
      {
        for (i = 0; i != a2; ++i)
        {
          for (j = 0; j != a2; ++j)
          {
            *(v9 + j) = *(result + j) + a4;
          }

          result += a3;
          v9 += *(*a5 + 24);
        }
      }
    }

    else if (a2 >= 1)
    {
      for (k = 0; k != a2; ++k)
      {
        for (m = 0; m != a2; ++m)
        {
          *(v9 + m) = *(result + m);
        }

        result += a3;
        v9 += *(*a5 + 24);
      }
    }
  }

  return result;
}

uint64_t CopyS16BlockToFrame(uint64_t result, int a2, int a3, char a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = *(a5 + 8 * a6 + 72);
  if (a7 + a2 <= v8[8] && a8 + a2 <= v8[9] && a2 >= 1)
  {
    v10 = 0;
    v11 = *(a5 + 8 * a6 + 24) + a7 + v8[12] * a8;
    do
    {
      v12 = 0;
      do
      {
        *(v11 + v12) = *(result + 2 * v12) + a4;
        ++v12;
      }

      while (a2 != v12);
      ++v10;
      v11 += *(*a5 + 24);
      result += 2 * a3;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t CopyToBuffer_U8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 18);
  if (*(a3 + 18))
  {
    v4 = 0;
    v5 = 0;
    LODWORD(v6) = *(a3 + 16);
    do
    {
      if (v6)
      {
        v7 = 0;
        do
        {
          *(*a3 + v4 * *(a3 + 24) + v7) = *(result + v7);
          ++v7;
          v6 = *(a3 + 16);
        }

        while (v7 < v6);
        v3 = *(a3 + 18);
      }

      ++v5;
      result += a2;
      ++v4;
    }

    while (v5 < v3);
  }

  return result;
}

uint64_t CopyToBuffer_S16(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v3 = *(a3 + 9);
  if (*(a3 + 9))
  {
    v4 = 0;
    v5 = 0;
    LODWORD(v6) = *(a3 + 8);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *a3;
        do
        {
          *(v8 + v4 * *(a3 + 12)) = *(result + 2 * v7++);
          v6 = *(a3 + 8);
          v8 += 2;
        }

        while (v7 < v6);
        v3 = *(a3 + 9);
      }

      ++v5;
      v4 += 2;
      result += 2 * a2;
    }

    while (v5 < v3);
  }

  return result;
}

uint64_t CopyFromBuffer_U8(uint64_t result, _BYTE *a2, unsigned int a3)
{
  v3 = *(result + 18);
  if (*(result + 18))
  {
    v4 = *(result + 22);
    v5 = *(result + 20);
    v6 = *(result + 16);
    v7 = *(result + 22);
    v8 = v7;
    do
    {
      if (v6)
      {
        v9 = a2;
        do
        {
          *v9++ = *(*(result + 8) + v4 * *(result + 24) + v5);
          v6 = *(result + 16);
          ++v5;
        }

        while (v5 < v6 + *(result + 20));
        v7 = *(result + 22);
        v3 = *(result + 18);
        v5 = *(result + 20);
      }

      ++v8;
      a2 += a3;
      ++v4;
    }

    while (v8 < v3 + v7);
  }

  return result;
}

uint64_t CopyFromBuffer_S16(uint64_t result, _WORD *a2, unsigned int a3)
{
  v3 = *(result + 18);
  if (*(result + 18))
  {
    v4 = *(result + 22);
    v5 = *(result + 20);
    v6 = *(result + 16);
    v7 = *(result + 22);
    v8 = v7;
    do
    {
      if (v6)
      {
        v9 = *(result + 8);
        v10 = a2;
        do
        {
          *v10++ = *(v9 + 2 * (v5 + v4 * *(result + 24)));
          v6 = *(result + 16);
          ++v5;
        }

        while (v5 < v6 + *(result + 20));
        v7 = *(result + 22);
        v3 = *(result + 18);
        v5 = *(result + 20);
      }

      ++v8;
      a2 += a3;
      ++v4;
    }

    while (v8 < v3 + v7);
  }

  return result;
}

float GetFrameYChannelMAD(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 9);
  if (*(*a1 + 9))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(v1 + 12);
    v7 = *v1;
    do
    {
      if (*(*a1 + 8))
      {
        v8 = 0;
        do
        {
          v5 += vaddlvq_u16(vmovl_u8(*(v7 + v8)));
          v8 += 8;
        }

        while (v8 < v2);
      }

      ++v4;
      v7 += v6;
    }

    while (v4 != v3);
    v9 = v5;
  }

  else
  {
    v9 = 0.0;
  }

  return v9 / (v3 * v2);
}

float GetFramesYChannelDiffMAD(uint64_t a1, uint64_t **a2, uint64_t a3, double a4, double a5, uint32x4_t a6, uint32x4_t a7)
{
  v7 = *a2;
  v8 = *(*a2 + 8);
  v9 = *(*a2 + 9);
  v10 = 0.0;
  if (v9 >= 0x10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v7;
    v15 = *(v7 + 12);
    v16 = *(*a1 + 24);
    v17 = (v14 + 7);
    v18 = **a1 + 7;
    v19.i64[0] = 0xFF000000FFLL;
    v19.i64[1] = 0xFF000000FFLL;
    do
    {
      if (v8 >= 0x10)
      {
        v20 = 0;
        v21 = v18;
        v22 = v17;
        do
        {
          v23 = 0;
          v24 = 16;
          v25 = v21;
          v26 = v22;
          do
          {
            a6.i8[0] = *(v25 - 7);
            a6.i8[2] = *(v25 - 3);
            a6.i8[4] = v25[1];
            a6.i8[6] = v25[5];
            v27 = vandq_s8(vmovl_u16(*a6.i8), v19);
            a7.i8[0] = *(v26 - 7);
            a7.i8[2] = *(v26 - 3);
            a7.i8[4] = v26[1];
            a7.i8[6] = v26[5];
            v28 = vandq_s8(vmovl_u16(*a7.i8), v19);
            v29 = vabaq_u32(v23, v27, v28);
            v27.i8[0] = *(v25 - 6);
            v27.i8[2] = *(v25 - 2);
            v27.i8[4] = v25[2];
            v27.i8[6] = v25[6];
            v30 = vandq_s8(vmovl_u16(*v27.i8), v19);
            v28.i8[0] = *(v26 - 6);
            v28.i8[2] = *(v26 - 2);
            v28.i8[4] = v26[2];
            v28.i8[6] = v26[6];
            v31 = vandq_s8(vmovl_u16(*v28.i8), v19);
            v32 = vabaq_u32(v29, v30, v31);
            v30.i8[0] = *(v25 - 5);
            v30.i8[2] = *(v25 - 1);
            v30.i8[4] = v25[3];
            v30.i8[6] = v25[7];
            v31.i8[0] = *(v26 - 5);
            v31.i8[2] = *(v26 - 1);
            v31.i8[4] = v26[3];
            v31.i8[6] = v26[7];
            v33 = vandq_s8(vmovl_u16(*v30.i8), v19);
            v34 = vandq_s8(vmovl_u16(*v31.i8), v19);
            v35 = vabaq_u32(v32, v33, v34);
            v33.i8[0] = *(v25 - 4);
            v33.i8[2] = *v25;
            v33.i8[4] = v25[4];
            v33.i8[6] = v25[8];
            a6 = vandq_s8(vmovl_u16(*v33.i8), v19);
            v34.i8[0] = *(v26 - 4);
            v34.i8[2] = *v26;
            v34.i8[4] = v26[4];
            v34.i8[6] = v26[8];
            a7 = vandq_s8(vmovl_u16(*v34.i8), v19);
            v23 = vaddvq_s32(vabaq_u32(v35, a6, a7));
            v26 += v15;
            v25 += v16;
            --v24;
          }

          while (v24);
          if (a3)
          {
            *(a3 + 2 * v13) = v23 >> 8;
          }

          v12 += v23;
          ++v20;
          ++v13;
          v22 += 16;
          v21 += 16;
        }

        while (v20 != v8 >> 4);
      }

      ++v11;
      v17 += 16 * v15;
      v18 += 16 * v16;
    }

    while (v11 != v9 >> 4);
    v10 = v12;
  }

  return v10 / (v9 * v8);
}

float GetFramesYChannelDiffPSNR(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 18);
  if (*(*a2 + 18))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(*a2 + 16))
      {
        v5 = (**a2 + v3 * *(*a2 + 24));
        v6 = (**a1 + v3 * *(*a1 + 24));
        v7 = *(*a2 + 16);
        do
        {
          v9 = *v6++;
          v8 = v9;
          v10 = *v5++;
          v4 += (v8 - v10) * (v8 - v10);
          --v7;
        }

        while (v7);
      }

      ++v3;
    }

    while (v3 != v2);
    v11 = v4;
  }

  else
  {
    v11 = 0.0;
  }

  return log10((*(*a2 + 16) * v2) * 65025.0 / v11) * 10.0;
}

uint64_t DumpBuffer_U8(uint64_t result, FILE *__stream, int a3)
{
  if (__stream)
  {
    v4 = result;
    if (a3)
    {
      v5 = *(result + 8);
      v6 = *(v4 + 28);

      return fwrite(v5, 1uLL, v6, __stream);
    }

    else
    {
      v7 = *(result + 18);
      if (*(result + 18))
      {
        v8 = 0;
        v9 = *(result + 16);
        do
        {
          result = fwrite((*v4 + v8 * *(v4 + 24)), 1uLL, v9, __stream);
          ++v8;
        }

        while (v7 != v8);
      }
    }
  }

  return result;
}

FILE *DumpYUV(const char *a1, uint64_t *a2, int a3)
{
  result = fopen(a1, "ab");
  if (result)
  {
    v6 = result;
    DumpBuffer_U8(*a2, result, a3);
    DumpBuffer_U8(a2[1], v6, a3);
    DumpBuffer_U8(a2[2], v6, a3);

    return fclose(v6);
  }

  return result;
}

FILE *DumpY(uint64_t *a1, int a2)
{
  result = fopen("dumpY.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*a1, result, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpU(uint64_t a1, int a2)
{
  result = fopen("dumpU.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*(a1 + 8), result, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpV(uint64_t a1, int a2)
{
  result = fopen("dumpV.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*(a1 + 16), result, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpY2(uint64_t *a1, int a2)
{
  result = fopen("dumpY2.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*a1, result, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpU2(uint64_t a1, int a2)
{
  result = fopen("dumpU2.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*(a1 + 8), result, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpV2(uint64_t a1, int a2)
{
  result = fopen("dumpV2.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*(a1 + 16), result, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpFrame(uint64_t *a1, int a2)
{
  result = fopen("dumpFrame.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*a1, result, a2);
    DumpBuffer_U8(a1[1], v5, a2);
    DumpBuffer_U8(a1[2], v5, a2);

    return fclose(v5);
  }

  return result;
}

FILE *DumpFrame2(uint64_t *a1, int a2)
{
  result = fopen("dumpFrame2.raw", "ab");
  if (result)
  {
    v5 = result;
    DumpBuffer_U8(*a1, result, a2);
    DumpBuffer_U8(a1[1], v5, a2);
    DumpBuffer_U8(a1[2], v5, a2);

    return fclose(v5);
  }

  return result;
}

uint64_t SetBufferAllVal_U8(uint64_t result, char a2)
{
  if (*(result + 28))
  {
    v2 = 0;
    do
    {
      *(*(result + 8) + v2++) = a2;
    }

    while (v2 < *(result + 28));
  }

  return result;
}

uint64_t SetBufferAllVal_S16(uint64_t result, __int16 a2)
{
  v2 = *(result + 28);
  if (v2)
  {
    v3 = (v2 + 7) & 0x1FFFFFFF8;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_27792F9D0;
    v6 = xmmword_27792F9E0;
    v7 = xmmword_27792F9F0;
    v8 = xmmword_27792F770;
    v9 = (*(result + 8) + 8);
    v10 = vdupq_n_s64(8uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v8));
      if (vuzp1_s8(vuzp1_s16(v11, *v4.i8), *v4.i8).u8[0])
      {
        *(v9 - 4) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v4), *&v4).i8[1])
      {
        *(v9 - 3) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v7))), *&v4).i8[2])
      {
        *(v9 - 2) = a2;
        *(v9 - 1) = a2;
      }

      v12 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i32[1])
      {
        *v9 = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i8[5])
      {
        v9[1] = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5)))).i8[6])
      {
        v9[2] = a2;
        v9[3] = a2;
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 8;
      v5 = vaddq_s64(v5, v10);
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

void *SetFrameAllVal(void *result, char a2)
{
  v2 = *result;
  if (*(*result + 28))
  {
    v3 = 0;
    do
    {
      *(*(v2 + 8) + v3++) = a2;
    }

    while (v3 < *(v2 + 28));
  }

  v4 = result[1];
  if (*(v4 + 28))
  {
    v5 = 0;
    do
    {
      *(*(v4 + 8) + v5++) = a2;
    }

    while (v5 < *(v4 + 28));
  }

  v6 = result[2];
  if (*(v6 + 28))
  {
    v7 = 0;
    do
    {
      *(*(v6 + 8) + v7++) = a2;
    }

    while (v7 < *(v6 + 28));
  }

  return result;
}

uint64_t Line_Frame(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = *(*a6 + 24);
  v7 = *(*a6 + 26);
  v8 = a3 & ~(a3 >> 63);
  if (v6 >= result)
  {
    v9 = result & ~(result >> 63);
  }

  else
  {
    v9 = *(*a6 + 24);
  }

  if (v6 < a3)
  {
    v8 = *(*a6 + 24);
  }

  if (v7 >= a2)
  {
    v10 = a2 & ~(a2 >> 63);
  }

  else
  {
    v10 = *(*a6 + 26);
  }

  if (v7 >= a4)
  {
    v7 = a4 & ~(a4 >> 63);
  }

  v11 = (v8 - v9);
  v12 = v7 - v10;
  v13 = v12;
  v14 = sqrtf((v13 * v13) + (v11 * v11));
  v15 = 0.0;
  v16 = 0.5;
  if (v8 >= v9)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 0.5;
  }

  if (v12 >= 0)
  {
    v16 = 0.0;
  }

  if (v14 > 0.0)
  {
    v18 = **a6 + v9;
    do
    {
      *(v18 + (v17 + ((v15 / v14) * v11)) + (v10 + (v16 + ((v15 / v14) * v13))) * v6) = a5;
      v15 = v15 + 1.0;
    }

    while (v15 < v14);
  }

  return result;
}

uint64_t View_MV(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v40 = result;
  if (result >= 1)
  {
    v41 = 0;
    v42 = a2;
    v38 = 2 * a2;
    do
    {
      if (a2 >= 1)
      {
        v9 = 0;
        v45 = a6 + v41 * a2;
        v46 = v38 * v41;
        do
        {
          v10 = 4 * (v9 + v46);
          v11 = *(a4 + v10);
          v12 = *(a5 + v10);
          v13 = (4 * (v9 + v46)) | 2;
          v14 = *(a4 + v13);
          v48[0] = v11;
          v48[1] = v14;
          v15 = *(a5 + v13);
          v47[0] = v12;
          v47[1] = v15;
          v16 = v9 + v46 + a2;
          v17 = *(a4 + 4 * v16);
          v18 = *(a5 + 4 * v16);
          v19 = (4 * v16) | 2;
          v20 = *(a4 + v19);
          v48[2] = v17;
          v48[3] = v20;
          v21 = *(a5 + v19);
          v47[2] = v18;
          v47[3] = v21;
          v22 = *(v45 + v9);
          if (v22 - 3 >= 2)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            do
            {
              v26 = v48[v25];
              v27 = v47[v25];
              if (a3)
              {
                if (v26 >= 0)
                {
                  v28 = v48[v25];
                }

                else
                {
                  v28 = v26 + 3;
                }

                v29 = v28 >> 2;
                if ((v26 + 3) >= 4)
                {
                  v30 = v29;
                }

                else
                {
                  v30 = -1;
                }

                if (v26 >= 4)
                {
                  v26 = v30;
                }

                else
                {
                  v26 = 1;
                }

                if (v27 >= 0)
                {
                  v31 = v47[v25];
                }

                else
                {
                  v31 = v27 + 3;
                }

                v32 = v31 >> 2;
                if ((v27 + 3) >= 4)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = -1;
                }

                if (v27 >= 4)
                {
                  v27 = v33;
                }

                else
                {
                  v27 = 1;
                }
              }

              else
              {
                if (v26 != -1 && v26 != 1)
                {
                  v26 /= 2;
                }

                if (v27 != -1 && v27 != 1)
                {
                  v27 /= 2;
                }
              }

              result = Line_Frame(v24 & 8 | (16 * v9), v23 & 8 | (16 * v41), (v26 + (v24 & 8 | (16 * v9))) & ~((v26 + (v24 & 8 | (16 * v9))) >> 63), (v27 + (v23 & 8 | (16 * v41))) & ~((v27 + (v23 & 8 | (16 * v41))) >> 63), 255, a7);
              if (v22 < 2)
              {
                break;
              }

              v24 += 8;
              v23 += 4;
            }

            while (v25++ < 3);
          }

          ++v9;
          a2 = v42;
        }

        while (v9 != v42);
      }

      ++v41;
    }

    while (v41 != v40);
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CloneFrame(void *a1, void **a2)
{
  InitFrame(a2, *(*a1 + 16), *(*a1 + 18), *(*a1 + 20), *(*a1 + 22));
  CopyFrame(a1, *a2);
  return 0;
}

uint64_t *FrameDiff(uint64_t *result, uint64_t a2)
{
  if (*(*result + 24) == *(*a2 + 24) && *(*result + 26) == *(*a2 + 26))
  {
    for (i = 1; i != 4; ++i)
    {
      if (i == 2)
      {
        v3 = result + 1;
      }

      else
      {
        v3 = result + 2;
      }

      if (i == 2)
      {
        v4 = a2 + 8;
      }

      else
      {
        v4 = a2 + 16;
      }

      if (i == 1)
      {
        v3 = result;
        v5 = a2;
      }

      else
      {
        v5 = v4;
      }

      v6 = *v3;
      v7 = *(*v3 + 26);
      if (v7)
      {
        v8 = *(v6 + 24);
        v9 = *(*v5 + 8);
        v10 = *(v6 + 8);
        do
        {
          if (v8)
          {
            v11 = v8;
            do
            {
              v12 = *v10++;
              v13 = v12 - *v9;
              if (v13 < 0)
              {
                v13 = -v13;
              }

              *v9++ = v13;
              --v11;
            }

            while (v11);
          }

          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

void *WipeChannel(void *result, int __c, uint64_t *a3)
{
  v3 = a3 + 2;
  if (result == 2)
  {
    v3 = a3 + 1;
  }

  if (result == 1)
  {
    v3 = a3;
  }

  v4 = *v3;
  v5 = *(v4 + 26);
  if (*(v4 + 26))
  {
    v7 = *(v4 + 24);
    v8 = *(v4 + 8);
    do
    {
      if (v7)
      {
        result = memset(v8, __c, v7);
        v8 += (v7 - 1) + 1;
      }

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t CopyChannelC2Y(uint64_t result, uint64_t a2)
{
  if (result == 2)
  {
    v2 = 8;
  }

  else
  {
    if (result != 3)
    {
      return result;
    }

    v2 = 16;
  }

  v3 = *(a2 + v2);
  v4 = *(v3 + 26);
  if (*(v3 + 26))
  {
    v5 = *(v3 + 24);
    v6 = *(*a2 + 24);
    v7 = *(*a2 + 8);
    v8 = *(v3 + 8);
    v9 = v7;
    do
    {
      v7 += v6;
      if (v5)
      {
        v10 = v5;
        do
        {
          v11 = *v8++;
          *v9 = v11;
          v9[1] = v11;
          v9 += 2;
          *v7 = v11;
          v7[1] = v11;
          v7 += 2;
          --v10;
        }

        while (v10);
      }

      v9 += v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

void CScanConverter::CScanConverter(CScanConverter *this)
{
  *(this + 35) = xmmword_277933600;
  *(this + 36) = xmmword_277933610;
  *(this + 6) = xmmword_277933630;
  *(this + 7) = xmmword_277933640;
  *(this + 8) = xmmword_277933650;
  *(this + 10) = xmmword_277933670;
  *(this + 9) = xmmword_277933660;
  *(this + 11) = xmmword_277933680;
  *(this + 12) = xmmword_277933690;
  *(this + 39) = xmmword_2779336D0;
  *(this + 40) = xmmword_2779336C0;
  *(this + 37) = xmmword_277933620;
  *(this + 38) = xmmword_2779336E0;
  *(this + 20) = xmmword_277933700;
  *(this + 21) = xmmword_2779336F0;
  *(this + 18) = xmmword_277933720;
  *(this + 19) = xmmword_277933710;
  *(this + 16) = xmmword_277933740;
  *(this + 17) = xmmword_277933730;
  *(this + 13) = xmmword_2779336A0;
  *(this + 14) = xmmword_277933760;
  *(this + 15) = xmmword_277933750;
  *(this + 41) = xmmword_2779336B0;
  *(this + 42) = xmmword_277933770;
  *(this + 43) = xmmword_277933780;
  *(this + 44) = xmmword_277933790;
  *(this + 88) = 0;
  *(this + 89) = 33685761;
  *(this + 180) = 257;
  *(this + 362) = 0x101010100000000;
  *(this + 370) = 0x303040403030202;
  *(this + 378) = 0x303030302020202;
  *(this + 386) = 0x505060605050404;
  *(this + 394) = 0x505050504040404;
  *(this + 201) = 1542;
  *(this + 101) = 117901063;
  *(this + 51) = 0x707070706060606;
  *(this + 26) = xmmword_2779337B0;
  *(this + 27) = xmmword_2779337C0;
  *(this + 28) = xmmword_2779337D0;
  *(this + 29) = xmmword_2779337E0;
  *(this + 45) = xmmword_2779337A0;
  *(this + 46) = xmmword_2779337F0;
  *(this + 47) = xmmword_277933800;
  *(this + 48) = xmmword_277933810;
  *(this + 49) = xmmword_277933820;
  *(this + 50) = xmmword_277933830;
  *(this + 51) = xmmword_277933840;
  qmemcpy(this + 832, " !(0)#*1892+3:;$%,4-&'.5<=6/7>?", 32);
  v1 = vdupq_n_s64(this + 160);
  v2 = vdupq_n_s64(this + 96);
  v3 = vdupq_n_s64(this + 544);
  *(this + 60) = this + 416;
  *(this + 61) = this + 352;
  *(this + 31) = v3;
  *(this + 32) = v3;
  *this = v2;
  *(this + 1) = v2;
  *(this + 33) = v3;
  *(this + 34) = xmmword_2779335F0;
  *(this + 2) = v2;
  *(this + 3) = v1;
  *(this + 4) = v1;
  *(this + 5) = v1;
}

uint64_t CScanConverter::SetUp(CScanConverter *this, int a2, int a3)
{
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v3 = 0;
      v4 = a3;
      *(this + a3) = this + 224;
      v5 = this + 288;
      v6 = 608;
      goto LABEL_15;
    }

    if (a2 == 5 || a2 == 6)
    {
      v3 = 0;
      v4 = a3;
      *(this + a3) = this + 96;
      v5 = this + 160;
      v6 = 800;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a2 == 1)
  {
    v3 = 0;
    v4 = a3;
    *(this + a3) = this + 96;
    v5 = this + 160;
LABEL_13:
    v6 = 544;
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    v3 = 0;
    v4 = a3;
    *(this + a3) = this + 352;
    v5 = this + 416;
    v6 = 672;
    goto LABEL_15;
  }

  if (a2 != 3)
  {
LABEL_12:
    v4 = a3;
    *(this + a3) = this + 96;
    v5 = this + 160;
    v3 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v3 = 0;
  v4 = a3;
  *(this + a3) = *(this + 60);
  v5 = *(this + 61);
  v6 = 736;
LABEL_15:
  v7 = this + 8 * v4;
  *(v7 + 6) = v5;
  *(v7 + 62) = this + v6;
  return v3;
}

uint64_t CScanConverter::SetUpMPEG(CScanConverter *this, unsigned int a2, int a3)
{
  v3 = ((a2 >> 1) & 1) - 1;
  if (a2)
  {
    v3 = 0;
    v4 = 2;
  }

  else
  {
    v4 = a2 & 2 | 1;
  }

  if ((a2 & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if ((a2 & 4) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  CScanConverter::SetUp(this, v6, a3);
  return v5;
}

uint64_t CScanConverter::SetUpDwt(CScanConverter *this, unsigned int a2, int a3, int a4)
{
  v4 = ((a2 >> 1) & 1) - 1;
  if (a2)
  {
    v4 = 0;
    v5 = 2;
  }

  else
  {
    v5 = a2 & 2 | 1;
  }

  if (a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  if ((a2 & 4) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if ((a2 & 4) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  CScanConverter::SetUp(this, v8, a3);
  return v7;
}

void CBitStream::CBitStream(CBitStream *this)
{
  *(this + 24) = xmmword_2779338B0;
  *(this + 40) = xmmword_2779338C0;
  *(this + 56) = xmmword_2779338D0;
  *(this + 72) = xmmword_2779338E0;
  *(this + 88) = xmmword_2779338F0;
  *(this + 104) = xmmword_277933900;
  *(this + 120) = xmmword_277933910;
  *(this + 136) = xmmword_277933920;
  *(this + 38) = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
}

uint64_t MPEG4VideoDecoder_StartSession(_WORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}