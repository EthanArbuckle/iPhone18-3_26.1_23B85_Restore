unint64_t sub_1BCA249E4()
{
  result = qword_1EBD07C68;
  if (!qword_1EBD07C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C68);
  }

  return result;
}

unint64_t sub_1BCA24A3C()
{
  result = qword_1EBD07C70;
  if (!qword_1EBD07C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C70);
  }

  return result;
}

unint64_t sub_1BCA24A94()
{
  result = qword_1EBD07C78;
  if (!qword_1EBD07C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C78);
  }

  return result;
}

unint64_t sub_1BCA24AEC()
{
  result = qword_1EBD07C80;
  if (!qword_1EBD07C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C80);
  }

  return result;
}

unint64_t sub_1BCA24B44()
{
  result = qword_1EBD07C88;
  if (!qword_1EBD07C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C88);
  }

  return result;
}

unint64_t sub_1BCA24B9C()
{
  result = qword_1EBD07C90;
  if (!qword_1EBD07C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C90);
  }

  return result;
}

unint64_t sub_1BCA24BF4()
{
  result = qword_1EBD07C98;
  if (!qword_1EBD07C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07C98);
  }

  return result;
}

unint64_t sub_1BCA24C4C()
{
  result = qword_1EBD07CA0;
  if (!qword_1EBD07CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07CA0);
  }

  return result;
}

uint64_t sub_1BCA24CA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIViewController.addViewFillingChild(_:)(UIViewController_optional *a1)
{
  if (!a1)
  {
    return;
  }

  v16 = a1;
  [v1 addChildViewController_];
  v2 = [(UIViewController_optional *)v16 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;

  [v3 setFrame_];
  v10 = [(UIViewController_optional *)v16 view];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  [v10 setAutoresizingMask_];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [(UIViewController_optional *)v16 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = v14;
  [v13 addSubview_];

  [(UIViewController_optional *)v16 didMoveToParentViewController:v1];
}

Swift::Void __swiftcall UIViewController.removeFromParentAndSuperview()()
{
  [v0 willMoveToParentViewController_];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];

    [v0 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BCA24F6C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA25740();
  v4 = v3;
  sub_1BCA25740();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE412E0;
  *(a1 + 112) = 0x3E8000003E3851EBLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE412F0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x41F00000413B04ADLL;
  *(a1 + 248) = 1128792064;
  *(a1 + 256) = 0x3E8F5C293E23D70ALL;
  *(a1 + 264) = 0x40A00000411684A3;
  *(a1 + 272) = 1091567616;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4396000041900000;
  *(a1 + 328) = 0x3E4CCCCD3E051EB8;
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
  *(a1 + 712) = 0x402CCCCC3F666667;
  *(a1 + 720) = 0x4182A3D741600000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3FE666673F19999ALL;
  *(a1 + 848) = 0x4190000041400000;
  *(a1 + 856) = 1092616192;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE41300;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4019999A3F19999ALL;
  *(a1 + 976) = 0x4120000041000000;
  *(a1 + 984) = 1075838976;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
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
  *(a1 + 1216) = xmmword_1BCE41310;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3EFAE1473E851EB8;
  *(a1 + 1296) = 0x41C8000042340000;
  *(a1 + 1304) = 1082130432;
  *(a1 + 1312) = xmmword_1BCE3E0D0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0;
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
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x101010101010101;
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
  *(a1 + 1760) = 6;
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
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x404000003F800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1045220557;
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

double sub_1BCA25740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE41320;
  *(v0 + 64) = 0x41A0000043480000;
  *(v0 + 80) = xmmword_1BCE41330;
  *(v0 + 96) = xmmword_1BCE41340;
  *(v0 + 112) = xmmword_1BCE3EBF0;
  *(v0 + 128) = xmmword_1BCE3EC00;
  *(v0 + 144) = xmmword_1BCE3EC10;
  *(v0 + 160) = xmmword_1BCE3EC20;
  *(v0 + 2960) = xmmword_1BCE41570;
  *(v0 + 2976) = xmmword_1BCE41580;
  *(v0 + 3072) = xmmword_1BCE3E220;
  *(v0 + 3120) = xmmword_1BCE415C0;
  *(v0 + 3136) = xmmword_1BCE415D0;
  *(v0 + 3168) = xmmword_1BCE415E0;
  *(v0 + 3440) = xmmword_1BCE41660;
  *(v0 + 3456) = xmmword_1BCE41670;
  *(v0 + 3488) = xmmword_1BCE41680;
  *(v0 + 4912) = xmmword_1BCE3EED0;
  *(v0 + 6128) = xmmword_1BCE3EED0;
  *(v0 + 4928) = 1148846080;
  *(v0 + 6144) = 1148846080;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5392) = xmmword_1BCE41790;
  *(v0 + 6608) = xmmword_1BCE41790;
  *(v0 + 5456) = xmmword_1BCE417A0;
  *(v0 + 6672) = xmmword_1BCE417A0;
  *(v0 + 5408) = xmmword_1BCE3EDE0;
  *(v0 + 5472) = xmmword_1BCE3EDE0;
  *(v0 + 6624) = xmmword_1BCE3EDE0;
  *(v0 + 6688) = xmmword_1BCE3EDE0;
  *(v0 + 5600) = xmmword_1BCE417B0;
  *(v0 + 6816) = xmmword_1BCE417B0;
  *(v0 + 5792) = xmmword_1BCE3E2C0;
  *(v0 + 7008) = xmmword_1BCE3E2C0;
  *(v0 + 5872) = xmmword_1BCE417C0;
  *(v0 + 7088) = xmmword_1BCE417C0;
  *(v0 + 5904) = xmmword_1BCE417D0;
  *(v0 + 7120) = xmmword_1BCE417D0;
  *(v0 + 5920) = xmmword_1BCE417E0;
  *(v0 + 7136) = xmmword_1BCE417E0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1147207680;
  *(v0 + 7360) = 1147207680;
  *(v0 + 3728) = xmmword_1BCE41690;
  *(v0 + 7376) = xmmword_1BCE41690;
  *(v0 + 3760) = xmmword_1BCE3EE60;
  *(v0 + 4976) = xmmword_1BCE3EE60;
  *(v0 + 6192) = xmmword_1BCE3EE60;
  *(v0 + 7408) = xmmword_1BCE3EE60;
  *(v0 + 3776) = xmmword_1BCE3EEE0;
  *(v0 + 4992) = xmmword_1BCE3EEE0;
  *(v0 + 6208) = xmmword_1BCE3EEE0;
  *(v0 + 7424) = xmmword_1BCE3EEE0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 4016) = xmmword_1BCE416A0;
  *(v0 + 5232) = xmmword_1BCE416A0;
  *(v0 + 6448) = xmmword_1BCE416A0;
  *(v0 + 7664) = xmmword_1BCE416A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4176) = xmmword_1BCE416B0;
  *(v0 + 7824) = xmmword_1BCE416B0;
  *(v0 + 4192) = xmmword_1BCE416C0;
  *(v0 + 7840) = xmmword_1BCE416C0;
  *(v0 + 4240) = xmmword_1BCE416D0;
  *(v0 + 7888) = xmmword_1BCE416D0;
  *(v0 + 4272) = xmmword_1BCE3C8F0;
  *(v0 + 4304) = xmmword_1BCE3C8F0;
  *(v0 + 5488) = xmmword_1BCE3C8F0;
  *(v0 + 5520) = xmmword_1BCE3C8F0;
  *(v0 + 6704) = xmmword_1BCE3C8F0;
  *(v0 + 6736) = xmmword_1BCE3C8F0;
  *(v0 + 7920) = xmmword_1BCE3C8F0;
  *(v0 + 7952) = xmmword_1BCE3C8F0;
  *(v0 + 4352) = xmmword_1BCE416F0;
  *(v0 + 8000) = xmmword_1BCE416F0;
  *(v0 + 3056) = xmmword_1BCE3CCB0;
  *(v0 + 3088) = xmmword_1BCE3CCB0;
  *(v0 + 4336) = xmmword_1BCE3CCB0;
  *(v0 + 4368) = xmmword_1BCE3CCB0;
  *(v0 + 5552) = xmmword_1BCE3CCB0;
  *(v0 + 5584) = xmmword_1BCE3CCB0;
  *(v0 + 6768) = xmmword_1BCE3CCB0;
  *(v0 + 6800) = xmmword_1BCE3CCB0;
  *(v0 + 7984) = xmmword_1BCE3CCB0;
  *(v0 + 8016) = xmmword_1BCE3CCB0;
  *(v0 + 3104) = xmmword_1BCE3CBA0;
  *(v0 + 4384) = xmmword_1BCE3CBA0;
  *(v0 + 8032) = xmmword_1BCE3CBA0;
  *(v0 + 4464) = xmmword_1BCE41700;
  *(v0 + 8112) = xmmword_1BCE41700;
  *(v0 + 4480) = xmmword_1BCE41710;
  *(v0 + 8128) = xmmword_1BCE41710;
  *(v0 + 4496) = xmmword_1BCE41720;
  *(v0 + 8144) = xmmword_1BCE41720;
  *(v0 + 4512) = xmmword_1BCE41730;
  *(v0 + 8160) = xmmword_1BCE41730;
  *(v0 + 4528) = xmmword_1BCE41740;
  *(v0 + 5744) = xmmword_1BCE41740;
  *(v0 + 6960) = xmmword_1BCE41740;
  *(v0 + 8176) = xmmword_1BCE41740;
  *(v0 + 4560) = xmmword_1BCE41750;
  *(v0 + 8208) = xmmword_1BCE41750;
  *(v0 + 4256) = xmmword_1BCE416E0;
  *(v0 + 4576) = xmmword_1BCE416E0;
  *(v0 + 7904) = xmmword_1BCE416E0;
  *(v0 + 8224) = xmmword_1BCE416E0;
  *(v0 + 4656) = xmmword_1BCE41760;
  *(v0 + 8304) = xmmword_1BCE41760;
  *(v0 + 4672) = xmmword_1BCE41770;
  *(v0 + 8320) = xmmword_1BCE41770;
  *(v0 + 4704) = xmmword_1BCE41780;
  *(v0 + 8352) = xmmword_1BCE41780;
  *(v0 + 2480) = xmmword_1BCE3EDA0;
  *(v0 + 8560) = xmmword_1BCE3EDA0;
  *(v0 + 2496) = 1135542272;
  *(v0 + 8576) = 1135542272;
  *(v0 + 2512) = xmmword_1BCE41520;
  *(v0 + 8592) = xmmword_1BCE41520;
  *(v0 + 2528) = xmmword_1BCE41530;
  *(v0 + 8608) = xmmword_1BCE41530;
  *(v0 + 2544) = xmmword_1BCE41540;
  *(v0 + 8624) = xmmword_1BCE41540;
  *(v0 + 2560) = xmmword_1BCE3EDD0;
  *(v0 + 8640) = xmmword_1BCE3EDD0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  v1 = vdupq_n_s64(0x3FE0ECE8A0000000uLL);
  *(v0 + 2736) = v1;
  *(v0 + 8816) = v1;
  *(v0 + 2752) = xmmword_1BCE3EDF0;
  *(v0 + 8832) = xmmword_1BCE3EDF0;
  *(v0 + 2800) = xmmword_1BCE41550;
  *(v0 + 8880) = xmmword_1BCE41550;
  *v1.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1.i64[0];
  *(v0 + 8896) = v1.i64[0];
  *(v0 + 2928) = xmmword_1BCE41560;
  *(v0 + 4144) = xmmword_1BCE41560;
  *(v0 + 5360) = xmmword_1BCE41560;
  *(v0 + 6576) = xmmword_1BCE41560;
  *(v0 + 7792) = xmmword_1BCE41560;
  *(v0 + 9008) = xmmword_1BCE41560;
  *(v0 + 9040) = xmmword_1BCE417F0;
  *(v0 + 9056) = xmmword_1BCE41800;
  *(v0 + 2992) = xmmword_1BCE41590;
  *(v0 + 4208) = xmmword_1BCE41590;
  *(v0 + 5424) = xmmword_1BCE41590;
  *(v0 + 6640) = xmmword_1BCE41590;
  *(v0 + 7856) = xmmword_1BCE41590;
  *(v0 + 9072) = xmmword_1BCE41590;
  *(v0 + 3024) = xmmword_1BCE415A0;
  *(v0 + 9104) = xmmword_1BCE415A0;
  *(v0 + 3040) = xmmword_1BCE415B0;
  *(v0 + 9120) = xmmword_1BCE415B0;
  *(v0 + 9136) = xmmword_1BCE41810;
  *(v0 + 9152) = xmmword_1BCE41820;
  *(v0 + 9168) = xmmword_1BCE41830;
  *(v0 + 9184) = xmmword_1BCE41840;
  *(v0 + 9200) = xmmword_1BCE41850;
  *(v0 + 9216) = xmmword_1BCE41860;
  *(v0 + 9232) = xmmword_1BCE41870;
  __asm { FMOV            V16.2D, #0.75 }

  *(v0 + 9248) = _Q16;
  *(v0 + 3248) = xmmword_1BCE415F0;
  *(v0 + 9328) = xmmword_1BCE415F0;
  *(v0 + 3264) = xmmword_1BCE41600;
  *(v0 + 9344) = xmmword_1BCE41600;
  *(v0 + 3280) = xmmword_1BCE41610;
  *(v0 + 9360) = xmmword_1BCE41610;
  *(v0 + 3296) = xmmword_1BCE41620;
  *(v0 + 9376) = xmmword_1BCE41620;
  *(v0 + 3344) = xmmword_1BCE41630;
  *(v0 + 9424) = xmmword_1BCE41630;
  *(v0 + 3360) = xmmword_1BCE41640;
  *(v0 + 9440) = xmmword_1BCE41640;
  *(v0 + 3376) = xmmword_1BCE41650;
  *(v0 + 9456) = xmmword_1BCE41650;
  *(v0 + 9520) = xmmword_1BCE41880;
  *(v0 + 9568) = xmmword_1BCE41890;
  *(v0 + 10224) = xmmword_1BCE418A0;
  *(v0 + 10240) = xmmword_1BCE418B0;
  *(v0 + 10256) = xmmword_1BCE418C0;
  *(v0 + 10272) = xmmword_1BCE418D0;
  *(v0 + 10320) = xmmword_1BCE418E0;
  v7 = vdupq_n_s64(0x3FD3333340000000uLL);
  *(v0 + 9536) = v7;
  *(v0 + 9552) = v7;
  *(v0 + 10336) = v7;
  *(v0 + 10352) = xmmword_1BCE418F0;
  *(v0 + 10384) = xmmword_1BCE41900;
  *(v0 + 10400) = xmmword_1BCE41910;
  *(v0 + 10416) = xmmword_1BCE41920;
  *(v0 + 10432) = xmmword_1BCE41930;
  *(v0 + 10448) = xmmword_1BCE41940;
  *(v0 + 10464) = xmmword_1BCE41950;
  *(v0 + 10736) = xmmword_1BCE41960;
  __asm { FMOV            V16.2D, #0.25 }

  *(v0 + 10752) = _Q16;
  *(v0 + 10768) = xmmword_1BCE41970;
  __asm { FMOV            V16.2D, #1.0 }

  *(v0 + 1264) = xmmword_1BCE41320;
  *(v0 + 9776) = xmmword_1BCE41320;
  *(v0 + 10992) = xmmword_1BCE41320;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 1280) = 0x41A0000043480000;
  *(v0 + 9792) = 0x41A0000043480000;
  *(v0 + 11008) = 0x41A0000043480000;
  __asm { FMOV            V7.2D, #0.5 }

  *(v0 + 1296) = xmmword_1BCE41330;
  *(v0 + 9808) = xmmword_1BCE41330;
  *(v0 + 11024) = xmmword_1BCE41330;
  *(v0 + 304) = _Q7;
  *(v0 + 320) = xmmword_1BCE3EC60;
  *(v0 + 1312) = xmmword_1BCE41340;
  *(v0 + 9824) = xmmword_1BCE41340;
  *(v0 + 11040) = xmmword_1BCE41340;
  *(v0 + 368) = xmmword_1BCE41350;
  *(v0 + 1328) = xmmword_1BCE3EBF0;
  *(v0 + 9840) = xmmword_1BCE3EBF0;
  *(v0 + 11056) = xmmword_1BCE3EBF0;
  *(v0 + 1344) = xmmword_1BCE3EC00;
  *(v0 + 9856) = xmmword_1BCE3EC00;
  *(v0 + 11072) = xmmword_1BCE3EC00;
  *(v0 + 1360) = xmmword_1BCE3EC10;
  *(v0 + 9872) = xmmword_1BCE3EC10;
  *(v0 + 11088) = xmmword_1BCE3EC10;
  *(v0 + 1376) = xmmword_1BCE3EC20;
  *(v0 + 9888) = xmmword_1BCE3EC20;
  *(v0 + 11104) = xmmword_1BCE3EC20;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 8368) = _Q16;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 8336) = xmmword_1BCE41400;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 8256) = xmmword_1BCE3A880;
  *(v0 + 8272) = xmmword_1BCE414C0;
  *(v0 + 8288) = xmmword_1BCE414D0;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1520) = _Q7;
  *(v0 + 0x2000) = xmmword_1BCE3A880;
  *(v0 + 8240) = xmmword_1BCE414C0;
  *(v0 + 10032) = _Q7;
  *(v0 + 10368) = _Q7;
  *(v0 + 11248) = _Q7;
  *(v0 + 8080) = _Q16;
  *(v0 + 8096) = _Q16;
  *(v0 + 1536) = xmmword_1BCE3EC60;
  *(v0 + 8048) = _Q16;
  *(v0 + 8064) = _Q16;
  *(v0 + 10048) = xmmword_1BCE3EC60;
  *(v0 + 11264) = xmmword_1BCE3EC60;
  *(v0 + 496) = xmmword_1BCE41360;
  *(v0 + 512) = xmmword_1BCE41370;
  *(v0 + 7968) = _Q16;
  *(v0 + 1584) = xmmword_1BCE41350;
  *(v0 + 10096) = xmmword_1BCE41350;
  *(v0 + 11312) = xmmword_1BCE41350;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7936) = _Q16;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7808) = xmmword_1BCE3A880;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 528) = xmmword_1BCE41380;
  *(v0 + 544) = xmmword_1BCE41390;
  *(v0 + 1712) = xmmword_1BCE41360;
  *(v0 + 7744) = _Q16;
  *(v0 + 7760) = _Q16;
  *(v0 + 7776) = _Q16;
  *(v0 + 11440) = xmmword_1BCE41360;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7728) = _Q16;
  *(v0 + 1728) = xmmword_1BCE41370;
  *(v0 + 11456) = xmmword_1BCE41370;
  *(v0 + 7648) = _Q16;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7552) = _Q16;
  *(v0 + 7568) = _Q16;
  *(v0 + 7584) = _Q16;
  *(v0 + 7600) = _Q16;
  *(v0 + 7632) = _Q16;
  *(v0 + 560) = xmmword_1BCE413A0;
  *(v0 + 576) = xmmword_1BCE413B0;
  *(v0 + 7472) = _Q16;
  *(v0 + 7488) = _Q16;
  *(v0 + 7504) = _Q16;
  *(v0 + 7536) = _Q16;
  *(v0 + 1744) = xmmword_1BCE41380;
  *(v0 + 11472) = xmmword_1BCE41380;
  *(v0 + 1760) = xmmword_1BCE41390;
  *(v0 + 11488) = xmmword_1BCE41390;
  *(v0 + 1776) = xmmword_1BCE413A0;
  *(v0 + 7368) = 1065353216;
  *(v0 + 7392) = _Q16;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v17;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 10288) = xmmword_1BCE413A0;
  *(v0 + 11504) = xmmword_1BCE413A0;
  *(v0 + 7184) = _Q16;
  *(v0 + 7264) = _Q16;
  *(v0 + 7280) = _Q16;
  *(v0 + 7296) = _Q16;
  *(v0 + 7200) = _Q16;
  *(v0 + 7216) = _Q16;
  *(v0 + 7232) = _Q16;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 592) = xmmword_1BCE413C0;
  *(v0 + 608) = xmmword_1BCE413D0;
  *(v0 + 7104) = xmmword_1BCE3A880;
  *(v0 + 7152) = _Q16;
  *(v0 + 7168) = _Q16;
  *(v0 + 1792) = xmmword_1BCE413B0;
  *(v0 + 7024) = xmmword_1BCE414C0;
  *(v0 + 7040) = xmmword_1BCE3A880;
  *(v0 + 7056) = xmmword_1BCE414C0;
  *(v0 + 7072) = xmmword_1BCE414D0;
  *(v0 + 10304) = xmmword_1BCE413B0;
  *(v0 + 11520) = xmmword_1BCE413B0;
  *(v0 + 6928) = xmmword_1BCE41490;
  *(v0 + 6944) = _Q16;
  *(v0 + 6976) = xmmword_1BCE3A880;
  *(v0 + 6992) = xmmword_1BCE414C0;
  *(v0 + 1808) = xmmword_1BCE413C0;
  *(v0 + 6848) = _Q16;
  *(v0 + 6864) = _Q16;
  *(v0 + 6880) = _Q16;
  *(v0 + 6896) = xmmword_1BCE41490;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 11536) = xmmword_1BCE413C0;
  *(v0 + 1824) = xmmword_1BCE413D0;
  *(v0 + 6832) = _Q16;
  *(v0 + 11552) = xmmword_1BCE413D0;
  *(v0 + 624) = xmmword_1BCE413E0;
  *(v0 + 640) = xmmword_1BCE413F0;
  *(v0 + 6752) = _Q16;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 1840) = xmmword_1BCE413E0;
  *(v0 + 11568) = xmmword_1BCE413E0;
  *(v0 + 672) = xmmword_1BCE41410;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 6720) = _Q16;
  *(v0 + 1856) = xmmword_1BCE413F0;
  *(v0 + 11584) = xmmword_1BCE413F0;
  *(v0 + 6560) = _Q16;
  *(v0 + 6592) = xmmword_1BCE3A880;
  *(v0 + 1888) = xmmword_1BCE41410;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q16;
  *(v0 + 6528) = _Q16;
  *(v0 + 6544) = _Q16;
  *(v0 + 11616) = xmmword_1BCE41410;
  *(v0 + 1904) = xmmword_1BCE41420;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 11632) = xmmword_1BCE41420;
  *(v0 + 688) = xmmword_1BCE41420;
  *(v0 + 704) = xmmword_1BCE41430;
  *(v0 + 6352) = _Q16;
  *(v0 + 6368) = _Q16;
  *(v0 + 6384) = _Q16;
  *(v0 + 6416) = _Q16;
  *(v0 + 6432) = _Q16;
  *(v0 + 656) = xmmword_1BCE41400;
  *(v0 + 6288) = _Q16;
  *(v0 + 6320) = _Q16;
  *(v0 + 6336) = _Q16;
  *(v0 + 1920) = xmmword_1BCE41430;
  *(v0 + 11648) = xmmword_1BCE41430;
  *(v0 + 6256) = _Q16;
  *(v0 + 6272) = _Q16;
  *(v0 + 720) = xmmword_1BCE41400;
  *(v0 + 736) = xmmword_1BCE41440;
  *(v0 + 6176) = _Q16;
  *(v0 + 6121) = *v16;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1065353216;
  *(v0 + 6160) = _Q16;
  *(v0 + 6048) = _Q16;
  *(v0 + 6064) = _Q16;
  *(v0 + 6080) = _Q16;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 5968) = _Q16;
  *(v0 + 5984) = _Q16;
  *(v0 + 6000) = _Q16;
  *(v0 + 6016) = _Q16;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 1872) = xmmword_1BCE41400;
  *(v0 + 1936) = xmmword_1BCE41400;
  *(v0 + 3152) = xmmword_1BCE41400;
  *(v0 + 5888) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q16;
  *(v0 + 5952) = _Q16;
  *(v0 + 3472) = xmmword_1BCE41400;
  *(v0 + 5776) = xmmword_1BCE414C0;
  *(v0 + 5808) = xmmword_1BCE414C0;
  *(v0 + 5824) = xmmword_1BCE3A880;
  *(v0 + 5840) = xmmword_1BCE414C0;
  *(v0 + 5856) = xmmword_1BCE414D0;
  *(v0 + 4688) = xmmword_1BCE41400;
  *(v0 + 5680) = xmmword_1BCE41490;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 5712) = xmmword_1BCE41490;
  *(v0 + 5728) = _Q16;
  *(v0 + 5760) = xmmword_1BCE3A880;
  *(v0 + 5616) = _Q16;
  *(v0 + 5632) = _Q16;
  *(v0 + 5648) = _Q16;
  *(v0 + 5664) = _Q16;
  *(v0 + 11600) = xmmword_1BCE41400;
  *(v0 + 11664) = xmmword_1BCE41400;
  *(v0 + 1952) = xmmword_1BCE41440;
  *(v0 + 11680) = xmmword_1BCE41440;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 816) = xmmword_1BCE41450;
  *(v0 + 832) = xmmword_1BCE41460;
  *(v0 + 2032) = xmmword_1BCE41450;
  *(v0 + 5504) = _Q16;
  *(v0 + 5536) = _Q16;
  *(v0 + 10544) = xmmword_1BCE41450;
  *(v0 + 11760) = xmmword_1BCE41450;
  *(v0 + 2048) = xmmword_1BCE41460;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 10560) = xmmword_1BCE41460;
  *(v0 + 11776) = xmmword_1BCE41460;
  *(v0 + 5328) = _Q16;
  *(v0 + 5344) = _Q16;
  *(v0 + 5376) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q16;
  *(v0 + 5312) = _Q16;
  *(v0 + 848) = xmmword_1BCE41470;
  *(v0 + 864) = xmmword_1BCE41480;
  *(v0 + 2064) = xmmword_1BCE41470;
  *(v0 + 5168) = _Q16;
  *(v0 + 5200) = _Q16;
  *(v0 + 5216) = _Q16;
  *(v0 + 5104) = _Q16;
  *(v0 + 5120) = _Q16;
  *(v0 + 5136) = _Q16;
  *(v0 + 5152) = _Q16;
  *(v0 + 10576) = xmmword_1BCE41470;
  *(v0 + 11792) = xmmword_1BCE41470;
  *(v0 + 2080) = xmmword_1BCE41480;
  *(v0 + 5040) = _Q16;
  *(v0 + 5056) = _Q16;
  *(v0 + 5072) = _Q16;
  *(v0 + 10592) = xmmword_1BCE41480;
  *(v0 + 11808) = xmmword_1BCE41480;
  *(v0 + 2128) = xmmword_1BCE414A0;
  *(v0 + 4800) = _Q16;
  *(v0 + 4905) = *v15;
  *(v0 + 4936) = 1065353216;
  *(v0 + 4944) = _Q16;
  *(v0 + 4960) = _Q16;
  *(v0 + 4864) = _Q16;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q16;
  *(v0 + 4848) = _Q16;
  *(v0 + 10640) = xmmword_1BCE414A0;
  *(v0 + 11856) = xmmword_1BCE414A0;
  *(v0 + 912) = xmmword_1BCE414A0;
  *(v0 + 928) = xmmword_1BCE414B0;
  *(v0 + 4720) = _Q16;
  *(v0 + 4736) = _Q16;
  *(v0 + 4752) = _Q16;
  *(v0 + 4768) = _Q16;
  *(v0 + 4784) = _Q16;
  *(v0 + 2144) = xmmword_1BCE414B0;
  *(v0 + 4608) = xmmword_1BCE3A880;
  *(v0 + 4624) = xmmword_1BCE414C0;
  *(v0 + 4640) = xmmword_1BCE414D0;
  *(v0 + 10656) = xmmword_1BCE414B0;
  *(v0 + 11872) = xmmword_1BCE414B0;
  *(v0 + 944) = xmmword_1BCE41490;
  *(v0 + 960) = xmmword_1BCE3A880;
  *(v0 + 2096) = xmmword_1BCE41490;
  *(v0 + 2160) = xmmword_1BCE41490;
  *(v0 + 4544) = xmmword_1BCE3A880;
  *(v0 + 4592) = xmmword_1BCE414C0;
  *(v0 + 4416) = _Q16;
  *(v0 + 4432) = _Q16;
  *(v0 + 4448) = _Q16;
  *(v0 + 10608) = xmmword_1BCE41490;
  *(v0 + 10672) = xmmword_1BCE41490;
  *(v0 + 11824) = xmmword_1BCE41490;
  *(v0 + 11888) = xmmword_1BCE41490;
  *(v0 + 880) = xmmword_1BCE41490;
  *(v0 + 896) = xmmword_1BCE3A880;
  *(v0 + 4320) = _Q16;
  *(v0 + 4400) = _Q16;
  *(v0 + 2112) = xmmword_1BCE3A880;
  *(v0 + 2176) = xmmword_1BCE3A880;
  *(v0 + 2944) = xmmword_1BCE3A880;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4288) = _Q16;
  *(v0 + 3328) = xmmword_1BCE3A880;
  *(v0 + 3392) = xmmword_1BCE3A880;
  *(v0 + 3888) = _Q16;
  *(v0 + 3904) = _Q16;
  *(v0 + 4128) = _Q16;
  *(v0 + 4160) = xmmword_1BCE3A880;
  *(v0 + 3920) = _Q16;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q16;
  *(v0 + 4096) = _Q16;
  *(v0 + 4112) = _Q16;
  *(v0 + 3936) = _Q16;
  *(v0 + 3952) = _Q16;
  *(v0 + 3984) = _Q16;
  *(v0 + 4000) = _Q16;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 9024) = xmmword_1BCE3A880;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9408) = xmmword_1BCE3A880;
  *(v0 + 9472) = xmmword_1BCE3A880;
  *(v0 + 10624) = xmmword_1BCE3A880;
  *(v0 + 10688) = xmmword_1BCE3A880;
  *(v0 + 11840) = xmmword_1BCE3A880;
  *(v0 + 11904) = xmmword_1BCE3A880;
  *(v0 + 976) = xmmword_1BCE414C0;
  *(v0 + 992) = xmmword_1BCE414D0;
  *(v0 + 3824) = _Q16;
  *(v0 + 3840) = _Q16;
  *(v0 + 3856) = _Q16;
  *(v0 + 2192) = xmmword_1BCE414C0;
  *(v0 + 3312) = xmmword_1BCE414C0;
  *(v0 + 3408) = xmmword_1BCE414C0;
  *(v0 + 3688) = 0;
  *(v0 + 3744) = _Q16;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 3720) = 1065353216;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q16;
  *(v0 + 3632) = _Q16;
  *(v0 + 3648) = _Q16;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3536) = _Q16;
  *(v0 + 3552) = _Q16;
  *(v0 + 3568) = _Q16;
  *(v0 + 3584) = _Q16;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 9392) = xmmword_1BCE414C0;
  *(v0 + 9488) = xmmword_1BCE414C0;
  *(v0 + 10704) = xmmword_1BCE414C0;
  *(v0 + 11920) = xmmword_1BCE414C0;
  *(v0 + 3504) = _Q16;
  *(v0 + 3520) = _Q16;
  *(v0 + 2208) = xmmword_1BCE414D0;
  *(v0 + 3424) = xmmword_1BCE414D0;
  *(v0 + 9504) = xmmword_1BCE414D0;
  *(v0 + 10720) = xmmword_1BCE414D0;
  *(v0 + 11936) = xmmword_1BCE414D0;
  *(v0 + 2224) = xmmword_1BCE414E0;
  *(v0 + 11952) = xmmword_1BCE414E0;
  *(v0 + 1008) = xmmword_1BCE414E0;
  *(v0 + 1024) = xmmword_1BCE414F0;
  *(v0 + 2240) = xmmword_1BCE414F0;
  *(v0 + 10784) = xmmword_1BCE414F0;
  *(v0 + 11968) = xmmword_1BCE414F0;
  *(v0 + 1040) = xmmword_1BCE41500;
  *(v0 + 3232) = _Q16;
  *(v0 + 2256) = xmmword_1BCE41500;
  *(v0 + 3184) = _Q16;
  *(v0 + 3200) = _Q16;
  *(v0 + 3216) = _Q16;
  *(v0 + 11984) = xmmword_1BCE41500;
  result = 1.0;
  *(v0 + 1056) = xmmword_1BCE41510;
  *(v0 + 2272) = xmmword_1BCE41510;
  *(v0 + 12000) = xmmword_1BCE41510;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 192) = _Q16;
  *(v0 + 208) = _Q16;
  *(v0 + 176) = _Q16;
  *(v0 + 2880) = _Q16;
  *(v0 + 2896) = _Q16;
  *(v0 + 2912) = _Q16;
  *(v0 + 240) = _Q16;
  *(v0 + 256) = _Q16;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q16;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 2864) = _Q16;
  *(v0 + 272) = _Q16;
  *(v0 + 288) = _Q16;
  *(v0 + 2720) = _Q16;
  *(v0 + 2768) = _Q16;
  *(v0 + 2784) = _Q16;
  *(v0 + 336) = _Q16;
  *(v0 + 352) = _Q16;
  *(v0 + 2624) = _Q16;
  *(v0 + 2640) = _Q16;
  *(v0 + 2672) = _Q16;
  *(v0 + 2688) = _Q16;
  *(v0 + 2704) = _Q16;
  *(v0 + 400) = _Q16;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 432) = _Q16;
  *(v0 + 448) = _Q16;
  *(v0 + 2608) = _Q16;
  *(v0 + 464) = _Q16;
  *(v0 + 480) = _Q16;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q16;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v13;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2504) = 1041865114;
  *(v0 + 2416) = _Q16;
  *(v0 + 2432) = _Q16;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 752) = _Q16;
  *(v0 + 768) = _Q16;
  *(v0 + 2304) = _Q16;
  *(v0 + 2320) = _Q16;
  *(v0 + 2336) = _Q16;
  *(v0 + 2352) = _Q16;
  *(v0 + 2368) = _Q16;
  *(v0 + 784) = _Q16;
  *(v0 + 800) = _Q16;
  *(v0 + 1072) = _Q16;
  *(v0 + 1088) = _Q16;
  *(v0 + 1104) = _Q16;
  *(v0 + 2288) = _Q16;
  *(v0 + 1120) = _Q16;
  *(v0 + 1136) = _Q16;
  *(v0 + 1152) = _Q16;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q16;
  *(v0 + 1200) = _Q16;
  *(v0 + 1216) = _Q16;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 2016) = _Q16;
  *(v0 + 1392) = _Q16;
  *(v0 + 1408) = _Q16;
  *(v0 + 1424) = _Q16;
  *(v0 + 1968) = _Q16;
  *(v0 + 1984) = _Q16;
  *(v0 + 2000) = _Q16;
  *(v0 + 1456) = _Q16;
  *(v0 + 1472) = _Q16;
  *(v0 + 1488) = _Q16;
  *(v0 + 1504) = _Q16;
  *(v0 + 1552) = _Q16;
  *(v0 + 1568) = _Q16;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q16;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1648) = _Q16;
  *(v0 + 1664) = _Q16;
  *(v0 + 1680) = _Q16;
  *(v0 + 1696) = _Q16;
  *(v0 + 8384) = _Q16;
  *(v0 + 8400) = _Q16;
  *(v0 + 8416) = _Q16;
  *(v0 + 8432) = _Q16;
  *(v0 + 8448) = _Q16;
  *(v0 + 8480) = _Q16;
  *(v0 + 8496) = _Q16;
  *(v0 + 8512) = _Q16;
  *(v0 + 8688) = _Q16;
  *(v0 + 8704) = _Q16;
  *(v0 + 8720) = _Q16;
  *(v0 + 8752) = _Q16;
  *(v0 + 8768) = _Q16;
  *(v0 + 8784) = _Q16;
  *(v0 + 8800) = _Q16;
  *(v0 + 8848) = _Q16;
  *(v0 + 8864) = _Q16;
  *(v0 + 8912) = _Q16;
  *(v0 + 8944) = _Q16;
  *(v0 + 8960) = _Q16;
  *(v0 + 8976) = _Q16;
  *(v0 + 8992) = _Q16;
  *(v0 + 9264) = _Q16;
  *(v0 + 9280) = _Q16;
  *(v0 + 9296) = _Q16;
  *(v0 + 9312) = _Q16;
  *(v0 + 9584) = _Q16;
  *(v0 + 9600) = _Q16;
  *(v0 + 9616) = _Q16;
  *(v0 + 9632) = _Q16;
  *(v0 + 9648) = _Q16;
  *(v0 + 9664) = _Q16;
  *(v0 + 9696) = _Q16;
  *(v0 + 9712) = _Q16;
  *(v0 + 9728) = _Q16;
  *(v0 + 9904) = _Q16;
  *(v0 + 9920) = _Q16;
  *(v0 + 9936) = _Q16;
  *(v0 + 9968) = _Q16;
  *(v0 + 9984) = _Q16;
  *(v0 + 10000) = _Q16;
  *(v0 + 10016) = _Q16;
  *(v0 + 10064) = _Q16;
  *(v0 + 10080) = _Q16;
  *(v0 + 10128) = _Q16;
  *(v0 + 10160) = _Q16;
  *(v0 + 10176) = _Q16;
  *(v0 + 10192) = _Q16;
  *(v0 + 10208) = _Q16;
  *(v0 + 10480) = _Q16;
  *(v0 + 10496) = _Q16;
  *(v0 + 10512) = _Q16;
  *(v0 + 10528) = _Q16;
  *(v0 + 10800) = _Q16;
  *(v0 + 10816) = _Q16;
  *(v0 + 10832) = _Q16;
  *(v0 + 10848) = _Q16;
  *(v0 + 10864) = _Q16;
  *(v0 + 10880) = _Q16;
  *(v0 + 10912) = _Q16;
  *(v0 + 10928) = _Q16;
  *(v0 + 10944) = _Q16;
  *(v0 + 11120) = _Q16;
  *(v0 + 11136) = _Q16;
  *(v0 + 11152) = _Q16;
  *(v0 + 11184) = _Q16;
  *(v0 + 11200) = _Q16;
  *(v0 + 11216) = _Q16;
  *(v0 + 11232) = _Q16;
  *(v0 + 11280) = _Q16;
  *(v0 + 11296) = _Q16;
  *(v0 + 11344) = _Q16;
  *(v0 + 11376) = _Q16;
  *(v0 + 11392) = _Q16;
  *(v0 + 11408) = _Q16;
  *(v0 + 11424) = _Q16;
  *(v0 + 11696) = _Q16;
  *(v0 + 11712) = _Q16;
  *(v0 + 11728) = _Q16;
  *(v0 + 11744) = _Q16;
  *(v0 + 12016) = _Q16;
  *(v0 + 12032) = _Q16;
  *(v0 + 12048) = _Q16;
  *(v0 + 12064) = _Q16;
  *(v0 + 12080) = _Q16;
  *(v0 + 12096) = _Q16;
  *(v0 + 12128) = _Q16;
  *(v0 + 12144) = _Q16;
  *(v0 + 12160) = _Q16;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8553) = *v18;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 8584) = 1041865114;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000000;
  *(v0 + 9769) = *v19;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v20;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

double sub_1BCA26950@<D0>(void *a1@<X8>)
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
  *(v2 + 408) = 0x3FC00B530DFF88F9;
  *(v2 + 416) = xmmword_1BCE41AB0;
  *(v2 + 432) = xmmword_1BCE41AC0;
  *(v2 + 448) = xmmword_1BCE41AD0;
  *(v2 + 464) = xmmword_1BCE41AE0;
  *(v2 + 480) = xmmword_1BCE41AF0;
  *(v2 + 496) = xmmword_1BCE3C8C0;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 528) = xmmword_1BCE41B00;
  *(v2 + 544) = xmmword_1BCE41B10;
  *(v2 + 560) = xmmword_1BCE41B20;
  *(v2 + 576) = xmmword_1BCE41B30;
  *(v2 + 592) = xmmword_1BCE41B40;
  *(v2 + 608) = xmmword_1BCE41B50;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FD2E130FAAA6B2DLL;
  *(v2 + 656) = xmmword_1BCE41B70;
  *(v2 + 672) = xmmword_1BCE41B80;
  *(v2 + 688) = xmmword_1BCE41B90;
  *(v2 + 704) = xmmword_1BCE41BA0;
  *(v2 + 720) = xmmword_1BCE41BB0;
  *(v2 + 736) = xmmword_1BCE3C8C0;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v4;
  *(v2 + 764) = *&v4[3];
  *(v2 + 768) = xmmword_1BCE41BC0;
  *(v2 + 784) = xmmword_1BCE41BD0;
  *(v2 + 800) = xmmword_1BCE41BE0;
  *(v2 + 816) = xmmword_1BCE41BF0;
  *(v2 + 832) = xmmword_1BCE41C00;
  *(v2 + 848) = xmmword_1BCE41C10;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 880) = 0;
  *(v2 + 881) = *v5;
  *(v2 + 884) = *&v5[3];
  *(v2 + 888) = 0x3FDF323B656F1871;
  *(v2 + 896) = xmmword_1BCE41C30;
  *(v2 + 912) = xmmword_1BCE41C40;
  *(v2 + 928) = xmmword_1BCE41C50;
  *(v2 + 944) = xmmword_1BCE41C60;
  *(v2 + 960) = xmmword_1BCE41C70;
  *(v2 + 976) = xmmword_1BCE3C8C0;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v6[3];
  *(v2 + 1001) = *v6;
  *(v2 + 1008) = xmmword_1BCE41C80;
  *(v2 + 1024) = xmmword_1BCE41C90;
  *(v2 + 1040) = xmmword_1BCE41CA0;
  *(v2 + 1056) = xmmword_1BCE41CB0;
  *(v2 + 1072) = xmmword_1BCE41CC0;
  *(v2 + 1088) = xmmword_1BCE41CD0;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v7;
  *(v2 + 1124) = *&v7[3];
  *(v2 + 1128) = 0x3FE0F19194F20962;
  *(v2 + 1136) = xmmword_1BCE41CF0;
  *(v2 + 1152) = xmmword_1BCE41D00;
  *(v2 + 1168) = xmmword_1BCE41D10;
  *(v2 + 1184) = xmmword_1BCE41D20;
  *(v2 + 1200) = xmmword_1BCE41D30;
  *(v2 + 1216) = xmmword_1BCE3C8C0;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v8[3];
  *(v2 + 1241) = *v8;
  *(v2 + 1248) = xmmword_1BCE41D40;
  *(v2 + 1264) = xmmword_1BCE41D50;
  *(v2 + 1280) = xmmword_1BCE41D60;
  *(v2 + 1296) = xmmword_1BCE41D70;
  *(v2 + 1312) = xmmword_1BCE41D80;
  *(v2 + 1328) = xmmword_1BCE41D90;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v9[3];
  *(v2 + 1361) = *v9;
  *(v2 + 1368) = 0x3FE0BD9D22E8BA4CLL;
  *(v2 + 1376) = xmmword_1BCE41DB0;
  *(v2 + 1392) = xmmword_1BCE41DC0;
  *(v2 + 1408) = xmmword_1BCE41DD0;
  *(v2 + 1424) = xmmword_1BCE41DE0;
  *(v2 + 1440) = xmmword_1BCE41DF0;
  *(v2 + 1456) = xmmword_1BCE3C8C0;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v10[3];
  *(v2 + 1481) = *v10;
  *(v2 + 1488) = xmmword_1BCE41E00;
  *(v2 + 1504) = xmmword_1BCE41E10;
  *(v2 + 1520) = xmmword_1BCE41E20;
  *(v2 + 1536) = xmmword_1BCE41E30;
  *(v2 + 1552) = xmmword_1BCE41E40;
  *(v2 + 1568) = xmmword_1BCE41E50;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v11[3];
  *(v2 + 1601) = *v11;
  *(v2 + 1608) = 0x3FE0BB72657A3C18;
  *(v2 + 1616) = xmmword_1BCE41E60;
  *(v2 + 1632) = xmmword_1BCE41E70;
  *(v2 + 1648) = xmmword_1BCE41E80;
  *(v2 + 1664) = xmmword_1BCE41E90;
  *(v2 + 1680) = xmmword_1BCE41EA0;
  *(v2 + 1696) = xmmword_1BCE3C8C0;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v12[3];
  *(v2 + 1721) = *v12;
  *(v2 + 1728) = xmmword_1BCE41EB0;
  *(v2 + 1744) = xmmword_1BCE41EC0;
  *(v2 + 1760) = xmmword_1BCE41ED0;
  *(v2 + 1776) = xmmword_1BCE41EE0;
  *(v2 + 1792) = xmmword_1BCE41EF0;
  *(v2 + 1808) = xmmword_1BCE41F00;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v13[3];
  *(v2 + 1841) = *v13;
  *(v2 + 1848) = 0x3FE0EFE31A85C409;
  *(v2 + 1856) = xmmword_1BCE41F10;
  *(v2 + 1872) = xmmword_1BCE41F20;
  *(v2 + 1888) = xmmword_1BCE41F30;
  *(v2 + 1904) = xmmword_1BCE41F40;
  *(v2 + 1920) = xmmword_1BCE41F50;
  *(v2 + 1936) = xmmword_1BCE3C8C0;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v14[3];
  *(v2 + 1961) = *v14;
  *(v2 + 1968) = xmmword_1BCE41C80;
  *(v2 + 1984) = xmmword_1BCE41C90;
  *(v2 + 2000) = xmmword_1BCE41CA0;
  *(v2 + 2016) = xmmword_1BCE41CB0;
  *(v2 + 2032) = xmmword_1BCE41CC0;
  *(v2 + 2048) = xmmword_1BCE41CD0;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v15[3];
  *(v2 + 2081) = *v15;
  *(v2 + 2088) = 0x3FDD5D6EAEB5245CLL;
  *(v2 + 2096) = xmmword_1BCE41F60;
  *(v2 + 2112) = xmmword_1BCE41F70;
  *(v2 + 2128) = xmmword_1BCE41F80;
  *(v2 + 2144) = xmmword_1BCE41F90;
  *(v2 + 2160) = xmmword_1BCE41FA0;
  *(v2 + 2176) = xmmword_1BCE3C8C0;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v16[3];
  *(v2 + 2201) = *v16;
  *(v2 + 2208) = xmmword_1BCE41FB0;
  *(v2 + 2224) = xmmword_1BCE41FC0;
  *(v2 + 2240) = xmmword_1BCE41FD0;
  *(v2 + 2256) = xmmword_1BCE41FE0;
  *(v2 + 2272) = xmmword_1BCE41FF0;
  *(v2 + 2288) = xmmword_1BCE42000;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v17[3];
  *(v2 + 2321) = *v17;
  *(v2 + 2328) = 0x3FD1F09E719B7199;
  *(v2 + 2336) = xmmword_1BCE42010;
  *(v2 + 2352) = xmmword_1BCE42020;
  *(v2 + 2368) = xmmword_1BCE42030;
  *(v2 + 2384) = xmmword_1BCE42040;
  *(v2 + 2400) = xmmword_1BCE42050;
  *(v2 + 2416) = xmmword_1BCE3C8C0;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v18[3];
  *(v2 + 2441) = *v18;
  *(v2 + 2448) = xmmword_1BCE41B00;
  *(v2 + 2464) = xmmword_1BCE41B10;
  *(v2 + 2480) = xmmword_1BCE41B20;
  *(v2 + 2496) = xmmword_1BCE41B30;
  *(v2 + 2512) = xmmword_1BCE41B40;
  *(v2 + 2528) = xmmword_1BCE41B50;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v19[3];
  *(v2 + 2561) = *v19;
  *(v2 + 2568) = 0x3FBFB2FF3029C708;
  *(v2 + 2576) = xmmword_1BCE42060;
  *(v2 + 2592) = xmmword_1BCE42070;
  *(v2 + 2608) = xmmword_1BCE42080;
  *(v2 + 2624) = xmmword_1BCE42090;
  *(v2 + 2640) = xmmword_1BCE420A0;
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

void sub_1BCA27270(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA0FF88();
  v4 = v3;
  sub_1BCA0FF88();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC391000000000000;
  *(a1 + 80) = xmmword_1BCE3F410;
  *(a1 + 96) = xmmword_1BCE3E640;
  *(a1 + 112) = 0x3E75C28F3E6147AELL;
  *(a1 + 128) = xmmword_1BCE3E650;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE3E670;
  *(a1 + 176) = 1168891904;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3E680;
  *(a1 + 208) = xmmword_1BCE3E690;
  *(a1 + 224) = xmmword_1BCE3E6A0;
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
  *(a1 + 712) = 0x3F6666663F333333;
  *(a1 + 720) = vdup_n_s32(0x41827AE1u);
  *(a1 + 728) = 1090519040;
  *(a1 + 736) = 1;
  *(a1 + 744) = 5;
  *(a1 + 752) = xmmword_1BCE42100;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F666666;
  *(a1 + 848) = vdup_n_s32(0x40FA3D70u);
  *(a1 + 856) = 1085333800;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE42110;
  *(a1 + 896) = 0x2073757461727453;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73757461727453;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
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
  *(a1 + 1216) = xmmword_1BCE3E6D0;
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
  *(a1 + 1552) = xmmword_1BCE3E6E0;
  *(a1 + 1568) = 0x42CFE66642A8E147;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3E6F0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(v2 + 210) = 16843009;
  *(a1 + 1650) = 0;
  *(a1 + 1652) = 1;
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
  *(a1 + 1872) = 0x40C4CCCD40000000;
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
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E0F5C293D4CCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4070000040500000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1051159691;
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

_BYTE *storeEnumTagSinglePayload for TemperatureDifferenceThresholdDetector(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for MoonComplicationDataStatus()
{
  result = qword_1EDA190C0;
  if (!qword_1EDA190C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCA27B50()
{
  v0 = type metadata accessor for MoonComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1BCA27BA8()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EDA2EF08 = "hen aqi data is unavailable";
  unk_1EDA2EF10 = 0x80000001BCE79E30;
}

void sub_1BCA27C64()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EDA2EEE8 = "f keys found, expected one.";
  unk_1EDA2EEF0 = 0x80000001BCE79DE0;
}

void sub_1BCA27D1C()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v1 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EDA2EEF8 = 0x80000001BCE79E70;
  unk_1EDA2EF00 = v0;
}

void sub_1BCA27DC8()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v1 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  qword_1EDA2EF20 = 0x80000001BCE79670;
  *algn_1EDA2EF28 = v0;
}

uint64_t sub_1BCA27E6C()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  sub_1BCE18B60();
  OUTLINED_FUNCTION_11_0();

  result = sub_1BCE1D5E0();
  byte_1EDA2EF18 = result & 1;
  return result;
}

uint64_t *sub_1BCA27F48()
{
  v18 = *(v0 + *(type metadata accessor for AirQualityComplicationViewModel() + 24));
  sub_1BCA28540();
  v1 = sub_1BCE1DBE0();
  v3 = v2;
  v4 = sub_1BCE19E50();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  inited = swift_initStackObject();
  v8 = 0;
  *(inited + 16) = xmmword_1BCE3E030;
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v9 = MEMORY[0x1E69E7CC0];
  while (v8 != 32)
  {
    v11 = *(inited + v8 + 32);
    v10 = *(inited + v8 + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB653B4(0, *(v9 + 16) + 1, 1, v9);
      v9 = v15;
    }

    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1BCB653B4(v12 > 1, v13 + 1, 1, v9);
      v9 = v16;
    }

    *(v9 + 16) = v13 + 1;
    v14 = v9 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += 16;
  }

  swift_setDeallocating();
  sub_1BC9833E4();
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
  sub_1BCA090F8();
  sub_1BCE1D1D0();
  OUTLINED_FUNCTION_11_0();

  return &v18;
}

double sub_1BCA280F4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5_6();
  sub_1BCE19EA0();
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for AirQualityComplicationViewModel();
  v9 = sub_1BCE19C50();
  sub_1BCA3F1CC(v9, v1);

  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_1BCA28594(v1);
    return 0.0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_11();
    v12(v11);
    sub_1BCE19E80();
    v14 = v13;
    (*(v4 + 8))(v8, v0);
    return v14;
  }
}

double sub_1BCA28250()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5_6();
  sub_1BCE19EA0();
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for AirQualityComplicationViewModel();
  v9 = sub_1BCE19C50();
  sub_1BCA13ED0(v9, v1);

  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_1BCA28594(v1);
    return 0.0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_11();
    v12(v11);
    v13 = sub_1BCE19E80();
    (*(v4 + 8))(v8, v0);
    return v13;
  }
}

uint64_t sub_1BCA283AC()
{
  sub_1BCE19EA0();
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6();
  type metadata accessor for AirQualityComplicationViewModel();
  v5 = sub_1BCE19C50();
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1BCE1DDD0();
    v7 = v3 + 16;
    v14 = *(v3 + 16);
    v8 = v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    v10 = (v7 - 8);
    do
    {
      v14(v1, v8, v0);
      v11 = sub_1BCE19E60();
      Color.init(hex:)(v11, v12);
      (*v10)(v1, v0);
      sub_1BCE1DDB0();
      sub_1BCE1DDE0();
      sub_1BCE1DDF0();
      sub_1BCE1DDC0();
      v8 += v9;
      --v6;
    }

    while (v6);

    return v15;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1BCA28540()
{
  result = qword_1EDA1EDB0;
  if (!qword_1EDA1EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EDB0);
  }

  return result;
}

uint64_t sub_1BCA28594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCA28604()
{
  result = qword_1EBD07CB8;
  if (!qword_1EBD07CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07CB8);
  }

  return result;
}

void (*sub_1BCA28668(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1BCE1B480();
  return sub_1BCA286DC;
}

void sub_1BCA286DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1BCA2872C()
{
  result = qword_1EBD07CC0;
  if (!qword_1EBD07CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07CC0);
  }

  return result;
}

uint64_t sub_1BCA28790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCA288A4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1BCA287F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCA288A4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1BCA28858(uint64_t a1)
{
  v2 = sub_1BCA288A4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1BCA288A4()
{
  result = qword_1EBD07CD0;
  if (!qword_1EBD07CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD07CD0);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1BCA2892C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA290A4();
  v4 = v3;
  sub_1BCA290A4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
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
  *(a1 + 240) = 0x4120000041726E98;
  *(a1 + 248) = 1105199104;
  *(a1 + 256) = 0x3E6147AE3DCCCCCDLL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310165;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4268000041400000;
  *(a1 + 328) = 0x3E6147AE3DCCCCCDLL;
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
  *(a1 + 712) = 0x406666673FE66667;
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
  __asm { FMOV            V5.2S, #3.25 }

  *(a1 + 1104) = _D5;
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
  *(a1 + 1216) = xmmword_1BCE3FB60;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E851EB83DF5C28FLL;
  *(a1 + 1296) = 0x41A0000041700000;
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
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 16843009;
  *(v2 + 213) = 50397184;
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
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F800000412D53BALL;
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
  *(a1 + 2128) = 0x406666663FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1053273620;
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

double sub_1BCA290A4()
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
  *(v0 + 4976) = xmmword_1BCE3FD50;
  *(v0 + 6192) = xmmword_1BCE3FD50;
  *(v0 + 4992) = xmmword_1BCE3FD60;
  *(v0 + 6208) = xmmword_1BCE3FD60;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5184) = xmmword_1BCE3E2C0;
  *(v0 + 6400) = xmmword_1BCE3E2C0;
  *(v0 + 5200) = xmmword_1BCE3FD70;
  *(v0 + 6416) = xmmword_1BCE3FD70;
  *(v0 + 5264) = xmmword_1BCE3FD80;
  *(v0 + 6480) = xmmword_1BCE3FD80;
  *(v0 + 5568) = xmmword_1BCE3EE20;
  *(v0 + 6784) = xmmword_1BCE3EE20;
  *(v0 + 5600) = xmmword_1BCE3CBB0;
  *(v0 + 6816) = xmmword_1BCE3CBB0;
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
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 3984) = xmmword_1BCE3FD10;
  *(v0 + 7632) = xmmword_1BCE3FD10;
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
  *(v0 + 4288) = xmmword_1BCE3CEE0;
  *(v0 + 7936) = xmmword_1BCE3CEE0;
  *(v0 + 4384) = xmmword_1BCE3CCC0;
  *(v0 + 8032) = xmmword_1BCE3CCC0;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1128792064;
  *(v0 + 8576) = 1128792064;
  *(v0 + 2544) = xmmword_1BCE3FCA0;
  *(v0 + 8624) = xmmword_1BCE3FCA0;
  *(v0 + 2560) = xmmword_1BCE3FCB0;
  *(v0 + 8640) = xmmword_1BCE3FCB0;
  *(v0 + 2576) = xmmword_1BCE3FCC0;
  *(v0 + 8656) = xmmword_1BCE3FCC0;
  *(v0 + 2592) = xmmword_1BCE3FCD0;
  *(v0 + 8672) = xmmword_1BCE3FCD0;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 2768) = xmmword_1BCE3FCE0;
  *(v0 + 8848) = xmmword_1BCE3FCE0;
  *(v0 + 2784) = xmmword_1BCE3FCF0;
  *(v0 + 8864) = xmmword_1BCE3FCF0;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 1360) = xmmword_1BCE3FC30;
  *(v0 + 9872) = xmmword_1BCE3FC30;
  *(v0 + 1376) = xmmword_1BCE3FC40;
  *(v0 + 9888) = xmmword_1BCE3FC40;
  *(v0 + 1456) = xmmword_1BCE3FC50;
  *(v0 + 9968) = xmmword_1BCE3FC50;
  *(v0 + 1488) = xmmword_1BCE3FC60;
  *(v0 + 10000) = xmmword_1BCE3FC60;
  *(v0 + 1504) = xmmword_1BCE3FC70;
  *(v0 + 10016) = xmmword_1BCE3FC70;
  *(v0 + 1520) = xmmword_1BCE3FC80;
  *(v0 + 10032) = xmmword_1BCE3FC80;
  *(v0 + 1552) = xmmword_1BCE3FC90;
  *(v0 + 10064) = xmmword_1BCE3FC90;
  *(v0 + 112) = xmmword_1BCE3FB80;
  *(v0 + 128) = xmmword_1BCE3FB90;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 144) = xmmword_1BCE3F6E0;
  *(v0 + 160) = xmmword_1BCE3ED00;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 2512) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 8592) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  __asm { FMOV            V2.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 2528) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 1328) = xmmword_1BCE3FB80;
  *(v0 + 9840) = xmmword_1BCE3FB80;
  *(v0 + 11056) = xmmword_1BCE3FB80;
  *(v0 + 240) = xmmword_1BCE3FBA0;
  *(v0 + 256) = xmmword_1BCE3FBB0;
  *(v0 + 1344) = xmmword_1BCE3FB90;
  *(v0 + 9856) = xmmword_1BCE3FB90;
  *(v0 + 11072) = xmmword_1BCE3FB90;
  *(v0 + 11088) = xmmword_1BCE3F6E0;
  *(v0 + 272) = xmmword_1BCE3FBC0;
  *(v0 + 288) = xmmword_1BCE3FBD0;
  *(v0 + 11104) = xmmword_1BCE3ED00;
  *(v0 + 11184) = xmmword_1BCE3FBA0;
  *(v0 + 304) = xmmword_1BCE3FBE0;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 11200) = xmmword_1BCE3FBB0;
  *(v0 + 11216) = xmmword_1BCE3FBC0;
  *(v0 + 336) = xmmword_1BCE3FBF0;
  *(v0 + 352) = xmmword_1BCE3FC00;
  *(v0 + 11232) = xmmword_1BCE3FBD0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 11248) = xmmword_1BCE3FBE0;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1536) = xmmword_1BCE3E220;
  *(v0 + 10048) = xmmword_1BCE3E220;
  *(v0 + 11264) = xmmword_1BCE3E220;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 11280) = xmmword_1BCE3FBF0;
  result = 1.0;
  *(v0 + 1568) = xmmword_1BCE3FC00;
  *(v0 + 10080) = xmmword_1BCE3FC00;
  *(v0 + 11296) = xmmword_1BCE3FC00;
  *(v0 + 512) = xmmword_1BCE3A880;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 2800) = xmmword_1BCE3FC10;
  *(v0 + 8880) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 544) = xmmword_1BCE3D430;
  *(v0 + 576) = xmmword_1BCE3A880;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 640) = xmmword_1BCE3A880;
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
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 1760) = xmmword_1BCE3D430;
  *(v0 + 2976) = xmmword_1BCE3D430;
  *(v0 + 4192) = xmmword_1BCE3D430;
  *(v0 + 5408) = xmmword_1BCE3D430;
  *(v0 + 6624) = xmmword_1BCE3D430;
  *(v0 + 7840) = xmmword_1BCE3D430;
  *(v0 + 9056) = xmmword_1BCE3D430;
  *(v0 + 10272) = xmmword_1BCE3D430;
  *(v0 + 11488) = xmmword_1BCE3D430;
  *(v0 + 736) = xmmword_1BCE3E350;
  *(v0 + 1952) = xmmword_1BCE3E350;
  *(v0 + 3168) = xmmword_1BCE3E350;
  *(v0 + 3968) = xmmword_1BCE3E350;
  *(v0 + 4672) = xmmword_1BCE3E350;
  *(v0 + 5888) = xmmword_1BCE3E350;
  *(v0 + 7104) = xmmword_1BCE3E350;
  *(v0 + 7616) = xmmword_1BCE3E350;
  *(v0 + 8320) = xmmword_1BCE3E350;
  *(v0 + 9248) = xmmword_1BCE3E350;
  *(v0 + 10464) = xmmword_1BCE3E350;
  *(v0 + 11680) = xmmword_1BCE3E350;
  *(v0 + 800) = xmmword_1BCE3DD90;
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
  *(v0 + 1728) = xmmword_1BCE3A880;
  *(v0 + 1792) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2048) = xmmword_1BCE3A880;
  *(v0 + 2944) = xmmword_1BCE3A880;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 4160) = xmmword_1BCE3A880;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5376) = xmmword_1BCE3A880;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 6592) = xmmword_1BCE3A880;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 7808) = xmmword_1BCE3A880;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8080) = _Q2;
  *(v0 + 8112) = _Q2;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q2;
  *(v0 + 8160) = xmmword_1BCE3FC20;
  *(v0 + 8176) = _Q2;
  *(v0 + 0x2000) = _Q2;
  *(v0 + 8208) = _Q2;
  *(v0 + 8224) = _Q2;
  *(v0 + 8240) = _Q2;
  *(v0 + 8352) = xmmword_1BCE3CBC0;
  *(v0 + 8368) = _Q2;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q2;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 8304) = _Q2;
  *(v0 + 8336) = _Q2;
  *(v0 + 9024) = xmmword_1BCE3A880;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
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
  *(v0 + 8016) = _Q2;
  *(v0 + 8048) = _Q2;
  *(v0 + 8064) = _Q2;
  *(v0 + 688) = xmmword_1BCE3ECA0;
  *(v0 + 816) = xmmword_1BCE3ECA0;
  *(v0 + 7920) = _Q2;
  *(v0 + 7952) = _Q2;
  *(v0 + 7968) = _Q2;
  *(v0 + 7984) = _Q2;
  *(v0 + 7824) = _Q2;
  *(v0 + 7856) = _Q2;
  *(v0 + 7888) = _Q2;
  *(v0 + 7904) = xmmword_1BCE3C8C0;
  *(v0 + 848) = xmmword_1BCE3ECA0;
  *(v0 + 864) = xmmword_1BCE3FC20;
  *(v0 + 7760) = _Q2;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7792) = _Q2;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 1904) = xmmword_1BCE3ECA0;
  *(v0 + 2032) = xmmword_1BCE3ECA0;
  *(v0 + 2064) = xmmword_1BCE3ECA0;
  *(v0 + 3120) = xmmword_1BCE3ECA0;
  *(v0 + 3248) = xmmword_1BCE3ECA0;
  *(v0 + 7600) = _Q2;
  *(v0 + 3280) = xmmword_1BCE3ECA0;
  *(v0 + 7552) = _Q2;
  *(v0 + 7568) = _Q2;
  *(v0 + 7584) = _Q2;
  *(v0 + 7328) = 0x4018000000000010;
  *(v0 + 7336) = 1;
  *(v0 + 7504) = _Q2;
  *(v0 + 7520) = _Q2;
  *(v0 + 7536) = _Q2;
  *(v0 + 7337) = *v13;
  *(v0 + 7472) = _Q2;
  *(v0 + 7488) = _Q2;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 9200) = xmmword_1BCE3ECA0;
  *(v0 + 9328) = xmmword_1BCE3ECA0;
  *(v0 + 9360) = xmmword_1BCE3ECA0;
  *(v0 + 10416) = xmmword_1BCE3ECA0;
  *(v0 + 10544) = xmmword_1BCE3ECA0;
  *(v0 + 10576) = xmmword_1BCE3ECA0;
  *(v0 + 11632) = xmmword_1BCE3ECA0;
  *(v0 + 11760) = xmmword_1BCE3ECA0;
  *(v0 + 11792) = xmmword_1BCE3ECA0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q2;
  *(v0 + 7280) = _Q2;
  *(v0 + 7296) = _Q2;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q2;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q2;
  *(v0 + 7232) = _Q2;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 2080) = xmmword_1BCE3FC20;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7088) = _Q2;
  *(v0 + 7120) = _Q2;
  *(v0 + 7136) = xmmword_1BCE3CBC0;
  *(v0 + 7152) = _Q2;
  *(v0 + 6976) = _Q2;
  *(v0 + 6992) = _Q2;
  *(v0 + 7008) = _Q2;
  *(v0 + 7024) = _Q2;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q2;
  *(v0 + 3296) = xmmword_1BCE3FC20;
  *(v0 + 4512) = xmmword_1BCE3FC20;
  *(v0 + 6896) = _Q2;
  *(v0 + 6928) = _Q2;
  *(v0 + 6944) = xmmword_1BCE3FC20;
  *(v0 + 6960) = _Q2;
  *(v0 + 5728) = xmmword_1BCE3FC20;
  *(v0 + 6720) = _Q2;
  *(v0 + 6800) = _Q2;
  *(v0 + 6832) = _Q2;
  *(v0 + 6848) = _Q2;
  *(v0 + 6864) = _Q2;
  *(v0 + 6736) = _Q2;
  *(v0 + 6752) = _Q2;
  *(v0 + 6768) = _Q2;
  *(v0 + 9376) = xmmword_1BCE3FC20;
  *(v0 + 10592) = xmmword_1BCE3FC20;
  *(v0 + 11808) = xmmword_1BCE3FC20;
  *(v0 + 1024) = xmmword_1BCE3E230;
  *(v0 + 6640) = _Q2;
  *(v0 + 6672) = _Q2;
  *(v0 + 6688) = xmmword_1BCE3C8C0;
  *(v0 + 6704) = _Q2;
  *(v0 + 2240) = xmmword_1BCE3E230;
  *(v0 + 3456) = xmmword_1BCE3E230;
  *(v0 + 6544) = _Q2;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 6576) = _Q2;
  *(v0 + 6608) = _Q2;
  *(v0 + 9536) = xmmword_1BCE3E230;
  *(v0 + 10752) = xmmword_1BCE3E230;
  *(v0 + 11968) = xmmword_1BCE3E230;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 672) = xmmword_1BCE3CBC0;
  *(v0 + 1056) = xmmword_1BCE3CBC0;
  *(v0 + 1888) = xmmword_1BCE3CBC0;
  *(v0 + 2272) = xmmword_1BCE3CBC0;
  *(v0 + 6368) = _Q2;
  *(v0 + 6384) = _Q2;
  *(v0 + 6272) = _Q2;
  *(v0 + 6288) = _Q2;
  *(v0 + 6304) = _Q2;
  *(v0 + 6320) = _Q2;
  *(v0 + 6336) = _Q2;
  *(v0 + 6352) = _Q2;
  *(v0 + 3104) = xmmword_1BCE3CBC0;
  *(v0 + 3488) = xmmword_1BCE3CBC0;
  *(v0 + 4704) = xmmword_1BCE3CBC0;
  *(v0 + 5920) = xmmword_1BCE3CBC0;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 6256) = _Q2;
  *(v0 + 5968) = _Q2;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q2;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q2;
  *(v0 + 6064) = _Q2;
  *(v0 + 6080) = _Q2;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4031FFFFFFFFFFF6;
  *(v0 + 6016) = _Q2;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 9184) = xmmword_1BCE3CBC0;
  *(v0 + 9568) = xmmword_1BCE3CBC0;
  *(v0 + 10400) = xmmword_1BCE3CBC0;
  *(v0 + 10784) = xmmword_1BCE3CBC0;
  *(v0 + 11616) = xmmword_1BCE3CBC0;
  *(v0 + 12000) = xmmword_1BCE3CBC0;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5872) = _Q2;
  *(v0 + 5904) = _Q2;
  *(v0 + 5936) = _Q2;
  *(v0 + 5760) = _Q2;
  *(v0 + 5776) = _Q2;
  *(v0 + 5792) = _Q2;
  *(v0 + 5808) = _Q2;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q2;
  *(v0 + 608) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 5680) = _Q2;
  *(v0 + 5712) = _Q2;
  *(v0 + 5744) = _Q2;
  *(v0 + 1824) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 5584) = _Q2;
  *(v0 + 5616) = _Q2;
  *(v0 + 5632) = _Q2;
  *(v0 + 5648) = _Q2;
  *(v0 + 5472) = xmmword_1BCE3C8C0;
  *(v0 + 5488) = _Q2;
  *(v0 + 5504) = _Q2;
  *(v0 + 5520) = _Q2;
  *(v0 + 5536) = _Q2;
  *(v0 + 5552) = _Q2;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3040) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 5392) = _Q2;
  *(v0 + 5424) = _Q2;
  *(v0 + 5456) = _Q2;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4256) = xmmword_1BCE3C8C0;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q2;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 5360) = _Q2;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 5040) = _Q2;
  *(v0 + 5056) = _Q2;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5072) = _Q2;
  *(v0 + 5088) = _Q2;
  *(v0 + 5120) = _Q2;
  *(v0 + 5136) = _Q2;
  *(v0 + 5152) = _Q2;
  *(v0 + 5168) = _Q2;
  *(v0 + 5104) = _Q2;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9120) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10336) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11552) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 4905) = *v11;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x4032000000000001;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4800) = _Q2;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q2;
  *(v0 + 4848) = _Q2;
  *(v0 + 4864) = _Q2;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q2;
  *(v0 + 4752) = _Q2;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q2;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 4624) = _Q2;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4656) = _Q2;
  *(v0 + 4688) = _Q2;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 4528) = _Q2;
  *(v0 + 4544) = _Q2;
  *(v0 + 4560) = _Q2;
  *(v0 + 4576) = _Q2;
  *(v0 + 4592) = _Q2;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 4416) = _Q2;
  *(v0 + 4432) = _Q2;
  *(v0 + 4464) = _Q2;
  *(v0 + 4496) = _Q2;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 4144) = _Q2;
  *(v0 + 4320) = _Q2;
  *(v0 + 4336) = _Q2;
  *(v0 + 4368) = _Q2;
  *(v0 + 4400) = _Q2;
  *(v0 + 4176) = _Q2;
  *(v0 + 4208) = _Q2;
  *(v0 + 4240) = _Q2;
  *(v0 + 4272) = _Q2;
  *(v0 + 4304) = _Q2;
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
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q2;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3872) = _Q2;
  *(v0 + 3888) = _Q2;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3904) = _Q2;
  *(v0 + 3920) = _Q2;
  *(v0 + 3936) = _Q2;
  *(v0 + 3952) = _Q2;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q2;
  *(v0 + 3824) = _Q2;
  *(v0 + 3840) = _Q2;
  *(v0 + 3856) = _Q2;
  *(v0 + 496) = _Q2;
  *(v0 + 528) = _Q2;
  *(v0 + 560) = _Q2;
  *(v0 + 592) = _Q2;
  *(v0 + 624) = _Q2;
  *(v0 + 3616) = _Q2;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3632) = _Q2;
  *(v0 + 3648) = _Q2;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 3688) = 0;
  *(v0 + 656) = _Q2;
  *(v0 + 720) = _Q2;
  *(v0 + 3536) = _Q2;
  *(v0 + 3568) = _Q2;
  *(v0 + 3584) = _Q2;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 784) = _Q2;
  *(v0 + 944) = _Q2;
  *(v0 + 976) = _Q2;
  *(v0 + 3440) = _Q2;
  *(v0 + 3472) = _Q2;
  *(v0 + 3504) = _Q2;
  *(v0 + 1008) = _Q2;
  *(v0 + 3344) = _Q2;
  *(v0 + 3360) = _Q2;
  *(v0 + 3376) = _Q2;
  *(v0 + 3408) = _Q2;
  *(v0 + 176) = _Q2;
  *(v0 + 192) = _Q2;
  *(v0 + 208) = _Q2;
  *(v0 + 224) = _Q2;
  *(v0 + 3312) = _Q2;
  *(v0 + 3328) = _Q2;
  *(v0 + 400) = _Q2;
  *(v0 + 3152) = _Q2;
  *(v0 + 3184) = _Q2;
  *(v0 + 3200) = _Q2;
  *(v0 + 3216) = _Q2;
  *(v0 + 752) = _Q2;
  *(v0 + 768) = _Q2;
  *(v0 + 880) = _Q2;
  *(v0 + 896) = _Q2;
  *(v0 + 3056) = _Q2;
  *(v0 + 3088) = _Q2;
  *(v0 + 912) = _Q2;
  *(v0 + 928) = _Q2;
  *(v0 + 1040) = _Q2;
  *(v0 + 1072) = _Q2;
  *(v0 + 2960) = _Q2;
  *(v0 + 2992) = _Q2;
  *(v0 + 3024) = _Q2;
  *(v0 + 1104) = _Q2;
  *(v0 + 1136) = _Q2;
  *(v0 + 1152) = _Q2;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 2896) = _Q2;
  *(v0 + 2928) = _Q2;
  *(v0 + 1184) = _Q2;
  *(v0 + 1200) = _Q2;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q2;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 1216) = _Q2;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 2720) = _Q2;
  *(v0 + 2736) = _Q2;
  *(v0 + 1256) = 0;
  *(v0 + 2656) = _Q2;
  *(v0 + 2672) = _Q2;
  *(v0 + 2688) = _Q2;
  *(v0 + 2704) = _Q2;
  *(v0 + 1257) = *v8;
  *(v0 + 2608) = _Q2;
  *(v0 + 2624) = _Q2;
  *(v0 + 2640) = _Q2;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q2;
  *(v0 + 1408) = _Q2;
  *(v0 + 1424) = _Q2;
  *(v0 + 1440) = _Q2;
  *(v0 + 1472) = _Q2;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1045220557;
  *(v0 + 1616) = _Q2;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q2;
  *(v0 + 2416) = _Q2;
  *(v0 + 2432) = _Q2;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 2288) = _Q2;
  *(v0 + 2320) = _Q2;
  *(v0 + 2352) = _Q2;
  *(v0 + 2368) = _Q2;
  *(v0 + 1680) = _Q2;
  *(v0 + 1712) = _Q2;
  *(v0 + 1744) = _Q2;
  *(v0 + 2192) = _Q2;
  *(v0 + 2224) = _Q2;
  *(v0 + 2256) = _Q2;
  *(v0 + 1776) = _Q2;
  *(v0 + 2096) = _Q2;
  *(v0 + 2112) = _Q2;
  *(v0 + 2128) = _Q2;
  *(v0 + 2144) = _Q2;
  *(v0 + 2160) = _Q2;
  *(v0 + 1808) = _Q2;
  *(v0 + 1840) = _Q2;
  *(v0 + 1872) = _Q2;
  *(v0 + 1936) = _Q2;
  *(v0 + 1968) = _Q2;
  *(v0 + 2000) = _Q2;
  *(v0 + 1984) = _Q2;
  *(v0 + 8400) = _Q2;
  *(v0 + 8432) = _Q2;
  *(v0 + 8448) = _Q2;
  *(v0 + 8480) = _Q2;
  *(v0 + 8496) = _Q2;
  *(v0 + 8512) = _Q2;
  *(v0 + 8688) = _Q2;
  *(v0 + 8704) = _Q2;
  *(v0 + 8720) = _Q2;
  *(v0 + 8736) = _Q2;
  *(v0 + 8752) = _Q2;
  *(v0 + 8768) = _Q2;
  *(v0 + 8784) = _Q2;
  *(v0 + 8800) = _Q2;
  *(v0 + 8816) = _Q2;
  *(v0 + 8912) = _Q2;
  *(v0 + 8976) = _Q2;
  *(v0 + 9008) = _Q2;
  *(v0 + 9040) = _Q2;
  *(v0 + 9072) = _Q2;
  *(v0 + 9104) = _Q2;
  *(v0 + 9136) = _Q2;
  *(v0 + 9168) = _Q2;
  *(v0 + 9232) = _Q2;
  *(v0 + 9264) = _Q2;
  *(v0 + 9280) = _Q2;
  *(v0 + 9296) = _Q2;
  *(v0 + 9392) = _Q2;
  *(v0 + 9408) = _Q2;
  *(v0 + 9424) = _Q2;
  *(v0 + 9440) = _Q2;
  *(v0 + 9456) = _Q2;
  *(v0 + 9488) = _Q2;
  *(v0 + 9520) = _Q2;
  *(v0 + 9552) = _Q2;
  *(v0 + 9584) = _Q2;
  *(v0 + 9616) = _Q2;
  *(v0 + 9648) = _Q2;
  *(v0 + 9664) = _Q2;
  *(v0 + 9696) = _Q2;
  *(v0 + 9712) = _Q2;
  *(v0 + 9728) = _Q2;
  *(v0 + 9904) = _Q2;
  *(v0 + 9920) = _Q2;
  *(v0 + 9936) = _Q2;
  *(v0 + 9952) = _Q2;
  *(v0 + 9984) = _Q2;
  *(v0 + 10128) = _Q2;
  *(v0 + 10192) = _Q2;
  *(v0 + 10224) = _Q2;
  *(v0 + 10256) = _Q2;
  *(v0 + 10288) = _Q2;
  *(v0 + 10320) = _Q2;
  *(v0 + 10352) = _Q2;
  *(v0 + 10384) = _Q2;
  *(v0 + 10448) = _Q2;
  *(v0 + 10480) = _Q2;
  *(v0 + 10496) = _Q2;
  *(v0 + 10512) = _Q2;
  *(v0 + 10608) = _Q2;
  *(v0 + 10624) = _Q2;
  *(v0 + 10640) = _Q2;
  *(v0 + 10656) = _Q2;
  *(v0 + 10672) = _Q2;
  *(v0 + 10704) = _Q2;
  *(v0 + 10736) = _Q2;
  *(v0 + 10768) = _Q2;
  *(v0 + 10800) = _Q2;
  *(v0 + 10832) = _Q2;
  *(v0 + 10864) = _Q2;
  *(v0 + 10880) = _Q2;
  *(v0 + 10912) = _Q2;
  *(v0 + 10928) = _Q2;
  *(v0 + 10944) = _Q2;
  *(v0 + 11120) = _Q2;
  *(v0 + 11136) = _Q2;
  *(v0 + 11152) = _Q2;
  *(v0 + 11168) = _Q2;
  *(v0 + 11344) = _Q2;
  *(v0 + 11408) = _Q2;
  *(v0 + 11440) = _Q2;
  *(v0 + 11472) = _Q2;
  *(v0 + 11504) = _Q2;
  *(v0 + 11536) = _Q2;
  *(v0 + 11568) = _Q2;
  *(v0 + 11600) = _Q2;
  *(v0 + 11664) = _Q2;
  *(v0 + 11696) = _Q2;
  *(v0 + 11712) = _Q2;
  *(v0 + 11728) = _Q2;
  *(v0 + 11824) = _Q2;
  *(v0 + 11840) = _Q2;
  *(v0 + 11856) = _Q2;
  *(v0 + 11872) = _Q2;
  *(v0 + 11888) = _Q2;
  *(v0 + 11920) = _Q2;
  *(v0 + 11952) = _Q2;
  *(v0 + 11984) = _Q2;
  *(v0 + 12016) = _Q2;
  *(v0 + 12048) = _Q2;
  *(v0 + 12080) = _Q2;
  *(v0 + 12096) = _Q2;
  *(v0 + 12128) = _Q2;
  *(v0 + 12144) = _Q2;
  *(v0 + 12160) = _Q2;
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
  *(v0 + 8584) = 1045220557;
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

void sub_1BCA2A0C4()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  v1 = sub_1BCE18B60();
  v3 = v2;

  qword_1EDA2EEC8 = v1;
  unk_1EDA2EED0 = v3;
}

void sub_1BCA2A180()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  v1 = sub_1BCE18B60();
  v3 = v2;

  qword_1EDA2EEB8 = v1;
  unk_1EDA2EEC0 = v3;
}

void sub_1BCA2A23C()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_3_9();
  v0 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_3_1();
  v1 = sub_1BCE18B60();
  v3 = v2;

  qword_1EDA2EED8 = v1;
  unk_1EDA2EEE0 = v3;
}

uint64_t sub_1BCA2A2E4()
{
  v1 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_9();
  v3 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  v5 = OUTLINED_FUNCTION_9_8();
  v6 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(v5);
  OUTLINED_FUNCTION_11_2(v6);
  *(OUTLINED_FUNCTION_6_7() + 16) = xmmword_1BCE3E050;
  v7 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_10_6(v7);
  OUTLINED_FUNCTION_9_8();
  v8 = sub_1BCE19280();
  OUTLINED_FUNCTION_1_5(v8);

  OUTLINED_FUNCTION_13_4();
  sub_1BCE1A3E0();
  v9 = sub_1BCE1A3A0();
  OUTLINED_FUNCTION_3_10(v9);
  OUTLINED_FUNCTION_12_2();
  sub_1BCA2AB28(v0);
  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_1BCA2A43C()
{
  v1 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_9();
  v3 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  v5 = OUTLINED_FUNCTION_9_8();
  v6 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(v5);
  OUTLINED_FUNCTION_11_2(v6);
  *(OUTLINED_FUNCTION_6_7() + 16) = xmmword_1BCE3E050;
  v7 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_10_6(v7);
  OUTLINED_FUNCTION_9_8();
  v8 = sub_1BCE19280();
  OUTLINED_FUNCTION_1_5(v8);

  OUTLINED_FUNCTION_13_4();
  sub_1BCE1A3E0();
  v9 = sub_1BCE1A3A0();
  OUTLINED_FUNCTION_3_10(v9);
  OUTLINED_FUNCTION_12_2();
  sub_1BCA2AB28(v0);
  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_1BCA2A594()
{
  v1 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_9();
  v3 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CD8);
  v5 = OUTLINED_FUNCTION_9_8();
  v6 = type metadata accessor for NSUnitTemperature.WeatherFormatComponent(v5);
  OUTLINED_FUNCTION_11_2(v6);
  *(OUTLINED_FUNCTION_6_7() + 16) = xmmword_1BCE3E050;
  v7 = type metadata accessor for NSUnitTemperature.WeatherFormatUnitConfiguration(0);
  OUTLINED_FUNCTION_10_6(v7);
  OUTLINED_FUNCTION_9_8();
  v8 = sub_1BCE19280();
  OUTLINED_FUNCTION_1_5(v8);

  OUTLINED_FUNCTION_13_4();
  sub_1BCE1A3E0();
  v9 = sub_1BCE1A3A0();
  OUTLINED_FUNCTION_3_10(v9);
  OUTLINED_FUNCTION_12_2();
  sub_1BCA2AB28(v0);
  return OUTLINED_FUNCTION_7_12();
}

uint64_t sub_1BCA2A6EC()
{
  v1 = OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_9();
  v3 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  static Set<>.full.getter();
  OUTLINED_FUNCTION_9_8();
  v5 = sub_1BCE19280();
  OUTLINED_FUNCTION_1_5(v5);

  OUTLINED_FUNCTION_13_4();
  sub_1BCE1A3E0();
  v6 = sub_1BCE1A3A0();
  OUTLINED_FUNCTION_3_10(v6);
  OUTLINED_FUNCTION_12_2();
  sub_1BCA2AB28(v0);
  return OUTLINED_FUNCTION_7_12();
}

void sub_1BCA2A7D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v2 = *(v1 - 8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_9();
  v4 = sub_1BCA2A97C();
  type metadata accessor for TemperatureComplicationViewModel();
  OUTLINED_FUNCTION_16_6();
  sub_1BCE185E0();
  v5 = *(v2 + 8);
  v5(v0, v1);
  OUTLINED_FUNCTION_16_6();
  sub_1BCE185E0();
  v5(v0, v1);
  OUTLINED_FUNCTION_16_6();
  sub_1BCE185E0();
  v5(v0, v1);
}

uint64_t sub_1BCA2A97C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1BCE1A500();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  sub_1BCE1A300();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1BC94C0B4(v2, &qword_1EBD07CE0);
    v7 = sub_1BCE1A340();
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_1BCE1A4F0();

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_1BCA2AB28(uint64_t a1)
{
  v2 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1BCA2AB84@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA2B338();
  v4 = v3;
  sub_1BCA2B338();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
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
  *(a1 + 256) = 0x3E3851EC3E051EB8;
  *(a1 + 264) = 0x40A00000411684A3;
  *(a1 + 272) = 1091567616;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4396000041900000;
  *(a1 + 328) = 0x3E19999A3DA3D70ALL;
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
  *(a1 + 720) = 0x4170000041500000;
  *(a1 + 728) = 1048576000;
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
  *(a1 + 848) = 0x4188000041300000;
  *(a1 + 856) = 1091567616;
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
  *(a1 + 976) = 0x4110000040E00000;
  *(a1 + 984) = 1082130432;
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
  *(a1 + 1216) = xmmword_1BCE42380;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E99999A3E19999ALL;
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

double sub_1BCA2B338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE41320;
  *(v0 + 64) = 0x41A0000043480000;
  *(v0 + 80) = xmmword_1BCE41330;
  *(v0 + 96) = xmmword_1BCE41340;
  *(v0 + 112) = xmmword_1BCE3EBF0;
  *(v0 + 128) = xmmword_1BCE3EC00;
  *(v0 + 144) = xmmword_1BCE3EC10;
  *(v0 + 160) = xmmword_1BCE3EC20;
  *(v0 + 2960) = xmmword_1BCE41570;
  *(v0 + 2976) = xmmword_1BCE41580;
  *(v0 + 3072) = xmmword_1BCE3E220;
  *(v0 + 3120) = xmmword_1BCE415C0;
  *(v0 + 3136) = xmmword_1BCE415D0;
  *(v0 + 3168) = xmmword_1BCE415E0;
  *(v0 + 3440) = xmmword_1BCE41660;
  *(v0 + 3456) = xmmword_1BCE41670;
  *(v0 + 3488) = xmmword_1BCE41680;
  *(v0 + 4912) = xmmword_1BCE3EED0;
  *(v0 + 6128) = xmmword_1BCE3EED0;
  *(v0 + 4928) = 1148846080;
  *(v0 + 6144) = 1148846080;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 6304) = xmmword_1BCE3DA70;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5392) = xmmword_1BCE41790;
  *(v0 + 6608) = xmmword_1BCE41790;
  *(v0 + 5456) = xmmword_1BCE417A0;
  *(v0 + 6672) = xmmword_1BCE417A0;
  *(v0 + 5408) = xmmword_1BCE3EDE0;
  *(v0 + 5472) = xmmword_1BCE3EDE0;
  *(v0 + 6624) = xmmword_1BCE3EDE0;
  *(v0 + 6688) = xmmword_1BCE3EDE0;
  *(v0 + 5600) = xmmword_1BCE417B0;
  *(v0 + 6816) = xmmword_1BCE417B0;
  *(v0 + 5792) = xmmword_1BCE3E2C0;
  *(v0 + 7008) = xmmword_1BCE3E2C0;
  *(v0 + 5872) = xmmword_1BCE417C0;
  *(v0 + 7088) = xmmword_1BCE417C0;
  *(v0 + 5904) = xmmword_1BCE417D0;
  *(v0 + 7120) = xmmword_1BCE417D0;
  *(v0 + 5920) = xmmword_1BCE417E0;
  *(v0 + 7136) = xmmword_1BCE417E0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1147207680;
  *(v0 + 7360) = 1147207680;
  *(v0 + 3728) = xmmword_1BCE41690;
  *(v0 + 7376) = xmmword_1BCE41690;
  *(v0 + 3760) = xmmword_1BCE3EE60;
  *(v0 + 4976) = xmmword_1BCE3EE60;
  *(v0 + 6192) = xmmword_1BCE3EE60;
  *(v0 + 7408) = xmmword_1BCE3EE60;
  *(v0 + 3776) = xmmword_1BCE3EEE0;
  *(v0 + 4992) = xmmword_1BCE3EEE0;
  *(v0 + 6208) = xmmword_1BCE3EEE0;
  *(v0 + 7424) = xmmword_1BCE3EEE0;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 4016) = xmmword_1BCE3EEC0;
  *(v0 + 5232) = xmmword_1BCE3EEC0;
  *(v0 + 6448) = xmmword_1BCE3EEC0;
  *(v0 + 7664) = xmmword_1BCE3EEC0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4176) = xmmword_1BCE416B0;
  *(v0 + 7824) = xmmword_1BCE416B0;
  *(v0 + 4192) = xmmword_1BCE416C0;
  *(v0 + 7840) = xmmword_1BCE416C0;
  *(v0 + 4240) = xmmword_1BCE416D0;
  *(v0 + 7888) = xmmword_1BCE416D0;
  *(v0 + 4272) = xmmword_1BCE3C8F0;
  *(v0 + 4304) = xmmword_1BCE3C8F0;
  *(v0 + 5488) = xmmword_1BCE3C8F0;
  *(v0 + 5520) = xmmword_1BCE3C8F0;
  *(v0 + 6704) = xmmword_1BCE3C8F0;
  *(v0 + 6736) = xmmword_1BCE3C8F0;
  *(v0 + 7920) = xmmword_1BCE3C8F0;
  *(v0 + 7952) = xmmword_1BCE3C8F0;
  *(v0 + 4352) = xmmword_1BCE416F0;
  *(v0 + 8000) = xmmword_1BCE416F0;
  *(v0 + 3056) = xmmword_1BCE3CCB0;
  *(v0 + 3088) = xmmword_1BCE3CCB0;
  *(v0 + 4336) = xmmword_1BCE3CCB0;
  *(v0 + 4368) = xmmword_1BCE3CCB0;
  *(v0 + 5552) = xmmword_1BCE3CCB0;
  *(v0 + 5584) = xmmword_1BCE3CCB0;
  *(v0 + 6768) = xmmword_1BCE3CCB0;
  *(v0 + 6800) = xmmword_1BCE3CCB0;
  *(v0 + 7984) = xmmword_1BCE3CCB0;
  *(v0 + 8016) = xmmword_1BCE3CCB0;
  *(v0 + 3104) = xmmword_1BCE3CBA0;
  *(v0 + 4384) = xmmword_1BCE3CBA0;
  *(v0 + 8032) = xmmword_1BCE3CBA0;
  *(v0 + 4464) = xmmword_1BCE41700;
  *(v0 + 8112) = xmmword_1BCE41700;
  *(v0 + 4480) = xmmword_1BCE41710;
  *(v0 + 8128) = xmmword_1BCE41710;
  *(v0 + 4496) = xmmword_1BCE41720;
  *(v0 + 8144) = xmmword_1BCE41720;
  *(v0 + 4512) = xmmword_1BCE41730;
  *(v0 + 8160) = xmmword_1BCE41730;
  *(v0 + 4528) = xmmword_1BCE41740;
  *(v0 + 5744) = xmmword_1BCE41740;
  *(v0 + 6960) = xmmword_1BCE41740;
  *(v0 + 8176) = xmmword_1BCE41740;
  *(v0 + 4560) = xmmword_1BCE41750;
  *(v0 + 8208) = xmmword_1BCE41750;
  *(v0 + 4256) = xmmword_1BCE416E0;
  *(v0 + 4576) = xmmword_1BCE416E0;
  *(v0 + 7904) = xmmword_1BCE416E0;
  *(v0 + 8224) = xmmword_1BCE416E0;
  *(v0 + 4656) = xmmword_1BCE41760;
  *(v0 + 8304) = xmmword_1BCE41760;
  *(v0 + 4672) = xmmword_1BCE41770;
  *(v0 + 8320) = xmmword_1BCE41770;
  *(v0 + 4704) = xmmword_1BCE41780;
  *(v0 + 8352) = xmmword_1BCE41780;
  *(v0 + 2480) = xmmword_1BCE3EDA0;
  *(v0 + 8560) = xmmword_1BCE3EDA0;
  *(v0 + 2496) = 1135542272;
  *(v0 + 8576) = 1135542272;
  *(v0 + 2512) = xmmword_1BCE41520;
  *(v0 + 8592) = xmmword_1BCE41520;
  *(v0 + 2528) = xmmword_1BCE41530;
  *(v0 + 8608) = xmmword_1BCE41530;
  *(v0 + 2544) = xmmword_1BCE41540;
  *(v0 + 8624) = xmmword_1BCE41540;
  *(v0 + 2560) = xmmword_1BCE3EDD0;
  *(v0 + 8640) = xmmword_1BCE3EDD0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 8736) = xmmword_1BCE3DCB0;
  v1 = vdupq_n_s64(0x3FE0ECE8A0000000uLL);
  *(v0 + 2736) = v1;
  *(v0 + 8816) = v1;
  *(v0 + 2752) = xmmword_1BCE3EDF0;
  *(v0 + 8832) = xmmword_1BCE3EDF0;
  *v1.i8 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1.i64[0];
  *(v0 + 8896) = v1.i64[0];
  *(v0 + 2928) = xmmword_1BCE41560;
  *(v0 + 4144) = xmmword_1BCE41560;
  *(v0 + 5360) = xmmword_1BCE41560;
  *(v0 + 6576) = xmmword_1BCE41560;
  *(v0 + 7792) = xmmword_1BCE41560;
  *(v0 + 9008) = xmmword_1BCE41560;
  *(v0 + 9040) = xmmword_1BCE417F0;
  *(v0 + 9056) = xmmword_1BCE41800;
  *(v0 + 2992) = xmmword_1BCE41590;
  *(v0 + 4208) = xmmword_1BCE41590;
  *(v0 + 5424) = xmmword_1BCE41590;
  *(v0 + 6640) = xmmword_1BCE41590;
  *(v0 + 7856) = xmmword_1BCE41590;
  *(v0 + 9072) = xmmword_1BCE41590;
  *(v0 + 3024) = xmmword_1BCE415A0;
  *(v0 + 9104) = xmmword_1BCE415A0;
  *(v0 + 3040) = xmmword_1BCE415B0;
  *(v0 + 9120) = xmmword_1BCE415B0;
  *(v0 + 9136) = xmmword_1BCE41810;
  *(v0 + 9152) = xmmword_1BCE41820;
  *(v0 + 9168) = xmmword_1BCE41830;
  *(v0 + 9184) = xmmword_1BCE41840;
  *(v0 + 9200) = xmmword_1BCE41850;
  *(v0 + 9216) = xmmword_1BCE41860;
  *(v0 + 9232) = xmmword_1BCE41870;
  __asm { FMOV            V16.2D, #0.75 }

  *(v0 + 9248) = _Q16;
  *(v0 + 3248) = xmmword_1BCE415F0;
  *(v0 + 9328) = xmmword_1BCE415F0;
  *(v0 + 3264) = xmmword_1BCE41600;
  *(v0 + 9344) = xmmword_1BCE41600;
  *(v0 + 3280) = xmmword_1BCE41610;
  *(v0 + 9360) = xmmword_1BCE41610;
  *(v0 + 3296) = xmmword_1BCE41620;
  *(v0 + 9376) = xmmword_1BCE41620;
  *(v0 + 3344) = xmmword_1BCE41630;
  *(v0 + 9424) = xmmword_1BCE41630;
  *(v0 + 3360) = xmmword_1BCE41640;
  *(v0 + 9440) = xmmword_1BCE41640;
  *(v0 + 3376) = xmmword_1BCE41650;
  *(v0 + 9456) = xmmword_1BCE41650;
  *(v0 + 9520) = xmmword_1BCE41880;
  *(v0 + 9568) = xmmword_1BCE41890;
  *(v0 + 10224) = xmmword_1BCE418A0;
  *(v0 + 10240) = xmmword_1BCE418B0;
  *(v0 + 10256) = xmmword_1BCE418C0;
  *(v0 + 10272) = xmmword_1BCE418D0;
  *(v0 + 10320) = xmmword_1BCE418E0;
  v7 = vdupq_n_s64(0x3FD3333340000000uLL);
  *(v0 + 9536) = v7;
  *(v0 + 9552) = v7;
  *(v0 + 10336) = v7;
  *(v0 + 10352) = xmmword_1BCE418F0;
  *(v0 + 10384) = xmmword_1BCE41900;
  *(v0 + 10400) = xmmword_1BCE41910;
  *(v0 + 10416) = xmmword_1BCE41920;
  *(v0 + 10432) = xmmword_1BCE41930;
  *(v0 + 10448) = xmmword_1BCE41940;
  *(v0 + 10464) = xmmword_1BCE41950;
  *(v0 + 10736) = xmmword_1BCE41960;
  __asm { FMOV            V16.2D, #0.25 }

  *(v0 + 10752) = _Q16;
  *(v0 + 10768) = xmmword_1BCE41970;
  __asm { FMOV            V16.2D, #1.0 }

  *(v0 + 1264) = xmmword_1BCE41320;
  *(v0 + 9776) = xmmword_1BCE41320;
  *(v0 + 10992) = xmmword_1BCE41320;
  __asm { FMOV            V7.2D, #0.5 }

  *(v0 + 1280) = 0x41A0000043480000;
  *(v0 + 9792) = 0x41A0000043480000;
  *(v0 + 11008) = 0x41A0000043480000;
  *(v0 + 208) = _Q7;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 1296) = xmmword_1BCE41330;
  *(v0 + 9808) = xmmword_1BCE41330;
  *(v0 + 11024) = xmmword_1BCE41330;
  *(v0 + 304) = _Q7;
  *(v0 + 320) = xmmword_1BCE3EC60;
  *(v0 + 1312) = xmmword_1BCE41340;
  *(v0 + 9824) = xmmword_1BCE41340;
  *(v0 + 11040) = xmmword_1BCE41340;
  *(v0 + 368) = xmmword_1BCE3EC90;
  *(v0 + 1328) = xmmword_1BCE3EBF0;
  *(v0 + 9840) = xmmword_1BCE3EBF0;
  *(v0 + 11056) = xmmword_1BCE3EBF0;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1344) = xmmword_1BCE3EC00;
  *(v0 + 9856) = xmmword_1BCE3EC00;
  *(v0 + 11072) = xmmword_1BCE3EC00;
  *(v0 + 1360) = xmmword_1BCE3EC10;
  *(v0 + 9872) = xmmword_1BCE3EC10;
  *(v0 + 11088) = xmmword_1BCE3EC10;
  *(v0 + 1376) = xmmword_1BCE3EC20;
  *(v0 + 8368) = _Q16;
  *(v0 + 9888) = xmmword_1BCE3EC20;
  *(v0 + 11104) = xmmword_1BCE3EC20;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 9952) = xmmword_1BCE3D910;
  *(v0 + 11168) = xmmword_1BCE3D910;
  *(v0 + 8256) = xmmword_1BCE3A880;
  *(v0 + 8272) = xmmword_1BCE414C0;
  *(v0 + 8288) = xmmword_1BCE414D0;
  *(v0 + 8336) = xmmword_1BCE41400;
  *(v0 + 1424) = _Q7;
  *(v0 + 1520) = _Q7;
  *(v0 + 0x2000) = xmmword_1BCE3A880;
  *(v0 + 8240) = xmmword_1BCE414C0;
  *(v0 + 2640) = _Q7;
  *(v0 + 8080) = _Q16;
  *(v0 + 8096) = _Q16;
  *(v0 + 8720) = _Q7;
  *(v0 + 9936) = _Q7;
  *(v0 + 10032) = _Q7;
  *(v0 + 10368) = _Q7;
  *(v0 + 11152) = _Q7;
  *(v0 + 11248) = _Q7;
  *(v0 + 8048) = _Q16;
  *(v0 + 8064) = _Q16;
  *(v0 + 1536) = xmmword_1BCE3EC60;
  *(v0 + 7936) = _Q16;
  *(v0 + 7968) = _Q16;
  *(v0 + 10048) = xmmword_1BCE3EC60;
  *(v0 + 11264) = xmmword_1BCE3EC60;
  *(v0 + 496) = xmmword_1BCE41360;
  *(v0 + 512) = xmmword_1BCE41370;
  *(v0 + 7872) = xmmword_1BCE3A880;
  *(v0 + 1584) = xmmword_1BCE3EC90;
  *(v0 + 2800) = xmmword_1BCE3EC90;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7760) = _Q16;
  *(v0 + 7776) = _Q16;
  *(v0 + 7808) = xmmword_1BCE3A880;
  *(v0 + 7720) = 0;
  *(v0 + 7728) = _Q16;
  *(v0 + 7744) = _Q16;
  *(v0 + 8880) = xmmword_1BCE3EC90;
  *(v0 + 10096) = xmmword_1BCE3EC90;
  *(v0 + 11312) = xmmword_1BCE3EC90;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7584) = _Q16;
  *(v0 + 7600) = _Q16;
  *(v0 + 7632) = _Q16;
  *(v0 + 7648) = _Q16;
  *(v0 + 528) = xmmword_1BCE41380;
  *(v0 + 544) = xmmword_1BCE41390;
  *(v0 + 7504) = _Q16;
  *(v0 + 7536) = _Q16;
  *(v0 + 7552) = _Q16;
  *(v0 + 7568) = _Q16;
  *(v0 + 1712) = xmmword_1BCE41360;
  *(v0 + 11440) = xmmword_1BCE41360;
  *(v0 + 7472) = _Q16;
  *(v0 + 7488) = _Q16;
  *(v0 + 1728) = xmmword_1BCE41370;
  *(v0 + 11456) = xmmword_1BCE41370;
  *(v0 + 560) = xmmword_1BCE413A0;
  *(v0 + 576) = xmmword_1BCE413B0;
  *(v0 + 7392) = _Q16;
  *(v0 + 1744) = xmmword_1BCE41380;
  *(v0 + 7368) = 1065353216;
  *(v0 + 11472) = xmmword_1BCE41380;
  *(v0 + 7337) = *v17;
  *(v0 + 7296) = _Q16;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v17[3];
  *(v0 + 7216) = _Q16;
  *(v0 + 7232) = _Q16;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q16;
  *(v0 + 7280) = _Q16;
  *(v0 + 7152) = _Q16;
  *(v0 + 7168) = _Q16;
  *(v0 + 7184) = _Q16;
  *(v0 + 7200) = _Q16;
  *(v0 + 1760) = xmmword_1BCE41390;
  *(v0 + 7040) = xmmword_1BCE3A880;
  *(v0 + 7056) = xmmword_1BCE414C0;
  *(v0 + 7072) = xmmword_1BCE414D0;
  *(v0 + 7104) = xmmword_1BCE3A880;
  *(v0 + 11488) = xmmword_1BCE41390;
  *(v0 + 1776) = xmmword_1BCE413A0;
  *(v0 + 6976) = xmmword_1BCE3A880;
  *(v0 + 6992) = xmmword_1BCE414C0;
  *(v0 + 7024) = xmmword_1BCE414C0;
  *(v0 + 6880) = _Q16;
  *(v0 + 6896) = xmmword_1BCE41490;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6928) = xmmword_1BCE41490;
  *(v0 + 6944) = _Q16;
  *(v0 + 10288) = xmmword_1BCE413A0;
  *(v0 + 11504) = xmmword_1BCE413A0;
  *(v0 + 1792) = xmmword_1BCE413B0;
  *(v0 + 6832) = _Q16;
  *(v0 + 6848) = _Q16;
  *(v0 + 6864) = _Q16;
  *(v0 + 10304) = xmmword_1BCE413B0;
  *(v0 + 11520) = xmmword_1BCE413B0;
  *(v0 + 6752) = _Q16;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 592) = xmmword_1BCE413C0;
  *(v0 + 608) = xmmword_1BCE413D0;
  *(v0 + 1808) = xmmword_1BCE413C0;
  *(v0 + 11536) = xmmword_1BCE413C0;
  *(v0 + 6720) = _Q16;
  *(v0 + 1824) = xmmword_1BCE413D0;
  *(v0 + 11552) = xmmword_1BCE413D0;
  *(v0 + 6656) = xmmword_1BCE3A880;
  *(v0 + 624) = xmmword_1BCE413E0;
  *(v0 + 640) = xmmword_1BCE413F0;
  *(v0 + 6512) = _Q16;
  *(v0 + 6528) = _Q16;
  *(v0 + 6544) = _Q16;
  *(v0 + 6560) = _Q16;
  *(v0 + 6592) = xmmword_1BCE3A880;
  *(v0 + 1840) = xmmword_1BCE413E0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 11568) = xmmword_1BCE413E0;
  *(v0 + 672) = xmmword_1BCE41410;
  *(v0 + 6384) = _Q16;
  *(v0 + 6416) = _Q16;
  *(v0 + 6432) = _Q16;
  *(v0 + 1856) = xmmword_1BCE413F0;
  *(v0 + 6320) = _Q16;
  *(v0 + 6336) = _Q16;
  *(v0 + 6352) = _Q16;
  *(v0 + 6368) = _Q16;
  *(v0 + 11584) = xmmword_1BCE413F0;
  *(v0 + 1888) = xmmword_1BCE41410;
  *(v0 + 6256) = _Q16;
  *(v0 + 6272) = _Q16;
  *(v0 + 6288) = _Q16;
  *(v0 + 11616) = xmmword_1BCE41410;
  *(v0 + 1904) = xmmword_1BCE41420;
  *(v0 + 11632) = xmmword_1BCE41420;
  *(v0 + 688) = xmmword_1BCE41420;
  *(v0 + 704) = xmmword_1BCE41430;
  *(v0 + 6176) = _Q16;
  *(v0 + 656) = xmmword_1BCE41400;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6160) = _Q16;
  *(v0 + 6121) = *v16;
  *(v0 + 6124) = *&v16[3];
  *(v0 + 6152) = 1065353216;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q16;
  *(v0 + 6064) = _Q16;
  *(v0 + 6080) = _Q16;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 5952) = _Q16;
  *(v0 + 5968) = _Q16;
  *(v0 + 5984) = _Q16;
  *(v0 + 6000) = _Q16;
  *(v0 + 6016) = _Q16;
  *(v0 + 1920) = xmmword_1BCE41430;
  *(v0 + 11648) = xmmword_1BCE41430;
  *(v0 + 5888) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q16;
  *(v0 + 5776) = xmmword_1BCE414C0;
  *(v0 + 5808) = xmmword_1BCE414C0;
  *(v0 + 5824) = xmmword_1BCE3A880;
  *(v0 + 5840) = xmmword_1BCE414C0;
  *(v0 + 5856) = xmmword_1BCE414D0;
  *(v0 + 720) = xmmword_1BCE41400;
  *(v0 + 736) = xmmword_1BCE41440;
  *(v0 + 5680) = xmmword_1BCE41490;
  *(v0 + 5696) = xmmword_1BCE3A880;
  *(v0 + 5712) = xmmword_1BCE41490;
  *(v0 + 5728) = _Q16;
  *(v0 + 5760) = xmmword_1BCE3A880;
  *(v0 + 1872) = xmmword_1BCE41400;
  *(v0 + 5616) = _Q16;
  *(v0 + 5632) = _Q16;
  *(v0 + 5648) = _Q16;
  *(v0 + 5664) = _Q16;
  *(v0 + 1936) = xmmword_1BCE41400;
  *(v0 + 3152) = xmmword_1BCE41400;
  *(v0 + 3472) = xmmword_1BCE41400;
  *(v0 + 5504) = _Q16;
  *(v0 + 5536) = _Q16;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 4688) = xmmword_1BCE41400;
  *(v0 + 11600) = xmmword_1BCE41400;
  *(v0 + 11664) = xmmword_1BCE41400;
  *(v0 + 1952) = xmmword_1BCE41440;
  *(v0 + 11680) = xmmword_1BCE41440;
  *(v0 + 816) = xmmword_1BCE41450;
  *(v0 + 832) = xmmword_1BCE41460;
  *(v0 + 5376) = xmmword_1BCE3A880;
  *(v0 + 5440) = xmmword_1BCE3A880;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q16;
  *(v0 + 5312) = _Q16;
  *(v0 + 5328) = _Q16;
  *(v0 + 5344) = _Q16;
  *(v0 + 2032) = xmmword_1BCE41450;
  *(v0 + 5216) = _Q16;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 10544) = xmmword_1BCE41450;
  *(v0 + 11760) = xmmword_1BCE41450;
  *(v0 + 5120) = _Q16;
  *(v0 + 5136) = _Q16;
  *(v0 + 5152) = _Q16;
  *(v0 + 5168) = _Q16;
  *(v0 + 5200) = _Q16;
  *(v0 + 2048) = xmmword_1BCE41460;
  *(v0 + 5072) = _Q16;
  *(v0 + 5104) = _Q16;
  *(v0 + 10560) = xmmword_1BCE41460;
  *(v0 + 11776) = xmmword_1BCE41460;
  *(v0 + 848) = xmmword_1BCE41470;
  *(v0 + 864) = xmmword_1BCE41480;
  *(v0 + 5040) = _Q16;
  *(v0 + 5056) = _Q16;
  *(v0 + 2064) = xmmword_1BCE41470;
  *(v0 + 4752) = _Q16;
  *(v0 + 4904) = 0;
  *(v0 + 4960) = _Q16;
  *(v0 + 4905) = *v15;
  *(v0 + 4908) = *&v15[3];
  *(v0 + 4936) = 1065353216;
  *(v0 + 4944) = _Q16;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q16;
  *(v0 + 4848) = _Q16;
  *(v0 + 4864) = _Q16;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4768) = _Q16;
  *(v0 + 4784) = _Q16;
  *(v0 + 4800) = _Q16;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 10576) = xmmword_1BCE41470;
  *(v0 + 11792) = xmmword_1BCE41470;
  *(v0 + 2080) = xmmword_1BCE41480;
  *(v0 + 4720) = _Q16;
  *(v0 + 4736) = _Q16;
  *(v0 + 10592) = xmmword_1BCE41480;
  *(v0 + 11808) = xmmword_1BCE41480;
  *(v0 + 2128) = xmmword_1BCE414A0;
  *(v0 + 4608) = xmmword_1BCE3A880;
  *(v0 + 4624) = xmmword_1BCE414C0;
  *(v0 + 4640) = xmmword_1BCE414D0;
  *(v0 + 10640) = xmmword_1BCE414A0;
  *(v0 + 11856) = xmmword_1BCE414A0;
  *(v0 + 912) = xmmword_1BCE414A0;
  *(v0 + 928) = xmmword_1BCE414B0;
  *(v0 + 4544) = xmmword_1BCE3A880;
  *(v0 + 4592) = xmmword_1BCE414C0;
  *(v0 + 2144) = xmmword_1BCE414B0;
  *(v0 + 10656) = xmmword_1BCE414B0;
  *(v0 + 11872) = xmmword_1BCE414B0;
  *(v0 + 4416) = _Q16;
  *(v0 + 4432) = _Q16;
  *(v0 + 4448) = _Q16;
  *(v0 + 944) = xmmword_1BCE41490;
  *(v0 + 960) = xmmword_1BCE3A880;
  *(v0 + 2096) = xmmword_1BCE41490;
  *(v0 + 2160) = xmmword_1BCE41490;
  *(v0 + 4320) = _Q16;
  *(v0 + 4400) = _Q16;
  *(v0 + 10608) = xmmword_1BCE41490;
  *(v0 + 10672) = xmmword_1BCE41490;
  *(v0 + 11824) = xmmword_1BCE41490;
  *(v0 + 11888) = xmmword_1BCE41490;
  *(v0 + 880) = xmmword_1BCE41490;
  *(v0 + 896) = xmmword_1BCE3A880;
  *(v0 + 4224) = xmmword_1BCE3A880;
  *(v0 + 4288) = _Q16;
  *(v0 + 2112) = xmmword_1BCE3A880;
  *(v0 + 2176) = xmmword_1BCE3A880;
  *(v0 + 4128) = _Q16;
  *(v0 + 4160) = xmmword_1BCE3A880;
  *(v0 + 2944) = xmmword_1BCE3A880;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q16;
  *(v0 + 4096) = _Q16;
  *(v0 + 4112) = _Q16;
  *(v0 + 3008) = xmmword_1BCE3A880;
  *(v0 + 3328) = xmmword_1BCE3A880;
  *(v0 + 3392) = xmmword_1BCE3A880;
  *(v0 + 3984) = _Q16;
  *(v0 + 4000) = _Q16;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 3824) = _Q16;
  *(v0 + 3888) = _Q16;
  *(v0 + 3904) = _Q16;
  *(v0 + 3920) = _Q16;
  *(v0 + 3936) = _Q16;
  *(v0 + 3952) = _Q16;
  *(v0 + 3840) = _Q16;
  *(v0 + 3856) = _Q16;
  *(v0 + 9024) = xmmword_1BCE3A880;
  *(v0 + 9088) = xmmword_1BCE3A880;
  *(v0 + 9408) = xmmword_1BCE3A880;
  *(v0 + 9472) = xmmword_1BCE3A880;
  *(v0 + 10624) = xmmword_1BCE3A880;
  *(v0 + 10688) = xmmword_1BCE3A880;
  *(v0 + 11840) = xmmword_1BCE3A880;
  *(v0 + 11904) = xmmword_1BCE3A880;
  *(v0 + 3688) = 0;
  *(v0 + 3744) = _Q16;
  *(v0 + 3689) = *v14;
  *(v0 + 3692) = *&v14[3];
  *(v0 + 3720) = 1065353216;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q16;
  *(v0 + 3632) = _Q16;
  *(v0 + 3648) = _Q16;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3520) = _Q16;
  *(v0 + 3536) = _Q16;
  *(v0 + 3552) = _Q16;
  *(v0 + 3568) = _Q16;
  *(v0 + 3584) = _Q16;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 976) = xmmword_1BCE414C0;
  *(v0 + 992) = xmmword_1BCE414D0;
  *(v0 + 2192) = xmmword_1BCE414C0;
  *(v0 + 3424) = xmmword_1BCE414D0;
  *(v0 + 3504) = _Q16;
  *(v0 + 3312) = xmmword_1BCE414C0;
  *(v0 + 3408) = xmmword_1BCE414C0;
  *(v0 + 9392) = xmmword_1BCE414C0;
  *(v0 + 9488) = xmmword_1BCE414C0;
  *(v0 + 10704) = xmmword_1BCE414C0;
  *(v0 + 11920) = xmmword_1BCE414C0;
  *(v0 + 2208) = xmmword_1BCE414D0;
  *(v0 + 9504) = xmmword_1BCE414D0;
  *(v0 + 10720) = xmmword_1BCE414D0;
  *(v0 + 11936) = xmmword_1BCE414D0;
  *(v0 + 2224) = xmmword_1BCE414E0;
  *(v0 + 3200) = _Q16;
  *(v0 + 3216) = _Q16;
  *(v0 + 3232) = _Q16;
  *(v0 + 11952) = xmmword_1BCE414E0;
  *(v0 + 1008) = xmmword_1BCE414E0;
  *(v0 + 1024) = xmmword_1BCE414F0;
  *(v0 + 2240) = xmmword_1BCE414F0;
  *(v0 + 3184) = _Q16;
  *(v0 + 10784) = xmmword_1BCE414F0;
  *(v0 + 11968) = xmmword_1BCE414F0;
  *(v0 + 1040) = xmmword_1BCE41500;
  *(v0 + 2256) = xmmword_1BCE41500;
  *(v0 + 11984) = xmmword_1BCE41500;
  result = 1.0;
  *(v0 + 1056) = xmmword_1BCE41510;
  *(v0 + 2272) = xmmword_1BCE41510;
  *(v0 + 12000) = xmmword_1BCE41510;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2880) = _Q16;
  *(v0 + 2896) = _Q16;
  *(v0 + 2912) = _Q16;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q16;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 2864) = _Q16;
  *(v0 + 176) = _Q16;
  *(v0 + 192) = _Q16;
  *(v0 + 2720) = _Q16;
  *(v0 + 2768) = _Q16;
  *(v0 + 2784) = _Q16;
  *(v0 + 240) = _Q16;
  *(v0 + 256) = _Q16;
  *(v0 + 2624) = _Q16;
  *(v0 + 2672) = _Q16;
  *(v0 + 2688) = _Q16;
  *(v0 + 2704) = _Q16;
  *(v0 + 272) = _Q16;
  *(v0 + 288) = _Q16;
  *(v0 + 336) = _Q16;
  *(v0 + 352) = _Q16;
  *(v0 + 400) = _Q16;
  *(v0 + 2608) = _Q16;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q16;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v13;
  *(v0 + 2476) = *&v13[3];
  *(v0 + 2504) = 1041865114;
  *(v0 + 2416) = _Q16;
  *(v0 + 2432) = _Q16;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 432) = _Q16;
  *(v0 + 448) = _Q16;
  *(v0 + 2304) = _Q16;
  *(v0 + 2320) = _Q16;
  *(v0 + 2336) = _Q16;
  *(v0 + 2352) = _Q16;
  *(v0 + 2368) = _Q16;
  *(v0 + 464) = _Q16;
  *(v0 + 480) = _Q16;
  *(v0 + 752) = _Q16;
  *(v0 + 768) = _Q16;
  *(v0 + 2288) = _Q16;
  *(v0 + 784) = _Q16;
  *(v0 + 800) = _Q16;
  *(v0 + 1072) = _Q16;
  *(v0 + 1088) = _Q16;
  *(v0 + 1104) = _Q16;
  *(v0 + 1120) = _Q16;
  *(v0 + 1136) = _Q16;
  *(v0 + 1152) = _Q16;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q16;
  *(v0 + 1200) = _Q16;
  *(v0 + 1216) = _Q16;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2000) = _Q16;
  *(v0 + 2016) = _Q16;
  *(v0 + 1257) = *v12;
  *(v0 + 1260) = *&v12[3];
  *(v0 + 1968) = _Q16;
  *(v0 + 1984) = _Q16;
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q16;
  *(v0 + 1408) = _Q16;
  *(v0 + 1456) = _Q16;
  *(v0 + 1472) = _Q16;
  *(v0 + 1488) = _Q16;
  *(v0 + 1504) = _Q16;
  *(v0 + 1552) = _Q16;
  *(v0 + 1568) = _Q16;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q16;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1648) = _Q16;
  *(v0 + 1664) = _Q16;
  *(v0 + 1680) = _Q16;
  *(v0 + 1696) = _Q16;
  *(v0 + 8384) = _Q16;
  *(v0 + 8400) = _Q16;
  *(v0 + 8416) = _Q16;
  *(v0 + 8432) = _Q16;
  *(v0 + 8448) = _Q16;
  *(v0 + 8480) = _Q16;
  *(v0 + 8496) = _Q16;
  *(v0 + 8512) = _Q16;
  *(v0 + 8688) = _Q16;
  *(v0 + 8704) = _Q16;
  *(v0 + 8752) = _Q16;
  *(v0 + 8768) = _Q16;
  *(v0 + 8784) = _Q16;
  *(v0 + 8800) = _Q16;
  *(v0 + 8848) = _Q16;
  *(v0 + 8864) = _Q16;
  *(v0 + 8912) = _Q16;
  *(v0 + 8944) = _Q16;
  *(v0 + 8960) = _Q16;
  *(v0 + 8976) = _Q16;
  *(v0 + 8992) = _Q16;
  *(v0 + 9264) = _Q16;
  *(v0 + 9280) = _Q16;
  *(v0 + 9296) = _Q16;
  *(v0 + 9312) = _Q16;
  *(v0 + 9584) = _Q16;
  *(v0 + 9600) = _Q16;
  *(v0 + 9616) = _Q16;
  *(v0 + 9632) = _Q16;
  *(v0 + 9648) = _Q16;
  *(v0 + 9664) = _Q16;
  *(v0 + 9696) = _Q16;
  *(v0 + 9712) = _Q16;
  *(v0 + 9728) = _Q16;
  *(v0 + 9904) = _Q16;
  *(v0 + 9920) = _Q16;
  *(v0 + 9968) = _Q16;
  *(v0 + 9984) = _Q16;
  *(v0 + 10000) = _Q16;
  *(v0 + 10016) = _Q16;
  *(v0 + 10064) = _Q16;
  *(v0 + 10080) = _Q16;
  *(v0 + 10128) = _Q16;
  *(v0 + 10160) = _Q16;
  *(v0 + 10176) = _Q16;
  *(v0 + 10192) = _Q16;
  *(v0 + 10208) = _Q16;
  *(v0 + 10480) = _Q16;
  *(v0 + 10496) = _Q16;
  *(v0 + 10512) = _Q16;
  *(v0 + 10528) = _Q16;
  *(v0 + 10800) = _Q16;
  *(v0 + 10816) = _Q16;
  *(v0 + 10832) = _Q16;
  *(v0 + 10848) = _Q16;
  *(v0 + 10864) = _Q16;
  *(v0 + 10880) = _Q16;
  *(v0 + 10912) = _Q16;
  *(v0 + 10928) = _Q16;
  *(v0 + 10944) = _Q16;
  *(v0 + 11120) = _Q16;
  *(v0 + 11136) = _Q16;
  *(v0 + 11184) = _Q16;
  *(v0 + 11200) = _Q16;
  *(v0 + 11216) = _Q16;
  *(v0 + 11232) = _Q16;
  *(v0 + 11280) = _Q16;
  *(v0 + 11296) = _Q16;
  *(v0 + 11344) = _Q16;
  *(v0 + 11376) = _Q16;
  *(v0 + 11392) = _Q16;
  *(v0 + 11408) = _Q16;
  *(v0 + 11424) = _Q16;
  *(v0 + 11696) = _Q16;
  *(v0 + 11712) = _Q16;
  *(v0 + 11728) = _Q16;
  *(v0 + 11744) = _Q16;
  *(v0 + 12016) = _Q16;
  *(v0 + 12032) = _Q16;
  *(v0 + 12048) = _Q16;
  *(v0 + 12064) = _Q16;
  *(v0 + 12080) = _Q16;
  *(v0 + 12096) = _Q16;
  *(v0 + 12128) = _Q16;
  *(v0 + 12144) = _Q16;
  *(v0 + 12160) = _Q16;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8553) = *v18;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v18[3];
  *(v0 + 8584) = 1041865114;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000000;
  *(v0 + 9769) = *v19;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v19[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v20;
  *(v0 + 10988) = *&v20[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1BCA2C554@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  v3 = sub_1BCA2CCE4();
  v4 = sub_1BCA2CCE4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
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
  *(a1 + 400) = xmmword_1BCE423E0;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 15;
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
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 720) = 0x41963C6A413D851FLL;
  *(a1 + 728) = 1076683965;
  *(a1 + 736) = 1;
  *(a1 + 744) = 7;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A970A441800000;
  *(a1 + 856) = 1097072640;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x41B0000041800000;
  *(a1 + 984) = 1081627116;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE42370;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x401333333FDCCCCDLL;
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
  *(a1 + 1216) = xmmword_1BCE423F0;
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
  *(a1 + 1456) = 0x42DC000042B40000;
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
  *(v2 + 198) = 16842753;
  *(a1 + 1638) = 0;
  *(a1 + 1642) = 0x101010100010000;
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
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE42400;
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
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x4019999A3F800000;
  *(a1 + 2008) = 0x404000004019999ALL;
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
  *(a1 + 2200) = 7;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE42420;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v3;
  *(a1 + 2320) = v4;
  return result;
}

uint64_t sub_1BCA2CCE4()
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
  *(result + 1072) = _Q0;
  *(result + 1088) = _Q0;
  *(result + 1104) = _Q0;
  *(result + 1120) = _Q0;
  *(result + 1136) = _Q0;
  *(result + 1152) = _Q0;
  *(result + 1168) = 0x4170000042480000;
  *(result + 1176) = 0x3FF0000000000000;
  *(result + 1184) = _Q0;
  *(result + 1200) = _Q0;
  *(result + 1216) = _Q0;
  *(result + 1232) = 0x3FF0000000000000;
  *(result + 1248) = 0xC04E000000000000;
  *(result + 1256) = 0;
  *(result + 1257) = *v9;
  *(result + 1260) = *&v9[3];
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
  *(result + 2288) = _Q0;
  *(result + 2304) = _Q0;
  *(result + 2320) = _Q0;
  *(result + 2336) = _Q0;
  *(result + 2352) = _Q0;
  *(result + 2368) = _Q0;
  *(result + 2384) = 0x4170000042480000;
  *(result + 2392) = 0x3FF0000000000000;
  *(result + 2400) = _Q0;
  *(result + 2416) = _Q0;
  *(result + 2432) = _Q0;
  *(result + 2448) = 0x3FF0000000000000;
  *(result + 2464) = 0xC028000000000000;
  *(result + 2472) = 0;
  *(result + 2473) = *v10;
  *(result + 2476) = *&v10[3];
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
  *(result + 3504) = _Q0;
  *(result + 3520) = _Q0;
  *(result + 3536) = _Q0;
  *(result + 3552) = _Q0;
  *(result + 3568) = _Q0;
  *(result + 3584) = _Q0;
  *(result + 3600) = 0x4170000042480000;
  *(result + 3608) = 0x3FF0000000000000;
  *(result + 3616) = _Q0;
  *(result + 3632) = _Q0;
  *(result + 3648) = _Q0;
  *(result + 3664) = 0x3FF0000000000000;
  *(result + 3680) = 0xC018000000000000;
  *(result + 3688) = 0;
  *(result + 3689) = *v11;
  *(result + 3692) = *&v11[3];
  *(result + 4528) = _Q0;
  *(result + 4544) = _Q0;
  *(result + 4432) = _Q0;
  *(result + 4448) = _Q0;
  *(result + 4464) = _Q0;
  *(result + 4480) = _Q0;
  *(result + 4496) = _Q0;
  *(result + 4512) = _Q0;
  *(result + 4336) = _Q0;
  *(result + 4352) = _Q0;
  *(result + 4368) = _Q0;
  *(result + 4384) = _Q0;
  *(result + 4400) = _Q0;
  *(result + 4416) = _Q0;
  *(result + 4256) = _Q0;
  *(result + 4272) = _Q0;
  *(result + 4288) = _Q0;
  *(result + 4304) = _Q0;
  *(result + 4320) = _Q0;
  *(result + 4176) = _Q0;
  *(result + 4192) = _Q0;
  *(result + 4208) = _Q0;
  *(result + 4224) = _Q0;
  *(result + 4240) = _Q0;
  *(result + 3696) = xmmword_1BCE3CA50;
  *(result + 4112) = _Q0;
  *(result + 4128) = _Q0;
  *(result + 4144) = _Q0;
  *(result + 4160) = _Q0;
  *(result + 3968) = xmmword_1BCE3E230;
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
  *(result + 3904) = _Q0;
  *(result + 3920) = _Q0;
  *(result + 3936) = _Q0;
  *(result + 3952) = _Q0;
  *(result + 3728) = xmmword_1BCE3CA60;
  *(result + 3744) = _Q0;
  *(result + 3888) = _Q0;
  *(result + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(result + 3872) = xmmword_1BCE3D960;
  *(result + 3824) = xmmword_1BCE424A0;
  *(result + 3840) = xmmword_1BCE424B0;
  *(result + 3792) = xmmword_1BCE42490;
  *(result + 3808) = xmmword_1BCE3EEE0;
  *(result + 3760) = xmmword_1BCE3CA70;
  *(result + 3776) = xmmword_1BCE3CA80;
  *(result + 3712) = 0x447A000044160000;
  *(result + 3720) = 1061997773;
  *(result + 4560) = _Q0;
  *(result + 4576) = _Q0;
  *(result + 4592) = _Q0;
  *(result + 4608) = _Q0;
  *(result + 4624) = _Q0;
  *(result + 4640) = _Q0;
  *(result + 4656) = _Q0;
  *(result + 4672) = _Q0;
  *(result + 4688) = _Q0;
  *(result + 4704) = _Q0;
  *(result + 4720) = _Q0;
  *(result + 4736) = _Q0;
  *(result + 4752) = _Q0;
  *(result + 4768) = _Q0;
  *(result + 4784) = _Q0;
  *(result + 4800) = _Q0;
  *(result + 4816) = 0x4170000042480000;
  *(result + 4824) = 0x3FF0000000000000;
  *(result + 4832) = _Q0;
  *(result + 4848) = _Q0;
  *(result + 4864) = _Q0;
  *(result + 4880) = 0x3FF0000000000000;
  *(result + 4896) = 0;
  *(result + 4905) = *v12;
  *(result + 4904) = 0;
  *(result + 4908) = *&v12[3];
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
  *(result + 5056) = xmmword_1BCE3C8C0;
  *(result + 5072) = _Q0;
  *(result + 5168) = xmmword_1BCE3CBD0;
  *(result + 5184) = xmmword_1BCE424E0;
  *(result + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  strcpy((result + 5232), "fff?fff?333?fff?fff?");
  *(result + 6128) = xmmword_1BCE3CC40;
  *(result + 6144) = 0x44480000443B8000;
  *(result + 6160) = xmmword_1BCE42500;
  *(result + 6176) = xmmword_1BCE3CC60;
  *(result + 6192) = xmmword_1BCE42510;
  *(result + 6208) = xmmword_1BCE3CC80;
  *(result + 6224) = xmmword_1BCE3CC90;
  *(result + 6240) = xmmword_1BCE3CCA0;
  *(result + 6384) = xmmword_1BCE3DAF0;
  *(result + 6400) = xmmword_1BCE42520;
  *(result + 6416) = xmmword_1BCE42530;
  *(result + 6432) = xmmword_1BCE42540;
  *(result + 6448) = xmmword_1BCE42550;
  *(result + 6480) = xmmword_1BCE3CD00;
  *(result + 7344) = xmmword_1BCE3CD40;
  *(result + 7360) = 1147207680;
  *(result + 7408) = xmmword_1BCE42560;
  *(result + 7424) = xmmword_1BCE3C9D0;
  *(result + 7440) = xmmword_1BCE3CD70;
  *(result + 7552) = _Q0;
  *(result + 7456) = xmmword_1BCE3DEF0;
  *(result + 7632) = xmmword_1BCE42570;
  *(result + 7648) = xmmword_1BCE42580;
  *(result + 7664) = xmmword_1BCE3CDB0;
  *(result + 7696) = xmmword_1BCE3E2F0;
  *(result + 8560) = xmmword_1BCE3CDF0;
  *(result + 8576) = 0x41A0000044A28000;
  *(result + 8624) = xmmword_1BCE3CE00;
  *(result + 9776) = xmmword_1BCE3CE40;
  *(result + 10992) = xmmword_1BCE3CE40;
  *(result + 9792) = 1150681088;
  *(result + 11008) = 1150681088;
  *(result + 9840) = xmmword_1BCE3CE50;
  *(result + 11056) = xmmword_1BCE3CE50;
  *(result + 9856) = xmmword_1BCE3CE60;
  *(result + 11072) = xmmword_1BCE3CE60;
  *(result + 9872) = xmmword_1BCE3CE70;
  *(result + 11088) = xmmword_1BCE3CE70;
  *(result + 9888) = xmmword_1BCE3CE80;
  *(result + 11104) = xmmword_1BCE3CE80;
  *(result + 11264) = xmmword_1BCE42590;
  v7 = vdupq_n_s32(0x3F666666u);
  *(result + 8880) = v7;
  *(result + 10096) = v7;
  *(result + 11312) = v7;
  *(result + 12208) = xmmword_1BCE3CEC0;
  *(result + 12224) = 1151500288;
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
  *(result + 12272) = xmmword_1BCE3CED0;
  *(result + 12528) = xmmword_1BCE3CEF0;
  *(result + 8912) = xmmword_1BCE3CE10;
  *(result + 10128) = xmmword_1BCE3CE10;
  *(result + 11344) = xmmword_1BCE3CE10;
  *(result + 12560) = xmmword_1BCE3CE10;
  *(result + 13424) = xmmword_1BCE425A0;
  *(result + 13440) = 0x2C31C71D44610000;
  *(result + 13456) = vdupq_n_s64(0x3FEC9C9CC0000000uLL);
  *(result + 13472) = xmmword_1BCE425B0;
  *(result + 13488) = xmmword_1BCE425C0;
  *(result + 13520) = xmmword_1BCE425D0;
  *(result + 13536) = xmmword_1BCE425E0;
  *(result + 7488) = xmmword_1BCE3CBA0;
  *(result + 13568) = xmmword_1BCE3CBA0;
  *(result + 13712) = xmmword_1BCE425F0;
  *(result + 13744) = xmmword_1BCE3CF70;
  *(result + 13776) = xmmword_1BCE3CF80;
  *(result + 14640) = xmmword_1BCE42600;
  *(result + 14656) = 0x441EC000443B8000;
  *(result + 14672) = xmmword_1BCE42610;
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
  *(result + 5936) = _Q0;
  *(result + 5952) = _Q0;
  *(result + 5968) = _Q0;
  *(result + 5984) = _Q0;
  *(result + 6000) = _Q0;
  *(result + 6016) = _Q0;
  *(result + 6032) = 0x4170000042480000;
  *(result + 6040) = 0x3FF0000000000000;
  *(result + 6048) = _Q0;
  *(result + 6064) = _Q0;
  *(result + 6080) = _Q0;
  *(result + 6096) = 0x3FF0000000000000;
  *(result + 6112) = 0x4017FFFFFFFFFFFALL;
  *(result + 6120) = 0;
  *(result + 6121) = *v13;
  *(result + 6124) = *&v13[3];
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
  *(result + 7152) = _Q0;
  *(result + 7168) = _Q0;
  *(result + 7184) = _Q0;
  *(result + 7200) = _Q0;
  *(result + 7216) = _Q0;
  *(result + 7232) = _Q0;
  *(result + 7248) = 0x4170000042480000;
  *(result + 7256) = 0x3FF0000000000000;
  *(result + 7264) = _Q0;
  *(result + 7280) = _Q0;
  *(result + 7296) = _Q0;
  *(result + 7312) = 0x3FF0000000000000;
  *(result + 7328) = 0x4027FFFFFFFFFFFALL;
  *(result + 7336) = 0;
  *(result + 7337) = *v14;
  *(result + 7340) = *&v14[3];
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
  *(result + 13600) = xmmword_1BCE3DAE0;
  *(result + 14816) = xmmword_1BCE3DAE0;
  *(result + 14864) = xmmword_1BCE3D010;
  *(result + 14928) = xmmword_1BCE42660;
  *(result + 14944) = xmmword_1BCE42670;
  *(result + 14960) = xmmword_1BCE42680;
  *(result + 14992) = xmmword_1BCE3D060;
  *(result + 15856) = xmmword_1BCE3D0B0;
  *(result + 15872) = 0x449EC00044160000;
  *(result + 15888) = xmmword_1BCE3D0C0;
  *(result + 15904) = xmmword_1BCE3D0D0;
  *(result + 15920) = xmmword_1BCE3DBF0;
  *(result + 15936) = xmmword_1BCE3DC00;
  *(result + 15952) = xmmword_1BCE3D100;
  *(result + 15968) = xmmword_1BCE3D110;
  *(result + 16000) = xmmword_1BCE3CBB0;
  *(result + 8736) = xmmword_1BCE3DA70;
  *(result + 9952) = xmmword_1BCE3DA70;
  *(result + 11168) = xmmword_1BCE3DA70;
  *(result + 12384) = xmmword_1BCE3DA70;
  *(result + 16032) = xmmword_1BCE3DA70;
  *(result + 10064) = xmmword_1BCE3CCB0;
  *(result + 11248) = xmmword_1BCE3CCB0;
  *(result + 11280) = xmmword_1BCE3CCB0;
  *(result + 16080) = xmmword_1BCE3CCB0;
  *(result + 7616) = xmmword_1BCE3E230;
  *(result + 8832) = xmmword_1BCE3E230;
  *(result + 10048) = xmmword_1BCE3E230;
  *(result + 12480) = xmmword_1BCE3E230;
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
  *(result + 14912) = xmmword_1BCE3ECB0;
  *(result + 17344) = xmmword_1BCE3ECB0;
  *(result + 17360) = xmmword_1BCE3CAD0;
  *(result + 17392) = xmmword_1BCE426C0;
  *(result + 17408) = 1062836634;
  *(result + 17424) = xmmword_1BCE3D220;
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
  *(result + 8848) = xmmword_1BCE3C8F0;
  *(result + 19792) = xmmword_1BCE3C8F0;
  *(result + 21008) = xmmword_1BCE3C8F0;
  *(result + 19824) = xmmword_1BCE3C900;
  *(result + 21040) = xmmword_1BCE3C900;
  *(result + 19840) = 0x3E4CCCCD3F800000;
  *(result + 21056) = 0x3E4CCCCD3F800000;
  *(result + 8464) = 0x4170000042480000;
  *(result + 9680) = 0x4170000042480000;
  *(result + 10896) = 0x4170000042480000;
  *(result + 12112) = 0x4170000042480000;
  *(result + 13328) = 0x4170000042480000;
  *(result + 14544) = 0x4170000042480000;
  *(result + 15760) = 0x4170000042480000;
  *(result + 16976) = 0x4170000042480000;
  *(result + 18192) = 0x4170000042480000;
  *(result + 19408) = 0x4170000042480000;
  *(result + 20624) = 0x4170000042480000;
  *(result + 21840) = 0x4170000042480000;
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
  *(result + 7920) = _Q0;
  *(result + 7936) = _Q0;
  *(result + 7952) = _Q0;
  *(result + 7968) = _Q0;
  *(result + 7984) = _Q0;
  *(result + 8000) = _Q0;
  *(result + 8016) = _Q0;
  *(result + 8032) = _Q0;
  *(result + 8048) = _Q0;
  *(result + 8064) = _Q0;
  *(result + 8080) = _Q0;
  *(result + 8096) = _Q0;
  *(result + 8112) = _Q0;
  *(result + 8128) = _Q0;
  *(result + 8144) = _Q0;
  *(result + 8160) = _Q0;
  *(result + 8176) = _Q0;
  *(result + 0x2000) = _Q0;
  *(result + 8208) = _Q0;
  *(result + 8224) = _Q0;
  *(result + 8240) = _Q0;
  *(result + 8256) = _Q0;
  *(result + 8272) = _Q0;
  *(result + 8288) = _Q0;
  *(result + 8304) = _Q0;
  *(result + 8320) = _Q0;
  *(result + 8336) = _Q0;
  *(result + 8352) = _Q0;
  *(result + 8368) = _Q0;
  *(result + 8384) = _Q0;
  *(result + 8400) = _Q0;
  *(result + 8416) = _Q0;
  *(result + 8432) = _Q0;
  *(result + 8448) = _Q0;
  *(result + 8472) = 0x3FF0000000000000;
  *(result + 8480) = _Q0;
  *(result + 8496) = _Q0;
  *(result + 8512) = _Q0;
  *(result + 8528) = 0x3FF0000000000000;
  *(result + 8544) = 0x4032000000000000;
  *(result + 8552) = 0;
  *(result + 8553) = *v15;
  *(result + 8556) = *&v15[3];
  *(result + 8584) = 1061158912;
  *(result + 8640) = _Q0;
  *(result + 8656) = _Q0;
  *(result + 8672) = _Q0;
  *(result + 8688) = _Q0;
  *(result + 18096) = _Q0;
  *(result + 18000) = _Q0;
  *(result + 18016) = _Q0;
  *(result + 18032) = _Q0;
  *(result + 18048) = _Q0;
  *(result + 18064) = _Q0;
  *(result + 18080) = _Q0;
  *(result + 17904) = _Q0;
  *(result + 17920) = _Q0;
  *(result + 17936) = _Q0;
  *(result + 17952) = _Q0;
  *(result + 17968) = _Q0;
  *(result + 17984) = _Q0;
  *(result + 17808) = _Q0;
  *(result + 17824) = _Q0;
  *(result + 17840) = _Q0;
  *(result + 17856) = _Q0;
  *(result + 17872) = _Q0;
  *(result + 17888) = _Q0;
  *(result + 17712) = _Q0;
  *(result + 17728) = _Q0;
  *(result + 17744) = _Q0;
  *(result + 17760) = _Q0;
  *(result + 17776) = _Q0;
  *(result + 17792) = _Q0;
  *(result + 17616) = _Q0;
  *(result + 17632) = _Q0;
  *(result + 17648) = _Q0;
  *(result + 17664) = _Q0;
  *(result + 17680) = _Q0;
  *(result + 17696) = _Q0;
  *(result + 17520) = _Q0;
  *(result + 17536) = _Q0;
  *(result + 17552) = _Q0;
  *(result + 17568) = _Q0;
  *(result + 17584) = _Q0;
  *(result + 17600) = _Q0;
  *(result + 8704) = _Q0;
  *(result + 8720) = _Q0;
  *(result + 8752) = _Q0;
  *(result + 17472) = _Q0;
  *(result + 17488) = _Q0;
  *(result + 17504) = _Q0;
  *(result + 17416) = 0x3FEF23CF40000000;
  *(result + 17440) = 0;
  *(result + 17448) = 665496235;
  *(result + 17456) = _Q0;
  *(result + 8768) = _Q0;
  *(result + 8784) = _Q0;
  *(result + 8800) = _Q0;
  *(result + 8816) = _Q0;
  *(result + 8864) = _Q0;
  *(result + 17328) = _Q0;
  *(result + 8904) = 0x3FEB9B9BC0000000;
  *(result + 17264) = _Q0;
  *(result + 17280) = _Q0;
  *(result + 17296) = _Q0;
  *(result + 17312) = _Q0;
  *(result + 8928) = 0x3FF0000000000000;
  *(result + 8936) = 0;
  *(result + 8944) = _Q0;
  *(result + 8960) = _Q0;
  *(result + 8976) = _Q0;
  *(result + 8992) = _Q0;
  *(result + 9008) = _Q0;
  *(result + 9024) = _Q0;
  *(result + 9040) = _Q0;
  *(result + 9056) = _Q0;
  *(result + 17024) = _Q0;
  *(result + 17065) = *v22;
  *(result + 17096) = 1050388079;
  *(result + 17040) = 0x3FF0000000000000;
  *(result + 17056) = 0xC017FFFFFFFFFFE8;
  *(result + 17064) = 1;
  *(result + 17068) = *&v22[3];
  *(result + 9072) = _Q0;
  *(result + 16944) = _Q0;
  *(result + 16960) = _Q0;
  *(result + 16984) = 0x3FF0000000000000;
  *(result + 16992) = _Q0;
  *(result + 17008) = _Q0;
  *(result + 16848) = _Q0;
  *(result + 16864) = _Q0;
  *(result + 16880) = _Q0;
  *(result + 16896) = _Q0;
  *(result + 16912) = _Q0;
  *(result + 16928) = _Q0;
  *(result + 16752) = _Q0;
  *(result + 16768) = _Q0;
  *(result + 16784) = _Q0;
  *(result + 16800) = _Q0;
  *(result + 16816) = _Q0;
  *(result + 16832) = _Q0;
  *(result + 16656) = _Q0;
  *(result + 16672) = _Q0;
  *(result + 16688) = _Q0;
  *(result + 16704) = _Q0;
  *(result + 16720) = _Q0;
  *(result + 16736) = _Q0;
  *(result + 16560) = _Q0;
  *(result + 16576) = _Q0;
  *(result + 16592) = _Q0;
  *(result + 16608) = _Q0;
  *(result + 16624) = _Q0;
  *(result + 16640) = _Q0;
  *(result + 16464) = _Q0;
  *(result + 16480) = _Q0;
  *(result + 16496) = _Q0;
  *(result + 16512) = _Q0;
  *(result + 16528) = _Q0;
  *(result + 16544) = _Q0;
  *(result + 16368) = _Q0;
  *(result + 0x4000) = _Q0;
  *(result + 16400) = _Q0;
  *(result + 16416) = _Q0;
  *(result + 16432) = _Q0;
  *(result + 16448) = _Q0;
  *(result + 16272) = _Q0;
  *(result + 16288) = _Q0;
  *(result + 16304) = _Q0;
  *(result + 16320) = _Q0;
  *(result + 16336) = _Q0;
  *(result + 16352) = _Q0;
  *(result + 9088) = _Q0;
  *(result + 9104) = _Q0;
  *(result + 16224) = 0;
  *(result + 16232) = 0;
  *(result + 16240) = _Q0;
  *(result + 16256) = _Q0;
  *(result + 9120) = _Q0;
  *(result + 9136) = _Q0;
  *(result + 9152) = _Q0;
  *(result + 9168) = _Q0;
  *(result + 16200) = 0x3FEE6AC340000000;
  *(result + 9184) = _Q0;
  *(result + 9200) = _Q0;
  *(result + 16048) = _Q0;
  *(result + 16064) = _Q0;
  *(result + 16096) = _Q0;
  *(result + 16112) = _Q0;
  *(result + 9216) = _Q0;
  *(result + 9232) = _Q0;
  *(result + 9248) = _Q0;
  *(result + 9264) = _Q0;
  *(result + 15984) = _Q0;
  *(result + 16016) = _Q0;
  *(result + 9280) = _Q0;
  *(result + 9296) = _Q0;
  *(result + 9312) = _Q0;
  *(result + 9328) = _Q0;
  *(result + 9344) = _Q0;
  *(result + 15849) = *v21;
  *(result + 15852) = *&v21[3];
  *(result + 15880) = 1061997773;
  *(result + 15776) = _Q0;
  *(result + 15792) = _Q0;
  *(result + 15808) = _Q0;
  *(result + 15824) = 0x3FF0000000000000;
  *(result + 15840) = 0;
  *(result + 15848) = 1;
  *(result + 9360) = _Q0;
  *(result + 15696) = _Q0;
  *(result + 15712) = _Q0;
  *(result + 15728) = _Q0;
  *(result + 15744) = _Q0;
  *(result + 15768) = 0x3FF0000000000000;
  *(result + 15600) = _Q0;
  *(result + 15616) = _Q0;
  *(result + 15632) = _Q0;
  *(result + 15648) = _Q0;
  *(result + 15664) = _Q0;
  *(result + 15680) = _Q0;
  *(result + 15504) = _Q0;
  *(result + 15520) = _Q0;
  *(result + 15536) = _Q0;
  *(result + 15552) = _Q0;
  *(result + 15568) = _Q0;
  *(result + 15584) = _Q0;
  *(result + 15408) = _Q0;
  *(result + 15424) = _Q0;
  *(result + 15440) = _Q0;
  *(result + 15456) = _Q0;
  *(result + 15472) = _Q0;
  *(result + 15488) = _Q0;
  *(result + 15312) = _Q0;
  *(result + 15328) = _Q0;
  *(result + 15344) = _Q0;
  *(result + 15360) = _Q0;
  *(result + 15376) = _Q0;
  *(result + 15392) = _Q0;
  *(result + 15216) = _Q0;
  *(result + 15232) = _Q0;
  *(result + 15248) = _Q0;
  *(result + 15264) = _Q0;
  *(result + 15280) = _Q0;
  *(result + 15296) = _Q0;
  *(result + 15120) = _Q0;
  *(result + 15136) = _Q0;
  *(result + 15152) = _Q0;
  *(result + 15168) = _Q0;
  *(result + 15184) = _Q0;
  *(result + 15200) = _Q0;
  *(result + 9376) = _Q0;
  *(result + 15040) = _Q0;
  *(result + 15056) = _Q0;
  *(result + 15072) = _Q0;
  *(result + 15088) = _Q0;
  *(result + 15104) = _Q0;
  *(result + 9392) = _Q0;
  *(result + 14984) = 0x3FEDEF5480000000;
  *(result + 15008) = 0x3FE0000000000000;
  *(result + 15016) = 0;
  *(result + 15024) = _Q0;
  *(result + 9408) = _Q0;
  *(result + 9424) = _Q0;
  *(result + 9440) = _Q0;
  *(result + 9456) = _Q0;
  *(result + 14880) = _Q0;
  *(result + 14896) = _Q0;
  *(result + 9472) = _Q0;
  *(result + 9488) = _Q0;
  *(result + 14784) = _Q0;
  *(result + 14800) = _Q0;
  *(result + 14832) = _Q0;
  *(result + 14848) = _Q0;
  *(result + 9504) = _Q0;
  *(result + 9520) = _Q0;
  *(result + 9536) = _Q0;
  *(result + 9552) = _Q0;
  *(result + 9568) = _Q0;
  *(result + 14768) = _Q0;
  *(result + 9584) = _Q0;
  *(result + 9600) = _Q0;
  *(result + 14624) = 0x4018000000000010;
  *(result + 14632) = 1;
  *(result + 14633) = *v20;
  *(result + 14636) = *&v20[3];
  *(result + 14664) = 1061158912;
  *(result + 9616) = _Q0;
  *(result + 14552) = 0x3FF0000000000000;
  *(result + 14560) = _Q0;
  *(result + 14576) = _Q0;
  *(result + 14592) = _Q0;
  *(result + 14608) = 0x3FF0000000000000;
  *(result + 14448) = _Q0;
  *(result + 14464) = _Q0;
  *(result + 14480) = _Q0;
  *(result + 14496) = _Q0;
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
  *(result + 9632) = _Q0;
  *(result + 13800) = 0;
  *(result + 13808) = _Q0;
  *(result + 13824) = _Q0;
  *(result + 13840) = _Q0;
  *(result + 13856) = _Q0;
  *(result + 9648) = _Q0;
  *(result + 9664) = _Q0;
  *(result + 9688) = 0x3FF0000000000000;
  *(result + 13768) = 0x3FED73E5C0000000;
  *(result + 13792) = 0x3FF0000000000000;
  *(result + 9696) = _Q0;
  *(result + 9712) = _Q0;
  *(result + 9728) = _Q0;
  *(result + 9744) = 0x3FF0000000000000;
  *(result + 13664) = _Q0;
  *(result + 13680) = _Q0;
  *(result + 9760) = 0x403DFFFFFFFFFFFELL;
  *(result + 9768) = 0;
  *(result + 13616) = _Q0;
  *(result + 13632) = _Q0;
  *(result + 13648) = _Q0;
  *(result + 9769) = *v16;
  *(result + 13552) = _Q0;
  *(result + 13584) = _Q0;
  *(result + 9772) = *&v16[3];
  *(result + 9800) = 1061997773;
  *(result + 9904) = _Q0;
  *(result + 9920) = _Q0;
  *(result + 9936) = _Q0;
  *(result + 9968) = _Q0;
  *(result + 9984) = _Q0;
  *(result + 13336) = 0x3FF0000000000000;
  *(result + 13416) = 1;
  *(result + 13417) = *v19;
  *(result + 13420) = *&v19[3];
  *(result + 13448) = 1060320051;
  *(result + 13344) = _Q0;
  *(result + 13360) = _Q0;
  *(result + 13376) = _Q0;
  *(result + 13392) = 0x3FF0000000000000;
  *(result + 13408) = 0x4028000000000010;
  *(result + 10000) = _Q0;
  *(result + 13248) = _Q0;
  *(result + 13264) = _Q0;
  *(result + 13280) = _Q0;
  *(result + 13296) = _Q0;
  *(result + 13312) = _Q0;
  *(result + 13152) = _Q0;
  *(result + 13168) = _Q0;
  *(result + 13184) = _Q0;
  *(result + 13200) = _Q0;
  *(result + 13216) = _Q0;
  *(result + 13232) = _Q0;
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
  *(result + 10016) = _Q0;
  *(result + 10032) = _Q0;
  *(result + 10080) = _Q0;
  *(result + 12512) = _Q0;
  *(result + 12552) = 0x3FEB9B9BC0000000;
  *(result + 12576) = 0x3FF0000000000000;
  *(result + 10120) = 0x3FEB9B9BC0000000;
  *(result + 12416) = _Q0;
  *(result + 12432) = _Q0;
  *(result + 12448) = _Q0;
  *(result + 12464) = _Q0;
  *(result + 12496) = _Q0;
  *(result + 10144) = 0x3FF0000000000000;
  *(result + 12320) = _Q0;
  *(result + 12336) = _Q0;
  *(result + 12352) = _Q0;
  *(result + 12368) = _Q0;
  *(result + 12400) = _Q0;
  *(result + 10152) = 0;
  *(result + 10160) = _Q0;
  *(result + 10176) = _Q0;
  *(result + 10192) = _Q0;
  *(result + 12288) = _Q0;
  *(result + 12304) = _Q0;
  *(result + 10208) = _Q0;
  *(result + 12201) = *v18;
  *(result + 12232) = 1061158912;
  *(result + 12160) = _Q0;
  *(result + 12176) = 0x3FF0000000000000;
  *(result + 12192) = 0x4032000000000000;
  *(result + 12200) = 1;
  *(result + 12204) = *&v18[3];
  *(result + 10224) = _Q0;
  *(result + 12080) = _Q0;
  *(result + 12096) = _Q0;
  *(result + 12120) = 0x3FF0000000000000;
  *(result + 12128) = _Q0;
  *(result + 12144) = _Q0;
  *(result + 11984) = _Q0;
  *(result + 12000) = _Q0;
  *(result + 12016) = _Q0;
  *(result + 12032) = _Q0;
  *(result + 12048) = _Q0;
  *(result + 12064) = _Q0;
  *(result + 11888) = _Q0;
  *(result + 11904) = _Q0;
  *(result + 11920) = _Q0;
  *(result + 11936) = _Q0;
  *(result + 11952) = _Q0;
  *(result + 11968) = _Q0;
  *(result + 11792) = _Q0;
  *(result + 11808) = _Q0;
  *(result + 11824) = _Q0;
  *(result + 11840) = _Q0;
  *(result + 11856) = _Q0;
  *(result + 11872) = _Q0;
  *(result + 11696) = _Q0;
  *(result + 11712) = _Q0;
  *(result + 11728) = _Q0;
  *(result + 11744) = _Q0;
  *(result + 11760) = _Q0;
  *(result + 11776) = _Q0;
  *(result + 11600) = _Q0;
  *(result + 11616) = _Q0;
  *(result + 11632) = _Q0;
  *(result + 11648) = _Q0;
  *(result + 11664) = _Q0;
  *(result + 11680) = _Q0;
  *(result + 11504) = _Q0;
  *(result + 11520) = _Q0;
  *(result + 11536) = _Q0;
  *(result + 11552) = _Q0;
  *(result + 11568) = _Q0;
  *(result + 11584) = _Q0;
  *(result + 11408) = _Q0;
  *(result + 11424) = _Q0;
  *(result + 11440) = _Q0;
  *(result + 11456) = _Q0;
  *(result + 11472) = _Q0;
  *(result + 11488) = _Q0;
  *(result + 10240) = _Q0;
  *(result + 11336) = 0x3FEB9B9BC0000000;
  *(result + 11360) = 0x3FF0000000000000;
  *(result + 11368) = 0;
  *(result + 11376) = _Q0;
  *(result + 11392) = _Q0;
  *(result + 10256) = _Q0;
  *(result + 10272) = _Q0;
  *(result + 10288) = _Q0;
  *(result + 10304) = _Q0;
  *(result + 10320) = _Q0;
  *(result + 11296) = _Q0;
  *(result + 10336) = _Q0;
  *(result + 11152) = _Q0;
  *(result + 11184) = _Q0;
  *(result + 11200) = _Q0;
  *(result + 11216) = _Q0;
  *(result + 11232) = _Q0;
  *(result + 10352) = _Q0;
  *(result + 10368) = _Q0;
  *(result + 10384) = _Q0;
  *(result + 10400) = _Q0;
  *(result + 11120) = _Q0;
  *(result + 11136) = _Q0;
  *(result + 10416) = _Q0;
  *(result + 10432) = _Q0;
  *(result + 10448) = _Q0;
  *(result + 10464) = _Q0;
  *(result + 10912) = _Q0;
  *(result + 10985) = *v17;
  *(result + 10988) = *&v17[3];
  *(result + 11016) = 1061997773;
  *(result + 10928) = _Q0;
  *(result + 10944) = _Q0;
  *(result + 10960) = 0x3FF0000000000000;
  *(result + 10976) = 0x403E000000000000;
  *(result + 10984) = 1;
  *(result + 10480) = _Q0;
  *(result + 10832) = _Q0;
  *(result + 10848) = _Q0;
  *(result + 10864) = _Q0;
  *(result + 10880) = _Q0;
  *(result + 10904) = 0x3FF0000000000000;
  *(result + 10736) = _Q0;
  *(result + 10752) = _Q0;
  *(result + 10768) = _Q0;
  *(result + 10784) = _Q0;
  *(result + 10800) = _Q0;
  *(result + 10816) = _Q0;
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
  *(result + 10496) = _Q0;
  *(result + 10512) = _Q0;
  *(result + 10528) = _Q0;
  *(result + 18112) = _Q0;
  *(result + 18128) = _Q0;
  *(result + 18144) = _Q0;
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
  *(result + 19312) = _Q0;
  *(result + 19328) = _Q0;
  *(result + 19344) = _Q0;
  *(result + 19360) = _Q0;
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
  *(result + 20528) = _Q0;
  *(result + 20544) = _Q0;
  *(result + 20560) = _Q0;
  *(result + 20576) = _Q0;
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
  *(result + 21744) = _Q0;
  *(result + 21760) = _Q0;
  *(result + 21776) = _Q0;
  *(result + 21792) = _Q0;
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
  *(result + 18281) = *v23;
  *(result + 18284) = *&v23[3];
  *(result + 18312) = 1036831948;
  *(result + 18632) = 0x3FF0000000000000;
  *(result + 18656) = 0;
  *(result + 18664) = 1065353216;
  *(result + 19416) = 0x3FF0000000000000;
  *(result + 19472) = 0x3FF0000000000000;
  *(result + 19488) = 0xC04E000000000002;
  *(result + 19496) = 1;
  *(result + 19497) = *v24;
  *(result + 19500) = *&v24[3];
  *(result + 19528) = 1040242952;
  *(result + 19848) = 0x3FF0000000000000;
  *(result + 19872) = 0;
  *(result + 19880) = 1065353216;
  *(result + 20632) = 0x3FF0000000000000;
  *(result + 20688) = 0x3FF0000000000000;
  *(result + 20704) = 0xC056800000000000;
  *(result + 20712) = 1;
  *(result + 20713) = *v25;
  *(result + 20716) = *&v25[3];
  *(result + 20744) = 1040242952;
  *(result + 21064) = 0x3FF0000000000000;
  *(result + 21088) = 0;
  *(result + 21096) = 1065353216;
  *(result + 21848) = 0x3FF0000000000000;
  *(result + 21904) = 0x3FF0000000000000;
  return result;
}

void sub_1BCA2EBB4()
{
  OUTLINED_FUNCTION_20_0();
  v48 = v3;
  type metadata accessor for WindComplicationHourlyViewModel();
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6();
  sub_1BCE19060();
  OUTLINED_FUNCTION_7_13();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D08);
  v9 = OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_19_3(v9, xmmword_1BCE3E050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07B60);
  v10 = OUTLINED_FUNCTION_2_9();
  v47 = v11;
  __swift_storeEnumTagSinglePayload(v10, v12, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v14 = OUTLINED_FUNCTION_2_9();
  v46 = v15;
  __swift_storeEnumTagSinglePayload(v14, v16, v17, v15);
  v18 = OUTLINED_FUNCTION_3_11(v0[9]);
  v19(v18);
  v20 = v0[10];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v21 + 16))(v2 + v20, v48);
  sub_1BCE19080();
  *(v2 + v0[6]) = 16;
  *(v2 + v0[8]) = 1;
  v22 = (v6 + 8);
  v23 = *(v6 + 8);
  v24 = OUTLINED_FUNCTION_27_1();
  v23(v24);
  sub_1BCE197B0();
  v25 = OUTLINED_FUNCTION_24_0();
  sub_1BCD86020(v25, v26, v27);
  v29 = v28;
  v30 = OUTLINED_FUNCTION_27_1();
  v23(v30);
  if (*(v29 + 16))
  {
    OUTLINED_FUNCTION_13_5();
    do
    {
      v31 = OUTLINED_FUNCTION_12_8();
      v22(v31);
      v32 = OUTLINED_FUNCTION_4_10(v0[5]);
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v47);
      v35 = OUTLINED_FUNCTION_4_10(v0[7]);
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v46);
      v38 = OUTLINED_FUNCTION_25_1(v0[9]);
      v22(v38);
      v39 = OUTLINED_FUNCTION_18_4(v0[10]);
      v40(v39);
      sub_1BCE19080();
      v41 = OUTLINED_FUNCTION_22_1();
      v42(v41);
      *(v1 + v0[6]) = 16;
      OUTLINED_FUNCTION_16_7(v0[8]);
      if (v43)
      {
        OUTLINED_FUNCTION_26_0();
        sub_1BCB652EC();
      }

      OUTLINED_FUNCTION_14_3();
      sub_1BCA30220(v1, v44, type metadata accessor for WindComplicationHourlyViewModel);
      OUTLINED_FUNCTION_21_2();
    }

    while (!v45);
  }

  OUTLINED_FUNCTION_21();
}

void sub_1BCA2EEE4()
{
  OUTLINED_FUNCTION_20_0();
  v49 = v5;
  type metadata accessor for ConditionsComplicationHourlyViewModel();
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6();
  sub_1BCE19060();
  OUTLINED_FUNCTION_7_13();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D10);
  v11 = OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_19_3(v11, xmmword_1BCE3E050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v12 = OUTLINED_FUNCTION_2_9();
  v48 = v13;
  __swift_storeEnumTagSinglePayload(v12, v14, v15, v13);
  sub_1BCE199D0();
  v16 = OUTLINED_FUNCTION_2_9();
  v47 = v17;
  __swift_storeEnumTagSinglePayload(v16, v18, v19, v17);
  v20 = OUTLINED_FUNCTION_3_11(v0[9]);
  v21(v20);
  v22 = v0[10];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v23 + 16))(v4 + v22, v49);
  sub_1BCE19080();
  *(v4 + v0[7]) = 1;
  *(v4 + v0[8]) = 1;
  v24 = *(v8 + 8);
  v25 = v3;
  v26 = OUTLINED_FUNCTION_27_1();
  v24(v26);
  sub_1BCE197B0();
  v27 = OUTLINED_FUNCTION_24_0();
  sub_1BCD86020(v27, v28, v29);
  v31 = v30;
  (v24)(v25, v2);
  if (*(v31 + 16))
  {
    OUTLINED_FUNCTION_13_5();
    do
    {
      v32 = OUTLINED_FUNCTION_12_8();
      v25(v32);
      v33 = OUTLINED_FUNCTION_4_10(v0[5]);
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v48);
      v36 = OUTLINED_FUNCTION_4_10(v0[6]);
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v47);
      v39 = OUTLINED_FUNCTION_25_1(v0[9]);
      v25(v39);
      v40 = OUTLINED_FUNCTION_18_4(v0[10]);
      v41(v40);
      sub_1BCE19080();
      v42 = OUTLINED_FUNCTION_22_1();
      v43(v42);
      *(v1 + v0[7]) = 1;
      OUTLINED_FUNCTION_16_7(v0[8]);
      if (v44)
      {
        OUTLINED_FUNCTION_26_0();
        sub_1BCB65564();
      }

      OUTLINED_FUNCTION_14_3();
      sub_1BCA30220(v1, v45, type metadata accessor for ConditionsComplicationHourlyViewModel);
      OUTLINED_FUNCTION_21_2();
    }

    while (!v46);
  }

  OUTLINED_FUNCTION_21();
}

void sub_1BCA2F20C()
{
  OUTLINED_FUNCTION_20_0();
  v51 = v3;
  type metadata accessor for PrecipitationComplicationHourlyViewModel();
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_6();
  sub_1BCE19060();
  OUTLINED_FUNCTION_7_13();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D00);
  v9 = OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_19_3(v9, xmmword_1BCE3E050);
  sub_1BCE19BA0();
  v10 = OUTLINED_FUNCTION_2_9();
  v50 = v11;
  __swift_storeEnumTagSinglePayload(v10, v12, v13, v11);
  sub_1BCE199D0();
  v14 = OUTLINED_FUNCTION_2_9();
  v49 = v15;
  __swift_storeEnumTagSinglePayload(v14, v16, v17, v15);
  v18 = OUTLINED_FUNCTION_3_11(v0[10]);
  v19(v18);
  v20 = v0[11];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v21 + 16))(v2 + v20, v51);
  sub_1BCE19080();
  OUTLINED_FUNCTION_35_2(v2 + v0[6]);
  *(v2 + v22) = v23;
  *(v2 + v0[9]) = 1;
  v24 = *(v6 + 8);
  v25 = OUTLINED_FUNCTION_27_1();
  v24(v25);
  sub_1BCE197B0();
  v26 = OUTLINED_FUNCTION_24_0();
  sub_1BCD86020(v26, v27, v28);
  v30 = v29;
  v31 = OUTLINED_FUNCTION_27_1();
  v24(v31);
  if (*(v30 + 16))
  {
    OUTLINED_FUNCTION_13_5();
    do
    {
      v32 = OUTLINED_FUNCTION_12_8();
      (v30)(v32);
      v33 = OUTLINED_FUNCTION_4_10(v0[5]);
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v50);
      v36 = OUTLINED_FUNCTION_4_10(v0[7]);
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v49);
      v39 = OUTLINED_FUNCTION_25_1(v0[10]);
      (v30)(v39);
      v40 = OUTLINED_FUNCTION_18_4(v0[11]);
      v41(v40);
      sub_1BCE19080();
      v42 = OUTLINED_FUNCTION_22_1();
      v43(v42);
      OUTLINED_FUNCTION_35_2(v1 + v0[6]);
      *(v1 + v44) = v45;
      OUTLINED_FUNCTION_16_7(v0[9]);
      if (v46)
      {
        OUTLINED_FUNCTION_26_0();
        sub_1BCB65DD8();
      }

      OUTLINED_FUNCTION_14_3();
      sub_1BCA30220(v1, v47, type metadata accessor for PrecipitationComplicationHourlyViewModel);
      OUTLINED_FUNCTION_21_2();
    }

    while (!v48);
  }

  OUTLINED_FUNCTION_21();
}

uint64_t ConditionsComplicationViewModel.locationName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ConditionsComplicationViewModel.timeZone.getter()
{
  OUTLINED_FUNCTION_28_0();
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t type metadata accessor for ConditionsComplicationViewModel()
{
  result = qword_1EBD07CE8;
  if (!qword_1EBD07CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConditionsComplicationViewModel.gradientModel.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28_0() + 32);

  return sub_1BCA2F678(v2, v0);
}

uint64_t sub_1BCA2F678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionGradientModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConditionsComplicationViewModel.condition.getter()
{
  OUTLINED_FUNCTION_28_0();
  sub_1BCE199D0();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t ConditionsComplicationViewModel.temperature.getter()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t ConditionsComplicationViewModel.maxTemperature.getter()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t ConditionsComplicationViewModel.minTemperature.getter()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t ConditionsComplicationViewModel.hourly.getter()
{
  type metadata accessor for ConditionsComplicationViewModel();
}

void ConditionsComplicationViewModel.init(localWeather:timeZone:isDaytime:gradientModel:condition:temperature:maxTemperature:minTemperature:hourly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_20_0();
  v73 = v22;
  v74 = v21;
  v75 = v24;
  v76 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v71 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v69 - v36;
  v38 = type metadata accessor for WeatherConditionGradientModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  v42 = v41 - v40;
  *v34 = v32;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0xE000000000000000;
  v43 = type metadata accessor for ConditionsComplicationViewModel();
  sub_1BCE19470();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  v46 = OUTLINED_FUNCTION_32_0();
  v72 = v30;
  v69 = v47;
  v48(v46, v30);
  *(v34 + *(v43 + 28)) = v28;
  v70 = v26;
  sub_1BCA2FC44(v26, v37);
  OUTLINED_FUNCTION_20(v37);
  if (v49)
  {
    if (qword_1EDA1B380 != -1)
    {
      OUTLINED_FUNCTION_15_0();
    }

    v50 = __swift_project_value_buffer(v38, qword_1EDA1B388);
    sub_1BCA2F678(v50, v42);
    OUTLINED_FUNCTION_20(v37);
    if (!v49)
    {
      sub_1BCA30000(v37);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1BCA30220(v37, v42, v51);
  }

  OUTLINED_FUNCTION_0_14();
  sub_1BCA30220(v42, v34 + v52, v53);
  v54 = sub_1BCE199D0();
  OUTLINED_FUNCTION_1();
  v56 = v55;
  v57 = OUTLINED_FUNCTION_32_0();
  v58(v57, v76, v54);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_1();
  v61 = v60;
  v62 = OUTLINED_FUNCTION_34();
  v26(v62);
  v63 = OUTLINED_FUNCTION_33();
  v26(v63);
  v64 = OUTLINED_FUNCTION_31_0();
  v26(v64);
  v65 = v71;
  v66 = v72;
  if (!v71)
  {
    sub_1BCA2EEE4();
    v65 = v67;
  }

  v68 = *(v61 + 8);
  v68(v73, v59);
  v68(v74, v59);
  v68(v75, v59);
  (*(v56 + 8))(v76, v54);
  sub_1BCA30000(v70);
  (*(v45 + 8))(v66, v69);
  *(v34 + *(v43 + 52)) = v65;
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCA2FC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ConditionsComplicationViewModel.init(localWeather:locationName:timeZone:isDaytime:gradientModel:condition:temperature:maxTemperature:minTemperature:hourly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_0();
  v73 = v25;
  v74 = v24;
  v27 = v26;
  v71 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  MEMORY[0x1EEE9AC00](v39 - 8);
  OUTLINED_FUNCTION_5_6();
  v40 = type metadata accessor for WeatherConditionGradientModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_0();
  v44 = v43 - v42;
  *v38 = v36;
  *(v38 + 8) = v34;
  *(v38 + 16) = v32;
  v45 = type metadata accessor for ConditionsComplicationViewModel();
  sub_1BCE19470();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  v48 = OUTLINED_FUNCTION_32_0();
  v72 = v30;
  v70 = v49;
  v50(v48, v30);
  *(v38 + *(v45 + 28)) = v71;
  sub_1BCA2FC44(v27, v23);
  OUTLINED_FUNCTION_20(v23);
  if (v51)
  {
    if (qword_1EDA1B380 != -1)
    {
      OUTLINED_FUNCTION_15_0();
    }

    v52 = __swift_project_value_buffer(v40, qword_1EDA1B388);
    sub_1BCA2F678(v52, v44);
    OUTLINED_FUNCTION_20(v23);
    if (!v51)
    {
      sub_1BCA30000(v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1BCA30220(v23, v44, v53);
  }

  OUTLINED_FUNCTION_0_14();
  sub_1BCA30220(v44, v38 + v54, v55);
  v56 = sub_1BCE199D0();
  OUTLINED_FUNCTION_1();
  v58 = v57;
  v59 = OUTLINED_FUNCTION_32_0();
  v60(v59, v74, v56);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_1();
  v63 = v62;
  v64 = OUTLINED_FUNCTION_34();
  v34(v64);
  v65 = OUTLINED_FUNCTION_33();
  v34(v65);
  v66 = OUTLINED_FUNCTION_31_0();
  v34(v66);
  v67 = a23;
  if (!a23)
  {
    sub_1BCA2EEE4();
    v67 = v68;
  }

  v69 = *(v63 + 8);
  v69(a22, v61);
  v69(a21, v61);
  v69(v73, v61);
  (*(v58 + 8))(v74, v56);
  sub_1BCA30000(v27);
  (*(v47 + 8))(v72, v70);
  *(v38 + *(v45 + 52)) = v67;
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCA30000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BCA30090()
{
  sub_1BCE19470();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherConditionGradientModel();
    if (v1 <= 0x3F)
    {
      sub_1BCE199D0();
      if (v2 <= 0x3F)
      {
        sub_1BC9AA9A0(319, &qword_1EDA1BF90, sub_1BCA301DC, MEMORY[0x1E6968070]);
        if (v3 <= 0x3F)
        {
          sub_1BC9AA9A0(319, &qword_1EBD07CF8, type metadata accessor for ConditionsComplicationHourlyViewModel, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1BCA301DC()
{
  result = qword_1EDA1EFC0[0];
  if (!qword_1EDA1EFC0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDA1EFC0);
  }

  return result;
}

uint64_t sub_1BCA30220(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BCA30280()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BCE1B460();
}

void sub_1BCA302F0(char a1)
{
  OUTLINED_FUNCTION_5_8();
  *(v1 + 28) = a1;
  sub_1BC971130();
}

void sub_1BCA30324()
{
  OUTLINED_FUNCTION_5_8();
  *(v0 + 29) = (*(v0 + 28) & 1) == 0;
  *(v0 + 28) = 1;
  sub_1BC971130();
}

uint64_t sub_1BCA30364(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_1BCE1D050();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = (v17 - v16);
  sub_1BC947608(0, &qword_1EDA1C128);
  *v18 = sub_1BCE1D9B0();
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v12);
  v19 = sub_1BCE1D070();
  v21 = *(v14 + 8);
  v20 = (v14 + 8);
  v21(v18, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = OUTLINED_FUNCTION_12();
  if (*(v6 + 28) != 1 || (result = sub_1BC960DC8(), (result & 1) == 0))
  {
    v27 = (a1 + OBJC_IVAR____TtC9WeatherUI24ForegroundEffectRenderer_frameInContainer);
    *v27 = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = a5;
    v18 = (v27 + 4);
    goto LABEL_12;
  }

  v20 = (a1 + OBJC_IVAR____TtC9WeatherUI24ForegroundEffectRenderer_frameInContainer);
  v18 = (a1 + OBJC_IVAR____TtC9WeatherUI24ForegroundEffectRenderer_frameInContainer + 32);
  if ((*v18 & 1) != 0 || (v28.origin.x = a2, v28.origin.y = a3, v28.size.width = a4, v28.size.height = a5, result = CGRectEqualToRect(v28, *v20), (result & 1) == 0))
  {
    if (qword_1EDA1BC90 == -1)
    {
LABEL_7:
      v23 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v23, qword_1EDA1BC98);
      v24 = sub_1BCE1ACA0();
      v25 = sub_1BCE1D8D0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1BC940000, v24, v25, "Disabling all rendering due to frameInContainer change while frozen", v26, 2u);
        MEMORY[0x1BFB31B10](v26, -1, -1);
      }

      result = sub_1BCA30280();
      goto LABEL_10;
    }

LABEL_14:
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

LABEL_10:
  v20->origin.x = a2;
  v20->origin.y = a3;
  v20->size.width = a4;
  v20->size.height = a5;
LABEL_12:
  *v18 = 0;
  return result;
}

void sub_1BCA305D8()
{
  swift_beginAccess();
  if ((*(v0 + 28) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink);
    if (v1)
    {
      swift_beginAccess();
      v2 = v1;

      v4 = sub_1BC971464(v3);

      [v2 setPaused_];
    }
  }
}

id sub_1BCA30680@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 newCommandQueue];
  *a2 = result;
  return result;
}

id sub_1BCA306B4(uint64_t a1, float a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69745C0]);
  *&v5 = a2;
  v6 = [v4 initWithDevice:a1 sigma:v5];
  [v6 setEdgeMode_];
  return v6;
}

id sub_1BCA30718@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1BCA306B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1BCA3074C()
{
  v1 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink;
  v2 = *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink);
  if (v2)
  {
    [v2 invalidate];
  }

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_commandQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D40);
  OUTLINED_FUNCTION_0_4();
  (*(v4 + 8))(v0 + v3);

  v5 = *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_context + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_blur;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D50);
  OUTLINED_FUNCTION_0_4();
  (*(v7 + 8))(v0 + v6);

  v8 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator__isAbleToRender;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D58);
  OUTLINED_FUNCTION_0_4();
  (*(v9 + 8))(v0 + v8);
  return v0;
}

uint64_t sub_1BCA308F0()
{
  sub_1BCA3074C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BCA30950()
{
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_8_5();

  sub_1BCBE9418(&v2, v0);
  swift_endAccess();

  sub_1BCA305D8();
  return sub_1BCE1A790();
}

uint64_t sub_1BCA309C8()
{
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_8_5();
  sub_1BCA32464(v0);
  swift_endAccess();

  sub_1BCA305D8();
  return sub_1BCE1A790();
}

void sub_1BCA30A34(void *a1, void *a2, double a3, double a4, double a5)
{
  v6 = v5;
  if (qword_1EDA18AE0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_6_9();
  if (v12)
  {
    sub_1BCE1A780();
    OUTLINED_FUNCTION_12();

    v14 = sub_1BC971464(v13);

    if (!v14)
    {
      v15 = [a1 device];
      *(v5 + 48) = v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v5 + 56) = a3;
      *(v5 + 64) = a4;
      *(v5 + 72) = a5;
      *(v5 + 80) = 0;
      v16 = *(v5 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundTextureDescriptor);
      [v16 setWidth_];
      [v16 setHeight_];
      v17 = *(v6 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundBlurTextureDescriptor);
      [v17 setWidth_];
      [v17 setHeight_];
      OUTLINED_FUNCTION_8_5();
      v18 = sub_1BCA30EA8(v15);
      swift_endAccess();
      if (v18)
      {
        OUTLINED_FUNCTION_8_5();
        v19 = sub_1BCA30EA8(v15);
        swift_endAccess();
        if (v19)
        {
          v20 = [a1 blitCommandEncoder];
          if (v20)
          {
            v21 = v20;
            [v20 copyFromTexture:a2 toTexture:v18];
            [v21 endEncoding];
            v30[6] = v15;
            v31 = 1109393408;
            OUTLINED_FUNCTION_8_5();
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D50);
            sub_1BCE1A2E0();
            swift_endAccess();
            swift_unknownObjectRelease();
            v22 = v32;
            [v32 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:v19];
            OUTLINED_FUNCTION_9_9();
            v23 = swift_allocObject();
            swift_weakInit();
            v24 = swift_allocObject();
            *(v24 + 16) = v23;
            *(v24 + 24) = a3;
            *(v24 + 32) = a4;
            *(v24 + 40) = a5;
            v30[4] = sub_1BCA32854;
            v30[5] = v24;
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 1107296256;
            v30[2] = sub_1BCDBAC58;
            v30[3] = &block_descriptor_27;
            v25 = _Block_copy(v30);

            [a1 addCompletedHandler_];
            _Block_release(v25);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_17;
          }

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      if (qword_1EDA1BC90 != -1)
      {
        OUTLINED_FUNCTION_3_12();
      }

      v26 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v26, qword_1EDA1BC98);
      v27 = sub_1BCE1ACA0();
      v28 = sub_1BCE1D8B0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1BC940000, v27, v28, "Skipping copy/blur of VFX texture due to nil destination textures or blit encoder.", v29, 2u);
        MEMORY[0x1BFB31B10](v29, -1, -1);
      }

      swift_unknownObjectRelease();
    }

LABEL_17:
    sub_1BCE1A790();
  }
}

id sub_1BCA30EA8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (*v1)
  {
    v5 = [swift_unknownObjectRetain() width];
    v6 = *(v1 + 16);
    if (v5 == [*(v2 + 16) width])
    {
      v7 = [v4 height];
      if (v7 == [v6 height])
      {
        return v4;
      }
    }

    swift_unknownObjectRelease();
  }

  v8 = *(v2 + 16);
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = [v8 pixelFormat];
  if (qword_1EDA1BC90 != -1)
  {
    swift_once();
  }

  v12 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v12, qword_1EDA1BC98);
  v13 = sub_1BCE1ACA0();
  v14 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v13, v14))
  {
    v23 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 134218498;
    *(v15 + 4) = v9;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v10;
    *(v15 + 22) = 2080;
    v17 = MEMORY[0x1BFB30020](v11);
    v19 = sub_1BC98FE38(v17, v18, &v24);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_1BC940000, v13, v14, "Making a new scratch pad texture: width=%ld height=%ld pixelFormat=%s", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB31B10](v16, -1, -1);
    v20 = v15;
    a1 = v23;
    MEMORY[0x1BFB31B10](v20, -1, -1);
  }

  v21 = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v2 = v21;
  return v21;
}

uint64_t sub_1BCA310F0(double a1, double a2, double a3)
{
  v6 = sub_1BCE1CFF0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BCE1D020();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;

    sub_1BCE1A780();

    v16 = v15 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_context;
    swift_beginAccess();
    *v16 = vextq_s8(*v16, *v16, 8uLL);
    *(v16 + 24) = vextq_s8(*(v16 + 24), *(v16 + 24), 8uLL);
    *(v16 + 48) = a1;
    *(v16 + 56) = a2;
    *(v16 + 64) = a3;
    *(v16 + 72) = 0;
    sub_1BC947608(0, &qword_1EDA1C128);
    v22 = sub_1BCE1D9B0();
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BCA32864;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC97FFC4;
    aBlock[3] = &block_descriptor_31;
    v21 = _Block_copy(aBlock);

    sub_1BCE1D000();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BC95C6F8(&qword_1EDA1E910, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D38);
    v20 = v10;
    sub_1BC94DD84(&qword_1EDA1C240, &qword_1EBD07D38);
    sub_1BCE1DC30();
    v19 = v21;
    v18 = v22;
    MEMORY[0x1BFB30100](0, v13, v9, v21);
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v20);
    sub_1BCE1A790();
  }

  return result;
}

uint64_t sub_1BCA31480()
{
  v1 = v0;
  v2 = sub_1BCE1D050();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC947608(0, &qword_1EDA1C128);
  *v5 = sub_1BCE1D9B0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1BCE1D070();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1BCE1A780();
    v9 = 0;
    if (*(v1 + 48))
    {
      v8 = v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_context;
      swift_beginAccess();
      if (*(v8 + 8))
      {
        if (*(v8 + 32) && (*(v1 + 80) & 1) == 0 && *(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink))
        {
          v9 = 1;
        }
      }
    }

    sub_1BCE1A790();
    result = sub_1BC960DC8();
    if ((v9 ^ result))
    {
      return sub_1BCA30280();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BCA3162C()
{
  v1 = sub_1BCE1CFF0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BCE1D020();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA18AE0 != -1)
  {
    swift_once();
  }

  if (byte_1EDA18AF0 == 1)
  {
    v12[1] = *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_renderQueue);
    v9 = swift_allocObject();
    v12[0] = v2;
    v13 = v5;
    v10 = v9;
    swift_weakInit();
    aBlock[4] = sub_1BCA32258;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC97FFC4;
    aBlock[3] = &block_descriptor_20;
    v11 = _Block_copy(aBlock);

    sub_1BCE1D000();
    v14 = MEMORY[0x1E69E7CC0];
    sub_1BC95C6F8(&qword_1EDA1E910, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D38);
    sub_1BC94DD84(&qword_1EDA1C240, &qword_1EBD07D38);
    sub_1BCE1DC30();
    MEMORY[0x1BFB30100](0, v8, v4, v11);
    _Block_release(v11);
    (*(v12[0] + 8))(v4, v1);
    (*(v6 + 8))(v8, v13);
  }
}

uint64_t sub_1BCA31950(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_12();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_1BCA319A8()
{
  v1 = v0;
  if (qword_1EDA18AE0 != -1)
  {
    swift_once();
  }

  if (byte_1EDA18AF0 != 1)
  {
    return;
  }

  sub_1BCE1A780();
  swift_beginAccess();

  v3 = sub_1BC971464(v2);

  if (v3)
  {
    goto LABEL_26;
  }

  v4 = *(v0 + 16);
  if (v4 == 4)
  {
    goto LABEL_26;
  }

  if (!*(v0 + 48))
  {
    goto LABEL_26;
  }

  if (*(v0 + 80))
  {
    goto LABEL_26;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink);
  if (!v5)
  {
    goto LABEL_26;
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_context;
  swift_beginAccess();
  if (!*(v9 + 8) || !*(v9 + 32))
  {
    v17 = qword_1EDA1BC90;
    v1 = v5;
    swift_unknownObjectRetain();
    if (v17 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = v5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D40);
  sub_1BCE1A2E0();
  swift_endAccess();
  if (!v38[0])
  {
LABEL_20:
    if (qword_1EDA1BC90 != -1)
    {
      swift_once();
    }

    v22 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v22, qword_1EDA1BC98);
    v23 = sub_1BCE1ACA0();
    v24 = sub_1BCE1D8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BC940000, v23, v24, "Coordinator short circuiting render due to nil command queue/buffer.", v25, 2u);
      MEMORY[0x1BFB31B10](v25, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v37 = [v38[0] commandBuffer];
  if (!v37)
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v35 = v10;
  v11 = *(v1 + 4);
  if ((v11 & 0xC000000000000001) != 0)
  {

    sub_1BCE1DC70();
    type metadata accessor for ForegroundEffectRenderer();
    sub_1BC95C6F8(&qword_1EBD07D48, type metadata accessor for ForegroundEffectRenderer);
    sub_1BCE1D6C0();
    v12 = v38[7];
    v13 = v38[8];
    v14 = v38[9];
    v15 = v38[10];
    v16 = v38[11];
  }

  else
  {
    v26 = -1 << *(v11 + 32);
    v13 = (v11 + 56);
    v14 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v16 = (v28 & *(v11 + 56));

    v15 = 0;
  }

  v29 = (v14 + 64) >> 6;
  for (i = v12; ; v12 = i)
  {
    if (v12 < 0)
    {
      if (!sub_1BCE1DCA0())
      {
        goto LABEL_43;
      }

      type metadata accessor for ForegroundEffectRenderer();
      swift_dynamicCast();
      v33 = v38[0];
      v32 = v16;
      goto LABEL_41;
    }

    v30 = v15;
    v31 = v16;
    if (!v16)
    {
      break;
    }

LABEL_38:
    v32 = (v31 - 1) & v31;
    v33 = *(*(v12 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v31)))));

LABEL_41:
    if (!v33)
    {
LABEL_43:
      sub_1BC947914();
      [v37 commit];
      v34 = [v35 actualFramesPerSecond];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1BCA31F74(v34, flt_1BCE42840[v4]);
      goto LABEL_26;
    }

    LOBYTE(v38[0]) = v4;
    sub_1BCDBACB8(v38, v37, v8, v7, v6, *(v1 + 5));

    v16 = v32;
  }

  while (1)
  {
    v15 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v15 >= v29)
    {
      goto LABEL_43;
    }

    v31 = v13[v15];
    ++v30;
    if (v31)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_16:
  v18 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v18, qword_1EDA1BC98);
  v19 = sub_1BCE1ACA0();
  v20 = sub_1BCE1D8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BC940000, v19, v20, "Coordinator short circuiting render due to nil texture.", v21, 2u);
    MEMORY[0x1BFB31B10](v21, -1, -1);
  }

LABEL_25:
  swift_unknownObjectRelease();
LABEL_26:
  sub_1BCE1A790();
}

uint64_t sub_1BCA31F74(uint64_t result, float a2)
{
  if (result >= 1)
  {
    v4 = 1.0 / result;
    result = swift_beginAccess();
    *(v2 + 20) = *(v2 + 20) + ((v4 * *(v2 + 24)) * a2);
  }

  return result;
}

uint64_t sub_1BCA31FD8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BCA3162C();
  }

  return result;
}

uint64_t sub_1BCA32064()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BCA320A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1BCA320E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BCA32138(float a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void (*sub_1BCA321D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BCA32224;
}

void sub_1BCA32224(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BC971130();
  }
}

uint64_t sub_1BCA3228C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D80);
    v2 = sub_1BCE1DCF0();
    v14 = v2;
    sub_1BCE1DC70();
    while (1)
    {
      if (!sub_1BCE1DCA0())
      {

        return v2;
      }

      type metadata accessor for ForegroundEffectRenderer();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1BCBE9B7C();
      }

      v2 = v14;
      sub_1BCE1E100();
      MEMORY[0x1BFB30850]();
      result = sub_1BCE1E150();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1BCA32464(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1BCE1E100();
    MEMORY[0x1BFB30850](a1);
    v7 = sub_1BCE1E150();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == a1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BCBEABC0();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1BCA32698(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1BCE1DCB0();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1BCA325B8(v4, a1);

  return v6;
}

unint64_t sub_1BCA325B8(uint64_t a1, uint64_t a2)
{

  v4 = sub_1BCE1DC80();
  v5 = swift_unknownObjectRetain();
  v9 = sub_1BCA3228C(v5, v4);
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](a2);
  for (i = sub_1BCE1E150(); ; i = result + 1)
  {
    result = i & ~(-1 << *(v9 + 32));
    if (((*(v9 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      break;
    }

    v8 = *(*(v9 + 48) + 8 * result);
    if (v8 == a2)
    {
      sub_1BCA32698(result);
      *v2 = v9;
      return v8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BCA32698(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BCE1DC50();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1BCE1E100();
        MEMORY[0x1BFB30850](v10);
        v11 = sub_1BCE1E150() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1BCA328BC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA33084();
  v4 = v3;
  sub_1BCA33084();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE42AE0;
  *(a1 + 112) = 0x3E99999A3E6B851FLL;
  *(a1 + 128) = xmmword_1BCE42AF0;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE42B00;
  *(a1 + 176) = 1161527296;
  *(a1 + 184) = 0x3E3851EB3E051EB8;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE42B10;
  *(a1 + 224) = xmmword_1BCE42B20;
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
  *(a1 + 712) = 0x3FE666673F666667;
  *(a1 + 720) = 0x4181999A41580000;
  *(a1 + 728) = 1100009060;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A3F99999ALL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE7A1D0;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE7A1F0;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3FC000003F19999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1099222949;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
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
  *(a1 + 1216) = xmmword_1BCE42B30;
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
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1636) = 0;
  *(a1 + 1630) = 0;
  *(v2 + 208) = 0x101000101010001;
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
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x3FE666663F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 20;
  *(a1 + 2208) = 0x41A000003F800000;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE42B40;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCA33084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F6C0;
  *(v0 + 64) = 0x4120000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE3F6D0;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 2224) = xmmword_1BCE42C10;
  *(v0 + 2256) = xmmword_1BCE42C20;
  *(v0 + 2944) = xmmword_1BCE42C60;
  *(v0 + 2960) = xmmword_1BCE42C70;
  *(v0 + 2976) = xmmword_1BCE42C80;
  *(v0 + 3040) = xmmword_1BCE42CB0;
  *(v0 + 3440) = xmmword_1BCE42CC0;
  *(v0 + 3472) = xmmword_1BCE42CC0;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 4928) = 1149861888;
  *(v0 + 6144) = 1149861888;
  *(v0 + 4944) = xmmword_1BCE42DB0;
  *(v0 + 6160) = xmmword_1BCE42DB0;
  *(v0 + 4976) = xmmword_1BCE42DC0;
  *(v0 + 6192) = xmmword_1BCE42DC0;
  *(v0 + 4992) = xmmword_1BCE42DD0;
  *(v0 + 6208) = xmmword_1BCE42DD0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5040) = xmmword_1BCE42DE0;
  *(v0 + 6256) = xmmword_1BCE42DE0;
  *(v0 + 5056) = xmmword_1BCE42DF0;
  *(v0 + 6272) = xmmword_1BCE42DF0;
  *(v0 + 5104) = xmmword_1BCE42E00;
  *(v0 + 6320) = xmmword_1BCE42E00;
  *(v0 + 5120) = xmmword_1BCE42E10;
  *(v0 + 6336) = xmmword_1BCE42E10;
  *(v0 + 5168) = xmmword_1BCE42E20;
  *(v0 + 6384) = xmmword_1BCE42E20;
  *(v0 + 5184) = xmmword_1BCE42E30;
  *(v0 + 6400) = xmmword_1BCE42E30;
  *(v0 + 5200) = xmmword_1BCE401B0;
  *(v0 + 6416) = xmmword_1BCE401B0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE42E40;
  *(v0 + 6576) = xmmword_1BCE42E40;
  *(v0 + 5376) = xmmword_1BCE42E50;
  *(v0 + 6592) = xmmword_1BCE42E50;
  *(v0 + 5392) = xmmword_1BCE42E60;
  *(v0 + 6608) = xmmword_1BCE42E60;
  *(v0 + 5408) = xmmword_1BCE42E70;
  *(v0 + 6624) = xmmword_1BCE42E70;
  *(v0 + 5424) = xmmword_1BCE42E80;
  *(v0 + 6640) = xmmword_1BCE42E80;
  *(v0 + 5440) = xmmword_1BCE42E90;
  *(v0 + 6656) = xmmword_1BCE42E90;
  *(v0 + 5456) = xmmword_1BCE42EA0;
  *(v0 + 6672) = xmmword_1BCE42EA0;
  *(v0 + 5472) = xmmword_1BCE42EB0;
  *(v0 + 6688) = xmmword_1BCE42EB0;
  *(v0 + 5872) = xmmword_1BCE42EC0;
  *(v0 + 7088) = xmmword_1BCE42EC0;
  *(v0 + 5888) = xmmword_1BCE42ED0;
  *(v0 + 7104) = xmmword_1BCE42ED0;
  *(v0 + 5904) = xmmword_1BCE42EE0;
  *(v0 + 7120) = xmmword_1BCE42EE0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3824) = xmmword_1BCE42CD0;
  *(v0 + 7472) = xmmword_1BCE42CD0;
  *(v0 + 3840) = xmmword_1BCE40770;
  *(v0 + 7488) = xmmword_1BCE40770;
  *(v0 + 3888) = xmmword_1BCE42CE0;
  *(v0 + 7536) = xmmword_1BCE42CE0;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 7632) = xmmword_1BCE3F990;
  *(v0 + 4000) = xmmword_1BCE3C9D0;
  *(v0 + 5216) = xmmword_1BCE3C9D0;
  *(v0 + 6432) = xmmword_1BCE3C9D0;
  *(v0 + 7648) = xmmword_1BCE3C9D0;
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
  *(v0 + 4144) = xmmword_1BCE42CF0;
  *(v0 + 7792) = xmmword_1BCE42CF0;
  *(v0 + 4160) = xmmword_1BCE42D00;
  *(v0 + 7808) = xmmword_1BCE42D00;
  *(v0 + 4176) = xmmword_1BCE42D10;
  *(v0 + 7824) = xmmword_1BCE42D10;
  *(v0 + 4192) = xmmword_1BCE42D20;
  *(v0 + 7840) = xmmword_1BCE42D20;
  *(v0 + 4208) = xmmword_1BCE42D30;
  *(v0 + 7856) = xmmword_1BCE42D30;
  *(v0 + 4224) = xmmword_1BCE42D40;
  *(v0 + 7872) = xmmword_1BCE42D40;
  *(v0 + 4240) = xmmword_1BCE42D50;
  *(v0 + 7888) = xmmword_1BCE42D50;
  *(v0 + 4256) = xmmword_1BCE42D60;
  *(v0 + 7904) = xmmword_1BCE42D60;
  *(v0 + 4656) = xmmword_1BCE42D70;
  *(v0 + 8304) = xmmword_1BCE42D70;
  *(v0 + 4672) = xmmword_1BCE42D80;
  *(v0 + 8320) = xmmword_1BCE42D80;
  *(v0 + 4688) = xmmword_1BCE42D90;
  *(v0 + 8336) = xmmword_1BCE42D90;
  *(v0 + 4704) = xmmword_1BCE42DA0;
  *(v0 + 5920) = xmmword_1BCE42DA0;
  *(v0 + 7136) = xmmword_1BCE42DA0;
  *(v0 + 8352) = xmmword_1BCE42DA0;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1137180672;
  *(v0 + 8576) = 1137180672;
  *(v0 + 2512) = xmmword_1BCE3F7C0;
  *(v0 + 8592) = xmmword_1BCE3F7C0;
  *(v0 + 2528) = xmmword_1BCE3F7D0;
  *(v0 + 8608) = xmmword_1BCE3F7D0;
  *(v0 + 2544) = xmmword_1BCE3F7E0;
  *(v0 + 8624) = xmmword_1BCE3F7E0;
  *(v0 + 2560) = xmmword_1BCE3F7F0;
  *(v0 + 8640) = xmmword_1BCE3F7F0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2608) = xmmword_1BCE42C30;
  *(v0 + 8688) = xmmword_1BCE42C30;
  __asm { FMOV            V7.2D, #0.5 }

  *(v0 + 2624) = _Q7;
  *(v0 + 8704) = _Q7;
  *(v0 + 2672) = xmmword_1BCE400E0;
  *(v0 + 8752) = xmmword_1BCE400E0;
  *(v0 + 2688) = xmmword_1BCE3F830;
  *(v0 + 8768) = xmmword_1BCE3F830;
  *(v0 + 2736) = xmmword_1BCE3F840;
  *(v0 + 8816) = xmmword_1BCE3F840;
  *(v0 + 2752) = xmmword_1BCE3F850;
  *(v0 + 8832) = xmmword_1BCE3F850;
  *(v0 + 2768) = xmmword_1BCE3F860;
  *(v0 + 8848) = xmmword_1BCE3F860;
  *(v0 + 2784) = xmmword_1BCE3F870;
  *(v0 + 8864) = xmmword_1BCE3F870;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  *&_Q7 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = _Q7;
  *(v0 + 8896) = _Q7;
  *(v0 + 2928) = xmmword_1BCE42C50;
  *(v0 + 9008) = xmmword_1BCE42C50;
  *(v0 + 9024) = xmmword_1BCE3D910;
  *(v0 + 2992) = xmmword_1BCE42C90;
  *(v0 + 9072) = xmmword_1BCE42C90;
  *(v0 + 3008) = xmmword_1BCE42CA0;
  *(v0 + 9088) = xmmword_1BCE42CA0;
  *(v0 + 9120) = xmmword_1BCE42F00;
  *(v0 + 9520) = xmmword_1BCE42F10;
  *(v0 + 9536) = xmmword_1BCE42F20;
  *(v0 + 9552) = xmmword_1BCE42F30;
  *(v0 + 9056) = xmmword_1BCE42EF0;
  *(v0 + 9568) = xmmword_1BCE42EF0;
  *(v0 + 9904) = xmmword_1BCE42F40;
  *(v0 + 9920) = xmmword_1BCE42F50;
  *(v0 + 10224) = xmmword_1BCE42F60;
  *(v0 + 10240) = xmmword_1BCE42F70;
  *(v0 + 10256) = xmmword_1BCE42F80;
  *(v0 + 10272) = xmmword_1BCE3DCB0;
  *(v0 + 10304) = xmmword_1BCE42F90;
  *(v0 + 10336) = xmmword_1BCE414B0;
  *(v0 + 10736) = xmmword_1BCE42FA0;
  *(v0 + 10752) = xmmword_1BCE42FB0;
  *(v0 + 10768) = xmmword_1BCE42FC0;
  *(v0 + 10784) = xmmword_1BCE42FD0;
  *(v0 + 144) = xmmword_1BCE3F6E0;
  *(v0 + 160) = xmmword_1BCE3ED00;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 10992) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x4120000043480000;
  *(v0 + 9792) = 0x4120000043480000;
  *(v0 + 11008) = 0x4120000043480000;
  *(v0 + 176) = xmmword_1BCE42B50;
  *(v0 + 192) = xmmword_1BCE42B60;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 1328) = xmmword_1BCE3F6D0;
  *(v0 + 9840) = xmmword_1BCE3F6D0;
  *(v0 + 11056) = xmmword_1BCE3F6D0;
  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 272) = xmmword_1BCE3F720;
  *(v0 + 288) = xmmword_1BCE3F730;
  *(v0 + 1360) = xmmword_1BCE3F6E0;
  *(v0 + 9872) = xmmword_1BCE3F6E0;
  *(v0 + 11088) = xmmword_1BCE3F6E0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 11104) = xmmword_1BCE3ED00;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 1392) = xmmword_1BCE42B50;
  *(v0 + 11120) = xmmword_1BCE42B50;
  *(v0 + 1408) = xmmword_1BCE42B60;
  *(v0 + 11136) = xmmword_1BCE42B60;
  *(v0 + 336) = xmmword_1BCE3F740;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 1488) = xmmword_1BCE3F720;
  *(v0 + 10000) = xmmword_1BCE3F720;
  *(v0 + 11216) = xmmword_1BCE3F720;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1504) = xmmword_1BCE3F730;
  *(v0 + 10016) = xmmword_1BCE3F730;
  *(v0 + 11232) = xmmword_1BCE3F730;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 8368) = _Q4;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 1552) = xmmword_1BCE3F740;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 10064) = xmmword_1BCE3F740;
  *(v0 + 11280) = xmmword_1BCE3F740;
  *(v0 + 8048) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q4;
  *(v0 + 7952) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 7584) = _Q4;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7504) = _Q4;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7552) = _Q4;
  *(v0 + 7568) = _Q4;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v13;
  *(v0 + 7368) = 1058642330;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 7184) = _Q4;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 496) = xmmword_1BCE42B70;
  *(v0 + 512) = xmmword_1BCE42B80;
  *(v0 + 1712) = xmmword_1BCE42B70;
  *(v0 + 7152) = _Q4;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6896) = _Q4;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 11440) = xmmword_1BCE42B70;
  *(v0 + 1728) = xmmword_1BCE42B80;
  *(v0 + 6768) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 11456) = xmmword_1BCE42B80;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 528) = xmmword_1BCE42B90;
  *(v0 + 544) = xmmword_1BCE42BA0;
  *(v0 + 1744) = xmmword_1BCE42B90;
  *(v0 + 11472) = xmmword_1BCE42B90;
  *(v0 + 1760) = xmmword_1BCE42BA0;
  *(v0 + 11488) = xmmword_1BCE42BA0;
  *(v0 + 6544) = _Q4;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 560) = xmmword_1BCE42BB0;
  *(v0 + 576) = xmmword_1BCE42BC0;
  *(v0 + 1776) = xmmword_1BCE42BB0;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 10288) = xmmword_1BCE42BB0;
  *(v0 + 11504) = xmmword_1BCE42BB0;
  *(v0 + 1792) = xmmword_1BCE42BC0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 11520) = xmmword_1BCE42BC0;
  *(v0 + 1808) = xmmword_1BCE3F8A0;
  *(v0 + 3024) = xmmword_1BCE3F8A0;
  *(v0 + 6352) = _Q4;
  *(v0 + 6368) = _Q4;
  *(v0 + 9040) = xmmword_1BCE3F8A0;
  *(v0 + 9104) = xmmword_1BCE3F8A0;
  *(v0 + 10320) = xmmword_1BCE3F8A0;
  *(v0 + 11536) = xmmword_1BCE3F8A0;
  *(v0 + 592) = xmmword_1BCE3F8A0;
  *(v0 + 608) = xmmword_1BCE42BD0;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 1824) = xmmword_1BCE42BD0;
  *(v0 + 11552) = xmmword_1BCE42BD0;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 6121) = *v12;
  *(v0 + 6176) = _Q4;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1062836634;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5936) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 11952) = xmmword_1BCE42BE0;
  *(v0 + 1008) = xmmword_1BCE42BE0;
  *(v0 + 1024) = xmmword_1BCE42BF0;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 2240) = xmmword_1BCE42BF0;
  *(v0 + 3456) = xmmword_1BCE42BF0;
  *(v0 + 5136) = _Q4;
  *(v0 + 5152) = _Q4;
  *(v0 + 11968) = xmmword_1BCE42BF0;
  *(v0 + 1040) = xmmword_1BCE42C00;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 11984) = xmmword_1BCE42C00;
  *(v0 + 1056) = xmmword_1BCE40080;
  *(v0 + 2272) = xmmword_1BCE40080;
  *(v0 + 12000) = xmmword_1BCE40080;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 4960) = _Q4;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1062836634;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 4432) = _Q4;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 4336) = _Q4;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 4320) = _Q4;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
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
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 3904) = _Q4;
  *(v0 + 3920) = _Q4;
  *(v0 + 3936) = _Q4;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3856) = _Q4;
  *(v0 + 3536) = _Q4;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3616) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
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
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3344) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 3264) = _Q4;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  result = 0.623529553;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 1456) = xmmword_1BCE3F710;
  *(v0 + 9968) = xmmword_1BCE3F710;
  *(v0 + 11184) = xmmword_1BCE3F710;
  *(v0 + 240) = xmmword_1BCE3F710;
  *(v0 + 256) = _Q4;
  *(v0 + 208) = _Q4;
  *(v0 + 3056) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 400) = _Q4;
  *(v0 + 424) = 0;
  *(v0 + 656) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 2640) = _Q4;
  *(v0 + 2704) = _Q4;
  *(v0 + 2720) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 2400) = _Q4;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2288) = _Q4;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1036831949;
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
  *(v0 + 1424) = _Q4;
  *(v0 + 1472) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q4;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
  *(v0 + 8784) = _Q4;
  *(v0 + 8800) = _Q4;
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
  *(v0 + 9984) = _Q4;
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
  *(v0 + 11200) = _Q4;
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
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
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

void sub_1BCA34278(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA34A04();
  v4 = v3;
  sub_1BCA36A38();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC402000000000000;
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
  *(a1 + 728) = 1069547520;
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
  *(a1 + 848) = 0x4199999A417947AELL;
  *(a1 + 856) = 1094713344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x414970A441240000;
  *(a1 + 984) = 1086324736;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE42370;
  *(a1 + 1024) = 0x2D20737572726943;
  *(a1 + 1032) = 0xEA00000000004C20;
  strcpy((a1 + 1040), "Cirrus_SingleL");
  *(a1 + 1055) = -18;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F80000000000000;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE43050;
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
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BCA34A04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE42430;
  *(v0 + 192) = xmmword_1BCE42440;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 208) = result;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = result;
  *(v0 + 256) = xmmword_1BCE3D4B0;
  *(v0 + 272) = result;
  *(v0 + 288) = xmmword_1BCE3CBC0;
  *(v0 + 304) = xmmword_1BCE42450;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE43070;
  *(v0 + 384) = 0x3E4CCCCD3F800000;
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
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE42430;
  *(v0 + 1408) = xmmword_1BCE42440;
  *(v0 + 1424) = result;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = result;
  *(v0 + 1472) = xmmword_1BCE3D4B0;
  *(v0 + 1488) = result;
  *(v0 + 1504) = xmmword_1BCE3CBC0;
  *(v0 + 1520) = xmmword_1BCE42450;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE43070;
  *(v0 + 1600) = 0x3E4CCCCD3F800000;
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
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2544) = xmmword_1BCE42460;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE42430;
  *(v0 + 2624) = xmmword_1BCE42470;
  *(v0 + 2640) = result;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = xmmword_1BCE3D4B0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3E2C0;
  *(v0 + 2768) = xmmword_1BCE42480;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE43080;
  *(v0 + 2816) = 0x3E4CCCCD3F4CCCCDLL;
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
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
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
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 3744) = result;
  *(v0 + 3952) = result;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = result;
  *(v0 + 4016) = xmmword_1BCE43090;
  *(v0 + 4032) = 1062836634;
  *(v0 + 3968) = xmmword_1BCE3E230;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3888) = result;
  *(v0 + 3904) = xmmword_1BCE3D4B0;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3856) = result;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3824) = xmmword_1BCE424A0;
  *(v0 + 3840) = xmmword_1BCE424B0;
  *(v0 + 3792) = xmmword_1BCE42490;
  *(v0 + 3808) = xmmword_1BCE3EEE0;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE424C0;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE424E0;
  *(v0 + 5200) = vdupq_n_s64(0x3FEF9F9F80000000uLL);
  *(v0 + 5232) = xmmword_1BCE430A0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE42500;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE42510;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE42520;
  *(v0 + 6416) = xmmword_1BCE42530;
  *(v0 + 6432) = xmmword_1BCE42540;
  *(v0 + 6448) = xmmword_1BCE430B0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7360) = 1147207680;
  *(v0 + 7408) = xmmword_1BCE42560;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7552) = xmmword_1BCE3CBB0;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 7632) = xmmword_1BCE42570;
  *(v0 + 7648) = xmmword_1BCE42580;
  *(v0 + 7664) = xmmword_1BCE430C0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8576) = 0x41A0000044A28000;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1150681088;
  *(v0 + 11008) = 1150681088;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 11264) = xmmword_1BCE42590;
  *(v0 + 8880) = xmmword_1BCE3FD30;
  *(v0 + 10096) = xmmword_1BCE3FD30;
  *(v0 + 11312) = xmmword_1BCE3FD30;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 12224) = 0x146D097C44A28000;
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
  *(v0 + 12528) = xmmword_1BCE430D0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE425A0;
  *(v0 + 13440) = 0x2C31C71D44610000;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9C9CC0000000uLL);
  *(v0 + 13472) = xmmword_1BCE425B0;
  *(v0 + 13488) = xmmword_1BCE425C0;
  *(v0 + 13520) = xmmword_1BCE425D0;
  *(v0 + 13536) = xmmword_1BCE425E0;
  *(v0 + 7488) = xmmword_1BCE3CBA0;
  *(v0 + 13568) = xmmword_1BCE3CBA0;
  *(v0 + 13712) = xmmword_1BCE425F0;
  *(v0 + 13744) = xmmword_1BCE430E0;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE42600;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE42610;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = xmmword_1BCE424D0;
  *(v0 + 5056) = xmmword_1BCE3C8C0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = result;
  *(v0 + 5120) = xmmword_1BCE3CBB0;
  *(v0 + 5136) = result;
  *(v0 + 5152) = xmmword_1BCE3CBC0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
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
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = xmmword_1BCE3CBB0;
  *(v0 + 6352) = result;
  *(v0 + 6368) = xmmword_1BCE3CBC0;
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
  *(v0 + 7337) = *v13;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3E790;
  *(v0 + 14704) = xmmword_1BCE42620;
  *(v0 + 14720) = xmmword_1BCE42630;
  *(v0 + 14736) = xmmword_1BCE42640;
  *(v0 + 14752) = xmmword_1BCE42650;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14928) = xmmword_1BCE42660;
  *(v0 + 14944) = xmmword_1BCE42670;
  *(v0 + 14960) = xmmword_1BCE430F0;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
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
  *(v0 + 16176) = xmmword_1BCE43100;
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
  *(v0 + 17200) = xmmword_1BCE424D0;
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
  *(v0 + 16000) = xmmword_1BCE3CBB0;
  *(v0 + 16064) = xmmword_1BCE3CBB0;
  *(v0 + 17280) = xmmword_1BCE3CBB0;
  *(v0 + 8832) = xmmword_1BCE3ECB0;
  *(v0 + 12480) = xmmword_1BCE3ECB0;
  *(v0 + 14912) = xmmword_1BCE3ECB0;
  *(v0 + 17344) = xmmword_1BCE3ECB0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13504) = xmmword_1BCE3CA00;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 17392) = xmmword_1BCE43110;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE43120;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18432) = xmmword_1BCE42470;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3DCC0;
  *(v0 + 18560) = xmmword_1BCE3E2C0;
  *(v0 + 18576) = xmmword_1BCE426F0;
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  *(v0 + 18608) = xmmword_1BCE43080;
  *(v0 + 18624) = 0x3E4CCCCD3F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
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
  *(v0 + 18416) = xmmword_1BCE426E0;
  *(v0 + 19632) = xmmword_1BCE426E0;
  *(v0 + 20848) = xmmword_1BCE426E0;
  *(v0 + 19648) = xmmword_1BCE42440;
  *(v0 + 20864) = xmmword_1BCE42440;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 17216) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 18496) = xmmword_1BCE3D4B0;
  *(v0 + 19712) = xmmword_1BCE3D4B0;
  *(v0 + 20928) = xmmword_1BCE3D4B0;
  *(v0 + 7584) = xmmword_1BCE3CBC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 8800) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10016) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 11232) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 12448) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 13664) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14880) = xmmword_1BCE3CBC0;
  *(v0 + 16096) = xmmword_1BCE3CBC0;
  *(v0 + 17312) = xmmword_1BCE3CBC0;
  *(v0 + 19744) = xmmword_1BCE3CBC0;
  *(v0 + 20960) = xmmword_1BCE3CBC0;
  *(v0 + 19760) = xmmword_1BCE42700;
  *(v0 + 20976) = xmmword_1BCE42700;
  *(v0 + 19776) = xmmword_1BCE3E1D0;
  *(v0 + 20992) = xmmword_1BCE3E1D0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE43070;
  *(v0 + 21040) = xmmword_1BCE43070;
  *(v0 + 19840) = 0x3E4CCCCD3F800000;
  *(v0 + 21056) = 0x3E4CCCCD3F800000;
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
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 7568) = result;
  *(v0 + 7600) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 17232) = result;
  *(v0 + 17264) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
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
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8032) = result;
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
  *(v0 + 8048) = result;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 16112) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 15984) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 15849) = *v20;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8336) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v20[3];
  *(v0 + 8352) = result;
  *(v0 + 15744) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 15648) = result;
  *(v0 + 15728) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 14896) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 14768) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8784) = result;
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 14633) = *v19;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v19[3];
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
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
  *(v0 + 8976) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 13616) = result;
  *(v0 + 13648) = result;
  *(v0 + 13680) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 13552) = result;
  *(v0 + 13584) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v18;
  *(v0 + 13420) = *&v18[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9280) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
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
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 12400) = result;
  *(v0 + 12432) = result;
  *(v0 + 12464) = result;
  *(v0 + 9456) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v17;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v17[3];
  *(v0 + 9552) = result;
  *(v0 + 12080) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
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
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9769) = *v15;
  *(v0 + 11296) = result;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11216) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 10000) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 10032) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
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
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10208) = result;
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
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10224) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18448) = result;
  *(v0 + 18480) = result;
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
  *(v0 + 19664) = result;
  *(v0 + 19696) = result;
  *(v0 + 19728) = result;
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
  *(v0 + 20880) = result;
  *(v0 + 20912) = result;
  *(v0 + 20944) = result;
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