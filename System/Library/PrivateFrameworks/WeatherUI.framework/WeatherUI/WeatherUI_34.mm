uint64_t sub_1BCBFA9E4(uint64_t a1)
{
  v1 = *(a1 + 776);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1BCBFA9FC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x1BFB31B30](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x1BFB31B30](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + 8 * v4);
        v10 = *(v1 + 32 + 8 * v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BCBED394();
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 8 * v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 8 * v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void *sub_1BCBFAB3C(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_1BCB66858(a2 - result, 0);
      if (sub_1BCBAC1C8(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t WeatherDescription.write(to:)()
{
  result = sub_1BCE1D330();
  if (!v0)
  {
    return sub_1BCE1D330();
  }

  return result;
}

uint64_t static WeatherDescription.read(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BCE1D320();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    result = sub_1BCE1D320();
    *a1 = v5;
    a1[1] = v6;
    a1[2] = result;
    a1[3] = v7;
  }

  return result;
}

__n128 sub_1BCBFACAC@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA2B338();
  v4 = v3;
  sub_1BCA2B338();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC361000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE42330;
  *(a1 + 112) = 0x3E4CCCCD3E1374BCLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE412F0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E23D70A3D83126FLL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE42340;
  *(a1 + 240) = 0x41F00000413B04ADLL;
  *(a1 + 248) = 1128792064;
  *(a1 + 256) = 0x3E4CCCCD3E0F5C29;
  *(a1 + 264) = 0x40A00000411684A3;
  *(a1 + 272) = 1091567616;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4396000041900000;
  *(a1 + 328) = 0x3E3851EC3DCCCCCDLL;
  *(a1 + 336) = 0x4000000040E00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
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
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4182A3D741600000;
  *(a1 + 728) = 1066368238;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE42350;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x4190000041400000;
  *(a1 + 856) = 1092107633;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE42360;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4120000041000000;
  *(a1 + 984) = 1083392918;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE42370;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x40A9999940975C29;
  *(a1 + 1112) = 1066171200;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF4C202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE798E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE581C0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3EB851EC3E3851ECLL;
  *(a1 + 1296) = 0x41C8000042340000;
  *(a1 + 1304) = 1082130432;
  *(a1 + 1312) = xmmword_1BCE3E0D0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 1082130432;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(a1 + 1645) = 0x100010101010101;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 6;
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
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x404000003F800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1045220557;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

double sub_1BCBFB464()
{
  unk_1EBD2A304 = 0u;
  xmmword_1EBD2A2E8 = 0u;
  unk_1EBD2A2F8 = 0u;
  xmmword_1EBD2A2D8 = 0u;
  unk_1EBD2A314 = xmmword_1BCE58200;
  unk_1EBD2A324 = xmmword_1BCE58210;
  result = 3.56521972e-12;
  unk_1EBD2A334 = xmmword_1BCE58220;
  dword_1EBD2A344 = 1060823368;
  return result;
}

_BYTE *sub_1BCBFB4B0(_BYTE *result)
{
  switch(*result)
  {
    case 1:
      *(v1 + 76) = 0x3F2666663F59999ALL;
      *(v1 + 84) = 1074370970;
      v2 = xmmword_1BCE58240;
      goto LABEL_6;
    case 2:
      *(v1 + 76) = vdup_n_s32(0x3F733333u);
      *(v1 + 84) = 1074370970;
      v2 = xmmword_1BCE58230;
      goto LABEL_6;
    case 3:
      *(v1 + 88) = xmmword_1BCE58260;
      *(v1 + 104) = 0x3F3AE1483ECCCCCDLL;
      return result;
    case 4:
      return result;
    default:
      *(v1 + 76) = 0x3E8000003F19999ALL;
      *(v1 + 84) = 1074370970;
      v2 = xmmword_1BCE58250;
LABEL_6:
      *(v1 + 60) = v2;
      return result;
  }
}

uint64_t type metadata accessor for PrecipitationComplicationDataStatus()
{
  result = qword_1EDA17660;
  if (!qword_1EDA17660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCBFB5D8()
{
  v0 = type metadata accessor for PrecipitationComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void NextHourPrecipitationStringBuilder.buildListString(from:referenceDate:)()
{
  OUTLINED_FUNCTION_20_0();
  v56 = v0;
  v57 = v4;
  OUTLINED_FUNCTION_11();
  v5 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v55 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v53 = v9 - v8;
  OUTLINED_FUNCTION_13();
  v54 = sub_1BCE19DA0();
  OUTLINED_FUNCTION_2();
  v52 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_15();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE10);
  OUTLINED_FUNCTION_14(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_2();
  v51 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08580);
  OUTLINED_FUNCTION_14(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08588);
  OUTLINED_FUNCTION_2();
  v23 = v22;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  v27 = OUTLINED_FUNCTION_25_0();
  sub_1BCBFC0B8(v27, v28);
  OUTLINED_FUNCTION_29_0(v20, 1, v21);
  if (v29)
  {
    v30 = &qword_1EBD08580;
    v31 = v20;
    goto LABEL_4;
  }

  (*(v23 + 32))(v26, v20, v21);
  v32 = sub_1BCE1A0E0();
  if ((v32 & 1) == 0)
  {
    v41 = OUTLINED_FUNCTION_13_28();
    v42(v41);
    goto LABEL_11;
  }

  v50 = v5;
  v33 = sub_1BCE1A0D0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28();
  *(v34 - 16) = v57;
  v35 = OUTLINED_FUNCTION_26_13();
  sub_1BCA146CC(v35, v36, v37);
  v58 = v38;

  sub_1BCC067B8(&v58);
  if (!v20)
  {

    sub_1BCA13EE8(v58, v3);

    OUTLINED_FUNCTION_29_0(v3, 1, v14);
    if (!v29)
    {
      v43 = v51;
      v44 = OUTLINED_FUNCTION_15_24();
      v45(v44);
      sub_1BCE19D20();
      v46 = v53;
      sub_1BCE19460();
      sub_1BCBFC128();
      OUTLINED_FUNCTION_27_7();
      v47(v46, v50);
      (*(v52 + 8))(v1, v54);
      (*(v43 + 8))(v2, v14);
      v48 = OUTLINED_FUNCTION_13_28();
      v49(v48);
      goto LABEL_11;
    }

    v39 = OUTLINED_FUNCTION_13_28();
    v40(v39);
    v30 = &qword_1EBD0AE10;
    v31 = v3;
LABEL_4:
    sub_1BC94C0B4(v31, v30);
LABEL_11:
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_21();
    return;
  }

  __break(1u);
}

void NextHourPrecipitationStringBuilder.buildWidgetString(from:timeZone:referenceDate:)()
{
  OUTLINED_FUNCTION_20_0();
  v50 = v0;
  v51 = v3;
  v48 = v4;
  OUTLINED_FUNCTION_11();
  v5 = sub_1BCE19DA0();
  OUTLINED_FUNCTION_2();
  v49 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_15();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE10);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_85();
  v10 = sub_1BCE19D30();
  OUTLINED_FUNCTION_2();
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08580);
  OUTLINED_FUNCTION_14(v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08588);
  OUTLINED_FUNCTION_2();
  v22 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v26 = OUTLINED_FUNCTION_25_0();
  sub_1BCBFC0B8(v26, v27);
  OUTLINED_FUNCTION_29_0(v19, 1, v20);
  if (v28)
  {
    v29 = &qword_1EBD08580;
    v30 = v19;
    goto LABEL_4;
  }

  (*(v22 + 32))(v25, v19, v20);
  v31 = sub_1BCE1A0E0();
  if ((v31 & 1) == 0)
  {
    v40 = OUTLINED_FUNCTION_42_0();
    v41(v40);
    goto LABEL_11;
  }

  v46 = v5;
  v32 = sub_1BCE1A0D0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28();
  *(v33 - 16) = v51;
  v34 = OUTLINED_FUNCTION_26_13();
  sub_1BCA146CC(v34, v35, v36);
  v52 = v37;

  sub_1BCC067B8(&v52);
  if (!v19)
  {

    sub_1BCA13EE8(v52, v2);

    OUTLINED_FUNCTION_29_0(v2, 1, v10);
    if (!v28)
    {
      v42 = v47;
      (*(v47 + 32))(v15, v2, v10);
      sub_1BCE19D20();
      sub_1BCBFD758(v1, v48, v51);
      OUTLINED_FUNCTION_27_7();
      v43(v1, v46);
      (*(v42 + 8))(v15, v10);
      v44 = OUTLINED_FUNCTION_42_0();
      v45(v44);
      goto LABEL_11;
    }

    v38 = OUTLINED_FUNCTION_42_0();
    v39(v38);
    v29 = &qword_1EBD0AE10;
    v30 = v2;
LABEL_4:
    sub_1BC94C0B4(v30, v29);
LABEL_11:
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_21();
    return;
  }

  __break(1u);
}

void NextHourPrecipitationStringBuilder.buildShortString(from:referenceDate:)()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v3 = sub_1BCE19DA0();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE10);
  OUTLINED_FUNCTION_14(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_15();
  v12 = sub_1BCE19D30();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_1BCE1A0D0();
  v24[2] = v2;
  sub_1BCA146CC(sub_1BCC0685C, v24, v19);
  v25 = v20;

  sub_1BCC067B8(&v25);

  sub_1BCA13EE8(v25, v0);

  OUTLINED_FUNCTION_29_0(v0, 1, v12);
  if (v21)
  {
    sub_1BC94C0B4(v0, &qword_1EBD0AE10);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_23_21();
    v23(v22);
    sub_1BCE19D20();
    sub_1BCC010F0();
    (*(v5 + 8))(v9, v3);
    (*(v14 + 8))(v18, v12);
  }

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCBFC0B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCBFC128()
{
  v0 = sub_1BCE19D60();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19D80();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E6984FC8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985080] || v4 == *MEMORY[0x1E6985068] || v4 == *MEMORY[0x1E6985108] || v4 == *MEMORY[0x1E6985110])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69851B0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984F40] || v4 == *MEMORY[0x1E6984F38] || v4 == *MEMORY[0x1E6984FE0] || v4 == *MEMORY[0x1E6984FE8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985190])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_35:
      swift_beginAccess();
      v11 = qword_1EDA1EFB8;
      v12 = sub_1BCE18B60();

      return v12;
    }

LABEL_258:
    swift_once();
    goto LABEL_35;
  }

  if (v4 == *MEMORY[0x1E69851F0] || v4 == *MEMORY[0x1E69851C8] || v4 == *MEMORY[0x1E6984F88] || v4 == *MEMORY[0x1E6984F90])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69851E0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984FA8] || v4 == *MEMORY[0x1E6984F70] || v4 == *MEMORY[0x1E6985030] || v4 == *MEMORY[0x1E6985028] || v4 == *MEMORY[0x1E6985020] || v4 == *MEMORY[0x1E6985038] || v4 == *MEMORY[0x1E6984FD0] || v4 == *MEMORY[0x1E6984EE0] || v4 == *MEMORY[0x1E69850D8] || v4 == *MEMORY[0x1E69850E8] || v4 == *MEMORY[0x1E6985090] || v4 == *MEMORY[0x1E6984EF0] || v4 == *MEMORY[0x1E69850B8] || v4 == *MEMORY[0x1E69850C0] || v4 == *MEMORY[0x1E6985070] || v4 == *MEMORY[0x1E6984EE8] || v4 == *MEMORY[0x1E6985148] || v4 == *MEMORY[0x1E6985158] || v4 == *MEMORY[0x1E6985118] || v4 == *MEMORY[0x1E6984EF8] || v4 == *MEMORY[0x1E6985150] || v4 == *MEMORY[0x1E6985160] || v4 == *MEMORY[0x1E6985120] || v4 == *MEMORY[0x1E6984F00])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984FF0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69850A0] || v4 == *MEMORY[0x1E6985088] || v4 == *MEMORY[0x1E6985138] || v4 == *MEMORY[0x1E6985140])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69851B8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984F58] || v4 == *MEMORY[0x1E6984F48] || v4 == *MEMORY[0x1E6985000] || v4 == *MEMORY[0x1E6985008])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985198])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985200] || v4 == *MEMORY[0x1E69851D0] || v4 == *MEMORY[0x1E6984F98] || v4 == *MEMORY[0x1E6984FA0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69851E8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  v49 = *MEMORY[0x1E6984F18];
  v50 = *MEMORY[0x1E69850E0];
  v51 = *MEMORY[0x1E69850F0];
  v52 = *MEMORY[0x1E6985078];
  v53 = *MEMORY[0x1E6984F10];
  v54 = *MEMORY[0x1E6985168];
  if (v4 == *MEMORY[0x1E6984FB0] || v4 == *MEMORY[0x1E6984F78] || v4 == *MEMORY[0x1E6985048] || v4 == *MEMORY[0x1E6985040] || v4 == *MEMORY[0x1E6985058] || v4 == *MEMORY[0x1E6985060] || v4 == *MEMORY[0x1E6984FD8] || v4 == *MEMORY[0x1E6984F08] || v4 == *MEMORY[0x1E69850F8] || v4 == *MEMORY[0x1E6985100] || v4 == *MEMORY[0x1E6985098] || v4 == v49 || v4 == v50 || v4 == v51 || v4 == v52 || v4 == v53 || v4 == v54 || v4 == *MEMORY[0x1E6985178] || v4 == *MEMORY[0x1E6985128] || v4 == *MEMORY[0x1E6984F20] || v4 == *MEMORY[0x1E6985170] || v4 == *MEMORY[0x1E6985180] || v4 == *MEMORY[0x1E6985130] || v4 == *MEMORY[0x1E6984F28])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984F80])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985050] || v4 == *MEMORY[0x1E6985018] || v4 == *MEMORY[0x1E69850C8] || v4 == *MEMORY[0x1E69850D0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69851A8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984F30] || v4 == *MEMORY[0x1E69851F8] || v4 == *MEMORY[0x1E6984FB8] || v4 == *MEMORY[0x1E6984FC0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6984F50])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985010] || v4 == *MEMORY[0x1E6984FF8] || v4 == *MEMORY[0x1E69850A8] || v4 == *MEMORY[0x1E69850B0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E6985188])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 == *MEMORY[0x1E69851D8] || v4 == *MEMORY[0x1E69851C0] || v4 == *MEMORY[0x1E6984F60] || v4 == *MEMORY[0x1E6984F68])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_258;
  }

  if (v4 != *MEMORY[0x1E69851A0])
  {
    (*(v1 + 8))(v3, v0, v49, v50, v51, v52, v53, v54);
  }

  return 0;
}

BOOL sub_1BCBFD59C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_15();
  v7 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  a3();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    v14 = OUTLINED_FUNCTION_42_0();
    v15(v14);
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
    {
      sub_1BC94C0B4(v3, &qword_1EBD07868);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v3, v7);
  }

  sub_1BCAE5204();
  OUTLINED_FUNCTION_42_0();
  v16 = sub_1BCE1D1E0();
  (*(v9 + 8))(v13, v7);
  return (v16 & 1) == 0;
}

uint64_t sub_1BCBFD758(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v162 = a3;
  v4 = sub_1BCE19D60();
  v167 = *(v4 - 8);
  v168 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v166 = &v147[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BCE188F0();
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v158 = &v147[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v147[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = &v147[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v147[-v14];
  v16 = sub_1BCE19060();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v164 = &v147[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v147[-v20];
  v22 = sub_1BCE193E0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v147[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BCE192A0();
  v169 = a1;
  sub_1BCE19D70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v165 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC94C0B4(v15, &qword_1EBD07868);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v155 = v23;
    v154 = v17;
    v31 = *(v17 + 32);
    v159 = v16;
    v153 = v31;
    v150 = v17 + 32;
    v31(v21, v15, v16);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
    v33 = sub_1BCE193C0();
    v34 = v25;
    v35 = *(v33 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v149 = *(v35 + 72);
    v151 = v32;
    v37 = swift_allocObject();
    v157 = xmmword_1BCE3E050;
    *(v37 + 16) = xmmword_1BCE3E050;
    v38 = *(v35 + 104);
    v39 = v36;
    v148 = *MEMORY[0x1E6969A88];
    v152 = v33;
    v40 = v38;
    v38(v37 + v36);
    sub_1BC94FCF8();
    v162 = v21;
    v156 = v34;
    sub_1BCE192D0();

    v41 = sub_1BCE18890();
    v43 = v42;
    v44 = v161;
    v160 = *(v160 + 8);
    (v160)(v10, v161);
    if (v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = v41;
    }

    if (v45 < 1)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v46 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v47 = swift_allocObject();
      *(v47 + 16) = v157;
      *(v47 + 56) = MEMORY[0x1E69E6530];
      *(v47 + 64) = MEMORY[0x1E69E65A8];
      *(v47 + 32) = v45;
      v29 = sub_1BCE1D250();
      v30 = v48;
    }

    v49 = v163;
    sub_1BCE19D90();
    v50 = v159;
    if (__swift_getEnumTagSinglePayload(v49, 1, v159) == 1)
    {
      (*(v154 + 8))(v162, v50);
      sub_1BC94C0B4(v49, &qword_1EBD07868);
      v27 = 0;
      v28 = 0;
      v23 = v155;
      v51 = v156;
      goto LABEL_23;
    }

    v52 = v49;
    v53 = v29;
    v153(v164, v52, v50);
    v54 = swift_allocObject();
    *(v54 + 16) = v157;
    v40(v54 + v39, v148, v152);
    sub_1BC94FCF8();
    v55 = v44;
    v56 = v158;
    v57 = v162;
    v58 = v156;
    sub_1BCE192D0();

    v59 = sub_1BCE18890();
    v61 = v60;
    (v160)(v56, v55);
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v59;
    }

    if (v62 < 1)
    {
      v25 = v58;
      v27 = 0;
      v28 = 0;
      v23 = v155;
    }

    else
    {
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      v25 = v58;
      swift_beginAccess();
      v63 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v64 = swift_allocObject();
      *(v64 + 16) = v157;
      *(v64 + 56) = MEMORY[0x1E69E6530];
      *(v64 + 64) = MEMORY[0x1E69E65A8];
      *(v64 + 32) = v62;
      v27 = sub_1BCE1D250();
      v28 = v65;

      v23 = v155;
      v57 = v162;
    }

    v66 = *(v154 + 8);
    v67 = v159;
    v66(v164, v159);
    v66(v57, v67);
    v29 = v53;
  }

  v51 = v25;
LABEL_23:
  v68 = v166;
  sub_1BCE19D80();
  v69 = (*(v167 + 88))(v68, v168);
  if (v69 == *MEMORY[0x1E6984FC8])
  {

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

  v70 = v69;
  if (v69 == *MEMORY[0x1E6985080] || v69 == *MEMORY[0x1E6985068] || v69 == *MEMORY[0x1E6985108] || v69 == *MEMORY[0x1E6985110])
  {

    if (qword_1EDA1EFB0 == -1)
    {
LABEL_38:
      swift_beginAccess();
      v74 = qword_1EDA1EFB8;
      v75 = sub_1BCE18B60();

LABEL_39:
      (*(v23 + 8))(v51, v165);
      return v75;
    }

LABEL_96:
    swift_once();
    goto LABEL_38;
  }

  if (v69 == *MEMORY[0x1E69851B0])
  {

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

  if (v69 == *MEMORY[0x1E6984F40])
  {

    if (v30)
    {
      v77 = v29;
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_129;
    }

LABEL_53:
    (*(v23 + 8))(v51, v165);
    return 0;
  }

  if (v69 == *MEMORY[0x1E6984F38])
  {

    if (v30)
    {
      v77 = v29;
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_51:
        swift_beginAccess();
        v78 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1BCE3E050;
        *(v79 + 56) = MEMORY[0x1E69E6158];
        *(v79 + 64) = sub_1BC9804E0();
        *(v79 + 32) = v77;
        *(v79 + 40) = v30;
LABEL_52:
        v75 = sub_1BCE1D250();

        goto LABEL_39;
      }

LABEL_129:
      swift_once();
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  if (v69 == *MEMORY[0x1E6984FE0])
  {
    if (v30)
    {
      if (v28)
      {
        v80 = v27;
        v81 = v29;
        v82 = v30;
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_63;
        }

        goto LABEL_147;
      }

LABEL_70:
      (*(v23 + 8))(v51, v165);
LABEL_71:

      return 0;
    }

LABEL_64:
    (*(v23 + 8))(v51, v165);
LABEL_65:

    return 0;
  }

  if (v69 == *MEMORY[0x1E6984FE8])
  {
    if (v30)
    {
      if (v28)
      {
        v80 = v27;
        v81 = v29;
        v82 = v30;
        if (qword_1EDA1EFB0 == -1)
        {
LABEL_63:
          swift_beginAccess();
          v83 = qword_1EDA1EFB8;
          sub_1BCE18B60();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_1BCE3E030;
          v85 = MEMORY[0x1E69E6158];
          *(v84 + 56) = MEMORY[0x1E69E6158];
          v86 = sub_1BC9804E0();
          *(v84 + 32) = v81;
          *(v84 + 40) = v82;
          *(v84 + 96) = v85;
          *(v84 + 104) = v86;
          *(v84 + 64) = v86;
          *(v84 + 72) = v80;
          *(v84 + 80) = v28;
          goto LABEL_52;
        }

LABEL_147:
        swift_once();
        goto LABEL_63;
      }

      goto LABEL_70;
    }

    goto LABEL_64;
  }

  if (v69 == *MEMORY[0x1E6985190])
  {

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

  v156 = v51;
  if (v69 == *MEMORY[0x1E69851F0])
  {
LABEL_74:

    if (v30)
    {
      v87 = v29;
      v88 = v156;
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_159;
    }

    goto LABEL_82;
  }

  if (v69 == *MEMORY[0x1E69851C8])
  {
LABEL_78:

    if (v30)
    {
      v87 = v29;
      v88 = v156;
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_80:
        swift_beginAccess();
        v89 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1BCE3E050;
        *(v90 + 56) = MEMORY[0x1E69E6158];
        *(v90 + 64) = sub_1BC9804E0();
        *(v90 + 32) = v87;
        *(v90 + 40) = v30;
LABEL_81:
        v75 = sub_1BCE1D250();

        (*(v23 + 8))(v88, v165);
        return v75;
      }

LABEL_159:
      swift_once();
      goto LABEL_80;
    }

LABEL_82:
    (*(v23 + 8))(v156, v165);
    return 0;
  }

  if (v69 == *MEMORY[0x1E6984F88])
  {
LABEL_84:
    if (v30)
    {
      v88 = v156;
      if (v28)
      {
        v169 = v27;
        v91 = v29;
        v92 = v30;
        if (qword_1EDA1EFB0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v93 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1BCE3E030;
        v95 = MEMORY[0x1E69E6158];
        *(v94 + 56) = MEMORY[0x1E69E6158];
        v96 = sub_1BC9804E0();
        *(v94 + 32) = v91;
        *(v94 + 40) = v92;
        *(v94 + 96) = v95;
        *(v94 + 104) = v96;
        v97 = v169;
        *(v94 + 64) = v96;
        *(v94 + 72) = v97;
        *(v94 + 80) = v28;
        goto LABEL_81;
      }

LABEL_108:
      (*(v23 + 8))(v156, v165);
      goto LABEL_71;
    }

LABEL_95:
    (*(v23 + 8))(v156, v165);
    goto LABEL_65;
  }

  if (v69 == *MEMORY[0x1E6984F90])
  {
    goto LABEL_90;
  }

  if (v69 == *MEMORY[0x1E69851E0])
  {

    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v104 = qword_1EDA1EFB8;
    v75 = sub_1BCE18B60();

    goto LABEL_101;
  }

  if (v69 != *MEMORY[0x1E6984FA8])
  {
    v164 = v29;
    v169 = v30;
    v155 = v23;
    if (v69 == *MEMORY[0x1E6984F70])
    {

      if (v169)
      {
        if (qword_1EDA1EFB0 == -1)
        {
LABEL_113:
          swift_beginAccess();
          v109 = qword_1EDA1EFB8;
          sub_1BCE18B60();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v110 = swift_allocObject();
          *(v110 + 16) = xmmword_1BCE3E050;
          *(v110 + 56) = MEMORY[0x1E69E6158];
          *(v110 + 64) = sub_1BC9804E0();
          v111 = v169;
          *(v110 + 32) = v164;
          *(v110 + 40) = v111;
LABEL_127:
          v75 = sub_1BCE1D250();

LABEL_128:
          (*(v155 + 8))(v156, v165);
          return v75;
        }

LABEL_199:
        swift_once();
        goto LABEL_113;
      }

      goto LABEL_441;
    }

    if (v69 == *MEMORY[0x1E6985030])
    {
      if (v169)
      {
        if (v28)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_359;
        }

LABEL_455:
        (*(v155 + 8))(v156, v165);
        goto LABEL_71;
      }

      goto LABEL_454;
    }

    if (v69 == *MEMORY[0x1E6985028])
    {
      if (!v169)
      {
        goto LABEL_454;
      }

      if (!v28)
      {
        goto LABEL_455;
      }

      if (qword_1EDA1EFB0 == -1)
      {
LABEL_126:
        swift_beginAccess();
        v112 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1BCE3E030;
        v114 = MEMORY[0x1E69E6158];
        *(v113 + 56) = MEMORY[0x1E69E6158];
        v115 = sub_1BC9804E0();
        *(v113 + 32) = v164;
        *(v113 + 40) = v169;
        *(v113 + 96) = v114;
        *(v113 + 104) = v115;
        *(v113 + 64) = v115;
        *(v113 + 72) = v27;
        *(v113 + 80) = v28;
        goto LABEL_127;
      }

LABEL_359:
      swift_once();
      goto LABEL_126;
    }

    if (v69 == *MEMORY[0x1E6985020])
    {

      if (v169)
      {
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_199;
      }

      goto LABEL_441;
    }

    if (v69 == *MEMORY[0x1E6985038])
    {

      if (v169)
      {
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_199;
      }

      goto LABEL_441;
    }

    if (v69 == *MEMORY[0x1E6984FD0] || v69 == *MEMORY[0x1E6984EE0])
    {

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v69 == *MEMORY[0x1E69850D8])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E69850E8])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E6985090])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

LABEL_407:
        swift_once();
        goto LABEL_126;
      }

      v23 = v155;
      v30 = v169;
      v29 = v164;
      if (v69 == *MEMORY[0x1E6984EF0])
      {
        goto LABEL_74;
      }

      if (v69 == *MEMORY[0x1E69850B8] || v69 == *MEMORY[0x1E69850C0] || v69 == *MEMORY[0x1E6985070] || v69 == *MEMORY[0x1E6984EE8])
      {
        goto LABEL_78;
      }

      if (v69 == *MEMORY[0x1E6985148] || v69 == *MEMORY[0x1E6985158] || v69 == *MEMORY[0x1E6985118] || v69 == *MEMORY[0x1E6984EF8])
      {
        goto LABEL_84;
      }

      if (v69 == *MEMORY[0x1E6985150] || v69 == *MEMORY[0x1E6985160] || v69 == *MEMORY[0x1E6985120] || v69 == *MEMORY[0x1E6984F00])
      {
LABEL_90:
        if (!v30)
        {
          goto LABEL_95;
        }

        if (!v28)
        {
          goto LABEL_108;
        }

        v98 = v29;
        v99 = v30;
        if (qword_1EDA1EFB0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v100 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_1BCE3E030;
        v102 = MEMORY[0x1E69E6158];
        *(v101 + 56) = MEMORY[0x1E69E6158];
        v103 = sub_1BC9804E0();
        *(v101 + 32) = v98;
        *(v101 + 40) = v99;
        *(v101 + 96) = v102;
        *(v101 + 104) = v103;
        *(v101 + 64) = v103;
        *(v101 + 72) = v27;
        *(v101 + 80) = v28;
        v75 = sub_1BCE1D250();

LABEL_101:
        (*(v23 + 8))(v156, v165);
        return v75;
      }

      if (v69 == *MEMORY[0x1E6984FF0])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

LABEL_425:
        swift_once();
        goto LABEL_146;
      }

      if (v69 == *MEMORY[0x1E69850A0] || v69 == *MEMORY[0x1E6985088] || v69 == *MEMORY[0x1E6985138] || v69 == *MEMORY[0x1E6985140])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_425;
      }

      if (v69 == *MEMORY[0x1E69851B8])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_272;
      }

      if (v69 == *MEMORY[0x1E6984F58])
      {

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E6984F48])
      {

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E6985000])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E6985008])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E6985198])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

LABEL_357:
        swift_once();
        goto LABEL_146;
      }

      if (v69 == *MEMORY[0x1E6985200])
      {

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E69851D0])
      {
LABEL_250:

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E6984F98])
      {
LABEL_254:
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E6984FA0])
      {
LABEL_259:
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E69851E8])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_357;
      }

      if (v69 == *MEMORY[0x1E6984FB0])
      {
LABEL_269:

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E6984F78])
      {

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E6985048])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E6985040])
      {
        if (!v169)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_359;
      }

      if (v69 == *MEMORY[0x1E6985058])
      {

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E6985060])
      {

        if (v169)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_199;
        }

LABEL_441:
        (*(v155 + 8))(v156, v165);
        return 0;
      }

      if (v69 != *MEMORY[0x1E6984FD8] && v69 != *MEMORY[0x1E6984F08])
      {
        if (v69 == *MEMORY[0x1E69850F8])
        {
          if (!v169)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_359;
        }

        if (v69 == *MEMORY[0x1E6985100])
        {
          if (!v169)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_359;
        }

        if (v69 == *MEMORY[0x1E6985098])
        {
          if (!v169)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_359;
        }

        if (v69 == *MEMORY[0x1E6984F18])
        {
          goto LABEL_269;
        }

        if (v69 == *MEMORY[0x1E69850E0] || v69 == *MEMORY[0x1E69850F0] || v69 == *MEMORY[0x1E6985078] || v69 == *MEMORY[0x1E6984F10])
        {
          goto LABEL_250;
        }

        if (v69 == *MEMORY[0x1E6985168] || v69 == *MEMORY[0x1E6985178] || v69 == *MEMORY[0x1E6985128] || v69 == *MEMORY[0x1E6984F20])
        {
          goto LABEL_254;
        }

        if (v69 == *MEMORY[0x1E6985170] || v69 == *MEMORY[0x1E6985180] || v69 == *MEMORY[0x1E6985130] || v69 == *MEMORY[0x1E6984F28])
        {
          goto LABEL_259;
        }

        if (v69 == *MEMORY[0x1E6984F80])
        {

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_146;
          }

          goto LABEL_357;
        }

        if (v69 == *MEMORY[0x1E6985050] || v69 == *MEMORY[0x1E6985018] || v69 == *MEMORY[0x1E69850C8] || v69 == *MEMORY[0x1E69850D0])
        {

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

          goto LABEL_146;
        }

        if (v69 == *MEMORY[0x1E69851A8])
        {

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

          goto LABEL_146;
        }

        if (v69 == *MEMORY[0x1E6984F30])
        {

          if (v169)
          {
            if (qword_1EDA1EFB0 != -1)
            {
              swift_once();
            }

            goto LABEL_113;
          }

          goto LABEL_441;
        }

        if (v69 == *MEMORY[0x1E69851F8])
        {

          if (v169)
          {
            if (qword_1EDA1EFB0 != -1)
            {
              swift_once();
            }

            goto LABEL_113;
          }

          goto LABEL_441;
        }

        if (v69 == *MEMORY[0x1E6984FB8])
        {
          if (v169)
          {
            if (v28)
            {
              if (qword_1EDA1EFB0 != -1)
              {
                swift_once();
              }

              goto LABEL_126;
            }

            goto LABEL_455;
          }

LABEL_454:
          (*(v155 + 8))(v156, v165);
          goto LABEL_65;
        }

        if (v69 == *MEMORY[0x1E6984FC0])
        {
          if (!v169)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_407;
        }

        if (v69 == *MEMORY[0x1E6984F50])
        {

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

          goto LABEL_146;
        }

        if (v69 == *MEMORY[0x1E6985010] || v69 == *MEMORY[0x1E6984FF8] || v69 == *MEMORY[0x1E69850A8] || v69 == *MEMORY[0x1E69850B0])
        {

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_146;
          }

          goto LABEL_425;
        }

        if (v69 != *MEMORY[0x1E6985188])
        {
          if (v69 == *MEMORY[0x1E69851D8])
          {

            if (v169)
            {
              if (qword_1EDA1EFB0 != -1)
              {
                swift_once();
              }

              goto LABEL_113;
            }

            goto LABEL_441;
          }

          if (v69 == *MEMORY[0x1E69851C0])
          {

            if (v169)
            {
              if (qword_1EDA1EFB0 != -1)
              {
                swift_once();
              }

              goto LABEL_113;
            }

            goto LABEL_441;
          }

          if (v69 == *MEMORY[0x1E6984F60])
          {
            if (v169)
            {
              if (v28)
              {
                if (qword_1EDA1EFB0 != -1)
                {
                  swift_once();
                }

                goto LABEL_126;
              }

              goto LABEL_455;
            }
          }

          else
          {
            if (v69 != *MEMORY[0x1E6984F68])
            {
              v146 = *MEMORY[0x1E69851A0];
              (*(v155 + 8))(v156, v165);

              if (v70 != v146)
              {
                (*(v167 + 8))(v166, v168);
              }

              return 0;
            }

            if (v169)
            {
              if (v28)
              {
                if (qword_1EDA1EFB0 != -1)
                {
                  swift_once();
                }

                goto LABEL_126;
              }

              goto LABEL_455;
            }
          }

          goto LABEL_454;
        }

        if (qword_1EDA1EFB0 != -1)
        {
          swift_once();
        }

LABEL_146:
        swift_beginAccess();
        v117 = qword_1EDA1EFB8;
        v75 = sub_1BCE18B60();

        goto LABEL_128;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_146;
      }
    }

LABEL_272:
    swift_once();
    goto LABEL_146;
  }

  v105 = v29;
  v106 = v165;

  if (!v30)
  {
    (*(v23 + 8))(v156, v106);
    return 0;
  }

  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v107 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1BCE3E050;
  *(v108 + 56) = MEMORY[0x1E69E6158];
  *(v108 + 64) = sub_1BC9804E0();
  *(v108 + 32) = v105;
  *(v108 + 40) = v30;
  v75 = sub_1BCE1D250();

  (*(v23 + 8))(v156, v106);
  return v75;
}

uint64_t sub_1BCC010F0()
{
  v0 = sub_1BCE19D60();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19D80();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E6984FC8] || v4 == *MEMORY[0x1E6985080] || v4 == *MEMORY[0x1E6985068] || v4 == *MEMORY[0x1E6985108] || v4 == *MEMORY[0x1E6985110])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E69851B0] || v4 == *MEMORY[0x1E6984F40])
  {
    goto LABEL_22;
  }

  if (v4 == *MEMORY[0x1E6984F38])
  {
    goto LABEL_25;
  }

  if (v4 == *MEMORY[0x1E6984FE0])
  {
LABEL_22:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984FE8])
  {
LABEL_30:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985190] || v4 == *MEMORY[0x1E69851F0])
  {
    goto LABEL_37;
  }

  if (v4 == *MEMORY[0x1E69851C8])
  {
    goto LABEL_25;
  }

  if (v4 == *MEMORY[0x1E6984F88])
  {
    goto LABEL_37;
  }

  if (v4 == *MEMORY[0x1E6984F90])
  {
    goto LABEL_30;
  }

  if (v4 == *MEMORY[0x1E69851E0] || v4 == *MEMORY[0x1E6984FA8])
  {
    goto LABEL_47;
  }

  if (v4 == *MEMORY[0x1E6984F70])
  {
    goto LABEL_25;
  }

  if (v4 == *MEMORY[0x1E6985030])
  {
    goto LABEL_30;
  }

  if (v4 == *MEMORY[0x1E6985028])
  {
    goto LABEL_47;
  }

  if (v4 == *MEMORY[0x1E6985020])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985038])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984FD0] || v4 == *MEMORY[0x1E6984EE0])
  {
LABEL_47:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  v16 = v4 == *MEMORY[0x1E69850D8] || v4 == *MEMORY[0x1E69850E8];
  v17 = v16 || v4 == *MEMORY[0x1E6985090];
  if (v17 || v4 == *MEMORY[0x1E6984EF0])
  {
LABEL_37:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E69850B8] || v4 == *MEMORY[0x1E69850C0] || v4 == *MEMORY[0x1E6985070] || v4 == *MEMORY[0x1E6984EE8])
  {
LABEL_25:
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_26:
      swift_beginAccess();
      v10 = qword_1EDA1EFB8;
      v11 = sub_1BCE18B60();

      return v11;
    }

LABEL_121:
    swift_once();
    goto LABEL_26;
  }

  if (v4 == *MEMORY[0x1E6985148] || v4 == *MEMORY[0x1E6985158] || v4 == *MEMORY[0x1E6985118] || v4 == *MEMORY[0x1E6984EF8])
  {
    goto LABEL_37;
  }

  if (v4 == *MEMORY[0x1E6985150] || v4 == *MEMORY[0x1E6985160] || v4 == *MEMORY[0x1E6985120] || v4 == *MEMORY[0x1E6984F00])
  {
    goto LABEL_30;
  }

  if (v4 == *MEMORY[0x1E6984FF0] || v4 == *MEMORY[0x1E69850A0] || v4 == *MEMORY[0x1E6985088] || v4 == *MEMORY[0x1E6985138] || v4 == *MEMORY[0x1E6985140])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E69851B8] || v4 == *MEMORY[0x1E6984F58])
  {
    goto LABEL_129;
  }

  if (v4 == *MEMORY[0x1E6984F48])
  {
    goto LABEL_132;
  }

  if (v4 == *MEMORY[0x1E6985000])
  {
LABEL_129:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985008])
  {
LABEL_136:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985198] || v4 == *MEMORY[0x1E6985200])
  {
    goto LABEL_145;
  }

  if (v4 == *MEMORY[0x1E69851D0])
  {
    goto LABEL_132;
  }

  if (v4 == *MEMORY[0x1E6984F98])
  {
    goto LABEL_145;
  }

  if (v4 == *MEMORY[0x1E6984FA0])
  {
    goto LABEL_136;
  }

  if (v4 == *MEMORY[0x1E69851E8] || v4 == *MEMORY[0x1E6984FB0])
  {
    goto LABEL_154;
  }

  if (v4 == *MEMORY[0x1E6984F78])
  {
    goto LABEL_132;
  }

  if (v4 == *MEMORY[0x1E6985048])
  {
    goto LABEL_136;
  }

  if (v4 == *MEMORY[0x1E6985040])
  {
    goto LABEL_154;
  }

  if (v4 == *MEMORY[0x1E6985058])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985060])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984FD8] || v4 == *MEMORY[0x1E6984F08])
  {
LABEL_154:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  v36 = v4 == *MEMORY[0x1E69850F8] || v4 == *MEMORY[0x1E6985100];
  if (v36 || v4 == *MEMORY[0x1E6985098])
  {
LABEL_145:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984F18])
  {
    goto LABEL_154;
  }

  if (v4 == *MEMORY[0x1E69850E0] || v4 == *MEMORY[0x1E69850F0] || v4 == *MEMORY[0x1E6985078] || v4 == *MEMORY[0x1E6984F10])
  {
LABEL_132:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985168] || v4 == *MEMORY[0x1E6985178] || v4 == *MEMORY[0x1E6985128] || v4 == *MEMORY[0x1E6984F20])
  {
    goto LABEL_145;
  }

  if (v4 == *MEMORY[0x1E6985170] || v4 == *MEMORY[0x1E6985180] || v4 == *MEMORY[0x1E6985130] || v4 == *MEMORY[0x1E6984F28])
  {
    goto LABEL_136;
  }

  if (v4 == *MEMORY[0x1E6984F80] || v4 == *MEMORY[0x1E6985050] || v4 == *MEMORY[0x1E6985018] || v4 == *MEMORY[0x1E69850C8] || v4 == *MEMORY[0x1E69850D0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E69851A8] || v4 == *MEMORY[0x1E6984F30])
  {
    goto LABEL_237;
  }

  if (v4 == *MEMORY[0x1E69851F8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984FB8])
  {
LABEL_237:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984FC0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984F50] || v4 == *MEMORY[0x1E6985010] || v4 == *MEMORY[0x1E6984FF8] || v4 == *MEMORY[0x1E69850A8] || v4 == *MEMORY[0x1E69850B0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6985188] || v4 == *MEMORY[0x1E69851D8])
  {
    goto LABEL_268;
  }

  if (v4 == *MEMORY[0x1E69851C0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984F60])
  {
LABEL_268:
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 == *MEMORY[0x1E6984F68])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_121;
  }

  if (v4 != *MEMORY[0x1E69851A0])
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

void NextHourPrecipitationStringBuilder.buildIntensityString(from:referenceDate:)()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE18);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  sub_1BCE19F80();
  OUTLINED_FUNCTION_2();
  v39 = v8;
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE20);
  OUTLINED_FUNCTION_14(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_85();
  v16 = sub_1BCE19B60();
  OUTLINED_FUNCTION_2();
  v41 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  if ((sub_1BCE1A0E0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = sub_1BCE1A0F0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_28();
  *(v23 - 16) = v2;
  v24 = OUTLINED_FUNCTION_26_13();
  sub_1BCA147A4(v24, v25, v26);
  v42 = v27;

  sub_1BCC068C4(&v42);
  if (!v2)
  {

    sub_1BCA13FE8(v42, v0);

    OUTLINED_FUNCTION_29_0(v0, 1, v16);
    if (v31)
    {
      v28 = &qword_1EBD0AE20;
      v29 = v0;
    }

    else
    {
      (*(v41 + 32))(v21, v0, v16);
      sub_1BCE19B50();
      v30 = sub_1BCE19F40();
      OUTLINED_FUNCTION_29_0(v6, 1, v30);
      if (!v31)
      {
        sub_1BCE19F30();
        (*(*(v30 - 8) + 8))(v6, v30);
        v35 = v39;
        v34 = v40;
        (*(v39 + 32))(v13, v10, v40);
        static NextHourPrecipitationStringBuilder.buildIntensityString(for:)();
        (*(v35 + 8))(v13, v34);
        v36 = OUTLINED_FUNCTION_23_21();
        v37(v36);
LABEL_10:
        OUTLINED_FUNCTION_21();
        return;
      }

      v32 = OUTLINED_FUNCTION_23_21();
      v33(v32);
      v28 = &qword_1EBD0AE18;
      v29 = v6;
    }

    sub_1BC94C0B4(v29, v28);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t static NextHourPrecipitationStringBuilder.buildIntensityString(for:)()
{
  v0 = sub_1BCE19F80();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_25_0();
  v8(v7);
  v9 = (*(v2 + 88))(v6, v0);
  if (v9 == *MEMORY[0x1E6985250])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x1E6985258])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_6;
    }

LABEL_12:
    OUTLINED_FUNCTION_0();
    goto LABEL_6;
  }

  if (v9 != *MEMORY[0x1E6985248])
  {
    (*(v2 + 8))(v6, v0);
    return 0;
  }

  if (qword_1EDA1EFB0 != -1)
  {
    goto LABEL_12;
  }

LABEL_6:
  OUTLINED_FUNCTION_11_1();
  v10 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_16_1();
  v11 = sub_1BCE18B60();

  return v11;
}

void NextHourPrecipitationStringBuilder.buildLongString(from:timeZone:referenceDate:)()
{
  OUTLINED_FUNCTION_20_0();
  v4 = v3;
  v24 = v5;
  OUTLINED_FUNCTION_11();
  v6 = sub_1BCE19DA0();
  OUTLINED_FUNCTION_2();
  v25 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_15();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE10);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85();
  if (sub_1BCE1A0E0())
  {
    v15 = sub_1BCE1A0D0();
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_28();
    *(v16 - 16) = v4;
    v17 = OUTLINED_FUNCTION_26_13();
    sub_1BCA146CC(v17, v18, v19);
    v26 = v20;

    sub_1BCC067B8(&v26);

    sub_1BCA13EE8(v26, v2);

    OUTLINED_FUNCTION_29_0(v2, 1, v11);
    if (v21)
    {
      sub_1BC94C0B4(v2, &qword_1EBD0AE10);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_15_24();
      v23(v22);
      sub_1BCE19D20();
      sub_1BCC02DFC(v0, v24, v4);
      (*(v25 + 8))(v0, v6);
      (*(v13 + 8))(v1, v11);
    }
  }

  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCC02DFC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v163 = a3;
  v4 = sub_1BCE19D60();
  v168 = *(v4 - 8);
  v169 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v167 = &v148[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BCE188F0();
  v161 = *(v6 - 8);
  v162 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v148[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v148[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v164 = &v148[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v148[-v14];
  v16 = sub_1BCE19060();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v148[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v148[-v20];
  v22 = sub_1BCE193E0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v148[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BCE192A0();
  v170 = a1;
  sub_1BCE19D70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v166 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC94C0B4(v15, &qword_1EBD07868);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v156 = v23;
    v155 = v17;
    v31 = *(v17 + 32);
    v160 = v16;
    v154 = v31;
    v151 = v17 + 32;
    v31(v21, v15, v16);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
    v33 = sub_1BCE193C0();
    v34 = v25;
    v35 = *(v33 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v150 = *(v35 + 72);
    v152 = v32;
    v37 = swift_allocObject();
    v158 = xmmword_1BCE3E050;
    *(v37 + 16) = xmmword_1BCE3E050;
    v38 = *(v35 + 104);
    v39 = v36;
    v149 = *MEMORY[0x1E6969A88];
    v153 = v33;
    v40 = v38;
    v38(v37 + v36);
    sub_1BC94FCF8();
    v163 = v21;
    v157 = v34;
    sub_1BCE192D0();

    v41 = sub_1BCE18890();
    v43 = v42;
    v44 = v162;
    v161 = *(v161 + 8);
    (v161)(v10, v162);
    if (v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = v41;
    }

    if (v45 < 1)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v46 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v47 = swift_allocObject();
      *(v47 + 16) = v158;
      *(v47 + 56) = MEMORY[0x1E69E6530];
      *(v47 + 64) = MEMORY[0x1E69E65A8];
      *(v47 + 32) = v45;
      v29 = sub_1BCE1D250();
      v30 = v48;
    }

    v49 = v164;
    sub_1BCE19D90();
    v50 = v160;
    if (__swift_getEnumTagSinglePayload(v49, 1, v160) == 1)
    {
      (*(v155 + 8))(v163, v50);
      sub_1BC94C0B4(v49, &qword_1EBD07868);
      v27 = 0;
      v28 = 0;
      v23 = v156;
      v51 = v157;
      goto LABEL_23;
    }

    v52 = v49;
    v53 = v29;
    v154(v165, v52, v50);
    v54 = swift_allocObject();
    *(v54 + 16) = v158;
    v40(v54 + v39, v149, v153);
    sub_1BC94FCF8();
    v55 = v44;
    v56 = v159;
    v57 = v163;
    v58 = v157;
    sub_1BCE192D0();

    v59 = sub_1BCE18890();
    v61 = v60;
    (v161)(v56, v55);
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v59;
    }

    if (v62 < 1)
    {
      v25 = v58;
      v27 = 0;
      v28 = 0;
      v23 = v156;
    }

    else
    {
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      v25 = v58;
      swift_beginAccess();
      v63 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v64 = swift_allocObject();
      *(v64 + 16) = v158;
      *(v64 + 56) = MEMORY[0x1E69E6530];
      *(v64 + 64) = MEMORY[0x1E69E65A8];
      *(v64 + 32) = v62;
      v27 = sub_1BCE1D250();
      v28 = v65;

      v23 = v156;
      v57 = v163;
    }

    v66 = *(v155 + 8);
    v67 = v160;
    v66(v165, v160);
    v66(v57, v67);
    v29 = v53;
  }

  v51 = v25;
LABEL_23:
  v68 = v167;
  sub_1BCE19D80();
  v69 = (*(v168 + 88))(v68, v169);
  if (v69 == *MEMORY[0x1E6984FC8])
  {

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

  v70 = v69;
  if (v69 == *MEMORY[0x1E6985080] || v69 == *MEMORY[0x1E6985068] || v69 == *MEMORY[0x1E6985108] || v69 == *MEMORY[0x1E6985110])
  {

    if (qword_1EDA1EFB0 == -1)
    {
LABEL_38:
      swift_beginAccess();
      v74 = qword_1EDA1EFB8;
      v75 = sub_1BCE18B60();

LABEL_39:
      (*(v23 + 8))(v51, v166);
      return v75;
    }

LABEL_96:
    swift_once();
    goto LABEL_38;
  }

  if (v69 == *MEMORY[0x1E69851B0])
  {

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

  if (v69 == *MEMORY[0x1E6984F40])
  {

    if (v30)
    {
      v77 = v29;
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_129;
    }

LABEL_53:
    (*(v23 + 8))(v51, v166);
    return 0;
  }

  if (v69 == *MEMORY[0x1E6984F38])
  {

    if (v30)
    {
      v77 = v29;
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_51:
        swift_beginAccess();
        v78 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1BCE3E050;
        *(v79 + 56) = MEMORY[0x1E69E6158];
        *(v79 + 64) = sub_1BC9804E0();
        *(v79 + 32) = v77;
        *(v79 + 40) = v30;
LABEL_52:
        v75 = sub_1BCE1D250();

        goto LABEL_39;
      }

LABEL_129:
      swift_once();
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  if (v69 == *MEMORY[0x1E6984FE0])
  {
    if (v30)
    {
      if (v28)
      {
        v80 = v27;
        v81 = v29;
        v82 = v30;
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_63;
        }

        goto LABEL_147;
      }

LABEL_70:
      (*(v23 + 8))(v51, v166);
LABEL_71:

      return 0;
    }

LABEL_64:
    (*(v23 + 8))(v51, v166);
LABEL_65:

    return 0;
  }

  if (v69 == *MEMORY[0x1E6984FE8])
  {
    if (v30)
    {
      if (v28)
      {
        v80 = v27;
        v81 = v29;
        v82 = v30;
        if (qword_1EDA1EFB0 == -1)
        {
LABEL_63:
          swift_beginAccess();
          v83 = qword_1EDA1EFB8;
          sub_1BCE18B60();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_1BCE3E030;
          v85 = MEMORY[0x1E69E6158];
          *(v84 + 56) = MEMORY[0x1E69E6158];
          v86 = sub_1BC9804E0();
          *(v84 + 32) = v81;
          *(v84 + 40) = v82;
          *(v84 + 96) = v85;
          *(v84 + 104) = v86;
          *(v84 + 64) = v86;
          *(v84 + 72) = v80;
          *(v84 + 80) = v28;
          goto LABEL_52;
        }

LABEL_147:
        swift_once();
        goto LABEL_63;
      }

      goto LABEL_70;
    }

    goto LABEL_64;
  }

  if (v69 == *MEMORY[0x1E6985190])
  {

    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

  v157 = v51;
  if (v69 == *MEMORY[0x1E69851F0])
  {
LABEL_74:

    if (v30)
    {
      v87 = v29;
      v88 = v157;
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_159;
    }

    goto LABEL_82;
  }

  if (v69 == *MEMORY[0x1E69851C8])
  {
LABEL_78:

    if (v30)
    {
      v87 = v29;
      v88 = v157;
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_80:
        swift_beginAccess();
        v89 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1BCE3E050;
        *(v90 + 56) = MEMORY[0x1E69E6158];
        *(v90 + 64) = sub_1BC9804E0();
        *(v90 + 32) = v87;
        *(v90 + 40) = v30;
LABEL_81:
        v75 = sub_1BCE1D250();

        (*(v23 + 8))(v88, v166);
        return v75;
      }

LABEL_159:
      swift_once();
      goto LABEL_80;
    }

LABEL_82:
    (*(v23 + 8))(v157, v166);
    return 0;
  }

  if (v69 == *MEMORY[0x1E6984F88])
  {
LABEL_84:
    if (v30)
    {
      v88 = v157;
      if (v28)
      {
        v170 = v27;
        v91 = v29;
        v92 = v30;
        if (qword_1EDA1EFB0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v93 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1BCE3E030;
        v95 = MEMORY[0x1E69E6158];
        *(v94 + 56) = MEMORY[0x1E69E6158];
        v96 = sub_1BC9804E0();
        *(v94 + 32) = v91;
        *(v94 + 40) = v92;
        *(v94 + 96) = v95;
        *(v94 + 104) = v96;
        v97 = v170;
        *(v94 + 64) = v96;
        *(v94 + 72) = v97;
        *(v94 + 80) = v28;
        goto LABEL_81;
      }

LABEL_108:
      (*(v23 + 8))(v157, v166);
      goto LABEL_71;
    }

LABEL_95:
    (*(v23 + 8))(v157, v166);
    goto LABEL_65;
  }

  if (v69 == *MEMORY[0x1E6984F90])
  {
    goto LABEL_90;
  }

  if (v69 == *MEMORY[0x1E69851E0])
  {

    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v104 = qword_1EDA1EFB8;
    v75 = sub_1BCE18B60();

    goto LABEL_101;
  }

  if (v69 != *MEMORY[0x1E6984FA8])
  {
    v165 = v29;
    v170 = v30;
    v156 = v23;
    if (v69 == *MEMORY[0x1E6984F70])
    {

      if (v170)
      {
        if (qword_1EDA1EFB0 == -1)
        {
LABEL_113:
          swift_beginAccess();
          v109 = qword_1EDA1EFB8;
          sub_1BCE18B60();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v110 = swift_allocObject();
          *(v110 + 16) = xmmword_1BCE3E050;
          *(v110 + 56) = MEMORY[0x1E69E6158];
          *(v110 + 64) = sub_1BC9804E0();
          v111 = v170;
          *(v110 + 32) = v165;
          *(v110 + 40) = v111;
LABEL_127:
          v75 = sub_1BCE1D250();

LABEL_128:
          (*(v156 + 8))(v157, v166);
          return v75;
        }

LABEL_212:
        swift_once();
        goto LABEL_113;
      }

      goto LABEL_441;
    }

    if (v69 == *MEMORY[0x1E6985030])
    {
      if (v170)
      {
        if (v28)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_358;
        }

LABEL_455:
        (*(v156 + 8))(v157, v166);
        goto LABEL_71;
      }

      goto LABEL_454;
    }

    if (v69 == *MEMORY[0x1E6985028])
    {
      if (!v170)
      {
        goto LABEL_454;
      }

      if (!v28)
      {
        goto LABEL_455;
      }

      if (qword_1EDA1EFB0 == -1)
      {
LABEL_126:
        swift_beginAccess();
        v112 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1BCE3E030;
        v114 = MEMORY[0x1E69E6158];
        *(v113 + 56) = MEMORY[0x1E69E6158];
        v115 = sub_1BC9804E0();
        *(v113 + 32) = v165;
        *(v113 + 40) = v170;
        *(v113 + 96) = v114;
        *(v113 + 104) = v115;
        *(v113 + 64) = v115;
        *(v113 + 72) = v27;
        *(v113 + 80) = v28;
        goto LABEL_127;
      }

LABEL_358:
      swift_once();
      goto LABEL_126;
    }

    if (v69 == *MEMORY[0x1E6985020])
    {

      if (!v170)
      {
        goto LABEL_441;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_113;
      }

LABEL_395:
      swift_once();
      goto LABEL_113;
    }

    if (v69 == *MEMORY[0x1E6985038])
    {

      if (!v170)
      {
        goto LABEL_441;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_113;
      }

      goto LABEL_395;
    }

    if (v69 == *MEMORY[0x1E6984FD0] || v69 == *MEMORY[0x1E6984EE0])
    {

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v69 == *MEMORY[0x1E69850D8])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E69850E8])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E6985090])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

LABEL_401:
        swift_once();
        goto LABEL_126;
      }

      v23 = v156;
      v30 = v170;
      v29 = v165;
      if (v69 == *MEMORY[0x1E6984EF0])
      {
        goto LABEL_74;
      }

      if (v69 == *MEMORY[0x1E69850B8] || v69 == *MEMORY[0x1E69850C0] || v69 == *MEMORY[0x1E6985070] || v69 == *MEMORY[0x1E6984EE8])
      {
        goto LABEL_78;
      }

      if (v69 == *MEMORY[0x1E6985148] || v69 == *MEMORY[0x1E6985158] || v69 == *MEMORY[0x1E6985118] || v69 == *MEMORY[0x1E6984EF8])
      {
        goto LABEL_84;
      }

      if (v69 == *MEMORY[0x1E6985150] || v69 == *MEMORY[0x1E6985160] || v69 == *MEMORY[0x1E6985120] || v69 == *MEMORY[0x1E6984F00])
      {
LABEL_90:
        if (!v30)
        {
          goto LABEL_95;
        }

        if (!v28)
        {
          goto LABEL_108;
        }

        v98 = v29;
        v99 = v30;
        if (qword_1EDA1EFB0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v100 = qword_1EDA1EFB8;
        sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_1BCE3E030;
        v102 = MEMORY[0x1E69E6158];
        *(v101 + 56) = MEMORY[0x1E69E6158];
        v103 = sub_1BC9804E0();
        *(v101 + 32) = v98;
        *(v101 + 40) = v99;
        *(v101 + 96) = v102;
        *(v101 + 104) = v103;
        *(v101 + 64) = v103;
        *(v101 + 72) = v27;
        *(v101 + 80) = v28;
        v75 = sub_1BCE1D250();

LABEL_101:
        (*(v23 + 8))(v157, v166);
        return v75;
      }

      if (v69 == *MEMORY[0x1E6984FF0] || v69 == *MEMORY[0x1E69850A0] || v69 == *MEMORY[0x1E6985088] || v69 == *MEMORY[0x1E6985138] || v69 == *MEMORY[0x1E6985140])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_425;
      }

      if (v69 == *MEMORY[0x1E69851B8])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_271;
      }

      if (v69 == *MEMORY[0x1E6984F58])
      {

        if (!v170)
        {
          goto LABEL_441;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_395;
      }

      if (v69 == *MEMORY[0x1E6984F48])
      {

        if (!v170)
        {
          goto LABEL_441;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

LABEL_390:
        swift_once();
        goto LABEL_113;
      }

      if (v69 == *MEMORY[0x1E6985000])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E6985008])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E6985198])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

LABEL_356:
        swift_once();
        goto LABEL_146;
      }

      if (v69 == *MEMORY[0x1E6985200])
      {

        if (v170)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_212;
        }

        goto LABEL_441;
      }

      if (v69 == *MEMORY[0x1E69851D0])
      {
LABEL_249:

        if (v170)
        {
          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_212;
        }

LABEL_441:
        (*(v156 + 8))(v157, v166);
        return 0;
      }

      if (v69 == *MEMORY[0x1E6984F98])
      {
LABEL_254:
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E6984FA0])
      {
LABEL_259:
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E69851E8])
      {

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

        goto LABEL_356;
      }

      if (v69 == *MEMORY[0x1E6984FB0])
      {
LABEL_268:

        if (!v170)
        {
          goto LABEL_441;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_390;
      }

      if (v69 == *MEMORY[0x1E6984F78])
      {

        if (!v170)
        {
          goto LABEL_441;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_395;
      }

      if (v69 == *MEMORY[0x1E6985048])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E6985040])
      {
        if (!v170)
        {
          goto LABEL_454;
        }

        if (!v28)
        {
          goto LABEL_455;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_126;
        }

        goto LABEL_358;
      }

      if (v69 == *MEMORY[0x1E6985058])
      {

        if (!v170)
        {
          goto LABEL_441;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_390;
      }

      if (v69 == *MEMORY[0x1E6985060])
      {

        if (!v170)
        {
          goto LABEL_441;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_113;
        }

        goto LABEL_390;
      }

      if (v69 != *MEMORY[0x1E6984FD8] && v69 != *MEMORY[0x1E6984F08])
      {
        if (v69 == *MEMORY[0x1E69850F8])
        {
          if (!v170)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_358;
        }

        if (v69 == *MEMORY[0x1E6985100])
        {
          if (!v170)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_401;
        }

        if (v69 == *MEMORY[0x1E6985098])
        {
          if (!v170)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_401;
        }

        if (v69 == *MEMORY[0x1E6984F18])
        {
          goto LABEL_268;
        }

        if (v69 == *MEMORY[0x1E69850E0] || v69 == *MEMORY[0x1E69850F0] || v69 == *MEMORY[0x1E6985078] || v69 == *MEMORY[0x1E6984F10])
        {
          goto LABEL_249;
        }

        if (v69 == *MEMORY[0x1E6985168] || v69 == *MEMORY[0x1E6985178] || v69 == *MEMORY[0x1E6985128] || v69 == *MEMORY[0x1E6984F20])
        {
          goto LABEL_254;
        }

        if (v69 == *MEMORY[0x1E6985170] || v69 == *MEMORY[0x1E6985180] || v69 == *MEMORY[0x1E6985130] || v69 == *MEMORY[0x1E6984F28])
        {
          goto LABEL_259;
        }

        if (v69 == *MEMORY[0x1E6984F80])
        {

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_146;
          }

          goto LABEL_356;
        }

        if (v69 == *MEMORY[0x1E6985050] || v69 == *MEMORY[0x1E6985018] || v69 == *MEMORY[0x1E69850C8] || v69 == *MEMORY[0x1E69850D0])
        {

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

          goto LABEL_146;
        }

        if (v69 == *MEMORY[0x1E69851A8])
        {

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

          goto LABEL_146;
        }

        if (v69 == *MEMORY[0x1E6984F30])
        {

          if (!v170)
          {
            goto LABEL_441;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_390;
        }

        if (v69 == *MEMORY[0x1E69851F8])
        {

          if (!v170)
          {
            goto LABEL_441;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_113;
          }

          goto LABEL_395;
        }

        if (v69 == *MEMORY[0x1E6984FB8])
        {
          if (!v170)
          {
            goto LABEL_454;
          }

          if (!v28)
          {
            goto LABEL_455;
          }

          if (qword_1EDA1EFB0 == -1)
          {
            goto LABEL_126;
          }

          goto LABEL_401;
        }

        if (v69 == *MEMORY[0x1E6984FC0])
        {
          if (v170)
          {
            if (v28)
            {
              if (qword_1EDA1EFB0 != -1)
              {
                swift_once();
              }

              goto LABEL_126;
            }

            goto LABEL_455;
          }

LABEL_454:
          (*(v156 + 8))(v157, v166);
          goto LABEL_65;
        }

        if (v69 == *MEMORY[0x1E6984F50])
        {

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

          goto LABEL_146;
        }

        if (v69 != *MEMORY[0x1E6985010] && v69 != *MEMORY[0x1E6984FF8] && v69 != *MEMORY[0x1E69850A8] && v69 != *MEMORY[0x1E69850B0])
        {
          if (v69 != *MEMORY[0x1E6985188])
          {
            if (v69 == *MEMORY[0x1E69851D8])
            {

              if (v170)
              {
                if (qword_1EDA1EFB0 != -1)
                {
                  swift_once();
                }

                goto LABEL_113;
              }

              goto LABEL_441;
            }

            if (v69 == *MEMORY[0x1E69851C0])
            {

              if (v170)
              {
                if (qword_1EDA1EFB0 != -1)
                {
                  swift_once();
                }

                goto LABEL_113;
              }

              goto LABEL_441;
            }

            if (v69 == *MEMORY[0x1E6984F60])
            {
              if (v170)
              {
                if (v28)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_126;
                }

                goto LABEL_455;
              }
            }

            else
            {
              if (v69 != *MEMORY[0x1E6984F68])
              {
                v147 = *MEMORY[0x1E69851A0];
                (*(v156 + 8))(v157, v166);

                if (v70 != v147)
                {
                  (*(v168 + 8))(v167, v169);
                }

                return 0;
              }

              if (v170)
              {
                if (v28)
                {
                  if (qword_1EDA1EFB0 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_126;
                }

                goto LABEL_455;
              }
            }

            goto LABEL_454;
          }

          if (qword_1EDA1EFB0 != -1)
          {
            swift_once();
          }

LABEL_146:
          swift_beginAccess();
          v117 = qword_1EDA1EFB8;
          v75 = sub_1BCE18B60();

          goto LABEL_128;
        }

        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_146;
        }

LABEL_425:
        swift_once();
        goto LABEL_146;
      }

      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_146;
      }
    }

LABEL_271:
    swift_once();
    goto LABEL_146;
  }

  v105 = v29;
  v106 = v166;

  if (!v30)
  {
    (*(v23 + 8))(v157, v106);
    return 0;
  }

  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v107 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1BCE3E050;
  *(v108 + 56) = MEMORY[0x1E69E6158];
  *(v108 + 64) = sub_1BC9804E0();
  *(v108 + 32) = v105;
  *(v108 + 40) = v30;
  v75 = sub_1BCE1D250();

  (*(v23 + 8))(v157, v106);
  return v75;
}

void sub_1BCC067B8(uint64_t *a1)
{
  v2 = sub_1BCE19D30();
  OUTLINED_FUNCTION_14(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED1F4();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_1BCC06998(v8);
  *a1 = v5;
}

void sub_1BCC068C4(uint64_t *a1)
{
  v2 = *(sub_1BCE19B60() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED3AC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1BCC06B64(v6);
  *a1 = v3;
}

void sub_1BCC06998(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BCE1E040();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BCE19D30();
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = sub_1BCE19D30();
      OUTLINED_FUNCTION_14(v7);
      v9[0] = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v9[1] = v5;
      sub_1BCC0709C(v9, v10, a1, v4, MEMORY[0x1E6984E50], MEMORY[0x1E6984E48], MEMORY[0x1E6984E50], sub_1BCA14F18, MEMORY[0x1E6984E48], sub_1BCBECBEC);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BCC06D34(0, v2, 1, a1, MEMORY[0x1E6984E50], MEMORY[0x1E6984E48]);
  }
}

void sub_1BCC06B64(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BCE1E040();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BCE19B60();
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1BCE19B60() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BCC0709C(v8, v9, a1, v4, MEMORY[0x1E6984DA8], MEMORY[0x1E6984DA0], MEMORY[0x1E6984DA8], sub_1BCA15010, MEMORY[0x1E6984DA0], sub_1BCBECCFC);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BCC06D34(0, v2, 1, a1, MEMORY[0x1E6984DA8], MEMORY[0x1E6984DA0]);
  }
}

void sub_1BCC06D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v71 = a6;
  OUTLINED_FUNCTION_11();
  v70 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_0();
  v69 = v14;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  v68 = v16;
  v17 = OUTLINED_FUNCTION_13();
  v18 = a5(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_0();
  v61 = v20;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v51 - v22;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35();
  v66 = v25;
  v53 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v28 = *(v24 + 16);
    v27 = v24 + 16;
    v29 = *(v27 + 56);
    v63 = (v12 + 8);
    v64 = v28;
    v62 = (v27 - 8);
    v65 = v27;
    v30 = v26 + v29 * (a3 - 1);
    v58 = -v29;
    v59 = (v27 + 16);
    v31 = v6 - a3;
    v60 = v26;
    v52 = v29;
    v32 = v26 + v29 * a3;
    v33 = v66;
    while (2)
    {
      v56 = v30;
      v57 = a3;
      v54 = v32;
      v55 = v31;
      v72 = v31;
      do
      {
        v34 = v64;
        (v64)(v33, v32, v18);
        v35 = v18;
        v36 = v67;
        v37 = OUTLINED_FUNCTION_23_21();
        v38 = v34(v37);
        v39 = v68;
        v40 = v71;
        v41 = (v71)(v38);
        v42 = v69;
        v40(v41);
        v73 = sub_1BCE18FD0();
        v43 = *v63;
        v44 = v42;
        v45 = v70;
        (*v63)(v44, v70);
        v43(v39, v45);
        v46 = *v62;
        v47 = v36;
        v18 = v35;
        (*v62)(v47, v35);
        v46(v33, v35);
        if ((v73 & 1) == 0)
        {
          break;
        }

        if (!v60)
        {
          __break(1u);
          return;
        }

        v48 = *v59;
        v49 = v61;
        (*v59)(v61, v32, v35);
        swift_arrayInitWithTakeFrontToBack();
        v48(v30, v49, v35);
        v30 += v58;
        v32 += v58;
      }

      while (!__CFADD__(v72++, 1));
      a3 = v57 + 1;
      v30 = v56 + v52;
      v31 = v55 - 1;
      v32 = v54 + v52;
      if (v57 + 1 != v53)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCC0709C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t), uint64_t (*a7)(uint64_t), void (*a8)(uint64_t, uint64_t, unint64_t, __n128), uint64_t a9, uint64_t a10)
{
  v167 = a7;
  v168 = a8;
  v187 = a6;
  v157 = a1;
  v166 = a10;
  v165 = a9;
  v186 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v185 = v18;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v184 = v20;
  v21 = OUTLINED_FUNCTION_13();
  v22 = a5(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_0();
  v160 = v24;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v155 - v26;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v27);
  v183 = &v155 - v28;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_35();
  v182 = v31;
  v169 = v30;
  v170 = a3;
  v32 = a3[1];
  if (v32 < 1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v35 = v10;
LABEL_100:
    v11 = *v157;
    if (!*v157)
    {
      goto LABEL_141;
    }

    v37 = v35;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v147 = v34 + 16;
      v148 = *(v34 + 2);
      v149 = v37;
      while (v148 >= 2)
      {
        if (!*v170)
        {
          goto LABEL_138;
        }

        v37 = v34;
        v150 = &v34[16 * v148];
        v151 = *v150;
        v152 = &v147[2 * v148];
        v153 = *(v152 + 1);
        OUTLINED_FUNCTION_31_10(*v170 + *(v169 + 72) * *v150, *v170 + *(v169 + 72) * *v152, *v170 + *(v169 + 72) * v153, v11, v167, v168);
        if (v149)
        {
          break;
        }

        if (v153 < v151)
        {
          goto LABEL_126;
        }

        if (v148 - 2 >= *v147)
        {
          goto LABEL_127;
        }

        *v150 = v151;
        *(v150 + 1) = v153;
        v154 = *v147 - v148;
        if (*v147 < v148)
        {
          goto LABEL_128;
        }

        v148 = *v147 - 1;
        sub_1BCBECE14(v152 + 16, v154, v152);
        *v147 = v148;
        v34 = v37;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v34 = sub_1BCBECBBC();
    goto LABEL_102;
  }

  v155 = a4;
  v33 = 0;
  v179 = (v16 + 8);
  v180 = v30 + 16;
  v177 = (v30 + 32);
  v178 = (v30 + 8);
  v34 = MEMORY[0x1E69E7CC0];
  v181 = v22;
  v35 = v10;
  while (1)
  {
    v36 = v33;
    v37 = (v33 + 1);
    if ((v33 + 1) < v32)
    {
      v156 = v34;
      v171 = v35;
      v172 = (v33 + 1);
      v38 = *v170;
      v188 = v38;
      v39 = *(v30 + 72);
      v40 = v33;
      v158 = v33;
      v41 = v38 + v39 * v37;
      v42 = *(v30 + 16);
      v43 = v182;
      v44 = OUTLINED_FUNCTION_14_20();
      v173 = v45;
      v42(v44);
      v11 = v183;
      v163 = v42;
      v46 = (v42)(v183, v38 + v39 * v40, v22);
      v34 = v184;
      v47 = v187;
      v48 = (v187)(v46);
      v49 = v185;
      v47(v48);
      LODWORD(v164) = sub_1BCE18FD0();
      v50 = v22;
      v51 = *v179;
      v52 = v49;
      v53 = v186;
      (*v179)(v52, v186);
      v162 = v51;
      (v51)(v34, v53);
      v54 = *(v169 + 8);
      (v54)(v11, v50);
      v161 = v54;
      (v54)(v43, v50);
      v55 = v173;
      v56 = (v158 + 2);
      v174 = v39;
      v57 = v188 + v39 * (v158 + 2);
      while (1)
      {
        v58 = v56;
        if (++v172 >= v55)
        {
          break;
        }

        v59 = v181;
        v11 = v182;
        v60 = v163;
        v188 = v56;
        (v163)(v182, v57, v181);
        v61 = v183;
        v62 = OUTLINED_FUNCTION_14_20();
        v63 = v60(v62);
        v64 = v184;
        v65 = v187;
        v66 = (v187)(v63);
        v67 = v185;
        v65(v66);
        LOBYTE(v176) = sub_1BCE18FD0() & 1;
        LODWORD(v176) = v176;
        v68 = v67;
        v69 = v186;
        v34 = v179;
        v70 = v162;
        (v162)(v68, v186);
        v70(v64, v69);
        v71 = v161;
        (v161)(v61, v59);
        (v71)(v11, v59);
        v58 = v188;
        v55 = v173;
        v57 += v174;
        v41 += v174;
        v56 = v188 + 1;
        if ((v164 & 1) != v176)
        {
          goto LABEL_9;
        }
      }

      v172 = v55;
LABEL_9:
      if (v164)
      {
        v37 = v172;
        v36 = v158;
        v22 = v181;
        if (v172 < v158)
        {
          goto LABEL_132;
        }

        if (v158 >= v172)
        {
          OUTLINED_FUNCTION_24_13();
          goto LABEL_32;
        }

        if (v55 >= v58)
        {
          v72 = v58;
        }

        else
        {
          v72 = v55;
        }

        v73 = v174 * (v72 - 1);
        v74 = v174 * v72;
        v75 = v172;
        v34 = v158;
        v76 = v158 * v174;
        v77 = v171;
        do
        {
          if (v34 != --v75)
          {
            v11 = *v170;
            if (!*v170)
            {
              goto LABEL_139;
            }

            v78 = v77;
            v188 = *v177;
            (v188)(v160, v11 + v76, v22);
            v79 = v76 < v73 || v11 + v76 >= v11 + v74;
            if (v79)
            {
              OUTLINED_FUNCTION_28_8();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v73)
            {
              OUTLINED_FUNCTION_28_8();
              swift_arrayInitWithTakeBackToFront();
            }

            (v188)(v11 + v73, v160, v22);
            v77 = v78;
          }

          ++v34;
          v73 -= v174;
          v74 -= v174;
          v76 += v174;
        }

        while (v34 < v75);
        OUTLINED_FUNCTION_24_13();
      }

      else
      {
        OUTLINED_FUNCTION_24_13();
        v22 = v181;
      }

      v37 = v172;
      v36 = v158;
    }

LABEL_32:
    v80 = v170[1];
    if (v37 < v80)
    {
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_131;
      }

      if (v37 - v36 < v155)
      {
        break;
      }
    }

LABEL_48:
    if (v37 < v36)
    {
      goto LABEL_130;
    }

    v171 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v34 + 2) + 1, 1, v34);
      v34 = v145;
    }

    v102 = *(v34 + 2);
    v101 = *(v34 + 3);
    v103 = v102 + 1;
    v30 = v169;
    if (v102 >= v101 >> 1)
    {
      sub_1BCB65134(v101 > 1, v102 + 1, 1, v34);
      v30 = v169;
      v34 = v146;
    }

    *(v34 + 2) = v103;
    v104 = v34 + 32;
    v105 = &v34[16 * v102 + 32];
    *v105 = v36;
    *(v105 + 1) = v37;
    v188 = *v157;
    if (!v188)
    {
      goto LABEL_140;
    }

    v172 = v37;
    if (v102)
    {
      while (1)
      {
        v106 = v103 - 1;
        v107 = &v104[16 * v103 - 16];
        v108 = &v34[16 * v103];
        if (v103 >= 4)
        {
          break;
        }

        if (v103 == 3)
        {
          v109 = *(v34 + 4);
          v110 = *(v34 + 5);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_68:
          if (v112)
          {
            goto LABEL_117;
          }

          v124 = *v108;
          v123 = *(v108 + 1);
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_120;
          }

          v128 = *(v107 + 1);
          v129 = v128 - *v107;
          if (__OFSUB__(v128, *v107))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v126, v129))
          {
            goto LABEL_125;
          }

          if (v126 + v129 >= v111)
          {
            if (v111 < v129)
            {
              v106 = v103 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v103 < 2)
        {
          goto LABEL_119;
        }

        v131 = *v108;
        v130 = *(v108 + 1);
        v119 = __OFSUB__(v130, v131);
        v126 = v130 - v131;
        v127 = v119;
LABEL_83:
        if (v127)
        {
          goto LABEL_122;
        }

        v133 = *v107;
        v132 = *(v107 + 1);
        v119 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v119)
        {
          goto LABEL_124;
        }

        if (v134 < v126)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v106 - 1 >= v103)
        {
          __break(1u);
LABEL_112:
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
          goto LABEL_134;
        }

        if (!*v170)
        {
          goto LABEL_137;
        }

        v138 = &v104[16 * v106 - 16];
        v139 = *v138;
        v11 = v104;
        v140 = &v104[16 * v106];
        v141 = *(v140 + 1);
        v142 = v171;
        OUTLINED_FUNCTION_31_10(*v170 + *(v30 + 72) * *v138, *v170 + *(v30 + 72) * *v140, *v170 + *(v30 + 72) * v141, v188, v167, v168);
        if (v142)
        {
          goto LABEL_110;
        }

        if (v141 < v139)
        {
          goto LABEL_112;
        }

        v37 = v34;
        v143 = *(v34 + 2);
        if (v106 > v143)
        {
          goto LABEL_113;
        }

        *v138 = v139;
        *(v138 + 1) = v141;
        if (v106 >= v143)
        {
          goto LABEL_114;
        }

        v171 = 0;
        v103 = v143 - 1;
        sub_1BCBECE14(v140 + 16, v143 - 1 - v106, v140);
        *(v37 + 16) = v143 - 1;
        v144 = v143 > 2;
        v34 = v37;
        v30 = v169;
        v104 = v11;
        if (!v144)
        {
          goto LABEL_97;
        }
      }

      v113 = &v104[16 * v103];
      v114 = *(v113 - 8);
      v115 = *(v113 - 7);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_115;
      }

      v118 = *(v113 - 6);
      v117 = *(v113 - 5);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_116;
      }

      v120 = *(v108 + 1);
      v121 = v120 - *v108;
      if (__OFSUB__(v120, *v108))
      {
        goto LABEL_118;
      }

      v119 = __OFADD__(v111, v121);
      v122 = v111 + v121;
      if (v119)
      {
        goto LABEL_121;
      }

      if (v122 >= v116)
      {
        v136 = *v107;
        v135 = *(v107 + 1);
        v119 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v119)
        {
          goto LABEL_129;
        }

        if (v111 < v137)
        {
          v106 = v103 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v35 = v171;
    v32 = v170[1];
    v33 = v172;
    if (v172 >= v32)
    {
      goto LABEL_100;
    }
  }

  v81 = &v36[v155];
  if (__OFADD__(v36, v155))
  {
    goto LABEL_133;
  }

  if (v81 >= v80)
  {
    v81 = v170[1];
  }

  if (v81 < v36)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v37 == v81)
  {
    goto LABEL_48;
  }

  v156 = v34;
  v171 = v35;
  v82 = *v170;
  v83 = *(v30 + 72);
  v176 = *(v30 + 16);
  v84 = v82 + v83 * (v37 - 1);
  v173 = -v83;
  v158 = v36;
  v11 = &v36[-v37];
  v174 = v82;
  v159 = v83;
  v85 = (v82 + v37 * v83);
  v161 = v81;
LABEL_41:
  v172 = v37;
  v162 = v85;
  v163 = v11;
  v164 = v84;
  while (1)
  {
    v86 = v182;
    v87 = OUTLINED_FUNCTION_14_20();
    v88 = v176;
    (v176)(v87);
    v89 = v183;
    v90 = v88(v183, v84, v22);
    v91 = v184;
    v92 = v187;
    v93 = (v187)(v90);
    v94 = v185;
    v92(v93);
    LODWORD(v188) = sub_1BCE18FD0();
    v95 = *v179;
    v96 = v94;
    v34 = v186;
    (*v179)(v96, v186);
    v97 = v91;
    v22 = v181;
    (v95)(v97, v34);
    v98 = *v178;
    (*v178)(v89, v22);
    v98(v86, v22);
    if ((v188 & 1) == 0)
    {
LABEL_46:
      v37 = v172 + 1;
      v84 = v164 + v159;
      v11 = v163 - 1;
      v85 = &v162[v159];
      if ((v172 + 1) == v161)
      {
        v37 = v161;
        OUTLINED_FUNCTION_24_13();
        v36 = v158;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v174)
    {
      break;
    }

    v99 = *v177;
    v100 = v175;
    (*v177)(v175, v85, v22);
    OUTLINED_FUNCTION_42_0();
    swift_arrayInitWithTakeFrontToBack();
    v99(v84, v100, v22);
    v84 += v173;
    v85 += v173;
    v79 = __CFADD__(v11++, 1);
    if (v79)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1BCC07C88(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t, unint64_t, __n128), void (*a7)(void), void (*a8)(unint64_t *, unint64_t *, unint64_t *))
{
  v85 = a8;
  v98 = a7;
  v97 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  v96 = v17;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_35();
  v95 = v19;
  v20 = OUTLINED_FUNCTION_13();
  v103 = a5(v20);
  MEMORY[0x1EEE9AC00](v103);
  v94 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v100 = v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_61;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_62;
  }

  v31 = a6;
  v32 = a2;
  v33 = (a2 - a1) / v27;
  v106 = a1;
  v105 = a4;
  v92 = (v15 + 8);
  v93 = (v23 + 16);
  v91 = (v23 + 8);
  v34 = v29 / v27;
  if (v33 >= v29 / v27)
  {
    v102 = a1;
    v31(a2, v29 / v27, a4, v24);
    v88 = a4;
    v61 = a4 + v34 * v27;
    v62 = -v27;
    v63 = v61;
    v64 = v98;
    v87 = -v27;
LABEL_37:
    v89 = v32 + v62;
    v84[0] = v63;
    v101 = v32;
    while (1)
    {
      if (v61 <= v88)
      {
        v106 = v32;
        v104 = v63;
        goto LABEL_59;
      }

      if (v32 <= v102)
      {
        break;
      }

      v86 = v63;
      v99 = a3 + v62;
      v65 = v61 + v62;
      v66 = v61;
      v67 = *v93;
      v68 = v64;
      v69 = v103;
      v90 = a3;
      (v67)(v100, v65, v103);
      v70 = v94;
      v71 = (v67)(v94, v89, v69);
      v72 = v95;
      v73 = v68(v71);
      v74 = v96;
      v68(v73);
      LOBYTE(v68) = sub_1BCE18FD0();
      v75 = *v92;
      v76 = v74;
      v77 = v97;
      (*v92)(v76, v97);
      v75(v72, v77);
      v78 = *v91;
      (*v91)(v70, v69);
      v78(v100, v69);
      if (v68)
      {
        v61 = v66;
        a3 = v99;
        if (v90 < v101 || v99 >= v101)
        {
          v32 = v89;
          OUTLINED_FUNCTION_10_34();
          swift_arrayInitWithTakeFrontToBack();
          v63 = v86;
          v62 = v87;
          v64 = v98;
        }

        else
        {
          v82 = v86;
          v63 = v86;
          v83 = v89;
          v32 = v89;
          v64 = v98;
          v62 = v87;
          if (v90 != v101)
          {
            OUTLINED_FUNCTION_10_34();
            swift_arrayInitWithTakeBackToFront();
            v32 = v83;
            v63 = v82;
          }
        }

        goto LABEL_37;
      }

      v79 = v99;
      if (v90 < v66 || v99 >= v66)
      {
        OUTLINED_FUNCTION_10_34();
        swift_arrayInitWithTakeFrontToBack();
        a3 = v79;
        v61 = v65;
        v63 = v65;
        v64 = v98;
        v32 = v101;
        v62 = v87;
      }

      else
      {
        v63 = v65;
        v28 = v66 == v90;
        a3 = v99;
        v61 = v65;
        v64 = v98;
        v32 = v101;
        v62 = v87;
        if (!v28)
        {
          OUTLINED_FUNCTION_10_34();
          swift_arrayInitWithTakeBackToFront();
          a3 = v79;
          v61 = v65;
          v63 = v65;
        }
      }
    }

    v106 = v32;
    v104 = v84[0];
  }

  else
  {
    v35 = OUTLINED_FUNCTION_42_0();
    v36(v35);
    v89 = v27;
    v90 = a4 + v33 * v27;
    v104 = v90;
    v37 = a2;
    v99 = a3;
    while (a4 < v90 && v37 < a3)
    {
      v101 = v37;
      v102 = a1;
      v39 = *v93;
      v40 = v100;
      v41 = OUTLINED_FUNCTION_42_0();
      v42 = v103;
      v39(v41);
      v43 = v94;
      v44 = (v39)(v94, a4, v42);
      v45 = v95;
      v46 = v98;
      v47 = (v98)(v44);
      v48 = v96;
      v46(v47);
      v49 = sub_1BCE18FD0();
      v50 = *v92;
      v51 = v48;
      v52 = a4;
      v53 = v97;
      (*v92)(v51, v97);
      v50(v45, v53);
      v54 = *v91;
      (*v91)(v43, v42);
      v54(v40, v42);
      if (v49)
      {
        v55 = v89;
        v56 = v102;
        v57 = v101 + v89;
        v58 = v102 < v101 || v102 >= v57;
        a4 = v52;
        if (v58)
        {
          OUTLINED_FUNCTION_6_36();
          swift_arrayInitWithTakeFrontToBack();
          v37 = v57;
          a3 = v99;
        }

        else
        {
          a3 = v99;
          if (v102 != v101)
          {
            OUTLINED_FUNCTION_6_36();
            swift_arrayInitWithTakeBackToFront();
          }

          v37 = v57;
        }
      }

      else
      {
        v37 = v101;
        v56 = v102;
        v55 = v89;
        a4 = v52 + v89;
        v59 = v102 < v52 || v102 >= a4;
        v60 = v52;
        if (v59)
        {
          OUTLINED_FUNCTION_6_36();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v99;
        }

        else
        {
          a3 = v99;
          if (v102 != v60)
          {
            OUTLINED_FUNCTION_6_36();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v105 = a4;
      }

      a1 = v56 + v55;
      v106 = a1;
    }
  }

LABEL_59:
  v85(&v106, &v105, &v104);
}

double sub_1BCC082FC@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCC08A48();
  v4 = v3;
  sub_1BCC08A48();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE43040;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE58320;
  *(a1 + 240) = 0x41A0000041727059;
  *(a1 + 248) = 1128792064;
  *(a1 + 256) = 0x3EAE147B3DE147AELL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310165;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q1;
  *(a1 + 320) = 0x4396000041880000;
  *(a1 + 328) = 0x3EA3D70A3E19999ALL;
  *(a1 + 336) = 0x4000000041076DDCLL;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q1;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q1;
  *(a1 + 544) = _Q1;
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
  *(a1 + 688) = _Q1;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3FE666673FC00000;
  *(a1 + 720) = 0x41A8000041800000;
  *(a1 + 728) = 1095614632;
  *(a1 + 736) = 1;
  *(a1 + 744) = 12;
  *(a1 + 752) = xmmword_1BCE431E0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q1;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A40066666;
  *(a1 + 848) = 0x4190000041700000;
  *(a1 + 856) = 1097622824;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE431F0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q1;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4040000040066666;
  __asm { FMOV            V4.2S, #13.0 }

  *(a1 + 976) = _D4;
  *(a1 + 984) = 1094115412;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE43200;
  *(a1 + 1024) = 0xD000000000000010;
  *(a1 + 1032) = 0x80000001BCE79860;
  *(a1 + 1040) = 0xD000000000000014;
  *(a1 + 1048) = 0x80000001BCE79880;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q1;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V5.2S, #3.25 }

  *(a1 + 1104) = _D5;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q1;
  *(a1 + 1216) = xmmword_1BCE4F390;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3EDC28F63E75C28FLL;
  *(a1 + 1296) = 0x420C000041F00000;
  *(a1 + 1304) = 1099951718;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1092616192;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q1;
  *(a1 + 1488) = _Q1;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q1;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x301000101000101;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v15;
  *(a1 + 1659) = v16;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q1;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q1;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
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
  *(a1 + 2120) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 2128) = 0x407333333FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q1;
  *(a1 + 2176) = _Q1;
  *(a1 + 2192) = 1051931443;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  result = 2.00000047;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q1;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v14;
  return result;
}

double sub_1BCC08A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x41A0000043480000;
  *(v0 + 80) = xmmword_1BCE43220;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE43230;
  *(v0 + 128) = xmmword_1BCE43240;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4928) = 1145405440;
  *(v0 + 6144) = 1145405440;
  *(v0 + 4944) = xmmword_1BCE434C0;
  *(v0 + 6160) = xmmword_1BCE434C0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5104) = xmmword_1BCE434D0;
  *(v0 + 6320) = xmmword_1BCE434D0;
  *(v0 + 5136) = xmmword_1BCE434E0;
  *(v0 + 6352) = xmmword_1BCE434E0;
  *(v0 + 5152) = xmmword_1BCE3CE90;
  *(v0 + 6368) = xmmword_1BCE3CE90;
  *(v0 + 5168) = xmmword_1BCE434F0;
  *(v0 + 6384) = xmmword_1BCE434F0;
  *(v0 + 5216) = xmmword_1BCE43500;
  *(v0 + 6432) = xmmword_1BCE43500;
  *(v0 + 5232) = xmmword_1BCE4F3D0;
  *(v0 + 6448) = xmmword_1BCE4F3D0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5600) = xmmword_1BCE43520;
  *(v0 + 6816) = xmmword_1BCE43520;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 7104) = xmmword_1BCE3E350;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1143930880;
  *(v0 + 7360) = 1143930880;
  *(v0 + 3728) = xmmword_1BCE43410;
  *(v0 + 7376) = xmmword_1BCE43410;
  *(v0 + 3760) = xmmword_1BCE43420;
  *(v0 + 4976) = xmmword_1BCE43420;
  *(v0 + 6192) = xmmword_1BCE43420;
  *(v0 + 7408) = xmmword_1BCE43420;
  *(v0 + 3776) = xmmword_1BCE43430;
  *(v0 + 4992) = xmmword_1BCE43430;
  *(v0 + 6208) = xmmword_1BCE43430;
  *(v0 + 7424) = xmmword_1BCE43430;
  *(v0 + 3920) = xmmword_1BCE43440;
  *(v0 + 7568) = xmmword_1BCE43440;
  *(v0 + 3936) = xmmword_1BCE43450;
  *(v0 + 7584) = xmmword_1BCE43450;
  *(v0 + 3952) = xmmword_1BCE43460;
  *(v0 + 7600) = xmmword_1BCE43460;
  *(v0 + 3968) = xmmword_1BCE3E220;
  *(v0 + 5184) = xmmword_1BCE3E220;
  *(v0 + 6400) = xmmword_1BCE3E220;
  *(v0 + 7616) = xmmword_1BCE3E220;
  *(v0 + 4000) = xmmword_1BCE43470;
  *(v0 + 7648) = xmmword_1BCE43470;
  *(v0 + 4016) = xmmword_1BCE4F3C0;
  *(v0 + 7664) = xmmword_1BCE4F3C0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3E2F0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 4160) = xmmword_1BCE43490;
  *(v0 + 7808) = xmmword_1BCE43490;
  *(v0 + 4192) = xmmword_1BCE434A0;
  *(v0 + 7840) = xmmword_1BCE434A0;
  *(v0 + 4320) = xmmword_1BCE3E320;
  *(v0 + 7968) = xmmword_1BCE3E320;
  *(v0 + 4288) = xmmword_1BCE3CCC0;
  *(v0 + 4384) = xmmword_1BCE3CCC0;
  *(v0 + 7936) = xmmword_1BCE3CCC0;
  *(v0 + 8032) = xmmword_1BCE3CCC0;
  *(v0 + 4512) = xmmword_1BCE434B0;
  *(v0 + 5728) = xmmword_1BCE434B0;
  *(v0 + 6944) = xmmword_1BCE434B0;
  *(v0 + 8160) = xmmword_1BCE434B0;
  *(v0 + 4672) = xmmword_1BCE3EE20;
  *(v0 + 5376) = xmmword_1BCE3EE20;
  *(v0 + 6592) = xmmword_1BCE3EE20;
  *(v0 + 8320) = xmmword_1BCE3EE20;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1132068864;
  *(v0 + 8576) = 1132068864;
  *(v0 + 2512) = xmmword_1BCE43330;
  *(v0 + 8592) = xmmword_1BCE43330;
  *(v0 + 2528) = xmmword_1BCE43340;
  *(v0 + 8608) = xmmword_1BCE43340;
  *(v0 + 2544) = xmmword_1BCE43350;
  *(v0 + 8624) = xmmword_1BCE43350;
  *(v0 + 2560) = xmmword_1BCE43360;
  *(v0 + 8640) = xmmword_1BCE43360;
  *(v0 + 2576) = xmmword_1BCE43370;
  *(v0 + 8656) = xmmword_1BCE43370;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2704) = xmmword_1BCE43380;
  *(v0 + 8784) = xmmword_1BCE43380;
  *(v0 + 2720) = xmmword_1BCE43390;
  *(v0 + 8800) = xmmword_1BCE43390;
  *(v0 + 2736) = xmmword_1BCE433A0;
  *(v0 + 8816) = xmmword_1BCE433A0;
  *(v0 + 2768) = xmmword_1BCE433B0;
  *(v0 + 3984) = xmmword_1BCE433B0;
  *(v0 + 5200) = xmmword_1BCE433B0;
  *(v0 + 6416) = xmmword_1BCE433B0;
  *(v0 + 7632) = xmmword_1BCE433B0;
  *(v0 + 8848) = xmmword_1BCE433B0;
  *(v0 + 2784) = xmmword_1BCE433C0;
  *(v0 + 8864) = xmmword_1BCE433C0;
  *(v0 + 2800) = xmmword_1BCE4F3B0;
  *(v0 + 8880) = xmmword_1BCE4F3B0;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2944) = xmmword_1BCE433E0;
  *(v0 + 9024) = xmmword_1BCE433E0;
  *(v0 + 3072) = xmmword_1BCE433F0;
  *(v0 + 9152) = xmmword_1BCE433F0;
  *(v0 + 3136) = xmmword_1BCE43400;
  *(v0 + 9216) = xmmword_1BCE43400;
  *(v0 + 1280) = 0x4120000043480000;
  *(v0 + 9792) = 0x4120000043480000;
  *(v0 + 1328) = xmmword_1BCE432D0;
  *(v0 + 9840) = xmmword_1BCE432D0;
  *(v0 + 1344) = xmmword_1BCE40770;
  *(v0 + 9856) = xmmword_1BCE40770;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1488) = xmmword_1BCE43300;
  *(v0 + 10000) = xmmword_1BCE43300;
  *(v0 + 1520) = xmmword_1BCE43310;
  *(v0 + 10032) = xmmword_1BCE43310;
  *(v0 + 1568) = xmmword_1BCE3EF30;
  *(v0 + 5120) = xmmword_1BCE3EF30;
  *(v0 + 6336) = xmmword_1BCE3EF30;
  *(v0 + 10080) = xmmword_1BCE3EF30;
  *(v0 + 1584) = xmmword_1BCE4F3A0;
  *(v0 + 10096) = xmmword_1BCE4F3A0;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V5.2D, #1.0 }

  *(v0 + 11008) = 0x41A0000043480000;
  *(v0 + 1296) = xmmword_1BCE43220;
  *(v0 + 9808) = xmmword_1BCE43220;
  *(v0 + 11024) = xmmword_1BCE43220;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11056) = xmmword_1BCE43230;
  *(v0 + 11072) = xmmword_1BCE43240;
  *(v0 + 272) = xmmword_1BCE43290;
  *(v0 + 288) = xmmword_1BCE40100;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 304) = xmmword_1BCE432A0;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 336) = xmmword_1BCE432B0;
  *(v0 + 352) = xmmword_1BCE3D430;
  *(v0 + 11216) = xmmword_1BCE43290;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1504) = xmmword_1BCE40100;
  *(v0 + 10016) = xmmword_1BCE40100;
  *(v0 + 11232) = xmmword_1BCE40100;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11248) = xmmword_1BCE432A0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1552) = xmmword_1BCE432B0;
  *(v0 + 10064) = xmmword_1BCE432B0;
  *(v0 + 11280) = xmmword_1BCE432B0;
  result = 1.0;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 512) = xmmword_1BCE3A880;
  *(v0 + 544) = xmmword_1BCE3D430;
  *(v0 + 576) = xmmword_1BCE3A880;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 736) = xmmword_1BCE3E1D0;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 1760) = xmmword_1BCE3D430;
  *(v0 + 2976) = xmmword_1BCE3D430;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 9056) = xmmword_1BCE3D430;
  *(v0 + 10272) = xmmword_1BCE3D430;
  *(v0 + 11296) = xmmword_1BCE3D430;
  *(v0 + 11488) = xmmword_1BCE3D430;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 816) = xmmword_1BCE3ECA0;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 1952) = xmmword_1BCE3E1D0;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3168) = xmmword_1BCE3E1D0;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 9248) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 10464) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 11680) = xmmword_1BCE3E1D0;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8352) = xmmword_1BCE3CBC0;
  *(v0 + 8368) = _Q5;
  *(v0 + 0x2000) = _Q5;
  *(v0 + 8208) = _Q5;
  *(v0 + 8272) = _Q5;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = _Q5;
  *(v0 + 8336) = _Q5;
  *(v0 + 8224) = _Q5;
  *(v0 + 8240) = _Q5;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q5;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q5;
  *(v0 + 8176) = _Q5;
  *(v0 + 1840) = xmmword_1BCE3ECA0;
  *(v0 + 2032) = xmmword_1BCE3ECA0;
  *(v0 + 8016) = _Q5;
  *(v0 + 8048) = _Q5;
  *(v0 + 8064) = _Q5;
  *(v0 + 8080) = _Q5;
  *(v0 + 3248) = xmmword_1BCE3ECA0;
  *(v0 + 7856) = _Q5;
  *(v0 + 7920) = _Q5;
  *(v0 + 7952) = _Q5;
  *(v0 + 7984) = _Q5;
  *(v0 + 8000) = xmmword_1BCE3E230;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 7888) = _Q5;
  *(v0 + 7904) = xmmword_1BCE3C8C0;
  *(v0 + 9328) = xmmword_1BCE3ECA0;
  *(v0 + 10352) = xmmword_1BCE3ECA0;
  *(v0 + 10544) = xmmword_1BCE3ECA0;
  *(v0 + 11760) = xmmword_1BCE3ECA0;
  *(v0 + 7760) = _Q5;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7792) = _Q5;
  *(v0 + 7824) = _Q5;
  *(v0 + 1728) = xmmword_1BCE3A880;
  *(v0 + 1792) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = _Q5;
  *(v0 + 7552) = _Q5;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 7472) = _Q5;
  *(v0 + 7488) = _Q5;
  *(v0 + 7504) = _Q5;
  *(v0 + 7337) = *v13;
  *(v0 + 7392) = _Q5;
  *(v0 + 7440) = _Q5;
  *(v0 + 7456) = _Q5;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 6704) = _Q5;
  *(v0 + 6720) = _Q5;
  *(v0 + 6736) = _Q5;
  *(v0 + 6752) = _Q5;
  *(v0 + 7328) = 0xC028000000000015;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1060320051;
  *(v0 + 6768) = _Q5;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q5;
  *(v0 + 7280) = _Q5;
  *(v0 + 7296) = _Q5;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q5;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q5;
  *(v0 + 7232) = _Q5;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7088) = _Q5;
  *(v0 + 7120) = _Q5;
  *(v0 + 7136) = xmmword_1BCE3CBC0;
  *(v0 + 7152) = _Q5;
  *(v0 + 6976) = _Q5;
  *(v0 + 6992) = _Q5;
  *(v0 + 7008) = _Q5;
  *(v0 + 7024) = _Q5;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q5;
  *(v0 + 6800) = _Q5;
  *(v0 + 6832) = _Q5;
  *(v0 + 6896) = _Q5;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6928) = _Q5;
  *(v0 + 6960) = _Q5;
  *(v0 + 6848) = _Q5;
  *(v0 + 6864) = _Q5;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 10240) = xmmword_1BCE3A880;
  *(v0 + 10304) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 11456) = xmmword_1BCE3A880;
  *(v0 + 11520) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 6640) = _Q5;
  *(v0 + 6672) = _Q5;
  *(v0 + 6688) = xmmword_1BCE3C8C0;
  *(v0 + 2064) = xmmword_1BCE3ECC0;
  *(v0 + 3280) = xmmword_1BCE3ECC0;
  *(v0 + 6544) = _Q5;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6576) = _Q5;
  *(v0 + 6608) = _Q5;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 9360) = xmmword_1BCE3ECC0;
  *(v0 + 10576) = xmmword_1BCE3ECC0;
  *(v0 + 11792) = xmmword_1BCE3ECC0;
  *(v0 + 848) = xmmword_1BCE3ECC0;
  *(v0 + 864) = xmmword_1BCE432C0;
  *(v0 + 2080) = xmmword_1BCE432C0;
  *(v0 + 3296) = xmmword_1BCE432C0;
  *(v0 + 9376) = xmmword_1BCE432C0;
  *(v0 + 10592) = xmmword_1BCE432C0;
  *(v0 + 11808) = xmmword_1BCE432C0;
  *(v0 + 1024) = xmmword_1BCE3E230;
  *(v0 + 2240) = xmmword_1BCE3E230;
  *(v0 + 3456) = xmmword_1BCE3E230;
  *(v0 + 6288) = _Q5;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 4352) = xmmword_1BCE3E230;
  *(v0 + 9536) = xmmword_1BCE3E230;
  *(v0 + 10752) = xmmword_1BCE3E230;
  *(v0 + 11968) = xmmword_1BCE3E230;
  *(v0 + 6256) = _Q5;
  *(v0 + 6272) = _Q5;
  *(v0 + 672) = xmmword_1BCE3CBC0;
  *(v0 + 1056) = xmmword_1BCE3CBC0;
  *(v0 + 1888) = xmmword_1BCE3CBC0;
  *(v0 + 6176) = _Q5;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q5;
  *(v0 + 6064) = _Q5;
  *(v0 + 6080) = _Q5;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 5968) = _Q5;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q5;
  *(v0 + 6016) = _Q5;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 2272) = xmmword_1BCE3CBC0;
  *(v0 + 5872) = _Q5;
  *(v0 + 5904) = _Q5;
  *(v0 + 5920) = xmmword_1BCE3CBC0;
  *(v0 + 5936) = _Q5;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5776) = _Q5;
  *(v0 + 5792) = _Q5;
  *(v0 + 5808) = _Q5;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q5;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 3104) = xmmword_1BCE3CBC0;
  *(v0 + 3488) = xmmword_1BCE3CBC0;
  *(v0 + 5680) = _Q5;
  *(v0 + 5712) = _Q5;
  *(v0 + 5744) = _Q5;
  *(v0 + 5760) = _Q5;
  *(v0 + 4704) = xmmword_1BCE3CBC0;
  *(v0 + 5392) = _Q5;
  *(v0 + 5584) = _Q5;
  *(v0 + 5616) = _Q5;
  *(v0 + 5632) = _Q5;
  *(v0 + 5648) = _Q5;
  *(v0 + 5424) = _Q5;
  *(v0 + 5488) = _Q5;
  *(v0 + 5504) = _Q5;
  *(v0 + 5520) = _Q5;
  *(v0 + 5536) = _Q5;
  *(v0 + 5552) = _Q5;
  *(v0 + 5456) = _Q5;
  *(v0 + 5472) = xmmword_1BCE3C8C0;
  *(v0 + 9184) = xmmword_1BCE3CBC0;
  *(v0 + 9568) = xmmword_1BCE3CBC0;
  *(v0 + 10400) = xmmword_1BCE3CBC0;
  *(v0 + 10784) = xmmword_1BCE3CBC0;
  *(v0 + 11616) = xmmword_1BCE3CBC0;
  *(v0 + 12000) = xmmword_1BCE3CBC0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 5328) = _Q5;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5360) = _Q5;
  *(v0 + 608) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1824) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3040) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 5040) = _Q5;
  *(v0 + 5056) = _Q5;
  *(v0 + 5072) = _Q5;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4256) = xmmword_1BCE3C8C0;
  *(v0 + 4416) = _Q5;
  *(v0 + 4432) = _Q5;
  *(v0 + 4464) = _Q5;
  *(v0 + 4496) = _Q5;
  *(v0 + 4905) = *v11;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4960) = _Q5;
  *(v0 + 4528) = _Q5;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4800) = _Q5;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q5;
  *(v0 + 4848) = _Q5;
  *(v0 + 4864) = _Q5;
  *(v0 + 4544) = _Q5;
  *(v0 + 4720) = _Q5;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q5;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q5;
  *(v0 + 4560) = _Q5;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q5;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = _Q5;
  *(v0 + 4688) = _Q5;
  *(v0 + 4576) = _Q5;
  *(v0 + 4592) = _Q5;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9120) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10336) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11552) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 4336) = _Q5;
  *(v0 + 4368) = _Q5;
  *(v0 + 4400) = _Q5;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 4240) = _Q5;
  *(v0 + 4272) = _Q5;
  *(v0 + 4304) = _Q5;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 4144) = _Q5;
  *(v0 + 4176) = _Q5;
  *(v0 + 4208) = _Q5;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q5;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3792) = _Q5;
  *(v0 + 3808) = _Q5;
  *(v0 + 3824) = _Q5;
  *(v0 + 3840) = _Q5;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3856) = _Q5;
  *(v0 + 3888) = _Q5;
  *(v0 + 3904) = _Q5;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3536) = _Q5;
  *(v0 + 3616) = _Q5;
  *(v0 + 3744) = _Q5;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1060320051;
  *(v0 + 3632) = _Q5;
  *(v0 + 3648) = _Q5;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC028000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3568) = _Q5;
  *(v0 + 3584) = _Q5;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 208) = _Q5;
  *(v0 + 3440) = _Q5;
  *(v0 + 3472) = _Q5;
  *(v0 + 3504) = _Q5;
  *(v0 + 464) = _Q5;
  *(v0 + 496) = _Q5;
  *(v0 + 3344) = _Q5;
  *(v0 + 3360) = _Q5;
  *(v0 + 3376) = _Q5;
  *(v0 + 3408) = _Q5;
  *(v0 + 528) = _Q5;
  *(v0 + 560) = _Q5;
  *(v0 + 592) = _Q5;
  *(v0 + 624) = _Q5;
  *(v0 + 3312) = _Q5;
  *(v0 + 3328) = _Q5;
  *(v0 + 656) = _Q5;
  *(v0 + 688) = _Q5;
  *(v0 + 3152) = _Q5;
  *(v0 + 3184) = _Q5;
  *(v0 + 3200) = _Q5;
  *(v0 + 3216) = _Q5;
  *(v0 + 720) = _Q5;
  *(v0 + 768) = _Q5;
  *(v0 + 784) = _Q5;
  *(v0 + 944) = _Q5;
  *(v0 + 3056) = _Q5;
  *(v0 + 3088) = _Q5;
  *(v0 + 3120) = _Q5;
  *(v0 + 976) = _Q5;
  *(v0 + 1008) = _Q5;
  *(v0 + 2960) = _Q5;
  *(v0 + 2992) = _Q5;
  *(v0 + 3024) = _Q5;
  *(v0 + 176) = _Q5;
  *(v0 + 192) = _Q5;
  *(v0 + 400) = _Q5;
  *(v0 + 2896) = _Q5;
  *(v0 + 2928) = _Q5;
  *(v0 + 752) = _Q5;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q5;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 880) = _Q5;
  *(v0 + 896) = _Q5;
  *(v0 + 912) = _Q5;
  *(v0 + 928) = _Q5;
  *(v0 + 1040) = _Q5;
  *(v0 + 1072) = _Q5;
  *(v0 + 1104) = _Q5;
  *(v0 + 1136) = _Q5;
  *(v0 + 2608) = _Q5;
  *(v0 + 2624) = _Q5;
  *(v0 + 2640) = _Q5;
  *(v0 + 2672) = _Q5;
  *(v0 + 2688) = _Q5;
  *(v0 + 1152) = _Q5;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q5;
  *(v0 + 1200) = _Q5;
  *(v0 + 1216) = _Q5;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 2473) = *v9;
  *(v0 + 2504) = 1050253722;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q5;
  *(v0 + 2416) = _Q5;
  *(v0 + 2432) = _Q5;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1392) = _Q5;
  *(v0 + 1408) = _Q5;
  *(v0 + 2288) = _Q5;
  *(v0 + 2320) = _Q5;
  *(v0 + 2352) = _Q5;
  *(v0 + 2368) = _Q5;
  *(v0 + 1424) = _Q5;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q5;
  *(v0 + 2192) = _Q5;
  *(v0 + 2224) = _Q5;
  *(v0 + 2256) = _Q5;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 2096) = _Q5;
  *(v0 + 2112) = _Q5;
  *(v0 + 2128) = _Q5;
  *(v0 + 2144) = _Q5;
  *(v0 + 2160) = _Q5;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q5;
  *(v0 + 1712) = _Q5;
  *(v0 + 1744) = _Q5;
  *(v0 + 1776) = _Q5;
  *(v0 + 2000) = _Q5;
  *(v0 + 1808) = _Q5;
  *(v0 + 1872) = _Q5;
  *(v0 + 1904) = _Q5;
  *(v0 + 1936) = _Q5;
  *(v0 + 1968) = _Q5;
  *(v0 + 1984) = _Q5;
  *(v0 + 8400) = _Q5;
  *(v0 + 8432) = _Q5;
  *(v0 + 8448) = _Q5;
  *(v0 + 8480) = _Q5;
  *(v0 + 8496) = _Q5;
  *(v0 + 8512) = _Q5;
  *(v0 + 8688) = _Q5;
  *(v0 + 8704) = _Q5;
  *(v0 + 8720) = _Q5;
  *(v0 + 8752) = _Q5;
  *(v0 + 8768) = _Q5;
  *(v0 + 8912) = _Q5;
  *(v0 + 8976) = _Q5;
  *(v0 + 9008) = _Q5;
  *(v0 + 9040) = _Q5;
  *(v0 + 9072) = _Q5;
  *(v0 + 9104) = _Q5;
  *(v0 + 9136) = _Q5;
  *(v0 + 9168) = _Q5;
  *(v0 + 9200) = _Q5;
  *(v0 + 9232) = _Q5;
  *(v0 + 9264) = _Q5;
  *(v0 + 9280) = _Q5;
  *(v0 + 9296) = _Q5;
  *(v0 + 9392) = _Q5;
  *(v0 + 9408) = _Q5;
  *(v0 + 9424) = _Q5;
  *(v0 + 9440) = _Q5;
  *(v0 + 9456) = _Q5;
  *(v0 + 9488) = _Q5;
  *(v0 + 9520) = _Q5;
  *(v0 + 9552) = _Q5;
  *(v0 + 9584) = _Q5;
  *(v0 + 9616) = _Q5;
  *(v0 + 9648) = _Q5;
  *(v0 + 9664) = _Q5;
  *(v0 + 9696) = _Q5;
  *(v0 + 9712) = _Q5;
  *(v0 + 9728) = _Q5;
  *(v0 + 9904) = _Q5;
  *(v0 + 9920) = _Q5;
  *(v0 + 9936) = _Q5;
  *(v0 + 10128) = _Q5;
  *(v0 + 10192) = _Q5;
  *(v0 + 10224) = _Q5;
  *(v0 + 10256) = _Q5;
  *(v0 + 10288) = _Q5;
  *(v0 + 10320) = _Q5;
  *(v0 + 10384) = _Q5;
  *(v0 + 10416) = _Q5;
  *(v0 + 10448) = _Q5;
  *(v0 + 10480) = _Q5;
  *(v0 + 10496) = _Q5;
  *(v0 + 10512) = _Q5;
  *(v0 + 10608) = _Q5;
  *(v0 + 10624) = _Q5;
  *(v0 + 10640) = _Q5;
  *(v0 + 10656) = _Q5;
  *(v0 + 10672) = _Q5;
  *(v0 + 10704) = _Q5;
  *(v0 + 10736) = _Q5;
  *(v0 + 10768) = _Q5;
  *(v0 + 10800) = _Q5;
  *(v0 + 10832) = _Q5;
  *(v0 + 10864) = _Q5;
  *(v0 + 10880) = _Q5;
  *(v0 + 10912) = _Q5;
  *(v0 + 10928) = _Q5;
  *(v0 + 10944) = _Q5;
  *(v0 + 11120) = _Q5;
  *(v0 + 11136) = _Q5;
  *(v0 + 11152) = _Q5;
  *(v0 + 11344) = _Q5;
  *(v0 + 11408) = _Q5;
  *(v0 + 11440) = _Q5;
  *(v0 + 11472) = _Q5;
  *(v0 + 11504) = _Q5;
  *(v0 + 11536) = _Q5;
  *(v0 + 11568) = _Q5;
  *(v0 + 11600) = _Q5;
  *(v0 + 11632) = _Q5;
  *(v0 + 11664) = _Q5;
  *(v0 + 11696) = _Q5;
  *(v0 + 11712) = _Q5;
  *(v0 + 11728) = _Q5;
  *(v0 + 11824) = _Q5;
  *(v0 + 11840) = _Q5;
  *(v0 + 11856) = _Q5;
  *(v0 + 11872) = _Q5;
  *(v0 + 11888) = _Q5;
  *(v0 + 11920) = _Q5;
  *(v0 + 11952) = _Q5;
  *(v0 + 11984) = _Q5;
  *(v0 + 12016) = _Q5;
  *(v0 + 12048) = _Q5;
  *(v0 + 12080) = _Q5;
  *(v0 + 12096) = _Q5;
  *(v0 + 12128) = _Q5;
  *(v0 + 12144) = _Q5;
  *(v0 + 12160) = _Q5;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v14;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC032000000000004;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1050253722;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC04E000000000002;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCC09AEC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v43[-v6];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v43[-v9];
  v64 = sub_1BCE18920();
  v10 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v43[-v13];
  v14 = sub_1BCE18A60();
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_1BCE18A40();
  v16 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1BCE18A70();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0C8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43[-v24];
  (*(v19 + 16))(v21, a1, v18, v23);
  v26 = MEMORY[0x1E69687C8];
  sub_1BCC0AB04(&qword_1EDA1EC10, MEMORY[0x1E69687C8]);
  sub_1BCE1D4B0();
  sub_1BCC0AB04(&qword_1EDA1F670, v26);
  v59 = (v16 + 16);
  ++v60;
  v54 = (v10 + 16);
  v55 = (v10 + 32);
  v53 = (v10 + 88);
  v52 = *MEMORY[0x1E6968440];
  v27 = (v16 + 8);
  v56 = v14;
  v50 = v27;
  v51 = (v10 + 8);
  while (1)
  {
    v28 = v61;
    sub_1BCE1D750();
    sub_1BCC0AB04(&qword_1EDA1F678, MEMORY[0x1E69687B0]);
    v29 = sub_1BCE1D210();
    (*v60)(v28, v14);
    if (v29)
    {
      break;
    }

    v30 = sub_1BCE1D780();
    (*v59)(v66);
    v30(v65, 0);
    v31 = v18;
    sub_1BCE1D760();
    sub_1BCC0AB4C();
    v32 = v63;
    sub_1BCE18A50();
    if (__swift_getEnumTagSinglePayload(v32, 1, v64) == 1)
    {
      sub_1BC94C0B4(v63, &qword_1EBD0AE38);
    }

    else
    {
      v33 = v57;
      v34 = v64;
      (*v55)(v57, v63, v64);
      v35 = v58;
      (*v54)(v58, v33, v34);
      v36 = (*v53)(v35, v34);
      if (v36 == v52)
      {
        v37 = v44;
        sub_1BCE18A30();
        v38 = v46;
        sub_1BCE1C630();
        v39 = sub_1BCE1C640();
        __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
        sub_1BC957184(&qword_1EDA1C1D8, &qword_1EBD07978);
        v49 = sub_1BCE18B40();
        sub_1BCB96360(v38, v47);
        sub_1BCB7A108();
        sub_1BCE18C20();
        sub_1BC94C0B4(v38, &qword_1EBD0A0C0);
        v49(v65, 0);
        sub_1BC94C0B4(v37, &qword_1EBD07978);
        (*v51)(v33, v64);
      }

      else
      {
        v40 = *v51;
        v41 = v64;
        (*v51)(v33, v64);
        v40(v35, v41);
      }

      v14 = v56;
      v18 = v31;
      v27 = v50;
    }

    (*v27)(v66, v62);
  }

  return sub_1BC94C0B4(v25, &qword_1EBD0A0C8);
}

void __swiftcall PercentFormattedView.init(value:title:)(WeatherUI::PercentFormattedView *__return_ptr retstr, Swift::Double value, Swift::String_optional title)
{
  retstr->value = value;
  retstr->title = title;
  retstr->overrideFormatted.value._countAndFlagsBits = 0;
  retstr->overrideFormatted.value._object = 0;
}

uint64_t PercentFormattedView.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void __swiftcall PercentFormattedView.init(value:title:)(WeatherUI::PercentFormattedView *__return_ptr retstr, Swift::String value, Swift::String_optional title)
{
  retstr->value = 0.0;
  retstr->title = title;
  retstr->overrideFormatted.value = value;
}

double PercentFormattedView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE18AF0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  if (v10)
  {
    sub_1BCE1BD10();
    sub_1BCE1BD00();
    sub_1BCE1BCF0();
    sub_1BCE1BD00();
    *&v29 = v8;
    *(&v29 + 1) = v9;
    *&v30 = v10;
    *(&v30 + 1) = v11;
    v31 = v12;
    sub_1BCC0A630(v6);
    sub_1BCE1BCC0();
    (*(v4 + 8))(v6, v3);
    sub_1BCE1BD00();
    sub_1BCE1BD40();
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = qword_1EDA1EFB8;
    v24 = sub_1BCE1C680();
    v25 = v14;
    v26 = v15 & 1;
    v27 = v16;
    v28 = 0;
  }

  else
  {
    *&v29 = *v1;
    *(&v29 + 1) = v9;
    *&v30 = 0;
    *(&v30 + 1) = v11;
    v31 = v12;
    sub_1BCC0A630(v6);
    v24 = sub_1BCE1C690();
    v25 = v18;
    v26 = v17 & 1;
    v27 = v19;
    v28 = 1;
  }

  sub_1BCE1BF60();
  result = *&v29;
  v21 = v30;
  v22 = v31;
  *a1 = v29;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1BCC0A630@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = sub_1BCE18A70();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE30);
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07BE8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = sub_1BCE18B80();
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (v1[4])
  {

    sub_1BCE18B70();
    return sub_1BCE18B00();
  }

  else
  {
    v20 = *v1;
    sub_1BCE19150();
    sub_1BC96ABEC();
    sub_1BCE18CB0();
    sub_1BCE18CA0();
    (*(v10 + 8))(v12, v9);
    sub_1BC957184(&qword_1EDA1BF58, &qword_1EBD0AE30);
    v15 = v19;
    sub_1BCE1D0F0();
    (*(v16 + 8))(v7, v5);
    sub_1BCE18A90();
    sub_1BCC09AEC(v4, v15);
    return (*(v17 + 8))(v4, v18);
  }
}

uint64_t sub_1BCC0A9C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCC0AA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1BCC0AA88()
{
  result = qword_1EDA1B7C8;
  if (!qword_1EDA1B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B7C8);
  }

  return result;
}

uint64_t sub_1BCC0AB04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCC0AB4C()
{
  result = qword_1EDA1BF88;
  if (!qword_1EDA1BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BF88);
  }

  return result;
}

void sub_1BCC0ABA0(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA4A544();
  v4 = v3;
  sub_1BCA4A544();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42A0000042480000;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_1BCE3BEE0;
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
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
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
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3BF50;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x3F4CCCCDu);
  *(a1 + 848) = 0x41F0000041E00000;
  *(a1 + 856) = 3243245568;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3BF60;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3BF70;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F99999Au);
  *(a1 + 976) = 0x4160000041400000;
  *(a1 + 984) = 3233808384;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3F020;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1077936128;
  __asm { FMOV            V3.2S, #1.5 }

  *(a1 + 1096) = _D3;
  __asm { FMOV            V3.2S, #5.0 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 3204448256;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE3F040;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
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
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
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
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V2.2S, #-15.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1644) = 0;
  *(a1 + 1628) = 0u;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v14;
  *(a1 + 1659) = v15;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 6;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3C040;
  *(a1 + 1808) = xmmword_1BCE3C050;
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
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
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
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x40F478343FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE43930;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
}

uint64_t sub_1BCC0B2AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCC0B2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BCC0B370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE48);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  memcpy(__dst, v2, 0x68uLL);
  *v12 = sub_1BCE1BDF0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE50);
  sub_1BCC0B77C(__dst, &v12[*(v18 + 44)]);
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE58) + 36)];
  *v19 = 0xD000000000000012;
  *(v19 + 1) = 0x80000001BCE58450;
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v20 = &v12[*(v9 + 36)];
  v21 = v37;
  *v20 = v36;
  *(v20 + 1) = v21;
  *(v20 + 2) = v38;
  sub_1BCE1C0F0();
  v22 = sub_1BCC0D824(&qword_1EBD0AE60, &qword_1EBD0AE40, &unk_1BCE584D8, sub_1BCC0C474);
  sub_1BCE1C930();
  (*(v5 + 8))(v8, v3);
  sub_1BC94C05C(v12, &qword_1EBD0AE40);
  sub_1BCE1BD30();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = qword_1EDA1EFB8;
  v24 = sub_1BCE1C680();
  v26 = v25;
  v28 = v27;
  v34 = v9;
  v35 = v22;
  OUTLINED_FUNCTION_0_1();
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  sub_1BCE1C830();
  sub_1BC998CF4(v24, v26, v28 & 1);

  return (*(v14 + 8))(v17, v29);
}

uint64_t sub_1BCC0B77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - v11;
  v13 = a1[11];
  v12 = a1[12];
  sub_1BCE1CEE0();
  v43 = v13;
  sub_1BCE1B610();
  v47 = v53;
  v46 = v55;
  v45 = v57;
  v44 = v58;
  v67 = 1;
  v66 = v54;
  v65 = v56;
  v14 = *a1;

  v15 = sub_1BCAE6164(v12, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v49 = v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1BCE1E0A0();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v21 >> 1, v19))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v25 != (v21 >> 1) - v19)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    sub_1BCAF5198(v15, v17, v19, v21);
    v23 = v22;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

LABEL_10:
  *v9 = sub_1BCE1C200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE88);
  sub_1BCC0BB7C(v23, a1);

  v26 = v48;
  sub_1BCC0D2DC(v9, v48);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v43 = v59;
  v42 = v61;
  v41 = v63;
  v40 = v64;
  v52 = 1;
  v51 = v60;
  v50 = v62;
  v27 = v67;
  v28 = v66;
  v29 = v65;
  v30 = v49;
  sub_1BC952ABC(v26, v49, &qword_1EBD0AE80);
  v31 = v52;
  v32 = v51;
  v33 = v50;
  *a2 = 0;
  *(a2 + 8) = v27;
  *(a2 + 16) = v47;
  *(a2 + 24) = v28;
  *(a2 + 32) = v46;
  *(a2 + 40) = v29;
  v34 = v44;
  *(a2 + 48) = v45;
  *(a2 + 56) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE90);
  sub_1BC952ABC(v30, a2 + *(v35 + 48), &qword_1EBD0AE80);
  v36 = a2 + *(v35 + 64);
  *v36 = 0;
  *(v36 + 8) = v31;
  *(v36 + 16) = v43;
  *(v36 + 24) = v32;
  *(v36 + 32) = v42;
  *(v36 + 40) = v33;
  v37 = v40;
  *(v36 + 48) = v41;
  *(v36 + 56) = v37;
  sub_1BC94C05C(v26, &qword_1EBD0AE80);
  return sub_1BC94C05C(v30, &qword_1EBD0AE80);
}

uint64_t sub_1BCC0BB7C(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 16);
  v8 = 0;
  v9 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  memcpy((v5 + 16), a2, 0x68uLL);
  *(v5 + 120) = a1;
  sub_1BCC0D358(a2, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AEA0);
  sub_1BCC0D390();
  sub_1BC957184(&qword_1EBD0AEB0, &qword_1EBD0AEA0);
  return sub_1BCE1CE10();
}

uint64_t sub_1BCC0BCC4@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;

  v8 = sub_1BCAE6164(v7, a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ((v13 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1BCE1E0A0();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v14 >> 1, v12))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 != (v14 >> 1) - v12)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_2:
    sub_1BCAF5198(v8, v10, v12, v14);
    v16 = v15;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v16)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

LABEL_10:
  *a4 = sub_1BCE1BC90();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AEB8);
  v22 = v16;
  v19 = swift_allocObject();
  memcpy((v19 + 16), a2, 0x68uLL);
  *(v19 + 120) = v16;

  sub_1BCC0D358(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AEC0);
  sub_1BC957184(&qword_1EBD0AEC8, &qword_1EBD08D58);
  sub_1BC957184(&qword_1EBD0AED0, &qword_1EBD0AEC0);
  sub_1BCC0D7C0(&qword_1EBD0AED8, type metadata accessor for HourlyForecastViewModel.HourModel);
  return sub_1BCE1CE20();
}

uint64_t sub_1BCC0BF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v38 = a4;
  v6 = type metadata accessor for HourlyForecastViewModel.HourModel();
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AEE0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AEE8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for HourlyForecastCell();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v37 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  sub_1BCC0D540(a1, &v34 - v24, type metadata accessor for HourlyForecastViewModel.HourModel);
  memcpy(__dst, (a2 + 8), 0x60uLL);
  memcpy(&v25[*(v21 + 28)], (a2 + 8), 0x60uLL);
  sub_1BCC0D540(a1, v19, type metadata accessor for HourlyForecastViewModel.HourModel);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
  sub_1BCA3F358(v36, v16);
  v26 = *(v9 + 56);
  sub_1BC952ABC(v19, v11, &qword_1EBD0AEE8);
  sub_1BC952ABC(v16, &v11[v26], &qword_1EBD0AEE8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) != 1)
  {
    v28 = v35;
    sub_1BC952ABC(v11, v35, &qword_1EBD0AEE8);
    if (__swift_getEnumTagSinglePayload(&v11[v26], 1, v6) != 1)
    {
      v29 = v34;
      sub_1BCAE2AA4(&v11[v26], v34);
      sub_1BCC0D4E4(__dst, v39);
      v27 = sub_1BCD6AF9C(v28, v29);
      sub_1BCC0D5A0(v29, type metadata accessor for HourlyForecastViewModel.HourModel);
      sub_1BC94C05C(v16, &qword_1EBD0AEE8);
      sub_1BC94C05C(v19, &qword_1EBD0AEE8);
      sub_1BCC0D5A0(v28, type metadata accessor for HourlyForecastViewModel.HourModel);
      sub_1BC94C05C(v11, &qword_1EBD0AEE8);
      goto LABEL_8;
    }

    sub_1BCC0D4E4(__dst, v39);
    sub_1BC94C05C(v16, &qword_1EBD0AEE8);
    sub_1BC94C05C(v19, &qword_1EBD0AEE8);
    sub_1BCC0D5A0(v28, type metadata accessor for HourlyForecastViewModel.HourModel);
    goto LABEL_6;
  }

  sub_1BCC0D4E4(__dst, v39);
  sub_1BC94C05C(v16, &qword_1EBD0AEE8);
  sub_1BC94C05C(v19, &qword_1EBD0AEE8);
  if (__swift_getEnumTagSinglePayload(&v11[v26], 1, v6) != 1)
  {
LABEL_6:
    sub_1BC94C05C(v11, &qword_1EBD0AEE0);
    v27 = 0;
    goto LABEL_8;
  }

  sub_1BC94C05C(v11, &qword_1EBD0AEE8);
  v27 = 1;
LABEL_8:
  v30 = v37;
  sub_1BCC0D540(v25, v37, type metadata accessor for HourlyForecastCell);
  v31 = v38;
  sub_1BCC0D540(v30, v38, type metadata accessor for HourlyForecastCell);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AEF0) + 48);
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 9) = v27 & 1;
  sub_1BCC0D5A0(v25, type metadata accessor for HourlyForecastCell);
  return sub_1BCC0D5A0(v30, type metadata accessor for HourlyForecastCell);
}

unint64_t sub_1BCC0C474()
{
  result = qword_1EBD0AE68;
  if (!qword_1EBD0AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AE58);
    sub_1BC957184(&qword_1EBD0AE70, &qword_1EBD0AE78);
    sub_1BC957184(&qword_1EDA1E998, &qword_1EBD084B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AE68);
  }

  return result;
}

uint64_t sub_1BCC0C558()
{
  v1 = sub_1BCE1C100();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF18);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *v7 = sub_1BCE1BDF0();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF20);
  sub_1BCC0C714(v0, &v7[*(v8 + 44)]);
  sub_1BCE1C0E0();
  sub_1BC957184(&qword_1EBD0AF28, &qword_1EBD0AF18);
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v1);
  return sub_1BC94C05C(v7, &qword_1EBD0AF18);
}

uint64_t sub_1BCC0C714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF30);
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v107 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD093E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v107 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF38);
  MEMORY[0x1EEE9AC00](v120);
  v112 = &v107 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v125 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v107 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09010);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v124 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v107 - v14;
  v123 = type metadata accessor for HourlyForecastViewModel.HourModel();
  v15 = (a1 + v123[8]);
  v16 = *v15;
  v17 = v15[1];
  if (qword_1EDA1C150 != -1)
  {
    swift_once();
  }

  NSDateFormatter.periodSymbols.getter();
  v18 = (a1 + *(type metadata accessor for HourlyForecastCell() + 20));
  v114 = *v18;
  sub_1BCE1C4A0();
  TimeStyle.formatTime(_:periodSymbols:font:)();
  v116 = v16;
  v117 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v115 = a1;
  v25 = *(a1 + 16);
  v26 = 6;
  if (*(a1 + 16))
  {
    v26 = 1;
  }

  v119 = v18;
  v27 = v18[v26];
  sub_1BCE1CA20();
  v28 = sub_1BCE1C5C0();
  v30 = v29;
  v32 = v31;
  v113 = v33;

  sub_1BC998CF4(v20, v22, v24 & 1);

  if (!v25)
  {
    sub_1BCE1C370();
  }

  LODWORD(v110) = v25;
  LODWORD(v109) = v25 != 0;
  v34 = sub_1BCE1C530();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1BC998CF4(v28, v30, v32 & 1);

  [v114 capHeight];
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  __dst[88] = v38 & 1;
  v134[0] = v34;
  v134[1] = v36;
  LOBYTE(v134[2]) = v38 & 1;
  v134[3] = v40;
  v133[0] = v116;
  v133[1] = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09068);
  sub_1BCAF9940();
  sub_1BC970820();
  sub_1BCE1C8E0();
  memcpy(__dst, v134, 0x50uLL);
  sub_1BC94C05C(__dst, &qword_1EBD09068);
  v41 = v119;
  v117 = v119[7];
  LODWORD(v116) = *(v119 + 64);
  v42 = v123;
  v43 = v115;
  v44 = (v115 + v123[9]);
  v45 = *v44;
  v46 = v44[1];
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {

    sub_1BCE1CBA0();
    v48 = *MEMORY[0x1E6981688];
    v49 = sub_1BCE1CBF0();
    v50 = v111;
    (*(*(v49 - 8) + 104))(v111, v48, v49);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
    v51 = sub_1BCE1CBC0();

    sub_1BC94C05C(v50, &qword_1EBD093E8);
    v52 = v41[3];
    v53 = sub_1BCE1C4A0();
    KeyPath = swift_getKeyPath();
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    LOBYTE(v136) = 1;
    v133[0] = v51;
    v133[1] = 0;
    LOWORD(v133[2]) = 1;
    v133[3] = KeyPath;
    v133[4] = v53;
    v55 = (v43 + v42[10]);
    v57 = *v55;
    v56 = v55[1];
    v128[0] = v57;
    v128[1] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF48);
    sub_1BCC0D824(&qword_1EBD0AF50, &qword_1EBD0AF48, &unk_1BCE58670, sub_1BCC0D8A8);
    v58 = v112;
    sub_1BCE1C8E0();
    memcpy(v134, v133, 0x58uLL);
    sub_1BC94C05C(v134, &qword_1EBD0AF48);
    sub_1BC952ABC(v58, v122, &qword_1EBD0AF38);
    swift_storeEnumTagMultiPayload();
    sub_1BCC0D9E4();
    sub_1BCE1BF60();
    sub_1BC94C05C(v58, &qword_1EBD0AF38);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BCC0D9E4();
    sub_1BCE1BF60();
  }

  if (*(v41 + 65) == 1)
  {
    v59 = (v43 + v123[7]);
    v60 = v59[1];
    v134[0] = *v59;
    v134[1] = v60;

    v61 = sub_1BCE1C6A0();
    v63 = v62;
    v64 = v41;
    v66 = v65;
    v123 = v64[4];
    sub_1BCE1C4A0();
    v67 = sub_1BCE1C610();
    v69 = v68;
    v71 = v70;
    v121 = v72;

    sub_1BC998CF4(v61, v63, v66 & 1);

    v73 = v110;
    v74 = 6;
    if (v110)
    {
      v74 = 5;
    }

    v75 = v64[v74];
    sub_1BCE1CA20();
    v76 = sub_1BCE1C5C0();
    v78 = v77;
    v80 = v79;
    v122 = v81;

    sub_1BC998CF4(v67, v69, v71 & 1);

    if (!v73)
    {
      sub_1BCE1C370();
    }

    v84 = sub_1BCE1C530();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    sub_1BC998CF4(v76, v78, v80 & 1);

    [v123 capHeight];
    sub_1BCE1CEE0();
    sub_1BCE1B610();
    v132 = v88 & 1;
    *&v130[6] = v136;
    *&v130[22] = v137;
    *&v130[38] = v138;
    v83 = v116;
    v129 = v116;
    v133[0] = v84;
    v133[1] = v86;
    LOBYTE(v133[2]) = v88 & 1;
    *(&v133[2] + 1) = *v131;
    HIDWORD(v133[2]) = *&v131[3];
    v133[3] = v90;
    LOWORD(v133[4]) = 257;
    *(&v133[4] + 2) = *v130;
    v133[10] = *(&v138 + 1);
    *(&v133[8] + 2) = *&v130[32];
    *(&v133[6] + 2) = *&v130[16];
    v112 = v133[4];
    v113 = v133[2];
    v110 = v133[6];
    v111 = (*v130 >> 48);
    v108 = v84;
    v109 = *&v130[16] >> 48;
    v123 = v133[8];
    v121 = v133[10];
    v122 = *&v130[32] >> 48;
    v120 = v116;
    v134[0] = v84;
    v134[1] = v86;
    v114 = v90;
    v115 = v86;
    LOBYTE(v134[2]) = v88 & 1;
    HIDWORD(v134[2]) = *&v131[3];
    *(&v134[2] + 1) = *v131;
    v134[3] = v90;
    LOWORD(v134[4]) = 257;
    v134[10] = *(&v138 + 1);
    *(&v134[6] + 2) = *&v130[16];
    *(&v134[8] + 2) = *&v130[32];
    *(&v134[4] + 2) = *v130;
    sub_1BC952ABC(v133, v128, qword_1EBD0AF88);
    sub_1BC94C05C(v134, qword_1EBD0AF88);
    v82 = v117;
    v119 = v117;
  }

  else
  {
    v119 = 0;
    v120 = 0;
    v108 = 0;
    v109 = 0;
    v114 = 0;
    v115 = 0;
    v112 = 0;
    v113 = 0;
    v110 = 0;
    v111 = 0;
    v122 = 0;
    v123 = 0;
    v121 = 0;
    v82 = v117;
    v83 = v116;
  }

  v91 = v124;
  sub_1BC952ABC(v126, v124, &qword_1EBD09010);
  v92 = v125;
  sub_1BC952ABC(v127, v125, &qword_1EBD0AF40);
  v93 = v91;
  v94 = v118;
  sub_1BC952ABC(v93, v118, &qword_1EBD09010);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AF78);
  v96 = v94 + v95[12];
  *v96 = v82;
  *(v96 + 8) = v83;
  sub_1BC952ABC(v92, v94 + v95[16], &qword_1EBD0AF40);
  v97 = v95[20];
  v133[0] = v119;
  v133[1] = v120;
  v99 = v108;
  v98 = v109;
  v101 = v114;
  v100 = v115;
  v133[2] = v108;
  v133[3] = v115;
  v102 = v112;
  v103 = v113;
  v133[4] = v113;
  v133[5] = v114;
  v105 = v110;
  v104 = v111;
  v133[6] = v112;
  v133[7] = v111;
  v133[8] = v110;
  v133[9] = v109;
  v133[10] = v123;
  v133[11] = v122;
  v133[12] = v121;
  memcpy((v94 + v97), v133, 0x68uLL);
  sub_1BC952ABC(v133, v134, &qword_1EBD0AF80);
  sub_1BC94C05C(v127, &qword_1EBD0AF40);
  sub_1BC94C05C(v126, &qword_1EBD09010);
  v134[0] = v119;
  v134[1] = v120;
  v134[2] = v99;
  v134[3] = v100;
  v134[4] = v103;
  v134[5] = v101;
  v134[6] = v102;
  v134[7] = v104;
  v134[8] = v105;
  v134[9] = v98;
  v134[10] = v123;
  v134[11] = v122;
  v134[12] = v121;
  sub_1BC94C05C(v134, &qword_1EBD0AF80);
  sub_1BC94C05C(v125, &qword_1EBD0AF40);
  return sub_1BC94C05C(v124, &qword_1EBD09010);
}

uint64_t sub_1BCC0D2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCC0D390()
{
  result = qword_1EBD0AEA8;
  if (!qword_1EBD0AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AE98);
    sub_1BCA822E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AEA8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t type metadata accessor for HourlyForecastCell()
{
  result = qword_1EBD0AEF8;
  if (!qword_1EBD0AEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC0D540(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCC0D5A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCC0D620()
{
  result = type metadata accessor for HourlyForecastViewModel.HourModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BCC0D694()
{
  result = qword_1EBD0AF08;
  if (!qword_1EBD0AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AE40);
    sub_1BCC0D824(&qword_1EBD0AE60, &qword_1EBD0AE40, &unk_1BCE584D8, sub_1BCC0C474);
    swift_getOpaqueTypeConformance2();
    sub_1BCC0D7C0(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AF08);
  }

  return result;
}

uint64_t sub_1BCC0D7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCC0D824(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCC0D8A8()
{
  result = qword_1EBD0AF58;
  if (!qword_1EBD0AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AF60);
    sub_1BCC0D960();
    sub_1BC957184(&qword_1EDA1B6B0, &qword_1EBD08400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AF58);
  }

  return result;
}

unint64_t sub_1BCC0D960()
{
  result = qword_1EDA1B9D8;
  if (!qword_1EDA1B9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9D8);
  }

  return result;
}

unint64_t sub_1BCC0D9E4()
{
  result = qword_1EBD0AF70;
  if (!qword_1EBD0AF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AF38);
    sub_1BCC0D824(&qword_1EBD0AF50, &qword_1EBD0AF48, &unk_1BCE58670, sub_1BCC0D8A8);
    sub_1BCC0D7C0(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0AF70);
  }

  return result;
}

uint64_t StringBuilder.__allocating_init(_:)(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_6_37();
  v2 = swift_allocObject();
  StringBuilder.init(_:)(a1);
  return v2;
}

uint64_t sub_1BCC0DB14(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_1BCE1D380();
    if (!__OFSUB__(result, v1))
    {
      sub_1BCE1D3A0();
      sub_1BCE1D4A0();
      OUTLINED_FUNCTION_8_39();
      return OUTLINED_FUNCTION_20_11();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCC0DBE4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1BCAF53A8(0, (v2 - result) & ~((v2 - result) >> 63), v2, a2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      sub_1BCAF2B30(0);
      OUTLINED_FUNCTION_8_39();
      return OUTLINED_FUNCTION_20_11();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCC0DC5C()
{

  return v0;
}

uint64_t sub_1BCC0DC8C()
{
  v0 = sub_1BCC0DC5C();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t static RuleBuilder.buildBlock<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_10_35();
  v15 = OUTLINED_FUNCTION_5_40();
  sub_1BC9493D0(v15, v16, a9);

  sub_1BC9493D0(v12, a7, a10);
  OUTLINED_FUNCTION_7_42();

  sub_1BC9493D0(v11, a8, a11);
  OUTLINED_FUNCTION_3_51();
  return a8;
}

uint64_t static RuleBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_10_35();
  v25 = OUTLINED_FUNCTION_5_40();
  sub_1BC9493D0(v25, v26, a17);

  sub_1BC9493D0(v24, a11, a18);

  sub_1BC9493D0(v23, a12, a19);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a4, a13, a20);
  OUTLINED_FUNCTION_1_53();

  sub_1BC9493D0(a5, a14, a21);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a6, a15, a22);
  OUTLINED_FUNCTION_1_53();

  sub_1BC9493D0(a7, a16, a23);
  OUTLINED_FUNCTION_3_51();
  return a18;
}

_BYTE *sub_1BCC0DF04(_BYTE *result, int a2, int a3)
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

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t type metadata accessor for HumidityComplicationDataStatus()
{
  result = qword_1EBD0B010;
  if (!qword_1EBD0B010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCC0E0B4()
{
  v0 = type metadata accessor for HumidityComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1BCC0E10C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCC0E898();
  v4 = v3;
  sub_1BCC0E898();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE51C10;
  *(a1 + 112) = 0x3E3851EC3E051EB8;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE51C20;
  *(a1 + 176) = 1137180672;
  *(a1 + 184) = 0x3E051EB83D4CCCCDLL;
  *(a1 + 192) = xmmword_1BCE44E50;
  *(a1 + 208) = xmmword_1BCE44E60;
  *(a1 + 224) = xmmword_1BCE44E70;
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
  *(a1 + 712) = 0x404000004019999ALL;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1102579360;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE3FB40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A3F99999ALL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4019999A3F19999ALL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE44E80;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F4CCCCD3F000000;
  *(a1 + 1296) = 0x40C0000042700000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE44E90;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
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
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1634) = 0;
  *(a1 + 1630) = 0;
  *(a1 + 1636) = 1;
  *(v2 + 201) = 0;
  *(v2 + 209) = 16843009;
  *(v2 + 213) = 16842752;
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
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE44EA0;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1082130432;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
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
  *(a1 + 2120) = 0x3DCCCCCD3D4CCCCDLL;
  *(a1 + 2128) = 0x3FC000003F800000;
  *(a1 + 2136) = 0x4060000040400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1065353216;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCC0E898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE3FD50;
  *(v0 + 6192) = xmmword_1BCE3FD50;
  *(v0 + 4992) = xmmword_1BCE3FD60;
  *(v0 + 6208) = xmmword_1BCE3FD60;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5200) = xmmword_1BCE44FA0;
  *(v0 + 6416) = xmmword_1BCE44FA0;
  *(v0 + 5264) = xmmword_1BCE3FD80;
  *(v0 + 6480) = xmmword_1BCE3FD80;
  *(v0 + 5360) = xmmword_1BCE44FB0;
  *(v0 + 6576) = xmmword_1BCE44FB0;
  *(v0 + 5376) = xmmword_1BCE400F0;
  *(v0 + 6592) = xmmword_1BCE400F0;
  *(v0 + 5392) = xmmword_1BCE44FC0;
  *(v0 + 6608) = xmmword_1BCE44FC0;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 5440) = xmmword_1BCE44FD0;
  *(v0 + 6656) = xmmword_1BCE44FD0;
  *(v0 + 5456) = xmmword_1BCE44FE0;
  *(v0 + 6672) = xmmword_1BCE44FE0;
  *(v0 + 5472) = xmmword_1BCE44FF0;
  *(v0 + 6688) = xmmword_1BCE44FF0;
  *(v0 + 5728) = xmmword_1BCE45000;
  *(v0 + 6944) = xmmword_1BCE45000;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1142292480;
  *(v0 + 7360) = 1142292480;
  *(v0 + 3760) = xmmword_1BCE3FD00;
  *(v0 + 7408) = xmmword_1BCE3FD00;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 3968) = xmmword_1BCE3E2C0;
  *(v0 + 5184) = xmmword_1BCE3E2C0;
  *(v0 + 6400) = xmmword_1BCE3E2C0;
  *(v0 + 7616) = xmmword_1BCE3E2C0;
  *(v0 + 3984) = xmmword_1BCE44F70;
  *(v0 + 7632) = xmmword_1BCE44F70;
  *(v0 + 4016) = xmmword_1BCE44F80;
  *(v0 + 5232) = xmmword_1BCE44F80;
  *(v0 + 6448) = xmmword_1BCE44F80;
  *(v0 + 7664) = xmmword_1BCE44F80;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4160) = xmmword_1BCE3E350;
  *(v0 + 7808) = xmmword_1BCE3E350;
  *(v0 + 4192) = xmmword_1BCE3CE90;
  *(v0 + 7840) = xmmword_1BCE3CE90;
  *(v0 + 4256) = xmmword_1BCE3EF30;
  *(v0 + 7904) = xmmword_1BCE3EF30;
  *(v0 + 4512) = xmmword_1BCE44F90;
  *(v0 + 8160) = xmmword_1BCE44F90;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1132068864;
  *(v0 + 8576) = 1132068864;
  *(v0 + 2512) = xmmword_1BCE44F10;
  *(v0 + 8592) = xmmword_1BCE44F10;
  *(v0 + 2528) = xmmword_1BCE43340;
  *(v0 + 8608) = xmmword_1BCE43340;
  *(v0 + 2544) = xmmword_1BCE44F20;
  *(v0 + 8624) = xmmword_1BCE44F20;
  *(v0 + 2560) = xmmword_1BCE43360;
  *(v0 + 8640) = xmmword_1BCE43360;
  *(v0 + 2576) = xmmword_1BCE3E270;
  *(v0 + 8656) = xmmword_1BCE3E270;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2752) = xmmword_1BCE44F30;
  *(v0 + 8832) = xmmword_1BCE44F30;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2784) = xmmword_1BCE3FD20;
  *(v0 + 4000) = xmmword_1BCE3FD20;
  *(v0 + 5216) = xmmword_1BCE3FD20;
  *(v0 + 6432) = xmmword_1BCE3FD20;
  *(v0 + 7648) = xmmword_1BCE3FD20;
  *(v0 + 8864) = xmmword_1BCE3FD20;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2976) = xmmword_1BCE3E1D0;
  *(v0 + 9056) = xmmword_1BCE3E1D0;
  *(v0 + 3024) = xmmword_1BCE44F60;
  *(v0 + 3280) = xmmword_1BCE44F60;
  *(v0 + 4176) = xmmword_1BCE44F60;
  *(v0 + 7824) = xmmword_1BCE44F60;
  *(v0 + 9104) = xmmword_1BCE44F60;
  *(v0 + 9360) = xmmword_1BCE44F60;
  *(v0 + 3456) = xmmword_1BCE3ECB0;
  *(v0 + 9536) = xmmword_1BCE3ECB0;
  *(v0 + 2960) = xmmword_1BCE44F50;
  *(v0 + 3472) = xmmword_1BCE44F50;
  *(v0 + 9040) = xmmword_1BCE44F50;
  *(v0 + 9552) = xmmword_1BCE44F50;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V6.2D, #1.0 }

  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 1328) = xmmword_1BCE44EB0;
  *(v0 + 9840) = xmmword_1BCE44EB0;
  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 272) = xmmword_1BCE3FC60;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 1344) = xmmword_1BCE44EC0;
  *(v0 + 9856) = xmmword_1BCE44EC0;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 1360) = xmmword_1BCE43250;
  *(v0 + 9872) = xmmword_1BCE43250;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 304) = xmmword_1BCE44ED0;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 1376) = xmmword_1BCE43260;
  *(v0 + 9888) = xmmword_1BCE43260;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3FC00;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1488) = xmmword_1BCE3FC60;
  *(v0 + 10000) = xmmword_1BCE3FC60;
  *(v0 + 11216) = xmmword_1BCE3FC60;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1504) = xmmword_1BCE3FC70;
  *(v0 + 10016) = xmmword_1BCE3FC70;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1520) = xmmword_1BCE44ED0;
  *(v0 + 10032) = xmmword_1BCE44ED0;
  *(v0 + 11248) = xmmword_1BCE44ED0;
  result = 1.0;
  *(v0 + 1536) = xmmword_1BCE3E220;
  *(v0 + 4224) = xmmword_1BCE3E220;
  *(v0 + 5888) = xmmword_1BCE3E220;
  *(v0 + 7104) = xmmword_1BCE3E220;
  *(v0 + 7872) = xmmword_1BCE3E220;
  *(v0 + 10048) = xmmword_1BCE3E220;
  *(v0 + 11264) = xmmword_1BCE3E220;
  *(v0 + 1552) = xmmword_1BCE3FC90;
  *(v0 + 10064) = xmmword_1BCE3FC90;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 1568) = xmmword_1BCE3FC00;
  *(v0 + 10080) = xmmword_1BCE3FC00;
  *(v0 + 11296) = xmmword_1BCE3FC00;
  *(v0 + 544) = xmmword_1BCE3DA70;
  *(v0 + 560) = xmmword_1BCE40220;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 2800) = xmmword_1BCE3FC10;
  *(v0 + 8880) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 1760) = xmmword_1BCE3DA70;
  *(v0 + 3040) = xmmword_1BCE3DA70;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 4672) = xmmword_1BCE3DA70;
  *(v0 + 8320) = xmmword_1BCE3DA70;
  *(v0 + 9120) = xmmword_1BCE3DA70;
  *(v0 + 9568) = xmmword_1BCE3DA70;
  *(v0 + 10272) = xmmword_1BCE3DA70;
  *(v0 + 11488) = xmmword_1BCE3DA70;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 816) = xmmword_1BCE40220;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 1776) = xmmword_1BCE40220;
  *(v0 + 2032) = xmmword_1BCE40220;
  *(v0 + 2928) = xmmword_1BCE40220;
  *(v0 + 8368) = _Q6;
  *(v0 + 3248) = xmmword_1BCE40220;
  *(v0 + 3440) = xmmword_1BCE40220;
  *(v0 + 4144) = xmmword_1BCE40220;
  *(v0 + 8304) = xmmword_1BCE40220;
  *(v0 + 8336) = xmmword_1BCE44F00;
  *(v0 + 8352) = xmmword_1BCE3CCC0;
  *(v0 + 8208) = _Q6;
  *(v0 + 8224) = _Q6;
  *(v0 + 8240) = _Q6;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q6;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 4208) = xmmword_1BCE40220;
  *(v0 + 8112) = _Q6;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = xmmword_1BCE44F00;
  *(v0 + 8176) = _Q6;
  *(v0 + 0x2000) = _Q6;
  *(v0 + 4656) = xmmword_1BCE40220;
  *(v0 + 8016) = _Q6;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q6;
  *(v0 + 8064) = _Q6;
  *(v0 + 8080) = _Q6;
  *(v0 + 7920) = _Q6;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q6;
  *(v0 + 7968) = _Q6;
  *(v0 + 7984) = _Q6;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 5872) = xmmword_1BCE40220;
  *(v0 + 5904) = xmmword_1BCE40220;
  *(v0 + 7088) = xmmword_1BCE40220;
  *(v0 + 7120) = xmmword_1BCE40220;
  *(v0 + 7856) = xmmword_1BCE40220;
  *(v0 + 7888) = xmmword_1BCE44F00;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7760) = _Q6;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7792) = xmmword_1BCE40220;
  *(v0 + 9008) = xmmword_1BCE40220;
  *(v0 + 9328) = xmmword_1BCE40220;
  *(v0 + 9520) = xmmword_1BCE40220;
  *(v0 + 10288) = xmmword_1BCE40220;
  *(v0 + 10544) = xmmword_1BCE40220;
  *(v0 + 11504) = xmmword_1BCE40220;
  *(v0 + 11760) = xmmword_1BCE40220;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7520) = _Q6;
  *(v0 + 7536) = _Q6;
  *(v0 + 7552) = _Q6;
  *(v0 + 7568) = _Q6;
  *(v0 + 7584) = _Q6;
  *(v0 + 7600) = _Q6;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 7472) = _Q6;
  *(v0 + 7488) = _Q6;
  *(v0 + 7504) = _Q6;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 7337) = *v13;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 7328) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 6704) = _Q6;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q6;
  *(v0 + 7280) = _Q6;
  *(v0 + 7296) = _Q6;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q6;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q6;
  *(v0 + 7232) = _Q6;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q6;
  *(v0 + 6752) = _Q6;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7136) = xmmword_1BCE3CCC0;
  *(v0 + 7152) = _Q6;
  *(v0 + 6976) = _Q6;
  *(v0 + 6992) = _Q6;
  *(v0 + 7008) = _Q6;
  *(v0 + 7024) = _Q6;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q6;
  *(v0 + 6768) = _Q6;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6896) = _Q6;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6928) = _Q6;
  *(v0 + 6960) = _Q6;
  *(v0 + 6800) = _Q6;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q6;
  *(v0 + 6848) = _Q6;
  *(v0 + 6864) = _Q6;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 592) = xmmword_1BCE44F00;
  *(v0 + 1808) = xmmword_1BCE44F00;
  *(v0 + 2064) = xmmword_1BCE44F00;
  *(v0 + 6640) = _Q6;
  *(v0 + 4240) = xmmword_1BCE44F00;
  *(v0 + 4496) = xmmword_1BCE44F00;
  *(v0 + 4688) = xmmword_1BCE44F00;
  *(v0 + 6504) = 0;
  *(v0 + 6544) = _Q6;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 10320) = xmmword_1BCE44F00;
  *(v0 + 10576) = xmmword_1BCE44F00;
  *(v0 + 11536) = xmmword_1BCE44F00;
  *(v0 + 11792) = xmmword_1BCE44F00;
  *(v0 + 848) = xmmword_1BCE44F00;
  *(v0 + 864) = xmmword_1BCE3CCC0;
  *(v0 + 6336) = _Q6;
  *(v0 + 6352) = _Q6;
  *(v0 + 6368) = _Q6;
  *(v0 + 6384) = _Q6;
  *(v0 + 6256) = _Q6;
  *(v0 + 6272) = _Q6;
  *(v0 + 6288) = _Q6;
  *(v0 + 6304) = _Q6;
  *(v0 + 6320) = _Q6;
  *(v0 + 2080) = xmmword_1BCE3CCC0;
  *(v0 + 3296) = xmmword_1BCE3CCC0;
  *(v0 + 4704) = xmmword_1BCE3CCC0;
  *(v0 + 5920) = xmmword_1BCE3CCC0;
  *(v0 + 6112) = 0x4032000000000001;
  *(v0 + 6121) = *v12;
  *(v0 + 6152) = 1061997773;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 9376) = xmmword_1BCE3CCC0;
  *(v0 + 10592) = xmmword_1BCE3CCC0;
  *(v0 + 11808) = xmmword_1BCE3CCC0;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q6;
  *(v0 + 6064) = _Q6;
  *(v0 + 6080) = _Q6;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 1024) = xmmword_1BCE3E230;
  *(v0 + 5968) = _Q6;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q6;
  *(v0 + 6016) = _Q6;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 2240) = xmmword_1BCE3E230;
  *(v0 + 10752) = xmmword_1BCE3E230;
  *(v0 + 11968) = xmmword_1BCE3E230;
  *(v0 + 5936) = _Q6;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 528) = xmmword_1BCE44EF0;
  *(v0 + 5792) = _Q6;
  *(v0 + 5808) = _Q6;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q6;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 1040) = xmmword_1BCE44EF0;
  *(v0 + 5712) = _Q6;
  *(v0 + 5744) = _Q6;
  *(v0 + 5760) = _Q6;
  *(v0 + 5776) = _Q6;
  *(v0 + 1744) = xmmword_1BCE44EF0;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q6;
  *(v0 + 5632) = _Q6;
  *(v0 + 5648) = _Q6;
  *(v0 + 5680) = _Q6;
  *(v0 + 2256) = xmmword_1BCE44EF0;
  *(v0 + 5536) = _Q6;
  *(v0 + 5552) = _Q6;
  *(v0 + 5584) = _Q6;
  *(v0 + 10256) = xmmword_1BCE44EF0;
  *(v0 + 10768) = xmmword_1BCE44EF0;
  *(v0 + 11472) = xmmword_1BCE44EF0;
  *(v0 + 11984) = xmmword_1BCE44EF0;
  *(v0 + 1008) = xmmword_1BCE44EE0;
  *(v0 + 5488) = _Q6;
  *(v0 + 5520) = _Q6;
  *(v0 + 1712) = xmmword_1BCE44EE0;
  *(v0 + 2224) = xmmword_1BCE44EE0;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5424) = _Q6;
  *(v0 + 10224) = xmmword_1BCE44EE0;
  *(v0 + 10736) = xmmword_1BCE44EE0;
  *(v0 + 11440) = xmmword_1BCE44EE0;
  *(v0 + 11952) = xmmword_1BCE44EE0;
  *(v0 + 496) = xmmword_1BCE44EE0;
  *(v0 + 512) = xmmword_1BCE3EE20;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q6;
  *(v0 + 576) = xmmword_1BCE3EE20;
  *(v0 + 608) = xmmword_1BCE3EE20;
  *(v0 + 1056) = xmmword_1BCE3EE20;
  *(v0 + 1728) = xmmword_1BCE3EE20;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5088) = _Q6;
  *(v0 + 5104) = _Q6;
  *(v0 + 5120) = _Q6;
  *(v0 + 5136) = _Q6;
  *(v0 + 5152) = _Q6;
  *(v0 + 5168) = _Q6;
  *(v0 + 1792) = xmmword_1BCE3EE20;
  *(v0 + 1824) = xmmword_1BCE3EE20;
  *(v0 + 2272) = xmmword_1BCE3EE20;
  *(v0 + 5040) = _Q6;
  *(v0 + 5056) = _Q6;
  *(v0 + 5072) = _Q6;
  *(v0 + 2944) = xmmword_1BCE3EE20;
  *(v0 + 3008) = xmmword_1BCE3EE20;
  *(v0 + 4560) = _Q6;
  *(v0 + 4576) = _Q6;
  *(v0 + 4592) = _Q6;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 4832) = _Q6;
  *(v0 + 4848) = _Q6;
  *(v0 + 4864) = _Q6;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x4032000000000001;
  *(v0 + 4904) = 0;
  *(v0 + 4752) = _Q6;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q6;
  *(v0 + 4800) = _Q6;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q6;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q6;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 9024) = xmmword_1BCE3EE20;
  *(v0 + 9088) = xmmword_1BCE3EE20;
  *(v0 + 10240) = xmmword_1BCE3EE20;
  *(v0 + 10304) = xmmword_1BCE3EE20;
  *(v0 + 10336) = xmmword_1BCE3EE20;
  *(v0 + 10784) = xmmword_1BCE3EE20;
  *(v0 + 11456) = xmmword_1BCE3EE20;
  *(v0 + 11520) = xmmword_1BCE3EE20;
  *(v0 + 11552) = xmmword_1BCE3EE20;
  *(v0 + 12000) = xmmword_1BCE3EE20;
  *(v0 + 4464) = _Q6;
  *(v0 + 4528) = _Q6;
  *(v0 + 4544) = _Q6;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 4368) = _Q6;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q6;
  *(v0 + 4416) = _Q6;
  *(v0 + 4432) = _Q6;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q6;
  *(v0 + 4304) = _Q6;
  *(v0 + 4320) = _Q6;
  *(v0 + 4336) = _Q6;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q6;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
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
  *(v0 + 3920) = _Q6;
  *(v0 + 3936) = _Q6;
  *(v0 + 3952) = _Q6;
  *(v0 + 3824) = _Q6;
  *(v0 + 3840) = _Q6;
  *(v0 + 3856) = _Q6;
  *(v0 + 3872) = _Q6;
  *(v0 + 3888) = _Q6;
  *(v0 + 3904) = _Q6;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3312) = _Q6;
  *(v0 + 3689) = *v10;
  *(v0 + 3720) = 1058642330;
  *(v0 + 3648) = _Q6;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3568) = _Q6;
  *(v0 + 3584) = _Q6;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q6;
  *(v0 + 3632) = _Q6;
  *(v0 + 3328) = _Q6;
  *(v0 + 3344) = _Q6;
  *(v0 + 3360) = _Q6;
  *(v0 + 3504) = _Q6;
  *(v0 + 3536) = _Q6;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3376) = _Q6;
  *(v0 + 3408) = _Q6;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3184) = _Q6;
  *(v0 + 3200) = _Q6;
  *(v0 + 3216) = _Q6;
  *(v0 + 3088) = _Q6;
  *(v0 + 3104) = _Q6;
  *(v0 + 3120) = _Q6;
  *(v0 + 3152) = _Q6;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q6;
  *(v0 + 624) = _Q6;
  *(v0 + 2992) = _Q6;
  *(v0 + 3056) = _Q6;
  *(v0 + 688) = _Q6;
  *(v0 + 720) = _Q6;
  *(v0 + 784) = _Q6;
  *(v0 + 944) = _Q6;
  *(v0 + 976) = _Q6;
  *(v0 + 2896) = _Q6;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q6;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 176) = _Q6;
  *(v0 + 192) = _Q6;
  *(v0 + 208) = _Q6;
  *(v0 + 224) = _Q6;
  *(v0 + 400) = _Q6;
  *(v0 + 424) = 0;
  *(v0 + 2736) = _Q6;
  *(v0 + 2640) = _Q6;
  *(v0 + 2656) = _Q6;
  *(v0 + 2672) = _Q6;
  *(v0 + 2688) = _Q6;
  *(v0 + 2704) = _Q6;
  *(v0 + 2720) = _Q6;
  *(v0 + 656) = _Q6;
  *(v0 + 672) = _Q6;
  *(v0 + 752) = _Q6;
  *(v0 + 768) = _Q6;
  *(v0 + 2608) = _Q6;
  *(v0 + 2624) = _Q6;
  *(v0 + 880) = _Q6;
  *(v0 + 896) = _Q6;
  *(v0 + 912) = _Q6;
  *(v0 + 928) = _Q6;
  *(v0 + 2400) = _Q6;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1050253722;
  *(v0 + 2416) = _Q6;
  *(v0 + 2432) = _Q6;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 1072) = _Q6;
  *(v0 + 1104) = _Q6;
  *(v0 + 2320) = _Q6;
  *(v0 + 2352) = _Q6;
  *(v0 + 2368) = _Q6;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1136) = _Q6;
  *(v0 + 1152) = _Q6;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q6;
  *(v0 + 1200) = _Q6;
  *(v0 + 2288) = _Q6;
  *(v0 + 1216) = _Q6;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 2192) = _Q6;
  *(v0 + 1257) = *v8;
  *(v0 + 2128) = _Q6;
  *(v0 + 2144) = _Q6;
  *(v0 + 2160) = _Q6;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q6;
  *(v0 + 2096) = _Q6;
  *(v0 + 2112) = _Q6;
  *(v0 + 1408) = _Q6;
  *(v0 + 1424) = _Q6;
  *(v0 + 1936) = _Q6;
  *(v0 + 1968) = _Q6;
  *(v0 + 1984) = _Q6;
  *(v0 + 2000) = _Q6;
  *(v0 + 1440) = _Q6;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1840) = _Q6;
  *(v0 + 1872) = _Q6;
  *(v0 + 1888) = _Q6;
  *(v0 + 1904) = _Q6;
  *(v0 + 1616) = _Q6;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q6;
  *(v0 + 8400) = _Q6;
  *(v0 + 8432) = _Q6;
  *(v0 + 8448) = _Q6;
  *(v0 + 8480) = _Q6;
  *(v0 + 8496) = _Q6;
  *(v0 + 8512) = _Q6;
  *(v0 + 8688) = _Q6;
  *(v0 + 8704) = _Q6;
  *(v0 + 8720) = _Q6;
  *(v0 + 8736) = _Q6;
  *(v0 + 8752) = _Q6;
  *(v0 + 8768) = _Q6;
  *(v0 + 8784) = _Q6;
  *(v0 + 8800) = _Q6;
  *(v0 + 8816) = _Q6;
  *(v0 + 8912) = _Q6;
  *(v0 + 8976) = _Q6;
  *(v0 + 9072) = _Q6;
  *(v0 + 9136) = _Q6;
  *(v0 + 9168) = _Q6;
  *(v0 + 9184) = _Q6;
  *(v0 + 9200) = _Q6;
  *(v0 + 9232) = _Q6;
  *(v0 + 9264) = _Q6;
  *(v0 + 9280) = _Q6;
  *(v0 + 9296) = _Q6;
  *(v0 + 9392) = _Q6;
  *(v0 + 9408) = _Q6;
  *(v0 + 9424) = _Q6;
  *(v0 + 9440) = _Q6;
  *(v0 + 9456) = _Q6;
  *(v0 + 9488) = _Q6;
  *(v0 + 9584) = _Q6;
  *(v0 + 9616) = _Q6;
  *(v0 + 9648) = _Q6;
  *(v0 + 9664) = _Q6;
  *(v0 + 9696) = _Q6;
  *(v0 + 9712) = _Q6;
  *(v0 + 9728) = _Q6;
  *(v0 + 9904) = _Q6;
  *(v0 + 9920) = _Q6;
  *(v0 + 9936) = _Q6;
  *(v0 + 9952) = _Q6;
  *(v0 + 10128) = _Q6;
  *(v0 + 10192) = _Q6;
  *(v0 + 10352) = _Q6;
  *(v0 + 10384) = _Q6;
  *(v0 + 10400) = _Q6;
  *(v0 + 10416) = _Q6;
  *(v0 + 10448) = _Q6;
  *(v0 + 10480) = _Q6;
  *(v0 + 10496) = _Q6;
  *(v0 + 10512) = _Q6;
  *(v0 + 10608) = _Q6;
  *(v0 + 10624) = _Q6;
  *(v0 + 10640) = _Q6;
  *(v0 + 10656) = _Q6;
  *(v0 + 10672) = _Q6;
  *(v0 + 10704) = _Q6;
  *(v0 + 10800) = _Q6;
  *(v0 + 10832) = _Q6;
  *(v0 + 10864) = _Q6;
  *(v0 + 10880) = _Q6;
  *(v0 + 10912) = _Q6;
  *(v0 + 10928) = _Q6;
  *(v0 + 10944) = _Q6;
  *(v0 + 11120) = _Q6;
  *(v0 + 11136) = _Q6;
  *(v0 + 11152) = _Q6;
  *(v0 + 11168) = _Q6;
  *(v0 + 11344) = _Q6;
  *(v0 + 11408) = _Q6;
  *(v0 + 11568) = _Q6;
  *(v0 + 11600) = _Q6;
  *(v0 + 11616) = _Q6;
  *(v0 + 11632) = _Q6;
  *(v0 + 11664) = _Q6;
  *(v0 + 11696) = _Q6;
  *(v0 + 11712) = _Q6;
  *(v0 + 11728) = _Q6;
  *(v0 + 11824) = _Q6;
  *(v0 + 11840) = _Q6;
  *(v0 + 11856) = _Q6;
  *(v0 + 11872) = _Q6;
  *(v0 + 11888) = _Q6;
  *(v0 + 11920) = _Q6;
  *(v0 + 12016) = _Q6;
  *(v0 + 12048) = _Q6;
  *(v0 + 12080) = _Q6;
  *(v0 + 12096) = _Q6;
  *(v0 + 12128) = _Q6;
  *(v0 + 12144) = _Q6;
  *(v0 + 12160) = _Q6;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1050253722;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC04E000000000000;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCC0F8C4(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCAB4EA8();
  v4 = v3;
  sub_1BCAB4EA8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3BE000000000000;
  *(a1 + 80) = xmmword_1BCE58780;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4243000040A00000;
  *(a1 + 248) = 1142292480;
  *(a1 + 256) = 0x3E6147AE3E0F5C29;
  *(a1 + 264) = 0x406D70A441500000;
  *(a1 + 272) = 1084227584;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x44160000420F0000;
  *(a1 + 328) = 0x3E75C28F3DF5C28FLL;
  *(a1 + 336) = 0x40A000004115C28FLL;
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
  *(a1 + 712) = 0x400000003F800000;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1105199104;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE58790;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE587A0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E8F5C293E0F5C29;
  *(a1 + 1296) = 0x428C000041C80000;
  *(a1 + 1304) = 1099951718;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1092616192;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
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
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1638) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 210) = 65793;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 3;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
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
  *(a1 + 1968) = xmmword_1BCE4E750;
  *(a1 + 1984) = 0x3F80000041A00000;
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
  *(a1 + 2120) = 0x3E3851EC3DA3D70ALL;
  *(a1 + 2128) = 0x3F4CCCCD3F000000;
  *(a1 + 2136) = 0x4060000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1062803079;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

void sub_1BCC10048(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCC10794();
  sub_1BCC127A0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC402000000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
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
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
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
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 1095381920;
  *(a1 + 736) = 1;
  *(a1 + 744) = 8;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 0x41A7363841547110;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4199999A417947AELL;
  *(a1 + 984) = 0x3F5AA700410937B0;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE42370;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.5 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE435B0;
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
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000001010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 1;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 0x40000000;
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
  *(a1 + 2240) = xmmword_1BCE43060;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v11;
}