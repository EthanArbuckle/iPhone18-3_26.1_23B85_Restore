uint64_t String.firstConditionallyCapitalized(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F198, &qword_2694253A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  if (sub_269424198() < 2 || (sub_2694241B8(), sub_269424228(), v10 = sub_2694240D8(), , (v10 & 1) != 0))
  {
  }

  else
  {

    v24 = sub_2693CB144(1);
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v14 = sub_269422D48();
    (*(*(v14 - 8) + 16))(v9, a1, v14);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
    sub_2693CB22C();
    v15 = sub_269424418();
    v17 = v16;
    sub_2693CB280(v9);

    v18 = sub_2693CB2E8(1uLL, a2, a3);
    v23[0] = v15;
    v23[1] = v17;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    sub_2693CB3BC();

    sub_2694241C8();

    return v23[0];
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2693CB144(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2694241A8();
    v1 = sub_269424248();

    return v1;
  }

  return result;
}

unint64_t sub_2693CB22C()
{
  result = qword_28030F1A0;
  if (!qword_28030F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F1A0);
  }

  return result;
}

uint64_t sub_2693CB280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F198, &qword_2694253A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2693CB2E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2694241A8();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_269424248();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2693CB3BC()
{
  result = qword_28030F1A8;
  if (!qword_28030F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F1A8);
  }

  return result;
}

uint64_t variable initialization expression of SiriTranslationModels.SiriTranslationResultModel._visualID()
{
  v0 = sub_269422D18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269422D08();
  v5 = sub_269422CF8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2693CB514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2693ECB88();
  *a1 = result;
  return result;
}

void *sub_2693CB558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_2693CB56C(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_269424688() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_269424688() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_269424688();
}

uint64_t sub_2693CB614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C746567726174 && a2 == 0xEE0065676175676ELL;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x8000000269429020 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_269424688();

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

uint64_t sub_2693CB774(unsigned __int8 a1)
{
  sub_269424738();
  MEMORY[0x26D63C2F0](a1);
  return sub_269424758();
}

uint64_t sub_2693CB7C8(char a1)
{
  if (!a1)
  {
    return 0x614C746567726174;
  }

  if (a1 == 1)
  {
    return 1954047348;
  }

  return 0xD000000000000016;
}

uint64_t sub_2693CB844()
{
  v1 = *v0;
  sub_269424738();
  MEMORY[0x26D63C2F0](v1);
  return sub_269424758();
}

uint64_t sub_2693CB890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693CB614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693CB8D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693CB734();
  *a1 = result;
  return result;
}

uint64_t sub_2693CB900(uint64_t a1)
{
  v2 = sub_2693CBF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693CB93C(uint64_t a1)
{
  v2 = sub_2693CBF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2693CB978()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_2693CB9A8()
{
  sub_2693CB978();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2693CBA00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F598, &qword_269425490);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693CBF3C();
  sub_269424788();
  v14 = v3[2];
  v15 = v3[3];
  v21[15] = 0;
  OUTLINED_FUNCTION_1();
  if (!v2)
  {
    v16 = v3[4];
    v17 = v3[5];
    v21[14] = 1;
    OUTLINED_FUNCTION_1();
    v18 = v3[6];
    v19 = v3[7];
    v21[13] = 2;
    OUTLINED_FUNCTION_1();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2693CBB5C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2693CBBAC(a1);
  return v2;
}

void *sub_2693CBBAC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F588, &qword_269425488);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693CBF3C();
  sub_269424778();
  if (v2)
  {
    type metadata accessor for SpeakAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_2694245E8();
    v1[3] = v10;
    v1[4] = sub_2694245E8();
    v1[5] = v11;
    v13 = sub_2694245E8();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_0_0();
    v17(v16);
    v3[6] = v13;
    v3[7] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2693CBDB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2693CBB5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2693CBE2C(void *a1)
{
  a1[1] = sub_2693CBEB8(&qword_28030F570);
  a1[2] = sub_2693CBEB8(&qword_28030F578);
  result = sub_2693CBEB8(&qword_28030F580);
  a1[3] = result;
  return result;
}

uint64_t sub_2693CBEB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2693CBF3C()
{
  result = qword_28030F590;
  if (!qword_28030F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F590);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for SpeakAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpeakAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693CC140);
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

unint64_t sub_2693CC190()
{
  result = qword_28030F5A0;
  if (!qword_28030F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5A0);
  }

  return result;
}

unint64_t sub_2693CC1E8()
{
  result = qword_28030F5A8;
  if (!qword_28030F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5A8);
  }

  return result;
}

unint64_t sub_2693CC240()
{
  result = qword_28030F5B0;
  if (!qword_28030F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_269424638();
}

uint64_t sub_2693CC2DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2693CC2FC, 0, 0);
}

uint64_t sub_2693CC2FC()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_mainFlow);
  sub_269423138();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2693CC368()
{
  type metadata accessor for TranslationDecisionFlow();
  sub_2693CC954();
  return sub_269422F88();
}

uint64_t sub_2693CC3C8()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_mainFlow);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_featureManager));
  return v0;
}

uint64_t sub_2693CC458()
{
  sub_2693CC3C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslationDecisionFlow()
{
  result = qword_28030F5D8;
  if (!qword_28030F5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693CC504()
{
  result = sub_269423FC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693CC5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2693CC664;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2693CC664(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2693CC784(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693CC820;

  return sub_2693CC2DC(a1);
}

uint64_t sub_2693CC820()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2693CC914()
{
  type metadata accessor for TranslationDecisionFlow();

  return sub_269422FC8();
}

unint64_t sub_2693CC954()
{
  result = qword_28030F5E8;
  if (!qword_28030F5E8)
  {
    type metadata accessor for TranslationDecisionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F5E8);
  }

  return result;
}

uint64_t sub_2693CCA24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269425690;
  OUTLINED_FUNCTION_1_0();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = v3;
  v4 = MEMORY[0x277D839B0];
  *(v2 + 48) = *v0;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0x6E69577473726966;
  *(v2 + 88) = 0xEF657A6953776F64;
  if (*(v0 + 16))
  {
    v5 = 0;
    v6 = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v5 = *(v0 + 8);
    v6 = MEMORY[0x277D839F8];
  }

  *(v1 + 96) = v5;
  *(v1 + 120) = v6;
  strcpy((v1 + 128), "isConclusion");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  *(v1 + 144) = *(v0 + 17);
  *(v1 + 168) = v4;
  strcpy((v1 + 176), "isFirstWindow");
  *(v1 + 190) = -4864;
  *(v1 + 192) = *(v0 + 18);
  *(v1 + 216) = v4;
  strcpy((v1 + 224), "isLastWindow");
  *(v1 + 237) = 0;
  *(v1 + 238) = -5120;
  *(v1 + 240) = *(v0 + 19);
  *(v1 + 264) = v4;
  *(v1 + 272) = 0xD000000000000016;
  *(v1 + 280) = 0x8000000269429120;
  *(v1 + 288) = *(v0 + 20);
  *(v1 + 312) = v4;
  *(v1 + 320) = 0x65676175676E616CLL;
  *(v1 + 328) = 0xE900000000000073;
  v18 = *(v0 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F608, &qword_269425758);
  *(v1 + 336) = v18;
  *(v1 + 360) = v7;
  strcpy((v1 + 368), "languageGroup");
  *(v1 + 382) = -4864;
  v17 = *(v0 + 32);
  v8 = MEMORY[0x277D837D0];
  *(v1 + 384) = v17;
  *(v1 + 408) = v8;
  *(v1 + 416) = 0xD000000000000013;
  *(v1 + 424) = 0x8000000269429140;
  if (*(v0 + 56))
  {
    v9 = 0;
    v10 = 0;
    *(v1 + 440) = 0;
    *(v1 + 448) = 0;
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = MEMORY[0x277D839F8];
  }

  *(v1 + 432) = v9;
  *(v1 + 456) = v10;
  *(v1 + 464) = 0x6574496C61746F74;
  *(v1 + 472) = 0xEA0000000000736DLL;
  if (*(v0 + 72))
  {
    v11 = 0;
    v12 = 0;
    *(v1 + 488) = 0;
    *(v1 + 496) = 0;
  }

  else
  {
    v11 = *(v0 + 64);
    v12 = MEMORY[0x277D839F8];
  }

  *(v1 + 480) = v11;
  *(v1 + 504) = v12;
  *(v1 + 512) = 0x6953776F646E6977;
  *(v1 + 520) = 0xEA0000000000657ALL;
  if (*(v0 + 88))
  {
    v13 = 0;
    v14 = 0;
    *(v1 + 536) = 0u;
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = MEMORY[0x277D839F8];
  }

  *(v1 + 528) = v13;
  *(v1 + 552) = v14;
  sub_2693CDA24(&v18, v16, &qword_28030F608, &qword_269425758);
  sub_2693CD8C8(&v17, v16);
  return v1;
}

uint64_t sub_2693CCD38(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2694256A0;
  OUTLINED_FUNCTION_1_0();
  *(v17 + 32) = 0xD000000000000020;
  *(v17 + 40) = v18;
  v19 = MEMORY[0x277D839B0];
  *(v17 + 48) = *v1;
  OUTLINED_FUNCTION_1_0();
  *(v20 + 72) = v19;
  *(v20 + 80) = 0xD000000000000017;
  *(v20 + 88) = v21;
  *(v20 + 96) = *(v1 + 1);
  *(v20 + 120) = v19;
  *(v20 + 128) = 0x6E69577473726966;
  *(v20 + 136) = 0xEF657A6953776F64;
  if (*(v1 + 16))
  {
    v22 = 0;
    *(v16 + 152) = 0;
    *(v16 + 160) = 0;
    v23 = 0;
  }

  else
  {
    v23 = *(v1 + 8);
    v22 = MEMORY[0x277D839F8];
  }

  *(v16 + 144) = v23;
  *(v16 + 168) = v22;
  strcpy((v16 + 176), "isConclusion");
  *(v16 + 189) = 0;
  *(v16 + 190) = -5120;
  *(v16 + 192) = *(v1 + 17);
  *(v16 + 216) = v19;
  strcpy((v16 + 224), "isFirstWindow");
  *(v16 + 238) = -4864;
  *(v16 + 240) = *(v1 + 18);
  *(v16 + 264) = v19;
  strcpy((v16 + 272), "isLastWindow");
  *(v16 + 285) = 0;
  *(v16 + 286) = -5120;
  *(v16 + 288) = *(v1 + 19);
  OUTLINED_FUNCTION_1_0();
  *(v16 + 312) = v19;
  *(v16 + 320) = 0xD000000000000016;
  *(v16 + 328) = v24;
  *(v16 + 336) = *(v1 + 20);
  *(v16 + 360) = v19;
  *(v16 + 368) = 0x736D657469;
  *(v16 + 376) = 0xE500000000000000;
  v25 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F618, &qword_269425768);
  *(v16 + 384) = v25;
  OUTLINED_FUNCTION_1_0();
  *(v16 + 408) = v26;
  *(v16 + 416) = 0xD000000000000013;
  *(v16 + 424) = v27;
  if (*(v1 + 40))
  {
    v28 = 0;
    *(v16 + 440) = 0;
    *(v16 + 448) = 0;
    v29 = 0;
  }

  else
  {
    v29 = *(v1 + 32);
    v28 = MEMORY[0x277D839F8];
  }

  *(v16 + 432) = v29;
  *(v16 + 456) = v28;
  *(v16 + 464) = 0x657361726870;
  *(v16 + 472) = 0xE600000000000000;
  v30 = a1(0);
  sub_2693CDA24(v1 + v30[13], v15, &qword_28030F610, &qword_269425760);
  v31 = sub_269423DA8();
  OUTLINED_FUNCTION_2_0(v15);
  if (v32)
  {

    sub_2693CDA8C(v15, &qword_28030F610, &qword_269425760);
    *(v16 + 480) = 0u;
    *(v16 + 496) = 0u;
  }

  else
  {
    *(v16 + 504) = v31;
    __swift_allocate_boxed_opaque_existential_0((v16 + 480));
    OUTLINED_FUNCTION_0_1();
    (*(v33 + 32))();
  }

  OUTLINED_FUNCTION_1_0();
  *(v16 + 512) = 0xD000000000000011;
  *(v16 + 520) = v34;
  sub_2693CDA24(v1 + v30[14], v13, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2_0(v13);
  if (v32)
  {
    sub_2693CDA8C(v13, &qword_28030F610, &qword_269425760);
    *(v16 + 528) = 0u;
    *(v16 + 544) = 0u;
  }

  else
  {
    *(v16 + 552) = v31;
    __swift_allocate_boxed_opaque_existential_0((v16 + 528));
    OUTLINED_FUNCTION_0_1();
    (*(v35 + 32))();
  }

  OUTLINED_FUNCTION_1_0();
  *(v16 + 560) = 0xD000000000000012;
  *(v16 + 568) = v36;
  LOBYTE(v36) = *(v1 + v30[15]);
  *(v16 + 600) = v19;
  *(v16 + 576) = v36;
  strcpy((v16 + 608), "sourceLanguage");
  *(v16 + 623) = -18;
  sub_2693CDA24(v1 + v30[16], v10, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2_0(v10);
  if (v32)
  {
    sub_2693CDA8C(v10, &qword_28030F610, &qword_269425760);
    *(v16 + 624) = 0u;
    *(v16 + 640) = 0u;
  }

  else
  {
    *(v16 + 648) = v31;
    __swift_allocate_boxed_opaque_existential_0((v16 + 624));
    OUTLINED_FUNCTION_0_1();
    (*(v37 + 32))();
  }

  strcpy((v16 + 656), "targetLanguage");
  *(v16 + 671) = -18;
  sub_2693CDA24(v1 + v30[17], v7, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_2_0(v7);
  if (v32)
  {
    sub_2693CDA8C(v7, &qword_28030F610, &qword_269425760);
    *(v16 + 672) = 0u;
    *(v16 + 688) = 0u;
  }

  else
  {
    *(v16 + 696) = v31;
    __swift_allocate_boxed_opaque_existential_0((v16 + 672));
    OUTLINED_FUNCTION_0_1();
    (*(v38 + 32))();
  }

  *(v16 + 704) = 0x6574496C61746F74;
  *(v16 + 712) = 0xEA0000000000736DLL;
  v39 = (v1 + v30[18]);
  if (v39[1])
  {
    v40 = 0;
    *(v16 + 728) = 0u;
    v41 = 0;
  }

  else
  {
    v41 = *v39;
    v40 = MEMORY[0x277D839F8];
  }

  *(v16 + 720) = v41;
  *(v16 + 744) = v40;
  *(v16 + 752) = 0x6953776F646E6977;
  *(v16 + 760) = 0xEA0000000000657ALL;
  v42 = (v1 + v30[19]);
  if (v42[1])
  {
    v43 = 0;
    *(v16 + 776) = 0u;
    v44 = 0;
  }

  else
  {
    v44 = *v42;
    v43 = MEMORY[0x277D839F8];
  }

  *(v16 + 768) = v44;
  *(v16 + 792) = v43;
  return v16;
}

uint64_t sub_2693CD3A4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2693CD3C8, 0, 0);
}

uint64_t sub_2693CD3C8()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_2694256B0;
  OUTLINED_FUNCTION_1_0();
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = v4;
  *(v3 + 72) = MEMORY[0x277D839B0];
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_2693CD4F4;
  v7 = *(v0 + 16);

  return v9(0xD000000000000016, 0x80000002694291D0, v2);
}

uint64_t sub_2693CD4F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2693CD64C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_2693CD64C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2693CD6B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2693CD704(a1, a2);
}

uint64_t sub_2693CD704(uint64_t a1, uint64_t a2)
{
  v4 = sub_269423EB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2693CDA24(a1, &v14 - v11, &qword_28030F620, &unk_269425770);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_269423CB8();
  (*(v5 + 8))(a2, v4);
  sub_2693CDA8C(a1, &qword_28030F620, &unk_269425770);
  return v12;
}

uint64_t sub_2693CD890()
{
  v0 = sub_269423CE8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2693CD9EC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693CDA24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2693CDA8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2693CDB20()
{
  if (!qword_28030F638)
  {
    v0 = sub_269424408();
    if (!v1)
    {
      atomic_store(v0, &qword_28030F638);
    }
  }
}

void sub_2693CDB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2693CDD1C()
{
  sub_2693CDB20();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2693CDB70(319, &qword_28030F640, type metadata accessor for TranslationItem, MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2693CDB70(319, &qword_28030F648, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_2693CDE6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2693CDEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2693CE058(uint64_t a1, uint64_t *a2)
{
  v3 = sub_269423FC8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_269423FB8();
}

uint64_t sub_2693CE0D0()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314E58);
  OUTLINED_FUNCTION_0_2();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2693CE124()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314E70);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE194()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314E88);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE204()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314EA0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE274()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314EB8);
  __swift_project_value_buffer(v0, qword_280314EB8);
  return sub_269423FB8();
}

uint64_t sub_2693CE2F4()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314ED0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE364()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314EE8);
  OUTLINED_FUNCTION_0_2();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2693CE3B8()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314F00);
  OUTLINED_FUNCTION_0_2();
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2693CE40C()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314F18);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE47C()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_280314F30);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  return sub_269423FB8();
}

uint64_t sub_2693CE4EC()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, static TranslationLog.smartAdoptionLog);
  __swift_project_value_buffer(v0, static TranslationLog.smartAdoptionLog);
  return sub_269423FB8();
}

uint64_t sub_2693CE598(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_269423FC8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2693CE614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_269423FC8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_269423FB8();
}

uint64_t sub_2693CE7A4()
{
  v1 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text;
  v2 = sub_269423DA8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier);
  OUTLINED_FUNCTION_2_2(OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization);
  return v0;
}

uint64_t sub_2693CE83C()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization);
  return v0;
}

uint64_t *sub_2693CE900()
{
  v0[2] = 0;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
  if (!sub_2693CEB14())
  {
    v1 = sub_269423E88();
    sub_269424378();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F690, &qword_269425988);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2694256B0;
    v7 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F698, &qword_269425990);
    v3 = sub_269424128();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_2693D02E8();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_269423F98();
  }

  return v0;
}

BOOL sub_2693CEB14()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_10();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text, &v26 - v17);
  sub_269423DA8();
  v19 = OUTLINED_FUNCTION_16(v18);
  sub_2693D033C(v18);
  if (v19 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType, v2);
  v20 = OUTLINED_FUNCTION_16(v2);
  sub_2693D033C(v2);
  if (v20 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition, v15);
  v21 = OUTLINED_FUNCTION_16(v15);
  sub_2693D033C(v15);
  if (v21 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction, v1);
  v22 = OUTLINED_FUNCTION_16(v1);
  sub_2693D033C(v1);
  if (v22 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction, v11);
  v23 = OUTLINED_FUNCTION_16(v11);
  sub_2693D033C(v11);
  if (v23 == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier, v7);
  v24 = OUTLINED_FUNCTION_16(v7) != 1;
  sub_2693D033C(v7);
  return v24;
}

uint64_t sub_2693CED58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_10();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v24 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v24 || (OUTLINED_FUNCTION_6() & 1) != 0)
  {
    v25 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
    sub_2693D0278(v25, v23);
    v26 = sub_269423DA8();
    if (__swift_getEnumTagSinglePayload(v23, 1, v26) == 1)
    {
      v27 = v23;
LABEL_8:
      result = sub_2693D033C(v27);
LABEL_9:
      v29 = v58;
      *v58 = 0u;
      *(v29 + 1) = 0u;
      return result;
    }

    v30 = v58;
    v58[3] = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    return (*(*(v26 - 8) + 32))(boxed_opaque_existential_0, v23, v26);
  }

  else
  {
    v32 = a1 == 0x6570795464726F77 && a2 == 0xE800000000000000;
    if (v32 || (OUTLINED_FUNCTION_6() & 1) != 0)
    {
      v33 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
      sub_2693D0278(v33, v6);
      v34 = sub_269423DA8();
      OUTLINED_FUNCTION_3_0(v6);
      if (v24)
      {
        v27 = v6;
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_1_2();
      v37 = *(v36 + 32);
      v38 = v6;
    }

    else
    {
      v39 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
      if (v39 || (OUTLINED_FUNCTION_6() & 1) != 0)
      {
        v40 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
        sub_2693D0278(v40, v5);
        v34 = sub_269423DA8();
        OUTLINED_FUNCTION_3_0(v5);
        if (v24)
        {
          v27 = v5;
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_1_2();
        v37 = *(v41 + 32);
        v38 = v5;
      }

      else
      {
        v43 = a1 == OUTLINED_FUNCTION_17() && a2 == v42;
        if (v43 || (OUTLINED_FUNCTION_6() & 1) != 0)
        {
          v44 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
          sub_2693D0278(v44, v19);
          v34 = sub_269423DA8();
          OUTLINED_FUNCTION_3_0(v19);
          if (v24)
          {
            v27 = v19;
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_1_2();
          v37 = *(v45 + 32);
          v38 = v19;
        }

        else
        {
          v47 = a1 == OUTLINED_FUNCTION_14() && a2 == v46;
          if (v47 || (OUTLINED_FUNCTION_6() & 1) != 0)
          {
            v48 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
            sub_2693D0278(v48, v4);
            v34 = sub_269423DA8();
            OUTLINED_FUNCTION_3_0(v4);
            if (v24)
            {
              v27 = v4;
              goto LABEL_8;
            }

            OUTLINED_FUNCTION_15();
            OUTLINED_FUNCTION_1_2();
            v37 = *(v49 + 32);
            v38 = v4;
          }

          else
          {
            v50 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
            if (v50 || (OUTLINED_FUNCTION_6() & 1) != 0)
            {
              v51 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
              sub_2693D0278(v51, v3);
              v34 = sub_269423DA8();
              OUTLINED_FUNCTION_3_0(v3);
              if (v24)
              {
                v27 = v3;
                goto LABEL_8;
              }

              OUTLINED_FUNCTION_15();
              OUTLINED_FUNCTION_1_2();
              v37 = *(v52 + 32);
              v38 = v3;
            }

            else
            {
              if (a1 != OUTLINED_FUNCTION_18() || a2 != v53)
              {
                result = OUTLINED_FUNCTION_6();
                if ((result & 1) == 0)
                {
                  goto LABEL_9;
                }
              }

              v55 = OUTLINED_FUNCTION_9(OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
              sub_2693D0278(v55, v13);
              v34 = sub_269423DA8();
              OUTLINED_FUNCTION_3_0(v13);
              if (v24)
              {
                v27 = v13;
                goto LABEL_8;
              }

              OUTLINED_FUNCTION_15();
              OUTLINED_FUNCTION_1_2();
              v37 = *(v56 + 32);
              v38 = v13;
            }
          }
        }
      }
    }

    return v37(v35, v38, v34);
  }
}

uint64_t sub_2693CF204()
{
  v0 = sub_2694245A8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2693CF25C(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6570795464726F77;
      break;
    case 2:
      result = 0x6974696E69666564;
      break;
    case 3:
      result = OUTLINED_FUNCTION_17();
      break;
    case 4:
      result = OUTLINED_FUNCTION_14();
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    case 6:
      result = OUTLINED_FUNCTION_18();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2693CF36C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2693CF204();
  *a2 = result;
  return result;
}

uint64_t sub_2693CF39C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2693CF25C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2693CF3D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693CF250();
  *a1 = result;
  return result;
}

uint64_t sub_2693CF404(uint64_t a1)
{
  v2 = sub_2693D03A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693CF440(uint64_t a1)
{
  v2 = sub_2693D03A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693CF47C()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
  return v0;
}

uint64_t sub_2693CF524(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2693CF5A8()
{
  sub_2693CF8D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2693CF650(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F6C0, &qword_2694259A0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693D03A4();
  sub_269424788();
  v14 = OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text;
  v25 = 0;
  sub_269423DA8();
  OUTLINED_FUNCTION_5();
  sub_2693D0230(v15, v16);
  OUTLINED_FUNCTION_0_3(v3 + v14, &v25);
  if (!v2)
  {
    v24 = 1;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType, &v24);
    v23 = 2;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition, &v23);
    v22 = 3;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction, &v22);
    v21 = 4;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction, &v21);
    v20 = 5;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier, &v20);
    v19 = 6;
    OUTLINED_FUNCTION_0_3(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization, &v19);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2693CF888(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2693CF9F4(a1);
  return v5;
}

void sub_2693CF8D8()
{
  if (!qword_28030F648)
  {
    sub_269423DA8();
    v0 = sub_269424408();
    if (!v1)
    {
      atomic_store(v0, &qword_28030F648);
    }
  }
}

void sub_2693CF958()
{
  sub_2693CF8D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2693CF9F4(uint64_t *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_10();
  v50 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v51 = v47 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v47 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v53 = v47 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F6A8, &qword_269425998);
  v20 = OUTLINED_FUNCTION_2(v52);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v55 = v1;
  v56 = a1;
  *(v1 + 16) = 0;
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1;
  v29 = v47 - v28;
  __swift_project_boxed_opaque_existential_1(v27, v25);
  sub_2693D03A4();
  v30 = v54;
  sub_269424778();
  if (v30)
  {
    v40 = v55;

    type metadata accessor for TranslationItem(0);
    v37 = *(*v40 + 48);
    v38 = *(*v40 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v2;
    v54 = v3;
    v48 = v4;
    v49 = v16;
    v32 = v22;
    v33 = sub_269423DA8();
    v63 = 0;
    OUTLINED_FUNCTION_5();
    v36 = sub_2693D0230(v34, v35);
    sub_2694245D8();
    v40 = v55;
    sub_2693D03F8(v53, v55 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text);
    v62 = 1;
    v53 = v33;
    v47[2] = v36;
    v41 = v29;
    sub_2694245D8();
    sub_2693D03F8(v31, v40 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType);
    v61 = 2;
    v42 = v54;
    OUTLINED_FUNCTION_8();
    v47[1] = 0;
    sub_2694245D8();
    sub_2693D03F8(v42, v40 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition);
    v60 = 3;
    v43 = v49;
    OUTLINED_FUNCTION_8();
    sub_2694245D8();
    sub_2693D03F8(v43, v40 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_speakAction);
    v59 = 4;
    v44 = v48;
    sub_2694245D8();
    sub_2693D03F8(v44, v40 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_stopSpeakAction);
    v58 = 5;
    v45 = v51;
    OUTLINED_FUNCTION_8();
    sub_2694245D8();
    sub_2693D03F8(v45, v40 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier);
    v57 = 6;
    v46 = v50;
    sub_2694245D8();
    (*(v32 + 8))(v41, v52);
    sub_2693D03F8(v46, v40 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization);
  }

  __swift_destroy_boxed_opaque_existential_1(v56);
  return v40;
}

void *sub_2693D0040()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2693D0088(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_2693D00D4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2693D0150@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2693CF888(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2693D0230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2693D0278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2693D02E8()
{
  result = qword_28030F6A0;
  if (!qword_28030F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6A0);
  }

  return result;
}

uint64_t sub_2693D033C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2693D03A4()
{
  result = qword_28030F6B0;
  if (!qword_28030F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6B0);
  }

  return result;
}

uint64_t sub_2693D03F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TranslationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TranslationItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693D05BCLL);
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

unint64_t sub_2693D05F8()
{
  result = qword_28030F6D0;
  if (!qword_28030F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6D0);
  }

  return result;
}

unint64_t sub_2693D0650()
{
  result = qword_28030F6D8;
  if (!qword_28030F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6D8);
  }

  return result;
}

unint64_t sub_2693D06A8()
{
  result = qword_28030F6E0;
  if (!qword_28030F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F6E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDAF0](a1, a2, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t a1@<X8>)
{

  return sub_2693D0278(v1 + v3, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_15()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_2693D090C()
{
  if (qword_28030F0E8 != -1)
  {
    swift_once();
  }

  v0 = qword_280314FD8;

  sub_269423468();
  v1 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentHandler());
  result = sub_2693EE41C(v0, v3);
  qword_280314FD0 = result;
  return result;
}

uint64_t sub_2693D099C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslatePhraseStrategy_log;
  if (qword_28030F0A0 != -1)
  {
    swift_once();
  }

  v6 = sub_269423FC8();
  v7 = __swift_project_value_buffer(v6, qword_280314EA0);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2693D0A5C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2694234E8();
  v5 = OUTLINED_FUNCTION_2(v4);
  v89 = v6;
  v90 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v87[1] = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v87 - v12;
  v14 = sub_269423488();
  v15 = OUTLINED_FUNCTION_2(v14);
  v91 = v16;
  v92 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v88 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v93 = v87 - v22;
  v23 = sub_269423458();
  v24 = OUTLINED_FUNCTION_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v87 - v33;
  v94 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslatePhraseStrategy_log;
  v35 = sub_269423FA8();
  v36 = sub_269424368();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_12_0();
    v87[0] = v13;
    *v37 = 0;
    _os_log_impl(&dword_2693C9000, v35, v36, "Action for input", v37, 2u);
    v13 = v87[0];
    OUTLINED_FUNCTION_6_0();
  }

  sub_269423408();
  v38 = v26[11];
  v39 = OUTLINED_FUNCTION_22();
  if (v40(v39) != *MEMORY[0x277D5C160])
  {
    v47 = *(v2 + 16);
    sub_269423408();
    v48 = sub_26940E444(v31, 1);
    v49 = v26[1];
    v49(v31, v23);
    if (v48)
    {
      sub_26941C0F8(v48);
      if (!v50)
      {
        sub_26941C104(v48);
        if (!v51)
        {
          v75 = v48;
          v76 = OUTLINED_FUNCTION_18_0();
          v77 = sub_269424378();

          LODWORD(v94) = v77;
          if (os_log_type_enabled(v76, v77))
          {
            v78 = OUTLINED_FUNCTION_17_0();
            v92 = OUTLINED_FUNCTION_16_0();
            v95 = v92;
            *v78 = 136315138;
            v79 = v75;
            v80 = [v79 description];
            v81 = sub_269424118();
            v93 = a1;
            v83 = v82;

            v84 = sub_2693DB6E0(v81, v83, &v95);

            *(v78 + 4) = v84;
            OUTLINED_FUNCTION_13_0(&dword_2693C9000, v85, v94, "Ignoring because phrase and/or targeLanguage is missing: %s");
            __swift_destroy_boxed_opaque_existential_1(v92);
            OUTLINED_FUNCTION_1_3();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {
          }

          v86 = OUTLINED_FUNCTION_22();
          (v49)(v86);
          return sub_2694230B8();
        }
      }

      v52 = OUTLINED_FUNCTION_18_0();
      v53 = sub_269424368();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_12_0();
        *v54 = 0;
        _os_log_impl(&dword_2693C9000, v52, v53, "Handling intent.", v54, 2u);
        OUTLINED_FUNCTION_1_3();
      }

      sub_2694230A8();
    }

    else
    {
      v59 = OUTLINED_FUNCTION_18_0();
      v60 = sub_269424378();
      if (OUTLINED_FUNCTION_23(v60))
      {
        v61 = OUTLINED_FUNCTION_12_0();
        *v61 = 0;
        _os_log_impl(&dword_2693C9000, v59, v60, "Could not parse intent. Ignoring.", v61, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      sub_2694230B8();
    }

    v62 = OUTLINED_FUNCTION_22();
    return (v49)(v62);
  }

  v41 = v26[12];
  v42 = OUTLINED_FUNCTION_22();
  v43(v42);
  v45 = v91;
  v44 = v92;
  v46 = v93;
  (*(v91 + 32))(v93, v34, v92);
  type metadata accessor for ConverterUtils();
  sub_269423478();
  v55 = sub_269410C20();
  (*(v89 + 8))(v13, v90);
  if (v55)
  {
    v56 = OUTLINED_FUNCTION_18_0();
    v57 = sub_269424378();
    if (OUTLINED_FUNCTION_23(v57))
    {
      v58 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_20_0(v58);
      _os_log_impl(&dword_2693C9000, v56, v57, "Supported translation uso parse.", 0, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2694230A8();
  }

  else
  {
    v64 = v88;
    (*(v45 + 16))(v88, v46, v44);
    v65 = OUTLINED_FUNCTION_18_0();
    v66 = sub_269424378();
    if (OUTLINED_FUNCTION_23(v66))
    {
      v67 = OUTLINED_FUNCTION_17_0();
      v68 = v64;
      v69 = OUTLINED_FUNCTION_16_0();
      v95 = v69;
      *v67 = 136315138;
      sub_269423478();
      v70 = sub_269424128();
      v72 = v71;
      (*(v45 + 8))(v68, v44);
      v73 = sub_2693DB6E0(v70, v72, &v95);

      *(v67 + 4) = v73;
      OUTLINED_FUNCTION_13_0(&dword_2693C9000, v74, v66, "Unsupported uso parse: %s.");
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_1_3();
      v46 = v93;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      (*(v45 + 8))(v64, v44);
    }

    sub_2694230B8();
  }

  return (*(v45 + 8))(v46, v44);
}

uint64_t sub_2693D1274()
{
  OUTLINED_FUNCTION_11_0();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2694234E8();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = sub_269423488();
  v1[10] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_269423458();
  v1[14] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693D13F4, 0, 0);
}

uint64_t sub_2693D13F4()
{
  v130 = v0;
  v1 = v0;
  v126 = v0[4];
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v11 = v0 + 16;
  v10 = v1[16];
  v13 = v1 + 15;
  v12 = v1[15];
  v15 = v1 + 14;
  v14 = v1[14];
  v16 = v1[3];

  v124 = *(v12 + 16);
  v124(v10, v16, v14);
  if ((*(v12 + 88))(v10, v14) == *MEMORY[0x277D5C160])
  {
    v11 = v1 + 13;
    v17 = v1[13];
    v18 = v1[16];
    v13 = v1 + 11;
    v19 = v1[11];
    v15 = v1 + 10;
    v20 = v1[10];
    v21 = v1[9];
    (*(v1[15] + 96))(v18, v1[14]);
    (*(v19 + 32))(v17, v18, v20);
    type metadata accessor for ConverterUtils();
    sub_269423478();
    v22 = sub_269410C20();
    v23 = *(v1[6] + 8);
    v23(v1[9], v1[5]);
    if ((v22 & 1) == 0)
    {
      (*(v1[11] + 16))(v1[12], *v11, v1[10]);
      v111 = sub_269423FA8();
      v112 = sub_269424378();
      v113 = OUTLINED_FUNCTION_23(v112);
      v115 = v1[11];
      v114 = v1[12];
      v116 = v1[10];
      if (v113)
      {
        v117 = v1[7];
        v128 = v1[5];
        v118 = OUTLINED_FUNCTION_17_0();
        v119 = OUTLINED_FUNCTION_16_0();
        v129[0] = v119;
        *v118 = 136315138;
        sub_269423478();
        v120 = sub_269424128();
        LOBYTE(v128) = v112;
        v122 = v121;
        (*(v115 + 8))(v114, v116);
        v123 = sub_2693DB6E0(v120, v122, v129);

        *(v118 + 4) = v123;
        _os_log_impl(&dword_2693C9000, v111, v128, "Unsupported uso parse: %s.", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v119);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_1_3();
      }

      else
      {

        (*(v115 + 8))(v114, v116);
      }

LABEL_15:
      v60 = v1[13];
      v59 = v1[14];
      v62 = v1[10];
      v61 = v1[11];
      v63 = v1[3];
      type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
      OUTLINED_FUNCTION_0_4();
      sub_2693D2D08(v64, v65);
      v66 = OUTLINED_FUNCTION_7_0();
      v68 = OUTLINED_FUNCTION_21_0(v66, v67);
      v69(v68);
      swift_willThrow();
      (*(v61 + 8))(v60, v62);
LABEL_24:
      v104 = v1[16];
      v106 = v1[12];
      v105 = v1[13];
      v108 = v1[8];
      v107 = v1[9];
      v109 = v1[7];

      v110 = v1[1];

      return v110();
    }

    v70 = v1[8];
    v71 = *(v1[4] + 24);
    v72 = *v11;
    sub_269423478();
    v40 = sub_2694062B0(v70, 1);
    v23(v1[8], v1[5]);
    if (!v40)
    {
      v73 = sub_269423FA8();
      v74 = sub_269424378();
      if (OUTLINED_FUNCTION_15_0(v74))
      {
        v75 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v75);
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v76, v77, v78, v79, v80, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v81 = v1[14];
      v82 = v1[3];

      type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
      OUTLINED_FUNCTION_0_4();
      sub_2693D2D08(v83, v84);
      v85 = OUTLINED_FUNCTION_7_0();
      v87 = OUTLINED_FUNCTION_21_0(v85, v86);
      v88(v87);
      swift_willThrow();
      v24 = v85;
      v25 = sub_269423FA8();
      v26 = sub_269424378();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_17_0();
        v28 = OUTLINED_FUNCTION_16_0();
        v129[0] = v28;
        *v27 = 136315138;
        v1[2] = v85;
        v29 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
        v30 = sub_269424128();
        v32 = sub_2693DB6E0(v30, v31, v129);

        *(v27 + 4) = v32;
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  else
  {
    v38 = *(v1[4] + 16);
    v39 = sub_26940E444(v1[3], 1);
    if (!v39)
    {
      v89 = sub_269423FA8();
      v90 = sub_269424378();
      if (OUTLINED_FUNCTION_15_0(v90))
      {
        v91 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v91);
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v92, v93, v94, v95, v96, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v98 = v1[15];
      v97 = v1[16];
      v99 = v1[14];
      v100 = v1[3];

      type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
      OUTLINED_FUNCTION_0_4();
      sub_2693D2D08(v101, v102);
      OUTLINED_FUNCTION_7_0();
      v124(v103, v100, v99);
      swift_willThrow();
      (*(v98 + 8))(v97, v99);
      goto LABEL_24;
    }

    v40 = v39;
    v41 = sub_269423FA8();
    v42 = sub_269424368();

    v127 = v42;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_17_0();
      v125 = OUTLINED_FUNCTION_16_0();
      v129[0] = v125;
      *v43 = 136315138;
      v40 = v40;
      v44 = [v40 description];
      v45 = sub_269424118();
      v47 = v46;

      v48 = sub_2693DB6E0(v45, v47, v129);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_2693C9000, v41, v127, "Resulting intent: %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_1_3();
    }
  }

  v49 = *v15;
  v50 = *v13;
  v51 = v1[16];
  v53 = v1[12];
  v52 = v1[13];
  v55 = v1[8];
  v54 = v1[9];
  v56 = v1[7];
  (*(v50 + 8))(*v11, v49);

  v57 = v1[1];

  return v57(v40);
}

uint64_t sub_2693D1C08()
{
  v1 = type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101C0, &qword_269425D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2694256B0;
  v6 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_269424118();
  *(inited + 40) = v7;
  sub_2693D2FA0(v0, v4);
  v8 = sub_269424128();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_2694240B8();
}

uint64_t sub_2693D1D08(uint64_t a1)
{
  v2 = sub_2693D2D08(&qword_28030F730, type metadata accessor for TranslatePhraseStrategy.IntentConversionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2693D1D74(uint64_t a1)
{
  v2 = sub_2693D2D08(&qword_28030F730, type metadata accessor for TranslatePhraseStrategy.IntentConversionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2693D1DF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslatePhraseStrategy_log;
  v4 = sub_269423FC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_2693D1E64()
{
  sub_2693D1DF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2693D1EE4()
{
  result = sub_269423FC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693D1FA8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2693D2040;

  return sub_2693D1274();
}

uint64_t sub_2693D2040()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_2693D2134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TranslatePhraseStrategy(0);

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2693D2184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2693D3004;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2693D2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TranslatePhraseStrategy(0);
  *v11 = v5;
  v11[1] = sub_2693D3004;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_2693D2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TranslatePhraseStrategy(0);
  *v11 = v5;
  v11[1] = sub_2693D3004;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_2693D23E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for TranslatePhraseStrategy(0);
  *v11 = v5;
  v11[1] = sub_2693D3004;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_2693D24B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for TranslatePhraseStrategy(0);
  *v13 = v6;
  v13[1] = sub_2693D2598;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2693D2598()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2693D2680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693D2734;

  return (sub_2693D281C)(a1, a2);
}

uint64_t sub_2693D2734()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_10_0();

  return v5(v4);
}

uint64_t sub_2693D281C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_269422FE8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693D28DC, 0, 0);
}

uint64_t sub_2693D28DC()
{
  v1 = v0[2];
  sub_269423008();
  v2 = qword_28030F0E0;

  if (v2 != -1)
  {
    swift_once();
    v14 = v0[2];
  }

  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = qword_280314FD0;
  type metadata accessor for TranslatePhraseIntent();
  v8 = v7;
  OUTLINED_FUNCTION_14_0(v6);
  sub_269422FF8();
  v9 = OUTLINED_FUNCTION_19_0();
  v10(v9);

  v11 = OUTLINED_FUNCTION_10_0();

  return v12(v11);
}

uint64_t sub_2693D29E0()
{
  OUTLINED_FUNCTION_11_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_269422FE8();
  v0[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693D2A94, 0, 0);
}

uint64_t sub_2693D2A94()
{
  v1 = v0[2];
  sub_269423008();
  v2 = qword_28030F0F8;

  if (v2 != -1)
  {
    swift_once();
    v14 = v0[2];
  }

  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = qword_280314FF0;
  type metadata accessor for TranslatePhraseIntent();
  v8 = v7;
  OUTLINED_FUNCTION_14_0(v6);
  sub_269422FF8();
  v9 = OUTLINED_FUNCTION_19_0();
  v10(v9);

  v11 = OUTLINED_FUNCTION_10_0();

  return v12(v11);
}

uint64_t sub_2693D2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for TranslatePhraseStrategy(0);
  *v13 = v6;
  v13[1] = sub_2693D3004;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2693D2D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2693D2D50(uint64_t a1)
{
  result = sub_2693D2D08(&qword_28030F700, type metadata accessor for TranslatePhraseStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2693D2E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_269423458();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2693D2E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269423458();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_2693D2EB0(uint64_t a1)
{
  v2 = sub_269423458();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2693D2FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslatePhraseStrategy.IntentConversionError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_1_3()
{

  JUMPOUT(0x26D63C8E0);
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x26D63C8E0);
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return MEMORY[0x2821BA738](v1, v3, a1, v2);
}

BOOL OUTLINED_FUNCTION_15_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v3 = v0 + *(v1 - 112);

  return sub_269423FA8();
}

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2693D31F0()
{
  v0 = type metadata accessor for TranslationApiClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC22SiriTranslationIntents20TranslationApiClient_log;
  if (qword_28030F088 != -1)
  {
    swift_once();
  }

  v5 = sub_269423FC8();
  v6 = __swift_project_value_buffer(v5, qword_280314E58);
  result = (*(*(v5 - 8) + 16))(v3 + v4, v6, v5);
  qword_280314FD8 = v3;
  return result;
}

id sub_2693D32B8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D25D38];
    v3 = sub_269424118();
    v5 = sub_2693D53B8(v3, v4, v1);

    return (v5 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2693D3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v47 = a8;
  v45 = a7;
  v10 = sub_269422D48();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v46 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];

  sub_269422D28();

  sub_269422D28();
  v17 = objc_allocWithZone(MEMORY[0x277CE1BF0]);
  v18 = sub_2693D518C(v16, v14);
  [v18 setTaskHint_];
  sub_2693D554C(0, &qword_28030F768, 0x277CCA898);

  v19 = sub_2693D380C();
  [v18 setText_];

  [v18 setCensorSpeech_];
  sub_269423C48();
  sub_269423C38();
  sub_269423C18();

  sub_269423F08();
  v21 = v20;

  if (!v21)
  {
    v22 = [v18 uniqueID];
    sub_269424118();
  }

  v23 = sub_269424108();

  [v18 setUniqueID_];

  v24 = v18;
  v25 = sub_269423FA8();
  v26 = sub_269424368();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_17_0();
    v28 = OUTLINED_FUNCTION_16_0();
    aBlock[0] = v28;
    *v27 = 136315138;
    v29 = [v24 uniqueID];
    v30 = sub_269424118();
    v32 = v31;

    v33 = sub_2693DB6E0(v30, v32, aBlock);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2693C9000, v25, v26, "Request unique id is %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v34 = v24;
  v35 = sub_269423FA8();
  v36 = sub_269424368();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 67109378;
    *(v37 + 4) = [v34 censorSpeech];

    *(v37 + 8) = 2112;
    v39 = [v34 text];
    *(v37 + 10) = v39;
    *v38 = v39;
    _os_log_impl(&dword_2693C9000, v35, v36, "Censor speech flag is %{BOOL}d for %@", v37, 0x12u);
    sub_2693D5350(v38);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v35 = v34;
  }

  v40 = swift_allocObject();
  v41 = v45;
  v40[2] = v9;
  v40[3] = v41;
  v40[4] = v47;
  OUTLINED_FUNCTION_0_5(v40);
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2693D44D0;
  aBlock[3] = &block_descriptor_9;
  v42 = _Block_copy(aBlock);

  [v34 setTextTranslationHandler:v42];
  _Block_release(v42);
  v43 = v46;
  [v46 translate_];
}

id sub_2693D380C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_269424108();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_2693D3880(void *a1, void *a2, id a3, uint64_t a4, void (*a5)(void))
{
  v6 = 0x28030F000uLL;
  if (a3)
  {
    v8 = a3;
    v9 = sub_269423FA8();
    v10 = sub_269424378();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v114 = a3;
      v115 = v12;
      *v11 = 136315138;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F760, &qword_269425DC8);
      v14 = sub_269424128();
      v16 = sub_2693DB6E0(v14, v15, &v115);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2693C9000, v9, v10, "Translation call failed with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D63C8E0](v12, -1, -1);
      MEMORY[0x26D63C8E0](v11, -1, -1);
    }

    v17 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v18 = TranslatePhraseIntentResponse.init(code:userActivity:)(101, 0);
    a5();
LABEL_5:

    return;
  }

  v21 = type metadata accessor for TranslatePhraseIntentResponse();
  v22 = objc_allocWithZone(v21);
  v23 = TranslatePhraseIntentResponse.init(code:userActivity:)(4, 0);
  v24 = MEMORY[0x277D84F90];
  v110 = v23;
  if (!a2)
  {
    if (!a1)
    {
      v100 = sub_269423FA8();
      v101 = sub_269424378();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v114 = 0;
        v115 = v103;
        *v102 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F770, &qword_269425DD8);
        v104 = sub_269424128();
        v106 = sub_2693DB6E0(v104, v105, &v115);

        *(v102 + 4) = v106;
        _os_log_impl(&dword_2693C9000, v100, v101, "Translation call failed with unexpected result: %s and nil text.", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x26D63C8E0](v103, -1, -1);
        MEMORY[0x26D63C8E0](v102, -1, -1);
      }

      v107 = objc_allocWithZone(v21);
      v18 = TranslatePhraseIntentResponse.init(code:userActivity:)(101, 0);
      a5();

      goto LABEL_5;
    }

    v109 = a5;
    v115 = MEMORY[0x277D84F90];
    v26 = type metadata accessor for TranslationResultItem();
    v21 = a1;
    v76 = [v21 string];
    v77 = sub_269424118();
    v79 = v78;

    v80 = [v21 string];
    sub_269424118();

    v81 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v82 = sub_2693D50F8(v77, v79);
    v83 = [v21 string];
    v84 = sub_269424118();
    v86 = v85;

    sub_2693D5414(v84, v86, v82);
    [v82 setWordType_];
    [v82 setDefinition_];
    [v82 setTranslatedSantitizedText_];
    v30 = v82;
    MEMORY[0x26D63BE10]();
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  v25 = a2;
  v26 = &off_279C57000;
  v27 = [v25 translations];
  sub_2693D554C(0, &qword_28030F778, 0x277CE1BF8);
  v28 = sub_269424288();

  v29 = sub_26941C9D4(v28);

  if (v29)
  {
    v30 = v25;
    v31 = sub_269423FA8();
    v32 = sub_269424368();

    if (os_log_type_enabled(v31, v32))
    {
      v21 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v115 = v111;
      *v21 = 136315138;
      v33 = v30;
      v34 = [v33 description];
      v35 = a5;
      v36 = sub_269424118();
      v6 = v37;

      v38 = v36;
      a5 = v35;
      v26 = &off_279C57000;
      v39 = sub_2693DB6E0(v38, v6, &v115);

      *(v21 + 4) = v39;
      _os_log_impl(&dword_2693C9000, v31, v32, "Received translation result: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x26D63C8E0](v111, -1, -1);
      MEMORY[0x26D63C8E0](v21, -1, -1);
    }

    v115 = v24;
    v40 = [v30 translations];
    v41 = sub_269424288();

    v42 = sub_26941C9D4(v41);
    if (!v42)
    {
LABEL_51:

      sub_2693D5478(v24, v110);
      (a5)(v110);

      return;
    }

    v43 = v42;
    v108 = v30;
    v109 = a5;
    type metadata accessor for TranslationResultItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v43 >= 1)
    {
      v44 = 0;
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x26D63C060](v44, v41);
        }

        else
        {
          v45 = *(v41 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = [v45 formattedString];
        v48 = sub_269424118();
        v50 = v49;

        v51 = [v46 formattedString];
        sub_269424118();

        v52 = objc_allocWithZone(ObjCClassFromMetadata);
        v53 = sub_2693D50F8(v48, v50);
        v54 = [v46 formattedString];
        v55 = sub_269424118();
        v57 = v56;

        sub_2693D5414(v55, v57, v53);
        v58 = [v46 senses];
        sub_2693D554C(0, &qword_28030F780, 0x277CE1C20);
        v59 = sub_269424288();

        if (v59 >> 62)
        {
          if (!sub_269424588())
          {
            goto LABEL_24;
          }
        }

        else if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        sub_26942008C(0, (v59 & 0xC000000000000001) == 0, v59);
        if ((v59 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x26D63C060](0, v59);
        }

        else
        {
          v60 = *(v59 + 32);
        }

        v61 = v60;

        v62 = [v61 labels];

        v63 = sub_269424288();
        if (v63[2])
        {
          v64 = v63[4];
          v65 = v63[5];

          v66 = sub_269424108();

          goto LABEL_25;
        }

LABEL_24:

        v66 = 0;
LABEL_25:
        [v53 setWordType_];

        v67 = [v46 senses];
        v68 = sub_269424288();

        if (v68 >> 62)
        {
          if (!sub_269424588())
          {
LABEL_32:
            v71 = 0;
            goto LABEL_33;
          }
        }

        else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        sub_26942008C(0, (v68 & 0xC000000000000001) == 0, v68);
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x26D63C060](0, v68);
        }

        else
        {
          v69 = *(v68 + 32);
        }

        v70 = v69;

        v71 = [v70 definition];

        if (v71)
        {
          goto LABEL_34;
        }

        sub_269424118();
        v71 = sub_269424108();
LABEL_33:

LABEL_34:
        [v53 setDefinition_];

        sub_2693D54EC(v46, &selRef_sanitizedFormattedString);
        if (v72)
        {
          v73 = sub_269424108();
        }

        else
        {
          v73 = 0;
        }

        [v53 setTranslatedSantitizedText_];

        sub_2693D54EC(v46, &selRef_romanization);
        if (v74)
        {
          v75 = sub_269424108();
        }

        else
        {
          v75 = 0;
        }

        [v53 setRomanization_];

        MEMORY[0x26D63BE10]();
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2694242A8();
        }

        ++v44;
        sub_2694242C8();
        v24 = v115;

        if (v43 == v44)
        {
          v30 = v108;
          goto LABEL_51;
        }
      }
    }

    __break(1u);
LABEL_61:
    sub_2694242A8();
LABEL_48:
    sub_2694242C8();
    v87 = v115;
    v88 = *(v6 + 1848);

    v89 = sub_269423FA8();
    v90 = sub_269424368();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v114 = v92;
      *v91 = 136315138;
      v93 = MEMORY[0x26D63BE40](v87, v26);
      v95 = sub_2693DB6E0(v93, v94, &v114);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_2693C9000, v89, v90, "Constructed translation result object using special TEXT callback parameter: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x26D63C8E0](v92, -1, -1);
      MEMORY[0x26D63C8E0](v91, -1, -1);
    }

    sub_2693D5478(v87, v110);
    (v109)(v110);

    return;
  }

  v96 = sub_269423FA8();
  v97 = sub_269424378();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_2693C9000, v96, v97, "Translation result is empty", v98, 2u);
    MEMORY[0x26D63C8E0](v98, -1, -1);
  }

  v99 = objc_allocWithZone(v21);
  v113 = TranslatePhraseIntentResponse.init(code:userActivity:)(101, 0);
  a5();
}

void sub_2693D44D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

void sub_2693D4578(uint64_t a1, uint64_t a2, NSObject *a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v84 = a6;
  v85 = a7;
  v83 = a5;
  v89 = a3;
  v8 = sub_269422D48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = v79 - v14;

  v15._countAndFlagsBits = OUTLINED_FUNCTION_22();
  TranslationLanguages.init(rawValue:)(v15);
  OUTLINED_FUNCTION_5_1();
  if (!v22 || (v17 = OUTLINED_FUNCTION_22(), static TranslationLanguages.getByLocale(locale:)(v17, v18), OUTLINED_FUNCTION_5_1(), !v22))
  {
    countAndFlagsBits = 0x4B485F687ALL;
    v20 = sub_2693D6D00(v16);
    v22 = sub_26940C22C(v20) == 6649209 && v21 == 0xE300000000000000;
    if (v22)
    {
      v81 = v8;

      object = 0xE500000000000000;
      goto LABEL_18;
    }

    v23 = sub_269424688();

    if (v23)
    {
      v81 = v8;
      object = 0xE500000000000000;
      countAndFlagsBits = 0x4B485F687ALL;
LABEL_18:

      v35 = v88;
      sub_269422D28();

      v82 = object;
      sub_269422D28();
      v36 = objc_allocWithZone(MEMORY[0x277CE1B38]);
      v37 = sub_2693D518C(v35, v13);
      v38 = OBJC_IVAR____TtC22SiriTranslationIntents20TranslationApiClient_log;
      v39 = v37;
      v86 = v38;
      v40 = sub_269423FA8();
      v41 = sub_269424368();

      v42 = os_log_type_enabled(v40, v41);
      v87 = v39;
      v79[1] = countAndFlagsBits;
      v80 = v9;
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_17_0();
        v44 = OUTLINED_FUNCTION_16_0();
        aBlock[0] = v44;
        *v43 = 136315138;
        v45 = a4;
        v46 = v39;
        v47 = [v46 description];
        v48 = sub_269424118();
        v50 = v49;

        a4 = v45;
        v51 = sub_2693DB6E0(v48, v50, aBlock);
        v39 = v87;

        *(v43 + 4) = v51;
        _os_log_impl(&dword_2693C9000, v40, v41, "Speak request locale: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v52 = [objc_allocWithZone(MEMORY[0x277CE1B78]) initWithLocalePair_];
      [v52 setTaskHint:4];
      v53 = sub_269424108();
      [v52 setText:v53];

      v54 = v83;
      if ((v83 & 0x100000000) != 0)
      {
        sub_269423C48();
        sub_269423C38();
        sub_269423C18();

        v54 = sub_269423F38();
      }

      [v52 setAudioSessionID:v54];
      v55 = sub_269423FA8();
      v56 = sub_269424368();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 67109120;
        *(v57 + 4) = [v52 audioSessionID];

        _os_log_impl(&dword_2693C9000, v55, v56, "Voice session id is %u", v57, 8u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v55 = v52;
      }

      v58 = swift_allocObject();
      v59 = v85;
      *(v58 + 16) = v84;
      *(v58 + 24) = v59;
      OUTLINED_FUNCTION_0_5(v58);
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2693D4E04;
      aBlock[3] = &block_descriptor;
      v60 = _Block_copy(aBlock);

      [v52 setCompletionHandler:v60];
      _Block_release(v60);

      v61 = sub_269423FA8();
      v62 = sub_269424368();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_17_0();
        v64 = OUTLINED_FUNCTION_16_0();
        v85 = a4;
        v65 = v64;
        aBlock[0] = v64;
        *v63 = 136315138;
        v66 = v88;
        sub_269422D28();
        sub_2693D52AC();
        v67 = v81;
        v68 = sub_269424668();
        v70 = v69;
        (*(v80 + 8))(v66, v67);
        v71 = sub_2693DB6E0(v68, v70, aBlock);

        *(v63 + 4) = v71;
        _os_log_impl(&dword_2693C9000, v61, v62, "Speak request API locale pair is : %s.", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        a4 = v85;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v72 = sub_269423FA8();
      v73 = sub_269424368();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_17_0();
        v75 = OUTLINED_FUNCTION_16_0();
        aBlock[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_2693DB6E0(v89, a4, aBlock);
        _os_log_impl(&dword_2693C9000, v72, v73, "Speak request text : %s.", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v76 = v87;
      v77 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
      [v77 translate_];

      return;
    }
  }

  v25 = OUTLINED_FUNCTION_22();
  static TranslationLanguages.getByLocale(locale:)(v25, v26);
  OUTLINED_FUNCTION_5_1();
  if (!v22 || (, v27._countAndFlagsBits = OUTLINED_FUNCTION_22(), TranslationLanguages.init(rawValue:)(v27), OUTLINED_FUNCTION_5_1(), !v22))
  {
    v81 = v8;
    v34 = TranslationLanguages.getLocaleString()();
    countAndFlagsBits = v34._countAndFlagsBits;
    object = v34._object;
    goto LABEL_18;
  }

  v89 = sub_269423FA8();
  v28 = sub_269424368();

  if (os_log_type_enabled(v89, v28))
  {
    v29 = OUTLINED_FUNCTION_17_0();
    v30 = OUTLINED_FUNCTION_16_0();
    aBlock[0] = v30;
    *v29 = 136315138;
    v31 = OUTLINED_FUNCTION_22();
    *(v29 + 4) = sub_2693DB6E0(v31, v32, v33);
    _os_log_impl(&dword_2693C9000, v89, v28, "Unsupported language error for given language: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v78 = v89;
  }
}

uint64_t sub_2693D4D84(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F760, &qword_269425DC8);
    a1 = sub_269424128();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  a2(a1, v5);
}

void sub_2693D4E04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2693D4E70()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  [v0 cleanup];
}

uint64_t sub_2693D4F24()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents20TranslationApiClient_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for TranslationApiClient()
{
  result = qword_28030F740;
  if (!qword_28030F740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693D5014()
{
  result = sub_269423FC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2693D50A4()
{
  result = qword_28030F750;
  if (!qword_28030F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F750);
  }

  return result;
}

id sub_2693D50F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_269424108();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269424108();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

id sub_2693D518C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269422D38();
  v7 = sub_269422D38();
  v8 = [v3 initWithSourceLocale:v6 targetLocale:v7];

  v9 = sub_269422D48();
  v10 = *(*(v9 - 8) + 8);
  v10(a2, v9);
  v10(a1, v9);
  return v8;
}

uint64_t sub_2693D5254()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2693D52AC()
{
  result = qword_28030F758;
  if (!qword_28030F758)
  {
    sub_269422D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F758);
  }

  return result;
}

uint64_t sub_2693D5304()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2693D5350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310170, &qword_269425DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2693D53B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

void sub_2693D5414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setTranslatedText_];
}

void sub_2693D5478(uint64_t a1, void *a2)
{
  type metadata accessor for TranslationResultItem();
  v3 = sub_269424278();

  [a2 setTranslationResultItems_];
}

uint64_t sub_2693D54EC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_269424118();

  return v4;
}

uint64_t sub_2693D554C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t type metadata accessor for TranslateCATsSimple()
{
  result = qword_28030F788;
  if (!qword_28030F788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693D5670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v9 + 93) = v13;
  *(v9 + 48) = v12;
  *(v9 + 56) = v8;
  *(v9 + 92) = v11;
  *(v9 + 91) = a7;
  *(v9 + 90) = a6;
  *(v9 + 89) = a5;
  *(v9 + 88) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a8;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2693D56C0, 0, 0);
}

uint64_t sub_2693D56C0()
{
  v21 = *(v0 + 92);
  v1 = *(v0 + 91);
  v2 = *(v0 + 90);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v8 = swift_allocObject();
  *(v0 + 64) = v8;
  *(v8 + 16) = xmmword_269425E80;
  *(v8 + 32) = 0x65676175676E616CLL;
  *(v8 + 40) = 0xE900000000000073;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F608, &qword_269425758);
  *(v8 + 48) = v7;
  *(v8 + 72) = v9;
  strcpy((v8 + 80), "languageGroup");
  v10 = MEMORY[0x277D837D0];
  *(v8 + 94) = -4864;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 120) = v10;
  strcpy((v8 + 128), "isConclusion");
  v11 = MEMORY[0x277D839B0];
  *(v8 + 141) = 0;
  *(v8 + 142) = -5120;
  *(v8 + 144) = v4;
  *(v8 + 168) = v11;
  strcpy((v8 + 176), "isFirstWindow");
  *(v8 + 190) = -4864;
  *(v8 + 192) = v3;
  *(v8 + 216) = v11;
  strcpy((v8 + 224), "isLastWindow");
  *(v8 + 237) = 0;
  *(v8 + 238) = -5120;
  *(v8 + 240) = v2;
  *(v8 + 264) = v11;
  *(v8 + 272) = 0xD000000000000016;
  *(v8 + 280) = 0x8000000269429120;
  *(v8 + 288) = v1;
  *(v8 + 312) = v11;
  *(v8 + 320) = 0xD000000000000013;
  *(v8 + 328) = 0x8000000269429140;
  if (v21)
  {
    v12 = 0;
    v13 = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = MEMORY[0x277D839F8];
  }

  v14 = *(v0 + 93);
  *(v8 + 336) = v12;
  *(v8 + 360) = v13;
  *(v8 + 368) = 0x6574496C61746F74;
  *(v8 + 376) = 0xEA0000000000736DLL;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  else
  {
    v15 = *(v0 + 48);
    v16 = MEMORY[0x277D839F8];
  }

  *(v8 + 384) = v15;
  *(v8 + 408) = v16;
  v17 = *(MEMORY[0x277D55C70] + 4);
  v22 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_2693D59A4;
  v19 = *(v0 + 56);

  return v22(0xD000000000000027, 0x80000002694295F0, v8);
}

uint64_t sub_2693D59A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2693D5AFC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_2693D5AFC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_2693D5B60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2693D5BB4(a1, a2);
}

uint64_t sub_2693D5BB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_269423EB8();
  v6 = OUTLINED_FUNCTION_0_6(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2693D5E48(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_269423DB8();
  (*(v8 + 8))(a2, v2);
  sub_2693D5EB8(a1);
  return v16;
}

uint64_t sub_2693D5D10(uint64_t a1, uint64_t a2)
{
  v5 = sub_269423EB8();
  v6 = OUTLINED_FUNCTION_0_6(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_269423DC8();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2693D5E10()
{
  v0 = sub_269423DE8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2693D5E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693D5EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693D5F38@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v20 - v13;
  v15 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v5, a2);
  sub_2693D609C(a1, v14);

  return sub_2693D610C(v17, v14, a2, a3, a4);
}

uint64_t sub_2693D609C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693D610C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if ((*(a4 + 16))(a3, a4))
  {
    (*(a4 + 8))(a3, a4);
    v14 = sub_269423FF8();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_269424018();
    sub_2693D63F8(a2);
    (*(*(a3 - 8) + 8))(a1, a3);
    v15 = sub_269424038();
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, v15);
  }

  else
  {

    if (qword_28030F0B8 != -1)
    {
      swift_once();
    }

    v17 = sub_269423FC8();
    __swift_project_value_buffer(v17, qword_280314EE8);
    v18 = sub_269423FA8();
    v19 = sub_269424388();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2693C9000, v18, v19, "RREntityConvertible did not produce a USOEntity", v20, 2u);
      MEMORY[0x26D63C8E0](v20, -1, -1);
    }

    sub_2693D63F8(a2);
    (*(*(a3 - 8) + 8))(a1, a3);
    v21 = sub_269424038();

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v21);
  }
}

uint64_t sub_2693D63F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F798, "JM");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693D6460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[4] = a5;
  v24[5] = a6;
  v24[2] = a3;
  v24[3] = a4;
  v24[1] = a2;
  v6 = 0x74616C736E617274;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = sub_269422C38();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269422C28();
  sub_269422C18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F7A0, &unk_269425F70);
  v19 = *(sub_269422BC8() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_269425F30;
  sub_269422BB8();
  sub_269422BB8();
  sub_269422BB8();
  sub_269422BF8();
  sub_269422C08();
  v22 = sub_269422C88();
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_2693D5EB8(v10);
  }

  else
  {
    v6 = sub_269422C58();
    (*(*(v22 - 8) + 8))(v10, v22);
  }

  (*(v14 + 8))(v18, v11);
  return v6;
}

id sub_2693D6744()
{
  v0 = sub_269422D18();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_269422C78();
  v13 = sub_269422C88();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    v14 = sub_269422C68();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  [v12 setPunchOutUri_];

  v15 = v12;
  sub_269422D08();
  v16 = sub_269422CF8();
  v18 = v17;
  (*(v3 + 8))(v7, v0);
  sub_2693D6BAC(v16, v18, v15);

  return v15;
}

void sub_2693D6934(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  sub_2693D6C10();
  sub_2693D6460(a1, a2, a3, a4, a5, a6);
  v29 = sub_2693D6744();

  v14 = [v29 dictionary];
  if (v14)
  {
    v15 = v14;
    v30[0] = 0;
    v16 = [objc_opt_self() dataWithPropertyList:v14 format:200 options:0 error:v30];
    v17 = v30[0];
    if (v16)
    {
      v18 = sub_269422CB8();
      v20 = v19;

      sub_269422CA8();
      sub_2693D6C54(v18, v20);

      sub_269423D78();

      v21 = sub_269423DA8();
      v22 = a7;
      v23 = 0;
    }

    else
    {
      v26 = v17;
      v27 = sub_269422C48();

      swift_willThrow();
      v21 = sub_269423DA8();
      v22 = a7;
      v23 = 1;
    }

    __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
    v28 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v24 = sub_269423DA8();
    __swift_storeEnumTagSinglePayload(a7, 1, 1, v24);
    v25 = *MEMORY[0x277D85DE8];
  }
}

void sub_2693D6BAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setAceId_];
}

unint64_t sub_2693D6C10()
{
  result = qword_28030F7A8;
  if (!qword_28030F7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030F7A8);
  }

  return result;
}

uint64_t sub_2693D6C54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

SiriTranslationIntents::TranslationLanguages_optional __swiftcall TranslationLanguages.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2694246B8();

  if (v1 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v1;
  }
}

uint64_t static TranslationLanguages.getByLocale(locale:)(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  while (1)
  {
    v6 = byte_2879F39D8[v5++ + 32];
    v7 = 0xE500000000000000;
    v8 = 0x41535F7261;
    switch(v6)
    {
      case 1:
        v8 = 0x42475F6E65;
        break;
      case 2:
        v7 = 0xE600000000000000;
        v8 = 0x4E435F657579;
        break;
      case 3:
        v8 = 0x4B485F687ALL;
        break;
      case 4:
        v12 = 1130326138;
        goto LABEL_28;
      case 5:
        v8 = 0x57545F687ALL;
        break;
      case 6:
        v11 = 1314876526;
        goto LABEL_14;
      case 7:
        v13 = 1432317541;
        goto LABEL_26;
      case 8:
        v10 = 1180660326;
        goto LABEL_17;
      case 9:
        v9 = 1147102564;
        goto LABEL_24;
      case 10:
        v8 = 0x54495F7469;
        break;
      case 11:
        v8 = 0x44495F6469;
        break;
      case 12:
        v8 = 0x504A5F616ALL;
        break;
      case 13:
        v10 = 1264545643;
        goto LABEL_17;
      case 14:
        v11 = 1348430960;
LABEL_14:
        v8 = v11 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
        break;
      case 15:
        v10 = 1113551984;
        goto LABEL_17;
      case 16:
        v8 = 0x55525F7572;
        break;
      case 17:
        v13 = 1163883365;
LABEL_26:
        v8 = v13 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
        break;
      case 18:
        v8 = 0x48545F6874;
        break;
      case 19:
        v10 = 1415541364;
LABEL_17:
        v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
        break;
      case 20:
        v12 = 1449093494;
        goto LABEL_28;
      case 21:
        v12 = 1230989672;
LABEL_28:
        v8 = v12 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
        break;
      case 22:
        break;
      default:
        v9 = 1096774241;
LABEL_24:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
        break;
    }

    if (v8 == a1 && v7 == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_17_1();
    if (v2)
    {
      return v6;
    }

    v15 = 0xE600000000000000;
    v16 = 0x636962617261;
    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_30();
        break;
      case 2:
        v16 = OUTLINED_FUNCTION_24();
        break;
      case 3:
        v16 = 0xD000000000000011;
        v15 = 0x8000000269428CD0;
        break;
      case 4:
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_25();
        break;
      case 5:
        v16 = 0xD000000000000011;
        v15 = 0x8000000269428D00;
        break;
      case 6:
        v16 = OUTLINED_FUNCTION_23_0();
        break;
      case 7:
        v15 = 0xE700000000000000;
        v19 = 1818717797;
        goto LABEL_60;
      case 8:
        v16 = 0x68636E657266;
        break;
      case 9:
        v18 = 1836213607;
        goto LABEL_52;
      case 10:
        v15 = 0xE700000000000000;
        v17 = 1818326121;
        goto LABEL_56;
      case 11:
        v16 = OUTLINED_FUNCTION_12_1();
        break;
      case 12:
        v15 = 0xE800000000000000;
        v16 = OUTLINED_FUNCTION_16_1();
        break;
      case 13:
        v18 = 1701998443;
LABEL_52:
        v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6E6100000000;
        break;
      case 14:
        v16 = 0x6873696C6F70;
        break;
      case 15:
        v16 = OUTLINED_FUNCTION_14_1();
        break;
      case 16:
        v15 = 0xE700000000000000;
        v17 = 1936946546;
LABEL_56:
        v16 = v17 | 0x6E616900000000;
        break;
      case 17:
        v15 = 0xE700000000000000;
        v19 = 1851879539;
        goto LABEL_60;
      case 18:
        v15 = 0xE400000000000000;
        v16 = 1767991412;
        break;
      case 19:
        v15 = 0xE700000000000000;
        v19 = 1802663284;
LABEL_60:
        v16 = v19 | 0x68736900000000;
        break;
      case 20:
        v16 = OUTLINED_FUNCTION_13_1();
        break;
      case 21:
        v16 = OUTLINED_FUNCTION_22_0();
        break;
      case 22:
        v16 = 0xD000000000000011;
        v15 = 0x8000000269428DA0;
        break;
      default:
        break;
    }

    if (v16 == a1 && v15 == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_17_1();
    if (v2)
    {
      return v6;
    }

    if (v5 == 23)
    {
      return 23;
    }
  }

  return v6;
}

Swift::String __swiftcall TranslationLanguages.getLocaleString()()
{
  v1 = v0;
  v2 = 0xE500000000000000;
  v3 = 0x41535F7261;
  switch(v1)
  {
    case 1:
      v3 = 0x42475F6E65;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x4E435F657579;
      break;
    case 3:
      v3 = 0x4B485F687ALL;
      break;
    case 4:
      v6 = 1130326138;
      goto LABEL_18;
    case 5:
      v3 = 0x57545F687ALL;
      break;
    case 6:
      v5 = 1314876526;
      goto LABEL_22;
    case 7:
      v8 = 1432317541;
      goto LABEL_16;
    case 8:
      v7 = 1180660326;
      goto LABEL_28;
    case 9:
      v4 = 1147102564;
      goto LABEL_9;
    case 10:
      v3 = 0x54495F7469;
      break;
    case 11:
      v3 = 0x44495F6469;
      break;
    case 12:
      v3 = 0x504A5F616ALL;
      break;
    case 13:
      v7 = 1264545643;
      goto LABEL_28;
    case 14:
      v5 = 1348430960;
LABEL_22:
      v3 = v5 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
      break;
    case 15:
      v7 = 1113551984;
      goto LABEL_28;
    case 16:
      v3 = 0x55525F7572;
      break;
    case 17:
      v8 = 1163883365;
LABEL_16:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
      break;
    case 18:
      v3 = 0x48545F6874;
      break;
    case 19:
      v7 = 1415541364;
LABEL_28:
      v3 = v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
      break;
    case 20:
      v6 = 1449093494;
LABEL_18:
      v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 21:
      v3 = 0x4E495F6968;
      break;
    case 22:
      break;
    default:
      v4 = 1096774241;
LABEL_9:
      v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2693D737C()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    v3 = byte_2879F39D8[v1++ + 32];
    v4 = 0x8000000269428DA0;
    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_20_1();
        goto LABEL_17;
      case 2:
        OUTLINED_FUNCTION_24();
        goto LABEL_17;
      case 3:
        v4 = 0x8000000269428CD0;
        goto LABEL_13;
      case 4:
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_19_1();
        goto LABEL_17;
      case 5:
        v4 = 0x8000000269428D00;
        goto LABEL_13;
      case 6:
        OUTLINED_FUNCTION_23_0();
        goto LABEL_17;
      case 11:
        OUTLINED_FUNCTION_12_1();
        goto LABEL_17;
      case 12:
        OUTLINED_FUNCTION_16_1();
        goto LABEL_17;
      case 15:
        OUTLINED_FUNCTION_14_1();
        goto LABEL_17;
      case 20:
        OUTLINED_FUNCTION_13_1();
        goto LABEL_17;
      case 21:
        OUTLINED_FUNCTION_22_0();
        goto LABEL_17;
      case 22:
LABEL_13:
        if (0x8000000269428DA0 != v4)
        {
          goto LABEL_17;
        }

        break;
      default:
LABEL_17:
        sub_269424688();
        OUTLINED_FUNCTION_17_1();
        if ((v0 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26941EF94(0, *(v2 + 16) + 1, 1, v2);
            v2 = v6;
          }

          v0 = *(v2 + 16);
          v5 = *(v2 + 24);
          if (v0 >= v5 >> 1)
          {
            sub_26941EF94(v5 > 1, v0 + 1, 1, v2);
            v2 = v7;
          }

          *(v2 + 16) = v0 + 1;
          *(v2 + v0 + 32) = v3;
        }

        break;
    }
  }

  while (v1 != 23);
  return v2;
}

void sub_2693D768C(char a1)
{
  switch(a1)
  {
    case 6:
      OUTLINED_FUNCTION_3_2();
      break;
    case 7:
      OUTLINED_FUNCTION_11_1(0x6C676E65u);
      break;
    case 8:
      OUTLINED_FUNCTION_6_1();
      break;
    case 9:
      OUTLINED_FUNCTION_21_1(1836213607);
      break;
    case 10:
      OUTLINED_FUNCTION_10_1(0x6C617469u);
      break;
    case 11:
      OUTLINED_FUNCTION_0_7();
      break;
    case 12:
      OUTLINED_FUNCTION_1_4();
      break;
    case 13:
      OUTLINED_FUNCTION_21_1(1701998443);
      break;
    case 14:
      OUTLINED_FUNCTION_5_2();
      break;
    case 15:
    case 20:
      OUTLINED_FUNCTION_9_1();
      break;
    case 16:
      OUTLINED_FUNCTION_10_1(0x73737572u);
      break;
    case 17:
      OUTLINED_FUNCTION_11_1(0x6E617073u);
      break;
    case 18:
      OUTLINED_FUNCTION_4_2();
      break;
    case 19:
      OUTLINED_FUNCTION_11_1(0x6B727574u);
      break;
    default:
      return;
  }
}

Swift::String __swiftcall TranslationLanguages.getCoreLanguage()()
{
  v1 = v0;
  v2 = 0x636962617261;
  v3 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
    case 7:
      v2 = OUTLINED_FUNCTION_11_1(0x6C676E65u);
      break;
    case 2:
    case 3:
      v2 = 0x73656E6F746E6163;
      v3 = 0xE900000000000065;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v2 = 0x6573656E696863;
      break;
    case 5:
      v3 = 0x8000000269429650;
      v2 = 0xD000000000000012;
      break;
    case 6:
      v2 = OUTLINED_FUNCTION_3_2();
      break;
    case 8:
      v2 = OUTLINED_FUNCTION_6_1();
      break;
    case 9:
      v2 = OUTLINED_FUNCTION_21_1(1836213607);
      break;
    case 10:
      v2 = OUTLINED_FUNCTION_10_1(0x6C617469u);
      break;
    case 11:
      v2 = OUTLINED_FUNCTION_0_7();
      break;
    case 12:
      v2 = OUTLINED_FUNCTION_1_4();
      break;
    case 13:
      v2 = OUTLINED_FUNCTION_21_1(1701998443);
      break;
    case 14:
      v2 = OUTLINED_FUNCTION_5_2();
      break;
    case 15:
    case 20:
      OUTLINED_FUNCTION_9_1();
      break;
    case 16:
      v2 = OUTLINED_FUNCTION_10_1(0x73737572u);
      break;
    case 17:
      v2 = OUTLINED_FUNCTION_11_1(0x6E617073u);
      break;
    case 18:
      v2 = OUTLINED_FUNCTION_4_2();
      break;
    case 19:
      v2 = OUTLINED_FUNCTION_11_1(0x6B727574u);
      break;
    case 21:
      v3 = 0xE500000000000000;
      v2 = 0x69646E6968;
      break;
    default:
      break;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_2693D7A2C(uint64_t a1, void *a2, char a3)
{
  v7 = TranslationLanguages.getLocaleString()();
  if (v7._countAndFlagsBits == a1 && v7._object == a2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_1();
  if (v3)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_29();
  v9 = sub_26940BCAC();
  if (v9 == 40)
  {
    goto LABEL_29;
  }

  v10 = sub_26940BD00(v9);
  if (sub_26940C22C(v10) == 6649209 && v11 == 0xE300000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_17_1();
    if ((v3 & 1) == 0)
    {
      if (sub_26940C22C(v10) == 28261 && v13 == 0xE200000000000000)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_17_1();
      if (v3)
      {
        goto LABEL_50;
      }

      if (OUTLINED_FUNCTION_37() == v3 && v15 == 0xE500000000000000)
      {
LABEL_49:
      }

      else
      {
        v17 = OUTLINED_FUNCTION_35();

        if ((v17 & 1) == 0)
        {
          v18 = sub_2693D6D00(a3);
          if (sub_26940C22C(v18) != 6649209 || v19 != 0xE300000000000000)
          {
            v21 = OUTLINED_FUNCTION_8_0();

            if (v21)
            {
LABEL_29:
              v22 = 0;
              return v22 & 1;
            }

            goto LABEL_50;
          }

LABEL_28:

          goto LABEL_29;
        }
      }

LABEL_50:
      if (sub_26940C22C(v10) != 26984 || v36 != 0xE200000000000000)
      {
        v38 = sub_269424688();

        v22 = 0;
        if ((v38 & 1) != 0 || a3 == 22)
        {
          return v22 & 1;
        }

        v39 = sub_2693D6D00(a3);
        v40 = sub_26940C22C(v39);
        v42 = v41;
        if (v40 != sub_26940C22C(v10) || v42 != v43)
        {
          v45 = OUTLINED_FUNCTION_18_1();

          v22 = v45 ^ 1;
          return v22 & 1;
        }
      }

      goto LABEL_28;
    }
  }

  TranslationLanguages.rawValue.getter(a3);
  v26 = v25;
  if (v24 == 0x6873696C676E65 && v25 == 0xE700000000000000)
  {
    goto LABEL_47;
  }

  v28 = v24;
  v29 = sub_269424688();

  if (v29)
  {
    goto LABEL_48;
  }

  if (v28 == 0x6568736974697262 && v26 == 0xEE006873696C676ELL)
  {
    goto LABEL_47;
  }

  v31 = sub_269424688();

  if (v31)
  {
LABEL_48:
    v22 = 1;
    return v22 & 1;
  }

  OUTLINED_FUNCTION_28();
  if (v28 == v33 && v26 == v32)
  {
LABEL_47:

    goto LABEL_48;
  }

  v35 = sub_269424688();

  return v35 & 1;
}

void TranslationLanguages.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_20_1();
      break;
    case 4:
      OUTLINED_FUNCTION_19_1();
      break;
    case 6:
      OUTLINED_FUNCTION_3_2();
      break;
    case 7:
      OUTLINED_FUNCTION_11_1(0x6C676E65u);
      break;
    case 8:
      OUTLINED_FUNCTION_6_1();
      break;
    case 9:
      OUTLINED_FUNCTION_21_1(1836213607);
      break;
    case 10:
      OUTLINED_FUNCTION_10_1(0x6C617469u);
      break;
    case 11:
      OUTLINED_FUNCTION_0_7();
      break;
    case 12:
      OUTLINED_FUNCTION_1_4();
      break;
    case 13:
      OUTLINED_FUNCTION_21_1(1701998443);
      break;
    case 14:
      OUTLINED_FUNCTION_5_2();
      break;
    case 15:
    case 20:
      OUTLINED_FUNCTION_9_1();
      break;
    case 16:
      OUTLINED_FUNCTION_10_1(0x73737572u);
      break;
    case 17:
      OUTLINED_FUNCTION_11_1(0x6E617073u);
      break;
    case 18:
      OUTLINED_FUNCTION_4_2();
      break;
    case 19:
      OUTLINED_FUNCTION_11_1(0x6B727574u);
      break;
    default:
      return;
  }
}

unint64_t sub_2693D7F58()
{
  result = qword_28030F7B0;
  if (!qword_28030F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7B0);
  }

  return result;
}

SiriTranslationIntents::TranslationLanguages_optional sub_2693D7FC4@<W0>(Swift::String *a1@<X0>, SiriTranslationIntents::TranslationLanguages_optional *a2@<X8>)
{
  result.value = TranslationLanguages.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_2693D7FF4(void *a1@<X8>)
{
  TranslationLanguages.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_2693D8024()
{
  result = qword_28030F7B8;
  if (!qword_28030F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7B8);
  }

  return result;
}

unint64_t sub_2693D807C()
{
  result = qword_28030F7C0;
  if (!qword_28030F7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F7C8, &qword_269426048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7C0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2693D813C()
{
  result = qword_28030F7D0;
  if (!qword_28030F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7D0);
  }

  return result;
}

uint64_t sub_2693D8190(uint64_t a1, uint64_t a2)
{
  v4 = sub_2693D8D38();
  v5 = sub_2693D8D8C();
  v6 = sub_2693D8DE0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for TranslationLanguages(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TranslationLanguages(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        JUMPOUT(0x2693D8358);
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2693D8390(uint64_t a1)
{
  type metadata accessor for NLConverter();
  sub_269423468();
  sub_26940D5B8(v17);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (!a1)
  {
    OUTLINED_FUNCTION_15_1();
    if (v4)
    {
      OUTLINED_FUNCTION_26();
      v8 = v5 && v4 == 0xE600000000000000;
      if (!v8 && (OUTLINED_FUNCTION_7_1() & 1) == 0)
      {
        OUTLINED_FUNCTION_32();
        if (!v5 || v4 != 0xE500000000000000)
        {
          v10 = OUTLINED_FUNCTION_2_3();

          if (v10)
          {
            return a1;
          }

          return v1;
        }
      }

LABEL_50:

      return a1;
    }

    return v1;
  }

  if (a1 != 1)
  {
    v1 = 0x6573656E696863;
    if (v4)
    {
      OUTLINED_FUNCTION_26();
      v11 = v5 && v4 == 0xE600000000000000;
      if (v11 || (OUTLINED_FUNCTION_7_1() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_33();
      v12 = v5 && v4 == 0xE500000000000000;
      if (v12 || (OUTLINED_FUNCTION_2_3() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_32();
      v13 = v5 && v4 == 0xE500000000000000;
      if (v13 || (OUTLINED_FUNCTION_2_3() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_31();
      if (v5 && v4 == 0xE500000000000000)
      {
        goto LABEL_50;
      }

      v15 = OUTLINED_FUNCTION_2_3();

      if (v15)
      {
        return a1;
      }
    }

    return v1;
  }

  v1 = 0x6E697261646E616DLL;
  if (!v4)
  {
    return v1;
  }

  OUTLINED_FUNCTION_33();
  v5 = v5 && v4 == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_2_3() & 1) != 0)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_31();
  if (v5 && v4 == 0xE500000000000000)
  {
    goto LABEL_50;
  }

  v7 = OUTLINED_FUNCTION_2_3();

  if ((v7 & 1) == 0)
  {
    return v1;
  }

  return a1;
}

uint64_t sub_2693D856C(char a1)
{
  if (!a1)
  {
    return 19;
  }

  if (a1 == 1)
  {
    return 2;
  }

  type metadata accessor for NLConverter();
  sub_269423468();
  sub_26940D5B8(v6);
  __swift_destroy_boxed_opaque_existential_1(v6);
  v2 = sub_26940BCAC();
  v1 = 21;
  if (v2 != 40)
  {
    v3 = sub_26940BD00(v2);
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 21;
    }

    if (v3 == 19)
    {
      return 19;
    }

    else
    {
      return v4;
    }
  }

  return v1;
}

void *sub_2693D861C(char a1)
{
  result = &unk_2879F3F80;
  if (a1)
  {
    if (a1 == 1)
    {
      return &unk_2879F3FA8;
    }

    else
    {
      sub_2693D8C18(&unk_2879F3FA8);
      return &unk_2879F3F80;
    }
  }

  return result;
}

uint64_t sub_2693D8684(uint64_t a1, uint64_t a2, char a3)
{

  v4 = sub_26940BCAC();

  v5 = sub_26940C010();
  if (v4 == 40)
  {
    if (v5 == 3)
    {
      goto LABEL_37;
    }

    v6 = sub_2693D856C(v5);
    OUTLINED_FUNCTION_27();
    if (v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = sub_26940BD00(v4);
  }

  v8 = sub_26940C22C(v6) == 28261 && v7 == 0xE200000000000000;
  if (v8)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_17_1();
  if (v4)
  {
    goto LABEL_27;
  }

  if (v4 != 40)
  {
    if (OUTLINED_FUNCTION_37() != v4 || v13 != 0xE500000000000000)
    {
      v15 = OUTLINED_FUNCTION_35();

      if (v15)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_13:
  sub_2693D856C(a3);
  OUTLINED_FUNCTION_27();
  if (!v8)
  {
    if (sub_26940C22C(v9) == 6649209 && v10 == 0xE300000000000000)
    {
      goto LABEL_36;
    }

    v12 = OUTLINED_FUNCTION_8_0();

    if (v12)
    {
      goto LABEL_37;
    }
  }

LABEL_27:
  sub_2693D856C(a3);
  OUTLINED_FUNCTION_27();
  if (!v8)
  {
    v18 = sub_26940C22C(v16);
    v20 = v19;
    v21 = sub_26940C22C(v6);
    if (v18 != v21 || v20 != v22)
    {
      v24 = OUTLINED_FUNCTION_18_1();

      v17 = v24 ^ 1;
      return v17 & 1;
    }

LABEL_36:

LABEL_37:
    v17 = 0;
    return v17 & 1;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2693D8B44(char a1)
{
  if (!a1)
  {
    return 0x73656E6F746E6163;
  }

  if (a1 == 1)
  {
    return 0x6E697261646E616DLL;
  }

  return 0x6573656E696863;
}

uint64_t sub_2693D8BA0()
{
  v0 = sub_2694245A8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2693D8BEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2693D8B44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2693D8C18(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2693D8CD0(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + v6 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2693D8CD0(int64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_26941EF94(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

unint64_t sub_2693D8D38()
{
  result = qword_28030F7D8;
  if (!qword_28030F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7D8);
  }

  return result;
}

unint64_t sub_2693D8D8C()
{
  result = qword_28030F7E0;
  if (!qword_28030F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7E0);
  }

  return result;
}

unint64_t sub_2693D8DE0()
{
  result = qword_28030F7E8;
  if (!qword_28030F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F7E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_17_1()
{
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_269424688();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_26940BD14(v0);
}

uint64_t sub_2693D9188()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_28030F7F0);
  v1 = __swift_project_value_buffer(v0, qword_28030F7F0);
  if (qword_28030F080 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280314E40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static TranslationFlowProvider.getRCHFlow(parse:)@<X0>(uint64_t *a1@<X8>)
{
  v181 = a1;
  v1 = sub_269423EB8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v173 = &v165[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = sub_2694234E8();
  v4 = OUTLINED_FUNCTION_2(v175);
  v178 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v11);
  v174 = &v165[-v12];
  v13 = sub_269423488();
  v14 = OUTLINED_FUNCTION_2(v13);
  v176 = v15;
  v177 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v18);
  v179 = &v165[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F808, &qword_269426110);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v167 = &v165[-v22];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F810, &unk_269426118);
  v23 = OUTLINED_FUNCTION_2(v170);
  v169 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v168 = &v165[-v27];
  v28 = sub_269423448();
  v29 = OUTLINED_FUNCTION_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v34);
  v36 = &v165[-v35];
  v37 = sub_269423458();
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10();
  v45 = v43 - v44;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v165[-v48];
  MEMORY[0x28223BE20](v47);
  v50 = *(v40 + 16);
  v52 = &v165[-v51];
  v50();
  v53 = (*(v40 + 88))(v52, v37);
  v54 = 0x28030F000;
  if (v53 == *MEMORY[0x277D5C150])
  {
    v180 = v52;
    (v50)(v49, v52, v37);
    v178 = v37;
    v179 = v40;
    (*(v40 + 96))(v49, v37);
    v55 = v31[2];
    v56 = OUTLINED_FUNCTION_18_2();
    v57(v56);
    v58 = sub_269423428();
    v60 = v59;
    *&v184 = 0xD00000000000002BLL;
    *(&v184 + 1) = 0x80000002694296D0;
    MEMORY[0x26D63BD80](46, 0xE100000000000000);
    MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
    v61 = v58 == v184 && v60 == *(&v184 + 1);
    v62 = v28;
    if (v61)
    {
      v64 = v31;
    }

    else
    {
      v63 = sub_269424688();

      v64 = v31;
      if (v63)
      {
        goto LABEL_27;
      }

      sub_269423428();
      OUTLINED_FUNCTION_8_1();
      MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
      if (v31 != v184 || v60 != *(&v184 + 1))
      {
        v66 = sub_269424688();

        if ((v66 & 1) == 0)
        {
          v176 = v31[1];
          v177 = v31 + 1;
          (v176)(v36, v62);
          v67 = v31[4];
          v68 = v171;
          v69 = OUTLINED_FUNCTION_18_2();
          v70(v69);
          v71 = v68;
          sub_269423428();
          OUTLINED_FUNCTION_8_1();
          MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
          if (v66 == v184 && v60 == *(&v184 + 1))
          {

            v37 = v178;
            v73 = v179;
          }

          else
          {
            v71 = sub_269424688();

            v37 = v178;
            v73 = v179;
            if ((v71 & 1) == 0)
            {
              v74 = OUTLINED_FUNCTION_18_2();
              (v176)(v74);
              v52 = v180;
              v54 = 0x28030F000uLL;
LABEL_20:
              if (*(v54 + 240) != -1)
              {
                OUTLINED_FUNCTION_0_8();
              }

              v82 = sub_269423FC8();
              OUTLINED_FUNCTION_20_2(v82, qword_28030F7F0);
              v83 = sub_269423FA8();
              v84 = sub_269424368();
              if (OUTLINED_FUNCTION_11_2(v84))
              {
                *OUTLINED_FUNCTION_12_0() = 0;
                OUTLINED_FUNCTION_9_2(&dword_2693C9000, v85, v86, "Returning RCH Flow for default case of parse.");
                OUTLINED_FUNCTION_6_0();
              }

              sub_2693DAB58(0, v181);
              v87 = v52;
              return (*(v73 + 1))(v87, v37);
            }
          }

          sub_269423468();
          if (qword_28030F0F0 != -1)
          {
            OUTLINED_FUNCTION_0_8();
          }

          v135 = sub_269423FC8();
          OUTLINED_FUNCTION_20_2(v135, qword_28030F7F0);
          v136 = sub_269423FA8();
          v137 = sub_269424368();
          if (OUTLINED_FUNCTION_11_2(v137))
          {
            v138 = OUTLINED_FUNCTION_12_0();
            *v138 = 0;
            _os_log_impl(&dword_2693C9000, v136, v71, "Returning RCH Flow for direct invocation of TranslateAction.", v138, 2u);
            OUTLINED_FUNCTION_6_0();
          }

          if (qword_28030F158 != -1)
          {
            OUTLINED_FUNCTION_4_3();
          }

          v139 = qword_280315088;
          v140 = qword_28030F150;

          if (v140 != -1)
          {
            OUTLINED_FUNCTION_1_5();
          }

          v141 = qword_280315070;
          v142 = type metadata accessor for TranslatePhraseStrategy(0);
          OUTLINED_FUNCTION_10_2(v142);

          v182 = sub_2693D099C(v139, v141);
          sub_2693DBDF8(&v184, &v183);
          if (qword_28030F0E8 != -1)
          {
            OUTLINED_FUNCTION_5_3();
          }

          v143 = qword_280314FD8;

          sub_2693DA6C0(&v183, v143);
          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F830, &qword_269426130);
          OUTLINED_FUNCTION_10_2(v144);
          sub_269422F68();
          sub_2693DC0D8(&qword_28030F838, type metadata accessor for TranslatePhraseStrategy);
          v145 = v168;
          sub_2694230E8();
          v146 = v170;
          sub_2694230C8();
          (*(v169 + 8))(v145, v146);
          v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F840, qword_269426138);
          v181[3] = v147;
          v148 = sub_2693DBE5C();
          OUTLINED_FUNCTION_19_2(v148);
          __swift_destroy_boxed_opaque_existential_1(&v184);
          v149 = OUTLINED_FUNCTION_18_2();
          (v176)(v149);
LABEL_30:
          v87 = v180;
          return (*(v73 + 1))(v87, v37);
        }

LABEL_27:
        if (qword_28030F0E8 != -1)
        {
          OUTLINED_FUNCTION_5_3();
        }

        v88 = type metadata accessor for SpeakFlow();
        v89 = OUTLINED_FUNCTION_10_2(v88);

        sub_2693E94EC(v90);
        OUTLINED_FUNCTION_16_2();
        *(v89 + 24) = v88;
        v91 = sub_2693DC0D8(&qword_28030F850, type metadata accessor for SpeakFlow);
        OUTLINED_FUNCTION_19_2(v91);
        v92 = v64[1];
        v92(v36, v62);
        v92(v49, v62);
        v37 = v178;
        v73 = v179;
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

  v73 = v40;
  if (v53 != *MEMORY[0x277D5C160])
  {
    goto LABEL_20;
  }

  v180 = v52;
  (v50)(v45, v52, v37);
  (*(v40 + 96))(v45, v37);
  v75 = v176;
  v76 = *(v176 + 32);
  v77 = OUTLINED_FUNCTION_17_2();
  v78 = v177;
  v79(v77);
  v80 = type metadata accessor for ConverterUtils();
  v81 = v174;
  sub_269423478();
  v95 = sub_269411038(v81);
  v96 = *(v178 + 8);
  v178 += 8;
  v96(v81, v175);
  if (v95)
  {
    if (qword_28030F0F0 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v97 = sub_269423FC8();
    OUTLINED_FUNCTION_20_2(v97, qword_28030F7F0);
    v98 = sub_269423FA8();
    v99 = sub_269424368();
    if (OUTLINED_FUNCTION_11_2(v99))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v100, v101, "Repeat task successfully identified.");
      OUTLINED_FUNCTION_6_0();
    }

    if (qword_28030F0E8 != -1)
    {
      OUTLINED_FUNCTION_5_3();
    }

    v102 = qword_280314FD8;
    v103 = qword_28030F110;

    if (v103 != -1)
    {
      swift_once();
    }

    v104 = qword_28030F158;
    v105 = qword_280315010;
    if (v104 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    v106 = qword_280315088;
    v107 = qword_28030F170;

    if (v107 != -1)
    {
      OUTLINED_FUNCTION_2_4();
    }

    v108 = qword_2803150B8;

    sub_269423EA8();
    sub_269423468();
    v109 = type metadata accessor for TemplatingResultProvider();
    OUTLINED_FUNCTION_10_2(v109);
    sub_2693F2808();
    v111 = v110;
    sub_2694232D8();
    v112 = type metadata accessor for RepeatFlow();
    v113 = OUTLINED_FUNCTION_10_2(v112);
    v114 = v111;
    v115 = v113;
    sub_269403784(v102, v105, v106, v108, v114, &v184);
    OUTLINED_FUNCTION_16_2();
    *(v115 + 24) = v112;
    v116 = sub_2693DC0D8(&qword_28030F828, type metadata accessor for RepeatFlow);
    OUTLINED_FUNCTION_19_2(v116);
    v117 = *(v176 + 8);
    v118 = OUTLINED_FUNCTION_17_2();
    v119(v118);
    goto LABEL_30;
  }

  v120 = v172;
  sub_269423478();
  sub_269411078(v120);
  v121 = OUTLINED_FUNCTION_15_2();
  (v96)(v121);
  if (v80)
  {
    if (qword_28030F0F0 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v122 = sub_269423FC8();
    OUTLINED_FUNCTION_20_2(v122, qword_28030F7F0);
    v123 = sub_269423FA8();
    v124 = sub_269424368();
    v125 = OUTLINED_FUNCTION_11_2(v124);
    v126 = v179;
    if (v125)
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v127, v128, "Returning GetSupportedLanguagesFlow.");
      OUTLINED_FUNCTION_6_0();
    }

    sub_269423468();
    sub_269423EA8();
    sub_269423468();
    v129 = type metadata accessor for TemplatingResultProvider();
    OUTLINED_FUNCTION_10_2(v129);
    sub_2693F2808();
    v131 = v130;
    sub_2694232D8();
    v132 = type metadata accessor for SupportedLanguagesFlow();
    v133 = OUTLINED_FUNCTION_10_2(v132);
    sub_2693ED31C(&v184, v131, &v183);
    OUTLINED_FUNCTION_16_2();
    *(v133 + 24) = v132;
    v134 = sub_2693DC0D8(&qword_28030F820, type metadata accessor for SupportedLanguagesFlow);
    OUTLINED_FUNCTION_19_2(v134);
    (*(v75 + 8))(v126, v78);
    goto LABEL_30;
  }

  sub_269423478();
  sub_269410C20();
  v150 = OUTLINED_FUNCTION_15_2();
  (v96)(v150);
  if (qword_28030F0F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v151 = sub_269423FC8();
  OUTLINED_FUNCTION_20_2(v151, qword_28030F7F0);
  v152 = v166;
  (*(v75 + 16))(v166, v179, v78);
  v153 = sub_269423FA8();
  v154 = sub_269424378();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v178 = v37;
    v156 = v155;
    v157 = v152;
    v175 = swift_slowAlloc();
    *&v184 = v175;
    *v156 = 136315138;
    sub_269423478();
    v158 = sub_269424128();
    v160 = v159;
    v161 = *(v176 + 8);
    v161(v157, v78);
    v162 = sub_2693DB6E0(v158, v160, &v184);

    *(v156 + 4) = v162;
    _os_log_impl(&dword_2693C9000, v153, v154, "Unsupported uso parse: %s.", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v175);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v37 = v178;
    v161(v179, v78);
  }

  else
  {

    v163 = *(v75 + 8);
    (v163)(v152, v78);
    v164 = OUTLINED_FUNCTION_17_2();
    v163(v164);
  }

  v87 = v180;
  v93 = v181;
  v181[4] = 0;
  *v93 = 0u;
  *(v93 + 1) = 0u;
  return (*(v73 + 1))(v87, v37);
}

uint64_t sub_2693DA6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_269423EB8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for TranslatePhraseIntent();
  type metadata accessor for TranslatePhraseIntentResponse();
  sub_269422F58();
  sub_269423EA8();
  sub_269423468();
  v6 = type metadata accessor for TemplatingResultProvider();
  OUTLINED_FUNCTION_10_2(v6);
  sub_2693F2808();
  v8 = v7;
  sub_2693DBDF8(a1, v31);
  v9 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  OUTLINED_FUNCTION_10_2(v9);
  v27 = a1;
  *&v28 = sub_2693DC378(v8, v31);
  sub_2693DBDF8(a1, v31);
  v10 = swift_allocObject();
  sub_2693DBCC8(v31, v10 + 16);
  *(v10 + 56) = a2;
  sub_2693DC0D8(&qword_28030F858, type metadata accessor for TranslatePhraseHandleIntentFlowStrategy);

  sub_269422F08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F808, &qword_269426110);
  sub_269422F38();
  sub_269423EA8();
  sub_269423468();
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();
  sub_2693F2808();
  v14 = v13;
  if (qword_28030F158 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v15 = qword_280315088;
  v16 = qword_28030F150;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  v17 = qword_280315070;
  v18 = qword_28030F170;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  v19 = qword_2803150B8;

  sub_269423468();
  v20 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy();
  v21 = OUTLINED_FUNCTION_10_2(v20);
  v29 = &type metadata for SiriTranslationPluginFeatureFlagsImpl;
  v30 = &protocol witness table for SiriTranslationPluginFeatureFlagsImpl;
  v22 = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  if (qword_28030F0C8 != -1)
  {
    swift_once();
  }

  v23 = sub_269423FC8();
  v24 = __swift_project_value_buffer(v23, qword_280314F18);
  (*(*(v23 - 8) + 16))(&v21[v22], v24, v23);
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v14;
  sub_2693DBCC8(v31, &v21[OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_deviceState]);
  *(v21 + 5) = v19;
  sub_2693DBCC8(&v28, &v21[OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_featureFlags]);
  *&v31[0] = v21;
  sub_2693DC0D8(&qword_28030F860, type metadata accessor for TranslatePhraseNeedsValueFlowStrategy);
  sub_269422EF8();

  sub_269422F28();
  v25 = sub_269423EE8();
  OUTLINED_FUNCTION_10_2(v25);
  sub_269423EC8();
  sub_269422F18();

  sub_269422F48();

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_2693DAB58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F808, &qword_269426110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F810, &unk_269426118);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-v9 - 8];
  sub_269423468();
  if (qword_28030F158 != -1)
  {
    swift_once();
  }

  v11 = qword_280315088;
  v12 = qword_28030F150;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280315070;
  v14 = type metadata accessor for TranslatePhraseStrategy(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v28 = sub_2693D099C(v11, v13);
  sub_2693DBDF8(v29, v27);
  if (qword_28030F0E8 != -1)
  {
    swift_once();
  }

  v17 = qword_280314FD8;

  sub_2693DA6C0(v27, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F830, &qword_269426130);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_269422F68();
  sub_2693DC0D8(&qword_28030F838, type metadata accessor for TranslatePhraseStrategy);
  sub_2694230E8();
  if (a1)
  {
    sub_269423EE8();
    v21 = a1;
    sub_269423ED8();
    v22 = sub_2694230D8();

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F840, qword_269426138);
  }

  else
  {
    v22 = sub_2694230C8();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F840, qword_269426138);
  }

  v24 = sub_2693DBE5C();
  a2[3] = v23;
  a2[4] = v24;
  *a2 = v22;
  (*(v7 + 8))(v10, v6);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_2693DAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = *(*(sub_269423EB8() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693DAF5C, 0, 0);
}

uint64_t sub_2693DAF5C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  sub_269423EA8();
  sub_269423468();
  v3 = type metadata accessor for TemplatingResultProvider();
  OUTLINED_FUNCTION_10_2(v3);
  sub_2693F2808();
  v5 = v4;
  sub_2693DBDF8(v2, v0 + 16);
  sub_2694232D8();
  if (qword_28030F170 != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  v6 = qword_2803150B8;
  v7 = type metadata accessor for TranslatePhraseResponseFlow();
  v8 = OUTLINED_FUNCTION_10_2(v7);
  *(v0 + 120) = &type metadata for SiriTranslationPluginFeatureFlagsImpl;
  *(v0 + 128) = &protocol witness table for SiriTranslationPluginFeatureFlagsImpl;
  v9 = OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_log;
  v10 = qword_28030F0A8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 168);
  v21 = *(v0 + 176);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = sub_269423FC8();
  v15 = __swift_project_value_buffer(v14, qword_280314EB8);
  (*(*(v14 - 8) + 16))(v8 + v9, v15, v14);
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  *(v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_templatingResultProvider) = v5;
  sub_2693DBCC8((v0 + 16), v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_deviceState);
  sub_2693DBCC8((v0 + 56), v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_outputPublisher);
  *(v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_translationApiClient) = v11;
  *(v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_nlContextProvider) = v6;
  sub_2693DBCC8((v0 + 96), v8 + OBJC_IVAR____TtC22SiriTranslationIntents27TranslatePhraseResponseFlow_featureFlags);
  *(v0 + 136) = v8;
  sub_2693DC0D8(&qword_28030F868, type metadata accessor for TranslatePhraseResponseFlow);
  v16 = v12;
  v17 = v13;

  v18 = sub_269422F78();

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_2693DB26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2693DB31C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2693DB31C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_2693DB434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2693DB4E8;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2693DB4E8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2693DB5D4()
{
  type metadata accessor for NoOpFlow();

  return sub_269422FC8();
}

uint64_t sub_2693DB610(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2693DB684(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2693DB6E0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2693DB6E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2693DB7A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2693DC120(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2693DB7A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2693DB8A4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2694244E8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2693DB8A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2693DB8F0(a1, a2);
  sub_2693DBA08(&unk_2879F39B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2693DB8F0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2694241E8())
  {
    result = sub_2693DBAEC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2694244A8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2694244E8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2693DBA08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2693DBB5C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2693DBAEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F870, qword_269426200);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2693DBB5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F870, qword_269426200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2693DBC50(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2693DBC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F818, &qword_269426128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693DBCC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2693DBCE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = &type metadata for TranslateFeatureFlags;
  v15 = &protocol witness table for TranslateFeatureFlags;
  v8 = OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_log;
  if (qword_28030F080 != -1)
  {
    swift_once();
  }

  v9 = sub_269423FC8();
  v10 = __swift_project_value_buffer(v9, qword_280314E40);
  (*(*(v9 - 8) + 16))(a4 + v8, v10, v9);
  *(a4 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_mainFlow) = a1;
  v11 = a4 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_translateIntentResult;
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  sub_2693DBCC8(&v13, a4 + OBJC_IVAR____TtC22SiriTranslationIntents23TranslationDecisionFlow_featureManager);
  return a4;
}

uint64_t sub_2693DBDF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2693DBE5C()
{
  result = qword_28030F848;
  if (!qword_28030F848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F840, qword_269426138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F848);
  }

  return result;
}

uint64_t sub_2693DBEF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2693DBF34(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693DBFE4;

  return sub_2693DAEC8(a1, a2, v2 + 16, v6);
}

uint64_t sub_2693DBFE4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_2693DC0D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2693DC120(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_1()
{
  *(v1 - 136) = 0xD00000000000002BLL;
  *(v1 - 128) = v0;

  JUMPOUT(0x26D63BD80);
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_11_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t result)
{
  v2[4] = result;
  *v2 = v1;
  return result;
}

id sub_2693DC314()
{
  if (qword_28030F110 != -1)
  {
    swift_once();
  }

  v1 = qword_280315010;
  qword_280314FF0 = qword_280315010;

  return v1;
}

uint64_t sub_2693DC378(uint64_t a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_log;
  if (qword_28030F0A8 != -1)
  {
    swift_once();
  }

  v6 = sub_269423FC8();
  v7 = __swift_project_value_buffer(v6, qword_280314EB8);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  *(v2 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_templatingResultProvider) = a1;
  sub_2693DC180(a2, v2 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_deviceState);
  return v2;
}

uint64_t sub_2693DC454()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_log;
  v2 = sub_269423FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_templatingResultProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents39TranslatePhraseHandleIntentFlowStrategy_deviceState));
  return v0;
}

uint64_t sub_2693DC4D4()
{
  sub_2693DC454();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslatePhraseHandleIntentFlowStrategy()
{
  result = qword_28030F890;
  if (!qword_28030F890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693DC580()
{
  result = sub_269423FC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693DC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_2693DC6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_2693DC7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_2693DC884(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5B5F8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  v8 = sub_2693DCD24(&qword_28030F8A8);
  *v6 = v2;
  v6[1] = sub_2693DCD68;

  return MEMORY[0x2821B9FD8](a1, a2, v7, v8);
}

uint64_t sub_2693DC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_2693DCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693DCD68;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_2693DCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693CC820;

  return MEMORY[0x2821B9C38](a1, a2, v10, a4);
}

uint64_t sub_2693DCBC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693CC664;

  return (sub_2693D29E0)(a1, a2);
}

uint64_t sub_2693DCCAC(uint64_t a1)
{
  result = sub_2693DCD24(&qword_28030F8A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2693DCD24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranslatePhraseHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2693DCD6C()
{
  OUTLINED_FUNCTION_17_3();
  v101 = v0;
  v102 = v1;
  v97 = v2;
  v98 = v3;
  v93 = sub_269423B48();
  v4 = OUTLINED_FUNCTION_2(v93);
  v96 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v86 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v94 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v95 = &v86 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - v22;
  v99 = sub_269423A18();
  v24 = OUTLINED_FUNCTION_2(v99);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  v31 = (v29 - v30);
  MEMORY[0x28223BE20](v32);
  v100 = &v86 - v33;
  v34 = sub_269423B68();
  v35 = OUTLINED_FUNCTION_2(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_5();
  v42 = v41 - v40;
  sub_269423B58();
  v89 = v37;
  v92 = v34;
  sub_269423A08();
  OUTLINED_FUNCTION_4_4();
  v87 = v19;
  sub_2694239F8();
  v43 = *(v26 + 8);
  v90 = v26 + 8;
  v91 = v43;
  v43(v31, v99);
  sub_269423B38();
  sub_269423B08();
  v44 = v93;
  v88 = v23;
  v45 = *(v96 + 8);
  v45(v10, v93);
  sub_269423AF8();
  v45(v14, v44);
  v103 = v97;
  v104 = v98;
  v46 = v87;
  sub_269423B18();
  v47 = OUTLINED_FUNCTION_15_3();
  (v45)(v47);
  v103 = v101;
  v104 = v102;
  v48 = v95;
  sub_269423B18();
  v45(v46, v44);
  v103 = 1919251285;
  v104 = 0xE400000000000000;
  sub_269423B18();
  v45(v48, v44);
  v58 = sub_269423B28();
  v59 = v98;
  v60 = v99;
  v61 = OUTLINED_FUNCTION_15_3();
  (v45)(v61);
  v62 = v92;
  if (*(v58 + 16))
  {
    v96 = v42;
    sub_2693DE6A4();
    v64 = v63;
    v66 = v65;

    if (v66)
    {
      v67 = v89;
      if (qword_28030F100 != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      v68 = sub_269423FC8();
      __swift_project_value_buffer(v68, qword_28030F8B0);

      v69 = sub_269423FA8();
      v70 = sub_269424358();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v71 = 136315394;
        *(v71 + 4) = OUTLINED_FUNCTION_10_3();
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_2693DB6E0(v64, v66, &v103);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v72, v73, v74, v75, v71, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v91(v100, v60);
      (*(v67 + 8))(v96, v92);
      goto LABEL_7;
    }

    v91(v100, v60);
    OUTLINED_FUNCTION_13_2();
    v84 = v96;
  }

  else
  {
    if (qword_28030F100 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v76 = sub_269423FC8();
    __swift_project_value_buffer(v76, qword_28030F8B0);

    v77 = v59;

    v78 = sub_269423FA8();
    v79 = sub_269424358();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v77;
      v81 = OUTLINED_FUNCTION_16_0();
      v103 = swift_slowAlloc();
      *v81 = 134218498;
      v96 = v42;
      v82 = *(v58 + 16);

      *(v81 + 4) = v82;

      *(v81 + 12) = 2080;
      *(v81 + 14) = sub_2693DB6E0(v97, v80, &v103);
      *(v81 + 22) = 2080;
      *(v81 + 24) = OUTLINED_FUNCTION_10_3();
      _os_log_impl(&dword_2693C9000, v78, v79, "%ld relevant history interactions for %s-%s, not enough to resolve the ambiguity", v81, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_5_4();

      v91(v100, v99);
      OUTLINED_FUNCTION_13_2();
      v84 = v96;
      v85 = v62;
      goto LABEL_22;
    }

    swift_bridgeObjectRelease_n();
    v91(v100, v60);
    OUTLINED_FUNCTION_13_2();
    v84 = v42;
  }

  v85 = v62;
LABEL_22:
  v83(v84, v85);
  if (qword_28030F100 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v49 = sub_269423FC8();
  __swift_project_value_buffer(v49, qword_28030F8B0);

  v50 = sub_269423FA8();
  v51 = sub_269424358();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = OUTLINED_FUNCTION_16_0();
    v103 = v53;
    *v52 = 136315138;
    *(v52 + 4) = OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v54, v55, v56, v57, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_6_0();
  }

LABEL_7:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693DD768()
{
  v0 = sub_269423FC8();
  __swift_allocate_value_buffer(v0, qword_28030F8B0);
  __swift_project_value_buffer(v0, qword_28030F8B0);
  return sub_269423FB8();
}

uint64_t sub_2693DD7E8()
{
  v0 = sub_269422CE8();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_5();
  v4 = sub_269422D18();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_5();
  sub_269423AD8();
  sub_269423A68();
  sub_269423A58();
  sub_269423AA8();
  sub_269422D08();
  sub_269422CF8();
  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_15_3();
  v12(v11);
  sub_269423A38();
  sub_269423A28();
  sub_269422CD8();
  return sub_269423AC8();
}

void sub_2693DD97C()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v103 = v2;
  v102 = v3;
  v112 = v4;
  v104 = v5;
  v101 = sub_269423BE8();
  v6 = OUTLINED_FUNCTION_2(v101);
  v100 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_5();
  v108 = v11 - v10;
  v12 = sub_269423BA8();
  v13 = OUTLINED_FUNCTION_2(v12);
  v107 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  v21 = OUTLINED_FUNCTION_12_2(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v99 - v24;
  v26 = sub_269423AE8();
  v27 = OUTLINED_FUNCTION_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  *&v111 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v99 - v35;
  v105 = v29;
  v37 = *(v29 + 16);
  v113 = v38;
  v110 = v37;
  (v37)(&v99 - v35, v1);
  if (!*(sub_269423A88() + 16))
  {

    goto LABEL_5;
  }

  sub_2693FCEE8(0x6465766C6F736572, 0xEA00000000007942);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_5:
    sub_269424158();
    sub_269423C08();
    v41 = OUTLINED_FUNCTION_3_3();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_9_3();
    v46 = OUTLINED_FUNCTION_8_2();
    v45(v46);
  }

  v106 = v19;
  v109 = v12;
  if (!*(sub_269423A88() + 16))
  {

    goto LABEL_10;
  }

  sub_2693FCEE8(0x65676175676E616CLL, 0xED000070756F7247);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_10:
    sub_269424158();
    v49 = sub_269423C08();
    v50 = OUTLINED_FUNCTION_3_3();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
    v53 = OUTLINED_FUNCTION_18_3();
    sub_2693DE1AC(v25, 0x65676175676E616CLL, 0xED000070756F7247);
    v54 = OUTLINED_FUNCTION_8_2();
    v53(v54);
    sub_269424158();
    v55 = OUTLINED_FUNCTION_3_3();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v49);
    v58 = OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_9_3();
    v59 = OUTLINED_FUNCTION_8_2();
    v58(v59);
  }

  sub_269424158();
  v60 = sub_269423C08();
  v61 = OUTLINED_FUNCTION_3_3();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  v64 = OUTLINED_FUNCTION_18_3();
  sub_2693DE1AC(v25, 0x6369666963657073, 0xEE00656C61636F4CLL);
  v65 = OUTLINED_FUNCTION_8_2();
  v64(v65);
  sub_269424158();
  v66 = OUTLINED_FUNCTION_3_3();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v60);
  v112 = v36;
  v69 = sub_269423A78();
  sub_2693DE1AC(v25, 0x6F4C656372756F73, 0xEC000000656C6163);
  v70 = OUTLINED_FUNCTION_8_2();
  v69(v70);
  if (qword_28030F100 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v71 = sub_269423FC8();
  v104 = __swift_project_value_buffer(v71, qword_28030F8B0);
  v72 = sub_269423FA8();
  v73 = sub_269424358();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v113;
  v76 = v111;
  if (v74)
  {
    v77 = swift_slowAlloc();
    v78 = OUTLINED_FUNCTION_16_0();
    v114 = v78;
    *v77 = 136315138;
    v79 = v112;
    swift_beginAccess();
    v110(v76, v79, v75);
    v80 = sub_269424128();
    v82 = sub_2693DB6E0(v80, v81, &v114);
    v76 = v111;

    *(v77 + 4) = v82;
    v75 = v113;
    _os_log_impl(&dword_2693C9000, v72, v73, "The interaction for donation: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v83 = v110;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v84 = v107;
  }

  else
  {

    v84 = v107;
    v83 = v110;
    v79 = v112;
  }

  v85 = v106;
  sub_269423B98();
  OUTLINED_FUNCTION_4_4();
  sub_269423B88();
  sub_269423B78();
  swift_beginAccess();
  v83(v76, v79, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D8, &qword_2694263F0);
  inited = swift_initStackObject();
  v111 = xmmword_2694256B0;
  *(inited + 16) = xmmword_2694256B0;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8E0, &qword_2694263F8);
  v87 = *(v84 + 72);
  v88 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = v111;
  v90 = v89 + v88;
  v91 = v109;
  (*(v84 + 16))(v90, v85, v109);
  *(inited + 48) = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8E8, &qword_269426400);
  sub_2694240B8();
  v92 = v108;
  sub_269423BB8();
  sub_2693DE340();
  v93 = sub_269423FA8();
  LOBYTE(inited) = sub_269424358();
  if (os_log_type_enabled(v93, inited))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v95, v96, v97, v98, v94, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v100 + 8))(v92, v101);
  (*(v84 + 8))(v85, v91);
  (*(v105 + 8))(v112, v113);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693DE1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  v9 = OUTLINED_FUNCTION_12_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = sub_269423C08();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_5();
  v22 = v21 - v20;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_2693DF81C(a1);
    sub_2693DF884(a2, a3, v13);

    return sub_2693DF81C(v13);
  }

  else
  {
    (*(v17 + 32))(v22, a1, v14);
    v24 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    sub_2693DF9CC(v22, a2, a3);

    *v4 = v26;
  }

  return result;
}

void sub_2693DE340()
{
  OUTLINED_FUNCTION_17_3();
  v1 = sub_269424058();
  v2 = OUTLINED_FUNCTION_2(v1);
  v28 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_5();
  v8 = v7 - v6;
  v27 = sub_269424088();
  v9 = OUTLINED_FUNCTION_2(v27);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_5();
  v16 = v15 - v14;
  v17 = sub_269423BE8();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  if (qword_28030F108 != -1)
  {
    swift_once();
  }

  v26 = qword_28030F8C8;
  (*(v20 + 16))(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v17);
  v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v24 = swift_allocObject();
  (*(v20 + 32))(v24 + v23, &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v30[4] = sub_2693DF704;
  v30[5] = v24;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = sub_2693DF638;
  v30[3] = &block_descriptor_0;
  v25 = _Block_copy(v30);
  sub_269424068();
  v29 = MEMORY[0x277D84F90];
  sub_2693E18D0(&qword_28030F8F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8F8, &qword_269426408);
  sub_2693DF7C8(&qword_28030F900, &qword_28030F8F8, &qword_269426408);
  sub_269424468();
  MEMORY[0x26D63BF60](0, v16, v8, v25);
  _Block_release(v25);
  (*(v28 + 8))(v8, v1);
  (*(v11 + 8))(v16, v27);

  OUTLINED_FUNCTION_16_3();
}

void sub_2693DE6A4()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v2 = sub_269423C08();
  v67 = OUTLINED_FUNCTION_2(v2);
  v68 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_5();
  v66 = v7 - v6;
  v8 = sub_269423AE8();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_5();
  v69 = v15 - v14;
  if (qword_28030F100 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v16 = sub_269423FC8();
  __swift_project_value_buffer(v16, qword_28030F8B0);
  v17 = sub_269423FA8();
  v18 = sub_269424368();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2693C9000, v17, v18, "determining if language can be identified", v19, 2u);
    OUTLINED_FUNCTION_5_4();
  }

  v71 = v1;

  sub_2693DFBF0(&v71);
  v20 = sub_2693DEDE0(1, v71);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2694246A8();
  swift_unknownObjectRetain_n();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x277D84F90];
  }

  v30 = *(v29 + 16);

  if (__OFSUB__(v26 >> 1, v24))
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v30 != (v26 >> 1) - v24)
  {
LABEL_42:
    swift_unknownObjectRelease();
LABEL_6:
    sub_2693DFC98(v20, v22, v24, v26);
    v28 = v27;
    goto LABEL_13;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v28)
  {
    goto LABEL_14;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_13:
  swift_unknownObjectRelease();
LABEL_14:

  v31 = sub_269423FA8();
  v32 = sub_269424358();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_16_0();
    v71 = v34;
    *v33 = 134218242;
    *(v33 + 4) = 1;
    *(v33 + 12) = 2080;
    v35 = MEMORY[0x26D63BE40](v28, v8);
    v37 = sub_2693DB6E0(v35, v36, &v71);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_2693C9000, v31, v32, "The most recent %ld translation interactions for are: %s", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_6_0();
  }

  v38 = v69;
  v39 = *(v28 + 16);
  if (v39)
  {
    v42 = *(v11 + 16);
    v41 = v11 + 16;
    v40 = v42;
    v43 = v28 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v44 = *(v41 + 56);
    v45 = (v41 - 8);
    v46 = MEMORY[0x277D84F90];
    v64 = v44;
    v65 = v42;
    do
    {
      v40(v38, v43, v8);
      v47 = sub_269423A88();
      if (*(v47 + 16) && (v48 = sub_2693FCEE8(0x6369666963657073, 0xEE00656C61636F4CLL), (v49 & 1) != 0))
      {
        (*(v68 + 16))(v66, *(v47 + 56) + *(v68 + 72) * v48, v67);

        v70 = sub_269423BF8();
        v50 = v38;
        v52 = v51;
        (*v45)(v50, v8);
        (*(v68 + 8))(v66, v67);
        if (v52)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26941F074(0, *(v46 + 16) + 1, 1, v46);
            v46 = v56;
          }

          v54 = *(v46 + 16);
          v53 = *(v46 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_26941F074(v53 > 1, v54 + 1, 1, v46);
            v46 = v57;
          }

          *(v46 + 16) = v54 + 1;
          v55 = v46 + 16 * v54;
          *(v55 + 32) = v70;
          *(v55 + 40) = v52;
        }

        v38 = v69;
        v44 = v64;
        v40 = v65;
      }

      else
      {

        (*v45)(v38, v8);
      }

      v43 += v44;
      --v39;
    }

    while (v39);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v58 = *(v46 + 16);
  v59 = (v46 + 40);
  v60 = v58;
  if (v58)
  {
    while (1)
    {
      v61 = *(v59 - 1) == *(v46 + 32) && *v59 == *(v46 + 40);
      if (!v61 && (sub_269424688() & 1) == 0)
      {
        break;
      }

      v59 += 2;
      if (!--v60)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    if (v58)
    {
      v62 = *(v46 + 32);
      v63 = *(v46 + 40);
    }
  }

  OUTLINED_FUNCTION_16_3();
}

BOOL sub_2693DEC68()
{
  v0 = sub_269422CE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_269423AB8();
  sub_269423AB8();
  sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578]);
  v8 = sub_2694240E8();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return (v8 & 1) == 0;
}

int64_t sub_2693DEDE0(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2693E1870(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2693E17C8(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2693DEE9C()
{
  v10 = sub_2694243A8();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269424398();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_269424088();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2693DF784();
  sub_269424078();
  v11 = MEMORY[0x277D84F90];
  sub_2693E18D0(&qword_28030F910, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F918, &qword_269426410);
  sub_2693DF7C8(&qword_28030F920, &qword_28030F918, &qword_269426410);
  sub_269424468();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_2694243C8();
  qword_28030F8C8 = result;
  return result;
}

uint64_t sub_2693DF0EC(uint64_t a1)
{
  v2 = sub_269423AE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269423BE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28030F100 != -1)
  {
    swift_once();
  }

  v12 = sub_269423FC8();
  __swift_project_value_buffer(v12, qword_28030F8B0);
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_269423FA8();
  v14 = sub_269424368();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v2;
    v16 = v15;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 136315138;
    sub_269423BC8();
    v17 = sub_269423A48();
    v25 = a1;
    v19 = v18;
    (*(v3 + 8))(v6, v23);
    (*(v8 + 8))(v11, v7);
    v20 = sub_2693DB6E0(v17, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2693C9000, v13, v14, "#Donation+Utilities: Donating %s to Siri Remembers", v16, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x26D63C8E0](v21, -1, -1);
    MEMORY[0x26D63C8E0](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  return sub_269423BD8();
}

void sub_2693DF3E8(void *a1, char a2)
{
  if (a2)
  {
    if (qword_28030F100 != -1)
    {
      swift_once();
    }

    v3 = sub_269423FC8();
    __swift_project_value_buffer(v3, qword_28030F8B0);
    v4 = a1;
    oslog = sub_269423FA8();
    v5 = sub_269424378();
    sub_2693DF778(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_269424708();
      v10 = sub_2693DB6E0(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2693C9000, oslog, v5, "#Donation+Utilities: Error donating to Siri Remembers %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D63C8E0](v7, -1, -1);
      MEMORY[0x26D63C8E0](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28030F100 != -1)
    {
      swift_once();
    }

    v11 = sub_269423FC8();
    __swift_project_value_buffer(v11, qword_28030F8B0);
    oslog = sub_269423FA8();
    v12 = sub_269424368();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2693C9000, oslog, v12, "#Donation+Utilities: Donated successfully to Siri Remembers", v13, 2u);
      MEMORY[0x26D63C8E0](v13, -1, -1);
    }
  }
}

uint64_t sub_2693DF638(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2693DF67C()
{
  v1 = sub_269423BE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2693DF704()
{
  v1 = sub_269423BE8();
  OUTLINED_FUNCTION_12_2(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2693DF0EC(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2693DF778(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_2693DF784()
{
  result = qword_28030F908;
  if (!qword_28030F908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030F908);
  }

  return result;
}

uint64_t sub_2693DF7C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2693DF81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F8D0, &unk_269427290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693DF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2693FCEE8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F928, &qword_269426418);
    sub_269424548();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_269423C08();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_269424558();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_269423C08();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_2693DF9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2693FCEE8(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F928, &qword_269426418);
  if ((sub_269424548() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_2693FCEE8(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2694246D8();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = sub_269423C08();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_2693DFB40(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_2693DFB40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_269423C08();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2693DFBF0(uint64_t *a1)
{
  v2 = *(sub_269423AE8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2693E18BC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2693DFD78(v7);
  *a1 = v3;
  return result;
}

void sub_2693DFC98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_26941F360((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_269423AE8() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_2693DFD78(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_269424658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_269423AE8();
        v6 = sub_2694242B8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_269423AE8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2693E0280(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2693DFEA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2693DFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = sub_269422CE8();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v59 = &v41[-v12];
  v13 = sub_269423AE8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v41[-v18];
  result = MEMORY[0x28223BE20](v17);
  v57 = &v41[-v21];
  v43 = a2;
  if (a3 != a2)
  {
    v23 = *(v20 + 16);
    v22 = v20 + 16;
    v24 = *a4;
    v25 = *(v22 + 56);
    v53 = (v8 + 8);
    v54 = v23;
    v52 = (v22 - 8);
    v55 = v13;
    v56 = v22;
    v26 = v24 + v25 * (a3 - 1);
    v48 = -v25;
    v49 = (v22 + 16);
    v27 = a1 - a3;
    v50 = v24;
    v42 = v25;
    v28 = v24 + v25 * a3;
    while (2)
    {
      v46 = v26;
      v47 = a3;
      v44 = v28;
      v45 = v27;
      v62 = v27;
      do
      {
        v29 = v57;
        v30 = v54;
        v54(v57, v28, v13);
        v31 = v58;
        v30(v58, v26, v13);
        v32 = v59;
        sub_269423AB8();
        v33 = v60;
        sub_269423AB8();
        sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578]);
        v34 = v61;
        v63 = sub_2694240E8();
        v35 = *v53;
        v36 = v33;
        v13 = v55;
        (*v53)(v36, v34);
        v35(v32, v34);
        v37 = *v52;
        (*v52)(v31, v13);
        result = v37(v29, v13);
        if (v63)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v28, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v26, v39, v13);
        v26 += v48;
        v28 += v48;
      }

      while (!__CFADD__(v62++, 1));
      a3 = v47 + 1;
      v26 = v46 + v42;
      v27 = v45 - 1;
      v28 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2693E0280(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v139 = a1;
  v159 = sub_269422CE8();
  v6 = *(v159 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v159);
  v158 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v157 = &v134 - v10;
  v11 = sub_269423AE8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v152 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v134 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v134 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v25 = &v134 - v22;
  v26 = *(a3 + 1);
  v143 = a3;
  v147 = v23;
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_102:
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v134 = a4;
  v27 = 0;
  v161 = v23 + 16;
  v162 = (v23 + 8);
  v154 = (v23 + 32);
  v155 = (v6 + 8);
  v28 = MEMORY[0x277D84F90];
  v160 = v11;
  v135 = v24;
  v138 = &v134 - v22;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v153 = v26;
      v30 = *a3;
      v31 = *(v147 + 72);
      v149 = v27 + 1;
      a3 = *(v147 + 16);
      v32 = v24;
      v33 = v30 + v31 * (v27 + 1);
      (a3)(v25);
      v165 = v30;
      v150 = a3;
      (a3)(v32, v30 + v31 * v27, v11);
      v34 = v138;
      v35 = v148;
      LODWORD(v151) = sub_2693DEC68();
      v148 = v35;
      if (v35)
      {
        v133 = *v162;
        (*v162)(v32, v11);
        (v133)(v34, v11);
LABEL_114:

        return;
      }

      v136 = v28;
      v28 = *v162;
      (*v162)(v32, v11);
      v145 = v28;
      (v28)(v34, v11);
      v137 = v27;
      v36 = v27 + 2;
      v37 = v165 + v31 * (v27 + 2);
      v29 = v149;
      v38 = v153;
      v146 = v31;
      while (1)
      {
        v39 = v36;
        v40 = v29 + 1;
        if (v40 >= v38)
        {
          break;
        }

        v41 = v160;
        v42 = v150;
        v165 = v36;
        v150();
        v43 = v156;
        v42(v156, v33, v41);
        v28 = v157;
        v149 = v40;
        sub_269423AB8();
        v44 = v158;
        v45 = v43;
        sub_269423AB8();
        sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578]);
        v46 = v159;
        LODWORD(v164) = sub_2694240E8();
        a3 = *v155;
        (*v155)(v44, v46);
        (a3)(v28, v46);
        v47 = v145;
        (v145)(v45, v41);
        v31 = v146;
        (v47)(v163, v41);
        v39 = v165;
        v38 = v153;
        v29 = v149;
        v37 += v31;
        v33 += v31;
        v36 = v165 + 1;
        if (((v151 ^ v164) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v29 = v38;
LABEL_10:
      if (v151)
      {
        v27 = v137;
        v11 = v160;
        if (v29 < v137)
        {
          goto LABEL_138;
        }

        a3 = v143;
        if (v137 >= v29)
        {
          v28 = v136;
          goto LABEL_33;
        }

        if (v38 >= v39)
        {
          v48 = v39;
        }

        else
        {
          v48 = v38;
        }

        v49 = v31 * (v48 - 1);
        v50 = v31 * v48;
        v51 = v137;
        v52 = v137 * v31;
        v149 = v29;
        do
        {
          if (v51 != --v29)
          {
            v53 = *a3;
            if (!v53)
            {
              goto LABEL_143;
            }

            v165 = *v154;
            (v165)(v142, v53 + v52, v11);
            v54 = v52 < v49 || v53 + v52 >= v53 + v50;
            if (v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v165)(v53 + v49, v142, v11);
            a3 = v143;
          }

          ++v51;
          v49 -= v31;
          v50 -= v31;
          v52 += v31;
        }

        while (v51 < v29);
        v28 = v136;
        v29 = v149;
      }

      else
      {
        a3 = v143;
        v28 = v136;
        v11 = v160;
      }

      v27 = v137;
    }

LABEL_33:
    v55 = *(a3 + 1);
    if (v29 < v55)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_135;
      }

      if (v29 - v27 < v134)
      {
        break;
      }
    }

LABEL_49:
    if (v29 < v27)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26941F15C(0, *(v28 + 2) + 1, 1, v28);
      v28 = v123;
    }

    v78 = *(v28 + 2);
    v77 = *(v28 + 3);
    v79 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      sub_26941F15C(v77 > 1, v78 + 1, 1, v28);
      v28 = v124;
    }

    *(v28 + 2) = v79;
    v80 = v28 + 32;
    v81 = &v28[16 * v78 + 32];
    v82 = v149;
    *v81 = v27;
    *(v81 + 1) = v82;
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_144;
    }

    if (v78)
    {
      v164 = v28 + 32;
      while (1)
      {
        v83 = v79 - 1;
        v84 = &v80[16 * v79 - 16];
        v85 = &v28[16 * v79];
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v86 = *(v28 + 4);
          v87 = *(v28 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_70:
          if (v89)
          {
            goto LABEL_121;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_124;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_129;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = v79 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v79 < 2)
        {
          goto LABEL_123;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_85:
        if (v104)
        {
          goto LABEL_126;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_128;
        }

        if (v111 < v103)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v83 - 1 >= v79)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v115 = &v80[16 * v83 - 16];
        v116 = *v115;
        v117 = v83;
        v118 = &v80[16 * v83];
        v119 = *(v118 + 1);
        v120 = v148;
        sub_2693E0EF8(*a3 + *(v147 + 72) * *v115, *a3 + *(v147 + 72) * *v118, *a3 + *(v147 + 72) * v119, v165);
        v148 = v120;
        if (v120)
        {
          goto LABEL_114;
        }

        if (v119 < v116)
        {
          goto LABEL_116;
        }

        v121 = a3;
        a3 = v28;
        v28 = *(v28 + 2);
        if (v117 > v28)
        {
          goto LABEL_117;
        }

        *v115 = v116;
        *(v115 + 1) = v119;
        if (v117 >= v28)
        {
          goto LABEL_118;
        }

        v79 = (v28 - 1);
        memmove(v118, v118 + 16, 16 * &v28[-v117 - 1]);
        *(a3 + 2) = v28 - 1;
        v122 = v28 > 2;
        v28 = a3;
        a3 = v121;
        v80 = v164;
        if (!v122)
        {
          goto LABEL_99;
        }
      }

      v90 = &v80[16 * v79];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_119;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_120;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_122;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_125;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_133;
        }

        if (v88 < v114)
        {
          v83 = v79 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v26 = *(a3 + 1);
    v27 = v149;
    v24 = v135;
    v25 = v138;
    if (v149 >= v26)
    {
      goto LABEL_102;
    }
  }

  v56 = v27 + v134;
  if (__OFADD__(v27, v134))
  {
    goto LABEL_136;
  }

  if (v56 >= v55)
  {
    v56 = *(a3 + 1);
  }

  if (v56 < v27)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v28 = sub_2693E15D4(v28);
LABEL_104:
    v125 = v28 + 16;
    v126 = *(v28 + 2);
    while (v126 >= 2)
    {
      v127 = v148;
      if (!*a3)
      {
        goto LABEL_142;
      }

      v128 = v28;
      v28 += 16 * v126;
      v129 = *v28;
      v130 = &v125[2 * v126];
      v131 = v130[1];
      sub_2693E0EF8(*a3 + *(v147 + 72) * *v28, *a3 + *(v147 + 72) * *v130, *a3 + *(v147 + 72) * v131, v165);
      v148 = v127;
      if (v127)
      {
        break;
      }

      if (v131 < v129)
      {
        goto LABEL_130;
      }

      if (v126 - 2 >= *v125)
      {
        goto LABEL_131;
      }

      *v28 = v129;
      *(v28 + 1) = v131;
      v132 = *v125 - v126;
      if (*v125 < v126)
      {
        goto LABEL_132;
      }

      v126 = *v125 - 1;
      memmove(v130, v130 + 2, 16 * v132);
      *v125 = v126;
      a3 = v143;
      v28 = v128;
    }

    goto LABEL_114;
  }

  if (v29 == v56)
  {
    goto LABEL_49;
  }

  v136 = v28;
  v57 = *a3;
  v58 = *(v147 + 72);
  v153 = *(v147 + 16);
  v59 = v57 + v58 * (v29 - 1);
  v150 = -v58;
  v137 = v27;
  v60 = (v27 - v29);
  v151 = v57;
  v140 = v58;
  v61 = v57 + v29 * v58;
  v141 = v56;
LABEL_42:
  v149 = v29;
  v144 = v61;
  v145 = v60;
  v62 = v60;
  v146 = v59;
  v63 = v59;
  while (1)
  {
    v164 = v62;
    v64 = v163;
    v65 = v153;
    v153(v163, v61, v11);
    v66 = v156;
    v65(v156, v63, v11);
    v67 = v157;
    sub_269423AB8();
    v68 = v158;
    sub_269423AB8();
    sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578]);
    v69 = v159;
    LODWORD(v165) = sub_2694240E8();
    v70 = *v155;
    v71 = v68;
    v11 = v160;
    (*v155)(v71, v69);
    (v70)(v67, v69);
    v72 = *v162;
    (*v162)(v66, v11);
    (v72)(v64, v11);
    if (v165)
    {
LABEL_47:
      v29 = v149 + 1;
      v59 = v146 + v140;
      v60 = v145 - 1;
      v61 = v144 + v140;
      if (v149 + 1 == v141)
      {
        v29 = v141;
        a3 = v143;
        v28 = v136;
        v27 = v137;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v73 = v164;
    if (!v151)
    {
      break;
    }

    v74 = *v154;
    v75 = v152;
    (*v154)(v152, v61, v11);
    swift_arrayInitWithTakeFrontToBack();
    v74(v63, v75, v11);
    v63 += v150;
    v61 += v150;
    v54 = __CFADD__(v73, 1);
    v62 = v73 + 1;
    if (v54)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}