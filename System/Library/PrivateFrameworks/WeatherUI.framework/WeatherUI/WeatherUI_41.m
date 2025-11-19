uint64_t sub_1BCC877BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherConditionBackgroundConfig.hasTextureUpdates(from:hasLocationChanged:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = *(v1 + 1629);
  v5 = *(v1 + 1637);
  v6 = *(v1 + 1645);
  v7 = v1[240];
  OUTLINED_FUNCTION_14_23(v24);
  v8 = sub_1BCBFA9E4(v24);
  v9.i32[0] = 1;
  v10.i32[0] = v8;
  v11 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v10, v9), 0), xmmword_1BCE3ADB0, v25);
  v12 = v26;
  if (v8 == 1)
  {
    v12 = 0;
  }

  if (v4 == 2)
  {
    if (v11.u8[0] != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v23[0] = v4;
    v23[1] = v5;
    v23[2] = v6;
    if (v11.u8[0] == 2)
    {
      goto LABEL_11;
    }

    *v16 = v11;
    *&v16[16] = v12;
    if ((static WeatherConditionBackgroundConfig.Layers.== infix(_:_:)(v23, v16) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_14_23(v23);
  v13 = OUTLINED_FUNCTION_38_1(v23);
  if (!v14)
  {
    if (v7 != v23[240])
    {
LABEL_11:
      v13 = 1;
      return v13 & 1;
    }

    memcpy(v16, v1, sizeof(v16));
    v17 = v4;
    v18 = v5;
    v19 = v6;
    memcpy(v20, v1 + 1653, sizeof(v20));
    v21 = v7;
    memcpy(v22, v1 + 241, sizeof(v22));
    v13 = WeatherConditionBackgroundConfig.shouldRandomizeClouds(lastConfig:forceRandomization:)(v3);
  }

  return v13 & 1;
}

double WeatherConditionBackgroundConfig.backgroundMask.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE3E030;
  *(v2 + 32) = sub_1BCE1CAA0();
  *(v2 + 40) = sub_1BCE1CAB0();
  MEMORY[0x1BFB2F5B0](v2);
  sub_1BCE1B730();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

void sub_1BCC87AA0(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCC88268();
  v4 = v3;
  sub_1BCC88268();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC3E1000000000000;
  *(a1 + 80) = xmmword_1BCE3F410;
  *(a1 + 96) = xmmword_1BCE5CCC0;
  *(a1 + 112) = 0x3E7AE1483E4CCCCCLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE46C90;
  *(a1 + 176) = 1165623296;
  *(a1 + 184) = 0x3E428F5C3DB851ECLL;
  *(a1 + 192) = xmmword_1BCE465E0;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 3189922816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3ECCCCCDLL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 5;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x401999993F000000;
  *(a1 + 1104) = 0x40A0000040800000;
  *(a1 + 1112) = 1090099610;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE465F0;
  *(a1 + 1216) = xmmword_1BCE4E670;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE7A1D0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE7AD60;
  *(a1 + 1272) = 4;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(a1 + 1644) = 16842753;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4110000040C00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE4E680;
  *(a1 + 1696) = xmmword_1BCE46620;
  *(a1 + 1712) = xmmword_1BCE46630;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3EDEB85247927C00;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE46CC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E1EB8523D75C28FLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4059999A4039999ALL;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1043542836;
  *(a1 + 2200) = 15;
  *(a1 + 2208) = 0x41C800003FC00000;
  *(a1 + 2224) = xmmword_1BCE5CCD0;
  *(a1 + 2240) = xmmword_1BCE5CCE0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCC88268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3CE40;
  *(v0 + 64) = 0x42C8000044160000;
  *(v0 + 80) = xmmword_1BCE46670;
  *(v0 + 96) = xmmword_1BCE46680;
  *(v0 + 112) = xmmword_1BCE46690;
  *(v0 + 128) = xmmword_1BCE466A0;
  *(v0 + 3024) = xmmword_1BCE46850;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 5072) = xmmword_1BCE40730;
  *(v0 + 6288) = xmmword_1BCE40730;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE46940;
  *(v0 + 6576) = xmmword_1BCE46940;
  *(v0 + 5376) = xmmword_1BCE46950;
  *(v0 + 6592) = xmmword_1BCE46950;
  *(v0 + 5392) = xmmword_1BCE46960;
  *(v0 + 6608) = xmmword_1BCE46960;
  *(v0 + 5408) = xmmword_1BCE46970;
  *(v0 + 6624) = xmmword_1BCE46970;
  *(v0 + 5424) = xmmword_1BCE46980;
  *(v0 + 6640) = xmmword_1BCE46980;
  *(v0 + 5440) = xmmword_1BCE41640;
  *(v0 + 6656) = xmmword_1BCE41640;
  *(v0 + 5472) = xmmword_1BCE46990;
  *(v0 + 6688) = xmmword_1BCE46990;
  v1 = vdupq_n_s64(0x3FED51B200000000uLL);
  *(v0 + 5872) = v1;
  *(v0 + 7088) = v1;
  *(v0 + 5888) = xmmword_1BCE469A0;
  *(v0 + 7104) = xmmword_1BCE469A0;
  *(v0 + 5904) = xmmword_1BCE469B0;
  *(v0 + 7120) = xmmword_1BCE469B0;
  *(v0 + 3712) = 1152319488;
  *(v0 + 7360) = 1152319488;
  *(v0 + 3728) = xmmword_1BCE406D0;
  *(v0 + 7376) = xmmword_1BCE406D0;
  *(v0 + 3744) = xmmword_1BCE406E0;
  *(v0 + 7392) = xmmword_1BCE406E0;
  *(v0 + 3760) = xmmword_1BCE46870;
  *(v0 + 4976) = xmmword_1BCE46870;
  *(v0 + 6192) = xmmword_1BCE46870;
  *(v0 + 7408) = xmmword_1BCE46870;
  *(v0 + 3776) = xmmword_1BCE3DC00;
  *(v0 + 4992) = xmmword_1BCE3DC00;
  *(v0 + 6208) = xmmword_1BCE3DC00;
  *(v0 + 7424) = xmmword_1BCE3DC00;
  *(v0 + 3792) = xmmword_1BCE406F0;
  *(v0 + 7440) = xmmword_1BCE406F0;
  *(v0 + 3808) = xmmword_1BCE40700;
  *(v0 + 7456) = xmmword_1BCE40700;
  *(v0 + 3824) = xmmword_1BCE46880;
  *(v0 + 5040) = xmmword_1BCE46880;
  *(v0 + 6256) = xmmword_1BCE46880;
  *(v0 + 7472) = xmmword_1BCE46880;
  *(v0 + 3840) = xmmword_1BCE3CBA0;
  *(v0 + 7488) = xmmword_1BCE3CBA0;
  *(v0 + 3856) = xmmword_1BCE46890;
  *(v0 + 7504) = xmmword_1BCE46890;
  *(v0 + 3872) = xmmword_1BCE40450;
  *(v0 + 7520) = xmmword_1BCE40450;
  *(v0 + 3936) = xmmword_1BCE468A0;
  *(v0 + 7584) = xmmword_1BCE468A0;
  *(v0 + 3984) = xmmword_1BCE40760;
  *(v0 + 5200) = xmmword_1BCE40760;
  *(v0 + 6416) = xmmword_1BCE40760;
  *(v0 + 7632) = xmmword_1BCE40760;
  *(v0 + 4000) = xmmword_1BCE40770;
  *(v0 + 5216) = xmmword_1BCE40770;
  *(v0 + 6432) = xmmword_1BCE40770;
  *(v0 + 7648) = xmmword_1BCE40770;
  *(v0 + 4016) = xmmword_1BCE40780;
  *(v0 + 5232) = xmmword_1BCE40780;
  *(v0 + 6448) = xmmword_1BCE40780;
  *(v0 + 7664) = xmmword_1BCE40780;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE468B0;
  *(v0 + 7792) = xmmword_1BCE468B0;
  *(v0 + 4160) = xmmword_1BCE468C0;
  *(v0 + 7808) = xmmword_1BCE468C0;
  *(v0 + 4176) = xmmword_1BCE468D0;
  *(v0 + 7824) = xmmword_1BCE468D0;
  *(v0 + 4192) = xmmword_1BCE468E0;
  *(v0 + 7840) = xmmword_1BCE468E0;
  *(v0 + 4208) = xmmword_1BCE468F0;
  *(v0 + 7856) = xmmword_1BCE468F0;
  *(v0 + 4224) = xmmword_1BCE46900;
  *(v0 + 7872) = xmmword_1BCE46900;
  *(v0 + 4240) = xmmword_1BCE46910;
  *(v0 + 5456) = xmmword_1BCE46910;
  *(v0 + 6672) = xmmword_1BCE46910;
  *(v0 + 7888) = xmmword_1BCE46910;
  *(v0 + 4256) = xmmword_1BCE46920;
  *(v0 + 7904) = xmmword_1BCE46920;
  *(v0 + 4688) = xmmword_1BCE46930;
  *(v0 + 8336) = xmmword_1BCE46930;
  *(v0 + 2496) = 0x4316000044610000;
  *(v0 + 8576) = 0x4316000044610000;
  *(v0 + 2512) = xmmword_1BCE40590;
  *(v0 + 8592) = xmmword_1BCE40590;
  *(v0 + 2528) = xmmword_1BCE405A0;
  *(v0 + 8608) = xmmword_1BCE405A0;
  *(v0 + 2544) = xmmword_1BCE405B0;
  *(v0 + 8624) = xmmword_1BCE405B0;
  *(v0 + 2560) = xmmword_1BCE405C0;
  *(v0 + 8640) = xmmword_1BCE405C0;
  *(v0 + 2608) = xmmword_1BCE467B0;
  *(v0 + 8688) = xmmword_1BCE467B0;
  *(v0 + 2624) = xmmword_1BCE467C0;
  *(v0 + 8704) = xmmword_1BCE467C0;
  *(v0 + 2640) = xmmword_1BCE405F0;
  *(v0 + 8720) = xmmword_1BCE405F0;
  *(v0 + 2656) = xmmword_1BCE40600;
  *(v0 + 5088) = xmmword_1BCE40600;
  *(v0 + 6304) = xmmword_1BCE40600;
  *(v0 + 8736) = xmmword_1BCE40600;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 7536) = xmmword_1BCE3E780;
  *(v0 + 8752) = xmmword_1BCE3E780;
  *(v0 + 2704) = xmmword_1BCE467D0;
  *(v0 + 3920) = xmmword_1BCE467D0;
  *(v0 + 5136) = xmmword_1BCE467D0;
  *(v0 + 6352) = xmmword_1BCE467D0;
  *(v0 + 7568) = xmmword_1BCE467D0;
  *(v0 + 8784) = xmmword_1BCE467D0;
  *(v0 + 2720) = xmmword_1BCE467E0;
  *(v0 + 5152) = xmmword_1BCE467E0;
  *(v0 + 6368) = xmmword_1BCE467E0;
  *(v0 + 8800) = xmmword_1BCE467E0;
  *v1.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1.i64[0];
  *(v0 + 8896) = v1.i64[0];
  *(v0 + 2928) = xmmword_1BCE467F0;
  *(v0 + 9008) = xmmword_1BCE467F0;
  *(v0 + 2944) = xmmword_1BCE46800;
  *(v0 + 9024) = xmmword_1BCE46800;
  *(v0 + 2960) = xmmword_1BCE46810;
  *(v0 + 9040) = xmmword_1BCE46810;
  *(v0 + 2976) = xmmword_1BCE46820;
  *(v0 + 9056) = xmmword_1BCE46820;
  *(v0 + 2992) = xmmword_1BCE46830;
  *(v0 + 9072) = xmmword_1BCE46830;
  *(v0 + 3008) = xmmword_1BCE46840;
  *(v0 + 9088) = xmmword_1BCE46840;
  *(v0 + 9104) = xmmword_1BCE469C0;
  *(v0 + 3040) = xmmword_1BCE42F00;
  *(v0 + 9120) = xmmword_1BCE42F00;
  *(v0 + 3472) = xmmword_1BCE46860;
  *(v0 + 9552) = xmmword_1BCE46860;
  *(v0 + 10320) = xmmword_1BCE469D0;
  *(v0 + 10736) = xmmword_1BCE469E0;
  *(v0 + 10752) = xmmword_1BCE469F0;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 1264) = xmmword_1BCE3CE40;
  *(v0 + 2480) = xmmword_1BCE3CE40;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 7344) = xmmword_1BCE3CE40;
  *(v0 + 8560) = xmmword_1BCE3CE40;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 1280) = 0x42C8000044160000;
  *(v0 + 9792) = 0x42C8000044160000;
  *(v0 + 11008) = 0x42C8000044160000;
  *(v0 + 176) = xmmword_1BCE466B0;
  *(v0 + 192) = xmmword_1BCE466C0;
  *(v0 + 1296) = xmmword_1BCE46670;
  *(v0 + 9808) = xmmword_1BCE46670;
  *(v0 + 11024) = xmmword_1BCE46670;
  *(v0 + 1312) = xmmword_1BCE46680;
  *(v0 + 9824) = xmmword_1BCE46680;
  *(v0 + 11040) = xmmword_1BCE46680;
  *(v0 + 208) = xmmword_1BCE466D0;
  *(v0 + 224) = xmmword_1BCE466E0;
  *(v0 + 1328) = xmmword_1BCE46690;
  *(v0 + 9840) = xmmword_1BCE46690;
  *(v0 + 11056) = xmmword_1BCE46690;
  *(v0 + 1344) = xmmword_1BCE466A0;
  *(v0 + 9856) = xmmword_1BCE466A0;
  *(v0 + 11072) = xmmword_1BCE466A0;
  *(v0 + 240) = xmmword_1BCE466F0;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1360) = xmmword_1BCE3EEF0;
  *(v0 + 2576) = xmmword_1BCE3EEF0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 8656) = xmmword_1BCE3EEF0;
  *(v0 + 9872) = xmmword_1BCE3EEF0;
  *(v0 + 11088) = xmmword_1BCE3EEF0;
  *(v0 + 1376) = xmmword_1BCE3EF00;
  *(v0 + 2592) = xmmword_1BCE3EF00;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 8672) = xmmword_1BCE3EF00;
  *(v0 + 9888) = xmmword_1BCE3EF00;
  *(v0 + 11104) = xmmword_1BCE3EF00;
  *(v0 + 272) = xmmword_1BCE40440;
  *(v0 + 288) = xmmword_1BCE46700;
  *(v0 + 1392) = xmmword_1BCE466B0;
  *(v0 + 9904) = xmmword_1BCE466B0;
  *(v0 + 11120) = xmmword_1BCE466B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1408) = xmmword_1BCE466C0;
  *(v0 + 9920) = xmmword_1BCE466C0;
  *(v0 + 11136) = xmmword_1BCE466C0;
  *(v0 + 1424) = xmmword_1BCE466D0;
  *(v0 + 9936) = xmmword_1BCE466D0;
  *(v0 + 11152) = xmmword_1BCE466D0;
  *(v0 + 1440) = xmmword_1BCE466E0;
  *(v0 + 9952) = xmmword_1BCE466E0;
  *(v0 + 11168) = xmmword_1BCE466E0;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 1456) = xmmword_1BCE466F0;
  *(v0 + 9968) = xmmword_1BCE466F0;
  *(v0 + 11184) = xmmword_1BCE466F0;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  *(v0 + 1488) = xmmword_1BCE40440;
  *(v0 + 10000) = xmmword_1BCE40440;
  *(v0 + 11216) = xmmword_1BCE40440;
  *(v0 + 1504) = xmmword_1BCE46700;
  *(v0 + 10016) = xmmword_1BCE46700;
  *(v0 + 11232) = xmmword_1BCE46700;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 8352) = xmmword_1BCE3A880;
  *(v0 + 8368) = result;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 8272) = result;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = result;
  *(v0 + 8320) = xmmword_1BCE3DAE0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = result;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 368) = xmmword_1BCE404A0;
  *(v0 + 7920) = result;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 7720) = 1065353216;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = result;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 7600) = result;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1584) = xmmword_1BCE404A0;
  *(v0 + 2800) = xmmword_1BCE404A0;
  *(v0 + 8880) = xmmword_1BCE404A0;
  *(v0 + 10096) = xmmword_1BCE404A0;
  *(v0 + 11312) = xmmword_1BCE404A0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 7337) = *v12;
  *(v0 + 7368) = 1061997773;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v12[3];
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7152) = result;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = result;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 7056) = result;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7136) = xmmword_1BCE3A880;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 6864) = result;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = result;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6704) = result;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 6544) = result;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 496) = xmmword_1BCE46710;
  *(v0 + 512) = xmmword_1BCE46720;
  *(v0 + 1712) = xmmword_1BCE46710;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 1065353216;
  *(v0 + 10224) = xmmword_1BCE46710;
  *(v0 + 11440) = xmmword_1BCE46710;
  *(v0 + 1728) = xmmword_1BCE46720;
  *(v0 + 10240) = xmmword_1BCE46720;
  *(v0 + 11456) = xmmword_1BCE46720;
  *(v0 + 528) = xmmword_1BCE46730;
  *(v0 + 544) = xmmword_1BCE46740;
  *(v0 + 6384) = result;
  *(v0 + 1744) = xmmword_1BCE46730;
  *(v0 + 10256) = xmmword_1BCE46730;
  *(v0 + 11472) = xmmword_1BCE46730;
  *(v0 + 1760) = xmmword_1BCE46740;
  *(v0 + 10272) = xmmword_1BCE46740;
  *(v0 + 11488) = xmmword_1BCE46740;
  *(v0 + 560) = xmmword_1BCE46750;
  *(v0 + 576) = xmmword_1BCE46760;
  *(v0 + 6272) = result;
  *(v0 + 1776) = xmmword_1BCE46750;
  *(v0 + 10288) = xmmword_1BCE46750;
  *(v0 + 11504) = xmmword_1BCE46750;
  *(v0 + 6121) = *v11;
  *(v0 + 6152) = 1061997773;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 1792) = xmmword_1BCE46760;
  *(v0 + 5936) = result;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = result;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 10304) = xmmword_1BCE46760;
  *(v0 + 11520) = xmmword_1BCE46760;
  *(v0 + 1808) = xmmword_1BCE46770;
  *(v0 + 5840) = result;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5920) = xmmword_1BCE3A880;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5648) = result;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = result;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 11536) = xmmword_1BCE46770;
  *(v0 + 592) = xmmword_1BCE46770;
  *(v0 + 608) = xmmword_1BCE46780;
  *(v0 + 5488) = result;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1824) = xmmword_1BCE46780;
  *(v0 + 10336) = xmmword_1BCE46780;
  *(v0 + 11552) = xmmword_1BCE46780;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 5328) = result;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1065353216;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 11952) = xmmword_1BCE46A00;
  *(v0 + 2224) = xmmword_1BCE46790;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 1008) = xmmword_1BCE46790;
  *(v0 + 1024) = xmmword_1BCE40080;
  *(v0 + 2240) = xmmword_1BCE40080;
  *(v0 + 5168) = result;
  *(v0 + 11968) = xmmword_1BCE40080;
  *(v0 + 1040) = xmmword_1BCE467A0;
  *(v0 + 2256) = xmmword_1BCE467A0;
  *(v0 + 10768) = xmmword_1BCE467A0;
  *(v0 + 11984) = xmmword_1BCE467A0;
  *(v0 + 5056) = result;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1056) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2272) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3488) = xmmword_1BCE3A880;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v10;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4720) = result;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = result;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4272) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = result;
  *(v0 + 4672) = xmmword_1BCE3DAE0;
  *(v0 + 4704) = xmmword_1BCE3A880;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 4368) = result;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9568) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10784) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 12000) = xmmword_1BCE3A880;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4112) = result;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3952) = result;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3689) = *v9;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3720) = 1061997773;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3536) = result;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3056) = result;
  *(v0 + 3088) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = result;
  *(v0 + 3104) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3120) = result;
  *(v0 + 3152) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9536) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 304) = result;
  *(v0 + 2896) = result;
  *(v0 + 464) = result;
  *(v0 + 624) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 2736) = result;
  *(v0 + 400) = result;
  *(v0 + 656) = result;
  *(v0 + 752) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1056964608;
  *(v0 + 1072) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 2288) = result;
  *(v0 + 2320) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 2192) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 1257) = *v7;
  *(v0 + 2000) = result;
  *(v0 + 2032) = result;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 1288) = 1053609165;
  *(v0 + 1904) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 1520) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1680) = result;
  *(v0 + 8400) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8816) = result;
  *(v0 + 8912) = result;
  *(v0 + 8976) = result;
  *(v0 + 9136) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9232) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9488) = result;
  *(v0 + 9520) = result;
  *(v0 + 9584) = result;
  *(v0 + 9616) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 10032) = result;
  *(v0 + 10128) = result;
  *(v0 + 10192) = result;
  *(v0 + 10352) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10448) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10704) = result;
  *(v0 + 10800) = result;
  *(v0 + 10832) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11248) = result;
  *(v0 + 11344) = result;
  *(v0 + 11408) = result;
  *(v0 + 11568) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11664) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11920) = result;
  *(v0 + 12016) = result;
  *(v0 + 12048) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 1065353216;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1053609165;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v13;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v13[3];
  *(v0 + 8584) = 1056964608;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1065353216;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v14;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v14[3];
  *(v0 + 9800) = 1053609165;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 1065353216;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v15;
  *(v0 + 10988) = *&v15[3];
  *(v0 + 11016) = 1053609165;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 1065353216;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCC89374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCE199D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v10 = *(sub_1BC981768(a2, a3) + 16);

  if (v10)
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BCE3E050;
    sub_1BCE196D0();
    sub_1BCE19620();
    v13 = sub_1BCE19960();
  }

  else
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BCE3E050;
    sub_1BCE196D0();
    sub_1BCE19620();
    String.beginsWithFirstArgument.getter();
    v13 = sub_1BCE19920();
  }

  v16 = v13;
  v17 = v14;
  (*(v7 + 8))(v9, v6);
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1BC9804E0();
  *(v12 + 32) = v16;
  *(v12 + 40) = v17;
  v18 = sub_1BCE1D250();

  return v18;
}

uint64_t sub_1BCC89700()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t type metadata accessor for AirQualityCircularLabelView()
{
  result = qword_1EDA18E30;
  if (!qword_1EDA18E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BCC897B4()
{
  sub_1BCC89820();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BCC89820()
{
  if (!qword_1EDA17D20)
  {
    type metadata accessor for AirQualityComplicationViewModel();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA17D20);
    }
  }
}

double sub_1BCC89894@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDA17DA0 != -1)
  {
    swift_once();
  }

  if (byte_1EDA2EF18 == 1)
  {
    sub_1BCC89AB8();
    sub_1BCE1CBA0();
    sub_1BCC89BB0();
  }

  else
  {
    sub_1BCE1BD30();
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_1EDA1EFB8;
    v3 = sub_1BCE1C680();
    v5 = v4;
    v7 = v6;
    *&v9 = sub_1BCC89BB0();
    sub_1BCE1C5D0();
    sub_1BC998CF4(v3, v5, v7 & 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DC0);
  sub_1BCB6B554();
  sub_1BCE1BF60();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_1BCC89AB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB48);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  sub_1BCC89C84(v0, &v9 - v2);
  v4 = type metadata accessor for AirQualityComplicationViewModel();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1BCC89CF4(v3);
LABEL_4:

    return 0x6964656D2E697161;
  }

  v5 = sub_1BCE19E70();
  v7 = v6;
  sub_1BCC89D5C(v3);
  if (!v7)
  {
    goto LABEL_4;
  }

  return v5;
}

uint64_t sub_1BCC89BB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB48);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  sub_1BCC89C84(v0, &v9 - v2);
  v4 = type metadata accessor for AirQualityComplicationViewModel();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1BCC89CF4(v3);
    return sub_1BCE1CAB0();
  }

  else
  {
    v6 = sub_1BCE19E60();
    v5 = Color.init(hex:)(v6, v7);
    sub_1BCC89D5C(v3);
  }

  return v5;
}

uint64_t sub_1BCC89C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCC89CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCC89D5C(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityComplicationViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SevereWeatherComplicationDataStatus()
{
  result = qword_1EBD0BB50;
  if (!qword_1EBD0BB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC89E2C()
{
  v0 = type metadata accessor for SevereWeatherComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t DayWeather.dayPartForecast(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v51 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A748);
  OUTLINED_FUNCTION_14(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v52 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_0();
  v48 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB60);
  OUTLINED_FUNCTION_14(v23);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v54 = v2;
  sub_1BCE19480();
  if (__swift_getEnumTagSinglePayload(v3, 1, v25) == 1)
  {
    sub_1BC94C0B4(v3, &qword_1EBD0BB60);
    return sub_1BCE194B0();
  }

  v47 = a2;
  v32 = *(v27 + 32);
  v32(v31, v3, v25);
  sub_1BCC8A2D8(v53, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    (*(v27 + 8))(v31, v25);
    sub_1BC94C0B4(v17, &qword_1EBD0A748);
    return sub_1BCE194B0();
  }

  v44 = v32;
  v45 = v27 + 32;
  v43 = v27;
  v34 = *(v52 + 32);
  v35 = v48;
  v46 = v18;
  v34(v48, v17, v18);
  sub_1BCE197B0();
  sub_1BCE19290();
  v36 = *(v49 + 8);
  v37 = v10;
  v53 = v13;
  v38 = v10;
  v39 = v51;
  v36(v37, v51);
  v40 = v50;
  sub_1BCE194F0();
  sub_1BCE19290();
  v36(v40, v39);
  v41 = v53;
  v42 = sub_1BCE19010();
  v36(v38, v39);
  v36(v41, v39);
  (*(v52 + 8))(v35, v46);
  if ((v42 & 1) == 0)
  {
    (*(v43 + 8))(v31, v25);
    return sub_1BCE194B0();
  }

  return v44(v47, v31, v25);
}

uint64_t sub_1BCC8A2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WindComplicationHourlyViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t WindComplicationHourlyViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t WindComplicationHourlyViewModel.angle.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for WindComplicationHourlyViewModel();
  return sub_1BC952B1C(v1 + *(v2 + 20), v0, &qword_1EBD0B8C8);
}

uint64_t type metadata accessor for WindComplicationHourlyViewModel()
{
  result = qword_1EDA17CB8;
  if (!qword_1EDA17CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WindComplicationHourlyViewModel.speed.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for WindComplicationHourlyViewModel();
  return sub_1BC952B1C(v1 + *(v2 + 28), v0, &qword_1EBD07898);
}

uint64_t WindComplicationHourlyViewModel.time.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for WindComplicationHourlyViewModel() + 36);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t WindComplicationHourlyViewModel.timeZone.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for WindComplicationHourlyViewModel() + 40);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t WindComplicationHourlyViewModel.init(angle:direction:speed:now:time:timeZone:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1BCE19080();
  v14 = type metadata accessor for WindComplicationHourlyViewModel();
  sub_1BC9643D8(a1, a7 + v14[5], &qword_1EBD0B8C8);
  *(a7 + v14[6]) = a2;
  sub_1BC9643D8(a3, a7 + v14[7], &qword_1EBD07898);
  *(a7 + v14[8]) = a4;
  v15 = v14[9];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v16 + 32))(a7 + v15, a5);
  v17 = v14[10];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v19 = *(v18 + 32);

  return v19(a7 + v17, a6);
}

uint64_t static WindComplicationHourlyViewModel.make(now:time:timeZone:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WindComplicationHourlyViewModel();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07B60);
  OUTLINED_FUNCTION_17_24(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_17_24(v10);
  v11 = v8[9];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v12 + 16))(a4 + v11, a2);
  v13 = v8[10];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v14 + 16))(a4 + v13, a3);
  result = sub_1BCE19080();
  *(a4 + v8[6]) = 16;
  *(a4 + v8[8]) = a1;
  return result;
}

uint64_t static WindComplicationHourlyViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB68);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07B60);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8C8);
  OUTLINED_FUNCTION_14(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB70);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  if ((sub_1BCE19070() & 1) == 0)
  {
    goto LABEL_12;
  }

  v60 = v6;
  v61 = v4;
  v59 = type metadata accessor for WindComplicationHourlyViewModel();
  v28 = *(v59 + 20);
  v29 = *(v24 + 48);
  v62 = a1;
  sub_1BC952B1C(a1 + v28, v27, &qword_1EBD0B8C8);
  v30 = a2 + v28;
  v31 = a2;
  sub_1BC952B1C(v30, &v27[v29], &qword_1EBD0B8C8);
  OUTLINED_FUNCTION_8_0(v27);
  if (v32)
  {
    OUTLINED_FUNCTION_8_0(&v27[v29]);
    if (v32)
    {
      sub_1BC94C05C(v27, &qword_1EBD0B8C8);
      goto LABEL_15;
    }

LABEL_10:
    v33 = &qword_1EBD0BB70;
    v34 = v27;
LABEL_11:
    sub_1BC94C05C(v34, v33);
    goto LABEL_12;
  }

  sub_1BC952B1C(v27, v23, &qword_1EBD0B8C8);
  OUTLINED_FUNCTION_8_0(&v27[v29]);
  if (v32)
  {
    (*(v16 + 8))(v23, v14);
    goto LABEL_10;
  }

  (*(v16 + 32))(v19, &v27[v29], v14);
  OUTLINED_FUNCTION_9_38(&qword_1EBD0BB80, &qword_1EBD07B60);
  v37 = sub_1BCE1D210();
  v38 = *(v16 + 8);
  v38(v19, v14);
  v38(v23, v14);
  sub_1BC94C05C(v27, &qword_1EBD0B8C8);
  if ((v37 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v39 = v59;
  v40 = *(v59 + 24);
  v41 = v62;
  v42 = *(a2 + v40);
  if (*(v62 + v40) == 16)
  {
    v44 = v60;
    v43 = v61;
    if (v42 != 16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v44 = v60;
    v43 = v61;
    if (v42 == 16)
    {
      goto LABEL_12;
    }

    v45 = sub_1BCE19FB0();
    v47 = v46;
    if (v45 == sub_1BCE19FB0() && v47 == v48)
    {
    }

    else
    {
      v50 = sub_1BCE1E090();

      if ((v50 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v51 = v39[7];
  v52 = v66;
  v53 = *(v65 + 48);
  sub_1BC952B1C(v41 + v51, v66, &qword_1EBD07898);
  sub_1BC952B1C(v31 + v51, v52 + v53, &qword_1EBD07898);
  OUTLINED_FUNCTION_15_13(v52);
  if (!v32)
  {
    v54 = v64;
    sub_1BC952B1C(v52, v64, &qword_1EBD07898);
    OUTLINED_FUNCTION_15_13(v52 + v53);
    if (!v55)
    {
      v56 = v63;
      (*(v44 + 32))(v63, v52 + v53, v43);
      OUTLINED_FUNCTION_9_38(&qword_1EBD0BB78, &qword_1EBD07860);
      v57 = sub_1BCE1D210();
      v58 = *(v44 + 8);
      v58(v56, v43);
      v58(v54, v43);
      sub_1BC94C05C(v52, &qword_1EBD07898);
      if ((v57 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

    (*(v44 + 8))(v54, v43);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_15_13(v52 + v53);
  if (!v32)
  {
LABEL_34:
    v33 = &qword_1EBD0BB68;
    v34 = v52;
    goto LABEL_11;
  }

  sub_1BC94C05C(v52, &qword_1EBD07898);
LABEL_36:
  if (*(v41 + v39[8]) == *(v31 + v39[8]) && (sub_1BCE19010() & 1) != 0)
  {
    v35 = MEMORY[0x1BFB2BB80](v41 + v39[10], v31 + v39[10]);
    return v35 & 1;
  }

LABEL_12:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1BCC8AE98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C676E61 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7827310 && a2 == 0xE300000000000000;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701669236 && a2 == 0xE400000000000000;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BCE1E090();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BCC8B0C0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C676E61;
      break;
    case 2:
      result = 0x6F69746365726964;
      break;
    case 3:
      result = 0x6465657073;
      break;
    case 4:
      result = 7827310;
      break;
    case 5:
      result = 1701669236;
      break;
    case 6:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCC8B174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC8AE98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCC8B19C(uint64_t a1)
{
  v2 = sub_1BCC8B560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCC8B1D8(uint64_t a1)
{
  v2 = sub_1BCC8B560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WindComplicationHourlyViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB88);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCC8B560();
  sub_1BCE1E170();
  v27 = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_2_66();
  sub_1BCC8BF98(v11, v12);
  OUTLINED_FUNCTION_4_27();
  sub_1BCE1E020();
  if (!v2)
  {
    v19 = type metadata accessor for WindComplicationHourlyViewModel();
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07B60);
    OUTLINED_FUNCTION_6_45(&qword_1EBD0BB98);
    OUTLINED_FUNCTION_15_29();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFC0();
    v25 = *(v3 + *(v19 + 24));
    v24 = 2;
    sub_1BCC8B5B4();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFC0();
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
    OUTLINED_FUNCTION_6_45(&qword_1EBD0BBA8);
    OUTLINED_FUNCTION_15_29();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFC0();
    v22 = 4;
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFE0();
    v21 = 5;
    sub_1BCE19060();
    OUTLINED_FUNCTION_5_47();
    sub_1BCC8BF98(v13, v14);
    OUTLINED_FUNCTION_15_29();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1E020();
    v20 = 6;
    sub_1BCE19470();
    OUTLINED_FUNCTION_4_49();
    sub_1BCC8BF98(v15, v16);
    OUTLINED_FUNCTION_15_29();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1E020();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1BCC8B560()
{
  result = qword_1EBD0BB90;
  if (!qword_1EBD0BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BB90);
  }

  return result;
}

unint64_t sub_1BCC8B5B4()
{
  result = qword_1EBD0BBA0;
  if (!qword_1EBD0BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BBA0);
  }

  return result;
}

uint64_t WindComplicationHourlyViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v59 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v54 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v56 = v6 - v5;
  v65 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v60 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v57 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  OUTLINED_FUNCTION_14(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8C8);
  OUTLINED_FUNCTION_14(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v64 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BBB0);
  OUTLINED_FUNCTION_2();
  v58 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  v67 = type metadata accessor for WindComplicationHourlyViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1BCC8B560();
  v63 = v28;
  v34 = v66;
  sub_1BCE1E160();
  v62 = v19;
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v66 = v18;
  v53 = v14;
  v35 = v59;
  v76 = 0;
  OUTLINED_FUNCTION_2_66();
  sub_1BCC8BF98(v36, v37);
  OUTLINED_FUNCTION_12_38();
  sub_1BCE1DF70();
  (*(v64 + 32))(v32, v24, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07B60);
  v75 = 1;
  OUTLINED_FUNCTION_3_61();
  sub_1BC957184(v38, &qword_1EBD07B60);
  v39 = v66;
  sub_1BCE1DF10();
  v40 = v67;
  sub_1BC9643D8(v39, v32 + *(v67 + 20), &qword_1EBD0B8C8);
  v73 = 2;
  sub_1BCC8BDBC();
  OUTLINED_FUNCTION_12_38();
  sub_1BCE1DF10();
  *(v32 + v40[6]) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v72 = 3;
  OUTLINED_FUNCTION_3_61();
  sub_1BC957184(v41, &qword_1EBD07860);
  v42 = v53;
  OUTLINED_FUNCTION_12_38();
  sub_1BCE1DF10();
  sub_1BC9643D8(v42, v32 + v40[7], &qword_1EBD07898);
  v71 = 4;
  OUTLINED_FUNCTION_12_38();
  *(v32 + v40[8]) = sub_1BCE1DF30() & 1;
  v70 = 5;
  OUTLINED_FUNCTION_5_47();
  sub_1BCC8BF98(v43, v44);
  v45 = v57;
  v46 = v65;
  OUTLINED_FUNCTION_12_38();
  sub_1BCE1DF70();
  (*(v60 + 32))(v32 + v40[9], v45, v46);
  v69 = 6;
  OUTLINED_FUNCTION_4_49();
  sub_1BCC8BF98(v47, v48);
  v49 = v56;
  OUTLINED_FUNCTION_12_38();
  sub_1BCE1DF70();
  v50 = OUTLINED_FUNCTION_13_33();
  v51(v50);
  (*(v54 + 32))(v32 + v40[10], v49, v35);
  sub_1BCA09094(v32, v55);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return sub_1BCC8BE10(v32);
}

unint64_t sub_1BCC8BDBC()
{
  result = qword_1EBD0BBC0;
  if (!qword_1EBD0BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BBC0);
  }

  return result;
}

uint64_t sub_1BCC8BE10(uint64_t a1)
{
  v2 = type metadata accessor for WindComplicationHourlyViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCC8BE7C(void *a1)
{
  a1[1] = sub_1BCC8BF98(&qword_1EBD0BBD0, type metadata accessor for WindComplicationHourlyViewModel);
  a1[2] = sub_1BCC8BF98(&qword_1EBD0BBD8, type metadata accessor for WindComplicationHourlyViewModel);
  a1[3] = sub_1BCC8BF98(&qword_1EBD0BBE0, type metadata accessor for WindComplicationHourlyViewModel);
  result = sub_1BCC8BF98(&qword_1EBD07AF0, type metadata accessor for WindComplicationHourlyViewModel);
  a1[4] = result;
  return result;
}

uint64_t sub_1BCC8BF98(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BCC8C040()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    sub_1BC978A08(319, &qword_1EDA1BFD0, &qword_1EBD07B60);
    if (v1 <= 0x3F)
    {
      sub_1BCC8C15C();
      if (v2 <= 0x3F)
      {
        sub_1BC978A08(319, &qword_1EDA1BFC8, &qword_1EBD07860);
        if (v3 <= 0x3F)
        {
          sub_1BCE19060();
          if (v4 <= 0x3F)
          {
            sub_1BCE19470();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BCC8C15C()
{
  if (!qword_1EDA1BEB0)
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BEB0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WindComplicationHourlyViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCC8C28C()
{
  result = qword_1EBD0BBE8;
  if (!qword_1EBD0BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BBE8);
  }

  return result;
}

unint64_t sub_1BCC8C2E4()
{
  result = qword_1EBD0BBF0;
  if (!qword_1EBD0BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BBF0);
  }

  return result;
}

unint64_t sub_1BCC8C33C()
{
  result = qword_1EBD0BBF8;
  if (!qword_1EBD0BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BBF8);
  }

  return result;
}

double sub_1BCC8C390@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE41A20;
  *(v2 + 656) = xmmword_1BCE5D100;
  *(v2 + 672) = xmmword_1BCE5D110;
  *(v2 + 688) = xmmword_1BCE5D120;
  *(v2 + 704) = xmmword_1BCE5D130;
  *(v2 + 720) = xmmword_1BCE5D140;
  *(v2 + 896) = xmmword_1BCE5D150;
  *(v2 + 912) = xmmword_1BCE5D160;
  *(v2 + 928) = xmmword_1BCE5D170;
  *(v2 + 944) = xmmword_1BCE5D180;
  *(v2 + 960) = xmmword_1BCE5D190;
  *(v2 + 1008) = xmmword_1BCE5D1A0;
  *(v2 + 1024) = xmmword_1BCE5D1B0;
  *(v2 + 1040) = xmmword_1BCE5D1C0;
  *(v2 + 1056) = xmmword_1BCE5D1D0;
  *(v2 + 1072) = xmmword_1BCE5D1E0;
  *(v2 + 1088) = xmmword_1BCE5D1F0;
  *(v2 + 1136) = xmmword_1BCE5D200;
  *(v2 + 1152) = xmmword_1BCE5D210;
  *(v2 + 1168) = xmmword_1BCE5D220;
  *(v2 + 1184) = xmmword_1BCE5D230;
  *(v2 + 1200) = xmmword_1BCE5D240;
  *(v2 + 1248) = xmmword_1BCE5D250;
  *(v2 + 1264) = xmmword_1BCE5D260;
  *(v2 + 1280) = xmmword_1BCE5D270;
  *(v2 + 1296) = xmmword_1BCE5D280;
  *(v2 + 1312) = xmmword_1BCE5D290;
  *(v2 + 1328) = xmmword_1BCE5D2A0;
  *(v2 + 1488) = xmmword_1BCE5D300;
  *(v2 + 1504) = xmmword_1BCE5D310;
  *(v2 + 1520) = xmmword_1BCE5D320;
  *(v2 + 1536) = xmmword_1BCE5D330;
  *(v2 + 1552) = xmmword_1BCE5D340;
  *(v2 + 1568) = xmmword_1BCE5D350;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1376) = xmmword_1BCE5D2B0;
  *(v2 + 1616) = xmmword_1BCE5D2B0;
  *(v2 + 1392) = xmmword_1BCE5D2C0;
  *(v2 + 1632) = xmmword_1BCE5D2C0;
  *(v2 + 1408) = xmmword_1BCE5D2D0;
  *(v2 + 1648) = xmmword_1BCE5D2D0;
  *(v2 + 1424) = xmmword_1BCE5D2E0;
  *(v2 + 1664) = xmmword_1BCE5D2E0;
  *(v2 + 1440) = xmmword_1BCE5D2F0;
  *(v2 + 1680) = xmmword_1BCE5D2F0;
  *(v2 + 1728) = xmmword_1BCE5D360;
  *(v2 + 1744) = xmmword_1BCE5D370;
  *(v2 + 1760) = xmmword_1BCE5D380;
  *(v2 + 1776) = xmmword_1BCE5D390;
  *(v2 + 1792) = xmmword_1BCE5D3A0;
  *(v2 + 1808) = xmmword_1BCE5D3B0;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1856) = xmmword_1BCE5D3C0;
  *(v2 + 1872) = xmmword_1BCE5D3D0;
  *(v2 + 1888) = xmmword_1BCE5D3E0;
  *(v2 + 1904) = xmmword_1BCE5D3F0;
  *(v2 + 1920) = xmmword_1BCE5D400;
  *(v2 + 1968) = xmmword_1BCE5D410;
  *(v2 + 1984) = xmmword_1BCE5D420;
  *(v2 + 2000) = xmmword_1BCE5D430;
  *(v2 + 2016) = xmmword_1BCE5D440;
  *(v2 + 2032) = xmmword_1BCE5D450;
  *(v2 + 2048) = xmmword_1BCE5D460;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 2096) = xmmword_1BCE5D470;
  *(v2 + 2112) = xmmword_1BCE5D480;
  *(v2 + 2128) = xmmword_1BCE5D490;
  *(v2 + 2144) = xmmword_1BCE5D4A0;
  *(v2 + 2160) = xmmword_1BCE5D4B0;
  *(v2 + 768) = xmmword_1BCE41FB0;
  *(v2 + 784) = xmmword_1BCE41FC0;
  *(v2 + 2208) = xmmword_1BCE41FB0;
  *(v2 + 2224) = xmmword_1BCE41FC0;
  *(v2 + 800) = xmmword_1BCE41FD0;
  *(v2 + 816) = xmmword_1BCE41FE0;
  *(v2 + 2240) = xmmword_1BCE41FD0;
  *(v2 + 2256) = xmmword_1BCE41FE0;
  *(v2 + 2272) = xmmword_1BCE41FF0;
  *(v2 + 832) = xmmword_1BCE41FF0;
  *(v2 + 848) = xmmword_1BCE42000;
  *(v2 + 2288) = xmmword_1BCE42000;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2336) = xmmword_1BCE42010;
  *(v2 + 2352) = xmmword_1BCE42020;
  *(v2 + 2368) = xmmword_1BCE42030;
  *(v2 + 2384) = xmmword_1BCE42040;
  *(v2 + 2400) = xmmword_1BCE42050;
  *(v2 + 528) = xmmword_1BCE41B00;
  *(v2 + 544) = xmmword_1BCE41B10;
  *(v2 + 2448) = xmmword_1BCE41B00;
  *(v2 + 2464) = xmmword_1BCE41B10;
  *(v2 + 560) = xmmword_1BCE41B20;
  *(v2 + 576) = xmmword_1BCE41B30;
  *(v2 + 2480) = xmmword_1BCE41B20;
  *(v2 + 2496) = xmmword_1BCE41B30;
  *(v2 + 2512) = xmmword_1BCE41B40;
  *(v2 + 592) = xmmword_1BCE41B40;
  *(v2 + 608) = xmmword_1BCE41B50;
  *(v2 + 384) = xmmword_1BCE41AA0;
  *(v2 + 2528) = xmmword_1BCE41B50;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  *(v2 + 416) = xmmword_1BCE5D0B0;
  *(v2 + 432) = xmmword_1BCE5D0C0;
  *(v2 + 2576) = xmmword_1BCE5D0B0;
  *(v2 + 2592) = xmmword_1BCE5D0C0;
  *(v2 + 2608) = xmmword_1BCE5D0D0;
  *(v2 + 448) = xmmword_1BCE5D0D0;
  *(v2 + 464) = xmmword_1BCE5D0E0;
  *(v2 + 2624) = xmmword_1BCE5D0E0;
  *(v2 + 144) = xmmword_1BCE41A90;
  *(v2 + 2784) = xmmword_1BCE41A90;
  *(v2 + 2816) = xmmword_1BCE420B0;
  *(v2 + 2832) = xmmword_1BCE420C0;
  *(v2 + 2848) = xmmword_1BCE420D0;
  *(v2 + 2864) = xmmword_1BCE420E0;
  *(v2 + 2880) = xmmword_1BCE420F0;
  *(v2 + 2640) = xmmword_1BCE5D0F0;
  *(v2 + 480) = xmmword_1BCE5D0F0;
  *(v2 + 496) = xmmword_1BCE3C8C0;
  *(v2 + 736) = xmmword_1BCE3C8C0;
  *(v2 + 976) = xmmword_1BCE3C8C0;
  *(v2 + 1216) = xmmword_1BCE3C8C0;
  *(v2 + 1456) = xmmword_1BCE3C8C0;
  *(v2 + 1696) = xmmword_1BCE3C8C0;
  *(v2 + 1936) = xmmword_1BCE3C8C0;
  *(v2 + 2176) = xmmword_1BCE3C8C0;
  *(v2 + 2416) = xmmword_1BCE3C8C0;
  *(v2 + 2656) = xmmword_1BCE3C8C0;
  *(v2 + 2896) = xmmword_1BCE3C8C0;
  *(v2 + 48) = xmmword_1BCE5D0A0;
  *(v2 + 64) = xmmword_1BCE41A40;
  *(v2 + 168) = xmmword_1BCE5D0A0;
  *(v2 + 2688) = xmmword_1BCE5D0A0;
  *(v2 + 2928) = xmmword_1BCE5D0A0;
  *(v2 + 288) = xmmword_1BCE5D0A0;
  *(v2 + 304) = xmmword_1BCE41A40;
  *(v2 + 184) = xmmword_1BCE41A40;
  *(v2 + 2704) = xmmword_1BCE41A40;
  *(v2 + 2944) = xmmword_1BCE41A40;
  *(v2 + 80) = xmmword_1BCE41A50;
  *(v2 + 96) = xmmword_1BCE41A60;
  *(v2 + 200) = xmmword_1BCE41A50;
  *(v2 + 2720) = xmmword_1BCE41A50;
  *(v2 + 2960) = xmmword_1BCE41A50;
  *(v2 + 320) = xmmword_1BCE41A50;
  *(v2 + 336) = xmmword_1BCE41A60;
  *(v2 + 216) = xmmword_1BCE41A60;
  *(v2 + 2736) = xmmword_1BCE41A60;
  *(v2 + 2976) = xmmword_1BCE41A60;
  result = 0.205961823;
  *(v2 + 232) = xmmword_1BCE41A70;
  *(v2 + 352) = xmmword_1BCE41A70;
  *(v2 + 368) = xmmword_1BCE41A80;
  *(v2 + 2752) = xmmword_1BCE41A70;
  *(v2 + 2992) = xmmword_1BCE41A70;
  *(v2 + 112) = xmmword_1BCE41A70;
  *(v2 + 128) = xmmword_1BCE41A80;
  *(v2 + 248) = xmmword_1BCE41A80;
  *(v2 + 2768) = xmmword_1BCE41A80;
  *(v2 + 3008) = xmmword_1BCE41A80;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  *(v2 + 160) = 0;
  *(v2 + 264) = 0x3FE0000000000000;
  *(v2 + 272) = 0xC03E000000000000;
  *(v2 + 280) = 0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x3FB7171740000002;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FD106B2BB97C05DLL;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v4;
  *(v2 + 764) = *&v4[3];
  *(v2 + 880) = 0;
  *(v2 + 881) = *v5;
  *(v2 + 884) = *&v5[3];
  *(v2 + 888) = 0x3FD9D12491262F8FLL;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v6[3];
  *(v2 + 1001) = *v6;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v7;
  *(v2 + 1124) = *&v7[3];
  *(v2 + 1128) = 0x3FDC57F2489317DELL;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v8[3];
  *(v2 + 1241) = *v8;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v9[3];
  *(v2 + 1361) = *v9;
  *(v2 + 1368) = 0x3FDEDEC00000002DLL;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v10[3];
  *(v2 + 1481) = *v10;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v11[3];
  *(v2 + 1601) = *v11;
  *(v2 + 1608) = 0x3FDEDEC00000002DLL;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v12[3];
  *(v2 + 1721) = *v12;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v13[3];
  *(v2 + 1841) = *v13;
  *(v2 + 1848) = 0x3FDC55BA71E8EE34;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v14[3];
  *(v2 + 1961) = *v14;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v15[3];
  *(v2 + 2081) = *v15;
  *(v2 + 2088) = 0x3FD9D881CA79D80FLL;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v16[3];
  *(v2 + 2201) = *v16;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v17[3];
  *(v2 + 2321) = *v17;
  *(v2 + 2328) = 0x3FD1F09E719B7199;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v18[3];
  *(v2 + 2441) = *v18;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v19[3];
  *(v2 + 2561) = *v19;
  *(v2 + 2568) = 0x3FB7171740000002;
  *(v2 + 2672) = 0xC03E000000000000;
  *(v2 + 2680) = 1;
  *(v2 + 2684) = *&v20[3];
  *(v2 + 2681) = *v20;
  *(v2 + 2800) = 1;
  *(v2 + 2804) = *&v21[3];
  *(v2 + 2801) = *v21;
  *(v2 + 2808) = 0x3FB6BF00000000B3;
  *(v2 + 2912) = 0xC056800000000000;
  *(v2 + 2920) = 1;
  *(v2 + 2924) = *&v22[3];
  *(v2 + 2921) = *v22;
  *(v2 + 3024) = 0x3FE0000000000000;
  *a1 = 0x3FFB333333333333;
  a1[1] = v2;
  return result;
}

double sub_1BCC8CC3C@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCC8D3E0();
  v4 = v3;
  sub_1BCC8D3E0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE43040;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F4CCCCDLL;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE497C0;
  *(a1 + 640) = xmmword_1BCE497D0;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE4B1E0;
  *(a1 + 704) = 1061997773;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4198000041700000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1061997773;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 1092107296;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE44850;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = xmmword_1BCE5D4C0;
  *(a1 + 960) = 1063675494;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4170000041200000;
  *(a1 + 984) = 1066369312;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000005320;
  strcpy((a1 + 1040), "Cirrus_SingleS");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3C700;
  *(a1 + 1088) = 1082130432;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4080000040400000;
  *(a1 + 1112) = 1085783552;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE44860;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE49810;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 1;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE4B200;
  *(a1 + 1392) = xmmword_1BCE4B210;
  *(a1 + 1408) = xmmword_1BCE49840;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V4.2S, #-30.0 }

  *(a1 + 1616) = -_D4;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 8;
  *(a1 + 1776) = xmmword_1BCE3EDA0;
  *(a1 + 1792) = xmmword_1BCE49850;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  result = 0.00781250182;
  *(a1 + 2240) = xmmword_1BCE44880;
  *(a1 + 2256) = xmmword_1BCE3C700;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

__n128 sub_1BCC8D3E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 80) = xmmword_1BCE41330;
  *(v0 + 96) = xmmword_1BCE41340;
  *(v0 + 144) = xmmword_1BCE3EC10;
  *(v0 + 160) = xmmword_1BCE3EC20;
  __asm { FMOV            V0.2D, #0.5 }

  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3EC60;
  *(v0 + 48) = xmmword_1BCE41320;
  *(v0 + 2512) = xmmword_1BCE44920;
  *(v0 + 2528) = xmmword_1BCE3EDB0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 2736) = vdupq_n_s64(0x3FE0ECE8A0000000uLL);
  *(v0 + 2752) = xmmword_1BCE3EDF0;
  *(v0 + 4912) = xmmword_1BCE3EED0;
  *(v0 + 6128) = xmmword_1BCE3EED0;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE49930;
  *(v0 + 6192) = xmmword_1BCE49930;
  *(v0 + 4992) = xmmword_1BCE49940;
  *(v0 + 6208) = xmmword_1BCE49940;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5952) = xmmword_1BCE49950;
  *(v0 + 7168) = xmmword_1BCE49950;
  v6 = vdupq_n_s64(0x3FEBBBBBBBBBBBBCuLL);
  *(v0 + 5936) = v6;
  *(v0 + 5968) = v6;
  *(v0 + 7152) = v6;
  *(v0 + 7184) = v6;
  *(v0 + 5984) = xmmword_1BCE49960;
  *(v0 + 7200) = xmmword_1BCE49960;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3728) = xmmword_1BCE498D0;
  *(v0 + 7376) = xmmword_1BCE498D0;
  *(v0 + 3744) = xmmword_1BCE498E0;
  *(v0 + 7392) = xmmword_1BCE498E0;
  *(v0 + 3760) = xmmword_1BCE498F0;
  *(v0 + 7408) = xmmword_1BCE498F0;
  *(v0 + 3776) = xmmword_1BCE49900;
  *(v0 + 7424) = xmmword_1BCE49900;
  *(v0 + 3792) = xmmword_1BCE3EE80;
  *(v0 + 7440) = xmmword_1BCE3EE80;
  *(v0 + 3808) = xmmword_1BCE49320;
  *(v0 + 7456) = xmmword_1BCE49320;
  *(v0 + 3840) = xmmword_1BCE449B0;
  *(v0 + 5056) = xmmword_1BCE449B0;
  *(v0 + 6272) = xmmword_1BCE449B0;
  *(v0 + 7488) = xmmword_1BCE449B0;
  *(v0 + 3904) = xmmword_1BCE3D4E0;
  *(v0 + 5120) = xmmword_1BCE3D4E0;
  *(v0 + 6336) = xmmword_1BCE3D4E0;
  *(v0 + 7552) = xmmword_1BCE3D4E0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 4016) = xmmword_1BCE49910;
  *(v0 + 5232) = xmmword_1BCE49910;
  *(v0 + 6448) = xmmword_1BCE49910;
  *(v0 + 7664) = xmmword_1BCE49910;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CF80;
  *(v0 + 7696) = xmmword_1BCE3CF80;
  v7 = vdupq_n_s64(0x3FEAFAFAFAFAFAFBuLL);
  *(v0 + 4720) = v7;
  *(v0 + 4752) = v7;
  *(v0 + 8368) = v7;
  *(v0 + 8400) = v7;
  *(v0 + 4736) = xmmword_1BCE49920;
  *(v0 + 4768) = xmmword_1BCE49920;
  *(v0 + 8384) = xmmword_1BCE49920;
  *(v0 + 8416) = xmmword_1BCE49920;
  *(v0 + 2480) = xmmword_1BCE3EDA0;
  *(v0 + 8560) = xmmword_1BCE3EDA0;
  *(v0 + 2496) = 1135542272;
  *(v0 + 8576) = 1135542272;
  *(v0 + 8592) = xmmword_1BCE3E140;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 2544) = xmmword_1BCE41540;
  *(v0 + 8624) = xmmword_1BCE41540;
  *(v0 + 2560) = xmmword_1BCE3EDD0;
  *(v0 + 8640) = xmmword_1BCE3EDD0;
  *(v0 + 8656) = xmmword_1BCE49330;
  *(v0 + 8672) = xmmword_1BCE49340;
  *(v0 + 8704) = xmmword_1BCE3CBB0;
  *(v0 + 2672) = xmmword_1BCE49890;
  *(v0 + 8752) = xmmword_1BCE49890;
  *(v0 + 2688) = xmmword_1BCE498A0;
  *(v0 + 8768) = xmmword_1BCE498A0;
  *(v0 + 8816) = vdupq_n_s64(0x3FE147AE20000000uLL);
  *(v0 + 8832) = xmmword_1BCE49360;
  *v7.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v7.i64[0];
  *(v0 + 8896) = v7.i64[0];
  *(v0 + 3520) = xmmword_1BCE498B0;
  *(v0 + 9600) = xmmword_1BCE498B0;
  v8 = vdupq_n_s64(0x3FE5D5D5D5D5D5D6uLL);
  *(v0 + 3504) = v8;
  *(v0 + 3536) = v8;
  *(v0 + 9584) = v8;
  *(v0 + 9616) = v8;
  *(v0 + 3552) = xmmword_1BCE498C0;
  *(v0 + 9632) = xmmword_1BCE498C0;
  *(v0 + 1264) = xmmword_1BCE3EBE0;
  *(v0 + 9776) = xmmword_1BCE3EBE0;
  *(v0 + 1280) = 0x41C8000043480000;
  *(v0 + 9792) = 0x41C8000043480000;
  *(v0 + 1296) = xmmword_1BCE49870;
  *(v0 + 9808) = xmmword_1BCE49870;
  *(v0 + 1312) = xmmword_1BCE49880;
  *(v0 + 9824) = xmmword_1BCE49880;
  *(v0 + 1328) = xmmword_1BCE3ECE0;
  *(v0 + 9840) = xmmword_1BCE3ECE0;
  *(v0 + 1360) = xmmword_1BCE3ECF0;
  *(v0 + 9872) = xmmword_1BCE3ECF0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 1536) = xmmword_1BCE3ED40;
  *(v0 + 10048) = xmmword_1BCE3ED40;
  *(v0 + 64) = 0x41A0000042C80000;
  *(v0 + 10992) = xmmword_1BCE41320;
  *(v0 + 11008) = 0x41A0000042C80000;
  *(v0 + 11024) = xmmword_1BCE493A0;
  *(v0 + 11040) = xmmword_1BCE49380;
  *(v0 + 11056) = xmmword_1BCE3EBF0;
  *(v0 + 112) = xmmword_1BCE3EBF0;
  *(v0 + 128) = xmmword_1BCE3EC00;
  *(v0 + 1344) = xmmword_1BCE3EC00;
  *(v0 + 9856) = xmmword_1BCE3EC00;
  *(v0 + 11072) = xmmword_1BCE3EC00;
  *(v0 + 11088) = xmmword_1BCE493B0;
  *(v0 + 11104) = xmmword_1BCE3F570;
  *(v0 + 192) = xmmword_1BCE40200;
  *(v0 + 1408) = xmmword_1BCE40200;
  *(v0 + 9920) = xmmword_1BCE40200;
  *(v0 + 11136) = xmmword_1BCE40200;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11248) = vdupq_n_s64(0x3FDEB85200000000uLL);
  *(v0 + 11264) = xmmword_1BCE493D0;
  *(v0 + 368) = xmmword_1BCE44960;
  *(v0 + 1584) = xmmword_1BCE44960;
  *(v0 + 2800) = xmmword_1BCE44960;
  *(v0 + 8880) = xmmword_1BCE44960;
  *(v0 + 10096) = xmmword_1BCE44960;
  *(v0 + 11312) = xmmword_1BCE44960;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1088) = xmmword_1BCE44900;
  *(v0 + 2304) = xmmword_1BCE44900;
  *(v0 + 10816) = xmmword_1BCE44900;
  *(v0 + 12032) = xmmword_1BCE44900;
  v9 = vdupq_n_s64(0x3FDFDFDFDFDFDFE0uLL);
  *(v0 + 1072) = v9;
  *(v0 + 1104) = v9;
  *(v0 + 2288) = v9;
  *(v0 + 2320) = v9;
  *(v0 + 10800) = v9;
  *(v0 + 10832) = v9;
  *(v0 + 12016) = v9;
  *(v0 + 12048) = v9;
  *(v0 + 1120) = xmmword_1BCE44910;
  *(v0 + 2336) = xmmword_1BCE44910;
  *(v0 + 10848) = xmmword_1BCE44910;
  *(v0 + 12064) = xmmword_1BCE44910;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 208) = result;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 336) = result;
  *(v0 + 352) = result;
  *(v0 + 400) = result;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 1257) = *v11;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 7688) = 0x3FED73E5C0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 7632) = result;
  *(v0 + 7648) = result;
  *(v0 + 1424) = result;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 7504) = result;
  *(v0 + 7536) = result;
  *(v0 + 7568) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1552) = result;
  *(v0 + 1568) = result;
  *(v0 + 7472) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 7368) = 1063675494;
  *(v0 + 1640) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 1648) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 1728) = result;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 6384) = result;
  *(v0 + 6416) = result;
  *(v0 + 6432) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 6288) = result;
  *(v0 + 6320) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 6256) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 6160) = result;
  *(v0 + 6176) = result;
  *(v0 + 6064) = result;
  *(v0 + 6121) = *v15;
  *(v0 + 6152) = 1065353216;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = result;
  *(v0 + 5200) = result;
  *(v0 + 5216) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 5072) = result;
  *(v0 + 5104) = result;
  *(v0 + 5136) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 4960) = result;
  *(v0 + 5040) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4944) = result;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4936) = 1065353216;
  *(v0 + 2224) = result;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2352) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 2368) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 3984) = result;
  *(v0 + 4000) = result;
  *(v0 + 4040) = 0x3FED73E5C0000000;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 3888) = result;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 3824) = result;
  *(v0 + 3856) = result;
  *(v0 + 2504) = 1053609165;
  *(v0 + 2608) = result;
  *(v0 + 2640) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2768) = result;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3720) = 1063675494;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 2784) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8720) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8848) = result;
  *(v0 + 8864) = result;
  *(v0 + 8912) = result;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9904) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 10016) = result;
  *(v0 + 10032) = result;
  *(v0 + 10064) = result;
  *(v0 + 10080) = result;
  *(v0 + 10128) = result;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11120) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 11280) = result;
  *(v0 + 11296) = result;
  *(v0 + 11344) = result;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v17;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v18;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCC8E44C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - v5, a1, v3, v4);
  sub_1BC957184(&qword_1EDA1EF08, &qword_1EBD085A0);
  v10 = sub_1BCE1D4D0();
  sub_1BCC8E784(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

void sub_1BCC8E590(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1BCE195D0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = 0;
  v12 = *(a3 + 16);
  v18 = v13;
  v17 = (v13 + 8);
  while (1)
  {
    if (v12 == v11)
    {
      v11 = v12;
LABEL_10:
      sub_1BCAF2B18(v11, v12, a3);

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v14 = a3;
    (*(v18 + 16))(v10, a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v6);
    v15 = a1(v10);
    if (v4)
    {
      (*v17)(v10, v6);

      return;
    }

    v16 = v15;
    (*v17)(v10, v6);
    if ((v16 & 1) == 0)
    {
      a3 = v14;
      goto LABEL_10;
    }

    ++v11;
    a3 = v14;
    v4 = 0;
  }

  __break(1u);
}

uint64_t sub_1BCC8E784(uint64_t *a1)
{
  v2 = *(sub_1BCE195D0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED224();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1BCC91230(v7, MEMORY[0x1E6984B10], sub_1BCC91940, sub_1BCC91384);
  *a1 = v3;
  return result;
}

uint64_t sub_1BCC8E868(uint64_t *a1)
{
  v2 = *(type metadata accessor for HourlyForecastBannerViewModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED3DC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1BCC91230(v7, type metadata accessor for HourlyForecastBannerViewModel, sub_1BCC9252C, sub_1BCC9171C);
  *a1 = v3;
  return result;
}

uint64_t HourlyForecastBannerViewModelFactory.makeHourlyForecastBannerViewModel(from:timeZone:entry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_2();
  v74 = v5;
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v72 - v6;
  v73 = sub_1BCE196E0();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = (v11 - v10);
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v79 = v14;
  v80 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v84 = v16 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  OUTLINED_FUNCTION_2();
  v85 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v72 - v22;
  sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v88 = MEMORY[0x1E69E7CC0];
  v28 = *(v27 + 16);
  v81 = a2;
  v28(v26, a2);
  type metadata accessor for WidgetDateFormatter();
  swift_allocObject();
  v82 = WidgetDateFormatter.init(timeZone:)(v26);
  if (qword_1EDA1BCB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1BCE1ACC0();
  v76 = __swift_project_value_buffer(v29, qword_1EDA1BCB8);
  v30 = sub_1BCE1ACA0();
  v31 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v87[0] = v33;
    *v32 = 136446210;
    sub_1BCE1A3E0();
    sub_1BCE1A3A0();
    v34 = sub_1BCE1A340();

    v86 = v34;
    sub_1BCA301DC();
    v35 = sub_1BCE1D2F0();
    v37 = sub_1BC98FE38(v35, v36, v87);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1BC940000, v30, v31, "Building hourly forecast model. - unit: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1BFB31B10](v33, -1, -1);
    MEMORY[0x1BFB31B10](v32, -1, -1);
  }

  v38 = v83;
  sub_1BCE19A00();
  v39 = v12;
  sub_1BCE199E0();
  sub_1BCE196A0();
  v40 = *(v8 + 8);
  v41 = v73;
  v40(v12, v73);
  sub_1BCE199E0();
  sub_1BCE19A00();
  v42 = v72;
  sub_1BCE199F0();
  v43 = sub_1BCC8F150(v81, v39, v20, v42);
  (*(v74 + 8))(v42, v75);
  v44 = v78;
  v75 = *(v85 + 8);
  v85 += 8;
  v75(v20, v78);
  v45 = (v40)(v39, v41);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_48();
  sub_1BCA14A98(sub_1BCC90748, v46, v43);
  v48 = v47;
  v49 = sub_1BCC8E44C(v38);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_48();
  sub_1BCC8E590(sub_1BCC90768, v50, v51);
  OUTLINED_FUNCTION_3_62();
  OUTLINED_FUNCTION_4_50();
  sub_1BCAE5EE8(v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_3_62();
  OUTLINED_FUNCTION_4_50();
  v62 = sub_1BCAE61D8(v57, v58, v59, v60, v61);
  MEMORY[0x1EEE9AC00](v62);
  v63 = v81;
  *(&v72 - 4) = v82;
  *(&v72 - 3) = v63;
  *(&v72 - 2) = &v88;
  sub_1BCBD3164(sub_1BCC90ED4, (&v72 - 6), v62, v64, v65, v66);
  swift_unknownObjectRelease();
  v87[0] = v88;

  sub_1BCD87644(v48);

  sub_1BCC8E868(v87);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC00);
  sub_1BCE19090();
  sub_1BC957184(&qword_1EDA16CE8, &qword_1EBD0BC00);
  sub_1BCC939F8(&qword_1EDA1BF00, MEMORY[0x1E69695A8]);
  v67 = sub_1BCE1D4C0();

  v68 = sub_1BCE1ACA0();
  v69 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1BC940000, v68, v69, "Built hourly forecast model", v70, 2u);
    MEMORY[0x1BFB31B10](v70, -1, -1);
  }

  v75(v83, v44);
  (*(v79 + 8))(v84, v80);

  return v67;
}

uint64_t sub_1BCC8F150(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v168 = a4;
  v158 = a3;
  v167 = a2;
  v153 = sub_1BCE1E060();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1BCE199D0();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for HourlyForecastBannerViewModel();
  v155 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v137 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v127 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v127 - v13;
  v146 = sub_1BCE19260();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1BCE19280();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08698);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v127 - v19;
  v162 = sub_1BCE195D0();
  v159 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v157 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v156 = &v127 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v166 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v127 - v26;
  v28 = sub_1BCE1A170();
  v169 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v163 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v127 - v31;
  v33 = sub_1BCE19060();
  v165 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v161 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v164 = &v127 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v160 = &v127 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v127 - v40;
  v42 = sub_1BCE19540();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BCE193E0();
  v171 = *(v46 - 8);
  v172 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = a1;
  sub_1BCE192A0();
  v170 = v48;
  v173 = v48;
  sub_1BC994C58();
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    sub_1BC94C05C(v41, &qword_1EBD08CA8);
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v133 = 0;
    v168 = v43;
    (*(v43 + 32))(v45, v41, v42);
    sub_1BCE194E0();
    sub_1BCE1A160();
    v50 = v169 + 8;
    v134 = *(v169 + 8);
    v134(v32, v28);
    v51 = v33;
    if (__swift_getEnumTagSinglePayload(v27, 1, v33) == 1)
    {
      sub_1BC94C05C(v27, &qword_1EBD07868);
      v49 = MEMORY[0x1E69E7CC0];
      v53 = v165;
      v52 = v166;
    }

    else
    {
      v169 = v50;
      v131 = v28;
      v53 = v165;
      v54 = v160;
      (*(v165 + 32))(v160, v27, v33);
      v55 = v164;
      sub_1BCE196A0();
      v56 = sub_1BCE18FD0();
      v57 = *(v53 + 8);
      v58 = v57(v55, v33);
      if (v56)
      {
        v130 = v57;
        v132 = v33;
        MEMORY[0x1EEE9AC00](v58);
        v59 = v138;
        v60 = v133;
        sub_1BCAD0F84();
        v61 = v162;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v162);
        v133 = v60;
        if (EnumTagSinglePayload == 1)
        {
          sub_1BC94C05C(v59, &qword_1EBD08698);
          v49 = MEMORY[0x1E69E7CC0];
          v51 = v132;
          v52 = v166;
        }

        else
        {
          (*(v159 + 32))(v156, v59, v61);
          if (qword_1EDA1EBE8 != -1)
          {
            swift_once();
          }

          v63 = v141;
          sub_1BCE191B0();
          v64 = v144;
          sub_1BCE19270();
          (*(v142 + 8))(v63, v143);
          LOBYTE(v63) = sub_1BCE19240();
          (*(v145 + 8))(v64, v146);
          v65 = sub_1BC9600B0();
          v67 = v132;
          if (v63)
          {
            v178 = v65;
            v179 = v66;
            v176 = 11501794;
            v177 = 0xA300000000000000;
            v174 = 0;
            v175 = 0xE000000000000000;
            sub_1BC970820();
            v129 = sub_1BCE1DB90();
            v69 = v68;

            v138 = v69;
          }

          else
          {
            v138 = v66;
            v129 = v65;
          }

          v70 = v139;
          sub_1BCE19080();
          v71 = v154;
          (*(v53 + 16))(v70 + *(v154 + 20), v54, v67);
          sub_1BCE19560();
          v72 = v148;
          sub_1BCE195C0();
          ConditionViewModelFactory.makeSunriseConditionViewModel(from:)(v72, v70 + v71[9]);
          (*(v149 + 8))(v72, v150);
          sub_1BCE19590();
          v74 = v73;
          v75 = v152;
          v76 = v151;
          v77 = v153;
          (*(v152 + 104))(v151, *MEMORY[0x1E69E7038], v153);
          v78 = Double.nearestMultiple(of:roundingRule:)(v76, 0.05, v74);
          (*(v75 + 8))(v76, v77);
          sub_1BCE1A3E0();
          sub_1BCE1A3A0();
          v79 = sub_1BCE1A340();

          v80 = NSUnitTemperature.accessibilityString()();
          countAndFlagsBits = v80._countAndFlagsBits;

          sub_1BCE19570();
          sub_1BCE195B0();
          v81 = (v70 + v71[7]);
          v82 = v129;
          v83 = v138;
          *v81 = v129;
          v81[1] = v83;
          v84 = (v70 + v71[8]);
          *v84 = v82;
          v84[1] = v83;
          *(v70 + v71[10]) = v78;
          v85 = (v70 + v71[11]);
          *v85 = countAndFlagsBits;
          v85[1] = v80._object;
          *(v70 + v71[14]) = 0;
          v86 = v135;
          sub_1BCC93940(v70, v135, type metadata accessor for HourlyForecastBannerViewModel);

          sub_1BCB662C0();
          v49 = v87;
          v88 = *(v87 + 16);
          if (v88 >= *(v87 + 24) >> 1)
          {
            sub_1BCB662C0();
            v49 = v124;
          }

          sub_1BCC939A0(v139, type metadata accessor for HourlyForecastBannerViewModel);
          (*(v159 + 8))(v156, v162);
          *(v49 + 16) = v88 + 1;
          sub_1BCC938DC(v86, v49 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v88);
          v51 = v132;
          v52 = v166;
          v54 = v160;
        }

        v130(v54, v51);
      }

      else
      {
        v57(v54, v33);
        v49 = MEMORY[0x1E69E7CC0];
        v52 = v166;
      }

      v28 = v131;
    }

    v89 = v163;
    sub_1BCE194E0();
    sub_1BCE1A150();
    v134(v89, v28);
    if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
    {
      (*(v168 + 8))(v45, v42);
      sub_1BC94C05C(v52, &qword_1EBD07868);
    }

    else
    {
      v169 = v42;
      v90 = v161;
      (*(v53 + 32))(v161, v52, v51);
      v91 = v164;
      sub_1BCE196A0();
      v92 = sub_1BCE18FD0();
      v93 = *(v53 + 8);
      v94 = v93(v91, v51);
      v95 = v168;
      if (v92)
      {
        v167 = v93;
        v132 = v51;
        MEMORY[0x1EEE9AC00](v94);
        v96 = v140;
        sub_1BCAD0F84();
        v97 = v162;
        if (__swift_getEnumTagSinglePayload(v96, 1, v162) == 1)
        {
          (*(v95 + 8))(v45, v169);
          sub_1BC94C05C(v96, &qword_1EBD08698);
          v98 = v132;
        }

        else
        {
          v166 = v45;
          (*(v159 + 32))(v157, v96, v97);
          if (qword_1EDA1EBE8 != -1)
          {
            swift_once();
          }

          v99 = v141;
          sub_1BCE191B0();
          v100 = v144;
          sub_1BCE19270();
          (*(v142 + 8))(v99, v143);
          LOBYTE(v99) = sub_1BCE19240();
          (*(v145 + 8))(v100, v146);
          v101 = sub_1BC9600B0();
          v103 = v102;
          v104 = v136;
          if (v99)
          {
            v178 = v101;
            v179 = v102;
            v176 = 11501794;
            v177 = 0xA300000000000000;
            v174 = 0;
            v175 = 0xE000000000000000;
            sub_1BC970820();
            v165 = sub_1BCE1DB90();
            v106 = v105;

            v103 = v106;
          }

          else
          {
            v165 = v101;
          }

          sub_1BCE19080();
          v107 = v154;
          (*(v53 + 16))(v104 + *(v154 + 20), v90, v132);
          sub_1BCE19560();
          v108 = v148;
          sub_1BCE195C0();
          ConditionViewModelFactory.makeSunsetConditionViewModel(from:)(v108, v104 + v107[9]);
          (*(v149 + 8))(v108, v150);
          sub_1BCE19590();
          v110 = v109;
          v111 = v152;
          v112 = v151;
          v113 = v153;
          (*(v152 + 104))(v151, *MEMORY[0x1E69E7038], v153);
          v114 = Double.nearestMultiple(of:roundingRule:)(v112, 0.05, v110);
          (*(v111 + 8))(v112, v113);
          sub_1BCE1A3E0();
          sub_1BCE1A3A0();
          v115 = sub_1BCE1A340();

          v116 = NSUnitTemperature.accessibilityString()();

          sub_1BCE19570();
          sub_1BCE195B0();
          v117 = (v104 + v107[7]);
          v118 = v165;
          *v117 = v165;
          v117[1] = v103;
          v119 = (v104 + v107[8]);
          *v119 = v118;
          v119[1] = v103;
          *(v104 + v107[10]) = v114;
          *(v104 + v107[11]) = v116;
          *(v104 + v107[14]) = 1;
          v120 = v137;
          sub_1BCC93940(v104, v137, type metadata accessor for HourlyForecastBannerViewModel);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BCB662C0();
            v49 = v125;
          }

          v121 = v168;
          v122 = *(v49 + 16);
          v98 = v132;
          v90 = v161;
          if (v122 >= *(v49 + 24) >> 1)
          {
            sub_1BCB662C0();
            v49 = v126;
          }

          sub_1BCC939A0(v104, type metadata accessor for HourlyForecastBannerViewModel);
          (*(v159 + 8))(v157, v162);
          (*(v121 + 8))(v166, v169);
          *(v49 + 16) = v122 + 1;
          sub_1BCC938DC(v120, v49 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v122);
        }

        v167(v90, v98);
      }

      else
      {
        (*(v168 + 8))(v45, v169);
        v93(v90, v51);
      }
    }
  }

  (*(v171 + 8))(v170, v172);
  return v49;
}

BOOL sub_1BCC906A0()
{
  type metadata accessor for HourlyForecastBannerViewModel();
  sub_1BCE19060();
  sub_1BCC939F8(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
  return (sub_1BCE1D1E0() & 1) == 0;
}

uint64_t sub_1BCC9079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v70 = a4;
  v58 = a3;
  v60 = a2;
  v5 = sub_1BCE1E060();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for HourlyForecastBannerViewModel();
  v69 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v57 = sub_1BCE19470();
  v11 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BCE199D0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConditionViewModel();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BCE19060();
  v62 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE195A0();
  sub_1BCE195C0();
  v67 = a1;
  v23 = sub_1BCE19550();
  v63 = v20;
  ConditionViewModelFactory.makeConditionViewModel(from:isDaytime:)(v17, v23 & 1, v20);
  (*(v15 + 8))(v17, v14);
  v72[0] = 0;
  sub_1BCE19460();
  v24 = WidgetDateFormatter.format(date:dateType:timeZone:)(v22, v72);
  v59 = v25;
  v60 = v24;
  (*(v11 + 8))(v13, v57);
  if (qword_1EDA1EF50 != -1)
  {
    swift_once();
  }

  v26 = sub_1BC9600B0();
  v28 = v27;
  if (static Date.uses24HourTime()())
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v29 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BCE3E050;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1BC9804E0();
    *(v30 + 32) = v26;
    *(v30 + 40) = v28;
    v31 = sub_1BCE1D250();
    v57 = v32;
    v58 = v31;
  }

  else
  {
    v57 = v28;
    v58 = v26;
  }

  sub_1BCE19080();
  v34 = v61;
  v33 = v62;
  (*(v62 + 16))(&v10[*(v61 + 20)], v22, v71);
  sub_1BCE19560();
  v35 = v34[9];
  v56 = type metadata accessor for ConditionViewModel;
  v36 = v63;
  sub_1BCC93940(v63, &v10[v35], type metadata accessor for ConditionViewModel);
  sub_1BCE19590();
  v38 = v37;
  v39 = *MEMORY[0x1E69E7038];
  v55 = v22;
  v41 = v64;
  v40 = v65;
  v42 = v66;
  (*(v65 + 104))(v64, v39, v66);
  v43 = Double.nearestMultiple(of:roundingRule:)(v41, 0.05, v38);
  (*(v40 + 8))(v41, v42);
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v44 = sub_1BCE1A340();

  v45 = NSUnitTemperature.accessibilityString()();

  sub_1BCE19570();
  sub_1BCE195B0();
  v46 = &v10[v34[7]];
  v47 = v59;
  *v46 = v60;
  *(v46 + 1) = v47;
  v48 = &v10[v34[8]];
  v49 = v57;
  *v48 = v58;
  *(v48 + 1) = v49;
  *&v10[v34[10]] = v43;
  *&v10[v34[11]] = v45;
  v10[v34[14]] = 2;
  v50 = v68;
  sub_1BCC93940(v10, v68, type metadata accessor for HourlyForecastBannerViewModel);
  v51 = v70;
  sub_1BCC91138();
  v52 = *(*v51 + 16);
  sub_1BCCC3C4C(v52);
  sub_1BCC939A0(v10, type metadata accessor for HourlyForecastBannerViewModel);
  sub_1BCC939A0(v36, v56);
  (*(v33 + 8))(v55, v71);
  v53 = *v51;
  *(v53 + 16) = v52 + 1;
  return sub_1BCC938DC(v50, v53 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v52);
}

uint64_t sub_1BCC90F64()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE194F0();
  v4 = sub_1BCE192B0();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1BCC91050(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_1BCE195A0();
  LOBYTE(a3) = a3(v11, a2);
  (*(v7 + 8))(v11, v5);
  return a3 & 1;
}

void sub_1BCC91138()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BCB662C0();
    *v0 = v3;
  }
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastBannerViewModelFactory(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BCC91230(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1BCE1E040();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BCE1D5A0();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1BCC91384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1BCE19060();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v41 - v11;
  v12 = sub_1BCE195D0();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        (v54)(v56, v26, v12, v18);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_1BCE195A0();
        v32 = v59;
        sub_1BCE195A0();
        v62 = sub_1BCE18FD0();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCC9171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for HourlyForecastBannerViewModel();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        sub_1BCC93940(v22, v16, type metadata accessor for HourlyForecastBannerViewModel);
        sub_1BCC93940(v19, v12, type metadata accessor for HourlyForecastBannerViewModel);
        v23 = sub_1BCE18FD0();
        sub_1BCC939A0(v12, type metadata accessor for HourlyForecastBannerViewModel);
        sub_1BCC939A0(v16, type metadata accessor for HourlyForecastBannerViewModel);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        sub_1BCC938DC(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_1BCC938DC(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCC91940(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v163 = sub_1BCE19060();
  v8 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v136 - v11;
  v12 = sub_1BCE195D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v136 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v136 - v21;
  v148 = a3;
  v22 = a3[1];
  v143 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v128 = v24 + 16;
      v129 = *(v24 + 2);
      while (v129 >= 2)
      {
        if (!*v148)
        {
          goto LABEL_139;
        }

        v130 = v24;
        v131 = &v24[16 * v129];
        v132 = *v131;
        v133 = &v128[2 * v129];
        v134 = *(v133 + 1);
        sub_1BCC92DE4(*v148 + *(v143 + 9) * *v131, *v148 + *(v143 + 9) * *v133, *v148 + *(v143 + 9) * v134, v165);
        if (v5)
        {
          break;
        }

        if (v134 < v132)
        {
          goto LABEL_127;
        }

        if (v129 - 2 >= *v128)
        {
          goto LABEL_128;
        }

        *v131 = v132;
        *(v131 + 1) = v134;
        v135 = *v128 - v129;
        if (*v128 < v129)
        {
          goto LABEL_129;
        }

        v129 = *v128 - 1;
        sub_1BCBECE14(v133 + 16, v135, v133);
        *v128 = v129;
        v24 = v130;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v24 = sub_1BCBECBBC();
    goto LABEL_103;
  }

  v137 = a4;
  v23 = 0;
  v157 = (v8 + 8);
  v158 = v13 + 16;
  v155 = (v13 + 32);
  v156 = (v13 + 8);
  v24 = MEMORY[0x1E69E7CC0];
  v159 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v138 = v24;
      v27 = v23;
      v140 = v23;
      v149 = v5;
      v150 = v23 + 1;
      v28 = *v148;
      v165 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v151 = v22;
      v152 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v164, v31, v12, v20);
      v34 = v160;
      v146 = v33;
      (v33)(v160, v28 + v30 * v27, v32);
      v5 = v161;
      v35 = v164;
      sub_1BCE195A0();
      v36 = v162;
      sub_1BCE195A0();
      LODWORD(v147) = sub_1BCE18FD0();
      v37 = *v157;
      v38 = v163;
      (*v157)(v36, v163);
      v145 = v37;
      (v37)(v5, v38);
      v39 = *(v143 + 1);
      v39(v34, v32);
      v144 = v39;
      v39(v35, v32);
      v40 = v151;
      v41 = v140 + 2;
      v42 = v165 + v152 * (v140 + 2);
      while (1)
      {
        v43 = v41;
        if (++v150 >= v40)
        {
          break;
        }

        v5 = v164;
        v44 = v159;
        v45 = v146;
        v165 = v41;
        (v146)(v164, v42, v159);
        v46 = v160;
        v45(v160, v31, v44);
        v47 = v161;
        sub_1BCE195A0();
        v48 = v162;
        sub_1BCE195A0();
        LOBYTE(v154) = sub_1BCE18FD0() & 1;
        LODWORD(v154) = v154;
        v49 = v48;
        v50 = v163;
        v51 = v145;
        (v145)(v49, v163);
        v51(v47, v50);
        v52 = v144;
        v144(v46, v44);
        v52(v5, v44);
        v43 = v165;
        v40 = v151;
        v42 += v152;
        v31 += v152;
        v41 = v165 + 1;
        if ((v147 & 1) != v154)
        {
          goto LABEL_9;
        }
      }

      v150 = v40;
LABEL_9:
      if (v147)
      {
        v26 = v150;
        v25 = v140;
        v12 = v159;
        if (v150 < v140)
        {
          goto LABEL_133;
        }

        if (v140 >= v150)
        {
          v5 = v149;
          v13 = v143;
          v24 = v138;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v53 = v43;
        }

        else
        {
          v53 = v40;
        }

        v54 = v152 * (v53 - 1);
        v55 = v152 * v53;
        v56 = v140;
        v57 = v140 * v152;
        v5 = v149;
        v13 = v143;
        do
        {
          if (v56 != --v26)
          {
            v58 = v5;
            v59 = *v148;
            if (!*v148)
            {
              goto LABEL_140;
            }

            v165 = *v155;
            (v165)(v142, v59 + v57, v12);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v165)(v59 + v54, v142, v12);
            v5 = v58;
            v13 = v143;
          }

          ++v56;
          v54 -= v152;
          v55 -= v152;
          v57 += v152;
        }

        while (v56 < v26);
        v24 = v138;
      }

      else
      {
        v5 = v149;
        v13 = v143;
        v24 = v138;
        v12 = v159;
      }

      v26 = v150;
      v25 = v140;
    }

LABEL_32:
    v61 = v148[1];
    if (v26 < v61)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v137)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v24 + 2) + 1, 1, v24);
      v24 = v126;
    }

    v82 = *(v24 + 2);
    v81 = *(v24 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      sub_1BCB65134(v81 > 1, v82 + 1, 1, v24);
      v24 = v127;
    }

    *(v24 + 2) = v83;
    v84 = v24 + 32;
    v85 = &v24[16 * v82 + 32];
    *v85 = v25;
    *(v85 + 1) = v26;
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_141;
    }

    v150 = v26;
    if (v82)
    {
      v154 = v24 + 32;
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = &v24[16 * v83];
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v24 + 4);
          v90 = *(v24 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = *(v88 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = *(v88 + 1);
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v148)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_1BCC92DE4(*v148 + *(v13 + 9) * *v118, *v148 + *(v13 + 9) * *v121, *v148 + *(v13 + 9) * v122, v165);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v149 = 0;
        v5 = v13;
        v123 = v24;
        v124 = *(v24 + 2);
        if (v120 > v124)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v124)
        {
          goto LABEL_115;
        }

        v83 = v124 - 1;
        sub_1BCBECE14(v121 + 16, v124 - 1 - v120, v121);
        *(v123 + 2) = v124 - 1;
        v125 = v124 > 2;
        v24 = v123;
        v13 = v5;
        v5 = v149;
        v84 = v154;
        if (!v125)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = *(v88 + 1);
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v148[1];
    v23 = v150;
    if (v150 >= v22)
    {
      goto LABEL_101;
    }
  }

  v62 = (v25 + v137);
  if (__OFADD__(v25, v137))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v148[1];
  }

  if (v62 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v62)
  {
    goto LABEL_48;
  }

  v138 = v24;
  v149 = v5;
  v63 = *v148;
  v64 = *(v13 + 9);
  v154 = *(v13 + 2);
  v65 = v63 + v64 * (v26 - 1);
  v151 = -v64;
  v140 = v25;
  v66 = (v25 - v26);
  v152 = v63;
  v141 = v64;
  v67 = (v63 + v26 * v64);
  v144 = v62;
LABEL_41:
  v150 = v26;
  v145 = v67;
  v146 = v66;
  v147 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v164;
    v70 = v154;
    (v154)(v164, v67, v12);
    v71 = v160;
    (v70)(v160, v68, v12);
    v72 = v161;
    sub_1BCE195A0();
    v73 = v162;
    sub_1BCE195A0();
    LODWORD(v165) = sub_1BCE18FD0();
    v74 = *v157;
    v75 = v73;
    v76 = v163;
    (*v157)(v75, v163);
    v77 = v72;
    v12 = v159;
    v74(v77, v76);
    v78 = *v156;
    (*v156)(v71, v12);
    v78(v69, v12);
    if ((v165 & 1) == 0)
    {
LABEL_46:
      v26 = v150 + 1;
      v65 = v147 + v141;
      v66 = v146 - 1;
      v67 = &v145[v141];
      if ((v150 + 1) == v144)
      {
        v26 = v144;
        v5 = v149;
        v13 = v143;
        v24 = v138;
        v25 = v140;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v152)
    {
      break;
    }

    v79 = *v155;
    v80 = v153;
    (*v155)(v153, v67, v12);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v12);
    v68 += v151;
    v67 += v151;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1BCC9252C(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v105 = a1;
  v9 = type metadata accessor for HourlyForecastBannerViewModel();
  v114 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v119 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  v116 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v95 = v20 + 16;
      v96 = *(v20 + 2);
      for (i = v20; v96 >= 2; v20 = i)
      {
        if (!*v116)
        {
          goto LABEL_139;
        }

        v97 = &v20[16 * v96];
        v98 = *v97;
        v99 = &v95[2 * v96];
        v100 = *(v99 + 1);
        sub_1BCC93450(*v116 + *(v114 + 72) * *v97, *v116 + *(v114 + 72) * *v99, *v116 + *(v114 + 72) * v100, v5);
        if (v6)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_127;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_128;
        }

        *v97 = v98;
        *(v97 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_129;
        }

        v96 = *v95 - 1;
        sub_1BCBECE14(v99 + 16, v101, v99);
        *v95 = v96;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = sub_1BCBECBBC();
    goto LABEL_103;
  }

  v104 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v120 = v9;
  v110 = &v102 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v106 = v21;
    if (v19 < v18)
    {
      v22 = *v116;
      v5 = *(v114 + 72);
      v23 = v21;
      v24 = *v116 + v5 * v19;
      v113 = v18;
      sub_1BCC93940(v24, v17, type metadata accessor for HourlyForecastBannerViewModel);
      v25 = v22 + v5 * v23;
      v26 = v119;
      sub_1BCC93940(v25, v119, type metadata accessor for HourlyForecastBannerViewModel);
      LODWORD(v112) = sub_1BCE18FD0();
      sub_1BCC939A0(v26, type metadata accessor for HourlyForecastBannerViewModel);
      sub_1BCC939A0(v17, type metadata accessor for HourlyForecastBannerViewModel);
      v27 = v113;
      v28 = v106 + 2;
      v115 = v5;
      v29 = v22 + v5 * (v106 + 2);
      while (1)
      {
        v30 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        sub_1BCC93940(v29, v17, type metadata accessor for HourlyForecastBannerViewModel);
        v5 = v119;
        sub_1BCC93940(v24, v119, type metadata accessor for HourlyForecastBannerViewModel);
        v31 = sub_1BCE18FD0() & 1;
        sub_1BCC939A0(v5, type metadata accessor for HourlyForecastBannerViewModel);
        sub_1BCC939A0(v17, type metadata accessor for HourlyForecastBannerViewModel);
        v29 += v115;
        v24 += v115;
        v28 = v30 + 1;
        v27 = v113;
        if ((v112 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v112)
      {
        v21 = v106;
        if (v19 < v106)
        {
          goto LABEL_133;
        }

        if (v106 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v103 = v6;
        if (v27 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v27;
        }

        v33 = v115 * (v32 - 1);
        v34 = v106;
        v35 = v115 * v32;
        v36 = v106 * v115;
        v37 = v19;
        v20 = i;
        do
        {
          if (v34 != --v37)
          {
            v5 = *v116;
            if (!*v116)
            {
              goto LABEL_140;
            }

            sub_1BCC938DC(v5 + v36, v109);
            v38 = v36 < v33 || v5 + v36 >= v5 + v35;
            if (v38)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BCC938DC(v109, v5 + v33);
            v20 = i;
          }

          ++v34;
          v33 -= v115;
          v35 -= v115;
          v36 += v115;
        }

        while (v34 < v37);
        v6 = v103;
      }

      else
      {
        v20 = i;
      }

      v21 = v106;
    }

LABEL_32:
    v39 = v116[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_132;
      }

      if (v19 - v21 < v104)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v20 + 2) + 1, 1, v20);
      v20 = v93;
    }

    v50 = *(v20 + 2);
    v49 = *(v20 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      sub_1BCB65134(v49 > 1, v50 + 1, 1, v20);
      v20 = v94;
    }

    *(v20 + 2) = v51;
    v52 = v20 + 32;
    v53 = &v20[16 * v50 + 32];
    *v53 = v106;
    *(v53 + 1) = v19;
    v115 = *v105;
    if (!v115)
    {
      goto LABEL_141;
    }

    v54 = v17;
    if (v50)
    {
      i = v20;
      while (1)
      {
        v55 = v51 - 1;
        v56 = &v52[16 * v51 - 16];
        v57 = &v20[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_69:
          if (v61)
          {
            goto LABEL_118;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_121;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_126;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v51 < 2)
        {
          goto LABEL_120;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_84:
        if (v76)
        {
          goto LABEL_123;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_125;
        }

        if (v83 < v75)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v55 - 1 >= v51)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v116)
        {
          goto LABEL_138;
        }

        v87 = &v52[16 * v55 - 16];
        v88 = *v87;
        v89 = v52;
        v5 = v55;
        v90 = &v52[16 * v55];
        v91 = *(v90 + 1);
        sub_1BCC93450(*v116 + *(v114 + 72) * *v87, *v116 + *(v114 + 72) * *v90, *v116 + *(v114 + 72) * v91, v115);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v91 < v88)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v51 = v6 - 1;
        sub_1BCBECE14(v90 + 16, v6 - 1 - v5, v90);
        v20 = i;
        *(i + 2) = v6 - 1;
        v92 = v6 > 2;
        v6 = 0;
        v54 = v110;
        v52 = v89;
        if (!v92)
        {
          goto LABEL_98;
        }
      }

      v62 = &v52[16 * v51];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_116;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_117;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_119;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_122;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_130;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v116[1];
    v17 = v54;
    if (v19 >= v18)
    {
      goto LABEL_101;
    }
  }

  v40 = v21 + v104;
  if (__OFADD__(v21, v104))
  {
    goto LABEL_134;
  }

  if (v40 >= v39)
  {
    v40 = v116[1];
  }

  if (v40 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v40)
  {
    goto LABEL_48;
  }

  v103 = v6;
  v41 = *v116;
  v42 = *(v114 + 72);
  v5 = *v116 + v42 * (v19 - 1);
  v43 = -v42;
  v44 = v21 - v19;
  v107 = v42;
  v108 = v40;
  v45 = v41 + v19 * v42;
LABEL_41:
  v115 = v19;
  v111 = v45;
  v112 = v44;
  v113 = v5;
  while (1)
  {
    sub_1BCC93940(v45, v17, type metadata accessor for HourlyForecastBannerViewModel);
    v46 = v119;
    sub_1BCC93940(v5, v119, type metadata accessor for HourlyForecastBannerViewModel);
    v47 = sub_1BCE18FD0();
    sub_1BCC939A0(v46, type metadata accessor for HourlyForecastBannerViewModel);
    sub_1BCC939A0(v17, type metadata accessor for HourlyForecastBannerViewModel);
    if ((v47 & 1) == 0)
    {
LABEL_46:
      v19 = v115 + 1;
      v5 = v113 + v107;
      v44 = v112 - 1;
      v45 = v111 + v107;
      if (v115 + 1 == v108)
      {
        v19 = v108;
        v6 = v103;
        v20 = i;
        v21 = v106;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v41)
    {
      break;
    }

    v48 = v118;
    sub_1BCC938DC(v45, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BCC938DC(v48, v5);
    v5 += v43;
    v45 += v43;
    v38 = __CFADD__(v44++, 1);
    if (v38)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1BCC92DE4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v78 = sub_1BCE19060();
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v66 - v10;
  v82 = sub_1BCE195D0();
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v20 = (a2 - a1) / v16;
  v86 = a1;
  v85 = v83;
  v73 = (v7 + 8);
  v74 = (v13 + 16);
  v72 = (v13 + 8);
  v21 = v18 / v16;
  if (v20 >= v18 / v16)
  {
    v41 = v83;
    sub_1BC9791E8(a2, v18 / v16, v83);
    v42 = v41 + v21 * v16;
    v43 = -v16;
    v44 = v42;
    v81 = a1;
    v68 = v43;
LABEL_36:
    v45 = a2 + v43;
    v46 = a3;
    v66 = v44;
    v47 = v44;
    v69 = a2 + v43;
    v70 = a2;
    while (1)
    {
      if (v42 <= v83)
      {
        v86 = a2;
        v84 = v47;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v67 = v47;
      v79 = v46 + v43;
      v48 = v42 + v43;
      v49 = v42;
      v50 = *v74;
      v51 = v45;
      v52 = v82;
      v53 = v46;
      (*v74)(v80, v42 + v43, v82);
      v54 = v75;
      v50(v75, v51, v52);
      v55 = v76;
      sub_1BCE195A0();
      v56 = v77;
      sub_1BCE195A0();
      LODWORD(v71) = sub_1BCE18FD0();
      v57 = *v73;
      v58 = v56;
      v59 = v78;
      (*v73)(v58, v78);
      v57(v55, v59);
      v60 = *v72;
      (*v72)(v54, v52);
      v60(v80, v52);
      if (v71)
      {
        v42 = v49;
        a3 = v79;
        if (v53 < v70 || v79 >= v70)
        {
          a2 = v69;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v67;
          v43 = v68;
          a1 = v81;
        }

        else
        {
          v64 = v67;
          v43 = v68;
          v44 = v67;
          v17 = v53 == v70;
          v65 = v69;
          a2 = v69;
          a1 = v81;
          if (!v17)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v65;
            v44 = v64;
          }
        }

        goto LABEL_36;
      }

      v61 = v79;
      if (v53 < v49 || v79 >= v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v61;
        v42 = v48;
        v47 = v48;
        v45 = v69;
        a2 = v70;
        a1 = v81;
        v43 = v68;
      }

      else
      {
        v47 = v48;
        v17 = v49 == v53;
        v46 = v79;
        v42 = v48;
        v45 = v69;
        a2 = v70;
        a1 = v81;
        v43 = v68;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v61;
          v42 = v48;
          v47 = v48;
        }
      }
    }

    v86 = a2;
    v84 = v66;
  }

  else
  {
    v22 = v83;
    sub_1BC9791E8(a1, (a2 - a1) / v16, v83);
    v70 = v16;
    v71 = v22 + v20 * v16;
    v84 = v71;
    v79 = a3;
    while (v83 < v71 && a2 < a3)
    {
      v81 = a1;
      v24 = *v74;
      v25 = v80;
      v26 = v82;
      (*v74)(v80, a2, v82);
      v27 = v75;
      v24(v75, v83, v26);
      v28 = v76;
      sub_1BCE195A0();
      v29 = v77;
      sub_1BCE195A0();
      v30 = sub_1BCE18FD0();
      v31 = a2;
      v32 = *v73;
      v33 = v29;
      v34 = v78;
      (*v73)(v33, v78);
      v32(v28, v34);
      v35 = *v72;
      (*v72)(v27, v26);
      v35(v25, v26);
      if (v30)
      {
        v36 = v70;
        a2 = v31 + v70;
        v37 = v81;
        if (v81 < v31 || v81 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
        }

        else
        {
          a3 = v79;
          if (v81 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v36 = v70;
        v39 = v83 + v70;
        v37 = v81;
        if (v81 < v83 || v81 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
          a2 = v31;
        }

        else
        {
          a3 = v79;
          a2 = v31;
          if (v81 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v85 = v39;
        v83 = v39;
      }

      a1 = v37 + v36;
      v86 = a1;
    }
  }

LABEL_58:
  sub_1BCBECCE4(&v86, &v85, &v84);
}

void sub_1BCC93450(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for HourlyForecastBannerViewModel();
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v56 = a1;
  v55 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1BCA1511C(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v50 = a2 + v29;
    v51 = a2;
    v31 = a3;
    v32 = v30;
    v47 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = v51;
        v54 = v32;
        goto LABEL_58;
      }

      if (v51 <= a1)
      {
        break;
      }

      v46 = v32;
      v33 = a4;
      v34 = v31 + v29;
      v35 = v28 + v29;
      v36 = v31;
      sub_1BCC93940(v28 + v29, v11, type metadata accessor for HourlyForecastBannerViewModel);
      v37 = v11;
      v38 = v52;
      sub_1BCC93940(v50, v52, type metadata accessor for HourlyForecastBannerViewModel);
      v39 = sub_1BCE18FD0();
      v40 = v38;
      v11 = v37;
      sub_1BCC939A0(v40, type metadata accessor for HourlyForecastBannerViewModel);
      sub_1BCC939A0(v37, type metadata accessor for HourlyForecastBannerViewModel);
      if (v39)
      {
        v43 = v36 < v51 || v34 >= v51;
        a4 = v33;
        if (v43)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v34;
          v30 = v46;
          a1 = v48;
          v29 = v49;
        }

        else
        {
          v15 = v36 == v51;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          a3 = v34;
          v30 = v46;
          a1 = v48;
          if (!v15)
          {
            v30 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
          }
        }

        goto LABEL_36;
      }

      v41 = v36 < v28 || v34 >= v28;
      a4 = v33;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v28 = v35;
        v32 = v35;
        a1 = v48;
        v29 = v49;
        v30 = v47;
      }

      else
      {
        v32 = v35;
        v15 = v28 == v36;
        v31 = v34;
        v28 = v35;
        v42 = v34;
        a1 = v48;
        v29 = v49;
        v30 = v47;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v42;
          v28 = v35;
          v32 = v35;
        }
      }
    }

    v56 = v51;
    v54 = v30;
  }

  else
  {
    sub_1BCA1511C(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v54 = v51;
    while (a4 < v51 && a2 < a3)
    {
      v21 = a3;
      sub_1BCC93940(a2, v11, type metadata accessor for HourlyForecastBannerViewModel);
      v22 = a2;
      v23 = v52;
      sub_1BCC93940(a4, v52, type metadata accessor for HourlyForecastBannerViewModel);
      v24 = sub_1BCE18FD0();
      sub_1BCC939A0(v23, type metadata accessor for HourlyForecastBannerViewModel);
      sub_1BCC939A0(v11, type metadata accessor for HourlyForecastBannerViewModel);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v56 = a1;
    }
  }

LABEL_58:
  sub_1BCBECDFC(&v56, &v55, &v54);
}

uint64_t sub_1BCC938DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastBannerViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCC93940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCC939A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCC939F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SunriseSunsetDayRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_3();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - v21;
  sub_1BC962464(a2, v12);
  OUTLINED_FUNCTION_5_16(v12);
  if (v26)
  {
    v23 = v12;
  }

  else
  {
    v33[1] = a1;
    v24 = *(v15 + 32);
    v24(v22, v12, v13);
    v25 = type metadata accessor for SunriseSunsetDescriptionContext();
    sub_1BC962464(a2 + *(v25 + 20), v2);
    OUTLINED_FUNCTION_5_16(v2);
    if (!v26)
    {
      v24(v19, v2, v13);
      sub_1BC962464(a2 + *(v25 + 24), v8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v13);
      sub_1BCA0A6F0(v8);
      if (EnumTagSinglePayload == 1)
      {
        v30 = *(v15 + 8);
        v30(v19, v13);
        v30(v22, v13);
        goto LABEL_8;
      }

      if (sub_1BCE18FC0())
      {
        if (sub_1BCE18FC0())
        {
          v31 = sub_1BCE18FD0();
LABEL_19:
          v27 = v31;
          goto LABEL_20;
        }

        v27 = 0;
      }

      else
      {
        if ((sub_1BCE18FD0() & 1) == 0)
        {
          v31 = sub_1BCE18FC0();
          goto LABEL_19;
        }

        v27 = 1;
      }

LABEL_20:
      v32 = *(v15 + 8);
      v32(v19, v13);
      v32(v22, v13);
      return v27 & 1;
    }

    (*(v15 + 8))(v22, v13);
    v23 = v2;
  }

  sub_1BCA0A6F0(v23);
LABEL_8:
  v27 = 0;
  return v27 & 1;
}

char *SunriseSunsetDayRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v4 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v88 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v87 = v7;
  sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v85 = v9;
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v84 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v19 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v89 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  v31 = type metadata accessor for SunriseSunsetDescriptionContext();
  sub_1BC962464(a2 + *(v31 + 24), v18);
  OUTLINED_FUNCTION_5_16(v18);
  if (v33)
  {
    v2 = v18;
  }

  else
  {
    v81 = v4;
    v82 = v25;
    v32 = *(v21 + 32);
    v32(v30, v18, v19);
    sub_1BC962464(a2, v2);
    OUTLINED_FUNCTION_5_16(v2);
    if (v33)
    {
      (*(v21 + 8))(v30, v19);
    }

    else
    {
      v79 = v21;
      v80 = v30;
      v34 = v89;
      v32(v89, v2, v19);
      sub_1BC962464(a2 + *(v31 + 20), v14);
      OUTLINED_FUNCTION_5_16(v14);
      if (!v35)
      {
        v78 = a2;
        v32(v82, v14, v19);
        v40 = sub_1BCE18FC0();
        if (v40)
        {
          if (qword_1EDA1EFB0 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          OUTLINED_FUNCTION_7();
          swift_beginAccess();
          v41 = qword_1EDA1EFB8;
          v83 = OUTLINED_FUNCTION_1_60();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1BCE3E050;
          if (qword_1EDA1EBE8 != -1)
          {
            OUTLINED_FUNCTION_1_16();
          }

          v43 = qword_1EDA2F018;
          sub_1BCE191B0();
          sub_1BCE19270();
          v44 = OUTLINED_FUNCTION_8_44();
          v45(v44);
          v46 = sub_1BCE19240();
          v47 = OUTLINED_FUNCTION_14_24();
          v48(v47);
          OUTLINED_FUNCTION_10_39();
          v49 = sub_1BC9600B0();
          v37 = v49;
          v51 = v50;
          if (v46)
          {
            v90 = v49;
            v91 = v50;
            v76 = OUTLINED_FUNCTION_4_51();
            v77 = v76;
            OUTLINED_FUNCTION_9_39();
            OUTLINED_FUNCTION_7();
            sub_1BCE1DB90();
            OUTLINED_FUNCTION_15_30();
            v51 = v43;
          }
        }

        else
        {
          if ((sub_1BCE18FD0() & 1) == 0)
          {
            if (qword_1EDA1EFB0 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            OUTLINED_FUNCTION_7();
            swift_beginAccess();
            v62 = qword_1EDA1EFB8;
            v83 = OUTLINED_FUNCTION_1_60();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_1BCE3E050;
            if (qword_1EDA1EBE8 != -1)
            {
              OUTLINED_FUNCTION_1_16();
            }

            sub_1BCE191B0();
            sub_1BCE19270();
            v64 = OUTLINED_FUNCTION_8_44();
            v65(v64);
            v66 = sub_1BCE19240();
            v67 = OUTLINED_FUNCTION_14_24();
            v68(v67);
            OUTLINED_FUNCTION_10_39();
            v69 = sub_1BC9600B0();
            v37 = v69;
            v71 = v70;
            v72 = MEMORY[0x1E69E6158];
            if (v66)
            {
              v90 = v69;
              v91 = v70;
              v76 = OUTLINED_FUNCTION_4_51();
              v77 = v76;
              OUTLINED_FUNCTION_9_39();
              OUTLINED_FUNCTION_7();
              v37 = sub_1BCE1DB90();
              v74 = v73;

              v71 = v74;
            }

            v61 = v79;
            *(v63 + 56) = v72;
            *(v63 + 64) = sub_1BC9804E0();
            *(v63 + 32) = v37;
            *(v63 + 40) = v71;
            sub_1BCE1D250();
            OUTLINED_FUNCTION_26_3();

            goto LABEL_37;
          }

          if (qword_1EDA1EFB0 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          OUTLINED_FUNCTION_7();
          swift_beginAccess();
          v52 = qword_1EDA1EFB8;
          v77 = OUTLINED_FUNCTION_1_60();
          v83 = v53;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1BCE3E050;
          if (qword_1EDA1EBE8 != -1)
          {
            OUTLINED_FUNCTION_1_16();
          }

          v54 = qword_1EDA2F018;
          sub_1BCE191B0();
          v55 = v87;
          sub_1BCE19270();
          v56 = OUTLINED_FUNCTION_8_44();
          v57(v56);
          v58 = sub_1BCE19240();
          (*(v88 + 8))(v55, v81);
          v59 = sub_1BC9600B0();
          v37 = v59;
          v51 = v60;
          if (v58)
          {
            v90 = v59;
            v91 = v60;
            v76 = OUTLINED_FUNCTION_4_51();
            v77 = v76;
            OUTLINED_FUNCTION_9_39();
            OUTLINED_FUNCTION_7();
            sub_1BCE1DB90();
            OUTLINED_FUNCTION_15_30();
            v51 = v54;
          }
        }

        v61 = v79;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1BC9804E0();
        *(v42 + 32) = v37;
        *(v42 + 40) = v51;
        sub_1BCE1D250();
        OUTLINED_FUNCTION_26_3();

LABEL_37:

        v75 = *(v61 + 8);
        v75(v82, v19);
        v75(v89, v19);
        v75(v80, v19);
        return v37;
      }

      v36 = *(v79 + 8);
      v36(v34, v19);
      v36(v80, v19);
      v2 = v14;
    }
  }

  sub_1BCA0A6F0(v2);
  v37 = "here should be no line break.";
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v38 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_26_3();

  return v37;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetDayRule(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, const void *a7@<X6>, char *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v14 = *a1;
  v15 = *a3;
  v16 = *(a3 + 8);
  v29 = *a8;
  v17 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  type metadata accessor for BackgroundMoonData();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = sub_1BCE19060();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  *a9 = v14;
  (*(*(v22 - 8) + 32))(&a9[v17[5]], a2, v22);
  v26 = &a9[v17[6]];
  *v26 = v15;
  v26[8] = v16;
  sub_1BC9643D8(a4, &a9[v17[8]], &qword_1EBD08688);
  a9[v17[9]] = a5;
  sub_1BC9643D8(a6, &a9[v17[10]], &qword_1EBD0BC08);
  memcpy(&a9[v17[11]], a7, 0x59uLL);
  a9[v17[12]] = v29;
  return sub_1BC9643D8(a10, &a9[v17[13]], &qword_1EBD0BC10);
}

uint64_t WeatherConditionBackgroundModelFactory.__allocating_init(gradientManager:)(__int128 *a1)
{
  OUTLINED_FUNCTION_15_31();
  v2 = swift_allocObject();
  WeatherConditionBackgroundModelFactory.init(gradientManager:)(a1);
  return v2;
}

uint64_t WeatherConditionBackgroundModelFactory.init(gradientManager:)(__int128 *a1)
{
  OUTLINED_FUNCTION_18_21(a1);
  *(v1 + 56) = 0;
  return v1;
}

uint64_t WeatherConditionBackgroundModelFactory.__allocating_init(gradientManager:automationEnabled:)(__int128 *a1, char a2)
{
  OUTLINED_FUNCTION_15_31();
  v4 = swift_allocObject();
  WeatherConditionBackgroundModelFactory.init(gradientManager:automationEnabled:)(a1, a2);
  return v4;
}

uint64_t WeatherConditionBackgroundModelFactory.init(gradientManager:automationEnabled:)(__int128 *a1, char a2)
{
  OUTLINED_FUNCTION_18_21(a1);
  *(v2 + 56) = a2;
  *(v2 + 57) = 0;
  return v2;
}

uint64_t WeatherConditionBackgroundModelFactory.__allocating_init(gradientManager:automationEnabled:isDemoPresetActive:)(__int128 *a1, char a2, char a3)
{
  OUTLINED_FUNCTION_15_31();
  v6 = swift_allocObject();
  WeatherConditionBackgroundModelFactory.init(gradientManager:automationEnabled:isDemoPresetActive:)(a1, a2, a3);
  return v6;
}

uint64_t WeatherConditionBackgroundModelFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OUTLINED_FUNCTION_15_31();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void *VFXSceneTemplateManager.templateBackgroundScene.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v6 = 0;
    v2 = sub_1BCC94BE4(&v6);
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    v4 = v2;
    sub_1BCA7BE08(v3);
  }

  sub_1BCA7BDF8(v1);
  return v2;
}

void sub_1BCC94BA8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  VFXSceneTemplateManager.templateBackgroundScene.setter(v1);
}

void VFXSceneTemplateManager.templateBackgroundScene.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_0_63(v2);
}

uint64_t sub_1BCC94BE4(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-1] - v6;
  v8 = sub_1BCE18E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32[-1] - v13;
  v15 = *a1;
  LOBYTE(v32[0]) = *a1;
  VFXEffectType.url.getter(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1BCB1E26C(v7);
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v16 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v16, qword_1EDA1EE80);
    v17 = sub_1BCE1ACA0();
    v18 = sub_1BCE1D8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32[0] = v20;
      *v19 = 136446210;
      if (v15)
      {
        v21 = 0x6F6973696C6C6F63;
      }

      else
      {
        v21 = 0x756F72676B636162;
      }

      if (v15)
      {
        v22 = 0xE90000000000006ELL;
      }

      else
      {
        v22 = 0xEA0000000000646ELL;
      }

      v23 = sub_1BC98FE38(v21, v22, v32);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1BC940000, v17, v18, "Failed to create template VFX scene for effect type = %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB31B10](v20, -1, -1);
      MEMORY[0x1BFB31B10](v19, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v25 = [objc_allocWithZone(sub_1BCE1AD90()) init];
    sub_1BCE1AD50();
    sub_1BCE1AD20();
    sub_1BCE1AD80();
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = sub_1BCDBD6FC(0x746C7561666564, 0xE700000000000000, 0x62696C6C6174656DLL, 0xE800000000000000, qword_1EDA1EFB8);
    if (v26)
    {
      v27 = v26;
      sub_1BCE18E20();

      (*(v9 + 16))(v4, v11, v8);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
      sub_1BCE1AD10();
      (*(v9 + 8))(v11, v8);
    }

    objc_allocWithZone(sub_1BCE1AEA0());
    v28 = v25;
    v24 = sub_1BCE1ADF0();
    v29 = sub_1BCE1AE60();

    (*(v9 + 8))(v14, v8);
  }

  return v24;
}

void (*VFXSceneTemplateManager.templateBackgroundScene.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = VFXSceneTemplateManager.templateBackgroundScene.getter();
  return sub_1BCC950AC;
}

void sub_1BCC950AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  *(v3 + 16) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1BCA7BE08(v4);
  }

  else
  {

    sub_1BCA7BE08(v4);
  }
}

void *VFXSceneTemplateManager.templateCollisionScene.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v6 = 1;
    v2 = sub_1BCC94BE4(&v6);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
    v4 = v2;
    sub_1BCA7BE08(v3);
  }

  sub_1BCA7BDF8(v1);
  return v2;
}

void sub_1BCC95198(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  VFXSceneTemplateManager.templateCollisionScene.setter(v1);
}

void VFXSceneTemplateManager.templateCollisionScene.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  OUTLINED_FUNCTION_0_63(v2);
}

void (*VFXSceneTemplateManager.templateCollisionScene.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = VFXSceneTemplateManager.templateCollisionScene.getter();
  return sub_1BCC9521C;
}

void sub_1BCC9521C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1BCA7BE08(v4);
  }

  else
  {

    sub_1BCA7BE08(v4);
  }
}

int64x2_t VFXSceneTemplateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = vdupq_n_s64(1uLL);
  v0[1] = result;
  return result;
}

uint64_t VFXSceneTemplateManager.deinit()
{
  sub_1BCA7BE08(*(v0 + 16));
  sub_1BCA7BE08(*(v0 + 24));
  return v0;
}

uint64_t VFXSceneTemplateManager.__deallocating_deinit()
{
  VFXSceneTemplateManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1BCC953C0(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA836C8();
  v4 = v3;
  sub_1BCA836C8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE46C80;
  *(a1 + 112) = 0x3E851EB83E570A3DLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE46C90;
  *(a1 + 176) = 1164394496;
  *(a1 + 184) = 0x3E6147AE3E0F5C29;
  *(a1 + 192) = xmmword_1BCE465E0;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 3189922816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3ECCCCCDLL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 5;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3FC000003F000000;
  *(a1 + 1104) = 0x40A0000040800000;
  *(a1 + 1112) = 1090099610;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE465F0;
  *(a1 + 1216) = xmmword_1BCE4E670;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(a1 + 1644) = 16842753;
  *(a1 + 1656) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1652) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4160000041200000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE46CA0;
  *(a1 + 1696) = xmmword_1BCE46620;
  *(a1 + 1712) = xmmword_1BCE46CB0;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47FDE800;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE46CC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E3851EC3D8F5C29;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F666666;
  *(a1 + 2224) = xmmword_1BCE46CD0;
  *(a1 + 2240) = xmmword_1BCE46CE0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

uint64_t sub_1BCC95B78()
{
  v0 = sub_1BCE1A240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC50);
  v5[2] = 0;
  v5[3] = 1;
  v5[1] = 20;
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  result = sub_1BCE1A2B0();
  qword_1EBD0BC30 = result;
  return result;
}

uint64_t sub_1BCC95CD4()
{
  v0 = sub_1BCE1A240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BCE1A260();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A978);
  swift_allocObject();
  result = sub_1BCE1A2C0();
  qword_1EDA1BDB8 = result;
  return result;
}

uint64_t Settings.VFX.AnimatedBackgrounds.AnimationKind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BCE1DEC0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BCC95FD8(uint64_t a1)
{
  v2 = sub_1BC96368C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1BCC9602C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC96368C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1BCC96094()
{
}

uint64_t Settings.VFX.AnimatedBackgrounds.deinit()
{
  v0 = sub_1BCE1A1F0();

  return v0;
}

uint64_t Settings.VFX.AnimatedBackgrounds.__deallocating_deinit()
{
  v0 = Settings.VFX.AnimatedBackgrounds.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

_BYTE *_s3VFXVwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

double sub_1BCC96200@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCC25D40();
  v4 = v3;
  sub_1BCC96994();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3D4800000000000;
  *(a1 + 80) = xmmword_1BCE3C650;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F333333;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE53B00;
  *(a1 + 640) = xmmword_1BCE53B10;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE3C700;
  *(a1 + 704) = 1056964608;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x4150000041300000;
  *(a1 + 728) = 1102714503;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3C6C0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = xmmword_1BCE5D8A0;
  *(a1 + 832) = 1060320051;
  *(a1 + 840) = 0x3E99999A3E800000;
  *(a1 + 848) = 0x41BFD70A41900000;
  *(a1 + 856) = 0xBFFCEC2040C00000;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE3C6E0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1061997773;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x4150000041100000;
  *(a1 + 984) = 1054615798;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = xmmword_1BCE45B10;
  *(a1 + 1088) = 1061997773;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x404F5C293FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x2073756C756D7543;
  *(a1 + 1160) = 0xEB0000000053202DLL;
  *(a1 + 1168) = 0x5F73756C756D7543;
  *(a1 + 1176) = 0xEF53656C676E6953;
  *(a1 + 1184) = 5;
  *(a1 + 1200) = xmmword_1BCE45B20;
  *(a1 + 1216) = xmmword_1BCE3E540;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE45B30;
  *(a1 + 1392) = xmmword_1BCE45B40;
  *(a1 + 1408) = xmmword_1BCE45B50;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE5D8B0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = xmmword_1BCE3E560;
  *(a1 + 1650) = 1;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 2;
  *(a1 + 1776) = xmmword_1BCE3C830;
  *(a1 + 1792) = xmmword_1BCE569C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = xmmword_1BCE3C7C0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417D020C3F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE3C7F0;
  *(a1 + 2240) = xmmword_1BCE3C800;
  result = 0.0000276453247;
  *(a1 + 2256) = xmmword_1BCE45B70;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

double sub_1BCC96994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V22.2D, #0.5 }

  *(v0 + 208) = _Q22;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v7 = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1072) = v7;
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4100000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3DCE0;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q22;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2496) = 0x4396000043160000;
  *(v0 + 2544) = xmmword_1BCE45080;
  *(v0 + 2560) = xmmword_1BCE5D8C0;
  *(v0 + 2576) = xmmword_1BCE5D8D0;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2704) = xmmword_1BCE3C9C0;
  *(v0 + 2720) = xmmword_1BCE3C9D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3600) = 0x4100000042B40000;
  *(v0 + 3608) = 0x3FE87AE120000000;
  *(v0 + 3616) = xmmword_1BCE3D3F0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4824) = 0x3FE6666660000000;
  *(v0 + 4832) = xmmword_1BCE3D420;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 6048) = xmmword_1BCE3D450;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3D470;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = xmmword_1BCE3CBB0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  _Q1 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = _Q1;
  *(v0 + 8592) = _Q1;
  *(v0 + 9808) = _Q1;
  *(v0 + 11024) = _Q1;
  *(v0 + 12240) = _Q1;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12448) = xmmword_1BCE3CEE0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3D530;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 3584) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2144) = _Q0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2640) = _Q22;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = _Q0;
  *(v0 + 2473) = *v12;
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4100000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2288) = v7;
  *(v0 + 2304) = xmmword_1BCE3C910;
  *(v0 + 2320) = xmmword_1BCE3C920;
  *(v0 + 2336) = xmmword_1BCE3C930;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = xmmword_1BCE3CBB0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = xmmword_1BCE3CBC0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6CCCCE0000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = xmmword_1BCE3CBB0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = xmmword_1BCE3CBC0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE0A3D6C0000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3D550;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 8768) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 9984) = xmmword_1BCE3CBB0;
  *(v0 + 11200) = xmmword_1BCE3CBB0;
  *(v0 + 12416) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 13632) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14848) = xmmword_1BCE3CBB0;
  *(v0 + 16064) = xmmword_1BCE3CBB0;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3D590;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1.i64[0];
  *(v0 + 18208) = xmmword_1BCE3D5E0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = vdup_n_s32(0x43960000u);
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x41F0000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 7584) = xmmword_1BCE3CBC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 8800) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10016) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 11232) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 13664) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14880) = xmmword_1BCE3CBC0;
  *(v0 + 16096) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = xmmword_1BCE3DCE0;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 17664) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 10912) = _Q22;
  *(v0 + 12128) = _Q22;
  *(v0 + 13344) = _Q22;
  *(v0 + 17264) = _Q0;
  *(v0 + 18448) = _Q22;
  *(v0 + 19664) = _Q22;
  *(v0 + 20880) = _Q22;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17120) = _Q0;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 20528) = v7;
  *(v0 + 21744) = v7;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 20560) = xmmword_1BCE3C920;
  *(v0 + 21776) = xmmword_1BCE3C920;
  *(v0 + 20576) = xmmword_1BCE3C930;
  *(v0 + 21792) = xmmword_1BCE3C930;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4100000042FA0000;
  *(v0 + 21840) = 0x4100000042FA0000;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 7568) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v23;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE3333340000000;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 14633) = *v22;
  *(v0 + 8224) = _Q0;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FDCCCCCC0000000;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v17;
  *(v0 + 13680) = _Q0;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13417) = *v21;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 12201) = *v20;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9769) = *v18;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332E0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCC98C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>, double a4@<D0>)
{
  v8 = sub_1BCE1C060();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v10 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v14);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a2;
  (*(v10 + 32))(v16 + v15, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *a3 = sub_1BCC996B8;
  a3[1] = v16;
}

uint64_t sub_1BCC98D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_1BCE1CED0();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC60);
  return sub_1BCC98DC8(a2, a1, a3, a4 + *(v9 + 44));
}

uint64_t sub_1BCC98DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v76 = a3;
  v75 = a4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC68);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = (&v58 - v8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC70);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v58 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC78);
  v64 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v62 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC88);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC90);
  v18 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  swift_bridgeObjectRetain_n();
  sub_1BCE1CFB0();
  sub_1BCE1CF90();
  v69 = a1;
  sub_1BCE1CE60();
  sub_1BCE1B730();
  v60 = a2;
  sub_1BCE1B630();
  v24 = v23 * 0.5;
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC98) + 36)];
  v58 = sub_1BCE1B900();
  v26 = *(v58 + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1BCE1BD60();
  v29 = *(*(v28 - 8) + 104);
  v59 = v27;
  v29(v25 + v26, v27, v28);
  *v25 = v24;
  v25[1] = v24;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BCA0) + 36)) = 256;
  *(v17 + 4) = v80;
  v30 = v79;
  *v17 = v78;
  *(v17 + 1) = v30;
  *&v17[*(v15 + 36)] = 0x3FD3333333333333;
  sub_1BCC99740();
  v68 = v22;
  sub_1BCE1C750();
  sub_1BC94C05C(v17, &qword_1EBD0BC88);
  sub_1BCE1C050();
  if (v31 <= 0.0)
  {

    v47 = 1;
    v48 = v73;
    v44 = v67;
  }

  else
  {
    sub_1BCE1CFB0();
    sub_1BCE1CF90();
    sub_1BCE1CE60();
    sub_1BCE1B730();
    sub_1BCE1CEE0();
    sub_1BCE1B910();
    v32 = sub_1BCE1BDF0();
    v33 = v66;
    v34 = &v66[*(v72 + 36)];
    *v34 = v32;
    *(v34 + 1) = 0;
    v34[16] = 1;
    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BCC8) + 44)];
    sub_1BCE1B630();
    v37 = v36 * 0.5;
    v38 = v63;
    v29(v63 + *(v58 + 20), v59, v28);
    *v38 = v37;
    v38[1] = v37;
    sub_1BCC99634();
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v39 = (v38 + *(v61 + 36));
    v40 = v82;
    *v39 = v81;
    v39[1] = v40;
    v39[2] = v83;
    v41 = v65;
    sub_1BCC99884(v38, v65);
    *v35 = 0;
    v35[8] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BCD0);
    sub_1BCC99884(v41, &v35[*(v42 + 48)]);
    sub_1BC94C05C(v38, &qword_1EBD0BC68);
    sub_1BC94C05C(v41, &qword_1EBD0BC68);
    memcpy(v33, __src, 0x98uLL);
    sub_1BCC998F4();
    v43 = v62;
    sub_1BCE1C750();
    sub_1BC94C05C(v33, &qword_1EBD0BC70);
    v44 = v67;
    v45 = v43;
    v46 = v73;
    (*(v64 + 32))(v67, v45, v73);
    v47 = 0;
    v48 = v46;
  }

  __swift_storeEnumTagSinglePayload(v44, v47, 1, v48);
  v49 = *(v18 + 16);
  v50 = v70;
  v51 = v68;
  v52 = v71;
  v49(v70, v68, v71);
  v53 = v74;
  sub_1BC9B95A0(v44, v74);
  v54 = v75;
  v49(v75, v50, v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BCC0);
  sub_1BC9B95A0(v53, &v54[*(v55 + 48)]);
  sub_1BC9B9608(v44);
  v56 = *(v18 + 8);
  v56(v51, v52);
  sub_1BC9B9608(v53);
  return (v56)(v50, v52);
}

uint64_t sub_1BCC99634()
{
  sub_1BCE1B630();
  sub_1BCE1B630();
  sub_1BCE1B630();
  return sub_1BCE1C050();
}

uint64_t sub_1BCC996B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1BCE1C060() - 8);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1BCC98D50(a1, v6, v7, a2);
}

unint64_t sub_1BCC99740()
{
  result = qword_1EBD0BCA8;
  if (!qword_1EBD0BCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BC88);
    sub_1BCC997CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BCA8);
  }

  return result;
}

unint64_t sub_1BCC997CC()
{
  result = qword_1EBD0BCB0;
  if (!qword_1EBD0BCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BC98);
    sub_1BCACDE44();
    sub_1BC957184(&qword_1EBD0BCB8, &qword_1EBD0BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BCB0);
  }

  return result;
}

uint64_t sub_1BCC99884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCC998F4()
{
  result = qword_1EBD0BCD8;
  if (!qword_1EBD0BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BC70);
    sub_1BCC999AC();
    sub_1BC957184(&qword_1EBD0BCF0, &qword_1EBD0BCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BCD8);
  }

  return result;
}

unint64_t sub_1BCC999AC()
{
  result = qword_1EBD0BCE0;
  if (!qword_1EBD0BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0BCE8);
    sub_1BCACDE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0BCE0);
  }

  return result;
}

uint64_t WindCornerContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WindCornerContentView(0);
  v3 = OUTLINED_FUNCTION_1_61(v2);
  return sub_1BCC9AD84(v3, a1, v4);
}

uint64_t WindCornerContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for WindCornerContentView(0);
  return sub_1BCB6B188(a1, a2 + *(v4 + 20), type metadata accessor for WindComplicationDataStatus);
}

uint64_t WindCornerContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BD10);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BD18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v31[0] = type metadata accessor for WindCornerContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for WindComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for WindComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for WindCornerContentView(0);
  v22 = OUTLINED_FUNCTION_1_61(v21);
  sub_1BCC9AD84(v22, v15, v23);
  if (__swift_getEnumTagSinglePayload(v15, 2, v16))
  {
    sub_1BCC9ADE4(v15, type metadata accessor for WindComplicationDataStatus);
    v24 = sub_1BCC9AD30();
    sub_1BCE1C7E0();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_68();
    sub_1BCC9B044(v25, v26);
    v32 = &type metadata for WindCornerContentView.Placeholder;
    v33 = v24;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCB6B188(v15, v20, type metadata accessor for WindComplicationViewModel);
    sub_1BCC9AD84(v20, v11, type metadata accessor for WindComplicationViewModel);
    sub_1BCC9AD84(v11, v7, type metadata accessor for WindCornerContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_68();
    sub_1BCC9B044(v28, v29);
    v30 = sub_1BCC9AD30();
    v32 = &type metadata for WindCornerContentView.Placeholder;
    v33 = v30;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    sub_1BCC9ADE4(v11, type metadata accessor for WindCornerContentView.Content);
    return sub_1BCC9ADE4(v20, type metadata accessor for WindComplicationViewModel);
  }
}

uint64_t sub_1BCC99EB8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_1BCE1C100();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B70);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B78);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v36 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BD60);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BD68);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v36 - v13;
  type metadata accessor for WindComplicationViewModel();
  v46 = v1;
  v50 = sub_1BCE19F90();
  v51 = v14;
  sub_1BC970820();
  v15 = sub_1BCE1C6A0();
  v17 = v16;
  v50 = v15;
  v51 = v16;
  v19 = v18 & 1;
  v52 = v18 & 1;
  v53 = v20;
  sub_1BCE1C0D0();
  sub_1BCE1C930();
  (*(v37 + 8))(v4, v38);
  sub_1BC998CF4(v15, v17, v19);

  if (qword_1EDA191A0 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDA2EF30;
  v51 = *algn_1EDA2EF38;
  v48 = MEMORY[0x1E6981148];
  v49 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v21 = v41;
  sub_1BCE1C8E0();
  v22 = (*(v40 + 8))(v7, v21);
  v23 = v46;
  v50 = sub_1BCA07590(v22, v24);
  v51 = v25;
  sub_1BCE1B880();

  sub_1BC94C05C(v9, &qword_1EBD09B78);
  v26 = v43;
  v27 = &v11[*(v43 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A08) + 28);
  v29 = *MEMORY[0x1E6980FD8];
  v30 = sub_1BCE1C600();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v30);
  *v27 = swift_getKeyPath();
  v31 = sub_1BCC9B0F4();
  v32 = v42;
  sub_1BCE1C760();
  v33 = sub_1BC94C05C(v11, &qword_1EBD0BD60);
  MEMORY[0x1EEE9AC00](v33);
  *(&v36 - 2) = v23;
  v50 = v26;
  v51 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_1BCE1C740();
  return (*(v44 + 8))(v32, v34);
}

uint64_t sub_1BCC9A44C@<X0>(uint64_t a1@<X8>)
{
  sub_1BCA08684();
  sub_1BC970820();
  v2 = sub_1BCE1C6A0();
  v4 = v3;
  v6 = v5;
  sub_1BCE1C320();
  sub_1BCE1C300();

  v7 = sub_1BCE1C610();
  v9 = v8;
  v11 = v10;

  sub_1BC998CF4(v2, v4, v6 & 1);

  if (qword_1EDA1B668 != -1)
  {
    swift_once();
  }

  v12 = sub_1BCE1C5C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1BC998CF4(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_1BCC9A5B0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v27 = sub_1BCE1C100();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B70);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B78);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B80);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v26 - v12;
  if (qword_1EBD06FC0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBD2A0E0;
  v39 = *algn_1EBD2A0E8;
  sub_1BC970820();

  v13 = sub_1BCE1C6A0();
  v15 = v14;
  v38 = v13;
  v39 = v14;
  v17 = v16 & 1;
  v40 = v16 & 1;
  v41 = v18;
  sub_1BCE1C0D0();
  sub_1BCE1C930();
  (*(v1 + 8))(v3, v27);
  sub_1BC998CF4(v13, v15, v17);

  if (qword_1EDA191A0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDA2EF30;
  v39 = *algn_1EDA2EF38;
  v36 = MEMORY[0x1E6981148];
  v37 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v19 = v29;
  sub_1BCE1C8E0();
  (*(v28 + 8))(v6, v19);
  if (qword_1EBD06FB8 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBD2A0D0;
  v39 = *algn_1EBD2A0D8;
  v20 = v30;
  v21 = v32;
  sub_1BCE1B880();
  sub_1BC94C05C(v8, &qword_1EBD09B78);
  v22 = sub_1BCB56760();
  v23 = v31;
  sub_1BCE1C760();
  sub_1BC94C05C(v20, &qword_1EBD09B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A00);
  v38 = v21;
  v39 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BCAC3980();
  v24 = v34;
  sub_1BCE1C740();
  return (*(v33 + 8))(v23, v24);
}