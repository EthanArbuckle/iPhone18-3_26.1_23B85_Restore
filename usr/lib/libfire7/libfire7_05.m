uint64_t BlueFin::GlPeNavGnssSpiderKF::GlPeNavGnssSpiderKF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 1531));
  result = BlueFin::GlPeNavGnssKF::GlPeNavGnssKF(a1, off_2A1F126A8, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, 1);
  *a1 = &unk_2A1F124D8;
  a1[1531] = &unk_2A1F12688;
  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::GlPeNavGnssKF(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  v35 = *MEMORY[0x29EDCA608];
  v18 = a1 + 8000;
  v19 = a1 + 2936;
  v20 = BlueFin::GlPeNavGnssKFIf::GlPeNavGnssKFIf(a1, a2 + 1, a3, a4);
  v21 = *a2;
  *v20 = *a2;
  *(a1 + *(v21 - 24)) = a2[5];
  *(a1 + 24) = 0;
  *(a1 + 26) = a13;
  v22 = a1 + 56;
  *(a1 + 48) = xmmword_298A43F30;
  *(a1 + 32) = a1 + 64;
  *(a1 + 40) = a1 + 1216;
  *(a1 + 1216) = 0;
  for (i = 8; i != 104; i += 8)
  {
    *(*(a1 + 40) + i) = v22;
    v22 += 96;
  }

  *(a1 + 1320) = 0;
  *(a1 + 1324) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1568) = 0xFF9222FF00000000;
  *(a1 + 1560) = 0;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1616) = a1 + 1628;
  *(a1 + 1624) = 19;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 0u;
  *(a1 + 1660) = 0u;
  *(a1 + 1676) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = a1 + 1716;
  *(a1 + 1712) = 19;
  *(a1 + 1716) = 0u;
  *(a1 + 1732) = 0u;
  *(a1 + 1748) = 0u;
  *(a1 + 1764) = 0u;
  *(a1 + 1780) = 0u;
  *(a1 + 1796) = 0x342200000;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = a1 + 1828;
  *(a1 + 1824) = 19;
  *(a1 + 1828) = 0u;
  *(a1 + 1844) = 0u;
  *(a1 + 1860) = 0u;
  *(a1 + 1876) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = a1 + 1916;
  *(a1 + 1912) = 19;
  *(a1 + 1976) = 0u;
  *(a1 + 1948) = 0u;
  *(a1 + 1964) = 0u;
  *(a1 + 1916) = 0u;
  *(a1 + 1932) = 0u;
  *(a1 + 1992) = a1 + 2004;
  *(a1 + 2000) = 19;
  *(a1 + 2004) = 0u;
  *(a1 + 2020) = 0u;
  *(a1 + 2036) = 0u;
  *(a1 + 2052) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = a1 + 2092;
  *(a1 + 2088) = 19;
  *(a1 + 2232) = 0;
  *(a1 + 2216) = 0u;
  *(a1 + 2092) = 0u;
  *(a1 + 2108) = 0u;
  *(a1 + 2124) = 0u;
  *(a1 + 2140) = 0u;
  *(a1 + 2154) = 0u;
  *(a1 + 2240) = a5;
  *(a1 + 2248) = a7;
  *(a1 + 2256) = a8;
  *(a1 + 2264) = a9;
  *(a1 + 2272) = a10;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2312) = -1;
  *(a1 + 2344) = 0;
  *(a1 + 2336) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2560) = 0u;
  *(a1 + 2544) = 0u;
  *(a1 + 2528) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2496) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2592) = a11;
  *(a1 + 2600) = a6;
  *(a1 + 2608) = a7;
  *(a1 + 2280) = 0;
  *(a1 + 2284) = -7200001;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2680) = 0x4103880000000000;
  *(a1 + 2688) = 0;
  *(a1 + 2696) = 0;
  *(a1 + 2704) = xmmword_298A43F40;
  *(a1 + 2720) = 0;
  *(a1 + 2728) = 0;
  *(a1 + 2736) = 0;
  *(a1 + 2744) = 0;
  *(a1 + 2752) = 0x40DFA40000000000;
  *(a1 + 2760) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2784) = 0u;
  *(a1 + 2768) = 0u;
  *(a1 + 2808) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2832) = 0u;
  *(a1 + 2816) = 0u;
  *(a1 + 2856) = a3;
  *(a1 + 2864) = a4;
  *(a1 + 2952) = a1 + 2964;
  *(a1 + 2960) = 19;
  *(a1 + 2888) = 0;
  *(a1 + 2872) = 0u;
  *(a1 + 2904) = 0x4082C00000000000;
  *(a1 + 2912) = vdupq_n_s64(0x4082C00000000000uLL);
  *(a1 + 2932) = 0;
  *v19 = xmmword_298A41E50;
  *(a1 + 2896) = 0;
  *(a1 + 2928) = 1142285679;
  *(a1 + 3024) = 0u;
  *(a1 + 2996) = 0u;
  *(a1 + 3012) = 0u;
  *(a1 + 2964) = 0u;
  *(a1 + 2980) = 0u;
  *(a1 + 4560) = 1064514355;
  bzero((a1 + 3040), 0x5F0uLL);
  *(a1 + 4568) = a1 + 4584;
  *(a1 + 4576) = 0x1000000000;
  *(a1 + 4584) = 0u;
  *(a1 + 4600) = 0u;
  *(a1 + 4616) = 0u;
  *(a1 + 4632) = 0u;
  *(a1 + 4648) = 0u;
  *(a1 + 4664) = 0u;
  *(a1 + 4680) = 0u;
  *(a1 + 4696) = 0u;
  *(a1 + 4712) = 0;
  *(a1 + 4760) = a10;
  *(a1 + 4768) = a7;
  *(a1 + 4720) = 0u;
  *(a1 + 4736) = 0u;
  *(a1 + 4752) = 1092479462;
  *(a1 + 4776) = a6;
  *(a1 + 4784) = a3;
  *(a1 + 4792) = a7;
  *(a1 + 4800) = xmmword_298A43F50;
  *(a1 + 4816) = 0;
  *(v19 + 1888) = 0;
  *(a1 + 4828) = 0;
  *(a1 + 4832) = xmmword_298A43F60;
  *(a1 + 4848) = 0x300002710;
  *(a1 + 4856) = 0;
  *(v19 + 1924) = 0;
  BlueFin::GlPeNavGnssResidMon::GlPeNavGnssResidMon(a1 + 4864, a3);
  *(a1 + 6448) = 0;
  *(a1 + 6584) = 0;
  *(a1 + 6720) = 0;
  *(a1 + 6856) = 0;
  *(a1 + 6232) = 0;
  *(a1 + 6240) = 0;
  *(a1 + 6248) = 0u;
  *(a1 + 6264) = 0u;
  *(a1 + 6280) = 0u;
  *(a1 + 6296) = 0u;
  *(a1 + 6312) = 0;
  *(a1 + 6864) = -7200001;
  *(v19 + 3932) = 0;
  *(a1 + 6876) = 0;
  *(a1 + 6872) = -7200001;
  *(a1 + 6888) = 0;
  *(v19 + 3960) = 0;
  *(a1 + 6904) = 0;
  *(a1 + 6912) = 0;
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 6920));
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 7448));
  *(a1 + 7984) = 0;
  *(a1 + 7976) = 0;
  *(a1 + 7992) = a1 + 8004;
  *v18 = 19;
  *(a1 + 8004) = 0u;
  *(a1 + 8020) = 0u;
  *(a1 + 8036) = 0u;
  *(a1 + 8052) = 0u;
  *(a1 + 8064) = 0u;
  *(v18 + 80) = 1;
  *(a1 + 8088) = a6;
  BlueFin::GlPePolaroid::GlPePolaroid(a1 + 8096, a3, a4, a5, a7, a1 + 4776, a1 + 4864, *(a1 + 26), 1);
  *(a1 + 10660) = a12;
  *(a1 + 10664) = 0;
  *(a1 + 10672) = 0x415854A640000000;
  *(v18 + 3760) = 8;
  *(a1 + 11640) = 0u;
  *(a1 + 11656) = 0u;
  *(a1 + 11672) = 0u;
  *(a1 + 11688) = 0u;
  *(a1 + 11704) = 0u;
  *(a1 + 11720) = 0u;
  *(a1 + 11736) = 0u;
  *(a1 + 11752) = 0;
  *(a1 + 11776) = 0;
  *(a1 + 11792) = 0;
  *(a1 + 11784) = 0;
  *(a1 + 11896) = v31;
  *(a1 + 11912) = v32;
  *(a1 + 11928) = v33;
  *(a1 + 11944) = v34;
  *(a1 + 11832) = 0uLL;
  *(a1 + 11848) = v29;
  *(a1 + 11864) = 0uLL;
  *(a1 + 11880) = v30;
  *(a1 + 11960) = 0x200000002;
  *(a1 + 11968) = 0;
  *(a1 + 12000) = 0;
  *(a1 + 12096) = 0x100000002;
  *(a1 + 12104) = 0;
  *(a1 + 12136) = 0;
  *(a1 + 12232) = 0x100000002;
  *(v18 + 3824) = 0;
  *(a1 + 11816) = 0x3FB99999A0000000;
  *(v18 + 3768) = 0;
  GlCustomLog(14, "%s sizeof(FLOAT_KF)=%d\n", "<NAVGNSSKF>", 8);
  BlueFin::GlPeNavGnssKF::Reset(a1, 3);
  *(a1 + 6904) = 0;
  *(a1 + 6912) = 0;
  v24 = *MEMORY[0x29EDCA608];
  return a1;
}

__n128 BlueFin::GlPeCoarseTime::GlPeCoarseTime(__n128 *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  a1[1].n128_u64[1] = a2;
  a1[2].n128_u64[0] = a3;
  a1[2].n128_u64[1] = a4;
  if (!a4)
  {
    DeviceFaultNotify("glpe_coarsetime.cpp", 65, "GlPeCoarseTime", "m_potSatAidInfo != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_coarsetime.cpp", 65, "m_potSatAidInfo != nullptr");
  }

  result.n128_u64[0] = 0xFFFFFFFF00000000;
  result.n128_u64[1] = 0xFFFFFFFF00000000;
  *a1 = result;
  a1[1].n128_u32[0] = -7200001;
  a1[1].n128_u16[2] = 0;
  return result;
}

unsigned __int16 *BlueFin::GlPeObjFactory::MakePropSigMeasArray(BlueFin::GlPeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(55, 1192, *this);
  if (!Memory)
  {
    return *(this + 7);
  }

  v3 = Memory;
  v4 = *(this + 4) + 1;
  *(this + 8) = BlueFin::GlMemAlloc::glAllocateMemory(56, 144 * v4, *this);
  v5 = BlueFin::GlMemAlloc::glAllocateMemory(57, 2 * v4, *this);
  *(this + 9) = v5;
  BlueFin::GlBigArray::GlBigArray((v3 + 576), *(this + 8), 144, 0, v3, 0x23Fu, v5, v4);
  *(this + 7) = v3;
  return v3;
}

BlueFin::stPePropSigMeas *BlueFin::stPePropSigMeas::stPePropSigMeas(BlueFin::stPePropSigMeas *this)
{
  *this = BlueFin::GlPeObjFactory::MakePropSigMeasArray(BlueFin::GlPeObjFactory::m_potGlPeObjFactory);
  *(this + 145) = this + 1172;
  *(this + 1168) = 19;
  *(this + 1172) = 0u;
  *(this + 1188) = 0u;
  *(this + 1204) = 0u;
  *(this + 1220) = 0u;
  *(this + 77) = 0u;
  BlueFin::GlMeas::GlMeas(this + 1248);
  *(this + 18408) = 19;
  *(this + 2300) = this + 18412;
  *(this + 18412) = 0u;
  *(this + 18428) = 0u;
  *(this + 18444) = 0u;
  *(this + 18460) = 0u;
  *(this + 18472) = 0u;
  bzero(this + 8, 0x47EuLL);
  return this;
}

uint64_t BlueFin::GlBigArray::Clear(uint64_t this)
{
  if (*(this + 30))
  {
    v1 = 0;
    v2 = *(this + 8);
    do
    {
      *(v2 + 2 * v1++) = -1;
    }

    while (v1 < *(this + 30));
  }

  if (*(this + 32))
  {
    v3 = 0;
    v4 = *(this + 16);
    do
    {
      *(v4 + 2 * v3) = v3;
      ++v3;
      v5 = *(this + 32);
    }

    while (v3 < v5);
    v6 = v5 - 1;
  }

  else
  {
    v6 = -1;
  }

  *(this + 34) = v6;
  return this;
}

uint64_t BlueFin::GlMeas::GlMeas(uint64_t this)
{
  *(this + 62) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *this = 0u;
  *(this + 16) = 0u;
  *(this + 70) = 65537;
  *(this + 74) = 2;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0;
  *(this + 112) = 255;
  *(this + 114) = 0;
  *(this + 116) = 0;
  *(this + 2704) = this + 128;
  *(this + 17120) = this + 2720;
  *(this + 17128) = 0xFFFFFFFFLL;
  *(this + 17136) = 12;
  v1 = 100;
  v2 = 136;
  *(this + 17140) = 0;
  do
  {
    v3 = (*(this + 17120) + v2);
    *(v3 - 136) = 0;
    *(v3 - 33) = -1;
    *(v3 - 64) = 575;
    *(v3 - 31) = 0;
    *(v3 - 60) = -1;
    *(v3 - 108) = 0;
    *(v3 - 116) = 0;
    *(v3 - 103) = 0;
    *(v3 - 84) = 0;
    *(v3 - 92) = 0;
    *(v3 - 9) = 0uLL;
    *(v3 - 7) = 0uLL;
    *(v3 - 5) = xmmword_298A31A70;
    *(v3 - 6) = 0;
    *(v3 - 20) = 0xBF80000000000000;
    *(v3 - 3) = 2139095039;
    *(v3 - 1) = 0;
    v2 += 144;
    *v3 = 0x38D1B71700000000;
    --v1;
  }

  while (v1);
  v4 = *(this + 2704) + 8;
  v5 = 14;
  do
  {
    *(v4 - 8) = 0;
    *(v4 - 4) = -1;
    *v4 = 575;
    *(v4 + 4) = 0;
    *(v4 + 8) = 0;
    v4 += 184;
    --v5;
  }

  while (v5);
  return this;
}

unsigned __int16 *BlueFin::GlPeObjFactory::MakeMePeSigMeasArray(BlueFin::GlPeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(52, 1192, *this);
  if (!Memory)
  {
    return *(this + 4);
  }

  v3 = Memory;
  v4 = *(this + 4) + 1;
  *(this + 5) = BlueFin::GlMemAlloc::glAllocateMemory(53, 280 * v4, *this);
  v5 = BlueFin::GlMemAlloc::glAllocateMemory(54, 2 * v4, *this);
  *(this + 6) = v5;
  BlueFin::GlBigArray::GlBigArray((v3 + 576), *(this + 5), 280, 0, v3, 0x23Fu, v5, v4);
  *(this + 4) = v3;
  return v3;
}

unsigned __int16 *BlueFin::GlPeObjFactory::MakePeGridMeasArray(BlueFin::GlPeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(68, 1192, *this);
  if (!Memory)
  {
    return *(this + 21);
  }

  v3 = Memory;
  v4 = *(this + 4) + 1;
  *(this + 22) = BlueFin::GlMemAlloc::glAllocateMemory(69, 208 * v4, *this);
  v5 = BlueFin::GlMemAlloc::glAllocateMemory(70, 2 * v4, *this);
  *(this + 23) = v5;
  BlueFin::GlBigArray::GlBigArray((v3 + 576), *(this + 22), 208, 0, v3, 0x23Fu, v5, v4);
  *(this + 21) = v3;
  return v3;
}

uint64_t BlueFin::GlPeFixStatus::GlPeFixStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a1 + 7152;
  bzero(a1, 0x1CF8uLL);
  memset((a1 + 7416), 248, 24);
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0u;
  *(a1 + 7632) = 0u;
  *(a1 + 7648) = 0u;
  *(a1 + 7664) = 0u;
  *(a1 + 7680) = 0u;
  *(a1 + 7696) = 0u;
  *(a1 + 7712) = 0u;
  *(a1 + 7728) = 0u;
  *(a1 + 7744) = 0u;
  *(a1 + 7760) = 0u;
  *(a1 + 7776) = 0u;
  *(a1 + 7792) = 0u;
  *(a1 + 7808) = 0u;
  *(a1 + 7824) = 0u;
  *(a1 + 7840) = a2;
  *(a1 + 7848) = a3;
  *(a1 + 7856) = a4;
  *(a1 + 7864) = a5;
  *(a1 + 9024) = a1 + 9088;
  *(a1 + 9032) = a1 + 7872;
  *(a1 + 9040) = a1 + 9888;
  *(a1 + 9048) = 0x23F000000000008;
  *(v17 + 1904) = 100;
  BlueFin::GlBigArray::Clear(a1 + 9024);
  *(a1 + 10088) = a1;
  *(a1 + 10096) = a5;
  *(a1 + 10112) = a6;
  *(a1 + 10120) = a7;
  *(a1 + 10128) = 0;
  *(a1 + 10136) = a8;
  *(a1 + 10144) = a9;
  *(v17 + 3000) = 0;
  *(v17 + 3048) = 1;
  *(v17 + 3132) = 0;
  *(a1 + 10288) = 0xA00000000;
  *(v17 + 3144) = 1;
  *(v17 + 3146) = 0;
  *(a1 + 10204) = 0u;
  *(a1 + 10220) = 0u;
  *(a1 + 10236) = 0u;
  *(a1 + 10252) = 0u;
  *(a1 + 10268) = 0u;
  BlueFin::GlPeFixStatus::InitFixStatus(a1);
  *v17 = 0;
  *(a1 + 7228) = 0;
  *(a1 + 7236) = 0;
  *(a1 + 7240) = 0;
  *(a1 + 7160) = 0;
  *(a1 + 7176) = 0;
  *(a1 + 7168) = 0;
  *(a1 + 7184) = 0;
  *(a1 + 7188) = 0;
  *(a1 + 7193) = 0;
  *(a1 + 7204) = 0;
  *(a1 + 7212) = 0;
  *(a1 + 7216) = 0;
  *(a1 + 7224) = 0;
  *(a1 + 10168) = 0;
  *(a1 + 10184) = 0;
  *(a1 + 10176) = 0;
  *(a1 + 10160) = -7200001;
  *(a1 + 10192) = 0;
  return a1;
}

double BlueFin::GlPeFixStatus::InitFixStatus(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 4096);
    bzero(a1, 0x1CF8uLL);
    memset((a1 + 7416), 248, 24);
    *(a1 + 7440) = 0u;
    *(a1 + 7456) = 0u;
    *(a1 + 7472) = 0u;
    *(a1 + 7488) = 0u;
    *(a1 + 7504) = 0u;
    *(a1 + 7520) = 0u;
    *(a1 + 7536) = 0u;
    *(a1 + 7552) = 0u;
    *(a1 + 7568) = 0u;
    *(a1 + 7584) = 0u;
    *(a1 + 7600) = 0u;
    *(a1 + 7616) = 0u;
    *(a1 + 7632) = 0u;
    *(a1 + 7648) = 0u;
    *(a1 + 7664) = 0u;
    *(a1 + 7680) = 0u;
    *(a1 + 7696) = 0u;
    *(a1 + 7712) = 0u;
    *(a1 + 7728) = 0u;
    *(a1 + 7744) = 0u;
    *(a1 + 7760) = 0u;
    *(a1 + 7776) = 0u;
    *(a1 + 7792) = 0u;
    *(a1 + 7808) = 0u;
    *(a1 + 7824) = 0u;
    *(a1 + 4048) = 0;
    v2[96] = 0;
    v3 = (a1 + 5112);
    v2[112] = 0;
    bzero((a1 + 4280), 0x340uLL);
    v4 = 4;
    do
    {
      v3[2] = 0uLL;
      v3[3] = 0uLL;
      *v3 = 0uLL;
      v3[1] = 0uLL;
      v3[16] = 0uLL;
      v3[17] = 0uLL;
      v3[18] = 0uLL;
      v3[19] = 0uLL;
      v3[44] = 0uLL;
      v3[45] = 0uLL;
      v3[46] = 0uLL;
      v3[47] = 0uLL;
      v3 += 4;
      --v4;
    }

    while (v4);
    *(a1 + 5656) = 0u;
    *(a1 + 5672) = 0u;
    *(a1 + 5624) = 0u;
    *(a1 + 5640) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 4060) = 0;
    *(a1 + 4224) = 0;
    *(a1 + 4168) = 0;
    *(a1 + 4120) = 0x4058C00000000000;
    *(a1 + 4128) = vdupq_n_s64(0x4058C00000000000uLL);
    *(a1 + 6912) = 0;
    *(a1 + 4144) = vdupq_n_s64(0x40C3878000000000uLL);
    v2[162] = 0;
    *(a1 + 4260) = 0;
    v2[168] = 0;
    *(a1 + 4268) = 0;
    v2[176] = 0;
    *(a1 + 6952) = 0x40C3878000000000;
    *(a1 + 6960) = xmmword_298A44850;
    *(a1 + 6976) = 0x4066800000000000;
    *(a1 + 7016) = 0;
    *(a1 + 6984) = 0u;
    *(a1 + 7000) = 0;
    *(a1 + 7296) = -1;
    *(a1 + 7300) = 0;
    *(a1 + 4051) = 0;
    v2[80] = 0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a1 + 7352) = result;
    v2[3264] = 0;
  }

  return result;
}

BlueFin::GlNvMemImpl *BlueFin::GlNvMemImpl::GlNvMemImpl(BlueFin::GlNvMemImpl *this, BlueFin::GlPeTimeManager *a2, BlueFin::GlPeAsstMgr *a3, BlueFin::GlPeAsstPosMgr *a4, BlueFin::GlPeSvVisibilityCache *a5, BlueFin::GlPeGpsQzssEphMgr *a6, BlueFin::GlPeAlmMgr *a7, BlueFin::GlPeLtoMgr *a8, __int128 a9, BlueFin::GlPeMsmtMgr *a10, BlueFin::GlPeEngineCallBacks *a11, BlueFin::GlSettingsImpl *a12, BlueFin::GlPeContextMgr *a13, BlueFin::GlPeSensorsMgr *a14, const BlueFin::GlSettingsImpl *a15, BlueFin::GlPeSvHealthMgr *a16, BlueFin::GlPeRtiRequestor *a17, BlueFin::GlPeGnssHwBiasMgr *a18, BlueFin::GlPeClkCalibrateMgr *a19)
{
  *this = &unk_2A1F11F30;
  *(this + 1) = 0xFFFFFFFF00000000;
  *(this + 2) = a11;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a7;
  *(this + 8) = a8;
  *(this + 72) = a9;
  *(this + 11) = a10;
  *(this + 12) = a13;
  *(this + 13) = a14;
  *(this + 14) = a15;
  *(this + 15) = a16;
  *(this + 16) = a17;
  *(this + 17) = a18;
  *(this + 18) = a19;
  *(this + 76) = 0;
  *(this + 39) = 0;
  BlueFin::GlUtlGlSysLogEntryCodec::GlUtlGlSysLogEntryCodec((this + 1216));
  *(this + 11833) = 0u;
  *(this + 739) = 0u;
  *(this + 738) = 0u;
  *(this + 737) = 0u;
  *(this + 736) = 0u;
  *(this + 735) = 0u;
  *(this + 734) = 0u;
  *(this + 11852) = 0;
  *(this + 2964) = 0;
  *(this + 11859) = 0;
  *(this + 11864) = 0u;
  *(this + 1485) = a12;
  *(this + 5944) = 0;
  *(this + 11890) = 0;
  *(this + 11896) = 0u;
  *(this + 2973) = 1;
  *(this + 1489) = 0;
  *(this + 2980) = 0;
  *(this + 11924) = -1;
  *(this + 5963) = 0;
  bzero(this + 160, 0x41AuLL);
  return this;
}

uint64_t (*(*BlueFin::GlPeCntinMgr::idle(void *a1, unsigned __int8 *a2))(void *a1, unsigned __int8 *a2))()
{
  v2 = 0;
  v3 = *a2;
  if ((v3 - 2) >= 2 && v3 != 69)
  {
    if (v3 == 67)
    {
      v4 = *(a1[16] + 32028);
      v5 = v4 > 7;
      v6 = (1 << v4) & 0xAC;
      if (v5 || v6 == 0)
      {
        v9 = (a1[16] + 32028);
        *(a1[16] + 32040) = 1;
        *v9 = 2;
      }

      BlueFin::QHsm::tran(a1, BlueFin::GlPeCntinMgr::wai4cntinStart, "&GlPeCntinMgr::wai4cntinStart");
      return 0;
    }

    else
    {
      return BlueFin::GlPeCntinMgr::on;
    }
  }

  return v2;
}

uint64_t (*BlueFin::GlPeCntinMgr::on(void *a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 > 0x43)
  {
    if (v3 == 68)
    {
      v11 = a1[17];
      if (*(v11 + 8) != 4)
      {
        return 0;
      }

      v12 = a1[16];
      v13 = *(v12 + 32028);
      v14 = v13 > 7;
      v15 = (1 << v13) & 0xB8;
      if (v14 || v15 == 0)
      {
        *(v12 + 32040) = 1;
        *(v12 + 32028) = 0x400000004;
      }

      BlueFin::GlReqSm::SetRefFreqStatus(v12, v11);
      goto LABEL_13;
    }

    if (v3 == 69)
    {
      v8 = a1[15];
      v9 = *(v8 + 120);
      if (v9)
      {
        v9(*(v8 + 8), 5);
      }

      v6 = a1[16];
      v7 = 5;
      goto LABEL_12;
    }
  }

  else
  {
    if (v3 - 2 < 2)
    {
      return 0;
    }

    if (v3 == 66)
    {
      v4 = a1[15];
      v5 = *(v4 + 120);
      if (v5)
      {
        v5(*(v4 + 8), 5);
      }

      v6 = a1[16];
      v7 = 4;
LABEL_12:
      BlueFin::GlReqSm::SetCntinMeas(v6, v7, 0.0, 0.0);
LABEL_13:
      BlueFin::QHsm::tran(a1, BlueFin::GlPeCntinMgr::idle, "&GlPeCntinMgr::idle");
      return 0;
    }
  }

  return BlueFin::QHsm::top;
}

uint64_t BlueFin::GlPeSensStats::reset(uint64_t this)
{
  v1 = 0;
  v2 = 0;
  *(this + 160) = 0;
  *(this + 168) = 0xFFFFFFFF00000000;
  *(this + 192) = 0;
  *(this + 584) = 0;
  *(this + 586) = 0;
  *(this + 588) = 0;
  *(this + 592) = 0;
  *(this + 176) = 0;
  *(this + 182) = 0;
  v3 = 488;
  v4 = *(this + 8);
  v5 = *(this + 16);
  do
  {
    v6 = this + v2;
    *(v6 + 232) = 0uLL;
    *(v6 + 216) = 0uLL;
    *(v6 + 200) = 0uLL;
    *(v6 + 248) = 0;
    *(v6 + 256) = 0x3FF0000000000000;
    v7 = (this + v2 + 264);
    *v7 = 0uLL;
    v7[1] = 0uLL;
    v8 = (this + v3);
    *v8 = 0;
    v8[3] = v4;
    v8[6] = v4;
    v8[9] = v4;
    v9 = (this + v2 + 600);
    *(v6 + 648) = 0;
    v9[1] = 0uLL;
    v9[2] = 0uLL;
    *v9 = 0uLL;
    *(v6 + 656) = 0x3FF0000000000000;
    v10 = (this + v2 + 664);
    *v10 = 0uLL;
    v10[1] = 0uLL;
    v11 = (this + v1);
    v11[222] = 0;
    v8[52] = v5;
    v8[55] = v5;
    v8[58] = 0;
    v2 += 96;
    v11[244] = 0;
    v1 += 4;
    v3 += 8;
    v11[247] = 0;
  }

  while (v2 != 288);
  *(this + 1000) = 0;
  return this;
}

uint64_t BlueFin::GlPeSensorsMgr::GlPeSensorsMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 1;
  *(a1 + 1) = 0x101000000000000;
  *(a1 + 9) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 257;
  *(a1 + 20) = 0;
  *(a1 + 24) = &unk_2A1F17B20;
  *(a1 + 32) = a1;
  *(a1 + 48) = 0;
  *(a1 + 44) = 0;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0;
  *(a1 + 176) = 0x6400000000;
  *(a1 + 284) = 0;
  *(a1 + 40) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 189) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 275) = 0;
  BlueFin::SensorsData::SensorsData((a1 + 296));
  *(a1 + 2264) = &unk_2A1F17C48;
  *(a1 + 2272) = a1;
  *(a1 + 2292) = 0;
  *(a1 + 2280) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2296) = a2;
  *(a1 + 2304) = a3;
  *(a1 + 2312) = a4;
  *(a1 + 2320) = a5;
  *(a1 + 2376) = 0;
  *(a1 + 2380) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2400) = 0;
  *(a1 + 2392) = 0;
  *(a1 + 2408) = 0;
  return a1;
}

uint64_t BlueFin::GlPeContextMgr::GlPeContextMgr(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = xmmword_298A41610;
  *(a1 + 24) = xmmword_298A41610;
  BlueFin::GlPeEnvironmentMonitor::GlPeEnvironmentMonitor((a1 + 64));
  *(a1 + 1805) = a3;
  *(a1 + 1816) = a2;
  *(a1 + 1856) = 0;
  *(a1 + 1860) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1908) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1916) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0;
  *(a1 + 1944) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1894) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0;
  *(a1 + 1845) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1982) = 0;
  *(a1 + 1792) = 0x100000000;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1804) = 0;
  *(a1 + 1990) = 0;
  return a1;
}

BlueFin::GlPeEnvironmentMonitor *BlueFin::GlPeEnvironmentMonitor::GlPeEnvironmentMonitor(BlueFin::GlPeEnvironmentMonitor *this)
{
  *this = 0;
  *(this + 3) = 0;
  v2 = this + 28;
  *(this + 2) = v2;
  *(this + 24) = 19;
  *(this + 157) = 1109393408;
  *(this + 316) = 0;
  bzero(v2, 0x4CAuLL);
  v3 = 0;
  *(this + 2) = 1101004800;
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  *(this + 330) = 0;
  *(this + 210) = this + 1344;
  *(this + 1272) = 0u;
  *(this + 1688) = 0u;
  *(this + 1703) = 0;
  do
  {
    v4 = *(this + 210) + v3;
    *v4 = 0;
    *(v4 + 4) = 0;
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
    v3 += 28;
  }

  while (v3 != 336);
  return this;
}

BlueFin::GlPeClkCalibrateMgr *BlueFin::GlPeClkCalibrateMgr::GlPeClkCalibrateMgr(BlueFin::GlPeClkCalibrateMgr *this, BlueFin::GlPeTimeManager *a2, BlueFin::GlSettingsImpl *a3)
{
  v4 = 0;
  *(this + 64) = 0;
  *(this + 9) = "CAL";
  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 140) = this + 96;
  *(this + 165) = this + 1152;
  do
  {
    v5 = *(this + 165) + v4;
    *(v5 + 12) = 0;
    *v5 = v5 + 12;
    *(v5 + 8) = 2;
    v4 += 24;
  }

  while (v4 != 168);
  v6 = 0;
  *(this + 189) = this + 1344;
  do
  {
    v7 = *(this + 189) + v6;
    *(v7 + 12) = 0;
    *v7 = v7 + 12;
    *(v7 + 8) = 2;
    v6 += 24;
  }

  while (v6 != 168);
  v8 = 0;
  *(this + 213) = this + 1536;
  do
  {
    v9 = *(this + 213) + v8;
    *(v9 + 12) = 0;
    *v9 = v9 + 12;
    *(v9 + 8) = 2;
    v8 += 24;
  }

  while (v8 != 168);
  BlueFin::GlPeClkCalibrateMgr::Clear(this);
  return this;
}

void BlueFin::GlPeClkCalibrateMgr::Clear(BlueFin::GlPeClkCalibrateMgr *this)
{
  for (i = 0; i != 8; ++i)
  {
    *(v19 + i) = ~(-1 << BlueFin::GlImplGnss::m_aucNumSatsPerImplGnss[i]);
  }

  v3 = 0;
  v4 = v19[1];
  *this = v19[0];
  *(this + 1) = v4;
  v5 = v19[3];
  *(this + 2) = v19[2];
  *(this + 3) = v5;
  *(this + 64) = 0;
  do
  {
    v6 = *(this + 140) + v3;
    *v6 = &unk_2A1F0EE98;
    *(v6 + 8) = 7;
    *(v6 + 12) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v3 += 32;
  }

  while (v3 != 1024);
  v7 = (*(this + 165) + 8);
  v8 = 7;
  do
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v7 += 24;
    bzero(v9, ((4 * v10 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v8;
  }

  while (v8);
  v11 = (*(this + 189) + 8);
  v12 = 7;
  do
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    v11 += 24;
    bzero(v13, ((4 * v14 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v12;
  }

  while (v12);
  v15 = (*(this + 213) + 8);
  v16 = 7;
  do
  {
    v17 = *(v15 - 1);
    v18 = *v15;
    v15 += 24;
    bzero(v17, ((4 * v18 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v16;
  }

  while (v16);
}

uint64_t BlueFin::GlPosEng::InitMeasEng(BlueFin::GlPosEng *this)
{
  v1 = MEMORY[0x2A1C7C4A8](this);
  __dst[1785] = *MEMORY[0x29EDCA608];
  if ((*(**(v1 + 16) + 1064))(*(v1 + 16)))
  {
    v2 = v1 + 370648;
  }

  else
  {
    v3 = *(v1 + 375200);
    v4 = *(v1 + 24);
    v5 = (*(**(v1 + 32) + 88))(*(v1 + 32));
    v6 = (*(**(v1 + 32) + 96))(*(v1 + 32));
    v7 = *(v1 + 374912);
    v8 = *(v1 + 16);
    v9 = *(v8 + 32);
    *(v3 + 6536) = v1;
    v10 = *(v3 + 808) != 0;
    LODWORD(v8) = *(v8 + 272);
    __dst[0] = v4;
    __dst[1] = (v3 + 6520);
    __dst[2] = v5;
    __dst[3] = v6;
    __dst[4] = __PAIR64__(v8, v9);
    LODWORD(__dst[5]) = 188;
    BYTE4(__dst[5]) = v10;
    BYTE5(__dst[5]) = v7;
    HIWORD(__dst[5]) = 257;
    LOBYTE(__dst[6]) = 1;
    v11 = BlueFin::GlMeIf::Instance(__dst);
    v2 = v3 + 6544;
    *(v3 + 6560) = v11;
  }

  *(v1 + 126456) = v2;
  *(v1 + 132536) = v2;
  *(v1 + 121224) = v2;
  *(v1 + 40) = v2;
  *(v1 + 245488) = v2;
  v12 = *(v1 + 16);
  v13 = *(v12 + 11564);
  v14 = *(v12 + 26054);
  v15 = *(v12 + 11567);
  v16 = *(v12 + 11568);
  v17 = *(v12 + 11572);
  v18 = *(v12 + 11576);
  v19 = *(v12 + 11580);
  v20 = *(v12 + 11584);
  v21 = *(v12 + 11585);
  memcpy(__dst, (v12 + 11588), 0x37C8uLL);
  BlueFin::GlReqSm::EnableLowPower((v1 + 126144), v13, v14);
  BlueFin::GlPePpsGen::SetPpsSettings((v1 + 132488), v15, v16, v17, v18, v19);
  BlueFin::GlPosEng::SetFlightMode(v1, v20, 1);
  BlueFin::GlPeAsstMgr::SetAidMask(v1 + 224, v21, __dst);
  result = (*(*v1 + 408))(v1, *(*(v1 + 16) + 26312), *(*(v1 + 16) + 26320));
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

BlueFin::GlDineCtrl *BlueFin::GlMeIf::Instance(uint64_t (**a1)(uint64_t))
{
  HeapSize = BlueFin::GlMeObjFactory::GetHeapSize(a1);
  GlCustomLog(14, "ME SIZE %d\n", HeapSize);
  v3 = BlueFin::GlMeObjFactory::Instance(a1);

  return BlueFin::GlMeObjFactory::MakeGlDineCtrl(v3);
}

uint64_t BlueFin::GlMeObjFactory::Instance(uint64_t (**a1)(uint64_t))
{
  v1 = BlueFin::GlMeObjFactory::m_ptObjFactory;
  if (!BlueFin::GlMeObjFactory::m_ptObjFactory)
  {
    if (a1)
    {
      Memory = BlueFin::GlMemAlloc::glAllocateMemory(3, 400, a1[2]);
      if (!Memory)
      {
        DeviceFaultNotify("glmeobjfact.cpp", 146, "Instance", "pBuf != nullptr");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmeobjfact.cpp", 146, "pBuf != nullptr");
      }

      v1 = Memory;
      *(Memory + 49) = 0xA5A5A5A5A5A5A5A5;
      *&v4 = 0xA5A5A5A5A5A5A5A5;
      *(&v4 + 1) = 0xA5A5A5A5A5A5A5A5;
      *(Memory + 248) = v4;
      *(Memory + 232) = v4;
      *(Memory + 216) = v4;
      *(Memory + 200) = v4;
      *(Memory + 184) = v4;
      *(Memory + 168) = v4;
      *(Memory + 152) = v4;
      *(Memory + 136) = v4;
      *(Memory + 120) = v4;
      *(Memory + 104) = v4;
      *(Memory + 88) = v4;
      *(Memory + 72) = v4;
      *(Memory + 56) = v4;
      *(Memory + 40) = v4;
      *(Memory + 24) = v4;
      *(Memory + 8) = v4;
      *(Memory + 360) = v4;
      *(Memory + 376) = v4;
      *(Memory + 328) = v4;
      *(Memory + 344) = v4;
      *(Memory + 296) = v4;
      *(Memory + 312) = v4;
      *(Memory + 264) = v4;
      *(Memory + 280) = v4;
      *Memory = &unk_2A1F0B988;
      v5 = *a1;
      v6 = *(a1 + 1);
      v7 = *(a1 + 2);
      *(Memory + 7) = a1[6];
      *(Memory + 40) = v7;
      *(Memory + 24) = v6;
      *(Memory + 8) = v5;
      *(Memory + 4) = 0u;
      *(Memory + 5) = 0u;
      *(Memory + 6) = 0u;
      *(Memory + 7) = 0u;
      *(Memory + 8) = 0u;
      *(Memory + 9) = 0u;
      *(Memory + 10) = 0u;
      *(Memory + 11) = 0u;
      *(Memory + 12) = 0u;
      *(Memory + 13) = 0u;
      *(Memory + 14) = 0u;
      *(Memory + 15) = 0u;
      *(Memory + 16) = 0u;
      *(Memory + 17) = 0u;
      *(Memory + 18) = 0u;
      *(Memory + 19) = 0u;
      *(Memory + 20) = 0u;
      *(Memory + 21) = 0u;
      *(Memory + 44) = 0;
      *(Memory + 45) = &unk_2A1F09610;
      *(Memory + 46) = 0;
      *(Memory + 47) = 0;
      *(Memory + 48) = 0;
      *(Memory + 391) = 0;
      BlueFin::GlArray::Clear((Memory + 360));
      *(v1 + 360) = &unk_2A1F0B9B8;
      BlueFin::GlMeObjFactory::m_ptObjFactory = v1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

BlueFin::GlDineCtrl *BlueFin::GlMeObjFactory::MakeGlDineCtrl(BlueFin::GlMeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(2, 184512, *(this + 3));
  if (!Memory)
  {
    return *(this + 8);
  }

  result = BlueFin::GlDineCtrl::GlDineCtrl(Memory, *(this + 1), *(this + 2), v3, v4, *(this + 53), *(this + 10), *(this + 52));
  *(this + 8) = result;
  return result;
}

BlueFin::GlMeMeasAidFilter *BlueFin::GlMeMeasAidFilter::GlMeMeasAidFilter(BlueFin::GlMeMeasAidFilter *this, BlueFin::GlPeIf *a2, char a3, int a4)
{
  *this = &unk_2A1F0D848;
  *(this + 8) = a3;
  *(this + 2) = a2;
  v8 = (this + 32);
  v9 = (this + 10624);
  BlueFin::GlMeWinMgr::GlMeWinMgr((this + 32), (this + 10624), a4);
  BlueFin::GlMeMsmtMgr::GlMeMsmtMgr(v9, (this + 9344), a2, v8, a3, a4);
  BlueFin::GlMeMsmtHolder::GlMeMsmtHolder(this + 11680, a2, v9, v8, this + 29120);
  *(this + 3636) = &unk_2A1F0D7B8;
  *(this + 3637) = this;
  *(this + 3638) = &unk_2A1F0D650;
  *(this + 3639) = this;
  *(this + 3640) = &unk_2A1F0D998;
  *(this + 3641) = this;
  *(this + 7284) = 0;
  *(this + 29140) = 0;
  *(this + 3643) = &unk_2A1F0D748;
  *(this + 3644) = this;
  *(this + 3645) = &unk_2A1F0D938;
  *(this + 3646) = this;
  *(this + 3647) = &unk_2A1F0D8D8;
  *(this + 3648) = this;
  BlueFin::GlMeMeasSelfAidFilter::m_potWinMgr = v8;
  BlueFin::GlMeMeasSelfAidFilter::m_potMsmtMgr = v9;
  bzero(BlueFin::GlMeMeasSelfAidFilter::m_otSetMsmtSignalIds, ((4 * byte_2A18BA410 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  return this;
}

void sub_2987FBE10(_Unwind_Exception *a1)
{
  *(v1 + 32) = &unk_2A1F0E3F8;
  *(v1 + 48) = &unk_2A1F0E368;
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeMiniKF::GlMeMiniKF(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 264);
  *a1 = &unk_2A1F0E1D0;
  *(a1 + 8) = a2;
  v4 = a1 + 16;
  v5 = (*(*a2 + 48))(a2);
  v6 = v5 * (*(**(a1 + 8) + 48))(*(a1 + 8));
  v7 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  v8 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 72) = v6;
  *(a1 + 80) = 0x3D75FD7FE0000000;
  *(a1 + 88) = v7 * v8;
  *(a1 + 96) = 0x3D023D5504170729;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 48) = xmmword_298A3AC20;
  *(a1 + 16) = &unk_2A1F0E260;
  *(a1 + 104) = 0;
  v9 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 168) = 0x3E90C6F7A0B5ED8DLL;
  *(a1 + 176) = v9 / 1000.0;
  *(a1 + 184) = xmmword_298A3AC30;
  *(a1 + 216) = -1;
  *(a1 + 224) = -1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = &unk_2A1F0E300;
  *(a1 + 136) = xmmword_298A3AC40;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1;
  *(a1 + 152) = 0xBFF0000000000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = v4;
  *(a1 + 232) = 1;
  v10 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 296) = 0x3E90C6F7A0B5ED8DLL;
  *(a1 + 304) = v10 / 1000.0;
  v3[3] = xmmword_298A3AC30;
  *(a1 + 344) = -1;
  *(a1 + 352) = -1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = &unk_2A1F0E300;
  *v3 = xmmword_298A3AC40;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = v4;
  *(a1 + 360) = 1;
  v11 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 424) = 0x3E90C6F7A0B5ED8DLL;
  *(a1 + 432) = v11 / 1000.0;
  *(a1 + 440) = 0x3E90C6F7A0B5ED8DLL;
  *(a1 + 448) = 0xBFF0000000000000;
  *(a1 + 472) = -1;
  *(a1 + 480) = -1;
  *(a1 + 368) = &unk_2A1F0E300;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0x3E90C6F7A0B5ED8DLL;
  *(a1 + 416) = 0;
  *(a1 + 420) = 1;
  *(a1 + 400) = xmmword_298A2F6C0;
  *(a1 + 456) = 0;
  *(a1 + 464) = v4;
  *(a1 + 488) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = *(a1 + 168);
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1;
  *(a1 + 152) = *(a1 + 192);
  *(a1 + 200) = 0;
  *(a1 + 232) = 1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = *(a1 + 296);
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 280) = *(a1 + 320);
  *(a1 + 328) = 0;
  *(a1 + 360) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a1 + 72);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 56) = *(a1 + 96);
  *(a1 + 104) = 0;
  return a1;
}

BlueFin::GlMeMsmtMgr *BlueFin::GlMeMsmtMgr::GlMeMsmtMgr(BlueFin::GlMeMsmtMgr *this, BlueFin::GlMeMiniKF *a2, BlueFin::GlPeIf *a3, BlueFin::GlMeWinMgr *a4, char a5, int a6)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  *(this + 100) = 0u;
  *(this + 11) = this + 100;
  *(this + 96) = 19;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = a3;
  *(this + 23) = a2;
  *(this + 24) = a4;
  *(this + 50) = 0;
  *(this + 52) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 240) = 0;
  *(this + 29) = 0;
  *(this + 61) = -1;
  *(this + 124) = 575;
  *(this + 63) = 0;
  *(this + 128) = -1;
  *(this + 273) = 0;
  *(this + 260) = 0;
  *(this + 268) = 0;
  *(this + 284) = 0;
  *(this + 292) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = xmmword_298A31A70;
  *(this + 44) = 0;
  *(this + 45) = 0x7F7FFFFFBF800000;
  *(this + 46) = 0;
  *(this + 47) = 0x38D1B71700000000;
  *(this + 93) = &unk_2A1F09610;
  *(this + 94) = this + 384;
  *(this + 95) = this + 784;
  *(this + 96) = this + 803;
  *(this + 194) = 120;
  *(this + 390) = 4897;
  *(this + 782) = 3;
  BlueFin::GlArray::Clear(this + 744);
  *(this + 101) = this + 820;
  *(this + 816) = 19;
  *(this + 820) = 0u;
  *(this + 836) = 0u;
  *(this + 852) = 0u;
  *(this + 868) = 0u;
  *(this + 55) = 0u;
  *(this + 112) = BlueFin::GlMeObjFactory::MakeMsmtArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(this + 904) = 0;
  *(this + 120) = a3;
  *(this + 468) = 0;
  *(this + 924) = -1;
  *(this + 233) = -1;
  *(this + 940) = -1;
  *(this + 948) = 0xFFFFFFFFLL;
  *(this + 114) = -1;
  *(this + 230) = -1;
  *(this + 121) = 0;
  *(this + 1001) = 0;
  *(this + 1012) = a5;
  *(this + 255) = a6;
  *(this + 256) = *(BlueFin::GlMeObjFactory::m_ptObjFactory + 44);
  BlueFin::GlMeMsmtMgr::Clear(this);
  GlCustomLog(127, "Size,m_otMeClkMeas,%u\n", 32);
  GlCustomLog(127, "Size,m_otMeSigMeas,%u\n", 144);
  GlCustomLog(127, "Size,m_otMsmtArray,%u\n", 40);
  GlCustomLog(127, "Size,m_otMsmtWaasArray,%u\n", 40);
  GlCustomLog(127, "Size,m_otMeFrameAidMgr,%u\n", 56);
  return this;
}

void BlueFin::GlMeMsmtMgr::Clear(BlueFin::GlMeMsmtMgr *this)
{
  BlueFin::GlArray::Clear(this + 744);
  BlueFin::GlBigArray::Clear(*(this + 112));
  *(this + 468) = 0;
  *(this + 924) = -1;
  *(this + 233) = -1;
  *(this + 940) = -1;
  *(this + 948) = 0xFFFFFFFFLL;
  *(this + 114) = -1;
  *(this + 230) = -1;
  *(this + 502) = 0;
  *(this + 252) = 0;
  bzero(*this, ((4 * *(this + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(this + 11), ((4 * *(this + 96) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(this + 254) = 0;
  *(this + 249) = -1020657664;
  *(this + 1002) = 0;
  *(this + 1000) = 0;

  memset_pattern16(this + 976, &memset_pattern_0, 0x14uLL);
}

uint64_t BlueFin::GlMeSrdTransactionManager::GlMeSrdTransactionManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1F0CF50;
  *(a1 + 8) = 1;
  v7 = a1 + 16;
  *(a1 + 16) = &unk_2A1F0CF18;
  *(a1 + 24) = a1;
  v8 = a1 + 96;
  *(a1 + 32) = &unk_2A1F0CEA0;
  *(a1 + 40) = v8;
  *(a1 + 48) = a1 + 17112;
  *(a1 + 56) = a3;
  *(a1 + 64) = 1;
  BlueFin::GlMeSrdPacketManager::GlMeSrdPacketManager(v8, v7, a3, a4);
  *(a1 + 17024) = a2;
  *(a1 + 17032) = a3;
  *(a1 + 17040) = 0u;
  *(a1 + 17056) = 0u;
  *(a1 + 17072) = 0u;
  *(a1 + 17088) = 0u;
  *(a1 + 17104) = 0;
  *(a1 + 17112) = &unk_2A1F0D168;
  *(a1 + 17120) = 0;
  *(a1 + 17128) = a3;
  *(a1 + 17272) = &unk_2A1F0D098;
  *(a1 + 17280) = 0;
  *(a1 + 17288) = a3;
  *(a1 + 17296) = a1;
  return a1;
}

uint64_t BlueFin::GlMeSrdPacketManager::GlMeSrdPacketManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 40) = 0;
  v6 = a1 + 4096;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0CDD8;
  *(a1 + 112) = a4;
  *(a1 + 120) = a3;
  *(a1 + 128) = a2;
  *(a1 + 4232) = 0;
  *(a1 + 4236) = -16777215;
  *(a1 + 6504) = a1 + 4240;
  *(a1 + 6514) = 0x131101010000;
  *(a1 + 6512) = 0;
  *(a1 + 6522) = 1000;
  *(a1 + 13848) = a1 + 6676;
  *(a1 + 13856) = a1 + 6676;
  *(a1 + 13864) = a1 + 6676;
  *(a1 + 13872) = 0;
  *(a1 + 13880) = 0u;
  *(a1 + 16800) = a1 + 13920;
  *(a1 + 16896) = a1 + 16832;
  do
  {
    v7 = (*(a1 + 16800) + v5);
    v7[4] = 0uLL;
    v7[5] = 0uLL;
    v7[2] = 0uLL;
    v7[3] = 0uLL;
    *v7 = 0uLL;
    v7[1] = 0uLL;
    v5 += 96;
  }

  while (v5 != 2880);
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 16896);
  *(v10 + 44) = 0u;
  v11 = (a1 + 13888);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  do
  {
    v12 = *(a1 + 16800) + v8;
    *v11 = v12;
    *v12 = v9;
    *(v12 + 88) = 0;
    v11 = (*v11 + 88);
    ++v9;
    v8 += 96;
  }

  while (v9 != 30);
  *(a1 + 6668) = 0;
  *(a1 + 6636) = 0u;
  *(a1 + 6652) = 0u;
  *(a1 + 6604) = 0u;
  *(a1 + 6620) = 0u;
  *(a1 + 6572) = 0u;
  *(a1 + 6588) = 0u;
  *(a1 + 6540) = 0u;
  *(a1 + 6556) = 0u;
  *(a1 + 6524) = 0u;
  bzero((a1 + 136), 0x1000uLL);
  *(v6 + 144) = 224;
  *(a1 + 6504) = a1 + 4242;
  *(v6 + 2419) = 0;
  BlueFin::GlMeSrdPacketManager::EscapeAndAppend(a1, *(v6 + 2418));
  *(v6 + 2419) = BlueFin::GlUtlCrc::ucCrcTable[*(v6 + 2419) ^ *(v6 + 2418)];
  *(a1 + 6512) = 0;
  if (*(a1 + 112))
  {
    BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdPacketManager::initial);
    v13 = *(a1 + 16896);
    *(a1 + 88) = 7;
    *(a1 + 48) = v13;
    *(a1 + 56) = v13 + 60;
    *(a1 + 64) = v13;
    *(a1 + 72) = v13;
    *(a1 + 80) = 0x100000000001ELL;
    *(a1 + 40) = 0;
    BlueFin::QHsm::init(a1, 0);
    BlueFin::GlEventPump::AddActive(*(a1 + 112), a1);
  }

  return a1;
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::GlMeSrdAcqMgrSm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *a1 = &unk_2A1F0A930;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = a7;
  *(a1 + 80) = a6;
  *(a1 + 88) = &unk_2A1F0A700;
  *(a1 + 96) = a1;
  *(a1 + 116) = 0u;
  *(a1 + 104) = a1 + 116;
  *(a1 + 112) = 19;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 200) = &unk_2A1F0A7A0;
  *(a1 + 208) = a1;
  *(a1 + 216) = &unk_2A1F0A9A8;
  *(a1 + 224) = &unk_2A1F0A770;
  *(a1 + 232) = a1;
  BlueFin::GlMeSrdAidingMgr::GlMeSrdAidingMgr(a1 + 240, a2, a4, a5);
  BlueFin::GlMeSrdSatMgr::GlMeSrdSatMgr(a1 + 3520, a5, a7);
  *(a1 + 10112) = &unk_2A1F0A900;
  *(a1 + 10120) = a1;
  BlueFin::GlMeSrdSharedSatSearchMgr::GlMeSrdSharedSatSearchMgr(a1 + 10128, 8, a1 + 3520, a1 + 24896, a1 + 10112, a1 + 240, a5);
  BlueFin::GlMeSrdSharedSatSearchMgr::GlMeSrdSharedSatSearchMgr(a1 + 10608, 9, a1 + 3520, a1 + 24896, a1 + 10112, a1 + 240, a5);
  BlueFin::GlMeSrdSharedSatSearchMgr::GlMeSrdSharedSatSearchMgr(a1 + 11088, 0, a1 + 3520, a1 + 24896, a1 + 10112, a1 + 240, a5);
  BlueFin::GlMeSrdSharedSatSearchMgr::GlMeSrdSharedSatSearchMgr(a1 + 11568, 1, a1 + 3520, a1 + 24896, a1 + 10112, a1 + 240, a5);
  v11 = *(a1 + 56);
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1 + 12048, 4, a1 + 3520, a1 + 24896, a1 + 240, a5);
  *(a1 + 12048) = &unk_2A1F0AA38;
  *(a1 + 12352) = v11;
  v12 = *(a1 + 56);
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1 + 12360, 5, a1 + 3520, a1 + 24896, a1 + 240, a5);
  *(a1 + 12360) = &unk_2A1F0AA38;
  *(a1 + 12664) = v12;
  v13 = *(a1 + 56);
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1 + 12672, 7, a1 + 3520, a1 + 24896, a1 + 240, a5);
  *(a1 + 12672) = &unk_2A1F0AA38;
  *(a1 + 12976) = v13;
  v14 = *(a1 + 56);
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1 + 12984, 2, a1 + 3520, a1 + 24896, a1 + 240, a5);
  *(a1 + 12984) = &unk_2A1F0AA38;
  *(a1 + 13288) = v14;
  v15 = *(a1 + 56);
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1 + 13296, 3, a1 + 3520, a1 + 24896, a1 + 240, a5);
  *(a1 + 13296) = &unk_2A1F0AA38;
  *(a1 + 13600) = v15;
  v16 = *(a1 + 56);
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1 + 13608, 6, a1 + 3520, a1 + 24896, a1 + 240, a5);
  *(a1 + 13608) = &unk_2A1F0AA38;
  *(a1 + 13912) = v16;
  *(a1 + 13920) = a1 + 13932;
  *(a1 + 13928) = 4;
  *(a1 + 13932) = 0u;
  *(a1 + 13952) = 0u;
  *(a1 + 13968) = 0u;
  *(a1 + 13984) = 0u;
  *(a1 + 14000) = 0u;
  *(a1 + 14016) = 0u;
  *(a1 + 14032) = 0u;
  *(a1 + 14048) = 0u;
  *(a1 + 14064) = 0u;
  *(a1 + 14080) = 0u;
  *(a1 + 14096) = 0u;
  *(a1 + 14112) = 0u;
  *(a1 + 14128) = 0u;
  *(a1 + 14144) = 0u;
  *(a1 + 14160) = 0u;
  *(a1 + 14176) = 0u;
  *(a1 + 14192) = 0u;
  *(a1 + 14208) = 0u;
  *(a1 + 14224) = 0u;
  *(a1 + 14240) = 0u;
  *(a1 + 14256) = 0u;
  *(a1 + 14272) = 0u;
  *(a1 + 14288) = 0u;
  *(a1 + 14304) = 0u;
  *(a1 + 14320) = 0u;
  *(a1 + 14336) = 0u;
  BlueFin::GlMeSrdSatTrackMgr::GlMeSrdSatTrackMgr(a1 + 14352, a1 + 3520, a2, a1 + 240, a5);
  *(a1 + 23160) = 0;
  *(a1 + 23168) = a1 + 23180;
  *(a1 + 23176) = 8;
  *(a1 + 23180) = 0u;
  *(a1 + 23196) = 0u;
  *(a1 + 23216) = a1 + 23228;
  *(a1 + 23224) = 8;
  *(a1 + 23228) = 0u;
  *(a1 + 23244) = 0u;
  *(a1 + 23264) = a1 + 23276;
  *(a1 + 23272) = 8;
  *(a1 + 23276) = 0u;
  *(a1 + 23292) = 0u;
  *(a1 + 23312) = a1 + 23324;
  *(a1 + 23320) = 8;
  *(a1 + 23324) = 0u;
  *(a1 + 23340) = 0u;
  *(a1 + 23360) = a1 + 23372;
  *(a1 + 23368) = 8;
  *(a1 + 23372) = 0u;
  *(a1 + 23388) = 0u;
  *(a1 + 23408) = a1 + 23420;
  *(a1 + 23416) = 8;
  *(a1 + 23420) = 0u;
  *(a1 + 23436) = 0u;
  *(a1 + 23456) = a1 + 23468;
  *(a1 + 23464) = 8;
  *(a1 + 23468) = 0u;
  *(a1 + 23484) = 0u;
  *(a1 + 23504) = a1 + 23516;
  *(a1 + 23512) = 8;
  *(a1 + 23516) = 0u;
  *(a1 + 23532) = 0u;
  *(a1 + 23552) = a1 + 23564;
  *(a1 + 23564) = 0u;
  *(a1 + 23580) = 0u;
  *(a1 + 23560) = 8;
  BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(a1 + 24896, 0xA0u, a1 + 23616);
  *(a1 + 24920) = a1 + 24932;
  *(a1 + 24928) = 4;
  *(a1 + 24932) = 0u;
  *(a1 + 24956) = 0;
  *(a1 + 24992) = 256;
  *(a1 + 24996) = 257;
  *(a1 + 25008) = 0;
  *(a1 + 24998) = 0;
  *(a1 + 25002) = 0;
  *(a1 + 25016) = a1 + 25028;
  *(a1 + 25024) = 4;
  *(a1 + 25028) = 0u;
  *(a1 + 25052) = 0;
  *(a1 + 25048) = 0;
  v17 = (a1 + 25068);
  v18 = 192;
  *(a1 + 25012) = 0;
  do
  {
    *(v17 - 12) = v17;
    *(v17 - 4) = 8;
    *v17 = 0uLL;
    v17[1] = 0uLL;
    v17 += 3;
    v18 -= 48;
  }

  while (v18);
  *(a1 + 25256) = 0;
  *(a1 + 24952) = 0;
  *(a1 + 24960) = 0;
  *(a1 + 24968) = 0;
  *(a1 + 24984) = 0;
  *(a1 + 24976) = 0;
  *(a1 + 25248) = 0;
  *(a1 + 25252) = 0;
  *(a1 + 23144) = a1 + 10128;
  *(a1 + 23152) = a1 + 10608;
  *(a1 + 23080) = a1 + 11088;
  *(a1 + 23088) = a1 + 11568;
  *(a1 + 23120) = a1 + 12360;
  *(a1 + 23136) = a1 + 12672;
  *(a1 + 23112) = a1 + 12048;
  *(a1 + 23096) = a1 + 12984;
  *(a1 + 23104) = a1 + 13296;
  v19 = 2885;
  *(a1 + 23128) = a1 + 13608;
  do
  {
    if (!*(a1 + 8 * v19))
    {
      DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 131, "GlMeSrdAcqMgrSm", "m_aSearchMgr[i] != nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", 131, "m_aSearchMgr[i] != nullptr");
    }

    ++v19;
  }

  while (v19 != 2895);
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdAcqMgrSm::initial);
  BlueFin::QHsm::init(a1, 0);
  return a1;
}

void sub_2987FCF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, BlueFin::GlMeSrdAcqMgr *a13, uint64_t a14, uint64_t a15, BlueFin::GlMeSrdSearchMgrBase *a16, BlueFin::GlMeSrdSearchMgrBase *a17, BlueFin::GlMeSrdSearchMgrBase *a18, BlueFin::GlMeSrdSearchMgrBase *a19, BlueFin::GlMeSrdSearchMgrBase *a20)
{
  BlueFin::GlMeSrdSatTrackMgr::~GlMeSrdSatTrackMgr((v21 + v23));
  BlueFin::GlMeSrdSatPostSearchMgr::~GlMeSrdSatPostSearchMgr((v21 + 13920));
  *v22 = a9;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(v22);
  *v24 = a10;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(v24);
  *v26 = a11;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(v26);
  *v20 = a12;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(v20);
  *v25 = a14;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(v25);
  *a18 = a15;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(a18);
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(a19);
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(a20);
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(a16);
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(a17);
  BlueFin::GlMeSrdAcqMgr::~GlMeSrdAcqMgr(a13);
  _Unwind_Resume(a1);
}

double BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_2A1F0AAB0;
  *(a1 + 8) = a4;
  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *&v6 = 0xFA000000FALL;
  *(&v6 + 1) = 0xFA000000FALL;
  *(a1 + 40) = v6;
  *(a1 + 56) = v6;
  result = 0.0;
  *(a1 + 92) = 0u;
  *(a1 + 72) = a2;
  *(a1 + 80) = a1 + 92;
  *(a1 + 88) = 8;
  *(a1 + 108) = 0u;
  *(a1 + 140) = 0;
  *(a1 + 128) = a1 + 140;
  *(a1 + 136) = 4;
  *(a1 + 148) = 0;
  *(a1 + 172) = 0;
  *(a1 + 160) = a1 + 172;
  *(a1 + 168) = 4;
  *(a1 + 180) = 0;
  *(a1 + 204) = 0;
  *(a1 + 192) = a1 + 204;
  *(a1 + 200) = 4;
  *(a1 + 212) = 0;
  *(a1 + 236) = 0;
  *(a1 + 224) = a1 + 236;
  *(a1 + 232) = 4;
  *(a1 + 244) = 0;
  *(a1 + 256) = a1 + 268;
  *(a1 + 264) = 8;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::GlMeSrdSatTrackMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  v6 = a1 + 8676;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 3968) = a1 + 3980;
  v7 = (a1 + 4120);
  *(a1 + 3976) = 4;
  *(a1 + 3980) = 0u;
  *(a1 + 4000) = a1 + 4012;
  *(a1 + 4008) = 16;
  *(a1 + 4012) = 0u;
  *(a1 + 4028) = 0u;
  *(a1 + 4044) = 0u;
  *(a1 + 4060) = 0u;
  *(a1 + 4080) = a1 + 4092;
  *(a1 + 4088) = 4;
  *(a1 + 4092) = 0u;
  *(a1 + 4112) = a1 + 4124;
  *(a1 + 4120) = 8;
  *(a1 + 4124) = 0u;
  *(a1 + 4140) = 0u;
  *(a1 + 4160) = a1 + 4172;
  *(a1 + 4168) = 16;
  *(a1 + 4172) = 0u;
  *(a1 + 4188) = 0u;
  *(a1 + 4204) = 0u;
  *(a1 + 4220) = 0u;
  *(a1 + 4240) = a1 + 4252;
  *(a1 + 4248) = 16;
  *(a1 + 4252) = 0u;
  *(a1 + 4268) = 0u;
  *(a1 + 4284) = 0u;
  *(a1 + 4300) = 0u;
  *(a1 + 4320) = a1 + 4332;
  *(a1 + 4328) = 16;
  *(a1 + 4364) = 0u;
  *(a1 + 4380) = 0u;
  *(a1 + 4332) = 0u;
  *(a1 + 4348) = 0u;
  *(a1 + 4400) = a1 + 4412;
  *(a1 + 4408) = 16;
  *(a1 + 4412) = 0u;
  *(a1 + 4428) = 0u;
  *(a1 + 4444) = 0u;
  *(a1 + 4460) = 0u;
  *(a1 + 4480) = a1 + 4492;
  *(a1 + 4488) = 16;
  *(a1 + 4492) = 0u;
  *(a1 + 4508) = 0u;
  *(a1 + 4524) = 0u;
  *(a1 + 4540) = 0u;
  *(a1 + 4560) = a1 + 4572;
  *(a1 + 4568) = 16;
  *(a1 + 4572) = 0u;
  *(a1 + 4588) = 0u;
  *(a1 + 4604) = 0u;
  *(a1 + 4620) = 0u;
  *(a1 + 4640) = a1 + 4652;
  *(a1 + 4648) = 16;
  *(a1 + 4684) = 0u;
  *(a1 + 4700) = 0u;
  *(a1 + 4652) = 0u;
  *(a1 + 4668) = 0u;
  *(a1 + 4720) = a1 + 4732;
  *(a1 + 4728) = 16;
  *(a1 + 4764) = 0u;
  *(a1 + 4780) = 0u;
  *(a1 + 4732) = 0u;
  *(a1 + 4748) = 0u;
  *(a1 + 4800) = a1 + 4812;
  *(a1 + 4808) = 16;
  *(a1 + 4844) = 0u;
  *(a1 + 4860) = 0u;
  *(a1 + 4812) = 0u;
  *(a1 + 4828) = 0u;
  *(a1 + 4880) = a1 + 4892;
  *(a1 + 4888) = 16;
  *(a1 + 4924) = 0u;
  *(a1 + 4940) = 0u;
  *(a1 + 4892) = 0u;
  *(a1 + 4908) = 0u;
  *(a1 + 4960) = a1 + 4972;
  *(a1 + 4968) = 16;
  *(a1 + 5004) = 0u;
  *(a1 + 5020) = 0u;
  *(a1 + 4972) = 0u;
  *(a1 + 4988) = 0u;
  *(a1 + 5040) = a1 + 5052;
  *(a1 + 5048) = 4;
  *(a1 + 5052) = 0u;
  *(a1 + 5072) = a1 + 5084;
  *(a1 + 5084) = 0u;
  *(a1 + 5080) = 4;
  *(a1 + 5104) = a1 + 5116;
  *(a1 + 5112) = 16;
  *(a1 + 5148) = 0u;
  *(a1 + 5164) = 0u;
  *(a1 + 5116) = 0u;
  *(a1 + 5132) = 0u;
  *(a1 + 5184) = a1 + 5196;
  *(a1 + 5192) = 16;
  *(a1 + 5228) = 0u;
  *(a1 + 5244) = 0u;
  *(a1 + 5196) = 0u;
  *(a1 + 5212) = 0u;
  *(a1 + 5264) = a1 + 5276;
  *(a1 + 5272) = 16;
  *(a1 + 5308) = 0u;
  *(a1 + 5324) = 0u;
  *(a1 + 5276) = 0u;
  *(a1 + 5292) = 0u;
  *(a1 + 5344) = a1 + 5356;
  *(a1 + 5352) = 16;
  *(a1 + 5388) = 0u;
  *(a1 + 5404) = 0u;
  *(a1 + 5356) = 0u;
  *(a1 + 5372) = 0u;
  *(a1 + 5424) = a1 + 5436;
  *(a1 + 5432) = 19;
  *(a1 + 5496) = 0u;
  *(a1 + 5468) = 0u;
  *(a1 + 5484) = 0u;
  *(a1 + 5436) = 0u;
  *(a1 + 5452) = 0u;
  *(a1 + 5512) = a1 + 5524;
  *(a1 + 5520) = 19;
  *(a1 + 5584) = 0u;
  *(a1 + 5556) = 0u;
  *(a1 + 5572) = 0u;
  *(a1 + 5524) = 0u;
  *(a1 + 5540) = 0u;
  *(a1 + 5600) = a1 + 5612;
  *(a1 + 5608) = 8;
  *(a1 + 5612) = 0u;
  *(a1 + 5628) = 0u;
  *(a1 + 7248) = 0;
  *(a1 + 7252) = 0;
  *(a1 + 7256) = &unk_2A1F0A870;
  *(a1 + 7456) = &unk_2A1F09610;
  *(a1 + 7464) = a1 + 7496;
  *(a1 + 7472) = a1 + 7264;
  *(a1 + 7480) = a1 + 8248;
  *(a1 + 7488) = 4;
  *(a1 + 7492) = -17407;
  *(a1 + 7494) = -68;
  BlueFin::GlArray::Clear(a1 + 7456);
  *(a1 + 8440) = &unk_2A1F0A870;
  *(a1 + 8640) = &unk_2A1F09610;
  *(a1 + 8648) = a1 + 8680;
  *(a1 + 8656) = a1 + 8448;
  *(a1 + 8664) = a1 + 8708;
  *(a1 + 8672) = 2;
  *v6 = -17407;
  *(v6 + 2) = 14;
  BlueFin::GlArray::Clear(a1 + 8640);
  bzero(*(a1 + 4112), ((4 * *v7 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v8 = 0;
  v9 = a1 + 36;
  do
  {
    *(*(a1 + 3968) + 4 * (v8 >> 5)) |= 1 << v8;
    *(v9 - 4) = 0uLL;
    *(v9 + 12) = 0uLL;
    *v9 = -1027080192;
    v9 += 32;
    ++v8;
  }

  while (v8 != 123);
  memset_pattern16((a1 + 5648), "(", 0x640uLL);
  return a1;
}

void *BlueFin::GlMeSrdAsicinit::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdAsicinit::off;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdAsicinit::off";
  return result;
}

uint64_t (*BlueFin::GlMeSrdAsicinit::off(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 > 0x17)
  {
    if (v3 != 24 && v3 != 26)
    {
      return BlueFin::QHsm::top;
    }

    if ((*(**(a1 + 128) + 104))(*(a1 + 128)))
    {
      *(a1 + 740) = 1000;
      v5 = "&GlMeSrdAsicinit::meif_wait4passthrough";
      v6 = BlueFin::GlMeSrdAsicinit::meif_wait4passthrough;
    }

    else
    {
      v8 = *(a1 + 128);
      if (*(v8 + 8) == 3 && *(v8 + 1418))
      {
        v5 = "&GlMeSrdAsicinit::wait4Mcuversion";
        v6 = BlueFin::GlMeSrdAsicinit::wait4Mcuversion;
      }

      else
      {
        v5 = "&GlMeSrdAsicinit::bri_startup_asic";
        v6 = BlueFin::GlMeSrdAsicinit::bri_startup_asic;
      }
    }

    BlueFin::QHsm::tran(a1, v6, v5);
  }

  else
  {
    if (v3 == 2)
    {
      result = 0;
      *(a1 + 732) = 0;
      *(a1 + 696) = 0;
      *(a1 + 698) = 0;
      *(a1 + 735) = 256;
      *(a1 + 737) = 1;
      *(a1 + 636) = 0;
      *(*(a1 + 128) + 1423) = 0;
      return result;
    }

    if (v3 != 3)
    {
      return BlueFin::QHsm::top;
    }
  }

  return 0;
}

void *BlueFin::GlMeSrdSyncIn::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdSyncIn::idle;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdSyncIn::idle";
  return result;
}

void *BlueFin::GlMeSrdCntIn::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdCntIn::idle;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdCntIn::idle";
  return result;
}

uint64_t BlueFin::GlMeSrdMeasTimingMgr::GlMeSrdMeasTimingMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0B758;
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 128) = 0;
  *(a1 + 136) = a4;
  *(a1 + 216) = 0;
  *(a1 + 176) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 207) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 284) = 1000;
  *(a1 + 286) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  *(a1 + 314) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 268) = 0u;
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdMeasTimingMgr::initial);
  v5 = *(a1 + 176);
  *(a1 + 88) = 11;
  *(a1 + 48) = v5;
  *(a1 + 56) = v5 + 10;
  *(a1 + 64) = v5;
  *(a1 + 72) = v5;
  *(a1 + 80) = 0x1000000000005;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 112), a1);
  return a1;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::off(uint64_t a1, unsigned __int8 *a2, double a3))(uint64_t a1, unsigned __int8 *a2))()
{
  v4 = *a2;
  if (v4 > 0x18)
  {
    if (v4 == 25)
    {
      BlueFin::GlMeSrdStats::ReportStats(*(a1 + 200), a3);
      (*(**(a1 + 160) + 104))(*(a1 + 160));
      return 0;
    }

    if (v4 == 26)
    {
      goto LABEL_4;
    }

    return BlueFin::GlMeSrdCtrlSm::my_top;
  }

  if (v4 - 2 >= 2)
  {
    if (v4 == 24)
    {
LABEL_4:
      BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::wait4init, "&GlMeSrdCtrlSm::wait4init");
      return 0;
    }

    return BlueFin::GlMeSrdCtrlSm::my_top;
  }

  return 0;
}

uint64_t BlueFin::GlMeMafSettingsListener::SetEventsCallback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v2[39] = a2;
  v2[13] = a2;
  v2[1449] = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdSvIdReportMgr::GlMeSrdSvIdReportMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 4096);
  *a1 = &unk_2A1F0C4C0;
  *(a1 + 8) = BlueFin::GlMeObjFactory::MakeSvidReportMsmtArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 16) = BlueFin::GlMeObjFactory::MakeSvidReportDataBitsArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 24) = BlueFin::GlMeObjFactory::MakeSvidReportMultiPeakResultsArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 126) = 0;
  BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GlMeSrdSvIdMsmtHistoryBuffer((a1 + 1536));
  v9 = 0;
  *(a1 + 4744) = a1 + 4544;
  do
  {
    *(*(a1 + 4744) + v9) = 0;
    v9 += 2;
  }

  while (v9 != 200);
  v10 = *(a1 + 4744);
  *(v10 + 192) = 0;
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
  v8[672] = 0;
  *(a1 + 4772) = 0;
  *(a1 + 4776) = a2;
  *(a1 + 4784) = a3;
  *(a1 + 4792) = a4;
  *(a1 + 4800) = a1 + 4812;
  v8[712] = 8;
  *(a1 + 4848) = a1 + 4860;
  v8[760] = 8;
  *(a1 + 4896) = 0;
  *(a1 + 34) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 130) = 0;
  bzero((a1 + 136), 0x4B0uLL);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *(a1 + 1509) = v11;
  *(a1 + 1480) = v11;
  *(a1 + 1496) = v11;
  *(a1 + 1448) = v11;
  *(a1 + 1464) = v11;
  *(a1 + 1416) = v11;
  *(a1 + 1432) = v11;
  *(a1 + 1384) = v11;
  *(a1 + 1400) = v11;
  *(a1 + 1352) = v11;
  *(a1 + 1368) = v11;
  *(a1 + 1336) = v11;
  *(a1 + 4812) = 0u;
  *(a1 + 4828) = 0u;
  *(a1 + 4860) = 0u;
  *(a1 + 4876) = 0u;
  return a1;
}

uint64_t BlueFin::GlMeObjFactory::MakeSvidReportMsmtArray(BlueFin::GlMeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(4, 840, *(this + 3));
  if (Memory)
  {
    v3 = Memory;
    v4 = *(this + 11);
    *(this + 10) = BlueFin::GlMemAlloc::glAllocateMemory(5, (176 * v4), *(this + 3));
    v5 = BlueFin::GlMemAlloc::glAllocateMemory(6, (2 * v4), *(this + 3));
    *(this + 12) = v5;
    BlueFin::GlBigArray::GlBigArray((v3 + 400), *(this + 10), 176, 0, v3, 0x190u, v5, v4);
    *(this + 9) = v3;
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = 176 * v4;
      do
      {
        BlueFin::GlMeSrdSvIdReportMsmtSlot::GlMeSrdSvIdReportMsmtSlot((*(this + 10) + v6));
        v6 += 176;
      }

      while (v7 != v6);
    }
  }

  return *(this + 9);
}

double BlueFin::GlMeDSPMeas::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 84) = 0;
  *(a1 + 112) = -1;
  if (a1 + 100 != a2)
  {
    *(a1 + 100) = *a2;
    *(a1 + 104) = *(a2 + 4);
    *(a1 + 108) = *(a2 + 8);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1082130432;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 56) = xmmword_298A3A560;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 2139095039;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  result = 1.40444709e306;
  *(a1 + 148) = 0x7F7FFFFF00000000;
  return result;
}

double BlueFin::GlMeSrdSvIdReportDataBitsSlot::GlMeSrdSvIdReportDataBitsSlot(BlueFin::GlMeSrdSvIdReportDataBitsSlot *this)
{
  *this = &unk_2A1F0DC20;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 44) = 0u;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 4) = 0;
  *(this + 38) = &unk_2A1F0DC20;
  *(this + 79) = 0;
  *(this + 160) = 0;
  *(this + 324) = 0;
  *(this + 42) = 0;
  *(this + 344) = 0;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 540) = 0u;
  *(this + 556) = 0u;
  *(this + 572) = 0u;
  *(this + 588) = 0u;
  *(this + 156) = 0;
  *(this + 608) = 0;
  return result;
}

uint64_t (*BlueFin::GlMeObjFactory::MakeSvidReportMultiPeakResultsArray(uint64_t (**this)(uint64_t)))(uint64_t)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(11, 40, this[3]);
  if (Memory)
  {
    v3 = Memory;
    this[18] = BlueFin::GlMemAlloc::glAllocateMemory(12, 1232, this[3]);
    this[20] = BlueFin::GlMemAlloc::glAllocateMemory(13, 14, this[3]);
    v4 = BlueFin::GlMemAlloc::glAllocateMemory(14, 189, this[3]);
    this[19] = v4;
    v5 = this[18];
    v6 = this[20];
    *v3 = &unk_2A1F09610;
    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = 88;
    *(v3 + 36) = -17152;
    *(v3 + 38) = 14;
    BlueFin::GlArray::Clear(v3);
    v7 = 0;
    this[17] = v3;
    v8 = 20;
    do
    {
      v9 = this[18];
      v10 = v9 + 88 * v7;
      *v10 = 0;
      v11 = (v9 + v8);
      v12 = 80;
      do
      {
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v11 = 1176492032;
        v11 += 5;
        v12 -= 20;
      }

      while (v12);
      v10[84] = 0;
      ++v7;
      v8 += 88;
    }

    while (v7 != 14);
  }

  return this[17];
}

BlueFin::GlBigArray *BlueFin::GlMeObjFactory::MakeSatReportArray(BlueFin::GlMeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(15, 40, *(this + 3));
  if (!Memory)
  {
    return *(this + 21);
  }

  v3 = Memory;
  v4 = *(this + 44) + 5;
  *(this + 22) = BlueFin::GlMemAlloc::glAllocateMemory(16, 3392 * v4, *(this + 3));
  *(this + 24) = BlueFin::GlMemAlloc::glAllocateMemory(17, 2 * v4, *(this + 3));
  v5 = BlueFin::GlMemAlloc::glAllocateMemory(18, 800, *(this + 3));
  *(this + 23) = v5;
  BlueFin::GlBigArray::GlBigArray(v3, *(this + 22), 3392, 0, v5, 0x190u, *(this + 24), v4);
  *(this + 21) = v3;
  return v3;
}

uint64_t BlueFin::GlMeObjFactory::MakeViterbiDecoderArray(BlueFin::GlMeObjFactory *this)
{
  if ((*(this + 55) & 1) == 0)
  {
    return this + 360;
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(23, 40, *(this + 3));
  if (!Memory)
  {
    return *(this + 29);
  }

  v3 = Memory;
  *(this + 30) = BlueFin::GlMemAlloc::glAllocateMemory(24, 838, *(this + 3));
  *(this + 32) = BlueFin::GlMemAlloc::glAllocateMemory(25, 2, *(this + 3));
  v4 = BlueFin::GlMemAlloc::glAllocateMemory(26, 100, *(this + 3));
  *(this + 31) = v4;
  v5 = *(this + 30);
  v6 = *(this + 32);
  *v3 = &unk_2A1F09610;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  *(v3 + 24) = v6;
  *(v3 + 32) = 419;
  *(v3 + 36) = 25600;
  *(v3 + 38) = 2;
  BlueFin::GlArray::Clear(v3);
  *(this + 29) = v3;
  return v3;
}

uint64_t BlueFin::GlMeObjFactory::MakeEstLowTowArray(BlueFin::GlMeObjFactory *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    return this + 360;
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(27, 40, *(this + 3));
  if (!Memory)
  {
    return *(this + 33);
  }

  v3 = Memory;
  *(this + 34) = BlueFin::GlMemAlloc::glAllocateMemory(28, 12096, *(this + 3));
  *(this + 36) = BlueFin::GlMemAlloc::glAllocateMemory(29, 9, *(this + 3));
  v4 = BlueFin::GlMemAlloc::glAllocateMemory(30, 100, *(this + 3));
  *(this + 35) = v4;
  v5 = *(this + 34);
  v6 = *(this + 36);
  *v3 = &unk_2A1F09610;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  *(v3 + 24) = v6;
  *(v3 + 32) = 1344;
  *(v3 + 36) = 25600;
  *(v3 + 38) = 9;
  BlueFin::GlArray::Clear(v3);
  *(this + 33) = v3;
  return v3;
}

uint64_t BlueFin::GlPePpsGen::SetPpsSettings(BlueFin::GlPePpsGen *this, int a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v6.f64[0] = a4;
  *(this + 56) = a2;
  v6.f64[1] = a6;
  *(this + 4) = vmulq_f64(v6, xmmword_298A44A20);
  result = *(this + 6);
  if (result)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return (*(*result + 672))(result, 1, a3, 0, a5, 0);
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::SetAidMask(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 0;
  v35 = (a1 + 34176);
  v34 = (a1 + 7488);
  do
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), v6);
    if (Mgr)
    {
      (*(*Mgr + 248))(Mgr, 0);
    }

    ++v6;
  }

  while (v6 != 7);
  *v35 = 0;
  *v34 = 0;
  if (a2)
  {
    v8 = 0;
    v9 = (a1 + 34112);
    v10 = (a1 + 7424);
    while (1)
    {
      v11 = a3 + v8;
      v12 = *(a3 + v8);
      v13 = "GL_AID_SOURCE_unknown";
      if (v12 <= 4)
      {
        v13 = BlueFin::AidSourceName[v12];
      }

      result = GlCustomLog(15, "SetAidMask(%s %d)\n", v13, *(v11 + 4));
      v15 = *(v11 + 4);
      if (!*(v11 + 4))
      {
        goto LABEL_37;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = (v11 + 8);
      v17 = v11 + 8 + 16 * v15;
      do
      {
        v18 = v16[1] - 1;
        v19 = *v16;
        v16 += 16;
        *(&v36 + v19) |= 1 << v18;
      }

      while (v16 < v17);
      v20 = *v11;
      if (*v11 > 1)
      {
        if (v20 == 2)
        {
          v30 = 0;
          *v34 = 0;
          v31 = v37;
          *v10 = v36;
          *(a1 + 7440) = v31;
          v32 = v39;
          *(a1 + 7456) = v38;
          *(a1 + 7472) = v32;
          while (!*(v10 + v30))
          {
            v30 += 8;
            if (v30 == 64)
            {
              goto LABEL_37;
            }
          }

          v26 = v34;
          goto LABEL_36;
        }

        if (v20 == 4)
        {
          v24 = 0;
          v25 = *(a1 + 119896);
          *(v25 + 64) = 0;
          v26 = (v25 + 64);
          v27 = v37;
          *v25 = v36;
          *(v25 + 16) = v27;
          v28 = v39;
          *(v25 + 32) = v38;
          *(v25 + 48) = v28;
          while (!*(v25 + v24))
          {
            v24 += 8;
            if (v24 == 64)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (!v20)
        {
          for (i = 0; i != 7; ++i)
          {
            result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), i);
            if (result)
            {
              result = (*(*result + 248))(result, *(&v36 + BlueFin::GlImplGnss::m_aucEnabledGnssTable[i]));
            }
          }

          goto LABEL_37;
        }

        if (v20 == 1)
        {
          v21 = 0;
          *v35 = 0;
          v22 = v37;
          *v9 = v36;
          *(a1 + 34128) = v22;
          v23 = v39;
          *(a1 + 34144) = v38;
          *(a1 + 34160) = v23;
          while (!*(v9 + v21))
          {
            v21 += 8;
            if (v21 == 64)
            {
              goto LABEL_37;
            }
          }

          v26 = v35;
LABEL_36:
          *v26 = 1;
        }
      }

LABEL_37:
      v33 = v8 >> 5;
      v8 += 2856;
      if (v33 >= 0x165)
      {
        return result;
      }
    }
  }

  return GlCustomLog(15, "SetAidMask(0)\n");
}

uint64_t BlueFin::GlDbgProxyGlReqOnStart(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnStart(v4, v3, a2);
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_7,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_7>,void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(a1 + 8);
  if ((*a3 - 1) >= 5)
  {
    if (!*a3)
    {
      v17 = v9[166];
      FireDeviceLog::DeviceLogBase(3, "GlReqOnStart,request,ok,%p,size,%zu", a3, a4, a5, a6, a7, a8, *a2);
    }
  }

  else
  {
    v16 = *a3;
    FireDeviceLog::DeviceLogBase(2, "GlReqOnStart,request,failed,%p,code,%d", a3, a4, a5, a6, a7, a8, *a2);

    FireMessageHandler::eraseRequest(v9, v8, v10, v11, v12, v13, v14, v15);
  }
}

char *BlueFin::GlRequestImpl::GlRequestTypeToString(BlueFin::GlRequestImpl *this)
{
  v1 = *(this + 4);
  if (v1 >= 0x11)
  {
    DeviceFaultNotify("glrequest.cpp", 1030, "GlRequestTypeToString", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1030, "0");
  }

  return off_29EEB42D8[v1];
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetClockFrequency(uint64_t this, int a2, unsigned int a3)
{
  *(this + 28) = a2;
  *(this + 32) = a3;
  if (a3 >= 0xBB9)
  {
    v3 = this;
    this = (*(*this + 1112))(this);
    if (this != 1)
    {
      DeviceFaultNotify("glmesrd_asic_config.cpp", 1823, "SetClockFrequency", "GetDspModeSetting()== GLME_DSP_MODE_FORCE_200");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 1823, "GetDspModeSetting()== GLME_DSP_MODE_FORCE_200");
    }

    *(v3 + 2216) = 1;
  }

  return this;
}

float BlueFin::GlMeMafSettingsListener::SetRefClockParams(BlueFin::GlMeMafSettingsListener *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = (a2 + 0.5) * 0.000000001;
  v3[65] = v4;
  v3[67] = v4;
  v3[63] = v4;
  result = (a3 + 0.5) * 0.000000001;
  v3[66] = result;
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetL5MsbEnabled(BlueFin::GlDineCtrl *this, char a2)
{
  result = (*(*(this + 3644) + 88))();
  *(this + 29851) = a2;
  *(this + 11560) = a2;
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetRfMode(uint64_t a1, int a2)
{
  GlCustomLog(14, "GlDineCtrl::SetRfMode(%d)\n", a2);
  *(a1 + 30700) = a2;

  return BlueFin::GlMeSrdAsicConfig::UpdatePerformanceModes(a1 + 29288);
}

uint64_t BlueFin::GlDineCtrl::SetLnaMask(BlueFin::GlDineCtrl *this, int a2)
{
  v3 = this + 28672;
  result = GlCustomLog(14, "GlDineCtrl::SetLnaMask(%d)\n", a2);
  v3[2032] = a2;
  if (a2)
  {
    v3[639] = 1;
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::SetRfType(uint64_t a1, int a2)
{
  GlCustomLog(14, "GlDineCtrl::SetRfType(%d)\n", a2);
  BlueFin::GlMeSrdAsicConfig::SetRfType(a1 + 29288, a2);
  result = (*(**(a1 + 8) + 240))(*(a1 + 8), a1 + 31528);
  *(a1 + 118464) = a2;
  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetReceiverParameters(BlueFin::GlDbgPeIf *this, BlueFin::GlMeReceiverParametersIfc *a2)
{
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4628);
    v5 = *(this + 1);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, a2);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4628);
    v6 = *(**(this + 1) + 32);

    return v6();
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::SetEnableVLP(BlueFin::GlDineCtrl *this, int a2)
{
  v2 = a2;
  v4 = "AUTO";
  if (a2)
  {
    v4 = "VLP";
  }

  GlCustomLog(14, "GlDineCtrl::SetEnableVLP(%s)\n", v4);
  *(this + 31484) = v2;

  return BlueFin::GlMeSrdAsicConfig::UpdatePerformanceModes(this + 29288);
}

uint64_t BlueFin::GlDineCtrl::SetUartFlowControlSettings(uint64_t result, int a2, char a3, char a4)
{
  *(result + 29640) = a2;
  if (a2 != 2)
  {
    a3 = 17;
  }

  if (a2 != 2)
  {
    a4 = 19;
  }

  *(result + 29644) = a3;
  *(result + 29645) = a4;
  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetNumCnstl(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 16);

  return v1();
}

uint64_t BlueFin::GlMeReceiverParametersLogger::ToSlog(BlueFin::GlMeReceiverParametersLogger *this, const BlueFin::GlMeReceiverParametersIfc *a2)
{
  v3 = (*(*this + 16))(this, a2);
  result = (*(*this + 24))(this);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v6 = result;
    BlueFin::GlMeReceiverParametersLogger::AllParamsToSlog(this, v5);
    BlueFin::GlMeReceiverParametersLogger::SrchSpParamsToSlog(this, v7);
    v9 = BlueFin::GlMeReceiverParametersLogger::SrchBsParamsToSlog(this, v8);
    BlueFin::GlMeReceiverParametersLogger::SrchHostParamsToSlog(v9, v10);
    if (v3)
    {
      v12 = 0;
      do
      {
        if (v6)
        {
          v13 = 0;
          do
          {
            if ((*(*this + 120))(this, v12, v13))
            {
              BlueFin::GlMeReceiverParametersLogger::ModeTrkParamToSlog(this);
            }

            v13 = (v13 + 1);
          }

          while (v6 != v13);
        }

        v12 = (v12 + 1);
      }

      while (v12 != v3);
    }

    return BlueFin::GlMeReceiverParametersLogger::GsLoopupToSlog(this, v11);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::GlMeSrdAidingMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 784) = a1 + 796;
  *(a1 + 792) = 8;
  *(a1 + 796) = 0u;
  *(a1 + 812) = 0u;
  *(a1 + 832) = a1 + 844;
  *(a1 + 840) = 8;
  *(a1 + 844) = 0u;
  *(a1 + 860) = 0u;
  *(a1 + 880) = a1 + 892;
  *(a1 + 888) = 8;
  *(a1 + 892) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 928) = a1 + 940;
  *(a1 + 936) = 8;
  *(a1 + 940) = 0u;
  *(a1 + 956) = 0u;
  *(a1 + 976) = a1 + 988;
  *(a1 + 984) = 8;
  *(a1 + 988) = 0u;
  *(a1 + 1004) = 0u;
  *(a1 + 1024) = a1 + 1036;
  *(a1 + 1032) = 8;
  *(a1 + 1036) = 0u;
  *(a1 + 1052) = 0u;
  *(a1 + 1072) = a1 + 1084;
  *(a1 + 1080) = 8;
  *(a1 + 1084) = 0u;
  *(a1 + 1100) = 0u;
  *(a1 + 1120) = a1 + 1132;
  *(a1 + 1128) = 8;
  *(a1 + 1132) = 0u;
  *(a1 + 1148) = 0u;
  *(a1 + 1176) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1184) = a1 + 1196;
  *(a1 + 1192) = 8;
  *(a1 + 1196) = 0u;
  *(a1 + 1212) = 0u;
  *(a1 + 1232) = a1 + 1244;
  *(a1 + 1240) = 8;
  *(a1 + 1244) = 0u;
  *(a1 + 1260) = 0u;
  *(a1 + 1280) = a1 + 1292;
  *(a1 + 1288) = 8;
  *(a1 + 1292) = 0u;
  *(a1 + 1308) = 0u;
  *(a1 + 1328) = a1 + 1340;
  *(a1 + 1336) = 8;
  *(a1 + 1340) = 0u;
  *(a1 + 1356) = 0u;
  *(a1 + 1376) = a1 + 1388;
  *(a1 + 1384) = 8;
  *(a1 + 1388) = 0u;
  *(a1 + 1404) = 0u;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = a1 + 1444;
  *(a1 + 1440) = 8;
  *(a1 + 1444) = 0u;
  *(a1 + 1460) = 0u;
  *(a1 + 2632) = a1 + 2672;
  *(a1 + 2640) = a1 + 1480;
  *(a1 + 2648) = a1 + 2872;
  *(a1 + 2656) = 0x23F000000000001;
  *(a1 + 2664) = 200;
  BlueFin::GlBigArray::Clear(a1 + 2632);
  bzero((a1 + 28), 0x2F4uLL);
  v5 = 1u;
  do
  {
    if (BlueFin::GlSvId::s_aucSvId2gnss[v5] != 7)
    {
      *(*(a1 + 1232) + 4 * (v5 >> 5)) |= 1 << v5;
    }

    ++v5;
  }

  while (v5 != 189);
  return a1;
}

unint64_t BlueFin::GlDineCtrl::TurnAsicOn(BlueFin::GlDineCtrl *this)
{
  GlCustomLog(14, "TurnAsicOn::GLL @%u\n", 643487);
  BlueFin::GlMeReceiverParametersLogger::ToSlog((this + 31528), v2);
  GlCustomLog(14, "GlDineCtrl::TurnAsicOn()\n");

  return BlueFin::GlMeSrdCtrlSm::TurnAsicOn((this + 75168));
}

__n128 BlueFin::GlPeSatPos::Clear(BlueFin::GlPeSatPos *this)
{
  bzero(*(this + 2), ((4 * *(this + 24) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  result.n128_u64[0] = 0x5B5B5B5B5B5B5B5BLL;
  result.n128_u64[1] = 0x5B5B5B5B5B5B5B5BLL;
  *(this + 17685) = result;
  *(this + 17656) = result;
  *(this + 17672) = result;
  *(this + 17624) = result;
  *(this + 17640) = result;
  *(this + 17592) = result;
  *(this + 17608) = result;
  *(this + 17560) = result;
  *(this + 17576) = result;
  *(this + 17528) = result;
  *(this + 17544) = result;
  *(this + 17512) = result;
  return result;
}

BlueFin::GlPeCntinMgr *BlueFin::GlPeCntinMgr::GlPeCntinMgr(BlueFin::GlPeCntinMgr *this, unsigned int a2, BlueFin::GlEventPump *a3, BlueFin::GlPosEng *a4, BlueFin::GlReqSm *a5, BlueFin::GlPeEngineCallBacks *a6)
{
  *(this + 3) = "OFF";
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = "STARTING";
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *this = &unk_2A1F0EEE0;
  *(this + 14) = a4;
  *(this + 15) = a6;
  *(this + 16) = a5;
  *(this + 17) = 0;
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 247) = 0;
  *(this + 30) = 0;
  *(this + 26) = 0;
  *(this + 27) = this + 192;
  *(this + 24) = 0;
  *(this + 25) = 0;
  BlueFin::QHsm::ctor(this, BlueFin::GlPeCntinMgr::initial);
  v8 = *(this + 27);
  *(this + 88) = 2;
  *(this + 6) = v8;
  *(this + 7) = v8 + 24;
  *(this + 8) = v8;
  *(this + 9) = v8;
  *(this + 10) = 0x100000000000CLL;
  *(this + 40) = 0;
  BlueFin::QHsm::init(this, 0);
  BlueFin::GlEventPump::AddActive(a3, this);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  return this;
}

uint64_t BlueFin::GlMeObjFactory::GetHeapSize(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 46))
  {
    v2 = 2088;
  }

  else
  {
    v2 = 800;
  }

  if (*(a1 + 47))
  {
    v3 = 187016;
  }

  else
  {
    v3 = 186024;
  }

  v4 = ((v1 + 7) & 0xFFFFFFF8) + 792 * v1 + 3392 * (v1 + 5) + ((2 * v1 + 7) & 0xFFFFFFF8) + v2 + ((2 * (v1 + 5) + 7) & 0xFFFFFFF8) + v3;
  if (*(a1 + 48))
  {
    v4 += 12256;
  }

  return ((4 * v1 + 14) & 0xFFFFFFF0) + 1696 * v1 + v4 + 3864;
}

int32x2_t BlueFin::GlMeClkModMgr::GlMeClkModMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1F0E110;
  *(a1 + 8) = &unk_2A1F0E1A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x36A7C5AC00000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2139095039;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2139095039;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x36A7C5AC7F7FFFFFLL;
  *(a1 + 80) = -1;
  result = vdup_n_s32(0x36A7C5ACu);
  *(a1 + 84) = result;
  *(a1 + 92) = 916964780;
  *(a1 + 96) = 0;
  *(a1 + 100) = -1;
  *(a1 + 108) = -1;
  *(a1 + 116) = 0xFFFFFFFFLL;
  *(a1 + 128) = a4;
  *(a1 + 136) = 0;
  *(a1 + 144) = a3;
  return result;
}

unint64_t BlueFin::GlMeSrdStats::GlMeSrdStats(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  *(a1 + 100) = 0u;
  v17 = (a1 + 100);
  *(a1 + 176) = 0;
  *(a1 + 24) = 0u;
  v9 = a1 + 40960;
  *(a1 + 40) = 0u;
  v10 = a1 + 812;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  bzero((a1 + 180), 0x275uLL);
  v11 = 0;
  *(v10 + 80) = 0;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 984) = 0;
  *(a1 + 936) = 0;
  *(a1 + 942) = 0;
  *(a1 + 952) = 0;
  *(a1 + 958) = 0;
  *(a1 + 968) = 0;
  *(a1 + 974) = 0;
  *(a1 + 1024) = a4;
  *(a1 + 1032) = a3;
  *(a1 + 1272) = a1 + 1056;
  *(a1 + 1496) = a1 + 1280;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0;
  *(a1 + 1548) = 0;
  *(a1 + 1532) = 0u;
  *(a1 + 1528) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1504) = 0u;
  *(v9 + 768) = a1 + 1568;
  v12 = 4;
  *(v9 + 784) = a1 + 1024;
  *(v9 + 776) = 0;
  do
  {
    v13 = a1 + 11592 + v11;
    *(v13 - 12) = 0;
    v14 = a1 + v11;
    *(v14 + 11584) = -1;
    *(v13 - 4) = 575;
    *(v14 + 11592) = 0;
    *(v13 + 8) = 0;
    bzero((a1 + v11 + 1568), 0x271CuLL);
    v11 += 10040;
    --v12;
  }

  while (v12);
  *(v9 + 800) = a5;
  *(v9 + 1960) = vaddq_s64(vdupq_n_s64(a1), xmmword_298A35530);
  *(v9 + 1976) = a1 + 65488;
  *(v9 + 1984) = 0x23F000000000058;
  *(v9 + 1992) = 256;
  BlueFin::GlBigArray::Clear(v9 + 1960);
  *(a1 + 88) = 0;
  *(a1 + 176) = 0;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *(v8 + 60) = 0u;
  *(a1 + 96) = 0;
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  bzero((a1 + 180), 0x275uLL);
  *(v10 + 80) = 0;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(a1 + 168) = a1 + 928;
  *(a1 + 224) = -1018691584;
  *(a1 + 992) = 0;
  *(a1 + 904) = 0;
  *(a1 + 920) = 0;
  *(a1 + 912) = 0;
  return a1;
}

uint64_t BlueFin::GlMeRxParamUtl::CheckSearchIntegrity(uint64_t result, int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = (result + 24);
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = vnegq_f64(v9);
    LOBYTE(result) = 1;
    while (1)
    {
      v11 = *(v8 - 5);
      *v5.i64 = (v11 * 1000.0) + 0.5;
      *v6.i64 = *v5.i64 + trunc(*v5.i64 * 2.32830644e-10) * -4294967300.0;
      v12 = vbslq_s8(v10, v6, v5);
      if (*v5.i64 > 4294967300.0)
      {
        v5.i64[0] = v12.i64[0];
      }

      if (*v5.i64 < -4294967300.0)
      {
        *v12.i64 = -*v5.i64;
        *v5.i64 = -(*v5.i64 - trunc(*v5.i64 * -2.32830644e-10) * -4294967300.0);
        v5 = vbslq_s8(v10, v5, v12);
        *v5.i64 = -*v5.i64;
      }

      if (*v5.i64 < 0.0)
      {
        v13 = --*v5.i64;
      }

      else
      {
        v13 = *v5.i64;
      }

      v14 = (v13 / 1000.0 - v11) / v11;
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v15 = v14;
      if (v15 >= 0.000001)
      {
        v16 = 0;
      }

      else
      {
        v16 = (v7 == *(v8 - 24)) & result;
      }

      v17 = (v13 - 1 < 0x14) & v16;
      v18 = *(v8 - 11);
      if (v18 <= 1)
      {
        v17 &= *(v8 - 12) == 1;
      }

      v19 = *(v8 - 7);
      v20 = (*(v8 - 8) < 0x1000u) & v17;
      if (v19 >= 0x21)
      {
        if ((31711 * v19) > 0x842u || (vmaxv_u16(vcgt_u16(0x1F001F001F001FLL, vadd_s16(vdup_n_s16(v19), 0xD80AF004F802FC01))) & 1) == 0 && v19 >= 0x1D1u)
        {
LABEL_25:
          v20 = 0;
        }
      }

      else if ((v19 & 0x37) != 0x10 && v19 != 8 && v19 != 32)
      {
        goto LABEL_25;
      }

      v21 = *(v8 - 12);
      v23 = (v18 - 1) < v21 && (v21 - 1) < 0xC7u;
      v24 = *(v8 - 2);
      *v5.i64 = v24 + 0.5;
      *v12.i64 = *v5.i64 + trunc(*v5.i64 * 2.32830644e-10) * -4294967300.0;
      v6 = vbslq_s8(v10, v12, v5);
      if (*v5.i64 > 4294967300.0)
      {
        v5.i64[0] = v6.i64[0];
      }

      if (*v5.i64 < -4294967300.0)
      {
        *v6.i64 = -*v5.i64;
        *v5.i64 = -(*v5.i64 - trunc(*v5.i64 * -2.32830644e-10) * -4294967300.0);
        v5 = vbslq_s8(v10, v5, v6);
        *v5.i64 = -*v5.i64;
      }

      if (*v5.i64 < 0.0)
      {
        v25 = --*v5.i64;
      }

      else
      {
        v25 = *v5.i64;
      }

      v26 = (v25 - v24) / v24;
      if (v26 < 0.0)
      {
        v26 = -v26;
      }

      if (v26 >= 1.0e-15)
      {
        v23 = 0;
      }

      v27 = *v8;
      v28 = (v27 < 0x800) & v20 & v23;
      v29 = ((v27 & 0x48) == 0) & v28;
      if ((v27 & 0x48) == 0x40)
      {
        v29 = v28;
      }

      if ((v27 & 0x48) == 8)
      {
        v29 = v28;
      }

      v30 = *(v8 + 1);
      if (v30 != 2 && v30 != 4)
      {
        v29 = 0;
      }

      v31 = *(v8 + 4);
      if (v31 > 0xA || ((1 << v31) & 0x437) == 0)
      {
        v29 = 0;
      }

      if (v27)
      {
        v29 &= v18 == v21;
      }

      v32 = (v18 == v21) & v29;
      if ((v27 & 0x40) != 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = v29;
      }

      v34 = v8[2];
      v36 = v34 <= 3.99609387 && v34 > 1.0;
      v37 = (*(v8 + 12) < 0x10u && v36) & v33;
      if (v19 >= 0x21u)
      {
        v37 &= vmaxv_u16(vcgt_u16(0x1F001F001F001FLL, vadd_s16(vdup_n_s16(v19), 0xD80AF004F802FC01))) | (v19 < 0x193u);
      }

      v38 = v19 >= 0x1F0u && (v19 - 4092) >= 0x1Fu;
      v39 = (v19 - 10230);
      v41 = !v38 || v39 < 0x1F;
      v42 = v41 & v37;
      if (v30 != 4)
      {
        v42 = v37;
      }

      v43 = (v30 * v18) >> 1;
      if (v13 > 0x14 || ((1 << v13) & 0x100404) == 0)
      {
        v45 = 0;
      }

      else
      {
        v45 = v42;
      }

      v46 = v43 * v13;
      if (*(v8 + 4))
      {
        v42 = v45;
        v43 = v46;
      }

      result = (v43 < 0x101) & v42;
      ++v7;
      v8 += 10;
      if (a2 == v7)
      {
        goto LABEL_88;
      }
    }
  }

  result = 1;
LABEL_88:
  if (a4)
  {
    v47 = 0;
    v48 = (a3 + 5);
    do
    {
      v49 = (v47 == *(v48 - 5)) & result;
      v50 = *(v48 - 3);
      if (v50 == 255)
      {
        v51 = (v47 == *(v48 - 5)) & result;
      }

      else
      {
        v51 = 0;
      }

      if (v50 == 252)
      {
        v51 = (v47 == *(v48 - 5)) & result;
      }

      if (a5 <= *(v48 - 3))
      {
        v49 = v51;
      }

      if (v50 != 252 && v50 != 255)
      {
        v49 &= *(v48 - 1) < a4;
      }

      v52 = *v48;
      v48 += 6;
      result = (v52 < a4) & v49;
      ++v47;
    }

    while (a4 != v47);
  }

  return result;
}

uint64_t BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(int a1)
{
  if (a1 >= 6)
  {
    v2 = "etRxType < GLME_RX_NUM_TYPES";
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 984, "GetMaxAllowedCnstls", "etRxType < GLME_RX_NUM_TYPES");
    v3 = 984;
    goto LABEL_5;
  }

  if (a1 >= 6)
  {
    v2 = "0";
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1000, "GetMaxAllowedCnstls", "0");
    v3 = 1000;
LABEL_5:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_receiver_parameters_ifc.h", v3, v2);
  }

  return word_298A335A0[a1];
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetNumModes(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 24);

  return v1();
}

unint64_t BlueFin::GlMeSrdCtrlSm::TurnAsicOn(BlueFin::GlMeSrdCtrlSm *this)
{
  *(this + 220) = 0;
  v4 = 24;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::wait4init(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v14[2] = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::my_top;
  if (v3 <= 0x12)
  {
    if (*a2 <= 4u)
    {
      if (v3 == 2)
      {
        v9 = *(this + 15);
        if (!v9)
        {
          v9 = *(this + 14);
        }

        (*(*v9 + 120))(v9, this + 3856);
        *(this + 224) = (*(**(this + 17) + 1032))();
        *(this + 57) = (*(**(this + 17) + 1080))();
        *(this + 211) = this;
        BlueFin::GlTimer::arm((this + 1656), 5, 0, 0x2710u);
        *(this + 1680) = 1;
        v10 = (this + 1760);
        if (*(this + 220) == 1)
        {
          BlueFin::GlMeSrdAsicinit::LoadAsicEswFw(v10);
        }

        else
        {
          BlueFin::GlMeSrdAsicinit::InitializeAsic(v10);
        }

        goto LABEL_30;
      }

      if (v3 == 3)
      {
        v7 = *(this + 25);
        v8 = *(this + 2504);
        *(v7 + 920) = *(this + 315);
        *(v7 + 904) = v8;
        BlueFin::GlTimer::disarm(this + 207);
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    switch(v3)
    {
      case 5u:
        v5 = "&GlMeSrdCtrlSm::com_breakdown";
        v6 = BlueFin::GlMeSrdCtrlSm::com_breakdown;
        goto LABEL_27;
      case 0xFu:
        BlueFin::GlMeSrdAsicinit::OnHeartbeat((this + 1760));
        goto LABEL_30;
      case 0x10u:
        BlueFin::GlMeSrdAsicinit::OnSubHeartbeat((this + 1760));
        goto LABEL_30;
    }
  }

  else
  {
    if (*a2 <= 0x18u)
    {
      if (v3 == 19)
      {
        BlueFin::GlMeSrdAsicinit::OnRtcCapture((this + 1760));
        goto LABEL_30;
      }

      if (v3 != 21)
      {
        if (v3 == 23)
        {
          BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
LABEL_30:
          v4 = 0;
          goto LABEL_31;
        }

        goto LABEL_31;
      }

      BlueFin::GlMeSrdAsicinit::StopInit((this + 1760));
      *(this + 219) = 1;
      BlueFin::GlMeSrdCtrlSm::ReportSupportedFeatures(this);
      v11 = *(this + 886);
      v14[0] = 0;
      v14[1] = 0;
      (*(**(this + 20) + 80))(*(this + 20), v11, 0, v14, 0, 0.0);
      v5 = "&GlMeSrdCtrlSm::wait4memdump";
      v6 = BlueFin::GlMeSrdCtrlSm::wait4memdump;
LABEL_27:
      BlueFin::QHsm::tran(this, v6, v5);
      goto LABEL_30;
    }

    if (v3 == 25 || v3 == 27)
    {
      v4 = 0;
      *(this + 221) = 1;
      goto LABEL_31;
    }

    if (v3 == 35)
    {
      v5 = "&GlMeSrdCtrlSm::wait4loading";
      v6 = BlueFin::GlMeSrdCtrlSm::wait4loading;
      goto LABEL_27;
    }
  }

LABEL_31:
  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterEvents(uint64_t result, uint64_t a2)
{
  if (!a2 || *(result + 17056))
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 258, "RegisterEvents", "m_pEventsIf == nullptr && pEventsIf != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 258, "m_pEventsIf == nullptr && pEventsIf != nullptr");
  }

  *(result + 17056) = a2;
  return result;
}

unint64_t BlueFin::GlMeSrdAsicinit::InitializeAsic(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = 24;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetMeifPassthroughEnabled(BlueFin::GlMeSrdAsicConfig *this)
{
  if (*(this + 1422) == 1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4113, "GetMeifPassthroughEnabled", "!m_bMeIfPassthroughEnabled");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4113, "!m_bMeIfPassthroughEnabled");
  }

  return 0;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplPosPeriodic(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, unsigned int a4, int a5, int a6)
{
  v10 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v12 = 1;
  }

  else
  {
    v12 = a1 == 0;
  }

  if (!v12 && a2 != 0)
  {
    v16 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v16;
    v14 = a1;
    if (v16)
    {
      *v16 = a1;
      v16[1] = v10;
      v14 = a1;
    }

    goto LABEL_13;
  }

  v14 = a1;
  if (a1)
  {
LABEL_13:
    v15 = v14(136);
    goto LABEL_14;
  }

  v15 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v17 = v15;
  if (v15)
  {
    *v15 = &unk_2A1F0A1D8;
    *(v15 + 72) = 0u;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 120) = 0u;
    *(v15 + 72) = a3;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v19 = BlueFin::GlRequestImplPosPeriodic::Create(Memory, v17, BlueFin::GlDbgProxyGlReqOnStart, a4, a5, a6);
    *(v17 + 24) = v19;
    if (!v19)
    {
      if (!v10)
      {
        v10 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v10(v17);
      return 0;
    }
  }

  return v17;
}

BlueFin::GlRequestImplPos *BlueFin::GlRequestImplPosPeriodic::Create(BlueFin::GlRequestImplPos *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  if (!a1)
  {
    DeviceFaultNotify("glrequest.cpp", 1279, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1279, "pvBuffer != nullptr");
  }

  return BlueFin::GlRequestImplPosPeriodic::GlRequestImplPosPeriodic(a1, a2, a3, a4, a5, a6, 0, 0, 0, 0);
}

BlueFin::GlRequestImplPos *BlueFin::GlRequestImplPosPeriodic::GlRequestImplPosPeriodic(BlueFin::GlRequestImplPos *this, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, int *a8, unsigned __int16 a9, __int16 *a10)
{
  *(this + 1) = a2;
  *(this + 4) = 0;
  *(this + 10) = 1;
  *(this + 12) = -1;
  *(this + 28) = -1;
  *(this + 9) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = a3;
  *(this + 32) = 1;
  *(this + 9) = 0;
  *(this + 20) = a6;
  *(this + 11) = a5;
  *(this + 92) = 0;
  *(this + 84) = 0;
  *(this + 98) = 0;
  *this = &unk_2A1F15AE8;
  *(this + 27) = a4;
  *(this + 14) = -1;
  if (a4 >> 4 >= 0x271 && a5 == -1)
  {
    *(this + 11) = a4 / 0x3E8;
  }

  BlueFin::GlRequestImplPos::InitSmartMask(this, a9, a10, a7, a8);
  *(this + 27) = 1000;
  return this;
}

uint64_t BlueFin::GlRequestImplPos::InitSmartMask(uint64_t this, unsigned __int16 a2, __int16 *a3, int a4, int *a5)
{
  v9 = this;
  v10 = *(this + 80);
  if ((v10 + 399) <= 0x18D)
  {
    v11 = -v10;
    *(this + 80) = v11;
    if (v11 <= 5)
    {
      this = GlCustomLog(12, "Warning: Requested accuracy too low, using 10m instead.\n");
      v11 = 10;
    }

    if (v11 >= SWORD2(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default))
    {
      if (v11 > SWORD2(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default) && v11 < SHIWORD(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default))
      {
        LOWORD(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default) = v11;
        WORD1(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default) = v11;
        v13 = -1;
        WORD2(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default) = v11;
        goto LABEL_17;
      }
    }

    else
    {
      LOWORD(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default) = v11;
      WORD1(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default) = v11;
    }

    v13 = -1;
LABEL_17:
    *(v9 + 80) = v13;
    goto LABEL_18;
  }

  if ((v10 - 401) <= 0xFFFFFCDE && *(this + 22) != 0)
  {
    this = GlCustomLog(12, "Warning: Requested accuracy too large, using 400m instead.\n");
    v13 = 400;
    goto LABEL_17;
  }

LABEL_18:
  v15 = 0;
  v16 = (v9 + 84);
  do
  {
    v16[v15] = *(&BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default + v15 * 2);
    ++v15;
  }

  while (v15 != 4);
  for (i = 0; i != 14; i += 2)
  {
    *(v9 + 92 + i) = *(&BlueFin::GlRequestImplPos::m_asSmartMaskToutS_default + i);
  }

  if (a2 - 1 <= 6 && a3)
  {
    v18 = 0;
    v19 = a3 + 1;
    v20 = (v9 + 94);
    do
    {
      if ((v18 & 1) == 0 && v18 + 1 < a2)
      {
        v21 = *(v19 - 1);
        if (v21 < *v19)
        {
          *(v20 - 1) = v21;
          *v20 = *v19;
        }
      }

      ++v18;
      ++v19;
      ++v20;
    }

    while (a2 != v18);
  }

  if (a4 == 4)
  {
    if (a5)
    {
      v23 = *a5;
      v22 = a5[1];
      if (*a5 <= v22)
      {
        v24 = a5[2];
        if (v22 < v24)
        {
          v25 = a5[3];
          if (v24 < v25)
          {
            if ((v23 - 5) <= 0x7FFA)
            {
              *v16 = v23;
            }

            if (v22 <= 49)
            {
              *(v9 + 86) = v22;
            }

            if (v25 <= 399)
            {
              *(v9 + 90) = v25;
            }

            if (v24 < 0x8000)
            {
              *(v9 + 88) = v24;
            }
          }
        }
      }
    }
  }

  return this;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnResponse(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3078);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 24))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnResponse);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3078);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

_DWORD *BlueFin::GlRequestImplPos::PrintDetails(_DWORD *this, unsigned __int8 a2)
{
  if (this[20] == -1)
  {
    v4 = this;
    v5 = BlueFin::GlRequestImpl::GlRequestTypeToString(this);
    GlCustomLog(a2, "%s SmartMask", v5);
    v6 = 0;
    v7 = 123;
    do
    {
      v8 = v6 + 1;
      GlCustomLog(a2, "%csmA%d,%hd", v7, v6 + 1, *(v4 + v6 + 42));
      v7 = 44;
      v6 = v8;
    }

    while (v8 != 4);
    v9 = 0;
    do
    {
      v10 = v9 + 1;
      GlCustomLog(a2, ",smT%d,%d", v9 + 1, *(v4 + v9 + 46));
      v9 = v10;
    }

    while (v10 != 7);

    return GlCustomLog(a2, "}\n");
  }

  return this;
}

uint64_t BlueFin::GlPeSatPosCache::GlPeSatPosCache(uint64_t result, uint64_t a2)
{
  *(result + 12) = 0;
  *result = result + 12;
  *(result + 8) = 3;
  *(result + 20) = 0;
  *(result + 36) = 0u;
  *(result + 24) = result + 36;
  *(result + 32) = 8;
  *(result + 52) = 0u;
  *(result + 264) = a2;
  if (BlueFin::GlUtils::m_pInstance)
  {
    v2 = (BlueFin::GlUtils::m_pInstance + 1408);
    v3 = 20;
    while (1)
    {
      v4 = *(v2 - 20);
      if (!v4 || v4 == BlueFin::Matrix::Debug && !*v2)
      {
        break;
      }

      ++v2;
      if (!--v3)
      {
        return result;
      }
    }

    *(v2 - 20) = BlueFin::Matrix::Debug;
    *v2 = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeSvVisibilityCache::GlPeSvVisibilityCache(uint64_t this, BlueFin::GlPeTimeManager *a2)
{
  v2 = 0;
  *this = 1;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 18) = -1;
  *(this + 1632) = this + 32;
  *(this + 1680) = this + 1664;
  *(this + 1664) = 0;
  v3 = 36;
  *(this + 1672) = 0;
  do
  {
    v4 = *(this + 1632);
    v5 = (v4 + 160 * v2);
    *v5 = &unk_2A1F10AF0;
    v5[1] = &off_2A1F0B5F0;
    v5[2] = 0;
    v5[16] = v5 + 4;
    v6 = (v4 + v3);
    v7 = 12;
    do
    {
      *(v6 - 2) = -256;
      *v6 = 0;
      v6 += 2;
      --v7;
    }

    while (v7);
    ++v2;
    v3 += 160;
  }

  while (v2 != 10);
  return this;
}

uint64_t *BlueFin::GlPeKfPool::GlPeKfPool(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a1 + 4656;
  v24 = a1 + 2472;
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 4864));
  v16 = BlueFin::GlPeNavGnssKFIf::GlPeNavGnssKFIf(a1, off_2A1F12CF8, a2, a3);
  *v16 = &unk_2A1F12B30;
  v15[208] = &unk_2A1F12CD8;
  BlueFin::GlPePrawnKf::GlPePrawnKf((v16 + 3), a2, a3, a4, a9, a8, a5, a6, a7, a10);
  BlueFin::GlPeNavGnssSpiderKF::GlPeNavGnssSpiderKF(a1 + 1462, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0);
  BlueFin::GlPeNavGnssSpiderKF::GlPeNavGnssSpiderKF(a1 + 3059, a2, a3, a4, a5, a6, a7, a8, a9, a10, 2);
  v15[3] = (a1 + 1462);
  v15[4] = 0;
  *(v15 + 10) = 0;
  v17 = (a1 + 4663);
  v18 = 1584;
  v15[6] = a6;
  do
  {
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v17);
    v17 = (v19 + 528);
    v18 -= 528;
  }

  while (v18);
  *v15 = (a1 + 1462);
  v15[1] = (a1 + 732);
  v15[2] = (a1 + 3059);
  *v24 = 0;
  v24[73] = 0;
  *(v15 + 205) = vdupq_n_s64(0x40C3880000000000uLL);
  (*(a1[732] + 376))();
  (*(**v15 + 376))();
  (*(*v15[2] + 376))();
  return a1;
}

uint64_t BlueFin::GlPePrawnKf::GlPePrawnKf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a1 + 10848;
  v17 = a1 + 5864;
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 11144));
  BlueFin::GlPeShrimpKf::GlPeShrimpKf(a1, &off_2A1F135A8, a7, a8, a6, a5, a2);
  BlueFin::GlPeNavGnssKFIf::GlPeNavGnssKFIf((a1 + 5832), off_2A1F135B8, a2, a3);
  *a1 = &unk_2A1F13208;
  *(a1 + 11144) = &unk_2A1F13588;
  *(a1 + 5832) = &unk_2A1F133E0;
  *(a1 + 5856) = a4;
  *v17 = 0;
  BlueFin::GlPeNavGnssResidMon::GlPeNavGnssResidMon(a1 + 5872, a2);
  *(a1 + 7240) = a9;
  *(a1 + 7248) = 0u;
  *(a1 + 7264) = 0u;
  *(a1 + 7280) = 0;
  *(a1 + 7288) = 0x4103880000000000;
  *(a1 + 7296) = 0;
  *(a1 + 7304) = 0;
  *(a1 + 7312) = xmmword_298A43F40;
  *(v17 + 1464) = 0;
  *(a1 + 7336) = a2;
  *(a1 + 7344) = a3;
  *(a1 + 7352) = a8;
  BlueFin::GlPeNavGnssResidMon::GlPeNavGnssResidMon(a1 + 7360, a2);
  *(a1 + 8728) = a4;
  *(a1 + 8736) = a1 + 656;
  *(a1 + 8744) = 0u;
  *(a1 + 8760) = 0u;
  *(a1 + 8776) = 0;
  *(a1 + 8784) = 0;
  *(a1 + 8792) = 0;
  *(a1 + 8808) = 0;
  *(a1 + 8816) = 0u;
  *(a1 + 8832) = -1;
  *(a1 + 8840) = 0;
  *(a1 + 8856) = 0;
  *(a1 + 8848) = 0;
  *(a1 + 8864) = 0;
  *(a1 + 8872) = 0u;
  *(a1 + 8888) = 0u;
  *(a1 + 8904) = 0u;
  *(a1 + 8920) = 0u;
  *(a1 + 8936) = 0u;
  *(a1 + 8952) = 0u;
  *(a1 + 8968) = 0u;
  *(a1 + 8984) = 0u;
  *(a1 + 9000) = 0u;
  *(a1 + 9016) = 0u;
  *(a1 + 9032) = 0u;
  *(a1 + 9048) = 0u;
  *(a1 + 9064) = 0u;
  *(a1 + 9080) = 0u;
  *(a1 + 9096) = 0u;
  *(a1 + 9112) = a10;
  *(a1 + 9120) = a7;
  *(a1 + 9128) = a8;
  *(v17 + 2936) = 0;
  *(a1 + 8804) = -7200001;
  bzero((a1 + 9136), 0x690uLL);
  *(a1 + 10816) = 63;
  *(a1 + 10820) = 0;
  *(a1 + 10825) = 0;
  *(a1 + 10840) = a1 + 10852;
  *v20 = 19;
  *(a1 + 10928) = a1 + 10940;
  *(v20 + 88) = 19;
  *(a1 + 10852) = 0u;
  *(a1 + 10868) = 0u;
  *(a1 + 10884) = 0u;
  *(a1 + 10900) = 0u;
  *(a1 + 10912) = 0u;
  *(a1 + 10940) = 0u;
  *(a1 + 10956) = 0u;
  *(a1 + 10972) = 0u;
  *(a1 + 10988) = 0u;
  *(a1 + 11000) = 0u;
  *(a1 + 11016) = a1 + 11028;
  *(v20 + 176) = 19;
  *(a1 + 11088) = 0u;
  *(a1 + 11060) = 0u;
  *(a1 + 11076) = 0u;
  *(a1 + 11028) = 0u;
  *(a1 + 11044) = 0u;
  *(v20 + 256) = 1;
  *(a1 + 11112) = 0;
  *(a1 + 11120) = 0;
  *(a1 + 11136) = 0;
  return a1;
}

uint64_t *BlueFin::GlPeNavGnssKFIf::GlPeNavGnssKFIf(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *result = v4;
  *(result + *(v4 - 24)) = a2[2];
  result[1] = a3;
  result[2] = a4;
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 24)) = a2[3];
  return result;
}

uint64_t BlueFin::GlPeShrimpKf::GlPeShrimpKf(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_298A44750;
  *(a1 + 32) = 3;
  *(a1 + 40) = 0x4054D33340000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0x3FF0000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0x3FF0000000000000;
  *(a1 + 240) = 0u;
  *(a1 + 272) = 0x1500000000;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 280;
  *(a1 + 456) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 511) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 652) = 0;
  *(a1 + 634) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  v9 = a1 + 680;
  *(a1 + 672) = xmmword_298A43FA0;
  *(a1 + 656) = a1 + 688;
  *(a1 + 664) = a1 + 4216;
  v10 = 8;
  *(a1 + 4216) = 0;
  do
  {
    *(*(a1 + 664) + v10) = v9;
    v9 += 168;
    v10 += 8;
  }

  while (v10 != 176);
  *(a1 + 4392) = a1 + 4408;
  *(a1 + 4400) = 0x1500000000;
  *(a1 + 4664) = 0;
  *(a1 + 4672) = 0u;
  *(a1 + 4648) = 0;
  *(a1 + 4408) = 0u;
  *(a1 + 4424) = 0u;
  *(a1 + 4440) = 0u;
  *(a1 + 4456) = 0u;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 4504) = 0u;
  *(a1 + 4520) = 0u;
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0u;
  *(a1 + 4568) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4600) = 0u;
  *(a1 + 4616) = 0u;
  *(a1 + 4632) = 0u;
  *(a1 + 4688) = 0x3FF0000000000000;
  *(a1 + 4696) = 0u;
  *(a1 + 4712) = 0;
  *(a1 + 4720) = 0x3FF0000000000000;
  *(a1 + 4728) = 0u;
  *(a1 + 4744) = 0;
  *(a1 + 4752) = 0x3FF0000000000000;
  *(a1 + 4760) = 0u;
  *(a1 + 4776) = 0;
  *(a1 + 4792) = 0u;
  *(a1 + 4784) = 0x3FF0000000000000;
  *(a1 + 4808) = 0;
  *(a1 + 4816) = 0x3FF0000000000000;
  *(a1 + 4824) = 0u;
  *(a1 + 4840) = 0;
  *(a1 + 4856) = 0;
  *(a1 + 4872) = 0u;
  *(a1 + 4888) = 0;
  *(a1 + 5048) = 0u;
  *(a1 + 5064) = 0;
  *(a1 + 4920) = 0u;
  *(a1 + 4936) = 0u;
  *(a1 + 4952) = 0u;
  *(a1 + 4968) = 0u;
  *(a1 + 4984) = 0u;
  *(a1 + 5000) = 0u;
  *(a1 + 5072) = 0x3FF0000000000000;
  *(a1 + 5080) = 0u;
  *(a1 + 5096) = 0u;
  *(a1 + 5112) = 0u;
  *(a1 + 5128) = 0x3FF0000000000000;
  *(a1 + 5136) = 0u;
  *(a1 + 5152) = 0u;
  *(a1 + 5168) = 0u;
  *(a1 + 5184) = 0u;
  *(a1 + 5200) = 0;
  *(a1 + 5224) = a4;
  *(a1 + 5232) = a3;
  *(a1 + 5240) = a6;
  *(a1 + 5248) = a5;
  *(a1 + 5256) = a6 + 144;
  *(a1 + 5264) = a1 + 5280;
  *(a1 + 5272) = 0x300000000;
  *(a1 + 5296) = 0u;
  *(a1 + 5280) = 0u;
  *(a1 + 5352) = 0u;
  *(a1 + 5368) = 0;
  *(a1 + 5568) = 0;
  *(a1 + 5576) = 0x403735C28F5C28F6;
  *(a1 + 5584) = xmmword_298A44760;
  *(a1 + 5384) = 0;
  *(a1 + 5386) = 0;
  *(a1 + 5552) = 0;
  *(a1 + 5560) = 0;
  *(a1 + 5564) = 0;
  *(a1 + 5784) = 1;
  *(a1 + 5792) = xmmword_298A44770;
  *(a1 + 5808) = 0x40048F5C28F5C28FLL;
  *(a1 + 5600) = 0;
  *(a1 + 5602) = 0;
  *(a1 + 5768) = 0;
  *(a1 + 5776) = 0;
  *(a1 + 5780) = 0;
  *(a1 + 5824) = a7;
  BlueFin::GlPeShrimpKf::ResetINS(a1, 0);
  return a1;
}

uint64_t BlueFin::GlPeShrimpKf::ResetINS(uint64_t *a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  GlCustomLog(15, "GlPeShrimpKf::Reset @ lms %d, type %d\n", *(a1 + *(*a1 - 24) + 200), a2);
  v4 = *(a1 + *(*a1 - 24) + 200);
  BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v15);
  BlueFin::GlPeNavGnssState::operator=(a1 + *(*a1 - 24), &v15);
  v5 = *a1;
  *(a1 + *(*a1 - 24) + 200) = v4;
  *(a1 + *(v5 - 24) + 196) = a2;
  *(a1 + 2) = 0;
  v17 = 0u;
  memset(v18, 0, 28);
  v15 = 0u;
  v16 = 0u;
  memset(&v18[32], 0, 64);
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27[1] = 0x1500000000;
  memset(v28, 0, sizeof(v28));
  v27[0] = v28;
  v29 = 0;
  a1[15] = 0;
  *(a1 + 13) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 7) = 0u;
  v6 = *&v18[24];
  a1[18] = *&v18[40];
  *(a1 + 8) = v6;
  *(a1 + 23) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 19) = 0u;
  a1[25] = 0x3FF0000000000000;
  a1[26] = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0x3FF0000000000000;
  a1[30] = 0;
  a1[31] = 0;
  a1[32] = 0;
  BlueFin::SKFVector::Clone((a1 + 33), v27);
  *(a1 + 228) = v29;
  v15 = 0u;
  v16 = 0u;
  memset(&v18[16], 0, 42);
  v7 = *v18;
  *(a1 + 36) = v17;
  *(a1 + 37) = v7;
  v8 = *&v18[32];
  *(a1 + 38) = *&v18[16];
  *(a1 + 39) = v8;
  *(a1 + 636) = *&v18[44];
  v9 = v16;
  *(a1 + 34) = v15;
  *(a1 + 35) = v9;
  *(a1 + 163) = 0;
  BlueFin::BigMatrix::Null((a1 + 82), *(a1 + 168), *(a1 + 169));
  BlueFin::BigMatrix::Null((a1 + 82), 21, 21);
  v10 = a1[83];
  *(v10[1] + 8) = 0x4059000000000000;
  *(v10[2] + 16) = 0x4059000000000000;
  *(v10[3] + 24) = 0x4059000000000000;
  *(v10[4] + 32) = 0x3FF0000000000000;
  *(v10[5] + 40) = 0x3FF0000000000000;
  *(v10[6] + 48) = 0x3FF0000000000000;
  *(v10[7] + 56) = 0x4059000000000000;
  *(v10[8] + 64) = 0x3FF0000000000000;
  *(v10[9] + 72) = 0x3F9F315CE64F7180;
  *(v10[10] + 80) = 0x3F9F315CE64F7180;
  *(v10[11] + 88) = 0x3F9F315CE64F7180;
  *(v10[12] + 96) = 0x3F847AE147AE147CLL;
  *(v10[13] + 104) = 0x3F847AE147AE147CLL;
  *(v10[14] + 112) = 0x3F847AE147AE147CLL;
  *(v10[15] + 120) = 0x3F9F315CE64F7180;
  *(v10[16] + 128) = 0x3F9F315CE64F7180;
  *(v10[17] + 136) = 0x3EC98D9BF9B35BC1;
  *(v10[18] + 144) = 0x3EC98D9BF9B35BC1;
  *(v10[19] + 152) = 0x3EC98D9BF9B35BC1;
  *(v10[20] + 160) = 0x3FA47AE147AE147CLL;
  *(v10[21] + 168) = 0x4030000000000000;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  result = BlueFin::CheckCovMat((a1 + 82));
  if ((result & 1) == 0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 270, "ResetINS", "CheckCovMat(m_P)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 270, "CheckCovMat(m_P)");
  }

  *(a1 + 1100) = 21;
  v12 = a1[549];
  *(v12 + 168) = 0;
  *(v12 + 152) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 8) = 0u;
  a1[585] = 0;
  *(a1 + 581) = 0u;
  *(a1 + 583) = 0u;
  *(a1 + 577) = 0u;
  *(a1 + 579) = 0u;
  *(a1 + 573) = 0u;
  *(a1 + 575) = 0u;
  a1[586] = 0x3FF0000000000000;
  a1[587] = 0;
  *(a1 + 294) = 0u;
  a1[590] = 0x3FF0000000000000;
  a1[591] = 0;
  *(a1 + 296) = 0u;
  a1[594] = 0x3FF0000000000000;
  *(a1 + 595) = 0u;
  a1[597] = 0;
  a1[598] = 0x3FF0000000000000;
  *(a1 + 599) = 0u;
  a1[601] = 0;
  if (a2 != 10)
  {
    a1[602] = 0x3FF0000000000000;
    a1[603] = 0;
    a1[605] = 0;
    a1[604] = 0;
    *(a1 + 1212) = 0;
  }

  *(a1 + 2426) = 0;
  *(a1 + 607) = 0uLL;
  *(a1 + 609) = 0uLL;
  *(a1 + 611) = 0uLL;
  *(a1 + 4904) = 0;
  a1[629] = 0;
  *(a1 + 1260) = 0;
  a1[631] = 0;
  *(a1 + 316) = 0uLL;
  *(a1 + 307) = 0uLL;
  *(a1 + 308) = 0uLL;
  *(a1 + 309) = 0uLL;
  *(a1 + 310) = 0uLL;
  *(a1 + 311) = 0uLL;
  *(a1 + 312) = 0uLL;
  *(a1 + 313) = 0uLL;
  a1[634] = 0x3FF0000000000000;
  *(a1 + 637) = 0uLL;
  *(a1 + 639) = 0uLL;
  *(a1 + 635) = 0uLL;
  a1[641] = 0x3FF0000000000000;
  *(a1 + 321) = 0uLL;
  *(a1 + 322) = 0uLL;
  *(a1 + 323) = 0uLL;
  *(a1 + 324) = 0uLL;
  *(a1 + 325) = 0uLL;
  a1[652] = 0;
  *(a1 + 1318) = 3;
  v13 = a1[658];
  *(v13 + 24) = 0;
  *(v13 + 8) = 0uLL;
  *(a1[658] + 8) = 0;
  a1[665] = 0;
  *(a1 + 5328) = 0;
  *(a1 + 1333) = 0;
  *(a1 + 5336) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 5347) = 0;
  *(a1 + 5340) = 0;
  a1[669] = a1[573];
  *(a1 + 335) = *(a1 + 287);
  *(a1 + 5376) = 0;
  *(a1 + 2692) = 0;
  *(a1 + 5386) = 0;
  a1[694] = 0;
  *(a1 + 1390) = 0;
  *(a1 + 5564) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 5602) = 0;
  a1[721] = 0;
  *(a1 + 1444) = 0;
  *(a1 + 5780) = 0;
  *(a1 + 5816) = 3;
  *(a1 + 268) = 0;
  *(a1 + 65) = 0uLL;
  *(a1 + 1256) = 0;
  *(a1 + 511) = 0;
  *(a1 + 30) = 0uLL;
  *(a1 + 31) = 0uLL;
  *(a1 + 29) = 0uLL;
  *(a1 + 5817) = 0;
  *(a1 + 1455) = 0;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeNavGnssState::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 196) = *(a2 + 196);
  BlueFin::GlSetBase::operator=(a1 + 264, a2 + 264);
  *(a1 + 276) = *(a2 + 276);
  v5 = *(a2 + 292);
  v6 = *(a2 + 308);
  v7 = *(a2 + 324);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 308) = v6;
  *(a1 + 324) = v7;
  *(a1 + 292) = v5;
  BlueFin::GlSetBase::operator=(a1 + 352, a2 + 352);
  *(a1 + 364) = *(a2 + 364);
  v8 = *(a2 + 380);
  v9 = *(a2 + 396);
  v10 = *(a2 + 412);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 396) = v9;
  *(a1 + 412) = v10;
  *(a1 + 380) = v8;
  BlueFin::GlSetBase::operator=(a1 + 440, a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  v11 = *(a2 + 468);
  v12 = *(a2 + 484);
  v13 = *(a2 + 500);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 484) = v12;
  *(a1 + 500) = v13;
  *(a1 + 468) = v11;
  return a1;
}

void BlueFin::BigMatrix::Null(BlueFin::BigMatrix *this, int a2, int a3)
{
  *(this + 4) = a2;
  *(this + 5) = a3;
  if (*(this + 6) < a2 || *(this + 7) < a3)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 921, "Null", "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 921, "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
  }

  if (a2 >= 1)
  {
    v4 = 0;
    do
    {
      bzero((*(*(this + 1) + 8 * v4++ + 8) + 8), 8 * *(this + 5));
    }

    while (v4 < *(this + 4));
  }
}

uint64_t BlueFin::CheckCovMat(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 20);
  v3 = *(a1 + 8);
  v4 = 1;
  while (1)
  {
    v5 = v4++;
    if (v4 <= v2)
    {
      break;
    }

LABEL_8:
    if (v4 > v1)
    {
      return 1;
    }
  }

  v6 = *(v3 + 8 * v5);
  v7 = v4;
  while (1)
  {
    v8 = *(v6 + 8 * v7);
    v9 = *(v3 + 8 * v7);
    if (v8 * v8 > *(v6 + 8 * v5) * *(v9 + 8 * v7) || vabdd_f64(v8, *(v9 + 8 * v5)) > 0.000000001)
    {
      return 0;
    }

    if (++v7 > v2)
    {
      goto LABEL_8;
    }
  }
}

double BlueFin::GlPeNavGnssResidMon::GlPeNavGnssResidMon(uint64_t a1, uint64_t a2)
{
  *a1 = 0x3FC999999999999ALL;
  v2 = a1 + 112;
  for (i = 112; i != 1360; i += 624)
  {
    v4 = a1 + i;
    v5 = v2;
    v6 = 600;
    do
    {
      *v5 = 0;
      *(v5 + 10) = 575;
      v5 += 12;
      v6 -= 12;
    }

    while (v6);
    *(v4 + 616) = 0;
    *(v4 + 620) = 0;
    *(v4 + 600) = 0;
    *(v4 + 606) = 0;
    v2 += 624;
  }

  *(a1 + 1360) = a2;
  __asm { FMOV            V0.2D, #20.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_298A44820;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_298A44820;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 712) = 0;
  *(a1 + 718) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 1356) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1342) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

uint64_t BlueFin::GlPePolaroid::GlPePolaroid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 2032));
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_2A1F13068;
  *(a1 + 2032) = &unk_2A1F130A0;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 57) = a9;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 87) = 0;
  *(a1 + 104) = 0;
  *(a1 + 109) = 0;
  bzero((a1 + 128), 0x4B0uLL);
  *(a1 + 123) = 0;
  *(a1 + 120) = 0;
  *(a1 + 1904) = a1 + 1916;
  *(a1 + 1912) = 19;
  *(a1 + 1916) = 0u;
  *(a1 + 1932) = 0u;
  *(a1 + 1948) = 0u;
  *(a1 + 1964) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0x3FF0000000000000;
  *(a1 + 1992) = 0;
  *(a1 + 2001) = 0;
  *(a1 + 2000) = 0;
  return a1;
}

void BlueFin::GlPeNavGnssKF::Reset(uint64_t *a1, int a2)
{
  *(a1 + *(*a1 - 24) + 176) = 0;
  *(a1 + 167) = 0u;
  a1[169] = 0;
  v4 = a1 + 6869;
  a1[171] = 0;
  *(a1 + 86) = 0u;
  a1[175] = 0;
  *(a1 + 88) = 0u;
  a1[183] = 0x300000003;
  *(a1 + 368) = 1232348160;
  BlueFin::BigMatrix::Null((a1 + 4), *(a1 + 12), *(a1 + 13));
  a1[196] = 0xFF9222FF00000000;
  *(a1 + 1600) = 0;
  *(a1 + 99) = 0u;
  a1[197] = 0;
  *(a1 + 1604) = 0;
  v5 = *a1;
  *(a1 + 369) = *a1[1];
  *(a1 + *(v5 - 24) + 88) = 0;
  *(a1 + *(v5 - 24) + 96) = 1217552911;
  *(a1 + *(v5 - 24) + 196) = a2;
  a1[187] = 0;
  *(a1 + 185) = 0u;
  *(a1 + 376) = 1137180672;
  *(a1 + 296) = 0u;
  *(a1 + 295) = 0u;
  a1[594] = 1092479462;
  a1[272] = 0;
  a1[273] = 1065353216;
  *(a1 + 2192) = 0;
  *(a1 + 543) = 0;
  *(a1 + 95) = 0u;
  a1[189] = 0;
  *(a1 + 2196) = 0u;
  *(a1 + 96) = vdupq_n_s64(0x4103880000000000uLL);
  a1[194] = 0x4103880000000000;
  *(a1 + 165) = 0u;
  *(a1 + 166) = 0u;
  a1[334] = 0;
  a1[335] = 0x4103880000000000;
  a1[336] = 0;
  *(a1 + 674) = 0;
  *(a1 + 169) = xmmword_298A43F40;
  *(a1 + 2720) = 0;
  *v4 = 0;
  v4[3787] = 0;
  a1[863] = 0;
  *(a1 + 1728) = 0;
  BlueFin::GlPeNavGnssState::GlPeNavGnssState(v7);
  BlueFin::GlPeNavGnssState::operator=((a1 + 865), v7);
  BlueFin::GlPeNavGnssState::GlPeNavGnssState(v7);
  BlueFin::GlPeNavGnssState::operator=((a1 + 931), v7);
  *(a1 + 1996) = 0;
  a1[997] = 0;
  v6 = *a1;
  bzero(*(a1 + *(*a1 - 24) + 352), ((4 * *(a1 + *(*a1 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(a1 + *(v6 - 24) + 264), ((4 * *(a1 + *(v6 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
}

double BlueFin::GlPeSatPos::GlPeSatPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *a1 = &unk_2A1F13128;
  *(a1 + 8) = -7200001;
  *(a1 + 16) = a1 + 28;
  *(a1 + 24) = 3;
  do
  {
    v5 = a1 + v4;
    *(v5 + 40) = 0;
    *(v5 + 44) = 7;
    *(v5 + 48) = 0;
    *(v5 + 52) = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0xC15B773FC0000000;
    *(v5 + 72) = 0uLL;
    *(v5 + 88) = 0uLL;
    *(v5 + 104) = 0uLL;
    *(v5 + 120) = 0uLL;
    *(v5 + 136) = 0uLL;
    *(v5 + 152) = 0uLL;
    *(v5 + 168) = 0uLL;
    *(v5 + 184) = 0uLL;
    *(v5 + 200) = 0uLL;
    v4 += 192;
    *(v5 + 216) = 0uLL;
  }

  while (v4 != 17472);
  *(a1 + 17704) = a2;
  *(a1 + 17712) = a4;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *&v6 = 0x5B5B5B5B5B5B5B5BLL;
  *(&v6 + 1) = 0x5B5B5B5B5B5B5B5BLL;
  *(a1 + 17512) = v6;
  *(a1 + 17528) = v6;
  *(a1 + 17544) = v6;
  *(a1 + 17560) = v6;
  *(a1 + 17576) = v6;
  *(a1 + 17592) = v6;
  *(a1 + 17608) = v6;
  *(a1 + 17624) = v6;
  *(a1 + 17640) = v6;
  *(a1 + 17656) = v6;
  *(a1 + 17672) = v6;
  *(a1 + 17685) = v6;
  *(a1 + 17720) = a2;
  *(a1 + 17728) = a4;
  *(a1 + 17864) = 0x300000003;
  *(a1 + 17736) = 0x3FF0000000000000;
  *(a1 + 17768) = 0;
  result = 0.0;
  *(a1 + 17744) = 0u;
  *(a1 + 17776) = xmmword_298A436D0;
  *(a1 + 17800) = 0u;
  *(a1 + 17816) = 0x3FF0000000000000;
  *(a1 + 17888) = 0;
  *(a1 + 17872) = 0u;
  return result;
}

uint64_t BlueFin::GlPeRangeAidGen::GlPeRangeAidGen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1 + 0x4000;
  *a1 = a2;
  *(a1 + 8) = a3;
  BlueFin::GlPeSatAidInfo::GlPeSatAidInfo((a1 + 32));
  BlueFin::GlSatAidInfo::GlSatAidInfo(a1 + 9216);
  v13 = 0;
  *(a1 + 18048) = a4;
  *(a1 + 18056) = a5;
  *(a1 + 18064) = a6;
  *(v12 + 1688) = 7;
  *(v12 + 1692) = 0;
  *(a1 + 18248) = a1 + 18080;
  do
  {
    v14 = *(a1 + 18248) + v13;
    *(v14 + 12) = 0;
    *v14 = v14 + 12;
    *(v14 + 8) = 2;
    v13 += 24;
  }

  while (v13 != 168);
  v15 = 0;
  *(a1 + 19032) = a1 + 19044;
  *(v12 + 2656) = 8;
  *(a1 + 19044) = 0u;
  *(a1 + 19060) = 0u;
  *(v12 + 2700) = 0;
  *(a1 + 19272) = a1 + 19104;
  do
  {
    v16 = *(a1 + 19272) + v15;
    *(v16 + 12) = 0;
    *v16 = v16 + 12;
    *(v16 + 8) = 2;
    v15 += 24;
  }

  while (v15 != 168);
  *(v12 + 2912) = 0;
  *(a1 + 19304) = a1 + 19316;
  *(v12 + 2928) = 8;
  *(a1 + 19316) = 0u;
  *(a1 + 19332) = 0u;
  *(v12 + 2968) = 0;
  *(v12 + 2972) = 0;
  *(a1 + 19360) = a7;
  BlueFin::GlPeRangeAidGen::clear(a1, 0);
  bzero(*(a1 + 19304), ((4 * *(v12 + 2928) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  return a1;
}

void BlueFin::GlPeRangeAidGen::clear(BlueFin::GlPeRangeAidGen *this, char a2)
{
  v4 = this + 0x4000;
  v5 = 7;
  *(this + 4518) = 7;
  *(this + 18076) = 0;
  v6 = (*(this + 2281) + 8);
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v6 += 24;
    bzero(v7, ((4 * v8 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v5;
  }

  while (v5);
  memset_pattern16(this + 18272, &memset_pattern_1, 0x2F0uLL);
  *(v4 + 660) = -1;
  *(v4 + 674) = 0;
  (*(**(this + 1) + 16))(*(this + 1));
  BlueFin::GlPeSatAidInfo::Clear(this + 32, a2);
  v9 = *(this + 2379);
  v10 = ((4 * v4[2656] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v9, v10);
}

BlueFin::GlPeMsmtMgr *BlueFin::GlPeMsmtMgr::GlPeMsmtMgr(BlueFin::GlPeMsmtMgr *this, BlueFin::GlPeOscMgr *a2, const BlueFin::stSkfTestParam *a3, const BlueFin::GlSettingsImpl *a4)
{
  *this = vdup_n_s32(0xFF9222FF);
  *(this + 20) = 0u;
  *(this + 1) = this + 20;
  *(this + 16) = 19;
  *(this + 36) = 0u;
  v8 = this + 55872;
  *(this + 52) = 0u;
  v9 = this + 37280;
  *(this + 68) = 0u;
  v10 = this + 18784;
  *(this + 5) = 0u;
  *(this + 108) = 0u;
  *(this + 12) = this + 108;
  *(this + 104) = 19;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 168) = 0u;
  *(this + 196) = 0u;
  *(this + 23) = this + 196;
  *(this + 192) = 19;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 16) = 0u;
  BlueFin::stPePropSigMeas::stPePropSigMeas((this + 288));
  *v10 = 0;
  *(this + 2349) = BlueFin::GlPeObjFactory::MakeMePeSigMeasArray(BlueFin::GlPeObjFactory::m_potGlPeObjFactory);
  v10[16] = 0;
  *(this + 2351) = a2;
  v10[32] = 0;
  *(this + 2356) = &unk_2A1F118D0;
  *v9 = this + 18880;
  *(v9 + 1) = this + 37300;
  v9[16] = 19;
  *(this + 37300) = 0u;
  *(this + 37316) = 0u;
  *(this + 37332) = 0u;
  *(this + 37348) = 0u;
  v11 = (this + 18904);
  *(this + 37364) = 0u;
  *(this + 9345) = 0;
  v12 = 575;
  do
  {
    *(v11 - 24) = 0;
    *(v11 - 5) = -1;
    *(v11 - 8) = 575;
    *(v11 - 6) = 0;
    *(v11 - 1) = 0;
    *v11 = 0;
    v11 += 8;
    --v12;
  }

  while (v12);
  *(v9 + 32) = -1;
  *(v9 + 20) = &unk_2A1F118D0;
  *v8 = this + 37472;
  *(v8 + 1) = this + 55892;
  v8[16] = 19;
  *(this + 55892) = 0u;
  *(this + 55908) = 0u;
  *(this + 55924) = 0u;
  *(this + 55940) = 0u;
  *(this + 55956) = 0u;
  v13 = v9 + 216;
  *(this + 13993) = 0;
  v14 = 575;
  do
  {
    *(v13 - 24) = 0;
    *(v13 - 5) = -1;
    *(v13 - 8) = 575;
    *(v13 - 6) = 0;
    *(v13 - 1) = 0;
    *v13 = 0;
    v13 += 8;
    --v14;
  }

  while (v14);
  *(v8 + 16) = &unk_2A1F11900;
  *(this + 56008) = 0u;
  *(this + 56024) = 0u;
  *(this + 56040) = 0u;
  *(this + 56056) = 0u;
  *(this + 56066) = 0u;
  *(v8 + 210) = 65537;
  *(v8 + 107) = 2;
  *(this + 56088) = 0u;
  *(this + 56104) = 0u;
  *(this + 14030) = 0;
  *(v8 + 126) = 255;
  v8[254] = 0;
  *(v8 + 64) = 0;
  *(v8 + 172) = 0;
  *(v8 + 44) = a3;
  *(v8 + 45) = a4;
  *(v8 + 46) = this + 56252;
  v8[376] = 19;
  *(this + 56252) = 0u;
  *(this + 56268) = 0u;
  *(this + 56284) = 0u;
  *(this + 56300) = 0u;
  *(this + 56312) = 0u;
  *(v8 + 57) = BlueFin::GlPeObjFactory::MakePeGridMeasArray(BlueFin::GlPeObjFactory::m_potGlPeObjFactory);
  *(this + 56136) = 0u;
  *(this + 56152) = 0u;
  *(this + 56168) = 0u;
  *(this + 56184) = 0u;
  *(this + 56200) = 0u;
  GlCustomLog(127, "Size,GlPeMsmtMgr,%u\n", 56352);
  GlCustomLog(127, "    ->Size,GlMeas,%u\n", 17152);
  GlCustomLog(127, "    ->Size,stPePropSigMeas,%u\n", 18496);
  GlCustomLog(127, "    ->Size,stPeStoredDoppler,%u\n", 18560);
  GlCustomLog(127, "    ->Size,stPeSigEnv,%u\n", 16);
  GlCustomLog(127, "    ->Size,GlPowerMeas,%u\n", 116);
  return this;
}

BlueFin::GlBigArray *BlueFin::GlBigArray::GlBigArray(BlueFin::GlBigArray *this, void *a2, int a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned __int16 *a7, unsigned int a8)
{
  *this = a2;
  *(this + 1) = a5;
  *(this + 2) = a7;
  *(this + 6) = a3;
  *(this + 14) = a4;
  *(this + 15) = a6;
  *(this + 16) = a8;
  if (a4 >= 0x10000)
  {
    v10 = "m_usMinHandle == min_handle";
    DeviceFaultNotify("glutl_array.cpp", 190, "GlBigArray", "m_usMinHandle == min_handle");
    v11 = 190;
    goto LABEL_8;
  }

  if (a6 >= 0x10000)
  {
    v10 = "m_usNumHandles == num_handles";
    DeviceFaultNotify("glutl_array.cpp", 191, "GlBigArray", "m_usNumHandles == num_handles");
    v11 = 191;
    goto LABEL_8;
  }

  if (a8 >= 0x10000)
  {
    v10 = "m_usNumSlots == num_slots";
    DeviceFaultNotify("glutl_array.cpp", 192, "GlBigArray", "m_usNumSlots == num_slots");
    v11 = 192;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_array.cpp", v11, v10);
  }

  BlueFin::GlBigArray::Clear(this);
  return this;
}

BlueFin::GlUtlGlSysLogEntryCodec *BlueFin::GlUtlGlSysLogEntryCodec::GlUtlGlSysLogEntryCodec(BlueFin::GlUtlGlSysLogEntryCodec *this)
{
  *(this + 131) = 0;
  *(this + 68) = 0;
  *(this + 276) = 0;
  *(this + 35) = 0;
  *this = 0;
  *(this + 4) = 0;
  *(this + 33) = &unk_2A1F09578;
  bzero(this + 288, 0x2800uLL);
  *(this + 245) = 0u;
  *(this + 229) = 0u;
  *(this + 213) = 0u;
  *(this + 197) = 0u;
  *(this + 181) = 0u;
  *(this + 165) = 0u;
  *(this + 149) = 0u;
  *(this + 133) = 0u;
  *(this + 117) = 0u;
  *(this + 101) = 0u;
  *(this + 85) = 0u;
  *(this + 69) = 0u;
  *(this + 53) = 0u;
  *(this + 37) = 0u;
  *(this + 21) = 0u;
  v2 = -1;
  v3 = &dword_298A330BC;
  *(this + 5) = 0u;
  while (v2 != 129)
  {
    v4 = *v3;
    v3 += 2;
    v5 = v2 + 1;
    v6 = v2 + 2;
    ++v2;
    if (v6 != v4)
    {
      if (v5 <= 0x81)
      {
        DeviceFaultNotify("glutl_slog_codec.cpp", 969, "GlUtlGlSysLogEntryCodec", "VerifyTagEntryTable()");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 969, "VerifyTagEntryTable()");
      }

      return this;
    }
  }

  return this;
}

void *BlueFin::GlPeCntinMgr::initial(void *result)
{
  result[1] = BlueFin::GlPeCntinMgr::idle;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlPeCntinMgr::idle";
  return result;
}

uint64_t BlueFin::GlPeHula::GlPeHula(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0x1117000020001;
  *(a1 + 8) = xmmword_298A43B20;
  *(a1 + 24) = xmmword_298A43B30;
  v12 = a1 + 4096;
  *(a1 + 40) = xmmword_298A43B40;
  *(a1 + 56) = xmmword_298A43B50;
  *(a1 + 72) = 0x404000003DCCCCCDLL;
  *(a1 + 80) = 3;
  *(a1 + 88) = xmmword_298A43B60;
  *(a1 + 104) = xmmword_298A43B70;
  *(a1 + 120) = xmmword_298A43B80;
  *(a1 + 136) = xmmword_298A43B90;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xFFFFFFFF00000000;
  *(a1 + 584) = 0;
  *(a1 + 586) = 0;
  *(a1 + 588) = 0;
  *(a1 + 592) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 182) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  BlueFin::GlPeSensStats::reset(a1);
  *(a1 + 1008) = a5;
  *(a1 + 1016) = a6;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0xC15B773FC0000000;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0xC15B773FC0000000;
  *(a1 + 1056) = 0;
  *(a1 + 1060) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1076) = 0;
  *(a1 + 1080) = a2;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 1120) = _Q0;
  *(a1 + 1136) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = a5;
  *(a1 + 1176) = 0;
  *(a1 + 1156) = 0;
  *(a1 + 1140) = 0u;
  *(a1 + 1184) = xmmword_298A2F6C0;
  *(a1 + 1200) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = a5;
  *(a1 + 1220) = 0;
  *(a1 + 1204) = 0u;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 0xBFF0000000000000;
  *(a1 + 1256) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = a5;
  *(a1 + 1276) = 0;
  *(a1 + 1260) = 0u;
  *(a1 + 1296) = a1 + 1312;
  *(a1 + 1304) = 0x6400000000;
  bzero((a1 + 1312), 0x328uLL);
  *(a1 + 2120) = a1 + 2136;
  *(a1 + 2128) = 0x6400000000;
  bzero((a1 + 2136), 0x330uLL);
  *(a1 + 2952) = 0xBFF0000000000000;
  *(a1 + 2960) = 0;
  *(a1 + 2988) = 0;
  *(a1 + 2992) = a5;
  *(a1 + 2964) = 0u;
  *(a1 + 2980) = 0;
  *(a1 + 3000) = a5;
  *(a1 + 3008) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3128) = 0;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0u;
  v18 = vdupq_n_s64(0x412E848000000000uLL);
  *(a1 + 3040) = v18;
  *(a1 + 3056) = v18;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3112) = 0;
  *(a1 + 3136) = a5;
  *(a1 + 3164) = 0;
  *(a1 + 3160) = 0;
  *(a1 + 3144) = 0u;
  *(a1 + 3168) = a5;
  *(a1 + 3216) = 0;
  *(a1 + 3220) = -1082130432;
  *(a1 + 3208) = 0;
  *(a1 + 3176) = 0u;
  *(a1 + 3192) = 0u;
  *(a1 + 3224) = 0;
  *(a1 + 3232) = 0;
  *(a1 + 3236) = 0;
  *(a1 + 3244) = 0;
  *(a1 + 3648) = 0;
  *(a1 + 3656) = 22;
  *(a1 + 3632) = 0u;
  *(a1 + 3616) = 0u;
  *(a1 + 3600) = 0u;
  *(a1 + 3584) = 0u;
  *(a1 + 3568) = 0u;
  *(a1 + 3552) = 0u;
  *(a1 + 3536) = 0u;
  *(a1 + 3520) = 0u;
  *(a1 + 3504) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3472) = 0u;
  *(a1 + 3456) = 0u;
  *(a1 + 3440) = 0u;
  *(a1 + 3424) = 0u;
  *(a1 + 3408) = 0u;
  *(a1 + 3392) = 0u;
  *(a1 + 3376) = 0u;
  *(a1 + 3360) = 0u;
  *(a1 + 3344) = 0u;
  *(a1 + 3328) = 0u;
  *(a1 + 3312) = 0u;
  *(a1 + 3296) = 0u;
  *(a1 + 3280) = 0u;
  *(a1 + 3264) = 0u;
  *(a1 + 3248) = 0u;
  *(a1 + 3660) = 0;
  *(a1 + 3664) = 0;
  *(a1 + 3672) = 0;
  *(a1 + 4076) = 0;
  *(a1 + 4080) = 0x1600000000;
  *(a1 + 3676) = 0u;
  *(a1 + 3692) = 0u;
  *(a1 + 3708) = 0u;
  *(a1 + 3724) = 0u;
  *(a1 + 3740) = 0u;
  *(a1 + 3756) = 0u;
  *(a1 + 3772) = 0u;
  *(a1 + 3788) = 0u;
  *(a1 + 3804) = 0u;
  *(a1 + 3820) = 0u;
  *(a1 + 3836) = 0u;
  *(a1 + 3852) = 0u;
  *(a1 + 3868) = 0u;
  *(a1 + 3884) = 0u;
  *(a1 + 3900) = 0u;
  *(a1 + 3916) = 0u;
  *(a1 + 3932) = 0u;
  *(a1 + 3948) = 0u;
  *(a1 + 3964) = 0u;
  *(a1 + 3980) = 0u;
  *(a1 + 3996) = 0u;
  *(a1 + 4012) = 0u;
  *(a1 + 4028) = 0u;
  *(a1 + 4044) = 0u;
  *(a1 + 4060) = 0u;
  *(a1 + 4088) = 0;
  *(a1 + 4096) = 0x408F400000000000;
  *(a1 + 4104) = 0;
  *(a1 + 4128) = 0;
  *(a1 + 4136) = a5;
  *(a1 + 4108) = 0u;
  *(a1 + 4124) = 0;
  *(a1 + 4144) = 0;
  *(a1 + 4152) = 0;
  *(a1 + 4176) = 0;
  *(a1 + 4184) = a5;
  *(a1 + 4156) = 0u;
  *(a1 + 4172) = 0;
  *(a1 + 4192) = 0;
  *(a1 + 4200) = 0;
  *(v12 + 108) = 0;
  *(a1 + 4223) = 0;
  *(a1 + 4208) = 0u;
  *(a1 + 4228) = 0u;
  *(a1 + 4248) = a5;
  *(a1 + 4256) = 0;
  *(a1 + 4264) = 0;
  *(a1 + 4280) = 0u;
  *(a1 + 4296) = 0;
  v19 = (a1 + 4648);
  *(a1 + 4304) = a3;
  v20 = 480;
  *(a1 + 4272) = 0;
  do
  {
    *(v19 - 8) = 0;
    *(v19 - 1) = -1;
    *v19 = 575;
    v19 += 6;
    v20 -= 12;
  }

  while (v20);
  *(a1 + 4312) = -7200001;
  *(a1 + 4320) = 0u;
  *(a1 + 4336) = 0u;
  *(a1 + 4352) = 0u;
  *(a1 + 4368) = 0u;
  *(a1 + 4384) = 0u;
  *(a1 + 4400) = 0u;
  *(a1 + 4416) = 0u;
  *(a1 + 4432) = 0u;
  *(a1 + 4448) = 0u;
  *(a1 + 4464) = 0u;
  *(a1 + 4480) = 0u;
  *(a1 + 4496) = 0u;
  *(a1 + 4512) = 0u;
  *(a1 + 4528) = 0u;
  *(a1 + 4544) = 0u;
  *(a1 + 4560) = 0u;
  *(a1 + 4576) = 0u;
  *(a1 + 4592) = 0u;
  *(a1 + 4608) = 0u;
  *(a1 + 4624) = 0u;
  *(a1 + 5120) = a4;
  *(a1 + 5128) = 4287767295;
  *(a1 + 5136) = 0;
  *(a1 + 5140) = 0;
  *(a1 + 5144) = 0;
  *(v12 + 1056) = 0;
  *(a1 + 5160) = 0u;
  *(a1 + 5176) = -1;
  *(a1 + 5184) = xmmword_298A3BA20;
  *(a1 + 5200) = a5;
  *(v12 + 1112) = 0;
  *(a1 + 5320) = 0;
  *(a1 + 5328) = 0;
  *(a1 + 5232) = 0u;
  *(a1 + 5264) = 0u;
  *(a1 + 5216) = 0u;
  *(a1 + 5240) = 0x412E848000000000;
  *(a1 + 5248) = vdupq_n_s64(0x412E848000000000uLL);
  *(a1 + 5264) = 0x412E848000000000;
  *(a1 + 5312) = 0;
  *(a1 + 5296) = 0u;
  *(a1 + 5280) = 0u;
  BlueFin::GlPeSensStats::reset(a1);
  return a1;
}

BlueFin::SensorsData *BlueFin::SensorsData::SensorsData(BlueFin::SensorsData *this)
{
  *this = &unk_2A1F17CB0;
  *(this + 104) = 0;
  *(this + 840) = 0;
  *(this + 211) = 0;
  *(this + 848) = 0;
  *(this + 213) = 0;
  *(this + 107) = 0;
  *(this + 206) = 0;
  *(this + 808) = 0u;
  *(this + 216) = 1120403456;
  bzero(this + 8, 0x320uLL);
  *(this + 56) = 0u;
  *(this + 868) = 0u;
  *(this + 884) = 0u;
  *(this + 217) = 0;
  *(this + 1744) = 0;
  *(this + 437) = 0;
  *(this + 1752) = 0;
  *(this + 439) = 0;
  *(this + 220) = 0;
  *(this + 107) = 0u;
  *(this + 432) = 0;
  *(this + 442) = 1120403456;
  bzero(this + 912, 0x320uLL);
  *(this + 1800) = 0u;
  *(this + 1772) = 0u;
  *(this + 1788) = 0u;
  off_2A1F17CC0(this);
  return this;
}

BlueFin::GlDineCtrl *BlueFin::GlDineCtrl::GlDineCtrl(BlueFin::GlDineCtrl *this, BlueFin::GlEventPump *a2, BlueFin::GlPeIf *a3, void *(*a4)(unsigned int), void (*a5)(void *), char a6, int a7, char a8)
{
  *this = &unk_2A1F0BA40;
  *(this + 1) = a3;
  BlueFin::GlMeMeasAidFilter::GlMeMeasAidFilter((this + 32), a3, a6, a7);
  *(this + 3656) = &unk_2A1F0BDA8;
  *(this + 3657) = this;
  *(this + 3658) = &unk_2A1F0BD70;
  *(this + 3659) = this;
  *(this + 29280) = a8;
  BlueFin::GlMeSrdAsicConfig::GlMeSrdAsicConfig((this + 29288), a7);
  *(this + 3941) = &unk_2A1F0BE28;
  *(this + 3942) = 0;
  *(this + 3943) = this + 29288;
  GlCustomLog(127, "Size,GlMeSrdReceiverParameters,%u\n", 136);
  *(this + 3958) = &unk_2A1F0C6F8;
  *(this + 3959) = this + 31528;
  *(this + 3960) = this + 29288;
  *(this + 31688) = 0u;
  *(this + 31704) = 0u;
  *(this + 31720) = 0u;
  *(this + 31736) = 0u;
  *(this + 31752) = 0u;
  *(this + 31768) = 0u;
  *(this + 31780) = 0u;
  BlueFin::GlMeSrdTransactionManager::GlMeSrdTransactionManager(this + 31808, this + 29248, this + 29288, a2);
  BlueFin::GlMeSrdAcqMgrSm::GlMeSrdAcqMgrSm(this + 49152, this + 29136, this + 31808, this + 31528, this + 29288, this + 29152, this + 31664);
  BlueFin::GlMeSrdGeofenceMgr::GlMeSrdGeofenceMgr(this + 74432, this + 31808, this + 31528, this + 29136, a2, *(this + 1), this + 29288, this + 114784);
  BlueFin::GlMeSrdCtrlSm::GlMeSrdCtrlSm(this + 75168, *(this + 1), this + 29192, this + 29208, this + 31808, this + 29288, this + 49240, a2, this + 31664, this + 114784, this + 31528, this + 74696, v14, this + 118496);
  BlueFin::GlMeSrdSvIdReportMgr::GlMeSrdSvIdReportMgr(this + 109856, this + 29120, this + 49352, this + 29288);
  BlueFin::GlMeSrdSatReportMgr::GlMeSrdSatReportMgr(this + 114784, this + 31528, this + 109856, this + 29152, this + 29288, this + 29136, 0, 0, this + 118496);
  BlueFin::GlMeSrdStats::GlMeSrdStats(this + 118496, this + 31808, this + 29288, this + 31528, a3);
  BlueFin::GlMeMeasSelfAidFilter::m_potGlMeIf = this;
  (*(*(this + 3976) + 104))(this + 31808, this + 29264);
  GlCustomLog(127, "Size,GlDineCtrl,%u\n", 184512);
  GlCustomLog(127, "    ->Size,GlMeMeasAidFilter,%u\n", 29216);
  GlCustomLog(127, "    ->Size,GlMeSrdReceiverParameters,%u\n", 136);
  GlCustomLog(127, "    ->Size,GlMeSrdReceiverParametersProgrammer,%u\n", 136);
  GlCustomLog(127, "    ->Size,GlMeSrdAsicConfig,%u\n", 2240);
  GlCustomLog(127, "    ->Size,GlMeSrdTransactionManager,%u\n", 17344);
  GlCustomLog(127, "    ->Size,GlMeSrdAcqMgr,%u\n", 112);
  GlCustomLog(127, "    ->Size,GlMeSrdCtrlSm,%u\n", 34688);
  GlCustomLog(127, "    ->Size,GlMeSrdSvIdReportMgr,%u\n", 4928);
  GlCustomLog(127, "    ->Size,GlMeSrdSatReportMgr,%u\n", 3688);
  return this;
}

void sub_298802F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  BlueFin::GlMeSrdSatReportMgr::~GlMeSrdSatReportMgr(v19);
  *v20 = &unk_2A1F0C4C0;
  BlueFin::GlMeSrdCtrlSm::~GlMeSrdCtrlSm((v17 + 9396));
  BlueFin::GlMeSrdGeofenceMgr::~GlMeSrdGeofenceMgr((v17 + 9304));
  BlueFin::GlMeSrdAcqMgrSm::~GlMeSrdAcqMgrSm((v17 + 6144));
  BlueFin::GlMeSrdTransactionManager::~GlMeSrdTransactionManager(v18);
  v17[3941] = a16;
  v17[3942] = 0;
  v17[4] = &unk_2A1F0D848;
  v17[8] = &unk_2A1F0E3F8;
  v17[10] = &unk_2A1F0E368;
  _Unwind_Resume(a1);
}

BlueFin::GlMeWinMgr *BlueFin::GlMeWinMgr::GlMeWinMgr(BlueFin::GlMeWinMgr *this, BlueFin::GlMeMsmtMgr *a2, int a3)
{
  *this = &unk_2A1F0E3F8;
  *(this + 1) = a2;
  *(this + 2) = &unk_2A1F0E368;
  v5 = this + 0x2000;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 5) = -1;
  *(this + 6) = -1;
  *(this + 56) = 0;
  *(this + 15) = 4;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 29) = 0x1000000;
  *(this + 42) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 15) = 0;
  *(this + 104) = 0u;
  *(this + 32) = 1;
  *(this + 12) = 0x7FEFFFFFFFFFFFFFLL;
  BlueFin::GlMeClkModMgr::GlMeClkModMgr(this + 144, a2, this, this + 9312);
  BlueFin::GlSatAidInfo::GlSatAidInfo(this + 320);
  v5[960] = 0;
  *(this + 2289) = 7;
  v5[968] = 0;
  *(this + 9164) = xmmword_298A31A60;
  *(this + 1148) = 0;
  *(this + 9192) = 0u;
  *(this + 9224) = 0u;
  *(this + 1155) = 0xBF80000000000000;
  *(this + 9208) = 0u;
  *(this + 1156) = this + 9260;
  v5[1064] = 8;
  *(this + 9260) = 0u;
  *(this + 9276) = 0u;
  BlueFin::GlMeMiniKF::GlMeMiniKF(this + 9312, this + 144);
  v5[1616] = 0;
  *(this + 1227) = 0;
  v5[1632] = 0;
  v5[1640] = 0;
  *(this + 1230) = 0;
  v5[1656] = 0;
  *(this + 2464) = 0;
  *(this + 4930) = 0;
  *(this + 2466) = a3;
  *(this + 1300) = 0xBFF0000000000000;
  *(this + 1301) = this + 10420;
  v5[2224] = 19;
  *(this + 655) = 0u;
  *(this + 10420) = 0u;
  *(this + 10436) = 0u;
  *(this + 10452) = 0u;
  *(this + 10468) = 0u;
  *(this + 1312) = this + 10508;
  v5[2312] = 19;
  *(this + 10508) = 0u;
  *(this + 10524) = 0u;
  *(this + 10540) = 0u;
  *(this + 10556) = 0u;
  *(this + 10568) = 0u;
  *(this + 634) = 0u;
  *(this + 635) = 0u;
  *(this + 636) = 0u;
  *(this + 637) = 0u;
  *(this + 638) = 0u;
  *(this + 639) = 0u;
  *(this + 640) = 0u;
  *(this + 641) = 0u;
  *(this + 642) = 0u;
  *(this + 643) = 0u;
  *(this + 644) = 0u;
  *(this + 645) = 0u;
  *(this + 646) = 0u;
  *(this + 647) = 0u;
  *(this + 648) = 0u;
  *(this + 10380) = 0u;
  *(this + 10022) = 0u;
  *(this + 9996) = 0u;
  *(this + 10012) = 0u;
  *(this + 9964) = 0u;
  *(this + 9980) = 0u;
  *(this + 9932) = 0u;
  *(this + 9948) = 0u;
  *(this + 9900) = 0u;
  *(this + 9916) = 0u;
  *(this + 9868) = 0u;
  *(this + 9884) = 0u;
  *(this + 10135) = 0;
  *(this + 10104) = 0u;
  *(this + 10120) = 0u;
  *(this + 10072) = 0u;
  *(this + 10088) = 0u;
  *(this + 10040) = 0u;
  *(this + 10056) = 0u;
  return this;
}

BlueFin::GlBigArray *BlueFin::GlMeObjFactory::MakeMsmtArray(BlueFin::GlMeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(31, 40, *(this + 3));
  if (!Memory)
  {
    return *(this + 37);
  }

  v3 = Memory;
  v4 = *(this + 11);
  *(this + 38) = BlueFin::GlMemAlloc::glAllocateMemory(32, 1536 * v4, *(this + 3));
  *(this + 40) = BlueFin::GlMemAlloc::glAllocateMemory(33, 2 * v4, *(this + 3));
  v5 = BlueFin::GlMemAlloc::glAllocateMemory(34, 1150, *(this + 3));
  *(this + 39) = v5;
  BlueFin::GlBigArray::GlBigArray(v3, *(this + 38), 1536, 0, v5, 0x23Fu, *(this + 40), v4);
  *(this + 37) = v3;
  return v3;
}

unsigned __int16 *BlueFin::GlMeObjFactory::MakeMsmtHolderArray(BlueFin::GlMeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(35, 1192, *(this + 3));
  if (!Memory)
  {
    return *(this + 41);
  }

  v3 = Memory;
  v4 = *(this + 11);
  *(this + 42) = BlueFin::GlMemAlloc::glAllocateMemory(36, 160 * v4, *(this + 3));
  v5 = BlueFin::GlMemAlloc::glAllocateMemory(37, 2 * v4, *(this + 3));
  *(this + 44) = v5;
  BlueFin::GlBigArray::GlBigArray((v3 + 576), *(this + 42), 160, 0, v3, 0x23Fu, v5, v4);
  *(this + 41) = v3;
  return v3;
}

uint64_t BlueFin::GlMeMsmtHolder::GlMeMsmtHolder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v6 = a1 + 0x4000;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 44) = 0u;
  *(a1 + 32) = a1 + 44;
  *(a1 + 40) = 19;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = BlueFin::GlMeObjFactory::MakeMsmtHolderArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  BlueFin::GlMeas::GlMeas(a1 + 128);
  *(v6 + 896) = 0;
  *(v6 + 900) = 0;
  *(a1 + 17288) = 0;
  *(a1 + 17296) = 0;
  *(a1 + 17304) = a1 + 17316;
  *(v6 + 928) = 19;
  *(a1 + 17316) = 0u;
  *(a1 + 17332) = 0u;
  *(a1 + 17348) = 0u;
  *(a1 + 17364) = 0u;
  *(a1 + 17376) = 0u;
  *(v6 + 1008) = 100;
  bzero(*(a1 + 32), ((4 * *(a1 + 40) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlMeMsmtHolder::Clear(a1);
  return a1;
}

double BlueFin::GlMeMsmtHolder::Clear(BlueFin::GlMeMsmtHolder *this)
{
  v3 = this + 32;
  v2 = *(this + 4);
  v17 = *(this + 40);
  memcpy(v21, v2, 4 * v17);
  v19 = 0;
  v18 = 0;
  v20 = v21[0];
  BlueFin::GlSetIterator::operator++(&v17);
  if (v18 != v17)
  {
    while (1)
    {
      v4 = v19;
      if (v19 >= 0x23FuLL)
      {
        break;
      }

      v5 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v19;
      v6 = *v5;
      LODWORD(v5) = v5[1];
      v14[0] = v6;
      v15 = v5;
      LOWORD(v16) = v19;
      v7 = *BlueFin::GlSignalIdArray::Get(*(this + 15), v14);
      (*v7)();
      BlueFin::GlBigArray::Remove(*(this + 15) + 1152, v16);
      BlueFin::GlSetBase::Remove(v3, v4);
      BlueFin::GlSetIterator::operator++(&v17);
      if (v18 == v17)
      {
        goto LABEL_4;
      }
    }

    v11 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v12 = "glsignalid.h";
    v13 = 578;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v12, v13, v11);
  }

LABEL_4:
  v8 = *(this + 15);
  if (*(v8 + 1186) + 1 != *(v8 + 1184))
  {
    v11 = "m_otMsmtArray.IsEmpty()";
    DeviceFaultNotify("glme_msmtholder.cpp", 69, "Clear", "m_otMsmtArray.IsEmpty()");
    v12 = "glme_msmtholder.cpp";
    v13 = 69;
    goto LABEL_7;
  }

  v9 = v3 + 16352;
  BlueFin::GlBigArray::Clear(v8 + 1152);
  *(v9 + 224) = -8388611;
  v9[900] = -1;
  result = 0.0;
  *(this + 2161) = 0;
  return result;
}

double BlueFin::GlMeSrdAsicConfig::GlMeSrdAsicConfig(BlueFin::GlMeSrdAsicConfig *this, int a2)
{
  v2 = 0;
  *this = &unk_2A1F0AB98;
  *(this + 2) = 0;
  *(this + 12) = -1;
  *(this + 20) = -1;
  *(this + 7) = 0;
  *(this + 21) = 0;
  *(this + 16) = -1;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 30) = -1;
  *(this + 134) = 0;
  *(this + 270) = 0;
  *(this + 68) = 0;
  *(this + 135) = 0;
  *(this + 544) = 0;
  *(this + 62) = 0;
  *(this + 70) = 0;
  *(this + 87) = 0;
  *(this + 332) = 0u;
  *(this + 535) = 0;
  *(this + 66) = 0;
  *(this + 138) = 0;
  *(this + 278) = 257;
  *(this + 330) = 0;
  *(this + 83) = 0;
  *(this + 168) = 0;
  *(this + 558) = 0;
  *(this + 561) = 0;
  *(this + 176) = 0;
  *(this + 1413) = 0;
  *(this + 1421) = 1;
  *(this + 1423) = 1;
  *(this + 361) = 0;
  *(this + 1448) = 0;
  *(this + 178) = 0;
  *(this + 358) = 0;
  *(this + 363) = 796;
  *(this + 730) = 0;
  *(this + 364) = 0;
  *(this + 366) = 0x10000;
  *(this + 1468) = 0u;
  *(this + 1483) = 0;
  *(this + 372) = 100990976;
  *(this + 746) = 26;
  *(this + 187) = 0;
  *(this + 1601) = 0;
  *(this + 1609) = 524543;
  *(this + 202) = this + 1628;
  *(this + 1624) = 2;
  *(this + 1628) = 0;
  *(this + 251) = this + 2020;
  *(this + 2016) = 8;
  *(this + 2020) = 0u;
  *(this + 2036) = 0u;
  *(this + 257) = this + 2068;
  *(this + 2064) = 8;
  *(this + 2068) = 0u;
  *(this + 2084) = 0u;
  *(this + 2104) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 132) = _Q0;
  *(this + 2128) = 1;
  *(this + 1068) = 256;
  *(this + 535) = 180944;
  *(this + 2144) = 0;
  *(this + 2148) = xmmword_298A33C00;
  *(this + 2164) = 0x100000002;
  *(this + 2180) = 0;
  *(this + 2172) = 0;
  *(this + 2191) = 0;
  *(this + 273) = 0;
  *(this + 550) = -1;
  *(this + 554) = 0;
  v8 = xmmword_298A319A0;
  v9 = xmmword_298A319B0;
  v10 = xmmword_298A319C0;
  v11 = xmmword_298A319D0;
  v12 = vdupq_n_s64(0x18uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v11)), *v8.i8), *v8.i8).u8[0])
    {
      *(this + v2 + 76) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x18uLL), *&v11)), *&v8), *&v8).i8[1])
    {
      *(this + v2 + 84) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x18uLL), *&v10))), *&v8).i8[2])
    {
      *(this + v2 + 92) = 0;
      *(this + v2 + 100) = 0;
    }

    if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x18uLL), *&v9)), *&v8)).i32[1])
    {
      *(this + v2 + 108) = 0;
    }

    if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x18uLL), *&v9)), *&v8)).i8[5])
    {
      *(this + v2 + 116) = 0;
    }

    if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x18uLL), *&v8)))).i8[6])
    {
      *(this + v2 + 124) = 0;
      *(this + v2 + 132) = 0;
    }

    v13 = vdupq_n_s64(8uLL);
    v9 = vaddq_s64(v9, v13);
    v10 = vaddq_s64(v10, v13);
    v11 = vaddq_s64(v11, v13);
    v8 = vaddq_s64(v8, v13);
    v2 += 64;
  }

  while (v2 != 192);
  v14 = 0;
  *(this + 359) = 0;
  *(this + 1439) = 0;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 1180) = 0;
  *(this + 1644) = 0u;
  *(this + 1660) = 0u;
  *(this + 1676) = 0u;
  *(this + 1692) = 0u;
  *(this + 1708) = 0u;
  *(this + 1724) = 0u;
  *(this + 1740) = 0u;
  *(this + 1756) = 0u;
  *(this + 1772) = 0u;
  *(this + 1788) = 0u;
  *(this + 1804) = 0u;
  *(this + 1820) = 0u;
  *(this + 1836) = 0u;
  *(this + 1852) = 0u;
  *(this + 1868) = 0u;
  *(this + 1884) = 0u;
  *(this + 1900) = 0u;
  *(this + 1916) = 0u;
  *(this + 1932) = 0u;
  *(this + 1948) = 0u;
  *(this + 1964) = 0u;
  *(this + 1980) = 0u;
  *(this + 1992) = 0u;
  *(this + 88) = 1;
  *(this + 178) = 4881;
  *(this + 294) = 0;
  do
  {
    *(this + v14 + 360) = xmmword_298A33C10;
    *(this + v14 + 376) = 50000;
    v14 += 24;
  }

  while (v14 != 168);
  *(this + 1512) = 0;
  *(this + 188) = 0;
  *(this + 1212) = 0;
  *(this + 301) = 0;
  *(this + 1208) = 0;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 97) = 0u;
  *(this + 98) = 0u;
  *(this + 99) = 0u;
  *(this + 1600) = 0;
  *(this + 304) = -1;
  *(this + 1184) = 0;
  *(this + 610) = 0;
  *(this + 1188) = 0u;
  *(this + 153) = -1;
  *(this + 154) = -1;
  *(this + 310) = -1;
  *(this + 1244) = 0;
  *(this + 624) = 0;
  *(this + 1252) = 0;
  *(this + 157) = 0;
  *(this + 1261) = 0;
  *(this + 159) = 0;
  *(this + 1277) = 0;
  *(this + 161) = 0;
  *(this + 1295) = 0;
  *(this + 165) = 0;
  *(this + 1327) = 0;
  *(this + 1304) = 0u;
  *(this + 1348) = 0;
  *(this + 1332) = 0u;
  *(this + 678) = 0;
  *(this + 85) = 0u;
  *(this + 1383) = 0;
  *(this + 172) = 0;
  *(this + 1391) = 6144;
  *(this + 349) = 0;
  *(this + 700) = 0;
  v15 = a2 & 0x700;
  *(this + 702) = 0;
  switch(v15)
  {
    case 256:
      v16 = 1;
      break;
    case 512:
      v16 = 2;
      break;
    case 768:
      v16 = 3;
      break;
    default:
      v16 = 0;
      break;
  }

  *(this + 137) = v16;
  if ((a2 & 0x8000000) != 0)
  {
    *(this + 553) = 1;
  }

  *&v17 = 0x101010101010101;
  *(&v17 + 1) = 0x101010101010101;
  *(this + 565) = v17;
  *(this + 581) = v17;
  *(this + 293) = 0;
  result = 0.0;
  *(this + 676) = 0u;
  *(this + 692) = 0u;
  *(this + 708) = 0u;
  *(this + 724) = 0u;
  *(this + 740) = 0u;
  *(this + 756) = 0u;
  *(this + 772) = 0u;
  *(this + 788) = 0u;
  *(this + 804) = 0u;
  *(this + 820) = 0u;
  *(this + 836) = 0u;
  *(this + 852) = 0u;
  *(this + 868) = 0u;
  *(this + 884) = 0u;
  *(this + 900) = 0u;
  *(this + 916) = 0u;
  *(this + 932) = 0u;
  *(this + 948) = 0u;
  *(this + 964) = 0u;
  *(this + 980) = 0u;
  *(this + 996) = 0u;
  *(this + 1012) = 0u;
  *(this + 1028) = 0u;
  *(this + 1044) = 0u;
  *(this + 1060) = 0u;
  *(this + 1076) = 0u;
  *(this + 1092) = 0u;
  *(this + 1108) = 0u;
  *(this + 1124) = 0u;
  *(this + 1140) = 0u;
  *(this + 1156) = 0u;
  *(this + 1487) = 0;
  *(this + 1640) = 0;
  *(this + 533) = 0;
  *(this + 1102) = 0;
  *(this + 276) = 0;
  *(BlueFin::GlUtils::m_pInstance + 1576) = this;
  *(this + 2220) = 0u;
  *(this + 559) = 0;
  return result;
}

void *BlueFin::GlMeSrdPacketManager::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdPacketManager::wait4ack;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdPacketManager::wait4ack";
  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GlMeSrdSatMgr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  *(result + 12) = 0u;
  *result = result + 12;
  *(result + 8) = 8;
  *(result + 28) = 0u;
  *(result + 68) = 0;
  *(result + 48) = 100;
  *(result + 56) = result + 68;
  *(result + 64) = 4;
  *(result + 76) = 0;
  *(result + 100) = 0;
  *(result + 88) = result + 100;
  *(result + 96) = 4;
  *(result + 108) = 0;
  *(result + 132) = 0;
  *(result + 120) = result + 132;
  *(result + 128) = 4;
  *(result + 140) = 0;
  *(result + 164) = 0;
  *(result + 152) = result + 164;
  *(result + 160) = 4;
  *(result + 172) = 0;
  *(result + 196) = 0;
  *(result + 184) = result + 196;
  *(result + 192) = 4;
  *(result + 204) = 0;
  *(result + 228) = 0;
  *(result + 216) = result + 228;
  *(result + 224) = 4;
  *(result + 236) = 0;
  *(result + 260) = 0;
  *(result + 248) = result + 260;
  *(result + 256) = 4;
  *(result + 268) = 0;
  *(result + 288) = 16;
  *(result + 292) = 0u;
  *(result + 280) = result + 292;
  *(result + 308) = 0u;
  *(result + 324) = 0u;
  *(result + 340) = 0u;
  *(result + 360) = result + 372;
  *(result + 368) = 4;
  *(result + 372) = 0;
  *(result + 380) = 0;
  *(result + 392) = result + 404;
  *(result + 400) = 4;
  *(result + 404) = 0;
  *(result + 412) = 0;
  *(result + 424) = result + 436;
  *(result + 432) = 4;
  *(result + 436) = 0;
  *(result + 444) = 0;
  *(result + 456) = result + 468;
  *(result + 464) = 8;
  *(result + 468) = 0u;
  *(result + 484) = 0u;
  *(result + 504) = result + 516;
  *(result + 512) = 8;
  *(result + 516) = 0u;
  *(result + 532) = 0u;
  *(result + 552) = result + 564;
  *(result + 560) = 8;
  *(result + 564) = 0u;
  *(result + 580) = 0u;
  *(result + 600) = result + 612;
  *(result + 608) = 8;
  *(result + 612) = 0u;
  *(result + 628) = 0u;
  *(result + 648) = result + 660;
  *(result + 656) = 8;
  *(result + 660) = 0u;
  *(result + 676) = 0u;
  *(result + 696) = result + 708;
  *(result + 704) = 8;
  *(result + 708) = 0u;
  *(result + 724) = 0u;
  *(result + 744) = result + 756;
  *(result + 752) = 8;
  *(result + 756) = 0u;
  *(result + 772) = 0u;
  *(result + 792) = result + 804;
  *(result + 800) = 8;
  *(result + 804) = 0u;
  *(result + 820) = 0u;
  *(result + 840) = result + 852;
  *(result + 848) = 8;
  *(result + 852) = 0u;
  *(result + 868) = 0u;
  do
  {
    v4 = result + v3;
    v5 = (result + v3 + 900);
    *(v4 + 888) = v5;
    *(v4 + 896) = 8;
    *v5 = 0uLL;
    v5[1] = 0uLL;
    v3 += 48;
  }

  while (v3 != 192);
  *(result + 6288) = result + 1088;
  *(result + 6296) = 0;
  *(result + 6304) = result + 6316;
  *(result + 6312) = 16;
  *(result + 6316) = 0u;
  *(result + 6332) = 0u;
  *(result + 6348) = 0u;
  *(result + 6364) = 0u;
  *(result + 6384) = result + 6396;
  *(result + 6392) = 16;
  *(result + 6396) = 0u;
  *(result + 6412) = 0u;
  *(result + 6428) = 0u;
  *(result + 6444) = 0u;
  *(result + 6464) = result + 6476;
  *(result + 6472) = 16;
  *(result + 6476) = 0u;
  *(result + 6492) = 0u;
  *(result + 6508) = 0u;
  *(result + 6524) = 0u;
  *(result + 6544) = 0;
  *(result + 6548) = 0;
  *(result + 6552) = a2;
  v6 = -5200;
  *(result + 6560) = a3;
  *(result + 6568) = 0u;
  do
  {
    v7 = *(result + 6288) + v6;
    *(v7 + 5248) = 0;
    *(v7 + 5232) = 0uLL;
    *(v7 + 5216) = 0uLL;
    *(v7 + 5200) = 0uLL;
    v6 += 52;
  }

  while (v6);
  v8 = 1;
  do
  {
    *(*(result + 6288) + 52 * v6) = 0;
    v9 = v8;
    v10 = 4;
    do
    {
      *(*(result + 6288) + v9++) = -6;
      --v10;
    }

    while (v10);
    ++v6;
    v8 += 52;
  }

  while (v6 != 100);
  v11 = 1u;
  do
  {
    if (BlueFin::GlSvId::s_aucSvId2gnss[v11] != 7)
    {
      *(*result + 4 * (v11 >> 5)) |= 1 << v11;
    }

    ++v11;
  }

  while (v11 != 189);
  return result;
}

double BlueFin::GlMeSrdSharedSatSearchMgr::GlMeSrdSharedSatSearchMgr(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  BlueFin::GlMeSrdSearchMgrBase::GlMeSrdSearchMgrBase(a1, a2, a3, a4, a6, a7);
  *v8 = &unk_2A1F0AB20;
  *(v8 + 304) = a5;
  *(v8 + 312) = 100;
  *(v8 + 320) = v8 + 332;
  *(v8 + 328) = 8;
  result = 0.0;
  *(v8 + 332) = 0u;
  *(v8 + 348) = 0u;
  *(v8 + 368) = v8 + 380;
  *(v8 + 376) = 8;
  *(v8 + 380) = 0u;
  *(v8 + 396) = 0u;
  *(v8 + 416) = 0;
  *(v8 + 424) = v8 + 436;
  *(v8 + 432) = 8;
  *(v8 + 436) = 0u;
  *(v8 + 452) = 0u;
  *(v8 + 472) = 1;
  return result;
}

void *BlueFin::GlMeSrdAcqMgrSm::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdAcqMgrSm::idle;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdAcqMgrSm::idle";
  return result;
}

uint64_t (*BlueFin::GlMeSrdAcqMgrSm::idle(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 66)
  {
    return BlueFin::QHsm::top;
  }

  v5 = (a1 + 23176);
  v6 = *(a1 + 23168);
  if (!*v6)
  {
    v9 = *v5;
    if (v9 < 2)
    {
      return 0;
    }

    v10 = v9 - 1;
    v11 = v6 + 1;
    result = 0;
    while (!*v11++)
    {
      if (!--v10)
      {
        return result;
      }
    }
  }

  *(a1 + 10440) = 10;
  *(a1 + 10920) = 10;
  v7 = (*(**(a1 + 40) + 64))(*(a1 + 40));
  if (!**v7)
  {
    v13 = *(v7 + 8);
    if (v13 < 2)
    {
LABEL_19:
      if (((*(**(a1 + 64) + 32))(*(a1 + 64)) & 1) == 0 && v5[1873] != 1)
      {
        v8 = 1;
        goto LABEL_7;
      }
    }

    else
    {
      v14 = v13 - 1;
      v15 = (*v7 + 4);
      while (!*v15++)
      {
        if (!--v14)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v8 = 0;
LABEL_7:
  v5[1816] = v8;
  BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(a1);
  return 0;
}

uint64_t BlueFin::GlMeSrdGeofenceMgr::GlMeSrdGeofenceMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0B810;
  *(a1 + 144) = a1 + 128;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 175) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = a3;
  *(a1 + 216) = a4;
  *(a1 + 224) = a5;
  *(a1 + 232) = a6;
  *(a1 + 240) = a7;
  *(a1 + 248) = a8;
  *(a1 + 256) = 0;
  *(a1 + 264) = &unk_2A1F0B8A0;
  *(a1 + 272) = a1;
  *(a1 + 280) = &unk_2A1F0B830;
  *(a1 + 288) = a1;
  *(a1 + 296) = a7;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 324;
  *(a1 + 320) = 8;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0x100000000;
  *(a1 + 712) = 0;
  *(a1 + 723) = 0;
  *(a1 + 716) = 0;
  *(a1 + 727) = 16777217;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 668) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 636) = 0u;
  *(a1 + 652) = 0u;
  *(a1 + 604) = 0u;
  *(a1 + 620) = 0u;
  *(a1 + 572) = 0u;
  *(a1 + 588) = 0u;
  *(a1 + 540) = 0u;
  *(a1 + 556) = 0u;
  *(a1 + 508) = 0u;
  *(a1 + 524) = 0u;
  *(a1 + 476) = 0u;
  *(a1 + 492) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 460) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 364) = 0u;
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdGeofenceMgr::initial);
  v9 = *(a1 + 144);
  *(a1 + 88) = 13;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9 + 10;
  *(a1 + 64) = v9;
  *(a1 + 72) = v9;
  *(a1 + 80) = 0x1000000000005;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 224), a1);
  return a1;
}

void *BlueFin::GlMeSrdGeofenceMgr::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdGeofenceMgr::idle;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdGeofenceMgr::idle";
  return result;
}

uint64_t (*BlueFin::GlMeSrdGeofenceMgr::idle(void *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) >= 2)
  {
    if (v2 != 53)
    {
      if (v2 != 54)
      {
        return BlueFin::QHsm::top;
      }

      v4 = "0";
      DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 287, "idle", "0");
      v5 = 287;
LABEL_9:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", v5, v4);
    }

    if (a2[1] != 1)
    {
      v4 = "e->par == 1";
      DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 280, "idle", "e->par == 1");
      v5 = 280;
      goto LABEL_9;
    }

    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdGeofenceMgr::running, "&GlMeSrdGeofenceMgr::running");
  }

  return 0;
}

uint64_t BlueFin::GlMeSrdCtrlSm::GlMeSrdCtrlSm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0B278;
  *(a1 + 108) = 0;
  *(a1 + 112) = a5;
  *(a1 + 120) = 0;
  *(a1 + 128) = a7;
  *(a1 + 136) = a6;
  *(a1 + 144) = a8;
  *(a1 + 152) = a4;
  *(a1 + 160) = a2;
  *(a1 + 168) = a9;
  *(a1 + 176) = a11;
  *(a1 + 184) = a10;
  *(a1 + 192) = a12;
  *(a1 + 200) = a14;
  *(a1 + 208) = a3;
  *(a1 + 216) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v20 = a1 + 256;
  *(a1 + 224) = 0;
  *(a1 + 256) = &unk_2A1F0B310;
  *(a1 + 264) = a1;
  v21 = a1 + 304;
  *(a1 + 304) = &unk_2A1F0B398;
  *(a1 + 312) = a1;
  BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(a1 + 1600, 0xA0u, a1 + 320);
  *(a1 + 1648) = a1 + 1632;
  *(a1 + 1656) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1679) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1719) = 0;
  BlueFin::GlMeSrdAsicinit::GlMeSrdAsicinit(a1 + 1760, v20, a5, a6, a8, a1 + 3392);
  BlueFin::GlMeSrdSyncIn::GlMeSrdSyncIn(a1 + 2560, a5, a2, a8);
  BlueFin::GlMeSrdCntIn::GlMeSrdCntIn(a1 + 2816, a5, a2, a8, a6);
  BlueFin::GlMeSrdMeasTimingMgr::GlMeSrdMeasTimingMgr(a1 + 3072, a8, a5, a6);
  BlueFin::GlMeSrdEvtCtrl::GlMeSrdEvtCtrl(a1 + 3392, v21, a6);
  v22 = 0;
  *(a1 + 3904) = &unk_2A1F0B298;
  *(a1 + 3912) = a1;
  *(a1 + 4064) = a1 + 3936;
  *(a1 + 4072) = 0;
  do
  {
    *(*(a1 + 4064) + v22) = 0;
    v22 += 8;
  }

  while (v22 != 128);
  *(a1 + 4096) = &unk_2A1F0B420;
  *(a1 + 4104) = a1;
  *(a1 + 4112) = &unk_2A1F0B2C8;
  *(a1 + 4120) = a1;
  bzero((a1 + 4128), 0x47EuLL);
  *(a1 + 5280) = 0;
  *(a1 + 5284) = 0;
  *(a1 + 5296) = a6;
  *(a1 + 5304) = 0;
  *(a1 + 5312) = a6;
  *(a1 + 5320) = &unk_2A1F0B4B8;
  *(a1 + 5328) = a1;
  *(a1 + 5336) = 0;
  *(a1 + 5344) = 0;
  *(a1 + 5352) = 0u;
  *(a1 + 5368) = 0u;
  *(a1 + 5384) = 0u;
  *(a1 + 5400) = 0;
  *(a1 + 5408) = &unk_2A1F0B470;
  *(a1 + 5416) = 0;
  *(a1 + 5424) = 0;
  *(a1 + 5428) = 0;
  *(a1 + 5430) = 0;
  *(a1 + 5440) = 0;
  *(a1 + 5572) = 0;
  *(a1 + 5576) = 0;
  *(a1 + 34500) = 0;
  *(a1 + 34504) = 0;
  *(a1 + 34512) = 0;
  *(a1 + 34240) = 0u;
  *(a1 + 34256) = 0u;
  *(a1 + 34272) = 0u;
  *(a1 + 34288) = 0u;
  *(a1 + 34304) = 0u;
  *(a1 + 34320) = 0u;
  *(a1 + 34336) = 0u;
  *(a1 + 34352) = 0u;
  *(a1 + 34368) = 0u;
  *(a1 + 34384) = 0u;
  *(a1 + 34400) = 0u;
  *(a1 + 34416) = 0u;
  *(a1 + 34432) = 0u;
  *(a1 + 34448) = 0u;
  *(a1 + 34464) = 0u;
  *(a1 + 34480) = 0u;
  *(a1 + 34495) = 0;
  *(a1 + 34514) = 65537000;
  *(a1 + 34518) = 0;
  *(a1 + 34521) = 0;
  *(a1 + 34528) = a2;
  *(a1 + 34592) = 0u;
  *(a1 + 34576) = 0u;
  *(a1 + 34560) = 0u;
  *(a1 + 34536) = 0u;
  *(a1 + 34552) = 0;
  *(a1 + 34608) = 0x412E848000000000;
  *(a1 + 34616) = 0;
  v23 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 34624) = v23;
  *(a1 + 34640) = v23;
  *(a1 + 34656) = v23;
  *(a1 + 34672) = 0;
  v24 = *(a1 + 1648);
  *(v24 + 8) = 0;
  *v24 = 0;
  *(a1 + 5444) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdCtrlSm::initial);
  v25 = *(a1 + 1648);
  *(a1 + 88) = 12;
  *(a1 + 48) = v25;
  *(a1 + 56) = v25 + 10;
  *(a1 + 64) = v25;
  *(a1 + 72) = v25;
  *(a1 + 80) = 0x1000000000005;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 144), a1);
  (*(*a3 + 16))(a3, a1 + 4112);
  (*(**(a1 + 128) + 72))(*(a1 + 128), BlueFin::GlMeSrdCtrlSm::EswIsIdle, a1);
  return a1;
}

void sub_298804970(_Unwind_Exception *a1)
{
  BlueFin::GlMeSrdMeasTimingMgr::~GlMeSrdMeasTimingMgr((v1 + 3072));
  BlueFin::GlMeSrdCntIn::~GlMeSrdCntIn((v1 + 2816));
  BlueFin::GlMeSrdSyncIn::~GlMeSrdSyncIn((v1 + 2560));
  BlueFin::GlMeSrdAsicinit::~GlMeSrdAsicinit((v1 + 1760));
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdAsicinit::GlMeSrdAsicinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0B160;
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  *(a1 + 136) = a5;
  *(a1 + 144) = a6;
  *(a1 + 152) = &unk_2A1F0B180;
  *(a1 + 160) = a1;
  *(a1 + 168) = 0;
  *(a1 + 180) = 0;
  *(a1 + 172) = 0;
  *(a1 + 188) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = -1;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 284) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 612) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 648) = a1 + 640;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  *(a1 + 679) = 0;
  *(a1 + 640) = 0;
  *(a1 + 732) = 0;
  *(a1 + 735) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 748) = 0;
  *(a1 + 756) = 0;
  *(a1 + 740) = 0;
  *(a1 + 764) = 0;
  *(a1 + 736) = 257;
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdAsicinit::initial);
  v7 = *(a1 + 648);
  *(a1 + 88) = 8;
  *(a1 + 48) = v7;
  *(a1 + 56) = v7 + 4;
  *(a1 + 64) = v7;
  *(a1 + 72) = v7;
  *(a1 + 80) = 0x1000000000002;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 136), a1);
  return a1;
}

uint64_t BlueFin::GlMeSrdSyncIn::GlMeSrdSyncIn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0B7D8;
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  *(a1 + 208) = 0;
  *(a1 + 168) = a1 + 160;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 199) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0xBFF0000000000000;
  *(a1 + 160) = 0;
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdSyncIn::initial);
  v5 = *(a1 + 168);
  *(a1 + 88) = 10;
  *(a1 + 48) = v5;
  *(a1 + 56) = v5 + 4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v5;
  *(a1 + 80) = 0x1000000000002;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 128), a1);
  return a1;
}

uint64_t (*BlueFin::GlMeSrdSyncIn::idle(uint64_t a1, unsigned __int8 *a2))()
{
  result = 0;
  v4 = *a2;
  if (v4 <= 0x27)
  {
    if (v4 - 2 < 2)
    {
      return result;
    }

    return BlueFin::QHsm::top;
  }

  if (v4 != 40)
  {
    if (v4 == 41)
    {
      return result;
    }

    if (v4 == 43)
    {
      DeviceFaultNotify("glmesrd_syncin_ctrl.cpp", 108, "idle", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_syncin_ctrl.cpp", 108, "0");
    }

    return BlueFin::QHsm::top;
  }

  v5 = a2[1];
  v6 = v5 & 1;
  *(a1 + 216) = v5 & 1;
  v7 = (v5 >> 1) & 1;
  *(a1 + 217) = (v5 & 2) != 0;
  v8 = (*(**(a1 + 112) + 80))(*(a1 + 112));
  v14[0] = BlueFin::GlMeSrdSyncIn::OnReliableAck;
  v14[1] = a1;
  v15 = 256;
  v16 = 0;
  v17 = v8;
  v18 = 0;
  v19 = 0;
  (*(*v8 + 16))(v8, 1);
  v12 = v7;
  v13 = v6;
  v11 = 1;
  v9 = (*(*v8 + 48))(v8);
  v10 = (*(*v9 + 40))(v9);
  (*(*v10 + 16))(v10, v14, &v11);
  BlueFin::GlMeSrdTransaction::Complete(v14);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v14);
  BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdSyncIn::wait4arm, "&GlMeSrdSyncIn::wait4arm");
  return 0;
}

void sub_298804E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdCntIn::GlMeSrdCntIn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F0B240;
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  *(a1 + 136) = a5;
  *(a1 + 168) = a1 + 160;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 199) = 0;
  *(a1 + 160) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  BlueFin::QHsm::ctor(a1, BlueFin::GlMeSrdCntIn::initial);
  v6 = *(a1 + 168);
  *(a1 + 88) = 9;
  *(a1 + 48) = v6;
  *(a1 + 56) = v6 + 4;
  *(a1 + 64) = v6;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0x1000000000002;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 128), a1);
  return a1;
}

uint64_t (*BlueFin::GlMeSrdCntIn::idle(uint64_t a1, unsigned __int8 *a2))()
{
  result = 0;
  v4 = *a2;
  if (v4 <= 0x2B)
  {
    if (v4 - 2 < 2)
    {
      return result;
    }

    return BlueFin::QHsm::top;
  }

  if (v4 != 44)
  {
    if (v4 == 45)
    {
      return result;
    }

    if (v4 == 46)
    {
      DeviceFaultNotify("glmesrd_cntin_ctrl.cpp", 111, "idle", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_cntin_ctrl.cpp", 111, "0");
    }

    return BlueFin::QHsm::top;
  }

  v5 = (*(**(a1 + 112) + 80))(*(a1 + 112));
  v14[0] = BlueFin::GlMeSrdCntIn::OnReliableAck;
  v14[1] = a1;
  v15 = 256;
  v16 = 0;
  v17 = v5;
  v18 = 0;
  v19 = 0;
  v6 = (*(*v5 + 16))(v5, 1);
  v7 = *(a1 + 136);
  v6.n128_u32[0] = *(v7 + 56);
  LOWORD(v8) = *(v7 + 62);
  v9 = v6.n128_u64[0] * (v8 / 1000.0) + 0.5;
  v10 = v9;
  v11 = v9 != v9 && v9 < 0.0;
  v12 = (*(*v5 + 48))(v5);
  v13 = (*(*v12 + 40))(v12);
  (*(*v13 + 32))(v13, v14, 3, (v10 - v11));
  BlueFin::GlMeSrdTransaction::Complete(v14);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v14);
  BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCntIn::wait4arm, "&GlMeSrdCntIn::wait4arm");
  return 0;
}

void sub_298805198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void *BlueFin::GlMeSrdMeasTimingMgr::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdMeasTimingMgr::idle;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdMeasTimingMgr::idle";
  return result;
}

uint64_t BlueFin::GlMeSrdEvtCtrl::GlMeSrdEvtCtrl(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  *(result + 8) = 0;
  *(result + 16) = "STARTING";
  *(result + 24) = "OFF";
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 73) = 0u;
  *result = &unk_2A1F0B708;
  *(result + 112) = a2;
  *(result + 120) = a3;
  *(result + 128) = &unk_2A1F0D4E8;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 167) = 0;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = &unk_2A1F0D518;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 456) = result + 448;
  *(result + 464) = &unk_2A1F0B690;
  *(result + 472) = result;
  *(result + 480) = a3;
  *(result + 448) = 0;
  *(result + 336) = 0;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 224) = 0u;
  do
  {
    v4 = result + v3;
    *(v4 + 352) = 0xBFF0000000000000;
    *(v4 + 360) = 0;
    v3 += 16;
  }

  while (v3 != 64);
  *(result + 416) = 0;
  *(result + 344) = 0;
  return result;
}

void *BlueFin::GlMeSrdCtrlSm::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdCtrlSm::off;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdCtrlSm::off";
  return result;
}

uint64_t BlueFin::GlMeSrdAcqMgr::SetEswIsIdleCallback(uint64_t this, void (*a2)(void *), void *a3)
{
  v3 = *(this + 8);
  *(v3 + 10088) = a2;
  *(v3 + 10096) = a3;
  return this;
}

BlueFin::GlMeSrdSvIdReportMsmtSlot *BlueFin::GlMeSrdSvIdReportMsmtSlot::GlMeSrdSvIdReportMsmtSlot(BlueFin::GlMeSrdSvIdReportMsmtSlot *this)
{
  v3[0] = -1;
  v4 = 0;
  v5 = 575;
  *this = &unk_2A1F0DBF0;
  *(this + 21) = 0;
  *(this + 100) = 0;
  *(this + 26) = -1;
  *(this + 54) = 575;
  BlueFin::GlMeDSPMeas::init(this, v3);
  *(this + 41) = 0;
  *(this + 168) = 0;
  *(this + 80) = 0;
  *(this + 162) = 0;
  return this;
}

uint64_t BlueFin::GlMeObjFactory::MakeSvidReportDataBitsArray(BlueFin::GlMeObjFactory *this)
{
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(7, 40, *(this + 3));
  if (Memory)
  {
    v3 = Memory;
    v4 = *(this + 11);
    *(this + 14) = BlueFin::GlMemAlloc::glAllocateMemory(8, (616 * v4), *(this + 3));
    *(this + 16) = BlueFin::GlMemAlloc::glAllocateMemory(9, v4, *(this + 3));
    v5 = BlueFin::GlMemAlloc::glAllocateMemory(10, 189, *(this + 3));
    *(this + 15) = v5;
    BlueFin::GlArray::GlArray(v3, *(this + 14), 616, 0, v5, 189, *(this + 16), v4);
    *(this + 13) = v3;
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = 616 * v4;
      do
      {
        BlueFin::GlMeSrdSvIdReportDataBitsSlot::GlMeSrdSvIdReportDataBitsSlot((*(this + 14) + v6));
        v6 += 616;
      }

      while (v7 != v6);
    }
  }

  return *(this + 13);
}

BlueFin::GlArray *BlueFin::GlArray::GlArray(BlueFin::GlArray *this, void *a2, int a3, int a4, unsigned __int8 *a5, int a6, unsigned __int8 *a7, unsigned int a8)
{
  *this = &unk_2A1F09610;
  *(this + 1) = a2;
  *(this + 2) = a5;
  *(this + 3) = a7;
  *(this + 8) = a3;
  *(this + 36) = a4;
  *(this + 37) = a6;
  *(this + 38) = a8;
  if ((a6 | a4 | a8) > 0xFF)
  {
    DeviceFaultNotify("glutl_array.cpp", 41, "GlArray", "(m_ucMinHandle == min_handle) && (m_ucNumHandles == num_handles) && (m_ucNumSlots == num_slots) && (num_slots <= invalid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_array.cpp", 41, "(m_ucMinHandle == min_handle) && (m_ucNumHandles == num_handles) && (m_ucNumSlots == num_slots) && (num_slots <= invalid)");
  }

  BlueFin::GlArray::Clear(this);
  return this;
}

BlueFin::GlMeSrdSvIdMsmtHistoryBuffer *BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GlMeSrdSvIdMsmtHistoryBuffer(BlueFin::GlMeSrdSvIdMsmtHistoryBuffer *this)
{
  *(this + 200) = this;
  *(this + 370) = this;
  *(this + 371) = this + 1808;
  *(this + 372) = this + 1608;
  *(this + 373) = 0x23F000000000010;
  v2 = 100;
  *(this + 1496) = 100;
  BlueFin::GlBigArray::Clear(this + 2960);
  v3 = (*(this + 200) + 8);
  do
  {
    *(v3 - 8) = 0;
    *(v3 - 1) = 0;
    *v3 = 0;
    v3 += 2;
    --v2;
  }

  while (v2);
  return this;
}

uint64_t BlueFin::GlMeSrdSatReportMgr::GlMeSrdSatReportMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  *a1 = &unk_2A1F0C2B0;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a2;
  v10 = (a1 + 72);
  *(a1 + 32) = a3;
  *(a1 + 40) = v10;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *(a1 + 65) = a8;
  BlueFin::GlMeSrdTowAssistHolder::GlMeSrdTowAssistHolder(v10);
  *(a1 + 464) = &unk_2A1F0C2F8;
  *(a1 + 472) = a1;
  *(a1 + 480) = &unk_2A1F0C3B0;
  *(a1 + 3632) = a1 + 464;
  *(a1 + 488) = 0;
  *(a1 + 492) = -1;
  bzero((a1 + 496), 0xC3CuLL);
  *(a1 + 3640) = a9;
  *(a1 + 3648) = BlueFin::GlMeObjFactory::MakeSatReportArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 3656) = BlueFin::GlMeObjFactory::MakeSniffStateArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 3664) = BlueFin::GlMeObjFactory::MakeViterbiDecoderArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 3672) = BlueFin::GlMeObjFactory::MakeEstLowTowArray(BlueFin::GlMeObjFactory::m_ptObjFactory);
  *(a1 + 3680) = 0;
  *(a1 + 3684) = 1000;
  GlCustomLog(127, "Size,GlMeSrdSatReportMgr,%u\n", 3688);
  GlCustomLog(127, "    ->Size,GlMeSrdTowAssistHolder,%u\n", 392);
  GlCustomLog(127, "    ->Size,GlMeSrdSatReportGlobal,%u\n", 48);
  GlCustomLog(127, "    ->Size,GlMeSrdSatRptRpcBuffer,%u\n", 3160);
  GlCustomLog(127, "    ->Size,GlMeSrdSatRptRpcListener,%u\n", 16);
  BlueFin::GlBigArray::Clear(*(a1 + 3648));
  return a1;
}

BlueFin::GlMeSrdTowAssistHolder *BlueFin::GlMeSrdTowAssistHolder::GlMeSrdTowAssistHolder(BlueFin::GlMeSrdTowAssistHolder *this)
{
  *this = &unk_2A1F0C520;
  *(this + 1) = &unk_2A1F09448;
  *(this + 2) = &unk_2A1F09610;
  *(this + 3) = this + 56;
  *(this + 4) = this + 344;
  *(this + 5) = this + 312;
  *(this + 12) = 8;
  *(this + 26) = 8193;
  *(this + 54) = 32;
  BlueFin::GlArray::Clear(this + 16);
  *(this + 47) = 0x240C84007FFFFFFFLL;
  *(this + 96) = 0x7FFFFFFF;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  return this;
}

uint64_t BlueFin::GlMeObjFactory::MakeSniffStateArray(BlueFin::GlMeObjFactory *this)
{
  if ((*(this + 54) & 1) == 0)
  {
    return this + 360;
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(19, 40, *(this + 3));
  if (!Memory)
  {
    return *(this + 25);
  }

  v3 = Memory;
  *(this + 26) = BlueFin::GlMemAlloc::glAllocateMemory(20, 1120, *(this + 3));
  *(this + 28) = BlueFin::GlMemAlloc::glAllocateMemory(21, 20, *(this + 3));
  v4 = BlueFin::GlMemAlloc::glAllocateMemory(22, 100, *(this + 3));
  *(this + 27) = v4;
  v5 = *(this + 26);
  v6 = *(this + 28);
  *v3 = &unk_2A1F09610;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4;
  *(v3 + 24) = v6;
  *(v3 + 32) = 56;
  *(v3 + 36) = 25600;
  *(v3 + 38) = 20;
  BlueFin::GlArray::Clear(v3);
  *(this + 25) = v3;
  return v3;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterUtils(uint64_t result, uint64_t a2)
{
  if (!a2 || *(result + 17064))
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 244, "RegisterUtils", "m_pUtilsIf == nullptr && pUtilsIf != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 244, "m_pUtilsIf == nullptr && pUtilsIf != nullptr");
  }

  *(result + 17064) = a2;
  return result;
}

_BYTE *BlueFin::GlPosEng::SetFlightMode(_BYTE *this, int a2, int a3)
{
  this[245896] = a2;
  this[245897] = a3;
  if ((this[374912] & 1) == 0)
  {
    if (a3)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    v4 = &unk_2A1F11B70;
    v5 = 1;
    v6 = v3 | a2;
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        return BlueFin::GlPeModeChange::SerializeImpl(&v4);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPosEng::SetThermalRiskState(BlueFin::GlPosEng *this, unint64_t a2, int a3)
{
  *(this + 246076) = a3;
  if (a3 == 100)
  {
    *(this + 245349) = 1;
  }

  return 1;
}

uint64_t BlueFin::GlPosEng::StartRequest(uint64_t a1, BlueFin::GlRequestImpl **a2)
{
  v4 = *a2;
  v5 = *(*a2 + 11);
  GlCustomLog(12, "StartRequest ");
  (*(*v4 + 136))(v4, 12);
  (*(*v4 + 144))(v4, 12);
  BlueFin::GlReqSm::ProcessNewRequest((a1 + 126144), v4);
  if (!v5)
  {
    *a2 = 0;
  }

  return 0;
}

unint64_t BlueFin::GlRequestImplGnssMeasData::Print(unint64_t this, unsigned __int8 a2)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {

        return BlueFin::GlRequestImplNmea::Print(v3, a2, "");
      }
    }
  }

  return this;
}

unint64_t BlueFin::GlReqSm::ProcessNewRequest(BlueFin::GlReqSm *this, BlueFin::GlRequestImpl *a2)
{
  v4 = this + 54564;
  v5 = this + 6464;
  v6 = *(a2 + 4);
  if (v6 == 15)
  {
    v7 = (*(this + 54902) & 1) != 0 || *(a2 + 14) != 0;
    *(this + 54902) = v7;
  }

  v8 = *(*(this + 785) + 2568);
  if (v8 == -7200001)
  {
    v8 = 0;
    *(a2 + 8) = 0;
    if (*v5)
    {
LABEL_19:
      *(a2 + 7) = v8;
      goto LABEL_20;
    }
  }

  else
  {
    *(a2 + 8) = v8;
    if (*v5)
    {
      if (v8 == -1)
      {
        if (BlueFin::GlUtils::m_pInstance)
        {
          v8 = *(BlueFin::GlUtils::m_pInstance + 1092);
        }

        else
        {
          v8 = -1;
        }
      }

      goto LABEL_19;
    }
  }

  GlCustomLog(15, "GlReqSm::ProcessNewRequest(%u): New req received:%d timeoutS:%hd\n", v8, v6, *(a2 + 11));
  v9 = *(a2 + 7);
  if (v9 == -1)
  {
    if (BlueFin::GlUtils::m_pInstance)
    {
      v9 = *(BlueFin::GlUtils::m_pInstance + 1092);
    }

    else
    {
      v9 = -1;
    }
  }

  *(a2 + 7) = v9;
  v6 = *(a2 + 4);
LABEL_20:
  if ((v6 & 0xFFFFFFFE) == 2)
  {
    *v4 |= 0x8000u;
  }

  v10 = *(this + 3048);
  v39 = &v41;
  v40 = 3;
  v41 = v10;
  v42 = 0;
  if ((v10 & 0x100) != 0)
  {
    HasReq = 1;
    if ((v10 & 0x800) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    HasReq = BlueFin::GlPePendingBag::HasReq(this + 6496, 8);
    if ((*v39 & 0x800) != 0)
    {
LABEL_24:
      GlCustomLog(14, "GlReqSm: %s%s test already started, do not accept other requests!\n");
LABEL_25:
      v12 = *(a2 + 5);
      if (!v12)
      {
LABEL_28:
        v15 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
        GlCustomLog(14, "GlReqSm: add pend req %s %s\n", v15, "err");
        v16 = *(a2 + 7);
        if (v16)
        {
          v16(a2);
        }

        return BlueFin::GlRequestBase::Destroy(a2);
      }

      v13 = a2;
      v14 = 2;
LABEL_27:
      v12(v13, v14);
      goto LABEL_28;
    }
  }

  if ((HasReq | BlueFin::GlPePendingBag::HasReq(this + 6496, 11)))
  {
    goto LABEL_24;
  }

  v21 = *(a2 + 4);
  if (v21 <= 5)
  {
    if (v21)
    {
      if (v21 != 3)
      {
        if (v21 == 5 && (*(*(this + 784) + 136) & 1) == 0)
        {
          GlCustomLog(14, "GlReqSm: GL_REQ_QUERY_CNTIN incompatible because CNTIN is not specified in the freq plan!\n");
          goto LABEL_25;
        }

        goto LABEL_69;
      }

      if ((*(*a2 + 184))(a2) < 0x7531)
      {
        goto LABEL_69;
      }

      v32 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
      v33 = (*(*a2 + 184))(a2);
      GlCustomLog(14, "GlReqSm: %s period (%ums) exceeds maximum allowed (%ums)!\n", v32, v33, 30000);
    }

    else
    {
      if (*(*(this + 784) + 88) == 39 || (*(*a2 + 184))(a2) <= 0x15F90)
      {
        goto LABEL_69;
      }

      v25 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
      v26 = (*(*a2 + 184))(a2);
      GlCustomLog(14, "GlReqSm: %s period (%ums) exceeds maximum allowed (%ums)!\n", v25, v26, 90000);
    }

    v12 = *(a2 + 5);
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = a2;
    v14 = 5;
    goto LABEL_27;
  }

  if (v21 <= 10)
  {
    if (v21 == 6)
    {
      v27 = *(this + 784);
      *(v27 + 138) = 1000;
      if (*(v27 + 136) == 1)
      {
        v28 = *(v27 + 120);
        *v18.i64 = *(v27 + 128) * 1000000000.0 + 0.5;
        *v20.i64 = *v18.i64 + trunc(*v18.i64 * 2.32830644e-10) * -4294967300.0;
        v29.f64[0] = NAN;
        v29.f64[1] = NAN;
        v30 = vnegq_f64(v29);
        v20.i64[0] = vbslq_s8(v30, v20, v18).u64[0];
        if (*v18.i64 > 4294967300.0)
        {
          v18.i64[0] = v20.i64[0];
        }

        if (*v18.i64 < -4294967300.0)
        {
          *v19.i64 = -*v18.i64;
          *v18.i64 = -(*v18.i64 - trunc(*v18.i64 * -2.32830644e-10) * -4294967300.0);
          *v18.i64 = -*vbslq_s8(v30, v18, v19).i64;
        }

        if (*v18.i64 < 0.0)
        {
          v31 = --*v18.i64;
        }

        else
        {
          v31 = *v18.i64;
        }

        (*(**(this + 39) + 48))(*(this + 39), v28, v31, 1000);
      }

      GlCustomLog(14, "GlReqSm: SYNCIN request detected setting CNTIN duration to %hu ms\n", 1000);
      goto LABEL_69;
    }

    if (v21 != 8)
    {
      goto LABEL_69;
    }

    goto LABEL_45;
  }

  if (v21 == 12)
  {
    goto LABEL_25;
  }

  if (v21 == 11)
  {
LABEL_45:
    if (*(v5 + 1900) > 0 || *v39)
    {
      goto LABEL_25;
    }

    if (v40 >= 2uLL)
    {
      v22 = v40 - 1;
      v23 = v39 + 1;
      do
      {
        if (*v23++)
        {
          goto LABEL_25;
        }
      }

      while (--v22);
    }
  }

LABEL_69:
  v34 = *(v5 + 1900);
  if (v34 > 0x47)
  {
    v12 = *(a2 + 5);
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = a2;
    v14 = 3;
    goto LABEL_27;
  }

  *(this + v34 + 1284) = a2;
  *(v5 + 1900) = v34 + 1;
  if ((*(a2 + 21) & 1) == 0)
  {
    v35 = *(a2 + 5);
    if (v35)
    {
      v35(a2, 0);
    }

    *(a2 + 21) = 1;
  }

  v36 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
  GlCustomLog(14, "GlReqSm: add pend req %s %s\n", v36, "ok");
  if (v4[7] == 1)
  {
    v38 = 7;
    v37 = *(this + 4);
    result = *(this + 1);
    *(this + 4) = result;
    do
    {
      v43 = 0;
      if (BlueFin::patch_dispatch(result, this, &v38, &v43))
      {
        result = v43;
      }

      else
      {
        result = (*(this + 4))(this, &v38);
      }

      *(this + 4) = result;
    }

    while (result);
    *(this + 4) = v37;
  }

  else
  {
    result = BlueFin::GlQueue::putFIFO((this + 40), 7, 0);
    v4[4] = 0;
  }

  return result;
}

BOOL BlueFin::GlPePendingBag::HasReq(uint64_t a1, int a2)
{
  v2 = *(a1 + 3768);
  if (v2 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 364, "HasReq", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 364, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (*(a1 + 3768))
  {
    v3 = a1 + 3776;
    v4 = 1;
    v5 = *(a1 + 3768);
    v6 = 1;
    do
    {
      if (*v3 && *(*v3 + 16) == a2)
      {
        break;
      }

      v6 = v4++ < v2;
      v3 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnStart(BlueFin::GlDbgCodec *a1, void (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v10 = result;
  if (!*(a1 + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 544);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    v9 = a3;
    BlueFin::GlDbgCodec::Write(a1, &v9);
    (*(*a1 + 32))(a1, 1);
    v7 = this[9];
    if (v7)
    {
      v7(this, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 544);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    v8 = *(*a1 + 32);

    return v8(a1, 1);
  }

  return result;
}

void FireCallback::GlReqOnStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v11 = *(FireCallback::pInstance + 24);
    if (v11)
    {
      v14 = a1;
      v13 = a2;
      (*(*v11 + 48))(v11, &v14, &v13);
      return;
    }

    v12 = "fcb,fReqOnStartCb,nullptr";
  }

  else
  {
    v12 = "fcb,GlReqOnStart,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v12, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlPePendingBag::GetPendingRequestTypes@<X0>(uint64_t this@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(this + 3768);
  if (v2 >= 0x48)
  {
    v5 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 343, "GetPendingRequestTypes", "m_sReqNum < _DIM(m_aptReqList)");
    v6 = 343;
    goto LABEL_8;
  }

  v3 = 0;
  if (*(this + 3768))
  {
    v4 = this + 3776;
    while (*v4)
    {
      v3 |= 1 << *(*v4 + 16);
      v4 += 8;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    *a2 = v3;
    v5 = "pReq != nullptr";
    DeviceFaultNotify("glpe_pendingbag.cpp", 350, "GetPendingRequestTypes", "pReq != nullptr");
    v6 = 350;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v6, v5);
  }

LABEL_6:
  *a2 = v3;
  return this;
}

uint64_t (*BlueFin::GlReqSm::idle(uint64_t a1, _BYTE *a2))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      if ((*(**(a1 + 6272) + 1096))(*(a1 + 6272)) && *(a1 + 312))
      {
        v16 = (*(**(a1 + 6272) + 1128))(*(a1 + 6272));
        v17 = 70;
        if (v16)
        {
          v17 = 84;
        }

        GlCustomLog(14, "GlReqSm::idle ShouldBeUsingOnChipMe = %c\n", v17);
        BlueFin::GlPosEng::ReinitMeasEng(*(a1 + 6264));
      }

      if (*(a1 + 54568) == 1)
      {
        BlueFin::GlQueue::putFIFO((a1 + 40), 7, 0);
        result = 0;
        *(a1 + 54568) = 0;
      }

      else
      {
        if (*(a1 + 10848))
        {
          return 0;
        }

        *(a1 + 31616) = a1;
        BlueFin::GlTimer::arm((a1 + 31584), 26, 0, 0x3E8u);
        result = 0;
        *(a1 + 31608) = 1;
      }

      return result;
    case 3:
    case 6:
    case 0xB:
    case 0xC:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x2A:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      return result;
    case 7:
    case 0xA:
    case 0x31:
      BlueFin::GlTimer::disarm((a1 + 31584));
      if (BlueFin::GlPePendingBag::HasReq(a1 + 6496, 8) && BlueFin::GlPePendingBag::GetFactTestItem((a1 + 6496)) == 4)
      {
        v5 = *(a1 + 6272);
        *(v5 + 128) = 0x3E63DD3DC0000000;
        *(v5 + 138) = 1000;
      }

      if (BlueFin::GlPePendingBag::HasReq(a1 + 6496, 8) && !BlueFin::GlPePendingBag::GetFactTestItem((a1 + 6496)))
      {
        *(*(a1 + 6272) + 138) = 250;
      }

      BlueFin::GlPePendingBag::GetPendingRequestTypes(a1 + 6496, &v23);
      v11 = (v23 & 0x3000) != 0 && (v23 & 0xFFFFCFFF) == 0;
      *(*(a1 + 6272) + 1318) = v11;
      BlueFin::GlReqSm::SetAsicParams(a1, v6, v7, v8, v9, v10);
      v12 = *(a1 + 6272);
      v13 = v12[6504];
      if (v13)
      {
        *(*(a1 + 6280) + 3420) = v13;
      }

      if ((*(*v12 + 1064))(v12))
      {
        if (*a2 == 10)
        {
          BlueFin::GlReqSm::SetAsstFromPend(a1, 0, 0);
        }

        v14 = "&GlReqSm::wait4nullme";
        v15 = BlueFin::GlReqSm::wait4nullme;
      }

      else
      {
        (*(**(a1 + 312) + 208))(*(a1 + 312));
        if (*a2 == 10)
        {
          BlueFin::GlReqSm::SetAsstFromPend(a1, 0, 0);
        }

        v14 = "&GlReqSm::wait4me";
        v15 = BlueFin::GlReqSm::wait4me;
      }

      goto LABEL_20;
    case 8:
      BlueFin::GlPePendingBag::TerminateRequest(a1 + 6496, *(a1 + 33184));
      return 0;
    case 9:
      BlueFin::GlPePendingBag::TerminateAll(a1 + 6496);
      BlueFin::GlPeReqBag::TerminateAll((a1 + 10880));
      BlueFin::GlTimer::disarm((a1 + 31584));
      return 0;
    case 0x1A:
      BlueFin::GlTimer::disarm((a1 + 31584));
      v18 = *(a1 + 11504);
      if (*v18)
      {
        return 0;
      }

      v19 = *(a1 + 11512);
      if (v19 < 2)
      {
        goto LABEL_34;
      }

      v20 = v19 - 1;
      v21 = v18 + 1;
      break;
    default:
      return BlueFin::QHsm::top;
  }

  while (!*v21++)
  {
    if (!--v20)
    {
LABEL_34:
      v14 = "&GlReqSm::restart";
      v15 = BlueFin::GlReqSm::restart;
LABEL_20:
      BlueFin::QHsm::tran(a1, v15, v14);
      return 0;
    }
  }

  return 0;
}

uint64_t BlueFin::GlReqSm::SetAsicParams(BlueFin::GlReqSm *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  v6 = this;
  v110 = *MEMORY[0x29EDCA608];
  v7 = *(this + 39);
  v8 = *(v6 + 784);
  v9 = *(v8 + 104);
  *a4.i64 = *(v8 + 112) * 1000000000.0 + 0.5;
  *a6.i64 = *a4.i64 + trunc(*a4.i64 * 2.32830644e-10) * -4294967300.0;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vnegq_f64(v10);
  a6.i64[0] = vbslq_s8(v11, a6, a4).u64[0];
  if (*a4.i64 > 4294967300.0)
  {
    a4.i64[0] = a6.i64[0];
  }

  if (*a4.i64 < -4294967300.0)
  {
    *a5.i64 = -*a4.i64;
    *a4.i64 = -(*a4.i64 - trunc(*a4.i64 * -2.32830644e-10) * -4294967300.0);
    a4 = vbslq_s8(v11, a4, a5);
    *a4.i64 = -*a4.i64;
  }

  if (*a4.i64 < 0.0)
  {
    v12 = --*a4.i64;
  }

  else
  {
    LOWORD(v12) = *a4.i64;
  }

  *a2.i64 = *(v8 + 128) * 1000000000.0 + 0.5;
  *a4.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v13 = vbslq_s8(v11, a4, a2);
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = v13.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *v13.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *a2.i64 = -*vbslq_s8(vnegq_f64(v14), a2, v13).i64;
  }

  if (*a2.i64 < 0.0)
  {
    v15 = --*a2.i64;
  }

  else
  {
    LOWORD(v15) = *a2.i64;
  }

  (*(*v7 + 56))(v7, v9, v12, v15);
  v16 = *(v6 + 784);
  if (*(v16 + 26056) == 1)
  {
    v17 = *(v16 + 48);
    v18 = v17 > 8;
    v19 = 0x1F4u >> v17;
    if (v18)
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  (*(**(v6 + 39) + 520))(*(v6 + 39), v19 & 1);
  v20 = *(v6 + 784);
  if (*(v20 + 26057) == 1)
  {
    v21 = *(v20 + 48);
    v18 = v21 > 8;
    v22 = 0x1F4u >> v21;
    if (v18)
    {
      LOBYTE(v22) = 0;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  (*(**(v6 + 39) + 528))(*(v6 + 39), v22 & 1);
  v23 = *(*(v6 + 784) + 26320);
  (*(**(v6 + 39) + 536))();
  (*(**(v6 + 39) + 72))(*(v6 + 39), *(*(v6 + 784) + 48));
  (*(**(v6 + 39) + 80))(*(v6 + 39), *(*(v6 + 784) + 92));
  (*(**(v6 + 39) + 64))(*(v6 + 39), *(*(v6 + 784) + 88));
  (*(**(v6 + 39) + 88))(*(v6 + 39), *(*(v6 + 784) + 26298));
  v99[4] = 1000;
  v99[3] = 1000;
  v99[2] = 1000;
  v99[1] = 1000;
  (*(**(v6 + 784) + 1040))();
  (*(**(v6 + 39) + 136))(*(v6 + 39), 1000, 1000, 1000, 1000);
  (*(**(v6 + 39) + 24))(*(v6 + 39), *(*(v6 + 784) + 96));
  (*(**(v6 + 39) + 32))(*(v6 + 39), *(*(v6 + 784) + 283));
  (*(**(v6 + 39) + 160))(*(v6 + 39), *(*(v6 + 784) + 1312), *(*(v6 + 784) + 1316), *(*(v6 + 784) + 1317));
  v27 = *(v6 + 784);
  if (*(v27 + 136) == 1)
  {
    *v24.i64 = *(v27 + 128) * 1000000000.0 + 0.5;
    *v26.i64 = *v24.i64 + trunc(*v24.i64 * 2.32830644e-10) * -4294967300.0;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v29 = vnegq_f64(v28);
    v26.i64[0] = vbslq_s8(v29, v26, v24).u64[0];
    if (*v24.i64 > 4294967300.0)
    {
      v24.i64[0] = v26.i64[0];
    }

    if (*v24.i64 < -4294967300.0)
    {
      *v25.i64 = -*v24.i64;
      *v24.i64 = -(*v24.i64 - trunc(*v24.i64 * -2.32830644e-10) * -4294967300.0);
      *v24.i64 = -*vbslq_s8(v29, v24, v25).i64;
    }

    if (*v24.i64 < 0.0)
    {
      v30 = --*v24.i64;
    }

    else
    {
      LOWORD(v30) = *v24.i64;
    }

    (*(**(v6 + 39) + 48))(*(v6 + 39), *(v27 + 120), v30, *(v27 + 138));
    v27 = *(v6 + 784);
  }

  v98 = v6 + 54596;
  (*(**(v6 + 39) + 376))(*(v6 + 39), (**(v27 + 160) >> 6) & 1);
  v31 = (**(*(v6 + 784) + 160) >> 7) & 1;
  (*(**(v6 + 39) + 384))();
  v32 = (**(*(v6 + 784) + 160) >> 12) & 1;
  (*(**(v6 + 39) + 392))();
  BlueFin::GlPePwrStateMgr::EnablePedestrianLowPower((v6 + 33216), (**(*(v6 + 784) + 160) >> 5) & 1);
  v33 = *(v6 + 784);
  (*(**(v6 + 39) + 416))();
  v34 = *(*(v6 + 784) + 1296);
  (*(**(v6 + 39) + 440))();
  v35 = *(v6 + 784);
  v36 = *(v35 + 1306);
  v37 = *(v35 + 1308);
  (*(**(v6 + 39) + 448))();
  CWRequest = BlueFin::GlPePendingBag::GetCWRequest((v6 + 6496));
  if (CWRequest)
  {
    v109 = 0xFFFF0100000000;
    v108 = 0;
    v107 = 0;
    memset(__endptr, 0, sizeof(__endptr));
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
    (*(*CWRequest + 456))();
    (*(**(v6 + 39) + 592))(*(v6 + 39), *(*(v6 + 784) + 26014));
    (*(**(v6 + 39) + 600))();
    (*(**(v6 + 39) + 608))(*(v6 + 39), 0);
  }

  BreadcrumbDCMin = BlueFin::GlPePendingBag::GetBreadcrumbDCMin((v6 + 6496));
  if (BreadcrumbDCMin)
  {
    v40 = BreadcrumbDCMin;
    GlCustomLog(14, "Customer::SetConfigParameters with Min DC %u Max DC %u\n", BreadcrumbDCMin, 5);
    (*(**(v6 + 39) + 144))(*(v6 + 39), 1, v40, 5);
  }

  (*(**(v6 + 39) + 104))(*(v6 + 39), *(v6 + 784) + 284);
  *v98 = 0;
  v41 = *(v6 + 784);
  v42 = (v41 + 284);
  v43 = strlen((v41 + 284));
  if (v43 >= 1)
  {
    v97 = v6;
    v44 = v6 + 33504;
    v45 = &v42[v43];
    while (1)
    {
      if (!strncmp(v42, "meif_4771:1;", 0xDuLL))
      {
        *v98 = 1;
        goto LABEL_67;
      }

      if (strncmp(v42, "iqdump:", 7uLL))
      {
        goto LABEL_67;
      }

      for (i = v42 + 7; ; i = v48 + 1)
      {
        __endptr[0] = 0;
        v47 = strtol(i, __endptr, 0);
        v48 = __endptr[0];
        if (__endptr[0] == i)
        {
          break;
        }

        v49 = *__endptr[0];
        v18 = v49 > 0x3B;
        v50 = (1 << v49) & 0x800100000000001;
        v51 = v18 || v50 == 0;
        if (v51)
        {
          break;
        }

        if (v47 == -1)
        {
          v98[306] = 1;
        }

        else if (v47 == 123456)
        {
          memset(*v44, 255, 4 * *(v44 + 8));
          ULong = BlueFin::GlSetBase::GetULong(v44, 0);
          BlueFin::GlSetBase::SetULong(v44, 0, ULong & 0xFFFFFFFE);
          v53 = (32 * (*(v44 + 8) & 0x3F) - 1);
          if (v53 >= 0xBE)
          {
            v54 = 189;
            v55 = -67;
            do
            {
              v56 = v55 & 0x1F;
              if ((v55 & 0x1F) != 0)
              {
                v57 = BlueFin::GlSetBase::GetULong(v44, (v54 >> 5));
                BlueFin::GlSetBase::SetULong(v44, (v54 >> 5), v57 & ~(-1 << v56));
                LOWORD(v54) = v54 - v56;
              }

              else
              {
                BlueFin::GlSetBase::SetULong(v44, (v54 >> 5), 0);
              }

              v55 = v54 + 32;
              v54 = (v54 + 32);
            }

            while (v54 < v53);
          }
        }

        else
        {
          *(*v44 + 4 * (v47 >> 5)) |= 1 << v47;
        }
      }

      if (**v44)
      {
        goto LABEL_62;
      }

      v58 = *(v44 + 8);
      if (v58 >= 2)
      {
        break;
      }

      do
      {
LABEL_67:
        v51 = v42 == v45;
        v63 = *v42++;
        v62 = v63;
      }

      while (!v51 && v62 != 59);
      if (v42 >= v45)
      {
        v6 = v97;
        v41 = *(v97 + 784);
        goto LABEL_71;
      }
    }

    v59 = v58 - 1;
    v60 = (*v44 + 4);
    while (!*v60++)
    {
      if (!--v59)
      {
        goto LABEL_67;
      }
    }

LABEL_62:
    __endptr[0] = &__endptr[1] + 4;
    LOBYTE(__endptr[1]) = 3;
    *(&__endptr[1] + 4) = 0;
    HIDWORD(__endptr[2]) = 0;
    (*(**(v97 + 39) + 784))(*(v97 + 39), v44, __endptr);
    goto LABEL_67;
  }

LABEL_71:
  (*(**(v6 + 39) + 168))(*(v6 + 39), *(v41 + 1318));
  v64 = *(v6 + 784);
  v65 = v64 + 24576;
  v66 = *(v64 + 26020);
  if (v66 == 4)
  {
    v67 = &unk_298A45170;
LABEL_81:
    memset_pattern16(__endptr, v67, 0x1CuLL);
    v70 = *(v65 + 1717);
    v71 = *(v65 + 1420);
    v72 = *(v65 + 1424);
    v73 = *(v65 + 1428);
    v74 = *(v65 + 1432);
    v75 = *(v65 + 1434);
    v76 = *(**(v6 + 39) + 120);
    goto LABEL_105;
  }

  v68 = **(v64 + 160);
  if ((v68 & 0x80) != 0)
  {
    v67 = &unk_298A45160;
    goto LABEL_81;
  }

  memset(__endptr, 0, 28);
  v69 = *(v65 + 1717);
  if ((v68 & 0x40) != 0)
  {
LABEL_84:
    v66 = 2;
    goto LABEL_85;
  }

  if (v66 > 2)
  {
    if (v66 != 3)
    {
      if (v66 == 5)
      {
        v66 = 6;
      }

      else
      {
        if (v66 != 6)
        {
          goto LABEL_86;
        }

        v66 = 7;
      }
    }

    goto LABEL_85;
  }

  if (v66 != 1)
  {
    if (v66 != 2)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

LABEL_85:
  LODWORD(__endptr[0]) = v66;
LABEL_86:
  v77 = *(v65 + 1448) - 1;
  if (v77 <= 5 && ((0x37u >> v77) & 1) != 0)
  {
    HIDWORD(__endptr[0]) = dword_298A45198[v77];
  }

  v78 = *(v65 + 1452) - 1;
  if (v78 <= 5 && ((0x37u >> v78) & 1) != 0)
  {
    LODWORD(__endptr[1]) = dword_298A45198[v78];
  }

  v79 = *(v65 + 1456) - 1;
  if (v79 <= 5 && ((0x37u >> v79) & 1) != 0)
  {
    HIDWORD(__endptr[1]) = dword_298A45198[v79];
  }

  v80 = *(v65 + 1460) - 1;
  if (v80 <= 5 && ((0x37u >> v80) & 1) != 0)
  {
    LODWORD(__endptr[2]) = dword_298A45198[v80];
  }

  v81 = *(v65 + 1464) - 1;
  if (v81 <= 5 && ((0x37u >> v81) & 1) != 0)
  {
    HIDWORD(__endptr[2]) = dword_298A45198[v81];
  }

  v82 = *(v65 + 1468) - 1;
  if (v82 <= 5 && ((0x37u >> v82) & 1) != 0)
  {
    LODWORD(__endptr[3]) = dword_298A45198[v82];
  }

  v83 = *(v65 + 1428);
  v84 = *(v65 + 1432);
  v85 = *(v65 + 1434);
  v76 = *(**(v6 + 39) + 120);
LABEL_105:
  v76();
  v86 = *(v6 + 784);
  if (*(v86 + 88) < 39)
  {
    (*(**(v6 + 39) + 424))(*(v6 + 39), *(v86 + 25957), *(v86 + 25960));
    v90 = *(v6 + 784);
    *(v98 + 71) = *(v90 + 25960);
    goto LABEL_118;
  }

  LOBYTE(__endptr[0]) = 0;
  v99[0] = 0;
  v87 = (*(**(v6 + 39) + 432))(*(v6 + 39), __endptr, v99 + 1, v99);
  v88 = *(*(v6 + 784) + 25960);
  if (!v87)
  {
    goto LABEL_116;
  }

  if (!*(*(v6 + 784) + 25957))
  {
    if (LOBYTE(__endptr[0]) == 5 || LOBYTE(__endptr[0]) == 3)
    {
      v89 = *(**(v6 + 39) + 424);
      goto LABEL_115;
    }

LABEL_116:
    (*(**(v6 + 39) + 424))(*(v6 + 39), *(*(v6 + 784) + 25957), *(*(v6 + 784) + 25960));
    goto LABEL_117;
  }

  if (LOBYTE(__endptr[0]) == 3 || LOBYTE(__endptr[0]) == 5)
  {
    goto LABEL_116;
  }

  v89 = *(**(v6 + 39) + 424);
LABEL_115:
  v89();
  *(v98 + 71) = v88;
LABEL_117:
  v90 = *(v6 + 784);
LABEL_118:
  (*(**(v6 + 39) + 640))(*(v6 + 39), *(v90 + 26048));
  v91 = (**(*(v6 + 784) + 160) >> 17) & 1;
  (*(**(v6 + 39) + 656))();
  v92 = *(v6 + 784);
  if ((*(*(v92 + 160) + 2) & 2) != 0)
  {
    (*(**(v6 + 39) + 664))(*(v6 + 39), v92 + 26160);
    v92 = *(v6 + 784);
  }

  if (*(v92 + 917) == 1)
  {
    (*(**(v6 + 39) + 624))(*(v6 + 39), *(v92 + 984));
    v92 = *(v6 + 784);
  }

  if (*(v92 + 918) == 1)
  {
    (*(**(v6 + 39) + 632))(*(v6 + 39), *(v92 + 988));
    v92 = *(v6 + 784);
  }

  if (*(v92 + 26172) == 1)
  {
    (*(**(v6 + 39) + 408))(*(v6 + 39), 1);
    v92 = *(v6 + 784);
  }

  if (*(v92 + 26216) == 1)
  {
    (*(**(v6 + 39) + 688))(*(v6 + 39), 1);
    v92 = *(v6 + 784);
  }

  if (*(v92 + 26217) == 1)
  {
    (*(**(v6 + 39) + 696))(*(v6 + 39), 1);
    v92 = *(v6 + 784);
  }

  if ((*(v92 + 88) - 37) <= 1 && *(v92 + 26260))
  {
    (*(**(v6 + 39) + 704))(*(v6 + 39), v92 + 26260);
    v92 = *(v6 + 784);
  }

  if (*(v92 + 26292) == 1)
  {
    (*(**(v6 + 39) + 712))(*(v6 + 39), 1);
    v92 = *(v6 + 784);
  }

  (*(**(v6 + 39) + 720))(*(v6 + 39), *(v92 + 26296));
  v93 = *(v6 + 784);
  if (*(v93 + 26304) == 1)
  {
    *(*(v6 + 785) + 4875) = 1;
  }

  result = (*(**(v6 + 39) + 744))(*(v6 + 39), v93 + 26324);
  v95 = *(v6 + 784);
  if (*(v95 + 26340) == 1 && *(v95 + 88) >= 39)
  {
    result = (*(**(v6 + 39) + 768))(*(v6 + 39), 1);
    v95 = *(v6 + 784);
  }

  if (*(v95 + 26341) == 1)
  {
    result = (*(**(v6 + 39) + 776))(*(v6 + 39), 1);
  }

  v96 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetRefClockParams(BlueFin::GlDineCtrl *this, int a2, unsigned int a3, int a4)
{
  GlCustomLog(14, "GlDineCtrl::SetRefClockParams(%u, %u, %u):\n", a2, a3, a4);
  BlueFin::GlMeSrdAsicConfig::SetClockFrequency(this + 29288, a2, a3);
  v7 = *(*(this + 3649) + 24);

  return v7();
}

uint64_t BlueFin::GlDineCtrl::SetL5MsaEnabled(BlueFin::GlDineCtrl *this, char a2)
{
  result = (*(*(this + 3644) + 80))();
  *(this + 29850) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::UpdatePerformanceModes(uint64_t this)
{
  if (*(this + 2196))
  {
    v1 = 0;
    v2 = 4;
    v3 = 4;
LABEL_3:
    *(this + 2184) = v2;
    *(this + 2188) = v3;
    *(this + 2192) = v1;
    return this;
  }

  v4 = *(this + 1412) - 1;
  if (v4 <= 7 && ((0xE3u >> v4) & 1) != 0)
  {
    v2 = dword_298A33FD0[v4];
    v3 = dword_298A33FF0[v4];
    v1 = v3;
    goto LABEL_3;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::SetAsicConfigIfc(uint64_t a1)
{
  BlueFin::GlMeSrdAsicUnitConverter::bIsMinnowAsicType = (*(*a1 + 264))(a1);
  BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution = (*(*a1 + 320))(a1);
  BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft = (*(*a1 + 288))(a1);
  BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk = (*(*a1 + 296))(a1);
  BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale = (*(*a1 + 304))(a1);
  (*(*a1 + 328))(a1);
  result = (*(*a1 + 312))(a1);
  BlueFin::GlMeSrdAsicUnitConverter::ulFrqNco2HzScale = result;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetRfType(uint64_t a1, int a2)
{
  *(a1 + 1408) = a2;
  *(a1 + 8) = 0;
  *(a1 + 23) = 0;
  *(a1 + 529) = 0;
  if ((a2 - 39) >= 2)
  {
    switch(a2)
    {
      case 18:
        v4 = 4;
        goto LABEL_17;
      case 21:
      case 32:
        v4 = 1;
        goto LABEL_17;
      case 22:
      case 33:
        *(a1 + 8) = 1;
        goto LABEL_19;
      case 23:
        *(a1 + 8) = 1;
        goto LABEL_25;
      case 24:
        *(a1 + 8) = 1;
        goto LABEL_24;
      case 25:
        v4 = 2;
LABEL_17:
        *(a1 + 8) = v4;
        break;
      case 26:
        *(a1 + 8) = 2;
        goto LABEL_19;
      case 28:
        *(a1 + 8) = 2;
        *(a1 + 23) = 257;
        break;
      case 29:
        *(a1 + 8) = 2;
        goto LABEL_25;
      case 30:
        *(a1 + 8) = 2;
LABEL_24:
        *(a1 + 23) = 1;
LABEL_25:
        *(a1 + 529) = 1;
        break;
      case 34:
      case 36:
      case 37:
      case 38:
        *(a1 + 8) = 3;
        *(a1 + 529) = 1;
        *(a1 + 555) = 1;
        if (*(a1 + 1416))
        {
LABEL_19:
          *(a1 + 23) = 1;
        }

        break;
      default:
        break;
    }

    DeviceFaultNotify("glmesrd_asic_config.cpp", 662, "SetRfType", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 662, "0");
  }

  *(a1 + 8) = 5;
  *(a1 + 555) = 0;
  if (*(a1 + 1416))
  {
    *(a1 + 23) = 1;
  }

  v2 = 0;
  *(a1 + 1424) = 0x3CB640E5AA05A8CLL;
  *(a1 + 1468) = 1342177280;
  *(a1 + 1459) = 4;
  *(a1 + 1460) = 15;
  *(a1 + 1444) = 21845;
  do
  {
    *(a1 + v2 + 1436) = (1 << BlueFin::GlSignalId::s_aucGnss2numSignals[v2]) - 1;
    ++v2;
  }

  while (v2 != 7);
  *(a1 + 1458) = 16;
  *(a1 + 1448) = 52;
  *(a1 + 1452) = 1796;
  *(a1 + 1456) = 3864;
  *(a1 + 1481) = 1;
  *(a1 + 1483) = 16843009;
  *(a1 + 1472) = 0x118FD44012BFD44;
  *(a1 + 1489) = 436471251;
  *(a1 + 1601) = 1;

  return BlueFin::GlMeSrdAsicUnitConverter::SetAsicConfigIfc(a1);
}

_WORD *BlueFin::GlSettingsImpl::GetPMMSettings(_WORD *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  *a2 = this[649];
  *a3 = this[650];
  *a4 = this[651];
  *a5 = this[652];
  return this;
}

uint64_t BlueFin::GlDineCtrl::SetPMMSettings(BlueFin::GlDineCtrl *this, unsigned int a2)
{
  v3 = this + 28672;
  v4 = 21474837 * a2;
  v5 = HIDWORD(v4);
  if (BYTE4(v4) - 1 >= 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = BYTE4(v4);
  }

  result = GlCustomLog(14, "GlDineCtrl::SetPMMSettings:SetDutyCycleBlockParams(Min %d,Max %d)\n", v6, BYTE4(v4));
  v3[1792] = 1;
  v3[1793] = v6;
  v3[1794] = v5;
  *(this + 30467) = 6408;
  return result;
}

unint64_t BlueFin::GlPePwrStateMgr::EnablePedestrianLowPower(BlueFin::GlPePwrStateMgr *this, int a2)
{
  *(this + 209) = a2;
  v4 = "False";
  if (a2)
  {
    v4 = "True";
  }

  result = GlCustomLog(14, "GlPePwrStateMgr::EnablePedestrianLowPower %s\n", v4);
  if (a2)
  {

    return BlueFin::GlPePwrStateMgr::EnableLowPower(this, 1u);
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::EnableMPF(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 29824) = a2;
  v2 = "Disabled";
  if (a2)
  {
    v2 = "Enabled";
  }

  return GlCustomLog(14, "GlDineCtrl::EnableMPF is %s \n", v2);
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetNotchFiltersConfiguration(uint64_t result, void *a2, unsigned int a3)
{
  if (a3 > 0x18)
  {
    v10 = "ucNumNotches <= NUM_NOTCH_FILTERS";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 1889, "SetNotchFiltersConfiguration", "ucNumNotches <= NUM_NOTCH_FILTERS");
    v11 = 1889;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v11, v10);
  }

  if (a3)
  {
    v3 = 0;
    for (i = a3; i; --i)
    {
      if (*a2)
      {
        v5 = v3 + 1;
        v6 = *(result + 8);
        v7 = v6 > 5;
        v8 = (1 << v6) & 0x2C;
        if (v7 || v8 == 0)
        {
          if (v5 >= 3)
          {
            v10 = "ulNumFilters <= 2";
            DeviceFaultNotify("glmesrd_asic_config.cpp", 1899, "SetNotchFiltersConfiguration", "ulNumFilters <= 2");
            v11 = 1899;
            goto LABEL_17;
          }
        }

        else if (v5 >= 0x19)
        {
          v10 = "ulNumFilters <= NUM_NOTCH_FILTERS";
          DeviceFaultNotify("glmesrd_asic_config.cpp", 1903, "SetNotchFiltersConfiguration", "ulNumFilters <= NUM_NOTCH_FILTERS");
          v11 = 1903;
          goto LABEL_17;
        }

        *(result + 76 + 8 * v3++) = *a2;
      }

      ++a2;
    }
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::SetAGCForceValue(uint64_t this, char a2, int a3)
{
  *(this + 29826) = a2;
  *(this + 29828) = a3;
  return this;
}

_DWORD *BlueFin::GlPePendingBag::GetCWRequest(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 449, "GetCWRequest", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 449, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (*(this + 1884))
  {
    v3 = 0;
    v4 = this + 3776;
    do
    {
      v5 = *&v4[8 * v3];
      if (v5[4] == 8)
      {
        if (!(*(*v5 + 360))(*&v4[8 * v3]))
        {
          return v5;
        }

        LOWORD(v1) = *(this + 1884);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  return 0;
}

uint64_t BlueFin::GlDineCtrl::SetConfigParameters(BlueFin::GlDineCtrl *this, const char *a2)
{
  v4 = this + 28672;
  GlCustomLog(14, "GlDineCtrl::SetConfigParameters(%s):\n", a2);
  result = BlueFin::GlMeSrdAsicConfig::SetConfigParameters((this + 29288), a2);
  v6 = *(v4 + 698);
  if (v6)
  {
    (*(*this + 496))(this, 1);
    result = (*(*this + 496))(this, 0);
    *(v4 + 780) = v6;
  }

  return result;
}

uint64_t BlueFin::GlPePendingBag::GetBreadcrumbDCMin(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 522, "GetBreadcrumbDCMin", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 522, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (!*(this + 1884))
  {
    return 0;
  }

  result = 0;
  v4 = (this + 3776);
  do
  {
    v5 = *v4;
    if (*v4 && *(v5 + 16) == 13)
    {
      v6 = *(v5 + 172);
      if ((v6 & 0x20000) != 0)
      {
        result = 3;
      }

      else if ((v6 & 0x40000) != 0)
      {
        result = 4;
      }

      else if ((v6 & 0x80000) != 0)
      {
        result = 5;
      }

      else
      {
        result = result;
      }
    }

    ++v4;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetConfigParameters(BlueFin::GlMeSrdAsicConfig *this, const char *__s)
{
  result = strlen(__s);
  if (result >= 1)
  {
    v3 = __s;
    v4 = &__s[result];
    v281 = (this + 2176);
    v282 = (this + 2056);
    v5 = "dc_ctrl:";
    do
    {
      if (!strncmp(v5, v3, 8uLL))
      {
        v20 = (v3 + 8);
        __endptr = 0;
        v285 = strtoul(v3 + 8, &__endptr, 0);
        if (__endptr == v3 + 8 || *__endptr != 44)
        {
          v21 = 0;
        }

        else
        {
          v21 = 1;
          v20 = __endptr;
        }

        v22 = v20 + 1;
        __endptr = 0;
        v23 = strtoul(v22, &__endptr, 0);
        if (__endptr == v22 || *__endptr != 44)
        {
          v24 = 0;
        }

        else
        {
          v24 = 1;
          v22 = __endptr;
        }

        v25 = v22 + 1;
        __endptr = 0;
        v26 = strtoul(v22 + 1, &__endptr, 0);
        if (__endptr == v25 || *__endptr != 44)
        {
          v27 = 0;
        }

        else
        {
          v27 = 1;
          v25 = __endptr;
        }

        __endptr = 0;
        v28 = strtoul(v25 + 1, &__endptr, 0);
        if (__endptr != v25 + 1 && *__endptr == 59 && (v21 & v24 & v27) != 0 && v285 <= 5 && v23 <= 5 && v285 <= v23 && v26 <= 0xFF && (v29 = v28, v28 <= 0xFF))
        {
          result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetDutyCycle(Min %u,Max %u,Sats %u,PwrdBHzBlk %u)\n", v285, v23, v26, v28);
          *(this + 1176) = 1;
          *(this + 1177) = v285;
          *(this + 1178) = v23;
          *(this + 1179) = v26;
          *(this + 1180) = v29;
        }

        else
        {
          result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetDutyCycle incorrect\n");
        }

        goto LABEL_274;
      }

      if (!strncmp("dbg_ctrl:", v3, 9uLL))
      {
        v294[0] = 0;
        __endptr = 0;
        if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 9), 0x3B, v294, &__endptr, v6))
        {
          v30 = v294[0];
          v31 = "OFF";
          if (v294[0])
          {
            v31 = "ON";
          }

          result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetBurstDebugOn(bBurstDebugOn %s)\n", v31);
          *(this + 544) = v30;
        }

        else
        {
          result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetBurstDebugOn failed configuration\n");
        }

        goto LABEL_274;
      }

      if (!strncmp("esw_ctrl:", v3, 9uLL))
      {
        v294[0] = 0;
        v297[4] = 0;
        v297[0] = 0;
        BYTE4(v296) = 0;
        __endptr = 0;
        Param = BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 9), 0x2C, v294, &__endptr, v7);
        v34 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, &v297[4], &__endptr, v33);
        v36 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, v297, &__endptr, v35);
        v38 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x3B, &v296 + 4, &__endptr, v37);
        if (Param && v34 && v36 && v38)
        {
          v39 = v294[0];
          if (v294[0])
          {
            v40 = "Enabled";
          }

          else
          {
            v40 = "Disabled";
          }

          GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetRetainEswEnabled(bRetainEswEnabled %s)\n", v40);
          *(this + 555) = v39;
          v41 = v297[4];
          if (v297[4])
          {
            v42 = "Enabled";
          }

          else
          {
            v42 = "Disabled";
          }

          GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetLoadEswEnabled(bLoadEswEnabled %s)\n", v42);
          *(this + 556) = v41;
          v43 = v297[0];
          if (v297[0])
          {
            v44 = "Enabled";
          }

          else
          {
            v44 = "Disabled";
          }

          GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetEswDynPwrControl(bEswDynPwrControl %s)\n", v44);
          *(this + 557) = v43;
          v45 = BYTE4(v296);
          if (BYTE4(v296))
          {
            v46 = "Enabled";
          }

          else
          {
            v46 = "Disabled";
          }

          result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetEswPrintfEnabled(bEswPrintfEnabled %s)\n", v46);
          *(this + 560) = v45;
        }

        else
        {
          result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:Set ESW Control failed configuration\n");
        }
      }

      else
      {
        if (!strncmp("dr_lp_hyb:", v3, 0xAuLL))
        {
          v294[0] = 0;
          __endptr = 0;
          if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 10), 0x3B, v294, &__endptr, v8))
          {
            v47 = "Disabled";
            if (v294[0])
            {
              v47 = "Enabled";
            }

            GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetDRLPHybridEnable(bDrLpHybEnabled %s)\n", v47);
            result = (*(*this + 1240))();
          }

          else
          {
            result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetDRLPHybridEnable failed configuration\n");
          }

          goto LABEL_274;
        }

        if (!strncmp("mcu_bypass:", v3, 0xBuLL))
        {
          __endptr = 0;
          v48 = strtoul(v3 + 11, &__endptr, 0);
          if (__endptr == v3 + 11 || *__endptr != 59)
          {
            result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetMcuBypassEnable failed configuration\n");
          }

          else
          {
            if (v48 >= 3)
            {
              v266 = "ulMcuBypass==0 || ulMcuBypass==1 || ulMcuBypass==2";
              DeviceFaultNotify("glmesrd_asic_config.cpp", 2314, "SetConfigParameters", "ulMcuBypass==0 || ulMcuBypass==1 || ulMcuBypass==2");
              v267 = 2314;
              goto LABEL_543;
            }

            v49 = "B1 Bypass Enabled";
            if (v48 == 1)
            {
              v49 = "BO Bypass Enabled";
            }

            if (!v48)
            {
              v49 = "Disabled";
            }

            GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetMcuBypassEnable(ucMcuBypass %s)\n", v49);
            result = (*(*this + 1248))();
          }
        }

        else
        {
          if (!strncmp("clock_adjust:", v3, 0xDuLL))
          {
            v294[0] = 0;
            __endptr = 0;
            if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 13), 0x3B, v294, &__endptr, v9))
            {
              v50 = "Disabled";
              if (v294[0])
              {
                v50 = "Enabled";
              }

              GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetClockAdjustEnable(bClkAdjust %s)\n", v50);
              result = (*(*this + 928))();
            }

            else
            {
              result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetClockAdjustEnable failed configuration\n");
            }

            goto LABEL_274;
          }

          if (!strncmp("forced_dc:", v3, 0xAuLL))
          {
            v51 = (v3 + 10);
            __endptr = 0;
            v52 = strtoul(v3 + 10, &__endptr, 0);
            if (__endptr == v3 + 10 || *__endptr != 44)
            {
              v286 = 0;
            }

            else
            {
              v286 = 1;
              v51 = __endptr;
            }

            v53 = v51 + 1;
            __endptr = 0;
            v54 = strtoul(v53, &__endptr, 0);
            if (__endptr == v53 || *__endptr != 44)
            {
              v55 = 0;
            }

            else
            {
              v55 = 1;
              v53 = __endptr;
            }

            v56 = v53 + 1;
            __endptr = 0;
            v57 = strtoul(v53 + 1, &__endptr, 0);
            if (__endptr == v56 || *__endptr != 44)
            {
              v58 = 0;
            }

            else
            {
              v58 = 1;
              v56 = __endptr;
            }

            __endptr = 0;
            v59 = strtoul(v56 + 1, &__endptr, 0);
            if (__endptr != v56 + 1 && *__endptr == 59 && (v286 & v55 & v58) != 0)
            {
              v60 = v59;
              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetForcedDutyCycle(DcStart %u ms, DcOn %u ms, DcOff %u ms, DcStop %u ms)\n", v52, v54, v57, v59);
              *(this + 1184) = 1;
              *(this + 297) = v52;
              *(this + 298) = v54;
              *(this + 299) = v57;
              *(this + 300) = v60;
            }

            else
            {
              result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetForcedDutyCycle incorrect\n");
            }

            goto LABEL_274;
          }

          if (!strncmp("sniff_ctrl:", v3, 0xBuLL))
          {
            __endptr = 0;
            v61 = strtoul(v3 + 11, &__endptr, 0);
            if (__endptr == v3 + 11 || *__endptr != 59 || (v62 = v61, v61 > 0x14))
            {
              result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetSniffCtrl incorrect\n");
            }

            else
            {
              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetSniffCtrl(%u)\n", v61);
              *(this + 1204) = 1;
              *(this + 1205) = v62;
            }
          }

          else
          {
            if (!strncmp("mi_ctrl:", v3, 8uLL))
            {
              v63 = (v3 + 8);
              __endptr = 0;
              v64 = strtoul(v3 + 8, &__endptr, 0);
              if (__endptr == v3 + 8 || *__endptr != 44)
              {
                v65 = 0;
              }

              else
              {
                v65 = 1;
                v63 = __endptr;
              }

              v66 = v63 + 1;
              __endptr = 0;
              v67 = strtoul(v63 + 1, &__endptr, 0);
              v68 = v67;
              v69 = __endptr != v66 && *__endptr == 59;
              if ((v65 & v69) == 1 && (v64 - 1) <= 9 && (v67 - 1) <= 9)
              {
                result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetMiIntervalCtrl(%u, %u)\n", v64, v67);
                *(this + 1206) = 1;
                *(this + 1207) = v64;
                *(this + 1208) = v68;
              }

              else
              {
                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetMiIntervalCtrl incorrect\n");
              }

              goto LABEL_274;
            }

            if (!strncmp("asic_version_ctrl:", v3, 0x12uLL))
            {
              __endptr = 0;
              v70 = strtoul(v3 + 18, &__endptr, 0);
              if (__endptr != v3 + 18 && *__endptr == 59)
              {
                v71 = v70;
                if (v70 > 822018053)
                {
                  if (v70 > 939720710)
                  {
                    if ((v70 - 1006829576) < 2 || v70 == 939720711)
                    {
                      goto LABEL_272;
                    }

                    v108 = 956235783;
                  }

                  else if (v70 <= 872611846)
                  {
                    if (v70 == 822018054)
                    {
                      goto LABEL_272;
                    }

                    v108 = 872480775;
                  }

                  else
                  {
                    if (v70 == 872611847 || v70 == 889126919)
                    {
                      goto LABEL_272;
                    }

                    v108 = 939589639;
                  }

                  if (v70 == v108)
                  {
                    goto LABEL_272;
                  }
                }

                else if ((v70 - 805502980) <= 5 && v70 != 805502983 || (v70 - 805371910) <= 3 && v70 != 805371911 || (v70 - 805437444) < 2)
                {
LABEL_272:
                  result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetAsicVersionCtrl(0x%X)\n", v70);
                  *(this + 1212) = 1;
                  *(this + 304) = v71;
                  goto LABEL_274;
                }

                v139 = (v70 & 0xF000FFFE) - 805306382;
                if (v139 <= 6 && ((1 << v139) & 0x55) != 0)
                {
                  goto LABEL_272;
                }
              }

              result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetAsicVersionCtrl incorrect\n");
            }

            else if (!strncmp("geoctrl:", v3, 8uLL))
            {
              v298 = 0;
              *v294 = 0;
              *v297 = 0;
              v296 = 0;
              v295 = 0;
              __endptr = 0;
              v72 = BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 8), 0x2C, &v298, &__endptr, v10);
              v74 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, v294, &__endptr, v73);
              v76 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, &v297[4], &__endptr, v75);
              v78 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, v297, &__endptr, v77);
              v80 = BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, &v296 + 1, &__endptr, v79);
              v81 = __endptr;
              if (BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x2C, &v296, &__endptr, v82))
              {
                if ((BlueFin::GlMeSrdAsicConfig::GetParam((__endptr + 1), 0x3B, &v295, &__endptr, v83) & 1) == 0)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v86 = BlueFin::GlMeSrdAsicConfig::GetParam((v81 + 1), 0x3B, &v296, &__endptr, v83);
                if ((v72 & v74 & v76 & v78 & v80) != 1 || !v86)
                {
LABEL_178:
                  result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetGeofenceControl incorrect\n");
                  goto LABEL_274;
                }
              }

              v87 = v298;
              v88 = v295;
              if (v295)
              {
                v89 = 84;
              }

              else
              {
                v89 = 70;
              }

              v90 = *v294;
              v92 = *v297;
              v91 = *&v297[4];
              v93 = v5;
              v95 = v296;
              v94 = HIDWORD(v296);
              v272 = v89;
              if (v298)
              {
                v96 = 84;
              }

              else
              {
                v96 = 70;
              }

              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetGeofenceControl(%c %d %d %d %d %d %c)\n", v96, *v294, *&v297[4], *v297, HIDWORD(v296), v296, v272);
              *(this + 1220) = 1;
              *(this + 1221) = v87;
              *(this + 306) = v90;
              *(this + 307) = v91;
              *(this + 308) = v92;
              *(this + 309) = v94;
              v5 = v93;
              *(this + 310) = v95;
              *(this + 1244) = v88;
            }

            else if (!strncmp("geoproxy:", v3, 9uLL))
            {
              __endptr = 0;
              v84 = strtoul(v3 + 9, &__endptr, 0);
              if (__endptr == v3 + 9 || *__endptr != 59)
              {
                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetTriggerfish incorrect\n");
              }

              else
              {
                v85 = v84;
                result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetTriggerfish(%u)\n", v84);
                *(this + 1248) = 1;
                *(this + 1249) = v85 == -1263743403;
              }
            }

            else
            {
              if (!strncmp("aagc_tggtpwr_4753:", v3, 0x12uLL))
              {
                v97 = (v3 + 18);
                __endptr = 0;
                v98 = strtoul(v3 + 18, &__endptr, 0);
                if (__endptr == v3 + 18 || *__endptr != 44)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = 1;
                  v97 = __endptr;
                }

                v100 = v97 + 1;
                __endptr = 0;
                v101 = strtoul(v97 + 1, &__endptr, 0);
                if (__endptr == v100 || *__endptr != 44)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = 1;
                  v100 = __endptr;
                }

                __endptr = 0;
                v103 = strtoul(v100 + 1, &__endptr, 0);
                if (__endptr != v100 + 1 && *__endptr == 59 && (v99 & v102) != 0)
                {
                  v104 = v103;
                  result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:Set4753AagcTarget(GPS %u, GLO %u, BDS %u)\n", v98, v101, v103);
                  *(this + 1252) = 1;
                  *(this + 314) = v98;
                  *(this + 315) = v101;
                  *(this + 316) = v104;
                }

                else
                {
                  result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:Set4753AagcTarget incorrect\n");
                }

                goto LABEL_274;
              }

              if (!strncmp("dagc_tggtpwr_4753:", v3, 0x12uLL))
              {
                v105 = (v3 + 18);
                __endptr = 0;
                v106 = strtoul(v3 + 18, &__endptr, 0);
                if (__endptr == v3 + 18 || *__endptr != 44)
                {
                  v107 = 0;
                }

                else
                {
                  v107 = 1;
                  v105 = __endptr;
                }

                v109 = v105 + 1;
                __endptr = 0;
                v110 = strtoul(v105 + 1, &__endptr, 0);
                if (__endptr == v109 || *__endptr != 44)
                {
                  v111 = 0;
                }

                else
                {
                  v111 = 1;
                  v109 = __endptr;
                }

                __endptr = 0;
                v112 = strtoul(v109 + 1, &__endptr, 0);
                if (__endptr != v109 + 1 && *__endptr == 59 && (v107 & v111) != 0)
                {
                  v113 = v112;
                  result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:Set4753DagcTarget(GPS %u, GLO %u, BDS %u)\n", v106, v110, v112);
                  *(this + 1268) = 1;
                  *(this + 318) = v106;
                  *(this + 319) = v110;
                  *(this + 320) = v113;
                }

                else
                {
                  result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:Set4753DagcTarget incorrect\n");
                }

                goto LABEL_274;
              }

              if (!strncmp("aagc_limit_4753:", v3, 0x10uLL))
              {
                v118 = (v3 + 16);
                __endptr = 0;
                v119 = strtoul(v3 + 16, &__endptr, 0);
                if (__endptr == v3 + 16 || *__endptr != 44)
                {
                  v120 = 0;
                }

                else
                {
                  v120 = 1;
                  v118 = __endptr;
                }

                v133 = v118 + 1;
                __endptr = 0;
                v134 = strtoul(v118 + 1, &__endptr, 0);
                if (__endptr == v133 || *__endptr != 44)
                {
                  v135 = 0;
                }

                else
                {
                  v135 = 1;
                  v133 = __endptr;
                }

                __endptr = 0;
                v136 = strtoul(v133 + 1, &__endptr, 0);
                if (__endptr != v133 + 1 && *__endptr == 59 && (v120 & v135) != 0)
                {
                  if (v119 >= 0xB)
                  {
                    v266 = "ulAagcGpsLimit <= 10";
                    DeviceFaultNotify("glmesrd_asic_config.cpp", 2624, "SetConfigParameters", "ulAagcGpsLimit <= 10");
                    v267 = 2624;
                    goto LABEL_543;
                  }

                  if (v134 >= 0x10)
                  {
                    v266 = "ulAagcGloLimit <= 15";
                    DeviceFaultNotify("glmesrd_asic_config.cpp", 2625, "SetConfigParameters", "ulAagcGloLimit <= 15");
                    v267 = 2625;
                    goto LABEL_543;
                  }

                  v137 = v136;
                  if (v136 >= 0x10)
                  {
                    v266 = "ulAagcBdsLimit <= 15";
                    DeviceFaultNotify("glmesrd_asic_config.cpp", 2626, "SetConfigParameters", "ulAagcBdsLimit <= 15");
                    v267 = 2626;
                    goto LABEL_543;
                  }

                  result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:Set4753AagcLimit(GPS %u, GLO %u, BDS %u)\n", v119, v134, v136);
                  *(this + 1284) = 1;
                  *(this + 322) = v119;
                  *(this + 323) = v134;
                  *(this + 324) = v137;
                }

                else
                {
                  result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:Set4753AagcLimit incorrect\n");
                }
              }

              else
              {
                if (!strncmp("aagc_fixed_att_4753:", v3, 0x14uLL) || !strncmp("aagc_fixed_att:", v3, 0xFuLL))
                {
                  v114 = strncmp("aagc_fixed_att:", v3, 0xFuLL);
                  v115 = 20;
                  if (!v114)
                  {
                    v115 = 15;
                  }

                  v116 = &v3[v115];
                  __endptr = 0;
                  v277 = strtoul(&v3[v115], &__endptr, 0);
                  if (__endptr == v116 || *__endptr != 44)
                  {
                    v117 = 0;
                  }

                  else
                  {
                    v117 = 1;
                    v116 = __endptr;
                  }

                  v121 = v116 + 1;
                  __endptr = 0;
                  v275 = strtoul(v121, &__endptr, 0);
                  if (__endptr == v121 || *__endptr != 44)
                  {
                    v287 = 0;
                  }

                  else
                  {
                    v287 = 1;
                    v121 = __endptr;
                  }

                  v122 = v121 + 1;
                  __endptr = 0;
                  v273 = strtoul(v122, &__endptr, 0);
                  if (__endptr == v122 || *__endptr != 44)
                  {
                    v279 = 0;
                  }

                  else
                  {
                    v279 = 1;
                    v122 = __endptr;
                  }

                  v123 = v122 + 1;
                  __endptr = 0;
                  v124 = strtoul(v123, &__endptr, 0);
                  if (__endptr == v123 || *__endptr != 44)
                  {
                    v125 = 0;
                  }

                  else
                  {
                    v125 = 1;
                    v123 = __endptr;
                  }

                  v126 = v5;
                  v127 = v123 + 1;
                  __endptr = 0;
                  v128 = strtoul(v127, &__endptr, 0);
                  if (__endptr == v127 || *__endptr != 44)
                  {
                    v129 = 0;
                  }

                  else
                  {
                    v129 = 1;
                    v127 = __endptr;
                  }

                  v130 = v127 + 1;
                  __endptr = 0;
                  v131 = strtoul(v127 + 1, &__endptr, 0);
                  v132 = __endptr != v130 && *__endptr == 59;
                  GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:Set4753AagcFixedAtt( ");
                  if ((v117 & v287) != 0)
                  {
                    *(this + 1300) = 1;
                    *(this + 326) = v277;
                    *(this + 327) = v275;
                    v270 = v275;
                    GlCustomLog(14, "GPS (%u, %u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "GPS (inv) ");
                  }

                  if ((v279 & v125) != 0)
                  {
                    *(this + 1301) = 1;
                    *(this + 328) = v273;
                    *(this + 329) = v124;
                    v270 = v124;
                    GlCustomLog(14, "GLO (%u, %u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "GLO (inv) ");
                  }

                  if ((v129 & v132) != 0)
                  {
                    *(this + 1302) = 1;
                    *(this + 330) = v128;
                    v138 = v131;
                    *(this + 331) = v131;
                    goto LABEL_266;
                  }

LABEL_322:
                  result = GlCustomLog(14, "BDS (inv))\n");
LABEL_323:
                  v5 = v126;
                  goto LABEL_274;
                }

                if (!strncmp("aagc_MNW:", v3, 9uLL))
                {
                  v145 = (v3 + 9);
                  __endptr = 0;
                  v146 = strtoul(v3 + 9, &__endptr, 0);
                  if (__endptr == v3 + 9 || *__endptr != 44)
                  {
                    v147 = 0;
                  }

                  else
                  {
                    v147 = 1;
                    v145 = __endptr;
                  }

                  v161 = v145 + 1;
                  __endptr = 0;
                  v162 = strtoul(v145 + 1, &__endptr, 0);
                  v163 = __endptr != v161 && *__endptr == 59;
                  GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetMNWAagcFixedGain ");
                  if (v147)
                  {
                    *(this + 1356) = 1;
                    *(this + 340) = v146;
                    GlCustomLog(14, "L1 (%u)");
                  }

                  else
                  {
                    GlCustomLog(14, "L1 (inv) ");
                  }

                  if (v163)
                  {
                    *(this + 1357) = 1;
                    *(this + 341) = v162;
                    result = GlCustomLog(14, "L5 (%u)\n", v162);
                    goto LABEL_274;
                  }

LABEL_357:
                  result = GlCustomLog(14, "L5 (inv)\n");
                  goto LABEL_274;
                }

                if (!strncmp("dagc_fixed_att_4753:", v3, 0x14uLL) || !strncmp("dagc_fixed_att:", v3, 0xFuLL))
                {
                  v142 = strncmp("dagc_fixed_att:", v3, 0xFuLL);
                  v143 = 20;
                  if (!v142)
                  {
                    v143 = 15;
                  }

                  v144 = &v3[v143];
                  __endptr = 0;
                  v278 = strtoul(&v3[v143], &__endptr, 0);
                  if (__endptr == v144 || *__endptr != 44)
                  {
                    v288 = 0;
                  }

                  else
                  {
                    v288 = 1;
                    v144 = __endptr;
                  }

                  v148 = v144 + 1;
                  __endptr = 0;
                  v276 = strtoul(v148, &__endptr, 0);
                  if (__endptr == v148 || *__endptr != 44)
                  {
                    v149 = 0;
                  }

                  else
                  {
                    v149 = 1;
                    v148 = __endptr;
                  }

                  v150 = v148 + 1;
                  __endptr = 0;
                  v151 = strtoul(v150, &__endptr, 0);
                  if (__endptr == v150 || *__endptr != 44)
                  {
                    v280 = 0;
                  }

                  else
                  {
                    v280 = 1;
                    v150 = __endptr;
                  }

                  v152 = v150 + 1;
                  __endptr = 0;
                  v153 = strtoul(v152, &__endptr, 0);
                  v274 = v151;
                  if (__endptr == v152 || *__endptr != 44)
                  {
                    v154 = 0;
                  }

                  else
                  {
                    v154 = 1;
                    v152 = __endptr;
                  }

                  v126 = v5;
                  v155 = v152 + 1;
                  __endptr = 0;
                  v156 = strtoul(v155, &__endptr, 0);
                  if (__endptr == v155 || *__endptr != 44)
                  {
                    v157 = 0;
                  }

                  else
                  {
                    v157 = 1;
                    v155 = __endptr;
                  }

                  v158 = v155 + 1;
                  __endptr = 0;
                  v159 = strtoul(v155 + 1, &__endptr, 0);
                  v160 = __endptr != v158 && *__endptr == 59;
                  GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:Set4753DagcFixedAtt( ");
                  if ((v288 & v149) != 0)
                  {
                    *(this + 1328) = 1;
                    *(this + 333) = v278;
                    *(this + 334) = v276;
                    v270 = v276;
                    GlCustomLog(14, "GPS (%u, %u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "GPS (inv) ");
                  }

                  if ((v280 & v154) != 0)
                  {
                    *(this + 1329) = 1;
                    *(this + 335) = v274;
                    *(this + 336) = v153;
                    v270 = v153;
                    GlCustomLog(14, "GLO (%u, %u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "GLO (inv) ");
                  }

                  if ((v157 & v160) == 0)
                  {
                    goto LABEL_322;
                  }

                  *(this + 1330) = 1;
                  *(this + 337) = v156;
                  v138 = v159;
                  *(this + 338) = v159;
LABEL_266:
                  v270 = v138;
                  result = GlCustomLog(14, "GLO (%u, %u))\n");
                  goto LABEL_323;
                }

                if (!strncmp("dagc_MNW:", v3, 9uLL))
                {
                  v164 = (v3 + 9);
                  __endptr = 0;
                  v165 = strtoul(v3 + 9, &__endptr, 0);
                  if (__endptr == v3 + 9 || *__endptr != 44)
                  {
                    v166 = 0;
                  }

                  else
                  {
                    v166 = 1;
                    v164 = __endptr;
                  }

                  v167 = v5;
                  v168 = v164 + 1;
                  __endptr = 0;
                  v289 = strtoul(v168, &__endptr, 0);
                  if (__endptr == v168 || *__endptr != 44)
                  {
                    v169 = 0;
                  }

                  else
                  {
                    v169 = 1;
                    v168 = __endptr;
                  }

                  v170 = v168 + 1;
                  __endptr = 0;
                  v171 = strtoul(v170, &__endptr, 0);
                  if (__endptr == v170 || *__endptr != 44)
                  {
                    v172 = 0;
                  }

                  else
                  {
                    v172 = 1;
                    v170 = __endptr;
                  }

                  v173 = v170 + 1;
                  __endptr = 0;
                  v174 = strtoul(v170 + 1, &__endptr, 0);
                  v175 = __endptr != v173 && *__endptr == 59;
                  GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:Set4753DagcFixedAtt ");
                  if (v166)
                  {
                    *(this + 1368) = 1;
                    *(this + 343) = v165;
                    GlCustomLog(14, "GPS (%u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "GPS (inv) ");
                  }

                  if (v169)
                  {
                    *(this + 1369) = 1;
                    *(this + 344) = v289;
                    GlCustomLog(14, "GLO (%u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "GLO (inv) ");
                  }

                  v5 = v167;
                  if (v172)
                  {
                    *(this + 1370) = 1;
                    *(this + 345) = v171;
                    GlCustomLog(14, "BDS (%u) ");
                  }

                  else
                  {
                    GlCustomLog(14, "BDS (inv)");
                  }

                  if (v175)
                  {
                    *(this + 1371) = 1;
                    *(this + 346) = v174;
                    result = GlCustomLog(14, "L5 (%u)\n", v174);
                    goto LABEL_274;
                  }

                  goto LABEL_357;
                }

                if (!strncmp("vdac_tp_MNW:", v3, 0xCuLL))
                {
                  v297[4] = 0;
                  v297[0] = 0;
                  BYTE4(v296) = 0;
                  LOBYTE(v296) = 0;
                  *v294 = 0;
                  __endptr = 0;
                  v176 = strtoul(v3 + 12, &__endptr, 0);
                  v177 = __endptr;
                  *v294 = __endptr;
                  if (__endptr == v3 + 12 || *__endptr != 44)
                  {
                    v178 = 0;
                    *v294 = v3 + 12;
                    v177 = (v3 + 12);
                  }

                  else
                  {
                    v178 = 1;
                  }

                  v179 = v177 + 1;
                  __endptr = 0;
                  v181 = strtoul(v177 + 1, &__endptr, 0);
                  v182 = __endptr;
                  *v294 = __endptr;
                  if (__endptr == v179 || *__endptr != 44)
                  {
                    v183 = 0;
                    *v294 = v179;
                    v182 = v179;
                  }

                  else
                  {
                    v183 = 1;
                  }

                  v184 = v178 & v183 & BlueFin::GlMeSrdAsicConfig::GetParam((v182 + 1), 0x2C, &v297[4], v294, v180);
                  v186 = BlueFin::GlMeSrdAsicConfig::GetParam((*v294 + 1), 0x2C, v297, v294, v185);
                  v188 = v184 & v186 & BlueFin::GlMeSrdAsicConfig::GetParam((*v294 + 1), 0x2C, &v296 + 4, v294, v187);
                  v190 = v188 & BlueFin::GlMeSrdAsicConfig::GetParam((*v294 + 1), 0x3B, &v296, v294, v189);
                  result = GlCustomLog(14, "MNW VDAC Select: bDecodedOK %d, VDAC_SEL: %d, Gain %d\n", v190, v176, v181);
                  if (v190 == 1)
                  {
                    if (v176 >= 0x19)
                    {
                      v266 = "bIsulTpId";
                      DeviceFaultNotify("glmesrd_asic_config.cpp", 3093, "SetConfigParameters", "bIsulTpId");
                      v267 = 3093;
                      goto LABEL_543;
                    }

                    if (v181 >= 8)
                    {
                      v266 = "ulGain <= 7";
                      DeviceFaultNotify("glmesrd_asic_config.cpp", 3094, "SetConfigParameters", "ulGain <= 7");
                      v267 = 3094;
                      goto LABEL_543;
                    }

                    result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:IfTestPoint(%u)\n", v176);
                    *(this + 1391) = 1;
                    *(this + 1392) = v176;
                    *(this + 349) = v181;
                    *(this + 1389) = v297[4];
                    *(this + 1390) = v297[0];
                    *(this + 1400) = BYTE4(v296);
                    *(this + 1401) = v296;
                  }
                }

                else if (!strncmp("lte_sel:", v3, 8uLL))
                {
                  __endptr = 0;
                  v191 = strtoul(v3 + 8, &__endptr, 0);
                  if (__endptr == v3 + 8 || *__endptr != 59)
                  {
                    result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:LteFilterSelection incorrect\n");
                  }

                  else
                  {
                    v192 = v191;
                    result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:LteFilterSelection(%u)\n", v191);
                    *(this + 1404) = 1;
                    *(this + 1405) = v192;
                  }
                }

                else
                {
                  if (!strncmp("srch_dump:", v3, 0xAuLL))
                  {
                    *v294 = 0;
                    __endptr = 0;
                    result = BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 10), ";", v294, &__endptr, v11);
                    if (result)
                    {
                      *(this + 550) = *v294;
                    }

                    goto LABEL_274;
                  }

                  if (!strncmp("tstgrid:", v3, 8uLL))
                  {
                    __endptr = 0;
                    *(this + 2104) = 0;
                    *v294 = 0;
                    v193 = *(v3 + 8);
                    v194 = v193 == 45;
                    if (v193 == 45)
                    {
                      v195 = (v3 + 9);
                    }

                    else
                    {
                      v195 = (v3 + 8);
                    }

                    result = BlueFin::GlMeSrdAsicConfig::GetParam(v195, ",;", v294, &__endptr, v12);
                    if (!result)
                    {
                      goto LABEL_274;
                    }

                    v197 = 0;
                    while (2)
                    {
                      if (v194)
                      {
                        v198 = -*v294;
                      }

                      else
                      {
                        v198 = *v294;
                      }

                      if (v198 == -1)
                      {
                        bzero(*(this + 257), ((4 * *(this + 2064) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
                        v197 = 1;
                        *(this + 2104) = 1;
                        GlCustomLog(14, "TSTGRID SV list to be controlled by PE\n");
                      }

                      else
                      {
                        if (v198 == 123456)
                        {
                          memset(*(this + 257), 255, 4 * *(this + 2064));
                          BlueFin::GlSvIdSet::setSvIdLimits(v282);
                          GlCustomLog(14, "Enabling TSTGRID for all SVs\n");
                          goto LABEL_386;
                        }

                        if (v197)
                        {
LABEL_386:
                          v197 = 1;
                        }

                        else
                        {
                          *(*v282 + 4 * (v198 >> 5)) |= 1 << v198;
                          GlCustomLog(14, "Enabling TSTGRID for SvId %d\n", v198);
                          v197 = 0;
                        }
                      }

                      *v294 = 0;
                      v194 = __endptr[1] == 45;
                      if (__endptr[1] == 45)
                      {
                        v199 = __endptr + 2;
                      }

                      else
                      {
                        v199 = __endptr + 1;
                      }

                      result = BlueFin::GlMeSrdAsicConfig::GetParam(v199, ",;", v294, &__endptr, v196);
                      if ((result & 1) == 0)
                      {
                        goto LABEL_274;
                      }

                      continue;
                    }
                  }

                  if (strncmp("iqdump_config:", v3, 0xEuLL))
                  {
                    if (!strncmp("tstgrid_config:", v3, 0xFuLL))
                    {
                      *v294 = 0;
                      __endptr = 0;
                      result = BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 15), ";", v294, &__endptr, v14);
                      if (result)
                      {
                        *(this + 1609) = v294[0];
                        result = GlCustomLog(14, "Enabling TSTGRID configuration %d\n");
                      }

                      goto LABEL_422;
                    }

                    if (!strncmp("tstgrid_iq_config:", v3, 0x12uLL))
                    {
                      *v294 = 0;
                      __endptr = 0;
                      result = BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 18), ";", v294, &__endptr, v15);
                      if (result)
                      {
                        *(this + 1610) = v294[0];
                        result = GlCustomLog(14, "Enabling TSTGRID IQ dump configuration %d\n");
                      }

                      goto LABEL_422;
                    }

                    if (!strncmp("tstgrid_iq_max_svs:", v3, 0x13uLL))
                    {
                      *v294 = 0;
                      __endptr = 0;
                      result = BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 19), ";", v294, &__endptr, v16);
                      if (result)
                      {
                        *(this + 1611) = v294[0];
                        result = GlCustomLog(14, "Max allowed TSTGRID IQ dump Svs %d\n");
                      }

                      goto LABEL_422;
                    }

                    if (!strncmp("poke_ar:", v3, 8uLL) || !strncmp("poke_dr:", v3, 8uLL))
                    {
                      *v294 = 0;
                      *&v297[4] = 0;
                      if (!strncmp("poke_ar:", v3, 8uLL))
                      {
                        v201 = 0;
                      }

                      else
                      {
                        v201 = -64;
                      }

                      __endptr = 0;
                      v202 = strtoul(v3 + 8, &__endptr, 0);
                      v203 = v202;
                      v204 = __endptr;
                      *v294 = __endptr;
                      if (__endptr == v3 + 8 || *__endptr != 44)
                      {
                        v205 = 0;
                        *v294 = v3 + 8;
                        v204 = (v3 + 8);
                      }

                      else
                      {
                        v205 = 1;
                      }

                      if (!v202)
                      {
LABEL_418:
                        if (v205 && *(this + 1968))
                        {
                          result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:poke_ar/poke_dr(Total %u \n", v203);
                          *(this + 1644) = 1;
                        }

                        else
                        {
                          result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:poke_ar/poke_dr incorrect\n", v268, v270);
                        }

                        goto LABEL_422;
                      }

                      v206 = 0;
                      v207 = *(this + 1968);
                      while (v207 < 0x28u)
                      {
                        v208 = v204 + 1;
                        __endptr = 0;
                        v210 = strtoul(v204 + 1, &__endptr, 0);
                        *v294 = __endptr;
                        if (__endptr == v208 || *__endptr != 61)
                        {
                          v211 = 0;
                          *v294 = v208;
                        }

                        else
                        {
                          v211 = 1;
                          v208 = __endptr;
                        }

                        v205 &= v211 & BlueFin::GlMeSrdAsicConfig::GetParam((v208 + 1), ",;", &v297[4], v294, v209);
                        v204 = *v294;
                        v212 = *(this + 1968);
                        v213 = this + 8 * v212 + 1648;
                        *v213 = v201;
                        *(v213 + 1) = v210;
                        *(v213 + 1) = *&v297[4];
                        v207 = v212 + 1;
                        *(this + 1968) = v207;
                        if (v203 <= ++v206)
                        {
                          goto LABEL_418;
                        }
                      }

                      v266 = "m_sArDrRegOverride.m_ucArDrRegsIndex < _DIM(m_sArDrRegOverride.m_sArDrRegs)";
                      DeviceFaultNotify("glmesrd_asic_config.cpp", 3268, "SetConfigParameters", "m_sArDrRegOverride.m_ucArDrRegsIndex < _DIM(m_sArDrRegOverride.m_sArDrRegs)");
                      v267 = 3268;
                      goto LABEL_543;
                    }

                    if (!strncmp("esw_poll:", v3, 9uLL))
                    {
                      *v294 = 0;
                      *&v297[4] = 0;
                      __endptr = 0;
                      v214 = strtoul(v3 + 9, &__endptr, 0);
                      v215 = __endptr;
                      *v294 = __endptr;
                      if (__endptr == v3 + 9 || *__endptr != 44)
                      {
                        v216 = 0;
                        *v294 = v3 + 9;
                        v215 = (v3 + 9);
                      }

                      else
                      {
                        v216 = 1;
                      }

                      v217 = v215 + 1;
                      __endptr = 0;
                      v218 = strtoul(v215 + 1, &__endptr, 0);
                      v220 = v218;
                      v221 = __endptr;
                      *v294 = __endptr;
                      if (__endptr == v217 || *__endptr != 44)
                      {
                        v222 = 0;
                        *v294 = v217;
                        v221 = v217;
                      }

                      else
                      {
                        v222 = 1;
                      }

                      if (v218 >= 9)
                      {
                        v266 = "ulNum <= _DIM(m_sEswPollConfig.addresses)";
                        DeviceFaultNotify("glmesrd_asic_config.cpp", 3312, "SetConfigParameters", "ulNum <= _DIM(m_sEswPollConfig.addresses)");
                        v267 = 3312;
                        goto LABEL_543;
                      }

                      v223 = v216 & v222;
                      *(this + 1972) = v214;
                      *(this + 1973) = v218;
                      if (v218)
                      {
                        v224 = 0;
                        do
                        {
                          v223 &= BlueFin::GlMeSrdAsicConfig::GetParam((v221 + 1), ",;", &v297[4], v294, v219);
                          v221 = *v294;
                          *(this + v224++ + 494) = *&v297[4];
                        }

                        while (v220 > v224);
                      }

                      if (v223 && *(this + 1973))
                      {
                        result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:esw_poll(Total %u \n");
                      }

                      else
                      {
                        result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:esw_poll incorrect\n", v268, v270);
                      }

                      goto LABEL_422;
                    }

                    if (!strncmp("5hz_sub_trk:", v3, 0xCuLL))
                    {
                      *(this + 1606) = 1;
                      result = GlCustomLog(14, "Enablig 5Hz Sub-Trk for all SvIds\n", v268, v270);
                      goto LABEL_422;
                    }

                    if (!strncmp("5hz_sub_trk_min:", v3, 0x10uLL))
                    {
                      *(this + 1607) = 1;
                      result = GlCustomLog(14, "Enablig 5Hz Sub-Trk Min for all SvIds\n", v268, v270);
                      goto LABEL_422;
                    }

                    v17 = *v3 == 0x775F676E6F727473 && *(v3 + 2) == 980115813;
                    if (v17)
                    {
                      __endptr = 0;
                      v225 = strtoul(v3 + 12, &__endptr, 0);
                      v226 = __endptr;
                      if (__endptr != v3 + 12 && *__endptr == 44)
                      {
                        (*(*this + 880))(this, v225);
                        __endptr = 0;
                        v227 = strtoul(v226 + 1, &__endptr, 0);
                        if (__endptr != v226 + 1 && *__endptr == 59)
                        {
                          result = (*(*this + 896))(this, v227);
                          goto LABEL_422;
                        }
                      }
                    }

                    else
                    {
                      if (!strncmp("adr_mode:", v3, 9uLL))
                      {
                        __endptr = 0;
                        result = strtoul(v3 + 9, &__endptr, 0);
                        if (__endptr != v3 + 9 && *__endptr == 59)
                        {
                          *(this + 2128) = result;
                        }

                        goto LABEL_422;
                      }

                      if (strncmp("rfxbar_ctrl:", v3, 0xCuLL))
                      {
                        if (!strncmp("async_fpga:", v3, 0xBuLL))
                        {
                          v294[0] = 1;
                          __endptr = 0;
                          if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 11), 0x3B, v294, &__endptr, v18))
                          {
                            v232 = "Synchronous";
                            if (v294[0])
                            {
                              v232 = "Async";
                            }

                            GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetAsyncFpga(bAsyncFpga %s)\n", v232);
                            result = (*(*this + 944))();
                          }

                          else
                          {
                            result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetAsyncFpga failed configuration\n", v268, v270);
                          }

                          goto LABEL_422;
                        }

                        if (!strncmp("glns_16mhz:", v3, 0xBuLL))
                        {
                          v294[0] = 1;
                          __endptr = 0;
                          if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 11), 0x3B, v294, &__endptr, v19))
                          {
                            v233 = "Glns33MHz";
                            if (v294[0])
                            {
                              v233 = "Glns16MHz";
                            }

                            GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetGlns16Mhz(bGlns16Mhz %s)\n", v233);
                            result = (*(*this + 952))();
                          }

                          else
                          {
                            result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetGlns16Mhz failed configuration\n", v268, v270);
                          }

                          goto LABEL_422;
                        }

                        if (!strncmp("mtrk_xcorr_overide:", v3, 0x13uLL))
                        {
                          __endptr = 0;
                          v234 = strtoul(v3 + 19, &__endptr, 0);
                          if (__endptr != v3 + 19 && *__endptr == 59)
                          {
                            v235 = v234;
                            result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetMtrkXcorrOverride(%u)\n", v234);
                            if (v235 < 2)
                            {
                              *(this + 2144) = v235 == 1;
                              goto LABEL_422;
                            }

                            v266 = "ulMode == 0 || ulMode == 1";
                            DeviceFaultNotify("glmesrd_asic_config.cpp", 3501, "SetConfigParameters", "ulMode == 0 || ulMode == 1");
                            v267 = 3501;
                            goto LABEL_543;
                          }
                        }

                        else
                        {
                          if (strncmp("mtrk_mode:", v3, 0xAuLL))
                          {
                            if (!strncmp("cop_mode:", v3, 9uLL))
                            {
                              __endptr = 0;
                              v238 = strtoul(v3 + 9, &__endptr, 0);
                              if (__endptr == v3 + 9 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetCopMode failed configuration\n", v268, v270);
                                goto LABEL_422;
                              }

                              v239 = v238;
                              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetCopMode(%u)\n", v238);
                              if (v239 < 3)
                              {
                                *(this + 538) = v239;
                                goto LABEL_422;
                              }

                              v266 = "ulMode < GLME_NUM_COP_MODES";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3543, "SetConfigParameters", "ulMode < GLME_NUM_COP_MODES");
                              v267 = 3543;
                            }

                            else if (!strncmp("dsp_mode:", v3, 9uLL))
                            {
                              __endptr = 0;
                              v240 = strtoul(v3 + 9, &__endptr, 0);
                              if (__endptr == v3 + 9 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetDspMode failed configuration\n", v268, v270);
                                goto LABEL_422;
                              }

                              v241 = v240;
                              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetDspMode(%u)\n", v240);
                              if (v241 < 4)
                              {
                                *(this + 539) = v241;
                                goto LABEL_422;
                              }

                              v266 = "ulMode < GLME_NUM_DSP_MODES";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3567, "SetConfigParameters", "ulMode < GLME_NUM_DSP_MODES");
                              v267 = 3567;
                            }

                            else if (!strncmp("cpu_active_mode:", v3, 0x10uLL))
                            {
                              __endptr = 0;
                              v242 = strtoul(v3 + 16, &__endptr, 0);
                              if (__endptr == v3 + 16 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetCpuActiveMode failed configuration\n", v268, v270);
                                goto LABEL_422;
                              }

                              v243 = v242;
                              GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetCpuActiveMode(%u)\n", v242);
                              if (v243 < 5)
                              {
                                result = (*(*this + 1168))(this, v243);
                                goto LABEL_422;
                              }

                              v266 = "ulMode < GLME_NUM_CPU_ACTIVE_MODES";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3588, "SetConfigParameters", "ulMode < GLME_NUM_CPU_ACTIVE_MODES");
                              v267 = 3588;
                            }

                            else if (!strncmp("cpu_idle_mode:", v3, 0xEuLL))
                            {
                              __endptr = 0;
                              v244 = strtoul(v3 + 14, &__endptr, 0);
                              if (__endptr == v3 + 14 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetCpuIdleMode failed configuration\n", v268, v270);
                                goto LABEL_422;
                              }

                              v245 = v244;
                              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetCpuIdleMode(%u)\n", v244);
                              if (v245 < 4)
                              {
                                *(this + 541) = v245;
                                goto LABEL_422;
                              }

                              v266 = "ulMode < GLME_NUM_CPU_IDLE_MODES";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3609, "SetConfigParameters", "ulMode < GLME_NUM_CPU_IDLE_MODES");
                              v267 = 3609;
                            }

                            else if (!strncmp("dc_cpu_idle_mode:", v3, 0x11uLL))
                            {
                              __endptr = 0;
                              v246 = strtoul(v3 + 17, &__endptr, 0);
                              if (__endptr == v3 + 17 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetDcCpuIdleMode failed configuration\n", v268, v270);
                                goto LABEL_422;
                              }

                              v247 = v246;
                              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetDcCpuIdleMode(%u)\n", v246);
                              if (v247 < 4)
                              {
                                *(this + 542) = v247;
                                goto LABEL_422;
                              }

                              v266 = "ulMode < GLME_NUM_CPU_IDLE_MODES";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3630, "SetConfigParameters", "ulMode < GLME_NUM_CPU_IDLE_MODES");
                              v267 = 3630;
                            }

                            else if (sscanf(v3, "dbg_search_limit:%d;", v281) == 1)
                            {
                              if (*v281 == 25 || *v281 == 50)
                              {
                                v271 = *v281;
                                result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:%s%d\n");
LABEL_422:
                                v5 = "dc_ctrl:";
                                goto LABEL_274;
                              }

                              v266 = "m_ulDbgSearchLimit == 25 || m_ulDbgSearchLimit == 50";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3640, "SetConfigParameters", "m_ulDbgSearchLimit == 25 || m_ulDbgSearchLimit == 50");
                              v267 = 3640;
                            }

                            else if (!strncmp("MNW_front_end_emu:", v3, 0x12uLL))
                            {
                              __endptr = 0;
                              v249 = strtoul(v3 + 18, &__endptr, 0);
                              if (__endptr == v3 + 18 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetMNWFrontEndEmu failed configuration\n", v269, v270);
                                goto LABEL_422;
                              }

                              v250 = v249;
                              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetMNWFrontEndEmu(%u)\n", v249);
                              if (v250 < 2)
                              {
                                *(this + 2180) = v250 == 1;
                                goto LABEL_422;
                              }

                              v266 = "ulSaturnas <= 1";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3657, "SetConfigParameters", "ulSaturnas <= 1");
                              v267 = 3657;
                            }

                            else
                            {
                              if (!strncmp("radio_perf:", v3, 0xBuLL))
                              {
                                v251 = (v3 + 11);
                                __endptr = 0;
                                v252 = strtoul(v3 + 11, &__endptr, 0);
                                if (__endptr == v3 + 11 || *__endptr != 44)
                                {
                                  v253 = 0;
                                }

                                else
                                {
                                  v253 = 1;
                                  v251 = __endptr;
                                }

                                v254 = v251 + 1;
                                __endptr = 0;
                                v255 = strtoul(v251 + 1, &__endptr, 0);
                                if (__endptr == v254 || *__endptr != 44)
                                {
                                  v256 = 0;
                                }

                                else
                                {
                                  v256 = 1;
                                  v254 = __endptr;
                                }

                                __endptr = 0;
                                v257 = strtoul(v254 + 1, &__endptr, 0);
                                if (__endptr != v254 + 1 && *__endptr == 59 && (v253 & v256) != 0)
                                {
                                  v258 = v257;
                                  BlueFin::GlMeSrdAsicConfig::SetL1PerfMode(this, v252);
                                  GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetL1PerfMode(ulL1PerfMode %d)\n", v252);
                                  BlueFin::GlMeSrdAsicConfig::SetL5DrPerfMode(this, v255);
                                  GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetL5DrPerfMode(ulL5DrPerfMode %d)\n", v255);
                                  BlueFin::GlMeSrdAsicConfig::SetL5ArPerfMode(this, v258);
                                  result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetL5ArPerfMode(ulL5ArPerfMode %d)\n", v258);
                                  *(this + 2197) = 1;
                                }

                                else
                                {
                                  result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:Set Radio Performance failed configuration\n", v269, v270);
                                }

                                goto LABEL_422;
                              }

                              if (strncmp("srch_mode:", v3, 0xAuLL))
                              {
                                if (!strncmp("l5_only:", v3, 8uLL))
                                {
                                  v294[0] = 0;
                                  __endptr = 0;
                                  if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 8), 0x3B, v294, &__endptr, v248))
                                  {
                                    *(this + 2198) = v294[0];
                                    result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetL5Precedence(%s)\n");
                                  }

                                  else
                                  {
                                    result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetL5Precendence failed configuration\n", v269, v270);
                                  }
                                }

                                else
                                {
                                  result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:Param Index %d unknown\n");
                                }

                                goto LABEL_422;
                              }

                              __endptr = 0;
                              v259 = strtoul(v3 + 10, &__endptr, 0);
                              if (__endptr == v3 + 10 || *__endptr != 59)
                              {
                                result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetSrchMode failed configuration\n", v269, v270);
                                goto LABEL_422;
                              }

                              v260 = v259;
                              result = GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetSrchMode(%u)\n", v259);
                              if (v260 < 2)
                              {
                                *(this + 543) = v260;
                                goto LABEL_422;
                              }

                              v266 = "ulMode < GLME_NUM_SRCH_MODES";
                              DeviceFaultNotify("glmesrd_asic_config.cpp", 3712, "SetConfigParameters", "ulMode < GLME_NUM_SRCH_MODES");
                              v267 = 3712;
                            }

LABEL_543:
                            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v267, v266);
                          }

                          __endptr = 0;
                          v236 = strtoul(v3 + 10, &__endptr, 0);
                          if (__endptr != v3 + 10 && *__endptr == 59)
                          {
                            v237 = v236;
                            GlCustomLog(14, "GlMeSrdAsicConfig::SetConfigParameters:SetMtrkMode(%u)\n", v236);
                            if (v237 < 4)
                            {
                              result = (*(*this + 1160))(this, v237);
                              goto LABEL_422;
                            }

                            v266 = "ulMode < GLME_NUM_MTRK_MODES";
                            DeviceFaultNotify("glmesrd_asic_config.cpp", 3522, "SetConfigParameters", "ulMode < GLME_NUM_MTRK_MODES");
                            v267 = 3522;
                            goto LABEL_543;
                          }
                        }

                        result = GlCustomLog(12, "GlMeSrdAsicConfig::SetConfigParameters:SetMtrkMode failed configuration\n", v268, v270);
                        goto LABEL_422;
                      }

                      v228 = 0;
                      v229 = 0;
                      __endptr = &v292;
                      v291 = 3;
                      v292 = 0;
                      v293 = 0;
                      do
                      {
                        v230 = v3[v228 + 12];
                        if ((v230 - 97) < 0x1A)
                        {
                          LOBYTE(v230) = v230 - 32;
                        }

                        v231 = memchr("15RBEN", v230, 7uLL);
                        if (!v231)
                        {
                          break;
                        }

                        *(&v292 + ((v231 - "15RBEN") >> 5)) |= 1 << (v231 - "15RBEN");
                        v229 |= v228++ << dword_298A33DB4[(v231 - "15RBEN")];
                      }

                      while (v228 != 6);
                      result = BlueFin::GlSetBase::Cnt(&__endptr);
                      if (result == 6)
                      {
                        *(this + 535) = v229;
                        goto LABEL_422;
                      }
                    }

                    result = GlCustomLog(12, "Failed to parse %s\n");
                    goto LABEL_422;
                  }

                  *v294 = 0;
                  __endptr = 0;
                  if (BlueFin::GlMeSrdAsicConfig::GetParam((v3 + 14), ";", v294, &__endptr, v13))
                  {
                    v200 = v294[0];
                    *(this + 1608) = v294[0];
                  }

                  else
                  {
                    v200 = *(this + 1608);
                  }

                  result = GlCustomLog(14, "Enabling IQ dump configuration %d\n", v200);
                }
              }
            }
          }
        }
      }

      do
      {
LABEL_274:
        v17 = v3 == v4;
        v141 = *v3++;
        v140 = v141;
      }

      while (!v17 && v140 != 59);
    }

    while (v3 < v4);
  }

  if (*(this + 1610) == 2)
  {
    v261 = *(this + 257);
    if (*v261)
    {
      return GlCustomLog(14, "TIQ dump feature enabled in GLL\n");
    }

    v262 = *(this + 2064);
    if (v262 >= 2)
    {
      v263 = v262 - 1;
      v264 = v261 + 1;
      do
      {
        if (*v264++)
        {
          return GlCustomLog(14, "TIQ dump feature enabled in GLL\n");
        }
      }

      while (--v263);
    }

    if (*(this + 2104) == 1)
    {
      return GlCustomLog(14, "TIQ dump feature enabled in GLL\n");
    }
  }

  return result;
}