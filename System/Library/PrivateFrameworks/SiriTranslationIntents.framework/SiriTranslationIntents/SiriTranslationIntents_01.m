uint64_t sub_2693E0EF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v79 = a3;
  v74 = sub_269422CE8();
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v77 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v64 - v10;
  v82 = sub_269423AE8();
  v11 = *(*(v82 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v82);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v78 = &v64 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_60;
  }

  v20 = v79 - a2;
  if (v79 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v18;
  v86 = a1;
  v85 = v83;
  v72 = (v6 + 8);
  v73 = (v15 + 16);
  v71 = (v15 + 8);
  v23 = v20 / v18;
  if (v22 >= v20 / v18)
  {
    v42 = v83;
    sub_26941F480(a2, v20 / v18, v83);
    v43 = v42 + v23 * v18;
    v44 = -v18;
    v45 = v43;
    v46 = v79;
    v80 = a1;
    v67 = -v18;
LABEL_36:
    v47 = a2 + v44;
    v48 = v46;
    v65 = v45;
    v81 = a2;
    v68 = a2 + v44;
    while (1)
    {
      if (v43 <= v83)
      {
        v86 = a2;
        v84 = v45;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v66 = v45;
      v79 = v48 + v44;
      v49 = v43 + v44;
      v50 = *v73;
      v51 = v82;
      v70 = v48;
      v50();
      v52 = v75;
      (v50)(v75, v47, v51);
      v53 = v76;
      sub_269423AB8();
      v54 = v43;
      v55 = v74;
      v56 = v77;
      sub_269423AB8();
      sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578]);
      LODWORD(v69) = sub_2694240E8();
      v57 = *v72;
      (*v72)(v56, v55);
      v57(v53, v55);
      v58 = *v71;
      (*v71)(v52, v51);
      v58(v78, v51);
      if ((v69 & 1) == 0)
      {
        v43 = v54;
        v46 = v79;
        if (v70 < v81 || v79 >= v81)
        {
          a2 = v68;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v66;
          v44 = v67;
          a1 = v80;
        }

        else
        {
          v62 = v66;
          v44 = v67;
          v45 = v66;
          v63 = v68;
          a2 = v68;
          a1 = v80;
          if (v70 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v63;
            v45 = v62;
          }
        }

        goto LABEL_36;
      }

      v59 = v79;
      v60 = v70 < v54 || v79 >= v54;
      a2 = v81;
      if (v60)
      {
        swift_arrayInitWithTakeFrontToBack();
        v48 = v59;
        v43 = v49;
        v45 = v49;
        a1 = v80;
        v44 = v67;
        v47 = v68;
      }

      else
      {
        v45 = v49;
        v19 = v54 == v70;
        v48 = v79;
        v43 = v49;
        a1 = v80;
        v44 = v67;
        v47 = v68;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v48 = v59;
          v43 = v49;
          v45 = v49;
        }
      }
    }

    v86 = a2;
    v84 = v65;
  }

  else
  {
    v24 = v83;
    sub_26941F480(a1, (a2 - a1) / v18, v83);
    v69 = v18;
    v70 = v24 + v22 * v18;
    v84 = v70;
    for (i = v79; v83 < v70 && a2 < i; i = v79)
    {
      v80 = a1;
      v27 = *v73;
      v28 = v78;
      v29 = v82;
      (*v73)(v78, a2, v82);
      v30 = v75;
      (v27)(v75, v83, v29);
      v81 = a2;
      v31 = v76;
      sub_269423AB8();
      v32 = v77;
      sub_269423AB8();
      sub_2693E18D0(&qword_28030F930, MEMORY[0x277CC9578]);
      v33 = v74;
      v34 = sub_2694240E8();
      v35 = *v72;
      (*v72)(v32, v33);
      v35(v31, v33);
      v36 = *v71;
      (*v71)(v30, v29);
      v36(v28, v29);
      if (v34)
      {
        v37 = v80;
        a2 = v81;
        v38 = v69;
        v39 = v83 + v69;
        if (v80 < v83 || v80 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v80 != v83)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v85 = v39;
        v83 = v39;
      }

      else
      {
        v38 = v69;
        v37 = v80;
        a2 = v81 + v69;
        if (v80 < v81 || v80 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v80 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 = v37 + v38;
      v86 = a1;
    }
  }

LABEL_58:
  sub_2693E15E8(&v86, &v85, &v84);
  return 1;
}

uint64_t sub_2693E15E8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_269423AE8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2693E16C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F938, qword_269428910);
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

unint64_t sub_2693E17C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_269423AE8() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2693E1870(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2693E18D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_4()
{

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2693DE1AC(v1, v0, 0xEA00000000007942);
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return sub_2693DB6E0(v0, v1, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_269423A78();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.text.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.wordType.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.wordType.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.definition.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.definition.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E1D54;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.id.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.id.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SnippetTranslationItem.romanization.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SnippetTranslationItem.romanization.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t static SiriTranslationModels.SnippetTranslationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v4 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_269422DB8();
  v5 = a2 + *(v3 + 28);
  sub_269422DB8();

  return 1;
}

uint64_t sub_2693E20AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795464726F77 && a2 == 0xE800000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
      if (v7 || (sub_269424688() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_269424688() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x617A696E616D6F72 && a2 == 0xEC0000006E6F6974)
        {

          return 4;
        }

        else
        {
          v10 = sub_269424688();

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

uint64_t sub_2693E2258(char a1)
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
      result = 25705;
      break;
    case 4:
      result = 0x617A696E616D6F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2693E2328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E20AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E2350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693E2250();
  *a1 = result;
  return result;
}

uint64_t sub_2693E2378(uint64_t a1)
{
  v2 = sub_2693E2608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E23B4(uint64_t a1)
{
  v2 = sub_2693E2608();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SnippetTranslationItem.encode(to:)()
{
  OUTLINED_FUNCTION_35_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F950, &qword_269426438);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_20_3();
  sub_2693E2608();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_1_6();
  sub_2693E2CC8(v12);
  OUTLINED_FUNCTION_27_0();
  sub_269424648();
  if (!v0)
  {
    v17 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
    OUTLINED_FUNCTION_43(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
    OUTLINED_FUNCTION_1_6();
    sub_2693E2D34(v13);
    OUTLINED_FUNCTION_26_0();
    v14 = v17[6];
    OUTLINED_FUNCTION_26_0();
    v15 = v17[7];
    OUTLINED_FUNCTION_27_0();
    sub_269424648();
    v16 = v17[8];
    OUTLINED_FUNCTION_26_0();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E2608()
{
  result = qword_28030F958;
  if (!qword_28030F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F958);
  }

  return result;
}

unint64_t sub_2693E265C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280310140, &qword_269427110);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SnippetTranslationItem.init(from:)()
{
  OUTLINED_FUNCTION_35_0();
  v2 = v1;
  v44 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F948, &qword_269426430);
  v4 = OUTLINED_FUNCTION_2(v53);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39();
  v45 = v9;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_50();
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  v13 = OUTLINED_FUNCTION_2(v12);
  v49 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  v48 = v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F980, &unk_269426440);
  OUTLINED_FUNCTION_2(v50);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_52();
  v26 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(v25);
  v27 = OUTLINED_FUNCTION_4_5(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_5();
  v32 = v31 - v30;
  v34 = *(v33 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
  sub_269422D98();
  v54 = v26[6];
  sub_269422D98();
  v52 = v26[8];
  sub_269422D98();
  v35 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2693E2608();
  sub_269424778();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    v37 = *(v55 + 8);
    v37(v32 + v34, v53);
    v37(v32 + v54, v53);
    v37(v32 + v52, v53);
  }

  else
  {
    v51 = v19;
    OUTLINED_FUNCTION_0_10();
    sub_2693E2CC8(v36);
    sub_2694245F8();
    v43 = *(v49 + 32);
    v43(v32, v48);
    OUTLINED_FUNCTION_0_10();
    sub_2693E2D34(v38);
    v39 = v46;
    OUTLINED_FUNCTION_42();
    sub_2694245F8();
    v47 = *(v55 + 40);
    v47(v32 + v34, v39, v53);
    OUTLINED_FUNCTION_22_1(2);
    OUTLINED_FUNCTION_42();
    sub_2694245F8();
    v47(v32 + v54, v45, v53);
    OUTLINED_FUNCTION_22_1(3);
    sub_2694245F8();
    (v43)(v32 + v26[7], v51, v12);
    OUTLINED_FUNCTION_22_1(4);
    OUTLINED_FUNCTION_42();
    sub_2694245F8();
    v40 = OUTLINED_FUNCTION_41();
    v41(v40);
    v42 = OUTLINED_FUNCTION_45(v52);
    (v47)(v42);
    sub_2693E4A0C(v32, v44, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2693E4A6C(v32, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
  }

  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E2CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F940, &unk_269426420);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E2D34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F948, &qword_269426430);
    sub_2693E265C(&unk_28030F970);
    sub_2693E265C(&unk_28030F978);
    result = OUTLINED_FUNCTION_34_0();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2693E2E10@<X0>(uint64_t *a1@<X8>)
{
  result = SiriTranslationModels.SnippetTranslationItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.items.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.visualID.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  sub_269422DB8();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.romanizationExists.setter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  return sub_269422DC8();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.romanizationExists.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.targetLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.sourceLanguageLocale.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedSourceLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.localizedtargetLanguage.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.getter()
{
  v0 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v2;
}

uint64_t SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.setter()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v1 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SiriTranslationResultModel.openMoreInTranslation.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v3) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t sub_2693E36A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44496C6175736976 && a2 == 0xE800000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
      if (v7 || (sub_269424688() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000002694291B0 == a2;
        if (v8 || (sub_269424688() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000269429980 == a2;
          if (v9 || (sub_269424688() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000002694299A0 == a2;
            if (v10 || (sub_269424688() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000002694299C0 == a2;
              if (v11 || (sub_269424688() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000002694299E0 == a2;
                if (v12 || (sub_269424688() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000015 && 0x8000000269429A00 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269424688();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_2693E3970(char a1)
{
  result = 0x736D657469;
  switch(a1)
  {
    case 1:
      result = 0x44496C6175736976;
      break;
    case 2:
      result = 0x657361726870;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2693E3A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E36A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E3AC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693E3968();
  *a1 = result;
  return result;
}

uint64_t sub_2693E3AEC(uint64_t a1)
{
  v2 = sub_2693E3DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E3B28(uint64_t a1)
{
  v2 = sub_2693E3DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationResultModel.encode(to:)()
{
  OUTLINED_FUNCTION_35_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9B0, &qword_269426460);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_20_3();
  sub_2693E3DF8();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  OUTLINED_FUNCTION_1_6();
  sub_2693E4938(v12);
  OUTLINED_FUNCTION_55();
  if (!v0)
  {
    v13 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
    OUTLINED_FUNCTION_43(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    OUTLINED_FUNCTION_1_6();
    sub_2693E2CC8(v14);
    OUTLINED_FUNCTION_6_3();
    v15 = v13[6];
    OUTLINED_FUNCTION_6_3();
    v22 = v13[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
    OUTLINED_FUNCTION_1_6();
    sub_2693E3F18(v16);
    OUTLINED_FUNCTION_55();
    v17 = v13[8];
    OUTLINED_FUNCTION_6_3();
    v18 = v13[9];
    OUTLINED_FUNCTION_6_3();
    v19 = v13[10];
    OUTLINED_FUNCTION_6_3();
    v20 = v13[11];
    OUTLINED_FUNCTION_6_3();
    v21 = v13[12];
    OUTLINED_FUNCTION_6_3();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E3DF8()
{
  result = qword_28030F9B8;
  if (!qword_28030F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030F9B8);
  }

  return result;
}

unint64_t sub_2693E3E4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F998, &unk_269427590);
    sub_2693E3ED4(v4);
    result = OUTLINED_FUNCTION_54();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E3ED4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E3F18(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F9A8, &qword_269426458);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationResultModel.init(from:)()
{
  OUTLINED_FUNCTION_35_0();
  v72 = v2;
  v61 = v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
  OUTLINED_FUNCTION_2(v71);
  v68 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_38();
  v64 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  v10 = OUTLINED_FUNCTION_2(v9);
  v74 = v11;
  v75 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v62 = v14 - v15;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  v63 = v20;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39();
  v66 = v22;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_50();
  v65 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  OUTLINED_FUNCTION_2(v25);
  v70 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_38();
  v69 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9F0, &qword_269426468);
  v67 = OUTLINED_FUNCTION_2(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_29_0();
  v35 = sub_269422D18();
  v36 = OUTLINED_FUNCTION_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_5();
  v43 = v42 - v41;
  v44 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v45 = OUTLINED_FUNCTION_4_5(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_51();
  v73 = v48;
  v49 = v48[5];
  sub_269422D08();
  sub_269422CF8();
  (*(v38 + 8))(v43, v35);
  sub_269422D98();
  v50 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  sub_2693E3DF8();
  OUTLINED_FUNCTION_49();
  sub_269424778();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
    (*(v74 + 8))(v1 + v49, v75);
  }

  else
  {
    OUTLINED_FUNCTION_0_10();
    sub_2693E4938(v51);
    sub_2694245F8();
    (*(v70 + 32))(v1, v69, v25);
    OUTLINED_FUNCTION_0_10();
    sub_2693E2CC8(v52);
    OUTLINED_FUNCTION_44();
    (*(v74 + 40))(v1 + v49, v65, v75);
    OUTLINED_FUNCTION_22_1(2);
    OUTLINED_FUNCTION_44();
    v53 = *(v74 + 32);
    (v53)(v73[6], v66, v75);
    OUTLINED_FUNCTION_0_10();
    sub_2693E3F18(v54);
    sub_2694245F8();
    (*(v68 + 32))(v73[7], v64, v71);
    OUTLINED_FUNCTION_22_1(4);
    sub_2694245F8();
    (v53)(v73[8], v63, v75);
    OUTLINED_FUNCTION_22_1(5);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v55 = OUTLINED_FUNCTION_25_0(v73[9]);
    v53(v55);
    OUTLINED_FUNCTION_22_1(6);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v56 = OUTLINED_FUNCTION_25_0(v73[10]);
    v53(v56);
    OUTLINED_FUNCTION_22_1(7);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v57 = OUTLINED_FUNCTION_25_0(v73[11]);
    v53(v57);
    OUTLINED_FUNCTION_22_1(8);
    OUTLINED_FUNCTION_5_5();
    sub_2694245F8();
    v58 = OUTLINED_FUNCTION_30_0();
    v59(v58, v67);
    (v53)(v73[12], v62, v75);
    sub_2693E4A0C(0, v61, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_18_4();
    sub_2693E4A6C(0, v60);
  }

  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E4938(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F9A0, &qword_269426450);
    sub_2693E3E4C(&unk_28030F9C8);
    sub_2693E3E4C(&unk_28030F9D8);
    result = OUTLINED_FUNCTION_34_0();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2693E4A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_5(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2693E4A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s22SiriTranslationIntents0aB6ModelsO07SnippetB4ItemV4textSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_269422DB8();
  return v1;
}

uint64_t (*SiriTranslationModels.Language.name.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

uint64_t sub_2693E4BF0(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v3;
}

uint64_t sub_2693E4C7C()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.Language.localizedName.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.Language(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t sub_2693E4D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    return 1;
  }

  else
  {
    v7 = sub_269424688();

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

uint64_t sub_2693E4E10(char a1)
{
  if (a1)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2693E4E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E4D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E4E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693E4E08();
  *a1 = result;
  return result;
}

uint64_t sub_2693E4EA4(uint64_t a1)
{
  v2 = sub_2693E510C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E4EE0(uint64_t a1)
{
  v2 = sub_2693E510C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SiriTranslationModels.Language.__derived_struct_equals(_:_:)()
{
  if ((sub_269422DD8() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for SiriTranslationModels.Language(0) + 20);

  return sub_269422DD8();
}

uint64_t SiriTranslationModels.Language.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA08, &qword_269426470);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_0();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  OUTLINED_FUNCTION_20_3();
  sub_2693E510C();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_1_6();
  sub_2693E2CC8(v12);
  OUTLINED_FUNCTION_27_0();
  sub_269424648();
  if (!v1)
  {
    v13 = *(type metadata accessor for SiriTranslationModels.Language(0) + 20);
    OUTLINED_FUNCTION_27_0();
    sub_269424648();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_2693E510C()
{
  result = qword_28030FA10;
  if (!qword_28030FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA10);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_2693E51D8();
  sub_2694240C8();
  v1 = v0 + *(type metadata accessor for SiriTranslationModels.Language(0) + 20);
  return sub_2694240C8();
}

unint64_t sub_2693E51D8()
{
  result = qword_28030FA18;
  if (!qword_28030FA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030F940, &unk_269426420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA18);
  }

  return result;
}

uint64_t SiriTranslationModels.Language.hashValue.getter()
{
  OUTLINED_FUNCTION_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_2693E51D8();
  sub_2694240C8();
  v1 = v0 + *(type metadata accessor for SiriTranslationModels.Language(0) + 20);
  sub_2694240C8();
  return sub_269424758();
}

void SiriTranslationModels.Language.init(from:)()
{
  OUTLINED_FUNCTION_35_0();
  v2 = v1;
  v37 = v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  v4 = OUTLINED_FUNCTION_2(v42);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_50();
  v41 = v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA20, &qword_269426478);
  OUTLINED_FUNCTION_2(v40);
  v38 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for SiriTranslationModels.Language(0);
  v20 = OUTLINED_FUNCTION_4_5(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_5();
  v25 = v24 - v23;
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2693E510C();
  sub_269424778();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v35 = v19;
    v36 = v25;
    v28 = v38;
    v27 = v39;
    OUTLINED_FUNCTION_0_10();
    v30 = sub_2693E2CC8(v29);
    v31 = v40;
    sub_2694245F8();
    v34[1] = v30;
    v32 = v41;
    v41 = *(v27 + 32);
    v41(v36, v32, v42);
    sub_2694245F8();
    (*(v28 + 8))(v18, v31);
    v33 = v36;
    v41(v36 + *(v35 + 20), v10, v42);
    sub_2693E4A0C(v33, v37, type metadata accessor for SiriTranslationModels.Language);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2693E4A6C(v33, type metadata accessor for SiriTranslationModels.Language);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2693E564C(uint64_t a1, uint64_t a2)
{
  sub_269424738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  sub_2693E51D8();
  sub_2694240C8();
  v4 = v2 + *(a2 + 20);
  sub_2694240C8();
  return sub_269424758();
}

uint64_t sub_2693E5748(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_269422DB8();
  return v3;
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.languages.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA30, &qword_269426488);
  *(v0 + 32) = OUTLINED_FUNCTION_57(v3);
  return sub_2693E9050;
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.prompt.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

uint64_t sub_2693E5900(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  OUTLINED_FUNCTION_40();
  return v3;
}

uint64_t sub_2693E596C()
{
  v0 = OUTLINED_FUNCTION_17_4();
  v2 = *(v1(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  return OUTLINED_FUNCTION_14_3();
}

uint64_t (*SiriTranslationModels.SiriTranslationDisambiguationModel.phrase.modify())()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_4(v2);
  v4 = *(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  *(v0 + 32) = OUTLINED_FUNCTION_10_4(v5);
  return sub_2693E9050;
}

void sub_2693E5A28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2693E5A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_269424688() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
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

uint64_t sub_2693E5B8C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_56();
  MEMORY[0x26D63C2F0](a1);
  return sub_269424758();
}

uint64_t sub_2693E5BCC(char a1)
{
  if (!a1)
  {
    return 0x65676175676E616CLL;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x657361726870;
}

uint64_t sub_2693E5C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E5A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E5C50(uint64_t a1)
{
  v2 = sub_2693E5E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E5C8C(uint64_t a1)
{
  v2 = sub_2693E5E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_35_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA38, &qword_269426490);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_0();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  OUTLINED_FUNCTION_20_3();
  sub_2693E5E6C();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_32_0();
  sub_269424788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA30, &qword_269426488);
  OUTLINED_FUNCTION_1_6();
  sub_2693E5EC0(v12);
  sub_269424648();
  if (!v0)
  {
    v13 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
    OUTLINED_FUNCTION_43(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    OUTLINED_FUNCTION_1_6();
    sub_2693E2CC8(v14);
    OUTLINED_FUNCTION_47();
    v15 = *(v13 + 24);
    OUTLINED_FUNCTION_47();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E5E6C()
{
  result = qword_28030FA40;
  if (!qword_28030FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA40);
  }

  return result;
}

unint64_t sub_2693E5EC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030FA30, &qword_269426488);
    sub_2693E5F94(&unk_28030FA50);
    sub_2693E5F94(&unk_28030FA60);
    result = OUTLINED_FUNCTION_34_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2693E5F94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030FA28, &qword_269426480);
    sub_2693E3ED4(v4);
    result = OUTLINED_FUNCTION_54();
    atomic_store(result, v1);
  }

  return result;
}

void SiriTranslationModels.SiriTranslationDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_35_0();
  v2 = v1;
  v47 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
  v4 = OUTLINED_FUNCTION_2(v53);
  v49 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10();
  v48 = (v8 - v9);
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA30, &qword_269426488);
  OUTLINED_FUNCTION_2(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38();
  v52 = v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA70, &qword_269426498);
  OUTLINED_FUNCTION_2(v54);
  v51 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v22);
  v23 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v24 = OUTLINED_FUNCTION_4_5(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_5();
  v29 = v28 - v27;
  v31 = v2[3];
  v30 = v2[4];
  v55 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v31);
  sub_2693E5E6C();
  sub_269424778();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    v45 = v23;
    v46 = v29;
    v32 = v53;
    OUTLINED_FUNCTION_0_10();
    sub_2693E5EC0(v33);
    v34 = v52;
    sub_2694245F8();
    (*(v50 + 32))(v46, v34, v13);
    OUTLINED_FUNCTION_0_10();
    v52 = sub_2693E2CC8(v35);
    sub_2694245F8();
    v36 = v46 + *(v45 + 20);
    v43 = *(v49 + 32);
    v44 = v13;
    v43(v36, v12, v32);
    v37 = v48;
    sub_2694245F8();
    v38 = OUTLINED_FUNCTION_28_0();
    v39(v38);
    v40 = v46;
    v43(v46 + *(v45 + 24), v37, v32);
    sub_2693E4A0C(v40, v47, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_16_4();
    sub_2693E4A6C(v40, v41);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2693E6478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000269429A20 == a2;
  if (v3 || (sub_269424688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000269429A40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269424688();

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

uint64_t sub_2693E6584(char a1)
{
  OUTLINED_FUNCTION_56();
  MEMORY[0x26D63C2F0](a1 & 1);
  return sub_269424758();
}

unint64_t sub_2693E65C4(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2693E6608(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269424688();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2693E66A0()
{
  OUTLINED_FUNCTION_56();
  MEMORY[0x26D63C2F0](0);
  return sub_269424758();
}

uint64_t sub_2693E6744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E6478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2693E676C(uint64_t a1)
{
  v2 = sub_2693E6E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E67A8(uint64_t a1)
{
  v2 = sub_2693E6E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693E6808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693CC2D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2693E6834(uint64_t a1)
{
  v2 = sub_2693E6E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E6870(uint64_t a1)
{
  v2 = sub_2693E6E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693E68CC()
{
  sub_269424738();
  MEMORY[0x26D63C2F0](0);
  return sub_269424758();
}

uint64_t sub_2693E690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2693E6608(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2693E6938(uint64_t a1)
{
  v2 = sub_2693E6F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693E6974(uint64_t a1)
{
  v2 = sub_2693E6F24();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriTranslationModels.encode(to:)()
{
  OUTLINED_FUNCTION_35_0();
  v66 = v2;
  v64 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA80, &qword_2694264A0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v62 = v8;
  v63 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38();
  v61 = v12;
  v59 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v13 = OUTLINED_FUNCTION_4_5(v59);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_5();
  v60 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA88, &qword_2694264A8);
  v19 = OUTLINED_FUNCTION_2(v18);
  v57 = v20;
  v58 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_52();
  v56 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(v24);
  v25 = OUTLINED_FUNCTION_4_5(v56);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_5();
  v30 = v29 - v28;
  v31 = type metadata accessor for SiriTranslationModels(0);
  v32 = OUTLINED_FUNCTION_4_5(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_51();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA90, &qword_2694264B0);
  OUTLINED_FUNCTION_2(v65);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v39);
  v41 = &v55 - v40;
  v43 = *(v5 + 24);
  v42 = *(v5 + 32);
  OUTLINED_FUNCTION_20_3();
  sub_2693E6E1C();
  sub_269424788();
  sub_2693E4A0C(v64, v3, type metadata accessor for SiriTranslationModels);
  v44 = (v36 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v60;
    sub_2693E6EC4(v3, v60, type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel);
    sub_2693E6E70();
    v46 = v61;
    v47 = v65;
    sub_269424618();
    OUTLINED_FUNCTION_15_4();
    sub_2693E3ED4(v48);
    v49 = v63;
    sub_269424648();
    (*(v62 + 8))(v46, v49);
    OUTLINED_FUNCTION_16_4();
    sub_2693E4A6C(v45, v50);
    (*v44)(v41, v47);
  }

  else
  {
    sub_2693E6EC4(v3, v30, type metadata accessor for SiriTranslationModels.SiriTranslationResultModel);
    sub_2693E6F24();
    v51 = v65;
    sub_269424618();
    OUTLINED_FUNCTION_19_3();
    sub_2693E3ED4(v52);
    v53 = v58;
    sub_269424648();
    (*(v57 + 8))(v0, v53);
    OUTLINED_FUNCTION_18_4();
    sub_2693E4A6C(v30, v54);
    (*v44)(v41, v51);
  }

  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_2693E6E1C()
{
  result = qword_28030FA98;
  if (!qword_28030FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FA98);
  }

  return result;
}

unint64_t sub_2693E6E70()
{
  result = qword_28030FAA0;
  if (!qword_28030FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FAA0);
  }

  return result;
}

uint64_t sub_2693E6EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2693E6F24()
{
  result = qword_28030FAB0;
  if (!qword_28030FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FAB0);
  }

  return result;
}

void SiriTranslationModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35_0();
  a23 = v26;
  a24 = v27;
  v107 = v24;
  v29 = v28;
  v98 = v30;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAC0, &qword_2694264B8);
  OUTLINED_FUNCTION_2(v106);
  v101 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_38();
  v103 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAC8, &qword_2694264C0);
  v37 = OUTLINED_FUNCTION_2(v36);
  v99 = v38;
  v100 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_38();
  v102 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAD0, &qword_2694264C8);
  v44 = OUTLINED_FUNCTION_2(v43);
  v104 = v45;
  v105 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_29_0();
  v49 = type metadata accessor for SiriTranslationModels(0);
  v50 = OUTLINED_FUNCTION_4_5(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_10();
  v55 = v53 - v54;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v94 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v94 - v60;
  v62 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_2693E6E1C();
  OUTLINED_FUNCTION_49();
  v63 = v107;
  sub_269424778();
  if (v63)
  {
    goto LABEL_8;
  }

  v94 = v55;
  v95 = v59;
  v64 = v105;
  v96 = v61;
  v97 = v49;
  v107 = v29;
  v65 = sub_269424608();
  v69 = sub_2693E75BC(v65, 0);
  if (v67 == v68 >> 1)
  {
LABEL_7:
    v79 = v97;
    v80 = sub_2694244D8();
    swift_allocError();
    v82 = v81;
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FAD8, &qword_2694264D0) + 48);
    *v82 = v79;
    sub_2694245C8();
    sub_2694244C8();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84160], v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = OUTLINED_FUNCTION_23_1();
    v85(v84, v64);
    v29 = v107;
LABEL_8:
    v86 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_33_0();
    return;
  }

  if (v67 < (v68 >> 1))
  {
    a10 = *(v66 + v67);
    sub_2693E7604(v67 + 1, v68 >> 1, v69, v66, v67, v68);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    if (v71 == v73 >> 1)
    {
      v74 = v64;
      if (a10)
      {
        a14 = 1;
        sub_2693E6E70();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.DisambiguationResultViewCodingKeys, &a14);
        v75 = v96;
        type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
        OUTLINED_FUNCTION_15_4();
        sub_2693E3ED4(v76);
        v77 = v94;
        OUTLINED_FUNCTION_53();
        v78 = v104;
        swift_unknownObjectRelease();
        v88 = OUTLINED_FUNCTION_24_0();
        v89(v88);
        (*(v78 + 8))(v25, v74);
      }

      else
      {
        a13 = 0;
        sub_2693E6F24();
        OUTLINED_FUNCTION_48(&type metadata for SiriTranslationModels.TranslationResultViewCodingKeys, &a13);
        v75 = v96;
        type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
        OUTLINED_FUNCTION_19_3();
        sub_2693E3ED4(v87);
        v77 = v95;
        OUTLINED_FUNCTION_53();
        swift_unknownObjectRelease();
        v90 = OUTLINED_FUNCTION_24_0();
        v91(v90);
        v92 = OUTLINED_FUNCTION_23_1();
        v93(v92, v74);
      }

      swift_storeEnumTagMultiPayload();
      sub_2693E6EC4(v77, v75, type metadata accessor for SiriTranslationModels);
      sub_2693E6EC4(v75, v98, type metadata accessor for SiriTranslationModels);
      v86 = v107;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2693E75BC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2693E7604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_2693E788C()
{
  result = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2693E7970()
{
  sub_2693E7D4C(319, &qword_28030FB28);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2693E815C(319, &qword_28030FB30, &qword_280310140, &qword_269427110);
    if (v4 > 0x3F)
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

uint64_t sub_2693E7A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  v7 = OUTLINED_FUNCTION_36_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    v12 = OUTLINED_FUNCTION_36_0(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
      v14 = *(a3 + 28);
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_2693E7B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A0, &qword_269426450);
  v9 = OUTLINED_FUNCTION_36_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
    v14 = OUTLINED_FUNCTION_36_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F9A8, &qword_269426458);
      v16 = *(a4 + 28);
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_2693E7C54()
{
  sub_2693E815C(319, &qword_28030FB48, &qword_28030F998, &unk_269427590);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2693E7D4C(319, &qword_28030FB28);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2693E7D4C(319, &qword_28030FB50);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2693E7D4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269422DE8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2693E7DAC()
{
  OUTLINED_FUNCTION_37_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2693E7E10()
{
  OUTLINED_FUNCTION_37_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_2693E7E64()
{
  sub_2693E7D4C(319, &qword_28030FB28);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_37_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_36_0(v14);
  if (*(v16 + 84) == v7)
  {
    v17 = v15;
    v18 = v8;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v18 = v8 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v18, v7, v17);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_37_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v17 = OUTLINED_FUNCTION_36_0(v16);
  if (*(v18 + 84) == a3)
  {
    v19 = v17;
    v20 = v9;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v20 = v9 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v20, v8, v8, v19);
}

void sub_2693E80B0()
{
  sub_2693E815C(319, &qword_28030FB78, &qword_28030FA28, &qword_269426480);
  if (v0 <= 0x3F)
  {
    sub_2693E7D4C(319, &qword_28030FB28);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2693E815C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269422DE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2693E81F4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_46(a1);
}

_BYTE *sub_2693E8240(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2693E82DCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SiriTranslationDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E83E0);
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

uint64_t getEnumTagSinglePayload for TranslationNLIntent.TranslationPhraseReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
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

_BYTE *sub_2693E84A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E856CLL);
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

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SiriTranslationResultModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SiriTranslationResultModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E86F8);
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

uint64_t getEnumTagSinglePayload for SiriTranslationModels.SnippetTranslationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriTranslationModels.SnippetTranslationItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2693E8884);
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

unint64_t sub_2693E88C0()
{
  result = qword_28030FB80;
  if (!qword_28030FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB80);
  }

  return result;
}

unint64_t sub_2693E8918()
{
  result = qword_28030FB88;
  if (!qword_28030FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB88);
  }

  return result;
}

unint64_t sub_2693E8970()
{
  result = qword_28030FB90;
  if (!qword_28030FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB90);
  }

  return result;
}

unint64_t sub_2693E89C8()
{
  result = qword_28030FB98;
  if (!qword_28030FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FB98);
  }

  return result;
}

unint64_t sub_2693E8A20()
{
  result = qword_28030FBA0;
  if (!qword_28030FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBA0);
  }

  return result;
}

unint64_t sub_2693E8A78()
{
  result = qword_28030FBA8;
  if (!qword_28030FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBA8);
  }

  return result;
}

unint64_t sub_2693E8AD0()
{
  result = qword_28030FBB0;
  if (!qword_28030FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBB0);
  }

  return result;
}

unint64_t sub_2693E8B28()
{
  result = qword_28030FBB8;
  if (!qword_28030FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBB8);
  }

  return result;
}

unint64_t sub_2693E8B80()
{
  result = qword_28030FBC0;
  if (!qword_28030FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBC0);
  }

  return result;
}

unint64_t sub_2693E8BD8()
{
  result = qword_28030FBC8;
  if (!qword_28030FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBC8);
  }

  return result;
}

unint64_t sub_2693E8C30()
{
  result = qword_28030FBD0;
  if (!qword_28030FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBD0);
  }

  return result;
}

unint64_t sub_2693E8C88()
{
  result = qword_28030FBD8;
  if (!qword_28030FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBD8);
  }

  return result;
}

unint64_t sub_2693E8CE0()
{
  result = qword_28030FBE0;
  if (!qword_28030FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBE0);
  }

  return result;
}

unint64_t sub_2693E8D38()
{
  result = qword_28030FBE8;
  if (!qword_28030FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBE8);
  }

  return result;
}

unint64_t sub_2693E8D90()
{
  result = qword_28030FBF0;
  if (!qword_28030FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBF0);
  }

  return result;
}

unint64_t sub_2693E8DE8()
{
  result = qword_28030FBF8;
  if (!qword_28030FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FBF8);
  }

  return result;
}

unint64_t sub_2693E8E40()
{
  result = qword_28030FC00;
  if (!qword_28030FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC00);
  }

  return result;
}

unint64_t sub_2693E8E98()
{
  result = qword_28030FC08;
  if (!qword_28030FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC08);
  }

  return result;
}

unint64_t sub_2693E8EF0()
{
  result = qword_28030FC10;
  if (!qword_28030FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC10);
  }

  return result;
}

unint64_t sub_2693E8F48()
{
  result = qword_28030FC18;
  if (!qword_28030FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC18);
  }

  return result;
}

unint64_t sub_2693E8FA0()
{
  result = qword_28030FC20;
  if (!qword_28030FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FC20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  result = v0;
  v3 = *(v1 - 208);
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_9_4()
{
  *(v1 - 144) = v0;
  v2 = *(v1 - 208);
  v3 = *(*(v1 - 216) + 8);
  return *(v1 - 160);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_269422DC8();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return sub_269422DB8();
}

uint64_t OUTLINED_FUNCTION_41()
{
  result = *(v0 - 184);
  v2 = *(*(v0 - 176) + 8);
  v3 = *(v0 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_42()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t result)
{
  v2 = *(result + 20);
  *(v1 - 66) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_44()
{
  v2 = *(v0 - 160);

  return sub_2694245F8();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_2694245F8();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_269424648();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return sub_269424738();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{

  return MEMORY[0x2821CB228](v1, a1);
}

uint64_t sub_2693E94EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
  if (qword_28030F0B0 != -1)
  {
    swift_once();
  }

  v4 = sub_269423FC8();
  v5 = __swift_project_value_buffer(v4, qword_280314ED0);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction) = 0;
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction) = 0;
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_translationApiClient) = a1;
  return v1;
}

uint64_t sub_2693E95C0(_DWORD *a1)
{
  v3 = v2;
  v160 = a1;
  v157 = sub_269423418();
  v4 = OUTLINED_FUNCTION_2(v157);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_269423448();
  v11 = OUTLINED_FUNCTION_2(v162);
  v159 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v152 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v153 = v17;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  v154 = v19;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39();
  v156 = v21;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v146 - v23;
  v25 = sub_269423458();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v33 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39();
  v158 = v34;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v35);
  v163 = &v146 - v36;
  v37 = sub_269423FA8();
  v38 = sub_269424368();
  v39 = OUTLINED_FUNCTION_15_0(v38);
  v161 = v28;
  if (v39)
  {
    v40 = OUTLINED_FUNCTION_12_0();
    *v40 = 0;
    _os_log_impl(&dword_2693C9000, v37, v1, "On input.", v40, 2u);
    v28 = v161;
    OUTLINED_FUNCTION_6_0();
  }

  v41 = v163;
  v42 = v160;
  sub_269423408();
  if ((*(v28 + 88))(v41, v25) != *MEMORY[0x277D5C150])
  {
    goto LABEL_15;
  }

  v148 = v6;
  v155 = v3;
  v43 = v158;
  (*(v28 + 16))(v158, v41, v25);
  v44 = *(v28 + 96);
  v151 = v25;
  v44(v43, v25);
  v149 = *(v159 + 16);
  v150 = v159 + 16;
  v149(v24, v43, v162);
  v45 = sub_269423428();
  v47 = v46;
  v165 = 0xD00000000000002BLL;
  v166 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
  if (v45 == v165 && v47 == v166)
  {
  }

  else
  {
    v49 = sub_269424688();

    if ((v49 & 1) == 0)
    {
      v50 = v159;
      v51 = *(v159 + 8);
      v52 = v162;
      v154 = v159 + 8;
      v147 = v51;
      v51(v24, v162);
      (*(v50 + 32))(v153, v158, v52);
      v53 = sub_269423428();
      v55 = v54;
      v165 = 0xD00000000000002BLL;
      v166 = 0x80000002694296D0;
      MEMORY[0x26D63BD80](46, 0xE100000000000000);
      MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
      if (v53 == v165 && v55 == v166)
      {

        v58 = v156;
      }

      else
      {
        v57 = sub_269424688();

        v58 = v156;
        if ((v57 & 1) == 0)
        {
          v147(v153, v162);
          v25 = v151;
          v42 = v160;
          v6 = v148;
LABEL_15:
          v59 = *(v6 + 16);
          v60 = v10;
          v61 = v10;
          v62 = v6;
          v63 = v157;
          v59(v60, v42, v157);
          v64 = sub_269423FA8();
          v65 = sub_269424378();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = v63;
            v67 = OUTLINED_FUNCTION_17_0();
            v68 = OUTLINED_FUNCTION_16_0();
            v165 = v68;
            *v67 = 136315138;
            sub_269423408();
            v69 = sub_269424128();
            v71 = v70;
            (*(v62 + 8))(v61, v66);
            v72 = sub_2693DB6E0(v69, v71, &v165);

            *(v67 + 4) = v72;
            _os_log_impl(&dword_2693C9000, v64, v65, "Parse is of unexpected type: %s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {

            (*(v62 + 8))(v61, v63);
          }

          v73 = 0;
LABEL_19:
          v74 = v161;
          goto LABEL_32;
        }
      }

      v109 = sub_269423FA8();
      v110 = sub_269424368();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v111);
        _os_log_impl(&dword_2693C9000, v109, v110, "Parse is StopSpeakAction DI.", v33, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v112 = v153;
      v113 = v162;
      v114 = v149;
      v149(v58, v153, v162);
      v115 = sub_2693EA8EC(v58);
      v116 = v152;
      if (v115)
      {
        v117 = v115;
        v118 = *(v155 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction);
        *(v155 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction) = v115;
        swift_retain_n();

        v119 = sub_269423FA8();
        v120 = sub_269424368();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = v112;
          v122 = OUTLINED_FUNCTION_17_0();
          v123 = v113;
          v124 = OUTLINED_FUNCTION_16_0();
          v164 = v117;
          v165 = v124;
          *v122 = 136315138;
          type metadata accessor for StopSpeakAction();

          v125 = sub_269424128();
          v127 = sub_2693DB6E0(v125, v126, &v165);

          *(v122 + 4) = v127;
          _os_log_impl(&dword_2693C9000, v119, v120, "Got StopSpeakAction %s", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v124);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v128 = v121;
          v129 = v123;
        }

        else
        {

          v128 = v112;
          v129 = v113;
        }

        v147(v128, v129);
        v73 = 1;
      }

      else
      {
        v114(v152, v112, v113);
        v130 = v114;
        v131 = sub_269423FA8();
        v132 = sub_269424378();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = OUTLINED_FUNCTION_17_0();
          v134 = OUTLINED_FUNCTION_16_0();
          v135 = v130;
          v136 = v112;
          v137 = v134;
          v165 = v134;
          *v133 = 136315138;
          v135(v58, v116, v113);
          OUTLINED_FUNCTION_24_1();
          v138 = v113;
          v139 = sub_269424128();
          v140 = v116;
          v142 = v141;
          v143 = v147;
          v147(v140, v138);
          v144 = sub_2693DB6E0(v139, v142, &v165);

          *(v133 + 4) = v144;
          _os_log_impl(&dword_2693C9000, v131, v132, "DI object isn't a StopSpeakAction: %s", v133, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v137);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v143(v136, v138);
        }

        else
        {

          v145 = v147;
          v147(v116, v113);
          v145(v112, v113);
        }

        v73 = 0;
      }

      v25 = v151;
      goto LABEL_19;
    }
  }

  v75 = sub_269423FA8();
  v76 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v76))
  {
    v77 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v77);
    OUTLINED_FUNCTION_3_5(&dword_2693C9000, v78, v79, "Parse is SpeakAction DI.");
    OUTLINED_FUNCTION_4_1();
  }

  v80 = v156;
  v81 = v162;
  v82 = v149;
  v149(v156, v24, v162);
  v83 = sub_2693EA5C4(v80);
  v74 = v161;
  v84 = v154;
  if (v83)
  {
    v85 = v83;
    v86 = *(v155 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction);
    *(v155 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction) = v83;
    swift_retain_n();

    v87 = sub_269423FA8();
    v88 = sub_269424368();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = OUTLINED_FUNCTION_17_0();
      v90 = OUTLINED_FUNCTION_16_0();
      v164 = v85;
      v165 = v90;
      *v89 = 136315138;
      type metadata accessor for SpeakAction();

      v91 = sub_269424128();
      v93 = sub_2693DB6E0(v91, v92, &v165);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_2693C9000, v87, v88, "Got SpeakAction %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      v81 = v162;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v106 = *(v159 + 8);
    v107 = OUTLINED_FUNCTION_24_1();
    v106(v107);
    v25 = v151;
    (v106)(v158, v81);
    v73 = 1;
  }

  else
  {
    v82(v154, v24, v81);
    v94 = v82;
    v95 = sub_269423FA8();
    v96 = sub_269424378();
    if (OUTLINED_FUNCTION_12_4(v96))
    {
      v97 = OUTLINED_FUNCTION_17_0();
      v160 = v97;
      v98 = OUTLINED_FUNCTION_16_0();
      v165 = v98;
      *v97 = 136315138;
      v94(v80, v84, v162);
      v99 = sub_269424128();
      LODWORD(v157) = v96;
      v101 = v100;
      v102 = *(v159 + 8);
      v102(v84, v162);
      v103 = sub_2693DB6E0(v99, v101, &v165);

      v104 = v160;
      *(v160 + 1) = v103;
      _os_log_impl(&dword_2693C9000, v95, v157, "DI object isn't a SpeakAction: %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      v81 = v162;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v102 = *(v159 + 8);
      v102(v84, v81);
    }

    v105 = OUTLINED_FUNCTION_24_1();
    (v102)(v105);
    v102(v158, v81);
    v73 = 0;
    v25 = v151;
  }

LABEL_32:
  (*(v74 + 8))(v163, v25);
  return v73;
}

id sub_2693EA2B0(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = sub_269423428();
  v4 = v3;
  type metadata accessor for TranslateAction();
  v25 = 0xD00000000000002BLL;
  v26 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
  if (v2 == 0xD00000000000002BLL && v4 == v26)
  {
  }

  else
  {
    v6 = sub_269424688();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (!sub_269423438())
  {
    sub_2694240B8();
  }

  v7 = objc_opt_self();
  v8 = sub_269424098();

  v25 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v25];

  v10 = v25;
  if (!v9)
  {
    v17 = v10;
    v18 = sub_269422C48();

    swift_willThrow();
LABEL_13:
    v19 = sub_269423448();
    OUTLINED_FUNCTION_8_3(v19);
    (*(v20 + 8))(a1);
    result = 0;
    goto LABEL_14;
  }

  v11 = sub_269422CB8();
  v13 = v12;

  v14 = sub_269422B78();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_269422B68();
  sub_2693ED1B4(&qword_28030FC60, type metadata accessor for TranslateAction);
  sub_269422B58();
  v22 = sub_269423448();
  OUTLINED_FUNCTION_8_3(v22);
  (*(v23 + 8))(a1);

  sub_2693D6C54(v11, v13);
  result = v25;
LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2693EA5C4(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = sub_269423428();
  v4 = v3;
  type metadata accessor for SpeakAction();
  v23 = 0xD00000000000002BLL;
  v24 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
  if (v2 == 0xD00000000000002BLL && v4 == v24)
  {
  }

  else
  {
    v6 = sub_269424688();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (!sub_269423438())
  {
    sub_2694240B8();
  }

  v7 = objc_opt_self();
  v8 = sub_269424098();

  v23 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v23];

  v10 = v23;
  if (!v9)
  {
    v17 = v10;
    v18 = sub_269422C48();

    swift_willThrow();
LABEL_13:
    v19 = sub_269423448();
    (*(*(v19 - 8) + 8))(a1, v19);
    result = 0;
    goto LABEL_14;
  }

  v11 = sub_269422CB8();
  v13 = v12;

  v14 = sub_269422B78();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_269422B68();
  sub_2693ED1B4(&qword_28030F570, type metadata accessor for SpeakAction);
  sub_269422B58();
  v21 = sub_269423448();
  (*(*(v21 - 8) + 8))(a1, v21);

  sub_2693D6C54(v11, v13);
  result = v23;
LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2693EA8EC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = sub_269423428();
  v4 = v3;
  type metadata accessor for StopSpeakAction();
  v23 = 0xD00000000000002BLL;
  v24 = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
  if (v2 == 0xD00000000000002BLL && v4 == v24)
  {
  }

  else
  {
    v6 = sub_269424688();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (!sub_269423438())
  {
    sub_2694240B8();
  }

  v7 = objc_opt_self();
  v8 = sub_269424098();

  v23 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v23];

  v10 = v23;
  if (!v9)
  {
    v17 = v10;
    v18 = sub_269422C48();

    swift_willThrow();
LABEL_13:
    v19 = sub_269423448();
    (*(*(v19 - 8) + 8))(a1, v19);
    result = 0;
    goto LABEL_14;
  }

  v11 = sub_269422CB8();
  v13 = v12;

  v14 = sub_269422B78();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_269422B68();
  sub_2693ED1B4(&qword_28030FC58, type metadata accessor for StopSpeakAction);
  sub_269422B58();
  v21 = sub_269423448();
  (*(*(v21 - 8) + 8))(a1, v21);

  sub_2693D6C54(v11, v13);
  result = v23;
LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2693EAC18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2693EAC38, 0, 0);
}

uint64_t sub_2693EAC38()
{
  v44 = v0;
  v1 = v0[3];
  v0[4] = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_5(&dword_2693C9000, v5, v6, "Execute Async.");
    OUTLINED_FUNCTION_4_1();
  }

  v7 = v0[3];

  v8 = *(v7 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction);
  v0[5] = v8;
  if (v8)
  {

    v9 = sub_269423FA8();
    v10 = sub_269424368();
    if (OUTLINED_FUNCTION_12_4(v10))
    {
      v11 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = v8[2];
      v13 = v8[3];

      v14 = sub_2693DB6E0(v12, v13, &v43);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = v8[4];
      v16 = v8[5];

      v17 = sub_2693DB6E0(v15, v16, &v43);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_2693C9000, v9, v10, "Target Language: %s. Phrase: %s", v11, 0x16u);
      OUTLINED_FUNCTION_15_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
    }

    v18 = v0[3];
    v19 = swift_task_alloc();
    v0[6] = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v8;
    v20 = *(MEMORY[0x277D85A40] + 4);
    v21 = swift_task_alloc();
    v0[7] = v21;
    *v21 = v0;
    v21[1] = sub_2693EB008;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    v22 = v0[3];
    if (*(v22 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction))
    {
      v23 = *(v22 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction);

      v24 = sub_269423FA8();
      v25 = sub_269424368();
      if (OUTLINED_FUNCTION_12_4(v25))
      {
        *OUTLINED_FUNCTION_12_0() = 0;
        OUTLINED_FUNCTION_25_1(&dword_2693C9000, v26, v27, "Executing stop speak request.");
        OUTLINED_FUNCTION_6_0();
      }

      v28 = v0[3];

      v29 = *(v28 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_translationApiClient);

      sub_2693D4E70();

      v30 = sub_269423FA8();
      v31 = sub_269424368();
      if (OUTLINED_FUNCTION_12_4(v31))
      {
        *OUTLINED_FUNCTION_12_0() = 0;
        OUTLINED_FUNCTION_25_1(&dword_2693C9000, v32, v33, "Speak request executed.");
        OUTLINED_FUNCTION_6_0();
      }

      v34 = v0[2];

      sub_269423148();
    }

    else
    {
      v35 = sub_269423FA8();
      v36 = sub_269424378();
      if (OUTLINED_FUNCTION_15_0(v36))
      {
        v37 = OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_20_0(v37);
        OUTLINED_FUNCTION_3_5(&dword_2693C9000, v38, v39, "All available actions are null.");
        OUTLINED_FUNCTION_4_1();
      }

      v40 = v0[2];

      sub_269423148();
    }

    OUTLINED_FUNCTION_4_6();

    return v41();
  }
}

uint64_t sub_2693EB008()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_2693EB1C8;
  }

  else
  {
    v8 = *(v3 + 48);

    v7 = sub_2693EB114;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2693EB114()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[3] + v0[4];
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    v4 = OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_5(&dword_2693C9000, v5, v6, "Speak request called.");
    OUTLINED_FUNCTION_4_1();
  }

  v7 = v0[5];
  v8 = v0[2];

  sub_269423148();

  OUTLINED_FUNCTION_4_6();

  return v9();
}

uint64_t sub_2693EB1C8()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0[5];
  v2 = v0[6];

  OUTLINED_FUNCTION_4_6();
  v4 = v0[8];

  return v3();
}

uint64_t sub_2693EB22C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_translationApiClient);
  v12 = a3[2];
  v18 = a3[3];
  v19 = v12;
  v13 = a3[5];
  v17 = a3[4];
  (*(v7 + 16))(&v17 - v9, a1, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v20 = 1;
  sub_2693D4578(v19, v18, v17, v13, 0x100000000, sub_2693ECE4C, v15);
}

void sub_2693EB3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v32 - v17;
  if (!qword_28030FC28 && qword_28030FC30 == 0xE000000000000000 || (sub_269424688() & 1) != 0)
  {
    v19 = sub_269423FA8();
    v20 = sub_269424378();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2693C9000, v19, v20, "Visual identifier is empty or was not properly set.", v21, 2u);
      MEMORY[0x26D63C8E0](v21, -1, -1);
    }

    sub_269424318();
  }

  else
  {
    v32[0] = a1;
    v22 = sub_269424338();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
    (*(v11 + 16))(v14, a4, v10);
    v23 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = a3;
    *(v24 + 5) = a5;
    (*(v11 + 32))(&v24[v23], v14, v10);

    sub_2693EBBE0(0, 0, v18, &unk_269427108, v24);

    v25 = sub_269423FA8();
    v26 = sub_269424368();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[2] = a2;
      v33 = v28;
      *v27 = 136315138;
      v32[1] = v32[0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v29 = sub_269424128();
      v31 = sub_2693DB6E0(v29, v30, &v33);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2693C9000, v25, v26, "Speak request executed. Error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D63C8E0](v28, -1, -1);
      MEMORY[0x26D63C8E0](v27, -1, -1);
    }
  }
}

uint64_t sub_2693EB79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2693EB7C0, 0, 0);
}

uint64_t sub_2693EB7C0()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0[4];
  v2 = v0[2];
  sub_2693EB840(*(v0[3] + 48), *(v0[3] + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  sub_269424318();
  OUTLINED_FUNCTION_4_6();

  return v3();
}

void sub_2693EB840(uint64_t a1, unint64_t a2)
{
  v4 = sub_269422D78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D633E0], v4);
  sub_269422D88();
  (*(v5 + 8))(v8, v4);

  v9 = sub_269422DF8();

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
    v11 = v9;

    v12 = sub_269423FA8();
    v13 = sub_269424368();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = a1;
      v15 = v14;
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v15 = 136315650;
      v16 = v11;
      v17 = [v16 description];
      v18 = sub_269424118();
      v31 = v10;
      v20 = v19;

      v21 = sub_2693DB6E0(v18, v20, v32);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = qword_28030FC28;
      v23 = qword_28030FC30;

      v24 = sub_2693DB6E0(v22, v23, v32);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_2693DB6E0(v29, a2, v32);
      _os_log_impl(&dword_2693C9000, v12, v13, "Constructed command: %s with viewId %s and play button id %s", v15, 0x20u);
      v25 = v30;
      swift_arrayDestroy();
      MEMORY[0x26D63C8E0](v25, -1, -1);
      MEMORY[0x26D63C8E0](v15, -1, -1);
    }

    sub_269423018();
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_269423298();
    __swift_destroy_boxed_opaque_existential_1(v32);
    v26 = sub_269423FA8();
    v27 = sub_269424368();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2693C9000, v26, v27, "Sent off the command.", v28, 2u);
      MEMORY[0x26D63C8E0](v28, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2693EBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v12 = OUTLINED_FUNCTION_12_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - v15;
  sub_2693ECAB0(a3, v30 - v15);
  v17 = sub_269424338();
  OUTLINED_FUNCTION_22_2(v17);
  if (v6 == 1)
  {
    sub_2693ECB20(v16);
  }

  else
  {
    sub_269424328();
    OUTLINED_FUNCTION_20_4();
    (*(v18 + 8))(v16, v5);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_269424308();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = sub_269424148() + 32;
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      if (v23 | v21)
      {
        v31[0] = 0;
        v31[1] = 0;
        v26 = v31;
        v31[2] = v21;
        v31[3] = v23;
      }

      else
      {
        v26 = 0;
      }

      v30[1] = 7;
      v30[2] = v26;
      v30[3] = v24;
      OUTLINED_FUNCTION_15_5();
      v28 = swift_task_create();

      sub_2693ECB20(a3);

      return v28;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2693ECB20(a3);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  if (v23 | v21)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v21;
    v31[7] = v23;
  }

  OUTLINED_FUNCTION_15_5();
  return swift_task_create();
}

uint64_t sub_2693EBE50(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;

  sub_2693EC23C(0, 0, v10, &unk_2694270E8, v12);
}

uint64_t sub_2693EBF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_269423158();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[6] = v10;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_2693EC048;

  return sub_2693EAC18(v10);
}

uint64_t sub_2693EC048()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_2693EC1E0;
  }

  else
  {
    v7 = sub_2693EC14C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2693EC14C()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693EC1E0()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_4_6();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_2693EC23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v11 = OUTLINED_FUNCTION_12_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  sub_2693ECAB0(a3, v27 - v14);
  v16 = sub_269424338();
  OUTLINED_FUNCTION_22_2(v16);
  if (v6 == 1)
  {
    sub_2693ECB20(v15);
  }

  else
  {
    sub_269424328();
    OUTLINED_FUNCTION_20_4();
    (*(v17 + 8))(v15, v5);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_269424308();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_269424148() + 32;

      if (v22 | v20)
      {
        v28[0] = 0;
        v28[1] = 0;
        v24 = v28;
        v28[2] = v20;
        v28[3] = v22;
      }

      else
      {
        v24 = 0;
      }

      v27[1] = 7;
      v27[2] = v24;
      v27[3] = v23;
      OUTLINED_FUNCTION_15_5();
      v25 = swift_task_create();

      sub_2693ECB20(a3);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2693ECB20(a3);
  if (v22 | v20)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v20;
    v28[7] = v22;
  }

  OUTLINED_FUNCTION_15_5();
  return swift_task_create();
}

uint64_t sub_2693EC458()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_8_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_speakAction);

  v5 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_stopSpeakAction);

  v6 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents9SpeakFlow_translationApiClient);

  return v0;
}

uint64_t sub_2693EC4DC()
{
  sub_2693EC458();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SpeakFlow()
{
  result = qword_28030FC40;
  if (!qword_28030FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693EC588()
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

uint64_t sub_2693EC658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2693EC708;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2693EC708()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_5();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2693EC818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2693EC8CC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2693EC8CC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693EC9B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2693EC9F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_2(v6);
  *v7 = v8;
  v7[1] = sub_2693EC8CC;
  v9 = OUTLINED_FUNCTION_5_6();

  return sub_2693EBF4C(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_2693ECAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693ECB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2693ECB98(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693ECC90;

  return v7(a1);
}

uint64_t sub_2693ECC90()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693ECD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_2693ECE4C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_2693EB3F0(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_2693ECF08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2693ECFDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803101A0, &unk_269428730);
  OUTLINED_FUNCTION_12_2(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7_2(v8);
  *v9 = v10;
  v9[1] = sub_2693EC8CC;
  v11 = OUTLINED_FUNCTION_5_6();

  return sub_2693EB79C(v11, v12, v5, v6, v7, v13);
}

uint64_t sub_2693ED0D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2693ED110()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_2(v3);
  *v4 = v5;
  v4[1] = sub_2693ED200;
  v6 = OUTLINED_FUNCTION_5_6();

  return v7(v6);
}

uint64_t sub_2693ED1B4(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_3_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_12_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_25_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2693ED31C(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_log;
  if (qword_28030F0D0 != -1)
  {
    swift_once();
  }

  v8 = sub_269423FC8();
  v9 = __swift_project_value_buffer(v8, qword_280314F30);
  (*(*(v8 - 8) + 16))(v3 + v7, v9, v8);
  *(v3 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_templatinResultProvider) = a2;
  sub_2693DBCC8(a3, v3 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_outputPublisher);
  sub_2693DBCC8(a1, v3 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState);
  return v3;
}

uint64_t sub_2693ED410()
{
  v0 = sub_269423FA8();
  v1 = sub_269424368();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2693C9000, v0, v1, "On input.", v2, 2u);
    MEMORY[0x26D63C8E0](v2, -1, -1);
  }

  return 1;
}

uint64_t sub_2693ED4B0()
{
  OUTLINED_FUNCTION_11_0();
  v1[18] = v2;
  v1[19] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
  v1[21] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = sub_269423248();
  v1[23] = v6;
  v7 = *(v6 - 8);
  v1[24] = v7;
  v8 = *(v7 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693ED5E0, 0, 0);
}

uint64_t sub_2693ED5E0()
{
  v1 = *(v0 + 152) + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2693C9000, v2, v3, "Execute Async.", v4, 2u);
    MEMORY[0x26D63C8E0](v4, -1, -1);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 152);

  sub_2693DBDF8(v6 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_outputPublisher, v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  v9 = *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_templatinResultProvider);
  sub_2693F2A8C(v5);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v0 + 136) = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
    swift_willThrowTypedImpl();
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    OUTLINED_FUNCTION_4_6();

    return v15();
  }

  else
  {
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v29 = *(v0 + 184);
    v30 = v8;
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    (*(v18 + 32))(v17, v11);
    v21 = (v19 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState);
    v23 = *(v19 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState + 24);
    v22 = *(v19 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState + 32);
    __swift_project_boxed_opaque_existential_1(v21, v23);
    sub_269423028();
    v24 = sub_2694231F8();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v24);
    v25 = sub_2694234B8();
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    v26 = MEMORY[0x277D5C1D8];
    *(v0 + 80) = v25;
    *(v0 + 88) = v26;
    __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    sub_2694230F8();
    sub_2693EE27C(v0 + 96, &qword_280310190, qword_269427220);
    sub_2693EE27C(v20, &qword_28030FC98, &qword_269427710);
    (*(v18 + 8))(v17, v29);
    v27 = *(MEMORY[0x277D5BF40] + 4);
    v28 = swift_task_alloc();
    *(v0 + 208) = v28;
    *v28 = v0;
    v28[1] = sub_2693ED93C;

    return MEMORY[0x2821BB5D0](v0 + 56, v7, v30);
  }
}

uint64_t sub_2693ED93C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  v4 = *(v2 + 208);
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    v7 = sub_2693EDAE0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
    v7 = sub_2693EDA48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2693EDA48()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_269423148();

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693EDAE0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693EDB74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2693EC23C(0, 0, v8, &unk_269427200, v10);
}

uint64_t sub_2693EDC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_269423158();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_2693EDD70;

  return sub_2693ED4B0();
}

uint64_t sub_2693EDD70()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_2693EC1E0;
  }

  else
  {
    v7 = sub_2693EDE74;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2693EDE74()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_4_6();

  return v5();
}

uint64_t sub_2693EDF0C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_8_3(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_templatinResultProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_outputPublisher));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents22SupportedLanguagesFlow_deviceState));
  return v0;
}

uint64_t sub_2693EDF90()
{
  sub_2693EDF0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SupportedLanguagesFlow()
{
  result = qword_28030FC88;
  if (!qword_28030FC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693EE03C()
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

uint64_t sub_2693EE0E4()
{
  v1 = *v0;
  sub_2693ED410();
  return 1;
}

uint64_t sub_2693EE130()
{
  type metadata accessor for SupportedLanguagesFlow();

  return sub_269422FC8();
}

uint64_t sub_2693EE16C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2693EE1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2693EC8CC;

  return sub_2693EDC74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2693EE27C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2693EE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2693FCEE8(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_269423C08();
    OUTLINED_FUNCTION_4_5(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_269423C08();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

id sub_2693EE38C()
{
  if (qword_28030F0E8 != -1)
  {
    swift_once();
  }

  v0 = qword_280314FD8;

  sub_269423468();
  v1 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentHandler());
  result = sub_2693EE41C(v0, v3);
  qword_280315010 = result;
  return result;
}

id sub_2693EE41C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  type metadata accessor for RecentInteractionUtils();
  swift_initStackObject();
  sub_2693DD7E8();
  v6 = OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_log;
  if (qword_28030F090 != -1)
  {
    swift_once();
  }

  v7 = sub_269423FC8();
  v8 = __swift_project_value_buffer(v7, qword_280314E70);
  (*(*(v7 - 8) + 16))(&v3[v6], v8, v7);
  *&v3[OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_translationApiClient] = a1;
  sub_2693DBDF8(a2, &v3[OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_deviceState]);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for TranslatePhraseIntentHandler();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

id sub_2693EF638(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_269424678();
  v3 = [swift_getObjCClassFromMetadata() resolutionResultSuccessWithResolvedValue_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_2693EF6C8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = a1;
  v5 = sub_269423FA8();
  v6 = sub_269424368();

  if (os_log_type_enabled(v5, v6))
  {
    v40 = a3;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41[0] = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_269424118();
    v13 = v12;

    v14 = sub_2693DB6E0(v11, v13, v41);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2693C9000, v5, v6, "Resolve target language for intent %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63C8E0](v8, -1, -1);
    v15 = v7;
    a3 = v40;
    MEMORY[0x26D63C8E0](v15, -1, -1);
  }

  sub_26941C104(v4);
  if (v16)
  {

    v17 = sub_26941C104(v4);
    if (!v18)
    {
      goto LABEL_34;
    }

    if (!v17 && v18 == 0xE000000000000000)
    {

      goto LABEL_18;
    }

    v19 = sub_269424688();

    if ((v19 & 1) == 0)
    {
LABEL_34:
      if (!sub_2693F0E08(v4))
      {
        sub_26941C104(v4);
        v20 = 0xE000000000000000;
        v21 = sub_2693D8BA0();
        if (v21 != 3)
        {
          v22 = v21;
          v23 = sub_26941C110(v4);
          if (v24)
          {
            v20 = v24;
          }

          else
          {
            v23 = 0;
          }

          v25 = sub_2693D8684(v23, v20, v22);

          if (v25)
          {
            v26 = sub_269423FA8();
            v27 = sub_269424368();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_2693C9000, v26, v27, "Target language refers to a language group. Need disambiguation.", v28, 2u);
              MEMORY[0x26D63C8E0](v28, -1, -1);
            }

            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_18:
  sub_26941C104(v4);
  if (v29)
  {

    v30 = sub_26941C104(v4);
    if (v31)
    {
      if (!v30 && v31 == 0xE000000000000000)
      {

        goto LABEL_24;
      }

      v32 = sub_269424688();

      if (v32)
      {
LABEL_24:
        if (sub_2693F0E08(v4))
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
    v33 = sub_26941C104(v4);
    v35 = v34;
    v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v41[0] = v33;
    v41[1] = v35;
    v36 = sub_2693EF638(v41);
    goto LABEL_29;
  }

LABEL_26:
  v26 = sub_269423FA8();
  v37 = sub_269424368();
  if (os_log_type_enabled(v26, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2693C9000, v26, v37, "Target Language needs value.", v38, 2u);
    MEMORY[0x26D63C8E0](v38, -1, -1);
  }

LABEL_28:

  sub_2693D554C(0, &qword_28030FCE8, 0x277CD4218);
  v36 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_29:
  v39 = v36;
  (a3)[2](a3, v36);

  _Block_release(a3);
}

void sub_2693F0144()
{

  oslog = sub_269423FA8();
  v0 = sub_269424368();

  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v3 = sub_269424128();
    v5 = sub_2693DB6E0(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&dword_2693C9000, oslog, v0, "Received response with error: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v2);
    MEMORY[0x26D63C8E0](v2, -1, -1);
    MEMORY[0x26D63C8E0](v1, -1, -1);
  }

  else
  {
  }
}

void sub_2693F0D7C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

BOOL sub_2693F0E08(void *a1)
{
  v2 = v1;
  v4 = sub_269423FA8();
  v5 = sub_269424368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_12_0();
    *v6 = 0;
    _os_log_impl(&dword_2693C9000, v4, v5, "Checking unsupported source language.", v6, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for NLConverter();
  v7 = sub_26940D5B8((v2 + OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_deviceState));
  if (v8)
  {
    v9 = v7 == 0x41535F7261 && v8 == 0xE500000000000000;
    if (v9 || (sub_269424688() & 1) != 0)
    {
    }
  }

  sub_26941C110(a1);
  v10 = sub_26940BCAC();
  if (v10 != 40)
  {
    v22 = v10;
    v23 = sub_26940BCAC();
    v24 = sub_269423FA8();
    v25 = sub_269424368();
    if (OUTLINED_FUNCTION_4_7(v25))
    {
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v26 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCE0, &qword_269427288);
      v27 = sub_269424128();
      v29 = sub_2693DB6E0(v27, v28, &v43);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = sub_269424128();
      v32 = sub_2693DB6E0(v30, v31, &v43);

      *(v26 + 14) = v32;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v33, v34, v35, v36, v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    if (v23 != 40)
    {
      v37 = sub_26940BD14(v23);
      v39 = v38;
      if (v37 == sub_26940BD14(v22) && v39 == v40)
      {

        return 0;
      }

      v42 = sub_269424688();

      result = 0;
      if (v42)
      {
        return result;
      }
    }

    return v23 != 40;
  }

  v11 = a1;
  v12 = sub_269423FA8();
  v13 = sub_269424368();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_17_0();
    v14 = OUTLINED_FUNCTION_3_6();
    v43 = v14;
    *v2 = 136315138;
    v15 = v11;
    v16 = [v15 description];
    sub_269424118();

    v18 = OUTLINED_FUNCTION_2_6(v17);

    *(v2 + 4) = v18;
    OUTLINED_FUNCTION_6_4(&dword_2693C9000, v19, v20, "Intent source language is nil: %s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  return 1;
}

void sub_2693F146C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_26941C0F8(a1);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_26941C104(a1);
  if (!v12)
  {
LABEL_12:

LABEL_13:
    v25 = a1;
    v26 = sub_269423FA8();
    v27 = sub_269424378();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315138;
      v30 = v25;
      v31 = [v30 description];
      v32 = sub_269424118();
      v34 = v33;

      v35 = sub_2693DB6E0(v32, v34, &v51);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_2693C9000, v26, v27, "Phrase and/or target and/or source language are missing: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26D63C8E0](v29, -1, -1);
      MEMORY[0x26D63C8E0](v28, -1, -1);
    }

    v36 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v24 = 5;
    goto LABEL_16;
  }

  v13 = v11;
  v14 = v12;
  if (!v11 && v12 == 0xE000000000000000 || (sub_269424688() & 1) != 0 || (v15 = sub_26941C110(a1), !v16))
  {

    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  v19._countAndFlagsBits = v13;
  v19._object = v14;
  if (TranslationLanguages.init(rawValue:)(v19).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {

    v20 = sub_269423FA8();
    v21 = sub_269424378();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2693C9000, v20, v21, "Requested language unsupported.", v22, 2u);
      MEMORY[0x26D63C8E0](v22, -1, -1);
    }

    v23 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v24 = 101;
  }

  else
  {
    v38 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_translationApiClient);
    if ((sub_2693D4EC8() & 1) == 0)
    {
      if ((sub_2693D32B8() & 1) == 0)
      {
        goto LABEL_28;
      }

      v43 = [a1 isProfanity];
      if (!v43)
      {
        sub_2693D554C(0, &qword_28030FCD8, 0x277CCABB0);
        v43 = sub_2694243D8();
      }

      v44 = sub_2694242D8();

      if ((v44 & 1) == 0)
      {
LABEL_28:

        v45 = sub_269423FA8();
        v46 = sub_269424358();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          log = v45;
          v48 = swift_slowAlloc();
          v51 = v48;
          *v47 = 136315394;
          *(v47 + 4) = sub_2693DB6E0(v9, v10, &v51);
          *(v47 + 12) = 1024;
          *(v47 + 14) = 0;
          _os_log_impl(&dword_2693C9000, log, v46, "Phrase %s subject to explicit language restriction: %{BOOL}d", v47, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x26D63C8E0](v48, -1, -1);
          MEMORY[0x26D63C8E0](v47, -1, -1);
        }

        else
        {
        }

        v49 = TranslationLanguages.getLocaleString()();
        sub_2693D3328(v9, v10, v49._countAndFlagsBits, v49._object, v17, v18, sub_2693F22CC, v6);

        goto LABEL_17;
      }
    }

    v39 = sub_269423FA8();
    v40 = sub_269424378();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2693C9000, v39, v40, "Explicit language is disabled. Returning error.", v41, 2u);
      MEMORY[0x26D63C8E0](v41, -1, -1);
    }

    v42 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v24 = 103;
  }

LABEL_16:
  v37 = TranslatePhraseIntentResponse.init(code:userActivity:)(v24, 0);
  (a3)[2](a3, v37);

LABEL_17:

  _Block_release(a3);
}

void sub_2693F19F0(void *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;

  v75 = a4;
  v11 = sub_26941C0F8(a1);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  v15 = sub_26941C104(a1);
  if (!v16)
  {
LABEL_12:

LABEL_13:
    v34 = a1;
    v35 = sub_269423FA8();
    v36 = sub_269424378();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_17_0();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v37 = 136315138;
      v38 = v34;
      v39 = [v38 description];
      v40 = sub_269424118();
      v41 = a3;
      v42 = a5;
      v44 = v43;

      v45 = sub_2693DB6E0(v40, v44, &v76);
      a5 = v42;
      a3 = v41;

      *(v37 + 4) = v45;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v46, v47, v48, v49, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v50 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v33 = 5;
    goto LABEL_16;
  }

  v17 = v15;
  v18 = v16;
  if (!v15 && v16 == 0xE000000000000000 || (sub_269424688() & 1) != 0 || (v19 = sub_26941C110(a1), !v20))
  {

    goto LABEL_12;
  }

  v21 = v20;
  v73 = v19;
  v22._countAndFlagsBits = v17;
  v22._object = v18;
  if (TranslationLanguages.init(rawValue:)(v22).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {

    v23 = sub_269423FA8();
    v24 = sub_269424378();
    if (OUTLINED_FUNCTION_4_7(v24))
    {
      v25 = a3;
      v26 = a5;
      v27 = OUTLINED_FUNCTION_12_0();
      *v27 = 0;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v28, v29, v30, v31, v27, 2u);
      a5 = v26;
      a3 = v25;
      OUTLINED_FUNCTION_6_0();
    }

    v32 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
    v33 = 101;
LABEL_16:
    v51 = TranslatePhraseIntentResponse.init(code:userActivity:)(v33, 0);
    v52 = v51;
    v53 = a3;
    v54 = v75;
    v55 = a5;
LABEL_17:
    sub_269404140(v51, v53, v54, v55);

    goto LABEL_18;
  }

  v72 = a5;
  v56 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents28TranslatePhraseIntentHandler_translationApiClient);
  if (sub_2693D4EC8())
  {
    goto LABEL_22;
  }

  if (sub_2693D32B8())
  {
    v65 = [a1 isProfanity];
    if (!v65)
    {
      sub_2693D554C(0, &qword_28030FCD8, 0x277CCABB0);
      v65 = sub_2694243D8();
    }

    v66 = sub_2694242D8();

    if (v66)
    {
LABEL_22:

      v57 = sub_269423FA8();
      v58 = sub_269424378();
      if (OUTLINED_FUNCTION_4_7(v58))
      {
        v59 = OUTLINED_FUNCTION_12_0();
        *v59 = 0;
        OUTLINED_FUNCTION_5_7();
        _os_log_impl(v60, v61, v62, v63, v59, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v64 = objc_allocWithZone(type metadata accessor for TranslatePhraseIntentResponse());
      v51 = TranslatePhraseIntentResponse.init(code:userActivity:)(103, 0);
      v52 = v51;
      v53 = a3;
      v54 = v75;
      v55 = v72;
      goto LABEL_17;
    }
  }

  v67 = sub_269423FA8();
  v68 = sub_269424358();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v76 = v70;
    *v69 = 136315394;
    *(v69 + 4) = sub_2693DB6E0(v13, v14, &v76);
    *(v69 + 12) = 1024;
    *(v69 + 14) = 0;
    _os_log_impl(&dword_2693C9000, v67, v68, "Phrase %s subject to explicit language restriction: %{BOOL}d", v69, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v71 = TranslationLanguages.getLocaleString()();
  sub_2693D3328(v13, v14, v71._countAndFlagsBits, v71._object, v73, v21, sub_2693F2204, v10);

LABEL_18:
}

id sub_2693F1FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslatePhraseIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TranslatePhraseIntentHandler()
{
  result = qword_28030FCC8;
  if (!qword_28030FCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693F20E4()
{
  result = sub_269423AE8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_269423FC8();
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

uint64_t sub_2693F21C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_2693F2264@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2693F2294()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2693F22E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2693DB6E0(v1, v2, va);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_4_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2693F23D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2693F23A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2693F23FC(uint64_t a1)
{
  v2 = sub_2693F26F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693F2438(uint64_t a1)
{
  v2 = sub_2693F26F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693F2498(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD18, &qword_269427380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693F26F4();
  sub_269424788();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2693F25E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2693F25AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2693F2628(void *a1)
{
  a1[1] = sub_2693F26B4(&qword_28030FC58);
  a1[2] = sub_2693F26B4(&qword_28030FD08);
  result = sub_2693F26B4(&qword_28030FD10);
  a1[3] = result;
  return result;
}

uint64_t sub_2693F26B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StopSpeakAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2693F26F4()
{
  result = qword_28030FD20;
  if (!qword_28030FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FD20);
  }

  return result;
}

unint64_t sub_2693F275C()
{
  result = qword_28030FD28;
  if (!qword_28030FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FD28);
  }

  return result;
}

unint64_t sub_2693F27B4()
{
  result = qword_28030FD30;
  if (!qword_28030FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FD30);
  }

  return result;
}

void sub_2693F2808()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_269423EB8();
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_5();
  v12 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  if (qword_28030F098 != -1)
  {
    swift_once();
  }

  v13 = sub_269423FC8();
  __swift_project_value_buffer(v13, qword_280314E88);
  OUTLINED_FUNCTION_20_5(v13);
  (*(v14 + 16))(v1 + v12);
  v15 = sub_269423CA8();
  sub_2693FD4B8(v3, &v25);
  sub_269423C88();
  sub_2693FD518(&v25, &qword_28030FDB8, &qword_2694275B0);
  v16 = objc_allocWithZone(v15);

  v17 = sub_269423C98();
  type metadata accessor for TranslateCATs();
  v18 = *(v9 + 16);
  v19 = OUTLINED_FUNCTION_68();
  v18(v19);
  v24 = v17;
  OUTLINED_FUNCTION_95();
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats) = sub_269423CD8();
  type metadata accessor for TranslateCATsSimple();
  v20 = OUTLINED_FUNCTION_68();
  v18(v20);
  OUTLINED_FUNCTION_95();
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCATsSimple) = sub_269423DD8();
  v21 = type metadata accessor for TranslateCATPatternsExecutor(0);
  v22 = OUTLINED_FUNCTION_68();
  v18(v22);
  OUTLINED_FUNCTION_95();
  v23 = sub_269423CD8();
  v26 = v21;
  v27 = &off_2879F4358;

  *&v25 = v23;
  (*(v9 + 8))(v5, v6);
  sub_2693DBCC8(&v25, v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider);
  sub_2693DBCC8(v3, v1 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_deviceState);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693F2A8C@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v3 = sub_269423DA8();
  v4 = OUTLINED_FUNCTION_2(v3);
  v101 = v5;
  v102 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_5();
  v100 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v11 = OUTLINED_FUNCTION_12_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_7();
  v97 = v14;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v15);
  v96 = v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDB0, &qword_2694275A8);
  OUTLINED_FUNCTION_12_2(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v20);
  v22 = v95 - v21;
  v23 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v104 = v1;
  v24 = sub_269423FA8();
  v25 = sub_269424368();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_33_1();
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2693C9000, v24, v25, "getSupportedLanguages", v26, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  type metadata accessor for NLConverter();
  v27 = sub_269423FC8();
  OUTLINED_FUNCTION_4_5(v27);
  (*(v28 + 16))(v22, v104 + v23, v27);
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  sub_26940D664();
  v33 = v32;
  v35 = v34;
  sub_2693FD518(v22, &qword_28030FDB0, &qword_2694275A8);
  v36 = sub_2693D737C();
  v37 = *(v36 + 16);
  v38 = MEMORY[0x277D84F90];
  v103 = v35;
  v95[1] = v33;
  v99 = v36;
  if (v37)
  {
    v39 = (v36 + 32);
    if (v35)
    {
      v40 = v35;
    }

    else
    {
      v33 = 0;
      v40 = 0xE000000000000000;
    }

    do
    {
      v42 = *v39++;
      v41 = v42;

      v43 = sub_2693D7A2C(v33, v40, v42);

      if (v43)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26941F7F4(0, *(v38 + 16) + 1, 1);
          v38 = v105;
        }

        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        v2 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v47 = OUTLINED_FUNCTION_32_1(v45);
          sub_26941F7F4(v47, v46 + 1, 1);
          v38 = v105;
        }

        *(v38 + 16) = v2;
        *(v38 + v46 + 32) = v41;
      }

      --v37;
    }

    while (v37);
  }

  v48 = *(v38 + 16);
  if (v48)
  {
    v105 = MEMORY[0x277D84F90];
    sub_26941F7D4(0, v48, 0);
    v49 = 32;
    v50 = v105;
    do
    {
      *(v38 + v49);
      OUTLINED_FUNCTION_27_1();
      v51 = v104;
      sub_2693F66D4();
      OUTLINED_FUNCTION_80();

      if (v2)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      if (!v2)
      {
        v2 = 0xE000000000000000;
      }

      v105 = v50;
      v54 = *(v50 + 16);
      v53 = *(v50 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = OUTLINED_FUNCTION_32_1(v53);
        sub_26941F7D4(v56, v54 + 1, 1);
        v50 = v105;
      }

      *(v50 + 16) = v54 + 1;
      v55 = v50 + 16 * v54;
      *(v55 + 32) = v52;
      *(v55 + 40) = v2;
      ++v49;
      --v48;
    }

    while (v48);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v57 = v100;
  if (*(v50 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2693FD15C(v50);
      v50 = v94;
    }

    v58 = *(v50 + 16);
    if (!v58)
    {
      __break(1u);
      JUMPOUT(0x2693F3274);
    }

    v59 = v58 - 1;
    v60 = v50 + 16 * (v58 - 1);
    v61 = *(v60 + 32);
    v62 = *(v60 + 40);
    *(v50 + 16) = v59;
    if (v59)
    {
      v95[0] = v62;
      v99 = v61;
      v105 = MEMORY[0x277D84F90];
      sub_26941F77C();
      v63 = v105;
      v64 = (v50 + 40);
      do
      {
        v66 = *(v64 - 1);
        v65 = *v64;

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        v105 = v63;
        v67 = v57;
        v69 = *(v63 + 16);
        v68 = *(v63 + 24);
        if (v69 >= v68 >> 1)
        {
          OUTLINED_FUNCTION_32_1(v68);
          sub_26941F77C();
          v63 = v105;
        }

        *(v63 + 16) = v69 + 1;
        v70 = *(v101 + 80);
        OUTLINED_FUNCTION_93();
        (*(v72 + 32))(v63 + v71 + *(v72 + 72) * v69, v67);
        v64 += 2;
        --v59;
        v57 = v67;
      }

      while (v59);
    }

    v76 = *(v104 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();

    v77 = v96;
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    v78 = v102;
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v102);
    sub_26941CF28();
    v83 = v82;

    v84 = v97;
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v78);
    sub_26940A9D0(v77, v83, v84);

    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v88, v89, v90);
    OUTLINED_FUNCTION_57_0();
    return sub_2693FD518(v91, v92, v93);
  }

  else
  {

    sub_2693FD35C();
    OUTLINED_FUNCTION_99();
    v73 = swift_allocError();
    *v74 = 3;
    *v98 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_2693F32D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_2693F32E4()
{
  OUTLINED_FUNCTION_103();
  v15 = v1;
  OUTLINED_FUNCTION_58();
  v3 = v0[2];
  v2 = v0[3];
  sub_26941C104(v3);
  sub_26941C0F8(v3);
  OUTLINED_FUNCTION_88();
  v4 = *(v2 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCATsSimple);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_269427440;
  *(v5 + 32) = 0x657361726870;
  *(v5 + 40) = 0xE600000000000000;
  v6 = sub_269423DA8();
  *(v5 + 72) = v6;
  __swift_allocate_boxed_opaque_existential_0((v5 + 48));
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  strcpy((v5 + 80), "targetLanguage");
  *(v5 + 95) = -18;

  v7._countAndFlagsBits = OUTLINED_FUNCTION_94();
  if (TranslationLanguages.init(rawValue:)(v7).value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    TranslationLanguages.getLocaleString()();
  }

  v8 = v0[3];
  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v10 = v9;

  if (v10)
  {
  }

  *(v5 + 120) = v6;
  __swift_allocate_boxed_opaque_existential_0((v5 + 96));
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55C70]);
  v14 = v11;
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_2693F34FC;

  return v14(0xD000000000000027, 0x8000000269429E20, v5);
}

uint64_t sub_2693F34FC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 40);
  *v4 = *v1;
  v3[6] = v7;
  v3[7] = v0;

  if (!v0)
  {
    v8 = v3[4];
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2693F3604()
{
  OUTLINED_FUNCTION_23_2();
  v1 = [*(v0 + 48) dialog];
  v2 = sub_2693FD1B0();
  OUTLINED_FUNCTION_29();
  v3 = sub_269424288();

  if (sub_26941C9D4(v3))
  {
    sub_26942008C(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D63C060](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_269427450;
    *(v7 + 32) = v5;
    v8 = v5;
    OUTLINED_FUNCTION_34_1();
    sub_269424278();
    OUTLINED_FUNCTION_97();

    [v6 setDialog_];
  }

  else
  {
  }

  OUTLINED_FUNCTION_71();
  v10 = *(v0 + 48);

  return v9(v10);
}

uint64_t sub_2693F375C()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_4_6();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_2693F37B8()
{
  OUTLINED_FUNCTION_11_0();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = sub_269422D18();
  v1[27] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[28] = v6;
  v8 = *(v7 + 64);
  v1[29] = OUTLINED_FUNCTION_82();
  v9 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v1[30] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[31] = v10;
  v12 = *(v11 + 64);
  v1[32] = OUTLINED_FUNCTION_69();
  v1[33] = swift_task_alloc();
  v13 = sub_2694233D8();
  v1[34] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[35] = v14;
  v16 = *(v15 + 64);
  v1[36] = OUTLINED_FUNCTION_82();
  v17 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2693F3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v13 = v12;
  OUTLINED_FUNCTION_10_5();
  v15 = v14;
  OUTLINED_FUNCTION_8_4();
  *v16 = v15;
  v18 = *(v17 + 376);
  v19 = *v11;
  OUTLINED_FUNCTION_9_0();
  *v20 = v19;

  if (v10)
  {
    v21 = v15[46];
    v23 = v15[42];
    v22 = v15[43];
    v24 = v15[40];
    v26 = v15[37];
    v25 = v15[38];

    v27 = v15[36];
    v29 = v15[32];
    v28 = v15[33];
    v30 = v15[29];

    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_73();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  else
  {
    v15[48] = v13;
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_73();

    return MEMORY[0x2822009F8](v40, v41, v42);
  }
}

void sub_2693F3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_62();
  a20 = v22;
  v25 = *(v22 + 384);
  v26 = [v25 dialog];

  sub_2693FD1B0();
  v27 = sub_269424288();

  if (sub_26941C9D4(v27))
  {
    sub_26942008C(0, (v27 & 0xC000000000000001) == 0, v27);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D63C060](0, v27);
    }

    else
    {
      v28 = *(v27 + 32);
    }

    v29 = v28;

    v30 = [v29 fullPrint];

    v31 = sub_269424118();
    v33 = v32;
  }

  else
  {

    v31 = 0;
    v33 = 0;
  }

  *(v22 + 392) = v31;
  *(v22 + 400) = v33;
  v34 = *(v22 + 208);
  *(v22 + 408) = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v35 = sub_269423FA8();
  v36 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v36))
  {
    OUTLINED_FUNCTION_33_1();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v37);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v43 = *(v22 + 336);

  v44 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_110();
  v45 = OUTLINED_FUNCTION_84();
  v46 = *(v22 + 336);
  if (v45)
  {
    v47 = *(v22 + 328);
    v48 = OUTLINED_FUNCTION_17_0();
    v49 = OUTLINED_FUNCTION_16_0();
    a11 = v49;
    *v48 = 136315138;
    v50 = sub_2693DB6E0(v47, v46, &a11);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_2693C9000, v44, v33, "TranslatedText. %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  else
  {
  }

  v51 = sub_269423FA8();
  v52 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v52))
  {
    v53 = *(v22 + 465);
    OUTLINED_FUNCTION_17_0();
    v54 = OUTLINED_FUNCTION_3_6();
    a11 = v54;
    *v46 = 136315138;
    TranslationLanguages.rawValue.getter(v53);
    v57 = sub_2693DB6E0(v55, v56, &a11);

    *(v46 + 4) = v57;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v63 = *(v22 + 344);

  v64 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_110();
  if (OUTLINED_FUNCTION_84())
  {
    v66 = *(v22 + 344);
    v65 = *(v22 + 352);
    OUTLINED_FUNCTION_17_0();
    v67 = OUTLINED_FUNCTION_3_6();
    a11 = v67;
    *v63 = 136315138;
    OUTLINED_FUNCTION_72();
    v68 = sub_269424178();
    v70 = sub_2693DB6E0(v68, v69, &a11);

    *(v63 + 4) = v70;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v76 = *(v22 + 368);

  v77 = sub_269423FA8();
  sub_269424368();
  OUTLINED_FUNCTION_110();
  if (OUTLINED_FUNCTION_84())
  {
    v79 = *(v22 + 360);
    v78 = *(v22 + 368);
    OUTLINED_FUNCTION_17_0();
    v80 = OUTLINED_FUNCTION_3_6();
    a11 = v80;
    *v76 = 136315138;
    OUTLINED_FUNCTION_94();
    v81 = sub_269424178();
    v83 = sub_2693DB6E0(v81, v82, &a11);

    *(v76 + 4) = v83;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v89 = *(v22 + 288);
  v90 = *(v22 + 200);
  v91 = *(v22 + 208);
  v92 = *(v22 + 465);
  sub_2694233C8();
  TranslationLanguages.rawValue.getter(v92);
  sub_26941FFC0(v90);
  OUTLINED_FUNCTION_47_0();
  sub_2693FAAE8();
  v94 = v93;
  LOBYTE(v91) = v95;

  *(v22 + 416) = v94;
  *(v22 + 466) = v91 & 1;

  v96 = sub_26941C9D4(v94);
  v97 = MEMORY[0x277D84F90];
  if (v96)
  {
    v98 = v96;
    a11 = MEMORY[0x277D84F90];
    sub_26941F814();
    if (v98 < 0)
    {
      __break(1u);
      return;
    }

    v99 = 0;
    v100 = *(v22 + 248);
    v97 = a11;
    do
    {
      if ((v94 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D63C060](v99, v94);
      }

      else
      {
        v101 = *(v94 + 8 * v99 + 32);
      }

      v102 = *(v22 + 264);
      TranslationLanguages.rawValue.getter(*(v22 + 465));
      sub_2693F4AD8();

      a11 = v97;
      v104 = *(v97 + 16);
      v103 = *(v97 + 24);
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_32_1(v103);
        sub_26941F814();
        v97 = a11;
      }

      v105 = *(v22 + 264);
      ++v99;
      *(v97 + 16) = v104 + 1;
      v106 = *(v100 + 80);
      OUTLINED_FUNCTION_93();
      sub_2693FD3B0(v108, v97 + v107 + *(v100 + 72) * v104);
    }

    while (v98 != v99);
  }

  *(v22 + 424) = v97;
  v109 = *(v97 + 16);
  v110 = MEMORY[0x277D84F90];
  if (v109)
  {
    v111 = *(v22 + 248);
    v129 = *(v22 + 240);
    a11 = MEMORY[0x277D84F90];
    sub_26941F7D4(0, v109, 0);
    v110 = a11;
    v112 = *(v111 + 80);
    OUTLINED_FUNCTION_93();
    v114 = v97 + v113;
    v115 = *(v111 + 72);
    do
    {
      v116 = *(v22 + 256);
      sub_2693FD408(v114, v116);
      v117 = *(v129 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F940, &unk_269426420);
      sub_269422DB8();
      sub_2693FD460(v116, type metadata accessor for SiriTranslationModels.SnippetTranslationItem);
      v119 = *(v22 + 16);
      v118 = *(v22 + 24);
      a11 = v110;
      v121 = *(v110 + 16);
      v120 = *(v110 + 24);
      if (v121 >= v120 >> 1)
      {
        v123 = OUTLINED_FUNCTION_32_1(v120);
        sub_26941F7D4(v123, v121 + 1, 1);
        v110 = a11;
      }

      *(v110 + 16) = v121 + 1;
      v122 = v110 + 16 * v121;
      *(v122 + 32) = v119;
      *(v122 + 40) = v118;
      v114 += v115;
      --v109;
    }

    while (v109);
  }

  *(v22 + 432) = v110;
  v124 = swift_task_alloc();
  *(v22 + 440) = v124;
  *v124 = v22;
  v124[1] = sub_2693F457C;
  v125 = *(v22 + 208);
  v126 = *(v22 + 192);
  OUTLINED_FUNCTION_44_0();

  sub_2693F32D0(v127);
}

uint64_t sub_2693F457C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 440);
  *v4 = *v1;
  v3[56] = v7;
  v3[57] = v0;

  if (v0)
  {
    v9 = v3[53];
    v8 = v3[54];
    v10 = v3[52];
    v11 = v3[50];
    v12 = v3[46];
    v13 = v3[43];
    v14 = v3[40];
    v17 = v3 + 37;
    v16 = v3[37];
    v15 = v17[1];
  }

  else
  {
    v18 = v3[52];
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2693F46FC()
{
  v59 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 208);
  v3 = *(v0 + 448);
  v4 = sub_269423FA8();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v5 = *(v0 + 448);
    OUTLINED_FUNCTION_17_0();
    v6 = OUTLINED_FUNCTION_3_6();
    v58 = v6;
    *v3 = 136315138;
    v7 = [v5 debugDescription];
    v8 = sub_269424118();
    v10 = v9;

    v11 = sub_2693DB6E0(v8, v10, &v58);

    *(v3 + 1) = v11;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v17 = *(v0 + 424);
  v44 = *(v0 + 466);
  v18 = *(v0 + 400);
  v52 = *(v0 + 360);
  v53 = *(v0 + 368);
  v50 = *(v0 + 344);
  v51 = *(v0 + 352);
  v46 = *(v0 + 312);
  v47 = *(v0 + 320);
  v19 = *(v0 + 296);
  v45 = *(v0 + 304);
  v42 = *(v0 + 144);
  v43 = *(v0 + 160);
  v20 = *(v0 + 280);
  v54 = *(v0 + 272);
  v55 = *(v0 + 288);
  v56 = *(v0 + 264);
  v57 = *(v0 + 256);
  v22 = *(v0 + 224);
  v21 = *(v0 + 232);
  v23 = *(v0 + 216);
  if (v18)
  {
    v24 = *(v0 + 392);
  }

  else
  {
    v24 = 0;
  }

  if (!v18)
  {
    v18 = 0xE000000000000000;
  }

  v48 = v18;
  v49 = v24;
  v25 = *(v0 + 184);
  sub_269422D08();
  v26 = sub_269422CF8();
  v28 = v27;
  (*(v22 + 8))(v21, v23);
  *(v0 + 176) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F998, &unk_269427590);
  sub_269422D98();
  v29 = type metadata accessor for SiriTranslationModels.SiriTranslationResultModel(0);
  v30 = v29[5];
  *(v0 + 32) = v26;
  *(v0 + 40) = v28;
  OUTLINED_FUNCTION_81();
  v31 = v29[6];
  *(v0 + 48) = v42;
  *(v0 + 56) = v19;
  OUTLINED_FUNCTION_81();
  v32 = v29[7];
  *(v0 + 464) = v44;
  sub_269422D98();
  v33 = v29[8];
  *(v0 + 64) = v43;
  *(v0 + 72) = v45;
  OUTLINED_FUNCTION_81();
  v34 = v29[9];
  *(v0 + 80) = v46;
  *(v0 + 88) = v47;
  OUTLINED_FUNCTION_81();
  v35 = v29[10];
  *(v0 + 96) = v51;
  *(v0 + 104) = v50;
  OUTLINED_FUNCTION_81();
  v36 = v29[11];
  *(v0 + 112) = v52;
  *(v0 + 120) = v53;
  OUTLINED_FUNCTION_81();
  v37 = v29[12];
  *(v0 + 128) = v49;
  *(v0 + 136) = v48;
  OUTLINED_FUNCTION_81();
  (*(v20 + 8))(v55, v54);

  v38 = *(v0 + 8);
  v39 = *(v0 + 448);
  v40 = *(v0 + 432);

  return v38(v39, v40);
}

uint64_t sub_2693F4A3C()
{
  OUTLINED_FUNCTION_23_2();
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[57];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];

  OUTLINED_FUNCTION_4_6();

  return v6();
}

void sub_2693F4AD8()
{
  OUTLINED_FUNCTION_17_3();
  v3 = v2;
  v4 = sub_269422D18();
  v5 = OUTLINED_FUNCTION_2(v4);
  v57 = v6;
  v58 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_5();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_95();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_12_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_39_0();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_text, &v56 - v26, &qword_28030F610, &qword_269425760);
  v28 = sub_269423DA8();
  OUTLINED_FUNCTION_37_1(v27);
  if (v29)
  {
    sub_2693FD518(v27, &qword_28030F610, &qword_269425760);
    v62 = 0xE000000000000000;
    v63 = 0;
  }

  else
  {
    v30 = sub_269423D88();
    v62 = v31;
    v63 = v30;
    OUTLINED_FUNCTION_20_5(v28);
    (*(v32 + 8))(v27, v28);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_wordType, v25, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v25);
  if (v29)
  {
    sub_2693FD518(v25, &qword_28030F610, &qword_269425760);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v33 = sub_269423D88();
    v60 = v34;
    v61 = v33;
    OUTLINED_FUNCTION_20_5(v28);
    v36 = *(v35 + 8);
    v37 = OUTLINED_FUNCTION_72();
    v38(v37);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_definition, v1, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v1);
  if (v29)
  {
    sub_2693FD518(v1, &qword_28030F610, &qword_269425760);
    v59 = 0;
    v40 = 0;
  }

  else
  {
    v59 = sub_269423D88();
    v40 = v39;
    OUTLINED_FUNCTION_20_5(v28);
    (*(v41 + 8))(v1, v28);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_identifier, v21, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v21);
  if (v29)
  {
    sub_2693FD518(v21, &qword_28030F610, &qword_269425760);
    sub_269422D08();
    v43 = sub_269422CF8();
    v45 = v42;
    (*(v57 + 8))(v11, v58);
  }

  else
  {
    v43 = sub_269423D88();
    v45 = v44;
    OUTLINED_FUNCTION_20_5(v28);
    (*(v46 + 8))(v21, v28);
  }

  sub_2693FD290(v3 + OBJC_IVAR____TtC22SiriTranslationIntents15TranslationItem_romanization, v0, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_37_1(v0);
  if (v29)
  {
    sub_2693FD518(v0, &qword_28030F610, &qword_269425760);
    v47 = 0;
    v49 = 0;
  }

  else
  {
    v47 = sub_269423D88();
    v49 = v48;
    OUTLINED_FUNCTION_20_5(v28);
    (*(v50 + 8))(v0, v28);
  }

  v64 = v63;
  v65 = v62;
  sub_269422D98();
  v51 = type metadata accessor for SiriTranslationModels.SnippetTranslationItem(0);
  v52 = v51[5];
  v64 = v61;
  v65 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
  sub_269422D98();
  v53 = v51[6];
  v64 = v59;
  v65 = v40;
  sub_269422D98();
  v54 = v51[7];
  v64 = v43;
  v65 = v45;
  sub_269422D98();
  v55 = v51[8];
  v64 = v47;
  v65 = v49;
  sub_269422D98();
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693F4FC4()
{
  OUTLINED_FUNCTION_11_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for TranslateMultipleResultsParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_12_2(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_82();
  v8 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2693F5044()
{
  v1 = v0[5];
  v0[8] = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_33_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[2];
  v15 = v0[3];
  v55 = v15;

  v16 = sub_26941C104(v14);
  v0[9] = v17;
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v60 = v18;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = sub_26941C110(v14);
  v0[10] = v21;
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v62 = v22;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v53 = v23;
  sub_26941FFC0(v15);
  sub_2693FAAE8();
  v25 = v24;
  HIDWORD(v59) = v26;
  v0[11] = v24;

  v27 = __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider), *(v12 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider + 24));
  HIDWORD(v57) = sub_269423398();
  HIDWORD(v54) = sub_2694233B8();
  LODWORD(v54) = sub_2694233A8();
  v28 = sub_269423388();
  v61 = *v27;
  v29 = v11[13];
  v30 = sub_269423DA8();
  v58 = v14;

  v56 = v55;
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = v11[14];
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v30);
  v38 = v11[16];
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v30);
  v42 = v11[17];
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v30);
  *v10 = 1;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = BYTE4(v57) & 1;
  *(v10 + 18) = BYTE4(v54) & 1;
  *(v10 + 19) = v54 & 1;
  *(v10 + 20) = v28 & 1;
  *(v10 + 24) = v25;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  *(v10 + v11[15]) = BYTE4(v59) & 1;
  v46 = v10 + v11[18];
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = v10 + v11[19];
  *v47 = 0;
  *(v47 + 8) = 1;

  sub_2693F60F8(v10, v58, v12, v60, v19, v62, v53, v56, type metadata accessor for TranslateMultipleResultsParameters, type metadata accessor for TranslateMultipleResultsParameters, v52, v53, v54, v56, v57, v19, v58, v59, v60, v61, v62, v64);
  v48 = sub_2693CCD20();
  v0[12] = v48;
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55BE8]);
  v63 = v49;
  v50 = swift_task_alloc();
  v0[13] = v50;
  *v50 = v0;
  v50[1] = sub_2693F53A8;

  return v63(0xD000000000000019, 0x8000000269429DC0, v48);
}

uint64_t sub_2693F53A8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v10 + 112) = v9;
  *(v10 + 120) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2693F54C4()
{
  OUTLINED_FUNCTION_103();
  v34 = v1;
  v35 = v2;
  OUTLINED_FUNCTION_58();
  v33 = v0;
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v12, type metadata accessor for TranslateMultipleResultsParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v13 = v3;
  v14 = sub_269423FA8();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v15 = v0[14];
    OUTLINED_FUNCTION_17_0();
    v16 = OUTLINED_FUNCTION_3_6();
    v32 = v16;
    *v13 = 136315138;
    v17 = v15;
    v18 = [v17 description];
    v19 = sub_269424118();
    v21 = v20;

    v22 = sub_2693DB6E0(v19, v21, &v32);

    *(v13 + 1) = v22;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v28 = v0[7];

  OUTLINED_FUNCTION_71();
  v30 = v0[14];

  return v29(v30);
}

uint64_t sub_2693F5684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[9];
  v14 = v10[7];
  v15 = v10[5];
  v17 = v10[2];
  v16 = v10[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v14, type metadata accessor for TranslateMultipleResultsParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_4_6();
  v18 = v10[15];
  OUTLINED_FUNCTION_73();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_2693F5758()
{
  OUTLINED_FUNCTION_11_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_82();
  v8 = type metadata accessor for TranslateSingleItemResultParameters(0);
  v1[7] = v8;
  OUTLINED_FUNCTION_12_2(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

char *sub_2693F5804()
{
  v2 = v1[5];
  v1[9] = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_33_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v5);
    _os_log_impl(&dword_2693C9000, v3, v4, "Creating response for multiple translation results.", v0, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v6 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  v9 = sub_26941C104(v8);
  v1[10] = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = sub_26941C110(v8);
  v81 = v14;
  v1[11] = v14;
  sub_26941FFC0(v7);
  sub_2693FAAE8();
  v16 = v15;
  v18 = v17;
  v1[12] = v15;

  v86 = v16;
  v19 = sub_26941C9D4(v16);
  v20 = MEMORY[0x277D84F90];
  v84 = v12;
  v85 = v11;
  HIDWORD(v83) = v18;
  if (v19)
  {
    v21 = v19;
    v88 = MEMORY[0x277D84F90];
    result = sub_26941F7D4(0, v19 & ~(v19 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v79 = v13;
    v23 = 0;
    v20 = v88;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D63C060](v23, v86);
      }

      else
      {
        v24 = *(v86 + 8 * v23 + 32);
      }

      v25 = v1[6];
      OUTLINED_FUNCTION_48_0();
      sub_2693FD290(v26, v27, v28, &qword_269425760);
      v29 = sub_269423DA8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v29);
      v31 = v1[6];
      if (EnumTagSinglePayload == 1)
      {
        v32 = OUTLINED_FUNCTION_61();
        sub_2693FD518(v32, v33, &qword_269425760);
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        v34 = sub_269423D88();
        v35 = v36;
        OUTLINED_FUNCTION_20_5(v29);
        (*(v37 + 8))(v31, v29);
      }

      v39 = *(v88 + 16);
      v38 = *(v88 + 24);
      if (v39 >= v38 >> 1)
      {
        v41 = OUTLINED_FUNCTION_32_1(v38);
        sub_26941F7D4(v41, v39 + 1, 1);
      }

      ++v23;
      *(v88 + 16) = v39 + 1;
      v40 = v88 + 16 * v39;
      *(v40 + 32) = v34;
      *(v40 + 40) = v35;
    }

    while (v21 != v23);
    v13 = v79;
  }

  if (v81)
  {
    v42 = v81;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v77 = v42;
  if (v81)
  {
    v43 = v13;
  }

  else
  {
    v43 = 0;
  }

  v80 = v43;
  v1[13] = v20;
  v45 = v1[7];
  v44 = v1[8];
  v46 = v1[4];
  v47 = v1[5];
  v48 = v1[2];
  v74 = v1[3];
  v49 = __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider), *(v47 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider + 24));
  HIDWORD(v76) = sub_269423398();
  LODWORD(v76) = sub_2694233B8();
  HIDWORD(v75) = sub_2694233A8();
  LOBYTE(v46) = sub_269423388();
  v82 = *v49;
  v50 = v45[13];
  v51 = sub_269423DA8();
  v78 = v48;

  v52 = v74;
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);
  v56 = v45[14];
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v51);
  v60 = v45[16];
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v51);
  v64 = v45[17];
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v51);
  *v44 = 1;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  *(v44 + 17) = BYTE4(v76) & 1;
  *(v44 + 18) = v76 & 1;
  *(v44 + 19) = BYTE4(v75) & 1;
  *(v44 + 20) = v46 & 1;
  *(v44 + 24) = v86;
  *(v44 + 32) = 0;
  *(v44 + 40) = 1;
  *(v44 + v45[15]) = BYTE4(v83) & 1;
  v68 = v44 + v45[18];
  *v68 = 0;
  *(v68 + 8) = 1;
  v69 = v44 + v45[19];
  *v69 = 0;
  *(v69 + 8) = 1;

  sub_2693F60F8(v44, v78, v47, v85, v84, v80, v77, v52, type metadata accessor for TranslateSingleItemResultParameters, type metadata accessor for TranslateSingleItemResultParameters, v73, v74, v75, v76, v77, v78, v80, v82, v83, v84, v85, v86);
  v70 = sub_2693CCA0C();
  v1[14] = v70;
  OUTLINED_FUNCTION_22_3(MEMORY[0x277D55BE8]);
  v87 = v71;
  v72 = swift_task_alloc();
  v1[15] = v72;
  *v72 = v1;
  v72[1] = sub_2693F5D18;

  return v87(0xD00000000000001ALL, 0x8000000269429DA0, v70);
}

uint64_t sub_2693F5D18()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v10 + 128) = v9;
  *(v10 + 136) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2693F5E34()
{
  OUTLINED_FUNCTION_103();
  v36 = v1;
  v37 = v2;
  OUTLINED_FUNCTION_58();
  v35 = v0;
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v12, type metadata accessor for TranslateSingleItemResultParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v13 = v3;
  v14 = sub_269423FA8();
  sub_269424368();

  if (OUTLINED_FUNCTION_84())
  {
    v15 = v0[16];
    OUTLINED_FUNCTION_17_0();
    v16 = OUTLINED_FUNCTION_3_6();
    v34 = v16;
    *v13 = 136315138;
    v17 = v15;
    v18 = [v17 description];
    v19 = sub_269424118();
    v21 = v20;

    v22 = sub_2693DB6E0(v19, v21, &v34);

    *(v13 + 1) = v22;
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v28 = v0[8];
  v29 = v0[6];

  v30 = v0[1];
  v31 = v0[16];
  v32 = v0[13];

  return v30(v31, v32);
}

void sub_2693F6008()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[2];
  v8 = v0[3];
  OUTLINED_FUNCTION_92();
  sub_2693FD460(v5, type metadata accessor for TranslateSingleItemResultParameters);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_4_6();
  v10 = v0[17];
  OUTLINED_FUNCTION_102();

  __asm { BRAA            X1, X16 }
}

void sub_2693F60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t (*a22)(void))
{
  OUTLINED_FUNCTION_17_3();
  v115 = v23;
  v122 = v25;
  v123 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a21(0);
  v35 = OUTLINED_FUNCTION_4_5(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_7();
  v114 = v38;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v39);
  v116 = &v112 - v40;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v41);
  v121 = &v112 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v44 = OUTLINED_FUNCTION_12_2(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_7();
  v113 = v47;
  OUTLINED_FUNCTION_21_2();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v112 - v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v112 - v53;
  v55 = sub_26941C0F8(v31);
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  v117 = v57;
  v118 = v58;
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v59 = sub_269423DA8();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  v63 = v34[13];
  v124 = v33;
  sub_2693FD2EC(v54, v33 + v63);

  v119 = v29;
  v120 = v27;
  v64._countAndFlagsBits = OUTLINED_FUNCTION_94();
  if (TranslationLanguages.init(rawValue:)(v64).value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    TranslationLanguages.getLocaleString()();
  }

  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v66 = v65;

  if (!v66)
  {
  }

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v59);
  sub_2693FD2EC(v22, v124 + v34[17]);

  sub_26940BCAC();
  OUTLINED_FUNCTION_78();
  if (v87)
  {
    v72 = 0;
    v74 = 0xE000000000000000;
  }

  else
  {
    v71 = sub_26940BD00(v70);
    v72 = sub_26940C05C(v71);
    v74 = v73;
  }

  v75 = static TranslationLanguages.getByLocale(locale:)(v72, v74);

  if (v75 != 23)
  {
    TranslationLanguages.getLocaleString()();
  }

  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  v77 = v76;

  v78 = v122;
  if (!v77)
  {
  }

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v59);
  v82 = v34[16];
  sub_2693FD2EC(v51, v124 + v82);

  OUTLINED_FUNCTION_38_0();
  sub_26940BCAC();
  OUTLINED_FUNCTION_78();
  v84 = v78;
  if (!v87)
  {
    v85 = sub_26940BD00(v83);
    v87 = sub_26940C22C(v85) == 6649209 && v86 == 0xE300000000000000;
    if (v87)
    {
    }

    else
    {
      v88 = OUTLINED_FUNCTION_8_0();

      if ((v88 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    OUTLINED_FUNCTION_31_1(v89, v90);
    v91 = v113;
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    v92 = OUTLINED_FUNCTION_9_5();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v59);
    sub_2693FD2EC(v91, v124 + v82);
  }

LABEL_27:
  v95 = sub_26941FFC0(v115);
  if (v95)
  {
    v96 = sub_26941C9D4(v95);

    v97 = v96;
  }

  else
  {
    v97 = 0.0;
  }

  v98 = v124;
  v99 = v124 + v34[18];
  *v99 = v97;
  *(v99 + 8) = 0;
  v100 = v121;
  sub_2693FD408(v98, v121);
  v101 = v100;
  v102 = v116;
  sub_2693FD408(v101, v116);
  v103 = sub_269423FA8();
  v104 = sub_269424368();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = OUTLINED_FUNCTION_17_0();
    v106 = OUTLINED_FUNCTION_16_0();
    v125[0] = v106;
    *v105 = 136315138;
    sub_2693FD408(v102, v114);
    v107 = sub_269424128();
    v109 = v108;
    sub_2693FD460(v102, a22);
    v110 = sub_2693DB6E0(v107, v109, v125);

    *(v105 + 4) = v110;
    _os_log_impl(&dword_2693C9000, v103, v104, "Got parameters for CAT: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    v84 = v122;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  else
  {

    sub_2693FD460(v102, a22);
  }

  v111 = v123;
  type metadata accessor for TranslationUtil();
  sub_269423018();
  sub_2693D6934(v111, v84, v119, v120, v117, v118, v54);

  __swift_destroy_boxed_opaque_existential_1(v125);
  sub_2693FD460(v121, a22);
  sub_2693FD2EC(v54, v124 + v34[14]);
  OUTLINED_FUNCTION_16_3();
}

void sub_2693F66D4()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v0;
  v67 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
  v17 = OUTLINED_FUNCTION_4_5(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  v69 = &v63 - v21;
  v22 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;

  v68 = v22;
  v23 = sub_269423FA8();
  v24 = sub_269424368();

  v25 = os_log_type_enabled(v23, v24);
  v70 = v9;
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_17_0();
    v64 = v5;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_16_0();
    v65 = v16;
    v66 = v1;
    v29 = v28;
    v73 = v28;
    *v27 = 136315138;
    v75 = v9;
    v76 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v30 = sub_269424128();
    v32 = sub_2693DB6E0(v30, v31, &v73);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2693C9000, v23, v24, "Generating localized language: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v1 = v66;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    v5 = v64;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  if (v7)
  {
    v33 = *(v2 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
    v34 = static TranslationLanguages.getByLocale(locale:)(v70, v7);
    if (v34 == 23)
    {

      sub_2693D8BA0();
      OUTLINED_FUNCTION_76();
      v35 = v69;
      switch(v36)
      {
        case 1:
          OUTLINED_FUNCTION_19_1();
          break;
        case 2:
          OUTLINED_FUNCTION_87();
          break;
        case 3:
          OUTLINED_FUNCTION_63();
          break;
        default:
          break;
      }
    }

    else
    {
      sub_2693D768C(v34);
      v35 = v69;
    }

    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    sub_269423DA8();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_26940A12C(v15, v5, v67);
    sub_2693FD518(v15, &qword_28030F610, &qword_269425760);
    sub_2693FD290(v35, v1, &qword_28030FCA0, &unk_269427210);
    v41 = sub_269423FA8();
    v42 = sub_269424368();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_17_0();
      v44 = OUTLINED_FUNCTION_16_0();
      v73 = v44;
      *v43 = 136315138;
      v75 = sub_269424768();
      v76 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      sub_269424128();
      OUTLINED_FUNCTION_74();
      sub_2693FD518(v1, &qword_28030FCA0, &unk_269427210);
      v46 = OUTLINED_FUNCTION_34_1();
      v49 = sub_2693DB6E0(v46, v47, v48);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_2693C9000, v41, v42, "Unedited language: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    else
    {

      sub_2693FD518(v1, &qword_28030FCA0, &unk_269427210);
    }

    v50 = sub_269424768();
    if (v51)
    {
      v75 = v50;
      v76 = v51;
      v73 = 125;
      v74 = 0xE100000000000000;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_2693D50A4();
      OUTLINED_FUNCTION_10_6();
      v56 = OUTLINED_FUNCTION_105(v52, v53, v54, v55);
      v58 = v57;

      v75 = v56;
      v76 = v58;
      v73 = 123;
      v74 = 0xE100000000000000;
      v71 = 0;
      v72 = 0xE000000000000000;
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_105(v59, v60, v61, v62);
      OUTLINED_FUNCTION_74();
    }

    sub_2693FD518(v35, &qword_28030FCA0, &unk_269427210);
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693F6BF4()
{
  OUTLINED_FUNCTION_11_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2693F6C88()
{
  v92 = v0;
  v5 = *(v0 + 216) + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v6 = sub_269423FA8();
  v7 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v7))
  {
    OUTLINED_FUNCTION_33_1();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v8);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v14 = *(v89 + 200);

  v15 = sub_26941C104(v14);
  OUTLINED_FUNCTION_31_1(v15, v16);
  sub_2693D8BA0();
  OUTLINED_FUNCTION_13_4();
  v19 = 0;
  v20 = 0;
  switch(v21)
  {
    case 1:
      OUTLINED_FUNCTION_24_2();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_23_3();
      goto LABEL_6;
    case 3:
      goto LABEL_7;
    default:
LABEL_6:
      v19 = v18;
      v20 = v17;
LABEL_7:
      *(v89 + 240) = v20;
      v22 = sub_26941C104(*(v89 + 200));
      OUTLINED_FUNCTION_31_1(v22, v23);
      v24 = sub_2693D8BA0();
      if (v24 == 3)
      {
        v25 = sub_2693D737C();
      }

      else
      {
        v25 = sub_2693D861C(v24);
      }

      v85 = v20;
      v26 = *(v25 + 16);
      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v3 = v25 + 32;
        v28 = MEMORY[0x277D84F90];
        LOBYTE(v4) = 0;
        do
        {
          v29 = *v3++;
          LOBYTE(v1) = v29;
          v30 = sub_26941C110(*(v89 + 200));
          v32 = OUTLINED_FUNCTION_31_1(v30, v31);
          if (v34)
          {
            v35 = 0xE000000000000000;
          }

          else
          {
            v35 = v33;
          }

          v2 = sub_2693D7A2C(v32, v35, v1);

          if (v2)
          {
            v90 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_83();
              v28 = v90;
            }

            OUTLINED_FUNCTION_70();
            if (v37)
            {
              v38 = OUTLINED_FUNCTION_32_1(v36);
              sub_26941F7F4(v38, v2, 1);
            }

            OUTLINED_FUNCTION_85();
          }

          --v26;
        }

        while (v26);
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v39 = *(v28 + 16);
      if (v39)
      {
        v90 = v27;
        v40 = &v90;
        sub_269424518();
        OUTLINED_FUNCTION_101();
        v83 = v28;
        v84 = v19;
        v82 = v39;
        do
        {
          if (v2 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_47;
          }

          v41 = *(v89 + 216);
          v42 = *(v89 + 200);
          OUTLINED_FUNCTION_104();
          v44 = v43;
          v46 = v45;
          sub_26941C0F8(v42);
          OUTLINED_FUNCTION_88();
          if (v34)
          {
            v48 = 0xE000000000000000;
          }

          else
          {
            v48 = v47;
          }

          type metadata accessor for TranslateAction();
          v49 = swift_allocObject();
          v49[2] = v44;
          v49[3] = v46;
          v49[4] = v42;
          v49[5] = v48;
          v50 = objc_allocWithZone(MEMORY[0x277D5C218]);

          v51 = OUTLINED_FUNCTION_36_1([v50 init]);
          sub_2694243F8();

          v52 = type metadata accessor for TranslationLanguage.Builder(0);
          v53 = OUTLINED_FUNCTION_10_2(v52);
          v54 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language;
          v3 = sub_269423DA8();
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v55, v56, v57, v3);
          v27 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction;
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v3);
          TranslationLanguages.getLocaleString()();

          OUTLINED_FUNCTION_61();
          sub_2693F66D4();
          OUTLINED_FUNCTION_100();

          if (!v46)
          {
            TranslationLanguages.rawValue.getter(v26);
            OUTLINED_FUNCTION_100();
          }

          v61 = *(v89 + 224);
          v62 = *(v89 + 232);
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v3);
          OUTLINED_FUNCTION_64();
          sub_2693FD020(v62, v53 + v54);
          swift_endAccess();
          v1 = &qword_269425760;
          sub_2693FD518(v62, &qword_28030F610, &qword_269425760);
          v2 = v87 + 1;
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v3);
          OUTLINED_FUNCTION_64();
          sub_2693FD020(v61, v53 + v27);
          swift_endAccess();
          v69 = OUTLINED_FUNCTION_61();
          sub_2693FD518(v69, v70, &qword_269425760);
          v71 = type metadata accessor for TranslationLanguage(0);
          OUTLINED_FUNCTION_10_2(v71);
          v72 = OUTLINED_FUNCTION_97();
          sub_2694025F4(v72);

          sub_2694244F8();
          v26 = *(v90 + 16);
          OUTLINED_FUNCTION_86();
          sub_269424528();
          OUTLINED_FUNCTION_86();
          sub_269424538();
          v40 = &v90;
          sub_269424508();
          v39 = v82;
          v28 = v83;
          v19 = v84;
          v4 = v85;
        }

        while (v82 != v87 + 1);

        v39 = v90;
      }

      else
      {

        v39 = MEMORY[0x277D84F90];
        v4 = v85;
      }

      *(v89 + 248) = v4;
      *(v89 + 256) = v39;
      v85 = v4;
      v40 = *(v89 + 208);
      sub_2693FD4B8(*(v89 + 216) + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider, v89 + 112);
      v73 = __swift_project_boxed_opaque_existential_1((v89 + 112), *(v89 + 136));
      LOBYTE(v1) = sub_269423398();
      LOBYTE(v2) = sub_2694233B8();
      LOBYTE(v3) = sub_2694233A8();
      LOBYTE(v40) = sub_269423388();
      v88 = *v73;
      *(v89 + 296) = 1;
      *(v89 + 304) = 1;
      *(v89 + 312) = 1;
      LOBYTE(v28) = 1;
      LOBYTE(v4) = 1;
      LOBYTE(v27) = 1;

      v26 = v19;
      if (!(v39 >> 62))
      {
        v74 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_37;
      }

LABEL_47:
      v74 = sub_269424588();
LABEL_37:
      v91 = 0;
      *(v89 + 16) = 0;
      v75 = v1 & 1;
      *(v89 + 24) = 0;
      *(v89 + 32) = v28;
      if (v85)
      {
        v76 = v85;
      }

      else
      {
        v76 = 0xE000000000000000;
      }

      if (v85)
      {
        v77 = v26;
      }

      else
      {
        v77 = 0;
      }

      *(v89 + 33) = v75;
      *(v89 + 34) = v2 & 1;
      *(v89 + 35) = v3 & 1;
      *(v89 + 36) = v40 & 1;
      *(v89 + 40) = v39;
      *(v89 + 48) = v77;
      *(v89 + 56) = v76;
      *(v89 + 64) = 0;
      *(v89 + 72) = v4;
      *(v89 + 80) = v74;
      *(v89 + 88) = 0;
      *(v89 + 96) = 0;
      *(v89 + 104) = v27;
      v78 = sub_2693CCA24();
      *(v89 + 264) = v78;

      sub_2693FD23C(v89 + 16);
      OUTLINED_FUNCTION_22_3(MEMORY[0x277D55BE8]);
      v86 = v79;
      v80 = swift_task_alloc();
      *(v89 + 272) = v80;
      *v80 = v89;
      v80[1] = sub_2693F731C;

      return v86(0xD000000000000020, 0x8000000269429D70, v78);
  }
}

uint64_t sub_2693F731C()
{
  OUTLINED_FUNCTION_23_2();
  v3 = v2;
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_8_4();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v10 = v9;
  v5[35] = v0;

  if (!v0)
  {
    v11 = v5[33];

    v5[36] = v3;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2693F742C()
{
  OUTLINED_FUNCTION_23_2();
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  OUTLINED_FUNCTION_71();
  v7 = v0[36];

  return v6(v7);
}

uint64_t sub_2693F74C8()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];

  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  OUTLINED_FUNCTION_4_6();
  v8 = v0[35];

  return v7();
}

uint64_t sub_2693F7570()
{
  OUTLINED_FUNCTION_11_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_69();
  v1[12] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2693F7604()
{
  v2 = *(v0 + 80) + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v4))
  {
    OUTLINED_FUNCTION_33_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v5);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v11 = *(v89 + 64);

  v12 = sub_26941C104(v11);
  OUTLINED_FUNCTION_31_1(v12, v13);
  sub_2693D8BA0();
  OUTLINED_FUNCTION_13_4();
  v15 = 0;
  switch(v16)
  {
    case 1:
      OUTLINED_FUNCTION_24_2();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_23_3();
      goto LABEL_6;
    case 3:
      goto LABEL_7;
    default:
LABEL_6:
      v15 = v14;
LABEL_7:
      *(v89 + 104) = v15;
      v17 = sub_26941C104(*(v89 + 64));
      OUTLINED_FUNCTION_31_1(v17, v18);
      v19 = sub_2693D8BA0();
      if (v19 == 3)
      {
        v20 = sub_2693D737C();
      }

      else
      {
        v20 = sub_2693D861C(v19);
      }

      v87 = v15;
      v21 = *(v20 + 16);
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v23 = (v20 + 32);
        v24 = MEMORY[0x277D84F90];
        do
        {
          v26 = *v23++;
          v25 = v26;
          v27 = sub_26941C110(*(v89 + 64));
          v29 = OUTLINED_FUNCTION_31_1(v27, v28);
          if (v31)
          {
            v32 = 0xE000000000000000;
          }

          else
          {
            v32 = v30;
          }

          v1 = sub_2693D7A2C(v29, v32, v25);

          if (v1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_83();
            }

            OUTLINED_FUNCTION_70();
            if (v34)
            {
              v35 = OUTLINED_FUNCTION_32_1(v33);
              sub_26941F7F4(v35, v1, 1);
            }

            OUTLINED_FUNCTION_85();
          }

          --v21;
        }

        while (v21);
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      v36 = *(v24 + 16);
      if (v36)
      {
        v90 = v22;
        sub_269424518();
        OUTLINED_FUNCTION_101();
        v86 = v24;
        v85 = v36;
        do
        {
          if (v1 >= *(v24 + 16))
          {
            __break(1u);
            JUMPOUT(0x2693F7BB8);
          }

          v37 = *(v89 + 80);
          v38 = *(v89 + 64);
          OUTLINED_FUNCTION_104();
          v40 = v39;
          v42 = v41;
          sub_26941C0F8(v38);
          OUTLINED_FUNCTION_88();
          if (v31)
          {
            v44 = 0xE000000000000000;
          }

          else
          {
            v44 = v43;
          }

          type metadata accessor for TranslateAction();
          v45 = swift_allocObject();
          v45[2] = v40;
          v45[3] = v42;
          v45[4] = v38;
          v45[5] = v44;
          v46 = objc_allocWithZone(MEMORY[0x277D5C218]);

          v47 = OUTLINED_FUNCTION_36_1([v46 init]);
          sub_2694243F8();

          v48 = type metadata accessor for TranslationLanguage.Builder(0);
          v49 = OUTLINED_FUNCTION_10_2(v48);
          v50 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language;
          v51 = sub_269423DA8();
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
          v55 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction;
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
          TranslationLanguages.getLocaleString()();

          OUTLINED_FUNCTION_61();
          sub_2693F66D4();
          OUTLINED_FUNCTION_100();

          if (!v42)
          {
            TranslationLanguages.rawValue.getter(v21);
            OUTLINED_FUNCTION_100();
          }

          v59 = *(v89 + 88);
          v60 = *(v89 + 96);
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v61, v62, v63, v51);
          OUTLINED_FUNCTION_64();
          sub_2693FD020(v60, v49 + v50);
          swift_endAccess();
          sub_2693FD518(v60, &qword_28030F610, &qword_269425760);
          v1 = v88 + 1;
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v64, v65, v66, v51);
          OUTLINED_FUNCTION_64();
          sub_2693FD020(v59, v49 + v55);
          swift_endAccess();
          v67 = OUTLINED_FUNCTION_61();
          sub_2693FD518(v67, v68, &qword_269425760);
          v69 = type metadata accessor for TranslationLanguage(0);
          OUTLINED_FUNCTION_10_2(v69);
          v70 = OUTLINED_FUNCTION_97();
          sub_2694025F4(v70);

          sub_2694244F8();
          v21 = *(v90 + 16);
          OUTLINED_FUNCTION_86();
          sub_269424528();
          OUTLINED_FUNCTION_86();
          sub_269424538();
          sub_269424508();
          v24 = v86;
          v71 = v87;
        }

        while (v85 != v88 + 1);

        v72 = v90;
      }

      else
      {

        v72 = MEMORY[0x277D84F90];
        v71 = v87;
      }

      *(v89 + 112) = v71;
      *(v89 + 120) = v72;
      v73 = *(v89 + 72);
      v74 = *(*(v89 + 80) + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCATsSimple);
      if (v71)
      {
        v75 = v71;
      }

      else
      {
        v75 = 0xE000000000000000;
      }

      sub_269423398();
      sub_2694233B8();
      sub_2694233A8();
      sub_269423388();
      v76 = sub_26941C9D4(v72);
      v77 = swift_task_alloc();
      *(v89 + 128) = v77;
      *v77 = v89;
      v77[1] = sub_2693F7BC8;
      v78 = OUTLINED_FUNCTION_38_0();

      return sub_2693D5670(v78, v79, v75, v80, v81, v82, v83, *&v76);
  }
}

uint64_t sub_2693F7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = *v10;
  v12 = *(*v10 + 128);
  v13 = *v10;
  OUTLINED_FUNCTION_9_0();
  *v14 = v13;

  v15 = v11[15];
  v16 = v11[14];
  v17 = v11[13];
  v18 = v11[12];
  v19 = v11[11];

  v20 = *(v13 + 8);
  OUTLINED_FUNCTION_73();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_2693F7D58()
{
  OUTLINED_FUNCTION_11_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for SiriTranslationModels.Language(0);
  v1[15] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_82();
  v9 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2693F7E00()
{
  v1 = v0[12];
  v2 = sub_26941C110(v1);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_26941C104(v1);
  OUTLINED_FUNCTION_88();

  sub_2693D8BA0();
  v6 = sub_2693D8BA0();
  if (v6 == 3)
  {
    v7 = sub_2693D737C();
  }

  else
  {
    v7 = sub_2693D861C(v6);
  }

  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = (v7 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      if (sub_2693D7A2C(v4, v5, v12))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26941F7F4(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = OUTLINED_FUNCTION_32_1(v13);
          sub_26941F7F4(v15, v14 + 1, 1);
        }

        *(v9 + 16) = v14 + 1;
        *(v9 + v14 + 32) = v11;
      }

      --v8;
    }

    while (v8);
  }

  v16 = *(v9 + 16);
  if (v16)
  {
    v42 = v0[15];
    v43 = v0[16];
    v44 = MEMORY[0x277D84F90];
    sub_26941F86C();
    v17 = 32;
    v18 = v44;
    do
    {
      v19 = v0[14];
      TranslationLanguages.rawValue.getter(*(v9 + v17));
      v21 = v20;
      v23 = v22;
      TranslationLanguages.getLocaleString()();
      sub_2693F66D4();
      v25 = v24;
      v27 = v26;

      if (!v27)
      {

        v25 = v21;
        v27 = v23;
      }

      v28 = v0[17];
      v0[2] = v21;
      v0[3] = v23;
      sub_269422D98();
      v29 = *(v42 + 20);
      v0[4] = v25;
      v0[5] = v27;
      sub_269422D98();
      v31 = *(v44 + 16);
      v30 = *(v44 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_32_1(v30);
        sub_26941F86C();
      }

      v32 = v0[17];
      *(v44 + 16) = v31 + 1;
      v33 = *(v43 + 80);
      OUTLINED_FUNCTION_93();
      sub_2693FD3B0(v36, v44 + v34 + *(v35 + 72) * v31);
      ++v17;
      --v16;
    }

    while (v16);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v0[18] = v18;
  v37 = swift_task_alloc();
  v0[19] = v37;
  *v37 = v0;
  v37[1] = sub_2693F81C8;
  v38 = v0[13];
  v39 = v0[14];
  v40 = v0[12];

  return sub_2693F7570();
}

uint64_t sub_2693F81C8()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;

  if (v0)
  {
    v9 = v3[17];
    v8 = v3[18];

    OUTLINED_FUNCTION_43_0();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_2693F8300()
{
  OUTLINED_FUNCTION_59();
  v2 = [*(v1 + 160) dialog];
  OUTLINED_FUNCTION_96();
  sub_2693FD1B0();
  v3 = sub_269424288();

  sub_2693F8490(v3);
  OUTLINED_FUNCTION_97();

  if (v0)
  {
    v4 = [v0 fullSpeak];

    v0 = sub_269424118();
    v6 = v5;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  v9 = *(v1 + 88);
  v10 = sub_26941C0F8(*(v1 + 96));
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  *(v1 + 80) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA28, &qword_269426480);
  sub_269422D98();
  v14 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v15 = *(v14 + 20);
  *(v1 + 48) = v0;
  *(v1 + 56) = v6;
  sub_269422D98();
  v16 = *(v14 + 24);
  *(v1 + 64) = v12;
  *(v1 + 72) = v13;
  sub_269422D98();

  OUTLINED_FUNCTION_71();
  v18 = *(v1 + 160);

  return v17(v18);
}

char *sub_2693F8490(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26942008C(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D63C060](v3, a1);
  }

  result = sub_269424588();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2693F8524()
{
  OUTLINED_FUNCTION_11_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_69();
  v1[6] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2693F8914()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v11 = v10;
  v3[9] = v0;

  v12 = OUTLINED_FUNCTION_79();
  sub_2693FD518(v12, v13, &qword_269425760);
  sub_2693FD518(v8, &qword_28030F610, &qword_269425760);
  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = v3[5];
    v17 = v3[6];

    OUTLINED_FUNCTION_43_0();

    return v19();
  }
}