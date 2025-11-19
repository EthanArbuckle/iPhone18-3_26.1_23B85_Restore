uint64_t sub_270695E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270695C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270695EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270695DC8();
  *a1 = result;
  return result;
}

uint64_t sub_270695EC8(uint64_t a1)
{
  v2 = sub_2706965EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270695F04(uint64_t a1)
{
  v2 = sub_2706965EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270695F40(uint64_t a1)
{
  v2 = sub_27069673C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270695F7C(uint64_t a1)
{
  v2 = sub_27069673C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270695FB8(uint64_t a1)
{
  v2 = sub_270696640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270695FF4(uint64_t a1)
{
  v2 = sub_270696640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270696030(uint64_t a1)
{
  v2 = sub_270696790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27069606C(uint64_t a1)
{
  v2 = sub_270696790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706960A8(uint64_t a1)
{
  v2 = sub_270696694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706960E4(uint64_t a1)
{
  v2 = sub_270696694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270696120(uint64_t a1)
{
  v2 = sub_2706966E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27069615C(uint64_t a1)
{
  v2 = sub_2706966E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void DragBadgeStyle.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFA0, &qword_2706E92D0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v66 = v5;
  v67 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v65 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFA8, &qword_2706E92D8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v63 = v12;
  v64 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v62 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFB0, &qword_2706E92E0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v60 = v19;
  v61 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13();
  v59 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFB8, &qword_2706E92E8);
  v25 = OUTLINED_FUNCTION_4(v24);
  v57 = v26;
  v58 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13();
  v56 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFC0, &qword_2706E92F0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v54 = v33;
  v55 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  v38 = &v53 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFC8, &qword_2706E92F8);
  OUTLINED_FUNCTION_4(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  v46 = &v53 - v45;
  v47 = *v0;
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2706965EC();
  sub_2706E66AC();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      sub_27069673C();
      v50 = v56;
      OUTLINED_FUNCTION_5_3();
      v52 = v57;
      v51 = v58;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_13_3();
      sub_2706966E8();
      v50 = v59;
      OUTLINED_FUNCTION_5_3();
      v52 = v60;
      v51 = v61;
      goto LABEL_7;
    case 3:
      sub_270696694();
      v50 = v62;
      OUTLINED_FUNCTION_5_3();
      v52 = v63;
      v51 = v64;
      goto LABEL_7;
    case 4:
      sub_270696640();
      v50 = v65;
      OUTLINED_FUNCTION_5_3();
      v52 = v66;
      v51 = v67;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      sub_270696790();
      sub_2706E608C();
      (*(v54 + 8))(v38, v55);
      break;
  }

  (*v49)(v46, v39);
  OUTLINED_FUNCTION_55();
}

unint64_t sub_2706965EC()
{
  result = qword_28081CFD0;
  if (!qword_28081CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFD0);
  }

  return result;
}

unint64_t sub_270696640()
{
  result = qword_28081CFD8;
  if (!qword_28081CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFD8);
  }

  return result;
}

unint64_t sub_270696694()
{
  result = qword_28081CFE0;
  if (!qword_28081CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFE0);
  }

  return result;
}

unint64_t sub_2706966E8()
{
  result = qword_28081CFE8;
  if (!qword_28081CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFE8);
  }

  return result;
}

unint64_t sub_27069673C()
{
  result = qword_28081CFF0;
  if (!qword_28081CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFF0);
  }

  return result;
}

unint64_t sub_270696790()
{
  result = qword_28081CFF8;
  if (!qword_28081CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFF8);
  }

  return result;
}

uint64_t DragBadgeStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2706E65EC();
  MEMORY[0x2743A6A60](v1);
  return sub_2706E660C();
}

void DragBadgeStyle.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v89 = v0;
  v2 = v1;
  v85 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D000, &qword_2706E9300);
  v82 = OUTLINED_FUNCTION_4(v4);
  v83 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v88 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D008, &qword_2706E9308);
  v80 = OUTLINED_FUNCTION_4(v10);
  v81 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13();
  v87 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D010, &qword_2706E9310);
  v17 = OUTLINED_FUNCTION_4(v16);
  v78 = v18;
  v79 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13();
  v84 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D018, &qword_2706E9318);
  v24 = OUTLINED_FUNCTION_4(v23);
  v76 = v25;
  v77 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D020, &qword_2706E9320);
  OUTLINED_FUNCTION_4(v31);
  v75 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v37 = &v70 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D028, &unk_2706E9328);
  OUTLINED_FUNCTION_4(v38);
  v86 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v42);
  v44 = &v70 - v43;
  v45 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2706965EC();
  v46 = v89;
  sub_2706E668C();
  if (v46)
  {
    goto LABEL_10;
  }

  v73 = v31;
  v74 = v37;
  v89 = v30;
  v47 = v87;
  v48 = v88;
  v49 = v44;
  v50 = sub_2706E606C();
  sub_2706974F8(v50, 0);
  if (v53 == v54 >> 1)
  {
    v55 = v86;
LABEL_9:
    v64 = sub_2706E5E8C();
    swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v66 = &type metadata for DragBadgeStyle;
    sub_2706E600C();
    sub_2706E5E6C();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v49, v38);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
    goto LABEL_11;
  }

  if (v53 >= (v54 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270696EC8);
  }

  v71 = *(v52 + v53);
  v56 = sub_270698034(v53 + 1, v54 >> 1, v51, v52, v53, v54);
  v58 = v57;
  v60 = v59;
  swift_unknownObjectRelease();
  v72 = v56;
  if (v58 != v60 >> 1)
  {
    v55 = v86;
    v49 = v44;
    goto LABEL_9;
  }

  v61 = v85;
  v62 = v86;
  switch(v71)
  {
    case 1:
      sub_27069673C();
      v47 = v89;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      v69 = v76;
      v68 = v77;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_13_3();
      sub_2706966E8();
      v47 = v84;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      v69 = v78;
      v68 = v79;
      goto LABEL_16;
    case 3:
      sub_270696694();
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      v68 = v80;
      v69 = v81;
LABEL_16:
      (*(v69 + 8))(v47, v68);
      break;
    case 4:
      sub_270696640();
      v56 = v44;
      sub_2706E5FFC();
      swift_unknownObjectRelease();
      (*(v83 + 8))(v48, v82);
      break;
    default:
      sub_270696790();
      v63 = v74;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      (*(v75 + 8))(v63, v73);
      break;
  }

  (*(v62 + 8))(v56, v38);
  *v61 = v71;
  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
  OUTLINED_FUNCTION_55();
}

uint64_t sub_270696F18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616470556D657469 && a2 == 0xEB00000000736574;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974536567646162 && a2 == 0xEA0000000000656CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

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

uint64_t sub_270696FEC(char a1)
{
  if (a1)
  {
    return 0x7974536567646162;
  }

  else
  {
    return 0x616470556D657469;
  }
}

void sub_270697030()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0E0, &qword_2706E9A38);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  v12 = *v0;
  v15 = *(v0 + 8);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_270697E18();

  sub_2706E66AC();
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0C0, &qword_2706E9A30);
  sub_270697F14(&qword_28081D0E8, sub_270697F8C);
  sub_2706E609C();

  if (!v1)
  {
    v17 = v15;
    v16 = 1;
    sub_270697FE0();
    sub_2706E609C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_55();
}

void sub_270697208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0B0, &qword_2706E9A28);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v22 = &v25[-v21];
  v23 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_270697E18();
  sub_2706E668C();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D0C0, &qword_2706E9A30);
    v25[15] = 0;
    sub_270697F14(&qword_28081D0C8, sub_270697E6C);
    sub_2706E601C();
    v25[13] = 1;
    sub_270697EC0();
    sub_2706E601C();
    (*(v17 + 8))(v22, v15);
    v24 = v25[14];
    *v14 = a10;
    *(v14 + 8) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);

  OUTLINED_FUNCTION_55();
}

uint64_t sub_270697428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270696F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270697450(uint64_t a1)
{
  v2 = sub_270697E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27069748C(uint64_t a1)
{
  v2 = sub_270697E18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706974F8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_6_3();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_27069753C()
{
  result = qword_28081D030;
  if (!qword_28081D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D030);
  }

  return result;
}

uint64_t type metadata accessor for DragPresentation()
{
  result = qword_28081D038;
  if (!qword_28081D038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2706975E4()
{
  result = sub_2706E576C();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2706976BC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_270697710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardDataSession.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_270697804(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706978D0);
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

unint64_t sub_27069795C()
{
  result = qword_28081D048;
  if (!qword_28081D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D048);
  }

  return result;
}

unint64_t sub_2706979FC()
{
  result = qword_28081D050;
  if (!qword_28081D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D050);
  }

  return result;
}

unint64_t sub_270697A54()
{
  result = qword_28081D058;
  if (!qword_28081D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D058);
  }

  return result;
}

unint64_t sub_270697AAC()
{
  result = qword_28081D060;
  if (!qword_28081D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D060);
  }

  return result;
}

unint64_t sub_270697B04()
{
  result = qword_28081D068;
  if (!qword_28081D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D068);
  }

  return result;
}

unint64_t sub_270697B5C()
{
  result = qword_28081D070;
  if (!qword_28081D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D070);
  }

  return result;
}

unint64_t sub_270697BB4()
{
  result = qword_28081D078;
  if (!qword_28081D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D078);
  }

  return result;
}

unint64_t sub_270697C0C()
{
  result = qword_28081D080;
  if (!qword_28081D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D080);
  }

  return result;
}

unint64_t sub_270697C64()
{
  result = qword_28081D088;
  if (!qword_28081D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D088);
  }

  return result;
}

unint64_t sub_270697CBC()
{
  result = qword_28081D090;
  if (!qword_28081D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D090);
  }

  return result;
}

unint64_t sub_270697D14()
{
  result = qword_28081D098;
  if (!qword_28081D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D098);
  }

  return result;
}

unint64_t sub_270697D6C()
{
  result = qword_28081D0A0;
  if (!qword_28081D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0A0);
  }

  return result;
}

unint64_t sub_270697DC4()
{
  result = qword_28081D0A8;
  if (!qword_28081D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0A8);
  }

  return result;
}

unint64_t sub_270697E18()
{
  result = qword_28081D0B8;
  if (!qword_28081D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0B8);
  }

  return result;
}

unint64_t sub_270697E6C()
{
  result = qword_28081D0D0;
  if (!qword_28081D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0D0);
  }

  return result;
}

unint64_t sub_270697EC0()
{
  result = qword_28081D0D8;
  if (!qword_28081D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0D8);
  }

  return result;
}

uint64_t sub_270697F14(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D0C0, &qword_2706E9A30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270697F8C()
{
  result = qword_28081D0F0;
  if (!qword_28081D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0F0);
  }

  return result;
}

unint64_t sub_270697FE0()
{
  result = qword_28081D0F8;
  if (!qword_28081D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D0F8);
  }

  return result;
}

uint64_t sub_270698034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_2706980B0()
{
  result = qword_28081D108;
  if (!qword_28081D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D108);
  }

  return result;
}

uint64_t sub_270698104(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D110, &qword_2706E9A48);
    sub_2706981A0(a2, type metadata accessor for DragPresentationItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2706981A0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DragPresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706982B4);
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

_BYTE *storeEnumTagSinglePayload for DragPresentationUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706983B8);
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

unint64_t sub_270698400()
{
  result = qword_28081D140;
  if (!qword_28081D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D140);
  }

  return result;
}

unint64_t sub_270698458()
{
  result = qword_28081D148;
  if (!qword_28081D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D148);
  }

  return result;
}

unint64_t sub_2706984B0()
{
  result = qword_28081D150;
  if (!qword_28081D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D150);
  }

  return result;
}

unint64_t sub_270698508()
{
  result = qword_28081D158;
  if (!qword_28081D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D158);
  }

  return result;
}

unint64_t sub_270698560()
{
  result = qword_28081D160;
  if (!qword_28081D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D160);
  }

  return result;
}

unint64_t sub_2706985B8()
{
  result = qword_28081D168;
  if (!qword_28081D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D168);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2706E631C();
}

uint64_t sub_2706986E4(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 64) + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_27069872C(uint64_t a1)
{
  v44 = sub_2706E589C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v35[1] = v1;
    v48 = MEMORY[0x277D84F90];
    sub_2706BF820(0, v6, 0);
    v8 = v48;
    v11 = sub_270690E3C(a1);
    result = v8;
    v12 = 0;
    v13 = a1 + 56;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v36 = a1 + 64;
    v37 = v6;
    v38 = v3;
    v39 = a1;
    v42 = a1 + 56;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        v47 = v10;
        v45 = v12;
        v46 = v9;
        v15 = v43;
        v16 = v44;
        v17 = result;
        (*(v3 + 16))(v43, *(a1 + 48) + *(v3 + 72) * v11, v44);
        v18 = sub_2706E580C();
        v20 = v19;
        (*(v3 + 8))(v15, v16);
        result = v17;
        v48 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2706BF820((v21 > 1), v22 + 1, 1);
          result = v48;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v13 = v42;
        if (v47)
        {
          goto LABEL_29;
        }

        v3 = v38;
        a1 = v39;
        v24 = 1 << *(v39 + 32);
        if (v11 >= v24)
        {
          goto LABEL_26;
        }

        v25 = *(v42 + 8 * v14);
        if ((v25 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v39 + 36) != v46)
        {
          goto LABEL_28;
        }

        v26 = v25 & (-2 << (v11 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v27 = v37;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v27 = v37;
          v30 = (v36 + 8 * v14);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              v33 = result;
              sub_270691110(v11, v46, 0);
              result = v33;
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          v34 = result;
          sub_270691110(v11, v46, 0);
          result = v34;
        }

LABEL_19:
        v12 = v45 + 1;
        if (v45 + 1 == v27)
        {
          return result;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_270698A58(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  v4 = sub_2706C2200(*(v1 + 56));
  if (sub_2706C2200(a1) < v4)
  {
LABEL_23:
    sub_2706E5F8C();
    __break(1u);
  }

  else
  {
    v5 = sub_2706C2200(*(v2 + 56));
    v6 = -sub_2706C2200(a1);
    v7 = 4;
    v14 = v6;
    while (v6 + v7 != 4)
    {
      v8 = v7 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743A62C0](v7 - 4, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v8 >= v5)
      {
        type metadata accessor for NSItemProviderRepresentative();
        OUTLINED_FUNCTION_19_0();
        *(swift_allocObject() + 16) = v10;
        swift_beginAccess();
        v13 = v10;
        MEMORY[0x2743A5F60]();
        if (*((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2706E5B2C();
        }

        sub_2706E5B4C();
        swift_endAccess();
        v6 = v14;
      }

      else
      {
        swift_beginAccess();
        v11 = *(v2 + 56);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2743A62C0](v7 - 4);
        }

        else
        {
          if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v12 = *(v11 + 8 * v7);
        }

        swift_endAccess();
        v13 = *(v12 + 16);
        *(v12 + 16) = v10;
      }

      ++v7;
    }
  }
}

BOOL sub_270698CB0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_270698D60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v6 = sub_2706E58DC();
  __swift_project_value_buffer(v6, qword_2808292D8);
  sub_2706A6898(a1, a2);

  oslog = sub_2706E58BC();
  v7 = sub_2706E5BEC();
  sub_2706A5B04(a1, a2);

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v21 = &type metadata for PasteboardCollection.State;
    v22 = v9;
    v19 = a1;
    v20 = a2;
    sub_2706A6898(a1, a2);
    v10 = sub_2706CB238(&v19);
    v12 = sub_2706C83E8(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
    v14 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8);
    v21 = &type metadata for PasteboardCollection.State;
    v19 = v13;
    v20 = v14;
    sub_2706A6898(v13, v14);
    v15 = sub_2706CB238(&v19);
    v17 = sub_2706C83E8(v15, v16, &v22);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_270680000, oslog, v7, "PasteboardCollection: %{public}s → %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v9, -1, -1);
    MEMORY[0x2743A75B0](v8, -1, -1);
  }
}

uint64_t sub_270698F5C(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
  v6 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
  v7 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_2706A6898(a1, a2);
  sub_270698D60(v6, v7);
  sub_2706A5B04(v6, v7);

  return sub_2706A5B04(a1, a2);
}

uint64_t sub_270698FD8()
{
  v1 = sub_2706E576C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_id, v1);
  sub_2706E572C();
  (*(v2 + 8))(v5, v1);
  v6 = sub_2706B8734(8);
  v7 = MEMORY[0x2743A5EC0](v6);

  return v7;
}

uint64_t sub_270699100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v3;
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD000000000000060, 0x80000002706F0100, 78, sub_2706A6858, v6);
  v7 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8);
  if (v7 >> 62)
  {
    if (v7 >> 62 == 1)
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v8 = sub_2706E58DC();
      __swift_project_value_buffer(v8, qword_2808292F0);

      v9 = sub_2706E58BC();
      v10 = sub_2706E5C1C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v43[0] = v12;
        *v11 = 136446210;
        v13 = sub_270698FD8();
        v15 = sub_2706C83E8(v13, v14, v43);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_270680000, v9, v10, "%{public}s: Waiting For PasteboardItemCollection activation", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x2743A75B0](v12, -1, -1);
        MEMORY[0x2743A75B0](v11, -1, -1);
      }

      v16 = *(v3 + 16);
      swift_beginAccess();

      MEMORY[0x2743A5F60](v17);
      sub_2706E2658(*((*(v16 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();
    }

    else
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v35 = sub_2706E58DC();
      __swift_project_value_buffer(v35, qword_2808292F0);

      v36 = sub_2706E58BC();
      v37 = sub_2706E5C1C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43[0] = v39;
        *v38 = 136446210;
        v40 = sub_270698FD8();
        v42 = sub_2706C83E8(v40, v41, v43);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_270680000, v36, v37, "%{public}s: PasteboardItemCollection already activated", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x2743A75B0](v39, -1, -1);
        MEMORY[0x2743A75B0](v38, -1, -1);
      }

      sub_2706DD768();
    }
  }

  else
  {
    v19 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
    v20 = *(v3 + 16);
    swift_beginAccess();
    sub_2706A6898(v19, v7);

    MEMORY[0x2743A5F60](v21);
    sub_2706E2658(*((*(v20 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_2706E5B4C();
    swift_endAccess();

    v22 = swift_unknownObjectRetain();
    sub_270698F5C(v22, v7 | 0x4000000000000000);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v23 = sub_2706E58DC();
    __swift_project_value_buffer(v23, qword_2808292F0);

    v24 = sub_2706E58BC();
    v25 = sub_2706E5C1C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43[0] = v27;
      *v26 = 136446210;
      v28 = sub_270698FD8();
      v30 = sub_2706C83E8(v28, v29, v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_270680000, v24, v25, "%{public}s: Activating PasteboardItemCollection", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x2743A75B0](v27, -1, -1);
      MEMORY[0x2743A75B0](v26, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v32 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_collection);
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v19;
    v33[4] = v7;
    v34 = *(v7 + 8);

    sub_2706A6898(v19, v7);
    v34(v32, sub_2706A68E4, v33, ObjectType, v7);

    return sub_2706A5B04(v19, v7);
  }
}

void sub_270699718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 & 0xF000000000000007;
  if ((a1 & 0xF000000000000007) == 0xF000000000000007)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v10 = sub_2706E58DC();
    __swift_project_value_buffer(v10, qword_2808292F0);

    v11 = sub_2706E58BC();
    v12 = sub_2706E5C1C();

    if (os_log_type_enabled(v11, v12))
    {
      v31 = a2;
      v13 = swift_slowAlloc();
      v30 = a5;
      v14 = swift_slowAlloc();
      v32[0] = v14;
      *v13 = 136446210;
      v15 = sub_270698FD8();
      v17 = sub_2706C83E8(v15, v16, v32);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_270680000, v11, v12, "%{public}s: PasteboardItemCollection Activated", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v18 = v14;
      a5 = v30;
      MEMORY[0x2743A75B0](v18, -1, -1);
      MEMORY[0x2743A75B0](v13, -1, -1);
    }
  }

  else
  {
    sub_270694BA4(a1);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v19 = sub_2706E58DC();
    v20 = __swift_project_value_buffer(v19, qword_2808292F0);
    MEMORY[0x28223BE20](v20);
    sub_270694664(sub_2706A6904, a3, sub_2706A690C, v29, v21, v22, v23, v24, v29[0], v29[1], a1, v29[3], v29[4], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6]);
    sub_2706A6928(a1);
  }

  v25 = swift_unknownObjectRetain();
  sub_270698F5C(v25, a5 | 0x8000000000000000);
  v26 = *(a3 + 16);
  if (v9 == 0xF000000000000007)
  {
    v27 = 0;
  }

  else
  {
    sub_270694B50();
    v27 = swift_allocError();
    *v28 = a1;
  }

  sub_2706A68F0(a1);

  sub_2706DAAE8();

  sub_2706DD768();
}

uint64_t sub_2706999E8()
{
  sub_2706E5E3C();
  v0 = sub_270698FD8();

  MEMORY[0x2743A5EF0](0xD00000000000002CLL, 0x80000002706F03D0);
  return v0;
}

uint64_t sub_270699A70()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_id;
  v3 = sub_2706E576C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_2706A5B04(*(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state), *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state + 8));
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_collection);

  return v0;
}

uint64_t sub_270699B3C()
{
  result = sub_2706E576C();
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

uint64_t sub_270699BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v32 = a1;
  v7 = sub_2706E565C();
  v8 = *(v7 - 8);
  v28 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions;
  type metadata accessor for Completions();
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  *(v5 + v14) = v15;
  v16 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress;
  *(v5 + v16) = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v17 = v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
  *v17 = 0;
  *(v17 + 8) = -1;
  v29 = a2;
  sub_270690CD8(a2, v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_id);
  v18 = NSTemporaryDirectory();
  sub_2706E5A3C();

  sub_2706E55CC();

  sub_2706E572C();
  sub_2706E55EC();

  (*(v8 + 8))(v11, v7);
  v19 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url;
  v20 = *(v8 + 32);
  v20(v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v13, v7);
  (*(v8 + 16))(v13, v5 + v19, v7);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  v20(v22 + v21, v13, v7);
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD000000000000060, 0x80000002706F0100, 137, sub_2706A3A44, v22);
  v24 = *(v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v25);
  sub_2706E2658(*((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  [*(v5 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) publish];

  sub_270687394(v29);
  v26 = sub_2706E576C();
  (*(*(v26 - 8) + 8))(v32, v26);
  return v5;
}

void sub_270699FA8(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_2706E565C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if (a1)
  {
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v10 = a1;
    v11 = a1;
    v12 = sub_27069A204(a1);
    a2();
  }

  else
  {
    sub_270690D44(0, &qword_28081D210, 0x277CCAC90);
    v13 = *(v8 + 16);
    v13(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = sub_27069A274(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 0);
    v19[1] = sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v13(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v17 = v14;
    v18 = sub_27069A430(0, 0xF000000000000000, v14, sub_2706A3B30, v16, 0);
    a2();
  }
}

id sub_27069A204(void *a1)
{
  if (a1)
  {
    v2 = sub_2706E557C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() resultWithError_];

  return v3;
}

id sub_27069A274(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2706E55DC();
  v6 = [v4 initWithURL:v5 readonly:a2 & 1];

  v7 = sub_2706E565C();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void sub_27069A318()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v1 = sub_2706E55DC();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_2706E558C();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

id sub_27069A430(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 >> 60 == 15)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = sub_2706E56AC();
  sub_2706A3BA4(a1, a2);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17[4] = a4;
  v17[5] = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2706DA6A0;
  v17[3] = &block_descriptor_0;
  v11 = _Block_copy(v17);

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = sub_2706E557C();

LABEL_8:
  v15 = [swift_getObjCClassFromMetadata() resultWithData:v10 urlWrapper:a3 cleanupHandler:v11 error:v12];

  _Block_release(v11);
  return v15;
}

uint64_t sub_27069A580()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v3);
  sub_2706E2658(*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  v4 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress;
  [*(v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) setCancellable_];
  v5 = *(v1 + v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_2706A5A9C;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2706DA6A0;
  v10[3] = &block_descriptor_176;
  v7 = _Block_copy(v10);
  v8 = v5;

  sub_2706A5AA4(sub_2706A5A9C);

  [v8 setCancellationHandler_];
  _Block_release(v7);
}

uint64_t sub_27069A72C()
{
  v0 = sub_2706E592C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2706E594C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v12 = sub_2706E5C4C();
    aBlock[4] = sub_2706A5AB4;
    aBlock[5] = v11;
    v17 = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_179;
    v16 = _Block_copy(aBlock);

    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706A6DC4(&qword_28081CEF8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    v15 = v5;
    sub_2706A5ABC(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    sub_2706E5D7C();
    v14 = v16;
    v13 = v17;
    MEMORY[0x2743A60D0](0, v9, v4, v16);
    _Block_release(v14);

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v15);
  }

  return result;
}

void sub_27069AA34()
{
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v0 = sub_2706E58DC();
  __swift_project_value_buffer(v0, qword_2808292F0);

  v1 = sub_2706E58BC();
  v2 = sub_2706E5C1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    v5 = sub_27069AC24();
    v7 = sub_2706C83E8(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_270680000, v1, v2, "%{public}s: Cancelled via NSProgress", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x2743A75B0](v4, -1, -1);
    MEMORY[0x2743A75B0](v3, -1, -1);
  }

  sub_270694B50();
  v8 = swift_allocError();
  *v9 = 0xC000000000000030;
  type metadata accessor for Completion();
  swift_allocObject();
  sub_2706DD84C();
  sub_27069B74C(v8);
}

uint64_t sub_27069AC24()
{
  sub_2706E572C();
  v0 = OUTLINED_FUNCTION_1_1();
  v1 = MEMORY[0x2743A5EC0](v0);

  MEMORY[0x2743A5EF0](58, 0xE100000000000000);
  MEMORY[0x2743A5EF0](0xD00000000000003DLL, 0x80000002706F0170);
  return v1;
}

void sub_27069ACB4(char a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v6 = sub_2706E565C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = sub_2706E576C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PasteboardDataTransferID(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_270690CD8(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_id, v22);
    (*(v15 + 32))(v18, v22, v14);
    (*(v7 + 16))(v13, v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v6);
    v23 = type metadata accessor for ArchiveTransferDestination(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    sub_2706D6614();
    v27 = v26;
    sub_2706D6A60();
    if (v41 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v41;
    }

    [*(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) setTotalUnitCount_];
    v29 = v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
    v30 = *(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
    *v29 = v27;
    v31 = *(v29 + 8);
    *(v29 + 8) = 0;

    sub_2706A59E8(v30, v31);
    sub_2706DD768();
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v33 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url;
    v41 = *(v7 + 16);
    v41(v13, v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v6);
    sub_2706E564C();
    (*(v7 + 8))(v13, v6);
    v34 = sub_2706E5A0C();

    [v32 createFileAtPath:v34 contents:0 attributes:0];

    sub_270690D44(0, &qword_28081D258, 0x277CCA9F8);
    v41(v11, v4 + v33, v6);
    v35 = sub_2706CFDB0(v11);
    v36 = v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
    v37 = *(v4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
    *v36 = v35;
    v38 = *(v36 + 8);
    *(v36 + 8) = 2;
    v39 = v35;
    sub_2706A59E8(v37, v38);
    sub_2706DD768();
  }
}

void sub_27069B118(id a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v5 = sub_2706E58DC();
    v6 = __swift_project_value_buffer(v5, qword_2808292F0);
    MEMORY[0x28223BE20](v6);
    sub_270694664(sub_2706A5A94, a2, sub_2706A74AC, v25, v7, v8, v9, v10, v25[0], v25[1], a1, v25[3], v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8]);
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v11 = sub_2706E58DC();
    __swift_project_value_buffer(v11, qword_2808292F0);

    v12 = sub_2706E58BC();
    v13 = sub_2706E5C1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136446466;
      v16 = sub_27069AC24();
      v18 = sub_2706C83E8(v16, v17, v27);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v26 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D260, &qword_2706EA078);
      v19 = sub_2706E5A4C();
      v21 = sub_2706C83E8(v19, v20, v27);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_270680000, v12, v13, "%{public}s: Archive transfer finished, error=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v15, -1, -1);
      MEMORY[0x2743A75B0](v14, -1, -1);
    }
  }

  v22 = a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
  v23 = *(a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
  v24 = *(a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8);
  if (*(a2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8))
  {
    if (v24 != 1)
    {
      return;
    }

    *v22 = 0;
    *(v22 + 8) = -1;
    (*(*a2 + 256))(a1);
  }

  else
  {
    *v22 = 0;
    *(v22 + 8) = 1;
  }

  sub_2706A59E8(v23, v24);
}

uint64_t sub_27069B408()
{
  sub_2706E5E3C();
  v0 = sub_27069AC24();

  MEMORY[0x2743A5EF0](0xD000000000000019, 0x80000002706F0310);
  return v0;
}

void sub_27069B490(uint64_t a1, id a2)
{
  v3 = v2;
  v5 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
  v6 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8);
  if (!*(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8))
  {
    goto LABEL_9;
  }

  if (v6 == 1)
  {
    if (!v5)
    {
LABEL_11:
      sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
      a2 = sub_2706E483C(-6709, 0xD00000000000002BLL, 0x80000002706F02E0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardController_iOS.swift", 96, 2, 218);
      if (qword_28081C738 == -1)
      {
LABEL_12:
        v18 = sub_2706E58DC();
        v19 = __swift_project_value_buffer(v18, qword_2808292F0);
        MEMORY[0x28223BE20](v19);

        sub_270693AF8(sub_2706A74AC);
        v20 = a2;
        sub_27069B74C(a2);

        return;
      }

LABEL_14:
      OUTLINED_FUNCTION_0_1();
      goto LABEL_12;
    }

LABEL_9:
    v13 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress);
    sub_2706A5A44(v5, v6);
    v14 = v13;
    v15 = OUTLINED_FUNCTION_31_2();
    v16 = MEMORY[0x2743A5B30](v15);
    v17 = [v14 completedUnitCount];
    if (!__OFADD__(v17, v16))
    {
      [v14 setCompletedUnitCount_];

      OUTLINED_FUNCTION_31_2();
      sub_2706D74D8();
      sub_2706A59E8(v5, v6);
      sub_2706DD768();
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v6 != 2)
  {
    goto LABEL_11;
  }

  v7 = *(v3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress);
  sub_2706A5A44(v5, 2u);
  v8 = v7;
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = MEMORY[0x2743A5B30](v9);
  v11 = [v8 completedUnitCount];
  if (__OFADD__(v11, v10))
  {
    __break(1u);
  }

  else
  {
    [v8 setCompletedUnitCount_];

    OUTLINED_FUNCTION_31_2();
    v12 = sub_2706E56AC();
    [v5 writeData_];

    sub_2706DD768();

    sub_2706A59E8(v5, 2u);
  }
}

void sub_27069B74C(void *a1)
{
  v2 = v1;
  v45 = *MEMORY[0x277D85DE8];
  v4 = sub_2706E565C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v10 = sub_2706E58DC();
    v11 = __swift_project_value_buffer(v10, qword_2808292F0);
    MEMORY[0x28223BE20](v11);
    v43[-2] = a1;
    sub_270694664(sub_2706A5A58, v1, sub_2706A5A60, &v43[-4], v12, v13, v14, v15, v43[0], v43[1], v44[0], v44[1], v44[2], v45, v46, v47, v48, v49, v50, v51, v52, v53);
    v16 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v4);
    v17 = sub_2706E55DC();
    (*(v5 + 8))(v8, v4);
    v44[0] = 0;
    v18 = [v16 removeItemAtURL:v17 error:v44];

    if (v18)
    {
      v19 = v44[0];
    }

    else
    {
      v28 = v44[0];
      v29 = sub_2706E558C();

      swift_willThrow();
    }

    [*(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) cancel];
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v20 = sub_2706E58DC();
    __swift_project_value_buffer(v20, qword_2808292F0);

    v21 = sub_2706E58BC();
    v22 = sub_2706E5C1C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44[0] = v24;
      *v23 = 136446210;
      v25 = sub_27069AC24();
      v27 = sub_2706C83E8(v25, v26, v44);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_270680000, v21, v22, "%{public}s: Remote finished successfully", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2743A75B0](v24, -1, -1);
      MEMORY[0x2743A75B0](v23, -1, -1);
    }
  }

  v30 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v31);
  sub_2706E2658(*((*(v30 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  v32 = v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target;
  v33 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
  v34 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8);
  if (!*(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8))
  {
    v38 = *(v2 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target);
    if (a1)
    {
      sub_2706A5A44(v38, 0);
      v39 = a1;
      sub_2706A5A44(v33, 0);
      sub_2706D7484();
      sub_2706A59E8(v33, 0);
    }

    else
    {
      sub_2706A5A20(v38, 0);
    }

    v36 = *v32;
    *v32 = v33;
    v37 = *(v32 + 8);
    *(v32 + 8) = 1;
    goto LABEL_27;
  }

  if (v34 != 1)
  {
    if (v34 == 2)
    {
      v44[0] = 0;
      sub_2706A5A20(v33, 2u);
      if ([v33 closeAndReturnError_])
      {
        v35 = v44[0];
      }

      else
      {
        v40 = v44[0];
        v41 = sub_2706E558C();

        swift_willThrow();
      }

      sub_2706A59E8(v33, 2u);
    }

    goto LABEL_24;
  }

  if (!v33)
  {
    (*(*v2 + 256))(a1);
    v36 = 0;
    v37 = 1;
LABEL_27:
    sub_2706A59E8(v36, v37);
    goto LABEL_28;
  }

LABEL_24:
  (*(*v2 + 256))(a1);
LABEL_28:
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t sub_27069BCD4()
{
  v1 = sub_27069AC24();
  MEMORY[0x2743A5EF0](0x64656C696146203ALL, 0xE800000000000000);
  return v1;
}

id sub_27069BD24()
{
  v1 = v0;
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v2 = sub_2706E58DC();
  __swift_project_value_buffer(v2, qword_2808292F0);

  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_27069AC24();
    v9 = sub_2706C83E8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_270680000, v3, v4, "%{public}s: Receiver completed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743A75B0](v6, -1, -1);
    MEMORY[0x2743A75B0](v5, -1, -1);
  }

  v10 = *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);

  sub_2706DAAE8();

  v11 = *(v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress);

  return [v11 unpublish];
}

uint64_t sub_27069BECC()
{
  sub_270687394(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_id);
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_completions);

  sub_2706A59E8(*(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target), *(v0 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_target + 8));
  v2 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url;
  v3 = sub_2706E565C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_27069BFB4()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2706E565C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_27069C0CC(uint64_t a1, unint64_t a2, __int16 a3)
{
  v41[28] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D74130];
  v37 = *MEMORY[0x277D74128];
  if (a3)
  {
    v6 = *MEMORY[0x277D74128];
  }

  else
  {
    v6 = *MEMORY[0x277D74130];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D240, &qword_2706EA068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v8 = *MEMORY[0x277D74098];
  *(inited + 32) = *MEMORY[0x277D74098];
  type metadata accessor for DocumentType(0);
  v10 = v9;
  *(inited + 64) = v9;
  *(inited + 40) = v6;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_2706A6DC4(&qword_28081C848, type metadata accessor for DocumentReadingOptionKey);
  v11 = v6;
  v12 = v8;
  v13 = MEMORY[0x277D84F70];
  v14 = sub_2706E59AC();
  objc_allocWithZone(MEMORY[0x277CCA898]);
  sub_270692D3C(a1, a2);
  v15 = sub_2706A354C(a1, a2, v14, 0);
  if (v39)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v40 = v11;
  v17 = [v15 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D248, &qword_2706EA070);
  if ((a3 & 0x100) != 0)
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_2706E8FC0;
    v26 = *MEMORY[0x277D74090];
    *(v25 + 64) = v10;
    *(v25 + 32) = v26;
    *(v25 + 40) = v37;
    type metadata accessor for DocumentAttributeKey(0);
    sub_2706A6DC4(&qword_28081C828, type metadata accessor for DocumentAttributeKey);
    v27 = v26;
    v28 = v37;
    sub_2706E59AC();
    v29 = sub_2706E598C();

    v41[0] = 0;
    v30 = [v16 fileWrapperFromRange:0 documentAttributes:v17 error:{v29, v41}];

    v13 = v41[0];
    if (v30)
    {
      v31 = v41[0];
      v32 = sub_2706A5628(v30, &selRef_serializedRepresentation);
      if (v33 >> 60 != 15)
      {
        v13 = v32;

        goto LABEL_18;
      }

      sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
      sub_2706E483C(-6742, 0xD000000000000016, 0x80000002706F02C0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardController_iOS.swift", 96, 2, 293);
      swift_willThrow();

      goto LABEL_14;
    }

    v34 = v41[0];
    sub_2706E558C();
  }

  else
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_2706E8FC0;
    v19 = *MEMORY[0x277D74090];
    *(v18 + 64) = v10;
    *(v18 + 32) = v19;
    *(v18 + 40) = v5;
    type metadata accessor for DocumentAttributeKey(0);
    sub_2706A6DC4(&qword_28081C828, type metadata accessor for DocumentAttributeKey);
    v20 = v19;
    v21 = v5;
    sub_2706E59AC();
    v22 = sub_2706E598C();

    v41[0] = 0;
    v23 = [v16 dataFromRange:0 documentAttributes:v17 error:{v22, v41}];

    v24 = v41[0];
    if (v23)
    {
      v13 = sub_2706E56BC();

LABEL_18:
      goto LABEL_16;
    }

    v13 = v24;
    sub_2706E558C();
  }

  swift_willThrow();
LABEL_14:
  v11 = v40;

LABEL_15:
LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_27069C590(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a4;
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2706E576C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867025RTFRepresentationReceiver_converter) = 2;
  (*(v16 + 16))(v19, a1, v15);
  sub_270690CD8(a2, v14);
  v20 = v26;
  v21 = sub_270699BE8(v19, v14, a5, a6);
  sub_270687394(a2);
  (*(v16 + 8))(a1, v15);
  if (!v20)
  {
    *(v21 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867025RTFRepresentationReceiver_converter) = v24 & 1 | ((v25 & 1) << 8);
  }

  return v21;
}

void sub_27069C768(void *a1)
{
  v3 = sub_2706E565C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_27069BD24();
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867025RTFRepresentationReceiver_converter);
    if (v9 == 2)
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_url, v3);
      v10 = sub_2706E567C();
      v12 = v11;
      v13 = sub_27069C0CC(v10, v11, v9 & 0x101);
      v15 = v14;
      sub_2706E56DC();
      sub_270688E88(v13, v15);
      sub_270688E88(v10, v12);
      (*(v4 + 8))(v7, v3);
      sub_27069BD24();
    }
  }
}

uint64_t sub_27069C994(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

void sub_27069CA58()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v1;
  v13 = sub_2706E576C();
  v14 = OUTLINED_FUNCTION_4(v13);
  v90 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v89 = v18;
  v92 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PasteboardDataTransferID(0);
  v20 = OUTLINED_FUNCTION_5_4(v19);
  v86 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v87 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  v27 = type metadata accessor for DataProvider();
  v91 = v9;
  sub_2706AB828(0xD000000000000037, 0x80000002706F0390, v7, v9, v3, v27, v28, v29, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v7);
  v31 = v30;
  v32 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  OUTLINED_FUNCTION_9_1();
  sub_2706A6494(v11 + v32, v94, &qword_28081D278, &qword_2706EBB10);
  if (v94[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D280, &unk_2706EA0A0);
    if (swift_dynamicCast())
    {
      v85 = v93[0];
      v34 = *(v11 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
      v33 = *(v11 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
      v35 = qword_28081C738;

      if (v35 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v84 = v31;
      v36 = sub_2706E58DC();
      __swift_project_value_buffer(v36, qword_2808292F0);
      sub_270690CD8(v91, v26);

      v37 = sub_2706E58BC();
      v38 = sub_2706E5C1C();

      LODWORD(v78) = v38;
      v39 = os_log_type_enabled(v37, v38);
      v82 = v1;
      v83 = v5;
      v81 = v11;
      v80 = v33;
      v79 = v34;
      if (v39)
      {
        v40 = v33;
        v41 = OUTLINED_FUNCTION_27_1();
        v77 = OUTLINED_FUNCTION_26_1();
        v94[0] = v77;
        *v41 = 136446466;
        v42 = v40;
        sub_2706E572C();
        v43 = OUTLINED_FUNCTION_1_1();
        v44 = v37;
        v45 = MEMORY[0x2743A5EC0](v43);
        v46 = v34;
        v48 = v47;

        sub_270687394(v26);
        v49 = sub_2706C83E8(v45, v48, v94);

        *(v41 + 4) = v49;
        *(v41 + 12) = 2082;
        *(v41 + 14) = sub_2706C83E8(v46, v42, v94);
        _os_log_impl(&dword_270680000, v44, v78, "Pasteboard Representation %{public}s Load: ty=%{public}s", v41, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        sub_270687394(v26);
      }

      v78 = *(v85 + 16);
      v64 = v87;
      sub_270690CD8(v91, v87);
      v65 = v90;
      (*(v90 + 16))(v92, v88, v13);
      v66 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v67 = (v23 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
      v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v72 = *(v65 + 80);
      v91 = v13;
      v73 = (v72 + v71 + 8) & ~v72;
      v74 = swift_allocObject();
      sub_2706A66AC(v64, v74 + v66);
      *(v74 + v67) = v84;
      *(v74 + v68) = v82;
      v75 = (v74 + v69);
      v76 = v80;
      *v75 = v79;
      v75[1] = v76;
      *(v74 + v70) = v81;
      *(v74 + v71) = v83;
      (*(v65 + 32))(v74 + v73, v92, v91);

      sub_270699100(sub_2706A6710, v74);

      goto LABEL_15;
    }
  }

  else
  {
    sub_2706A64F4(v94, &qword_28081D278, &qword_2706EBB10);
  }

  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v50 = sub_2706E58DC();
  __swift_project_value_buffer(v50, qword_2808292F0);
  OUTLINED_FUNCTION_19_3();

  v51 = sub_2706E58BC();
  v52 = sub_2706E5BFC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_27_1();
    v93[0] = OUTLINED_FUNCTION_26_1();
    *v53 = 136446466;
    sub_2706E572C();
    v54 = OUTLINED_FUNCTION_1_1();
    v55 = MEMORY[0x2743A5EC0](v54);
    v57 = v56;

    v58 = sub_2706C83E8(v55, v57, v93);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2082;
    sub_2706A6494(v11 + v32, v94, &qword_28081D278, &qword_2706EBB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D278, &qword_2706EBB10);
    v59 = sub_2706E5A4C();
    v61 = sub_2706C83E8(v59, v60, v93);

    *(v53 + 14) = v61;
    _os_log_impl(&dword_270680000, v51, v52, "Pasteboard Representation %{public}s Missing iOS Context: %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  sub_270694B50();
  v62 = swift_allocError();
  *v63 = 0xC000000000000010;
  sub_2706DD768();

LABEL_15:

  OUTLINED_FUNCTION_16_0();
}

void sub_27069D198(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v95 = a7;
  v96 = a4;
  v97 = a3;
  v13 = sub_2706E576C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = type metadata accessor for PasteboardDataTransferID(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v18);
  if (a2)
  {
    v23 = a2;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v24 = sub_2706E58DC();
    v25 = __swift_project_value_buffer(v24, qword_2808292F0);
    v26 = v25;
    MEMORY[0x28223BE20](v25);
    *(&v80 - 2) = v97;
    v27 = a2;
    sub_270694BF4(sub_2706A6B9C, (&v80 - 4), v26, a2, v28, v29, v30, v31, v80, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    v32 = a2;
    sub_2706DD768();
  }

  else
  {
    v87 = &v80 - v19;
    v88 = v22;
    v89 = v21;
    v90 = a10;
    v85 = v13;
    v86 = v15;
    v91 = v20;
    v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v93 = v14;
    v94 = a9;
    v33 = *(*(a5 + 24) + 16);
    v34 = v95;
    v35 = sub_2706E5A0C();
    v36 = [v33 _representationConformingToType_];

    if (v36)
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v84 = v36;
      v37 = sub_2706E58DC();
      __swift_project_value_buffer(v37, qword_2808292F0);
      v38 = v87;
      sub_270690CD8(v97, v87);

      v39 = sub_2706E58BC();
      v40 = sub_2706E5C1C();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v92;
      v83 = a6;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136446466;
        v82 = v40;
        sub_2706E572C();
        v45 = sub_2706B8734(8);
        v46 = MEMORY[0x2743A5EC0](v45);
        v47 = v34;
        v49 = v48;

        sub_270687394(v38);
        v50 = sub_2706C83E8(v46, v49, aBlock);

        *(v43 + 4) = v50;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_2706C83E8(a6, v47, aBlock);
        _os_log_impl(&dword_270680000, v39, v82, "Pasteboard Provider %{public}s Activated: %{public}s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2743A75B0](v44, -1, -1);
        MEMORY[0x2743A75B0](v43, -1, -1);
      }

      else
      {

        sub_270687394(v38);
      }

      v63 = v85;
      v64 = v86;
      v65 = v93;
      (*(v93 + 16))(v42, v90, v85);
      v66 = v91;
      sub_270690CD8(v97, v91);
      v67 = v65;
      v68 = (*(v65 + 80) + 24) & ~*(v65 + 80);
      v69 = (v64 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = (*(v89 + 80) + v69 + 8) & ~*(v89 + 80);
      v71 = (v88 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      v73 = v63;
      v74 = v72;
      *(v72 + 16) = v94;
      (*(v67 + 32))(v72 + v68, v42, v73);
      *(v74 + v69) = 0;
      sub_2706A66AC(v66, v74 + v70);
      *(v74 + v71) = v96;
      v75 = (v74 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
      v76 = v95;
      *v75 = v83;
      v75[1] = v76;
      aBlock[4] = sub_2706A6A94;
      aBlock[5] = v74;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_27069EF18;
      aBlock[3] = &block_descriptor_194;
      v77 = _Block_copy(aBlock);

      v78 = v84;
      v79 = [v84 loadWithOptions:0 v2:v77 completionHandler:?];
      _Block_release(v77);
    }

    else
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v51 = sub_2706E58DC();
      __swift_project_value_buffer(v51, qword_2808292F0);

      v52 = sub_2706E58BC();
      v53 = sub_2706E5BFC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock[0] = v55;
        *v54 = 136446210;
        sub_2706E572C();
        v56 = sub_2706B8734(8);
        v57 = MEMORY[0x2743A5EC0](v56);
        v59 = v58;

        v60 = sub_2706C83E8(v57, v59, aBlock);

        *(v54 + 4) = v60;
        _os_log_impl(&dword_270680000, v52, v53, "Pasteboard Representation %{public}s Missing NSItemProviderRepresentation", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x2743A75B0](v55, -1, -1);
        MEMORY[0x2743A75B0](v54, -1, -1);
      }

      sub_270694B50();
      v61 = swift_allocError();
      *v62 = 0xC000000000000010;
      sub_2706DD768();
    }
  }
}

unint64_t sub_27069D964()
{
  sub_2706E5E3C();

  sub_2706E572C();
  v0 = sub_2706B8734(8);
  v1 = MEMORY[0x2743A5EC0](v0);
  v3 = v2;

  MEMORY[0x2743A5EF0](v1, v3);

  MEMORY[0x2743A5EF0](0xD000000000000012, 0x80000002706F0450);
  return 0xD000000000000014;
}

void sub_27069DA44(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v159 = a7;
  v160 = a8;
  v161 = a6;
  v162 = a5;
  v12 = sub_2706E565C();
  v13 = *(v12 - 8);
  v150 = v12;
  v151 = v13;
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v152 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2706E576C();
  v157 = *(v16 - 8);
  v158 = v16;
  v17 = *(v157 + 64);
  MEMORY[0x28223BE20](v16);
  v155 = v18;
  v156 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PasteboardDataTransferID(0);
  v153 = *(v19 - 8);
  v20 = *(v153 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v147 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v154 = &v147 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v147 - v28;
  v30 = [a1 cleanupHandler];
  if (v30)
  {
    v31 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_27069EA04(sub_2706A707C, v32, a3);
  }

  if (a4)
  {
    v33 = a4;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v34 = sub_2706E58DC();
    v35 = __swift_project_value_buffer(v34, qword_2808292F0);
    v36 = v35;
    MEMORY[0x28223BE20](v35);
    *(&v147 - 2) = v162;
    v37 = a4;
    sub_270694BF4(sub_2706A7040, (&v147 - 4), v36, a4, v38, v39, v40, v41, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
    v42 = swift_allocObject();
    swift_getErrorValue();
    *(v42 + 16) = sub_2706E653C();
    *(v42 + 24) = v43;
    v44 = v42 | 0x6000000000000000;
    sub_270694B50();
    v45 = swift_allocError();
    *v46 = v44;
    sub_2706DD768();

    v47 = a4;
    goto LABEL_12;
  }

  v48 = a3;
  v49 = a2;
  if (sub_270691CE0(v162, a3))
  {
    swift_unknownObjectRelease();
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v50 = sub_2706E58DC();
    v51 = __swift_project_value_buffer(v50, qword_2808292F0);
    MEMORY[0x28223BE20](v51);
    v53 = v159;
    v52 = v160;
    *(&v147 - 4) = v162;
    *(&v147 - 3) = v53;
    *(&v147 - 2) = v52;
    sub_270694BF8(sub_2706A7034);
    sub_270694B50();
    v54 = swift_allocError();
    *v55 = 0xC000000000000018;
LABEL_11:
    sub_2706DD768();
    v47 = v54;
LABEL_12:

    return;
  }

  v159 = sub_2706A5628(a1, &selRef_data);
  if (v56 >> 60 == 15)
  {
    v57 = [a1 urlWrapper];
    if (!v57)
    {
      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v93 = sub_2706E58DC();
      __swift_project_value_buffer(v93, qword_2808292F0);
      sub_270690CD8(v162, v22);
      v94 = sub_2706E58BC();
      v95 = sub_2706E5BFC();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v163[0] = v97;
        *v96 = 136446210;
        sub_2706E572C();
        v98 = sub_2706B8734(8);
        v99 = MEMORY[0x2743A5EC0](v98);
        v101 = v100;

        sub_270687394(v22);
        v102 = sub_2706C83E8(v99, v101, v163);

        *(v96 + 4) = v102;
        _os_log_impl(&dword_270680000, v94, v95, "Pasteboard Provider %{public}s Opened With No URL or Data", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        MEMORY[0x2743A75B0](v97, -1, -1);
        MEMORY[0x2743A75B0](v96, -1, -1);
      }

      else
      {

        sub_270687394(v22);
      }

      sub_270694B50();
      v54 = swift_allocError();
      *v126 = 0xC000000000000020;
      goto LABEL_11;
    }

    v58 = v57;
    v59 = [v57 url];
    v60 = v152;
    sub_2706E562C();

    LODWORD(v160) = sub_2706E563C();
    v61 = v151 + 1;
    v159 = v151[1];
    (v159)(v60, v150);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v62 = sub_2706E58DC();
    __swift_project_value_buffer(v62, qword_2808292F0);
    sub_270690CD8(v162, v25);
    v63 = v58;
    v64 = sub_2706E58BC();
    v65 = sub_2706E5C1C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v151 = v61;
      v67 = v66;
      v148 = swift_slowAlloc();
      v163[0] = v148;
      *v67 = 136446723;
      HIDWORD(v147) = v65;
      sub_2706E572C();
      v68 = sub_2706B8734(8);
      v69 = MEMORY[0x2743A5EC0](v68);
      v71 = v70;

      sub_270687394(v25);
      v72 = sub_2706C83E8(v69, v71, v163);

      *(v67 + 4) = v72;
      *(v67 + 12) = 1024;
      LODWORD(v72) = [v63 isReadonly];

      *(v67 + 14) = v72;
      *(v67 + 18) = 2081;
      v73 = [v63 url];
      v74 = v152;
      sub_2706E562C();

      sub_2706A6DC4(&qword_28081D288, MEMORY[0x277CC9260]);
      v75 = v150;
      v76 = sub_2706E611C();
      v78 = v77;
      (v159)(v74, v75);
      v79 = sub_2706C83E8(v76, v78, v163);
      v49 = a2;

      *(v67 + 20) = v79;
      _os_log_impl(&dword_270680000, v64, BYTE4(v147), "Pasteboard Provider %{public}s Open URL (readonly=%{BOOL}d): %{private}s", v67, 0x1Cu);
      v80 = v148;
      swift_arrayDestroy();
      v48 = a3;
      MEMORY[0x2743A75B0](v80, -1, -1);
      MEMORY[0x2743A75B0](v67, -1, -1);
    }

    else
    {

      sub_270687394(v25);
    }

    v103 = v63;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v105 = Strong;
      v106 = [v103 url];
      v151 = v103;
      v107 = v106;
      v108 = v152;
      sub_2706E562C();

      v109 = v162;
      v110 = v154;
      sub_270690CD8(v162, v154);
      v111 = type metadata accessor for PasteboardFileDataProvider(0);
      v112 = *(v111 + 48);
      v113 = *(v111 + 52);
      swift_allocObject();
      v159 = sub_2706ABECC(v105, v108, v110);
      sub_2706A5E2C();
      v152 = "r this pasteboard.";
      sub_270690CD8(v109, v110);
      v114 = v157;
      v115 = v158;
      v116 = *(v157 + 16);
      v117 = v48;
      v149 = v48;
      v118 = v156;
      v116(v156, v117, v158);
      v119 = v49;
      v120 = (*(v153 + 80) + 40) & ~*(v153 + 80);
      v121 = (v20 + *(v114 + 80) + v120) & ~*(v114 + 80);
      v122 = (v155 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      *(v123 + 16) = v160 & 1;
      v124 = v151;
      *(v123 + 24) = v151;
      *(v123 + 32) = v119;
      sub_2706A66AC(v110, v123 + v120);
      (*(v114 + 32))(v123 + v121, v118, v115);
      *(v123 + v122) = v161;
      type metadata accessor for Completion();
      swift_allocObject();

      v125 = v124;
      sub_2706DD8C4(0xD000000000000060, v152 | 0x8000000000000000, 423, sub_2706A6CD8, v123);
      sub_2706ABFEC();

      return;
    }

LABEL_46:
    __break(1u);
    JUMPOUT(0x27069E9F4);
  }

  v160 = v56;
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v81 = sub_2706E58DC();
  __swift_project_value_buffer(v81, qword_2808292F0);
  sub_270690CD8(v162, v29);
  v83 = v159;
  v82 = v160;
  sub_2706A6E0C(v159, v160);
  sub_270692D3C(v83, v82);
  v84 = sub_2706E58BC();
  v85 = sub_2706E5C1C();
  if (os_log_type_enabled(v84, v85))
  {
    LODWORD(v152) = v85;
    v86 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v163[0] = v151;
    *v86 = 136446466;
    sub_2706E572C();
    v87 = sub_2706B8734(8);
    v88 = MEMORY[0x2743A5EC0](v87);
    v90 = v89;

    sub_270687394(v29);
    v91 = sub_2706C83E8(v88, v90, v163);

    *(v86 + 4) = v91;
    *(v86 + 12) = 2048;
    v48 = a3;
    v83 = v159;
    switch(v82 >> 62)
    {
      case 1uLL:
        sub_2706A3BA4(v159, v82);
        LODWORD(v92) = HIDWORD(v83) - v83;
        if (__OFSUB__(HIDWORD(v83), v83))
        {
          __break(1u);
          goto LABEL_45;
        }

        v92 = v92;
LABEL_40:
        v82 = v160;
LABEL_41:
        v129 = v152;
        *(v86 + 14) = v92;
        sub_2706A3BA4(v83, v82);
        _os_log_impl(&dword_270680000, v84, v129, "Pasteboard Provider %{public}s Data (%ld bytes)", v86, 0x16u);
        v130 = v151;
        __swift_destroy_boxed_opaque_existential_1(v151);
        MEMORY[0x2743A75B0](v130, -1, -1);
        MEMORY[0x2743A75B0](v86, -1, -1);

        v49 = a2;
        break;
      case 2uLL:
        v128 = v159[2];
        v127 = v159[3];
        sub_2706A3BA4(v159, v82);
        v92 = v127 - v128;
        if (!__OFSUB__(v127, v128))
        {
          goto LABEL_40;
        }

        __break(1u);
LABEL_37:
        sub_2706A3BA4(v83, v82);
        v92 = 0;
        goto LABEL_41;
      case 3uLL:
        goto LABEL_37;
      default:
        sub_2706A3BA4(v159, v82);
        v92 = BYTE6(v82);
        goto LABEL_41;
    }
  }

  else
  {
    sub_2706A3BA4(v83, v82);
    sub_2706A3BA4(v83, v82);

    sub_270687394(v29);
  }

  if (!swift_weakLoadStrong())
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v131 = v162;
  v132 = v154;
  sub_270690CD8(v162, v154);
  v133 = type metadata accessor for PasteboardDataProvider(0);
  v134 = *(v133 + 48);
  v135 = *(v133 + 52);
  swift_allocObject();
  sub_270692D3C(v83, v160);
  v159 = sub_2706AAF94();
  sub_2706A5E2C();
  v152 = "r this pasteboard.";
  sub_270690CD8(v131, v132);
  v136 = v157;
  v137 = v158;
  v138 = *(v157 + 16);
  v139 = v48;
  v149 = v48;
  v140 = v156;
  v138(v156, v139, v158);
  v141 = v49;
  v142 = (*(v153 + 80) + 24) & ~*(v153 + 80);
  v143 = (v20 + *(v136 + 80) + v142) & ~*(v136 + 80);
  v144 = v83;
  v145 = (v155 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v146 = swift_allocObject();
  *(v146 + 16) = v141;
  sub_2706A66AC(v132, v146 + v142);
  (*(v136 + 32))(v146 + v143, v140, v137);
  *(v146 + v145) = v161;
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD000000000000060, v152 | 0x8000000000000000, 406, sub_2706A6F4C, v146);
  sub_2706AB070();

  sub_2706A3BA4(v144, v160);
}

uint64_t sub_27069EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2706E576C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6);
  swift_beginAccess();
  v12 = sub_27069F140(v20);
  if (*v11)
  {
    v13 = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;

    sub_2706E25CC();
    v15 = *(*v13 + 16);
    sub_2706E269C(v15);
    v16 = *v13;
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 16 * v15;
    *(v17 + 32) = sub_2706A70B8;
    *(v17 + 40) = v14;
  }

  (v12)(v20, 0);
  swift_endAccess();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_27069EBB4()
{
  sub_2706E5E3C();

  sub_2706E572C();
  v0 = sub_2706B8734(8);
  v1 = MEMORY[0x2743A5EC0](v0);
  v3 = v2;

  MEMORY[0x2743A5EF0](v1, v3);

  MEMORY[0x2743A5EF0](0x6146206E65704F20, 0xEC00000064656C69);
  return 0xD000000000000014;
}

unint64_t sub_27069EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2706E5E3C();

  sub_2706E572C();
  v5 = sub_2706B8734(8);
  v6 = MEMORY[0x2743A5EC0](v5);
  v8 = v7;

  MEMORY[0x2743A5EF0](v6, v8);

  MEMORY[0x2743A5EF0](0xD000000000000014, 0x80000002706F0470);
  MEMORY[0x2743A5EF0](a2, a3);
  return 0xD000000000000014;
}

void sub_27069ED90()
{
  sub_270691E80();
  swift_unknownObjectRelease();
  sub_2706DD768();
}

void sub_27069EDDC(uint64_t a1, char a2, void *a3)
{
  v5 = sub_2706E565C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = [a3 url];
    sub_2706E562C();

    sub_2706E561C();
    (*(v6 + 8))(v9, v5);
  }

  sub_270691E80();
  swift_unknownObjectRelease();
  sub_2706DD768();
}

void sub_27069EF18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_27069EF80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_27069EFA8()
{
  sub_27069EF80();
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27069EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2706E5F8C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27069F0E0()
{
  sub_2706A59B4(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void (*sub_27069F140(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = sub_2706E576C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v2[5] = v4;
  v6 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[6] = v6;
  (*(v5 + 16))();
  v2[7] = sub_2706A3BB8(v2, v6);
  return sub_27069F238;
}

void sub_27069F238(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_15_3();
  v7(v6);
  free(v2);

  free(v1);
}

uint64_t sub_27069F2AC()
{
  sub_2706E576C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
  OUTLINED_FUNCTION_1_4();
  sub_2706A6DC4(v1, v2);
  v3 = MEMORY[0x277D84F90];
  v0[5] = sub_2706E59AC();
  v0[6] = 0;
  v0[7] = v3;
  type metadata accessor for PasteboardCollectionActivationProxy();
  OUTLINED_FUNCTION_11_3();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v0[8] = v4;
  v0[9] = 1195463236;
  v0[10] = 0xE400000000000000;
  v0[11] = 0;

  return sub_270692BBC();
}

void *sub_27069F384()
{
  OUTLINED_FUNCTION_20_1();
  sub_2706E576C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
  OUTLINED_FUNCTION_1_4();
  sub_2706A6DC4(v2, v3);
  v4 = MEMORY[0x277D84F90];
  v1[5] = sub_2706E59AC();
  v1[6] = 0;
  v1[7] = v4;
  type metadata accessor for PasteboardCollectionActivationProxy();
  OUTLINED_FUNCTION_11_3();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v1[8] = v5;
  v1[9] = 1195463236;
  v1[10] = 0xE400000000000000;
  v1[11] = 0;
  v6 = *(v0 + 16);
  v7 = v1[6];
  v1[6] = v6;
  v8 = v6;

  v9 = sub_270692BBC();
  v10 = v9[6];
  if (v10)
  {

    v11 = sub_2706A55B0(v10);
    if (v11)
    {
      sub_270698A58(v11);

      OUTLINED_FUNCTION_9_1();
      v12 = v9[7];
      type metadata accessor for PasteboardItemCollection();
      OUTLINED_FUNCTION_19_0();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = v9[8];

      v15 = sub_2706A5B18(v9, v14, v13);

      v16 = v9[11];
      v9[11] = v15;
    }

    else
    {
    }
  }

  return v9;
}

uint64_t sub_27069F534()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);
}

uint64_t sub_27069F584()
{
  v0 = sub_270692AB0();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return v0;
}

uint64_t sub_27069F5DC()
{
  v0 = sub_27069F584();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_27069F630()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2706E576C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v13 = sub_2706E58DC();
  __swift_project_value_buffer(v13, qword_2808292F0);
  (*(v7 + 16))(v12, v3, v4);
  v14 = sub_2706E58BC();
  v15 = sub_2706E5C1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_29_1();
    v24 = OUTLINED_FUNCTION_28_1();
    v26 = v24;
    *v16 = 136446210;
    sub_2706E572C();
    v17 = OUTLINED_FUNCTION_1_1();
    v19 = v18;
    v20 = MEMORY[0x2743A5EC0](v17);
    v22 = v21;

    (*(v7 + 8))(v12, v4);
    sub_2706C83E8(v20, v22, &v26);
    OUTLINED_FUNCTION_19_3();

    *(v16 + 4) = v19;
    _os_log_impl(&dword_270680000, v14, v15, "Session %{public}s Begin", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_13_4();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  sub_27069181C();
  OUTLINED_FUNCTION_25_1();
  v23 = *(v1 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + 40);
  sub_27068FC9C();
  *(v1 + 40) = v25;
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
}

void sub_27069F874()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v2 = sub_2706E576C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-1] - v12;
  OUTLINED_FUNCTION_25_1();
  v14 = sub_2706CACAC(v1);
  swift_endAccess();
  if (v14)
  {
    OUTLINED_FUNCTION_35_0(0x28081C000);
    if (!v15)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v16 = sub_2706E58DC();
    __swift_project_value_buffer(v16, qword_2808292F0);
    (*(v5 + 16))(v13, v1, v2);
    v17 = sub_2706E58BC();
    v18 = sub_2706E5C1C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_29_1();
      v40 = OUTLINED_FUNCTION_28_1();
      v41[0] = v40;
      *v19 = 136446210;
      sub_2706E572C();
      v20 = OUTLINED_FUNCTION_1_1();
      v21 = MEMORY[0x2743A5EC0](v20);
      v23 = v22;

      (*(v5 + 8))(v13, v2);
      v24 = sub_2706C83E8(v21, v23, v41);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_270680000, v17, v18, "Session %{public}s End", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v5 + 8))(v13, v2);
    }

    v35 = *(v14 + 16);
    if (v35)
    {
      v36 = (v14 + 40);
      do
      {
        v38 = *(v36 - 1);
        v37 = *v36;

        v38(v39);

        v36 += 2;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_0(0x28081C000);
    if (!v15)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v25 = sub_2706E58DC();
    __swift_project_value_buffer(v25, qword_2808292F0);
    (*(v5 + 16))(v10, v1, v2);
    v26 = sub_2706E58BC();
    v27 = sub_2706E5BFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_29_1();
      v29 = OUTLINED_FUNCTION_28_1();
      v41[0] = v29;
      *v28 = 136446210;
      sub_2706E572C();
      v30 = OUTLINED_FUNCTION_1_1();
      v31 = MEMORY[0x2743A5EC0](v30);
      v33 = v32;

      (*(v5 + 8))(v10, v2);
      v34 = sub_2706C83E8(v31, v33, v41);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_270680000, v26, v27, "Pasteboard Data Session %{public}s Not Open", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v5 + 8))(v10, v2);
    }
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_27069FF1C(unint64_t a1)
{
  sub_270694B50();
  v2 = swift_allocError();
  *v3 = a1;
  sub_270694BA4(a1);
  return v2;
}

uint64_t sub_27069FF6C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  OUTLINED_FUNCTION_9_1();
  sub_2706A6494(a2 + v3, v21, &qword_28081D278, &qword_2706EBB10);
  if (v22)
  {
    sub_2706A6494(v21, v19, &qword_28081D278, &qword_2706EBB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D280, &unk_2706EA0A0);
    type metadata accessor for PasteboardContext_iOS();
    if (swift_dynamicCast())
    {
      sub_27069CA58();

      __swift_destroy_boxed_opaque_existential_1(v19);
      return sub_2706A64F4(v21, &qword_28081D278, &qword_2706EBB10);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292F0);
  OUTLINED_FUNCTION_19_3();

  v5 = sub_2706E58BC();
  v6 = sub_2706E5BFC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_27_1();
    v20 = OUTLINED_FUNCTION_26_1();
    *v7 = 136446466;
    sub_2706E576C();
    OUTLINED_FUNCTION_1_4();
    sub_2706A6DC4(v8, v9);
    v10 = sub_2706E611C();
    v12 = sub_2706C83E8(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    sub_2706A6494(a2 + v3, v19, &qword_28081D278, &qword_2706EBB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D278, &qword_2706EBB10);
    v13 = sub_2706E5A4C();
    v15 = sub_2706C83E8(v13, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_270680000, v5, v6, "Pasteboard Representation %{public}s Missing Context: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_12_0();
  }

  sub_270694B50();
  v16 = swift_allocError();
  *v17 = 0xC000000000000010;
  sub_2706DD768();

  return sub_2706A64F4(v21, &qword_28081D278, &qword_2706EBB10);
}

uint64_t sub_2706A0278()
{
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2706A02D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = sub_2706A5688(v3);
  v6 = v5;
  v7 = [v3 preferredPresentationStyle];
  v8 = 2 * (v7 == 2);
  if (v7 == 1)
  {
    v8 = 1;
  }

  v24 = v8;
  v9 = [v3 registeredTypeIdentifiers];
  v10 = sub_2706E5B1C();

  v11 = 0;
  v20 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  v13 = v10 + 40;
LABEL_4:
  v14 = (v13 + 16 * v11);
  v15 = v11;
  while (1)
  {
    if (v12 == v15)
    {

      type metadata accessor for PasteboardItem();
      swift_allocObject();
      sub_2706BEE78(v20, v24);
      return;
    }

    if (v15 >= *(v10 + 16))
    {
      break;
    }

    v11 = (&v15->isa + 1);
    v17 = *(v14 - 1);
    v16 = *v14;

    v18 = sub_2706A04B0(v15, v17, v16, v3, a1, a3, a2, v4, v6, v24);

    v14 += 2;
    v15 = (v15 + 1);
    if (v18)
    {
      MEMORY[0x2743A5F60](v19);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2706E5B2C();
      }

      sub_2706E5B4C();
      v20 = v25;
      v13 = v10 + 40;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_2706A04B0(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v134 = a7;
  v135 = a8;
  v133 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v136 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v132 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v140 = (&v132 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v132 - v25;
  v141 = sub_2706E589C();
  v138 = *(v141 - 8);
  v27 = *(v138 + 64);
  v28 = MEMORY[0x28223BE20](v141);
  v30 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v132 - v31;
  v33 = sub_2706E5A0C();
  v34 = [a4 _representationConformingToType_];

  if (!v34)
  {
    return 0;
  }

  v137 = a5;
  v139 = a1;
  v35 = v34;
  v36 = [v35 typeIdentifier];
  v37 = sub_2706E5A3C();
  v39 = v38;

  v142[0] = v37;
  v142[1] = v39;
  MEMORY[0x28223BE20](v40);
  *(&v132 - 2) = v142;
  LOBYTE(v36) = sub_270698CB0(sub_2706A6474, (&v132 - 4), &unk_28806AA60);

  if ((v36 & 1) == 0)
  {
    v55 = [v35 visibility];
    if (v55)
    {
      v56 = v55;

      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v57 = sub_2706E58DC();
      __swift_project_value_buffer(v57, qword_2808292F0);
      v58 = v35;
      v43 = sub_2706E58BC();
      v59 = sub_2706E5C1C();

      v60 = os_log_type_enabled(v43, v59);
      v61 = v139;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v142[0] = v63;
        *v62 = 134218754;
        *(v62 + 4) = v137;
        *(v62 + 12) = 2048;
        *(v62 + 14) = v61;
        *(v62 + 22) = 2082;
        v64 = [v58 typeIdentifier];
        v65 = sub_2706E5A3C();
        v67 = v66;

        v68 = sub_2706C83E8(v65, v67, v142);

        *(v62 + 24) = v68;
        *(v62 + 32) = 2050;
        *(v62 + 34) = v56;
        _os_log_impl(&dword_270680000, v43, v59, "pasteboard item: item=%ld rep=%ld type=%{public}s skipped, disallowed visibility=%{public}ld", v62, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x2743A75B0](v63, -1, -1);
        MEMORY[0x2743A75B0](v62, -1, -1);

        return 0;
      }

LABEL_16:
      return 0;
    }

    v69 = [v35 typeIdentifier];
    sub_2706E5A3C();

    sub_2706E58AC();
    v70 = v141;
    if (__swift_getEnumTagSinglePayload(v26, 1, v141) == 1)
    {
      sub_2706A64F4(v26, &qword_28081D208, &qword_2706EA040);
      v72 = v139;
      v71 = v140;
    }

    else
    {
      v75 = v138;
      (*(v138 + 32))(v32, v26, v70);
      sub_2706E584C();
      v76 = sub_2706E585C();
      v77 = *(v75 + 8);
      v77(v30, v70);
      v78 = v70;
      v71 = v140;
      if (v76)
      {
        v140 = v77;
        if (qword_28081C738 != -1)
        {
          swift_once();
        }

        v79 = sub_2706E58DC();
        __swift_project_value_buffer(v79, qword_2808292F0);
        v80 = v35;
        v81 = sub_2706E58BC();
        v82 = sub_2706E5C1C();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v142[0] = v84;
          *v83 = 134218498;
          *(v83 + 4) = v137;
          *(v83 + 12) = 2048;
          *(v83 + 14) = v139;
          *(v83 + 22) = 2082;
          v85 = [v80 typeIdentifier];
          v86 = sub_2706E5A3C();
          v88 = v87;

          v89 = sub_2706C83E8(v86, v88, v142);

          *(v83 + 24) = v89;
          _os_log_impl(&dword_270680000, v81, v82, "pasteboard item: item=%ld rep=%ld type=%{public}s skipped", v83, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x2743A75B0](v84, -1, -1);
          MEMORY[0x2743A75B0](v83, -1, -1);
        }

        else
        {
        }

        v140(v32, v141);
        return 0;
      }

      v77(v32, v78);
      v72 = v139;
    }

    v90 = [v35 typeIdentifier];
    sub_2706E5A3C();

    sub_2706E58AC();
    sub_2706A6494(v71, v22, &qword_28081D208, &qword_2706EA040);
    v91 = v141;
    if (__swift_getEnumTagSinglePayload(v22, 1, v141) == 1)
    {
      sub_2706A64F4(v22, &qword_28081D208, &qword_2706EA040);
      v92 = 0;
    }

    else
    {
      v93 = sub_2706E581C();
      (*(v138 + 8))(v22, v91);
      v92 = sub_27069872C(v93);
    }

    v94 = type metadata accessor for PasteboardContext_iOS();
    v95 = swift_allocObject();
    v96 = v134;
    *(v95 + 16) = v133;
    *(v95 + 24) = v96;

    v97 = [v35 typeIdentifier];
    v98 = sub_2706E5A3C();
    v100 = v99;

    v142[3] = v94;
    v142[4] = &off_28806BF08;
    if (!v92)
    {
      v92 = MEMORY[0x277D84F90];
    }

    v142[0] = v95;
    v101 = type metadata accessor for PasteboardRepresentation(0);
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();

    v104 = v72;
    v73 = sub_2706BCEA0(v72, v98, v100, v92, v135, a9, v142);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v105 = sub_2706E58DC();
    __swift_project_value_buffer(v105, qword_2808292F0);
    v106 = v140;
    v107 = v136;
    sub_2706A6494(v140, v136, &qword_28081D208, &qword_2706EA040);
    v108 = v35;

    v109 = sub_2706E58BC();
    v110 = sub_2706E5C1C();

    if (!os_log_type_enabled(v109, v110))
    {
      sub_2706A64F4(v107, &qword_28081D208, &qword_2706EA040);

      v120 = v106;
LABEL_47:
      sub_2706A64F4(v120, &qword_28081D208, &qword_2706EA040);
      return v73;
    }

    LODWORD(v135) = v110;
    v139 = v109;
    v111 = v104;
    LODWORD(v134) = a10;
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v142[0] = v113;
    *v112 = 134219266;
    *(v112 + 4) = v137;
    *(v112 + 12) = 2048;
    *(v112 + 14) = v111;
    *(v112 + 22) = 2082;
    v114 = [v108 typeIdentifier];
    v115 = sub_2706E5A3C();
    v117 = v116;

    v118 = sub_2706C83E8(v115, v117, v142);

    *(v112 + 24) = v118;
    *(v112 + 32) = 1024;
    sub_2706A6494(v107, v17, &qword_28081D208, &qword_2706EA040);
    v119 = v141;
    if (__swift_getEnumTagSinglePayload(v17, 1, v141) == 1)
    {
      sub_2706A64F4(v17, &qword_28081D208, &qword_2706EA040);
    }

    else
    {
      v121 = sub_2706E587C();
      (*(v138 + 8))(v17, v119);
      if (v121)
      {
        v122 = 1;
LABEL_39:
        sub_2706A64F4(v107, &qword_28081D208, &qword_2706EA040);
        *(v112 + 34) = v122;
        *(v112 + 38) = 2082;
        if (v134)
        {
          if (v134 == 1)
          {
            v123 = 0xE600000000000000;
            v124 = 0x656E696C6E69;
          }

          else
          {
            v123 = 0xEA0000000000746ELL;
            v124 = 0x656D686361747461;
          }
        }

        else
        {
          v123 = 0xE700000000000000;
          v124 = 0x6E776F6E6B6E75;
        }

        v125 = sub_2706C83E8(v124, v123, v142);

        *(v112 + 40) = v125;
        *(v112 + 48) = 2082;
        sub_2706E572C();
        v126 = sub_2706B8734(8);
        v127 = MEMORY[0x2743A5EC0](v126);
        v129 = v128;

        v130 = sub_2706C83E8(v127, v129, v142);

        *(v112 + 50) = v130;
        v131 = v139;
        _os_log_impl(&dword_270680000, v139, v135, "pasteboard item: item=%ld rep=%ld type=%{public}s public=%{BOOL}d style=%{public}s rep-id=%{public}s", v112, 0x3Au);
        swift_arrayDestroy();
        MEMORY[0x2743A75B0](v113, -1, -1);
        MEMORY[0x2743A75B0](v112, -1, -1);

        v120 = v140;
        goto LABEL_47;
      }
    }

    v122 = 0;
    goto LABEL_39;
  }

  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v41 = sub_2706E58DC();
  __swift_project_value_buffer(v41, qword_2808292F0);
  v42 = v35;
  v43 = sub_2706E58BC();
  v44 = sub_2706E5C1C();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v139;
  v47 = v137;
  if (!v45)
  {

    goto LABEL_16;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v142[0] = v49;
  *v48 = 134218498;
  *(v48 + 4) = v47;
  *(v48 + 12) = 2048;
  *(v48 + 14) = v46;
  *(v48 + 22) = 2082;
  v50 = [v42 typeIdentifier];
  v51 = sub_2706E5A3C();
  v53 = v52;

  v54 = sub_2706C83E8(v51, v53, v142);

  *(v48 + 24) = v54;
  _os_log_impl(&dword_270680000, v43, v44, "pasteboard item: item=%ld rep=%ld type=%{public}s skipped, disallowed type", v48, 0x20u);
  __swift_destroy_boxed_opaque_existential_1(v49);
  MEMORY[0x2743A75B0](v49, -1, -1);
  MEMORY[0x2743A75B0](v48, -1, -1);

  return 0;
}

uint64_t sub_2706A1248()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

id sub_2706A12A0()
{
  swift_weakInit();
  swift_weakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PasteboardItemProvider_iOS();
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

void *sub_2706A1318(uint64_t p_aBlock)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  v3 = OUTLINED_FUNCTION_16_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = (&v74 - v6);
  v81 = sub_2706E589C();
  v7 = OUTLINED_FUNCTION_4(v81);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v78 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v79 = &v74 - v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v17 = *(p_aBlock + 16);
  v87 = v16;
  [v16 setPreferredPresentationStyle_];
  v18 = *(p_aBlock + 24);

  aBlock = sub_2706A56EC(v19);
  v20 = 0;
  sub_2706A40B8(&aBlock);
  v21 = aBlock;
  aBlock = MEMORY[0x277D84F90];
  v22 = sub_2706C2200(v21);
  v83 = v21 & 0xC000000000000001;
  v75 = v21 + 32;
  while (1)
  {
    if (v22 == v20)
    {
      p_aBlock = aBlock;
      if (sub_2706C2200(aBlock))
      {
        v20 = p_aBlock & 0xC000000000000001;
        sub_2706C2208(0, (p_aBlock & 0xC000000000000001) == 0, p_aBlock);
        if ((p_aBlock & 0xC000000000000001) != 0)
        {
          goto LABEL_61;
        }

        v25 = *(p_aBlock + 32);

        OUTLINED_FUNCTION_36_0();
      }

      else
      {
      }

      goto LABEL_17;
    }

    if (v83)
    {
      v23 = MEMORY[0x2743A62C0](v20, v21);
    }

    else
    {
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_58;
      }

      v23 = *(v21 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (*(v23 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name + 8))
    {
      p_aBlock = &aBlock;
      sub_2706E5EDC();
      v24 = aBlock[2];
      sub_2706E5F0C();
      sub_2706E5F1C();
      sub_2706E5EEC();
    }

    else
    {
    }

    ++v20;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    MEMORY[0x2743A62C0](0, p_aBlock);

    OUTLINED_FUNCTION_36_0();
    swift_unknownObjectRelease();
    if (v20)
    {
      v26 = OUTLINED_FUNCTION_15_3();
      sub_2706A554C(v26, v27, v87);
    }

LABEL_17:
    v93 = MEMORY[0x277D84FA0];
    v82 = v21;
    if (v22)
    {
      break;
    }

LABEL_30:
    v80 = sub_2706C2200(v21);
    if (!v80)
    {
LABEL_55:

      return v87;
    }

    v55 = 0;
    v84 = &v89;
    while (1)
    {
      if (v83)
      {
        v56 = MEMORY[0x2743A62C0](v55, v21);
      }

      else
      {
        if (v55 >= *(v21 + 16))
        {
          goto LABEL_60;
        }

        v57 = *(v75 + 8 * v55);
      }

      if (__OFADD__(v55++, 1))
      {
        break;
      }

      v59 = *(v56 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes);
      v60 = *(v59 + 16);
      if (v60)
      {
        v85 = v56;
        v81 = v55;

        v61 = 0;
        while (v61 < *(v59 + 16))
        {
          v62 = (v59 + 32 + 16 * v61);
          v20 = *v62;
          v21 = v62[1];
          v9 = v93;
          if (*(v93 + 16))
          {
            v63 = *(v93 + 40);
            sub_2706E65EC();

            sub_2706E5A6C();
            v64 = sub_2706E660C();
            p_aBlock = (v9 + 7);
            v22 = ~(-1 << *(v9 + 32));
            while (1)
            {
              v65 = v64 & v22;
              if (((*(p_aBlock + (((v64 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v64 & v22)) & 1) == 0)
              {
                break;
              }

              v66 = (v9[6] + 16 * v65);
              if (*v66 != v20 || v66[1] != v21)
              {
                v68 = sub_2706E631C();
                v64 = v65 + 1;
                if ((v68 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_51;
            }
          }

          else
          {
          }

          p_aBlock = sub_2706E5A0C();
          OUTLINED_FUNCTION_19_0();
          v69 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_11_3();
          v70 = swift_allocObject();
          v71 = v86;
          *(v70 + 16) = v69;
          *(v70 + 24) = v71;
          v91 = sub_2706A74CC;
          v92 = v70;
          OUTLINED_FUNCTION_4_4();
          v89 = sub_2706A1BA0;
          v90 = &block_descriptor_164;
          v9 = _Block_copy(&aBlock);
          v22 = v92;
          v72 = v71;

          [v87 _addRepresentationType_v2_preferredRepresentation_loader_];
          _Block_release(v9);

          OUTLINED_FUNCTION_38_0();
LABEL_51:

          if (++v61 == v60)
          {

            v55 = v81;
            goto LABEL_54;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_54:
      v21 = v82;
      if (v55 == v80)
      {
        goto LABEL_55;
      }
    }
  }

  if (v22 >= 1)
  {
    v28 = 0;
    v77 = (v9 + 4);
    v80 = (v9 + 1);
    v85 = &v89;
    v76 = v22;
    v29 = v81;
    do
    {
      if (v83)
      {
        v30 = MEMORY[0x2743A62C0](v28, v21);
      }

      else
      {
        v30 = *(v21 + 8 * v28 + 32);
      }

      v31 = v84;
      v32 = (v30 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
      v33 = *(v30 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
      v34 = *(v30 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);

      OUTLINED_FUNCTION_15_3();
      sub_2706E58AC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v29);
      v9 = v80;
      if (EnumTagSinglePayload == 1)
      {
        sub_2706A64F4(v31, &qword_28081D208, &qword_2706EA040);
      }

      else
      {
        v36 = v79;
        (*v77)(v79, v31, v29);
        v37 = v78;
        sub_2706E582C();
        v38 = sub_2706E585C();
        v39 = *v9;
        (*v9)(v37, v29);
        if (v38)
        {
          sub_2706E586C();
          sub_2706E580C();
          v40 = OUTLINED_FUNCTION_34_1();
          v39(v40);
          v41 = sub_2706E5A0C();

          sub_2706E586C();
          v42 = v86;
          sub_2706A1EDC();
          v43 = OUTLINED_FUNCTION_34_1();
          v39(v43);
          v91 = v42;
          v92 = v21;
          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_8_4();
          v89 = v44;
          v90 = &block_descriptor_167;
          v45 = _Block_copy(&aBlock);

          [v87 _addRepresentationType_v2_preferredRepresentation_loader_];
          _Block_release(v45);

          v46 = v79;
        }

        else
        {
          v46 = v36;
        }

        (v39)(v46, v29);
        v22 = v76;
      }

      ++v28;
      p_aBlock = *v32;
      v47 = v32[1];

      OUTLINED_FUNCTION_15_3();
      sub_2706E5A0C();
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_19_0();
      v48 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_11_3();
      v49 = swift_allocObject();
      v50 = v86;
      *(v49 + 16) = v48;
      *(v49 + 24) = v50;
      v91 = sub_2706A74CC;
      v92 = v49;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_8_4();
      v89 = v51;
      v90 = &block_descriptor_156;
      v52 = _Block_copy(&aBlock);
      v53 = v50;

      [v87 _addRepresentationType_v2_preferredRepresentation_loader_];
      _Block_release(v52);

      v20 = *v32;
      v54 = v32[1];

      OUTLINED_FUNCTION_38_0();

      v21 = v82;
    }

    while (v22 != v28);
    goto LABEL_30;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_2706A1BA0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2706E599C();
  }

  else
  {
    v6 = 0;
  }

  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v9 = v5(v6, sub_2706A5988, v8);

  return v9;
}

uint64_t sub_2706A1C90(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_2706A25F8();
    v4 = v3;
  }

  else
  {
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v5 = sub_27069A204(0);
    a2();

    return 0;
  }

  return v4;
}

uint64_t sub_2706A1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PasteboardDataTransferID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2706E576C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, *(a2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source);
  sub_2706E575C();
  v16 = type metadata accessor for RepresentationReceiver(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  return sub_270699BE8(v14, v10, a3, a4);
}

void sub_2706A1EDC()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  v7 = OUTLINED_FUNCTION_16_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = sub_2706E589C();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v24 = *(v5 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
  v25 = *(v5 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);

  sub_2706E58AC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    (*(v15 + 32))(v23, v11, v12);
    sub_2706E582C();
    v37 = sub_2706E585C();
    v38 = *(v15 + 8);
    v38(v20, v12);
    if (v37)
    {
      sub_2706E586C();
      sub_2706E585C();
      v39 = OUTLINED_FUNCTION_21_1();
      (v38)(v39);
      if (v3)
      {
        v38(v23, v12);
        v40 = 0;
        v41 = 1;
LABEL_13:
        OUTLINED_FUNCTION_19_0();
        swift_allocObject();
        OUTLINED_FUNCTION_24_0();
        v44 = swift_allocObject();
        *(v44 + 16) = v3;
        *(v44 + 24) = v1;
        *(v44 + 32) = v40;
        *(v44 + 33) = v41;
        goto LABEL_16;
      }
    }

    sub_2706E586C();
    sub_2706E585C();
    v42 = OUTLINED_FUNCTION_21_1();
    (v38)(v42);
    if (v23)
    {
      sub_2706E582C();
      sub_2706E585C();
      v43 = OUTLINED_FUNCTION_21_1();
      (v38)(v43);
      v38(v23, v12);
      if (v3)
      {
        v41 = 0;
        v40 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v38(v23, v12);
    }

    OUTLINED_FUNCTION_19_0();
    swift_allocObject();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_11_3();
    v45 = swift_allocObject();
    *(v45 + 16) = v3;
    *(v45 + 24) = v1;
    goto LABEL_16;
  }

  sub_2706A64F4(v11, &qword_28081D208, &qword_2706EA040);
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v26 = sub_2706E58DC();
  __swift_project_value_buffer(v26, qword_2808292F0);
  OUTLINED_FUNCTION_19_3();

  v27 = sub_2706E58BC();
  v28 = sub_2706E5C1C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_29_1();
    v30 = OUTLINED_FUNCTION_28_1();
    v48 = v30;
    *v29 = 136446210;
    sub_2706E572C();
    v31 = OUTLINED_FUNCTION_1_1();
    v32 = MEMORY[0x2743A5EC0](v31);
    v34 = v33;

    v35 = sub_2706C83E8(v32, v34, &v48);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_270680000, v27, v28, "%{public}s: attempted RTF conversion without a source type", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_12_0();
  }

  OUTLINED_FUNCTION_19_0();
  swift_allocObject();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_11_3();
  v36 = swift_allocObject();
  *(v36 + 16) = v27;
  *(v36 + 24) = v1;
LABEL_16:
  v46 = v1;
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706A2348(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a6 & 1;
    *(v10 + 17) = a7 & 1;

    sub_2706A25F8();
    v12 = v11;
  }

  else
  {
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v13 = sub_27069A204(0);
    a2();

    return 0;
  }

  return v12;
}

uint64_t sub_2706A246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2706E576C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, *(a2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source);
  sub_2706E575C();
  v20 = type metadata accessor for RTFRepresentationReceiver(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  return sub_27069C590(v18, v14, a5 & 1, a6 & 1, a3, a4);
}

void sub_2706A25F8()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  if (v2 && swift_weakLoadStrong())
  {
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);

    v3 = sub_2706E5C4C();
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D1F8, &qword_2706EA038);
    sub_2706E5C5C();
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v4 = sub_2706E58DC();
    __swift_project_value_buffer(v4, qword_2808292F0);
    v5 = sub_2706E58BC();
    v6 = sub_2706E5BFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_270680000, v5, v6, "Pasteboard Item Provider: Called after PasteboardRepresentation freed", v7, 2u);
      OUTLINED_FUNCTION_12_0();
    }

    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v8 = sub_27069A204(0);
    v1();
  }

  OUTLINED_FUNCTION_16_0();
}

void sub_2706A27EC(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void (*)(void), uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = v7;
  v53 = a7;
  v54 = a5;
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v14 = sub_2706E58DC();
  __swift_project_value_buffer(v14, qword_2808292F0);

  v15 = sub_2706E58BC();
  v16 = sub_2706E5C1C();

  HIDWORD(v51) = v16;
  v52 = v15;
  if (os_log_type_enabled(v15, v16))
  {
    v50 = a4;
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56 = v47;
    *v17 = 136446466;
    sub_2706E572C();
    v18 = sub_2706B8734(8);
    v48 = a3;
    v49 = v7;
    v19 = MEMORY[0x2743A5EC0](v18);
    v21 = v20;

    v22 = sub_2706C83E8(v19, v21, &v56);
    v8 = v7;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2706C83E8(*(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier), *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8), &v56);
    _os_log_impl(&dword_270680000, v52, BYTE4(v51), "promise redeemed: rep-id=%{public}s type=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v47, -1, -1);
    v23 = v17;
    a4 = v50;
    MEMORY[0x2743A75B0](v23, -1, -1);
  }

  else
  {
  }

  v24 = a2(a1, a4, v54, a6);
  if (v8)
  {
    MEMORY[0x28223BE20](v24);
    sub_270694664(sub_2706A3160, 0, sub_2706A74AC, v46, v25, v26, v27, v28, v46[0], v46[1], v8, v46[3], v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    sub_270690D44(0, &qword_28081D1F0, 0x277CCAA90);
    v29 = v8;
    v30 = sub_27069A204(v8);
    v54();

    v31 = 0;
  }

  else
  {
    v32 = v24;
    v33 = a4;
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v32;
    v34[4] = a1;
    type metadata accessor for Completion();
    swift_allocObject();

    sub_2706DD8C4(0xD000000000000060, 0x80000002706F0100, 783, sub_2706A3714, v34);
    sub_2706CCC3C();

    v35 = sub_2706E58BC();
    v36 = sub_2706E5C1C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v37 = 136446722;
      v38 = sub_27069AC24();
      v40 = sub_2706C83E8(v38, v39, &v56);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      sub_2706E572C();
      v41 = sub_2706B8734(8);
      v42 = MEMORY[0x2743A5EC0](v41);
      v44 = v43;

      v45 = sub_2706C83E8(v42, v44, &v56);

      *(v37 + 14) = v45;
      *(v37 + 22) = 2082;
      *(v37 + 24) = sub_2706C83E8(*(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier), *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8), &v56);
      _os_log_impl(&dword_270680000, v35, v36, "promise receiver: id=%{public}s rep-id=%{public}s type=%{public}s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v54, -1, -1);
      MEMORY[0x2743A75B0](v37, -1, -1);
    }

    v31 = *(v32 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress);
  }

  *v53 = v31;
}

void sub_2706A2D70(id a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v8 = sub_2706E58DC();
    v9 = __swift_project_value_buffer(v8, qword_2808292F0);
    MEMORY[0x28223BE20](v9);
    sub_270694664(sub_2706A38FC, a2, sub_2706A74AC, v18, v10, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1], a1, v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9]);
    [*(a3 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867022RepresentationReceiver_progress) cancel];
  }

  else
  {
    sub_2706CC58C(a4 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id, a3, &off_28806BF18);
  }
}

uint64_t sub_2706A2F6C()
{
  sub_2706E5E3C();
  sub_2706E572C();
  v0 = sub_2706B8734(8);
  v1 = MEMORY[0x2743A5EC0](v0);

  MEMORY[0x2743A5EF0](0xD000000000000020, 0x80000002706F01B0);
  return v1;
}

uint64_t sub_2706A3028()
{
  sub_2706E5E3C();
  sub_2706E572C();
  v0 = sub_2706B8734(8);
  v1 = MEMORY[0x2743A5EC0](v0);

  MEMORY[0x2743A5EF0](0xD00000000000002ALL, 0x80000002706F01E0);
  sub_2706E576C();
  sub_2706A6DC4(&qword_28081D200, MEMORY[0x277CC95F0]);
  v2 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v2);

  return v1;
}

id sub_2706A31BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasteboardItemProvider_iOS();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for RTFConverter(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RTFConverter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2706A3388);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_2706A33CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706A340C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2706A3474(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706A34C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id sub_2706A354C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2706E56AC();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_2706A6DC4(&qword_28081C848, type metadata accessor for DocumentReadingOptionKey);
  v10 = sub_2706E598C();

  v16[0] = 0;
  v11 = [v5 initWithData:v9 options:v10 documentAttributes:a4 error:v16];

  if (v11)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    sub_2706E558C();

    swift_willThrow();
  }

  sub_270688E88(a1, a2);
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2706A36D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2706A3720(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for PasteboardRepresentation(0);
      result = sub_2706E5B3C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void *sub_2706A3780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D230, &qword_2706EA058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_2706A3800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D268, &qword_2706EA088);
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v9);
  if (v6)
  {
    if (result - v8 != 0x8000000000000000 || v6 != -1)
    {
      v9[2] = a1;
      v9[3] = 2 * ((result - v8) / v6);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2706A38F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2706A3028();
}

uint64_t sub_2706A3904()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2706A3940(uint64_t a1, void (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2706A1C90(a1, a2);
}

uint64_t sub_2706A3990()
{
  v1 = sub_2706E565C();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 24);

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_33_1();
  v10(v9);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 32) & ~v4) + v6, v4 | 7);
}

void sub_2706A3A44()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E565C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_270699FA8(v0, v4, v5, v6);
}

uint64_t sub_2706A3AB0()
{
  v1 = sub_2706E565C();
  OUTLINED_FUNCTION_6_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2706A3B30()
{
  v0 = sub_2706E565C();
  OUTLINED_FUNCTION_16_3(v0);
  v2 = *(v1 + 80);

  sub_27069A318();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2706A3BA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270688E88(a1, a2);
  }

  return a1;
}

void (*sub_2706A3BB8(void *a1, uint64_t a2))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v5;
  v6 = sub_2706E576C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  v9 = __swift_coroFrameAllocStub(*(v7 + 64));
  v5[10] = v9;
  v10 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v9, a2, v6);
  v5[11] = sub_2706A4040(v5);
  v5[12] = sub_2706A3D68(v5 + 4, v9);
  return sub_2706A3CD4;
}

void sub_2706A3CD4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_15_3();
  v8(v7);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2706A3D68(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = sub_2706E576C();
  v6[3] = v7;
  v8 = *(v7 - 8);
  v6[4] = v8;
  v6[5] = __swift_coroFrameAllocStub(*(v8 + 64));
  v9 = *v2;
  v10 = sub_27068F764(a2);
  *(v6 + 56) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB90, &qword_2706E9188);
  if (sub_2706E5F5C())
  {
    v14 = *v3;
    v15 = sub_27068F764(a2);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2706E652C();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[6] = v12;
  if (v13)
  {
    v17 = *(*(*v3 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v6 = v17;
  return sub_2706A3EF4;
}

void sub_2706A3EF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(*(v4 + 56) + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_2706901A8(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    (*(v1[4] + 8))(*(*v1[2] + 48) + *(v1[4] + 72) * v1[6], v1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
    OUTLINED_FUNCTION_1_4();
    sub_2706A6DC4(v6, v7);
    sub_2706E5F6C();
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_2706A4040(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2706A4068;
}

uint64_t sub_2706A4074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2706E631C() & 1;
  }
}

uint64_t sub_2706A40B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2706A59A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2706A49D0(v6);
  return sub_2706E5EEC();
}

BOOL sub_2706A4134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2706E65EC();
  sub_2706E5A6C();
  v9 = sub_2706E660C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2706E631C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2706A44DC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2706A4280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D218, &qword_2706EA048);
  result = sub_2706E5E0C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2706AA0F4(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2706E65EC();
    sub_2706E5A6C();
    result = sub_2706E660C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2706A44DC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2706A4280(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2706A479C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2706E65EC();
      sub_2706E5A6C();
      result = sub_2706E660C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2706E631C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2706A4644();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2706E651C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2706A4644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D218, &qword_2706EA048);
  v2 = *v0;
  v3 = sub_2706E5DFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2706A479C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D218, &qword_2706EA048);
  result = sub_2706E5E0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2706E65EC();

        sub_2706E5A6C();
        result = sub_2706E660C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_2706A49D0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_2706E610C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_2706A3720(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2706A4BA4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2706A4AB0(0, v3, 1, a1);
  }
}

uint64_t sub_2706A4AB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for PasteboardRepresentation(0);
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
    while (2)
    {
      v17 = v4;
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;

        v13 = sub_2706B8A98(v9, v12);

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *v11;
        v9 = v11[1];
        *v11 = v9;
        v11[1] = v14;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      v4 = v17 + 1;
      v7 += 8;
      --v8;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2706A4BA4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_93:
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v80 = (v8 + 16);
      v81 = *(v8 + 16);
      while (v81 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v82 = v8;
        v83 = (v8 + 16 * v81);
        v84 = *v83;
        v85 = &v80[2 * v81];
        v8 = v85[1];
        sub_2706A5204((*a3 + 8 * *v83), (*a3 + 8 * *v85), (*a3 + 8 * v8), v97);
        if (v5)
        {
          break;
        }

        if (v8 < v84)
        {
          goto LABEL_119;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_120;
        }

        *v83 = v84;
        v83[1] = v8;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_121;
        }

        v81 = *v80 - 1;
        memmove(v85, v85 + 2, 16 * v86);
        *v80 = v81;
        v8 = v82;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v8 = sub_2706A5438(v8);
    goto LABEL_95;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v88 = v8;
      v97 = v5;
      v11 = v7 + 1;
      v8 = *(*a3 + 8 * v10);
      v12 = (*a3 + 8 * v7);
      v13 = 8 * v7;
      v15 = *v12;
      v14 = v12 + 2;
      v5 = v15;
      type metadata accessor for PasteboardRepresentation(0);

      v93 = sub_2706B8A98(v8, v15);

      v16 = v9 + 2;
      while (1)
      {
        v17 = v16;
        if (v11 + 1 >= v6)
        {
          break;
        }

        ++v11;
        v5 = *(v14 - 1);
        v8 = *v14;

        v18 = sub_2706B8A98(v8, v5) & 1;

        ++v14;
        v16 = v17 + 1;
        if ((v93 & 1) != v18)
        {
          goto LABEL_9;
        }
      }

      v11 = v6;
LABEL_9:
      if (v93)
      {
        if (v11 < v9)
        {
          goto LABEL_125;
        }

        v10 = v11;
        if (v9 >= v11)
        {
          v5 = v97;
          v8 = v88;
        }

        else
        {
          if (v6 >= v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v6;
          }

          v20 = 8 * v19 - 8;
          v21 = v11;
          v22 = v9;
          v5 = v97;
          v8 = v88;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v24 = *(v23 + v13);
              *(v23 + v13) = *(v23 + v20);
              *(v23 + v20) = v24;
            }

            ++v22;
            v20 -= 8;
            v13 += 8;
          }

          while (v22 < v21);
        }
      }

      else
      {
        v5 = v97;
        v8 = v88;
        v10 = v11;
      }
    }

    v25 = a3[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_124;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_123;
    }

    v95 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = *(v8 + 16);
      sub_2706E291C();
      v8 = v78;
    }

    v37 = *(v8 + 16);
    v38 = v37 + 1;
    v97 = v5;
    if (v37 >= *(v8 + 24) >> 1)
    {
      sub_2706E291C();
      v8 = v79;
    }

    *(v8 + 16) = v38;
    v5 = v8 + 32;
    v39 = (v8 + 32 + 16 * v37);
    *v39 = v9;
    v39[1] = v10;
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v37)
    {
      while (1)
      {
        v40 = v38 - 1;
        v41 = (v5 + 16 * (v38 - 1));
        v42 = (v8 + 16 * v38);
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_60:
          if (v46)
          {
            goto LABEL_110;
          }

          v58 = *v42;
          v57 = v42[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v62 = v41[1];
          v63 = v62 - *v41;
          if (__OFSUB__(v62, *v41))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v60, v63))
          {
            goto LABEL_118;
          }

          if (v60 + v63 >= v45)
          {
            if (v45 < v63)
            {
              v40 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v65 = *v42;
        v64 = v42[1];
        v53 = __OFSUB__(v64, v65);
        v60 = v64 - v65;
        v61 = v53;
LABEL_75:
        if (v61)
        {
          goto LABEL_115;
        }

        v67 = *v41;
        v66 = v41[1];
        v53 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v53)
        {
          goto LABEL_117;
        }

        if (v68 < v60)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v40 - 1 >= v38)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v72 = v8;
        v73 = (v5 + 16 * (v40 - 1));
        v74 = *v73;
        v8 = v5 + 16 * v40;
        v75 = *(v8 + 8);
        sub_2706A5204((*a3 + 8 * *v73), (*a3 + 8 * *v8), (*a3 + 8 * v75), v92);
        if (v97)
        {
          goto LABEL_103;
        }

        if (v75 < v74)
        {
          goto LABEL_105;
        }

        v76 = *(v72 + 16);
        if (v40 > v76)
        {
          goto LABEL_106;
        }

        *v73 = v74;
        v73[1] = v75;
        if (v40 >= v76)
        {
          goto LABEL_107;
        }

        v38 = v76 - 1;
        memmove((v5 + 16 * v40), (v8 + 16), 16 * (v76 - 1 - v40));
        v8 = v72;
        *(v72 + 16) = v76 - 1;
        if (v76 <= 2)
        {
          goto LABEL_89;
        }
      }

      v47 = v5 + 16 * v38;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_108;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_109;
      }

      v54 = v42[1];
      v55 = v54 - *v42;
      if (__OFSUB__(v54, *v42))
      {
        goto LABEL_111;
      }

      v53 = __OFADD__(v45, v55);
      v56 = v45 + v55;
      if (v53)
      {
        goto LABEL_114;
      }

      if (v56 >= v50)
      {
        v70 = *v41;
        v69 = v41[1];
        v53 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v71)
        {
          v40 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v7 = v95;
    v6 = a3[1];
    v5 = v97;
    if (v95 >= v6)
    {
      goto LABEL_93;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_126;
  }

  if (v9 + a4 >= v25)
  {
    v26 = a3[1];
  }

  else
  {
    v26 = v9 + a4;
  }

  if (v26 < v9)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v10 == v26)
  {
    goto LABEL_40;
  }

  v89 = v8;
  v97 = v5;
  v27 = *a3;
  type metadata accessor for PasteboardRepresentation(0);
  v28 = v27 + 8 * v10 - 8;
  v29 = v9 - v10;
  v91 = v26;
LABEL_33:
  v94 = v10;
  v30 = *(v27 + 8 * v10);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *v32;

    v34 = sub_2706B8A98(v30, v33);

    if ((v34 & 1) == 0)
    {
LABEL_38:
      v10 = v94 + 1;
      v28 += 8;
      --v29;
      if (v94 + 1 == v91)
      {
        v10 = v91;
        v5 = v97;
        v8 = v89;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v27)
    {
      break;
    }

    v35 = *v32;
    v30 = v32[1];
    *v32 = v30;
    v32[1] = v35;
    --v32;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t sub_2706A5204(char *a1, char *a2, uint64_t *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_2706BF7A4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      type metadata accessor for PasteboardRepresentation(0);

      v15 = sub_2706B8A98(v13, v14);

      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  sub_2706BF7A4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v33 = v4;
LABEL_15:
  v18 = v6 - 1;
  v19 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v21 = v6;
    v22 = v19;
    v23 = v7;
    v24 = *(v10 - 1);
    v25 = v18;
    v26 = *v18;
    type metadata accessor for PasteboardRepresentation(0);

    v27 = sub_2706B8A98(v24, v26);

    v5 = v22;
    v28 = v22 + 1;
    if (v27)
    {
      v29 = v25;
      v6 = v25;
      v7 = v23;
      v4 = v33;
      if (v28 != v21)
      {
        *v5 = *v29;
        v6 = v29;
      }

      goto LABEL_15;
    }

    if (v10 != v28)
    {
      *v22 = *(v10 - 1);
    }

    v19 = v22 - 1;
    --v10;
    v18 = v25;
    v7 = v23;
    v4 = v33;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

char *sub_2706A544C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D238, &qword_2706EA060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2706A554C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2706E5A0C();

  [a3 setSuggestedName_];
}

uint64_t sub_2706A55B0(void *a1)
{
  v2 = [a1 itemProviders];

  if (!v2)
  {
    return 0;
  }

  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v3 = sub_2706E5B1C();

  return v3;
}

uint64_t sub_2706A5628(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2706E56BC();

  return v4;
}

uint64_t sub_2706A5688(void *a1)
{
  v1 = [a1 suggestedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2706E5A3C();

  return v3;
}

uint64_t sub_2706A56EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2706E5F9C();
    if (v4)
    {
      v5 = v4;
      v2 = sub_2706A3780(v4, 0);
      sub_2706A5780((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_2706A5780(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2706E5F9C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2706C2200(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PasteboardRepresentation(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2706A5ABC(&qword_28081D228, &qword_28081D220, &qword_2706EA050);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D220, &qword_2706EA050);
          v9 = sub_2706BFC34(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_129Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2706A5954()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_2706A59DC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_2706A59E8(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_2706A59FC(a1, a2);
  }
}

void sub_2706A59FC(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

id sub_2706A5A20(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return result;
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

id sub_2706A5A44(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2706A5A20(result, a2);
  }

  return result;
}

void *sub_2706A5A60()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_2706A5AA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2706A5ABC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2706A5B04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706A5B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2706E576C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2706E575C();
  v10 = type metadata accessor for PasteboardCollection(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v32 = sub_2706A63A8(v9, a3, a2, v13);
  v14 = qword_28081C738;

  if (v14 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v15 = sub_2706E58DC();
    __swift_project_value_buffer(v15, qword_2808292F0);

    v16 = sub_2706E58BC();
    v17 = sub_2706E5C1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136446210;
      v21 = *(a1 + 72);
      v20 = *(a1 + 80);

      v22 = sub_2706C83E8(v21, v20, &v33);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_270680000, v16, v17, "Gathering %{public}s Pasteboard Contents", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743A75B0](v19, -1, -1);
      MEMORY[0x2743A75B0](v18, -1, -1);
    }

    a3 = *(a3 + 16);
    v23 = sub_2706C2200(a3);
    v24 = MEMORY[0x277D84F90];
    if (!v23)
    {
LABEL_15:
      type metadata accessor for PasteboardContents(0);
      v31 = sub_2706B89B0(v24);

      return v31;
    }

    a1 = v23;
    v33 = MEMORY[0x277D84F90];
    result = sub_2706E5EFC();
    if (a1 < 0)
    {
      break;
    }

    v26 = sub_2706C2200(a3);
    v27 = 0;
    v28 = v26 & ~(v26 >> 63);
    while (v28 != v27)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x2743A62C0](v27, a3);
      }

      else
      {
        if (v27 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v29 = *(a3 + 8 * v27 + 32);
      }

      sub_2706A02D0(v27, v29, v32);

      sub_2706E5EDC();
      v30 = v33[2];
      sub_2706E5F0C();
      sub_2706E5F1C();
      sub_2706E5EEC();
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      if (a1 == ++v27)
      {
        v24 = v33;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_2706A5E2C()
{
  OUTLINED_FUNCTION_21_0();
  v64 = v1;
  v65 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_20_1();
  v7 = type metadata accessor for PasteboardDataTransferID(v6);
  v8 = OUTLINED_FUNCTION_16_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = sub_2706E576C();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  OUTLINED_FUNCTION_9_1();
  v26 = *(v3 + 32);

  v27 = sub_270691628(v5, v26);

  if (v27)
  {
    OUTLINED_FUNCTION_35_0(0x28081C000);
    if (!v28)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v29 = sub_2706E58DC();
    __swift_project_value_buffer(v29, qword_2808292F0);
    (*(v17 + 16))(v25, v5, v14);

    v30 = sub_2706E58BC();
    v31 = sub_2706E5C1C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_27_1();
      v62 = v31;
      v33 = v32;
      v63 = OUTLINED_FUNCTION_26_1();
      v67[0] = v63;
      *v33 = 136446466;
      OUTLINED_FUNCTION_37_0();
      v61 = v30;
      sub_2706E572C();
      v34 = OUTLINED_FUNCTION_1_1();
      v36 = v35;
      v37 = MEMORY[0x2743A5EC0](v34);
      v64 = v14;
      v39 = v38;

      sub_270687394(v13);
      sub_2706C83E8(v37, v39, v67);
      OUTLINED_FUNCTION_19_3();

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      sub_2706E572C();
      v40 = OUTLINED_FUNCTION_1_1();
      v41 = MEMORY[0x2743A5EC0](v40);
      v43 = v42;

      (*(v17 + 8))(v25, v64);
      v44 = sub_2706C83E8(v41, v43, v67);

      *(v33 + 14) = v44;
      v45 = v61;
      _os_log_impl(&dword_270680000, v61, v62, "%{public}s: Provider added, session=%{public}s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v17 + 8))(v25, v14);
    }

    swift_beginAccess();

    v60 = *(v27 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v27 + 16);
    *(v27 + 16) = 0x8000000000000000;
    sub_2706A7114();
    *(v27 + 16) = v66;
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_35_0(0x28081C000);
    if (!v28)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v46 = sub_2706E58DC();
    __swift_project_value_buffer(v46, qword_2808292F0);
    (*(v17 + 16))(v22, v5, v14);

    v47 = sub_2706E58BC();
    v48 = sub_2706E5BFC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_27_1();
      v67[0] = OUTLINED_FUNCTION_26_1();
      *v49 = 136446466;
      OUTLINED_FUNCTION_37_0();
      sub_2706E572C();
      v50 = OUTLINED_FUNCTION_1_1();
      MEMORY[0x2743A5EC0](v50);
      v64 = v14;

      sub_270687394(v13);
      v51 = OUTLINED_FUNCTION_15_3();
      v54 = sub_2706C83E8(v51, v52, v53);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      sub_2706E572C();
      v55 = OUTLINED_FUNCTION_1_1();
      MEMORY[0x2743A5EC0](v55);

      (*(v17 + 8))(v22, v64);
      v56 = OUTLINED_FUNCTION_15_3();
      v59 = sub_2706C83E8(v56, v57, v58);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_270680000, v47, v48, "%{public}s: Provider added to session that is not active, session=%{public}s", v49, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v17 + 8))(v22, v14);
    }
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706A63A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Completions();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(a4 + 16) = v8;
  v9 = OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_id;
  v10 = sub_2706E576C();
  (*(*(v10 - 8) + 32))(a4 + v9, a1, v10);
  v11 = (a4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_state);
  *v11 = a3;
  v11[1] = &off_28806BEF8;
  *(a4 + OBJC_IVAR____TtC13UniversalDragP33_9405C66663C517895C0B9FAB381C867020PasteboardCollection_collection) = a2;
  return a4;
}

uint64_t sub_2706A6494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2706A64F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2706A654C()
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_3();
  v26 = v10 & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = v11;
  v12 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v12);
  v14 = *(v13 + 8);
  v15 = *(v13 + 80);
  v16 = (v15 + v11 + 8) & ~v15;
  v25 = *(v13 + 64);
  v17 = v6 | v15;
  v14(v0 + v7, v12);
  v18 = *(v0 + v1);

  v19 = *(v0 + v2);

  v20 = *(v0 + v3 + 8);

  v21 = *(v0 + v26);

  v22 = *(v0 + v24);

  v14(v0 + v16, v12);

  return MEMORY[0x2821FE8E8](v0, v16 + v25, v17 | 7);
}

uint64_t sub_2706A66AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2706A6710(int a1, void *a2)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12_3();
  v14 = v13 & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v16);
  sub_27069D198(a1, a2, (v2 + v10), *(v2 + v3), *(v2 + v4), *(v2 + v5), *(v2 + v5 + 8), *(v2 + v14), *(v2 + v15), v2 + ((*(v17 + 80) + v15 + 8) & ~*(v17 + 80)));
}

uint64_t sub_2706A6820()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2706A6898(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_2706A68AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_2706A68F0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_270694BA4(result);
  }

  return result;
}

unint64_t sub_2706A6928(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_270688D9C(result);
  }

  return result;
}

uint64_t sub_2706A693C()
{
  OUTLINED_FUNCTION_21_0();
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = (*(v4 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_33_1();
  v12(v13);

  (v12)(v0 + v8, v1);
  v14 = *(v0 + v10);

  v15 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

void sub_2706A6A94()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v6 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  v15 = *(v1 + v6);
  v17 = *(v1 + v16);
  v18 = *(v1 + 16);
  v19 = (v1 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = *v19;
  v21 = v19[1];

  sub_27069DA44(v0, v18, v1 + v4, v15, (v1 + v14), v17, v20, v21);
}

uint64_t sub_2706A6BA4()
{
  v2 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2706E576C();
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  v11 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_32_1();

  v14 = *(v0 + 32);

  v15 = *(v10 + 8);
  v15(v0 + v5, v8);
  v16 = OUTLINED_FUNCTION_33_1();
  (v15)(v16);
  v17 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v4 | 7);
}

void sub_2706A6CD8()
{
  v2 = OUTLINED_FUNCTION_20_1();
  v3 = type metadata accessor for PasteboardDataTransferID(v2);
  OUTLINED_FUNCTION_5_4(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = *(v12 + 64);
  OUTLINED_FUNCTION_22_1();
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v19 = *(v1 + v18);

  sub_27069EDDC(v0, v15, v16);
}

uint64_t sub_2706A6DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2706A6E0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270692D3C(a1, a2);
  }

  return a1;
}

uint64_t sub_2706A6E20()
{
  v2 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2706E576C();
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  v11 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_32_1();
  v14 = *(v0 + 16);

  v15 = *(v10 + 8);
  v15(v0 + v5, v8);
  v16 = OUTLINED_FUNCTION_33_1();
  (v15)(v16);
  v17 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v4 | 7);
}

void sub_2706A6F4C()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v2 = type metadata accessor for PasteboardDataTransferID(v1);
  OUTLINED_FUNCTION_5_4(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  v15 = *(v0 + v14);
  v16 = *(v0 + 16);

  sub_27069ED90();
}

uint64_t sub_2706A7048()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2706A7084()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2706A70B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2706A7114()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v15 = *v3;
  v16 = sub_27068F860(v5);
  if (__OFADD__(v15[2], (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D290, &qword_2706EA0B0);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v3;
  v21 = sub_27068F860(v5);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v3;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = *v24;
    *v24 = v7;
    v24[1] = v1;
    OUTLINED_FUNCTION_16_0();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_270690CD8(v5, v14);
    sub_2706A727C(v18, v14, v7, v23, v1);
    OUTLINED_FUNCTION_16_0();
  }
}

uint64_t sub_2706A727C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_16_3(v11);
  result = sub_2706A66AC(a2, v10 + *(v12 + 72) * a1);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a5;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTFConverter.Format(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706A73ECLL);
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

unint64_t sub_2706A7428()
{
  result = qword_28081D298;
  if (!qword_28081D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D298);
  }

  return result;
}

void OUTLINED_FUNCTION_13_4()
{

  JUMPOUT(0x2743A75B0);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_0()
{
  v3 = (v1 + *v0);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  v4 = v0 + **(v2 - 152);

  return sub_270690CD8(v4, v1);
}

BOOL OUTLINED_FUNCTION_38_0()
{

  return sub_2706A4134((v2 - 192), v0, v1);
}

uint64_t sub_2706A7740()
{
  v0 = sub_2706E5A3C();
  v2 = v1;
  if (v0 == sub_2706E5A3C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2706E631C();
  }

  return v5 & 1;
}

uint64_t sub_2706A77C4(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701667182;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x726564726FLL;
      break;
    case 3:
      v4 = 0x6E65644965707974;
      v3 = 0xEE00726569666974;
      break;
    case 4:
      v4 = 0x7079547265707573;
      v3 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701667182;
      break;
    case 2:
      v5 = 0xE500000000000000;
      v6 = 0x726564726FLL;
      break;
    case 3:
      v6 = 0x6E65644965707974;
      v5 = 0xEE00726569666974;
      break;
    case 4:
      v6 = 0x7079547265707573;
      v5 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2706E631C();
  }

  return v8 & 1;
}

void *sub_2706A7974@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2706A7994(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  return v6;
}

uint64_t sub_2706A79A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F50726F68636E61 && a2 == 0xEB00000000746E69;
    if (v6 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_8_3();

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

uint64_t sub_2706A7AA0(char a1)
{
  if (!a1)
  {
    return 1702521203;
  }

  if (a1 == 1)
  {
    return 0x6F50726F68636E61;
  }

  return 0x6E656E6F706D6F63;
}

uint64_t sub_2706A7B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A79A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706A7B38(uint64_t a1)
{
  v2 = sub_2706AA1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A7B74(uint64_t a1)
{
  v2 = sub_2706AA1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706A7BB0(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(v1 + 32) = *(a1 + 32);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(v1 + 48);
    *(v1 + 48) = v3;
  }

  result = *(a1 + 64);
  if (result)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = result;
  }

  return result;
}

uint64_t sub_2706A7C3C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t sub_2706A7C64()
{
  sub_2706A7C3C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2706A7CBC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D368, &qword_2706EA430);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_3();
  sub_2706AA1AC();
  OUTLINED_FUNCTION_13_5();
  v12 = *(v0 + 16);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_1_5();
  sub_2706AA2B8(v6);
  OUTLINED_FUNCTION_5_5();
  sub_2706E60DC();
  if (!v1)
  {
    v13 = *(v0 + 32);
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v7);
    OUTLINED_FUNCTION_5_5();
    sub_2706E60DC();
    v14 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    OUTLINED_FUNCTION_7_2();
    sub_2706AA200(v8);
    OUTLINED_FUNCTION_5_5();
    sub_2706E60DC();
  }

  v9 = OUTLINED_FUNCTION_14_3();
  return v10(v9);
}

uint64_t sub_2706A7EC4()
{
  v0 = swift_allocObject();
  sub_2706A7FCC();
  return v0;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2706A7F34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2706A7F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2706A7FCC()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D330, &qword_2706EA420);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_4();
  *(v0 + 56) = 0;
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2706AA1AC();
  sub_2706E668C();
  if (v1)
  {
    v12 = *(v0 + 56);

    type metadata accessor for DragPresentationItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_1_5();
    sub_2706AA2B8(v9);
    OUTLINED_FUNCTION_4_5();
    sub_2706E605C();
    *(v0 + 16) = v15;
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v10);
    OUTLINED_FUNCTION_4_5();
    sub_2706E605C();
    *(v0 + 32) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    OUTLINED_FUNCTION_8_5();
    sub_2706AA200(v11);
    OUTLINED_FUNCTION_4_5();
    sub_2706E605C();
    v13 = OUTLINED_FUNCTION_6_4();
    v14(v13);
    *(v0 + 48) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706A8238@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2706A7EC4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2706A8288@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for DragPresentationItem();
  result = sub_2706E5E4C();
  *a1 = result;
  return result;
}

uint64_t sub_2706A82C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702521203 && a2 == 0xE400000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F50726F68636E61 && a2 == 0xEB00000000746E69;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2706E631C();

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

uint64_t sub_2706A8470(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x6F50726F68636E61;
      break;
    case 3:
      result = 0x6E656E6F706D6F63;
      break;
    case 4:
      result = 0x77656976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706A8520()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D3F0, &qword_2706EA830);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_3();
  sub_2706AAB18();
  OUTLINED_FUNCTION_13_5();
  v6 = *v0;
  sub_2706E60CC();
  if (!v1)
  {
    v13 = *(v0 + 1);
    v17 = *(v0 + 24);
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_1_5();
    sub_2706AA2B8(v7);
    OUTLINED_FUNCTION_3_3();
    sub_2706E609C();
    v14 = *(v0 + 2);
    v18 = *(v0 + 48);
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v8);
    OUTLINED_FUNCTION_3_3();
    sub_2706E609C();
    v15 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    OUTLINED_FUNCTION_7_2();
    sub_2706AA200(v9);
    OUTLINED_FUNCTION_3_3();
    sub_2706E609C();
    v16 = v0[8];
    sub_2706AABC0();
    sub_2706E609C();
  }

  v10 = OUTLINED_FUNCTION_14_3();
  return v11(v10);
}

void sub_2706A877C()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D3D8, &qword_2706EA828);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_4();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2706AAB18();
  sub_2706E668C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v24) = 0;
    v10 = sub_2706E604C();
    type metadata accessor for CGSize(0);
    OUTLINED_FUNCTION_1_5();
    sub_2706AA2B8(v11);
    OUTLINED_FUNCTION_4_5();
    sub_2706E601C();
    v41 = v24;
    v40 = v26;
    type metadata accessor for CGPoint(0);
    OUTLINED_FUNCTION_0_3();
    sub_2706AA2B8(v12);
    OUTLINED_FUNCTION_4_5();
    sub_2706E601C();
    v22 = v25;
    v21 = v24;
    v38 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D350, &qword_2706EA428);
    LOBYTE(v23[0]) = 3;
    OUTLINED_FUNCTION_8_5();
    sub_2706AA200(v13);
    OUTLINED_FUNCTION_4_5();
    sub_2706E601C();
    v20 = v25;
    v14 = v24;
    v35 = 4;
    sub_2706AAB6C();
    sub_2706E601C();
    v15 = OUTLINED_FUNCTION_6_4();
    v16(v15);
    v18 = v36;
    v23[0] = v10;
    v23[1] = v24;
    v23[2] = v25;
    v19 = v40;
    LOBYTE(v23[3]) = v40;
    *(&v23[3] + 1) = *v39;
    HIDWORD(v23[3]) = *&v39[3];
    v23[4] = v24;
    v23[5] = v25;
    v17 = v38;
    LOBYTE(v23[6]) = v38;
    *(&v23[6] + 1) = *v37;
    HIDWORD(v23[6]) = *&v37[3];
    v23[7] = v24;
    v23[8] = v36;
    sub_27069111C(v23, &v24);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v24 = v10;
    v25 = v41;
    v26 = v22;
    v27 = v19;
    *v28 = *v39;
    *&v28[3] = *&v39[3];
    v29 = v21;
    v30 = v20;
    v31 = v17;
    *v32 = *v37;
    *&v32[3] = *&v37[3];
    v33 = v14;
    v34 = v18;
    sub_270691178(&v24);
    memcpy(v4, v23, 0x48uLL);
  }

  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706A8B70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

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

uint64_t sub_2706A8C34(char a1)
{
  if (a1)
  {
    return 0x656D617266;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_2706A8C60()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D320, &qword_2706EA418);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_3();
  sub_2706AA158();
  OUTLINED_FUNCTION_13_5();
  v6 = *v0;
  v7 = v0[1];
  sub_2706E60BC();
  if (!v1)
  {
    v12 = *(v0 + 1);
    v13 = *(v0 + 2);
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_9_3();
    sub_2706AA2B8(v8);
    OUTLINED_FUNCTION_3_3();
    sub_2706E60DC();
  }

  v9 = OUTLINED_FUNCTION_14_3();
  return v10(v9);
}

void sub_2706A8DB8()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D308, &qword_2706EA410);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_4();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2706AA158();
  sub_2706E668C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v16) = 0;
    v10 = sub_2706E603C();
    v12 = v11;
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_9_3();
    sub_2706AA2B8(v13);
    sub_2706E605C();
    v14 = OUTLINED_FUNCTION_15_4();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v4 = v10;
    *(v4 + 8) = v12;
    *(v4 + 16) = v16;
    *(v4 + 32) = v17;
  }

  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706A8FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A82C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706A8FD0(uint64_t a1)
{
  v2 = sub_2706AAB18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A900C(uint64_t a1)
{
  v2 = sub_2706AAB18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706A9048(void *a1@<X8>)
{
  sub_2706A877C();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

uint64_t sub_2706A90B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A8B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706A90DC(uint64_t a1)
{
  v2 = sub_2706AA158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A9118(uint64_t a1)
{
  v2 = sub_2706AA158();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2706A9154@<D0>(_OWORD *a1@<X8>)
{
  sub_2706A8DB8();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2706A91B0(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E669C();
  if (a2)
  {
    a2 = sub_270693890();
    v5 = v4;
  }

  else
  {
    v5 = 0xF000000000000000;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2A0, &qword_2706EA3E0);
  sub_2706A9CB0(&unk_28081D2A8);
  sub_2706E635C();
  sub_2706A3BA4(a2, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *sub_2706A92E8(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E667C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2A0, &qword_2706EA3E0);
    sub_2706A9CB0(&unk_28081D2B0);
    sub_2706E632C();
    if (v7 >> 60 == 15 || (type metadata accessor for CGImage(0), v4 = sub_270693780(), sub_2706A3BA4(v6, v7), !v4))
    {
      v4 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v4;
}

uint64_t sub_2706A9448(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2706E631C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_2706A94C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2706A92E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2706A9508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706A9448(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2706A9540(uint64_t a1)
{
  v2 = sub_2706A9D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706A957C(uint64_t a1)
{
  v2 = sub_2706A9D14();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2706A95B8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2B8, &qword_2706EA3E8);
  OUTLINED_FUNCTION_4(v29);
  v28 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  OUTLINED_FUNCTION_10_3();
  sub_2706A9D14();
  sub_2706E66AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2C8, &qword_2706EA3F0);
  v8 = sub_2706E5FAC();
  v9 = v8;
  v10 = 0;
  v11 = 1 << *(v1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v1 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = *(*(v1 + 48) + 8 * v19);
      v21 = *(*(v1 + 56) + 8 * v19);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v9[6] + 8 * v19) = v20;
      *(v9[7] + 8 * v19) = v21;
      v22 = v9[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v9[2] = v24;
      v25 = v21;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D2D0, &qword_2706EA3F8);
        sub_2706A9DBC(&unk_28081D2D8);
        v26 = v29;
        sub_2706E60DC();

        (*(v28 + 8))(v7, v26);
        OUTLINED_FUNCTION_55();
        return;
      }

      v18 = *(v1 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}