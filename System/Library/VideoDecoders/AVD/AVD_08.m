uint64_t CAHDecCatnipAvc::updateCommonRegisters(CAHDecCatnipAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecCatnipAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = *a2 & 0xFEFFFFC0 | 0x1000000;
  *a2 = v8;
  do
  {
    v8 |= (*(a4 + v7) == 0) << v7;
    *a2 = v8;
    ++v7;
  }

  while (v7 != 6);
  v9 = v8 & 0xFFFFF03F;
  *a2 = v8 & 0xFFFFF03F;
  v10 = (a7 - 6);
  if (a7 > 6)
  {
    v11 = (a4 + 6);
    v12 = &dword_27775C034;
    do
    {
      v13 = *v11++;
      v14 = v13 == 0;
      v16 = *v12++;
      v15 = v16;
      v17 = v14;
      v9 |= ((v17 << v15) & 0x3F) << 6;
      *a2 = v9;
      --v10;
    }

    while (v10);
  }

  v18 = 0;
  v19 = (a5 + 1);
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v19;
    do
    {
      v23 = *(v20 + 4 * v21) & 0xFFFFFF | (*(v22 - 1) << 24);
      *(v20 + 4 * v21) = v23;
      v24 = v23 & 0xFF00FFFF | (*v22 << 16);
      *(v20 + 4 * v21) = v24;
      v25 = v24 & 0xFFFF00FF | (v22[1] << 8);
      *(v20 + 4 * v21) = v25;
      *(v20 + 4 * v21++) = v25 & 0xFFFFFF00 | v22[2];
      v22 += 4;
    }

    while (v21 != 4);
    ++v18;
    v20 += 16;
    v19 += 16;
  }

  while (v18 != 6);
  v26 = 0;
  v27 = a3 + 96;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a6 + (dword_27775C04C[v26] << 6);
    do
    {
      v32 = (v31 + (v29 & 0x20 | v30 & 4 | v28 & 0x18));
      v33 = *(v27 + v29) & 0xFFFFFF | (*v32 << 24);
      *(v27 + v29) = v33;
      v34 = v33 & 0xFF00FFFF | (v32[1] << 16);
      *(v27 + v29) = v34;
      v35 = v34 & 0xFFFF00FF | (v32[2] << 8);
      *(v27 + v29) = v35;
      *(v27 + v29) = v35 & 0xFFFFFF00 | v32[3];
      ++v30;
      v29 += 4;
      v28 += 8;
    }

    while (v29 != 64);
    ++v26;
    v27 += 64;
  }

  while (v26 != 6);
}

void CAHDecCatnipAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    v2 = 0;
    v3 = 8;
    if (*(a2 + 4) == 3)
    {
      v3 = 12;
    }

    v4 = (a2 - 382);
    v5 = 18;
    while (v2 > 5)
    {
      if (*(a2 + v2 + 10))
      {
        if (*(a2 + v2 + 22) == 2)
        {
          if (v2 == 6 || (v2 & 0x7FFFFFFD) == 8)
          {
            v4[8] = avcDefaultIntraScalingList8x8;
            v4[9] = unk_27775C0B4;
            v10 = xmmword_27775C0C4;
            v11 = unk_27775C0D4;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775C074;
            v10 = xmmword_27775C084;
            v11 = unk_27775C094;
          }

          v4[10] = v10;
          v4[11] = v11;
        }

        goto LABEL_24;
      }

      if (v2 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v4[1];
        v4[8] = *v4;
        v4[9] = v12;
        v13 = v4[3];
        v4[10] = v4[2];
        v4[11] = v13;
        v8 = a2 + v2;
        v9 = *(a2 + v2 + 20);
LABEL_21:
        *(v8 + 22) = v9;
      }

LABEL_24:
      ++v2;
      v4 += 4;
      v5 += 16;
      if (v3 == v2)
      {
        return;
      }
    }

    if (*(a2 + v2 + 10))
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6 || v2 == 3)
    {
      goto LABEL_24;
    }

    *(a2 + v5 + 16) = *(a2 + v5);
    v8 = a2 + v2;
    v9 = *(a2 + v2 + 21);
    goto LABEL_21;
  }
}

void CAHDecCatnipAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 96))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 8;
    if (*(a2 + 4) == 3)
    {
      v6 = 12;
    }

    do
    {
      if (v5 > 5)
      {
        if (*(a3 + v5 + 97))
        {
          if (*(a3 + v5 + 109) == 2)
          {
            v8 = (a3 + v4 - 167);
            if (v5 == 6 || (v5 & 0x7FFFFFFD) == 8)
            {
              *v8 = avcDefaultIntraScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C0B4;
              v9 = xmmword_27775C0C4;
              v10 = unk_27775C0D4;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C074;
              v9 = xmmword_27775C084;
              v10 = unk_27775C094;
            }

            *(a3 + v4 - 135) = v9;
            *(a3 + v4 - 119) = v10;
          }

          goto LABEL_29;
        }

        if (v5 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = a3 + v4;
          *(v11 - 119) = *(a3 + v4 - 247);
          v12 = *(a3 + v4 - 279);
          *(v11 - 167) = *(a3 + v4 - 295);
          *(v11 - 151) = v12;
          *(v11 - 135) = *(a3 + v4 - 263);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 107);
LABEL_28:
          *(v13 + 109) = v14;
          goto LABEL_29;
        }

        if (*(a2 + 9))
        {
          v15 = a3 + v4;
          v16 = *(a2 + v4 - 254);
          v17 = *(a2 + v4 - 238);
          v18 = *(a2 + v4 - 222);
          *(v15 - 119) = *(a2 + v4 - 206);
          *(v15 - 135) = v18;
          *(v15 - 151) = v17;
          *(v15 - 167) = v16;
          goto LABEL_22;
        }
      }

      else
      {
        if (*(a3 + v5 + 97))
        {
          if ((*(a3 + v5 + 109) & 2) != 0)
          {
            if (v5 > 2)
            {
              v7 = avcDefaultInterScalingList4x4;
            }

            else
            {
              v7 = avcDefaultIntraScalingList4x4;
            }

            *(a3 + v3 + 121) = v7;
          }

          goto LABEL_29;
        }

        if (v5 && v5 != 3)
        {
          *(a3 + v3 + 121) = *(a3 + v3 + 105);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 108);
          goto LABEL_28;
        }

        if (*(a2 + 9))
        {
          *(a3 + v3 + 121) = *(a2 + v3 + 34);
LABEL_22:
          *(a3 + v5 + 109) = *(a2 + v5 + 22);
        }
      }

LABEL_29:
      ++v5;
      v4 += 64;
      v3 += 16;
    }

    while (v6 != v5);
  }
}

uint64_t CAHDecCatnipAvc::populateSequenceRegisters(CAHDecCatnipAvc *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 3500);
  v5 = *(v2 + 3504);
  v6 = *(v2 + 3184);
  v7 = *(v2 + 3192);
  v8 = v6 + 2224 * v4;
  v3[10] = 0;
  LOWORD(v4) = *(v8 + 1558);
  v3[10] = (2 * (v4 & 0xFFF)) | 1;
  v3[10] = ((*(v8 + 1560) & 0xFFF) << 17) | (2 * (v4 & 0xFFF)) | 0x10001;
  v3[11] = 0;
  v9 = *(v8 + 1564) & 1;
  v3[11] = v9;
  v10 = v9 | ((*(v7 + 604 * v5 + 95) != 0) << 7) | 0x2800;
  v3[11] = v10;
  v11 = *(v8 + 4);
  if (*(v8 + 4))
  {
    v11 = (*(v8 + 7) & 0xF) << 15;
  }

  v12 = v11 | v10;
  v3[11] = v12;
  v13 = v12 & 0x7F87A881 | ((*(v8 + 6) & 0xF) << 19);
  v3[11] = v13;
  v14 = v13 & 0xFF7FFFFF | ((*(v8 + 5) & 1) << 23);
  v3[11] = v14;
  v3[11] = v14 & 0xFCFFFFFF | ((*(v8 + 4) & 3) << 24);
  if (*(v8 + 9))
  {
    if (*(v8 + 4) == 3)
    {
      v15 = 12;
    }

    else
    {
      v15 = 8;
    }

    CAHDecCatnipAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecCatnipAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 992, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecCatnipAvc::populatePictureRegisters(CAHDecCatnipAvc *this)
{
  v354 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v333 = *(v2 + 2088);
  v338 = *(v2 + 3040);
  v336 = *(v2 + 3020);
  v337 = *(v2 + 2644);
  v7 = *(v2 + 8);
  v8 = *(v2 + 6904);
  v353[8] = *(v2 + 6888);
  v353[9] = v8;
  v9 = *(v2 + 6936);
  v353[10] = *(v2 + 6920);
  v353[11] = v9;
  v10 = *(v2 + 6840);
  v353[4] = *(v2 + 6824);
  v353[5] = v10;
  v11 = *(v2 + 6872);
  v353[6] = *(v2 + 6856);
  v353[7] = v11;
  v12 = *(v2 + 6776);
  v353[0] = *(v2 + 6760);
  v353[1] = v12;
  v13 = *(v2 + 6808);
  v353[2] = *(v2 + 6792);
  v353[3] = v13;
  v335 = *(v2 + 6952);
  v14 = (*(*v2 + 184))(v2);
  v15 = *(this + 32);
  if (v14)
  {
    v16 = *(v15 + 2756) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 33);
  v18 = v5 + 2224 * v3;
  v19 = *(v15 + 2675);
  v20 = *(v15 + 2674);
  if (!(v19 | v20))
  {
    goto LABEL_44;
  }

  v21 = *(v18 + 6);
  if (v21 <= *(v18 + 7))
  {
    LOWORD(v21) = *(v18 + 7);
  }

  v22 = (v21 + 9) & 0x1FE;
  if (v22 == 8)
  {
    v24 = v7;
    v28 = 1;
    v26 = 8;
    if (!*(v15 + 2675))
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v23 = *(v15 + 2672);
  v24 = v7;
  if (v22 != 12)
  {
    if (v22 == 10)
    {
      v25 = v23 == 0;
      if (v23)
      {
        v26 = 10;
      }

      else
      {
        v26 = 9;
      }

      v27 = 2;
      goto LABEL_18;
    }

    v26 = 27;
    v28 = 27;
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (*(v18 + 4) && (v19 == 2 && v26 == 8 || v19 == 3 && (v26 - 9) <= 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v26;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v19;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v25 = v23 == 0;
  if (v23)
  {
    v26 = 12;
  }

  else
  {
    v26 = 11;
  }

  v27 = 4;
LABEL_18:
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v19)
  {
    goto LABEL_26;
  }

LABEL_33:
  v7 = v24;
  if (v20 && (v20 == 3 && v28 - 9 < 2 || v28 <= 0x1A && ((1 << v28) & 0x4C00000) != 0 && v20 <= 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "populatePictureRegisters";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v28;
    WORD1(buf[2]) = 1024;
    HIDWORD(buf[2]) = v20;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
LABEL_41:
    v31 = buf;
    v32 = 24;
    goto LABEL_42;
  }

LABEL_44:
  v34 = *(this + 2961) * v338;
  v35 = (v6 + 604 * v4);
  *(v17 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v36 = 766517248;
  }

  else
  {
    v36 = 766509056;
  }

  if (v16)
  {
    v37 = 688;
  }

  else
  {
    v37 = 672;
  }

  if (v337)
  {
    v38 = 4160;
  }

  else
  {
    v38 = 64;
  }

  v39 = v38 & 0xFFFFFFF0 | ((v337 == 1) << 10) | v37 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v36;
  *(v17 + 52) = v39;
  v40 = *(this + 32);
  v41 = v39 | ((v40[2652] & 1) << 19);
  *(v17 + 52) = v41;
  v42 = v41 & 0xFFFBFFFF | ((v40[2653] & 1) << 18);
  *(v17 + 52) = v42;
  *(v17 + 52) = v42 & 0xFFFDFFFF | ((v40[2654] & 1) << 17);
  *(v17 + 56) = 0x1000000;
  LODWORD(v40) = (16 * (*(v18 + 1558) & 0xFFF)) | 0xF;
  *(v17 + 60) = v40;
  v43 = v40 | (*(v18 + 1560) << 20) | 0xF0000;
  *(v17 + 64) = 0;
  *(v17 + 60) = v43;
  v44 = (*(v18 + 8) & 1) << 18;
  *(v17 + 68) = v44;
  v45 = v44 & 0xFFF7FFFF | ((v35[93] & 1) << 19);
  *(v17 + 68) = v45;
  v46 = v45 & 0xFFEFFFFF | ((v35[3] & 1) << 20);
  *(v17 + 68) = v46;
  *(v17 + 68) = v46 | ((**(*(this + 32) + 3200) != 5) << 21);
  LODWORD(v40) = *(v17 + 72) & 0xFFFFFC1F | (32 * (v35[91] & 0x1F));
  *(v17 + 72) = v40;
  *(v17 + 72) = v40 & 0xFFFFFFE0 | v35[601] & 0x1F;
  if (v35[96])
  {
    if (*(v18 + 4) == 3)
    {
      v47 = 12;
    }

    else
    {
      v47 = 8;
    }

    v48 = *(this + 33);
    CAHDecCatnipAvc::AvcPicScalingListFallBack(v14, v18, v35);
    CAHDecCatnipAvc::copyScalingList(v49, (v17 + 76), v48 + 1476, (v35 + 109), (v35 + 121), (v35 + 217), v47);
  }

  v50 = 0;
  *(v17 + 80) = *(this + 2966);
  *(v17 + 84) = *(this + 2967);
  *(v17 + 88) = 3145786;
  v51 = this + 9008;
  do
  {
    *(*(this + 33) + v50 + 92) = 0;
    v52 = *(this + 33) + v50;
    v53 = *(v52 + 92);
    *(v52 + 92) = 0;
    *(*(this + 33) + v50 + 92) ^= 0xFFFFFF00;
    v54 = *(this + 33) + v50;
    v55 = *(v54 + 92);
    *(v54 + 92) = v53;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 92, 0, 0xFFFFFFFFLL, 8, v55, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v50 + 120) = 0;
    *(*(this + 33) + v50 + 120) = *(*(this + 33) + v50 + 120) & 0x800001FF | (((*(this + 2960) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v50 + 540) = 0;
    v56 = *(this + 33) + v50;
    v57 = *(v56 + 540);
    *(v56 + 540) = 0;
    *(*(this + 33) + v50 + 540) ^= 0x3FFu;
    v58 = *(this + 33) + v50;
    v59 = *(v58 + 540);
    *(v58 + 540) = v57;
    if (*v51 || *(v51 + 38) || *(v51 + 39))
    {
      result = CAHDec::addToPatcherList(this, v51, v50 + 540, 0, 0x3FFFFFFFFFFLL, 32, v59, 4);
      if (result)
      {
        return result;
      }
    }

    v50 += 4;
    v51 += 176;
  }

  while (v50 != 28);
  *(*(this + 33) + 148) = 0;
  *(*(this + 33) + 568) = 0;
  if ((*(v17 + 54) & 8) == 0)
  {
    goto LABEL_356;
  }

  v60 = *(this + 33);
  v61 = *(*(this + 32) + 2680);
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v343 = 0u;
  memset(buf, 0, sizeof(buf));
  v62 = (*(v60 + 16) & 0xF) << 9;
  buf[0] = v61;
  v63 = *(v60 + 148);
  *(v60 + 148) = 0;
  *(*(this + 33) + 148) ^= 0xFFFFFF00;
  v64 = *(this + 33);
  v65 = *(v64 + 148);
  *(v64 + 148) = v63;
  if (v61 || (v66 = DWORD2(v350), *(&v350 + 1)))
  {
    result = CAHDec::addToPatcherList(this, buf, 148, v62, 0xFFFFFFFFLL, 8, v65, 4);
    if (result)
    {
      return result;
    }

    if (buf[0])
    {
      v67 = 0;
    }

    else
    {
      v67 = DWORD2(v350) == 0;
    }

    v66 = !v67 || HIDWORD(v350) != 0;
  }

  v69 = *(this + 33);
  v70 = *(v69 + 568);
  *(v69 + 568) = 0;
  *(*(this + 33) + 568) ^= 0x3FFu;
  v71 = *(this + 33);
  v72 = *(v71 + 568);
  *(v71 + 568) = v70;
  if (!v66 || (result = CAHDec::addToPatcherList(this, buf, 568, v62, 0x3FFFFFFFFFFLL, 32, v72, 4), !result))
  {
LABEL_356:
    if ((*(*(this + 33) + 152) = 0, v73 = *(this + 33), v74 = *(v73 + 152), *(v73 + 152) = 0, *(*(this + 33) + 152) ^= 0xFFFFFF00, v75 = *(this + 33), v76 = *(v75 + 152), *(v75 + 152) = v74, !*(this + 1302)) && !*(this + 2642) && !*(this + 2643) || (result = CAHDec::addToPatcherList(this, this + 1302, 152, 0, 0xFFFFFFFFLL, 8, v76, 4), !result))
    {
      if ((*(*(this + 33) + 572) = 0, v77 = *(this + 33), v78 = *(v77 + 572), *(v77 + 572) = 0, *(*(this + 33) + 572) ^= 0x3FFu, v79 = *(this + 33), v80 = *(v79 + 572), *(v79 + 572) = v78, !*(this + 1302)) && !*(this + 2642) && !*(this + 2643) || (result = CAHDec::addToPatcherList(this, this + 1302, 572, 0, 0x3FFFFFFFFFFLL, 32, v80, 4), !result))
      {
        if ((*(*(this + 33) + 156) = 0, v81 = *(this + 33), v82 = *(v81 + 156), *(v81 + 156) = 0, *(*(this + 33) + 156) ^= 0xFFFFFF00, v83 = *(this + 33), v84 = *(v83 + 156), *(v83 + 156) = v82, !*(this + 1324)) && !*(this + 2686) && !*(this + 2687) || (result = CAHDec::addToPatcherList(this, this + 1324, 156, 0, 0xFFFFFFFFLL, 8, v84, 4), !result))
        {
          if ((*(*(this + 33) + 576) = 0, v85 = *(this + 33), v86 = *(v85 + 576), *(v85 + 576) = 0, *(*(this + 33) + 576) ^= 0x3FFu, v87 = *(this + 33), v88 = *(v87 + 576), *(v87 + 576) = v86, !*(this + 1324)) && !*(this + 2686) && !*(this + 2687) || (result = CAHDec::addToPatcherList(this, this + 1324, 576, 0, 0x3FFFFFFFFFFLL, 32, v88, 4), !result))
          {
            if ((*(*(this + 33) + 160) = 0, v89 = *(this + 33), v90 = *(v89 + 160), *(v89 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFF00, v91 = *(this + 33), v92 = *(v91 + 160), *(v91 + 160) = v90, !*(this + 1346)) && !*(this + 2730) && !*(this + 2731) || (result = CAHDec::addToPatcherList(this, this + 1346, 160, 0, 0xFFFFFFFFLL, 8, v92, 4), !result))
            {
              if ((*(*(this + 33) + 580) = 0, v93 = *(this + 33), v94 = *(v93 + 580), *(v93 + 580) = 0, *(*(this + 33) + 580) ^= 0x3FFu, v95 = *(this + 33), v96 = *(v95 + 580), *(v95 + 580) = v94, !*(this + 1346)) && !*(this + 2730) && !*(this + 2731) || (result = CAHDec::addToPatcherList(this, this + 1346, 580, 0, 0x3FFFFFFFFFFLL, 32, v96, 4), !result))
              {
                if ((*(*(this + 33) + 164) = 0, v97 = *(this + 33), v98 = *(v97 + 164), *(v97 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFF00, v99 = *(this + 33), v100 = *(v99 + 164), *(v99 + 164) = v98, !*(this + 1368)) && !*(this + 2774) && !*(this + 2775) || (result = CAHDec::addToPatcherList(this, this + 1368, 164, 0, 0xFFFFFFFFLL, 8, v100, 4), !result))
                {
                  if ((*(*(this + 33) + 584) = 0, v101 = *(this + 33), v102 = *(v101 + 584), *(v101 + 584) = 0, *(*(this + 33) + 584) ^= 0x3FFu, v103 = *(this + 33), v104 = *(v103 + 584), *(v103 + 584) = v102, !*(this + 1368)) && !*(this + 2774) && !*(this + 2775) || (result = CAHDec::addToPatcherList(this, this + 1368, 584, 0, 0x3FFFFFFFFFFLL, 32, v104, 4), !result))
                  {
                    if ((*(*(this + 33) + 168) = 0, v105 = *(this + 33), v106 = *(v105 + 168), *(v105 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFF00, v107 = *(this + 33), v108 = *(v107 + 168), *(v107 + 168) = v106, !*(this + 1390)) && !*(this + 2818) && !*(this + 2819) || (result = CAHDec::addToPatcherList(this, this + 1390, 168, 0, 0xFFFFFFFFLL, 8, v108, 4), !result))
                    {
                      if ((*(*(this + 33) + 588) = 0, v109 = *(this + 33), v110 = *(v109 + 588), *(v109 + 588) = 0, *(*(this + 33) + 588) ^= 0x3FFu, v111 = *(this + 33), v112 = *(v111 + 588), *(v111 + 588) = v110, !*(this + 1390)) && !*(this + 2818) && !*(this + 2819) || (result = CAHDec::addToPatcherList(this, this + 1390, 588, 0, 0x3FFFFFFFFFFLL, 32, v112, 4), !result))
                      {
                        if ((*(*(this + 33) + 172) = 0, v113 = *(this + 33), v114 = *(v113 + 172), *(v113 + 172) = 0, *(*(this + 33) + 172) ^= 0xFFFFFF00, v115 = *(this + 33), v116 = *(v115 + 172), *(v115 + 172) = v114, !*(this + 1412)) && !*(this + 2862) && !*(this + 2863) || (result = CAHDec::addToPatcherList(this, this + 1412, 172, 0, 0xFFFFFFFFLL, 8, v116, 4), !result))
                        {
                          if ((*(*(this + 33) + 592) = 0, v117 = *(this + 33), v118 = *(v117 + 592), *(v117 + 592) = 0, *(*(this + 33) + 592) ^= 0x3FFu, v119 = *(this + 33), v120 = *(v119 + 592), *(v119 + 592) = v118, !*(this + 1412)) && !*(this + 2862) && !*(this + 2863) || (result = CAHDec::addToPatcherList(this, this + 1412, 592, 0, 0x3FFFFFFFFFFLL, 32, v120, 4), !result))
                          {
                            if ((*(*(this + 33) + 176) = 0, *(*(this + 33) + 596) = 0, *(*(this + 33) + 180) = 0, v121 = *(this + 33), v122 = *(v121 + 180), *(v121 + 180) = 0, *(*(this + 33) + 180) ^= 0xFFFFFF00, v123 = *(this + 33), v124 = *(v123 + 180), *(v123 + 180) = v122, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 180, 0, 0xFFFFFFFFLL, 8, v124, 4), !result))
                            {
                              if ((*(*(this + 33) + 600) = 0, v125 = *(this + 33), v126 = *(v125 + 600), *(v125 + 600) = 0, *(*(this + 33) + 600) ^= 0x3FFu, v127 = *(this + 33), v128 = *(v127 + 600), *(v127 + 600) = v126, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 600, 0, 0x3FFFFFFFFFFLL, 32, v128, 4), !result))
                              {
                                if ((*(*(this + 33) + 184) = 0, v129 = *(this + 33), v130 = *(v129 + 184), *(v129 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFF00, v131 = *(this + 33), v132 = *(v131 + 184), *(v131 + 184) = v130, !*(this + 1456)) && !*(this + 2950) && !*(this + 2951) || (result = CAHDec::addToPatcherList(this, this + 1456, 184, v34, 0xFFFFFFFFLL, 8, v132, 4), !result))
                                {
                                  if ((*(*(this + 33) + 604) = 0, v133 = *(this + 33), v134 = *(v133 + 604), *(v133 + 604) = 0, *(*(this + 33) + 604) ^= 0x3FFu, v135 = *(this + 33), v136 = *(v135 + 604), *(v135 + 604) = v134, !*(this + 1456)) && !*(this + 2950) && !*(this + 2951) || (result = CAHDec::addToPatcherList(this, this + 1456, 604, v34, 0x3FFFFFFFFFFLL, 32, v136, 4), !result))
                                  {
                                    if ((*(*(this + 33) + 188) = 0, v137 = *(this + 33), v138 = *(v137 + 188), *(v137 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v139 = *(this + 33), v140 = *(v139 + 188), *(v139 + 188) = v138, v142 = this + 176 * v338 + 560, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v338 + 70, 188, 0, 0xFFFFFFFFLL, 7, v140, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 608) = 0, v143 = *(this + 33), v144 = *(v143 + 608), *(v143 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v145 = *(this + 33), v146 = *(v145 + 608), *(v145 + 608) = v144, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, v142, 608, 0, 0x3FFFFFFFFFFLL, 32, v146, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 192) = 0, v147 = *(this + 33), v148 = *(v147 + 192), *(v147 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v149 = *(this + 33), v150 = *(v149 + 192), *(v149 + 192) = v148, v151 = (v333 + 8), !*(v333 + 8)) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, (v333 + 8), 192, *(v333 + 60), 0xFFFFFFFFLL, 7, v150, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 612) = 0, v152 = *(this + 33), v153 = *(v152 + 612), *(v152 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v154 = *(this + 33), v155 = *(v154 + 612), *(v154 + 612) = v153, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v155, 4), !result))
                                          {
                                            if ((*(*(this + 33) + 196) = 0, v156 = *(this + 33), v157 = *(v156 + 196), *(v156 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v158 = *(this + 33), v159 = *(v158 + 196), *(v158 + 196) = v157, v160 = this + 176 * v338 + 4784, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v338 + 598, 196, 0, 0xFFFFFFFFLL, 7, v159, 4), !result))
                                            {
                                              if ((*(*(this + 33) + 616) = 0, v161 = *(this + 33), v162 = *(v161 + 616), *(v161 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v163 = *(this + 33), v164 = *(v163 + 616), *(v163 + 616) = v162, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, v160, 616, 0, 0x3FFFFFFFFFFLL, 32, v164, 4), !result))
                                              {
                                                if ((*(*(this + 33) + 200) = 0, v165 = *(this + 33), v166 = *(v165 + 200), *(v165 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v167 = *(this + 33), v168 = *(v167 + 200), *(v167 + 200) = v166, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v333 + 64), 0xFFFFFFFFLL, 7, v168, 4), !result))
                                                {
                                                  if ((*(*(this + 33) + 620) = 0, v169 = *(this + 33), v170 = *(v169 + 620), *(v169 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v171 = *(this + 33), v172 = *(v171 + 620), *(v171 + 620) = v170, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v172, 4), !result))
                                                  {
                                                    if (*(*(this + 32) + 2648) != 1 || ((v173 = *(this + 33), v174 = *(v173 + 192), *(v173 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v175 = *(this + 33), v176 = *(v175 + 192), *(v175 + 192) = v174, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 192, *(v333 + 60), 0xFFFFFFFFLL, 7, v176, 4), !result)) && ((v177 = *(this + 33), v178 = *(v177 + 612), *(v177 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v179 = *(this + 33), v180 = *(v179 + 612), *(v179 + 612) = v178, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v333 + 60), 0x3FFFFFFFFFFLL, 32, v180, 4), !result)) && ((v181 = *(this + 33), v182 = *(v181 + 200), *(v181 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v183 = *(this + 33), v184 = *(v183 + 200), *(v183 + 200) = v182, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v333 + 64), 0xFFFFFFFFLL, 7, v184, 4), !result)) && ((v185 = *(this + 33), v186 = *(v185 + 620), *(v185 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v187 = *(this + 33), v188 = *(v187 + 620), *(v187 + 620) = v186, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v333 + 64), 0x3FFFFFFFFFFLL, 32, v188, 4), !result)) && ((v189 = *(this + 33), v190 = *(v189 + 188), *(v189 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v191 = *(this + 33), v192 = *(v191 + 188), *(v191 + 188) = v190, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 188, *(v333 + 72), 0xFFFFFFFFLL, 7, v192, 4), !result)) && ((v193 = *(this + 33), v194 = *(v193 + 608), *(v193 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v195 = *(this + 33), v196 = *(v195 + 608), *(v195 + 608) = v194, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 608, *(v333 + 72), 0x3FFFFFFFFFFLL, 32, v196, 4), !result)) && ((v197 = *(this + 33), v198 = *(v197 + 196), *(v197 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v199 = *(this + 33), v200 = *(v199 + 196), *(v199 + 196) = v198, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 196, *(v333 + 76), 0xFFFFFFFFLL, 7, v200, 4), !result)) && ((v201 = *(this + 33), v202 = *(v201 + 616), *(v201 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v203 = *(this + 33), v204 = *(v203 + 616), *(v203 + 616) = v202, !*v151) && !*(v333 + 160) && !*(v333 + 164) || (result = CAHDec::addToPatcherList(this, v151, 616, *(v333 + 76), 0x3FFFFFFFFFFLL, 32, v204, 4), !result)))
                                                    {
                                                      v205 = this + 4 * v338;
                                                      if (*(v17 + 52) & 0x2000 | v335)
                                                      {
                                                        *(v205 + 116) = 0;
                                                        *(*(this + 33) + 204) = 0;
                                                        if (v335)
                                                        {
                                                          v339 = 0;
                                                          if (v16)
                                                          {
                                                            v206 = 0x2000000;
                                                          }

                                                          else
                                                          {
                                                            v206 = 0;
                                                          }

                                                          v334 = v206;
                                                          do
                                                          {
                                                            v207 = *(v353 + v339);
                                                            v208 = *(v207 + 32);
                                                            *(*(this + 33) + 4 * v339 + 204) = 0;
                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFFFFFFF | ((v335 << 28) - 0x10000000);
                                                            *(*(this + 33) + 4 * v339 + 204) &= 0xF3FFFFFF;
                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFDFFFFFF | v334;
                                                            *(*(this + 33) + 4 * v339 + 204) |= 0x1000000u;
                                                            v209 = v336 - *(v207 + 12);
                                                            v210 = v209 & 0x1FFFF;
                                                            if (v209 < -32768)
                                                            {
                                                              v210 = 98304;
                                                            }

                                                            if (v209 < 0x8000)
                                                            {
                                                              v211 = v210;
                                                            }

                                                            else
                                                            {
                                                              v211 = 0x7FFF;
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFFFE0000 | v211;
                                                            *(*(this + 33) + 4 * v339 + 204) = *(*(this + 33) + 4 * v339 + 204) & 0xFFFDFFFF | ((*(v207 + 1) & 1) << 17);
                                                            v212 = *(this + 32);
                                                            if (*(v207 + 28) == 1)
                                                            {
                                                              v351 = 0u;
                                                              v352 = 0u;
                                                              v349 = 0u;
                                                              v350 = 0u;
                                                              v347 = 0u;
                                                              v348 = 0u;
                                                              v345 = 0u;
                                                              v346 = 0u;
                                                              v343 = 0u;
                                                              v344 = 0u;
                                                              memset(buf, 0, sizeof(buf));
                                                              DPB = AVC_RLM::getDPB(*(v212 + 2992), buf);
                                                              if (DPB < 1)
                                                              {
                                                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                v340 = 136315138;
                                                                v341 = "populatePictureRegisters";
                                                                v29 = MEMORY[0x277D86220];
                                                                v30 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                                              }

                                                              else
                                                              {
                                                                v214 = DPB;
                                                                while (v214 >= 1)
                                                                {
                                                                  v207 = buf[--v214];
                                                                  if (!*(v207 + 28))
                                                                  {
                                                                    v208 = *(v207 + 32);
                                                                    v212 = *(this + 32);
                                                                    *(v212 + 2702) = 1;
                                                                    goto LABEL_231;
                                                                  }
                                                                }

                                                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                v340 = 136315138;
                                                                v341 = "populatePictureRegisters";
                                                                v29 = MEMORY[0x277D86220];
                                                                v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                                              }

                                                              v31 = &v340;
                                                              v32 = 12;
                                                              goto LABEL_42;
                                                            }

LABEL_231:
                                                            if ((*(*v212 + 184))(v212))
                                                            {
                                                              v215 = *(this + 32);
                                                              if (*(v215 + 2756))
                                                              {
                                                                buf[0] = 0;
                                                                if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v215, v208, *(v207 + 56), *(v207 + 64), buf) & 1) == 0)
                                                                {
                                                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                  {
                                                                    LOWORD(v340) = 0;
                                                                    v29 = MEMORY[0x277D86220];
                                                                    v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                                                    v31 = &v340;
                                                                    v32 = 2;
LABEL_42:
                                                                    _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v31, v32);
                                                                  }

                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                *(v207 + 40) = buf[0] + 8;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 268) = 0;
                                                            v216 = 4 * v339;
                                                            v217 = *(this + 33) + 4 * v339;
                                                            v218 = *(v217 + 268);
                                                            *(v217 + 268) = 0;
                                                            *(*(this + 33) + 4 * v339 + 268) ^= 0xFFFFFF80;
                                                            v219 = *(this + 33) + 4 * v339;
                                                            v220 = *(v219 + 268);
                                                            *(v219 + 268) = v218;
                                                            v141 = this + 560;
                                                            v221 = this + 176 * v208 + 560;
                                                            if (*v221 || *(v221 + 38) || *(v221 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, &v141[176 * v208], v216 + 268, 0, 0xFFFFFFFFLL, 7, v220, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 624) = 0;
                                                            v222 = *(this + 33) + 4 * v339;
                                                            v223 = *(v222 + 624);
                                                            *(v222 + 624) = 0;
                                                            *(*(this + 33) + 4 * v339 + 624) ^= 0x3FFu;
                                                            v224 = *(this + 33) + 4 * v339;
                                                            v225 = *(v224 + 624);
                                                            *(v224 + 624) = v223;
                                                            if (*v221 || *(v221 + 38) || *(v221 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, &v141[176 * v208], v216 + 624, 0, 0x3FFFFFFFFFFLL, 32, v225, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 332) = 0;
                                                            v226 = *(this + 33) + 4 * v339;
                                                            v227 = *(v226 + 332);
                                                            *(v226 + 332) = 0;
                                                            *(*(this + 33) + 4 * v339 + 332) ^= 0xFFFFFF80;
                                                            v228 = *(this + 33) + 4 * v339;
                                                            v229 = *(v228 + 332);
                                                            *(v228 + 332) = v227;
                                                            v230 = *(v207 + 40);
                                                            if (*v230 || *(v230 + 152) || *(v230 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v230, v216 + 332, *(v230 + 52), 0xFFFFFFFFLL, 7, v229, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 688) = 0;
                                                            v231 = *(this + 33) + 4 * v339;
                                                            v232 = *(v231 + 688);
                                                            *(v231 + 688) = 0;
                                                            *(*(this + 33) + 4 * v339 + 688) ^= 0x3FFu;
                                                            v233 = *(this + 33) + 4 * v339;
                                                            v234 = *(v233 + 688);
                                                            *(v233 + 688) = v232;
                                                            v235 = *(v207 + 40);
                                                            if (*v235 || *(v235 + 152) || *(v235 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v235, v216 + 688, *(v235 + 52), 0x3FFFFFFFFFFLL, 32, v234, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 396) = 0;
                                                            v236 = *(this + 33) + 4 * v339;
                                                            v237 = *(v236 + 396);
                                                            *(v236 + 396) = 0;
                                                            *(*(this + 33) + 4 * v339 + 396) ^= 0xFFFFFF80;
                                                            v238 = *(this + 33) + 4 * v339;
                                                            v239 = *(v238 + 396);
                                                            *(v238 + 396) = v237;
                                                            v240 = this + 176 * v208 + 4784;
                                                            if (*v240 || *(v240 + 38) || *(v240 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v240, v216 + 396, 0, 0xFFFFFFFFLL, 7, v239, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 752) = 0;
                                                            v241 = *(this + 33) + 4 * v339;
                                                            v242 = *(v241 + 752);
                                                            *(v241 + 752) = 0;
                                                            *(*(this + 33) + 4 * v339 + 752) ^= 0x3FFu;
                                                            v243 = *(this + 33) + 4 * v339;
                                                            v244 = *(v243 + 752);
                                                            *(v243 + 752) = v242;
                                                            if (*v240 || *(v240 + 38) || *(v240 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v240, v216 + 752, 0, 0x3FFFFFFFFFFLL, 32, v244, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 460) = 0;
                                                            v245 = *(this + 33) + 4 * v339;
                                                            v246 = *(v245 + 460);
                                                            *(v245 + 460) = 0;
                                                            *(*(this + 33) + 4 * v339 + 460) ^= 0xFFFFFF80;
                                                            v247 = *(this + 33) + 4 * v339;
                                                            v248 = *(v247 + 460);
                                                            *(v247 + 460) = v246;
                                                            v249 = *(v207 + 40);
                                                            if (*v249 || *(v249 + 152) || *(v249 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v249, v216 + 460, *(v249 + 56), 0xFFFFFFFFLL, 7, v248, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v339 + 816) = 0;
                                                            v250 = *(this + 33) + 4 * v339;
                                                            v251 = *(v250 + 816);
                                                            *(v250 + 816) = 0;
                                                            *(*(this + 33) + 4 * v339 + 816) ^= 0x3FFu;
                                                            v252 = *(this + 33) + 4 * v339;
                                                            v253 = *(v252 + 816);
                                                            *(v252 + 816) = v251;
                                                            v254 = *(v207 + 40);
                                                            if (*v254 || *(v254 + 152) || *(v254 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v254, v216 + 816, *(v254 + 56), 0x3FFFFFFFFFFLL, 32, v253, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            if (*(*(this + 32) + 2648) == 1)
                                                            {
                                                              v255 = *(this + 33) + 4 * v339;
                                                              v256 = *(v255 + 332);
                                                              *(v255 + 332) = 0;
                                                              *(*(this + 33) + 4 * v339 + 332) ^= 0xFFFFFF80;
                                                              v257 = *(this + 33) + 4 * v339;
                                                              v258 = *(v257 + 332);
                                                              *(v257 + 332) = v256;
                                                              v259 = *(v207 + 40);
                                                              if (*v259 || *(v259 + 152) || *(v259 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v259, v216 + 332, *(v259 + 52), 0xFFFFFFFFLL, 7, v258, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v260 = *(this + 33) + 4 * v339;
                                                              v261 = *(v260 + 688);
                                                              *(v260 + 688) = 0;
                                                              *(*(this + 33) + 4 * v339 + 688) ^= 0x3FFu;
                                                              v262 = *(this + 33) + 4 * v339;
                                                              v263 = *(v262 + 688);
                                                              *(v262 + 688) = v261;
                                                              v264 = *(v207 + 40);
                                                              if (*v264 || *(v264 + 152) || *(v264 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v264, v216 + 688, *(v264 + 52), 0x3FFFFFFFFFFLL, 32, v263, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v265 = *(this + 33) + 4 * v339;
                                                              v266 = *(v265 + 460);
                                                              *(v265 + 460) = 0;
                                                              *(*(this + 33) + 4 * v339 + 460) ^= 0xFFFFFF80;
                                                              v267 = *(this + 33) + 4 * v339;
                                                              v268 = *(v267 + 460);
                                                              *(v267 + 460) = v266;
                                                              v269 = *(v207 + 40);
                                                              if (*v269 || *(v269 + 152) || *(v269 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v269, v216 + 460, *(v269 + 56), 0xFFFFFFFFLL, 7, v268, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v270 = *(this + 33) + 4 * v339;
                                                              v271 = *(v270 + 816);
                                                              *(v270 + 816) = 0;
                                                              *(*(this + 33) + 4 * v339 + 816) ^= 0x3FFu;
                                                              v272 = *(this + 33) + 4 * v339;
                                                              v273 = *(v272 + 816);
                                                              *(v272 + 816) = v271;
                                                              v274 = *(v207 + 40);
                                                              if (*v274 || *(v274 + 152) || *(v274 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v274, v216 + 816, *(v274 + 56), 0x3FFFFFFFFFFLL, 32, v273, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v275 = *(this + 33) + 4 * v339;
                                                              v276 = *(v275 + 268);
                                                              *(v275 + 268) = 0;
                                                              *(*(this + 33) + 4 * v339 + 268) ^= 0xFFFFFF80;
                                                              v277 = *(this + 33) + 4 * v339;
                                                              v278 = *(v277 + 268);
                                                              *(v277 + 268) = v276;
                                                              v279 = *(v207 + 40);
                                                              if (*v279 || *(v279 + 152) || *(v279 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v279, v216 + 268, *(v279 + 64), 0xFFFFFFFFLL, 7, v278, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v280 = *(this + 33) + 4 * v339;
                                                              v281 = *(v280 + 624);
                                                              *(v280 + 624) = 0;
                                                              *(*(this + 33) + 4 * v339 + 624) ^= 0x3FFu;
                                                              v282 = *(this + 33) + 4 * v339;
                                                              v283 = *(v282 + 624);
                                                              *(v282 + 624) = v281;
                                                              v284 = *(v207 + 40);
                                                              if (*v284 || *(v284 + 152) || *(v284 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v284, v216 + 624, *(v284 + 64), 0x3FFFFFFFFFFLL, 32, v283, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v285 = *(this + 33) + 4 * v339;
                                                              v286 = *(v285 + 396);
                                                              *(v285 + 396) = 0;
                                                              *(*(this + 33) + 4 * v339 + 396) ^= 0xFFFFFF80;
                                                              v287 = *(this + 33) + 4 * v339;
                                                              v288 = *(v287 + 396);
                                                              *(v287 + 396) = v286;
                                                              v289 = *(v207 + 40);
                                                              if (*v289 || *(v289 + 152) || *(v289 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v289, v216 + 396, *(v289 + 68), 0xFFFFFFFFLL, 7, v288, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v290 = *(this + 33) + 4 * v339;
                                                              v291 = *(v290 + 752);
                                                              *(v290 + 752) = 0;
                                                              *(*(this + 33) + 4 * v339 + 752) ^= 0x3FFu;
                                                              v292 = *(this + 33) + 4 * v339;
                                                              v293 = *(v292 + 752);
                                                              *(v292 + 752) = v291;
                                                              v294 = *(v207 + 40);
                                                              if (*v294 || *(v294 + 152) || *(v294 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v294, v216 + 752, *(v294 + 68), 0x3FFFFFFFFFFLL, 32, v293, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }
                                                            }

                                                            ++v339;
                                                          }

                                                          while (v339 != v335);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        *(v17 + 52) |= 0x2000u;
                                                        *(v205 + 116) = 1;
                                                        *(*(this + 33) + 204) = 0;
                                                      }

                                                      *(*(this + 33) + 524) = 0;
                                                      *(*(this + 33) + 880) = 0;
                                                      *(*(this + 33) + 528) = 0;
                                                      *(*(this + 33) + 884) = 0;
                                                      *(*(this + 33) + 532) = 0;
                                                      *(*(this + 33) + 536) = 0;
                                                      if (v337)
                                                      {
                                                        v295 = *(this + 32);
                                                        v296 = *(v295 + 2892);
                                                        if (*(v295 + 2892))
                                                        {
                                                          v297 = *(v295 + 2904);
                                                          v296 = *(v295 + 2908);
                                                        }

                                                        else
                                                        {
                                                          v297 = 0;
                                                        }

                                                        v298 = *(v295 + 3544);
                                                        v299 = *(v298 + 52);
                                                        v300 = v299 + v297;
                                                        if (__CFADD__(v299, v297))
                                                        {
                                                          v301 = 1;
                                                        }

                                                        else
                                                        {
                                                          v302 = *(v298 + 56);
                                                          v303 = v302 + v296;
                                                          if (!__CFADD__(v302, v296))
                                                          {
                                                            v304 = *(this + 33);
                                                            v305 = *(v304 + 524);
                                                            *(v304 + 524) = 0;
                                                            *(*(this + 33) + 524) ^= 0xFFFFFFC0;
                                                            v306 = *(this + 33);
                                                            v307 = *(v306 + 524);
                                                            *(v306 + 524) = v305;
                                                            v308 = *(*(this + 32) + 3544);
                                                            if (*v308 || *(v308 + 152) || *(v308 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v308, 524, v300, 0xFFFFFFFFLL, 6, v307, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v309 = *(this + 33);
                                                            v310 = *(v309 + 880);
                                                            *(v309 + 880) = 0;
                                                            *(*(this + 33) + 880) ^= 0x3FFu;
                                                            v311 = *(this + 33);
                                                            v312 = *(v311 + 880);
                                                            *(v311 + 880) = v310;
                                                            v313 = *(*(this + 32) + 3544);
                                                            if (*v313 || *(v313 + 152) || *(v313 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v313, 880, v300, 0x3FFFFFFFFFFLL, 32, v312, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v314 = *(this + 33);
                                                            v315 = *(v314 + 528);
                                                            *(v314 + 528) = 0;
                                                            *(*(this + 33) + 528) ^= 0xFFFFFFC0;
                                                            v316 = *(this + 33);
                                                            v317 = *(v316 + 528);
                                                            *(v316 + 528) = v315;
                                                            v318 = *(*(this + 32) + 3544);
                                                            if (*v318 || *(v318 + 152) || *(v318 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v318, 528, v303, 0xFFFFFFFFLL, 6, v317, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v319 = *(this + 33);
                                                            v320 = *(v319 + 884);
                                                            *(v319 + 884) = 0;
                                                            *(*(this + 33) + 884) ^= 0x3FFu;
                                                            v321 = *(this + 33);
                                                            v322 = *(v321 + 884);
                                                            *(v321 + 884) = v320;
                                                            v323 = *(*(this + 32) + 3544);
                                                            if (*v323 || *(v323 + 152) || *(v323 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v323, 884, v303, 0x3FFFFFFFFFFLL, 32, v322, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            if (v7)
                                                            {
                                                              *(*(this + 33) + 532) = *(*(this + 33) + 532) & 0xFFFC003F | (((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF) << 6);
                                                              v324 = (*(*(this + 32) + 3544) + 80);
                                                            }

                                                            else
                                                            {
                                                              if (CAHDecTansyAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
                                                              {
                                                                return 0xFFFFFFFFLL;
                                                              }

                                                              *(*(this + 33) + 532) = *(*(this + 33) + 532) & 0xFFFC003F | (((*(this + 2964) >> 6) & 0xFFF) << 6);
                                                              v324 = (this + 11860);
                                                            }

                                                            *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFF8003F | (((*v324 >> 6) & 0x1FFF) << 6);
                                                            goto LABEL_341;
                                                          }

                                                          v301 = 2;
                                                        }

                                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          LODWORD(buf[0]) = 136315394;
                                                          *(buf + 4) = "populatePictureRegisters";
                                                          WORD2(buf[1]) = 1024;
                                                          *(&buf[1] + 6) = v301;
                                                          v29 = MEMORY[0x277D86220];
                                                          v30 = "AppleAVD: %s(): failKind = %d";
                                                          v31 = buf;
                                                          v32 = 18;
                                                          goto LABEL_42;
                                                        }

                                                        return 0xFFFFFFFFLL;
                                                      }

LABEL_341:
                                                      v325 = *(this + 32);
                                                      if (*(v325 + 2360) != 1)
                                                      {
                                                        return 0;
                                                      }

                                                      v326 = *(this + 33);
                                                      *(v326 + 984) = *(v326 + 984) & 0xFFFFFFFE | *(v325 + 2508) & 1;
                                                      if (*(v325 + 2508))
                                                      {
                                                        *(v326 + 1960) = 0x10000000;
                                                        *(v326 + 1964) = *(v325 + 2368);
                                                        *(v326 + 1976) = 0;
                                                        *(v326 + 1968) = 0;
                                                        *(v326 + 1980) = *(v325 + 2372);
                                                        v327 = *(v325 + 2404);
                                                        *(v326 + 1996) = *(v325 + 2388);
                                                        *(v326 + 2012) = v327;
                                                      }

                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFFD | (2 * (*(v325 + 2512) & 1));
                                                      if (*(v325 + 2512))
                                                      {
                                                        *(v326 + 2028) = 0;
                                                        v328 = *(v325 + 2424);
                                                        *(v326 + 2028) = (*(v325 + 2424) & 1) << 22;
                                                        v329 = ((*(v325 + 2420) & 1) << 23) | ((v328 & 1) << 22) | 0x20000000;
                                                        *(v326 + 2028) = v329;
                                                        if (!*(v325 + 2364))
                                                        {
                                                          ++v329;
                                                        }

                                                        *(v326 + 2028) = v329;
                                                        v330 = *(v325 + 2428);
                                                        v331 = *(v325 + 2444);
                                                        *(v326 + 2064) = *(v325 + 2460);
                                                        *(v326 + 2048) = v331;
                                                        *(v326 + 2032) = v330;
                                                      }

                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFFB | (4 * (*(v325 + 2516) & 1));
                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFF7 | (8 * (*(v325 + 2520) & 1));
                                                      *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFEF | (16 * (*(v325 + 2524) & 1));
                                                      *(v326 + 2084) = 0;
                                                      v332 = *(v325 + 2476) == 2 ? 805306368 : 813694976;
                                                      *(v326 + 2084) = v332;
                                                      memcpy((v326 + 2088), (v325 + 2480), 4 * *(v325 + 2476));
                                                      if (*(v325 + 2516))
                                                      {
                                                        result = 0;
                                                        *(v325 + 2516) = 0;
                                                      }

                                                      else
                                                      {
                                                        return 0;
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
      }
    }
  }

  return result;
}

uint64_t CAHDecCatnipAvc::getTileIdxAbove(CAHDecCatnipAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 888);
  if (a2 % v2)
  {
    v3 = v2 > a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2 % v2 + (a2 / v2 - 1) * v2;
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t CAHDecCatnipAvc::populateAvdWork(CAHDecCatnipAvc *this, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = *(this + 33);
  v4 = *(v3 + 3200);
  v5 = *(v3 + 7388);
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v2 + 3040);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 956 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 2108) = v8;
      *(v13 + 2110) = 0;
      *(v13 + 2112) = v8;
      *(v12 + v7 + 2114) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 2136) = *v10;
      *(v13 + 2140) = v15;
      *(v13 + 2144) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 2118) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 1914;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575726, v18, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v17 = v24;
        if (*v24)
        {
          goto LABEL_17;
        }
      }

      if (*(v17 + 152) || *(v17 + 156))
      {
LABEL_17:
        v20 = v23;
        if (HIDWORD(v23))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "populateAvdWork";
            v27 = 1024;
            v28 = 1915;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575728, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 239;
      *(v12 + v7 + 2132) = v14;
      ++v8;
      v7 += 44;
      v10 += 462;
      if (v11 == v7)
      {
        v2 = *(this + 33);
        v21 = v22;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v21 = 0;
LABEL_24:
    result = 0;
    *(v2 + 28) = v21;
    *(v2 + 32) = 575704;
  }

  return result;
}

uint64_t CAHDecCatnipAvc::allocWorkBuf_SPS(CAHDecCatnipAvc *this, _BYTE *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2[4];
  v4 = *(a2 + 779);
  v5 = 16 * v4;
  v6 = *(a2 + 780);
  v7 = 16 * v6;
  v8 = 32 - __clz(((16 * v4 + 47) >> 5) - 1);
  if (v4 < 2)
  {
    LOBYTE(v8) = 0;
  }

  v9 = 32 - __clz(((16 * v6 + 47) >> 5) - 1);
  if (v6 < 2)
  {
    LOBYTE(v9) = 0;
  }

  v10 = ((32 << (v9 + v8)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    if (v3 == 1)
    {
      ++v7;
    }

    v11 = (v5 + 16) << (v3 == 3);
    v12 = (((v7 + 16) >> (v3 == 1)) + 15) >> 4;
    if (v11 > 0x20)
    {
      v13 = 32 - __clz(((v11 + 31) >> 5) - 1);
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v13) = 0;
LABEL_12:
  v14 = 32 - __clz(v12 - 1);
  if (v12 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = ((8 << (v15 + v13)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(this + 2956) = v10;
  *(this + 2957) = v17;
  *(this + 1479) = 0;
  v18 = (v4 << 6) + 64;
  *(this + 2962) = v18;
  v19 = v18 + v18 * v6;
  *(this + 2961) = v19;
  if (!*(*(this + 32) + 2648))
  {
    v20 = (this + 560);
    v21 = (this + 4784);
    v22 = 24;
    while (1)
    {
      v23 = *(this + 2956);
      if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v29 = 136315650;
        v30 = "allocWorkBuf_SPS";
        v31 = 1024;
        v32 = 2155;
        v33 = 2080;
        v34 = "HdrY";
        v27 = MEMORY[0x277D86220];
        goto LABEL_35;
      }

      v24 = *(this + 2957);
      if (v24)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v21, v24, 7, 1, 0))
        {
          break;
        }
      }

      v20 += 11;
      v21 += 11;
      if (!--v22)
      {
        v19 = *(this + 2961);
        goto LABEL_26;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2156;
    v33 = 2080;
    v34 = "HdrC";
    v27 = MEMORY[0x277D86220];
    goto LABEL_35;
  }

LABEL_26:
  v25 = (*MEMORY[0x277D85F70] + v19) & ~*MEMORY[0x277D85F70];
  *(this + 2961) = v25;
  v26 = (24 * v25);
  if (!v26 || !CAVDDecoder::allocAVDMem(*(this + 32), this + 728, v26, 7, 1, 32))
  {
    result = 0;
    *(this + 2966) = 0;
    *(this + 2967) = v5 | (v6 << 20) | 0xF000F;
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2174;
    v33 = 2080;
    v34 = "MvColo";
    v27 = MEMORY[0x277D86220];
LABEL_35:
    _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v29, 0x1Cu);
  }

LABEL_36:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCatnipAvc::allocWorkBuf_PPS(CAHDecCatnipAvc *this, _BYTE *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2[4];
  v6 = *(a2 + 779);
  if (((a2[6] + 9) & 0x1FEu) <= ((a2[7] + 9) & 0x1FEu))
  {
    v7 = (a2[7] + 9) & 0x1FE;
  }

  else
  {
    v7 = (a2[6] + 9) & 0x1FE;
  }

  if (v5 == 3)
  {
    v8 = 48;
  }

  else
  {
    v8 = 32;
  }

  if (v5 == 3)
  {
    v9 = 192;
  }

  else
  {
    v9 = 128;
  }

  if (a2[4])
  {
    v10 = v8;
  }

  else
  {
    v10 = 16;
  }

  if (a2[4])
  {
    v11 = v9;
  }

  else
  {
    v11 = 64;
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 651, 20 * *(a2 + 779) + 20, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      (*(*this + 160))(this, 0);
      return 0xFFFFFFFFLL;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2297;
    v19 = 2080;
    v20 = "AvpAboveInfo";
    v12 = MEMORY[0x277D86220];
LABEL_19:
    _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v15, 0x1Cu);
    goto LABEL_20;
  }

  v14 = v6 + 1;
  if (v7)
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 662, ((v7 * v10) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2301;
      v19 = 2080;
      v20 = "IpAbove";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }

    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 673, ((v7 * v11) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2302;
      v19 = 2080;
      v20 = "LfAbovePix";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 684, 32 * v14, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2303;
    v19 = 2080;
    v20 = "LfAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 640, 32 * v14, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2306;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecCatnipAvc::freeWorkBuf_SPS(CAHDecCatnipAvc *this)
{
  v2 = (this + 560);
  v3 = (this + 4784);
  v4 = 24;
  do
  {
    result = *(this + 32);
    if (!*(result + 2648))
    {
      if (*v2)
      {
        result = CAVDDecoder::deallocAVDMem(result, v2);
        *v2 = 0;
      }

      if (*v3)
      {
        result = CAVDDecoder::deallocAVDMem(*(this + 32), v3);
        *v3 = 0;
      }
    }

    v2 += 22;
    v3 += 22;
    --v4;
  }

  while (v4);
  if (*(this + 1456))
  {
    result = CAVDDecoder::deallocAVDMem(*(this + 32), this + 1456);
    *(this + 1456) = 0;
  }

  return result;
}

uint64_t *CAHDecCatnipAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1302])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1302);
    v2[1302] = 0;
  }

  if (v2[1324])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1324);
    v2[1324] = 0;
  }

  if (v2[1280])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1280);
    v2[1280] = 0;
  }

  if (v2[1346])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1346);
    v2[1346] = 0;
  }

  if (v2[1368])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1368);
    v2[1368] = 0;
  }

  if (v2[1390])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1390);
    v2[1390] = 0;
  }

  if (v2[1412])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1412);
    v2[1412] = 0;
  }

  if (v2[1434])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1434);
    v2[1434] = 0;
  }

  return this;
}

uint64_t CAHDecCatnipAvc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 9164);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 11840) = a2;
  return this;
}

void *createCatnipLghDecoder(uint64_t a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecCatnipLgh::CAHDecCatnipLgh(v2, a1);
  }

  return v3;
}

void *CAHDecCatnipLgh::CAHDecCatnipLgh(void *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666410;
  *(v4 + 256) = a2;
  *(v4 + 456) = 151364;
  *(v4 + 8) = 836;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 17792) = 0;
  bzero((a2 + 12032), 0xB00uLL);
  *(a2 + 5952) = 0u;
  bzero((a1[32] + 14848), 0xB00uLL);
  bzero(a1 + 58, 0x4D0uLL);
  bzero((a1[32] + 5248), 0x2C0uLL);
  bzero(a1 + 212, 0x580uLL);
  for (i = 2960; i != 3664; i += 176)
  {
    v6 = (a1[32] + i);
    v6[9] = 0uLL;
    v6[10] = 0uLL;
    v6[7] = 0uLL;
    v6[8] = 0uLL;
    v6[5] = 0uLL;
    v6[6] = 0uLL;
    v6[3] = 0uLL;
    v6[4] = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    *v6 = 0uLL;
  }

  do
  {
    v7 = (a1[32] + i);
    v7[9] = 0uLL;
    v7[10] = 0uLL;
    v7[7] = 0uLL;
    v7[8] = 0uLL;
    v7[5] = 0uLL;
    v7[6] = 0uLL;
    v7[3] = 0uLL;
    v7[4] = 0uLL;
    v7[1] = 0uLL;
    v7[2] = 0uLL;
    *v7 = 0uLL;
    i += 176;
  }

  while (i != 5072);
  v8 = a1[32];
  v8[327] = 0u;
  v8[326] = 0u;
  v8[325] = 0u;
  v8[324] = 0u;
  v8[323] = 0u;
  v8[322] = 0u;
  v8[321] = 0u;
  v8[320] = 0u;
  v8[319] = 0u;
  v8[318] = 0u;
  v8[317] = 0u;
  return a1;
}

void CAHDecCatnipLgh::~CAHDecCatnipLgh(CAHDecCatnipLgh *this)
{
  *this = &unk_288666410;
  CAHDecCatnipLgh::freeWorkBuf_SPS(this);
  v2 = *(this + 32);
  for (i = 2960; i != 3664; i += 176)
  {
    if (*(v2 + i))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + i));
      v2 = *(this + 32);
      *(v2 + i) = 0;
    }
  }

  if (*(v2 + 5072))
  {
    CAVDDecoder::deallocAVDMem(v2, (v2 + 5072));
    *(*(this + 32) + 5072) = 0;
  }

  (*(*this + 160))(this, 0);
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecCatnipLgh::~CAHDecCatnipLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecCatnipLgh::init(CAHDecCatnipLgh *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "init";
      v12 = 1024;
      v13 = 0;
      v14 = 1024;
      LODWORD(v15) = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n";
      v6 = 24;
LABEL_13:
      _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v10, v6);
    }
  }

  else
  {
    v7 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v7;
    *(this + 34) = v7;
    for (i = 2960; i != 3664; i += 176)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + i), 1913, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 301;
        }

        v10 = 136315650;
        v11 = "init";
        v12 = 1024;
        v13 = 210;
        v14 = 2080;
        v15 = "probBuf";
        v4 = MEMORY[0x277D86220];
        v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
        goto LABEL_12;
      }
    }

    result = CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + 5072), 12284, 7, 1, 0);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "init";
      v12 = 1024;
      v13 = 212;
      v14 = 2080;
      v15 = "stateBuf";
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
LABEL_12:
      v6 = 28;
      goto LABEL_13;
    }
  }

  return 301;
}

uint64_t CAHDecCatnipLgh::DecodePicture(CAHDecCatnipLgh *this, uint64_t a2)
{
  if (CAHDecClaryLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecClaryLgh::populateTiles(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecCatnipLgh::updateCommonRegisters(CAHDecCatnipLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecCatnipLgh::populateSequenceRegisters(CAHDecCatnipLgh *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 17800);
  *(v1 + 40) = 0;
  v3 = *(v2 + 108) - 1;
  *(v1 + 40) = v3;
  *(v1 + 40) = (v3 | (*(v2 + 112) << 16)) - 0x10000;
  *(v1 + 44) = 0;
  v4 = *(v2 + 304);
  if (v4 >= 3)
  {
    v5 = 6528;
  }

  else
  {
    v5 = (v4 << 7) | 0x1800;
  }

  *(v1 + 44) = v5;
  v6 = v5 | ((*(v2 + 105) & 0xF ^ 8) << 15);
  *(v1 + 44) = v6;
  v7 = v6 | ((*(v2 + 105) & 0xF ^ 8) << 19) | 0x1000000;
  *(v1 + 44) = v7;
  if (*(v2 + 304) == 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  *(v1 + 44) = v8;
  return 0;
}

uint64_t CAHDecCatnipLgh::populatePictureRegisters(CAHDecCatnipLgh *this)
{
  v368 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 17800);
  if (*(v4 + 37))
  {
    v5 = *(v4 + 40) != 0;
  }

  else
  {
    v5 = 1;
  }

  v355 = *(v2 + 11988);
  v6 = *(v4 + 100);
  v362 = *(v4 + 96);
  v361 = 1 << v6;
  v7 = *(v2 + 2675);
  v8 = *(v2 + 2674);
  if (v5)
  {
    v9 = 766517248;
  }

  else
  {
    v9 = 766509056;
  }

  *(v3 + 48) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v3 + 48) = v10;
  if (*(*(this + 32) + 2644) == 1)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 & 0xFFFFFFF0 | (4 * (v7 & 3)) | v8 & 3 | v10 | 0x2E0;
  *(v3 + 48) = v12;
  v13 = *(this + 32);
  v14 = v12 | ((v13[2652] & 1) << 19);
  *(v3 + 48) = v14;
  v15 = v14 | ((v13[2653] & 1) << 18);
  *(v3 + 48) = v15;
  *(v3 + 48) = v15 | ((v13[2654] & 1) << 17);
  *(v3 + 52) = 0x2000000;
  LOWORD(v15) = *(v4 + 108) - 1;
  *(v3 + 56) = v15;
  *(v3 + 56) = (v15 | (*(v4 + 112) << 16)) - 0x10000;
  *(v3 + 60) = 0;
  v16 = *(*(*(this + 32) + 17800) + 2688) & 7;
  *(v3 + 64) = v16;
  v17 = v16 & 0xFFFFFFF7 | (8 * (*(*(*(this + 32) + 17800) + 2692) & 1));
  *(v3 + 64) = v17;
  v18 = v17 & 0xFFFFFF8F | (16 * (*(*(*(this + 32) + 17800) + 2696) & 7));
  *(v3 + 64) = v18;
  v19 = v18 & 0xFFFFFF7F | ((*(*(*(this + 32) + 17800) + 2700) & 1) << 7);
  *(v3 + 64) = v19;
  v20 = v19 & 0xFFFFF8FF | ((*(*(*(this + 32) + 17800) + 2704) & 7) << 8);
  *(v3 + 64) = v20;
  v21 = v20 & 0xFFFFF7FF | ((*(*(*(this + 32) + 17800) + 2708) & 1) << 11);
  *(v3 + 64) = v21;
  v22 = v21 & 0xFFFFCFFF | ((*(*(*(this + 32) + 17800) + 2712) & 3) << 12);
  *(v3 + 64) = v22;
  v23 = v22 & 0xFFFFBFFF | ((*(*(*(this + 32) + 17800) + 2716) & 1) << 14);
  *(v3 + 64) = v23;
  v24 = v23 & 0xFFFF7FFF | ((*(*(*(this + 32) + 17800) + 2720) & 1) << 15);
  *(v3 + 64) = v24;
  v25 = v24 & 0xFFF8FFFF | ((*(*(*(this + 32) + 17800) + 2724) & 7) << 16);
  *(v3 + 64) = v25;
  v26 = v25 & 0xFFF7FFFF | ((*(*(*(this + 32) + 17800) + 2728) & 1) << 19);
  *(v3 + 64) = v26;
  v27 = v26 & 0xFFEFFFFF | ((*(*(*(this + 32) + 17800) + 2732) & 1) << 20);
  *(v3 + 64) = v27;
  v28 = v27 & 0xFFDFFFFF | ((*(*(*(this + 32) + 17800) + 2736) & 1) << 21);
  *(v3 + 64) = v28;
  v29 = v28 & 0xFFBFFFFF | ((*(*(*(this + 32) + 17800) + 2740) & 1) << 22);
  *(v3 + 64) = v29;
  v30 = v29 & 0xFF7FFFFF | ((*(*(*(this + 32) + 17800) + 2744) & 1) << 23);
  *(v3 + 64) = v30;
  v31 = v30 & 0xFEFFFFFF | ((*(*(*(this + 32) + 17800) + 2748) & 1) << 24);
  *(v3 + 64) = v31;
  v32 = v31 & 0xFDFFFFFF | ((*(*(*(this + 32) + 17800) + 2752) & 1) << 25);
  *(v3 + 64) = v32;
  *(v3 + 64) = v32 & 0xFBFFFFFF | ((*(*(*(this + 32) + 17800) + 2756) & 1) << 26);
  *(v3 + 68) = 0;
  if (*(v4 + 60))
  {
    v33 = *(v4 + 69) & 0x7F;
    *(v3 + 68) = v33;
    v34 = v33 & 0xFFFFC07F | ((*(v4 + 68) & 0x7F) << 7);
    *(v3 + 68) = v34;
    v35 = v34 & 0xFFE03FFF | ((*(v4 + 67) & 0x7F) << 14);
    *(v3 + 68) = v35;
    v36 = v35 & 0xF01FFFFF | ((*(v4 + 66) & 0x7F) << 21);
    *(v3 + 68) = v36;
    *(v3 + 68) = v36 & 0x8FFFFFFF | ((*(v4 + 59) & 7) << 28);
    v37 = *(v4 + 73) & 0x7F;
    *(v3 + 72) = v37;
    v38 = v37 & 0xFFFFC07F | ((*(v4 + 72) & 0x7F) << 7);
    *(v3 + 72) = v38;
    v39 = v38 & 0xFFF03FFF | ((*(v4 + 58) & 0x3F) << 14);
  }

  else
  {
    *(v3 + 68) = (*(v4 + 59) & 7) << 28;
    v39 = (*(v4 + 58) & 0x3F) << 14;
  }

  v40 = 0;
  v363 = 1 << v362;
  v360 = v6;
  v358 = 1 << v362 << v6;
  *(v3 + 72) = v39;
  *(v3 + 76) = 0;
  v41 = *(v4 + 77) & 0x1F;
  *(v3 + 76) = v41;
  v42 = v41 & 0xFFFFFC1F | (32 * (*(v4 + 76) & 0x1F));
  *(v3 + 76) = v42;
  v43 = v42 & 0xFFFF83FF | ((*(v4 + 75) & 0x1F) << 10);
  *(v3 + 76) = v43;
  *(v3 + 76) = v43 | (*(v4 + 74) << 15);
  v44 = v3 + 80;
  v45 = (v4 + 208);
  v46 = (v4 + 242);
  do
  {
    v47 = *(v4 + 78);
    *(v44 + 4 * v40) = 0;
    if (v47)
    {
      v48 = *v45 != 0;
      *(v44 + 4 * v40) = v48;
      v49 = v48 | (8 * (*(v45 - 1) != 0));
    }

    else
    {
      v49 = 0;
    }

    *(v44 + 4 * v40) = v49;
    v50 = v49 & 0xFFFFFFF9 | (2 * (*v46 & 3));
    *(v44 + 4 * v40) = v50;
    if (v47)
    {
      if (*(v45 - 2))
      {
        *(v44 + 4 * v40) = v50 | 0x800;
        v51 = v50 & 0xFFFFF00F | 0x800 | (16 * (*(v46 - 1) & 0x7F));
      }

      else
      {
        v51 = v50 & 0xFFFFF00F;
      }

      *(v44 + 4 * v40) = v51;
      if (*(v45 - 3))
      {
        v52 = v51 | 0x200000;
        *(v44 + 4 * v40) = v52;
        v53 = (*(v46 - 2) & 0x1FF) << 12;
        goto LABEL_25;
      }
    }

    else
    {
      v51 = v50 & 0xFFFFF00F;
    }

    v53 = 0;
    v52 = v51 & 0xFFDFFFFF;
LABEL_25:
    *(v44 + 4 * v40++) = v52 & 0xFFE00FFF | v53;
    v45 += 4;
    v46 += 4;
  }

  while (v40 != 8);
  *(v3 + 152) = 0x20000;
  v364 = v4;
  v356 = v5;
  if (v5)
  {
    v357 = 8;
  }

  else
  {
    v359 = v3;
    v54 = (v3 + 112);
    v55 = 2208;
    v357 = 3;
    v56 = MEMORY[0x277D86220];
    do
    {
      v54[11] = 0x1000000;
      *v54 = 0;
      v57 = **(*(this + 32) + 8 * v55) - 1;
      *v54 = v57;
      *v54 = (v57 | (*(*(*(this + 32) + 8 * v55) + 4) << 16)) - 0x10000;
      v54[3] = 0;
      v58 = ((**(*(this + 32) + 8 * v55) << 14) / *(v4 + 108));
      v54[3] = v58;
      v59 = v58 | (((*(*(*(this + 32) + 8 * v55) + 4) << 14) / *(v4 + 112)) << 16);
      v54[3] = v59;
      if ((v58 - 1024) >= 0x7C01 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 551;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v59 = v54[3];
      }

      if ((v59 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 552;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v55;
      ++v54;
      v4 = v364;
    }

    while (v55 != 2211);
    v3 = v359;
  }

  *(v3 + 144) = 0;
  v60 = *(v4 + 2672);
  *(v3 + 144) = v60;
  *(v3 + 144) = v60 | (*(v4 + 2676) << 16);
  v61 = *(v4 + 2680);
  *(v3 + 148) = v61;
  *(v3 + 148) = v61 | (*(v4 + 2684) << 16);
  v62 = this + 464;
  for (i = 196; i != 224; i += 4)
  {
    *(*(this + 33) + i - 28) = 0;
    v64 = *(this + 33) + i;
    v65 = *(v64 - 28);
    *(v64 - 28) = 0;
    *(*(this + 33) + i - 28) ^= 0xFFFFFF00;
    v66 = *(this + 33) + i;
    v67 = *(v66 - 28);
    *(v66 - 28) = v65;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, i - 28, 0, 0xFFFFFFFFLL, 8, v67, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i) = 0;
    *(*(this + 33) + i) = *(*(this + 33) + i) & 0x800001FF | (((*(this + 780) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + i + 180) = 0;
    v69 = *(this + 33) + i;
    v70 = *(v69 + 180);
    *(v69 + 180) = 0;
    *(*(this + 33) + i + 180) ^= 0x3FFu;
    v71 = *(this + 33) + i;
    v72 = *(v71 + 180);
    *(v71 + 180) = v70;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, i + 180, 0, 0x3FFFFFFFFFFLL, 32, v72, 4);
      if (result)
      {
        return result;
      }
    }

    v62 += 176;
  }

  *(*(this + 33) + 224) = 0;
  v73 = *(this + 33);
  v74 = *(v73 + 224);
  *(v73 + 224) = 0;
  *(*(this + 33) + 224) ^= 0xFFFFFF00;
  v75 = *(this + 33);
  v76 = *(v75 + 224);
  *(v75 + 224) = v74;
  v77 = *(this + 32);
  if (*(v77 + 5072) || *(v77 + 5224) || *(v77 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v77 + 5072), 224, 0, 0xFFFFFFFFLL, 8, v76, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 404) = 0;
  v78 = *(this + 33);
  v79 = *(v78 + 404);
  *(v78 + 404) = 0;
  *(*(this + 33) + 404) ^= 0x3FFu;
  v80 = *(this + 33);
  v81 = *(v80 + 404);
  *(v80 + 404) = v79;
  v82 = *(this + 32);
  if (*(v82 + 5072) || *(v82 + 5224) || *(v82 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v82 + 5072), 404, 0, 0x3FFFFFFFFFFLL, 32, v81, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 228) = 0;
  *(*(this + 33) + 408) = 0;
  if ((*(v3 + 50) & 8) != 0)
  {
    v83 = *(this + 33);
    v84 = *(*(this + 32) + 2680);
    v366 = 0u;
    v367 = 0u;
    memset(buf, 0, sizeof(buf));
    v85 = (*(v83 + 16) & 0xF) << 9;
    *&buf[0] = v84;
    v86 = *(v83 + 228);
    *(v83 + 228) = 0;
    *(*(this + 33) + 228) ^= 0xFFFFFF00;
    v87 = *(this + 33);
    v88 = *(v87 + 228);
    *(v87 + 228) = v86;
    if (!v84)
    {
      goto LABEL_67;
    }

    result = CAHDec::addToPatcherList(this, buf, 228, v85, 0xFFFFFFFFLL, 8, v88, 4);
    if (result)
    {
      return result;
    }

    v89 = !*&buf[0] && DWORD2(v366) == 0;
    v90 = v89 && HIDWORD(v366) == 0;
    LODWORD(v84) = !v90;
LABEL_67:
    v91 = *(this + 33);
    v92 = *(v91 + 408);
    *(v91 + 408) = 0;
    *(*(this + 33) + 408) ^= 0x3FFu;
    v93 = *(this + 33);
    v94 = *(v93 + 408);
    *(v93 + 408) = v92;
    if (v84)
    {
      result = CAHDec::addToPatcherList(this, buf, 408, v85, 0x3FFFFFFFFFFLL, 32, v94, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 280) = 0;
  v95 = *(this + 33);
  v96 = *(v95 + 280);
  *(v95 + 280) = 0;
  *(*(this + 33) + 280) ^= 0xFFFFFF00;
  v97 = *(this + 33);
  v98 = *(v97 + 280);
  *(v97 + 280) = v96;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 280, 0, 0xFFFFFFFFLL, 8, v98, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 460) = 0;
  v99 = *(this + 33);
  v100 = *(v99 + 460);
  *(v99 + 460) = 0;
  *(*(this + 33) + 460) ^= 0x3FFu;
  v101 = *(this + 33);
  v102 = *(v101 + 460);
  *(v101 + 460) = v100;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 460, 0, 0x3FFFFFFFFFFLL, 32, v102, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v103 = *(this + 33);
  v104 = *(v103 + 232);
  *(v103 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFF00;
  v105 = *(this + 33);
  v106 = *(v105 + 232);
  *(v105 + 232) = v104;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 232, 0, 0xFFFFFFFFLL, 8, v106, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 412) = 0;
  v107 = *(this + 33);
  v108 = *(v107 + 412);
  *(v107 + 412) = 0;
  *(*(this + 33) + 412) ^= 0x3FFu;
  v109 = *(this + 33);
  v110 = *(v109 + 412);
  *(v109 + 412) = v108;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 412, 0, 0x3FFFFFFFFFFLL, 32, v110, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v111 = *(this + 33);
  v112 = *(v111 + 236);
  *(v111 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFF00;
  v113 = *(this + 33);
  v114 = *(v113 + 236);
  *(v113 + 236) = v112;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 236, 0, 0xFFFFFFFFLL, 8, v114, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 416) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 416);
  *(v115 + 416) = 0;
  *(*(this + 33) + 416) ^= 0x3FFu;
  v117 = *(this + 33);
  v118 = *(v117 + 416);
  *(v117 + 416) = v116;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 416, 0, 0x3FFFFFFFFFFLL, 32, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  *(*(this + 33) + 420) = 0;
  *(*(this + 33) + 244) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 244);
  *(v119 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFF00;
  v121 = *(this + 33);
  v122 = *(v121 + 244);
  *(v121 + 244) = v120;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 244, 0, 0xFFFFFFFFLL, 8, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 424) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 424);
  *(v123 + 424) = 0;
  *(*(this + 33) + 424) ^= 0x3FFu;
  v125 = *(this + 33);
  v126 = *(v125 + 424);
  *(v125 + 424) = v124;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 424, 0, 0x3FFFFFFFFFFLL, 32, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 248) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 248);
  *(v127 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFF00;
  v129 = *(this + 33);
  v130 = *(v129 + 248);
  *(v129 + 248) = v128;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 248, 0, 0xFFFFFFFFLL, 8, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 428) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 428);
  *(v131 + 428) = 0;
  *(*(this + 33) + 428) ^= 0x3FFu;
  v133 = *(this + 33);
  v134 = *(v133 + 428);
  *(v133 + 428) = v132;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 428, 0, 0x3FFFFFFFFFFLL, 32, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  *(*(this + 33) + 432) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 252);
  *(v135 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFF00;
  v137 = *(this + 33);
  v138 = *(v137 + 252);
  *(v137 + 252) = v136;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 252, 0, 0xFFFFFFFFLL, 8, v138, 4);
    if (result)
    {
      return result;
    }
  }

  v139 = *(this + 33);
  v140 = *(v139 + 432);
  *(v139 + 432) = 0;
  *(*(this + 33) + 432) ^= 0x3FFu;
  v141 = *(this + 33);
  v142 = *(v141 + 432);
  *(v141 + 432) = v140;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 432, 0, 0x3FFFFFFFFFFLL, 32, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 256);
  *(v143 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFF00;
  v145 = *(this + 33);
  v146 = *(v145 + 256);
  *(v145 + 256) = v144;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 256, 0, 0xFFFFFFFFLL, 8, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 436) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 436);
  *(v147 + 436) = 0;
  *(*(this + 33) + 436) ^= 0x3FFu;
  v149 = *(this + 33);
  v150 = *(v149 + 436);
  *(v149 + 436) = v148;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 436, 0, 0x3FFFFFFFFFFLL, 32, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 260);
  *(v151 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFF00;
  v153 = *(this + 33);
  v154 = *(v153 + 260);
  *(v153 + 260) = v152;
  v155 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v155 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v155, 260, 0, 0xFFFFFFFFLL, 8, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 440) = 0;
  v156 = *(this + 33);
  v157 = *(v156 + 440);
  *(v156 + 440) = 0;
  *(*(this + 33) + 440) ^= 0x3FFu;
  v158 = *(this + 33);
  v159 = *(v158 + 440);
  *(v158 + 440) = v157;
  v160 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v160 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v160, 440, 0, 0x3FFFFFFFFFFLL, 32, v159, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = 0;
  v161 = *(this + 33);
  v162 = *(v161 + 264);
  *(v161 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFF00;
  v163 = *(this + 33);
  v164 = *(v163 + 264);
  *(v163 + 264) = v162;
  v165 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v165 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v165, 264, 0, 0xFFFFFFFFLL, 8, v164, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 444) = 0;
  v166 = *(this + 33);
  v167 = *(v166 + 444);
  *(v166 + 444) = 0;
  *(*(this + 33) + 444) ^= 0x3FFu;
  v168 = *(this + 33);
  v169 = *(v168 + 444);
  *(v168 + 444) = v167;
  v170 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v170 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v170, 444, 0, 0x3FFFFFFFFFFLL, 32, v169, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 268);
  *(v171 + 268) = 0;
  *(*(this + 33) + 268) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 268);
  *(v173 + 268) = v172;
  v175 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v175 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v175, 268, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 448) = 0;
  v176 = *(this + 33);
  v177 = *(v176 + 448);
  *(v176 + 448) = 0;
  *(*(this + 33) + 448) ^= 0x3FFu;
  v178 = *(this + 33);
  v179 = *(v178 + 448);
  *(v178 + 448) = v177;
  v180 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v180 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v180, 448, 0, 0x3FFFFFFFFFFLL, 32, v179, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 272) = 0;
  v181 = *(this + 33);
  v182 = *(v181 + 272);
  *(v181 + 272) = 0;
  *(*(this + 33) + 272) ^= 0xFFFFFF00;
  v183 = *(this + 33);
  v184 = *(v183 + 272);
  *(v183 + 272) = v182;
  v185 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v185 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v185, 272, 0, 0xFFFFFFFFLL, 8, v184, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 452) = 0;
  v186 = *(this + 33);
  v187 = *(v186 + 452);
  *(v186 + 452) = 0;
  *(*(this + 33) + 452) ^= 0x3FFu;
  v188 = *(this + 33);
  v189 = *(v188 + 452);
  *(v188 + 452) = v187;
  v190 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v190 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v190, 452, 0, 0x3FFFFFFFFFFLL, 32, v189, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 276) = 0;
  v191 = *(this + 33);
  v192 = *(v191 + 276);
  *(v191 + 276) = 0;
  *(*(this + 33) + 276) ^= 0xFFFFFF00;
  v193 = *(this + 33);
  v194 = *(v193 + 276);
  *(v193 + 276) = v192;
  v195 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v195 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v195, 276, 0, 0xFFFFFFFFLL, 8, v194, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 456) = 0;
  v196 = *(this + 33);
  v197 = *(v196 + 456);
  *(v196 + 456) = 0;
  *(*(this + 33) + 456) ^= 0x3FFu;
  v198 = *(this + 33);
  v199 = *(v198 + 456);
  *(v198 + 456) = v197;
  v200 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v200 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v200, 456, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 284) = 0;
  *(*(this + 33) + 464) = 0;
  *(*(this + 33) + 288) = 0;
  *(*(this + 33) + 468) = 0;
  *(*(this + 33) + 292) = 0;
  *(*(this + 33) + 472) = 0;
  *(*(this + 33) + 296) = 0;
  *(*(this + 33) + 476) = 0;
  v201 = *(this + 33);
  v202 = *(v201 + 288);
  *(v201 + 288) = 0;
  *(*(this + 33) + 288) ^= 0xFFFFFF80;
  v203 = *(this + 33);
  v204 = *(v203 + 288);
  *(v203 + 288) = v202;
  v205 = *(*(this + 32) + 376 * v355 + 5976);
  if (*v205 || *(v205 + 152) || *(v205 + 156))
  {
    result = CAHDec::addToPatcherList(this, v205, 288, *(v205 + 52), 0xFFFFFFFFLL, 7, v204, 4);
    if (result)
    {
      return result;
    }
  }

  v206 = *(this + 33);
  v207 = *(v206 + 468);
  *(v206 + 468) = 0;
  *(*(this + 33) + 468) ^= 0x3FFu;
  v208 = *(this + 33);
  v209 = *(v208 + 468);
  *(v208 + 468) = v207;
  v210 = *(*(this + 32) + 376 * v355 + 5976);
  if (*v210 || *(v210 + 152) || *(v210 + 156))
  {
    result = CAHDec::addToPatcherList(this, v210, 468, *(v210 + 52), 0x3FFFFFFFFFFLL, 32, v209, 4);
    if (result)
    {
      return result;
    }
  }

  v211 = *(this + 33);
  v212 = *(v211 + 296);
  *(v211 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFF80;
  v213 = *(this + 33);
  v214 = *(v213 + 296);
  *(v213 + 296) = v212;
  v215 = *(*(this + 32) + 376 * v355 + 5976);
  if (*v215 || *(v215 + 152) || *(v215 + 156))
  {
    result = CAHDec::addToPatcherList(this, v215, 296, *(v215 + 56), 0xFFFFFFFFLL, 7, v214, 4);
    if (result)
    {
      return result;
    }
  }

  v216 = *(this + 33);
  v217 = *(v216 + 476);
  *(v216 + 476) = 0;
  *(*(this + 33) + 476) ^= 0x3FFu;
  v218 = *(this + 33);
  v219 = *(v218 + 476);
  *(v218 + 476) = v217;
  v220 = *(this + 32);
  v221 = *(v220 + 376 * v355 + 5976);
  if (*v221 || *(v221 + 152) || *(v221 + 156))
  {
    result = CAHDec::addToPatcherList(this, v221, 476, *(v221 + 56), 0x3FFFFFFFFFFLL, 32, v219, 4);
    if (result)
    {
      return result;
    }

    v220 = *(this + 32);
  }

  v222 = *(v220 + 2648);
  v223 = *(this + 33);
  v224 = *(v223 + 284);
  *(v223 + 284) = 0;
  *(*(this + 33) + 284) ^= 0xFFFFFF80;
  v225 = *(this + 33);
  v226 = *(v225 + 284);
  *(v225 + 284) = v224;
  v227 = *(this + 32) + 5968;
  if (v222 == 1)
  {
    v228 = *(v227 + 376 * v355 + 8);
    if (!*v228 && !*(v228 + 152) && !*(v228 + 156) || (result = CAHDec::addToPatcherList(this, v228, 284, *(v228 + 64), 0xFFFFFFFFLL, 7, v226, 4), !result))
    {
      if ((v229 = *(this + 33), v230 = *(v229 + 464), *(v229 + 464) = 0, *(*(this + 33) + 464) ^= 0x3FFu, v231 = *(this + 33), v232 = *(v231 + 464), *(v231 + 464) = v230, v233 = *(*(this + 32) + 376 * v355 + 5976), !*v233) && !*(v233 + 152) && !*(v233 + 156) || (result = CAHDec::addToPatcherList(this, v233, 464, *(v233 + 64), 0x3FFFFFFFFFFLL, 32, v232, 4), !result))
      {
        if ((v234 = *(this + 33), v235 = *(v234 + 292), *(v234 + 292) = 0, *(*(this + 33) + 292) ^= 0xFFFFFF80, v236 = *(this + 33), v237 = *(v236 + 292), *(v236 + 292) = v235, v238 = *(*(this + 32) + 376 * v355 + 5976), !*v238) && !*(v238 + 152) && !*(v238 + 156) || (result = CAHDec::addToPatcherList(this, v238, 292, *(v238 + 68), 0xFFFFFFFFLL, 7, v237, 4), !result))
        {
          v239 = *(this + 33);
          v240 = *(v239 + 472);
          *(v239 + 472) = 0;
          *(*(this + 33) + 472) ^= 0x3FFu;
          v241 = *(this + 33);
          v242 = *(v241 + 472);
          *(v241 + 472) = v240;
          v243 = *(*(this + 32) + 376 * v355 + 5976);
          if (!*v243 && !*(v243 + 152) && !*(v243 + 156))
          {
            goto LABEL_211;
          }

          v244 = *(v243 + 68);
          v245 = this;
LABEL_210:
          result = CAHDec::addToPatcherList(v245, v243, 472, v244, 0x3FFFFFFFFFFLL, 32, v242, 4);
          if (!result)
          {
            goto LABEL_211;
          }
        }
      }
    }

    return result;
  }

  v246 = v227 + 376 * v355;
  v248 = *(v246 + 24);
  v247 = v246 + 24;
  if (v248 || *(v247 + 152) || *(v247 + 156))
  {
    result = CAHDec::addToPatcherList(this, v247, 284, 0, 0xFFFFFFFFLL, 7, v226, 4);
    if (result)
    {
      return result;
    }
  }

  v249 = *(this + 33);
  v250 = *(v249 + 464);
  *(v249 + 464) = 0;
  *(*(this + 33) + 464) ^= 0x3FFu;
  v251 = *(this + 33);
  v252 = *(v251 + 464);
  *(v251 + 464) = v250;
  v253 = (*(this + 32) + 376 * v355 + 5992);
  if (*v253 || *(*(this + 32) + 376 * v355 + 6144) || *(*(this + 32) + 376 * v355 + 6148))
  {
    result = CAHDec::addToPatcherList(this, v253, 464, 0, 0x3FFFFFFFFFFLL, 32, v252, 4);
    if (result)
    {
      return result;
    }
  }

  v254 = *(this + 33);
  v255 = *(v254 + 292);
  *(v254 + 292) = 0;
  *(*(this + 33) + 292) ^= 0xFFFFFF80;
  v256 = *(this + 33);
  v257 = *(v256 + 292);
  *(v256 + 292) = v255;
  v258 = (*(this + 32) + 376 * v355 + 6168);
  if (*v258 || *(*(this + 32) + 376 * v355 + 6320) || *(*(this + 32) + 376 * v355 + 6324))
  {
    result = CAHDec::addToPatcherList(this, v258, 292, 0, 0xFFFFFFFFLL, 7, v257, 4);
    if (result)
    {
      return result;
    }
  }

  v259 = *(this + 33);
  v260 = *(v259 + 472);
  *(v259 + 472) = 0;
  *(*(this + 33) + 472) ^= 0x3FFu;
  v261 = *(this + 33);
  v242 = *(v261 + 472);
  *(v261 + 472) = v260;
  v243 = *(this + 32) + 376 * v355 + 6168;
  if (*v243 || *(*(this + 32) + 376 * v355 + 6320) || *(*(this + 32) + 376 * v355 + 6324))
  {
    v245 = this;
    v244 = 0;
    goto LABEL_210;
  }

LABEL_211:
  if (!v356)
  {
    v262 = 0;
    v263 = 17664;
    do
    {
      v264 = *(*(*(this + 32) + v263) + 40);
      *(*(this + 33) + v262 + 312) = 0;
      *(*(this + 33) + v262 + 480) = 0;
      *(*(this + 33) + v262 + 324) = 0;
      *(*(this + 33) + v262 + 492) = 0;
      *(*(this + 33) + v262 + 336) = 0;
      *(*(this + 33) + v262 + 504) = 0;
      *(*(this + 33) + v262 + 348) = 0;
      *(*(this + 33) + v262 + 516) = 0;
      v265 = *(this + 33) + v262;
      v266 = *(v265 + 324);
      *(v265 + 324) = 0;
      *(*(this + 33) + v262 + 324) ^= 0xFFFFFF80;
      v267 = *(this + 33) + v262;
      v268 = *(v267 + 324);
      *(v267 + 324) = v266;
      v269 = *(v264 + 8);
      if (*v269 || *(v269 + 152) || *(v269 + 156))
      {
        result = CAHDec::addToPatcherList(this, v269, v262 + 324, *(v269 + 52), 0xFFFFFFFFLL, 7, v268, 4);
        if (result)
        {
          return result;
        }
      }

      v270 = *(this + 33) + v262;
      v271 = *(v270 + 492);
      *(v270 + 492) = 0;
      *(*(this + 33) + v262 + 492) ^= 0x3FFu;
      v272 = *(this + 33) + v262;
      v273 = *(v272 + 492);
      *(v272 + 492) = v271;
      v274 = *(v264 + 8);
      if (*v274 || *(v274 + 152) || *(v274 + 156))
      {
        result = CAHDec::addToPatcherList(this, v274, v262 + 492, *(v274 + 52), 0x3FFFFFFFFFFLL, 32, v273, 4);
        if (result)
        {
          return result;
        }
      }

      v275 = *(this + 33) + v262;
      v276 = *(v275 + 348);
      *(v275 + 348) = 0;
      *(*(this + 33) + v262 + 348) ^= 0xFFFFFF80;
      v277 = *(this + 33) + v262;
      v278 = *(v277 + 348);
      *(v277 + 348) = v276;
      v279 = *(v264 + 8);
      if (*v279 || *(v279 + 152) || *(v279 + 156))
      {
        result = CAHDec::addToPatcherList(this, v279, v262 + 348, *(v279 + 56), 0xFFFFFFFFLL, 7, v278, 4);
        if (result)
        {
          return result;
        }
      }

      v280 = *(this + 33) + v262;
      v281 = *(v280 + 516);
      *(v280 + 516) = 0;
      *(*(this + 33) + v262 + 516) ^= 0x3FFu;
      v282 = *(this + 33) + v262;
      v283 = *(v282 + 516);
      *(v282 + 516) = v281;
      v284 = *(v264 + 8);
      if (*v284 || *(v284 + 152) || *(v284 + 156))
      {
        result = CAHDec::addToPatcherList(this, v284, v262 + 516, *(v284 + 56), 0x3FFFFFFFFFFLL, 32, v283, 4);
        if (result)
        {
          return result;
        }
      }

      v285 = *(*(this + 32) + 2648);
      v286 = *(this + 33) + v262;
      v287 = *(v286 + 312);
      *(v286 + 312) = 0;
      *(*(this + 33) + v262 + 312) ^= 0xFFFFFF80;
      v288 = *(this + 33) + v262;
      v289 = *(v288 + 312);
      *(v288 + 312) = v287;
      if (v285 == 1)
      {
        v290 = *(v264 + 8);
        if (*v290 || *(v290 + 152) || *(v290 + 156))
        {
          result = CAHDec::addToPatcherList(this, v290, v262 + 312, *(v290 + 64), 0xFFFFFFFFLL, 7, v289, 4);
          if (result)
          {
            return result;
          }
        }

        v291 = *(this + 33) + v262;
        v292 = *(v291 + 480);
        *(v291 + 480) = 0;
        *(*(this + 33) + v262 + 480) ^= 0x3FFu;
        v293 = *(this + 33) + v262;
        v294 = *(v293 + 480);
        *(v293 + 480) = v292;
        v295 = *(v264 + 8);
        if (*v295 || *(v295 + 152) || *(v295 + 156))
        {
          result = CAHDec::addToPatcherList(this, v295, v262 | 0x1E0, *(v295 + 64), 0x3FFFFFFFFFFLL, 32, v294, 4);
          if (result)
          {
            return result;
          }
        }

        v296 = *(this + 33) + v262;
        v297 = *(v296 + 336);
        *(v296 + 336) = 0;
        *(*(this + 33) + v262 + 336) ^= 0xFFFFFF80;
        v298 = *(this + 33) + v262;
        v299 = *(v298 + 336);
        *(v298 + 336) = v297;
        v300 = *(v264 + 8);
        if (*v300 || *(v300 + 152) || *(v300 + 156))
        {
          result = CAHDec::addToPatcherList(this, v300, v262 | 0x150, *(v300 + 68), 0xFFFFFFFFLL, 7, v299, 4);
          if (result)
          {
            return result;
          }
        }

        v301 = *(this + 33) + v262;
        v302 = *(v301 + 504);
        *(v301 + 504) = 0;
        *(*(this + 33) + v262 + 504) ^= 0x3FFu;
        v303 = *(this + 33) + v262;
        v304 = *(v303 + 504);
        *(v303 + 504) = v302;
        v305 = *(v264 + 8);
        if (*v305 || *(v305 + 152) || *(v305 + 156))
        {
          v306 = *(v305 + 68);
          v307 = v262 + 504;
          v308 = this;
          goto LABEL_262;
        }
      }

      else
      {
        if (*(v264 + 24) || *(v264 + 176) || *(v264 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v264 + 24), v262 + 312, 0, 0xFFFFFFFFLL, 7, v289, 4);
          if (result)
          {
            return result;
          }
        }

        v309 = *(this + 33) + v262;
        v310 = *(v309 + 480);
        *(v309 + 480) = 0;
        *(*(this + 33) + v262 + 480) ^= 0x3FFu;
        v311 = *(this + 33) + v262;
        v312 = *(v311 + 480);
        *(v311 + 480) = v310;
        if (*(v264 + 24) || *(v264 + 176) || *(v264 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v264 + 24), v262 | 0x1E0, 0, 0x3FFFFFFFFFFLL, 32, v312, 4);
          if (result)
          {
            return result;
          }
        }

        v313 = *(this + 33) + v262;
        v314 = *(v313 + 336);
        *(v313 + 336) = 0;
        *(*(this + 33) + v262 + 336) ^= 0xFFFFFF80;
        v315 = *(this + 33) + v262;
        v316 = *(v315 + 336);
        *(v315 + 336) = v314;
        if (*(v264 + 200) || *(v264 + 352) || *(v264 + 356))
        {
          result = CAHDec::addToPatcherList(this, (v264 + 200), v262 | 0x150, 0, 0xFFFFFFFFLL, 7, v316, 4);
          if (result)
          {
            return result;
          }
        }

        v317 = *(this + 33) + v262;
        v318 = *(v317 + 504);
        *(v317 + 504) = 0;
        *(*(this + 33) + v262 + 504) ^= 0x3FFu;
        v319 = *(this + 33) + v262;
        v304 = *(v319 + 504);
        *(v319 + 504) = v318;
        if (*(v264 + 200) || *(v264 + 352) || *(v264 + 356))
        {
          v307 = v262 + 504;
          v308 = this;
          v305 = v264 + 200;
          v306 = 0;
LABEL_262:
          result = CAHDec::addToPatcherList(v308, v305, v307, v306, 0x3FFFFFFFFFFLL, 32, v304, 4);
          if (result)
          {
            return result;
          }
        }
      }

      v263 += 8;
      v262 += 4;
    }

    while (v262 != 12);
  }

  v320 = subWidth[*(*(*(this + 32) + 17800) + 4)];
  *(*(this + 33) + 360) = 0;
  *(*(this + 33) + 528) = 0;
  *(*(this + 33) + 364) = 0;
  *(*(this + 33) + 532) = 0;
  *(*(this + 33) + 368) = 0;
  *(*(this + 33) + 372) = 0;
  if (*(*(this + 32) + 2644))
  {
    v321 = *(this + 33);
    v322 = *(v321 + 360);
    *(v321 + 360) = 0;
    *(*(this + 33) + 360) ^= 0xFFFFFFC0;
    v323 = *(this + 33);
    v324 = *(v323 + 360);
    *(v323 + 360) = v322;
    v325 = *(*(this + 32) + 12008);
    if (*v325 || *(v325 + 152) || *(v325 + 156))
    {
      result = CAHDec::addToPatcherList(this, v325, 360, *(v325 + 52), 0xFFFFFFFFLL, 6, v324, 4);
      if (result)
      {
        return result;
      }
    }

    v326 = *(this + 33);
    v327 = *(v326 + 528);
    *(v326 + 528) = 0;
    *(*(this + 33) + 528) ^= 0x3FFu;
    v328 = *(this + 33);
    v329 = *(v328 + 528);
    *(v328 + 528) = v327;
    v330 = *(*(this + 32) + 12008);
    if (*v330 || *(v330 + 152) || *(v330 + 156))
    {
      result = CAHDec::addToPatcherList(this, v330, 528, *(v330 + 52), 0x3FFFFFFFFFFLL, 32, v329, 4);
      if (result)
      {
        return result;
      }
    }

    v331 = *(this + 33);
    v332 = *(v331 + 364);
    *(v331 + 364) = 0;
    *(*(this + 33) + 364) ^= 0xFFFFFFC0;
    v333 = *(this + 33);
    v334 = *(v333 + 364);
    *(v333 + 364) = v332;
    v335 = *(*(this + 32) + 12008);
    if (*v335 || *(v335 + 152) || *(v335 + 156))
    {
      result = CAHDec::addToPatcherList(this, v335, 364, *(v335 + 56), 0xFFFFFFFFLL, 6, v334, 4);
      if (result)
      {
        return result;
      }
    }

    v336 = *(this + 33);
    v337 = *(v336 + 532);
    *(v336 + 532) = 0;
    *(*(this + 33) + 532) ^= 0x3FFu;
    v338 = *(this + 33);
    v339 = *(v338 + 532);
    *(v338 + 532) = v337;
    v340 = *(this + 32);
    v341 = *(v340 + 12008);
    if (*v341 || *(v341 + 152) || *(v341 + 156))
    {
      result = CAHDec::addToPatcherList(this, v341, 532, *(v341 + 56), 0x3FFFFFFFFFFLL, 32, v339, 4);
      if (result)
      {
        return result;
      }

      v340 = *(this + 32);
    }

    if (*(v340 + 8) == 1)
    {
      *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFC003F | (((*(*(v340 + 12008) + 76) >> 6) & 0xFFF) << 6);
      v342 = (*(*(this + 32) + 12008) + 80);
    }

    else
    {
      if (CAHDecTansyLgh::getSWRStride(this, *(v3 + 148) + 1, *(v364 + 105) - 8, *(v364 + 105) - 8, v320))
      {
        return 0xFFFFFFFFLL;
      }

      *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFC003F | (((*(this + 783) >> 6) & 0xFFF) << 6);
      v342 = (this + 3136);
    }

    *(*(this + 33) + 372) = *(*(this + 33) + 372) & 0xFFF8003F | (((*v342 >> 6) & 0x1FFF) << 6);
  }

  if (v358 < 2)
  {
    v343 = *(this + 33);
    *(v343 + 536) = 65537;
    *(v343 + 540) = 0;
    *(v343 + 542) = *(v364 + 108) >> 6;
    *(v343 + 670) = 0;
    *(v343 + 672) = *(v364 + 112) >> 6;
    v344 = *(this + 32);
  }

  else
  {
    v343 = *(this + 33);
    *(v343 + 536) = v363;
    v344 = *(this + 32);
    if (v360 != 31)
    {
      if (v361 <= 1)
      {
        v345 = 1;
      }

      else
      {
        v345 = v361;
      }

      v346 = (*(v344 + 17800) + 2786);
      do
      {
        if ((*v346 & 1) == 0)
        {
          *(v343 + 670 + 2 * v357) = *(v346 - 26) >> 3;
        }

        v346 += 1792;
        --v345;
      }

      while (v345);
    }

    *(v343 + 538) = v361;
    if (v362 != 31)
    {
      if (v363 <= 1)
      {
        v347 = 1;
      }

      else
      {
        v347 = v363;
      }

      v348 = *(v344 + 17800) + 2768;
      do
      {
        if ((*(v348 + 18) & 1) == 0)
        {
          *(v343 + 540 + 2 * v357) = *v348 >> 3;
        }

        v348 += 28;
        --v347;
      }

      while (v347);
    }
  }

  if (*(v344 + 2360) != 1)
  {
    return 0;
  }

  *(v343 + 684) = *(v343 + 684) & 0xFFFFFFFE | *(v344 + 2508) & 1;
  if (*(v344 + 2508))
  {
    *(v343 + 692) = 0x10000000;
    *(v343 + 696) = *(v344 + 2368);
    *(v343 + 704) = 0;
    *(v343 + 700) = 0;
    *(v343 + 712) = *(v344 + 2372);
    v349 = *(v344 + 2404);
    *(v343 + 728) = *(v344 + 2388);
    *(v343 + 744) = v349;
  }

  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFFD | (2 * (*(v344 + 2512) & 1));
  if (*(v344 + 2512))
  {
    *(v343 + 760) = 0;
    v350 = *(v344 + 2424);
    *(v343 + 760) = (*(v344 + 2424) & 1) << 22;
    v351 = ((*(v344 + 2420) & 1) << 23) | ((v350 & 1) << 22) | 0x20000000;
    *(v343 + 760) = v351;
    if (!*(v344 + 2364))
    {
      ++v351;
    }

    *(v343 + 760) = v351;
    v352 = *(v344 + 2428);
    v353 = *(v344 + 2460);
    *(v343 + 780) = *(v344 + 2444);
    *(v343 + 796) = v353;
    *(v343 + 764) = v352;
  }

  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFFB | (4 * (*(v344 + 2516) & 1));
  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFF7 | (8 * (*(v344 + 2520) & 1));
  *(*(this + 33) + 684) = *(*(this + 33) + 684) & 0xFFFFFFEF | (16 * (*(v344 + 2524) & 1));
  *(v343 + 816) = 0;
  v354 = *(v344 + 2476) == 2 ? 805306368 : 813694976;
  *(v343 + 816) = v354;
  memcpy((v343 + 820), (v344 + 2480), 4 * *(v344 + 2476));
  if (!*(v344 + 2516))
  {
    return 0;
  }

  result = 0;
  *(v344 + 2516) = 0;
  return result;
}

uint64_t CAHDecCatnipLgh::populateAvdWork(CAHDecCatnipLgh *this)
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 17800);
  v39 = *(v2 + 16);
  v43 = 0;
  v44 = 0;
  v3 = *(v2 + 312);
  if (!v3)
  {
    LOWORD(v7) = 0;
    goto LABEL_41;
  }

  v40 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = v1 + 3908;
  v9 = *(v2 + 316);
  v10 = 2786;
  v11 = v9;
  v38 = v8;
  while (1)
  {
    v37 = v10;
    if (v11)
    {
      break;
    }

LABEL_38:
    v10 = v37 + 1792;
    if (++v40 >= v3)
    {
      v1 = *(this + 33);
LABEL_41:
      result = 0;
      *(v1 + 26) = v7;
      *(v1 + 32) = 3908;
      return result;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = *(this + 32);
    v14 = *(v13 + 17800);
    v15 = v14 + v10;
    if (*(v14 + v10))
    {
      goto LABEL_37;
    }

    *(v8 + 4) = v7;
    *(v8 + 6) = 0;
    *(v8 + 10) = v5;
    if (!CAVDAvxDecoder::GetTileMemInfo(v13, v39 + *(v15 - 6), &v44, &v43))
    {
      return 0xFFFFFFFFLL;
    }

    v41 = v5;
    v42 = v7;
    v16 = v2;
    v17 = 36 * v6;
    v18 = v44;
    if (*v44 || *(v44 + 152) || *(v44 + 156))
    {
      v19 = v43;
      if (HIDWORD(v43) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "populateAvdWork";
        v47 = 1024;
        v48 = 1117;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 3926, v19, 0x3FFFFFFFFFFLL, 32, -1, 2);
      if (result)
      {
        return result;
      }

      v18 = v44;
      if (*v44)
      {
        goto LABEL_17;
      }
    }

    if (*(v18 + 152) || *(v18 + 156))
    {
LABEL_17:
      v21 = v43;
      if (HIDWORD(v43) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "populateAvdWork";
        v47 = 1024;
        v48 = 1118;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v21 = v43;
      }

      result = CAHDec::addToPatcherList(this, v18, v17 + 3928, v21, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    v22 = v14 + v10;
    *(v8 + 24) = *(v14 + v10 - 10);
    v23 = *(v15 - 26);
    v24 = v23 + 7;
    if (v23 >= 0)
    {
      v24 = *(v15 - 26);
    }

    v25 = *(v22 - 18);
    *(v8 + 28) = (v24 << 13) & 0xFFFF0000 | (v25 / 8);
    v26 = *(v22 - 22);
    v28 = v26 - 1;
    v27 = v26 < 1;
    v29 = v26 + 6;
    if (!v27)
    {
      v29 = v28;
    }

    v30 = (v29 << 13) & 0xFFFF0000;
    v31 = *(v22 - 14);
    v32 = v31 - 1;
    v27 = v31 < 1;
    v33 = v31 + 6;
    if (!v27)
    {
      v33 = v32;
    }

    *(v8 + 32) = v30 | (v33 >> 3);
    if (v23 + v25)
    {
      v34 = 4;
    }

    else
    {
      v34 = 5;
    }

    *(v8 + 12) = v34;
    v2 = v16;
    v3 = *(v16 + 312);
    v9 = *(v16 + 316);
    if (v12 == v9 && v40 == v3)
    {
      v36 = 5;
    }

    else
    {
      v36 = 4;
    }

    *(v8 + 14) = v36;
    v5 = v41 + 1;
    v7 = v42 + 1;
    v8 += 36;
    v6 = 0x8E38E38E38E38E39 * ((v8 - v38) >> 2);
LABEL_37:
    ++v12;
    v10 += 28;
    v11 = v9;
    if (v12 >= v9)
    {
      goto LABEL_38;
    }
  }
}

uint64_t CAHDecCatnipLgh::allocWorkBuf_SPS(CAHDecCatnipLgh *this, int *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = *a2 + 31;
  if (*a2 < -31)
  {
    v5 = *a2 + 62;
  }

  v6 = v5 >> 5;
  v7 = v4 + 31;
  if (v4 < -31)
  {
    v7 = v4 + 62;
  }

  v8 = v7 >> 5;
  v9 = 32 - __clz(v6 - 1);
  if (v6 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = 32 - __clz(v8 - 1);
  if (v8 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = ((32 << (v12 + v10)) + 127) & 0xFFFFFF80;
  v14 = 2 * v3 + 62;
  if (2 * v3 >= -31)
  {
    v14 = 2 * v3 + 31;
  }

  v15 = v14 >> 5;
  v16 = v4 + 15;
  if (v4 < -15)
  {
    v16 = v4 + 30;
  }

  v17 = v16 >> 4;
  v18 = 32 - __clz(v15 - 1);
  if (v15 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = 32 - __clz(v17 - 1);
  if (v17 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  *(this + 776) = v13;
  *(this + 777) = ((8 << (v19 + v21)) + 127) & 0xFFFFFF80;
  v22 = ((v4 + 63) >> 6) * ((v3 + 63) >> 6);
  *(this + 781) = 576 * v22;
  if (*(*(this + 32) + 2648))
  {
LABEL_28:
    v27 = 5248;
    v28 = 4;
    do
    {
      v29 = *(this + 781);
      if (v29 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v27), v29, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v34 = 136315650;
        v35 = "allocWorkBuf_SPS";
        v36 = 1024;
        v37 = 1350;
        v38 = 2080;
        v39 = "MvColo";
        v32 = MEMORY[0x277D86220];
        goto LABEL_46;
      }

      v27 += 176;
      --v28;
    }

    while (v28);
    v30 = 24 * v22;
    *(this + 785) = 24 * v22;
    v31 = 3664;
    if (!v30)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (!CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v31), v30, 7, 1, 0))
    {
LABEL_34:
      while (v31 != 4896)
      {
        v30 = *(this + 785);
        v31 += 176;
        if (v30)
        {
          goto LABEL_33;
        }
      }

      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v34 = 136315650;
    v35 = "allocWorkBuf_SPS";
    v36 = 1024;
    v37 = 1355;
    v38 = 2080;
    v39 = "segMap";
    v32 = MEMORY[0x277D86220];
  }

  else
  {
    v23 = 14848;
    v24 = 16;
    while (1)
    {
      v25 = *(this + 776);
      if (v25 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v23 - 2816), v25, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v34 = 136315650;
        v35 = "allocWorkBuf_SPS";
        v36 = 1024;
        v37 = 1334;
        v38 = 2080;
        v39 = "HdrY";
        v32 = MEMORY[0x277D86220];
        goto LABEL_46;
      }

      v26 = *(this + 777);
      if (v26)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v23), v26, 7, 1, 0))
        {
          break;
        }
      }

      v23 += 176;
      if (!--v24)
      {
        goto LABEL_28;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v34 = 136315650;
    v35 = "allocWorkBuf_SPS";
    v36 = 1024;
    v37 = 1339;
    v38 = 2080;
    v39 = "HdrC";
    v32 = MEMORY[0x277D86220];
  }

LABEL_46:
  _os_log_impl(&dword_277606000, v32, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v34, 0x1Cu);
LABEL_47:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecCatnipLgh::allocWorkBuf_PPS(CAHDecCatnipLgh *this, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(this + 32);
  v6 = *(v5 + 17800);
  v7 = *(v6 + 4);
  v8 = *(v6 + 100);
  v9 = (*(v6 + 105) + 1) & 0x1FE;
  if (v7 == 3)
  {
    v10 = 48;
  }

  else
  {
    v10 = 32;
  }

  if (!v7)
  {
    v10 = 16;
  }

  v12 = *(v6 + 108);
  v11 = *(v6 + 112);
  v13 = (v12 + 15) >> 4;
  v14 = ~(-1 << *(v6 + 96));
  v15 = v13 * ((v10 * v9) >> 3) + (v14 << 7);
  if (v15)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 117, v15, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1431;
        v27 = 2080;
        v28 = "IpAbove";
        v16 = MEMORY[0x277D86220];
LABEL_34:
        _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v23, 0x1Cu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v17 = 16 * v9;
  if ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 != 192)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 128, ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 - 192), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1434;
        v27 = 2080;
        v28 = "LfAbovePix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

LABEL_35:
      (*(*this + 160))(this, 0);
      return 0xFFFFFFFFLL;
    }

    v5 = *(this + 32);
  }

  v18 = 288 * ((v12 + 63) >> 6) + (v14 << 7);
  if (v18)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 139, v18, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1440;
        v27 = 2080;
        v28 = "LfAboveInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v19 = (v11 + 7) >> 3;
  if (v19 * v17)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 150, (v19 * v17), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1446;
        v27 = 2080;
        v28 = "LfLeftPix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v20 = ((v11 + 63) >> 2) & 0x3FFFFFF0;
  if (v20)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 161, v20, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1454;
        v27 = 2080;
        v28 = "LfLeftInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  if (CAVDDecoder::allocAVDMem(v5, this + 172, (24 * v13 + 30), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "allocWorkBuf_PPS";
      v25 = 1024;
      v26 = 1462;
      v27 = 2080;
      v28 = "SwLeftPix";
      v16 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v22 = 192 * v9 + (v19 + 2) * (((v9 >> 1) << 8) | 8);
  if (!v22)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 183, v22, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = 136315650;
    v24 = "allocWorkBuf_PPS";
    v25 = 1024;
    v26 = 1468;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecCatnipLgh::freeWorkBuf_SPS(CAHDecCatnipLgh *this)
{
  result = *(this + 32);
  if (!*(result + 2648))
  {
    v3 = 14848;
    v4 = 16;
    do
    {
      v5 = (result + v3 - 2816);
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(result, v5);
        result = *(this + 32);
        *(result + v3 - 2816) = 0;
      }

      if (*(result + v3))
      {
        CAVDDecoder::deallocAVDMem(result, (result + v3));
        result = *(this + 32);
        *(result + v3) = 0;
      }

      v3 += 176;
      --v4;
    }

    while (v4);
  }

  v6 = 5248;
  v7 = 4;
  do
  {
    if (*(result + v6))
    {
      CAVDDecoder::deallocAVDMem(result, (result + v6));
      result = *(this + 32);
      *(result + v6) = 0;
    }

    v6 += 176;
    --v7;
  }

  while (v7);
  for (i = 3664; i != 5072; i += 176)
  {
    if (*(result + i))
    {
      CAVDDecoder::deallocAVDMem(result, (result + i));
      result = *(this + 32);
      *(result + i) = 0;
    }
  }

  return result;
}

uint64_t *CAHDecCatnipLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[256])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 256);
    v2[256] = 0;
  }

  if (v2[278])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 278);
    v2[278] = 0;
  }

  if (v2[234])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 234);
    v2[234] = 0;
  }

  if (v2[300])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 300);
    v2[300] = 0;
  }

  if (v2[322])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 322);
    v2[322] = 0;
  }

  if (v2[344])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 344);
    v2[344] = 0;
  }

  if (v2[366])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 366);
    v2[366] = 0;
  }

  return this;
}

uint64_t CAHDecCatnipLgh::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 3120) = a2;
  return this;
}

void av1_fb_rel_cb(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 2016);
    if (v3)
    {
      (*(*a2 + 48))(a2, *v3, 0);

      CAVDAvxDecoder::ReleaseDisplayBuffer(a2, a1);
    }
  }
}

void CAVDAvxDecoder::ReleaseDisplayBuffer(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 && *(a2 + 2028) >= 1)
  {
    v3 = *(a2 + 2016);
    if (v3)
    {
      if (*(a1[293] + 6016) == 1)
      {
        v4 = *v3;
        v5 = 0;
      }

      else
      {
        v4 = v3[1];
        v5 = 1;
      }

      (*(*a1 + 48))(a1, v4, v5);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "ReleaseDisplayBuffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): fb->buffer is NULL!!", &v6, 0xCu);
    }

    --*(a2 + 2028);
  }
}

void CAVDAvxDecoder::CAVDAvxDecoder(CAVDAvxDecoder *this, void *a2, int a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = this + 36864;
  CAVDDecoder::CAVDDecoder(this, a2, a3);
  *v8 = &unk_2886668C8;
  *(v8 + 8240) = 0;
  v7[872] = 0;
  *(v7 + 276) = 0;
  *(v8 + 15112) = 0;
  *(v8 + 15120) = 0u;
  *(v8 + 37616) = 0u;
  *(v8 + 37744) = 0u;
  *(v8 + 37932) = 0;
  *(v8 + 37937) = 0;
  *(v8 + 37963) = 0;
  *(v8 + 37948) = 0u;
  v7[1102] = 1;
  *(v8 + 2344) = a2;
  *(v8 + 2892) = 0u;
  *(v8 + 2908) = 0;
  *(v8 + 37632) = 0u;
  *(v8 + 37648) = 0u;
  *(v8 + 37664) = 0u;
  *(v8 + 37680) = 0u;
  *(v8 + 37696) = 0u;
  *(v8 + 37712) = 0u;
  *(v8 + 37728) = 0;
  *(v8 + 2644) = 0;
  *(v7 + 262) = 0;
  *(v8 + 37760) = 0u;
  *(v8 + 37776) = 0u;
  *(v8 + 37792) = 0u;
  *(v8 + 37808) = 0u;
  *(v8 + 37824) = 0u;
  *(v8 + 37840) = 0u;
  *(v8 + 37856) = 0u;
  *(v8 + 37872) = 0u;
  *(v8 + 37888) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "CAVDAvxDecoder";
    v12 = 1024;
    v13 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): set av1 dual vp mode as %d", &v10, 0x12u);
  }

  *(this + 37916) = 0u;
  if (a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(this + 661) = v9;
  bzero(this + 24, 0x810uLL);
}

uint64_t CAVDAvxDecoder::VAInit(CAVDAvxDecoder *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = operator new(0x3CA8uLL, MEMORY[0x277D826F0]);
  if (!v2)
  {
    *(this + 1890) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): error creating parser!\n";
LABEL_29:
    _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, &v15, 0xCu);
    return 301;
  }

  v3 = v2;
  AV1_Syntax::AV1_Syntax(v2, 0x30000u);
  *(this + 1890) = v3;
  *(this + 4698) = 0;
  *(this + 4699) = 0;
  *(this + 4697) = 0;
  *(this + 9395) = 11;
  bzero(this + 15136, 0x57A8uLL);
  *(this + 4698) = this + 15136;
  *(this + 4700) = this;
  *(this + 4701) = av1_fb_rel_cb;
  v4 = operator new(0x80uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    *(this + 1891) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): Failed to create rlm!\n";
    goto LABEL_29;
  }

  v5 = v4;
  AV1_RLM::AV1_RLM(v4, 196608, this + 37576);
  *(this + 1891) = v5;
  v6 = malloc_type_calloc(0x135D8uLL, 1uLL, 0x10A0040C96D282FuLL);
  *(this + 1889) = v6;
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): m_cur_pic_info allocation failed\n";
    goto LABEL_29;
  }

  v7 = malloc_type_calloc(0x16878uLL, 1uLL, 0x10200400D038572uLL);
  *(this + 4702) = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): m_av1_header allocation failed\n";
    goto LABEL_29;
  }

  v8 = malloc_type_calloc(0x19D8uLL, 1uLL, 0x1020040A7FEC7ECuLL);
  *(this + 4718) = v8;
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): m_disp_q allocation failed\n";
    goto LABEL_29;
  }

  v8[1652] = 1;
  v9 = malloc_type_calloc(0x19D8uLL, 1uLL, 0x1020040A7FEC7ECuLL);
  *(this + 4719) = v9;
  if (!v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): m_dec_q allocation failed\n";
    goto LABEL_29;
  }

  v9[1652] = 0;
  v10 = malloc_type_malloc(0x1680uLL, 0x102004010603825uLL);
  *(this + 1030) = v10;
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): m_dec_bufs allocation failed\n";
    goto LABEL_29;
  }

  HwDecoder = CAVDAvxDecoder::allocateHwDecoder(this);
  *(this + 262) = HwDecoder;
  if (!HwDecoder)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "VAInit";
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: ERROR: %s(): Failed to create HW Decoder object!\n";
      goto LABEL_29;
    }

    return 301;
  }

  if (!(*(*HwDecoder + 16))(HwDecoder))
  {
    if ((*(**(this + 262) + 168))(*(this + 262)))
    {
      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v15 = 136315138;
    v16 = "VAInit";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: ERROR: %s(): HW Decoder failed to allocate decodeBuffer!\n";
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "VAInit";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to initialize HW Decoder object!\n", &v15, 0xCu);
  }

  return 307;
}

CAHDecIxoraAvx *CAVDAvxDecoder::allocateHwDecoder(CAVDAvxDecoder *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(this + 588);
  if (v1 <= 423)
  {
    if (v1 <= 407)
    {
      if ((v1 - 400) < 3 || v1 == 404)
      {

        return createIxoraAvxDecoder(this);
      }

      goto LABEL_37;
    }

    if ((v1 - 416) < 2)
    {

      return createDaisyAvxDecoder(this);
    }

    if (v1 == 408)
    {

      return createCatnipAvxDecoder(this);
    }

LABEL_37:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "allocateHwDecoder";
      v5 = 1024;
      v6 = v1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Invalid AVD device type %d!\n", &v3, 0x12u);
    }

    return 0;
  }

  if (v1 > 439)
  {
    switch(v1)
    {
      case 440:

        return createThymeAvxDecoder(this);
      case 448:

        return createKopsiaAvxDecoder(this);
      case 456:

        return createBorageAvxDecoder(this);
      default:
        goto LABEL_37;
    }
  }

  else if ((v1 - 432) >= 2)
  {
    if (v1 != 424)
    {
      goto LABEL_37;
    }

    return createTansyAvxDecoder(this);
  }

  else
  {

    return createHibiscusAvxDecoder(this);
  }
}

void CAVDAvxDecoder::~CAVDAvxDecoder(CAVDAvxDecoder *this)
{
  v2 = this + 36864;
  *this = &unk_2886668C8;
  for (i = 24; i != 1056; i += 8)
  {
    v4 = *(this + i);
    if (v4)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v4 + 8), 1);
      free(v4);
    }

    *(this + i) = 0;
  }

  do
  {
    v5 = *(this + i);
    if (v5)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v5 + 8), *(v5 + 169));
      free(v5);
    }

    *(this + i) = 0;
    i += 8;
  }

  while (i != 2088);
  v6 = *(this + 262);
  if (v6)
  {
    (*(*v6 + 144))(v6);
    (*(**(this + 262) + 160))(*(this + 262), 0);
    v7 = *(this + 262);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(this + 262) = 0;
  }

  v8 = *(this + 1890);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    *(this + 1890) = 0;
  }

  v9 = *(this + 1891);
  if (v9)
  {
    AV1_RLM::~AV1_RLM(v9);
    MEMORY[0x277CAEC20]();
    *(this + 1891) = 0;
  }

  if (*(v2 + 90))
  {
    *(v2 + 90) = 0;
  }

  free(*(this + 1889));
  *(this + 1889) = 0;
  free(*(v2 + 94));
  *(v2 + 94) = 0;
  free(*(v2 + 110));
  *(v2 + 110) = 0;
  free(*(v2 + 111));
  *(v2 + 111) = 0;
  free(*(this + 1030));
  *(this + 1030) = 0;

  CAVDDecoder::~CAVDDecoder(this);
}

{
  CAVDAvxDecoder::~CAVDAvxDecoder(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAVDAvxDecoder::VAStartDecode(CAVDAvxDecoder *this, unsigned __int8 *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = this + 36864;
  *v23 = 0;
  v21 = 8;
  v22 = 1;
  *v20 = 0;
  *(this + 2716) = 0;
  AppleAVDCommandBuilder::getWidthAndHeight(*(this + 293), &v23[1], v23);
  AppleAVDCommandBuilder::getLumaDepthMinus8(*(this + 293), &v20[1]);
  AppleAVDCommandBuilder::getChromaFormat(*(this + 293), v20);
  v7 = v23[0];
  *(this + 728) = v23[1];
  *(this + 729) = v7;
  v8 = v20[0];
  *(this + 730) = v20[1];
  *(this + 731) = v8;
  AV1_Syntax::Set_File_Type(*(this + 1890), 0);
  AV1_Syntax::Set_Is_Annexb(*(this + 1890), *(this + 11));
  AV1_Syntax::Set_Operating_Point(*(this + 1890), 0);
  AV1_Syntax::Set_Output_All_Layers(*(this + 1890), *(v6 + 94), 1);
  AV1_RLM::Assign_Cur_Frame_New_FB(*(this + 1891), *(v6 + 94) + 1800);
  if (a3 < 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "VAStartDecode";
      v26 = 1024;
      v27 = v23[1];
      v28 = 1024;
      v29 = v23[0];
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s buffer length == 0.  Copying dimensions from FigVideoDimensions %d %d", buf, 0x18u);
    }

    v14 = v23[0];
    v13 = v23[1];
    v15 = *(v6 + 94);
    v15[541] = v23[1];
    v15[542] = v14;
    v15[10] = v13;
    v15[11] = v14;
    v16 = 1;
    v17 = 8;
  }

  else
  {
    if (AV1_Syntax::Parse_Header(*(this + 1890), a2, a3, *(v6 + 94), 1) <= 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "virtual int CAVDAvxDecoder::VAStartDecode(unsigned char *, int)";
        v11 = MEMORY[0x277D86220];
        v12 = "AppleAVD: %s: parse av1 header error\n";
        goto LABEL_17;
      }

LABEL_18:
      AV1_RLM::Swap_Frame_Bufs(*(this + 1891), *(v6 + 94), 0);
      return 0xFFFFFFFFLL;
    }

    Frame_Size_Override_Flag = AV1_Syntax::Get_Frame_Size_Override_Flag(*(this + 1890));
    *(this + 2704) |= Frame_Size_Override_Flag;
    ChromaFormat = CAVDAvxDecoder::getChromaFormat(Frame_Size_Override_Flag, *(v6 + 94) + 32, &v22);
    if (ChromaFormat)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "virtual int CAVDAvxDecoder::VAStartDecode(unsigned char *, int)";
        v11 = MEMORY[0x277D86220];
        v12 = "AppleAVD: %s: fail to get chroma format idc from parsed header\n";
LABEL_17:
        _os_log_impl(&dword_277606000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (CAVDAvxDecoder::getBitDepth(ChromaFormat, *(v6 + 94) + 32, &v21))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "virtual int CAVDAvxDecoder::VAStartDecode(unsigned char *, int)";
        v11 = MEMORY[0x277D86220];
        v12 = "AppleAVD: %s: fail to get bitdepth from parsed header\n";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v15 = *(v6 + 94);
    v17 = v21;
    v16 = v22;
  }

  *(v6 + 272) = v15[*(v6 + 271) + 38];
  CAVDAvxDecoder::copySeqParams(this, (v6 + 896), v15);
  *(v6 + 112) = *(v6 + 988);
  v6[928] = v16;
  v6[930] = v17;
  v6[929] = v17;
  CAVDAvxDecoder::copySeqParams(this, (v6 + 768), *(v6 + 94));
  v18 = *(v6 + 860);
  *(v6 + 96) = v18;
  *(this + 364) = vmax_u32(v18, *(this + 2912));
  AV1_RLM::Swap_Frame_Bufs(*(this + 1891), *(v6 + 94), 0);
  bzero(*(v6 + 94), 0x16878uLL);
  *(v6 + 1092) = *(v6 + 860);
  if (CAVDDecoder::isADSDecryption(this))
  {
    *(v6 + 262) = 0;
  }

  result = 0;
  *(this + 685) = 0;
  *(this + 2716) = 1;
  return result;
}

uint64_t CAVDAvxDecoder::getChromaFormat(uint64_t a1, uint64_t a2, int *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a2 + 81))
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  v5 = *(a2 + 104);
  if (*(a2 + 100) == 1)
  {
    result = 0;
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    result = 0;
    v6 = 3;
LABEL_12:
    *a3 = v6;
    return result;
  }

  *a3 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 100);
    v8 = *(a2 + 104);
    v9 = 136315650;
    v10 = "int CAVDAvxDecoder::getChromaFormat(av1_sequence_header *, int *)";
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: subsampling x/y %d/%d, unsupported chroma format idc\n", &v9, 0x18u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAVDAvxDecoder::getBitDepth(uint64_t a1, uint64_t a2, int *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 76);
  switch(v3)
  {
    case 12:
      result = 0;
      v5 = 4;
      goto LABEL_7;
    case 10:
      result = 0;
      v5 = 2;
LABEL_7:
      *a3 = v5;
      return result;
    case 8:
      result = 0;
      *a3 = 0;
      break;
    default:
      *a3 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "int CAVDAvxDecoder::getBitDepth(av1_sequence_header *, int *)";
        v8 = 1024;
        v9 = v3;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: bit depth %d not recognized\n", &v6, 0x12u);
      }

      return 0xFFFFFFFFLL;
  }

  return result;
}

double CAVDAvxDecoder::copySeqParams(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = *(a3 + 2164);
    *a2 = result;
    *(a2 + 32) = *(a1 + 2924);
    v4 = *(a1 + 2920);
    *(a2 + 33) = v4;
    *(a2 + 34) = v4;
    if (*(a3 + 60) == 15)
    {
      v5 = 128;
    }

    else
    {
      v5 = 64;
    }

    *(a2 + 28) = v5;
    *(a2 + 89) = *(a3 + 128);
    v7 = *(a3 + 40);
    v6 = *(a3 + 44);
    *(a2 + 92) = v7;
    *(a2 + 96) = v6;
    if (*(a1 + 10) == 1 && v7 == 0x10000 && v6 == 0x10000)
    {
      *&result = 0x87000000F00;
      *(a2 + 92) = 0x87000000F00;
      *a2 = 0x87000000F00;
    }
  }

  return result;
}

uint64_t CAVDAvxDecoder::VAStopDecode(AV1_RLM **this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 2716))
  {
    AV1_RLM::flush_RLM(this[1891], this[4702] + 1800);
    v3 = -1;
    while (!CAVDAvxDecoder::getDispFrameParams(this, &v3))
    {
      (*(*this + 11))(this, v5);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "VAStopDecode";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: bailing out of %s because start didn't complete", &v3, 0xCu);
    }

    return 305;
  }
}

uint64_t CAVDAvxDecoder::getDispFrameParams(uint64_t a1, void *a2)
{
  v4 = a1 + 36864;
  memcpy(__dst, a2, sizeof(__dst));
    ;
  }

  v5 = *(v4 + 880);

  return CAVDAvxDecoder::removeFrame(a1, v5, a2);
}

uint64_t CAVDAvxDecoder::initPicture(CAVDAvxDecoder *this, unsigned int a2)
{
  v111 = *MEMORY[0x277D85DE8];
  v4 = this + 36864;
  v86 = 0;
  ChromaFormat = CAVDAvxDecoder::getChromaFormat(this, *(this + 4702) + 32, &v86 + 1);
  if (ChromaFormat)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "int CAVDAvxDecoder::initPicture(uint32_t)";
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s: failed to get chroma format idc from parsed header\n";
LABEL_10:
      v10 = buf;
LABEL_11:
      v11 = 12;
LABEL_12:
      _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, v7, v10, v11);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = HIDWORD(v86);
  v9 = *(*(this + 1889) + 56);
  if (HIDWORD(v86) != v9)
  {
    ChromaFormat = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (ChromaFormat)
    {
      *buf = 136315650;
      *&buf[4] = "initPicture";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ChrFmt changed: %d vs %d", buf, 0x18u);
    }
  }

  if (CAVDAvxDecoder::getBitDepth(ChromaFormat, *(v4 + 94) + 32, &v86))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "int CAVDAvxDecoder::initPicture(uint32_t)";
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s: failed to get bitdepth from parsed header\n";
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }

  v13 = v86;
  v14 = *(*(this + 1889) + 57);
  if (v86 != v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "initPicture";
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v14;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bd changed: %d vs %d", buf, 0x18u);
  }

  CAVDAvxDecoder::copySeqParams(this, buf, *(v4 + 94));
  if (*(v4 + 268) && ((v15 = *buf, v16 = *(v4 + 224), *buf > v16) || *&buf[4] > *(v4 + 225) || v106 > v4[928] || BYTE1(v106) > v4[929] || BYTE2(v106) > v4[930] || *&buf[28] > *(v4 + 462)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v99 = 136315650;
      v100 = "initPicture";
      v101 = 1024;
      v102 = v15;
      v103 = 1024;
      v104 = v16;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): spsChanged - width : %d vs %d", v99, 0x18u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v4 + 225);
      *v99 = 136315650;
      v100 = "initPicture";
      v101 = 1024;
      v102 = *&buf[4];
      v103 = 1024;
      v104 = v17;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): spsChanged - height: %d vs %d", v99, 0x18u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v4[928];
      *v99 = 136315650;
      v100 = "initPicture";
      v101 = 1024;
      v102 = v106;
      v103 = 1024;
      v104 = v18;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): spsChanged - ch_idc: %d vs %d", v99, 0x18u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v4[929];
      *v99 = 136315650;
      v100 = "initPicture";
      v101 = 1024;
      v102 = BYTE1(v106);
      v103 = 1024;
      v104 = v19;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): spsChanged - bdY-8 : %d vs %d", v99, 0x18u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v4[930];
      *v99 = 136315650;
      v100 = "initPicture";
      v101 = 1024;
      v102 = BYTE2(v106);
      v103 = 1024;
      v104 = v20;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): spsChanged - bdC-8 : %d vs %d", v99, 0x18u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v4 + 462);
      *v99 = 136315650;
      v100 = "initPicture";
      v101 = 1024;
      v102 = *&buf[28];
      v103 = 1024;
      v104 = v21;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): spsChanged - maxBlk: %d vs %d", v99, 0x18u);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v13 == v14)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (v8 != v9)
  {
    v23 = 1;
  }

  if (a2 >= 2)
  {
    if (v23)
    {
      v24 = AppleAVDCommandBuilder::waitNumInFlight(*(this + 293), 1u);
      if (v24)
      {
        v25 = v24;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *v99 = 136315394;
        v100 = "initPicture";
        v101 = 1024;
        v102 = v25;
        v6 = MEMORY[0x277D86220];
        v7 = "AppleAVD: WARNING: %s(): timeout status: %d";
        v10 = v99;
        goto LABEL_77;
      }
    }
  }

  if (((*(v4 + 268) != 0) & ~v22) == 0)
  {
    *(v4 + 112) = vmax_u32(*(v4 + 896), *buf);
    v26 = v4[928];
    if (v26 <= v106)
    {
      LOBYTE(v26) = v106;
    }

    v4[928] = v26;
    v27 = v4[929];
    if (v27 <= BYTE1(v106))
    {
      LOBYTE(v27) = BYTE1(v106);
    }

    v4[929] = v27;
    v28 = v4[930];
    if (v28 <= BYTE2(v106))
    {
      LOBYTE(v28) = BYTE2(v106);
    }

    v4[930] = v28;
    v29 = *(v4 + 462);
    if (v29 <= *&buf[28])
    {
      LOWORD(v29) = *&buf[28];
    }

    *(v4 + 462) = v29;
    *(v4 + 988) = vmax_u32(*(v4 + 988), *(v4 + 860));
    if (v22)
    {
      (*(**(this + 262) + 144))(*(this + 262));
    }

    if ((*(**(this + 262) + 136))(*(this + 262), v4 + 896))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *v99 = 136315138;
      v100 = "int CAVDAvxDecoder::initPicture(uint32_t)";
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s fail to allocate work buffer for sps\n";
      v10 = v99;
      goto LABEL_11;
    }

    *(v4 + 268) = 1;
    if (*(v4 + 90))
    {
      v30 = this + 8248;
      v31 = this + 12944;
      v32 = -22440;
      v33 = 496;
      do
      {
        if (*v30)
        {
          v34 = *(v4 + 90) + v32;
          *(v34 + 22568) = *v30;
          v35 = *(v30 + 5);
          v36 = *(v30 + 6);
          v37 = *(v30 + 4);
          *(v34 + 22624) = *(v30 + 3);
          *(v34 + 22672) = v36;
          *(v34 + 22656) = v35;
          *(v34 + 22640) = v37;
          v38 = *(v30 + 9);
          v39 = *(v30 + 10);
          v40 = *(v30 + 8);
          *(v34 + 22688) = *(v30 + 7);
          *(v34 + 22736) = v39;
          *(v34 + 22720) = v38;
          *(v34 + 22704) = v40;
          v41 = *v30;
          v42 = *(v30 + 1);
          *(v34 + 22608) = *(v30 + 2);
          *(v34 + 22592) = v42;
          *(v34 + 22576) = v41;
        }

        if (*v31)
        {
          v43 = *(v4 + 90) + v32;
          *(v43 + 22752) = *v31;
          v44 = *(v31 + 6);
          v46 = *(v31 + 3);
          v45 = *(v31 + 4);
          *(v43 + 22840) = *(v31 + 5);
          *(v43 + 22856) = v44;
          *(v43 + 22808) = v46;
          *(v43 + 22824) = v45;
          v47 = *(v31 + 10);
          v49 = *(v31 + 7);
          v48 = *(v31 + 8);
          *(v43 + 22904) = *(v31 + 9);
          *(v43 + 22920) = v47;
          *(v43 + 22872) = v49;
          *(v43 + 22888) = v48;
          v50 = *v31;
          v51 = *(v31 + 2);
          *(v43 + 22776) = *(v31 + 1);
          *(v43 + 22792) = v51;
          *(v43 + 22760) = v50;
          v52 = *(v4 + 90);
          *(v52 + v33) = -1;
          *(v52 + v32 + 22944) = 0;
        }

        v30 += 176;
        v31 += 176;
        v33 += 2040;
        v32 += 2040;
      }

      while (v32);
    }
  }

  v53 = *(this + 1889);
  *(v53 + 8) = *(*(v4 + 94) + 2176);
  v54 = *&buf[16];
  *(v53 + 56) = v106;
  *(v53 + 120) = v110;
  *(v53 + 40) = v54;
  v55 = *buf;
  *(v53 + 24) = *buf;
  v56 = v108;
  *(v53 + 104) = v109;
  *(v53 + 88) = v56;
  *(v53 + 72) = v107;
  *(this + 2352) = v55;
  v57 = v106;
  v58 = v107;
  *(this + 2353) = *&buf[16];
  *(this + 2354) = v57;
  v59 = v108;
  *(this + 2357) = v109;
  *(this + 4716) = v110;
  *(this + 2356) = v59;
  *(this + 2355) = v58;
  (*(**(this + 262) + 280))();
  if (*(v4 + 267) && (*(**(this + 262) + 288))(*(this + 262), *(this + 1889) + 79236, v99))
  {
    v22 = 1;
  }

  if (a2 >= 2)
  {
    if (v22)
    {
      v60 = AppleAVDCommandBuilder::waitNumInFlight(*(this + 293), 1u);
      if (v60)
      {
        v61 = v60;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *v87 = 136315394;
        v88 = "initPicture";
        v89 = 1024;
        v90 = v61;
        v6 = MEMORY[0x277D86220];
        v7 = "AppleAVD: WARNING: %s(): timeout status: %d";
        v10 = v87;
LABEL_77:
        v11 = 18;
        goto LABEL_12;
      }
    }
  }

  if (((*(v4 + 267) != 0) & ~v22) == 0)
  {
    if (v22)
    {
      (*(**(this + 262) + 160))(*(this + 262), v99);
    }

    if ((*(**(this + 262) + 152))(*(this + 262), *(this + 1889) + 24, 0, v99))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v87 = 136315138;
        v88 = "int CAVDAvxDecoder::initPicture(uint32_t)";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s fail to allocate work buffer for pps\n", v87, 0xCu);
      }

      (*(**(this + 262) + 160))(*(this + 262), 0);
      v62 = *(this + 1889) + 79236;
      *(v62 + 48) = 0;
      *(v62 + 16) = 0u;
      *(v62 + 32) = 0u;
      *v62 = 0u;
      *(v4 + 267) = 0;
      return 0xFFFFFFFFLL;
    }

    *(v4 + 267) = 1;
  }

  v85 = v13;
  memcpy((*(this + 1889) + 136), (*(v4 + 94) + 13928), 0x13210uLL);
  v63 = *(v4 + 94);
  v64 = *(this + 1889);
  *(v64 + 128) = (*(v63 + 1868) & 0xFFFFFFFD) == 0;
  v65 = *(v63 + 2284);
  if (*(v63 + 2284) && (v66 = *(v63 + 1912)) != 0 && ((v67 = *(v63 + 1920), v68 = *(v67 + 716), v68 != *(v66 + 716)) || *(v67 + 720) != *(v66 + 720)))
  {
    v84 = *(v66 + 716);
    v69 = 1;
    *(v64 + 16) = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v73 = *(v67 + 720);
      v74 = *(v66 + 720);
      *v87 = 136316418;
      v88 = "initPicture";
      v89 = 1024;
      v90 = v65;
      v91 = 1024;
      v92 = v68;
      v93 = 1024;
      v94 = v73;
      v95 = 1024;
      v96 = v84;
      v97 = 1024;
      v98 = v74;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): resolution_change=1, segEn=%d, mi curr %4d x %4d, prev %4d x %4d", v87, 0x2Au);
      v64 = *(this + 1889);
      v63 = *(v4 + 94);
      v69 = *(v63 + 2284);
    }
  }

  else
  {
    *(v64 + 16) = 0;
    v69 = v65;
  }

  *(v64 + 79316) = 0;
  *(v64 + 79300) = 0u;
  v70 = *(v63 + 1920);
  *(v70 + 504) = 0;
  if (v69)
  {
    v71 = *(v63 + 1912);
    if (v71)
    {
      v72 = *(v71 + 504) == 0;
    }

    else
    {
      v72 = 1;
    }

    if (*(v64 + 128) & 1) != 0 || ((*(v63 + 1940) | v72))
    {
      *(v64 + 79300) = 1;
    }

    else
    {
      v78 = *(v64 + 16);
      *(v64 + 79300) = v78;
      if (!v78)
      {
        v79 = *(v71 + 504);
        *(v70 + 504) = v79;
        *(v64 + 79304) = v79;
      }
    }

    if (*(v63 + 2285))
    {
      *(v70 + 496) = *(v70 + 2024);
      *(v70 + 504) = v70 + 312;
      *(v64 + 79312) = v70 + 312;
    }
  }

  *(v64 + 56) = v8;
  *(v64 + 58) = v85;
  *(v64 + 57) = v85;
  *(v64 + 78496) = 0;
  v75 = *&vadd_s32(*(v63 + 2164), 0x100000001) & 0xFFFFFFFEFFFFFFFELL;
  *(v64 + 78488) = 0;
  *(v64 + 78500) = vadd_s32(v75, -1);
  if (CAVDAvxDecoder::getSWRStride(this, v75, v85, v85, subWidth[v8]))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *v87 = 136315138;
    v88 = "int CAVDAvxDecoder::initPicture(uint32_t)";
    v6 = MEMORY[0x277D86220];
    v7 = "AppleAVD: %s fail to get SWR stride for the picture\n";
    goto LABEL_118;
  }

  CAVDAvxDecoder::getMotionFieldInfo(this);
  v76 = *(*(v4 + 94) + 3164) - 2;
  if (v76 > 6)
  {
    v77 = 0;
  }

  else
  {
    v77 = dword_27775C17C[v76];
  }

  *(*(this + 1889) + 79200) = v77;
  if (CAVDAvxDecoder::getDeltaLfRes(this))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *v87 = 136315138;
    v88 = "int CAVDAvxDecoder::initPicture(uint32_t)";
    v6 = MEMORY[0x277D86220];
    v7 = "AppleAVD: %s fail to get delta lf res\n";
    goto LABEL_118;
  }

  if (CAVDAvxDecoder::getRestorationUnitSize(this, 0) || CAVDAvxDecoder::getRestorationUnitSize(this, 1) || CAVDAvxDecoder::getRestorationUnitSize(this, 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *v87 = 136315138;
    v88 = "int CAVDAvxDecoder::initPicture(uint32_t)";
    v6 = MEMORY[0x277D86220];
    v7 = "AppleAVD: %s fail to get restoration unit size\n";
    goto LABEL_118;
  }

  *(*(this + 1889) + 79224) = AV1_RLM::Get_Ref_Pic_List(*(this + 1891));
  Cur_Frame_Context_Info = AV1_Syntax::Get_Cur_Frame_Context_Info(*(this + 1890));
  v81 = *(this + 1889) + 77824;
  *(*(this + 1889) + 79288) = Cur_Frame_Context_Info;
  if (!Cur_Frame_Context_Info)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *v87 = 136315138;
    v88 = "int CAVDAvxDecoder::initPicture(uint32_t)";
    v6 = MEMORY[0x277D86220];
    v7 = "AppleAVD: %s(): fail to get probs info for current frame\n";
LABEL_118:
    v10 = v87;
    goto LABEL_11;
  }

  v82 = (*(v4 + 90) + 2024);
  v83 = 11;
  while (Cur_Frame_Context_Info != *(v82 - 8))
  {
    v82 += 510;
    if (!--v83)
    {
      goto LABEL_127;
    }
  }

  *(v81 + 1472) = *v82;
LABEL_127:
  result = 0;
  if (*(this + 10) == 1)
  {
    *(this + 736) = 1;
  }

  return result;
}

uint64_t CAVDAvxDecoder::getSWRStride(CAVDAvxDecoder *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(this + 661);
  if (!v5)
  {
    v11 = 0;
    v12 = 0;
LABEL_23:
    v14 = 0;
    v16 = *(this + 1889);
    *(v16 + 78508) = v12;
    if (!*(v16 + 56))
    {
      v11 = 0;
    }

    *(v16 + 78512) = v11;
    return v14;
  }

  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (v6 + 1) & 0xFFFFFFFE;
  if (v5 == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = (v7 + 7) & 0xFFFFFFF8;
  }

  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v15 = 2 * a2;
      a2 = (2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8;
      v10 = (2 * ((3435973837u * (v15 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
      goto LABEL_22;
    }

    if (v8 != 8)
    {
      goto LABEL_16;
    }

    v13 = 4 * a2;
    a2 *= 2;
LABEL_20:
    v10 = v13 / a5;
    goto LABEL_22;
  }

  if (!v8)
  {
    v13 = 2 * a2;
    goto LABEL_20;
  }

  if (v8 == 2)
  {
    v9 = 2 * a2;
    a2 = (2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC;
    v10 = (2 * ((2863311531u * (v9 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_22:
    v12 = (a2 + 63) & 0xFFFFFFC0;
    v11 = (v10 + 63) & 0xFFFFFFC0;
    goto LABEL_23;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "int CAVDAvxDecoder::getSWRStride(uint32_t, uint32_t, uint32_t, uint32_t)";
    v20 = 1024;
    v21 = v8 + 8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: bad swr bit depth %d\n", &v18, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

void CAVDAvxDecoder::getMotionFieldInfo(CAVDAvxDecoder *this)
{
  bzero((*(this + 1889) + 78528), 0x2A0uLL);
  v2 = 0;
  v3 = 78532;
  do
  {
    v4 = *(this + 4702);
    v5 = *(v4 + v2 + 1928);
    if (*(v4 + v2 + 1928))
    {
      v6 = *(*(v4 + 1920) + 8 * *(v4 + v2 + 1928) + 64);
    }

    else
    {
      v6 = 0;
    }

    if (!*(v4 + 1957))
    {
      v5 = 0;
    }

    v7 = *(this + 1889);
    v8 = v7 + 78528;
    *(v7 + 78528 + 224 * v2) = v5;
    if (v6)
    {
      v9 = 0;
      v10 = v7 + v3;
      do
      {
        *(v10 + v9) = *(v6 + 8 + v9);
        v9 += 4;
      }

      while (v9 != 28);
      v11 = v8 + 224 * v2;
      *(v11 + 32) = *(v6 + 128);
      v12 = *(v6 + 200);
      v13 = *(v6 + 216);
      v14 = *(v6 + 232);
      *(v11 + 88) = *(v6 + 184);
      *(v11 + 136) = v14;
      *(v11 + 120) = v13;
      *(v11 + 104) = v12;
      v15 = *(v6 + 264);
      v16 = *(v6 + 280);
      v17 = *(v6 + 296);
      *(v11 + 152) = *(v6 + 248);
      *(v11 + 200) = v17;
      *(v11 + 184) = v16;
      *(v11 + 168) = v15;
      v18 = *(v6 + 136);
      v19 = *(v6 + 152);
      *(v11 + 72) = *(v6 + 168);
      *(v11 + 56) = v19;
      *(v11 + 40) = v18;
      *(*(this + 1889) + 224 * v2 + 78744) = *(v6 + 2024);
    }

    ++v2;
    v3 += 224;
  }

  while (v2 != 3);
}

uint64_t CAVDAvxDecoder::getDeltaLfRes(CAVDAvxDecoder *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4702);
  if (*(v1 + 1956))
  {
    v2 = 0;
LABEL_8:
    v5 = 0;
    *(*(this + 1889) + 79204) = v2;
    return v5;
  }

  v2 = *(v1 + 3160);
  if (!v2)
  {
    goto LABEL_8;
  }

  v2 = *(v1 + 3168);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 3172);
  v4 = v3 - 1;
  if (v3 - 1) < 8 && ((0x8Bu >> v4))
  {
    v2 = dword_27775C198[v4];
    goto LABEL_8;
  }

  *(*(this + 1889) + 79204) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "int CAVDAvxDecoder::getDeltaLfRes()";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid delta lf res %d\n", &v7, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAVDAvxDecoder::getRestorationUnitSize(CAVDAvxDecoder *this, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(this + 4702);
  if ((*(v3 + 1963) & 1) != 0 || (*(v3 + 1956) & 1) != 0 || !*(v3 + 100) || *(v3 + 2240) < a2)
  {
    result = 0;
    *(*(this + 1889) + 4 * a2 + 79208) = 0;
    return result;
  }

  v5 = (v3 + 3460);
  v6 = *(v3 + 3460 + 4 * a2);
  v7 = *(this + 1889) + 79208;
  switch(v6)
  {
    case 64:
      result = 0;
      v8 = 1;
      goto LABEL_13;
    case 128:
      result = 0;
      v8 = 2;
      goto LABEL_13;
    case 256:
      result = 0;
      v8 = 3;
LABEL_13:
      *(v7 + 4 * a2) = v8;
      return result;
  }

  result = 0;
  *(v7 + 4 * a2) = 0;
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v5;
      v10 = 136315394;
      v11 = "int CAVDAvxDecoder::getRestorationUnitSize(int)";
      v12 = 1024;
      v13 = v9;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid restoration unit size for Y plane %d\n", &v10, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAVDAvxDecoder::VADecodeFrameHeader(CAVDAvxDecoder *this, unsigned __int8 *a2, int a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = this + 36864;
  v9 = AV1_RLM::Assign_Cur_Frame_New_FB(*(this + 1891), *(this + 4702) + 1800);
  *(v8 + 95) = v9;
  if (v9)
  {
    v8[1100] = 0;
    v10 = AV1_Syntax::Parse_Header(*(this + 1890), a2, a3, *(v8 + 94), 0);
    if (v10 <= 0)
    {
      v11 = v10;
      AV1_RLM::Swap_Frame_Bufs(*(this + 1891), *(v8 + 94), 0);
      if (v11 == -2 || v11 == 0)
      {
        v8[1100] = 1;
      }

      else if (v11 == -1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: fail to parse av1 header\n", &v18, 2u);
        }

        return 305;
      }
    }

    *(this + 2704) |= AV1_Syntax::Get_Frame_Size_Override_Flag(*(this + 1890));
    v8[1101] = 0;
    v14 = *(v8 + 94);
    v15 = *(v14 + 2176);
    if (*(v8 + 273) == v15)
    {
      v16 = *(v8 + 274);
      v17 = *(v14 + 2180);
      if (v16 == v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *(v14 + 2180);
    }

    v8[1101] = 1;
    v16 = v17;
LABEL_21:
    result = 0;
    *(v8 + 273) = v15;
    *(v8 + 274) = v16;
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "VADecodeFrameHeader";
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): [ERROR] fno: %8d Assign_Cur_Frame_New_FB return NULL", &v18, 0x12u);
  }

  return 304;
}

uint64_t CAVDAvxDecoder::VADecodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v153 = *MEMORY[0x277D85DE8];
  v8 = a1 + 36864;
  v9 = *(a1 + 2344);
  v10 = *(v9 + 6248);
  *(a1 + 37968) = *(v9 + 5668);
  if (*(a1 + 37964))
  {
    return 409;
  }

  if (*(a1 + 2725))
  {
    v18 = *(a1 + 37616);
    if (*(v18 + 1868))
    {
      AV1_RLM::Swap_Frame_Bufs(*(a1 + 15128), v18, 0);
      goto LABEL_16;
    }

    *(a1 + 2725) = 0;
  }

  v19 = *(a1 + 37616);
  if (*(a1 + 2892) == 1 && (*(v19 + 1868) & 0xFFFFFFFD) != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = "VADecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 1024;
    *&buf[20] = a4;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s() : clientID: %2d. For AVIFs, only intra-frames are supported, frameNum : %d";
    goto LABEL_11;
  }

  v138 = a2;
  v137 = v10;
  *v141 = 0;
  CAVDAvxDecoder::getBitDepth(a1, v19 + 32, v141);
  if (CAVDAvxDecoder::checkVideoResolution(a1, *(*(v8 + 752) + 2176), *(*(v8 + 752) + 2180), *v141))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v23 = *(a1 + 2912);
    v24 = *(a1 + 2916);
    v25 = *(v8 + 752);
    v26 = *(v25 + 2176);
    LODWORD(v25) = *(v25 + 2180);
    *buf = 136316674;
    *&buf[4] = "VADecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 1024;
    *&buf[20] = a4;
    *&buf[24] = 1024;
    *&buf[26] = v23;
    *&buf[30] = 1024;
    *&buf[32] = v24;
    *&buf[36] = 1024;
    *&buf[38] = v26;
    *&buf[42] = 1024;
    *&buf[44] = v25;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s(): clientID : %2d, #### <WARNING> Frame resolutions exceed allocated storage frameNum:%d old (%dx%d) new (%dx%d)";
    v22 = 48;
    goto LABEL_15;
  }

  if (*(a1 + 10) == 1 && CAVDDecoder::isADSDecryption(a1))
  {
    *(a1 + 2944) = -1;
  }

  v29 = *(v8 + 752);
  v30 = *(a1 + 2936);
  v31 = *(a1 + 2928);
  v32 = *(a1 + 2944);
  v140 = a4;
  v136 = a5;
  if (v32 == -1 && (*(a1 + 10) & 1) != 0)
  {
    v33 = *(v29 + 13928);
    if (v33)
    {
      v34 = 0;
      v35 = 0;
      v36 = *(v29 + 13932);
      do
      {
        if (v36)
        {
          v37 = 0;
          v38 = v29 + 88184 + v34;
          v39 = v29 + 79992 + 2 * v34;
          do
          {
            *(v39 + 2 * v37) = 0;
            *(v38 + v37) = 1;
            v36 = *(v29 + 13932);
            ++v34;
            if (v37 > 0x3E)
            {
              break;
            }

            ++v37;
          }

          while (v37 < v36);
          v33 = *(v29 + 13928);
        }

        if (v35 > 0x3E)
        {
          break;
        }

        ++v35;
      }

      while (v35 < v33);
    }

    goto LABEL_61;
  }

  if (v32)
  {
    if (v31)
    {
      if (v30)
      {
        goto LABEL_43;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "CalculateTileSkip";
        v63 = MEMORY[0x277D86220];
        v64 = "AppleAVD: ERROR: %s(): protectedRegionOffsets is NULL\n";
        goto LABEL_89;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "CalculateTileSkip";
      v63 = MEMORY[0x277D86220];
      v64 = "AppleAVD: ERROR: %s(): protectedRegionSizes is NULL\n";
LABEL_89:
      _os_log_impl(&dword_277606000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: WARNING:  tile skip calculation has failed\n";
    goto LABEL_92;
  }

LABEL_43:
  v40 = *(v29 + 13928);
  if (v40)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = *(v29 + 13932);
    do
    {
      if (v44)
      {
        v45 = 0;
        v46 = v29 + 88184 + v42;
        v47 = v29 + 79992 + 2 * v42;
        do
        {
          *(v47 + 2 * v45) = 0;
          *(v46 + v45) = 0;
          if (v32 > v43 + v45)
          {
            v48 = *(v31 + 4 * v43 + 4 * v45);
            if (v48)
            {
              v49 = *(v29 + 46704 + 8 * v42 + 8 * v45);
              if (v49 >= v48)
              {
                v50 = *(v30 + 4 * v43 + 4 * v45);
                v51 = *(v29 + 13936 + 8 * v42 + 8 * v45);
                v52 = v49 + v51;
                v53 = (v50 + v48);
                if (v50 - v51 <= 1023 && v52 >= v53)
                {
                  *(v47 + 2 * v45) = v50 - v51;
                  *(v46 + v45) = 1;
                }
              }
            }
          }

          v55 = v45 + 1;
          v44 = *(v29 + 13932);
          if (v45 > 0x3E)
          {
            break;
          }

          ++v45;
        }

        while (v55 < v44);
        v43 += v55;
        v42 += v55;
        v40 = *(v29 + 13928);
        a4 = v140;
      }

      if (v41 > 0x3E)
      {
        break;
      }

      ++v41;
    }

    while (v41 < v40);
  }

LABEL_61:
  if (v136 == -1)
  {
    v56 = 0;
    *(v8 + 1024) = 0;
    *(v8 + 1016) = 0xFFFFFFFF00000000;
  }

  else
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, v136, buf, 1))
    {
      *(v8 + 1024) = 0;
      a4 = v140;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 136315650;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 1024;
      *&buf[20] = v140;
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: %s() : clientID: %2d Error getting display buffer!, frameNum : %d";
LABEL_11:
      v22 = 24;
LABEL_15:
      _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
      goto LABEL_16;
    }

    *(v8 + 1016) = 1;
    *(v8 + 1020) = v136;
    v56 = *buf;
    *(v8 + 1024) = *buf + 8;
    a4 = v140;
  }

  *buf = 0;
  v57 = (*(*a1 + 112))(a1, a6, buf, 0);
  if ((v57 & 1) == 0)
  {
    *(v8 + 1008) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = "VADecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = 0;
    *&buf[18] = 1024;
    *&buf[20] = a4;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s() : clientID: %2d Error getting decoder buffer!, frameNum : %d";
    goto LABEL_11;
  }

  *(v8 + 1000) = 0;
  *(v8 + 1004) = a6;
  v58 = *buf;
  v59 = *buf + 8;
  *(a1 + 2088) = *buf;
  *(v8 + 1008) = v59;
  *(v58 + 204) = *(a1 + 2744);
  v60 = *(v8 + 1004);
  *(a1 + 2648) = *(v58 + 168);
  v61 = *(v8 + 1024);
  if (*(a1 + 9) == 1)
  {
    if (v61)
    {
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (!v61)
  {
LABEL_77:
    DisplayMode = 0;
    goto LABEL_78;
  }

  DisplayMode = CAVDAvxDecoder::getDisplayMode(v57, *(v61 + 148));
  v59 = v61;
LABEL_78:
  *(a1 + 2644) = DisplayMode;
  v61 = v59;
LABEL_79:
  (*(*a1 + 104))(a1, 22, v61 + 148);
  v65 = *(v8 + 752);
  if (*(v65 + 1800))
  {
    AV1_RLM::Update_Frame_Bufs(*(a1 + 15128), v65, *(a1 + 8240) + 384 * *(v8 + 1004));
    AV1_RLM::Swap_Frame_Bufs(*(a1 + 15128), *(v8 + 752), 1);
    Disp_Buf = AV1_RLM::Get_Disp_Buf(*(a1 + 15128));
    if (Disp_Buf)
    {
      v67 = Disp_Buf;
      if (*(Disp_Buf + 2016))
      {
        CAVDAvxDecoder::insertFrame(Disp_Buf, *(v8 + 880), Disp_Buf);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v68 = *(v67 + 2024);
        *buf = 136315394;
        *&buf[4] = "VADecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v68;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): show_existing - frame_to_show w/ nil buffer for buf_idx=%4d", buf, 0x12u);
      }
    }

    CAVDAvxDecoder::sendDisplayBuffer(a1, a4);
    (*(*a1 + 48))(a1, v60, 0);
    if (*(*(a1 + 2344) + 6016) == 1)
    {
      v69 = a6;
      v70 = 0;
    }

    else
    {
      v69 = v136;
      v70 = 1;
    }

    (*(*a1 + 48))(a1, v69, v70);
    return 51;
  }

  if (CAVDAvxDecoder::initPicture(a1, a4))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "virtual int CAVDAvxDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: fail to init picture\n", buf, 0xCu);
    }

    return 305;
  }

  if (a8)
  {
    v71 = *(a1 + 37632);
    v72 = *(a1 + 37664);
    *(a8 + 16) = *(a1 + 37648);
    *(a8 + 32) = v72;
    *a8 = v71;
    v73 = *(a1 + 37680);
    v74 = *(a1 + 37696);
    v75 = *(a1 + 37712);
    *(a8 + 96) = *(a1 + 37728);
    *(a8 + 64) = v74;
    *(a8 + 80) = v75;
    *(a8 + 48) = v73;
    v76 = *(v8 + 752);
    *a8 = *(v76 + 2164);
    v77 = *(v76 + 108) - 8;
    *(a8 + 34) = v77;
    *(a8 + 33) = v77;
    *(a8 + 32) = *(*(a1 + 15112) + 56);
    *(a8 + 36) = *(v8 + 1104);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 1024;
      *&buf[20] = a4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): clientID : %2d, frameInfoOut is NULL!!!, frameNum:%d", buf, 0x18u);
    }

    v76 = *(v8 + 752);
    v100 = *(v76 + 1920);
    if (v100 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v101 = *(v100 + 1944);
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v101;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): frameType :%d ", buf, 0x12u);
      v76 = *(v8 + 752);
    }
  }

  **(a1 + 15112) = v138;
  AV1_RLM::Update_Frame_Bufs(*(a1 + 15128), v76, *(a1 + 8240) + 384 * *(v8 + 1004));
  v78 = *(a1 + 8240) + 384 * v60;
  *(v78 + 8) = *(v8 + 1008);
  *(v78 + 16) = *(v8 + 1024);
  v79 = (a1 + 176 * v60);
  v80 = v79[187];
  v81 = v79[185];
  *(v78 + 40) = v79[186];
  *(v78 + 24) = v81;
  *(v78 + 56) = v80;
  v82 = v79[189];
  v83 = v79[190];
  v84 = v79[191];
  *(v78 + 72) = v79[188];
  *(v78 + 120) = v84;
  *(v78 + 104) = v83;
  *(v78 + 88) = v82;
  v85 = v79[193];
  v86 = v79[194];
  v87 = v79[195];
  *(v78 + 136) = v79[192];
  *(v78 + 184) = v87;
  *(v78 + 168) = v86;
  *(v78 + 152) = v85;
  v88 = *(a1 + 8240) + 384 * v60;
  v89 = v79[350];
  v90 = v79[351];
  *(v88 + 232) = v79[352];
  *(v88 + 216) = v90;
  *(v88 + 200) = v89;
  v91 = v79[354];
  v92 = v79[355];
  v93 = v79[356];
  *(v88 + 248) = v79[353];
  *(v88 + 280) = v92;
  *(v88 + 296) = v93;
  *(v88 + 264) = v91;
  v94 = v79[357];
  v95 = v79[358];
  v96 = v79[360];
  *(v88 + 344) = v79[359];
  *(v88 + 360) = v96;
  *(v88 + 312) = v94;
  *(v88 + 328) = v95;
  v97 = *(a1 + 8240);
  v98 = (v97 + 384 * v60);
  *v98 = v60;
  a4 = v140;
  v98[94] = v140;
  if (*(a1 + 2644))
  {
    *(v97 + 384 * v60 + 4) = *(v8 + 1020);
    v99 = (v8 + 1024);
  }

  else
  {
    v99 = (v8 + 1008);
    *v98 = *(v8 + 1004);
  }

  *(v97 + 384 * v60 + 16) = *v99;
  if (!*(a1 + 2892))
  {
    goto LABEL_127;
  }

  if (!v56)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "vSurfInfoDisp is NULL";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: ERROR: [CAVDAvxDecErr] %s";
    goto LABEL_117;
  }

  v102 = IOSurfaceLookup(*(v56 + 160));
  if (!v102)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: bad IOSurface* in tile offset check";
LABEL_92:
    v22 = 2;
    goto LABEL_15;
  }

  v103 = v102;
  SizeOfPlane = IOSurfaceGetSizeOfPlane();
  CFRelease(v103);
  v105 = *(a1 + 2896);
  v106 = *(a1 + 15112);
  v107 = *(v106 + 24);
  v139 = SizeOfPlane;
  if (__CFADD__(v105, v107 - 1))
  {
    v135 = 0;
    v108 = 0;
    LODWORD(v109) = 0;
    v110 = 1;
    goto LABEL_153;
  }

  v111 = *(a1 + 2900);
  v112 = *(v106 + 28) - 1;
  if (__CFADD__(v111, v112))
  {
    v135 = 0;
    LODWORD(v109) = 0;
    v110 = 2;
    v108 = v111 + v112;
    goto LABEL_153;
  }

  v109 = *(v56 + 84) * (v111 + v112);
  if ((v109 & 0xFFFFFFFF00000000) != 0)
  {
    v135 = 0;
    v110 = 4;
LABEL_152:
    v108 = v111 + v112;
LABEL_153:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v126 = *(a1 + 2900);
      v127 = *(v106 + 28);
      v128 = *(v56 + 84);
      *buf = 67111680;
      *&buf[4] = v105;
      *&buf[8] = 1024;
      *&buf[10] = v126;
      *&buf[14] = 1024;
      *&buf[16] = v107;
      *&buf[20] = 1024;
      *&buf[22] = v127;
      *&buf[26] = 1024;
      *&buf[28] = v128;
      *&buf[32] = 2048;
      *&buf[34] = v135;
      *&buf[42] = 2048;
      *&buf[44] = v139;
      *&buf[52] = 1024;
      *&buf[54] = v110;
      *&buf[58] = 1024;
      *&buf[60] = v105 + v107 - 1;
      LOWORD(v146) = 1024;
      *(&v146 + 2) = v108;
      WORD3(v146) = 1024;
      DWORD2(v146) = v109;
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: tile offset out of bounds! [%u %u] + [%u %u], %u, %zu >= %zu ?, %u; %u %u %u";
      v22 = 76;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v135 = v109 + (v105 + v107 - 1);
  if (v135 >= SizeOfPlane)
  {
    v110 = 6;
    goto LABEL_152;
  }

  if ((CAVDDecoder::calcLumaChromaTileOffset(a1, v105, v111, *(*(v8 + 1024) + 76), *(*(v8 + 1024) + 80), *(v106 + 56), (a1 + 2904), (a1 + 2908)) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "VADecodeFrame";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s(): calcLumaChromaTileOffset returns fail";
LABEL_117:
    v22 = 12;
    goto LABEL_15;
  }

LABEL_127:
  v113 = (*(**(a1 + 2096) + 248))(*(a1 + 2096), v140, *(a1 + 2944));
  v114 = *(a1 + 2096);
  *(v114 + 12) = *(*(a1 + 15112) + 140) * *(*(a1 + 15112) + 136);
  AppleAVDCommandBuilder::setDecodeBufferSections(*(a1 + 2344), v114 + 8);
  if (v113)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v113;
      v20 = MEMORY[0x277D86220];
      v21 = "AppleAVD: %s(): hwD->DecodePicture return %d";
      v22 = 18;
      goto LABEL_15;
    }

LABEL_16:
    if (*(a1 + 2724))
    {
      v27 = 0;
      v11 = 305;
    }

    else
    {
      v27 = *(a1 + 2725);
      if (*(a1 + 2725))
      {
        v11 = 316;
LABEL_21:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = "VADecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = 0;
          *&buf[18] = 1024;
          *&buf[20] = v11;
          *&buf[24] = 1024;
          *&buf[26] = v27;
          *&buf[30] = 1024;
          *&buf[32] = a4;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s():clientID: %2d,DecodeError: %d,skipToIDR:%d,frameNum :%d", buf, 0x24u);
        }

        return v11;
      }

      AV1_RLM::flush_RLM(*(a1 + 15128), *(v8 + 752) + 1800);
      v11 = 316;
      v27 = 1;
    }

    *(a1 + 2725) = v27;
    goto LABEL_21;
  }

  v115 = *(v8 + 752);
  v116 = *(v115 + 1932);
  if ((v116 || *(v115 + 1936)) && (!*(v8 + 1080) || *(v8 + 1076) != *(v115 + 4096)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v117 = *(v115 + 1936);
      v118 = *(v115 + 145);
      v119 = *(v115 + 4096);
      *buf = 136316674;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v116;
      *&buf[18] = 1024;
      *&buf[20] = v117;
      *&buf[24] = 1024;
      *&buf[26] = v137;
      *&buf[30] = 1024;
      *&buf[32] = v118;
      *&buf[36] = 1024;
      *&buf[38] = v119;
      *&buf[42] = 1024;
      *&buf[44] = v140;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): show %d, showable %d, filmGrainMode = %d, params_present %d, apply_grain %d, frame %d", buf, 0x30u);
      v115 = *(v8 + 752);
    }

    *(v8 + 1080) = 1;
    *(v8 + 1076) = *(v115 + 4096);
  }

  if (v137 != 2 && !*(v115 + 113))
  {
    if (!*(v115 + 1932) && !*(v115 + 1800) && !*(v115 + 1936))
    {
      goto LABEL_164;
    }

    if (!*(v115 + 145))
    {
      goto LABEL_164;
    }

    ++*(a1 + 2708);
    if (*(v115 + 4096) != 1)
    {
      goto LABEL_164;
    }

    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    memset(buf, 0, sizeof(buf));
    v120 = av1_populate_film_grain_params(buf, v115);
    ++*(a1 + 2712);
    if (v120)
    {
      if (v136 == -1)
      {
        v56 = *(a1 + 2088);
      }

      v121 = IOSurfaceLookup(*(v56 + 160));
      if (v121)
      {
        v122 = v121;
        v123 = IOSurfaceSetDataProperty();
        CFRelease(v122);
        if (!v123 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_163;
        }

        *v141 = 136315394;
        v142 = "VADecodeFrame";
        v143 = 1024;
        v144 = v123;
        v124 = MEMORY[0x277D86220];
        v125 = "AppleAVD: %s(): setDataProperty failed, error=%d\n";
        goto LABEL_161;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v130 = *(v56 + 160);
        *v141 = 136315394;
        v142 = "VADecodeFrame";
        v143 = 1024;
        v144 = v130;
        v124 = MEMORY[0x277D86220];
        v125 = "AppleAVD: %s(): setDataProperty(AV1FilmGrain) failed, IOSurface look up for ioSurfID 0x%x failed\n";
LABEL_161:
        v129 = 18;
        goto LABEL_162;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v141 = 136315138;
      v142 = "VADecodeFrame";
      v124 = MEMORY[0x277D86220];
      v125 = "AppleAVD: %s(): av1_populate_film_grain_params returned false";
      v129 = 12;
LABEL_162:
      _os_log_impl(&dword_277606000, v124, OS_LOG_TYPE_DEFAULT, v125, v141, v129);
    }

LABEL_163:
    v115 = *(v8 + 752);
LABEL_164:
    a4 = v140;
  }

  AV1_RLM::Swap_Frame_Bufs(*(a1 + 15128), v115, 1);
  v131 = AV1_RLM::Get_Disp_Buf(*(a1 + 15128));
  if (v131)
  {
    v132 = v131;
    if (*(v131 + 2016))
    {
      CAVDAvxDecoder::insertFrame(v131, *(v8 + 880), v131);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v133 = *(v132 + 2024);
      *buf = 136315650;
      *&buf[4] = "VADecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = a4;
      *&buf[18] = 1024;
      *&buf[20] = v133;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): frm %8d decoded - frame_to_show w/ nil buffer for buf_idx=%4d", buf, 0x18u);
    }
  }

  CAVDAvxDecoder::sendDisplayBuffer(a1, a4);
  CAVDAvxDecoder::insertFrame(v134, *(v8 + 888), *(v8 + 760));
  return 0;
}

uint64_t CAVDAvxDecoder::checkVideoResolution(CAVDAvxDecoder *this, unsigned int a2, unsigned int a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4 < 1 || *(this + 730))
  {
    v11 = *(this + 728);
    if (v11 >= a2 && *(this + 729) >= a3)
    {
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(this + 729);
      v14 = 136316162;
      v15 = "checkVideoResolution";
      v16 = 1024;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = v12;
      v8 = MEMORY[0x277D86220];
      v9 = "AppleAVD: ERROR: %s(): ERROR, video resolution %ux%u exceeds allocated size %ux%u\n";
      v10 = 36;
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "checkVideoResolution";
    v16 = 1024;
    v17 = a4;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: ERROR: %s(): ERROR, bit depth %d exceeds allocated depth 0\n";
    v10 = 18;
LABEL_9:
    _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, v10);
  }

  return 308;
}

uint64_t CAVDAvxDecoder::getDisplayMode(CAVDAvxDecoder *this, int a2)
{
  result = 1;
  if (a2 > 1885745711)
  {
    if (a2 != 1885745712 && a2 != 1885745714)
    {
      v3 = 1885746228;
LABEL_8:
      if (a2 != v3)
      {
        return 2;
      }
    }
  }

  else if (a2 != 1882468912 && a2 != 1882468914)
  {
    v3 = 1882469428;
    goto LABEL_8;
  }

  return result;
}

uint64_t CAVDAvxDecoder::insertFrame(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 2016);
  v6 = a2[1];
  if (v6 - *a2 >= 0xB && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "insertFrame";
    v14 = 1024;
    v15 = 2400;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v12, 0x12u);
  }

  v7 = &a2[150 * (v6 % 0xB)];
  v7[2] = *(v5 + 376);
  v7[12] = 1;
  v8 = a2[1652];
  v9 = *(v5 + 4 * (v8 == 1));
  v7[14] = v8;
  v7[15] = v9;
  *(v7 + 9) = a3;
  v10 = 8;
  if (v8 == 1)
  {
    v10 = 16;
  }

  *(v7 + 8) = *(*(a3 + 2016) + v10);
  ++a2[1];
  return 0;
}

void CAVDAvxDecoder::sendDisplayBuffer(CAVDAvxDecoder *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 293) + 6016);
  v6[0] = a2;
  if (!CAVDAvxDecoder::getDispFrameParams(this, v6))
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4;
    }

    while (v7)
    {
      v5 = *(v7 + 2016);
      if (!v5)
      {
        break;
      }

      (*(*this + 88))(this, *(v5 + v4));
      if (CAVDAvxDecoder::getDispFrameParams(this, v6))
      {
        return;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "sendDisplayBuffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ERROR, decoder buffer is NULL, no frame will be sent to display", buf, 0xCu);
    }
  }
}

uint64_t CAVDAvxDecoder::VAReleaseOutputSurface(AppleAVDCommandBuilder **this, int a2, unsigned int a3)
{
  if (a3 != 1 || *(this + 661))
  {
    AppleAVDCommandBuilder::setReleaseCVPixelBufferIndex(this[292], a2, a3);
  }

  return 0;
}

BOOL CAVDAvxDecoder::VAIsSurfaceListIndexMapped(CAVDAvxDecoder *this, int a2, int a3)
{
  if (a2 > 128)
  {
    return 0;
  }

  v3 = 1056;
  if (a3 == 1)
  {
    v3 = 24;
  }

  return *(this + 8 * a2 + v3) != 0;
}

uint64_t CAVDAvxDecoder::VAGetIOSurfaceIDForBufferIndex(CAVDAvxDecoder *this, unsigned int a2, int a3)
{
  if (a2 > 0x80)
  {
    return 0;
  }

  v3 = 1056;
  if (a3 == 1)
  {
    v3 = 24;
  }

  v4 = *(this + 8 * a2 + v3);
  if (v4)
  {
    return *(v4 + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t CAVDAvxDecoder::VAGetParams(CAVDAvxDecoder *this, int a2, unsigned int *a3)
{
  result = 0;
  if (a2 > 6)
  {
    if (a2 <= 8)
    {
      if (a2 != 7)
      {
        result = 0;
        v6 = *(this + 12);
        goto LABEL_29;
      }

      if (a3)
      {
        result = 0;
        v6 = *(this + 690);
        goto LABEL_29;
      }
    }

    else
    {
      if (a2 == 9)
      {
        result = 0;
        v6 = *(this + 4);
        goto LABEL_29;
      }

      if (a2 != 22)
      {
        if (a2 == 54)
        {
          result = 0;
          if (a3)
          {
            v7 = *(this + 4702);
            if (v7)
            {
              *a3 = *(v7 + 2176);
              *(a3 + 8) = *(this + 37965);
              return 1;
            }
          }
        }

        return result;
      }

      if (a3)
      {
        result = 0;
        v6 = *(this + 722);
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      result = 0;
      v6 = 11;
      goto LABEL_29;
    }

    if (a2 == 1)
    {

      return CAVDAvxDecoder::getDispFrameParams(this, a3);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *a3 = (*(**(this + 262) + 168))(*(this + 262));
        v8 = (*(**(this + 262) + 176))(*(this + 262));
        result = 0;
        a3[2] = v8;
        return result;
      case 3:
        result = 0;
        *(a3 + 88) = 0;
        *(a3 + 1) = 0;
        *(a3 + 2) = 0;
        *(a3 + 16) = *(this + 18832);
        *(a3 + 34) = *(this + 37666);
        *a3 = *(this + 4704);
        v9 = *(this + 37724);
        *(a3 + 89) = *(this + 37721);
        *(a3 + 23) = v9;
        *(a3 + 50) = *(this + 9488);
        return result;
      case 4:
        result = 0;
        v6 = 1;
LABEL_29:
        *a3 = v6;
        break;
    }
  }

  return result;
}

uint64_t CAVDAvxDecoder::VASetParams(CAVDAvxDecoder *this, int a2, unsigned int *a3)
{
  result = 0;
  switch(a2)
  {
    case 11:
      result = 0;
      *(this + 2724) = *a3;
      break;
    case 12:
      result = 0;
      *(this + 686) = *a3;
      *(this + 687) = a3[1];
      break;
    case 15:
      result = 0;
      *(this + 343) = *(a3 + 1);
      *(this + 688) = *a3;
      break;
    case 16:
      result = 0;
      *(this + 341) = a3;
      break;
    case 17:
      result = 0;
      *(this + 684) = *a3;
      break;
    case 18:
      if (*(this + 2724))
      {
        goto LABEL_34;
      }

      result = 0;
      *(this + 2725) = *a3;
      break;
    case 20:
      result = 0;
      *(this + 2892) = *a3;
      *(this + 362) = *(a3 + 1);
      break;
    case 21:
    case 27:
    case 55:
    case 56:
    case 58:
      return result;
    case 22:
      if (!a3)
      {
        goto LABEL_34;
      }

      result = 0;
      *(this + 722) = *a3;
      break;
    case 23:
      result = 0;
      *(this + 673) = *a3;
      break;
    case 24:
      result = 0;
      v27 = *a3;
      *(this + 12) = v27;
      goto LABEL_41;
    case 25:
      result = 0;
      v27 = *a3;
LABEL_41:
      *(this + 4) = v27;
      break;
    case 26:
      if (a3[5] <= *(*(this + 260) + 56))
      {
        v14 = **(this + 292);
        v15 = *(v14 + 3648);
        IOSurfaceLock(*(v14 + 3640), 0, 0);
        memcpy(v15, *(a3 + 1), a3[5]);
        IOSurfaceUnlock(*(**(this + 292) + 3640), 0, 0);
      }

LABEL_34:
      result = 0;
      break;
    case 28:
      result = 0;
      *(this + 696) = *a3;
      *(this + 346) = *(a3 + 1);
      v28 = *(a3 + 18);
      v29 = *(a3 + 26);
      v30 = *(a3 + 14);
      *(this + 2856) = *(a3 + 22);
      *(this + 2872) = v29;
      *(this + 2824) = v30;
      *(this + 2840) = v28;
      v31 = *(a3 + 10);
      *(this + 2792) = *(a3 + 6);
      *(this + 2808) = v31;
      break;
    case 30:
      result = 0;
      *(this + 10) = *a3;
      break;
    case 33:
      *(this + 672) = *a3;
      isADSDecryption = CAVDDecoder::isADSDecryption(this);
      result = 0;
      *(this + 590) = isADSDecryption;
      break;
    case 34:
      result = 0;
      v11 = *a3;
      v12 = *(a3 + 1);
      v13 = *(a3 + 2);
      *(this + 2412) = *(a3 + 6);
      *(this + 2380) = v12;
      *(this + 2396) = v13;
      *(this + 2364) = v11;
      *(this + 627) = 1;
      break;
    case 35:
      result = 0;
      v16 = *a3;
      v17 = *(a3 + 1);
      v18 = *(a3 + 2);
      *(this + 2468) = *(a3 + 6);
      *(this + 2436) = v17;
      *(this + 2452) = v18;
      *(this + 2420) = v16;
      *(this + 628) = 1;
      break;
    case 36:
      result = 0;
      v24 = *a3;
      *(this + 2488) = *(a3 + 3);
      *(this + 2476) = v24;
      *(this + 629) = 1;
      *(this + 315) = *(this + 312);
      break;
    case 37:
      result = 0;
      *(this + 629) = 1;
      break;
    case 38:
      result = 0;
      *(this + 626) = *a3;
      break;
    case 39:
      result = 0;
      *(this + 736) = *a3;
      break;
    case 40:
      result = 0;
      *(this + 366) = a3;
      break;
    case 41:
      result = 0;
      *(this + 367) = a3;
      break;
    case 43:
      result = 0;
      v19 = *a3;
      *(this + 159) = *(a3 + 1);
      *(this + 158) = v19;
      v20 = *(a3 + 2);
      v21 = *(a3 + 3);
      v22 = *(a3 + 4);
      *(this + 652) = a3[20];
      *(this + 658) = 1;
      *(this + 162) = v22;
      *(this + 161) = v21;
      *(this + 160) = v20;
      break;
    case 44:
      result = 0;
      v23 = *a3;
      *(this + 657) = a3[4];
      *(this + 2612) = v23;
      *(this + 659) = 1;
      break;
    case 45:
      result = 0;
      *(this + 2948) = *a3;
      *(this + 738) = a3[1];
      break;
    case 47:
      result = 0;
      *(this + 663) = *a3;
      break;
    case 48:
      result = 0;
      *(this + 166) = *a3;
      break;
    case 49:
      result = 0;
      *(this + 2674) = *a3;
      break;
    case 50:
      result = 0;
      *(this + 2675) = *a3;
      break;
    case 51:
      result = 0;
      *(this + 335) = a3;
      break;
    case 52:
      result = 0;
      v6 = *a3;
      v7 = *(a3 + 1);
      *(this + 2362) = *(a3 + 2);
      *(this + 2361) = v7;
      *(this + 2360) = v6;
      v8 = *(a3 + 3);
      v9 = *(a3 + 4);
      v10 = *(a3 + 12);
      *(this + 2365) = *(a3 + 5);
      *(this + 2364) = v9;
      *(this + 2363) = v8;
      *(this + 4732) = v10;
      break;
    case 53:
      result = 0;
      v26 = *a3;
      if (*a3 > 0x1F)
      {
        v26 = 0;
      }

      *(this + 9487) = v26;
      break;
    case 59:
      result = 0;
      *(this + 689) = *a3;
      break;
    default:
      result = 308;
      break;
  }

  return result;
}

BOOL CAVDAvxDecoder::decodeGetRenderTarget(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 > 0x80)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "decodeGetRenderTarget";
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s bad index %u", &v9, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v6 = a1 + 24;
    if (a4 != 1)
    {
      v6 = a1 + 1056;
    }

    v7 = *(v6 + 8 * a2);
  }

  *a3 = v7;
  return v7 != 0;
}

uint64_t CAVDAvxDecoder::removeFrame(uint64_t a1, _DWORD *a2, unsigned int *__dst)
{
  if (*a2 >= a2[1])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = &a2[150 * (*a2 % 0xBu)];
  v6 = v4[2];
  v5 = v4 + 2;
  if (*__dst < v6)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, v5, 0x258uLL);
  v9 = v5[8];
  if (v9)
  {
    v10 = *(a1 + 15128);
    if (v10)
    {
      if (!a2[1652])
      {
        AV1_RLM::Rel_Frame_Buffer(v10, *(v9 + 2008));
        v10 = *(a1 + 15128);
      }

      AV1_RLM::Rel_Frame_Buffer(v10, v9);
    }
  }

  result = 0;
  ++*a2;
  return result;
}

__n128 CAVDAvxDecoder::populateSnapshotStruct(CAVDAvxDecoder *this, unsigned int a2, int a3)
{
  *(this + 15108) = (*(*(this + 4702) + 1868) & 0xFFFFFFFD) == 0;
  *(this + 3776) = 0;
  v3 = *(this + 261);
  v4 = *(v3 + 16);
  *(this + 2104) = *v3;
  *(this + 2120) = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 80);
  *(this + 2168) = *(v3 + 64);
  *(this + 2184) = v7;
  *(this + 2136) = v5;
  *(this + 2152) = v6;
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  *(this + 2232) = *(v3 + 128);
  *(this + 2248) = v10;
  *(this + 2200) = v8;
  *(this + 2216) = v9;
  result = *(v3 + 160);
  v12 = *(v3 + 176);
  v13 = *(v3 + 208);
  *(this + 2296) = *(v3 + 192);
  *(this + 2312) = v13;
  *(this + 2264) = result;
  *(this + 2280) = v12;
  *(this + 582) = a3;
  return result;
}

uint64_t CAVDAvxDecoder::getRefPicsNum(CAVDAvxDecoder *this)
{
  if (*(this + 15108))
  {
    return 0;
  }

  else
  {
    return *(this + 3776);
  }
}

BOOL CAVDAvxDecoder::GetTileMemInfo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 2344) + 6036);
  v5 = *(a1 + 8 * v4 + 24);
  if (v5)
  {
    *a4 = a2 - *(v5 + 8);
    *a3 = v5 + 8;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "GetTileMemInfo";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ppRenderSurfaceList[%d] == NULL", &v7, 0x12u);
  }

  return v5 != 0;
}

CAHDec *createThymeAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x3EE0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecThymeAvc::CAHDecThymeAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecThymeAvc::CAHDecThymeAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_2886682E8;
  *(v4 + 256) = a2;
  *(v4 + 456) = 956 * *(a2 + 7388) + 266208;
  *(v4 + 8) = 2208;
  *(v4 + 16) = xmmword_27775BAD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 15920) = 0u;
  *(v4 + 15936) = 0u;
  *(v4 + 15952) = 0u;
  *(v4 + 15968) = 0u;
  *(v4 + 15984) = 0u;
  *(v4 + 16000) = 0u;
  *(v4 + 16016) = 0u;
  *(v4 + 16032) = 0u;
  *(v4 + 16048) = 0u;
  *(v4 + 16064) = 0u;
  *(v4 + 16080) = 0u;
  bzero((v4 + 560), 0x3BD0uLL);
  return a1;
}

void CAHDecThymeAvc::~CAHDecThymeAvc(CAHDecThymeAvc *this)
{
  *this = &unk_2886682E8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecThymeAvc::~CAHDecThymeAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecThymeAvc::init(CAHDecThymeAvc *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "init";
      v7 = 1024;
      v8 = 0;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n", &v5, 0x18u);
    }

    return 301;
  }

  else
  {
    v4 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v4;
    *(this + 34) = v4;
  }

  return result;
}

uint64_t CAHDecThymeAvc::initPicture(CAHDecThymeAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 956 * *(*(this + 32) + 7388) + 266208;
  *(this + 114) = v5;
  *(this + 13) = 0;
  v6 = *(this + 34);
  *(this + 33) = v6;
  if (v6)
  {
    bzero(v6, v5);
    v8 = *(this + *(this + 13) + 34);
    *(v8 + 16) = a2;
    *(v8 + 24) = 257;
    *(v8 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3975) = 0;
    *(this + 1995) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "initPicture";
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v10, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecThymeAvc::populateSlices(CAHDecThymeAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = (*(this + *(this + 13) + 34) + 2208);
    v5 = a2;
    do
    {
      CAHDecThymeAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 239;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecThymeAvc::populateSliceRegisters(uint64_t a1, _DWORD *a2, signed int a3)
{
  v5 = 0;
  v112 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 3500);
  v8 = *(v6 + 3504);
  v9 = *(v6 + 3192);
  v10 = *(v6 + 3184);
  v11 = *(v6 + 6952);
  v12 = *(v6 + 3208);
  v13 = *(v6 + 3200) + 1848 * a3;
  a2[1] = 0;
  v14 = 32 * (*(v13 + 1424) & 3);
  a2[1] = v14;
  if (*(v13 + 24) != 2)
  {
    v5 = (*(v13 + 63) & 0xF) << 11;
  }

  v15 = v5 | v14;
  a2[1] = v15;
  v95 = v10;
  if (*(v13 + 24) == 1)
  {
    v16 = (*(v13 + 64) & 0xF) << 7;
  }

  else
  {
    v16 = 0;
  }

  v18 = v16 | v15;
  a2[1] = v18;
  if (*(v13 + 24) == 1)
  {
    v19 = (*(v13 + 61) == 0) << 15;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v18 & 0x7FFF7FE0;
  a2[1] = v20;
  if (*(v13 + 24))
  {
    v21 = 0x20000;
  }

  else
  {
    v21 = 0x10000;
  }

  if (*(v13 + 24) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  a2[1] = v22 | v20 & 0xFFFFFFE0;
  if (*(v13 + 24) != 1)
  {
    goto LABEL_20;
  }

  v23 = v12 + 13040 * a3 + 7224;
  *(v13 + 1832) = v23;
  if ((*(v12 + 13040 * a3 + 7227) & 1) != 0 || (v24 = *(v12 + 13040 * a3 + 7256), *(a1 + 4 * v24 + 464)))
  {
    v25 = 16;
  }

  else
  {
    if (!*(a1 + 15900))
    {
      *(a1 + 15960) = *(v12 + 13040 * a3 + 7264);
      *(a1 + 15952) = v24;
      *(a1 + 15900) = 1;
      a2[1] |= 0x40000u;
      v23 = *(v13 + 1832);
      if (!v23 || !*(a1 + 15900))
      {
        goto LABEL_20;
      }
    }

    v90 = *(v23 + 40);
    if (v90 == *(a1 + 15960))
    {
      goto LABEL_20;
    }

    *(a1 + 15960) = v90;
    *(a1 + 15952) = *(v23 + 32);
    v25 = 0x40000;
  }

  a2[1] |= v25;
LABEL_20:
  a2[230] = 0;
  a2[238] = 0;
  v26 = a2[1];
  if (*(v13 + 24) == 1 && (v26 & 0x40000) != 0)
  {
    v28 = v7;
    v29 = (a1 + 176 * *(*(v13 + 1832) + 32));
    v30 = v29[658];
    v31 = v29[660];
    v109 = v29[659];
    v110 = v31;
    v111 = v29[661];
    v32 = v29[654];
    v33 = v29[656];
    v105 = v29[655];
    v106 = v33;
    v107 = v29[657];
    v108 = v30;
    v34 = v29[652];
    *buf = v29[651];
    *&buf[16] = v34;
    v103 = v29[653];
    v104 = v32;
    *(a1 + 15900) = 1;
    if (*buf || *(&v110 + 1))
    {
      v99 = v12;
      v45 = 956 * a3;
      result = CAHDec::addToPatcherList(a1, buf, 956 * a3 + 3128, 0, 0xFFFFFFFFLL, 8, -256, 4);
      if (result)
      {
        return result;
      }

      v12 = v99;
      if (*buf || *(&v110 + 1))
      {
        result = CAHDec::addToPatcherList(a1, buf, v45 + 3160, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
        v12 = v99;
        if (result)
        {
          return result;
        }
      }
    }

    v26 = a2[1];
    v7 = v28;
  }

  v97 = a2;
  v98 = a1;
  v94 = (v9 + 604 * v8);
  a2[1] = v26 & 0x77FFFF | 0x2D000000;
  v35 = *(v13 + 24);
  if (v35 <= 1)
  {
    v36 = v6 + 6760;
    v37 = v12 + 13040 * a3;
    if (*(v37 + 13032))
    {
      v38 = 0;
      v39 = v97 + 2;
      v40 = v37 + 1416;
      v41 = MEMORY[0x277D86220];
      do
      {
        v42 = (16 * (v38 & 0xF)) | 0x2DC00000;
        v39[v38] = v42;
        if (v11)
        {
          v43 = 0;
          while (*(*(v36 + 8 * v43) + 12) != *(v40 + 176 * v38 + 12))
          {
            if (v11 == ++v43)
            {
              goto LABEL_34;
            }
          }

          v39[v38] = v43 & 0xF | v42;
        }

        else
        {
LABEL_34:
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v44 = *(v40 + 176 * v38 + 32);
            *buf = 67109632;
            *&buf[4] = v38;
            *&buf[8] = 1024;
            *&buf[10] = v44;
            *&buf[14] = 1024;
            *&buf[16] = v11;
            _os_log_impl(&dword_277606000, v41, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v38;
      }

      while (v38 < *(v37 + 13032));
      v35 = *(v13 + 24);
    }

    else
    {
      LODWORD(v38) = 0;
    }

    if (v35 == 1 && *(v37 + 13036))
    {
      v47 = 0;
      v48 = v97 + 2;
      v49 = v37 + 7224;
      v50 = MEMORY[0x277D86220];
      do
      {
        v51 = (16 * (v47 & 0xF)) | 0x2DC00100;
        v48[v38] = v51;
        if (v11)
        {
          v52 = 0;
          while (*(*(v36 + 8 * v52) + 12) != *(v49 + 176 * v47 + 12))
          {
            if (v11 == ++v52)
            {
              goto LABEL_52;
            }
          }

          v48[v38] = v52 & 0xF | v51;
        }

        else
        {
LABEL_52:
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v53 = *(v49 + 176 * v47 + 32);
            *buf = 67109632;
            *&buf[4] = v38;
            *&buf[8] = 1024;
            *&buf[10] = v53;
            *&buf[14] = 1024;
            *&buf[16] = v11;
            _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v38) = v38 + 1;
        ++v47;
      }

      while (v47 < *(v37 + 13036));
    }
  }

  *(v97 + 17) = 0x2DD0000000000000;
  v54 = 87;
  if (*(v13 + 24) == 1)
  {
    v54 = 88;
  }

  v55 = ((v94[v54] & 3) << 6) | 0x2DD00000;
  v97[35] = v55;
  v56 = v55 & 0xFFFFFFC7 | (8 * (*(v13 + 376) & 7));
  v97[35] = v56;
  v57 = *(v95 + 2224 * v7 + 4);
  if (*(v95 + 2224 * v7 + 4))
  {
    v57 = *(v13 + 377) & 7;
  }

  v58 = v57 | v56;
  v97[35] = v58;
  v59 = *(v13 + 24);
  if (v59 != 1)
  {
    goto LABEL_143;
  }

  v60 = v94[88];
  if (v60 != 2)
  {
    goto LABEL_64;
  }

  v97[35] = v58 & 0x2DD000C0 | 0x2D;
  v59 = *(v13 + 24);
  if (v59 != 1)
  {
LABEL_143:
    if (v59 || !v94[87])
    {
      goto LABEL_84;
    }

LABEL_68:
    v61 = 0;
    v62 = 0;
    v63 = v97 + 36;
    v64 = v97 + 132;
    do
    {
      if (*(v13 + 378 + v62))
      {
        v65 = ((v62 & 0xF) << 9) | 0x2DE04000;
        v63[v61] = v65;
        v63[v61] = v65 | *(v13 + 394 + 2 * v62) & 0x1FF;
        v64[v61] = 770703360;
        v64[v61++] = *(v13 + 426 + 2 * v62) | 0x2DF00000;
      }

      if (*(v13 + 458 + v62))
      {
        v66 = 0;
        v67 = 1;
        do
        {
          v68 = v67;
          v69 = (((v62 & 0xF) << 9) | (v66 << 14)) + 769687552;
          v63[v61] = v69;
          v63[v61] = v69 | *(v13 + 474 + 4 * v62 + 2 * v66) & 0x1FF;
          v64[v61] = 770703360;
          v64[v61++] = *(v13 + 538 + 4 * v62 + 2 * v66) | 0x2DF00000;
          v66 = 1;
          v67 = 0;
        }

        while ((v68 & 1) != 0);
      }

      ++v62;
    }

    while (v62 <= *(v13 + 63));
    if (*(v13 + 24) == 1)
    {
      v70 = 0;
      do
      {
        if (*(v13 + 602 + v70))
        {
          v71 = ((v70 & 0xF) << 9) + 769679360;
          v63[v61] = v71;
          v63[v61] = v71 | *(v13 + 618 + 2 * v70) & 0x1FF;
          v64[v61] = 770703360;
          v64[v61++] = *(v13 + 650 + 2 * v70) | 0x2DF00000;
        }

        if (*(v13 + 682 + v70))
        {
          v72 = 0;
          v73 = 1;
          do
          {
            v74 = v73;
            v75 = (((v70 & 0xF) << 9) | (v72 << 14)) + 769695744;
            v63[v61] = v75;
            v63[v61] = v75 | *(v13 + 698 + 4 * v70 + 2 * v72) & 0x1FF;
            v64[v61] = 770703360;
            v64[v61++] = *(v13 + 762 + 4 * v70 + 2 * v72) | 0x2DF00000;
            v72 = 1;
            v73 = 0;
          }

          while ((v74 & 1) != 0);
        }

        ++v70;
      }

      while (v70 <= *(v13 + 64));
    }

    v97[34] = v61;
    goto LABEL_84;
  }

  v60 = v94[88];
LABEL_64:
  if (v60 == 1)
  {
    goto LABEL_68;
  }

LABEL_84:
  v97[228] = 0;
  v97[228] = (((v94[89] + *(v13 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  v97[229] = 0;
  v76 = (*(v13 + 1428) == 0) << 17;
  v97[229] = v76;
  if (*(v13 + 1428) != 1)
  {
    v77 = v76 | 0x10000;
    v97[229] = v77;
    v78 = v77 | ((*(v13 + 1429) & 0xF) << 8);
    v97[229] = v78;
    v76 = v78 | ((*(v13 + 1430) & 0xF) << 12);
  }

  v97[229] = v76 | 0x2DA00000;
  v79 = *(v13 + 1436);
  if (v94[3])
  {
    v80 = 0;
    if ((v79 & 7) != 0)
    {
      *(v13 + 1436) = (v79 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v80 = *(v13 + 1436) & 7;
  }

  v97[231] = (v80 << 15) | 0x2D800000;
  v81 = *(v98 + 256);
  v82 = *(v81 + 2504);
  v100 = 0;
  v101 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v81, a3, &v101, &v100))
  {
    return 0xFFFFFFFFLL;
  }

  v83 = 956 * a3;
  v84 = v101;
  if (!*v101 && !*(v101 + 152) && !*(v101 + 156))
  {
    goto LABEL_100;
  }

  v85 = v100;
  if (HIDWORD(v100) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1850;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v85 = v100;
  }

  result = CAHDec::addToPatcherList(v98, v84, v83 + 3132, v85, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (result)
  {
    return result;
  }

  v84 = v101;
  if (!*v101)
  {
LABEL_100:
    if (!*(v84 + 152) && !*(v84 + 156))
    {
      goto LABEL_105;
    }
  }

  v86 = v100;
  if (HIDWORD(v100) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1851;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v86 = v100;
  }

  result = CAHDec::addToPatcherList(v98, v84, v83 + 3140, v86, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_105:
    v87 = *(v13 + 16) - (*(v13 + 1436) >> 3);
    v97[234] = v87;
    if (*(v81 + 2360) != 1)
    {
      return 0;
    }

    *(v97 + 118) = 0;
    if (*(v81 + 2640))
    {
      if ((*(v81 + 2612) & 1) == 0)
      {
LABEL_108:
        v88 = *(v13 + 1840);
        v89 = 0;
        if ((v82 & 0x200000) != 0)
        {
          if (v80 && !*(v13 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "int CAHDecThymeAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v87 = v97[234];
              v89 = v97[237] & 0x1F0000;
            }

            else
            {
              v89 = 0;
            }

            v88 = 1;
          }
        }

        else if (v80)
        {
          ++v88;
        }

        result = 0;
        if (v88 >= v87)
        {
          v88 = v87;
        }

        v93 = v89 & 0xFFDFFFFF | (v88 << 22) | v82 | (((v82 >> 20) & 1) << 21);
LABEL_140:
        v97[237] = v93;
        return result;
      }
    }

    else if (!*(v81 + 2420))
    {
      goto LABEL_108;
    }

    result = 0;
    v91 = *(v13 + 1840);
    if (v87 < v91)
    {
      v91 = v87;
    }

    if (v80)
    {
      v92 = v91 == 0;
    }

    else
    {
      v92 = 0;
    }

    if (v92)
    {
      v91 = 1;
    }

    v93 = v82 & 0x10000 | v91;
    goto LABEL_140;
  }

  return result;
}

uint64_t CAHDecThymeAvc::updateCommonRegisters(CAHDecThymeAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecThymeAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = *a2 & 0xFEFFFFC0 | 0x1000000;
  *a2 = v8;
  do
  {
    v8 |= (*(a4 + v7) == 0) << v7;
    *a2 = v8;
    ++v7;
  }

  while (v7 != 6);
  v9 = v8 & 0xFFFFF03F;
  *a2 = v8 & 0xFFFFF03F;
  v10 = (a7 - 6);
  if (a7 > 6)
  {
    v11 = (a4 + 6);
    v12 = &dword_27775C1B8;
    do
    {
      v13 = *v11++;
      v14 = v13 == 0;
      v16 = *v12++;
      v15 = v16;
      v17 = v14;
      v9 |= ((v17 << v15) & 0x3F) << 6;
      *a2 = v9;
      --v10;
    }

    while (v10);
  }

  v18 = 0;
  v19 = (a5 + 1);
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v19;
    do
    {
      v23 = *(v20 + 4 * v21) & 0xFFFFFF | (*(v22 - 1) << 24);
      *(v20 + 4 * v21) = v23;
      v24 = v23 & 0xFF00FFFF | (*v22 << 16);
      *(v20 + 4 * v21) = v24;
      v25 = v24 & 0xFFFF00FF | (v22[1] << 8);
      *(v20 + 4 * v21) = v25;
      *(v20 + 4 * v21++) = v25 & 0xFFFFFF00 | v22[2];
      v22 += 4;
    }

    while (v21 != 4);
    ++v18;
    v20 += 16;
    v19 += 16;
  }

  while (v18 != 6);
  v26 = 0;
  v27 = a3 + 96;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a6 + (dword_27775C1D0[v26] << 6);
    do
    {
      v32 = (v31 + (v29 & 0x20 | v30 & 4 | v28 & 0x18));
      v33 = *(v27 + v29) & 0xFFFFFF | (*v32 << 24);
      *(v27 + v29) = v33;
      v34 = v33 & 0xFF00FFFF | (v32[1] << 16);
      *(v27 + v29) = v34;
      v35 = v34 & 0xFFFF00FF | (v32[2] << 8);
      *(v27 + v29) = v35;
      *(v27 + v29) = v35 & 0xFFFFFF00 | v32[3];
      ++v30;
      v29 += 4;
      v28 += 8;
    }

    while (v29 != 64);
    ++v26;
    v27 += 64;
  }

  while (v26 != 6);
}

void CAHDecThymeAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    v2 = 0;
    v3 = 8;
    if (*(a2 + 4) == 3)
    {
      v3 = 12;
    }

    v4 = (a2 - 382);
    v5 = 18;
    while (v2 > 5)
    {
      if (*(a2 + v2 + 10))
      {
        if (*(a2 + v2 + 22) == 2)
        {
          if (v2 == 6 || (v2 & 0x7FFFFFFD) == 8)
          {
            v4[8] = avcDefaultIntraScalingList8x8;
            v4[9] = unk_27775C238;
            v10 = xmmword_27775C248;
            v11 = unk_27775C258;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775C1F8;
            v10 = xmmword_27775C208;
            v11 = unk_27775C218;
          }

          v4[10] = v10;
          v4[11] = v11;
        }

        goto LABEL_24;
      }

      if (v2 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v4[1];
        v4[8] = *v4;
        v4[9] = v12;
        v13 = v4[3];
        v4[10] = v4[2];
        v4[11] = v13;
        v8 = a2 + v2;
        v9 = *(a2 + v2 + 20);
LABEL_21:
        *(v8 + 22) = v9;
      }

LABEL_24:
      ++v2;
      v4 += 4;
      v5 += 16;
      if (v3 == v2)
      {
        return;
      }
    }

    if (*(a2 + v2 + 10))
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6 || v2 == 3)
    {
      goto LABEL_24;
    }

    *(a2 + v5 + 16) = *(a2 + v5);
    v8 = a2 + v2;
    v9 = *(a2 + v2 + 21);
    goto LABEL_21;
  }
}

void CAHDecThymeAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 96))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 8;
    if (*(a2 + 4) == 3)
    {
      v6 = 12;
    }

    do
    {
      if (v5 > 5)
      {
        if (*(a3 + v5 + 97))
        {
          if (*(a3 + v5 + 109) == 2)
          {
            v8 = (a3 + v4 - 167);
            if (v5 == 6 || (v5 & 0x7FFFFFFD) == 8)
            {
              *v8 = avcDefaultIntraScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C238;
              v9 = xmmword_27775C248;
              v10 = unk_27775C258;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C1F8;
              v9 = xmmword_27775C208;
              v10 = unk_27775C218;
            }

            *(a3 + v4 - 135) = v9;
            *(a3 + v4 - 119) = v10;
          }

          goto LABEL_29;
        }

        if (v5 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = a3 + v4;
          *(v11 - 119) = *(a3 + v4 - 247);
          v12 = *(a3 + v4 - 279);
          *(v11 - 167) = *(a3 + v4 - 295);
          *(v11 - 151) = v12;
          *(v11 - 135) = *(a3 + v4 - 263);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 107);
LABEL_28:
          *(v13 + 109) = v14;
          goto LABEL_29;
        }

        if (*(a2 + 9))
        {
          v15 = a3 + v4;
          v16 = *(a2 + v4 - 254);
          v17 = *(a2 + v4 - 238);
          v18 = *(a2 + v4 - 222);
          *(v15 - 119) = *(a2 + v4 - 206);
          *(v15 - 135) = v18;
          *(v15 - 151) = v17;
          *(v15 - 167) = v16;
          goto LABEL_22;
        }
      }

      else
      {
        if (*(a3 + v5 + 97))
        {
          if ((*(a3 + v5 + 109) & 2) != 0)
          {
            if (v5 > 2)
            {
              v7 = avcDefaultInterScalingList4x4;
            }

            else
            {
              v7 = avcDefaultIntraScalingList4x4;
            }

            *(a3 + v3 + 121) = v7;
          }

          goto LABEL_29;
        }

        if (v5 && v5 != 3)
        {
          *(a3 + v3 + 121) = *(a3 + v3 + 105);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 108);
          goto LABEL_28;
        }

        if (*(a2 + 9))
        {
          *(a3 + v3 + 121) = *(a2 + v3 + 34);
LABEL_22:
          *(a3 + v5 + 109) = *(a2 + v5 + 22);
        }
      }

LABEL_29:
      ++v5;
      v4 += 64;
      v3 += 16;
    }

    while (v6 != v5);
  }
}

uint64_t CAHDecThymeAvc::populateSequenceRegisters(CAHDecThymeAvc *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 3500);
  v5 = *(v2 + 3504);
  v6 = *(v2 + 3184);
  v7 = *(v2 + 3192);
  v8 = v6 + 2224 * v4;
  v3[10] = 0;
  LOWORD(v4) = *(v8 + 1558);
  v3[10] = (2 * (v4 & 0xFFF)) | 1;
  v3[10] = ((*(v8 + 1560) & 0xFFF) << 17) | (2 * (v4 & 0xFFF)) | 0x10001;
  v3[11] = 0;
  v9 = *(v8 + 1564) & 1;
  v3[11] = v9;
  v10 = v9 | ((*(v7 + 604 * v5 + 95) != 0) << 7) | 0x2800;
  v3[11] = v10;
  v11 = *(v8 + 4);
  if (*(v8 + 4))
  {
    v11 = (*(v8 + 7) & 0xF) << 15;
  }

  v12 = v11 | v10;
  v3[11] = v12;
  v13 = v12 & 0x7F87A881 | ((*(v8 + 6) & 0xF) << 19);
  v3[11] = v13;
  v14 = v13 & 0xFF7FFFFF | ((*(v8 + 5) & 1) << 23);
  v3[11] = v14;
  v3[11] = v14 & 0xFCFFFFFF | ((*(v8 + 4) & 3) << 24);
  if (*(v8 + 9))
  {
    if (*(v8 + 4) == 3)
    {
      v15 = 12;
    }

    else
    {
      v15 = 8;
    }

    CAHDecThymeAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecThymeAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 992, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecThymeAvc::populatePictureRegisters(CAHDecThymeAvc *this)
{
  v357 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v336 = *(v2 + 2088);
  v339 = *(v2 + 3020);
  v340 = *(v2 + 3040);
  v342 = *(v2 + 2644);
  v7 = *(v2 + 8);
  v8 = *(v2 + 6904);
  v356[8] = *(v2 + 6888);
  v356[9] = v8;
  v9 = *(v2 + 6936);
  v356[10] = *(v2 + 6920);
  v356[11] = v9;
  v10 = *(v2 + 6840);
  v356[4] = *(v2 + 6824);
  v356[5] = v10;
  v11 = *(v2 + 6872);
  v356[6] = *(v2 + 6856);
  v356[7] = v11;
  v12 = *(v2 + 6776);
  v356[0] = *(v2 + 6760);
  v356[1] = v12;
  v13 = *(v2 + 6808);
  v356[2] = *(v2 + 6792);
  v356[3] = v13;
  v338 = *(v2 + 6952);
  v14 = (*(*v2 + 184))(v2);
  v15 = *(this + 32);
  if (v14)
  {
    v16 = *(v15 + 2756) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 33);
  v18 = v5 + 2224 * v3;
  v19 = *(v15 + 2675);
  v20 = *(v15 + 2674);
  if (!(v19 | v20))
  {
    goto LABEL_44;
  }

  v21 = *(v18 + 6);
  if (v21 <= *(v18 + 7))
  {
    LOWORD(v21) = *(v18 + 7);
  }

  v22 = (v21 + 9) & 0x1FE;
  if (v22 == 8)
  {
    v24 = v7;
    v28 = 1;
    v26 = 8;
    if (!*(v15 + 2675))
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v23 = *(v15 + 2672);
  v24 = v7;
  if (v22 != 12)
  {
    if (v22 == 10)
    {
      v25 = v23 == 0;
      if (v23)
      {
        v26 = 10;
      }

      else
      {
        v26 = 9;
      }

      v27 = 2;
      goto LABEL_18;
    }

    v26 = 27;
    v28 = 27;
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (*(v18 + 4) && (v19 == 2 && v26 == 8 || v19 == 3 && (v26 - 9) <= 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v26;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v19;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v25 = v23 == 0;
  if (v23)
  {
    v26 = 12;
  }

  else
  {
    v26 = 11;
  }

  v27 = 4;
LABEL_18:
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v19)
  {
    goto LABEL_26;
  }

LABEL_33:
  v7 = v24;
  if (v20 && (v20 == 3 && v28 - 9 < 2 || v28 <= 0x1A && ((1 << v28) & 0x4C00000) != 0 && v20 <= 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "populatePictureRegisters";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v28;
    WORD1(buf[2]) = 1024;
    HIDWORD(buf[2]) = v20;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
LABEL_41:
    v31 = buf;
    v32 = 24;
    goto LABEL_42;
  }

LABEL_44:
  v34 = (v6 + 604 * v4);
  *(v17 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v35 = 766517248;
  }

  else
  {
    v35 = 766509056;
  }

  if (v16)
  {
    v36 = 688;
  }

  else
  {
    v36 = 672;
  }

  if (v342)
  {
    v37 = 4160;
  }

  else
  {
    v37 = 64;
  }

  v38 = v37 & 0xFFFFFFF0 | ((v342 == 1) << 10) | v36 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v35;
  *(v17 + 52) = v38;
  v39 = *(this + 32);
  v40 = v38 | ((v39[2652] & 1) << 19);
  *(v17 + 52) = v40;
  v41 = v40 & 0xFFFBFFFF | ((v39[2653] & 1) << 18);
  *(v17 + 52) = v41;
  *(v17 + 52) = v41 & 0xFFFDFFFF | ((v39[2654] & 1) << 17);
  *(v17 + 56) = 0x1000000;
  LODWORD(v39) = (16 * (*(v18 + 1558) & 0xFFF)) | 0xF;
  *(v17 + 60) = v39;
  v42 = v39 | (*(v18 + 1560) << 20) | 0xF0000;
  *(v17 + 64) = 0;
  *(v17 + 60) = v42;
  v43 = (*(v18 + 8) & 1) << 18;
  *(v17 + 68) = v43;
  v44 = v43 & 0xFFF7FFFF | ((v34[93] & 1) << 19);
  *(v17 + 68) = v44;
  v45 = v44 & 0xFFEFFFFF | ((v34[3] & 1) << 20);
  *(v17 + 68) = v45;
  *(v17 + 68) = v45 | ((**(*(this + 32) + 3200) != 5) << 21);
  LODWORD(v39) = *(v17 + 72) & 0xFFFFFC1F | (32 * (v34[91] & 0x1F));
  *(v17 + 72) = v39;
  *(v17 + 72) = v39 & 0xFFFFFFE0 | v34[601] & 0x1F;
  if (v34[96])
  {
    if (*(v18 + 4) == 3)
    {
      v46 = 12;
    }

    else
    {
      v46 = 8;
    }

    v47 = *(this + 33);
    CAHDecThymeAvc::AvcPicScalingListFallBack(v14, v18, v34);
    CAHDecThymeAvc::copyScalingList(v48, (v17 + 76), v47 + 1476, (v34 + 109), (v34 + 121), (v34 + 217), v46);
  }

  v49 = 0;
  *(v17 + 80) = *(this + 3978);
  *(v17 + 84) = *(this + 3979);
  *(v17 + 88) = 3145786;
  v50 = this + 9008;
  do
  {
    *(*(this + 33) + v49 + 92) = 0;
    v51 = *(this + 33) + v49;
    v52 = *(v51 + 92);
    *(v51 + 92) = 0;
    *(*(this + 33) + v49 + 92) ^= 0xFFFFFF00;
    v53 = *(this + 33) + v49;
    v54 = *(v53 + 92);
    *(v53 + 92) = v52;
    if (*v50 || *(v50 + 38) || *(v50 + 39))
    {
      result = CAHDec::addToPatcherList(this, v50, v49 + 92, 0, 0xFFFFFFFFLL, 8, v54, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v49 + 120) = 0;
    *(*(this + 33) + v49 + 120) = *(*(this + 33) + v49 + 120) & 0x800001FF | (((*(this + 3972) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v49 + 540) = 0;
    v55 = *(this + 33) + v49;
    v56 = *(v55 + 540);
    *(v55 + 540) = 0;
    *(*(this + 33) + v49 + 540) ^= 0x3FFu;
    v57 = *(this + 33) + v49;
    v58 = *(v57 + 540);
    *(v57 + 540) = v56;
    if (*v50 || *(v50 + 38) || *(v50 + 39))
    {
      result = CAHDec::addToPatcherList(this, v50, v49 + 540, 0, 0x3FFFFFFFFFFLL, 32, v58, 4);
      if (result)
      {
        return result;
      }
    }

    v49 += 4;
    v50 += 176;
  }

  while (v49 != 28);
  *(*(this + 33) + 148) = 0;
  *(*(this + 33) + 568) = 0;
  if ((*(v17 + 54) & 8) == 0)
  {
    goto LABEL_367;
  }

  v59 = *(this + 33);
  v60 = *(*(this + 32) + 2680);
  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  v347 = 0u;
  v348 = 0u;
  v346 = 0u;
  memset(buf, 0, sizeof(buf));
  v61 = (*(v59 + 16) & 0xF) << 9;
  buf[0] = v60;
  v62 = *(v59 + 148);
  *(v59 + 148) = 0;
  *(*(this + 33) + 148) ^= 0xFFFFFF00;
  v63 = *(this + 33);
  v64 = *(v63 + 148);
  *(v63 + 148) = v62;
  if (v60 || (v65 = DWORD2(v353), *(&v353 + 1)))
  {
    result = CAHDec::addToPatcherList(this, buf, 148, v61, 0xFFFFFFFFLL, 8, v64, 4);
    if (result)
    {
      return result;
    }

    if (buf[0])
    {
      v66 = 0;
    }

    else
    {
      v66 = DWORD2(v353) == 0;
    }

    v65 = !v66 || HIDWORD(v353) != 0;
  }

  *(*(this + 33) + 568) = 0;
  v68 = *(this + 33);
  v69 = *(v68 + 568);
  *(v68 + 568) = 0;
  *(*(this + 33) + 568) ^= 0x3FFu;
  v70 = *(this + 33);
  v71 = *(v70 + 568);
  *(v70 + 568) = v69;
  if (!v65 || (result = CAHDec::addToPatcherList(this, buf, 568, v61, 0x3FFFFFFFFFFLL, 32, v71, 4), !result))
  {
LABEL_367:
    if ((*(*(this + 33) + 152) = 0, v72 = *(this + 33), v73 = *(v72 + 152), *(v72 + 152) = 0, *(*(this + 33) + 152) ^= 0xFFFFFF00, v74 = *(this + 33), v75 = *(v74 + 152), *(v74 + 152) = v73, !*(this + 1830)) && !*(this + 3698) && !*(this + 3699) || (result = CAHDec::addToPatcherList(this, this + 1830, 152, 0, 0xFFFFFFFFLL, 8, v75, 4), !result))
    {
      if ((*(*(this + 33) + 572) = 0, v76 = *(this + 33), v77 = *(v76 + 572), *(v76 + 572) = 0, *(*(this + 33) + 572) ^= 0x3FFu, v78 = *(this + 33), v79 = *(v78 + 572), *(v78 + 572) = v77, !*(this + 1830)) && !*(this + 3698) && !*(this + 3699) || (result = CAHDec::addToPatcherList(this, this + 1830, 572, 0, 0x3FFFFFFFFFFLL, 32, v79, 4), !result))
      {
        if ((*(*(this + 33) + 156) = 0, v80 = *(this + 33), v81 = *(v80 + 156), *(v80 + 156) = 0, *(*(this + 33) + 156) ^= 0xFFFFFF00, v82 = *(this + 33), v83 = *(v82 + 156), *(v82 + 156) = v81, !*(this + 1852)) && !*(this + 3742) && !*(this + 3743) || (result = CAHDec::addToPatcherList(this, this + 1852, 156, 0, 0xFFFFFFFFLL, 8, v83, 4), !result))
        {
          if ((*(*(this + 33) + 576) = 0, v84 = *(this + 33), v85 = *(v84 + 576), *(v84 + 576) = 0, *(*(this + 33) + 576) ^= 0x3FFu, v86 = *(this + 33), v87 = *(v86 + 576), *(v86 + 576) = v85, !*(this + 1852)) && !*(this + 3742) && !*(this + 3743) || (result = CAHDec::addToPatcherList(this, this + 1852, 576, 0, 0x3FFFFFFFFFFLL, 32, v87, 4), !result))
          {
            if ((*(*(this + 33) + 160) = 0, v88 = *(this + 33), v89 = *(v88 + 160), *(v88 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFF00, v90 = *(this + 33), v91 = *(v90 + 160), *(v90 + 160) = v89, !*(this + 1874)) && !*(this + 3786) && !*(this + 3787) || (result = CAHDec::addToPatcherList(this, this + 1874, 160, 0, 0xFFFFFFFFLL, 8, v91, 4), !result))
            {
              if ((*(*(this + 33) + 580) = 0, v92 = *(this + 33), v93 = *(v92 + 580), *(v92 + 580) = 0, *(*(this + 33) + 580) ^= 0x3FFu, v94 = *(this + 33), v95 = *(v94 + 580), *(v94 + 580) = v93, !*(this + 1874)) && !*(this + 3786) && !*(this + 3787) || (result = CAHDec::addToPatcherList(this, this + 1874, 580, 0, 0x3FFFFFFFFFFLL, 32, v95, 4), !result))
              {
                if ((*(*(this + 33) + 164) = 0, v96 = *(this + 33), v97 = *(v96 + 164), *(v96 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFF00, v98 = *(this + 33), v99 = *(v98 + 164), *(v98 + 164) = v97, !*(this + 1896)) && !*(this + 3830) && !*(this + 3831) || (result = CAHDec::addToPatcherList(this, this + 1896, 164, 0, 0xFFFFFFFFLL, 8, v99, 4), !result))
                {
                  if ((*(*(this + 33) + 584) = 0, v100 = *(this + 33), v101 = *(v100 + 584), *(v100 + 584) = 0, *(*(this + 33) + 584) ^= 0x3FFu, v102 = *(this + 33), v103 = *(v102 + 584), *(v102 + 584) = v101, !*(this + 1896)) && !*(this + 3830) && !*(this + 3831) || (result = CAHDec::addToPatcherList(this, this + 1896, 584, 0, 0x3FFFFFFFFFFLL, 32, v103, 4), !result))
                  {
                    if ((*(*(this + 33) + 168) = 0, v104 = *(this + 33), v105 = *(v104 + 168), *(v104 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFF00, v106 = *(this + 33), v107 = *(v106 + 168), *(v106 + 168) = v105, !*(this + 1918)) && !*(this + 3874) && !*(this + 3875) || (result = CAHDec::addToPatcherList(this, this + 1918, 168, 0, 0xFFFFFFFFLL, 8, v107, 4), !result))
                    {
                      if ((*(*(this + 33) + 588) = 0, v108 = *(this + 33), v109 = *(v108 + 588), *(v108 + 588) = 0, *(*(this + 33) + 588) ^= 0x3FFu, v110 = *(this + 33), v111 = *(v110 + 588), *(v110 + 588) = v109, !*(this + 1918)) && !*(this + 3874) && !*(this + 3875) || (result = CAHDec::addToPatcherList(this, this + 1918, 588, 0, 0x3FFFFFFFFFFLL, 32, v111, 4), !result))
                      {
                        if ((*(*(this + 33) + 172) = 0, v112 = *(this + 33), v113 = *(v112 + 172), *(v112 + 172) = 0, *(*(this + 33) + 172) ^= 0xFFFFFF00, v114 = *(this + 33), v115 = *(v114 + 172), *(v114 + 172) = v113, !*(this + 1940)) && !*(this + 3918) && !*(this + 3919) || (result = CAHDec::addToPatcherList(this, this + 1940, 172, 0, 0xFFFFFFFFLL, 8, v115, 4), !result))
                        {
                          if ((*(*(this + 33) + 592) = 0, v116 = *(this + 33), v117 = *(v116 + 592), *(v116 + 592) = 0, *(*(this + 33) + 592) ^= 0x3FFu, v118 = *(this + 33), v119 = *(v118 + 592), *(v118 + 592) = v117, !*(this + 1940)) && !*(this + 3918) && !*(this + 3919) || (result = CAHDec::addToPatcherList(this, this + 1940, 592, 0, 0x3FFFFFFFFFFLL, 32, v119, 4), !result))
                          {
                            if ((*(*(this + 33) + 176) = 0, *(*(this + 33) + 596) = 0, *(*(this + 33) + 180) = 0, v120 = *(this + 33), v121 = *(v120 + 180), *(v120 + 180) = 0, *(*(this + 33) + 180) ^= 0xFFFFFF00, v122 = *(this + 33), v123 = *(v122 + 180), *(v122 + 180) = v121, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 180, 0, 0xFFFFFFFFLL, 8, v123, 4), !result))
                            {
                              if ((*(*(this + 33) + 600) = 0, v124 = *(this + 33), v125 = *(v124 + 600), *(v124 + 600) = 0, *(*(this + 33) + 600) ^= 0x3FFu, v126 = *(this + 33), v127 = *(v126 + 600), *(v126 + 600) = v125, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 600, 0, 0x3FFFFFFFFFFLL, 32, v127, 4), !result))
                              {
                                if ((*(*(this + 33) + 184) = 0, v128 = *(this + 33), v129 = *(v128 + 184), *(v128 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFF00, v130 = *(this + 33), v131 = *(v130 + 184), *(v130 + 184) = v129, v132 = (this + 176 * v340 + 10416), !*v132) && !*(this + 44 * v340 + 2642) && !*(this + 44 * v340 + 2643) || (result = CAHDec::addToPatcherList(this, this + 22 * v340 + 1302, 184, 0, 0xFFFFFFFFLL, 8, v131, 4), !result))
                                {
                                  if ((*(*(this + 33) + 604) = 0, v133 = *(this + 33), v134 = *(v133 + 604), *(v133 + 604) = 0, *(*(this + 33) + 604) ^= 0x3FFu, v135 = *(this + 33), v136 = *(v135 + 604), *(v135 + 604) = v134, !*v132) && !*(this + 44 * v340 + 2642) && !*(this + 44 * v340 + 2643) || (result = CAHDec::addToPatcherList(this, v132, 604, 0, 0x3FFFFFFFFFFLL, 32, v136, 4), !result))
                                  {
                                    if ((*(*(this + 33) + 188) = 0, v137 = *(this + 33), v138 = *(v137 + 188), *(v137 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v139 = *(this + 33), v140 = *(v139 + 188), *(v139 + 188) = v138, v142 = this + 176 * v340 + 560, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v340 + 70, 188, 0, 0xFFFFFFFFLL, 7, v140, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 608) = 0, v143 = *(this + 33), v144 = *(v143 + 608), *(v143 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v145 = *(this + 33), v146 = *(v145 + 608), *(v145 + 608) = v144, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, v142, 608, 0, 0x3FFFFFFFFFFLL, 32, v146, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 192) = 0, v147 = *(this + 33), v148 = *(v147 + 192), *(v147 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v149 = *(this + 33), v150 = *(v149 + 192), *(v149 + 192) = v148, v151 = (v336 + 8), !*(v336 + 8)) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, (v336 + 8), 192, *(v336 + 60), 0xFFFFFFFFLL, 7, v150, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 612) = 0, v152 = *(this + 33), v153 = *(v152 + 612), *(v152 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v154 = *(this + 33), v155 = *(v154 + 612), *(v154 + 612) = v153, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v336 + 60), 0x3FFFFFFFFFFLL, 32, v155, 4), !result))
                                          {
                                            if ((*(*(this + 33) + 196) = 0, v156 = *(this + 33), v157 = *(v156 + 196), *(v156 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v158 = *(this + 33), v159 = *(v158 + 196), *(v158 + 196) = v157, v160 = this + 176 * v340 + 4784, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v340 + 598, 196, 0, 0xFFFFFFFFLL, 7, v159, 4), !result))
                                            {
                                              if ((*(*(this + 33) + 616) = 0, v161 = *(this + 33), v162 = *(v161 + 616), *(v161 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v163 = *(this + 33), v164 = *(v163 + 616), *(v163 + 616) = v162, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, v160, 616, 0, 0x3FFFFFFFFFFLL, 32, v164, 4), !result))
                                              {
                                                if ((*(*(this + 33) + 200) = 0, v165 = *(this + 33), v166 = *(v165 + 200), *(v165 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v167 = *(this + 33), v168 = *(v167 + 200), *(v167 + 200) = v166, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v336 + 64), 0xFFFFFFFFLL, 7, v168, 4), !result))
                                                {
                                                  if ((*(*(this + 33) + 620) = 0, v169 = *(this + 33), v170 = *(v169 + 620), *(v169 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v171 = *(this + 33), v172 = *(v171 + 620), *(v171 + 620) = v170, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v172, 4), !result))
                                                  {
                                                    if (*(*(this + 32) + 2648) != 1 || ((v173 = *(this + 33), v174 = *(v173 + 192), *(v173 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v175 = *(this + 33), v176 = *(v175 + 192), *(v175 + 192) = v174, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 192, *(v336 + 60), 0xFFFFFFFFLL, 7, v176, 4), !result)) && ((v177 = *(this + 33), v178 = *(v177 + 612), *(v177 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v179 = *(this + 33), v180 = *(v179 + 612), *(v179 + 612) = v178, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v336 + 60), 0x3FFFFFFFFFFLL, 32, v180, 4), !result)) && ((v181 = *(this + 33), v182 = *(v181 + 200), *(v181 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v183 = *(this + 33), v184 = *(v183 + 200), *(v183 + 200) = v182, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v336 + 64), 0xFFFFFFFFLL, 7, v184, 4), !result)) && ((v185 = *(this + 33), v186 = *(v185 + 620), *(v185 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v187 = *(this + 33), v188 = *(v187 + 620), *(v187 + 620) = v186, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v188, 4), !result)) && ((v189 = *(this + 33), v190 = *(v189 + 188), *(v189 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v191 = *(this + 33), v192 = *(v191 + 188), *(v191 + 188) = v190, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 188, *(v336 + 72), 0xFFFFFFFFLL, 7, v192, 4), !result)) && ((v193 = *(this + 33), v194 = *(v193 + 608), *(v193 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v195 = *(this + 33), v196 = *(v195 + 608), *(v195 + 608) = v194, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 608, *(v336 + 72), 0x3FFFFFFFFFFLL, 32, v196, 4), !result)) && ((v197 = *(this + 33), v198 = *(v197 + 196), *(v197 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v199 = *(this + 33), v200 = *(v199 + 196), *(v199 + 196) = v198, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 196, *(v336 + 76), 0xFFFFFFFFLL, 7, v200, 4), !result)) && ((v201 = *(this + 33), v202 = *(v201 + 616), *(v201 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v203 = *(this + 33), v204 = *(v203 + 616), *(v203 + 616) = v202, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 616, *(v336 + 76), 0x3FFFFFFFFFFLL, 32, v204, 4), !result)))
                                                    {
                                                      v205 = this + 4 * v340;
                                                      if (*(v17 + 52) & 0x2000 | v338)
                                                      {
                                                        *(v205 + 116) = 0;
                                                        *(*(this + 33) + 204) = 0;
                                                        if (v338)
                                                        {
                                                          v206 = 0;
                                                          if (v16)
                                                          {
                                                            v207 = 0x2000000;
                                                          }

                                                          else
                                                          {
                                                            v207 = 0;
                                                          }

                                                          v337 = v207;
                                                          do
                                                          {
                                                            v208 = *(v356 + v206);
                                                            v209 = *(v208 + 32);
                                                            *(*(this + 33) + 4 * v206 + 204) = 0;
                                                            *(*(this + 33) + 4 * v206 + 204) = *(*(this + 33) + 4 * v206 + 204) & 0xFFFFFFF | ((v338 << 28) - 0x10000000);
                                                            *(*(this + 33) + 4 * v206 + 204) &= 0xF3FFFFFF;
                                                            *(*(this + 33) + 4 * v206 + 204) = *(*(this + 33) + 4 * v206 + 204) & 0xFDFFFFFF | v337;
                                                            *(*(this + 33) + 4 * v206 + 204) |= 0x1000000u;
                                                            v210 = v339 - *(v208 + 12);
                                                            v211 = v210 & 0x1FFFF;
                                                            if (v210 < -32768)
                                                            {
                                                              v211 = 98304;
                                                            }

                                                            if (v210 < 0x8000)
                                                            {
                                                              v212 = v211;
                                                            }

                                                            else
                                                            {
                                                              v212 = 0x7FFF;
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 204) = *(*(this + 33) + 4 * v206 + 204) & 0xFFFE0000 | v212;
                                                            *(*(this + 33) + 4 * v206 + 204) = *(*(this + 33) + 4 * v206 + 204) & 0xFFFDFFFF | ((*(v208 + 1) & 1) << 17);
                                                            v213 = *(this + 32);
                                                            if (*(v208 + 28) == 1)
                                                            {
                                                              v354 = 0u;
                                                              v355 = 0u;
                                                              v352 = 0u;
                                                              v353 = 0u;
                                                              v350 = 0u;
                                                              v351 = 0u;
                                                              v348 = 0u;
                                                              v349 = 0u;
                                                              v346 = 0u;
                                                              v347 = 0u;
                                                              memset(buf, 0, sizeof(buf));
                                                              DPB = AVC_RLM::getDPB(*(v213 + 2992), buf);
                                                              if (DPB < 1)
                                                              {
                                                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                v343 = 136315138;
                                                                v344 = "populatePictureRegisters";
                                                                v29 = MEMORY[0x277D86220];
                                                                v30 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                                              }

                                                              else
                                                              {
                                                                v215 = DPB;
                                                                while (v215 >= 1)
                                                                {
                                                                  v208 = buf[--v215];
                                                                  if (!*(v208 + 28))
                                                                  {
                                                                    v209 = *(v208 + 32);
                                                                    v213 = *(this + 32);
                                                                    *(v213 + 2702) = 1;
                                                                    goto LABEL_231;
                                                                  }
                                                                }

                                                                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                v343 = 136315138;
                                                                v344 = "populatePictureRegisters";
                                                                v29 = MEMORY[0x277D86220];
                                                                v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                                              }

                                                              v31 = &v343;
                                                              goto LABEL_364;
                                                            }

LABEL_231:
                                                            if ((*(*v213 + 184))(v213))
                                                            {
                                                              v216 = *(this + 32);
                                                              if (*(v216 + 2756))
                                                              {
                                                                buf[0] = 0;
                                                                if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v216, v209, *(v208 + 56), *(v208 + 64), buf) & 1) == 0)
                                                                {
                                                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                  {
                                                                    LOWORD(v343) = 0;
                                                                    v29 = MEMORY[0x277D86220];
                                                                    v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                                                    v31 = &v343;
                                                                    v32 = 2;
                                                                    goto LABEL_42;
                                                                  }

                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                *(v208 + 40) = buf[0] + 8;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 268) = 0;
                                                            v341 = 4 * v206;
                                                            v217 = *(this + 33) + 4 * v206;
                                                            v218 = *(v217 + 268);
                                                            *(v217 + 268) = 0;
                                                            *(*(this + 33) + 4 * v206 + 268) ^= 0xFFFFFF80;
                                                            v219 = *(this + 33) + 4 * v206;
                                                            v220 = *(v219 + 268);
                                                            *(v219 + 268) = v218;
                                                            v141 = this + 560;
                                                            v221 = this + 176 * v209 + 560;
                                                            if (*v221 || *(v221 + 38) || *(v221 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, &v141[176 * v209], v341 + 268, 0, 0xFFFFFFFFLL, 7, v220, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 624) = 0;
                                                            v222 = *(this + 33) + 4 * v206;
                                                            v223 = *(v222 + 624);
                                                            *(v222 + 624) = 0;
                                                            *(*(this + 33) + 4 * v206 + 624) ^= 0x3FFu;
                                                            v224 = *(this + 33) + 4 * v206;
                                                            v225 = *(v224 + 624);
                                                            *(v224 + 624) = v223;
                                                            if (*v221 || *(v221 + 38) || *(v221 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, &v141[176 * v209], v341 + 624, 0, 0x3FFFFFFFFFFLL, 32, v225, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 332) = 0;
                                                            v226 = *(this + 33) + 4 * v206;
                                                            v227 = *(v226 + 332);
                                                            *(v226 + 332) = 0;
                                                            *(*(this + 33) + 4 * v206 + 332) ^= 0xFFFFFF80;
                                                            v228 = *(this + 33) + 4 * v206;
                                                            v229 = *(v228 + 332);
                                                            *(v228 + 332) = v227;
                                                            v230 = *(v208 + 40);
                                                            if (*v230 || *(v230 + 152) || *(v230 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v230, v341 + 332, *(v230 + 52), 0xFFFFFFFFLL, 7, v229, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 688) = 0;
                                                            v231 = *(this + 33) + 4 * v206;
                                                            v232 = *(v231 + 688);
                                                            *(v231 + 688) = 0;
                                                            *(*(this + 33) + 4 * v206 + 688) ^= 0x3FFu;
                                                            v233 = *(this + 33) + 4 * v206;
                                                            v234 = *(v233 + 688);
                                                            *(v233 + 688) = v232;
                                                            v235 = *(v208 + 40);
                                                            if (*v235 || *(v235 + 152) || *(v235 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v235, v341 + 688, *(v235 + 52), 0x3FFFFFFFFFFLL, 32, v234, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 396) = 0;
                                                            v236 = *(this + 33) + 4 * v206;
                                                            v237 = *(v236 + 396);
                                                            *(v236 + 396) = 0;
                                                            *(*(this + 33) + 4 * v206 + 396) ^= 0xFFFFFF80;
                                                            v238 = *(this + 33) + 4 * v206;
                                                            v239 = *(v238 + 396);
                                                            *(v238 + 396) = v237;
                                                            v240 = this + 176 * v209 + 4784;
                                                            if (*v240 || *(v240 + 38) || *(v240 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v240, v341 + 396, 0, 0xFFFFFFFFLL, 7, v239, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 752) = 0;
                                                            v241 = *(this + 33) + 4 * v206;
                                                            v242 = *(v241 + 752);
                                                            *(v241 + 752) = 0;
                                                            *(*(this + 33) + 4 * v206 + 752) ^= 0x3FFu;
                                                            v243 = *(this + 33) + 4 * v206;
                                                            v244 = *(v243 + 752);
                                                            *(v243 + 752) = v242;
                                                            if (*v240 || *(v240 + 38) || *(v240 + 39))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v240, v341 + 752, 0, 0x3FFFFFFFFFFLL, 32, v244, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 460) = 0;
                                                            v245 = *(this + 33) + 4 * v206;
                                                            v246 = *(v245 + 460);
                                                            *(v245 + 460) = 0;
                                                            *(*(this + 33) + 4 * v206 + 460) ^= 0xFFFFFF80;
                                                            v247 = *(this + 33) + 4 * v206;
                                                            v248 = *(v247 + 460);
                                                            *(v247 + 460) = v246;
                                                            v249 = *(v208 + 40);
                                                            if (*v249 || *(v249 + 152) || *(v249 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v249, v341 + 460, *(v249 + 56), 0xFFFFFFFFLL, 7, v248, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v206 + 816) = 0;
                                                            v250 = *(this + 33) + 4 * v206;
                                                            v251 = *(v250 + 816);
                                                            *(v250 + 816) = 0;
                                                            *(*(this + 33) + 4 * v206 + 816) ^= 0x3FFu;
                                                            v252 = *(this + 33) + 4 * v206;
                                                            v253 = *(v252 + 816);
                                                            *(v252 + 816) = v251;
                                                            v254 = *(v208 + 40);
                                                            if (*v254 || *(v254 + 152) || *(v254 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v254, v341 + 816, *(v254 + 56), 0x3FFFFFFFFFFLL, 32, v253, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            if (*(*(this + 32) + 2648) == 1)
                                                            {
                                                              v255 = *(this + 33) + 4 * v206;
                                                              v256 = *(v255 + 332);
                                                              *(v255 + 332) = 0;
                                                              *(*(this + 33) + 4 * v206 + 332) ^= 0xFFFFFF80;
                                                              v257 = *(this + 33) + 4 * v206;
                                                              v258 = *(v257 + 332);
                                                              *(v257 + 332) = v256;
                                                              v259 = *(v208 + 40);
                                                              if (*v259 || *(v259 + 152) || *(v259 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v259, v341 + 332, *(v259 + 52), 0xFFFFFFFFLL, 7, v258, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v260 = *(this + 33) + 4 * v206;
                                                              v261 = *(v260 + 688);
                                                              *(v260 + 688) = 0;
                                                              *(*(this + 33) + 4 * v206 + 688) ^= 0x3FFu;
                                                              v262 = *(this + 33) + 4 * v206;
                                                              v263 = *(v262 + 688);
                                                              *(v262 + 688) = v261;
                                                              v264 = *(v208 + 40);
                                                              if (*v264 || *(v264 + 152) || *(v264 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v264, v341 + 688, *(v264 + 52), 0x3FFFFFFFFFFLL, 32, v263, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v265 = *(this + 33) + 4 * v206;
                                                              v266 = *(v265 + 460);
                                                              *(v265 + 460) = 0;
                                                              *(*(this + 33) + 4 * v206 + 460) ^= 0xFFFFFF80;
                                                              v267 = *(this + 33) + 4 * v206;
                                                              v268 = *(v267 + 460);
                                                              *(v267 + 460) = v266;
                                                              v269 = *(v208 + 40);
                                                              if (*v269 || *(v269 + 152) || *(v269 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v269, v341 + 460, *(v269 + 56), 0xFFFFFFFFLL, 7, v268, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v270 = *(this + 33) + 4 * v206;
                                                              v271 = *(v270 + 816);
                                                              *(v270 + 816) = 0;
                                                              *(*(this + 33) + 4 * v206 + 816) ^= 0x3FFu;
                                                              v272 = *(this + 33) + 4 * v206;
                                                              v273 = *(v272 + 816);
                                                              *(v272 + 816) = v271;
                                                              v274 = *(v208 + 40);
                                                              if (*v274 || *(v274 + 152) || *(v274 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v274, v341 + 816, *(v274 + 56), 0x3FFFFFFFFFFLL, 32, v273, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v275 = *(this + 33) + 4 * v206;
                                                              v276 = *(v275 + 268);
                                                              *(v275 + 268) = 0;
                                                              *(*(this + 33) + 4 * v206 + 268) ^= 0xFFFFFF80;
                                                              v277 = *(this + 33) + 4 * v206;
                                                              v278 = *(v277 + 268);
                                                              *(v277 + 268) = v276;
                                                              v279 = *(v208 + 40);
                                                              if (*v279 || *(v279 + 152) || *(v279 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v279, v341 + 268, *(v279 + 64), 0xFFFFFFFFLL, 7, v278, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v280 = *(this + 33) + 4 * v206;
                                                              v281 = *(v280 + 624);
                                                              *(v280 + 624) = 0;
                                                              *(*(this + 33) + 4 * v206 + 624) ^= 0x3FFu;
                                                              v282 = *(this + 33) + 4 * v206;
                                                              v283 = *(v282 + 624);
                                                              *(v282 + 624) = v281;
                                                              v284 = *(v208 + 40);
                                                              if (*v284 || *(v284 + 152) || *(v284 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v284, v341 + 624, *(v284 + 64), 0x3FFFFFFFFFFLL, 32, v283, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v285 = *(this + 33) + 4 * v206;
                                                              v286 = *(v285 + 396);
                                                              *(v285 + 396) = 0;
                                                              *(*(this + 33) + 4 * v206 + 396) ^= 0xFFFFFF80;
                                                              v287 = *(this + 33) + 4 * v206;
                                                              v288 = *(v287 + 396);
                                                              *(v287 + 396) = v286;
                                                              v289 = *(v208 + 40);
                                                              if (*v289 || *(v289 + 152) || *(v289 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v289, v341 + 396, *(v289 + 68), 0xFFFFFFFFLL, 7, v288, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              v290 = *(this + 33) + 4 * v206;
                                                              v291 = *(v290 + 752);
                                                              *(v290 + 752) = 0;
                                                              *(*(this + 33) + 4 * v206 + 752) ^= 0x3FFu;
                                                              v292 = *(this + 33) + 4 * v206;
                                                              v293 = *(v292 + 752);
                                                              *(v292 + 752) = v291;
                                                              v294 = *(v208 + 40);
                                                              if (*v294 || *(v294 + 152) || *(v294 + 156))
                                                              {
                                                                result = CAHDec::addToPatcherList(this, v294, v341 + 752, *(v294 + 68), 0x3FFFFFFFFFFLL, 32, v293, 4);
                                                                if (result)
                                                                {
                                                                  return result;
                                                                }
                                                              }
                                                            }

                                                            ++v206;
                                                          }

                                                          while (v206 != v338);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        *(v17 + 52) |= 0x2000u;
                                                        *(v205 + 116) = 1;
                                                        *(*(this + 33) + 204) = 0;
                                                      }

                                                      *(*(this + 33) + 524) = 0;
                                                      *(*(this + 33) + 880) = 0;
                                                      *(*(this + 33) + 528) = 0;
                                                      *(*(this + 33) + 884) = 0;
                                                      *(*(this + 33) + 532) = 0;
                                                      *(*(this + 33) + 536) = 0;
                                                      if (v342)
                                                      {
                                                        v295 = *(this + 32);
                                                        v296 = *(v295 + 2892);
                                                        if (*(v295 + 2892))
                                                        {
                                                          v297 = *(v295 + 2904);
                                                          v296 = *(v295 + 2908);
                                                        }

                                                        else
                                                        {
                                                          v297 = 0;
                                                        }

                                                        v298 = *(v295 + 3544);
                                                        v299 = *(v298 + 52);
                                                        v300 = v299 + v297;
                                                        if (__CFADD__(v299, v297))
                                                        {
                                                          v301 = 1;
                                                        }

                                                        else
                                                        {
                                                          v302 = *(v298 + 56);
                                                          v303 = v302 + v296;
                                                          if (!__CFADD__(v302, v296))
                                                          {
                                                            v304 = *(this + 33);
                                                            v305 = *(v304 + 524);
                                                            *(v304 + 524) = 0;
                                                            *(*(this + 33) + 524) ^= 0xFFFFFFC0;
                                                            v306 = *(this + 33);
                                                            v307 = *(v306 + 524);
                                                            *(v306 + 524) = v305;
                                                            v308 = *(*(this + 32) + 3544);
                                                            if (*v308 || *(v308 + 152) || *(v308 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v308, 524, v300, 0xFFFFFFFFLL, 6, v307, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v309 = *(this + 33);
                                                            v310 = *(v309 + 880);
                                                            *(v309 + 880) = 0;
                                                            *(*(this + 33) + 880) ^= 0x3FFu;
                                                            v311 = *(this + 33);
                                                            v312 = *(v311 + 880);
                                                            *(v311 + 880) = v310;
                                                            v313 = *(*(this + 32) + 3544);
                                                            if (*v313 || *(v313 + 152) || *(v313 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v313, 880, v300, 0x3FFFFFFFFFFLL, 32, v312, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v314 = *(this + 33);
                                                            v315 = *(v314 + 528);
                                                            *(v314 + 528) = 0;
                                                            *(*(this + 33) + 528) ^= 0xFFFFFFC0;
                                                            v316 = *(this + 33);
                                                            v317 = *(v316 + 528);
                                                            *(v316 + 528) = v315;
                                                            v318 = *(*(this + 32) + 3544);
                                                            if (*v318 || *(v318 + 152) || *(v318 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v318, 528, v303, 0xFFFFFFFFLL, 6, v317, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            v319 = *(this + 33);
                                                            v320 = *(v319 + 884);
                                                            *(v319 + 884) = 0;
                                                            *(*(this + 33) + 884) ^= 0x3FFu;
                                                            v321 = *(this + 33);
                                                            v322 = *(v321 + 884);
                                                            *(v321 + 884) = v320;
                                                            v323 = *(*(this + 32) + 3544);
                                                            if (*v323 || *(v323 + 152) || *(v323 + 156))
                                                            {
                                                              result = CAHDec::addToPatcherList(this, v323, 884, v303, 0x3FFFFFFFFFFLL, 32, v322, 4);
                                                              if (result)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            if (v7)
                                                            {
                                                              *(*(this + 33) + 532) = *(*(this + 33) + 532) & 0xFFFC003F | (((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF) << 6);
                                                              v324 = (*(*(this + 32) + 3544) + 80);
                                                            }

                                                            else
                                                            {
                                                              if (CAHDecCloverAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
                                                              {
                                                                return 0xFFFFFFFFLL;
                                                              }

                                                              *(*(this + 33) + 532) = *(*(this + 33) + 532) & 0xFFFC003F | (((*(this + 3976) >> 6) & 0xFFF) << 6);
                                                              v324 = (this + 15908);
                                                            }

                                                            *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFF8003F | (((*v324 >> 6) & 0x1FFF) << 6);
                                                            goto LABEL_341;
                                                          }

                                                          v301 = 2;
                                                        }

                                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          LODWORD(buf[0]) = 136315394;
                                                          *(buf + 4) = "populatePictureRegisters";
                                                          WORD2(buf[1]) = 1024;
                                                          *(&buf[1] + 6) = v301;
                                                          v29 = MEMORY[0x277D86220];
                                                          v30 = "AppleAVD: %s(): failKind = %d";
                                                          v31 = buf;
                                                          v32 = 18;
                                                          goto LABEL_42;
                                                        }

                                                        return 0xFFFFFFFFLL;
                                                      }

LABEL_341:
                                                      v325 = *(this + 32);
                                                      if (*(v325 + 2360) == 1)
                                                      {
                                                        v326 = *(this + 33);
                                                        *(v326 + 984) = *(v326 + 984) & 0xFFFFFFFE | *(v325 + 2508) & 1;
                                                        if (*(v325 + 2508))
                                                        {
                                                          *(v326 + 1960) = 0x10000000;
                                                          *(v326 + 1964) = *(v325 + 2368);
                                                          *(v326 + 1976) = 0;
                                                          *(v326 + 1968) = 0;
                                                          *(v326 + 1980) = *(v325 + 2372);
                                                          v327 = *(v325 + 2404);
                                                          *(v326 + 1996) = *(v325 + 2388);
                                                          *(v326 + 2012) = v327;
                                                        }

                                                        *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFFD | (2 * (*(v325 + 2512) & 1));
                                                        if (*(v325 + 2512))
                                                        {
                                                          *(v326 + 2028) = 0;
                                                          if (!*(v325 + 2424))
                                                          {
                                                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                            {
                                                              return 0xFFFFFFFFLL;
                                                            }

                                                            LODWORD(buf[0]) = 136315138;
                                                            *(buf + 4) = "populatePictureRegisters";
                                                            v29 = MEMORY[0x277D86220];
                                                            v30 = "AppleAVD: %s(): H13A descrambler is not supported\n";
                                                            goto LABEL_363;
                                                          }

                                                          *(v325 + 2640) = 0;
                                                          v328 = *(v326 + 2028) & 0xF7FFFFF | ((*(v325 + 2420) & 1) << 23) | 0x20000000;
                                                          *(v326 + 2028) = v328;
                                                          *(v326 + 2028) = v328 & 0xFFC00000 | (*(v325 + 2364) == 0);
                                                          v329 = *(v325 + 2428);
                                                          v330 = *(v325 + 2444);
                                                          *(v326 + 2064) = *(v325 + 2460);
                                                          *(v326 + 2048) = v330;
                                                          *(v326 + 2032) = v329;
                                                        }

                                                        *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFFB | (4 * (*(v325 + 2516) & 1));
                                                        *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFF7 | (8 * (*(v325 + 2520) & 1));
                                                        *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFEF | (16 * (*(v325 + 2524) & 1));
                                                        *(v326 + 2188) = 0;
                                                        if (*(v325 + 2476) == 2)
                                                        {
                                                          v331 = 805306368;
                                                        }

                                                        else
                                                        {
                                                          v331 = 813694976;
                                                        }

                                                        *(v326 + 2188) = v331;
                                                        memcpy((v326 + 2192), (v325 + 2480), 4 * *(v325 + 2476));
                                                        if (*(v325 + 2516))
                                                        {
                                                          *(v325 + 2516) = 0;
                                                        }

                                                        *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFDF | (32 * (*(v325 + 2632) & 1));
                                                        if (*(v325 + 2632))
                                                        {
                                                          *(v326 + 2080) = 0x80000000;
                                                          v332 = ((*(v325 + 2528) & 1) << 27) | 0x80000000;
                                                          *(v326 + 2080) = v332;
                                                          *(v326 + 2080) = v332 | (((2 * *(v325 + 2528)) & 4 | (*(v325 + 2528) >> 1) & 2 | (*(v325 + 2528) >> 3) & 1) << 24);
                                                          v333 = *(v325 + 2532);
                                                          v334 = *(v325 + 2564);
                                                          *(v326 + 2100) = *(v325 + 2548);
                                                          *(v326 + 2116) = v334;
                                                          *(v326 + 2084) = v333;
                                                          *(v326 + 2132) = *(v325 + 2580);
                                                          *(v326 + 2140) = *(v325 + 2588);
                                                          v335 = *(v325 + 2528);
                                                          if ((v335 & 6) != 0 && (v335 & 8) == 0)
                                                          {
                                                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                            {
                                                              return 0xFFFFFFFFLL;
                                                            }

                                                            LODWORD(buf[0]) = 136315138;
                                                            *(buf + 4) = "populatePictureRegisters";
                                                            v29 = MEMORY[0x277D86220];
                                                            v30 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
LABEL_363:
                                                            v31 = buf;
LABEL_364:
                                                            v32 = 12;
LABEL_42:
                                                            _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v31, v32);
                                                            return 0xFFFFFFFFLL;
                                                          }

                                                          *(v326 + 2148) = *(v325 + 2596);
                                                        }

                                                        *(*(this + 33) + 984) = *(*(this + 33) + 984) & 0xFFFFFFBF | ((*(v325 + 2636) & 1) << 6);
                                                        if (*(v325 + 2636))
                                                        {
                                                          result = 0;
                                                          *(v326 + 2164) = -1879048192;
                                                          *(v326 + 2164) = ((*(v325 + 2612) & 1) << 23) | 0x90000000;
                                                          *(v326 + 2168) = *(v325 + 2616);
                                                          *(v325 + 2640) = 1;
                                                          return result;
                                                        }
                                                      }

                                                      return 0;
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
    }
  }

  return result;
}