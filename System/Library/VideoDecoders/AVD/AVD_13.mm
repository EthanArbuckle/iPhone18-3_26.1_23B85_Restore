double CAHDecDaisyAvx::freeWorkBuf_PPS(CAHDecDaisyAvx *this, _DWORD *a2)
{
  if (!a2 || (v4 = *(*(this + 32) + 15112), *a2 > v4[19809]))
  {
    v5 = (this + 3104);
    v6 = 3;
    do
    {
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(*(this + 32), v5);
        result = 0.0;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        *(v5 + 2) = 0u;
        *(v5 + 3) = 0u;
        *(v5 + 4) = 0u;
        *(v5 + 5) = 0u;
        *(v5 + 6) = 0u;
        *(v5 + 7) = 0u;
        *(v5 + 8) = 0u;
        *(v5 + 9) = 0u;
        *(v5 + 10) = 0u;
      }

      v5 += 22;
      --v6;
    }

    while (v6);
    if (!a2)
    {
      goto LABEL_10;
    }

    v4 = *(*(this + 32) + 15112);
  }

  if (a2[1] <= v4[19810])
  {
    goto LABEL_14;
  }

LABEL_10:
  if (*(this + 454))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 454);
    result = 0.0;
    *(this + 227) = 0u;
    *(this + 228) = 0u;
    *(this + 229) = 0u;
    *(this + 230) = 0u;
    *(this + 231) = 0u;
    *(this + 232) = 0u;
    *(this + 233) = 0u;
    *(this + 234) = 0u;
    *(this + 235) = 0u;
    *(this + 236) = 0u;
    *(this + 237) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_14:
    if (a2[2] <= v4[19811])
    {
      goto LABEL_19;
    }
  }

  if (*(this + 476))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 476);
    result = 0.0;
    *(this + 238) = 0u;
    *(this + 239) = 0u;
    *(this + 240) = 0u;
    *(this + 241) = 0u;
    *(this + 242) = 0u;
    *(this + 243) = 0u;
    *(this + 244) = 0u;
    *(this + 245) = 0u;
    *(this + 246) = 0u;
    *(this + 247) = 0u;
    *(this + 248) = 0u;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_19:
  if (a2[3] <= v4[19812])
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(this + 498))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 498);
    result = 0.0;
    *(this + 249) = 0u;
    *(this + 250) = 0u;
    *(this + 251) = 0u;
    *(this + 252) = 0u;
    *(this + 253) = 0u;
    *(this + 254) = 0u;
    *(this + 255) = 0u;
    *(this + 256) = 0u;
    *(this + 257) = 0u;
    *(this + 258) = 0u;
    *(this + 259) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_24:
    if (a2[4] <= v4[19813])
    {
      goto LABEL_29;
    }
  }

  if (*(this + 586))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 586);
    result = 0.0;
    *(this + 293) = 0u;
    *(this + 294) = 0u;
    *(this + 295) = 0u;
    *(this + 296) = 0u;
    *(this + 297) = 0u;
    *(this + 298) = 0u;
    *(this + 299) = 0u;
    *(this + 300) = 0u;
    *(this + 301) = 0u;
    *(this + 302) = 0u;
    *(this + 303) = 0u;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_29:
  if (a2[5] <= v4[19814])
  {
    goto LABEL_34;
  }

LABEL_30:
  if (*(this + 718))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 718);
    result = 0.0;
    *(this + 359) = 0u;
    *(this + 360) = 0u;
    *(this + 361) = 0u;
    *(this + 362) = 0u;
    *(this + 363) = 0u;
    *(this + 364) = 0u;
    *(this + 365) = 0u;
    *(this + 366) = 0u;
    *(this + 367) = 0u;
    *(this + 368) = 0u;
    *(this + 369) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_34:
    if (a2[6] <= v4[19815])
    {
      goto LABEL_39;
    }
  }

  if (*(this + 520))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 520);
    result = 0.0;
    *(this + 260) = 0u;
    *(this + 261) = 0u;
    *(this + 262) = 0u;
    *(this + 263) = 0u;
    *(this + 264) = 0u;
    *(this + 265) = 0u;
    *(this + 266) = 0u;
    *(this + 267) = 0u;
    *(this + 268) = 0u;
    *(this + 269) = 0u;
    *(this + 270) = 0u;
  }

  if (!a2)
  {
    goto LABEL_40;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_39:
  if (a2[7] <= v4[19816])
  {
    goto LABEL_44;
  }

LABEL_40:
  if (*(this + 542))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 542);
    result = 0.0;
    *(this + 271) = 0u;
    *(this + 272) = 0u;
    *(this + 273) = 0u;
    *(this + 274) = 0u;
    *(this + 275) = 0u;
    *(this + 276) = 0u;
    *(this + 277) = 0u;
    *(this + 278) = 0u;
    *(this + 279) = 0u;
    *(this + 280) = 0u;
    *(this + 281) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_44:
    if (a2[8] <= v4[19817])
    {
      goto LABEL_49;
    }
  }

  if (*(this + 564))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 564);
    result = 0.0;
    *(this + 282) = 0u;
    *(this + 283) = 0u;
    *(this + 284) = 0u;
    *(this + 285) = 0u;
    *(this + 286) = 0u;
    *(this + 287) = 0u;
    *(this + 288) = 0u;
    *(this + 289) = 0u;
    *(this + 290) = 0u;
    *(this + 291) = 0u;
    *(this + 292) = 0u;
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_49:
  if (a2[9] <= v4[19818])
  {
    goto LABEL_54;
  }

LABEL_50:
  if (*(this + 608))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 608);
    result = 0.0;
    *(this + 304) = 0u;
    *(this + 305) = 0u;
    *(this + 306) = 0u;
    *(this + 307) = 0u;
    *(this + 308) = 0u;
    *(this + 309) = 0u;
    *(this + 310) = 0u;
    *(this + 311) = 0u;
    *(this + 312) = 0u;
    *(this + 313) = 0u;
    *(this + 314) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_54:
    if (a2[10] <= v4[19819])
    {
      goto LABEL_59;
    }
  }

  if (*(this + 630))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 630);
    result = 0.0;
    *(this + 315) = 0u;
    *(this + 316) = 0u;
    *(this + 317) = 0u;
    *(this + 318) = 0u;
    *(this + 319) = 0u;
    *(this + 320) = 0u;
    *(this + 321) = 0u;
    *(this + 322) = 0u;
    *(this + 323) = 0u;
    *(this + 324) = 0u;
    *(this + 325) = 0u;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_59:
  if (a2[11] <= v4[19820])
  {
    goto LABEL_64;
  }

LABEL_60:
  if (*(this + 696))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 696);
    result = 0.0;
    *(this + 348) = 0u;
    *(this + 349) = 0u;
    *(this + 350) = 0u;
    *(this + 351) = 0u;
    *(this + 352) = 0u;
    *(this + 353) = 0u;
    *(this + 354) = 0u;
    *(this + 355) = 0u;
    *(this + 356) = 0u;
    *(this + 357) = 0u;
    *(this + 358) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_64:
    if (a2[12] <= v4[19821])
    {
      return result;
    }
  }

  if (*(this + 674))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 674);
    result = 0.0;
    *(this + 337) = 0u;
    *(this + 338) = 0u;
    *(this + 339) = 0u;
    *(this + 340) = 0u;
    *(this + 341) = 0u;
    *(this + 342) = 0u;
    *(this + 343) = 0u;
    *(this + 344) = 0u;
    *(this + 345) = 0u;
    *(this + 346) = 0u;
    *(this + 347) = 0u;
  }

  return result;
}

uint64_t CAHDecDaisyAvx::setVPInstrFifo(uint64_t this, int a2)
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
  *(this + 5936) = a2;
  return this;
}

CAHDec *createDahliaHevcDecoder(void *a1)
{
  v2 = operator new(0x33B8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_2886656E8;
    *(v3 + 32) = a1;
    *(v3 + 114) = 417772;
    *(v3 + 2) = 2764;
    *(v3 + 1) = xmmword_27775C6F0;
    *(v3 + 8) = 4;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x3180uLL);
  }

  return v3;
}

void CAHDecDahliaHevc::~CAHDecDahliaHevc(CAHDecDahliaHevc *this)
{
  *this = &unk_2886656E8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecDahliaHevc::~CAHDecDahliaHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDahliaHevc::init(CAHDecDahliaHevc *this)
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

uint64_t CAHDecDahliaHevc::initPicture(CAHDecDahliaHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 417772;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x65FECuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3307) = 0;
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

uint64_t CAHDecDahliaHevc::populateSlices(CAHDecDahliaHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2764;
    v5 = a2;
    do
    {
      CAHDecDahliaHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 364;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecDahliaHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = *MEMORY[0x277D85DE8];
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
  if (*(v7 + 44) <= 1u)
  {
    if (*(v7 + 2344))
    {
      if (!*(a1 + 13228))
      {
        (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
        v27 = *(a1 + 256);
        if (!*(v27 + 8920))
        {
          *(a1 + 13228) = 1;
          *(a2 + 4) |= 0x40000u;
          if (*(v27 + 8744) || *(v27 + 8896) || *(v27 + 8900))
          {
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), 364 * a3 + 3100, 0, 0xFFFFFFFFFLL, 8, 0xFFFFFFF, 4);
            if (result)
            {
              return result;
            }
          }
        }
      }
    }
  }

  *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
  (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
  v28 = *(v7 + 44);
  if (v28 <= 1)
  {
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
  if (v84[590] != 1)
  {
    v95 = 0;
    v96 = 0;
    if ((*(*v84 + 440))(v84, a3, &v96, &v95))
    {
      v86 = 364 * a3;
      *(a2 + 340) = 0;
      v87 = v96;
      if (!*v96 && !*(v96 + 152) && !*(v96 + 156))
      {
        goto LABEL_116;
      }

      v92 = v95;
      if (HIDWORD(v95) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v98 = "populateSliceRegisters";
        v99 = 1024;
        v100 = 1537;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v92 = v95;
      }

      result = CAHDec::addToPatcherList(a1, v87, v86 + 3104, v92, 0xFFFFFFFFFLL, 32, 15, 4);
      if (result)
      {
        return result;
      }

      v87 = v96;
      if (!*v96)
      {
LABEL_116:
        if (!*(v87 + 152) && !*(v87 + 156))
        {
          goto LABEL_122;
        }
      }

      v90 = v95;
      if (HIDWORD(v95) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v98 = "populateSliceRegisters";
        v99 = 1024;
        v100 = 1538;
        v91 = MEMORY[0x277D86220];
        goto LABEL_120;
      }

LABEL_121:
      result = CAHDec::addToPatcherList(a1, v87, v86 + 3108, v90, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_122;
    }

    return 0xFFFFFFFFLL;
  }

  v95 = 0;
  v96 = 0;
  if (!(*(*v84 + 440))(v84, a3, &v96, &v95))
  {
    return 0xFFFFFFFFLL;
  }

  v86 = 364 * a3;
  *(a2 + 340) = 0;
  v87 = v96;
  if (!*v96 && !*(v96 + 152) && !*(v96 + 156))
  {
    goto LABEL_101;
  }

  v88 = v95;
  if (HIDWORD(v95) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v98 = "populateSliceRegisters";
    v99 = 1024;
    v100 = 1512;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v88 = v95;
  }

  result = CAHDec::addToPatcherList(a1, v87, v86 + 3104, v88, 0xFFFFFFFFFLL, 32, 15, 4);
  if (!result)
  {
    v87 = v96;
    if (*v96)
    {
      goto LABEL_103;
    }

LABEL_101:
    if (*(v87 + 152) || *(v87 + 156))
    {
LABEL_103:
      v90 = v95;
      if (HIDWORD(v95) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v98 = "populateSliceRegisters";
        v99 = 1024;
        v100 = 1513;
        v91 = MEMORY[0x277D86220];
LABEL_120:
        _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v90 = v95;
        goto LABEL_121;
      }

      goto LABEL_121;
    }

LABEL_122:
    v93 = *(v7 + 16) - (*(v7 + 2080) >> 3);
    *(a2 + 348) = v93;
    if (v84[590] == 1)
    {
      *(a2 + 356) = 0;
      if (v93 >= *(v7 + 2352))
      {
        v93 = *(v7 + 2352);
      }

      result = 0;
      if (v84[605])
      {
        v94 = v93 | v85 & 0x10000;
      }

      else
      {
        v94 = v85 | (v93 << 22);
      }

      *(a2 + 360) = v94;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecDahliaHevc::updateCommonRegisters(CAHDecDahliaHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecDahliaHevc::populateSequenceRegisters(CAHDecDahliaHevc *this)
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
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 628, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecDahliaHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecDahliaHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 8976);
  v6 = *(v4 + 9008);
  *(a3 + 16) = *(v4 + 8992);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 9024);
  v8 = *(v4 + 9040);
  v9 = *(v4 + 9072);
  *(a3 + 80) = *(v4 + 9056);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 9088);
  v11 = *(v4 + 9104);
  v12 = *(v4 + 9136);
  *(a3 + 144) = *(v4 + 9120);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecDahliaHevc::populatePictureRegisters(CAHDecDahliaHevc *this)
{
  v355 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v336 = *(v2 + 2960);
  v8 = *(v2 + 2964);
  v327 = *(v2 + 2952);
  v328 = *(v2 + 2948);
  v333 = *(v2 + 8994);
  v329 = *(v2 + 3548);
  v330 = *(v2 + 2924);
  v340 = *(v2 + 2644);
  v334 = *(v2 + 2088);
  v335 = *(v2 + 8312);
  v326 = *(v2 + 8);
  v331 = *(v2 + 8608);
  v332 = *(v2 + 8280);
  v9 = (*(*v2 + 184))(v2);
  v10 = *(this + 32);
  v339 = v9 && (*(v10 + 2756) || *(v10 + 16) == 1);
  v11 = *(this + 33);
  v12 = v5 + 23176 * v3;
  v13 = v6 + 9856 * v4;
  v337 = *(v12 + 4424);
  v338 = *(v12 + 4420);
  v14 = *(v10 + 8424);
  v354[0] = *(v10 + 8408);
  v354[1] = v14;
  v15 = *(v10 + 8456);
  v354[2] = *(v10 + 8440);
  v354[3] = v15;
  memset(v353, 0, sizeof(v353));
  memset(v352, 0, sizeof(v352));
  (*(*v10 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v356 = vld2q_f64(v18);
    v18 += 4;
    v353[v16] = v356.val[0];
    v352[v16++] = v356.val[1];
  }

  while (v16 != 4);
  if (*(v13 + 52))
  {
    v19 = 0;
    v20 = *(v13 + 56) + 1;
    v21 = *(this + 33);
    *(v21 + 524) = v20;
    do
    {
      *(v21 + 528 + 2 * v19) = *(v13 + 9676 + 4 * v19);
      v22 = v19++ >= v20;
    }

    while (!v22);
    v23 = 0;
    v24 = *(v13 + 60) + 1;
    *(v21 + 526) = v24;
    do
    {
      *(v21 + 570 + 2 * v23) = *(v13 + 9760 + 4 * v23);
      v22 = v23++ >= v24;
    }

    while (!v22);
    v25 = v20 * v24;
  }

  else
  {
    v26 = *(this + 33);
    *(v26 + 524) = 65537;
    *(v26 + 528) = 0;
    *(v26 + 530) = *(v12 + 22880);
    *(v26 + 570) = 0;
    *(v26 + 572) = *(v12 + 22888);
    v25 = 1;
  }

  v27 = v17[2675];
  v28 = v17[2674];
  if (v27 | v28)
  {
    v29 = *(v12 + 3636);
    v30 = v12;
    if (v29 <= *(v12 + 3640))
    {
      v29 = *(v12 + 3640);
    }

    v31 = (v29 + 9) & 0xFFFFFFFE;
    if (v31 == 8)
    {
      v40 = 1;
      v39 = 8;
      if (!v17[2675])
      {
        goto LABEL_52;
      }
    }

    else
    {
      v32 = v17[2672];
      if (v32)
      {
        v33 = 12;
      }

      else
      {
        v33 = 11;
      }

      if (v32)
      {
        v34 = 5;
      }

      else
      {
        v34 = 4;
      }

      v35 = v32 == 0;
      if (v32)
      {
        v36 = 10;
      }

      else
      {
        v36 = 9;
      }

      if (v35)
      {
        v37 = 2;
      }

      else
      {
        v37 = 3;
      }

      if (v31 == 10)
      {
        v38 = v37;
      }

      else
      {
        v36 = 27;
        v38 = 27;
      }

      if (v31 == 12)
      {
        v39 = v33;
      }

      else
      {
        v39 = v36;
      }

      if (v31 == 12)
      {
        v40 = v34;
      }

      else
      {
        v40 = v38;
      }

      if (!v27)
      {
LABEL_52:
        v12 = v30;
        if (v28 && (v28 == 3 && v40 - 9 < 2 || v40 <= 0x1A && ((1 << v40) & 0x4C00000) != 0 && v28 <= 2))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            *&buf[12] = 1024;
            *&buf[14] = v40;
            *&buf[18] = 1024;
            *&buf[20] = v28;
            v41 = MEMORY[0x277D86220];
            v42 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
            goto LABEL_179;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_60;
      }
    }

    if (*(v30 + 3600) && (v27 == 2 && v39 == 8 || v27 == 3 && (v39 - 9) <= 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v39;
        *&buf[18] = 1024;
        *&buf[20] = v27;
        v41 = MEMORY[0x277D86220];
        v42 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
LABEL_179:
        v170 = buf;
        v171 = 24;
LABEL_180:
        _os_log_impl(&dword_277606000, v41, OS_LOG_TYPE_DEFAULT, v42, v170, v171);
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_52;
  }

LABEL_60:
  *(v11 + 88) = 766509056;
  v43 = (*(**(this + 32) + 232))(*(this + 32));
  if (v43)
  {
    v44 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v44 = 0;
  }

  v45 = v7 >> 28;
  v46 = ((v340 != 0) << 12) | ((v340 == 1) << 10) | v44 | *(v11 + 88) & 0xFFFFC15F;
  v47 = v46 & 0xFFFFF500 | 0x2A0;
  v48 = v46 | 0x2B0;
  if (v339)
  {
    v47 = v48;
  }

  *(v11 + 88) = v28 & 3 | (4 * (v27 & 3)) | v47 & 0xFFFFFFF0 | 0x40;
  v49 = *(this + 32);
  v50 = v28 & 3 | (4 * (v27 & 3)) | v47 & 0xFFF7FFF0 | 0x40 | ((v49[2652] & 1) << 19);
  *(v11 + 88) = v50;
  v51 = v50 & 0xFFFBFFFF | ((v49[2653] & 1) << 18);
  *(v11 + 88) = v51;
  v52 = v51 & 0xFFFDFFFF | ((v49[2654] & 1) << 17);
  *(v11 + 88) = v52;
  if ((v7 & 1) != 0 && *(v13 + 53) && *(v12 + 22888) > v45 + 1 || (v7 & 2) != 0 && !*(v13 + 53) && *(v13 + 52) && v25 > v45 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v53 = *(v13 + 53), *(v13 + 53)))
  {
    v53 = 0;
    goto LABEL_79;
  }

  if (!*(v13 + 52) && v336 > v45 + 1)
  {
LABEL_78:
    v53 = (v8 == 0) << 27;
  }

LABEL_79:
  v54 = v337 + v338;
  *(v11 + 92) = v53;
  *(v11 + 96) = 0;
  v55 = *(v12 + 3608) - 1;
  *(v11 + 96) = v55;
  v56 = *(v12 + 3612);
  *(v11 + 100) = 0;
  *(v11 + 104) = 0;
  *(v11 + 96) = (v55 | (v56 << 16)) - 0x10000;
  if (*(v13 + 6466))
  {
    v57 = 32 * (*(v13 + 6477) & 1);
    *(v11 + 104) = v57;
    if (*(v13 + 6477))
    {
      v58 = *(v13 + 6484) & 7;
    }

    else
    {
      v58 = 0;
    }

    v60 = v58 | v57;
    *(v11 + 104) = v58 | v57;
    if (v57)
    {
      v61 = (v13 + 6512);
      v62 = (v11 + 112);
      v63 = -1;
      do
      {
        v64 = *v62 & 0xFFFFFFE0 | *v61 & 0x1F;
        *v62 = v64;
        v43 = v64 & 0xFFFFFC1F | (32 * (*(v61 - 6) & 0x1F));
        *v62++ = v43;
        ++v63;
        ++v61;
      }

      while (v63 < v58);
    }

    LOBYTE(v65) = *(v13 + 6477);
    if (v65)
    {
      v65 = *(v13 + 6480);
    }

    v66 = (8 * ((v54 - v65) & 3)) | v60;
    *(v11 + 104) = v66;
    v67 = v66 & 0xFFFFFFBF | ((*(v13 + 6476) & 1) << 6);
    *(v11 + 104) = v67;
    v59 = v67 & 0xFFFFFE7F | ((*(v13 + 6472) & 3) << 7);
  }

  else
  {
    v59 = 8 * (v54 & 3);
  }

  *(v11 + 104) = v59;
  LOBYTE(v68) = *(v13 + 34);
  if (v68)
  {
    v68 = *(v13 + 36);
  }

  v69 = v59 & 0xFFFE7FFF | (((v54 - v68) & 3) << 15);
  *(v11 + 104) = v69;
  v70 = v69 & 0xFFFFF1FF | ((*(v13 + 6460) & 7) << 9);
  *(v11 + 104) = v70;
  v71 = v70 & 0xFFFFEFFF | ((*(v13 + 53) & 1) << 12);
  *(v11 + 104) = v71;
  v72 = v71 & 0xFFFFDFFF | ((*(v13 + 52) & 1) << 13);
  *(v11 + 104) = v72;
  v73 = v72 & 0xFFFFBFFF | ((*(v13 + 51) & 1) << 14);
  *(v11 + 104) = v73;
  v74 = v73 & 0xFFFDFFFF | ((*(v13 + 34) & 1) << 17);
  *(v11 + 104) = v74;
  v75 = v74 & 0xFFFBFFFF | ((*(v13 + 33) & 1) << 18);
  *(v11 + 104) = v75;
  v76 = v75 & 0xFFF7FFFF | ((*(v13 + 32) & 1) << 19);
  *(v11 + 104) = v76;
  v77 = v76 & 0xFFEFFFFF | ((*(v13 + 16) & 1) << 20);
  *(v11 + 104) = v77;
  if ((v47 & 0x2000) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = (*(v12 + 22284) != 0) << 21;
  }

  *(v11 + 104) = v78 | v77 & 0xFFDFFFFF;
  v79 = *(v11 + 108) & 0xFFFFFFE0 | *(v13 + 44) & 0x1F;
  *(v11 + 108) = v79;
  *(v11 + 108) = v79 & 0xFFFFFC1F | (32 * (*(v13 + 40) & 0x1F));
  if (*(v13 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v43, v11 + 136, *(this + 33) + 1624, *(v12 + 3600), v13 + 256);
    v52 = *(v11 + 88);
  }

  if ((~v52 & 0xC0000) != 0)
  {
    v85 = 0;
    v87 = 0;
    *(v11 + 156) = 0;
    *(v11 + 160) = 0;
  }

  else
  {
    v80 = v12;
    v81 = *(this + 32);
    v82 = v81[664];
    if (!v82 || !v81[665])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v169 = v81[665];
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v82;
        *&buf[18] = 1024;
        *&buf[20] = v169;
        v41 = MEMORY[0x277D86220];
        v42 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_179;
      }

      return 0xFFFFFFFFLL;
    }

    v83 = v81[666];
    *(v11 + 156) = v83;
    v84 = v81[667];
    v85 = v84 << 16;
    *(v11 + 156) = v83 | (v84 << 16);
    v86 = v81[666] + v81[664] - 1;
    *(v11 + 160) = *(v81 + 1332) + *(v81 + 1328) - 1;
    v87 = ((v81[665] + v81[667]) << 16) - 0x10000;
    *(v11 + 160) = v87 & 0xFFFF0000 | v86;
    v12 = v80;
  }

  if (v8)
  {
    v88 = 7340080;
  }

  else
  {
    v88 = 3145776;
  }

  *(v11 + 164) = v88;
  if (!*(*(this + 32) + 2892))
  {
    v89 = *(v12 + 3608) - 1;
    *(v11 + 160) = v87 | v89;
    v90 = (*(v12 + 3612) << 16) - 0x10000;
    *(v11 + 160) = v90 & 0xFFFF0000 | v89;
    if (*(v12 + 3616))
    {
      if ((v52 & 0x800) != 0)
      {
        v91 = *(v12 + 3620) * *(v12 + 22852);
        *(v11 + 156) = v85 | v91;
        *(v11 + 156) = v91 | ((*(v12 + 22856) * *(v12 + 3628)) << 16);
        v92 = *(v12 + 3608) + ~(*(v12 + 3624) * *(v12 + 22852));
        *(v11 + 160) = v92 | v90;
        *(v11 + 160) = v92 | ((*(v12 + 3612) + ~(*(v12 + 3632) * *(v12 + 22856))) << 16);
      }
    }
  }

  v93 = this + 6160;
  for (i = 168; i != 228; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v95 = *(this + 33);
    v96 = *(v95 + i);
    *(v95 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFFu;
    v97 = *(this + 33);
    v98 = *(v97 + i);
    *(v97 + i) = v96;
    if (*v93 || *(v93 + 38) || *(v93 + 39))
    {
      result = CAHDec::addToPatcherList(this, v93, i, 0, 0xFFFFFFFFFLL, 8, v98, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 60) = 0;
    *(*(this + 33) + i + 60) = *(*(this + 33) + i + 60) & 0x800001FF | (((*(this + 3304) >> 9) & 0x3FFFFF) << 9);
    v93 += 176;
  }

  *(*(this + 33) + 288) = 0;
  if ((*(v11 + 90) & 8) != 0)
  {
    v100 = *(this + 33);
    v101 = *(*(this + 32) + 2680);
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
    v102 = *(v100 + 16);
    *buf = v101;
    v103 = *(v100 + 288);
    *(v100 + 288) = 0;
    *(*(this + 33) + 288) ^= 0xFFFFFFFu;
    v104 = *(this + 33);
    v105 = *(v104 + 288);
    *(v104 + 288) = v103;
    if (v101)
    {
      result = CAHDec::addToPatcherList(this, buf, 288, (v102 & 0xF) << 9, 0xFFFFFFFFFLL, 8, v105, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 292) = 0;
  v106 = *(this + 33);
  v107 = *(v106 + 292);
  *(v106 + 292) = 0;
  *(*(this + 33) + 292) ^= 0xFFFFFFFu;
  v108 = *(this + 33);
  v109 = *(v108 + 292);
  *(v108 + 292) = v107;
  if (*(this + 1474) || *(this + 2986) || *(this + 2987))
  {
    result = CAHDec::addToPatcherList(this, this + 1474, 292, 0, 0xFFFFFFFFFLL, 8, v109, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 296) = 0;
  v110 = *(this + 33);
  v111 = *(v110 + 296);
  *(v110 + 296) = 0;
  *(*(this + 33) + 296) ^= 0xFFFFFFFu;
  v112 = *(this + 33);
  v113 = *(v112 + 296);
  *(v112 + 296) = v111;
  if (*(this + 1496) || *(this + 3030) || *(this + 3031))
  {
    result = CAHDec::addToPatcherList(this, this + 1496, 296, 0, 0xFFFFFFFFFLL, 8, v113, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 300) = 0;
  v114 = *(this + 33);
  v115 = *(v114 + 300);
  *(v114 + 300) = 0;
  *(*(this + 33) + 300) ^= 0xFFFFFFFu;
  v116 = *(this + 33);
  v117 = *(v116 + 300);
  *(v116 + 300) = v115;
  if (*(this + 1518) || *(this + 3074) || *(this + 3075))
  {
    result = CAHDec::addToPatcherList(this, this + 1518, 300, 0, 0xFFFFFFFFFLL, 8, v117, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 304) = 0;
  v118 = *(this + 33);
  v119 = *(v118 + 304);
  *(v118 + 304) = 0;
  *(*(this + 33) + 304) ^= 0xFFFFFFFu;
  v120 = *(this + 33);
  v121 = *(v120 + 304);
  *(v120 + 304) = v119;
  if (*(this + 1540) || *(this + 3118) || *(this + 3119))
  {
    result = CAHDec::addToPatcherList(this, this + 1540, 304, 0, 0xFFFFFFFFFLL, 8, v121, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 308) = 0;
  v122 = *(this + 33);
  v123 = *(v122 + 308);
  *(v122 + 308) = 0;
  *(*(this + 33) + 308) ^= 0xFFFFFFFu;
  v124 = *(this + 33);
  v125 = *(v124 + 308);
  *(v124 + 308) = v123;
  if (*(this + 1562) || *(this + 3162) || *(this + 3163))
  {
    result = CAHDec::addToPatcherList(this, this + 1562, 308, 0, 0xFFFFFFFFFLL, 8, v125, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 312) = 0;
  v126 = *(this + 33);
  v127 = *(v126 + 312);
  *(v126 + 312) = 0;
  *(*(this + 33) + 312) ^= 0xFFFFFFFu;
  v128 = *(this + 33);
  v129 = *(v128 + 312);
  *(v128 + 312) = v127;
  if (*(this + 1584) || *(this + 3206) || *(this + 3207))
  {
    result = CAHDec::addToPatcherList(this, this + 1584, 312, 0, 0xFFFFFFFFFLL, 8, v129, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 316) = 0;
  v130 = *(this + 33);
  v131 = *(v130 + 316);
  *(v130 + 316) = 0;
  *(*(this + 33) + 316) ^= 0xFFFFFFFu;
  v132 = *(this + 33);
  v133 = *(v132 + 316);
  *(v132 + 316) = v131;
  if (*(this + 1100) || *(this + 2238) || *(this + 2239))
  {
    result = CAHDec::addToPatcherList(this, this + 1100, 316, 0, 0xFFFFFFFFFLL, 8, v133, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 320) = 0;
  v134 = *(this + 33);
  v135 = *(v134 + 320);
  *(v134 + 320) = 0;
  *(*(this + 33) + 320) ^= 0xFFFFFFFu;
  v136 = *(this + 33);
  v137 = *(v136 + 320);
  *(v136 + 320) = v135;
  v138 = (this + 176 * v335 + 8976);
  if (*v138 || *(this + 44 * v335 + 2282) || *(this + 44 * v335 + 2283))
  {
    result = CAHDec::addToPatcherList(this, v138, 320, 0, 0xFFFFFFFFFLL, 8, v137, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 324) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 324);
  *(v139 + 324) = 0;
  *(*(this + 33) + 324) ^= 0xFFFFFFFu;
  v141 = *(this + 33);
  v142 = *(v141 + 324);
  *(v141 + 324) = v140;
  if (*(this + 1606) || *(this + 3250) || *(this + 3251))
  {
    result = CAHDec::addToPatcherList(this, this + 1606, 324, 0, 0xFFFFFFFFFLL, 8, v142, 4);
    if (result)
    {
      return result;
    }
  }

  v143 = v12;
  *(*(this + 33) + 328) = 0;
  v144 = *(this + 33);
  v145 = *(v144 + 328);
  *(v144 + 328) = 0;
  *(*(this + 33) + 328) ^= 0xFFFFFFFu;
  v146 = *(this + 33);
  v147 = *(v146 + 328);
  *(v146 + 328) = v145;
  if (*(this + 1628) || *(this + 3294) || *(this + 3295))
  {
    result = CAHDec::addToPatcherList(this, this + 1628, 328, 0, 0xFFFFFFFFFLL, 8, v147, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 332) = 0;
  *(*(this + 33) + 336) = 0;
  *(*(this + 33) + 340) = 0;
  *(*(this + 33) + 344) = 0;
  v148 = *(this + 33);
  if (*(*(this + 32) + 2648) == 1)
  {
    v149 = *(v148 + 336);
    *(v148 + 336) = 0;
    *(*(this + 33) + 336) ^= 0x1FFFFFFFu;
    v150 = *(this + 33);
    v151 = *(v150 + 336);
    *(v150 + 336) = v149;
    v153 = (v334 + 8);
    v152 = *(v334 + 8);
    if (v333)
    {
      if (v152 || *(v334 + 160) || *(v334 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v334 + 8), 336, *(v334 + 68), 0xFFFFFFFFFLL, 7, v151, 4);
        if (result)
        {
          return result;
        }
      }

      v154 = *(this + 33);
      v155 = *(v154 + 332);
      *(v154 + 332) = 0;
      *(*(this + 33) + 332) ^= 0x1FFFFFFFu;
      v156 = *(this + 33);
      v157 = *(v156 + 332);
      *(v156 + 332) = v155;
      if (*v153 || *(v334 + 160) || *(v334 + 164))
      {
        result = CAHDec::addToPatcherList(this, v153, 332, *(v334 + 80), 0xFFFFFFFFFLL, 7, v157, 4);
        if (result)
        {
          return result;
        }
      }

      if (v330)
      {
        v158 = *(this + 33);
        v159 = *(v158 + 344);
        *(v158 + 344) = 0;
        *(*(this + 33) + 344) ^= 0x1FFFFFFFu;
        v160 = *(this + 33);
        v161 = *(v160 + 344);
        *(v160 + 344) = v159;
        if (*v332 || *(v332 + 152) || *(v332 + 156))
        {
          result = CAHDec::addToPatcherList(this, v332, 344, *(v332 + 56), 0xFFFFFFFFFLL, 7, v161, 4);
          if (result)
          {
            return result;
          }
        }

        v162 = *(this + 33);
        v163 = *(v162 + 340);
        *(v162 + 340) = 0;
        *(*(this + 33) + 340) ^= 0x1FFFFFFFu;
        v164 = *(this + 33);
        v165 = *(v164 + 340);
        *(v164 + 340) = v163;
        if (*v332 || *(v332 + 152) || *(v332 + 156))
        {
          v166 = v332;
          v167 = *(v332 + 68);
          v168 = this;
LABEL_215:
          v188 = 340;
LABEL_216:
          result = CAHDec::addToPatcherList(v168, v166, v188, v167, 0xFFFFFFFFFLL, 7, v165, 4);
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v152 || *(v334 + 160) || *(v334 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v334 + 8), 336, *(v334 + 60), 0xFFFFFFFFFLL, 7, v151, 4);
        if (result)
        {
          return result;
        }
      }

      v189 = *(this + 33);
      v190 = *(v189 + 344);
      *(v189 + 344) = 0;
      *(*(this + 33) + 344) ^= 0x1FFFFFFFu;
      v191 = *(this + 33);
      v192 = *(v191 + 344);
      *(v191 + 344) = v190;
      if (*v153 || *(v334 + 160) || *(v334 + 164))
      {
        result = CAHDec::addToPatcherList(this, v153, 344, *(v334 + 64), 0xFFFFFFFFFLL, 7, v192, 4);
        if (result)
        {
          return result;
        }
      }

      v193 = *(this + 33);
      v194 = *(v193 + 332);
      *(v193 + 332) = 0;
      *(*(this + 33) + 332) ^= 0x1FFFFFFFu;
      v195 = *(this + 33);
      v196 = *(v195 + 332);
      *(v195 + 332) = v194;
      if (*v153 || *(v334 + 160) || *(v334 + 164))
      {
        result = CAHDec::addToPatcherList(this, v153, 332, *(v334 + 72), 0xFFFFFFFFFLL, 7, v196, 4);
        if (result)
        {
          return result;
        }
      }

      v197 = *(this + 33);
      v198 = *(v197 + 340);
      *(v197 + 340) = 0;
      *(*(this + 33) + 340) ^= 0x1FFFFFFFu;
      v199 = *(this + 33);
      v165 = *(v199 + 340);
      *(v199 + 340) = v198;
      if (*v153 || *(v334 + 160) || *(v334 + 164))
      {
        v167 = *(v334 + 76);
        v168 = this;
        v166 = (v334 + 8);
        goto LABEL_215;
      }
    }
  }

  else
  {
    v172 = *(v148 + 332);
    *(v148 + 332) = 0;
    *(*(this + 33) + 332) ^= 0x1FFFFFFFu;
    v173 = *(this + 33);
    v174 = *(v173 + 332);
    *(v173 + 332) = v172;
    v175 = (this + 176 * v335 + 528);
    if (*v175 || *(this + 44 * v335 + 170) || *(this + 44 * v335 + 171))
    {
      result = CAHDec::addToPatcherList(this, v175, 332, 0, 0xFFFFFFFFFLL, 7, v174, 4);
      if (result)
      {
        return result;
      }
    }

    v176 = *(this + 33);
    v177 = *(v176 + 336);
    *(v176 + 336) = 0;
    *(*(this + 33) + 336) ^= 0x1FFFFFFFu;
    v178 = *(this + 33);
    v179 = *(v178 + 336);
    *(v178 + 336) = v177;
    if (*(v334 + 8) || *(v334 + 160) || *(v334 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v334 + 8), 336, *(v334 + 60), 0xFFFFFFFFFLL, 7, v179, 4);
      if (result)
      {
        return result;
      }
    }

    v180 = *(this + 33);
    v181 = *(v180 + 340);
    *(v180 + 340) = 0;
    *(*(this + 33) + 340) ^= 0x1FFFFFFFu;
    v182 = *(this + 33);
    v183 = *(v182 + 340);
    *(v182 + 340) = v181;
    v184 = (this + 176 * v335 + 3344);
    if (*v184 || *(this + 44 * v335 + 874) || *(this + 44 * v335 + 875))
    {
      result = CAHDec::addToPatcherList(this, v184, 340, 0, 0xFFFFFFFFFLL, 7, v183, 4);
      if (result)
      {
        return result;
      }
    }

    v185 = *(this + 33);
    v186 = *(v185 + 344);
    *(v185 + 344) = 0;
    *(*(this + 33) + 344) ^= 0x1FFFFFFFu;
    v187 = *(this + 33);
    v165 = *(v187 + 344);
    *(v187 + 344) = v186;
    if (*(v334 + 8) || *(v334 + 160) || *(v334 + 164))
    {
      v167 = *(v334 + 64);
      v168 = this;
      v166 = (v334 + 8);
      v188 = 344;
      goto LABEL_216;
    }
  }

  if (*(v11 + 88) & 0x2000 | v331)
  {
    *(this + v335 + 116) = 0;
    *(*(this + 33) + 348) = 0;
    if (!v331)
    {
      goto LABEL_289;
    }

    v200 = 0;
    if (v339)
    {
      v201 = 0x2000000;
    }

    else
    {
      v201 = 0;
    }

    v202 = v354;
    v203 = v353;
    v204 = v352;
    while (1)
    {
      v205 = *v202;
      if (!*v202 || !*(v205 + 48))
      {
        return 0xFFFFFFFFLL;
      }

      v206 = *(v205 + 44);
      if ((*(**(this + 32) + 184))(*(this + 32)))
      {
        v207 = *(this + 32);
        if (v207[689])
        {
          *buf = 0;
          if (((*(*v207 + 312))(v207, v206, buf) & 1) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v341 = 0;
            v41 = MEMORY[0x277D86220];
            v42 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
            v170 = &v341;
            v171 = 2;
            goto LABEL_180;
          }

          *(v205 + 48) = *buf + 8;
        }
      }

      *(*(this + 33) + v200 + 348) = 0;
      *(*(this + 33) + v200 + 348) = *(*(this + 33) + v200 + 348) & 0xFFFFFFF | ((v331 << 28) - 0x10000000);
      *(*(this + 33) + v200 + 348) &= 0xF3FFFFFF;
      *(*(this + 33) + v200 + 348) = *(*(this + 33) + v200 + 348) & 0xFDFFFFFF | v201;
      *(*(this + 33) + v200 + 348) |= 0x1000000u;
      v208 = v329 - *(v205 + 12);
      v209 = v208 & 0x1FFFF;
      if (v208 < -32768)
      {
        v209 = 98304;
      }

      if (v208 <= 0x8000)
      {
        v210 = v209;
      }

      else
      {
        v210 = 0x8000;
      }

      *(*(this + 33) + v200 + 348) = *(*(this + 33) + v200 + 348) & 0xFFFE0000 | v210;
      *(*(this + 33) + v200 + 348) = *(*(this + 33) + v200 + 348) & 0xFFFDFFFF | ((*(v205 + 20) == 2) << 17);
      *(*(this + 33) + v200 + 380) = 0;
      *(*(this + 33) + v200 + 412) = 0;
      *(*(this + 33) + v200 + 444) = 0;
      *(*(this + 33) + v200 + 476) = 0;
      v211 = *(this + 33);
      if (*(*(this + 32) + 2648) == 1)
      {
        v212 = v200 + 412;
        v213 = v211 + v200;
        v214 = *(v213 + 412);
        *(v213 + 412) = 0;
        *(*(this + 33) + v200 + 412) ^= 0x1FFFFFFFu;
        v215 = *(this + 33) + v200;
        v216 = *(v215 + 412);
        *(v215 + 412) = v214;
        v217 = *(v205 + 48);
        v218 = *v217;
        if (v333)
        {
          if (v218 || *(v217 + 38) || *(v217 + 39))
          {
            result = CAHDec::addToPatcherList(this, v217, v212, *(v217 + 15), 0xFFFFFFFFFLL, 7, v216, 4);
            if (result)
            {
              return result;
            }
          }

          v219 = *(this + 33) + v200;
          v220 = *(v219 + 380);
          *(v219 + 380) = 0;
          *(*(this + 33) + v200 + 380) ^= 0x1FFFFFFFu;
          v221 = *(this + 33) + v200;
          v222 = *(v221 + 380);
          *(v221 + 380) = v220;
          v223 = *(v205 + 48);
          if (*v223 || *(v223 + 152) || *(v223 + 156))
          {
            result = CAHDec::addToPatcherList(this, v223, v200 + 380, *(v223 + 72), 0xFFFFFFFFFLL, 7, v222, 4);
            if (result)
            {
              return result;
            }
          }

          if (v330)
          {
            v224 = *(this + 33) + v200;
            v225 = *(v224 + 476);
            *(v224 + 476) = 0;
            *(*(this + 33) + v200 + 476) ^= 0x1FFFFFFFu;
            v226 = *(this + 33) + v200;
            v227 = *(v226 + 476);
            *(v226 + 476) = v225;
            if (*v332 || *(v332 + 152) || *(v332 + 156))
            {
              result = CAHDec::addToPatcherList(this, v332, v200 + 476, *(v332 + 56), 0xFFFFFFFFFLL, 7, v227, 4);
              if (result)
              {
                return result;
              }
            }

            v228 = *(this + 33) + v200;
            v229 = *(v228 + 444);
            *(v228 + 444) = 0;
            *(*(this + 33) + v200 + 444) ^= 0x1FFFFFFFu;
            v230 = *(this + 33) + v200;
            v231 = *(v230 + 444);
            *(v230 + 444) = v229;
            if (*v332 || *(v332 + 152) || *(v332 + 156))
            {
              v232 = v200 + 444;
              v233 = v332;
LABEL_286:
              v252 = *(v233 + 68);
LABEL_287:
              result = CAHDec::addToPatcherList(this, v233, v232, v252, 0xFFFFFFFFFLL, 7, v231, 4);
              if (result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v218 || *(v217 + 38) || *(v217 + 39))
          {
            result = CAHDec::addToPatcherList(this, v217, v212, *(v217 + 13), 0xFFFFFFFFFLL, 7, v216, 4);
            if (result)
            {
              return result;
            }
          }

          v253 = *(this + 33) + v200;
          v254 = *(v253 + 476);
          *(v253 + 476) = 0;
          *(*(this + 33) + v200 + 476) ^= 0x1FFFFFFFu;
          v255 = *(this + 33) + v200;
          v256 = *(v255 + 476);
          *(v255 + 476) = v254;
          v257 = *(v205 + 48);
          if (*v257 || *(v257 + 152) || *(v257 + 156))
          {
            result = CAHDec::addToPatcherList(this, v257, v200 + 476, *(v257 + 56), 0xFFFFFFFFFLL, 7, v256, 4);
            if (result)
            {
              return result;
            }
          }

          v258 = *(this + 33) + v200;
          v259 = *(v258 + 380);
          *(v258 + 380) = 0;
          *(*(this + 33) + v200 + 380) ^= 0x1FFFFFFFu;
          v260 = *(this + 33) + v200;
          v261 = *(v260 + 380);
          *(v260 + 380) = v259;
          v262 = *(v205 + 48);
          if (*v262 || *(v262 + 152) || *(v262 + 156))
          {
            result = CAHDec::addToPatcherList(this, v262, v200 + 380, *(v262 + 64), 0xFFFFFFFFFLL, 7, v261, 4);
            if (result)
            {
              return result;
            }
          }

          v263 = *(this + 33) + v200;
          v264 = *(v263 + 444);
          *(v263 + 444) = 0;
          *(*(this + 33) + v200 + 444) ^= 0x1FFFFFFFu;
          v265 = *(this + 33) + v200;
          v231 = *(v265 + 444);
          *(v265 + 444) = v264;
          v233 = *(v205 + 48);
          if (*v233 || *(v233 + 152) || *(v233 + 156))
          {
            v232 = v200 + 444;
            goto LABEL_286;
          }
        }
      }

      else
      {
        v234 = v211 + v200;
        v235 = *(v234 + 380);
        *(v234 + 380) = 0;
        *(*(this + 33) + v200 + 380) ^= 0x1FFFFFFFu;
        v236 = *(this + 33) + v200;
        v237 = *(v236 + 380);
        *(v236 + 380) = v235;
        v238 = *v203;
        if (**v203 || *(v238 + 38) || *(v238 + 39))
        {
          result = CAHDec::addToPatcherList(this, v238, v200 + 380, 0, 0xFFFFFFFFFLL, 7, v237, 4);
          if (result)
          {
            return result;
          }
        }

        v239 = *(this + 33) + v200;
        v240 = *(v239 + 412);
        *(v239 + 412) = 0;
        *(*(this + 33) + v200 + 412) ^= 0x1FFFFFFFu;
        v241 = *(this + 33) + v200;
        v242 = *(v241 + 412);
        *(v241 + 412) = v240;
        v243 = *(v205 + 48);
        if (*v243 || *(v243 + 152) || *(v243 + 156))
        {
          result = CAHDec::addToPatcherList(this, v243, v200 + 412, *(v243 + 52), 0xFFFFFFFFFLL, 7, v242, 4);
          if (result)
          {
            return result;
          }
        }

        v244 = *(this + 33) + v200;
        v245 = *(v244 + 444);
        *(v244 + 444) = 0;
        *(*(this + 33) + v200 + 444) ^= 0x1FFFFFFFu;
        v246 = *(this + 33) + v200;
        v247 = *(v246 + 444);
        *(v246 + 444) = v245;
        v248 = *v204;
        if (**v204 || *(v248 + 38) || *(v248 + 39))
        {
          result = CAHDec::addToPatcherList(this, v248, v200 + 444, 0, 0xFFFFFFFFFLL, 7, v247, 4);
          if (result)
          {
            return result;
          }
        }

        v249 = *(this + 33) + v200;
        v250 = *(v249 + 476);
        *(v249 + 476) = 0;
        *(*(this + 33) + v200 + 476) ^= 0x1FFFFFFFu;
        v251 = *(this + 33) + v200;
        v231 = *(v251 + 476);
        *(v251 + 476) = v250;
        v233 = *(v205 + 48);
        if (*v233 || *(v233 + 152) || *(v233 + 156))
        {
          v232 = v200 + 476;
          v252 = *(v233 + 56);
          goto LABEL_287;
        }
      }

      v200 += 4;
      ++v202;
      ++v203;
      ++v204;
      if (4 * v331 == v200)
      {
        goto LABEL_289;
      }
    }
  }

  *(v11 + 88) |= 0x2000u;
  *(this + v335 + 116) = 1;
  *(*(this + 33) + 348) = 0;
LABEL_289:
  *(*(this + 33) + 508) = 0;
  *(*(this + 33) + 512) = 0;
  *(*(this + 33) + 516) = 0;
  *(*(this + 33) + 520) = 0;
  if (!v340)
  {
    goto LABEL_349;
  }

  v266 = *(this + 32);
  if (v328 && v327 == 2)
  {
    v267 = *(*(v266 + 8248) + 60);
    v268 = *(this + 33);
    v269 = *(v268 + 508);
    *(v268 + 508) = 0;
    *(*(this + 33) + 508) ^= 0xFFFFFFFu;
    v270 = *(this + 33);
    v271 = *(v270 + 508);
    *(v270 + 508) = v269;
    v272 = *(*(this + 32) + 8248);
    if (*v272 || *(v272 + 152) || *(v272 + 156))
    {
      result = CAHDec::addToPatcherList(this, v272, 508, v267, 0xFFFFFFFFFLL, 8, v271, 4);
      if (result)
      {
        return result;
      }
    }

    v273 = *(this + 33);
    v274 = *(v273 + 516);
    *(v273 + 516) = 0;
    *(*(this + 33) + 516) ^= 0xC0000000;
    v275 = *(this + 33);
    v276 = *(v275 + 516);
    *(v275 + 516) = v274;
    v277 = *(*(this + 32) + 8248);
    if (*v277 || *(v277 + 152) || *(v277 + 156))
    {
      result = CAHDec::addToPatcherList(this, v277, 516, v267, 192, 6, v276, 4);
      if (result)
      {
        return result;
      }
    }

    if (v330)
    {
      v278 = *(v332 + 56);
      v279 = *(this + 33);
      v280 = *(v279 + 512);
      *(v279 + 512) = 0;
      *(*(this + 33) + 512) ^= 0xFFFFFFFu;
      v281 = *(this + 33);
      v282 = *(v281 + 512);
      *(v281 + 512) = v280;
      if (*v332 || *(v332 + 152) || *(v332 + 156))
      {
        result = CAHDec::addToPatcherList(this, v332, 512, v278, 0xFFFFFFFFFLL, 8, v282, 4);
        if (result)
        {
          return result;
        }
      }

      v283 = *(this + 33);
      v284 = *(v283 + 520);
      *(v283 + 520) = 0;
      *(*(this + 33) + 520) ^= 0xC0000000;
      v285 = *(this + 33);
      v286 = *(v285 + 520);
      *(v285 + 520) = v284;
      if (*v332 || *(v332 + 152) || *(v332 + 156))
      {
        result = CAHDec::addToPatcherList(this, v332, 520, v278, 192, 6, v286, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (v326)
    {
      *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF));
      if (v330)
      {
        v287 = v332;
LABEL_312:
        v288 = (v287 + 80);
LABEL_348:
        *(*(this + 33) + 520) = *(*(this + 33) + 520) & 0xFFFF8003 | (4 * ((*v288 >> 6) & 0x1FFF));
      }

LABEL_349:
      v318 = *(this + 32);
      if (*(v318 + 2360) != 1)
      {
        return 0;
      }

      v319 = *(this + 33);
      *(v319 + 620) = *(v319 + 620) & 0xFFFFFFFE | *(v318 + 2508) & 1;
      if (*(v318 + 2508))
      {
        *(v319 + 2620) = 0x10000000;
        *(v319 + 2624) = *(v318 + 2368);
        *(v319 + 2632) = 0;
        *(v319 + 2628) = 0;
        *(v319 + 2640) = *(v318 + 2372);
        v320 = *(v318 + 2388);
        *(v319 + 2672) = *(v318 + 2404);
        *(v319 + 2656) = v320;
      }

      *(*(this + 33) + 620) = *(*(this + 33) + 620) & 0xFFFFFFFD | (2 * (*(v318 + 2512) & 1));
      if (*(v318 + 2512))
      {
        *(v319 + 2688) = 0;
        v321 = *(v318 + 2424);
        *(v319 + 2688) = (*(v318 + 2424) & 1) << 22;
        v322 = ((*(v318 + 2420) & 1) << 23) | ((v321 & 1) << 22) | 0x20000000;
        *(v319 + 2688) = v322;
        if (!*(v318 + 2364))
        {
          ++v322;
        }

        *(v319 + 2688) = v322;
        v323 = *(v318 + 2428);
        v324 = *(v318 + 2460);
        *(v319 + 2708) = *(v318 + 2444);
        *(v319 + 2724) = v324;
        *(v319 + 2692) = v323;
      }

      *(*(this + 33) + 620) = *(*(this + 33) + 620) & 0xFFFFFFFB | (4 * (*(v318 + 2516) & 1));
      *(*(this + 33) + 620) = *(*(this + 33) + 620) & 0xFFFFFFF7 | (8 * (*(v318 + 2520) & 1));
      *(*(this + 33) + 620) = *(*(this + 33) + 620) & 0xFFFFFFEF | (16 * (*(v318 + 2524) & 1));
      *(v319 + 2744) = 0;
      v325 = *(v318 + 2476) == 2 ? 805306368 : 813694976;
      *(v319 + 2744) = v325;
      memcpy((v319 + 2748), (v318 + 2480), 4 * *(v318 + 2476));
      if (!*(v318 + 2516))
      {
        return 0;
      }

      result = 0;
      *(v318 + 2516) = 0;
      return result;
    }

    if (CAHDecIxoraHevc::getSWRStride(this, *(v11 + 160) - *(v11 + 156) + 1, v143[909], v143[910], v143[5713]))
    {
      return 0xFFFFFFFFLL;
    }

    *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFFC003 | (4 * ((*(this + 3308) >> 6) & 0xFFF));
    if (!v330)
    {
      goto LABEL_349;
    }

LABEL_347:
    v288 = (this + 13236);
    goto LABEL_348;
  }

  v289 = *(v266 + 2892);
  if (*(v266 + 2892))
  {
    v290 = *(v266 + 2904);
    v289 = *(v266 + 2908);
  }

  else
  {
    v290 = 0;
  }

  v291 = *(v266 + 8248);
  v293 = *(v291 + 52);
  v292 = *(v291 + 56);
  v294 = v293 + v290;
  v295 = __CFADD__(v293, v290);
  v296 = v292 + v289;
  if (__CFADD__(v292, v289))
  {
    v297 = 2;
  }

  else
  {
    v297 = v295;
  }

  if (v297)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    *&buf[12] = 1024;
    *&buf[14] = v297;
    v41 = MEMORY[0x277D86220];
    v42 = "AppleAVD: %s(): failKind = %d";
    v170 = buf;
    v171 = 18;
    goto LABEL_180;
  }

  v298 = *(this + 33);
  v299 = *(v298 + 508);
  *(v298 + 508) = 0;
  *(*(this + 33) + 508) ^= 0xFFFFFFFu;
  v300 = *(this + 33);
  v301 = *(v300 + 508);
  *(v300 + 508) = v299;
  v302 = *(*(this + 32) + 8248);
  if (!*v302 && !*(v302 + 152) && !*(v302 + 156) || (result = CAHDec::addToPatcherList(this, v302, 508, v294, 0xFFFFFFFFFLL, 8, v301, 4), !result))
  {
    if ((v303 = *(this + 33), v304 = *(v303 + 512), *(v303 + 512) = 0, *(*(this + 33) + 512) ^= 0xFFFFFFFu, v305 = *(this + 33), v306 = *(v305 + 512), *(v305 + 512) = v304, v307 = *(*(this + 32) + 8248), !*v307) && !*(v307 + 152) && !*(v307 + 156) || (result = CAHDec::addToPatcherList(this, v307, 512, v296, 0xFFFFFFFFFLL, 8, v306, 4), !result))
    {
      if ((v308 = *(this + 33), v309 = *(v308 + 516), *(v308 + 516) = 0, *(*(this + 33) + 516) ^= 0xC0000000, v310 = *(this + 33), v311 = *(v310 + 516), *(v310 + 516) = v309, v312 = *(*(this + 32) + 8248), !*v312) && !*(v312 + 152) && !*(v312 + 156) || (result = CAHDec::addToPatcherList(this, v312, 516, v294, 192, 6, v311, 4), !result))
      {
        if ((v313 = *(this + 33), v314 = *(v313 + 520), *(v313 + 520) = 0, *(*(this + 33) + 520) ^= 0xC0000000, v315 = *(this + 33), v316 = *(v315 + 520), *(v315 + 520) = v314, v317 = *(*(this + 32) + 8248), !*v317) && !*(v317 + 152) && !*(v317 + 156) || (result = CAHDec::addToPatcherList(this, v317, 520, v296, 192, 6, v316, 4), !result))
        {
          if (v326)
          {
            *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF));
            v287 = *(*(this + 32) + 8248);
            goto LABEL_312;
          }

          if (CAHDecIxoraHevc::getSWRStride(this, *(v11 + 160) - *(v11 + 156) + 1, v143[909], v143[910], v143[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 516) = *(*(this + 33) + 516) & 0xFFFFC003 | (4 * ((*(this + 3308) >> 6) & 0xFFF));
          goto LABEL_347;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecDahliaHevc::getTileIdxAbove(CAHDecDahliaHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 524);
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

uint64_t CAHDecDahliaHevc::populateAvdWork(CAHDecDahliaHevc *this, unsigned int a2)
{
  v129 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8168);
  v98 = *(v3 + 8184);
  v7 = *(v3 + 8924);
  v8 = *(v3 + 2960);
  v9 = *(v3 + 2964);
  v10 = *(v3 + 8176) + 9856 * *(v3 + 8212);
  memset(v128, 0, sizeof(v128));
  v127[0] = 0;
  v127[1] = 0;
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

  v108 = *(v4 + 526) * *(v4 + 524);
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
  memset_pattern16(__b, &unk_27775BC00, 0x10uLL);
  v20 = v4 + 221164;
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
    *(v128 + v25) = v20 + (v25 - v17) * v23;
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
  v28 = *(v128 + v24);
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
  v106 = v4 + 3112;
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
      v109 = 364 * v32;
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
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 570))
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
            *(&buf[1] + 6) = 1790;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 221186, HIDWORD(v122) + v54, 0xFFFFFFFFFLL, 32, -1, 2);
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
            *(&buf[1] + 6) = 1791;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 221188, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
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
              v65 = *(v64 + 524);
              LODWORD(v104) = (v33 - *(v64 + 570 + 2 * (v56 / v65)) + *(v64 + 570 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 528);
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
          v67 = *(*(this + 33) + 524);
          if (v63 / v67 + 1 == v26 / v67)
          {
            v27 |= 0x10u;
          }
        }

        ++*(v127 + v33);
        *(v128 + v33) += 48;
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

        v28 = *(v128 + v33);
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
        *(v28 + 4) = *(v127 + v33);
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
          *(&buf[1] + 6) = 1714;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 221186, HIDWORD(v122) + v46, 0xFFFFFFFFFLL, 32, -1, 2);
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
        *(&buf[1] + 6) = 1715;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 221188, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
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
      v78 = v74 + 221186;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1886;
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
    ++*(v127 + v33);
    v80 = v92;
    if (v110)
    {
      v81 = 0;
      memset(buf, 0, sizeof(buf));
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
          if (*(v82 + 4) + 1 == *(v127 + v84))
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

      v88 = *(v127 + v84);
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
      *(v90 + 2 * v80 - 8) = *(v127 + v80);
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 221164;
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
    *(&buf[1] + 6) = 1885;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 221186, HIDWORD(v122) + v75, 0xFFFFFFFFFLL, 32, -1, 2);
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

uint64_t CAHDecDahliaHevc::allocWorkBuf_SPS(CAHDecDahliaHevc *this, _DWORD *a2)
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

  *(this + 3300) = v26;
  *(this + 3301) = v40;
  *(this + 1651) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 3306) = v41;
  *(this + 3305) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 8976);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 3305);
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
    v53 = 2152;
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
      v44 = *(this + 3300);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2143;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 3301);
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
    v53 = 2144;
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

uint64_t CAHDecDahliaHevc::allocWorkBuf_PPS(CAHDecDahliaHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
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
  if (v33 && CAVDDecoder::allocAVDMem(v25, this + 737, v33, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2322;
      v73 = 2080;
      v74 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_121:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_122;
    }

    goto LABEL_122;
  }

  if ((v11 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 550, 4 * (4 * v32 + (v65 >> 4)), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2323;
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
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 748, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2324;
      v73 = 2080;
      v74 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 759, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2325;
      v73 = 2080;
      v74 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 770, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2326;
      v73 = 2080;
      v74 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 781, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2327;
      v73 = 2080;
      v74 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), this + 792, v23, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2328;
      v73 = 2080;
      v74 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), this + 803, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2329;
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

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 814, v68, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2330;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t CAHDecDahliaHevc::freeWorkBuf_SPS(uint64_t this)
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

  v4 = (v1 + 8976);
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

uint64_t *CAHDecDahliaHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1474])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1474);
    v2[1474] = 0;
  }

  if (v2[1100])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1100);
    v2[1100] = 0;
  }

  if (v2[1496])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1496);
    v2[1496] = 0;
  }

  if (v2[1518])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1518);
    v2[1518] = 0;
  }

  if (v2[1540])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1540);
    v2[1540] = 0;
  }

  if (v2[1562])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1562);
    v2[1562] = 0;
  }

  if (v2[1584])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1584);
    v2[1584] = 0;
  }

  if (v2[1606])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1606);
    v2[1606] = 0;
  }

  if (v2[1628])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1628);
    v2[1628] = 0;
  }

  return this;
}

uint64_t CAHDecDahliaHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 13216) = a2;
  return this;
}

int8x16_t interchange_detile_sb_neon(int8x16_t *a1, int a2, const unsigned __int8 *a3, int a4)
{
  if (a4 == 2)
  {
    v7 = *a3;
    *a1 = vqtbl4q_s8(*a3, xmmword_27775C720);
    *(a1 + a2) = vqtbl4q_s8(v7, xmmword_27775C730);
    *(a1 + 2 * a2) = vqtbl4q_s8(v7, xmmword_27775C740);
    result = vqtbl4q_s8(v7, xmmword_27775C750);
    *(a1 + 3 * a2) = result;
  }

  else if (a4 == 1)
  {
    v6 = *a3;
    v4 = vqtbl2q_s8(*a3, xmmword_27775C760);
    a1->i64[0] = v4.i64[0];
    *(a1->i64 + a2) = vextq_s8(v4, v4, 8uLL).u64[0];
    result = vqtbl2q_s8(v6, xmmword_27775C770);
    *(a1->i64 + 2 * a2) = result.i64[0];
    result.i64[0] = vextq_s8(result, result, 8uLL).u64[0];
    *(a1->i64 + 3 * a2) = result.i64[0];
  }

  return result;
}

int8x16_t *interchange_tile_sb_neon(int8x16_t *result, const unsigned __int8 *a2, int a3, int a4)
{
  if (a4 == 2)
  {
    v7.val[0] = *a2;
    v7.val[1] = *&a2[a3];
    v7.val[2] = *&a2[2 * a3];
    v7.val[3] = *&a2[3 * a3];
    *result = vqtbl4q_s8(v7, xmmword_27775C780);
    result[1] = vqtbl4q_s8(v7, xmmword_27775C790);
    result[2] = vqtbl4q_s8(v7, xmmword_27775C7A0);
    v4 = vqtbl4q_s8(v7, xmmword_27775C7B0);
    v5 = 3;
  }

  else
  {
    if (a4 != 1)
    {
      return result;
    }

    v6.val[0].i64[0] = *a2;
    v6.val[0].i64[1] = *&a2[a3];
    v6.val[1].i64[0] = *&a2[2 * a3];
    v6.val[1].i64[1] = *&a2[3 * a3];
    *result = vqtbl2q_s8(v6, xmmword_27775C7C0);
    v4 = vqtbl2q_s8(v6, xmmword_27775C7D0);
    v5 = 1;
  }

  result[v5] = v4;
  return result;
}

{
  if (a4 == 2)
  {
    v7.val[0] = *a2;
    v7.val[1] = *&a2[a3];
    v7.val[2] = *&a2[2 * a3];
    v7.val[3] = *&a2[3 * a3];
    *result = vqtbl4q_s8(v7, xmmword_27775C780);
    result[1] = vqtbl4q_s8(v7, xmmword_27775C790);
    result[2] = vqtbl4q_s8(v7, xmmword_27775C7A0);
    v4 = vqtbl4q_s8(v7, xmmword_27775C7B0);
    v5 = 3;
  }

  else
  {
    if (a4 != 1)
    {
      return result;
    }

    v6.val[0].i64[0] = *a2;
    v6.val[0].i64[1] = *&a2[a3];
    v6.val[1].i64[0] = *&a2[2 * a3];
    v6.val[1].i64[1] = *&a2[3 * a3];
    *result = vqtbl2q_s8(v6, xmmword_27775C7C0);
    v4 = vqtbl2q_s8(v6, xmmword_27775C7D0);
    v5 = 1;
  }

  result[v5] = v4;
  return result;
}

uint64_t interchange_detile_plane(uint64_t result, uint64_t a2, const unsigned __int8 *a3, int a4, int a5, int a6)
{
  v24 = result;
  v6 = 264;
  if (!a6)
  {
    v6 = 0;
  }

  if (a5 >= 1)
  {
    v30 = 0;
    v8 = (&memory_parameters + v6);
    v9 = v8[1];
    v10 = v8[2];
    v23 = v8[3];
    v11 = (v23 / (v10 * v9));
    v28 = 4 * a2;
    v31 = v10;
    v20 = v10 * a4;
    v21 = v10 * a2;
    v12 = 8 * v11;
    v13 = v8[5];
    v14 = v11 * v9;
    do
    {
      if (a4 >= 1)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          if (v31 >= 1)
          {
            v15 = 0;
            v16 = v24 + v27;
            v17 = &a3[v26 * v23];
            do
            {
              v32 = v15;
              if (v14 >= 1)
              {
                v18 = 0;
                do
                {
                  result = interchange_detile_sb(v16 + v18, a2, v17, v11);
                  v17 += v13;
                  if (v18 + v12 >= v14)
                  {
                    break;
                  }

                  v19 = v12 + v27 + v18;
                  v18 += v12;
                }

                while (v19 < a4);
              }

              v15 = v32 + 4;
              if (v32 + 4 >= v31)
              {
                break;
              }

              v16 += v28;
            }

            while (v15 + v30 < a5);
          }

          ++v26;
          v27 += v14;
        }

        while (v27 < a4);
      }

      a3 += v20;
      v24 += v21;
      v30 += v31;
    }

    while (v30 < a5);
  }

  return result;
}

uint64_t interchange_tile_plane(uint64_t result, const unsigned __int8 *a2, uint64_t a3, int a4, int a5, int a6)
{
  v24 = result;
  v6 = 264;
  if (!a6)
  {
    v6 = 0;
  }

  if (a5 >= 1)
  {
    v30 = 0;
    v8 = (&memory_parameters + v6);
    v9 = v8[1];
    v10 = v8[2];
    v23 = v8[3];
    v11 = (v23 / (v10 * v9));
    v28 = 4 * a3;
    v31 = v10;
    v20 = v10 * a4;
    v21 = v10 * a3;
    v12 = 8 * v11;
    v13 = v8[5];
    v14 = v11 * v9;
    do
    {
      if (a4 >= 1)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          if (v31 >= 1)
          {
            v15 = 0;
            v16 = &a2[v27];
            v17 = v24 + v26 * v23;
            do
            {
              v32 = v15;
              if (v14 >= 1)
              {
                v18 = 0;
                do
                {
                  result = interchange_tile_sb(v17, &v16[v18], a3, v11);
                  v17 += v13;
                  if (v18 + v12 >= v14)
                  {
                    break;
                  }

                  v19 = v12 + v27 + v18;
                  v18 += v12;
                }

                while (v19 < a4);
              }

              v15 = v32 + 4;
              if (v32 + 4 >= v31)
              {
                break;
              }

              v16 += v28;
            }

            while (v15 + v30 < a5);
          }

          ++v26;
          v27 += v14;
        }

        while (v27 < a4);
      }

      v24 += v20;
      a2 += v21;
      v30 += v31;
    }

    while (v30 < a5);
  }

  return result;
}

uint16x8_t *BilinearFilterV_swift_neon(uint16x8_t *result, uint8x16_t *a2, uint8x16_t *a3, int a4, unsigned int a5)
{
  v5 = vdupq_n_s8(a5);
  v6.i64[0] = 0x1010101010101010;
  v6.i64[1] = 0x1010101010101010;
  v7 = vsubq_s8(v6, v5);
  v8 = a4 & 0x3F;
  v9 = a4 & 0xFFFFFFC0;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = __OFSUB__(v9, 64);
    v9 -= 64;
    v12 = *a2;
    v13 = a2[1];
    v11 = a2 + 2;
    v15 = *a3;
    v16 = a3[1];
    v14 = a3 + 2;
    v17 = *v11;
    v18 = v11[1];
    a2 = v11 + 2;
    v19 = *v14;
    v20 = v14[1];
    a3 = v14 + 2;
    *result = vmlal_u8(vmull_u8(*v12.i8, *v7.i8), *v15.i8, *v5.i8);
    result[1] = vmlal_high_u8(vmull_high_u8(v12, v7), v15, v5);
    v21 = result + 2;
    *v21 = vmlal_u8(vmull_u8(*v13.i8, *v7.i8), *v16.i8, *v5.i8);
    v21[1] = vmlal_high_u8(vmull_high_u8(v13, v7), v16, v5);
    v21 += 2;
    *v21 = vmlal_u8(vmull_u8(*v17.i8, *v7.i8), *v19.i8, *v5.i8);
    v21[1] = vmlal_high_u8(vmull_high_u8(v17, v7), v19, v5);
    v21 += 2;
    *v21 = vmlal_u8(vmull_u8(*v18.i8, *v7.i8), *v20.i8, *v5.i8);
    v21[1] = vmlal_high_u8(vmull_high_u8(v18, v7), v20, v5);
    result = v21 + 2;
  }

  while (!((v9 < 0) ^ v10 | (v9 == 0)));
  if (v8)
  {
LABEL_6:
    do
    {
      v10 = __OFSUB__(v8, 16);
      v8 -= 16;
      v22 = *a2++;
      v23 = *a3++;
      *result = vmlal_u8(vmull_u8(*v22.i8, *v7.i8), *v23.i8, *v5.i8);
      result[1] = vmlal_high_u8(vmull_high_u8(v22, v7), v23, v5);
      result += 2;
    }

    while (!((v8 < 0) ^ v10 | (v8 == 0)));
  }

  return result;
}

int8x16_t *BilinearFilterH_swift_neon(int8x16_t *result, uint64_t a2, int a3, unsigned int a4, int8x16_t *a5, uint64_t a6)
{
  v6.i64[0] = 0x1010101010101010;
  v6.i64[1] = 0x1010101010101010;
  v7 = 0;
  v8 = 2 * a4;
  v9 = 3 * a4;
  v10 = 4 * a4;
  do
  {
    v11 = __OFSUB__(a3, 16);
    a3 -= 16;
    v12 = *a5++;
    v13 = vsubq_s8(v6, v12);
    v14 = vzip1q_s8(v13, v12);
    v15 = vzip2q_s8(v13, v12);
    v16 = (((v7 >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v17 = ((((v7 + a4) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v18 = ((((v7 + v8) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v19 = ((((v7 + v9) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v20 = v7 + v10;
    v21.i32[0] = vld1q_dup_f32(v16).u32[0];
    v21.i32[1] = *v17;
    v21.i32[2] = *v18;
    v21.i32[3] = *v19;
    v22 = (((v20 >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v23 = ((((v20 + a4) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v24 = ((((v20 + v8) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v25 = ((((v20 + v9) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v26 = v20 + v10;
    v27.i32[0] = vld1q_dup_f32(v22).u32[0];
    v27.i32[1] = *v23;
    v27.i32[2] = *v24;
    v27.i32[3] = *v25;
    v28 = (((v26 >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v29 = ((((v26 + a4) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v30 = ((((v26 + v8) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v31 = ((((v26 + v9) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v32 = v26 + v10;
    v33.i32[0] = vld1q_dup_f32(v28).u32[0];
    v33.i32[1] = *v29;
    v33.i32[2] = *v30;
    v33.i32[3] = *v31;
    v34 = (((v32 >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v35 = ((((v32 + a4) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v36 = ((((v32 + v8) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v37 = ((((v32 + v9) >> 15) & 0xFFFFFFFFFFFFFFFELL) + a2);
    v7 = v32 + v10;
    v38.i32[0] = vld1q_dup_f32(v34).u32[0];
    v38.i32[1] = *v35;
    v38.i32[2] = *v36;
    v38.i32[3] = *v37;
    *result = vrshrn_high_n_s16(vrshrn_n_s16(vpaddq_s16(vmulq_s16(vmovl_u8(*v14.i8), v21), vmulq_s16(vmovl_high_u8(v14), v27)), 8uLL), vpaddq_s16(vmulq_s16(vmovl_u8(*v15.i8), v33), vmulq_s16(vmovl_high_u8(v15), v38)), 8uLL);
    result = (result + a6);
  }

  while (!((a3 < 0) ^ v11 | (a3 == 0)));
  return result;
}

int8x16_t *BilinearFilterH_swift_chroma_neon(int8x16_t *result, uint64_t a2, int a3, unsigned int a4, int8x16_t *a5, uint64_t a6)
{
  v6.i64[0] = 0x1010101010101010;
  v6.i64[1] = 0x1010101010101010;
  v7 = 0;
  v8 = 2 * a4;
  v9 = 3 * a4;
  v10 = 4 * a4;
  v11 = a3 - 8;
  if (!v11)
  {
    goto LABEL_5;
  }

  do
  {
    v12 = __OFSUB__(v11, 16);
    v11 -= 16;
    v13 = (((v7 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v14 = ((((v7 + a4) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v15 = ((((v7 + v8) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v16 = ((((v7 + v9) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v17 = v7 + v10;
    v49 = vld2q_dup_f32(v13);
    v49.val[0].i32[1] = *v14;
    v49.val[1].i32[1] = v14[1];
    v49.val[0].i32[2] = *v15;
    v49.val[1].i32[2] = v15[1];
    v49.val[0].i32[3] = *v16;
    v49.val[1].i32[3] = v16[1];
    v18 = (((v17 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v19 = ((((v17 + a4) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v20 = ((((v17 + v8) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v21 = ((((v17 + v9) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v22 = v17 + v10;
    v51 = vld2q_dup_f32(v18);
    v51.val[0].i32[1] = *v19;
    v51.val[1].i32[1] = v19[1];
    v51.val[0].i32[2] = *v20;
    v51.val[1].i32[2] = v20[1];
    v51.val[0].i32[3] = *v21;
    v51.val[1].i32[3] = v21[1];
    v23 = *a5++;
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = vsubq_s8(v6, v24);
    v27 = vsubq_s8(v6, v25);
    v28 = (((v22 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v29 = ((((v22 + a4) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v30 = ((((v22 + v8) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v31 = ((((v22 + v9) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v32 = v22 + v10;
    v53 = vld2q_dup_f32(v28);
    v53.val[0].i32[1] = *v29;
    v53.val[1].i32[1] = v29[1];
    v53.val[0].i32[2] = *v30;
    v53.val[1].i32[2] = v30[1];
    v53.val[0].i32[3] = *v31;
    v53.val[1].i32[3] = v31[1];
    v33 = (((v32 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v34 = ((((v32 + a4) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v35 = ((((v32 + v8) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v36 = ((((v32 + v9) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v7 = v32 + v10;
    v54 = vld2q_dup_f32(v33);
    v54.val[0].i32[1] = *v34;
    v54.val[1].i32[1] = v34[1];
    v54.val[0].i32[2] = *v35;
    v54.val[1].i32[2] = v35[1];
    v54.val[0].i32[3] = *v36;
    v54.val[1].i32[3] = v36[1];
    *result = vraddhn_high_s16(vraddhn_s16(vmulq_s16(v49.val[0], vmovl_u8(*v26.i8)), vmulq_s16(v49.val[1], vmovl_u8(*v24.i8))), vmulq_s16(v51.val[0], vmovl_high_u8(v26)), vmulq_s16(v51.val[1], vmovl_high_u8(v24)));
    v37 = (result + a6);
    *v37 = vraddhn_high_s16(vraddhn_s16(vmulq_s16(v53.val[0], vmovl_u8(*v27.i8)), vmulq_s16(v53.val[1], vmovl_u8(*v25.i8))), vmulq_s16(v54.val[0], vmovl_high_u8(v27)), vmulq_s16(v54.val[1], vmovl_high_u8(v25)));
    result = (v37 + a6);
  }

  while (!((v11 < 0) ^ v12 | (v11 == 0)));
  if (v11 < 0 == v12)
  {
LABEL_5:
    v38 = (((v7 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v39 = ((((v7 + a4) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v40 = ((((v7 + v8) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v41 = ((((v7 + v9) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v42 = v7 + v10;
    v50 = vld2q_dup_f32(v38);
    v50.val[0].i32[1] = *v39;
    v50.val[1].i32[1] = v39[1];
    v50.val[0].i32[2] = *v40;
    v50.val[1].i32[2] = v40[1];
    v50.val[0].i32[3] = *v41;
    v50.val[1].i32[3] = v41[1];
    v43 = (((v42 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v44 = ((((v42 + a4) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v45 = ((((v42 + v8) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v46 = ((((v42 + v9) >> 14) & 0xFFFFFFFFFFFFFFFCLL) + a2);
    v52 = vld2q_dup_f32(v43);
    v52.val[0].i32[1] = *v44;
    v52.val[1].i32[1] = v44[1];
    v52.val[0].i32[2] = *v45;
    v52.val[1].i32[2] = v45[1];
    v52.val[0].i32[3] = *v46;
    v52.val[1].i32[3] = v46[1];
    v47 = vzip1q_s8(*a5, *a5);
    v48 = vsubq_s8(v6, v47);
    *result = vraddhn_high_s16(vraddhn_s16(vmulq_s16(v50.val[0], vmovl_u8(*v48.i8)), vmulq_s16(v50.val[1], vmovl_u8(*v47.i8))), vmulq_s16(v52.val[0], vmovl_high_u8(v48)), vmulq_s16(v52.val[1], vmovl_high_u8(v47)));
    return (result + a6);
  }

  return result;
}

int8x16_t *BilinearFilterH_vperm2_neon64(int8x16_t *result, uint64_t a2, int a3, unsigned int *a4, int8x16_t *a5, int8x16_t *a6, uint64_t a7)
{
  v7.i64[0] = 0x1010101010101010;
  v7.i64[1] = 0x1010101010101010;
  do
  {
    v8 = __OFSUB__(a3, 16);
    a3 -= 16;
    v9 = *a5++;
    v10 = vsubq_s8(v7, v9);
    v11 = vzip1q_s8(v10, v9);
    v12 = vzip2q_s8(v10, v9);
    v13 = a4[2];
    v14 = a4[3];
    v15 = *a4;
    v16 = a4[1];
    a4 += 4;
    v17 = a6[3];
    v18 = a6[2];
    v19 = a6[1];
    v20 = *a6;
    a6 += 4;
    *result = vrshrn_high_n_s16(vrshrn_n_s16(vpaddq_s16(vmulq_s16(vmovl_u8(*v11.i8), vqtbl1q_s8(*(a2 + v15), v20)), vmulq_s16(vmovl_high_u8(v11), vqtbl1q_s8(*(a2 + v16), v19))), 8uLL), vpaddq_s16(vmulq_s16(vmovl_u8(*v12.i8), vqtbl1q_s8(*(a2 + v13), v18)), vmulq_s16(vmovl_high_u8(v12), vqtbl1q_s8(*(a2 + v14), v17))), 8uLL);
    result = (result + a7);
  }

  while (!((a3 < 0) ^ v8 | (a3 == 0)));
  return result;
}

int8x16_t *BilinearFilterH_chroma_vperm2_neon64(int8x16_t *result, uint64_t a2, int a3, unsigned int *a4, int8x16_t *a5, int8x16_t *a6, uint64_t a7)
{
  v7.i64[0] = 0x1010101010101010;
  v7.i64[1] = 0x1010101010101010;
  v8 = a2 + 16;
  do
  {
    v9 = __OFSUB__(a3, 8);
    a3 -= 8;
    v10 = *a5++;
    v11 = vsubq_s8(v7, v10);
    v12 = vmovl_u8(*v11.i8);
    v13 = vmovl_u8(*v10.i8);
    v14 = vmovl_high_u8(v11);
    v15 = vmovl_high_u8(v10);
    v16 = *a4;
    v17 = a4[1];
    a4 += 2;
    v18 = a6[3];
    v19 = a6[2];
    v20 = a6[1];
    v21 = *a6;
    a6 += 4;
    v22.val[0] = *(a2 + v16);
    v22.val[1] = *(v8 + v16);
    v23.val[0] = *(a2 + v17);
    v23.val[1] = *(v8 + v17);
    *result = vraddhn_high_s16(vraddhn_s16(vmulq_s16(vqtbl2q_s8(v22, v21), v12), vmulq_s16(vqtbl2q_s8(v22, v20), v13)), vmulq_s16(vqtbl2q_s8(v23, v19), v14), vmulq_s16(vqtbl2q_s8(v23, v18), v15));
    result = (result + a7);
  }

  while (!((a3 < 0) ^ v9 | (a3 == 0)));
  return result;
}

void ScaleBilinear_swift_neon(uint64_t a1, int *a2, int a3, int a4, uint64_t *a5, unsigned int *a6, int a7, int a8, __int128 *a9)
{
  v10 = a7;
  v17 = a7 | a3;
  v18 = *a1;
  v19 = *a2;
  v20 = *a5;
  v21 = *a6;
  if ((v17 & 0xF) != 0 || (v22 = (v10 << 16) / a3, v22 > 0x20000))
  {
    v35 = a9[3];
    v109 = a9[2];
    v110 = v35;
    v36 = a9[5];
    v111 = a9[4];
    v112 = v36;
    v37 = a9[1];
    v107 = *a9;
    v108 = v37;
    v38 = v18;
    v39 = v10;
    ScalePlaneBilinear(0, a4, v38, v19, a3, a4, v20, v21, v10, a8, BilinearFilterH_swift_neon, &v107);
    v40 = *(a1 + 8);
    v41 = a2[1];
    v42 = a5[1];
    v43 = a6[1];
    v44 = a9[3];
    v109 = a9[2];
    v110 = v44;
    v45 = a9[5];
    v111 = a9[4];
    v112 = v45;
    v46 = a9[1];
    v107 = *a9;
    v108 = v46;
    ScalePlaneBilinear(1, a4 >> 1, v40, v41, a3 >> 1, a4 >> 1, v42, v43, v39 >> 1, a8 >> 1, BilinearFilterH_swift_chroma_neon, &v107);
    return;
  }

  v92 = *a5;
  v93 = *a2;
  v23 = *(a9 + 1);
  v24 = *(a9 + 4);
  v25 = *(a9 + 7);
  v26 = *(a9 + 10);
  v106 = v10;
  v103 = v26;
  if (a3 < 1)
  {
    v32 = *(a9 + 1);
    if (a3 <= -16)
    {
      goto LABEL_15;
    }

    v33 = *a6;
    v34 = 0;
    v30 = *(a9 + 7);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = *(a9 + 7);
    do
    {
      v31 = HIWORD(v28);
      v24->i8[v27] = v28 >> 12;
      if ((v27 & 3) == 0)
      {
        *v30++ = 2 * v31;
        v29 = HIWORD(v28);
      }

      v28 += v22;
      v26->i32[v27++] = 33686018 * (v31 - v29) + 50462976;
    }

    while (a3 != v27);
    v32 = v23;
    v33 = v21;
    v34 = a3;
  }

  v47 = a3 + 16;
  if (a3 + 16 <= (v34 | 4))
  {
    v47 = v34 | 4;
  }

  bzero(v30, ((v47 + ~v34) & 0xFFFFFFFC) + 4);
  v10 = v106;
  v21 = v33;
LABEL_15:
  v94 = a1;
  v98 = a8;
  v99 = a4;
  v104 = a3;
  if (a4 >= 1)
  {
    v48 = v32;
    v49 = 0;
    v50 = &v32->i16[v10];
    v51 = a4;
    v52 = (v98 << 16) / a4;
    do
    {
      v53 = HIWORD(v49);
      v54 = v49 >> 12;
      v49 += v52;
      v55 = v53 * v21;
      if (v98 - 1 >= v53 + 1)
      {
        v56 = v53 + 1;
      }

      else
      {
        v56 = v98 - 1;
      }

      v57 = v21;
      BilinearFilterV_swift_neon(v48, (v92 + v55), (v92 + (v56 * v21)), v10, v54);
      *v50 = *(v50 - 1);
      BilinearFilterH_vperm2_neon64(v18, v48, v104, v25, v24, v103, 16);
      v21 = v57;
      v10 = v106;
      v18 = (v18 + v93);
      --v51;
    }

    while (v51);
  }

  v58 = v99 >> 1;
  v59 = *(v94 + 8);
  v60 = a2[1];
  v61 = (v104 >> 1);
  v62 = a5[1];
  v63 = a6[1];
  v64 = *(a9 + 1);
  v65 = *(a9 + 7);
  v66 = *(a9 + 10);
  if (v61 >= 1)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = v10 << 15;
    v72 = *(a9 + 4);
    v73 = &v72->i8[1];
    v74 = *(a9 + 7);
    v75 = v71 / v61;
    do
    {
      v76 = HIWORD(v69);
      v77 = v69 >> 12;
      *v73 = v77;
      *(v73 - 1) = v77;
      if ((v68 & 3) == 0)
      {
        *v74++ = 4 * v76;
        v70 = HIWORD(v69);
      }

      v69 += v75;
      v78 = 67372036 * (v76 - v70);
      v79 = v67 & 0x7FFFFFF8 | v68 & 3;
      v66->i32[v79] = v78 + 50462976;
      v66->i32[v79 | 4] = v78 + 117835012;
      ++v68;
      v67 += 2;
      v73 += 2;
    }

    while (v61 != v68);
    v80 = v62;
    v81 = v104 >> 1;
    goto LABEL_29;
  }

  v72 = *(a9 + 4);
  v80 = a5[1];
  if (v61 > -16)
  {
    v81 = 0;
    v74 = *(a9 + 7);
LABEL_29:
    v82 = v61 + 16;
    if (v61 + 16 <= v81 + 4)
    {
      v82 = v81 + 4;
    }

    bzero(v74, ((v82 + ~v81) & 0xFFFFFFFC) + 4);
    v10 = v106;
  }

  v105 = v104 >> 1;
  v102 = v65;
  if (v58 >= 1)
  {
    v83 = v60;
    v84 = v80;
    v85 = 0;
    v86 = &v64->i16[v10];
    v101 = v10 | 1;
    v100 = (v98 >> 1 << 16) / v58;
    do
    {
      v87 = HIWORD(v85);
      v88 = v85 >> 12;
      v85 += v100;
      v89 = v87 * v63;
      v90 = v83;
      if ((v98 >> 1) - 1 >= v87 + 1)
      {
        v91 = v87 + 1;
      }

      else
      {
        v91 = (v98 >> 1) - 1;
      }

      BilinearFilterV_swift_neon(v64, (v84 + v89), (v84 + v91 * v63), v10, v88);
      *v86 = *(v86 - 2);
      v64->i16[v101] = *(v86 - 1);
      BilinearFilterH_chroma_vperm2_neon64(v59, v64, v105, v102, v72, v66, 16);
      v83 = v90;
      v10 = v106;
      v59 = (v59 + v90);
      --v58;
    }

    while (v58);
  }
}

uint64_t ScalePlaneBilinear(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, int a10, uint64_t (*a11)(uint64_t, uint16x8_t *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a12)
{
  v12 = a3;
  v74 = result;
  v13 = *(a12 + 8);
  v77 = *(a12 + 32);
  v14 = ((a9 << 16) / a5);
  if (a5 >= 1)
  {
    v15 = 0;
    v16 = (a5 + 15) & 0xFFFFFFF0;
    v17 = vdupq_n_s64(a5 - 1);
    v18 = xmmword_27775CC30;
    v19 = xmmword_27775CC40;
    v20 = xmmword_27775CC50;
    v21 = xmmword_27775CC60;
    v22 = xmmword_27775CC70;
    result = (5 * v14);
    v23 = xmmword_27775CC80;
    v24 = xmmword_27775BCE0;
    v25 = xmmword_27775BCD0;
    v26 = vdupq_n_s64(0x10uLL);
    v27 = (v77 + 7);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v17, v25));
      if (vuzp1_s8(vuzp1_s16(v28, *v17.i8), *v17.i8).u8[0])
      {
        *(v27 - 7) = v15 >> 12;
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v17), *&v17).i8[1])
      {
        *(v27 - 6) = (v14 + v15) >> 12;
      }

      if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v24))), *&v17).i8[2])
      {
        *(v27 - 5) = (2 * v14 + v15) >> 12;
        *(v27 - 4) = (3 * v14 + v15) >> 12;
      }

      v29 = vmovn_s64(vcgeq_u64(v17, v23));
      if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i32[1])
      {
        *(v27 - 3) = (4 * v14 + v15) >> 12;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i8[5])
      {
        *(v27 - 2) = (5 * v14 + v15) >> 12;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v22)))).i8[6])
      {
        *(v27 - 1) = (6 * v14 + v15) >> 12;
        *v27 = (7 * v14 + v15) >> 12;
      }

      v30 = vmovn_s64(vcgeq_u64(v17, v21));
      if (vuzp1_s8(vuzp1_s16(v30, *v17.i8), *v17.i8).u8[0])
      {
        v27[1] = (8 * v14 + v15) >> 12;
      }

      if (vuzp1_s8(vuzp1_s16(v30, *&v17), *&v17).i8[1])
      {
        v27[2] = (9 * v14 + v15) >> 12;
      }

      if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v20))), *&v17).i8[2])
      {
        v27[3] = (10 * v14 + v15) >> 12;
        v27[4] = (11 * v14 + v15) >> 12;
      }

      v31 = vmovn_s64(vcgeq_u64(v17, v19));
      if (vuzp1_s8(*&v17, vuzp1_s16(v31, *&v17)).i32[1])
      {
        v27[5] = (12 * v14 + v15) >> 12;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(v31, *&v17)).i8[5])
      {
        v27[6] = (13 * v14 + v15) >> 12;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18)))).i8[6])
      {
        v27[7] = (14 * v14 + v15) >> 12;
        v27[8] = (15 * v14 + v15) >> 12;
      }

      v23 = vaddq_s64(v23, v26);
      v24 = vaddq_s64(v24, v26);
      v25 = vaddq_s64(v25, v26);
      v22 = vaddq_s64(v22, v26);
      v21 = vaddq_s64(v21, v26);
      v20 = vaddq_s64(v20, v26);
      v15 += 16 * v14;
      v19 = vaddq_s64(v19, v26);
      v27 += 16;
      v18 = vaddq_s64(v18, v26);
      v16 -= 16;
    }

    while (v16);
  }

  if (a2 >= 1)
  {
    v32 = 0;
    v33 = 0;
    v73 = (a9 << v74) & 0xFFFFFFF0;
    v69 = a5 & 7;
    v34 = a9 - 1;
    v35 = a5;
    v62 = a5 & 0xF;
    v66 = (a5 & 0xFFFFFFF0);
    v72 = a4;
    v67 = a7 + v73;
    v68 = &v13->i16[2 * a9];
    v65 = a5 - (a5 & 0xFFFFFFF8);
    v71 = (a10 << 16) / a6;
    v36 = a3 + 2 * (a5 & 0xFFFFFFF8) + 1;
    v64 = 8 * v14 * (a5 >> 3);
    v61 = 16 * v14 * (a5 >> 4);
    v70 = a5 & 0xFFFFFFF8;
    v63 = (v77 + (a5 & 0xFFFFFFF8));
    do
    {
      v79 = v32;
      v80 = v12;
      v37 = HIWORD(v33);
      if (a10 - 1 >= (HIWORD(v33) + 1))
      {
        v38 = v37 + 1;
      }

      else
      {
        v38 = a10 - 1;
      }

      v39 = v33 >> 12;
      BilinearFilterV_swift_neon(v13, (a7 + v37 * a8), (a7 + a8 * v38), v73, v33 >> 12);
      if (((a9 << v74) & 0xF) != 0)
      {
        v40 = (v67 + a8 * v38);
        v41 = &v13->i16[v73];
        v42 = (a9 << v74) & 0xF;
        v43 = (v67 + v37 * a8);
        do
        {
          v44 = *v43++;
          v45 = (16 - v39) * v44;
          v46 = *v40++;
          *v41++ = v45 + v39 * v46;
          --v42;
        }

        while (v42);
      }

      if (v74)
      {
        *v68 = *(v68 - 2);
        v13->i16[(2 * a9) | 1] = *(v68 - 1);
        v47 = v80;
        result = a11(v80, v13, v70, v14, v77, 16);
        if (v69)
        {
          v48 = v64;
          v49 = v63;
          v50 = v36;
          v51 = v65;
          do
          {
            v52 = v48 >> 16;
            if (v48 >> 16 >= v34)
            {
              v53 = a9 - 1;
            }

            else
            {
              v53 = v48 >> 16;
            }

            if (v52 + 1 < v34)
            {
              v54 = v52 + 1;
            }

            else
            {
              v54 = a9 - 1;
            }

            v55 = *v49++;
            *(v50 - 1) = (v13->i16[2 * v54] * v55 + (16 - v55) * v13->i16[2 * v53] + 128) >> 8;
            *v50 = (v13->i16[2 * v54 + 1] * v55 + (16 - v55) * v13->i16[2 * v53 + 1] + 128) >> 8;
            v50 += 2;
            v48 += v14;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        v13->i16[a9] = v13->i16[a9 - 1];
        v47 = v80;
        result = a11(v80, v13, v66, v14, v77, 16);
        if (v62)
        {
          v56 = v61;
          v57 = v66;
          do
          {
            v58 = v56 >> 16;
            if (v56 >> 16 >= v34)
            {
              v59 = a9 - 1;
            }

            else
            {
              v59 = v56 >> 16;
            }

            if (v58 + 1 < v34)
            {
              v60 = v58 + 1;
            }

            else
            {
              v60 = a9 - 1;
            }

            *(v80 + v57) = (v13->i16[v60] * *(v77 + v57) + (16 - *(v77 + v57)) * v13->i16[v59] + 128) >> 8;
            ++v57;
            v56 += v14;
          }

          while (v35 != v57);
        }
      }

      v33 += v71;
      v12 = v47 + v72;
      v32 = v79 + 1;
      v36 += v72;
    }

    while (v79 + 1 != a2);
  }

  return result;
}

unsigned int *GetDetiledResolution(unsigned int *result, unsigned int *a2, int a3, int a4, int a5)
{
  if (a5 == 2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (a5 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 8;
  }

  if (a5 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 4;
  }

  *result = v5 + a3;
  *a2 = a4 + 4;
  v8 = *result + 30;
  if (*result >= -15)
  {
    v8 = *result + 15;
  }

  *result = v8 & 0xFFFFFFF0;
  v9 = *a2 + 14;
  if (*a2 >= -7)
  {
    v9 = *a2 + 7;
  }

  *a2 = v9 & 0xFFFFFFF8;
  result[1] = v6 + a3;
  a2[1] = v7 + (a4 >> 1);
  v10 = result[1];
  v12 = v10 + 15;
  v11 = v10 < -15;
  v13 = v10 + 30;
  if (!v11)
  {
    v13 = v12;
  }

  result[1] = v13 & 0xFFFFFFF0;
  v14 = a2[1];
  v15 = v14 + 7;
  v11 = v14 < -7;
  v16 = v14 + 14;
  if (!v11)
  {
    v16 = v15;
  }

  a2[1] = v16 & 0xFFFFFFF8;
  return result;
}

uint64_t Detile420(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, int a5, int a6, _DWORD *a7, int a8, uint64_t a9)
{
  GetDetiledResolution(a2, a3, a5, a6, a8);
  v11 = 0;
  for (i = 1; ; i = 0)
  {
    v13 = i;
    v14 = *(a1 + 8 * v11);
    if (v14)
    {
      v15 = *(a4 + 8 * v11);
      if (v15)
      {
        v28 = a3[v11];
        if (v28 >= 1)
        {
          break;
        }
      }
    }

LABEL_11:
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = a2[v11];
  v26 = a1;
  v25 = i;
  while (1)
  {
    v29 = v16;
    if (v18 >= 1)
    {
      break;
    }

LABEL_10:
    v16 = v29 + 8;
    ++v17;
    v14 += 8 * v18;
    a1 = v26;
    v13 = v25;
    if (v29 + 8 >= v28)
    {
      goto LABEL_11;
    }
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    result = 0xFFFFFFFFLL;
    v22 = *(*&a7[2 * v11 + 4] + a7[v11 + 2] * (v17 >> *a7) + (4 * (v20 << *a7)) + 4 * (v17 & ~(-1 << *a7))) & 0xFFFFFFF;
    if ((v22 + 128) > *(a9 + 4 * v11))
    {
      return result;
    }

    DetileRow(v14 + v19, v18, v15 + v22, 1);
    v19 += 16;
    ++v20;
    if (v19 >= v18)
    {
      goto LABEL_10;
    }
  }
}

uint64_t BilinearScaleInterchangeBuffer(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _OWORD *a10, __IOSurface *a11, __IOSurface *a12)
{
  v107 = *MEMORY[0x277D85DE8];
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  interchange_init_functions();
  v89 = 1;
  v90 = 1;
  v92 = 1;
  v91 = 2;
  v93 = (a7 + 31) & 0xFFFFFFE0;
  v94 = v93;
  v99 = (a8 + 31) & 0xFFFFFFE0;
  v100 = ((a8 >> 1) + 15) & 0xFFFFFFF0;
  Subsampling = IOSurfaceGetSubsampling(a11);
  if (Subsampling != kIOSurfaceSubsampling420)
  {
    v77 = Subsampling;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "BilinearScaleInterchangeBuffer";
    *&buf[12] = 1024;
    *&buf[14] = v77;
    v78 = MEMORY[0x277D86220];
    v79 = "AppleAVD: ERROR: %s(): linear_orig subsampling format is not 4:2:0 (saw %d)\n";
    goto LABEL_30;
  }

  v84 = a5;
  v85 = a3;
  v86 = a6;
  v87 = a4;
  v20 = 0;
  v21 = &v94;
  v22 = &v99;
  v23 = &v92;
  v24 = &v90;
  v25 = 1;
  do
  {
    v88 = v21;
    v26 = v25;
    IOSurfaceGetExtendedPixelsOfPlane();
    v27 = a2;
    BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a11, v20);
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a11, v20);
    v31 = IOSurfaceGetWidthOfPlane(a11, v20) * *v23;
    v32 = IOSurfaceGetHeightOfPlane(a11, v20) * *v24;
    v33 = *v88;
    if (v31 < v33 || (v34 = *v22, v32 < v34))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v81 = *(&v99 + v20);
      *buf = 136316418;
      *&buf[4] = "BilinearScaleInterchangeBuffer";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      *&buf[18] = 1024;
      *&buf[20] = v33;
      *&buf[24] = 1024;
      *&buf[26] = v81;
      *&buf[30] = 2048;
      *v96 = v31;
      *&v96[8] = 2048;
      *&v96[10] = v32;
      v78 = MEMORY[0x277D86220];
      v79 = "AppleAVD: ERROR: %s(): IOSurface is too small for detiling (plane %d) - detiled dimensions: [%d x %d], IOSurface: [%zu x %zu]\n";
      goto LABEL_33;
    }

    interchange_detile_plane(BaseAddressOfPlane, BytesPerRowOfPlane, BaseAddressOfCompressedTileDataRegionOfPlane, *v88, v34, v20);
    v25 = 0;
    v21 = &v93;
    v23 = &v91;
    v24 = &v89;
    v22 = &v100;
    v20 = 1;
    a2 = v27;
  }

  while ((v26 & 1) != 0);
  v105 = IOSurfaceGetBaseAddressOfPlane(a11, 0);
  v103 = IOSurfaceGetBaseAddressOfPlane(a12, 0);
  v101[0] = IOSurfaceGetBytesPerRowOfPlane(a11, 0);
  v102[0] = IOSurfaceGetBytesPerRowOfPlane(a12, 0);
  v106 = IOSurfaceGetBaseAddressOfPlane(a11, 1uLL);
  v104 = IOSurfaceGetBaseAddressOfPlane(a12, 1uLL);
  v101[1] = IOSurfaceGetBytesPerRowOfPlane(a11, 1uLL);
  v102[1] = IOSurfaceGetBytesPerRowOfPlane(a12, 1uLL);
  v35 = IOSurfaceGetBaseAddressOfPlane(a12, 0);
  SizeOfPlane = IOSurfaceGetSizeOfPlane();
  memset(v35, 128, SizeOfPlane);
  v37 = IOSurfaceGetBaseAddressOfPlane(a12, 1uLL);
  v38 = IOSurfaceGetSizeOfPlane();
  memset(v37, 128, v38);
  v39 = a10[3];
  *v96 = a10[2];
  *&v96[16] = v39;
  v40 = a10[5];
  v97 = a10[4];
  v98 = v40;
  v41 = a10[1];
  *buf = *a10;
  *&buf[16] = v41;
  ScaleBilinear_swift_neon(&v103, v102, v84, v86, &v105, v101, v85, v87, buf);
  v42 = &v94;
  v43 = &v99;
  v44 = 1;
  do
  {
    v45 = *v43;
    v46 = ((*v42 + 31) >> 5) - 1;
    v47 = v44 & 1;
    if (v44)
    {
      v48 = 31;
    }

    else
    {
      v48 = 15;
    }

    v49 = v45 + v48;
    if (v47)
    {
      v50 = 5;
    }

    else
    {
      v50 = 4;
    }

    v51 = v49 >> v50;
    v52 = 1 << -__clz(v46);
    if (v47)
    {
      v53 = 5;
    }

    else
    {
      v53 = 3;
    }

    v55 = v51 - 1;
    v54 = v55 == 0;
    v56 = 32 - __clz(v55);
    if (v54)
    {
      LOBYTE(v56) = 0;
    }

    if (v46)
    {
      v57 = v52;
    }

    else
    {
      v57 = 1;
    }

    v58 = (v57 << v56 << v53) + 127;
    BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    v60 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    memcpy(BaseAddressOfCompressedTileHeaderRegionOfPlane, v60, v58 & 0x1FFFFFF80);
    v44 = 0;
    v42 = &v93;
    v43 = &v100;
  }

  while (v47);
  v61 = IOSurfaceGetSubsampling(a12);
  if (v61 != kIOSurfaceSubsampling420)
  {
    v82 = v61;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "BilinearScaleInterchangeBuffer";
    *&buf[12] = 1024;
    *&buf[14] = v82;
    v78 = MEMORY[0x277D86220];
    v79 = "AppleAVD: ERROR: %s(): linear_scaled subsampling format is not 4:2:0 (saw %d)\n";
LABEL_30:
    v80 = 18;
LABEL_34:
    _os_log_impl(&dword_277606000, v78, OS_LOG_TYPE_DEFAULT, v79, buf, v80);
    return 0xFFFFFFFFLL;
  }

  v62 = 0;
  v63 = &v94;
  v64 = &v99;
  v65 = &v92;
  v66 = &v90;
  v67 = 1;
  while (1)
  {
    v68 = v67;
    IOSurfaceGetExtendedPixelsOfPlane();
    v69 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    v70 = IOSurfaceGetBaseAddressOfPlane(a12, v62);
    v71 = IOSurfaceGetBytesPerRowOfPlane(a12, v62);
    v72 = IOSurfaceGetWidthOfPlane(a12, v62) * *v65;
    v73 = IOSurfaceGetHeightOfPlane(a12, v62) * *v66;
    v74 = *v63;
    if (v72 < v74)
    {
      break;
    }

    v75 = *v64;
    if (v73 < v75)
    {
      break;
    }

    interchange_tile_plane(v69, v70, v71, v74, v75, v62);
    v67 = 0;
    result = 0;
    v63 = &v93;
    v65 = &v91;
    v66 = &v89;
    v64 = &v100;
    v62 = 1;
    if ((v68 & 1) == 0)
    {
      return result;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v83 = *(&v99 + v62);
    *buf = 136316418;
    *&buf[4] = "BilinearScaleInterchangeBuffer";
    *&buf[12] = 1024;
    *&buf[14] = v62;
    *&buf[18] = 1024;
    *&buf[20] = v74;
    *&buf[24] = 1024;
    *&buf[26] = v83;
    *&buf[30] = 2048;
    *v96 = v72;
    *&v96[8] = 2048;
    *&v96[10] = v73;
    v78 = MEMORY[0x277D86220];
    v79 = "AppleAVD: ERROR: %s(): IOSurface is too small for tiling (plane %d): detiled dimensions - [%d x %d], IOSurface: [%zu x %zu]\n";
LABEL_33:
    v80 = 50;
    goto LABEL_34;
  }

  return 0xFFFFFFFFLL;
}

uint64_t BilinearScaling420(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10, _DWORD *a11, uint64_t a12, __int128 *a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v20 = a1;
  v60 = *MEMORY[0x277D85DE8];
  if (Detile420(a1, &v58, &v56, a5, a9, a10, a11, a14, a15))
  {
    return 0xFFFFFFFFLL;
  }

  v22 = v59;
  v24 = *a12;
  v23 = *(a12 + 8);
  v25 = *a12 + 4 * v58;
  v26 = 4;
  if (a14 == 2)
  {
    v27 = 5;
  }

  else
  {
    v27 = 4;
  }

  if (a14 != 2)
  {
    v26 = 8;
  }

  v28 = 1;
  if (a14 != 2)
  {
    v28 = 2;
  }

  v29 = v59 << v28;
  v30 = v20[1] + v26 + v29;
  v55[0] = *v20 + 4 * v58 + v27;
  v55[1] = v30;
  v54[0] = v25 + v27;
  v54[1] = &v23[v29 + v26];
  if (v56)
  {
    memset(v24, 128, v58 * v56);
    v23 = *(a12 + 8);
  }

  if (v57)
  {
    memset(v23, 128, v22 * v57);
  }

  v31 = a13[3];
  v53[2] = a13[2];
  v53[3] = v31;
  v32 = a13[5];
  v53[4] = a13[4];
  v53[5] = v32;
  v33 = a13[1];
  v53[0] = *a13;
  v53[1] = v33;
  v34 = &v58;
  ScaleBilinear_swift_neon(v54, &v58, a3, a4, v55, &v58, a7, a8, v53);
  v35 = 0;
  v36 = a11;
  v37 = &v56;
  v38 = 1;
  v39 = a12;
  while (1)
  {
    v40 = v38;
    v41 = v20[v35];
    if (v41)
    {
      v42 = *(v39 + 8 * v35);
      if (v42)
      {
        v51 = *v37;
        if (v51 >= 1)
        {
          break;
        }
      }
    }

LABEL_25:
    v38 = 0;
    v34 = &v59;
    v37 = &v57;
    v35 = 1;
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = 0;
  v44 = 0;
  v45 = *v34;
  v50 = v20;
  v49 = v40;
  while (1)
  {
    v52 = v43;
    if (v45 >= 1)
    {
      break;
    }

LABEL_24:
    v43 = v52 + 8;
    ++v44;
    v42 += 8 * v45;
    v20 = v50;
    v39 = a12;
    v40 = v49;
    if (v52 + 8 >= v51)
    {
      goto LABEL_25;
    }
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    result = 0xFFFFFFFFLL;
    v48 = *(*&a11[2 * v35 + 4] + a11[v35 + 2] * (v44 >> *v36) + (4 * (v47 << *v36)) + 4 * (v44 & ~(-1 << *v36))) & 0xFFFFFFF;
    if ((v48 + 128) > *(a16 + 4 * v35))
    {
      return result;
    }

    TileRow(v41 + v48, v42 + v46, v45, 1);
    v36 = a11;
    v46 += 16;
    ++v47;
    if (v46 >= v45)
    {
      goto LABEL_24;
    }
  }
}

uint64_t RVRAScaler(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12, __int128 *a13, uint64_t a14, uint64_t a15)
{
  DetileRow = DetileRow_neon;
  TileRow = TileRow_neon;
  v15 = *(a12 + 24);
  v21[0] = *(a12 + 8);
  v21[1] = v15;
  v22 = *(a12 + 40);
  v16 = a13[3];
  v20[2] = a13[2];
  v20[3] = v16;
  v17 = a13[5];
  v20[4] = a13[4];
  v20[5] = v17;
  v18 = a13[1];
  v20[0] = *a13;
  v20[1] = v18;
  return BilinearScaling420(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v21, a11, v20, *(a12 + 48), a14, a15);
}

unsigned __int8 *DetileRow_neon(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    do
    {
      v6 = &a1[16 * v4];
      v7 = &v6[a2];
      v8 = 4;
      do
      {
        v9 = *a3;
        v10 = *(a3 + 1);
        a3 += 32;
        *v6 = v9;
        v6 += v5;
        *v7 = v10;
        v7 += v5;
        --v8;
      }

      while (v8);
      ++v4;
    }

    while (v4 != a4);
  }

  return a3;
}

{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    do
    {
      v6 = &a1[16 * v4];
      v7 = &v6[a2];
      v8 = 4;
      do
      {
        v9 = *a3;
        v10 = *(a3 + 1);
        a3 += 32;
        *v6 = v9;
        v6 += v5;
        *v7 = v10;
        v7 += v5;
        --v8;
      }

      while (v8);
      ++v4;
    }

    while (v4 != a4);
  }

  return a3;
}

_OWORD *TileRow_neon(_OWORD *result, unsigned __int8 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a3;
    do
    {
      v6 = &a2[16 * v4];
      v7 = &v6[a3];
      v8 = 4;
      do
      {
        v9 = *v6;
        v6 += v5;
        v10 = *v7;
        v7 += v5;
        *result = v9;
        result[1] = v10;
        result += 2;
        --v8;
      }

      while (v8);
      ++v4;
    }

    while (v4 != a4);
  }

  return result;
}

{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a3;
    do
    {
      v6 = &a2[16 * v4];
      v7 = &v6[a3];
      v8 = 4;
      do
      {
        v9 = *v6;
        v6 += v5;
        v10 = *v7;
        v7 += v5;
        *result = v9;
        result[1] = v10;
        result += 2;
        --v8;
      }

      while (v8);
      ++v4;
    }

    while (v4 != a4);
  }

  return result;
}

CAHDec *createDahliaAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x4670uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecDahliaAvc::CAHDecDahliaAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecDahliaAvc::CAHDecDahliaAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288666190;
  *(v4 + 256) = a2;
  *(v4 + 456) = 952 * *(a2 + 7388) + 182056;
  *(v4 + 8) = 1832;
  *(v4 + 16) = xmmword_27775CC90;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 17856) = 0u;
  *(v4 + 17872) = 0u;
  *(v4 + 17888) = 0u;
  *(v4 + 17904) = 0u;
  *(v4 + 17920) = 0u;
  *(v4 + 17936) = 0u;
  *(v4 + 17952) = 0u;
  *(v4 + 17968) = 0u;
  *(v4 + 17984) = 0u;
  *(v4 + 18000) = 0u;
  *(v4 + 18016) = 0u;
  bzero((v4 + 560), 0x4360uLL);
  return a1;
}

void CAHDecDahliaAvc::~CAHDecDahliaAvc(CAHDecDahliaAvc *this)
{
  *this = &unk_288666190;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecDahliaAvc::~CAHDecDahliaAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecDahliaAvc::init(CAHDecDahliaAvc *this)
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

uint64_t CAHDecDahliaAvc::initPicture(CAHDecDahliaAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 952 * *(*(this + 32) + 7388) + 182056;
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
    *(this + 4459) = 0;
    *(this + 2237) = 0;
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

uint64_t CAHDecDahliaAvc::populateSlices(CAHDecDahliaAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 1832;
    v5 = a2;
    do
    {
      CAHDecDahliaAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 952;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecDahliaAvc::populateSliceRegisters(uint64_t a1, uint64_t a2, signed int a3)
{
  v5 = 0;
  v108 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 3500);
  v8 = *(v6 + 3504);
  v9 = *(v6 + 3192);
  v10 = *(v6 + 3184);
  v11 = *(v6 + 6952);
  v12 = *(v6 + 3208);
  v13 = *(v6 + 3200) + 1848 * a3;
  *(a2 + 4) = 0;
  v14 = 32 * (*(v13 + 1424) & 3);
  *(a2 + 4) = v14;
  if (*(v13 + 24) != 2)
  {
    v5 = (*(v13 + 63) & 0xF) << 11;
  }

  v15 = v5 | v14;
  *(a2 + 4) = v15;
  v93 = v10;
  if (*(v13 + 24) == 1)
  {
    v16 = (*(v13 + 64) & 0xF) << 7;
  }

  else
  {
    v16 = 0;
  }

  v18 = v16 | v15;
  *(a2 + 4) = v18;
  v94 = v7;
  if (*(v13 + 24) == 1)
  {
    v19 = (*(v13 + 61) == 0) << 15;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v18 & 0x7FFF7FE0;
  *(a2 + 4) = v20;
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

  *(a2 + 4) = v22 | v20 & 0xFFFFFFE0;
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
    if (!*(a1 + 17836))
    {
      *(a1 + 17896) = *(v12 + 13040 * a3 + 7264);
      *(a1 + 17888) = v24;
      *(a1 + 17836) = 1;
      *(a2 + 4) |= 0x40000u;
      v23 = *(v13 + 1832);
      if (!v23 || !*(a1 + 17836))
      {
        goto LABEL_20;
      }
    }

    v89 = *(v23 + 40);
    if (v89 == *(a1 + 17896))
    {
      goto LABEL_20;
    }

    *(a1 + 17896) = v89;
    *(a1 + 17888) = *(v23 + 32);
    v25 = 0x40000;
  }

  *(a2 + 4) |= v25;
LABEL_20:
  *(a2 + 920) = 0;
  v26 = *(a2 + 4);
  if (*(v13 + 24) == 1 && (v26 & 0x40000) != 0)
  {
    v28 = (a1 + 176 * *(*(v13 + 1832) + 32));
    v29 = v28[746];
    v30 = v28[748];
    v105 = v28[747];
    v106 = v30;
    v107 = v28[749];
    v31 = v28[742];
    v32 = v28[744];
    v101 = v28[743];
    v102 = v32;
    v103 = v28[745];
    v104 = v29;
    v33 = v28[740];
    *buf = v28[739];
    *&buf[16] = v33;
    v99 = v28[741];
    v100 = v31;
    *(a1 + 17836) = 1;
    if (*buf || *(&v106 + 1))
    {
      result = CAHDec::addToPatcherList(a1, buf, 952 * a3 + 2752, 0, 0xFFFFFFFFFLL, 8, 0xFFFFFFF, 4);
      if (result)
      {
        return result;
      }
    }

    v26 = *(a2 + 4);
  }

  v91 = (v9 + 604 * v8);
  v92 = a1;
  *(a2 + 4) = v26 & 0x77FFFF | 0x2D000000;
  v35 = *(v13 + 24);
  if (v35 <= 1)
  {
    v36 = v6 + 6760;
    v37 = v12 + 13040 * a3;
    if (*(v37 + 13032))
    {
      v38 = 0;
      v39 = a2 + 8;
      v40 = v37 + 1416;
      v41 = MEMORY[0x277D86220];
      do
      {
        v42 = (16 * (v38 & 0xF)) | 0x2DC00000;
        *(v39 + 4 * v38) = v42;
        if (v11)
        {
          v43 = 0;
          while (*(*(v36 + 8 * v43) + 12) != *(v40 + 176 * v38 + 12))
          {
            if (v11 == ++v43)
            {
              goto LABEL_35;
            }
          }

          *(v39 + 4 * v38) = v43 & 0xF | v42;
        }

        else
        {
LABEL_35:
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
      v45 = 0;
      v46 = a2 + 8;
      v47 = v37 + 7224;
      v48 = MEMORY[0x277D86220];
      do
      {
        v49 = (16 * (v45 & 0xF)) | 0x2DC00100;
        *(v46 + 4 * v38) = v49;
        if (v11)
        {
          v50 = 0;
          while (*(*(v36 + 8 * v50) + 12) != *(v47 + 176 * v45 + 12))
          {
            if (v11 == ++v50)
            {
              goto LABEL_48;
            }
          }

          *(v46 + 4 * v38) = v50 & 0xF | v49;
        }

        else
        {
LABEL_48:
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(v47 + 176 * v45 + 32);
            *buf = 67109632;
            *&buf[4] = v38;
            *&buf[8] = 1024;
            *&buf[10] = v51;
            *&buf[14] = 1024;
            *&buf[16] = v11;
            _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v38) = v38 + 1;
        ++v45;
      }

      while (v45 < *(v37 + 13036));
    }
  }

  *(a2 + 136) = 0x2DD0000000000000;
  v52 = 87;
  if (*(v13 + 24) == 1)
  {
    v52 = 88;
  }

  v53 = ((v91[v52] & 3) << 6) | 0x2DD00000;
  *(a2 + 140) = v53;
  v54 = v53 & 0xFFFFFFC7 | (8 * (*(v13 + 376) & 7));
  *(a2 + 140) = v54;
  v55 = *(v93 + 2224 * v94 + 4);
  if (*(v93 + 2224 * v94 + 4))
  {
    v55 = *(v13 + 377) & 7;
  }

  v56 = v55 | v54;
  *(a2 + 140) = v56;
  v57 = *(v13 + 24);
  if (v57 != 1)
  {
    goto LABEL_137;
  }

  v58 = v91[88];
  if (v58 != 2)
  {
    goto LABEL_60;
  }

  *(a2 + 140) = v56 & 0x2DD000C0 | 0x2D;
  v57 = *(v13 + 24);
  if (v57 != 1)
  {
LABEL_137:
    if (v57 || !v91[87])
    {
      goto LABEL_80;
    }

LABEL_64:
    v59 = 0;
    v60 = 0;
    v61 = a2 + 144;
    v62 = a2 + 528;
    do
    {
      if (*(v13 + 378 + v60))
      {
        v63 = ((v60 & 0xF) << 9) | 0x2DE04000;
        *(v61 + 4 * v59) = v63;
        *(v61 + 4 * v59) = v63 | *(v13 + 394 + 2 * v60) & 0x1FF;
        *(v62 + 4 * v59) = 770703360;
        *(v62 + 4 * v59++) = *(v13 + 426 + 2 * v60) | 0x2DF00000;
      }

      if (*(v13 + 458 + v60))
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = (((v60 & 0xF) << 9) | (v64 << 14)) + 769687552;
          *(v61 + 4 * v59) = v67;
          *(v61 + 4 * v59) = v67 | *(v13 + 474 + 4 * v60 + 2 * v64) & 0x1FF;
          *(v62 + 4 * v59) = 770703360;
          *(v62 + 4 * v59++) = *(v13 + 538 + 4 * v60 + 2 * v64) | 0x2DF00000;
          v64 = 1;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
      }

      ++v60;
    }

    while (v60 <= *(v13 + 63));
    if (*(v13 + 24) == 1)
    {
      v68 = 0;
      do
      {
        if (*(v13 + 602 + v68))
        {
          v69 = ((v68 & 0xF) << 9) + 769679360;
          *(v61 + 4 * v59) = v69;
          *(v61 + 4 * v59) = v69 | *(v13 + 618 + 2 * v68) & 0x1FF;
          *(v62 + 4 * v59) = 770703360;
          *(v62 + 4 * v59++) = *(v13 + 650 + 2 * v68) | 0x2DF00000;
        }

        if (*(v13 + 682 + v68))
        {
          v70 = 0;
          v71 = 1;
          do
          {
            v72 = v71;
            v73 = (((v68 & 0xF) << 9) | (v70 << 14)) + 769695744;
            *(v61 + 4 * v59) = v73;
            *(v61 + 4 * v59) = v73 | *(v13 + 698 + 4 * v68 + 2 * v70) & 0x1FF;
            *(v62 + 4 * v59) = 770703360;
            *(v62 + 4 * v59++) = *(v13 + 762 + 4 * v68 + 2 * v70) | 0x2DF00000;
            v70 = 1;
            v71 = 0;
          }

          while ((v72 & 1) != 0);
        }

        ++v68;
      }

      while (v68 <= *(v13 + 64));
    }

    *(a2 + 136) = v59;
    goto LABEL_80;
  }

  v58 = v91[88];
LABEL_60:
  if (v58 == 1)
  {
    goto LABEL_64;
  }

LABEL_80:
  *(a2 + 912) = 0;
  *(a2 + 912) = (((v91[89] + *(v13 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  *(a2 + 916) = 0;
  v74 = (*(v13 + 1428) == 0) << 17;
  *(a2 + 916) = v74;
  if (*(v13 + 1428) != 1)
  {
    v75 = v74 | 0x10000;
    *(a2 + 916) = v75;
    v76 = v75 | ((*(v13 + 1429) & 0xF) << 8);
    *(a2 + 916) = v76;
    v74 = v76 | ((*(v13 + 1430) & 0xF) << 12);
  }

  *(a2 + 916) = v74 | 0x2DA00000;
  v77 = *(v13 + 1436);
  if (v91[3])
  {
    v78 = 0;
    if ((v77 & 7) != 0)
    {
      *(v13 + 1436) = (v77 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v78 = *(v13 + 1436) & 7;
  }

  *(a2 + 924) = (v78 << 15) | 0x2D800000;
  v79 = *(v92 + 256);
  v80 = *(v79 + 626);
  v96 = 0;
  v97 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v79, a3, &v97, &v96))
  {
    return 0xFFFFFFFFLL;
  }

  v81 = 952 * a3;
  v82 = v97;
  if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
  {
    goto LABEL_96;
  }

  v83 = v96;
  if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1633;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v83 = v96;
  }

  result = CAHDec::addToPatcherList(v92, v82, v81 + 2756, v83, 0xFFFFFFFFFLL, 32, 15, 4);
  if (result)
  {
    return result;
  }

  v82 = v97;
  if (!*v97)
  {
LABEL_96:
    if (!*(v82 + 152) && !*(v82 + 156))
    {
LABEL_101:
      v85 = *(v13 + 16) - (*(v13 + 1436) >> 3);
      *(a2 + 936) = v85;
      if (*(v79 + 590) != 1)
      {
        return 0;
      }

      *(a2 + 944) = 0;
      v86 = *(v13 + 1840);
      if (*(v79 + 605))
      {
        result = 0;
        if (v85 < v86)
        {
          v86 = v85;
        }

        if (v78)
        {
          v87 = v86 == 0;
        }

        else
        {
          v87 = 0;
        }

        if (v87)
        {
          v86 = 1;
        }

        v88 = v80 & 0x10000 | v86;
      }

      else
      {
        v90 = 0;
        if ((v80 & 0x200000) != 0)
        {
          if (v78 && !*(v13 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "int CAHDecDahliaAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v85 = *(a2 + 936);
              v90 = *(a2 + 948) & 0x1F0000;
            }

            else
            {
              v90 = 0;
            }

            v86 = 1;
          }
        }

        else if (v78)
        {
          ++v86;
        }

        result = 0;
        if (v86 >= v85)
        {
          v86 = v85;
        }

        v88 = v90 & 0xFFDFFFFF | (v86 << 22) | v80 | (((v80 >> 20) & 1) << 21);
      }

      *(a2 + 948) = v88;
      return result;
    }
  }

  v84 = v96;
  if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1634;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v84 = v96;
  }

  result = CAHDec::addToPatcherList(v92, v82, v81 + 2764, v84, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
    goto LABEL_101;
  }

  return result;
}

uint64_t CAHDecDahliaAvc::updateCommonRegisters(CAHDecDahliaAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecDahliaAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
    v12 = &dword_27775CCA0;
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
    v31 = a6 + (dword_27775CCB8[v26] << 6);
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

void CAHDecDahliaAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
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
            v4[9] = unk_27775CD20;
            v10 = xmmword_27775CD30;
            v11 = unk_27775CD40;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775CCE0;
            v10 = xmmword_27775CCF0;
            v11 = unk_27775CD00;
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

void CAHDecDahliaAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
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
              *(a3 + v4 - 151) = unk_27775CD20;
              v9 = xmmword_27775CD30;
              v10 = unk_27775CD40;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775CCE0;
              v9 = xmmword_27775CCF0;
              v10 = unk_27775CD00;
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

uint64_t CAHDecDahliaAvc::populateSequenceRegisters(CAHDecDahliaAvc *this)
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

    CAHDecDahliaAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecDahliaAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 720, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecDahliaAvc::populatePictureRegisters(CAHDecDahliaAvc *this)
{
  v244 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v7 = *(v2 + 2088);
  v224 = *(v2 + 3020);
  v227 = *(v2 + 3040);
  v229 = *(v2 + 2644);
  v8 = *(v2 + 8);
  v9 = *(v2 + 6904);
  v243[8] = *(v2 + 6888);
  v243[9] = v9;
  v10 = *(v2 + 6936);
  v243[10] = *(v2 + 6920);
  v243[11] = v10;
  v11 = *(v2 + 6840);
  v243[4] = *(v2 + 6824);
  v243[5] = v11;
  v12 = *(v2 + 6872);
  v243[6] = *(v2 + 6856);
  v243[7] = v12;
  v13 = *(v2 + 6776);
  v243[0] = *(v2 + 6760);
  v243[1] = v13;
  v14 = *(v2 + 6808);
  v243[2] = *(v2 + 6792);
  v243[3] = v14;
  v225 = *(v2 + 6952);
  v15 = (*(*v2 + 184))(v2);
  v16 = *(this + 32);
  v226 = v7;
  if (v15)
  {
    v17 = *(v16 + 2756) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 33);
  v19 = v5 + 2224 * v3;
  v20 = *(v16 + 2675);
  v21 = *(v16 + 2674);
  if (!(v20 | v21))
  {
    goto LABEL_44;
  }

  v22 = *(v19 + 6);
  if (v22 <= *(v19 + 7))
  {
    LOWORD(v22) = *(v19 + 7);
  }

  v23 = (v22 + 9) & 0x1FE;
  if (v23 == 8)
  {
    v25 = v8;
    v29 = 1;
    v27 = 8;
    if (!*(v16 + 2675))
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v24 = *(v16 + 2672);
  v25 = v8;
  if (v23 != 12)
  {
    if (v23 == 10)
    {
      v26 = v24 == 0;
      if (v24)
      {
        v27 = 10;
      }

      else
      {
        v27 = 9;
      }

      v28 = 2;
      goto LABEL_18;
    }

    v27 = 27;
    v29 = 27;
    if (!v20)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (*(v19 + 4) && (v20 == 2 && v27 == 8 || v20 == 3 && (v27 - 9) <= 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v27;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v20;
      v30 = MEMORY[0x277D86220];
      v31 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v26 = v24 == 0;
  if (v24)
  {
    v27 = 12;
  }

  else
  {
    v27 = 11;
  }

  v28 = 4;
LABEL_18:
  if (v26)
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 + 1;
  }

  if (v20)
  {
    goto LABEL_26;
  }

LABEL_33:
  v8 = v25;
  if (v21 && (v21 == 3 && v29 - 9 < 2 || v29 <= 0x1A && ((1 << v29) & 0x4C00000) != 0 && v21 <= 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "populatePictureRegisters";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v29;
    WORD1(buf[2]) = 1024;
    HIDWORD(buf[2]) = v21;
    v30 = MEMORY[0x277D86220];
    v31 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
LABEL_41:
    v32 = buf;
    v33 = 24;
    goto LABEL_42;
  }

LABEL_44:
  v35 = (v6 + 604 * v4);
  *(v18 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v36 = 766517248;
  }

  else
  {
    v36 = 766509056;
  }

  if (v17)
  {
    v37 = 688;
  }

  else
  {
    v37 = 672;
  }

  if (v229)
  {
    v38 = 4160;
  }

  else
  {
    v38 = 64;
  }

  v39 = v38 & 0xFFFFFFF0 | ((v229 == 1) << 10) | v37 & 0xFFFFFFF0 | (4 * (v20 & 3)) | v21 & 3 | v36;
  *(v18 + 52) = v39;
  v40 = *(this + 32);
  v41 = v39 | ((v40[2652] & 1) << 19);
  *(v18 + 52) = v41;
  v42 = v41 & 0xFFFBFFFF | ((v40[2653] & 1) << 18);
  *(v18 + 52) = v42;
  *(v18 + 52) = v42 & 0xFFFDFFFF | ((v40[2654] & 1) << 17);
  *(v18 + 56) = 0x1000000;
  LODWORD(v40) = (16 * (*(v19 + 1558) & 0xFFF)) | 0xF;
  *(v18 + 60) = v40;
  v43 = v40 | (*(v19 + 1560) << 20) | 0xF0000;
  *(v18 + 64) = 0;
  *(v18 + 60) = v43;
  v44 = (*(v19 + 8) & 1) << 18;
  *(v18 + 68) = v44;
  v45 = v44 & 0xFFF7FFFF | ((v35[93] & 1) << 19);
  *(v18 + 68) = v45;
  v46 = v45 & 0xFFEFFFFF | ((v35[3] & 1) << 20);
  *(v18 + 68) = v46;
  *(v18 + 68) = v46 | ((**(*(this + 32) + 3200) != 5) << 21);
  LODWORD(v40) = *(v18 + 72) & 0xFFFFFC1F | (32 * (v35[91] & 0x1F));
  *(v18 + 72) = v40;
  *(v18 + 72) = v40 & 0xFFFFFFE0 | v35[601] & 0x1F;
  if (v35[96])
  {
    if (*(v19 + 4) == 3)
    {
      v47 = 12;
    }

    else
    {
      v47 = 8;
    }

    v48 = *(this + 33);
    CAHDecDahliaAvc::AvcPicScalingListFallBack(v15, v19, v35);
    CAHDecDahliaAvc::copyScalingList(v49, (v18 + 76), v48 + 1204, (v35 + 109), (v35 + 121), (v35 + 217), v47);
  }

  *(v18 + 80) = *(this + 4462);
  *(v18 + 84) = *(this + 4463);
  *(v18 + 88) = 3145786;
  v50 = this + 9008;
  for (i = 92; i != 152; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v52 = *(this + 33);
    v53 = *(v52 + i);
    *(v52 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFFu;
    v54 = *(this + 33);
    v55 = *(v54 + i);
    *(v54 + i) = v53;
    if (*v50 || *(v50 + 38) || *(v50 + 39))
    {
      result = CAHDec::addToPatcherList(this, v50, i, 0, 0xFFFFFFFFFLL, 8, v55, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 60) = 0;
    *(*(this + 33) + i + 60) = *(*(this + 33) + i + 60) & 0x800001FF | (((*(this + 4456) >> 9) & 0x3FFFFF) << 9);
    v50 += 176;
  }

  *(*(this + 33) + 212) = 0;
  if ((*(v18 + 54) & 8) != 0)
  {
    v56 = *(this + 33);
    v57 = *(*(this + 32) + 2680);
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v233 = 0u;
    memset(buf, 0, sizeof(buf));
    v58 = *(v56 + 16);
    buf[0] = v57;
    v59 = *(v56 + 212);
    *(v56 + 212) = 0;
    *(*(this + 33) + 212) ^= 0xFFFFFFFu;
    v60 = *(this + 33);
    v61 = *(v60 + 212);
    *(v60 + 212) = v59;
    if (v57)
    {
      result = CAHDec::addToPatcherList(this, buf, 212, (v58 & 0xF) << 9, 0xFFFFFFFFFLL, 8, v61, 4);
      if (result)
      {
        return result;
      }
    }
  }

  v62 = this + 16048;
  for (j = 216; j != 232; j += 4)
  {
    *(*(this + 33) + j) = 0;
    v64 = *(this + 33);
    v65 = *(v64 + j);
    *(v64 + j) = 0;
    *(*(this + 33) + j) ^= 0xFFFFFFFu;
    v66 = *(this + 33);
    v67 = *(v66 + j);
    *(v66 + j) = v65;
    if (*v62 || *(v62 + 38) || *(v62 + 39))
    {
      result = CAHDec::addToPatcherList(this, v62, j, 0, 0xFFFFFFFFFLL, 8, v67, 4);
      if (result)
      {
        return result;
      }
    }

    v62 += 176;
  }

  *(*(this + 33) + 232) = 0;
  v68 = *(this + 33);
  v69 = *(v68 + 232);
  *(v68 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFFFu;
  v70 = *(this + 33);
  v71 = *(v70 + 232);
  *(v70 + 232) = v69;
  if (!*(this + 2094) && !*(this + 4226) && !*(this + 4227) || (result = CAHDec::addToPatcherList(this, this + 2094, 232, 0, 0xFFFFFFFFFLL, 8, v71, 4), !result))
  {
    if ((*(*(this + 33) + 236) = 0, v72 = *(this + 33), v73 = *(v72 + 236), *(v72 + 236) = 0, *(*(this + 33) + 236) ^= 0xFFFFFFFu, v74 = *(this + 33), v75 = *(v74 + 236), *(v74 + 236) = v73, !*(this + 2116)) && !*(this + 4270) && !*(this + 4271) || (result = CAHDec::addToPatcherList(this, this + 2116, 236, 0, 0xFFFFFFFFFLL, 8, v75, 4), !result))
    {
      if ((*(*(this + 33) + 240) = 0, v76 = *(this + 33), v77 = *(v76 + 240), *(v76 + 240) = 0, *(*(this + 33) + 240) ^= 0xFFFFFFFu, v78 = *(this + 33), v79 = *(v78 + 240), *(v78 + 240) = v77, !*(this + 2138)) && !*(this + 4314) && !*(this + 4315) || (result = CAHDec::addToPatcherList(this, this + 2138, 240, 0, 0xFFFFFFFFFLL, 8, v79, 4), !result))
      {
        if ((*(*(this + 33) + 244) = 0, v80 = *(this + 33), v81 = *(v80 + 244), *(v80 + 244) = 0, *(*(this + 33) + 244) ^= 0xFFFFFFFu, v82 = *(this + 33), v83 = *(v82 + 244), *(v82 + 244) = v81, !*(this + 2160)) && !*(this + 4358) && !*(this + 4359) || (result = CAHDec::addToPatcherList(this, this + 2160, 244, 0, 0xFFFFFFFFFLL, 8, v83, 4), !result))
        {
          if ((*(*(this + 33) + 248) = 0, v84 = *(this + 33), v85 = *(v84 + 248), *(v84 + 248) = 0, *(*(this + 33) + 248) ^= 0xFFFFFFFu, v86 = *(this + 33), v87 = *(v86 + 248), *(v86 + 248) = v85, !*(this + 2182)) && !*(this + 4402) && !*(this + 4403) || (result = CAHDec::addToPatcherList(this, this + 2182, 248, 0, 0xFFFFFFFFFLL, 8, v87, 4), !result))
          {
            if ((*(*(this + 33) + 252) = 0, *(*(this + 33) + 256) = 0, v88 = *(this + 33), v89 = *(v88 + 256), *(v88 + 256) = 0, *(*(this + 33) + 256) ^= 0xFFFFFFFu, v90 = *(this + 33), v91 = *(v90 + 256), *(v90 + 256) = v89, !*(this + 1456)) && !*(this + 2950) && !*(this + 2951) || (result = CAHDec::addToPatcherList(this, this + 1456, 256, 0, 0xFFFFFFFFFLL, 8, v91, 4), !result))
            {
              if ((*(*(this + 33) + 260) = 0, v92 = *(this + 33), v93 = *(v92 + 260), *(v92 + 260) = 0, *(*(this + 33) + 260) ^= 0xFFFFFFFu, v94 = *(this + 33), v95 = *(v94 + 260), *(v94 + 260) = v93, v96 = (this + 176 * v227 + 11824), !*v96) && !*(this + 44 * v227 + 2994) && !*(this + 44 * v227 + 2995) || (result = CAHDec::addToPatcherList(this, v96, 260, 0, 0xFFFFFFFFFLL, 8, v95, 4), !result))
              {
                if ((*(*(this + 33) + 264) = 0, v97 = *(this + 33), v98 = *(v97 + 264), *(v97 + 264) = 0, *(*(this + 33) + 264) ^= 0x1FFFFFFFu, v99 = *(this + 33), v100 = *(v99 + 264), *(v99 + 264) = v98, v101 = this + 176 * v227 + 560, !*v101) && !*(v101 + 38) && !*(v101 + 39) || (result = CAHDec::addToPatcherList(this, v101, 264, 0, 0xFFFFFFFFFLL, 7, v100, 4), !result))
                {
                  if ((*(*(this + 33) + 268) = 0, v102 = *(this + 33), v103 = *(v102 + 268), *(v102 + 268) = 0, *(*(this + 33) + 268) ^= 0x1FFFFFFFu, v104 = *(this + 33), v105 = *(v104 + 268), *(v104 + 268) = v103, v106 = (v226 + 8), !*(v226 + 8)) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, (v226 + 8), 268, *(v226 + 60), 0xFFFFFFFFFLL, 7, v105, 4), !result))
                  {
                    if ((*(*(this + 33) + 272) = 0, v107 = *(this + 33), v108 = *(v107 + 272), *(v107 + 272) = 0, *(*(this + 33) + 272) ^= 0x1FFFFFFFu, v109 = *(this + 33), v110 = *(v109 + 272), *(v109 + 272) = v108, v111 = this + 176 * v227 + 4784, !*v111) && !*(v111 + 38) && !*(v111 + 39) || (result = CAHDec::addToPatcherList(this, v111, 272, 0, 0xFFFFFFFFFLL, 7, v110, 4), !result))
                    {
                      if ((*(*(this + 33) + 276) = 0, v112 = *(this + 33), v113 = *(v112 + 276), *(v112 + 276) = 0, *(*(this + 33) + 276) ^= 0x1FFFFFFFu, v114 = *(this + 33), v115 = *(v114 + 276), *(v114 + 276) = v113, !*v106) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v106, 276, *(v226 + 64), 0xFFFFFFFFFLL, 7, v115, 4), !result))
                      {
                        if (*(*(this + 32) + 2648) != 1 || ((v116 = *(this + 33), v117 = *(v116 + 268), *(v116 + 268) = 0, *(*(this + 33) + 268) ^= 0x1FFFFFFFu, v118 = *(this + 33), v119 = *(v118 + 268), *(v118 + 268) = v117, !*v106) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v106, 268, *(v226 + 60), 0xFFFFFFFFFLL, 7, v119, 4), !result)) && ((v120 = *(this + 33), v121 = *(v120 + 276), *(v120 + 276) = 0, *(*(this + 33) + 276) ^= 0x1FFFFFFFu, v122 = *(this + 33), v123 = *(v122 + 276), *(v122 + 276) = v121, !*v106) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v106, 276, *(v226 + 64), 0xFFFFFFFFFLL, 7, v123, 4), !result)) && ((v124 = *(this + 33), v125 = *(v124 + 264), *(v124 + 264) = 0, *(*(this + 33) + 264) ^= 0x1FFFFFFFu, v126 = *(this + 33), v127 = *(v126 + 264), *(v126 + 264) = v125, !*v106) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v106, 264, *(v226 + 72), 0xFFFFFFFFFLL, 7, v127, 4), !result)) && ((v128 = *(this + 33), v129 = *(v128 + 272), *(v128 + 272) = 0, *(*(this + 33) + 272) ^= 0x1FFFFFFFu, v130 = *(this + 33), v131 = *(v130 + 272), *(v130 + 272) = v129, !*v106) && !*(v226 + 160) && !*(v226 + 164) || (result = CAHDec::addToPatcherList(this, v106, 272, *(v226 + 76), 0xFFFFFFFFFLL, 7, v131, 4), !result)))
                        {
                          v132 = this + 4 * v227;
                          if (*(v18 + 52) & 0x2000 | v225)
                          {
                            *(v132 + 116) = 0;
                            *(*(this + 33) + 280) = 0;
                            if (v225)
                            {
                              v133 = 0;
                              if (v17)
                              {
                                v134 = 0x2000000;
                              }

                              else
                              {
                                v134 = 0;
                              }

                              v228 = v134;
                              do
                              {
                                v135 = *(v243 + v133);
                                v136 = *(v135 + 32);
                                *(*(this + 33) + 4 * v133 + 280) = 0;
                                *(*(this + 33) + 4 * v133 + 280) = *(*(this + 33) + 4 * v133 + 280) & 0xFFFFFFF | ((v225 << 28) - 0x10000000);
                                *(*(this + 33) + 4 * v133 + 280) &= 0xF3FFFFFF;
                                *(*(this + 33) + 4 * v133 + 280) = *(*(this + 33) + 4 * v133 + 280) & 0xFDFFFFFF | v228;
                                *(*(this + 33) + 4 * v133 + 280) |= 0x1000000u;
                                v137 = v224 - *(v135 + 12);
                                v138 = v137 & 0x1FFFF;
                                if (v137 < -32768)
                                {
                                  v138 = 98304;
                                }

                                if (v137 < 0x8000)
                                {
                                  v139 = v138;
                                }

                                else
                                {
                                  v139 = 0x7FFF;
                                }

                                *(*(this + 33) + 4 * v133 + 280) = *(*(this + 33) + 4 * v133 + 280) & 0xFFFE0000 | v139;
                                *(*(this + 33) + 4 * v133 + 280) = *(*(this + 33) + 4 * v133 + 280) & 0xFFFDFFFF | ((*(v135 + 1) & 1) << 17);
                                v140 = *(this + 32);
                                if (*(v135 + 28) == 1)
                                {
                                  v241 = 0u;
                                  v242 = 0u;
                                  v239 = 0u;
                                  v240 = 0u;
                                  v237 = 0u;
                                  v238 = 0u;
                                  v235 = 0u;
                                  v236 = 0u;
                                  v233 = 0u;
                                  v234 = 0u;
                                  memset(buf, 0, sizeof(buf));
                                  DPB = AVC_RLM::getDPB(*(v140 + 2992), buf);
                                  if (DPB < 1)
                                  {
                                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                    {
                                      return 0xFFFFFFFFLL;
                                    }

                                    v230 = 136315138;
                                    v231 = "populatePictureRegisters";
                                    v30 = MEMORY[0x277D86220];
                                    v31 = "AppleAVD: ERROR: %s: No ref pics found!\n";
                                  }

                                  else
                                  {
                                    v142 = DPB;
                                    while (v142 >= 1)
                                    {
                                      v135 = buf[--v142];
                                      if (!*(v135 + 28))
                                      {
                                        v136 = *(v135 + 32);
                                        v140 = *(this + 32);
                                        *(v140 + 2702) = 1;
                                        goto LABEL_153;
                                      }
                                    }

                                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                    {
                                      return 0xFFFFFFFFLL;
                                    }

                                    v230 = 136315138;
                                    v231 = "populatePictureRegisters";
                                    v30 = MEMORY[0x277D86220];
                                    v31 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
                                  }

                                  v32 = &v230;
                                  v33 = 12;
                                  goto LABEL_42;
                                }

LABEL_153:
                                if ((*(*v140 + 184))(v140))
                                {
                                  v143 = *(this + 32);
                                  if (*(v143 + 2756))
                                  {
                                    buf[0] = 0;
                                    if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v143, v136, *(v135 + 56), *(v135 + 64), buf) & 1) == 0)
                                    {
                                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                      {
                                        LOWORD(v230) = 0;
                                        v30 = MEMORY[0x277D86220];
                                        v31 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                        v32 = &v230;
                                        v33 = 2;
LABEL_42:
                                        _os_log_impl(&dword_277606000, v30, OS_LOG_TYPE_DEFAULT, v31, v32, v33);
                                      }

                                      return 0xFFFFFFFFLL;
                                    }

                                    *(v135 + 40) = buf[0] + 8;
                                  }
                                }

                                *(*(this + 33) + 4 * v133 + 344) = 0;
                                v144 = 4 * v133;
                                v145 = *(this + 33) + 4 * v133;
                                v146 = *(v145 + 344);
                                *(v145 + 344) = 0;
                                *(*(this + 33) + 4 * v133 + 344) ^= 0x1FFFFFFFu;
                                v147 = *(this + 33) + 4 * v133;
                                v148 = *(v147 + 344);
                                *(v147 + 344) = v146;
                                v149 = this + 176 * v136 + 560;
                                if (*v149 || *(v149 + 38) || *(v149 + 39))
                                {
                                  result = CAHDec::addToPatcherList(this, v149, v144 + 344, 0, 0xFFFFFFFFFLL, 7, v148, 4);
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                *(*(this + 33) + 4 * v133 + 408) = 0;
                                v150 = *(this + 33) + 4 * v133;
                                v151 = *(v150 + 408);
                                *(v150 + 408) = 0;
                                *(*(this + 33) + 4 * v133 + 408) ^= 0x1FFFFFFFu;
                                v152 = *(this + 33) + 4 * v133;
                                v153 = *(v152 + 408);
                                *(v152 + 408) = v151;
                                v154 = *(v135 + 40);
                                if (*v154 || *(v154 + 152) || *(v154 + 156))
                                {
                                  result = CAHDec::addToPatcherList(this, v154, v144 + 408, *(v154 + 52), 0xFFFFFFFFFLL, 7, v153, 4);
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                *(*(this + 33) + 4 * v133 + 472) = 0;
                                v155 = *(this + 33) + 4 * v133;
                                v156 = *(v155 + 472);
                                *(v155 + 472) = 0;
                                *(*(this + 33) + 4 * v133 + 472) ^= 0x1FFFFFFFu;
                                v157 = *(this + 33) + 4 * v133;
                                v158 = *(v157 + 472);
                                *(v157 + 472) = v156;
                                v159 = this + 176 * v136 + 4784;
                                if (*v159 || *(v159 + 38) || *(v159 + 39))
                                {
                                  result = CAHDec::addToPatcherList(this, v159, v144 + 472, 0, 0xFFFFFFFFFLL, 7, v158, 4);
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                *(*(this + 33) + 4 * v133 + 536) = 0;
                                v160 = *(this + 33) + 4 * v133;
                                v161 = *(v160 + 536);
                                *(v160 + 536) = 0;
                                *(*(this + 33) + 4 * v133 + 536) ^= 0x1FFFFFFFu;
                                v162 = *(this + 33) + 4 * v133;
                                v163 = *(v162 + 536);
                                *(v162 + 536) = v161;
                                v164 = *(v135 + 40);
                                if (*v164 || *(v164 + 152) || *(v164 + 156))
                                {
                                  result = CAHDec::addToPatcherList(this, v164, v144 + 536, *(v164 + 56), 0xFFFFFFFFFLL, 7, v163, 4);
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                if (*(*(this + 32) + 2648) == 1)
                                {
                                  v165 = *(this + 33) + 4 * v133;
                                  v166 = *(v165 + 408);
                                  *(v165 + 408) = 0;
                                  *(*(this + 33) + 4 * v133 + 408) ^= 0x1FFFFFFFu;
                                  v167 = *(this + 33) + 4 * v133;
                                  v168 = *(v167 + 408);
                                  *(v167 + 408) = v166;
                                  v169 = *(v135 + 40);
                                  if (*v169 || *(v169 + 152) || *(v169 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v169, v144 + 408, *(v169 + 52), 0xFFFFFFFFFLL, 7, v168, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  v170 = *(this + 33) + 4 * v133;
                                  v171 = *(v170 + 536);
                                  *(v170 + 536) = 0;
                                  *(*(this + 33) + 4 * v133 + 536) ^= 0x1FFFFFFFu;
                                  v172 = *(this + 33) + 4 * v133;
                                  v173 = *(v172 + 536);
                                  *(v172 + 536) = v171;
                                  v174 = *(v135 + 40);
                                  if (*v174 || *(v174 + 152) || *(v174 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v174, v144 + 536, *(v174 + 56), 0xFFFFFFFFFLL, 7, v173, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  v175 = *(this + 33) + 4 * v133;
                                  v176 = *(v175 + 344);
                                  *(v175 + 344) = 0;
                                  *(*(this + 33) + 4 * v133 + 344) ^= 0x1FFFFFFFu;
                                  v177 = *(this + 33) + 4 * v133;
                                  v178 = *(v177 + 344);
                                  *(v177 + 344) = v176;
                                  v179 = *(v135 + 40);
                                  if (*v179 || *(v179 + 152) || *(v179 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v179, v144 + 344, *(v179 + 64), 0xFFFFFFFFFLL, 7, v178, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }

                                  v180 = *(this + 33) + 4 * v133;
                                  v181 = *(v180 + 472);
                                  *(v180 + 472) = 0;
                                  *(*(this + 33) + 4 * v133 + 472) ^= 0x1FFFFFFFu;
                                  v182 = *(this + 33) + 4 * v133;
                                  v183 = *(v182 + 472);
                                  *(v182 + 472) = v181;
                                  v184 = *(v135 + 40);
                                  if (*v184 || *(v184 + 152) || *(v184 + 156))
                                  {
                                    result = CAHDec::addToPatcherList(this, v184, v144 + 472, *(v184 + 68), 0xFFFFFFFFFLL, 7, v183, 4);
                                    if (result)
                                    {
                                      return result;
                                    }
                                  }
                                }

                                ++v133;
                              }

                              while (v133 != v225);
                            }
                          }

                          else
                          {
                            *(v18 + 52) |= 0x2000u;
                            *(v132 + 116) = 1;
                            *(*(this + 33) + 280) = 0;
                          }

                          *(*(this + 33) + 600) = 0;
                          *(*(this + 33) + 604) = 0;
                          *(*(this + 33) + 608) = 0;
                          *(*(this + 33) + 612) = 0;
                          if (!v229)
                          {
LABEL_232:
                            v216 = *(this + 32);
                            if (*(v216 + 2360) != 1)
                            {
                              return 0;
                            }

                            v217 = *(this + 33);
                            *(v217 + 712) = *(v217 + 712) & 0xFFFFFFFE | *(v216 + 2508) & 1;
                            if (*(v216 + 2508))
                            {
                              *(v217 + 1688) = 0x10000000;
                              *(v217 + 1692) = *(v216 + 2368);
                              *(v217 + 1704) = 0;
                              *(v217 + 1696) = 0;
                              *(v217 + 1708) = *(v216 + 2372);
                              v218 = *(v216 + 2404);
                              *(v217 + 1724) = *(v216 + 2388);
                              *(v217 + 1740) = v218;
                            }

                            *(*(this + 33) + 712) = *(*(this + 33) + 712) & 0xFFFFFFFD | (2 * (*(v216 + 2512) & 1));
                            if (*(v216 + 2512))
                            {
                              *(v217 + 1756) = 0;
                              v219 = *(v216 + 2424);
                              *(v217 + 1756) = (*(v216 + 2424) & 1) << 22;
                              v220 = ((*(v216 + 2420) & 1) << 23) | ((v219 & 1) << 22) | 0x20000000;
                              *(v217 + 1756) = v220;
                              if (!*(v216 + 2364))
                              {
                                ++v220;
                              }

                              *(v217 + 1756) = v220;
                              v221 = *(v216 + 2428);
                              v222 = *(v216 + 2444);
                              *(v217 + 1792) = *(v216 + 2460);
                              *(v217 + 1776) = v222;
                              *(v217 + 1760) = v221;
                            }

                            *(*(this + 33) + 712) = *(*(this + 33) + 712) & 0xFFFFFFFB | (4 * (*(v216 + 2516) & 1));
                            *(*(this + 33) + 712) = *(*(this + 33) + 712) & 0xFFFFFFF7 | (8 * (*(v216 + 2520) & 1));
                            *(*(this + 33) + 712) = *(*(this + 33) + 712) & 0xFFFFFFEF | (16 * (*(v216 + 2524) & 1));
                            *(v217 + 1812) = 0;
                            v223 = *(v216 + 2476) == 2 ? 805306368 : 813694976;
                            *(v217 + 1812) = v223;
                            memcpy((v217 + 1816), (v216 + 2480), 4 * *(v216 + 2476));
                            if (!*(v216 + 2516))
                            {
                              return 0;
                            }

                            result = 0;
                            *(v216 + 2516) = 0;
                            return result;
                          }

                          v185 = *(this + 32);
                          v186 = *(v185 + 2892);
                          if (*(v185 + 2892))
                          {
                            v187 = *(v185 + 2904);
                            v186 = *(v185 + 2908);
                          }

                          else
                          {
                            v187 = 0;
                          }

                          v188 = *(v185 + 3544);
                          v190 = *(v188 + 52);
                          v189 = *(v188 + 56);
                          v191 = v190 + v187;
                          v192 = __CFADD__(v190, v187);
                          v193 = v189 + v186;
                          if (__CFADD__(v189, v186))
                          {
                            v194 = 2;
                          }

                          else
                          {
                            v194 = v192;
                          }

                          if (v194)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315394;
                              *(buf + 4) = "populatePictureRegisters";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = v194;
                              v30 = MEMORY[0x277D86220];
                              v31 = "AppleAVD: %s(): failKind = %d";
                              v32 = buf;
                              v33 = 18;
                              goto LABEL_42;
                            }

                            return 0xFFFFFFFFLL;
                          }

                          v195 = *(this + 33);
                          v196 = *(v195 + 600);
                          *(v195 + 600) = 0;
                          *(*(this + 33) + 600) ^= 0xFFFFFFFu;
                          v197 = *(this + 33);
                          v198 = *(v197 + 600);
                          *(v197 + 600) = v196;
                          v199 = *(*(this + 32) + 3544);
                          if (!*v199 && !*(v199 + 152) && !*(v199 + 156) || (result = CAHDec::addToPatcherList(this, v199, 600, v191, 0xFFFFFFFFFLL, 8, v198, 4), !result))
                          {
                            if ((v200 = *(this + 33), v201 = *(v200 + 604), *(v200 + 604) = 0, *(*(this + 33) + 604) ^= 0xFFFFFFFu, v202 = *(this + 33), v203 = *(v202 + 604), *(v202 + 604) = v201, v204 = *(*(this + 32) + 3544), !*v204) && !*(v204 + 152) && !*(v204 + 156) || (result = CAHDec::addToPatcherList(this, v204, 604, v193, 0xFFFFFFFFFLL, 8, v203, 4), !result))
                            {
                              if ((v205 = *(this + 33), v206 = *(v205 + 608), *(v205 + 608) = 0, *(*(this + 33) + 608) ^= 0xC0000000, v207 = *(this + 33), v208 = *(v207 + 608), *(v207 + 608) = v206, v209 = *(*(this + 32) + 3544), !*v209) && !*(v209 + 152) && !*(v209 + 156) || (result = CAHDec::addToPatcherList(this, v209, 608, v191, 192, 6, v208, 4), !result))
                              {
                                if ((v210 = *(this + 33), v211 = *(v210 + 612), *(v210 + 612) = 0, *(*(this + 33) + 612) ^= 0xC0000000, v212 = *(this + 33), v213 = *(v212 + 612), *(v212 + 612) = v211, v214 = *(*(this + 32) + 3544), !*v214) && !*(v214 + 152) && !*(v214 + 156) || (result = CAHDec::addToPatcherList(this, v214, 612, v193, 192, 6, v213, 4), !result))
                                {
                                  if (v8)
                                  {
                                    *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF));
                                    v215 = (*(*(this + 32) + 3544) + 80);
                                  }

                                  else
                                  {
                                    if (CAHDecDahliaAvc::getSWRStride(this, *(v18 + 84) - *(v18 + 80) + 1, *(v19 + 6), *(v19 + 7), *(v19 + 2212)))
                                    {
                                      return 0xFFFFFFFFLL;
                                    }

                                    *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFFC003 | (4 * ((*(this + 4460) >> 6) & 0xFFF));
                                    v215 = (this + 17844);
                                  }

                                  *(*(this + 33) + 612) = *(*(this + 33) + 612) & 0xFFFF8003 | (4 * ((*v215 >> 6) & 0x1FFF));
                                  goto LABEL_232;
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

uint64_t CAHDecDahliaAvc::getSWRStride(CAHDecDahliaAvc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 2230) = 0;
  if (!v5)
  {
    return 0;
  }

  v6 = this + 0x4000;
  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v8 = (v7 + 1) & 0xFFFFFFFE;
  if (v5 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = (v8 + 7) & 0xFFFFFFF8;
  }

  if (v9 > 3)
  {
    if (v9 == 4)
    {
      result = 0;
      *(v6 + 364) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
      v11 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
      goto LABEL_22;
    }

    if (v9 != 8)
    {
      goto LABEL_16;
    }

    result = 0;
    *(v6 + 364) = (2 * a2 + 63) & 0xFFFFFFC0;
    v12 = 4 * a2;
LABEL_20:
    v11 = v12 / a5;
    goto LABEL_22;
  }

  if (!v9)
  {
    result = 0;
    *(v6 + 364) = (a2 + 63) & 0xFFFFFFC0;
    v12 = 2 * a2;
    goto LABEL_20;
  }

  if (v9 == 2)
  {
    result = 0;
    *(v6 + 364) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
    v11 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_22:
    *(v6 + 365) = (v11 + 63) & 0xFFFFFFC0;
    return result;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "getSWRStride";
    v15 = 1024;
    v16 = v9 + 8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bad swr bit depth %d\n", &v13, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDahliaAvc::getTileIdxAbove(CAHDecDahliaAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 616);
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

uint64_t CAHDecDahliaAvc::populateAvdWork(CAHDecDahliaAvc *this, unsigned int a2)
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
    v9 = (v2 + 2768);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 952 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 1836) = v8;
      *(v13 + 1838) = 0;
      *(v13 + 1840) = v8;
      *(v12 + v7 + 1842) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 1864) = *v10;
      *(v13 + 1868) = v15;
      *(v13 + 1872) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 1846) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 1813;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 573054, v18, 0xFFFFFFFFFLL, 32, -1, 2);
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
            v28 = 1814;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 573056, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 238;
      *(v12 + v7 + 1860) = v14;
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
    *(v2 + 32) = 573032;
  }

  return result;
}

uint64_t CAHDecDahliaAvc::allocWorkBuf_SPS(CAHDecDahliaAvc *this, _BYTE *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = (this + 0x4000);
  v4 = a2[4];
  v5 = *(a2 + 779);
  v6 = 16 * v5;
  v7 = *(a2 + 780);
  v8 = 16 * v7;
  v9 = 32 - __clz(((16 * v5 + 47) >> 5) - 1);
  if (v5 < 2)
  {
    LOBYTE(v9) = 0;
  }

  v10 = 32 - __clz(((16 * v7 + 47) >> 5) - 1);
  if (v7 < 2)
  {
    LOBYTE(v10) = 0;
  }

  v11 = ((32 << (v10 + v9)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    if (v4 == 1)
    {
      ++v8;
    }

    v12 = (v6 + 16) << (v4 == 3);
    v13 = (((v8 + 16) >> (v4 == 1)) + 15) >> 4;
    if (v12 > 0x20)
    {
      v14 = 32 - __clz(((v12 + 31) >> 5) - 1);
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v14) = 0;
LABEL_12:
  v15 = 32 - __clz(v13 - 1);
  if (v13 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = ((8 << (v16 + v14)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  *(this + 4452) = v11;
  *(this + 4453) = v18;
  *(this + 2227) = 0;
  v19 = (v5 << 6) + 64;
  *(this + 4458) = v19;
  *(this + 4457) = v19 + v19 * v7;
  if (!*(*(this + 32) + 2648))
  {
    v20 = (this + 560);
    v21 = (this + 4784);
    v22 = 24;
    while (1)
    {
      v23 = v3[356];
      if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        v30 = 136315650;
        v31 = "allocWorkBuf_SPS";
        v32 = 1024;
        v33 = 2052;
        v34 = 2080;
        v35 = "HdrY";
        v29 = MEMORY[0x277D86220];
        goto LABEL_36;
      }

      v24 = v3[357];
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
        goto LABEL_25;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v30 = 136315650;
    v31 = "allocWorkBuf_SPS";
    v32 = 1024;
    v33 = 2053;
    v34 = 2080;
    v35 = "HdrC";
    v29 = MEMORY[0x277D86220];
    goto LABEL_36;
  }

LABEL_25:
  v25 = (this + 11824);
  v26 = 24;
  while (1)
  {
    v27 = v3[361];
    if (v27)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), v25, v27, 7, 1, 0))
      {
        break;
      }
    }

    v25 += 11;
    if (!--v26)
    {
      result = 0;
      v3[366] = 0;
      v3[367] = v6 | (v7 << 20) | 0xF000F;
      return result;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315650;
    v31 = "allocWorkBuf_SPS";
    v32 = 1024;
    v33 = 2059;
    v34 = 2080;
    v35 = "MvColo";
    v29 = MEMORY[0x277D86220];
LABEL_36:
    _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v30, 0x1Cu);
  }

LABEL_37:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDahliaAvc::allocWorkBuf_PPS(CAHDecDahliaAvc *this, _BYTE *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
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

  v10 = v5 == 0;
  if (a2[4])
  {
    v11 = v8;
  }

  else
  {
    v11 = 16;
  }

  v12 = ((v7 * v11) >> 3) * (v6 + 1);
  v13 = 32 * (v6 + 1);
  if (v10)
  {
    v14 = 64;
  }

  else
  {
    v14 = v9;
  }

  v15 = ((v7 * v14) >> 3) * (v6 + 1);
  v16 = 20 * *(a2 + 779);
  v17 = (this + 16048);
  v18 = 4;
  do
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), v17, v16 + 20, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = 136315650;
      v22 = "allocWorkBuf_PPS";
      v23 = 1024;
      v24 = 2178;
      v25 = 2080;
      v26 = "AvpAboveInfo";
      v19 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    v17 += 11;
    --v18;
  }

  while (v18);
  if (v7)
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 1047, v12, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = 136315650;
      v22 = "allocWorkBuf_PPS";
      v23 = 1024;
      v24 = 2182;
      v25 = 2080;
      v26 = "IpAbove";
      v19 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    if (CAVDDecoder::allocAVDMem(*(this + 32), this + 1058, v15, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = 136315650;
      v22 = "allocWorkBuf_PPS";
      v23 = 1024;
      v24 = 2183;
      v25 = 2080;
      v26 = "LfAbovePix";
      v19 = MEMORY[0x277D86220];
      goto LABEL_34;
    }
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 1069, v13, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v21 = 136315650;
    v22 = "allocWorkBuf_PPS";
    v23 = 1024;
    v24 = 2184;
    v25 = 2080;
    v26 = "LfAboveInfo";
    v19 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 728, v13, 7, 1, 0);
  if (!result)
  {
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "allocWorkBuf_PPS";
    v23 = 1024;
    v24 = 2187;
    v25 = 2080;
    v26 = "MvAboveInfo";
    v19 = MEMORY[0x277D86220];
LABEL_34:
    _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v21, 0x1Cu);
  }

LABEL_35:
  (*(*this + 160))(this, 0);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecDahliaAvc::freeWorkBuf_SPS(CAHDecDahliaAvc *this)
{
  v2 = (this + 560);
  v3 = (this + 4784);
  v4 = (this + 11824);
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

    if (v3[880])
    {
      result = CAVDDecoder::deallocAVDMem(*(this + 32), v4);
      v3[880] = 0;
    }

    v4 += 22;
    v2 += 22;
    v3 += 22;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t *CAHDecDahliaAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  v3 = this + 2006;
  v4 = 4;
  do
  {
    if (*v3)
    {
      this = CAVDDecoder::deallocAVDMem(v2[32], v3);
      *v3 = 0;
    }

    v3 += 22;
    --v4;
  }

  while (v4);
  if (v2[2094])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2094);
    v2[2094] = 0;
  }

  if (v2[1456])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1456);
    v2[1456] = 0;
  }

  if (v2[2116])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2116);
    v2[2116] = 0;
  }

  if (v2[2138])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2138);
    v2[2138] = 0;
  }

  if (v2[2160])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2160);
    v2[2160] = 0;
  }

  if (v2[2182])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2182);
    v2[2182] = 0;
  }

  if (v2[2204])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2204);
    v2[2204] = 0;
  }

  return this;
}

uint64_t CAHDecDahliaAvc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 9164);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 17824) = a2;
  return this;
}

double AV1_RLM::AV1_RLM(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = a2;
  *(a1 + 104) = a3;
  if (a3)
  {
    v3 = *(a3 + 8);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 96) = v3;
  *a1 = 0;
  result = NAN;
  *(a1 + 112) = 0xFFFFFFFF00000000;
  return result;
}

void AV1_RLM::~AV1_RLM(AV1_RLM *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((~*(this + 30) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    *v10 = "~AV1_RLM";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: fb refcnt\n", &v9, 0xCu);
  }

  v2 = *(this + 13);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D86220];
    do
    {
      if (v4 >= *(v2 + 4))
      {
        break;
      }

      if ((~*(this + 30) & 0x80002) == 0 && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(this + 12);
        if (v6)
        {
          v7 = *(v6 + v3);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v6 + v3 + 4);
        v9 = 67109888;
        *v10 = v4;
        *&v10[4] = 2048;
        *&v10[6] = v3 + v6;
        v11 = 1024;
        v12 = v7;
        v13 = 1024;
        v14 = v8;
        _os_log_impl(&dword_277606000, v5, OS_LOG_TYPE_DEFAULT, "AppleAVD: buf[%2d]=%p ref_count = %2d order_hint=%d\n", &v9, 0x1Eu);
        v2 = *(this + 13);
      }

      ++v4;
      v3 += 2040;
    }

    while (v2);
  }

  if ((~*(this + 30) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: \n", &v9, 2u);
  }
}

uint64_t AV1_RLM::Assign_Cur_Frame_New_FB(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  available_frame_buffer = AV1_RLM::find_available_frame_buffer(a1);
  if (available_frame_buffer == -1)
  {
    return 0;
  }

  v5 = available_frame_buffer;
  v6 = *(a1 + 96) + 2040 * available_frame_buffer;
  *(a2 + 120) = v6;
  *(v6 + 2024) = available_frame_buffer;
  *(v6 + 2008) = 0;
  if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "Assign_Cur_Frame_New_FB";
    v10 = 1024;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: pool[%d] = %p\n", &v8, 0x1Cu);
    return *(a2 + 120);
  }

  return v6;
}

uint64_t AV1_RLM::find_available_frame_buffer(AV1_RLM *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(this + 13);
  v2 = *(v1 + 16);
  v3 = *(v1 + 4);
  if (v3 > v2)
  {
    v4 = (*(this + 12) + 2040 * v2);
    v5 = v3 - v2;
    v6 = *(v1 + 16);
    while (*v4)
    {
      v4 += 510;
      ++v6;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_15;
  }

LABEL_5:
  if (v2)
  {
    v6 = 0;
    v7 = *(this + 12);
    while (*v7)
    {
      v7 += 510;
      if (v2 == ++v6)
      {
        goto LABEL_9;
      }
    }

LABEL_15:
    if (v6 + 1 == v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6 + 1;
    }

    *(v1 + 16) = v8;
    v9 = *(this + 12) + 2040 * v6;
    *v9 = 1;
    *(v9 + 2028) = 1;
    *(v9 + 2016) = 0;
    return v6;
  }

LABEL_9:
  if ((*(this + 122) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "find_available_frame_buffer";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: no frame buffer available\n", &v11, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "find_available_frame_buffer";
    v13 = 1024;
    v14 = 437;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v11, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

void AV1_RLM::Swap_Frame_Bufs(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 1800);
  v6 = *(a2 + 3144);
  if (!a3)
  {
    goto LABEL_26;
  }

  if (v6)
  {
    goto LABEL_3;
  }

  v9 = *(a2 + 1904);
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = 0;
  v11 = a2 + 3648;
  v12 = MEMORY[0x277D86220];
  while ((v9 & 1) == 0)
  {
LABEL_15:
    ++v10;
    v16 = v9 > 1;
    v9 >>= 1;
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  if (v10 < 8)
  {
    AV1_RLM::release_frame_buffer(a1, *(v11 + 8 * v10));
    v13 = *(a2 + 1920);
    *(v11 + 8 * v10) = v13;
    ++*v13;
    if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v13 + 2024);
      v15 = *(v13 + 2016);
      *buf = 136316162;
      v19 = "Swap_Frame_Bufs";
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v14;
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ref_frame_map[%d] pool[%d] = %p/%p\n", buf, 0x2Cu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "Swap_Frame_Bufs";
    v20 = 1024;
    v21 = 98;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
  }

LABEL_3:
  if (!*v5 && !*(a2 + 1932))
  {
    goto LABEL_26;
  }

  v7 = *(a1 + 112);
  if (*(a2 + 4756))
  {
    v8 = *a1;
    if (v7 >= 4)
    {
      AV1_RLM::release_frame_buffer(a1, v8);
      goto LABEL_25;
    }

    *(a1 + 8 * v7 + 64) = v8;
    v17 = v7 + 1;
  }

  else
  {
    if (v7 >= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "Swap_Frame_Bufs";
      v20 = 1024;
      v21 = 133;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      v7 = *(a1 + 112);
    }

    if (v7 >= 1)
    {
      AV1_RLM::release_frame_buffer(a1, *(a1 + 64));
    }

    *(a1 + 64) = *a1;
    v17 = 1;
  }

  *(a1 + 112) = v17;
LABEL_25:
  if (*v5)
  {
LABEL_26:
    AV1_RLM::release_frame_buffer(a1, *(a2 + 1920));
  }

  *(a2 + 1920) = 0;
  if (!v6)
  {
    *(a2 + 3516) = -1;
    *(a2 + 3500) = -1;
    *(a2 + 3508) = -1;
    *(a2 + 3492) = -1;
  }

  AV1_RLM::dump_fb_info(a1, v5);
}

void AV1_RLM::release_frame_buffer(uint64_t a1, int *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return;
  }

  v4 = *a2;
  if (*a2 < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    *v16 = "release_frame_buffer";
    *&v16[8] = 1024;
    *&v16[10] = 473;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v15, 0x12u);
    v4 = *a2;
  }

  *a2 = v4 - 1;
  v5 = *(a1 + 104);
  if (!v5)
  {
    return;
  }

  if (!*(v5 + 32) || v4 != 1)
  {
    return;
  }

  if (!*(v5 + 4))
  {
    goto LABEL_21;
  }

  v7 = 0;
  v8 = 1960;
  v9 = MEMORY[0x277D86220];
  while (1)
  {
    if ((~*(a1 + 120) & 0x80004) == 0 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a2[506];
      v11 = **(a2 + 245);
      v12 = **(*(a1 + 96) + v8);
      v15 = 67109888;
      *v16 = v10;
      *&v16[4] = 2048;
      *&v16[6] = v11;
      v17 = 1024;
      v18 = v7;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, "AppleAVD: release fb %d fci_wr fc %p, copy to pool[%d] fci_wr fc %p\n", &v15, 0x22u);
    }

    v13 = *(a1 + 96);
    if (!*(v13 + v8 - 1960))
    {
      v5 = *(a1 + 104);
      goto LABEL_20;
    }

    v14 = *(a2 + 245);
    v5 = *(a1 + 104);
    if (*(v13 + v8 + 8) == v14)
    {
      break;
    }

LABEL_20:
    ++v7;
    v8 += 2040;
    if (v7 >= *(v5 + 4))
    {
      goto LABEL_21;
    }
  }

  *(a2 + 245) = *(v13 + v8);
  *(v13 + v8) = v14;
LABEL_21:
  (*(v5 + 32))(a2, *(v5 + 24));
}

void AV1_RLM::dump_fb_info(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v16 = "dump_fb_info";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ref frame map\n", buf, 0xCu);
  }

  v4 = 0;
  v5 = a2 + 1848;
  v6 = MEMORY[0x277D86220];
  do
  {
    if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 8 * v4);
      *buf = 67109376;
      *v16 = v4;
      *&v16[4] = 2048;
      *&v16[6] = v7;
      _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, "AppleAVD: uncomp_hdr->ref_frame_map[%d] = %p\n", buf, 0x12u);
    }

    ++v4;
  }

  while (v4 != 8);
  if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v16 = "dump_fb_info";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: fb refcnt\n", buf, 0xCu);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x277D86220];
    do
    {
      if (v10 >= *(v8 + 4))
      {
        break;
      }

      if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 96);
        if (v12)
        {
          v13 = *(v12 + v9);
        }

        else
        {
          v13 = 0;
        }

        v14 = *(v12 + v9 + 4);
        *buf = 67109888;
        *v16 = v10;
        *&v16[4] = 2048;
        *&v16[6] = v9 + v12;
        v17 = 1024;
        v18 = v13;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&dword_277606000, v11, OS_LOG_TYPE_DEFAULT, "AppleAVD: buf[%2d]=%p ref_count = %2d order_hint=%d\n", buf, 0x1Eu);
        v8 = *(a1 + 104);
      }

      ++v10;
      v9 += 2040;
    }

    while (v8);
  }

  if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: \n", buf, 2u);
  }
}

void AV1_RLM::Rel_Frame_Buffer(uint64_t a1, int *a2)
{
  if (a2 && *a2)
  {
    if (*(a1 + 104))
    {
      AV1_RLM::release_frame_buffer(a1, a2);
    }
  }
}

void AV1_RLM::Rel_Output_Frames_Bufs(AV1_RLM *this)
{
  v2 = *(this + 28);
  if (v2 >= 1)
  {
    v3 = 8;
    do
    {
      v4 = *(this + v3);
      if (v4 && *v4 && *(this + 13))
      {
        AV1_RLM::release_frame_buffer(this, v4);
        v2 = *(this + 28);
      }

      v5 = v3 - 7;
      ++v3;
    }

    while (v5 < v2);
  }

  *(this + 28) = 0;
}

uint64_t AV1_RLM::Update_Frame_Bufs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  *(a1 + 116) = -1;
  *a1 = 0;
  if (!a2 || !a3 || (v6 = *(a1 + 96)) == 0)
  {
    if ((*(a1 + 122) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v12 = *(a1 + 96);
    *buf = 136315906;
    v55 = "Update_Frame_Bufs";
    v56 = 2048;
    *v57 = a2;
    *&v57[8] = 2048;
    *&v57[10] = a3;
    *&v57[18] = 2048;
    *&v57[20] = v12;
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: %s: invalid hdr %p buffer pointer %p pool %p\n";
    v15 = 42;
    goto LABEL_13;
  }

  if (*(a2 + 1800))
  {
    v7 = *(a2 + 3472);
    v8 = *(a2 + 8 * v7 + 3648);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        *a1 = v8;
        *v8 = v9 + 1;
        if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v10 = v8[506];
          v11 = *(v8 + 252);
          *buf = 136315906;
          v55 = "Update_Frame_Bufs";
          v56 = 1024;
          *v57 = v10;
          *&v57[4] = 2048;
          *&v57[6] = v8;
          *&v57[14] = 2048;
          *&v57[16] = v11;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: frame_to_show pool[%d] = %p/%p\n", buf, 0x26u);
        }

        return 0;
      }
    }

    if ((*(a1 + 122) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v55 = "Update_Frame_Bufs";
      v56 = 1024;
      *v57 = v7;
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: %s: invalid frame to show map idx %d\n";
      v15 = 18;
LABEL_13:
      _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
    }

    return 0xFFFFFFFFLL;
  }

  v16 = *(a2 + 1920);
  v17 = v16[506];
  *(a1 + 116) = v17;
  if (v17 != -1)
  {
    v18 = v17;
    ++*v16;
    if (*(a2 + 1932))
    {
      *a1 = v6 + 2040 * v17;
    }

    v19 = v6 + 2040 * v17;
    *(v19 + 724) = *(a2 + 2176);
    *(v19 + 1924) = *(a2 + 2156);
    *(v19 + 1920) = *(a2 + 128);
    *&v20 = *(a2 + 132);
    DWORD2(v20) = *(a2 + 108);
    HIDWORD(v20) = *(a2 + 116);
    *(v19 + 1888) = v20;
    if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v55 = "Update_Frame_Bufs";
      v56 = 1024;
      *v57 = v17;
      *&v57[4] = 2048;
      *&v57[6] = v6 + 2040 * v17;
      *&v57[14] = 2048;
      *&v57[16] = a3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: cur_frame pool[%d] = %p/%p\n", buf, 0x26u);
      v6 = *(a1 + 96);
      v17 = *(a1 + 116);
      v18 = v17;
    }

    *(v6 + 2040 * v18 + 2016) = a3;
    v21 = *(a2 + 1912);
    if (v21)
    {
      ++*v21;
      *(v6 + 2040 * v18 + 2008) = v21;
    }

    if (!*(a2 + 1868))
    {
      v22 = 0;
      *(a1 + 56) = 0;
      *(a1 + 40) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      return v22;
    }

    if (*(a2 + 4748))
    {
      return 0;
    }

    v24 = 0;
    v52 = 0;
    v53 = a2 + 3492;
    v25 = a2 + 3648;
    while (1)
    {
      v26 = *(v53 + 4 * v24);
      if (v26 == -1)
      {
        break;
      }

      v27 = *(v25 + 8 * v26);
      v28 = *(a1 + 120);
      if (!v27)
      {
        goto LABEL_67;
      }

      if ((~v28 & 0x80002) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(v27 + 2024);
        v30 = *(v27 + 2016);
        *buf = 136316418;
        v55 = "Update_Frame_Bufs";
        v56 = 1024;
        *v57 = v24;
        *&v57[4] = 1024;
        *&v57[6] = v26;
        *&v57[10] = 1024;
        *&v57[12] = v29;
        *&v57[16] = 2048;
        *&v57[18] = v27;
        *&v57[26] = 2048;
        *&v57[28] = v30;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ref_frame_idx[%d] = %d, pool[%d] = %p/%p\n", buf, 0x32u);
        v6 = *(a1 + 96);
        v17 = *(a1 + 116);
      }

      v31 = *(a2 + 1920);
      v32 = v31[474];
      v33 = *(v27 + 1896);
      if (v32 != v33)
      {
        goto LABEL_63;
      }

      if (v31[472] != *(v27 + 1888) || v31[473] != *(v27 + 1892))
      {
        v33 = v31[474];
LABEL_63:
        if ((*(a1 + 122) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v48 = v31[472];
          v49 = *(v27 + 1888);
          v50 = v31[473];
          v51 = *(v27 + 1892);
          *buf = 136316674;
          v55 = "Update_Frame_Bufs";
          v56 = 1024;
          *v57 = v32;
          *&v57[4] = 1024;
          *&v57[6] = v33;
          *&v57[10] = 1024;
          *&v57[12] = v48;
          *&v57[16] = 1024;
          *&v57[18] = v49;
          *&v57[22] = 1024;
          *&v57[24] = v50;
          *&v57[28] = 1024;
          *&v57[30] = v51;
          v13 = MEMORY[0x277D86220];
          v14 = "AppleAVD: %s: cur and ref frame format mismatch bd %d-%d ssx %d-%d ssy %d-%d\n";
          v15 = 48;
          goto LABEL_13;
        }

        return 0xFFFFFFFFLL;
      }

      v34 = v6 + 2040 * v17;
      v35 = *(v34 + 724);
      v36 = *(v27 + 1760);
      if (v36 <= 2 * v35)
      {
        v37 = *(v34 + 728);
        v38 = *(v27 + 1768);
        v39 = 16 * v36;
        v41 = 2 * v37 >= v38 && v37 <= 16 * v38 && v35 <= v39;
        v42 = v52;
        if (v41)
        {
          v42 = 1;
        }

        v52 = v42;
      }

      if (++v24 == 7)
      {
        if (v52)
        {
          v43 = 0;
          v44 = MEMORY[0x277D86220];
          do
          {
            v45 = *(v25 + 8 * *(v53 + 4 * v43));
            *(a1 + 8 + 8 * v43) = v45;
            if ((~*(a1 + 120) & 0x80002) == 0 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v46 = *(v45 + 2024);
              v47 = *(v45 + 2016);
              *buf = 136316162;
              v55 = "Update_Frame_Bufs";
              v56 = 1024;
              *v57 = v43;
              *&v57[4] = 1024;
              *&v57[6] = v46;
              *&v57[10] = 2048;
              *&v57[12] = v45;
              *&v57[20] = 2048;
              *&v57[22] = v47;
              _os_log_impl(&dword_277606000, v44, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: m_frame_refs[%d] pool[%d] = %p/%p\n", buf, 0x2Cu);
            }

            v22 = 0;
            ++v43;
          }

          while (v43 != 7);
          return v22;
        }

        if ((*(a1 + 122) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v55 = "Update_Frame_Bufs";
          v13 = MEMORY[0x277D86220];
          v14 = "AppleAVD: %s: no reference frame has valid dimensions\n";
          v15 = 12;
          goto LABEL_13;
        }

        return 0xFFFFFFFFLL;
      }
    }

    v28 = *(a1 + 120);
LABEL_67:
    if ((v28 & 0x10000) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v55 = "Update_Frame_Bufs";
      v56 = 1024;
      *v57 = v24;
      *&v57[4] = 1024;
      *&v57[6] = v26;
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: %s: invalid ref_frame_idx[%d] %d\n";
      v15 = 24;
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 122) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = 0xFFFFFFFFLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v55 = "Update_Frame_Bufs";
    v56 = 1024;
    *v57 = -1;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: AV1 Internal bufferpool is full, invalid index %d\n", buf, 0x12u);
  }

  return v22;
}

double AV1_RLM::flush_RLM(AV1_RLM *this, uint64_t a2)
{
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2 + 1848;
  v6 = MEMORY[0x277D86220];
  do
  {
    if (a2)
    {
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        if ((~*(this + 30) & 0x80002) == 0 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v7;
          *buf = 136315906;
          v11 = "flush_RLM";
          v12 = 1024;
          v13 = v4;
          v14 = 2048;
          v15 = v7;
          v16 = 1024;
          v17 = v8;
          _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ref_frame_map[%d] %p ref_count %d\n", buf, 0x22u);
        }

        if (*v7)
        {
          AV1_RLM::release_frame_buffer(this, v7);
        }

        *(v5 + 8 * v4) = 0;
      }
    }

    ++v4;
  }

  while (v4 != 8);
  AV1_RLM::Rel_Output_Frames_Bufs(this);
  *(this + 29) = -1;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

uint64_t LGH_Syntax::uncompressed_header(LGH_Syntax *this)
{
  v60 = *MEMORY[0x277D85DE8];
  bits = LGH_Syntax::get_bits(this, "frame_maker", 2u);
  if (bits != 2)
  {
    if ((*(this + 7886) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = bits;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    v57 = "uncompressed_header";
    v58 = 1024;
    v59 = v9;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s: frame marker expect 2 got %x\n";
LABEL_11:
    v10 = 18;
LABEL_12:
    _os_log_impl(&dword_277606000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    return 0xFFFFFFFFLL;
  }

  v3 = LGH_Syntax::get_bits(this, "profile_low", 1u);
  v4 = v3 | (2 * LGH_Syntax::get_bits(this, "profile_high", 1u));
  *(*(this + 10) + 72) = v4;
  if (v4 >= 3u)
  {
    v5 = LGH_Syntax::get_bits(this, "profile_more", 1u);
    v6 = *(this + 10);
    v4 = *(v6 + 72) + v5;
    *(v6 + 72) = v4;
  }

  if (v4 >= 4u)
  {
    if ((*(this + 7886) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    v57 = "uncompressed_header";
    v58 = 1024;
    v59 = v4;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s: unsupported profile %d\n";
    goto LABEL_11;
  }

  v12 = LGH_Syntax::get_bits(this, "show_existing_frame", 1u);
  v13 = *(this + 10);
  *v13 = v12;
  if (v12 == 1)
  {
    v14 = LGH_Syntax::get_bits(this, "frame_to_show_map_idx", 3u);
    result = 0;
    v15 = *(this + 10);
    *(v15 + 1) = v14;
    *(v15 + 2) = 0;
    *(v15 + 4) = 0;
    *(v15 + 26) = 0;
    *(v15 + 6) = 1;
    return result;
  }

  *(this + 22) = v13[5];
  *(*(this + 10) + 5) = LGH_Syntax::get_bits(this, "frame_type", 1u);
  *(*(this + 10) + 6) = LGH_Syntax::get_bits(this, "show_frame", 1u);
  v16 = LGH_Syntax::get_bits(this, "error_resilient_mode", 1u);
  v17 = *(this + 10);
  v17[7] = v16;
  if (!v17[5])
  {
    if (LGH_Syntax::frame_sync_code(this) || LGH_Syntax::color_config(this))
    {
      return 0xFFFFFFFFLL;
    }

    LGH_Syntax::frame_size(this);
    LGH_Syntax::render_size(this);
    v20 = *(this + 10);
    v20[4] = -1;
    v20[74] = 1;
    goto LABEL_38;
  }

  if (v17[6])
  {
    v18 = 0;
    v19 = v16;
    v17[8] = 0;
  }

  else
  {
    v21 = LGH_Syntax::get_bits(this, "intra_only", 1u);
    v18 = v21;
    v17 = *(this + 10);
    v17[8] = v21;
    v19 = v17[7];
  }

  v17[74] = v18;
  if (!v19)
  {
    v23 = LGH_Syntax::get_bits(this, "reset_frame_context", 2u);
    v24 = *(this + 10);
    *(v24 + 13) = v23;
    if (*(v24 + 74))
    {
      goto LABEL_25;
    }

LABEL_30:
    v25 = 0;
    *(*(this + 10) + 4) = LGH_Syntax::get_bits(this, "refresh_frame_flags", 8u);
    do
    {
      *(*(this + 10) + v25 + 14) = LGH_Syntax::get_bits(this, "ref_frame_idx", 3u);
      *(*(this + 10) + v25++ + 18) = LGH_Syntax::get_bits(this, "ref_frame_sign_bias", 1u);
    }

    while (v25 != 3);
    LGH_Syntax::frame_size_with_refs(this);
    *(*(this + 10) + 21) = LGH_Syntax::get_bits(this, "allow_high_precision_mv", 1u);
    if (LGH_Syntax::get_bits(this, "is_filter_switchable", 1u))
    {
      LOBYTE(v26) = 4;
    }

    else
    {
      v26 = literal_to_type[LGH_Syntax::get_bits(this, "raw_interpolation_filter", 2u)];
    }

    v20 = *(this + 10);
    v20[22] = v26;
    goto LABEL_38;
  }

  v17[13] = 0;
  if (!v18)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (LGH_Syntax::frame_sync_code(this))
  {
    return 0xFFFFFFFFLL;
  }

  v22 = *(this + 10);
  if (*(v22 + 72))
  {
    if (LGH_Syntax::color_config(this))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(v22 + 9) = 16842753;
    *(v22 + 73) = 8;
  }

  *(*(this + 10) + 4) = LGH_Syntax::get_bits(this, "refresh_frame_flags", 8u);
  LGH_Syntax::frame_size(this);
  LGH_Syntax::render_size(this);
  v20 = *(this + 10);
LABEL_38:
  if (v20[7])
  {
    v20[23] = 0;
    v27 = 1;
  }

  else
  {
    *(*(this + 10) + 23) = LGH_Syntax::get_bits(this, "refresh_frame_context", 1u);
    v27 = LGH_Syntax::get_bits(this, "frame_parallel_decoding_mode", 1u);
    v20 = *(this + 10);
  }

  v20[24] = v27;
  v28 = LGH_Syntax::get_bits(this, "frame_context_idx", 2u);
  v29 = *(this + 10);
  *(v29 + 25) = v28;
  if (*(v29 + 74) || *(v29 + 7))
  {
    v30 = 0;
    for (i = 0; i != 8; ++i)
    {
      v32 = v30;
      v33 = 4;
      do
      {
        *(v29 + v32 + 173) = 0;
        v29 = *(this + 10);
        *(v29 + 2 * v32++ + 206) = 0;
        --v33;
      }

      while (v33);
      v30 += 4;
    }

    *(v29 + 60) = 0;
    *(v29 + 28) = 257;
    *(v29 + 34) = 1;
    *(*(this + 10) + 35) = 0;
    *(*(this + 10) + 36) = -1;
    *(*(this + 10) + 37) = -1;
    *(*(this + 10) + 40) = 0;
    *(*(this + 10) + 41) = 0;
    for (j = 17; j != 21; ++j)
    {
      *(*(this + 10) + j) = 0;
    }

    v35 = *(this + 10);
    if (!v35[5] || v35[7] == 1)
    {
      goto LABEL_53;
    }

    v36 = v35[13];
    if (v36 == 2)
    {
      LGH_Syntax::save_probs_default(this, v35[25]);
      v35 = *(this + 10);
    }

    else if (v36 == 3)
    {
LABEL_53:
      v55 = *(this + 10);
      v37 = (this + 2005);
      v38 = 4;
      do
      {
        v39 = v37 - 1901;
        *v39 = -1;
        *(v39 + 2) = 1113915391;
        *(v37 - 1889) = 0x5258803650F9814;
        *(v37 - 1881) = 3380;
        memcpy(v37 - 1879, &default_coef_probs, 0x630uLL);
        v40 = v37 - 295;
        *v40 = -32576;
        v40[2] = 64;
        v41 = v37 - 73;
        *v41 = default_inter_mode_probs;
        *(v41 + 13) = 0x1E1D191F51112E40;
        *(v37 - 263) = 0x6077B7EFE1BB6609;
        v42 = (v37 - 271);
        *(v37 - 255) = 41;
        *(v37 - 123) = -2066;
        *(v37 - 254) = 0xAAAC8E8E4A4D1021;
        *(v37 - 61) = -579109326;
        *(v37 - 240) = -30;
        *(v37 - 207) = 492134521;
        *(v37 - 223) = unk_27775D5E6;
        *(v37 - 239) = default_y_mode_prob;
        *(v37 - 171) = xmmword_27775D61A;
        *(v37 - 155) = unk_27775D62A;
        *(v37 - 139) = xmmword_27775D63A;
        *(v37 - 129) = *(&xmmword_27775D63A + 10);
        *(v37 - 203) = default_uv_mode_prob;
        *(v37 - 187) = unk_27775D60A;
        *(v37 - 113) = default_partition_prob;
        *(v37 - 97) = unk_27775D664;
        *(v37 - 81) = xmmword_27775D674;
        *(v37 - 63) = 96;
        *(v37 - 65) = 16416;
        *(v37 - 34) = unk_27775D6A3;
        *(v37 - 46) = unk_27775D697;
        *(v37 - 62) = default_mv_probs1;
        *(v37 - 1) = 16480;
        *(v37 - 18) = default_mv_probs2;
        *v37 = -2136964960;
        v37 = (v37 + 1905);
        *v42 = 0x90950322FF24A2EBLL;
        --v38;
      }

      while (v38);
      v35 = v55;
    }

    v35[25] = 0;
  }

  LGH_Syntax::loop_filter_params(this);
  LGH_Syntax::quantization_params(this);
  LGH_Syntax::segmentation_params(this);
  v43 = *(*(this + 10) + 92);
  v44 = -2;
  do
  {
    v45 = 64 << (v44++ + 2);
  }

  while (v45 < v43);
  v46 = -1;
  do
  {
    v47 = v43 >> (v46++ + 2);
  }

  while (v47 > 3);
  if (v44 + 1 <= v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v44 + 1;
  }

  while (v44 - v48 != -1)
  {
    ++v44;
    if (LGH_Syntax::get_bits(this, "increment_tile_cols_log2", 1u) != 1)
    {
      goto LABEL_68;
    }
  }

  v44 = v48;
LABEL_68:
  *(*(this + 10) + 64) = v44;
  v49 = LGH_Syntax::get_bits(this, "tile_rows_log2", 1u);
  if (v49 == 1)
  {
    v49 = LGH_Syntax::get_bits(this, "increment_tile_rows_log2", 1u) + 1;
  }

  *(*(this + 10) + 68) = v49;
  v50 = LGH_Syntax::get_bits(this, "header_size_in_bytes", 0x10u);
  v51 = *(this + 10);
  *(v51 + 2) = v50;
  if (!v50)
  {
    if ((*(this + 7886) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315138;
    v57 = "uncompressed_header";
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s: 0 byte header size\n";
    v10 = 12;
    goto LABEL_12;
  }

  v52 = *(v51 + 4);
  v53 = (v51 + 140);
  v54 = 8;
  result = 0;
  do
  {
    if (v52)
    {
      *(v53 - 8) = *(v51 + 76);
      *v53 = *(v51 + 80);
    }

    v52 >>= 1;
    ++v53;
    --v54;
  }

  while (v54);
  return result;
}