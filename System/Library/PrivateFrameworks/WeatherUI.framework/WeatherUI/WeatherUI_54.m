uint64_t sub_1BCD7B1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v23 = a1;
  v28 = a3;
  v27 = sub_1BCE1B650();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = type metadata accessor for WeatherPlatterView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DB88);
  MEMORY[0x1EEE9AC00](v26);
  v24 = &v23 - v11;
  sub_1BCE1CE90();
  sub_1BCE1CEA0();
  sub_1BCD7C50C(a2, v10);
  v12 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v27;
  (*(v5 + 16))(v12, a1, v27);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v14 + v9 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1BCCC6110(v10, v16 + v14);
  (*(v5 + 32))(v16 + v15, v12, v13);
  v17 = v24;
  v18 = &v24[*(v26 + 36)];
  *v18 = sub_1BCD7BF34;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  sub_1BCE1B630();
  v29 = v19;
  v30 = v20;
  sub_1BCD7C50C(v25, v10);
  v21 = swift_allocObject();
  sub_1BCCC6110(v10, v21 + v14);
  type metadata accessor for CGSize(0);
  sub_1BCD7C190();
  sub_1BCD7C798(&qword_1EBD0DBA8, type metadata accessor for CGSize);
  sub_1BCE1C9E0();

  return sub_1BC94C05C(v17, &qword_1EBD0DB88);
}

uint64_t sub_1BCD7B590@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BCE1CAA0();
  *a1 = result;
  return result;
}

uint64_t sub_1BCD7B5B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() systemBackgroundColor];
  sub_1BCE1CA20();
  v3 = sub_1BCE1CAE0();

  *a1 = v3;
  return result;
}

uint64_t sub_1BCD7B624(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for WeatherPlatterView() + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_1BCE1B630();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BCD7B6C4(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a3 + *(type metadata accessor for WeatherPlatterView() + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7, v3, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BCD7B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DB28) + 36));
  v5 = *(sub_1BCE1B900() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1BCE1BD60();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BCA0) + 36)] = 256;
  return sub_1BC9660CC(a1, a2, &qword_1EBD0DB18);
}

uint64_t sub_1BCD7B894(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1BCD7C5BC(__dst, v3);
  return sub_1BCD0BC90(__srca);
}

uint64_t type metadata accessor for WeatherPlatterView()
{
  result = qword_1EBD0DB00;
  if (!qword_1EBD0DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCD7B94C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BCCC601C;
  OUTLINED_FUNCTION_10_1();

  return sub_1BCD0BD08();
}

void sub_1BCD7B9E4(double *a1@<X8>)
{
  v3 = type metadata accessor for WeatherPlatterView();
  OUTLINED_FUNCTION_14(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_1BCD79CD8(v5, a1);
}

void sub_1BCD7BB14()
{
  sub_1BCD7BBA4();
  if (v0 <= 0x3F)
  {
    sub_1BCD7BBFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BCD7BBA4()
{
  if (!qword_1EBD0CC70)
  {
    sub_1BCE1BDE0();
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD0CC70);
    }
  }
}

void sub_1BCD7BBFC()
{
  if (!qword_1EBD0DB10)
  {
    type metadata accessor for WeatherPlatterViewModelUpdater();
    sub_1BCD7C798(&qword_1EBD0C310, type metadata accessor for WeatherPlatterViewModelUpdater);
    v0 = sub_1BCE1B750();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD0DB10);
    }
  }
}

unint64_t sub_1BCD7BC90()
{
  result = qword_1EBD0DB30;
  if (!qword_1EBD0DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DB18);
    sub_1BCD7BD48();
    sub_1BC957184(&qword_1EBD0DB58, &qword_1EBD0DB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DB30);
  }

  return result;
}

unint64_t sub_1BCD7BD48()
{
  result = qword_1EBD0DB38;
  if (!qword_1EBD0DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DB40);
    sub_1BC957184(&qword_1EBD0DB48, &qword_1EBD0DB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DB38);
  }

  return result;
}

unint64_t sub_1BCD7BE00()
{
  result = qword_1EBD0DB68;
  if (!qword_1EBD0DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DB28);
    sub_1BCD7BC90();
    sub_1BC957184(&qword_1EBD0BCB8, &qword_1EBD0BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DB68);
  }

  return result;
}

uint64_t sub_1BCD7BEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WeatherPlatterView();
  OUTLINED_FUNCTION_14(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1BCD7B1D4(a1, v7, a2);
}

uint64_t sub_1BCD7BF34()
{
  v1 = *(type metadata accessor for WeatherPlatterView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1BCE1B650();
  OUTLINED_FUNCTION_14(v3);

  return sub_1BCD7B624(v0 + v2);
}

uint64_t objectdestroy_26Tm_1()
{
  type metadata accessor for WeatherPlatterView();
  OUTLINED_FUNCTION_1_80();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BCE1BDE0();
    OUTLINED_FUNCTION_4();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  MEMORY[0x1BFB31C00](v1 + v4 + *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1BCD7C114(uint64_t a1, double *a2)
{
  v5 = type metadata accessor for WeatherPlatterView();
  OUTLINED_FUNCTION_14(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1BCD7B6C4(a1, a2, v7);
}

unint64_t sub_1BCD7C190()
{
  result = qword_1EBD0DB90;
  if (!qword_1EBD0DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DB88);
    sub_1BCD7C21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DB90);
  }

  return result;
}

unint64_t sub_1BCD7C21C()
{
  result = qword_1EBD0DB98;
  if (!qword_1EBD0DB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DB98);
  }

  return result;
}

unint64_t sub_1BCD7C354()
{
  result = qword_1EBD0DBF0;
  if (!qword_1EBD0DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DBF0);
  }

  return result;
}

unint64_t sub_1BCD7C3A8()
{
  result = qword_1EBD0DBF8;
  if (!qword_1EBD0DBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DBC8);
    sub_1BCE1CDF0();
    sub_1BCD7C798(&qword_1EBD0DBE8, MEMORY[0x1E697D6D0]);
    sub_1BCD7C354();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DBF8);
  }

  return result;
}

uint64_t sub_1BCD7C50C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  return a2;
}

uint64_t sub_1BCD7C564(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1BCD7C618@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1BCD7C684(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1BCE1DD20();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1BCD7C798(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1BCD7C7E0@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE41A20;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  result = 0.248019874;
  *(v2 + 48) = xmmword_1BCE6AB40;
  *(v2 + 64) = xmmword_1BCE6AB50;
  *(v2 + 80) = xmmword_1BCE6AB60;
  *(v2 + 96) = xmmword_1BCE6AB70;
  *(v2 + 112) = xmmword_1BCE6AB80;
  *(v2 + 128) = xmmword_1BCE6AB90;
  *(v2 + 144) = xmmword_1BCE41A90;
  *(v2 + 160) = 0;
  *(v2 + 168) = xmmword_1BCE6AB40;
  *(v2 + 184) = xmmword_1BCE6AB50;
  *(v2 + 200) = xmmword_1BCE6AB60;
  *(v2 + 216) = xmmword_1BCE6AB70;
  *(v2 + 232) = xmmword_1BCE6AB80;
  *(v2 + 248) = xmmword_1BCE6AB90;
  *(v2 + 264) = 0x3FE0000000000000;
  *(v2 + 272) = 0xC03E000000000000;
  *(v2 + 280) = 0;
  *(v2 + 288) = xmmword_1BCE6AB40;
  *(v2 + 304) = xmmword_1BCE6AB50;
  *(v2 + 320) = xmmword_1BCE6AB60;
  *(v2 + 336) = xmmword_1BCE6AB70;
  *(v2 + 352) = xmmword_1BCE6AB80;
  *(v2 + 368) = xmmword_1BCE6AB90;
  *(v2 + 384) = xmmword_1BCE41AA0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x3FCF9F9F80000000;
  *(v2 + 416) = xmmword_1BCE6ABA0;
  *(v2 + 432) = xmmword_1BCE6ABB0;
  *(v2 + 448) = xmmword_1BCE6ABC0;
  *(v2 + 464) = xmmword_1BCE5FF30;
  *(v2 + 480) = xmmword_1BCE6ABD0;
  *(v2 + 496) = xmmword_1BCE3C8C0;
  *(v2 + 512) = 0xC028000000000000;
  *(v2 + 520) = 0;
  *(v2 + 528) = xmmword_1BCE6ABE0;
  *(v2 + 544) = xmmword_1BCE6ABF0;
  *(v2 + 560) = xmmword_1BCE6AC00;
  *(v2 + 576) = xmmword_1BCE6AC10;
  *(v2 + 592) = xmmword_1BCE6AC20;
  *(v2 + 608) = xmmword_1BCE6AC30;
  *(v2 + 624) = xmmword_1BCE41B60;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0x3FE063A42ADC01AELL;
  *(v2 + 656) = xmmword_1BCE6AC40;
  *(v2 + 672) = xmmword_1BCE6AC50;
  *(v2 + 688) = xmmword_1BCE6AC60;
  *(v2 + 704) = xmmword_1BCE6AC70;
  *(v2 + 720) = xmmword_1BCE6AC80;
  *(v2 + 736) = xmmword_1BCE3C8C0;
  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 761) = *v4;
  *(v2 + 764) = *&v4[3];
  *(v2 + 768) = xmmword_1BCE6AC90;
  *(v2 + 784) = xmmword_1BCE6ACA0;
  *(v2 + 800) = xmmword_1BCE6ACB0;
  *(v2 + 816) = xmmword_1BCE6ACC0;
  *(v2 + 832) = xmmword_1BCE6ACD0;
  *(v2 + 848) = xmmword_1BCE6ACE0;
  *(v2 + 864) = xmmword_1BCE41C20;
  *(v2 + 880) = 0;
  *(v2 + 881) = *v5;
  *(v2 + 884) = *&v5[3];
  *(v2 + 888) = 0x3FE11C1C7D47716CLL;
  *(v2 + 896) = xmmword_1BCE6ACF0;
  *(v2 + 912) = xmmword_1BCE6AD00;
  *(v2 + 928) = xmmword_1BCE6AD10;
  *(v2 + 944) = xmmword_1BCE6AD20;
  *(v2 + 960) = xmmword_1BCE6AD30;
  *(v2 + 976) = xmmword_1BCE3C8C0;
  *(v2 + 992) = 0x4028000000000000;
  *(v2 + 1000) = 0;
  *(v2 + 1004) = *&v6[3];
  *(v2 + 1001) = *v6;
  *(v2 + 1008) = xmmword_1BCE6AD40;
  *(v2 + 1024) = xmmword_1BCE6AD50;
  *(v2 + 1040) = xmmword_1BCE6AD60;
  *(v2 + 1056) = xmmword_1BCE6AD70;
  *(v2 + 1072) = xmmword_1BCE6AD80;
  *(v2 + 1088) = xmmword_1BCE6AD90;
  *(v2 + 1104) = xmmword_1BCE41CE0;
  *(v2 + 1120) = 0;
  *(v2 + 1121) = *v7;
  *(v2 + 1124) = *&v7[3];
  *(v2 + 1128) = 0x3FE1E7679EA3B8BBLL;
  *(v2 + 1136) = xmmword_1BCE6ADA0;
  *(v2 + 1152) = xmmword_1BCE6ADB0;
  *(v2 + 1168) = xmmword_1BCE6ADC0;
  *(v2 + 1184) = xmmword_1BCE6ADD0;
  *(v2 + 1200) = xmmword_1BCE6ADE0;
  *(v2 + 1216) = xmmword_1BCE3C8C0;
  *(v2 + 1232) = 0x403E000000000000;
  *(v2 + 1240) = 0;
  *(v2 + 1244) = *&v8[3];
  *(v2 + 1241) = *v8;
  *(v2 + 1248) = xmmword_1BCE6ADF0;
  *(v2 + 1264) = xmmword_1BCE6AE00;
  *(v2 + 1280) = xmmword_1BCE6AE10;
  *(v2 + 1296) = xmmword_1BCE6AE20;
  *(v2 + 1312) = xmmword_1BCE6AE30;
  *(v2 + 1328) = xmmword_1BCE6AE40;
  *(v2 + 1344) = xmmword_1BCE41DA0;
  *(v2 + 1360) = 0;
  *(v2 + 1364) = *&v9[3];
  *(v2 + 1361) = *v9;
  *(v2 + 1368) = 0x3FE2B2B2C000000BLL;
  *(v2 + 1376) = xmmword_1BCE6AE50;
  *(v2 + 1392) = xmmword_1BCE6AE60;
  *(v2 + 1408) = xmmword_1BCE6AE70;
  *(v2 + 1424) = xmmword_1BCE6AE80;
  *(v2 + 1440) = xmmword_1BCE6AE90;
  *(v2 + 1456) = xmmword_1BCE3C8C0;
  *(v2 + 1472) = 0x4056800000000000;
  *(v2 + 1480) = 1;
  *(v2 + 1484) = *&v10[3];
  *(v2 + 1481) = *v10;
  *(v2 + 1488) = xmmword_1BCE6AEA0;
  *(v2 + 1504) = xmmword_1BCE6AEB0;
  *(v2 + 1520) = vdupq_n_s64(0x3FE151516000000BuLL);
  *(v2 + 1536) = xmmword_1BCE6AEC0;
  *(v2 + 1552) = xmmword_1BCE6AED0;
  *(v2 + 1568) = xmmword_1BCE6AEE0;
  *(v2 + 1584) = xmmword_1BCE41DA0;
  *(v2 + 1600) = 1;
  *(v2 + 1604) = *&v11[3];
  *(v2 + 1601) = *v11;
  *(v2 + 1608) = 0x3FE2B2B2C000000BLL;
  *(v2 + 1616) = xmmword_1BCE6AE50;
  *(v2 + 1632) = xmmword_1BCE6AE60;
  *(v2 + 1648) = xmmword_1BCE6AE70;
  *(v2 + 1664) = xmmword_1BCE6AE80;
  *(v2 + 1680) = xmmword_1BCE6AE90;
  *(v2 + 1696) = xmmword_1BCE3C8C0;
  *(v2 + 1712) = 0x403E000000000000;
  *(v2 + 1720) = 1;
  *(v2 + 1724) = *&v12[3];
  *(v2 + 1721) = *v12;
  *(v2 + 1728) = xmmword_1BCE6AEF0;
  *(v2 + 1744) = xmmword_1BCE6AF00;
  *(v2 + 1760) = xmmword_1BCE6AF10;
  *(v2 + 1776) = xmmword_1BCE6AF20;
  *(v2 + 1792) = xmmword_1BCE6AF30;
  *(v2 + 1808) = xmmword_1BCE6AF40;
  *(v2 + 1824) = xmmword_1BCE41CE0;
  *(v2 + 1840) = 1;
  *(v2 + 1844) = *&v13[3];
  *(v2 + 1841) = *v13;
  *(v2 + 1848) = 0x3FE1EA6457F793C8;
  *(v2 + 1856) = xmmword_1BCE6AF50;
  *(v2 + 1872) = xmmword_1BCE6AF60;
  *(v2 + 1888) = xmmword_1BCE6AF70;
  *(v2 + 1904) = xmmword_1BCE6AF80;
  *(v2 + 1920) = xmmword_1BCE6AF90;
  *(v2 + 1936) = xmmword_1BCE3C8C0;
  *(v2 + 1952) = 0x4028000000000000;
  *(v2 + 1960) = 1;
  *(v2 + 1964) = *&v14[3];
  *(v2 + 1961) = *v14;
  *(v2 + 1968) = xmmword_1BCE6AFA0;
  *(v2 + 1984) = xmmword_1BCE6AFB0;
  *(v2 + 2000) = xmmword_1BCE6AFC0;
  *(v2 + 2016) = xmmword_1BCE6AFD0;
  *(v2 + 2032) = xmmword_1BCE6AFE0;
  *(v2 + 2048) = xmmword_1BCE6AFF0;
  *(v2 + 2064) = xmmword_1BCE41C20;
  *(v2 + 2080) = 1;
  *(v2 + 2084) = *&v15[3];
  *(v2 + 2081) = *v15;
  *(v2 + 2088) = 0x3FE125BA459B8699;
  *(v2 + 2096) = xmmword_1BCE6B000;
  *(v2 + 2112) = xmmword_1BCE6B010;
  *(v2 + 2128) = xmmword_1BCE6B020;
  *(v2 + 2144) = xmmword_1BCE6B030;
  *(v2 + 2160) = xmmword_1BCE6B040;
  *(v2 + 2176) = xmmword_1BCE3C8C0;
  *(v2 + 2192) = 0;
  *(v2 + 2200) = 1;
  *(v2 + 2204) = *&v16[3];
  *(v2 + 2201) = *v16;
  *(v2 + 2208) = xmmword_1BCE6B050;
  *(v2 + 2224) = xmmword_1BCE6B060;
  *(v2 + 2240) = xmmword_1BCE6B070;
  *(v2 + 2256) = xmmword_1BCE6B080;
  *(v2 + 2272) = xmmword_1BCE6B090;
  *(v2 + 2288) = xmmword_1BCE6B0A0;
  *(v2 + 2304) = xmmword_1BCE41B60;
  *(v2 + 2320) = 1;
  *(v2 + 2324) = *&v17[3];
  *(v2 + 2321) = *v17;
  *(v2 + 2328) = 0x3FE07345DF9D5475;
  *(v2 + 2336) = xmmword_1BCE6B0B0;
  *(v2 + 2352) = xmmword_1BCE6B0C0;
  *(v2 + 2368) = xmmword_1BCE6B0D0;
  *(v2 + 2384) = xmmword_1BCE6B0E0;
  *(v2 + 2400) = xmmword_1BCE6B0F0;
  *(v2 + 2416) = xmmword_1BCE3C8C0;
  *(v2 + 2432) = 0xC028000000000000;
  *(v2 + 2440) = 1;
  *(v2 + 2444) = *&v18[3];
  *(v2 + 2441) = *v18;
  *(v2 + 2448) = xmmword_1BCE6B100;
  *(v2 + 2464) = xmmword_1BCE4C700;
  *(v2 + 2480) = xmmword_1BCE6B110;
  *(v2 + 2496) = xmmword_1BCE6B120;
  *(v2 + 2512) = xmmword_1BCE6B130;
  *(v2 + 2528) = xmmword_1BCE6AC30;
  *(v2 + 2544) = xmmword_1BCE41AA0;
  *(v2 + 2560) = 1;
  *(v2 + 2564) = *&v19[3];
  *(v2 + 2561) = *v19;
  *(v2 + 2568) = 0x3FCF9F9F80000000;
  *(v2 + 2576) = xmmword_1BCE6ABA0;
  *(v2 + 2592) = xmmword_1BCE6ABB0;
  *(v2 + 2608) = xmmword_1BCE6ABC0;
  *(v2 + 2624) = xmmword_1BCE5FF30;
  *(v2 + 2640) = xmmword_1BCE6ABD0;
  *(v2 + 2656) = xmmword_1BCE3C8C0;
  *(v2 + 2672) = 0xC03E000000000000;
  *(v2 + 2680) = 1;
  *(v2 + 2684) = *&v20[3];
  *(v2 + 2681) = *v20;
  *(v2 + 2688) = xmmword_1BCE6AB40;
  *(v2 + 2704) = xmmword_1BCE6AB50;
  *(v2 + 2720) = xmmword_1BCE6AB60;
  *(v2 + 2736) = xmmword_1BCE6AB70;
  *(v2 + 2752) = xmmword_1BCE6AB80;
  *(v2 + 2768) = xmmword_1BCE6AB90;
  *(v2 + 2784) = xmmword_1BCE41A90;
  *(v2 + 2800) = 1;
  *(v2 + 2804) = *&v21[3];
  *(v2 + 2801) = *v21;
  *(v2 + 2808) = 0x3FCFBF1D80000075;
  *(v2 + 2816) = xmmword_1BCE6B140;
  *(v2 + 2832) = xmmword_1BCE6B150;
  *(v2 + 2848) = xmmword_1BCE6B160;
  *(v2 + 2864) = xmmword_1BCE6B170;
  *(v2 + 2880) = xmmword_1BCE6B180;
  *(v2 + 2896) = xmmword_1BCE3C8C0;
  *(v2 + 2912) = 0xC056800000000000;
  *(v2 + 2920) = 1;
  *(v2 + 2924) = *&v22[3];
  *(v2 + 2921) = *v22;
  *(v2 + 2928) = xmmword_1BCE6AB40;
  *(v2 + 2944) = xmmword_1BCE6AB50;
  *(v2 + 2960) = xmmword_1BCE6AB60;
  *(v2 + 2976) = xmmword_1BCE6AB70;
  *(v2 + 2992) = xmmword_1BCE6AB80;
  *(v2 + 3008) = xmmword_1BCE6AB90;
  *(v2 + 3024) = 0x3FE0000000000000;
  *a1 = 0x3FFB333333333333;
  a1[1] = v2;
  return result;
}

void sub_1BCD7D0F4(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCD7D898();
  v4 = v3;
  sub_1BCBBBC20();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE6B190;
  *(a1 + 112) = 0x3F0F5C293EAE147BLL;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE6B1A0;
  *(a1 + 176) = 1119748096;
  *(a1 + 184) = 0x3EB333333E800000;
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
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3ECCCCCDu);
  *(a1 + 720) = 0x4220000041D00000;
  *(a1 + 728) = 1094084198;
  *(a1 + 736) = 1;
  *(a1 + 744) = 11;
  *(a1 + 752) = xmmword_1BCE48B20;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = vdup_n_s32(0x3F19999Au);
  *(a1 + 848) = 0x4220000041C00000;
  *(a1 + 856) = 1096932568;
  *(a1 + 864) = 1;
  *(a1 + 872) = 11;
  *(a1 + 880) = xmmword_1BCE48B30;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x417B58104100CCCDLL;
  *(a1 + 984) = 1075767314;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x401333333FDCCCCDLL;
  *(a1 + 1112) = 1083965739;
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
  *(a1 + 1216) = xmmword_1BCE6B1B0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F8000003F200000;
  *(a1 + 1296) = 0x40A0000042700000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE44E90;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 1070386381;
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
  *(a1 + 1645) = 16843009;
  *(a1 + 1649) = 1;
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
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE6B1C0;
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
  *(a1 + 1952) = 1082130432;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
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
  *(a1 + 2120) = 0x3ECCCCCD3E75C28FLL;
  *(a1 + 2128) = 0x3F6666663F333333;
  *(a1 + 2136) = 0x4130000041100000;
  *(a1 + 2144) = -1037565952;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1065353216;
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

double sub_1BCD7D898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043FA0000;
  *(v0 + 80) = xmmword_1BCE48B60;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE44EB0;
  *(v0 + 128) = xmmword_1BCE44EC0;
  *(v0 + 4912) = xmmword_1BCE3FD40;
  *(v0 + 6128) = xmmword_1BCE3FD40;
  *(v0 + 4944) = xmmword_1BCE48F00;
  *(v0 + 6160) = xmmword_1BCE48F00;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5184) = xmmword_1BCE40200;
  *(v0 + 6400) = xmmword_1BCE40200;
  *(v0 + 5232) = xmmword_1BCE48A00;
  *(v0 + 6448) = xmmword_1BCE48A00;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE6B2E0;
  *(v0 + 6576) = xmmword_1BCE6B2E0;
  *(v0 + 5376) = xmmword_1BCE6B2F0;
  *(v0 + 6592) = xmmword_1BCE6B2F0;
  *(v0 + 5392) = xmmword_1BCE6B300;
  *(v0 + 6608) = xmmword_1BCE6B300;
  *(v0 + 5408) = xmmword_1BCE6B310;
  *(v0 + 6624) = xmmword_1BCE6B310;
  *(v0 + 5424) = xmmword_1BCE490E0;
  *(v0 + 6640) = xmmword_1BCE490E0;
  *(v0 + 5440) = xmmword_1BCE6B320;
  *(v0 + 6656) = xmmword_1BCE6B320;
  *(v0 + 5456) = xmmword_1BCE6B330;
  *(v0 + 6672) = xmmword_1BCE6B330;
  *(v0 + 5472) = xmmword_1BCE6B340;
  *(v0 + 6688) = xmmword_1BCE6B340;
  *(v0 + 5872) = xmmword_1BCE48FD0;
  *(v0 + 7088) = xmmword_1BCE48FD0;
  *(v0 + 5904) = xmmword_1BCE6B350;
  *(v0 + 7120) = xmmword_1BCE6B350;
  *(v0 + 5920) = xmmword_1BCE6B360;
  *(v0 + 7136) = xmmword_1BCE6B360;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1150681088;
  *(v0 + 4928) = 1150681088;
  *(v0 + 6144) = 1150681088;
  *(v0 + 7360) = 1150681088;
  *(v0 + 3728) = xmmword_1BCE48E20;
  *(v0 + 7376) = xmmword_1BCE48E20;
  *(v0 + 3792) = xmmword_1BCE3E270;
  *(v0 + 7440) = xmmword_1BCE3E270;
  *(v0 + 3920) = xmmword_1BCE48E30;
  *(v0 + 7568) = xmmword_1BCE48E30;
  *(v0 + 3968) = xmmword_1BCE48E40;
  *(v0 + 7616) = xmmword_1BCE48E40;
  *(v0 + 4016) = xmmword_1BCE48E50;
  *(v0 + 7664) = xmmword_1BCE48E50;
  *(v0 + 4032) = 1065353216;
  *(v0 + 5248) = 1065353216;
  *(v0 + 6464) = 1065353216;
  *(v0 + 7680) = 1065353216;
  *(v0 + 4048) = xmmword_1BCE3E2F0;
  *(v0 + 7696) = xmmword_1BCE3E2F0;
  *(v0 + 4144) = xmmword_1BCE48E60;
  *(v0 + 7792) = xmmword_1BCE48E60;
  *(v0 + 4160) = xmmword_1BCE48E70;
  *(v0 + 7808) = xmmword_1BCE48E70;
  *(v0 + 4176) = xmmword_1BCE6B2A0;
  *(v0 + 7824) = xmmword_1BCE6B2A0;
  v1 = vdupq_n_s64(0x3FE6666660000000uLL);
  *(v0 + 4192) = v1;
  *(v0 + 7840) = v1;
  *(v0 + 4208) = xmmword_1BCE49DB0;
  *(v0 + 7856) = xmmword_1BCE49DB0;
  *(v0 + 4240) = xmmword_1BCE6B2B0;
  *(v0 + 7888) = xmmword_1BCE6B2B0;
  *(v0 + 4256) = xmmword_1BCE3D620;
  *(v0 + 7904) = xmmword_1BCE3D620;
  *(v0 + 4656) = xmmword_1BCE6B2C0;
  *(v0 + 8304) = xmmword_1BCE6B2C0;
  *(v0 + 4688) = xmmword_1BCE6B2D0;
  *(v0 + 8336) = xmmword_1BCE6B2D0;
  *(v0 + 4704) = xmmword_1BCE3CD20;
  *(v0 + 8352) = xmmword_1BCE3CD20;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1143930880;
  *(v0 + 8576) = 1143930880;
  *(v0 + 2512) = xmmword_1BCE48D20;
  *(v0 + 8592) = xmmword_1BCE48D20;
  *(v0 + 2544) = xmmword_1BCE48D30;
  *(v0 + 3760) = xmmword_1BCE48D30;
  *(v0 + 4976) = xmmword_1BCE48D30;
  *(v0 + 6192) = xmmword_1BCE48D30;
  *(v0 + 7408) = xmmword_1BCE48D30;
  *(v0 + 8624) = xmmword_1BCE48D30;
  *(v0 + 2560) = xmmword_1BCE3F930;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 4992) = xmmword_1BCE3F930;
  *(v0 + 6208) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 8640) = xmmword_1BCE3F930;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2704) = xmmword_1BCE48D40;
  *(v0 + 8784) = xmmword_1BCE48D40;
  *(v0 + 2736) = xmmword_1BCE48D50;
  *(v0 + 8816) = xmmword_1BCE48D50;
  *(v0 + 2752) = xmmword_1BCE48D60;
  *(v0 + 8832) = xmmword_1BCE48D60;
  *(v0 + 2768) = xmmword_1BCE44F40;
  *(v0 + 8848) = xmmword_1BCE44F40;
  *(v0 + 2800) = xmmword_1BCE48D70;
  *(v0 + 8880) = xmmword_1BCE48D70;
  *(v0 + 2928) = xmmword_1BCE48EC0;
  *(v0 + 9008) = xmmword_1BCE48EC0;
  *(v0 + 2960) = xmmword_1BCE6B280;
  *(v0 + 9040) = xmmword_1BCE6B280;
  *(v0 + 2976) = xmmword_1BCE6B290;
  *(v0 + 9056) = xmmword_1BCE6B290;
  *(v0 + 2992) = xmmword_1BCE48D90;
  *(v0 + 9072) = xmmword_1BCE48D90;
  *(v0 + 3024) = xmmword_1BCE48DA0;
  *(v0 + 9104) = xmmword_1BCE48DA0;
  *(v0 + 3040) = xmmword_1BCE48DB0;
  *(v0 + 9120) = xmmword_1BCE48DB0;
  *(v0 + 3296) = xmmword_1BCE45000;
  *(v0 + 4512) = xmmword_1BCE45000;
  *(v0 + 5728) = xmmword_1BCE45000;
  *(v0 + 6944) = xmmword_1BCE45000;
  *(v0 + 8160) = xmmword_1BCE45000;
  *(v0 + 9376) = xmmword_1BCE45000;
  *(v0 + 3440) = xmmword_1BCE48E00;
  *(v0 + 9520) = xmmword_1BCE48E00;
  *(v0 + 3456) = xmmword_1BCE3ECB0;
  *(v0 + 9536) = xmmword_1BCE3ECB0;
  *(v0 + 3472) = xmmword_1BCE48E10;
  *(v0 + 9552) = xmmword_1BCE48E10;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5888) = xmmword_1BCE3DA70;
  *(v0 + 6304) = xmmword_1BCE3DA70;
  *(v0 + 7104) = xmmword_1BCE3DA70;
  *(v0 + 9568) = xmmword_1BCE3DA70;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x41200000442F0000;
  *(v0 + 9792) = 0x41200000442F0000;
  *(v0 + 1328) = xmmword_1BCE48C40;
  *(v0 + 9840) = xmmword_1BCE48C40;
  *(v0 + 1344) = xmmword_1BCE48C50;
  *(v0 + 9856) = xmmword_1BCE48C50;
  *(v0 + 1360) = xmmword_1BCE432E0;
  *(v0 + 9872) = xmmword_1BCE432E0;
  *(v0 + 1376) = xmmword_1BCE432F0;
  *(v0 + 9888) = xmmword_1BCE432F0;
  *(v0 + 1440) = xmmword_1BCE3DCB0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 8736) = xmmword_1BCE3DCB0;
  *(v0 + 9952) = xmmword_1BCE3DCB0;
  *(v0 + 1488) = xmmword_1BCE48C60;
  *(v0 + 10000) = xmmword_1BCE48C60;
  *(v0 + 1520) = xmmword_1BCE48C70;
  *(v0 + 10032) = xmmword_1BCE48C70;
  *(v0 + 1536) = xmmword_1BCE3ED10;
  *(v0 + 10048) = xmmword_1BCE3ED10;
  *(v0 + 1552) = xmmword_1BCE48C80;
  *(v0 + 10064) = xmmword_1BCE48C80;
  *(v0 + 1568) = xmmword_1BCE48C90;
  *(v0 + 10080) = xmmword_1BCE48C90;
  *(v0 + 1584) = xmmword_1BCE3CA10;
  *(v0 + 10096) = xmmword_1BCE3CA10;
  *(v0 + 1728) = xmmword_1BCE48CB0;
  *(v0 + 10240) = xmmword_1BCE48CB0;
  *(v0 + 1744) = xmmword_1BCE6B200;
  *(v0 + 10256) = xmmword_1BCE6B200;
  *(v0 + 1760) = xmmword_1BCE6B210;
  *(v0 + 10272) = xmmword_1BCE6B210;
  *(v0 + 1776) = xmmword_1BCE6B220;
  *(v0 + 10288) = xmmword_1BCE6B220;
  *(v0 + 1792) = xmmword_1BCE414B0;
  *(v0 + 10304) = xmmword_1BCE414B0;
  *(v0 + 1808) = xmmword_1BCE6B230;
  *(v0 + 10320) = xmmword_1BCE6B230;
  *(v0 + 1824) = xmmword_1BCE6B240;
  *(v0 + 10336) = xmmword_1BCE6B240;
  *(v0 + 2032) = xmmword_1BCE6B250;
  *(v0 + 10544) = xmmword_1BCE6B250;
  *(v0 + 2048) = xmmword_1BCE6B260;
  *(v0 + 4672) = xmmword_1BCE6B260;
  *(v0 + 8320) = xmmword_1BCE6B260;
  *(v0 + 10560) = xmmword_1BCE6B260;
  *(v0 + 1712) = xmmword_1BCE48CA0;
  *(v0 + 2224) = xmmword_1BCE48CA0;
  *(v0 + 10224) = xmmword_1BCE48CA0;
  *(v0 + 10736) = xmmword_1BCE48CA0;
  *(v0 + 2240) = xmmword_1BCE6B270;
  *(v0 + 10752) = xmmword_1BCE6B270;
  *(v0 + 2256) = xmmword_1BCE48CC0;
  *(v0 + 10768) = xmmword_1BCE48CC0;
  *(v0 + 144) = xmmword_1BCE43250;
  *(v0 + 160) = xmmword_1BCE43260;
  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 11008) = 0x420C000043FA0000;
  __asm { FMOV            V6.2D, #0.5 }

  *(v0 + 1296) = xmmword_1BCE48B60;
  *(v0 + 9808) = xmmword_1BCE48B60;
  *(v0 + 11024) = xmmword_1BCE48B60;
  *(v0 + 208) = _Q6;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 2528) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 4960) = xmmword_1BCE3E150;
  *(v0 + 6176) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 8608) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 11056) = xmmword_1BCE44EB0;
  *(v0 + 240) = xmmword_1BCE43270;
  *(v0 + 256) = xmmword_1BCE43280;
  *(v0 + 11072) = xmmword_1BCE44EC0;
  *(v0 + 11088) = xmmword_1BCE43250;
  *(v0 + 272) = xmmword_1BCE48B70;
  *(v0 + 288) = xmmword_1BCE3FC70;
  *(v0 + 11104) = xmmword_1BCE43260;
  *(v0 + 1424) = _Q6;
  *(v0 + 2640) = _Q6;
  *(v0 + 4224) = _Q6;
  *(v0 + 7872) = _Q6;
  *(v0 + 8720) = _Q6;
  *(v0 + 9936) = _Q6;
  *(v0 + 11152) = _Q6;
  *(v0 + 304) = xmmword_1BCE48B80;
  *(v0 + 320) = xmmword_1BCE3E220;
  *(v0 + 11168) = xmmword_1BCE3D910;
  *(v0 + 1456) = xmmword_1BCE43270;
  *(v0 + 9968) = xmmword_1BCE43270;
  *(v0 + 11184) = xmmword_1BCE43270;
  *(v0 + 336) = xmmword_1BCE3FC90;
  *(v0 + 352) = xmmword_1BCE3CEE0;
  *(v0 + 1472) = xmmword_1BCE43280;
  *(v0 + 9984) = xmmword_1BCE43280;
  *(v0 + 11200) = xmmword_1BCE43280;
  v8 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 368) = v8;
  *(v0 + 8368) = _Q4;
  *(v0 + 11216) = xmmword_1BCE48B70;
  result = 1.0;
  *(v0 + 11232) = xmmword_1BCE3FC70;
  *(v0 + 11248) = xmmword_1BCE48B80;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 11264) = xmmword_1BCE3E220;
  *(v0 + 8176) = _Q4;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = xmmword_1BCE3A880;
  *(v0 + 8144) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 8048) = _Q4;
  *(v0 + 11280) = xmmword_1BCE3FC90;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 7968) = _Q4;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 2784) = xmmword_1BCE3CEE0;
  *(v0 + 5216) = xmmword_1BCE3CEE0;
  *(v0 + 6432) = xmmword_1BCE3CEE0;
  *(v0 + 8864) = xmmword_1BCE3CEE0;
  *(v0 + 11296) = xmmword_1BCE3CEE0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 2816) = v8.i64[0];
  *(v0 + 7632) = _Q4;
  *(v0 + 7648) = xmmword_1BCE3DD90;
  *(v0 + 8896) = v8.i64[0];
  *(v0 + 11312) = v8;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q4;
  *(v0 + 7552) = _Q4;
  *(v0 + 7584) = _Q4;
  *(v0 + 7600) = _Q4;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7472) = _Q4;
  *(v0 + 7488) = _Q4;
  *(v0 + 7504) = _Q4;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 7337) = *v15;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7368) = 1065353216;
  *(v0 + 4096) = 0u;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4032000000000001;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 7152) = _Q4;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 6512) = 0u;
  *(v0 + 6896) = _Q4;
  *(v0 + 6912) = xmmword_1BCE3A880;
  *(v0 + 6928) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6800) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 496) = xmmword_1BCE49010;
  *(v0 + 512) = xmmword_1BCE42F00;
  *(v0 + 11440) = xmmword_1BCE49010;
  *(v0 + 11456) = xmmword_1BCE42F00;
  *(v0 + 6544) = _Q4;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 560) = xmmword_1BCE49020;
  *(v0 + 576) = xmmword_1BCE49030;
  *(v0 + 11504) = xmmword_1BCE49020;
  *(v0 + 6504) = 0;
  *(v0 + 11520) = xmmword_1BCE49030;
  *(v0 + 11536) = xmmword_1BCE48BE0;
  *(v0 + 592) = xmmword_1BCE48BE0;
  *(v0 + 608) = xmmword_1BCE48BF0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6336) = _Q4;
  *(v0 + 6352) = _Q4;
  *(v0 + 6368) = _Q4;
  *(v0 + 6384) = _Q4;
  *(v0 + 6416) = _Q4;
  *(v0 + 11552) = xmmword_1BCE48BF0;
  *(v0 + 6256) = _Q4;
  *(v0 + 6272) = _Q4;
  *(v0 + 6288) = _Q4;
  *(v0 + 6320) = _Q4;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 6121) = *v14;
  *(v0 + 6152) = 1065353216;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q4;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 3264) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 4480) = xmmword_1BCE3A880;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = xmmword_1BCE3A880;
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
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 9344) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 4000) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 816) = xmmword_1BCE6B1D0;
  *(v0 + 832) = xmmword_1BCE42EF0;
  *(v0 + 5152) = _Q4;
  *(v0 + 5168) = _Q4;
  *(v0 + 5200) = _Q4;
  *(v0 + 5072) = _Q4;
  *(v0 + 5104) = _Q4;
  *(v0 + 5120) = _Q4;
  *(v0 + 5136) = _Q4;
  *(v0 + 11760) = xmmword_1BCE6B1D0;
  *(v0 + 2944) = xmmword_1BCE42EF0;
  *(v0 + 5040) = _Q4;
  *(v0 + 5056) = _Q4;
  *(v0 + 9024) = xmmword_1BCE42EF0;
  *(v0 + 11776) = xmmword_1BCE42EF0;
  *(v0 + 848) = xmmword_1BCE6B1E0;
  *(v0 + 864) = xmmword_1BCE6B1F0;
  *(v0 + 2064) = xmmword_1BCE6B1E0;
  *(v0 + 4800) = _Q4;
  *(v0 + 4905) = *v13;
  *(v0 + 4936) = 1065353216;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 10576) = xmmword_1BCE6B1E0;
  *(v0 + 11792) = xmmword_1BCE6B1E0;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 2080) = xmmword_1BCE6B1F0;
  *(v0 + 10592) = xmmword_1BCE6B1F0;
  *(v0 + 11808) = xmmword_1BCE6B1F0;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 11952) = xmmword_1BCE48C10;
  *(v0 + 1008) = xmmword_1BCE48C10;
  *(v0 + 1024) = xmmword_1BCE48C20;
  *(v0 + 4496) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 4464) = _Q4;
  *(v0 + 3008) = xmmword_1BCE48C20;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 4368) = _Q4;
  *(v0 + 9088) = xmmword_1BCE48C20;
  *(v0 + 11968) = xmmword_1BCE48C20;
  *(v0 + 1040) = xmmword_1BCE48C30;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 11984) = xmmword_1BCE48C30;
  *(v0 + 11472) = xmmword_1BCE48BA0;
  *(v0 + 528) = xmmword_1BCE48BA0;
  *(v0 + 544) = xmmword_1BCE48BB0;
  *(v0 + 1056) = xmmword_1BCE48BB0;
  *(v0 + 2272) = xmmword_1BCE48BB0;
  *(v0 + 10784) = xmmword_1BCE48BB0;
  *(v0 + 11488) = xmmword_1BCE48BB0;
  *(v0 + 12000) = xmmword_1BCE48BB0;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3936) = _Q4;
  *(v0 + 3952) = _Q4;
  *(v0 + 3984) = _Q4;
  *(v0 + 3824) = _Q4;
  *(v0 + 3840) = _Q4;
  *(v0 + 3856) = _Q4;
  *(v0 + 3872) = xmmword_1BCE3DAE0;
  *(v0 + 3888) = _Q4;
  *(v0 + 3904) = _Q4;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3504) = _Q4;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3536) = _Q4;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3689) = *v12;
  *(v0 + 3720) = 1065353216;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4032000000000001;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3632) = _Q4;
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
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 3280) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 3056) = _Q4;
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
  *(v0 + 2896) = _Q4;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 2672) = _Q4;
  *(v0 + 2688) = _Q4;
  *(v0 + 2720) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 2608) = _Q4;
  *(v0 + 2624) = _Q4;
  *(v0 + 176) = _Q4;
  *(v0 + 192) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 424) = 0;
  *(v0 + 2400) = _Q4;
  *(v0 + 2416) = _Q4;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 656) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 752) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 2288) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 2192) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1257) = *v10;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q4;
  *(v0 + 1408) = _Q4;
  *(v0 + 1504) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8688) = _Q4;
  *(v0 + 8704) = _Q4;
  *(v0 + 8752) = _Q4;
  *(v0 + 8768) = _Q4;
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
  *(v0 + 9360) = _Q4;
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
  *(v0 + 9904) = _Q4;
  *(v0 + 9920) = _Q4;
  *(v0 + 10016) = _Q4;
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
  *(v0 + 11120) = _Q4;
  *(v0 + 11136) = _Q4;
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
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v17;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCD7EA64(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCB493C8();
  v4 = v3;
  sub_1BCB493C8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE6B190;
  *(a1 + 112) = 0x3F0F5C293EAE147BLL;
  *(a1 + 128) = xmmword_1BCE44E30;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE6B1A0;
  *(a1 + 176) = 1119748096;
  *(a1 + 184) = 0x3EB333333E800000;
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
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F4CCCCDLL;
  *(a1 + 720) = 0x4200000041D00000;
  *(a1 + 728) = 1101976344;
  *(a1 + 736) = 1;
  *(a1 + 744) = 9;
  *(a1 + 752) = xmmword_1BCE3FB40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x4190E66641594DD2;
  *(a1 + 856) = 1094340698;
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
  *(a1 + 976) = 0x417B58104100CCCDLL;
  *(a1 + 984) = 1075767314;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 5;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x401333333FDCCCCDLL;
  *(a1 + 1112) = 1083965739;
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
  *(a1 + 1216) = xmmword_1BCE6B3F0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3F8000003F200000;
  *(a1 + 1296) = 0x40A0000042700000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE44E90;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 1070386381;
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
  *(v2 + 213) = 0x1000000;
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
  *(a1 + 1828) = xmmword_1BCE6B400;
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
  *(a1 + 1952) = 1082130432;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
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
  *(a1 + 2120) = 0x3ECCCCCD3E4CCCCDLL;
  *(a1 + 2128) = 0x3F6666663F333333;
  *(a1 + 2136) = 0x4130000041100000;
  *(a1 + 2144) = -1037565952;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1065353216;
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

void sub_1BCD7F200(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id ChartDragGestureRecognizerRepresentable.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChartDragGestureRecognizerRepresentable.Coordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartDragGestureRecognizerRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ChartDragGestureRecognizerRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartDragGestureRecognizerRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ChartDragGestureRecognizerRepresentable.makeCoordinator(converter:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ChartDragGestureRecognizerRepresentable.Coordinator());

  return [v0 init];
}

id ChartDragGestureRecognizerRepresentable.makeUIGestureRecognizer(context:)()
{
  type metadata accessor for ChartDragGestureRecognizer();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DC20);
  sub_1BCE1C1E0();
  [v0 setDelegate_];

  return v0;
}

char *ChartDragGestureRecognizerRepresentable.handleUIGestureRecognizerAction(_:context:)(char *a1)
{
  v3 = *v1;
  result = [a1 view];
  if (result)
  {

    result = [a1 state];
    if ((result - 3) < 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      return v3(v6, v7, v8);
    }

    if (result == 2 || result == 1)
    {
      v5 = &a1[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_currentLocation];
      swift_beginAccess();
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = 0;
      return v3(v6, v7, v8);
    }
  }

  return result;
}

id sub_1BCD7F500@<X0>(void *a1@<X8>)
{
  result = ChartDragGestureRecognizerRepresentable.makeCoordinator(converter:)();
  *a1 = result;
  return result;
}

uint64_t ChartDragGestureRecognizer.startLocation.setter(double a1, double a2)
{
  OUTLINED_FUNCTION_3_80(OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_startLocation);
  result = OUTLINED_FUNCTION_6_62();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

double sub_1BCD7F5F4(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_80(*a1);
  swift_beginAccess();
  return *v1;
}

uint64_t ChartDragGestureRecognizer.currentLocation.setter(double a1, double a2)
{
  OUTLINED_FUNCTION_3_80(OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_currentLocation);
  result = OUTLINED_FUNCTION_6_62();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

double ChartDragGestureRecognizer.minimumPressDuration.getter()
{
  v1 = OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_minimumPressDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ChartDragGestureRecognizer.minimumPressDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_minimumPressDuration;
  result = OUTLINED_FUNCTION_6_62();
  *(v1 + v3) = a1;
  return result;
}

void ChartDragGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BCE1DC70();
    sub_1BCD7FA54();
    sub_1BCD7FA98();
    sub_1BCE1D6C0();
    v3 = v26;
    v5 = v27;
    v2 = v28;
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v5 = a1 + 56;
    OUTLINED_FUNCTION_0_78();
    v7 = v8 & v9;

    v6 = 0;
  }

  v10 = 0;
  v11 = (v2 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_1BCE1DCA0() || (sub_1BCD7FA54(), swift_dynamicCast(), (v14 = v25) == 0))
    {
LABEL_17:
      sub_1BC947914();
      if (v10)
      {
        if ([v4 state] || *&v4[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer] || (v15 = OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch, *&v4[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch]))
        {
          [v4 ignoreTouch:v10 forEvent:a2];
        }

        else
        {
          v16 = [v4 view];
          [v10 locationInView_];
          v18 = v17;
          v20 = v19;

          v21 = &v4[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_startLocation];
          OUTLINED_FUNCTION_6_62();
          *v21 = v18;
          *(v21 + 1) = v20;
          v22 = *&v4[v15];
          *&v4[v15] = v10;
          v23 = v10;

          sub_1BCD7FAF0();
        }
      }

      return;
    }

LABEL_14:
    if (v10)
    {
      [v4 ignoreTouch:v14 forEvent:a2];
    }

    else
    {
      v10 = v14;
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_10:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_17;
    }

    v13 = *(v5 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_1BCD7FA54()
{
  result = qword_1EBD0DC40;
  if (!qword_1EBD0DC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD0DC40);
  }

  return result;
}

unint64_t sub_1BCD7FA98()
{
  result = qword_1EBD0DC48;
  if (!qword_1EBD0DC48)
  {
    sub_1BCD7FA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DC48);
  }

  return result;
}

void sub_1BCD7FAF0()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_minimumPressDuration;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  aBlock[4] = sub_1BCD809A4;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BCD7F200;
  aBlock[3] = &block_descriptor_6;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  v7 = [v1 scheduledTimerWithTimeInterval:0 repeats:v5 block:v3];
  _Block_release(v5);
  v8 = *&v6[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer];
  *&v6[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer] = v7;
}

void ChartDragGestureRecognizer.touchesMoved(_:with:)(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer))
  {
    v3 = v1;
    v4 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1BCE1DC70();
      sub_1BCD7FA54();
      sub_1BCD7FA98();
      OUTLINED_FUNCTION_5_66();
      v4 = v19;
      v5 = v20;
      v1 = v21;
      v6 = v22;
      v7 = v23;
    }

    else
    {
      v5 = a1 + 56;
      OUTLINED_FUNCTION_0_78();
      v7 = v8 & v9;

      v6 = 0;
    }

    v10 = (v1 + 64) >> 6;
    if (v4 < 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v11 = v6;
      v12 = v6;
      if (!v7)
      {
        break;
      }

LABEL_10:
      v13 = OUTLINED_FUNCTION_1_81();
      if (!v13)
      {
LABEL_19:
        OUTLINED_FUNCTION_4_68();
        sub_1BC947914();
        return;
      }

      while (1)
      {
        v14 = *(v3 + OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch);
        if (v14)
        {
          sub_1BCD7FA54();
          v15 = v13;
          v16 = v14;
          v17 = sub_1BCE1DAC0();

          if (v17)
          {
            sub_1BCD7FE88();
          }
        }

        v6 = v12;
        v7 = v2;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_12:
        if (sub_1BCE1DCA0())
        {
          sub_1BCD7FA54();
          swift_dynamicCast();
          v13 = v18;
          v12 = v6;
          v2 = v7;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_19;
      }

      ++v11;
      if (*(v5 + 8 * v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BCD7FE88()
{
  v1 = *&v0[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    [v2 locationInView_];
    v5 = v4;
    v7 = v6;

    v8 = &v0[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_currentLocation];
    swift_beginAccess();
    *v8 = v5;
    *(v8 + 1) = v7;
    if ([v0 state])
    {
      if ([v0 state] == 1)
      {
        [v0 setState_];
      }
    }

    else
    {
      [v0 setState_];
    }
  }

  else if ([v0 state] == 1 || objc_msgSend(v0, sel_state) == 2)
  {

    [v0 setState_];
  }
}

void ChartDragGestureRecognizer.touchesEnded(_:with:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BCE1DC70();
    sub_1BCD7FA54();
    sub_1BCD7FA98();
    OUTLINED_FUNCTION_5_66();
    v3 = v19;
    v4 = v20;
    v1 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v4 = a1 + 56;
    OUTLINED_FUNCTION_0_78();
    v6 = v7 & v8;

    v5 = 0;
  }

  v17 = v1;
  v9 = (v1 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_1BCE1DCA0() || (sub_1BCD7FA54(), swift_dynamicCast(), (v11 = v18) == 0))
    {
LABEL_20:
      OUTLINED_FUNCTION_4_68();
      sub_1BC947914();
      return;
    }

LABEL_14:
    v12 = *&v2[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch];
    if (v12)
    {
      sub_1BCD7FA54();
      v13 = v11;
      v14 = v12;
      v15 = sub_1BCE1DAC0();

      if (v15)
      {
        sub_1BCD8021C();
        v16 = *&v2[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch];
        *&v2[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch] = 0;

        if ([v2 state] == 1 || objc_msgSend(v2, sel_state) == 2)
        {
          [v2 setState_];
        }
      }
    }
  }

  v10 = v5;
  if (v6)
  {
LABEL_10:
    v11 = OUTLINED_FUNCTION_1_81();
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_20;
    }

    ++v10;
    if (*(v4 + 8 * v5))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1BCD8021C()
{
  v1 = OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer;
  v2 = *(v0 + OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1BCD80284(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_1BCD7FA54();
  sub_1BCD7FA98();
  v8 = sub_1BCE1D6B0();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

Swift::Void __swiftcall ChartDragGestureRecognizer.reset()()
{
  sub_1BCD8021C();
  v1 = *(v0 + OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch);
  *(v0 + OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch) = 0;
}

void sub_1BCD80434(uint64_t a1, uint64_t a2)
{
  sub_1BCD8021C();
  if (*(a2 + OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch))
  {
    sub_1BCD7FE88();
  }
}

id ChartDragGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1BCE1E070();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id ChartDragGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_startLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_currentLocation];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_minimumPressDuration] = 0x3FB999999999999ALL;
  *&v3[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_initialTouch] = 0;
  *&v3[OBJC_IVAR____TtC9WeatherUI26ChartDragGestureRecognizer_timer] = 0;
  sub_1BCD80870(a1, v19);
  v9 = v20;
  if (v20)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1BCE1E070();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTarget_action_, v15, a2);
  swift_unknownObjectRelease();
  sub_1BCD808E0(a1);
  return v16;
}

id ChartDragGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BCD80870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0DC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCD808E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0DC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UltravioletInlineContentView.status.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UltravioletInlineContentView(0);
  v3 = OUTLINED_FUNCTION_1_82(v2);
  return sub_1BCD80E9C(v3, a1, v4);
}

uint64_t UltravioletInlineContentView.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD079D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for UltravioletInlineContentView(0);
  return sub_1BCBA31F4(a1, a2 + *(v4 + 20), type metadata accessor for UltravioletComplicationDataStatus);
}

uint64_t UltravioletInlineContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DCD0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DCD8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v31[0] = type metadata accessor for UltravioletInlineContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for UltravioletComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for UltravioletComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for UltravioletInlineContentView(0);
  v22 = OUTLINED_FUNCTION_1_82(v21);
  sub_1BCD80E9C(v22, v15, v23);
  if (__swift_getEnumTagSinglePayload(v15, 2, v16))
  {
    sub_1BCD80EFC(v15, type metadata accessor for UltravioletComplicationDataStatus);
    v24 = sub_1BCD80E48();
    sub_1BCE1C7E0();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_91();
    sub_1BCD81D58(v25, v26);
    v32 = &type metadata for UltravioletInlineContentView.Placeholder;
    v33 = v24;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCBA31F4(v15, v20, type metadata accessor for UltravioletComplicationViewModel);
    sub_1BCD80E9C(v20, v11, type metadata accessor for UltravioletComplicationViewModel);
    sub_1BCD80E9C(v11, v7, type metadata accessor for UltravioletInlineContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_91();
    sub_1BCD81D58(v28, v29);
    v30 = sub_1BCD80E48();
    v32 = &type metadata for UltravioletInlineContentView.Placeholder;
    v33 = v30;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    sub_1BCD80EFC(v11, type metadata accessor for UltravioletInlineContentView.Content);
    return sub_1BCD80EFC(v20, type metadata accessor for UltravioletComplicationViewModel);
  }
}

unint64_t sub_1BCD80E48()
{
  result = qword_1EDA186F0[0];
  if (!qword_1EDA186F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA186F0);
  }

  return result;
}

uint64_t sub_1BCD80E9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCD80EFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCD80F9C()
{
  result = qword_1EDA1B878;
  if (!qword_1EDA1B878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DCE0);
    sub_1BCD81D58(&qword_1EDA18788, type metadata accessor for UltravioletInlineContentView.Content);
    sub_1BCD80E48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B878);
  }

  return result;
}

uint64_t sub_1BCD810D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v21 = sub_1BCE1C100();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09D90);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09D98);
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - v10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DA0);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v19 - v12;
  *v8 = sub_1BCE1BC90();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DA8) + 44)];
  v23 = v2;
  sub_1BCD81474(v14);
  sub_1BCE1C0D0();
  v15 = sub_1BC957184(&qword_1EDA1B580, &qword_1EBD09D90);
  sub_1BCE1C930();
  (*(v3 + 8))(v5, v21);
  sub_1BC94C05C(v8, &qword_1EBD09D90);
  if (qword_1EDA17928 != -1)
  {
    swift_once();
  }

  v27 = xmmword_1EDA2EE90;
  v25 = v6;
  v26 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v16 = v20;
  sub_1BCE1C8E0();
  (*(v9 + 8))(v11, v16);
  *&v27 = sub_1BCA44E3C();
  *(&v27 + 1) = v17;
  sub_1BCE1B880();

  return sub_1BC94C05C(v13, &qword_1EBD09DA0);
}

uint64_t sub_1BCD81474@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  type metadata accessor for UltravioletComplicationViewModel();
  sub_1BCE1A070();
  sub_1BCE1A030();
  v9 = sub_1BCE1CBA0();
  if (qword_1EDA1BEA0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDA1BEA8;
  v11 = sub_1BCE1A060();
  v25 = v10;
  v12._rawValue = v10;
  v13 = ColorSpectrum.color(for:in:)(v12, v11);
  v25 = v9;
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DC0);
  sub_1BCB6B554();
  sub_1BCE1C840();

  sub_1BCE1BD10();
  sub_1BCE1BD00();
  v25 = sub_1BCE1A060();
  sub_1BCE1BCB0();
  sub_1BCE1BD00();
  sub_1BCE1A070();
  sub_1BCE1A020();
  sub_1BCE1BCF0();

  sub_1BCE1BD00();
  sub_1BCE1BD40();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_1EDA1EFB8;
  v15 = sub_1BCE1C680();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BCB6B60C(v8, v5);
  sub_1BCB6B60C(v5, a1);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09DD0) + 48);
  *v22 = v15;
  *(v22 + 8) = v17;
  *(v22 + 16) = v19 & 1;
  *(v22 + 24) = v21;
  sub_1BCA81D10(v15, v17, v19 & 1);

  sub_1BC94C05C(v8, &qword_1EBD09DB8);
  sub_1BC998CF4(v15, v17, v19 & 1);

  return sub_1BC94C05C(v5, &qword_1EBD09DB8);
}

uint64_t sub_1BCD81878@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1BCE1C100();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B70);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B78);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v21 - v8;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1CBA0();
  sub_1BCE1BCE0();

  sub_1BCE1BD00();
  if (qword_1EDA17938 != -1)
  {
    swift_once();
  }

  sub_1BCE1BCF0();

  sub_1BCE1BD00();
  sub_1BCE1BD40();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1EDA1EFB8;
  v11 = sub_1BCE1C680();
  v13 = v12;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  v15 = v14 & 1;
  v30 = v14 & 1;
  v31 = v16;
  sub_1BCE1C0D0();
  v17 = MEMORY[0x1E6981148];
  v18 = MEMORY[0x1E6981138];
  sub_1BCE1C930();
  (*(v21 + 8))(v3, v22);
  sub_1BC998CF4(v11, v13, v15);

  if (qword_1EDA17928 != -1)
  {
    swift_once();
  }

  v29 = xmmword_1EDA2EE90;
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v19 = v24;
  sub_1BCE1C8E0();
  (*(v23 + 8))(v7, v19);
  if (qword_1EDA17920 != -1)
  {
    swift_once();
  }

  v29 = xmmword_1EDA2EE80;
  sub_1BCE1B880();
  return sub_1BC94C05C(v9, &qword_1EBD09B78);
}

uint64_t sub_1BCD81D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AxisValue.isLast.getter()
{
  v0 = sub_1BCE1B3B0();
  result = sub_1BCE1B3A0();
  if (!__OFSUB__(result, 1))
  {
    return v0 == result - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCD81DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v139 = a4;
  v140 = a5;
  v145 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  v10 = OUTLINED_FUNCTION_14(v9);
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v124 - v11;
  v12 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
  v13 = OUTLINED_FUNCTION_14(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v144 = (v14 - v15);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v16);
  v141 = (&v124 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_3_6();
  v142 = v19;
  v143 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v124 - v20;
  v128 = sub_1BCE199D0();
  OUTLINED_FUNCTION_3_6();
  v131 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3();
  v127 = (v23 - v24);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v124 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590);
  v28 = OUTLINED_FUNCTION_14(v27);
  MEMORY[0x1EEE9AC00](v28);
  countAndFlagsBits = (&v124 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  v31 = OUTLINED_FUNCTION_14(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v138 = v32 - v33;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v124 - v35;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v36);
  v147 = &v124 - v37;
  v38 = sub_1BCE196E0();
  v148 = v38;
  OUTLINED_FUNCTION_3_6();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  v150 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  v44 = (v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3();
  v47 = v45 - v46;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v124 - v50;
  (*(v40 + 16))(&v124 - v50, a2, v38, v49);
  v52 = v44[14];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  v53 = *(v135 - 8);
  (*(v53 + 16))(&v51[v52], a3, v135);
  v54 = v44[18];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  v56 = *(v55 - 8);
  (*(v56 + 16))(&v51[v54], v139, v55);
  sub_1BC952ABC(v140, &v51[v44[22]], &qword_1EBD085B0);
  v57 = sub_1BCD82944(v51, v137, a1);
  v136 = v58;
  v137 = v57;
  sub_1BC952ABC(v51, v47, &qword_1EBD08598);
  v59 = v44[14];
  v60 = v44[18];
  v61 = v44[22];
  v140 = v40;
  (*(v40 + 32))(v150, v47, v148);
  sub_1BC94C05C(v47 + v61, &qword_1EBD085B0);
  (*(v56 + 8))(v47 + v60, v55);
  v62 = v47 + v59;
  v63 = v147;
  (*(v53 + 8))(v62, v135);
  v139 = v51;
  sub_1BCD83BB8(a1, v51, v63);
  v64 = a1;
  v65 = countAndFlagsBits;
  sub_1BC952ABC(v64, countAndFlagsBits, &qword_1EBD08590);
  v66 = type metadata accessor for PlatterViewLocation();
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    sub_1BC94C05C(v65, &qword_1EBD08590);
    v134 = 0xE000000000000000;
    v135 = 0;
  }

  else
  {
    v67 = *v65;
    v134 = v65[1];
    v135 = v67;

    sub_1BCD843B8(v65, type metadata accessor for PlatterViewLocation);
  }

  v68 = v130;
  sub_1BCE196D0();
  v69 = sub_1BCE19620();
  v70 = WeatherCondition.conditionIconName(isDaytime:isFilled:)(v69 & 1, 1);
  object = v70.value._object;
  countAndFlagsBits = v70.value._countAndFlagsBits;
  v71 = *(v131 + 8);
  v72 = v68;
  v73 = v128;
  v71(v72, v128);
  v74 = v127;
  sub_1BCE196D0();
  v75 = sub_1BCE198F0();
  v130 = v76;
  v131 = v75;
  v71(v74, v73);
  v77 = v149;
  sub_1BCE19640();
  static Set<>.full.getter();
  v78 = sub_1BCE19280();
  v79 = v146;
  v80 = OUTLINED_FUNCTION_3_81();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v78);
  v83 = v141;
  OUTLINED_FUNCTION_4_69();

  sub_1BC94C05C(v79, &qword_1EBD07890);
  v84 = sub_1BCE1A3E0();
  v85 = sub_1BCE1A3A0();
  v128 = sub_1BCB37580(v83, 0, v85, v77);
  v127 = v86;

  sub_1BCD843B8(v83, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v87 = v143;
  v88 = *(v142 + 8);
  v88(v77, v143);
  v89 = v129;
  sub_1BC952ABC(v63, v129, &qword_1EBD08CA8);
  v90 = sub_1BCE19540();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v90);
  v126 = v84;
  v125 = v78;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC94C05C(v89, &qword_1EBD08CA8);
    v142 = 0;
    v129 = 0;
  }

  else
  {
    sub_1BCE194C0();
    (*(*(v90 - 8) + 8))(v89, v90);
    static Set<>.full.getter();
    v92 = OUTLINED_FUNCTION_3_81();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v78);
    OUTLINED_FUNCTION_4_69();

    sub_1BC94C05C(v79, &qword_1EBD07890);
    v95 = v144;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    sub_1BCD843B8(v83, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v96 = sub_1BCE1A3A0();
    v142 = sub_1BCB37580(v95, 0, v96, v149);
    v129 = v97;

    v77 = v149;
    sub_1BCD843B8(v95, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v88(v77, v87);
  }

  v98 = v87;
  v99 = v147;
  v100 = v138;
  sub_1BC952ABC(v147, v138, &qword_1EBD08CA8);
  if (__swift_getEnumTagSinglePayload(v100, 1, v90) == 1)
  {
    sub_1BC94C05C(v99, &qword_1EBD08CA8);
    v101 = OUTLINED_FUNCTION_7_62();
    v102(v101);
    sub_1BC94C05C(v139, &qword_1EBD08598);
    result = sub_1BC94C05C(v100, &qword_1EBD08CA8);
    v104 = 0;
    v105 = 0;
  }

  else
  {
    sub_1BCE194A0();
    (*(*(v90 - 8) + 8))(v100, v90);
    static Set<>.full.getter();
    v106 = v146;
    v107 = OUTLINED_FUNCTION_3_81();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v125);
    OUTLINED_FUNCTION_4_69();

    sub_1BC94C05C(v106, &qword_1EBD07890);
    v110 = v144;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    sub_1BCD843B8(v83, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v111 = sub_1BCE1A3A0();
    v104 = sub_1BCB37580(v110, 0, v111, v77);
    v105 = v112;

    sub_1BCD843B8(v110, type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v88(v77, v98);
    sub_1BC94C05C(v99, &qword_1EBD08CA8);
    v113 = OUTLINED_FUNCTION_7_62();
    v114(v113);
    result = sub_1BC94C05C(v139, &qword_1EBD08598);
  }

  v115 = object == 0;
  v116 = 0xE000000000000000;
  if (object)
  {
    v116 = object;
  }

  v117 = v145;
  v118 = v134;
  *v145 = v135;
  v117[1] = v118;
  v119 = countAndFlagsBits;
  if (v115)
  {
    v119 = 0;
  }

  v117[2] = v119;
  v117[3] = v116;
  v120 = v130;
  v117[4] = v131;
  v117[5] = v120;
  v121 = v136;
  v117[6] = v137;
  v117[7] = v121;
  v122 = v127;
  v117[8] = v128;
  v117[9] = v122;
  v123 = v129;
  v117[10] = v142;
  v117[11] = v123;
  v117[12] = v104;
  v117[13] = v105;
  return result;
}

uint64_t sub_1BCD82944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v38 - v8;
  v9 = sub_1BCE19EA0();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1BCE19A90();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_1BC952ABC(a1, v14, &qword_1EBD08598);
  v19 = v12[12];
  v20 = v12[16];
  v21 = v12[20];
  if (__swift_getEnumTagSinglePayload(&v14[v21], 1, v15) == 1)
  {
    sub_1BC94C05C(&v14[v21], &qword_1EBD085B0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
    (*(*(v22 - 8) + 8))(&v14[v20], v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
    (*(*(v23 - 8) + 8))(&v14[v19], v23);
    v24 = sub_1BCE196E0();
    (*(*(v24 - 8) + 8))(v14, v24);
  }

  else
  {
    (*(v16 + 32))(v18, &v14[v21], v15);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
    (*(*(v25 - 8) + 8))(&v14[v20], v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
    (*(*(v26 - 8) + 8))(&v14[v19], v26);
    v27 = sub_1BCE196E0();
    (*(*(v27 - 8) + 8))(v14, v27);
    if (sub_1BCE19A30())
    {
      sub_1BCE19A50();
      v28 = sub_1BCE19E50();
      (*(v38 + 8))(v11, v39);
      (*(v16 + 8))(v18, v15);
      return v28;
    }

    (*(v16 + 8))(v18, v15);
  }

  sub_1BC952ABC(v40, v6, &qword_1EBD08590);
  v29 = type metadata accessor for PlatterViewLocation();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v29);
  v31 = v41;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC94C05C(v6, &qword_1EBD08590);
    v32 = sub_1BCE19470();
    v33 = v31;
    v34 = 1;
  }

  else
  {
    v35 = *(v29 + 24);
    v36 = sub_1BCE19470();
    (*(*(v36 - 8) + 16))(v31, &v6[v35], v36);
    sub_1BCD843B8(v6, type metadata accessor for PlatterViewLocation);
    v33 = v31;
    v34 = 0;
    v32 = v36;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
  v28 = sub_1BCD82F0C(v42 + v12[16], v31);
  sub_1BC94C05C(v31, &qword_1EBD07888);
  return v28;
}

uint64_t sub_1BCD82F0C(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v83 = a1;
  v2 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v90 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07BE8);
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v72 - v5;
  v6 = sub_1BCE1E060();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BB60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v72 - v9;
  v76 = sub_1BCE19CF0();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BCE19BA0();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v72 - v13;
  v94 = sub_1BCE19540();
  v85 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BCE193E0();
  v15 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - v19;
  v21 = sub_1BCE19470();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BCE19060();
  v96 = *(v25 - 8);
  v97 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v72 - v29;
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v30 = qword_1EDA1EFB8;
  v80 = sub_1BCE18B60();

  sub_1BCE197B0();
  sub_1BC952ABC(v82, v20, &qword_1EBD07888);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1BCE19460();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
    v32 = v81;
    if (EnumTagSinglePayload != 1)
    {
      sub_1BC94C05C(v20, &qword_1EBD07888);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v32 = v81;
  }

  sub_1BCE192A0();
  sub_1BCE19290();
  (*(v15 + 8))(v17, v79);
  (*(v22 + 8))(v24, v21);
  v34 = v96 + 8;
  v33 = *(v96 + 8);
  v35 = v33(v27, v97);
  MEMORY[0x1EEE9AC00](v35);
  sub_1BC994C58();
  v36 = v94;
  if (__swift_getEnumTagSinglePayload(v32, 1, v94) == 1)
  {
    sub_1BC94C05C(v32, &qword_1EBD08CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BCE3E050;
    v39 = v87;
    v38 = v88;
    v40 = v89;
    (*(v88 + 104))(v87, *MEMORY[0x1E69E7038], v89);
    v41 = Double.nearestMultiple(of:roundingRule:)(v39, 0.01, 0.0);
    (*(v38 + 8))(v39, v40);
    v98 = v41;
    sub_1BCE19150();
    sub_1BC96ABEC();
    v42 = v91;
    sub_1BCE18CB0();
    sub_1BC96C2BC();
    v43 = v93;
    sub_1BCE1D0F0();
    (*(v92 + 8))(v42, v43);
    v44 = sub_1BCC67EB4(v99, v100);
    v46 = v45;

    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1BC9804E0();
    *(v37 + 32) = v44;
    *(v37 + 40) = v46;
    v47 = sub_1BCE1D250();
  }

  else
  {
    (*(v85 + 32))(v84, v32, v36);
    v48 = v75;
    sub_1BCE19480();
    v49 = v76;
    v50 = __swift_getEnumTagSinglePayload(v48, 1, v76);
    v96 = v34;
    if (v50 == 1)
    {
      sub_1BC94C05C(v48, &qword_1EBD0BB60);
      sub_1BCE194D0();
      v52 = v51;
      v53 = v86;
      sub_1BCE19490();
    }

    else
    {
      v54 = v74;
      v55 = v73;
      (*(v74 + 32))(v73, v48, v49);
      sub_1BCE19CD0();
      v52 = v56;
      v53 = v86;
      sub_1BCE19CC0();
      (*(v54 + 8))(v55, v49);
    }

    v83 = sub_1BCD83F3C(v53, v80);

    v57 = *MEMORY[0x1E69E7038];
    v58 = v87;
    v59 = v88;
    v60 = *(v88 + 104);
    v61 = v89;
    v60(v87, v57, v89);
    v62 = Double.nearestMultiple(of:roundingRule:)(v58, 0.05, v52);
    v63 = *(v59 + 8);
    v63(v58, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1BCE3E050;
    v60(v58, v57, v61);
    v65 = Double.nearestMultiple(of:roundingRule:)(v58, 0.01, v62);
    v63(v58, v61);
    v98 = v65;
    sub_1BCE19150();
    sub_1BC96ABEC();
    v66 = v91;
    sub_1BCE18CB0();
    sub_1BC96C2BC();
    v67 = v93;
    sub_1BCE1D0F0();
    (*(v92 + 8))(v66, v67);
    v68 = sub_1BCC67EB4(v99, v100);
    v70 = v69;

    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = sub_1BC9804E0();
    *(v64 + 32) = v68;
    *(v64 + 40) = v70;
    v47 = sub_1BCE1D250();

    (*(v77 + 8))(v86, v78);
    (*(v85 + 8))(v84, v94);
  }

  v33(v95, v97);
  return v47;
}

uint64_t sub_1BCD83BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v17 = a3;
  v4 = sub_1BCE19060();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08590);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for PlatterViewLocation();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC952ABC(a1, v10, &qword_1EBD08590);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1BC94C05C(v10, &qword_1EBD08590);
    v14 = sub_1BCE19540();
    return __swift_storeEnumTagSinglePayload(v17, 1, 1, v14);
  }

  else
  {
    sub_1BCD0E9F0(v10, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08598);
    sub_1BCE196A0();
    sub_1BCE1A0C0();
    (*(v5 + 8))(v7, v4);
    return sub_1BCD843B8(v13, type metadata accessor for PlatterViewLocation);
  }
}

uint64_t sub_1BCD83E50()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE194F0();
  v4 = sub_1BCE19010();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1BCD83F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE19BA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-v10];
  v12 = *(v5 + 16);
  v12(&v31[-v10], a1, v4, v9);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x1E6984DB8])
  {
LABEL_2:

    return a2;
  }

  if (v13 == *MEMORY[0x1E6984DB0])
  {
    if (qword_1EDA1EFB0 == -1)
    {
LABEL_5:
      swift_beginAccess();
      v14 = qword_1EDA1EFB8;
      a2 = sub_1BCE18B60();

      return a2;
    }

LABEL_23:
    swift_once();
    goto LABEL_5;
  }

  if (v13 == *MEMORY[0x1E6984DD0] || v13 == *MEMORY[0x1E6984DC0] || v13 == *MEMORY[0x1E6984DD8])
  {
    goto LABEL_2;
  }

  if (v13 == *MEMORY[0x1E6984DC8])
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if (qword_1EBD070C8 != -1)
  {
    swift_once();
  }

  v18 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v18, qword_1EBD094F8);
  (v12)(v7, a1, v4);
  v19 = sub_1BCE1ACA0();
  v20 = sub_1BCE1D8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v21;
    v35 = swift_slowAlloc();
    v36[0] = v35;
    *v21 = 136446210;
    sub_1BCD84430();
    v34 = v19;
    v22 = sub_1BCE1E050();
    v24 = v23;
    v25 = *(v5 + 8);
    v32 = v20;
    v25(v7, v4);
    v26 = sub_1BC98FE38(v22, v24, v36);

    v27 = v33;
    v28 = v34;
    *(v33 + 1) = v26;
    v29 = v27;
    _os_log_impl(&dword_1BC940000, v28, v32, "Encountered an unrecognized precipitationKind. precipitationKind=%{public}s", v27, 0xCu);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1BFB31B10](v30, -1, -1);
    MEMORY[0x1BFB31B10](v29, -1, -1);
  }

  else
  {

    v25 = *(v5 + 8);
    v25(v7, v4);
  }

  v25(v11, v4);
  return a2;
}

uint64_t sub_1BCD843B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCD84430()
{
  result = qword_1EBD0DCE8;
  if (!qword_1EBD0DCE8)
  {
    sub_1BCE19BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DCE8);
  }

  return result;
}

Swift::String __swiftcall NSUnitTemperature.accessibilityString()()
{
  v0 = objc_opt_self();
  v1 = [v0 celsius];
  sub_1BCA301DC();
  v2 = sub_1BCE1DAC0();

  if (v2)
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = [v0 fahrenheit];
  v4 = sub_1BCE1DAC0();

  if (v4)
  {
    if (qword_1EDA1EFB0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = [v0 kelvin];
  v6 = sub_1BCE1DAC0();

  if (v6)
  {
    if (qword_1EDA1EFB0 != -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_0();
    }
  }

  else if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

LABEL_10:
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_22(qword_1EDA1EFB8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_1();
  v7 = sub_1BCE18B60();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void sub_1BCD846F8(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA1298C();
  v4 = v3;
  sub_1BCA1298C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC3FA000000000000;
  *(a1 + 80) = xmmword_1BCE49A60;
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
  *(a1 + 816) = xmmword_1BCE3F000;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x3F333333u);
  *(a1 + 848) = 0x41E0000041D00000;
  *(a1 + 856) = 3227099184;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE52430;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3F010;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F666666u);
  *(a1 + 976) = 0x4168000041480000;
  *(a1 + 984) = 3229822808;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE68DC0;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3F030;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = vdup_n_s32(0x3F933333u);
  __asm { FMOV            V2.2S, #5.75 }

  *(a1 + 1104) = _D2;
  *(a1 + 1112) = 1063800384;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE68DD0;
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
  __asm { FMOV            V3.2S, #-15.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1636) = 256;
  *(a1 + 1628) = 0;
  *(v2 + 202) = 0;
  *(v2 + 210) = 16777217;
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
  *(a1 + 1760) = 4;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3F050;
  *(a1 + 1808) = xmmword_1BCE3F060;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3F070;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x41C8000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1104388555;
  *(a1 + 1888) = xmmword_1BCE3F080;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = xmmword_1BCE3F090;
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
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

id sub_1BCD84E34()
{
  result = sub_1BCD85714();
  qword_1EDA1F1C0 = result;
  return result;
}

uint64_t static NSNumberFormatter.temperatureAsDigitsOnly.modify()
{
  if (qword_1EDA1F1B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_4();
  return OUTLINED_FUNCTION_3_82();
}

id sub_1BCD84F10()
{
  result = sub_1BCD84F30();
  qword_1EDA16918 = result;
  return result;
}

id sub_1BCD84F30()
{
  v0 = sub_1BCE19280();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1BCE19150();
  v5 = sub_1BCE19140();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setMaximumFractionDigits_];
  [v4 setNumberStyle_];
  return v4;
}

uint64_t static NSNumberFormatter.percent.modify()
{
  if (qword_1EDA16910 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_4();
  return OUTLINED_FUNCTION_3_82();
}

id sub_1BCD8511C()
{
  result = sub_1BCD8513C();
  qword_1EBD0DCF0 = result;
  return result;
}

id sub_1BCD8513C()
{
  v0 = sub_1BCE19280();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1BCE19150();
  v5 = sub_1BCE19140();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setMinimumFractionDigits_];
  [v4 setMaximumFractionDigits_];
  [v4 setNumberStyle_];
  return v4;
}

uint64_t static NSNumberFormatter.decimal.modify()
{
  if (qword_1EBD07308 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_4();
  return OUTLINED_FUNCTION_3_82();
}

id sub_1BCD8533C()
{
  result = sub_1BCD85714();
  qword_1EBD0DCF8 = result;
  return result;
}

uint64_t static NSNumberFormatter.degreesAsDigitsOnly.modify()
{
  if (qword_1EBD07310 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_4();
  return OUTLINED_FUNCTION_3_82();
}

uint64_t static NSNumberFormatter.dayDigits(from:timeZone:)()
{
  v0 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BCE188F0();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_1BCE192A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v14 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BCE3E050;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E6969A48], v14);
  sub_1BC94FCF8();
  sub_1BCE192E0();

  (*(v2 + 8))(v6, v0);
  v19 = sub_1BCE18830();
  LOBYTE(v17) = v20;
  (*(v9 + 8))(v13, v7);
  if (v17)
  {
    return 49;
  }

  if (qword_1EBD07320 != -1)
  {
    swift_once();
  }

  v21 = qword_1EBD0DD08;
  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v23 = [v21 stringFromNumber_];

  if (!v23)
  {
    return 49;
  }

  v24 = sub_1BCE1D280();

  return v24;
}

id sub_1BCD856F4()
{
  result = sub_1BCD85714();
  qword_1EBD0DD00 = result;
  return result;
}

id sub_1BCD85714()
{
  v0 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1BCE19150();
  v8 = sub_1BCE19140();
  (*(v2 + 8))(v6, v0);
  [v7 setLocale_];

  [v7 setMaximumFractionDigits_];
  return v7;
}

id sub_1BCD85840(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_1BCD858CC(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t static NSNumberFormatter.digits.modify()
{
  if (qword_1EBD07318 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_4();
  return OUTLINED_FUNCTION_3_82();
}

id sub_1BCD859A8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  qword_1EBD0DD08 = result;
  return result;
}

uint64_t VFXMoonVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

unint64_t sub_1BCD85A70()
{
  result = qword_1EBD0DD10;
  if (!qword_1EBD0DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DD10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VFXMoonVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BCD85BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_41(a1, a2, a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_10_49(v5, v54);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_67(v8, v55);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_53(v10, v11, v12, v13, v14, v15, v16, v17, v56);
  OUTLINED_FUNCTION_2();
  v59 = v19;
  v60 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v22 = (v21 - v20);
  sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v57 = v25;
  v58 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  sub_1BCE19390();
  v29 = OUTLINED_FUNCTION_12_47();
  v30(v29);
  sub_1BCE193B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v31 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  v33 = v32;
  v35 = *(v34 + 72);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BCE43610;
  v38 = v37 + v36;
  v41 = *(v33 + 104);
  v39 = (v33 + 104);
  v40 = v41;
  v41(v38, *MEMORY[0x1E6969A48], v31);
  v41(v38 + v35, *MEMORY[0x1E6969A78], v31);
  v42 = v38 + 2 * v35;
  v43 = v28;
  v41(v42, *MEMORY[0x1E6969A68], v31);
  sub_1BC94FCF8();
  OUTLINED_FUNCTION_14_32();

  sub_1BCE18830();
  if (v44)
  {
LABEL_2:
    (*(v59 + 8))(v22, v60);
    (*(v57 + 8))(v43, v58);
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    v45 = MEMORY[0x1E69E7CC0];
    while ((v3 & 0x8000000000000000) == 0)
    {
      if (__OFADD__(v31, v3))
      {
        goto LABEL_16;
      }

      sub_1BCE18840();
      sub_1BCE19360();
      if (__swift_getEnumTagSinglePayload(v40, 1, v6) == 1)
      {
        sub_1BCA0A6F0(v40);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_4_70();
        v31(v46);
        v47 = OUTLINED_FUNCTION_7_63();
        v48(v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11_40();
          v45 = v52;
        }

        if (*(v45 + 16) >= *(v45 + 24) >> 1)
        {
          OUTLINED_FUNCTION_8_58();
          v45 = v53;
        }

        v49 = OUTLINED_FUNCTION_6_63();
        v50(v49);
        v51 = OUTLINED_FUNCTION_2_92();
        v31(v51);
        v43 = v28;
        v40 = v61;
        v31 = v22;
        v22 = v39;
      }

      if (v28 == ++v3)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_1BCD86020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_41(a1, a2, a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_10_49(v5, v54);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_67(v8, v55);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_53(v10, v11, v12, v13, v14, v15, v16, v17, v56);
  OUTLINED_FUNCTION_2();
  v59 = v19;
  v60 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v57 = v25;
  v58 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  sub_1BCE19390();
  v29 = OUTLINED_FUNCTION_12_47();
  v30(v29);
  sub_1BCE193B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v31 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  v33 = v32;
  v35 = *(v34 + 72);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BCE3E040;
  v38 = v37 + v36;
  v41 = *(v33 + 104);
  v39 = v33 + 104;
  v40 = v41;
  v41(v38, *MEMORY[0x1E6969A58], v31);
  v41(v38 + v35, *MEMORY[0x1E6969A48], v31);
  v41(v38 + 2 * v35, *MEMORY[0x1E6969A78], v31);
  v42 = 3 * v35;
  v43 = v28;
  v41(v38 + v42, *MEMORY[0x1E6969A68], v31);
  sub_1BC94FCF8();
  OUTLINED_FUNCTION_14_32();

  sub_1BCE18850();
  if (v44)
  {
LABEL_2:
    (*(v59 + 8))(v22, v60);
    (*(v57 + 8))(v43, v58);
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    v45 = MEMORY[0x1E69E7CC0];
    while ((v3 & 0x8000000000000000) == 0)
    {
      if (__OFADD__(v37, v3))
      {
        goto LABEL_16;
      }

      sub_1BCE18860();
      sub_1BCE19360();
      if (__swift_getEnumTagSinglePayload(v40, 1, v6) == 1)
      {
        sub_1BCA0A6F0(v40);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_4_70();
        (v37)(v46);
        v47 = OUTLINED_FUNCTION_7_63();
        v48(v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11_40();
          v45 = v52;
        }

        if (*(v45 + 16) >= *(v45 + 24) >> 1)
        {
          OUTLINED_FUNCTION_8_58();
          v45 = v53;
        }

        v49 = OUTLINED_FUNCTION_6_63();
        v50(v49);
        v51 = OUTLINED_FUNCTION_2_92();
        (v37)(v51);
        v43 = v28;
        v40 = v61;
        v37 = v22;
        v22 = v39;
      }

      if (v28 == ++v3)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_1BCD864BC()
{
  v0 = sub_1BCE19060();
  __swift_allocate_value_buffer(v0, qword_1EBD2A410);
  v1 = __swift_project_value_buffer(v0, qword_1EBD2A410);
  return sub_1BCD86508(v1);
}

uint64_t sub_1BCD86508@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_1BCE192F0();
  v1 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BCE19320();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE192C0();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = sub_1BCE193E0();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BCE19060();
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE197B0();
  sub_1BCE19390();
  (*(v8 + 104))(v10, *MEMORY[0x1E69698D0], v7);
  v21 = v4;
  v22 = v3;
  (*(v4 + 104))(v6, *MEMORY[0x1E69699C8], v3);
  v23 = v1;
  v24 = *(v1 + 104);
  v25 = v40;
  v26 = v41;
  v24(v40, *MEMORY[0x1E6969998], v41);
  sub_1BCE19350();
  v27 = v23;
  v28 = v36;
  (*(v27 + 8))(v25, v26);
  (*(v21 + 8))(v6, v22);
  (*(v34 + 8))(v10, v33);
  v29 = v18;
  v30 = v35;
  (*(v37 + 8))(v29, v38);
  sub_1BCACF0E8(v15, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v30) == 1)
  {
    (*(v39 + 32))(v42, v20, v30);
    result = __swift_getEnumTagSinglePayload(v28, 1, v30);
    if (result != 1)
    {
      return sub_1BCA0A6F0(v28);
    }
  }

  else
  {
    v32 = v39;
    (*(v39 + 8))(v20, v30);
    return (*(v32 + 32))(v42, v28, v30);
  }

  return result;
}

WeatherUI::SunriseSunsetPointSampler __swiftcall SunriseSunsetPointSampler.init(sampleSize:precisionNeededFor:sampleBlocks:)(Swift::Int sampleSize, Swift::OpaquePointer precisionNeededFor, Swift::OpaquePointer_optional sampleBlocks)
{
  rawValue = &unk_1F3B4D2D0;
  if (sampleBlocks.value._rawValue)
  {
    rawValue = sampleBlocks.value._rawValue;
  }

  v3->_rawValue = sampleSize;
  v3[1]._rawValue = precisionNeededFor._rawValue;
  v3[2]._rawValue = rawValue;
  result.sampleBlocks = sampleBlocks.value;
  result.values = precisionNeededFor;
  result.sampleSize = sampleSize;
  return result;
}

uint64_t SunriseSunsetPointSampler.computeIndices(range:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BCE193F0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v13 = *(v11 + 16);
  v46 = v14;
  if (v13)
  {
    if (!__OFSUB__(a2, a1))
    {
      if (!v10)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v15 = (v11 + 32);
      v16 = (a2 - a1) / 8;
      while (1)
      {
        v18 = *v15++;
        v17 = v18;
        v19 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          break;
        }

        v20 = v19 * v16;
        if ((v19 * v16) >> 64 != (v19 * v16) >> 63)
        {
          goto LABEL_48;
        }

        v21 = v17 * v16;
        if ((v17 * v16) >> 64 != (v17 * v16) >> 63)
        {
          goto LABEL_49;
        }

        if (v21 < v20)
        {
          goto LABEL_50;
        }

        v22 = sub_1BCD87EC8(v20, v21, v10);
        sub_1BCD86E84(v22);
        if (!--v13)
        {
          v12 = v48;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_11:
  if (!sub_1BCD87724(a1, v12))
  {
    v23 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v12;
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v12 + 24) >> 1)
    {
      OUTLINED_FUNCTION_11_41();
      sub_1BCB6562C();
      v12 = v25;
      v48 = v25;
    }

    sub_1BCD87DE0(0, 0, 1, a1);
    v48 = v12;
  }

  if (!sub_1BCD87724(a2, v12))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      v26 = *(v12 + 16);
      if (v26 >= *(v12 + 24) >> 1)
      {
        OUTLINED_FUNCTION_11_41();
        sub_1BCB6562C();
        v12 = v45;
      }

      *(v12 + 16) = v26 + 1;
      *(v12 + 8 * v26 + 32) = a2;
      v48 = v12;
      goto LABEL_21;
    }

LABEL_53:
    OUTLINED_FUNCTION_11_41();
    sub_1BCB6562C();
    v12 = v44;
    goto LABEL_18;
  }

LABEL_21:
  if (*(v9 + 16))
  {
    v27 = COERCE_DOUBLE(sub_1BCD87C20(v9));
    if (v28)
    {
      v27 = 0.0;
    }

    result = sub_1BCD87750(v9, v27);
    v30 = 0;
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = result;
    }

    v33 = *(v12 + 16);
    for (i = (v12 + 32); ; ++i)
    {
      if (v33 == v30)
      {
        return v12;
      }

      if (v32 < *i)
      {
        break;
      }

      ++v30;
    }

    if (v33 < 5)
    {
      return v12;
    }

    if (__OFADD__(v30, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1BCD88124();
      sub_1BCE1DC20();
      v47 = v30 + 1;
      sub_1BCE1DC00();
      v47 = v30;
      OUTLINED_FUNCTION_13_42();
      v47 = v30 - 1;
      result = OUTLINED_FUNCTION_13_42();
      if (v30 >= 2)
      {
        v35 = *(v12 + 16);
        if (v30 - 2 < v35)
        {
          v36 = v30 + 2;
          if (!__OFADD__(v30, 2))
          {
            if (v36 < v35)
            {
              v37 = *(i - 2);
              v38 = *(v12 + 32 + 8 * v36);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07EA0);
              sub_1BCD8817C(&qword_1EBD0DD20);
              sub_1BCD8817C(&qword_1EBD0DD28);
              result = sub_1BCE1D7A0();
              v39 = v37 + 1;
              if (!__OFADD__(v37, 1))
              {
                if (v38 >= v39)
                {
                  v12 = v48;
                  v40 = *(v48 + 16);
                  if (v40 >= (v30 - 1))
                  {
                    v41 = v38 - v39;
                    if (!__OFSUB__(v38, v39))
                    {
                      if (!__OFADD__(v40, v41))
                      {
                        v42 = swift_isUniquelyReferenced_nonNull_native();
                        v48 = v12;
                        if (!v42 || v40 + v41 > *(v12 + 24) >> 1)
                        {
                          OUTLINED_FUNCTION_11_41();
                          sub_1BCB6562C();
                          v12 = v43;
                          v48 = v43;
                        }

                        sub_1BCD87D0C(v30 - 1, v30 - 1, v38 - v39, v39, v38);
                        (*(v46 + 8))(v8, v5);
                        return v12;
                      }

LABEL_63:
                      __break(1u);
                      return result;
                    }

LABEL_62:
                    __break(1u);
                    goto LABEL_63;
                  }

LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }

LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  return v12;
}

void sub_1BCD86E84(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_93(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BCD87C94(v4, 1, sub_1BCB6562C);
  v6 = *v2;
  if (!*(v1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_64();
  if (v8 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (v1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BCD86F38(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_93(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BCD87C94(v4, 1, sub_1BCB656E0);
  v6 = *v2;
  if (!*(v1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_64();
  if (v8 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 40 * v7 + 32), (v1 + 32), 40 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1BCD87020(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = OUTLINED_FUNCTION_9_54();
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1BCD87C94(result, 1, v5);
  v9 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v3);
  v12 = v11 + v3;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BCD87158(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v42 = a2;
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
  OUTLINED_FUNCTION_2();
  v43 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = OUTLINED_FUNCTION_9_54();
  if (v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v40 = v25;
  v41 = v12;
  result = sub_1BCD87C94(v24, 1, sub_1BCB65B78);
  v12 = *v4;
  v27 = (*(*v4 + 3) >> 1) - *(*v4 + 2);
  v44 = a1;
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      a1 = a3;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 < v23)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v23 <= 0)
    {
LABEL_10:
      a1 = v21;
LABEL_11:
      if (v23 != v27)
      {
        result = swift_unknownObjectRelease();
LABEL_13:
        *v4 = v12;
        return result;
      }

LABEL_17:
      v30 = *(v12 + 2);
      __swift_storeEnumTagSinglePayload(v20, 1, 1, HourPrecipitationChartView);
      v31 = v41;
      while (1)
      {
        sub_1BCD8823C(v20, v40);
        if (__swift_getEnumTagSinglePayload(v40, 1, HourPrecipitationChartView) == 1)
        {
          break;
        }

        sub_1BC94C05C(v40, &qword_1EBD08E70);
        v39 = *(v12 + 3) >> 1;
        if (v39 < v30 + 1)
        {
          OUTLINED_FUNCTION_11_41();
          sub_1BCB65B78();
          v12 = v36;
          v39 = *(v36 + 3) >> 1;
        }

        v38 = &v12[(*(v43 + 80) + 32) & ~*(v43 + 80)];
        while (1)
        {
          sub_1BCD8823C(v20, v16);
          if (__swift_getEnumTagSinglePayload(v16, 1, HourPrecipitationChartView) == 1)
          {
            sub_1BC94C05C(v16, &qword_1EBD08E70);
            goto LABEL_35;
          }

          sub_1BCD882AC(v16, v31);
          if (v30 >= v39)
          {
            break;
          }

          sub_1BC94C05C(v20, &qword_1EBD08E70);
          v32 = v31;
          v33 = *(v43 + 72);
          result = sub_1BCD882AC(v32, &v38[v33 * v30]);
          if (a1 == v21)
          {
            v34 = 1;
            a1 = v21;
          }

          else
          {
            if (a1 < a3 || a1 >= v21)
            {
              goto LABEL_39;
            }

            sub_1BCD881DC(v42 + v33 * a1, v20, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
            v34 = 0;
            ++a1;
          }

          __swift_storeEnumTagSinglePayload(v20, v34, 1, HourPrecipitationChartView);
          ++v30;
          v31 = v41;
        }

        sub_1BCD88310(v31, type metadata accessor for NextHourPrecipitationChartViewModel.Point);
LABEL_35:
        *(v12 + 2) = v30;
      }

      sub_1BC94C05C(v20, &qword_1EBD08E70);
      swift_unknownObjectRelease();
      result = sub_1BC94C05C(v40, &qword_1EBD08E70);
      goto LABEL_13;
    }

    v28 = *(v12 + 2);
    v22 = __OFADD__(v28, v23);
    v29 = v28 + v23;
    if (!v22)
    {
      *(v12 + 2) = v29;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_1BCD87580(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = OUTLINED_FUNCTION_9_54();
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BCD87C94(v4, 1, sub_1BCB653B4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_64();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BCD87670(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_93(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BCD87C94(v4, 1, sub_1BCB666E4);
  v6 = *v2;
  if (!*(v1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_64();
  if (v8 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (v1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

BOOL sub_1BCD87724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1BCD87750(uint64_t a1, double a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 8 * i) == a2)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BCD87790(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3();
  v58 = v6 - v7;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v55 - v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD099E8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v68 = type metadata accessor for MoonTimeEvent();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v63 = v17 - v18;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v55 - v20;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v55 - v22;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = 0;
  v64 = a2;
  v67 = *(a2 + 16);
  v27 = (v4 + 8);
  v59 = v12;
  v60 = v4 + 32;
  while (1)
  {
    if (v67 == v26)
    {
      return 0;
    }

    OUTLINED_FUNCTION_4_71();
    sub_1BCD881DC(v28, v25, v29);
    v30 = *(v12 + 48);
    sub_1BCD881DC(v25, v15, a2);
    sub_1BCD881DC(v65, v30 + v15, a2);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v40 = OUTLINED_FUNCTION_0_79();
    a2 = v61;
    sub_1BCD881DC(v40, v61, v41);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_7_64();
      v42 = v66;
      v43(v56);
      v44 = v61;
      sub_1BCE19010();
      v45 = OUTLINED_FUNCTION_10_50();
      v30(v45, v42);
      v38 = v44;
      v39 = v42;
      goto LABEL_11;
    }

LABEL_13:
    (*v27)(a2, v66);
    sub_1BC94C05C(v15, &qword_1EBD099E8);
LABEL_14:
    OUTLINED_FUNCTION_3_84();
    sub_1BCD88310(v25, v52);
    ++v26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = OUTLINED_FUNCTION_0_79();
    a2 = v62;
    sub_1BCD881DC(v32, v62, v33);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_64();
      v34 = v66;
      v35(v57);
      v36 = v62;
      sub_1BCE19010();
      v37 = OUTLINED_FUNCTION_10_50();
      v30(v37, v34);
      v38 = v36;
      v39 = v34;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v46 = OUTLINED_FUNCTION_0_79();
  a2 = v63;
  sub_1BCD881DC(v46, v63, v47);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_64();
  a2 = v66;
  v48(v58);
  v49 = v63;
  sub_1BCE19010();
  v50 = OUTLINED_FUNCTION_10_50();
  v30(v50, a2);
  v38 = v49;
  v39 = a2;
LABEL_11:
  v30(v38, v39);
  if ((a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_84();
    sub_1BCD88310(v15, v51);
    v12 = v59;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_4_71();
  sub_1BCD88310(v15, v54);
  sub_1BCD88310(v25, a2);
  return v26;
}

uint64_t sub_1BCD87C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1BCD87C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1BCD87D0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 8 * result);
  v14 = &v13[a3];
  if (v8)
  {
    v15 = *(v11 + 16);
    v16 = __OFSUB__(v15, a2);
    v17 = v15 - a2;
    if (v16)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    result = sub_1BCA168FC(v12 + 8 * a2, v17, &v13[a3]);
    v18 = *(v11 + 16);
    v16 = __OFADD__(v18, v8);
    v19 = v18 + v8;
    if (v16)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    *(v11 + 16) = v19;
  }

  if (a3 > 0)
  {
    if (a5 < a4)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    while (1)
    {
      *v13 = a4;
      if (a4 >= a5)
      {
        break;
      }

      ++v13;
      ++a4;
      if (v13 >= v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1BCD87DE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 8 * result);
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = sub_1BCA168FC(v10 + 8 * a2, v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1BCD87E84(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1BCD87EC8(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = sub_1BCD87E84(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07970);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = v8[3];

  if (v7 < 0)
  {
    goto LABEL_48;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  if (!v7)
  {
    goto LABEL_17;
  }

  v13 -= v7;
  do
  {
    v14 = v5 <= v4;
    if (a3 > 0)
    {
      v14 = v5 >= v4;
    }

    if (v14)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v15 = v5 + a3;
    if (__OFADD__(v5, a3))
    {
      v15 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
    }

    *v12++ = v5;
    v5 = v15;
    --v7;
  }

  while (v7);
  v5 = v15;
LABEL_17:
  v16 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v33 = v4;
  while (2)
  {
    v17 = v5 <= v4;
    if (a3 > 0)
    {
      v17 = v5 >= v4;
    }

    if (!v17)
    {
      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = v16;
        if (!v13)
        {
          goto LABEL_26;
        }

        v18 = v16;
      }

      else if (!v13)
      {
LABEL_26:
        v19 = v8[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v20 = v16;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07970);
        v23 = swift_allocObject();
        v24 = (_swift_stdlib_malloc_size_0(v23) - 32) / 8;
        v23[2] = v22;
        v23[3] = 2 * v24;
        v25 = (v23 + 4);
        v26 = v8[3];
        v27 = v26 >> 1;
        if (v8[2])
        {
          if (v23 != v8 || v25 >= &v8[v27 + 4])
          {
            memmove(v23 + 4, v8 + 4, 8 * v27);
          }

          v8[2] = 0;
        }

        v12 = (v25 + 8 * v27);
        v13 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - (v26 >> 1);

        v8 = v23;
        v16 = v20;
        v4 = v33;
      }

      v29 = __OFSUB__(v13--, 1);
      if (v29)
      {
        __break(1u);
        goto LABEL_46;
      }

      *v12++ = v5;
      v5 = v18;
      continue;
    }

    break;
  }

  v30 = v8[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v13);
    v32 = v31 - v13;
    if (v29)
    {
      goto LABEL_49;
    }

    v8[2] = v32;
  }

  return v8;
}

unint64_t sub_1BCD88124()
{
  result = qword_1EBD0DD18;
  if (!qword_1EBD0DD18)
  {
    sub_1BCE193F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DD18);
  }

  return result;
}

uint64_t sub_1BCD8817C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07EA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BCD881DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCD8823C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCD882AC(uint64_t a1, uint64_t a2)
{
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point(0);
  (*(*(HourPrecipitationChartView - 8) + 32))(a2, a1, HourPrecipitationChartView);
  return a2;
}

uint64_t sub_1BCD88310(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BCD88368(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCCCD2D0();
  v4 = v3;
  sub_1BCCCD2D0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC416000000000000;
  *(a1 + 80) = xmmword_1BCE43900;
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
  *(a1 + 712) = vdup_n_s32(0x40066666u);
  *(a1 + 720) = 0x41E0000041D00000;
  *(a1 + 728) = 0x42480000C106680CLL;
  *(a1 + 736) = 0;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE48800;
  *(a1 + 768) = 0x7970736957;
  *(a1 + 776) = 0xE500000000000000;
  strcpy((a1 + 784), "Wispy_Single");
  *(a1 + 797) = 0;
  *(a1 + 798) = -5120;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3F000;
  *(a1 + 832) = 1080033280;
  *(a1 + 840) = vdup_n_s32(0x402CCCCCu);
  *(a1 + 848) = 0x4170000041500000;
  *(a1 + 856) = 0x42480000C11197ACLL;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE48810;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3F010;
  *(a1 + 960) = 1080662426;
  *(a1 + 968) = vdup_n_s32(0x405CCCCCu);
  __asm { FMOV            V2.2S, #6.0 }

  *(a1 + 976) = _D2;
  *(a1 + 984) = 0x42480000C0F2F638;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE48820;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3F030;
  *(a1 + 1088) = 1081081856;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
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
  *(a1 + 1552) = xmmword_1BCE46040;
  *(a1 + 1568) = 0x4238000042340000;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  *(a1 + 1616) = 0x4100000040C00000;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0x1000000;
  *(a1 + 1636) = 256;
  *(a1 + 1632) = 0;
  *(v2 + 202) = 0;
  *(a1 + 1646) = 1;
  *(a1 + 1648) = 16843009;
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
  *(a1 + 1760) = 11;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3F050;
  *(a1 + 1808) = xmmword_1BCE3F060;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3F070;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x41C8000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1104388555;
  *(a1 + 1888) = xmmword_1BCE3F080;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = xmmword_1BCE3F090;
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

void sub_1BCD88A9C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA1298C();
  v4 = v3;
  sub_1BCA1298C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC348000000000000;
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
  *(a1 + 816) = xmmword_1BCE3F000;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x3F333333u);
  *(a1 + 848) = 0x41D8000041C80000;
  *(a1 + 856) = 3242196992;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3BF60;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3F010;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F666666u);
  *(a1 + 976) = 0x4150000041300000;
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
  *(a1 + 1072) = xmmword_1BCE3F030;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = vdup_n_s32(0x3F933333u);
  __asm { FMOV            V2.2S, #5.0 }

  *(a1 + 1104) = _D2;
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
  __asm { FMOV            V3.2S, #-15.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1636) = 256;
  *(a1 + 1628) = 0;
  *(v2 + 202) = 0;
  *(v2 + 210) = 16777217;
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
  *(a1 + 1760) = 4;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3F050;
  *(a1 + 1808) = xmmword_1BCE3F060;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE51BC0;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x41C8000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1104388555;
  *(a1 + 1888) = xmmword_1BCE3F080;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = xmmword_1BCE3F090;
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

uint64_t SunInlineContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33[5] = a1;
  v33[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B78);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - v7;
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v33[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  v33[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v18 = type metadata accessor for SunComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SunComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_20();
  sub_1BCD8B0B8(v1, v24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 2, v18);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      sub_1BCD8A930(v4);
      sub_1BC952ABC(v4, v11, &qword_1EBD09B78);
      swift_storeEnumTagMultiPayload();
      sub_1BCD8AD3C();
      sub_1BCB56760();
      OUTLINED_FUNCTION_3_85();
      sub_1BCE1BF60();
      sub_1BC952ABC(v14, v8, &qword_1EBD0DD40);
      swift_storeEnumTagMultiPayload();
      sub_1BCD8AD0C();
      sub_1BCE1BF60();
      sub_1BC94C05C(v14, &qword_1EBD0DD40);
    }

    else
    {
      sub_1BCD8A930(v4);
      sub_1BC952ABC(v4, v8, &qword_1EBD09B78);
      swift_storeEnumTagMultiPayload();
      sub_1BCD8AD0C();
      sub_1BCB56760();
      sub_1BCE1BF60();
    }

    return sub_1BC94C05C(v4, &qword_1EBD09B78);
  }

  else
  {
    sub_1BCD8B05C(v24, v21);
    v26 = sub_1BCD896F4(v21);
    v28 = v27;
    v30 = v29;
    v33[1] = v5;
    sub_1BCD8A4D4(v21, v26, v27, v29 & 1, v31, v17);
    sub_1BC998CF4(v26, v28, v30 & 1);

    sub_1BC952ABC(v17, v11, &qword_1EBD0DD48);
    swift_storeEnumTagMultiPayload();
    sub_1BCD8AD3C();
    sub_1BCB56760();
    OUTLINED_FUNCTION_3_85();
    sub_1BCE1BF60();
    sub_1BC952ABC(v14, v8, &qword_1EBD0DD40);
    swift_storeEnumTagMultiPayload();
    sub_1BCD8AD0C();
    sub_1BCE1BF60();
    sub_1BC94C05C(v14, &qword_1EBD0DD40);
    sub_1BC94C05C(v17, &qword_1EBD0DD48);
    return sub_1BCD8B004(v21, type metadata accessor for SunComplicationViewModel);
  }
}

uint64_t sub_1BCD896F4(uint64_t a1)
{
  v87 = sub_1BCE18AF0();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v79 - v4;
  v86 = sub_1BCE1D230();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v94 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1BCE19260();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BCE19280();
  v8 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BCE19060();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1BCE19470();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SunriseSunsetEvent();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v79 - v19;
  v20 = type metadata accessor for SunComplicationViewModel();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCD8B0B8(a1, v22);
  v23 = v22;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v34 = v22;
      v61 = *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD68) + 48)];
      sub_1BCE191B0();
      sub_1BCE19270();
      (*(v8 + 8))(v10, v88);
      v62 = sub_1BCE19240();
      (*(v90 + 8))(v7, v91);
      sub_1BCAE2864();
      if (v62)
      {
        v63 = static NSDateFormatter.timeDurationFormatter(allowedUnits:unitsStyle:)(32, 5);
      }

      else
      {
        v63 = static NSDateFormatter.timeDurationFormatter(allowedUnits:unitsStyle:)(32, 2);
      }

      v65 = [v63 stringFromTimeInterval_];

      v41 = v94;
      if (!v65)
      {
        goto LABEL_25;
      }

      v66 = sub_1BCE1D280();
      v68 = v67;

      sub_1BCE1D220();
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v42 = qword_1EDA1EFB8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCE3E050;
      *(inited + 32) = v66;
      *(inited + 40) = v68;
      goto LABEL_23;
    case 2u:
      v34 = v22;
      v35 = *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD68) + 48)];
      sub_1BCAE2864();
      v36 = static NSDateFormatter.timeDurationFormatter(allowedUnits:unitsStyle:)(16, 2);
      v37 = [v36 stringFromTimeInterval_];

      if (!v37)
      {
LABEL_25:
        v76 = type metadata accessor for SunriseSunsetEvent;
        v77 = v34;
        goto LABEL_27;
      }

      v38 = sub_1BCE1D280();
      v40 = v39;

      v41 = v94;
      sub_1BCE1D220();
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v42 = qword_1EDA1EFB8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_1BCE3E050;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
LABEL_23:
      v70 = v42;
      sub_1BC990F68();
      v71 = v82;
      sub_1BCBD48F8();

      swift_setDeallocating();
      sub_1BC9833E4();
      sub_1BCE1C320();
      v72 = v84;
      AttributedString.with(font:)(v84);

      v73 = v83;
      v74 = *(v83 + 8);
      v75 = v87;
      v74(v71, v87);
      (*(v73 + 16))(v71, v72, v75);
      v58 = sub_1BCE1C690();
      v74(v72, v75);
      (*(v85 + 8))(v41, v86);
      v59 = type metadata accessor for SunriseSunsetEvent;
      v60 = v34;
      goto LABEL_24;
    case 3u:
      sub_1BCAE2864();
      v44 = static NSDateFormatter.timeDurationFormatter(allowedUnits:unitsStyle:)(16, 2);
      v45 = [v44 stringFromTimeInterval_];

      if (v45)
      {
        v46 = sub_1BCE1D280();
        v48 = v47;

        v49 = v94;
        sub_1BCE1D220();
        if (qword_1EDA1EFB0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v50 = qword_1EDA1EFB8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1BCE3E050;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
        v52 = v50;
        sub_1BC990F68();
        v53 = v82;
        sub_1BCBD48F8();

        swift_setDeallocating();
        sub_1BC9833E4();
        sub_1BCE1C320();
        v54 = v84;
        AttributedString.with(font:)(v84);

        v55 = v83;
        v56 = *(v83 + 8);
        v57 = v87;
        v56(v53, v87);
        (*(v55 + 16))(v53, v54, v57);
        v58 = sub_1BCE1C690();
        v56(v54, v57);
        (*(v85 + 8))(v49, v86);
        v59 = type metadata accessor for SunComplicationViewModel;
        v60 = v22;
LABEL_24:
        sub_1BCD8B004(v60, v59);
      }

      else
      {
        v76 = type metadata accessor for SunComplicationViewModel;
        v77 = v22;
LABEL_27:
        sub_1BCD8B004(v77, v76);
        return 11565;
      }

      return v58;
    default:
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AA0) + 48);
      v25 = v22;
      v26 = v89;
      sub_1BCD8B05C(v25, v89);
      v27 = &v23[v24];
      v28 = v14;
      (*(v92 + 32))(v14, v27, v93);
      sub_1BCD8B0B8(v26, v17);
      v29 = v80;
      v30 = v81;
      (*(v80 + 32))(v12, v17, v81);
      if (qword_1EDA1EBE8 != -1)
      {
        swift_once();
      }

      sub_1BCE191B0();
      sub_1BCE19270();
      (*(v8 + 8))(v10, v88);
      v31 = sub_1BCE19240();
      (*(v90 + 8))(v7, v91);
      v32 = sub_1BC9600B0();
      if (v31)
      {
        v99 = v32;
        v100 = v33;
        v97 = 11501794;
        v98 = 0xA300000000000000;
        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1BC970820();
        sub_1BCE1DB90();
        (*(v29 + 8))(v12, v30);
      }

      else
      {
        (*(v29 + 8))(v12, v30);
      }

      sub_1BCAE2864();
      static NSDateFormatter.timeSymbols.getter();
      sub_1BCE1C320();
      TimeStyle.formatTimeAllowingIntermediateTimeSymbols(_:periodSymbols:font:)();
      v58 = v64;

      (*(v92 + 8))(v28, v93);
      v59 = type metadata accessor for SunriseSunsetEvent;
      v60 = v89;
      goto LABEL_24;
  }
}

uint64_t sub_1BCD8A4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v52 = a5;
  v49 = a4;
  v50 = a2;
  v41 = a1;
  v48 = a6;
  v6 = sub_1BCE1C100();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SunriseSunsetEvent();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD60);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v39 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD48);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v39 - v13;
  SunComplicationViewModel.sunriseSunsetEvent.getter(v11);
  SunriseSunsetEvent.symbolIconName.getter();
  v39 = type metadata accessor for SunriseSunsetEvent;
  sub_1BCD8B004(v11, type metadata accessor for SunriseSunsetEvent);
  sub_1BCE1CBA0();
  v14 = sub_1BCE1C6B0();
  v16 = v15;
  v18 = v17;
  v19 = sub_1BCE1C5E0();
  v21 = v20;
  v23 = v22;
  sub_1BC998CF4(v14, v16, v18 & 1);

  v24 = sub_1BCE1C5E0();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;
  sub_1BC998CF4(v19, v21, v23 & 1);

  v55 = v24;
  v56 = v26;
  v57 = v14 & 1;
  v58 = v29;
  sub_1BCE1C0D0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD50);
  v31 = sub_1BCD8AE04();
  v32 = v40;
  sub_1BCE1C930();
  (*(v43 + 8))(v8, v44);
  sub_1BC998CF4(v24, v26, v14 & 1);

  SunComplicationViewModel.sunriseSunsetEvent.getter(v11);
  v33 = SunriseSunsetEvent.headerDescription.getter();
  v35 = v34;
  sub_1BCD8B004(v11, v39);
  v55 = v33;
  v56 = v35;
  v53 = v30;
  v54 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v36 = v42;
  v37 = v45;
  sub_1BCE1C8E0();

  (*(v47 + 8))(v32, v37);
  sub_1BCE1B870();
  return sub_1BC94C05C(v36, &qword_1EBD0DD48);
}

uint64_t sub_1BCD8A930@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1BCE1C100();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BCE1BD20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09B70);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - v7;
  sub_1BCE1BD10();
  sub_1BCE1BD00();
  sub_1BCE1CBA0();
  sub_1BCE1BCE0();

  sub_1BCE1BD00();
  sub_1BCE1BD40();
  v9 = sub_1BCE1C680();
  v11 = v10;
  v28 = v9;
  v29 = v10;
  v13 = v12 & 1;
  v30 = v12 & 1;
  v31 = v14;
  sub_1BCE1C0D0();
  sub_1BCE1C930();
  (*(v2 + 8))(v4, v1);
  sub_1BC998CF4(v9, v11, v13);

  sub_1BCE1BD30();
  if (qword_1EDA1EFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_1EDA1EFB8;
  v16 = sub_1BCE1C680();
  v18 = v17;
  v20 = v19;
  v26 = MEMORY[0x1E6981148];
  v27 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_1BCE1C8D0();
  sub_1BC998CF4(v16, v18, v20 & 1);

  return (*(v6 + 8))(v8, v21);
}

unint64_t sub_1BCD8AD3C()
{
  result = qword_1EDA1BA68;
  if (!qword_1EDA1BA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DD48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DD50);
    sub_1BCD8AE04();
    swift_getOpaqueTypeConformance2();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA68);
  }

  return result;
}

unint64_t sub_1BCD8AE04()
{
  result = qword_1EDA1B610;
  if (!qword_1EDA1B610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B610);
  }

  return result;
}

uint64_t type metadata accessor for SunInlineContentView()
{
  result = qword_1EDA19FE8;
  if (!qword_1EDA19FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCD8AF14()
{
  result = type metadata accessor for SunComplicationDataStatus();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BCD8AF80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BCB56760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BCD8B004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCD8B05C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1BCD8B0B8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void SunriseSunsetViewModel.description.getter()
{
  OUTLINED_FUNCTION_20_0();
  type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_68();
  type metadata accessor for SunriseSunsetViewModel(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_1_83();
  v11 = OUTLINED_FUNCTION_89_3();
  sub_1BCD8EC4C(v11, v12);
  v13 = OUTLINED_FUNCTION_119_0();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_1BCD8B2DC(v2, v6);
      OUTLINED_FUNCTION_94_3();
      v14 = OUTLINED_FUNCTION_54_4();
      goto LABEL_7;
    }

    v6 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
    sub_1BCD8B2DC(v2, v0);
    OUTLINED_FUNCTION_94_3();
    v14 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_3_86();
    sub_1BCD8B2DC(v2, v1);
    OUTLINED_FUNCTION_94_3();
    v14 = v1;
  }

  v15 = v6;
LABEL_7:
  sub_1BCD8B334(v14, v15);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCD8B2DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  return a2;
}

uint64_t sub_1BCD8B334(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void SunriseSunsetViewModel.headerTitle.getter()
{
  OUTLINED_FUNCTION_20_0();
  type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_68();
  type metadata accessor for SunriseSunsetViewModel(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_1_83();
  v11 = OUTLINED_FUNCTION_89_3();
  sub_1BCD8EC4C(v11, v12);
  v13 = OUTLINED_FUNCTION_119_0();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_1BCD8B2DC(v2, v6);
      OUTLINED_FUNCTION_94_3();
      v14 = OUTLINED_FUNCTION_54_4();
      goto LABEL_7;
    }

    v6 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
    sub_1BCD8B2DC(v2, v0);
    OUTLINED_FUNCTION_94_3();
    v14 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_3_86();
    sub_1BCD8B2DC(v2, v1);
    OUTLINED_FUNCTION_94_3();
    v14 = v1;
  }

  v15 = v6;
LABEL_7:
  sub_1BCD8B334(v14, v15);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_21();
}

void SunriseSunsetViewModel.title.getter()
{
  OUTLINED_FUNCTION_20_0();
  type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_68();
  type metadata accessor for SunriseSunsetViewModel(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_1_83();
  v11 = OUTLINED_FUNCTION_89_3();
  sub_1BCD8EC4C(v11, v12);
  v13 = OUTLINED_FUNCTION_119_0();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_1BCD8B2DC(v2, v6);
      OUTLINED_FUNCTION_94_3();
      v14 = OUTLINED_FUNCTION_54_4();
      goto LABEL_7;
    }

    v6 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
    sub_1BCD8B2DC(v2, v0);
    OUTLINED_FUNCTION_94_3();
    v14 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_3_86();
    sub_1BCD8B2DC(v2, v1);
    OUTLINED_FUNCTION_94_3();
    v14 = v1;
  }

  v15 = v6;
LABEL_7:
  sub_1BCD8B334(v14, v15);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_21();
}

void SunriseSunsetViewModel.timePeriodSymbols.getter()
{
  OUTLINED_FUNCTION_20_0();
  v4 = v0;
  type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v10 = OUTLINED_FUNCTION_8_15();
  type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_5_68();
  type metadata accessor for SunriseSunsetViewModel(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_1_83();
  sub_1BCD8EC4C(v4, v3);
  v14 = OUTLINED_FUNCTION_119_0();
  if (v14)
  {
    if (v14 != 1)
    {
      sub_1BCD8B2DC(v3, v8);

      v15 = OUTLINED_FUNCTION_25_0();
      goto LABEL_7;
    }

    v8 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
    sub_1BCD8B2DC(v3, v1);

    v15 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_3_86();
    sub_1BCD8B2DC(v3, v2);

    v15 = v2;
  }

  v16 = v8;
LABEL_7:
  sub_1BCD8B334(v15, v16);
  OUTLINED_FUNCTION_21();
}

void SunriseSunsetViewModel.headerIcon.getter()
{
  OUTLINED_FUNCTION_20_0();
  type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52();
  type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_68();
  type metadata accessor for SunriseSunsetViewModel(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_1_83();
  v11 = OUTLINED_FUNCTION_89_3();
  sub_1BCD8EC4C(v11, v12);
  v13 = OUTLINED_FUNCTION_119_0();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_1BCD8B2DC(v2, v6);

      v14 = OUTLINED_FUNCTION_54_4();
      goto LABEL_7;
    }

    v6 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
    sub_1BCD8B2DC(v2, v0);

    v14 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_3_86();
    sub_1BCD8B2DC(v2, v1);

    v14 = v1;
  }

  v15 = v6;
LABEL_7:
  sub_1BCD8B334(v14, v15);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_21();
}

uint64_t SunriseSunsetViewModel.accessibilityDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C550);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3E030;
  SunriseSunsetViewModel.title.getter();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  SunriseSunsetViewModel.description.getter();
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
  sub_1BCA090F8();
  sub_1BCE1D1D0();

  return OUTLINED_FUNCTION_25_0();
}

uint64_t static SunriseSunsetViewModel.Header.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BCE1E090(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_10_1();

      return sub_1BCE1E090();
    }
  }

  return result;
}

uint64_t sub_1BCD8BC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BCE1E090();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BCD8BD48(char a1)
{
  if (a1)
  {
    return 1852793705;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BCD8BD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD8BC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD8BDA4(uint64_t a1)
{
  v2 = sub_1BCD8BF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD8BDE0(uint64_t a1)
{
  v2 = sub_1BCD8BF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SunriseSunsetViewModel.Header.encode(to:)()
{
  OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_77();
  v2 = OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_84_1(v2, v3);
  sub_1BCD8BF58();
  sub_1BCE1E170();
  OUTLINED_FUNCTION_17();
  sub_1BCE1DFD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
  }

  v4 = OUTLINED_FUNCTION_51_0();
  v5(v4);
  OUTLINED_FUNCTION_17_1();
}

unint64_t sub_1BCD8BF58()
{
  result = qword_1EBD0DD78;
  if (!qword_1EBD0DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DD78);
  }

  return result;
}

void SunriseSunsetViewModel.Header.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_15();
  v6 = OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_84_1(v6, v7);
  sub_1BCD8BF58();
  OUTLINED_FUNCTION_84();
  sub_1BCE1E160();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
    v8 = sub_1BCE1DF20();
    v10 = v9;
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_64_3();
    v11 = sub_1BCE1DF20();
    v13 = v12;
    v16 = v11;
    v14 = OUTLINED_FUNCTION_18_1();
    v15(v14);
    *v4 = v8;
    v4[1] = v10;
    v4[2] = v16;
    v4[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_17_1();
}

uint64_t SunriseSunsetViewModel.NormalSunriseSunsetModel.chartViewModel.getter()
{
  v1 = OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(v1);
  v3 = OUTLINED_FUNCTION_21_25(v0 + *(v2 + 40));
  OUTLINED_FUNCTION_72_3(v4, v5, v3);
}

uint64_t SunriseSunsetViewModel.NormalSunriseSunsetModel.header.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  v1 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(v0);
  OUTLINED_FUNCTION_114_1(*(v1 + 52));
}

BOOL static SunriseSunsetViewModel.NormalSunriseSunsetModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_1BCE19010())
  {
    v6 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
    OUTLINED_FUNCTION_130(v6);
    if (sub_1BCE19010() & 1) != 0 && (sub_1BCE19010() & 1) != 0 && (MEMORY[0x1BFB2BB80](a1 + v2[7], a2 + v2[7]))
    {
      OUTLINED_FUNCTION_7_3(v2[8]);
      v9 = v9 && v7 == v8;
      if (v9 || (sub_1BCE1E090()) && (sub_1BC98121C(*(a1 + v2[9]), *(a2 + v2[9])))
      {
        OUTLINED_FUNCTION_19_26(a1 + v2[10]);
        OUTLINED_FUNCTION_70_0();
        v10 = OUTLINED_FUNCTION_19_26(a2 + v2[10]);
        if (OUTLINED_FUNCTION_63_4(v11, v10, v20, v21, v22, v23, v24, SHIBYTE(v24), v25, v26))
        {
          OUTLINED_FUNCTION_7_3(v2[11]);
          v14 = v9 && v12 == v13;
          if (v14 || (sub_1BCE1E090()) && *(a1 + v2[12]) == *(a2 + v2[12]))
          {
            OUTLINED_FUNCTION_71_2(v2[13]);
            v18 = v9 && v16 == v17;
            if (v18 || (sub_1BCE1E090() & 1) != 0)
            {
              if (a1 == a2 && v2 == v3)
              {
                return 1;
              }

              OUTLINED_FUNCTION_25_0();
              if (sub_1BCE1E090())
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static SunriseSunsetViewModel.ChartViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 41);
  v14 = sub_1BCABA308(*a1, *a2);
  result = 0;
  if (v14)
  {
    v16 = v2 == v8 && v3 == v9;
    if (v16 && v5 == v11)
    {
      if (v6)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v4 == v10)
        {
          v18 = v12;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          return 0;
        }
      }

      return v7 ^ v13 ^ 1u;
    }
  }

  return result;
}

uint64_t sub_1BCD8C420(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E6572727563 && a2 == 0xEB00000000657461;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001BCE920D0 == a2;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6569567472616863 && a2 == 0xEE006C65646F4D77;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D69547961447369 && a2 == 0xE900000000000065;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1BCE1E090();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1BCD8C744(char a1)
{
  result = 0x44746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x657369726E7573;
      break;
    case 2:
      result = 0x7465736E7573;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6569567472616863;
      break;
    case 7:
      result = 0x656C746974;
      break;
    case 8:
      result = 0x6D69547961447369;
      break;
    case 9:
      result = 0x726564616568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD8C878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD8C420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD8C8A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCD8C73C();
  *a1 = result;
  return result;
}

uint64_t sub_1BCD8C8C8(uint64_t a1)
{
  v2 = sub_1BCD8EA3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD8C904(uint64_t a1)
{
  v2 = sub_1BCD8EA3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SunriseSunsetViewModel.NormalSunriseSunsetModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_93_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DD88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_77();
  v3 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_84_1(v3, v4);
  sub_1BCD8EA3C();
  OUTLINED_FUNCTION_55_0();
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_80();
  sub_1BC994568(v5, v6);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_17();
  sub_1BCE1E020();
  if (!v0)
  {
    v7 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_17();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_17();
    sub_1BCE1E020();
    sub_1BCE19470();
    OUTLINED_FUNCTION_2_94();
    sub_1BC994568(v8, v9);
    OUTLINED_FUNCTION_13_43();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_82_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    OUTLINED_FUNCTION_17_31(&qword_1EBD0DD98);
    OUTLINED_FUNCTION_13_43();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_21_25(v1 + *(v7 + 40));
    OUTLINED_FUNCTION_81_3();
    sub_1BCD8EA90();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_16_34();

    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFE0();
    sub_1BCD8EAE4();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_16_34();
  }

  v10 = OUTLINED_FUNCTION_51_0();
  v11(v10);
  OUTLINED_FUNCTION_17_1();
}

void SunriseSunsetViewModel.NormalSunriseSunsetModel.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v57 = v0;
  v5 = v4;
  v51 = v6;
  sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v53 = v8;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_68();
  v62 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DDB0);
  OUTLINED_FUNCTION_2();
  v19 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_61_6();
  v60 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v61 = v23 - v22;
  v24 = v5[3];
  v58 = v5;
  OUTLINED_FUNCTION_84_1(v5, v24);
  sub_1BCD8EA3C();
  v55 = v3;
  v25 = v57;
  sub_1BCE1E160();
  if (!v25)
  {
    v57 = v2;
    v50[1] = v19;
    LOBYTE(v63) = 0;
    OUTLINED_FUNCTION_0_80();
    sub_1BC994568(v26, v27);
    sub_1BCE1DF70();
    v28 = v61;
    v56 = *(v59 + 32);
    v56();
    LOBYTE(v63) = 1;
    v29 = v1;
    OUTLINED_FUNCTION_55_6();
    sub_1BCE1DF70();
    v30 = v60;
    (v56)(v28 + v60[5], v29, v62);
    LOBYTE(v63) = 2;
    OUTLINED_FUNCTION_55_6();
    sub_1BCE1DF70();
    (v56)(v28 + v30[6], v13, v62);
    LOBYTE(v63) = 3;
    OUTLINED_FUNCTION_2_94();
    sub_1BC994568(v31, v32);
    v33 = v57;
    v34 = v54;
    sub_1BCE1DF70();
    (*(v53 + 32))(v28 + v30[7], v33, v34);
    OUTLINED_FUNCTION_52_5(4);
    v35 = sub_1BCE1DF20();
    v36 = (v28 + v30[8]);
    *v36 = v35;
    v36[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_18_26(&qword_1EBD0DDB8);
    OUTLINED_FUNCTION_50_6();
    sub_1BCE1DF70();
    *(v28 + v30[9]) = v63;
    OUTLINED_FUNCTION_81_3();
    sub_1BCD8EBA4();
    OUTLINED_FUNCTION_105_2();
    sub_1BCE1DF70();
    LODWORD(v56) = 1;
    v38 = OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_22_26(v39, v38);
    OUTLINED_FUNCTION_52_5(7);
    v40 = sub_1BCE1DF20();
    v41 = (v28 + MEMORY[0x2C]);
    *v41 = v40;
    v41[1] = v42;
    OUTLINED_FUNCTION_52_5(8);
    *(v28 + MEMORY[0x30]) = sub_1BCE1DF30() & 1;
    sub_1BCD8EBF8();
    OUTLINED_FUNCTION_105_2();
    sub_1BCE1DF70();
    v57 = 0;
    v43 = OUTLINED_FUNCTION_120_0();
    v44(v43);
    v45 = v64;
    v46 = v65;
    v47 = v61;
    v48 = v61 + v60[13];
    *v48 = v63;
    *(v48 + 16) = v45;
    *(v48 + 24) = v46;
    sub_1BCD8EC4C(v47, v51);
    __swift_destroy_boxed_opaque_existential_1(v58);
    OUTLINED_FUNCTION_42_10();
    sub_1BCD8B334(v47, v49);
    goto LABEL_11;
  }

  v57 = v25;
  OUTLINED_FUNCTION_76_3();
  __swift_destroy_boxed_opaque_existential_1(v58);
  LODWORD(v56) = 0;
  if (!v19)
  {
    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_5:

    goto LABEL_6;
  }

  (*(v53 + 8))(v61 + v60[7], v54);
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v56)
  {
  }

LABEL_11:
  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BCD8D54C(uint64_t a1)
{
  v2 = sub_1BCD8ECA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD8D588(uint64_t a1)
{
  v2 = sub_1BCD8ECA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SunriseSunsetViewModel.PolarNightModel.encode(to:)()
{
  OUTLINED_FUNCTION_93_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DDD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_77();
  v4 = *(v0 + 24);
  v5 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_84_1(v5, v6);
  sub_1BCD8ECA4();
  OUTLINED_FUNCTION_55_0();
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_80();
  sub_1BC994568(v7, v8);
  OUTLINED_FUNCTION_13_43();
  sub_1BCE1E020();
  if (!v1)
  {
    type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
    OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_2_94();
    sub_1BC994568(v9, v10);
    OUTLINED_FUNCTION_13_43();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_109_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    OUTLINED_FUNCTION_17_31(&qword_1EBD0DD98);
    OUTLINED_FUNCTION_13_43();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    v11 = OUTLINED_FUNCTION_21_25(v2 + *(v4 + 36));
    OUTLINED_FUNCTION_62_4(v12, v11);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_16_34();

    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_16_34();
  }

  v13 = OUTLINED_FUNCTION_51_0();
  return v14(v13);
}

void SunriseSunsetViewModel.PolarNightModel.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_135(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DDE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8_15();
  type metadata accessor for SunriseSunsetViewModel.PolarNightModel(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v9 = OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_84_1(v9, v10);
  sub_1BCD8ECA4();
  OUTLINED_FUNCTION_96_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_0_80();
    sub_1BC994568(v11, v12);
    OUTLINED_FUNCTION_75_1();
    v13 = OUTLINED_FUNCTION_78_3();
    v14(v13);
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_2_94();
    sub_1BC994568(v15, v16);
    OUTLINED_FUNCTION_74_3();
    v17 = OUTLINED_FUNCTION_67_2();
    v18(v17);
    OUTLINED_FUNCTION_51_7(2);
    v19 = sub_1BCE1DF20();
    OUTLINED_FUNCTION_125(v19, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    OUTLINED_FUNCTION_18_26(&qword_1EBD0DDB8);
    OUTLINED_FUNCTION_50_6();
    sub_1BCE1DF70();
    OUTLINED_FUNCTION_106_2();
    *(v21 + *(v2 + 28)) = v31;
    OUTLINED_FUNCTION_51_7(4);
    sub_1BCE1DF20();
    OUTLINED_FUNCTION_123();
    *v24 = v22;
    v24[1] = v23;
    OUTLINED_FUNCTION_82_4();
    sub_1BCD8EBA4();
    OUTLINED_FUNCTION_23_27();
    v25 = OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_22_26(v26, v25);
    OUTLINED_FUNCTION_81_3();
    sub_1BCD8EBF8();
    OUTLINED_FUNCTION_23_27();
    v27 = OUTLINED_FUNCTION_14_33();
    v28(v27);
    OUTLINED_FUNCTION_83_3();
    sub_1BCD8EC4C(v21, v30);
    __swift_destroy_boxed_opaque_existential_1(v0);
    OUTLINED_FUNCTION_37_12();
    sub_1BCD8B334(v21, v29);
  }

  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BCD8DD98()
{
  v1 = OUTLINED_FUNCTION_19_1();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_21_25(v0 + *(v3 + 36));
  OUTLINED_FUNCTION_72_3(v5, v6, v4);
}

uint64_t sub_1BCD8DE00()
{
  v0 = OUTLINED_FUNCTION_19_1();
  v2 = v1(v0);
  OUTLINED_FUNCTION_114_1(*(v2 + 40));
}

BOOL sub_1BCD8DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (sub_1BCE19010())
  {
    v7 = (a3)(0);
    v8 = OUTLINED_FUNCTION_130(v7);
    if (MEMORY[0x1BFB2BB80](v8))
    {
      OUTLINED_FUNCTION_7_3(*(a3 + 24));
      v11 = v11 && v9 == v10;
      if (v11 || (sub_1BCE1E090()) && (sub_1BC98121C(*(a1 + *(a3 + 28)), *(a2 + *(a3 + 28))))
      {
        OUTLINED_FUNCTION_7_3(*(a3 + 32));
        v14 = v11 && v12 == v13;
        if (v14 || (sub_1BCE1E090() & 1) != 0)
        {
          OUTLINED_FUNCTION_19_26(a1 + *(a3 + 36));
          OUTLINED_FUNCTION_70_0();
          v15 = OUTLINED_FUNCTION_19_26(a2 + *(a3 + 36));
          if (OUTLINED_FUNCTION_63_4(v16, v15, v22, v23, v24, v25, v26, SHIBYTE(v26), v27, v28))
          {
            OUTLINED_FUNCTION_71_2(*(a3 + 40));
            v19 = v11 && v17 == v18;
            if (v19 || (sub_1BCE1E090() & 1) != 0)
            {
              if (a1 == a2 && a3 == v3)
              {
                return 1;
              }

              OUTLINED_FUNCTION_25_0();
              if (sub_1BCE1E090())
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BCD8DF74(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_118_0() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_117_0() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000011 && 0x80000001BCE920D0 == a2;
        if (v10 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = a1 == OUTLINED_FUNCTION_110_0() && a2 == v12;
            if (v13 || (OUTLINED_FUNCTION_2_17() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v15 = OUTLINED_FUNCTION_2_17();

              if (v15)
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

uint64_t sub_1BCD8E114()
{
  result = OUTLINED_FUNCTION_118_0();
  switch(v1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = OUTLINED_FUNCTION_117_0();
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = OUTLINED_FUNCTION_110_0();
      break;
    case 6:
      result = 0x726564616568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD8E1DC(uint64_t a1)
{
  v2 = sub_1BCD8ECF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD8E218(uint64_t a1)
{
  v2 = sub_1BCD8ECF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SunriseSunsetViewModel.PolarDayModel.encode(to:)()
{
  OUTLINED_FUNCTION_93_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DDE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_77();
  v4 = *(v0 + 24);
  v5 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_84_1(v5, v6);
  sub_1BCD8ECF8();
  OUTLINED_FUNCTION_55_0();
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_80();
  sub_1BC994568(v7, v8);
  OUTLINED_FUNCTION_13_43();
  sub_1BCE1E020();
  if (!v1)
  {
    type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
    OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_2_94();
    sub_1BC994568(v9, v10);
    OUTLINED_FUNCTION_13_43();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    OUTLINED_FUNCTION_109_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    OUTLINED_FUNCTION_17_31(&qword_1EBD0DD98);
    OUTLINED_FUNCTION_13_43();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFD0();
    v11 = OUTLINED_FUNCTION_21_25(v2 + *(v4 + 36));
    OUTLINED_FUNCTION_62_4(v12, v11);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_16_34();

    OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_16_34();
  }

  v13 = OUTLINED_FUNCTION_51_0();
  return v14(v13);
}

void SunriseSunsetViewModel.PolarDayModel.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_135(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DDF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8_15();
  type metadata accessor for SunriseSunsetViewModel.PolarDayModel(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v9 = OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_84_1(v9, v10);
  sub_1BCD8ECF8();
  OUTLINED_FUNCTION_96_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_0_80();
    sub_1BC994568(v11, v12);
    OUTLINED_FUNCTION_75_1();
    v13 = OUTLINED_FUNCTION_78_3();
    v14(v13);
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_2_94();
    sub_1BC994568(v15, v16);
    OUTLINED_FUNCTION_74_3();
    v17 = OUTLINED_FUNCTION_67_2();
    v18(v17);
    OUTLINED_FUNCTION_51_7(2);
    v19 = sub_1BCE1DF20();
    OUTLINED_FUNCTION_125(v19, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07878);
    OUTLINED_FUNCTION_18_26(&qword_1EBD0DDB8);
    OUTLINED_FUNCTION_50_6();
    sub_1BCE1DF70();
    OUTLINED_FUNCTION_106_2();
    *(v21 + *(v2 + 28)) = v31;
    OUTLINED_FUNCTION_51_7(4);
    sub_1BCE1DF20();
    OUTLINED_FUNCTION_123();
    *v24 = v22;
    v24[1] = v23;
    OUTLINED_FUNCTION_82_4();
    sub_1BCD8EBA4();
    OUTLINED_FUNCTION_23_27();
    v25 = OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_22_26(v26, v25);
    OUTLINED_FUNCTION_81_3();
    sub_1BCD8EBF8();
    OUTLINED_FUNCTION_23_27();
    v27 = OUTLINED_FUNCTION_14_33();
    v28(v27);
    OUTLINED_FUNCTION_83_3();
    sub_1BCD8EC4C(v21, v30);
    __swift_destroy_boxed_opaque_existential_1(v0);
    OUTLINED_FUNCTION_44_9();
    sub_1BCD8B334(v21, v29);
  }

  OUTLINED_FUNCTION_17_1();
}

unint64_t sub_1BCD8EA3C()
{
  result = qword_1EBD0DD90;
  if (!qword_1EBD0DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DD90);
  }

  return result;
}

unint64_t sub_1BCD8EA90()
{
  result = qword_1EBD0DDA0;
  if (!qword_1EBD0DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DDA0);
  }

  return result;
}

unint64_t sub_1BCD8EAE4()
{
  result = qword_1EBD0DDA8;
  if (!qword_1EBD0DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DDA8);
  }

  return result;
}

uint64_t sub_1BCD8EB38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07878);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCD8EBA4()
{
  result = qword_1EBD0DDC0;
  if (!qword_1EBD0DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DDC0);
  }

  return result;
}

unint64_t sub_1BCD8EBF8()
{
  result = qword_1EBD0DDC8;
  if (!qword_1EBD0DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DDC8);
  }

  return result;
}

uint64_t sub_1BCD8EC4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  return a2;
}

unint64_t sub_1BCD8ECA4()
{
  result = qword_1EBD0DDD8;
  if (!qword_1EBD0DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DDD8);
  }

  return result;
}

unint64_t sub_1BCD8ECF8()
{
  result = qword_1EBD0DDF0;
  if (!qword_1EBD0DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DDF0);
  }

  return result;
}

uint64_t sub_1BCD8ED4C(uint64_t a1)
{
  v2 = sub_1BCD8EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD8ED88(uint64_t a1)
{
  v2 = sub_1BCD8EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SunriseSunsetViewModel.Point.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_77();
  v2 = OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_84_1(v2, v3);
  sub_1BCD8EEF4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17();
  sub_1BCE1DFF0();
  if (!v0)
  {
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFF0();
  }

  v4 = OUTLINED_FUNCTION_51_0();
  return v5(v4);
}

unint64_t sub_1BCD8EEF4()
{
  result = qword_1EBD0DE08;
  if (!qword_1EBD0DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE08);
  }

  return result;
}

uint64_t SunriseSunsetViewModel.Point.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_15();
  v6 = OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_84_1(v6, v7);
  sub_1BCD8EEF4();
  OUTLINED_FUNCTION_84();
  sub_1BCE1E160();
  if (!v2)
  {
    sub_1BCE1DF40();
    v9 = v8;
    OUTLINED_FUNCTION_29_1();
    sub_1BCE1DF40();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_30_16();
    v13(v12);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1BCD8F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_107_1();
  a27 = v30;
  a28 = v31;
  LODWORD(v266) = v32;
  v34 = v33;
  v269 = v35;
  v262 = v36;
  v38 = v37;
  v252 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  v251 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_0();
  v250 = v42 - v41;
  OUTLINED_FUNCTION_13();
  sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v270 = v44;
  v271 = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3_0();
  v265 = v45;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6_1();
  v267 = v48;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_34_11();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v51 = OUTLINED_FUNCTION_14(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_131();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v247 - v55;
  v57 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v59 = v58;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_3_0();
  v264 = v61;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_6_1();
  v263 = v63;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_6_1();
  v72 = v71;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_6_1();
  v260 = v75;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_6_1();
  v261 = v77;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v247 - v79;
  v81 = OUTLINED_FUNCTION_40_1();
  sub_1BC962464(v81, v82);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v57);
  v268 = v38;
  if (EnumTagSinglePayload == 1)
  {
    v84 = v59;
    v28 = v56;
LABEL_5:
    sub_1BC94C05C(v28, &qword_1EBD07868);
    v88 = v265;
    sub_1BCE192A0();
    v89 = v263;
    sub_1BCE19290();
    v90 = v267;
    sub_1BCE19390();
    sub_1BCE18EF0();
    v270 = *(v270 + 8);
    (v270)(v90, v271);
    sub_1BCE19290();
    v91 = *(v84 + 8);
    v91(v72, v57);
    sub_1BCE18F90();
    v93 = v92;
    sub_1BCE18F90();
    v95 = v94 / v93 * 360.0;
    if (v266)
    {
      v96 = 0.5;
    }

    else
    {
      v96 = 0.0;
    }

    sin((v95 + -90.0) / 180.0 * 3.14159265);
    v97 = OUTLINED_FUNCTION_51_0();
    (v91)(v97);
    v91(v89, v57);
    (v270)(v88, v271);
    v98 = v96 + OUTLINED_FUNCTION_122_0() / 6.0;
    goto LABEL_9;
  }

  v249 = v29;
  v85 = *(v59 + 32);
  v86 = OUTLINED_FUNCTION_107_2();
  v85(v86);
  sub_1BC962464(v262, v28);
  v87 = v57;
  if (__swift_getEnumTagSinglePayload(v28, 1, v57) == 1)
  {
    v84 = v59;
    (*(v59 + 8))(v80, v57);
    goto LABEL_5;
  }

  v248 = v80;
  v100 = v261;
  (v85)(v261, v28, v57);
  v265 = v34;
  sub_1BCE192A0();
  v101 = v260;
  sub_1BCE19290();
  sub_1BCE18F90();
  v103 = v102;
  sub_1BCE18EF0();
  v104 = v59;
  v105 = v259;
  sub_1BCE19290();
  v266 = v104;
  v108 = *(v104 + 8);
  v106 = v104 + 8;
  v107 = v108;
  v109 = OUTLINED_FUNCTION_18_1();
  (v108)(v109);
  sub_1BCE18F90();
  if (v110 <= 0.0)
  {
    v269 = v106;
    if (qword_1EDA1EAB8 != -1)
    {
      OUTLINED_FUNCTION_15_37();
    }

    v119 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v119, qword_1EDA1EAC0);
    v120 = *(v266 + 16);
    v121 = v257;
    v120(v257, v101, v57);
    v122 = v258;
    v120(v258, v105, v57);
    v123 = sub_1BCE1ACA0();
    v124 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v272 = v267;
      *v125 = 136446466;
      OUTLINED_FUNCTION_0_80();
      sub_1BC994568(v126, v127);
      OUTLINED_FUNCTION_36_13();
      sub_1BCE1E050();
      v107(v121, v57);
      v128 = OUTLINED_FUNCTION_129();
      v131 = sub_1BC98FE38(v128, v129, v130);

      *(v125 + 4) = v131;
      *(v125 + 12) = 2082;
      OUTLINED_FUNCTION_36_13();
      sub_1BCE1E050();
      v107(v122, v57);
      v132 = OUTLINED_FUNCTION_46();
      v135 = sub_1BC98FE38(v132, v133, v134);

      *(v125 + 14) = v135;
      _os_log_impl(&dword_1BC940000, v123, v124, "Sunrise/sunset day length is incorrectly zero when calculating sun position. currentDayStart=%{public}s nextDayStart=%{public}s", v125, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_27_0();

      v136 = OUTLINED_FUNCTION_65_2();
      v107(v136, v87);
      v107(v260, v87);
      (*(v270 + 8))(v249, v271);
    }

    else
    {

      v167 = OUTLINED_FUNCTION_18_1();
      (v107)(v167);
      v107(v121, v57);
      v168 = OUTLINED_FUNCTION_107_2();
      (v107)(v168);
      v107(v101, v57);
      v169 = OUTLINED_FUNCTION_121_0();
      v170(v169);
    }

    v107(v261, v87);
    v107(v248, v87);
LABEL_42:
    v225 = v268;
    *v268 = 0.0;
    v225[1] = 0.0;
    goto LABEL_11;
  }

  v111 = v110;
  v112 = v248;
  if (sub_1BCE18FD0())
  {
    sub_1BCE18E60();
    sub_1BCE18E60();
    sub_1BCE18E50();
    sub_1BCE18F90();
    v95 = v103 * 360.0 / v111 - (v113 - v111 * 0.5) / v111 * 360.0;
    sin((v95 + -90.0) / 180.0 * 3.14159265);
    v114 = OUTLINED_FUNCTION_18_1();
    (v107)(v114);
    v107(v105, v57);
    v107(v101, v57);
    v115 = OUTLINED_FUNCTION_121_0();
    v116(v115);
    v117 = OUTLINED_FUNCTION_107_2();
    (v107)(v117);
    v107(v112, v57);
    v118 = OUTLINED_FUNCTION_122_0() * 0.5;
LABEL_48:
    v98 = v118 + 0.0;
LABEL_9:
    v99 = v268;
    *v268 = v95;
    goto LABEL_10;
  }

  v264 = v107;
  sub_1BCE18F40();
  v137 = v267;
  sub_1BCE19390();
  v138 = 1;
  sub_1BCE18EF0();
  v139 = v137;
  v140 = v100;
  v267 = *(v270 + 8);
  v270 += 8;
  v267(v139, v271);
  sub_1BCE18F90();
  v142 = v141;
  sub_1BCE18F90();
  v144 = v142 + v143;
  v145 = v266 + 16;
  v146 = *(v266 + 16);
  v147 = OUTLINED_FUNCTION_10_2();
  v146(v147);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v57);
  v151 = v255;
  v266 = v145;
  (v146)(v255, v140, v87);
  OUTLINED_FUNCTION_60();
  v152 = v87;
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v87);
  v156 = OUTLINED_FUNCTION_51_0();
  sub_1BCD904C0(v156, v157, v269, v265);
  v159 = v158;
  sub_1BC94C05C(v151, &qword_1EBD07868);
  v160 = OUTLINED_FUNCTION_10_2();
  sub_1BC94C05C(v160, v161);
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 1;
  while (1)
  {
    v166 = (OUTLINED_FUNCTION_136(v164 + -90.0) + 1.0) * 0.5;
    if (v159 <= v166)
    {
      v162 = v163;
      if (v165)
      {
        v138 = 0;
        v165 = 0;
        v162 = v164;
        v163 = v164;
        goto LABEL_28;
      }
    }

    else if (v138)
    {
      v138 = 1;
      goto LABEL_28;
    }

    if (v166 <= v159)
    {
      break;
    }

    v138 = 0;
LABEL_28:
    if (v164 == 360)
    {
      v171 = v146;
      if (qword_1EDA1EAB8 != -1)
      {
        OUTLINED_FUNCTION_15_37();
      }

      v172 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v172, qword_1EDA1EAC0);
      v173 = v253;
      v174 = v248;
      v175 = v152;
      v171(v253, v248, v152);
      v176 = v254;
      v177 = v261;
      v171(v254, v261, v152);
      v178 = sub_1BCE1ACA0();
      v179 = sub_1BCE1D8D0();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        v272 = v269;
        *v180 = 136446466;
        OUTLINED_FUNCTION_0_80();
        sub_1BC994568(v181, v182);
        sub_1BCE1E050();
        v183 = v152;
        v184 = v264;
        v264(v173, v183);
        v185 = OUTLINED_FUNCTION_46();
        v188 = sub_1BC98FE38(v185, v186, v187);

        *(v180 + 4) = v188;
        *(v180 + 12) = 2082;
        sub_1BCE1E050();
        v184(v176, v175);
        v189 = OUTLINED_FUNCTION_40_1();
        v192 = sub_1BC98FE38(v189, v190, v191);

        *(v180 + 14) = v192;
        _os_log_impl(&dword_1BC940000, v178, v179, "Sunrise/sunset day has no daylightStart/daylightEnd. sunrise=%{public}s sunset=%{public}s", v180, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_27_0();

        v193 = OUTLINED_FUNCTION_29_3(&a22);
        (v184)(v193);
        v194 = OUTLINED_FUNCTION_29_3(&a23);
        (v184)(v194);
        v195 = OUTLINED_FUNCTION_65_2();
        v184(v195, v175);
        v184(v260, v175);
        v196 = OUTLINED_FUNCTION_126();
        v197(v196);
        v184(v261, v175);
        v198 = OUTLINED_FUNCTION_29_3(&a12);
        (v184)(v198);
      }

      else
      {

        v219 = v264;
        v264(v176, v152);
        v219(v173, v152);
        v220 = OUTLINED_FUNCTION_29_3(&a22);
        (v219)(v220);
        v221 = OUTLINED_FUNCTION_29_3(&a23);
        (v219)(v221);
        v222 = OUTLINED_FUNCTION_65_2();
        v219(v222, v152);
        v219(v260, v152);
        v223 = OUTLINED_FUNCTION_126();
        v224(v223);
        v219(v177, v152);
        v219(v174, v152);
      }

      goto LABEL_42;
    }

    ++v164;
  }

  if ((sub_1BCE18FC0() & 1) == 0 || (sub_1BCE18FD0() & 1) == 0)
  {
    v226 = v164 - v162;
    if (!__OFSUB__(v164, v162))
    {
      OUTLINED_FUNCTION_0_80();
      sub_1BC994568(v227, v228);
      v229 = v261;
      v230 = v152;
      if (sub_1BCE1D1E0())
      {
        v231 = v256;
        sub_1BCE18F90();
        v233 = v232;
        v234 = v248;
        sub_1BCE18F90();
        v236 = v233 + v235;
        v237 = v249;
      }

      else
      {
        v231 = v256;
        sub_1BCE18F90();
        v237 = v249;
        v234 = v248;
      }

      v238 = v264;
      v239 = v267;
      v95 = v236 / v144 * v226 + v162;
      OUTLINED_FUNCTION_136(v95 + -90.0);
      v240 = OUTLINED_FUNCTION_60_6(&a22);
      v238(v240);
      (v238)(v231, v230);
      v241 = OUTLINED_FUNCTION_60_6(&a26);
      v238(v241);
      (v238)(v260, v230);
      v239(v237, v271);
      (v238)(v229, v230);
      (v238)(v234, v230);
      v118 = OUTLINED_FUNCTION_122_0() * 0.5;
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_51;
  }

  sub_1BCE192A0();
  v199 = v251;
  v200 = v250;
  v201 = v252;
  (*(v251 + 104))(v250, *MEMORY[0x1E6969A58], v252);
  v202 = sub_1BCE193D0();
  (*(v199 + 8))(v200, v201);
  v203 = v164 - v162;
  if (__OFSUB__(v164, v162))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v204 = 360 - v203;
  if (__OFSUB__(360, v203))
  {
LABEL_52:
    __break(1u);
    return;
  }

  v205 = v152;
  v206 = v111 - v144;
  v207 = v261;
  sub_1BCE18F90();
  v209 = v208 / v206;
  v210 = v249;
  v211 = v264;
  v212 = v256;
  v213 = v267;
  if (v202 > 11)
  {
    v242 = 360.0 - (1.0 - v209) * v204 * 0.5;
    OUTLINED_FUNCTION_136(v242 + -90.0);
    v243 = OUTLINED_FUNCTION_100_1();
    v213(v243);
    v244 = OUTLINED_FUNCTION_60_6(&a22);
    v211(v244);
    (v211)(v212, v205);
    v245 = OUTLINED_FUNCTION_60_6(&a26);
    v211(v245);
    (v211)(v260, v205);
    (v213)(v210, v202);
    (v211)(v207, v205);
    v246 = OUTLINED_FUNCTION_60_6(&a12);
    v211(v246);
    v98 = (v206 + 1.0) * 0.5 + 0.0;
    v99 = v268;
    *v268 = v242;
  }

  else
  {
    v214 = v209 * v204 * 0.5;
    OUTLINED_FUNCTION_136(v214 + -90.0);
    v215 = OUTLINED_FUNCTION_100_1();
    v213(v215);
    v216 = OUTLINED_FUNCTION_60_6(&a22);
    v211(v216);
    (v211)(v212, v205);
    v217 = OUTLINED_FUNCTION_60_6(&a26);
    v211(v217);
    (v211)(v260, v205);
    (v213)(v210, v202);
    (v211)(v207, v205);
    v218 = OUTLINED_FUNCTION_60_6(&a12);
    v211(v218);
    v98 = OUTLINED_FUNCTION_122_0() * 0.5 + 0.0;
    v99 = v268;
    *v268 = v214;
  }

LABEL_10:
  v99[1] = v98;
LABEL_11:
  OUTLINED_FUNCTION_74_2();
}

uint64_t sub_1BCD904C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v86 = a2;
  v83 = a3;
  v6 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v84 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  v80 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v13 = OUTLINED_FUNCTION_14(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  v20 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_0();
  v82 = v24;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_1();
  v81 = v26;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_131();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_1();
  v89 = v30;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_1();
  v87 = v32;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_1();
  v35 = v34;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v79 - v37;
  sub_1BC962464(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v39 = v19;
    return sub_1BC94C05C(v39, &qword_1EBD07868);
  }

  v79 = v6;
  v40 = v22[4];
  v41 = OUTLINED_FUNCTION_46();
  v40(v41);
  sub_1BC962464(v86, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    v42 = OUTLINED_FUNCTION_25_0();
    v43(v42);
    v39 = v16;
    return sub_1BC94C05C(v39, &qword_1EBD07868);
  }

  v86 = v38;
  v45 = v35;
  v46 = OUTLINED_FUNCTION_101_2();
  v40(v46);
  sub_1BCE192A0();
  v47 = v87;
  sub_1BCE19290();
  sub_1BCE18EF0();
  sub_1BCE19290();
  v48 = v22[1];
  v49 = OUTLINED_FUNCTION_10_2();
  v48(v49);
  sub_1BCE18F90();
  if (v50 <= 0.0)
  {
    if (qword_1EDA1EAB8 != -1)
    {
      OUTLINED_FUNCTION_15_37();
    }

    v53 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v53, qword_1EDA1EAC0);
    v54 = v22[2];
    v55 = v81;
    v54(v81, v87, v20);
    v56 = v82;
    v54(v82, v89, v20);
    v57 = sub_1BCE1ACA0();
    v58 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v90 = v83;
      *v59 = 136446466;
      OUTLINED_FUNCTION_0_80();
      sub_1BC994568(v60, v61);
      v85 = v45;
      LODWORD(v80) = v58;
      sub_1BCE1E050();
      (v48)(v55, v20);
      v62 = OUTLINED_FUNCTION_40_1();
      v65 = sub_1BC98FE38(v62, v63, v64);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2082;
      sub_1BCE1E050();
      (v48)(v56, v20);
      v66 = OUTLINED_FUNCTION_46();
      v69 = sub_1BC98FE38(v66, v67, v68);

      *(v59 + 14) = v69;
      _os_log_impl(&dword_1BC940000, v57, v80, "Sunrise/sunset day length is incorrectly zero when calculating horizon position. currentDayStart=%{public}s nextDayStart=%{public}s", v59, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_27_0();

      (v48)(v89, v20);
      (v48)(v87, v20);
      v70 = OUTLINED_FUNCTION_124();
      v71(v70);
      v72 = v85;
    }

    else
    {

      (v48)(v56, v20);
      (v48)(v55, v20);
      v76 = OUTLINED_FUNCTION_10_2();
      v48(v76);
      (v48)(v87, v20);
      v77 = OUTLINED_FUNCTION_124();
      v78(v77);
      v72 = v45;
    }

    (v48)(v72, v20);
    return (v48)(v86, v20);
  }

  else
  {
    v51 = v86;
    if (sub_1BCE18FC0())
    {
      sub_1BCE18F90();
      v52 = v84;
    }

    else
    {
      sub_1BCE18F40();
      v85 = v45;
      v73 = v80;
      sub_1BCE19390();
      sub_1BCE18EF0();
      v52 = v84;
      v74 = v73;
      v45 = v85;
      (*(v84 + 8))(v74, v79);
      sub_1BCE18F90();
      sub_1BCE18F90();
      (v48)(v4, v20);
      v75 = OUTLINED_FUNCTION_10_2();
      v48(v75);
    }

    (v48)(v89, v20);
    (v48)(v47, v20);
    (*(v52 + 8))(v88, v79);
    (v48)(v45, v20);
    return (v48)(v51, v20);
  }
}

uint64_t sub_1BCD90C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636F4C6E7573 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6E6F7A69726F68 && a2 == 0xEC00000059656E69;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x476E6F7A69726F68 && a2 == 0xEC00000058776F6CLL;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D69547961447369 && a2 == 0xE900000000000065)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BCE1E090();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BCD90E30(char a1)
{
  result = 0x73746E696F70;
  switch(a1)
  {
    case 1:
      result = 0x7461636F4C6E7573;
      break;
    case 2:
      result = 0x4C6E6F7A69726F68;
      break;
    case 3:
      result = 0x476E6F7A69726F68;
      break;
    case 4:
      result = 0x6D69547961447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD90EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD90C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD90F14(uint64_t a1)
{
  v2 = sub_1BCD911FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD90F50(uint64_t a1)
{
  v2 = sub_1BCD911FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SunriseSunsetViewModel.ChartViewModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_84_1(a1, a1[3]);
  sub_1BCD911FC();

  sub_1BCE1E170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE28);
  sub_1BCD91524(&qword_1EBD0DE30, sub_1BCD91250);
  OUTLINED_FUNCTION_13_43();
  sub_1BCE1E020();
  if (v1)
  {
  }

  else
  {

    sub_1BCD91250();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFF0();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFB0();
    OUTLINED_FUNCTION_4_27();
    sub_1BCE1DFE0();
  }

  v4 = OUTLINED_FUNCTION_51_0();
  return v5(v4);
}

unint64_t sub_1BCD911FC()
{
  result = qword_1EBD0DE20;
  if (!qword_1EBD0DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE20);
  }

  return result;
}

unint64_t sub_1BCD91250()
{
  result = qword_1EBD0DE38;
  if (!qword_1EBD0DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE38);
  }

  return result;
}

uint64_t SunriseSunsetViewModel.ChartViewModel.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_15();
  v6 = OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_84_1(v6, v7);
  sub_1BCD911FC();
  OUTLINED_FUNCTION_84();
  sub_1BCE1E160();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE28);
  sub_1BCD91524(&qword_1EBD0DE48, sub_1BCD91598);
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_64_3();
  sub_1BCE1DF70();
  sub_1BCD91598();
  OUTLINED_FUNCTION_64_3();
  sub_1BCE1DF70();
  OUTLINED_FUNCTION_34_13(2);
  sub_1BCE1DF40();
  v9 = v8;
  OUTLINED_FUNCTION_34_13(3);
  v10 = sub_1BCE1DF00();
  v16 = v11;
  OUTLINED_FUNCTION_34_13(4);
  v13 = sub_1BCE1DF30();
  v14 = OUTLINED_FUNCTION_30_16();
  v15(v14);
  *a2 = v17;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v16 & 1;
  *(a2 + 41) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BCD91524(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0DE28);
    a2();
    OUTLINED_FUNCTION_54_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCD91598()
{
  result = qword_1EBD0DE50;
  if (!qword_1EBD0DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE50);
  }

  return result;
}

void static SunriseSunsetViewModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_20_0();
  v43 = v3;
  v4 = OUTLINED_FUNCTION_11();
  v5 = type metadata accessor for SunriseSunsetViewModel.PolarDayModel(v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v42 = v8 - v7;
  v9 = OUTLINED_FUNCTION_13();
  v10 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel(v9);
  v11 = OUTLINED_FUNCTION_14(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v17 = OUTLINED_FUNCTION_8_15();
  type metadata accessor for SunriseSunsetViewModel(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34_11();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE58);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  v31 = *(v30 + 56);
  sub_1BCD8EC4C(v0, &v42 - v28);
  sub_1BCD8EC4C(v43, &v29[v31]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_83();
      sub_1BCD8EC4C(v29, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v0 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
        sub_1BCD8B2DC(&v29[v31], v14);
        static SunriseSunsetViewModel.PolarNightModel.== infix(_:_:)(v24, v14);
        sub_1BCD8B334(v14, type metadata accessor for SunriseSunsetViewModel.PolarNightModel);
        v33 = v24;
LABEL_13:
        v41 = v0;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_37_12();
      v35 = v24;
    }

    else
    {
      OUTLINED_FUNCTION_1_83();
      v36 = OUTLINED_FUNCTION_101_2();
      sub_1BCD8EC4C(v36, v37);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v38 = v42;
        sub_1BCD8B2DC(&v29[v31], v42);
        static SunriseSunsetViewModel.PolarDayModel.== infix(_:_:)(v21, v38);
        v39 = OUTLINED_FUNCTION_25_0();
        sub_1BCD8B334(v39, v40);
        v33 = v21;
        v41 = type metadata accessor for SunriseSunsetViewModel.PolarDayModel;
LABEL_14:
        sub_1BCD8B334(v33, v41);
        sub_1BCD8B334(v29, type metadata accessor for SunriseSunsetViewModel);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_44_9();
      v35 = v21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_83();
    sub_1BCD8EC4C(v29, v2);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_3_86();
      sub_1BCD8B2DC(&v29[v31], v1);
      static SunriseSunsetViewModel.NormalSunriseSunsetModel.== infix(_:_:)(v2, v1);
      sub_1BCD8B334(v1, v0);
      v33 = v2;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_42_10();
    v35 = v2;
  }

  sub_1BCD8B334(v35, v34);
  sub_1BC94C05C(v29, &qword_1EBD0DE58);
LABEL_15:
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCD91998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x67694E72616C6F70 && a2 == 0xEA00000000007468;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x79614472616C6F70 && a2 == 0xE800000000000000)
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

uint64_t sub_1BCD91AAC(char a1)
{
  if (!a1)
  {
    return 0x6C616D726F6ELL;
  }

  if (a1 == 1)
  {
    return 0x67694E72616C6F70;
  }

  return 0x79614472616C6F70;
}

uint64_t sub_1BCD91B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD91998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD91B34(uint64_t a1)
{
  v2 = sub_1BCD92298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91B70(uint64_t a1)
{
  v2 = sub_1BCD92298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD91BAC(uint64_t a1)
{
  v2 = sub_1BCD92394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91BE8(uint64_t a1)
{
  v2 = sub_1BCD92394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD91C24(uint64_t a1)
{
  v2 = sub_1BCD922EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91C60(uint64_t a1)
{
  v2 = sub_1BCD922EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD91C9C(uint64_t a1)
{
  v2 = sub_1BCD92340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91CD8(uint64_t a1)
{
  v2 = sub_1BCD92340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}