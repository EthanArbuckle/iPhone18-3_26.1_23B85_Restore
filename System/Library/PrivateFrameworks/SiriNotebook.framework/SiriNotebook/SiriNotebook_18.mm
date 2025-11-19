void sub_2682A5FD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2683CE268();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2682A602C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_78_1(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_78_1((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_78_1((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_78_1((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_78_1(v8);
}

_BYTE *sub_2682A60B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_77_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_75_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_76_0(result, v6);
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
          result = OUTLINED_FUNCTION_71_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_31(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_4_31@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_26812C2A8(v2, &a2 - a1, v3, v4);
}

void *OUTLINED_FUNCTION_7_19(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x2821C3550]();
}

uint64_t OUTLINED_FUNCTION_19_20(uint64_t a1)
{

  return MEMORY[0x2821C3538](v1, a1);
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return sub_2683CE238();
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x2821C3550]();
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1)
{

  return MEMORY[0x2821C3538](v1, a1);
}

uint64_t OUTLINED_FUNCTION_89_0()
{
}

uint64_t OUTLINED_FUNCTION_581()
{

  return sub_2683CE228();
}

uint64_t OUTLINED_FUNCTION_582()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_946(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t sub_2682AB760()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept7Builder_searchTerm);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept7Builder_targetTaskList);
  v1 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept7Builder_LocationConcept);

  v2 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept7Builder_CalendarConcept);

  return v0;
}

uint64_t sub_2682AB7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  v15 = a1 == 0xD000000000000010 && 0x80000002683FCB30 == a2;
  if (v15 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v16 = *(v3 + 24);
    goto LABEL_9;
  }

  result = 0x6E756F436D657469;
  v17 = a1 == 0x6E756F436D657469 && a2 == 0xE900000000000074;
  if (v17 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v16 = *(v3 + 40);
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_10_19();
  v19 = a1 == result && a2 == v18;
  if (v19 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
  {
    if (*(v3 + 64))
    {
      goto LABEL_7;
    }

    v16 = *(v3 + 56);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v16;
    return result;
  }

  v20 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
  if (!v20 && (OUTLINED_FUNCTION_2_23() & 1) == 0)
  {
    v25 = a1 == OUTLINED_FUNCTION_9_22() && a2 == v24;
    if (v25 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
    {
      sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_targetTaskList, v11);
      v26 = sub_2683CF168();
      if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
      {
        *(a3 + 24) = v26;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(*(v26 - 8) + 32))(boxed_opaque_existential_0, v11, v26);
      }

      v22 = v11;
LABEL_32:
      result = sub_26812E924(v22);
      goto LABEL_7;
    }

    result = OUTLINED_FUNCTION_15_20() & 0xFFFFFFFFFFFFLL | 0x7564000000000000;
    v29 = a1 == result && a2 == v28;
    if (v29 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
    {
      v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isScheduled;
    }

    else
    {
      result = 0x656767616C467369;
      v32 = a1 == 0x656767616C467369 && a2 == 0xE900000000000064;
      if (v32 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
      {
        v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isFlagged;
      }

      else
      {
        result = 0x75647265764F7369;
        v33 = a1 == 0x75647265764F7369 && a2 == 0xE900000000000065;
        if (v33 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
        {
          v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isOverdue;
        }

        else
        {
          result = OUTLINED_FUNCTION_11_27();
          if (a1 != result || a2 != v34)
          {
            result = OUTLINED_FUNCTION_2_23();
            if ((result & 1) == 0)
            {
              result = 0x6E6F697461636F4CLL;
              v36 = a1 == 0x6E6F697461636F4CLL && a2 == 0xEF747065636E6F43;
              if (v36 || (result = OUTLINED_FUNCTION_2_23(), (result & 1) != 0))
              {
                v37 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept);
                if (!v37)
                {
                  goto LABEL_7;
                }

                v38 = sub_2683CF088();
              }

              else
              {
                result = 0x7261646E656C6143;
                if (a1 != 0x7261646E656C6143 || a2 != 0xEF747065636E6F43)
                {
                  result = OUTLINED_FUNCTION_2_23();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v37 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept);
                if (!v37)
                {
                  goto LABEL_7;
                }

                v38 = sub_2683CEFE8();
              }

              *(a3 + 24) = v38;
              *a3 = v37;
            }
          }

          v30 = OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isRecurring;
        }
      }
    }

    v31 = *(v3 + v30);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v31;
    return result;
  }

  sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_searchTerm, v14);
  v21 = sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    v22 = v14;
    goto LABEL_32;
  }

  *(a3 + 24) = v21;
  v23 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(*(v21 - 8) + 32))(v23, v14, v21);
}

uint64_t sub_2682ABC40()
{
  v0 = sub_2683D0408();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2682ABC94(char a1)
{
  result = 0x6E756F436D657469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_10_19();
      break;
    case 3:
      result = 0x6554686372616573;
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_22();
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_15_20();
      goto LABEL_9;
    case 6:
      result = 0x656767616C467369;
      break;
    case 7:
      v3 = 0x7265764F7369;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7564000000000000;
      break;
    case 8:
      result = OUTLINED_FUNCTION_11_27();
      break;
    case 9:
      result = 0x6E6F697461636F4CLL;
      break;
    case 10:
      result = 0x7261646E656C6143;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2682ABE00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2682ABC40();
  *a2 = result;
  return result;
}

uint64_t sub_2682ABE30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2682ABC94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2682ABE78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2682ABC8C();
  *a1 = result;
  return result;
}

uint64_t sub_2682ABEAC(uint64_t a1)
{
  v2 = sub_2682ACC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682ABEE8(uint64_t a1)
{
  v2 = sub_2682ACC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682ABF24()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_searchTerm);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_targetTaskList);
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept);

  v2 = *(v0 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept);

  return v0;
}

uint64_t sub_2682ABF9C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2682AC020()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2682AC0DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802512C0, &qword_2683E2F30);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682ACC34();
  sub_2683D0718();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_6_26();
  sub_2683D04E8();
  if (!v2)
  {
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_6_26();
    sub_2683D04E8();
    v18 = *(v3 + 56);
    v19 = *(v3 + 64);
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_6_26();
    sub_2683D04E8();
    LOBYTE(v32) = 3;
    sub_2683CF168();
    OUTLINED_FUNCTION_4_32();
    sub_2682ACBEC(v20, v21);
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    LOBYTE(v32) = 4;
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    v22 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isScheduled);
    OUTLINED_FUNCTION_1_38(5);
    v23 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isFlagged);
    OUTLINED_FUNCTION_1_38(6);
    v24 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isOverdue);
    OUTLINED_FUNCTION_1_38(7);
    v25 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isRecurring);
    OUTLINED_FUNCTION_1_38(8);
    v32 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept);
    HIBYTE(v31) = 9;
    sub_2683CF088();
    OUTLINED_FUNCTION_5_28();
    sub_2682ACBEC(v26, v27);
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    v32 = *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept);
    HIBYTE(v31) = 10;
    sub_2683CEFE8();
    OUTLINED_FUNCTION_3_32();
    sub_2682ACBEC(v28, v29);
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2682AC440(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2682AC574(a1);
  return v5;
}

void sub_2682AC4B8()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2682AC574(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802512A8, &qword_2683E2F28);
  v12 = OUTLINED_FUNCTION_0_3(v36);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  *(v3 + 16) = 0;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2682ACC34();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookSearchForNotebookItemsIntentConcept(0);
    v22 = *(*v3 + 48);
    v23 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_7_20();
    *(v3 + 24) = sub_2683D0448();
    *(v3 + 32) = v17 & 1;
    OUTLINED_FUNCTION_0_48(1);
    *(v3 + 40) = sub_2683D0448();
    *(v3 + 48) = v18 & 1;
    OUTLINED_FUNCTION_0_48(2);
    *(v3 + 56) = sub_2683D0448();
    *(v3 + 64) = v19 & 1;
    sub_2683CF168();
    LOBYTE(v39) = 3;
    OUTLINED_FUNCTION_4_32();
    v35 = sub_2682ACBEC(v20, v21);
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    sub_2681E1A1C(v11, v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_searchTerm);
    LOBYTE(v39) = 4;
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    sub_2681E1A1C(v9, v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_targetTaskList);
    LOBYTE(v39) = 5;
    v25 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v25, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isScheduled);
    OUTLINED_FUNCTION_0_48(6);
    v26 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v26, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isFlagged);
    OUTLINED_FUNCTION_0_48(7);
    v27 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v27, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isOverdue);
    OUTLINED_FUNCTION_0_48(8);
    v28 = sub_2683D0488();
    OUTLINED_FUNCTION_12_17(v28, OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_isRecurring);
    sub_2683CF088();
    v38 = 9;
    OUTLINED_FUNCTION_5_28();
    sub_2682ACBEC(v29, v30);
    OUTLINED_FUNCTION_13_24();
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_LocationConcept) = v39;
    sub_2683CEFE8();
    v38 = 10;
    OUTLINED_FUNCTION_3_32();
    sub_2682ACBEC(v31, v32);
    OUTLINED_FUNCTION_13_24();
    OUTLINED_FUNCTION_7_20();
    sub_2683D0468();
    v33 = OUTLINED_FUNCTION_8_25();
    v34(v33, v36);
    *(v3 + OBJC_IVAR____TtC12SiriNotebook43NotebookSearchForNotebookItemsIntentConcept_CalendarConcept) = v39;
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v3;
}

uint64_t sub_2682ACB0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2682AC440(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2682ACBEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2682ACC34()
{
  result = qword_2802512B0;
  if (!qword_2802512B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802512B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotebookSearchForNotebookItemsIntentConcept.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotebookSearchForNotebookItemsIntentConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2682ACDF0()
{
  result = qword_2802512D0;
  if (!qword_2802512D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802512D0);
  }

  return result;
}

unint64_t sub_2682ACE48()
{
  result = qword_2802512D8;
  if (!qword_2802512D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802512D8);
  }

  return result;
}

unint64_t sub_2682ACEA0()
{
  result = qword_2802512E0[0];
  if (!qword_2802512E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802512E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_38@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_2683D0528();
}

uint64_t sub_2682AD044(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for NotebookDisambiguationAdapter.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_2682AD148(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = sub_2683CF8B8();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v46 = v4;
  v47 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v45 = v8 - v7;
  v9 = type metadata accessor for NotebookDisambiguationAdapter.State();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v45 - v21);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_3(TupleTypeMetadata2);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v45 - v30;
  v32 = &v45 + *(v29 + 48) - v30;
  v48 = v12;
  v33 = *(v12 + 16);
  v33(&v45 - v30, v49, v9);
  v33(v32, v50, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v33(v20, v31, v9);
      if (OUTLINED_FUNCTION_50_6() != 1)
      {
        goto LABEL_11;
      }

      v39 = *v20 == *v32;
      goto LABEL_19;
    case 2u:
      v33(v17, v31, v9);
      if (OUTLINED_FUNCTION_50_6() == 2)
      {
        v37 = v45;
        v36 = v46;
        v38 = v47;
        (*(v46 + 32))(v45, v32, v47);
        v39 = sub_2683CF858();
        v40 = *(v36 + 8);
        v40(v37, v38);
        v40(v17, v38);
        goto LABEL_19;
      }

      (*(v46 + 8))(v17, v47);
      goto LABEL_11;
    case 3u:
      if (OUTLINED_FUNCTION_50_6() == 3)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    default:
      v33(v22, v31, v9);
      v34 = *v22;
      v35 = v22[1];
      if (OUTLINED_FUNCTION_50_6())
      {

LABEL_11:
        v39 = 0;
      }

      else
      {
        if (v34 == *v32 && v35 == *(v32 + 1))
        {
          v43 = *(v32 + 1);

LABEL_18:
          v39 = 1;
        }

        else
        {
          v42 = *(v32 + 1);
          v39 = sub_2683D0598();
        }

LABEL_19:
        v25 = v48;
        TupleTypeMetadata2 = v9;
      }

      (*(v25 + 8))(v31, TupleTypeMetadata2);
      return v39 & 1;
  }
}

uint64_t sub_2682AD52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_2682AD148(a1, a2);
}

uint64_t sub_2682AD538@<X0>(void (*a1)(void *, os_log_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v231 = a2;
  v235 = a1;
  v232 = a3;
  v4 = *v3;
  v5 = *(*v3 + 88);
  v234 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for IdentifiableItem();
  v217 = sub_2683CFFA8();
  OUTLINED_FUNCTION_0_3(v217);
  v216 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v227 = v11;
  v229 = v6;
  isa = v6[-1].isa;
  v12 = *(isa + 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_25(v210 - v16);
  v222 = type metadata accessor for NotebookDisambiguationAdapter.State();
  OUTLINED_FUNCTION_0_3(v222);
  v221 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v220 = v21;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_25(v24);
  v212 = sub_2683CF8B8();
  v25 = OUTLINED_FUNCTION_0_3(v212);
  v210[0] = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13_25(v210 - v30);
  v226 = sub_2683CCBA8();
  v31 = OUTLINED_FUNCTION_0_3(v226);
  v224 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_25(v210 - v38);
  v39 = sub_2683CC748();
  v40 = OUTLINED_FUNCTION_0_3(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_3();
  v47 = v46 - v45;
  v48 = sub_2683CCC18();
  v49 = OUTLINED_FUNCTION_0_3(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_3();
  v56 = v55 - v54;
  v57 = *(v4 + 112);
  v233 = v3;
  v58 = &v3[v57];
  v60 = *v58;
  v59 = *(v58 + 1);

  sub_2683CCB88();
  v230 = v5;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  sub_2683CC9F8();
  sub_2683CC9E8();
  sub_2682AE9E4(&v239);
  (*(v42 + 8))(v47, v39);
  v61 = v59;
  v60(&v242, v56, &v239);

  sub_2681433DC(&v239, &qword_2802513F0, &qword_2683E3290);
  v62 = *(v51 + 8);
  v215 = v56;
  v231 = v48;
  v62(v56, v48);
  if (v243 != 255)
  {
    sub_2682B1BD8(&v242, &v239);
    v82 = v224;
    v83 = v226;
    v84 = v233;
    v85 = v223;
    v86 = v225;
    switch(v241)
    {
      case 1:
        v136 = v239;
        v137 = v220;
        *v220 = v239;
        OUTLINED_FUNCTION_25_16();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_32_10();
        v139 = &v84[*(v138 + 120)];
        swift_beginAccess();
        v140 = OUTLINED_FUNCTION_12_18();
        v141(v140, v137, v61);
        swift_endAccess();
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v142 = sub_2683CF7E8();
        __swift_project_value_buffer(v142, qword_28027C958);
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_18();
        v143();
        v144 = sub_2683CF7C8();
        v145 = sub_2683CFE98();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_86_0();
          v147 = swift_slowAlloc();
          v237 = v147;
          *v146 = 134218242;
          *(v146 + 4) = v136;
          *(v146 + 12) = 2080;
          OUTLINED_FUNCTION_11_28();
          sub_2683CCB88();
          OUTLINED_FUNCTION_20_20();
          OUTLINED_FUNCTION_24_13();
          v148 = OUTLINED_FUNCTION_39_9();
          v149(v148);
          v150 = OUTLINED_FUNCTION_9_0();
          v153 = sub_2681610A0(v150, v151, v152);

          *(v146 + 14) = v153;
          _os_log_impl(&dword_2680EB000, v144, v145, "[NotebookDisambiguationAdapter] Got selected index %ld from input, returning .handle() for input: %s", v146, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v147);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          v163 = *(v82 + 8);
          v164 = OUTLINED_FUNCTION_39_9();
          v165(v164);
        }

        OUTLINED_FUNCTION_15_21();
        sub_2683CC2A8();
        return sub_2681433DC(&v242, &qword_2802513F8, &qword_2683E3298);
      case 2:
        v119 = v239;
        OUTLINED_FUNCTION_43_7(*v240, *&v240[16]);
        *v238 = *&v240[32];
        *&v238[9] = *&v240[41];
        OUTLINED_FUNCTION_32_10();
        v121 = *(v120 + 96);
        if ((OUTLINED_FUNCTION_26_14() & 1) == 0)
        {
          goto LABEL_25;
        }

        v122 = v210[1];
        sub_2682B2B08(v119);
        v123 = v212;
        if (__swift_getEnumTagSinglePayload(v122, 1, v212) == 1)
        {
          sub_2681433DC(v122, &qword_28024DD28, &qword_2683D4CF0);
        }

        else
        {
          v166 = v210[0];
          v167 = v122;
          v168 = v211;
          (*(v210[0] + 32))(v211, v167, v123);
          if (*(v119 + 16) == 1)
          {

            if (qword_28024C8E0 != -1)
            {
              OUTLINED_FUNCTION_0_25();
              swift_once();
            }

            v169 = sub_2683CF7E8();
            __swift_project_value_buffer(v169, qword_28027C958);
            v170 = *(v166 + 16);
            v234 = (v166 + 16);
            v230 = v170;
            (v170)(v85, v211, v123);
            v171 = v226;
            (*(v82 + 16))(v86, v235, v226);
            v172 = sub_2683CF7C8();
            v173 = sub_2683CFE98();
            v174 = OUTLINED_FUNCTION_29_12();
            if (os_log_type_enabled(v174, v175))
            {
              v176 = OUTLINED_FUNCTION_35_8();
              v177 = swift_slowAlloc();
              OUTLINED_FUNCTION_40_9(v177);
              *v176 = 136315394;
              sub_2682B1C48();
              v229 = v172;
              v178 = sub_2683D0568();
              v179 = v85;
              v181 = v180;
              LODWORD(v228) = v173;
              v182 = *(v166 + 8);
              v182(v179, v123);
              v183 = v182;
              v184 = sub_2681610A0(v178, v181, v236);

              *(v176 + 4) = v184;
              *(v176 + 12) = 2080;
              OUTLINED_FUNCTION_11_28();
              v185 = v225;
              sub_2683CCB88();
              OUTLINED_FUNCTION_20_20();
              OUTLINED_FUNCTION_24_13();
              v186(v185, v171);
              v187 = OUTLINED_FUNCTION_9_0();
              v190 = sub_2681610A0(v187, v188, v189);

              *(v176 + 14) = v190;
              v123 = v212;
              v191 = v229;
              _os_log_impl(&dword_2680EB000, v229, v228, "[NotebookDisambiguationAdapter] Got selected USO entity %s from input, returning .handle() for input: %s", v176, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_31_5();
              MEMORY[0x26D617A40]();
              OUTLINED_FUNCTION_31_5();
              MEMORY[0x26D617A40]();
            }

            else
            {

              (*(v82 + 8))(v86, v171);
              v191 = *(v166 + 8);
              (v191)(v85, v123);
              v183 = v191;
            }

            v203 = v220;
            v204 = v211;
            (v230)(v220, v211, v123);
            OUTLINED_FUNCTION_25_16();
            swift_storeEnumTagMultiPayload();
            v205 = v123;
            v206 = *(*v84 + 120);
            OUTLINED_FUNCTION_48_6();
            v207 = OUTLINED_FUNCTION_12_18();
            v208(v207, v203, v191);
            swift_endAccess();
            OUTLINED_FUNCTION_15_21();
            sub_2683CC2A8();
            v183(v204, v205);
LABEL_56:
            sub_2681433DC(&v237, &qword_28024D460, &qword_2683D5050);
            return sub_2681433DC(&v242, &qword_2802513F8, &qword_2683E3298);
          }

          (*(v166 + 8))(v168, v123);
        }

        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v197 = sub_2683CF7E8();
        v198 = __swift_project_value_buffer(v197, qword_28027C958);

        v199 = sub_2683CF7C8();
        v200 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_11_9(v200))
        {
          OUTLINED_FUNCTION_87_0();
          v201 = swift_slowAlloc();
          *v201 = 134217984;
          v202 = *(v119 + 16);

          *(v201 + 4) = v202;

          _os_log_impl(&dword_2680EB000, v199, v198, "[NotebookDisambiguationAdapter] Got %ld potential matches from follow-up parse: needs another disambiguation, returning .ignore", v201, 0xCu);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        OUTLINED_FUNCTION_15_21();
        sub_2683CC2B8();
        goto LABEL_56;
      case 3:
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v124 = sub_2683CF7E8();
        __swift_project_value_buffer(v124, qword_28027C958);
        OUTLINED_FUNCTION_22_15();
        v125 = v214;
        OUTLINED_FUNCTION_23_18();
        v126();
        v127 = sub_2683CF7C8();
        v128 = sub_2683CFE98();
        if (os_log_type_enabled(v127, v128))
        {
          OUTLINED_FUNCTION_87_0();
          v129 = swift_slowAlloc();
          OUTLINED_FUNCTION_86_0();
          v130 = swift_slowAlloc();
          v237 = v130;
          *v129 = 136315138;
          OUTLINED_FUNCTION_11_28();
          sub_2683CCB88();
          OUTLINED_FUNCTION_20_20();
          OUTLINED_FUNCTION_24_13();
          v131(v125, v83);
          v132 = OUTLINED_FUNCTION_9_0();
          v135 = sub_2681610A0(v132, v133, v134);

          *(v129 + 4) = v135;
          _os_log_impl(&dword_2680EB000, v127, v128, "[NotebookDisambiguationAdapter] Returning .cancel() for input: %s", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v130);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          (*(v82 + 8))(v125, v83);
        }

        OUTLINED_FUNCTION_15_21();
        sub_2683CC298();
        return sub_2681433DC(&v242, &qword_2802513F8, &qword_2683E3298);
      default:
        v88 = v239;
        v87 = *v240;
        OUTLINED_FUNCTION_43_7(*&v240[8], *&v240[24]);
        *v238 = *&v240[40];
        *&v238[9] = *&v240[49];
        OUTLINED_FUNCTION_32_10();
        v90 = *(v89 + 96);
        if ((OUTLINED_FUNCTION_26_14() & 1) == 0)
        {
LABEL_25:
          sub_2681433DC(&v237, &qword_28024D460, &qword_2683D5050);

          break;
        }

        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v91 = sub_2683CF7E8();
        __swift_project_value_buffer(v91, qword_28027C958);
        OUTLINED_FUNCTION_22_15();
        v92 = v210[2];
        OUTLINED_FUNCTION_23_18();
        v93();

        v94 = sub_2683CF7C8();
        v95 = sub_2683CFE98();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = OUTLINED_FUNCTION_35_8();
          v97 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_9(v97);
          *v96 = 136315394;
          *(v96 + 4) = sub_2681610A0(v88, v87, v236);
          *(v96 + 12) = 2080;
          v61 = v92;
          OUTLINED_FUNCTION_11_28();
          sub_2683CCB88();
          v98 = OUTLINED_FUNCTION_20_20();
          v99 = v88;
          v101 = v100;
          (*(v82 + 8))(v61, v226);
          v102 = sub_2681610A0(v98, v101, v236);
          v88 = v99;

          *(v96 + 14) = v102;
          _os_log_impl(&dword_2680EB000, v94, v95, "[NotebookDisambiguationAdapter] Got selected id %s from input, returning .handle() for input: %s", v96, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          (*(v82 + 8))(v92, v83);
        }

        v192 = v220;
        *v220 = v88;
        v192[1] = v87;
        OUTLINED_FUNCTION_25_16();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_32_10();
        v194 = *(v193 + 120);
        OUTLINED_FUNCTION_48_6();
        v195 = OUTLINED_FUNCTION_12_18();
        v196(v195, v192, v61);
        swift_endAccess();
        OUTLINED_FUNCTION_15_21();
        sub_2683CC2A8();
        goto LABEL_56;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v63 = sub_2683CF7E8();
  v64 = __swift_project_value_buffer(v63, qword_28027C958);
  v65 = sub_2683CF7C8();
  v66 = sub_2683CFE98();
  v67 = OUTLINED_FUNCTION_29_12();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v229;
  v71 = v233;
  v72 = v228;
  if (v69)
  {
    v73 = OUTLINED_FUNCTION_21_5();
    *v73 = 0;
    _os_log_impl(&dword_2680EB000, v65, v66, "[NotebookDisambiguationAdapter] Input does not have a selected ID or the parse does not belong to this intent, trying fallback search", v73, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v74 = *&v71[*(*v71 + 128)];
  v75 = v227;
  if (!v74)
  {
    v77 = v64;
    v78 = sub_2683CF7C8();
    v103 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_11_9(v103))
    {
      v104 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v104);
      v81 = "[NotebookDisambiguationAdapter] No cached items to search. Ignoring parse.";
      goto LABEL_18;
    }

LABEL_19:

    OUTLINED_FUNCTION_15_21();
    sub_2683CC2B8();
    return sub_2681433DC(&v242, &qword_2802513F8, &qword_2683E3298);
  }

  v76 = &v71[*(*v71 + 96)];
  v230[10](v74, v235, v234);
  if (__swift_getEnumTagSinglePayload(v75, 1, v70) == 1)
  {
    (*(v216 + 8))(v75, v217);
    v77 = v64;
    v78 = sub_2683CF7C8();
    v79 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_11_9(v79))
    {
      v80 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v80);
      v81 = "[NotebookDisambiguationAdapter] Fallback search did not succeed. Ignoring parse.";
LABEL_18:
      _os_log_impl(&dword_2680EB000, v78, v77, v81, v71, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v105 = isa;
  v106 = v219;
  (*(isa + 4))(v219, v75, v70);
  v107 = *(v105 + 2);
  v107(v72, v106, v70);
  v108 = v64;
  v109 = sub_2683CF7C8();
  v110 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_11_9(v110))
  {
    OUTLINED_FUNCTION_87_0();
    v111 = v105;
    v112 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v234 = swift_slowAlloc();
    v239 = v234;
    *v112 = 136315138;
    v107(v213, v72, v70);
    v113 = sub_2683CFAD8();
    v115 = v114;
    v116 = OUTLINED_FUNCTION_28_12(*(v111 + 1));
    v117(v116);
    v118 = sub_2681610A0(v113, v115, &v239);

    *(v112 + 4) = v118;
    _os_log_impl(&dword_2680EB000, v109, v108, "[NotebookDisambiguationAdapter] Chose item with fallback search: %s. Handling input", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v234);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    v154 = OUTLINED_FUNCTION_28_12(*(v105 + 1));
    v155(v154);
  }

  v156 = v219;
  v157 = v219[1];
  v158 = v220;
  *v220 = *v219;
  v158[1] = v157;
  v159 = v222;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_10();
  v161 = *(v160 + 120);
  swift_beginAccess();
  v162 = *(v221 + 40);

  v162(&v71[v161], v158, v159);
  swift_endAccess();
  OUTLINED_FUNCTION_15_21();
  sub_2683CC2A8();
  v235(v156, v70);
  return sub_2681433DC(&v242, &qword_2802513F8, &qword_2683E3298);
}

uint64_t sub_2682AE9E4@<X0>(uint64_t a1@<X8>)
{
  sub_2683CC738();
  result = sub_2681E290C();
  if (result != 8)
  {
    v3 = &type metadata for AddTasks.Parameter;
    v4 = &off_287903B10;
LABEL_9:
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    *a1 = result;
    return result;
  }

  sub_2683CC738();
  result = sub_268381174();
  if (result != 7)
  {
    v3 = &type metadata for SetTaskAttribute.Parameter;
    v4 = &off_28790CBF0;
    goto LABEL_9;
  }

  sub_2683CC738();
  result = sub_268201068();
  if (result == 2)
  {
    sub_2683CC738();
    result = sub_2683B48FC();
    if (result == 3)
    {
      sub_2683CC738();
      result = sub_26818CD7C();
      if (result == 10)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return result;
      }

      v3 = &type metadata for SearchForNotebookItems.Parameter;
      v4 = &off_287900F98;
    }

    else
    {
      v3 = &type metadata for CreateNote.Parameter;
      v4 = &off_28790DD70;
    }

    goto LABEL_9;
  }

  *(a1 + 24) = &type metadata for SnoozeTasks.Parameter;
  *(a1 + 32) = &off_2879048D8;
  *a1 = result & 1;
  return result;
}

uint64_t sub_2682AEAEC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *v1;
  OUTLINED_FUNCTION_21_16();
  v2[15] = *(v4 + 88);
  OUTLINED_FUNCTION_21_16();
  v2[16] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[17] = AssociatedTypeWitness;
  v7 = type metadata accessor for IdentifiableItem();
  v2[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = *(AssociatedTypeWitness - 8);
  OUTLINED_FUNCTION_21_16();
  v2[20] = v10;
  v12 = *(v11 + 64);
  v2[21] = OUTLINED_FUNCTION_55();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682AEC20, 0, 0);
}

uint64_t sub_2682AEC20()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  *(v0 + 96) = sub_2683CF9A8();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  sub_2683CC9F8();
  v6 = sub_2683CC9D8();
  v7 = [v6 disambiguationItems];

  v8 = sub_2683CFCA8();
  *(v0 + 184) = v8;

  v9 = *(v8 + 16);
  *(v0 + 192) = v9;
  *(v0 + 200) = *(*v5 + 96);
  *(v0 + 208) = 0;
  result = *(v0 + 184);
  if (!v9)
  {
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);

    v32 = *(v0 + 96);
    OUTLINED_FUNCTION_14_16();
    v34 = *(v33 + 128);
    v35 = *(v30 + v34);
    *(v30 + v34) = v32;

    sub_2683CCAD8();
    sub_2682AF470(v31);
    sub_2683CCAE8();

    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X2, X16 }
  }

  if (*(result + 16))
  {
    v11 = *(v0 + 112);
    v40 = *(v0 + 120);
    sub_26813CC6C(result + 32, v0 + 24);
    *(v0 + 56) = 0;
    sub_268161678((v0 + 24), (v0 + 64));
    v12 = sub_2682AF328(v0 + 64);
    OUTLINED_FUNCTION_19_21(v12, v13, v14, v15, v16, v17, v18, v19, v38, v40);
    v39 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    OUTLINED_FUNCTION_5_29(v23);
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_2682AEEBC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = v2[29];
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v3[30] = v0;

  if (v0)
  {
    v7 = v3[28];
    v8 = v3[23];
    v9 = v3[12];

    v10 = sub_2682AF294;
  }

  else
  {
    v10 = sub_2682AEFE8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2682AEFE8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  (*(v5 + 16))(v4, v3, v6);
  v7 = OUTLINED_FUNCTION_9_0();
  sub_268376A90(v7, v8, v4, v6, v9);
  sub_2683CFD28();
  sub_2683CFD18();
  (*(v5 + 8))(v3, v6);
  result = sub_2681433DC(v0 + 56, &qword_2802513E8, &unk_2683E3280);
  v11 = *(v0 + 208) + 1;
  *(v0 + 208) = v11;
  if (v11 == *(v0 + 192))
  {
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 168);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);

    v19 = *(v0 + 96);
    OUTLINED_FUNCTION_14_16();
    v21 = *(v20 + 128);
    v22 = *(v17 + v21);
    *(v17 + v21) = v19;

    sub_2683CCAD8();
    sub_2682AF470(v18);
    sub_2683CCAE8();

    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X2, X16 }
  }

  v25 = *(v0 + 184);
  if (v11 < *(v25 + 16))
  {
    v26 = *(v0 + 200);
    v27 = *(v0 + 112);
    v44 = *(v0 + 120);
    sub_26813CC6C(v25 + 32 * v11 + 32, v0 + 24);
    *(v0 + 56) = v11;
    sub_268161678((v0 + 24), (v0 + 64));
    v28 = sub_2682AF328(v0 + 64);
    OUTLINED_FUNCTION_19_21(v28, v29, v30, v31, v32, v33, v34, v35, v42, v44);
    v43 = v36 + *v36;
    v38 = *(v37 + 4);
    v39 = swift_task_alloc();
    *(v0 + 232) = v39;
    *v39 = v0;
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_2682AF294()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  sub_2681433DC((v0 + 7), &qword_2802513E8, &unk_2683E3280);

  OUTLINED_FUNCTION_40();
  v5 = v0[30];

  return v4();
}

uint64_t sub_2682AF328(uint64_t a1)
{
  v2 = sub_2683CB598();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  sub_26813CC6C(a1, v15);
  sub_2682B1B94();
  if (swift_dynamicCast() && (v11 = [v14 identifier], v14, v11))
  {
    v12 = sub_2683CFA78();
  }

  else
  {
    sub_2683CB588();
    v12 = sub_2683CB548();
    (*(v5 + 8))(v10, v2);
  }

  return v12;
}

uint64_t sub_2682AF470(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2683CC668();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  v13 = v4[12];
  v14 = v4[11];
  v15 = v4[10];
  v16 = (*(v14 + 40))(a1, v15, v14);
  v17 = v2 + *(*v2 + 104);
  v18 = *(v17 + 3);
  v19 = *(v17 + 4);
  v20 = OUTLINED_FUNCTION_39_9();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_2683CC0D8())
  {
    v22 = 1;
    if (v16)
    {
LABEL_3:
      v23 = v22 ^ 1;
      v24 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v25 = *(v17 + 3);
    v26 = *(v17 + 4);
    v27 = OUTLINED_FUNCTION_39_9();
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v14 + 32))(v15, v14);
    v22 = sub_2683CC098();
    (*(v36 + 8))(v12, v37);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
  v24 = 0;
LABEL_6:
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v29 = sub_2683CF7E8();
  __swift_project_value_buffer(v29, qword_28027C958);
  v30 = sub_2683CF7C8();
  v31 = sub_2683CFE98();
  v32 = OUTLINED_FUNCTION_29_12();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109632;
    *(v34 + 4) = v23 & 1;
    *(v34 + 8) = 1024;
    *(v34 + 10) = v24;
    *(v34 + 14) = 1024;
    *(v34 + 16) = v22 & 1;
    _os_log_impl(&dword_2680EB000, v30, v31, "[NotebookDisambiguationAdapter] Will Unlock before disambiguation: %{BOOL}d, wantsUnlock: %{BOOL}d, isAuthenticated: %{BOOL}d", v34, 0x14u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  return v23 & 1;
}

uint64_t sub_2682AF70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2682AF758, 0, 0);
}

uint64_t sub_2682AF758()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();
  v5 = OUTLINED_FUNCTION_29_12();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v7);
    _os_log_impl(&dword_2680EB000, v3, v4, "[NotebookDisambiguationAdapter] Making disambiguation prompt", v0, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v9 = v1[5];
  v8 = v1[6];

  v10 = *(*v9 + 96);
  v13 = v8 + 80;
  v12 = *(v8 + 80);
  v11 = *(v13 + 8);
  v20 = (*(v11 + 64) + **(v11 + 64));
  v14 = *(*(v11 + 64) + 4);
  v15 = swift_task_alloc();
  v1[7] = v15;
  *v15 = v1;
  v15[1] = sub_2682AF930;
  v16 = v1[3];
  v17 = v1[4];
  v18 = v1[2];

  return v20(v18, v16, v17, v12, v11);
}

uint64_t sub_2682AF930()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2682AFA14()
{
  OUTLINED_FUNCTION_7();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_21_16();
  v1[13] = *(v6 + 88);
  OUTLINED_FUNCTION_21_16();
  v1[14] = *(v7 + 80);
  v1[15] = OUTLINED_FUNCTION_49_7();
  v8 = sub_2683CC628();
  v1[16] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[17] = v9;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v12 = sub_2683CF8B8();
  v1[19] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[20] = v13;
  v15 = *(v14 + 64) + 15;
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_49_7();
  v16 = type metadata accessor for IdentifiableItem();
  v1[22] = v16;
  v17 = sub_2683CC888();
  v1[23] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[24] = v18;
  v20 = *(v19 + 64);
  v1[25] = OUTLINED_FUNCTION_55();
  v1[26] = swift_task_alloc();
  v21 = sub_2683CFFA8();
  v1[27] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v1[28] = v22;
  v24 = *(v23 + 64);
  v1[29] = OUTLINED_FUNCTION_55();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v25 = *(v16 - 8);
  v1[32] = v25;
  v26 = *(v25 + 64);
  v1[33] = OUTLINED_FUNCTION_55();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v27 = type metadata accessor for NotebookDisambiguationAdapter.State();
  v1[36] = v27;
  OUTLINED_FUNCTION_3_1(v27);
  v1[37] = v28;
  v30 = *(v29 + 64);
  v1[38] = OUTLINED_FUNCTION_55();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682AFD14, 0, 0);
}

uint64_t sub_2682AFD14()
{
  v125 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 96);
  v5 = *(*v4 + 120);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = (v0 + 176);
      v62 = *(v0 + 176);
      v63 = *(v0 + 240);
      v64 = *(v0 + 184);
      v65 = *(v0 + 80);
      v66 = **(v0 + 312);
      sub_2683CC878();
      sub_2683851F4(0, v62, v63);

      if (__swift_getEnumTagSinglePayload(v63, 1, v62) != 1)
      {
        v89 = (v0 + 272);
        v97 = *(v0 + 272);
        v98 = (v0 + 256);
        v100 = *(v0 + 88);
        v99 = *(v0 + 96);
        v101 = *(v0 + 72);
        (*(*(v0 + 256) + 32))(v97, *(v0 + 240), *(v0 + 176));
        sub_2682B09DC(v97, v100, v101);
        goto LABEL_31;
      }

      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v68 = *(v0 + 192);
      v67 = *(v0 + 200);
      v69 = *(v0 + 184);
      v70 = *(v0 + 80);
      v71 = sub_2683CF7E8();
      __swift_project_value_buffer(v71, qword_28027C958);
      (*(v68 + 16))(v67, v70, v69);
      v72 = sub_2683CF7C8();
      v73 = sub_2683CFE78();
      v74 = os_log_type_enabled(v72, v73);
      v76 = *(v0 + 192);
      v75 = *(v0 + 200);
      v77 = *(v0 + 184);
      if (v74)
      {
        v78 = *(v0 + 176);
        v79 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_86_0();
        v80 = swift_slowAlloc();
        *&v124[0] = v80;
        *v79 = 134218242;
        *(v79 + 4) = v66;
        *(v79 + 12) = 2080;
        *(v0 + 48) = sub_2683CC878();
        sub_2683CFD28();
        OUTLINED_FUNCTION_8_26();
        swift_getWitnessTable();
        v81 = sub_2683CFAE8();
        v83 = v82;
        (*(v76 + 8))(v75, v77);
        v84 = sub_2681610A0(v81, v83, v124);

        *(v79 + 14) = v84;
        _os_log_impl(&dword_2680EB000, v72, v73, "[NotebookDisambiguationAdapter] Could not find item at index %ld in %s", v79, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v80);
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
      }

      else
      {

        (*(v76 + 8))(v75, v77);
      }

      goto LABEL_18;
    case 2u:
      v32 = *(v0 + 232);
      v33 = *(v0 + 184);
      v35 = (v0 + 176);
      v34 = *(v0 + 176);
      v36 = *(v0 + 168);
      v119 = (v0 + 160);
      v37 = (v0 + 152);
      v38 = *(v0 + 80);
      v116 = *(v0 + 104);
      (*(*(v0 + 160) + 32))(v36, *(v0 + 312), *(v0 + 152));
      *(v0 + 40) = sub_2683CC878();
      v39 = swift_task_alloc();
      v39[1] = vextq_s8(v116, v116, 8uLL);
      v39[2].i64[0] = v36;
      sub_2683CFD28();
      OUTLINED_FUNCTION_9_23();
      swift_getWitnessTable();
      sub_2683CFC38();

      if (__swift_getEnumTagSinglePayload(v32, 1, v34) == 1)
      {
        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v40 = sub_2683CF7E8();
        __swift_project_value_buffer(v40, qword_28027C958);
        v41 = sub_2683CF7C8();
        v42 = sub_2683CFE78();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_32_5(v43);
          _os_log_impl(&dword_2680EB000, v41, v42, "[NotebookDisambiguationAdapter] Selected entity resolution failed, re-trying", 0, 2u);
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        v45 = (v0 + 144);
        v44 = *(v0 + 144);
        v35 = (v0 + 128);
        v46 = *(v0 + 128);
        v47 = *(v0 + 120);
        v48 = *(v0 + 88);
        v49 = *(v0 + 72);

        sub_2683CC9F8();
        memset(v124, 0, sizeof(v124));
        sub_2683CC9C8();
        sub_2683CC618();
        sub_2683CC778();
        v50 = v0 + 136;
      }

      else
      {
        v45 = (v0 + 264);
        v50 = v0 + 256;
        v85 = *(v0 + 264);
        v87 = *(v0 + 88);
        v86 = *(v0 + 96);
        v88 = *(v0 + 72);
        (*(*(v0 + 256) + 32))(v85, *(v0 + 232), *(v0 + 176));
        sub_2682B09DC(v85, v87, v88);
      }

      v89 = (v0 + 168);
      (*(*v50 + 8))(*v45, *v35);
      goto LABEL_30;
    case 3u:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v51 = *(v0 + 96);
      v52 = sub_2683CF7E8();
      __swift_project_value_buffer(v52, qword_28027C958);

      v53 = sub_2683CF7C8();
      v54 = sub_2683CFE88();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 304);
        v56 = *(v0 + 288);
        OUTLINED_FUNCTION_87_0();
        v57 = swift_slowAlloc();
        OUTLINED_FUNCTION_86_0();
        v122 = swift_slowAlloc();
        *&v124[0] = v122;
        *v57 = 136315138;
        v6(v55, v4 + v5, v56);
        v58 = sub_2683CFAD8();
        v60 = sub_2681610A0(v58, v59, v124);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_2680EB000, v53, v54, "[NotebookDisambiguationAdapter] handled called in invalid state: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v122);
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
        OUTLINED_FUNCTION_31_5();
        MEMORY[0x26D617A40]();
      }

      goto LABEL_18;
    default:
      v7 = *(v0 + 312);
      v8 = *(v0 + 248);
      v9 = *(v0 + 184);
      v10 = *(v0 + 176);
      v11 = *(v0 + 80);
      v13 = *v7;
      v12 = v7[1];
      v121 = *(v0 + 104);
      *(v0 + 56) = sub_2683CC878();
      v14 = swift_task_alloc();
      v14[1] = vextq_s8(v121, v121, 8uLL);
      v14[2].i64[0] = v13;
      v14[2].i64[1] = v12;
      sub_2683CFD28();
      OUTLINED_FUNCTION_9_23();
      swift_getWitnessTable();
      sub_2683CFC38();

      if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
      {
        (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v15 = *(v0 + 208);
        v16 = *(v0 + 184);
        v17 = *(v0 + 192);
        v18 = *(v0 + 80);
        v19 = sub_2683CF7E8();
        __swift_project_value_buffer(v19, qword_28027C958);
        (*(v17 + 16))(v15, v18, v16);

        v20 = sub_2683CF7C8();
        v21 = sub_2683CFE78();

        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 208);
        v25 = *(v0 + 184);
        v24 = *(v0 + 192);
        if (v22)
        {
          v26 = OUTLINED_FUNCTION_35_8();
          *&v124[0] = swift_slowAlloc();
          *v26 = 136315394;
          v27 = sub_2681610A0(v13, v12, v124);

          *(v26 + 4) = v27;
          *(v26 + 12) = 2080;
          *(v0 + 64) = sub_2683CC878();
          OUTLINED_FUNCTION_8_26();
          swift_getWitnessTable();
          v28 = sub_2683CFAE8();
          v30 = v29;
          (*(v24 + 8))(v23, v25);
          v31 = sub_2681610A0(v28, v30, v124);

          *(v26 + 14) = v31;
          _os_log_impl(&dword_2680EB000, v20, v21, "[NotebookDisambiguationAdapter] Could not find matching item for id '%s' in %s", v26, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        else
        {

          (*(v24 + 8))(v23, v25);
        }

LABEL_18:
        sub_26812C6B8();
        swift_allocError();
        *v61 = 0u;
        *(v61 + 16) = 0u;
        *(v61 + 32) = 4;
        swift_willThrow();
        v103 = *(v0 + 304);
        v102 = *(v0 + 312);
        OUTLINED_FUNCTION_38_9();
        v104 = *(v0 + 200);
        v105 = *(v0 + 208);
        v117 = *(v0 + 168);
        v120 = *(v0 + 144);

        OUTLINED_FUNCTION_40();
      }

      else
      {
        v90 = *(v0 + 280);
        v119 = (v0 + 256);
        v91 = *(v0 + 248);
        v92 = *(v0 + 256);
        v93 = *(v0 + 176);
        v95 = *(v0 + 88);
        v94 = *(v0 + 96);
        v96 = *(v0 + 72);

        (*(v92 + 32))(v90, v91, v93);
        sub_2682B09DC(v90, v95, v96);
        v37 = (v0 + 176);
        v89 = (v0 + 280);
LABEL_30:
        v98 = v119;
LABEL_31:
        v107 = *v89;
        v108 = *v37;
        v109 = *v98;
        v110 = *(v0 + 304);
        v111 = *(v0 + 312);
        OUTLINED_FUNCTION_38_9();
        v112 = *(v0 + 208);
        v118 = *(v0 + 200);
        v113 = *(v0 + 168);
        v123 = *(v0 + 144);
        (*(v114 + 8))();

        OUTLINED_FUNCTION_40();
      }

      return v106();
  }
}

uint64_t sub_2682B090C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598() & 1;
  }
}

uint64_t sub_2682B0964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_2683CF878() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2683D0598();
  }

  return v5 & 1;
}

void *sub_2682B09DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v66 = a3;
  v5 = *v3;
  OUTLINED_FUNCTION_21_16();
  v7 = *(v6 + 88);
  v67 = v3;
  v9 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  v63 = v10;
  v11 = sub_2683CC628();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v64 = v13;
  v65 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v62 = v17;
  v68 = v9;
  v69 = v7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47_3();
  v61 = v18;
  v19 = type metadata accessor for IdentifiableItem();
  v20 = OUTLINED_FUNCTION_0_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = v60 - v28;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v30 = sub_2683CF7E8();
  v31 = __swift_project_value_buffer(v30, qword_28027C958);
  v32 = *(v22 + 16);
  v72 = a1;
  v32(v29, a1, v19);
  v60[1] = v31;
  v33 = sub_2683CF7C8();
  v34 = sub_2683CFE98();
  v35 = OUTLINED_FUNCTION_29_12();
  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_87_0();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v60[0] = swift_slowAlloc();
    v73[0] = v60[0];
    *v37 = 136315138;
    v32(v26, v29, v19);
    v38 = sub_2683CFAD8();
    v40 = v39;
    (*(v22 + 8))(v29, v19);
    v41 = sub_2681610A0(v38, v40, v73);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_2680EB000, v33, v34, "[NotebookDisambiguationAdapter] Selected item: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60[0]);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    (*(v22 + 8))(v29, v19);
  }

  v42 = *(*v67 + 96);
  v43 = *(v19 + 28);
  v44 = v71;
  v45 = v72;
  result = (*(v69 + 56))(v72 + v43, v70, v68);
  if (!v44)
  {
    v47 = result;
    v48 = sub_2683CF7C8();
    v49 = sub_2683CFE98();

    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_87_0();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_86_0();
      v71 = swift_slowAlloc();
      v73[0] = v71;
      *v50 = 136315138;
      v73[5] = v47;
      v51 = v47;
      swift_getWitnessTable();
      v52 = sub_2683CFAE8();
      v54 = sub_2681610A0(v52, v53, v73);
      v45 = v72;

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2680EB000, v48, v49, "[NotebookDisambiguationAdapter] Updated Intent with selection: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    v55 = v61;
    v73[3] = v61;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v73);
    (*(*(v55 - 8) + 16))(boxed_opaque_existential_0, v45 + v43, v55);
    v57 = v47;
    v58 = v62;
    sub_2683CC618();
    v59 = v65;
    sub_2683CC778();

    return (*(v64 + 8))(v58, v59);
  }

  return result;
}

uint64_t *sub_2682B0EE4()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_14_16();
  __swift_destroy_boxed_opaque_existential_0((v0 + *(v2 + 104)));
  OUTLINED_FUNCTION_14_16();
  v4 = *(v0 + *(v3 + 112) + 8);

  OUTLINED_FUNCTION_14_16();
  v6 = *(v5 + 120);
  v7 = *(v1 + 88);
  v8 = type metadata accessor for NotebookDisambiguationAdapter.State();
  OUTLINED_FUNCTION_0_9(v8);
  (*(v9 + 8))(v0 + v6);
  OUTLINED_FUNCTION_14_16();
  v11 = *(v0 + *(v10 + 128));

  return v0;
}

uint64_t sub_2682B1008()
{
  sub_2682B0EE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2682B1098()
{
  result = sub_2683CF8B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2682B1110(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for NotebookDisambiguationAdapter();

  JUMPOUT(0x26D612550);
}

uint64_t sub_2682B1194(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2682B1230;

  return sub_2682AEAEC(a2);
}

uint64_t sub_2682B1230()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2682B1330()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2682B1CA0;

  return sub_2682AFA14();
}

uint64_t sub_2682B13E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2682B1498;

  return sub_2682AF70C(a1, a2, a3);
}

uint64_t sub_2682B1498()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2682B157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for NotebookDisambiguationAdapter();
  *v12 = v5;
  v12[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F38](a1, a2, a3, v15, a5);
}

uint64_t sub_2682B165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for NotebookDisambiguationAdapter();
  *v12 = v5;
  v12[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F48](a1, a2, a3, v15, a5);
}

uint64_t sub_2682B173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for NotebookDisambiguationAdapter();
  *v10 = v4;
  v10[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F40](a1, a2, v13, a4);
}

uint64_t sub_2682B180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for NotebookDisambiguationAdapter();
  *v10 = v4;
  v10[1] = sub_2682B1CA0;

  return MEMORY[0x2821B9F58](a1, a2, v13, a4);
}

uint64_t sub_2682B18DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for NotebookDisambiguationAdapter();

  return MEMORY[0x2821B9F50](a1, v7, a3);
}

uint64_t sub_2682B1934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for NotebookDisambiguationAdapter();
  *v14 = v6;
  v14[1] = sub_2682B1CA0;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v17, a6);
}

uint64_t sub_2682B1A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 80);
  v18 = *(a6 + 88);
  v19 = type metadata accessor for NotebookDisambiguationAdapter();
  *v16 = v7;
  v16[1] = sub_2682B1CA0;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v19, a7);
}

uint64_t sub_2682B1B4C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2682B0964(a1) & 1;
}

uint64_t sub_2682B1B70(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2682B090C(a1, v1[4], v1[5]) & 1;
}

unint64_t sub_2682B1B94()
{
  result = qword_280253320;
  if (!qword_280253320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253320);
  }

  return result;
}

uint64_t sub_2682B1BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802513F8, &qword_2683E3298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2682B1C48()
{
  result = qword_280251400;
  if (!qword_280251400)
  {
    sub_2683CF8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_29(uint64_t a1)
{
  *(a1 + 8) = sub_2682AEEBC;
  result = v1[22];
  v4 = v1[15];
  v3 = v1[16];
  v5 = v1[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 216) = a1;
  *(v10 + 224) = a2;
  result = a10 + 48;
  v12 = *(a10 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_20()
{
  v2 = *(v0 - 384);

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 392);

  return sub_2682225C8(v0 - 320, v2, v3);
}

uint64_t OUTLINED_FUNCTION_28_12@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 352) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_38_9()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t result)
{
  *(v1 - 352) = result;
  *(v1 - 344) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_50_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2682B1EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_2682B1F18, 0, 0);
}

uint64_t sub_2682B1F18()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = [objc_allocWithZone(MEMORY[0x277D4C450]) init];
  sub_2682B2000(v3, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = sub_26839EEEC(v4, v2);
  *(v5 + 40) = v6;

  v7 = v0[1];

  return v7(v5);
}

void sub_2682B2000(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CB448();
  [a3 setMapsData_];
}

uint64_t sub_2682B2068()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  sub_2683ABCA0(v0);
  if (v2)
  {
    v3 = sub_2683CFA68();

    [v1 setStreet_];
  }

  sub_2683ABCB8(v0);
  if (v4)
  {
    v5 = sub_2683CFA68();

    [v1 setCity_];
  }

  v6 = [v0 postalAddress];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 state];

    if (!v8)
    {
      sub_2683CFA78();
      v8 = sub_2683CFA68();
    }

    [v1 setState_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
  [v9 setStyle_];
  v10 = [v9 stringFromPostalAddress_];
  v11 = sub_2683CFA78();

  return v11;
}

uint64_t type metadata accessor for NotebookReadingCATs()
{
  result = qword_280251408;
  if (!qword_280251408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2682B2288(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2682B22B0, 0, 0);
}

uint64_t sub_2682B22B0()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2683D2890;
  *(v2 + 32) = 0x747065636E6F63;
  *(v2 + 40) = 0xE700000000000000;
  if (v1)
  {
    v3 = type metadata accessor for NotebookReminderConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 72);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000015;
  *(v2 + 88) = 0x80000002683FFB30;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = MEMORY[0x277D839F8];
  }

  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  v8 = *(MEMORY[0x277D55BF0] + 4);
  v13 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_2682B2454;
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  return v13(v11, 0xD000000000000020, 0x80000002683FFB50, v2);
}

uint64_t sub_2682B2454()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2682B2590, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2682B2590()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2682B25F4(uint64_t a1)
{
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_268195F80;
  v5 = MEMORY[0x277D84F90];

  return v7(a1, 0xD00000000000002DLL, 0x80000002683FFB00, v5);
}

uint64_t sub_2682B26C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2682B271C(a1, a2);
}

uint64_t sub_2682B271C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_268163208(a1);
  return v12;
}

uint64_t sub_2682B28A0(uint64_t a1, void *a2)
{
  v4 = sub_2683CC008();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  if ((*(v10 + 40))(v9, v10) & 1) != 0 && (v18[0] = 0, (sub_26812A998(v18)) && (v11 = [objc_allocWithZone(sub_2683CF6F8()) init], sub_2683CF6E8(), v11, sub_268129504(0, &qword_280251418, 0x277D82BB8), (swift_dynamicCast()))
  {
    v12 = v17[1];
    sub_268129504(0, &qword_28024F2C8, 0x277CD3D30);

    v13 = v12;
    v14 = a2;
    sub_2683CBFF8();
    sub_2683CC068();
    v15 = sub_2683CC048();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_2683CC068();
    return sub_2683CC058();
  }

  return v15;
}

uint64_t sub_2682B2B20(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    v4 = *(v3 - 8);
    v5 = *(v4 + 16);
    v6 = *(v4 + 80);
    v7 = OUTLINED_FUNCTION_86_2();
    v8(v7);
  }

  v9 = OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_2682B2BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    v4 = *(*(v3 - 8) + 80);
    OUTLINED_FUNCTION_11_7();
    sub_2682B5274();
  }

  v5 = OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2682B2C88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (v3)
  {
    v5 = *(v4 - 8);
    v6 = *(v5 + 16);
    v7 = *(v5 + 80);
    v8 = OUTLINED_FUNCTION_86_2();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_2682B2D1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2681EFE4C(a1 + 32, a2);
  }

  else
  {
    bzero(a2, 0xA8uLL);
  }
}

uint64_t sub_2682B2D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v41 - v4;
  v5 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v47 = *(a1 + 16);
  v42 = xmmword_2683D1EC0;
  v43 = a1;
  while (1)
  {
    if (v47 == v11)
    {

      return v12;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v13 = *(v45 + 80);
    v14 = *(v45 + 72);
    v48 = v11;
    v49 = v14;
    sub_2682B5274();
    v15 = v10;
    v16 = v46;
    sub_2682CC640();
    v17 = type metadata accessor for Snippet.SectionHeading();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
    sub_26812D9E0(v16, &qword_28024DAF8, &qword_2683E3440);
    v20 = sub_2682E18EC(EnumTagSinglePayload == 1);
    v21 = v12[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v19;
    if (v12[3] < v23)
    {
      sub_2682C10F0(v23, 1);
      v12 = v50;
      v25 = sub_2682E18EC(EnumTagSinglePayload == 1);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

      v20 = v25;
    }

    v10 = v15;
    if (v24)
    {
      v27 = v12[7];
      sub_2682B5320();
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = *(v28 + 16);
        sub_2682E54A4();
        v28 = v38;
        *(v27 + 8 * v20) = v38;
      }

      v30 = *(v28 + 16);
      if (v30 >= *(v28 + 24) >> 1)
      {
        sub_2682E54A4();
        v28 = v39;
        *(v27 + 8 * v20) = v39;
      }

      v31 = v48;
      *(v28 + 16) = v30 + 1;
      sub_2682B5320();
    }

    else
    {
      v32 = EnumTagSinglePayload == 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
      v33 = swift_allocObject();
      *(v33 + 16) = v42;
      sub_2682B5320();
      v12[(v20 >> 6) + 8] |= 1 << v20;
      *(v12[6] + v20) = v32;
      *(v12[7] + 8 * v20) = v33;
      v34 = v12[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v12[2] = v36;
      v31 = v48;
    }

    a1 = v43;
    v11 = v31 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_2682B3154(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v4 = type metadata accessor for Snippet.Reminder(0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - v8;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v42 = *(a1 + 16);
  v36 = xmmword_2683D1EC0;
  v37 = a1;
  while (1)
  {
    if (v42 == v9)
    {

      return v10;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(v39 + 80);
    v12 = *(v39 + 72);
    v13 = v43;
    sub_2682B5274();
    v14 = v40(v13);
    v16 = sub_2682E18EC(v14 & 1);
    v17 = v10[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v10[3] < v19)
    {
      sub_2682C10F0(v19, 1);
      v10 = v44;
      v21 = sub_2682E18EC(v14 & 1);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      v23 = v10[7];
      sub_2682B5320();
      v24 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = *(v24 + 16);
        sub_2682E4B38();
        v24 = v32;
        *(v23 + 8 * v16) = v32;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_2682E4B38();
        v24 = v33;
        *(v23 + 8 * v16) = v33;
      }

      *(v24 + 16) = v26 + 1;
      sub_2682B5320();
      a1 = v37;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v27 = swift_allocObject();
      *(v27 + 16) = v36;
      sub_2682B5320();
      v10[(v16 >> 6) + 8] |= 1 << v16;
      *(v10[6] + v16) = v14 & 1;
      *(v10[7] + 8 * v16) = v27;
      v28 = v10[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v10[2] = v30;
    }

    ++v9;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_2682B34C4(uint64_t a1)
{
  v72 = sub_2683CB7A8();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v61 - v7;
  v9 = sub_2683CB528();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v70 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = v61 - v14;
  v61[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v63 = *(v61[0] - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v61[0]);
  v17 = v61 - v16;
  v18 = type metadata accessor for Snippet.Reminder(0);
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = *(v75 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v74 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v81 = v61 - v22;
  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  v82 = MEMORY[0x277D84F98];
  v77 = *(a1 + 16);
  v67 = (v2 + 8);
  v68 = (v10 + 32);
  v66 = (v10 + 8);
  v62 = xmmword_2683D1EC0;
  v25 = a1;
  v64 = v9;
  v65 = a1;
  v78 = v17;
  v73 = v8;
  while (1)
  {
    if (v77 == v23)
    {

      return v24;
    }

    if (v23 >= *(v25 + 16))
    {
      break;
    }

    v26 = *(v75 + 80);
    v79 = *(v75 + 72);
    v80 = (v26 + 32) & ~v26;
    sub_2682B5274();
    v27 = *(v76 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    sub_2683CB858();
    v28 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v28);
    v30 = v8;
    v31 = v9;
    if (EnumTagSinglePayload == 1)
    {
      sub_26812D9E0(v30, &qword_28024D5D0, &unk_2683D2CA0);
      v32 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v33 = v70;
      sub_2683CB858();
      sub_2682B52CC();
      v34 = v69;
      v35 = v33;
      v9 = v31;
      (*v68)(v69, v35, v31);
      v36 = v71;
      sub_2683CB768();
      sub_2683CB678();
      (*v67)(v36, v72);
      v17 = v78;
      (*v66)(v34, v31);
      v32 = 0;
    }

    __swift_storeEnumTagSinglePayload(v17, v32, 1, v9);
    v38 = sub_2682E1958();
    v39 = v24[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_22;
    }

    v42 = v37;
    if (v24[3] < v41)
    {
      sub_2682C1298(v41, 1);
      v24 = v82;
      v43 = sub_2682E1958();
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_24;
      }

      v38 = v43;
    }

    if (v42)
    {
      v45 = v17;
      v46 = v73;
      sub_26812D9E0(v45, &qword_28024DB08, qword_2683D5760);
      v47 = v24[7];
      sub_2682B5320();
      v48 = *(v47 + 8 * v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 8 * v38) = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = *(v48 + 16);
        sub_2682E4B38();
        v48 = v58;
        *(v47 + 8 * v38) = v58;
      }

      v50 = *(v48 + 16);
      if (v50 >= *(v48 + 24) >> 1)
      {
        sub_2682E4B38();
        v48 = v59;
        *(v47 + 8 * v38) = v59;
      }

      v8 = v46;
      *(v48 + 16) = v50 + 1;
      sub_2682B5320();
      v9 = v64;
      v25 = v65;
      v17 = v78;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v51 = swift_allocObject();
      *(v51 + 16) = v62;
      sub_2682B5320();
      v24[(v38 >> 6) + 8] |= 1 << v38;
      v52 = v24[6];
      v53 = *(v63 + 72);
      sub_2682CC5D8();
      *(v24[7] + 8 * v38) = v51;
      v54 = v24[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_23;
      }

      v24[2] = v56;
      v9 = v31;
      v8 = v73;
    }

    ++v23;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_2682B3BB4(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v37 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v33[-v7];
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v39 = *(a1 + 16);
  v34 = xmmword_2683D1EC0;
  v35 = v6;
  v36 = a1;
  while (1)
  {
    if (v39 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v10 = *(v38 + 80);
    v11 = *(v38 + 72);
    v12 = v40;
    sub_2682B5274();
    memcpy(__dst, &v12[*(v2 + 32)], 0x61uLL);
    sub_2682CC640();
    v14 = sub_2682E19B4();
    v15 = v9[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v9[3] < v17)
    {
      sub_2682C17D4(v17, 1);
      v9 = v42;
      v19 = sub_2682E19B4();
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

      v14 = v19;
    }

    if (v18)
    {
      sub_26812D9E0(__dst, &qword_28024D5C0, &unk_2683D2C80);
      v21 = v9[7];
      sub_2682B5320();
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v22 + 16);
        sub_2682E4B38();
        v22 = v30;
        *(v21 + 8 * v14) = v30;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_2682E4B38();
        v22 = v31;
        *(v21 + 8 * v14) = v31;
      }

      a1 = v36;
      *(v22 + 16) = v24 + 1;
      sub_2682B5320();
      v2 = v35;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v25 = swift_allocObject();
      *(v25 + 16) = v34;
      sub_2682B5320();
      v9[(v14 >> 6) + 8] |= 1 << v14;
      memcpy((v9[6] + 104 * v14), __dst, 0x61uLL);
      *(v9[7] + 8 * v14) = v25;
      v26 = v9[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v9[2] = v28;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C0, &unk_2683D2C80);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_2682B3FB0(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - v6;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  v42 = *(a1 + 16);
  v38 = xmmword_2683D1EC0;
  while (1)
  {
    if (v42 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(v40 + 80);
    v10 = *(v40 + 72);
    v11 = a1;
    v43 = v7;
    v12 = v44;
    sub_2682B5274();
    v13 = &v12[*(v41 + 20)];
    v15 = *v13;
    v14 = v13[1];

    v17 = sub_2682E1A10(v15, v14);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_2682C1F58(v20, 1);
      v8 = v45;
      v22 = sub_2682E1A10(v15, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v8[7];
      sub_2682B5320();
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v25 + 16);
        sub_2682E4B38();
        v25 = v34;
        *(v24 + 8 * v17) = v34;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_2682E4B38();
        v25 = v35;
        *(v24 + 8 * v17) = v35;
      }

      a1 = v11;
      *(v25 + 16) = v27 + 1;
      sub_2682B5320();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      sub_2682B5320();
      v8[(v17 >> 6) + 8] |= 1 << v17;
      v29 = (v8[6] + 16 * v17);
      *v29 = v15;
      v29[1] = v14;
      *(v8[7] + 8 * v17) = v28;
      v30 = v8[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v8[2] = v32;
      a1 = v11;
    }

    v7 = v43 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_2682B4344(uint64_t a1)
{
  result = MEMORY[0x26D616890](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_268158CE8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_2682B4404(uint64_t a1)
{
  v3 = sub_268229348(a1);
  v4 = 0x277D44700uLL;
  OUTLINED_FUNCTION_102_2();
  v8 = sub_268129504(v5, v6, v7);
  OUTLINED_FUNCTION_102_2();
  v10 = sub_2682CC6A8(v9);
  v13[1] = MEMORY[0x26D616890](v3, v8, v10);
  sub_2683ABE58(a1);
  OUTLINED_FUNCTION_109_2();
  while (1)
  {
    if (&qword_28024DB40 == v4)
    {

      return;
    }

    if (v8)
    {
      v12 = OUTLINED_FUNCTION_93_2();
      v11 = MEMORY[0x26D616C90](v12);
    }

    else
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_26815911C(v13, v11);

    ++v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_2682B4500(uint64_t a1)
{
  v3 = sub_268229348(a1);
  v4 = 0x277CD4220uLL;
  OUTLINED_FUNCTION_102_2();
  v8 = sub_268129504(v5, v6, v7);
  OUTLINED_FUNCTION_102_2();
  v10 = sub_2682CC6A8(v9);
  v13[1] = MEMORY[0x26D616890](v3, v8, v10);
  sub_2683ABE58(a1);
  OUTLINED_FUNCTION_109_2();
  while (1)
  {
    if (&qword_280253310 == v4)
    {

      return;
    }

    if (v8)
    {
      v12 = OUTLINED_FUNCTION_93_2();
      v11 = MEMORY[0x26D616C90](v12);
    }

    else
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_268158E30(v13, v11);

    ++v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_2682B45FC(uint64_t a1)
{
  v2 = sub_2683CB598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2682C22DC(&qword_28024D890);
  v12 = MEMORY[0x26D616890](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_26815955C();
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

uint64_t Snippet.ReminderSearchResult.sections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Snippet.ReminderSearchResult.primaryHeading.getter()
{
  v0 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 20);
  OUTLINED_FUNCTION_17_18();
  return sub_2682B5274();
}

uint64_t Snippet.ReminderSearchResult.primaryHeading.setter()
{
  v2 = OUTLINED_FUNCTION_24_4();
  v3 = v1 + *(type metadata accessor for Snippet.ReminderSearchResult(v2) + 20);

  return sub_2682B48AC(v0, v3);
}

uint64_t sub_2682B48AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.SectionHeading();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*Snippet.ReminderSearchResult.primaryHeading.modify())(void)
{
  v0 = OUTLINED_FUNCTION_24_4();
  v1 = *(type metadata accessor for Snippet.ReminderSearchResult(v0) + 20);
  return nullsub_1;
}

uint64_t Snippet.ReminderSearchResult.count.getter()
{
  v0 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB858();
  return v2;
}

uint64_t sub_2682B49AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return Snippet.ReminderSearchResult.count.setter();
}

uint64_t Snippet.ReminderSearchResult.count.setter()
{
  v0 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  return sub_2683CB868();
}

uint64_t (*Snippet.ReminderSearchResult.count.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  v2[4] = sub_2683CB848();
  return sub_268143C94;
}

uint64_t Snippet.ReminderSearchResult.pageInfo.getter()
{
  v0 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  return sub_2683CB858();
}

uint64_t sub_2682B4B18@<X0>(_BYTE *a1@<X8>)
{
  result = Snippet.ReminderSearchResult.pageInfo.getter();
  *a1 = v3;
  return result;
}

uint64_t Snippet.ReminderSearchResult.pageInfo.setter(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  return sub_2683CB868();
}

uint64_t (*Snippet.ReminderSearchResult.pageInfo.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for Snippet.ReminderSearchResult(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  v2[4] = sub_2683CB848();
  return sub_268151B78;
}

void Snippet.ReminderSearchResult.init(sections:primaryHeading:count:pageInfo:)()
{
  OUTLINED_FUNCTION_114_1();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v7 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  sub_2683CB838();
  v8 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  *v3 = v1;
  v9 = v6[5];
  OUTLINED_FUNCTION_17_18();
  sub_2682B5274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  sub_2683CB868();
  OUTLINED_FUNCTION_5_30();
  sub_2682B52CC();
  OUTLINED_FUNCTION_113_2();
}

void Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v5 = OUTLINED_FUNCTION_23(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v62[-v12];
  v14 = type metadata accessor for Snippet.SectionHeading();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_3();
  v67 = v18 - v19;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v62[-v25];
  v27 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v28 = OUTLINED_FUNCTION_0_3(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_3();
  v35 = v34 - v33;
  if (*(*v1 + 16) != 1)
  {
    goto LABEL_9;
  }

  sub_2682B2BB4(*v1, type metadata accessor for Snippet.ReminderSearchResult.Section);
  OUTLINED_FUNCTION_72(v26, 1, v27);
  if (v39)
  {
    v36 = &qword_280251420;
    v37 = &qword_2683E3448;
    v38 = v26;
LABEL_8:
    sub_26812D9E0(v38, v36, v37);
LABEL_9:
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_113();
    sub_2682B5274();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_39();
  sub_2682B5320();
  sub_2682CC640();
  OUTLINED_FUNCTION_72(v13, 1, v14);
  if (v39)
  {
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v36 = &qword_28024DAF8;
    v37 = &qword_2683E3440;
    v38 = v13;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_10_20();
  sub_2682B5320();
  v40 = v35 + *(v27 + 20);
  v41 = *v40;
  LODWORD(v40) = *(v40 + 8);
  v66 = v41;
  if (v40 == 1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
    v42 = *(v30 + 72);
    v43 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2683D1EC0;
    v45 = v44 + v43;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v14);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v14);
    v52 = v66;

    sub_2681D5F4C(v10, v45);
    v53 = v45 + *(v27 + 20);
    *v53 = v52;
    *(v53 + 8) = 0;
    v66 = v44;
  }

  OUTLINED_FUNCTION_17_18();
  v65 = v54;
  sub_2682B5274();
  v55 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v56 = v55[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB858();
  v64 = v69;
  v63 = v70;
  v57 = v55[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  sub_2683CB858();
  v58 = v68;
  v59 = v55[6];
  v69 = 0;
  v70 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  sub_2683CB838();
  v60 = v55[7];
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  *v3 = v66;
  v61 = v55[5];
  sub_2682B5274();
  v69 = v64;
  v70 = v63;
  sub_2683CB868();
  LOBYTE(v69) = v58;
  sub_2683CB868();
  sub_2682B52CC();
  sub_2682B52CC();
  OUTLINED_FUNCTION_0_49();
  sub_2682B52CC();
LABEL_10:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682B5274()
{
  OUTLINED_FUNCTION_36_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return v0;
}

uint64_t sub_2682B52CC()
{
  v1 = OUTLINED_FUNCTION_24_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2682B5320()
{
  OUTLINED_FUNCTION_36_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return v0;
}

uint64_t Snippet.ReminderSearchResult.Section.content.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_52_4();
  v4 = (v1 + v3);
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
}

uint64_t Snippet.ReminderSearchResult.Section.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_52_4();
  v5 = (v1 + v4);
  v6 = *v5;

  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t Snippet.ReminderSearchResult.Section.init(heading:content:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for Snippet.SectionHeading();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_9_0();
  sub_2681D5F4C(v9, v10);
  result = OUTLINED_FUNCTION_52_4();
  v13 = a2 + v12;
  *v13 = v3;
  *(v13 + 8) = v4;
  return result;
}

uint64_t sub_2682B5510@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  type metadata accessor for Snippet.SectionHeading();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_113();
  sub_2681D5F4C(v10, v11);
  result = OUTLINED_FUNCTION_52_4();
  v14 = a3 + v13;
  *v14 = a1;
  *(v14 + 8) = a2;
  return result;
}

void Snippet.ReminderSearchResult.Section.isEmpty.getter()
{
  v1 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_3();
  v5 = (v0 + *(v4 + 28));
  v6 = *v5;
  v7 = *(*v5 + 16);
  if (v5[8])
  {
    v8 = 0;
    while (v7 != v8)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v2 + 80);
      OUTLINED_FUNCTION_11_7();
      v10 = *(v2 + 72);
      OUTLINED_FUNCTION_16_24();
      v11 = sub_2682B5274();
      ++v8;
      v12 = Snippet.ReminderSearchResult.Section.isEmpty.getter(v11);
      OUTLINED_FUNCTION_0_49();
      sub_2682B52CC();
      if ((v12 & 1) == 0)
      {
        return;
      }
    }
  }
}

void Snippet.ReminderSearchResult.Section.reminders.getter()
{
  OUTLINED_FUNCTION_30_0();
  v1 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v2 = *(*(v1 - 8) + 64);
  v4 = (v0 + *(MEMORY[0x28223BE20](v1 - 8) + 28));
  v5 = *v4;
  if ((v4[1] & 1) == 0)
  {
    v22 = *v4;

    goto LABEL_17;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_17:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v7 = v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);

  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    OUTLINED_FUNCTION_16_24();
    v10 = sub_2682B5274();
    v11 = Snippet.ReminderSearchResult.Section.reminders.getter(v10);
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v12 = *(v11 + 16);
    v13 = *(v9 + 16);
    if (__OFADD__(v13, v12))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v9 + 24) >> 1)
    {
      sub_2682E4B38();
      v9 = v14;
    }

    if (*(v11 + 16))
    {
      v15 = (*(v9 + 24) >> 1) - *(v9 + 16);
      v16 = *(type metadata accessor for Snippet.Reminder(0) - 8);
      if (v15 < v12)
      {
        goto LABEL_20;
      }

      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = *(v16 + 72);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v19 = *(v9 + 16);
        v20 = __OFADD__(v19, v12);
        v21 = v19 + v12;
        if (v20)
        {
          goto LABEL_21;
        }

        *(v9 + 16) = v21;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_19;
      }
    }

    v7 += v8;
    if (!--v6)
    {

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2682B58E4()
{
  OUTLINED_FUNCTION_30_0();
  v52 = v1;
  v2 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_3();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50[-v12];
  v14 = type metadata accessor for Snippet.Reminder(0);
  v55 = OUTLINED_FUNCTION_0_3(v14);
  v56 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v18);
  v20 = &v50[-v19];
  v21 = *(v0 + 8);
  v57 = *v0;
  v22 = *(v57 + 16);
  if (v21)
  {
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v51 = v21;
      v62 = MEMORY[0x277D84F90];
      v24 = OUTLINED_FUNCTION_54_4();
      sub_2683909A0(v24, v25, v26);
      v23 = v62;
      v56 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v27 = v57 + v56;
      v28 = *(v5 + 72);
      do
      {
        OUTLINED_FUNCTION_2_34();
        sub_2682B5274();
        OUTLINED_FUNCTION_19_2();
        sub_2682B5274();
        v29 = (v10 + *(v2 + 20));
        v30 = *v29;
        LOBYTE(v29) = *(v29 + 8);
        v58 = v30;
        v59 = v29;

        sub_2682B58E4(&v60, v31);

        OUTLINED_FUNCTION_0_49();
        sub_2682B52CC();
        v32 = v60;
        LOBYTE(v30) = v61;
        v33 = &v13[*(v2 + 20)];
        v34 = *v33;

        *v33 = v32;
        v33[8] = v30;
        v62 = v23;
        v36 = *(v23 + 16);
        v35 = *(v23 + 24);
        if (v36 >= v35 >> 1)
        {
          v37 = OUTLINED_FUNCTION_22_2(v35);
          sub_2683909A0(v37, v36 + 1, 1);
          v23 = v62;
        }

        *(v23 + 16) = v36 + 1;
        OUTLINED_FUNCTION_1_39();
        sub_2682B5320();
        v27 += v28;
        --v22;
      }

      while (v22);
LABEL_15:
      LOBYTE(v21) = v51;
    }

    goto LABEL_17;
  }

  v38 = MEMORY[0x277D84F90];
  if (!v22)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_17:
    v49 = v52;
    *v52 = v23;
    *(v49 + 8) = v21;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v51 = v21;
  v60 = MEMORY[0x277D84F90];
  v39 = v57;

  OUTLINED_FUNCTION_54_4();
  sub_268390728();
  v40 = 0;
  v23 = v60;
  v41 = *(v56 + 80);
  OUTLINED_FUNCTION_11_7();
  v54 = v42;
  v53 = v39 + v42;
  while (v40 < *(v57 + 16))
  {
    v43 = *(v56 + 72);
    OUTLINED_FUNCTION_11_29();
    sub_2682B5274();
    sub_2682B5274();
    v44 = *(v55 + 68);
    v45 = *&v20[v44];

    v46 = v38;
    *&v20[v44] = v38;
    OUTLINED_FUNCTION_6_27();
    sub_2682B52CC();
    v60 = v23;
    v48 = *(v23 + 16);
    v47 = *(v23 + 24);
    if (v48 >= v47 >> 1)
    {
      OUTLINED_FUNCTION_28_13(v47);
      sub_268390728();
      v23 = v60;
    }

    ++v40;
    *(v23 + 16) = v48 + 1;
    OUTLINED_FUNCTION_3_33();
    sub_2682B5320();
    v38 = v46;
    if (v22 == v40)
    {

      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_2682B5D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974636553627573 && a2 == 0xEB00000000736E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_2682B5DE8(char a1)
{
  if (a1)
  {
    return 0x6974636553627573;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_2682B5E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682B5D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682B5E5C(uint64_t a1)
{
  v2 = sub_2682C2150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B5E98(uint64_t a1)
{
  v2 = sub_2682C2150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682B5ED4(uint64_t a1)
{
  v2 = sub_2682C21F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B5F10(uint64_t a1)
{
  v2 = sub_2682C21F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2682B5F4C(uint64_t a1)
{
  v2 = sub_2682C21A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B5F88(uint64_t a1)
{
  v2 = sub_2682C21A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderSearchResult.Section.Content.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251430, &qword_2683E3458);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v29 = v7;
  v30 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251438, &qword_2683E3460);
  OUTLINED_FUNCTION_0_3(v11);
  v28 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251440, &qword_2683E3468);
  OUTLINED_FUNCTION_0_3(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_4();
  v31 = *v0;
  v21 = *(v0 + 8);
  v22 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2682C2150();
  sub_2683D0718();
  if (v21)
  {
    sub_2682C21A4();
    OUTLINED_FUNCTION_117_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    OUTLINED_FUNCTION_44_9();
    sub_2682CB4DC(v23);
    sub_2683D0548();
    (*(v29 + 8))(v2, v30);
  }

  else
  {
    sub_2682C21F8();
    OUTLINED_FUNCTION_117_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    sub_2682C224C(&qword_28024D880);
    sub_2683D0548();
    v24 = *(v28 + 8);
    v25 = OUTLINED_FUNCTION_92_2();
    v27(v25, v26);
  }

  (*(v17 + 8))(v1, v21);
  OUTLINED_FUNCTION_62();
}

void Snippet.ReminderSearchResult.Section.Content.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x26D617190](1);

    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);

    sub_26814E1A8(a1, v3);
  }
}

uint64_t Snippet.ReminderSearchResult.Section.Content.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_79();
  if (v2)
  {
    MEMORY[0x26D617190](1);
    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);
    sub_26814E1A8(v4, v1);
  }

  return sub_2683D06D8();
}

void Snippet.ReminderSearchResult.Section.Content.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_63_0();
  v65 = v12;
  v66 = v10;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251460, &qword_2683E3480);
  v62 = OUTLINED_FUNCTION_0_3(v15);
  v63 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251468, &qword_2683E3488);
  OUTLINED_FUNCTION_0_3(v20);
  v61 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_49_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251470, &qword_2683E3490);
  OUTLINED_FUNCTION_0_3(v25);
  v64 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  v31 = v60 - v30;
  v32 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2682C2150();
  v33 = v66;
  sub_2683D06F8();
  if (v33)
  {
    goto LABEL_10;
  }

  v60[2] = v20;
  v60[3] = v11;
  v66 = v14;
  v34 = v65;
  v35 = sub_2683D04B8();
  sub_268151B7C(v35, 0);
  if (v37 == v38 >> 1)
  {
    v39 = v31;
LABEL_9:
    v47 = sub_2683D01D8();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v49 = &type metadata for Snippet.ReminderSearchResult.Section.Content;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v39, v25);
    v14 = v66;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_11:
    OUTLINED_FUNCTION_62();
    return;
  }

  v60[1] = 0;
  if (v37 < (v38 >> 1))
  {
    v40 = *(v36 + v37);
    sub_268151B68(v37 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      v45 = v40;
      if (v40)
      {
        LODWORD(v61) = v40;
        LOBYTE(a10) = 1;
        sub_2682C21A4();
        OUTLINED_FUNCTION_115_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
        OUTLINED_FUNCTION_40_10();
        sub_2682CB4DC(v46);
        sub_2683D04A8();
        swift_unknownObjectRelease();
        v51 = OUTLINED_FUNCTION_90_1();
        v52(v51);
        v53 = OUTLINED_FUNCTION_51_5();
        v54(v53);
        v55 = a10;
        v45 = v61;
      }

      else
      {
        LOBYTE(a10) = 0;
        sub_2682C21F8();
        OUTLINED_FUNCTION_115_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
        sub_2682C224C(&qword_28024D8F8);
        sub_2683D04A8();
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_108_1();
        v57(v56);
        v58 = OUTLINED_FUNCTION_51_5();
        v59(v58);
        v55 = a10;
        v34 = v65;
      }

      *v34 = v55;
      *(v34 + 8) = v45;
      __swift_destroy_boxed_opaque_existential_0(v66);
      goto LABEL_11;
    }

    v39 = v31;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2682B69B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2683D0698();
  if (v2)
  {
    MEMORY[0x26D617190](1);
    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);
    sub_26814E1A8(v4, v1);
  }

  return sub_2683D06D8();
}

uint64_t sub_2682B6CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616568 && a2 == 0xE700000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_2682B6DA8(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x676E6964616568;
  }
}

uint64_t sub_2682B6DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682B6CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682B6E08(uint64_t a1)
{
  v2 = sub_2682CB56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B6E44(uint64_t a1)
{
  v2 = sub_2682CB56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderSearchResult.Section.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251478, &qword_2683E3498);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28_2();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682CB56C();
  OUTLINED_FUNCTION_121_1();
  type metadata accessor for Snippet.SectionHeading();
  OUTLINED_FUNCTION_9_24();
  sub_2682C22DC(v12);
  OUTLINED_FUNCTION_5_16();
  sub_2683D0508();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for Snippet.ReminderSearchResult.Section(0) + 20));
    v18 = *v13;
    v19 = *(v13 + 8);
    sub_2682CB5C0();

    sub_2683D0548();
  }

  v14 = *(v7 + 8);
  v15 = OUTLINED_FUNCTION_93_2();
  return v16(v15);
}

void Snippet.ReminderSearchResult.Section.hash(into:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_24_4();
  v3 = type metadata accessor for Snippet.SectionHeading();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_2682CC640();
  OUTLINED_FUNCTION_72(v12, 1, v3);
  if (v13)
  {
    sub_2683D06B8();
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    sub_2682B5320();
    sub_2683D06B8();
    Snippet.SectionHeading.hash(into:)();
    OUTLINED_FUNCTION_5_30();
    sub_2682B52CC();
  }

  OUTLINED_FUNCTION_52_4();
  v15 = v2 + v14;
  v16 = *v15;
  if (*(v15 + 8))
  {
    MEMORY[0x26D617190](1);
    sub_26814E408();
  }

  else
  {
    MEMORY[0x26D617190](0);
    sub_26814E1A8(v0, v16);
  }
}

uint64_t Snippet.ReminderSearchResult.Section.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  Snippet.ReminderSearchResult.Section.hash(into:)();
  return sub_2683D06D8();
}

void Snippet.ReminderSearchResult.Section.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v31 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251490, &qword_2683E34A0);
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v29 = v11;
  v30 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_1();
  v15 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v21 = v20 - v19;
  v22 = type metadata accessor for Snippet.SectionHeading();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2682CB56C();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_26812D9E0(v21, &qword_28024DAF8, &qword_2683E3440);
  }

  else
  {
    OUTLINED_FUNCTION_9_24();
    sub_2682C22DC(v27);
    sub_2683D0468();
    sub_2681D5F4C(v31, v21);
    sub_2682CB614();
    sub_2683D04A8();
    (*(v29 + 8))(v1, v30);
    v28 = v21 + *(v15 + 20);
    *v28 = v32;
    *(v28 + 8) = v33;
    OUTLINED_FUNCTION_16_24();
    sub_2682B5274();
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2682B74CC()
{
  sub_2683D0698();
  Snippet.ReminderSearchResult.Section.hash(into:)();
  return sub_2683D06D8();
}

uint64_t static Snippet.ReminderSearchResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_2();
  v3 = *v2;
  v5 = *v4;
  sub_26814B8FC();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Snippet.ReminderSearchResult(0);
  if ((static Snippet.SectionHeading.== infix(_:_:)(v1 + v7[5], v0 + v7[5]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  sub_2682CB6BC(&unk_2802514A0);
  if ((sub_2683CB878() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2682CB7E8(&unk_2802514A8);

  return sub_2683CB878();
}

uint64_t sub_2682B7650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x487972616D697270 && a2 == 0xEE00676E69646165;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F666E4965676170 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

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

uint64_t sub_2682B77AC(char a1)
{
  result = 0x736E6F6974636573;
  switch(a1)
  {
    case 1:
      result = 0x487972616D697270;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0x6F666E4965676170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2682B783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2682B7650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2682B7864(uint64_t a1)
{
  v2 = sub_2682CB668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682B78A0(uint64_t a1)
{
  v2 = sub_2682CB668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderSearchResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802514B0, &qword_2683E34A8);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28_2();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682CB668();
  OUTLINED_FUNCTION_121_1();
  v24 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
  OUTLINED_FUNCTION_44_9();
  sub_2682CB4DC(v12);
  OUTLINED_FUNCTION_5_16();
  sub_2683D0548();
  if (!v2)
  {
    v13 = type metadata accessor for Snippet.ReminderSearchResult(0);
    v14 = v13[5];
    type metadata accessor for Snippet.SectionHeading();
    OUTLINED_FUNCTION_9_24();
    sub_2682C22DC(v15);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    v16 = v13[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
    OUTLINED_FUNCTION_1_6();
    sub_2682CB854(v17);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    v18 = v13[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
    OUTLINED_FUNCTION_1_6();
    sub_2682CB724(v19);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
  }

  v20 = *(v7 + 8);
  v21 = OUTLINED_FUNCTION_93_2();
  return v22(v21);
}

void Snippet.ReminderSearchResult.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v40 = v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  OUTLINED_FUNCTION_0_3(v43);
  v47 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v41 = v14;
  OUTLINED_FUNCTION_3_8();
  v15 = type metadata accessor for Snippet.SectionHeading();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802514F0, &qword_2683E34B0);
  OUTLINED_FUNCTION_0_3(v42);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_4();
  v22 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_3();
  v28 = (v27 - v26);
  v30 = *(v29 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  v46 = v30;
  sub_2683CB838();
  v31 = *(v22 + 28);
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  v32 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2682CB668();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
    (*(v47 + 8))(&v28[v46], v43);
    (*(v44 + 8))(&v28[v31], v45);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    OUTLINED_FUNCTION_40_10();
    sub_2682CB4DC(v33);
    sub_2683D04A8();
    *v28 = 0;
    OUTLINED_FUNCTION_9_24();
    sub_2682C22DC(v34);
    sub_2683D04A8();
    v35 = *(v22 + 20);
    OUTLINED_FUNCTION_10_20();
    sub_2682B5320();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_2_4();
    sub_2682CB854(v36);
    sub_2683D04A8();
    (*(v47 + 40))(&v28[v46], v41, v43);
    OUTLINED_FUNCTION_2_4();
    sub_2682CB724(v37);
    sub_2683D04A8();
    v38 = OUTLINED_FUNCTION_72_2();
    v39(v38);
    (*(v44 + 40))(&v28[v31], v40, v45);
    OUTLINED_FUNCTION_45_5();
    sub_2682B5274();
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_41_8();
    sub_2682B52CC();
  }

  OUTLINED_FUNCTION_62();
}

void sub_2682B80C8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v77 = v4;
  v78 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_3();
  v76 = v7 - v8;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_17();
  v79 = v10;
  OUTLINED_FUNCTION_3_8();
  v11 = sub_2683CB528();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v18 = OUTLINED_FUNCTION_23(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_3();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v75 - v25;
  sub_2682CC640();
  if (v82)
  {
    __swift_project_boxed_opaque_existential_1(&v80, v82);
    sub_268157E08();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(&v80);
    if (v28)
    {
      sub_2682BAFB0(v1, v28, 0, &v80);

      v29 = v80;
      if (v81 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
        v30 = *(v77 + 72);
        v31 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_2683D1EC0;
        v33 = v32 + v31;
        v34 = type metadata accessor for Snippet.SectionHeading();
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);

        sub_2681D5F4C(v26, v33);
        v41 = v33 + *(v78 + 20);
        *v41 = v29;
        *(v41 + 8) = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_26812D9E0(&v80, &qword_28024ED48, &qword_2683E3D20);
  }

  v42 = *(v14 + 16);
  v43 = OUTLINED_FUNCTION_92_2();
  v44(v43);
  v45 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v46 = swift_allocObject();
  (*(v14 + 32))(v46 + v45, v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v75[1] = v46;
  v48 = sub_2682B3154(v47, sub_2682CC544, v46);
  v49 = 0;
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  do
  {
    v52 = v49;
    if (*(v48 + 16))
    {
      v53 = v23;
      v54 = *(&unk_2878FB418 + v50 + 32);
      v55 = sub_2682E18EC(v54);
      if (v56)
      {
        v57 = *(*(v48 + 56) + 8 * v55);
        v58 = type metadata accessor for Snippet.SectionHeading();
        if (v54)
        {
          v59 = sub_2682BD204;
          v60 = 1;
          v23 = v53;
        }

        else
        {
          v23 = v53;
          swift_storeEnumTagMultiPayload();
          v60 = 0;
          v59 = sub_2682BD208;
        }

        __swift_storeEnumTagSinglePayload(v23, v60, 1, v58);
        v80 = v57;
        OUTLINED_FUNCTION_107_1();
        swift_bridgeObjectRetain_n();
        sub_2682C260C(v59, 0);

        v61 = v80;
        v62 = v76;
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v63, v64, v65, v58);
        sub_2681D5F4C(v23, v62);
        v66 = v62 + *(v78 + 20);
        *v66 = v61;
        *(v66 + 8) = 0;
        OUTLINED_FUNCTION_1_39();
        sub_2682B5320();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = *(v51 + 16);
          sub_2682E54A4();
          v51 = v73;
        }

        v68 = *(v51 + 16);
        v67 = *(v51 + 24);
        if (v68 >= v67 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v67);
          sub_2682E54A4();
          v51 = v74;
        }

        *(v51 + 16) = v68 + 1;
        v69 = *(v77 + 80);
        OUTLINED_FUNCTION_11_7();
        v71 = *(v70 + 72);
        OUTLINED_FUNCTION_1_39();
        sub_2682B5320();
      }

      else
      {
        v23 = v53;
      }
    }

    v49 = 1;
    v50 = 1u;
  }

  while ((v52 & 1) == 0);

LABEL_20:
  OUTLINED_FUNCTION_29_0();
}

void sub_2682B8600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v20;
  a20 = v21;
  v214 = v22;
  v212 = v23;
  v25 = v24;
  v211[3] = v26;
  v28 = v27;
  v215 = v29;
  v30 = type metadata accessor for Snippet.SectionHeading();
  v31 = OUTLINED_FUNCTION_23(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_3();
  v213 = v35 - v34;
  v36 = OUTLINED_FUNCTION_3_8();
  v252 = type metadata accessor for Snippet.Reminder(v36);
  v37 = OUTLINED_FUNCTION_0_3(v252);
  v254 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19_3();
  v43 = v41 - v42;
  v45 = MEMORY[0x28223BE20](v44);
  v47 = v211 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_56_3();
  v251 = v49;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15_17();
  v232 = v51;
  v52 = OUTLINED_FUNCTION_3_8();
  v255 = type metadata accessor for Snippet.ReminderSearchResult.Section(v52);
  v53 = OUTLINED_FUNCTION_0_3(v255);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_19_3();
  v247 = v58 - v59;
  OUTLINED_FUNCTION_8_0();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = v211 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = v211 - v65;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  v68 = MEMORY[0x28223BE20](v67);
  v70 = v211 - v69;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_15_17();
  v220 = v75;
  if ((v25 & 1) == 0)
  {

    v205 = v28;
    goto LABEL_78;
  }

  v76 = *(v28 + 2);
  v77 = MEMORY[0x277D84F90];
  if (!v76)
  {
LABEL_77:
    v205 = v77;
    goto LABEL_78;
  }

  v262 = MEMORY[0x277D84F90];
  v78 = &v262;
  v211[0] = v76;
  sub_2683909A0(0, v76, 0);
  v79 = *(v55 + 80);
  OUTLINED_FUNCTION_11_7();
  v80 = 0;
  v250 = v81;
  v211[1] = &v28[v81];
  v82 = *(v55 + 72);
  v219 = v262;
  v248 = v63;
  v239 = v66;
  v227 = v70;
  v236 = v47;
  v249 = v82;
LABEL_4:
  v218 = v80;
  OUTLINED_FUNCTION_2_34();
  v83 = v224;
  sub_2682B5274();
  sub_2682B5274();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_97_2((v83 + v84));
  v235 = v85;
  v86 = *(v85 + 16);
  v217 = v87;
  if ((v87 & 1) == 0)
  {
    if (!v86)
    {
LABEL_69:
      OUTLINED_FUNCTION_0_49();
      sub_2682B52CC();
      v201 = v77;
      OUTLINED_FUNCTION_100_1();
      goto LABEL_70;
    }

    v263 = v77;
    v182 = v235;

    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_95_2();
    sub_268390728();
    v183 = 0;
    v184 = v263;
    v185 = *(v254 + 80);
    OUTLINED_FUNCTION_11_7();
    v253 = v186;
    v246 = &v186[v182];
    while (1)
    {
      OUTLINED_FUNCTION_99_1(&a10);
      if (v183 >= v187)
      {
        break;
      }

      v70 = *(v254 + 72);
      OUTLINED_FUNCTION_11_29();
      sub_2682B5274();
      v66 = v77;
      v188 = v232;
      sub_2682B5274();
      OUTLINED_FUNCTION_91_2();
      v189 = *(v78 + v188);

      *(v78 + v188) = v66;
      v78 = v188;
      OUTLINED_FUNCTION_6_27();
      sub_2682B52CC();
      v190 = v184;
      v263 = v184;
      v192 = *(v184 + 2);
      v191 = *(v184 + 3);
      if (v192 >= v191 >> 1)
      {
        OUTLINED_FUNCTION_28_13(v191);
        OUTLINED_FUNCTION_59_3();
        sub_268390728();
        v78 = v232;
        v190 = v263;
      }

      v183 = (v183 + 1);
      *(v190 + 2) = v192 + 1;
      v184 = v190;
      OUTLINED_FUNCTION_3_33();
      sub_2682B5320();
      v77 = MEMORY[0x277D84F90];
      if (v234 == v183)
      {
        OUTLINED_FUNCTION_0_49();
        sub_2682B52CC();

        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_101_1();
        OUTLINED_FUNCTION_100_1();
        v201 = v184;
        goto LABEL_70;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  if (!v86)
  {
    goto LABEL_69;
  }

  v261 = v77;
  OUTLINED_FUNCTION_95_2();
  sub_2683909A0(v88, v89, v90);
  v78 = 0;
  v223 = v261;
  v216 = v235 + v250;
  while (1)
  {
    OUTLINED_FUNCTION_99_1(&a10);
    if (v78 >= v91)
    {
      goto LABEL_85;
    }

    v222 = v78;
    OUTLINED_FUNCTION_2_34();
    v92 = v225;
    sub_2682B5274();
    sub_2682B5274();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_97_2((v92 + v93));
    v238 = v94;
    v95 = *(v94 + 16);
    v221 = v96;
    v237 = v95;
    if (v96)
    {
      break;
    }

    if (!v95)
    {
      goto LABEL_56;
    }

    v263 = v77;
    v161 = v238;

    OUTLINED_FUNCTION_70_1();
    sub_268390728();
    v162 = 0;
    v178 = v263;
    OUTLINED_FUNCTION_47_4();
    v66 = (v164 & ~v163);
    v253 = &v66[v161];
    v165 = v211[2];
    do
    {
      OUTLINED_FUNCTION_99_1(&a13);
      if (v162 >= v166)
      {
        __break(1u);
        goto LABEL_83;
      }

      v70 = *(v254 + 72);
      OUTLINED_FUNCTION_11_29();
      sub_2682B5274();
      sub_2682B5274();
      OUTLINED_FUNCTION_91_2();
      v167 = *(v78 + v165);

      *(v78 + v165) = v77;
      OUTLINED_FUNCTION_6_27();
      sub_2682B52CC();
      v168 = v178;
      v263 = v178;
      v170 = *(v178 + 2);
      v169 = *(v178 + 3);
      if (v170 >= v169 >> 1)
      {
        OUTLINED_FUNCTION_28_13(v169);
        OUTLINED_FUNCTION_59_3();
        sub_268390728();
        v168 = v263;
      }

      ++v162;
      *(v168 + 2) = v170 + 1;
      v178 = v168;
      OUTLINED_FUNCTION_3_33();
      sub_2682B5320();
      v63 = v248;
      v77 = MEMORY[0x277D84F90];
    }

    while (v237 != v162);
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();

    OUTLINED_FUNCTION_83_2();
    OUTLINED_FUNCTION_101_1();
LABEL_57:
    v177 = v226;
LABEL_58:
    OUTLINED_FUNCTION_48_7();
    v172 = v177 + v171;
    v173 = *(v177 + v171);

    *v172 = v178;
    *(v172 + 8) = v221;
    v261 = v223;
    OUTLINED_FUNCTION_75_1();
    if (v155)
    {
      OUTLINED_FUNCTION_22_2(v174);
      OUTLINED_FUNCTION_59_3();
      sub_2683909A0(v179, v180, v181);
    }

    OUTLINED_FUNCTION_104_2(&v254);
    v223 = v175;
    OUTLINED_FUNCTION_1_39();
    v78 = v176;
    sub_2682B5320();
    if (v78 == v234)
    {
      OUTLINED_FUNCTION_0_49();
      sub_2682B52CC();
      OUTLINED_FUNCTION_100_1();
      v201 = v223;
LABEL_70:
      v193 = v70;
      OUTLINED_FUNCTION_48_7();
      v195 = v78 + v194;
      v196 = *(v78 + v194);

      *v195 = v201;
      v195[8] = v217;
      v262 = v219;
      OUTLINED_FUNCTION_75_1();
      if (v155)
      {
        OUTLINED_FUNCTION_22_2(v197);
        v78 = &v262;
        OUTLINED_FUNCTION_59_3();
        sub_2683909A0(v202, v203, v204);
        OUTLINED_FUNCTION_100_1();
        v198 = v262;
      }

      v199 = v218 + 1;
      *(v198 + 2) = v201;
      v219 = v198;
      OUTLINED_FUNCTION_1_39();
      sub_2682B5320();
      v80 = v199;
      v200 = v199 == v211[0];
      v70 = v193;
      if (v200)
      {
        goto LABEL_81;
      }

      goto LABEL_4;
    }
  }

  if (!v95)
  {
LABEL_56:
    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v178 = v77;
    goto LABEL_57;
  }

  v260 = v77;
  sub_2683909A0(0, v95, 0);
  v97 = 0;
  v231 = v260;
  v228 = v238 + v250;
LABEL_11:
  OUTLINED_FUNCTION_99_1(&a13);
  if (v97 >= v98)
  {
    goto LABEL_84;
  }

  v230 = v97;
  OUTLINED_FUNCTION_2_34();
  sub_2682B5274();
  sub_2682B5274();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_97_2(&v70[v99]);
  v246 = v100;
  v70 = *(v100 + 16);
  v229 = v101;
  v242 = v70;
  if (v101)
  {
    if (!v70)
    {
LABEL_43:
      OUTLINED_FUNCTION_0_49();
      v70 = v148;
      sub_2682B52CC();
      v149 = v77;
      v150 = v233;
      goto LABEL_45;
    }

    v259 = v77;
    sub_2683909A0(0, v70, 0);
    v102 = 0;
    v103 = v259;
    v240 = &v246[v250];
    while (2)
    {
      if (v102 >= *(v246 + 2))
      {
        goto LABEL_80;
      }

      v244 = v102;
      v245 = v103;
      OUTLINED_FUNCTION_2_34();
      sub_2682B5274();
      sub_2682B5274();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_97_2(&v66[v104]);
      v253 = v105;
      v106 = *(v105 + 16);
      v243 = v107;
      if (v107)
      {
        if (v106)
        {
          v108 = v43;
          v258 = v77;
          v109 = OUTLINED_FUNCTION_54_4();
          sub_2683909A0(v109, v110, v111);
          v112 = v258;
          v113 = &v253[v250];
          do
          {
            OUTLINED_FUNCTION_2_34();
            v114 = v247;
            sub_2682B5274();
            sub_2682B5274();
            v115 = v255;
            v116 = (v114 + *(v255 + 20));
            v117 = *v116;
            LOBYTE(v116) = *(v116 + 8);
            v256 = v117;
            v257 = v116;

            sub_2682B58E4();

            OUTLINED_FUNCTION_0_49();
            sub_2682B52CC();
            v118 = v263;
            LOBYTE(v114) = v264;
            v119 = &v63[*(v115 + 20)];
            v120 = *v119;

            *v119 = v118;
            v119[8] = v114;
            v258 = v112;
            v66 = *(v112 + 2);
            v121 = *(v112 + 3);
            if (v66 >= v121 >> 1)
            {
              v123 = OUTLINED_FUNCTION_22_2(v121);
              sub_2683909A0(v123, (v66 + 1), 1);
              v112 = v258;
            }

            *(v112 + 2) = v66 + 1;
            v122 = v249;
            OUTLINED_FUNCTION_1_39();
            sub_2682B5320();
            v113 += v122;
            --v106;
          }

          while (v106);
          OUTLINED_FUNCTION_0_49();
          OUTLINED_FUNCTION_83_2();
          sub_2682B52CC();
          v43 = v108;
          v77 = MEMORY[0x277D84F90];
LABEL_31:
          v70 = v242;
LABEL_32:
          OUTLINED_FUNCTION_48_7();
          v133 = v241 + v132;
          v134 = *(v241 + v132);

          *v133 = v112;
          *(v133 + 8) = v243;
          v103 = v245;
          v259 = v245;
          v136 = *(v245 + 2);
          v135 = *(v245 + 3);
          if (v136 >= v135 >> 1)
          {
            OUTLINED_FUNCTION_22_2(v135);
            OUTLINED_FUNCTION_59_3();
            sub_2683909A0(v138, v139, v140);
            v103 = v259;
          }

          v137 = v244 + 1;
          *(v103 + 2) = v136 + 1;
          v102 = v137;
          OUTLINED_FUNCTION_1_39();
          sub_2682B5320();
          if (v102 == v70)
          {
            OUTLINED_FUNCTION_0_49();
            OUTLINED_FUNCTION_101_1();
            sub_2682B52CC();
            goto LABEL_44;
          }

          continue;
        }
      }

      else if (v106)
      {
        v263 = v77;

        OUTLINED_FUNCTION_54_4();
        sub_268390728();
        v124 = 0;
        v112 = v263;
        OUTLINED_FUNCTION_47_4();
        v66 = (v126 & ~v125);
        while (v124 < *(v253 + 2))
        {
          v127 = *(v254 + 72);
          OUTLINED_FUNCTION_11_29();
          sub_2682B5274();
          OUTLINED_FUNCTION_19_2();
          sub_2682B5274();
          OUTLINED_FUNCTION_91_2();
          v128 = *(&v263 + v43);

          *(&v263 + v43) = v77;
          OUTLINED_FUNCTION_6_27();
          sub_2682B52CC();
          v263 = v112;
          v129 = v43;
          v131 = *(v112 + 2);
          v130 = *(v112 + 3);
          if (v131 >= v130 >> 1)
          {
            OUTLINED_FUNCTION_28_13(v130);
            sub_268390728();
            v112 = v263;
          }

          ++v124;
          *(v112 + 2) = v131 + 1;
          OUTLINED_FUNCTION_3_33();
          sub_2682B5320();
          v43 = v129;
          v63 = v248;
          v77 = MEMORY[0x277D84F90];
          if (v106 == v124)
          {
            OUTLINED_FUNCTION_0_49();
            OUTLINED_FUNCTION_83_2();
            sub_2682B52CC();

            v47 = v236;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_77;
      }

      break;
    }

    OUTLINED_FUNCTION_0_49();
    sub_2682B52CC();
    v112 = v77;
    goto LABEL_32;
  }

  if (!v70)
  {
    goto LABEL_43;
  }

  v263 = v77;
  v141 = v246;

  OUTLINED_FUNCTION_70_1();
  sub_268390728();
  v142 = 0;
  v103 = v263;
  OUTLINED_FUNCTION_47_4();
  v253 = &v141[v144 & ~v143];
  while (v142 < *(v246 + 2))
  {
    v70 = *(v254 + 72);
    v66 = v47;
    sub_2682B5274();
    OUTLINED_FUNCTION_113();
    sub_2682B5274();
    OUTLINED_FUNCTION_91_2();
    v145 = *(type metadata accessor for Snippet.Reminder + v47);

    *(type metadata accessor for Snippet.Reminder + v47) = v77;
    OUTLINED_FUNCTION_6_27();
    sub_2682B52CC();
    v263 = v103;
    v147 = *(v103 + 2);
    v146 = *(v103 + 3);
    if (v147 >= v146 >> 1)
    {
      OUTLINED_FUNCTION_28_13(v146);
      OUTLINED_FUNCTION_59_3();
      sub_268390728();
      v103 = v263;
    }

    ++v142;
    *(v103 + 2) = v147 + 1;
    OUTLINED_FUNCTION_3_33();
    sub_2682B5320();
    v77 = MEMORY[0x277D84F90];
    if (v242 == v142)
    {
      OUTLINED_FUNCTION_0_49();
      OUTLINED_FUNCTION_101_1();
      sub_2682B52CC();

      OUTLINED_FUNCTION_83_2();
LABEL_44:
      v149 = v103;
      v150 = v233;
      v95 = v237;
LABEL_45:
      OUTLINED_FUNCTION_48_7();
      v152 = v150 + v151;
      v153 = *(v150 + v151);

      *v152 = v149;
      *(v152 + 8) = v229;
      v260 = v231;
      OUTLINED_FUNCTION_75_1();
      if (v155)
      {
        OUTLINED_FUNCTION_22_2(v154);
        OUTLINED_FUNCTION_59_3();
        sub_2683909A0(v158, v159, v160);
      }

      OUTLINED_FUNCTION_104_2(&v262);
      v231 = v156;
      OUTLINED_FUNCTION_1_39();
      v97 = v157;
      sub_2682B5320();
      if (v97 == v95)
      {
        OUTLINED_FUNCTION_0_49();
        sub_2682B52CC();
        v177 = v226;
        v178 = v231;
        goto LABEL_58;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  v205 = v219;
LABEL_78:
  sub_2682B5274();
  v206 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v207 = v206[6];
  v263 = 0;
  v264 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
  v208 = v215;
  sub_2683CB838();
  v209 = v206[7];
  LOBYTE(v263) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
  sub_2683CB838();
  *v208 = v205;
  v210 = v206[5];
  sub_2682B5274();
  v263 = v212;
  v264 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  sub_2683CB868();
  LOBYTE(v263) = v214;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  sub_2683CB868();
  OUTLINED_FUNCTION_5_30();
  sub_2682B52CC();
  OUTLINED_FUNCTION_29_0();
}

void sub_2682B96A4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v99 - v6;
  v8 = sub_2683CB528();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  OUTLINED_FUNCTION_23(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v99 - v21;
  v113 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v23 = OUTLINED_FUNCTION_0_3(v113);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15_17();
  v101 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v31 = OUTLINED_FUNCTION_0_3(v30);
  v111 = v32;
  v112 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_0();
  v116 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v38 = OUTLINED_FUNCTION_23(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19_3();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_56_3();
  v115 = v45;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v46);
  sub_2682CC640();
  if (v119)
  {
    __swift_project_boxed_opaque_existential_1(&v117, v119);
    sub_268157E08();
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_0(&v117);
    if (v48)
    {
      sub_2682BAFB0(v1, v48, 0, &v117);

      v49 = v117;
      if (v118 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
        v50 = *(v25 + 72);
        v51 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_2683D1EC0;
        v53 = type metadata accessor for Snippet.SectionHeading();
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);

        v60 = OUTLINED_FUNCTION_113();
        sub_2681D5F4C(v60, v61);
        OUTLINED_FUNCTION_48_7();
        v63 = v52 + v51 + v62;
        *v63 = v49;
        *(v63 + 8) = 0;
      }

LABEL_21:
      OUTLINED_FUNCTION_29_0();
      return;
    }
  }

  else
  {
    sub_26812D9E0(&v117, &qword_28024ED48, &qword_2683E3D20);
  }

  v64 = v8;
  v106 = v43;
  v100 = v25;
  v107 = v16;

  v66 = sub_2682B34C4(v65);
  v67 = sub_2682C0944(v66);

  v117 = v67;
  sub_2682C26CC(&v117);
  v68 = 0;
  v69 = v117;
  v104 = (v11 + 16);
  v105 = (v11 + 32);
  v103 = (v11 + 8);
  v102 = MEMORY[0x277D84F90];
  v114 = *(v117 + 16);
  v109 = v7;
  v110 = v8;
  v70 = v115;
  v108 = v117;
  while (1)
  {
    if (v114 == v68)
    {

      goto LABEL_21;
    }

    if (v68 >= *(v69 + 16))
    {
      break;
    }

    v71 = v22;
    v72 = *(v111 + 80);
    OUTLINED_FUNCTION_11_7();
    v74 = *(v73 + 72);
    v75 = v116;
    sub_2682CC640();
    v76 = *(v75 + *(v112 + 48));
    sub_2682CC640();
    OUTLINED_FUNCTION_72(v7, 1, v64);
    if (v77)
    {
      v78 = OUTLINED_FUNCTION_55_3();
      sub_26812D9E0(v78, v79, qword_2683D5760);
      v82 = type metadata accessor for Snippet.SectionHeading();
      v81 = v106;
      OUTLINED_FUNCTION_92_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_89_1(v81);
      v117 = v76;

      sub_2682C2554(&v117, sub_2682C4014, sub_2682C2CB0);
      v22 = v71;
    }

    else
    {
      v80 = v107;
      (*v105)(v107, v7, v64);
      (*v104)(v70, v80, v64);
      v81 = v70;
      v82 = type metadata accessor for Snippet.SectionHeading();
      OUTLINED_FUNCTION_92_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_89_1(v81);
      v117 = v76;

      sub_2682C2554(&v117, sub_2682C4A88, sub_2682C2F54);
      v22 = v71;
      (*v103)(v80, v64);
    }

    v83 = v117;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v82);
    sub_2681D5F4C(v81, v22);
    v87 = v113;
    v88 = &v22[*(v113 + 20)];
    *v88 = v83;
    v88[8] = 0;
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v87);
    sub_26812D9E0(v116, &qword_280251630, &qword_2683E3D70);
    OUTLINED_FUNCTION_72(v22, 1, v87);
    if (v77)
    {
      sub_26812D9E0(v22, &qword_280251420, &qword_2683E3448);
      ++v68;
      v7 = v109;
      v64 = v110;
      v70 = v115;
      v69 = v108;
    }

    else
    {
      sub_2682B5320();
      sub_2682B5320();
      v89 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v110;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v96 = *(v89 + 16);
        sub_2682E54A4();
        v89 = v97;
      }

      v92 = *(v89 + 16);
      v91 = *(v89 + 24);
      v102 = v89;
      if (v92 >= v91 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v91);
        sub_2682E54A4();
        v102 = v98;
      }

      ++v68;
      *(v102 + 16) = v92 + 1;
      v93 = *(v100 + 80);
      OUTLINED_FUNCTION_11_7();
      v95 = *(v94 + 72);
      OUTLINED_FUNCTION_1_39();
      sub_2682B5320();
      v70 = v115;
      v69 = v108;
      v7 = v109;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_2682B9EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  sub_2682CC640();
  if (!v29)
  {
    sub_26812D9E0(&v27, &qword_28024ED48, &qword_2683E3D20);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v27, v29);
  sub_268157E08();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(&v27);
  if (!v9)
  {
LABEL_6:
    OUTLINED_FUNCTION_113();
    sub_2682BA0C0();
    return v24;
  }

  sub_2682BAFB0(a1, v9, 0, &v27);

  v10 = v27;
  if (v28 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
    v11 = (type metadata accessor for Snippet.ReminderSearchResult.Section(0) - 8);
    v12 = *(*v11 + 72);
    v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2683D1EC0;
    v15 = v14 + v13;
    v16 = type metadata accessor for Snippet.SectionHeading();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);

    sub_2681D5F4C(v7, v15);
    v23 = v15 + v11[7];
    *v23 = v10;
    *(v23 + 8) = 0;

    return v14;
  }

  return v10;
}

void sub_2682BA0C0()
{
  OUTLINED_FUNCTION_30_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v1 = OUTLINED_FUNCTION_23(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_19_3();
  v51 = v4 - v5;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_17();
  v57 = v7;
  v8 = OUTLINED_FUNCTION_3_8();
  v9 = type metadata accessor for Snippet.ReminderSearchResult.Section(v8);
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v54 = v11;
  v55 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v58 = v15 - v14;

  v17 = sub_2682B3BB4(v16);
  v18 = sub_2682C0A44(v17);

  v64[0] = v18;
  sub_2682C2780(v64);
  v19 = v64[0];
  v20 = v64[0][2];
  if (v20)
  {
    v68 = MEMORY[0x277D84F90];
    v21 = OUTLINED_FUNCTION_70_1();
    sub_2683909A0(v21, v20, 0);
    v22 = 0;
    v23 = v19 + 4;
    v24 = v68;
    v52 = v20 - 1;
    v53 = v19;
    while (v22 < v19[2])
    {
      memcpy(v64, v23, sizeof(v64));
      v66 = *v23;
      v67 = v23[2];
      v25 = v64[13];
      v26 = v64[3];
      memcpy(v65, v23 + 4, sizeof(v65));
      if (v64[3])
      {
        v56 = v64[13];
        v27 = v23[2];
        *v57 = *v23;
        *(v57 + 16) = v27;
        *(v57 + 24) = v26;
        memcpy((v57 + 32), v65, 0x41uLL);
        v28 = type metadata accessor for Snippet.SectionHeading();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_89_1(v57);
        sub_2682CC640();
        if (v61)
        {
          __swift_project_boxed_opaque_existential_1(v60, v61);
          memcpy(v59, v65, sizeof(v59));
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          sub_2681575D0();
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_0(v60);
        }

        else
        {
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          OUTLINED_FUNCTION_79_1();
          sub_2682CC640();
          sub_26812D9E0(v60, &qword_28024ED48, &qword_2683E3D20);
          v30 = 0;
        }

        v19 = v53;
        sub_2682BAFB0(v56, v30, 1, &v62);

        v39 = v62;
        v40 = v63;
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v28);
        sub_2681D5F4C(v57, v58);
        sub_26812D9E0(v64, &qword_280251640, &qword_2683E3D80);
        v44 = v58 + *(v55 + 20);
        *v44 = v39;
        *(v44 + 8) = v40;
      }

      else
      {
        v31 = type metadata accessor for Snippet.SectionHeading();
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
        OUTLINED_FUNCTION_4_0();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
        OUTLINED_FUNCTION_79_1();
        sub_2682CC640();
        sub_2681D5F4C(v51, v58);
        v38 = v58 + *(v55 + 20);

        sub_26812D9E0(v64, &qword_280251640, &qword_2683E3D80);
        *v38 = v25;
        *(v38 + 8) = 0;
        v19 = v53;
      }

      v68 = v24;
      v46 = *(v24 + 16);
      v45 = *(v24 + 24);
      if (v46 >= v45 >> 1)
      {
        v50 = OUTLINED_FUNCTION_28_13(v45);
        sub_2683909A0(v50, v46 + 1, 1);
        v24 = v68;
      }

      *(v24 + 16) = v46 + 1;
      v47 = *(v54 + 80);
      OUTLINED_FUNCTION_11_7();
      v49 = *(v48 + 72);
      OUTLINED_FUNCTION_1_39();
      sub_2682B5320();
      if (v52 == v22)
      {

        goto LABEL_16;
      }

      v23 += 14;
      ++v22;
    }

    __break(1u);

    __break(1u);
  }

  else
  {

LABEL_16:
    OUTLINED_FUNCTION_29_0();
  }
}

void sub_2682BA568()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v38 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v8 = OUTLINED_FUNCTION_1(v38);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v13 = (v12 - v11);
  v14 = type metadata accessor for Snippet.SectionHeading();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_3();
  v20 = v18 - v19;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_17();
  v23 = v22;
  v39 = *v3;
  switch(v5)
  {
    case 0:
      OUTLINED_FUNCTION_55_3();
      sub_2682B80C8();
      OUTLINED_FUNCTION_29_13();
      goto LABEL_8;
    case 1:
      OUTLINED_FUNCTION_55_3();
      sub_2682B96A4();
      OUTLINED_FUNCTION_29_13();
      goto LABEL_8;
    case 2:
      v26 = OUTLINED_FUNCTION_55_3();
      sub_2682B9EA8(v26);
      OUTLINED_FUNCTION_29_13();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      OUTLINED_FUNCTION_62_1();
      v27 = *(v20 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v1 = v7;
      v28 = *(v20 + 20);
      sub_2682B5274();
      OUTLINED_FUNCTION_73_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      goto LABEL_12;
    case 3:
    case 6:
      OUTLINED_FUNCTION_55_3();
      sub_2682BA0C0();
      OUTLINED_FUNCTION_29_13();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      sub_2683CB838();
      v24 = *(v20 + 28);
      OUTLINED_FUNCTION_63_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v13 = v7;
      v25 = *(v20 + 20);
      sub_2682B5274();
      OUTLINED_FUNCTION_73_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_66_1();
      sub_2683CB868();
      sub_2682B52CC();
      sub_2682B52CC();
      Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_13;
    case 4:
      v33 = OUTLINED_FUNCTION_55_3();
      sub_2682B9EA8(v33);
      OUTLINED_FUNCTION_29_13();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      goto LABEL_10;
    case 5:
      v34 = OUTLINED_FUNCTION_55_3();
      sub_2682B9EA8(v34);
      OUTLINED_FUNCTION_29_13();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_27();
      sub_2682B5274();
      v20 = v38;
      v35 = *(v38 + 24);
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      OUTLINED_FUNCTION_62_1();
      v36 = *(v20 + 28);
      OUTLINED_FUNCTION_63_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v1 = v7;
      v37 = v1 + *(v20 + 20);
      break;
    default:

      OUTLINED_FUNCTION_55_3();
      sub_2682BA0C0();
      v30 = v29;
      *v23 = v7;
      v23[1] = v5;
      swift_storeEnumTagMultiPayload();
      sub_2682B5274();
      OUTLINED_FUNCTION_21_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      OUTLINED_FUNCTION_62_1();
      v31 = *(v20 + 28);
      OUTLINED_FUNCTION_63_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v1 = v30;
      v32 = v1 + *(v20 + 20);
      break;
  }

  sub_2682B5274();
  OUTLINED_FUNCTION_73_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
  OUTLINED_FUNCTION_66_1();
  sub_2683CB868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
  OUTLINED_FUNCTION_66_1();
  sub_2683CB868();
LABEL_12:
  sub_2682B52CC();
LABEL_13:
  sub_2682B52CC();
  type metadata accessor for Snippet();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2682BAAF4(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_2683CB528();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = type metadata accessor for Snippet.Reminder(0);
  v25 = *(v24 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_2683CB858();
  v26 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v26) == 1)
  {
    sub_26812D9E0(v16, &qword_28024D5D0, &unk_2683D2CA0);
    v27 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
    sub_2683CB858();
    sub_2682B52CC();
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v27, 1, v2);
  v28 = v43 + *(v24 + 52);
  sub_2683CB858();
  if (__swift_getEnumTagSinglePayload(v14, 1, v26) == 1)
  {
    sub_26812D9E0(v14, &qword_28024D5D0, &unk_2683D2CA0);
    v29 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
    sub_2683CB858();
    sub_2682B52CC();
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v29, 1, v2);
  v30 = *(v44 + 48);
  sub_2682CC5D8();
  sub_2682CC5D8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    sub_26812D9E0(&v9[v30], &qword_28024DB08, qword_2683D5760);
    v31 = 0;
  }

  else if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v2) == 1)
  {
    sub_26812D9E0(v9, &qword_28024DB08, qword_2683D5760);
    v31 = 1;
  }

  else
  {
    v32 = v42;
    v33 = *(v42 + 32);
    v34 = v40;
    v33(v40, v9, v2);
    v35 = &v9[v30];
    v36 = v41;
    v33(v41, v35, v2);
    v31 = sub_2683CB4C8();
    v37 = *(v32 + 8);
    v37(v36, v2);
    v37(v34, v2);
  }

  return v31 & 1;
}

void sub_2682BAFB0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v243 = a3;
  v278 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v235 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v244 = v235 - v11;
  v287 = type metadata accessor for Snippet.Reminder(0);
  v285 = *(v287 - 8);
  v12 = *(v285 + 64);
  v13 = MEMORY[0x28223BE20](v287);
  v274 = v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v293 = v235 - v16;
  MEMORY[0x28223BE20](v15);
  v270 = v235 - v17;
  v18 = sub_2683CB598();
  v290 = *(v18 - 8);
  v291 = v18;
  v19 = *(v290 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v289 = v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v240 = v235 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v235 - v25;
  v286 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v273 = *(v286 - 8);
  v27 = *(v273 + 64);
  v28 = MEMORY[0x28223BE20](v286);
  v30 = v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v235 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v249 = v235 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v241 = v235 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v235 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v242 = v235 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v246 = v235 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v245 = v235 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v48 = MEMORY[0x28223BE20](v47);
  v298 = v235 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v288 = v235 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v283 = v235 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v272 = v235 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v267 = v235 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v263 = v235 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  MEMORY[0x28223BE20](v60);
  v262 = v235 - v61;
  v62 = _s14descr2878F8F29V11ListContentOMa();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  if (!a2)
  {
    *a4 = v278;
    *(a4 + 8) = 0;

    return;
  }

  v238 = v30;
  v235[4] = v33;
  v236 = v10;
  v237 = v40;
  v239 = a4;
  v65 = *(a2 + 16);
  if (v65)
  {
    v66 = a2 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v67 = *(v64 + 72);
    v277 = MEMORY[0x277D84F90];
    v68 = v288;
    do
    {
      sub_2682B5274();
      sub_2682BD554(v278, v26);
      sub_2682B52CC();
      if (__swift_getEnumTagSinglePayload(v26, 1, v286) == 1)
      {
        sub_26812D9E0(v26, &qword_280251420, &qword_2683E3448);
      }

      else
      {
        sub_2682B5320();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v277;
        }

        else
        {
          v73 = *(v277 + 16);
          sub_2682E54A4();
          v69 = v74;
        }

        v70 = *(v69 + 16);
        if (v70 >= *(v69 + 24) >> 1)
        {
          sub_2682E54A4();
          v69 = v75;
        }

        *(v69 + 16) = v70 + 1;
        v71 = (*(v273 + 80) + 32) & ~*(v273 + 80);
        v277 = v69;
        v72 = *(v273 + 72);
        sub_2682B5320();
        v68 = v288;
      }

      v66 += v67;
      --v65;
    }

    while (v65);
  }

  else
  {
    v277 = MEMORY[0x277D84F90];
    v68 = v288;
  }

  v76 = MEMORY[0x277D84F90];
  v247 = *(v277 + 16);
  if (!v247)
  {
    v79 = MEMORY[0x277D84F90];
    v80 = v285;
LABEL_130:
    v167 = *(v79 + 16);
    if (v167)
    {
      v303 = MEMORY[0x277D84F90];
      v168 = v79;
      sub_2683909F8(0, v167, 0);
      v169 = v303;
      v170 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v261 = v168;
      v171 = v168 + v170;
      v172 = *(v80 + 72);
      v173 = v291;
      v174 = (v290 + 16);
      v175 = v240;
      do
      {
        v176 = v270;
        sub_2682B5274();
        (*v174)(v175, v176, v173);
        sub_2682B52CC();
        v303 = v169;
        v178 = *(v169 + 16);
        v177 = *(v169 + 24);
        if (v178 >= v177 >> 1)
        {
          sub_2683909F8(v177 > 1, v178 + 1, 1);
          v169 = v303;
        }

        *(v169 + 16) = v178 + 1;
        (*(v290 + 32))(v169 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v178, v175, v173);
        v171 += v172;
        --v167;
      }

      while (v167);
    }

    else
    {
LABEL_138:

      v169 = MEMORY[0x277D84F90];
    }

    v179 = sub_2682B45FC(v169);
    v180 = 0;
    v297 = *(v278 + 16);
    v298 = MEMORY[0x277D84F90];
    while (v180 != v297)
    {
      v181 = *(v285 + 72);
      v300 = (*(v285 + 80) + 32) & ~*(v285 + 80);
      v301 = v180 + 1;
      v299 = v181;
      sub_2682B5274();
      if (*(v179 + 16))
      {
        v182 = *(v179 + 40);
        sub_2682C22DC(&qword_28024D890);
        v183 = sub_2683CF9F8();
        v184 = ~(-1 << *(v179 + 32));
        while (1)
        {
          v185 = v183 & v184;
          if (((*(v179 + 56 + (((v183 & v184) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v183 & v184)) & 1) == 0)
          {
            break;
          }

          v187 = v289;
          v186 = v290;
          v188 = v291;
          (*(v290 + 16))(v289, *(v179 + 48) + *(v290 + 72) * v185, v291);
          sub_2682C22DC(&qword_28024DBA8);
          v189 = sub_2683CFA58();
          (*(v186 + 8))(v187, v188);
          v183 = v185 + 1;
          if (v189)
          {
            sub_2682B52CC();
            goto LABEL_151;
          }
        }
      }

      sub_2682B5320();
      v190 = v298;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v303 = v190;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v192 = *(v190 + 2);
        sub_268390728();
        v190 = v303;
      }

      v193 = *(v190 + 2);
      if (v193 >= *(v190 + 3) >> 1)
      {
        sub_268390728();
        v190 = v303;
      }

      *(v190 + 2) = v193 + 1;
      v298 = v190;
      sub_2682B5320();
LABEL_151:
      v180 = v301;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
    v194 = *(v273 + 72);
    v195 = (*(v273 + 80) + 32) & ~*(v273 + 80);
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_2683D1EC0;
    v197 = type metadata accessor for Snippet.SectionHeading();
    v198 = v244;
    __swift_storeEnumTagSinglePayload(v244, 1, 1, v197);
    v301 = v197;
    __swift_storeEnumTagSinglePayload(v196 + v195, 1, 1, v197);
    sub_2681D5F4C(v198, v196 + v195);
    v199 = v196 + v195 + *(v286 + 20);
    *v199 = v298;
    *(v199 + 8) = 0;
    v303 = v277;
    sub_2682C0518(v196);
    v200 = 0;
    v201 = v303;
    v202 = *(v303 + 16);
    v203 = MEMORY[0x277D84F90];
LABEL_153:
    v204 = v201 + v195 + v194 * v200;
    while (v202 != v200)
    {
      if (v200 >= *(v201 + 16))
      {
        goto LABEL_202;
      }

      sub_2682B5274();
      Snippet.ReminderSearchResult.Section.isEmpty.getter();
      if ((v205 & 1) == 0)
      {
        sub_2682B5320();
        v206 = swift_isUniquelyReferenced_nonNull_native();
        v303 = v203;
        if ((v206 & 1) == 0)
        {
          sub_2683909A0(0, *(v203 + 16) + 1, 1);
          v203 = v303;
        }

        v208 = *(v203 + 16);
        v207 = *(v203 + 24);
        if (v208 >= v207 >> 1)
        {
          sub_2683909A0(v207 > 1, v208 + 1, 1);
          v203 = v303;
        }

        ++v200;
        *(v203 + 16) = v208 + 1;
        sub_2682B5320();
        goto LABEL_153;
      }

      sub_2682B52CC();
      v204 += v194;
      ++v200;
    }

    if (v243)
    {
      v209 = sub_2682BE1C4(v203);

      v210 = 0;
      v211 = *(v209 + 16);
      v212 = MEMORY[0x277D84F90];
LABEL_165:
      v213 = v209 + v195 + v194 * v210;
      while (v211 != v210)
      {
        if (v210 >= *(v209 + 16))
        {
          goto LABEL_203;
        }

        sub_2682B5274();
        Snippet.ReminderSearchResult.Section.isEmpty.getter();
        if ((v214 & 1) == 0)
        {
          sub_2682B5320();
          v215 = swift_isUniquelyReferenced_nonNull_native();
          v303 = v212;
          if ((v215 & 1) == 0)
          {
            sub_2683909A0(0, *(v212 + 16) + 1, 1);
            v212 = v303;
          }

          v217 = *(v212 + 16);
          v216 = *(v212 + 24);
          if (v217 >= v216 >> 1)
          {
            sub_2683909A0(v216 > 1, v217 + 1, 1);
            v212 = v303;
          }

          ++v210;
          *(v212 + 16) = v217 + 1;
          sub_2682B5320();
          goto LABEL_165;
        }

        sub_2682B52CC();
        v213 += v194;
        ++v210;
      }

      v226 = v237;
      if (*(v212 + 16) == 1)
      {
        sub_2682B5274();
        v227 = sub_2682BF2F8();
        sub_2682B52CC();
        if (v227)
        {
          sub_2682B5274();
LABEL_192:

          v230 = &v226[*(v286 + 20)];
          v231 = *v230;
          v232 = v230[8];

          sub_2682B52CC();
          v233 = v239;
          *v239 = v231;
          *(v233 + 8) = v232;
          return;
        }
      }

      v234 = v239;
      *v239 = v212;
    }

    else
    {
      v218 = 0;
      v219 = *(v203 + 16);
      v220 = MEMORY[0x277D84F90];
LABEL_176:
      v221 = v203 + v195 + v194 * v218;
      while (v219 != v218)
      {
        if (v218 >= *(v203 + 16))
        {
          goto LABEL_204;
        }

        sub_2682B5274();
        Snippet.ReminderSearchResult.Section.isEmpty.getter();
        if ((v222 & 1) == 0)
        {
          sub_2682B5320();
          v223 = swift_isUniquelyReferenced_nonNull_native();
          v303 = v220;
          if ((v223 & 1) == 0)
          {
            sub_2683909A0(0, *(v220 + 16) + 1, 1);
            v220 = v303;
          }

          v225 = *(v220 + 16);
          v224 = *(v220 + 24);
          if (v225 >= v224 >> 1)
          {
            sub_2683909A0(v224 > 1, v225 + 1, 1);
            v220 = v303;
          }

          ++v218;
          *(v220 + 16) = v225 + 1;
          sub_2682B5320();
          goto LABEL_176;
        }

        sub_2682B52CC();
        v221 += v194;
        ++v218;
      }

      if (*(v220 + 16) == 1)
      {
        sub_2682B5274();
        v228 = v236;
        sub_2682CC640();
        sub_2682B52CC();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v228, 1, v301);
        sub_26812D9E0(v228, &qword_28024DAF8, &qword_2683E3440);
        if (EnumTagSinglePayload == 1)
        {
          v226 = v237;
          sub_2682B5274();
          goto LABEL_192;
        }
      }

      v234 = v239;
      *v239 = v220;
    }

    *(v234 + 8) = 1;
    return;
  }

  v77 = 0;
  v300 = (*(v273 + 80) + 32) & ~*(v273 + 80);
  v251 = v277 + v300;
  v250 = &v262[*(v286 + 20)];
  v78 = *(v273 + 72);
  v79 = MEMORY[0x277D84F90];
  v80 = v285;
  v81 = v298;
  while (1)
  {
    v261 = v79;
    v258 = v77;
    sub_2682B5274();
    v82 = *v250;
    if (v250[8])
    {
      break;
    }

LABEL_117:
    sub_2682B52CC();
    v155 = *(v76 + 16);
    v156 = *(v261 + 16);
    if (__OFADD__(v156, v155))
    {
      goto LABEL_213;
    }

    v268 = v76;
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v261;
    if ((v157 & 1) == 0 || v156 + v155 > *(v261 + 24) >> 1)
    {
      sub_2682E4B38();
      v158 = v159;
    }

    if (*(v268 + 16))
    {
      if ((*(v158 + 24) >> 1) - *(v158 + 16) < v155)
      {
        goto LABEL_217;
      }

      v160 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v161 = *(v80 + 72);
      v162 = v158;
      swift_arrayInitWithCopy();

      v79 = v162;
      v163 = v258;
      if (v155)
      {
        v164 = *(v162 + 16);
        v111 = __OFADD__(v164, v155);
        v165 = v164 + v155;
        if (v111)
        {
          goto LABEL_220;
        }

        *(v162 + 16) = v165;
      }
    }

    else
    {
      v166 = v158;

      v79 = v166;
      v163 = v258;
      if (v155)
      {
        goto LABEL_214;
      }
    }

    v77 = v163 + 1;
    v76 = MEMORY[0x277D84F90];
    if (v77 == v247)
    {
      goto LABEL_130;
    }
  }

  v248 = *(v82 + 16);
  if (!v248)
  {
    goto LABEL_117;
  }

  v253 = v82 + v300;
  v252 = &v263[*(v286 + 20)];
  v235[1] = v82;

  v83 = 0;
  v268 = v76;
  while (1)
  {
    v259 = v83;
    sub_2682B5274();
    v84 = *v252;
    if (v252[8])
    {
      break;
    }

LABEL_104:
    sub_2682B52CC();
    v145 = *(v76 + 16);
    v146 = *(v268 + 16);
    if (__OFADD__(v146, v145))
    {
      goto LABEL_211;
    }

    v269 = v76;
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v268;
    if ((v147 & 1) == 0 || v146 + v145 > *(v268 + 24) >> 1)
    {
      sub_2682E4B38();
      v148 = v149;
    }

    v150 = *(v269 + 16);
    v268 = v148;
    if (v150)
    {
      if ((*(v148 + 24) >> 1) - *(v148 + 16) < v145)
      {
        goto LABEL_216;
      }

      v151 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v152 = *(v80 + 72);
      swift_arrayInitWithCopy();

      if (v145)
      {
        v153 = *(v268 + 16);
        v111 = __OFADD__(v153, v145);
        v154 = v153 + v145;
        if (v111)
        {
          goto LABEL_219;
        }

        *(v268 + 16) = v154;
      }
    }

    else
    {

      if (v145)
      {
        goto LABEL_212;
      }
    }

    v83 = v259 + 1;
    v76 = MEMORY[0x277D84F90];
    if (v259 + 1 == v248)
    {

      v76 = v268;
      goto LABEL_117;
    }
  }

  v254 = *(v84 + 16);
  if (!v254)
  {
    goto LABEL_104;
  }

  v257 = v84 + v300;
  v256 = &v267[*(v286 + 20)];
  v235[2] = v84;

  v85 = 0;
  v269 = v76;
  while (1)
  {
    v260 = v85;
    sub_2682B5274();
    v86 = *v256;
    if (v256[8])
    {
      break;
    }

LABEL_91:
    sub_2682B52CC();
    v135 = *(v76 + 16);
    v136 = *(v269 + 16);
    if (__OFADD__(v136, v135))
    {
      goto LABEL_209;
    }

    v275 = v76;
    v137 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v269;
    if ((v137 & 1) == 0 || v136 + v135 > *(v269 + 24) >> 1)
    {
      sub_2682E4B38();
      v138 = v139;
    }

    v140 = *(v275 + 16);
    v269 = v138;
    if (v140)
    {
      if ((*(v138 + 24) >> 1) - *(v138 + 16) < v135)
      {
        goto LABEL_215;
      }

      v141 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v142 = *(v80 + 72);
      swift_arrayInitWithCopy();

      if (v135)
      {
        v143 = *(v269 + 16);
        v111 = __OFADD__(v143, v135);
        v144 = v143 + v135;
        if (v111)
        {
          goto LABEL_218;
        }

        *(v269 + 16) = v144;
      }
    }

    else
    {

      if (v135)
      {
        goto LABEL_210;
      }
    }

    v85 = v260 + 1;
    v76 = MEMORY[0x277D84F90];
    if (v260 + 1 == v254)
    {

      v76 = v269;
      goto LABEL_104;
    }
  }

  v264 = *(v86 + 16);
  if (!v264)
  {
    goto LABEL_91;
  }

  v266 = v86 + v300;
  v265 = &v272[*(v286 + 20)];
  v235[3] = v86;

  v87 = 0;
  v275 = v76;
  while (1)
  {
    v271 = v87;
    sub_2682B5274();
    v88 = *v265;
    if (v265[8])
    {
      break;
    }

LABEL_78:
    sub_2682B52CC();
    v125 = *(v124 + 16);
    v126 = *(v275 + 16);
    if (__OFADD__(v126, v125))
    {
      goto LABEL_205;
    }

    v127 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v275;
    if ((v127 & 1) == 0 || v126 + v125 > *(v275 + 24) >> 1)
    {
      sub_2682E4B38();
      v128 = v129;
    }

    v76 = MEMORY[0x277D84F90];
    v130 = *(v124 + 16);
    v275 = v128;
    if (v130)
    {
      if ((*(v128 + 24) >> 1) - *(v128 + 16) < v125)
      {
        goto LABEL_207;
      }

      v131 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v132 = *(v80 + 72);
      swift_arrayInitWithCopy();

      if (v125)
      {
        v133 = *(v275 + 16);
        v111 = __OFADD__(v133, v125);
        v134 = v133 + v125;
        if (v111)
        {
          goto LABEL_208;
        }

        *(v275 + 16) = v134;
      }
    }

    else
    {

      if (v125)
      {
        goto LABEL_206;
      }
    }

    v87 = v271 + 1;
    if (v271 + 1 == v264)
    {

      v76 = v275;
      goto LABEL_91;
    }
  }

  v281 = *(v88 + 16);
  if (!v281)
  {
    v124 = v76;
    goto LABEL_78;
  }

  v280 = v88 + v300;
  v279 = &v283[*(v286 + 20)];
  v255 = v88;

  v89 = 0;
  v284 = v76;
  while (1)
  {
    v282 = v89;
    sub_2682B5274();
    v90 = *v279;
    if (v279[8])
    {
      break;
    }

LABEL_64:
    sub_2682B52CC();
    v114 = *(v113 + 16);
    v115 = *(v284 + 16);
    if (__OFADD__(v115, v114))
    {
      goto LABEL_198;
    }

    v116 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v284;
    if ((v116 & 1) == 0 || v115 + v114 > *(v284 + 24) >> 1)
    {
      sub_2682E4B38();
      v117 = v118;
    }

    v76 = MEMORY[0x277D84F90];
    v119 = *(v113 + 16);
    v284 = v117;
    if (v119)
    {
      if ((*(v117 + 24) >> 1) - *(v117 + 16) < v114)
      {
        goto LABEL_200;
      }

      v120 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v121 = *(v80 + 72);
      swift_arrayInitWithCopy();

      if (v114)
      {
        v122 = *(v284 + 16);
        v111 = __OFADD__(v122, v114);
        v123 = v122 + v114;
        if (v111)
        {
          goto LABEL_201;
        }

        *(v284 + 16) = v123;
      }
    }

    else
    {

      if (v114)
      {
        goto LABEL_199;
      }
    }

    v89 = v282 + 1;
    if (v282 + 1 == v281)
    {

      v124 = v284;
      goto LABEL_78;
    }
  }

  v296 = *(v90 + 16);
  if (!v296)
  {
    v113 = v76;
    goto LABEL_64;
  }

  v295 = v90 + v300;
  v294 = &v68[*(v286 + 20)];
  v276 = v90;

  v91 = 0;
  v299 = v76;
  while (1)
  {
    v297 = v91;
    sub_2682B5274();
    v92 = *v294;
    if (v294[8])
    {
      v303 = v76;
      v301 = *(v92 + 16);
      if (v301)
      {
        v93 = &v81[*(v286 + 20)];
        v292 = v92;

        v94 = 0;
        do
        {
          sub_2682B5274();
          v95 = *v93;
          if (v93[8])
          {
            v302 = v76;
            v96 = *(v95 + 16);
            if (v96)
            {
              v97 = v95 + v300;

              do
              {
                sub_2682B5274();
                Snippet.ReminderSearchResult.Section.reminders.getter();
                v99 = v98;
                sub_2682B52CC();
                sub_2682C0518(v99);
                v97 += v78;
                --v96;
              }

              while (v96);

              v95 = v302;
              v81 = v298;
              v76 = MEMORY[0x277D84F90];
            }

            else
            {
              v95 = v76;
            }
          }

          else
          {
            v100 = *v93;
          }

          ++v94;
          sub_2682B52CC();
          sub_2682C0518(v95);
        }

        while (v94 != v301);

        v92 = v303;
        v80 = v285;
      }

      else
      {
        v92 = v76;
      }

      v68 = v288;
    }

    else
    {
    }

    sub_2682B52CC();
    v101 = v92;
    v102 = *(v92 + 16);
    v103 = *(v299 + 16);
    if (__OFADD__(v103, v102))
    {
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v299;
    if (!v104 || v103 + v102 > *(v299 + 24) >> 1)
    {
      sub_2682E4B38();
      v105 = v106;
    }

    v76 = MEMORY[0x277D84F90];
    v107 = *(v101 + 16);
    v299 = v105;
    if (v107)
    {
      break;
    }

    if (v102)
    {
      goto LABEL_137;
    }

LABEL_60:
    v91 = v297 + 1;
    if (v297 + 1 == v296)
    {

      v113 = v299;
      goto LABEL_64;
    }
  }

  if ((*(v105 + 24) >> 1) - *(v105 + 16) >= v102)
  {
    v108 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v109 = *(v80 + 72);
    swift_arrayInitWithCopy();

    if (v102)
    {
      v110 = *(v299 + 16);
      v111 = __OFADD__(v110, v102);
      v112 = v110 + v102;
      if (v111)
      {
        goto LABEL_197;
      }

      *(v299 + 16) = v112;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
}

uint64_t sub_2682BCF10(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = sub_2683CB7A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - v9;
  v11 = sub_2683CB528();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  v19 = *(type metadata accessor for Snippet.Reminder(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  sub_2683CB858();
  v20 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
  {
    sub_26812D9E0(v10, &qword_28024D5D0, &unk_2683D2CA0);
    v21 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
    sub_2683CB858();
    sub_2682B52CC();
    (*(v12 + 32))(v18, v16, v11);
    if (sub_2683CB4C8())
    {
      (*(v12 + 8))(v18, v11);
      v21 = 1;
    }

    else
    {
      sub_2683CB768();
      v21 = sub_2683CB758();
      (*(v3 + 8))(v6, v2);
      (*(v12 + 8))(v18, v11);
    }
  }

  return v21 & 1;
}

uint64_t sub_2682BD208(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Snippet.Reminder(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 0;
  }

  return sub_2683D0598();
}

uint64_t sub_2682BD278(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = sub_2683CB528();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  sub_2682CC640();
  v17 = *&v8[*(v2 + 48)];

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2683CB488();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_26812D9E0(v8, &qword_28024DB08, qword_2683D5760);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
  }

  sub_2682CC640();
  v18 = *&v6[*(v2 + 48)];

  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_2683CB488();
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
    {
      sub_26812D9E0(v6, &qword_28024DB08, qword_2683D5760);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v6, v9);
  }

  v19 = sub_2683CB4C8();
  v20 = *(v10 + 8);
  v20(v14, v9);
  v20(v16, v9);
  return v19 & 1;
}

uint64_t sub_2682BD554@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v96 = a1;
  v94 = a2;
  v91 = sub_2683CB528();
  v90 = *(v91 - 8);
  v2 = *(v90 + 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v86 - v6;
  v7 = type metadata accessor for Snippet.Reminder(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v88 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v92 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = (&v86 - v18);
  v19 = _s14descr2878F8F29V11ListContentOMa();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v86 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v86 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  sub_2682B5274();
  v95 = v29;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2682B5274();
      v57 = v27[1];
      v30 = v27[2];
      v32 = v93;
      *v93 = *v27;
      *(v32 + 8) = v57;
      v31 = type metadata accessor for Snippet.SectionHeading();
      goto LABEL_12;
    case 2u:
      sub_2682B5274();
      v46 = v24[16];
      v47 = *(v24 + 3);
      if (v46 != 255 && (v46 & 1) == 0)
      {
        LODWORD(v91) = v24[16];
        v92 = v47;
        v64 = 0;
        v65 = *v24;
        v66 = *(v24 + 1);
        v67 = *(v96 + 16);
        v68 = MEMORY[0x277D84F90];
        while (v67 != v64)
        {
          v69 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v70 = *(v8 + 72);
          sub_2682B5274();
          v71 = &v13[*(v7 + 32)];
          if (*(v71 + 3) && (v72 = *(v71 + 1)) != 0 && (*v71 == v65 ? (v73 = v72 == v66) : (v73 = 0), v73 || (sub_2683D0598() & 1) != 0))
          {
            sub_2682B5320();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *__dst = v68;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v75 = *(v68 + 16);
              sub_268390728();
              v68 = *__dst;
            }

            v76 = *(v68 + 16);
            v77 = v76 + 1;
            if (v76 >= *(v68 + 24) >> 1)
            {
              v90 = v76 + 1;
              v89 = v76;
              sub_268390728();
              v77 = v90;
              v68 = *__dst;
            }

            ++v64;
            *(v68 + 16) = v77;
            sub_2682B5320();
          }

          else
          {
            sub_2682B52CC();
            ++v64;
          }
        }

        sub_2682CC5AC(v65, v66, v91);
        v78 = v87;
        sub_2682B2BB4(v68, type metadata accessor for Snippet.Reminder);
        if (__swift_getEnumTagSinglePayload(v78, 1, v7) == 1)
        {

          sub_26812D9E0(v78, &qword_28024DBC8, &qword_2683E3D30);
        }

        else
        {
          memcpy(__dst, (v78 + *(v7 + 32)), sizeof(__dst));
          sub_2682CC640();
          sub_2682B52CC();
          v79 = *&__dst[24];
          if (*&__dst[24])
          {
            v80 = v93;
            *v93 = *__dst;
            v80[2] = *&__dst[16];
            v80[3] = v79;
            memcpy(v80 + 4, &__dst[32], 0x41uLL);
            v81 = type metadata accessor for Snippet.SectionHeading();
            swift_storeEnumTagMultiPayload();
            __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
            sub_2682BAFB0(&v97, v68, v92, 1);

            v82 = v97;
            v83 = v98;
            v84 = v94;
            __swift_storeEnumTagSinglePayload(v94, 1, 1, v81);
            sub_2681D5F4C(v80, v84);
            v44 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
            v85 = v84 + *(v44 + 20);
            *v85 = v82;
            *(v85 + 8) = v83;
            v60 = v84;
LABEL_15:
            v61 = 0;
            goto LABEL_16;
          }
        }

        v44 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
        v60 = v94;
        v61 = 1;
LABEL_16:
        __swift_storeEnumTagSinglePayload(v60, v61, 1, v44);
        return sub_2682B52CC();
      }

      if (qword_28024C8F0 != -1)
      {
        swift_once();
      }

      v48 = sub_2683CF7E8();
      __swift_project_value_buffer(v48, qword_28027C988);
      sub_2682B5274();
      v49 = sub_2683CF7C8();
      v50 = sub_2683CFE78();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *__dst = v52;
        *v51 = 136315138;
        sub_2682B5274();
        v53 = sub_2683CFAD8();
        v55 = v54;
        sub_2682B52CC();
        v56 = sub_2681610A0(v53, v55, __dst);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_2680EB000, v49, v50, "Unsupported list content: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x26D617A40](v52, -1, -1);
        MEMORY[0x26D617A40](v51, -1, -1);
      }

      else
      {

        sub_2682B52CC();
      }

      v63 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v63);
      return sub_2682B52CC();
    case 3u:
      sub_2682B5274();
      v30 = *v27;
      v31 = type metadata accessor for Snippet.SectionHeading();
      v32 = v93;
LABEL_12:
      swift_storeEnumTagMultiPayload();
      v33 = v32;
      v34 = 0;
      goto LABEL_13;
    case 4u:
      sub_2682B5274();
      v35 = *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515F8, &qword_2683F9E50) + 48));
      v36 = v90;
      v37 = v89;
      v38 = v91;
      (*(v90 + 4))(v89, v27, v91);
      v39 = v93;
      (*(v36 + 2))(v93, v37, v38);
      v40 = type metadata accessor for Snippet.SectionHeading();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
      v41 = v92;
      sub_2682CC640();
      v42 = sub_2682BF880(v96, v35);

      sub_26812D9E0(v39, &qword_28024DAF8, &qword_2683E3440);
      (*(v36 + 1))(v37, v38);
      v43 = v94;
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v40);
      sub_2681D5F4C(v41, v43);
      v44 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
      v45 = v43 + *(v44 + 20);
      *v45 = v42;
      goto LABEL_14;
    default:
      sub_2682B5274();
      v30 = *v27;
      v31 = type metadata accessor for Snippet.SectionHeading();
      v32 = v93;
      v33 = v93;
      v34 = 1;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v33, v34, 1, v31);
      v58 = v92;
      sub_2682CC640();
      v59 = sub_2682BF880(v96, v30);

      sub_26812D9E0(v32, &qword_28024DAF8, &qword_2683E3440);
      v43 = v94;
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v31);
      sub_2681D5F4C(v58, v43);
      v44 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
      v45 = v43 + *(v44 + 20);
      *v45 = v59;
LABEL_14:
      *(v45 + 8) = 0;
      v60 = v43;
      goto LABEL_15;
  }
}

uint64_t sub_2682BE1C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v140 - v4;
  v6 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v188 = v140 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v140 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v178 = v140 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v171 = v140 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v165 = v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v162 = v140 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v140 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v140 - v26;
  v28 = sub_2682BF620(a1);
  v30 = v29;
  v31 = type metadata accessor for Snippet.SectionHeading();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
  v148 = *(v28 + 16);
  if (!v148)
  {

    v134 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  v141 = v31;
  v142 = v30;
  v143 = v27;
  v144 = v5;
  v32 = 0;
  v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v140[2] = v28;
  v189 = v33;
  v151 = v28 + v33;
  v34 = *(v6 + 20);
  v160 = v25;
  v150 = &v25[v34];
  v145 = v7;
  v35 = *(v7 + 72);
  v163 = MEMORY[0x277D84F90];
  v36 = v188;
  while (1)
  {
    v158 = v32;
    sub_2682B5274();
    v37 = *v150;
    if (v150[8])
    {
      break;
    }

LABEL_102:
    sub_2682B52CC();
    v121 = *(v120 + 16);
    result = v163;
    v122 = *(v163 + 16);
    if (__OFADD__(v122, v121))
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = v163;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v122 + v121 > *(v163 + 24) >> 1)
    {
      sub_2682E4B38();
      v124 = v125;
    }

    v126 = *(v120 + 16);
    v163 = v124;
    if (v126)
    {
      v127 = (*(v124 + 24) >> 1) - *(v124 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      v128 = *(result - 8);
      if (v127 < v121)
      {
        goto LABEL_136;
      }

      v129 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v130 = *(v128 + 72);
      swift_arrayInitWithCopy();

      v131 = v158;
      if (v121)
      {
        v132 = *(v163 + 16);
        v70 = __OFADD__(v132, v121);
        v133 = v132 + v121;
        if (v70)
        {
          goto LABEL_139;
        }

        *(v163 + 16) = v133;
      }
    }

    else
    {

      v131 = v158;
      if (v121)
      {
        goto LABEL_133;
      }
    }

    v32 = v131 + 1;
    if (v32 == v148)
    {

      v7 = v145;
      v5 = v144;
      v27 = v143;
      v30 = v142;
      v31 = v141;
      v134 = v163;
LABEL_115:
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v31);
      sub_2681D5F4C(v5, v27);
      v135 = &v27[*(v6 + 20)];
      *v135 = v134;
      v135[8] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251428, &qword_2683E3450);
      v136 = *(v7 + 72);
      v137 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_2683D1EC0;
      sub_2682B5274();
      v192 = v30;
      sub_2682C0518(v138);
      v139 = v192;
      sub_2682B52CC();
      return v139;
    }
  }

  v149 = *(v37 + 16);
  if (!v149)
  {
    v120 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v153 = v37 + v189;
  v152 = &v162[*(v6 + 20)];
  v140[1] = v37;

  v38 = 0;
  v164 = MEMORY[0x277D84F90];
  v181 = v6;
  v179 = v14;
  while (1)
  {
    v159 = v38;
    sub_2682B5274();
    v39 = *v152;
    if (v152[8])
    {
      break;
    }

LABEL_88:
    sub_2682B52CC();
    v108 = *(v107 + 16);
    result = v164;
    v109 = *(v164 + 16);
    if (__OFADD__(v109, v108))
    {
      goto LABEL_130;
    }

    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v164;
    if ((v110 & 1) == 0 || v109 + v108 > *(v164 + 24) >> 1)
    {
      sub_2682E4B38();
      v111 = v112;
    }

    v113 = *(v107 + 16);
    v164 = v111;
    if (v113)
    {
      v114 = (*(v111 + 24) >> 1) - *(v111 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      v115 = *(result - 8);
      if (v114 < v108)
      {
        goto LABEL_135;
      }

      v116 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v117 = *(v115 + 72);
      swift_arrayInitWithCopy();

      if (v108)
      {
        v118 = *(v164 + 16);
        v70 = __OFADD__(v118, v108);
        v119 = v118 + v108;
        if (v70)
        {
          goto LABEL_138;
        }

        *(v164 + 16) = v119;
      }
    }

    else
    {

      if (v108)
      {
        goto LABEL_131;
      }
    }

    v38 = v159 + 1;
    if (v159 + 1 == v149)
    {

      v120 = v164;
      goto LABEL_102;
    }
  }

  v154 = *(v39 + 16);
  if (!v154)
  {
    v107 = MEMORY[0x277D84F90];
    goto LABEL_88;
  }

  v157 = v39 + v189;
  v156 = &v165[*(v6 + 20)];
  v146 = v39;

  v40 = 0;
  v169 = MEMORY[0x277D84F90];
  while (1)
  {
    v161 = v40;
    sub_2682B5274();
    v41 = *v156;
    if (v156[8])
    {
      break;
    }

LABEL_74:
    sub_2682B52CC();
    v95 = *(v94 + 16);
    result = v169;
    v96 = *(v169 + 16);
    if (__OFADD__(v96, v95))
    {
      goto LABEL_128;
    }

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v169;
    if ((v97 & 1) == 0 || v96 + v95 > *(v169 + 24) >> 1)
    {
      sub_2682E4B38();
      v98 = v99;
    }

    v100 = *(v94 + 16);
    v169 = v98;
    if (v100)
    {
      v101 = (*(v98 + 24) >> 1) - *(v98 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      v102 = *(result - 8);
      if (v101 < v95)
      {
        goto LABEL_134;
      }

      v103 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v104 = *(v102 + 72);
      swift_arrayInitWithCopy();

      if (v95)
      {
        v105 = *(v169 + 16);
        v70 = __OFADD__(v105, v95);
        v106 = v105 + v95;
        if (v70)
        {
          goto LABEL_137;
        }

        *(v169 + 16) = v106;
      }
    }

    else
    {

      if (v95)
      {
        goto LABEL_129;
      }
    }

    v40 = v161 + 1;
    if (v161 + 1 == v154)
    {

      v107 = v169;
      goto LABEL_88;
    }
  }

  v166 = *(v41 + 16);
  if (!v166)
  {
    v94 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v168 = v41 + v189;
  v167 = &v171[*(v6 + 20)];
  v147 = v41;

  v42 = 0;
  v172 = MEMORY[0x277D84F90];
  while (1)
  {
    v170 = v42;
    sub_2682B5274();
    v43 = *v167;
    if (v167[8])
    {
      break;
    }

LABEL_60:
    sub_2682B52CC();
    v82 = *(v45 + 16);
    result = v172;
    v83 = *(v172 + 16);
    if (__OFADD__(v83, v82))
    {
      goto LABEL_124;
    }

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v172;
    if ((v84 & 1) == 0 || v83 + v82 > *(v172 + 24) >> 1)
    {
      sub_2682E4B38();
      v85 = v86;
    }

    v87 = *(v45 + 16);
    v172 = v85;
    if (v87)
    {
      v88 = (*(v85 + 24) >> 1) - *(v85 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      v89 = *(result - 8);
      if (v88 < v82)
      {
        goto LABEL_126;
      }

      v90 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v91 = *(v89 + 72);
      swift_arrayInitWithCopy();

      v6 = v181;
      if (v82)
      {
        v92 = *(v172 + 16);
        v70 = __OFADD__(v92, v82);
        v93 = v92 + v82;
        if (v70)
        {
          goto LABEL_127;
        }

        *(v172 + 16) = v93;
      }
    }

    else
    {

      v6 = v181;
      if (v82)
      {
        goto LABEL_125;
      }
    }

    v42 = v170 + 1;
    if (v170 + 1 == v166)
    {

      v94 = v172;
      goto LABEL_74;
    }
  }

  v176 = *(v43 + 16);
  if (!v176)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v175 = v43 + v189;
  v174 = &v178[*(v6 + 20)];
  v155 = v43;

  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    v177 = v44;
    sub_2682B5274();
    v46 = *v174;
    if ((v174[8] & 1) == 0)
    {

      goto LABEL_46;
    }

    v186 = *(v46 + 16);
    if (v186)
    {
      break;
    }

    v48 = MEMORY[0x277D84F90];
LABEL_46:
    result = sub_2682B52CC();
    v72 = *(v48 + 16);
    v73 = *(v45 + 16);
    if (__OFADD__(v73, v72))
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v73 + v72 > *(v45 + 24) >> 1)
    {
      sub_2682E4B38();
      v45 = v74;
    }

    if (*(v48 + 16))
    {
      v75 = (*(v45 + 24) >> 1) - *(v45 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      v76 = *(result - 8);
      if (v75 < v72)
      {
        goto LABEL_122;
      }

      v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v78 = *(v76 + 72);
      swift_arrayInitWithCopy();

      v79 = v177;
      if (v72)
      {
        v80 = *(v45 + 16);
        v70 = __OFADD__(v80, v72);
        v81 = v80 + v72;
        if (v70)
        {
          goto LABEL_123;
        }

        *(v45 + 16) = v81;
      }
    }

    else
    {

      v79 = v177;
      if (v72)
      {
        goto LABEL_121;
      }
    }

    v44 = v79 + 1;
    if (v44 == v176)
    {

      goto LABEL_60;
    }
  }

  v185 = v46 + v189;
  v184 = &v14[*(v181 + 20)];
  v173 = v46;

  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v180 = v45;
  while (1)
  {
    sub_2682B5274();
    v49 = *v184;
    v50 = v184[8];
    v187 = v47;
    if (v50)
    {
      v51 = MEMORY[0x277D84F90];
      v192 = MEMORY[0x277D84F90];
      v190 = *(v49 + 16);
      if (v190)
      {
        v182 = v49;
        v183 = v48;
        v52 = &v36[*(v181 + 20)];

        v53 = 0;
        v54 = v51;
        do
        {
          sub_2682B5274();
          v55 = *v52;
          if (v52[8])
          {
            v191 = v54;
            v56 = *(v55 + 16);
            if (v56)
            {
              v57 = v55 + v189;

              do
              {
                sub_2682B5274();
                Snippet.ReminderSearchResult.Section.reminders.getter();
                v59 = v58;
                sub_2682B52CC();
                sub_2682C0518(v59);
                v57 += v35;
                --v56;
              }

              while (v56);

              v55 = v191;
              v36 = v188;
              v54 = MEMORY[0x277D84F90];
            }

            else
            {
              v55 = v54;
            }
          }

          else
          {
            v60 = *v52;
          }

          ++v53;
          sub_2682B52CC();
          sub_2682C0518(v55);
        }

        while (v53 != v190);

        v49 = v192;
        v14 = v179;
        v45 = v180;
        v48 = v183;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }
    }

    else
    {
    }

    result = sub_2682B52CC();
    v62 = *(v49 + 16);
    v63 = *(v48 + 16);
    if (__OFADD__(v63, v62))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v63 + v62 > *(v48 + 24) >> 1)
    {
      sub_2682E4B38();
      v48 = v64;
    }

    if (*(v49 + 16))
    {
      v65 = (*(v48 + 24) >> 1) - *(v48 + 16);
      result = type metadata accessor for Snippet.Reminder(0);
      v66 = *(result - 8);
      if (v65 < v62)
      {
        goto LABEL_118;
      }

      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = *(v66 + 72);
      swift_arrayInitWithCopy();

      if (v62)
      {
        v69 = *(v48 + 16);
        v70 = __OFADD__(v69, v62);
        v71 = v69 + v62;
        if (v70)
        {
          goto LABEL_119;
        }

        *(v48 + 16) = v71;
      }
    }

    else
    {

      if (v62)
      {
        goto LABEL_117;
      }
    }

    v47 = v187 + 1;
    if (v187 + 1 == v186)
    {

      goto LABEL_46;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_2682BF2F8()
{
  v0 = type metadata accessor for Snippet.SectionHeading();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB00, &qword_2683D4180);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v0);
  v16 = *(v5 + 56);
  sub_2682CC640();
  sub_2682CC640();
  if (__swift_getEnumTagSinglePayload(v8, 1, v0) != 1)
  {
    sub_2682CC640();
    if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v0) != 1)
    {
      sub_2682B5320();
      v17 = static Snippet.SectionHeading.== infix(_:_:)(v13, v3);
      sub_2682B52CC();
      sub_26812D9E0(v15, &qword_28024DAF8, &qword_2683E3440);
      sub_2682B52CC();
      sub_26812D9E0(v8, &qword_28024DAF8, &qword_2683E3440);
      return v17 & 1;
    }

    sub_26812D9E0(v15, &qword_28024DAF8, &qword_2683E3440);
    sub_2682B52CC();
    goto LABEL_6;
  }

  sub_26812D9E0(v15, &qword_28024DAF8, &qword_2683E3440);
  if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_26812D9E0(v8, &qword_28024DB00, &qword_2683D4180);
    v17 = 0;
    return v17 & 1;
  }

  sub_26812D9E0(v8, &qword_28024DAF8, &qword_2683E3440);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2682BF620(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v22[1] = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  while (v8 != v7)
  {
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12 = *(v3 + 72);
    sub_2682B5274();
    Snippet.ReminderSearchResult.Section.isEmpty.getter();
    if (v13)
    {
      sub_2682B52CC();
      ++v7;
    }

    else
    {
      sub_2682B5320();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2683909A0(0, *(v10 + 16) + 1, 1);
        v10 = v23;
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_2683909A0(v15 > 1, v16 + 1, 1);
        v17 = v16 + 1;
        v10 = v23;
      }

      ++v7;
      *(v10 + 16) = v17;
      sub_2682B5320();
      v9 = MEMORY[0x277D84F90];
    }
  }

  v18 = sub_2682B2D3C(v10);
  v19 = sub_2682DFBBC(1, v18);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v9;
  }

  sub_2682DFBBC(0, v18);

  return v20;
}

uint64_t sub_2682BF880(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - v4;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v60 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;

  v17 = sub_2682B3FB0(v16);
  v18 = v17;
  v19 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v20 = v17 + 64;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v17 + 64);
  v24 = (v21 + 63) >> 6;

  v26 = 0;
LABEL_4:
  v67 = v19;
LABEL_5:
  if (v23)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      v35 = 0;
      v36 = v69;
      v37 = *(v70 + 16);
      v38 = v70 + 40;
      v63 = MEMORY[0x277D84F90];
      v39 = &qword_28024DBC8;
      v60 = v70 + 40;
      v61 = v37;
      while (2)
      {
        v40 = ~v35;
        v41 = (v38 + 16 * v35);
        v42 = v37 - v35;
        if (v37 == v35)
        {
LABEL_30:

          return v63;
        }

LABEL_17:
        if (*(v19 + 16))
        {
          v71 = v40;
          v44 = *(v41 - 1);
          v43 = *v41;

          sub_2682E1A10(v44, v43);
          if (v45)
          {
            v46 = *(v19 + 56);
            v64 = *(v68 + 72);
            sub_2682B5274();
            v47 = v39;
            v48 = v65;
            sub_2682B5320();
            v49 = v5;
            v50 = *(v36 + 68);
            v51 = sub_2682BF880(*&v48[v50], v70);

            *&v48[v50] = v51;
            v36 = v69;
            v5 = v49;
            v19 = v67;
            sub_2682B5274();
            __swift_storeEnumTagSinglePayload(v5, 0, 1, v36);
            v39 = v47;
            sub_2682B52CC();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v36);
            v40 = v71;
            if (EnumTagSinglePayload != 1)
            {
              sub_2682B5320();
              v53 = v63;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v57 = *(v53 + 16);
                sub_2682E4B38();
                v53 = v58;
              }

              v38 = v60;
              v55 = *(v53 + 16);
              if (v55 >= *(v53 + 24) >> 1)
              {
                sub_2682E4B38();
                v53 = v59;
              }

              v35 = -v71;
              *(v53 + 16) = v55 + 1;
              v56 = *(v68 + 80);
              v63 = v53;
              sub_2682B5320();
              v37 = v61;
              continue;
            }

            goto LABEL_23;
          }

          v40 = v71;
        }

        break;
      }

      __swift_storeEnumTagSinglePayload(v5, 1, 1, v36);
LABEL_23:
      sub_26812D9E0(v5, v39, &qword_2683E3D30);
      --v40;
      v41 += 2;
      if (!--v42)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v23 = *(v20 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
LABEL_10:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = v28 | (v26 << 6);
      if (*(*(*(v18 + 56) + 8 * v29) + 16))
      {
        v30 = (*(v18 + 48) + 16 * v29);
        v31 = v30[1];
        v71 = *v30;
        v32 = *(v68 + 80);
        sub_2682B5274();
        v33 = v19;
        v34 = *(v19 + 16);
        if (*(v33 + 24) <= v34)
        {

          sub_2682C1BB4(v34 + 1, 1);
          v19 = v72;
        }

        else
        {

          v19 = v67;
        }

        result = sub_2682C2438(v71, v31, v15, v19);
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_2682BFDDC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E4728);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_22();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_88_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2682BFE84(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2682C23C0(v7 + v6, 1, sub_2682E4728);
  v1 = *v2;
  v8 = *(*v2 + 16);
  v9 = (*(*v2 + 24) >> 1) - v8;
  v10 = sub_2682CAD88(v31, (*v2 + 16 * v8 + 32), v9, v5);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v10);
    v14 = v12 + v10;
    if (v13)
    {
      __break(1u);
LABEL_13:
      v17 = (v11 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          v33 = v4;
          v34 = 0;
          goto LABEL_7;
        }

        v19 = *(v9 + 8 * v18);
        ++v4;
        if (v19)
        {
          v15 = (v19 - 1) & v19;
          v16 = __clz(__rbit64(v19)) | (v18 << 6);
          v4 = v18;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v14;
  }

  v5 = v31[0];
  if (v10 != v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_113();
    sub_2681281A4();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v9 = v31[1];
  v11 = v32;
  v4 = v33;
  v29 = v32;
  if (!v34)
  {
    goto LABEL_13;
  }

  v15 = (v34 - 1) & v34;
  v16 = __clz(__rbit64(v34)) | (v33 << 6);
  v17 = (v32 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v22 = *v20;
  v21 = v20[1];

LABEL_19:
  v23 = *(v1 + 24);
  v30 = v23 >> 1;
  if ((v23 >> 1) < v3 + 1)
  {
    sub_2682E4728(v23 > 1, v3 + 1, 1, v1);
    v1 = v28;
    v30 = *(v28 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v30)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v24 = (v1 + 32 + 16 * v3);
    *v24 = v22;
    v24[1] = v21;
    ++v3;
    if (!v15)
    {
      break;
    }

    v25 = v4;
LABEL_28:
    v26 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v27 = (*(v5 + 48) + ((v25 << 10) | (16 * v26)));
    v22 = *v27;
    v21 = v27[1];
  }

  while (1)
  {
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v25 >= v17)
    {
      v32 = v29;
      v33 = v4;
      v34 = 0;
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v15 = *(v9 + 8 * v25);
    ++v4;
    if (v15)
    {
      v4 = v25;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}