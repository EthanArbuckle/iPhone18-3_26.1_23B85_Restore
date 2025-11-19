uint64_t sub_1BCB21C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCB21CF8(uint64_t a1)
{
  v2 = type metadata accessor for ConditionViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCB21D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCB21E44()
{
  result = sub_1BCE19090();
  if (v1 <= 0x3F)
  {
    result = sub_1BCE199D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConditionViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConditionViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCB2204C()
{
  result = qword_1EBD095D0;
  if (!qword_1EBD095D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD095D0);
  }

  return result;
}

unint64_t sub_1BCB220A4()
{
  result = qword_1EBD095D8;
  if (!qword_1EBD095D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD095D8);
  }

  return result;
}

unint64_t sub_1BCB220FC()
{
  result = qword_1EBD095E0;
  if (!qword_1EBD095E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD095E0);
  }

  return result;
}

__n128 sub_1BCB22150@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCB22878();
  sub_1BCB248F8();
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
  *(a1 + 304) = result;
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
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
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
  *(a1 + 816) = result;
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
  *(a1 + 944) = result;
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
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
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
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3E550;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
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
  *(a1 + 1650) = 1;
  *(a1 + 1651) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v11;
  *(a1 + 1659) = v12;
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
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
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
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE43060;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v10;
  return result;
}

uint64_t sub_1BCB22878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  result = swift_allocObject();
  *(result + 16) = xmmword_1BCE3C820;
  *(result + 32) = 0xC056800000000000;
  *(result + 40) = 0;
  *(result + 48) = xmmword_1BCE3C830;
  *(result + 64) = 0x432A000043160000;
  *(result + 72) = 1040242952;
  *(result + 80) = xmmword_1BCE3C840;
  *(result + 96) = xmmword_1BCE3C850;
  *(result + 112) = xmmword_1BCE3C860;
  *(result + 128) = xmmword_1BCE3C870;
  *(result + 144) = xmmword_1BCE3C880;
  *(result + 160) = xmmword_1BCE3C890;
  *(result + 176) = xmmword_1BCE42430;
  *(result + 192) = xmmword_1BCE42440;
  __asm { FMOV            V18.2D, #0.5 }

  *(result + 208) = _Q18;
  *(result + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(result + 240) = _Q0;
  *(result + 256) = _Q0;
  *(result + 272) = _Q0;
  *(result + 288) = _Q0;
  *(result + 304) = xmmword_1BCE42450;
  *(result + 320) = xmmword_1BCE3E1D0;
  *(result + 336) = xmmword_1BCE3C8F0;
  *(result + 352) = _Q0;
  *(result + 368) = xmmword_1BCE3C900;
  *(result + 384) = 0x3E4CCCCD3F800000;
  *(result + 392) = 0x3FF0000000000000;
  *(result + 400) = _Q0;
  *(result + 416) = 0;
  *(result + 424) = 1065353216;
  *(result + 432) = _Q0;
  *(result + 448) = _Q0;
  *(result + 464) = _Q0;
  *(result + 480) = _Q0;
  *(result + 496) = _Q0;
  *(result + 512) = _Q0;
  *(result + 528) = _Q0;
  *(result + 544) = _Q0;
  *(result + 560) = _Q0;
  *(result + 576) = _Q0;
  *(result + 592) = _Q0;
  *(result + 608) = _Q0;
  *(result + 624) = _Q0;
  *(result + 640) = _Q0;
  *(result + 656) = _Q0;
  *(result + 672) = _Q0;
  *(result + 688) = _Q0;
  *(result + 704) = _Q0;
  *(result + 720) = _Q0;
  *(result + 736) = _Q0;
  *(result + 752) = _Q0;
  *(result + 768) = _Q0;
  *(result + 784) = _Q0;
  *(result + 800) = _Q0;
  *(result + 816) = _Q0;
  *(result + 832) = _Q0;
  *(result + 848) = _Q0;
  *(result + 864) = _Q0;
  *(result + 880) = _Q0;
  *(result + 896) = _Q0;
  *(result + 912) = _Q0;
  *(result + 928) = _Q0;
  *(result + 944) = _Q0;
  *(result + 960) = _Q0;
  *(result + 976) = _Q0;
  *(result + 992) = _Q0;
  *(result + 1008) = _Q0;
  *(result + 1024) = _Q0;
  *(result + 1040) = _Q0;
  *(result + 1056) = _Q0;
  *(result + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(result + 1088) = xmmword_1BCE3C910;
  *(result + 1104) = xmmword_1BCE3C920;
  *(result + 1120) = xmmword_1BCE3C930;
  *(result + 1136) = _Q0;
  *(result + 1152) = _Q0;
  *(result + 1168) = 0x4170000000000000;
  *(result + 1176) = 0x3FF0000000000000;
  *(result + 1184) = _Q0;
  *(result + 1200) = _Q0;
  *(result + 1216) = _Q0;
  *(result + 1232) = 0x3FF0000000000000;
  *(result + 1248) = 0xC04E000000000000;
  *(result + 1256) = 0;
  *(result + 1257) = *v10;
  *(result + 1260) = *&v10[3];
  *(result + 1264) = xmmword_1BCE3C830;
  *(result + 1280) = 0x432A000043160000;
  *(result + 1288) = 1040242952;
  *(result + 1296) = xmmword_1BCE3C840;
  *(result + 1312) = xmmword_1BCE3C850;
  *(result + 1328) = xmmword_1BCE3C860;
  *(result + 1344) = xmmword_1BCE3C870;
  *(result + 1360) = xmmword_1BCE3C880;
  *(result + 1376) = xmmword_1BCE3C890;
  *(result + 1392) = xmmword_1BCE42430;
  *(result + 1408) = xmmword_1BCE42440;
  *(result + 1424) = _Q18;
  *(result + 1440) = xmmword_1BCE3D910;
  *(result + 1456) = _Q0;
  *(result + 1472) = _Q0;
  *(result + 1488) = _Q0;
  *(result + 1504) = _Q0;
  *(result + 1520) = xmmword_1BCE42450;
  *(result + 1536) = xmmword_1BCE3E1D0;
  *(result + 1552) = xmmword_1BCE3C8F0;
  *(result + 1568) = _Q0;
  *(result + 1584) = xmmword_1BCE3C900;
  *(result + 1600) = 0x3E4CCCCD3F800000;
  *(result + 1608) = 0x3FF0000000000000;
  *(result + 1616) = _Q0;
  *(result + 1632) = 0;
  *(result + 1640) = 1065353216;
  *(result + 1648) = _Q0;
  *(result + 1664) = _Q0;
  *(result + 1680) = _Q0;
  *(result + 1696) = _Q0;
  *(result + 1712) = _Q0;
  *(result + 1728) = _Q0;
  *(result + 1744) = _Q0;
  *(result + 1760) = _Q0;
  *(result + 1776) = _Q0;
  *(result + 1792) = _Q0;
  *(result + 1808) = _Q0;
  *(result + 1824) = _Q0;
  *(result + 1840) = _Q0;
  *(result + 1856) = _Q0;
  *(result + 1872) = _Q0;
  *(result + 1888) = _Q0;
  *(result + 1904) = _Q0;
  *(result + 1920) = _Q0;
  *(result + 1936) = _Q0;
  *(result + 1952) = _Q0;
  *(result + 1968) = _Q0;
  *(result + 1984) = _Q0;
  *(result + 2000) = _Q0;
  *(result + 2016) = _Q0;
  *(result + 2032) = _Q0;
  *(result + 2048) = _Q0;
  *(result + 2064) = _Q0;
  *(result + 2080) = _Q0;
  *(result + 2096) = _Q0;
  *(result + 2112) = _Q0;
  *(result + 2128) = _Q0;
  *(result + 2144) = _Q0;
  *(result + 2160) = _Q0;
  *(result + 2176) = _Q0;
  *(result + 2192) = _Q0;
  *(result + 2208) = _Q0;
  *(result + 2224) = _Q0;
  *(result + 2240) = _Q0;
  *(result + 2256) = _Q0;
  *(result + 2272) = _Q0;
  *(result + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(result + 2304) = xmmword_1BCE3C940;
  *(result + 2320) = xmmword_1BCE3C950;
  *(result + 2336) = xmmword_1BCE3C960;
  *(result + 2352) = _Q0;
  *(result + 2368) = _Q0;
  *(result + 2384) = 0x4170000000000000;
  *(result + 2392) = 0x3FF0000000000000;
  *(result + 2400) = _Q0;
  *(result + 2416) = _Q0;
  *(result + 2432) = _Q0;
  *(result + 2448) = 0x3FF0000000000000;
  *(result + 2464) = 0xC028000000000000;
  *(result + 2472) = 0;
  *(result + 2473) = *v11;
  *(result + 2476) = *&v11[3];
  *(result + 2480) = xmmword_1BCE3C780;
  *(result + 2496) = 0x4396000042C80000;
  *(result + 2504) = 1036831949;
  *(result + 2512) = xmmword_1BCE3C970;
  *(result + 2528) = _Q0;
  *(result + 2544) = xmmword_1BCE42460;
  *(result + 2560) = xmmword_1BCE3C990;
  *(result + 2576) = xmmword_1BCE3C9A0;
  *(result + 2592) = _Q0;
  *(result + 2608) = xmmword_1BCE42430;
  *(result + 2624) = xmmword_1BCE42470;
  *(result + 2640) = _Q18;
  *(result + 2656) = xmmword_1BCE3DCB0;
  *(result + 2672) = _Q0;
  *(result + 2688) = _Q0;
  *(result + 2704) = xmmword_1BCE3D3C0;
  *(result + 2720) = xmmword_1BCE3D3D0;
  *(result + 2736) = xmmword_1BCE3C9E0;
  *(result + 2752) = xmmword_1BCE3E2C0;
  *(result + 2768) = xmmword_1BCE42480;
  *(result + 2784) = xmmword_1BCE3CA00;
  *(result + 2800) = xmmword_1BCE3CA10;
  *(result + 2816) = 0x3E4CCCCD3F4CCCCDLL;
  *(result + 2824) = 0x3FF0000000000000;
  *(result + 2832) = _Q0;
  *(result + 2848) = 0;
  *(result + 2856) = 1065353216;
  *(result + 2864) = _Q0;
  *(result + 2880) = _Q0;
  *(result + 2896) = _Q0;
  *(result + 2912) = _Q0;
  *(result + 2928) = _Q0;
  *(result + 2944) = _Q0;
  *(result + 2960) = _Q0;
  *(result + 2976) = _Q0;
  *(result + 2992) = _Q0;
  *(result + 3008) = _Q0;
  *(result + 3024) = _Q0;
  *(result + 3040) = _Q0;
  *(result + 3056) = _Q0;
  *(result + 3072) = _Q0;
  *(result + 3088) = _Q0;
  *(result + 3104) = _Q0;
  *(result + 3120) = _Q0;
  *(result + 3136) = _Q0;
  *(result + 3152) = _Q0;
  *(result + 3168) = _Q0;
  *(result + 3184) = _Q0;
  *(result + 3200) = _Q0;
  *(result + 3216) = _Q0;
  *(result + 3232) = _Q0;
  *(result + 3248) = _Q0;
  *(result + 3264) = _Q0;
  *(result + 3280) = _Q0;
  *(result + 3296) = _Q0;
  *(result + 3312) = _Q0;
  *(result + 3328) = _Q0;
  *(result + 3344) = _Q0;
  *(result + 3360) = _Q0;
  *(result + 3376) = _Q0;
  *(result + 3392) = _Q0;
  *(result + 3408) = _Q0;
  *(result + 3424) = _Q0;
  *(result + 3440) = _Q0;
  *(result + 3456) = _Q0;
  *(result + 3472) = _Q0;
  *(result + 3488) = _Q0;
  *(result + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(result + 3520) = xmmword_1BCE3CA20;
  *(result + 3536) = xmmword_1BCE3CA30;
  *(result + 3552) = xmmword_1BCE3CA40;
  *(result + 3568) = _Q0;
  *(result + 3584) = _Q0;
  *(result + 3600) = 0x4170000000000000;
  *(result + 3608) = 0x3FF0000000000000;
  *(result + 3616) = _Q0;
  *(result + 3632) = _Q0;
  *(result + 3648) = _Q0;
  *(result + 3664) = 0x3FF0000000000000;
  *(result + 3680) = 0xC018000000000000;
  *(result + 3688) = 0;
  *(result + 3689) = *v12;
  *(result + 3692) = *&v12[3];
  *(result + 4656) = _Q0;
  *(result + 4848) = _Q0;
  *(result + 4864) = _Q0;
  *(result + 4880) = 0x3FF0000000000000;
  *(result + 4672) = _Q0;
  *(result + 4816) = 0x4170000000000000;
  *(result + 4824) = 0x3FF0000000000000;
  *(result + 4832) = _Q0;
  *(result + 4752) = xmmword_1BCE3CB20;
  *(result + 4768) = xmmword_1BCE3CB10;
  *(result + 4784) = _Q0;
  *(result + 4800) = _Q0;
  *(result + 4688) = _Q0;
  *(result + 4704) = _Q0;
  *(result + 4720) = xmmword_1BCE3CB00;
  *(result + 4736) = xmmword_1BCE3CB10;
  *(result + 4560) = _Q0;
  *(result + 4576) = _Q0;
  *(result + 4592) = _Q0;
  *(result + 4608) = _Q0;
  *(result + 4624) = _Q0;
  *(result + 4640) = _Q0;
  *(result + 4464) = _Q0;
  *(result + 4480) = _Q0;
  *(result + 4496) = _Q0;
  *(result + 4512) = _Q0;
  *(result + 4528) = _Q0;
  *(result + 4544) = _Q0;
  *(result + 4368) = _Q0;
  *(result + 4384) = _Q0;
  *(result + 4400) = _Q0;
  *(result + 4416) = _Q0;
  *(result + 4432) = _Q0;
  *(result + 4448) = _Q0;
  *(result + 4272) = _Q0;
  *(result + 4288) = _Q0;
  *(result + 4304) = _Q0;
  *(result + 4320) = _Q0;
  *(result + 4336) = _Q0;
  *(result + 4352) = _Q0;
  *(result + 4192) = _Q0;
  *(result + 4208) = _Q0;
  *(result + 4224) = _Q0;
  *(result + 4240) = _Q0;
  *(result + 4256) = _Q0;
  *(result + 4112) = _Q0;
  *(result + 4128) = _Q0;
  *(result + 4144) = _Q0;
  *(result + 4160) = _Q0;
  *(result + 4176) = _Q0;
  *(result + 3696) = xmmword_1BCE3CA50;
  *(result + 4064) = 0;
  *(result + 4072) = 0;
  *(result + 4080) = _Q0;
  *(result + 4096) = _Q0;
  *(result + 3984) = xmmword_1BCE3CAD0;
  *(result + 4000) = xmmword_1BCE3CA00;
  *(result + 4040) = 0x3FF0000000000000;
  *(result + 4048) = _Q0;
  *(result + 4016) = xmmword_1BCE3CAE0;
  *(result + 4032) = 1062836634;
  *(result + 3920) = _Q0;
  *(result + 3936) = _Q0;
  *(result + 3952) = _Q0;
  *(result + 3968) = xmmword_1BCE3E230;
  *(result + 3712) = 0x447A000044160000;
  *(result + 3888) = _Q0;
  *(result + 3904) = _Q0;
  *(result + 3760) = xmmword_1BCE3CA70;
  *(result + 3872) = xmmword_1BCE3D960;
  *(result + 3840) = xmmword_1BCE424B0;
  *(result + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(result + 3808) = xmmword_1BCE3EEE0;
  *(result + 3824) = xmmword_1BCE424A0;
  *(result + 3776) = xmmword_1BCE3CA80;
  *(result + 3792) = xmmword_1BCE42490;
  *(result + 3720) = 1061997773;
  *(result + 3728) = xmmword_1BCE3CA60;
  *(result + 3744) = _Q0;
  *(result + 4896) = 0;
  *(result + 4904) = 0;
  *(result + 4905) = *v13;
  *(result + 4908) = *&v13[3];
  *(result + 4912) = xmmword_1BCE3CB30;
  *(result + 4928) = 0x44C8000044160000;
  *(result + 4936) = 1061997773;
  *(result + 4944) = xmmword_1BCE424C0;
  *(result + 4960) = xmmword_1BCE3CB50;
  *(result + 4976) = xmmword_1BCE3CB60;
  *(result + 4992) = xmmword_1BCE3CB70;
  *(result + 5008) = xmmword_1BCE3CB80;
  *(result + 5024) = xmmword_1BCE3CB90;
  *(result + 5040) = xmmword_1BCE424D0;
  *(result + 5168) = xmmword_1BCE3CBD0;
  *(result + 5184) = xmmword_1BCE424E0;
  *(result + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  strcpy((result + 5232), "fff?fff?333?fff?fff?");
  *(result + 5936) = xmmword_1BCE3CC10;
  *(result + 5968) = xmmword_1BCE3CC30;
  *(result + 5952) = xmmword_1BCE3CC20;
  *(result + 5984) = xmmword_1BCE3CC20;
  *(result + 6128) = xmmword_1BCE3CC40;
  *(result + 6144) = 0x44480000443B8000;
  *(result + 6160) = xmmword_1BCE42500;
  *(result + 6176) = xmmword_1BCE3CC60;
  *(result + 6192) = xmmword_1BCE44750;
  *(result + 6208) = xmmword_1BCE44760;
  *(result + 6224) = xmmword_1BCE3CC90;
  *(result + 6240) = xmmword_1BCE3CCA0;
  *(result + 6384) = xmmword_1BCE3DAF0;
  *(result + 6400) = xmmword_1BCE42520;
  *(result + 6416) = xmmword_1BCE42530;
  *(result + 6432) = xmmword_1BCE42540;
  *(result + 6448) = xmmword_1BCE42550;
  *(result + 6480) = xmmword_1BCE3CD00;
  *(result + 7152) = xmmword_1BCE3CD10;
  *(result + 7184) = xmmword_1BCE3CD30;
  *(result + 7168) = xmmword_1BCE3CD20;
  *(result + 7200) = xmmword_1BCE3CD20;
  *(result + 7344) = xmmword_1BCE3CD40;
  *(result + 7360) = 1147207680;
  *(result + 7408) = xmmword_1BCE44770;
  *(result + 7440) = xmmword_1BCE3CD70;
  *(result + 7552) = _Q0;
  *(result + 7456) = xmmword_1BCE3DEF0;
  *(result + 7632) = xmmword_1BCE42570;
  *(result + 7648) = xmmword_1BCE42580;
  *(result + 7664) = xmmword_1BCE3CDB0;
  *(result + 7696) = xmmword_1BCE3E2F0;
  *(result + 8368) = xmmword_1BCE3CDD0;
  *(result + 8400) = xmmword_1BCE3CDE0;
  *(result + 8560) = xmmword_1BCE3CDF0;
  *(result + 8576) = 0x41A00000447A0000;
  *(result + 9776) = xmmword_1BCE3CE40;
  *(result + 10992) = xmmword_1BCE3CE40;
  *(result + 9792) = 1148846080;
  *(result + 11008) = 1148846080;
  *(result + 8624) = xmmword_1BCE44780;
  *(result + 9840) = xmmword_1BCE44780;
  *(result + 11056) = xmmword_1BCE44780;
  *(result + 7424) = xmmword_1BCE3C9D0;
  *(result + 9856) = xmmword_1BCE3C9D0;
  *(result + 11072) = xmmword_1BCE3C9D0;
  *(result + 9872) = xmmword_1BCE3CE70;
  *(result + 11088) = xmmword_1BCE3CE70;
  *(result + 9888) = xmmword_1BCE3CE80;
  *(result + 11104) = xmmword_1BCE3CE80;
  *(result + 11264) = xmmword_1BCE42590;
  v7 = vdupq_n_s32(0x3F666666u);
  *(result + 8880) = v7;
  *(result + 10096) = v7;
  *(result + 11312) = v7;
  *(result + 10816) = xmmword_1BCE447D0;
  *(result + 12032) = xmmword_1BCE447D0;
  *(result + 10800) = xmmword_1BCE447C0;
  *(result + 10832) = xmmword_1BCE447C0;
  *(result + 12016) = xmmword_1BCE447C0;
  *(result + 12048) = xmmword_1BCE447C0;
  *(result + 10848) = xmmword_1BCE447E0;
  *(result + 12064) = xmmword_1BCE447E0;
  *(result + 12208) = xmmword_1BCE3CEC0;
  *(result + 12224) = 0x146D097C447A0000;
  v8 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(result + 7376) = v8;
  *(result + 8592) = v8;
  *(result + 9808) = v8;
  *(result + 11024) = v8;
  *(result + 12240) = v8;
  *(result + 7392) = xmmword_1BCE3CD50;
  *(result + 8608) = xmmword_1BCE3CD50;
  *(result + 9824) = xmmword_1BCE3CD50;
  *(result + 11040) = xmmword_1BCE3CD50;
  *(result + 12256) = xmmword_1BCE3CD50;
  *(result + 12272) = xmmword_1BCE447F0;
  *(result + 12528) = xmmword_1BCE3CEF0;
  *(result + 8912) = xmmword_1BCE3CE10;
  *(result + 10128) = xmmword_1BCE3CE10;
  *(result + 11344) = xmmword_1BCE3CE10;
  *(result + 12560) = xmmword_1BCE3CE10;
  *(result + 9600) = xmmword_1BCE447A0;
  *(result + 13248) = xmmword_1BCE447A0;
  *(result + 9584) = xmmword_1BCE44790;
  *(result + 9616) = xmmword_1BCE44790;
  *(result + 13232) = xmmword_1BCE44790;
  *(result + 13264) = xmmword_1BCE44790;
  *(result + 9632) = xmmword_1BCE447B0;
  *(result + 13280) = xmmword_1BCE447B0;
  *(result + 13424) = xmmword_1BCE425A0;
  *(result + 13440) = 0x2C31C71D44610000;
  *(result + 13456) = vdupq_n_s64(0x3FEC9C9CC0000000uLL);
  *(result + 13472) = xmmword_1BCE425B0;
  *(result + 13488) = xmmword_1BCE44800;
  *(result + 13520) = xmmword_1BCE425D0;
  *(result + 13536) = xmmword_1BCE425E0;
  *(result + 7488) = xmmword_1BCE3CBA0;
  *(result + 13568) = xmmword_1BCE3CBA0;
  *(result + 13712) = xmmword_1BCE425F0;
  *(result + 13744) = xmmword_1BCE3CF70;
  *(result + 13776) = xmmword_1BCE3CF80;
  *(result + 14448) = xmmword_1BCE3CEB0;
  *(result + 14480) = xmmword_1BCE3CF90;
  *(result + 8416) = xmmword_1BCE3CBC0;
  *(result + 14496) = xmmword_1BCE3CBC0;
  *(result + 14640) = xmmword_1BCE42600;
  *(result + 14656) = 0x441EC000443B8000;
  *(result + 14672) = xmmword_1BCE42610;
  *(result + 5056) = xmmword_1BCE3C8C0;
  *(result + 5072) = _Q0;
  *(result + 5088) = xmmword_1BCE3DA70;
  *(result + 5104) = _Q0;
  *(result + 5120) = _Q0;
  *(result + 5136) = _Q0;
  *(result + 5152) = _Q0;
  *(result + 5216) = xmmword_1BCE3CA00;
  *(result + 5253) = 0;
  *(result + 5254) = 0;
  *(result + 5256) = 0x3FF0000000000000;
  *(result + 5264) = _Q0;
  *(result + 5280) = 0;
  *(result + 5288) = 0;
  *(result + 5296) = _Q0;
  *(result + 5312) = _Q0;
  *(result + 5328) = _Q0;
  *(result + 5344) = _Q0;
  *(result + 5360) = _Q0;
  *(result + 5376) = _Q0;
  *(result + 5392) = _Q0;
  *(result + 5408) = _Q0;
  *(result + 5424) = _Q0;
  *(result + 5440) = _Q0;
  *(result + 5456) = _Q0;
  *(result + 5472) = _Q0;
  *(result + 5488) = _Q0;
  *(result + 5504) = _Q0;
  *(result + 5520) = _Q0;
  *(result + 5536) = _Q0;
  *(result + 5552) = _Q0;
  *(result + 5568) = _Q0;
  *(result + 5584) = _Q0;
  *(result + 5600) = _Q0;
  *(result + 5616) = _Q0;
  *(result + 5632) = _Q0;
  *(result + 5648) = _Q0;
  *(result + 5664) = _Q0;
  *(result + 5680) = _Q0;
  *(result + 5696) = _Q0;
  *(result + 5712) = _Q0;
  *(result + 5728) = _Q0;
  *(result + 5744) = _Q0;
  *(result + 5760) = _Q0;
  *(result + 5776) = _Q0;
  *(result + 5792) = _Q0;
  *(result + 5808) = _Q0;
  *(result + 5824) = _Q0;
  *(result + 5840) = _Q0;
  *(result + 5856) = _Q0;
  *(result + 5872) = _Q0;
  *(result + 5888) = _Q0;
  *(result + 5904) = _Q0;
  *(result + 5920) = _Q0;
  *(result + 6000) = _Q0;
  *(result + 6016) = _Q0;
  *(result + 6032) = 0x4170000000000000;
  *(result + 6040) = 0x3FF0000000000000;
  *(result + 6048) = _Q0;
  *(result + 6064) = _Q0;
  *(result + 6080) = _Q0;
  *(result + 6096) = 0x3FF0000000000000;
  *(result + 6112) = 0x4017FFFFFFFFFFFALL;
  *(result + 6120) = 0;
  *(result + 6121) = *v14;
  *(result + 6124) = *&v14[3];
  *(result + 6152) = 1060739482;
  *(result + 6256) = _Q0;
  *(result + 6272) = _Q0;
  *(result + 6288) = _Q0;
  *(result + 6304) = xmmword_1BCE3DAE0;
  *(result + 6320) = _Q0;
  *(result + 6336) = _Q0;
  *(result + 6352) = _Q0;
  *(result + 6368) = _Q0;
  *(result + 6464) = 1063675494;
  *(result + 6472) = 0x3FEF857180000000;
  *(result + 6496) = 0x3FE0000000000000;
  *(result + 6504) = 0;
  *(result + 6512) = _Q0;
  *(result + 6528) = _Q0;
  *(result + 6544) = _Q0;
  *(result + 6560) = _Q0;
  *(result + 6576) = _Q0;
  *(result + 6592) = _Q0;
  *(result + 6608) = _Q0;
  *(result + 6624) = _Q0;
  *(result + 6640) = _Q0;
  *(result + 6656) = _Q0;
  *(result + 6672) = _Q0;
  *(result + 6688) = _Q0;
  *(result + 6704) = _Q0;
  *(result + 6720) = _Q0;
  *(result + 6736) = _Q0;
  *(result + 6752) = _Q0;
  *(result + 6768) = _Q0;
  *(result + 6784) = _Q0;
  *(result + 6800) = _Q0;
  *(result + 6816) = _Q0;
  *(result + 6832) = _Q0;
  *(result + 6848) = _Q0;
  *(result + 6864) = _Q0;
  *(result + 6880) = _Q0;
  *(result + 6896) = _Q0;
  *(result + 6912) = _Q0;
  *(result + 6928) = _Q0;
  *(result + 6944) = _Q0;
  *(result + 6960) = _Q0;
  *(result + 6976) = _Q0;
  *(result + 6992) = _Q0;
  *(result + 7008) = _Q0;
  *(result + 7024) = _Q0;
  *(result + 7040) = _Q0;
  *(result + 7056) = _Q0;
  *(result + 7072) = _Q0;
  *(result + 7088) = _Q0;
  *(result + 7104) = _Q0;
  *(result + 7120) = _Q0;
  *(result + 7136) = _Q0;
  *(result + 7216) = _Q0;
  *(result + 7232) = _Q0;
  *(result + 7248) = 0x4170000000000000;
  *(result + 7256) = 0x3FF0000000000000;
  *(result + 7264) = _Q0;
  *(result + 7280) = _Q0;
  *(result + 7296) = _Q0;
  *(result + 7312) = 0x3FF0000000000000;
  *(result + 7328) = 0x4027FFFFFFFFFFFALL;
  *(result + 7336) = 0;
  *(result + 7337) = *v15;
  *(result + 7340) = *&v15[3];
  *(result + 7368) = 1059481190;
  *(result + 7472) = _Q0;
  *(result + 7504) = _Q0;
  *(result + 7520) = xmmword_1BCE3DAE0;
  *(result + 7536) = _Q0;
  *(result + 14688) = xmmword_1BCE3E790;
  *(result + 14704) = xmmword_1BCE42620;
  *(result + 14720) = xmmword_1BCE42630;
  *(result + 14736) = xmmword_1BCE42640;
  *(result + 14752) = xmmword_1BCE42650;
  *(result + 8736) = xmmword_1BCE3DAE0;
  *(result + 12384) = xmmword_1BCE3DAE0;
  *(result + 13600) = xmmword_1BCE3DAE0;
  *(result + 14816) = xmmword_1BCE3DAE0;
  *(result + 14864) = xmmword_1BCE3D010;
  *(result + 14928) = xmmword_1BCE42660;
  *(result + 14944) = xmmword_1BCE42670;
  *(result + 14960) = xmmword_1BCE42680;
  *(result + 14992) = xmmword_1BCE3D060;
  *(result + 15664) = xmmword_1BCE3D070;
  *(result + 15680) = xmmword_1BCE3D080;
  *(result + 15696) = xmmword_1BCE3D090;
  *(result + 15712) = xmmword_1BCE3D0A0;
  *(result + 15856) = xmmword_1BCE3D0B0;
  *(result + 15872) = 0x449EC00044160000;
  *(result + 15888) = xmmword_1BCE3D0C0;
  *(result + 15904) = xmmword_1BCE3D0D0;
  *(result + 15920) = xmmword_1BCE3DBF0;
  *(result + 15936) = xmmword_1BCE3DC00;
  *(result + 15952) = xmmword_1BCE3D100;
  *(result + 15968) = xmmword_1BCE3D110;
  *(result + 8384) = xmmword_1BCE3CBB0;
  *(result + 14464) = xmmword_1BCE3CBB0;
  *(result + 16000) = xmmword_1BCE3CBB0;
  *(result + 9952) = xmmword_1BCE3DA70;
  *(result + 11168) = xmmword_1BCE3DA70;
  *(result + 16032) = xmmword_1BCE3DA70;
  *(result + 8848) = xmmword_1BCE3CCB0;
  *(result + 10064) = xmmword_1BCE3CCB0;
  *(result + 11248) = xmmword_1BCE3CCB0;
  *(result + 11280) = xmmword_1BCE3CCB0;
  *(result + 16080) = xmmword_1BCE3CCB0;
  *(result + 7616) = xmmword_1BCE3E230;
  *(result + 10048) = xmmword_1BCE3E230;
  *(result + 13696) = xmmword_1BCE3E230;
  *(result + 16128) = xmmword_1BCE3E230;
  *(result + 16144) = xmmword_1BCE42690;
  *(result + 16160) = xmmword_1BCE426A0;
  *(result + 16176) = xmmword_1BCE426B0;
  *(result + 7680) = 1063675494;
  *(result + 8896) = 1063675494;
  *(result + 10112) = 1063675494;
  *(result + 11328) = 1063675494;
  *(result + 12544) = 1063675494;
  *(result + 13760) = 1063675494;
  *(result + 14976) = 1063675494;
  *(result + 16192) = 1063675494;
  *(result + 16208) = xmmword_1BCE3D150;
  *(result + 16880) = xmmword_1BCE3D160;
  *(result + 16896) = xmmword_1BCE3D170;
  *(result + 16912) = xmmword_1BCE3D180;
  *(result + 16928) = xmmword_1BCE3D190;
  *(result + 17072) = xmmword_1BCE3CB30;
  *(result + 17088) = 0x4483CC9D445C8321;
  *(result + 17104) = xmmword_1BCE3D1A0;
  *(result + 17120) = xmmword_1BCE3D1B0;
  *(result + 17136) = xmmword_1BCE3D1C0;
  *(result + 17152) = xmmword_1BCE3D1D0;
  *(result + 17168) = xmmword_1BCE3D1E0;
  *(result + 17184) = xmmword_1BCE3D1F0;
  *(result + 17200) = xmmword_1BCE424D0;
  *(result + 17216) = xmmword_1BCE3C8C0;
  *(result + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(result + 17248) = xmmword_1BCE3DC60;
  *(result + 8832) = xmmword_1BCE3ECB0;
  *(result + 12480) = xmmword_1BCE3ECB0;
  *(result + 14912) = xmmword_1BCE3ECB0;
  *(result + 17344) = xmmword_1BCE3ECB0;
  *(result + 17360) = xmmword_1BCE3CAD0;
  *(result + 17392) = xmmword_1BCE426C0;
  *(result + 17408) = 1062836634;
  *(result + 17424) = xmmword_1BCE3D220;
  *(result + 18096) = xmmword_1BCE3D230;
  *(result + 18112) = xmmword_1BCE3D240;
  *(result + 18128) = xmmword_1BCE3D250;
  *(result + 18144) = xmmword_1BCE3D260;
  *(result + 18288) = xmmword_1BCE3C780;
  *(result + 18304) = 0x4396000042C80000;
  *(result + 18320) = xmmword_1BCE3D270;
  *(result + 18352) = xmmword_1BCE426D0;
  *(result + 18368) = xmmword_1BCE3D290;
  *(result + 18384) = xmmword_1BCE3C9A0;
  *(result + 18432) = xmmword_1BCE42470;
  *(result + 18464) = xmmword_1BCE3DCB0;
  *(result + 18512) = xmmword_1BCE3D2B0;
  *(result + 18528) = xmmword_1BCE3D2C0;
  *(result + 18544) = xmmword_1BCE3D2D0;
  *(result + 18560) = xmmword_1BCE3E350;
  *(result + 18576) = xmmword_1BCE426F0;
  *(result + 13504) = xmmword_1BCE3CA00;
  *(result + 13728) = xmmword_1BCE3CA00;
  *(result + 17376) = xmmword_1BCE3CA00;
  *(result + 18592) = xmmword_1BCE3CA00;
  *(result + 18608) = xmmword_1BCE3CA10;
  *(result + 18624) = 0x3E4CCCCD3F4CCCCDLL;
  *(result + 19312) = xmmword_1BCE3D2E0;
  *(result + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V1.2D, #0.25 }

  *(result + 20528) = _Q1;
  *(result + 20560) = xmmword_1BCE3D300;
  *(result + 19504) = xmmword_1BCE3C830;
  *(result + 20720) = xmmword_1BCE3C830;
  *(result + 19520) = 0x432A000043160000;
  *(result + 20736) = 0x432A000043160000;
  *(result + 19536) = xmmword_1BCE3C840;
  *(result + 20752) = xmmword_1BCE3C840;
  *(result + 19552) = xmmword_1BCE3C850;
  *(result + 20768) = xmmword_1BCE3C850;
  *(result + 19568) = xmmword_1BCE3C860;
  *(result + 20784) = xmmword_1BCE3C860;
  *(result + 19584) = xmmword_1BCE3C870;
  *(result + 20800) = xmmword_1BCE3C870;
  *(result + 19600) = xmmword_1BCE3C880;
  *(result + 20816) = xmmword_1BCE3C880;
  *(result + 19616) = xmmword_1BCE3C890;
  *(result + 20832) = xmmword_1BCE3C890;
  *(result + 18416) = xmmword_1BCE426E0;
  *(result + 19632) = xmmword_1BCE426E0;
  *(result + 20848) = xmmword_1BCE426E0;
  *(result + 19648) = xmmword_1BCE42440;
  *(result + 20864) = xmmword_1BCE42440;
  *(result + 18448) = _Q18;
  *(result + 19664) = _Q18;
  *(result + 20880) = _Q18;
  *(result + 19680) = xmmword_1BCE3D910;
  *(result + 20896) = xmmword_1BCE3D910;
  *(result + 19760) = xmmword_1BCE42700;
  *(result + 20976) = xmmword_1BCE42700;
  *(result + 19776) = xmmword_1BCE3E1D0;
  *(result + 20992) = xmmword_1BCE3E1D0;
  *(result + 19792) = xmmword_1BCE3C8F0;
  *(result + 21008) = xmmword_1BCE3C8F0;
  *(result + 19824) = xmmword_1BCE3C900;
  *(result + 21040) = xmmword_1BCE3C900;
  *(result + 19840) = 0x3E4CCCCD3F800000;
  *(result + 21056) = 0x3E4CCCCD3F800000;
  *(result + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(result + 19328) = xmmword_1BCE3C910;
  *(result + 19360) = xmmword_1BCE3C910;
  *(result + 20544) = xmmword_1BCE3C910;
  *(result + 20576) = xmmword_1BCE3C910;
  *(result + 21760) = xmmword_1BCE3C910;
  *(result + 21776) = xmmword_1BCE3D310;
  *(result + 21792) = xmmword_1BCE3D320;
  *(result + 8464) = 0x4170000000000000;
  *(result + 9680) = 0x4170000000000000;
  *(result + 10896) = 0x4170000000000000;
  *(result + 12112) = 0x4170000000000000;
  *(result + 13328) = 0x4170000000000000;
  *(result + 14544) = 0x4170000000000000;
  *(result + 15760) = 0x4170000000000000;
  *(result + 16976) = 0x4170000000000000;
  *(result + 18192) = 0x4170000000000000;
  *(result + 19408) = 0x4170000000000000;
  *(result + 20624) = 0x4170000000000000;
  *(result + 21840) = 0x4170000000000000;
  *(result + 7568) = _Q0;
  *(result + 7584) = _Q0;
  *(result + 7600) = _Q0;
  *(result + 7728) = _Q0;
  *(result + 7744) = _Q0;
  *(result + 7760) = _Q0;
  *(result + 7776) = _Q0;
  *(result + 7792) = _Q0;
  *(result + 7808) = _Q0;
  *(result + 7824) = _Q0;
  *(result + 7840) = _Q0;
  *(result + 7856) = _Q0;
  *(result + 7872) = _Q0;
  *(result + 7888) = _Q0;
  *(result + 7904) = _Q0;
  *(result + 18080) = _Q0;
  *(result + 17984) = _Q0;
  *(result + 18000) = _Q0;
  *(result + 18016) = _Q0;
  *(result + 18032) = _Q0;
  *(result + 18048) = _Q0;
  *(result + 18064) = _Q0;
  *(result + 17888) = _Q0;
  *(result + 17904) = _Q0;
  *(result + 17920) = _Q0;
  *(result + 17936) = _Q0;
  *(result + 17952) = _Q0;
  *(result + 17968) = _Q0;
  *(result + 17792) = _Q0;
  *(result + 17808) = _Q0;
  *(result + 17824) = _Q0;
  *(result + 17840) = _Q0;
  *(result + 17856) = _Q0;
  *(result + 17872) = _Q0;
  *(result + 17696) = _Q0;
  *(result + 17712) = _Q0;
  *(result + 17728) = _Q0;
  *(result + 17744) = _Q0;
  *(result + 17760) = _Q0;
  *(result + 17776) = _Q0;
  *(result + 17600) = _Q0;
  *(result + 17616) = _Q0;
  *(result + 17632) = _Q0;
  *(result + 17648) = _Q0;
  *(result + 17664) = _Q0;
  *(result + 17680) = _Q0;
  *(result + 17504) = _Q0;
  *(result + 17520) = _Q0;
  *(result + 17536) = _Q0;
  *(result + 17552) = _Q0;
  *(result + 17568) = _Q0;
  *(result + 17584) = _Q0;
  *(result + 7920) = _Q0;
  *(result + 7936) = _Q0;
  *(result + 17456) = _Q0;
  *(result + 17472) = _Q0;
  *(result + 17488) = _Q0;
  *(result + 7952) = _Q0;
  *(result + 7968) = _Q0;
  *(result + 17416) = 0x3FEF23CF40000000;
  *(result + 17440) = 0;
  *(result + 17448) = 665496235;
  *(result + 7984) = _Q0;
  *(result + 8000) = _Q0;
  *(result + 8016) = _Q0;
  *(result + 17296) = _Q0;
  *(result + 17312) = _Q0;
  *(result + 17328) = _Q0;
  *(result + 8032) = _Q0;
  *(result + 8048) = _Q0;
  *(result + 8064) = _Q0;
  *(result + 8080) = _Q0;
  *(result + 17264) = _Q0;
  *(result + 17280) = _Q0;
  *(result + 8096) = _Q0;
  *(result + 8112) = _Q0;
  *(result + 8128) = _Q0;
  *(result + 8144) = _Q0;
  *(result + 8160) = _Q0;
  *(result + 8176) = _Q0;
  *(result + 0x2000) = _Q0;
  *(result + 8208) = _Q0;
  *(result + 16992) = _Q0;
  *(result + 17065) = *v23;
  *(result + 17068) = *&v23[3];
  *(result + 17096) = 1050388079;
  *(result + 17008) = _Q0;
  *(result + 17024) = _Q0;
  *(result + 17040) = 0x3FF0000000000000;
  *(result + 17056) = 0xC017FFFFFFFFFFE8;
  *(result + 17064) = 1;
  *(result + 8224) = _Q0;
  *(result + 8240) = _Q0;
  *(result + 8256) = _Q0;
  *(result + 16944) = _Q0;
  *(result + 16960) = _Q0;
  *(result + 16984) = 0x3FF0000000000000;
  *(result + 8272) = _Q0;
  *(result + 8288) = _Q0;
  *(result + 16816) = _Q0;
  *(result + 16832) = _Q0;
  *(result + 16848) = _Q0;
  *(result + 16864) = _Q0;
  *(result + 16720) = _Q0;
  *(result + 16736) = _Q0;
  *(result + 16752) = _Q0;
  *(result + 16768) = _Q0;
  *(result + 16784) = _Q0;
  *(result + 16800) = _Q0;
  *(result + 16624) = _Q0;
  *(result + 16640) = _Q0;
  *(result + 16656) = _Q0;
  *(result + 16672) = _Q0;
  *(result + 16688) = _Q0;
  *(result + 16704) = _Q0;
  *(result + 16528) = _Q0;
  *(result + 16544) = _Q0;
  *(result + 16560) = _Q0;
  *(result + 16576) = _Q0;
  *(result + 16592) = _Q0;
  *(result + 16608) = _Q0;
  *(result + 16432) = _Q0;
  *(result + 16448) = _Q0;
  *(result + 16464) = _Q0;
  *(result + 16480) = _Q0;
  *(result + 16496) = _Q0;
  *(result + 16512) = _Q0;
  *(result + 16336) = _Q0;
  *(result + 16352) = _Q0;
  *(result + 16368) = _Q0;
  *(result + 0x4000) = _Q0;
  *(result + 16400) = _Q0;
  *(result + 16416) = _Q0;
  *(result + 8304) = _Q0;
  *(result + 16256) = _Q0;
  *(result + 16272) = _Q0;
  *(result + 16288) = _Q0;
  *(result + 16304) = _Q0;
  *(result + 16320) = _Q0;
  *(result + 8320) = _Q0;
  *(result + 16200) = 0x3FEE6AC340000000;
  *(result + 16224) = 0;
  *(result + 16232) = 0;
  *(result + 16240) = _Q0;
  *(result + 8336) = _Q0;
  *(result + 8352) = _Q0;
  *(result + 8432) = _Q0;
  *(result + 8448) = _Q0;
  *(result + 16096) = _Q0;
  *(result + 16112) = _Q0;
  *(result + 8472) = 0x3FF0000000000000;
  *(result + 8480) = _Q0;
  *(result + 8496) = _Q0;
  *(result + 16016) = _Q0;
  *(result + 16048) = _Q0;
  *(result + 16064) = _Q0;
  *(result + 8512) = _Q0;
  *(result + 8528) = 0x3FF0000000000000;
  *(result + 8544) = 0x4032000000000001;
  *(result + 8552) = 0;
  *(result + 8553) = *v16;
  *(result + 8556) = *&v16[3];
  *(result + 15984) = _Q0;
  *(result + 8584) = 1061158912;
  *(result + 8640) = _Q0;
  *(result + 8656) = _Q0;
  *(result + 15848) = 1;
  *(result + 15849) = *v22;
  *(result + 15852) = *&v22[3];
  *(result + 15880) = 1061997773;
  *(result + 15768) = 0x3FF0000000000000;
  *(result + 15776) = _Q0;
  *(result + 15792) = _Q0;
  *(result + 15808) = _Q0;
  *(result + 15824) = 0x3FF0000000000000;
  *(result + 15840) = 0;
  *(result + 8672) = _Q0;
  *(result + 8688) = _Q0;
  *(result + 8704) = _Q0;
  *(result + 8720) = _Q0;
  *(result + 15728) = _Q0;
  *(result + 15744) = _Q0;
  *(result + 8752) = _Q0;
  *(result + 15584) = _Q0;
  *(result + 15600) = _Q0;
  *(result + 15616) = _Q0;
  *(result + 15632) = _Q0;
  *(result + 15648) = _Q0;
  *(result + 15488) = _Q0;
  *(result + 15504) = _Q0;
  *(result + 15520) = _Q0;
  *(result + 15536) = _Q0;
  *(result + 15552) = _Q0;
  *(result + 15568) = _Q0;
  *(result + 15392) = _Q0;
  *(result + 15408) = _Q0;
  *(result + 15424) = _Q0;
  *(result + 15440) = _Q0;
  *(result + 15456) = _Q0;
  *(result + 15472) = _Q0;
  *(result + 15296) = _Q0;
  *(result + 15312) = _Q0;
  *(result + 15328) = _Q0;
  *(result + 15344) = _Q0;
  *(result + 15360) = _Q0;
  *(result + 15376) = _Q0;
  *(result + 15200) = _Q0;
  *(result + 15216) = _Q0;
  *(result + 15232) = _Q0;
  *(result + 15248) = _Q0;
  *(result + 15264) = _Q0;
  *(result + 15280) = _Q0;
  *(result + 15104) = _Q0;
  *(result + 15120) = _Q0;
  *(result + 15136) = _Q0;
  *(result + 15152) = _Q0;
  *(result + 15168) = _Q0;
  *(result + 15184) = _Q0;
  *(result + 8768) = _Q0;
  *(result + 15024) = _Q0;
  *(result + 15040) = _Q0;
  *(result + 15056) = _Q0;
  *(result + 15072) = _Q0;
  *(result + 15088) = _Q0;
  *(result + 8784) = _Q0;
  *(result + 8800) = _Q0;
  *(result + 14984) = 0x3FEDEF5480000000;
  *(result + 15008) = 0x3FE0000000000000;
  *(result + 15016) = 0;
  *(result + 8816) = _Q0;
  *(result + 8864) = _Q0;
  *(result + 8904) = 0x3FEB9B9BC0000000;
  *(result + 14880) = _Q0;
  *(result + 14896) = _Q0;
  *(result + 8928) = 0x3FF0000000000000;
  *(result + 8936) = 0;
  *(result + 14784) = _Q0;
  *(result + 14800) = _Q0;
  *(result + 14832) = _Q0;
  *(result + 14848) = _Q0;
  *(result + 8944) = _Q0;
  *(result + 8960) = _Q0;
  *(result + 8976) = _Q0;
  *(result + 8992) = _Q0;
  *(result + 9008) = _Q0;
  *(result + 14768) = _Q0;
  *(result + 9024) = _Q0;
  *(result + 9040) = _Q0;
  *(result + 14624) = 0x4018000000000010;
  *(result + 14632) = 1;
  *(result + 14633) = *v21;
  *(result + 14636) = *&v21[3];
  *(result + 14664) = 1061158912;
  *(result + 9056) = _Q0;
  *(result + 14552) = 0x3FF0000000000000;
  *(result + 14560) = _Q0;
  *(result + 14576) = _Q0;
  *(result + 14592) = _Q0;
  *(result + 14608) = 0x3FF0000000000000;
  *(result + 9072) = _Q0;
  *(result + 9088) = _Q0;
  *(result + 9104) = _Q0;
  *(result + 9120) = _Q0;
  *(result + 14512) = _Q0;
  *(result + 14528) = _Q0;
  *(result + 14352) = _Q0;
  *(result + 14368) = _Q0;
  *(result + 14384) = _Q0;
  *(result + 14400) = _Q0;
  *(result + 14416) = _Q0;
  *(result + 14432) = _Q0;
  *(result + 14256) = _Q0;
  *(result + 14272) = _Q0;
  *(result + 14288) = _Q0;
  *(result + 14304) = _Q0;
  *(result + 14320) = _Q0;
  *(result + 14336) = _Q0;
  *(result + 14160) = _Q0;
  *(result + 14176) = _Q0;
  *(result + 14192) = _Q0;
  *(result + 14208) = _Q0;
  *(result + 14224) = _Q0;
  *(result + 14240) = _Q0;
  *(result + 14064) = _Q0;
  *(result + 14080) = _Q0;
  *(result + 14096) = _Q0;
  *(result + 14112) = _Q0;
  *(result + 14128) = _Q0;
  *(result + 14144) = _Q0;
  *(result + 13968) = _Q0;
  *(result + 13984) = _Q0;
  *(result + 14000) = _Q0;
  *(result + 14016) = _Q0;
  *(result + 14032) = _Q0;
  *(result + 14048) = _Q0;
  *(result + 13872) = _Q0;
  *(result + 13888) = _Q0;
  *(result + 13904) = _Q0;
  *(result + 13920) = _Q0;
  *(result + 13936) = _Q0;
  *(result + 13952) = _Q0;
  *(result + 9136) = _Q0;
  *(result + 13800) = 0;
  *(result + 13808) = _Q0;
  *(result + 13824) = _Q0;
  *(result + 13840) = _Q0;
  *(result + 13856) = _Q0;
  *(result + 9152) = _Q0;
  *(result + 9168) = _Q0;
  *(result + 9184) = _Q0;
  *(result + 13768) = 0x3FED73E5C0000000;
  *(result + 13792) = 0x3FF0000000000000;
  *(result + 9200) = _Q0;
  *(result + 9216) = _Q0;
  *(result + 13632) = _Q0;
  *(result + 13648) = _Q0;
  *(result + 13664) = _Q0;
  *(result + 13680) = _Q0;
  *(result + 9232) = _Q0;
  *(result + 9248) = _Q0;
  *(result + 9264) = _Q0;
  *(result + 13552) = _Q0;
  *(result + 13584) = _Q0;
  *(result + 13616) = _Q0;
  *(result + 9280) = _Q0;
  *(result + 9296) = _Q0;
  *(result + 9312) = _Q0;
  *(result + 9328) = _Q0;
  *(result + 9344) = _Q0;
  *(result + 9360) = _Q0;
  *(result + 9376) = _Q0;
  *(result + 9392) = _Q0;
  *(result + 13336) = 0x3FF0000000000000;
  *(result + 13416) = 1;
  *(result + 13417) = *v20;
  *(result + 13420) = *&v20[3];
  *(result + 13448) = 1060320051;
  *(result + 13344) = _Q0;
  *(result + 13360) = _Q0;
  *(result + 13376) = _Q0;
  *(result + 13392) = 0x3FF0000000000000;
  *(result + 13408) = 0x4028000000000010;
  *(result + 9408) = _Q0;
  *(result + 9424) = _Q0;
  *(result + 9440) = _Q0;
  *(result + 9456) = _Q0;
  *(result + 13296) = _Q0;
  *(result + 13312) = _Q0;
  *(result + 9472) = _Q0;
  *(result + 13152) = _Q0;
  *(result + 13168) = _Q0;
  *(result + 13184) = _Q0;
  *(result + 13200) = _Q0;
  *(result + 13216) = _Q0;
  *(result + 13056) = _Q0;
  *(result + 13072) = _Q0;
  *(result + 13088) = _Q0;
  *(result + 13104) = _Q0;
  *(result + 13120) = _Q0;
  *(result + 13136) = _Q0;
  *(result + 12960) = _Q0;
  *(result + 12976) = _Q0;
  *(result + 12992) = _Q0;
  *(result + 13008) = _Q0;
  *(result + 13024) = _Q0;
  *(result + 13040) = _Q0;
  *(result + 12864) = _Q0;
  *(result + 12880) = _Q0;
  *(result + 12896) = _Q0;
  *(result + 12912) = _Q0;
  *(result + 12928) = _Q0;
  *(result + 12944) = _Q0;
  *(result + 12768) = _Q0;
  *(result + 12784) = _Q0;
  *(result + 12800) = _Q0;
  *(result + 12816) = _Q0;
  *(result + 12832) = _Q0;
  *(result + 12848) = _Q0;
  *(result + 12672) = _Q0;
  *(result + 12688) = _Q0;
  *(result + 12704) = _Q0;
  *(result + 12720) = _Q0;
  *(result + 12736) = _Q0;
  *(result + 12752) = _Q0;
  *(result + 12584) = 0;
  *(result + 12592) = _Q0;
  *(result + 12608) = _Q0;
  *(result + 12624) = _Q0;
  *(result + 12640) = _Q0;
  *(result + 12656) = _Q0;
  *(result + 9488) = _Q0;
  *(result + 9504) = _Q0;
  *(result + 9520) = _Q0;
  *(result + 12512) = _Q0;
  *(result + 12552) = 0x3FEB9B9BC0000000;
  *(result + 12576) = 0x3FF0000000000000;
  *(result + 9536) = _Q0;
  *(result + 12416) = _Q0;
  *(result + 12432) = _Q0;
  *(result + 12448) = _Q0;
  *(result + 12464) = _Q0;
  *(result + 12496) = _Q0;
  *(result + 9552) = _Q0;
  *(result + 12320) = _Q0;
  *(result + 12336) = _Q0;
  *(result + 12352) = _Q0;
  *(result + 12368) = _Q0;
  *(result + 12400) = _Q0;
  *(result + 9568) = _Q0;
  *(result + 9648) = _Q0;
  *(result + 9664) = _Q0;
  *(result + 9688) = 0x3FF0000000000000;
  *(result + 12288) = _Q0;
  *(result + 12304) = _Q0;
  *(result + 9696) = _Q0;
  *(result + 12201) = *v19;
  *(result + 12232) = 1061158912;
  *(result + 12176) = 0x3FF0000000000000;
  *(result + 12192) = 0x4031FFFFFFFFFFF6;
  *(result + 12200) = 1;
  *(result + 12204) = *&v19[3];
  *(result + 9712) = _Q0;
  *(result + 9728) = _Q0;
  *(result + 12120) = 0x3FF0000000000000;
  *(result + 12128) = _Q0;
  *(result + 12144) = _Q0;
  *(result + 12160) = _Q0;
  *(result + 9744) = 0x3FF0000000000000;
  *(result + 9760) = 0x403DFFFFFFFFFFFELL;
  *(result + 12080) = _Q0;
  *(result + 12096) = _Q0;
  *(result + 9769) = *v17;
  *(result + 11968) = _Q0;
  *(result + 11984) = _Q0;
  *(result + 12000) = _Q0;
  *(result + 11872) = _Q0;
  *(result + 11888) = _Q0;
  *(result + 11904) = _Q0;
  *(result + 11920) = _Q0;
  *(result + 11936) = _Q0;
  *(result + 11952) = _Q0;
  *(result + 11776) = _Q0;
  *(result + 11792) = _Q0;
  *(result + 11808) = _Q0;
  *(result + 11824) = _Q0;
  *(result + 11840) = _Q0;
  *(result + 11856) = _Q0;
  *(result + 11680) = _Q0;
  *(result + 11696) = _Q0;
  *(result + 11712) = _Q0;
  *(result + 11728) = _Q0;
  *(result + 11744) = _Q0;
  *(result + 11760) = _Q0;
  *(result + 11584) = _Q0;
  *(result + 11600) = _Q0;
  *(result + 11616) = _Q0;
  *(result + 11632) = _Q0;
  *(result + 11648) = _Q0;
  *(result + 11664) = _Q0;
  *(result + 11488) = _Q0;
  *(result + 11504) = _Q0;
  *(result + 11520) = _Q0;
  *(result + 11536) = _Q0;
  *(result + 11552) = _Q0;
  *(result + 11568) = _Q0;
  *(result + 9768) = 0;
  *(result + 11424) = _Q0;
  *(result + 11440) = _Q0;
  *(result + 11456) = _Q0;
  *(result + 11472) = _Q0;
  *(result + 9772) = *&v17[3];
  *(result + 11360) = 0x3FF0000000000000;
  *(result + 11368) = 0;
  *(result + 11376) = _Q0;
  *(result + 11392) = _Q0;
  *(result + 11408) = _Q0;
  *(result + 9800) = 1061997773;
  *(result + 9904) = _Q0;
  *(result + 9920) = _Q0;
  *(result + 9936) = _Q0;
  *(result + 11296) = _Q0;
  *(result + 11336) = 0x3FEB9B9BC0000000;
  *(result + 9968) = _Q0;
  *(result + 9984) = _Q0;
  *(result + 11184) = _Q0;
  *(result + 11200) = _Q0;
  *(result + 11216) = _Q0;
  *(result + 11232) = _Q0;
  *(result + 10000) = _Q0;
  *(result + 10016) = _Q0;
  *(result + 10032) = _Q0;
  *(result + 11120) = _Q0;
  *(result + 11136) = _Q0;
  *(result + 11152) = _Q0;
  *(result + 10080) = _Q0;
  *(result + 10120) = 0x3FEB9B9BC0000000;
  *(result + 10144) = 0x3FF0000000000000;
  *(result + 10152) = 0;
  *(result + 10160) = _Q0;
  *(result + 10985) = *v18;
  *(result + 10988) = *&v18[3];
  *(result + 11016) = 1061997773;
  *(result + 10912) = _Q0;
  *(result + 10928) = _Q0;
  *(result + 10944) = _Q0;
  *(result + 10960) = 0x3FF0000000000000;
  *(result + 10976) = 0x403DFFFFFFFFFFFELL;
  *(result + 10984) = 1;
  *(result + 10176) = _Q0;
  *(result + 10192) = _Q0;
  *(result + 10208) = _Q0;
  *(result + 10864) = _Q0;
  *(result + 10880) = _Q0;
  *(result + 10904) = 0x3FF0000000000000;
  *(result + 10224) = _Q0;
  *(result + 10240) = _Q0;
  *(result + 10736) = _Q0;
  *(result + 10752) = _Q0;
  *(result + 10768) = _Q0;
  *(result + 10784) = _Q0;
  *(result + 10640) = _Q0;
  *(result + 10656) = _Q0;
  *(result + 10672) = _Q0;
  *(result + 10688) = _Q0;
  *(result + 10704) = _Q0;
  *(result + 10720) = _Q0;
  *(result + 10544) = _Q0;
  *(result + 10560) = _Q0;
  *(result + 10576) = _Q0;
  *(result + 10592) = _Q0;
  *(result + 10608) = _Q0;
  *(result + 10624) = _Q0;
  *(result + 10448) = _Q0;
  *(result + 10464) = _Q0;
  *(result + 10480) = _Q0;
  *(result + 10496) = _Q0;
  *(result + 10512) = _Q0;
  *(result + 10528) = _Q0;
  *(result + 10352) = _Q0;
  *(result + 10368) = _Q0;
  *(result + 10384) = _Q0;
  *(result + 10400) = _Q0;
  *(result + 10416) = _Q0;
  *(result + 10432) = _Q0;
  *(result + 10256) = _Q0;
  *(result + 10272) = _Q0;
  *(result + 10288) = _Q0;
  *(result + 10304) = _Q0;
  *(result + 10320) = _Q0;
  *(result + 10336) = _Q0;
  *(result + 18160) = _Q0;
  *(result + 18176) = _Q0;
  *(result + 18208) = _Q0;
  *(result + 18224) = _Q0;
  *(result + 18240) = _Q0;
  *(result + 18336) = _Q0;
  *(result + 18400) = _Q0;
  *(result + 18480) = _Q0;
  *(result + 18496) = _Q0;
  *(result + 18640) = _Q0;
  *(result + 18672) = _Q0;
  *(result + 18688) = _Q0;
  *(result + 18704) = _Q0;
  *(result + 18720) = _Q0;
  *(result + 18736) = _Q0;
  *(result + 18752) = _Q0;
  *(result + 18768) = _Q0;
  *(result + 18784) = _Q0;
  *(result + 18800) = _Q0;
  *(result + 18816) = _Q0;
  *(result + 18832) = _Q0;
  *(result + 18848) = _Q0;
  *(result + 18864) = _Q0;
  *(result + 18880) = _Q0;
  *(result + 18896) = _Q0;
  *(result + 18912) = _Q0;
  *(result + 18928) = _Q0;
  *(result + 18944) = _Q0;
  *(result + 18960) = _Q0;
  *(result + 18976) = _Q0;
  *(result + 18992) = _Q0;
  *(result + 19008) = _Q0;
  *(result + 19024) = _Q0;
  *(result + 19040) = _Q0;
  *(result + 19056) = _Q0;
  *(result + 19072) = _Q0;
  *(result + 19088) = _Q0;
  *(result + 19104) = _Q0;
  *(result + 19120) = _Q0;
  *(result + 19136) = _Q0;
  *(result + 19152) = _Q0;
  *(result + 19168) = _Q0;
  *(result + 19184) = _Q0;
  *(result + 19200) = _Q0;
  *(result + 19216) = _Q0;
  *(result + 19232) = _Q0;
  *(result + 19248) = _Q0;
  *(result + 19264) = _Q0;
  *(result + 19280) = _Q0;
  *(result + 19296) = _Q0;
  *(result + 19376) = _Q0;
  *(result + 19392) = _Q0;
  *(result + 19424) = _Q0;
  *(result + 19440) = _Q0;
  *(result + 19456) = _Q0;
  *(result + 19696) = _Q0;
  *(result + 19712) = _Q0;
  *(result + 19728) = _Q0;
  *(result + 19744) = _Q0;
  *(result + 19808) = _Q0;
  *(result + 19856) = _Q0;
  *(result + 19888) = _Q0;
  *(result + 19904) = _Q0;
  *(result + 19920) = _Q0;
  *(result + 19936) = _Q0;
  *(result + 19952) = _Q0;
  *(result + 19968) = _Q0;
  *(result + 19984) = _Q0;
  *(result + 20000) = _Q0;
  *(result + 20016) = _Q0;
  *(result + 20032) = _Q0;
  *(result + 20048) = _Q0;
  *(result + 20064) = _Q0;
  *(result + 20080) = _Q0;
  *(result + 20096) = _Q0;
  *(result + 20112) = _Q0;
  *(result + 20128) = _Q0;
  *(result + 20144) = _Q0;
  *(result + 20160) = _Q0;
  *(result + 20176) = _Q0;
  *(result + 20192) = _Q0;
  *(result + 20208) = _Q0;
  *(result + 20224) = _Q0;
  *(result + 20240) = _Q0;
  *(result + 20256) = _Q0;
  *(result + 20272) = _Q0;
  *(result + 20288) = _Q0;
  *(result + 20304) = _Q0;
  *(result + 20320) = _Q0;
  *(result + 20336) = _Q0;
  *(result + 20352) = _Q0;
  *(result + 20368) = _Q0;
  *(result + 20384) = _Q0;
  *(result + 20400) = _Q0;
  *(result + 20416) = _Q0;
  *(result + 20432) = _Q0;
  *(result + 20448) = _Q0;
  *(result + 20464) = _Q0;
  *(result + 20480) = _Q0;
  *(result + 20496) = _Q0;
  *(result + 20512) = _Q0;
  *(result + 20592) = _Q0;
  *(result + 20608) = _Q0;
  *(result + 20640) = _Q0;
  *(result + 20656) = _Q0;
  *(result + 20672) = _Q0;
  *(result + 20912) = _Q0;
  *(result + 20928) = _Q0;
  *(result + 20944) = _Q0;
  *(result + 20960) = _Q0;
  *(result + 21024) = _Q0;
  *(result + 21072) = _Q0;
  *(result + 21104) = _Q0;
  *(result + 21120) = _Q0;
  *(result + 21136) = _Q0;
  *(result + 21152) = _Q0;
  *(result + 21168) = _Q0;
  *(result + 21184) = _Q0;
  *(result + 21200) = _Q0;
  *(result + 21216) = _Q0;
  *(result + 21232) = _Q0;
  *(result + 21248) = _Q0;
  *(result + 21264) = _Q0;
  *(result + 21280) = _Q0;
  *(result + 21296) = _Q0;
  *(result + 21312) = _Q0;
  *(result + 21328) = _Q0;
  *(result + 21344) = _Q0;
  *(result + 21360) = _Q0;
  *(result + 21376) = _Q0;
  *(result + 21392) = _Q0;
  *(result + 21408) = _Q0;
  *(result + 21424) = _Q0;
  *(result + 21440) = _Q0;
  *(result + 21456) = _Q0;
  *(result + 21472) = _Q0;
  *(result + 21488) = _Q0;
  *(result + 21504) = _Q0;
  *(result + 21520) = _Q0;
  *(result + 21536) = _Q0;
  *(result + 21552) = _Q0;
  *(result + 21568) = _Q0;
  *(result + 21584) = _Q0;
  *(result + 21600) = _Q0;
  *(result + 21616) = _Q0;
  *(result + 21632) = _Q0;
  *(result + 21648) = _Q0;
  *(result + 21664) = _Q0;
  *(result + 21680) = _Q0;
  *(result + 21696) = _Q0;
  *(result + 21712) = _Q0;
  *(result + 21728) = _Q0;
  *(result + 21808) = _Q0;
  *(result + 21824) = _Q0;
  *(result + 21856) = _Q0;
  *(result + 21872) = _Q0;
  *(result + 21888) = _Q0;
  *(result + 7688) = 0x3FEF0AE2E0000000;
  *(result + 7712) = 0x3FF0000000000000;
  *(result + 7720) = 0;
  *(result + 18200) = 0x3FF0000000000000;
  *(result + 18256) = 0x3FF0000000000000;
  *(result + 18272) = 0xC028000000000000;
  *(result + 18280) = 1;
  *(result + 18281) = *v24;
  *(result + 18284) = *&v24[3];
  *(result + 18312) = 1036831948;
  *(result + 18632) = 0x3FF0000000000000;
  *(result + 18656) = 0;
  *(result + 18664) = 1065353216;
  *(result + 19416) = 0x3FF0000000000000;
  *(result + 19472) = 0x3FF0000000000000;
  *(result + 19488) = 0xC04E000000000002;
  *(result + 19496) = 1;
  *(result + 19497) = *v25;
  *(result + 19500) = *&v25[3];
  *(result + 19528) = 1040242952;
  *(result + 19848) = 0x3FF0000000000000;
  *(result + 19872) = 0;
  *(result + 19880) = 1065353216;
  *(result + 20632) = 0x3FF0000000000000;
  *(result + 20688) = 0x3FF0000000000000;
  *(result + 20704) = 0xC056800000000000;
  *(result + 20712) = 1;
  *(result + 20713) = *v26;
  *(result + 20716) = *&v26[3];
  *(result + 20744) = 1040242952;
  *(result + 21064) = 0x3FF0000000000000;
  *(result + 21088) = 0;
  *(result + 21096) = 1065353216;
  *(result + 21848) = 0x3FF0000000000000;
  *(result + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCB248F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  v1 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 80) = v1;
  *(v0 + 96) = xmmword_1BCE3D340;
  v2 = v1;
  v13 = v1;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V30.2D, #0.5 }

  *(v0 + 208) = _Q30;
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
  *(v0 + 384) = 0x3E4CCCCD3F800000;
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
  v14 = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 1072) = v14;
  *(v0 + 1088) = xmmword_1BCE3C940;
  *(v0 + 1104) = xmmword_1BCE3C950;
  *(v0 + 1120) = xmmword_1BCE3C960;
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
  *(v0 + 1257) = *v15;
  *(v0 + 1260) = *&v15[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = v2;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q30;
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
  *(v0 + 1600) = 0x3E4CCCCD3F800000;
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
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 3488) = _Q0;
  v12 = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3504) = v12;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v17;
  *(v0 + 3692) = *&v17[3];
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
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4905) = *v18;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE424C0;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE424E0;
  *(v0 + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  strcpy((v0 + 5232), "fff?fff?333?fff?fff?");
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v18[3];
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE42500;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE44750;
  *(v0 + 6208) = xmmword_1BCE44760;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE42520;
  *(v0 + 6416) = xmmword_1BCE42530;
  *(v0 + 6432) = xmmword_1BCE42540;
  *(v0 + 6448) = xmmword_1BCE42550;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7360) = 1147207680;
  *(v0 + 7408) = xmmword_1BCE44770;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE42570;
  *(v0 + 7648) = xmmword_1BCE42580;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 8624) = xmmword_1BCE44780;
  *(v0 + 9840) = xmmword_1BCE44780;
  *(v0 + 11056) = xmmword_1BCE44780;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 11072) = xmmword_1BCE3C9D0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11264) = xmmword_1BCE42590;
  v9 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v9;
  *(v0 + 10096) = v9;
  *(v0 + 11312) = v9;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 12224) = 0x146D097C447A0000;
  v10 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v10;
  *(v0 + 8592) = v10;
  *(v0 + 9808) = v10;
  *(v0 + 11024) = v10;
  *(v0 + 12240) = v10;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE447F0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE425A0;
  *(v0 + 13440) = 0x2C31C71D44610000;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9C9CC0000000uLL);
  *(v0 + 13472) = xmmword_1BCE425B0;
  *(v0 + 13488) = xmmword_1BCE44800;
  *(v0 + 13520) = xmmword_1BCE425D0;
  *(v0 + 13536) = xmmword_1BCE425E0;
  *(v0 + 7488) = xmmword_1BCE3CBA0;
  *(v0 + 13568) = xmmword_1BCE3CBA0;
  *(v0 + 13712) = xmmword_1BCE425F0;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE42600;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE42610;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2672) = xmmword_1BCE50220;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2816) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2752) = xmmword_1BCE3E2C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE43150;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q30;
  *(v0 + 2473) = *v16;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2476) = *&v16[3];
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2288) = v14;
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2272) = _Q0;
  *(v0 + 5040) = xmmword_1BCE424D0;
  *(v0 + 5056) = xmmword_1BCE3C8C0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5253) = 0;
  *(v0 + 5254) = 0;
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
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6121) = *v19;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v19[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
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
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7337) = *v20;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v20[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3E790;
  *(v0 + 14704) = xmmword_1BCE42620;
  *(v0 + 14720) = xmmword_1BCE42630;
  *(v0 + 14736) = xmmword_1BCE42640;
  *(v0 + 14752) = xmmword_1BCE42650;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14928) = xmmword_1BCE42660;
  *(v0 + 14944) = xmmword_1BCE42670;
  *(v0 + 14960) = xmmword_1BCE42680;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
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
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 16000) = xmmword_1BCE3CBB0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 7616) = xmmword_1BCE3E230;
  *(v0 + 10048) = xmmword_1BCE3E230;
  *(v0 + 13696) = xmmword_1BCE3E230;
  *(v0 + 16128) = xmmword_1BCE3E230;
  *(v0 + 16144) = xmmword_1BCE42690;
  *(v0 + 16160) = xmmword_1BCE426A0;
  *(v0 + 16176) = xmmword_1BCE426B0;
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
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE424D0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 8832) = xmmword_1BCE3ECB0;
  *(v0 + 12480) = xmmword_1BCE3ECB0;
  *(v0 + 14912) = xmmword_1BCE3ECB0;
  *(v0 + 17344) = xmmword_1BCE3ECB0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE426C0;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  *(v0 + 18192) = 0x4170000041A00000;
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3C9B0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18480) = xmmword_1BCE50220;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE43150;
  *(v0 + 18560) = xmmword_1BCE3E2C0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13504) = xmmword_1BCE3CA00;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 19312) = v12;
  *(v0 + 19328) = xmmword_1BCE3CA20;
  *(v0 + 19344) = xmmword_1BCE3CA30;
  *(v0 + 19360) = xmmword_1BCE3CA40;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
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
  *(v0 + 19536) = v13;
  *(v0 + 20752) = v13;
  *(v0 + 19552) = xmmword_1BCE3D340;
  *(v0 + 20768) = xmmword_1BCE3D340;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 10912) = _Q30;
  *(v0 + 12128) = _Q30;
  *(v0 + 13344) = _Q30;
  *(v0 + 18448) = _Q30;
  *(v0 + 19664) = _Q30;
  *(v0 + 20880) = _Q30;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 17216) = xmmword_1BCE3C8C0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3E4CCCCD3F800000;
  *(v0 + 21056) = 0x3E4CCCCD3F800000;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 20528) = v14;
  *(v0 + 21744) = v14;
  *(v0 + 20544) = xmmword_1BCE3C940;
  *(v0 + 21760) = xmmword_1BCE3C940;
  *(v0 + 20560) = xmmword_1BCE3C950;
  *(v0 + 21776) = xmmword_1BCE3C950;
  *(v0 + 20576) = xmmword_1BCE3C960;
  *(v0 + 21792) = xmmword_1BCE3C960;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 17065) = *v28;
  *(v0 + 17068) = *&v28[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7600) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v27;
  *(v0 + 15852) = *&v27[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
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
  *(v0 + 8160) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14633) = *v26;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14636) = *&v26[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v21;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8556) = *&v21[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 13552) = _Q0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 13448) = 1060320051;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 13417) = *v25;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v25[3];
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v24;
  *(v0 + 12204) = *&v24[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9769) = *v22;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10985) = *v23;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v23[3];
  *(v0 + 9772) = *&v22[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10032) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
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
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v29;
  *(v0 + 18284) = *&v29[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v30;
  *(v0 + 19500) = *&v30[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v31;
  *(v0 + 20716) = *&v31[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCB26B84@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA39604();
  v4 = v3;
  sub_1BCA39604();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE50250;
  *(a1 + 240) = 0x4190000041727059;
  *(a1 + 248) = 1126170624;
  *(a1 + 256) = 0x3E25E3543DF5C28FLL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310165;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q1;
  *(a1 + 320) = 0x437A000041500000;
  *(a1 + 328) = 0x3E6666663DDD2F1BLL;
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
  *(a1 + 712) = 0x3F19999A3F000000;
  *(a1 + 720) = 0x41A0000041700000;
  *(a1 + 728) = 1092616192;
  *(a1 + 736) = 1;
  *(a1 + 744) = 12;
  *(a1 + 752) = xmmword_1BCE50260;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q1;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3F333333;
  *(a1 + 848) = 0x4188000041600000;
  *(a1 + 856) = 1093664768;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE50270;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q1;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F333333;
  __asm { FMOV            V4.2S, #13.0 }

  *(a1 + 976) = _D4;
  *(a1 + 984) = 1091291412;
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
  *(a1 + 1200) = _Q1;
  *(a1 + 1216) = xmmword_1BCE43210;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E9374BC3E5D2F1BLL;
  *(a1 + 1296) = 0x41C8000041880000;
  *(a1 + 1304) = 1099951505;
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
  *(v2 + 209) = 0x300000101000101;
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
  *(a1 + 1888) = _Q1;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
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
  *(a1 + 2016) = xmmword_1BCE3C080;
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
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
  return result;
}

void sub_1BCB272E0(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCB27A68();
  v4 = v3;
  sub_1BCB27A68();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE502C0;
  *(a1 + 96) = xmmword_1BCE502D0;
  *(a1 + 112) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE4FAF0;
  *(a1 + 160) = xmmword_1BCE502E0;
  *(a1 + 176) = 1169915904;
  *(a1 + 184) = 0x3E8F5C293DCCCCCDLL;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE42B10;
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
  *(a1 + 712) = vdup_n_s32(0x40799999u);
  __asm { FMOV            V1.2S, #18.0 }

  *(a1 + 720) = _D1;
  *(a1 + 728) = 1098373816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3BF80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = vdup_n_s32(0x4099999Au);
  *(a1 + 848) = 0x4180000041400000;
  *(a1 + 856) = 1087928784;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE4F930;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  __asm { FMOV            V1.2S, #6.0 }

  *(a1 + 968) = _D1;
  *(a1 + 976) = 0x4180000041600000;
  *(a1 + 984) = 1094970716;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
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
  *(a1 + 1216) = xmmword_1BCE502F0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 1;
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
  *(a1 + 1552) = xmmword_1BCE4FB50;
  *(a1 + 1568) = 0x42B875C2424FCCCCLL;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE4FB60;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1646) = 16843009;
  *(a1 + 1649) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v15;
  *(a1 + 1659) = v16;
  *(a1 + 1660) = 1064397920;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE4AA70;
  *(a1 + 1712) = xmmword_1BCE4AA80;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
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
  *(a1 + 2120) = 0x3E23D70A3D75C28FLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1063675494;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v14;
}

__n128 sub_1BCB27A68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3E120;
  *(v0 + 48) = xmmword_1BCE3E8F0;
  *(v0 + 2480) = xmmword_1BCE3CE40;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 2496) = 0x437A000044BB8000;
  *(v0 + 3712) = 0x437A000044BB8000;
  *(v0 + 2512) = xmmword_1BCE3E930;
  *(v0 + 3728) = xmmword_1BCE3E930;
  *(v0 + 2544) = xmmword_1BCE4FCE0;
  *(v0 + 3760) = xmmword_1BCE4FCE0;
  *(v0 + 2560) = xmmword_1BCE3E950;
  *(v0 + 3776) = xmmword_1BCE3E950;
  *(v0 + 2576) = xmmword_1BCE3E960;
  *(v0 + 3792) = xmmword_1BCE3E960;
  *(v0 + 2672) = xmmword_1BCE4FCF0;
  *(v0 + 3888) = xmmword_1BCE4FCF0;
  *(v0 + 2688) = xmmword_1BCE4FD00;
  *(v0 + 3904) = xmmword_1BCE4FD00;
  *(v0 + 2704) = xmmword_1BCE4FD10;
  *(v0 + 3920) = xmmword_1BCE4FD10;
  *(v0 + 2720) = xmmword_1BCE4FD20;
  *(v0 + 3936) = xmmword_1BCE4FD20;
  *(v0 + 2736) = xmmword_1BCE4FD30;
  *(v0 + 3952) = xmmword_1BCE4FD30;
  *(v0 + 2752) = xmmword_1BCE4FD40;
  *(v0 + 3968) = xmmword_1BCE4FD40;
  *(v0 + 2768) = xmmword_1BCE4FD50;
  *(v0 + 3984) = xmmword_1BCE4FD50;
  *(v0 + 2784) = xmmword_1BCE4FD60;
  *(v0 + 4000) = xmmword_1BCE4FD60;
  *(v0 + 2800) = xmmword_1BCE3FD30;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 2816) = 1063675494;
  *(v0 + 4032) = 1063675494;
  *(v0 + 2832) = xmmword_1BCE3E9D0;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 2864) = xmmword_1BCE4FD70;
  *(v0 + 4080) = xmmword_1BCE4FD70;
  *(v0 + 2880) = xmmword_1BCE4FD80;
  *(v0 + 4096) = xmmword_1BCE4FD80;
  *(v0 + 2896) = xmmword_1BCE4FD90;
  *(v0 + 4112) = xmmword_1BCE4FD90;
  *(v0 + 2912) = xmmword_1BCE4FDA0;
  *(v0 + 4128) = xmmword_1BCE4FDA0;
  *(v0 + 2928) = xmmword_1BCE4FDB0;
  *(v0 + 4144) = xmmword_1BCE4FDB0;
  *(v0 + 2944) = xmmword_1BCE4FDC0;
  *(v0 + 4160) = xmmword_1BCE4FDC0;
  *(v0 + 2960) = xmmword_1BCE4FDD0;
  *(v0 + 4176) = xmmword_1BCE4FDD0;
  *(v0 + 2976) = xmmword_1BCE4FDE0;
  *(v0 + 4192) = xmmword_1BCE4FDE0;
  *(v0 + 2992) = xmmword_1BCE4FDF0;
  *(v0 + 4208) = xmmword_1BCE4FDF0;
  *(v0 + 3008) = xmmword_1BCE41640;
  *(v0 + 4224) = xmmword_1BCE41640;
  *(v0 + 3024) = xmmword_1BCE4FE00;
  *(v0 + 4240) = xmmword_1BCE4FE00;
  *(v0 + 3040) = xmmword_1BCE4FE10;
  *(v0 + 4256) = xmmword_1BCE4FE10;
  *(v0 + 3440) = xmmword_1BCE4FE20;
  *(v0 + 4656) = xmmword_1BCE4FE20;
  *(v0 + 3456) = xmmword_1BCE4FE30;
  *(v0 + 4672) = xmmword_1BCE4FE30;
  *(v0 + 3472) = xmmword_1BCE4FE40;
  *(v0 + 4688) = xmmword_1BCE4FE40;
  *(v0 + 3488) = xmmword_1BCE40080;
  *(v0 + 4704) = xmmword_1BCE40080;
  *(v0 + 64) = 0x4296000043FA0000;
  *(v0 + 1264) = xmmword_1BCE3E8F0;
  *(v0 + 4912) = xmmword_1BCE3E8F0;
  *(v0 + 6128) = xmmword_1BCE3E8F0;
  *(v0 + 1280) = 0x4296000043FA0000;
  *(v0 + 4928) = 0x4296000043FA0000;
  *(v0 + 6144) = 0x4296000043FA0000;
  *(v0 + 80) = xmmword_1BCE3E720;
  *(v0 + 96) = xmmword_1BCE3E730;
  *(v0 + 1296) = xmmword_1BCE3E720;
  *(v0 + 4944) = xmmword_1BCE3E720;
  *(v0 + 6160) = xmmword_1BCE3E720;
  *(v0 + 1312) = xmmword_1BCE3E730;
  *(v0 + 4960) = xmmword_1BCE3E730;
  *(v0 + 6176) = xmmword_1BCE3E730;
  *(v0 + 112) = xmmword_1BCE3E740;
  *(v0 + 128) = xmmword_1BCE3E750;
  *(v0 + 1328) = xmmword_1BCE3E740;
  *(v0 + 4976) = xmmword_1BCE3E740;
  *(v0 + 6192) = xmmword_1BCE3E740;
  *(v0 + 1344) = xmmword_1BCE3E750;
  *(v0 + 4992) = xmmword_1BCE3E750;
  *(v0 + 6208) = xmmword_1BCE3E750;
  *(v0 + 144) = xmmword_1BCE3E760;
  *(v0 + 160) = xmmword_1BCE3E770;
  *(v0 + 1360) = xmmword_1BCE3E760;
  *(v0 + 5008) = xmmword_1BCE3E760;
  *(v0 + 6224) = xmmword_1BCE3E760;
  *(v0 + 1376) = xmmword_1BCE3E770;
  *(v0 + 5024) = xmmword_1BCE3E770;
  *(v0 + 6240) = xmmword_1BCE3E770;
  *(v0 + 240) = xmmword_1BCE4FB70;
  *(v0 + 256) = xmmword_1BCE4FB80;
  *(v0 + 1456) = xmmword_1BCE4FB70;
  *(v0 + 5104) = xmmword_1BCE4FB70;
  *(v0 + 6320) = xmmword_1BCE4FB70;
  *(v0 + 1472) = xmmword_1BCE4FB80;
  *(v0 + 5120) = xmmword_1BCE4FB80;
  *(v0 + 6336) = xmmword_1BCE4FB80;
  *(v0 + 272) = xmmword_1BCE4FB90;
  *(v0 + 288) = xmmword_1BCE3E1D0;
  *(v0 + 1488) = xmmword_1BCE4FB90;
  *(v0 + 5136) = xmmword_1BCE4FB90;
  *(v0 + 6352) = xmmword_1BCE4FB90;
  *(v0 + 1504) = xmmword_1BCE3E1D0;
  *(v0 + 5152) = xmmword_1BCE3E1D0;
  *(v0 + 6368) = xmmword_1BCE3E1D0;
  *(v0 + 304) = xmmword_1BCE4FBA0;
  *(v0 + 320) = xmmword_1BCE4FBB0;
  *(v0 + 1520) = xmmword_1BCE4FBA0;
  *(v0 + 5168) = xmmword_1BCE4FBA0;
  *(v0 + 6384) = xmmword_1BCE4FBA0;
  *(v0 + 1536) = xmmword_1BCE4FBB0;
  *(v0 + 5184) = xmmword_1BCE4FBB0;
  *(v0 + 6400) = xmmword_1BCE4FBB0;
  *(v0 + 336) = xmmword_1BCE4FBC0;
  *(v0 + 352) = xmmword_1BCE4FBD0;
  *(v0 + 1552) = xmmword_1BCE4FBC0;
  *(v0 + 5200) = xmmword_1BCE4FBC0;
  *(v0 + 6416) = xmmword_1BCE4FBC0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1568) = xmmword_1BCE4FBD0;
  *(v0 + 5216) = xmmword_1BCE4FBD0;
  *(v0 + 6432) = xmmword_1BCE4FBD0;
  *(v0 + 384) = 0x3F8000003F666666;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 5232) = xmmword_1BCE3FC10;
  *(v0 + 6448) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F666666;
  *(v0 + 5248) = 0x3F8000003F666666;
  *(v0 + 6464) = 0x3F8000003F666666;
  *(v0 + 432) = xmmword_1BCE4FBE0;
  *(v0 + 448) = xmmword_1BCE4FBF0;
  *(v0 + 1648) = xmmword_1BCE4FBE0;
  *(v0 + 5296) = xmmword_1BCE4FBE0;
  *(v0 + 6512) = xmmword_1BCE4FBE0;
  *(v0 + 1664) = xmmword_1BCE4FBF0;
  *(v0 + 5312) = xmmword_1BCE4FBF0;
  *(v0 + 6528) = xmmword_1BCE4FBF0;
  *(v0 + 464) = xmmword_1BCE4FC00;
  *(v0 + 480) = xmmword_1BCE4FC10;
  *(v0 + 1680) = xmmword_1BCE4FC00;
  *(v0 + 5328) = xmmword_1BCE4FC00;
  *(v0 + 6544) = xmmword_1BCE4FC00;
  *(v0 + 1696) = xmmword_1BCE4FC10;
  *(v0 + 5344) = xmmword_1BCE4FC10;
  *(v0 + 6560) = xmmword_1BCE4FC10;
  *(v0 + 496) = xmmword_1BCE4FC20;
  *(v0 + 512) = xmmword_1BCE4FC30;
  *(v0 + 1712) = xmmword_1BCE4FC20;
  *(v0 + 5360) = xmmword_1BCE4FC20;
  *(v0 + 6576) = xmmword_1BCE4FC20;
  *(v0 + 1728) = xmmword_1BCE4FC30;
  *(v0 + 5376) = xmmword_1BCE4FC30;
  *(v0 + 6592) = xmmword_1BCE4FC30;
  *(v0 + 528) = xmmword_1BCE4FC40;
  *(v0 + 544) = xmmword_1BCE4FC50;
  *(v0 + 1744) = xmmword_1BCE4FC40;
  *(v0 + 5392) = xmmword_1BCE4FC40;
  *(v0 + 6608) = xmmword_1BCE4FC40;
  *(v0 + 1760) = xmmword_1BCE4FC50;
  *(v0 + 5408) = xmmword_1BCE4FC50;
  *(v0 + 6624) = xmmword_1BCE4FC50;
  *(v0 + 560) = xmmword_1BCE4FC60;
  *(v0 + 576) = xmmword_1BCE4FC70;
  *(v0 + 1776) = xmmword_1BCE4FC60;
  *(v0 + 5424) = xmmword_1BCE4FC60;
  *(v0 + 6640) = xmmword_1BCE4FC60;
  *(v0 + 1792) = xmmword_1BCE4FC70;
  *(v0 + 5440) = xmmword_1BCE4FC70;
  *(v0 + 6656) = xmmword_1BCE4FC70;
  *(v0 + 592) = xmmword_1BCE4FC80;
  *(v0 + 608) = xmmword_1BCE4FC90;
  *(v0 + 1808) = xmmword_1BCE4FC80;
  *(v0 + 5456) = xmmword_1BCE4FC80;
  *(v0 + 6672) = xmmword_1BCE4FC80;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1824) = xmmword_1BCE4FC90;
  *(v0 + 5472) = xmmword_1BCE4FC90;
  *(v0 + 6688) = xmmword_1BCE4FC90;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE4FCA0;
  *(v0 + 5872) = xmmword_1BCE4FCA0;
  *(v0 + 7088) = xmmword_1BCE4FCA0;
  *(v0 + 1008) = xmmword_1BCE4FCA0;
  *(v0 + 1024) = xmmword_1BCE4FCB0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 2240) = xmmword_1BCE4FCB0;
  *(v0 + 5888) = xmmword_1BCE4FCB0;
  *(v0 + 7104) = xmmword_1BCE4FCB0;
  *(v0 + 1040) = xmmword_1BCE4FCC0;
  *(v0 + 2256) = xmmword_1BCE4FCC0;
  *(v0 + 5904) = xmmword_1BCE4FCC0;
  *(v0 + 7120) = xmmword_1BCE4FCC0;
  *(v0 + 1056) = xmmword_1BCE4FCD0;
  *(v0 + 2272) = xmmword_1BCE4FCD0;
  *(v0 + 5920) = xmmword_1BCE4FCD0;
  *(v0 + 7136) = xmmword_1BCE4FCD0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3504) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3248) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3152) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 624) = result;
  *(v0 + 3056) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 944) = result;
  *(v0 + 976) = result;
  *(v0 + 176) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 400) = result;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 656) = result;
  *(v0 + 752) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 2640) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 2592) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 2400) = result;
  *(v0 + 2528) = result;
  *(v0 + 2473) = *v7;
  *(v0 + 2476) = *&v7[3];
  *(v0 + 2504) = 1062836634;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0x404E000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 2320) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2288) = result;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2192) = result;
  *(v0 + 1257) = *v6;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 1260) = *&v6[3];
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 1288) = 1060320051;
  *(v0 + 1392) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 1408) = result;
  *(v0 + 1424) = result;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 3536) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3744) = result;
  *(v0 + 3808) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4624) = result;
  *(v0 + 4720) = result;
  *(v0 + 4752) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5264) = result;
  *(v0 + 5488) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5584) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5840) = result;
  *(v0 + 5936) = result;
  *(v0 + 5968) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6480) = result;
  *(v0 + 6704) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6800) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7056) = result;
  *(v0 + 7152) = result;
  *(v0 + 7184) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1060320051;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3689) = *v8;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x404E000000000000;
  *(v0 + 3688) = 1;
  *(v0 + 3692) = *&v8[3];
  *(v0 + 3720) = 1062836634;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0xC032000000000004;
  *(v0 + 4905) = *v9;
  *(v0 + 4904) = 1;
  *(v0 + 4908) = *&v9[3];
  *(v0 + 4936) = 1060320051;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0xC056800000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v10;
  *(v0 + 6124) = *&v10[3];
  *(v0 + 6152) = 1060320051;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  return result;
}

double CGSize.length.getter(double result, double a2)
{
  if (a2 >= result)
  {
    return a2;
  }

  return result;
}

void sub_1BCB284E8(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCB28C68();
  v4 = v3;
  sub_1BCB28C68();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE50320;
  *(a1 + 96) = xmmword_1BCE50330;
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
  *(a1 + 256) = 0x3E9EB8523E428F5CLL;
  *(a1 + 264) = 0x406D70A441500000;
  *(a1 + 272) = 1084227584;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x44160000420F0000;
  *(a1 + 328) = 0x3EAE147B3E19999ALL;
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
  *(a1 + 712) = 0x40C0000040400000;
  *(a1 + 720) = 0x41B770A441900000;
  *(a1 + 728) = 1105199104;
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
  *(a1 + 984) = 1101529088;
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
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE50340;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 1;
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
  *(a1 + 1650) = 256;
  *(a1 + 1652) = 3;
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
  *(a1 + 1968) = xmmword_1BCE4E750;
  *(a1 + 1984) = 0x3F80000041A00000;
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
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x3F4CCCCD3F000000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1062803079;
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

__n128 sub_1BCB28C68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 4976) = xmmword_1BCE4A7B0;
  *(v0 + 6192) = xmmword_1BCE4A7B0;
  *(v0 + 4992) = xmmword_1BCE3FD60;
  *(v0 + 6208) = xmmword_1BCE3FD60;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5600) = xmmword_1BCE4A7C0;
  *(v0 + 6816) = xmmword_1BCE4A7C0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1143930880;
  *(v0 + 7360) = 1143930880;
  *(v0 + 3760) = xmmword_1BCE3FD00;
  *(v0 + 7408) = xmmword_1BCE3FD00;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 3984) = xmmword_1BCE4A7A0;
  *(v0 + 5200) = xmmword_1BCE4A7A0;
  *(v0 + 6416) = xmmword_1BCE4A7A0;
  *(v0 + 7632) = xmmword_1BCE4A7A0;
  *(v0 + 4000) = xmmword_1BCE3FD20;
  *(v0 + 5216) = xmmword_1BCE3FD20;
  *(v0 + 6432) = xmmword_1BCE3FD20;
  *(v0 + 7648) = xmmword_1BCE3FD20;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4288) = xmmword_1BCE3CBA0;
  *(v0 + 7936) = xmmword_1BCE3CBA0;
  *(v0 + 3968) = xmmword_1BCE3E350;
  *(v0 + 4672) = xmmword_1BCE3E350;
  *(v0 + 5184) = xmmword_1BCE3E350;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 6400) = xmmword_1BCE3E350;
  *(v0 + 7104) = xmmword_1BCE3E350;
  *(v0 + 7616) = xmmword_1BCE3E350;
  *(v0 + 8320) = xmmword_1BCE3E350;
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
  *(v0 + 2736) = xmmword_1BCE40010;
  *(v0 + 8816) = xmmword_1BCE40010;
  *(v0 + 2752) = xmmword_1BCE48D60;
  *(v0 + 8832) = xmmword_1BCE48D60;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2816) = 0x3F4CCCCD3F333333;
  *(v0 + 8896) = 0x3F4CCCCD3F333333;
  *(v0 + 3072) = xmmword_1BCE4A790;
  *(v0 + 9152) = xmmword_1BCE4A790;
  *(v0 + 1280) = 0x4120000043480000;
  *(v0 + 9792) = 0x4120000043480000;
  *(v0 + 1328) = xmmword_1BCE4A740;
  *(v0 + 9840) = xmmword_1BCE4A740;
  *(v0 + 1344) = xmmword_1BCE48C50;
  *(v0 + 9856) = xmmword_1BCE48C50;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1488) = xmmword_1BCE4A750;
  *(v0 + 10000) = xmmword_1BCE4A750;
  *(v0 + 1504) = xmmword_1BCE4A760;
  *(v0 + 10016) = xmmword_1BCE4A760;
  *(v0 + 1520) = xmmword_1BCE4A770;
  *(v0 + 10032) = xmmword_1BCE4A770;
  *(v0 + 1552) = xmmword_1BCE48C80;
  *(v0 + 10064) = xmmword_1BCE48C80;
  *(v0 + 1568) = xmmword_1BCE4A780;
  *(v0 + 10080) = xmmword_1BCE4A780;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 272) = xmmword_1BCE3FC60;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  *(v0 + 11216) = xmmword_1BCE3FC60;
  *(v0 + 304) = xmmword_1BCE3FC80;
  *(v0 + 320) = xmmword_1BCE3ED10;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  *(v0 + 11248) = xmmword_1BCE3FC80;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3FC00;
  *(v0 + 1536) = xmmword_1BCE3ED10;
  *(v0 + 10048) = xmmword_1BCE3ED10;
  *(v0 + 11264) = xmmword_1BCE3ED10;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 384) = 0x3F8000003F333333;
  *(v0 + 2784) = xmmword_1BCE3FC00;
  *(v0 + 8864) = xmmword_1BCE3FC00;
  *(v0 + 11296) = xmmword_1BCE3FC00;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 2800) = xmmword_1BCE3FC10;
  *(v0 + 8880) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F333333;
  *(v0 + 10112) = 0x3F8000003F333333;
  *(v0 + 11328) = 0x3F8000003F333333;
  *(v0 + 512) = xmmword_1BCE3A880;
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
  *(v0 + 544) = xmmword_1BCE3D430;
  *(v0 + 576) = xmmword_1BCE3A880;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 1760) = xmmword_1BCE3D430;
  *(v0 + 2976) = xmmword_1BCE3D430;
  *(v0 + 4192) = xmmword_1BCE3D430;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 7840) = xmmword_1BCE3D430;
  *(v0 + 9056) = xmmword_1BCE3D430;
  *(v0 + 10272) = xmmword_1BCE3D430;
  *(v0 + 11488) = xmmword_1BCE3D430;
  *(v0 + 736) = xmmword_1BCE3E1D0;
  *(v0 + 1952) = xmmword_1BCE3E1D0;
  *(v0 + 3168) = xmmword_1BCE3E1D0;
  *(v0 + 9248) = xmmword_1BCE3E1D0;
  *(v0 + 10464) = xmmword_1BCE3E1D0;
  *(v0 + 11680) = xmmword_1BCE3E1D0;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 864) = xmmword_1BCE3FC20;
  *(v0 + 2080) = xmmword_1BCE3FC20;
  *(v0 + 3296) = xmmword_1BCE3FC20;
  *(v0 + 4512) = xmmword_1BCE3FC20;
  *(v0 + 5728) = xmmword_1BCE3FC20;
  *(v0 + 6944) = xmmword_1BCE3FC20;
  *(v0 + 8160) = xmmword_1BCE3FC20;
  *(v0 + 9376) = xmmword_1BCE3FC20;
  *(v0 + 10592) = xmmword_1BCE3FC20;
  *(v0 + 11808) = xmmword_1BCE3FC20;
  *(v0 + 672) = xmmword_1BCE3CBC0;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 832) = xmmword_1BCE3A880;
  *(v0 + 1024) = xmmword_1BCE3A880;
  *(v0 + 1056) = xmmword_1BCE3CBC0;
  *(v0 + 1728) = xmmword_1BCE3A880;
  *(v0 + 1792) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 2240) = xmmword_1BCE3A880;
  *(v0 + 2944) = xmmword_1BCE3A880;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 3456) = xmmword_1BCE3A880;
  *(v0 + 4160) = xmmword_1BCE3A880;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 8336) = result;
  *(v0 + 8352) = xmmword_1BCE3CBC0;
  *(v0 + 8368) = result;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 8240) = result;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = result;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = result;
  *(v0 + 5376) = xmmword_1BCE3A880;
  *(v0 + 8144) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = result;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 7856) = result;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 7888) = result;
  *(v0 + 7904) = xmmword_1BCE3C8C0;
  *(v0 + 7920) = result;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 7760) = result;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7792) = result;
  *(v0 + 7808) = xmmword_1BCE3A880;
  *(v0 + 7824) = result;
  *(v0 + 6592) = xmmword_1BCE3A880;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 7337) = *v11;
  *(v0 + 7368) = 1058642330;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = result;
  *(v0 + 7600) = result;
  *(v0 + 7552) = result;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 9024) = xmmword_1BCE3A880;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 9536) = xmmword_1BCE3A880;
  *(v0 + 10240) = xmmword_1BCE3A880;
  *(v0 + 10304) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE3A880;
  *(v0 + 10752) = xmmword_1BCE3A880;
  *(v0 + 11456) = xmmword_1BCE3A880;
  *(v0 + 11520) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11776) = xmmword_1BCE3A880;
  *(v0 + 11968) = xmmword_1BCE3A880;
  *(v0 + 7340) = *&v11[3];
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000010;
  *(v0 + 7336) = 1;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 1888) = xmmword_1BCE3CBC0;
  *(v0 + 7120) = result;
  *(v0 + 7136) = xmmword_1BCE3CBC0;
  *(v0 + 7152) = result;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = result;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7088) = result;
  *(v0 + 2272) = xmmword_1BCE3CBC0;
  *(v0 + 3104) = xmmword_1BCE3CBC0;
  *(v0 + 6928) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 3488) = xmmword_1BCE3CBC0;
  *(v0 + 4704) = xmmword_1BCE3CBC0;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 5920) = xmmword_1BCE3CBC0;
  *(v0 + 6720) = xmmword_1BCE3C8C0;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6800) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6640) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = xmmword_1BCE3C8C0;
  *(v0 + 6704) = result;
  *(v0 + 6576) = result;
  *(v0 + 6608) = result;
  *(v0 + 9184) = xmmword_1BCE3CBC0;
  *(v0 + 9568) = xmmword_1BCE3CBC0;
  *(v0 + 10400) = xmmword_1BCE3CBC0;
  *(v0 + 10784) = xmmword_1BCE3CBC0;
  *(v0 + 11616) = xmmword_1BCE3CBC0;
  *(v0 + 12000) = xmmword_1BCE3CBC0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 608) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 6368) = result;
  *(v0 + 6384) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 1824) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 6256) = result;
  *(v0 + 3040) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 6121) = *v10;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 6124) = *&v10[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 5968) = result;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 4256) = xmmword_1BCE3C8C0;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 5872) = result;
  *(v0 + 5904) = result;
  *(v0 + 5936) = result;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = result;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 5680) = result;
  *(v0 + 5712) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5584) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5488) = result;
  *(v0 + 5504) = xmmword_1BCE3C8C0;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = result;
  *(v0 + 5392) = result;
  *(v0 + 5424) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = xmmword_1BCE3C8C0;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5360) = result;
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
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = result;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 4905) = *v9;
  *(v0 + 4936) = 1061997773;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v9[3];
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 4320) = result;
  *(v0 + 4720) = result;
  *(v0 + 4752) = result;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = result;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = result;
  *(v0 + 4688) = result;
  *(v0 + 4400) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4496) = result;
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
  *(v0 + 4240) = result;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4144) = result;
  *(v0 + 4176) = result;
  *(v0 + 4208) = result;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = result;
  *(v0 + 208) = result;
  *(v0 + 464) = result;
  *(v0 + 496) = result;
  *(v0 + 528) = result;
  *(v0 + 560) = result;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 592) = result;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 624) = result;
  *(v0 + 656) = result;
  *(v0 + 688) = result;
  *(v0 + 3824) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 720) = result;
  *(v0 + 784) = result;
  *(v0 + 816) = result;
  *(v0 + 848) = result;
  *(v0 + 944) = result;
  *(v0 + 3616) = result;
  *(v0 + 3689) = *v8;
  *(v0 + 3692) = *&v8[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 3688) = 0;
  *(v0 + 976) = result;
  *(v0 + 1008) = result;
  *(v0 + 3536) = result;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 176) = result;
  *(v0 + 192) = result;
  *(v0 + 3440) = result;
  *(v0 + 3472) = result;
  *(v0 + 3504) = result;
  *(v0 + 400) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 3248) = result;
  *(v0 + 3280) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 3152) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 1040) = result;
  *(v0 + 1072) = result;
  *(v0 + 3056) = result;
  *(v0 + 3088) = result;
  *(v0 + 3120) = result;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 2960) = result;
  *(v0 + 2992) = result;
  *(v0 + 3024) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 2896) = result;
  *(v0 + 2928) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v6;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 1260) = *&v6[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 1424) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = result;
  *(v0 + 1712) = result;
  *(v0 + 1744) = result;
  *(v0 + 1776) = result;
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v7;
  *(v0 + 2476) = *&v7[3];
  *(v0 + 2504) = 1050253722;
  *(v0 + 1808) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 2288) = result;
  *(v0 + 2320) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 1904) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 2192) = result;
  *(v0 + 2224) = result;
  *(v0 + 2256) = result;
  *(v0 + 1984) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2000) = result;
  *(v0 + 2032) = result;
  *(v0 + 2064) = result;
  *(v0 + 8400) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8912) = result;
  *(v0 + 8976) = result;
  *(v0 + 9008) = result;
  *(v0 + 9040) = result;
  *(v0 + 9072) = result;
  *(v0 + 9104) = result;
  *(v0 + 9136) = result;
  *(v0 + 9168) = result;
  *(v0 + 9200) = result;
  *(v0 + 9232) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9328) = result;
  *(v0 + 9360) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9488) = result;
  *(v0 + 9520) = result;
  *(v0 + 9552) = result;
  *(v0 + 9584) = result;
  *(v0 + 9616) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 10128) = result;
  *(v0 + 10192) = result;
  *(v0 + 10224) = result;
  *(v0 + 10256) = result;
  *(v0 + 10288) = result;
  *(v0 + 10320) = result;
  *(v0 + 10352) = result;
  *(v0 + 10384) = result;
  *(v0 + 10416) = result;
  *(v0 + 10448) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10544) = result;
  *(v0 + 10576) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10704) = result;
  *(v0 + 10736) = result;
  *(v0 + 10768) = result;
  *(v0 + 10800) = result;
  *(v0 + 10832) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 11344) = result;
  *(v0 + 11408) = result;
  *(v0 + 11440) = result;
  *(v0 + 11472) = result;
  *(v0 + 11504) = result;
  *(v0 + 11536) = result;
  *(v0 + 11568) = result;
  *(v0 + 11600) = result;
  *(v0 + 11632) = result;
  *(v0 + 11664) = result;
  *(v0 + 11696) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11760) = result;
  *(v0 + 11792) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11920) = result;
  *(v0 + 11952) = result;
  *(v0 + 11984) = result;
  *(v0 + 12016) = result;
  *(v0 + 12048) = result;
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
  *(v0 + 8553) = *v12;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC032000000000004;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v12[3];
  *(v0 + 8584) = 1050253722;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC04E000000000002;
  *(v0 + 9769) = *v13;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v13[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v14;
  *(v0 + 10988) = *&v14[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCB29C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657369726E6F6F6DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465736E6F6F6DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x76456E6F6F4D6F6ELL && a2 == 0xEB00000000746E65)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BCE1E090();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BCB29DA4(char a1)
{
  if (!a1)
  {
    return 0x657369726E6F6F6DLL;
  }

  if (a1 == 1)
  {
    return 0x7465736E6F6F6DLL;
  }

  return 0x76456E6F6F4D6F6ELL;
}

uint64_t sub_1BCB29E04(void *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09628);
  OUTLINED_FUNCTION_2();
  v45 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_16();
  v43 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09630);
  OUTLINED_FUNCTION_2();
  v48 = v6;
  v49 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v46 = v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09638);
  OUTLINED_FUNCTION_2();
  v42 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v50 = v14;
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  type metadata accessor for MoonEvent();
  OUTLINED_FUNCTION_9_24();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09640);
  OUTLINED_FUNCTION_2();
  v53 = v25;
  v54 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  v29 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1BCB2B044();
  sub_1BCE1E170();
  sub_1BCB2B1F8(v52, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v50;
    v31 = v51;
    (*(v50 + 32))(v20, v23, v51);
    v56 = 0;
    sub_1BCB2B1A4();
    OUTLINED_FUNCTION_8_26();
    OUTLINED_FUNCTION_3_39(&unk_1EDA1EBD0);
    v36 = v44;
    sub_1BCE1E020();
    (*(v42 + 8))(v12, v36);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = v50;
    v31 = v51;
    (*(v50 + 32))(v17, v23, v51);
    v57 = 1;
    sub_1BCB2B150();
    OUTLINED_FUNCTION_8_26();
    OUTLINED_FUNCTION_3_39(&unk_1EDA1EBD0);
    v33 = v55;
    sub_1BCE1E020();
    if (!v33)
    {
      v40 = OUTLINED_FUNCTION_11_22();
      v41(v40);
      (*(v32 + 8))(v17, v31);
      return (*(v53 + 8))(v28, v29);
    }

    v34 = OUTLINED_FUNCTION_11_22();
    v35(v34);
    v20 = v17;
LABEL_6:
    (*(v32 + 8))(v20, v31);
    return (*(v53 + 8))(v28, v29);
  }

  v58 = 2;
  sub_1BCB2B098();
  v38 = v43;
  v39 = v54;
  sub_1BCE1DF90();
  (*(v45 + 8))(v38, v47);
  return (*(v53 + 8))(v28, v39);
}

uint64_t sub_1BCB2A314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095E8);
  OUTLINED_FUNCTION_2();
  v70 = v6;
  v71 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v74 = v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095F0);
  OUTLINED_FUNCTION_2();
  v77 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  v75 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD095F8);
  OUTLINED_FUNCTION_2();
  v68 = v13;
  v69 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_16();
  v73 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09600);
  OUTLINED_FUNCTION_2();
  v78 = v17;
  v79 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  type metadata accessor for MoonEvent();
  OUTLINED_FUNCTION_9_24();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCB2B044();
  v29 = v80;
  sub_1BCE1E160();
  if (v29)
  {
    goto LABEL_10;
  }

  v64 = v24;
  v65 = v2;
  v66 = v28;
  v67 = v3;
  v80 = a1;
  v30 = v79;
  v31 = sub_1BCE1DF80();
  result = sub_1BCA24D28(v31, 0);
  if (v34 == v35 >> 1)
  {
LABEL_9:
    v48 = sub_1BCE1DD90();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07C50);
    *v50 = v67;
    sub_1BCE1DEE0();
    sub_1BCE1DD80();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v78 + 8))(v20, v30);
    a1 = v80;
LABEL_10:
    v51 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v34 < (v35 >> 1))
  {
    v36 = v20;
    v37 = *(v33 + v34);
    sub_1BCA24D24(v34 + 1, v35 >> 1, result, v33, v34, v35);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = v77;
    if (v39 == v41 >> 1)
    {
      v43 = v30;
      v44 = v36;
      if (v37)
      {
        if (v37 == 1)
        {
          v82 = 1;
          sub_1BCB2B150();
          OUTLINED_FUNCTION_6_24();
          sub_1BCE19060();
          OUTLINED_FUNCTION_2_29(&qword_1EDA1EBC0);
          v45 = v64;
          v46 = v72;
          v47 = v75;
          sub_1BCE1DF70();
          swift_unknownObjectRelease();
          (*(v42 + 8))(v47, v46);
          v57 = OUTLINED_FUNCTION_1_30();
          v58(v57);
          swift_storeEnumTagMultiPayload();
          v59 = v66;
          sub_1BCB2B0EC(v45, v66);
        }

        else
        {
          v83 = 2;
          sub_1BCB2B098();
          v54 = v74;
          OUTLINED_FUNCTION_6_24();
          swift_unknownObjectRelease();
          (*(v70 + 8))(v54, v71);
          v55 = OUTLINED_FUNCTION_1_30();
          v56(v55);
          v59 = v66;
          swift_storeEnumTagMultiPayload();
        }

        v52 = v76;
      }

      else
      {
        v81 = 0;
        sub_1BCB2B1A4();
        OUTLINED_FUNCTION_6_24();
        v52 = v76;
        sub_1BCE19060();
        OUTLINED_FUNCTION_2_29(&qword_1EDA1EBC0);
        sub_1BCE1DF70();
        v53 = v78;
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_12_21();
        v61(v60);
        (*(v53 + 8))(v44, v43);
        v62 = v65;
        swift_storeEnumTagMultiPayload();
        v59 = v66;
        sub_1BCB2B0EC(v62, v66);
      }

      sub_1BCB2B0EC(v59, v52);
      v51 = v80;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    v20 = v36;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCB2A9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCB29C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCB2AA24(uint64_t a1)
{
  v2 = sub_1BCB2B044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB2AA60(uint64_t a1)
{
  v2 = sub_1BCB2B044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB2AA9C(uint64_t a1)
{
  v2 = sub_1BCB2B1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB2AAD8(uint64_t a1)
{
  v2 = sub_1BCB2B1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB2AB14(uint64_t a1)
{
  v2 = sub_1BCB2B150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB2AB50(uint64_t a1)
{
  v2 = sub_1BCB2B150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB2AB8C(uint64_t a1)
{
  v2 = sub_1BCB2B098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCB2ABC8(uint64_t a1)
{
  v2 = sub_1BCB2B098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCB2AC34@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_3();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1BCE197B0();
  sub_1BCE19AC0();
  OUTLINED_FUNCTION_6(v9);
  if (v27)
  {
    sub_1BCA0A6F0(v9);
    sub_1BCE19AB0();
    v24 = OUTLINED_FUNCTION_10_23();
    v25(v24);
    OUTLINED_FUNCTION_6(v5);
    if (v27)
    {
      sub_1BCA0A6F0(v5);
    }

    else
    {
      v30 = *(v12 + 32);
      v30(v16, v5, v10);
      v30(v39, v16, v10);
    }
  }

  else
  {
    v26 = *(v12 + 32);
    v26(v22, v9, v10);
    sub_1BCE19AB0();
    OUTLINED_FUNCTION_6(v1);
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_10_23();
      v29(v28);
      sub_1BCA0A6F0(v1);
    }

    else
    {
      v26(v19, v1, v10);
      v31 = sub_1BCE18FC0();
      if (v31 & 1) != 0 && (sub_1BCE18FC0())
      {
        v32 = *(v12 + 8);
        v32(v22, v10);
        v33 = OUTLINED_FUNCTION_10_23();
        (v32)(v33);
LABEL_14:
        v26(v39, v19, v10);
        goto LABEL_18;
      }

      v34 = sub_1BCE18FC0();
      v35 = *(v12 + 8);
      v36 = OUTLINED_FUNCTION_10_23();
      v35(v36);
      if (v34)
      {
        (v35)(v22, v10);
        goto LABEL_14;
      }

      (v35)(v19, v10);
    }

    v26(v39, v22, v10);
  }

LABEL_18:
  type metadata accessor for MoonEvent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for MoonEvent()
{
  result = qword_1EDA16DD8;
  if (!qword_1EDA16DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BCB2B044()
{
  result = qword_1EBD09608;
  if (!qword_1EBD09608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09608);
  }

  return result;
}

unint64_t sub_1BCB2B098()
{
  result = qword_1EBD09610;
  if (!qword_1EBD09610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09610);
  }

  return result;
}

uint64_t sub_1BCB2B0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCB2B150()
{
  result = qword_1EBD09618;
  if (!qword_1EBD09618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09618);
  }

  return result;
}

unint64_t sub_1BCB2B1A4()
{
  result = qword_1EBD09620;
  if (!qword_1EBD09620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09620);
  }

  return result;
}

uint64_t sub_1BCB2B1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for MoonEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BCB2B348(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BCB2B408()
{
  result = qword_1EBD09648;
  if (!qword_1EBD09648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09648);
  }

  return result;
}

unint64_t sub_1BCB2B460()
{
  result = qword_1EBD09650;
  if (!qword_1EBD09650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09650);
  }

  return result;
}

unint64_t sub_1BCB2B4B8()
{
  result = qword_1EBD09658;
  if (!qword_1EBD09658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09658);
  }

  return result;
}

unint64_t sub_1BCB2B510()
{
  result = qword_1EBD09660;
  if (!qword_1EBD09660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09660);
  }

  return result;
}

unint64_t sub_1BCB2B568()
{
  result = qword_1EBD09668;
  if (!qword_1EBD09668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09668);
  }

  return result;
}

unint64_t sub_1BCB2B5C0()
{
  result = qword_1EBD09670;
  if (!qword_1EBD09670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09670);
  }

  return result;
}

unint64_t sub_1BCB2B618()
{
  result = qword_1EBD09678;
  if (!qword_1EBD09678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09678);
  }

  return result;
}

unint64_t sub_1BCB2B670()
{
  result = qword_1EBD09680;
  if (!qword_1EBD09680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09680);
  }

  return result;
}

unint64_t sub_1BCB2B6C8()
{
  result = qword_1EBD09688;
  if (!qword_1EBD09688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09688);
  }

  return result;
}

unint64_t sub_1BCB2B720()
{
  result = qword_1EBD09690;
  if (!qword_1EBD09690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09690);
  }

  return result;
}

unint64_t sub_1BCB2B778()
{
  result = qword_1EBD09698;
  if (!qword_1EBD09698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09698);
  }

  return result;
}

__n128 sub_1BCB2B7D0@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCB2BEC8();
  v4 = v3;
  sub_1BCA00A70();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE4B020;
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
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3D850;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
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
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x401CCCCD3E99999ALL;
  *(a1 + 672) = 0x409800003F800000;
  *(a1 + 688) = result;
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
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
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
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
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
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
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
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
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
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
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
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3D8E0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F8000003E99999ALL;
  *(a1 + 2008) = 0x3F8000003F4CCCCDLL;
  *(a1 + 2016) = xmmword_1BCE3F500;
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
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 8;
  *(a1 + 2208) = 0x417000003F333333;
  *(a1 + 2224) = xmmword_1BCE47E30;
  *(a1 + 2240) = xmmword_1BCE47E40;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

__n128 sub_1BCB2BEC8()
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
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  __asm { FMOV            V3.2D, #0.5 }

  *(v0 + 208) = _Q3;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE508A0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3D920;
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
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = _Q3;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3D920;
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
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE3CB30;
  *(v0 + 2496) = 0x447A000044160000;
  *(v0 + 2504) = 1061997773;
  *(v0 + 2512) = xmmword_1BCE3CA60;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3D930;
  *(v0 + 2560) = xmmword_1BCE3CA80;
  *(v0 + 2576) = xmmword_1BCE3D940;
  *(v0 + 2592) = xmmword_1BCE3D950;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 2656) = xmmword_1BCE3D960;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2736) = result;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3CAD0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v7 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = 0x3F4CCCCD3F59999ALL;
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
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 3968) = xmmword_1BCE3D9F0;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0x3FE5555540000000;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4032) = 0x3DCCCCCD3F5DDDDELL;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 3984) = xmmword_1BCE3DA00;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = vdupq_n_s32(0x3F5DDDDEu);
  *(v0 + 3904) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = xmmword_1BCE3D9E0;
  *(v0 + 3712) = 0x4496000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3888) = result;
  *(v0 + 3856) = vdupq_n_s64(0x3FEB079E00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D9D0;
  *(v0 + 3824) = xmmword_1BCE508B0;
  *(v0 + 3840) = xmmword_1BCE508C0;
  *(v0 + 3792) = xmmword_1BCE3D9B0;
  *(v0 + 3808) = xmmword_1BCE3D9C0;
  *(v0 + 3760) = xmmword_1BCE3D990;
  *(v0 + 3776) = xmmword_1BCE3D9A0;
  *(v0 + 3728) = xmmword_1BCE3D970;
  *(v0 + 3744) = xmmword_1BCE3D980;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v14;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5040) = xmmword_1BCE508D0;
  *(v0 + 5056) = xmmword_1BCE508E0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v8;
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
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6152) = 1060739482;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6256) = 0u;
  *(v0 + 6272) = 0u;
  *(v0 + 6288) = result;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DB20;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 8848) = xmmword_1BCE3DB40;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 7376) = xmmword_1BCE3DB10;
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
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = v8;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
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
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = 0u;
  *(v0 + 7488) = 0u;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DB70;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3DB80;
  *(v0 + 14720) = xmmword_1BCE3DB90;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14768) = xmmword_1BCE508F0;
  *(v0 + 14784) = xmmword_1BCE50900;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 15984) = xmmword_1BCE50910;
  *(v0 + 16000) = xmmword_1BCE50920;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 12528) = v8;
  *(v0 + 13744) = v8;
  *(v0 + 14960) = v8;
  *(v0 + 16176) = v8;
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
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 17392) = v7;
  *(v0 + 17408) = 0x3DCCCCCD3F59999ALL;
  *(v0 + 17424) = xmmword_1BCE3DC80;
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
  *(v0 + 18464) = xmmword_1BCE3DCB0;
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
  v9 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 18608) = v9;
  *(v0 + 18624) = v9.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V25.2D, #0.25 }

  *(v0 + 20528) = _Q25;
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
  *(v0 + 8688) = 0u;
  *(v0 + 8704) = 0u;
  *(v0 + 9904) = 0u;
  *(v0 + 9920) = 0u;
  *(v0 + 11120) = 0u;
  *(v0 + 11136) = 0u;
  *(v0 + 12336) = 0u;
  *(v0 + 12352) = 0u;
  *(v0 + 13552) = 0u;
  *(v0 + 13568) = 0u;
  *(v0 + 17200) = 0u;
  *(v0 + 17216) = 0u;
  *(v0 + 18416) = 0u;
  *(v0 + 18432) = 0u;
  *(v0 + 19632) = 0u;
  *(v0 + 19648) = 0u;
  *(v0 + 20848) = 0u;
  *(v0 + 20864) = 0u;
  *(v0 + 18448) = _Q3;
  *(v0 + 19664) = _Q3;
  *(v0 + 20880) = _Q3;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
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
  *(v0 + 7728) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7744) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 17416) = 0x3FEF1F1F40000000;
  *(v0 + 17440) = 0;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 17264) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8112) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 8128) = result;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 16112) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 15849) = *v23;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8480) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8553) = *v17;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 8552) = 0;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8672) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 14633) = *v22;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 8992) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
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
  *(v0 + 9072) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 9152) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13584) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v21;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9360) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
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
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9488) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12368) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v20;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9768) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9769) = *v18;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 11296) = result;
  *(v0 + 10000) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10304) = result;
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
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10320) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
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
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t ConditionsRectangularContentView.status.getter()
{
  v0 = type metadata accessor for ConditionsRectangularContentView(0);
  OUTLINED_FUNCTION_1_31(v0);
  return sub_1BCB31D54();
}

uint64_t ConditionsRectangularContentView.init(status:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConditionsRectangularContentView(0);
  return sub_1BCB31CFC();
}

uint64_t ConditionsRectangularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD096A0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v36 - v3;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD096A8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v36 - v6;
  v8 = type metadata accessor for ConditionsRectangularContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for ConditionsComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for ConditionsComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for ConditionsRectangularContentView(0);
  OUTLINED_FUNCTION_1_31(v22);
  sub_1BCB31D54();
  if (__swift_getEnumTagSinglePayload(v16, 2, v17))
  {
    sub_1BCB31DAC(v16, type metadata accessor for ConditionsComplicationDataStatus);
    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v39 = 0;
    v38 = 0;
    if (qword_1EBD07188 != -1)
    {
      OUTLINED_FUNCTION_5_4();
    }

    __src[0] = KeyPath;
    LOBYTE(__src[1]) = v39;
    __src[2] = v24;
    memset(&__src[3], 0, 24);
    LOWORD(__src[6]) = v38;
    *&__src[7] = xmmword_1EBD0A568;
    __src[9] = qword_1EBD0A578;
    v25 = sub_1BCB31C78();
    sub_1BCE1C7E0();
    memcpy(__dst, __src, 0x50uLL);
    sub_1BCB31CCC(__dst);
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_40();
    sub_1BCB321E0(v26, v27);
    __src[0] = &type metadata for ConditionsRectangularContentView.Placeholder;
    __src[1] = v25;
    OUTLINED_FUNCTION_3_7();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_1();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCB31CFC();
    sub_1BCB31D54();
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    *v12 = v29;
    *(v12 + 8) = 0;
    *(v12 + 16) = v30;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    v31 = v12 + *(v8 + 28);
    if (qword_1EBD07188 != -1)
    {
      OUTLINED_FUNCTION_5_4();
    }

    v32 = qword_1EBD0A578;
    *v31 = xmmword_1EBD0A568;
    *(v31 + 16) = v32;
    sub_1BCB31D54();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_40();
    sub_1BCB321E0(v33, v34);
    v35 = sub_1BCB31C78();
    __dst[0] = &type metadata for ConditionsRectangularContentView.Placeholder;
    __dst[1] = v35;
    OUTLINED_FUNCTION_3_7();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_1();
    sub_1BCB31DAC(v12, type metadata accessor for ConditionsRectangularContentView.Content);
    return sub_1BCB31DAC(v21, type metadata accessor for ConditionsComplicationViewModel);
  }
}

uint64_t sub_1BCB2E46C()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1BCE1D8C0();
    v6 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double sub_1BCB2E5B4()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_1BCE1D8C0();
  v10 = sub_1BCE1C1F0();
  sub_1BCE1AC20();

  sub_1BCE1BC10();
  swift_getAtKeyPath();
  sub_1BCA21FD0(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t sub_1BCB2E734@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1BCE1C100();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BCE1C160();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09798);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097A0);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097A8);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097B0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v36 - v14;
  v15 = sub_1BCE1BE00();
  v37 = type metadata accessor for ConditionsRectangularContentView.Content(0);
  v16 = *(v1 + *(v37 + 28) + 8);
  *v8 = v15;
  *(v8 + 1) = v16;
  v8[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097B8);
  sub_1BCB2ED18(v1, &v8[*(v17 + 44)]);
  v18 = sub_1BCB30004();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1BCE1C250();
  v26 = &v8[*(v6 + 36)];
  *v26 = v25;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  sub_1BCE1C150();
  v48 = v1;
  v50 = v1;
  sub_1BCE1CEE0();
  v27 = sub_1BCB32230();
  v35 = sub_1BCA21F70();
  sub_1BCE1C910();
  (*(v38 + 8))(v5, v40);
  sub_1BC94C05C(v8, &qword_1EBD09798);
  v28 = v41;
  sub_1BCE1C0D0();
  v53 = v6;
  v54 = &type metadata for RectangularWidgetBackground;
  v55 = v27;
  v56 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v36;
  sub_1BCE1C930();
  (*(v46 + 8))(v28, v47);
  (*(v39 + 8))(v10, v30);
  if (qword_1EBD07018 != -1)
  {
    swift_once();
  }

  v53 = qword_1EBD2A140;
  v54 = *algn_1EBD2A148;
  v51 = v30;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v31 = v43;
  v32 = v45;
  sub_1BCE1C8E0();
  (*(v44 + 8))(v13, v32);
  v53 = sub_1BCAA2924();
  v54 = v33;
  sub_1BCE1B880();

  return sub_1BC94C05C(v31, &qword_1EBD097B0);
}

uint64_t sub_1BCB2ED18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ConditionsRectangularContentView.Content(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (a1 + *(v10 + 32));
  v23 = *v11;
  v12 = &v11[*(type metadata accessor for ConditionsComplicationViewModel() + 32)];
  v22 = *&v12[*(type metadata accessor for WeatherConditionGradientModel() + 20)] > 0.0;
  sub_1BCB31D54();
  v21 = swift_allocObject();
  sub_1BCB31CFC();
  sub_1BCB31D54();
  v13 = swift_allocObject();
  v19 = v13;
  sub_1BCB31CFC();
  KeyPath = swift_getKeyPath();
  v20 = KeyPath;
  LOBYTE(v26) = 0;
  *v8 = sub_1BCE1BC90();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097E0);
  sub_1BCB2F2F4(a1, &v8[*(v15 + 44)]);
  sub_1BC95DCE8();
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  LOBYTE(KeyPath) = v22;
  v16 = v23;
  BYTE1(__src[1]) = v23;
  BYTE2(__src[1]) = v22;
  v17 = v21;
  __src[2] = sub_1BCB322E8;
  __src[3] = v21;
  __src[4] = 0;
  __src[5] = sub_1BCB324F0;
  __src[6] = v13;
  LOBYTE(__src[7]) = 0;
  __src[8] = 0;
  memcpy(v24, __src, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097E8);
  sub_1BC95DCE8();
  sub_1BC95DCE8();
  sub_1BC94C05C(v8, &qword_1EBD097D8);
  sub_1BC94C05C(v5, &qword_1EBD097D8);
  v26 = v20;
  v27 = 0;
  v28 = v16;
  v29 = KeyPath;
  v30 = sub_1BCB322E8;
  v31 = v17;
  v32 = 0;
  v33 = sub_1BCB324F0;
  v34 = v19;
  v35 = 0;
  v36 = 0;
  return sub_1BC94C05C(&v26, &qword_1EBD097F0);
}

uint64_t sub_1BCB2F0BC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConditionsRectangularContentView.Content(0);
  sub_1BCAA3668();
  sub_1BC970820();
  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BCB2F130@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConditionsRectangularContentView.Content(0);
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDA1EFB8;
  sub_1BCE18B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BCE3E030;
  v4 = sub_1BCAA3450();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1BC9804E0();
  *(v3 + 64) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = sub_1BCAA355C();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  sub_1BCE1D2B0();

  sub_1BC970820();
  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1BCB2F2F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for ConditionsRectangularContentView.Content(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD097F8);
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = a1 + *(v4 + 32);
  v24 = *(v10 + *(type metadata accessor for ConditionsComplicationViewModel() + 52));
  sub_1BCB31D54();
  swift_allocObject();
  sub_1BCB31CFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09750);
  sub_1BCE19090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09800);
  v11 = v9;
  sub_1BC957184(&qword_1EBD09760, &qword_1EBD09750);
  sub_1BC957184(&qword_1EBD09808, &qword_1EBD09800);
  sub_1BCB321E0(&qword_1EBD09770, type metadata accessor for ConditionsComplicationHourlyViewModel);
  sub_1BCE1CE20();
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v13 = qword_1EBD2A240;
  v14 = *(v5 + 16);
  v15 = v21;
  v16 = v22;
  v14(v22, v11, v21);
  v17 = v23;
  v14(v23, v16, v15);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09810) + 48)];
  *v18 = v12;
  v18[1] = v13;
  v19 = *(v5 + 8);
  swift_retain_n();
  v19(v11, v15);

  return (v19)(v16, v15);
}

uint64_t sub_1BCB2F71C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v50 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09818);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v38 - v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09788);
  MEMORY[0x1EEE9AC00](v48);
  v39 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for ConditionsHourlyContentView();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09780);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09820);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v38 - v18;
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v41 = v16;
  v43 = v10;
  v19 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBD2A240;
  sub_1BCB31D54();
  v21 = v7[6];
  v40 = v20;

  sub_1BCE1C3C0();
  v22 = *MEMORY[0x1E6980E28];
  v23 = sub_1BCE1C350();
  v24 = *(*(v23 - 8) + 104);
  v24(v6, v22, v23);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
  v25 = sub_1BCE1C3D0();
  sub_1BC94C05C(v6, &qword_1EBD08780);
  *&v9[v21] = v25;
  v26 = v7[7];
  sub_1BCE1C3A0();
  v24(v6, v22, v23);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
  v27 = sub_1BCE1C3D0();
  sub_1BC94C05C(v6, &qword_1EBD08780);
  *&v9[v26] = v27;
  *&v9[v7[8]] = xmmword_1BCE50930;
  v28 = v7[9];
  if (qword_1EBD07148 != -1)
  {
    swift_once();
  }

  *&v9[v28] = qword_1EBD2A200;
  v9[v7[5]] = 0;

  sub_1BCE1CEE0();
  sub_1BCE1B910();
  v29 = v44;
  sub_1BCB31CFC();
  memcpy((v29 + *(v43 + 36)), __src, 0x70uLL);
  v30 = type metadata accessor for ConditionsRectangularContentView.Content(0);
  if (sub_1BCB2FE88(v42 + *(v30 + 24)))
  {
    sub_1BCE1CA90();
    v31 = sub_1BCE1CAE0();

    v32 = v39;
    sub_1BC95DCE8();
    v33 = v32 + *(v48 + 36);
    *v33 = v31;
    *(v33 + 8) = xmmword_1BCE40A30;
    *(v33 + 24) = 0x4000000000000000;
    sub_1BC95DCE8();
    swift_storeEnumTagMultiPayload();
    sub_1BCB3260C();
    sub_1BCB32698();
    sub_1BCE1BF60();
    sub_1BC94C05C(v32, &qword_1EBD09788);
  }

  else
  {
    sub_1BC95DCE8();
    swift_storeEnumTagMultiPayload();
    sub_1BCB3260C();
    sub_1BCB32698();
    sub_1BCE1BF60();
  }

  sub_1BC94C05C(v29, &qword_1EBD09780);
  v34 = v45;
  sub_1BC9849E8();
  v35 = v46;
  sub_1BC95DCE8();
  v36 = v50;
  *v50 = v19;
  v36[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09840);
  sub_1BC95DCE8();

  sub_1BC94C05C(v34, &qword_1EBD09820);
  sub_1BC94C05C(v35, &qword_1EBD09820);
}

uint64_t sub_1BCB2FE88(uint64_t a1)
{
  v3 = sub_1BCE1BC20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1 + *(type metadata accessor for ConditionsComplicationViewModel() + 32);
  if (*(v7 + *(type metadata accessor for WeatherConditionGradientModel() + 20)) <= 0.0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = *v1;
    if (*(v1 + 8) != 1)
    {

      sub_1BCE1D8C0();
      v9 = sub_1BCE1C1F0();
      sub_1BCE1AC20();

      sub_1BCE1BC10();
      swift_getAtKeyPath();
      sub_1BCA21FC4(v8, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v8) = v11[15];
    }
  }

  return v8 & 1;
}

double sub_1BCB30004()
{
  v1 = 0.0;
  if (sub_1BCB2E46C())
  {
    v1 = *(v0 + *(type metadata accessor for ConditionsRectangularContentView.Content(0) + 28) + 16);
  }

  sub_1BCB2E5B4();
  sub_1BCB2E5B4();
  sub_1BCB2E5B4();
  return v1;
}

uint64_t sub_1BCB30068@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for ConditionsRectangularContentView.Content(0);
  type metadata accessor for ConditionsComplicationViewModel();
  sub_1BCB31D54();
  v5 = type metadata accessor for WeatherConditionGradientModel();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  result = RectangularWidgetBackground.init(model:)(v4, &v8);
  v7 = v9;
  *a1 = v8;
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1BCB30160@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = sub_1BCE1C100();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BCE1C160();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD096F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD096F8);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v33 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09700);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v33 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09708);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v33 - v12;
  memcpy(__dst, v1, 0x50uLL);
  v13 = sub_1BCE1BE00();
  v14 = __dst[8];
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09710);
  sub_1BCB3078C(__dst, &v7[*(v15 + 44)]);
  v16 = sub_1BCB31638();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1BCE1C250();
  v24 = &v7[*(v5 + 36)];
  *v24 = v23;
  *(v24 + 1) = v16;
  *(v24 + 2) = v18;
  *(v24 + 3) = v20;
  *(v24 + 4) = v22;
  v24[40] = 0;
  sub_1BCE1C150();
  sub_1BCE1CEE0();
  v25 = sub_1BCB320E8();
  v32 = sub_1BCA21F70();
  sub_1BCE1C910();
  (*(v35 + 8))(v4, v37);
  sub_1BC94C05C(v7, &qword_1EBD096F0);
  v26 = v39;
  sub_1BCE1C0D0();
  v48 = v5;
  v49 = &type metadata for RectangularWidgetBackground;
  v50 = v25;
  v51 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v34;
  sub_1BCE1C930();
  (*(v43 + 8))(v26, v44);
  (*(v36 + 8))(v9, v28);
  if (qword_1EBD07018 != -1)
  {
    swift_once();
  }

  v48 = qword_1EBD2A140;
  v49 = *algn_1EBD2A148;
  v46 = v28;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v29 = v38;
  v30 = v41;
  sub_1BCE1C8E0();
  (*(v40 + 8))(v11, v30);
  if (qword_1EBD07020 != -1)
  {
    swift_once();
  }

  v48 = qword_1EBD2A150;
  v49 = *algn_1EBD2A158;
  sub_1BCE1B880();
  return sub_1BC94C05C(v29, &qword_1EBD09708);
}

uint64_t sub_1BCB3078C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09730);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  if (a1[49])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = qword_1EDA1EFB8;
    v9 = sub_1BCE18B60();
    v11 = v10;

    if (qword_1EDA1B668 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDA2EFA0;
    KeyPath = swift_getKeyPath();

    *&v32 = v9;
    *(&v32 + 1) = v11;
    *&v33 = 0;
    *(&v33 + 1) = KeyPath;
    v34 = v12;
    v35 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A90);
    sub_1BCA21FDC();
    sub_1BCA22094();
    sub_1BCE1BF60();

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A90);
    sub_1BCA21FDC();
    sub_1BCA22094();
    sub_1BCE1BF60();
  }

  v15 = v40;
  v14 = v41;
  v16 = v42;
  v17 = v43;
  v28 = v42;
  v27 = v43;
  v18 = v44;
  v26 = v44;
  v19 = v45;
  sub_1BCE1CA90();
  v20 = sub_1BCE1CAE0();
  v25 = v20;

  v47 = v19;
  *v7 = sub_1BCE1BC90();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09738);
  sub_1BCB30C80(a1, &v7[*(v21 + 44)]);
  v22 = v30;
  sub_1BC95DCE8();
  __src[0] = v15;
  __src[1] = v14;
  __src[2] = v16;
  __src[3] = v17;
  __src[4] = v18;
  LOBYTE(__src[5]) = v19;
  *(&__src[5] + 1) = *v46;
  HIDWORD(__src[5]) = *&v46[3];
  __src[6] = v20;
  v24 = xmmword_1BCE40A30;
  *&__src[7] = xmmword_1BCE40A30;
  __src[9] = 0x4000000000000000;
  memcpy(v29, __src, 0x50uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09740);
  sub_1BC95DCE8();
  sub_1BC95DCE8();
  sub_1BC94C05C(v7, &qword_1EBD09730);
  sub_1BC94C05C(v22, &qword_1EBD09730);
  *&v32 = v15;
  *(&v32 + 1) = v14;
  *&v33 = v28;
  *(&v33 + 1) = v27;
  v34 = v26;
  v35 = v19;
  *v36 = *v46;
  *&v36[3] = *&v46[3];
  v38 = v24;
  v37 = v25;
  v39 = 0x4000000000000000;
  return sub_1BC94C05C(&v32, &qword_1EBD07AC0);
}

uint64_t sub_1BCB30C80@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = sub_1BCE19470();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09748);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  sub_1BCE19460();
  sub_1BCA2EEE4();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v28 = v14;
  v15 = swift_allocObject();
  memcpy((v15 + 16), a1, 0x50uLL);
  sub_1BCB321A8(a1, v27);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09750);
  sub_1BCE19090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09758);
  sub_1BC957184(&qword_1EBD09760, &qword_1EBD09750);
  sub_1BC957184(&qword_1EBD09768, &qword_1EBD09758);
  sub_1BCB321E0(&qword_1EBD09770, type metadata accessor for ConditionsComplicationHourlyViewModel);
  sub_1BCE1CE20();
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBD2A240;
  v18 = *(v8 + 16);
  v19 = v25;
  v18(v25, v12, v7);
  v20 = v26;
  v18(v26, v19, v7);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09778) + 48)];
  *v21 = v16;
  v21[1] = v17;
  v22 = *(v8 + 8);
  swift_retain_n();
  v22(v12, v7);

  return (v22)(v19, v7);
}

uint64_t sub_1BCB31084@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33[-v4];
  v6 = type metadata accessor for ConditionsHourlyContentView();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09780);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v33[-v9];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09788);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v33[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v33[-v14];
  if (qword_1EBD07190 != -1)
  {
    swift_once();
  }

  v15 = qword_1EBD2A238;
  if (qword_1EBD07198 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBD2A240;
  sub_1BCB31D54();
  v34 = *(a1 + 49);
  v17 = v6[6];
  v35 = v16;

  sub_1BCE1C3C0();
  v18 = *MEMORY[0x1E6980E28];
  v19 = sub_1BCE1C350();
  v20 = *(*(v19 - 8) + 104);
  v20(v5, v18, v19);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
  v21 = sub_1BCE1C3D0();
  sub_1BC94C05C(v5, &qword_1EBD08780);
  *&v8[v17] = v21;
  v22 = v6[7];
  sub_1BCE1C3A0();
  v20(v5, v18, v19);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
  v23 = sub_1BCE1C3D0();
  sub_1BC94C05C(v5, &qword_1EBD08780);
  *&v8[v22] = v23;
  *&v8[v6[8]] = xmmword_1BCE50930;
  v24 = v6[9];
  if (qword_1EBD07148 != -1)
  {
    swift_once();
  }

  *&v8[v24] = qword_1EBD2A200;
  v8[v6[5]] = v34;

  sub_1BCE1CEE0();
  sub_1BCE1B910();
  v25 = v39;
  sub_1BCB31CFC();
  memcpy(&v25[*(v36 + 36)], __src, 0x70uLL);
  sub_1BCE1CA90();
  v26 = sub_1BCE1CAE0();

  v27 = v37;
  sub_1BC9849E8();
  v28 = &v27[*(v38 + 36)];
  *v28 = v26;
  *(v28 + 8) = xmmword_1BCE40A30;
  *(v28 + 3) = 0x4000000000000000;
  v29 = v40;
  sub_1BC9849E8();
  v30 = v41;
  sub_1BC95DCE8();
  v31 = v42;
  *v42 = v15;
  v31[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09790);
  sub_1BC95DCE8();

  sub_1BC94C05C(v29, &qword_1EBD09788);
  sub_1BC94C05C(v30, &qword_1EBD09788);
}

double sub_1BCB31638()
{
  v1 = sub_1BCE1BC20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (!v10)
      {

        sub_1BCE1D8C0();
        v20 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21 = *(v2 + 8);
        v21(v4, v1);

        sub_1BCE1D8C0();
        v22 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21(v4, v1);

        sub_1BCE1D8C0();
        v23 = sub_1BCE1C1F0();
        sub_1BCE1AC20();

        sub_1BCE1BC10();
        swift_getAtKeyPath();
        sub_1BCA21FD0(v7, v6, v8, v9, 0);
        v21(v4, v1);
      }

      return 0.0;
    }
  }

  else
  {
    v30 = *(v0 + 48);

    sub_1BCE1D8C0();
    v12 = v4;
    v13 = v7;
    v14 = v2;
    v15 = v1;
    v16 = v6;
    v17 = v8;
    v18 = v9;
    v19 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    v9 = v18;
    v8 = v17;
    v6 = v16;
    v1 = v15;
    v2 = v14;
    v7 = v13;
    v4 = v12;
    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FC4(v5, 0);
    (*(v2 + 8))(v12, v1);
    v10 = v30;
    if (v31 != 1)
    {
      goto LABEL_3;
    }
  }

  if (!v10)
  {

    sub_1BCE1D8C0();
    v24 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25 = *(v2 + 8);
    v25(v4, v1);

    sub_1BCE1D8C0();
    v26 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25(v4, v1);

    sub_1BCE1D8C0();
    v27 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();
    sub_1BCA21FD0(v7, v6, v8, v9, 0);
    v25(v4, v1);
  }

  return v11;
}

uint64_t sub_1BCB31BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for WeatherConditionGradientModel();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  result = RectangularWidgetBackground.init(model:)(v4, &v8);
  v7 = v9;
  *a1 = v8;
  *(a1 + 8) = v7;
  return result;
}

unint64_t sub_1BCB31C78()
{
  result = qword_1EBD096B0;
  if (!qword_1EBD096B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD096B0);
  }

  return result;
}

uint64_t sub_1BCB31CFC()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BCB31D54()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BCB31DAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BCB31E48()
{
  sub_1BCA21B40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConditionsComplicationDataStatus();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BCB31ECC()
{
  result = qword_1EBD096D0;
  if (!qword_1EBD096D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD096D8);
    sub_1BCB321E0(&qword_1EBD096B8, type metadata accessor for ConditionsRectangularContentView.Content);
    sub_1BCB31C78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD096D0);
  }

  return result;
}

void sub_1BCB31FDC()
{
  sub_1BCA21D6C(319, &qword_1EDA1EA38);
  if (v0 <= 0x3F)
  {
    sub_1BCA21D6C(319, &qword_1EBD07A30);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConditionsComplicationViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BCB320E8()
{
  result = qword_1EBD09718;
  if (!qword_1EBD09718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD096F0);
    sub_1BC957184(&qword_1EBD09720, &qword_1EBD09728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09718);
  }

  return result;
}

uint64_t sub_1BCB321E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCB32230()
{
  result = qword_1EBD097C0;
  if (!qword_1EBD097C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09798);
    sub_1BC957184(&qword_1EBD097C8, &qword_1EBD097D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD097C0);
  }

  return result;
}

uint64_t objectdestroy_31Tm_0()
{
  v1 = (type metadata accessor for ConditionsRectangularContentView.Content(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1BCA21FC4(*(v0 + v3), *(v0 + v3 + 8));
  sub_1BCA21FD0(*(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v0 + v3 + v1[8];

  v6 = type metadata accessor for ConditionsComplicationViewModel();
  v7 = v6[6];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v5 + v7);
  v9 = v6[8];
  v10 = sub_1BCE199D0();
  OUTLINED_FUNCTION_4();
  v12 = *(v11 + 8);
  v12(v5 + v9, v10);
  v12(v5 + v6[9], v10);
  v13 = v6[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v16 = *(v15 + 8);
  v16(v5 + v13, v14);
  v16(v5 + v6[11], v14);
  v16(v5 + v6[12], v14);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BCB32508(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConditionsRectangularContentView.Content(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BCB3258C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ConditionsRectangularContentView.Content(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BCB2F71C(v4, a1);
}

unint64_t sub_1BCB3260C()
{
  result = qword_1EBD09828;
  if (!qword_1EBD09828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09788);
    sub_1BCB32698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09828);
  }

  return result;
}

unint64_t sub_1BCB32698()
{
  result = qword_1EBD09830;
  if (!qword_1EBD09830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09780);
    sub_1BCB321E0(&qword_1EBD09838, type metadata accessor for ConditionsHourlyContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09830);
  }

  return result;
}

unint64_t sub_1BCB32754()
{
  result = qword_1EBD09848;
  if (!qword_1EBD09848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD096F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD096F0);
    sub_1BCB320E8();
    sub_1BCA21F70();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BCB321E0(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09848);
  }

  return result;
}

unint64_t sub_1BCB328A4()
{
  result = qword_1EBD09850;
  if (!qword_1EBD09850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD097B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD097A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09798);
    sub_1BCB32230();
    sub_1BCA21F70();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BCB321E0(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD09850);
  }

  return result;
}

void sub_1BCB329F4(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCB331B8();
  v4 = v3;
  sub_1BCB331B8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE50D50;
  *(a1 + 96) = xmmword_1BCE50D60;
  *(a1 + 112) = 0x3EDC28F63E4CCCCDLL;
  *(a1 + 128) = xmmword_1BCE48400;
  *(a1 + 144) = xmmword_1BCE48410;
  *(a1 + 160) = xmmword_1BCE48420;
  *(a1 + 176) = 1169915904;
  *(a1 + 184) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 192) = xmmword_1BCE48430;
  *(a1 + 208) = xmmword_1BCE48440;
  *(a1 + 224) = xmmword_1BCE48450;
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
  *(a1 + 840) = 0x4086666640666667;
  *(a1 + 848) = 0x4180000040E00000;
  *(a1 + 856) = 1080445584;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE40340;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000004019999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1079190856;
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
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
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
  *(a1 + 1216) = xmmword_1BCE502F0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE7A1D0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE7AD60;
  *(a1 + 1272) = 4;
  *(a1 + 1280) = 1;
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
  *(v2 + 208) = 0x100010001010001;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 1;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4104F5C240DB3333;
  *(a1 + 1672) = 4;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE48480;
  *(a1 + 1712) = xmmword_1BCE48490;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3EDEB85247927C00;
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
  *(a1 + 1968) = xmmword_1BCE3E110;
  *(a1 + 1984) = 0x3F80000040A00000;
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
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1056964608;
  *(a1 + 2200) = 20;
  *(a1 + 2208) = 0x41F000003FC00000;
  *(a1 + 2224) = xmmword_1BCE46650;
  *(a1 + 2240) = xmmword_1BCE499C0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCB331B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3CB30;
  *(v0 + 64) = 0x42C8000043FA0000;
  *(v0 + 80) = xmmword_1BCE403D0;
  *(v0 + 96) = xmmword_1BCE403E0;
  *(v0 + 112) = xmmword_1BCE46690;
  *(v0 + 128) = xmmword_1BCE466A0;
  *(v0 + 1712) = xmmword_1BCE48580;
  *(v0 + 1728) = xmmword_1BCE48590;
  *(v0 + 1792) = xmmword_1BCE485C0;
  *(v0 + 2992) = xmmword_1BCE48640;
  *(v0 + 3008) = xmmword_1BCE48650;
  *(v0 + 5360) = xmmword_1BCE486E0;
  *(v0 + 5392) = xmmword_1BCE48700;
  *(v0 + 5408) = xmmword_1BCE416E0;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 4976) = xmmword_1BCE40860;
  *(v0 + 6192) = xmmword_1BCE40860;
  *(v0 + 4992) = xmmword_1BCE40870;
  *(v0 + 6208) = xmmword_1BCE40870;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 6576) = xmmword_1BCE48730;
  *(v0 + 5376) = xmmword_1BCE486F0;
  *(v0 + 6592) = xmmword_1BCE486F0;
  *(v0 + 6608) = xmmword_1BCE48740;
  *(v0 + 6624) = xmmword_1BCE48750;
  *(v0 + 5424) = xmmword_1BCE46980;
  *(v0 + 6640) = xmmword_1BCE46980;
  *(v0 + 5440) = xmmword_1BCE41640;
  *(v0 + 6656) = xmmword_1BCE41640;
  *(v0 + 5456) = xmmword_1BCE48710;
  *(v0 + 6672) = xmmword_1BCE48710;
  *(v0 + 5872) = xmmword_1BCE48720;
  *(v0 + 7088) = xmmword_1BCE48720;
  *(v0 + 3696) = xmmword_1BCE3CE40;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 7344) = xmmword_1BCE3CE40;
  *(v0 + 3712) = 1152319488;
  *(v0 + 7360) = 1152319488;
  *(v0 + 3728) = xmmword_1BCE406D0;
  *(v0 + 7376) = xmmword_1BCE406D0;
  *(v0 + 3744) = xmmword_1BCE406E0;
  *(v0 + 7392) = xmmword_1BCE406E0;
  *(v0 + 3792) = xmmword_1BCE406F0;
  *(v0 + 7440) = xmmword_1BCE406F0;
  *(v0 + 3808) = xmmword_1BCE40700;
  *(v0 + 7456) = xmmword_1BCE40700;
  *(v0 + 3824) = xmmword_1BCE48680;
  *(v0 + 5040) = xmmword_1BCE48680;
  *(v0 + 6256) = xmmword_1BCE48680;
  *(v0 + 7472) = xmmword_1BCE48680;
  *(v0 + 3840) = xmmword_1BCE48690;
  *(v0 + 5056) = xmmword_1BCE48690;
  *(v0 + 6272) = xmmword_1BCE48690;
  *(v0 + 7488) = xmmword_1BCE48690;
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
  *(v0 + 4016) = xmmword_1BCE430A0;
  *(v0 + 5232) = xmmword_1BCE430A0;
  *(v0 + 6448) = xmmword_1BCE430A0;
  *(v0 + 7664) = xmmword_1BCE430A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE468B0;
  *(v0 + 7792) = xmmword_1BCE468B0;
  *(v0 + 4176) = xmmword_1BCE486B0;
  *(v0 + 7824) = xmmword_1BCE486B0;
  *(v0 + 4160) = xmmword_1BCE468C0;
  *(v0 + 4192) = xmmword_1BCE468C0;
  *(v0 + 7808) = xmmword_1BCE468C0;
  *(v0 + 7840) = xmmword_1BCE468C0;
  *(v0 + 4208) = xmmword_1BCE468F0;
  *(v0 + 7856) = xmmword_1BCE468F0;
  *(v0 + 4224) = xmmword_1BCE46900;
  *(v0 + 7872) = xmmword_1BCE46900;
  *(v0 + 4240) = xmmword_1BCE486C0;
  *(v0 + 7888) = xmmword_1BCE486C0;
  *(v0 + 4256) = xmmword_1BCE486D0;
  *(v0 + 7904) = xmmword_1BCE486D0;
  *(v0 + 4656) = xmmword_1BCE46860;
  *(v0 + 4688) = xmmword_1BCE46860;
  *(v0 + 8304) = xmmword_1BCE46860;
  *(v0 + 8336) = xmmword_1BCE46860;
  *(v0 + 2496) = 0x4316000044610000;
  *(v0 + 8576) = 0x4316000044610000;
  *(v0 + 2512) = xmmword_1BCE40590;
  *(v0 + 8592) = xmmword_1BCE40590;
  *(v0 + 2528) = xmmword_1BCE405A0;
  *(v0 + 8608) = xmmword_1BCE405A0;
  *(v0 + 2544) = xmmword_1BCE405B0;
  *(v0 + 3760) = xmmword_1BCE405B0;
  *(v0 + 7408) = xmmword_1BCE405B0;
  *(v0 + 8624) = xmmword_1BCE405B0;
  *(v0 + 2560) = xmmword_1BCE405C0;
  *(v0 + 3776) = xmmword_1BCE405C0;
  *(v0 + 7424) = xmmword_1BCE405C0;
  *(v0 + 8640) = xmmword_1BCE405C0;
  *(v0 + 2608) = xmmword_1BCE485D0;
  *(v0 + 8688) = xmmword_1BCE485D0;
  *(v0 + 2624) = xmmword_1BCE485E0;
  *(v0 + 8704) = xmmword_1BCE485E0;
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
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE467F0;
  *(v0 + 9008) = xmmword_1BCE467F0;
  *(v0 + 2944) = xmmword_1BCE46800;
  *(v0 + 9024) = xmmword_1BCE46800;
  *(v0 + 2960) = xmmword_1BCE48620;
  *(v0 + 9040) = xmmword_1BCE48620;
  *(v0 + 2976) = xmmword_1BCE48630;
  *(v0 + 9056) = xmmword_1BCE48630;
  *(v0 + 9072) = xmmword_1BCE48760;
  *(v0 + 9088) = xmmword_1BCE48770;
  *(v0 + 3024) = xmmword_1BCE46850;
  *(v0 + 9104) = xmmword_1BCE46850;
  *(v0 + 3040) = xmmword_1BCE42F00;
  *(v0 + 9120) = xmmword_1BCE42F00;
  *(v0 + 3440) = xmmword_1BCE48660;
  *(v0 + 9520) = xmmword_1BCE48660;
  *(v0 + 3456) = xmmword_1BCE3EE20;
  *(v0 + 5472) = xmmword_1BCE3EE20;
  *(v0 + 6688) = xmmword_1BCE3EE20;
  *(v0 + 9536) = xmmword_1BCE3EE20;
  *(v0 + 3472) = xmmword_1BCE48670;
  *(v0 + 5904) = xmmword_1BCE48670;
  *(v0 + 7120) = xmmword_1BCE48670;
  *(v0 + 9552) = xmmword_1BCE48670;
  *(v0 + 1280) = 0x42C8000044160000;
  *(v0 + 9792) = 0x42C8000044160000;
  *(v0 + 1744) = xmmword_1BCE485A0;
  *(v0 + 10256) = xmmword_1BCE485A0;
  *(v0 + 1760) = xmmword_1BCE485B0;
  *(v0 + 10272) = xmmword_1BCE485B0;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 1264) = xmmword_1BCE3CB30;
  *(v0 + 2480) = xmmword_1BCE3CB30;
  *(v0 + 8560) = xmmword_1BCE3CB30;
  *(v0 + 9776) = xmmword_1BCE3CB30;
  *(v0 + 10992) = xmmword_1BCE3CB30;
  *(v0 + 11008) = 0x42C8000043FA0000;
  *(v0 + 176) = xmmword_1BCE484B0;
  *(v0 + 192) = xmmword_1BCE484C0;
  *(v0 + 1296) = xmmword_1BCE403D0;
  *(v0 + 9808) = xmmword_1BCE403D0;
  *(v0 + 11024) = xmmword_1BCE403D0;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE403E0;
  *(v0 + 9824) = xmmword_1BCE403E0;
  *(v0 + 11040) = xmmword_1BCE403E0;
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
  *(v0 + 1392) = xmmword_1BCE484B0;
  *(v0 + 9904) = xmmword_1BCE484B0;
  *(v0 + 11120) = xmmword_1BCE484B0;
  *(v0 + 1408) = xmmword_1BCE484C0;
  *(v0 + 9920) = xmmword_1BCE484C0;
  *(v0 + 11136) = xmmword_1BCE484C0;
  *(v0 + 1456) = xmmword_1BCE466F0;
  *(v0 + 9968) = xmmword_1BCE466F0;
  *(v0 + 11184) = xmmword_1BCE466F0;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1488) = xmmword_1BCE40440;
  *(v0 + 10000) = xmmword_1BCE40440;
  *(v0 + 11216) = xmmword_1BCE40440;
  result = 1.0;
  *(v0 + 1504) = xmmword_1BCE46700;
  *(v0 + 10016) = xmmword_1BCE46700;
  *(v0 + 11232) = xmmword_1BCE46700;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 4672) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 5888) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7104) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 8240) = _Q4;
  *(v0 + 8320) = xmmword_1BCE3E1D0;
  *(v0 + 8352) = xmmword_1BCE3A880;
  *(v0 + 8368) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q4;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 1065353216;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 7600) = _Q4;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7504) = _Q4;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 7337) = *v13;
  *(v0 + 7368) = 1056964608;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 6528) = 0u;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 6512) = 0u;
  *(v0 + 6736) = _Q4;
  *(v0 + 7136) = xmmword_1BCE3A880;
  *(v0 + 7152) = _Q4;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 496) = xmmword_1BCE48500;
  *(v0 + 512) = xmmword_1BCE48510;
  *(v0 + 10224) = xmmword_1BCE48500;
  *(v0 + 11440) = xmmword_1BCE48500;
  *(v0 + 10240) = xmmword_1BCE48510;
  *(v0 + 11456) = xmmword_1BCE48510;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 528) = xmmword_1BCE48520;
  *(v0 + 544) = xmmword_1BCE48530;
  *(v0 + 11472) = xmmword_1BCE48520;
  *(v0 + 6544) = _Q4;
  *(v0 + 11488) = xmmword_1BCE48530;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 1065353216;
  *(v0 + 560) = xmmword_1BCE46750;
  *(v0 + 576) = xmmword_1BCE48540;
  *(v0 + 1776) = xmmword_1BCE46750;
  *(v0 + 10288) = xmmword_1BCE46750;
  *(v0 + 11504) = xmmword_1BCE46750;
  *(v0 + 10304) = xmmword_1BCE48540;
  *(v0 + 11520) = xmmword_1BCE48540;
  *(v0 + 1808) = xmmword_1BCE46D80;
  *(v0 + 6384) = _Q4;
  *(v0 + 10320) = xmmword_1BCE46D80;
  *(v0 + 11536) = xmmword_1BCE46D80;
  *(v0 + 592) = xmmword_1BCE46D80;
  *(v0 + 608) = xmmword_1BCE48550;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1824) = xmmword_1BCE48550;
  *(v0 + 10336) = xmmword_1BCE48550;
  *(v0 + 11552) = xmmword_1BCE48550;
  *(v0 + 6121) = *v12;
  *(v0 + 6152) = 1061997773;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 5920) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE48560;
  *(v0 + 10736) = xmmword_1BCE48560;
  *(v0 + 11952) = xmmword_1BCE48560;
  *(v0 + 1008) = xmmword_1BCE48560;
  *(v0 + 1024) = xmmword_1BCE40000;
  *(v0 + 2240) = xmmword_1BCE40000;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 10752) = xmmword_1BCE40000;
  *(v0 + 11968) = xmmword_1BCE40000;
  *(v0 + 1040) = xmmword_1BCE48570;
  *(v0 + 2256) = xmmword_1BCE48570;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1065353216;
  *(v0 + 10768) = xmmword_1BCE48570;
  *(v0 + 11984) = xmmword_1BCE48570;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1056) = xmmword_1BCE3A880;
  *(v0 + 5168) = _Q4;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2272) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3488) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 4704) = xmmword_1BCE3A880;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1061997773;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9568) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10784) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 12000) = xmmword_1BCE3A880;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 3952) = _Q4;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 3856) = _Q4;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3184) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 3689) = *v10;
  *(v0 + 3720) = 1056964608;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 3264) = _Q4;
  *(v0 + 3504) = _Q4;
  *(v0 + 3536) = _Q4;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
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
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 3056) = _Q4;
  *(v0 + 208) = _Q4;
  *(v0 + 304) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 928) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 2736) = _Q4;
  *(v0 + 656) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 2640) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1056964608;
  *(v0 + 1152) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q4;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2288) = _Q4;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 2192) = _Q4;
  *(v0 + 1288) = 1053609165;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 1424) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 2032) = _Q4;
  *(v0 + 2048) = _Q4;
  *(v0 + 2064) = _Q4;
  *(v0 + 2080) = _Q4;
  *(v0 + 1520) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1904) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 1616) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
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
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 1065353216;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1053609165;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v14;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1056964608;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1065353216;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
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