uint64_t sub_1BCA7854C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCA785BC(uint64_t a1)
{
  v2 = type metadata accessor for RainInlineContentViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCA78618()
{
  v1 = OUTLINED_FUNCTION_12_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  return v0;
}

uint64_t CurrentObservationViewAttributes.LocationStyle.glyph.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    if (qword_1EBD07240 != -1)
    {
      swift_once();
    }
  }

  else if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return sub_1BCE1CBA0();
  }
}

uint64_t CurrentObservationViewAttributes.LocationStyle.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1BCE1CC00();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 104);
  v7 = MEMORY[0x1E69816E0];
  if (v3 != 2)
  {
    v7 = MEMORY[0x1E69816C8];
  }

  v8 = *v7;

  return v6(a1, v8, v4);
}

uint64_t CurrentObservationViewAttributes.LocationStyle.accessibilityLabel.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v1 != 3)
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_7:
      OUTLINED_FUNCTION_3_9();
      v3 = qword_1EDA1EFB8;
      v2 = sub_1BCE18B60();

      return v2;
    }

LABEL_9:
    OUTLINED_FUNCTION_0();
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1BCA78924()
{
  v0 = type metadata accessor for CurrentObservationViewModel();
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for DailyForecastViewModel();
    if (v2 <= 0x3F)
    {
      sub_1BCA78B08();
      v0 = v3;
      if (v4 <= 0x3F)
      {
        v0 = sub_1BCE1A6F0();
        if (v5 <= 0x3F)
        {
          sub_1BC94E330(319, &qword_1EDA1B658);
          v0 = v6;
          if (v7 <= 0x3F)
          {
            sub_1BC94E330(319, &qword_1EDA1B678);
            if (v9 > 0x3F)
            {
              return v8;
            }

            else
            {
              sub_1BC94E330(319, &qword_1EDA1F1D8);
              v0 = v10;
              if (v11 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1BCA78B08()
{
  if (!qword_1EDA18F68[0])
  {
    type metadata accessor for RainInlineContentViewModel();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, qword_1EDA18F68);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for CurrentObservationViewAttributes.LocationStyle(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 3);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentObservationViewAttributes.LocationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1BCA78D08(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA794E0(xmmword_1BCE465B0);
  v4 = v3;
  sub_1BCA794E0(xmmword_1BCE3DAE0);
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE465C0;
  *(a1 + 112) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE465D0;
  *(a1 + 176) = 1157234688;
  *(a1 + 184) = 0x3F19999A3E75C28FLL;
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
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x41963C6A413D851FLL;
  *(a1 + 728) = 3189390797;
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
  *(a1 + 848) = 0x4180CCCD41380000;
  *(a1 + 856) = 1081738482;
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
  *(a1 + 976) = 0x411333334100CCCDLL;
  *(a1 + 984) = 3220386611;
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
  *(a1 + 1104) = 0x40B8000040933333;
  *(a1 + 1112) = 1089281721;
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
  *(a1 + 1216) = xmmword_1BCE46600;
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
  *(a1 + 1680) = xmmword_1BCE46610;
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
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE46640;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3F19999A3E851EB8;
  *(a1 + 2128) = 0x3F8CCCCD3F400000;
  *(a1 + 2136) = 0x4160000041300000;
  *(a1 + 2144) = -1039138816;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1054754042;
  *(a1 + 2200) = 17;
  *(a1 + 2208) = 0x41F000003FC00000;
  *(a1 + 2224) = xmmword_1BCE46650;
  *(a1 + 2240) = xmmword_1BCE46660;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCA794E0(__n128 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BCE3EBD0;
  *(v1 + 48) = xmmword_1BCE3CE40;
  *(v1 + 64) = 0x42C8000044160000;
  *(v1 + 80) = xmmword_1BCE46670;
  *(v1 + 96) = xmmword_1BCE46680;
  *(v1 + 112) = xmmword_1BCE46690;
  *(v1 + 128) = xmmword_1BCE466A0;
  *(v1 + 3024) = xmmword_1BCE46850;
  *(v1 + 4672) = a1;
  *(v1 + 4928) = 1153957888;
  *(v1 + 6144) = 1153957888;
  *(v1 + 4944) = xmmword_1BCE40840;
  *(v1 + 6160) = xmmword_1BCE40840;
  *(v1 + 4960) = xmmword_1BCE40850;
  *(v1 + 6176) = xmmword_1BCE40850;
  *(v1 + 5072) = xmmword_1BCE40730;
  *(v1 + 6288) = xmmword_1BCE40730;
  *(v1 + 5264) = xmmword_1BCE3E9D0;
  *(v1 + 6480) = xmmword_1BCE3E9D0;
  *(v1 + 5360) = xmmword_1BCE46940;
  *(v1 + 6576) = xmmword_1BCE46940;
  *(v1 + 5376) = xmmword_1BCE46950;
  *(v1 + 6592) = xmmword_1BCE46950;
  *(v1 + 5392) = xmmword_1BCE46960;
  *(v1 + 6608) = xmmword_1BCE46960;
  *(v1 + 5408) = xmmword_1BCE46970;
  *(v1 + 6624) = xmmword_1BCE46970;
  *(v1 + 5424) = xmmword_1BCE46980;
  *(v1 + 6640) = xmmword_1BCE46980;
  *(v1 + 5440) = xmmword_1BCE41640;
  *(v1 + 6656) = xmmword_1BCE41640;
  *(v1 + 5472) = xmmword_1BCE46990;
  *(v1 + 6688) = xmmword_1BCE46990;
  v2 = vdupq_n_s64(0x3FED51B200000000uLL);
  *(v1 + 5872) = v2;
  *(v1 + 7088) = v2;
  *(v1 + 5888) = xmmword_1BCE469A0;
  *(v1 + 7104) = xmmword_1BCE469A0;
  *(v1 + 5904) = xmmword_1BCE469B0;
  *(v1 + 7120) = xmmword_1BCE469B0;
  *(v1 + 3712) = 1152319488;
  *(v1 + 7360) = 1152319488;
  *(v1 + 3728) = xmmword_1BCE406D0;
  *(v1 + 7376) = xmmword_1BCE406D0;
  *(v1 + 3744) = xmmword_1BCE406E0;
  *(v1 + 7392) = xmmword_1BCE406E0;
  *(v1 + 3760) = xmmword_1BCE46870;
  *(v1 + 4976) = xmmword_1BCE46870;
  *(v1 + 6192) = xmmword_1BCE46870;
  *(v1 + 7408) = xmmword_1BCE46870;
  *(v1 + 3776) = xmmword_1BCE3DC00;
  *(v1 + 4992) = xmmword_1BCE3DC00;
  *(v1 + 6208) = xmmword_1BCE3DC00;
  *(v1 + 7424) = xmmword_1BCE3DC00;
  *(v1 + 3792) = xmmword_1BCE406F0;
  *(v1 + 7440) = xmmword_1BCE406F0;
  *(v1 + 3808) = xmmword_1BCE40700;
  *(v1 + 7456) = xmmword_1BCE40700;
  *(v1 + 3824) = xmmword_1BCE46880;
  *(v1 + 5040) = xmmword_1BCE46880;
  *(v1 + 6256) = xmmword_1BCE46880;
  *(v1 + 7472) = xmmword_1BCE46880;
  *(v1 + 3840) = xmmword_1BCE3CBA0;
  *(v1 + 7488) = xmmword_1BCE3CBA0;
  *(v1 + 3856) = xmmword_1BCE46890;
  *(v1 + 7504) = xmmword_1BCE46890;
  *(v1 + 3872) = xmmword_1BCE40450;
  *(v1 + 7520) = xmmword_1BCE40450;
  *(v1 + 3936) = xmmword_1BCE468A0;
  *(v1 + 7584) = xmmword_1BCE468A0;
  *(v1 + 3984) = xmmword_1BCE40760;
  *(v1 + 5200) = xmmword_1BCE40760;
  *(v1 + 6416) = xmmword_1BCE40760;
  *(v1 + 7632) = xmmword_1BCE40760;
  *(v1 + 4000) = xmmword_1BCE40770;
  *(v1 + 5216) = xmmword_1BCE40770;
  *(v1 + 6432) = xmmword_1BCE40770;
  *(v1 + 7648) = xmmword_1BCE40770;
  *(v1 + 4016) = xmmword_1BCE40780;
  *(v1 + 5232) = xmmword_1BCE40780;
  *(v1 + 6448) = xmmword_1BCE40780;
  *(v1 + 7664) = xmmword_1BCE40780;
  *(v1 + 4032) = 1063675494;
  *(v1 + 5248) = 1063675494;
  *(v1 + 6464) = 1063675494;
  *(v1 + 7680) = 1063675494;
  *(v1 + 4048) = xmmword_1BCE3CDC0;
  *(v1 + 7696) = xmmword_1BCE3CDC0;
  *(v1 + 4144) = xmmword_1BCE468B0;
  *(v1 + 7792) = xmmword_1BCE468B0;
  *(v1 + 4160) = xmmword_1BCE468C0;
  *(v1 + 7808) = xmmword_1BCE468C0;
  *(v1 + 4176) = xmmword_1BCE468D0;
  *(v1 + 7824) = xmmword_1BCE468D0;
  *(v1 + 4192) = xmmword_1BCE468E0;
  *(v1 + 7840) = xmmword_1BCE468E0;
  *(v1 + 4208) = xmmword_1BCE468F0;
  *(v1 + 7856) = xmmword_1BCE468F0;
  *(v1 + 4224) = xmmword_1BCE46900;
  *(v1 + 7872) = xmmword_1BCE46900;
  *(v1 + 4240) = xmmword_1BCE46910;
  *(v1 + 5456) = xmmword_1BCE46910;
  *(v1 + 6672) = xmmword_1BCE46910;
  *(v1 + 7888) = xmmword_1BCE46910;
  *(v1 + 4256) = xmmword_1BCE46920;
  *(v1 + 7904) = xmmword_1BCE46920;
  *(v1 + 4688) = xmmword_1BCE46930;
  *(v1 + 8336) = xmmword_1BCE46930;
  *(v1 + 2496) = 0x4316000044610000;
  *(v1 + 8576) = 0x4316000044610000;
  *(v1 + 2512) = xmmword_1BCE40590;
  *(v1 + 8592) = xmmword_1BCE40590;
  *(v1 + 2528) = xmmword_1BCE405A0;
  *(v1 + 8608) = xmmword_1BCE405A0;
  *(v1 + 2544) = xmmword_1BCE405B0;
  *(v1 + 8624) = xmmword_1BCE405B0;
  *(v1 + 2560) = xmmword_1BCE405C0;
  *(v1 + 8640) = xmmword_1BCE405C0;
  *(v1 + 2608) = xmmword_1BCE467B0;
  *(v1 + 8688) = xmmword_1BCE467B0;
  *(v1 + 2624) = xmmword_1BCE467C0;
  *(v1 + 8704) = xmmword_1BCE467C0;
  *(v1 + 2640) = xmmword_1BCE405F0;
  *(v1 + 8720) = xmmword_1BCE405F0;
  *(v1 + 2656) = xmmword_1BCE40600;
  *(v1 + 5088) = xmmword_1BCE40600;
  *(v1 + 6304) = xmmword_1BCE40600;
  *(v1 + 8736) = xmmword_1BCE40600;
  *(v1 + 2672) = xmmword_1BCE3E780;
  *(v1 + 3888) = xmmword_1BCE3E780;
  *(v1 + 5104) = xmmword_1BCE3E780;
  *(v1 + 6320) = xmmword_1BCE3E780;
  *(v1 + 7536) = xmmword_1BCE3E780;
  *(v1 + 8752) = xmmword_1BCE3E780;
  *(v1 + 2704) = xmmword_1BCE467D0;
  *(v1 + 3920) = xmmword_1BCE467D0;
  *(v1 + 5136) = xmmword_1BCE467D0;
  *(v1 + 6352) = xmmword_1BCE467D0;
  *(v1 + 7568) = xmmword_1BCE467D0;
  *(v1 + 8784) = xmmword_1BCE467D0;
  *(v1 + 2720) = xmmword_1BCE467E0;
  *(v1 + 5152) = xmmword_1BCE467E0;
  *(v1 + 6368) = xmmword_1BCE467E0;
  *(v1 + 8800) = xmmword_1BCE467E0;
  *v2.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v1 + 2816) = v2.i64[0];
  *(v1 + 8896) = v2.i64[0];
  *(v1 + 2928) = xmmword_1BCE467F0;
  *(v1 + 9008) = xmmword_1BCE467F0;
  *(v1 + 2944) = xmmword_1BCE46800;
  *(v1 + 9024) = xmmword_1BCE46800;
  *(v1 + 2960) = xmmword_1BCE46810;
  *(v1 + 9040) = xmmword_1BCE46810;
  *(v1 + 2976) = xmmword_1BCE46820;
  *(v1 + 9056) = xmmword_1BCE46820;
  *(v1 + 2992) = xmmword_1BCE46830;
  *(v1 + 9072) = xmmword_1BCE46830;
  *(v1 + 3008) = xmmword_1BCE46840;
  *(v1 + 9088) = xmmword_1BCE46840;
  *(v1 + 9104) = xmmword_1BCE469C0;
  *(v1 + 3040) = xmmword_1BCE42F00;
  *(v1 + 9120) = xmmword_1BCE42F00;
  *(v1 + 3472) = xmmword_1BCE46860;
  *(v1 + 9552) = xmmword_1BCE46860;
  *(v1 + 10320) = xmmword_1BCE469D0;
  *(v1 + 10736) = xmmword_1BCE469E0;
  *(v1 + 10752) = xmmword_1BCE469F0;
  *(v1 + 144) = xmmword_1BCE3EEF0;
  *(v1 + 160) = xmmword_1BCE3EF00;
  *(v1 + 1264) = xmmword_1BCE3CE40;
  *(v1 + 2480) = xmmword_1BCE3CE40;
  *(v1 + 3696) = xmmword_1BCE3CE40;
  *(v1 + 4912) = xmmword_1BCE3CE40;
  *(v1 + 6128) = xmmword_1BCE3CE40;
  *(v1 + 7344) = xmmword_1BCE3CE40;
  *(v1 + 8560) = xmmword_1BCE3CE40;
  *(v1 + 9776) = xmmword_1BCE3CE40;
  *(v1 + 10992) = xmmword_1BCE3CE40;
  *(v1 + 1280) = 0x42C8000044160000;
  *(v1 + 9792) = 0x42C8000044160000;
  *(v1 + 11008) = 0x42C8000044160000;
  *(v1 + 176) = xmmword_1BCE466B0;
  *(v1 + 192) = xmmword_1BCE466C0;
  *(v1 + 1296) = xmmword_1BCE46670;
  *(v1 + 9808) = xmmword_1BCE46670;
  *(v1 + 11024) = xmmword_1BCE46670;
  *(v1 + 1312) = xmmword_1BCE46680;
  *(v1 + 9824) = xmmword_1BCE46680;
  *(v1 + 11040) = xmmword_1BCE46680;
  *(v1 + 208) = xmmword_1BCE466D0;
  *(v1 + 224) = xmmword_1BCE466E0;
  *(v1 + 1328) = xmmword_1BCE46690;
  *(v1 + 9840) = xmmword_1BCE46690;
  *(v1 + 11056) = xmmword_1BCE46690;
  *(v1 + 1344) = xmmword_1BCE466A0;
  *(v1 + 9856) = xmmword_1BCE466A0;
  *(v1 + 11072) = xmmword_1BCE466A0;
  *(v1 + 240) = xmmword_1BCE466F0;
  *(v1 + 256) = xmmword_1BCE3E790;
  *(v1 + 1360) = xmmword_1BCE3EEF0;
  *(v1 + 2576) = xmmword_1BCE3EEF0;
  *(v1 + 5008) = xmmword_1BCE3EEF0;
  *(v1 + 6224) = xmmword_1BCE3EEF0;
  *(v1 + 8656) = xmmword_1BCE3EEF0;
  *(v1 + 9872) = xmmword_1BCE3EEF0;
  *(v1 + 11088) = xmmword_1BCE3EEF0;
  *(v1 + 1376) = xmmword_1BCE3EF00;
  *(v1 + 2592) = xmmword_1BCE3EF00;
  *(v1 + 5024) = xmmword_1BCE3EF00;
  *(v1 + 6240) = xmmword_1BCE3EF00;
  *(v1 + 8672) = xmmword_1BCE3EF00;
  *(v1 + 9888) = xmmword_1BCE3EF00;
  *(v1 + 11104) = xmmword_1BCE3EF00;
  *(v1 + 272) = xmmword_1BCE40440;
  *(v1 + 288) = xmmword_1BCE46700;
  *(v1 + 1392) = xmmword_1BCE466B0;
  *(v1 + 9904) = xmmword_1BCE466B0;
  *(v1 + 11120) = xmmword_1BCE466B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 1408) = xmmword_1BCE466C0;
  *(v1 + 9920) = xmmword_1BCE466C0;
  *(v1 + 11136) = xmmword_1BCE466C0;
  *(v1 + 1424) = xmmword_1BCE466D0;
  *(v1 + 9936) = xmmword_1BCE466D0;
  *(v1 + 11152) = xmmword_1BCE466D0;
  *(v1 + 1440) = xmmword_1BCE466E0;
  *(v1 + 9952) = xmmword_1BCE466E0;
  *(v1 + 11168) = xmmword_1BCE466E0;
  *(v1 + 320) = xmmword_1BCE3E1D0;
  *(v1 + 336) = xmmword_1BCE40480;
  *(v1 + 352) = xmmword_1BCE40490;
  *(v1 + 1456) = xmmword_1BCE466F0;
  *(v1 + 9968) = xmmword_1BCE466F0;
  *(v1 + 11184) = xmmword_1BCE466F0;
  *(v1 + 1472) = xmmword_1BCE3E790;
  *(v1 + 2688) = xmmword_1BCE3E790;
  *(v1 + 3904) = xmmword_1BCE3E790;
  *(v1 + 5120) = xmmword_1BCE3E790;
  *(v1 + 6336) = xmmword_1BCE3E790;
  *(v1 + 7552) = xmmword_1BCE3E790;
  *(v1 + 8768) = xmmword_1BCE3E790;
  *(v1 + 9984) = xmmword_1BCE3E790;
  *(v1 + 11200) = xmmword_1BCE3E790;
  *(v1 + 1488) = xmmword_1BCE40440;
  *(v1 + 10000) = xmmword_1BCE40440;
  *(v1 + 11216) = xmmword_1BCE40440;
  *(v1 + 1504) = xmmword_1BCE46700;
  *(v1 + 10016) = xmmword_1BCE46700;
  *(v1 + 11232) = xmmword_1BCE46700;
  *(v1 + 8352) = xmmword_1BCE3A880;
  *(v1 + 8368) = result;
  *(v1 + 1536) = xmmword_1BCE3E1D0;
  *(v1 + 2752) = xmmword_1BCE3E1D0;
  *(v1 + 8272) = result;
  *(v1 + 8288) = xmmword_1BCE3DAE0;
  *(v1 + 8304) = result;
  *(v1 + 8320) = xmmword_1BCE3DAE0;
  *(v1 + 3968) = xmmword_1BCE3E1D0;
  *(v1 + 0x2000) = result;
  *(v1 + 8208) = result;
  *(v1 + 8224) = result;
  *(v1 + 8240) = result;
  *(v1 + 8256) = xmmword_1BCE3C8C0;
  *(v1 + 8096) = xmmword_1BCE3DD90;
  *(v1 + 8112) = result;
  *(v1 + 8128) = result;
  *(v1 + 8144) = result;
  *(v1 + 8160) = result;
  *(v1 + 8176) = result;
  *(v1 + 8000) = xmmword_1BCE3A880;
  *(v1 + 8016) = result;
  *(v1 + 8032) = xmmword_1BCE3C8C0;
  *(v1 + 8048) = result;
  *(v1 + 8064) = result;
  *(v1 + 8080) = result;
  *(v1 + 5184) = xmmword_1BCE3E1D0;
  *(v1 + 7920) = result;
  *(v1 + 7936) = xmmword_1BCE3A880;
  *(v1 + 7952) = result;
  *(v1 + 7968) = result;
  *(v1 + 7984) = result;
  *(v1 + 6400) = xmmword_1BCE3E1D0;
  *(v1 + 7616) = xmmword_1BCE3E1D0;
  *(v1 + 8832) = xmmword_1BCE3E1D0;
  *(v1 + 10048) = xmmword_1BCE3E1D0;
  *(v1 + 11264) = xmmword_1BCE3E1D0;
  *(v1 + 1552) = xmmword_1BCE40480;
  *(v1 + 2768) = xmmword_1BCE40480;
  *(v1 + 7760) = result;
  *(v1 + 7776) = xmmword_1BCE3DAE0;
  *(v1 + 8848) = xmmword_1BCE40480;
  *(v1 + 10064) = xmmword_1BCE40480;
  *(v1 + 11280) = xmmword_1BCE40480;
  *(v1 + 7720) = 1065353216;
  *(v1 + 7744) = 0u;
  *(v1 + 7728) = 0u;
  *(v1 + 368) = xmmword_1BCE404A0;
  *(v1 + 7688) = 0x3FEF0AE2E0000000;
  *(v1 + 7712) = 0x3FF0000000000000;
  *(v1 + 1568) = xmmword_1BCE40490;
  *(v1 + 2784) = xmmword_1BCE40490;
  *(v1 + 7600) = result;
  *(v1 + 8864) = xmmword_1BCE40490;
  *(v1 + 10080) = xmmword_1BCE40490;
  *(v1 + 11296) = xmmword_1BCE40490;
  *(v1 + 384) = 0x3F8000003F4CCCCDLL;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 1584) = xmmword_1BCE404A0;
  *(v1 + 2800) = xmmword_1BCE404A0;
  *(v1 + 8880) = xmmword_1BCE404A0;
  *(v1 + 10096) = xmmword_1BCE404A0;
  *(v1 + 11312) = xmmword_1BCE404A0;
  *(v1 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v1 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v1 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v1 + 1664) = 0u;
  *(v1 + 1648) = 0u;
  *(v1 + 7337) = *v14;
  *(v1 + 7368) = 1061997773;
  *(v1 + 7328) = 0x4040800000000000;
  *(v1 + 7336) = 1;
  *(v1 + 7340) = *&v14[3];
  *(v1 + 7248) = 0x4170000042480000;
  *(v1 + 7256) = 0x3FF0000000000000;
  *(v1 + 7264) = result;
  *(v1 + 7280) = result;
  *(v1 + 7296) = result;
  *(v1 + 7312) = 0x3FF0000000000000;
  *(v1 + 7152) = result;
  *(v1 + 7168) = xmmword_1BCE3C8C0;
  *(v1 + 7184) = result;
  *(v1 + 7200) = xmmword_1BCE3DAE0;
  *(v1 + 7216) = result;
  *(v1 + 7232) = result;
  *(v1 + 2880) = 0u;
  *(v1 + 2864) = 0u;
  *(v1 + 4096) = 0u;
  *(v1 + 7056) = result;
  *(v1 + 7072) = xmmword_1BCE3DAE0;
  *(v1 + 7136) = xmmword_1BCE3A880;
  *(v1 + 6960) = result;
  *(v1 + 6976) = result;
  *(v1 + 6992) = result;
  *(v1 + 7008) = result;
  *(v1 + 7024) = result;
  *(v1 + 7040) = xmmword_1BCE3C8C0;
  *(v1 + 6864) = result;
  *(v1 + 6880) = xmmword_1BCE3DD90;
  *(v1 + 6896) = result;
  *(v1 + 6912) = result;
  *(v1 + 6928) = result;
  *(v1 + 6944) = result;
  *(v1 + 6768) = result;
  *(v1 + 6784) = xmmword_1BCE3A880;
  *(v1 + 6800) = result;
  *(v1 + 6816) = xmmword_1BCE3C8C0;
  *(v1 + 6832) = result;
  *(v1 + 6848) = result;
  *(v1 + 4080) = 0u;
  *(v1 + 5312) = 0u;
  *(v1 + 6704) = result;
  *(v1 + 6720) = xmmword_1BCE3A880;
  *(v1 + 6736) = result;
  *(v1 + 6752) = result;
  *(v1 + 5296) = 0u;
  *(v1 + 6528) = 0u;
  *(v1 + 6512) = 0u;
  *(v1 + 8960) = 0u;
  *(v1 + 8944) = 0u;
  *(v1 + 10176) = 0u;
  *(v1 + 10160) = 0u;
  *(v1 + 11392) = 0u;
  *(v1 + 11376) = 0u;
  *(v1 + 6544) = result;
  *(v1 + 6560) = xmmword_1BCE3DAE0;
  *(v1 + 496) = xmmword_1BCE46710;
  *(v1 + 512) = xmmword_1BCE46720;
  *(v1 + 6472) = 0x3FF0000000000000;
  *(v1 + 6496) = 0x3FF0000000000000;
  *(v1 + 6504) = 1065353216;
  *(v1 + 1712) = xmmword_1BCE46710;
  *(v1 + 10224) = xmmword_1BCE46710;
  *(v1 + 11440) = xmmword_1BCE46710;
  *(v1 + 1728) = xmmword_1BCE46720;
  *(v1 + 10240) = xmmword_1BCE46720;
  *(v1 + 11456) = xmmword_1BCE46720;
  *(v1 + 528) = xmmword_1BCE46730;
  *(v1 + 544) = xmmword_1BCE46740;
  *(v1 + 6384) = result;
  *(v1 + 1744) = xmmword_1BCE46730;
  *(v1 + 10256) = xmmword_1BCE46730;
  *(v1 + 11472) = xmmword_1BCE46730;
  *(v1 + 1760) = xmmword_1BCE46740;
  *(v1 + 10272) = xmmword_1BCE46740;
  *(v1 + 11488) = xmmword_1BCE46740;
  *(v1 + 6272) = result;
  *(v1 + 560) = xmmword_1BCE46750;
  *(v1 + 576) = xmmword_1BCE46760;
  *(v1 + 1776) = xmmword_1BCE46750;
  *(v1 + 10288) = xmmword_1BCE46750;
  *(v1 + 11504) = xmmword_1BCE46750;
  *(v1 + 6121) = *v13;
  *(v1 + 6152) = 1061997773;
  *(v1 + 6080) = result;
  *(v1 + 6096) = 0x3FF0000000000000;
  *(v1 + 6112) = 0x404E000000000000;
  *(v1 + 6120) = 1;
  *(v1 + 6124) = *&v13[3];
  *(v1 + 6000) = result;
  *(v1 + 6016) = result;
  *(v1 + 6032) = 0x4170000042480000;
  *(v1 + 6040) = 0x3FF0000000000000;
  *(v1 + 6048) = result;
  *(v1 + 6064) = result;
  *(v1 + 5920) = xmmword_1BCE3A880;
  *(v1 + 5936) = result;
  *(v1 + 5952) = xmmword_1BCE3C8C0;
  *(v1 + 5968) = result;
  *(v1 + 5984) = xmmword_1BCE3DAE0;
  *(v1 + 1792) = xmmword_1BCE46760;
  *(v1 + 5632) = result;
  *(v1 + 5808) = result;
  *(v1 + 5824) = xmmword_1BCE3C8C0;
  *(v1 + 5840) = result;
  *(v1 + 5856) = xmmword_1BCE3DAE0;
  *(v1 + 5712) = result;
  *(v1 + 5728) = result;
  *(v1 + 5744) = result;
  *(v1 + 5760) = result;
  *(v1 + 5776) = result;
  *(v1 + 5792) = result;
  *(v1 + 5648) = result;
  *(v1 + 5664) = xmmword_1BCE3DD90;
  *(v1 + 5680) = result;
  *(v1 + 5696) = result;
  *(v1 + 10304) = xmmword_1BCE46760;
  *(v1 + 11520) = xmmword_1BCE46760;
  *(v1 + 5552) = result;
  *(v1 + 5568) = xmmword_1BCE3A880;
  *(v1 + 5584) = result;
  *(v1 + 5600) = xmmword_1BCE3C8C0;
  *(v1 + 5616) = result;
  *(v1 + 1808) = xmmword_1BCE46770;
  *(v1 + 5488) = result;
  *(v1 + 5504) = xmmword_1BCE3A880;
  *(v1 + 5520) = result;
  *(v1 + 5536) = result;
  *(v1 + 11536) = xmmword_1BCE46770;
  *(v1 + 592) = xmmword_1BCE46770;
  *(v1 + 608) = xmmword_1BCE46780;
  *(v1 + 800) = xmmword_1BCE3DD90;
  *(v1 + 1824) = xmmword_1BCE46780;
  *(v1 + 10336) = xmmword_1BCE46780;
  *(v1 + 11552) = xmmword_1BCE46780;
  *(v1 + 2016) = xmmword_1BCE3DD90;
  *(v1 + 5328) = result;
  *(v1 + 5344) = xmmword_1BCE3DAE0;
  *(v1 + 3232) = xmmword_1BCE3DD90;
  *(v1 + 4448) = xmmword_1BCE3DD90;
  *(v1 + 5280) = 0x3FF0000000000000;
  *(v1 + 5288) = 1065353216;
  *(v1 + 9312) = xmmword_1BCE3DD90;
  *(v1 + 10528) = xmmword_1BCE3DD90;
  *(v1 + 11744) = xmmword_1BCE3DD90;
  *(v1 + 11952) = xmmword_1BCE46A00;
  *(v1 + 5256) = 0x3FF0000000000000;
  *(v1 + 2224) = xmmword_1BCE46790;
  *(v1 + 1008) = xmmword_1BCE46790;
  *(v1 + 1024) = xmmword_1BCE40080;
  *(v1 + 2240) = xmmword_1BCE40080;
  *(v1 + 5168) = result;
  *(v1 + 11968) = xmmword_1BCE40080;
  *(v1 + 1040) = xmmword_1BCE467A0;
  *(v1 + 2256) = xmmword_1BCE467A0;
  *(v1 + 5056) = result;
  *(v1 + 10768) = xmmword_1BCE467A0;
  *(v1 + 11984) = xmmword_1BCE467A0;
  *(v1 + 640) = xmmword_1BCE3A880;
  *(v1 + 704) = xmmword_1BCE3A880;
  *(v1 + 1056) = xmmword_1BCE3A880;
  *(v1 + 1856) = xmmword_1BCE3A880;
  *(v1 + 1920) = xmmword_1BCE3A880;
  *(v1 + 2272) = xmmword_1BCE3A880;
  *(v1 + 3072) = xmmword_1BCE3A880;
  *(v1 + 3136) = xmmword_1BCE3A880;
  *(v1 + 4896) = 0x404E000000000000;
  *(v1 + 4904) = 0;
  *(v1 + 4905) = *v12;
  *(v1 + 4908) = *&v12[3];
  *(v1 + 4936) = 1061997773;
  *(v1 + 4816) = 0x4170000042480000;
  *(v1 + 4824) = 0x3FF0000000000000;
  *(v1 + 4832) = result;
  *(v1 + 4848) = result;
  *(v1 + 4864) = result;
  *(v1 + 4880) = 0x3FF0000000000000;
  *(v1 + 4720) = result;
  *(v1 + 4736) = xmmword_1BCE3C8C0;
  *(v1 + 4752) = result;
  *(v1 + 4768) = xmmword_1BCE3DAE0;
  *(v1 + 4784) = result;
  *(v1 + 4800) = result;
  *(v1 + 3488) = xmmword_1BCE3A880;
  *(v1 + 4272) = result;
  *(v1 + 4624) = result;
  *(v1 + 4640) = xmmword_1BCE3DAE0;
  *(v1 + 4656) = result;
  *(v1 + 4704) = xmmword_1BCE3A880;
  *(v1 + 4528) = result;
  *(v1 + 4544) = result;
  *(v1 + 4560) = result;
  *(v1 + 4576) = result;
  *(v1 + 4592) = result;
  *(v1 + 4608) = xmmword_1BCE3C8C0;
  *(v1 + 4288) = xmmword_1BCE3A880;
  *(v1 + 4432) = result;
  *(v1 + 4464) = result;
  *(v1 + 4480) = result;
  *(v1 + 4496) = result;
  *(v1 + 4512) = result;
  *(v1 + 4336) = result;
  *(v1 + 4352) = xmmword_1BCE3A880;
  *(v1 + 4368) = result;
  *(v1 + 4384) = xmmword_1BCE3C8C0;
  *(v1 + 4400) = result;
  *(v1 + 4416) = result;
  *(v1 + 4304) = result;
  *(v1 + 4320) = result;
  *(v1 + 9152) = xmmword_1BCE3A880;
  *(v1 + 9216) = xmmword_1BCE3A880;
  *(v1 + 9568) = xmmword_1BCE3A880;
  *(v1 + 10368) = xmmword_1BCE3A880;
  *(v1 + 10432) = xmmword_1BCE3A880;
  *(v1 + 10784) = xmmword_1BCE3A880;
  *(v1 + 11584) = xmmword_1BCE3A880;
  *(v1 + 11648) = xmmword_1BCE3A880;
  *(v1 + 12000) = xmmword_1BCE3A880;
  *(v1 + 736) = xmmword_1BCE3C8C0;
  *(v1 + 960) = xmmword_1BCE3C8C0;
  *(v1 + 1088) = xmmword_1BCE3C8C0;
  *(v1 + 4064) = 0x3FF0000000000000;
  *(v1 + 4072) = 1065353216;
  *(v1 + 4112) = result;
  *(v1 + 4128) = xmmword_1BCE3DAE0;
  *(v1 + 1952) = xmmword_1BCE3C8C0;
  *(v1 + 2176) = xmmword_1BCE3C8C0;
  *(v1 + 2304) = xmmword_1BCE3C8C0;
  *(v1 + 3168) = xmmword_1BCE3C8C0;
  *(v1 + 3392) = xmmword_1BCE3C8C0;
  *(v1 + 4040) = 0x3FEF0AE2E0000000;
  *(v1 + 3520) = xmmword_1BCE3C8C0;
  *(v1 + 3952) = result;
  *(v1 + 8384) = xmmword_1BCE3C8C0;
  *(v1 + 9248) = xmmword_1BCE3C8C0;
  *(v1 + 9472) = xmmword_1BCE3C8C0;
  *(v1 + 9600) = xmmword_1BCE3C8C0;
  *(v1 + 10464) = xmmword_1BCE3C8C0;
  *(v1 + 10688) = xmmword_1BCE3C8C0;
  *(v1 + 10816) = xmmword_1BCE3C8C0;
  *(v1 + 11680) = xmmword_1BCE3C8C0;
  *(v1 + 11904) = xmmword_1BCE3C8C0;
  *(v1 + 12032) = xmmword_1BCE3C8C0;
  *(v1 + 480) = xmmword_1BCE3DAE0;
  *(v1 + 992) = xmmword_1BCE3DAE0;
  *(v1 + 1120) = xmmword_1BCE3DAE0;
  *(v1 + 1696) = xmmword_1BCE3DAE0;
  *(v1 + 2208) = xmmword_1BCE3DAE0;
  *(v1 + 2336) = xmmword_1BCE3DAE0;
  *(v1 + 3689) = *v11;
  *(v1 + 3692) = *&v11[3];
  *(v1 + 3720) = 1061997773;
  *(v1 + 3616) = result;
  *(v1 + 3632) = result;
  *(v1 + 3648) = result;
  *(v1 + 3664) = 0x3FF0000000000000;
  *(v1 + 3680) = 0x4040800000000000;
  *(v1 + 3688) = 0;
  *(v1 + 3536) = result;
  *(v1 + 3552) = xmmword_1BCE3DAE0;
  *(v1 + 3568) = result;
  *(v1 + 3584) = result;
  *(v1 + 3600) = 0x4170000042480000;
  *(v1 + 3608) = 0x3FF0000000000000;
  *(v1 + 2912) = xmmword_1BCE3DAE0;
  *(v1 + 3056) = result;
  *(v1 + 3088) = result;
  *(v1 + 3440) = result;
  *(v1 + 3456) = xmmword_1BCE3DAE0;
  *(v1 + 3504) = result;
  *(v1 + 3104) = result;
  *(v1 + 3344) = result;
  *(v1 + 3360) = result;
  *(v1 + 3376) = result;
  *(v1 + 3408) = result;
  *(v1 + 3424) = xmmword_1BCE3DAE0;
  *(v1 + 3248) = result;
  *(v1 + 3264) = result;
  *(v1 + 3280) = result;
  *(v1 + 3296) = result;
  *(v1 + 3312) = result;
  *(v1 + 3328) = result;
  *(v1 + 3120) = result;
  *(v1 + 3152) = result;
  *(v1 + 3184) = result;
  *(v1 + 3200) = result;
  *(v1 + 3216) = result;
  *(v1 + 8416) = xmmword_1BCE3DAE0;
  *(v1 + 8992) = xmmword_1BCE3DAE0;
  *(v1 + 9504) = xmmword_1BCE3DAE0;
  *(v1 + 9536) = xmmword_1BCE3DAE0;
  *(v1 + 9632) = xmmword_1BCE3DAE0;
  *(v1 + 10208) = xmmword_1BCE3DAE0;
  *(v1 + 10720) = xmmword_1BCE3DAE0;
  *(v1 + 10848) = xmmword_1BCE3DAE0;
  *(v1 + 11424) = xmmword_1BCE3DAE0;
  *(v1 + 11936) = xmmword_1BCE3DAE0;
  *(v1 + 12064) = xmmword_1BCE3DAE0;
  *(v1 + 1168) = 0x4170000042480000;
  *(v1 + 2384) = 0x4170000042480000;
  *(v1 + 8464) = 0x4170000042480000;
  *(v1 + 9680) = 0x4170000042480000;
  *(v1 + 10896) = 0x4170000042480000;
  *(v1 + 12112) = 0x4170000042480000;
  *(v1 + 304) = result;
  *(v1 + 2896) = result;
  *(v1 + 464) = result;
  *(v1 + 624) = result;
  *(v1 + 2824) = 0x3FF0000000000000;
  *(v1 + 2832) = result;
  *(v1 + 2848) = 0x3FF0000000000000;
  *(v1 + 2856) = 1065353216;
  *(v1 + 672) = result;
  *(v1 + 688) = result;
  *(v1 + 720) = result;
  *(v1 + 768) = result;
  *(v1 + 784) = result;
  *(v1 + 928) = result;
  *(v1 + 944) = result;
  *(v1 + 976) = result;
  *(v1 + 2736) = result;
  *(v1 + 400) = result;
  *(v1 + 656) = result;
  *(v1 + 752) = result;
  *(v1 + 816) = result;
  *(v1 + 832) = result;
  *(v1 + 848) = result;
  *(v1 + 864) = result;
  *(v1 + 880) = result;
  *(v1 + 896) = result;
  *(v1 + 912) = result;
  *(v1 + 2464) = 0xC018000000000000;
  *(v1 + 2472) = 0;
  *(v1 + 2473) = *v10;
  *(v1 + 2476) = *&v10[3];
  *(v1 + 2504) = 1056964608;
  *(v1 + 1072) = result;
  *(v1 + 2392) = 0x3FF0000000000000;
  *(v1 + 2400) = result;
  *(v1 + 2416) = result;
  *(v1 + 2432) = result;
  *(v1 + 2448) = 0x3FF0000000000000;
  *(v1 + 1104) = result;
  *(v1 + 1136) = result;
  *(v1 + 2288) = result;
  *(v1 + 2320) = result;
  *(v1 + 2352) = result;
  *(v1 + 2368) = result;
  *(v1 + 1152) = result;
  *(v1 + 1176) = 0x3FF0000000000000;
  *(v1 + 1184) = result;
  *(v1 + 1200) = result;
  *(v1 + 1216) = result;
  *(v1 + 2192) = result;
  *(v1 + 1232) = 0x3FF0000000000000;
  *(v1 + 2112) = result;
  *(v1 + 2128) = result;
  *(v1 + 2144) = result;
  *(v1 + 2160) = result;
  *(v1 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v1 + 1256) = 0;
  *(v1 + 2048) = result;
  *(v1 + 2064) = result;
  *(v1 + 2080) = result;
  *(v1 + 2096) = result;
  *(v1 + 1257) = *v9;
  *(v1 + 2000) = result;
  *(v1 + 2032) = result;
  *(v1 + 1260) = *&v9[3];
  *(v1 + 1288) = 1053609165;
  *(v1 + 1904) = result;
  *(v1 + 1936) = result;
  *(v1 + 1968) = result;
  *(v1 + 1984) = result;
  *(v1 + 1520) = result;
  *(v1 + 1608) = 0x3FF0000000000000;
  *(v1 + 1616) = result;
  *(v1 + 1840) = result;
  *(v1 + 1872) = result;
  *(v1 + 1888) = result;
  *(v1 + 1632) = 0x3FF0000000000000;
  *(v1 + 1640) = 1065353216;
  *(v1 + 1680) = result;
  *(v1 + 8400) = result;
  *(v1 + 8432) = result;
  *(v1 + 8448) = result;
  *(v1 + 8480) = result;
  *(v1 + 8496) = result;
  *(v1 + 8512) = result;
  *(v1 + 8816) = result;
  *(v1 + 8912) = result;
  *(v1 + 8976) = result;
  *(v1 + 9136) = result;
  *(v1 + 9168) = result;
  *(v1 + 9184) = result;
  *(v1 + 9200) = result;
  *(v1 + 9232) = result;
  *(v1 + 9264) = result;
  *(v1 + 9280) = result;
  *(v1 + 9296) = result;
  *(v1 + 9328) = result;
  *(v1 + 9344) = result;
  *(v1 + 9360) = result;
  *(v1 + 9376) = result;
  *(v1 + 9392) = result;
  *(v1 + 9408) = result;
  *(v1 + 9424) = result;
  *(v1 + 9440) = result;
  *(v1 + 9456) = result;
  *(v1 + 9488) = result;
  *(v1 + 9520) = result;
  *(v1 + 9584) = result;
  *(v1 + 9616) = result;
  *(v1 + 9648) = result;
  *(v1 + 9664) = result;
  *(v1 + 9696) = result;
  *(v1 + 9712) = result;
  *(v1 + 9728) = result;
  *(v1 + 10032) = result;
  *(v1 + 10128) = result;
  *(v1 + 10192) = result;
  *(v1 + 10352) = result;
  *(v1 + 10384) = result;
  *(v1 + 10400) = result;
  *(v1 + 10416) = result;
  *(v1 + 10448) = result;
  *(v1 + 10480) = result;
  *(v1 + 10496) = result;
  *(v1 + 10512) = result;
  *(v1 + 10544) = result;
  *(v1 + 10560) = result;
  *(v1 + 10576) = result;
  *(v1 + 10592) = result;
  *(v1 + 10608) = result;
  *(v1 + 10624) = result;
  *(v1 + 10640) = result;
  *(v1 + 10656) = result;
  *(v1 + 10672) = result;
  *(v1 + 10704) = result;
  *(v1 + 10800) = result;
  *(v1 + 10832) = result;
  *(v1 + 10864) = result;
  *(v1 + 10880) = result;
  *(v1 + 10912) = result;
  *(v1 + 10928) = result;
  *(v1 + 10944) = result;
  *(v1 + 11248) = result;
  *(v1 + 11344) = result;
  *(v1 + 11408) = result;
  *(v1 + 11568) = result;
  *(v1 + 11600) = result;
  *(v1 + 11616) = result;
  *(v1 + 11632) = result;
  *(v1 + 11664) = result;
  *(v1 + 11696) = result;
  *(v1 + 11712) = result;
  *(v1 + 11728) = result;
  *(v1 + 11760) = result;
  *(v1 + 11776) = result;
  *(v1 + 11792) = result;
  *(v1 + 11808) = result;
  *(v1 + 11824) = result;
  *(v1 + 11840) = result;
  *(v1 + 11856) = result;
  *(v1 + 11872) = result;
  *(v1 + 11888) = result;
  *(v1 + 11920) = result;
  *(v1 + 12016) = result;
  *(v1 + 12048) = result;
  *(v1 + 12080) = result;
  *(v1 + 12096) = result;
  *(v1 + 12128) = result;
  *(v1 + 12144) = result;
  *(v1 + 12160) = result;
  *(v1 + 416) = 0x3FF0000000000000;
  *(v1 + 424) = 1065353216;
  *(v1 + 32) = 0xC056800000000000;
  *(v1 + 392) = 0x3FF0000000000000;
  *(v1 + 40) = 0;
  *(v1 + 72) = 1053609165;
  *(v1 + 8472) = 0x3FF0000000000000;
  *(v1 + 8553) = *v15;
  *(v1 + 8528) = 0x3FF0000000000000;
  *(v1 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v1 + 8552) = 1;
  *(v1 + 8556) = *&v15[3];
  *(v1 + 8584) = 1056964608;
  *(v1 + 8904) = 0x3FF0000000000000;
  *(v1 + 8928) = 0x3FF0000000000000;
  *(v1 + 8936) = 1065353216;
  *(v1 + 9688) = 0x3FF0000000000000;
  *(v1 + 9744) = 0x3FF0000000000000;
  *(v1 + 9760) = 0xC032000000000004;
  *(v1 + 9769) = *v16;
  *(v1 + 9768) = 1;
  *(v1 + 9772) = *&v16[3];
  *(v1 + 9800) = 1053609165;
  *(v1 + 10120) = 0x3FF0000000000000;
  *(v1 + 10144) = 0x3FF0000000000000;
  *(v1 + 10152) = 1065353216;
  *(v1 + 10904) = 0x3FF0000000000000;
  *(v1 + 10960) = 0x3FF0000000000000;
  *(v1 + 10976) = 0xC056800000000000;
  *(v1 + 10984) = 1;
  *(v1 + 10985) = *v17;
  *(v1 + 10988) = *&v17[3];
  *(v1 + 11016) = 1053609165;
  *(v1 + 11336) = 0x3FF0000000000000;
  *(v1 + 11360) = 0x3FF0000000000000;
  *(v1 + 11368) = 1065353216;
  *(v1 + 12120) = 0x3FF0000000000000;
  *(v1 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t (*WeatherVFXConditionBackground.backgroundEffectModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_11(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_3_17(v4);
  return sub_1BCA7BE18;
}

uint64_t WeatherVFXConditionBackground.$backgroundEffectModel.modify()
{
  v1 = OUTLINED_FUNCTION_18_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_13(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08340);
  OUTLINED_FUNCTION_2_13(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_14_8(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_15_7(v8);
  OUTLINED_FUNCTION_5_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08338);
  OUTLINED_FUNCTION_12_12();
  swift_endAccess();
  return OUTLINED_FUNCTION_13_10();
}

double sub_1BCA7A7E8@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1BCA7A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id *))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v8;
  sub_1BCA7BDF8(v10[0]);
  return a5(v10);
}

uint64_t (*WeatherVFXConditionBackground.collisionEffectModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_11(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_3_17(v4);
  return sub_1BCA7BE18;
}

uint64_t sub_1BCA7A938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t sub_1BCA7AA08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08340);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08338);
  sub_1BCE1B430();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t WeatherVFXConditionBackground.$collisionEffectModel.modify()
{
  v1 = OUTLINED_FUNCTION_18_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_13(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08340);
  OUTLINED_FUNCTION_2_13(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_14_8(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_15_7(v8);
  OUTLINED_FUNCTION_5_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08338);
  OUTLINED_FUNCTION_12_12();
  swift_endAccess();
  return OUTLINED_FUNCTION_13_10();
}

void sub_1BCA7AC28(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

double WeatherVFXConditionBackground.backgroundMask.getter@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1BCA7AD74@<D0>(uint64_t a1@<X8>)
{
  WeatherVFXConditionBackground.backgroundMask.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1BCA7ADBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_1BC952ABC(v4, v3, &qword_1EBD08368);
  return WeatherVFXConditionBackground.backgroundMask.setter();
}

uint64_t WeatherVFXConditionBackground.backgroundMask.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BCE1B460();
}

uint64_t (*WeatherVFXConditionBackground.backgroundMask.modify())()
{
  v1 = OUTLINED_FUNCTION_17_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_11(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_3_17(v4);
  return sub_1BCA7AF04;
}

uint64_t WeatherVFXConditionBackground.$backgroundMask.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08350);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_7_15(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08348);
  sub_1BCE1B430();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t WeatherVFXConditionBackground.$backgroundMask.modify()
{
  v1 = OUTLINED_FUNCTION_18_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_13(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08350);
  OUTLINED_FUNCTION_2_13(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_14_8(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_15_7(v8);
  OUTLINED_FUNCTION_5_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08348);
  OUTLINED_FUNCTION_12_12();
  swift_endAccess();
  return OUTLINED_FUNCTION_13_10();
}

uint64_t sub_1BCA7B128@<X0>(_BYTE *a1@<X8>)
{
  result = WeatherVFXConditionBackground.isLoaded.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*WeatherVFXConditionBackground.isLoaded.modify())()
{
  v1 = OUTLINED_FUNCTION_17_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_11(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_11(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_3_17(v4);
  return sub_1BCA7BE18;
}

void sub_1BCA7B1F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1BCA7B274(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_12_12();
  return swift_endAccess();
}

uint64_t WeatherVFXConditionBackground.$isLoaded.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08358);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_7_15(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D58);
  sub_1BCE1B430();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t WeatherVFXConditionBackground.$isLoaded.modify()
{
  v1 = OUTLINED_FUNCTION_18_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_13(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08358);
  OUTLINED_FUNCTION_2_13(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_14_8(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_15_7(v8);
  OUTLINED_FUNCTION_5_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D58);
  OUTLINED_FUNCTION_12_12();
  swift_endAccess();
  return OUTLINED_FUNCTION_13_10();
}

uint64_t WeatherVFXConditionBackground.foregroundEffectsAreAbleToRender.getter()
{
  if (WeatherVFXConditionBackground.isLoaded.getter())
  {
    v1 = *(v0 + OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_isTransitioning) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t WeatherVFXConditionBackground.__allocating_init()()
{
  v0 = swift_allocObject();
  WeatherVFXConditionBackground.init()();
  return v0;
}

uint64_t sub_1BCA7B550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WeatherVFXConditionBackground.publishUpdates(backgroundEffectModel:collisionEffectModel:backgroundMask:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_1BCE1D050();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(a1 + 24);
  v16 = *a2;
  v23 = *(a2 + 8);
  v17 = *(a2 + 16);
  v22 = *(a2 + 24);
  sub_1BC9905D4();
  *v11 = sub_1BCE1D9B0();
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v5);
  LOBYTE(a2) = sub_1BCE1D070();
  (*(v7 + 8))(v11, v5);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EDA1E928 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_1_10();
  }

  MEMORY[0x1EEE9AC00](qword_1EDA2F000);
  v18 = v25;
  *&v21[-80] = v24;
  *&v21[-72] = v18;
  *&v21[-64] = v12;
  *&v21[-56] = v13;
  *&v21[-48] = v14;
  v21[-40] = v15;
  v19 = v23;
  *&v21[-32] = v16;
  *&v21[-24] = v19;
  *&v21[-16] = v17;
  v21[-8] = v22;
  return sub_1BCE1B6E0();
}

uint64_t sub_1BCA7B7D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1BC952ABC(a2, &v33, &qword_1EBD08368);
  WeatherVFXConditionBackground.backgroundMask.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();

  v16 = v41;
  v15 = v42;
  v17 = v43;
  v18 = v44;
  if (v41 == 1)
  {
    if (a3 == 1)
    {
      sub_1BCA7BDF8(1);
      sub_1BCA7BE08(1);
      goto LABEL_9;
    }

    sub_1BCA7BDF8(a3);
    goto LABEL_7;
  }

  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  if (a3 == 1)
  {
    sub_1BCA7BDF8(1);
    sub_1BCA7BDF8(v16);

LABEL_7:
    v33 = v16;
    v34 = v15;
    v35 = v17;
    v36 = v18;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = a6;
    sub_1BC94C05C(&v33, &qword_1EBD08370);
LABEL_8:
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    sub_1BCA7BDF8(a3);
    WeatherVFXConditionBackground.backgroundEffectModel.setter();
    goto LABEL_9;
  }

  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  sub_1BCA7BDF8(a3);
  sub_1BCA7BDF8(v16);
  v25 = static WeatherVFXViewModel.== infix(_:_:)(&v33, &v29);

  sub_1BCA7BE08(v16);
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();

  v20 = v41;
  v19 = v42;
  v21 = v43;
  v22 = v44;
  if (v41 != 1)
  {
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v23 = a7;
    if (a7 != 1)
    {
      v29 = a7;
      v30 = a8;
      v31 = a9;
      v32 = a10;
      sub_1BCA7BDF8(a7);
      sub_1BCA7BDF8(v20);
      v26 = static WeatherVFXViewModel.== infix(_:_:)(&v33, &v29);

      sub_1BCA7BE08(v20);
      if (v26)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    sub_1BCA7BDF8(1);
    sub_1BCA7BDF8(v20);

LABEL_17:
    v33 = v20;
    v34 = v19;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = a8;
    v39 = a9;
    v40 = a10;
    sub_1BC94C05C(&v33, &qword_1EBD08370);
LABEL_18:
    v33 = v23;
    v34 = a8;
    v35 = a9;
    v36 = a10;
    sub_1BCA7BDF8(v23);
    WeatherVFXConditionBackground.collisionEffectModel.setter();
    goto LABEL_19;
  }

  v23 = a7;
  if (a7 != 1)
  {
    sub_1BCA7BDF8(a7);
    goto LABEL_17;
  }

  sub_1BCA7BDF8(1);
  sub_1BCA7BE08(1);
LABEL_19:
  *(a1 + OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_isTransitioning) = 0;
  return WeatherVFXConditionBackground.isLoaded.setter();
}

uint64_t WeatherVFXConditionBackground.deinit()
{
  v1 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__backgroundEffectModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08338);
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__collisionEffectModel, v2);
  v5 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__backgroundMask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08348);
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__isLoaded;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D58);
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v0 + v7);
  sub_1BC94C05C(v0 + OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_fadeOutAnimationStartDate, &qword_1EBD07868);
  return v0;
}

uint64_t WeatherVFXConditionBackground.__deallocating_deinit()
{
  WeatherVFXConditionBackground.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1BCA7BDF8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1BCA7BE08(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1BCA7BE1C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA7C5C4();
  v4 = v3;
  sub_1BCA7C5C4();
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
  *(a1 + 712) = 0x3FC000003F666667;
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
  *(a1 + 840) = 0x3FE666673F99999ALL;
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
  *(a1 + 968) = 0x404000004019999ALL;
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
  *(a1 + 1200) = xmmword_1BCE465F0;
  *(a1 + 1216) = xmmword_1BCE41310;
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
  *(v2 + 208) = 0x100000001010001;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 1;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
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
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCA7C5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE46CF0;
  *(v0 + 64) = 0x420C0000443B8000;
  *(v0 + 80) = xmmword_1BCE403D0;
  *(v0 + 96) = xmmword_1BCE403E0;
  *(v0 + 112) = xmmword_1BCE403F0;
  *(v0 + 128) = xmmword_1BCE40400;
  *(v0 + 4912) = xmmword_1BCE46F80;
  *(v0 + 6128) = xmmword_1BCE46F80;
  *(v0 + 5040) = xmmword_1BCE46F90;
  *(v0 + 6256) = xmmword_1BCE46F90;
  *(v0 + 5056) = xmmword_1BCE46FA0;
  *(v0 + 6272) = xmmword_1BCE46FA0;
  *(v0 + 5360) = xmmword_1BCE46FB0;
  *(v0 + 6576) = xmmword_1BCE46FB0;
  *(v0 + 5376) = xmmword_1BCE46FC0;
  *(v0 + 6592) = xmmword_1BCE46FC0;
  *(v0 + 5392) = xmmword_1BCE46FD0;
  *(v0 + 6608) = xmmword_1BCE46FD0;
  *(v0 + 5408) = xmmword_1BCE46FE0;
  *(v0 + 6624) = xmmword_1BCE46FE0;
  *(v0 + 5424) = xmmword_1BCE46FF0;
  *(v0 + 6640) = xmmword_1BCE46FF0;
  *(v0 + 5440) = xmmword_1BCE41640;
  *(v0 + 6656) = xmmword_1BCE41640;
  *(v0 + 5904) = xmmword_1BCE47000;
  *(v0 + 7120) = xmmword_1BCE47000;
  *(v0 + 5920) = xmmword_1BCE3DA70;
  *(v0 + 7136) = xmmword_1BCE3DA70;
  *(v0 + 3696) = xmmword_1BCE46EC0;
  *(v0 + 7344) = xmmword_1BCE46EC0;
  *(v0 + 3712) = 1153957888;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 7360) = 1153957888;
  *(v0 + 3728) = xmmword_1BCE40840;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 7376) = xmmword_1BCE40840;
  *(v0 + 3744) = xmmword_1BCE40850;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 7392) = xmmword_1BCE40850;
  *(v0 + 3760) = xmmword_1BCE40860;
  *(v0 + 4976) = xmmword_1BCE40860;
  *(v0 + 6192) = xmmword_1BCE40860;
  *(v0 + 7408) = xmmword_1BCE40860;
  *(v0 + 3776) = xmmword_1BCE40870;
  *(v0 + 4992) = xmmword_1BCE40870;
  *(v0 + 6208) = xmmword_1BCE40870;
  *(v0 + 7424) = xmmword_1BCE40870;
  *(v0 + 3824) = xmmword_1BCE46ED0;
  *(v0 + 7472) = xmmword_1BCE46ED0;
  *(v0 + 3840) = xmmword_1BCE46EE0;
  *(v0 + 7488) = xmmword_1BCE46EE0;
  *(v0 + 3984) = xmmword_1BCE40760;
  *(v0 + 5200) = xmmword_1BCE40760;
  *(v0 + 6416) = xmmword_1BCE40760;
  *(v0 + 7632) = xmmword_1BCE40760;
  *(v0 + 4000) = xmmword_1BCE40770;
  *(v0 + 5216) = xmmword_1BCE40770;
  *(v0 + 6432) = xmmword_1BCE40770;
  *(v0 + 7648) = xmmword_1BCE40770;
  *(v0 + 4016) = xmmword_1BCE430A0;
  *(v0 + 5232) = xmmword_1BCE430A0;
  *(v0 + 6448) = xmmword_1BCE430A0;
  *(v0 + 7664) = xmmword_1BCE430A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 7696) = xmmword_1BCE3E9D0;
  *(v0 + 4144) = xmmword_1BCE46EF0;
  *(v0 + 7792) = xmmword_1BCE46EF0;
  *(v0 + 4160) = xmmword_1BCE46F00;
  *(v0 + 7808) = xmmword_1BCE46F00;
  *(v0 + 4176) = xmmword_1BCE46F10;
  *(v0 + 7824) = xmmword_1BCE46F10;
  *(v0 + 4192) = xmmword_1BCE46F20;
  *(v0 + 7840) = xmmword_1BCE46F20;
  *(v0 + 4208) = xmmword_1BCE46F30;
  *(v0 + 7856) = xmmword_1BCE46F30;
  *(v0 + 4224) = xmmword_1BCE46F40;
  *(v0 + 7872) = xmmword_1BCE46F40;
  *(v0 + 4240) = xmmword_1BCE46910;
  *(v0 + 5456) = xmmword_1BCE46910;
  *(v0 + 6672) = xmmword_1BCE46910;
  *(v0 + 7888) = xmmword_1BCE46910;
  *(v0 + 4256) = xmmword_1BCE46F50;
  *(v0 + 5472) = xmmword_1BCE46F50;
  *(v0 + 6688) = xmmword_1BCE46F50;
  *(v0 + 7904) = xmmword_1BCE46F50;
  *(v0 + 4656) = xmmword_1BCE46F60;
  *(v0 + 5872) = xmmword_1BCE46F60;
  *(v0 + 7088) = xmmword_1BCE46F60;
  *(v0 + 8304) = xmmword_1BCE46F60;
  *(v0 + 4672) = xmmword_1BCE3F6B0;
  *(v0 + 5888) = xmmword_1BCE3F6B0;
  *(v0 + 7104) = xmmword_1BCE3F6B0;
  *(v0 + 8320) = xmmword_1BCE3F6B0;
  *(v0 + 4688) = xmmword_1BCE46F70;
  *(v0 + 8336) = xmmword_1BCE46F70;
  *(v0 + 4704) = xmmword_1BCE3EE20;
  *(v0 + 8352) = xmmword_1BCE3EE20;
  *(v0 + 2480) = xmmword_1BCE46E00;
  *(v0 + 8560) = xmmword_1BCE46E00;
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
  *(v0 + 2608) = xmmword_1BCE46E10;
  *(v0 + 8688) = xmmword_1BCE46E10;
  *(v0 + 2624) = xmmword_1BCE46E20;
  *(v0 + 8704) = xmmword_1BCE46E20;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE46E30;
  *(v0 + 9008) = xmmword_1BCE46E30;
  *(v0 + 2944) = xmmword_1BCE46E40;
  *(v0 + 9024) = xmmword_1BCE46E40;
  *(v0 + 2960) = xmmword_1BCE46E50;
  *(v0 + 9040) = xmmword_1BCE46E50;
  *(v0 + 2976) = xmmword_1BCE46E60;
  *(v0 + 9056) = xmmword_1BCE46E60;
  *(v0 + 2992) = xmmword_1BCE46E70;
  *(v0 + 9072) = xmmword_1BCE46E70;
  *(v0 + 3008) = xmmword_1BCE42F70;
  *(v0 + 9088) = xmmword_1BCE42F70;
  *(v0 + 3024) = xmmword_1BCE46E80;
  *(v0 + 9104) = xmmword_1BCE46E80;
  *(v0 + 3040) = xmmword_1BCE46740;
  *(v0 + 9120) = xmmword_1BCE46740;
  *(v0 + 3440) = xmmword_1BCE46E90;
  *(v0 + 9520) = xmmword_1BCE46E90;
  *(v0 + 3456) = xmmword_1BCE46EA0;
  *(v0 + 9536) = xmmword_1BCE46EA0;
  *(v0 + 3472) = xmmword_1BCE46810;
  *(v0 + 9552) = xmmword_1BCE46810;
  *(v0 + 3488) = xmmword_1BCE46EB0;
  *(v0 + 9568) = xmmword_1BCE46EB0;
  *(v0 + 1264) = xmmword_1BCE3CE40;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 1744) = xmmword_1BCE46DE0;
  *(v0 + 10256) = xmmword_1BCE46DE0;
  *(v0 + 1760) = xmmword_1BCE46DF0;
  *(v0 + 10272) = xmmword_1BCE46DF0;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 10992) = xmmword_1BCE46CF0;
  *(v0 + 1280) = 0x420C0000443B8000;
  *(v0 + 9792) = 0x420C0000443B8000;
  *(v0 + 11008) = 0x420C0000443B8000;
  *(v0 + 176) = xmmword_1BCE46D00;
  *(v0 + 192) = xmmword_1BCE46D10;
  *(v0 + 1296) = xmmword_1BCE403D0;
  *(v0 + 9808) = xmmword_1BCE403D0;
  *(v0 + 11024) = xmmword_1BCE403D0;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE403E0;
  *(v0 + 9824) = xmmword_1BCE403E0;
  *(v0 + 11040) = xmmword_1BCE403E0;
  *(v0 + 1328) = xmmword_1BCE403F0;
  *(v0 + 9840) = xmmword_1BCE403F0;
  *(v0 + 11056) = xmmword_1BCE403F0;
  *(v0 + 240) = xmmword_1BCE3E780;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1344) = xmmword_1BCE40400;
  *(v0 + 9856) = xmmword_1BCE40400;
  *(v0 + 11072) = xmmword_1BCE40400;
  *(v0 + 1360) = xmmword_1BCE3EEF0;
  *(v0 + 2576) = xmmword_1BCE3EEF0;
  *(v0 + 3792) = xmmword_1BCE3EEF0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 7440) = xmmword_1BCE3EEF0;
  *(v0 + 8656) = xmmword_1BCE3EEF0;
  *(v0 + 9872) = xmmword_1BCE3EEF0;
  *(v0 + 11088) = xmmword_1BCE3EEF0;
  *(v0 + 272) = xmmword_1BCE467D0;
  *(v0 + 288) = xmmword_1BCE467E0;
  *(v0 + 1376) = xmmword_1BCE3EF00;
  *(v0 + 2592) = xmmword_1BCE3EF00;
  *(v0 + 3808) = xmmword_1BCE3EF00;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 7456) = xmmword_1BCE3EF00;
  *(v0 + 8672) = xmmword_1BCE3EF00;
  *(v0 + 9888) = xmmword_1BCE3EF00;
  *(v0 + 11104) = xmmword_1BCE3EF00;
  *(v0 + 1392) = xmmword_1BCE46D00;
  *(v0 + 9904) = xmmword_1BCE46D00;
  *(v0 + 11120) = xmmword_1BCE46D00;
  *(v0 + 1408) = xmmword_1BCE46D10;
  *(v0 + 9920) = xmmword_1BCE46D10;
  *(v0 + 11136) = xmmword_1BCE46D10;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 1456) = xmmword_1BCE3E780;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 7536) = xmmword_1BCE3E780;
  *(v0 + 8752) = xmmword_1BCE3E780;
  *(v0 + 9968) = xmmword_1BCE3E780;
  *(v0 + 11184) = xmmword_1BCE3E780;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  result = 1.0;
  *(v0 + 1488) = xmmword_1BCE467D0;
  *(v0 + 2704) = xmmword_1BCE467D0;
  *(v0 + 3920) = xmmword_1BCE467D0;
  *(v0 + 5136) = xmmword_1BCE467D0;
  *(v0 + 6352) = xmmword_1BCE467D0;
  *(v0 + 7568) = xmmword_1BCE467D0;
  *(v0 + 8784) = xmmword_1BCE467D0;
  *(v0 + 10000) = xmmword_1BCE467D0;
  *(v0 + 11216) = xmmword_1BCE467D0;
  *(v0 + 1504) = xmmword_1BCE467E0;
  *(v0 + 2720) = xmmword_1BCE467E0;
  *(v0 + 3936) = xmmword_1BCE467E0;
  *(v0 + 5152) = xmmword_1BCE467E0;
  *(v0 + 6368) = xmmword_1BCE467E0;
  *(v0 + 7584) = xmmword_1BCE467E0;
  *(v0 + 8800) = xmmword_1BCE467E0;
  *(v0 + 10016) = xmmword_1BCE467E0;
  *(v0 + 11232) = xmmword_1BCE467E0;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 8368) = _Q4;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8048) = _Q4;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7688) = 0x3FF0000000000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 1069547520;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7600) = _Q4;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 7520) = _Q4;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7504) = _Q4;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v13;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1061997773;
  *(v0 + 5312) = 0u;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 6736) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7152) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q4;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 496) = xmmword_1BCE46D20;
  *(v0 + 512) = xmmword_1BCE46D30;
  *(v0 + 1712) = xmmword_1BCE46D20;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 10224) = xmmword_1BCE46D20;
  *(v0 + 11440) = xmmword_1BCE46D20;
  *(v0 + 1728) = xmmword_1BCE46D30;
  *(v0 + 6544) = _Q4;
  *(v0 + 10240) = xmmword_1BCE46D30;
  *(v0 + 11456) = xmmword_1BCE46D30;
  *(v0 + 528) = xmmword_1BCE46D40;
  *(v0 + 544) = xmmword_1BCE46D50;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 1069547520;
  *(v0 + 11472) = xmmword_1BCE46D40;
  *(v0 + 11488) = xmmword_1BCE46D50;
  *(v0 + 560) = xmmword_1BCE46D60;
  *(v0 + 576) = xmmword_1BCE46D70;
  *(v0 + 1776) = xmmword_1BCE46D60;
  *(v0 + 6384) = _Q4;
  *(v0 + 10288) = xmmword_1BCE46D60;
  *(v0 + 11504) = xmmword_1BCE46D60;
  *(v0 + 1792) = xmmword_1BCE46D70;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = _Q4;
  *(v0 + 10304) = xmmword_1BCE46D70;
  *(v0 + 11520) = xmmword_1BCE46D70;
  *(v0 + 1808) = xmmword_1BCE46D80;
  *(v0 + 10320) = xmmword_1BCE46D80;
  *(v0 + 11536) = xmmword_1BCE46D80;
  *(v0 + 592) = xmmword_1BCE46D80;
  *(v0 + 608) = xmmword_1BCE46D90;
  *(v0 + 1824) = xmmword_1BCE46D90;
  *(v0 + 5968) = _Q4;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 10336) = xmmword_1BCE46D90;
  *(v0 + 11552) = xmmword_1BCE46D90;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1069547520;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE46DA0;
  *(v0 + 5168) = _Q4;
  *(v0 + 10736) = xmmword_1BCE46DA0;
  *(v0 + 11952) = xmmword_1BCE46DA0;
  *(v0 + 1008) = xmmword_1BCE46DA0;
  *(v0 + 1024) = xmmword_1BCE46DB0;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = _Q4;
  *(v0 + 2240) = xmmword_1BCE46DB0;
  *(v0 + 10752) = xmmword_1BCE46DB0;
  *(v0 + 11968) = xmmword_1BCE46DB0;
  *(v0 + 1040) = xmmword_1BCE46DC0;
  *(v0 + 2256) = xmmword_1BCE46DC0;
  *(v0 + 4905) = *v11;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 10768) = xmmword_1BCE46DC0;
  *(v0 + 11984) = xmmword_1BCE46DC0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 1056) = xmmword_1BCE46DD0;
  *(v0 + 2272) = xmmword_1BCE46DD0;
  *(v0 + 10784) = xmmword_1BCE46DD0;
  *(v0 + 12000) = xmmword_1BCE46DD0;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 1069547520;
  *(v0 + 4112) = _Q4;
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
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 3952) = _Q4;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3856) = _Q4;
  *(v0 + 3872) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 3689) = *v10;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v10[3];
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
  *(v0 + 3504) = _Q4;
  *(v0 + 3536) = _Q4;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3184) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3264) = _Q4;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 304) = _Q4;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 3056) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 208) = _Q4;
  *(v0 + 224) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 424) = 1065353216;
  *(v0 + 656) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 2736) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 2640) = _Q4;
  *(v0 + 2656) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 2400) = _Q4;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1056964608;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2320) = _Q4;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1053609165;
  *(v0 + 1424) = _Q4;
  *(v0 + 2288) = _Q4;
  *(v0 + 1440) = _Q4;
  *(v0 + 1520) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 2192) = _Q4;
  *(v0 + 2032) = _Q4;
  *(v0 + 2048) = _Q4;
  *(v0 + 2064) = _Q4;
  *(v0 + 2080) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
  *(v0 + 8736) = _Q4;
  *(v0 + 8816) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9184) = _Q4;
  *(v0 + 9200) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9328) = _Q4;
  *(v0 + 9344) = _Q4;
  *(v0 + 9360) = _Q4;
  *(v0 + 9376) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9936) = _Q4;
  *(v0 + 9952) = _Q4;
  *(v0 + 10032) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10400) = _Q4;
  *(v0 + 10416) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10544) = _Q4;
  *(v0 + 10560) = _Q4;
  *(v0 + 10576) = _Q4;
  *(v0 + 10592) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11152) = _Q4;
  *(v0 + 11168) = _Q4;
  *(v0 + 11248) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11616) = _Q4;
  *(v0 + 11632) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11760) = _Q4;
  *(v0 + 11776) = _Q4;
  *(v0 + 11792) = _Q4;
  *(v0 + 11808) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1053609165;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1056964608;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1065353216;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1053609165;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 1065353216;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1053609165;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 1065353216;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCA7D674()
{
  v0 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_7_16();
  type metadata accessor for HourlyBannerView(v8);
  OUTLINED_FUNCTION_16_12();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1C410();
    OUTLINED_FUNCTION_4();
    v9 = OUTLINED_FUNCTION_10_3();
    return v10(v9);
  }

  else
  {
    sub_1BCE1D8C0();
    v12 = sub_1BCE1C1F0();
    OUTLINED_FUNCTION_17_6();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v2 + 8))(v6, v0);
  }
}

void *HourlyBannerView.init(viewAttributes:)@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for HourlyBannerView(0) + 20);
  *&a2[v4] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  swift_storeEnumTagMultiPayload();
  sub_1BCE1C590();

  return memcpy(a2, a1, 0x5BuLL);
}

uint64_t HourlyBannerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BCE1BDF0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08380);
  return sub_1BCA7D934(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BCA7D934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = sub_1BCE1C100();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE1C410();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08468);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v44 - v13);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08470);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08478);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08480);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v47 = &v44 - v19;
  *v14 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08488);
  sub_1BCA7E028(a1);
  v20 = *(v12 + 44);
  v44 = v14;
  v21 = (v14 + v20);
  *v21 = 0xD000000000000010;
  v21[1] = 0x80000001BCE470F0;
  memcpy(v58, a1, 0x5BuLL);
  memcpy(v57, a1, 0x5BuLL);
  sub_1BCA81DF0(v58, __dst);
  sub_1BCA7D674();
  v22 = *(type metadata accessor for HourlyBannerView(0) + 24);
  v23 = sub_1BCDBDE30(v10, a1 + v22);
  v24 = *(v5 + 8);
  v24(v10, v4);
  memcpy(__dst, v57, 0x5BuLL);
  sub_1BCA81E4C(__dst);
  memcpy(v57, a1, 0x58uLL);
  v60 = *(a1 + 88);
  LOBYTE(v10) = v60;
  v25 = *(a1 + 89);
  sub_1BCA7D674();
  v57[88] = v10;
  *&v57[89] = v25;
  v26 = sub_1BCDBDE30(v7, a1 + v22);
  v24(v7, v4);
  v27 = 8.0;
  if (v60)
  {
    v27 = 16.0;
  }

  v28 = v26 + v27;
  sub_1BCE1CEE0();
  if (v23 > v28)
  {
    sub_1BCE1D8C0();
    v29 = sub_1BCE1C1F0();
    sub_1BCE1AC20();
  }

  sub_1BCE1B910();
  v30 = v45;
  sub_1BC9849E8();
  v31 = v49;
  memcpy((v30 + *(v49 + 36)), v57, 0x70uLL);
  v32 = v46;
  sub_1BCE1C0F0();
  v33 = sub_1BCA81EA0();
  v34 = v51;
  sub_1BCE1C930();
  (*(v48 + 8))(v32, v50);
  sub_1BC94C05C(v30, &qword_1EBD08470);
  sub_1BCE1BD30();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v35 = qword_1EDA1EFB8;
  v36 = sub_1BCE1C680();
  v38 = v37;
  v40 = v39;
  v55 = v31;
  v56 = v33;
  swift_getOpaqueTypeConformance2();
  v41 = v53;
  sub_1BCE1C830();
  sub_1BC998CF4(v36, v38, v40 & 1);

  (*(v52 + 8))(v34, v41);
  v42 = v54;
  sub_1BC9AD3FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD084B8);
  *(v42 + *(result + 36)) = 0x4000000000000000;
  return result;
}

uint64_t sub_1BCA7E028(uint64_t a1)
{
  v2 = type metadata accessor for HourlyBannerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *(*a1 + 16);
  v9[0] = 0;
  v9[1] = v5;
  swift_getKeyPath();
  sub_1BCA823C8();
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BCA82208(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD084C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD084A0);
  sub_1BCA822E8();
  sub_1BCA82120();
  return sub_1BCE1CE10();
}

uint64_t sub_1BCA7E1C0@<X0>(uint64_t result@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    type metadata accessor for HourlyForecastBannerViewModel();
    sub_1BCA823C8();
    memcpy(__dst, a2, 0x5BuLL);
    KeyPath = swift_getKeyPath();
    v7 = type metadata accessor for HourlyBannerCell(0);
    *(a3 + v7[6]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
    swift_storeEnumTagMultiPayload();
    *(a3 + v7[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08428);
    swift_storeEnumTagMultiPayload();
    memcpy((a3 + v7[5]), a2, 0x5BuLL);
    v8 = v7[8];
    *(a3 + v8) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430);
    swift_storeEnumTagMultiPayload();
    sub_1BCA81DF0(__dst, &v13);
    v9 = sub_1BCE1CEE0();
    v11 = v10;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD084A0);
    v12 = (a3 + *(result + 36));
    *v12 = v3;
    v12[1] = v9;
    v12[2] = v11;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1BCA7E3B8(uint64_t a1, char a2, uint64_t a3, char a4, double a5, uint64_t a6, void *a7)
{
  if (a4)
  {
    *&a3 = 0.0;
  }

  v8 = INFINITY;
  if ((a2 & 1) == 0)
  {
    v8 = *&a1;
  }

  a7[1] = 0;
  v9 = *(*a7 + 16);
  v10 = 0.0;
  if (v9)
  {
    v11 = 0;
    v12 = (*a7 + 40);
    v13 = *&a3;
    v14 = 0.0;
    while (1)
    {
      v15 = v11 ? a5 : 0.0;
      v10 = v14 + v15 + *(v12 - 1);
      if (v8 < v10)
      {
        break;
      }

      v16 = *v12;
      v12 += 2;
      v17 = v16;
      a7[1] = ++v11;
      if (v13 <= v16)
      {
        v13 = v17;
      }

      v14 = v10;
      if (v9 == v11)
      {
        goto LABEL_16;
      }
    }

    v10 = v14;
  }

LABEL_16:
  if (a2)
  {
    result = 0.0;
  }

  else
  {
    result = *&a1;
  }

  if (v10 > result)
  {
    return v10;
  }

  return result;
}

void sub_1BCA7E468(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t *a7)
{
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08440);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v98 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08448);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v98 - v14;
  OUTLINED_FUNCTION_13();
  v122 = sub_1BCE1B690();
  OUTLINED_FUNCTION_2();
  v99 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08450);
  v21 = OUTLINED_FUNCTION_14(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_0();
  v116 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v98 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08458);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  v119 = (&v98 - v28);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08460);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  sub_1BCE1B710();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - v34;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v98 - v38;
  v105 = v40;
  v41 = *(v40 + 16);
  v121 = v42;
  v102 = v40 + 16;
  v101 = v41;
  (v41)(v35, a6, v37);
  v43 = a7[1];
  v104 = v39;
  v103 = v35;
  sub_1BCAE5FD4(v43);
  v44 = *a7;

  v107 = v43;
  v117 = v44;
  sub_1BCAF6964(v43, v44);
  v48 = v47 >> 1;
  v49 = (v47 >> 1) - v46;
  if (__OFSUB__(v47 >> 1, v46))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v118 = v25;
  if (v49)
  {
    v50 = v45;
    v51 = v46;
    v125[0] = MEMORY[0x1E69E7CC0];
    sub_1BCA15268(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v52 = v125[0];
    v53 = (v50 + 16 * v51);
    while (v51 < v48)
    {
      v54 = *v53;
      v125[0] = v52;
      v56 = *(v52 + 16);
      v55 = *(v52 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1BCA15268((v55 > 1), v56 + 1, 1);
        v52 = v125[0];
      }

      *(v52 + 16) = v56 + 1;
      *(v52 + 8 * v56 + 32) = v54;
      ++v51;
      v53 += 2;
      v25 = v118;
      if (v48 == v51)
      {
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRelease();
  v52 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v57 = *(v52 + 16);
  v58 = v111;
  if (v57)
  {
    v59 = (v52 + 32);
    v60 = 0.0;
    do
    {
      v61 = *v59++;
      v60 = v60 + v61;
      --v57;
    }

    while (v57);
  }

  else
  {
    v60 = 0.0;
  }

  v126.origin.x = OUTLINED_FUNCTION_11_3();
  Width = CGRectGetWidth(v126);
  if (__OFSUB__(v107, 1))
  {
    goto LABEL_35;
  }

  v98 = a6;
  v114 = v12;
  v63 = (Width - v60) / (v107 - 1);
  v64 = v119;
  v65 = v121;
  v101(v119, v104, v121);
  (*(v105 + 32))(v103, v64, v65);
  v66 = MEMORY[0x1E697E3C0];
  sub_1BCA81DA8(&qword_1EDA1EA18, MEMORY[0x1E697E3C0]);
  sub_1BCE1D4B0();
  v108 = *(v120 + 36);
  *&v31[v108] = 0;
  v115 = *(v106 + 36);
  sub_1BCA81DA8(&qword_1EDA1EA10, v66);
  v113 = 0;
  v119 = (v99 + 32);
  v120 = v99 + 16;
  v67 = v117 + 32;
  v68 = (v99 + 8);
  for (i = a1; ; i = i + v63 + v83)
  {
    OUTLINED_FUNCTION_10_3();
    sub_1BCE1D750();
    if (*&v31[v115] == v125[0])
    {
      __swift_storeEnumTagSinglePayload(v116, 1, 1, v123);
    }

    else
    {
      v70 = v67;
      v71 = v68;
      v72 = sub_1BCE1D780();
      v73 = v109;
      v74 = v122;
      (*v120)(v109);
      v72(v125, 0);
      v75 = v123;
      v76 = v110;
      sub_1BCE1D760();
      v77 = *(v75 + 48);
      v78 = v113;
      *v76 = v113;
      (*v119)(&v76[v77], v73, v74);
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_33;
      }

      v113 = v80;
      *&v31[v108] = v80;
      v81 = v116;
      sub_1BC9849E8();
      __swift_storeEnumTagSinglePayload(v81, 0, 1, v123);
      v65 = v121;
      v58 = v111;
      v25 = v118;
      v68 = v71;
      v67 = v70;
    }

    sub_1BC9849E8();
    if (__swift_getEnumTagSinglePayload(v25, 1, v123) == 1)
    {
      break;
    }

    v82 = *v25;
    (*v119)(v58, v25 + *(v123 + 48), v122);
    if ((v82 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v82 >= *(v117 + 16))
    {
      goto LABEL_31;
    }

    v83 = *(v67 + 16 * v82);
    v127.origin.x = OUTLINED_FUNCTION_11_3();
    CGRectGetHeight(v127);
    sub_1BCE1CF70();
    LOBYTE(v125[0]) = 0;
    v124 = 0;
    sub_1BCE1B680();
    (*v68)(v58, v122);
  }

  sub_1BC94C05C(v31, &qword_1EBD08460);
  v84 = v101;
  v101(v103, v98, v65);
  v85 = v100;
  sub_1BCAE5DE8(v107);
  v86 = v114;
  v84(v114, v85, v65);
  v87 = *(v106 + 36);
  OUTLINED_FUNCTION_10_3();
  sub_1BCE1D6F0();
  while (1)
  {
    OUTLINED_FUNCTION_10_3();
    sub_1BCE1D750();
    if (*(v86 + v87) == v125[0])
    {
      break;
    }

    v88 = sub_1BCE1D780();
    v89 = v112;
    v90 = v122;
    (*v120)(v112);
    v88(v125, 0);
    sub_1BCE1D760();
    sub_1BCE1B8C0();
    v92 = v91;
    v94 = v93;
    sub_1BCE1CF70();
    LOBYTE(v125[0]) = v92 & 1;
    v86 = v114;
    v124 = v94 & 1;
    sub_1BCE1B680();
    v95 = v90;
    v65 = v121;
    (*v68)(v89, v95);
  }

  sub_1BC94C05C(v86, &qword_1EBD08440);
  v96 = v65;
  v97 = *(v105 + 8);
  v97(v100, v96);
  v97(v104, v96);
}

uint64_t sub_1BCA7EF18(uint64_t a1)
{
  v20 = sub_1BCE1B690();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_16();
  sub_1BCE1B710();
  sub_1BCA81DA8(&qword_1EDA1EA10, MEMORY[0x1E697E3C0]);
  v6 = sub_1BCE1D720();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1BCA15288(0, v6 & ~(v6 >> 63), 0);
  v7 = v22;
  result = sub_1BCE1D6F0();
  if ((v8 & 0x8000000000000000) == 0)
  {
    do
    {
      v10 = sub_1BCE1D780();
      (*(v4 + 16))(v1);
      v10(v21, 0);
      sub_1BCE1B8C0();
      v21[0] = v11 & 1;
      sub_1BCE1B670();
      v13 = v12;
      v15 = v14;
      (*(v4 + 8))(v1, v20);
      v22 = v7;
      v16 = a1;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BCA15288((v17 > 1), v18 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      sub_1BCE1D760();
      --v8;
      a1 = v16;
    }

    while (v8);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCA7F178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BCA7EF18(a1);
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_1BCA7F27C()
{
  v0 = sub_1BCE1BC20();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08378);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_7_16();
  type metadata accessor for HourlyBannerCell(v8);
  OUTLINED_FUNCTION_16_12();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1C410();
    OUTLINED_FUNCTION_4();
    v9 = OUTLINED_FUNCTION_10_3();
    return v10(v9);
  }

  else
  {
    sub_1BCE1D8C0();
    v12 = sub_1BCE1C1F0();
    OUTLINED_FUNCTION_17_6();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v2 + 8))(v6, v0);
  }
}

void (*sub_1BCA7F438(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1BCE1B480();
  return sub_1BCA286DC;
}

double sub_1BCA7F4AC()
{
  v1 = sub_1BCE19280();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BCE1BC20();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08428);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = sub_1BCE1B850();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v35 = type metadata accessor for HourlyBannerCell(0);
  v36 = v0;
  sub_1BC95DCE8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  else
  {
    sub_1BCE1D8C0();
    v16 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    (*(v33 + 8))(v5, v34);
  }

  (*(v10 + 16))(v12, v15, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == *MEMORY[0x1E697E7D0])
  {
    goto LABEL_5;
  }

  if (v17 != *MEMORY[0x1E697E7D8])
  {
    v27 = *(v10 + 8);
    v27(v15, v9);
    v27(v12, v9);
    goto LABEL_15;
  }

  v18 = v30;
  sub_1BCE191B0();
  v19 = sub_1BCE19140();
  (*(v31 + 8))(v18, v32);
  v20 = [v19 numberingSystem];

  v21 = sub_1BCE1D280();
  v23 = v22;

  if (v21 == 1650553441 && v23 == 0xE400000000000000)
  {

LABEL_5:
    (*(v10 + 8))(v15, v9);
LABEL_15:
    v26 = 1.0;
    return v26 * *(v36 + *(v35 + 20) + 72);
  }

  v25 = sub_1BCE1E090();

  (*(v10 + 8))(v15, v9);
  v26 = -1.0;
  if (v25)
  {
    v26 = 1.0;
  }

  return v26 * *(v36 + *(v35 + 20) + 72);
}

uint64_t sub_1BCA7F944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v70 - v5;
  v6 = OUTLINED_FUNCTION_13();
  v7 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(v6);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v81 = (v10 - v9);
  OUTLINED_FUNCTION_13();
  sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v77 = v12;
  v78 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v73 = v14 - v13;
  OUTLINED_FUNCTION_13();
  v74 = sub_1BCE1C1D0();
  OUTLINED_FUNCTION_2();
  v72 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083B8);
  OUTLINED_FUNCTION_2();
  v26 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083C0);
  OUTLINED_FUNCTION_2();
  v75 = v30;
  v76 = v31;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v70 - v33;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083C8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3_0();
  v71 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v79 = &v70 - v38;
  *v23 = sub_1BCE1BDF0();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083D0);
  sub_1BCA7FFDC(v2, &v23[*(v39 + 44)]);
  sub_1BCE1C1C0();
  OUTLINED_FUNCTION_4_16();
  v41 = sub_1BC957184(v40, &qword_1EBD083B0);
  sub_1BCE1C970();
  (*(v72 + 8))(v19, v74);
  sub_1BC94C05C(v23, &qword_1EBD083B0);
  v42 = v73;
  sub_1BCE1C0D0();
  v86 = v20;
  v87 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BCE1C930();
  (*(v77 + 8))(v42, v78);
  (*(v26 + 8))(v29, v24);
  v44 = type metadata accessor for HourlyForecastBannerViewModel();
  v45 = v70;
  v46 = (v70 + v44[8]);
  v48 = *v46;
  v47 = v46[1];
  v86 = v48;
  v87 = v47;
  v84 = v24;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v49 = v71;
  v50 = v75;
  sub_1BCE1C8E0();
  (*(v76 + 8))(v34, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BCE3E030;
  v52 = v45 + v44[9];
  v53 = (v52 + *(type metadata accessor for ConditionViewModel() + 28));
  v54 = v53[1];
  *(v51 + 32) = *v53;
  *(v51 + 40) = v54;
  v55 = v44[6];

  static Set<>.full.getter();
  v56 = sub_1BCE19280();
  v57 = v82;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v56);
  v58 = v81;
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v57, &qword_1EBD07890);
  sub_1BCE1A3E0();
  v59 = sub_1BCE1A3A0();
  v60 = v45 + v55;
  v61 = v58;
  v62 = sub_1BCB37580(v58, 0, v59, v60);
  v64 = v63;

  sub_1BCA2AB28(v61);
  *(v51 + 48) = v62;
  *(v51 + 56) = v64;
  v86 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
  sub_1BC957184(&qword_1EDA1C220, &qword_1EBD07878);
  v65 = sub_1BCE1D1D0();
  v67 = v66;

  v86 = v65;
  v87 = v67;
  v68 = v79;
  sub_1BCE1B880();

  sub_1BC9AD380(v49);
  sub_1BCE1B8A0();
  return sub_1BC9AD380(v68);
}

uint64_t sub_1BCA7FFDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v132 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083D8);
  MEMORY[0x1EEE9AC00](v127);
  v120 = &v113 - v3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083E0);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v113 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083E8);
  MEMORY[0x1EEE9AC00](v125);
  v119 = (&v113 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v135 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v113 - v9;
  v10 = sub_1BCE1BDC0();
  v116 = *(v10 - 8);
  v117 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v113 - v13;
  v134 = sub_1BCE1C410();
  v136 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for HourlyForecastBannerViewModel() + 28);
  v17 = a1;
  v133 = a1;
  v18 = (a1 + v16);
  v19 = v18[1];
  *&v147 = *v18;
  *(&v147 + 1) = v19;
  v20 = sub_1BC970820();

  v118 = v20;
  v21 = sub_1BCE1C6A0();
  v23 = v22;
  v25 = v24;
  v130 = v26;
  v113 = type metadata accessor for HourlyBannerCell(0);
  v27 = v17 + *(v113 + 20);
  v28 = *(v27 + 16);
  v122 = v27;
  *&v147 = v28;

  v29 = sub_1BCE1C5D0();
  v31 = v30;
  LOBYTE(v20) = v32;
  v131 = v33;
  sub_1BC998CF4(v21, v23, v25 & 1);

  v123 = *(v27 + 8);
  v34 = sub_1BCE1C610();
  v36 = v35;
  LOBYTE(v27) = v37;
  v38 = v31;
  v39 = v133;
  sub_1BC998CF4(v29, v38, v20 & 1);

  sub_1BCE1C3C0();
  v40 = sub_1BCE1C530();
  v129 = v41;
  v130 = v40;
  v128 = v42;
  v131 = v43;
  v44 = v36;
  v45 = v122;
  sub_1BC998CF4(v34, v44, v27 & 1);

  sub_1BCA7F27C();
  v46 = sub_1BCE1C2A0();
  Ascent = CTFontGetAscent(v46);

  v48 = v136 + 8;
  v49 = *(v136 + 8);
  v50 = v134;
  v49(v15, v134);
  sub_1BCA7F27C();
  v51 = sub_1BCE1C2A0();
  CapHeight = CTFontGetCapHeight(v51);

  v49(v15, v50);
  sub_1BCA7F27C();
  v53 = sub_1BCE1C2A0();
  [v53 wu_exuberatedLineHeightAmount];
  v55 = v54;

  v121 = v15;
  v136 = v48;
  v49(v15, v50);
  v56 = 1.0;
  if (*(v45 + 90) == 1)
  {
    v57 = v114;
    sub_1BCC60998(v114);
    v59 = v115;
    v58 = v116;
    v60 = v117;
    (*(v116 + 104))(v115, *MEMORY[0x1E697F608], v117);
    v61 = sub_1BCE1B4D0();
    v62 = *(v58 + 8);
    v62(v59, v60);
    v62(v57, v60);
    if (v61)
    {
      v56 = 1.0;
    }

    else
    {
      v56 = 0.7;
    }
  }

  v123 = *(v45 + 80);
  if (*(v45 + 40) == 1)
  {
    v63 = sub_1BCE1BDF0();
    v64 = v119;
    *v119 = v63;
    *(v64 + 8) = 0;
    *(v64 + 16) = 1;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08418);
    sub_1BCA810CC(v39, v64 + *(v65 + 44));
    v66 = &qword_1EBD083E8;
  }

  else
  {
    v64 = v120;
    sub_1BCA80B20(v120);
    v66 = &qword_1EBD083D8;
  }

  sub_1BC95DCE8();
  swift_storeEnumTagMultiPayload();
  sub_1BC957184(&qword_1EDA1B500, &qword_1EBD083E8);
  sub_1BCA81B9C();
  sub_1BCE1BF60();
  sub_1BC94C05C(v64, v66);
  if (*(v45 + 88) == 1)
  {
    *&v147 = sub_1BCA80DA4(v39);
    *(&v147 + 1) = v67;
    v68 = sub_1BCE1C6A0();
    v70 = v69;
    v72 = v71;
    *&v147 = *(v45 + 64);

    v73 = sub_1BCE1C5D0();
    v126 = v74;
    v127 = v49;
    v75 = v45;
    v77 = v76;
    v79 = v78;
    sub_1BC998CF4(v68, v70, v72 & 1);

    v125 = *(v75 + 56);
    v80 = sub_1BCE1C610();
    v82 = v81;
    v84 = v83;
    sub_1BC998CF4(v73, v77, v79 & 1);

    sub_1BCE1C3C0();
    v85 = sub_1BCE1C530();
    v87 = v86;
    LODWORD(v126) = v88;
    v90 = v89;
    sub_1BC998CF4(v80, v82, v84 & 1);

    v91 = sub_1BCA7F4AC();
    v92 = v121;
    sub_1BCA7F27C();
    v93 = sub_1BCE1C2A0();
    Descent = CTFontGetDescent(v93);

    v95 = v134;
    v96 = v127;
    v127(v92, v134);
    sub_1BCA7F27C();
    v97 = sub_1BCE1C2A0();
    [v97 wu_exuberatedLineHeightAmount];
    v99 = v98;

    v96(v92, v95);
    v100 = Descent - v99;
    LOBYTE(v146[0]) = 0;
    LOBYTE(v97) = v126 & 1;
    LOBYTE(v142) = v126 & 1;
    sub_1BCA81D10(v85, v87, v126 & 1);

    sub_1BC998CF4(v85, v87, v97);

    sub_1BCA81D10(v85, v87, v97);
    BYTE8(v147) = 0;
    LOBYTE(v149) = v97;

    v101 = v123;
    v102 = v123;
  }

  else
  {
    v102 = 0;
    v85 = 0;
    v87 = 0;
    v90 = 0;
    *(&v147 + 1) = 0;
    *&v149 = 0;
    v91 = 0.0;
    v100 = 0.0;
    v101 = v123;
  }

  *&v147 = v102;
  *&v148 = v85;
  *(&v148 + 1) = v87;
  *(&v149 + 1) = v90;
  *&v150 = v91;
  *(&v150 + 1) = v100;
  sub_1BC95DCE8();
  v138 = v147;
  v139 = v148;
  v140 = v149;
  v141 = v150;
  v104 = v131;
  v103 = v132;
  v106 = v129;
  v105 = v130;
  *v132 = v130;
  v103[1] = v106;
  v107 = v128 & 1;
  *(v103 + 16) = v128 & 1;
  v103[3] = v104;
  v103[4] = 0;
  *(v103 + 5) = CapHeight - Ascent + v55;
  *(v103 + 6) = v56;
  v103[7] = v101;
  *(v103 + 64) = 0;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08408);
  sub_1BC95DCE8();
  v109 = (v103 + *(v108 + 80));
  v142 = v138;
  v143 = v139;
  v144 = v140;
  v145 = v141;
  sub_1BCA81D10(v105, v106, v107);

  sub_1BC95DCE8();
  sub_1BC94C05C(&v147, &qword_1EBD08410);
  v110 = v143;
  *v109 = v142;
  v109[1] = v110;
  v111 = v145;
  v109[2] = v144;
  v109[3] = v111;
  sub_1BC94C05C(v137, &qword_1EBD083F0);
  v146[0] = v138;
  v146[1] = v139;
  v146[2] = v140;
  v146[3] = v141;
  sub_1BC94C05C(v146, &qword_1EBD08410);
  sub_1BC94C05C(v135, &qword_1EBD083F0);
  sub_1BC998CF4(v105, v106, v107);
}

double sub_1BCA80B20@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1C410();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for HourlyForecastBannerViewModel() + 36);
  v8 = type metadata accessor for ConditionViewModel();
  v9 = (v7 + *(v8 + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v7 + *(v8 + 40));
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v13 = type metadata accessor for ConditionImage(0);
  v14 = v13[5];
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08430);
  swift_storeEnumTagMultiPayload();
  v15 = v13[6];
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  swift_storeEnumTagMultiPayload();
  v16 = (a1 + v13[7]);
  *v16 = v11;
  v16[1] = v10;
  *(a1 + v13[8]) = v12;
  v17 = *(v1 + *(type metadata accessor for HourlyBannerCell(0) + 20) + 48);
  KeyPath = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083F8) + 36));
  *v19 = KeyPath;
  v19[1] = v17;

  sub_1BCA7F27C();
  v20 = sub_1BCE1C2A0();
  [v20 wu_lineHeightNotIncludingExuberatedAmount];

  (*(v4 + 8))(v6, v3);
  sub_1BCE1CEE0();
  sub_1BCE1B610();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083D8) + 36));
  v22 = v24[1];
  *v21 = v24[0];
  v21[1] = v22;
  result = *&v25;
  v21[2] = v25;
  return result;
}

uint64_t sub_1BCA80DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(a1 + *(type metadata accessor for HourlyBannerCell(0) + 20) + 89);
  v12 = type metadata accessor for HourlyForecastBannerViewModel();
  if (v11 == 1)
  {
    if (!*(a1 + *(v12 + 56)))
    {
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_8:
        swift_beginAccess();
        v17 = qword_1EDA1EFB8;
        v16 = sub_1BCE18B60();

        return v16;
      }

LABEL_10:
      swift_once();
      goto LABEL_8;
    }

    if (*(a1 + *(v12 + 56)) == 1)
    {
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v13 = *(v12 + 24);
  static Set<>.full.getter();
  v14 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  static WeatherFormatStyle<>.weather(_:locale:)();

  sub_1BC94C05C(v4, &qword_1EBD07890);
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  sub_1BCA2AB28(v10);
  sub_1BCE1A3E0();
  v15 = sub_1BCE1A3A0();
  v16 = sub_1BCB37580(v7, 0, v15, a1 + v13);

  sub_1BCA2AB28(v7);
  return v16;
}

uint64_t sub_1BCA810CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07BE8);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v7 = sub_1BCE1E060();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  sub_1BCA80B20(&v45 - v15);
  v17 = type metadata accessor for HourlyForecastBannerViewModel();
  v18 = a1 + v17[9];
  if (*(v18 + *(type metadata accessor for ConditionViewModel() + 36)) == 1 && *(a1 + v17[14]) == 2)
  {
    v19 = *(a1 + v17[10]);
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7038], v7);
    v20 = Double.nearestMultiple(of:roundingRule:)(v10, 0.01, v19);
    (*(v8 + 8))(v10, v7);
    v48 = v20;
    sub_1BCE19150();
    sub_1BC96ABEC();
    sub_1BCE18CB0();
    sub_1BC957184(&qword_1EDA1EC00, &qword_1EBD07BE8);
    v21 = v46;
    sub_1BCE1D0F0();
    (*(v45 + 8))(v6, v21);
    v22 = sub_1BCC67EB4(v49, v50);
    v24 = v23;

    v49 = v22;
    v50 = v24;
    sub_1BC970820();
    v25 = sub_1BCE1C6A0();
    v27 = v26;
    LOBYTE(v24) = v28;
    v45 = v29;
    v46 = a1 + *(type metadata accessor for HourlyBannerCell(0) + 20);
    v49 = *(v46 + 32);

    v30 = sub_1BCE1C5D0();
    v32 = v31;
    LOBYTE(v21) = v33;
    sub_1BC998CF4(v25, v27, v24 & 1);

    v34 = sub_1BCE1C610();
    v36 = v35;
    LOBYTE(v24) = v37;
    v39 = v38;
    sub_1BC998CF4(v30, v32, v21 & 1);

    v40 = v24 & 1;
    sub_1BCA81D10(v34, v36, v40);

    v41 = 65793;
  }

  else
  {
    v34 = 0;
    v36 = 0;
    v40 = 0;
    v39 = 0;
    v41 = 0;
  }

  sub_1BC95DCE8();
  v42 = v47;
  sub_1BC95DCE8();
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08420) + 48);
  sub_1BCA81D20(v34, v36, v40, v39);
  sub_1BCA81D64(v34, v36, v40, v39);
  *v43 = v34;
  *(v43 + 8) = v36;
  *(v43 + 16) = v40;
  *(v43 + 24) = v39;
  *(v43 + 34) = BYTE2(v41);
  *(v43 + 32) = v41;
  sub_1BC94C05C(v16, &qword_1EBD083D8);
  sub_1BCA81D64(v34, v36, v40, v39);
  return sub_1BC94C05C(v13, &qword_1EBD083D8);
}

uint64_t sub_1BCA81630@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = sub_1BCA81B94;
  a2[1] = result;
  return result;
}

uint64_t sub_1BCA81680@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE1BF90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BCE1CAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD083A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BCE3E050;
  v19[0] = 0xD000000000000010;
  v19[1] = 0x80000001BCE470F0;
  sub_1BCE1C030();
  sub_1BCE1B640();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = (*(v5 + 8))(v7, v4);
  *(v9 + 32) = a1;
  *(v9 + 40) = v11;
  *(v9 + 48) = v13;
  *(v9 + 56) = v15;
  *(v9 + 64) = v17;
  *a2 = v8;
  *(a2 + 8) = 256;
  *(a2 + 16) = v9;
  return result;
}

void sub_1BCA81888()
{
  sub_1BCA81AA0(319, &qword_1EDA1BBF0, MEMORY[0x1E6980E88]);
  if (v0 <= 0x3F)
  {
    sub_1BCE1C5A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BCA81990()
{
  type metadata accessor for HourlyForecastBannerViewModel();
  if (v0 <= 0x3F)
  {
    sub_1BCA81AA0(319, &qword_1EDA1BBF0, MEMORY[0x1E6980E88]);
    if (v1 <= 0x3F)
    {
      sub_1BCA81AA0(319, &qword_1EDA1BC08, MEMORY[0x1E697E7E0]);
      if (v2 <= 0x3F)
      {
        sub_1BCA81AA0(319, &qword_1EDA1BBF8, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BCA81AA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BCE1B4F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BCA81B08()
{
  result = qword_1EDA18B30[0];
  if (!qword_1EDA18B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA18B30);
  }

  return result;
}

unint64_t sub_1BCA81B9C()
{
  result = qword_1EDA1B978;
  if (!qword_1EDA1B978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD083D8);
    sub_1BCA81C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B978);
  }

  return result;
}

unint64_t sub_1BCA81C28()
{
  result = qword_1EDA1BB98;
  if (!qword_1EDA1BB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD083F8);
    sub_1BCA81DA8(qword_1EDA1AB98, type metadata accessor for ConditionImage);
    sub_1BC957184(&qword_1EDA1B6B0, &qword_1EBD08400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB98);
  }

  return result;
}

uint64_t sub_1BCA81D10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BCA81D20(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BCA81D10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BCA81D64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC998CF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BCA81DA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCA81EA0()
{
  result = qword_1EDA1B930;
  if (!qword_1EDA1B930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08470);
    sub_1BCA81F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B930);
  }

  return result;
}

unint64_t sub_1BCA81F2C()
{
  result = qword_1EDA1BB08;
  if (!qword_1EDA1BB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08468);
    sub_1BCA81FE4();
    sub_1BC957184(&qword_1EDA1E998, &qword_1EBD084B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB08);
  }

  return result;
}

unint64_t sub_1BCA81FE4()
{
  result = qword_1EDA1BBB8;
  if (!qword_1EDA1BBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08488);
    sub_1BC957184(&qword_1EDA1BBD8, &qword_1EBD08490);
    sub_1BCA8209C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BBB8);
  }

  return result;
}

unint64_t sub_1BCA8209C()
{
  result = qword_1EDA1B4B8;
  if (!qword_1EDA1B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08498);
    sub_1BCA82120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B4B8);
  }

  return result;
}

unint64_t sub_1BCA82120()
{
  result = qword_1EDA1BB88;
  if (!qword_1EDA1BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD084A0);
    sub_1BCA81DA8(&qword_1EDA1AA98, type metadata accessor for HourlyBannerCell);
    sub_1BC957184(&qword_1EDA1B888, &qword_1EBD084A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB88);
  }

  return result;
}

uint64_t sub_1BCA82208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyBannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCA8226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HourlyBannerView(0);
  OUTLINED_FUNCTION_14(v5);
  v7 = (v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));

  return sub_1BCA7E1C0(a1, v7, a2);
}

unint64_t sub_1BCA822E8()
{
  result = qword_1EDA16C98;
  if (!qword_1EDA16C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD084C0);
    sub_1BCA82374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16C98);
  }

  return result;
}

unint64_t sub_1BCA82374()
{
  result = qword_1EDA16D18;
  if (!qword_1EDA16D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16D18);
  }

  return result;
}

uint64_t sub_1BCA823C8()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BCA82420(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BCA82460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCA824AC()
{
  result = qword_1EDA1B9F8;
  if (!qword_1EDA1B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD083C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD083B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD083B0);
    sub_1BC957184(&qword_1EDA1B4F8, &qword_1EBD083B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BCA81DA8(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9F8);
  }

  return result;
}

double sub_1BCA8261C@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE41A20;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  result = 0.0888519287;
  *(v2 + 48) = xmmword_1BCE41A30;
  *(v2 + 64) = xmmword_1BCE41A40;
  *(v2 + 80) = xmmword_1BCE41A50;
  *(v2 + 96) = xmmword_1BCE41A60;
  *(v2 + 112) = xmmword_1BCE41A70;
  *(v2 + 128) = xmmword_1BCE41A80;
  *(v2 + 144) = xmmword_1BCE41A90;
  *(v2 + 160) = 0;
  *(v2 + 168) = xmmword_1BCE41A30;
  *(v2 + 184) = xmmword_1BCE41A40;
  *(v2 + 200) = xmmword_1BCE41A50;
  *(v2 + 216) = xmmword_1BCE41A60;
  *(v2 + 232) = xmmword_1BCE41A70;
  *(v2 + 248) = xmmword_1BCE41A80;
  *(v2 + 264) = 0x3FE0000000000000;
  *(v2 + 272) = 0xC03E000000000000;
  *(v2 + 280) = 0;
  *(v2 + 288) = xmmword_1BCE41A30;
  *(v2 + 304) = xmmword_1BCE41A40;
  *(v2 + 320) = xmmword_1BCE41A50;
  *(v2 + 336) = xmmword_1BCE41A60;
  *(v2 + 352) = xmmword_1BCE41A70;
  *(v2 + 368) = xmmword_1BCE41A80;
  *(v2 + 384) = xmmword_1BCE41AA0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x3FC1A83FFFFFFFD3;
  *(v2 + 416) = xmmword_1BCE475B0;
  *(v2 + 432) = xmmword_1BCE475C0;
  *(v2 + 448) = xmmword_1BCE475D0;
  *(v2 + 464) = xmmword_1BCE475E0;
  *(v2 + 480) = xmmword_1BCE475F0;
  *(v2 + 496) = xmmword_1BCE3C8C0;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 528) = xmmword_1BCE47600;
  *(v2 + 544) = xmmword_1BCE47610;
  *(v2 + 560) = xmmword_1BCE47620;
  *(v2 + 576) = xmmword_1BCE47630;
  *(v2 + 592) = xmmword_1BCE47640;
  *(v2 + 608) = xmmword_1BCE47650;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FD5B1B3333332D9;
  *(v2 + 656) = xmmword_1BCE47660;
  *(v2 + 672) = xmmword_1BCE47670;
  *(v2 + 688) = xmmword_1BCE47680;
  *(v2 + 704) = xmmword_1BCE47690;
  *(v2 + 720) = xmmword_1BCE476A0;
  *(v2 + 736) = xmmword_1BCE3C8C0;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v4;
  *(v2 + 764) = *&v4[3];
  *(v2 + 768) = xmmword_1BCE476B0;
  *(v2 + 784) = xmmword_1BCE476C0;
  *(v2 + 800) = xmmword_1BCE476D0;
  *(v2 + 816) = xmmword_1BCE476E0;
  *(v2 + 832) = xmmword_1BCE476F0;
  *(v2 + 848) = xmmword_1BCE47700;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 880) = 0;
  *(v2 + 881) = *v5;
  *(v2 + 884) = *&v5[3];
  *(v2 + 888) = 0x3FE1D4D9FC267EDFLL;
  *(v2 + 896) = xmmword_1BCE47710;
  *(v2 + 912) = xmmword_1BCE47720;
  *(v2 + 928) = xmmword_1BCE47730;
  *(v2 + 944) = xmmword_1BCE47740;
  *(v2 + 960) = xmmword_1BCE47750;
  *(v2 + 976) = xmmword_1BCE3C8C0;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v6[3];
  *(v2 + 1001) = *v6;
  *(v2 + 1008) = xmmword_1BCE47760;
  *(v2 + 1024) = xmmword_1BCE47770;
  *(v2 + 1040) = xmmword_1BCE47780;
  *(v2 + 1056) = xmmword_1BCE47790;
  *(v2 + 1072) = xmmword_1BCE477A0;
  *(v2 + 1088) = xmmword_1BCE477B0;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v7;
  *(v2 + 1124) = *&v7[3];
  *(v2 + 1128) = 0x3FE4EA8CFE133F59;
  *(v2 + 1136) = xmmword_1BCE477C0;
  *(v2 + 1152) = xmmword_1BCE477D0;
  *(v2 + 1168) = xmmword_1BCE477E0;
  *(v2 + 1184) = xmmword_1BCE477F0;
  *(v2 + 1200) = xmmword_1BCE47800;
  *(v2 + 1216) = xmmword_1BCE3C8C0;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v8[3];
  *(v2 + 1241) = *v8;
  *(v2 + 1248) = xmmword_1BCE47810;
  *(v2 + 1264) = xmmword_1BCE47820;
  *(v2 + 1280) = xmmword_1BCE47830;
  *(v2 + 1296) = xmmword_1BCE47840;
  *(v2 + 1312) = xmmword_1BCE47850;
  *(v2 + 1328) = xmmword_1BCE47860;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v9[3];
  *(v2 + 1361) = *v9;
  *(v2 + 1368) = 0x3FE8003FFFFFFFD3;
  *(v2 + 1376) = xmmword_1BCE47870;
  *(v2 + 1392) = xmmword_1BCE47880;
  *(v2 + 1408) = xmmword_1BCE47890;
  *(v2 + 1424) = xmmword_1BCE478A0;
  *(v2 + 1440) = xmmword_1BCE478B0;
  *(v2 + 1456) = xmmword_1BCE3C8C0;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v10[3];
  *(v2 + 1481) = *v10;
  *(v2 + 1488) = xmmword_1BCE478C0;
  *(v2 + 1504) = xmmword_1BCE478D0;
  *(v2 + 1520) = xmmword_1BCE478E0;
  *(v2 + 1536) = xmmword_1BCE478F0;
  *(v2 + 1552) = xmmword_1BCE47900;
  *(v2 + 1568) = xmmword_1BCE47910;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v11[3];
  *(v2 + 1601) = *v11;
  *(v2 + 1608) = 0x3FE8003FFFFFFFD3;
  *(v2 + 1616) = xmmword_1BCE47870;
  *(v2 + 1632) = xmmword_1BCE47880;
  *(v2 + 1648) = xmmword_1BCE47890;
  *(v2 + 1664) = xmmword_1BCE478A0;
  *(v2 + 1680) = xmmword_1BCE478B0;
  *(v2 + 1696) = xmmword_1BCE3C8C0;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v12[3];
  *(v2 + 1721) = *v12;
  *(v2 + 1728) = xmmword_1BCE47920;
  *(v2 + 1744) = xmmword_1BCE47930;
  *(v2 + 1760) = xmmword_1BCE47940;
  *(v2 + 1776) = xmmword_1BCE47950;
  *(v2 + 1792) = xmmword_1BCE47960;
  *(v2 + 1808) = xmmword_1BCE47970;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v13[3];
  *(v2 + 1841) = *v13;
  *(v2 + 1848) = 0x3FE4E7D7B425ED1CLL;
  *(v2 + 1856) = xmmword_1BCE47980;
  *(v2 + 1872) = xmmword_1BCE47990;
  *(v2 + 1888) = xmmword_1BCE479A0;
  *(v2 + 1904) = xmmword_1BCE479B0;
  *(v2 + 1920) = xmmword_1BCE479C0;
  *(v2 + 1936) = xmmword_1BCE3C8C0;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v14[3];
  *(v2 + 1961) = *v14;
  *(v2 + 1968) = xmmword_1BCE479D0;
  *(v2 + 1984) = xmmword_1BCE479E0;
  *(v2 + 2000) = xmmword_1BCE479F0;
  *(v2 + 2016) = xmmword_1BCE47A00;
  *(v2 + 2032) = xmmword_1BCE47A10;
  *(v2 + 2048) = xmmword_1BCE47A20;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v15[3];
  *(v2 + 2081) = *v15;
  *(v2 + 2088) = 0x3FE1DDD7B425ED1CLL;
  *(v2 + 2096) = xmmword_1BCE47A30;
  *(v2 + 2112) = xmmword_1BCE47A40;
  *(v2 + 2128) = xmmword_1BCE47A50;
  *(v2 + 2144) = xmmword_1BCE47A60;
  *(v2 + 2160) = xmmword_1BCE47A70;
  *(v2 + 2176) = xmmword_1BCE3C8C0;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v16[3];
  *(v2 + 2201) = *v16;
  *(v2 + 2208) = xmmword_1BCE476B0;
  *(v2 + 2224) = xmmword_1BCE476C0;
  *(v2 + 2240) = xmmword_1BCE476D0;
  *(v2 + 2256) = xmmword_1BCE476E0;
  *(v2 + 2272) = xmmword_1BCE476F0;
  *(v2 + 2288) = xmmword_1BCE47700;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v17[3];
  *(v2 + 2321) = *v17;
  *(v2 + 2328) = 0x3FD706C924924965;
  *(v2 + 2336) = xmmword_1BCE47A80;
  *(v2 + 2352) = xmmword_1BCE47A90;
  *(v2 + 2368) = xmmword_1BCE47AA0;
  *(v2 + 2384) = xmmword_1BCE47AB0;
  *(v2 + 2400) = xmmword_1BCE47AC0;
  *(v2 + 2416) = xmmword_1BCE3C8C0;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v18[3];
  *(v2 + 2441) = *v18;
  *(v2 + 2448) = xmmword_1BCE47600;
  *(v2 + 2464) = xmmword_1BCE47610;
  *(v2 + 2480) = xmmword_1BCE47620;
  *(v2 + 2496) = xmmword_1BCE47630;
  *(v2 + 2512) = xmmword_1BCE47640;
  *(v2 + 2528) = xmmword_1BCE47650;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v19[3];
  *(v2 + 2561) = *v19;
  *(v2 + 2568) = 0x3FC1653800000006;
  *(v2 + 2576) = xmmword_1BCE47AD0;
  *(v2 + 2592) = xmmword_1BCE47AE0;
  *(v2 + 2608) = xmmword_1BCE47AF0;
  *(v2 + 2624) = xmmword_1BCE47B00;
  *(v2 + 2640) = xmmword_1BCE47B10;
  *(v2 + 2656) = xmmword_1BCE3C8C0;
  *(v2 + 2672) = 0xC03E000000000000;
  *(v2 + 2680) = 1;
  *(v2 + 2684) = *&v20[3];
  *(v2 + 2681) = *v20;
  *(v2 + 2688) = xmmword_1BCE41A30;
  *(v2 + 2704) = xmmword_1BCE41A40;
  *(v2 + 2720) = xmmword_1BCE41A50;
  *(v2 + 2736) = xmmword_1BCE41A60;
  *(v2 + 2752) = xmmword_1BCE41A70;
  *(v2 + 2768) = xmmword_1BCE41A80;
  *(v2 + 2784) = xmmword_1BCE41A90;
  *(v2 + 2800) = 1;
  *(v2 + 2804) = *&v21[3];
  *(v2 + 2801) = *v21;
  *(v2 + 2808) = 0x3FB6BF00000000B4;
  *(v2 + 2816) = xmmword_1BCE420B0;
  *(v2 + 2832) = xmmword_1BCE420C0;
  *(v2 + 2848) = xmmword_1BCE420D0;
  *(v2 + 2864) = xmmword_1BCE420E0;
  *(v2 + 2880) = xmmword_1BCE420F0;
  *(v2 + 2896) = xmmword_1BCE3C8C0;
  *(v2 + 2912) = 0xC056800000000000;
  *(v2 + 2920) = 1;
  *(v2 + 2924) = *&v22[3];
  *(v2 + 2921) = *v22;
  *(v2 + 2928) = xmmword_1BCE41A30;
  *(v2 + 2944) = xmmword_1BCE41A40;
  *(v2 + 2960) = xmmword_1BCE41A50;
  *(v2 + 2976) = xmmword_1BCE41A60;
  *(v2 + 2992) = xmmword_1BCE41A70;
  *(v2 + 3008) = xmmword_1BCE41A80;
  *(v2 + 3024) = 0x3FE0000000000000;
  *a1 = 0x3FFB333333333333;
  a1[1] = v2;
  return result;
}

void sub_1BCA82F10(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA836C8();
  v4 = v3;
  sub_1BCA836C8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC396000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE47B20;
  *(a1 + 112) = 0x3E4CCCCD3E19999ALL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE46C90;
  *(a1 + 176) = 1164394496;
  *(a1 + 184) = 0x3E23D70A3DA3D70ALL;
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
  *(a1 + 1216) = xmmword_1BCE47B30;
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
  *(a1 + 1680) = xmmword_1BCE47B40;
  *(a1 + 1696) = xmmword_1BCE47B50;
  *(a1 + 1712) = xmmword_1BCE46CB0;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47AFC800;
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
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3DE147AE3D23D70ALL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4073333340400000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F666666;
  *(a1 + 2224) = xmmword_1BCE46CD0;
  *(a1 + 2240) = xmmword_1BCE47B60;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCA836C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE46CF0;
  *(v0 + 64) = 0x420C0000443B8000;
  *(v0 + 80) = xmmword_1BCE403D0;
  *(v0 + 96) = xmmword_1BCE403E0;
  *(v0 + 112) = xmmword_1BCE403F0;
  *(v0 + 128) = xmmword_1BCE40400;
  *(v0 + 4912) = xmmword_1BCE46F80;
  *(v0 + 6128) = xmmword_1BCE46F80;
  *(v0 + 5040) = xmmword_1BCE46F90;
  *(v0 + 6256) = xmmword_1BCE46F90;
  *(v0 + 5056) = xmmword_1BCE46FA0;
  *(v0 + 6272) = xmmword_1BCE46FA0;
  *(v0 + 5360) = xmmword_1BCE46FB0;
  *(v0 + 6576) = xmmword_1BCE46FB0;
  *(v0 + 5376) = xmmword_1BCE46FC0;
  *(v0 + 6592) = xmmword_1BCE46FC0;
  *(v0 + 5392) = xmmword_1BCE46FD0;
  *(v0 + 6608) = xmmword_1BCE46FD0;
  *(v0 + 5408) = xmmword_1BCE46FE0;
  *(v0 + 6624) = xmmword_1BCE46FE0;
  *(v0 + 5424) = xmmword_1BCE46FF0;
  *(v0 + 6640) = xmmword_1BCE46FF0;
  *(v0 + 5440) = xmmword_1BCE41640;
  *(v0 + 6656) = xmmword_1BCE41640;
  *(v0 + 5904) = xmmword_1BCE47000;
  *(v0 + 7120) = xmmword_1BCE47000;
  *(v0 + 5920) = xmmword_1BCE3DA70;
  *(v0 + 7136) = xmmword_1BCE3DA70;
  *(v0 + 3696) = xmmword_1BCE46EC0;
  *(v0 + 7344) = xmmword_1BCE46EC0;
  *(v0 + 3712) = 1153957888;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 7360) = 1153957888;
  *(v0 + 3728) = xmmword_1BCE40840;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 7376) = xmmword_1BCE40840;
  *(v0 + 3744) = xmmword_1BCE40850;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 7392) = xmmword_1BCE40850;
  *(v0 + 3760) = xmmword_1BCE40860;
  *(v0 + 4976) = xmmword_1BCE40860;
  *(v0 + 6192) = xmmword_1BCE40860;
  *(v0 + 7408) = xmmword_1BCE40860;
  *(v0 + 3776) = xmmword_1BCE40870;
  *(v0 + 4992) = xmmword_1BCE40870;
  *(v0 + 6208) = xmmword_1BCE40870;
  *(v0 + 7424) = xmmword_1BCE40870;
  *(v0 + 3824) = xmmword_1BCE46ED0;
  *(v0 + 7472) = xmmword_1BCE46ED0;
  *(v0 + 3840) = xmmword_1BCE46EE0;
  *(v0 + 7488) = xmmword_1BCE46EE0;
  *(v0 + 3856) = xmmword_1BCE47BD0;
  *(v0 + 5072) = xmmword_1BCE47BD0;
  *(v0 + 6288) = xmmword_1BCE47BD0;
  *(v0 + 7504) = xmmword_1BCE47BD0;
  *(v0 + 3872) = xmmword_1BCE46700;
  *(v0 + 5088) = xmmword_1BCE46700;
  *(v0 + 6304) = xmmword_1BCE46700;
  *(v0 + 7520) = xmmword_1BCE46700;
  *(v0 + 3984) = xmmword_1BCE40760;
  *(v0 + 5200) = xmmword_1BCE40760;
  *(v0 + 6416) = xmmword_1BCE40760;
  *(v0 + 7632) = xmmword_1BCE40760;
  *(v0 + 4000) = xmmword_1BCE40770;
  *(v0 + 5216) = xmmword_1BCE40770;
  *(v0 + 6432) = xmmword_1BCE40770;
  *(v0 + 7648) = xmmword_1BCE40770;
  *(v0 + 4016) = xmmword_1BCE47BE0;
  *(v0 + 5232) = xmmword_1BCE47BE0;
  *(v0 + 6448) = xmmword_1BCE47BE0;
  *(v0 + 7664) = xmmword_1BCE47BE0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 7696) = xmmword_1BCE3E9D0;
  *(v0 + 4144) = xmmword_1BCE46EF0;
  *(v0 + 7792) = xmmword_1BCE46EF0;
  *(v0 + 4160) = xmmword_1BCE46F00;
  *(v0 + 7808) = xmmword_1BCE46F00;
  *(v0 + 4176) = xmmword_1BCE46F10;
  *(v0 + 7824) = xmmword_1BCE46F10;
  *(v0 + 4192) = xmmword_1BCE46F20;
  *(v0 + 7840) = xmmword_1BCE46F20;
  *(v0 + 4208) = xmmword_1BCE46F30;
  *(v0 + 7856) = xmmword_1BCE46F30;
  *(v0 + 4224) = xmmword_1BCE46F40;
  *(v0 + 7872) = xmmword_1BCE46F40;
  *(v0 + 4240) = xmmword_1BCE46910;
  *(v0 + 5456) = xmmword_1BCE46910;
  *(v0 + 6672) = xmmword_1BCE46910;
  *(v0 + 7888) = xmmword_1BCE46910;
  *(v0 + 4256) = xmmword_1BCE46F50;
  *(v0 + 5472) = xmmword_1BCE46F50;
  *(v0 + 6688) = xmmword_1BCE46F50;
  *(v0 + 7904) = xmmword_1BCE46F50;
  *(v0 + 4656) = xmmword_1BCE46F60;
  *(v0 + 5872) = xmmword_1BCE46F60;
  *(v0 + 7088) = xmmword_1BCE46F60;
  *(v0 + 8304) = xmmword_1BCE46F60;
  *(v0 + 4672) = xmmword_1BCE3F6B0;
  *(v0 + 5888) = xmmword_1BCE3F6B0;
  *(v0 + 7104) = xmmword_1BCE3F6B0;
  *(v0 + 8320) = xmmword_1BCE3F6B0;
  *(v0 + 4688) = xmmword_1BCE46F70;
  *(v0 + 8336) = xmmword_1BCE46F70;
  *(v0 + 4704) = xmmword_1BCE3EE20;
  *(v0 + 8352) = xmmword_1BCE3EE20;
  *(v0 + 2480) = xmmword_1BCE46E00;
  *(v0 + 8560) = xmmword_1BCE46E00;
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
  *(v0 + 2608) = xmmword_1BCE46E10;
  *(v0 + 8688) = xmmword_1BCE46E10;
  *(v0 + 2624) = xmmword_1BCE46E20;
  *(v0 + 8704) = xmmword_1BCE46E20;
  *(v0 + 2640) = xmmword_1BCE47BA0;
  *(v0 + 8720) = xmmword_1BCE47BA0;
  *(v0 + 2656) = xmmword_1BCE47BB0;
  *(v0 + 8736) = xmmword_1BCE47BB0;
  *(v0 + 2800) = xmmword_1BCE47BC0;
  *(v0 + 8880) = xmmword_1BCE47BC0;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE46E30;
  *(v0 + 9008) = xmmword_1BCE46E30;
  *(v0 + 2944) = xmmword_1BCE46E40;
  *(v0 + 9024) = xmmword_1BCE46E40;
  *(v0 + 2960) = xmmword_1BCE46E50;
  *(v0 + 9040) = xmmword_1BCE46E50;
  *(v0 + 2976) = xmmword_1BCE46E60;
  *(v0 + 9056) = xmmword_1BCE46E60;
  *(v0 + 2992) = xmmword_1BCE46E70;
  *(v0 + 9072) = xmmword_1BCE46E70;
  *(v0 + 3008) = xmmword_1BCE42F70;
  *(v0 + 9088) = xmmword_1BCE42F70;
  *(v0 + 3024) = xmmword_1BCE46E80;
  *(v0 + 9104) = xmmword_1BCE46E80;
  *(v0 + 3040) = xmmword_1BCE46740;
  *(v0 + 9120) = xmmword_1BCE46740;
  *(v0 + 3440) = xmmword_1BCE46E90;
  *(v0 + 9520) = xmmword_1BCE46E90;
  *(v0 + 3456) = xmmword_1BCE46EA0;
  *(v0 + 9536) = xmmword_1BCE46EA0;
  *(v0 + 3472) = xmmword_1BCE46810;
  *(v0 + 9552) = xmmword_1BCE46810;
  *(v0 + 3488) = xmmword_1BCE46EB0;
  *(v0 + 9568) = xmmword_1BCE46EB0;
  *(v0 + 1264) = xmmword_1BCE3CE40;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 1744) = xmmword_1BCE46DE0;
  *(v0 + 10256) = xmmword_1BCE46DE0;
  *(v0 + 1760) = xmmword_1BCE46DF0;
  *(v0 + 10272) = xmmword_1BCE46DF0;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 10992) = xmmword_1BCE46CF0;
  *(v0 + 1280) = 0x420C0000443B8000;
  *(v0 + 9792) = 0x420C0000443B8000;
  *(v0 + 11008) = 0x420C0000443B8000;
  *(v0 + 176) = xmmword_1BCE46D00;
  *(v0 + 192) = xmmword_1BCE46D10;
  *(v0 + 1296) = xmmword_1BCE403D0;
  *(v0 + 9808) = xmmword_1BCE403D0;
  *(v0 + 11024) = xmmword_1BCE403D0;
  *(v0 + 1312) = xmmword_1BCE403E0;
  *(v0 + 9824) = xmmword_1BCE403E0;
  *(v0 + 11040) = xmmword_1BCE403E0;
  *(v0 + 208) = xmmword_1BCE47B70;
  *(v0 + 224) = xmmword_1BCE47B80;
  *(v0 + 1328) = xmmword_1BCE403F0;
  *(v0 + 9840) = xmmword_1BCE403F0;
  *(v0 + 11056) = xmmword_1BCE403F0;
  *(v0 + 1344) = xmmword_1BCE40400;
  *(v0 + 9856) = xmmword_1BCE40400;
  *(v0 + 11072) = xmmword_1BCE40400;
  *(v0 + 240) = xmmword_1BCE3E780;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1360) = xmmword_1BCE3EEF0;
  *(v0 + 2576) = xmmword_1BCE3EEF0;
  *(v0 + 3792) = xmmword_1BCE3EEF0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 7440) = xmmword_1BCE3EEF0;
  *(v0 + 8656) = xmmword_1BCE3EEF0;
  *(v0 + 9872) = xmmword_1BCE3EEF0;
  *(v0 + 11088) = xmmword_1BCE3EEF0;
  *(v0 + 1376) = xmmword_1BCE3EF00;
  *(v0 + 2592) = xmmword_1BCE3EF00;
  *(v0 + 3808) = xmmword_1BCE3EF00;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 7456) = xmmword_1BCE3EF00;
  *(v0 + 8672) = xmmword_1BCE3EF00;
  *(v0 + 9888) = xmmword_1BCE3EF00;
  *(v0 + 11104) = xmmword_1BCE3EF00;
  *(v0 + 272) = xmmword_1BCE467D0;
  *(v0 + 288) = xmmword_1BCE467E0;
  *(v0 + 1392) = xmmword_1BCE46D00;
  *(v0 + 9904) = xmmword_1BCE46D00;
  *(v0 + 11120) = xmmword_1BCE46D00;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1408) = xmmword_1BCE46D10;
  *(v0 + 9920) = xmmword_1BCE46D10;
  *(v0 + 11136) = xmmword_1BCE46D10;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 1424) = xmmword_1BCE47B70;
  *(v0 + 9936) = xmmword_1BCE47B70;
  *(v0 + 11152) = xmmword_1BCE47B70;
  *(v0 + 1440) = xmmword_1BCE47B80;
  *(v0 + 9952) = xmmword_1BCE47B80;
  *(v0 + 11168) = xmmword_1BCE47B80;
  *(v0 + 1456) = xmmword_1BCE3E780;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 7536) = xmmword_1BCE3E780;
  *(v0 + 8752) = xmmword_1BCE3E780;
  *(v0 + 9968) = xmmword_1BCE3E780;
  *(v0 + 11184) = xmmword_1BCE3E780;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  *(v0 + 1488) = xmmword_1BCE467D0;
  *(v0 + 2704) = xmmword_1BCE467D0;
  *(v0 + 3920) = xmmword_1BCE467D0;
  *(v0 + 5136) = xmmword_1BCE467D0;
  *(v0 + 6352) = xmmword_1BCE467D0;
  *(v0 + 8368) = result;
  *(v0 + 7568) = xmmword_1BCE467D0;
  *(v0 + 7984) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = result;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = result;
  *(v0 + 8784) = xmmword_1BCE467D0;
  *(v0 + 10000) = xmmword_1BCE467D0;
  *(v0 + 11216) = xmmword_1BCE467D0;
  *(v0 + 1504) = xmmword_1BCE467E0;
  *(v0 + 7920) = result;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 2720) = xmmword_1BCE467E0;
  *(v0 + 3936) = xmmword_1BCE467E0;
  *(v0 + 5152) = xmmword_1BCE467E0;
  *(v0 + 6368) = xmmword_1BCE467E0;
  *(v0 + 7584) = xmmword_1BCE467E0;
  *(v0 + 8800) = xmmword_1BCE467E0;
  *(v0 + 10016) = xmmword_1BCE467E0;
  *(v0 + 11232) = xmmword_1BCE467E0;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = result;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7688) = 0x3FF0000000000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 1069547520;
  *(v0 + 7744) = 0u;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 7600) = result;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 368) = xmmword_1BCE47B90;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 7368) = 1061997773;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 7337) = *v12;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v12[3];
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 1584) = xmmword_1BCE47B90;
  *(v0 + 7152) = result;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = result;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 10096) = xmmword_1BCE47B90;
  *(v0 + 11312) = xmmword_1BCE47B90;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7056) = result;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
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
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 6704) = result;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 6504) = 1069547520;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 6544) = result;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6384) = result;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 496) = xmmword_1BCE46D20;
  *(v0 + 512) = xmmword_1BCE46D30;
  *(v0 + 1712) = xmmword_1BCE46D20;
  *(v0 + 10224) = xmmword_1BCE46D20;
  *(v0 + 11440) = xmmword_1BCE46D20;
  *(v0 + 1728) = xmmword_1BCE46D30;
  *(v0 + 10240) = xmmword_1BCE46D30;
  *(v0 + 11456) = xmmword_1BCE46D30;
  *(v0 + 528) = xmmword_1BCE46D40;
  *(v0 + 544) = xmmword_1BCE46D50;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v11;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 11472) = xmmword_1BCE46D40;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 11488) = xmmword_1BCE46D50;
  *(v0 + 5936) = result;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = result;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 560) = xmmword_1BCE46D60;
  *(v0 + 576) = xmmword_1BCE46D70;
  *(v0 + 5808) = result;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = result;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 1776) = xmmword_1BCE46D60;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = result;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 10288) = xmmword_1BCE46D60;
  *(v0 + 11504) = xmmword_1BCE46D60;
  *(v0 + 5488) = result;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = result;
  *(v0 + 1792) = xmmword_1BCE46D70;
  *(v0 + 10304) = xmmword_1BCE46D70;
  *(v0 + 11520) = xmmword_1BCE46D70;
  *(v0 + 1808) = xmmword_1BCE46D80;
  *(v0 + 10320) = xmmword_1BCE46D80;
  *(v0 + 11536) = xmmword_1BCE46D80;
  *(v0 + 592) = xmmword_1BCE46D80;
  *(v0 + 608) = xmmword_1BCE46D90;
  *(v0 + 5328) = result;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 1824) = xmmword_1BCE46D90;
  *(v0 + 10336) = xmmword_1BCE46D90;
  *(v0 + 11552) = xmmword_1BCE46D90;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1069547520;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 5168) = result;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
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
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 4752) = result;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE46DA0;
  *(v0 + 4720) = result;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = result;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 10736) = xmmword_1BCE46DA0;
  *(v0 + 11952) = xmmword_1BCE46DA0;
  *(v0 + 1008) = xmmword_1BCE46DA0;
  *(v0 + 1024) = xmmword_1BCE46DB0;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 2240) = xmmword_1BCE46DB0;
  *(v0 + 10752) = xmmword_1BCE46DB0;
  *(v0 + 11968) = xmmword_1BCE46DB0;
  *(v0 + 4272) = result;
  *(v0 + 1040) = xmmword_1BCE46DC0;
  *(v0 + 2256) = xmmword_1BCE46DC0;
  *(v0 + 10768) = xmmword_1BCE46DC0;
  *(v0 + 11984) = xmmword_1BCE46DC0;
  *(v0 + 1056) = xmmword_1BCE46DD0;
  *(v0 + 2272) = xmmword_1BCE46DD0;
  *(v0 + 4072) = 1069547520;
  *(v0 + 4112) = result;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 10784) = xmmword_1BCE46DD0;
  *(v0 + 12000) = xmmword_1BCE46DD0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3952) = result;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
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
  *(v0 + 3632) = result;
  *(v0 + 3689) = *v9;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = result;
  *(v0 + 3536) = result;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3088) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3248) = result;
  *(v0 + 3152) = result;
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
  *(v0 + 3056) = result;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2896) = result;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 304) = result;
  *(v0 + 464) = result;
  *(v0 + 624) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 2736) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 400) = result;
  *(v0 + 424) = 1065353216;
  *(v0 + 656) = result;
  *(v0 + 752) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 2400) = result;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1056964608;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 2320) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 2288) = result;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2192) = result;
  *(v0 + 1216) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2032) = result;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v7;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1288) = 1053609165;
  *(v0 + 1520) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
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
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1053609165;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v13;
  *(v0 + 8556) = *&v13[3];
  *(v0 + 8584) = 1056964608;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1065353216;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
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

uint64_t UltravioletComplicationViewModel.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UltravioletComplicationViewModel() + 20);
  v4 = sub_1BCE19470();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UltravioletComplicationViewModel()
{
  result = qword_1EDA17908;
  if (!qword_1EDA17908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UltravioletComplicationViewModel.current.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UltravioletComplicationViewModel() + 24);
  v4 = sub_1BCE1A080();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UltravioletComplicationViewModel.daily.getter()
{
  type metadata accessor for UltravioletComplicationViewModel();
}

uint64_t UltravioletComplicationViewModel.hourly.getter()
{
  type metadata accessor for UltravioletComplicationViewModel();
}

uint64_t UltravioletComplicationViewModel.init(localWeather:timeZone:current:daily:hourly:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1;
  v10 = type metadata accessor for UltravioletComplicationViewModel();
  v11 = v10[5];
  v12 = sub_1BCE19470();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  (*(v13 + 16))(&a6[v11], a2, v12);
  v15 = v10[6];
  v16 = sub_1BCE1A080();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v19 = &a6[v15];
  v20 = a3;
  (*(v17 + 16))(v19, a3, v16);
  if (!a4)
  {
    a4 = sub_1BCD17C08();
  }

  *&a6[v10[7]] = a4;
  v21 = a5;
  if (!a5)
  {
    v21 = sub_1BCCE0F9C();
  }

  (*(v18 + 8))(v20, v16);
  result = (*(v14 + 8))(a2, v12);
  *&a6[v10[8]] = v21;
  return result;
}

void sub_1BCA84AFC()
{
  sub_1BCE19470();
  if (v0 <= 0x3F)
  {
    sub_1BCE1A080();
    if (v1 <= 0x3F)
    {
      sub_1BCA84BF8(319, &qword_1EDA16CD8, type metadata accessor for UltravioletComplicationDailyViewModel);
      if (v2 <= 0x3F)
      {
        sub_1BCA84BF8(319, &qword_1EDA16CD0, type metadata accessor for UltravioletComplicationHourlyViewModel);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BCA84BF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BCE1D5D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BCA84C4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9WeatherUI41CurrentObservationsHeaderViewStyleFactory_sizeCategory;
  v4 = sub_1BCE1BDE0();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1 + v3, a1, v4);
  v6 = sub_1BCA84D54();
  v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

  (*(v5 + 8))(a1, v4);
  *(v1 + OBJC_IVAR____TtC9WeatherUI41CurrentObservationsHeaderViewStyleFactory_footnoteUIFont) = v7;
  return v1;
}

id sub_1BCA84D54()
{
  v0 = sub_1BCE1BDD0();
  v1 = objc_opt_self();
  v2 = v1;
  v3 = *MEMORY[0x1E69DDD28];
  if (v0)
  {
    v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:v4];

    return v5;
  }

  else
  {
    v7 = [v1 preferredFontDescriptorWithTextStyle_];

    return v7;
  }
}

id sub_1BCA84E3C@<X0>(void *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = *MEMORY[0x1E69DB988];
  v8 = *(v1 + OBJC_IVAR____TtC9WeatherUI41CurrentObservationsHeaderViewStyleFactory_footnoteUIFont);
  v6 = [v3 systemFontOfSize:43.0 weight:v5];
  *a1 = v4;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = v6;
  a1[4] = v8;

  return v8;
}

uint64_t sub_1BCA84F10()
{
  v1 = OBJC_IVAR____TtC9WeatherUI41CurrentObservationsHeaderViewStyleFactory_sizeCategory;
  v2 = sub_1BCE1BDE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CurrentObservationsHeaderViewStyleFactory()
{
  result = qword_1EBD084E0;
  if (!qword_1EBD084E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCA85010()
{
  result = sub_1BCE1BDE0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BCA850AC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA857EC();
  v4 = v3;
  sub_1BCA87720();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE43040;
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
  *(a1 + 432) = xmmword_1BCE3D860;
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
  *(a1 + 712) = 0x404000003FC00000;
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
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x404000003FC00000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000003FC00000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
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
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE47CB0;
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
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1645) = 256;
  *(v2 + 211) = 0;
  *(a1 + 1651) = 1;
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
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE47CC0;
  *(a1 + 1844) = 1050253722;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1106247680;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3F19999A40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE47CD0;
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

__n128 sub_1BCA857EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = result;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE47CE0;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
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
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE47CE0;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2480) = xmmword_1BCE3DC90;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3DEC0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE42C40;
  v6 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v6;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0;
  *(v0 + 4016) = xmmword_1BCE47CF0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = result;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3744) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3DED0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DEE0;
  *(v0 + 7552) = result;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3DF00;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 8848) = xmmword_1BCE3DB40;
  *(v0 + 9616) = xmmword_1BCE47D00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11344) = xmmword_1BCE3DF20;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 7376) = xmmword_1BCE3DB30;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3DF10;
  *(v0 + 10128) = xmmword_1BCE3DF10;
  *(v0 + 12560) = xmmword_1BCE3DF10;
  *(v0 + 9600) = xmmword_1BCE3D4B0;
  *(v0 + 13248) = xmmword_1BCE3D4B0;
  *(v0 + 13264) = xmmword_1BCE47D10;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DF30;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 13536) = xmmword_1BCE3DEF0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3DF40;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DF50;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6121) = *v12;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF5F62E0000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v13;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3DF60;
  *(v0 + 14704) = xmmword_1BCE3DF70;
  *(v0 + 14720) = xmmword_1BCE3DF80;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3DF90;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3DFA0;
  *(v0 + 15904) = xmmword_1BCE3DFB0;
  *(v0 + 15920) = xmmword_1BCE3DFC0;
  *(v0 + 15936) = xmmword_1BCE3DFD0;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 12528) = xmmword_1BCE3FD30;
  *(v0 + 13744) = xmmword_1BCE3FD30;
  *(v0 + 14960) = xmmword_1BCE3FD30;
  *(v0 + 16176) = xmmword_1BCE3FD30;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3DFE0;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 17392) = xmmword_1BCE47CF0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3DFF0;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3DCA0;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3DCC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  *(v0 + 18608) = xmmword_1BCE42C40;
  *(v0 + 18624) = v6;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19328) = xmmword_1BCE3E580;
  *(v0 + 19360) = xmmword_1BCE3E580;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE47CE0;
  *(v0 + 21040) = xmmword_1BCE47CE0;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 8144) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 8160) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 17416) = 0x3FEED417A0000000;
  *(v0 + 17440) = 0;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 17200) = result;
  *(v0 + 17216) = result;
  *(v0 + 17232) = result;
  *(v0 + 17264) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v21;
  *(v0 + 17068) = *&v21[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8552) = 0;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8553) = *v14;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 16200) = 0x3FEDCF06E0000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 16112) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 16000) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 15984) = result;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FE64FE980000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v20;
  *(v0 + 15852) = *&v20[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8992) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 9008) = result;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 14984) = 0x3FED305D00000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 14896) = result;
  *(v0 + 9136) = result;
  *(v0 + 14768) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 9152) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 14633) = *v19;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v19[3];
  *(v0 + 9264) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 14432) = result;
  *(v0 + 14512) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 9344) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 13768) = 0x3FEC91B340000000;
  *(v0 + 9424) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v18;
  *(v0 + 13420) = *&v18[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9664) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 12552) = 0x3FE64FE980000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9769) = *v15;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 9800) = 1061997773;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v17;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v17[3];
  *(v0 + 10000) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FE64FE980000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 11984) = result;
  *(v0 + 12000) = result;
  *(v0 + 11888) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11504) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11408) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 10152) = 0;
  *(v0 + 11336) = 0x3FE64FE980000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 11296) = result;
  *(v0 + 10240) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10448) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18416) = result;
  *(v0 + 18432) = result;
  *(v0 + 18448) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19632) = result;
  *(v0 + 19648) = result;
  *(v0 + 19664) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20848) = result;
  *(v0 + 20864) = result;
  *(v0 + 20880) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEEBEC600000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v22;
  *(v0 + 18284) = *&v22[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v23;
  *(v0 + 19500) = *&v23[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v24;
  *(v0 + 20716) = *&v24[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCA87720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043C80000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = _Q0;
  *(v0 + 192) = _Q0;
  *(v0 + 208) = _Q0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = _Q0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE47CE0;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
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
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043C80000;
  *(v0 + 1288) = 1040242952;
  v11 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 1296) = v11;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = _Q0;
  *(v0 + 1408) = _Q0;
  *(v0 + 1424) = _Q0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = _Q0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE47CE0;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
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
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = _Q0;
  *(v0 + 2624) = _Q0;
  *(v0 + 2640) = _Q0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3CBC0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v10 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 2816) = v10;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FEB439580000000;
  *(v0 + 3616) = xmmword_1BCE3DCF0;
  *(v0 + 3648) = xmmword_1BCE3DD10;
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4072) = 1065353216;
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
  *(v0 + 4704) = _Q0;
  *(v0 + 4905) = *v15;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4864) = xmmword_1BCE3DD30;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3DD20;
  *(v0 + 4848) = xmmword_1BCE3DD00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4016) = xmmword_1BCE47CF0;
  *(v0 + 4048) = _Q0;
  *(v0 + 4064) = 0;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3632) = xmmword_1BCE3DD00;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3824) = _Q0;
  *(v0 + 3840) = _Q0;
  *(v0 + 3856) = _Q0;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 3720) = 1061997773;
  *(v0 + 3744) = _Q0;
  *(v0 + 6048) = xmmword_1BCE3DD20;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3DED0;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3DD40;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3DF00;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3DD50;
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
  *(v0 + 11344) = xmmword_1BCE3DF20;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  v6 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v6;
  *(v0 + 8592) = v6;
  *(v0 + 9808) = v6;
  *(v0 + 11024) = v6;
  *(v0 + 12240) = v6;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3DF10;
  *(v0 + 10128) = xmmword_1BCE3DF10;
  *(v0 + 12560) = xmmword_1BCE3DF10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v0 + 10912) = _Q1;
  *(v0 + 12128) = _Q1;
  *(v0 + 13344) = _Q1;
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
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3DF40;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3DD60;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2472) = 0;
  *(v0 + 2496) = 0x4396000043FA0000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2473) = *v13;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2272) = _Q0;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = _Q0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = xmmword_1BCE3FD30;
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
  *(v0 + 6040) = 0x3FE7333340000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v16;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF5F62E0000000;
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
  *(v0 + 7256) = 0x3FE369D020000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v17;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3DF90;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3DD70;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 12528) = xmmword_1BCE3FD30;
  *(v0 + 13744) = xmmword_1BCE3FD30;
  *(v0 + 14960) = xmmword_1BCE3FD30;
  *(v0 + 16176) = xmmword_1BCE3FD30;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3DFE0;
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
  *(v0 + 16992) = xmmword_1BCE3DD80;
  *(v0 + 17008) = xmmword_1BCE3DD90;
  *(v0 + 17024) = xmmword_1BCE3DDA0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE47CF0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3DFF0;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1;
  *(v0 + 18208) = xmmword_1BCE3DDB0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 18224) = xmmword_1BCE3D4E0;
  *(v0 + 18240) = xmmword_1BCE3DDC0;
  *(v0 + 18304) = 0x4396000043FA0000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE42C40;
  *(v0 + 18624) = v10;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3DCF0;
  *(v0 + 19440) = xmmword_1BCE3DD00;
  *(v0 + 19456) = xmmword_1BCE3DDE0;
  *(v0 + 19536) = v11;
  *(v0 + 19552) = xmmword_1BCE3D340;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043C80000;
  *(v0 + 20736) = 0x432A000043C80000;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE47CE0;
  *(v0 + 21040) = xmmword_1BCE47CE0;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 17416) = 0x3FEED417A0000000;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 17200) = _Q0;
  *(v0 + 17216) = _Q0;
  *(v0 + 17232) = _Q0;
  *(v0 + 17264) = _Q0;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 17120) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v25;
  *(v0 + 17068) = *&v25[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 16200) = 0x3FEDCF06E0000000;
  *(v0 + 16224) = 0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16000) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 15849) = *v24;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8208) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v24[3];
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 14984) = 0x3FED305D00000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v18;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 14848) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8584) = 1061158912;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 14633) = *v23;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v23[3];
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FE64FE980000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 14432) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 8936) = 0;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13768) = 0x3FEC91B340000000;
  *(v0 + 9008) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 13417) = *v22;
  *(v0 + 13448) = 1060320051;
  *(v0 + 9168) = _Q0;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v22[3];
  *(v0 + 9184) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 12552) = 0x3FE64FE980000000;
  *(v0 + 9376) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 12201) = *v21;
  *(v0 + 12204) = *&v21[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 12200) = 1;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
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
  *(v0 + 9664) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 11336) = 0x3FE64FE980000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = _Q0;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403E000000000000;
  *(v0 + 9768) = 0;
  *(v0 + 9769) = *v19;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9800) = 1061997773;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10976) = 0x403E000000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v20;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10120) = 0x3FE64FE980000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10224) = _Q0;
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
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18416) = _Q0;
  *(v0 + 18432) = _Q0;
  *(v0 + 18448) = _Q0;
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
  *(v0 + 19632) = _Q0;
  *(v0 + 19648) = _Q0;
  *(v0 + 19664) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19776) = _Q0;
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
  *(v0 + 20848) = _Q0;
  *(v0 + 20864) = _Q0;
  *(v0 + 20880) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 20992) = _Q0;
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
  *(v0 + 7688) = 0x3FEEBEC600000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v26;
  *(v0 + 18284) = *&v26[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FEAE14760000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v27;
  *(v0 + 19500) = *&v27[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v28;
  *(v0 + 20716) = *&v28[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t AirQualityComplicationViewModel.timeZone.getter()
{
  type metadata accessor for AirQualityComplicationViewModel();
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t type metadata accessor for AirQualityComplicationViewModel()
{
  result = qword_1EDA17D60;
  if (!qword_1EDA17D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AirQualityComplicationViewModel.scale.getter()
{
  type metadata accessor for AirQualityComplicationViewModel();
  sub_1BCE19CB0();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t AirQualityComplicationViewModel.currentScaleCategory.getter()
{
  type metadata accessor for AirQualityComplicationViewModel();
  sub_1BCE19EA0();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t AirQualityComplicationViewModel.init(localWeather:timeZone:observation:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for AirQualityComplicationViewModel();
  v8 = *(v7 + 20);
  v9 = sub_1BCE19470();
  OUTLINED_FUNCTION_1();
  v14 = v10;
  (*(v10 + 16))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = sub_1BCE19A70();
  sub_1BCE19A80();
  sub_1BCE19A50();
  sub_1BCE19A90();
  OUTLINED_FUNCTION_4();
  (*(v11 + 8))(a3);
  v12 = *(v14 + 8);

  return v12(a2, v9);
}

uint64_t AirQualityComplicationViewModel.init(localWeather:timeZone:index:scale:currentScaleCategory:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for AirQualityComplicationViewModel();
  v12 = v11[5];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v13 + 32))(&a6[v12], a2);
  *&a6[v11[6]] = a3;
  v14 = v11[7];
  sub_1BCE19CB0();
  OUTLINED_FUNCTION_4();
  (*(v15 + 32))(&a6[v14], a4);
  v16 = v11[8];
  sub_1BCE19EA0();
  OUTLINED_FUNCTION_4();
  v18 = *(v17 + 32);

  return v18(&a6[v16], a5);
}

uint64_t sub_1BCA89C5C()
{
  result = sub_1BCE19470();
  if (v1 <= 0x3F)
  {
    result = sub_1BCE19CB0();
    if (v2 <= 0x3F)
    {
      result = sub_1BCE19EA0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BCA89D10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1BCA89D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1BCA89DC8()
{
  v23 = sub_1BCE19EA0();
  v0 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v2 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AirQualityComplicationViewModel();
  v3 = sub_1BCE19C50();
  v4 = *(v3 + 16);
  if (v4)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BCA152A8(0, v4, 0);
    v5 = v24;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v20 = *(v6 + 56);
    v21 = v7;
    v18[1] = v3;
    v19 = (v6 - 8);
    v22 = v6;
    do
    {
      v9 = v23;
      v21(v2, v8, v23);
      v10 = sub_1BCE19E90();
      v11 = sub_1BCE19E70();
      v13 = v12;
      (*v19)(v2, v9);
      v24 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BCA152A8((v14 > 1), v15 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v15 + 1;
      v16 = (v5 + 24 * v15);
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v13;
      v8 += v20;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void sub_1BCA89FC4(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA1B270();
  v4 = v3;
  sub_1BCA1B270();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE3F420;
  *(a1 + 112) = 0x3EA3D70A3E23D70ALL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE3FF50;
  *(a1 + 176) = 1148190720;
  *(a1 + 184) = 0x3E2E147B3DF5C28FLL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3FF60;
  *(a1 + 240) = 0x41C8000041100000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x3E99999A3DE147AELL;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x43FA000042200000;
  *(a1 + 328) = 0x3E6B851F3DCCCCCDLL;
  *(a1 + 336) = 0x3DCCCCCD3F800000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3FF70;
  *(a1 + 448) = 0x3E8000003DCCCCCDLL;
  *(a1 + 464) = xmmword_1BCE3F460;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x4396000040400000;
  *(a1 + 504) = 1119748096;
  *(a1 + 512) = 0x3DF5C28F3DA3D70ALL;
  *(a1 + 528) = xmmword_1BCE3F470;
  *(a1 + 544) = xmmword_1BCE3F480;
  *(a1 + 560) = 0x42B4000044BB8000;
  *(a1 + 568) = 0x3DCCCCCD3D3851ECLL;
  *(a1 + 576) = xmmword_1BCE3C7C0;
  *(a1 + 592) = xmmword_1BCE3F490;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x41A0000041700000;
  *(a1 + 728) = 1091567616;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE47DB0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x4190000041700000;
  *(a1 + 856) = 1090519040;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x4130000040E00000;
  *(a1 + 984) = 1086324736;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE47DC0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004C202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4C656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F3333333F19999ALL;
  *(a1 + 1104) = 0x4063D70A40400000;
  *(a1 + 1112) = 1088421888;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE47DD0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE47DE0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400C28F63F88F5C2;
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
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1638) = 0;
  *(a1 + 1630) = 0;
  *(v2 + 206) = 0x1010100000001;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 1;
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
  *(a1 + 1760) = 9;
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
  *(a1 + 1968) = xmmword_1BCE3FFB0;
  __asm { FMOV            V2.2S, #1.0 }

  *(a1 + 1984) = _D2;
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
  *(a1 + 2120) = 0x3E0F5C293DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4021EB8540000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1060387160;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}