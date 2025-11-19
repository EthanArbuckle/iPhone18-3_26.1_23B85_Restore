uint64_t CAHDecRoseHevc::updateCommonRegisters(CAHDecRoseHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecRoseHevc::copyScalingList(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a2 + 4);
  v6 = *a2 & 0xFEFFFFFF | ((*(a5 + 6196) & 1) << 24);
  *a2 = v6;
  v7 = v6 & 0xFFFFFFC0 | *(a5 + 6192) & 0x3F;
  *a2 = v7;
  v8 = v7 & 0xFFFFF03F | ((*(a5 + 6193) & 0x3F) << 6);
  *a2 = v8;
  v9 = v8 & 0xFFFC0FFF | ((*(a5 + 6194) & 0x3F) << 12);
  *a2 = v9;
  v10 = v9 & 0xFF03FFFF | ((*(a5 + 6195) & 0x3F) << 18);
  *a2 = v10;
  v11 = v5 & 0xFF00FFFF | (*(a5 + 6144) << 16);
  *(a2 + 4) = v11;
  v12 = v11 & 0xFFFF00FF | (*(a5 + 6148) << 8);
  *(a2 + 4) = v12;
  *(a2 + 4) = v12 & 0xFFFFFF00 | *(a5 + 6152);
  v13 = *(a2 + 12);
  v14 = *(a2 + 8) & 0xFF00FFFF | (*(a5 + 6156) << 16);
  *(a2 + 8) = v14;
  v15 = v14 & 0xFFFF00FF | (*(a5 + 6160) << 8);
  *(a2 + 8) = v15;
  *(a2 + 8) = v15 & 0xFFFFFF00 | *(a5 + 6164);
  v16 = *(a5 + 6168) << 16;
  if (a4 == 3)
  {
    v17 = v13 & 0xFF00FFFF | v16;
    *(a2 + 12) = v17;
    v18 = v17 & 0xFFFF00FF | (*(a5 + 6148) << 8);
    *(a2 + 12) = v18;
    *(a2 + 12) = v18 & 0xFFFFFF00 | *(a5 + 6152);
    v19 = *(a2 + 16) & 0xFF00FFFF | (*(a5 + 6172) << 16);
    *(a2 + 16) = v19;
    v20 = v19 & 0xFFFF00FF | (*(a5 + 6160) << 8);
    *(a2 + 16) = v20;
    *(a2 + 16) = v20 & 0xFFFFFF00 | *(a5 + 6164);
    *a2 = v10 | 0xD80000;
  }

  else
  {
    *(a2 + 12) = v13 & 0xFF000000 | v16;
    *(a2 + 16) = (*(a5 + 6172) << 16) | (*(a2 + 19) << 24);
  }

  v21 = 0;
  v22 = a3 + 896;
  v23 = a5 + 32;
  do
  {
    v24 = 0;
    v25 = v23;
    do
    {
      v26 = *(v22 + 4 * v24) & 0xFFFFFF | (*(v25 - 32) << 24);
      *(v22 + 4 * v24) = v26;
      v27 = v26 & 0xFF00FFFF | (*(v25 - 16) << 16);
      *(v22 + 4 * v24) = v27;
      v28 = v27 & 0xFFFF00FF | (*v25 << 8);
      *(v22 + 4 * v24) = v28;
      *(v22 + 4 * v24++) = v28 & 0xFFFFFF00 | *(v25 + 16);
      v25 += 4;
    }

    while (v24 != 4);
    ++v21;
    v22 += 16;
    v23 += 256;
  }

  while (v21 != 6);
  v29 = 0;
  v30 = a3 + 512;
  v31 = a5 + 1600;
  do
  {
    v32 = 0;
    v33 = a5 + 1536 + (v29 << 8);
    v34 = v31;
    do
    {
      v35 = (v34 + 96 * (v32 >> 3));
      v36 = *(v30 + 4 * v32) & 0xFFFFFF | (*(v35 - 16) << 24);
      *(v30 + 4 * v32) = v36;
      v37 = ((v32 & 0xC) + 24 * (v32 >> 3)) & 0xFFFFFFFC | v32 & 3;
      v38 = v36 & 0xFF00FFFF | (*(v33 + 4 * (v37 + 8)) << 16);
      *(v30 + 4 * v32) = v38;
      v39 = v38 & 0xFFFF00FF | (*v35 << 8);
      *(v30 + 4 * v32) = v39;
      *(v30 + 4 * v32++) = v39 & 0xFFFFFF00 | *(v33 + 4 * (v37 + 24));
      v34 += 4;
    }

    while (v32 != 16);
    ++v29;
    v30 += 64;
    v31 += 256;
  }

  while (v29 != 6);
  v40 = 0;
  v41 = a5 + 3136;
  v42 = a3;
  do
  {
    v43 = 0;
    v44 = a5 + 3072 + (v40 << 8);
    v45 = v41;
    do
    {
      v46 = (v45 + 96 * (v43 >> 3));
      v47 = *(v42 + 4 * v43) & 0xFFFFFF | (*(v46 - 16) << 24);
      *(v42 + 4 * v43) = v47;
      v48 = ((v43 & 0xC) + 24 * (v43 >> 3)) & 0xFFFFFFFC | v43 & 3;
      v49 = v47 & 0xFF00FFFF | (*(v44 + 4 * (v48 + 8)) << 16);
      *(v42 + 4 * v43) = v49;
      v50 = v49 & 0xFFFF00FF | (*v46 << 8);
      *(v42 + 4 * v43) = v50;
      *(v42 + 4 * v43++) = v50 & 0xFFFFFF00 | *(v44 + 4 * (v48 + 24));
      v45 += 4;
    }

    while (v43 != 16);
    ++v40;
    v42 += 64;
    v41 += 256;
  }

  while (v40 != 6);
  v51 = 0;
  v52 = a5 + 4608;
  v53 = a5 + 4672;
  v54 = 1;
  do
  {
    v55 = 0;
    v56 = a3 + 384 + (v51 << 6);
    v57 = v54;
    v58 = v53 + (v51 << 8);
    v59 = v52 + (v51 << 8);
    do
    {
      v60 = (v58 + 96 * (v55 >> 3));
      v61 = *(v56 + 4 * v55) & 0xFFFFFF | (*(v60 - 16) << 24);
      *(v56 + 4 * v55) = v61;
      v62 = ((v55 & 0xC) + 24 * (v55 >> 3)) & 0xFFFFFFFC | v55 & 3;
      v63 = v61 & 0xFF00FFFF | (*(v59 + 4 * (v62 + 8)) << 16);
      *(v56 + 4 * v55) = v63;
      v64 = v63 & 0xFFFF00FF | (*v60 << 8);
      *(v56 + 4 * v55) = v64;
      result = v64 & 0xFFFFFF00 | *(v59 + 4 * (v62 + 24));
      *(v56 + 4 * v55++) = result;
      v58 += 4;
    }

    while (v55 != 16);
    v54 = 0;
    v51 = 1;
  }

  while ((v57 & 1) != 0);
  return result;
}

uint64_t CAHDecRoseHevc::populateSequenceRegisters(CAHDecRoseHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v3 = v1[11];
  v4 = v1[10] & 0xFFFFE000 | ((*(v2 + 3608) >> 3) - 1) & 0x1FFF;
  v1[10] = v4;
  v1[10] = v4 & 0xE000FFFF | (((((*(v2 + 3612) << 13) + 536805376) >> 16) & 0x1FFF) << 16);
  v5 = v3 & 0xFFFFFFFE | *(v2 + 10648) & 1;
  v1[11] = v5;
  v6 = v5 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[11] = v6;
  v7 = v6 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[11] = v7;
  v8 = v7 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[11] = v8;
  v9 = v8 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[11] = v9;
  v10 = v9 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[11] = v10;
  v11 = v10 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[11] = v11;
  v12 = v11 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[11] = v12;
  v13 = v12 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[11] = v13;
  v14 = v13 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[11] = v14;
  v1[11] = v14 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v15 = *(v2 + 10650);
  if (*(v2 + 10650))
  {
    v16 = v1[12] | 0x1000;
    v1[12] = v16;
    v17 = v16 & 0xFFFFFFFC | (*(v2 + 10664) + *(v2 + 10660)) & 3;
    v1[12] = v17;
    v18 = v17 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[12] = v18;
    v19 = v18 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[12] = v19;
    v15 = v19 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[12] = v15;
  if (*(v2 + 22833))
  {
    v20 = v1[13] & 0xFFFFFFFE | *(v2 + 22844) & 1;
    v1[13] = v20;
    v21 = v20 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[13] = v21;
    v22 = v21 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[13] = v22;
    v23 = v22 & 0xFFFFFFF7 | (8 * (*(v2 + 22841) == 0));
    v1[13] = v23;
    v24 = v23 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[13] = v24;
    v25 = v24 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[13] = v25;
    v26 = v25 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[13] = v26;
    v27 = v26 & 0xFFFFFF7F | ((*(v2 + 22837) & 1) << 7);
    v1[13] = v27;
    v28 = v27 & 0xFFFFFEFF | ((*(v2 + 22836) & 1) << 8);
    v1[13] = v28;
    v29 = v28 & 0xFFFFFDFF;
  }

  else
  {
    v29 = 8;
    v1[13] = 8;
  }

  v1[13] = v29 | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecRoseHevc::copyScalingList(this, (v1 + 14), *(this + 33) + 2972, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecRoseHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 464;
  a3[1] = v3 + 3280;
  return result;
}

__n128 CAHDecRoseHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 6624);
  v6 = *(v4 + 6656);
  *(a3 + 16) = *(v4 + 6640);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 6672);
  v8 = *(v4 + 6688);
  v9 = *(v4 + 6720);
  *(a3 + 80) = *(v4 + 6704);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 6736);
  v11 = *(v4 + 6752);
  v12 = *(v4 + 6784);
  *(a3 + 144) = *(v4 + 6768);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = 0;
  return result;
}

uint64_t CAHDecRoseHevc::populatePictureRegisters(CAHDecRoseHevc *this)
{
  v217 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2088);
  v203 = *(v2 + 2948);
  v201 = *(v2 + 2952);
  v200 = *(v2 + 8280);
  v204 = *(v2 + 8994);
  v196 = *(v2 + 3548);
  v197 = *(v2 + 2924);
  v9 = *(v2 + 2644);
  v205 = *(v2 + 8312);
  v198 = *(v2 + 8);
  v10 = *(v2 + 8424);
  v216[0] = *(v2 + 8408);
  v216[1] = v10;
  v11 = *(v2 + 8456);
  v216[2] = *(v2 + 8440);
  v216[3] = v11;
  v194 = *(v2 + 8608);
  v12 = (*(*v2 + 184))(v2);
  v13 = *(this + 32);
  if (v12 && (v13[689] || v13[4] == 1))
  {
    v193 = 8;
  }

  else
  {
    v193 = 0;
  }

  v14 = *(this + 33);
  v15 = v5 + 23176 * v3;
  v16 = *(v15 + 4420);
  v17 = *(v15 + 4424);
  memset(v215, 0, sizeof(v215));
  memset(v214, 0, sizeof(v214));
  (*(*v13 + 344))();
  v18 = 0;
  v19 = (*(this + 32) + 8616);
  do
  {
    v218 = vld2q_f64(v19);
    v19 += 4;
    v215[v18] = v218.val[0];
    v214[v18++] = v218.val[1];
  }

  while (v18 != 4);
  v20 = v6 + 9856 * v4;
  if ((v7 & 1) == 0)
  {
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v21 = *(v20 + 53);
  if (*(v20 + 53))
  {
    if (!*(v20 + 52))
    {
      v21 = *(v15 + 22888) > 1u;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  *(v14 + 76) = vorr_s8(vand_s8(*(v14 + 76), 0xFFF40000FFFFFFFELL), (v21 | 0x8000000000000));
  *(v14 + 84) = 0;
  v22 = (*(**(this + 32) + 232))(*(this + 32));
  if (v22 && *(*(this + 32) + 2980) == 2)
  {
    v23 = *(v14 + 84);
    *(v14 + 80) |= 0x40000u;
    v24 = v23 & 0xFFDFFFFF;
  }

  else
  {
    v25 = *(v14 + 84);
    *(v14 + 80) &= ~0x40000u;
    v24 = v25 & 0xFFDFFFFF | ((*(v15 + 22284) != 0) << 21);
  }

  v26 = v17 + v16;
  *(v14 + 84) = v24;
  if (*(v20 + 6466))
  {
    v27 = 32 * (*(v20 + 6477) & 1);
    v28 = v24 & 0xFFFFFFDF | v27;
    *(v14 + 84) = v28;
    if (*(v20 + 6477))
    {
      v29 = *(v20 + 6484) & 7;
    }

    else
    {
      v29 = 0;
    }

    v31 = v29 | v28 & 0xFFFFFFF8;
    *(v14 + 84) = v31;
    if (v27)
    {
      v32 = (v20 + 6512);
      v33 = (v14 + 112);
      v34 = -1;
      do
      {
        v35 = *v33 & 0xFFFFFFE0 | *v32 & 0x1F;
        *v33 = v35;
        *v33++ = v35 & 0xFFFFFC1F | (32 * (*(v32 - 6) & 0x1F));
        ++v34;
        ++v32;
      }

      while (v34 < v29);
    }

    LOBYTE(v36) = *(v20 + 6477);
    if (v36)
    {
      v36 = *(v20 + 6480);
    }

    v37 = v31 & 0xFFFFFFE7 | (8 * ((v26 - v36) & 3));
    *(v14 + 84) = v37;
    v38 = v37 & 0xFFFFFFBF | ((*(v20 + 6476) & 1) << 6);
    *(v14 + 84) = v38;
    v30 = v38 & 0xFFFFFE7F | ((*(v20 + 6472) & 3) << 7);
  }

  else
  {
    v30 = v24 & 0xFFFFFFE7 | (8 * (v26 & 3));
  }

  *(v14 + 84) = v30;
  LOBYTE(v39) = *(v20 + 34);
  if (v39)
  {
    v39 = *(v20 + 36);
  }

  v40 = v30 & 0xFFFE7FFF | (((v26 - v39) & 3) << 15);
  *(v14 + 84) = v40;
  v41 = v40 & 0xFFFFF1FF | ((*(v20 + 6460) & 7) << 9);
  *(v14 + 84) = v41;
  v42 = v41 & 0xFFFFEFFF | ((*(v20 + 53) & 1) << 12);
  *(v14 + 84) = v42;
  v43 = v42 & 0xFFFFDFFF | ((*(v20 + 52) & 1) << 13);
  *(v14 + 84) = v43;
  v44 = v43 & 0xFFFFBFFF | ((*(v20 + 51) & 1) << 14);
  *(v14 + 84) = v44;
  v45 = v44 & 0xFFFDFFFF | ((*(v20 + 34) & 1) << 17);
  *(v14 + 84) = v45;
  v46 = v45 & 0xFFFBFFFF | ((*(v20 + 33) & 1) << 18);
  *(v14 + 84) = v46;
  v47 = v46 & 0xFFF7FFFF | ((*(v20 + 32) & 1) << 19);
  *(v14 + 84) = v47;
  *(v14 + 84) = v47 & 0xFFEFFFFF | ((*(v20 + 16) & 1) << 20);
  v48 = *(v14 + 88) & 0xFFFFFFE0 | *(v20 + 44) & 0x1F;
  *(v14 + 88) = v48;
  *(v14 + 88) = v48 & 0xFFFFFC1F | (32 * (*(v20 + 40) & 0x1F));
  if (*(v20 + 252))
  {
    CAHDecRoseHevc::copyScalingList(v22, v14 + 92, *(this + 33) + 7072, *(v15 + 3600), v20 + 256);
  }

  v49 = (v8 + 8);
  if (*(v8 + 8) || *(v8 + 160) || *(v8 + 164))
  {
    v50 = CAHDec::addToPatcherList(this, (v8 + 8), 136, *(v8 + 60), 0xFFFFFFFFLL, 0, -1, 4);
    if (v50)
    {
      v51 = v50;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

      goto LABEL_36;
    }
  }

  *(*(this + 33) + 140) = *(v8 + 132);
  v53 = *(*(this + 33) + 140);
  if ((v53 & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = v53;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: <WARNING> %s(): h->req.a.da.DecAddrYSize.val = %d", buf, 0x12u);
  }

  if (*v49 || *(v8 + 160) || *(v8 + 164))
  {
    v54 = CAHDec::addToPatcherList(this, (v8 + 8), 152, *(v8 + 64), 0xFFFFFFFFLL, 0, -1, 4);
    if (v54)
    {
      v51 = v54;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

      goto LABEL_45;
    }
  }

  *(*(this + 33) + 156) = *(v8 + 136);
  if ((*(*(this + 33) + 156) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = 644;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
  }

  if (*(this + 22 * v205 + 58) || *(this + 44 * v205 + 154) || *(this + 44 * v205 + 155))
  {
    v55 = CAHDec::addToPatcherList(this, this + 22 * v205 + 58, 144, 0, 0xFFFFFFFFLL, 0, -1, 4);
    if (v55)
    {
      v51 = v55;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

      goto LABEL_94;
    }
  }

  *(*(this + 33) + 148) = *(this + 44 * v205 + 127);
  v56 = *(this + 33);
  if ((*(v56 + 148) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = 649;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v56 = *(this + 33);
  }

  *(v56 + 168) = *(this + 4474);
  if (*(this + 22 * v205 + 410) || *(this + 44 * v205 + 858) || *(this + 44 * v205 + 859))
  {
    v57 = CAHDec::addToPatcherList(this, this + 22 * v205 + 410, 160, 0, 0xFFFFFFFFLL, 0, -1, 4);
    if (v57)
    {
      v51 = v57;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

      goto LABEL_64;
    }

    v56 = *(this + 33);
  }

  *(v56 + 164) = *(this + 44 * v205 + 831);
  v59 = *(this + 33);
  if ((*(v59 + 164) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = 655;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v59 = *(this + 33);
  }

  *(v59 + 170) = *(this + 4475);
  if (*(*(this + 32) + 2648) == 1)
  {
    v60 = *v49;
    if (!v204)
    {
      if (v60 || *(v8 + 160) || *(v8 + 164))
      {
        v62 = CAHDec::addToPatcherList(this, (v8 + 8), 144, *(v8 + 72), 0xFFFFFFFFLL, 0, -1, 4);
        if (v62)
        {
          v51 = v62;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          goto LABEL_94;
        }

        v59 = *(this + 33);
      }

      *(v59 + 148) = *(v8 + 144);
      v65 = *(this + 33);
      *(v65 + 168) = *(v8 + 96);
      if (*(v8 + 8) || *(v8 + 160) || *(v8 + 164))
      {
        v66 = CAHDec::addToPatcherList(this, (v8 + 8), 160, *(v8 + 76), 0xFFFFFFFFLL, 0, -1, 4);
        if (v66)
        {
          v51 = v66;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          goto LABEL_64;
        }

        v65 = *(this + 33);
      }

      *(v65 + 164) = *(v8 + 148);
      v68 = (v8 + 100);
      goto LABEL_114;
    }

    if (v60 || *(v8 + 160) || *(v8 + 164))
    {
      v61 = CAHDec::addToPatcherList(this, (v8 + 8), 136, *(v8 + 68), 0xFFFFFFFFLL, 0, -1, 4);
      if (v61)
      {
        v51 = v61;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

LABEL_36:
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        v210 = 2080;
        v211 = "HevcMaster";
        v212 = 2080;
        v213 = "req.a.da.DecAddrY";
        v52 = MEMORY[0x277D86220];
        goto LABEL_65;
      }

      v59 = *(this + 33);
    }

    *(v59 + 140) = *(v8 + 140);
    v63 = *(*(this + 33) + 140);
    if ((v63 & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = v63;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: <WARNING> %s(): h->req.a.da.DecAddrYSize.val = %d", buf, 0x12u);
    }

    if (*v49 || *(v8 + 160) || *(v8 + 164))
    {
      v64 = CAHDec::addToPatcherList(this, (v8 + 8), 144, *(v8 + 80), 0xFFFFFFFFLL, 0, -1, 4);
      if (v64)
      {
        v51 = v64;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

LABEL_94:
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        v210 = 2080;
        v211 = "HevcMaster";
        v212 = 2080;
        v213 = "req.a.da.DecHdrY";
        v52 = MEMORY[0x277D86220];
        goto LABEL_65;
      }
    }

    *(*(this + 33) + 148) = *(v8 + 152);
    v59 = *(this + 33);
    if ((*(v59 + 148) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = 679;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      v59 = *(this + 33);
    }

    *(v59 + 168) = *(v8 + 104);
    if (v197)
    {
      if (*v200 || *(v200 + 152) || *(v200 + 156))
      {
        v67 = CAHDec::addToPatcherList(this, v200, 152, *(v200 + 56), 0xFFFFFFFFLL, 0, -1, 4);
        if (v67)
        {
          v51 = v67;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

LABEL_45:
          *buf = 136315650;
          *&buf[4] = "populatePictureRegisters";
          v210 = 2080;
          v211 = "HevcMaster";
          v212 = 2080;
          v213 = "req.a.da.DecAddrC";
          v52 = MEMORY[0x277D86220];
          goto LABEL_65;
        }

        v59 = *(this + 33);
      }

      *(v59 + 156) = *(v200 + 128);
      if ((*(*(this + 33) + 156) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        v210 = 1024;
        LODWORD(v211) = 687;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      if (*v200 || *(v200 + 152) || *(v200 + 156))
      {
        v144 = CAHDec::addToPatcherList(this, v200, 160, *(v200 + 68), 0xFFFFFFFFLL, 0, -1, 4);
        if (v144)
        {
          v51 = v144;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

LABEL_64:
          *buf = 136315650;
          *&buf[4] = "populatePictureRegisters";
          v210 = 2080;
          v211 = "HevcMaster";
          v212 = 2080;
          v213 = "req.a.da.DecHdrC";
          v52 = MEMORY[0x277D86220];
          goto LABEL_65;
        }
      }

      *(*(this + 33) + 164) = *(v200 + 140);
      v68 = (v200 + 92);
LABEL_114:
      v59 = *(this + 33);
      *(v59 + 170) = *v68;
    }
  }

  v69 = v9;
  if (!v9)
  {
    *(v59 + 2956) = 0;
LABEL_127:
    *(*(this + 33) + 2960) = 0;
    goto LABEL_128;
  }

  v70 = *(this + 32);
  if (v203 && v201 == 2)
  {
    v71 = *(v70 + 8248);
    v72 = v198;
    if (v198)
    {
      v72 = *(v71 + 84);
    }

    v73 = *(v71 + 60);
    *(v59 + 2960) = v72;
    if (*v71 || *(v71 + 152) || *(v71 + 156))
    {
      v74 = CAHDec::addToPatcherList(this, v71, 172, v73, 0xFFFFFFFFLL, 0, -1, 4);
      if (v74)
      {
        v51 = v74;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

        goto LABEL_125;
      }

      v59 = *(this + 33);
      v71 = *(*(this + 32) + 8248);
    }

    *(v59 + 176) = *(v71 + 132);
    if ((*(*(this + 33) + 176) & 0x3F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = 755;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    }

    if (v197)
    {
      if (*v200 || *(v200 + 152) || *(v200 + 156))
      {
        v95 = CAHDec::addToPatcherList(this, v200, 180, *(v200 + 56), 0xFFFFFFFFLL, 0, -1, 4);
        if (v95)
        {
          v51 = v95;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          goto LABEL_168;
        }
      }

      *(*(this + 33) + 184) = *(v200 + 128);
      if ((*(*(this + 33) + 184) & 0x3F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        v210 = 1024;
        LODWORD(v211) = 773;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      v99 = *(this + 33);
      if (v198)
      {
        *(v99 + 2964) = *(v200 + 80);
      }

      else
      {
        *(v99 + 2964) = 0;
      }
    }

    else
    {
      v99 = *(this + 33);
    }

    *(v99 + 2956) |= 1u;
    *(*(this + 33) + 2956) = *(*(this + 33) + 2956) & 0xFFFFFFFD | (2 * (v9 == 1));
    *(*(this + 33) + 2956) |= 4u;
    goto LABEL_128;
  }

  v83 = *(v70 + 2892);
  if (*(v70 + 2892))
  {
    v84 = *(v70 + 2904);
    v83 = *(v70 + 2908);
  }

  else
  {
    v84 = 0;
  }

  v85 = *(v70 + 8248);
  v86 = *(v85 + 52);
  v87 = v86 + v84;
  if (__CFADD__(v86, v84))
  {
    v88 = 1;
    goto LABEL_154;
  }

  v89 = *(v85 + 56);
  v90 = v89 + v83;
  if (__CFADD__(v89, v83))
  {
    v88 = 2;
LABEL_154:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = v88;
      v91 = MEMORY[0x277D86220];
      v92 = "AppleAVD: %s(): failKind = %d";
      v93 = buf;
      v94 = 18;
LABEL_156:
      _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, v92, v93, v94);
    }

    return 0xFFFFFFFFLL;
  }

  if (*v85 || *(v85 + 152) || *(v85 + 156))
  {
    v98 = CAHDec::addToPatcherList(this, v85, 172, v87, 0xFFFFFFFFLL, 0, -1, 4);
    if (v98)
    {
      v51 = v98;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

LABEL_125:
      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      v210 = 2080;
      v211 = "HevcMaster";
      v212 = 2080;
      v213 = "req.a.da.SWrAddrY";
      v52 = MEMORY[0x277D86220];
      goto LABEL_65;
    }

    v59 = *(this + 33);
    v85 = *(*(this + 32) + 8248);
  }

  *(v59 + 176) = *(v85 + 124);
  if ((*(*(this + 33) + 176) & 0x3F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = 827;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
  }

  v137 = *(*(this + 32) + 8248);
  if (*v137 || *(v137 + 152) || *(v137 + 156))
  {
    v138 = CAHDec::addToPatcherList(this, v137, 180, v90, 0xFFFFFFFFLL, 0, -1, 4);
    if (v138)
    {
      v51 = v138;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

LABEL_168:
      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      v210 = 2080;
      v211 = "HevcMaster";
      v212 = 2080;
      v213 = "req.a.da.SWrAddrC";
      v52 = MEMORY[0x277D86220];
      goto LABEL_65;
    }

    v137 = *(*(this + 32) + 8248);
  }

  *(*(this + 33) + 184) = *(v137 + 128);
  v145 = *(this + 33);
  if ((*(v145 + 184) & 0x3F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = 832;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v145 = *(this + 33);
  }

  *(v145 + 2956) |= 1u;
  *(*(this + 33) + 2956) = *(*(this + 33) + 2956) & 0xFFFFFFFD | (2 * (v69 == 1));
  *(*(this + 33) + 2956) |= 4u;
  if (!v198)
  {
    goto LABEL_127;
  }

  *(*(this + 33) + 2960) = *(*(*(this + 32) + 8248) + 76);
LABEL_128:
  v75 = 0;
  v76 = 1;
  v77 = MEMORY[0x277D86220];
  do
  {
    v78 = v76;
    v79 = this + 176 * v75 + 6096;
    if (*v79 || *(v79 + 38) || *(v79 + 39))
    {
      v80 = CAHDec::addToPatcherList(this, v79, 4 * v75 + 372, 0, 0xFFFFFFFFLL, 0, -1, 4);
      if (v80)
      {
        v51 = v80;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        v210 = 2080;
        v211 = "HevcMaster";
        v212 = 2080;
        v213 = "req.a.VFIFOAddr[i]";
        v52 = MEMORY[0x277D86220];
        goto LABEL_65;
      }
    }

    *(*(this + 33) + 4 * v75 + 380) = *(this + 4476);
    if ((*(*(this + 33) + 4 * v75 + 380) & 3) != 0 && os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = 873;
      _os_log_impl(&dword_277606000, v77, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    }

    v76 = 0;
    v75 = 1;
  }

  while ((v78 & 1) != 0);
  v81 = (this + 176 * v205 + 6624);
  if (*v81 || *(this + 44 * v205 + 1694) || *(this + 44 * v205 + 1695))
  {
    v82 = CAHDec::addToPatcherList(this, v81, 472, 0, 0xFFFFFFFFLL, 0, -1, 4);
    if (v82)
    {
      v51 = v82;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      v210 = 2080;
      v211 = "HevcMaster";
      v212 = 2080;
      v213 = "req.a.MvColoWAddr";
      v52 = MEMORY[0x277D86220];
      goto LABEL_65;
    }
  }

  v96 = *(this + 33);
  *(v96 + 476) = *(this + 4480);
  if (*(this + 1180) || *(this + 2398) || *(this + 2399))
  {
    v97 = CAHDec::addToPatcherList(this, this + 1180, 480, 0, 0xFFFFFFFFLL, 0, -1, 4);
    if (v97)
    {
      v51 = v97;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      v210 = 2080;
      v211 = "HevcMaster";
      v212 = 2080;
      v213 = "req.a.MvInsnAddr";
      v52 = MEMORY[0x277D86220];
      goto LABEL_65;
    }

    v96 = *(this + 33);
  }

  *(v96 + 484) = *(this + 2371);
  v100 = *(this + 33);
  if ((*(v100 + 484) & 3) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    v210 = 1024;
    LODWORD(v211) = 884;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v100 = *(this + 33);
  }

  *(v100 + 188) = v194;
  if (!v194)
  {
LABEL_286:
    if (*(v20 + 52))
    {
      v139 = 0;
      v140 = *(v20 + 56) + 1;
      *(v100 + 2852) = v140;
      do
      {
        *(v100 + 2856 + 2 * v139) = *(v20 + 9676 + 4 * v139);
        v141 = v139++ >= v140;
      }

      while (!v141);
      v142 = 0;
      v143 = *(v20 + 60) + 1;
      *(v100 + 2854) = v143;
      do
      {
        *(v100 + 2898 + 2 * v142) = *(v20 + 9760 + 4 * v142);
        v141 = v142++ >= v143;
      }

      while (!v141);
      if (!v140)
      {
LABEL_342:
        if (*(this + 1202) || *(this + 2442) || *(this + 2443))
        {
          v162 = CAHDec::addToPatcherList(this, this + 1202, 488, 0, 0xFFFFFFFFLL, 0, -1, 4);
          if (v162)
          {
            v51 = v162;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v51;
            }

            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            v210 = 2080;
            v211 = "HevcMaster";
            v212 = 2080;
            v213 = "req.a.IpAbovePixAddr";
            v52 = MEMORY[0x277D86220];
            goto LABEL_65;
          }
        }

        if (*(this + 806) || *(this + 1650) || *(this + 1651))
        {
          v163 = CAHDec::addToPatcherList(this, this + 806, 388, 0, 0xFFFFFFFFLL, 0, -1, 4);
          if (v163)
          {
            v51 = v163;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v51;
            }

            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            v210 = 2080;
            v211 = "HevcMaster";
            v212 = 2080;
            v213 = "req.a.MvAboveInfoAddr";
            v52 = MEMORY[0x277D86220];
            goto LABEL_65;
          }
        }

        if (!*(v20 + 52))
        {
          goto LABEL_420;
        }

        v164 = *(this + 33);
        if (*(v164 + 2852) < 2u)
        {
          goto LABEL_420;
        }

        if (*(v164 + 2854))
        {
          v165 = 0;
          v166 = MEMORY[0x277D86220];
          do
          {
            v167 = v164 + 2 * v165;
            v168 = *(v167 + 2900);
            v169 = *(v15 + 22872);
            v170 = *(v15 + 3612);
            LODWORD(v167) = *(v167 + 2898);
            v171 = v170 - v169 * v167;
            v172 = (v168 - v167) * v169;
            if (v169 * v168 > v170)
            {
              v172 = v171;
            }

            v173 = (v172 + 15) >> 4;
            if (v165)
            {
              v174 = v173 + 1;
            }

            else
            {
              v174 = (v172 + 15) >> 4;
            }

            *(v164 + 4 * v165 + 900) = v174 * *(this + 4489);
            v175 = *(this + 33);
            if ((*(v175 + 4 * v165 + 900) & 7) != 0 && os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "populatePictureRegisters";
              v210 = 1024;
              LODWORD(v211) = 1082;
              _os_log_impl(&dword_277606000, v166, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
              v175 = *(this + 33);
            }

            *(v175 + 4 * v165 + 996) = *(this + 4491) * v173;
            v164 = *(this + 33);
            if ((*(v164 + 4 * v165 + 996) & 3) != 0 && os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "populatePictureRegisters";
              v210 = 1024;
              LODWORD(v211) = 1085;
              _os_log_impl(&dword_277606000, v166, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
              v164 = *(this + 33);
            }

            ++v165;
          }

          while (v165 < *(v164 + 2854));
        }

        if (*(this + 2104) || *(this + 4246) || *(this + 4247))
        {
          v176 = CAHDec::addToPatcherList(this, this + 2104, 892, 0, 0xFFFFFFFFLL, 0, -1, 4);
          if (v176)
          {
            v51 = v176;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v51;
            }

            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            v210 = 2080;
            v211 = "HevcMaster";
            v212 = 2080;
            v213 = "req.a.LfLeftPixAddr[0]";
            v52 = MEMORY[0x277D86220];
            goto LABEL_65;
          }
        }

        if (*(this + 2126) || *(this + 4290) || *(this + 4291))
        {
          v177 = CAHDec::addToPatcherList(this, this + 2126, 896, 0, 0xFFFFFFFFLL, 0, -1, 4);
          if (v177)
          {
            v51 = v177;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v51;
            }

            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            v210 = 2080;
            v211 = "HevcMaster";
            v212 = 2080;
            v213 = "req.a.LfLeftPixAddr[1]";
            v52 = MEMORY[0x277D86220];
            goto LABEL_65;
          }
        }

        if (*(this + 2148) || *(this + 4334) || *(this + 4335))
        {
          v178 = CAHDec::addToPatcherList(this, this + 2148, 988, 0, 0xFFFFFFFFLL, 0, -1, 4);
          if (v178)
          {
            v51 = v178;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v51;
            }

            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            v210 = 2080;
            v211 = "HevcMaster";
            v212 = 2080;
            v213 = "req.a.LfLeftInfoAddr[0]";
            v52 = MEMORY[0x277D86220];
            goto LABEL_65;
          }
        }

        if ((*(this + 2170) || *(this + 4378) || *(this + 4379)) && (v179 = CAHDec::addToPatcherList(this, this + 2170, 992, 0, 0xFFFFFFFFLL, 0, -1, 4), v179))
        {
          v51 = v179;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          *buf = 136315650;
          *&buf[4] = "populatePictureRegisters";
          v210 = 2080;
          v211 = "HevcMaster";
          v212 = 2080;
          v213 = "req.a.LfLeftInfoAddr[1]";
          v52 = MEMORY[0x277D86220];
        }

        else
        {
LABEL_420:
          v180 = 0;
          for (i = 1; ; i = 0)
          {
            v182 = i;
            v183 = this + 176 * v180 + 17536;
            if (*v183 || *(v183 + 38) || *(v183 + 39))
            {
              v184 = CAHDec::addToPatcherList(this, v183, 4 * v180 + 1084, 0, 0xFFFFFFFFLL, 0, -1, 4);
              if (v184)
              {
                break;
              }
            }

            v180 = 1;
            if ((v182 & 1) == 0)
            {
              v185 = 0;
              v186 = this + 17972;
              v187 = 1092;
              do
              {
                v188 = 20;
                v189 = v187;
                v190 = v186;
                do
                {
                  v191 = *v190++;
                  *(*(this + 33) + v189) = v191;
                  v189 += 4;
                  --v188;
                }

                while (v188);
                ++v185;
                v186 += 80;
                v187 += 80;
              }

              while (v185 != 22);
              v51 = 0;
              *(*(this + 33) + 2948) = 0;
              *(*(this + 33) + 2948) |= 3u;
              *(*(this + 33) + 2948) |= 4u;
              *(*(this + 33) + 2948) = *(*(this + 33) + 2948) & 0xFFFFFFF7 | v193;
              *(*(this + 33) + 2948) = *(*(this + 33) + 2948) & 0xFFFFFF0F | (16 * (*(v15 + 3636) & 0xF));
              *(*(this + 33) + 2952) = 0;
              *(*(this + 33) + 2952) |= 3u;
              *(*(this + 33) + 2952) |= 4u;
              *(*(this + 33) + 2952) = *(*(this + 33) + 2952) & 0xFFFFFFF7 | v193;
              *(*(this + 33) + 2952) = *(*(this + 33) + 2952) & 0xFFFFFF0F | (16 * (*(v15 + 3640) & 0xF));
              return v51;
            }
          }

          v51 = v184;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          *buf = 136315650;
          *&buf[4] = "populatePictureRegisters";
          v210 = 2080;
          v211 = "HevcMaster";
          v212 = 2080;
          v213 = "req.a.SwLeftAddr[i]";
          v52 = MEMORY[0x277D86220];
        }

LABEL_65:
        _os_log_impl(&dword_277606000, v52, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to add %s %s buffer to patch list\n", buf, 0x20u);
        return v51;
      }
    }

    else
    {
      *(v100 + 2852) = 65537;
      *(v100 + 2856) = 0;
      *(v100 + 2858) = *(v15 + 22880);
      *(v100 + 2898) = 0;
      *(v100 + 2900) = *(v15 + 22888);
    }

    v146 = 0;
    v147 = 0;
    v148 = 732;
    v149 = 9792;
    v150 = 13312;
    while (1)
    {
      v151 = v100 + 2 * v147;
      v152 = *(v151 + 2858);
      v153 = *(v15 + 22872);
      v154 = *(v15 + 3608);
      LODWORD(v151) = *(v151 + 2856);
      v155 = v154 - v153 * v151;
      v156 = (v152 - v151) * v153;
      if (v153 * v152 > v154)
      {
        v156 = v155;
      }

      v157 = (v156 + 15) >> 4;
      *(v100 + 4 * v147 + 492) = v157 * *(this + 4483);
      if ((*(*(this + 33) + 4 * v147 + 492) & 3) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        v210 = 1024;
        LODWORD(v211) = 1044;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      if (*(this + v149) || *(this + v146 + 9944) || *(this + v146 + 9948))
      {
        v158 = CAHDec::addToPatcherList(this, (this + v149), v148 - 160, 0, 0xFFFFFFFFLL, 0, -1, 4);
        if (v158)
        {
          v51 = v158;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          *buf = 136315650;
          *&buf[4] = "populatePictureRegisters";
          v210 = 2080;
          v211 = "HevcMaster";
          v212 = 2080;
          v213 = "req.a.LfAbovePixAddr[i]";
          v52 = MEMORY[0x277D86220];
          goto LABEL_65;
        }
      }

      v207 = v157;
      if (v147)
      {
        ++v157;
      }

      *(*(this + 33) + 4 * v147 + 652) = *(this + 4485) * v157;
      if ((*(*(this + 33) + 4 * v147 + 652) & 7) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        v210 = 1024;
        LODWORD(v211) = 1050;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      if (*(this + v149 + 3520) || *(this + v146 + 13464) || *(this + v146 + 13468))
      {
        v159 = CAHDec::addToPatcherList(this, (this + v150), v148, 0, 0xFFFFFFFFLL, 0, -1, 4);
        if (v159)
        {
          break;
        }
      }

      *(*(this + 33) + 4 * v147 + 812) = *(this + 4487) * v157;
      v160 = *(this + 33);
      if ((*(v160 + 4 * v147 + 812) & 3) != 0)
      {
        v161 = v207;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "populatePictureRegisters";
          v210 = 1024;
          LODWORD(v211) = 1055;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
          v160 = *(this + 33);
        }
      }

      else
      {
        v161 = v207;
      }

      *(v160 + 4 * v147 + 392) = *(this + 4477) * v161;
      v100 = *(this + 33);
      if ((*(v100 + 4 * v147 + 392) & 3) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        v210 = 1024;
        LODWORD(v211) = 1058;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v100 = *(this + 33);
      }

      ++v147;
      v146 += 176;
      v149 += 176;
      v150 += 176;
      v148 += 4;
      if (v147 >= *(v100 + 2852))
      {
        goto LABEL_342;
      }
    }

    v51 = v159;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v51;
    }

    *buf = 136315650;
    *&buf[4] = "populatePictureRegisters";
    v210 = 2080;
    v211 = "HevcMaster";
    v212 = 2080;
    v213 = "req.a.LfAboveInfoAddr[i]";
    v52 = MEMORY[0x277D86220];
    goto LABEL_65;
  }

  v101 = 0;
  v192 = 4 * v194;
  v102 = v216;
  v103 = v215;
  v206 = v214;
  v104 = MEMORY[0x277D86220];
  while (1)
  {
    v105 = *v102;
    if (!*v102 || !*(v105 + 48))
    {
      return 0xFFFFFFFFLL;
    }

    v106 = *(v105 + 44);
    if ((*(**(this + 32) + 184))(*(this + 32)))
    {
      v107 = *(this + 32);
      if (v107[689])
      {
        *buf = 0;
        if ((*(*v107 + 312))(v107, v106, buf))
        {
          *(v105 + 48) = *buf + 8;
          goto LABEL_194;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v208 = 0;
          v91 = MEMORY[0x277D86220];
          v92 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
          v93 = &v208;
          v94 = 2;
          goto LABEL_156;
        }

        return 0xFFFFFFFFLL;
      }
    }

LABEL_194:
    *(*(this + 33) + v101 + 192) = v196 - *(v105 + 12);
    *(*(this + 33) + v101 + 192) = *(*(this + 33) + v101 + 192) & 0xFFFEFFFF | ((*(v105 + 20) == 2) << 16);
    v108 = *(v105 + 48);
    if (*v108 || *(v108 + 152) || *(v108 + 156))
    {
      v109 = v101 + 224;
      v110 = CAHDec::addToPatcherList(this, v108, v101 + 224, *(v108 + 52), 0xFFFFFFFFLL, 0, -1, 4);
      if (v110)
      {
        v51 = v110;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

        goto LABEL_359;
      }

      v108 = *(v105 + 48);
    }

    else
    {
      v109 = v101 + 224;
    }

    *(*(this + 33) + 256) = *(v108 + 124);
    v111 = *(*(this + 33) + 256);
    if ((v111 & 0x7F) != 0 && os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = v111;
      _os_log_impl(&dword_277606000, v104, OS_LOG_TYPE_DEFAULT, "AppleAVD: <WARNING> %s(): h->req.a.da.RefAddrYSize.val = %d", buf, 0x12u);
    }

    v202 = v101 + 260;
    v112 = *v103;
    if (**v103 || v112[38] || v112[39])
    {
      v113 = CAHDec::addToPatcherList(this, *v103, v202, 0, 0xFFFFFFFFLL, 0, -1, 4);
      if (v113)
      {
        break;
      }
    }

    *(*(this + 33) + 292) = v112[11];
    v114 = *(this + 33);
    v115 = MEMORY[0x277D86220];
    if ((*(v114 + 292) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = 942;
      _os_log_impl(&dword_277606000, v115, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      v114 = *(this + 33);
    }

    v195 = v103;
    *(v114 + 368) = *(this + 4474);
    v116 = *(v105 + 48);
    if (*v116 || *(v116 + 152) || *(v116 + 156))
    {
      v117 = v101 + 296;
      v118 = CAHDec::addToPatcherList(this, v116, v101 + 296, *(v116 + 56), 0xFFFFFFFFLL, 0, -1, 4);
      if (v118)
      {
        v51 = v118;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

        goto LABEL_363;
      }

      v116 = *(v105 + 48);
      v114 = *(this + 33);
    }

    else
    {
      v117 = v101 + 296;
    }

    *(v114 + 328) = *(v116 + 128);
    if ((*(*(this + 33) + 328) & 0x7F) != 0 && os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = 948;
      _os_log_impl(&dword_277606000, v115, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    }

    v199 = v101 + 332;
    v119 = *v206;
    if (**v206 || v119[38] || v119[39])
    {
      v120 = CAHDec::addToPatcherList(this, *v206, v199, 0, 0xFFFFFFFFLL, 0, -1, 4);
      if (v120)
      {
        v51 = v120;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

        goto LABEL_401;
      }
    }

    *(*(this + 33) + 364) = v119[12];
    v100 = *(this + 33);
    v104 = MEMORY[0x277D86220];
    if ((*(v100 + 364) & 0x7F) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = 959;
      _os_log_impl(&dword_277606000, v104, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      v100 = *(this + 33);
    }

    *(v100 + 370) = *(this + 4475);
    if (*(*(this + 32) + 2648) != 1)
    {
      goto LABEL_253;
    }

    v121 = *(v105 + 48);
    v122 = *v121;
    if (!v204)
    {
      if (v122 || *(v121 + 38) || *(v121 + 39))
      {
        v133 = CAHDec::addToPatcherList(this, v121, v202, *(v121 + 16), 0xFFFFFFFFLL, 0, -1, 4);
        v129 = v195;
        if (v133)
        {
          v51 = v133;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

LABEL_395:
          *buf = 136315650;
          *&buf[4] = "populatePictureRegisters";
          v210 = 2080;
          v211 = "HevcMaster";
          v212 = 2080;
          v213 = "req.a.RefHdrY[i]";
          v52 = MEMORY[0x277D86220];
          goto LABEL_65;
        }

        v121 = *(v105 + 48);
        v100 = *(this + 33);
      }

      else
      {
        v129 = v195;
      }

      *(v100 + 292) = *(v121 + 34);
      v134 = *(v105 + 48);
      v135 = *(this + 33);
      *(v135 + 368) = *(v134 + 88);
      if (*v134 || *(v134 + 152) || *(v134 + 156))
      {
        v136 = CAHDec::addToPatcherList(this, v134, v199, *(v134 + 68), 0xFFFFFFFFLL, 0, -1, 4);
        if (v136)
        {
          v51 = v136;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v51;
          }

          goto LABEL_401;
        }

        v134 = *(v105 + 48);
        v135 = *(this + 33);
      }

      *(v135 + 364) = *(v134 + 140);
      v132 = *(v105 + 48);
      goto LABEL_265;
    }

    if (v122 || *(v121 + 38) || *(v121 + 39))
    {
      v123 = CAHDec::addToPatcherList(this, v121, v109, *(v121 + 15), 0xFFFFFFFFLL, 0, -1, 4);
      if (!v123)
      {
        v121 = *(v105 + 48);
        v100 = *(this + 33);
        goto LABEL_231;
      }

      v51 = v123;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

LABEL_359:
      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      v210 = 2080;
      v211 = "HevcMaster";
      v212 = 2080;
      v213 = "req.a.RefAddrY[i]";
      v52 = MEMORY[0x277D86220];
      goto LABEL_65;
    }

LABEL_231:
    *(v100 + 256) = *(v121 + 33);
    v124 = *(*(this + 33) + 256);
    if ((v124 & 0x7F) != 0 && os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "populatePictureRegisters";
      v210 = 1024;
      LODWORD(v211) = v124;
      _os_log_impl(&dword_277606000, v104, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): h->req.a.da.RefAddrYSize.val = %d\n", buf, 0x12u);
    }

    v125 = *(v105 + 48);
    if (*v125 || *(v125 + 152) || *(v125 + 156))
    {
      v126 = CAHDec::addToPatcherList(this, v125, v202, *(v125 + 72), 0xFFFFFFFFLL, 0, -1, 4);
      if (v126)
      {
        v51 = v126;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_395;
        }

        return v51;
      }

      v125 = *(v105 + 48);
    }

    *(*(this + 33) + 292) = *(v125 + 144);
    v100 = *(this + 33);
    *(v100 + 368) = *(*(v105 + 48) + 96);
    if (v197)
    {
      v127 = v200;
      v128 = v117;
      v129 = v195;
      if (*v200 || *(v200 + 152) || *(v200 + 156))
      {
        v130 = CAHDec::addToPatcherList(this, v200, v128, *(v200 + 56), 0xFFFFFFFFLL, 0, -1, 4);
        if (!v130)
        {
          v100 = *(this + 33);
          v127 = v200;
          goto LABEL_245;
        }

        v51 = v130;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v51;
        }

LABEL_363:
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        v210 = 2080;
        v211 = "HevcMaster";
        v212 = 2080;
        v213 = "req.a.RefAddrC[i]";
        v52 = MEMORY[0x277D86220];
        goto LABEL_65;
      }

LABEL_245:
      *(v100 + 328) = *(v127 + 128);
      if ((*(*(this + 33) + 328) & 0x7F) != 0 && os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        v210 = 1024;
        LODWORD(v211) = 985;
        _os_log_impl(&dword_277606000, v104, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      if (!*v200 && !*(v200 + 152) && !*(v200 + 156) || (v131 = CAHDec::addToPatcherList(this, v200, v199, *(v200 + 68), 0xFFFFFFFFLL, 0, -1, 4), !v131))
      {
        *(*(this + 33) + 364) = *(v200 + 140);
        v132 = v200;
        v104 = MEMORY[0x277D86220];
LABEL_265:
        v100 = *(this + 33);
        *(v100 + 370) = *(v132 + 92);
        goto LABEL_266;
      }

      v51 = v131;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v51;
      }

LABEL_401:
      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      v210 = 2080;
      v211 = "HevcMaster";
      v212 = 2080;
      v213 = "req.a.RefHdrC[i]";
      v52 = MEMORY[0x277D86220];
      goto LABEL_65;
    }

LABEL_253:
    v129 = v195;
LABEL_266:
    ++v102;
    v101 += 4;
    v103 = v129 + 1;
    ++v206;
    if (v192 == v101)
    {
      goto LABEL_286;
    }
  }

  v51 = v113;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_395;
  }

  return v51;
}

uint64_t CAHDecRoseHevc::getTileIdxAbove(CAHDecRoseHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 2852);
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

uint64_t CAHDecRoseHevc::populateAvdWork(CAHDecRoseHevc *this, unsigned int a2)
{
  v83[2] = *MEMORY[0x277D85DE8];
  v4 = *(this + 32);
  v3 = *(this + 33);
  v5 = *(v4 + 8208);
  v6 = *(v4 + 8212);
  v7 = *(v4 + 8168);
  v8 = *(v4 + 8176);
  v9 = *(v4 + 8184);
  v10 = *(v4 + 8924);
  v11 = v8 + 9856 * v6;
  v64 = v3 + 104768;
  v83[0] = v3 + 104768;
  v83[1] = v3 + 186688;
  v82 = 0;
  v54 = v9;
  v55 = v7 + 23176 * v5;
  v56 = *(v55 + 22888);
  if ((v10 & 1) != 0 && *(v11 + 53))
  {
    if (*(v11 + 52))
    {
      v12 = 0;
    }

    else
    {
      v12 = v56 > 1;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v3 + 2854) * *(v3 + 2852);
  if ((v10 & 2) != 0)
  {
    if (*(v11 + 52))
    {
      v15 = v14 > 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v72 = v16;
  }

  else
  {
    v72 = 0;
  }

  LODWORD(v17) = 0;
  v73 = *(v55 + 22880);
  if ((v10 & 4) != 0)
  {
    v18 = v3 + 104768;
    if (((v13 | v72) & 1) == 0)
    {
      v17 = *(*(this + *(this + 13) + 34) + 16) & 1;
      v18 = v83[v17];
    }
  }

  else
  {
    v18 = v3 + 104768;
  }

  v19 = 0;
  v70 = 0;
  v20 = 0;
  v65 = 0;
  v74 = 0;
  v75 = 0;
  v21 = 0;
  v68 = 0;
  v69 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v64) >> 3);
  v76 = 0;
  v58 = v14 - 1;
  v59 = a2 - 1;
  v57 = v14 - 2;
  v53 = a2;
  v62 = v3 + 11196;
  v60 = v14;
  v61 = v13;
  do
  {
    if (!((*(v11 + 52) != 0) | v13 & 1))
    {
      v71 = v54 + 2360 * v19;
      v24 = 1;
      goto LABEL_30;
    }

    v22 = *(v54 + 2360 * v19 + 1896);
    v23 = __CFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      v71 = v54 + 2360 * v19;
LABEL_30:
      v25 = 0;
      v63 = 156 * v19;
      v66 = v19;
      v67 = v24;
      while (!(v25 | v19))
      {
        *(v18 + 4) = 0;
        *(v18 + 6) = v17;
        *(v18 + 8) = 0;
        *(v18 + 12) = 0;
        v65 = *(v62 + v63);
        if (((*(**(this + 32) + 440))() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v78 = "populateAvdWork";
            v79 = 1024;
            *v80 = 1491;
            *&v80[4] = 1024;
            *&v80[6] = 0;
            v45 = MEMORY[0x277D86220];
            goto LABEL_110;
          }

          return 0xFFFFFFFFLL;
        }

        v32 = *(v71 + 36);
        *(v18 + 28) = v32;
        *(v18 + 32) = v32;
        HIDWORD(v74) = 0;
        *(v18 + 36) = (*(*this + 80))(this, v20, v73);
        v33 = 15;
LABEL_95:
        *(v18 + 14) = v33;
        if (v67 == ++v25)
        {
          goto LABEL_27;
        }
      }

      if (v25)
      {
        v26 = *(*(v71 + 1904) + 4 * v25 - 4);
        v27 = v76;
        if (*v76 || *(v76 + 152) || *(v76 + 156))
        {
          v28 = v11;
          v29 = v75;
          if ((v75 + HIDWORD(v74)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v78 = "populateAvdWork";
            v79 = 1024;
            *v80 = 1530;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v29 = v75;
          }

          v30 = CAHDec::addToPatcherList(this, v27, 40 * v69 + 104788, HIDWORD(v74) + v29, 0xFFFFFFFFLL, 0, -1, 4);
          v11 = v28;
          if (v30)
          {
            v46 = v30;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v46;
            }

LABEL_113:
            *buf = 136315650;
            v78 = "populateAvdWork";
            v79 = 2080;
            *v80 = "HevcWorkUnit";
            *&v80[8] = 2080;
            v81 = "dataAddr";
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to add %s %s buffer to patch list\n", buf, 0x20u);
            return v46;
          }
        }

        *(v18 + 24) = v26 + 1;
        HIDWORD(v74) += v26 + 1;
        if (*(v11 + 52))
        {
          LODWORD(v74) = (*(*this + 72))(this, (v20 + 1), v73);
          v21 = 4;
          v31 = v60;
          v13 = v61;
        }

        else
        {
          v31 = v60;
          v13 = v61;
          if (v61)
          {
            LODWORD(v74) = (*(v55 + 22880) + v74) / *(v55 + 22880) * *(v55 + 22880);
            v21 = 8;
          }
        }
      }

      else
      {
        v34 = v76;
        if (*v76 || *(v76 + 152) || *(v76 + 156))
        {
          v35 = v75;
          if ((v75 + HIDWORD(v74)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v78 = "populateAvdWork";
            v79 = 1024;
            *v80 = 1505;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v35 = v75;
          }

          v36 = CAHDec::addToPatcherList(this, v34, 40 * v69 + 104788, HIDWORD(v74) + v35, 0xFFFFFFFFLL, 0, -1, 4);
          if (v36)
          {
            v46 = v36;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_113;
            }

            return v46;
          }
        }

        *(v18 + 24) = v65 - HIDWORD(v74);
        v65 = *(v62 + v63);
        if (((*(**(this + 32) + 440))(*(this + 32), v66, &v76, &v75) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v78 = "populateAvdWork";
            v79 = 1024;
            *v80 = 1516;
            *&v80[4] = 1024;
            *&v80[6] = v66;
            v45 = MEMORY[0x277D86220];
LABEL_110:
            _os_log_impl(&dword_277606000, v45, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() [line %u]: Failed to get slice data memInfo struct (slice %d)\n", buf, 0x18u);
          }

          return 0xFFFFFFFFLL;
        }

        v13 = v61;
        LODWORD(v74) = *(v71 + 36);
        if (v61)
        {
          HIDWORD(v74) = 0;
          if (*(v71 + 36) % v73)
          {
            v21 = 2;
          }

          else
          {
            v21 = 10;
          }
        }

        else
        {
          HIDWORD(v74) = 0;
          v21 = 2;
        }

        v31 = v60;
      }

      if (v20 + 1 < v31 && v74 == (*(*this + 72))(this, (v20 + 1), v73))
      {
        v21 |= 4u;
      }

      *(v18 + 16) = v21;
      if (v70 == v59)
      {
        *(v18 + 18) |= 2u;
      }

      if (v20 == v58)
      {
        *(v18 + 18) |= 4u;
      }

      v37 = v72;
      if (v20 != v57)
      {
        v37 = 0;
      }

      if (v37 == 1)
      {
        *(v18 + 18) |= 4u;
      }

      if (v13)
      {
        v38 = *(v18 + 10);
        v39 = v56 > 1 && v56 - 2 == v38;
        v40 = v39;
        if (v56 - 1 == v38 || v40)
        {
          *(v18 + 18) |= 8u;
        }
      }

      if ((v21 & 4) != 0)
      {
        if (SHIDWORD(v68) <= (*(*this + 88))(this, (v20 + 1)))
        {
          v21 |= 0x20u;
        }

        v20 = (v20 + 1);
      }

      v19 = v66;
      if (v25)
      {
        if ((v21 & 4) == 0)
        {
LABEL_89:
          ++*(&v83[-1] + v17);
          v83[v17] += 40;
          v42 = (v74 / v73) & 1;
          if (!v13)
          {
            v42 = v17;
          }

          if (v72)
          {
            LODWORD(v17) = v20 & 1;
          }

          else
          {
            LODWORD(v17) = v42;
          }

          v18 = v83[v17];
          v69 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v64) >> 3);
          *(v18 + 4) = *(&v83[-1] + v17);
          *(v18 + 6) = v17;
          *(v18 + 8) = v66;
          *(v18 + 10) = v74 / v73;
          *(v18 + 12) = v20;
          *(v18 + 28) = v74;
          *(v18 + 32) = v68;
          *(v18 + 36) = (*(*this + 80))(this, v20);
          v33 = v21;
          v70 = v66;
          goto LABEL_95;
        }
      }

      else
      {
        if (*(v71 + 32))
        {
          v43 = v68;
        }

        else
        {
          v43 = v74;
        }

        v44 = HIDWORD(v68);
        if (!*(v71 + 32))
        {
          v44 = v20;
        }

        v68 = __PAIR64__(v44, v43);
        if ((v21 & 4) == 0)
        {
          goto LABEL_89;
        }
      }

      v41 = *(*(this + 33) + 2852);
      if (HIDWORD(v68) / v41 + 1 == v20 / v41)
      {
        v21 |= 0x10u;
      }

      goto LABEL_89;
    }

LABEL_27:
    ++v19;
  }

  while (v19 != v53);
  v48 = v76;
  if (!*v76 && !*(v76 + 152) && !*(v76 + 156))
  {
    goto LABEL_124;
  }

  v49 = v75;
  if ((v75 + HIDWORD(v74)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v78 = "populateAvdWork";
    v79 = 1024;
    *v80 = 1611;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v49 = v75;
  }

  v50 = CAHDec::addToPatcherList(this, v48, 40 * v69 + 104788, HIDWORD(v74) + v49, 0xFFFFFFFFLL, 0, -1, 4);
  if (!v50)
  {
LABEL_124:
    v46 = 0;
    *(v18 + 24) = v65 - HIDWORD(v74);
    *(v18 + 16) = 917519;
    ++*(&v83[-1] + v17);
    v51 = *(this + 33);
    v52 = WORD2(v82);
    *(v51 + 28) = v82;
    *(v51 + 30) = v52;
    *(v51 + 32) = 104768;
    *(v51 + 36) = 186688;
    return v46;
  }

  v46 = v50;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_113;
  }

  return v46;
}

uint64_t CAHDecRoseHevc::allocWorkBuf_SPS(CAHDecRoseHevc *this, _DWORD *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = (this + 0x4000);
  v4 = a2[900];
  v5 = a2[909] + 9;
  if (v5 <= a2[910] + 9)
  {
    v5 = a2[910] + 9;
  }

  v6 = v5 & 0xFFFFFFFE;
  v7 = a2[902];
  v8 = a2[5713];
  v9 = a2[903];
  v10 = v9 / a2[5714];
  v11 = ((v7 >> 4) + 4) >> 2;
  *(this + 4474) = v11;
  *(this + 4472) = (v11 * (((v9 >> 3) + 8) >> 3)) << 7;
  v12 = (((v7 / v8) >> 3) + 4) >> 2;
  *(this + 4475) = v12;
  *(this + 4473) = (v12 * (((v10 >> 3) + 8) >> 3)) << 7;
  *(this + 4477) = 20;
  v13 = v7 + 15;
  v14 = (v7 + 15) >> 4;
  v15 = 20 * v14;
  *(this + 4478) = 20 * v14;
  v16 = a2[5718];
  v17 = v16 >> 4;
  v18 = ((v16 & 0xFFFFFFF0) * (v16 >> 4) * a2[5720] + 127) & 0xFFFFFF80;
  *(this + 4480) = v18;
  v19 = a2[5722];
  *(this + 4479) = v18 * v19;
  if (v4 == 1)
  {
    v20 = 144;
  }

  else
  {
    v20 = 192;
  }

  v21 = v4 == 0;
  if (v4)
  {
    v22 = 0x20 / v8 + 16;
  }

  else
  {
    v22 = 16;
  }

  v23 = (v22 * v6) >> 3;
  *(this + 4483) = v23;
  *(this + 4484) = v23 * v14;
  v24 = 0x60 / v8 + 80;
  if (v21)
  {
    v24 = 80;
  }

  v25 = (((v24 * v6) >> 3) + 7) & 0x3FFFFFF8;
  *(this + 4485) = v25;
  *(this + 4486) = v25 * v14;
  *(this + 4487) = 36;
  *(this + 4488) = 4 * (8 * v14 + (v13 >> 4));
  if (v21)
  {
    v26 = 96;
  }

  else
  {
    v26 = v20;
  }

  v27 = (((v6 * v26) >> 3) + 7) & 0x3FFFFFF8;
  *(this + 4489) = v27;
  *(this + 4490) = v27 + v27 * v19 * v17;
  *(this + 4491) = 36;
  *(this + 4492) = 36 * v19 * v17;
  if (!*(*(this + 32) + 2648))
  {
    v29 = (this + 3280);
    v30 = 16;
    while (1)
    {
      v31 = v3[376];
      if (v31 && CAVDDecoder::allocAVDMem(*(this + 32), v29 - 176, v31, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_62;
        }

        v47 = 136315650;
        v48 = "allocWorkBuf_SPS";
        v49 = 1024;
        v50 = 1711;
        v51 = 2080;
        v52 = "HdrY";
        v28 = MEMORY[0x277D86220];
        goto LABEL_61;
      }

      v32 = v3[377];
      if (v32)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v29, v32, 7, 1, 0))
        {
          break;
        }
      }

      v29 += 11;
      if (!--v30)
      {
        v15 = v3[382];
        if (v15)
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v47 = 136315650;
    v48 = "allocWorkBuf_SPS";
    v49 = 1024;
    v50 = 1712;
    v51 = 2080;
    v52 = "HdrC";
    v28 = MEMORY[0x277D86220];
    goto LABEL_61;
  }

  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (!CAVDDecoder::allocAVDMem(*(this + 32), this + 403, v15, 7, 1, 0))
  {
LABEL_26:
    v33 = (this + 6624);
    v34 = 16;
    while (1)
    {
      v35 = v3[383];
      if (v35)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v33, v35, 7, 1, 0))
        {
          break;
        }
      }

      v33 += 11;
      if (!--v34)
      {
        v3[386] = 0;
        v36 = v3[388];
        if (v36 && CAVDDecoder::allocAVDMem(*(this + 32), this + 601, v36, 7, 1, 0))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_62;
          }

          v47 = 136315650;
          v48 = "allocWorkBuf_SPS";
          v49 = 1024;
          v50 = 1736;
          v51 = 2080;
          v52 = "IpAbove";
          v28 = MEMORY[0x277D86220];
        }

        else
        {
          v37 = (this + 9792);
          v38 = 20;
          while (1)
          {
            v39 = v3[390];
            if (v39 && CAVDDecoder::allocAVDMem(*(this + 32), v37, v39, 7, 1, 0))
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_62;
              }

              v47 = 136315650;
              v48 = "allocWorkBuf_SPS";
              v49 = 1024;
              v50 = 1744;
              v51 = 2080;
              v52 = "LfAbovePix";
              v28 = MEMORY[0x277D86220];
              goto LABEL_61;
            }

            v40 = v3[392];
            if (v40)
            {
              if (CAVDDecoder::allocAVDMem(*(this + 32), v37 + 220, v40, 7, 1, 0))
              {
                break;
              }
            }

            v37 += 11;
            if (!--v38)
            {
              v41 = 0;
              for (i = 1; ; i = 0)
              {
                v43 = i;
                v44 = v3[394];
                if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), this + 11 * v41 + 1052, v44, 7, 1, 0))
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_62;
                  }

                  v47 = 136315650;
                  v48 = "allocWorkBuf_SPS";
                  v49 = 1024;
                  v50 = 1752;
                  v51 = 2080;
                  v52 = "LfLeftPix";
                  v28 = MEMORY[0x277D86220];
                  goto LABEL_61;
                }

                v45 = v3[396];
                if (v45)
                {
                  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 11 * v41 + 1074, v45, 7, 1, 0))
                  {
                    break;
                  }
                }

                v41 = 1;
                if ((v43 & 1) == 0)
                {
                  return 0;
                }
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_62;
              }

              v47 = 136315650;
              v48 = "allocWorkBuf_SPS";
              v49 = 1024;
              v50 = 1753;
              v51 = 2080;
              v52 = "LfLeftInfo";
              v28 = MEMORY[0x277D86220];
              goto LABEL_61;
            }
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_62;
          }

          v47 = 136315650;
          v48 = "allocWorkBuf_SPS";
          v49 = 1024;
          v50 = 1745;
          v51 = 2080;
          v52 = "LfAboveInfo";
          v28 = MEMORY[0x277D86220];
        }

        goto LABEL_61;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v47 = 136315650;
    v48 = "allocWorkBuf_SPS";
    v49 = 1024;
    v50 = 1723;
    v51 = 2080;
    v52 = "MvColo";
    v28 = MEMORY[0x277D86220];
    goto LABEL_61;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v47 = 136315650;
    v48 = "allocWorkBuf_SPS";
    v49 = 1024;
    v50 = 1718;
    v51 = 2080;
    v52 = "MvAboveInfo";
    v28 = MEMORY[0x277D86220];
LABEL_61:
    _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v47, 0x1Cu);
  }

LABEL_62:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecRoseHevc::allocWorkBuf_PPS(CAHDecRoseHevc *this, _DWORD *a2, _BYTE *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = this + 0x4000;
  v5 = a2[909];
  v6 = a2[910];
  *(this + 4973) = 0;
  if (!a3[52])
  {
    return 0;
  }

  v8 = (v6 + 9) & 0xFFFFFFFE;
  v9 = a2[900];
  v10 = ((v5 + 9) & 0xFFFFFFFE) - 8;
  v11 = v8 - 8;
  if (v9)
  {
    v12 = v9 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v9 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (*(*(this + 32) + 2644) != 1 || v10 == 0)
  {
    goto LABEL_62;
  }

  if (!*(a3 + 14))
  {
    LODWORD(v26) = 0;
    goto LABEL_39;
  }

  if (v10 == 4 || v10 == 2)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = (this + 19732);
    do
    {
      v21 = a2[5718] + a2[5718] * *&a3[4 * v17 + 68];
      if (v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = -5;
      }

      if (v17)
      {
        v23 = 0;
      }

      else
      {
        v23 = -4;
      }

      v18 += v22 + v21;
      if (v9)
      {
        v24 = 2 * v21 / v13 + v23;
      }

      else
      {
        v24 = 0;
      }

      v19 += v24;
      if (v10 == 2)
      {
        *v20 = v18 % 3;
        v25 = v19 % 3;
      }

      else
      {
        *v20 = ((v18 % 5) & 0xFFFFFFFD) != 0;
        v25 = ((v19 % 5) & 0xFFFFFFFD) != 0;
      }

      v20[20] = v25;
      ++v17;
      ++v20;
    }

    while (v17 < *(a3 + 14));
    LODWORD(v26) = *(a3 + 14);
LABEL_39:
    v27 = *(a3 + 15);
    if (v27 != -1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = a2[5718] + a2[5718] * *&a3[4 * v29 + 148];
        v32 = a2[903];
        if (v31 + v30 > v32)
        {
          v31 = v32 - v30;
        }

        v33 = v29 == v27;
        if (v29)
        {
          v34 = 0;
        }

        else
        {
          v34 = -4;
        }

        if (v29)
        {
          v35 = 0;
        }

        else
        {
          v35 = -2;
        }

        if (v26)
        {
          v36 = 0;
          v37 = v34 + 4 * v33 + v31;
          v38 = v35 + 2 * v33 + v31 / v14;
          v39 = this + 17972;
          do
          {
            if (*(v39 + 440))
            {
              v40 = v37;
            }

            else
            {
              v40 = 0;
            }

            if (*(v39 + 460))
            {
              v41 = v38;
            }

            else
            {
              v41 = 0;
            }

            v42 = v41 + v40;
            *&v39[v28] = v42;
            if (*(v4 + 877) < v42)
            {
              *(v4 + 877) = v42;
            }

            v39 += 4;
            ++v36;
            v26 = *(a3 + 14);
          }

          while (v36 < v26);
          v27 = *(a3 + 15);
        }

        v30 += v31;
        ++v29;
        v28 += 80;
      }

      while (v29 < (v27 + 1));
    }

LABEL_62:
    v43 = 0;
    for (i = 1; ; i = 0)
    {
      v45 = i;
      v46 = *(v4 + 877);
      if (v46)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), this + 11 * v43 + 1096, v46, 7, 1, 0))
        {
          break;
        }
      }

      v43 = 1;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v48 = 136315650;
      v49 = "allocWorkBuf_PPS";
      v50 = 1024;
      v51 = 1839;
      v52 = 2080;
      v53 = "SwLeft";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v48, 0x1Cu);
    }
  }

  (*(*this + 160))(this, 0);
  return 0xFFFFFFFFLL;
}

uint64_t *CAHDecRoseHevc::freeWorkBuf_SPS(uint64_t *this)
{
  v1 = this;
  if (!*(this[32] + 2648))
  {
    v2 = this + 410;
    v3 = 16;
    do
    {
      if (*(v2 - 352))
      {
        this = CAVDDecoder::deallocAVDMem(v1[32], v2 - 352);
        *(v2 - 352) = 0;
      }

      if (*v2)
      {
        this = CAVDDecoder::deallocAVDMem(v1[32], v2);
        *v2 = 0;
      }

      v2 += 22;
      --v3;
    }

    while (v3);
  }

  v4 = v1 + 828;
  v5 = 16;
  do
  {
    if (*v4)
    {
      this = CAVDDecoder::deallocAVDMem(v1[32], v4);
      *v4 = 0;
    }

    v4 += 22;
    --v5;
  }

  while (v5);
  if (v1[806])
  {
    this = CAVDDecoder::deallocAVDMem(v1[32], v1 + 806);
    v1[806] = 0;
  }

  if (v1[1202])
  {
    this = CAVDDecoder::deallocAVDMem(v1[32], v1 + 1202);
    v1[1202] = 0;
  }

  v6 = v1 + 1224;
  v7 = 20;
  do
  {
    if (*v6)
    {
      this = CAVDDecoder::deallocAVDMem(v1[32], v6);
      *v6 = 0;
    }

    if (v6[440])
    {
      this = CAVDDecoder::deallocAVDMem(v1[32], v6 + 440);
      v6[440] = 0;
    }

    v6 += 22;
    --v7;
  }

  while (v7);
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &v1[22 * v8 + 2104];
    if (*v11)
    {
      this = CAVDDecoder::deallocAVDMem(v1[32], &v1[22 * v8 + 2104]);
      *v11 = 0;
    }

    v12 = &v1[22 * v8 + 2148];
    if (*v12)
    {
      this = CAVDDecoder::deallocAVDMem(v1[32], &v1[22 * v8 + 2148]);
      *v12 = 0;
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
  return this;
}

uint64_t CAHDecRoseHevc::freeWorkBuf_PPS(uint64_t this, void *a2)
{
  v2 = this;
  v3 = 0;
  v4 = this + 17536;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (v4 + 176 * v3);
    if (*v7)
    {
      this = CAVDDecoder::deallocAVDMem(*(v2 + 256), v7);
      *v7 = 0;
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return this;
}

uint64_t CAHDecRoseHevc::setVPInstrFifo(uint64_t this, int a2)
{
  *(this + 6252) = 1;
  *(this + 6096) = 0;
  *(this + 6428) = 1;
  *(this + 6272) = 1;
  *(this + 17904) = a2;
  return this;
}

uint64_t CAHDec::DecodePicture(CAHDec *this)
{
  return 0;
}

{
  return 0;
}

CAHDec *createTansyAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x2F10uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecTansyAvc::CAHDecTansyAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecTansyAvc::CAHDecTansyAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288667780;
  *(v4 + 256) = a2;
  *(v4 + 456) = 956 * *(a2 + 7388) + 182432;
  *(v4 + 8) = 2208;
  *(v4 + 16) = xmmword_27775BAD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 11872) = 0u;
  *(v4 + 11888) = 0u;
  *(v4 + 11904) = 0u;
  *(v4 + 11920) = 0u;
  *(v4 + 11936) = 0u;
  *(v4 + 11952) = 0u;
  *(v4 + 11968) = 0u;
  *(v4 + 11984) = 0u;
  *(v4 + 12000) = 0u;
  *(v4 + 12016) = 0u;
  *(v4 + 12032) = 0u;
  bzero((v4 + 560), 0x2C00uLL);
  return a1;
}

void CAHDecTansyAvc::~CAHDecTansyAvc(CAHDecTansyAvc *this)
{
  *this = &unk_288667780;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecTansyAvc::~CAHDecTansyAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecTansyAvc::init(CAHDecTansyAvc *this)
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

uint64_t CAHDecTansyAvc::initPicture(CAHDecTansyAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 956 * *(*(this + 32) + 7388) + 182432;
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
    *(this + 2963) = 0;
    *(this + 1489) = 0;
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

uint64_t CAHDecTansyAvc::populateSlices(CAHDecTansyAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2208;
    v5 = a2;
    do
    {
      CAHDecTansyAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 956;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecTansyAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v3 = a3;
  v4 = 0;
  v99 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 256);
  v6 = *(v5 + 3504);
  v7 = *(v5 + 3192);
  v89 = *(v5 + 3184);
  v90 = *(v5 + 3500);
  v8 = *(v5 + 6952);
  v9 = *(v5 + 3208);
  v10 = *(v5 + 3200) + 1848 * a3;
  *(a2 + 4) = 0;
  v11 = 32 * (*(v10 + 1424) & 3);
  *(a2 + 4) = v11;
  if (*(v10 + 24) != 2)
  {
    v4 = (*(v10 + 63) & 0xF) << 11;
  }

  v12 = v4 | v11;
  *(a2 + 4) = v12;
  if (*(v10 + 24) == 1)
  {
    v13 = (*(v10 + 64) & 0xF) << 7;
  }

  else
  {
    v13 = 0;
  }

  v15 = v13 | v12;
  *(a2 + 4) = v15;
  if (*(v10 + 24) == 1)
  {
    v16 = (*(v10 + 61) == 0) << 15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15 & 0x7FFF7FE0;
  *(a2 + 4) = v17;
  if (*(v10 + 24))
  {
    v18 = 0x20000;
  }

  else
  {
    v18 = 0x10000;
  }

  if (*(v10 + 24) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(a2 + 4) = v19 | v17 & 0xFFFFFFE0;
  if (*(v10 + 24) != 1)
  {
    goto LABEL_20;
  }

  v20 = v9 + 13040 * a3 + 7224;
  *(v10 + 1832) = v20;
  if ((*(v9 + 13040 * a3 + 7227) & 1) != 0 || (v21 = *(v9 + 13040 * a3 + 7256), *(a1 + 4 * v21 + 464)))
  {
    v22 = 16;
  }

  else
  {
    if (!*(a1 + 11852))
    {
      *(a1 + 11912) = *(v9 + 13040 * a3 + 7264);
      *(a1 + 11904) = v21;
      *(a1 + 11852) = 1;
      *(a2 + 4) |= 0x40000u;
      v20 = *(v10 + 1832);
      if (!v20 || !*(a1 + 11852))
      {
        goto LABEL_20;
      }
    }

    v83 = *(v20 + 40);
    if (v83 == *(a1 + 11912))
    {
      goto LABEL_20;
    }

    *(a1 + 11912) = v83;
    *(a1 + 11904) = *(v20 + 32);
    v22 = 0x40000;
  }

  *(a2 + 4) |= v22;
LABEL_20:
  *(a2 + 920) = 0;
  *(a2 + 952) = 0;
  if (*(v10 + 24) == 1 && (*(a2 + 6) & 4) != 0)
  {
    v33 = *(*(v10 + 1832) + 32);
    *(a1 + 11852) = 1;
    v34 = *(a1 + 11844) * v33;
    v35 = 956 * a3;
    if (*(a1 + 11648) || *(a1 + 11800) || *(a1 + 11804))
    {
      v91 = v7;
      v36 = v6;
      v37 = v9;
      result = CAHDec::addToPatcherList(a1, (a1 + 11648), v35 + 3128, v34, 0xFFFFFFFFLL, 8, -256, 4);
      if (result)
      {
        return result;
      }

      v3 = a3;
      v9 = v37;
      v6 = v36;
      v7 = v91;
      if (*(a1 + 11648))
      {
        goto LABEL_41;
      }
    }

    if (*(a1 + 11800) || *(a1 + 11804))
    {
LABEL_41:
      result = CAHDec::addToPatcherList(a1, (a1 + 11648), v35 + 3160, v34, 0x3FFFFFFFFFFLL, 32, 1023, 4);
      if (result)
      {
        return result;
      }
    }
  }

  v87 = (v7 + 604 * v6);
  v88 = v3;
  *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
  v23 = *(v10 + 24);
  if (v23 <= 1)
  {
    v24 = v5 + 6760;
    v25 = v9 + 13040 * a3;
    if (*(v25 + 13032))
    {
      v26 = 0;
      v27 = a2 + 8;
      v28 = v25 + 1416;
      v29 = MEMORY[0x277D86220];
      do
      {
        v30 = (16 * (v26 & 0xF)) | 0x2DC00000;
        *(v27 + 4 * v26) = v30;
        if (v8)
        {
          v31 = 0;
          while (*(*(v24 + 8 * v31) + 12) != *(v28 + 176 * v26 + 12))
          {
            if (v8 == ++v31)
            {
              goto LABEL_29;
            }
          }

          *(v27 + 4 * v26) = v31 & 0xF | v30;
        }

        else
        {
LABEL_29:
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(v28 + 176 * v26 + 32);
            *buf = 67109632;
            *v97 = v26;
            *&v97[4] = 1024;
            *&v97[6] = v32;
            LOWORD(v98[0]) = 1024;
            *(v98 + 2) = v8;
            _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v26;
      }

      while (v26 < *(v25 + 13032));
      v23 = *(v10 + 24);
    }

    else
    {
      LODWORD(v26) = 0;
    }

    if (v23 == 1 && *(v25 + 13036))
    {
      v40 = 0;
      v41 = a2 + 8;
      v42 = v25 + 7224;
      v43 = MEMORY[0x277D86220];
      do
      {
        v44 = (16 * (v40 & 0xF)) | 0x2DC00100;
        *(v41 + 4 * v26) = v44;
        if (v8)
        {
          v45 = 0;
          while (*(*(v24 + 8 * v45) + 12) != *(v42 + 176 * v40 + 12))
          {
            if (v8 == ++v45)
            {
              goto LABEL_51;
            }
          }

          *(v41 + 4 * v26) = v45 & 0xF | v44;
        }

        else
        {
LABEL_51:
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(v42 + 176 * v40 + 32);
            *buf = 67109632;
            *v97 = v26;
            *&v97[4] = 1024;
            *&v97[6] = v46;
            LOWORD(v98[0]) = 1024;
            *(v98 + 2) = v8;
            _os_log_impl(&dword_277606000, v43, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v26) = v26 + 1;
        ++v40;
      }

      while (v40 < *(v25 + 13036));
    }
  }

  *(a2 + 136) = 0x2DD0000000000000;
  v47 = 87;
  if (*(v10 + 24) == 1)
  {
    v47 = 88;
  }

  v48 = ((v87[v47] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v48;
  v49 = v48 & 0xFFFFFFC7 | (8 * (*(v10 + 376) & 7));
  *(a2 + 140) = v49;
  v50 = *(v89 + 2224 * v90 + 4);
  if (*(v89 + 2224 * v90 + 4))
  {
    v50 = *(v10 + 377) & 7;
  }

  v51 = v50 | v49;
  *(a2 + 140) = v51;
  v52 = *(v10 + 24);
  if (v52 != 1)
  {
    goto LABEL_142;
  }

  v53 = v87[88];
  if (v53 != 2)
  {
    goto LABEL_63;
  }

  *(a2 + 140) = v51 & 0x2DD000C0 | 0x2D;
  v52 = *(v10 + 24);
  if (v52 != 1)
  {
LABEL_142:
    if (v52 || !v87[87])
    {
      goto LABEL_83;
    }

    goto LABEL_67;
  }

  v53 = v87[88];
LABEL_63:
  if (v53 != 1)
  {
    goto LABEL_83;
  }

LABEL_67:
  v54 = 0;
  v55 = 0;
  v56 = a2 + 144;
  v57 = a2 + 528;
  do
  {
    if (*(v10 + 378 + v55))
    {
      v58 = ((v55 & 0xF) << 9) | 0x2DE04000;
      *(v56 + 4 * v54) = v58;
      *(v56 + 4 * v54) = v58 | *(v10 + 394 + 2 * v55) & 0x1FF;
      *(v57 + 4 * v54) = 770703360;
      *(v57 + 4 * v54++) = *(v10 + 426 + 2 * v55) | 0x2DF00000;
    }

    if (*(v10 + 458 + v55))
    {
      v59 = 0;
      v60 = 1;
      do
      {
        v61 = v60;
        v62 = (((v55 & 0xF) << 9) | (v59 << 14)) + 769687552;
        *(v56 + 4 * v54) = v62;
        *(v56 + 4 * v54) = v62 | *(v10 + 474 + 4 * v55 + 2 * v59) & 0x1FF;
        *(v57 + 4 * v54) = 770703360;
        *(v57 + 4 * v54++) = *(v10 + 538 + 4 * v55 + 2 * v59) | 0x2DF00000;
        v59 = 1;
        v60 = 0;
      }

      while ((v61 & 1) != 0);
    }

    ++v55;
  }

  while (v55 <= *(v10 + 63));
  if (*(v10 + 24) == 1)
  {
    v63 = 0;
    do
    {
      if (*(v10 + 602 + v63))
      {
        v64 = ((v63 & 0xF) << 9) + 769679360;
        *(v56 + 4 * v54) = v64;
        *(v56 + 4 * v54) = v64 | *(v10 + 618 + 2 * v63) & 0x1FF;
        *(v57 + 4 * v54) = 770703360;
        *(v57 + 4 * v54++) = *(v10 + 650 + 2 * v63) | 0x2DF00000;
      }

      if (*(v10 + 682 + v63))
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = v66;
          v68 = (((v63 & 0xF) << 9) | (v65 << 14)) + 769695744;
          *(v56 + 4 * v54) = v68;
          *(v56 + 4 * v54) = v68 | *(v10 + 698 + 4 * v63 + 2 * v65) & 0x1FF;
          *(v57 + 4 * v54) = 770703360;
          *(v57 + 4 * v54++) = *(v10 + 762 + 4 * v63 + 2 * v65) | 0x2DF00000;
          v65 = 1;
          v66 = 0;
        }

        while ((v67 & 1) != 0);
      }

      ++v63;
    }

    while (v63 <= *(v10 + 64));
  }

  *(a2 + 136) = v54;
LABEL_83:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v87[89] + *(v10 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  *(a2 + 916) = 0;
  v69 = (*(v10 + 1428) == 0) << 17;
  *(a2 + 916) = v69;
  if (*(v10 + 1428) != 1)
  {
    v70 = v69 | 0x10000;
    *(a2 + 916) = v70;
    v71 = v70 | ((*(v10 + 1429) & 0xF) << 8);
    *(a2 + 916) = v71;
    v69 = v71 | ((*(v10 + 1430) & 0xF) << 12);
  }

  *(a2 + 916) = v69 | 0x2DA00000;
  v72 = *(v10 + 1436);
  if (v87[3])
  {
    v73 = 0;
    if ((v72 & 7) != 0)
    {
      *(v10 + 1436) = (v72 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v73 = *(v10 + 1436) & 7;
  }

  *(a2 + 924) = (v73 << 15) | 0x2D800000;
  v74 = *(a1 + 256);
  v75 = *(v74 + 2504);
  v94 = 0;
  v95 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v74, v88, &v95, &v94))
  {
    return 0xFFFFFFFFLL;
  }

  v76 = 956 * v88;
  v77 = v95;
  if (!*v95 && !*(v95 + 152) && !*(v95 + 156))
  {
    goto LABEL_99;
  }

  v78 = v94;
  if (HIDWORD(v94) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v97 = "populateSliceRegisters";
    *&v97[8] = 1024;
    v98[0] = 1814;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v78 = v94;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3132, v78, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (result)
  {
    return result;
  }

  v77 = v95;
  if (!*v95)
  {
LABEL_99:
    if (!*(v77 + 152) && !*(v77 + 156))
    {
      goto LABEL_104;
    }
  }

  v79 = v94;
  if (HIDWORD(v94) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v97 = "populateSliceRegisters";
    *&v97[8] = 1024;
    v98[0] = 1815;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v79 = v94;
  }

  result = CAHDec::addToPatcherList(a1, v77, v76 + 3140, v79, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_104:
    v80 = *(v10 + 16) - (*(v10 + 1436) >> 3);
    *(a2 + 936) = v80;
    if (*(v74 + 2360) != 1)
    {
      return 0;
    }

    *(a2 + 944) = 0;
    if (*(v74 + 2640))
    {
      if ((*(v74 + 2612) & 1) == 0)
      {
LABEL_107:
        v81 = *(v10 + 1840);
        v82 = 0;
        if ((v75 & 0x200000) != 0)
        {
          if (v73 && !*(v10 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *v97 = "int CAHDecTansyAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v80 = *(a2 + 936);
              v82 = *(a2 + 948) & 0x1F0000;
            }

            else
            {
              v82 = 0;
            }

            v81 = 1;
          }
        }

        else if (v73)
        {
          ++v81;
        }

        result = 0;
        if (v81 >= v80)
        {
          v81 = v80;
        }

        v86 = v82 & 0xFFDFFFFF | (v81 << 22) | v75 | (((v75 >> 20) & 1) << 21);
LABEL_139:
        *(a2 + 948) = v86;
        return result;
      }
    }

    else if (!*(v74 + 2420))
    {
      goto LABEL_107;
    }

    result = 0;
    v84 = *(v10 + 1840);
    if (v80 < v84)
    {
      v84 = v80;
    }

    if (v73)
    {
      v85 = v84 == 0;
    }

    else
    {
      v85 = 0;
    }

    if (v85)
    {
      v84 = 1;
    }

    v86 = v75 & 0x10000 | v84;
    goto LABEL_139;
  }

  return result;
}

uint64_t CAHDecTansyAvc::updateCommonRegisters(CAHDecTansyAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecTansyAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775BB08;
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
    v31 = a6 + (dword_27775BB20[v26] << 6);
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

void CAHDecTansyAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775BB88;
            v10 = xmmword_27775BB98;
            v11 = unk_27775BBA8;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775BB48;
            v10 = xmmword_27775BB58;
            v11 = unk_27775BB68;
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

void CAHDecTansyAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775BB88;
              v9 = xmmword_27775BB98;
              v10 = unk_27775BBA8;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775BB48;
              v9 = xmmword_27775BB58;
              v10 = unk_27775BB68;
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

uint64_t CAHDecTansyAvc::populateSequenceRegisters(CAHDecTansyAvc *this)
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

    CAHDecTansyAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecTansyAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 992, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecTansyAvc::populatePictureRegisters(CAHDecTansyAvc *this)
{
  v357 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v336 = *(v2 + 2088);
  v341 = *(v2 + 3040);
  v339 = *(v2 + 3020);
  v340 = *(v2 + 2644);
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
  v34 = *(this + 2961) * v341;
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

  if (v340)
  {
    v38 = 4160;
  }

  else
  {
    v38 = 64;
  }

  v39 = v38 & 0xFFFFFFF0 | ((v340 == 1) << 10) | v37 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v36;
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
    CAHDecTansyAvc::AvcPicScalingListFallBack(v14, v18, v35);
    CAHDecTansyAvc::copyScalingList(v49, (v17 + 76), v48 + 1476, (v35 + 109), (v35 + 121), (v35 + 217), v47);
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
    goto LABEL_367;
  }

  v60 = *(this + 33);
  v61 = *(*(this + 32) + 2680);
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
  v62 = (*(v60 + 16) & 0xF) << 9;
  buf[0] = v61;
  v63 = *(v60 + 148);
  *(v60 + 148) = 0;
  *(*(this + 33) + 148) ^= 0xFFFFFF00;
  v64 = *(this + 33);
  v65 = *(v64 + 148);
  *(v64 + 148) = v63;
  if (v61 || (v66 = DWORD2(v353), *(&v353 + 1)))
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
      v67 = DWORD2(v353) == 0;
    }

    v66 = !v67 || HIDWORD(v353) != 0;
  }

  *(*(this + 33) + 568) = 0;
  v69 = *(this + 33);
  v70 = *(v69 + 568);
  *(v69 + 568) = 0;
  *(*(this + 33) + 568) ^= 0x3FFu;
  v71 = *(this + 33);
  v72 = *(v71 + 568);
  *(v71 + 568) = v70;
  if (!v66 || (result = CAHDec::addToPatcherList(this, buf, 568, v62, 0x3FFFFFFFFFFLL, 32, v72, 4), !result))
  {
LABEL_367:
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
                                    if ((*(*(this + 33) + 188) = 0, v137 = *(this + 33), v138 = *(v137 + 188), *(v137 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v139 = *(this + 33), v140 = *(v139 + 188), *(v139 + 188) = v138, v142 = this + 176 * v341 + 560, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v341 + 70, 188, 0, 0xFFFFFFFFLL, 7, v140, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 608) = 0, v143 = *(this + 33), v144 = *(v143 + 608), *(v143 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v145 = *(this + 33), v146 = *(v145 + 608), *(v145 + 608) = v144, !*v142) && !*(v142 + 38) && !*(v142 + 39) || (result = CAHDec::addToPatcherList(this, v142, 608, 0, 0x3FFFFFFFFFFLL, 32, v146, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 192) = 0, v147 = *(this + 33), v148 = *(v147 + 192), *(v147 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v149 = *(this + 33), v150 = *(v149 + 192), *(v149 + 192) = v148, v151 = (v336 + 8), !*(v336 + 8)) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, (v336 + 8), 192, *(v336 + 60), 0xFFFFFFFFLL, 7, v150, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 612) = 0, v152 = *(this + 33), v153 = *(v152 + 612), *(v152 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v154 = *(this + 33), v155 = *(v154 + 612), *(v154 + 612) = v153, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v336 + 60), 0x3FFFFFFFFFFLL, 32, v155, 4), !result))
                                          {
                                            if ((*(*(this + 33) + 196) = 0, v156 = *(this + 33), v157 = *(v156 + 196), *(v156 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v158 = *(this + 33), v159 = *(v158 + 196), *(v158 + 196) = v157, v160 = this + 176 * v341 + 4784, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, this + 22 * v341 + 598, 196, 0, 0xFFFFFFFFLL, 7, v159, 4), !result))
                                            {
                                              if ((*(*(this + 33) + 616) = 0, v161 = *(this + 33), v162 = *(v161 + 616), *(v161 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v163 = *(this + 33), v164 = *(v163 + 616), *(v163 + 616) = v162, !*v160) && !*(v160 + 38) && !*(v160 + 39) || (result = CAHDec::addToPatcherList(this, v160, 616, 0, 0x3FFFFFFFFFFLL, 32, v164, 4), !result))
                                              {
                                                if ((*(*(this + 33) + 200) = 0, v165 = *(this + 33), v166 = *(v165 + 200), *(v165 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v167 = *(this + 33), v168 = *(v167 + 200), *(v167 + 200) = v166, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v336 + 64), 0xFFFFFFFFLL, 7, v168, 4), !result))
                                                {
                                                  if ((*(*(this + 33) + 620) = 0, v169 = *(this + 33), v170 = *(v169 + 620), *(v169 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v171 = *(this + 33), v172 = *(v171 + 620), *(v171 + 620) = v170, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v172, 4), !result))
                                                  {
                                                    if (*(*(this + 32) + 2648) != 1 || ((v173 = *(this + 33), v174 = *(v173 + 192), *(v173 + 192) = 0, *(*(this + 33) + 192) ^= 0xFFFFFF80, v175 = *(this + 33), v176 = *(v175 + 192), *(v175 + 192) = v174, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 192, *(v336 + 60), 0xFFFFFFFFLL, 7, v176, 4), !result)) && ((v177 = *(this + 33), v178 = *(v177 + 612), *(v177 + 612) = 0, *(*(this + 33) + 612) ^= 0x3FFu, v179 = *(this + 33), v180 = *(v179 + 612), *(v179 + 612) = v178, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 612, *(v336 + 60), 0x3FFFFFFFFFFLL, 32, v180, 4), !result)) && ((v181 = *(this + 33), v182 = *(v181 + 200), *(v181 + 200) = 0, *(*(this + 33) + 200) ^= 0xFFFFFF80, v183 = *(this + 33), v184 = *(v183 + 200), *(v183 + 200) = v182, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 200, *(v336 + 64), 0xFFFFFFFFLL, 7, v184, 4), !result)) && ((v185 = *(this + 33), v186 = *(v185 + 620), *(v185 + 620) = 0, *(*(this + 33) + 620) ^= 0x3FFu, v187 = *(this + 33), v188 = *(v187 + 620), *(v187 + 620) = v186, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 620, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v188, 4), !result)) && ((v189 = *(this + 33), v190 = *(v189 + 188), *(v189 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFF80, v191 = *(this + 33), v192 = *(v191 + 188), *(v191 + 188) = v190, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 188, *(v336 + 72), 0xFFFFFFFFLL, 7, v192, 4), !result)) && ((v193 = *(this + 33), v194 = *(v193 + 608), *(v193 + 608) = 0, *(*(this + 33) + 608) ^= 0x3FFu, v195 = *(this + 33), v196 = *(v195 + 608), *(v195 + 608) = v194, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 608, *(v336 + 72), 0x3FFFFFFFFFFLL, 32, v196, 4), !result)) && ((v197 = *(this + 33), v198 = *(v197 + 196), *(v197 + 196) = 0, *(*(this + 33) + 196) ^= 0xFFFFFF80, v199 = *(this + 33), v200 = *(v199 + 196), *(v199 + 196) = v198, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 196, *(v336 + 76), 0xFFFFFFFFLL, 7, v200, 4), !result)) && ((v201 = *(this + 33), v202 = *(v201 + 616), *(v201 + 616) = 0, *(*(this + 33) + 616) ^= 0x3FFu, v203 = *(this + 33), v204 = *(v203 + 616), *(v203 + 616) = v202, !*v151) && !*(v336 + 160) && !*(v336 + 164) || (result = CAHDec::addToPatcherList(this, v151, 616, *(v336 + 76), 0x3FFFFFFFFFFLL, 32, v204, 4), !result)))
                                                    {
                                                      v205 = this + 4 * v341;
                                                      if (*(v17 + 52) & 0x2000 | v338)
                                                      {
                                                        *(v205 + 116) = 0;
                                                        *(*(this + 33) + 204) = 0;
                                                        if (v338)
                                                        {
                                                          v342 = 0;
                                                          if (v16)
                                                          {
                                                            v206 = 0x2000000;
                                                          }

                                                          else
                                                          {
                                                            v206 = 0;
                                                          }

                                                          v337 = v206;
                                                          do
                                                          {
                                                            v207 = *(v356 + v342);
                                                            v208 = *(v207 + 32);
                                                            *(*(this + 33) + 4 * v342 + 204) = 0;
                                                            *(*(this + 33) + 4 * v342 + 204) = *(*(this + 33) + 4 * v342 + 204) & 0xFFFFFFF | ((v338 << 28) - 0x10000000);
                                                            *(*(this + 33) + 4 * v342 + 204) &= 0xF3FFFFFF;
                                                            *(*(this + 33) + 4 * v342 + 204) = *(*(this + 33) + 4 * v342 + 204) & 0xFDFFFFFF | v337;
                                                            *(*(this + 33) + 4 * v342 + 204) |= 0x1000000u;
                                                            v209 = v339 - *(v207 + 12);
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

                                                            *(*(this + 33) + 4 * v342 + 204) = *(*(this + 33) + 4 * v342 + 204) & 0xFFFE0000 | v211;
                                                            *(*(this + 33) + 4 * v342 + 204) = *(*(this + 33) + 4 * v342 + 204) & 0xFFFDFFFF | ((*(v207 + 1) & 1) << 17);
                                                            v212 = *(this + 32);
                                                            if (*(v207 + 28) == 1)
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
                                                              DPB = AVC_RLM::getDPB(*(v212 + 2992), buf);
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

                                                                v343 = 136315138;
                                                                v344 = "populatePictureRegisters";
                                                                v29 = MEMORY[0x277D86220];
                                                                v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                                              }

                                                              v31 = &v343;
                                                              goto LABEL_364;
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
                                                                    LOWORD(v343) = 0;
                                                                    v29 = MEMORY[0x277D86220];
                                                                    v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                                                    v31 = &v343;
                                                                    v32 = 2;
                                                                    goto LABEL_42;
                                                                  }

                                                                  return 0xFFFFFFFFLL;
                                                                }

                                                                *(v207 + 40) = buf[0] + 8;
                                                              }
                                                            }

                                                            *(*(this + 33) + 4 * v342 + 268) = 0;
                                                            v216 = 4 * v342;
                                                            v217 = *(this + 33) + 4 * v342;
                                                            v218 = *(v217 + 268);
                                                            *(v217 + 268) = 0;
                                                            *(*(this + 33) + 4 * v342 + 268) ^= 0xFFFFFF80;
                                                            v219 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 624) = 0;
                                                            v222 = *(this + 33) + 4 * v342;
                                                            v223 = *(v222 + 624);
                                                            *(v222 + 624) = 0;
                                                            *(*(this + 33) + 4 * v342 + 624) ^= 0x3FFu;
                                                            v224 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 332) = 0;
                                                            v226 = *(this + 33) + 4 * v342;
                                                            v227 = *(v226 + 332);
                                                            *(v226 + 332) = 0;
                                                            *(*(this + 33) + 4 * v342 + 332) ^= 0xFFFFFF80;
                                                            v228 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 688) = 0;
                                                            v231 = *(this + 33) + 4 * v342;
                                                            v232 = *(v231 + 688);
                                                            *(v231 + 688) = 0;
                                                            *(*(this + 33) + 4 * v342 + 688) ^= 0x3FFu;
                                                            v233 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 396) = 0;
                                                            v236 = *(this + 33) + 4 * v342;
                                                            v237 = *(v236 + 396);
                                                            *(v236 + 396) = 0;
                                                            *(*(this + 33) + 4 * v342 + 396) ^= 0xFFFFFF80;
                                                            v238 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 752) = 0;
                                                            v241 = *(this + 33) + 4 * v342;
                                                            v242 = *(v241 + 752);
                                                            *(v241 + 752) = 0;
                                                            *(*(this + 33) + 4 * v342 + 752) ^= 0x3FFu;
                                                            v243 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 460) = 0;
                                                            v245 = *(this + 33) + 4 * v342;
                                                            v246 = *(v245 + 460);
                                                            *(v245 + 460) = 0;
                                                            *(*(this + 33) + 4 * v342 + 460) ^= 0xFFFFFF80;
                                                            v247 = *(this + 33) + 4 * v342;
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

                                                            *(*(this + 33) + 4 * v342 + 816) = 0;
                                                            v250 = *(this + 33) + 4 * v342;
                                                            v251 = *(v250 + 816);
                                                            *(v250 + 816) = 0;
                                                            *(*(this + 33) + 4 * v342 + 816) ^= 0x3FFu;
                                                            v252 = *(this + 33) + 4 * v342;
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
                                                              v255 = *(this + 33) + 4 * v342;
                                                              v256 = *(v255 + 332);
                                                              *(v255 + 332) = 0;
                                                              *(*(this + 33) + 4 * v342 + 332) ^= 0xFFFFFF80;
                                                              v257 = *(this + 33) + 4 * v342;
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

                                                              v260 = *(this + 33) + 4 * v342;
                                                              v261 = *(v260 + 688);
                                                              *(v260 + 688) = 0;
                                                              *(*(this + 33) + 4 * v342 + 688) ^= 0x3FFu;
                                                              v262 = *(this + 33) + 4 * v342;
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

                                                              v265 = *(this + 33) + 4 * v342;
                                                              v266 = *(v265 + 460);
                                                              *(v265 + 460) = 0;
                                                              *(*(this + 33) + 4 * v342 + 460) ^= 0xFFFFFF80;
                                                              v267 = *(this + 33) + 4 * v342;
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

                                                              v270 = *(this + 33) + 4 * v342;
                                                              v271 = *(v270 + 816);
                                                              *(v270 + 816) = 0;
                                                              *(*(this + 33) + 4 * v342 + 816) ^= 0x3FFu;
                                                              v272 = *(this + 33) + 4 * v342;
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

                                                              v275 = *(this + 33) + 4 * v342;
                                                              v276 = *(v275 + 268);
                                                              *(v275 + 268) = 0;
                                                              *(*(this + 33) + 4 * v342 + 268) ^= 0xFFFFFF80;
                                                              v277 = *(this + 33) + 4 * v342;
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

                                                              v280 = *(this + 33) + 4 * v342;
                                                              v281 = *(v280 + 624);
                                                              *(v280 + 624) = 0;
                                                              *(*(this + 33) + 4 * v342 + 624) ^= 0x3FFu;
                                                              v282 = *(this + 33) + 4 * v342;
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

                                                              v285 = *(this + 33) + 4 * v342;
                                                              v286 = *(v285 + 396);
                                                              *(v285 + 396) = 0;
                                                              *(*(this + 33) + 4 * v342 + 396) ^= 0xFFFFFF80;
                                                              v287 = *(this + 33) + 4 * v342;
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

                                                              v290 = *(this + 33) + 4 * v342;
                                                              v291 = *(v290 + 752);
                                                              *(v290 + 752) = 0;
                                                              *(*(this + 33) + 4 * v342 + 752) ^= 0x3FFu;
                                                              v292 = *(this + 33) + 4 * v342;
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

                                                            ++v342;
                                                          }

                                                          while (v342 != v338);
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
                                                      if (v340)
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

uint64_t CAHDecTansyAvc::getSWRStride(CAHDecTansyAvc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1482) = 0;
  if (!v5)
  {
    return v5;
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

  if (v8 <= 3)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        v5 = 0;
        *(this + 2964) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 2965) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 2964) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 2964) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 2964) = (2 * a2 + 63) & 0xFFFFFFC0;
    v10 = 4 * a2;
    goto LABEL_19;
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "getSWRStride";
    v14 = 1024;
    v15 = v8 + 8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bad swr bit depth %d\n", &v12, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecTansyAvc::getTileIdxAbove(CAHDecTansyAvc *this, unsigned int a2)
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

uint64_t CAHDecTansyAvc::populateAvdWork(CAHDecTansyAvc *this, unsigned int a2)
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
    v9 = (v2 + 3144);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 956 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 2212) = v8;
      *(v13 + 2214) = 0;
      *(v13 + 2216) = v8;
      *(v12 + v7 + 2218) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 2240) = *v10;
      *(v13 + 2244) = v15;
      *(v13 + 2248) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 2222) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 1997;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575830, v18, 0x3FFFFFFFFFFLL, 32, -1, 2);
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
            v28 = 1998;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 575832, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 239;
      *(v12 + v7 + 2236) = v14;
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
    *(v2 + 32) = 575808;
  }

  return result;
}

uint64_t CAHDecTansyAvc::allocWorkBuf_SPS(CAHDecTansyAvc *this, _BYTE *a2)
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
        v32 = 2239;
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
    v32 = 2240;
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
    v32 = 2258;
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

uint64_t CAHDecTansyAvc::allocWorkBuf_PPS(CAHDecTansyAvc *this, _BYTE *a2, void *a3, void *a4)
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
    v18 = 2406;
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
      v18 = 2410;
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
      v18 = 2411;
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
    v18 = 2412;
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
    v18 = 2415;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecTansyAvc::freeWorkBuf_SPS(CAHDecTansyAvc *this)
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

uint64_t *CAHDecTansyAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecTansyAvc::setVPInstrFifo(uint64_t this, int a2)
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

CAHDec *createTansyHevcDecoder(void *a1)
{
  v2 = operator new(0x2EE8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_2886678D8;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420444;
    *(v3 + 2) = 3036;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2CB0uLL);
  }

  return v3;
}

void CAHDecTansyHevc::~CAHDecTansyHevc(CAHDecTansyHevc *this)
{
  *this = &unk_2886678D8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecTansyHevc::~CAHDecTansyHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecTansyHevc::init(CAHDecTansyHevc *this)
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

uint64_t CAHDecTansyHevc::initPicture(CAHDecTansyHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420444;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x66A5CuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 2999) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "initPicture";
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v9, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecTansyHevc::populateSlices(CAHDecTansyHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 3036;
    v5 = a2;
    do
    {
      CAHDecTansyHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecTansyHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 352) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 352) = v11;
  *(a2 + 352) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
  *(a2 + 4) = 0;
  v12 = *(v9 + 6477);
  if (*(v9 + 6477))
  {
    v12 = *(v7 + 1880) & 1;
  }

  *(a2 + 4) = v12;
  if (*(v7 + 44) == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = (10 - 2 * *(v7 + 1864)) & 0xE;
  }

  v14 = v13 | v12;
  *(a2 + 4) = v14;
  if (*(v7 + 44))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v7 + 616);
    if (*(v7 + 616))
    {
      v15 = 16 * (*(v7 + 762) == 0);
    }
  }

  v16 = v15 | v14;
  *(a2 + 4) = v16;
  if (*(v7 + 44) == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v9 + 17);
    if (*(v9 + 17))
    {
      v17 = 32 * (*(v7 + 761) & 1);
    }
  }

  v18 = v17 | v16;
  *(a2 + 4) = v18;
  if (*(v7 + 44))
  {
    v19 = 0;
  }

  else
  {
    v19 = (*(v7 + 760) == 0) << 6;
  }

  v20 = v19 | v18;
  *(a2 + 4) = v20;
  if (*(v7 + 624) == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(v7 + 624) & 0xF) << 7;
  }

  v22 = v21 | v20;
  *(a2 + 4) = v22;
  if (*(v7 + 620) == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = (*(v7 + 620) & 0xF) << 11;
  }

  v24 = v23 | v22;
  *(a2 + 4) = v24;
  if (*(v7 + 44) == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v8 + 22284);
    if (*(v8 + 22284))
    {
      v25 = (*(v7 + 616) & 1) << 15;
    }
  }

  v26 = v25 | v24;
  *(a2 + 4) = v26;
  *(a2 + 4) = v26 & 0xFFFCFFFF | ((*(v7 + 44) & 3) << 16);
  *(a2 + 336) = 0;
  if (*(v7 + 44) > 1u)
  {
    goto LABEL_31;
  }

  if (!*(v7 + 2344))
  {
    goto LABEL_31;
  }

  if (*(a1 + 11996))
  {
    goto LABEL_31;
  }

  (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
  v27 = *(a1 + 256);
  if (*(v27 + 8920))
  {
    goto LABEL_31;
  }

  *(a1 + 11996) = 1;
  *(a2 + 4) |= 0x40000u;
  v95 = 368 * a3;
  if (!*(v27 + 8744) && !*(v27 + 8896) && !*(v27 + 8900))
  {
    goto LABEL_147;
  }

  result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3372, 0, 0xFFFFFFFFLL, 8, -256, 4);
  if (result)
  {
    return result;
  }

  if (!*(v27 + 8744))
  {
LABEL_147:
    if (!*(v27 + 8896) && !*(v27 + 8900))
    {
      goto LABEL_31;
    }
  }

  result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3400, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (!result)
  {
LABEL_31:
    *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
    (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
    v28 = *(v7 + 44);
    if (v28 > 1)
    {
      goto LABEL_41;
    }

    v29 = v6 + 8344;
    if ((*(v7 + 620) & 0x80000000) != 0)
    {
      v31 = 0;
      if (v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = a2 + 8;
      do
      {
        v33 = v31;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000 | *(v29 + 4 * v31) & 0xF;
        ++v31;
        v30 += 16;
      }

      while (v33 < *(v7 + 620));
      if (*(v7 + 44))
      {
        goto LABEL_41;
      }
    }

    (*(**(a1 + 256) + 360))(*(a1 + 256), 1, a3);
    if ((*(v7 + 624) & 0x80000000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = a2 + 4 * v31 + 8;
      do
      {
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100;
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100 | *(v29 + 4 * v35) & 0xF;
        v34 += 16;
        v37 = v35++ < *(v7 + 624);
      }

      while (v37);
    }

LABEL_41:
    *(a2 + 128) = 0x2DD0000000000000;
    v38 = *(v7 + 44);
    if (v38 == 1)
    {
      v39 = *(v9 + 49);
      if (!v39)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v38)
      {
        goto LABEL_62;
      }

      v39 = *(v9 + 50);
      if (!v39)
      {
        goto LABEL_62;
      }
    }

    v40 = 0;
    v41 = 0;
    *(a2 + 132) = ((v39 & 1) << 6) | 0x2DD00000;
    v42 = *(v7 + 768);
    v43 = ((v39 & 1) << 6) | 0x2DD00000 | (8 * (*(v7 + 768) & 7));
    *(a2 + 132) = v43;
    v44 = (*(v7 + 772) + *(v7 + 768)) & 7;
    v45 = a2 + 136;
    *(a2 + 132) = v43 & 0xFFFFFFF8 | v44;
    v46 = 1 << (v42 & 7);
    v47 = a2 + 232;
    v48 = 1 << v44;
    do
    {
      if (*(v7 + 776 + v41))
      {
        v49 = ((v41 & 0xF) << 9) | 0x2DE04000;
        *(v45 + 4 * v40) = v49;
        *(v45 + 4 * v40) = (*(v7 + 808 + 4 * v41) + v46) & 0x1FF | v49;
        *(v47 + 4 * v40) = 770703360;
        *(v47 + 4 * v40++) = *(v7 + 872 + 4 * v41) | 0x2DF00000;
      }

      if (*(v7 + 792 + v41))
      {
        v50 = 0;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = (((v41 & 0xF) << 9) | (v50 << 14)) + 769687552;
          *(v45 + 4 * v40) = v53;
          *(v45 + 4 * v40) = (*(v7 + 936 + 8 * v41 + 4 * v50) + v48) & 0x1FF | v53;
          *(v47 + 4 * v40) = 770703360;
          *(v47 + 4 * v40++) = *(v7 + 1608 + 8 * v41 + 4 * v50) | 0x2DF00000;
          v50 = 1;
          v51 = 0;
        }

        while ((v52 & 1) != 0);
      }

      ++v41;
    }

    while (v41 <= *(v7 + 620));
    if (!*(v7 + 44))
    {
      v54 = 0;
      do
      {
        if (*(v7 + 1192 + v54))
        {
          v55 = ((v54 & 0xF) << 9) + 769679360;
          *(v45 + 4 * v40) = v55;
          *(v45 + 4 * v40) = (*(v7 + 1224 + 4 * v54) + v46) & 0x1FF | v55;
          *(v47 + 4 * v40) = 770703360;
          *(v47 + 4 * v40++) = *(v7 + 1288 + 4 * v54) | 0x2DF00000;
        }

        if (*(v7 + 1208 + v54))
        {
          v56 = 0;
          v57 = 1;
          do
          {
            v58 = v57;
            v59 = (((v54 & 0xF) << 9) | (v56 << 14)) + 769695744;
            *(v45 + 4 * v40) = v59;
            *(v45 + 4 * v40) = (*(v7 + 1352 + 8 * v54 + 4 * v56) + v48) & 0x1FF | v59;
            *(v47 + 4 * v40) = 770703360;
            *(v47 + 4 * v40++) = *(v7 + 1736 + 8 * v54 + 4 * v56) | 0x2DF00000;
            v56 = 1;
            v57 = 0;
          }

          while ((v58 & 1) != 0);
        }

        ++v54;
      }

      while (v54 <= *(v7 + 624));
    }

    *(a2 + 128) = v40;
LABEL_62:
    LOBYTE(v60) = *(v9 + 48);
    if (v60)
    {
      v60 = *(v7 + 1876);
    }

    v61 = *(a2 + 328) & 0xFFFFFFE0 | (v60 + *(v9 + 44)) & 0x1F;
    *(a2 + 328) = v61;
    LOBYTE(v62) = *(v9 + 48);
    if (v62)
    {
      v62 = *(v7 + 1872);
    }

    v63 = v61 & 0xFFFFFC1F | (32 * ((v62 + *(v9 + 40)) & 0x1F));
    *(a2 + 328) = v63;
    v64 = *(v9 + 28) + *(v7 + 1868) + 26;
    *(a2 + 328) = v63 & 0xE03FF | ((v64 & 0x7F) << 10) | 0x2D900000;
    *(*(a1 + 256) + 2760) = *(a1 + 460) + (v64 << 25 >> 25);
    *(a2 + 332) = 0;
    v65 = *(v9 + 6540) & 7;
    *(a2 + 332) = v65;
    v66 = v65 & 0xFFFFFFC7 | (8 * (*(v9 + 6536) & 7));
    *(a2 + 332) = v66;
    v67 = *(v8 + 10649);
    if (*(v8 + 10649))
    {
      v67 = (*(v7 + 618) & 1) << 6;
    }

    v68 = v67 | v66;
    *(a2 + 332) = v68;
    v69 = *(v8 + 10649);
    if (*(v8 + 10649))
    {
      v69 = (*(v7 + 617) & 1) << 7;
    }

    v70 = v69 | v68;
    *(a2 + 332) = v69 | v68;
    if (*(v7 + 1881))
    {
      v71 = (v7 + 1888);
    }

    else
    {
      v71 = (v9 + 248);
    }

    v72 = v70 & 0xFFFFF0FF | ((*v71 & 0xF) << 8);
    *(a2 + 332) = v72;
    if (*(v7 + 1881))
    {
      v73 = (v7 + 1884);
    }

    else
    {
      v73 = (v9 + 244);
    }

    v74 = v72 & 0xFFFF0FFF | ((*v73 & 0xF) << 12);
    *(a2 + 332) = v74;
    if (*(v9 + 239) && *(v7 + 1881))
    {
      v75 = (v7 + 1882);
    }

    else
    {
      v75 = (v9 + 240);
    }

    v76 = *v75 == 0;
    v77 = v74 | (v76 << 16);
    *(a2 + 332) = v77;
    v37 = v69 > 0x7F;
    v78 = (v70 >> 6) & 1;
    if (v37)
    {
      LOBYTE(v78) = 1;
    }

    if ((v78 | v76))
    {
      v79 = (v7 + 1892);
    }

    else
    {
      v79 = (v9 + 237);
    }

    v80 = v77 & 0xFFFDFFFF | ((*v79 & 1) << 17);
    *(a2 + 332) = v80;
    if (*(v9 + 52))
    {
      v81 = (*(v9 + 236) & 1) << 18;
    }

    else
    {
      v81 = 0x40000;
    }

    v82 = v81 | v80;
    *(a2 + 332) = v82;
    v83 = *(v8 + 10650);
    if (*(v8 + 10650))
    {
      v83 = (*(v8 + 10668) == 0) << 19;
    }

    *(a2 + 332) = v82 | v83 | 0x2DA00000;
    v84 = *(a1 + 256);
    v85 = *(v84 + 2504);
    if (*(v84 + 2360) == 1)
    {
      v96 = 0;
      v97 = 0;
      if ((*(*v84 + 440))(v84, a3, &v97, &v96))
      {
        v86 = 368 * a3;
        *(a2 + 340) = 0;
        v87 = v97;
        if (*v97 || *(v97 + 152) || *(v97 + 156))
        {
          v88 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1751;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v88 = v96;
          }

          result = CAHDec::addToPatcherList(a1, v87, v86 + 3376, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
          if (result)
          {
            return result;
          }

          v87 = v97;
          if (*v97)
          {
            goto LABEL_103;
          }
        }

        if (*(v87 + 152) || *(v87 + 156))
        {
LABEL_103:
          v90 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1752;
            v91 = MEMORY[0x277D86220];
LABEL_120:
            _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v90 = v96;
            goto LABEL_121;
          }

          goto LABEL_121;
        }

        goto LABEL_122;
      }
    }

    else
    {
      v96 = 0;
      v97 = 0;
      if ((*(*v84 + 440))(v84, a3, &v97, &v96))
      {
        v86 = 368 * a3;
        *(a2 + 340) = 0;
        v87 = v97;
        if (*v97 || *(v97 + 152) || *(v97 + 156))
        {
          v92 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1771;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v92 = v96;
          }

          result = CAHDec::addToPatcherList(a1, v87, v86 + 3376, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
          if (result)
          {
            return result;
          }

          v87 = v97;
          if (*v97)
          {
            goto LABEL_117;
          }
        }

        if (*(v87 + 152) || *(v87 + 156))
        {
LABEL_117:
          v90 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1772;
            v91 = MEMORY[0x277D86220];
            goto LABEL_120;
          }

LABEL_121:
          result = CAHDec::addToPatcherList(a1, v87, v86 + 3380, v90, 0xFFFFFFFFLL, 0, -1, 4);
          if (!result)
          {
            goto LABEL_122;
          }

          return result;
        }

LABEL_122:
        v93 = *(v7 + 16) - (*(v7 + 2080) >> 3);
        *(a2 + 348) = v93;
        if (*(v84 + 2360) != 1)
        {
          return 0;
        }

        *(a2 + 356) = 0;
        if (*(v84 + 2640))
        {
          if ((*(v84 + 2612) & 1) == 0)
          {
LABEL_125:
            result = 0;
            if (v93 >= *(v7 + 2352))
            {
              v93 = *(v7 + 2352);
            }

            v94 = v85 | (v93 << 22);
LABEL_144:
            *(a2 + 360) = v94;
            return result;
          }
        }

        else if (!*(v84 + 2420))
        {
          goto LABEL_125;
        }

        result = 0;
        if (v93 >= *(v7 + 2352))
        {
          v93 = *(v7 + 2352);
        }

        v94 = v93 | v85 & 0x10000;
        goto LABEL_144;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecTansyHevc::updateCommonRegisters(CAHDecTansyHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecTansyHevc::populateSequenceRegisters(CAHDecTansyHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[13] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[13] = v3 & 0x1FFF;
  v1[13] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[14] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[14] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[14] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[14] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[14] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[14] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[14] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[14] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[14] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[14] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[14] = v13;
  v1[14] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[15] = 0;
  if (*(v2 + 10650))
  {
    v1[15] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[15] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[15] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[15] = v16;
    v1[15] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[16] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[16] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[16] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[16] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[16] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[16] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[16] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[16] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[16] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[16] = v25;
  v1[16] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 796, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecTansyHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecTansyHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 7568);
  v6 = *(v4 + 7600);
  *(a3 + 16) = *(v4 + 7584);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 7616);
  v8 = *(v4 + 7632);
  v9 = *(v4 + 7664);
  *(a3 + 80) = *(v4 + 7648);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 7680);
  v11 = *(v4 + 7696);
  v12 = *(v4 + 7728);
  *(a3 + 144) = *(v4 + 7712);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecTansyHevc::populatePictureRegisters(CAHDecTansyHevc *this)
{
  v531 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2964);
  v510 = *(v2 + 2948);
  v511 = *(v2 + 2960);
  v506 = *(v2 + 2952);
  v507 = *(v2 + 2924);
  v501 = *(v2 + 2088);
  v502 = *(v2 + 8280);
  v504 = *(v2 + 3548);
  v505 = *(v2 + 8994);
  v516 = *(v2 + 2644);
  v509 = *(v2 + 8312);
  v508 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v530[0] = *(v2 + 8408);
  v530[1] = v9;
  v10 = *(v2 + 8456);
  v530[2] = *(v2 + 8440);
  v530[3] = v10;
  v503 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v515 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4424) + *(v14 + 4420);
  memset(v529, 0, sizeof(v529));
  memset(v528, 0, sizeof(v528));
  (*(*v12 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v532 = vld2q_f64(v18);
    v18 += 4;
    v529[v16] = v532.val[0];
    v528[v16++] = v532.val[1];
  }

  while (v16 != 4);
  v19 = v6 + 9856 * v4;
  if (*(v19 + 52))
  {
    v20 = 0;
    v21 = *(v19 + 56) + 1;
    v22 = *(this + 33);
    *(v22 + 692) = v21;
    do
    {
      *(v22 + 696 + 2 * v20) = *(v19 + 9676 + 4 * v20);
      v23 = v20++ >= v21;
    }

    while (!v23);
    v24 = 0;
    v25 = *(v19 + 60) + 1;
    *(v22 + 694) = v25;
    do
    {
      *(v22 + 738 + 2 * v24) = *(v19 + 9760 + 4 * v24);
      v23 = v24++ >= v25;
    }

    while (!v23);
    v26 = v21 * v25;
  }

  else
  {
    v27 = *(this + 33);
    *(v27 + 692) = 65537;
    *(v27 + 696) = 0;
    *(v27 + 698) = *(v14 + 22880);
    *(v27 + 738) = 0;
    *(v27 + 740) = *(v14 + 22888);
    v26 = 1;
  }

  v513 = v26;
  v28 = v17[2675];
  v29 = v17[2674];
  if (v28 | v29)
  {
    v30 = v15;
    v31 = *(v14 + 3636);
    if (v31 <= *(v14 + 3640))
    {
      v31 = *(v14 + 3640);
    }

    v32 = (v31 + 9) & 0xFFFFFFFE;
    if (v32 == 8)
    {
      v41 = 1;
      v40 = 8;
      if (!v17[2675])
      {
        goto LABEL_52;
      }
    }

    else
    {
      v33 = v17[2672];
      if (v33)
      {
        v34 = 12;
      }

      else
      {
        v34 = 11;
      }

      if (v33)
      {
        v35 = 5;
      }

      else
      {
        v35 = 4;
      }

      v36 = v33 == 0;
      if (v33)
      {
        v37 = 10;
      }

      else
      {
        v37 = 9;
      }

      if (v36)
      {
        v38 = 2;
      }

      else
      {
        v38 = 3;
      }

      if (v32 == 10)
      {
        v39 = v38;
      }

      else
      {
        v37 = 27;
        v39 = 27;
      }

      if (v32 == 12)
      {
        v40 = v34;
      }

      else
      {
        v40 = v37;
      }

      if (v32 == 12)
      {
        v41 = v35;
      }

      else
      {
        v41 = v39;
      }

      if (!v28)
      {
LABEL_52:
        LOBYTE(v15) = v30;
        if (v29 && (v29 == 3 && v41 - 9 < 2 || v41 <= 0x1A && ((1 << v41) & 0x4C00000) != 0 && v29 <= 2))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
            goto LABEL_275;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_60;
      }
    }

    if (*(v14 + 3600) && (v28 == 2 && v40 == 8 || v28 == 3 && (v40 - 9) <= 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v40;
        *&buf[18] = 1024;
        *&buf[20] = v28;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
LABEL_275:
        v254 = buf;
        v255 = 24;
LABEL_276:
        _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, v43, v254, v255);
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_52;
  }

LABEL_60:
  *(v13 + 88) = 766509056;
  v44 = (*(**(this + 32) + 232))(*(this + 32));
  if (v44)
  {
    v45 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v45 = 0;
  }

  v46 = v7 >> 28;
  v47 = ((v516 != 0) << 12) | ((v516 == 1) << 10) | v45 | *(v13 + 88) & 0xFFFFC15F;
  v48 = v47 & 0xFFFFF500 | 0x2A0;
  v49 = v47 | 0x2B0;
  if (!v515)
  {
    v49 = v48;
  }

  *(v13 + 88) = v29 & 3 | (4 * (v28 & 3)) | v49 & 0xFFFFFFF0 | 0x40;
  v50 = *(this + 32);
  v51 = v29 & 3 | (4 * (v28 & 3)) | v49 & 0xFFF7FFF0 | 0x40 | ((v50[2652] & 1) << 19);
  *(v13 + 88) = v51;
  v52 = v51 & 0xFFFBFFFF | ((v50[2653] & 1) << 18);
  *(v13 + 88) = v52;
  *(v13 + 88) = v52 & 0xFFFDFFFF | ((v50[2654] & 1) << 17);
  if ((v7 & 1) != 0 && *(v19 + 53) && *(v14 + 22888) > v46 + 1 || (v7 & 2) != 0 && !*(v19 + 53) && *(v19 + 52) && v513 > v46 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v53 = *(v19 + 53), *(v19 + 53)))
  {
    v53 = 0;
    goto LABEL_79;
  }

  if (!*(v19 + 52) && v511 > v46 + 1)
  {
LABEL_78:
    v53 = (v8 == 0) << 27;
  }

LABEL_79:
  *(v13 + 92) = v53;
  *(v13 + 96) = 0;
  v54 = *(v14 + 3608) - 1;
  *(v13 + 96) = v54;
  v55 = *(v14 + 3612);
  *(v13 + 100) = 0;
  *(v13 + 104) = 0;
  *(v13 + 96) = (v54 | (v55 << 16)) - 0x10000;
  if (*(v19 + 6466))
  {
    v56 = 32 * (*(v19 + 6477) & 1);
    *(v13 + 104) = v56;
    if (*(v19 + 6477))
    {
      v57 = *(v19 + 6484) & 7;
    }

    else
    {
      v57 = 0;
    }

    v59 = v57 | v56;
    *(v13 + 104) = v57 | v56;
    if (v56)
    {
      v60 = (v19 + 6512);
      v61 = (v13 + 112);
      v62 = -1;
      do
      {
        v63 = *v61 & 0xFFFFFFE0 | *v60 & 0x1F;
        *v61 = v63;
        *v61++ = v63 & 0xFFFFFC1F | (32 * (*(v60 - 6) & 0x1F));
        ++v62;
        ++v60;
      }

      while (v62 < v57);
    }

    LOBYTE(v64) = *(v19 + 6477);
    if (v64)
    {
      v64 = *(v19 + 6480);
    }

    v65 = (8 * ((v15 - v64) & 3)) | v59;
    *(v13 + 104) = v65;
    v66 = v65 & 0xFFFFFFBF | ((*(v19 + 6476) & 1) << 6);
    *(v13 + 104) = v66;
    v58 = v66 & 0xFFFFFE7F | ((*(v19 + 6472) & 3) << 7);
  }

  else
  {
    v58 = 8 * (v15 & 3);
  }

  *(v13 + 104) = v58;
  LOBYTE(v67) = *(v19 + 34);
  if (v67)
  {
    v67 = *(v19 + 36);
  }

  v68 = v58 & 0xFFFE7FFF | (((v15 - v67) & 3) << 15);
  *(v13 + 104) = v68;
  v69 = v68 & 0xFFFFF1FF | ((*(v19 + 6460) & 7) << 9);
  *(v13 + 104) = v69;
  v70 = v69 & 0xFFFFEFFF | ((*(v19 + 53) & 1) << 12);
  *(v13 + 104) = v70;
  v71 = v70 & 0xFFFFDFFF | ((*(v19 + 52) & 1) << 13);
  *(v13 + 104) = v71;
  v72 = v71 & 0xFFFFBFFF | ((*(v19 + 51) & 1) << 14);
  *(v13 + 104) = v72;
  v73 = v72 & 0xFFFDFFFF | ((*(v19 + 34) & 1) << 17);
  *(v13 + 104) = v73;
  v74 = v73 & 0xFFFBFFFF | ((*(v19 + 33) & 1) << 18);
  *(v13 + 104) = v74;
  v75 = v74 & 0xFFF7FFFF | ((*(v19 + 32) & 1) << 19);
  *(v13 + 104) = v75;
  v76 = v75 & 0xFFEFFFFF | ((*(v19 + 16) & 1) << 20);
  *(v13 + 104) = v76;
  if ((v49 & 0x2000) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 104) = v77 | v76 & 0xFFDFFFFF;
  v78 = *(v13 + 108) & 0xFFFFFFE0 | *(v19 + 44) & 0x1F;
  *(v13 + 108) = v78;
  v79 = v78 & 0xFFFFFC1F | (32 * (*(v19 + 40) & 0x1F));
  *(v13 + 108) = v79;
  v80 = *(this + 32);
  if (*(v80 + 12) == 1 && *(v14 + 22864) == 5 && !*(v19 + 52) && *(v14 + 3600) == 1 && (*(v14 + 3636) | 2) == 2 && (*(v14 + 3640) | 2) == 2)
  {
    v81 = *(v80 + 8184);
    v82 = v79 | 0x80000000;
    *(v13 + 108) = v82;
    v83 = *(v19 + 28) + *(v81 + 1868);
    v84 = v83 + 26;
    v85 = v83 + 11;
    if (v84 > 51)
    {
      v85 = 36;
    }

    if (v84 < 15)
    {
      v85 = 0;
    }

    v86 = v82 & 0xFFFF83FF | ((kTable_8_11_tc[v85] & 0x1F) << 10);
    *(v13 + 108) = v86;
    v87 = *(v19 + 28) + *(v81 + 1868);
    v88 = v87 + 26;
    v89 = v87 + 11;
    if (v88 > 51)
    {
      v89 = 36;
    }

    if (v88 < 15)
    {
      v89 = 0;
    }

    *(v13 + 108) = v86 & 0xFFC07FFF | ((kTable_8_11_beta[v89] & 0x7F) << 15);
    v90 = *(this + 32);
    v91 = 2;
  }

  else
  {
    *(v13 + 108) = v79 & 0x7FC003FF;
    v90 = *(this + 32);
    v91 = *(v90 + 12);
  }

  *(v90 + 16) = v91;
  if (*(v19 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v44, v13 + 136, *(this + 33) + 1792, *(v14 + 3600), v19 + 256);
    v90 = *(this + 32);
  }

  v92 = *(v13 + 88);
  if ((~v92 & 0xC0000) != 0)
  {
    v96 = 0;
    v98 = 0;
    *(v13 + 156) = 0;
    *(v13 + 160) = 0;
  }

  else
  {
    v93 = *(v90 + 2656);
    if (!v93 || !*(v90 + 2660))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v253 = *(v90 + 2660);
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v93;
        *&buf[18] = 1024;
        *&buf[20] = v253;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_275;
      }

      return 0xFFFFFFFFLL;
    }

    v94 = *(v90 + 2664);
    *(v13 + 156) = v94;
    v95 = *(v90 + 2668);
    v96 = v95 << 16;
    *(v13 + 156) = v94 | (v95 << 16);
    v97 = *(v90 + 2664) + *(v90 + 2656) - 1;
    *(v13 + 160) = *(v90 + 2664) + *(v90 + 2656) - 1;
    v98 = ((*(v90 + 2660) + *(v90 + 2668)) << 16) - 0x10000;
    *(v13 + 160) = v98 & 0xFFFF0000 | v97;
  }

  if (v8)
  {
    v99 = 7340080;
  }

  else
  {
    v99 = 3145776;
  }

  *(v13 + 164) = v99;
  if (!*(*(this + 32) + 2892))
  {
    v100 = *(v14 + 3608) - 1;
    *(v13 + 160) = v98 | v100;
    v101 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 160) = v101 & 0xFFFF0000 | v100;
    if (*(v14 + 3616))
    {
      if ((v92 & 0x800) != 0)
      {
        v102 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 156) = v96 | v102;
        *(v13 + 156) = v102 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v103 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 160) = v103 | v101;
        *(v13 + 160) = v103 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v104 = 0;
  v105 = this + 6160;
  do
  {
    *(*(this + 33) + v104 + 168) = 0;
    v106 = *(this + 33) + v104;
    v107 = *(v106 + 168);
    *(v106 + 168) = 0;
    *(*(this + 33) + v104 + 168) ^= 0xFFFFFF00;
    v108 = *(this + 33) + v104;
    v109 = *(v108 + 168);
    *(v108 + 168) = v107;
    if (*v105 || *(v105 + 38) || *(v105 + 39))
    {
      result = CAHDec::addToPatcherList(this, v105, v104 + 168, 0, 0xFFFFFFFFLL, 8, v109, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v104 + 196) = 0;
    *(*(this + 33) + v104 + 196) = *(*(this + 33) + v104 + 196) & 0x800001FF | (((*(this + 2996) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v104 + 464) = 0;
    v111 = *(this + 33) + v104;
    v112 = *(v111 + 464);
    *(v111 + 464) = 0;
    *(*(this + 33) + v104 + 464) ^= 0x3FFu;
    v113 = *(this + 33) + v104;
    v114 = *(v113 + 464);
    *(v113 + 464) = v112;
    if (*v105 || *(v105 + 38) || *(v105 + 39))
    {
      result = CAHDec::addToPatcherList(this, v105, v104 + 464, 0, 0x3FFFFFFFFFFLL, 32, v114, 4);
      if (result)
      {
        return result;
      }
    }

    v104 += 4;
    v105 += 176;
  }

  while (v104 != 28);
  *(*(this + 33) + 224) = 0;
  *(*(this + 33) + 492) = 0;
  if ((*(v13 + 90) & 8) != 0)
  {
    v115 = *(this + 33);
    v116 = *(*(this + 32) + 2680);
    v526 = 0u;
    v527 = 0u;
    v524 = 0u;
    v525 = 0u;
    v522 = 0u;
    v523 = 0u;
    v520 = 0u;
    v521 = 0u;
    v519 = 0u;
    memset(buf, 0, sizeof(buf));
    v117 = (*(v115 + 16) & 0xF) << 9;
    *buf = v116;
    v118 = *(v115 + 224);
    *(v115 + 224) = 0;
    *(*(this + 33) + 224) ^= 0xFFFFFF00;
    v119 = *(this + 33);
    v120 = *(v119 + 224);
    *(v119 + 224) = v118;
    if (v116)
    {
      result = CAHDec::addToPatcherList(this, buf, 224, v117, 0xFFFFFFFFLL, 8, v120, 4);
      if (result)
      {
        return result;
      }

      if (*buf)
      {
        v121 = 0;
      }

      else
      {
        v121 = DWORD2(v526) == 0;
      }

      LODWORD(v116) = !v121 || HIDWORD(v526) != 0;
    }

    *(*(this + 33) + 492) = 0;
    v123 = *(this + 33);
    v124 = *(v123 + 492);
    *(v123 + 492) = 0;
    *(*(this + 33) + 492) ^= 0x3FFu;
    v125 = *(this + 33);
    v126 = *(v125 + 492);
    *(v125 + 492) = v124;
    if (v116)
    {
      result = CAHDec::addToPatcherList(this, buf, 492, v117, 0x3FFFFFFFFFFLL, 32, v126, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 228) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 228);
  *(v127 + 228) = 0;
  *(*(this + 33) + 228) ^= 0xFFFFFF00;
  v129 = *(this + 33);
  v130 = *(v129 + 228);
  *(v129 + 228) = v128;
  if (*(this + 1298) || *(this + 2634) || *(this + 2635))
  {
    result = CAHDec::addToPatcherList(this, this + 1298, 228, 0, 0xFFFFFFFFLL, 8, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 496) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 496);
  *(v131 + 496) = 0;
  *(*(this + 33) + 496) ^= 0x3FFu;
  v133 = *(this + 33);
  v134 = *(v133 + 496);
  *(v133 + 496) = v132;
  if (*(this + 1298) || *(this + 2634) || *(this + 2635))
  {
    result = CAHDec::addToPatcherList(this, this + 1298, 496, 0, 0x3FFFFFFFFFFLL, 32, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 232);
  *(v135 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFF00;
  v137 = *(this + 33);
  v138 = *(v137 + 232);
  *(v137 + 232) = v136;
  if (*(this + 1320) || *(this + 2678) || *(this + 2679))
  {
    result = CAHDec::addToPatcherList(this, this + 1320, 232, 0, 0xFFFFFFFFLL, 8, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 500) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 500);
  *(v139 + 500) = 0;
  *(*(this + 33) + 500) ^= 0x3FFu;
  v141 = *(this + 33);
  v142 = *(v141 + 500);
  *(v141 + 500) = v140;
  if (*(this + 1320) || *(this + 2678) || *(this + 2679))
  {
    result = CAHDec::addToPatcherList(this, this + 1320, 500, 0, 0x3FFFFFFFFFFLL, 32, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 236);
  *(v143 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFF00;
  v145 = *(this + 33);
  v146 = *(v145 + 236);
  *(v145 + 236) = v144;
  if (*(this + 1342) || *(this + 2722) || *(this + 2723))
  {
    result = CAHDec::addToPatcherList(this, this + 1342, 236, 0, 0xFFFFFFFFLL, 8, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 504) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 504);
  *(v147 + 504) = 0;
  *(*(this + 33) + 504) ^= 0x3FFu;
  v149 = *(this + 33);
  v150 = *(v149 + 504);
  *(v149 + 504) = v148;
  if (*(this + 1342) || *(this + 2722) || *(this + 2723))
  {
    result = CAHDec::addToPatcherList(this, this + 1342, 504, 0, 0x3FFFFFFFFFFLL, 32, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 240);
  *(v151 + 240) = 0;
  *(*(this + 33) + 240) ^= 0xFFFFFF00;
  v153 = *(this + 33);
  v154 = *(v153 + 240);
  *(v153 + 240) = v152;
  if (*(this + 1364) || *(this + 2766) || *(this + 2767))
  {
    result = CAHDec::addToPatcherList(this, this + 1364, 240, 0, 0xFFFFFFFFLL, 8, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 508) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 508);
  *(v155 + 508) = 0;
  *(*(this + 33) + 508) ^= 0x3FFu;
  v157 = *(this + 33);
  v158 = *(v157 + 508);
  *(v157 + 508) = v156;
  if (*(this + 1364) || *(this + 2766) || *(this + 2767))
  {
    result = CAHDec::addToPatcherList(this, this + 1364, 508, 0, 0x3FFFFFFFFFFLL, 32, v158, 4);
    if (result)
    {
      return result;
    }
  }

  v512 = v13;
  v514 = v14;
  *(*(this + 33) + 244) = 0;
  v159 = *(this + 33);
  v160 = *(v159 + 244);
  *(v159 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFF00;
  v161 = *(this + 33);
  v162 = *(v161 + 244);
  *(v161 + 244) = v160;
  if (*(this + 1386) || *(this + 2810) || *(this + 2811))
  {
    result = CAHDec::addToPatcherList(this, this + 1386, 244, 0, 0xFFFFFFFFLL, 8, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 512) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 512);
  *(v163 + 512) = 0;
  *(*(this + 33) + 512) ^= 0x3FFu;
  v165 = *(this + 33);
  v166 = *(v165 + 512);
  *(v165 + 512) = v164;
  if (*(this + 1386) || *(this + 2810) || *(this + 2811))
  {
    result = CAHDec::addToPatcherList(this, this + 1386, 512, 0, 0x3FFFFFFFFFFLL, 32, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = 0;
  *(*(this + 33) + 536) = 0;
  if (*(*(this + 32) + 16) == 2)
  {
    v167 = *(this + 33);
    v168 = *(v167 + 268);
    *(v167 + 268) = 0;
    *(*(this + 33) + 268) ^= 0xFFFFFF00;
    v169 = *(this + 33);
    v170 = *(v169 + 268);
    *(v169 + 268) = v168;
    if (*(this + 1474) || *(this + 2986) || *(this + 2987))
    {
      result = CAHDec::addToPatcherList(this, this + 1474, 268, 0, 0xFFFFFFFFLL, 8, v170, 4);
      if (result)
      {
        return result;
      }
    }

    v171 = *(this + 33);
    v172 = *(v171 + 536);
    *(v171 + 536) = 0;
    *(*(this + 33) + 536) ^= 0x3FFu;
    v173 = *(this + 33);
    v174 = *(v173 + 536);
    *(v173 + 536) = v172;
    if (*(this + 1474) || *(this + 2986) || *(this + 2987))
    {
      result = CAHDec::addToPatcherList(this, this + 1474, 536, 0, 0x3FFFFFFFFFFLL, 32, v174, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 248) = 0;
  *(*(this + 33) + 516) = 0;
  v175 = *(this + 33);
  v176 = *(v175 + 248);
  *(v175 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFF00;
  v177 = *(this + 33);
  v178 = *(v177 + 248);
  *(v177 + 248) = v176;
  if (*(this + 1408) || *(this + 2854) || *(this + 2855))
  {
    result = CAHDec::addToPatcherList(this, this + 1408, 248, 0, 0xFFFFFFFFLL, 8, v178, 4);
    if (result)
    {
      return result;
    }
  }

  v179 = *(this + 33);
  v180 = *(v179 + 516);
  *(v179 + 516) = 0;
  *(*(this + 33) + 516) ^= 0x3FFu;
  v181 = *(this + 33);
  v182 = *(v181 + 516);
  *(v181 + 516) = v180;
  if (*(this + 1408) || *(this + 2854) || *(this + 2855))
  {
    result = CAHDec::addToPatcherList(this, this + 1408, 516, 0, 0x3FFFFFFFFFFLL, 32, v182, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  v183 = *(this + 33);
  v184 = *(v183 + 252);
  *(v183 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFF00;
  v185 = *(this + 33);
  v186 = *(v185 + 252);
  *(v185 + 252) = v184;
  if (*(this + 924) || *(this + 1886) || *(this + 1887))
  {
    result = CAHDec::addToPatcherList(this, this + 924, 252, 0, 0xFFFFFFFFLL, 8, v186, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 520) = 0;
  v187 = *(this + 33);
  v188 = *(v187 + 520);
  *(v187 + 520) = 0;
  *(*(this + 33) + 520) ^= 0x3FFu;
  v189 = *(this + 33);
  v190 = *(v189 + 520);
  *(v189 + 520) = v188;
  if (*(this + 924) || *(this + 1886) || *(this + 1887))
  {
    result = CAHDec::addToPatcherList(this, this + 924, 520, 0, 0x3FFFFFFFFFFLL, 32, v190, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v191 = *(this + 33);
  v192 = *(v191 + 256);
  *(v191 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFF00;
  v193 = *(this + 33);
  v194 = *(v193 + 256);
  *(v193 + 256) = v192;
  v195 = (this + 176 * v509 + 7568);
  if (*v195 || *(this + 44 * v509 + 1930) || *(this + 44 * v509 + 1931))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v509 + 946, 256, 0, 0xFFFFFFFFLL, 8, v194, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 524) = 0;
  v196 = *(this + 33);
  v197 = *(v196 + 524);
  *(v196 + 524) = 0;
  *(*(this + 33) + 524) ^= 0x3FFu;
  v198 = *(this + 33);
  v199 = *(v198 + 524);
  *(v198 + 524) = v197;
  if (*v195 || *(this + 44 * v509 + 1930) || *(this + 44 * v509 + 1931))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v509 + 946, 524, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v200 = *(this + 33);
  v201 = *(v200 + 260);
  *(v200 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFF00;
  v202 = *(this + 33);
  v203 = *(v202 + 260);
  *(v202 + 260) = v201;
  if (*(this + 1430) || *(this + 2898) || *(this + 2899))
  {
    result = CAHDec::addToPatcherList(this, this + 1430, 260, 0, 0xFFFFFFFFLL, 8, v203, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 528) = 0;
  v204 = *(this + 33);
  v205 = *(v204 + 528);
  *(v204 + 528) = 0;
  *(*(this + 33) + 528) ^= 0x3FFu;
  v206 = *(this + 33);
  v207 = *(v206 + 528);
  *(v206 + 528) = v205;
  if (*(this + 1430) || *(this + 2898) || *(this + 2899))
  {
    result = CAHDec::addToPatcherList(this, this + 1430, 528, 0, 0x3FFFFFFFFFFLL, 32, v207, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = 0;
  v208 = *(this + 33);
  v209 = *(v208 + 264);
  *(v208 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFF00;
  v210 = *(this + 33);
  v211 = *(v210 + 264);
  *(v210 + 264) = v209;
  if (*(this + 1452) || *(this + 2942) || *(this + 2943))
  {
    result = CAHDec::addToPatcherList(this, this + 1452, 264, 0, 0xFFFFFFFFLL, 8, v211, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 532) = 0;
  v212 = *(this + 33);
  v213 = *(v212 + 532);
  *(v212 + 532) = 0;
  *(*(this + 33) + 532) ^= 0x3FFu;
  v214 = *(this + 33);
  v215 = *(v214 + 532);
  *(v214 + 532) = v213;
  if (*(this + 1452) || *(this + 2942) || *(this + 2943))
  {
    result = CAHDec::addToPatcherList(this, this + 1452, 532, 0, 0x3FFFFFFFFFFLL, 32, v215, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 272) = 0;
  *(*(this + 33) + 540) = 0;
  *(*(this + 33) + 276) = 0;
  *(*(this + 33) + 544) = 0;
  *(*(this + 33) + 280) = 0;
  *(*(this + 33) + 548) = 0;
  *(*(this + 33) + 284) = 0;
  *(*(this + 33) + 552) = 0;
  v216 = *(this + 33);
  if (*(*(this + 32) + 2648) == 1)
  {
    v217 = *(v216 + 276);
    *(v216 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v218 = *(this + 33);
    v219 = *(v218 + 276);
    *(v218 + 276) = v217;
    v221 = (v501 + 8);
    v220 = *(v501 + 8);
    if (v505)
    {
      if (v220 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v501 + 8), 276, *(v501 + 68), 0xFFFFFFFFLL, 7, v219, 4);
        if (result)
        {
          return result;
        }
      }

      v222 = *(this + 33);
      v223 = *(v222 + 544);
      *(v222 + 544) = 0;
      *(*(this + 33) + 544) ^= 0x3FFu;
      v224 = *(this + 33);
      v225 = *(v224 + 544);
      *(v224 + 544) = v223;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 544, *(v501 + 68), 0x3FFFFFFFFFFLL, 32, v225, 4);
        if (result)
        {
          return result;
        }
      }

      v226 = *(this + 33);
      v227 = *(v226 + 272);
      *(v226 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v228 = *(this + 33);
      v229 = *(v228 + 272);
      *(v228 + 272) = v227;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 272, *(v501 + 80), 0xFFFFFFFFLL, 7, v229, 4);
        if (result)
        {
          return result;
        }
      }

      v230 = *(this + 33);
      v231 = *(v230 + 540);
      *(v230 + 540) = 0;
      *(*(this + 33) + 540) ^= 0x3FFu;
      v232 = *(this + 33);
      v233 = *(v232 + 540);
      *(v232 + 540) = v231;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 540, *(v501 + 80), 0x3FFFFFFFFFFLL, 32, v233, 4);
        if (result)
        {
          return result;
        }
      }

      if (v507)
      {
        v234 = *(this + 33);
        v235 = *(v234 + 284);
        *(v234 + 284) = 0;
        *(*(this + 33) + 284) ^= 0xFFFFFF80;
        v236 = *(this + 33);
        v237 = *(v236 + 284);
        *(v236 + 284) = v235;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 284, *(v502 + 56), 0xFFFFFFFFLL, 7, v237, 4);
          if (result)
          {
            return result;
          }
        }

        v238 = *(this + 33);
        v239 = *(v238 + 552);
        *(v238 + 552) = 0;
        *(*(this + 33) + 552) ^= 0x3FFu;
        v240 = *(this + 33);
        v241 = *(v240 + 552);
        *(v240 + 552) = v239;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 552, *(v502 + 56), 0x3FFFFFFFFFFLL, 32, v241, 4);
          if (result)
          {
            return result;
          }
        }

        v242 = *(this + 33);
        v243 = *(v242 + 280);
        *(v242 + 280) = 0;
        *(*(this + 33) + 280) ^= 0xFFFFFF80;
        v244 = *(this + 33);
        v245 = *(v244 + 280);
        *(v244 + 280) = v243;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 280, *(v502 + 68), 0xFFFFFFFFLL, 7, v245, 4);
          if (result)
          {
            return result;
          }
        }

        v246 = *(this + 33);
        v247 = *(v246 + 548);
        *(v246 + 548) = 0;
        *(*(this + 33) + 548) ^= 0x3FFu;
        v248 = *(this + 33);
        v249 = *(v248 + 548);
        *(v248 + 548) = v247;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          v250 = v502;
          v251 = *(v502 + 68);
          v252 = this;
LABEL_343:
          v289 = 548;
LABEL_344:
          result = CAHDec::addToPatcherList(v252, v250, v289, v251, 0x3FFFFFFFFFFLL, 32, v249, 4);
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v220 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v501 + 8), 276, *(v501 + 60), 0xFFFFFFFFLL, 7, v219, 4);
        if (result)
        {
          return result;
        }
      }

      v290 = *(this + 33);
      v291 = *(v290 + 284);
      *(v290 + 284) = 0;
      *(*(this + 33) + 284) ^= 0xFFFFFF80;
      v292 = *(this + 33);
      v293 = *(v292 + 284);
      *(v292 + 284) = v291;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 284, *(v501 + 64), 0xFFFFFFFFLL, 7, v293, 4);
        if (result)
        {
          return result;
        }
      }

      v294 = *(this + 33);
      v295 = *(v294 + 272);
      *(v294 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v296 = *(this + 33);
      v297 = *(v296 + 272);
      *(v296 + 272) = v295;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 272, *(v501 + 72), 0xFFFFFFFFLL, 7, v297, 4);
        if (result)
        {
          return result;
        }
      }

      v298 = *(this + 33);
      v299 = *(v298 + 280);
      *(v298 + 280) = 0;
      *(*(this + 33) + 280) ^= 0xFFFFFF80;
      v300 = *(this + 33);
      v301 = *(v300 + 280);
      *(v300 + 280) = v299;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 280, *(v501 + 76), 0xFFFFFFFFLL, 7, v301, 4);
        if (result)
        {
          return result;
        }
      }

      v302 = *(this + 33);
      v303 = *(v302 + 544);
      *(v302 + 544) = 0;
      *(*(this + 33) + 544) ^= 0x3FFu;
      v304 = *(this + 33);
      v305 = *(v304 + 544);
      *(v304 + 544) = v303;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 544, *(v501 + 60), 0x3FFFFFFFFFFLL, 32, v305, 4);
        if (result)
        {
          return result;
        }
      }

      v306 = *(this + 33);
      v307 = *(v306 + 552);
      *(v306 + 552) = 0;
      *(*(this + 33) + 552) ^= 0x3FFu;
      v308 = *(this + 33);
      v309 = *(v308 + 552);
      *(v308 + 552) = v307;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 552, *(v501 + 64), 0x3FFFFFFFFFFLL, 32, v309, 4);
        if (result)
        {
          return result;
        }
      }

      v310 = *(this + 33);
      v311 = *(v310 + 540);
      *(v310 + 540) = 0;
      *(*(this + 33) + 540) ^= 0x3FFu;
      v312 = *(this + 33);
      v313 = *(v312 + 540);
      *(v312 + 540) = v311;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 540, *(v501 + 72), 0x3FFFFFFFFFFLL, 32, v313, 4);
        if (result)
        {
          return result;
        }
      }

      v314 = *(this + 33);
      v315 = *(v314 + 548);
      *(v314 + 548) = 0;
      *(*(this + 33) + 548) ^= 0x3FFu;
      v316 = *(this + 33);
      v249 = *(v316 + 548);
      *(v316 + 548) = v315;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        v251 = *(v501 + 76);
        v252 = this;
        v250 = (v501 + 8);
        goto LABEL_343;
      }
    }
  }

  else
  {
    v256 = *(v216 + 272);
    *(v216 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v257 = *(this + 33);
    v258 = *(v257 + 272);
    *(v257 + 272) = v256;
    v259 = (this + 176 * v509 + 528);
    if (*v259 || *(this + 44 * v509 + 170) || *(this + 44 * v509 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 66, 272, 0, 0xFFFFFFFFLL, 7, v258, 4);
      if (result)
      {
        return result;
      }
    }

    v260 = *(this + 33);
    v261 = *(v260 + 540);
    *(v260 + 540) = 0;
    *(*(this + 33) + 540) ^= 0x3FFu;
    v262 = *(this + 33);
    v263 = *(v262 + 540);
    *(v262 + 540) = v261;
    if (*v259 || *(this + 44 * v509 + 170) || *(this + 44 * v509 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 66, 540, 0, 0x3FFFFFFFFFFLL, 32, v263, 4);
      if (result)
      {
        return result;
      }
    }

    v264 = *(this + 33);
    v265 = *(v264 + 276);
    *(v264 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v266 = *(this + 33);
    v267 = *(v266 + 276);
    *(v266 + 276) = v265;
    v268 = (v501 + 8);
    if (*(v501 + 8) || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v501 + 8), 276, *(v501 + 60), 0xFFFFFFFFLL, 7, v267, 4);
      if (result)
      {
        return result;
      }
    }

    v269 = *(this + 33);
    v270 = *(v269 + 544);
    *(v269 + 544) = 0;
    *(*(this + 33) + 544) ^= 0x3FFu;
    v271 = *(this + 33);
    v272 = *(v271 + 544);
    *(v271 + 544) = v270;
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 544, *(v501 + 60), 0x3FFFFFFFFFFLL, 32, v272, 4);
      if (result)
      {
        return result;
      }
    }

    v273 = *(this + 33);
    v274 = *(v273 + 280);
    *(v273 + 280) = 0;
    *(*(this + 33) + 280) ^= 0xFFFFFF80;
    v275 = *(this + 33);
    v276 = *(v275 + 280);
    *(v275 + 280) = v274;
    v277 = (this + 176 * v509 + 3344);
    if (*v277 || *(this + 44 * v509 + 874) || *(this + 44 * v509 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 418, 280, 0, 0xFFFFFFFFLL, 7, v276, 4);
      if (result)
      {
        return result;
      }
    }

    v278 = *(this + 33);
    v279 = *(v278 + 548);
    *(v278 + 548) = 0;
    *(*(this + 33) + 548) ^= 0x3FFu;
    v280 = *(this + 33);
    v281 = *(v280 + 548);
    *(v280 + 548) = v279;
    if (*v277 || *(this + 44 * v509 + 874) || *(this + 44 * v509 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 418, 548, 0, 0x3FFFFFFFFFFLL, 32, v281, 4);
      if (result)
      {
        return result;
      }
    }

    v282 = *(this + 33);
    v283 = *(v282 + 284);
    *(v282 + 284) = 0;
    *(*(this + 33) + 284) ^= 0xFFFFFF80;
    v284 = *(this + 33);
    v285 = *(v284 + 284);
    *(v284 + 284) = v283;
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 284, *(v501 + 64), 0xFFFFFFFFLL, 7, v285, 4);
      if (result)
      {
        return result;
      }
    }

    v286 = *(this + 33);
    v287 = *(v286 + 552);
    *(v286 + 552) = 0;
    *(*(this + 33) + 552) ^= 0x3FFu;
    v288 = *(this + 33);
    v249 = *(v288 + 552);
    *(v288 + 552) = v287;
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      v251 = *(v501 + 64);
      v252 = this;
      v250 = (v501 + 8);
      v289 = 552;
      goto LABEL_344;
    }
  }

  if (!(*(v512 + 88) & 0x2000 | v503))
  {
    *(v512 + 88) |= 0x2000u;
    *(this + v509 + 116) = 1;
    *(*(this + 33) + 288) = 0;
    goto LABEL_465;
  }

  *(this + v509 + 116) = 0;
  *(*(this + 33) + 288) = 0;
  if (v503)
  {
    v317 = 0;
    if (v515)
    {
      v318 = 0x2000000;
    }

    else
    {
      v318 = 0;
    }

    v319 = v530;
    v320 = v529;
    v321 = v528;
    do
    {
      v322 = *v319;
      if (!*v319 || !*(v322 + 48))
      {
        return 0xFFFFFFFFLL;
      }

      v323 = *(v322 + 44);
      if ((*(**(this + 32) + 184))(*(this + 32)))
      {
        v324 = *(this + 32);
        if (v324[689])
        {
          *buf = 0;
          if (((*(*v324 + 312))(v324, v323, buf) & 1) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v517 = 0;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
            v254 = &v517;
            v255 = 2;
            goto LABEL_276;
          }

          *(v322 + 48) = *buf + 8;
        }
      }

      *(*(this + 33) + v317 + 288) = 0;
      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFFFFFFF | ((v503 << 28) - 0x10000000);
      *(*(this + 33) + v317 + 288) &= 0xF3FFFFFF;
      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFDFFFFFF | v318;
      *(*(this + 33) + v317 + 288) |= 0x1000000u;
      v325 = v504 - *(v322 + 12);
      v326 = v325 & 0x1FFFF;
      if (v325 < -32768)
      {
        v326 = 98304;
      }

      if (v325 <= 0x8000)
      {
        v327 = v326;
      }

      else
      {
        v327 = 0x8000;
      }

      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFFFE0000 | v327;
      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFFFDFFFF | ((*(v322 + 20) == 2) << 17);
      *(*(this + 33) + v317 + 320) = 0;
      *(*(this + 33) + v317 + 556) = 0;
      *(*(this + 33) + v317 + 352) = 0;
      *(*(this + 33) + v317 + 588) = 0;
      *(*(this + 33) + v317 + 384) = 0;
      *(*(this + 33) + v317 + 620) = 0;
      *(*(this + 33) + v317 + 416) = 0;
      *(*(this + 33) + v317 + 652) = 0;
      v328 = *(this + 33);
      if (*(*(this + 32) + 2648) == 1)
      {
        v329 = v317 + 352;
        v330 = v328 + v317;
        v331 = *(v330 + 352);
        *(v330 + 352) = 0;
        *(*(this + 33) + v317 + 352) ^= 0xFFFFFF80;
        v332 = *(this + 33) + v317;
        v333 = *(v332 + 352);
        *(v332 + 352) = v331;
        v334 = *(v322 + 48);
        v335 = *v334;
        if (v505)
        {
          if (v335 || *(v334 + 38) || *(v334 + 39))
          {
            result = CAHDec::addToPatcherList(this, v334, v329, *(v334 + 15), 0xFFFFFFFFLL, 7, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v336 = *(this + 33) + v317;
          v337 = *(v336 + 588);
          *(v336 + 588) = 0;
          *(*(this + 33) + v317 + 588) ^= 0x3FFu;
          v338 = *(this + 33) + v317;
          v339 = *(v338 + 588);
          *(v338 + 588) = v337;
          v340 = *(v322 + 48);
          if (*v340 || *(v340 + 152) || *(v340 + 156))
          {
            result = CAHDec::addToPatcherList(this, v340, v317 + 588, *(v340 + 60), 0x3FFFFFFFFFFLL, 32, v339, 4);
            if (result)
            {
              return result;
            }
          }

          v341 = *(this + 33) + v317;
          v342 = *(v341 + 320);
          *(v341 + 320) = 0;
          *(*(this + 33) + v317 + 320) ^= 0xFFFFFF80;
          v343 = *(this + 33) + v317;
          v344 = *(v343 + 320);
          *(v343 + 320) = v342;
          v345 = *(v322 + 48);
          if (*v345 || *(v345 + 152) || *(v345 + 156))
          {
            result = CAHDec::addToPatcherList(this, v345, v317 + 320, *(v345 + 72), 0xFFFFFFFFLL, 7, v344, 4);
            if (result)
            {
              return result;
            }
          }

          v346 = *(this + 33) + v317;
          v347 = *(v346 + 556);
          *(v346 + 556) = 0;
          *(*(this + 33) + v317 + 556) ^= 0x3FFu;
          v348 = *(this + 33) + v317;
          v349 = *(v348 + 556);
          *(v348 + 556) = v347;
          v350 = *(v322 + 48);
          if (*v350 || *(v350 + 152) || *(v350 + 156))
          {
            result = CAHDec::addToPatcherList(this, v350, v317 + 556, *(v350 + 72), 0x3FFFFFFFFFFLL, 32, v349, 4);
            if (result)
            {
              return result;
            }
          }

          if (v507)
          {
            v351 = *(this + 33) + v317;
            v352 = *(v351 + 416);
            *(v351 + 416) = 0;
            *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
            v353 = *(this + 33) + v317;
            v354 = *(v353 + 416);
            *(v353 + 416) = v352;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 416, *(v502 + 56), 0xFFFFFFFFLL, 7, v354, 4);
              if (result)
              {
                return result;
              }
            }

            v355 = *(this + 33) + v317;
            v356 = *(v355 + 652);
            *(v355 + 652) = 0;
            *(*(this + 33) + v317 + 652) ^= 0x3FFu;
            v357 = *(this + 33) + v317;
            v358 = *(v357 + 652);
            *(v357 + 652) = v356;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 652, *(v502 + 56), 0x3FFFFFFFFFFLL, 32, v358, 4);
              if (result)
              {
                return result;
              }
            }

            v359 = *(this + 33) + v317;
            v360 = *(v359 + 384);
            *(v359 + 384) = 0;
            *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
            v361 = *(this + 33) + v317;
            v362 = *(v361 + 384);
            *(v361 + 384) = v360;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 384, *(v502 + 68), 0xFFFFFFFFLL, 7, v362, 4);
              if (result)
              {
                return result;
              }
            }

            v363 = *(this + 33) + v317;
            v364 = *(v363 + 620);
            *(v363 + 620) = 0;
            *(*(this + 33) + v317 + 620) ^= 0x3FFu;
            v365 = *(this + 33) + v317;
            v366 = *(v365 + 620);
            *(v365 + 620) = v364;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              v367 = v317 + 620;
              v368 = v502;
LABEL_462:
              v405 = *(v368 + 68);
LABEL_463:
              result = CAHDec::addToPatcherList(this, v368, v367, v405, 0x3FFFFFFFFFFLL, 32, v366, 4);
              if (result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v335 || *(v334 + 38) || *(v334 + 39))
          {
            result = CAHDec::addToPatcherList(this, v334, v329, *(v334 + 13), 0xFFFFFFFFLL, 7, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v406 = *(this + 33) + v317;
          v407 = *(v406 + 416);
          *(v406 + 416) = 0;
          *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
          v408 = *(this + 33) + v317;
          v409 = *(v408 + 416);
          *(v408 + 416) = v407;
          v410 = *(v322 + 48);
          if (*v410 || *(v410 + 152) || *(v410 + 156))
          {
            result = CAHDec::addToPatcherList(this, v410, v317 + 416, *(v410 + 56), 0xFFFFFFFFLL, 7, v409, 4);
            if (result)
            {
              return result;
            }
          }

          v411 = *(this + 33) + v317;
          v412 = *(v411 + 320);
          *(v411 + 320) = 0;
          *(*(this + 33) + v317 + 320) ^= 0xFFFFFF80;
          v413 = *(this + 33) + v317;
          v414 = *(v413 + 320);
          *(v413 + 320) = v412;
          v415 = *(v322 + 48);
          if (*v415 || *(v415 + 152) || *(v415 + 156))
          {
            result = CAHDec::addToPatcherList(this, v415, v317 + 320, *(v415 + 64), 0xFFFFFFFFLL, 7, v414, 4);
            if (result)
            {
              return result;
            }
          }

          v416 = *(this + 33) + v317;
          v417 = *(v416 + 384);
          *(v416 + 384) = 0;
          *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
          v418 = *(this + 33) + v317;
          v419 = *(v418 + 384);
          *(v418 + 384) = v417;
          v420 = *(v322 + 48);
          if (*v420 || *(v420 + 152) || *(v420 + 156))
          {
            result = CAHDec::addToPatcherList(this, v420, v317 + 384, *(v420 + 68), 0xFFFFFFFFLL, 7, v419, 4);
            if (result)
            {
              return result;
            }
          }

          v421 = *(this + 33) + v317;
          v422 = *(v421 + 588);
          *(v421 + 588) = 0;
          *(*(this + 33) + v317 + 588) ^= 0x3FFu;
          v423 = *(this + 33) + v317;
          v424 = *(v423 + 588);
          *(v423 + 588) = v422;
          v425 = *(v322 + 48);
          if (*v425 || *(v425 + 152) || *(v425 + 156))
          {
            result = CAHDec::addToPatcherList(this, v425, v317 + 588, *(v425 + 52), 0x3FFFFFFFFFFLL, 32, v424, 4);
            if (result)
            {
              return result;
            }
          }

          v426 = *(this + 33) + v317;
          v427 = *(v426 + 652);
          *(v426 + 652) = 0;
          *(*(this + 33) + v317 + 652) ^= 0x3FFu;
          v428 = *(this + 33) + v317;
          v429 = *(v428 + 652);
          *(v428 + 652) = v427;
          v430 = *(v322 + 48);
          if (*v430 || *(v430 + 152) || *(v430 + 156))
          {
            result = CAHDec::addToPatcherList(this, v430, v317 + 652, *(v430 + 56), 0x3FFFFFFFFFFLL, 32, v429, 4);
            if (result)
            {
              return result;
            }
          }

          v431 = *(this + 33) + v317;
          v432 = *(v431 + 556);
          *(v431 + 556) = 0;
          *(*(this + 33) + v317 + 556) ^= 0x3FFu;
          v433 = *(this + 33) + v317;
          v434 = *(v433 + 556);
          *(v433 + 556) = v432;
          v435 = *(v322 + 48);
          if (*v435 || *(v435 + 152) || *(v435 + 156))
          {
            result = CAHDec::addToPatcherList(this, v435, v317 + 556, *(v435 + 64), 0x3FFFFFFFFFFLL, 32, v434, 4);
            if (result)
            {
              return result;
            }
          }

          v436 = *(this + 33) + v317;
          v437 = *(v436 + 620);
          *(v436 + 620) = 0;
          *(*(this + 33) + v317 + 620) ^= 0x3FFu;
          v438 = *(this + 33) + v317;
          v366 = *(v438 + 620);
          *(v438 + 620) = v437;
          v368 = *(v322 + 48);
          if (*v368 || *(v368 + 152) || *(v368 + 156))
          {
            v367 = v317 + 620;
            goto LABEL_462;
          }
        }
      }

      else
      {
        v369 = v328 + v317;
        v370 = *(v369 + 320);
        *(v369 + 320) = 0;
        *(*(this + 33) + v317 + 320) ^= 0xFFFFFF80;
        v371 = *(this + 33) + v317;
        v372 = *(v371 + 320);
        *(v371 + 320) = v370;
        v373 = *v320;
        if (**v320 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v320, v317 + 320, 0, 0xFFFFFFFFLL, 7, v372, 4);
          if (result)
          {
            return result;
          }
        }

        v374 = *(this + 33) + v317;
        v375 = *(v374 + 556);
        *(v374 + 556) = 0;
        *(*(this + 33) + v317 + 556) ^= 0x3FFu;
        v376 = *(this + 33) + v317;
        v377 = *(v376 + 556);
        *(v376 + 556) = v375;
        if (*v373 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, v373, v317 + 556, 0, 0x3FFFFFFFFFFLL, 32, v377, 4);
          if (result)
          {
            return result;
          }
        }

        v378 = *(this + 33) + v317;
        v379 = *(v378 + 352);
        *(v378 + 352) = 0;
        *(*(this + 33) + v317 + 352) ^= 0xFFFFFF80;
        v380 = *(this + 33) + v317;
        v381 = *(v380 + 352);
        *(v380 + 352) = v379;
        v382 = *(v322 + 48);
        if (*v382 || *(v382 + 152) || *(v382 + 156))
        {
          result = CAHDec::addToPatcherList(this, v382, v317 + 352, *(v382 + 52), 0xFFFFFFFFLL, 7, v381, 4);
          if (result)
          {
            return result;
          }
        }

        v383 = *(this + 33) + v317;
        v384 = *(v383 + 588);
        *(v383 + 588) = 0;
        *(*(this + 33) + v317 + 588) ^= 0x3FFu;
        v385 = *(this + 33) + v317;
        v386 = *(v385 + 588);
        *(v385 + 588) = v384;
        v387 = *(v322 + 48);
        if (*v387 || *(v387 + 152) || *(v387 + 156))
        {
          result = CAHDec::addToPatcherList(this, v387, v317 + 588, *(v387 + 52), 0x3FFFFFFFFFFLL, 32, v386, 4);
          if (result)
          {
            return result;
          }
        }

        v388 = *(this + 33) + v317;
        v389 = *(v388 + 384);
        *(v388 + 384) = 0;
        *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
        v390 = *(this + 33) + v317;
        v391 = *(v390 + 384);
        *(v390 + 384) = v389;
        v392 = *v321;
        if (**v321 || *(v392 + 152) || *(v392 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v321, v317 + 384, 0, 0xFFFFFFFFLL, 7, v391, 4);
          if (result)
          {
            return result;
          }
        }

        v393 = *(this + 33) + v317;
        v394 = *(v393 + 620);
        *(v393 + 620) = 0;
        *(*(this + 33) + v317 + 620) ^= 0x3FFu;
        v395 = *(this + 33) + v317;
        v396 = *(v395 + 620);
        *(v395 + 620) = v394;
        if (*v392 || *(v392 + 152) || *(v392 + 156))
        {
          result = CAHDec::addToPatcherList(this, v392, v317 + 620, 0, 0x3FFFFFFFFFFLL, 32, v396, 4);
          if (result)
          {
            return result;
          }
        }

        v397 = *(this + 33) + v317;
        v398 = *(v397 + 416);
        *(v397 + 416) = 0;
        *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
        v399 = *(this + 33) + v317;
        v400 = *(v399 + 416);
        *(v399 + 416) = v398;
        v401 = *(v322 + 48);
        if (*v401 || *(v401 + 152) || *(v401 + 156))
        {
          result = CAHDec::addToPatcherList(this, v401, v317 + 416, *(v401 + 56), 0xFFFFFFFFLL, 7, v400, 4);
          if (result)
          {
            return result;
          }
        }

        v402 = *(this + 33) + v317;
        v403 = *(v402 + 652);
        *(v402 + 652) = 0;
        *(*(this + 33) + v317 + 652) ^= 0x3FFu;
        v404 = *(this + 33) + v317;
        v366 = *(v404 + 652);
        *(v404 + 652) = v403;
        v368 = *(v322 + 48);
        if (*v368 || *(v368 + 152) || *(v368 + 156))
        {
          v367 = v317 + 652;
          v405 = *(v368 + 56);
          goto LABEL_463;
        }
      }

      v317 += 4;
      ++v319;
      ++v320;
      ++v321;
    }

    while (4 * v503 != v317);
  }

LABEL_465:
  *(*(this + 33) + 448) = 0;
  *(*(this + 33) + 452) = 0;
  *(*(this + 33) + 456) = 0;
  *(*(this + 33) + 460) = 0;
  if (!v516)
  {
    goto LABEL_527;
  }

  v439 = *(this + 32);
  if (v510 && v506 == 2)
  {
    v440 = *(*(v439 + 8248) + 60);
    v441 = *(this + 33);
    v442 = *(v441 + 448);
    *(v441 + 448) = 0;
    *(*(this + 33) + 448) ^= 0xFFFFFFC0;
    v443 = *(this + 33);
    v444 = *(v443 + 448);
    *(v443 + 448) = v442;
    v445 = *(*(this + 32) + 8248);
    if (!*v445 && !*(v445 + 152) && !*(v445 + 156) || (result = CAHDec::addToPatcherList(this, v445, 448, v440, 0xFFFFFFFFLL, 6, v444, 4), !result))
    {
      if ((v446 = *(this + 33), v447 = *(v446 + 684), *(v446 + 684) = 0, *(*(this + 33) + 684) ^= 0x3FFu, v448 = *(this + 33), v449 = *(v448 + 684), *(v448 + 684) = v447, v450 = *(*(this + 32) + 8248), !*v450) && !*(v450 + 152) && !*(v450 + 156) || (result = CAHDec::addToPatcherList(this, v450, 684, v440, 0x3FFFFFFFFFFLL, 32, v449, 4), !result))
      {
        if (!v507 || ((v451 = *(v502 + 56), v452 = *(this + 33), v453 = *(v452 + 452), *(v452 + 452) = 0, *(*(this + 33) + 452) ^= 0xFFFFFFC0, v454 = *(this + 33), v455 = *(v454 + 452), *(v454 + 452) = v453, !*v502) && !*(v502 + 152) && !*(v502 + 156) || (result = CAHDec::addToPatcherList(this, v502, 452, v451, 0xFFFFFFFFLL, 6, v455, 4), !result)) && ((v456 = *(this + 33), v457 = *(v456 + 688), *(v456 + 688) = 0, *(*(this + 33) + 688) ^= 0x3FFu, v458 = *(this + 33), v459 = *(v458 + 688), *(v458 + 688) = v457, !*v502) && !*(v502 + 152) && !*(v502 + 156) || (result = CAHDec::addToPatcherList(this, v502, 688, v451, 0x3FFFFFFFFFFLL, 32, v459, 4), !result)))
        {
          if (v508)
          {
            *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
            if (!v507)
            {
              goto LABEL_527;
            }

            v460 = v502;
            goto LABEL_488;
          }

          if (CAHDecTansyHevc::getSWRStride(this, *(v512 + 160) - *(v512 + 156) + 1, v514[909], v514[910], v514[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(this + 3000) >> 6) & 0xFFF) << 6);
          if (!v507)
          {
LABEL_527:
            v490 = *(this + 32);
            if (*(v490 + 2360) == 1)
            {
              v491 = *(this + 33);
              *(v491 + 788) = *(v491 + 788) & 0xFFFFFFFE | *(v490 + 2508) & 1;
              if (*(v490 + 2508))
              {
                *(v491 + 2788) = 0x10000000;
                *(v491 + 2792) = *(v490 + 2368);
                *(v491 + 2800) = 0;
                *(v491 + 2796) = 0;
                *(v491 + 2808) = *(v490 + 2372);
                v492 = *(v490 + 2404);
                *(v491 + 2824) = *(v490 + 2388);
                *(v491 + 2840) = v492;
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFFD | (2 * (*(v490 + 2512) & 1));
              if (*(v490 + 2512))
              {
                *(v491 + 2856) = 0;
                if (!*(v490 + 2424))
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315138;
                  *&buf[4] = "populatePictureRegisters";
                  v42 = MEMORY[0x277D86220];
                  v43 = "AppleAVD: %s(): H13A descrambler is not supported\n";
LABEL_549:
                  v254 = buf;
                  v255 = 12;
                  goto LABEL_276;
                }

                *(v490 + 2640) = 0;
                v493 = *(v491 + 2856) & 0xF7FFFFF | ((*(v490 + 2420) & 1) << 23) | 0x20000000;
                *(v491 + 2856) = v493;
                *(v491 + 2856) = v493 & 0xFFC00000 | (*(v490 + 2364) == 0);
                v494 = *(v490 + 2428);
                v495 = *(v490 + 2460);
                *(v491 + 2876) = *(v490 + 2444);
                *(v491 + 2892) = v495;
                *(v491 + 2860) = v494;
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFFB | (4 * (*(v490 + 2516) & 1));
              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFF7 | (8 * (*(v490 + 2520) & 1));
              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFEF | (16 * (*(v490 + 2524) & 1));
              *(v491 + 3016) = 0;
              if (*(v490 + 2476) == 2)
              {
                v496 = 805306368;
              }

              else
              {
                v496 = 813694976;
              }

              *(v491 + 3016) = v496;
              memcpy((v491 + 3020), (v490 + 2480), 4 * *(v490 + 2476));
              if (*(v490 + 2516))
              {
                *(v490 + 2516) = 0;
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFDF | (32 * (*(v490 + 2632) & 1));
              if (*(v490 + 2632))
              {
                *(v491 + 2908) = 0x80000000;
                v497 = ((*(v490 + 2528) & 1) << 27) | 0x80000000;
                *(v491 + 2908) = v497;
                *(v491 + 2908) = v497 | (((2 * *(v490 + 2528)) & 4 | (*(v490 + 2528) >> 1) & 2 | (*(v490 + 2528) >> 3) & 1) << 24);
                v498 = *(v490 + 2532);
                v499 = *(v490 + 2548);
                *(v491 + 2944) = *(v490 + 2564);
                *(v491 + 2928) = v499;
                *(v491 + 2912) = v498;
                *(v491 + 2960) = *(v490 + 2580);
                *(v491 + 2968) = *(v490 + 2588);
                v500 = *(v490 + 2528);
                if ((v500 & 6) != 0 && (v500 & 8) == 0)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315138;
                  *&buf[4] = "populatePictureRegisters";
                  v42 = MEMORY[0x277D86220];
                  v43 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
                  goto LABEL_549;
                }

                *(v491 + 2976) = *(v490 + 2596);
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFBF | ((*(v490 + 2636) & 1) << 6);
              if (*(v490 + 2636))
              {
                result = 0;
                *(v491 + 2992) = -1879048192;
                *(v491 + 2992) = ((*(v490 + 2612) & 1) << 23) | 0x90000000;
                *(v491 + 2996) = *(v490 + 2616);
                *(v490 + 2640) = 1;
                return result;
              }
            }

            return 0;
          }

          goto LABEL_525;
        }
      }
    }

    return result;
  }

  v462 = *(v439 + 2892);
  if (*(v439 + 2892))
  {
    v463 = *(v439 + 2904);
    v462 = *(v439 + 2908);
  }

  else
  {
    v463 = 0;
  }

  v464 = *(v439 + 8248);
  v465 = *(v464 + 52);
  v466 = v465 + v463;
  if (__CFADD__(v465, v463))
  {
    v467 = 1;
LABEL_498:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    *&buf[12] = 1024;
    *&buf[14] = v467;
    v42 = MEMORY[0x277D86220];
    v43 = "AppleAVD: %s(): failKind = %d";
    v254 = buf;
    v255 = 18;
    goto LABEL_276;
  }

  v468 = *(v464 + 56);
  v469 = v468 + v462;
  if (__CFADD__(v468, v462))
  {
    v467 = 2;
    goto LABEL_498;
  }

  v470 = *(this + 33);
  v471 = *(v470 + 448);
  *(v470 + 448) = 0;
  *(*(this + 33) + 448) ^= 0xFFFFFFC0;
  v472 = *(this + 33);
  v473 = *(v472 + 448);
  *(v472 + 448) = v471;
  v474 = *(*(this + 32) + 8248);
  if (!*v474 && !*(v474 + 152) && !*(v474 + 156) || (result = CAHDec::addToPatcherList(this, v474, 448, v466, 0xFFFFFFFFLL, 6, v473, 4), !result))
  {
    if ((v475 = *(this + 33), v476 = *(v475 + 684), *(v475 + 684) = 0, *(*(this + 33) + 684) ^= 0x3FFu, v477 = *(this + 33), v478 = *(v477 + 684), *(v477 + 684) = v476, v479 = *(*(this + 32) + 8248), !*v479) && !*(v479 + 152) && !*(v479 + 156) || (result = CAHDec::addToPatcherList(this, v479, 684, v466, 0x3FFFFFFFFFFLL, 32, v478, 4), !result))
    {
      if ((v480 = *(this + 33), v481 = *(v480 + 452), *(v480 + 452) = 0, *(*(this + 33) + 452) ^= 0xFFFFFFC0, v482 = *(this + 33), v483 = *(v482 + 452), *(v482 + 452) = v481, v484 = *(*(this + 32) + 8248), !*v484) && !*(v484 + 152) && !*(v484 + 156) || (result = CAHDec::addToPatcherList(this, v484, 452, v469, 0xFFFFFFFFLL, 6, v483, 4), !result))
      {
        if ((v485 = *(this + 33), v486 = *(v485 + 688), *(v485 + 688) = 0, *(*(this + 33) + 688) ^= 0x3FFu, v487 = *(this + 33), v488 = *(v487 + 688), *(v487 + 688) = v486, v489 = *(*(this + 32) + 8248), !*v489) && !*(v489 + 152) && !*(v489 + 156) || (result = CAHDec::addToPatcherList(this, v489, 688, v469, 0x3FFFFFFFFFFLL, 32, v488, 4), !result))
        {
          if (v508)
          {
            *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
            v460 = *(*(this + 32) + 8248);
LABEL_488:
            v461 = (v460 + 80);
LABEL_526:
            *(*(this + 33) + 460) = *(*(this + 33) + 460) & 0xFFF8003F | (((*v461 >> 6) & 0x1FFF) << 6);
            goto LABEL_527;
          }

          if (CAHDecTansyHevc::getSWRStride(this, *(v512 + 160) - *(v512 + 156) + 1, v514[909], v514[910], v514[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(this + 3000) >> 6) & 0xFFF) << 6);
LABEL_525:
          v461 = (this + 12004);
          goto LABEL_526;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecTansyHevc::getSWRStride(CAHDecTansyHevc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1500) = 0;
  if (!v5)
  {
    return v5;
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

  if (v8 <= 3)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        v5 = 0;
        *(this + 3000) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 3001) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 3000) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 3000) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 3000) = (2 * a2 + 63) & 0xFFFFFFC0;
    v10 = 4 * a2;
    goto LABEL_19;
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "getSWRStride";
    v14 = 1024;
    v15 = v8 + 8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bad swr bit depth %d\n", &v12, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecTansyHevc::getTileIdxAbove(CAHDecTansyHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 692);
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

uint64_t CAHDecTansyHevc::populateAvdWork(CAHDecTansyHevc *this, unsigned int a2)
{
  v128[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8168);
  v98 = *(v3 + 8184);
  v7 = *(v3 + 8924);
  v8 = *(v3 + 2960);
  v9 = *(v3 + 2964);
  v10 = *(v3 + 8176) + 9856 * *(v3 + 8212);
  v128[0] = 0;
  v128[1] = 0;
  v127 = 0;
  v11 = v7 >> 28;
  v99 = v6 + 23176 * v5;
  if (v7)
  {
    if (*(v10 + 53))
    {
      v13 = *(v99 + 22888) > v11 + 1;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13 && v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  v108 = *(v4 + 694) * *(v4 + 692);
  if ((v7 & 2) != 0 && *(v10 + 52))
  {
    if (*(v10 + 53) | v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v108 > v11 + 1;
    }

    v16 = v15;
    v118 = v16;
  }

  else
  {
    v118 = 0;
  }

  v101 = *(v99 + 22888);
  if ((v7 & 0x20) != 0 && !*(v10 + 53))
  {
    if (*(v10 + 52) | v9)
    {
      v71 = 0;
    }

    else
    {
      v71 = v8 > v11 + 1;
    }

    v72 = v71;
    v110 = v72;
  }

  else
  {
    v110 = 0;
  }

  v17 = 0;
  v121 = *(v99 + 22880);
  v18 = v11 + 2;
  v113 = v12;
  v19 = v12 | v118;
  if (!(((v7 & 4) == 0) | (v12 | v118) & 1) && (v110 & 1) == 0)
  {
    v17 = *(*(this + *(this + 13) + 34) + 16) & (v11 + 1);
  }

  v111 = v10;
  v123 = 0;
  v124 = 0;
  memset_pattern16(__b, &unk_27775BC00, 8uLL);
  v20 = v4 + 223836;
  v91 = v19 | v110;
  if ((v19 | v110))
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  v22 = v17 + v21;
  v107 = v21;
  v23 = 48 * (0x1000 / v21);
  v95 = v17;
  v24 = v17;
  v25 = v17;
  do
  {
    v128[v25] = v20 + (v25 - v17) * v23;
    ++v25;
  }

  while (v25 < v22);
  v93 = v23;
  v94 = v22;
  v116 = 0;
  v26 = 0;
  v112 = 0;
  v122 = 0;
  v27 = 0;
  v117 = 0;
  v114 = 0;
  v104 = 0;
  v100 = 0;
  v28 = v128[v24];
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
  LOBYTE(v30) = v113;
  if (v113)
  {
    v31 = 12;
  }

  else
  {
    v31 = 4;
  }

  v103 = v31;
  v92 = v24;
  v97 = &__b[v24];
  v32 = 0;
  v106 = v4 + 3384;
  v33 = v95;
  v105 = v20;
  do
  {
    v34 = v98 + 2360 * v32;
    if (!((*(v111 + 52) != 0) | v30 & 1))
    {
      v37 = 1;
LABEL_43:
      v38 = 0;
      v102 = 0;
      v109 = 368 * v32;
      v115 = v37;
      v119 = v32;
      v120 = v98 + 2360 * v32;
      while (1)
      {
        if (!(v38 | v32))
        {
          *(v28 + 4) = 0;
          *(v28 + 6) = v33;
          *(v28 + 8) = 0;
          *(v28 + 12) = 0;
          v112 = *(v106 + v109);
          if (!(*(**(this + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v42 = *(v34 + 36);
          *(v28 + 32) = v42;
          *(v28 + 36) = v42;
          HIDWORD(v122) = 0;
          *(v28 + 44) = (*(*this + 80))(this, v26, v121);
          v43 = 271;
          v32 = v119;
          goto LABEL_146;
        }

        if (!v38)
        {
          break;
        }

        v30 = *(*(v34 + 1904) + 4 * v38 - 4) + 1;
        if (*(v111 + 52))
        {
          if (*(v111 + 53))
          {
            v39 = *(v99 + 22880);
            v40 = (v39 + v122) / v39;
            v30 += v102;
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 738))
            {
              LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
              v102 = 0;
              v27 = v103;
            }

            else
            {
              LODWORD(v122) = v100 + v40 * v39;
              if (!v113)
              {
                v102 = v30;
                LOBYTE(v30) = 0;
                v32 = v119;
                goto LABEL_147;
              }

              v102 = 0;
              v41 = __b[v33];
              __b[v33] = 0;
              if (v41)
              {
                v27 = 72;
              }

              else
              {
                v27 = 8;
              }
            }
          }

          else
          {
            LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
            v27 = 4;
          }
        }

        else if (v113)
        {
          LODWORD(v122) = (*(v99 + 22880) + v122) / *(v99 + 22880) * *(v99 + 22880);
          v27 = 8;
        }

        v52 = 48 * v29;
        v53 = v124;
        if (*v124 || *(v124 + 152) || *(v124 + 156))
        {
          v54 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 2029;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223858, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
          if (result)
          {
            return result;
          }

          v53 = v124;
          if (*v124)
          {
            goto LABEL_92;
          }
        }

        if (*(v53 + 152) || *(v53 + 156))
        {
LABEL_92:
          v55 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 2030;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223860, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
          if (result)
          {
            return result;
          }
        }

        *(v28 + 28) = v30;
        HIDWORD(v122) += v30;
        v51 = v107;
        v20 = v105;
        v30 = v113;
LABEL_97:
        v56 = v26 + 1;
        if (v26 + 1 < v108)
        {
          v57 = (*(*this + 72))(this, (v26 + 1), v121);
          v58 = v103;
          if (v122 != v57)
          {
            v58 = 0;
          }

          v27 |= v58;
        }

        *(v28 + 16) = v27;
        if (v116 == a2 - 1)
        {
          *(v28 + 18) |= 2u;
        }

        if (v26 == v108 - 1)
        {
          *(v28 + 18) |= 4u;
        }

        v59 = v118;
        if (v26 != v108 - 2)
        {
          v59 = 0;
        }

        if (v59 == 1)
        {
          *(v28 + 18) |= 4u;
        }

        if (v30 && ((v60 = *(v28 + 10), v101 > 1) ? (v61 = v101 - 2 == v60) : (v61 = 0), !v61 ? (v62 = 0) : (v62 = 1), v101 - 1 == v60 || v62))
        {
          *(v28 + 18) |= 8u;
          if ((v27 & 4) != 0)
          {
LABEL_121:
            v63 = v117;
            if (*(v111 + 52) && *(v111 + 53))
            {
              v64 = *(this + 33);
              v65 = *(v64 + 692);
              LODWORD(v104) = (v33 - *(v64 + 738 + 2 * (v56 / v65)) + *(v64 + 738 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 696);
              memset_pattern16(v97, &unk_27775BC00, 4 * (v107 - 1) + 4);
            }

            v26 = (v26 + 1);
            goto LABEL_125;
          }
        }

        else if ((v27 & 4) != 0)
        {
          goto LABEL_121;
        }

        v63 = v117;
LABEL_125:
        if ((v27 & 0x44) != 0 && v63 <= (*(*this + 88))(this, v26))
        {
          v27 |= 0x20u;
        }

        if (!v38)
        {
          v66 = v114;
          if (!*(v120 + 32))
          {
            v66 = v122;
          }

          v114 = v66;
          if (!*(v120 + 32))
          {
            v63 = v26;
          }
        }

        if ((v27 & 0x44) != 0)
        {
          v67 = *(*(this + 33) + 692);
          if (v63 / v67 + 1 == v26 / v67)
          {
            v27 |= 0x10u;
          }
        }

        ++*(&v128[-1] + v33);
        v128[v33] += 48;
        v68 = v122 / v121;
        if (v30)
        {
          v33 = (v104 + v68 - HIDWORD(v104)) % v51;
        }

        if (v118)
        {
          v33 = v26 % v51;
        }

        v69 = v110 ^ 1;
        if (v38)
        {
          v69 = 1;
        }

        v117 = v63;
        if ((v69 & 1) == 0 && !*(v120 + 32))
        {
          v33 = (v33 + 1) % v51;
        }

        v28 = v128[v33];
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
        *(v28 + 4) = *(&v128[-1] + v33);
        *(v28 + 6) = v33;
        *(v28 + 8) = v119;
        *(v28 + 10) = v68;
        *(v28 + 12) = v26;
        *(v28 + 32) = v122;
        *(v28 + 36) = v114;
        v70 = (*(*this + 80))(this, v26, v121);
        v32 = v119;
        *(v28 + 44) = v70;
        v43 = v27;
        v116 = v119;
        v34 = v120;
LABEL_146:
        *(v28 + 14) = v43;
LABEL_147:
        if (v115 == ++v38)
        {
          goto LABEL_40;
        }
      }

      v44 = 48 * v29;
      v45 = v124;
      if (*v124 || *(v124 + 152) || *(v124 + 156))
      {
        v46 = v123;
        v47 = HIDWORD(v122);
        if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "populateAvdWork";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = 1953;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223858, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v45 = v124;
        if (*v124)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v47 = HIDWORD(v122);
      }

      if (!*(v45 + 152) && !*(v45 + 156))
      {
LABEL_69:
        *(v28 + 28) = v112 - v47;
        v50 = *(v106 + v109);
        if (!(*(**(this + 32) + 440))(*(this + 32), v119, &v124, &v123))
        {
          return 0xFFFFFFFFLL;
        }

        v112 = v50;
        if (*(v120 + 32))
        {
          v27 = 2;
        }

        else
        {
          v27 = 258;
        }

        v30 = v113;
        LODWORD(v122) = *(v120 + 36);
        if (v113)
        {
          v51 = v107;
          v20 = v105;
          if (*(v120 + 36) % v121 == v100)
          {
            HIDWORD(v122) = 0;
            if (__b[v33])
            {
              v27 |= 0x48u;
              __b[v33] = 0;
            }

            else
            {
              v27 |= 8u;
            }
          }

          else
          {
            HIDWORD(v122) = 0;
          }
        }

        else
        {
          HIDWORD(v122) = 0;
          v51 = v107;
          v20 = v105;
        }

        goto LABEL_97;
      }

LABEL_65:
      v49 = v123;
      if ((v123 + v47) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1954;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223860, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_69;
    }

    v35 = *(v34 + 1896);
    v36 = __CFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      goto LABEL_43;
    }

LABEL_40:
    ++v32;
  }

  while (v32 != a2);
  v73 = v124;
  v74 = 48 * v29;
  if (!*v124 && !*(v124 + 152) && !*(v124 + 156))
  {
    v76 = HIDWORD(v122);
    v77 = v107;
LABEL_172:
    if (*(v73 + 152) || *(v73 + 156))
    {
LABEL_174:
      v78 = v74 + 223858;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2125;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v79 = v123;
      }

      result = CAHDec::addToPatcherList(this, v73, v78 + 2, v76 + v79, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    *(v28 + 28) = v112 - v76;
    *(v28 + 16) = 917519;
    ++*(&v128[-1] + v33);
    v80 = v92;
    if (v110)
    {
      v81 = 0;
      buf[0] = 0;
      buf[1] = 0;
      do
      {
        buf[v81] = v20 + v81 * v93;
        ++v81;
      }

      while (v77 != v81);
      v82 = buf[0];
      v83 = *(buf[0] + 8) + 1;
      if (v83 >= a2)
      {
        v84 = 0;
        v87 = buf;
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v86 = v91 & 1;
        v87 = buf;
        do
        {
          if (*(v82 + 4) + 1 == *(&v128[-1] + v84))
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
          }

          else if (v83 == *(v82 + 56))
          {
            *v87 = v82 + 48;
            v84 = v85;
            v86 = v85;
          }

          else
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
            *v87 = v82 + 48;
          }

          v85 = v86;
          v86 = (v86 + 1) % v77;
          v87 = &buf[v84];
          v82 = *v87;
          v83 = *(*v87 + 8) + 1;
        }

        while (v83 < a2);
      }

      v88 = *(&v128[-1] + v84);
      if (*(v82 + 4) + 1 != v88)
      {
        do
        {
          v89 = *(v82 + 52);
          v82 += 48;
        }

        while (v89 + 1 != v88);
        *v87 = v82;
      }

      *(v82 + 40) = *(v82 + 44) + 1;
    }

    v90 = *(this + 33) + 36;
    do
    {
      result = 0;
      *(v90 + 2 * v80 - 8) = *(&v128[-1] + v80);
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223836;
      ++v80;
    }

    while (v80 < v94);
    return result;
  }

  v75 = v123;
  v76 = HIDWORD(v122);
  v77 = v107;
  if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 2124;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223858, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
  if (!result)
  {
    v73 = v124;
    if (!*v124)
    {
      goto LABEL_172;
    }

    goto LABEL_174;
  }

  return result;
}