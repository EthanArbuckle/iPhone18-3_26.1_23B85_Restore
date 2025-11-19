uint64_t sub_1BCD085EC(uint64_t a1)
{
  v2 = sub_1BCD08AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD08628(uint64_t a1)
{
  v2 = sub_1BCD08AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD08664(uint64_t a1)
{
  v2 = sub_1BCD08B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD086A0(uint64_t a1)
{
  v2 = sub_1BCD08B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD086DC(uint64_t a1)
{
  v2 = sub_1BCD08B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD08718(uint64_t a1)
{
  v2 = sub_1BCD08B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudAltitudeKind.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAC0);
  OUTLINED_FUNCTION_2();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAC8);
  OUTLINED_FUNCTION_2();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAD0);
  OUTLINED_FUNCTION_2();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAD8);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD08A5C();
  sub_1BCE1E170();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_1BCD08B04();
      v15 = v29;
      OUTLINED_FUNCTION_3_8();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_1BCD08AB0();
      v15 = v32;
      OUTLINED_FUNCTION_3_8();
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_1BCD08B58();
    OUTLINED_FUNCTION_3_8();
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_1BCD08A5C()
{
  result = qword_1EDA1A780;
  if (!qword_1EDA1A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A780);
  }

  return result;
}

unint64_t sub_1BCD08AB0()
{
  result = qword_1EDA1A738;
  if (!qword_1EDA1A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A738);
  }

  return result;
}

unint64_t sub_1BCD08B04()
{
  result = qword_1EDA1A750;
  if (!qword_1EDA1A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A750);
  }

  return result;
}

unint64_t sub_1BCD08B58()
{
  result = qword_1EDA1A768;
  if (!qword_1EDA1A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A768);
  }

  return result;
}

uint64_t CloudAltitudeKind.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

uint64_t CloudAltitudeKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAE0);
  OUTLINED_FUNCTION_2();
  v57 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v48 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAE8);
  OUTLINED_FUNCTION_2();
  v54 = v7;
  v55 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAF0);
  OUTLINED_FUNCTION_2();
  v53 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CAF8);
  OUTLINED_FUNCTION_2();
  v58 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD08A5C();
  v21 = v61;
  sub_1BCE1E160();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v11;
  v51 = v15;
  v52 = v10;
  v23 = v59;
  v22 = v60;
  v61 = a1;
  v24 = sub_1BCE1DF80();
  result = sub_1BCA24D28(v24, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_9;
  }

  v49 = 0;
  if (v27 >= (v28 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v29) = *(v26 + v27);
    sub_1BCA24D24(v27 + 1, v28 >> 1, result, v26, v27, v28);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v31 == v33 >> 1;
    v35 = v57;
    if (!v34)
    {
LABEL_9:
      v40 = sub_1BCE1DD90();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07C50);
      *v42 = &type metadata for CloudAltitudeKind;
      sub_1BCE1DEE0();
      sub_1BCE1DD80();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v58 + 8))(v20, v16);
      a1 = v61;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v29)
    {
      if (v29 == 1)
      {
        v63 = 1;
        sub_1BCD08B04();
        v36 = v52;
        OUTLINED_FUNCTION_5_5();
        v37 = v56;
        v38 = v16;
        v39 = v58;
        swift_unknownObjectRelease();
        (*(v54 + 8))(v36, v55);
        (*(v39 + 8))(v20, v38);
      }

      else
      {
        LODWORD(v55) = v29;
        v64 = 2;
        sub_1BCD08AB0();
        v44 = v49;
        sub_1BCE1DED0();
        v37 = v56;
        v29 = v16;
        v45 = v58;
        if (v44)
        {
          (*(v58 + 8))(v20, v29);
          swift_unknownObjectRelease();
          a1 = v61;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v35 + 8))(v23, v22);
        (*(v45 + 8))(v20, v29);
        LOBYTE(v29) = v55;
      }
    }

    else
    {
      v62 = 0;
      sub_1BCD08B58();
      v43 = v51;
      OUTLINED_FUNCTION_5_5();
      swift_unknownObjectRelease();
      (*(v53 + 8))(v43, v50);
      v46 = OUTLINED_FUNCTION_4_0();
      v47(v46);
      v37 = v56;
    }

    *v37 = v29;
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  return result;
}

unint64_t sub_1BCD09224()
{
  result = qword_1EBD0CB00;
  if (!qword_1EBD0CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CB00);
  }

  return result;
}

unint64_t sub_1BCD0927C()
{
  result = qword_1EBD0CB08;
  if (!qword_1EBD0CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CB08);
  }

  return result;
}

_BYTE *sub_1BCD092F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCD09400()
{
  result = qword_1EBD0CB18;
  if (!qword_1EBD0CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CB18);
  }

  return result;
}

unint64_t sub_1BCD09458()
{
  result = qword_1EDA1A758;
  if (!qword_1EDA1A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A758);
  }

  return result;
}

unint64_t sub_1BCD094B0()
{
  result = qword_1EDA1A760;
  if (!qword_1EDA1A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A760);
  }

  return result;
}

unint64_t sub_1BCD09508()
{
  result = qword_1EDA1A740;
  if (!qword_1EDA1A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A740);
  }

  return result;
}

unint64_t sub_1BCD09560()
{
  result = qword_1EDA1A748;
  if (!qword_1EDA1A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A748);
  }

  return result;
}

unint64_t sub_1BCD095B8()
{
  result = qword_1EDA1A728;
  if (!qword_1EDA1A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A728);
  }

  return result;
}

unint64_t sub_1BCD09610()
{
  result = qword_1EDA1A730;
  if (!qword_1EDA1A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A730);
  }

  return result;
}

unint64_t sub_1BCD09668()
{
  result = qword_1EDA1A770;
  if (!qword_1EDA1A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A770);
  }

  return result;
}

unint64_t sub_1BCD096C0()
{
  result = qword_1EDA1A778;
  if (!qword_1EDA1A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A778);
  }

  return result;
}

void sub_1BCD09718(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA1B270();
  v4 = v3;
  sub_1BCA1B270();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE3F420;
  *(a1 + 112) = 0x3EB851EC3E428F5CLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE3FF50;
  *(a1 + 176) = 1148190720;
  *(a1 + 184) = 0x3E3851EC3E051EB8;
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
  *(a1 + 512) = 0x3E4CCCCD3E19999ALL;
  *(a1 + 528) = xmmword_1BCE3F470;
  *(a1 + 544) = xmmword_1BCE3F480;
  *(a1 + 560) = 0x42B4000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
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
  *(a1 + 720) = 0x41A8000041800000;
  *(a1 + 728) = 1095761920;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
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
  *(a1 + 976) = 0x4140000041000000;
  *(a1 + 984) = 1089950712;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE3F4C0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004C202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4C656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F3333333F19999ALL;
  *(a1 + 1104) = 0x4063D70A40400000;
  *(a1 + 1112) = 1088457540;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3FFA0;
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
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
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
  __asm { FMOV            V3.2S, #1.0 }

  *(a1 + 1984) = _D3;
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
  *(a1 + 2120) = 0x3E3851EC3E051EB8;
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

uint64_t PrecipitationCircularContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PrecipitationCircularContentView(0);
  v3 = OUTLINED_FUNCTION_1_74(v2);
  return sub_1BCD0A3E0(v3, a1, v4);
}

uint64_t PrecipitationCircularContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for PrecipitationCircularContentView(0);
  return sub_1BCCF4C38(a1, a2 + *(v4 + 20), type metadata accessor for PrecipitationComplicationDataStatus);
}

uint64_t PrecipitationCircularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB20);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v31[0] = type metadata accessor for PrecipitationCircularContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for PrecipitationComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for PrecipitationComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for PrecipitationCircularContentView(0);
  v22 = OUTLINED_FUNCTION_1_74(v21);
  sub_1BCD0A3E0(v22, v15, v23);
  if (__swift_getEnumTagSinglePayload(v15, 2, v16))
  {
    sub_1BCD0A440(v15, type metadata accessor for PrecipitationComplicationDataStatus);
    v24 = sub_1BCD0A38C();
    sub_1BCE1C7E0();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_79();
    sub_1BCD0B6E4(v25, v26);
    v32 = &type metadata for PrecipitationCircularContentView.Placeholder;
    v33 = v24;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCCF4C38(v15, v20, type metadata accessor for PrecipitationComplicationViewModel);
    sub_1BCD0A3E0(v20, v11, type metadata accessor for PrecipitationComplicationViewModel);
    sub_1BCD0A3E0(v11, v7, type metadata accessor for PrecipitationCircularContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_79();
    sub_1BCD0B6E4(v28, v29);
    v30 = sub_1BCD0A38C();
    v32 = &type metadata for PrecipitationCircularContentView.Placeholder;
    v33 = v30;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    sub_1BCD0A440(v11, type metadata accessor for PrecipitationCircularContentView.Content);
    return sub_1BCD0A440(v20, type metadata accessor for PrecipitationComplicationViewModel);
  }
}

unint64_t sub_1BCD0A38C()
{
  result = qword_1EBD0CB30;
  if (!qword_1EBD0CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CB30);
  }

  return result;
}

uint64_t sub_1BCD0A3E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCD0A440(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCD0A4E0()
{
  result = qword_1EBD0CB40;
  if (!qword_1EBD0CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB48);
    sub_1BCD0B6E4(&qword_1EBD0CB38, type metadata accessor for PrecipitationCircularContentView.Content);
    sub_1BCD0A38C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CB40);
  }

  return result;
}

uint64_t sub_1BCD0A61C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1BCE1C100();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BCE1C1B0();
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE1E060();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C3C0);
  v11 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB80);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB88);
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB90);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v46 - v20;
  v48 = type metadata accessor for PrecipitationComplicationViewModel();
  v21 = *(v2 + *(v48 + 40));
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7038], v7);
  v22 = Double.nearestMultiple(of:roundingRule:)(v10, 0.05, v21);
  (*(v8 + 8))(v10, v7);
  v62 = v22;
  v61 = xmmword_1BCE3A870;
  v58 = v2;
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DB8);
  sub_1BCCCC778();
  sub_1BCBD1568();
  sub_1BC96ABEC();
  sub_1BCE1CB80();
  sub_1BCE1C1A0();
  sub_1BC957184(&qword_1EDA1B640, &qword_1EBD0C3C0);
  sub_1BCD0B6E4(&qword_1EDA1B680, MEMORY[0x1E697CC98]);
  v23 = v47;
  v24 = v49;
  sub_1BCE1C7C0();
  (*(v51 + 8))(v6, v24);
  (*(v11 + 8))(v13, v23);
  v25 = sub_1BCE1CA80();
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v14 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = v54;
  sub_1BCE1C0D0();
  v29 = sub_1BCD0B8AC();
  sub_1BCE1C930();
  (*(v55 + 8))(v28, v56);
  sub_1BC94C05C(v16, &qword_1EBD0CB80);
  if (qword_1EDA17720 != -1)
  {
    swift_once();
  }

  v61 = xmmword_1EDA2EE70;
  v62 = *&v14;
  v63 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v30 = MEMORY[0x1E69E6158];
  v31 = v50;
  v32 = v53;
  sub_1BCE1C8E0();
  (*(v52 + 8))(v19, v32);
  v34 = sub_1BCE19B70();
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v36 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BCE3E030;
    v38 = sub_1BCB4F6E0();
    v40 = v39;
    *(v37 + 56) = v30;
    v41 = sub_1BC9804E0();
    *(v37 + 64) = v41;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v42 = sub_1BCB4F930();
    *(v37 + 96) = v30;
    *(v37 + 104) = v41;
    *(v37 + 72) = v42;
    *(v37 + 80) = v43;
    v34 = sub_1BCE1D2B0();
    v35 = v44;
  }

  v62 = *&v34;
  v63 = v35;
  sub_1BCE1B880();

  return sub_1BC94C05C(v31, &qword_1EBD0CB90);
}

double sub_1BCD0AE54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE1E060();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for PrecipitationComplicationViewModel() + 40));
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7038], v4);
  v9 = Double.nearestMultiple(of:roundingRule:)(v7, 0.05, v8);
  (*(v5 + 8))(v7, v4);
  *a2 = v9;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

uint64_t sub_1BCD0AFA4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_1BCE1C100();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BCE1C140();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB68);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB70);
  v31 = *(v14 - 8);
  v32 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CB78);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v27 - v17;
  v37 = 0;
  v39 = xmmword_1BCE3A870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DB8);
  sub_1BCCCC778();
  sub_1BC96ABEC();
  sub_1BCE1CB80();
  sub_1BCE1C130();
  sub_1BC957184(&qword_1EDA1B638, &qword_1EBD0CB60);
  sub_1BCD0B6E4(&qword_1EDA1B6F0, MEMORY[0x1E697CA68]);
  v19 = v28;
  sub_1BCE1C7C0();
  (*(v29 + 8))(v6, v19);
  (*(v8 + 8))(v10, v7);
  v20 = sub_1BCE1CA80();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v11 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = v30;
  sub_1BCE1C0D0();
  v24 = sub_1BCD0B72C();
  sub_1BCE1C930();
  (*(v34 + 8))(v23, v35);
  sub_1BC94C05C(v13, &qword_1EBD0CB68);
  if (qword_1EDA17720 != -1)
  {
    swift_once();
  }

  v39 = xmmword_1EDA2EE70;
  v37 = v11;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v25 = v32;
  sub_1BCE1C8E0();
  (*(v31 + 8))(v16, v25);
  if (qword_1EBD07118 != -1)
  {
    swift_once();
  }

  v39 = xmmword_1EBD2A1D0;
  sub_1BCE1B880();
  return sub_1BC94C05C(v18, &qword_1EBD0CB78);
}

uint64_t sub_1BCD0B588()
{
  sub_1BCE1CBA0();
  sub_1BCE1CA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DC0);
  sub_1BCB6B554();
  sub_1BCE1C840();
}

uint64_t sub_1BCD0B638@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD07120 != -1)
  {
    swift_once();
  }

  sub_1BC970820();

  result = sub_1BCE1C6A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BCD0B6E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCD0B72C()
{
  result = qword_1EDA1BAB0;
  if (!qword_1EDA1BAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB60);
    sub_1BCE1C140();
    sub_1BC957184(&qword_1EDA1B638, &qword_1EBD0CB60);
    sub_1BCD0B6E4(&qword_1EDA1B6F0, MEMORY[0x1E697CA68]);
    swift_getOpaqueTypeConformance2();
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAB0);
  }

  return result;
}

unint64_t sub_1BCD0B8AC()
{
  result = qword_1EDA1BAB8;
  if (!qword_1EDA1BAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C3C0);
    sub_1BCE1C1B0();
    sub_1BC957184(&qword_1EDA1B640, &qword_1EBD0C3C0);
    sub_1BCD0B6E4(&qword_1EDA1B680, MEMORY[0x1E697CC98]);
    swift_getOpaqueTypeConformance2();
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAB8);
  }

  return result;
}

unint64_t sub_1BCD0BA24()
{
  result = qword_1EDA1BA08;
  if (!qword_1EDA1BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB68);
    sub_1BCD0B72C();
    swift_getOpaqueTypeConformance2();
    sub_1BCD0B6E4(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA08);
  }

  return result;
}

unint64_t sub_1BCD0BB1C()
{
  result = qword_1EDA1BA10;
  if (!qword_1EDA1BA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CB80);
    sub_1BCD0B8AC();
    swift_getOpaqueTypeConformance2();
    sub_1BCD0B6E4(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA10);
  }

  return result;
}

uint64_t sub_1BCD0BC18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BCE1B450();
}

uint64_t sub_1BCD0BC90(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BCE1B460();
}

uint64_t sub_1BCD0BD08()
{
  OUTLINED_FUNCTION_5_58();
  v0[7] = v1;
  v0[8] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590);
  OUTLINED_FUNCTION_14(v3);
  v0[9] = swift_task_alloc();
  v4 = type metadata accessor for PlatterViewLocation();
  v0[10] = v4;
  OUTLINED_FUNCTION_14(v4);
  v0[11] = swift_task_alloc();
  v5 = sub_1BCE19E20();
  v0[12] = v5;
  v0[13] = *(v5 - 8);
  v0[14] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_43();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1BCD0BE1C()
{
  OUTLINED_FUNCTION_5_58();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1BCD0BEC4;
  v2 = v0[14];
  v3 = v0[8];

  return MEMORY[0x1EEDE77B8](v2, v3);
}

uint64_t sub_1BCD0BEC4()
{
  OUTLINED_FUNCTION_5_58();
  OUTLINED_FUNCTION_8_53();
  v2 = *v1;
  OUTLINED_FUNCTION_2_80();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_1BCD0C434;
  }

  else
  {
    v5 = sub_1BCD0BFC8;
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1BCD0BFC8()
{
  v20 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = sub_1BCE19E00();
  v8 = v7;
  [v4 coordinate];
  v10 = v9;
  v12 = v11;
  sub_1BCE19E10();
  v13 = sub_1BCE19DF0();
  *v2 = v6;
  v2[1] = v8;
  v2[2] = v10;
  v2[3] = v12;
  v14 = (v2 + *(v1 + 28));
  *v14 = v13;
  v14[1] = v15;
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_modelFactory), *(v5 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_modelFactory + 24));
  sub_1BCA94CE8(v2, v3);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v1);
  sub_1BCA94B2C(v3, v19);
  sub_1BCA22230(v3, &qword_1EBD08590);
  sub_1BCD0BC90(v19);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_1BCD0C14C;
  v17 = v0[11];

  return sub_1BCD0C660(v17);
}

uint64_t sub_1BCD0C14C()
{
  OUTLINED_FUNCTION_5_58();
  OUTLINED_FUNCTION_8_53();
  v1 = *v0;
  OUTLINED_FUNCTION_2_80();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_43();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1BCD0C230()
{
  v23 = v0;
  if (qword_1EBD070C8 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  v1 = v0[8];
  v2 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v2, qword_1EBD094F8);
  v3 = v1;
  v4 = sub_1BCE1ACA0();
  v5 = sub_1BCE1D8D0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  if (v6)
  {
    v11 = v0[8];
    v21 = v0[14];
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_16_30();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    [v11 coordinate];
    v0[4] = v14;
    v0[5] = v15;
    type metadata accessor for CLLocationCoordinate2D(0);
    v16 = sub_1BCE1D2D0();
    v18 = sub_1BC98FE38(v16, v17, &v22);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1BC940000, v4, v5, "Successfully reverse geocoded location. location=%{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_27_0();

    sub_1BCA94D4C(v10);
    (*(v7 + 8))(v21, v9);
  }

  else
  {

    sub_1BCA94D4C(v10);
    (*(v7 + 8))(v8, v9);
  }

  OUTLINED_FUNCTION_6_55();

  return v19();
}

uint64_t sub_1BCD0C434()
{
  v28 = v0;
  if (qword_1EBD070C8 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  v1 = v0[16];
  v2 = v0[8];
  v3 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v3, qword_1EBD094F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1BCE1ACA0();
  LOBYTE(v2) = sub_1BCE1D8B0();

  v7 = os_log_type_enabled(v6, v2);
  v8 = v0[16];
  if (v7)
  {
    v9 = v0[8];
    v10 = OUTLINED_FUNCTION_16_30();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_3_72(7.2226e-34);
    [v9 coordinate];
    v0[2] = v11;
    v0[3] = v12;
    type metadata accessor for CLLocationCoordinate2D(0);
    v13 = sub_1BCE1D2D0();
    v15 = sub_1BC98FE38(v13, v14, &v27);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    v0[6] = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBE0);
    v17 = sub_1BCE1D2D0();
    v19 = sub_1BC98FE38(v17, v18, &v27);

    *(v10 + 24) = v19;
    OUTLINED_FUNCTION_10_44();
    _os_log_impl(v20, v21, v22, v23, v24, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_55();

  return v25();
}

uint64_t sub_1BCD0C660(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for PlatterViewLocation();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBE8);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBF0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBF8);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC00);
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC08);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCD0C8F4);
}

uint64_t sub_1BCD0C8F4()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[3];
  v4 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v3 + 16) longitude:*(v3 + 24)];
  v0[24] = v4;
  v5 = v2[12];
  v12 = v2[16];
  v14 = v2[20];
  v0[25] = sub_1BCE196E0();
  sub_1BCE197F0();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  sub_1BCE197E0();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  sub_1BCE197D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085B0);
  sub_1BCE197C0();
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1BCD0CAD0;
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[14];

  return MEMORY[0x1EEDE7600](v7, v1 + v5, v1 + v12, v1 + v14, v4, v8, v9, v10);
}

uint64_t sub_1BCD0CAD0()
{
  OUTLINED_FUNCTION_8_53();
  v27 = *(v2 + 160);
  OUTLINED_FUNCTION_14_27();
  v4 = *(v3 + 152);
  v26 = *(v5 + 144);
  OUTLINED_FUNCTION_14_27();
  v25 = *(v6 + 136);
  OUTLINED_FUNCTION_14_27();
  v8 = *(v7 + 128);
  v24 = *(v9 + 120);
  OUTLINED_FUNCTION_14_27();
  v23 = *(v10 + 112);
  OUTLINED_FUNCTION_14_27();
  v12 = *(v11 + 104);
  v14 = v13[12];
  v15 = v13[11];
  v16 = v13[10];
  v17 = v13[9];
  v18 = *v1;
  OUTLINED_FUNCTION_2_80();
  *v19 = v18;
  *(v20 + 232) = v0;

  (*(v16 + 8))(v15, v17);
  (*(v12 + 8))(v23, v14);
  (*(v8 + 8))(v25, v24);
  (*(v4 + 8))(v27, v26);
  if (v0)
  {
    v21 = sub_1BCD0D040;
  }

  else
  {
    v21 = sub_1BCD0CD44;
  }

  return MEMORY[0x1EEE6DFA0](v21);
}

uint64_t sub_1BCD0CD44()
{
  v37 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[21];
  v6 = v0[3];
  sub_1BCD0E98C(v0[23], v4, &qword_1EBD0CC08);
  v7 = v5[12];
  v8 = v5[16];
  v9 = v5[20];
  sub_1BCD0D7F0(v6, v4, v4 + v7, v4 + v8, v4 + v9);
  sub_1BCA22230(v4 + v9, &qword_1EBD085B0);
  OUTLINED_FUNCTION_3_2();
  (*(v10 + 8))(v4 + v8, v1);
  OUTLINED_FUNCTION_3_2();
  (*(v11 + 8))(v4 + v7, v2);
  OUTLINED_FUNCTION_3_2();
  (*(v12 + 8))(v4, v3);
  if (qword_1EBD070C8 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  v13 = v0[8];
  v14 = v0[3];
  v15 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v15, qword_1EBD094F8);
  sub_1BCA94CE8(v14, v13);
  v16 = sub_1BCE1ACA0();
  v17 = sub_1BCE1D8D0();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[23];
  v20 = v0[24];
  v21 = v0[8];
  if (v18)
  {
    v22 = v0[7];
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_16_30();
    v36 = v24;
    OUTLINED_FUNCTION_3_72(7.2225e-34);
    sub_1BCA94CE8(v21, v22);
    v25 = sub_1BCE1D2D0();
    v27 = v26;
    sub_1BCA94D4C(v21);
    v28 = sub_1BC98FE38(v25, v27, &v36);

    *(v23 + 14) = v28;
    OUTLINED_FUNCTION_10_44();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {

    sub_1BCA94D4C(v21);
  }

  sub_1BCA22230(v19, &qword_1EBD0CC08);
  OUTLINED_FUNCTION_9_47();

  OUTLINED_FUNCTION_6_55();

  return v34();
}

uint64_t sub_1BCD0D040()
{
  v30 = v0;
  if (qword_1EBD070C8 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  v1 = v0[29];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v4, qword_1EBD094F8);
  sub_1BCA94CE8(v3, v2);
  v5 = v1;
  v6 = sub_1BCE1ACA0();
  LOBYTE(v3) = sub_1BCE1D8B0();

  v7 = os_log_type_enabled(v6, v3);
  v8 = v0[29];
  v9 = v0[24];
  if (v7)
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = OUTLINED_FUNCTION_16_30();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_3_72(7.2226e-34);
    sub_1BCA94CE8(v11, v10);
    v13 = sub_1BCE1D2D0();
    v15 = v14;
    sub_1BCA94D4C(v11);
    v16 = sub_1BC98FE38(v13, v15, &v29);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2082;
    v0[2] = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBE0);
    v18 = sub_1BCE1D2D0();
    v20 = sub_1BC98FE38(v18, v19, &v29);

    *(v12 + 24) = v20;
    OUTLINED_FUNCTION_10_44();
    _os_log_impl(v21, v22, v23, v24, v25, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v26 = v0[6];

    sub_1BCA94D4C(v26);
  }

  OUTLINED_FUNCTION_9_47();

  OUTLINED_FUNCTION_6_55();

  return v27();
}

uint64_t sub_1BCD0D2C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBD8);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_1BCE1D630();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;

  sub_1BCD0DFC8(0, 0, v7, &unk_1BCE63B50, v10);
}

uint64_t sub_1BCD0D3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v37 = a4;
  v33 = a1;
  v7 = sub_1BCE1D050();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = sub_1BCE196E0();
  v34 = *(v18 - 8);
  v19 = *(v34 + 16);
  v35 = v18;
  v19(v17, a2);
  v20 = v11[12];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v32 = v21;
  v23(&v17[v20], a3);
  v24 = v11[16];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v17[v24], v37, v25);
  sub_1BCD0E98C(v38, &v17[v11[20]], &qword_1EBD085B0);
  sub_1BC9905D4();
  *v10 = sub_1BCE1D9B0();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  LOBYTE(v24) = sub_1BCE1D070();
  result = (*(v8 + 8))(v10, v7);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_modelFactory), *(v36 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_modelFactory + 24));
    sub_1BCD0E98C(v17, v14, &qword_1EBD08598);
    v28 = v11[12];
    v29 = v11[16];
    v30 = v11[20];
    sub_1BCA945FC(v33, v14, &v14[v28], &v14[v29], &v14[v30], __src);
    sub_1BCA22230(&v14[v30], &qword_1EBD085B0);
    (*(v26 + 8))(&v14[v29], v25);
    (*(v22 + 8))(&v14[v28], v32);
    (*(v34 + 8))(v14, v35);
    sub_1BCD0BC90(__src);
    return sub_1BCA22230(v17, &qword_1EBD08598);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCD0D7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v29 = a5;
  v8 = type metadata accessor for PlatterViewLocation();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  v12 = (v11 - 8);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = sub_1BCE196E0();
  (*(*(v19 - 8) + 16))(v18, a2, v19);
  v20 = v12[14];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  (*(*(v21 - 8) + 16))(&v18[v20], a3, v21);
  v22 = v12[18];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  (*(*(v23 - 8) + 16))(&v18[v22], a4, v23);
  sub_1BCD0E98C(v29, &v18[v12[22]], &qword_1EBD085B0);
  v24 = swift_allocObject();
  swift_weakInit();
  sub_1BCA94CE8(v31, v10);
  sub_1BCD0E98C(v18, v15, &qword_1EBD08598);
  v25 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v26 = (v9 + *(v13 + 80) + v25) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  sub_1BCD0E9F0(v10, v27 + v25);
  sub_1BCD0EA54(v15, v27 + v26);

  sub_1BCE1AA90();

  sub_1BCA22230(v18, &qword_1EBD08598);
}

uint64_t sub_1BCD0DB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BCD0E98C(a3, v7, &qword_1EBD08598);
    v9 = v5[12];
    v10 = v5[16];
    v11 = v5[20];
    sub_1BCD0D3DC(a2, v7, &v7[v9], &v7[v10], &v7[v11]);

    sub_1BCA22230(&v7[v11], &qword_1EBD085B0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
    (*(*(v12 - 8) + 8))(&v7[v10], v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
    (*(*(v13 - 8) + 8))(&v7[v9], v13);
    v14 = sub_1BCE196E0();
    return (*(*(v14 - 8) + 8))(v7, v14);
  }

  return result;
}

uint64_t sub_1BCD0DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BCD0DD3C);
}

uint64_t sub_1BCD0DD3C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v6 = (v0[6] + *v0[6]);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1BCD0DE8C;

    return v6(v2);
  }

  else
  {
    OUTLINED_FUNCTION_6_55();

    return v5();
  }
}

uint64_t sub_1BCD0DE8C()
{
  OUTLINED_FUNCTION_5_58();
  OUTLINED_FUNCTION_8_53();
  v1 = *v0;
  OUTLINED_FUNCTION_2_80();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_43();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1BCD0DF70()
{
  OUTLINED_FUNCTION_5_58();

  OUTLINED_FUNCTION_6_55();

  return v0();
}

uint64_t sub_1BCD0DFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1BCD0E98C(a3, v24 - v10, &qword_1EBD0CBD8);
  v12 = sub_1BCE1D630();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BCA22230(v11, &qword_1EBD0CBD8);
  }

  else
  {
    sub_1BCE1D620();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BCE1D5F0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BCE1D300() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1BCA22230(a3, &qword_1EBD0CBD8);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BCA22230(a3, &qword_1EBD0CBD8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BCD0E2AC()
{
  v1 = OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater__model;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CBD0);
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_modelFactory);

  return v0;
}

uint64_t sub_1BCD0E33C()
{
  sub_1BCD0E2AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherPlatterViewModelUpdater()
{
  result = qword_1EBD0CBB8;
  if (!qword_1EBD0CBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BCD0E3E8()
{
  sub_1BCD0E490();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BCD0E490()
{
  if (!qword_1EBD0CBC8)
  {
    v0 = sub_1BCE1B470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD0CBC8);
    }
  }
}

uint64_t sub_1BCD0E4E0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_37(v8);
  *v9 = v10;
  v9[1] = sub_1BCD0E5A0;

  return sub_1BCD0DD18(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1BCD0E5A0()
{
  OUTLINED_FUNCTION_5_58();
  OUTLINED_FUNCTION_8_53();
  v1 = *v0;
  OUTLINED_FUNCTION_2_80();
  *v2 = v1;

  OUTLINED_FUNCTION_6_55();

  return v3();
}

uint64_t sub_1BCD0E680(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BCD0E778;

  return v6(a1);
}

uint64_t sub_1BCD0E778()
{
  OUTLINED_FUNCTION_5_58();
  OUTLINED_FUNCTION_8_53();
  v1 = *v0;
  OUTLINED_FUNCTION_2_80();
  *v2 = v1;

  OUTLINED_FUNCTION_6_55();

  return v3();
}

uint64_t sub_1BCD0E85C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_37(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_56(v1);

  return v4(v3);
}

uint64_t sub_1BCD0E8F4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_37(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_56(v1);

  return v4(v3);
}

uint64_t sub_1BCD0E98C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_3_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCD0E9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterViewLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCD0EA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCD0EAC4()
{
  v1 = *(type metadata accessor for PlatterViewLocation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1BCD0DB3C(v6, v0 + v2, v7);
}

uint64_t sub_1BCD0EC00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v6 = *a2;
  if (*(*a2 + 16))
  {
    v8 = v6[4];
    v7 = v6[5];
    v10 = v6[6];
    v9 = v6[7];
    v11 = v6[8];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = 0xE000000000000000;
    v7 = 0xE400000000000000;
    v8 = 1701736270;
  }

  *a3 = v8;
  a3[1] = v7;
  a3[2] = v10;
  a3[3] = v9;
  a3[4] = v11;
  return result;
}

BOOL static CloudAssetType.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1BCE1E090()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1BCE1E090()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t CloudAssetType.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CloudAssetType.filename.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BCD0EDBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC58);
  result = swift_allocObject();
  *(result + 16) = xmmword_1BCE43B50;
  *(result + 32) = 0x617274736F746C41;
  *(result + 40) = 0xEF53202D20737574;
  *(result + 48) = 0xD000000000000013;
  *(result + 56) = 0x80000001BCE792E0;
  *(result + 64) = xmmword_1BCE63BD0;
  *(result + 80) = 0xEF4C202D20737574;
  *(result + 88) = 0xD000000000000013;
  *(result + 96) = 0x80000001BCE798E0;
  *(result + 104) = xmmword_1BCE63BE0;
  *(result + 120) = 0x80000001BCE7A280;
  *(result + 128) = 0xD000000000000014;
  *(result + 136) = 0x80000001BCE7A2A0;
  *(result + 144) = xmmword_1BCE63BF0;
  *(result + 160) = 0x80000001BCE79320;
  *(result + 168) = 0xD000000000000014;
  *(result + 176) = 0x80000001BCE79340;
  *(result + 184) = xmmword_1BCE63C00;
  *(result + 200) = 0xEA00000000005320;
  strcpy((result + 208), "Cirrus_SingleS");
  *(result + 223) = -18;
  *(result + 224) = xmmword_1BCE63C10;
  *(result + 240) = 0xEA00000000004C20;
  strcpy((result + 248), "Cirrus_SingleL");
  *(result + 263) = -18;
  *(result + 264) = 10;
  *(result + 272) = 0x2073756C756D7543;
  *(result + 280) = 0xEB000000004D202DLL;
  *(result + 288) = 0x5F73756C756D7543;
  *(result + 296) = 0xEF4D656C676E6953;
  *(result + 304) = xmmword_1BCE63C20;
  *(result + 320) = 0xEB000000004C202DLL;
  *(result + 328) = 0x5F73756C756D7543;
  *(result + 336) = 0xEF4C656C676E6953;
  *(result + 344) = 10;
  *(result + 352) = 0xD000000000000010;
  *(result + 360) = 0x80000001BCE79860;
  *(result + 368) = 0xD000000000000014;
  *(result + 376) = 0x80000001BCE79880;
  *(result + 384) = xmmword_1BCE63C30;
  *(result + 400) = 0xEB000000004C202DLL;
  *(result + 408) = 0x5F73757461727453;
  *(result + 416) = 0xEF4C656C676E6953;
  *(result + 424) = 9;
  *(result + 432) = 0x7970736957;
  *(result + 440) = 0xE500000000000000;
  strcpy((result + 448), "Wispy_Single");
  *(result + 461) = 0;
  *(result + 462) = -5120;
  *(result + 464) = 6;
  qword_1EBD0CC10 = result;
  return result;
}

uint64_t *sub_1BCD0F048()
{
  if (qword_1EBD072D0 != -1)
  {
    OUTLINED_FUNCTION_2_81();
  }

  return &qword_1EBD0CC10;
}

uint64_t (*static CloudAssetType.singleTypes.modify())()
{
  if (qword_1EBD072D0 != -1)
  {
    OUTLINED_FUNCTION_2_81();
  }

  OUTLINED_FUNCTION_7_4();
  return j__swift_endAccess;
}

double sub_1BCD0F13C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE44180;
  *(v0 + 32) = 0x617274736F746C41;
  *(v0 + 40) = 0xEB00000000737574;
  *(v0 + 48) = 0xD000000000000013;
  *(v0 + 56) = 0x80000001BCE79300;
  *(v0 + 64) = xmmword_1BCE63C40;
  *(v0 + 80) = 0xE600000000000000;
  strcpy((v0 + 88), "Cirrus_Blanket");
  *(v0 + 103) = -18;
  *(v0 + 104) = xmmword_1BCE63C50;
  *(v0 + 120) = 0x80000001BCE798A0;
  *(v0 + 128) = 0xD000000000000015;
  *(v0 + 136) = 0x80000001BCE798C0;
  *(v0 + 144) = xmmword_1BCE63C60;
  *(v0 + 160) = 0x80000001BCE7A1D0;
  *(v0 + 168) = 0xD000000000000015;
  *(v0 + 176) = 0x80000001BCE7AD60;
  *&result = 4;
  *(v0 + 184) = xmmword_1BCE63C70;
  *(v0 + 200) = 0xE700000000000000;
  *(v0 + 208) = 0x5F73757461727453;
  *(v0 + 216) = 0xEF74656B6E616C42;
  *(v0 + 224) = 8;
  qword_1EBD0CC18 = v0;
  return result;
}

uint64_t *sub_1BCD0F2A0()
{
  if (qword_1EBD072D8 != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  return &qword_1EBD0CC18;
}

uint64_t sub_1BCD0F308(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_59();
  swift_beginAccess();
}

uint64_t sub_1BCD0F384(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_59();
  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static CloudAssetType.blanketTypes.modify())()
{
  if (qword_1EBD072D8 != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  OUTLINED_FUNCTION_7_4();
  return j_j__swift_endAccess;
}

uint64_t sub_1BCD0F450@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_5_59();
  swift_beginAccess();
  *a3 = *a2;
}

uint64_t sub_1BCD0F4A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void *a6)
{
  v8 = *a1;

  a5(v9);
  OUTLINED_FUNCTION_5_59();
  swift_beginAccess();
  *a6 = v8;
}

uint64_t sub_1BCD0F504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
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

uint64_t sub_1BCD0F60C(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 0x656D616E656C6966;
  }

  return 0x746E756F63;
}

uint64_t sub_1BCD0F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD0F504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD0F68C(uint64_t a1)
{
  v2 = sub_1BCD0F8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD0F6C8(uint64_t a1)
{
  v2 = sub_1BCD0F8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudAssetType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC20);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = v1[2];
  v12[1] = v1[3];
  v12[2] = v9;
  v12[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD0F8A4();
  sub_1BCE1E170();
  v15 = 0;
  v10 = v12[3];
  sub_1BCE1DFD0();
  if (!v10)
  {
    v14 = 1;
    sub_1BCE1DFD0();
    v13 = 2;
    sub_1BCE1E010();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCD0F8A4()
{
  result = qword_1EBD0CC28;
  if (!qword_1EBD0CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CC28);
  }

  return result;
}

uint64_t CloudAssetType.hash(into:)()
{
  v1 = *(v0 + 32);
  sub_1BCE1D370();
  sub_1BCE1D370();
  return MEMORY[0x1BFB30850](v1);
}

uint64_t CloudAssetType.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1BCE1E100();
  sub_1BCE1D370();
  sub_1BCE1D370();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

uint64_t CloudAssetType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD0F8A4();
  sub_1BCE1E160();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1BCE1DF20();
  v15 = v7;
  v13 = sub_1BCE1DF20();
  v14 = v8;
  v9 = sub_1BCE1DF60();
  v10 = OUTLINED_FUNCTION_0_72();
  v11(v10);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v9;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BCD0FC3C()
{
  v1 = *(v0 + 32);
  sub_1BCE1E100();
  sub_1BCE1D370();
  sub_1BCE1D370();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

unint64_t sub_1BCD0FCBC()
{
  result = qword_1EBD0CC38;
  if (!qword_1EBD0CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CC38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAssetType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BCD0FE04()
{
  result = qword_1EBD0CC40;
  if (!qword_1EBD0CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CC40);
  }

  return result;
}

unint64_t sub_1BCD0FE5C()
{
  result = qword_1EBD0CC48;
  if (!qword_1EBD0CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CC48);
  }

  return result;
}

unint64_t sub_1BCD0FEB4()
{
  result = qword_1EBD0CC50;
  if (!qword_1EBD0CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CC50);
  }

  return result;
}

uint64_t sub_1BCD0FF08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1BC20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SunriseSunsetView();
  sub_1BCB34A00(v1 + *(v10 + 20), v9, &qword_1EBD08438);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1D0D0();
    OUTLINED_FUNCTION_0_3();
    return (*(v11 + 32))(a1, v9);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SunriseSunsetView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C308);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SunriseSunsetView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  swift_storeEnumTagMultiPayload();
  return sub_1BCD13478(a1, a2 + *(v4 + 24), type metadata accessor for SunriseSunsetViewModel);
}

uint64_t SunriseSunsetView.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SunriseSunsetView() + 24);
  *a1 = sub_1BCE1C200();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC60);
  return sub_1BCD10228(v1 + v3, &a1[*(v4 + 44)]);
}

uint64_t sub_1BCD10228@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1BCD10428(a1, &v18 - v14);
  sub_1BCD106C0(a1, v9);
  sub_1BCB34A00(v15, v12, &qword_1EBD0CCA0);
  sub_1BCB34A00(v9, v6, &qword_1EBD0CC98);
  sub_1BCB34A00(v12, a2, &qword_1EBD0CCA0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCA8);
  sub_1BCB34A00(v6, a2 + *(v16 + 48), &qword_1EBD0CC98);
  sub_1BC94C05C(v9, &qword_1EBD0CC98);
  sub_1BC94C05C(v15, &qword_1EBD0CCA0);
  sub_1BC94C05C(v6, &qword_1EBD0CC98);
  return sub_1BC94C05C(v12, &qword_1EBD0CCA0);
}

uint64_t sub_1BCD10428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[1] = a2;
  v5 = sub_1BCE1C100();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD58);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD60);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  *v11 = sub_1BCE1BE00();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD68);
  sub_1BCD10958(v3, a1, &v11[*(v16 + 44)]);
  v17 = sub_1BCE1CAB0();
  KeyPath = swift_getKeyPath();
  v19 = &v11[*(v9 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_1BCE1C0E0();
  v20 = sub_1BCD13394();
  sub_1BCE1C930();
  (*(v6 + 8))(v8, v5);
  sub_1BC94C05C(v11, &qword_1EBD0CD58);
  v22[2] = v9;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BCE1C960();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1BCD106C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_1BCE1C100();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCB0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCB8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  *v9 = sub_1BCE1BE00();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCC0);
  sub_1BCD11AEC(a1, &v9[*(v14 + 44)]);
  v15 = sub_1BCE1CAB0();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(v7 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_1BCE1C0E0();
  v18 = sub_1BCD12EE4();
  sub_1BCE1C930();
  (*(v4 + 8))(v6, v3);
  sub_1BC94C05C(v9, &qword_1EBD0CCB0);
  v20[2] = v7;
  v20[3] = v18;
  swift_getOpaqueTypeConformance2();
  sub_1BCE1C960();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BCD10958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v81 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCE8);
  MEMORY[0x1EEE9AC00](v96);
  v82 = (&v81 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A908);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v81 - v13;
  v14 = type metadata accessor for SunriseSunsetViewModel(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SunriseSunsetChartView();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v87 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD88);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v81 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A900) - 8;
  MEMORY[0x1EEE9AC00](v86);
  v95 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v81 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCF0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8F8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v93 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v81 - v36;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8E8);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v100 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v99 = &v81 - v40;
  sub_1BCD11374(a2);
  *v37 = sub_1BCE1BC90();
  *(v37 + 1) = 0;
  v41 = 1;
  v37[16] = 1;
  v42 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCF8) + 44)];
  v83 = a1;
  sub_1BCD115A4(a2, v32);
  sub_1BCB34A00(v32, v29, &qword_1EBD0CCF0);
  sub_1BCB34A00(v29, v42, &qword_1EBD0CCF0);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD00) + 48);
  *v43 = 0;
  *(v43 + 8) = 0;
  sub_1BC94C05C(v32, &qword_1EBD0CCF0);
  sub_1BC94C05C(v29, &qword_1EBD0CCF0);
  v44 = v88;
  sub_1BCA53EEC(a2, v88);
  v45 = v87;
  SunriseSunsetChartView.init(model:)(v44, v87);
  sub_1BCE1CEE0();
  sub_1BCE1B910();
  v46 = v45;
  v47 = v89;
  sub_1BCD13478(v46, v89, type metadata accessor for SunriseSunsetChartView);
  memcpy((v47 + *(v19 + 44)), __src, 0x70uLL);
  LOBYTE(v44) = sub_1BCE1C240();
  sub_1BCE1B4A0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1BCB37738(v47, v24, &qword_1EBD0CD88);
  v56 = &v24[*(v86 + 44)];
  *v56 = v44;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = v24;
  v58 = v90;
  sub_1BCB37738(v57, v90, &qword_1EBD0A900);
  SunriseSunsetViewModel.description.getter();
  v60 = v59;
  v62 = v61;

  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v64 = sub_1BCE1BC90();
    v65 = v82;
    *v82 = v64;
    *(v65 + 8) = 0;
    *(v65 + 16) = 1;
    v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD08) + 44);
    v67 = v84;
    sub_1BCD11964();
    v68 = v85;
    sub_1BCB34A00(v67, v85, &qword_1EBD0CCE0);
    sub_1BCB34A00(v68, v66, &qword_1EBD0CCE0);
    v69 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD10) + 48);
    *v69 = 0;
    *(v69 + 8) = 0;
    sub_1BC94C05C(v67, &qword_1EBD0CCE0);
    sub_1BC94C05C(v68, &qword_1EBD0CCE0);
    v70 = v94;
    sub_1BCB37738(v65, v94, &qword_1EBD0CCE8);
    v41 = 0;
  }

  else
  {
    v70 = v94;
  }

  __swift_storeEnumTagSinglePayload(v70, v41, 1, v96);
  v71 = v91;
  v72 = v100;
  v73 = v92;
  (*(v91 + 16))();
  v105 = 0x4000000000000000;
  v106 = 0;
  v107[0] = v72;
  v107[1] = &v105;
  v74 = v93;
  sub_1BCB34A00(v37, v93, &qword_1EBD0A8F8);
  v103 = 0;
  v104 = 0;
  v107[2] = v74;
  v107[3] = &v103;
  v75 = v58;
  v76 = v58;
  v77 = v95;
  sub_1BCB34A00(v76, v95, &qword_1EBD0A900);
  v101 = 0;
  v102 = 0;
  v107[4] = v77;
  v107[5] = &v101;
  v78 = v97;
  sub_1BCB34A00(v70, v97, &qword_1EBD0A908);
  v107[6] = v78;
  sub_1BCBB4574(v107, v98);
  sub_1BC94C05C(v70, &qword_1EBD0A908);
  sub_1BC94C05C(v75, &qword_1EBD0A900);
  sub_1BC94C05C(v37, &qword_1EBD0A8F8);
  v79 = *(v71 + 8);
  v79(v99, v73);
  sub_1BC94C05C(v78, &qword_1EBD0A908);
  sub_1BC94C05C(v77, &qword_1EBD0A900);
  sub_1BC94C05C(v74, &qword_1EBD0A8F8);
  return (v79)(v100, v73);
}

uint64_t sub_1BCD11374(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD28);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-v4];
  v16 = a1;
  v14 = v1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD38);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08A00);
  v7 = sub_1BCAC3980();
  v17 = v6;
  v18 = v7;
  swift_getOpaqueTypeConformance2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CD40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CD48);
  v10 = sub_1BCD131A4();
  v17 = v9;
  v18 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BCE1CC30();
  *&v5[*(v3 + 36)] = 256;
  sub_1BCD13288();
  sub_1BCD13340();
  sub_1BCE1C7D0();
  return sub_1BC94C05C(v5, &qword_1EBD0CD28);
}

uint64_t sub_1BCD115A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1BCE1C1D0();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SunriseSunsetViewModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA1EAB8 != -1)
  {
    swift_once();
  }

  v9 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v9, qword_1EDA1EAC0);
  sub_1BCA53EEC(a1, v8);
  v10 = sub_1BCE1ACA0();
  v11 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41[0] = v13;
    *v12 = 136446210;
    SunriseSunsetViewModel.title.getter();
    v15 = v14;
    v17 = v16;
    sub_1BCD13080(v8);
    v18 = sub_1BC98FE38(v15, v17, v41);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1BC940000, v10, v11, "SunriseSunsetView: next sun event is %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB31B10](v13, -1, -1);
    MEMORY[0x1BFB31B10](v12, -1, -1);
  }

  else
  {

    sub_1BCD13080(v8);
  }

  SunriseSunsetViewModel.title.getter();
  SunriseSunsetViewModel.timePeriodSymbols.getter();
  sub_1BCE1C340();
  sub_1BCE1C3A0();
  sub_1BCE1C400();

  TimeStyle.formatTime(_:periodSymbols:font:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1BCE1C1C0();
  v25 = sub_1BCE1C5F0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1BC998CF4(v20, v22, v24 & 1);

  (*(v36 + 8))(v5, v37);
  KeyPath = swift_getKeyPath();
  v41[0] = v25;
  v41[1] = v27;
  v42 = v29 & 1;
  v43 = v31;
  v44 = KeyPath;
  v45 = 0x3FE0000000000000;
  SunriseSunsetViewModel.title.getter();
  v39 = v33;
  v40 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD20);
  sub_1BCD130DC();
  sub_1BC970820();
  sub_1BCE1C8E0();

  sub_1BC998CF4(v25, v27, v29 & 1);
}

uint64_t sub_1BCD11964()
{
  SunriseSunsetViewModel.description.getter();
  SunriseSunsetViewModel.timePeriodSymbols.getter();
  sub_1BCE1C470();
  sub_1BCE1C3A0();
  sub_1BCE1C400();

  TimeStyle.formatTime(_:periodSymbols:font:)();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v11 = v5 & 1;
  v10 = 0;
  __src[0] = v1;
  __src[1] = v3;
  LOBYTE(__src[2]) = v5 & 1;
  __src[3] = v7;
  __src[4] = swift_getKeyPath();
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = swift_getKeyPath();
  __src[8] = 0x3FE0000000000000;
  SunriseSunsetViewModel.description.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AB30);
  sub_1BCD12FC8();
  sub_1BC970820();
  sub_1BCE1C8E0();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_1BC94C05C(__dst, &qword_1EBD0AB30);
}

uint64_t sub_1BCD11AEC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCE8);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A908);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8F8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A8E8);
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v55 - v27;
  sub_1BCD11374(a1);
  *v24 = sub_1BCE1BC90();
  *(v24 + 1) = 0;
  v28 = 1;
  v24[16] = 1;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CCF8) + 44);
  v62 = v24;
  v30 = &v24[v29];
  sub_1BCD115A4(a1, v19);
  sub_1BCB34A00(v19, v16, &qword_1EBD0CCF0);
  sub_1BCB34A00(v16, v30, &qword_1EBD0CCF0);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD00) + 48);
  *v31 = 0;
  *(v31 + 8) = 0;
  sub_1BC94C05C(v19, &qword_1EBD0CCF0);
  sub_1BC94C05C(v16, &qword_1EBD0CCF0);
  SunriseSunsetViewModel.description.getter();
  v33 = v32;
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    *v8 = sub_1BCE1BC90();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v37 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD08) + 44)];
    v38 = v56;
    sub_1BCD11964();
    v39 = v57;
    sub_1BCB34A00(v38, v57, &qword_1EBD0CCE0);
    sub_1BCB34A00(v39, v37, &qword_1EBD0CCE0);
    v40 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD10) + 48);
    *v40 = 0;
    *(v40 + 8) = 0;
    sub_1BC94C05C(v38, &qword_1EBD0CCE0);
    sub_1BC94C05C(v39, &qword_1EBD0CCE0);
    sub_1BCB37738(v8, v13, &qword_1EBD0CCE8);
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v28, 1, v64);
  v41 = v58;
  v42 = *(v58 + 16);
  v43 = v61;
  v44 = v63;
  v42(v61, v66, v63);
  v45 = v62;
  v46 = v59;
  sub_1BCB34A00(v62, v59, &qword_1EBD0A8F8);
  v47 = v60;
  sub_1BCB34A00(v13, v60, &qword_1EBD0A908);
  v64 = v13;
  v48 = v47;
  v49 = v65;
  v42(v65, v43, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD18);
  v51 = &v49[v50[12]];
  *v51 = 0x4000000000000000;
  v51[8] = 0;
  sub_1BCB34A00(v46, &v49[v50[16]], &qword_1EBD0A8F8);
  v52 = &v49[v50[20]];
  *v52 = 0;
  v52[8] = 0;
  sub_1BCB34A00(v48, &v49[v50[24]], &qword_1EBD0A908);
  sub_1BC94C05C(v64, &qword_1EBD0A908);
  sub_1BC94C05C(v45, &qword_1EBD0A8F8);
  v53 = *(v41 + 8);
  v53(v66, v44);
  sub_1BC94C05C(v48, &qword_1EBD0A908);
  sub_1BC94C05C(v46, &qword_1EBD0A8F8);
  return (v53)(v43, v44);
}

uint64_t sub_1BCD12174@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A00);
  MEMORY[0x1EEE9AC00](v26[0]);
  v3 = v26 - v2;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  SunriseSunsetViewModel.headerTitle.getter();
  sub_1BCE1BCF0();

  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v4 = sub_1BCE1C680();
  v6 = v5;
  v8 = v7;
  sub_1BCE1C2C0();
  v9 = sub_1BCE1C610();
  v11 = v10;
  v13 = v12;

  sub_1BC998CF4(v4, v6, v8 & 1);

  sub_1BCE1C3C0();
  v14 = sub_1BCE1C530();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1BC998CF4(v9, v11, v13 & 1);

  v21 = &v3[*(v26[0] + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A08) + 28);
  v23 = *MEMORY[0x1E6980FD8];
  v24 = sub_1BCE1C600();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  __swift_storeEnumTagSinglePayload(v21 + v22, 0, 1, v24);
  *v21 = swift_getKeyPath();
  *v3 = v14;
  *(v3 + 1) = v16;
  v3[16] = v18 & 1;
  *(v3 + 3) = v20;
  sub_1BCAC3980();
  sub_1BCE1C750();
  return sub_1BC94C05C(v3, &qword_1EBD08A00);
}

uint64_t sub_1BCD12450()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD48);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v12 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CD40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  sub_1BCD12650(v2);
  v7 = sub_1BCE1C440();
  KeyPath = swift_getKeyPath();
  v9 = (v2 + *(v0 + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  sub_1BCE1C3C0();
  v10 = sub_1BCD131A4();
  sub_1BCE1C7B0();
  sub_1BC94C05C(v2, &qword_1EBD0CD48);
  sub_1BCD128B8();
  v12[0] = v0;
  v12[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_1BCE1C860();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BCD12650@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BCE1D0D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  sub_1BCD0FF08(&v31 - v7);
  sub_1BCE1D0B0();
  v9 = sub_1BCE1D0A0();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  SunriseSunsetViewModel.headerIcon.getter();
  v12 = v11;
  v14 = v13;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C280);
  v16 = a1 + v15[9];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = (a1 + v15[10]);
  *v17 = v12;
  v17[1] = v14;
  v18 = (a1 + v15[11]);
  v19 = sub_1BCCBE44C;
  if (v9)
  {
    v19 = sub_1BCD1293C;
  }

  *v18 = v19;
  v18[1] = 0;

  v20 = sub_1BCAB6160(v12, v14);
  v21 = (a1 + v15[12]);
  *v21 = v20;
  v21[1] = v22;
  v21[2] = v23;

  v24 = sub_1BCAB608C();
  v26 = v25;
  v28 = v27;

  v30 = (a1 + v15[13]);
  *v30 = v24;
  v30[1] = v26;
  v30[2] = v28;
  return result;
}

void sub_1BCD128B8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
}

uint64_t sub_1BCD1293C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD088C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1BCE1BE20();
  v5 = sub_1BCE1BE50();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = sub_1BCE1CBE0();
  result = sub_1BC94C05C(v4, &qword_1EBD088C8);
  *a1 = v6;
  return result;
}

uint64_t sub_1BCD12A14@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BCE1BC90();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC88);
  return sub_1BCD12A6C((a1 + *(v2 + 44)));
}

uint64_t sub_1BCD12A6C@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1BCE1C090();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1BCE1C070();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1BCE1C080();
  sub_1BCE1C0A0();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CC90) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t type metadata accessor for SunriseSunsetView()
{
  result = qword_1EDA1A618;
  if (!qword_1EDA1A618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BCD12D90()
{
  sub_1BCD12E64(319, &qword_1EBD0CC70, MEMORY[0x1E697F6A0]);
  if (v0 <= 0x3F)
  {
    sub_1BCD12E64(319, &qword_1EDA1EA48, MEMORY[0x1E6985778]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SunriseSunsetViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BCD12E64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1BCD12EE4()
{
  result = qword_1EBD0CCC8;
  if (!qword_1EBD0CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CCB0);
    sub_1BC957184(&qword_1EBD0CCD0, &qword_1EBD0CCD8);
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CCC8);
  }

  return result;
}

unint64_t sub_1BCD12FC8()
{
  result = qword_1EDA1B918;
  if (!qword_1EDA1B918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AB30);
    sub_1BCBB56D8();
    sub_1BC957184(&qword_1EDA1B6D8, &qword_1EBD09FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B918);
  }

  return result;
}

uint64_t sub_1BCD13080(uint64_t a1)
{
  v2 = type metadata accessor for SunriseSunsetViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCD130DC()
{
  result = qword_1EDA1BAF8;
  if (!qword_1EDA1BAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CD20);
    sub_1BC957184(&qword_1EDA1B6D8, &qword_1EBD09FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAF8);
  }

  return result;
}

unint64_t sub_1BCD131A4()
{
  result = qword_1EDA1BB80;
  if (!qword_1EDA1BB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CD48);
    sub_1BC957184(&qword_1EDA19378, &qword_1EBD0C280);
    sub_1BC957184(&qword_1EDA1B6B0, &qword_1EBD08400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB80);
  }

  return result;
}

unint64_t sub_1BCD13288()
{
  result = qword_1EDA1B9B0;
  if (!qword_1EDA1B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CD28);
    sub_1BC957184(&unk_1EDA1B5B0, &qword_1EBD0CD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9B0);
  }

  return result;
}

unint64_t sub_1BCD13340()
{
  result = qword_1EDA19370;
  if (!qword_1EDA19370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA19370);
  }

  return result;
}

unint64_t sub_1BCD13394()
{
  result = qword_1EBD0CD70;
  if (!qword_1EBD0CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CD58);
    sub_1BC957184(&qword_1EBD0CD78, &qword_1EBD0CD80);
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CD70);
  }

  return result;
}

uint64_t sub_1BCD13478(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_3();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

uint64_t WeatherConditionBackgroundModel.init(gradient:animationKind:animationData:)@<X0>(void *__src@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  memcpy(a3, __src, 0x68uLL);
  a3[104] = v4;
  type metadata accessor for WeatherConditionBackgroundModel(0);
  return sub_1BC999604();
}

uint64_t BackgroundAnimationData.Model.init(location:date:conditionKind:windSpeed:cloudCover:cloudKind:elevation:moonData:options:isDayTime:sunrise:sunset:isReduceMotionEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, const void *a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = *a5;
  v20 = *a6;
  v21 = *(a6 + 8);
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_0_3();
  (*(v22 + 32))(a8, a1);
  v23 = type metadata accessor for BackgroundAnimationData.Model(0);
  v24 = v23[5];
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_3();
  (*(v25 + 32))(a8 + v24, a2);
  v26 = v23[6];
  sub_1BCE199D0();
  OUTLINED_FUNCTION_0_3();
  (*(v27 + 32))(a8 + v26, a3);
  v28 = v23[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_0_3();
  (*(v29 + 32))(a8 + v28, a4);
  *(a8 + v23[8]) = a9;
  *(a8 + v23[9]) = v19;
  v30 = a8 + v23[10];
  *v30 = v20;
  *(v30 + 8) = v21;
  sub_1BCD13764();
  memcpy((a8 + v23[12]), a7, 0x59uLL);
  *(a8 + v23[13]) = a10;
  sub_1BCD13764();
  result = sub_1BCD13764();
  *(a8 + v23[16]) = a13;
  return result;
}

uint64_t sub_1BCD13764()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_0_3();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t BackgroundAnimationData.Model.date.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for BackgroundAnimationData.Model(v0);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v1 = OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t BackgroundAnimationData.Model.conditionKind.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for BackgroundAnimationData.Model(v0);
  sub_1BCE199D0();
  OUTLINED_FUNCTION_4();
  v1 = OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t BackgroundAnimationData.Model.windSpeed.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for BackgroundAnimationData.Model(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_4();
  v1 = OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t BackgroundAnimationData.Model.cloudKind.getter()
{
  v2 = OUTLINED_FUNCTION_19_1();
  result = type metadata accessor for BackgroundAnimationData.Model(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

double BackgroundAnimationData.Model.elevation.getter()
{
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = v1 + *(type metadata accessor for BackgroundAnimationData.Model(v2) + 40);
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

uint64_t BackgroundAnimationData.Model.moonData.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  v1 = type metadata accessor for BackgroundAnimationData.Model(v0);
  OUTLINED_FUNCTION_105(*(v1 + 44));
  return sub_1BC99F06C();
}

uint64_t BackgroundAnimationData.Model.sunrise.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  v1 = type metadata accessor for BackgroundAnimationData.Model(v0);
  OUTLINED_FUNCTION_105(*(v1 + 56));
  return sub_1BC99F06C();
}

uint64_t BackgroundAnimationData.Model.sunset.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  v1 = type metadata accessor for BackgroundAnimationData.Model(v0);
  OUTLINED_FUNCTION_105(*(v1 + 60));
  return sub_1BC99F06C();
}

uint64_t BackgroundAnimationData.Model.init(location:date:conditionKind:windSpeed:cloudCover:elevation:options:isDayTime:sunrise:sunset:isReduceMotionEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, const void *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, char a11)
{
  v19 = *a5;
  v20 = *(a5 + 8);
  v21 = type metadata accessor for BackgroundAnimationData.Model(0);
  v22 = v21[11];
  v23 = type metadata accessor for BackgroundMoonData();
  __swift_storeEnumTagSinglePayload(a8 + v22, 1, 1, v23);
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_0_3();
  (*(v24 + 32))(a8, a1);
  v25 = v21[5];
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_3();
  (*(v26 + 32))(a8 + v25, a2);
  v27 = v21[6];
  sub_1BCE199D0();
  OUTLINED_FUNCTION_0_3();
  (*(v28 + 32))(a8 + v27, a3);
  v29 = v21[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_0_3();
  (*(v30 + 32))(a8 + v29, a4);
  *(a8 + v21[8]) = a9;
  *(a8 + v21[9]) = 0;
  v31 = a8 + v21[10];
  *v31 = v19;
  *(v31 + 8) = v20;
  memcpy((a8 + v21[12]), a6, 0x59uLL);
  *(a8 + v21[13]) = a7;
  sub_1BCD13764();
  result = sub_1BCD13764();
  *(a8 + v21[16]) = a11;
  return result;
}

uint64_t WeatherConditionBackgroundModel.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CDA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCE3E030;
  strcpy((inited + 32), "animationData");
  *(inited + 46) = -4864;
  v4 = *(type metadata accessor for WeatherConditionBackgroundModel(0) + 24);
  *(inited + 72) = type metadata accessor for BackgroundAnimationData(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 48));
  sub_1BC96AF48(v1 + v4, boxed_opaque_existential_0Tm);
  *(inited + 80) = 0x746E656964617267;
  *(inited + 88) = 0xE800000000000000;
  memcpy(__dst, v1, sizeof(__dst));
  *(inited + 120) = &type metadata for SkyBackgroundGradient;
  v6 = swift_allocObject();
  *(inited + 96) = v6;
  memcpy((v6 + 16), __dst, 0x68uLL);
  sub_1BCE1D130();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CDA8);
  a1[4] = sub_1BCD14114();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_1BCE1A860();
}

uint64_t sub_1BCD13E50(uint64_t a1)
{
  v2 = sub_1BC994C10(&unk_1EDA1B348, type metadata accessor for WeatherConditionBackgroundModel);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t BackgroundAnimationData.description.getter()
{
  v1 = type metadata accessor for BackgroundAnimationData.Model(0);
  v2 = OUTLINED_FUNCTION_14(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  type metadata accessor for BackgroundAnimationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  sub_1BC96AF48(v0, v0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_74();
    sub_1BC999604();
    v7 = BackgroundAnimationData.Model.description.getter();
    MEMORY[0x1BFB2FB00](v7);

    v8 = 0x646564616F4CLL;
    OUTLINED_FUNCTION_2_82();
    sub_1BC969F84(v5, v9);
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    strcpy(v15, "None(viewID=");
    BYTE5(v15[1]) = 0;
    HIWORD(v15[1]) = -5120;
    v12 = 0x6E6F697461636F6CLL;
    v13 = 0xEE00726577656956;
    switch(v11)
    {
      case 0uLL:
        break;
      case 1uLL:
        v13 = 0xEF77656976657250;
        break;
      case 2uLL:
        v13 = 0x80000001BCE8F5E0;
        v12 = 0xD000000000000015;
        break;
      case 3uLL:
        v13 = 0xEB00000000776569;
        v12 = OUTLINED_FUNCTION_12_3();
        break;
      case 4uLL:
        v13 = 0xE600000000000000;
        v12 = 0x726574736F70;
        break;
      default:
        MEMORY[0x1BFB2FB00](v10, v11);
        v12 = 0x2D7473696CLL;
        v13 = 0xE500000000000000;
        break;
    }

    MEMORY[0x1BFB2FB00](v12, v13);

    sub_1BC977830(v10, v11);

    MEMORY[0x1BFB2FB00](41, 0xE100000000000000);
    return v15[0];
  }

  return v8;
}

unint64_t sub_1BCD14114()
{
  result = qword_1EDA1BD00;
  if (!qword_1EDA1BD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BD00);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_1();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

unint64_t sub_1BCD1421C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1BCE1D4A0();

    return OUTLINED_FUNCTION_13_38();
  }

  return result;
}

uint64_t sub_1BCD142B8()
{
  v0 = sub_1BCE19D40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19B10();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E6984EC8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BCE3E050;
    v6 = MEMORY[0x1E69E6438];
    *(v5 + 56) = MEMORY[0x1E69E63B0];
    *(v5 + 64) = v6;
    *(v5 + 32) = 0x4004000000000000;
LABEL_5:
    v9 = sub_1BCE1D250();

    return v9;
  }

  if (v4 == *MEMORY[0x1E6984EA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BCE3E050;
    v8 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = MEMORY[0x1E69E6530];
    *(v7 + 64) = v8;
    *(v7 + 32) = 10;
    goto LABEL_5;
  }

  if (v4 == *MEMORY[0x1E6984E68] || v4 == *MEMORY[0x1E6984EB8])
  {
    goto LABEL_12;
  }

  if (v4 == *MEMORY[0x1E6984E60])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x1E6984E78])
  {
    goto LABEL_16;
  }

  if (v4 != *MEMORY[0x1E6984E80])
  {
    if (v4 == *MEMORY[0x1E6984E88])
    {
LABEL_16:
      v12 = 2;
      goto LABEL_17;
    }

    if (v4 == *MEMORY[0x1E6984E58])
    {
      return 0;
    }

    if (v4 == *MEMORY[0x1E6984EA0] || v4 == *MEMORY[0x1E6984EB0])
    {
      return 0;
    }

    if (v4 != *MEMORY[0x1E6984E70])
    {
      if (v4 != *MEMORY[0x1E6984E98])
      {
        if (v4 != *MEMORY[0x1E6984E90] && v4 != *MEMORY[0x1E6984EC0])
        {
          (*(v1 + 8))(v3, v0);
        }

        return 0;
      }

      v12 = 6;
LABEL_17:
      v16[1] = v12;
      return sub_1BCE1E050();
    }

LABEL_12:
    v12 = 3;
    goto LABEL_17;
  }

  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1EDA1EFB8;
  v9 = sub_1BCE18B60();

  return v9;
}

uint64_t AirPollutant.standaloneDisplayName.getter()
{
  sub_1BCE19D40();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = (v2 - v1);
  sub_1BCE19B10();
  v4 = OUTLINED_FUNCTION_40();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x1E6984EC8])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_11_1();
    v7 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_7();
    sub_1BCE18B60();
    OUTLINED_FUNCTION_19_25();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v8 = OUTLINED_FUNCTION_24_20();
    *(v8 + 16) = xmmword_1BCE3E050;
    v9 = MEMORY[0x1E69E6438];
    *(v8 + 56) = MEMORY[0x1E69E63B0];
    *(v8 + 64) = v9;
    v10 = 0x4004000000000000;
LABEL_9:
    *(v8 + 32) = v10;
    OUTLINED_FUNCTION_13_38();
    v13 = sub_1BCE1D250();

    return v13;
  }

  if (v6 == *MEMORY[0x1E6984EA8])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_11_1();
    v11 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_17_28();
    OUTLINED_FUNCTION_7();
    sub_1BCE18B60();
    OUTLINED_FUNCTION_19_25();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v8 = OUTLINED_FUNCTION_24_20();
    *(v8 + 16) = xmmword_1BCE3E050;
    v12 = MEMORY[0x1E69E65A8];
    *(v8 + 56) = MEMORY[0x1E69E6530];
    *(v8 + 64) = v12;
    v10 = 10;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x1E6984E68] || v6 == *MEMORY[0x1E6984EB8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 == *MEMORY[0x1E6984E60])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 == *MEMORY[0x1E6984E78])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_22:
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_7_18(qword_1EDA1EFB8);
      OUTLINED_FUNCTION_5_60();
LABEL_23:
      OUTLINED_FUNCTION_16_1();
      v13 = sub_1BCE18B60();

      return v13;
    }

LABEL_57:
    OUTLINED_FUNCTION_0();
    goto LABEL_22;
  }

  if (v6 == *MEMORY[0x1E6984E80])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 == *MEMORY[0x1E6984E88])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_56;
  }

  if (v6 == *MEMORY[0x1E6984E58])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_11_1();
      v3 = OUTLINED_FUNCTION_7_18(qword_1EDA1EFB8);
      goto LABEL_23;
    }

LABEL_56:
    OUTLINED_FUNCTION_0();
    goto LABEL_33;
  }

  if (v6 == *MEMORY[0x1E6984EA0] || v6 == *MEMORY[0x1E6984EB0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 == *MEMORY[0x1E6984E70])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 == *MEMORY[0x1E6984E98])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 == *MEMORY[0x1E6984E90])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  if (v6 != *MEMORY[0x1E6984EC0])
  {
    v17 = OUTLINED_FUNCTION_40();
    v18(v17);
  }

  return 0;
}

NSAttributedString_optional __swiftcall AirPollutant.abbreviatedDisplayName(font:)(CTFontRef font)
{
  v3 = sub_1BCD142B8();
  sub_1BCD15104(v1, v3, v4);
  if (v5)
  {
    sub_1BCD17AC4();

    v6 = sub_1BCAFF9D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BCE3E050;
    v8 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    type metadata accessor for CTFont(0);
    *(inited + 64) = v9;
    *(inited + 40) = font;
    type metadata accessor for Key(0);
    sub_1BCD17B08();
    v10 = v8;
    v20 = font;
    sub_1BCE1D130();
    v11 = sub_1BCE1D100();

    [v6 addAttributes:v11 range:{0, sub_1BCE1D380()}];

    sub_1BC98CAB4();
    v12 = sub_1BCE1D710();

    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {
        sub_1BCD15B68(v20);
        v15 = sub_1BCE1D100();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A538);
        sub_1BC957184(&qword_1EDA1C1C8, &qword_1EBD0A538);
        sub_1BC970820();
        v16 = sub_1BCE1DAE0();
        [v6 &selRef_init + 5];

        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  else
  {

    v6 = 0;
  }

  v19 = v6;
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

uint64_t sub_1BCD15104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BCE19D40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19B10();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x1E6984EC8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v9 == *MEMORY[0x1E6984EA8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v9 == *MEMORY[0x1E6984E68] || v9 == *MEMORY[0x1E6984EB8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v9 == *MEMORY[0x1E6984E60])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_16:
      swift_beginAccess();
      v11 = qword_1EDA1EFB8;
      v12 = sub_1BCE18B60();

      return v12;
    }

LABEL_57:
    swift_once();
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x1E6984E78])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v9 == *MEMORY[0x1E6984E80])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v9 == *MEMORY[0x1E6984E88])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_25:
      swift_beginAccess();
      v13 = qword_1EDA1EFB8;
      sub_1BCE18B60();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BCE3E050;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1BC9804E0();
      *(v14 + 32) = a2;
      *(v14 + 40) = a3;

LABEL_26:
      v12 = sub_1BCE1D250();

      return v12;
    }

LABEL_52:
    swift_once();
    goto LABEL_25;
  }

  if (v9 == *MEMORY[0x1E6984E58])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

  if (v9 == *MEMORY[0x1E6984EA0] || v9 == *MEMORY[0x1E6984EB0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

  if (v9 == *MEMORY[0x1E6984E70])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

  if (v9 == *MEMORY[0x1E6984E98])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BCE3E030;
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1BC9804E0();
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 96) = v19;
    *(v18 + 104) = v20;
    *(v18 + 64) = v20;
    *(v18 + 72) = a2;
    *(v18 + 80) = a3;
    swift_bridgeObjectRetain_n();
    goto LABEL_26;
  }

  if (v9 == *MEMORY[0x1E6984E90])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

  if (v9 != *MEMORY[0x1E6984EC0])
  {
    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

uint64_t sub_1BCD15B68(const __CTFont *a1)
{
  XHeight = CTFontGetXHeight(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCE3E040;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  *(inited + 64) = v5;
  *(inited + 40) = a1;
  sub_1BCE1D280();
  v6 = v4;
  v7 = a1;
  v8 = sub_1BCE1D240();

  *(inited + 72) = v8;
  v9 = *MEMORY[0x1E6965A78];
  type metadata accessor for CFString(0);
  *(inited + 104) = v10;
  *(inited + 80) = v9;
  sub_1BCE1D280();
  v11 = v9;
  v12 = sub_1BCE1D240();

  *(inited + 144) = MEMORY[0x1E69E63B0];
  *(inited + 112) = v12;
  *(inited + 120) = 0x3FE0000000000000;
  sub_1BCE1D280();
  v13 = sub_1BCE1D240();

  *(inited + 152) = v13;
  *(inited + 184) = MEMORY[0x1E69E7DE0];
  *(inited + 160) = XHeight * -0.2;
  type metadata accessor for Key(0);
  sub_1BCD17B08();
  return sub_1BCE1D130();
}

uint64_t AirPollutant.formattedValueString.getter()
{
  sub_1BCE18D90();
  OUTLINED_FUNCTION_2();
  v56 = v1;
  v57 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  v55 = v3 - v2;
  v4 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v53 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_2();
  v59 = v8;
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v50 - v11;
  v12 = sub_1BCE19D50();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  sub_1BCE19E30();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CDB8);
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v50 - v27;
  sub_1BCE19B20();
  v29 = OUTLINED_FUNCTION_40();
  if (v30(v29) == *MEMORY[0x1E6985208])
  {
    v31 = OUTLINED_FUNCTION_40();
    v32(v31);
    (*(v25 + 32))(v28, v22, v23);
    sub_1BCE19B00();
    v33 = (*(v14 + 88))(v18, v12);
    if (v33 == *MEMORY[0x1E6984ED8])
    {
      sub_1BCE185E0();
      v35 = v34 / 1000.0;
      if (v34 / 1000.0 < 1.0)
      {
        if (qword_1EDA1EFB0 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      v51 = v28;
      v52 = v23;
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    if (v33 == *MEMORY[0x1E6984ED0])
    {
      sub_1BCE185E0();
      v35 = v39 * 1000.0;
      if (v39 * 1000.0 < 1.0)
      {
        if (qword_1EDA1EFB0 == -1)
        {
LABEL_11:
          OUTLINED_FUNCTION_7();
          swift_beginAccess();
          OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
          OUTLINED_FUNCTION_21_23();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_8_28();
          sub_1BCE18B60();
          OUTLINED_FUNCTION_19_25();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
          v40 = OUTLINED_FUNCTION_24_20();
          *(v40 + 16) = xmmword_1BCE3E050;
          v41 = MEMORY[0x1E69E65A8];
          *(v40 + 56) = MEMORY[0x1E69E6530];
          *(v40 + 64) = v41;
          *(v40 + 32) = 1;
          OUTLINED_FUNCTION_13_38();
          v38 = sub_1BCE1D250();

          (*(v25 + 8))(v28, v23);
          return v38;
        }

LABEL_20:
        OUTLINED_FUNCTION_0();
        goto LABEL_11;
      }

      v51 = v28;
      v52 = v23;
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_16:
        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        v42 = OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_8_28();
        v50[1] = sub_1BCE18B60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
        v43 = OUTLINED_FUNCTION_24_20();
        *(v43 + 16) = xmmword_1BCE3E050;
        v61 = v35;
        sub_1BCE19150();
        sub_1BC96ABEC();
        v44 = v54;
        OUTLINED_FUNCTION_10_2();
        sub_1BCE18C80();
        v45 = v55;
        sub_1BCE18D60();
        v46 = v58;
        v47 = v60;
        MEMORY[0x1BFB2B400](v45, v60);
        (*(v56 + 8))(v45, v57);
        v48 = *(v59 + 8);
        v48(v44, v47);
        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 64) = sub_1BC9804E0();
        sub_1BC957184(&qword_1EDA1EF58, &qword_1EBD08288);
        sub_1BCE1D0F0();
        v48(v46, v47);
        v38 = sub_1BCE1D250();

        (*(v25 + 8))(v51, v52);
        return v38;
      }

LABEL_21:
      OUTLINED_FUNCTION_0();
      goto LABEL_16;
    }

    (*(v25 + 8))(v28, v23);
    (*(v14 + 8))(v18, v12);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_40();
    v37(v36);
  }

  return 0;
}

NSAttributedString __swiftcall AirPollutant.displayName(for:)(CTFontRef a1)
{
  sub_1BCE19D40();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE19B10();
  v4 = OUTLINED_FUNCTION_10_2();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x1E6984EC8])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_3_75();
    v7 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_16_1();
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BCE3E030;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    sub_1BC9804E0();
    OUTLINED_FUNCTION_22_24(MEMORY[0x1E69E63B0]);
    v10 = 0x4004000000000000;
LABEL_9:
    *(v8 + 64) = v9;
    *(v8 + 72) = v10;
    sub_1BCE1D250();

    goto LABEL_10;
  }

  if (v6 == *MEMORY[0x1E6984EA8])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_3_75();
    v11 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_20_23();
    OUTLINED_FUNCTION_16_1();
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BCE3E030;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    sub_1BC9804E0();
    OUTLINED_FUNCTION_22_24(MEMORY[0x1E69E6530]);
    v10 = 10;
    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x1E6984E68] || v6 == *MEMORY[0x1E6984EB8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_17:
      OUTLINED_FUNCTION_3_75();
      OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
      OUTLINED_FUNCTION_10_45();
      OUTLINED_FUNCTION_2_83();
      sub_1BCE18B60();

      goto LABEL_10;
    }

LABEL_48:
    OUTLINED_FUNCTION_0();
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x1E6984E60])
  {
    goto LABEL_10;
  }

  if (v6 == *MEMORY[0x1E6984E78])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

  if (v6 == *MEMORY[0x1E6984E80])
  {
    goto LABEL_10;
  }

  if (v6 == *MEMORY[0x1E6984E88])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

  if (v6 == *MEMORY[0x1E6984E58])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

  if (v6 == *MEMORY[0x1E6984EA0] || v6 == *MEMORY[0x1E6984EB0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

  if (v6 == *MEMORY[0x1E6984E70])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

  if (v6 != *MEMORY[0x1E6984E98] && v6 != *MEMORY[0x1E6984E90] && v6 != *MEMORY[0x1E6984EC0])
  {
    v20 = OUTLINED_FUNCTION_10_2();
    v21(v20);
  }

LABEL_10:
  v12 = sub_1BCD142B8();
  v14 = OUTLINED_FUNCTION_15_33(v12, v13);

  return v14;
}

id sub_1BCD16B38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v121 = a3;
  v122 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v108 - v9;
  v126 = a1;
  v127 = a2;
  v130 = 16421;
  v131 = 0xE200000000000000;
  v11 = sub_1BCE19280();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = sub_1BC970820();
  sub_1BCE1DBC0();
  v14 = v13;
  v16 = v15;
  sub_1BCA4B6E0(v10);
  if (v16)
  {
    v126 = a1;
    v127 = a2;
    v130 = 1076113701;
    v131 = 0xE400000000000000;
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_1BCE1DBC0();
    v14 = v17;
    v19 = v18;
    sub_1BCA4B6E0(v10);
    if (v19)
    {
      v20 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCE3E050;
      v22 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      type metadata accessor for CTFont(0);
      *(inited + 64) = v23;
      *(inited + 40) = a5;
      type metadata accessor for Key(0);
      sub_1BCD17B08();

      v24 = a5;
      v25 = v22;
      v26 = sub_1BCE1D130();
      objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v27 = v20;
      v28 = a2;
      return sub_1BCD17B60(v27, v28, v26);
    }
  }

  v117 = v11;
  v118 = v12;
  v119 = a5;
  v29 = a1;
  v30 = sub_1BCE1D4A0();
  v32 = v31;
  v33 = a2;
  v35 = v34;
  v37 = v36;

  v38 = sub_1BCD1421C(v14, v29, v33);
  v39 = v33;
  v124 = v40;
  v125 = v38;
  v123 = v41;
  v116 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
  v43 = swift_allocObject();
  v120 = xmmword_1BCE3E050;
  *(v43 + 16) = xmmword_1BCE3E050;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1BC9804E0();
  v44 = v122;
  *(v43 + 32) = v121;
  *(v43 + 40) = v44;

  v113 = v29;
  v115 = v39;
  v45 = sub_1BCE1D250();
  v47 = v46;

  v130 = v45;
  v131 = v47;
  v111 = v32;
  v112 = v30;
  v126 = v30;
  v127 = v32;
  v110 = v35;
  v128 = v35;
  v129 = v37;
  v121 = v37;
  v48 = v117;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v117);
  sub_1BC999280();
  v109 = sub_1BCE1DBC0();
  v114 = v49;
  LOBYTE(v29) = v50;
  sub_1BCA4B6E0(v10);
  v122 = v45;
  v130 = v45;
  v131 = v47;
  v51 = v47;
  v52 = v116;
  v126 = v125;
  v127 = v124;
  v128 = v123;
  v129 = v116;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v48);
  v53 = sub_1BCE1DBC0();
  v55 = v54;
  v57 = v56;
  sub_1BCA4B6E0(v10);
  if ((v29 & 1) != 0 || (v57 & 1) != 0 || v114 >> 14 >= v53 >> 14)
  {
    if (qword_1EBD070A8 != -1)
    {
      swift_once();
    }

    v82 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v82, qword_1EBD09498);
    v83 = v115;

    v84 = v51;

    v85 = v121;

    v86 = sub_1BCE1ACA0();
    v87 = sub_1BCE1D8D0();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v126 = v118;
      *v88 = 136446978;
      *(v88 + 4) = sub_1BC98FE38(v113, v83, &v126);
      *(v88 + 12) = 2082;
      v89 = v52;
      v90 = v122;
      *(v88 + 14) = sub_1BC98FE38(v122, v84, &v126);
      *(v88 + 22) = 2082;
      v91 = v84;
      v92 = MEMORY[0x1BFB2FA90](v112, v111, v110, v85);
      v94 = v93;

      v95 = sub_1BC98FE38(v92, v94, &v126);

      *(v88 + 24) = v95;
      *(v88 + 32) = 2082;
      v96 = MEMORY[0x1BFB2FA90](v125, v124, v123, v89);
      v98 = v97;

      v99 = sub_1BC98FE38(v96, v98, &v126);

      *(v88 + 34) = v99;
      _os_log_impl(&dword_1BC940000, v86, v87, "Could not obtain valid ranges for the pre and post air pollutant display string. format=%{public}s, localizedString=%{public}s, formatPrefix=%{public}s, formatSuffix=%{public}s", v88, 0x2Au);
      v100 = v118;
      swift_arrayDestroy();
      MEMORY[0x1BFB31B10](v100, -1, -1);
      MEMORY[0x1BFB31B10](v88, -1, -1);

      v101 = v119;
    }

    else
    {

      v91 = v51;
      v101 = v119;
      v90 = v122;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABA0);
    v102 = swift_initStackObject();
    *(v102 + 16) = v120;
    v103 = *MEMORY[0x1E69DB648];
    *(v102 + 32) = *MEMORY[0x1E69DB648];
    type metadata accessor for CTFont(0);
    *(v102 + 64) = v104;
    *(v102 + 40) = v101;
    type metadata accessor for Key(0);
    sub_1BCD17B08();
    v105 = v101;
    v106 = v103;
    v26 = sub_1BCE1D130();
    objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = v90;
    v28 = v91;
    return sub_1BCD17B60(v27, v28, v26);
  }

  sub_1BCD17AC4();

  v58 = v122;
  v59 = sub_1BCAFF9D8();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABA0);
  v60 = swift_initStackObject();
  v125 = v53;
  v61 = v60;
  *(v60 + 16) = v120;
  v62 = *MEMORY[0x1E69DB648];
  *(v60 + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  v121 = v63;
  *(v61 + 64) = v63;
  v124 = v55;
  v64 = v119;
  *(v61 + 40) = v119;
  type metadata accessor for Key(0);
  v66 = v65;
  v67 = sub_1BCD17B08();
  v117 = v62;
  v119 = v64;
  v115 = v67;
  v116 = v66;
  sub_1BCE1D130();
  v68 = sub_1BCE1D100();

  v126 = v109;
  v127 = v114;
  v130 = v58;
  v131 = v51;
  v108 = v51;

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A538);
  v70 = sub_1BC957184(&qword_1EDA1C1C8, &qword_1EBD0A538);
  v112 = v69;
  v113 = v70;
  v71 = sub_1BCE1DAE0();
  [v59 addAttributes:v68 range:{v71, v72}];

  v73 = v119;
  sub_1BCD15B68(v119);
  v74 = sub_1BCE1D100();

  v126 = v114;
  v127 = v125;
  v130 = v122;
  v131 = v108;

  v75 = sub_1BCE1DAE0();
  [v59 addAttributes:v74 range:{v75, v76}];

  v77 = swift_initStackObject();
  *(v77 + 16) = v120;
  *(v77 + 64) = v121;
  *(v77 + 32) = v117;
  *(v77 + 40) = v73;
  v78 = v73;
  sub_1BCE1D130();
  v79 = sub_1BCE1D100();

  v126 = v125;
  v127 = v124;
  v130 = v122;
  v131 = v108;
  v80 = sub_1BCE1DAE0();
  [v59 addAttributes:v79 range:{v80, v81}];

  return v59;
}

NSAttributedString __swiftcall AirPollutant.displayDescription(for:)(CTFontRef a1)
{
  sub_1BCE19D40();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE19B10();
  v4 = OUTLINED_FUNCTION_10_2();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x1E6984EC8])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_3_75();
    OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
    OUTLINED_FUNCTION_6_56();
    OUTLINED_FUNCTION_2_83();
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x1E6984EA8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_7:
      OUTLINED_FUNCTION_3_75();
      v2 = OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
LABEL_8:
      OUTLINED_FUNCTION_2_83();
LABEL_17:
      sub_1BCE18B60();

      goto LABEL_18;
    }

LABEL_49:
    OUTLINED_FUNCTION_0();
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E6984E68] || v6 == *MEMORY[0x1E6984EB8])
  {
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_3_75();
    v2 = OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
    OUTLINED_FUNCTION_2_83();
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x1E6984E60])
  {
    goto LABEL_18;
  }

  if (v6 == *MEMORY[0x1E6984E78])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  if (v6 == *MEMORY[0x1E6984E80])
  {
    goto LABEL_18;
  }

  if (v6 == *MEMORY[0x1E6984E88])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

  if (v6 == *MEMORY[0x1E6984E58])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  if (v6 == *MEMORY[0x1E6984EA0] || v6 == *MEMORY[0x1E6984EB0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  if (v6 == *MEMORY[0x1E6984E70])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_40:
      OUTLINED_FUNCTION_3_75();
      OUTLINED_FUNCTION_9_4(qword_1EDA1EFB8);
      OUTLINED_FUNCTION_6_56();
      goto LABEL_8;
    }

LABEL_52:
    OUTLINED_FUNCTION_0();
    goto LABEL_40;
  }

  if (v6 != *MEMORY[0x1E6984E98] && v6 != *MEMORY[0x1E6984E90] && v6 != *MEMORY[0x1E6984EC0])
  {
    v15 = OUTLINED_FUNCTION_10_2();
    v16(v15);
  }

LABEL_18:
  v8 = sub_1BCD142B8();
  v10 = OUTLINED_FUNCTION_15_33(v8, v9);

  return v10;
}

unint64_t sub_1BCD17AC4()
{
  result = qword_1EBD0CDB0;
  if (!qword_1EBD0CDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD0CDB0);
  }

  return result;
}

unint64_t sub_1BCD17B08()
{
  result = qword_1EDA1C110;
  if (!qword_1EDA1C110)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1C110);
  }

  return result;
}

id sub_1BCD17B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BCE1D240();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1BCD17B08();
    v6 = sub_1BCE1D100();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t sub_1BCD17C08()
{
  v0 = type metadata accessor for UltravioletComplicationDailyViewModel();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_1BCE197B0();
  sub_1BCD85BA4(v13, 0, 6);
  v15 = v14;
  v25 = v7;
  (*(v9 + 8))(v13, v7);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v24 = *(v9 + 72);
    sub_1BCE1A080();
    v18 = (v9 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_16_31(v0[5]);
      OUTLINED_FUNCTION_16_31(v0[6]);
      (*v18)(v6 + v0[7], v17, v25);
      sub_1BCE19460();
      sub_1BCE19080();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB6579C();
        v19 = v21;
      }

      v20 = *(v19 + 16);
      if (v20 >= *(v19 + 24) >> 1)
      {
        sub_1BCB6579C();
        v19 = v22;
      }

      *(v19 + 16) = v20 + 1;
      sub_1BCD19874(v6, v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20);
      v17 += v24;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

uint64_t sub_1BCD17E88@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_3();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v10 = sub_1BCE1A080();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for UltravioletComplicationDailyViewModel();
  sub_1BCA45690(v3 + v20[6], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    sub_1BC94C05C(v2, &qword_1EBD07D88);
    if (qword_1EDA1BEA0 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v51 = qword_1EDA1BEA8;
    v21 = ColorSpectrum.gradientStops.getter();
    v22 = v20[7];
    v23 = type metadata accessor for ComplicationDailyGaugeViewModel();
    v24 = *(v23 + 28);
    sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    (*(v25 + 16))(a1 + v24, v3 + v22);
    v26 = v20[8];
    v27 = *(v23 + 32);
    sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    result = (*(v28 + 16))(a1 + v27, v3 + v26);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    v49 = v12;
    v30 = *(v12 + 32);
    v30(v19, v2, v10);
    v31 = v20[5];
    v50 = v3;
    sub_1BCA45690(v3 + v31, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
    {
      sub_1BC94C05C(v8, &qword_1EBD07D88);
      v32 = 0;
      v33 = 0.0;
      v34 = v49;
      v35 = v50;
    }

    else
    {
      v30(v16, v8, v10);
      if (qword_1EDA1BEA0 != -1)
      {
        OUTLINED_FUNCTION_9_1();
      }

      v36 = qword_1EDA1BEA8;
      v37 = sub_1BCE1A060();
      v51 = v36;
      v38._rawValue = v36;
      v32 = ColorSpectrum.color(for:in:)(v38, v37);
      v39 = sub_1BCE1A060();
      v34 = v49;
      (*(v49 + 8))(v16, v10);
      v33 = v39 / 11.0;

      v35 = v50;
    }

    v40 = sub_1BCE1A060() / 11.0;
    if (qword_1EDA1BEA0 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v51 = qword_1EDA1BEA8;
    v21 = ColorSpectrum.gradientStops.getter();

    (*(v34 + 8))(v19, v10);
    v41 = v20[7];
    v42 = type metadata accessor for ComplicationDailyGaugeViewModel();
    v43 = *(v42 + 28);
    sub_1BCE19060();
    OUTLINED_FUNCTION_4();
    (*(v44 + 16))(a1 + v43, v35 + v41);
    v45 = v20[8];
    v46 = *(v42 + 32);
    sub_1BCE19470();
    OUTLINED_FUNCTION_4();
    result = (*(v47 + 16))(a1 + v46, v35 + v45);
    *a1 = v32;
    *(a1 + 8) = v33;
    *(a1 + 16) = v40;
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = v21;
  return result;
}

uint64_t UltravioletComplicationDailyViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t UltravioletComplicationDailyViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t UltravioletComplicationDailyViewModel.current.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1 + *(type metadata accessor for UltravioletComplicationDailyViewModel() + 20);

  return sub_1BCA45690(v2, v0);
}

uint64_t type metadata accessor for UltravioletComplicationDailyViewModel()
{
  result = qword_1EDA174A0;
  if (!qword_1EDA174A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UltravioletComplicationDailyViewModel.daily.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1 + *(type metadata accessor for UltravioletComplicationDailyViewModel() + 24);

  return sub_1BCA45690(v2, v0);
}

uint64_t UltravioletComplicationDailyViewModel.date.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for UltravioletComplicationDailyViewModel() + 28);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t UltravioletComplicationDailyViewModel.timeZone.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for UltravioletComplicationDailyViewModel() + 32);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t UltravioletComplicationDailyViewModel.init(current:daily:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BCE19080();
  v10 = type metadata accessor for UltravioletComplicationDailyViewModel();
  sub_1BCCE1860(a1, a5 + v10[5]);
  sub_1BCCE1860(a2, a5 + v10[6]);
  v11 = v10[7];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v12 + 32))(a5 + v11, a3);
  v13 = v10[8];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v15 = *(v14 + 32);

  return v15(a5 + v13, a4);
}

uint64_t static UltravioletComplicationDailyViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE1A080();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C608);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48[-v24];
  if ((sub_1BCE19070() & 1) == 0)
  {
    goto LABEL_22;
  }

  v51 = v6;
  v26 = type metadata accessor for UltravioletComplicationDailyViewModel();
  v52 = a2;
  v50 = v26;
  v27 = *(v26 + 20);
  v28 = *(v18 + 48);
  sub_1BCA45690(a1 + v27, v25);
  sub_1BCA45690(v52 + v27, &v25[v28]);
  OUTLINED_FUNCTION_8_0(v25);
  if (v29)
  {
    OUTLINED_FUNCTION_8_0(&v25[v28]);
    if (v29)
    {
      sub_1BC94C05C(v25, &qword_1EBD07D88);
      goto LABEL_12;
    }

LABEL_10:
    v30 = v25;
LABEL_21:
    sub_1BC94C05C(v30, &qword_1EBD0C608);
    goto LABEL_22;
  }

  sub_1BCA45690(v25, v17);
  OUTLINED_FUNCTION_8_0(&v25[v28]);
  if (v29)
  {
    (*(v51 + 8))(v17, v4);
    goto LABEL_10;
  }

  v31 = v51;
  (*(v51 + 32))(v10, &v25[v28], v4);
  OUTLINED_FUNCTION_2_2();
  sub_1BCCE273C(v32, v33);
  v49 = sub_1BCE1D210();
  v34 = *(v31 + 8);
  v34(v10, v4);
  v34(v17, v4);
  sub_1BC94C05C(v25, &qword_1EBD07D88);
  if ((v49 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v35 = v50;
  v36 = *(v50 + 24);
  v37 = *(v18 + 48);
  sub_1BCA45690(a1 + v36, v22);
  v38 = v52 + v36;
  v39 = v52;
  sub_1BCA45690(v38, v22 + v37);
  OUTLINED_FUNCTION_8_0(v22);
  if (!v29)
  {
    sub_1BCA45690(v22, v14);
    OUTLINED_FUNCTION_8_0(v22 + v37);
    if (!v40)
    {
      v43 = v51;
      (*(v51 + 32))(v10, v22 + v37, v4);
      OUTLINED_FUNCTION_2_2();
      sub_1BCCE273C(v44, v45);
      v46 = sub_1BCE1D210();
      v47 = *(v43 + 8);
      v47(v10, v4);
      v47(v14, v4);
      v39 = v52;
      sub_1BC94C05C(v22, &qword_1EBD07D88);
      if ((v46 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    (*(v51 + 8))(v14, v4);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8_0(v22 + v37);
  if (!v29)
  {
LABEL_20:
    v30 = v22;
    goto LABEL_21;
  }

  sub_1BC94C05C(v22, &qword_1EBD07D88);
LABEL_25:
  if (sub_1BCE19010())
  {
    v41 = MEMORY[0x1BFB2BB80](a1 + *(v35 + 32), v39 + *(v35 + 32));
    return v41 & 1;
  }

LABEL_22:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_1BCD18AE0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E6572727563;
      break;
    case 2:
      result = 0x796C696164;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD18B6C(uint64_t a1)
{
  v2 = sub_1BCD18E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD18BA8(uint64_t a1)
{
  v2 = sub_1BCD18E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UltravioletComplicationDailyViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CDC0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD18E68();
  sub_1BCE1E170();
  v23 = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_7_54();
  sub_1BCCE273C(v9, v10);
  OUTLINED_FUNCTION_6_48();
  if (!v1)
  {
    type metadata accessor for UltravioletComplicationDailyViewModel();
    v22 = 1;
    sub_1BCE1A080();
    OUTLINED_FUNCTION_2_2();
    sub_1BCCE273C(v11, v12);
    OUTLINED_FUNCTION_14_28();
    v21 = 2;
    OUTLINED_FUNCTION_14_28();
    v20 = 3;
    sub_1BCE19060();
    OUTLINED_FUNCTION_6_51();
    sub_1BCCE273C(v13, v14);
    OUTLINED_FUNCTION_6_48();
    v19 = 4;
    sub_1BCE19470();
    OUTLINED_FUNCTION_8_50();
    sub_1BCCE273C(v15, v16);
    OUTLINED_FUNCTION_6_48();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCD18E68()
{
  result = qword_1EBD0CDC8;
  if (!qword_1EBD0CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CDC8);
  }

  return result;
}

uint64_t UltravioletComplicationDailyViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v54 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v57 = v7 - v6;
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v60 = v9;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v58 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D88);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_3();
  v59 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_36();
  v16 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v62 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v63 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CDD0);
  OUTLINED_FUNCTION_2();
  v64 = v22;
  v65 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - v23;
  v25 = type metadata accessor for UltravioletComplicationDailyViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD18E68();
  v66 = v24;
  v30 = v67;
  sub_1BCE1E160();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v67 = v2;
  v72 = 0;
  OUTLINED_FUNCTION_7_54();
  sub_1BCCE273C(v31, v32);
  v33 = v63;
  sub_1BCE1DF70();
  v34 = *(v62 + 32);
  v53 = v29;
  v34(v29, v33, v16);
  sub_1BCE1A080();
  v71 = 1;
  OUTLINED_FUNCTION_2_2();
  sub_1BCCE273C(v35, v36);
  v37 = v67;
  sub_1BCE1DF10();
  v52 = v16;
  v63 = v25;
  sub_1BCCE1860(v37, v53 + *(v25 + 20));
  v70 = 2;
  v38 = v59;
  v67 = 0;
  sub_1BCE1DF10();
  v39 = v61;
  v40 = v63;
  v41 = v53;
  sub_1BCCE1860(v38, v53 + *(v63 + 24));
  v69 = 3;
  OUTLINED_FUNCTION_6_51();
  sub_1BCCE273C(v42, v43);
  v44 = v58;
  sub_1BCE1DF70();
  v45 = v40;
  v46 = v64;
  (*(v60 + 32))(v41 + *(v45 + 28), v44, v39);
  v68 = 4;
  OUTLINED_FUNCTION_8_50();
  sub_1BCCE273C(v47, v48);
  v49 = v57;
  v50 = v56;
  sub_1BCE1DF70();
  (*(v46 + 8))(v66, v65);
  (*(v54 + 32))(v41 + *(v45 + 32), v49, v50);
  sub_1BCA4562C(v41, v55);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BCA45768(v41);
}

void sub_1BCD195DC()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    sub_1BCCE2898();
    if (v1 <= 0x3F)
    {
      sub_1BCE19060();
      if (v2 <= 0x3F)
      {
        sub_1BCE19470();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for UltravioletComplicationDailyViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCD19770()
{
  result = qword_1EBD0CDD8;
  if (!qword_1EBD0CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CDD8);
  }

  return result;
}

unint64_t sub_1BCD197C8()
{
  result = qword_1EBD0CDE0;
  if (!qword_1EBD0CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CDE0);
  }

  return result;
}

unint64_t sub_1BCD19820()
{
  result = qword_1EBD0CDE8;
  if (!qword_1EBD0CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CDE8);
  }

  return result;
}

uint64_t sub_1BCD19874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UltravioletComplicationDailyViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCD198D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {
      v10 = 0;
      goto LABEL_12;
    }

    sub_1BCE18760();
    if (sub_1BCE18750() == a2 && v7 == a3)
    {
      break;
    }

    v9 = sub_1BCE1E090();

    if (v9)
    {
      goto LABEL_11;
    }

    ++v5;
  }

LABEL_11:
  v10 = v5;
LABEL_12:

  return v10;
}

uint64_t URL.WeatherSourcePar.init(rawValue:)@<X0>(char *a1@<X8>)
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

uint64_t URL.WeatherSourcePar.rawValue.getter()
{
  if (*v0)
  {
    return 0x5F656C707061;
  }

  else
  {
    return 0x69775F656C707061;
  }
}

uint64_t sub_1BCD19AD0@<X0>(uint64_t *a1@<X8>)
{
  result = URL.WeatherSourcePar.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t URL.applyWeatherSourceQueryParams(for:)@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1BCE187F0();
  OUTLINED_FUNCTION_2();
  v37 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_1BCE18760();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CDF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - v16;
  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v38 = sub_1BCE1A340();

  sub_1BCE18DF0();
  sub_1BCE187D0();

  v18 = OUTLINED_FUNCTION_0_73();
  v39 = v1;
  if (v18 || (v19 = sub_1BCE18770()) == 0)
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v41 = v19;
  v20 = sub_1BCD1A404(&v41, 7496048, 0xE300000000000000);
  v21 = *(v41 + 16);
  if (v21 < v20)
  {
    __break(1u);
  }

  else
  {
    sub_1BCD1A2D4(v20, v21);
    sub_1BCE18740();
    v22 = v41;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }
  }

  sub_1BCB65C40();
  v22 = v33;
LABEL_6:
  v23 = *(v22 + 16);
  if (v23 >= *(v22 + 24) >> 1)
  {
    sub_1BCB65C40();
    v22 = v34;
  }

  *(v22 + 16) = v23 + 1;
  (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v14, v9);
  sub_1BCA301DC();
  v24 = [objc_opt_self() fahrenheit];
  v25 = v38;
  v26 = sub_1BCE1DAC0();

  if (v26)
  {
    v27 = 101;
  }

  else
  {
    v27 = 109;
  }

  v28 = v39;
  sub_1BCD1A048(v22, 0x7374696E75, 0xE500000000000000, v27, 0xE100000000000000);

  if (OUTLINED_FUNCTION_0_73())
  {
  }

  else
  {
    sub_1BCE18780();
  }

  if (OUTLINED_FUNCTION_0_73())
  {

    v29 = sub_1BCE18E40();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v29);
  }

  else
  {
    v31 = v36;
    v30 = v37;
    (*(v37 + 16))(v36, v17, v2);
    sub_1BCE18790();

    (*(v30 + 8))(v31, v2);
    v29 = sub_1BCE18E40();
    if (__swift_getEnumTagSinglePayload(v8, 1, v29) != 1)
    {
      (*(*(v29 - 8) + 32))(v40, v8, v29);
      return sub_1BC94C0B4(v17, &qword_1EBD0CDF0);
    }
  }

  sub_1BC94C0B4(v8, &qword_1EBD09490);
  sub_1BCE18E40();
  (*(*(v29 - 8) + 16))(v40, v28, v29);
  return sub_1BC94C0B4(v17, &qword_1EBD0CDF0);
}

uint64_t sub_1BCD1A048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BCE18760();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;

  v13 = sub_1BCD1A404(&v21, a2, a3);
  v14 = *(v21 + 16);
  if (v14 < v13)
  {
    __break(1u);
LABEL_10:
    sub_1BCB65C40();
    v15 = v18;
    goto LABEL_4;
  }

  sub_1BCD1A2D4(v13, v14);
  if (!a5)
  {
    return v21;
  }

  sub_1BCE18740();
  v15 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_1BCB65C40();
    v15 = v19;
  }

  *(v15 + 16) = v16 + 1;
  (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v12, v9);
  return v15;
}

uint64_t sub_1BCD1A218(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1BCD87C64(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BCA168FC(v8 + 32 + 8 * a2, v9 - a2, v8 + 32 + 8 * v5);
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BCD1A2D4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BCD87C7C(v4 - v6, 1);
  v8 = *v2;
  v9 = *(sub_1BCE18760() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_1BCA14FB0(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1BCD1A404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = sub_1BCE18760();
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = *a1;

  v16 = v53;
  result = sub_1BCD198D8(v15, a2, a3);
  if (v16)
  {
  }

  v46 = v14;
  v50 = a2;
  if (v18)
  {
    v19 = *(v15 + 16);

    return v19;
  }

  v42 = v8;
  v43 = v11;
  v39 = 0;
  v40 = a1;
  v47 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v21 = v15;
  v48 = v6;
  v49 = (v6 + 8);
  v41 = (v6 + 40);
  v22 = v44;
  v23 = v46;
  v45 = a3;
  v53 = v6 + 16;
  while (1)
  {
    v24 = *(v21 + 16);
    if (v20 == v24)
    {

      return v47;
    }

    if (v20 >= v24)
    {
      break;
    }

    v51 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25 = v21 + v51;
    v26 = *(v6 + 72);
    v27 = *(v6 + 16);
    v52 = v26 * v20;
    v27(v23, v21 + v51 + v26 * v20, v22);
    if (sub_1BCE18750() == v50 && v28 == a3)
    {

      result = (*v49)(v23, v22);
      goto LABEL_16;
    }

    v30 = sub_1BCE1E090();

    result = (*v49)(v23, v22);
    if (v30)
    {
      a3 = v45;
      v23 = v46;
LABEL_16:
      v6 = v48;
      goto LABEL_27;
    }

    v31 = v47;
    if (v20 == v47)
    {
      a3 = v45;
      v23 = v46;
      v6 = v48;
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v32 = *(v21 + 16);
      if (v47 >= v32)
      {
        goto LABEL_31;
      }

      v33 = v26 * v47;
      v34 = v44;
      result = (v27)(v43, v25 + v26 * v47, v44);
      if (v20 >= v32)
      {
        goto LABEL_32;
      }

      v35 = v52;
      v27(v42, v25 + v52, v34);
      v22 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB3D9E8();
        v21 = v38;
      }

      v6 = v48;
      v36 = v21 + v51;
      v37 = *v41;
      result = (*v41)(v21 + v51 + v33, v42, v34);
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_33;
      }

      result = v37(v36 + v35, v43, v34);
      *v40 = v21;
      a3 = v45;
      v23 = v46;
      v31 = v47;
    }

    v47 = v31 + 1;
LABEL_27:
    ++v20;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1BCD1A7C8()
{
  result = qword_1EBD0CDF8;
  if (!qword_1EBD0CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CDF8);
  }

  return result;
}

_BYTE *_s16WeatherSourceParOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double sub_1BCD1A8E8@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE41A20;
  *(v2 + 232) = xmmword_1BCE5AEB0;
  *(v2 + 248) = xmmword_1BCE5AEC0;
  *(v2 + 528) = xmmword_1BCE5AF60;
  *(v2 + 560) = xmmword_1BCE5AF70;
  *(v2 + 576) = xmmword_1BCE5AF80;
  *(v2 + 592) = xmmword_1BCE5AF90;
  *(v2 + 608) = xmmword_1BCE5AFA0;
  *(v2 + 704) = xmmword_1BCE5AFE0;
  *(v2 + 720) = xmmword_1BCE5AFF0;
  *(v2 + 768) = xmmword_1BCE64860;
  *(v2 + 784) = xmmword_1BCE64870;
  *(v2 + 800) = xmmword_1BCE64880;
  *(v2 + 816) = xmmword_1BCE64890;
  *(v2 + 832) = xmmword_1BCE5B040;
  *(v2 + 848) = xmmword_1BCE5B050;
  *(v2 + 912) = xmmword_1BCE648B0;
  *(v2 + 928) = xmmword_1BCE648C0;
  *(v2 + 944) = xmmword_1BCE648D0;
  *(v2 + 960) = xmmword_1BCE648E0;
  *(v2 + 1488) = xmmword_1BCE64A50;
  *(v2 + 1504) = xmmword_1BCE64A60;
  *(v2 + 1520) = xmmword_1BCE64A70;
  *(v2 + 1536) = xmmword_1BCE64A80;
  *(v2 + 1552) = xmmword_1BCE64A90;
  *(v2 + 1568) = xmmword_1BCE41E30;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1376) = xmmword_1BCE64A00;
  *(v2 + 1616) = xmmword_1BCE64A00;
  *(v2 + 1392) = xmmword_1BCE64A10;
  *(v2 + 1632) = xmmword_1BCE64A10;
  *(v2 + 1408) = xmmword_1BCE64A20;
  *(v2 + 1648) = xmmword_1BCE64A20;
  *(v2 + 1424) = xmmword_1BCE64A30;
  *(v2 + 1664) = xmmword_1BCE64A30;
  *(v2 + 1440) = xmmword_1BCE64A40;
  *(v2 + 1680) = xmmword_1BCE64A40;
  *(v2 + 1248) = xmmword_1BCE649A0;
  *(v2 + 1728) = xmmword_1BCE649A0;
  *(v2 + 1264) = xmmword_1BCE649B0;
  *(v2 + 1744) = xmmword_1BCE649B0;
  *(v2 + 1280) = xmmword_1BCE649C0;
  *(v2 + 1760) = xmmword_1BCE649C0;
  *(v2 + 1296) = xmmword_1BCE649D0;
  *(v2 + 1776) = xmmword_1BCE649D0;
  *(v2 + 1312) = xmmword_1BCE649E0;
  *(v2 + 1792) = xmmword_1BCE649E0;
  *(v2 + 1328) = xmmword_1BCE649F0;
  *(v2 + 1808) = xmmword_1BCE649F0;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1136) = xmmword_1BCE64950;
  *(v2 + 1856) = xmmword_1BCE64950;
  *(v2 + 1152) = xmmword_1BCE64960;
  *(v2 + 1872) = xmmword_1BCE64960;
  *(v2 + 1168) = xmmword_1BCE64970;
  *(v2 + 1888) = xmmword_1BCE64970;
  *(v2 + 1184) = xmmword_1BCE64980;
  *(v2 + 1904) = xmmword_1BCE64980;
  *(v2 + 1200) = xmmword_1BCE64990;
  *(v2 + 1920) = xmmword_1BCE64990;
  *(v2 + 1968) = xmmword_1BCE648F0;
  *(v2 + 1008) = xmmword_1BCE648F0;
  *(v2 + 1024) = xmmword_1BCE64900;
  *(v2 + 896) = xmmword_1BCE648A0;
  *(v2 + 1984) = xmmword_1BCE64900;
  *(v2 + 1040) = xmmword_1BCE64910;
  *(v2 + 2000) = xmmword_1BCE64910;
  *(v2 + 1056) = xmmword_1BCE64920;
  *(v2 + 2016) = xmmword_1BCE64920;
  *(v2 + 1072) = xmmword_1BCE64930;
  *(v2 + 2032) = xmmword_1BCE64930;
  *(v2 + 1088) = xmmword_1BCE64940;
  *(v2 + 2048) = xmmword_1BCE64940;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 2096) = xmmword_1BCE648A0;
  *(v2 + 2112) = xmmword_1BCE64AA0;
  *(v2 + 2128) = xmmword_1BCE64AB0;
  *(v2 + 2144) = xmmword_1BCE64AC0;
  *(v2 + 2160) = xmmword_1BCE64AD0;
  *(v2 + 2208) = xmmword_1BCE64AE0;
  *(v2 + 2224) = xmmword_1BCE64AF0;
  *(v2 + 2240) = xmmword_1BCE64B00;
  *(v2 + 2256) = xmmword_1BCE64B10;
  *(v2 + 2272) = xmmword_1BCE64B20;
  *(v2 + 2288) = xmmword_1BCE64B30;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2336) = xmmword_1BCE5AFB0;
  *(v2 + 656) = xmmword_1BCE5AFB0;
  *(v2 + 672) = xmmword_1BCE5AFC0;
  *(v2 + 688) = xmmword_1BCE5AFD0;
  *(v2 + 2352) = xmmword_1BCE5AFC0;
  *(v2 + 384) = xmmword_1BCE41AA0;
  *(v2 + 2368) = xmmword_1BCE5AFD0;
  *(v2 + 2384) = xmmword_1BCE5B320;
  *(v2 + 2400) = xmmword_1BCE5B330;
  *(v2 + 2448) = xmmword_1BCE5B340;
  *(v2 + 2464) = xmmword_1BCE5B350;
  *(v2 + 2480) = xmmword_1BCE5B360;
  *(v2 + 2496) = xmmword_1BCE5B370;
  *(v2 + 2512) = xmmword_1BCE5B380;
  *(v2 + 2528) = xmmword_1BCE5B390;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  *(v2 + 2608) = xmmword_1BCE5AF30;
  *(v2 + 448) = xmmword_1BCE5AF30;
  *(v2 + 464) = xmmword_1BCE5AF40;
  v3 = vdupq_n_s64(0x3F9010101FFFFB37uLL);
  *(v2 + 2624) = xmmword_1BCE5AF40;
  *(v2 + 288) = v3;
  *(v2 + 304) = xmmword_1BCE5AED0;
  *(v2 + 2688) = v3;
  *(v2 + 2704) = xmmword_1BCE5AED0;
  *(v2 + 2752) = xmmword_1BCE5AEF0;
  *(v2 + 352) = xmmword_1BCE5AEF0;
  *(v2 + 368) = xmmword_1BCE5AF00;
  *(v2 + 144) = xmmword_1BCE41A90;
  *(v2 + 2768) = xmmword_1BCE5AF00;
  *(v2 + 2784) = xmmword_1BCE41A90;
  *(v2 + 2816) = xmmword_1BCE5B3A0;
  *(v2 + 2576) = xmmword_1BCE5AF10;
  *(v2 + 416) = xmmword_1BCE5AF10;
  *(v2 + 432) = xmmword_1BCE5AF20;
  *(v2 + 2592) = xmmword_1BCE5AF20;
  *(v2 + 2832) = xmmword_1BCE5AF20;
  *(v2 + 2848) = xmmword_1BCE5B3B0;
  *(v2 + 2864) = xmmword_1BCE5B3C0;
  *(v2 + 2880) = xmmword_1BCE5B3D0;
  *(v2 + 2640) = xmmword_1BCE5AF50;
  *(v2 + 480) = xmmword_1BCE5AF50;
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
  *(v2 + 168) = xmmword_1BCE5AE50;
  *(v2 + 2928) = xmmword_1BCE5AE50;
  *(v2 + 48) = xmmword_1BCE5AE50;
  *(v2 + 64) = xmmword_1BCE5AE60;
  *(v2 + 184) = xmmword_1BCE5AE60;
  *(v2 + 2944) = xmmword_1BCE5AE60;
  *(v2 + 80) = xmmword_1BCE5AE70;
  *(v2 + 96) = xmmword_1BCE5AE80;
  *(v2 + 200) = xmmword_1BCE5AE70;
  *(v2 + 2960) = xmmword_1BCE5AE70;
  *(v2 + 2720) = xmmword_1BCE5AEE0;
  *(v2 + 320) = xmmword_1BCE5AEE0;
  *(v2 + 336) = xmmword_1BCE5AE80;
  *(v2 + 216) = xmmword_1BCE5AE80;
  *(v2 + 544) = xmmword_1BCE5AE80;
  *(v2 + 2736) = xmmword_1BCE5AE80;
  *(v2 + 2976) = xmmword_1BCE5AE80;
  result = 0.370000005;
  *(v2 + 2992) = xmmword_1BCE5AE90;
  *(v2 + 112) = xmmword_1BCE5AE90;
  *(v2 + 128) = xmmword_1BCE5AEA0;
  *(v2 + 3008) = xmmword_1BCE5AEA0;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  *(v2 + 160) = 0;
  *(v2 + 264) = 0x3FE0000000000000;
  *(v2 + 272) = 0xC03E000000000000;
  *(v2 + 280) = 0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x3F9010101FFFFB37;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FBE1E1E20000052;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v5;
  *(v2 + 764) = *&v5[3];
  *(v2 + 880) = 0;
  *(v2 + 881) = *v6;
  *(v2 + 884) = *&v6[3];
  *(v2 + 888) = 0x3FC54C0000000000;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v7[3];
  *(v2 + 1001) = *v7;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v8;
  *(v2 + 1124) = *&v8[3];
  *(v2 + 1128) = 0x3F5B000000000000;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v9[3];
  *(v2 + 1241) = *v9;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v10[3];
  *(v2 + 1361) = *v10;
  *(v2 + 1368) = 0x3F42000000000000;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v11[3];
  *(v2 + 1481) = *v11;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v12[3];
  *(v2 + 1601) = *v12;
  *(v2 + 1608) = 0x3F42000000000000;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v13[3];
  *(v2 + 1721) = *v13;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v14[3];
  *(v2 + 1841) = *v14;
  *(v2 + 1848) = 0x3F5B000000000000;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v15[3];
  *(v2 + 1961) = *v15;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v16[3];
  *(v2 + 2081) = *v16;
  *(v2 + 2088) = 0x3FC54C0000000000;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v17[3];
  *(v2 + 2201) = *v17;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v18[3];
  *(v2 + 2321) = *v18;
  *(v2 + 2328) = 0x3FBE1E1E20000052;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v19[3];
  *(v2 + 2441) = *v19;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v20[3];
  *(v2 + 2561) = *v20;
  *(v2 + 2568) = 0x3F9010101FFFFB37;
  *(v2 + 2672) = 0xC03E000000000000;
  *(v2 + 2680) = 1;
  *(v2 + 2684) = *&v21[3];
  *(v2 + 2681) = *v21;
  *(v2 + 2800) = 1;
  *(v2 + 2804) = *&v22[3];
  *(v2 + 2801) = *v22;
  *(v2 + 2808) = 0x3F87026040000453;
  *(v2 + 2912) = 0xC056800000000000;
  *(v2 + 2920) = 1;
  *(v2 + 2924) = *&v23[3];
  *(v2 + 2921) = *v23;
  *(v2 + 3024) = 0x3FE0000000000000;
  *a1 = 0x3FFB333333333333;
  a1[1] = v2;
  return result;
}

uint64_t sub_1BCD1B12C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement(0);
  v7 = *(HourPrecipitationChartView - 8);
  MEMORY[0x1EEE9AC00](HourPrecipitationChartView - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1BCA15530(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1BCE19F80() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1BCA15530(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1BC960388(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCD1B328@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E18);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t NextHourPrecipitationChartViewModelFactory.__allocating_init()()
{
  OUTLINED_FUNCTION_0_20();
  result = swift_allocObject();
  *(result + 40) = &type metadata for NextHourPrecipitationChartViewModelFactory.AlwaysRelativeToCurrentTimeRule;
  *(result + 48) = &off_1F3B58DF8;
  return result;
}

uint64_t NextHourPrecipitationChartViewModelFactory.init()()
{
  result = v0;
  *(v0 + 40) = &type metadata for NextHourPrecipitationChartViewModelFactory.AlwaysRelativeToCurrentTimeRule;
  *(v0 + 48) = &off_1F3B58DF8;
  return result;
}

uint64_t NextHourPrecipitationChartViewModelFactory.__allocating_init(leadingPrecipitationValueRule:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0_20();
  v2 = swift_allocObject();
  sub_1BC947AB4(a1, v2 + 16);
  return v2;
}

void NextHourPrecipitationChartViewModelFactory.makeViewModel(for:precipitation:placement:currentTime:minutesToConsider:)(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v199 = a4;
  v180 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_43(v11);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D38);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_43(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E70);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_43(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E68);
  OUTLINED_FUNCTION_14(v21);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_43(v155 - v23);
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue(0);
  v25 = OUTLINED_FUNCTION_14(HourPrecipitationChartView);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_43(v28);
  v198 = sub_1BCE19F40();
  OUTLINED_FUNCTION_2();
  v183 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v197 = (v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE00);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_0();
  v193 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_35();
  v195 = v35;
  v36 = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
  OUTLINED_FUNCTION_2();
  v194 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE08);
  OUTLINED_FUNCTION_14(v41);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v155 - v43;
  v45 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v181 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v155 - v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_6_1();
  v191 = v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = v155 - v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08588);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  v61 = MEMORY[0x1EEE9AC00](v60);
  v172 = *a2;
  (*(v63 + 16))(v155 - v62, a1, v61);
  v175 = a3;
  v201 = a3;
  v64 = sub_1BCB12E20(sub_1BCD1C6E0, v200);
  v162 = 0;
  sub_1BCA1417C(v64, v44);
  v65 = sub_1BCE19600();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v65);
  v182 = v45;
  v168 = v54;
  if (EnumTagSinglePayload == 1)
  {

    sub_1BC94C05C(v44, &qword_1EBD0CE08);
    v67 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  sub_1BCE195F0();
  v192 = *(v65 - 8);
  (*(v192 + 8))(v44, v65);
  v68 = v191;
  Date.zeroSeconds.getter();
  v69 = v181;
  v70 = v181 + 8;
  v156 = *(v181 + 8);
  v156(v54, v45);
  (*(v69 + 32))(v59, v68, v45);
  v71 = sub_1BCAE6234(v199, v64);
  v190 = v72;
  v188 = v73;
  v189 = v74 >> 1;
  v75 = (v74 >> 1) - v72;
  if (__OFSUB__(v74 >> 1, v72))
  {
    goto LABEL_33;
  }

  v155[2] = v70;
  if (v75)
  {
    v155[1] = v71;
    v202 = MEMORY[0x1E69E7CC0];
    sub_1BCA15588(0, v75 & ~(v75 >> 63), 0);
    if (v75 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v187 = v65;
    v191 = v59;
    v76 = 0;
    v185 = v192 + 16;
    v67 = v202;
    v184 = v192 + 32;
    ++v183;
    v186 = v75;
    while (v190 + v76 < v189)
    {
      v77 = v196;
      v78 = *(v196 + 48);
      v79 = v192;
      v80 = v187;
      v81 = v36;
      v82 = v40;
      v83 = v195;
      (*(v192 + 16))(v195 + v78, v188 + *(v192 + 72) * (v190 + v76), v187);
      v199 = v67;
      v84 = v193;
      *v193 = v76;
      v85 = v83 + v78;
      v40 = v82;
      (*(v79 + 32))(&v84[*(v77 + 48)], v85, v80);
      sub_1BCE18FA0();
      v86 = v197;
      sub_1BCE195E0();
      sub_1BCE19F20();
      v88 = v87;
      (*v183)(v86, v198);
      *(v82 + *(v81 + 20)) = v88;
      v89 = v84;
      v67 = v199;
      sub_1BC94C05C(v89, &qword_1EBD0CE00);
      v202 = v67;
      v91 = *(v67 + 16);
      v90 = *(v67 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_1BCA15588(v90 > 1, v91 + 1, 1);
        v67 = v202;
      }

      *(v67 + 16) = v91 + 1;
      sub_1BC960388(v82, v67 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v91, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
      if (v76 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      ++v76;
      v36 = v81;
      if (v186 == v76)
      {
        swift_unknownObjectRelease();
        v45 = v182;
        v59 = v191;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRelease();
  v67 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v92 = v156;

  v92(v59, v45);
LABEL_15:
  v93 = v180;
  v94 = v179;
  v95 = v178;
  v96 = v174[5];
  v97 = v174[6];
  __swift_project_boxed_opaque_existential_1(v174 + 2, v96);
  (*(v97 + 8))(v175, v96, v97);
  v98 = v172;
  v99 = v172 == 1;
  LOBYTE(v97) = v172 == 2;
  LOBYTE(v202) = v172;
  v100 = sub_1BCD1C700(v67);

  v101 = v94;
  sub_1BCD1C934(v94, v95);
  *v93 = v67;
  *(v93 + 8) = v98;
  *(v93 + 24) = v99;
  HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel(0);
  *(v93 + *(HourPrecipitationChartViewModel + 44)) = v97;
  v103 = HourPrecipitationChartViewModel;
  *(v93 + 25) = v99;
  *(v93 + 16) = v100;
  v199 = *(HourPrecipitationChartViewModel + 40);
  v104 = v95;
  sub_1BCD1C934(v95, v93 + v199);
  *(v93 + 26) = v99;
  v105 = v173;
  sub_1BCA13FBC(v67, v173);
  v106 = __swift_getEnumTagSinglePayload(v105, 1, v36);
  v169 = v36;
  v198 = v103;
  if (v106 == 1)
  {

    sub_1BC94C05C(v105, &qword_1EBD08E70);
    v107 = v176;
    v108 = v101;
    v109 = v104;
LABEL_22:
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E78);
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v120);
    v121 = v170;
    v122 = v177;
    goto LABEL_23;
  }

  v110 = v181;
  v111 = v168;
  v112 = v182;
  v196 = *(v181 + 16);
  (v196)(v168, v105, v182);

  OUTLINED_FUNCTION_0_74();
  sub_1BCD1C998(v105, v113);
  sub_1BCE18FA0();
  v115 = v110 + 8;
  v114 = *(v110 + 8);
  v114(v111, v112);
  v108 = v110 + 32;
  v109 = v166;
  OUTLINED_FUNCTION_12_44();
  v197 = v116;
  v116();
  v93 = v167;
  sub_1BCA3F2CC(v67, v167);
  if (__swift_getEnumTagSinglePayload(v93, 1, v36) == 1)
  {
    v114(v109, v112);
    sub_1BC94C05C(v93, &qword_1EBD08E70);
LABEL_21:
    OUTLINED_FUNCTION_7_57();
    v36 = v169;
    v103 = v198;
    v107 = v176;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_12_44();
  (v196)();
  OUTLINED_FUNCTION_0_74();
  sub_1BCD1C998(v93, v117);
  v118 = v160;
  sub_1BCE18FA0();
  v114(v111, v112);
  v93 = v161;
  v119 = v197;
  (v197)(v161, v118, v112);
  sub_1BCAE5204();
  if (sub_1BCE1D1E0())
  {
    v114(v93, v112);
    v114(v109, v112);
    goto LABEL_21;
  }

  v195 = v115;
  v196 = v114;
  v148 = sub_1BCE1D1F0();
  v107 = v176;
  if ((v148 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v149 = v157;
  (v119)(v157, v109, v112);
  v150 = v158;
  OUTLINED_FUNCTION_12_44();
  v119();
  v93 = v159;
  sub_1BC9660CC(v149, v159, &qword_1EBD08D38);
  v151 = v119;
  v152 = *(v150 + 48);
  OUTLINED_FUNCTION_12_44();
  v151();
  v109 = v196;
  (v196)(v93 + v152, v112);
  sub_1BC999734(v149, v93, &qword_1EBD08D38);
  v153 = *(v150 + 48);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E78);
  (v151)(v107 + *(v154 + 36), v93 + v153, v112);
  v109(v93, v112);
  __swift_storeEnumTagSinglePayload(v107, 0, 1, v154);
  OUTLINED_FUNCTION_7_57();
  v121 = v170;
  v36 = v169;
  v122 = v177;
  v103 = v198;
LABEL_23:
  v123 = v199;
  sub_1BC999734(v107, v93 + v103[13], &qword_1EBD08E68);
  sub_1BCD1C934(v93 + v123, v121);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E18);
  if (__swift_getEnumTagSinglePayload(v121, 1, v124) == 1)
  {

    OUTLINED_FUNCTION_5_61();
    sub_1BCD1C998(v109, v125);
    sub_1BCD1C998(v108, v122);
    __swift_storeEnumTagSinglePayload(v93 + v103[12], 1, 1, v36);
    __swift_storeEnumTagSinglePayload(v93 + v103[14], 1, 1, v182);
    sub_1BCD1C998(v121, v122);
  }

  else
  {
    v126 = v181;
    v127 = OUTLINED_FUNCTION_10_1();
    v128 = v182;
    v129(v127);
    v130 = v171;
    v131 = sub_1BCE18F70();
    MEMORY[0x1EEE9AC00](v131);
    v155[-2] = v130;
    v132 = v163;
    sub_1BCAD1434();
    v133 = v132;

    v134 = OUTLINED_FUNCTION_13_39();
    sub_1BC9660CC(v134, v135, v136);
    v137 = v164;
    sub_1BC9660CC(v132, v164, &qword_1EBD08E70);
    if (__swift_getEnumTagSinglePayload(v137, 1, v169) == 1)
    {
      sub_1BC94C05C(v132, &qword_1EBD08E70);
      (*(v126 + 8))(v177, v128);
      sub_1BCD1C998(v109, type metadata accessor for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue);
      sub_1BCD1C998(v108, type metadata accessor for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue);
      sub_1BC94C05C(v137, &qword_1EBD08E70);
      v138 = 1;
      v139 = v165;
    }

    else
    {
      v140 = v168;
      (*(v126 + 16))(v168, v137, v128);
      OUTLINED_FUNCTION_0_74();
      sub_1BCD1C998(v137, v141);
      v142 = v133;
      v139 = v165;
      sub_1BCE18FA0();
      v143 = *(v126 + 8);
      v143(v140, v128);
      sub_1BC94C05C(v142, &qword_1EBD08E70);
      v143(v177, v128);
      OUTLINED_FUNCTION_5_61();
      sub_1BCD1C998(v109, v144);
      sub_1BCD1C998(v108, v143);
      v138 = 0;
    }

    __swift_storeEnumTagSinglePayload(v139, v138, 1, v128);
    v145 = OUTLINED_FUNCTION_13_39();
    sub_1BC999734(v145, v146, v147);
    sub_1BC94C05C(v171, &qword_1EBD07868);
  }
}

BOOL sub_1BCD1C5E0()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE195F0();
  sub_1BCAE5204();
  v4 = sub_1BCE1D1E0();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t sub_1BCD1C700(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E70);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5];
  v7 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  v16 = 0;
  if (*v1 == 1)
  {
    sub_1BCA13FBC(a1, v6);
    HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, HourPrecipitationChartView) == 1)
    {
      sub_1BC94C05C(v6, &qword_1EBD08E70);
      return 0;
    }

    else
    {
      (*(v9 + 16))(v12, v6, v7);
      OUTLINED_FUNCTION_0_74();
      sub_1BCD1C998(v6, v18);
      (*(v9 + 32))(v15, v12, v7);
      v19 = sub_1BCE19F70();
      MEMORY[0x1EEE9AC00](v19);
      *&v21[-16] = v15;
      v16 = sub_1BCD1B12C(sub_1BCD1CC24, &v21[-32], v19);

      (*(v9 + 8))(v15, v7);
    }
  }

  return v16;
}

uint64_t sub_1BCD1C934(uint64_t a1, uint64_t a2)
{
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue(0);
  (*(*(HourPrecipitationChartView - 8) + 16))(a2, a1, HourPrecipitationChartView);
  return a2;
}

uint64_t sub_1BCD1C998(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t NextHourPrecipitationChartViewModelFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OUTLINED_FUNCTION_0_20();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BCD1CA64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE19060();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  sub_1BCE19F60();
  v10 = v9;
  type metadata accessor for NextHourPrecipitationStringBuilder();
  v11 = static NextHourPrecipitationStringBuilder.buildIntensityString(for:)();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  (*(v5 + 32))(a2, v8, v4);
  result = type metadata accessor for NextHourPrecipitationChartViewModel.ScaleLabelElement(0);
  *(a2 + *(result + 20)) = v10 + 1.0;
  v16 = (a2 + *(result + 24));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t DailyForecastViewModelFactory.init(appConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BCE1A4E0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

void *DailyForecastViewModelFactory.makeDailyForecastViewModel(from:timeZone:)(uint64_t a1, uint64_t a2)
{
  v160 = a1;
  v178 = sub_1BCE1E060();
  OUTLINED_FUNCTION_2();
  v193 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v177 = v5;
  OUTLINED_FUNCTION_13();
  v203 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v192 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  v202 = v8 - v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  v201 = v11;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v191 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v200 = v151 - v18;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v19);
  v175 = v151 - v20;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35();
  v199 = v22;
  OUTLINED_FUNCTION_13();
  v23 = type metadata accessor for DailyForecastViewModel();
  OUTLINED_FUNCTION_2();
  v174 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v151 - v30;
  v32 = type metadata accessor for ConditionViewModel();
  MEMORY[0x1EEE9AC00](v32 - 8);
  OUTLINED_FUNCTION_5_1();
  v205 = v33;
  OUTLINED_FUNCTION_13();
  v198 = sub_1BCE19BA0();
  OUTLINED_FUNCTION_2();
  v190 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_1();
  v204 = v36;
  OUTLINED_FUNCTION_13();
  v172 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v189 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_1();
  v197 = v39;
  OUTLINED_FUNCTION_13();
  v159 = sub_1BCE196E0();
  OUTLINED_FUNCTION_2();
  v188 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_1();
  v158 = v42;
  OUTLINED_FUNCTION_13();
  v184 = sub_1BCE19540();
  OUTLINED_FUNCTION_2();
  v186 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_1();
  v208 = v45;
  OUTLINED_FUNCTION_13();
  v185 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v207 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_3();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v196 = v151 - v52;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_35();
  v187 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v194 = v151 - v56;
  OUTLINED_FUNCTION_13();
  v155 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v156 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_3();
  v195 = (v59 - v60);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_35();
  v154 = v62;
  OUTLINED_FUNCTION_13();
  v63 = sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v64 = sub_1BCE1A340();

  if (qword_1EDA1BCD8 != -1)
  {
    swift_once();
  }

  v65 = sub_1BCE1ACC0();
  v66 = __swift_project_value_buffer(v65, qword_1EDA1BCE0);
  v67 = v64;
  v153 = v66;
  v68 = sub_1BCE1ACA0();
  v69 = sub_1BCE1D8D0();

  v70 = os_log_type_enabled(v68, v69);
  v179 = a2;
  v176 = v16;
  v173 = v28;
  v180 = v50;
  v183 = v67;
  if (v70)
  {
    v71 = v67;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v209 = v71;
    v210 = v73;
    *v72 = 136446210;
    sub_1BCA301DC();
    v74 = v71;
    v75 = sub_1BCE1D2F0();
    v77 = v63;
    v78 = sub_1BC98FE38(v75, v76, &v210);

    *(v72 + 4) = v78;
    v63 = v77;
    _os_log_impl(&dword_1BC940000, v68, v69, "Building daily forecast model. - unit: %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x1BFB31B10](v73, -1, -1);
    MEMORY[0x1BFB31B10](v72, -1, -1);
  }

  v79 = v154;
  sub_1BCE192A0();
  v80 = sub_1BCE199F0();
  MEMORY[0x1EEE9AC00](v80);
  v151[-2] = v79;
  v81 = sub_1BCB130AC(sub_1BCD1E010, &v151[-4]);
  v82 = v196;
  sub_1BCE197B0();
  v83 = v195;
  sub_1BCE192A0();
  sub_1BCE19290();
  v84 = *(v156 + 8);
  v85 = v83;
  v156 += 8;
  v86 = v84;
  v84(v85, v155);
  v87 = v207[1];
  v88 = v185;
  v182 = v207 + 1;
  v181 = v87;
  v87(v82, v185);
  v89 = *(v81 + 16);
  if (v89)
  {
    v152 = v86;
    v170 = *(v186 + 16);
    v90 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v151[1] = v81;
    v91 = v81 + v90;
    v169 = *(v186 + 72);
    v157 = v188 + 8;
    v168 = (v207 + 2);
    v196 = (v192 + 8);
    v195 = (v191 + 8);
    v194 = (v191 + 32);
    v167 = (v190 + 16);
    v166 = *MEMORY[0x1E69E7038];
    v165 = (v193 + 104);
    v164 = (v193 + 8);
    v163 = v190 + 8;
    v162 = v189 + 8;
    v186 += 16;
    v161 = v186 - 8;
    v207 = MEMORY[0x1E69E7CC0];
    v92 = v208;
    v93 = v180;
    v171 = v63;
    do
    {
      v193 = v89;
      v192 = v91;
      v170(v92);
      sub_1BCE194F0();
      v94 = sub_1BCE19010();
      if (v94)
      {
        v95 = v158;
        sub_1BCE199E0();
        v96 = sub_1BCE19620();
        OUTLINED_FUNCTION_6_6();
        v97(v95, v159);
      }

      else
      {
        v96 = 1;
      }

      v98 = v175;
      if (qword_1EDA1EF48 != -1)
      {
        swift_once();
      }

      v191 = OUTLINED_FUNCTION_10_47();
      v190 = v99;
      if (qword_1EDA1EBE0 != -1)
      {
        swift_once();
      }

      v189 = OUTLINED_FUNCTION_10_47();
      v188 = v100;
      v101 = v197;
      DayWeather.conditionOfRelevance(isToday:)(v94 & 1);
      v102 = DayWeather.precipitationOfRelevance(isToday:)(v204, v94 & 1);
      ConditionViewModelFactory.makeConditionViewModel(from:isDaytime:)(v101, v96 & 1, v205);
      sub_1BCE19080();
      (*v168)(&v31[v23[5]], v93, v88);
      sub_1BCE194C0();
      if (qword_1EDA1F658 != -1)
      {
        swift_once();
      }

      sub_1BCE1A9F0();

      sub_1BCE1A3A0();
      v103 = sub_1BCE1A410();
      v104 = v206;
      sub_1BCE18680();

      v105 = v104;
      sub_1BCE185E0();
      if (v106 == 0.0)
      {
        sub_1BCE185F0();
      }

      v107 = v23[6];
      v108 = *v196;
      (*v196)(v201, v203);
      v109 = *v195;
      (*v195)(v199, v104);
      v110 = *v194;
      (*v194)(&v31[v107], v98, v105);
      sub_1BCE194A0();

      sub_1BCE1A9F0();

      sub_1BCE1A3A0();
      v111 = sub_1BCE1A410();
      v112 = v176;
      sub_1BCE18680();

      v113 = v206;
      sub_1BCE185E0();
      if (v114 == 0.0)
      {
        sub_1BCE185F0();
      }

      v115 = v23[7];
      v108(v202, v203);
      v109(v200, v113);
      v110(&v31[v115], v112, v113);
      sub_1BCD1E030(v205, &v31[v23[8]], type metadata accessor for ConditionViewModel);
      (*v167)(&v31[v23[9]], v204, v198);
      v116 = *v165;
      v117 = v177;
      v118 = v166;
      v119 = v178;
      (*v165)(v177, v166, v178);
      v120 = Double.nearestMultiple(of:roundingRule:)(v117, 0.05, v102);
      v121 = *v164;
      (*v164)(v117, v119);
      v116(v117, v118, v119);
      Double.nearestMultiple(of:roundingRule:)(v117, 0.05, v102);
      v121(v117, v119);
      v122 = sub_1BCE19B70();
      v124 = v123;
      v125 = NSUnitTemperature.accessibilityString()();
      sub_1BCE1A4D0();
      sub_1BCE194E0();
      v126 = sub_1BCE1A170();
      OUTLINED_FUNCTION_9_48(v126);
      sub_1BCE19500();
      v127 = sub_1BCE19AD0();
      OUTLINED_FUNCTION_9_48(v127);
      sub_1BCE19510();
      sub_1BCE19520();
      *&v31[v23[10]] = v120;
      v128 = &v31[v23[11]];
      *v128 = v122;
      v128[1] = v124;
      *&v31[v23[12]] = v125;
      v129 = &v31[v23[13]];
      v130 = v190;
      *v129 = v191;
      v129[1] = v130;
      v131 = &v31[v23[14]];
      v132 = v188;
      *v131 = v189;
      v131[1] = v132;
      *&v31[v23[19]] = v133;
      v134 = v173;
      sub_1BCD1E030(v31, v173, type metadata accessor for DailyForecastViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB6661C();
        v207 = v142;
      }

      v88 = v185;
      v135 = v184;
      v136 = v207[2];
      if (v136 >= v207[3] >> 1)
      {
        sub_1BCB6661C();
        v207 = v143;
      }

      sub_1BCD1E090(v31, type metadata accessor for DailyForecastViewModel);
      sub_1BCD1E090(v205, type metadata accessor for ConditionViewModel);
      OUTLINED_FUNCTION_6_6();
      v137(v204, v198);
      OUTLINED_FUNCTION_6_6();
      v138(v197, v172);
      v93 = v180;
      OUTLINED_FUNCTION_5_62();
      v139();
      OUTLINED_FUNCTION_6_6();
      v92 = v208;
      v140(v208, v135);
      v141 = v207;
      v207[2] = v136 + 1;
      sub_1BCD1E0E8(v134, v141 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v136);
      v91 = v192 + v169;
      v89 = v193 - 1;
    }

    while (v193 != 1);

    v144 = v152;
  }

  else
  {

    v207 = MEMORY[0x1E69E7CC0];
    v144 = v86;
  }

  v145 = sub_1BCE1ACA0();
  v146 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    *v147 = 0;
    _os_log_impl(&dword_1BC940000, v145, v146, "Built daily forecast model", v147, 2u);
    MEMORY[0x1BFB31B10](v147, -1, -1);
    v148 = v183;
  }

  else
  {
    v148 = v145;
    v145 = v183;
  }

  OUTLINED_FUNCTION_5_62();
  v149();
  v144(v154, v155);
  return v207;
}

BOOL sub_1BCD1DF20()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE194F0();
  v4 = sub_1BCE19310();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t sub_1BCD1E030(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCD1E090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCD1E0E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DailyForecastViewModelFactory()
{
  result = qword_1EDA18508;
  if (!qword_1EDA18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCD1E1C0()
{
  result = sub_1BCE1A4E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t HumidityCornerContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HumidityCornerContentView(0);
  v3 = OUTLINED_FUNCTION_1_76(v2);
  return sub_1BCD1E724(v3, a1, v4);
}

uint64_t HumidityCornerContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for HumidityCornerContentView(0);
  return sub_1BCCCC144(a1, a2 + *(v4 + 20), type metadata accessor for HumidityComplicationDataStatus);
}

uint64_t HumidityCornerContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE10);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v31[0] = type metadata accessor for HumidityCornerContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for HumidityComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for HumidityComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for HumidityCornerContentView(0);
  v22 = OUTLINED_FUNCTION_1_76(v21);
  sub_1BCD1E724(v22, v15, v23);
  if (__swift_getEnumTagSinglePayload(v15, 2, v16))
  {
    sub_1BCD1E784(v15, type metadata accessor for HumidityComplicationDataStatus);
    v24 = sub_1BCD1E6D0();
    sub_1BCE1C7E0();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_62();
    sub_1BCD1F9C4(v25, v26);
    v32 = &type metadata for HumidityCornerContentView.Placeholder;
    v33 = v24;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCCCC144(v15, v20, type metadata accessor for HumidityComplicationViewModel);
    sub_1BCD1E724(v20, v11, type metadata accessor for HumidityComplicationViewModel);
    sub_1BCD1E724(v11, v7, type metadata accessor for HumidityCornerContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_62();
    sub_1BCD1F9C4(v28, v29);
    v30 = sub_1BCD1E6D0();
    v32 = &type metadata for HumidityCornerContentView.Placeholder;
    v33 = v30;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    sub_1BCD1E784(v11, type metadata accessor for HumidityCornerContentView.Content);
    return sub_1BCD1E784(v20, type metadata accessor for HumidityComplicationViewModel);
  }
}

unint64_t sub_1BCD1E6D0()
{
  result = qword_1EBD0CE20;
  if (!qword_1EBD0CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CE20);
  }

  return result;
}

uint64_t sub_1BCD1E724(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCD1E784(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCD1E824()
{
  result = qword_1EBD0CE40;
  if (!qword_1EBD0CE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CE48);
    sub_1BCD1F9C4(&qword_1EBD0CE28, type metadata accessor for HumidityCornerContentView.Content);
    sub_1BCD1E6D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CE40);
  }

  return result;
}

uint64_t sub_1BCD1E960@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v26 = sub_1BCE1C100();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE90);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE98);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CEA0);
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(type metadata accessor for HumidityComplicationViewModel() + 28);
  v31 = v1;
  *v35 = *(v1 + v17);
  *&v35[8] = 0u;
  v36 = 0u;
  sub_1BCE1C0D0();
  v18 = sub_1BCBD1568();
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v26);

  if (qword_1EBD06FE0 != -1)
  {
    swift_once();
  }

  *v35 = xmmword_1EBD2A108;
  v33 = &type metadata for PercentFormattedView;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v19 = v28;
  sub_1BCE1C8E0();
  (*(v27 + 8))(v7, v19);
  v20 = v31;
  *v35 = sub_1BCA22B64();
  *&v35[8] = v21;
  sub_1BCE1B880();

  sub_1BC94C05C(v10, &qword_1EBD0CE98);
  v22 = sub_1BCD1FB9C();
  sub_1BCE1C760();
  v23 = sub_1BC94C05C(v13, &qword_1EBD0CE98);
  MEMORY[0x1EEE9AC00](v23);
  *(&v26 - 2) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE60);
  *v35 = v8;
  *&v35[8] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BCD1FA10();
  v24 = v30;
  sub_1BCE1C740();
  return (*(v29 + 8))(v16, v24);
}

uint64_t sub_1BCD1EE10@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HumidityComplicationViewModel();
  sub_1BC96ABEC();
  sub_1BCE1CB70();
  if (qword_1EBD07398 != -1)
  {
    swift_once();
  }

  ColorSpectrum.gradientStops.getter();
  sub_1BCE1CE60();
  KeyPath = swift_getKeyPath();
  v3 = sub_1BCE1B620();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE60);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  return result;
}

uint64_t sub_1BCD1EFB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CEB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v12 = sub_1BCE1CBA0();
  sub_1BCE1C840();

  if (qword_1EBD07398 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBD2A428;
  v8 = *(a1 + *(type metadata accessor for HumidityComplicationViewModel() + 28));
  v12 = v7;
  v9._rawValue = v7;
  *&v6[*(v4 + 36)] = ColorSpectrum.color(for:in:)(v9, v8);
  sub_1BCD1FC94();
  result = sub_1BCE1CD80();
  *a2 = result;
  return result;
}

uint64_t sub_1BCD1F128@<X0>(uint64_t a1@<X8>)
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
  if (qword_1EBD06FF0 != -1)
  {
    swift_once();
  }

  v38 = xmmword_1EBD2A128;
  sub_1BC970820();

  v13 = sub_1BCE1C6A0();
  v15 = v14;
  *&v38 = v13;
  *(&v38 + 1) = v14;
  v17 = v16 & 1;
  v39 = v16 & 1;
  v40 = v18;
  sub_1BCE1C0D0();
  sub_1BCE1C930();
  (*(v1 + 8))(v3, v27);
  sub_1BC998CF4(v13, v15, v17);

  if (qword_1EBD06FE0 != -1)
  {
    swift_once();
  }

  v38 = xmmword_1EBD2A108;
  v36 = MEMORY[0x1E6981148];
  v37 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v19 = v29;
  sub_1BCE1C8E0();
  (*(v28 + 8))(v6, v19);
  if (qword_1EBD06FE8 != -1)
  {
    swift_once();
  }

  v38 = xmmword_1EBD2A118;
  v20 = v30;
  v21 = v32;
  sub_1BCE1B880();
  sub_1BC94C05C(v8, &qword_1EBD09B78);
  v22 = sub_1BCB56760();
  v23 = v31;
  sub_1BCE1C760();
  sub_1BC94C05C(v20, &qword_1EBD09B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE60);
  *&v38 = v21;
  *(&v38 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BCD1FA10();
  v24 = v34;
  sub_1BCE1C740();
  return (*(v33 + 8))(v23, v24);
}

uint64_t sub_1BCD1F644@<X0>(uint64_t a1@<X8>)
{
  sub_1BC96ABEC();
  sub_1BCE1CB70();
  if (qword_1EBD07398 != -1)
  {
    swift_once();
  }

  ColorSpectrum.gradientStops.getter();
  sub_1BCE1CE60();
  KeyPath = swift_getKeyPath();
  v3 = sub_1BCE1B620();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE60);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  return result;
}

uint64_t sub_1BCD1F7CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C3A0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BCE1CBA0();
  sub_1BCE1C840();

  sub_1BCD1FAF4(&qword_1EBD0C3A8, &qword_1EBD0C3A0);
  result = sub_1BCE1CD80();
  *a1 = result;
  return result;
}

uint64_t sub_1BCD1F8EC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CE80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1BCE1C840();
  sub_1BCD1FAF4(&qword_1EBD0CE88, &qword_1EBD0CE80);
  result = sub_1BCE1CD80();
  *a1 = result;
  return result;
}

uint64_t sub_1BCD1F9C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCD1FA10()
{
  result = qword_1EBD0CE68;
  if (!qword_1EBD0CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CE60);
    sub_1BC957184(&qword_1EBD0CE70, &qword_1EBD0CE78);
    sub_1BC957184(&qword_1EDA1B6D0, &qword_1EBD08868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CE68);
  }

  return result;
}

uint64_t sub_1BCD1FAF4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1BCD1F9C4(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCD1FB9C()
{
  result = qword_1EBD0CEA8;
  if (!qword_1EBD0CEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CE98);
    sub_1BCBD1568();
    swift_getOpaqueTypeConformance2();
    sub_1BCD1F9C4(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CEA8);
  }

  return result;
}

unint64_t sub_1BCD1FC94()
{
  result = qword_1EBD0CEB8;
  if (!qword_1EBD0CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0CEB0);
    sub_1BCD1FAF4(&qword_1EBD0C3A8, &qword_1EBD0C3A0);
    sub_1BC957184(&qword_1EDA1B710, &qword_1EBD09DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CEB8);
  }

  return result;
}

void sub_1BCD1FD70(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCD20520();
  v4 = v3;
  sub_1BCD20520();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE64E60;
  *(a1 + 112) = 0x3EB851EB3E428F5CLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE3F440;
  *(a1 + 176) = 1148152459;
  *(a1 + 184) = 0x3E3851EC3E0F5C29;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4220000040B00000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4461000042480000;
  *(a1 + 328) = 0x3E8000003E19999ALL;
  *(a1 + 336) = 0x3FB5C28F00000000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3F450;
  *(a1 + 448) = 0x3E99999A3E428F5CLL;
  *(a1 + 464) = xmmword_1BCE3F460;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x4396000040400000;
  *(a1 + 504) = 1119748096;
  *(a1 + 512) = 0x3E4CCCCD3E19999ALL;
  *(a1 + 528) = xmmword_1BCE3F470;
  *(a1 + 544) = xmmword_1BCE3F480;
  *(a1 + 560) = 0x42B4000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
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
  *(a1 + 712) = 0x3FC000003F666667;
  *(a1 + 720) = 0x41A8000041800000;
  *(a1 + 728) = 1095761920;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F99999A3F666667;
  *(a1 + 848) = 0x4140000041000000;
  *(a1 + 856) = 0x42480000402EACC0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x400666663FE66667;
  *(a1 + 976) = 0x4063D70A40400000;
  *(a1 + 984) = 0x4248000041580000;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3D8A0;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
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
  *(a1 + 1216) = xmmword_1BCE64E70;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 1;
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
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1639) = 0;
  *(a1 + 1631) = 0;
  *(a1 + 1641) = 1;
  *(v2 + 206) = 0x101010100000000;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 2;
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
  *(a1 + 2120) = 0x3E428F5C3E19999ALL;
  *(a1 + 2128) = 0x4039999A3FA3D70ALL;
  *(a1 + 2136) = 0x4100000040800000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1043878380;
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

__n128 sub_1BCD20520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3F520;
  *(v0 + 96) = xmmword_1BCE3F530;
  *(v0 + 112) = xmmword_1BCE3F540;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 144) = xmmword_1BCE3F560;
  *(v0 + 160) = xmmword_1BCE3F570;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 4928) = 1147207680;
  *(v0 + 6144) = 1147207680;
  *(v0 + 5600) = xmmword_1BCE3F9F0;
  *(v0 + 6816) = xmmword_1BCE3F9F0;
  *(v0 + 5888) = xmmword_1BCE3CBA0;
  *(v0 + 7104) = xmmword_1BCE3CBA0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 4912) = xmmword_1BCE3EE30;
  *(v0 + 6128) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 4976) = xmmword_1BCE3F920;
  *(v0 + 6192) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 4992) = xmmword_1BCE3F930;
  *(v0 + 6208) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3888) = xmmword_1BCE3F940;
  *(v0 + 5104) = xmmword_1BCE3F940;
  *(v0 + 6320) = xmmword_1BCE3F940;
  *(v0 + 7536) = xmmword_1BCE3F940;
  *(v0 + 3904) = xmmword_1BCE3F950;
  *(v0 + 5120) = xmmword_1BCE3F950;
  *(v0 + 6336) = xmmword_1BCE3F950;
  *(v0 + 7552) = xmmword_1BCE3F950;
  *(v0 + 3920) = xmmword_1BCE3F960;
  *(v0 + 5136) = xmmword_1BCE3F960;
  *(v0 + 6352) = xmmword_1BCE3F960;
  *(v0 + 7568) = xmmword_1BCE3F960;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 5168) = xmmword_1BCE3F970;
  *(v0 + 6384) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 5184) = xmmword_1BCE3F980;
  *(v0 + 6400) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 5200) = xmmword_1BCE3F990;
  *(v0 + 6416) = xmmword_1BCE3F990;
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
  *(v0 + 5264) = xmmword_1BCE3CDC0;
  *(v0 + 6480) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4160) = xmmword_1BCE3F9A0;
  *(v0 + 5376) = xmmword_1BCE3F9A0;
  *(v0 + 6592) = xmmword_1BCE3F9A0;
  *(v0 + 7808) = xmmword_1BCE3F9A0;
  *(v0 + 4192) = xmmword_1BCE3F9B0;
  *(v0 + 5408) = xmmword_1BCE3F9B0;
  *(v0 + 6624) = xmmword_1BCE3F9B0;
  *(v0 + 7840) = xmmword_1BCE3F9B0;
  *(v0 + 4224) = xmmword_1BCE3F9C0;
  *(v0 + 5440) = xmmword_1BCE3F9C0;
  *(v0 + 6656) = xmmword_1BCE3F9C0;
  *(v0 + 7872) = xmmword_1BCE3F9C0;
  __asm { FMOV            V18.2D, #0.75 }

  *(v0 + 4144) = _Q18;
  *(v0 + 4176) = _Q18;
  *(v0 + 4208) = _Q18;
  *(v0 + 4240) = _Q18;
  *(v0 + 5360) = _Q18;
  *(v0 + 5392) = _Q18;
  *(v0 + 5424) = _Q18;
  *(v0 + 5456) = _Q18;
  *(v0 + 6576) = _Q18;
  *(v0 + 6608) = _Q18;
  *(v0 + 6640) = _Q18;
  *(v0 + 6672) = _Q18;
  *(v0 + 7792) = _Q18;
  *(v0 + 7824) = _Q18;
  *(v0 + 7856) = _Q18;
  *(v0 + 7888) = _Q18;
  *(v0 + 4256) = xmmword_1BCE3F9D0;
  *(v0 + 5472) = xmmword_1BCE3F9D0;
  *(v0 + 6688) = xmmword_1BCE3F9D0;
  *(v0 + 7904) = xmmword_1BCE3F9D0;
  *(v0 + 4416) = xmmword_1BCE3D4E0;
  *(v0 + 5632) = xmmword_1BCE3D4E0;
  *(v0 + 6848) = xmmword_1BCE3D4E0;
  *(v0 + 8064) = xmmword_1BCE3D4E0;
  *(v0 + 4448) = xmmword_1BCE3D430;
  *(v0 + 5664) = xmmword_1BCE3D430;
  *(v0 + 6880) = xmmword_1BCE3D430;
  *(v0 + 8096) = xmmword_1BCE3D430;
  *(v0 + 4576) = xmmword_1BCE3F9E0;
  *(v0 + 5792) = xmmword_1BCE3F9E0;
  *(v0 + 7008) = xmmword_1BCE3F9E0;
  *(v0 + 8224) = xmmword_1BCE3F9E0;
  *(v0 + 4672) = xmmword_1BCE3EF30;
  *(v0 + 8320) = xmmword_1BCE3EF30;
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
  *(v0 + 5008) = xmmword_1BCE3E180;
  *(v0 + 6224) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 6240) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2672) = xmmword_1BCE3F800;
  *(v0 + 8752) = xmmword_1BCE3F800;
  *(v0 + 2688) = xmmword_1BCE3F810;
  *(v0 + 8768) = xmmword_1BCE3F810;
  *(v0 + 2704) = xmmword_1BCE3F820;
  *(v0 + 8784) = xmmword_1BCE3F820;
  *(v0 + 2720) = xmmword_1BCE3F830;
  *(v0 + 8800) = xmmword_1BCE3F830;
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
  *&_Q18 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = _Q18;
  *(v0 + 8896) = _Q18;
  *(v0 + 2928) = xmmword_1BCE3F880;
  *(v0 + 9008) = xmmword_1BCE3F880;
  *(v0 + 2944) = xmmword_1BCE3F890;
  *(v0 + 9024) = xmmword_1BCE3F890;
  *(v0 + 2976) = xmmword_1BCE3F8B0;
  *(v0 + 9056) = xmmword_1BCE3F8B0;
  *(v0 + 2992) = xmmword_1BCE3F8C0;
  *(v0 + 9072) = xmmword_1BCE3F8C0;
  *(v0 + 3008) = xmmword_1BCE3F8D0;
  *(v0 + 9088) = xmmword_1BCE3F8D0;
  *(v0 + 2960) = xmmword_1BCE3F8A0;
  *(v0 + 3024) = xmmword_1BCE3F8A0;
  *(v0 + 9040) = xmmword_1BCE3F8A0;
  *(v0 + 9104) = xmmword_1BCE3F8A0;
  *(v0 + 3040) = xmmword_1BCE3F8E0;
  *(v0 + 9120) = xmmword_1BCE3F8E0;
  *(v0 + 3232) = xmmword_1BCE3F8F0;
  *(v0 + 9312) = xmmword_1BCE3F8F0;
  *(v0 + 3344) = xmmword_1BCE3F900;
  *(v0 + 9424) = xmmword_1BCE3F900;
  *(v0 + 3360) = xmmword_1BCE3F910;
  *(v0 + 9440) = xmmword_1BCE3F910;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 4944) = xmmword_1BCE3E140;
  *(v0 + 6160) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 1328) = xmmword_1BCE3F6D0;
  *(v0 + 9840) = xmmword_1BCE3F6D0;
  *(v0 + 1360) = xmmword_1BCE3F6E0;
  *(v0 + 9872) = xmmword_1BCE3F6E0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 1456) = xmmword_1BCE3F6F0;
  *(v0 + 9968) = xmmword_1BCE3F6F0;
  *(v0 + 1472) = xmmword_1BCE3F700;
  *(v0 + 9984) = xmmword_1BCE3F700;
  *(v0 + 1488) = xmmword_1BCE3F710;
  *(v0 + 10000) = xmmword_1BCE3F710;
  *(v0 + 1552) = xmmword_1BCE3F740;
  *(v0 + 10064) = xmmword_1BCE3F740;
  *(v0 + 1712) = xmmword_1BCE3F750;
  *(v0 + 10224) = xmmword_1BCE3F750;
  *(v0 + 1744) = xmmword_1BCE3F760;
  *(v0 + 10256) = xmmword_1BCE3F760;
  *(v0 + 1776) = xmmword_1BCE3F770;
  *(v0 + 10288) = xmmword_1BCE3F770;
  *(v0 + 2016) = xmmword_1BCE3F780;
  *(v0 + 10528) = xmmword_1BCE3F780;
  *(v0 + 2128) = xmmword_1BCE3F790;
  *(v0 + 10640) = xmmword_1BCE3F790;
  *(v0 + 2144) = xmmword_1BCE3F7A0;
  *(v0 + 10656) = xmmword_1BCE3F7A0;
  *(v0 + 10992) = xmmword_1BCE3F510;
  *(v0 + 240) = xmmword_1BCE3F580;
  *(v0 + 256) = xmmword_1BCE3DCB0;
  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 272) = xmmword_1BCE3F590;
  *(v0 + 11024) = xmmword_1BCE3F520;
  *(v0 + 11040) = xmmword_1BCE3F530;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 11056) = xmmword_1BCE3F540;
  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 336) = xmmword_1BCE3F5D0;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 11088) = xmmword_1BCE3F560;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 11104) = xmmword_1BCE3F570;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11184) = xmmword_1BCE3F580;
  *(v0 + 11200) = xmmword_1BCE3DCB0;
  *(v0 + 11216) = xmmword_1BCE3F590;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 8336) = result;
  *(v0 + 8352) = xmmword_1BCE3F6B0;
  *(v0 + 8368) = result;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  *(v0 + 8256) = xmmword_1BCE3A880;
  *(v0 + 8272) = result;
  *(v0 + 8288) = xmmword_1BCE3F6A0;
  *(v0 + 8304) = result;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = xmmword_1BCE3F680;
  *(v0 + 8208) = result;
  *(v0 + 8240) = result;
  *(v0 + 8080) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 8016) = result;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = result;
  *(v0 + 11280) = xmmword_1BCE3F5D0;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = xmmword_1BCE3E1D0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 7920) = result;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = result;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 7584) = result;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 7472) = result;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v12;
  *(v0 + 7368) = 1058642330;
  *(v0 + 7340) = *&v12[3];
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 7184) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 496) = xmmword_1BCE3F5F0;
  *(v0 + 512) = xmmword_1BCE3F600;
  *(v0 + 7088) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = xmmword_1BCE3F6B0;
  *(v0 + 7152) = result;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 6992) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = xmmword_1BCE3A880;
  *(v0 + 7056) = result;
  *(v0 + 7072) = xmmword_1BCE3F6A0;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = xmmword_1BCE3F680;
  *(v0 + 11440) = xmmword_1BCE3F5F0;
  *(v0 + 1728) = xmmword_1BCE3F600;
  *(v0 + 6832) = result;
  *(v0 + 6864) = result;
  *(v0 + 6896) = result;
  *(v0 + 10240) = xmmword_1BCE3F600;
  *(v0 + 11456) = xmmword_1BCE3F600;
  *(v0 + 6768) = result;
  *(v0 + 6784) = xmmword_1BCE3E1D0;
  *(v0 + 6800) = result;
  *(v0 + 528) = xmmword_1BCE3F610;
  *(v0 + 544) = xmmword_1BCE3F620;
  *(v0 + 6704) = result;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 11472) = xmmword_1BCE3F610;
  *(v0 + 1760) = xmmword_1BCE3F620;
  *(v0 + 10272) = xmmword_1BCE3F620;
  *(v0 + 11488) = xmmword_1BCE3F620;
  *(v0 + 560) = xmmword_1BCE3F630;
  *(v0 + 576) = xmmword_1BCE3F640;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 11504) = xmmword_1BCE3F630;
  *(v0 + 1792) = xmmword_1BCE3F640;
  *(v0 + 6504) = 0;
  *(v0 + 6544) = result;
  *(v0 + 10304) = xmmword_1BCE3F640;
  *(v0 + 11520) = xmmword_1BCE3F640;
  *(v0 + 1808) = xmmword_1BCE3F650;
  *(v0 + 6472) = 0x3FEF0AE2E0000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 10320) = xmmword_1BCE3F650;
  *(v0 + 11536) = xmmword_1BCE3F650;
  *(v0 + 592) = xmmword_1BCE3F650;
  *(v0 + 608) = xmmword_1BCE3F660;
  *(v0 + 6368) = result;
  *(v0 + 1824) = xmmword_1BCE3F660;
  *(v0 + 10336) = xmmword_1BCE3F660;
  *(v0 + 11552) = xmmword_1BCE3F660;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 736) = xmmword_1BCE3E350;
  *(v0 + 1952) = xmmword_1BCE3E350;
  *(v0 + 3168) = xmmword_1BCE3E350;
  *(v0 + 3200) = xmmword_1BCE3E350;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 9248) = xmmword_1BCE3E350;
  *(v0 + 9280) = xmmword_1BCE3E350;
  *(v0 + 10464) = xmmword_1BCE3E350;
  *(v0 + 11680) = xmmword_1BCE3E350;
  *(v0 + 6064) = result;
  *(v0 + 6121) = *v11;
  *(v0 + 6152) = 1061158912;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v11[3];
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 768) = xmmword_1BCE3E1D0;
  *(v0 + 5904) = result;
  *(v0 + 5920) = xmmword_1BCE3F6B0;
  *(v0 + 5936) = result;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = xmmword_1BCE3A880;
  *(v0 + 5840) = result;
  *(v0 + 5856) = xmmword_1BCE3F6A0;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = xmmword_1BCE3F680;
  *(v0 + 5776) = result;
  *(v0 + 1984) = xmmword_1BCE3E1D0;
  *(v0 + 4352) = xmmword_1BCE3E1D0;
  *(v0 + 5568) = xmmword_1BCE3E1D0;
  *(v0 + 5616) = result;
  *(v0 + 5648) = result;
  *(v0 + 5680) = result;
  *(v0 + 10496) = xmmword_1BCE3E1D0;
  *(v0 + 11712) = xmmword_1BCE3E1D0;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5584) = result;
  *(v0 + 800) = xmmword_1BCE3F670;
  *(v0 + 11744) = xmmword_1BCE3F670;
  *(v0 + 896) = xmmword_1BCE3F680;
  *(v0 + 5488) = result;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = result;
  *(v0 + 2112) = xmmword_1BCE3F680;
  *(v0 + 3328) = xmmword_1BCE3F680;
  *(v0 + 4544) = xmmword_1BCE3F680;
  *(v0 + 9408) = xmmword_1BCE3F680;
  *(v0 + 10624) = xmmword_1BCE3F680;
  *(v0 + 11840) = xmmword_1BCE3F680;
  *(v0 + 928) = xmmword_1BCE3F690;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = result;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 11872) = xmmword_1BCE3F690;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 960) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FEF0AE2E0000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 2176) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 5152) = result;
  *(v0 + 3392) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 5040) = result;
  *(v0 + 5056) = result;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 4592) = result;
  *(v0 + 4608) = xmmword_1BCE3A880;
  *(v0 + 4624) = result;
  *(v0 + 4640) = xmmword_1BCE3F6A0;
  *(v0 + 4656) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = xmmword_1BCE3F6B0;
  *(v0 + 4905) = *v10;
  *(v0 + 4936) = 1061158912;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v10[3];
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4720) = result;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = result;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9472) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 10688) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 11904) = xmmword_1BCE3A880;
  *(v0 + 992) = xmmword_1BCE3F6A0;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4560) = result;
  *(v0 + 2208) = xmmword_1BCE3F6A0;
  *(v0 + 4400) = result;
  *(v0 + 4432) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 3424) = xmmword_1BCE3F6A0;
  *(v0 + 4336) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 9504) = xmmword_1BCE3F6A0;
  *(v0 + 10720) = xmmword_1BCE3F6A0;
  *(v0 + 11936) = xmmword_1BCE3F6A0;
  *(v0 + 1024) = xmmword_1BCE3CE90;
  *(v0 + 4272) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 2240) = xmmword_1BCE3CE90;
  *(v0 + 3456) = xmmword_1BCE3CE90;
  *(v0 + 9536) = xmmword_1BCE3CE90;
  *(v0 + 10752) = xmmword_1BCE3CE90;
  *(v0 + 11968) = xmmword_1BCE3CE90;
  *(v0 + 1056) = xmmword_1BCE3F6B0;
  *(v0 + 2272) = xmmword_1BCE3F6B0;
  *(v0 + 3488) = xmmword_1BCE3F6B0;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = result;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 9568) = xmmword_1BCE3F6B0;
  *(v0 + 10784) = xmmword_1BCE3F6B0;
  *(v0 + 12000) = xmmword_1BCE3F6B0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3824) = result;
  *(v0 + 3936) = result;
  *(v0 + 3840) = result;
  *(v0 + 3856) = result;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 3689) = *v9;
  *(v0 + 3692) = *&v9[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 3688) = 0;
  *(v0 + 3536) = result;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3440) = result;
  *(v0 + 3472) = result;
  *(v0 + 3504) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3376) = result;
  *(v0 + 3408) = result;
  *(v0 + 3312) = result;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3152) = result;
  *(v0 + 3184) = result;
  *(v0 + 3216) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3056) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 192) = result;
  *(v0 + 208) = result;
  *(v0 + 464) = result;
  *(v0 + 624) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 720) = result;
  *(v0 + 752) = result;
  *(v0 + 784) = result;
  *(v0 + 880) = result;
  *(v0 + 2896) = result;
  *(v0 + 912) = result;
  *(v0 + 944) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 976) = result;
  *(v0 + 1008) = result;
  *(v0 + 176) = result;
  *(v0 + 288) = result;
  *(v0 + 400) = result;
  *(v0 + 656) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2640) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 1040) = result;
  *(v0 + 1072) = result;
  *(v0 + 1104) = result;
  *(v0 + 1136) = result;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v8;
  *(v0 + 2476) = *&v8[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 1152) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 2320) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2256) = result;
  *(v0 + 2288) = result;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v7;
  *(v0 + 2192) = result;
  *(v0 + 2224) = result;
  *(v0 + 1260) = *&v7[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = result;
  *(v0 + 2096) = result;
  *(v0 + 2160) = result;
  *(v0 + 1408) = result;
  *(v0 + 2000) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 1424) = result;
  *(v0 + 1504) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1904) = result;
  *(v0 + 1936) = result;
  *(v0 + 1968) = result;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1840) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1680) = result;
  *(v0 + 8400) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8912) = result;
  *(v0 + 8976) = result;
  *(v0 + 9136) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9232) = result;
  *(v0 + 9264) = result;
  *(v0 + 9296) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
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
  *(v0 + 10016) = result;
  *(v0 + 10128) = result;
  *(v0 + 10192) = result;
  *(v0 + 10352) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10448) = result;
  *(v0 + 10480) = result;
  *(v0 + 10512) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
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
  *(v0 + 11232) = result;
  *(v0 + 11344) = result;
  *(v0 + 11408) = result;
  *(v0 + 11568) = result;
  *(v0 + 11600) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11664) = result;
  *(v0 + 11696) = result;
  *(v0 + 11728) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11856) = result;
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
  *(v0 + 8553) = *v13;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v13[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v14;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v14[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v15;
  *(v0 + 10988) = *&v15[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t Array<A>.filteredEvents.getter(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CD0];
  sub_1BCD21954(a1);
  sub_1BCA14338(v1, &v5);
  v3 = v2;

  return v3;
}

uint64_t WeatherAlert.prominence.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1BCE196F0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_1BCE1A230();
  sub_1BCE1A210();
  if (qword_1EDA1EB38 != -1)
  {
    swift_once();
  }

  sub_1BCE1A200();

  if (v12 == 1)
  {
    goto LABEL_4;
  }

  sub_1BCE1A210();
  if (qword_1EDA1EB50 != -1)
  {
    swift_once();
  }

  sub_1BCE1A200();

  v10 = v11;
  if (v11 == 1)
  {
    goto LABEL_8;
  }

  sub_1BCE19760();
  result = (*(v4 + 88))(v8, v2);
  if (result == *MEMORY[0x1E6984B88])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E6984B80])
  {
    v10 = 1;
LABEL_8:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x1E6984B90])
  {
LABEL_4:
    *a1 = 0;
    return result;
  }

  *a1 = 1;
  return (*(v4 + 8))(v8, v2);
}

uint64_t WeatherAlert.Prominence.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

void sub_1BCD21954(uint64_t a1)
{
  v2 = sub_1BCE196F0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0();
  v108 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1BCE197A0();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_1();
  v110 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v93 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v92 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  sub_1BCE197B0();
  v91 = v30;
  v119 = v30;

  sub_1BCA1468C(sub_1BCD22974, v118, a1);
  v32 = 0;
  v117 = *(v31 + 16);
  v115 = v16 + 16;
  v101 = *MEMORY[0x1E6984B88];
  v114 = (v4 + 104);
  v105 = (v4 + 8);
  v111 = (v16 + 8);
  v113 = v16;
  v99 = v16 + 32;
  v98 = MEMORY[0x1E69E7CC0];
  v116 = v14;
  v112 = v31;
  v102 = v11;
  while (1)
  {
    v33 = v106;
    if (v117 == v32)
    {
      v53 = 0;
      LODWORD(v104) = *MEMORY[0x1E6984B90];
      v103 = MEMORY[0x1E69E7CC0];
      v54 = v108;
      v55 = v105;
      while (v117 != v53)
      {
        if (v53 >= *(v31 + 16))
        {
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_4_63();
        v109 = v56;
        v106 = *(v58 + 72);
        (*(v58 + 16))(v110, v57 + v56 + v106 * v53, v14);
        sub_1BCE19760();
        (*v114)(v100, v104, v2);
        sub_1BCD22994();
        sub_1BCE1D520();
        sub_1BCE1D520();
        if (v123 == v121 && v124 == v122)
        {
          v63 = *v55;
          v64 = OUTLINED_FUNCTION_8_55();
          (v63)(v64);
          v63(v11, v2);

LABEL_26:
          OUTLINED_FUNCTION_6_57();
          v66 = *v65;
          (*v65)(v96, v110, v116);
          v67 = v103;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v125 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_2_85();
            v67 = v125;
          }

          v70 = *(v67 + 16);
          v69 = *(v67 + 24);
          if (v70 >= v69 >> 1)
          {
            v71 = OUTLINED_FUNCTION_7_58(v69);
            sub_1BCA151E4(v71, v70 + 1, 1);
            v67 = v125;
          }

          ++v53;
          *(v67 + 16) = v70 + 1;
          v103 = v67;
          v14 = v116;
          OUTLINED_FUNCTION_6_57();
          v66();
          v31 = v112;
        }

        else
        {
          v60 = sub_1BCE1E090();
          v61 = *v55;
          v62 = OUTLINED_FUNCTION_8_55();
          (v61)(v62);
          v61(v11, v2);
          v54 = v108;

          if (v60)
          {
            goto LABEL_26;
          }

          v14 = v116;
          (*v111)(v110, v116);
          ++v53;
          v31 = v112;
        }
      }

      v72 = 0;
      LODWORD(v110) = *MEMORY[0x1E6984B80];
      v109 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v117 == v72)
        {

          v120 = v98;
          sub_1BCD86E58(v103);
          sub_1BCD86E58(v109);
          (*(v92 + 8))(v91, v93);
          return;
        }

        if (v72 >= *(v31 + 16))
        {
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_4_63();
        (*(v75 + 16))(v107, v73 + v74 + *(v75 + 72) * v72, v14);
        sub_1BCE19760();
        (*v114)(v54, v110, v2);
        sub_1BCD22994();
        sub_1BCE1D520();
        sub_1BCE1D520();
        if (v123 == v121 && v124 == v122)
        {
          v82 = *v55;
          (*v55)(v54, v2);
          v83 = OUTLINED_FUNCTION_8_55();
          v82(v83);
        }

        else
        {
          v77 = sub_1BCE1E090();
          v78 = v54;
          v79 = v77;
          v80 = *v55;
          (*v55)(v78, v2);
          v81 = OUTLINED_FUNCTION_8_55();
          v80(v81);

          if ((v79 & 1) == 0)
          {
            v14 = v116;
            (*v111)(v107, v116);
            ++v72;
            goto LABEL_40;
          }
        }

        OUTLINED_FUNCTION_6_57();
        v85 = *v84;
        (*v84)(v95, v107, v116);
        v86 = v109;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v125 = v86;
        if ((v87 & 1) == 0)
        {
          OUTLINED_FUNCTION_2_85();
          v86 = v125;
        }

        v89 = *(v86 + 16);
        v88 = *(v86 + 24);
        if (v89 >= v88 >> 1)
        {
          v90 = OUTLINED_FUNCTION_7_58(v88);
          sub_1BCA151E4(v90, v89 + 1, 1);
          v86 = v125;
        }

        ++v72;
        *(v86 + 16) = v89 + 1;
        v109 = v86;
        v14 = v116;
        OUTLINED_FUNCTION_6_57();
        v85();
LABEL_40:
        v54 = v108;
        v31 = v112;
      }
    }

    if (v32 >= *(v31 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_63();
    v104 = v34;
    v37 = *(v36 + 72);
    v109 = v32;
    v103 = v37;
    (*(v36 + 16))(v25, v35 + v34 + v37 * v32, v14);
    v38 = v25;
    sub_1BCE19760();
    (*v114)(v33, v101, v2);
    sub_1BCD22994();
    sub_1BCE1D520();
    sub_1BCE1D520();
    if (v123 == v121 && v124 == v122)
    {
      v43 = *v105;
      (*v105)(v33, v2);
      v44 = OUTLINED_FUNCTION_9_49();
      v43(v44);

LABEL_11:
      OUTLINED_FUNCTION_6_57();
      v46 = *v45;
      v25 = v38;
      (*v45)(v97, v38, v14);
      v47 = v98;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v47;
      v94 = v46;
      if ((v48 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_85();
        v47 = v125;
      }

      v2 = v33;
      v49 = v109;
      v51 = *(v47 + 16);
      v50 = *(v47 + 24);
      if (v51 >= v50 >> 1)
      {
        v52 = OUTLINED_FUNCTION_7_58(v50);
        sub_1BCA151E4(v52, v51 + 1, 1);
        v47 = v125;
      }

      v32 = v49 + 1;
      *(v47 + 16) = v51 + 1;
      v98 = v47;
      OUTLINED_FUNCTION_6_57();
      v94();
      v31 = v112;
      v11 = v102;
    }

    else
    {
      v40 = sub_1BCE1E090();
      v41 = *v105;
      (*v105)(v33, v2);
      v42 = OUTLINED_FUNCTION_9_49();
      v41(v42);
      v14 = v116;

      if (v40)
      {
        goto LABEL_11;
      }

      v25 = v38;
      (*v111)(v38, v14);
      v32 = v109 + 1;
      v31 = v112;
      v11 = v102;
      v2 = v33;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}