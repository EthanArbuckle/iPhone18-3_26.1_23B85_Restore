uint64_t *CAHDecHibiscusLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[432])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 432);
    v2[432] = 0;
  }

  if (v2[454])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 454);
    v2[454] = 0;
  }

  if (v2[410])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 410);
    v2[410] = 0;
  }

  if (v2[476])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 476);
    v2[476] = 0;
  }

  if (v2[498])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 498);
    v2[498] = 0;
  }

  if (v2[520])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 520);
    v2[520] = 0;
  }

  if (v2[542])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 542);
    v2[542] = 0;
  }

  return this;
}

uint64_t CAHDecHibiscusLgh::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 4528) = a2;
  return this;
}

CAHDec *createViolaHevcDecoder(void *a1)
{
  v2 = operator new(0x2E38uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288665B50;
    *(v3 + 32) = a1;
    *(v3 + 114) = 396516;
    *(v3 + 2) = 2692;
    *(v3 + 1) = xmmword_27775C010;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2C00uLL);
  }

  return v3;
}

void CAHDecViolaHevc::~CAHDecViolaHevc(CAHDecViolaHevc *this)
{
  *this = &unk_288665B50;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecViolaHevc::~CAHDecViolaHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecViolaHevc::init(CAHDecViolaHevc *this)
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

uint64_t CAHDecViolaHevc::initPicture(CAHDecViolaHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 396516;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x60CE4uLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 2955) = 0;
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

uint64_t CAHDecViolaHevc::populateSlices(CAHDecViolaHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2692;
    v5 = a2;
    do
    {
      CAHDecViolaHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 356;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecViolaHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 348) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 348) = v11;
  *(a2 + 348) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
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
  if (*(v7 + 44) > 1u || !*(v7 + 2344) || *(a1 + 11820) || ((*(**(a1 + 256) + 352))(*(a1 + 256), a3), v27 = *(a1 + 256), *(v27 + 8920)) || (*(a1 + 11820) = 1, *(a2 + 4) |= 0x40000u, !*(v27 + 8744)) && !*(v27 + 8896) && !*(v27 + 8900) || (result = CAHDec::addToPatcherList(a1, (v27 + 8744), 356 * a3 + 3028, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4), !result))
  {
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
    v85 = v84[626];
    if (v84[590] == 1)
    {
      v93 = 0;
      v94 = 0;
      if ((*(*v84 + 440))(v84, a3, &v94, &v93))
      {
        v86 = v94;
        if (*v94 || *(v94 + 152) || *(v94 + 156))
        {
          v87 = 356 * a3;
          v88 = v93;
          if (HIDWORD(v93) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v96 = "populateSliceRegisters";
            v97 = 1024;
            v98 = 1510;
            v89 = MEMORY[0x277D86220];
LABEL_106:
            _os_log_impl(&dword_277606000, v89, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v88 = v93;
            goto LABEL_107;
          }

          goto LABEL_107;
        }

        goto LABEL_108;
      }
    }

    else
    {
      v93 = 0;
      v94 = 0;
      if ((*(*v84 + 440))(v84, a3, &v94, &v93))
      {
        v86 = v94;
        if (*v94 || *(v94 + 152) || *(v94 + 156))
        {
          v87 = 356 * a3;
          v88 = v93;
          if (HIDWORD(v93) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v96 = "populateSliceRegisters";
            v97 = 1024;
            v98 = 1522;
            v89 = MEMORY[0x277D86220];
            goto LABEL_106;
          }

LABEL_107:
          result = CAHDec::addToPatcherList(a1, v86, v87 + 3032, v88, 0xFFFFFFFFLL, 0, -1, 4);
          if (result)
          {
            return result;
          }
        }

LABEL_108:
        v91 = *(v7 + 16) - (*(v7 + 2080) >> 3);
        *(a2 + 344) = v91;
        if (v84[590] != 1)
        {
          return 0;
        }

        *(a2 + 352) = 0;
        if (v91 >= *(v7 + 2352))
        {
          v91 = *(v7 + 2352);
        }

        result = 0;
        if (v84[605])
        {
          v92 = v91 | v85 & 0x10000;
        }

        else
        {
          v92 = v85 | (v91 << 22);
        }

        *(a2 + 352) = v92;
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecViolaHevc::updateCommonRegisters(CAHDecViolaHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecViolaHevc::populateSequenceRegisters(CAHDecViolaHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[10] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[10] = v3 & 0x1FFF;
  v1[10] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[11] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[11] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[11] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[11] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[11] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[11] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[11] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[11] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[11] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[11] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[11] = v13;
  v1[11] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[12] = 0;
  if (*(v2 + 10650))
  {
    v1[12] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[12] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[12] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[12] = v16;
    v1[12] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[13] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[13] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[13] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[13] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[13] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[13] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[13] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[13] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[13] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[13] = v25;
  v1[13] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 14), *(this + 33) + 556, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecViolaHevc::populateDARTAddr(CAHDecViolaHevc *this, unsigned int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(this + 32);
  v6 = *(v4 + 136 * a2 + 8600);
  result = (*(*v4 + 184))(v4);
  v8 = *(this + 32);
  v9 = (v8 + 232 * a2);
  v10 = *(this + v9[583] + 34);
  v11 = *(v8 + 8994);
  v12 = *(v8 + 2924);
  v13 = *(v8 + 8280);
  v14 = v10[66];
  v10[66] = v14 & 0xFE000000 | ((v9[541] + v9[532]) >> 7);
  v15 = v10[68];
  v10[68] = v15 & 0xFE000000 | ((v9[542] + v9[532]) >> 7);
  if (*(*(this + 32) + 2648) == 1)
  {
    v16 = v9 + 528;
    v17 = v14 & 0xFE000000;
    v18 = v15 & 0xFE000000;
    v19 = v16[4];
    if (v11)
    {
      v10[66] = v17 | ((v16[15] + v19) >> 7);
      v10[65] = v10[65] & 0xFE000000 | ((v16[18] + v16[4]) >> 7);
      if (!v12)
      {
        goto LABEL_7;
      }

      v10[68] = v18 | ((v13[14] + v13[4]) >> 7);
      v16 = v13;
    }

    else
    {
      v10[66] = v17 | ((v16[13] + v19) >> 7);
      v10[68] = v18 | ((v16[14] + v16[4]) >> 7);
      v10[65] = v10[65] & 0xFE000000 | ((v16[16] + v16[4]) >> 7);
    }

    v10[67] = v10[67] & 0xFE000000 | ((v16[17] + v16[4]) >> 7);
  }

LABEL_7:
  v20 = vdupq_n_s64(*(this + 32) + 136 * a2 + 8472);
  v31[0] = vaddq_s64(v20, xmmword_27775C580);
  v31[1] = vaddq_s64(v20, xmmword_27775C590);
  v31[2] = vaddq_s64(v20, xmmword_27775C5A0);
  v31[3] = vaddq_s64(v20, xmmword_27775C5B0);
  if (v6)
  {
    v21 = v10 + 101;
    v22 = v31;
    do
    {
      v23 = *v22;
      v24 = *(v21 - 16);
      *(v21 - 16) = v24 & 0xFE000000 | ((*(**v22 + 52) + *(**v22 + 16)) >> 7);
      v25 = *v21;
      result = *v21 & 0xFE000000 | ((*(*v23 + 56) + *(*v23 + 16)) >> 7);
      *v21 = result;
      if (*(*(this + 32) + 2648) == 1)
      {
        v26 = v24 & 0xFE000000;
        v27 = v25 & 0xFE000000;
        v28 = *v23;
        result = *(*v23 + 16);
        if (!v11)
        {
          *(v21 - 16) = v26 | ((*(v28 + 52) + result) >> 7);
          *v21 = v27 | ((*(*v23 + 56) + *(*v23 + 16)) >> 7);
          *(v21 - 24) = *(v21 - 24) & 0xFE000000 | ((*(*v23 + 64) + *(*v23 + 16)) >> 7);
          v29 = *v23;
          v30 = v29 + 4;
          goto LABEL_14;
        }

        *(v21 - 16) = v26 | ((*(v28 + 60) + result) >> 7);
        *(v21 - 24) = *(v21 - 24) & 0xFE000000 | ((*(*v23 + 72) + *(*v23 + 16)) >> 7);
        if (v12)
        {
          *v21 = v27 | ((v13[14] + v13[4]) >> 7);
          v29 = v13;
          v30 = v13 + 4;
LABEL_14:
          *(v21 - 8) = *(v21 - 8) & 0xFE000000 | ((v29[17] + *v30) >> 7);
        }
      }

      v22 = (v22 + 8);
      ++v21;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t CAHDecViolaHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecViolaHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
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

uint64_t CAHDecViolaHevc::populatePictureRegisters(CAHDecViolaHevc *this)
{
  v309 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2960);
  v9 = *(v2 + 2964);
  v290 = *(v2 + 2952);
  v291 = *(v2 + 2948);
  v295 = *(v2 + 8280);
  v296 = *(v2 + 8994);
  v292 = *(v2 + 2924);
  v293 = *(v2 + 3548);
  v301 = *(v2 + 2644);
  v297 = *(v2 + 2088);
  v298 = *(v2 + 8312);
  v289 = *(v2 + 8);
  v10 = *(v2 + 8424);
  v308[0] = *(v2 + 8408);
  v308[1] = v10;
  v11 = *(v2 + 8456);
  v308[2] = *(v2 + 8440);
  v308[3] = v11;
  v294 = *(v2 + 8608);
  v12 = (*(*v2 + 184))(v2);
  v13 = *(this + 32);
  v299 = v12 && (v13[689] || v13[4] == 1);
  v14 = *(this + 33);
  v15 = v5 + 23176 * v3;
  v16 = *(v15 + 4420);
  v17 = *(v15 + 4424);
  memset(v307, 0, sizeof(v307));
  memset(v306, 0, sizeof(v306));
  (*(*v13 + 344))();
  v18 = 0;
  v19 = (*(this + 32) + 8616);
  do
  {
    v310 = vld2q_f64(v19);
    v19 += 4;
    v307[v18] = v310.val[0];
    v306[v18++] = v310.val[1];
  }

  while (v18 != 4);
  v20 = v6 + 9856 * v4;
  *(v14 + 76) = 766509056;
  v21 = (*(**(this + 32) + 232))(*(this + 32));
  if (v21)
  {
    v22 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v22 = 0;
  }

  v23 = ((v301 != 0) << 12) | ((v301 == 1) << 10) | v22 | *(v14 + 76) & 0xFFFFC15F;
  v24 = v23 & 0xFFFFF50F | 0x2A0;
  v25 = v23 | 0x2B0;
  if (!v299)
  {
    v25 = v24;
  }

  *(v14 + 76) = v25 | 0x40u;
  if ((v7 & 1) != 0 && *(v20 + 53) && *(v15 + 22888) > 1u || (v7 & 2) != 0 && !*(v20 + 53) && *(v20 + 52))
  {
LABEL_25:
    v26 = (v9 == 0) << 27;
    goto LABEL_26;
  }

  if ((v7 & 0x20) != 0 && !*(v20 + 53))
  {
    v26 = 0;
    if (*(v20 + 52) || v8 < 2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v26 = 0;
LABEL_26:
  v27 = v17 + v16;
  *(v14 + 80) = v26;
  *(v14 + 84) = 0;
  v28 = *(v15 + 3608) - 1;
  *(v14 + 84) = v28;
  v29 = *(v15 + 3612);
  *(v14 + 88) = 0;
  *(v14 + 84) = (v28 | (v29 << 16)) - 0x10000;
  if (*(v20 + 6466))
  {
    v30 = 32 * (*(v20 + 6477) & 1);
    *(v14 + 92) = v30;
    if (*(v20 + 6477))
    {
      v31 = *(v20 + 6484) & 7;
    }

    else
    {
      v31 = 0;
    }

    v33 = v31 | v30;
    *(v14 + 92) = v31 | v30;
    if (v30)
    {
      v34 = (v20 + 6512);
      v35 = (v14 + 100);
      v36 = -1;
      do
      {
        v37 = *v35 & 0xFFFFFFE0 | *v34 & 0x1F;
        *v35 = v37;
        *v35++ = v37 & 0xFFFFFC1F | (32 * (*(v34 - 6) & 0x1F));
        ++v36;
        ++v34;
      }

      while (v36 < v31);
    }

    LOBYTE(v38) = *(v20 + 6477);
    if (v38)
    {
      v38 = *(v20 + 6480);
    }

    v39 = (8 * ((v27 - v38) & 3)) | v33;
    *(v14 + 92) = v39;
    v40 = v39 & 0xFFFFFFBF | ((*(v20 + 6476) & 1) << 6);
    *(v14 + 92) = v40;
    v32 = v40 & 0xFFFFFE7F | ((*(v20 + 6472) & 3) << 7);
  }

  else
  {
    v32 = 8 * (v27 & 3);
  }

  *(v14 + 92) = v32;
  LOBYTE(v41) = *(v20 + 34);
  if (v41)
  {
    v41 = *(v20 + 36);
  }

  v42 = v32 & 0xFFFE7FFF | (((v27 - v41) & 3) << 15);
  *(v14 + 92) = v42;
  v43 = v42 & 0xFFFFF1FF | ((*(v20 + 6460) & 7) << 9);
  *(v14 + 92) = v43;
  v44 = v43 & 0xFFFFEFFF | ((*(v20 + 53) & 1) << 12);
  *(v14 + 92) = v44;
  v45 = v44 & 0xFFFFDFFF | ((*(v20 + 52) & 1) << 13);
  *(v14 + 92) = v45;
  v46 = v45 & 0xFFFFBFFF | ((*(v20 + 51) & 1) << 14);
  *(v14 + 92) = v46;
  v47 = v46 & 0xFFFDFFFF | ((*(v20 + 34) & 1) << 17);
  *(v14 + 92) = v47;
  v48 = v47 & 0xFFFBFFFF | ((*(v20 + 33) & 1) << 18);
  *(v14 + 92) = v48;
  v49 = v48 & 0xFFF7FFFF | ((*(v20 + 32) & 1) << 19);
  *(v14 + 92) = v49;
  v50 = v49 & 0xFFEFFFFF | ((*(v20 + 16) & 1) << 20);
  *(v14 + 92) = v50;
  if ((v25 & 0x2000) != 0)
  {
    v51 = 0;
  }

  else
  {
    v51 = (*(v15 + 22284) != 0) << 21;
  }

  *(v14 + 92) = v51 | v50 & 0xFFDFFFFF;
  v52 = *(v14 + 96) & 0xFFFFFFE0 | *(v20 + 44) & 0x1F;
  *(v14 + 96) = v52;
  *(v14 + 96) = v52 & 0xFFFFFC1F | (32 * (*(v20 + 40) & 0x1F));
  if (*(v20 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v21, v14 + 124, *(this + 33) + 1552, *(v15 + 3600), v20 + 256);
  }

  *(v14 + 144) = 0;
  if (v9)
  {
    v53 = 7340032;
  }

  else
  {
    v53 = 3145728;
  }

  *(v14 + 152) = v53;
  if (!*(*(this + 32) + 2892))
  {
    v102 = *(v15 + 3608) - 1;
    *(v14 + 148) = v102;
    v103 = (*(v15 + 3612) << 16) - 0x10000;
    *(v14 + 148) = v103 & 0xFFFF0000 | v102;
    if (*(v15 + 3616))
    {
      if ((*(v14 + 77) & 8) != 0)
      {
        v104 = *(v15 + 3620) * *(v15 + 22852);
        *(v14 + 144) = v104;
        *(v14 + 144) = v104 | ((*(v15 + 22856) * *(v15 + 3628)) << 16);
        v105 = *(v15 + 3608) + ~(*(v15 + 3624) * *(v15 + 22852));
        *(v14 + 148) = v105 | v103;
        *(v14 + 148) = v105 | ((*(v15 + 3612) + ~(*(v15 + 3632) * *(v15 + 22856))) << 16);
      }
    }
  }

  v54 = this + 6160;
  for (i = 156; i != 184; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v56 = *(this + 33);
    v57 = *(v56 + i);
    *(v56 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v58 = *(this + 33);
    v59 = *(v58 + i);
    *(v58 + i) = v57;
    if (*v54 || *(v54 + 38) || *(v54 + 39))
    {
      result = CAHDec::addToPatcherList(this, v54, i, 0, 0xFFFFFFFFLL, 8, v59, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 2952) >> 9) & 0x3FFFFF) << 9);
    v54 += 176;
  }

  *(*(this + 33) + 212) = 0;
  *(*(this + 33) + 216) = 0;
  *(*(this + 33) + 220) = 0;
  v61 = *(this + 33);
  v62 = *(v61 + 220);
  *(v61 + 220) = 0;
  *(*(this + 33) + 220) ^= 0xFFFFFFu;
  v63 = *(this + 33);
  v64 = *(v63 + 220);
  *(v63 + 220) = v62;
  if (!*(this + 1298) && !*(this + 2634) && !*(this + 2635) || (result = CAHDec::addToPatcherList(this, this + 1298, 220, 0, 0xFFFFFFFFLL, 8, v64, 4), !result))
  {
    if ((*(*(this + 33) + 224) = 0, v65 = *(this + 33), v66 = *(v65 + 224), *(v65 + 224) = 0, *(*(this + 33) + 224) ^= 0xFFFFFFu, v67 = *(this + 33), v68 = *(v67 + 224), *(v67 + 224) = v66, !*(this + 1320)) && !*(this + 2678) && !*(this + 2679) || (result = CAHDec::addToPatcherList(this, this + 1320, 224, 0, 0xFFFFFFFFLL, 8, v68, 4), !result))
    {
      if ((*(*(this + 33) + 228) = 0, v69 = *(this + 33), v70 = *(v69 + 228), *(v69 + 228) = 0, *(*(this + 33) + 228) ^= 0xFFFFFFu, v71 = *(this + 33), v72 = *(v71 + 228), *(v71 + 228) = v70, !*(this + 1342)) && !*(this + 2722) && !*(this + 2723) || (result = CAHDec::addToPatcherList(this, this + 1342, 228, 0, 0xFFFFFFFFLL, 8, v72, 4), !result))
      {
        if ((*(*(this + 33) + 232) = 0, v73 = *(this + 33), v74 = *(v73 + 232), *(v73 + 232) = 0, *(*(this + 33) + 232) ^= 0xFFFFFFu, v75 = *(this + 33), v76 = *(v75 + 232), *(v75 + 232) = v74, !*(this + 1364)) && !*(this + 2766) && !*(this + 2767) || (result = CAHDec::addToPatcherList(this, this + 1364, 232, 0, 0xFFFFFFFFLL, 8, v76, 4), !result))
        {
          if ((*(*(this + 33) + 236) = 0, v77 = *(this + 33), v78 = *(v77 + 236), *(v77 + 236) = 0, *(*(this + 33) + 236) ^= 0xFFFFFFu, v79 = *(this + 33), v80 = *(v79 + 236), *(v79 + 236) = v78, !*(this + 1386)) && !*(this + 2810) && !*(this + 2811) || (result = CAHDec::addToPatcherList(this, this + 1386, 236, 0, 0xFFFFFFFFLL, 8, v80, 4), !result))
          {
            if ((*(*(this + 33) + 240) = 0, v81 = *(this + 33), v82 = *(v81 + 240), *(v81 + 240) = 0, *(*(this + 33) + 240) ^= 0xFFFFFFu, v83 = *(this + 33), v84 = *(v83 + 240), *(v83 + 240) = v82, !*(this + 1408)) && !*(this + 2854) && !*(this + 2855) || (result = CAHDec::addToPatcherList(this, this + 1408, 240, 0, 0xFFFFFFFFLL, 8, v84, 4), !result))
            {
              if ((*(*(this + 33) + 244) = 0, v85 = *(this + 33), v86 = *(v85 + 244), *(v85 + 244) = 0, *(*(this + 33) + 244) ^= 0xFFFFFFu, v87 = *(this + 33), v88 = *(v87 + 244), *(v87 + 244) = v86, !*(this + 924)) && !*(this + 1886) && !*(this + 1887) || (result = CAHDec::addToPatcherList(this, this + 924, 244, 0, 0xFFFFFFFFLL, 8, v88, 4), !result))
              {
                if ((*(*(this + 33) + 248) = 0, v89 = *(this + 33), v90 = *(v89 + 248), *(v89 + 248) = 0, *(*(this + 33) + 248) ^= 0xFFFFFFu, v91 = *(this + 33), v92 = *(v91 + 248), *(v91 + 248) = v90, v93 = (this + 176 * v298 + 7568), !*v93) && !*(this + 44 * v298 + 1930) && !*(this + 44 * v298 + 1931) || (result = CAHDec::addToPatcherList(this, v93, 248, 0, 0xFFFFFFFFLL, 8, v92, 4), !result))
                {
                  if ((*(*(this + 33) + 252) = 0, v94 = *(this + 33), v95 = *(v94 + 252), *(v94 + 252) = 0, *(*(this + 33) + 252) ^= 0xFFFFFFu, v96 = *(this + 33), v97 = *(v96 + 252), *(v96 + 252) = v95, !*(this + 1430)) && !*(this + 2898) && !*(this + 2899) || (result = CAHDec::addToPatcherList(this, this + 1430, 252, 0, 0xFFFFFFFFLL, 8, v97, 4), !result))
                  {
                    if ((*(*(this + 33) + 256) = 0, v98 = *(this + 33), v99 = *(v98 + 256), *(v98 + 256) = 0, *(*(this + 33) + 256) ^= 0xFFFFFFu, v100 = *(this + 33), v101 = *(v100 + 256), *(v100 + 256) = v99, !*(this + 1452)) && !*(this + 2942) && !*(this + 2943) || (result = CAHDec::addToPatcherList(this, this + 1452, 256, 0, 0xFFFFFFFFLL, 8, v101, 4), !result))
                    {
                      *(*(this + 33) + 260) = 0;
                      *(*(this + 33) + 264) = 0;
                      *(*(this + 33) + 268) = 0;
                      *(*(this + 33) + 272) = 0;
                      v106 = *(this + 33);
                      if (*(*(this + 32) + 2648) == 1)
                      {
                        v107 = *(v106 + 264);
                        *(v106 + 264) = 0;
                        *(*(this + 33) + 264) ^= 0x1FFFFFFu;
                        v108 = *(this + 33);
                        v109 = *(v108 + 264);
                        *(v108 + 264) = v107;
                        v111 = (v297 + 8);
                        v110 = *(v297 + 8);
                        if (v296)
                        {
                          if (v110 || *(v297 + 160) || *(v297 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, (v297 + 8), 264, *(v297 + 68), 0xFFFFFFFFLL, 7, v109, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v112 = *(this + 33);
                          v113 = *(v112 + 260);
                          *(v112 + 260) = 0;
                          *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                          v114 = *(this + 33);
                          v115 = *(v114 + 260);
                          *(v114 + 260) = v113;
                          if (*v111 || *(v297 + 160) || *(v297 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, v111, 260, *(v297 + 80), 0xFFFFFFFFLL, 7, v115, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          if (!v292)
                          {
                            goto LABEL_151;
                          }

                          v116 = *(this + 33);
                          v117 = *(v116 + 272);
                          *(v116 + 272) = 0;
                          *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                          v118 = *(this + 33);
                          v119 = *(v118 + 272);
                          *(v118 + 272) = v117;
                          if (*v295 || *(v295 + 152) || *(v295 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v295, 272, *(v295 + 56), 0xFFFFFFFFLL, 7, v119, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v120 = *(this + 33);
                          v121 = *(v120 + 268);
                          *(v120 + 268) = 0;
                          *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                          v122 = *(this + 33);
                          v123 = *(v122 + 268);
                          *(v122 + 268) = v121;
                          if (!*v295 && !*(v295 + 152) && !*(v295 + 156))
                          {
                            goto LABEL_151;
                          }

                          v124 = v295;
                          v125 = *(v295 + 68);
                          v126 = this;
                        }

                        else
                        {
                          if (v110 || *(v297 + 160) || *(v297 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, (v297 + 8), 264, *(v297 + 60), 0xFFFFFFFFLL, 7, v109, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v144 = *(this + 33);
                          v145 = *(v144 + 272);
                          *(v144 + 272) = 0;
                          *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                          v146 = *(this + 33);
                          v147 = *(v146 + 272);
                          *(v146 + 272) = v145;
                          if (*v111 || *(v297 + 160) || *(v297 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, v111, 272, *(v297 + 64), 0xFFFFFFFFLL, 7, v147, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v148 = *(this + 33);
                          v149 = *(v148 + 260);
                          *(v148 + 260) = 0;
                          *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                          v150 = *(this + 33);
                          v151 = *(v150 + 260);
                          *(v150 + 260) = v149;
                          if (*v111 || *(v297 + 160) || *(v297 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, v111, 260, *(v297 + 72), 0xFFFFFFFFLL, 7, v151, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v152 = *(this + 33);
                          v153 = *(v152 + 268);
                          *(v152 + 268) = 0;
                          *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                          v154 = *(this + 33);
                          v123 = *(v154 + 268);
                          *(v154 + 268) = v153;
                          if (!*v111 && !*(v297 + 160) && !*(v297 + 164))
                          {
                            goto LABEL_151;
                          }

                          v125 = *(v297 + 76);
                          v126 = this;
                          v124 = (v297 + 8);
                        }

                        v143 = 268;
                      }

                      else
                      {
                        v127 = *(v106 + 260);
                        *(v106 + 260) = 0;
                        *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                        v128 = *(this + 33);
                        v129 = *(v128 + 260);
                        *(v128 + 260) = v127;
                        v130 = (this + 176 * v298 + 528);
                        if (*v130 || *(this + 44 * v298 + 170) || *(this + 44 * v298 + 171))
                        {
                          result = CAHDec::addToPatcherList(this, v130, 260, 0, 0xFFFFFFFFLL, 7, v129, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v131 = *(this + 33);
                        v132 = *(v131 + 264);
                        *(v131 + 264) = 0;
                        *(*(this + 33) + 264) ^= 0x1FFFFFFu;
                        v133 = *(this + 33);
                        v134 = *(v133 + 264);
                        *(v133 + 264) = v132;
                        if (*(v297 + 8) || *(v297 + 160) || *(v297 + 164))
                        {
                          result = CAHDec::addToPatcherList(this, (v297 + 8), 264, *(v297 + 60), 0xFFFFFFFFLL, 7, v134, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v135 = *(this + 33);
                        v136 = *(v135 + 268);
                        *(v135 + 268) = 0;
                        *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                        v137 = *(this + 33);
                        v138 = *(v137 + 268);
                        *(v137 + 268) = v136;
                        v139 = (this + 176 * v298 + 3344);
                        if (*v139 || *(this + 44 * v298 + 874) || *(this + 44 * v298 + 875))
                        {
                          result = CAHDec::addToPatcherList(this, v139, 268, 0, 0xFFFFFFFFLL, 7, v138, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v140 = *(this + 33);
                        v141 = *(v140 + 272);
                        *(v140 + 272) = 0;
                        *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                        v142 = *(this + 33);
                        v123 = *(v142 + 272);
                        *(v142 + 272) = v141;
                        if (!*(v297 + 8) && !*(v297 + 160) && !*(v297 + 164))
                        {
                          goto LABEL_151;
                        }

                        v125 = *(v297 + 64);
                        v126 = this;
                        v124 = (v297 + 8);
                        v143 = 272;
                      }

                      result = CAHDec::addToPatcherList(v126, v124, v143, v125, 0xFFFFFFFFLL, 7, v123, 4);
                      if (result)
                      {
                        return result;
                      }

LABEL_151:
                      if (!(*(v14 + 76) & 0x2000 | v294))
                      {
                        *(v14 + 76) |= 0x2000u;
                        *(this + v298 + 116) = 1;
                        *(*(this + 33) + 276) = 0;
                        goto LABEL_223;
                      }

                      *(this + v298 + 116) = 0;
                      *(*(this + 33) + 276) = 0;
                      if (!v294)
                      {
LABEL_223:
                        *(*(this + 33) + 436) = 0;
                        *(*(this + 33) + 440) = 0;
                        *(*(this + 33) + 444) = 0;
                        *(*(this + 33) + 448) = 0;
                        if (!v301)
                        {
                          goto LABEL_285;
                        }

                        v220 = *(this + 32);
                        if (v291 && v290 == 2)
                        {
                          v221 = *(*(v220 + 8248) + 60);
                          v222 = *(this + 33);
                          v223 = *(v222 + 436);
                          *(v222 + 436) = 0;
                          *(*(this + 33) + 436) ^= 0xFFFFFFu;
                          v224 = *(this + 33);
                          v225 = *(v224 + 436);
                          *(v224 + 436) = v223;
                          v226 = *(*(this + 32) + 8248);
                          if (*v226 || *(v226 + 152) || *(v226 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v226, 436, v221, 0xFFFFFFFFLL, 8, v225, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v227 = *(this + 33);
                          v228 = *(v227 + 444);
                          *(v227 + 444) = 0;
                          *(*(this + 33) + 444) ^= 0xC0000000;
                          v229 = *(this + 33);
                          v230 = *(v229 + 444);
                          *(v229 + 444) = v228;
                          v231 = *(*(this + 32) + 8248);
                          if (*v231 || *(v231 + 152) || *(v231 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v231, 444, v221, 192, 6, v230, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          if (v292)
                          {
                            v232 = *(v295 + 56);
                            v233 = *(this + 33);
                            v234 = *(v233 + 440);
                            *(v233 + 440) = 0;
                            *(*(this + 33) + 440) ^= 0xFFFFFFu;
                            v235 = *(this + 33);
                            v236 = *(v235 + 440);
                            *(v235 + 440) = v234;
                            if (*v295 || *(v295 + 152) || *(v295 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v295, 440, v232, 0xFFFFFFFFLL, 8, v236, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v237 = *(this + 33);
                            v238 = *(v237 + 448);
                            *(v237 + 448) = 0;
                            *(*(this + 33) + 448) ^= 0xC0000000;
                            v239 = *(this + 33);
                            v240 = *(v239 + 448);
                            *(v239 + 448) = v238;
                            if (*v295 || *(v295 + 152) || *(v295 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v295, 448, v232, 192, 6, v240, 4);
                              if (result)
                              {
                                return result;
                              }
                            }
                          }

                          if (v289)
                          {
                            *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF));
                            if (v292)
                            {
                              v241 = v295;
LABEL_246:
                              v242 = (v241 + 80);
LABEL_284:
                              *(*(this + 33) + 448) = *(*(this + 33) + 448) & 0xFFFF8003 | (4 * ((*v242 >> 6) & 0x1FFF));
                            }

LABEL_285:
                            if (*(v20 + 52))
                            {
                              v276 = 0;
                              v277 = *(v20 + 56) + 1;
                              v278 = *(this + 33);
                              *(v278 + 452) = v277;
                              do
                              {
                                *(v278 + 2 * v276 + 456) = *(v20 + 9676 + 4 * v276);
                                v279 = v276++ >= v277;
                              }

                              while (!v279);
                              v280 = 0;
                              v281 = *(v20 + 60) + 1;
                              *(v278 + 454) = v281;
                              do
                              {
                                *(v278 + 2 * v280 + 498) = *(v20 + 9760 + 4 * v280);
                                v279 = v280++ >= v281;
                              }

                              while (!v279);
                            }

                            else
                            {
                              v278 = *(this + 33);
                              *(v278 + 452) = 65537;
                              *(v278 + 456) = 0;
                              *(v278 + 458) = *(v15 + 22880);
                              *(v278 + 498) = 0;
                              *(v278 + 500) = *(v15 + 22888);
                            }

                            v282 = *(this + 32);
                            if (*(v282 + 2360) != 1)
                            {
                              return 0;
                            }

                            *(v278 + 548) = *(v278 + 548) & 0xFFFFFFFE | *(v282 + 2508) & 1;
                            if (*(v282 + 2508))
                            {
                              *(v278 + 2548) = 0x10000000;
                              *(v278 + 2552) = *(v282 + 2368);
                              *(v278 + 2560) = 0;
                              *(v278 + 2556) = 0;
                              *(v278 + 2568) = *(v282 + 2372);
                              v283 = *(v282 + 2404);
                              *(v278 + 2584) = *(v282 + 2388);
                              *(v278 + 2600) = v283;
                            }

                            *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFFD | (2 * (*(v282 + 2512) & 1));
                            if (*(v282 + 2512))
                            {
                              *(v278 + 2616) = 0;
                              v284 = *(v282 + 2424);
                              *(v278 + 2616) = (*(v282 + 2424) & 1) << 22;
                              v285 = ((*(v282 + 2420) & 1) << 23) | ((v284 & 1) << 22) | 0x20000000;
                              *(v278 + 2616) = v285;
                              if (!*(v282 + 2364))
                              {
                                ++v285;
                              }

                              *(v278 + 2616) = v285;
                              v286 = *(v282 + 2428);
                              v287 = *(v282 + 2460);
                              *(v278 + 2636) = *(v282 + 2444);
                              *(v278 + 2652) = v287;
                              *(v278 + 2620) = v286;
                            }

                            *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFFB | (4 * (*(v282 + 2516) & 1));
                            *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFF7 | (8 * (*(v282 + 2520) & 1));
                            *(*(this + 33) + 548) = *(*(this + 33) + 548) & 0xFFFFFFEF | (16 * (*(v282 + 2524) & 1));
                            *(v278 + 2672) = 0;
                            v288 = *(v282 + 2476) == 2 ? 805306368 : 813694976;
                            *(v278 + 2672) = v288;
                            memcpy((v278 + 2676), (v282 + 2480), 4 * *(v282 + 2476));
                            if (!*(v282 + 2516))
                            {
                              return 0;
                            }

                            result = 0;
                            *(v282 + 2516) = 0;
                            return result;
                          }

                          if (!CAHDecClaryHevc::getSWRStride(this, *(v14 + 148) - *(v14 + 144) + 1, *(v15 + 3636), *(v15 + 3640), *(v15 + 22852)))
                          {
                            *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(this + 2956) >> 6) & 0xFFF));
                            if (!v292)
                            {
                              goto LABEL_285;
                            }

LABEL_283:
                            v242 = (this + 11828);
                            goto LABEL_284;
                          }
                        }

                        else
                        {
                          v243 = *(v220 + 2892);
                          if (*(v220 + 2892))
                          {
                            v244 = *(v220 + 2904);
                            v243 = *(v220 + 2908);
                          }

                          else
                          {
                            v244 = 0;
                          }

                          v245 = *(v220 + 8248);
                          v247 = *(v245 + 52);
                          v246 = *(v245 + 56);
                          v248 = v247 + v244;
                          v249 = __CFADD__(v247, v244);
                          v250 = v246 + v243;
                          if (__CFADD__(v246, v243))
                          {
                            v251 = 2;
                          }

                          else
                          {
                            v251 = v249;
                          }

                          if (v251)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136315394;
                              *&buf[4] = "populatePictureRegisters";
                              v304 = 1024;
                              v305 = v251;
                              v252 = MEMORY[0x277D86220];
                              v253 = "AppleAVD: %s(): failKind = %d";
                              v254 = buf;
                              v255 = 18;
LABEL_259:
                              _os_log_impl(&dword_277606000, v252, OS_LOG_TYPE_DEFAULT, v253, v254, v255);
                            }
                          }

                          else
                          {
                            v256 = *(this + 33);
                            v257 = *(v256 + 436);
                            *(v256 + 436) = 0;
                            *(*(this + 33) + 436) ^= 0xFFFFFFu;
                            v258 = *(this + 33);
                            v259 = *(v258 + 436);
                            *(v258 + 436) = v257;
                            v260 = *(*(this + 32) + 8248);
                            if (*v260 || *(v260 + 152) || *(v260 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v260, 436, v248, 0xFFFFFFFFLL, 8, v259, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v261 = *(this + 33);
                            v262 = *(v261 + 440);
                            *(v261 + 440) = 0;
                            *(*(this + 33) + 440) ^= 0xFFFFFFu;
                            v263 = *(this + 33);
                            v264 = *(v263 + 440);
                            *(v263 + 440) = v262;
                            v265 = *(*(this + 32) + 8248);
                            if (*v265 || *(v265 + 152) || *(v265 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v265, 440, v250, 0xFFFFFFFFLL, 8, v264, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v266 = *(this + 33);
                            v267 = *(v266 + 444);
                            *(v266 + 444) = 0;
                            *(*(this + 33) + 444) ^= 0xC0000000;
                            v268 = *(this + 33);
                            v269 = *(v268 + 444);
                            *(v268 + 444) = v267;
                            v270 = *(*(this + 32) + 8248);
                            if (*v270 || *(v270 + 152) || *(v270 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v270, 444, v248, 192, 6, v269, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v271 = *(this + 33);
                            v272 = *(v271 + 448);
                            *(v271 + 448) = 0;
                            *(*(this + 33) + 448) ^= 0xC0000000;
                            v273 = *(this + 33);
                            v274 = *(v273 + 448);
                            *(v273 + 448) = v272;
                            v275 = *(*(this + 32) + 8248);
                            if (*v275 || *(v275 + 152) || *(v275 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v275, 448, v250, 192, 6, v274, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            if (v289)
                            {
                              *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF));
                              v241 = *(*(this + 32) + 8248);
                              goto LABEL_246;
                            }

                            if (!CAHDecClaryHevc::getSWRStride(this, *(v14 + 148) - *(v14 + 144) + 1, *(v15 + 3636), *(v15 + 3640), *(v15 + 22852)))
                            {
                              *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(this + 2956) >> 6) & 0xFFF));
                              goto LABEL_283;
                            }
                          }
                        }

                        return 0xFFFFFFFFLL;
                      }

                      v155 = 0;
                      if (v299)
                      {
                        v156 = 0x2000000;
                      }

                      else
                      {
                        v156 = 0;
                      }

                      v157 = v308;
                      v158 = v307;
                      v300 = v306;
                      while (1)
                      {
                        v159 = *v157;
                        if (!*v157 || !*(v159 + 48))
                        {
                          return 0xFFFFFFFFLL;
                        }

                        v160 = *(v159 + 44);
                        if ((*(**(this + 32) + 184))(*(this + 32)))
                        {
                          v161 = *(this + 32);
                          if (v161[689])
                          {
                            *buf = 0;
                            if (((*(*v161 + 312))(v161, v160, buf) & 1) == 0)
                            {
                              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                              {
                                return 0xFFFFFFFFLL;
                              }

                              v302 = 0;
                              v252 = MEMORY[0x277D86220];
                              v253 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                              v254 = &v302;
                              v255 = 2;
                              goto LABEL_259;
                            }

                            *(v159 + 48) = *buf + 8;
                          }
                        }

                        *(*(this + 33) + v155 + 276) = 0;
                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFFFFFFF | ((v294 << 28) - 0x10000000);
                        *(*(this + 33) + v155 + 276) &= 0xF3FFFFFF;
                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFDFFFFFF | v156;
                        *(*(this + 33) + v155 + 276) |= 0x1000000u;
                        v162 = v293 - *(v159 + 12);
                        v163 = v162 & 0x1FFFF;
                        if (v162 < -32768)
                        {
                          v163 = 98304;
                        }

                        if (v162 <= 0x8000)
                        {
                          v164 = v163;
                        }

                        else
                        {
                          v164 = 0x8000;
                        }

                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFFFE0000 | v164;
                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFFFDFFFF | ((*(v159 + 20) == 2) << 17);
                        *(*(this + 33) + v155 + 308) = 0;
                        *(*(this + 33) + v155 + 340) = 0;
                        *(*(this + 33) + v155 + 372) = 0;
                        *(*(this + 33) + v155 + 404) = 0;
                        v165 = *(this + 33);
                        if (*(*(this + 32) + 2648) == 1)
                        {
                          v166 = v155 + 340;
                          v167 = v165 + v155;
                          v168 = *(v167 + 340);
                          *(v167 + 340) = 0;
                          *(*(this + 33) + v155 + 340) ^= 0x1FFFFFFu;
                          v169 = *(this + 33) + v155;
                          v170 = *(v169 + 340);
                          *(v169 + 340) = v168;
                          v171 = *(v159 + 48);
                          v172 = *v171;
                          if (v296)
                          {
                            if (v172 || *(v171 + 38) || *(v171 + 39))
                            {
                              result = CAHDec::addToPatcherList(this, v171, v166, *(v171 + 15), 0xFFFFFFFFLL, 7, v170, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v173 = *(this + 33) + v155;
                            v174 = *(v173 + 308);
                            *(v173 + 308) = 0;
                            *(*(this + 33) + v155 + 308) ^= 0x1FFFFFFu;
                            v175 = *(this + 33) + v155;
                            v176 = *(v175 + 308);
                            *(v175 + 308) = v174;
                            v177 = *(v159 + 48);
                            if (*v177 || *(v177 + 152) || *(v177 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v177, v155 + 308, *(v177 + 72), 0xFFFFFFFFLL, 7, v176, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            if (v292)
                            {
                              v178 = *(this + 33) + v155;
                              v179 = *(v178 + 404);
                              *(v178 + 404) = 0;
                              *(*(this + 33) + v155 + 404) ^= 0x1FFFFFFu;
                              v180 = *(this + 33) + v155;
                              v181 = *(v180 + 404);
                              *(v180 + 404) = v179;
                              if (*v295 || *(v295 + 152) || *(v295 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v295, v155 + 404, *(v295 + 56), 0xFFFFFFFFLL, 7, v181, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v182 = *(this + 33) + v155;
                              v183 = *(v182 + 372);
                              *(v182 + 372) = 0;
                              *(*(this + 33) + v155 + 372) ^= 0x1FFFFFFu;
                              v184 = *(this + 33) + v155;
                              v185 = *(v184 + 372);
                              *(v184 + 372) = v183;
                              if (*v295 || *(v295 + 152) || *(v295 + 156))
                              {
                                v186 = v155 + 372;
                                v187 = v295;
LABEL_220:
                                v206 = *(v187 + 68);
LABEL_221:
                                result = CAHDec::addToPatcherList(this, v187, v186, v206, 0xFFFFFFFFLL, 7, v185, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }
                            }
                          }

                          else
                          {
                            if (v172 || *(v171 + 38) || *(v171 + 39))
                            {
                              result = CAHDec::addToPatcherList(this, v171, v166, *(v171 + 13), 0xFFFFFFFFLL, 7, v170, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v207 = *(this + 33) + v155;
                            v208 = *(v207 + 404);
                            *(v207 + 404) = 0;
                            *(*(this + 33) + v155 + 404) ^= 0x1FFFFFFu;
                            v209 = *(this + 33) + v155;
                            v210 = *(v209 + 404);
                            *(v209 + 404) = v208;
                            v211 = *(v159 + 48);
                            if (*v211 || *(v211 + 152) || *(v211 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v211, v155 + 404, *(v211 + 56), 0xFFFFFFFFLL, 7, v210, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v212 = *(this + 33) + v155;
                            v213 = *(v212 + 308);
                            *(v212 + 308) = 0;
                            *(*(this + 33) + v155 + 308) ^= 0x1FFFFFFu;
                            v214 = *(this + 33) + v155;
                            v215 = *(v214 + 308);
                            *(v214 + 308) = v213;
                            v216 = *(v159 + 48);
                            if (*v216 || *(v216 + 152) || *(v216 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v216, v155 + 308, *(v216 + 64), 0xFFFFFFFFLL, 7, v215, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v217 = *(this + 33) + v155;
                            v218 = *(v217 + 372);
                            *(v217 + 372) = 0;
                            *(*(this + 33) + v155 + 372) ^= 0x1FFFFFFu;
                            v219 = *(this + 33) + v155;
                            v185 = *(v219 + 372);
                            *(v219 + 372) = v218;
                            v187 = *(v159 + 48);
                            if (*v187 || *(v187 + 152) || *(v187 + 156))
                            {
                              v186 = v155 + 372;
                              goto LABEL_220;
                            }
                          }
                        }

                        else
                        {
                          v188 = v165 + v155;
                          v189 = *(v188 + 308);
                          *(v188 + 308) = 0;
                          *(*(this + 33) + v155 + 308) ^= 0x1FFFFFFu;
                          v190 = *(this + 33) + v155;
                          v191 = *(v190 + 308);
                          *(v190 + 308) = v189;
                          v192 = *v158;
                          if (**v158 || *(v192 + 38) || *(v192 + 39))
                          {
                            result = CAHDec::addToPatcherList(this, v192, v155 + 308, 0, 0xFFFFFFFFLL, 7, v191, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v193 = *(this + 33) + v155;
                          v194 = *(v193 + 340);
                          *(v193 + 340) = 0;
                          *(*(this + 33) + v155 + 340) ^= 0x1FFFFFFu;
                          v195 = *(this + 33) + v155;
                          v196 = *(v195 + 340);
                          *(v195 + 340) = v194;
                          v197 = *(v159 + 48);
                          if (*v197 || *(v197 + 152) || *(v197 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v197, v155 + 340, *(v197 + 52), 0xFFFFFFFFLL, 7, v196, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v198 = *(this + 33) + v155;
                          v199 = *(v198 + 372);
                          *(v198 + 372) = 0;
                          *(*(this + 33) + v155 + 372) ^= 0x1FFFFFFu;
                          v200 = *(this + 33) + v155;
                          v201 = *(v200 + 372);
                          *(v200 + 372) = v199;
                          v202 = *v300;
                          if (**v300 || *(v202 + 38) || *(v202 + 39))
                          {
                            result = CAHDec::addToPatcherList(this, v202, v155 + 372, 0, 0xFFFFFFFFLL, 7, v201, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v203 = *(this + 33) + v155;
                          v204 = *(v203 + 404);
                          *(v203 + 404) = 0;
                          *(*(this + 33) + v155 + 404) ^= 0x1FFFFFFu;
                          v205 = *(this + 33) + v155;
                          v185 = *(v205 + 404);
                          *(v205 + 404) = v204;
                          v187 = *(v159 + 48);
                          if (*v187 || *(v187 + 152) || *(v187 + 156))
                          {
                            v186 = v155 + 404;
                            v206 = *(v187 + 56);
                            goto LABEL_221;
                          }
                        }

                        v155 += 4;
                        ++v157;
                        ++v158;
                        ++v300;
                        if (4 * v294 == v155)
                        {
                          goto LABEL_223;
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

uint64_t CAHDecViolaHevc::getTileIdxAbove(CAHDecViolaHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 452);
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

uint64_t CAHDecViolaHevc::populateAvdWork(CAHDecViolaHevc *this, unsigned int a2)
{
  v2 = this;
  v118[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8212);
  v7 = *(v3 + 8168);
  v8 = *(v3 + 8176);
  v84 = *(v3 + 8184);
  v9 = *(v3 + 8924);
  v10 = *(v3 + 2960);
  v11 = *(v3 + 2964);
  v12 = v8 + 9856 * v6;
  v98 = v4 + 216292;
  v118[0] = v4 + 216292;
  v118[1] = v4 + 306404;
  v117 = 0;
  v86 = v7 + 23176 * v5;
  v82 = v4;
  if (v9)
  {
    if (*(v12 + 53))
    {
      v14 = *(v86 + 22888) > 1u;
    }

    else
    {
      v14 = 0;
    }

    v13 = v14 && v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v96 = *(v4 + 454) * *(v4 + 452);
  if ((v9 & 2) != 0 && *(v12 + 52))
  {
    if (*(v12 + 53) | v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v96 > 1;
    }

    v17 = v16;
    v110 = v17;
  }

  else
  {
    v110 = 0;
  }

  v81 = v4 + 306404;
  if ((v9 & 0x20) != 0 && !*(v12 + 53))
  {
    v18 = *(v86 + 22888);
    if (*(v12 + 52) | v11)
    {
      v67 = 0;
    }

    else
    {
      v67 = v10 > 1;
    }

    v68 = v67;
    v94 = v68;
  }

  else
  {
    v18 = *(v86 + 22888);
    v94 = 0;
  }

  v19 = 0;
  v20 = *(v86 + 22880);
  v100 = v12;
  if (((v9 & 4) == 0) | (v13 | v110) & 1)
  {
    v21 = v4 + 216292;
  }

  else
  {
    v21 = v4 + 216292;
    if ((v94 & 1) == 0)
    {
      v19 = *(*(this + *(this + 13) + 34) + 16) & 1;
      v21 = v118[v19];
    }
  }

  v22 = 0;
  v108 = 0;
  v23 = 0;
  v103 = 0;
  v24 = 0;
  v113 = 0;
  v25 = 0;
  v109 = 0;
  v104 = 0;
  v85 = 0;
  v90 = 0;
  v99 = 0;
  v107 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v98) >> 2);
  v114 = 0;
  v115 = 0;
  if (v13)
  {
    v26 = 12;
  }

  else
  {
    v26 = 4;
  }

  v92 = v26;
  v93 = a2 - 1;
  v88 = v18 - 1;
  v89 = v18;
  v87 = v18 - 2;
  v95 = v4 + 3036;
  v101 = v20;
  do
  {
    v27 = v84 + 2360 * v22;
    if (!((*(v100 + 52) != 0) | v13 & 1))
    {
      v30 = 1;
LABEL_39:
      v31 = 0;
      v91 = 0;
      v97 = 356 * v22;
      v105 = v30;
      v106 = v84 + 2360 * v22;
      v102 = v22;
      while (1)
      {
        if (!(v31 | v22))
        {
          v36 = v2;
          v37 = v27;
          v38 = v13;
          *(v21 + 4) = 0;
          v39 = v19;
          *(v21 + 6) = v19;
          *(v21 + 8) = 0;
          *(v21 + 12) = 0;
          v103 = *(v95 + v97);
          if (!(*(**(v36 + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v40 = *(v37 + 36);
          *(v21 + 28) = v40;
          *(v21 + 32) = v40;
          v41 = (*(*v36 + 80))(v36, v23, v20);
          v24 = 0;
          *(v21 + 40) = v41;
          v42 = 271;
          v19 = v39;
          v13 = v38;
          v27 = v37;
          goto LABEL_132;
        }

        v111 = v19;
        v32 = v13;
        if (v31)
        {
          v33 = *(*(v27 + 1904) + 4 * v31 - 4) + 1;
          if (*(v100 + 52))
          {
            if (*(v100 + 53))
            {
              v34 = *(v86 + 22880);
              v35 = (v34 + v113) / v34;
              v33 += v91;
              if (v35 >= *(*(v2 + 33) + 2 * (HIDWORD(v85) + 1) + 498))
              {
                v113 = (*(*v2 + 72))(v2, (v23 + 1), v101);
                v91 = 0;
                v25 = v92;
              }

              else
              {
                v113 = v90 + v35 * v34;
                if (!v32)
                {
                  v91 = v33;
                  v13 = v32;
                  v20 = v101;
                  goto LABEL_133;
                }

                v91 = 0;
                if (v35 == v85 + 1)
                {
                  v25 = 72;
                }

                else
                {
                  v25 = 8;
                }
              }
            }

            else
            {
              v113 = (*(*v2 + 72))(v2, (v23 + 1), v101);
              v25 = 4;
            }
          }

          else if (v32)
          {
            v113 = (*(v86 + 22880) + v113) / *(v86 + 22880) * *(v86 + 22880);
            v25 = 8;
          }

          v49 = v115;
          if (*v115 || *(v115 + 152) || *(v115 + 156))
          {
            v50 = v114;
            if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 136315394;
              *(buf + 4) = "populateAvdWork";
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = 1746;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v50 = v114;
            }

            v51 = v24 + v50;
            v2 = this;
            result = CAHDec::addToPatcherList(this, v49, 44 * v107 + 216312, v51, 0xFFFFFFFFLL, 0, -1, 4);
            if (result)
            {
              return result;
            }
          }

          *(v21 + 24) = v33;
          v24 += v33;
          v13 = v32;
        }

        else
        {
          v43 = v115;
          if (*v115 || *(v115 + 152) || *(v115 + 156))
          {
            v44 = v114;
            if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 136315394;
              *(buf + 4) = "populateAvdWork";
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = 1675;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v44 = v114;
            }

            result = CAHDec::addToPatcherList(v2, v43, 44 * v107 + 216312, v24 + v44, 0xFFFFFFFFLL, 0, -1, 4);
            if (result)
            {
              return result;
            }
          }

          *(v21 + 24) = v103 - v24;
          v46 = *(v95 + v97);
          if (!(*(**(v2 + 32) + 440))(*(v2 + 32), v102, &v115, &v114))
          {
            return 0xFFFFFFFFLL;
          }

          v103 = v46;
          v47 = *(v27 + 36);
          if (*(v27 + 32))
          {
            v25 = 2;
          }

          else
          {
            v25 = 258;
          }

          v13 = v32;
          v113 = *(v27 + 36);
          if (v32)
          {
            v20 = v101;
            if (v47 % v101 == v90)
            {
              v24 = 0;
              if (v47 / v101 == v85 + 1)
              {
                v48 = 72;
              }

              else
              {
                v48 = 8;
              }

              v25 |= v48;
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_82;
          }

          v24 = 0;
        }

        v20 = v101;
LABEL_82:
        v52 = v23 + 1;
        if (v23 + 1 < v96)
        {
          v53 = (*(*v2 + 72))(v2, (v23 + 1), v20);
          v54 = v92;
          if (v113 != v53)
          {
            v54 = 0;
          }

          v25 |= v54;
        }

        *(v21 + 16) = v25;
        if (v108 == v93)
        {
          *(v21 + 18) |= 2u;
        }

        if (v23 == v96 - 1)
        {
          *(v21 + 18) |= 4u;
        }

        v55 = v110;
        if (v23 != v96 - 2)
        {
          v55 = 0;
        }

        if (v55 == 1)
        {
          *(v21 + 18) |= 4u;
        }

        if (v13)
        {
          v56 = *(v21 + 10);
          v57 = v89 > 1 && v87 == v56;
          v58 = v57;
          if (v88 == v56 || v58)
          {
            *(v21 + 18) |= 8u;
          }
        }

        if ((v25 & 4) != 0)
        {
          if (*(v100 + 52) && *(v100 + 53))
          {
            v59 = *(v2 + 33);
            v60 = *(v59 + 452);
            HIDWORD(v85) = v52 / v60;
            v90 = *(v59 + 2 * (v52 % v60) + 456);
            LODWORD(v85) = *(v59 + 2 * (v52 / v60) + 498);
            v99 = (v111 + v85) ^ 1;
          }

          v23 = (v23 + 1);
        }

        if ((v25 & 0x44) != 0 && v109 <= (*(*v2 + 88))(v2, v23))
        {
          v25 |= 0x20u;
        }

        if (!v31)
        {
          v61 = v104;
          if (!*(v106 + 32))
          {
            v61 = v113;
          }

          v104 = v61;
          v62 = v109;
          if (!*(v106 + 32))
          {
            v62 = v23;
          }

          v109 = v62;
        }

        if ((v25 & 0x44) != 0)
        {
          v63 = *(*(v2 + 33) + 452);
          if (v109 / v63 + 1 == v23 / v63)
          {
            v25 |= 0x10u;
          }
        }

        v64 = (v99 + (v113 / v20)) & 1;
        if (!v13)
        {
          v64 = v111;
        }

        if (v110)
        {
          v65 = v23 & 1;
        }

        else
        {
          v65 = v64;
        }

        ++*(&v118[-1] + v111);
        v118[v111] += 44;
        v66 = v94 ^ 1;
        if (v31)
        {
          v66 = 1;
        }

        if ((v66 & 1) == 0 && !*(v106 + 32))
        {
          v65 = v65 == 0;
        }

        v21 = v118[v65];
        v107 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v98) >> 2);
        *(v21 + 4) = *(&v118[-1] + v65);
        *(v21 + 6) = v65;
        *(v21 + 8) = v102;
        *(v21 + 10) = v113 / v20;
        *(v21 + 12) = v23;
        *(v21 + 28) = v113;
        *(v21 + 32) = v104;
        *(v21 + 40) = (*(*this + 80))(this, v23, v20);
        v42 = v25;
        v19 = v65;
        v22 = v102;
        v108 = v102;
        v27 = v106;
LABEL_132:
        *(v21 + 14) = v42;
        v2 = this;
LABEL_133:
        if (v105 == ++v31)
        {
          goto LABEL_36;
        }
      }
    }

    v28 = *(v27 + 1896);
    v29 = __CFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      goto LABEL_39;
    }

LABEL_36:
    ++v22;
  }

  while (v22 != a2);
  v69 = v19;
  v70 = v115;
  if (!*v115 && !*(v115 + 152) && !*(v115 + 156))
  {
    goto LABEL_153;
  }

  v71 = v114;
  if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 1836;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v71 = v114;
  }

  v2 = this;
  result = CAHDec::addToPatcherList(this, v70, 44 * v107 + 216312, v24 + v71, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_153:
    *(v21 + 24) = v103 - v24;
    *(v21 + 16) = 917519;
    ++*(&v118[-1] + v69);
    if (v94)
    {
      v72 = v98;
      buf[0] = v98;
      buf[1] = v81;
      v73 = *(v82 + 216300) + 1;
      if (v73 >= a2)
      {
        v74 = 0;
        v76 = buf;
      }

      else
      {
        v74 = 0;
        v75 = 0;
        v76 = buf;
        do
        {
          if (*(v72 + 4) + 1 == *(&v118[-1] + v74))
          {
            v75 = !v75;
            *(v72 + 36) = *(buf[v75] + 32);
          }

          else
          {
            if (v73 != *(v72 + 52))
            {
              v75 = !v75;
              *(v72 + 36) = *(buf[v75] + 32);
            }

            *v76 = v72 + 44;
          }

          v74 = v75;
          v76 = &buf[v75];
          v72 = *v76;
          v73 = *(*v76 + 8) + 1;
        }

        while (v73 < a2);
      }

      v77 = *(&v118[-1] + v74);
      if (*(v72 + 4) + 1 != v77)
      {
        do
        {
          v78 = *(v72 + 48);
          v72 += 44;
        }

        while (v78 + 1 != v77);
        *v76 = v72;
      }

      *(v72 + 36) = *(v72 + 40) + 1;
    }

    result = 0;
    v79 = *(v2 + 33);
    v80 = WORD2(v117);
    *(v79 + 28) = v117;
    *(v79 + 30) = v80;
    *(v79 + 32) = 216292;
    *(v79 + 36) = 306404;
  }

  return result;
}

uint64_t CAHDecViolaHevc::allocWorkBuf_SPS(CAHDecViolaHevc *this, _DWORD *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a2 + 5120;
  v5 = a2[902];
  v6 = a2[903];
  v7 = a2[900];
  if (v5 < (*(*this + 104))(this) || (v8 = a2[903], v8 < (*(*this + 112))(this)) || (v9 = a2[909], v9 > (*(*this + 120))(this) - 8) || (v10 = a2[910], v10 > (*(*this + 128))(this) - 8) || (v17 = v4[598], v17 - 16 > 0x30) || ((1 << (v17 - 16)) & 0x1000000010001) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2[902];
      v12 = a2[903];
      v13 = a2[909];
      v14 = a2[910];
      v15 = v4[598];
      v50 = 136316418;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = v11;
      v54 = 1024;
      *v55 = v12;
      *&v55[4] = 1024;
      *&v55[6] = v13;
      v56 = 1024;
      v57 = v14;
      v58 = 1024;
      v59 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported bit stream w %d h %d bd %d %d CtbSizeY %d\n", &v50, 0x2Au);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = v5 + 31;
  if (v5 < -31)
  {
    v18 = v5 + 62;
  }

  v19 = v18 >> 5;
  v20 = v6 + 31;
  if (v6 < -31)
  {
    v20 = v6 + 62;
  }

  v21 = v20 >> 5;
  v22 = 32 - __clz(v19 - 1);
  if (v19 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = 32 - __clz(v21 - 1);
  if (v21 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = ((32 << (v25 + v23)) + 127) & 0xFFFFFF80;
  if (v7)
  {
    v27 = v5 << (v7 == 3);
    v28 = v27 + 31;
    v29 = v27 + 62;
    if (v28 >= 0)
    {
      v29 = v28;
    }

    v30 = v29 >> 5;
    if (v7 == 1)
    {
      v31 = v6 + 1;
    }

    else
    {
      v31 = v6;
    }

    v32 = v31 >> (v7 == 1);
    v34 = v32 + 15;
    v33 = v32 < -15;
    v35 = v32 + 30;
    if (!v33)
    {
      v35 = v34;
    }

    v36 = v35 >> 4;
    if (v30 > 1)
    {
      v37 = 32 - __clz(v30 - 1);
      goto LABEL_32;
    }
  }

  else
  {
    v36 = 0;
  }

  LOBYTE(v37) = 0;
LABEL_32:
  v38 = 32 - __clz(v36 - 1);
  if (v36 >= 2)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = ((8 << (v39 + v37)) + 127) & 0xFFFFFF80;
  if (!v7)
  {
    v40 = 0;
  }

  *(this + 2948) = v26;
  *(this + 2949) = v40;
  *(this + 1475) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 2954) = v41;
  *(this + 2953) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 7568);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 2953);
      if (v48)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v46, v48, 7, 1, 0))
        {
          break;
        }
      }

      result = 0;
      v46 += 11;
      if (!--v47)
      {
        return result;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 2097;
    v54 = 2080;
    *v55 = "MvColo";
    v49 = MEMORY[0x277D86220];
  }

  else
  {
    v42 = (this + 3344);
    v43 = 16;
    while (1)
    {
      v44 = *(this + 2948);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2088;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 2949);
      if (v45)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v42, v45, 7, 1, 0))
        {
          break;
        }
      }

      v42 += 11;
      if (!--v43)
      {
        goto LABEL_44;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 2089;
    v54 = 2080;
    *v55 = "HdrC";
    v49 = MEMORY[0x277D86220];
  }

LABEL_55:
  _os_log_impl(&dword_277606000, v49, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
LABEL_56:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecViolaHevc::allocWorkBuf_PPS(CAHDecViolaHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = (a2[909] + 9) & 0xFFFFFFFE;
  v5 = (a2[910] + 9) & 0xFFFFFFFE;
  if (v4 <= v5)
  {
    v6 = (a2[910] + 9) & 0xFFFFFFFE;
  }

  else
  {
    v6 = (a2[909] + 9) & 0xFFFFFFFE;
  }

  v7 = a2[900];
  if (v6 == 10)
  {
    v8 = 40;
  }

  else
  {
    v8 = 48;
  }

  if (v6 == 8)
  {
    v8 = 32;
  }

  v9 = v7 != 3;
  if (*(a3 + 52))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1106] + a2[1105];
    v16 = a3[14];
    v17 = a2[5718];
    v18 = a2[902];
    do
    {
      v19 = a3[v10 + 17] + 1;
      v20 = v19 * v17;
      if (v19 * v17 + v13 > v18)
      {
        v20 = v18 - v13;
      }

      if (v11 <= v20)
      {
        v11 = v20;
      }

      if (v7)
      {
        v21 = (v19 << v15) >> v9;
        if (v16 == v10)
        {
          v21 = (((v18 >> 3) - (v14 << v15)) >> v9) + 1;
        }

        v12 += ((v21 + 2 * (v10 != 0)) * v8 + 127) & 0xFFFFFF80;
      }

      v13 += v20;
      v14 += v19;
      ++v10;
    }

    while (v16 + 1 != v10);
  }

  else
  {
    v18 = a2[902];
    v22 = (v8 + v8 * (v18 >> 3 >> v9) + 127) & 0x7FFFFF80;
    if (v7)
    {
      v12 = v22;
    }

    else
    {
      v12 = 0;
    }

    v11 = a2[902];
  }

  v23 = 0;
  v25 = *(this + 32);
  if (v11 >= -15)
  {
    v26 = v11 + 15;
  }

  else
  {
    v26 = v11 + 30;
  }

  v27 = a3[14];
  if (*(a3 + 52))
  {
    v28 = a3[14];
  }

  else
  {
    v28 = 0;
  }

  v67 = v28;
  if (v7 == 3)
  {
    v29 = 48;
  }

  else
  {
    v29 = 32;
  }

  if (v7 == 3)
  {
    v30 = 176;
  }

  else
  {
    v30 = 128;
  }

  if (!v7)
  {
    v29 = 16;
  }

  v31 = (v29 * v6) >> 3;
  if (!v7)
  {
    v30 = 80;
  }

  v65 = v26;
  v66 = v30;
  v32 = v26 >> 4;
  v33 = (v26 >> 4) * v31;
  v34 = 0;
  v35 = 0;
  if (!*(a3 + 52))
  {
    v59 = 0;
LABEL_84:
    v68 = v59;
    goto LABEL_85;
  }

  v68 = 0;
  if (v27)
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v23 = 0;
    v37 = 0;
    if (v7 == 1)
    {
      v38 = 144;
    }

    else
    {
      v38 = 192;
    }

    if (v7 == 1)
    {
      v39 = 24;
    }

    else
    {
      v39 = 32;
    }

    v40 = v7 == 0;
    if (v7)
    {
      v41 = v38;
    }

    else
    {
      v41 = 96;
    }

    v42 = (((v41 * v6) >> 3) + 7) & 0x3FFFFFF8;
    if (v40)
    {
      v43 = 16;
    }

    else
    {
      v43 = v39;
    }

    v44 = a2[903];
    v45 = v4 - 8;
    v46 = v5 - 8;
    if (v45 <= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    v48 = a3[15];
    v49 = a2[5718];
    v50 = (a3 + 37);
    v52 = *(v25 + 2644) == 1 && v47 != 0;
    do
    {
      v53 = v49 + v49 * *&v50[4 * v36];
      if (v53 + v37 > v44)
      {
        v53 = v44 - v37;
      }

      v54 = v53 + 15;
      if (v53 < -15)
      {
        v54 = v53 + 30;
      }

      if (v36)
      {
        v55 = (v54 >> 4) + 1;
      }

      else
      {
        v55 = v54 >> 4;
      }

      v56 = v55 * v42;
      if (v35 <= v56)
      {
        v35 = v56;
      }

      if (v34 <= (36 * (v54 >> 4)))
      {
        v34 = 36 * (v54 >> 4);
      }

      if (v52)
      {
        if (v48 == v36)
        {
          v57 = 23;
        }

        else
        {
          v57 = 15;
        }

        v58 = ((v57 + v53) / 16 * v43) | 6;
        if (v23 <= v58)
        {
          v23 = v58;
        }
      }

      v37 += v53;
      ++v36;
    }

    while (v48 + 1 != v36);
    v59 = (((3 * v6) & 0x7FFFFF) << 6) + (((v44 + 7) >> 3) + 2) * ((((v6 >> 1) & 0x1FFFFF) << 8) | 8);
    goto LABEL_84;
  }

LABEL_85:
  if (v33 && CAVDDecoder::allocAVDMem(v25, this + 649, v33, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2267;
      v73 = 2080;
      v74 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_121:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_122;
    }

    goto LABEL_122;
  }

  if ((v11 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 4 * (4 * v32 + (v65 >> 4)), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2268;
      v73 = 2080;
      v74 = "MvAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

LABEL_122:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v61 = v67 + ((v18 + 15) >> 4);
  v62 = v61 * ((((v66 * v6) >> 3) + 7) & 0x3FFFFFF8) + (v27 << 7);
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2269;
      v73 = 2080;
      v74 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2270;
      v73 = 2080;
      v74 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2271;
      v73 = 2080;
      v74 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2272;
      v73 = 2080;
      v74 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v23, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2273;
      v73 = 2080;
      v74 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), this + 715, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2274;
      v73 = 2080;
      v74 = "AZAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (!v68)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 726, v68, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2275;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t CAHDecViolaHevc::freeWorkBuf_SPS(uint64_t this)
{
  v1 = this;
  if (!*(*(this + 256) + 2648))
  {
    v2 = (this + 3344);
    v3 = 16;
    do
    {
      if (*(v2 - 352))
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2 - 352);
        *(v2 - 352) = 0;
      }

      if (*v2)
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2);
        *v2 = 0;
      }

      v2 += 22;
      --v3;
    }

    while (v3);
  }

  v4 = (v1 + 7568);
  v5 = 16;
  do
  {
    if (*v4)
    {
      this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v4);
      *v4 = 0;
    }

    v4 += 22;
    --v5;
  }

  while (v5);
  return this;
}

uint64_t *CAHDecViolaHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1298])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1298);
    v2[1298] = 0;
  }

  if (v2[924])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 924);
    v2[924] = 0;
  }

  if (v2[1320])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1320);
    v2[1320] = 0;
  }

  if (v2[1342])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1342);
    v2[1342] = 0;
  }

  if (v2[1364])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1364);
    v2[1364] = 0;
  }

  if (v2[1386])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1386);
    v2[1386] = 0;
  }

  if (v2[1408])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1408);
    v2[1408] = 0;
  }

  if (v2[1430])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1430);
    v2[1430] = 0;
  }

  if (v2[1452])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1452);
    v2[1452] = 0;
  }

  return this;
}

uint64_t CAHDecViolaHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 11808) = a2;
  return this;
}

CAHDec *createViolaAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x3EE0uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecViolaAvc::CAHDecViolaAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecViolaAvc::CAHDecViolaAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666BF8;
  *(v4 + 256) = a2;
  *(v4 + 456) = 948 * *(a2 + 7388) + 165600;
  *(v4 + 8) = 1760;
  *(v4 + 16) = xmmword_27775C5E0;
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

void CAHDecViolaAvc::~CAHDecViolaAvc(CAHDecViolaAvc *this)
{
  *this = &unk_288666BF8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecViolaAvc::~CAHDecViolaAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecViolaAvc::init(CAHDecViolaAvc *this)
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

uint64_t CAHDecViolaAvc::initPicture(CAHDecViolaAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 948 * *(*(this + 32) + 7388) + 165600;
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

uint64_t CAHDecViolaAvc::populateSlices(CAHDecViolaAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 1760;
    v5 = a2;
    do
    {
      CAHDecViolaAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 948;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecViolaAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v6 = 0;
  v108 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 256);
  v8 = *(v7 + 3500);
  v9 = *(v7 + 3504);
  v10 = *(v7 + 3192);
  v11 = *(v7 + 3184);
  v12 = *(v7 + 6952);
  v13 = *(v7 + 3208);
  v14 = *(v7 + 3200) + 1848 * a3;
  *(a2 + 4) = 0;
  v15 = 32 * (*(v14 + 1424) & 3);
  *(a2 + 4) = v15;
  if (*(v14 + 24) != 2)
  {
    v6 = (*(v14 + 63) & 0xF) << 11;
  }

  v16 = v6 | v15;
  *(a2 + 4) = v16;
  v93 = v11;
  v94 = v8;
  if (*(v14 + 24) == 1)
  {
    v17 = (*(v14 + 64) & 0xF) << 7;
  }

  else
  {
    v17 = 0;
  }

  v19 = v17 | v16;
  *(a2 + 4) = v19;
  if (*(v14 + 24) == 1)
  {
    v20 = (*(v14 + 61) == 0) << 15;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v19 & 0x7FFF7FE0;
  *(a2 + 4) = v21;
  if (*(v14 + 24))
  {
    v22 = 0x20000;
  }

  else
  {
    v22 = 0x10000;
  }

  if (*(v14 + 24) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  *(a2 + 4) = v23 | v21 & 0xFFFFFFE0;
  if (*(v14 + 24) != 1)
  {
    goto LABEL_20;
  }

  v24 = v13 + 13040 * a3 + 7224;
  *(v14 + 1832) = v24;
  if ((*(v13 + 13040 * a3 + 7227) & 1) != 0 || (v25 = *(v13 + 13040 * a3 + 7256), *(a1 + 4 * v25 + 464)))
  {
    v26 = 16;
  }

  else
  {
    if (!*(a1 + 15900))
    {
      *(a1 + 15960) = *(v13 + 13040 * a3 + 7264);
      *(a1 + 15952) = v25;
      *(a1 + 15900) = 1;
      *(a2 + 4) |= 0x40000u;
      v24 = *(v14 + 1832);
      if (!v24 || !*(a1 + 15900))
      {
        goto LABEL_20;
      }
    }

    v88 = *(v24 + 40);
    if (v88 == *(a1 + 15960))
    {
      goto LABEL_20;
    }

    *(a1 + 15960) = v88;
    *(a1 + 15952) = *(v24 + 32);
    v26 = 0x40000;
  }

  *(a2 + 4) |= v26;
LABEL_20:
  *(a2 + 920) = 0;
  v27 = *(a2 + 4);
  if (*(v14 + 24) == 1 && (v27 & 0x40000) != 0)
  {
    v29 = (a1 + 176 * *(*(v14 + 1832) + 32));
    v30 = v29[658];
    v31 = v29[660];
    v105 = v29[659];
    v106 = v31;
    v107 = v29[661];
    v32 = v29[654];
    v33 = v29[656];
    v101 = v29[655];
    v102 = v33;
    v103 = v29[657];
    v104 = v30;
    v34 = v29[652];
    *buf = v29[651];
    *&buf[16] = v34;
    v99 = v29[653];
    v100 = v32;
    *(a1 + 15900) = 1;
    if (*buf || *(&v106 + 1))
    {
      result = CAHDec::addToPatcherList(a1, buf, 948 * a3 + 2680, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4);
      if (result)
      {
        return result;
      }
    }

    v27 = *(a2 + 4);
  }

  v91 = a3;
  v92 = a1;
  v90 = (v10 + 604 * v9);
  v95 = a2;
  *(a2 + 4) = v27 & 0x77FFFF | 0x2D000000;
  v36 = *(v14 + 24);
  if (v36 <= 1)
  {
    v37 = v7 + 6760;
    v38 = v13 + 13040 * a3;
    if (*(v38 + 13032))
    {
      v39 = 0;
      v40 = a2 + 8;
      v41 = v38 + 1416;
      v42 = MEMORY[0x277D86220];
      do
      {
        v43 = (16 * (v39 & 0xF)) | 0x2DC00000;
        *(v40 + 4 * v39) = v43;
        if (v12)
        {
          v44 = 0;
          while (*(*(v37 + 8 * v44) + 12) != *(v41 + 176 * v39 + 12))
          {
            if (v12 == ++v44)
            {
              goto LABEL_35;
            }
          }

          *(v40 + 4 * v39) = v44 & 0xF | v43;
        }

        else
        {
LABEL_35:
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(v41 + 176 * v39 + 32);
            *buf = 67109632;
            *&buf[4] = v39;
            *&buf[8] = 1024;
            *&buf[10] = v45;
            *&buf[14] = 1024;
            *&buf[16] = v12;
            _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v39;
      }

      while (v39 < *(v38 + 13032));
      v36 = *(v14 + 24);
    }

    else
    {
      LODWORD(v39) = 0;
    }

    if (v36 == 1 && *(v38 + 13036))
    {
      v46 = 0;
      v47 = a2 + 8;
      v48 = v38 + 7224;
      v49 = MEMORY[0x277D86220];
      do
      {
        v50 = (16 * (v46 & 0xF)) | 0x2DC00100;
        *(v47 + 4 * v39) = v50;
        if (v12)
        {
          v51 = 0;
          while (*(*(v37 + 8 * v51) + 12) != *(v48 + 176 * v46 + 12))
          {
            if (v12 == ++v51)
            {
              goto LABEL_48;
            }
          }

          *(v47 + 4 * v39) = v51 & 0xF | v50;
        }

        else
        {
LABEL_48:
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(v48 + 176 * v46 + 32);
            *buf = 67109632;
            *&buf[4] = v39;
            *&buf[8] = 1024;
            *&buf[10] = v52;
            *&buf[14] = 1024;
            *&buf[16] = v12;
            _os_log_impl(&dword_277606000, v49, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v39) = v39 + 1;
        ++v46;
      }

      while (v46 < *(v38 + 13036));
    }
  }

  *(a2 + 136) = 0x2DD0000000000000;
  v53 = 87;
  if (*(v14 + 24) == 1)
  {
    v53 = 88;
  }

  v54 = ((v90[v53] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v54;
  v55 = v54 & 0xFFFFFFC7 | (8 * (*(v14 + 376) & 7));
  *(a2 + 140) = v55;
  v56 = *(v93 + 2224 * v94 + 4);
  if (*(v93 + 2224 * v94 + 4))
  {
    v56 = *(v14 + 377) & 7;
  }

  v57 = v56 | v55;
  *(a2 + 140) = v57;
  v58 = *(v14 + 24);
  if (v58 != 1)
  {
    goto LABEL_130;
  }

  v59 = v90[88];
  if (v59 != 2)
  {
    goto LABEL_60;
  }

  *(a2 + 140) = v57 & 0x2DD000C0 | 0x2D;
  v58 = *(v14 + 24);
  if (v58 != 1)
  {
LABEL_130:
    if (v58 || !v90[87])
    {
      goto LABEL_80;
    }

LABEL_64:
    v60 = 0;
    v61 = 0;
    v62 = a2 + 144;
    v63 = a2 + 528;
    do
    {
      if (*(v14 + 378 + v61))
      {
        v64 = ((v61 & 0xF) << 9) | 0x2DE04000;
        *(v62 + 4 * v60) = v64;
        *(v62 + 4 * v60) = v64 | *(v14 + 394 + 2 * v61) & 0x1FF;
        *(v63 + 4 * v60) = 770703360;
        *(v63 + 4 * v60++) = *(v14 + 426 + 2 * v61) | 0x2DF00000;
      }

      if (*(v14 + 458 + v61))
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = v66;
          v68 = (((v61 & 0xF) << 9) | (v65 << 14)) + 769687552;
          *(v62 + 4 * v60) = v68;
          *(v62 + 4 * v60) = v68 | *(v14 + 474 + 4 * v61 + 2 * v65) & 0x1FF;
          *(v63 + 4 * v60) = 770703360;
          *(v63 + 4 * v60++) = *(v14 + 538 + 4 * v61 + 2 * v65) | 0x2DF00000;
          v65 = 1;
          v66 = 0;
        }

        while ((v67 & 1) != 0);
      }

      ++v61;
    }

    while (v61 <= *(v14 + 63));
    if (*(v14 + 24) == 1)
    {
      v69 = 0;
      do
      {
        if (*(v14 + 602 + v69))
        {
          v70 = ((v69 & 0xF) << 9) + 769679360;
          *(v62 + 4 * v60) = v70;
          *(v62 + 4 * v60) = v70 | *(v14 + 618 + 2 * v69) & 0x1FF;
          *(v63 + 4 * v60) = 770703360;
          *(v63 + 4 * v60++) = *(v14 + 650 + 2 * v69) | 0x2DF00000;
        }

        if (*(v14 + 682 + v69))
        {
          v71 = 0;
          v72 = 1;
          do
          {
            v73 = v72;
            v74 = (((v69 & 0xF) << 9) | (v71 << 14)) + 769695744;
            *(v62 + 4 * v60) = v74;
            *(v62 + 4 * v60) = v74 | *(v14 + 698 + 4 * v69 + 2 * v71) & 0x1FF;
            *(v63 + 4 * v60) = 770703360;
            *(v63 + 4 * v60++) = *(v14 + 762 + 4 * v69 + 2 * v71) | 0x2DF00000;
            v71 = 1;
            v72 = 0;
          }

          while ((v73 & 1) != 0);
        }

        ++v69;
      }

      while (v69 <= *(v14 + 64));
    }

    *(a2 + 136) = v60;
    goto LABEL_80;
  }

  v59 = v90[88];
LABEL_60:
  if (v59 == 1)
  {
    goto LABEL_64;
  }

LABEL_80:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v90[89] + *(v14 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  *(a2 + 916) = 0;
  v75 = (*(v14 + 1428) == 0) << 17;
  *(a2 + 916) = v75;
  if (*(v14 + 1428) != 1)
  {
    v76 = v75 | 0x10000;
    *(a2 + 916) = v76;
    v77 = v76 | ((*(v14 + 1429) & 0xF) << 8);
    *(a2 + 916) = v77;
    v75 = v77 | ((*(v14 + 1430) & 0xF) << 12);
  }

  *(a2 + 916) = v75 | 0x2DA00000;
  v78 = *(v14 + 1436);
  if (v90[3])
  {
    v79 = 0;
    if ((v78 & 7) != 0)
    {
      *(v14 + 1436) = (v78 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v79 = *(v14 + 1436) & 7;
  }

  *(a2 + 924) = (v79 << 15) | 0x2D800000;
  v80 = *(v92 + 256);
  v81 = *(v80 + 626);
  v96 = 0;
  v97 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v80, v91, &v97, &v96))
  {
    return 0xFFFFFFFFLL;
  }

  v82 = v97;
  if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
  {
    goto LABEL_94;
  }

  v83 = v96;
  if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1622;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v83 = v96;
  }

  result = CAHDec::addToPatcherList(v92, v82, 948 * v91 + 2692, v83, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_94:
    v84 = *(v14 + 16) - (*(v14 + 1436) >> 3);
    *(v95 + 936) = v84;
    if (*(v80 + 590) == 1)
    {
      *(v95 + 944) = 0;
      v85 = *(v14 + 1840);
      if (*(v80 + 605))
      {
        if (v84 < v85)
        {
          v85 = v84;
        }

        if (v79)
        {
          v86 = v85 == 0;
        }

        else
        {
          v86 = 0;
        }

        if (v86)
        {
          v85 = 1;
        }

        v87 = v85 | v81 & 0x10000;
      }

      else
      {
        v89 = 0;
        if ((v81 & 0x200000) != 0)
        {
          if (v79 && !*(v14 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "int CAHDecViolaAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v84 = *(v95 + 936);
              v89 = *(v95 + 944) & 0x1F0000;
            }

            else
            {
              v89 = 0;
            }

            v85 = 1;
          }
        }

        else if (v79)
        {
          ++v85;
        }

        if (v85 >= v84)
        {
          v85 = v84;
        }

        v87 = v89 & 0xFFDFFFFF | (v85 << 22) | v81 | (((v81 >> 20) & 1) << 21);
      }

      result = 0;
      *(v95 + 944) = v87;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecViolaAvc::updateCommonRegisters(CAHDecViolaAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecViolaAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775C5F0;
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
    v31 = a6 + (dword_27775C608[v26] << 6);
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

void CAHDecViolaAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775C670;
            v10 = xmmword_27775C680;
            v11 = unk_27775C690;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775C630;
            v10 = xmmword_27775C640;
            v11 = unk_27775C650;
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

void CAHDecViolaAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775C670;
              v9 = xmmword_27775C680;
              v10 = unk_27775C690;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775C630;
              v9 = xmmword_27775C640;
              v10 = unk_27775C650;
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

uint64_t CAHDecViolaAvc::populateSequenceRegisters(CAHDecViolaAvc *this)
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

    CAHDecViolaAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecViolaAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 648, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecViolaAvc::populateDARTAddr(uint64_t this, unsigned int a2)
{
  v2 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(this + 256);
  v4 = v3 + 2104;
  memset(v20, 0, sizeof(v20));
  v5 = v3 + 392 * a2;
  v6 = xmmword_27775BCD0;
  v7 = v5 + 6960;
  v8 = *(v5 + 7344);
  v9 = *(this + 8 * *(v4 + 232 * a2 + 228) + 272);
  v10 = vdupq_n_s64(v7);
  v11 = vdupq_n_s64(2uLL);
  do
  {
    v20[v2] = vaddq_s64(v10, vshlq_n_s64(v6, 4uLL));
    v6 = vaddq_s64(v6, v11);
    ++v2;
  }

  while (v2 != 12);
  v12 = (v4 + 232 * a2);
  v13 = v9[49];
  v9[49] = v13 & 0xFE000000 | ((v12[15] + v12[6]) >> 7);
  v14 = v9[51];
  v9[51] = v14 & 0xFE000000 | ((v12[16] + v12[6]) >> 7);
  if (*(*(this + 256) + 2648) == 1)
  {
    v9[49] = v13 & 0xFE000000 | ((v12[15] + v12[6]) >> 7);
    v9[51] = v14 & 0xFE000000 | ((v12[16] + v12[6]) >> 7);
    v9[48] = v9[48] & 0xFE000000 | ((v12[18] + v12[6]) >> 7);
    v9[50] = v9[50] & 0xFE000000 | ((v12[19] + v12[6]) >> 7);
  }

  if (v8)
  {
    v15 = v9 + 116;
    v16 = v20;
    do
    {
      v17 = *v16;
      if (!*(*v16 + 12))
      {
        v18 = *(v15 - 32);
        *(v15 - 32) = v18 & 0xFE000000 | ((*(*v17 + 52) + *(*v17 + 16)) >> 7);
        v19 = *v15;
        *v15 = *v15 & 0xFE000000 | ((*(*v17 + 56) + *(*v17 + 16)) >> 7);
        if (*(*(this + 256) + 2648) == 1)
        {
          *(v15 - 32) = v18 & 0xFE000000 | ((*(*v17 + 52) + *(*v17 + 16)) >> 7);
          *v15 = v19 & 0xFE000000 | ((*(*v17 + 56) + *(*v17 + 16)) >> 7);
          *(v15 - 48) = *(v15 - 48) & 0xFE000000 | ((*(*v17 + 64) + *(*v17 + 16)) >> 7);
          *(v15 - 16) = *(v15 - 16) & 0xFE000000 | ((*(*v17 + 68) + *(*v17 + 16)) >> 7);
        }
      }

      v16 = (v16 + 8);
      ++v15;
      --v8;
    }

    while (v8);
  }

  return this;
}

uint64_t CAHDecViolaAvc::populatePictureRegisters(CAHDecViolaAvc *this)
{
  v221 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v7 = *(v2 + 2088);
  v8 = *(v2 + 3040);
  v9 = *(v2 + 2644);
  v204 = *(v2 + 8);
  v205 = *(v2 + 3020);
  v10 = *(v2 + 6904);
  v220[8] = *(v2 + 6888);
  v220[9] = v10;
  v11 = *(v2 + 6936);
  v220[10] = *(v2 + 6920);
  v220[11] = v11;
  v12 = *(v2 + 6840);
  v220[4] = *(v2 + 6824);
  v220[5] = v12;
  v13 = *(v2 + 6872);
  v220[6] = *(v2 + 6856);
  v220[7] = v13;
  v14 = *(v2 + 6776);
  v220[0] = *(v2 + 6760);
  v220[1] = v14;
  v15 = *(v2 + 6808);
  v220[2] = *(v2 + 6792);
  v220[3] = v15;
  v206 = *(v2 + 6952);
  v16 = (*(*v2 + 184))(v2);
  if (v16)
  {
    v17 = *(*(this + 32) + 2756) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 33);
  v19 = v5 + 2224 * v3;
  v20 = (v6 + 604 * v4);
  *(v18 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v21 = 766517248;
  }

  else
  {
    v21 = 766509056;
  }

  if (v17)
  {
    v22 = 688;
  }

  else
  {
    v22 = 672;
  }

  if (v9)
  {
    v23 = 4160;
  }

  else
  {
    v23 = 64;
  }

  *(v18 + 52) = v23 | ((v9 == 1) << 10) | v22 | v21;
  *(v18 + 56) = 0x1000000;
  v24 = (16 * (*(v19 + 1558) & 0xFFF)) | 0xF;
  *(v18 + 60) = v24;
  v25 = v24 | (*(v19 + 1560) << 20) | 0xF0000;
  *(v18 + 64) = 0;
  *(v18 + 60) = v25;
  v26 = (*(v19 + 8) & 1) << 18;
  *(v18 + 68) = v26;
  v27 = v26 & 0xFFF7FFFF | ((v20[93] & 1) << 19);
  *(v18 + 68) = v27;
  v28 = v27 & 0xFFEFFFFF | ((v20[3] & 1) << 20);
  *(v18 + 68) = v28;
  *(v18 + 68) = v28 | ((**(*(this + 32) + 3200) != 5) << 21);
  v29 = *(v18 + 72) & 0xFFFFFC1F | (32 * (v20[91] & 0x1F));
  *(v18 + 72) = v29;
  *(v18 + 72) = v29 & 0xFFFFFFE0 | v20[601] & 0x1F;
  if (v20[96])
  {
    if (*(v19 + 4) == 3)
    {
      v30 = 12;
    }

    else
    {
      v30 = 8;
    }

    v31 = *(this + 33);
    CAHDecViolaAvc::AvcPicScalingListFallBack(v16, v19, v20);
    CAHDecViolaAvc::copyScalingList(v32, (v18 + 76), v31 + 1132, (v20 + 109), (v20 + 121), (v20 + 217), v30);
  }

  *(v18 + 80) = *(this + 3978);
  *(v18 + 84) = *(this + 3979);
  *(v18 + 88) = 3145738;
  v33 = this + 9008;
  for (i = 92; i != 120; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v35 = *(this + 33);
    v36 = *(v35 + i);
    *(v35 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v37 = *(this + 33);
    v38 = *(v37 + i);
    *(v37 + i) = v36;
    if (*v33 || *(v33 + 38) || *(v33 + 39))
    {
      result = CAHDec::addToPatcherList(this, v33, i, 0, 0xFFFFFFFFLL, 8, v38, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 3972) >> 9) & 0x3FFFFF) << 9);
    v33 += 176;
  }

  *(*(this + 33) + 148) = 0;
  *(*(this + 33) + 152) = 0;
  *(*(this + 33) + 156) = 0;
  v40 = *(this + 33);
  v41 = *(v40 + 156);
  *(v40 + 156) = 0;
  *(*(this + 33) + 156) ^= 0xFFFFFFu;
  v42 = *(this + 33);
  v43 = *(v42 + 156);
  *(v42 + 156) = v41;
  if (!*(this + 1830) && !*(this + 3698) && !*(this + 3699) || (result = CAHDec::addToPatcherList(this, this + 1830, 156, 0, 0xFFFFFFFFLL, 8, v43, 4), !result))
  {
    if ((*(*(this + 33) + 160) = 0, v44 = *(this + 33), v45 = *(v44 + 160), *(v44 + 160) = 0, *(*(this + 33) + 160) ^= 0xFFFFFFu, v46 = *(this + 33), v47 = *(v46 + 160), *(v46 + 160) = v45, !*(this + 1852)) && !*(this + 3742) && !*(this + 3743) || (result = CAHDec::addToPatcherList(this, this + 1852, 160, 0, 0xFFFFFFFFLL, 8, v47, 4), !result))
    {
      if ((*(*(this + 33) + 164) = 0, v48 = *(this + 33), v49 = *(v48 + 164), *(v48 + 164) = 0, *(*(this + 33) + 164) ^= 0xFFFFFFu, v50 = *(this + 33), v51 = *(v50 + 164), *(v50 + 164) = v49, !*(this + 1874)) && !*(this + 3786) && !*(this + 3787) || (result = CAHDec::addToPatcherList(this, this + 1874, 164, 0, 0xFFFFFFFFLL, 8, v51, 4), !result))
      {
        if ((*(*(this + 33) + 168) = 0, v52 = *(this + 33), v53 = *(v52 + 168), *(v52 + 168) = 0, *(*(this + 33) + 168) ^= 0xFFFFFFu, v54 = *(this + 33), v55 = *(v54 + 168), *(v54 + 168) = v53, !*(this + 1896)) && !*(this + 3830) && !*(this + 3831) || (result = CAHDec::addToPatcherList(this, this + 1896, 168, 0, 0xFFFFFFFFLL, 8, v55, 4), !result))
        {
          if ((*(*(this + 33) + 172) = 0, v56 = *(this + 33), v57 = *(v56 + 172), *(v56 + 172) = 0, *(*(this + 33) + 172) ^= 0xFFFFFFu, v58 = *(this + 33), v59 = *(v58 + 172), *(v58 + 172) = v57, !*(this + 1918)) && !*(this + 3874) && !*(this + 3875) || (result = CAHDec::addToPatcherList(this, this + 1918, 172, 0, 0xFFFFFFFFLL, 8, v59, 4), !result))
          {
            if ((*(*(this + 33) + 176) = 0, v60 = *(this + 33), v61 = *(v60 + 176), *(v60 + 176) = 0, *(*(this + 33) + 176) ^= 0xFFFFFFu, v62 = *(this + 33), v63 = *(v62 + 176), *(v62 + 176) = v61, !*(this + 1940)) && !*(this + 3918) && !*(this + 3919) || (result = CAHDec::addToPatcherList(this, this + 1940, 176, 0, 0xFFFFFFFFLL, 8, v63, 4), !result))
            {
              if ((*(*(this + 33) + 180) = 0, *(*(this + 33) + 184) = 0, v64 = *(this + 33), v65 = *(v64 + 184), *(v64 + 184) = 0, *(*(this + 33) + 184) ^= 0xFFFFFFu, v66 = *(this + 33), v67 = *(v66 + 184), *(v66 + 184) = v65, !*(this + 1280)) && !*(this + 2598) && !*(this + 2599) || (result = CAHDec::addToPatcherList(this, this + 1280, 184, 0, 0xFFFFFFFFLL, 8, v67, 4), !result))
              {
                if ((*(*(this + 33) + 188) = 0, v68 = *(this + 33), v69 = *(v68 + 188), *(v68 + 188) = 0, *(*(this + 33) + 188) ^= 0xFFFFFFu, v70 = *(this + 33), v71 = *(v70 + 188), *(v70 + 188) = v69, v72 = (this + 176 * v8 + 10416), !*v72) && !*(this + 44 * v8 + 2642) && !*(this + 44 * v8 + 2643) || (result = CAHDec::addToPatcherList(this, v72, 188, 0, 0xFFFFFFFFLL, 8, v71, 4), !result))
                {
                  if ((*(*(this + 33) + 192) = 0, v73 = *(this + 33), v74 = *(v73 + 192), *(v73 + 192) = 0, *(*(this + 33) + 192) ^= 0x1FFFFFFu, v75 = *(this + 33), v76 = *(v75 + 192), *(v75 + 192) = v74, v77 = this + 176 * v8 + 560, !*v77) && !*(v77 + 38) && !*(v77 + 39) || (result = CAHDec::addToPatcherList(this, v77, 192, 0, 0xFFFFFFFFLL, 7, v76, 4), !result))
                  {
                    if ((*(*(this + 33) + 196) = 0, v78 = *(this + 33), v79 = *(v78 + 196), *(v78 + 196) = 0, *(*(this + 33) + 196) ^= 0x1FFFFFFu, v80 = *(this + 33), v81 = *(v80 + 196), *(v80 + 196) = v79, v82 = (v7 + 8), !*(v7 + 8)) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 196, *(v7 + 60), 0xFFFFFFFFLL, 7, v81, 4), !result))
                    {
                      if ((*(*(this + 33) + 200) = 0, v83 = *(this + 33), v84 = *(v83 + 200), *(v83 + 200) = 0, *(*(this + 33) + 200) ^= 0x1FFFFFFu, v85 = *(this + 33), v86 = *(v85 + 200), *(v85 + 200) = v84, v87 = this + 176 * v8 + 4784, !*v87) && !*(v87 + 38) && !*(v87 + 39) || (result = CAHDec::addToPatcherList(this, v87, 200, 0, 0xFFFFFFFFLL, 7, v86, 4), !result))
                      {
                        if ((*(*(this + 33) + 204) = 0, v88 = *(this + 33), v89 = *(v88 + 204), *(v88 + 204) = 0, *(*(this + 33) + 204) ^= 0x1FFFFFFu, v90 = *(this + 33), v91 = *(v90 + 204), *(v90 + 204) = v89, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 204, *(v7 + 64), 0xFFFFFFFFLL, 7, v91, 4), !result))
                        {
                          if (*(*(this + 32) + 2648) != 1 || ((v92 = *(this + 33), v93 = *(v92 + 196), *(v92 + 196) = 0, *(*(this + 33) + 196) ^= 0x1FFFFFFu, v94 = *(this + 33), v95 = *(v94 + 196), *(v94 + 196) = v93, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 196, *(v7 + 60), 0xFFFFFFFFLL, 7, v95, 4), !result)) && ((v96 = *(this + 33), v97 = *(v96 + 204), *(v96 + 204) = 0, *(*(this + 33) + 204) ^= 0x1FFFFFFu, v98 = *(this + 33), v99 = *(v98 + 204), *(v98 + 204) = v97, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 204, *(v7 + 64), 0xFFFFFFFFLL, 7, v99, 4), !result)) && ((v100 = *(this + 33), v101 = *(v100 + 192), *(v100 + 192) = 0, *(*(this + 33) + 192) ^= 0x1FFFFFFu, v102 = *(this + 33), v103 = *(v102 + 192), *(v102 + 192) = v101, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 192, *(v7 + 72), 0xFFFFFFFFLL, 7, v103, 4), !result)) && ((v104 = *(this + 33), v105 = *(v104 + 200), *(v104 + 200) = 0, *(*(this + 33) + 200) ^= 0x1FFFFFFu, v106 = *(this + 33), v107 = *(v106 + 200), *(v106 + 200) = v105, !*v82) && !*(v7 + 160) && !*(v7 + 164) || (result = CAHDec::addToPatcherList(this, (v7 + 8), 200, *(v7 + 76), 0xFFFFFFFFLL, 7, v107, 4), !result)))
                          {
                            if (*(v18 + 52) & 0x2000 | v206)
                            {
                              *(this + v8 + 116) = 0;
                              *(*(this + 33) + 208) = 0;
                              if (v206)
                              {
                                v108 = 0;
                                if (v17)
                                {
                                  v109 = 0x2000000;
                                }

                                else
                                {
                                  v109 = 0;
                                }

                                v203 = v109;
                                do
                                {
                                  v110 = *(v220 + v108);
                                  v111 = *(v110 + 32);
                                  *(*(this + 33) + 4 * v108 + 208) = 0;
                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFFFFFFF | ((v206 << 28) - 0x10000000);
                                  *(*(this + 33) + 4 * v108 + 208) &= 0xF3FFFFFF;
                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFDFFFFFF | v203;
                                  *(*(this + 33) + 4 * v108 + 208) |= 0x1000000u;
                                  v112 = v205 - *(v110 + 12);
                                  v113 = v112 & 0x1FFFF;
                                  if (v112 < -32768)
                                  {
                                    v113 = 98304;
                                  }

                                  if (v112 < 0x8000)
                                  {
                                    v114 = v113;
                                  }

                                  else
                                  {
                                    v114 = 0x7FFF;
                                  }

                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFFFE0000 | v114;
                                  *(*(this + 33) + 4 * v108 + 208) = *(*(this + 33) + 4 * v108 + 208) & 0xFFFDFFFF | ((*(v110 + 1) & 1) << 17);
                                  v115 = *(this + 32);
                                  if (*(v110 + 28) == 1)
                                  {
                                    v218 = 0u;
                                    v219 = 0u;
                                    v216 = 0u;
                                    v217 = 0u;
                                    v214 = 0u;
                                    v215 = 0u;
                                    v212 = 0u;
                                    v213 = 0u;
                                    v210 = 0u;
                                    v211 = 0u;
                                    memset(buf, 0, sizeof(buf));
                                    DPB = AVC_RLM::getDPB(*(v115 + 2992), buf);
                                    if (DPB < 1)
                                    {
                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      v207 = 136315138;
                                      v208 = "populatePictureRegisters";
                                      v163 = MEMORY[0x277D86220];
                                      v164 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                    }

                                    else
                                    {
                                      v117 = DPB;
                                      while (v117 >= 1)
                                      {
                                        v110 = buf[--v117];
                                        if (!*(v110 + 28))
                                        {
                                          v111 = *(v110 + 32);
                                          v115 = *(this + 32);
                                          *(v115 + 2702) = 1;
                                          goto LABEL_108;
                                        }
                                      }

                                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      v207 = 136315138;
                                      v208 = "populatePictureRegisters";
                                      v163 = MEMORY[0x277D86220];
                                      v164 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                    }

                                    v165 = &v207;
                                    v166 = 12;
                                    goto LABEL_162;
                                  }

LABEL_108:
                                  if ((*(*v115 + 184))(v115))
                                  {
                                    v118 = *(this + 32);
                                    if (*(v118 + 2756))
                                    {
                                      buf[0] = 0;
                                      if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v118, v111, *(v110 + 56), *(v110 + 64), buf) & 1) == 0)
                                      {
                                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                        {
                                          LOWORD(v207) = 0;
                                          v163 = MEMORY[0x277D86220];
                                          v164 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                          v165 = &v207;
                                          v166 = 2;
LABEL_162:
                                          _os_log_impl(&dword_277606000, v163, OS_LOG_TYPE_DEFAULT, v164, v165, v166);
                                        }

                                        return 0xFFFFFFFFLL;
                                      }

                                      *(v110 + 40) = buf[0] + 8;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 272) = 0;
                                  v119 = 4 * v108;
                                  v120 = *(this + 33) + 4 * v108;
                                  v121 = *(v120 + 272);
                                  *(v120 + 272) = 0;
                                  *(*(this + 33) + 4 * v108 + 272) ^= 0x1FFFFFFu;
                                  v122 = *(this + 33) + 4 * v108;
                                  v123 = *(v122 + 272);
                                  *(v122 + 272) = v121;
                                  v124 = this + 176 * v111 + 560;
                                  if (*v124 || *(v124 + 38) || *(v124 + 39))
                                  {
                                    result = CAHDec::addToPatcherList(this, v124, v119 + 272, 0, 0xFFFFFFFFLL, 7, v123, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 336) = 0;
                                  v125 = *(this + 33) + 4 * v108;
                                  v126 = *(v125 + 336);
                                  *(v125 + 336) = 0;
                                  *(*(this + 33) + 4 * v108 + 336) ^= 0x1FFFFFFu;
                                  v127 = *(this + 33) + 4 * v108;
                                  v128 = *(v127 + 336);
                                  *(v127 + 336) = v126;
                                  v129 = *(v110 + 40);
                                  if (*v129 || *(v129 + 152) || *(v129 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v129, v119 + 336, *(v129 + 52), 0xFFFFFFFFLL, 7, v128, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 400) = 0;
                                  v130 = *(this + 33) + 4 * v108;
                                  v131 = *(v130 + 400);
                                  *(v130 + 400) = 0;
                                  *(*(this + 33) + 4 * v108 + 400) ^= 0x1FFFFFFu;
                                  v132 = *(this + 33) + 4 * v108;
                                  v133 = *(v132 + 400);
                                  *(v132 + 400) = v131;
                                  v134 = this + 176 * v111 + 4784;
                                  if (*v134 || *(v134 + 38) || *(v134 + 39))
                                  {
                                    result = CAHDec::addToPatcherList(this, v134, v119 + 400, 0, 0xFFFFFFFFLL, 7, v133, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  *(*(this + 33) + 4 * v108 + 464) = 0;
                                  v135 = *(this + 33) + 4 * v108;
                                  v136 = *(v135 + 464);
                                  *(v135 + 464) = 0;
                                  *(*(this + 33) + 4 * v108 + 464) ^= 0x1FFFFFFu;
                                  v137 = *(this + 33) + 4 * v108;
                                  v138 = *(v137 + 464);
                                  *(v137 + 464) = v136;
                                  v139 = *(v110 + 40);
                                  if (*v139 || *(v139 + 152) || *(v139 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v139, v119 + 464, *(v139 + 56), 0xFFFFFFFFLL, 7, v138, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  if (*(*(this + 32) + 2648) == 1)
                                  {
                                    v140 = *(this + 33) + 4 * v108;
                                    v141 = *(v140 + 336);
                                    *(v140 + 336) = 0;
                                    *(*(this + 33) + 4 * v108 + 336) ^= 0x1FFFFFFu;
                                    v142 = *(this + 33) + 4 * v108;
                                    v143 = *(v142 + 336);
                                    *(v142 + 336) = v141;
                                    v144 = *(v110 + 40);
                                    if (*v144 || *(v144 + 152) || *(v144 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v144, v119 + 336, *(v144 + 52), 0xFFFFFFFFLL, 7, v143, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v145 = *(this + 33) + 4 * v108;
                                    v146 = *(v145 + 464);
                                    *(v145 + 464) = 0;
                                    *(*(this + 33) + 4 * v108 + 464) ^= 0x1FFFFFFu;
                                    v147 = *(this + 33) + 4 * v108;
                                    v148 = *(v147 + 464);
                                    *(v147 + 464) = v146;
                                    v149 = *(v110 + 40);
                                    if (*v149 || *(v149 + 152) || *(v149 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v149, v119 + 464, *(v149 + 56), 0xFFFFFFFFLL, 7, v148, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v150 = *(this + 33) + 4 * v108;
                                    v151 = *(v150 + 272);
                                    *(v150 + 272) = 0;
                                    *(*(this + 33) + 4 * v108 + 272) ^= 0x1FFFFFFu;
                                    v152 = *(this + 33) + 4 * v108;
                                    v153 = *(v152 + 272);
                                    *(v152 + 272) = v151;
                                    v154 = *(v110 + 40);
                                    if (*v154 || *(v154 + 152) || *(v154 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v154, v119 + 272, *(v154 + 64), 0xFFFFFFFFLL, 7, v153, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v155 = *(this + 33) + 4 * v108;
                                    v156 = *(v155 + 400);
                                    *(v155 + 400) = 0;
                                    *(*(this + 33) + 4 * v108 + 400) ^= 0x1FFFFFFu;
                                    v157 = *(this + 33) + 4 * v108;
                                    v158 = *(v157 + 400);
                                    *(v157 + 400) = v156;
                                    v159 = *(v110 + 40);
                                    if (*v159 || *(v159 + 152) || *(v159 + 156))
                                    {
                                      result = CAHDec::addToPatcherList(this, v159, v119 + 400, *(v159 + 68), 0xFFFFFFFFLL, 7, v158, 4);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }
                                  }

                                  ++v108;
                                }

                                while (v108 != v206);
                              }
                            }

                            else
                            {
                              *(v18 + 52) |= 0x2000u;
                              *(this + v8 + 116) = 1;
                              *(*(this + 33) + 208) = 0;
                            }

                            *(*(this + 33) + 528) = 0;
                            *(*(this + 33) + 532) = 0;
                            *(*(this + 33) + 536) = 0;
                            *(*(this + 33) + 540) = 0;
                            if (!v9)
                            {
LABEL_189:
                              v195 = *(this + 32);
                              if (*(v195 + 2360) != 1)
                              {
                                return 0;
                              }

                              v196 = *(this + 33);
                              *(v196 + 640) = *(v196 + 640) & 0xFFFFFFFE | *(v195 + 2508) & 1;
                              if (*(v195 + 2508))
                              {
                                *(v196 + 1616) = 0x10000000;
                                *(v196 + 1620) = *(v195 + 2368);
                                *(v196 + 1632) = 0;
                                *(v196 + 1624) = 0;
                                *(v196 + 1636) = *(v195 + 2372);
                                v197 = *(v195 + 2404);
                                *(v196 + 1652) = *(v195 + 2388);
                                *(v196 + 1668) = v197;
                              }

                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFFD | (2 * (*(v195 + 2512) & 1));
                              if (*(v195 + 2512))
                              {
                                *(v196 + 1684) = 0;
                                v198 = *(v195 + 2424);
                                *(v196 + 1684) = (*(v195 + 2424) & 1) << 22;
                                v199 = ((*(v195 + 2420) & 1) << 23) | ((v198 & 1) << 22) | 0x20000000;
                                *(v196 + 1684) = v199;
                                if (!*(v195 + 2364))
                                {
                                  ++v199;
                                }

                                *(v196 + 1684) = v199;
                                v200 = *(v195 + 2428);
                                v201 = *(v195 + 2460);
                                *(v196 + 1704) = *(v195 + 2444);
                                *(v196 + 1720) = v201;
                                *(v196 + 1688) = v200;
                              }

                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFFB | (4 * (*(v195 + 2516) & 1));
                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFF7 | (8 * (*(v195 + 2520) & 1));
                              *(*(this + 33) + 640) = *(*(this + 33) + 640) & 0xFFFFFFEF | (16 * (*(v195 + 2524) & 1));
                              *(v196 + 1740) = 0;
                              v202 = *(v195 + 2476) == 2 ? 805306368 : 813694976;
                              *(v196 + 1740) = v202;
                              memcpy((v196 + 1744), (v195 + 2480), 4 * *(v195 + 2476));
                              if (!*(v195 + 2516))
                              {
                                return 0;
                              }

                              result = 0;
                              *(v195 + 2516) = 0;
                              return result;
                            }

                            v160 = *(this + 32);
                            v161 = *(v160 + 2892);
                            if (*(v160 + 2892))
                            {
                              v162 = *(v160 + 2904);
                              v161 = *(v160 + 2908);
                            }

                            else
                            {
                              v162 = 0;
                            }

                            v167 = *(v160 + 3544);
                            v169 = *(v167 + 52);
                            v168 = *(v167 + 56);
                            v170 = v169 + v162;
                            v171 = __CFADD__(v169, v162);
                            v172 = v168 + v161;
                            if (__CFADD__(v168, v161))
                            {
                              v173 = 2;
                            }

                            else
                            {
                              v173 = v171;
                            }

                            if (v173)
                            {
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                              {
                                LODWORD(buf[0]) = 136315394;
                                *(buf + 4) = "populatePictureRegisters";
                                WORD2(buf[1]) = 1024;
                                *(&buf[1] + 6) = v173;
                                v163 = MEMORY[0x277D86220];
                                v164 = "AppleAVD: %s(): failKind = %d";
                                v165 = buf;
                                v166 = 18;
                                goto LABEL_162;
                              }

                              return 0xFFFFFFFFLL;
                            }

                            v174 = *(this + 33);
                            v175 = *(v174 + 528);
                            *(v174 + 528) = 0;
                            *(*(this + 33) + 528) ^= 0xFFFFFFu;
                            v176 = *(this + 33);
                            v177 = *(v176 + 528);
                            *(v176 + 528) = v175;
                            v178 = *(*(this + 32) + 3544);
                            if (!*v178 && !*(v178 + 152) && !*(v178 + 156) || (result = CAHDec::addToPatcherList(this, v178, 528, v170, 0xFFFFFFFFLL, 8, v177, 4), !result))
                            {
                              if ((v179 = *(this + 33), v180 = *(v179 + 532), *(v179 + 532) = 0, *(*(this + 33) + 532) ^= 0xFFFFFFu, v181 = *(this + 33), v182 = *(v181 + 532), *(v181 + 532) = v180, v183 = *(*(this + 32) + 3544), !*v183) && !*(v183 + 152) && !*(v183 + 156) || (result = CAHDec::addToPatcherList(this, v183, 532, v172, 0xFFFFFFFFLL, 8, v182, 4), !result))
                              {
                                if ((v184 = *(this + 33), v185 = *(v184 + 536), *(v184 + 536) = 0, *(*(this + 33) + 536) ^= 0xC0000000, v186 = *(this + 33), v187 = *(v186 + 536), *(v186 + 536) = v185, v188 = *(*(this + 32) + 3544), !*v188) && !*(v188 + 152) && !*(v188 + 156) || (result = CAHDec::addToPatcherList(this, v188, 536, v170, 192, 6, v187, 4), !result))
                                {
                                  if ((v189 = *(this + 33), v190 = *(v189 + 540), *(v189 + 540) = 0, *(*(this + 33) + 540) ^= 0xC0000000, v191 = *(this + 33), v192 = *(v191 + 540), *(v191 + 540) = v190, v193 = *(*(this + 32) + 3544), !*v193) && !*(v193 + 152) && !*(v193 + 156) || (result = CAHDec::addToPatcherList(this, v193, 540, v172, 192, 6, v192, 4), !result))
                                  {
                                    if (v204)
                                    {
                                      *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF));
                                      v194 = (*(*(this + 32) + 3544) + 80);
                                    }

                                    else
                                    {
                                      if (CAHDecCloverAvc::getSWRStride(this, *(v18 + 84) - *(v18 + 80) + 1, *(v19 + 6), *(v19 + 7), *(v19 + 2212)))
                                      {
                                        return 0xFFFFFFFFLL;
                                      }

                                      *(*(this + 33) + 536) = *(*(this + 33) + 536) & 0xFFFFC003 | (4 * ((*(this + 3976) >> 6) & 0xFFF));
                                      v194 = (this + 15908);
                                    }

                                    *(*(this + 33) + 540) = *(*(this + 33) + 540) & 0xFFFF8003 | (4 * ((*v194 >> 6) & 0x1FFF));
                                    goto LABEL_189;
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

uint64_t CAHDecViolaAvc::getTileIdxAbove(CAHDecViolaAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 544);
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

uint64_t CAHDecViolaAvc::populateAvdWork(CAHDecViolaAvc *this, unsigned int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = *(this + 33);
  v4 = *(v3 + 3200);
  v5 = *(v3 + 7388);
  v22 = 0;
  v23 = 0;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v2 + 2696);
    v10 = (v4 + 20);
    v21 = a2;
    v11 = 40 * a2;
    v12 = v2 + 948 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 1764) = v8;
      *(v13 + 1766) = 0;
      *(v13 + 1768) = v8;
      *(v12 + v7 + 1770) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v23, &v22))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 1788) = *v10;
      *(v13 + 1792) = v15;
      *(v13 + 1796) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 1774) = v16;
      v17 = v23;
      if (*v23 || *(v23 + 152) || *(v23 + 156))
      {
        v18 = v22;
        if (HIDWORD(v22))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v25 = "populateAvdWork";
            v26 = 1024;
            v27 = 1791;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v18 = v22;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 570580, v18, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 237;
      *(v12 + v7 + 1784) = v14;
      ++v8;
      v7 += 40;
      v10 += 462;
      if (v11 == v7)
      {
        v2 = *(this + 33);
        v20 = v21;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v20 = 0;
LABEL_17:
    result = 0;
    *(v2 + 28) = v20;
    *(v2 + 32) = 570560;
  }

  return result;
}

uint64_t CAHDecViolaAvc::allocWorkBuf_SPS(CAHDecViolaAvc *this, _BYTE *a2)
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

  *(this + 3968) = v10;
  *(this + 3969) = v17;
  *(this + 1985) = 0;
  v18 = (v4 << 6) + 64;
  *(this + 3974) = v18;
  *(this + 3973) = v18 + v18 * v6;
  if (!*(*(this + 32) + 2648))
  {
    v19 = (this + 560);
    v20 = (this + 4784);
    v21 = 24;
    while (1)
    {
      v22 = *(this + 3968);
      if (v22 && CAVDDecoder::allocAVDMem(*(this + 32), v19, v22, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        v29 = 136315650;
        v30 = "allocWorkBuf_SPS";
        v31 = 1024;
        v32 = 2029;
        v33 = 2080;
        v34 = "HdrY";
        v28 = MEMORY[0x277D86220];
        goto LABEL_36;
      }

      v23 = *(this + 3969);
      if (v23)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
        {
          break;
        }
      }

      v19 += 11;
      v20 += 11;
      if (!--v21)
      {
        goto LABEL_25;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2030;
    v33 = 2080;
    v34 = "HdrC";
    v28 = MEMORY[0x277D86220];
    goto LABEL_36;
  }

LABEL_25:
  v24 = (this + 10416);
  v25 = 24;
  while (1)
  {
    v26 = *(this + 3973);
    if (v26)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), v24, v26, 7, 1, 0))
      {
        break;
      }
    }

    v24 += 11;
    if (!--v25)
    {
      result = 0;
      *(this + 3978) = 0;
      *(this + 3979) = v5 | (v6 << 20) | 0xF000F;
      return result;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315650;
    v30 = "allocWorkBuf_SPS";
    v31 = 1024;
    v32 = 2036;
    v33 = 2080;
    v34 = "MvColo";
    v28 = MEMORY[0x277D86220];
LABEL_36:
    _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v29, 0x1Cu);
  }

LABEL_37:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecViolaAvc::allocWorkBuf_PPS(CAHDecViolaAvc *this, _BYTE *a2, void *a3, void *a4)
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

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 915, 20 * *(a2 + 779) + 20, 7, 1, 0))
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
    v18 = 2153;
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
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 926, ((v7 * v10) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2156;
      v19 = 2080;
      v20 = "IpAbove";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }

    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 937, ((v7 * v11) >> 3) * v14, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 136315650;
      v16 = "allocWorkBuf_PPS";
      v17 = 1024;
      v18 = 2157;
      v19 = 2080;
      v20 = "LfAbovePix";
      v12 = MEMORY[0x277D86220];
      goto LABEL_19;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 948, 32 * v14, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 136315650;
    v16 = "allocWorkBuf_PPS";
    v17 = 1024;
    v18 = 2158;
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
    v18 = 2161;
    v19 = 2080;
    v20 = "MvAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  return result;
}

uint64_t CAHDecViolaAvc::freeWorkBuf_SPS(CAHDecViolaAvc *this)
{
  v2 = (this + 560);
  v3 = (this + 4784);
  v4 = (this + 10416);
  v5 = 24;
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

    if (v3[704])
    {
      result = CAVDDecoder::deallocAVDMem(*(this + 32), v4);
      v3[704] = 0;
    }

    v4 += 22;
    v2 += 22;
    v3 += 22;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t *CAHDecViolaAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1830])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1830);
    v2[1830] = 0;
  }

  if (v2[1852])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1852);
    v2[1852] = 0;
  }

  if (v2[1280])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1280);
    v2[1280] = 0;
  }

  if (v2[1874])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1874);
    v2[1874] = 0;
  }

  if (v2[1896])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1896);
    v2[1896] = 0;
  }

  if (v2[1918])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1918);
    v2[1918] = 0;
  }

  if (v2[1940])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1940);
    v2[1940] = 0;
  }

  if (v2[1962])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1962);
    v2[1962] = 0;
  }

  return this;
}

uint64_t CAHDecViolaAvc::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 15888) = a2;
  return this;
}

uint64_t createLilyDAvcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createLilyDAvcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): LilyD AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createLilyDHevcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createLilyDHevcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): LilyD AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createLilyDLghDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createLilyDLghDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): LilyD AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

CAHDecDaisyAvx *createDaisyAvxDecoder(void **a1)
{
  v2 = operator new(0x1740uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecDaisyAvx::CAHDecDaisyAvx(v2, a1);
  }

  return v3;
}

void CAHDecDaisyAvx::CAHDecDaisyAvx(CAHDecDaisyAvx *this, void **a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_288668DA8;
  *(v4 + 256) = a2;
  *(v4 + 456) = 198228;
  *(v4 + 8) = 1548;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 3;
  *(v4 + 56) = a2;
  bzero(a2 + 370, 0x14A0uLL);
  bzero(a2[1030], 0x1680uLL);
  bzero(this + 464, 0x1550uLL);
  bzero(a2 + 1031, 0x19E8uLL);
  *(this + 740) = 0;
  *(this + 371) = 0u;
}

void CAHDecDaisyAvx::~CAHDecDaisyAvx(CAHDecDaisyAvx *this)
{
  *this = &unk_288668DA8;
  v2 = *(this + 32);
  v3 = 10192;
  v4 = 11;
  do
  {
    if (*(v2 + v3))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + v3));
      v2 = *(this + 32);
      v5 = (v2 + v3);
      *(v5 - 1) = 0;
      *v5 = 0;
    }

    v3 += 184;
    --v4;
  }

  while (v4);
  v6 = 12216;
  v7 = 4;
  do
  {
    if (*(v2 + v6))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + v6));
      v2 = *(this + 32);
      v8 = (v2 + v6);
      *(v8 - 1) = 0;
      *v8 = 0;
    }

    v6 += 184;
    --v7;
  }

  while (v7);
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(v2, this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecDaisyAvx::~CAHDecDaisyAvx(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDaisyAvx::init(CAHDecDaisyAvx *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "init";
      v29 = 1024;
      v30 = 0;
      v31 = 1024;
      LODWORD(v32) = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n";
      v6 = 24;
      goto LABEL_34;
    }

    return 301;
  }

  v7 = *(this + 35);
  *(this + 13) = 0;
  *(this + 33) = v7;
  *(this + 34) = v7;
  v8 = 9168;
  *(this + 1485) = 9168;
  v9 = *(this + 32);
  v10 = 10192;
  v11 = 10;
LABEL_5:
  if (CAVDDecoder::allocAVDMem(v9, (v9 + v10), v8, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "init";
      v29 = 1024;
      v30 = 212;
      v31 = 2080;
      v32 = "probs_wr_buf";
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
      goto LABEL_33;
    }

    return 301;
  }

  v9 = *(this + 32);
  while (1)
  {
    v12 = *(v9 + v10);
    if (v12)
    {
      *(v9 + v10 - 8) = v12;
    }

    if (!v11)
    {
      break;
    }

    v8 = *(this + 1485);
    v10 += 184;
    --v11;
    if (*(this + 1485))
    {
      goto LABEL_5;
    }
  }

  v13 = *(v9 + 37584);
  if (v13)
  {
    v14 = v9 + 10368;
    v15 = xmmword_27775BCD0;
    v16 = 12;
    v17 = vdupq_n_s64(0xBuLL);
    v18 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v17, v15)).u8[0])
      {
        *(v13 + 1960) = v14 - 184;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v15)).i32[1])
      {
        *(v13 + 4000) = v14;
      }

      v15 = vaddq_s64(v15, v18);
      v13 += 4080;
      v14 += 368;
      v16 -= 2;
    }

    while (v16);
  }

  v19 = 0;
  for (i = 12216; ; i += 184)
  {
    v21 = *(this + 1485);
    v22 = *(this + 32);
    if (v21)
    {
      break;
    }

LABEL_23:
    v23 = (v22 + i - 8);
    v24 = *(v22 + i);
    if (v24)
    {
      *v23 = v24;
    }

    v25 = *(v22 + 15120);
    if (v25)
    {
      AV1_Syntax::Set_Default_Frame_Context_Info(v25, v23, v19);
    }

    if (++v19 == 4)
    {
      return 0;
    }
  }

  if (!CAVDDecoder::allocAVDMem(v22, (v22 + i), v21, 7, 1, 0))
  {
    v22 = *(this + 32);
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315650;
    v28 = "init";
    v29 = 1024;
    v30 = 227;
    v31 = 2080;
    v32 = "probs_default_buf";
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
LABEL_33:
    v6 = 28;
LABEL_34:
    _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v27, v6);
  }

  return 301;
}

uint64_t CAHDecDaisyAvx::startPicture(CAHDecDaisyAvx *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x30654uLL);
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    v6 = *(this + *(this + 13) + 34);
    *(v6 + 16) = a2;
    *(v6 + 24) = 257;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "startPicture";
      v9 = 1024;
      v10 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v7, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecDaisyAvx::DecodePicture(CAHDecDaisyAvx *this, uint64_t a2)
{
  if (CAHDecDaisyAvx::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  if ((*(*this + 64))(this) || CAHDecDaisyAvx::populateAddressRegisters(this))
  {
    return 4;
  }

  CAHDecDaisyAvx::populateDecryptionRegisters(this);
  CAHDecDaisyAvx::populateTiles(this);
  CAHDecDaisyAvx::populateAvxVPDependency(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecDaisyAvx::populateAddressRegisters(CAHDecDaisyAvx *this)
{
  v2 = 0;
  v364 = *MEMORY[0x277D85DE8];
  v3 = this + 464;
  do
  {
    *(*(this + 33) + v2 + 468) = 0;
    v4 = *(this + 33) + v2;
    v5 = *(v4 + 468);
    *(v4 + 468) = 0;
    *(*(this + 33) + v2 + 468) ^= 0xFFFFFF00;
    v6 = *(this + 33) + v2;
    v7 = *(v6 + 468);
    *(v6 + 468) = v5;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 468, 0, 0xFFFFFFFFLL, 8, v7, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 528) = 0;
    v9 = *(this + 33) + v2;
    v10 = *(v9 + 528);
    *(v9 + 528) = 0;
    *(*(this + 33) + v2 + 528) ^= 0x3FFu;
    v11 = *(this + 33) + v2;
    v12 = *(v11 + 528);
    *(v11 + 528) = v10;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 528, 0, 0x3FFFFFFFFFFLL, 32, v12, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 588) = 0;
    *(*(this + 33) + v2 + 588) = *(*(this + 33) + v2 + 588) & 0x800001FF | (((*(this + 1484) >> 9) & 0x3FFFFF) << 9);
    v2 += 4;
    v3 += 176;
  }

  while (v2 != 60);
  v13 = *(this + 32);
  v14 = *(*(v13 + 15112) + 79288);
  v15 = *(*(*(v13 + 37616) + 1920) + 1960);
  *(*(this + 33) + 648) = 0;
  v16 = *(this + 33);
  v17 = *(v16 + 648);
  *(v16 + 648) = 0;
  *(*(this + 33) + 648) ^= 0xFFFFFF00;
  v18 = *(this + 33);
  v19 = *(v18 + 648);
  *(v18 + 648) = v17;
  if (!*(v15 + 8) && !*(v15 + 160) && !*(v15 + 164) || (result = CAHDec::addToPatcherList(this, (v15 + 8), 648, 0, 0xFFFFFFFFLL, 8, v19, 4), !result))
  {
    if ((*(*(this + 33) + 652) = 0, v20 = *(this + 33), v21 = *(v20 + 652), *(v20 + 652) = 0, *(*(this + 33) + 652) ^= 0x3FFu, v22 = *(this + 33), v23 = *(v22 + 652), *(v22 + 652) = v21, !*(v15 + 8)) && !*(v15 + 160) && !*(v15 + 164) || (result = CAHDec::addToPatcherList(this, (v15 + 8), 652, 0, 0x3FFFFFFFFFFLL, 32, v23, 4), !result))
    {
      if ((*(*(this + 33) + 656) = 0, v24 = *(this + 33), v25 = *(v24 + 656), *(v24 + 656) = 0, *(*(this + 33) + 656) ^= 0xFFFFFF00, v26 = *(this + 33), v27 = *(v26 + 656), *(v26 + 656) = v25, !*(v14 + 8)) && !*(v14 + 160) && !*(v14 + 164) || (result = CAHDec::addToPatcherList(this, (v14 + 8), 656, 0, 0xFFFFFFFFLL, 8, v27, 4), !result))
      {
        if ((*(*(this + 33) + 660) = 0, v28 = *(this + 33), v29 = *(v28 + 660), *(v28 + 660) = 0, *(*(this + 33) + 660) ^= 0x3FFu, v30 = *(this + 33), v31 = *(v30 + 660), *(v30 + 660) = v29, !*(v14 + 8)) && !*(v14 + 160) && !*(v14 + 164) || (result = CAHDec::addToPatcherList(this, (v14 + 8), 660, 0, 0x3FFFFFFFFFFLL, 32, v31, 4), !result))
        {
          v32 = 0;
          v33 = this + 3104;
          do
          {
            *(*(this + 33) + v32 + 664) = 0;
            v34 = *(this + 33) + v32;
            v35 = *(v34 + 664);
            *(v34 + 664) = 0;
            *(*(this + 33) + v32 + 664) ^= 0xFFFFFF00;
            v36 = *(this + 33) + v32;
            v37 = *(v36 + 664);
            *(v36 + 664) = v35;
            if (*v33 || *(v33 + 38) || *(v33 + 39))
            {
              result = CAHDec::addToPatcherList(this, v33, v32 + 664, 0, 0xFFFFFFFFLL, 8, v37, 4);
              if (result)
              {
                return result;
              }
            }

            *(*(this + 33) + v32 + 676) = 0;
            v38 = *(this + 33) + v32;
            v39 = *(v38 + 676);
            *(v38 + 676) = 0;
            *(*(this + 33) + v32 + 676) ^= 0x3FFu;
            v40 = *(this + 33) + v32;
            v41 = *(v40 + 676);
            *(v40 + 676) = v39;
            if (*v33 || *(v33 + 38) || *(v33 + 39))
            {
              result = CAHDec::addToPatcherList(this, v33, v32 + 676, 0, 0x3FFFFFFFFFFLL, 32, v41, 4);
              if (result)
              {
                return result;
              }
            }

            v32 += 4;
            v33 += 176;
          }

          while (v32 != 12);
          *(*(this + 33) + 688) = 0;
          *(*(this + 33) + 692) = 0;
          if (!*(*(*(this + 32) + 15112) + 79312) || ((v42 = *(this + 33), v43 = *(v42 + 688), *(v42 + 688) = 0, *(*(this + 33) + 688) ^= 0xFFFFFF00, v44 = *(this + 33), v45 = *(v44 + 688), *(v44 + 688) = v43, v46 = *(*(*(this + 32) + 15112) + 79312), !*(v46 + 8)) && !*(v46 + 160) && !*(v46 + 164) || (result = CAHDec::addToPatcherList(this, (v46 + 8), 688, 0, 0xFFFFFFFFLL, 8, v45, 4), !result)) && ((v47 = *(this + 33), v48 = *(v47 + 692), *(v47 + 692) = 0, *(*(this + 33) + 692) ^= 0x3FFu, v49 = *(this + 33), v50 = *(v49 + 692), *(v49 + 692) = v48, v51 = *(*(*(this + 32) + 15112) + 79312), !*(v51 + 8)) && !*(v51 + 160) && !*(v51 + 164) || (result = CAHDec::addToPatcherList(this, (v51 + 8), 692, 0, 0x3FFFFFFFFFFLL, 32, v50, 4), !result)))
          {
            *(*(this + 33) + 696) = 0;
            *(*(this + 33) + 700) = 0;
            if (!*(*(*(this + 32) + 15112) + 79304) || ((v52 = *(this + 33), v53 = *(v52 + 696), *(v52 + 696) = 0, *(*(this + 33) + 696) ^= 0xFFFFFF00, v54 = *(this + 33), v55 = *(v54 + 696), *(v54 + 696) = v53, v56 = *(*(*(this + 32) + 15112) + 79304), !*(v56 + 8)) && !*(v56 + 160) && !*(v56 + 164) || (result = CAHDec::addToPatcherList(this, (v56 + 8), 696, 0, 0xFFFFFFFFLL, 8, v55, 4), !result)) && ((v57 = *(this + 33), v58 = *(v57 + 700), *(v57 + 700) = 0, *(*(this + 33) + 700) ^= 0x3FFu, v59 = *(this + 33), v60 = *(v59 + 700), *(v59 + 700) = v58, v61 = *(*(*(this + 32) + 15112) + 79304), !*(v61 + 8)) && !*(v61 + 160) && !*(v61 + 164) || (result = CAHDec::addToPatcherList(this, (v61 + 8), 700, 0, 0x3FFFFFFFFFFLL, 32, v60, 4), !result)))
            {
              if ((*(*(this + 33) + 704) = 0, v62 = *(this + 33), v63 = *(v62 + 704), *(v62 + 704) = 0, *(*(this + 33) + 704) ^= 0xFFFFFF00, v64 = *(this + 33), v65 = *(v64 + 704), *(v64 + 704) = v63, v66 = *(*(*(this + 32) + 37616) + 1920), !*(v66 + 136)) && !*(v66 + 288) && !*(v66 + 292) || (result = CAHDec::addToPatcherList(this, (v66 + 136), 704, 0, 0xFFFFFFFFLL, 8, v65, 4), !result))
              {
                if ((*(*(this + 33) + 708) = 0, v67 = *(this + 33), v68 = *(v67 + 708), *(v67 + 708) = 0, *(*(this + 33) + 708) ^= 0x3FFu, v69 = *(this + 33), v70 = *(v69 + 708), *(v69 + 708) = v68, v71 = *(*(*(this + 32) + 37616) + 1920), !*(v71 + 136)) && !*(v71 + 288) && !*(v71 + 292) || (result = CAHDec::addToPatcherList(this, (v71 + 136), 708, 0, 0x3FFFFFFFFFFLL, 32, v70, 4), !result))
                {
                  if ((*(*(this + 33) + 712) = 0, v72 = *(this + 33), v73 = *(v72 + 712), *(v72 + 712) = 0, *(*(this + 33) + 712) ^= 0xFFFFFF00, v74 = *(this + 33), v75 = *(v74 + 712), *(v74 + 712) = v73, !*(*(*(this + 32) + 15112) + 78568)) && !*(*(*(this + 32) + 15112) + 78720) && !*(*(*(this + 32) + 15112) + 78724) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 712, 0, 0xFFFFFFFFLL, 8, v75, 4), !result))
                  {
                    if ((*(*(this + 33) + 716) = 0, v76 = *(this + 33), v77 = *(v76 + 716), *(v76 + 716) = 0, *(*(this + 33) + 716) ^= 0x3FFu, v78 = *(this + 33), v79 = *(v78 + 716), *(v78 + 716) = v77, !*(*(*(this + 32) + 15112) + 78568)) && !*(*(*(this + 32) + 15112) + 78720) && !*(*(*(this + 32) + 15112) + 78724) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 716, 0, 0x3FFFFFFFFFFLL, 32, v79, 4), !result))
                    {
                      if ((*(*(this + 33) + 720) = 0, v80 = *(this + 33), v81 = *(v80 + 720), *(v80 + 720) = 0, *(*(this + 33) + 720) ^= 0xFFFFFF00, v82 = *(this + 33), v83 = *(v82 + 720), *(v82 + 720) = v81, !*(*(*(this + 32) + 15112) + 78792)) && !*(*(*(this + 32) + 15112) + 78944) && !*(*(*(this + 32) + 15112) + 78948) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 720, 0, 0xFFFFFFFFLL, 8, v83, 4), !result))
                      {
                        if ((*(*(this + 33) + 724) = 0, v84 = *(this + 33), v85 = *(v84 + 724), *(v84 + 724) = 0, *(*(this + 33) + 724) ^= 0x3FFu, v86 = *(this + 33), v87 = *(v86 + 724), *(v86 + 724) = v85, !*(*(*(this + 32) + 15112) + 78792)) && !*(*(*(this + 32) + 15112) + 78944) && !*(*(*(this + 32) + 15112) + 78948) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 724, 0, 0x3FFFFFFFFFFLL, 32, v87, 4), !result))
                        {
                          if ((*(*(this + 33) + 728) = 0, v88 = *(this + 33), v89 = *(v88 + 728), *(v88 + 728) = 0, *(*(this + 33) + 728) ^= 0xFFFFFF00, v90 = *(this + 33), v91 = *(v90 + 728), *(v90 + 728) = v89, !*(*(*(this + 32) + 15112) + 79016)) && !*(*(*(this + 32) + 15112) + 79168) && !*(*(*(this + 32) + 15112) + 79172) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 728, 0, 0xFFFFFFFFLL, 8, v91, 4), !result))
                          {
                            if ((*(*(this + 33) + 732) = 0, v92 = *(this + 33), v93 = *(v92 + 732), *(v92 + 732) = 0, *(*(this + 33) + 732) ^= 0x3FFu, v94 = *(this + 33), v95 = *(v94 + 732), *(v94 + 732) = v93, !*(*(*(this + 32) + 15112) + 79016)) && !*(*(*(this + 32) + 15112) + 79168) && !*(*(*(this + 32) + 15112) + 79172) || (result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 732, 0, 0x3FFFFFFFFFFLL, 32, v95, 4), !result))
                            {
                              *(*(this + 33) + 736) = 0;
                              *(*(this + 33) + 740) = 0;
                              v96 = *(this + 32);
                              if (!*(v96 + 2652))
                              {
                                goto LABEL_352;
                              }

                              v97 = *(v96 + 2680);
                              v362 = 0u;
                              v363 = 0u;
                              memset(v361, 0, sizeof(v361));
                              v98 = *(this + 33);
                              v99 = (*(v98 + 16) & 0xF) << 9;
                              *&v361[0] = v97;
                              v100 = *(v98 + 736);
                              *(v98 + 736) = 0;
                              *(*(this + 33) + 736) ^= 0xFFFFFF00;
                              v101 = *(this + 33);
                              v102 = *(v101 + 736);
                              *(v101 + 736) = v100;
                              if (v97)
                              {
                                result = CAHDec::addToPatcherList(this, v361, 736, v99, 0xFFFFFFFFLL, 8, v102, 4);
                                if (result)
                                {
                                  return result;
                                }

                                if (*&v361[0])
                                {
                                  v103 = 0;
                                }

                                else
                                {
                                  v103 = DWORD2(v362) == 0;
                                }

                                LODWORD(v97) = !v103 || HIDWORD(v362) != 0;
                              }

                              *(*(this + 33) + 740) = 0;
                              v105 = *(this + 33);
                              v106 = *(v105 + 740);
                              *(v105 + 740) = 0;
                              *(*(this + 33) + 740) ^= 0x3FFu;
                              v107 = *(this + 33);
                              v108 = *(v107 + 740);
                              *(v107 + 740) = v106;
                              if (!v97 || (result = CAHDec::addToPatcherList(this, v361, 740, v99, 0x3FFFFFFFFFFLL, 32, v108, 4), !result))
                              {
LABEL_352:
                                if ((*(*(this + 33) + 744) = 0, v109 = *(this + 33), v110 = *(v109 + 744), *(v109 + 744) = 0, *(*(this + 33) + 744) ^= 0xFFFFFF00, v111 = *(this + 33), v112 = *(v111 + 744), *(v111 + 744) = v110, !*(this + 454)) && !*(this + 946) && !*(this + 947) || (result = CAHDec::addToPatcherList(this, this + 454, 744, 0, 0xFFFFFFFFLL, 8, v112, 4), !result))
                                {
                                  if ((*(*(this + 33) + 748) = 0, v113 = *(this + 33), v114 = *(v113 + 748), *(v113 + 748) = 0, *(*(this + 33) + 748) ^= 0x3FFu, v115 = *(this + 33), v116 = *(v115 + 748), *(v115 + 748) = v114, !*(this + 454)) && !*(this + 946) && !*(this + 947) || (result = CAHDec::addToPatcherList(this, this + 454, 748, 0, 0x3FFFFFFFFFFLL, 32, v116, 4), !result))
                                  {
                                    if ((*(*(this + 33) + 752) = 0, v117 = *(this + 33), v118 = *(v117 + 752), *(v117 + 752) = 0, *(*(this + 33) + 752) ^= 0xFFFFFF00, v119 = *(this + 33), v120 = *(v119 + 752), *(v119 + 752) = v118, !*(this + 476)) && !*(this + 990) && !*(this + 991) || (result = CAHDec::addToPatcherList(this, this + 476, 752, 0, 0xFFFFFFFFLL, 8, v120, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 756) = 0, v121 = *(this + 33), v122 = *(v121 + 756), *(v121 + 756) = 0, *(*(this + 33) + 756) ^= 0x3FFu, v123 = *(this + 33), v124 = *(v123 + 756), *(v123 + 756) = v122, !*(this + 476)) && !*(this + 990) && !*(this + 991) || (result = CAHDec::addToPatcherList(this, this + 476, 756, 0, 0x3FFFFFFFFFFLL, 32, v124, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 760) = 0, v125 = *(this + 33), v126 = *(v125 + 760), *(v125 + 760) = 0, *(*(this + 33) + 760) ^= 0xFFFFFF00, v127 = *(this + 33), v128 = *(v127 + 760), *(v127 + 760) = v126, !*(this + 498)) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 760, 0, 0xFFFFFFFFLL, 8, v128, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 764) = 0, v129 = *(this + 33), v130 = *(v129 + 764), *(v129 + 764) = 0, *(*(this + 33) + 764) ^= 0x3FFu, v131 = *(this + 33), v132 = *(v131 + 764), *(v131 + 764) = v130, !*(this + 498)) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 764, 0, 0x3FFFFFFFFFFLL, 32, v132, 4), !result))
                                          {
                                            if ((*(*(this + 33) + 768) = 0, v133 = *(this + 33), v134 = *(v133 + 768), *(v133 + 768) = 0, *(*(this + 33) + 768) ^= 0xFFFFFF00, v135 = *(this + 33), v136 = *(v135 + 768), *(v135 + 768) = v134, !*(this + 520)) && !*(this + 1078) && !*(this + 1079) || (result = CAHDec::addToPatcherList(this, this + 520, 768, 0, 0xFFFFFFFFLL, 8, v136, 4), !result))
                                            {
                                              if ((*(*(this + 33) + 772) = 0, v137 = *(this + 33), v138 = *(v137 + 772), *(v137 + 772) = 0, *(*(this + 33) + 772) ^= 0x3FFu, v139 = *(this + 33), v140 = *(v139 + 772), *(v139 + 772) = v138, !*(this + 520)) && !*(this + 1078) && !*(this + 1079) || (result = CAHDec::addToPatcherList(this, this + 520, 772, 0, 0x3FFFFFFFFFFLL, 32, v140, 4), !result))
                                              {
                                                if ((*(*(this + 33) + 776) = 0, v141 = *(this + 33), v142 = *(v141 + 776), *(v141 + 776) = 0, *(*(this + 33) + 776) ^= 0xFFFFFF00, v143 = *(this + 33), v144 = *(v143 + 776), *(v143 + 776) = v142, !*(this + 542)) && !*(this + 1122) && !*(this + 1123) || (result = CAHDec::addToPatcherList(this, this + 542, 776, 0, 0xFFFFFFFFLL, 8, v144, 4), !result))
                                                {
                                                  if ((*(*(this + 33) + 780) = 0, v145 = *(this + 33), v146 = *(v145 + 780), *(v145 + 780) = 0, *(*(this + 33) + 780) ^= 0x3FFu, v147 = *(this + 33), v148 = *(v147 + 780), *(v147 + 780) = v146, !*(this + 542)) && !*(this + 1122) && !*(this + 1123) || (result = CAHDec::addToPatcherList(this, this + 542, 780, 0, 0x3FFFFFFFFFFLL, 32, v148, 4), !result))
                                                  {
                                                    if ((*(*(this + 33) + 784) = 0, v149 = *(this + 33), v150 = *(v149 + 784), *(v149 + 784) = 0, *(*(this + 33) + 784) ^= 0xFFFFFF00, v151 = *(this + 33), v152 = *(v151 + 784), *(v151 + 784) = v150, !*(this + 564)) && !*(this + 1166) && !*(this + 1167) || (result = CAHDec::addToPatcherList(this, this + 564, 784, 0, 0xFFFFFFFFLL, 8, v152, 4), !result))
                                                    {
                                                      if ((*(*(this + 33) + 788) = 0, v153 = *(this + 33), v154 = *(v153 + 788), *(v153 + 788) = 0, *(*(this + 33) + 788) ^= 0x3FFu, v155 = *(this + 33), v156 = *(v155 + 788), *(v155 + 788) = v154, !*(this + 564)) && !*(this + 1166) && !*(this + 1167) || (result = CAHDec::addToPatcherList(this, this + 564, 788, 0, 0x3FFFFFFFFFFLL, 32, v156, 4), !result))
                                                      {
                                                        if ((*(*(this + 33) + 792) = 0, v157 = *(this + 33), v158 = *(v157 + 792), *(v157 + 792) = 0, *(*(this + 33) + 792) ^= 0xFFFFFF00, v159 = *(this + 33), v160 = *(v159 + 792), *(v159 + 792) = v158, !*(this + 586)) && !*(this + 1210) && !*(this + 1211) || (result = CAHDec::addToPatcherList(this, this + 586, 792, 0, 0xFFFFFFFFLL, 8, v160, 4), !result))
                                                        {
                                                          if ((*(*(this + 33) + 796) = 0, v161 = *(this + 33), v162 = *(v161 + 796), *(v161 + 796) = 0, *(*(this + 33) + 796) ^= 0x3FFu, v163 = *(this + 33), v164 = *(v163 + 796), *(v163 + 796) = v162, !*(this + 586)) && !*(this + 1210) && !*(this + 1211) || (result = CAHDec::addToPatcherList(this, this + 586, 796, 0, 0x3FFFFFFFFFFLL, 32, v164, 4), !result))
                                                          {
                                                            if ((*(*(this + 33) + 800) = 0, v165 = *(this + 33), v166 = *(v165 + 800), *(v165 + 800) = 0, *(*(this + 33) + 800) ^= 0xFFFFFF00, v167 = *(this + 33), v168 = *(v167 + 800), *(v167 + 800) = v166, !*(this + 608)) && !*(this + 1254) && !*(this + 1255) || (result = CAHDec::addToPatcherList(this, this + 608, 800, 0, 0xFFFFFFFFLL, 8, v168, 4), !result))
                                                            {
                                                              if ((*(*(this + 33) + 804) = 0, v169 = *(this + 33), v170 = *(v169 + 804), *(v169 + 804) = 0, *(*(this + 33) + 804) ^= 0x3FFu, v171 = *(this + 33), v172 = *(v171 + 804), *(v171 + 804) = v170, !*(this + 608)) && !*(this + 1254) && !*(this + 1255) || (result = CAHDec::addToPatcherList(this, this + 608, 804, 0, 0x3FFFFFFFFFFLL, 32, v172, 4), !result))
                                                              {
                                                                if ((*(*(this + 33) + 808) = 0, v173 = *(this + 33), v174 = *(v173 + 808), *(v173 + 808) = 0, *(*(this + 33) + 808) ^= 0xFFFFFF00, v175 = *(this + 33), v176 = *(v175 + 808), *(v175 + 808) = v174, !*(this + 630)) && !*(this + 1298) && !*(this + 1299) || (result = CAHDec::addToPatcherList(this, this + 630, 808, 0, 0xFFFFFFFFLL, 8, v176, 4), !result))
                                                                {
                                                                  if ((*(*(this + 33) + 812) = 0, v177 = *(this + 33), v178 = *(v177 + 812), *(v177 + 812) = 0, *(*(this + 33) + 812) ^= 0x3FFu, v179 = *(this + 33), v180 = *(v179 + 812), *(v179 + 812) = v178, !*(this + 630)) && !*(this + 1298) && !*(this + 1299) || (result = CAHDec::addToPatcherList(this, this + 630, 812, 0, 0x3FFFFFFFFFFLL, 32, v180, 4), !result))
                                                                  {
                                                                    if ((*(*(this + 33) + 816) = 0, v181 = *(this + 33), v182 = *(v181 + 816), *(v181 + 816) = 0, *(*(this + 33) + 816) ^= 0xFFFFFF00, v183 = *(this + 33), v184 = *(v183 + 816), *(v183 + 816) = v182, !*(this + 696)) && !*(this + 1430) && !*(this + 1431) || (result = CAHDec::addToPatcherList(this, this + 696, 816, 0, 0xFFFFFFFFLL, 8, v184, 4), !result))
                                                                    {
                                                                      if ((*(*(this + 33) + 820) = 0, v185 = *(this + 33), v186 = *(v185 + 820), *(v185 + 820) = 0, *(*(this + 33) + 820) ^= 0x3FFu, v187 = *(this + 33), v188 = *(v187 + 820), *(v187 + 820) = v186, !*(this + 696)) && !*(this + 1430) && !*(this + 1431) || (result = CAHDec::addToPatcherList(this, this + 696, 820, 0, 0x3FFFFFFFFFFLL, 32, v188, 4), !result))
                                                                      {
                                                                        if ((v189 = *(*(this + 32) + 37868), *(*(this + 33) + 824) = 0, *(*(this + 33) + 828) = 0, *(*(this + 33) + 832) = 0, *(*(this + 33) + 836) = 0, *(*(this + 33) + 840) = 0, *(*(this + 33) + 844) = 0, *(*(this + 33) + 848) = 0, *(*(this + 33) + 852) = 0, v190 = *(this + 33), v191 = *(v190 + 832), *(v190 + 832) = 0, *(*(this + 33) + 832) ^= 0xFFFFFF80, v192 = *(this + 33), v193 = *(v192 + 832), *(v192 + 832) = v191, v194 = *(*(*(this + 32) + 8240) + 384 * v189 + 8), !*v194) && !*(v194 + 152) && !*(v194 + 156) || (result = CAHDec::addToPatcherList(this, v194, 832, *(v194 + 52), 0xFFFFFFFFLL, 7, v193, 4), !result))
                                                                        {
                                                                          if ((v195 = *(this + 33), v196 = *(v195 + 836), *(v195 + 836) = 0, *(*(this + 33) + 836) ^= 0x3FFu, v197 = *(this + 33), v198 = *(v197 + 836), *(v197 + 836) = v196, v199 = *(*(*(this + 32) + 8240) + 384 * v189 + 8), !*v199) && !*(v199 + 152) && !*(v199 + 156) || (result = CAHDec::addToPatcherList(this, v199, 836, *(v199 + 52), 0x3FFFFFFFFFFLL, 32, v198, 4), !result))
                                                                          {
                                                                            if ((v200 = *(this + 33), v201 = *(v200 + 848), *(v200 + 848) = 0, *(*(this + 33) + 848) ^= 0xFFFFFF80, v202 = *(this + 33), v203 = *(v202 + 848), *(v202 + 848) = v201, v204 = *(*(*(this + 32) + 8240) + 384 * v189 + 8), !*v204) && !*(v204 + 152) && !*(v204 + 156) || (result = CAHDec::addToPatcherList(this, v204, 848, *(v204 + 56), 0xFFFFFFFFLL, 7, v203, 4), !result))
                                                                            {
                                                                              v205 = *(this + 33);
                                                                              v206 = *(v205 + 852);
                                                                              *(v205 + 852) = 0;
                                                                              *(*(this + 33) + 852) ^= 0x3FFu;
                                                                              v207 = *(this + 33);
                                                                              v208 = *(v207 + 852);
                                                                              *(v207 + 852) = v206;
                                                                              v209 = *(this + 32);
                                                                              v210 = *(*(v209 + 8240) + 384 * v189 + 8);
                                                                              if (*v210 || *(v210 + 152) || *(v210 + 156))
                                                                              {
                                                                                result = CAHDec::addToPatcherList(this, v210, 852, *(v210 + 56), 0x3FFFFFFFFFFLL, 32, v208, 4);
                                                                                if (result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v209 = *(this + 32);
                                                                              }

                                                                              v211 = *(v209 + 2648);
                                                                              v212 = *(this + 33);
                                                                              v213 = *(v212 + 824);
                                                                              *(v212 + 824) = 0;
                                                                              *(*(this + 33) + 824) ^= 0xFFFFFF80;
                                                                              v214 = *(this + 33);
                                                                              v215 = *(v214 + 824);
                                                                              *(v214 + 824) = v213;
                                                                              v216 = *(this + 32);
                                                                              if (v211 == 1)
                                                                              {
                                                                                v217 = *(*(v216 + 8240) + 384 * v189 + 8);
                                                                                if (*v217 || *(v217 + 152) || *(v217 + 156))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v217, 824, *(v217 + 64), 0xFFFFFFFFLL, 7, v215, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v218 = *(this + 33);
                                                                                v219 = *(v218 + 828);
                                                                                *(v218 + 828) = 0;
                                                                                *(*(this + 33) + 828) ^= 0x3FFu;
                                                                                v220 = *(this + 33);
                                                                                v221 = *(v220 + 828);
                                                                                *(v220 + 828) = v219;
                                                                                v222 = *(*(*(this + 32) + 8240) + 384 * v189 + 8);
                                                                                if (*v222 || *(v222 + 152) || *(v222 + 156))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v222, 828, *(v222 + 64), 0x3FFFFFFFFFFLL, 32, v221, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v223 = *(this + 33);
                                                                                v224 = *(v223 + 840);
                                                                                *(v223 + 840) = 0;
                                                                                *(*(this + 33) + 840) ^= 0xFFFFFF80;
                                                                                v225 = *(this + 33);
                                                                                v226 = *(v225 + 840);
                                                                                *(v225 + 840) = v224;
                                                                                v227 = *(*(*(this + 32) + 8240) + 384 * v189 + 8);
                                                                                if (*v227 || *(v227 + 152) || *(v227 + 156))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v227, 840, *(v227 + 68), 0xFFFFFFFFLL, 7, v226, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v228 = *(this + 33);
                                                                                v229 = *(v228 + 844);
                                                                                *(v228 + 844) = 0;
                                                                                *(*(this + 33) + 844) ^= 0x3FFu;
                                                                                v230 = *(this + 33);
                                                                                v231 = *(v230 + 844);
                                                                                *(v230 + 844) = v229;
                                                                                v232 = *(*(*(this + 32) + 8240) + 384 * v189 + 8);
                                                                                if (*v232 || *(v232 + 152) || *(v232 + 156))
                                                                                {
                                                                                  v233 = *(v232 + 68);
                                                                                  v234 = this;
                                                                                  goto LABEL_234;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v235 = (v216 + 176 * v189 + 2960);
                                                                                if (*v235 || *(v216 + 176 * v189 + 3112) || *(v216 + 176 * v189 + 3116))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v235, 824, 0, 0xFFFFFFFFLL, 7, v215, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v236 = *(this + 33);
                                                                                v237 = *(v236 + 828);
                                                                                *(v236 + 828) = 0;
                                                                                *(*(this + 33) + 828) ^= 0x3FFu;
                                                                                v238 = *(this + 33);
                                                                                v239 = *(v238 + 828);
                                                                                *(v238 + 828) = v237;
                                                                                v240 = (*(this + 32) + 176 * v189 + 2960);
                                                                                if (*v240 || *(*(this + 32) + 176 * v189 + 3112) || *(*(this + 32) + 176 * v189 + 3116))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v240, 828, 0, 0x3FFFFFFFFFFLL, 32, v239, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v241 = *(this + 33);
                                                                                v242 = *(v241 + 840);
                                                                                *(v241 + 840) = 0;
                                                                                *(*(this + 33) + 840) ^= 0xFFFFFF80;
                                                                                v243 = *(this + 33);
                                                                                v244 = *(v243 + 840);
                                                                                *(v243 + 840) = v242;
                                                                                v245 = (*(this + 32) + 176 * v189 + 5600);
                                                                                if (*v245 || *(*(this + 32) + 176 * v189 + 5752) || *(*(this + 32) + 176 * v189 + 5756))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, v245, 840, 0, 0xFFFFFFFFLL, 7, v244, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v246 = *(this + 33);
                                                                                v247 = *(v246 + 844);
                                                                                *(v246 + 844) = 0;
                                                                                *(*(this + 33) + 844) ^= 0x3FFu;
                                                                                v248 = *(this + 33);
                                                                                v231 = *(v248 + 844);
                                                                                *(v248 + 844) = v247;
                                                                                v232 = *(this + 32) + 176 * v189 + 5600;
                                                                                if (*v232 || *(*(this + 32) + 176 * v189 + 5752) || *(*(this + 32) + 176 * v189 + 5756))
                                                                                {
                                                                                  v234 = this;
                                                                                  v233 = 0;
LABEL_234:
                                                                                  result = CAHDec::addToPatcherList(v234, v232, 844, v233, 0x3FFFFFFFFFFLL, 32, v231, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }
                                                                              }

                                                                              *(*(this + 33) + 856) = 0;
                                                                              *(*(this + 33) + 860) = 0;
                                                                              *(*(this + 33) + 864) = 0;
                                                                              *(*(this + 33) + 868) = 0;
                                                                              *(*(this + 33) + 872) = 0;
                                                                              *(*(this + 33) + 876) = 0;
                                                                              *(*(this + 33) + 880) = 0;
                                                                              *(*(this + 33) + 884) = 0;
                                                                              if (*(*(this + 32) + 2644))
                                                                              {
                                                                                v249 = *(this + 33);
                                                                                v250 = *(v249 + 856);
                                                                                *(v249 + 856) = 0;
                                                                                *(*(this + 33) + 856) ^= 0xFFFFFF00;
                                                                                v251 = *(this + 33);
                                                                                v252 = *(v251 + 856);
                                                                                *(v251 + 856) = v250;
                                                                                if (*(this + 674) || *(this + 1386) || *(this + 1387))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, this + 674, 856, 0, 0xFFFFFFFFLL, 8, v252, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v253 = *(this + 33);
                                                                                v254 = *(v253 + 860);
                                                                                *(v253 + 860) = 0;
                                                                                *(*(this + 33) + 860) ^= 0x3FFu;
                                                                                v255 = *(this + 33);
                                                                                v256 = *(v255 + 860);
                                                                                *(v255 + 860) = v254;
                                                                                if (*(this + 674) || *(this + 1386) || *(this + 1387))
                                                                                {
                                                                                  result = CAHDec::addToPatcherList(this, this + 674, 860, 0, 0x3FFFFFFFFFFLL, 32, v256, 4);
                                                                                  if (result)
                                                                                  {
                                                                                    return result;
                                                                                  }
                                                                                }

                                                                                v257 = *(this + 32);
                                                                                v258 = *(v257 + 2892);
                                                                                if (*(v257 + 2892))
                                                                                {
                                                                                  v259 = *(v257 + 2904);
                                                                                  v258 = *(v257 + 2908);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v259 = 0;
                                                                                }

                                                                                v260 = *(v257 + 37888);
                                                                                v261 = *(v260 + 52);
                                                                                v262 = v261 + v259;
                                                                                if (__CFADD__(v261, v259))
                                                                                {
                                                                                  v263 = 1;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v264 = *(v260 + 56);
                                                                                  v265 = v264 + v258;
                                                                                  if (!__CFADD__(v264, v258))
                                                                                  {
                                                                                    v269 = *(this + 33);
                                                                                    v270 = *(v269 + 864);
                                                                                    *(v269 + 864) = 0;
                                                                                    *(*(this + 33) + 864) ^= 0xFFFFFFC0;
                                                                                    v271 = *(this + 33);
                                                                                    v272 = *(v271 + 864);
                                                                                    *(v271 + 864) = v270;
                                                                                    v273 = *(*(this + 32) + 37888);
                                                                                    if (*v273 || *(v273 + 152) || *(v273 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v273, 864, v262, 0xFFFFFFFFLL, 6, v272, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v274 = *(this + 33);
                                                                                    v275 = *(v274 + 868);
                                                                                    *(v274 + 868) = 0;
                                                                                    *(*(this + 33) + 868) ^= 0x3FFu;
                                                                                    v276 = *(this + 33);
                                                                                    v277 = *(v276 + 868);
                                                                                    *(v276 + 868) = v275;
                                                                                    v278 = *(*(this + 32) + 37888);
                                                                                    if (*v278 || *(v278 + 152) || *(v278 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v278, 868, v262, 0x3FFFFFFFFFFLL, 32, v277, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v279 = *(this + 33);
                                                                                    v280 = *(v279 + 876);
                                                                                    *(v279 + 876) = 0;
                                                                                    *(*(this + 33) + 876) ^= 0xFFFFFFC0;
                                                                                    v281 = *(this + 33);
                                                                                    v282 = *(v281 + 876);
                                                                                    *(v281 + 876) = v280;
                                                                                    v283 = *(*(this + 32) + 37888);
                                                                                    if (*v283 || *(v283 + 152) || *(v283 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v283, 876, v265, 0xFFFFFFFFLL, 6, v282, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v284 = *(this + 33);
                                                                                    v285 = *(v284 + 880);
                                                                                    *(v284 + 880) = 0;
                                                                                    *(*(this + 33) + 880) ^= 0x3FFu;
                                                                                    v286 = *(this + 33);
                                                                                    v287 = *(v286 + 880);
                                                                                    *(v286 + 880) = v285;
                                                                                    v288 = *(this + 32);
                                                                                    v289 = *(v288 + 37888);
                                                                                    if (*v289 || *(v289 + 152) || *(v289 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v289, 880, v265, 0x3FFFFFFFFFFLL, 32, v287, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v288 = *(this + 32);
                                                                                    }

                                                                                    v290 = 15112;
                                                                                    if (*(v288 + 8))
                                                                                    {
                                                                                      v290 = 37888;
                                                                                    }

                                                                                    v291 = 76;
                                                                                    if (!*(v288 + 8))
                                                                                    {
                                                                                      v291 = 78508;
                                                                                    }

                                                                                    v292 = 78512;
                                                                                    if (*(v288 + 8))
                                                                                    {
                                                                                      v292 = 80;
                                                                                    }

                                                                                    *(*(this + 33) + 872) = *(*(this + 33) + 872) & 0xFFFC003F | (((*(*(v288 + v290) + v291) >> 6) & 0xFFF) << 6);
                                                                                    *(*(this + 33) + 884) = *(*(this + 33) + 884) & 0xFFF8003F | (((*(*(*(this + 32) + v290) + v292) >> 6) & 0x1FFF) << 6);
                                                                                    goto LABEL_279;
                                                                                  }

                                                                                  v263 = 2;
                                                                                }

                                                                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                {
                                                                                  LODWORD(v361[0]) = 136315394;
                                                                                  *(v361 + 4) = "populateAddressRegisters";
                                                                                  WORD6(v361[0]) = 1024;
                                                                                  *(v361 + 14) = v263;
                                                                                  v266 = MEMORY[0x277D86220];
                                                                                  v267 = "AppleAVD: %s(): failKind = %d";
                                                                                  v268 = 18;
                                                                                  goto LABEL_348;
                                                                                }

                                                                                return 0xFFFFFFFFLL;
                                                                              }

LABEL_279:
                                                                              v293 = *(this + 32);
                                                                              if (*(*(v293 + 15112) + 128) == 1 && !*(*(v293 + 37616) + 1956))
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              *(*(this + 33) + 888) = 0;
                                                                              v294 = *(this + 33);
                                                                              v295 = *(v294 + 888);
                                                                              *(v294 + 888) = 0;
                                                                              *(*(this + 33) + 888) ^= 0xFFFFFF00;
                                                                              v296 = *(this + 33);
                                                                              v297 = *(v296 + 888);
                                                                              *(v296 + 888) = v295;
                                                                              if (!*(this + 718) && !*(this + 1474) && !*(this + 1475) || (result = CAHDec::addToPatcherList(this, this + 718, 888, 0, 0xFFFFFFFFLL, 8, v297, 4), !result))
                                                                              {
                                                                                if ((*(*(this + 33) + 892) = 0, v298 = *(this + 33), v299 = *(v298 + 892), *(v298 + 892) = 0, *(*(this + 33) + 892) ^= 0x3FFu, v300 = *(this + 33), v301 = *(v300 + 892), *(v300 + 892) = v299, !*(this + 718)) && !*(this + 1474) && !*(this + 1475) || (result = CAHDec::addToPatcherList(this, this + 718, 892, 0, 0x3FFFFFFFFFFLL, 32, v301, 4), !result))
                                                                                {
                                                                                  if (*(*(*(this + 32) + 15112) + 128))
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  v302 = 0;
                                                                                  v303 = 0;
                                                                                  do
                                                                                  {
                                                                                    v304 = *(*(*(*(this + 32) + 15112) + 79224) + v303);
                                                                                    if (!v304 || (v305 = *(v304 + 2016)) == 0)
                                                                                    {
                                                                                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                                                      {
                                                                                        LODWORD(v361[0]) = 136315138;
                                                                                        *(v361 + 4) = "populateAddressRegisters";
                                                                                        v266 = MEMORY[0x277D86220];
                                                                                        v267 = "AppleAVD: %s(): Unexpected. av1_fb->buffer is 0x0!";
                                                                                        v268 = 12;
LABEL_348:
                                                                                        _os_log_impl(&dword_277606000, v266, OS_LOG_TYPE_DEFAULT, v267, v361, v268);
                                                                                      }

                                                                                      return 0xFFFFFFFFLL;
                                                                                    }

                                                                                    *(*(this + 33) + v302 + 896) = 0;
                                                                                    *(*(this + 33) + v302 + 924) = 0;
                                                                                    *(*(this + 33) + v302 + 952) = 0;
                                                                                    *(*(this + 33) + v302 + 980) = 0;
                                                                                    *(*(this + 33) + v302 + 1008) = 0;
                                                                                    *(*(this + 33) + v302 + 1036) = 0;
                                                                                    *(*(this + 33) + v302 + 1064) = 0;
                                                                                    *(*(this + 33) + v302 + 1092) = 0;
                                                                                    v306 = *(this + 33) + v302;
                                                                                    v307 = *(v306 + 952);
                                                                                    *(v306 + 952) = 0;
                                                                                    *(*(this + 33) + v302 + 952) ^= 0xFFFFFF80;
                                                                                    v308 = *(this + 33) + v302;
                                                                                    v309 = *(v308 + 952);
                                                                                    *(v308 + 952) = v307;
                                                                                    v310 = *(v305 + 8);
                                                                                    if (*v310 || *(v310 + 152) || *(v310 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v310, v302 + 952, *(v310 + 52), 0xFFFFFFFFLL, 7, v309, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v311 = *(this + 33) + v302;
                                                                                    v312 = *(v311 + 980);
                                                                                    *(v311 + 980) = 0;
                                                                                    *(*(this + 33) + v302 + 980) ^= 0x3FFu;
                                                                                    v313 = *(this + 33) + v302;
                                                                                    v314 = *(v313 + 980);
                                                                                    *(v313 + 980) = v312;
                                                                                    v315 = *(v305 + 8);
                                                                                    if (*v315 || *(v315 + 152) || *(v315 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v315, v302 + 980, *(v315 + 52), 0x3FFFFFFFFFFLL, 32, v314, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v316 = *(this + 33) + v302;
                                                                                    v317 = *(v316 + 1064);
                                                                                    *(v316 + 1064) = 0;
                                                                                    *(*(this + 33) + v302 + 1064) ^= 0xFFFFFF80;
                                                                                    v318 = *(this + 33) + v302;
                                                                                    v319 = *(v318 + 1064);
                                                                                    *(v318 + 1064) = v317;
                                                                                    v320 = *(v305 + 8);
                                                                                    if (*v320 || *(v320 + 152) || *(v320 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v320, v302 + 1064, *(v320 + 56), 0xFFFFFFFFLL, 7, v319, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v321 = *(this + 33) + v302;
                                                                                    v322 = *(v321 + 1092);
                                                                                    *(v321 + 1092) = 0;
                                                                                    *(*(this + 33) + v302 + 1092) ^= 0x3FFu;
                                                                                    v323 = *(this + 33) + v302;
                                                                                    v324 = *(v323 + 1092);
                                                                                    *(v323 + 1092) = v322;
                                                                                    v325 = *(v305 + 8);
                                                                                    if (*v325 || *(v325 + 152) || *(v325 + 156))
                                                                                    {
                                                                                      result = CAHDec::addToPatcherList(this, v325, v302 + 1092, *(v325 + 56), 0x3FFFFFFFFFFLL, 32, v324, 4);
                                                                                      if (result)
                                                                                      {
                                                                                        return result;
                                                                                      }
                                                                                    }

                                                                                    v326 = *(*(this + 32) + 2648);
                                                                                    v327 = *(this + 33) + v302;
                                                                                    v328 = *(v327 + 896);
                                                                                    *(v327 + 896) = 0;
                                                                                    *(*(this + 33) + v302 + 896) ^= 0xFFFFFF80;
                                                                                    v329 = *(this + 33) + v302;
                                                                                    v330 = *(v329 + 896);
                                                                                    *(v329 + 896) = v328;
                                                                                    if (v326 == 1)
                                                                                    {
                                                                                      v331 = *(v305 + 8);
                                                                                      if (*v331 || *(v331 + 152) || *(v331 + 156))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, v331, v302 | 0x380, *(v331 + 64), 0xFFFFFFFFLL, 7, v330, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v332 = *(this + 33) + v302;
                                                                                      v333 = *(v332 + 924);
                                                                                      *(v332 + 924) = 0;
                                                                                      *(*(this + 33) + v302 + 924) ^= 0x3FFu;
                                                                                      v334 = *(this + 33) + v302;
                                                                                      v335 = *(v334 + 924);
                                                                                      *(v334 + 924) = v333;
                                                                                      v336 = *(v305 + 8);
                                                                                      if (*v336 || *(v336 + 152) || *(v336 + 156))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, v336, v302 + 924, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v335, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v337 = *(this + 33) + v302;
                                                                                      v338 = *(v337 + 1008);
                                                                                      *(v337 + 1008) = 0;
                                                                                      *(*(this + 33) + v302 + 1008) ^= 0xFFFFFF80;
                                                                                      v339 = *(this + 33) + v302;
                                                                                      v340 = *(v339 + 1008);
                                                                                      *(v339 + 1008) = v338;
                                                                                      v341 = *(v305 + 8);
                                                                                      if (*v341 || *(v341 + 152) || *(v341 + 156))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, v341, v302 + 1008, *(v341 + 68), 0xFFFFFFFFLL, 7, v340, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v342 = *(this + 33) + v302;
                                                                                      v343 = *(v342 + 1036);
                                                                                      *(v342 + 1036) = 0;
                                                                                      *(*(this + 33) + v302 + 1036) ^= 0x3FFu;
                                                                                      v344 = *(this + 33) + v302;
                                                                                      v345 = *(v344 + 1036);
                                                                                      *(v344 + 1036) = v343;
                                                                                      v346 = *(v305 + 8);
                                                                                      if (*v346 || *(v346 + 152) || *(v346 + 156))
                                                                                      {
                                                                                        v347 = *(v346 + 68);
                                                                                        v348 = v302 + 1036;
                                                                                        v349 = this;
                                                                                        goto LABEL_343;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if (*(v305 + 24) || *(v305 + 176) || *(v305 + 180))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, (v305 + 24), v302 | 0x380, 0, 0xFFFFFFFFLL, 7, v330, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v350 = *(this + 33) + v302;
                                                                                      v351 = *(v350 + 924);
                                                                                      *(v350 + 924) = 0;
                                                                                      *(*(this + 33) + v302 + 924) ^= 0x3FFu;
                                                                                      v352 = *(this + 33) + v302;
                                                                                      v353 = *(v352 + 924);
                                                                                      *(v352 + 924) = v351;
                                                                                      if (*(v305 + 24) || *(v305 + 176) || *(v305 + 180))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, (v305 + 24), v302 + 924, 0, 0x3FFFFFFFFFFLL, 32, v353, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v354 = *(this + 33) + v302;
                                                                                      v355 = *(v354 + 1008);
                                                                                      *(v354 + 1008) = 0;
                                                                                      *(*(this + 33) + v302 + 1008) ^= 0xFFFFFF80;
                                                                                      v356 = *(this + 33) + v302;
                                                                                      v357 = *(v356 + 1008);
                                                                                      *(v356 + 1008) = v355;
                                                                                      if (*(v305 + 200) || *(v305 + 352) || *(v305 + 356))
                                                                                      {
                                                                                        result = CAHDec::addToPatcherList(this, (v305 + 200), v302 + 1008, 0, 0xFFFFFFFFLL, 7, v357, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }

                                                                                      v358 = *(this + 33) + v302;
                                                                                      v359 = *(v358 + 1036);
                                                                                      *(v358 + 1036) = 0;
                                                                                      *(*(this + 33) + v302 + 1036) ^= 0x3FFu;
                                                                                      v360 = *(this + 33) + v302;
                                                                                      v345 = *(v360 + 1036);
                                                                                      *(v360 + 1036) = v359;
                                                                                      if (*(v305 + 200) || *(v305 + 352) || *(v305 + 356))
                                                                                      {
                                                                                        v348 = v302 + 1036;
                                                                                        v349 = this;
                                                                                        v346 = v305 + 200;
                                                                                        v347 = 0;
LABEL_343:
                                                                                        result = CAHDec::addToPatcherList(v349, v346, v348, v347, 0x3FFFFFFFFFFLL, 32, v345, 4);
                                                                                        if (result)
                                                                                        {
                                                                                          return result;
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    result = 0;
                                                                                    v303 += 8;
                                                                                    v302 += 4;
                                                                                  }

                                                                                  while (v302 != 28);
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

uint64_t CAHDecDaisyAvx::populateDecryptionRegisters(CAHDecDaisyAvx *this)
{
  v1 = *(this + 32);
  if (*(v1 + 2360) == 1)
  {
    v2 = *(this + 33);
    *(v2 + 1392) = *(v2 + 1392) & 0xFFFFFFFE | *(v1 + 2508) & 1;
    if (*(v1 + 2508))
    {
      *(v2 + 1404) = 0x10000000;
      *(v2 + 1408) = *(v1 + 2368);
      *(v2 + 1416) = 0;
      *(v2 + 1412) = 0;
      *(v2 + 1424) = *(v1 + 2372);
      v3 = *(v1 + 2388);
      *(v2 + 1456) = *(v1 + 2404);
      *(v2 + 1440) = v3;
    }

    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFFD | (2 * (*(v1 + 2512) & 1));
    if (*(v1 + 2512))
    {
      *(v2 + 1472) = 0;
      v4 = *(v1 + 2424);
      *(v2 + 1472) = (*(v1 + 2424) & 1) << 22;
      v5 = ((*(v1 + 2420) & 1) << 23) | ((v4 & 1) << 22) | 0x20000000;
      *(v2 + 1472) = v5;
      if (!*(v1 + 2364))
      {
        ++v5;
      }

      *(v2 + 1472) = v5;
      v6 = *(v1 + 2428);
      v7 = *(v1 + 2460);
      *(v2 + 1492) = *(v1 + 2444);
      *(v2 + 1508) = v7;
      *(v2 + 1476) = v6;
    }

    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFFB | (4 * (*(v1 + 2516) & 1));
    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFF7 | (8 * (*(v1 + 2520) & 1));
    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFEF | (16 * (*(v1 + 2524) & 1));
    *(v2 + 1528) = 0;
    if (*(v1 + 2476) == 2)
    {
      v8 = 805306368;
    }

    else
    {
      v8 = 813694976;
    }

    *(v2 + 1528) = v8;
    memcpy((v2 + 1532), (v1 + 2480), 4 * *(v1 + 2476));
    if (*(v1 + 2516))
    {
      *(v1 + 2516) = 0;
    }
  }

  return 0;
}

uint64_t CAHDecDaisyAvx::populateTiles(CAHDecDaisyAvx *this)
{
  v2 = (*(*(*(this + 32) + 15112) + 140) * *(*(*(this + 32) + 15112) + 136));
  v3 = *(this + *(this + 13) + 34);
  CAHDecDaisyAvx::populateClearTiles(this);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 1548;
    do
    {
      CAHDecCatnipAvx::populateTileRegisters(this, v5, v4++);
      v5 += 12;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t CAHDecDaisyAvx::populateAvxVPDependency(CAVDAvxDecoder **this)
{
  if (CAVDAvxDecoder::isParallelDecode(this[32]))
  {
    v2 = 0;
  }

  else
  {
    v2 = 32;
  }

  *(this[33] + 348) = *(this[33] + 348) & 0xFFFFFFDF | v2;
  *(this[33] + 348) &= 0xFFFFF83F;
  *(this[33] + 348) &= 0xFFFF07FF;
  *(this[33] + 349) = 0;
  v3 = this[33];
  v4 = *(v3 + 348);
  if ((v4 & 0x20) != 0)
  {
    *(v3 + 348) = v4 & 0xFFFF07FF | ((((*(*(*(this[32] + 4702) + 1920) + 2024) << 11) + 2048) >> 8) >> 3 << 11);
    v3 = this[33];
    v4 = *(v3 + 348);
  }

  *(v3 + 348) = v4 & 0xFFFFF83F | (((((*(*(this[32] + 1889) + 79296) << 6) + 64) >> 6) & 0x1F) << 6);
  v5 = this[32];
  v6 = *(v5 + 1889);
  if (*(v6 + 79312) || *(v6 + 79304))
  {
    *(this[33] + 349) |= 1u;
    v5 = this[32];
    v6 = *(v5 + 1889);
    if (*(v6 + 79312))
    {
      *(this[33] + 349) = *(this[33] + 349) & 0xFFFFFFC1 | (2 * (((2 * *(*(*(v5 + 4702) + 1920) + 2024) + 2) >> 1) & 0x1F));
      v5 = this[32];
      v6 = *(v5 + 1889);
    }

    if (*(v6 + 79304))
    {
      *(this[33] + 349) = *(this[33] + 349) & 0xFFFFF83F | (((((*(*(*(*(v5 + 4702) + 1912) + 504) + 184) << 6) + 64) >> 6) & 0x1F) << 6);
      v5 = this[32];
      v6 = *(v5 + 1889);
    }
  }

  if ((*(v6 + 128) & 1) == 0)
  {
    *(this[33] + 349) |= 0x800u;
    *(this[33] + 349) = *(this[33] + 349) & 0xFFFE0FFF | (((((*(*(*(this[32] + 4702) + 1920) + 2024) << 12) + 4096) >> 12) & 0x1F) << 12);
    v5 = this[32];
  }

  if (*(*(v5 + 4702) + 1957) == 1)
  {
    v7 = *(v5 + 1889);
    if (v7[9820])
    {
      *(this[33] + 349) |= 0x800u;
      *(this[33] + 349) = *(this[33] + 349) & 0xFFC1FFFF | (((((*(*(this[32] + 1889) + 78744) << 17) + 0x20000) >> 17) & 0x1F) << 17);
      v7 = *(this[32] + 1889);
    }

    if (v7[9848])
    {
      *(this[33] + 349) |= 0x800u;
      *(this[33] + 349) = *(this[33] + 349) & 0xF83FFFFF | (((((*(*(this[32] + 1889) + 78968) << 22) + 0x400000) >> 22) & 0x1F) << 22);
      v7 = *(this[32] + 1889);
    }

    if (v7[9876])
    {
      *(this[33] + 349) |= 0x800u;
      *(this[33] + 349) = (*(this[33] + 349) & 0x7FFFFFF | (*(*(this[32] + 1889) + 79192) << 27)) + 0x8000000;
    }
  }

  return 0;
}

uint64_t CAHDecDaisyAvx::updateCommonRegisters(CAHDecDaisyAvx *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecDaisyAvx::populateSequenceRegisters(CAHDecDaisyAvx *this)
{
  v2 = *(this + 32);
  v1 = *(this + 33);
  v3 = *(v2 + 15112);
  v4 = *(v2 + 37616);
  *(v1 + 44) = 0;
  v5 = *(v3 + 8) - 1;
  *(v1 + 44) = v5;
  *(v1 + 44) = (v5 | (*(v3 + 12) << 16)) - 0x10000;
  *(v1 + 48) = 0;
  v6 = *(v4 + 80) & 1;
  *(v1 + 48) = v6;
  v7 = v6 & 0xFFFFFFF1 | (2 * (*(v4 + 76) & 7));
  *(v1 + 48) = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * (*(v4 + 72) & 1));
  *(v1 + 48) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * (*(v4 + 96) & 1));
  *(v1 + 48) = v9;
  v10 = v9 & 0xFFFFFFBF | ((*(v4 + 95) & 1) << 6);
  *(v1 + 48) = v10;
  v11 = v10 & 0xFFFFFF7F | ((*(v4 + 94) & 1) << 7);
  *(v1 + 48) = v11;
  v12 = v11 & 0xFFFFFEFF | ((*(v4 + 93) & 1) << 8);
  *(v1 + 48) = v12;
  v13 = v12 & 0xFFFFFDFF | ((*(v4 + 92) & 1) << 9);
  *(v1 + 48) = v13;
  v14 = v13 & 0xFFFFFBFF | ((*(v4 + 60) == 15) << 10);
  *(v1 + 48) = v14;
  v15 = v14 & 0xFFFFF7FF | ((*(v4 + 1942) & 1) << 11);
  *(v1 + 48) = v15;
  v16 = v15 & 0xFFF87FFF | ((*(v3 + 58) & 0xF) << 15);
  *(v1 + 48) = v16;
  v17 = v16 & 0xFF87FFFF | ((*(v3 + 57) & 0xF) << 19);
  *(v1 + 48) = v17;
  *(v1 + 48) = v17 & 0xFCFFFFFF | ((*(v3 + 56) & 3) << 24);
  return 0;
}

uint64_t CAHDecDaisyAvx::getUpscaleConvolveStep(CAHDecDaisyAvx *this, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((a3 / 2 + (a2 << 14)) / a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "int32_t CAHDecDaisyAvx::getUpscaleConvolveStep(int, int)";
    v6 = 1024;
    v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v4, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDaisyAvx::getUpscaleConvolveX0(CAHDecDaisyAvx *this, int a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((((a2 - a3) << 13) + a3 / 2) / a3 - ((a4 * a3 - (a2 << 14) + ((a4 * a3 - (a2 << 14)) >> 31)) >> 1) + 128) & 0x3FFF;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "int32_t CAHDecDaisyAvx::getUpscaleConvolveX0(int, int, int32_t)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v5, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDaisyAvx::populatePictureRegisters(CAHDecDaisyAvx *this)
{
  v214 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v3 = *(v1 + 15112);
  v4 = *(v1 + 37616);
  *(v2 + 52) = 766509056;
  v5 = ((*(v1 + 2652) & 1) << 19) | 0x2DB00000;
  *(v2 + 52) = v5;
  v6 = v5 & 0xFFFBFFFF | ((*(v1 + 2653) & 1) << 18);
  *(v2 + 52) = v6;
  v7 = v6 & 0xFFFDFFFF | ((*(v1 + 2654) & 1) << 17);
  *(v2 + 52) = v7;
  if (*(v3 + 128) == 1)
  {
    v8 = (*(v4 + 1956) ^ 1) << 13;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7;
  *(v2 + 52) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v2 + 52) = v10;
  v11 = v10 & 0xFFFFF00F | ((*(*(this + 32) + 2644) == 1) << 10) | 0x2E0;
  *(v2 + 52) = v11;
  v12 = v11 & 0xFFFFFFE3 | (4 * (*(v3 + 78516) & 3));
  *(v2 + 52) = v12;
  *(v2 + 52) = v12 & 0xFFFFFFFC | *(v3 + 78520) & 3;
  *(v2 + 56) = 0;
  if (*(v4 + 1956))
  {
    v13 = 318767104;
  }

  else
  {
    v13 = 50331648;
  }

  *(v2 + 56) = v13;
  v14 = *(v3 + 24);
  v15 = *(v3 + 12);
  *(v2 + 60) = 0;
  if (*(v4 + 1956))
  {
    v15 = (v15 + 7) & 0xFFF8;
  }

  v16 = (v15 << 16) - 0x10000;
  *(v2 + 60) = v16;
  if (*(v4 + 1956))
  {
    LOWORD(v14) = (v14 + 7) & 0xFFF8;
  }

  *(v2 + 64) = 0;
  *(v2 + 60) = v16 & 0xFFFF0000 | (v14 - 1);
  v17 = *(v3 + 128) << 31;
  *(v2 + 68) = v17;
  v18 = v17 & 0x807FFFFF | (*(v4 + 1876) << 23);
  *(v2 + 68) = v18;
  v19 = v18 & 0xFF8FFFFF | ((*(v4 + 1896) & 7) << 20);
  *(v2 + 68) = v19;
  v20 = v19 & 0xFFF1FFFF | ((*(v4 + 1900) & 7) << 17);
  *(v2 + 68) = v20;
  v21 = v20 & 0xFFFEFFFF | ((*(*(*(this + 32) + 15112) + 79300) & 1) << 16);
  *(v2 + 68) = v21;
  v22 = v21 & 0xFFFF7FFF | ((*(v4 + 2284) & 1) << 15);
  *(v2 + 68) = v22;
  v23 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v23 = (*(v4 + 2285) & 1) << 14;
  }

  v24 = v23 | v22 & 0xFFFFBFFF;
  *(v2 + 68) = v24;
  v25 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v25 = (*(v4 + 2287) & 1) << 13;
  }

  v26 = v25 | v24 & 0xFFFFDFFF;
  *(v2 + 68) = v26;
  v27 = v26 & 0xFFFFEFFF | ((*(v4 + 1957) & 1) << 12);
  *(v2 + 68) = v27;
  if (*(v3 + 128))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v4 + 1958) << 10;
  }

  v29 = v28 | v27 & 0xFFFFFBFF;
  *(v2 + 68) = v29;
  v30 = v29 & 0xFFFFFDFF | ((*(v4 + 1962) & 1) << 9);
  *(v2 + 68) = v30;
  v31 = v30 & 0xFFFFFEFF | ((*(v4 + 1941) & 1) << 8);
  *(v2 + 68) = v31;
  if (*(v3 + 128))
  {
    v32 = 128;
  }

  else
  {
    v32 = *(v4 + 1948) << 7;
  }

  v33 = 0;
  v34 = v32 | v31 & 0xFFFFFF7F;
  *(v2 + 68) = v34;
  v35 = v34 & 0xFFFFFFBF | ((*(v4 + 1956) & 1) << 6);
  *(v2 + 68) = v35;
  v36 = v35 & 0xFFFFFFDF | (32 * (*(v4 + 1959) & 1));
  *(v2 + 68) = v36;
  v37 = v36 & 0xFFFFFFEF | (16 * (*(v4 + 1892) & 1));
  *(v2 + 68) = v37;
  v38 = v37 & 0xFFFFFFF7 | (8 * (*(v4 + 1960) & 1));
  *(v2 + 68) = v38;
  v39 = v38 & 0xFFFFFFFB | (4 * (*(v4 + 1961) & 1));
  *(v2 + 68) = v39;
  *(v2 + 68) = v39 & 0xFFFFFFFC | *(v4 + 1964) & 3;
  v40 = xmmword_27775BCE0;
  v41 = xmmword_27775BCD0;
  v42 = vdupq_n_s64(7uLL);
  v43 = vdupq_n_s64(1uLL);
  v44 = vdupq_n_s64(4uLL);
  do
  {
    v45 = vaddq_s64(v41, v43);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v42, v41)), *v40.i8).u8[0])
    {
      *(&v207 + v33) = v45.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v41)), *&v40).i8[2])
    {
      *(&v207 + v33 + 4) = v45.i32[2];
    }

    v46 = vaddq_s64(v40, v43);
    if (vuzp1_s16(*&v40, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v40))).i32[1])
    {
      *(&v209 + v33) = v46.i32[0];
      *(&v210 + v33) = v46.i32[2];
    }

    v40 = vaddq_s64(v40, v44);
    v41 = vaddq_s64(v41, v44);
    v33 += 16;
  }

  while (v33 != 32);
  v47 = 0;
  v48 = 1;
  do
  {
    if (v47 <= 5)
    {
      v49 = *(v3 + 79224);
      v50 = v48;
      do
      {
        if (v49 && *(v49 + 8 * v47) == *(v49 + 8 * v50))
        {
          *(&v207 + v50) = *(&v207 + v47);
        }

        ++v50;
      }

      while (v50 != 7);
    }

    ++v47;
    ++v48;
  }

  while (v47 != 7);
  v51 = 0;
  *(v2 + 72) = 0;
  if ((*(v3 + 128) & 1) == 0)
  {
    v51 = *(v4 + 2192) << 29;
  }

  v52 = 0;
  *(v2 + 72) = v51;
  v53 = ((v207 & 7) << 25) | ((*(v4 + 1872) != 0) << 28) | ((v208 & 7) << 22) | ((v209 & 7) << 19) | ((v210 & 7) << 16) | ((v211 & 7) << 13) | ((v212 & 7) << 10) | ((v213 & 7) << 7) | v51;
  *(v2 + 72) = v53;
  v54 = v53 & 0xFFFFFFBF | ((*(v4 + 2116) & 1) << 6);
  *(v2 + 72) = v54;
  v55 = v54 & 0xFFFFFFDF | (32 * (*(v4 + 2120) & 1));
  *(v2 + 72) = v55;
  v56 = v55 & 0xFFFFFFEF | (16 * (*(v4 + 2124) & 1));
  *(v2 + 72) = v56;
  v57 = v56 & 0xFFFFFFF7 | (8 * (*(v4 + 2128) & 1));
  *(v2 + 72) = v57;
  v58 = v57 & 0xFFFFFFFB | (4 * (*(v4 + 2132) & 1));
  *(v2 + 72) = v58;
  v59 = v58 & 0xFFFFFFFD | (2 * (*(v4 + 2136) & 1));
  *(v2 + 72) = v59;
  *(v2 + 72) = v59 & 0xFFFFFFFE | *(v4 + 2140) & 1;
  v60 = (v2 + 108);
  v61 = (v4 + 2300);
  v62 = (v4 + 2368);
  do
  {
    *(v60 - 8) = 0;
    v63 = (*(v4 + 2524 + 4 * v52) & 1) << 16;
    *(v60 - 8) = v63;
    v64 = v63 | ((*v61 != 0) << 15);
    *(v60 - 8) = v64;
    v65 = v64 | ((*(v61 - 1) != 0) << 14);
    *(v60 - 8) = v65;
    v66 = v65 | ((*(v61 - 2) != 0) << 13);
    *(v60 - 8) = v66;
    v67 = v66 & 0xFFFFE3FF | ((*v62 & 7) << 10);
    *(v60 - 8) = v67;
    v68 = v67 | ((*(v61 - 7) != 0) << 9);
    *(v60 - 8) = v68;
    *(v60 - 8) = v68 & 0xFFFFFE00 | *(v62 - 5) & 0x1FF;
    *v60 = 0;
    v69 = (*(v61 - 6) != 0) << 31;
    *v60 = v69;
    v70 = v69 & 0x80FFFFFF | ((*(v62 - 4) & 0x7F) << 24);
    *v60 = v70;
    v71 = v70 | ((*(v61 - 5) != 0) << 23);
    *v60 = v71;
    v72 = v71 & 0xFF80FFFF | ((*(v62 - 3) & 0x7F) << 16);
    *v60 = v72;
    v73 = v72 | ((*(v61 - 4) != 0) << 15);
    *v60 = v73;
    v74 = v73 & 0xFFFF80FF | ((*(v62 - 2) & 0x7F) << 8);
    *v60 = v74;
    v75 = v74 | ((*(v61 - 3) != 0) << 7);
    *v60 = v75;
    ++v52;
    *v60++ = v75 & 0xFFFFFF80 | *(v62 - 1) & 0x7F;
    v61 += 8;
    v62 += 8;
  }

  while (v52 != 8);
  *(v2 + 140) = 0x20000;
  v76 = (v2 + 144);
  v77 = v3 + 78544;
  v78 = 3;
  do
  {
    *v76 = 0;
    v79 = *(v77 - 16) << 29;
    *v76 = v79;
    v80 = v79 & 0xFF00FFFF | (*(v77 - 12) << 16);
    *v76 = v80;
    v81 = v80 & 0xFFFF00FF | (*(v77 - 8) << 8);
    *v76 = v81;
    *v76 = v81 | *(v77 - 4);
    v76[3] = 0;
    v82 = *v77 << 24;
    v76[3] = v82;
    v83 = v82 & 0xFF00FFFF | (*(v77 + 4) << 16);
    v76[3] = v83;
    v84 = v83 & 0xFFFF00FF | (*(v77 + 8) << 8);
    v76[3] = v84;
    v76[3] = v84 | *(v77 + 12);
    ++v76;
    v77 += 224;
    --v78;
  }

  while (v78);
  *(v2 + 168) = 0;
  v85 = *(v4 + 3160) << 31;
  *(v2 + 168) = v85;
  v86 = v85 & 0x9FFFFFFF | ((*(v3 + 79200) & 3) << 29);
  *(v2 + 168) = v86;
  v87 = v86 & 0xE01FFFFF | (*(v4 + 2244) << 21);
  *(v2 + 168) = v87;
  v88 = v87 & 0xFFE03FFF | ((*(v4 + 2248) & 0x7F) << 14);
  *(v2 + 168) = v88;
  v89 = v88 & 0xFFFFC07F | ((*(v4 + 2252) & 0x7F) << 7);
  *(v2 + 168) = v89;
  *(v2 + 168) = v89 & 0xFFFFFF80 | *(v4 + 2260) & 0x7F;
  *(v2 + 172) = 0;
  v90 = (*(v4 + 2256) & 0x7F) << 20;
  *(v2 + 172) = v90;
  v91 = v90 & 0xFFF01FFF | ((*(v4 + 2264) & 0x7F) << 13);
  *(v2 + 172) = v91;
  v92 = v91 | (*(v4 + 2268) << 12);
  *(v2 + 172) = v92;
  v93 = v92 & 0xFFFFF0FF | ((*(v4 + 2272) & 0xF) << 8);
  *(v2 + 172) = v93;
  v94 = v93 & 0xFFFFFF0F | (16 * (*(v4 + 2276) & 0xF));
  *(v2 + 172) = v94;
  *(v2 + 172) = v94 & 0xFFFFFFF0 | *(v4 + 2280) & 0xF;
  *(v2 + 176) = 0;
  if (*(v4 + 1956))
  {
    v95 = 0;
  }

  else
  {
    v95 = *(v4 + 3160);
    if (v95)
    {
      v95 = *(v4 + 3168) << 31;
      *(v2 + 176) = v95;
      if (*(v4 + 3168))
      {
        v96 = ((*(v4 + 3176) & 1) << 28) | v95;
        *(v2 + 176) = v96;
        v95 = ((*(v3 + 79204) & 3) << 29) | v96;
        *(v2 + 176) = v95;
      }
    }
  }

  if ((*(v4 + 1956) & 1) == 0 && (*(v4 + 1962) & 1) == 0)
  {
    v97 = v95 | ((*(v4 + 2216) & 1) << 27);
    *(v2 + 176) = v97;
    v98 = v97 & 0xF8FFFFFF | ((*(v4 + 2212) & 7) << 24);
    *(v2 + 176) = v98;
    v99 = v98 & 0xFF03FFFF | ((*(v4 + 2196) & 0x3F) << 18);
    *(v2 + 176) = v99;
    v100 = v99 & 0xFFFC0FFF | ((*(v4 + 2200) & 0x3F) << 12);
    *(v2 + 176) = v100;
    if (*(v4 + 2196) || (v101 = *(v4 + 2200)) != 0)
    {
      v101 = (*(v4 + 2204) & 0x3F) << 6;
    }

    v102 = v101 | v100 & 0xFFFFF03F;
    *(v2 + 176) = v102;
    if (*(v4 + 2196) || (v103 = *(v4 + 2200)) != 0)
    {
      v103 = *(v4 + 2208) & 0x3F;
    }

    *(v2 + 176) = v103 | v102 & 0xFFFFFFC0;
    if (!*(v3 + 56))
    {
      *(v2 + 176) = v100 & 0xFFFFF000;
    }
  }

  *(v2 + 180) = 0;
  v104 = (*(v4 + 2226) & 0x7F) << 21;
  *(v2 + 180) = v104;
  v105 = v104 & 0xFFE03FFF | ((*(v4 + 2227) & 0x7F) << 14);
  *(v2 + 180) = v105;
  v106 = v105 & 0xFFFFC07F | ((*(v4 + 2228) & 0x7F) << 7);
  *(v2 + 180) = v106;
  *(v2 + 180) = v106 & 0xFFFFFF80 | *(v4 + 2229) & 0x7F;
  *(v2 + 184) = 0;
  v107 = (*(v4 + 2230) & 0x7F) << 21;
  *(v2 + 184) = v107;
  v108 = v107 & 0xFFE03FFF | ((*(v4 + 2231) & 0x7F) << 14);
  *(v2 + 184) = v108;
  v109 = v108 & 0xFFFFC07F | ((*(v4 + 2232) & 0x7F) << 7);
  *(v2 + 184) = v109;
  *(v2 + 184) = v109 & 0xFFFFFF80 | *(v4 + 2233) & 0x7F;
  *(v2 + 188) = 0;
  LOBYTE(v109) = *(v4 + 2236);
  *(v2 + 188) = (v109 & 0x7F) << 7;
  *(v2 + 188) = *(v4 + 2237) & 0x7F | ((v109 & 0x7F) << 7);
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  v110 = (v2 + 192);
  if (*(v4 + 99) && (*(v4 + 1962) & 1) == 0 && (*(v4 + 1956) & 1) == 0)
  {
    *v110 = 0x10000000;
    v111 = ((*(v4 + 3180) << 26) + 0x4000000) & 0xC000000 | 0x10000000;
    *v110 = v111;
    v112 = v111 & 0xFCFFFFFF | ((*(v4 + 3184) & 3) << 24);
    *v110 = v112;
    v113 = v112 & 0xFF0FFFFF | ((*(v4 + 3192) & 0xF) << 20);
    *v110 = v113;
    v114 = v113 & 0xFFF3FFFF | ((*(v4 + 3256) & 3) << 18);
    *v110 = v114;
    v115 = v114 & 0xFFFC3FFF | ((*(v4 + 3320) & 0xF) << 14);
    *v110 = v115;
    v116 = v115 & 0xFFFFCFFF | ((*(v4 + 3384) & 3) << 12);
    *v110 = v116;
    if (*(v4 + 3188) < 2)
    {
      v117 = 0;
    }

    else
    {
      v117 = (*(v4 + 3196) & 0xF) << 8;
    }

    v118 = v117 | v116 & 0xFFFFF0FF;
    *v110 = v118;
    if (*(v4 + 3188) < 2)
    {
      v119 = 0;
    }

    else
    {
      v119 = (*(v4 + 3260) & 3) << 6;
    }

    v120 = v119 | v118 & 0xFFFFFF3F;
    *v110 = v120;
    if (*(v4 + 3188) < 2)
    {
      v121 = 0;
    }

    else
    {
      v121 = 4 * (*(v4 + 3324) & 0xF);
    }

    v122 = v121 | v120 & 0xFFFFFFC3;
    *v110 = v122;
    if (*(v4 + 3188) < 2)
    {
      v123 = 0;
    }

    else
    {
      v123 = *(v4 + 3388) & 3;
    }

    *v110 = v123 | v122 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 2)
    {
      v124 = 0;
    }

    else
    {
      v124 = (*(v4 + 3200) & 0xF) << 20;
    }

    *(v2 + 196) = v124;
    if (*(v4 + 3188) < 3)
    {
      v125 = 0;
    }

    else
    {
      v125 = (*(v4 + 3264) & 3) << 18;
    }

    v126 = v125 | v124;
    *(v2 + 196) = v126;
    if (*(v4 + 3188) < 3)
    {
      v127 = 0;
    }

    else
    {
      v127 = (*(v4 + 3328) & 0xF) << 14;
    }

    v128 = v127 | v126;
    *(v2 + 196) = v128;
    if (*(v4 + 3188) < 3)
    {
      v129 = 0;
    }

    else
    {
      v129 = (*(v4 + 3392) & 3) << 12;
    }

    v130 = v129 | v128;
    *(v2 + 196) = v130;
    if (*(v4 + 3188) <= 3)
    {
      v131 = 0;
    }

    else
    {
      v131 = (*(v4 + 3204) & 0xF) << 8;
    }

    v132 = v131 | v130;
    *(v2 + 196) = v132;
    if (*(v4 + 3188) < 4)
    {
      v133 = 0;
    }

    else
    {
      v133 = (*(v4 + 3268) & 3) << 6;
    }

    v134 = v133 | v132 & 0xFFFFFF3F;
    *(v2 + 196) = v134;
    if (*(v4 + 3188) < 4)
    {
      v135 = 0;
    }

    else
    {
      v135 = 4 * (*(v4 + 3332) & 0xF);
    }

    v136 = v135 | v134 & 0xFFFFFFC3;
    *(v2 + 196) = v136;
    if (*(v4 + 3188) < 4)
    {
      v137 = 0;
    }

    else
    {
      v137 = *(v4 + 3396) & 3;
    }

    *(v2 + 196) = v137 | v136 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 4)
    {
      v138 = 0;
    }

    else
    {
      v138 = (*(v4 + 3208) & 0xF) << 20;
    }

    *(v2 + 200) = v138;
    if (*(v4 + 3188) < 5)
    {
      v139 = 0;
    }

    else
    {
      v139 = (*(v4 + 3272) & 3) << 18;
    }

    v140 = v139 | v138;
    *(v2 + 200) = v140;
    if (*(v4 + 3188) < 5)
    {
      v141 = 0;
    }

    else
    {
      v141 = (*(v4 + 3336) & 0xF) << 14;
    }

    v142 = v141 | v140;
    *(v2 + 200) = v142;
    if (*(v4 + 3188) < 5)
    {
      v143 = 0;
    }

    else
    {
      v143 = (*(v4 + 3400) & 3) << 12;
    }

    v144 = v143 | v142;
    *(v2 + 200) = v144;
    if (*(v4 + 3188) <= 5)
    {
      v145 = 0;
    }

    else
    {
      v145 = (*(v4 + 3212) & 0xF) << 8;
    }

    v146 = v145 | v144;
    *(v2 + 200) = v146;
    if (*(v4 + 3188) < 6)
    {
      v147 = 0;
    }

    else
    {
      v147 = (*(v4 + 3276) & 3) << 6;
    }

    v148 = v147 | v146 & 0xFFFFFF3F;
    *(v2 + 200) = v148;
    if (*(v4 + 3188) < 6)
    {
      v149 = 0;
    }

    else
    {
      v149 = 4 * (*(v4 + 3340) & 0xF);
    }

    v150 = v149 | v148 & 0xFFFFFFC3;
    *(v2 + 200) = v150;
    if (*(v4 + 3188) < 6)
    {
      v151 = 0;
    }

    else
    {
      v151 = *(v4 + 3404) & 3;
    }

    *(v2 + 200) = v151 | v150 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 6)
    {
      v152 = 0;
    }

    else
    {
      v152 = (*(v4 + 3216) & 0xF) << 20;
    }

    *(v2 + 204) = v152;
    if (*(v4 + 3188) < 7)
    {
      v153 = 0;
    }

    else
    {
      v153 = (*(v4 + 3280) & 3) << 18;
    }

    v154 = v153 | v152;
    *(v2 + 204) = v154;
    if (*(v4 + 3188) < 7)
    {
      v155 = 0;
    }

    else
    {
      v155 = (*(v4 + 3344) & 0xF) << 14;
    }

    v156 = v155 | v154;
    *(v2 + 204) = v156;
    if (*(v4 + 3188) < 7)
    {
      v157 = 0;
    }

    else
    {
      v157 = (*(v4 + 3408) & 3) << 12;
    }

    v158 = v157 | v156;
    *(v2 + 204) = v158;
    if (*(v4 + 3188) <= 7)
    {
      v159 = 0;
    }

    else
    {
      v159 = (*(v4 + 3220) & 0xF) << 8;
    }

    v160 = v159 | v158;
    *(v2 + 204) = v160;
    if (*(v4 + 3188) < 8)
    {
      v161 = 0;
    }

    else
    {
      v161 = (*(v4 + 3284) & 3) << 6;
    }

    v162 = v161 | v160 & 0xFFFFFF3F;
    *(v2 + 204) = v162;
    if (*(v4 + 3188) < 8)
    {
      v163 = 0;
    }

    else
    {
      v163 = 4 * (*(v4 + 3348) & 0xF);
    }

    v164 = v163 | v162 & 0xFFFFFFC3;
    *(v2 + 204) = v164;
    if (*(v4 + 3188) < 8)
    {
      v165 = 0;
    }

    else
    {
      v165 = *(v4 + 3412) & 3;
    }

    *(v2 + 204) = v165 | v164 & 0xFFFFFFFC;
  }

  if (*(v4 + 98))
  {
    v166 = (v2 + 208);
    if (*(v4 + 2172) != 8)
    {
      *v166 = 0x80000000;
      v167 = ((*(v4 + 2172) << 28) - 0x10000000) | 0x80000000;
      goto LABEL_151;
    }
  }

  else
  {
    v166 = (v2 + 208);
  }

  v167 = 0;
  *v166 = 0;
LABEL_151:
  *(v2 + 208) = v167;
  *(v2 + 208) = (*(v4 + 2164) - 1) | v167;
  UpscaleConvolveStep = CAHDecDaisyAvx::getUpscaleConvolveStep(this, *(v4 + 2176), *(v4 + 2164));
  v169 = UpscaleConvolveStep;
  UpscaleConvolveX0 = CAHDecDaisyAvx::getUpscaleConvolveX0(UpscaleConvolveStep, *(v4 + 2176), *(v4 + 2164), UpscaleConvolveStep);
  *(v2 + 212) = v169 & 0x3FFF | ((UpscaleConvolveX0 & 0x3FFF) << 14);
  v171 = (*(v4 + 2176) + 1) >> 1;
  v172 = (*(v4 + 2164) + 1) >> 1;
  v173 = CAHDecDaisyAvx::getUpscaleConvolveStep(UpscaleConvolveX0, v171, v172);
  *(v2 + 216) = v173 & 0x3FFF | ((CAHDecDaisyAvx::getUpscaleConvolveX0(v173, v171, v172, v173) & 0x3FFF) << 14);
  *(v2 + 220) = 0;
  v174 = (*(v4 + 3448) & 3) << 10;
  *(v2 + 220) = v174;
  v175 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v175 = (*(v4 + 3452) & 3) << 8;
  }

  v176 = v175 | v174;
  *(v2 + 220) = v176;
  v177 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v177 = (*(v4 + 3456) & 3) << 6;
  }

  v178 = v177 | v176;
  *(v2 + 220) = v178;
  v179 = (16 * (*(v3 + 79208) & 3)) | v178;
  *(v2 + 220) = v179;
  v180 = (4 * (*(v3 + 79212) & 3)) | v179;
  *(v2 + 220) = v180;
  *(v2 + 220) = v180 & 0xFFC | *(v3 + 79216) & 3;
  *(v2 + 224) = 0;
  v181 = *(v3 + 78496);
  *(v2 + 224) = v181 << 16;
  *(v2 + 224) = *(v3 + 78492) | (v181 << 16);
  *(v2 + 228) = 0;
  v182 = *(v3 + 78504);
  *(v2 + 228) = v182 << 16;
  *(v2 + 228) = *(v3 + 78500) | (v182 << 16);
  if (*(v3 + 128) == 1)
  {
    result = 0;
    if (*(v4 + 1956))
    {
      *(v2 + 372) = (*(v2 + 52) << 18) & 0x1000000 | (((*(v2 + 52) >> 4) & 1) << 25);
      *(v2 + 404) = 0;
      v184 = (((*(v3 + 12) << 16) + 458752) & 0xFFF80000) - 0x10000;
      *(v2 + 404) = v184;
      *(v2 + 404) = (((*(v3 + 8) + 7) & 0xFFF8) + 0xFFFF) | v184;
      *(v2 + 436) = 1073758208;
    }
  }

  else
  {
    v185 = (v2 + 232);
    v186 = -308;
    do
    {
      v187 = v4 + v186;
      if (*(v4 + v186 + 4136) == 1)
      {
        v188 = ((*(v2 + 68) << 21) >> 31) + 14;
      }

      else
      {
        LOBYTE(v188) = 10;
      }

      *v185 = 0;
      v189 = *(v187 + 4136) << 30;
      *v185 = v189;
      v190 = v189 & 0xC0007FFF | (((*(v187 + 4096) >> v188) & 0x7FFF) << 15);
      *v185 = v190;
      *v185 = v190 & 0xFFFF8000 | (*(v187 + 4100) >> v188) & 0x7FFF;
      v185[7] = 0;
      v191 = (*(v187 + 4137) == 0) << 30;
      v185[7] = v191;
      v192 = v191 & 0xC0007FFF | (((*(v187 + 4104) >> 1) & 0x7FFF) << 15);
      v185[7] = v192;
      v185[7] = v192 & 0xFFFF8000 | (*(v187 + 4108) >> 1);
      v185[14] = 0;
      v193 = (*(v187 + 4112) << 14) & 0x3FFF8000;
      v185[14] = v193;
      v185[14] = v193 & 0xFFFF8000 | (*(v187 + 4116) >> 1);
      v185[21] = 0;
      v194 = *(v187 + 4128);
      v185[21] = v194 << 16;
      v185[21] = *(v187 + 4130) | (v194 << 16);
      v185[28] = 0;
      v195 = *(v187 + 4132);
      v185[28] = v195 << 16;
      v185[28] = *(v187 + 4134) | (v195 << 16);
      ++v185;
      v186 += 44;
    }

    while (v186);
    v196 = **(v3 + 79224);
    if (v196)
    {
      v197 = 0;
      v198 = (v2 + 440);
      while (1)
      {
        *(v198 - 16) = 0;
        v199 = (*(v2 + 52) << 18) & 0x1000000 | (((*(v2 + 52) >> 4) & 1) << 25);
        *(v198 - 16) = v199;
        *(v198 - 16) = v199 | *(v196 + 4);
        *(v198 - 8) = 0;
        v200 = (*(v196 + 1768) << 16) - 0x10000;
        *(v198 - 8) = v200;
        *(v198 - 8) = v200 & 0xFFFF0000 | (*(v196 + 1760) - 1);
        *v198 = 0;
        v201 = ((*(v3 + 12) / 2 + (*(v196 + 1768) << 14)) / *(v3 + 12)) << 16;
        *v198 = v201;
        *v198 = v201 & 0xFFFF0000 | ((*(v3 + 8) / 2 + (*(v196 + 1760) << 14)) / *(v3 + 8));
        if (v197 == 6)
        {
          break;
        }

        v196 = *(*(v3 + 79224) + 8 * v197 + 8);
        ++v198;
        ++v197;
        if (!v196)
        {
          v202 = (v197 - 1) < 6;
          goto LABEL_170;
        }
      }

      v202 = 0;
    }

    else
    {
      LODWORD(v197) = 0;
      v202 = 1;
LABEL_170:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v203 = 136315394;
        v204 = "virtual int CAHDecDaisyAvx::populatePictureRegisters()";
        v205 = 1024;
        v206 = v197;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid reference buffer %d\n", &v203, 0x12u);
      }
    }

    return (v202 << 31 >> 31);
  }

  return result;
}

uint64_t CAHDecDaisyAvx::populateClearTiles(CAHDecDaisyAvx *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 1889);
  v5 = v4[34];
  *(v3 + 1120) = v4[35];
  *(v3 + 1122) = v5;
  if (CAVDAvxDecoder::isParallelDecode(v2))
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*(*(this + 32) + 37616) + 3156);
  }

  v7 = *(this + 33);
  *(v7 + 1384) = v6;
  v8 = v4[35];
  if (v8)
  {
    v9 = v4 + 16485;
    v10 = (v7 + 1124);
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  v12 = v4[34];
  if (v12)
  {
    v13 = v4 + 16420;
    v14 = (v7 + 1254);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t CAHDecDaisyAvx::populateAvdWork(CAHDecDaisyAvx *this)
{
  v60[3] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = v3 + 36864;
  v47 = *(v3 + 15112);
  v4 = *(v47 + 34);
  LODWORD(v3) = *(v47 + 35);
  v5 = v3 * v4;
  v51 = (v3 * v4 > 1) & (*(v2 + 1048) >> 1);
  if (v3 * v4 >= 2)
  {
    v5 = 2;
  }

  v41 = v5;
  v6 = (*(v2 + 1048) & 6) == 4 && (*(*(this + *(this + 13) + 34) + 16) & 1) == 0;
  v7 = *(this + 33) + 50700;
  memset(v60, 0, 24);
  v59 = 0;
  v58 = 0;
  if (*(*(v2 + 752) + 60) == 15)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v44 = v8;
  if (v51)
  {
    result = v5;
  }

  else
  {
    result = 1;
  }

  v10 = (v6 + result);
  if (result)
  {
    v11 = &v60[v6];
    v12 = v10 - v6;
    v13 = v6;
    do
    {
      *v11++ = v7 + (v13 - v6) * 36 * (0x1002u / result);
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (v4)
  {
    v14 = 0;
    v15 = v60[v6];
    v45 = *v47;
    v16 = 0x8E38E38E38E38E39 * ((v15 - v7) >> 2);
    v48 = v47 + 4114;
    v49 = 0;
    v43 = v47 + 8210;
    v17 = -(v3 * v4);
    v18 = v47 + 8243;
    v19 = v6;
    v39 = v6;
    v38 = (v6 + result);
    v36 = v17;
    v37 = result;
    v42 = v7;
    while (!v3)
    {
      v21 = v49 + 1;
LABEL_52:
      v49 = v21;
      if (v21 >= v4)
      {
        goto LABEL_53;
      }
    }

    v20 = 0;
    v21 = v49 + 1;
    v46 = v17 + v14;
    v40 = v14;
    v50 = v14;
    while (1)
    {
      v22 = v46 + v20;
      v23 = v50 + v20;
      v53 = 0;
      *(v15 + 4) = *(&v58 + v19);
      *(v15 + 6) = v19;
      *(v15 + 10) = v50 + v20;
      v24 = v50 + v20 ? 4 : 5;
      *(v15 + 12) = v24;
      if (v22 == -1)
      {
        *(v15 + 14) = 262149;
      }

      else
      {
        v25 = v22 == -2;
        v26 = v51;
        if (!v25)
        {
          v26 = 0;
        }

        *(v15 + 14) = 4;
        *(v15 + 16) = v26 == 1 ? 4 : 0;
      }

      v52 = 0;
      if (!CAVDAvxDecoder::GetTileMemInfo(*(this + 32), v45 + v47[v23 + 18], &v53, &v52))
      {
        return 0xFFFFFFFFLL;
      }

      v27 = 36 * v16;
      v28 = v53;
      if (*v53 || *(v53 + 152) || *(v53 + 156))
      {
        v29 = v52;
        if (HIDWORD(v52) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "populateAvdWork";
          v56 = 1024;
          v57 = 1641;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v29 = v52;
        }

        result = CAHDec::addToPatcherList(this, v28, v27 + 50720, v29, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }

        v28 = v53;
        if (*v53)
        {
          goto LABEL_40;
        }
      }

      if (*(v28 + 152) || *(v28 + 156))
      {
LABEL_40:
        v30 = v52;
        if (HIDWORD(v52) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "populateAvdWork";
          v56 = 1024;
          v57 = 1642;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v30 = v52;
        }

        result = CAHDec::addToPatcherList(this, v28, v27 + 50718, v30, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }
      }

      v31 = v23;
      v32 = v48[v23];
      if (HIDWORD(v32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v55 = "populateAvdWork";
        v56 = 1024;
        v57 = 1644;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v32 = v48[v31];
      }

      *(v15 + 24) = v32;
      *(v15 + 28) = (*(v18 - 1) >> v44) | (*(v43 + v49) >> v44 << 16);
      *(v15 + 32) = ((*v18 - 1) >> v44) | ((*(v43 + v21) - 1) >> v44 << 16);
      ++*(&v58 + v19);
      ++v20;
      v33 = v60[v19] + 36;
      v60[v19] = v33;
      if (v51)
      {
        v19 = (v20 + v50) % v41;
        v33 = v60[v19];
      }

      *(v15 + 8) = -1;
      v16 = 0x8E38E38E38E38E39 * ((v33 - v42) >> 2);
      v3 = *(v47 + 35);
      ++v18;
      v15 = v33;
      if (v20 >= v3)
      {
        v4 = *(v47 + 34);
        v6 = v39;
        v14 = v40 + v20;
        v15 = v33;
        v10 = v38;
        v17 = v36;
        result = v37;
        v18 = v47 + 8243;
        goto LABEL_52;
      }
    }
  }

  else
  {
LABEL_53:
    if (result)
    {
      v34 = *(this + 33) + 32;
      v35 = v6;
      do
      {
        *(v34 + 2 * v35 - 6) = *(&v58 + v35);
        *(v34 + 4 * v35) = (v35 - v6) * 36 * (0x1002 / result) + 50700;
        ++v35;
      }

      while (v10 != v35);
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecDaisyAvx::allocWorkBuf_SPS(CAHDecDaisyAvx *this, int *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 32);
  if (v6 >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315394;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1760;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v50, 0x12u);
  }

  v7 = *(this + 32);
  v8 = v7[9479];
  if (!v8 || (v9 = v7[9480]) == 0)
  {
    v8 = v5;
    v9 = v4;
  }

  v10 = v8 + 31;
  if (v8 < -31)
  {
    v10 = v8 + 62;
  }

  v11 = v10 >> 5;
  v12 = v9 + 31;
  if (v9 < -31)
  {
    v12 = v9 + 62;
  }

  v13 = v12 >> 5;
  v14 = 32 - __clz(v11 - 1);
  if (v11 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = 32 - __clz(v13 - 1);
  if (v13 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = ((32 << (v17 + v15)) + 127) & 0xFFFFFF80;
  if (!v6)
  {
    v27 = 0;
LABEL_27:
    LOBYTE(v28) = 0;
    goto LABEL_28;
  }

  v19 = v8 << (v6 == 3);
  v20 = v19 + 31;
  v21 = v19 + 62;
  if (v20 >= 0)
  {
    v21 = v20;
  }

  v22 = v21 >> 5;
  if (v6 == 1)
  {
    ++v9;
  }

  v23 = v9 >> (v6 == 1);
  v25 = v23 + 15;
  v24 = v23 < -15;
  v26 = v23 + 30;
  if (!v24)
  {
    v26 = v25;
  }

  v27 = v26 >> 4;
  if (v22 <= 1)
  {
    goto LABEL_27;
  }

  v28 = 32 - __clz(v22 - 1);
LABEL_28:
  v29 = 32 - __clz(v27 - 1);
  if (v27 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = ((8 << (v30 + v28)) + 127) & 0xFFFFFF80;
  if (!v6)
  {
    v31 = 0;
  }

  *(this + 1480) = v18;
  *(this + 1481) = v31;
  *(this + 1485) = 9168;
  if (*(a2 + 14) == 64)
  {
    v32 = 6;
  }

  else
  {
    v32 = 7;
  }

  if (*(a2 + 14) == 64)
  {
    v33 = 96;
  }

  else
  {
    v33 = 384;
  }

  if (*(a2 + 14) == 64)
  {
    v34 = 8;
  }

  else
  {
    v34 = 10;
  }

  v35 = ((v5 + (1 << v32) - 1) >> v32) * ((v4 + (1 << v32) - 1) >> v32);
  *(this + 1487) = v35 * v33;
  *(this + 1486) = v35 << v34;
  if (v7[662])
  {
LABEL_51:
    v41 = 12944;
    v42 = 11;
    do
    {
      v43 = *(this + 1487);
      if (v43 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v41), v43, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 1862;
        v54 = 2080;
        v55 = "segMap";
        v48 = MEMORY[0x277D86220];
        goto LABEL_68;
      }

      v41 += 176;
      --v42;
    }

    while (v42);
    v44 = 8248;
    v45 = 11;
    while (1)
    {
      v46 = *(this + 1486);
      if (v46)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v44), v46, 7, 1, 0))
        {
          break;
        }
      }

      v44 += 176;
      if (!--v45)
      {
        return 0;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1868;
      v54 = 2080;
      v55 = "MvColo";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v36 = 5600;
  v37 = 15;
  while (1)
  {
    v38 = *(this + 1480);
    if (v38 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v36 - 2640), v38, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1803;
      v54 = 2080;
      v55 = "HdrY";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    v39 = *(this + 1481);
    v40 = *(this + 32);
    if (!v39)
    {
      *(v40 + v36) = 0;
      goto LABEL_50;
    }

    if (CAVDDecoder::allocAVDMem(v40, (v40 + v36), v39, 7, 1, 0))
    {
      break;
    }

LABEL_50:
    v36 += 176;
    if (!--v37)
    {
      goto LABEL_51;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1808;
    v54 = 2080;
    v55 = "HdrC";
    v48 = MEMORY[0x277D86220];
LABEL_68:
    _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
  }

LABEL_69:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

void CAHDecDaisyAvx::getPPSWorkBufSize(uint64_t this, unsigned __int8 *a2, char *a3)
{
  v120 = *MEMORY[0x277D85DE8];
  v99 = this;
  v3 = *(*(this + 256) + 37616);
  v109 = *(v3 + 2176);
  v4 = *(v3 + 2180);
  v115 = a2[32];
  v5 = *(v3 + 60);
  v107 = v5 == 15;
  if (v5 == 15)
  {
    v6 = 128;
  }

  else
  {
    v6 = 64;
  }

  v113 = v6;
  if (a2[33] <= a2[34])
  {
    v7 = a2[34];
  }

  else
  {
    v7 = a2[33];
  }

  v8 = (v7 + 9) & 0x1FE;
  v9 = *(v3 + 13932);
  v92 = v7;
  if (v9)
  {
    if (v5 == 15)
    {
      v10 = 800;
    }

    else
    {
      v10 = 400;
    }

    goto LABEL_11;
  }

  this = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (this)
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 1899;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v9 = *(v3 + 13932);
    if (v5 == 15)
    {
      v10 = 800;
    }

    else
    {
      v10 = 400;
    }

    if (v9)
    {
LABEL_11:
      v11 = 0;
      v12 = v9;
      v13 = *(v3 + 2624);
      v14 = (v3 + 2628);
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = (v16 - v13) * v10;
        if (v11 <= v17)
        {
          v11 = v17;
        }

        v13 = v15;
        --v12;
      }

      while (v12);
      v18 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v18 = 1;
LABEL_24:
  v91 = v11;
  v114 = v4;
  if (v115 == 3)
  {
    v19 = 48;
  }

  else
  {
    v19 = 32;
  }

  if (!v115)
  {
    v19 = 16;
  }

  v20 = *(v3 + 2172);
  if (*(v3 + 98))
  {
    v21 = v20 == 8;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  v100 = v3;
  v108 = (v7 + 9) & 0x1FE;
  v90 = v5;
  if (v18)
  {
    v106 = 0;
    v105 = 0;
    v104 = 0;
    *&v103 = 0;
  }

  else
  {
    v23 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v24 = 0;
    v96 = (v8 * v19) >> 3;
    if (v5 == 15)
    {
      v25 = 7;
    }

    else
    {
      v25 = 6;
    }

    v98 = *(v3 + 2172);
    v101 = v25;
    v26 = (v20 << v25) >> 3;
    if (!v22)
    {
      v26 = v113;
    }

    v94 = v26;
    v103 = 0u;
    do
    {
      v27 = v22;
      v28 = v9 - 1;
      v29 = v3 + 4 * v23;
      if (v23 == v28)
      {
        v30 = v109 - v24;
      }

      else
      {
        v30 = (*(v29 + 2628) - *(v29 + 2624)) << v101;
      }

      if (v30 > 4096)
      {
        this = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          *buf = 136315394;
          v117 = "getPPSWorkBufSize";
          v118 = 1024;
          v119 = 1933;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
          v9 = *(v3 + 13932);
          v28 = v9 - 1;
        }
      }

      if (v30 >= -15)
      {
        v31 = v30 + 15;
      }

      else
      {
        v31 = v30 + 30;
      }

      v32 = v31 >> 4;
      v33 = v104;
      if (v104 <= ((v31 >> 4) * v96))
      {
        v33 = (v32 * v96);
      }

      v104 = v33;
      v34 = v23 + 1;
      v35 = *(v29 + 2628);
      v36 = *(v29 + 2624);
      v37 = *(*(*(v99 + 32) + 37616) + 2164);
      if (v37 <= v109)
      {
        v37 = v109;
      }

      v38 = v36 << v101;
      v22 = v27;
      if (v27)
      {
        v38 = ((v36 << v101) * v98) >> 3;
      }

      v39 = v38 + v94 + v94 * (v35 - v36);
      if (v37 < v39)
      {
        v39 = v37;
      }

      *(&v40 + 1) = *(&v103 + 1);
      *&v40 = vadd_s32((*&vmla_s32(0x7F0000007FLL, __PAIR64__(((v39 + 63) >> 6) - (v38 >> 6), (v35 - v36) << v107), 0xC0000002CLL) & 0xFFFFFF80FFFFFF80), *&v103);
      v103 = v40;
      this = CAHDecTansyAvx::calc_lf_above_pix_tile_size(this, v108, v115, v109, v107, v23 == 0, v23 == v28, v36, v35);
      v105 += this;
      v24 += v30;
      v41 = 4 * v32;
      v3 = v100;
      v42 = v106;
      if (v106 <= 4 * (v41 + (v31 >> 4)))
      {
        v42 = 4 * (v41 + (v31 >> 4));
      }

      v106 = v42;
      ++v23;
    }

    while (v34 < v9);
  }

  v43 = *(v3 + 13928);
  v97 = v43;
  if (!v43)
  {
    v64 = 0;
    v72 = 0;
    v95 = 0;
    v112 = 0;
    v69 = v114;
    goto LABEL_81;
  }

  v44 = v3 + 2884;
  v45 = *(v3 + 2884 + 4 * v43);
  v46 = *(v3 + 2884);
  v47 = 0uLL;
  v48 = (v3 + 2888);
  do
  {
    *v110 = v47;
    v50 = *v48++;
    v49 = v50;
    this = CAHDecTansyAvx::calc_lf_left_tile_size(this, 11, 7, v108, v115, v113, v46, v50, v114, v45);
    *(&v47 + 1) = *&v110[2];
    v51 = ((v114 + 63) >> 6) - (v46 << v107);
    v52 = (v50 - v46) << v107;
    if (v50 != v45)
    {
      v51 = v52;
    }

    *&v47 = vmax_s32(*v110, __PAIR64__(72 * v51, this));
    v46 = v49;
    --v43;
  }

  while (v43);
  v95 = *&vadd_s32(*&v47, 0x7F0000007FLL) & 0xFFFFFF80FFFFFF80;
  v53 = v97;
  v89 = v44;
  v54 = *(v44 + 4 * v97);
  v55 = 0;
  v102 = (v114 + 7) >> 6;
  v56 = *(v100 + 2884);
  v57 = 0uLL;
  v58 = (v100 + 2888);
  do
  {
    *v111 = v57;
    v60 = *v58++;
    v59 = v60;
    v61 = CAHDecTansyAvx::calc_lr_left_tile_size(this, 13, 12, v108, v115, v113, v56, v60, v114, v54);
    v62 = v61;
    this = CAHDecTansyAvx::calc_lr_left_tile_size(v61, 6, 6, v108, v115, v113, v56, v60, v114, v54);
    if (v60 == v54)
    {
      v57 = *v111;
      if (v55 > (24 * (v102 - (v56 << v107)) + 24))
      {
        goto LABEL_74;
      }

      v63 = 3 * (v102 + 1 - (v56 << v107));
    }

    else
    {
      v63 = 3 * ((v59 - v56) << v107);
      v57 = *v111;
      if (v55 > (24 * ((v59 - v56) << v107)))
      {
        goto LABEL_74;
      }
    }

    v55 = 8 * v63;
LABEL_74:
    *&v57 = vmax_s32(*&v57, __PAIR64__(this, v62));
    v56 = v59;
    --v53;
  }

  while (v53);
  v64 = (v55 + 127) & 0xFFFFFF80;
  v112 = *&vadd_s32(*&v57, 0x7F0000007FLL) & 0xFFFFFF80FFFFFF80;
  v65 = v97;
  v66 = *(v89 + 4 * v97);
  v67 = *(v100 + 2884);
  v68 = (v100 + 2888);
  v69 = v114;
  do
  {
    v71 = *v68++;
    v70 = v71;
    this = CAHDecIxoraAvx::calc_az_left_tile_size(this, v115, v113, v22, v108, v67, v71, v114, v66);
    if (v53 <= this)
    {
      LODWORD(v53) = this;
    }

    v67 = v70;
    --v65;
  }

  while (v65);
  v72 = (v53 + 127) & 0xFFFFFF80;
  v3 = v100;
LABEL_81:
  v73 = *(*(v99 + 32) + 2644) != 1 || v92 == 0;
  if (v73 || (v115 != 1 ? (v74 = 32) : (v74 = 24), v115 ? (v75 = v74) : (v75 = 16), !CAHDecTansyAvx::isLfPadDis(v99) ? (v76 = 8) : (v76 = 0), v77 = v97, !v97))
  {
    v78 = 0;
    v84 = v106;
    v85 = v105;
    v86 = v104;
    v81 = v91;
  }

  else
  {
    v78 = 0;
    v79 = (v69 + v76 + 15) >> 4;
    v80 = (v97 - 1);
    v81 = v91;
    if (v90 == 15)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v83 = (v3 + 2888);
    v84 = v106;
    v85 = v105;
    v86 = v104;
    do
    {
      v87 = v79;
      if (v80)
      {
        v87 = *v83 << v82;
      }

      v88 = ((v87 - (*(v83 - 1) << v82)) * v75 + 133) & 0xFFFFFF80;
      if (v78 <= v88)
      {
        v78 = v88;
      }

      ++v83;
      --v80;
      --v77;
    }

    while (v77);
  }

  *a3 = v81;
  if (HIDWORD(v86) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 2023;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 1) = v86;
  *(a3 + 2) = v85;
  *(a3 + 12) = v103;
  if (HIDWORD(v84) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 2027;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 5) = v84;
  *(a3 + 3) = v95;
  *(a3 + 4) = v112;
  *(a3 + 10) = v64;
  *(a3 + 11) = v72;
  *(a3 + 12) = v78;
}

uint64_t CAHDecDaisyAvx::allocWorkBuf_PPS(CAHDecDaisyAvx *this, void *a2, void *a3, int *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(this + 32);
  v7 = *(v6 + 15112);
  if (*a4 > v7[19809])
  {
    v8 = (this + 3104);
    v9 = 3;
    while (1)
    {
      v10 = *a4;
      if (v10)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v8, v10, 7, 1, 0))
        {
          break;
        }
      }

      v8 += 11;
      if (!--v9)
      {
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
        v7[19809] = *a4;
        goto LABEL_7;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    v37 = 136315650;
    v38 = "allocWorkBuf_PPS";
    v39 = 1024;
    v40 = 2082;
    v41 = 2080;
    v42 = "OvpAboveInfo";
    v12 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_7:
  v11 = a4[1];
  if (v11 > v7[19810])
  {
    if (v11)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 227, v11, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136315650;
          v38 = "allocWorkBuf_PPS";
          v39 = 1024;
          v40 = 2090;
          v41 = 2080;
          v42 = "IPAbovePixel";
          v12 = MEMORY[0x277D86220];
LABEL_102:
          _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v37, 0x1Cu);
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      v13 = a4[1];
      v6 = *(this + 32);
      v7 = *(v6 + 15112);
    }

    else
    {
      v13 = 0;
    }

    v7[19810] = v13;
  }

  v14 = a4[2];
  if (v14 <= v7[19811])
  {
LABEL_25:
    v16 = a4[3];
    if (v16 > v7[19812])
    {
      if (v16)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 249, v16, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2104;
            v41 = 2080;
            v42 = "LfAboveInfo";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v17 = a4[3];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v17 = 0;
      }

      v7[19812] = v17;
    }

    v18 = a4[4];
    if (v18 > v7[19813])
    {
      if (v18)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 293, v18, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2111;
            v41 = 2080;
            v42 = "RfAboveInfo";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v19 = a4[4];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v19 = 0;
      }

      v7[19813] = v19;
    }

    v20 = a4[5];
    if (v20 > v7[19814])
    {
      if (v20)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 359, v20, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2118;
            v41 = 2080;
            v42 = "MvAboveInfo";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v21 = a4[5];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v21 = 0;
      }

      v7[19814] = v21;
    }

    v22 = a4[6];
    if (v22 > v7[19815])
    {
      if (v22)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 260, v22, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2125;
            v41 = 2080;
            v42 = "LfLeftPixel";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v23 = a4[6];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v23 = 0;
      }

      v7[19815] = v23;
    }

    v24 = a4[7];
    if (v24 > v7[19816])
    {
      if (v24)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 271, v24, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2132;
            v41 = 2080;
            v42 = "LfLeftInfo";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v25 = a4[7];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v25 = 0;
      }

      v7[19816] = v25;
    }

    v26 = a4[8];
    if (v26 > v7[19817])
    {
      if (v26)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 282, v26, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2139;
            v41 = 2080;
            v42 = "SrLeftPixel";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v27 = a4[8];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v27 = 0;
      }

      v7[19817] = v27;
    }

    v28 = a4[9];
    if (v28 > v7[19818])
    {
      if (v28)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 304, v28, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2146;
            v41 = 2080;
            v42 = "RfLeftPixel";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v29 = a4[9];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v29 = 0;
      }

      v7[19818] = v29;
    }

    v30 = a4[10];
    if (v30 > v7[19819])
    {
      if (v30)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 315, v30, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2153;
            v41 = 2080;
            v42 = "RfLeftInfo";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v31 = a4[10];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v31 = 0;
      }

      v7[19819] = v31;
    }

    v32 = a4[11];
    if (v32 > v7[19820])
    {
      if (v32)
      {
        if (CAVDDecoder::allocAVDMem(v6, this + 348, v32, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v37 = 136315650;
            v38 = "allocWorkBuf_PPS";
            v39 = 1024;
            v40 = 2160;
            v41 = 2080;
            v42 = "AzLeftPixel";
            v12 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v33 = a4[11];
        v6 = *(this + 32);
        v7 = *(v6 + 15112);
      }

      else
      {
        v33 = 0;
      }

      v7[19820] = v33;
    }

    v34 = a4[12];
    if (v34 <= v7[19821])
    {
      return 0;
    }

    if (v34)
    {
      if (CAVDDecoder::allocAVDMem(v6, this + 337, v34, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136315650;
          v38 = "allocWorkBuf_PPS";
          v39 = 1024;
          v40 = 2167;
          v41 = 2080;
          v42 = "SWrLeftPixel";
          v12 = MEMORY[0x277D86220];
          goto LABEL_102;
        }

        goto LABEL_103;
      }

      v36 = a4[12];
      v7 = *(*(this + 32) + 15112);
    }

    else
    {
      v36 = 0;
    }

    result = 0;
    v7[19821] = v36;
    return result;
  }

  if (!v14)
  {
    v15 = 0;
LABEL_24:
    v7[19811] = v15;
    goto LABEL_25;
  }

  if (!CAVDDecoder::allocAVDMem(v6, this + 238, v14, 7, 1, 0))
  {
    v15 = a4[2];
    v6 = *(this + 32);
    v7 = *(v6 + 15112);
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v37 = 136315650;
    v38 = "allocWorkBuf_PPS";
    v39 = 1024;
    v40 = 2097;
    v41 = 2080;
    v42 = "LfAbovePixel";
    v12 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_103:
  (*(*this + 160))(this, a4);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDaisyAvx::freeWorkBuf_SPS(CAHDecDaisyAvx *this)
{
  if (!*(*(this + 32) + 2648))
  {
    v2 = 5600;
    v3 = 15;
    do
    {
      v4 = *(this + 32);
      v5 = (v4 + v2 - 2640);
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(v4, v5);
        v6 = (*(this + 32) + v2 - 2640);
        *v6 = 0u;
        v6[1] = 0u;
        v6[2] = 0u;
        v6[3] = 0u;
        v6[4] = 0u;
        v6[5] = 0u;
        v6[6] = 0u;
        v6[7] = 0u;
        v6[8] = 0u;
        v6[9] = 0u;
        v6[10] = 0u;
        v4 = *(this + 32);
      }

      if (*(v4 + v2))
      {
        CAVDDecoder::deallocAVDMem(v4, (v4 + v2));
        v7 = (*(this + 32) + v2);
        *v7 = 0u;
        v7[1] = 0u;
        v7[2] = 0u;
        v7[3] = 0u;
        v7[4] = 0u;
        v7[5] = 0u;
        v7[6] = 0u;
        v7[7] = 0u;
        v7[8] = 0u;
        v7[9] = 0u;
        v7[10] = 0u;
      }

      v2 += 176;
      --v3;
    }

    while (v3);
  }

  v8 = 8248;
  v9 = 11;
  do
  {
    v10 = *(this + 32);
    if (*(v10 + v8))
    {
      CAVDDecoder::deallocAVDMem(v10, (v10 + v8));
      v11 = (*(this + 32) + v8);
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      v11[4] = 0u;
      v11[5] = 0u;
      v11[6] = 0u;
      v11[7] = 0u;
      v11[8] = 0u;
      v11[9] = 0u;
      v11[10] = 0u;
    }

    v8 += 176;
    --v9;
  }

  while (v9);
  v12 = 12944;
  v13 = 11;
  do
  {
    result = *(this + 32);
    if (*(result + v12))
    {
      result = CAVDDecoder::deallocAVDMem(result, (result + v12));
      v15 = (*(this + 32) + v12);
      *v15 = 0u;
      v15[1] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      v15[4] = 0u;
      v15[5] = 0u;
      v15[6] = 0u;
      v15[7] = 0u;
      v15[8] = 0u;
      v15[9] = 0u;
      v15[10] = 0u;
    }

    v12 += 176;
    --v13;
  }

  while (v13);
  return result;
}