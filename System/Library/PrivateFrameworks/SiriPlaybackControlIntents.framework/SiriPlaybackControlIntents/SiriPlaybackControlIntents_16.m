_BYTE *storeEnumTagSinglePayload for VolumeControlsDialogProvider.SetVolumeParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x268A35910);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VolumeControlsDialogProvider.GetVolumeLevelParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x268A35A14);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268A35A50()
{
  result = qword_2802A7438;
  if (!qword_2802A7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7438);
  }

  return result;
}

unint64_t sub_268A35AA8()
{
  result = qword_2802A7440;
  if (!qword_2802A7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7440);
  }

  return result;
}

unint64_t sub_268A35B00()
{
  result = qword_2802A7448;
  if (!qword_2802A7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7448);
  }

  return result;
}

unint64_t sub_268A35B58()
{
  result = qword_2802A7450;
  if (!qword_2802A7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7450);
  }

  return result;
}

unint64_t sub_268A35BB0()
{
  result = qword_2802A7458;
  if (!qword_2802A7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7458);
  }

  return result;
}

unint64_t sub_268A35C08()
{
  result = qword_2802A7460;
  if (!qword_2802A7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7460);
  }

  return result;
}

unint64_t sub_268A35C60()
{
  result = qword_2802A7468;
  if (!qword_2802A7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7468);
  }

  return result;
}

unint64_t sub_268A35CB8()
{
  result = qword_2802A7470;
  if (!qword_2802A7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7470);
  }

  return result;
}

unint64_t sub_268A35D10()
{
  result = qword_2802A7478;
  if (!qword_2802A7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7478);
  }

  return result;
}

void OUTLINED_FUNCTION_0_31()
{
  *(v1 - 72) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 44) = 0;
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_268B38344();
}

void OUTLINED_FUNCTION_9_18()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v2 - 184) = *(v2 - 72);
  *(v2 - 176) = v4;
  *(v2 - 168) = v1;
  *(v2 - 160) = v3;
  v5 = *(v0 + 80);
  *(v2 - 152) = *(v0 + 88);
  *(v2 - 144) = v5;
  v6 = *(v0 + 64);
  *(v2 - 136) = *(v0 + 72);
  *(v2 - 128) = v6;
  v7 = *(v0 + 48);
  *(v2 - 120) = *(v0 + 56);
  *(v2 - 112) = v7;
  *(v2 - 104) = *(v0 + 44);
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_268B38574();
}

uint64_t OUTLINED_FUNCTION_22_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 88) = a1;

  return sub_26890C900(v9, va);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return sub_268B38584();
}

uint64_t OUTLINED_FUNCTION_26_12()
{

  return swift_dynamicCast();
}

id sub_268A35FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7490, &qword_268B453D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3E990;
  v1 = *MEMORY[0x277CB8178];
  v2 = *MEMORY[0x277CB8168];
  *(v0 + 32) = *MEMORY[0x277CB8178];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CB8158];
  v4 = *MEMORY[0x277CB8150];
  *(v0 + 48) = *MEMORY[0x277CB8158];
  *(v0 + 56) = v4;
  v10 = *MEMORY[0x277CB81D0];
  *(v0 + 64) = *MEMORY[0x277CB81D0];
  qword_2802A7480 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return v10;
}

id sub_268A3609C()
{
  v1 = [*(v0 + 56) currentRoute];
  v2 = [v1 outputs];

  sub_268A362D0();
  v3 = sub_268B37CF4();

  v4 = sub_2688EFD0C(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  while (1)
  {
    v7 = v5;
    if (v4 == v5)
    {
LABEL_11:

      return (v4 != v7);
    }

    sub_2688EFD10(v5, v6 == 0, v3);
    result = v6 ? MEMORY[0x26D625BD0](v7, v3) : *(v3 + 8 * v7 + 32);
    v9 = result;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (qword_2802A4ED0 != -1)
    {
      swift_once();
    }

    v11 = [v9 portType];
    MEMORY[0x28223BE20](v11);
    v10 = sub_268ACD25C();

    v5 = v7 + 1;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268A3626C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_268A362D0()
{
  result = qword_2802A7488;
  if (!qword_2802A7488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7488);
  }

  return result;
}

uint64_t sub_268A36314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2688E1450() & 1;
}

uint64_t sub_268A36358()
{
  if (!sub_268B37314())
  {
    return 26;
  }

  v0 = sub_268B35EC4();

  if (!v0)
  {
    return 26;
  }

  v1 = sub_268A6A3CC();

  return v1;
}

uint64_t sub_268A363C0(void *a1, void *a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[4] = a1;
  v24[5] = a2;
  v25 = a3;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C75C();
  OUTLINED_FUNCTION_83_3();
  if (v3)
  {

LABEL_5:
    v5 = sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87_2();
  v6 = objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v7 = [v6 JSONObjectWithData:v4 options:0 error:v24];

  if (!v7)
  {
    v9 = v24[0];
    v10 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v11 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v11, v12);
    goto LABEL_5;
  }

  v8 = v24[0];
  sub_268B380E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if (swift_dynamicCast())
  {
    v5 = v23;
  }

  else
  {
    v5 = sub_268B37B84();
  }

  v13 = OUTLINED_FUNCTION_29_12();
  sub_268910B4C(v13, v14);
LABEL_12:
  v15 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v15, v5);
  OUTLINED_FUNCTION_12_18();
  v16 = OUTLINED_FUNCTION_11_23(45);
  OUTLINED_FUNCTION_53_5(v16, v17, v18, v19, v20);

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268A367E4()
{
  OUTLINED_FUNCTION_47_6();
  v30 = *MEMORY[0x277D85DE8];
  HIBYTE(v28) = v0;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C468();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  v1 = sub_268B34554();
  v8 = OUTLINED_FUNCTION_50_6(v1, sel_JSONObjectWithData_options_error_, v2, v3, v4, v5, v6, v7, v25, v27, v28, 0);

  if (v8)
  {
    v9 = v29;
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_76_2())
    {
      v10 = v26;
    }

    else
    {
      v10 = sub_268B37B84();
    }

    v15 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v15, v16);
  }

  else
  {
    v11 = v29;
    v12 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v13 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v13, v14);
    v10 = sub_268B37B84();
  }

  v17 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v17, v10);
  OUTLINED_FUNCTION_12_18();
  v18 = OUTLINED_FUNCTION_11_23(33);
  OUTLINED_FUNCTION_53_5(v18, v19, v20, v21, v22);

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_268A36A00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char __dst, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_91_3();
  a43 = v46;
  a44 = v47;
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_82_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19_16(&a27);
  memcpy(&__dst, v44, 0x5BuLL);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C804();
  OUTLINED_FUNCTION_83_3();
  if (v44)
  {

LABEL_5:
    sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_33_14();
  objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v49 = OUTLINED_FUNCTION_25_14(v48, sel_JSONObjectWithData_options_error_);

  if (!v49)
  {
    v51 = a11;
    v52 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v53 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v53, v54);
    goto LABEL_5;
  }

  v50 = a11;
  OUTLINED_FUNCTION_95_3();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if ((OUTLINED_FUNCTION_26_12() & 1) == 0)
  {
    sub_268B37B84();
  }

  v55 = OUTLINED_FUNCTION_13_13();
  sub_268910B4C(v55, v56);
LABEL_12:
  OUTLINED_FUNCTION_71_5();
  v57 = OUTLINED_FUNCTION_11_23(37);
  OUTLINED_FUNCTION_26_13(v57, v58, v59, v60, v61);

  OUTLINED_FUNCTION_70_5(&a27);
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_3();
}

void sub_268A36BF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char __dst, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_91_3();
  a43 = v46;
  a44 = v47;
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_82_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19_16(&a27);
  memcpy(&__dst, v44, 0x5BuLL);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C7B0();
  OUTLINED_FUNCTION_83_3();
  if (v44)
  {

LABEL_5:
    sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_33_14();
  objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v49 = OUTLINED_FUNCTION_25_14(v48, sel_JSONObjectWithData_options_error_);

  if (!v49)
  {
    v51 = a11;
    v52 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v53 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v53, v54);
    goto LABEL_5;
  }

  v50 = a11;
  OUTLINED_FUNCTION_95_3();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if ((OUTLINED_FUNCTION_26_12() & 1) == 0)
  {
    sub_268B37B84();
  }

  v55 = OUTLINED_FUNCTION_13_13();
  sub_268910B4C(v55, v56);
LABEL_12:
  OUTLINED_FUNCTION_71_5();
  v57 = OUTLINED_FUNCTION_11_23(38);
  OUTLINED_FUNCTION_26_13(v57, v58, v59, v60, v61);

  OUTLINED_FUNCTION_70_5(&a27);
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_3();
}

uint64_t sub_268A36FD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000268B5B4E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268A37100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A36FD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268A37148@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_7();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268A37174(uint64_t a1)
{
  v2 = sub_268A3CF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A371B0(uint64_t a1)
{
  v2 = sub_268A3CF64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A371EC(_BYTE *a1@<X8>)
{
  sub_268A38714();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_268A3738C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A38B5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268A373B8(uint64_t a1)
{
  v2 = sub_268A3CFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A373F4(uint64_t a1)
{
  v2 = sub_268A3CFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A37474()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268A38C5C();
}

uint64_t sub_268A374BC()
{
  v29 = *MEMORY[0x277D85DE8];
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C4BC();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  v0 = sub_268B34554();
  v7 = OUTLINED_FUNCTION_50_6(v0, sel_JSONObjectWithData_options_error_, v1, v2, v3, v4, v5, v6, v24, v25, v27, 0);

  if (v7)
  {
    v8 = v28;
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_76_2())
    {
      v9 = v26;
    }

    else
    {
      v9 = sub_268B37B84();
    }

    v14 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v14, v15);
  }

  else
  {
    v10 = v28;
    v11 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v12 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v12, v13);
    v9 = sub_268B37B84();
  }

  v16 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v16, v9);
  OUTLINED_FUNCTION_12_18();
  v17 = OUTLINED_FUNCTION_11_23(42);
  OUTLINED_FUNCTION_53_5(v17, v18, v19, v20, v21);

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_268A376E4()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75E0, &qword_268B45D68);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_19();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268A3D370();
  OUTLINED_FUNCTION_25_13();
  v9 = *v2;
  v21[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    v10 = v2[1];
    v21[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v11 = v2[2];
    v21[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v12 = OUTLINED_FUNCTION_36_9();
    sub_268A3D3C4(v12, v13);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    v14 = OUTLINED_FUNCTION_39_7();
    memcpy(v14, v15, v16);
    sub_268A35574(v21);
    v17 = v2[89];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v18 = v2[90];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  v19 = OUTLINED_FUNCTION_59_3();
  v20(v19);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A378A8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75F0, &qword_268B45D70);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_37_12();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_58_6();
  sub_268A3D370();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_89_3();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v8 = OUTLINED_FUNCTION_17_20();
    sub_2689E5448(v8);
  }

  else
  {
    v16[272] = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    sub_268B38344();
    v16[183] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_4_28(4);
    v9 = sub_268B38344();
    OUTLINED_FUNCTION_57_3(v9);
    v10 = OUTLINED_FUNCTION_17_19();
    v11(v10);
    v12 = OUTLINED_FUNCTION_16_24();
    sub_268A3D3C4(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v14 = OUTLINED_FUNCTION_21_13();
    sub_2689E5448(v14);
    memcpy(v15, v16, 0x5BuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A37B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3BC20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A37B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268A376DC();
  *a1 = result;
  return result;
}

uint64_t sub_268A37B94(uint64_t a1)
{
  v2 = sub_268A3D370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A37BD0(uint64_t a1)
{
  v2 = sub_268A3D370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A37D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A37E8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268A37D74(uint64_t a1)
{
  v2 = sub_268A3D23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A37DB0(uint64_t a1)
{
  v2 = sub_268A3D23C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A37DEC(void *a1@<X8>)
{
  sub_268A380C4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268A37E8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_268B38444();
    OUTLINED_FUNCTION_93_4();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_268A37F3C()
{
  OUTLINED_FUNCTION_197();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_62_3();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_88_3();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518);
  sub_268B383D4();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_198();
}

void sub_268A380C4()
{
  OUTLINED_FUNCTION_197();
  v6 = OUTLINED_FUNCTION_27_12(v3, v4, v5);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75();
  v10 = OUTLINED_FUNCTION_30_13();
  v2(v10);
  OUTLINED_FUNCTION_9_19();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    OUTLINED_FUNCTION_10_20(&qword_2802A7610);
    sub_268B38364();
    v11 = OUTLINED_FUNCTION_60_3();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A381EC(uint64_t a1)
{
  v2 = sub_268A3CF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A38228(uint64_t a1)
{
  v2 = sub_268A3CF10();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A38264(void *a1@<X8>)
{
  sub_268A380C4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268A384F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1850700649 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_268A385BC()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_37_12();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_268B38584();
  sub_268B383B4();
  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_60_0();
  v15(v14);
  OUTLINED_FUNCTION_198();
}

void sub_268A38714()
{
  OUTLINED_FUNCTION_197();
  v6 = OUTLINED_FUNCTION_27_12(v3, v4, v5);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75();
  v10 = OUTLINED_FUNCTION_30_13();
  v2(v10);
  OUTLINED_FUNCTION_9_19();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38344();
    v11 = OUTLINED_FUNCTION_60_3();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A387F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A384F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268A38824(uint64_t a1)
{
  v2 = sub_268A3D108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A38860(uint64_t a1)
{
  v2 = sub_268A3D108();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3889C(_BYTE *a1@<X8>)
{
  sub_268A38714();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_268A38940()
{
  OUTLINED_FUNCTION_47_6();
  v30 = *MEMORY[0x277D85DE8];
  HIBYTE(v28) = v0;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C60C();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  v1 = sub_268B34554();
  v8 = OUTLINED_FUNCTION_50_6(v1, sel_JSONObjectWithData_options_error_, v2, v3, v4, v5, v6, v7, v25, v27, v28, 0);

  if (v8)
  {
    v9 = v29;
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_76_2())
    {
      v10 = v26;
    }

    else
    {
      v10 = sub_268B37B84();
    }

    v15 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v15, v16);
  }

  else
  {
    v11 = v29;
    v12 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v13 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v13, v14);
    v10 = sub_268B37B84();
  }

  v17 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v17, v10);
  OUTLINED_FUNCTION_12_18();
  v18 = OUTLINED_FUNCTION_11_23(39);
  OUTLINED_FUNCTION_53_5(v18, v19, v20, v21, v22);

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268A38B5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000268B5B500 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_268B38444();
    OUTLINED_FUNCTION_93_4();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268A38BD4()
{
  sub_268B38514();
  MEMORY[0x26D625F10](0);
  return sub_268B38544();
}

void sub_268A38C5C()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v16[1] = v2;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1();
  sub_268B38584();
  sub_268B38374();
  (*(v9 + 8))(v14, v7);
  OUTLINED_FUNCTION_198();
}

void sub_268A38DC8()
{
  OUTLINED_FUNCTION_197();
  v6 = OUTLINED_FUNCTION_27_12(v3, v4, v5);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75();
  v10 = OUTLINED_FUNCTION_30_13();
  v2(v10);
  OUTLINED_FUNCTION_9_19();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38304();
    v11 = OUTLINED_FUNCTION_60_3();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A38EB0()
{
  sub_268B38514();
  MEMORY[0x26D625F10](0);
  return sub_268B38544();
}

uint64_t sub_268A38EF0(uint64_t a1)
{
  v2 = sub_268A3D00C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A38F2C(uint64_t a1)
{
  v2 = sub_268A3D00C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A38FAC()
{
  OUTLINED_FUNCTION_69_5();
  sub_268A38DC8();
  if (!v1)
  {
    *v0 = v2;
    v0[1] = v3;
  }
}

void sub_268A38FD8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268A38C5C();
}

uint64_t sub_268A39020(char a1)
{
  if (a1)
  {
    return 0x7265486E49736168;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268A39108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A39D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A39130@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_10();
  *a1 = result;
  return result;
}

uint64_t sub_268A39158(uint64_t a1)
{
  v2 = sub_268A3CEBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A39194(uint64_t a1)
{
  v2 = sub_268A3CEBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A39214()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268A39E68();
}

unint64_t sub_268A39448()
{
  result = qword_2802A7498;
  if (!qword_2802A7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7498);
  }

  return result;
}

uint64_t sub_268A3949C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62616E457369 && a2 == 0xE800000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000268B5B540 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_268B38444();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_268A39600(char a1)
{
  result = 0x736D6F6F72;
  switch(a1)
  {
    case 1:
      result = 0x656C62616E457369;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x7265486E49736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A39698()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7570, &qword_268B45D28);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_19();
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_268A3D0B4();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518);
  OUTLINED_FUNCTION_65_5();
  sub_268B383D4();
  if (!v0)
  {
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1_5();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_198();
}

void sub_268A39830()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7630, &qword_268B45DA8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75();
  v6 = v1[3];
  v7 = v1[4];
  OUTLINED_FUNCTION_67_3(v1);
  sub_268A3D0B4();
  sub_268B38574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_10_20(&qword_2802A7610);
  OUTLINED_FUNCTION_84_3();
  OUTLINED_FUNCTION_52_8();
  sub_268B38364();
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_52_8();
  sub_268B38344();
  OUTLINED_FUNCTION_52_8();
  sub_268B38344();
  OUTLINED_FUNCTION_52_8();
  sub_268B38344();
  v8 = OUTLINED_FUNCTION_61_3();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A39A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3949C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A39A78(uint64_t a1)
{
  v2 = sub_268A3D0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A39AB4(uint64_t a1)
{
  v2 = sub_268A3D0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A39AF0(uint64_t a1@<X8>)
{
  sub_268A39830();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    *(a1 + 9) = BYTE1(v4) & 1;
    *(a1 + 10) = BYTE2(v4) & 1;
  }
}

void sub_268A39B34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  *(v0 + 9);
  *(v0 + 10);
  sub_268A39698();
}

uint64_t sub_268A39D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_93_4();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_268A39E68()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_62_3();
  v14 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  OUTLINED_FUNCTION_88_3();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518);
  OUTLINED_FUNCTION_65_5();
  sub_268B383D4();
  if (!v0)
  {
    OUTLINED_FUNCTION_86_2();
    sub_268B383B4();
  }

  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_198();
}

void sub_268A3A018()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1(v14);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75();
  v13 = OUTLINED_FUNCTION_30_13();
  v3(v13);
  OUTLINED_FUNCTION_9_19();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    OUTLINED_FUNCTION_10_20(&qword_2802A7610);
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_52_8();
    sub_268B38364();
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_52_8();
    sub_268B38344();
    (*(v9 + 8))(v1, v14);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3A1A4(uint64_t a1)
{
  v2 = sub_268A3D1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3A1E0(uint64_t a1)
{
  v2 = sub_268A3D1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3A260()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268A39E68();
}

uint64_t sub_268A3A494(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000268B5B500 == a2;
  if (v3 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000268B5B540 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

unint64_t sub_268A3A568(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_268A3A5A0()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75C0, &qword_268B45D58);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_62_3();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_58_6();
  sub_268A3D290();
  sub_268B38584();
  OUTLINED_FUNCTION_60_0();
  sub_268B38374();
  if (!v0)
  {
    sub_268B383B4();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3A6E0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7600, &qword_268B45D80);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75();
  v10 = a1[3];
  v11 = a1[4];
  OUTLINED_FUNCTION_67_3(a1);
  sub_268A3D290();
  sub_268B38574();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38304();
    OUTLINED_FUNCTION_35_10();
    sub_268B38344();
    (*(v6 + 8))(v2, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return OUTLINED_FUNCTION_60_0();
}

uint64_t sub_268A3A868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3A494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A3A890(uint64_t a1)
{
  v2 = sub_268A3D290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3A8CC(uint64_t a1)
{
  v2 = sub_268A3D290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A3A908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268A3A6E0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

void sub_268A3A93C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_268A3A5A0();
}

uint64_t sub_268A3A95C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1850700649 && a2 == 0xE400000000000000;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000016 && 0x8000000268B5B540 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268A3ABE8(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0x6F52656D61537369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 1850700649;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A3ACF8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7590, &unk_268B45D38);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_19();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268A3D15C();
  OUTLINED_FUNCTION_25_13();
  v9 = *v2;
  v23[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    v10 = v2[1];
    v23[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v11 = v2[2];
    v23[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v12 = OUTLINED_FUNCTION_36_9();
    sub_268A3D1B0(v12, v13);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    v14 = OUTLINED_FUNCTION_39_7();
    memcpy(v14, v15, v16);
    sub_268A35574(v23);
    v17 = v2[89];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v18 = v2[90];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v19 = v2[91];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v20 = v2[92];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  v21 = OUTLINED_FUNCTION_59_3();
  v22(v21);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A3AEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7620, &qword_268B45D98);
  OUTLINED_FUNCTION_1(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_37_12();
  v21 = v10[3];
  v22 = v10[4];
  v42 = v10;
  OUTLINED_FUNCTION_58_6();
  sub_268A3D15C();
  OUTLINED_FUNCTION_21_12();
  if (v11)
  {
    OUTLINED_FUNCTION_5_17();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = v91;
    v76 = v92;
    v77 = v47;
    v78 = v45;
    v79 = 1;
    v80 = v40;
    v81 = v41;
    v82 = v43;
    v83 = a10;
    v84 = v53;
    v85 = v14;
    v86 = v21;
    v87 = v13;
    v88 = v22;
    v89 = v51;
    v90 = v49;
    sub_268A3D468(&v72);
  }

  else
  {
    v72 = 0;
    OUTLINED_FUNCTION_8_20();
    v39 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(1);
    v38 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(2);
    v37 = sub_268B38344() & 1;
    v60[31] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_48_7();
    v46 = v62;
    v48 = v61;
    v23 = v64;
    v32 = v12;
    v33 = v63;
    v24 = v65;
    v44 = v66;
    v25 = v67;
    v54 = v68;
    v35 = v70;
    v36 = v69;
    v34 = v71;
    v57[0] = 0;
    v57[1] = 0;
    v57[2] = 1;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 25);
    sub_268A35574(v57);
    OUTLINED_FUNCTION_4_28(4);
    v26 = v23;
    LOBYTE(v23) = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(5);
    v52 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(6);
    v50 = sub_268B38344() & 1;
    v56 = 7;
    v27 = sub_268B38344();
    v28 = *(v17 + 8);
    v29 = v27;
    v30 = OUTLINED_FUNCTION_60_0();
    v31(v30);
    v55[0] = v39;
    v55[1] = v38;
    v55[2] = v37;
    *&v55[8] = v48;
    *&v55[16] = v46;
    *&v55[24] = v33;
    *&v55[32] = v26;
    *&v55[40] = v24;
    *&v55[48] = v44;
    *&v55[56] = v25;
    *&v55[64] = v54;
    *&v55[72] = v36;
    *&v55[80] = v35;
    v55[88] = v34;
    v55[89] = v23;
    v55[90] = v52;
    v55[91] = v50;
    v55[92] = v29 & 1;
    sub_268A3D1B0(v55, &v72);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v72 = v39;
    v73 = v38;
    v74 = v37;
    v77 = v48;
    v78 = v46;
    v79 = v33;
    v80 = v26;
    v81 = v24;
    v82 = v44;
    v83 = v25;
    v84 = v54;
    v85 = v36;
    v86 = v35;
    v87 = v34;
    v88 = v23;
    v89 = v52;
    LOBYTE(v90) = v50;
    HIBYTE(v90) = v29 & 1;
    sub_268A3D468(&v72);
    memcpy(v32, v55, 0x5DuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3B3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3A95C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A3B408@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268A3ABE0();
  *a1 = result;
  return result;
}

uint64_t sub_268A3B430(uint64_t a1)
{
  v2 = sub_268A3D15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3B46C(uint64_t a1)
{
  v2 = sub_268A3D15C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3B4A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_268A3AEFC(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x5DuLL);
  }
}

void sub_268A3B548(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char __dst, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_91_3();
  a43 = v46;
  a44 = v47;
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_82_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_19_16(&a27);
  memcpy(&__dst, v44, 0x5DuLL);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A3C660();
  OUTLINED_FUNCTION_83_3();
  if (v44)
  {

LABEL_5:
    sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_33_14();
  objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v49 = OUTLINED_FUNCTION_25_14(v48, sel_JSONObjectWithData_options_error_);

  if (!v49)
  {
    v51 = a11;
    v52 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v53 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v53, v54);
    goto LABEL_5;
  }

  v50 = a11;
  OUTLINED_FUNCTION_95_3();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if ((OUTLINED_FUNCTION_26_12() & 1) == 0)
  {
    sub_268B37B84();
  }

  v55 = OUTLINED_FUNCTION_13_13();
  sub_268910B4C(v55, v56);
LABEL_12:
  OUTLINED_FUNCTION_71_5();
  v57 = OUTLINED_FUNCTION_11_23(40);
  OUTLINED_FUNCTION_26_13(v57, v58, v59, v60, v61);

  OUTLINED_FUNCTION_70_5(&a27);
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_3();
}

uint64_t sub_268A3B73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000268B5B520 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268A3B808(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268A3B8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3B73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A3B8FC(uint64_t a1)
{
  v2 = sub_268A3D060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3B938(uint64_t a1)
{
  v2 = sub_268A3D060();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3B9B8()
{
  OUTLINED_FUNCTION_69_5();
  sub_268A3A018();
  if (!v1)
  {
    *v0 = v2;
    *(v0 + 8) = v3 & 1;
  }
}

void sub_268A3B9EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268A39E68();
}

uint64_t sub_268A3BC20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();
      v8 = a1 == 0xD000000000000012 && v7 == a2;
      if (v8 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v9 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == OUTLINED_FUNCTION_72_4() && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_71_5();
            if (a1 == 0xD000000000000014 && v12 == a2)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_58_1();
              OUTLINED_FUNCTION_93_4();
              if (a1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

void sub_268A3BDA4(char a1)
{
  switch(a1)
  {
    case 2:
    case 5:
      OUTLINED_FUNCTION_71_5();
      break;
    case 4:
      OUTLINED_FUNCTION_72_4();
      break;
    default:
      return;
  }
}

void sub_268A3BE88()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75D0, &qword_268B45D60);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_19();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268A3D2E4();
  OUTLINED_FUNCTION_25_13();
  v9 = *v2;
  v21[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    v10 = v2[1];
    v21[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v11 = v2[2];
    v21[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v12 = OUTLINED_FUNCTION_36_9();
    sub_268A3D338(v12, v13);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    v14 = OUTLINED_FUNCTION_39_7();
    memcpy(v14, v15, v16);
    sub_268A35574(v21);
    v17 = v2[89];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v18 = v2[90];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  v19 = OUTLINED_FUNCTION_59_3();
  v20(v19);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A3C04C()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75F8, &qword_268B45D78);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_37_12();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_58_6();
  sub_268A3D2E4();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_89_3();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v8 = OUTLINED_FUNCTION_17_20();
    sub_2689EA0A8(v8);
  }

  else
  {
    v16[272] = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    sub_268B38344();
    v16[183] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_4_28(4);
    v9 = sub_268B38344();
    OUTLINED_FUNCTION_57_3(v9);
    v10 = OUTLINED_FUNCTION_17_19();
    v11(v10);
    v12 = OUTLINED_FUNCTION_16_24();
    sub_268A3D338(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v14 = OUTLINED_FUNCTION_21_13();
    sub_2689EA0A8(v14);
    memcpy(v15, v16, 0x5BuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3C2CC(uint64_t a1)
{
  v2 = sub_268A3D2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3C308(uint64_t a1)
{
  v2 = sub_268A3D2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_268A3C370@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x5BuLL);
  }

  return result;
}

unint64_t sub_268A3C414()
{
  result = qword_2802A74A0;
  if (!qword_2802A74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74A0);
  }

  return result;
}

unint64_t sub_268A3C468()
{
  result = qword_2802A74A8;
  if (!qword_2802A74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74A8);
  }

  return result;
}

unint64_t sub_268A3C4BC()
{
  result = qword_2802A74B0;
  if (!qword_2802A74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74B0);
  }

  return result;
}

unint64_t sub_268A3C510()
{
  result = qword_2802A74B8;
  if (!qword_2802A74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74B8);
  }

  return result;
}

unint64_t sub_268A3C564()
{
  result = qword_2802A74C0;
  if (!qword_2802A74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74C0);
  }

  return result;
}

unint64_t sub_268A3C5B8()
{
  result = qword_2802A74C8;
  if (!qword_2802A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74C8);
  }

  return result;
}

unint64_t sub_268A3C60C()
{
  result = qword_2802A74D0;
  if (!qword_2802A74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74D0);
  }

  return result;
}

unint64_t sub_268A3C660()
{
  result = qword_2802A74D8;
  if (!qword_2802A74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74D8);
  }

  return result;
}

unint64_t sub_268A3C6B4()
{
  result = qword_2802A74E0;
  if (!qword_2802A74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74E0);
  }

  return result;
}

unint64_t sub_268A3C708()
{
  result = qword_2802A74E8;
  if (!qword_2802A74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74E8);
  }

  return result;
}

unint64_t sub_268A3C75C()
{
  result = qword_2802A74F0;
  if (!qword_2802A74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74F0);
  }

  return result;
}

unint64_t sub_268A3C7B0()
{
  result = qword_2802A74F8;
  if (!qword_2802A74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74F8);
  }

  return result;
}

unint64_t sub_268A3C804()
{
  result = qword_2802A7500;
  if (!qword_2802A7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7500);
  }

  return result;
}

uint64_t sub_268A3C874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 91))
  {
    return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_8(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }
}

uint64_t sub_268A3C8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268A3C948(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_268A3C99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_268A3CA30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 93))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A3CA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 93) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 93) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_268A3CB28(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_268A3CB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268A3CBE8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_8(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

uint64_t sub_268A3CC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268A3CC9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268A3CD34(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A3CDF0);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268A3CE30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_268A3CE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268A3CEBC()
{
  result = qword_2802A7510;
  if (!qword_2802A7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7510);
  }

  return result;
}

unint64_t sub_268A3CF10()
{
  result = qword_2802A7528;
  if (!qword_2802A7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7528);
  }

  return result;
}

unint64_t sub_268A3CF64()
{
  result = qword_2802A7538;
  if (!qword_2802A7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7538);
  }

  return result;
}

unint64_t sub_268A3CFB8()
{
  result = qword_2802A7548;
  if (!qword_2802A7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7548);
  }

  return result;
}

unint64_t sub_268A3D00C()
{
  result = qword_2802A7558;
  if (!qword_2802A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7558);
  }

  return result;
}

unint64_t sub_268A3D060()
{
  result = qword_2802A7568;
  if (!qword_2802A7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7568);
  }

  return result;
}

unint64_t sub_268A3D0B4()
{
  result = qword_2802A7578;
  if (!qword_2802A7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7578);
  }

  return result;
}

unint64_t sub_268A3D108()
{
  result = qword_2802A7588;
  if (!qword_2802A7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7588);
  }

  return result;
}

unint64_t sub_268A3D15C()
{
  result = qword_2802A7598;
  if (!qword_2802A7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7598);
  }

  return result;
}

unint64_t sub_268A3D1E8()
{
  result = qword_2802A75A8;
  if (!qword_2802A75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75A8);
  }

  return result;
}

unint64_t sub_268A3D23C()
{
  result = qword_2802A75B8;
  if (!qword_2802A75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75B8);
  }

  return result;
}

unint64_t sub_268A3D290()
{
  result = qword_2802A75C8;
  if (!qword_2802A75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75C8);
  }

  return result;
}

unint64_t sub_268A3D2E4()
{
  result = qword_2802A75D8;
  if (!qword_2802A75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75D8);
  }

  return result;
}

unint64_t sub_268A3D370()
{
  result = qword_2802A75E8;
  if (!qword_2802A75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75E8);
  }

  return result;
}

uint64_t sub_268A3D3FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B48, &qword_268B416A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A3D4B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268A3D534(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A3D5F0);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageControlsDialogProvider.SubtitleSetSuccessfullyParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LanguageControlsDialogProvider.SubtitleSetSuccessfullyParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x268A3D7C0);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageControlsDialogProvider.DeviceDisambiguationSubtitlesParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x268A3D8D4);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_268A3D94C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268A3D9E8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268A3DA20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268A3DAA4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A3DB60);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268A3DB9C()
{
  result = qword_2802A7668;
  if (!qword_2802A7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7668);
  }

  return result;
}

unint64_t sub_268A3DBF4()
{
  result = qword_2802A7670;
  if (!qword_2802A7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7670);
  }

  return result;
}

unint64_t sub_268A3DC4C()
{
  result = qword_2802A7678;
  if (!qword_2802A7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7678);
  }

  return result;
}

unint64_t sub_268A3DCA4()
{
  result = qword_2802A7680;
  if (!qword_2802A7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7680);
  }

  return result;
}

unint64_t sub_268A3DCFC()
{
  result = qword_2802A7688;
  if (!qword_2802A7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7688);
  }

  return result;
}

unint64_t sub_268A3DD54()
{
  result = qword_2802A7690;
  if (!qword_2802A7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7690);
  }

  return result;
}

unint64_t sub_268A3DDAC()
{
  result = qword_2802A7698;
  if (!qword_2802A7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7698);
  }

  return result;
}

unint64_t sub_268A3DE04()
{
  result = qword_2802A76A0;
  if (!qword_2802A76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76A0);
  }

  return result;
}

unint64_t sub_268A3DE5C()
{
  result = qword_2802A76A8;
  if (!qword_2802A76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76A8);
  }

  return result;
}

unint64_t sub_268A3DEB4()
{
  result = qword_2802A76B0;
  if (!qword_2802A76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76B0);
  }

  return result;
}

unint64_t sub_268A3DF0C()
{
  result = qword_2802A76B8;
  if (!qword_2802A76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76B8);
  }

  return result;
}

unint64_t sub_268A3DF64()
{
  result = qword_2802A76C0;
  if (!qword_2802A76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76C0);
  }

  return result;
}

unint64_t sub_268A3DFBC()
{
  result = qword_2802A76C8;
  if (!qword_2802A76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76C8);
  }

  return result;
}

unint64_t sub_268A3E014()
{
  result = qword_2802A76D0;
  if (!qword_2802A76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76D0);
  }

  return result;
}

unint64_t sub_268A3E06C()
{
  result = qword_2802A76D8;
  if (!qword_2802A76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76D8);
  }

  return result;
}

unint64_t sub_268A3E0C4()
{
  result = qword_2802A76E0;
  if (!qword_2802A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76E0);
  }

  return result;
}

unint64_t sub_268A3E11C()
{
  result = qword_2802A76E8;
  if (!qword_2802A76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76E8);
  }

  return result;
}

unint64_t sub_268A3E174()
{
  result = qword_2802A76F0;
  if (!qword_2802A76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76F0);
  }

  return result;
}

unint64_t sub_268A3E1CC()
{
  result = qword_2802A76F8;
  if (!qword_2802A76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76F8);
  }

  return result;
}

unint64_t sub_268A3E224()
{
  result = qword_2802A7700;
  if (!qword_2802A7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7700);
  }

  return result;
}

unint64_t sub_268A3E27C()
{
  result = qword_2802A7708;
  if (!qword_2802A7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7708);
  }

  return result;
}

unint64_t sub_268A3E2D4()
{
  result = qword_2802A7710;
  if (!qword_2802A7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7710);
  }

  return result;
}

unint64_t sub_268A3E32C()
{
  result = qword_2802A7718;
  if (!qword_2802A7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7718);
  }

  return result;
}

unint64_t sub_268A3E384()
{
  result = qword_2802A7720;
  if (!qword_2802A7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7720);
  }

  return result;
}

unint64_t sub_268A3E3DC()
{
  result = qword_2802A7728;
  if (!qword_2802A7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7728);
  }

  return result;
}

unint64_t sub_268A3E434()
{
  result = qword_2802A7730;
  if (!qword_2802A7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7730);
  }

  return result;
}

unint64_t sub_268A3E48C()
{
  result = qword_2802A7738;
  if (!qword_2802A7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7738);
  }

  return result;
}

unint64_t sub_268A3E4E4()
{
  result = qword_2802A7740;
  if (!qword_2802A7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7740);
  }

  return result;
}

unint64_t sub_268A3E53C()
{
  result = qword_2802A7748;
  if (!qword_2802A7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7748);
  }

  return result;
}

unint64_t sub_268A3E594()
{
  result = qword_2802A7750;
  if (!qword_2802A7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7750);
  }

  return result;
}

unint64_t sub_268A3E5EC()
{
  result = qword_2802A7758;
  if (!qword_2802A7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7758);
  }

  return result;
}

unint64_t sub_268A3E644()
{
  result = qword_2802A7760;
  if (!qword_2802A7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7760);
  }

  return result;
}

unint64_t sub_268A3E69C()
{
  result = qword_2802A7768;
  if (!qword_2802A7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7768);
  }

  return result;
}

unint64_t sub_268A3E6F4()
{
  result = qword_2802A7770;
  if (!qword_2802A7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7770);
  }

  return result;
}

unint64_t sub_268A3E74C()
{
  result = qword_2802A7778;
  if (!qword_2802A7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7778);
  }

  return result;
}

unint64_t sub_268A3E7A4()
{
  result = qword_2802A7780;
  if (!qword_2802A7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7780);
  }

  return result;
}

unint64_t sub_268A3E7FC()
{
  result = qword_2802A7788;
  if (!qword_2802A7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7788);
  }

  return result;
}

unint64_t sub_268A3E854()
{
  result = qword_2802A7790;
  if (!qword_2802A7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7790);
  }

  return result;
}

unint64_t sub_268A3E8AC()
{
  result = qword_2802A7798;
  if (!qword_2802A7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7798);
  }

  return result;
}

unint64_t sub_268A3E904()
{
  result = qword_2802A77A0;
  if (!qword_2802A77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77A0);
  }

  return result;
}

unint64_t sub_268A3E95C()
{
  result = qword_2802A77A8;
  if (!qword_2802A77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77A8);
  }

  return result;
}

unint64_t sub_268A3E9B4()
{
  result = qword_2802A77B0;
  if (!qword_2802A77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77B0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_32()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 48) = 0;
  *(v1 - 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 104) = 0;
  *(v0 + 100) = 0;
}

void OUTLINED_FUNCTION_5_17()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[9] = 0;
  v0[10] = 0;
  v0[13] = 0;
  *(v1 - 72) = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_268B38574();
}

uint64_t OUTLINED_FUNCTION_10_20(unint64_t *a1)
{

  return sub_268A3D3FC(a1);
}

uint64_t OUTLINED_FUNCTION_11_24(unint64_t *a1)
{

  return sub_268A3D3FC(a1);
}

uint64_t OUTLINED_FUNCTION_16_24()
{
  v6 = v1 & 1;
  *(v0 + 4) = v1 & 1;
  v7 = *(v0 + 40);
  *(v0 + 112) = *(v0 + 44);
  *(v0 + 113) = v7;
  *(v0 + 114) = v3;
  v8 = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 128) = v8;
  *(v0 + 136) = *(v0 + 8);
  *(v0 + 144) = v4;
  v9 = *(v0 + 64);
  *(v0 + 152) = *(v5 - 72);
  *(v0 + 160) = v9;
  *(v0 + 168) = *(v0 + 104);
  *(v0 + 176) = v2;
  v10 = *(v0 + 24);
  *(v0 + 184) = *(v0 + 32);
  *(v0 + 192) = v10;
  *(v0 + 200) = *(v0 + 20);
  *(v0 + 201) = *(v0 + 100);
  *(v0 + 202) = v6;
  return v0 + 112;
}

uint64_t OUTLINED_FUNCTION_17_20()
{
  *(v9 - 192) = v1;
  *(v9 - 191) = v4;
  *(v9 - 190) = v7;
  *(v0 + 387) = *(v9 - 96);
  *(v9 - 185) = *(v9 - 92);
  v10 = *(v0 + 80);
  *(v9 - 184) = *(v0 + 88);
  *(v9 - 176) = v10;
  v11 = *(v0 + 48);
  *(v9 - 168) = v6;
  *(v9 - 160) = v11;
  v12 = *(v0 + 64);
  *(v9 - 152) = *(v9 - 72);
  *(v9 - 144) = v12;
  *(v9 - 136) = *(v0 + 104);
  *(v9 - 128) = v2;
  *(v9 - 120) = v5;
  *(v9 - 112) = v8;
  *(v9 - 104) = v3;
  *(v9 - 103) = *(v0 + 100);
  return v9 - 192;
}

id OUTLINED_FUNCTION_18_13(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return [v13 a2];
}

uint64_t OUTLINED_FUNCTION_21_13()
{
  *(v9 - 192) = v4;
  *(v9 - 191) = v5;
  *(v9 - 190) = v7;
  *(v9 - 184) = v6;
  *(v9 - 176) = v1;
  *(v9 - 168) = *(v0 + 8);
  *(v9 - 160) = v8;
  *(v9 - 152) = *(v9 - 72);
  *(v9 - 144) = v3;
  *(v9 - 136) = *(v0 + 104);
  *(v9 - 128) = v2;
  v10 = *(v0 + 24);
  *(v9 - 120) = *(v0 + 32);
  *(v9 - 112) = v10;
  *(v9 - 104) = *(v0 + 20);
  *(v9 - 103) = *(v0 + 100);
  *(v9 - 102) = *(v0 + 4);
  return v9 - 192;
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  *(v0 + 48) = v1;
  v4 = *(v0 + 296);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 88) = v4;
  v5 = *(v0 + 320);
  *(v0 + 8) = *(v0 + 312);
  v6 = *(v0 + 336);
  *(v2 - 72) = *(v0 + 328);
  *(v0 + 64) = v6;
  v7 = *(v0 + 352);
  *(v0 + 104) = *(v0 + 344);
  v8 = *(v0 + 360);
  *(v0 + 24) = *(v0 + 368);
  *(v0 + 32) = v8;
  *(v0 + 20) = *(v0 + 376);
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 273) = 0u;

  return sub_268A35574(v0 + 208);
}

id OUTLINED_FUNCTION_25_14(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2689CE860(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_31_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 88) = a1;

  return sub_26890C900(v9, va);
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return sub_268B38334();
}

id OUTLINED_FUNCTION_50_6(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return [v12 a2];
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return sub_268B34514();
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2689CE860(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_57_3(char a1)
{
  *(v1 + 100) = a1 & 1;
  *(v1 + 207) = 5;

  return sub_268B38344();
}

void OUTLINED_FUNCTION_66_4()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 44);
  *(v0 + 48) = v1;
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 20);
  v7 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_70_5(uint64_t *a1)
{
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_4()
{

  return sub_268B380E4();
}

void *OUTLINED_FUNCTION_74_4()
{

  return memcpy((v1 - 168), (v0 + 8), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_76_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_82_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  return sub_26890C900(v1, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_83_3()
{

  return sub_268B344D4();
}

void OUTLINED_FUNCTION_85_3()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_93_4()
{
}

uint64_t OUTLINED_FUNCTION_94_3()
{
}

uint64_t OUTLINED_FUNCTION_95_3()
{

  return sub_268B380E4();
}

uint64_t OUTLINED_FUNCTION_96_2()
{

  return sub_268B344D4();
}

void sub_268A3F298(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v87 = a5;
  v88 = a4;
  v89 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v5 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v7 = &v77 - v6;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v85 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v77 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v77 - v20);
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v22 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v23 = v9[2];
    OUTLINED_FUNCTION_0_33();
    v23();
    v24 = sub_268B37A34();
    v25 = sub_268B37ED4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      v84 = (v9 + 2);
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "SkipTimeConfirmIntentStrategy.makePromptForConfirmation()", v26, 2u);
      OUTLINED_FUNCTION_12();
    }

    v27 = v9[1];
    v27(v21, v8);
    v28 = sub_268B18100();
    if (!v28)
    {
      goto LABEL_10;
    }

    v29 = v28;
    v84 = v27;
    v30 = sub_2688EFD0C(v28);
    if (!v30)
    {

      v27 = v84;
LABEL_10:
      v44 = v85;
      OUTLINED_FUNCTION_0_33();
      v23();
      v45 = sub_268B37A34();
      v46 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v46))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v47, v48, "Could not find any devices in the intent for confirmation");
        OUTLINED_FUNCTION_12();
      }

      v27(v44, v8);
      sub_2688C2ECC();
      v49 = swift_allocError();
      v51 = 0x80;
LABEL_13:
      OUTLINED_FUNCTION_1_42(v49, v50, v51);
      v88(v7);
      goto LABEL_14;
    }

    v31 = v30;
    v32 = [v89 duration];
    if (!v32)
    {

      v52 = v82;
      OUTLINED_FUNCTION_0_33();
      v23();
      v53 = sub_268B37A34();
      v54 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v54))
      {
        v55 = OUTLINED_FUNCTION_14();
        *v55 = 0;
        _os_log_impl(&dword_2688BB000, v53, v52, "Did not receive valid duration", v55, 2u);
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_4_29();
      v56();
      sub_2688C2ECC();
      v49 = swift_allocError();
      v51 = -127;
      goto LABEL_13;
    }

    v89 = v32;
    OUTLINED_FUNCTION_0_33();
    v23();

    v82 = v19;
    v21 = sub_268B37A34();
    v33 = sub_268B37EC4();

    v80 = v33;
    v85 = v21;
    if (os_log_type_enabled(v21, v33))
    {
      v34 = swift_slowAlloc();
      v79 = v22;
      v35 = v34;
      v78 = swift_slowAlloc();
      v90 = v78;
      *v35 = 136315138;
      v36 = type metadata accessor for Device();
      v37 = MEMORY[0x26D6256F0](v29, v36);
      v39 = v23;
      v40 = v7;
      v41 = sub_26892CDB8(v37, v38, &v90);

      *(v35 + 4) = v41;
      v7 = v40;
      v23 = v39;
      v21 = v85;
      _os_log_impl(&dword_2688BB000, v85, v80, "Confirming devices: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      v42 = v89;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      OUTLINED_FUNCTION_4_29();
      v43();
    }

    else
    {

      OUTLINED_FUNCTION_4_29();
      v57();
      v42 = v89;
    }

    v58 = [v42 direction];
    if (v58 == 1)
    {
      LODWORD(v86) = 1;
      goto LABEL_23;
    }

    if (v58 != 2)
    {
      break;
    }

    LODWORD(v86) = 0;
LABEL_23:
    v19 = 0;
    v9 = (v29 & 0xFFFFFFFFFFFFFF8);
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31 == v19)
      {

        v69 = *(v83 + 56);
        sub_268AB7914(v59, v86, v88, v87);

        return;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x26D625BD0](v19, v29);
      }

      else
      {
        if (v19 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v60 = *(v29 + 8 * v19 + 32);
      }

      v8 = v60;
      v61 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v62 = sub_268988580(v60);
      if (v63)
      {
        v21 = v62;
        v7 = v63;

        goto LABEL_33;
      }

      v21 = sub_268988568(v8);
      v7 = v64;

      ++v19;
      if (v7)
      {
LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = *(v59 + 16);
          sub_2689876A4();
          v59 = v67;
        }

        v8 = *(v59 + 16);
        if (v8 >= *(v59 + 24) >> 1)
        {
          sub_2689876A4();
          v59 = v68;
        }

        *(v59 + 16) = v8 + 1;
        v65 = v59 + 16 * v8;
        *(v65 + 32) = v21;
        *(v65 + 40) = v7;
        v19 = v61;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  OUTLINED_FUNCTION_0_33();
  v23();
  v70 = sub_268B37A34();
  v71 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v71))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v72, v73, "Unexpected skip time direction");
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_4_29();
  v74();
  sub_2688C2ECC();
  v75 = swift_allocError();
  OUTLINED_FUNCTION_1_42(v75, v76, 130);
  v88(v7);

LABEL_14:
  sub_268919854(v7);
}

void sub_268A3FAB4()
{
  type metadata accessor for SkipTimeConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A3FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A3FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SkipTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A3FC84(uint64_t a1)
{
  result = sub_268A3FCAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A3FCAC()
{
  result = qword_2802A77B8;
  if (!qword_2802A77B8)
  {
    type metadata accessor for SkipTimeConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_42@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *v3 = a1;
  v6 = *(v4 - 120);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268A3FD3C@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v98 = v4;
  v99 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v96 = v7 - v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v95 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v94 - v13;
  v15 = sub_268B35524();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v101 = sub_268B355B4();
  v24 = OUTLINED_FUNCTION_1(v101);
  v94 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v30 = (v29 - v28);
  v97 = sub_268B354E4();
  v31 = OUTLINED_FUNCTION_1(v97);
  v100 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  v38 = sub_268B35494();
  v39 = OUTLINED_FUNCTION_1(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  v46 = (v45 - v44);
  (*(v41 + 16))(v45 - v44, v1, v38);
  v47 = *(v41 + 88);
  v48 = OUTLINED_FUNCTION_13_14();
  v50 = v49(v48);
  if (v50 == *MEMORY[0x277D5C148])
  {
    v51 = *(v41 + 96);
    v52 = OUTLINED_FUNCTION_13_14();
    v53(v52);
    v54 = *v46;
    sub_2689F8B1C();
    if (v55)
    {
      v56 = v55;
      v57 = v102;
      sub_268B36BA4();

      v58 = v57;
      v59 = 0;
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v77 = v99;
      OUTLINED_FUNCTION_82(v99, qword_2802CDA10);
      v78 = v98;
      v79 = v96;
      (*(v98 + 16))(v96);
      v80 = v54;
      v81 = sub_268B37A34();
      v82 = sub_268B37EE4();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v103 = v84;
        *v83 = 136315138;
        v85 = sub_268B36BC4();
        v86 = sub_268B36BB4();
        v87 = MEMORY[0x26D6256F0](v85, v86);
        v89 = v88;

        v90 = sub_26892CDB8(v87, v89, &v103);

        *(v83 + 4) = v90;
        _os_log_impl(&dword_2688BB000, v81, v82, "Parse-Extension#firstUsoTask PommesResponse doesn't contain audioExperience %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v84);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        (*(v78 + 8))(v96, v77);
      }

      else
      {

        (*(v78 + 8))(v79, v77);
      }

      v58 = v102;
      v59 = 1;
    }

    v93 = v101;
  }

  else
  {
    if (v50 != *MEMORY[0x277D5C160])
    {
      __swift_storeEnumTagSinglePayload(v102, 1, 1, v101);
      v73 = *(v41 + 8);
      v74 = OUTLINED_FUNCTION_13_14();
      return v75(v74);
    }

    v60 = *(v41 + 96);
    v61 = OUTLINED_FUNCTION_13_14();
    v62(v61);
    v63 = v100;
    v64 = v97;
    (*(v100 + 32))(v37, v46, v97);
    sub_268B354D4();
    v65 = sub_268B35514();
    (*(v18 + 8))(v23, v15);
    sub_2689A9934(v65, v14);

    v66 = v101;
    if (__swift_getEnumTagSinglePayload(v14, 1, v101) == 1)
    {
      sub_2688EF38C(v14, &qword_2802A5E08, &unk_268B3D910);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v67 = v99;
      OUTLINED_FUNCTION_82(v99, qword_2802CDA10);
      v68 = v98;
      v69 = v95;
      (*(v98 + 16))(v95);
      v70 = sub_268B37A34();
      v71 = sub_268B37F04();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = OUTLINED_FUNCTION_14();
        *v72 = 0;
        _os_log_impl(&dword_2688BB000, v70, v71, "Parse-Extension#firstUserDialogAct No user dialog act found in userParse.", v72, 2u);
        v64 = v97;
        OUTLINED_FUNCTION_12();
      }

      (*(v68 + 8))(v69, v67);
      (*(v100 + 8))(v37, v64);
      v58 = v102;
      v59 = 1;
    }

    else
    {
      (*(v63 + 8))(v37, v64);
      v91 = *(v94 + 32);
      v91(v30, v14, v66);
      v92 = v102;
      v91(v102, v30, v66);
      v58 = v92;
      v59 = 0;
    }

    v93 = v66;
  }

  return __swift_storeEnumTagSinglePayload(v58, v59, 1, v93);
}

uint64_t sub_268A40454()
{
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v61 = v3;
  v62 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v59 = v6 - v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v58 = &v56 - v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v57 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - v14;
  v16 = sub_268B355B4();
  v17 = OUTLINED_FUNCTION_1(v16);
  v60 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = sub_268B35494();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v32 = v31 - v30;
  (*(v27 + 16))(v31 - v30, v0, v24);
  v33 = (*(v27 + 88))(v32, v24);
  v34 = *MEMORY[0x277D5C148];
  v35 = *MEMORY[0x277D5C160];
  (*(v27 + 8))(v32, v24);
  v36 = 0;
  if (v33 != v34 && v33 != v35)
  {
    return v36;
  }

  sub_268A3FD3C(v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_2688EF38C(v15, &qword_2802A5E08, &unk_268B3D910);
    v39 = v61;
    v38 = v62;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v38, qword_2802CDA10);
    v40 = v59;
    (*(v39 + 16))(v59);
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_14();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "Parse-Extension#firstUsoTask No user dialog act found in userParse.", v43, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v39 + 8))(v40, v38);
    return 0;
  }

  v44 = v16;
  v45 = v60;
  (*(v60 + 32))(v23, v15, v44);
  v46 = sub_268B356A4();
  v48 = v61;
  v47 = v62;
  v50 = v46;
  if (!sub_2688EFD0C(v46))
  {

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v47, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v51 = v57;
    v52(v57);
    v53 = sub_268B37A34();
    v54 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v54))
    {
      v55 = OUTLINED_FUNCTION_14();
      *v55 = 0;
      _os_log_impl(&dword_2688BB000, v53, OS_LOG_TYPE_DEFAULT, "Parse-Extension#firstUsoTask No tasks found in input", v55, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v48 + 8))(v51, v47);
    (*(v45 + 8))(v23, v44);
    return 0;
  }

  sub_2688EFD10(0, (v50 & 0xC000000000000001) == 0, v50);
  if ((v50 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x26D625BD0](0, v50);
  }

  else
  {
    v36 = *(v50 + 32);
  }

  (*(v45 + 8))(v23, v44);
  return v36;
}

uint64_t sub_268A409F0()
{
  v1 = v0;
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v89 = v4;
  v90 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v85 = v7 - v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v84 = &v81 - v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v83 = &v81 - v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v86 = &v81 - v14;
  v15 = sub_268B35494();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v81 - v25;
  v27 = sub_268B35474();
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v35 = v34 - v33;
  v87 = *(v18 + 16);
  v88 = v1;
  v87(v26, v1, v15);
  v36 = *(v18 + 88);
  if (v36(v26, v15) == *MEMORY[0x277D5C150])
  {
    (*(v18 + 96))(v26, v15);
    v37 = *(v30 + 32);
    v82 = v27;
    v37(v35, v26, v27);
    v81 = v35;
    if (sub_268B35454() == 0xD00000000000003ALL && 0x8000000268B5A120 == v38)
    {
    }

    else
    {
      v40 = sub_268B38444();

      if ((v40 & 1) == 0)
      {
        (*(v30 + 8))(v81, v82);
        v41 = v90;
        goto LABEL_9;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v62 = v90;
    OUTLINED_FUNCTION_82(v90, qword_2802CDA10);
    v63 = v89;
    v64 = v86;
    (*(v89 + 16))(v86);
    v65 = sub_268B37A34();
    v66 = sub_268B37F04();
    v67 = OUTLINED_FUNCTION_115_0(v66);
    v69 = v81;
    v68 = v82;
    if (v67)
    {
      v70 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v70);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v71, v72, "Parse-Extension#isQuickStopParse Parse is QuickStop direct invocation, returning true");
      OUTLINED_FUNCTION_6();
    }

    (*(v63 + 8))(v64, v62);
    (*(v30 + 8))(v69, v68);
    return 1;
  }

  v41 = v90;
  (*(v18 + 8))(v26, v15);
LABEL_9:
  v87(v23, v88, v15);
  v42 = v36(v23, v15);
  v43 = *MEMORY[0x277D5C160];
  (*(v18 + 8))(v23, v15);
  if (v42 != v43)
  {
    v54 = v89;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v41, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v55 = v85;
    v56(v85);
    v57 = sub_268B37A34();
    v58 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v58))
    {
      v59 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v59);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v60, v61, "Parse-Extension#isQuickStopParse Parse type is not a valid QuickStop parse");
      OUTLINED_FUNCTION_6();
    }

    (*(v54 + 8))(v55, v41);
    return 0;
  }

  if ((sub_268A4118C() & 1) == 0)
  {
    result = sub_268A40454();
    if (!result)
    {
      return result;
    }

    sub_268B35DC4();
    if (v93)
    {
      sub_2688EF2B0(&v92, v94);
      sub_2688EF2C0(v94, &v92);
      sub_268B35E74();
      if (swift_dynamicCast())
      {
        *&v92 = v91;
        sub_268A41424();
        v45 = sub_268B37834();
        v46 = v84;
        if (v45)
        {
LABEL_18:
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_82(v41, qword_2802CDA10);
          (*(v89 + 16))(v46);
          v47 = sub_268B37A34();
          v48 = sub_268B37F04();
          if (OUTLINED_FUNCTION_115_0(v48))
          {
            v49 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_10(v49);
            OUTLINED_FUNCTION_7(&dword_2688BB000, v50, v51, "Parse-Extension#isQuickStopParse Parse is not a valid QuickStop parse");
            OUTLINED_FUNCTION_6();
          }

          v52 = OUTLINED_FUNCTION_12_19();
          v53(v52);
          __swift_destroy_boxed_opaque_existential_0Tm(v94);
          return 0;
        }

        if (sub_268B36304() || sub_268B362E4())
        {

          goto LABEL_18;
        }

        v73 = sub_268B362F4();

        if (v73)
        {

          goto LABEL_18;
        }

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v41, qword_2802CDA10);
        (*(v89 + 16))(v83);
        v74 = sub_268B37A34();
        v75 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v75))
        {
          v76 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v76);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v77, v78, "Parse-Extension#isQuickStopParse Parse is Quickstop uso parse, returning true");
          OUTLINED_FUNCTION_6();
        }

        v79 = OUTLINED_FUNCTION_12_19();
        v80(v79);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        return 1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v94);
    }

    else
    {

      sub_2688EF38C(&v92, &byte_2802A6450, &byte_268B3BE10);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_268A4118C()
{
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  result = sub_268A40454();
  if (!result)
  {
    return result;
  }

  sub_268B35DC4();
  if (!v15)
  {

    sub_2688EF38C(&v14, &byte_2802A6450, &byte_268B3BE10);
    return 0;
  }

  sub_2688EF2B0(&v14, v16);
  sub_2688EF2C0(v16, &v14);
  sub_268B360C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    return 0;
  }

  sub_268B36334();
  if (v14)
  {

LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    return 0;
  }

  v10 = sub_268B36324();

  if (v10)
  {

    goto LABEL_10;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v0, qword_2802CDA10);
  (*(v3 + 16))(v8);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_14();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "Parse-Extension#isTurnOff Parse is Turn off, returning true", v13, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v8, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return 1;
}

unint64_t sub_268A41424()
{
  result = qword_2802A77C0;
  if (!qword_2802A77C0)
  {
    sub_268B35E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77C0);
  }

  return result;
}

id sub_268A4149C()
{
  result = [objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentHandler()) init];
  qword_2802CD9B8 = result;
  return result;
}

uint64_t sub_268A414D0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_268B35494();
  v1 = OUTLINED_FUNCTION_1(v34);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v33 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v32 = *(v12 + 16);
  v32(v18, v19, v9);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    v31 = v3;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetVolumeLevelFlowStrategy#actionForInput called", v22, 2u);
    v3 = v31;
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v23(v18, v9);
  sub_268B35414();
  v24 = sub_268982FF8(v8);
  (*(v3 + 8))(v8, v34);
  if (v24)
  {
    return sub_268B34EC4();
  }

  v26 = v33;
  v32(v33, v19, v9);
  v27 = sub_268B37A34();
  v28 = sub_268B37EE4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetVolumeLevelFlowStrategy#actionForInput unable to create SettingsIntent from parse", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23(v26, v9);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_4_10();
  return sub_268B34ED4();
}

void sub_268A417EC(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v60 = a1;
  v61 = a3;
  v6 = sub_268B35494();
  v7 = OUTLINED_FUNCTION_1(v6);
  v58 = v8;
  v59 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v57 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v50 - v15;
  v56 = type metadata accessor for SettingsIntent();
  v17 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v54 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v50 - v29;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v31 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v52 = *(v24 + 16);
  v53 = v31;
  v52(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    v51 = v24;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SetVolumeLevelFlowStrategy#makeIntentFromParse called", v34, 2u);
    v24 = v51;
    OUTLINED_FUNCTION_12();
  }

  v35 = *(v24 + 8);
  v35(v30, v21);
  v36 = v57;
  (*(v58 + 16))(v57, v60, v59);
  sub_26897BBA8(v36, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v56) == 1)
  {
    sub_26891E52C(v16);
    v37 = v54;
    (v52)(v54, v53, v21);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_14();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "SetVolumeLevelFlowStrategy#makeIntentFromParse unable to create SettingsIntent from parse", v40, 2u);
      OUTLINED_FUNCTION_12();
    }

    v35(v37, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_43();
    OUTLINED_FUNCTION_4_10();
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = 102;
    v61(v41, 1);
  }

  else
  {
    sub_26891E594(v16, v20);
    if (a2)
    {
      v43 = a2;
    }

    else
    {
      v43 = [objc_allocWithZone(type metadata accessor for SetVolumeLevelIntent()) init];
    }

    v44 = a2;
    sub_268A8242C(v20);
    v45 = v55;
    v46 = v55[5];
    v47 = v55[6];
    __swift_project_boxed_opaque_existential_1(v55 + 2, v46);
    v48 = swift_allocObject();
    v48[2] = v61;
    v48[3] = a4;
    v48[4] = v43;
    v49 = v43;

    sub_268AD35F4(v49, &off_287953C08, (v45 + 7), sub_268A4258C, v48, v46, v47);

    sub_26891E5F8(v20);
  }
}

uint64_t sub_268A41CD0(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SetVolumeLevelFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A41E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3C5A0;
  v1 = sub_268B34BB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_268B34BA4();
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_268B34BA4();
  return v0;
}

uint64_t sub_268A41FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

id sub_268A42050()
{
  if (qword_2802A4ED8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9B8;

  return v1;
}

uint64_t sub_268A420AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A42118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A42184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A421F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A42240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A42294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A42300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A42494(uint64_t a1)
{
  result = sub_268A4250C(&qword_2802A77D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4250C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SetVolumeLevelFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4254C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A425C8()
{
  result = [v0 mediaType];
  if (result)
  {
    if ([v0 reference] || objc_msgSend(v0, sel_sortOrder))
    {
      return 0;
    }

    sub_2688EF000(v0, &selRef_albumName);
    if (v2)
    {
      goto LABEL_6;
    }

    sub_2688EF000(v0, &selRef_mediaName);
    if (v3)
    {
      goto LABEL_6;
    }

    if (sub_2689452B0(v0, &selRef_genreNames))
    {

      result = sub_2689452B0(v0, &selRef_genreNames);
      if (!result)
      {
        return result;
      }

      v4 = *(result + 16);

      if (v4)
      {
        return 0;
      }
    }

    sub_2688EF000(v0, &selRef_artistName);
    if (v5)
    {
LABEL_6:

      return 0;
    }

    if (!sub_2689452B0(v0, &selRef_moodNames))
    {
LABEL_16:
      v7 = [v0 releaseDate];
      if (v7)
      {

        return 0;
      }

      sub_2688EF000(v0, &selRef_mediaIdentifier);
      if (!v8)
      {
        return 1;
      }

      goto LABEL_6;
    }

    result = sub_2689452B0(v0, &selRef_moodNames);
    if (result)
    {
      v6 = *(result + 16);

      if (v6)
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_268A4271C(void *a1)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = [a1 isDeviceSelectedUsingContext];
  sub_2688C063C();
  v12 = sub_268B38054();
  if (v11)
  {
    v36 = v12;
    v13 = sub_268B38074();

    if (v13)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      (*(v5 + 16))(v10);
      v14 = sub_268B37A34();
      v15 = sub_268B37F04();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_14();
        *v16 = 0;
        _os_log_impl(&dword_2688BB000, v14, v15, "Updating parameters for Volume control", v16, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v5 + 8))(v10, v2);
      v18 = sub_268A34F08();
      if (*(v17 + 16) == 1)
      {
        v19 = OUTLINED_FUNCTION_22_15();
        (v18)(v19);
      }

      else
      {
        v20 = v17;
        v21 = sub_268988580(a1);
        if (!v22)
        {
          v21 = sub_268988568(a1);
        }

        v23 = *(v20 + 48);
        *(v20 + 40) = v21;
        *(v20 + 48) = v22;

        v24 = OUTLINED_FUNCTION_22_15();
        (v18)(v24);
      }

      v26 = sub_268A34F08();
      if (*(v25 + 16) == 1)
      {
        v27 = OUTLINED_FUNCTION_22_15();
        (v26)(v27);
      }

      else
      {
        v28 = v25;
        v29 = [a1 name];
        if (v29)
        {
          v30 = v29;
          v31 = sub_268B37BF4();
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0;
        }

        v34 = *(v28 + 16);
        *(v28 + 8) = v31;
        *(v28 + 16) = v33;

        v35 = OUTLINED_FUNCTION_22_15();
        (v26)(v35);
      }
    }
  }

  else
  {

    MEMORY[0x2821F96F8](v12, v12);
  }
}

void sub_268A42A30(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 isDeviceSelectedUsingContext];
  sub_2688C063C();
  v8 = sub_268B38054();
  if (v7)
  {
    v30 = v8;
    v9 = sub_268B38074();

    if (v9)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(v2, qword_2802CDA10);
      (*(v3 + 16))(v6, v10, v2);
      v11 = sub_268B37A34();
      v12 = sub_268B37F04();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2688BB000, v11, v12, "Updating parameters for Volume control", v13, 2u);
        MEMORY[0x26D6266E0](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v15 = sub_268A33A30();
      if (*(v14 + 16) == 1)
      {
        (v15)(v31, 0);
      }

      else
      {
        v16 = v14;
        v17 = sub_268988580(a1);
        if (!v18)
        {
          v17 = sub_268988568(a1);
        }

        v19 = *(v16 + 48);
        *(v16 + 40) = v17;
        *(v16 + 48) = v18;

        (v15)(v31, 0);
      }

      v21 = sub_268A33A30();
      if (*(v20 + 16) == 1)
      {
        (v21)(v31, 0);
      }

      else
      {
        v22 = v20;
        v23 = [a1 name];
        if (v23)
        {
          v24 = v23;
          v25 = sub_268B37BF4();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = *(v22 + 16);
        *(v22 + 8) = v25;
        *(v22 + 16) = v27;

        (v21)(v31, 0);
      }
    }
  }

  else
  {

    MEMORY[0x2821F96F8](v8, v8);
  }
}

id sub_268A42D8C()
{
  if (qword_2802A4DF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD948;
  qword_2802CD9C0 = qword_2802CD948;

  return v1;
}

void sub_268A42DF0()
{
  OUTLINED_FUNCTION_26();
  v169 = v0;
  v170 = v1;
  v174 = v2;
  v4 = v3;
  v6 = v5;
  v176 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v167 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_78();
  v161 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v158 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v166 = &v153 - v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v155 = &v153 - v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_78();
  v160 = v25;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B34E24();
  v27 = OUTLINED_FUNCTION_1(v26);
  v168 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v165 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_78();
  v159 = v33;
  OUTLINED_FUNCTION_9();
  v34 = sub_268B35044();
  v35 = OUTLINED_FUNCTION_1(v34);
  v172 = v36;
  v173 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v177 = v40 - v39;
  OUTLINED_FUNCTION_9();
  v41 = sub_268B37A54();
  v42 = OUTLINED_FUNCTION_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v157 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  v156 = &v153 - v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  v52 = &v153 - v51;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    OUTLINED_FUNCTION_82(v41, qword_2802CDA10);
    v53 = OUTLINED_FUNCTION_139(v44);
    v162 = v54;
    v163 = v55;
    v164 = v56;
    (v55)(v53);
    v57 = v6;
    v58 = sub_268B37A34();
    v59 = sub_268B37ED4();
    v175 = v41;
    v60 = v59;

    v61 = os_log_type_enabled(v58, v60);
    v171 = v4;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v181[0] = v154;
      *v62 = 136315138;
      v179[0] = [v57 currentVolumeLevel];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC8, &unk_268B3D780);
      v63 = sub_268B37C24();
      v65 = sub_26892CDB8(v63, v64, v181);

      *(v62 + 4) = v65;
      _os_log_impl(&dword_2688BB000, v58, v60, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse called with current volume level: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v154);
      OUTLINED_FUNCTION_12();
      v4 = v171;
      OUTLINED_FUNCTION_12();
    }

    v66 = *(v44 + 8);
    v67 = v175;
    v66(v52, v175);
    v68 = v176;
    sub_268A82B50(v176, v177);
    v69 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
    swift_beginAccess();
    if (*&v57[v69] == 100)
    {
      v70 = v68;
      v71 = swift_allocObject();
      v72 = v169;
      v73 = v170;
      v71[2] = v169;
      v71[3] = v70;
      v71[4] = v57;
      v71[5] = v73;
      v74 = v174;
      v71[6] = v4;
      v71[7] = v74;
      v75 = v72[5];
      v76 = v72[6];
      __swift_project_boxed_opaque_existential_1(v72 + 2, v75);
      v77 = v57;

      v78 = v70;

      sub_2689CE88C(0xD00000000000001FLL, 0x8000000268B588C0, sub_268A49278, v71, v75, v76);

LABEL_42:
      (*(v172 + 8))(v177, v173);
      goto LABEL_43;
    }

    v79 = [v68 device];
    if (!v79)
    {
      v90 = v157;
      v163(v157, v162, v67);
      v91 = sub_268B37A34();
      v92 = sub_268B37EE4();
      if (os_log_type_enabled(v91, v92))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v93, v94, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse Did not receive device in intent");
        OUTLINED_FUNCTION_12();
      }

      v66(v90, v67);
      sub_268B36E84();
      if (!v95)
      {
        OUTLINED_FUNCTION_21_14();
        sub_268947F08();
      }

      OUTLINED_FUNCTION_28_17();
      v168[13](v165, *MEMORY[0x277D5BC00], v26);
      v96 = sub_268B350F4();
      v97 = v166;
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v96);
      v101 = *MEMORY[0x277D5B908];
      v102 = sub_268B34B94();
      OUTLINED_FUNCTION_4(v102);
      (*(v103 + 104))(v167, v101, v102);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v102);
      v107.isa = v91->isa;
      v108 = v97;
      v109 = v158;
      sub_2688F1FA4(v108, v158, &unk_2802A57B0, &unk_268B3CE00);
      if (__swift_getEnumTagSinglePayload(v109, 1, v96) == 1)
      {
        sub_2688C058C(v109, &unk_2802A57B0, &unk_268B3CE00);
      }

      else
      {
        sub_268B350B4();
        OUTLINED_FUNCTION_16_25();
        (*(v130 + 8))(v109, v96);
      }

      OUTLINED_FUNCTION_10_21();
      v131 = v167;
      sub_2688E3F08();

      sub_2688C058C(v131, &unk_2802A62B0, &unk_268B3BDF0);
      sub_2688C058C(v166, &unk_2802A57B0, &unk_268B3CE00);
      v132 = OUTLINED_FUNCTION_23_16();
      v133(v132);
      sub_2688C2ECC();
      v134 = swift_allocError();
      v136 = OUTLINED_FUNCTION_8_21(v134, v135, 24);
      v137(v136);
      goto LABEL_41;
    }

    v80 = v79;
    v81 = [v57 currentVolumeLevel];
    if (!v81)
    {
      v110 = v156;
      v163(v156, v162, v67);
      v111 = sub_268B37A34();
      v112 = sub_268B37EE4();
      if (os_log_type_enabled(v111, v112))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v113, v114, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse Did not receive the volume level");
        v110 = v156;
        OUTLINED_FUNCTION_12();
      }

      v66(v110, v67);
      sub_268B36E84();
      v175 = v80;
      if (!v115)
      {
        OUTLINED_FUNCTION_21_14();
        sub_268947F08();
      }

      OUTLINED_FUNCTION_28_17();
      v168[13](v159, *MEMORY[0x277D5BC00], v26);
      v116 = sub_268B350F4();
      v117 = v160;
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v116);
      v121 = *MEMORY[0x277D5B908];
      v122 = sub_268B34B94();
      OUTLINED_FUNCTION_4(v122);
      (*(v123 + 104))(v161, v121, v122);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v122);
      v127.isa = v111->isa;
      v128 = v117;
      v129 = v155;
      sub_2688F1FA4(v128, v155, &unk_2802A57B0, &unk_268B3CE00);
      if (__swift_getEnumTagSinglePayload(v129, 1, v116) == 1)
      {
        sub_2688C058C(v129, &unk_2802A57B0, &unk_268B3CE00);
      }

      else
      {
        sub_268B350B4();
        OUTLINED_FUNCTION_16_25();
        (*(v145 + 8))(v129, v116);
      }

      OUTLINED_FUNCTION_10_21();
      v146 = v161;
      sub_2688E3F08();

      sub_2688C058C(v146, &unk_2802A62B0, &unk_268B3BDF0);
      sub_2688C058C(v160, &unk_2802A57B0, &unk_268B3CE00);
      v147 = OUTLINED_FUNCTION_23_16();
      v148(v147);
      sub_2688C2ECC();
      v149 = swift_allocError();
      v151 = OUTLINED_FUNCTION_8_21(v149, v150, 25);
      v152(v151);

LABEL_41:
      sub_2688C058C(v181, &unk_2802A57C0, &qword_268B3BE00);
      goto LABEL_42;
    }

    v82 = v81;
    [v81 doubleValue];
    v84 = round(v83);
    if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v84 <= -9.22337204e18)
    {
      goto LABEL_48;
    }

    v168 = v82;
    if (v84 >= 9.22337204e18)
    {
      goto LABEL_49;
    }

    sub_268A32E28(v84, v179);
    memcpy(v180, &v179[2], 0x51uLL);
    sub_2688C058C(v180, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v179[2]) = 0;
    memset(&v179[3], 0, 72);
    LOBYTE(v179[12]) = 1;
    sub_268A42A30(v80);
    v52 = v176;
    v85 = sub_268B1CC90();
    if (!v85)
    {
LABEL_38:
      memcpy(v181, v179, 0x62uLL);
      v138 = swift_allocObject();
      v139 = v170;
      v138[2] = v169;
      v138[3] = v52;
      v138[4] = v57;
      v138[5] = v139;
      v140 = v57;
      v141 = v52;
      v142 = v174;
      v138[6] = v171;
      v138[7] = v142;
      v143 = v140;

      v144 = v141;

      sub_268A33A50(v181);

      (*(v172 + 8))(v177, v173);
      memcpy(v178, v179, 0x62uLL);
      sub_268A35710(v178);
LABEL_43:
      OUTLINED_FUNCTION_23();
      return;
    }

    v41 = v85;
    v175 = v80;
    v167 = v57;
    v4 = sub_2688EFD0C(v85);
    v86 = 0;
    v44 = v41 & 0xC000000000000001;
    v6 = (v41 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v4 == v86)
      {
        goto LABEL_37;
      }

      if (v44)
      {
        v87 = MEMORY[0x26D625BD0](v86, v41);
      }

      else
      {
        if (v86 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v87 = *(v41 + 8 * v86 + 32);
      }

      v88 = v87;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      v181[0] = v87;
      v26 = type metadata accessor for DeviceQuery();
      sub_268A491D4(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery);
      sub_268B37684();
      v52 = v89;

      if (v52)
      {

LABEL_37:

        BYTE1(v179[12]) = v4 != v86;
        v80 = v175;
        v52 = v176;
        v57 = v167;
        goto LABEL_38;
      }

      ++v86;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_0_0();
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_268A43B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v71 = a3;
  v72 = a5;
  v66 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v61 - v16;
  v70 = sub_268B34E24();
  v68 = *(v70 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_268B37A54();
  v62 = *(v63 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v61 - v31);
  sub_2688F1FA4(a1, &v61 - v31, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = a2;
    v33 = *v32;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = v63;
    v35 = __swift_project_value_buffer(v63, qword_2802CDA10);
    v36 = v62;
    (*(v62 + 16))(v21, v35, v34);
    v37 = v33;
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v33;
      v76[0] = v41;
      *v40 = 136446210;
      v42 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v43 = sub_268B37C24();
      v45 = sub_26892CDB8(v43, v44, v76);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2688BB000, v38, v39, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse An error occurred in generating the dialog for GetVolumeLevel: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x26D6266E0](v41, -1, -1);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v36 + 8))(v21, v34);
    v46 = v65;
    sub_268B36E84();
    if (!v47)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v53 = __swift_project_boxed_opaque_existential_1(v61 + 12, v61[15]);
    (*(v68 + 104))(v67, *MEMORY[0x277D5BC00], v70);
    v54 = sub_268B350F4();
    v55 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v54);
    v56 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v56);
    v57 = *v53;
    v58 = v64;
    sub_2688F1FA4(v55, v64, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v54) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v54 - 8) + 8))(v58, v54);
    }

    v59 = v67;
    sub_2688E3F08();

    sub_2688C058C(v46, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v69, &unk_2802A57B0, &unk_268B3CE00);
    (*(v68 + 8))(v59, v70);
    v76[0] = v33;
    v77 = 1;
    v60 = v33;
    v73(v76);

    return sub_2688C058C(v76, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v32, v28);
    v48 = a2[26];
    __swift_project_boxed_opaque_existential_1(a2 + 22, a2[25]);
    v49 = sub_268B36FA4();
    sub_2688F1FA4(v28, v26, &unk_2802A56E0, &unk_268B3CDF0);
    v50 = *&v26[*(v22 + 48)];
    if (v49)
    {
      sub_268A44B4C();
    }

    else
    {
      sub_268A45380();
    }

    sub_2688C058C(v28, &unk_2802A56E0, &unk_268B3CDF0);
    v51 = sub_268B350F4();
    return (*(*(v51 - 8) + 8))(v26, v51);
  }
}

uint64_t sub_268A4436C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v71 = a3;
  v72 = a5;
  v66 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v61 - v16;
  v70 = sub_268B34E24();
  v68 = *(v70 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_268B37A54();
  v62 = *(v63 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v61 - v31);
  sub_2688F1FA4(a1, &v61 - v31, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = a2;
    v33 = *v32;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = v63;
    v35 = __swift_project_value_buffer(v63, qword_2802CDA10);
    v36 = v62;
    (*(v62 + 16))(v21, v35, v34);
    v37 = v33;
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v33;
      v76[0] = v41;
      *v40 = 136446210;
      v42 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v43 = sub_268B37C24();
      v45 = sub_26892CDB8(v43, v44, v76);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2688BB000, v38, v39, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse An error occurred in generating the dialog for GetVolumeLevel: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x26D6266E0](v41, -1, -1);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v36 + 8))(v21, v34);
    v46 = v65;
    sub_268B36E84();
    if (!v47)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v53 = __swift_project_boxed_opaque_existential_1(v61 + 12, v61[15]);
    (*(v68 + 104))(v67, *MEMORY[0x277D5BC00], v70);
    v54 = sub_268B350F4();
    v55 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v54);
    v56 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v56);
    v57 = *v53;
    v58 = v64;
    sub_2688F1FA4(v55, v64, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v54) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v54 - 8) + 8))(v58, v54);
    }

    v59 = v67;
    sub_2688E3F08();

    sub_2688C058C(v46, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v69, &unk_2802A57B0, &unk_268B3CE00);
    (*(v68 + 8))(v59, v70);
    v76[0] = v33;
    v77 = 1;
    v60 = v33;
    v73(v76);

    return sub_2688C058C(v76, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v32, v28);
    v48 = a2[26];
    __swift_project_boxed_opaque_existential_1(a2 + 22, a2[25]);
    v49 = sub_268B36FA4();
    sub_2688F1FA4(v28, v26, &unk_2802A56E0, &unk_268B3CDF0);
    v50 = *&v26[*(v22 + 48)];
    if (v49)
    {
      sub_268A45B98();
    }

    else
    {
      sub_268A467BC();
    }

    sub_2688C058C(v28, &unk_2802A56E0, &unk_268B3CDF0);
    v51 = sub_268B350F4();
    return (*(*(v51 - 8) + 8))(v26, v51);
  }
}

void sub_268A44B4C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v113 = v2;
  v114 = v3;
  v107 = v4;
  v103 = v5;
  v122 = v6;
  v123 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v112 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v106 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v110 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_78();
  v118 = v26;
  OUTLINED_FUNCTION_9();
  v119 = sub_268B34E24();
  v27 = OUTLINED_FUNCTION_1(v119);
  v117 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v116 = v32 - v31;
  OUTLINED_FUNCTION_9();
  v33 = sub_268B37A54();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v108 = v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  v42 = &v101 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v111 = v47;
  OUTLINED_FUNCTION_8();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v101 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v101 - v52;
  v54 = sub_268B350F4();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v53, v122, v54);
  v120 = v43;
  v56 = *(v43 + 48);
  v122 = v53;
  *&v53[v56] = v9;
  v57 = qword_2802A4F30;
  v58 = v9;
  if (v57 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v33, qword_2802CDA10);
  v59 = *(v36 + 16);
  v105 = v60;
  v121 = v33;
  v104 = v59;
  (v59)(v42);
  v61 = sub_268B37A34();
  v62 = sub_268B37ED4();
  v63 = os_log_type_enabled(v61, v62);
  v115 = v55;
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_14();
    *v64 = 0;
    _os_log_impl(&dword_2688BB000, v61, v62, "GetVolumeLevelHandleIntentStrategy#intentNothingIsPlayingResponse...", v64, 2u);
    v55 = v115;
    OUTLINED_FUNCTION_12();
  }

  v65 = *(v36 + 8);
  v109 = v36 + 8;
  v102 = v65;
  v65(v42, v121);
  v66 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  v67 = v103;
  OUTLINED_FUNCTION_22_12();
  v124 = *(v67 + v66);
  sub_268B38404();
  OUTLINED_FUNCTION_21_14();
  sub_268947F08();
  v103 = v68;

  v69 = __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  (*(v117 + 104))(v116, *MEMORY[0x277D5BC10], v119);
  sub_2688F1FA4(v122, v51, &unk_2802A56E0, &unk_268B3CDF0);

  v70 = v118;
  (*(v55 + 32))(v118, v51, v54);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v54);
  sub_268B34B94();
  v74 = v106;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  v79 = *v69;
  v80 = v70;
  v81 = v110;
  sub_2688F1FA4(v80, v110, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v81, 1, v54) == 1)
  {
    sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v55 + 8))(v81, v54);
  }

  v110 = v54;
  v82 = v116;
  v83 = v123;
  sub_2688E3F08();

  sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
  (*(v117 + 8))(v82, v119);
  v84 = *__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v85 = *__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_26894B450();
  v86 = v108;
  v87 = v121;
  v104(v108, v105, v121);
  v88 = sub_268B37A34();
  v89 = sub_268B37ED4();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = OUTLINED_FUNCTION_14();
    *v90 = 0;
    _os_log_impl(&dword_2688BB000, v88, v89, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse returning output", v90, 2u);
    OUTLINED_FUNCTION_12();
  }

  v102(v86, v87);
  v91 = v1[35];
  v92 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v91);
  v93 = v122;
  v94 = v111;
  sub_2688F1FA4(v122, v111, &unk_2802A56E0, &unk_268B3CDF0);
  v95 = *(v94 + *(v120 + 48));
  v96 = v112;
  sub_268A82B50(v83, v112);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  (*(v92 + 8))(v94, v95, v96, MEMORY[0x277D84F90], 0, v113, v114, v91, v92);

  sub_2688C058C(v96, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v93, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v115 + 8))(v94, v110);
  OUTLINED_FUNCTION_23();
}

void sub_268A45380()
{
  OUTLINED_FUNCTION_26();
  v101 = v0;
  v102 = v1;
  v103 = v2;
  v95 = v3;
  v92 = v4;
  v96 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v99 = v14;
  OUTLINED_FUNCTION_9();
  v100 = sub_268B35044();
  v15 = OUTLINED_FUNCTION_1(v100);
  v98 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v97 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_74();
  v94 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v93 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_78();
  v106 = v32;
  OUTLINED_FUNCTION_9();
  v107 = sub_268B34E24();
  v33 = OUTLINED_FUNCTION_1(v107);
  v105 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v104 = v38 - v37;
  OUTLINED_FUNCTION_9();
  v39 = sub_268B37A54();
  v40 = OUTLINED_FUNCTION_1(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v53 = &v91 - v52;
  v54 = sub_268B350F4();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v53, v9, v54);
  v56 = *(v45 + 48);
  v108 = v53;
  *&v53[v56] = v7;
  v57 = qword_2802A4F30;
  v58 = v7;
  if (v57 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v39, qword_2802CDA10);
  v59 = OUTLINED_FUNCTION_139(v42);
  v60(v59);
  v61 = sub_268B37A34();
  v62 = sub_268B37ED4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_14();
    *v63 = 0;
    _os_log_impl(&dword_2688BB000, v61, v62, "GetVolumeLevelHandleIntentStrategy#legacyNothingIsPlayingResponse...", v63, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v42 + 8))(v0, v39);
  v64 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  v65 = v92;
  OUTLINED_FUNCTION_22_12();
  v111[0] = *(v65 + v64);
  sub_268B38404();
  OUTLINED_FUNCTION_21_14();
  v66 = v96;
  sub_268947F08();

  v67 = v101;
  v68 = __swift_project_boxed_opaque_existential_1(v101 + 12, v101[15]);
  (*(v105 + 104))(v104, *MEMORY[0x277D5BC10], v107);
  sub_2688F1FA4(v108, v51, &unk_2802A56E0, &unk_268B3CDF0);

  v69 = v106;
  (*(v55 + 32))(v106, v51, v54);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v54);
  sub_268B34B94();
  v73 = v94;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = *v68;
  v79 = v93;
  sub_2688F1FA4(v69, v93, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v79, 1, v54) == 1)
  {
    sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    v92 = v78;
    sub_268B350B4();
    (*(v55 + 8))(v79, v54);
  }

  v80 = v104;
  sub_2688E3F08();

  sub_2688C058C(v73, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v106, &unk_2802A57B0, &unk_268B3CE00);
  (*(v105 + 8))(v80, v107);
  v81 = *__swift_project_boxed_opaque_existential_1(v67 + 12, v67[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v82 = v97;
  sub_268A82B50(v66, v97);
  v111[3] = sub_268B354F4();
  v111[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v111);
  v83 = v67[11];
  __swift_project_boxed_opaque_existential_1(v67 + 7, v67[10]);
  sub_268B34CA4();
  v84 = v98;
  v85 = v99;
  v86 = v100;
  (*(v98 + 16))(v99, v82, v100);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  v90 = v108;
  sub_268B34EF4();
  sub_2688C058C(v109, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v85, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v84 + 8))(v82, v86);
  v112 = 0;
  v103(v111);
  sub_2688C058C(v90, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v111, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_268A45B98()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v79 = v2;
  v80 = v3;
  v78 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B35044();
  v12 = OUTLINED_FUNCTION_1(v11);
  v81 = v13;
  v82 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  *(&v72 + 1) = v17 - v16;
  OUTLINED_FUNCTION_9();
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = OUTLINED_FUNCTION_1(v24);
  v73 = v26;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v74 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_78();
  v77 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v64 - v32;
  v34 = sub_268B350F4();
  v75 = *(v34 - 8);
  v76 = v34;
  (*(v75 + 16))(v33, v10);
  *&v72 = v24;
  v35 = *(v24 + 48);
  v83 = v33;
  *&v33[v35] = v8;
  v36 = qword_2802A4F30;
  v37 = v8;
  if (v36 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v18, qword_2802CDA10);
  v38 = OUTLINED_FUNCTION_139(v21);
  v39(v38);
  v40 = sub_268B37A34();
  v41 = sub_268B37ED4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_14();
    *v42 = 0;
    _os_log_impl(&dword_2688BB000, v40, v41, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse...", v42, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  (*(v21 + 8))(v0, v18);
  v43 = *__swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  if (v43)
  {
    v44 = sub_268B37BC4();
    v71 = [v43 BOOLForKey_];
  }

  else
  {
    v71 = 0;
  }

  sub_26890C900((v1 + 32), v84);
  v67 = v85;
  v68 = v86;
  v69 = __swift_project_boxed_opaque_existential_1(v84, v85);
  v45 = v83;
  v46 = v77;
  sub_2688F1FA4(v83, v77, &unk_2802A56E0, &unk_268B3CDF0);
  *&v72 = *(v46 + *(v72 + 48));
  v47 = sub_2689EEF44(v1[37], 0);
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  v66 = v49;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  v51 = *(&v72 + 1);
  sub_268A82B50(v6, *(&v72 + 1));
  HIDWORD(v65) = sub_2689F0948();
  v52 = v45;
  v53 = v74;
  sub_2688F1FA4(v52, v74, &unk_2802A56E0, &unk_268B3CDF0);
  v54 = v1;
  v55 = (*(v73 + 80) + 40) & ~*(v73 + 80);
  v56 = (v28 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v57[2] = v6;
  v57[3] = v54;
  v57[4] = v79;
  sub_2689186C8(v53, v57 + v55);
  v58 = (v57 + v56);
  v59 = v80;
  *v58 = v78;
  v58[1] = v59;
  v60 = v6;

  LOBYTE(v62) = BYTE4(v65) & 1;
  v61 = v72;
  sub_268A83648(v46, v72, v66, v50, v71, MEMORY[0x277D84F90], v51, (v54 + 17), v62, sub_268A49108, v57, v67, v68, v63, v64, v65, v66, v67, v68, v69, v70, v72, v73, v74);

  (*(v81 + 8))(v51, v82);
  sub_2688C058C(v83, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v75 + 8))(v46, v76);
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A46100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 96), *(v70 + 120));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E3F08();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 96), *(v70 + 120));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

void sub_268A467BC()
{
  OUTLINED_FUNCTION_26();
  v44 = v1;
  v45 = v0;
  v47 = v2;
  v48 = v3;
  v49 = v4;
  v46 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v24 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v24);
  (*(v25 + 16))(v23, v9);
  *&v23[*(v17 + 56)] = v7;
  v26 = qword_2802A4F30;
  v27 = v7;
  if (v26 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  v28 = OUTLINED_FUNCTION_139(v13);
  v29(v28);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_14();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "GetVolumeLevelHandleIntentStrategy#legacyHandledResponse...", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v0, v10);
  sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
  v33 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v34 = (v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v38 = v45;
  v37 = v46;
  v36[2] = v46;
  v36[3] = v38;
  v36[4] = v47;
  sub_2689186C8(v21, v36 + v33);
  v39 = (v36 + v34);
  v41 = v48;
  v40 = v49;
  *v39 = v44;
  v39[1] = v41;
  *(v36 + v35) = v40;
  v42 = v37;

  v43 = v40;
  sub_268A820E0((v38 + 56), sub_268A48F1C);

  sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A46AE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v115 = a8;
  v116 = a7;
  v112 = a6;
  v114 = a5;
  LODWORD(v108) = a2;
  v118 = a1;
  v107 = sub_268B37A54();
  v97 = *(v107 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v102 = &v96 - v14;
  v103 = sub_268B35044();
  v101 = *(v103 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v99 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_268B354F4();
  v104 = *(v105 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v100 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v111 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v96 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v96 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v98 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v110 = (&v96 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v96 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v96 - v38;
  v40 = sub_268B34E24();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v109 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v96 - v46;
  v117 = v41;
  v113 = v45;
  if (v108)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v48 = v107;
    v49 = __swift_project_value_buffer(v107, qword_2802CDA10);
    v50 = v97;
    v51 = v106;
    (*(v97 + 16))(v106, v49, v48);
    v52 = v118;
    v53 = v118;
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    sub_268A48FEC(v52, 1);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119 = v52;
      *&v120 = v57;
      *v56 = 136446210;
      v58 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v59 = sub_268B37C24();
      v61 = sub_26892CDB8(v59, v60, &v120);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_2688BB000, v54, v55, "GetVolumeLevelHandleIntentStrategy#legacyHandledResponse Failed to make views with error: %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x26D6266E0](v57, -1, -1);
      MEMORY[0x26D6266E0](v56, -1, -1);

      (*(v50 + 8))(v106, v107);
    }

    else
    {

      (*(v50 + 8))(v51, v48);
    }

    v70 = v117;
    sub_268B36E84();
    v72 = v118;
    if (!v71)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v85 = __swift_project_boxed_opaque_existential_1((a4 + 96), *(a4 + 120));
    v86 = v113;
    (*(v70 + 104))(v109, *MEMORY[0x277D5BC00], v113);
    v87 = sub_268B350F4();
    v88 = v110;
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v87);
    v89 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v89);
    v90 = *v85;
    v91 = v98;
    sub_2688F1FA4(v88, v98, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v91, 1, v87) == 1)
    {
      sub_2688C058C(v91, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v87 - 8) + 8))(v91, v87);
    }

    v92 = v109;
    v93 = v111;
    sub_2688E3F08();

    sub_2688C058C(v93, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v110, &unk_2802A57B0, &unk_268B3CE00);
    (*(v117 + 8))(v92, v86);
    *&v120 = v72;
    v123 = 1;
    v94 = v72;
    v116(&v120);
  }

  else
  {
    v111 = a3;
    sub_268947F08();
    v108 = v62;
    v109 = v63;
    v64 = *(a4 + 120);
    v110 = a4;
    v65 = __swift_project_boxed_opaque_existential_1((a4 + 96), v64);
    (*(v41 + 104))(v47, *MEMORY[0x277D5BC10], v40);
    sub_2688F1FA4(v112, v28, &unk_2802A56E0, &unk_268B3CDF0);

    v66 = sub_268B350F4();
    v67 = *(v66 - 8);
    (*(v67 + 32))(v39, v28, v66);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v66);
    v68 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v68);
    v69 = *v65;
    sub_2688F1FA4(v39, v37, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v37, 1, v66) == 1)
    {
      sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v67 + 8))(v37, v66);
    }

    v73 = v111;
    sub_2688E3F08();

    sub_2688C058C(v24, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v39, &unk_2802A57B0, &unk_268B3CE00);
    (*(v117 + 8))(v47, v113);
    v74 = v110;
    v75 = *__swift_project_boxed_opaque_existential_1(v110 + 12, v110[15]);
    sub_268948308(MEMORY[0x277D84F90]);
    v76 = v99;
    sub_268A82B50(v73, v99);
    v77 = v74[11];
    __swift_project_boxed_opaque_existential_1(v74 + 7, v74[10]);
    sub_268B34CA4();
    v78 = v101;
    v79 = v102;
    v80 = v103;
    (*(v101 + 16))(v102, v76, v103);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v81 = v100;
    sub_268B34EF4();
    sub_2688C058C(&v120, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v79, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v78 + 8))(v76, v80);
    v82 = v105;
    *(&v121 + 1) = v105;
    v122 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v120);
    v84 = v104;
    (*(v104 + 16))(boxed_opaque_existential_1, v81, v82);
    v123 = 0;
    v116(&v120);
    (*(v84 + 8))(v81, v82);
  }

  return sub_2688C058C(&v120, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A47774()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  v16 = OUTLINED_FUNCTION_139(v13);
  v17(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse called", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v0, v10);
  v21 = sub_268B36E84();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v25 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
    OUTLINED_FUNCTION_22_12();
    v41 = *(v5 + v25);
    sub_268B38404();
    sub_268947F08();
    v23 = v26;
    v24 = v27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v29 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  v40 = *(v5 + v29);
  sub_268B38404();
  v30 = sub_268B36E94();
  v32 = v31;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v30;
  *(inited + 56) = v32;
  v33 = sub_268B37B84();
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = v9;
  v34[4] = v7;
  v34[5] = v23;
  v34[6] = v24;
  v34[7] = v38;
  v34[8] = v39;
  v35 = v1[5];
  v36 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v35);

  v37 = v7;

  sub_2689CE860(0xD000000000000022, 0x8000000268B5A3F0, v33, sub_268A48DE8, v34, v35, v36);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A47AF0(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v124 = a7;
  v125 = a8;
  v122 = a5;
  v123 = a6;
  v126 = a4;
  v127 = a2;
  v121 = a3;
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v107 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v120 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v115 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v113 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v107 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v110 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  MEMORY[0x28223BE20](v29);
  v111 = &v107 - v32;
  v33 = sub_268B34E24();
  v128 = *(v33 - 8);
  v129 = v33;
  v34 = *(v128 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v118 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v108 = &v107 - v37;
  v38 = sub_268B37A54();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v114 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v107 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v107 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (&v107 - v50);
  sub_2688F1FA4(v117, &v107 - v50, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v51;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v38, qword_2802CDA10);
    (*(v39 + 16))(v47, v53, v38);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v127;
    v58 = v108;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    (*(v39 + 8))(v47, v38);
    v60 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    (*(v128 + 104))(v58, *MEMORY[0x277D5BC00], v129);
    v61 = sub_268B350F4();
    v62 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v61);
    v63 = *MEMORY[0x277D5B8E0];
    v64 = sub_268B34B94();
    v65 = v112;
    (*(*(v64 - 8) + 104))(v112, v63, v64);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
    v66 = *v60;
    sub_2688F1FA4(v62, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v61) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v61 - 8) + 8))(v31, v61);
    }

    sub_2688E3F08();

    sub_2688C058C(v65, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v58, v129);
    v83 = __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
    sub_2688C2ECC();
    v84 = swift_allocError();
    *v85 = -93;
    v86 = *v83;
    sub_26894B450();

    v87 = swift_allocError();
    *v88 = -93;
    v130[0] = v87;
    v131 = 1;
    v124(v130);

    return sub_2688C058C(v130, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v51, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v38, qword_2802CDA10);
    v68 = *(v39 + 16);
    v108 = v67;
    v107 = v68;
    (v68)(v45);
    v69 = sub_268B37A34();
    v70 = sub_268B37ED4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v69, v70, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    v72 = *(v39 + 8);
    v112 = (v39 + 8);
    v72(v45, v38);
    v73 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    (*(v128 + 104))(v118, *MEMORY[0x277D5BC00], v129);
    v117 = v17;
    v74 = v109;
    sub_2688F1FA4(v17, v109, &unk_2802A56E0, &unk_268B3CDF0);

    v75 = sub_268B350F4();
    v76 = *(v75 - 8);
    v77 = v119;
    (*(v76 + 32))(v119, v74, v75);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v75);
    v78 = sub_268B34B94();
    v79 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v78);
    v80 = *v73;
    v81 = v110;
    sub_2688F1FA4(v77, v110, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v75);
    v111 = v76;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v81, v75);
    }

    v90 = v114;
    v91 = v118;
    sub_2688E3F08();

    sub_2688C058C(v79, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v119, &unk_2802A57B0, &unk_268B3CE00);
    (*(v128 + 8))(v91, v129);
    v92 = v127;
    v93 = __swift_project_boxed_opaque_existential_1(v127 + 12, v127[15]);
    sub_2688C2ECC();
    v94 = swift_allocError();
    *v95 = 79;
    v96 = *v93;
    sub_26894B450();

    v107(v90, v108, v38);
    v97 = sub_268B37A34();
    v98 = sub_268B37ED4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2688BB000, v97, v98, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v99, 2u);
      MEMORY[0x26D6266E0](v99, -1, -1);
    }

    v72(v90, v38);
    v100 = v92[35];
    v101 = v92[36];
    __swift_project_boxed_opaque_existential_1(v92 + 32, v100);
    v102 = v117;
    v103 = v115;
    sub_2688F1FA4(v117, v115, &unk_2802A56E0, &unk_268B3CDF0);
    v104 = *(v103 + *(v120 + 48));
    v105 = v116;
    sub_268A82B50(v126, v116);
    v106 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
    (*(v101 + 40))(v103, v104, v105, v124, v125, v100, v101);

    sub_2688C058C(v105, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v102, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v111 + 8))(v103, v75);
  }
}

uint64_t *sub_268A48820()
{
  sub_2689542A4((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[37];

  return v0;
}

uint64_t sub_268A48878()
{
  sub_268A48820();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

uint64_t sub_268A488D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A4894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A48A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A48AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

id sub_268A48B84()
{
  if (qword_2802A4EE0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9C0;

  return v1;
}

uint64_t sub_268A48BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, VolumeLevelHandleIntentStrategy, a3);
}

uint64_t sub_268A48C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, VolumeLevelHandleIntentStrategy, a4);
}

uint64_t sub_268A48C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, VolumeLevelHandleIntentStrategy, a6);
}

uint64_t sub_268A48CF0(uint64_t a1, uint64_t a2)
{
  result = sub_268A491D4(&qword_2802A77E8, a2, type metadata accessor for GetVolumeLevelHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A48D90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_268A48DFC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v1 + 24);

  v10 = *(v1 + 32);

  v11 = v1 + v5;
  v12 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v12);
  (*(v13 + 8))(v11);

  v14 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v8 + 8, v4 | 7);
}

uint64_t sub_268A48F1C(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_268A46AE8(a1, a2 & 1, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + v7 + 8));
}

void sub_268A48FEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_268A48FF8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268A49108(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A46100(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A491D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t OUTLINED_FUNCTION_8_21@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v4 - 192) = a1;
  *(v4 - 152) = 1;
  result = v4 - 192;
  v6 = *(v3 + 168);
  v7 = *(v3 + 144);
  return result;
}

id sub_268A49358()
{
  result = [objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentHandler()) init];
  qword_2802CD9C8 = result;
  return result;
}

uint64_t sub_268A4938C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v63 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v59 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B35494();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v55 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = sub_268B37A54();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v60 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v28 = __swift_project_value_buffer(v18, qword_2802CDA10);
  v56 = *(v21 + 16);
  v57 = v28;
  v56(v27);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v62 = v21;
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "WhatDidTheySayFlowStrategy#actionForInput called", v31, 2u);
    v21 = v62;
    OUTLINED_FUNCTION_12();
  }

  v34 = *(v21 + 8);
  v32 = v21 + 8;
  v33 = v34;
  v34(v27, v18);
  v35 = v61;
  sub_268B35414();
  v36 = (*(v11 + 88))(v17, v8);
  if (v36 == *MEMORY[0x277D5C128] || v36 == *MEMORY[0x277D5C160])
  {
    (*(v11 + 8))(v17, v8);
    return sub_268B34EC4();
  }

  else
  {
    v53 = v33;
    v54 = v8;
    v62 = v32;
    v39 = v60;
    (v56)(v60, v57, v18);
    v41 = v58;
    v40 = v59;
    (*(v59 + 16))(v58, v35, v2);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v45 = v41;
      v46 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64 = v61;
      *v46 = 136315138;
      sub_268B35414();
      LODWORD(v57) = v43;
      v47 = v54;
      v48 = sub_268B37C24();
      v49 = v40;
      v51 = v50;
      (*(v49 + 8))(v45, v2);
      v52 = sub_26892CDB8(v48, v51, &v64);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_2688BB000, v42, v57, "WhatDidTheySayFlowStrategy#actionForInput unexpected parse type: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v53(v60, v18);
    }

    else
    {

      (*(v40 + 8))(v41, v2);
      v53(v39, v18);
      v47 = v54;
    }

    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_4_10();
    sub_268B34ED4();
    return (*(v11 + 8))(v17, v47);
  }
}

uint64_t sub_268A498BC(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v99 = a3;
  v100 = a4;
  v94 = sub_268B34614();
  v6 = OUTLINED_FUNCTION_1(v94);
  v87 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v85 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v86 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v85 - v15;
  v98 = sub_268B35494();
  v16 = OUTLINED_FUNCTION_1(v98);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v88 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v93 = &v85 - v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  v101 = &v85 - v25;
  v26 = sub_268B37A54();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v96 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v35 = &v85 - v34;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v36 = __swift_project_value_buffer(v26, qword_2802CDA10);
  v89 = *(v29 + 16);
  v90 = v36;
  v89(v35);
  v37 = sub_268B37A34();
  v38 = sub_268B37F04();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v37, v38, "WhatDidTheySayFlowStrategy#makeIntentFromParse called", v39, 2u);
    OUTLINED_FUNCTION_12();
  }

  v41 = *(v29 + 8);
  v40 = v29 + 8;
  v91 = v41;
  v41(v35, v26);
  if (a2)
  {
    v42 = a2;
    v97 = a2;
  }

  else
  {
    v42 = 0;
    v97 = [objc_allocWithZone(type metadata accessor for WhatDidTheySayIntent()) init];
  }

  v43 = v98;
  v44 = v101;
  v45 = *(v18 + 16);
  v45(v101, a1, v98);
  v46 = (*(v18 + 88))(v44, v43);
  if (v46 == *MEMORY[0x277D5C128] || v46 == *MEMORY[0x277D5C160])
  {
    v48 = *(v18 + 8);
    v49 = v42;
    v48(v44, v43);
    v50 = v97;
    v51 = [v97 startTime];
    if (v51)
    {
      v52 = v51;
      v53 = v92;
      sub_268B345D4();

      __swift_storeEnumTagSinglePayload(v53, 0, 1, v94);
      sub_2688F3448(v53);
    }

    else
    {
      v73 = v92;
      v74 = v94;
      __swift_storeEnumTagSinglePayload(v92, 1, 1, v94);
      sub_2688F3448(v73);
      v75 = v85;
      sub_268B34604();
      v76 = v86;
      sub_268B345E4();
      v77 = *(v87 + 8);
      v77(v75, v74);
      v78 = sub_268B34594();
      v77(v76, v74);
      [v50 setStartTime_];
    }

    v79 = v95;
    v80 = v95[5];
    v81 = v95[6];
    __swift_project_boxed_opaque_existential_1(v95 + 2, v80);
    v82 = swift_allocObject();
    v83 = v100;
    v82[2] = v99;
    v82[3] = v83;
    v82[4] = v50;
    v84 = v50;

    sub_268AD35F4(v84, &off_287953C68, (v79 + 7), sub_268A4A870, v82, v80, v81);
  }

  else
  {
    v54 = v96;
    (v89)(v96, v90, v26);
    v55 = v93;
    v45(v93, a1, v43);
    v56 = v42;
    v57 = sub_268B37A34();
    v58 = v43;
    v59 = sub_268B37EE4();
    if (os_log_type_enabled(v57, v59))
    {
      v61 = v55;
      v62 = swift_slowAlloc();
      v94 = v62;
      v95 = swift_slowAlloc();
      v102 = v95;
      *v62 = 136315138;
      v45(v88, v61, v58);
      v63 = sub_268B37C24();
      v65 = v64;
      v66 = *(v18 + 8);
      v98 = v40;
      v66(v61, v58);
      v67 = sub_26892CDB8(v63, v65, &v102);

      v68 = v94;
      *(v94 + 1) = v67;
      _os_log_impl(&dword_2688BB000, v57, v59, "WhatDidTheySayFlowStrategy#makeIntentFromParse unexpected parse type: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v91(v96, v26);
    }

    else
    {

      v69 = v55;
      v66 = *(v18 + 8);
      v66(v69, v58);
      v91(v54, v26);
    }

    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_4_10();
    sub_2688C2ECC();
    v70 = swift_allocError();
    *v71 = -110;
    v99(v70, 1);

    return (v66)(v101, v58);
  }
}

uint64_t sub_268A4A060(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "WhatDidTheySayFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A4A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A4A334()
{
  if (qword_2802A4EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9C8;

  return v1;
}

uint64_t sub_268A4A390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A4A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A4A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4A778(uint64_t a1)
{
  result = sub_268A4A7F0(&qword_2802A77F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4A7F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WhatDidTheySayFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4A830()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_268A4A8A0()
{
  result = [objc_allocWithZone(type metadata accessor for SkipContentIntentHandler()) init];
  qword_2802CD9D0 = result;
  return result;
}

uint64_t sub_268A4A8D4()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_268A4C5DC(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CD9D8 = result;
  return result;
}

uint64_t sub_268A4AB28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v65 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v72 = v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v68 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v69 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SkipContentFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v75;
  v40 = v73;
  sub_268B35414();
  sub_26893BA8C(v39);
  v41 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_2688C2E64(v20);
  if (v39 == 1)
  {
    v42 = v68;
    v34(v68, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SkipContentFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_4_10();
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v24 + 8);
    v47 = v72;
    sub_268B35414();
    v49 = v70;
    v48 = v71;
    v50 = (*(v70 + 88))(v47, v71);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C150] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v69, v33, v21);
      v53 = v65;
      v54 = v66;
      v55 = v67;
      (*(v66 + 16))(v65, v40, v67);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v60 = 136315138;
        sub_268B35414();
        v61 = sub_268B37C24();
        v63 = v62;
        (*(v54 + 8))(v59, v55);
        v64 = sub_26892CDB8(v61, v63, &v76);
        v48 = v71;

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2688BB000, v56, v57, "SkipContentFlowStrategy#actionForInput received unsupported parse type %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v49 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v38(v69, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_44();
      OUTLINED_FUNCTION_4_10();
      sub_268B34ED4();
      return (*(v49 + 8))(v72, v48);
    }
  }
}

uint64_t sub_268A4B1AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37AB4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37B14();
  v14 = OUTLINED_FUNCTION_1(v13);
  v45 = v15;
  v46 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B35494();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4EF8 != -1)
  {
    swift_once();
  }

  v40 = qword_2802CD9D8;
  (*(v24 + 16))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v28, v27, v21);
  v32 = (v31 + v29);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  *v32 = v41;
  v32[1] = v34;
  *(v31 + v30) = v33;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_268A4C4D0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_9;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  sub_268B37AE4();
  v49 = MEMORY[0x277D84F90];
  sub_268A4C5DC(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v38 = v48;
  sub_268B38124();
  MEMORY[0x26D625950](0, v20, v12, v36);
  _Block_release(v36);
  (*(v47 + 8))(v12, v38);
  (*(v45 + 8))(v20, v46);
}

void sub_268A4B574(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t *a4, void *a5)
{
  v67 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v69 = a1;
  v71 = sub_268B35494();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v68 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v63 = v18[2];
  v64 = v24;
  v63(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SkipContentFlowStrategy#makeIntentFromParse called", v31, 2u);
    v32 = v31;
    v9 = v30;
    v18 = v29;
    v17 = v28;
    v16 = v27;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v65 = v18[1];
  v65(v23, v17);
  v33 = *(v75 + 16);
  v34 = v69;
  v35 = v71;
  v33(v9, v69, v71);
  sub_26893BC0C(v9, 1, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (__swift_getEnumTagSinglePayload(v13, 1, v68) == 1)
  {
    sub_2688C2E64(v13);
    (v63)(v70, v64, v17);
    v42 = v66;
    v33(v66, v34, v35);
    v43 = v35;
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v46 = 136315138;
      v33(v9, v42, v43);
      v47 = sub_268B37C24();
      v49 = v48;
      (*(v75 + 8))(v42, v43);
      v50 = sub_26892CDB8(v47, v49, &v76);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v44, v45, "SkipContentFlowStrategy#makeIntentFromParse received unexpected parse: %s", v46, 0xCu);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v42, v35);
    }

    v65(v70, v17);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = 119;
    v72(v53, 1);
  }

  else
  {
    sub_2688C0464(v13, v16);
    if (v74)
    {
      v52 = v74;
    }

    else
    {
      v52 = [objc_allocWithZone(type metadata accessor for SkipContentIntent()) init];
    }

    v55 = v74;
    sub_268AC76C4(v16);
    v56 = v67;
    v57 = v67[5];
    v58 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v57);
    v59 = v16;
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v72;
    v60[3] = v61;
    v60[4] = v52;
    v62 = v52;

    sub_268AD35F4(v62, &off_287953B88, (v56 + 7), sub_268A4C5D0, v60, v57, v58);

    sub_2688C2F6C(v59);
  }
}

uint64_t sub_268A4BC14(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "Finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A4BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4BE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A4BEE8()
{
  if (qword_2802A4EF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9D0;

  return v1;
}

uint64_t sub_268A4BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A4C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A4C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4C198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4C368(uint64_t a1, uint64_t a2)
{
  result = sub_268A4C5DC(&qword_2802A7818, a2, type metadata accessor for SkipContentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4C408()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_268A4C4D0()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268A4B574(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A4C590()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A4C5DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_stop_common_MediaItem.verb()()
{
  v0 = 1886352499;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_stop_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UsoTask_stop_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268A4C8D4();
  if (result)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37EE4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "UsoTask_stop_common_MediaItem#shouldHandle Sleep timers request. Not handling in controls", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    result = (*(v3 + 8))(v6, v2);
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12;
  return result;
}

BOOL sub_268A4C8D4()
{
  v0 = sub_268B362F4();
  if (v0)
  {
  }

  return v0 != 0;
}

uint64_t sub_268A4C978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A4C9CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A4CA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A4CA74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A4CAC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A4CB1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A4CB70()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A4CBC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}