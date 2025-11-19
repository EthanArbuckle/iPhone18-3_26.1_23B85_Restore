void sub_268365348()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_2683653E0(uint64_t *a1)
{
  v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A38, &qword_2683F4BD8);
  OUTLINED_FUNCTION_0_3(v22);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  v1[2] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683657F4();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookReminderListConcept(0);
    v15 = *(*v1 + 12);
    v16 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2683CF168();
    v24 = 0;
    OUTLINED_FUNCTION_0_70();
    sub_2683657AC(v13, v14);
    sub_2683D0468();
    sub_2681E1A1C(v8, v1 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle);
    v23 = 1;
    v18 = sub_2683D0488();
    v19 = OUTLINED_FUNCTION_0_53();
    v20(v19);
    *(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2683656CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2683652D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2683657AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2683657F4()
{
  result = qword_280253A40;
  if (!qword_280253A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookReminderListConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268365928()
{
  result = qword_280253A50;
  if (!qword_280253A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A50);
  }

  return result;
}

unint64_t sub_268365980()
{
  result = qword_280253A58;
  if (!qword_280253A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A58);
  }

  return result;
}

unint64_t sub_2683659D8()
{
  result = qword_280253A60;
  if (!qword_280253A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A60);
  }

  return result;
}

uint64_t sub_268365A44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);

  return sub_2681C326C(0, v3, a1);
}

uint64_t sub_268365A8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);

  return sub_2681C326C(v5, v4, a1);
}

uint64_t sub_268365AE4()
{
  if (*(v0 + 16))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268365AF8()
{
  if (*(v0 + 32))
  {
    return 3;
  }

  v2 = *(v0 + 16);

  return sub_26831F02C(v3);
}

uint64_t sub_268365B38()
{
  v1 = *(v0 + 8);
  if (sub_2683970D4(0, v1))
  {
    return 2;
  }

  if (sub_2683970D4(1, v1))
  {
    return 2;
  }

  return 0;
}

uint64_t sub_268365B88()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  swift_retain_n();
  v1 = sub_2683CDA58();

  if (v1 || (, v2 = sub_2683CD9F8(), , v2))
  {
    v3 = 6;
  }

  else
  {

    v5 = sub_2683CDA28();

    if (!v5)
    {
      v3 = 0;
      goto LABEL_6;
    }

    v3 = 4;
  }

LABEL_6:

  return v3;
}

uint64_t sub_268365C40()
{
  if (*(v0 + 24))
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_268365C80()
{
  if (*(v0 + 8))
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_268365CC0()
{
  if (*v0)
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_268365D00@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (!result)
  {
    v13 = 0;
    v7 = 0;
    v6 = 0;
    v14 = 0;
    v15 = 0;
LABEL_18:
    *a3 = v4;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v13;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    *(a3 + 48) = a2 & 1;
    return result;
  }

  swift_retain_n();
  v6 = sub_2683CD7A8();

  v7 = sub_2683CD7C8();

  v8 = sub_2683CD7D8();

  if (!v8)
  {
    v13 = 0;
LABEL_17:

    v14 = sub_2683CD798();

    v15 = sub_2683CD4E8();

    goto LABEL_18;
  }

  v16 = a2;
  swift_getKeyPath();
  v17 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  result = sub_2683ABE58(v8);
  v9 = result;
  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      a2 = v16;
      v13 = v17;
      goto LABEL_17;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v10;
    if (v19)
    {
      MEMORY[0x26D616770](result);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v17 = v20;
      v10 = v12;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_268365F44()
{
  if (!v0[1])
  {
    goto LABEL_12;
  }

  v1 = sub_2683CDA98();
  if (v2)
  {
    return v1;
  }

  if (!sub_2683CDAA8() || (v3 = sub_2683CDE18(), v5 = v4, , !v5))
  {
LABEL_12:
    if (*v0)
    {
      v3 = sub_2683CD7B8();
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

uint64_t sub_268365FE4()
{
  if (*v0)
  {
    return sub_2683CD778();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268366018()
{
  if (!*(v0 + 8))
  {
    return 3;
  }

  sub_2683CDA98();
  if (!v1)
  {
    if (!sub_2683CDAA8())
    {
      return 3;
    }

    sub_2683CDE18();
    v4 = v3;

    if (!v4)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_26836607C()
{
  if (*v0)
  {
    v1 = sub_2683CD788();
  }

  else
  {
    v1 = 0;
  }

  return sub_2681BA404(v1);
}

uint64_t sub_2683660C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_268365A8C(a1);
}

uint64_t sub_268366108()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_268365C80();
}

uint64_t sub_26836615C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_268365AF8();
}

uint64_t sub_2683661A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_268196F0C();
}

uint64_t sub_2683661E4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_268365B88();
}

uint64_t sub_268366228@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (result)
  {

    v6 = sub_2683CDA88();
    v7 = sub_2683CD4E8();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2683662A0()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = sub_2683CDA98();
  if (!v2)
  {
    if (sub_2683CDAA8())
    {
      v3 = sub_2683CDE18();

      return v3;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_268366314()
{
  if (*v0)
  {
    v1 = sub_268161CE4();
    if (sub_2683ABE58(v1))
    {
      sub_2683ABE60(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D616C90](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      v3 = sub_2683CD788();

      goto LABEL_8;
    }
  }

  v3 = 0;
LABEL_8:

  return sub_2681BA404(v3);
}

uint64_t sub_2683663C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_268365A44(a1);
}

uint64_t sub_2683663FC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_268365CC0();
}

uint64_t sub_268366444()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_268365AE4();
}

uint64_t sub_268366480()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_268365B38();
}

uint64_t sub_2683664BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_2683664F8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (result)
  {

    v6 = sub_2683CD678();
    v7 = sub_2683CD4E8();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = v7;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t sub_268366574(uint64_t (*a1)(void))
{
  if (*v1)
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268366604@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_268365A44(a1);
}

uint64_t sub_268366640()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_268365C40();
}

uint64_t sub_268366684()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_268365AE4();
}

uint64_t sub_2683666C0()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_268365B38();
}

uint64_t sub_2683666FC()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_268366738(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_26836678C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268366814(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_268366868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2683668D8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_26836692C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_268366990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2683669B8, 0, 0);
}

uint64_t sub_2683669B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  v6 = sub_268175270(0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, v5, v3);
  v0[8] = v6;
  v7 = v6;
  sub_268367A74(v4, v2, v7);
  sub_268129504(0, &qword_280253A68, 0x277D473D0);
  v8 = sub_268366FBC(v7, 0, 0);
  v0[9] = v8;
  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  v11 = *(MEMORY[0x277D5BFA0] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = sub_268129504(0, &qword_280253A70, 0x277D473D8);
  *v12 = v0;
  v12[1] = sub_268366B60;

  return MEMORY[0x2821BB670](v8, 1, v13, v9, v10);
}

uint64_t sub_268366B60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_268366DEC;
  }

  else
  {
    v5 = sub_268366C74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_268366C74()
{
  v1 = *(v0 + 88);
  v2 = sub_268367178();

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = *(v0 + 88);
      v6 = *(v0 + 64);
      v5 = *(v0 + 72);
      v7 = sub_2683674EC(v3, *(v0 + 24), *(v0 + 32));
      goto LABEL_10;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v8 = sub_2683CF7E8();
  __swift_project_value_buffer(v8, qword_28027C958);
  v2 = sub_2683CF7C8();
  v9 = sub_2683CFE78();
  v10 = os_log_type_enabled(v2, v9);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  if (v10)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2680EB000, v2, v9, "[AnnounceReminderProvider] Couldn't decode intent response.", v11, 2u);
    OUTLINED_FUNCTION_38();
  }

  v7 = 0;
LABEL_10:

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_268366DEC()
{
  v19 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[12];
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v0[2] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v13 = sub_2683CFAD8();
    v15 = sub_2681610A0(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2680EB000, v4, v5, "[AnnounceReminderProvider] Got error submitting SearchForNotebookItemsIntent: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

id sub_268366FBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CB598();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2683CB588();
  v11 = sub_2683CB548();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  sub_268321688(v11, v13, v10);
  if (a3)
  {
    v14 = sub_2683CFA68();
  }

  else
  {
    v14 = 0;
  }

  [v10 setAppId_];

  sub_268129504(0, &qword_280253368, 0x277D47418);
  v15 = a1;
  v16 = sub_2681C6E68(v15);
  [v10 setIntent_];

  return v10;
}

uint64_t sub_268367178()
{
  v1 = [v0 intentResponse];
  if (!v1)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    v2 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2680EB000, v2, v10, "Intent response was nil on SAIntentGroupHandleIntentCompleted", v11, 2u);
      MEMORY[0x26D617A40](v11, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_2683677AC();
  if (v4 >> 60 == 15)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2680EB000, v6, v7, "Unable to get response data from SAIntentGroupHandleIntentCompleted", v8, 2u);
      MEMORY[0x26D617A40](v8, -1, -1);
    }

LABEL_12:
    v12 = 0;
LABEL_19:

    return v12;
  }

  v13 = v3;
  v14 = v4;
  result = sub_26812E98C(v2, &selRef_typeName);
  if (v16)
  {
    v17 = result;
    v18 = v16;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);

    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_2681610A0(v17, v18, &v26);
      _os_log_impl(&dword_2680EB000, v20, v21, "Creating Intent response for typename: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D617A40](v23, -1, -1);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    v24 = sub_2683CFA68();

    v25 = sub_2683CB448();
    v12 = INIntentResponseCreate();

    sub_26814F5CC(v13, v14);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_2683674EC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2682E5FA4(a1);
  if (v3)
  {
    v4 = v3;
    v5 = 0xED00002D4449556DLL;
    v6 = 0;
    v31 = v3 & 0xC000000000000001;
    v32 = sub_2683ABE58(v3);
    v29 = v4;
    v30 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32 == v6)
      {

        goto LABEL_23;
      }

      if (v31)
      {
        v7 = MEMORY[0x26D616C90](v6, v4);
      }

      else
      {
        if (v6 >= *(v30 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = v5;
      v10 = sub_26834AFCC(v7);
      v12 = v11;
      OUTLINED_FUNCTION_1_61();
      v13 = a3;
      v14 = a2;
      v15 = sub_2683CFBD8();

      if (v15)
      {
        OUTLINED_FUNCTION_1_61();
        v16 = sub_2683CFB58();
        v17 = sub_2681E1D8C(v16);
        v14 = MEMORY[0x26D616610](v17);
        v13 = v18;
      }

      v5 = v9;
      if (sub_2683CFBD8())
      {
        v19 = sub_2683CFB58();
        v20 = sub_2681E1D8C(v19);
        v14 = MEMORY[0x26D616610](v20);
        v13 = v21;
        v5 = v9;
      }

      if (v12)
      {
        if (v10 == v14 && v12 == v13)
        {

LABEL_28:

          return v8;
        }

        v23 = sub_2683D0598();

        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      ++v6;
      v4 = v29;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_23:
  if (qword_28024C8E0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_5();
  }

  v24 = sub_2683CF7E8();
  __swift_project_value_buffer(v24, qword_28027C958);
  v25 = sub_2683CF7C8();
  v26 = sub_2683CFE78();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2680EB000, v25, v26, "[AnnounceReminderProvider] Intent response did not have requested reminder.", v27, 2u);
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

id sub_2683677AC()
{
  v1 = sub_2683CFAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 intentResponse];
  if (result)
  {
    v7 = sub_2681C7074(result);
    if (v8 >> 60 == 15)
    {
      sub_26812E98C(v0, &selRef_jsonEncodedIntentResponse);
      if (v9)
      {
        if (qword_28024C8E0 != -1)
        {
          swift_once();
        }

        v10 = sub_2683CF7E8();
        __swift_project_value_buffer(v10, qword_28027C958);
        v11 = sub_2683CF7C8();
        v12 = sub_2683CFE98();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2680EB000, v11, v12, "Decoding intentResponse from json data", v13, 2u);
          MEMORY[0x26D617A40](v13, -1, -1);
        }

        sub_2683CFA98();
        v14 = sub_2683CFA88();

        (*(v2 + 8))(v5, v1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v14 = v7;
      if (qword_28024C8E0 != -1)
      {
        swift_once();
      }

      v15 = sub_2683CF7E8();
      __swift_project_value_buffer(v15, qword_28027C958);
      v16 = sub_2683CF7C8();
      v17 = sub_2683CFE98();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2680EB000, v16, v17, "Decoding intentResponse from data", v18, 2u);
        MEMORY[0x26D617A40](v18, -1, -1);
      }
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_268367A74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 _setLaunchId_];
}

uint64_t type metadata accessor for NotebookCommonCATsSimple()
{
  result = qword_280253A78;
  if (!qword_280253A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268367B88()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_268129B00;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(33);

  return v4(v3);
}

uint64_t sub_268367C2C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(45);

  return v4(v3);
}

uint64_t sub_268367CD0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(46);

  return v4(v3);
}

uint64_t sub_268367D74()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(38);

  return v4(v3);
}

uint64_t sub_268367E18()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(44);

  return v4(v3);
}

uint64_t sub_268367EBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268367F10(a1, a2);
}

uint64_t sub_268367F10(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_268163198(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_268163208(a1);
  return v16;
}

uint64_t sub_26836806C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

void sub_268368174()
{
  OUTLINED_FUNCTION_30_0();
  v36 = v0;
  v1 = sub_2683CCE78();
  v2 = OUTLINED_FUNCTION_0_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A88, &qword_2683F5070);
  v14 = OUTLINED_FUNCTION_23(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = sub_2683CCDC8();
  v20 = OUTLINED_FUNCTION_0_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_3();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v35 - v29;
  sub_2682D048C(v18);
  OUTLINED_FUNCTION_3_5(v18);
  if (v31)
  {
    sub_26812C310(v18, &qword_280253A88, &qword_2683F5070);
    v33 = 1;
    v32 = v36;
  }

  else
  {
    (*(v22 + 32))(v30, v18, v19);
    sub_2683CCE68();
    (*(v22 + 16))(v27, v30, v19);
    sub_2683CCE58();
    v32 = v36;
    sub_2683CCEF8();
    (*(v4 + 16))(v9, v12, v1);
    sub_2683CCEE8();
    (*(v4 + 8))(v12, v1);
    (*(v22 + 8))(v30, v19);
    v33 = 0;
  }

  v34 = sub_2683CCF08();
  __swift_storeEnumTagSinglePayload(v32, v33, 1, v34);
  OUTLINED_FUNCTION_29_0();
}

void sub_268368414()
{
  OUTLINED_FUNCTION_30_0();
  v72 = v0;
  v70 = sub_2683CB598();
  v1 = OUTLINED_FUNCTION_0_3(v70);
  v68 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v65 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A90, &qword_2683F5078);
  v8 = OUTLINED_FUNCTION_23(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - v11;
  OUTLINED_FUNCTION_3_8();
  v12 = sub_2683CCDB8();
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v62 = v14;
  v63 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v67 = v18 - v17;
  OUTLINED_FUNCTION_3_8();
  v71 = sub_2683CCF08();
  v19 = OUTLINED_FUNCTION_0_3(v71);
  v69 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  v26 = sub_2683CCE08();
  v27 = OUTLINED_FUNCTION_0_3(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_3();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v61 - v36;
  v38 = sub_2683CCF58();
  v39 = OUTLINED_FUNCTION_23(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_3();
  v42 = sub_2683CCE48();
  v43 = OUTLINED_FUNCTION_0_3(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19_3();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v61 - v52;
  sub_2683CCE38();
  sub_2683CCF48();
  sub_2683CCE28();
  sub_2683CCDF8();
  (*(v45 + 16))(v50, v53, v42);
  sub_2683CCDE8();
  sub_2683CCEF8();
  v54 = *(v29 + 16);
  v66 = v26;
  v54(v34, v37, v26);
  v55 = v63;
  sub_2683CCED8();
  v56 = v64;
  v57 = v65;
  sub_2683CB588();
  sub_2683CCF68();
  (*(v68 + 8))(v57, v70);
  OUTLINED_FUNCTION_3_5(v56);
  if (v58)
  {
    sub_2683CCDA8();
    OUTLINED_FUNCTION_3_5(v56);
    if (!v58)
    {
      sub_26812C310(v56, &qword_280253A90, &qword_2683F5078);
    }
  }

  else
  {
    (*(v62 + 32))(v67, v56, v55);
  }

  sub_2683CCEC8();
  (*(v29 + 8))(v37, v66);
  (*(v45 + 8))(v53, v42);
  v60 = v71;
  v59 = v72;
  (*(v69 + 32))(v72, v25, v71);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
  OUTLINED_FUNCTION_29_0();
}

void sub_268368898()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v67 = v2;
  v3 = sub_2683CCF38();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v65 = v5;
  v66 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_3();
  v64 = v8 - v9;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v63 = &v63 - v11;
  OUTLINED_FUNCTION_3_8();
  v85 = sub_2683CCE48();
  v12 = OUTLINED_FUNCTION_0_3(v85);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_3();
  v84 = v17 - v18;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v83 = sub_2683CCEA8();
  v22 = OUTLINED_FUNCTION_0_3(v83);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19_3();
  v77 = v27 - v28;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v63 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A88, &qword_2683F5070);
  v33 = OUTLINED_FUNCTION_23(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v81 = &v63 - v36;
  OUTLINED_FUNCTION_3_8();
  v37 = sub_2683CCDC8();
  v38 = OUTLINED_FUNCTION_0_3(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19_3();
  v76 = v43 - v44;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v45);
  v47 = &v63 - v46;
  v82 = sub_2683ABE58(v1);
  v48 = 0;
  v79 = v1;
  v80 = v1 & 0xC000000000000001;
  v78 = v1 & 0xFFFFFFFFFFFFFF8;
  v74 = (v40 + 16);
  v75 = (v40 + 32);
  v72 = (v14 + 16);
  v73 = (v24 + 16);
  v70 = (v24 + 8);
  v71 = v14 + 8;
  v68 = v14 + 32;
  v69 = (v40 + 8);
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v82 == v48)
    {
      v57 = v63;
      sub_2683CCF28();
      sub_2683CCF18();
      v58 = v67;
      sub_2683CCEF8();
      v60 = v65;
      v59 = v66;
      (*(v65 + 16))(v64, v57, v66);
      sub_2683CCEB8();
      (*(v60 + 8))(v57, v59);
      v61 = 0;
LABEL_16:
      v62 = sub_2683CCF08();
      __swift_storeEnumTagSinglePayload(v58, v61, 1, v62);
      OUTLINED_FUNCTION_29_0();
      return;
    }

    if (v80)
    {
      MEMORY[0x26D616C90](v48, v79);
      v50 = v81;
    }

    else
    {
      v50 = v81;
      if (v48 >= *(v78 + 16))
      {
        goto LABEL_18;
      }

      v51 = *(v79 + 8 * v48 + 32);
    }

    if (__OFADD__(v48, 1))
    {
      break;
    }

    sub_2682D048C(v50);
    if (__swift_getEnumTagSinglePayload(v50, 1, v37) == 1)
    {

      sub_26812C310(v50, &qword_280253A88, &qword_2683F5070);
      v61 = 1;
      v58 = v67;
      goto LABEL_16;
    }

    (*v75)(v47, v50, v37);
    sub_2683CCE98();
    (*v74)(v76, v47, v37);
    sub_2683CCE88();
    sub_2683CCE38();
    (*v73)(v77, v31, v83);
    sub_2683CCE18();
    (*v72)(v84, v21, v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = *(v49 + 16);
      sub_2682E4820();
      v49 = v55;
    }

    v52 = *(v49 + 16);
    if (v52 >= *(v49 + 24) >> 1)
    {
      sub_2682E4820();
      v49 = v56;
    }

    v53 = v85;
    (*(v14 + 8))(v21, v85);
    (*v70)(v31, v83);
    (*v69)(v47, v37);
    *(v49 + 16) = v52 + 1;
    (*(v14 + 32))(v49 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v52, v84, v53);
    ++v48;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_268368E80(char a1)
{
  switch(a1)
  {
    case 1:
      v8 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v8);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v9 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v9);
      sub_2683CDD08();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDCF8();
      goto LABEL_10;
    case 2:
      v13 = sub_2683CE008();
      OUTLINED_FUNCTION_42_3(v13);
      sub_2683CDFF8();
      OUTLINED_FUNCTION_24_4();
      v14 = sub_2683CD9C8();
      OUTLINED_FUNCTION_42_3(v14);
      sub_2683CD9B8();
      goto LABEL_10;
    case 3:
      v5 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v6 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v6);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v7 = sub_2683CE1A8();
      OUTLINED_FUNCTION_42_3(v7);
      sub_2683CE198();
      sub_2683CDCD8();
      goto LABEL_9;
    case 4:
    case 5:
      v1 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v1);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v2 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v2);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v3 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v3);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v4 = sub_2683CE168();
      OUTLINED_FUNCTION_42_3(v4);
      sub_2683CE158();
      sub_2683CDF78();
      goto LABEL_8;
    case 6:
      v15 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v15);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v16 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v16);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v17 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v17);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v18 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v18);
      sub_2683CDCA8();
      sub_2683CDF68();
LABEL_8:

      OUTLINED_FUNCTION_15_33();
      goto LABEL_9;
    case 7:
      v10 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v10);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v11 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v11);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v12 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v12);
      sub_2683CDCA8();
      sub_2683CDCE8();
LABEL_9:

LABEL_10:
      sub_2683CDE78();

      break;
    default:
      return 0;
  }

  return 0;
}

uint64_t sub_2683690E4(char a1)
{
  switch(a1)
  {
    case 2:
      v7 = sub_2683CE078();
      OUTLINED_FUNCTION_42_3(v7);
      sub_2683CE068();
      OUTLINED_FUNCTION_24_4();
      v8 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v8);
      sub_2683CDD08();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDCF8();
      goto LABEL_7;
    case 3:
    case 4:
      v1 = sub_2683CE1F8();
      OUTLINED_FUNCTION_42_3(v1);
      sub_2683CE1E8();
      OUTLINED_FUNCTION_24_4();
      v2 = sub_2683CDFE8();
      OUTLINED_FUNCTION_42_3(v2);
      sub_2683CDFD8();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDFC8();
      OUTLINED_FUNCTION_8_37();
      sub_2683CE188();
      goto LABEL_8;
    case 5:
      v9 = sub_2683CE078();
      OUTLINED_FUNCTION_42_3(v9);
      sub_2683CE068();
      OUTLINED_FUNCTION_24_4();
      v10 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v10);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v11 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v11);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v12 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v12);
      sub_2683CDCA8();
      sub_2683CDF68();
      goto LABEL_6;
    case 6:
      v3 = sub_2683CE078();
      OUTLINED_FUNCTION_42_3(v3);
      sub_2683CE068();
      OUTLINED_FUNCTION_24_4();
      v4 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v4);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v5 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v6 = sub_2683CE168();
      OUTLINED_FUNCTION_42_3(v6);
      sub_2683CE158();
      sub_2683CDF78();
LABEL_6:

      OUTLINED_FUNCTION_15_33();

LABEL_7:
      OUTLINED_FUNCTION_8_37();
      sub_2683CDBF8();
LABEL_8:

      break;
    default:
      return 0;
  }

  return 0;
}

uint64_t sub_2683692AC(char a1)
{
  v3 = sub_2683CE098();
  OUTLINED_FUNCTION_42_3(v3);
  sub_2683CE088();
  OUTLINED_FUNCTION_24_4();
  v4 = sub_2683CDD18();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CDD08();
  OUTLINED_FUNCTION_26_7();
  if (a1)
  {
    sub_2683CDCF8();
  }

  else
  {
    v5 = sub_2683CDFA8();
    OUTLINED_FUNCTION_42_3(v5);
    sub_2683CDF98();
    OUTLINED_FUNCTION_22_17();
    v6 = sub_2683CDCB8();
    OUTLINED_FUNCTION_42_3(v6);
    sub_2683CDCA8();
    sub_2683CDF68();

    OUTLINED_FUNCTION_15_33();
  }

  OUTLINED_FUNCTION_8_37();
  sub_2683CE178();

  return v1;
}

uint64_t sub_268369384(char a1)
{
  v3 = sub_2683CDE38();
  OUTLINED_FUNCTION_42_3(v3);
  sub_2683CDE28();
  OUTLINED_FUNCTION_24_4();
  v4 = sub_2683CD9C8();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CD9B8();
  if (a1)
  {
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_2_56();
      sub_2683CD988();
    }

    else
    {
      v5 = sub_2683CDEC8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CDEB8();
      OUTLINED_FUNCTION_22_17();
      sub_2683CDEA8();

      sub_2683CD9A8();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_56();
    sub_2683CD998();
  }

  OUTLINED_FUNCTION_8_37();
  sub_2683CDBF8();

  return v1;
}

uint64_t sub_26836945C()
{
  OUTLINED_FUNCTION_26_7();
  v0 = sub_2683CDD18();
  OUTLINED_FUNCTION_42_3(v0);
  v1 = sub_2683CDD08();

  sub_2683CDCF8();

  return v1;
}

uint64_t sub_2683694CC(char a1)
{
  v2 = sub_2683CE0B8();
  OUTLINED_FUNCTION_42_3(v2);
  v3 = sub_2683CE0A8();
  switch(a1)
  {
    case 1:
      v13 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v13);
      sub_2683CDD08();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDCF8();
      goto LABEL_10;
    case 2:
      v7 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v7);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v8 = sub_2683CE1A8();
      OUTLINED_FUNCTION_42_3(v8);
      sub_2683CE198();
      sub_2683CDCD8();
      goto LABEL_7;
    case 3:
    case 6:

      return 0;
    case 4:
      v9 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v9);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v10 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v10);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v11 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v11);
      sub_2683CDCA8();
      sub_2683CDF68();
      goto LABEL_6;
    case 5:
      v4 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v4);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v5 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v6 = sub_2683CE168();
      OUTLINED_FUNCTION_42_3(v6);
      sub_2683CE158();
      sub_2683CDF78();
LABEL_6:

      OUTLINED_FUNCTION_15_33();
LABEL_7:

LABEL_10:
      OUTLINED_FUNCTION_8_37();
      sub_2683CE188();
      break;
    default:
      v12 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v12);
      sub_2683CDD08();
      sub_2683CE178();
      break;
  }

  return v3;
}

void sub_2683696A4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = sub_2683CD1F8();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = sub_2683CDFE8();
  OUTLINED_FUNCTION_42_3(v11);
  sub_2683CDFD8();

  sub_2683CDFC8();

  if (v1)
  {

    sub_2683CD1C8();
    if (sub_2683CDFB8())
    {
      sub_2683CD198();
    }

    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268369814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_17();
  v4 = sub_2683CDFA8();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CDF98();
  OUTLINED_FUNCTION_26_7();
  v5 = sub_2683CE168();
  OUTLINED_FUNCTION_42_3(v5);
  sub_2683CE158();
  if (a2)
  {
    sub_2683CE148();
  }

  sub_2683CDF78();

  return v2;
}

uint64_t sub_2683698AC()
{
  OUTLINED_FUNCTION_26_7();
  v1 = sub_2683CDFA8();
  OUTLINED_FUNCTION_42_3(v1);
  sub_2683CDF98();
  OUTLINED_FUNCTION_22_17();
  v2 = sub_2683CDB08();
  OUTLINED_FUNCTION_42_3(v2);
  sub_2683CDAF8();

  sub_2683CDAE8();

  sub_2683CDF88();

  return v0;
}

uint64_t OUTLINED_FUNCTION_15_33()
{

  return sub_2683CDCC8();
}

uint64_t sub_268369994()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_2683CCB88();
  v8 = sub_2681D3080(v5, v6);

  (*(v2 + 8))(v5, v1);
  if (v8 - 1 < 2)
  {
    return sub_2683CC2A8();
  }

  if (v8)
  {
    return sub_2683CC2B8();
  }

  return sub_2683CC298();
}

uint64_t sub_268369ACC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2683CCC18();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268369BC4, 0, 0);
}

uint64_t sub_268369BC4()
{
  v33 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  sub_2683CCB88();
  v8 = sub_2681D3080(v1, v6);

  (*(v2 + 8))(v1, v3);
  if (v8 == 3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2680EB000, v10, v11, "[NotebookContinueReadingPromptStrategy] Action for input returned handled, the parsed task is not confirmation.", v12, 2u);
      MEMORY[0x26D617A40](v12, -1, -1);
    }

LABEL_20:
    v28 = v0[8];
    v29 = v0[5];
    sub_26812C6B8();
    swift_allocError();
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    goto LABEL_21;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);
  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    if (v8)
    {
      if (v8 == 1)
      {
        v18 = 0xE400000000000000;
        v19 = 1886352499;
      }

      else
      {
        v18 = 0xE800000000000000;
        v19 = 0x65756E69746E6F63;
      }
    }

    else
    {
      v18 = 0xE600000000000000;
      v19 = 0x6C65636E6163;
    }

    v20 = sub_2681610A0(v19, v18, &v32);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2680EB000, v14, v15, "[NotebookContinueReadingPromptStrategy] Parsed continue reading response as %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D617A40](v17, -1, -1);
    MEMORY[0x26D617A40](v16, -1, -1);
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  v21 = MEMORY[0x277D5BED0];
  if (v8 != 1)
  {
    v21 = MEMORY[0x277D5BED8];
  }

  v22 = v0[8];
  v23 = v0[5];
  v24 = v0[2];
  v25 = *v21;
  v26 = sub_2683CC758();
  (*(*(v26 - 8) + 104))(v23, v25, v26);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v26);
  sub_2683CCB28();

  OUTLINED_FUNCTION_40();
LABEL_21:

  return v27();
}

uint64_t sub_268369F6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_268369F8C, 0, 0);
}

uint64_t sub_268369F8C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = *(v1 + 40);
  v7 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_26836A07C;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_26836A07C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 32);
  v4 = *v0;

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26836A168()
{
  sub_2683CC868();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCF0, &qword_2683DE630);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  type metadata accessor for NotebookContinueReadingPromptStrategy();
  sub_26836A854();

  return sub_2683CBB88();
}

uint64_t sub_26836A1F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_26836A218()
{
  sub_26836A1F0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26836A274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26836A8A8;

  return sub_268369ACC();
}

uint64_t sub_26836A31C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26836A8A8;

  return sub_268369F6C(a1);
}

uint64_t sub_26836A3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for NotebookContinueReadingPromptStrategy();
  *v9 = v4;
  v9[1] = sub_26836A8A8;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_26836A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for NotebookContinueReadingPromptStrategy();
  *v9 = v4;
  v9[1] = sub_26836A8A8;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_26836A53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B648] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26836A8A8;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_26836A5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B640] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26836A6A4;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_26836A6A4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26836A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26836A8A8;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

unint64_t sub_26836A854()
{
  result = qword_280253A98;
  if (!qword_280253A98)
  {
    type metadata accessor for NotebookContinueReadingPromptStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A98);
  }

  return result;
}

uint64_t sub_26836A8AC(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_268229348(a1);
  if (!v3)
  {
    v11 = v2;

    v10 = MEMORY[0x277D84F90];
LABEL_10:
    sub_26836AC3C(v10, v2);

    return v2;
  }

  v4 = v3;
  v12 = MEMORY[0x277D84F90];
  v5 = v2;
  result = sub_2683D0228();
  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_26836ACB0();
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D616C90](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      ++v7;
      sub_26836A9F8(v8);
      sub_2683D01F8();
      v9 = *(v12 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }

    while (v4 != v7);

    v10 = v12;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_26836A9F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2683B9E1C();
  v21[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v8 = sub_2683CFA38();
  v10 = v9;

  sub_26813F2FC(v8, v10, v6, &selRef_setContents_);
  v11 = [a1 title];
  v12 = [v11 spokenPhrase];

  v13 = sub_2683CFA78();
  v15 = v14;

  sub_26813F2FC(v13, v15, v6, &selRef_setTitle_);
  sub_2683BA54C(a1);
  v17 = v16;
  if (v16)
  {
    sub_2683CB418();

    v18 = sub_2683CB438();
    v17 = 0;
    if (__swift_getEnumTagSinglePayload(v5, 1, v18) != 1)
    {
      v17 = sub_2683CB3C8();
      (*(*(v18 - 8) + 8))(v5, v18);
    }
  }

  else
  {
    v19 = sub_2683CB438();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  }

  [v6 setIdentifier_];

  return v6;
}

void sub_26836AC3C(uint64_t a1, void *a2)
{
  sub_26836ACB0();
  v3 = sub_2683CFC98();

  [a2 setNotes_];
}

unint64_t sub_26836ACB0()
{
  result = qword_280253AA0;
  if (!qword_280253AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253AA0);
  }

  return result;
}

uint64_t sub_26836ACF4()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC598();
  v1[11] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC748();
  v1[14] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v1[17] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[18] = v14;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26836AE84()
{
  v36 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[8];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  if (v10)
  {
    log = v8;
    v15 = v0[15];
    v16 = v0[16];
    v31 = v0[14];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v17 = 136315394;
    v32 = v9;
    sub_2683CC9E8();
    v18 = sub_2683CC738();
    v20 = v19;
    (*(v15 + 8))(v16, v31);
    v21 = *(v13 + 8);
    v21(v12, v14);
    v22 = sub_2681610A0(v18, v20, &v35);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = sub_2683CC9D8();
    v24 = [v23 unsupportedReason];

    v21(v11, v14);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, log, v32, "[SnoozeTasks UnsupportedValue] Making unsupported dialog for %s with reason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v25 = *(v13 + 8);
    v25(v0[19], v0[17]);

    v25(v12, v14);
  }

  v26 = swift_task_alloc();
  v0[21] = v26;
  *v26 = v0;
  v26[1] = sub_26836B158;
  v27 = v0[13];
  v28 = v0[8];
  v29 = v0[9];

  return sub_26836B2F0();
}

uint64_t sub_26836B158()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_26836B25C;
  }

  else
  {
    v7 = sub_268135978;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26836B25C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  OUTLINED_FUNCTION_40();
  v7 = v0[22];

  return v6();
}

uint64_t sub_26836B2F0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC748();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_15_1();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26836B3C8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8 = sub_268201068();
  if (v8 == 2)
  {
    sub_26812C6B8();
    v9 = swift_allocError();
    *v10 = v5;
    v10[1] = v7;
    OUTLINED_FUNCTION_16_1(v9, v10);
    v11 = v0[8];
    v12 = v0[5];

    OUTLINED_FUNCTION_40();

    return v13();
  }

  v15 = v8;
  v16 = v0[4];

  v17 = *(v16 + 40);
  if (v15)
  {
    v18 = v0[3];
    v19 = sub_2683CC9C8();
    v20 = sub_26836C06C(v19);
    if (v20)
    {
      v21 = v20;
      if (sub_2683ABE58(v20))
      {
        sub_2683ABE60(0, (v21 & 0xC000000000000001) == 0, v21);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D616C90](0, v21);
        }

        else
        {
          v22 = *(v21 + 32);
        }

        v23 = v22;
        v24 = v0[5];

        v25 = [v23 title];

        sub_2683CFEA8();
        v26 = 0;
        goto LABEL_16;
      }
    }

    v26 = 1;
LABEL_16:
    v29 = v0[5];
    v30 = v0[3];
    v31 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v29, v26, 1, v31);
    sub_2683CF138();
    v32 = sub_2683CC9B8();
    v0[9] = sub_26818F730(v32);
    v33 = swift_task_alloc();
    v0[10] = v33;
    *v33 = v0;
    v33[1] = sub_26836B6E8;
    v34 = v0[5];
    v35 = v0[2];

    return sub_2683C8EB8();
  }

  v27 = swift_task_alloc();
  v0[12] = v27;
  *v27 = v0;
  v27[1] = sub_26836B890;
  v28 = v0[2];

  return sub_2683C8E04();
}

uint64_t sub_26836B6E8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[5];
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[11] = v0;

  sub_26812C310(v6, &unk_28024E7C0, &unk_2683D6CA0);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26836B9BC, 0, 0);
  }

  else
  {
    v9 = v3[8];
    v10 = v3[5];

    v11 = *(v7 + 8);

    return v11();
  }
}

uint64_t sub_26836B890()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v1 + 64);
  v6 = *(v1 + 40);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_26836B9BC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_26836BA24()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26836BAC8()
{
  v35 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = sub_268201068();
  if (v8 == 2)
  {
    v9 = v0[5];
    sub_26812C6B8();
    v10 = swift_allocError();
    *v11 = v5;
    v11[1] = v7;
    OUTLINED_FUNCTION_16_1(v10, v11);

    OUTLINED_FUNCTION_40();

    return v12();
  }

  else
  {
    v14 = v8;
    v15 = v0[2];

    v16 = sub_2683CC9C8();
    v17 = sub_2682DD8C4(v14 & 1, 0, 1);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027C958);
    v19 = v17;
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v22 = 136315394;
      if (v14)
      {
        v23 = 0x736B736174;
      }

      else
      {
        v23 = 0x676972547478656ELL;
      }

      if (v14)
      {
        v24 = 0xE500000000000000;
      }

      else
      {
        v24 = 0xEF656D6954726567;
      }

      v25 = sub_2681610A0(v23, v24, v34);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = v19;
      v27 = [v26 description];
      v28 = sub_2683CFA78();
      v30 = v29;

      v31 = sub_2681610A0(v28, v30, v34);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_2680EB000, v20, v21, "[SnoozeTasks UnsupportedValue] Unsupported Parameter: %s. New Intent: %s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v32 = v0[5];

    v33 = v0[1];

    return v33(v19);
  }
}

BOOL sub_26836BE08()
{
  v0 = sub_2683CC748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  sub_2683CC738();
  (*(v1 + 8))(v4, v0);
  v5 = sub_268201068();
  return v5 == 2 || (v5 & 1) == 0;
}

uint64_t sub_26836BF30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_26836ACF4();
}

uint64_t sub_26836BFD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_26836BA24();
}

uint64_t sub_26836C06C(void *a1)
{
  v2 = [a1 tasks];

  if (!v2)
  {
    return 0;
  }

  sub_268186108();
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t type metadata accessor for NotebookSuggestionsCATsSimple()
{
  result = qword_280253AA8;
  if (!qword_280253AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26836C160(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26836C1B4(a1, a2);
}

uint64_t sub_26836C1B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_268163198(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_268163208(a1);
  return v16;
}

uint64_t sub_26836C310(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

id sub_26836C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v6 = OUTLINED_FUNCTION_23(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (qword_28024CB78 != -1)
  {
    OUTLINED_FUNCTION_34();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  if (v29 == 7)
  {
    goto LABEL_4;
  }

  if (sub_268355614(v29) == 1953720684 && v14 == 0xE400000000000000)
  {

    goto LABEL_15;
  }

  v16 = OUTLINED_FUNCTION_1_62();

  if ((v16 & 1) == 0)
  {
LABEL_4:
    if (qword_28024CBE0 != -1)
    {
      OUTLINED_FUNCTION_2_57();
    }

    sub_2683CD5C8();
    if (v30)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v30)
  {
LABEL_18:
    sub_268129D44(a2);

    sub_268129504(0, &qword_280253310, 0x277CD4220);
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    sub_26835E5F8();
    sub_2683CB0D8();
    OUTLINED_FUNCTION_4_50(v13);
    OUTLINED_FUNCTION_4_50(v11);
    v17 = OUTLINED_FUNCTION_0_71();
    return sub_26835E66C(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33);
  }

  sub_2681C6CD0(a3, &v29);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(&v29, v32);
    sub_268170280();
    v25 = v27;
    __swift_destroy_boxed_opaque_existential_0(&v29);
  }

  else
  {
    sub_26812C310(&v29, &qword_28024E2C8, &unk_2683D6950);
    return 0;
  }

  return v25;
}

uint64_t sub_26836C788(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B0, &qword_2683D2328);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64) + 15;
  v2[5] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26836C894, 0, 0);
}

uint64_t sub_26836C894()
{
  if (qword_28024CBB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  OUTLINED_FUNCTION_6_37();
  v3 = sub_2683C7FD0(*(v0 + 96));
  v5 = v4;
  *(v0 + 64) = v3;
  *(v0 + 99) = v4;
  sub_268352FE8();
  v6 = type metadata accessor for NotebookLocationIntentNode(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);
  v8 = *(v0 + 56);
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(*(v0 + 56), &qword_28024D390, &qword_2683D22E8);
    goto LABEL_6;
  }

  v9 = sub_268357668();
  sub_26836D988(v8);
  if (v9 != 9)
  {
    if (sub_2683556FC(v9) == 0xD000000000000010 && 0x80000002683FA6F0 == v11)
    {
LABEL_15:
    }

    else
    {
      v13 = sub_2683D0598();

      if ((v13 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_17:
    if (v5)
    {
      v17 = 1;
    }

    else
    {
      v17 = v3;
    }

    [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v17];
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);

    v22 = OUTLINED_FUNCTION_37_0();

    return v23(v22);
  }

LABEL_6:
  v10 = *(v0 + 16);
  OUTLINED_FUNCTION_6_37();
  switch(*(v0 + 97))
  {
    case 2:
      goto LABEL_15;
    case 4:
      break;
    default:
      v14 = sub_2683D0598();

      if (v14)
      {
        goto LABEL_17;
      }

      break;
  }

  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_6_37();
  switch(*(v0 + 98))
  {
    case 3:
      goto LABEL_15;
    case 4:
      break;
    default:
      v16 = sub_2683D0598();

      if (v16)
      {
        goto LABEL_17;
      }

      break;
  }

  v25 = *(v0 + 48);
  v26 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_268352FE8();
  v27 = __swift_getEnumTagSinglePayload(v25, 1, v6);
  v28 = *(v0 + 48);
  if (v27 == 1)
  {
    v29 = &qword_28024D390;
    v30 = &qword_2683D22E8;
    v31 = *(v0 + 48);
  }

  else
  {
    v32 = *(v0 + 32);
    sub_2683531D0();
    sub_26836D988(v28);
    v33 = sub_2683CD4A8();
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      v37 = *(v0 + 32);
      v36 = *(v0 + 40);
      sub_2683CD488();
      (*(*(v33 - 8) + 8))(v37, v33);
      goto LABEL_29;
    }

    v31 = *(v0 + 32);
    v29 = &qword_28024D3B0;
    v30 = &qword_2683D2328;
  }

  sub_26812C310(v31, v29, v30);
  v34 = *(v0 + 40);
  v35 = sub_2683CEBD8();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
LABEL_29:
  v38 = swift_task_alloc();
  *(v0 + 72) = v38;
  *v38 = v0;
  v38[1] = sub_26836CDC0;
  v39 = *(v0 + 40);

  return sub_268131CEC();
}

uint64_t sub_26836CDC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 40);
  v8 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  sub_26812C310(v5, &qword_28024D3B8, &qword_2683D2330);
  if (v1)
  {
    v6 = sub_26836D0C0;
  }

  else
  {
    v6 = sub_26836CF04;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26836CF04()
{
  v1 = sub_2683ABE58(*(v0 + 80));
  v2 = *(v0 + 80);
  if (v1)
  {
    sub_2683ABE60(0, (v2 & 0xC000000000000001) == 0, *(v0 + 80));
    v3 = *(v0 + 80);
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    if ((*(v0 + 99) & 1) == 0)
    {
      v5 = *(v0 + 64);
    }

    v6 = objc_allocWithZone(MEMORY[0x277CD4178]);
    v7 = OUTLINED_FUNCTION_5_48();
    sub_26836D8DC(v7, v8, v9, 0);
  }

  else
  {
    v10 = *(v0 + 80);

    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2680EB000, v12, v13, "[NotebookNLv3Helpers.resolveSpatialEventTrigger] LocationResolver did not return any placemarks, spatial event trigger is nil.", v14, 2u);
      MEMORY[0x26D617A40](v14, -1, -1);
    }
  }

  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);

  v19 = OUTLINED_FUNCTION_37_0();

  return v20(v19);
}

uint64_t sub_26836D0C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

id sub_26836D148(uint64_t a1, uint64_t a2)
{
  if (qword_28024CB78 != -1)
  {
    OUTLINED_FUNCTION_34();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  if (v20 != 7)
  {
    if (sub_268355614(v20) == 1953720684 && v3 == 0xE400000000000000)
    {
    }

    else
    {
      v5 = OUTLINED_FUNCTION_1_62();

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (qword_28024CBE0 != -1)
    {
      OUTLINED_FUNCTION_2_57();
    }

    OUTLINED_FUNCTION_7_32();
    if (v21)
    {
      sub_268129504(0, &qword_280253320, 0x277CD4228);
      sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
      v6 = OUTLINED_FUNCTION_9_0();
      sub_268129D44(v6);

      OUTLINED_FUNCTION_9_0();
      sub_26835E5F8();
      OUTLINED_FUNCTION_9_35();
      return sub_268177814(v7, v8, v9, v10, v11, v12);
    }
  }

LABEL_15:
  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_32();
  if (v20 == 7)
  {
    goto LABEL_30;
  }

  if (sub_268355614(v20) == 1953720684 && v13 == 0xE400000000000000)
  {

    goto LABEL_25;
  }

  v15 = OUTLINED_FUNCTION_1_62();

  if (v15)
  {
LABEL_25:
    if (qword_28024CC20 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_32();
    if (!v21)
    {
      goto LABEL_30;
    }

    sub_268129504(0, &qword_280253320, 0x277CD4228);
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v16 = OUTLINED_FUNCTION_5_48();
    sub_268129D44(v16);

    sub_26835E5F8();
    OUTLINED_FUNCTION_9_35();
    return sub_268177814(v7, v8, v9, v10, v11, v12);
  }

LABEL_30:
  sub_2681C6CD0(a2, &v20);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(&v20, v22);
    sub_268170B28();
    v17 = v18;
    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  else
  {
    sub_26812C310(&v20, &qword_28024E2C8, &unk_2683D6950);
    return 0;
  }

  return v17;
}

uint64_t sub_26836D480(uint64_t a1, uint64_t a2)
{
  if (qword_28024CBC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  v3 = sub_2683CD5D8();
  v4 = v3;
  if (*(v3 + 16))
  {
    MEMORY[0x28223BE20](v3);
    v10[2] = a2;
    v5 = sub_268152EA8(sub_26836D9E4, v10, v4);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253AB8, &unk_2683F5290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2683D1EC0;
    *(inited + 32) = sub_26836D6B8();
    v5 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    v7 = *(inited + 32);
    if (v7)
    {
      v8 = v7;
      MEMORY[0x26D616770]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      v5 = v11;
    }

    swift_setDeallocating();
    sub_2681F5580();
  }

  return v5;
}

id sub_26836D640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  sub_268129D44(a2);
  result = sub_26835E5F8();
  *a3 = result;
  return result;
}

id sub_26836D6B8()
{
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  if (v6)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v0 = OUTLINED_FUNCTION_9_0();
    sub_268129D44(v0);

    OUTLINED_FUNCTION_9_0();
    return sub_26835E5F8();
  }

  if (qword_28024CB70 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v5 == 7)
  {
    goto LABEL_8;
  }

  if (sub_268355614(v5) == 1953720684 && v2 == 0xE400000000000000)
  {
  }

  else
  {
    v4 = OUTLINED_FUNCTION_1_62();

    if ((v4 & 1) == 0)
    {
LABEL_8:
      if (qword_28024CBD0 != -1)
      {
        swift_once();
      }

      sub_2683CD5C8();
    }
  }

  return 0;
}

id sub_26836D8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    sub_268129504(0, &qword_28024EEF8, 0x277CBFC40);
    v9 = sub_2683CFC98();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithPlacemark:a1 event:a2 suggestedValues:v9 mobileSpace:a4];

  return v10;
}

uint64_t sub_26836D988(uint64_t a1)
{
  v2 = type metadata accessor for NotebookLocationIntentNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_62()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_2_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_50(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return sub_2683CD5C8();
}

uint64_t OUTLINED_FUNCTION_7_32()
{

  return sub_2683CD5C8();
}

uint64_t type metadata accessor for SearchForNotebookItemsIntentWrapper()
{
  result = qword_280253AC0;
  if (!qword_280253AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26836DB64()
{
  result = sub_26812EB34(319, &qword_280253AD0);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D388);
      if (v3 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F1C0);
        if (v4 <= 0x3F)
        {
          result = sub_2683CB668();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26836DC70()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(*(v3 + 8) + 8);
  v5 = OUTLINED_FUNCTION_9_10();
  return v6(v5);
}

uint64_t sub_26836DCB8()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 64);
  v3 = OUTLINED_FUNCTION_9_10();
  return v4(v3, v1) & 1;
}

BOOL sub_26836DD0C()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_9_10();
  return v4(v3, v1) == 1;
}

uint64_t sub_26836DD64()
{
  v1 = type metadata accessor for IntentTriggerModel(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  v7 = OUTLINED_FUNCTION_23(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = v0[3];
  v13 = v0[4];
  v14 = __swift_project_boxed_opaque_existential_1(v0, v12);
  (*(v13 + 32))(v12, v13);
  sub_26836F26C(&v5[*(v2 + 28)], v11);
  OUTLINED_FUNCTION_0_46();
  sub_26836F344(v5, v15);
  type metadata accessor for LocationQuery(0);
  v16 = OUTLINED_FUNCTION_9_10();
  if (__swift_getEnumTagSinglePayload(v16, 1, v14) == 1)
  {
    sub_26836F2DC(v11);
    return 2;
  }

  else
  {
    v17 = v11[*(v14 + 6)];
    OUTLINED_FUNCTION_1_37();
    sub_26836F344(v11, v18);
  }

  return v17;
}

uint64_t sub_26836DEBC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 184) = a1;
  v3 = sub_2683CEBD8();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64);
  *(v2 + 40) = OUTLINED_FUNCTION_15_1();
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_23(Type);
  v8 = *(v7 + 64);
  *(v2 + 48) = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  *(v2 + 56) = OUTLINED_FUNCTION_15_1();
  v12 = type metadata accessor for LocationQuery(0);
  *(v2 + 64) = v12;
  OUTLINED_FUNCTION_23(v12);
  v14 = *(v13 + 64);
  *(v2 + 72) = OUTLINED_FUNCTION_15_1();
  v15 = sub_2683CE918();
  *(v2 + 80) = v15;
  v16 = *(v15 - 8);
  *(v2 + 88) = v16;
  v17 = *(v16 + 64);
  *(v2 + 96) = OUTLINED_FUNCTION_15_1();
  v18 = type metadata accessor for IntentTriggerModel(0);
  *(v2 + 104) = v18;
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26836E074, 0, 0);
}

uint64_t sub_26836E650()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v9 + 144) = v8;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26836E7C4, 0, 0);
}

uint64_t sub_26836EC40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 168) = v1;

  if (v1)
  {
    v8 = sub_26836F0D0;
  }

  else
  {
    *(v4 + 176) = a1;
    v8 = sub_26836ED60;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26836F0D0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_1_37();
  sub_26836F344(v4, v10);

  v11 = *(v0 + 8);
  v12 = *(v0 + 168);

  return v11();
}

uint64_t sub_26836F1D0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26822F724;

  return sub_26836DEBC(a1);
}

uint64_t sub_26836F26C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26836F2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26836F344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_50()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = *(v2 + 40);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_51(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1[18];
  v4 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v3);
  v5 = *(v4 + 32);
  return v3;
}

uint64_t OUTLINED_FUNCTION_5_49()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v3 = *(v1 + 88);
  return v2;
}

uint64_t OUTLINED_FUNCTION_6_38()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_33()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(v2 + 56);
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_38(uint64_t a1)
{
  *(a1 + 8) = sub_26836EC40;
  v3 = *(v2 + 40);
  return v1 + 80;
}

uint64_t OUTLINED_FUNCTION_9_36()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  return v2;
}

id OUTLINED_FUNCTION_13_36(char a1)
{

  return sub_2681DB5EC(v2, v3, v4, v1 + v5, a1 & 1);
}

uint64_t OUTLINED_FUNCTION_15_34()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
}

void OUTLINED_FUNCTION_19_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_29_19()
{
  result = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = *(v0[4] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_17()
{
  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[9];

  return sub_26822F820(v3, v6);
}

uint64_t OUTLINED_FUNCTION_33_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t type metadata accessor for AddTasksIntentWrapper()
{
  result = qword_280253AD8;
  if (!qword_280253AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26836F70C()
{
  result = sub_26812EB34(319, &qword_280253AE8);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024CDA0);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D380);
      if (v3 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024D388);
        if (v4 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024F9E8);
          if (v5 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v6 <= 0x3F)
            {
              result = sub_26812EB34(319, &qword_28024F1C0);
              if (v7 <= 0x3F)
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

  return result;
}

uint64_t sub_26836F868(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 56);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 2);
      v21[0] = *(v5 - 3);
      v21[1] = v9;
      v21[2] = v7;
      v21[3] = v8;

      v22(v19, v21);
      if (v3)
      {
        break;
      }

      v10 = v19[0];
      if (v19[0])
      {
        v11 = v19[1];
        v18 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v6 + 16);
          OUTLINED_FUNCTION_22_23();
          sub_2682E49B0();
          v6 = v15;
        }

        v12 = *(v6 + 16);
        if (v12 >= *(v6 + 24) >> 1)
        {
          sub_2682E49B0();
          v6 = v16;
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 32 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v11;
        *(v13 + 48) = v18;
      }

      v5 += 4;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_26836F9E0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253AF0, &qword_2683F5378);
  v7 = OUTLINED_FUNCTION_23(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v36 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_1();
  v37 = v17;
  MEMORY[0x28223BE20](v18);
  v35 = &v32 - v19;
  v20 = 0;
  v21 = *(a3 + 16);
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v20)
    {
      return v38;
    }

    v22 = *(type metadata accessor for Snippet.Reminder(0) - 8);
    a1(a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_26812D9E0(v11, &qword_280253AF0, &qword_2683F5378);
      ++v20;
    }

    else
    {
      v23 = v35;
      sub_268371EE8(v11, v35);
      sub_268371EE8(v23, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v38 + 16);
        OUTLINED_FUNCTION_22_23();
        sub_2682E4A6C();
        v38 = v28;
      }

      v24 = *(v38 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v38 + 24) >> 1)
      {
        v33 = *(v38 + 16);
        v34 = v24 + 1;
        sub_2682E4A6C();
        v24 = v33;
        v25 = v34;
        v38 = v29;
      }

      ++v20;
      v26 = v38;
      *(v38 + 16) = v25;
      sub_268371EE8(v37, v26 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v24);
    }
  }

  v30 = v38;

  return v30;
}

id sub_26836FCA8(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v6 = OUTLINED_FUNCTION_23(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v34 = type metadata accessor for Snippet.Reminder(0);
  v11 = OUTLINED_FUNCTION_0_3(v34);
  v31 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_1();
  v33 = v15;
  MEMORY[0x28223BE20](v16);
  v30 = &v29 - v17;
  result = sub_2683ABE58(a3);
  v19 = result;
  v20 = 0;
  v36 = a3 & 0xC000000000000001;
  v21 = a3 & 0xFFFFFFFFFFFFFF8;
  v22 = MEMORY[0x277D84F90];
  v32 = a3;
  while (1)
  {
    if (v19 == v20)
    {
      return v22;
    }

    if (v36)
    {
      result = MEMORY[0x26D616C90](v20, a3);
    }

    else
    {
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v20 + 32);
    }

    v23 = result;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v37 = result;
    v35(&v37);
    if (v3)
    {

      return v22;
    }

    if (__swift_getEnumTagSinglePayload(v10, 1, v34) == 1)
    {
      result = sub_26812D9E0(v10, &qword_28024DBC8, &qword_2683E3D30);
    }

    else
    {
      v24 = v30;
      sub_268371E88(v10, v30, type metadata accessor for Snippet.Reminder);
      sub_268371E88(v24, v33, type metadata accessor for Snippet.Reminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v22 + 16);
        OUTLINED_FUNCTION_22_23();
        sub_2682E4B38();
        v22 = v27;
      }

      v25 = *(v22 + 16);
      if (v25 >= *(v22 + 24) >> 1)
      {
        sub_2682E4B38();
        v22 = v28;
      }

      *(v22 + 16) = v25 + 1;
      result = sub_268371E88(v33, v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, type metadata accessor for Snippet.Reminder);
      a3 = v32;
    }

    ++v20;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_26836FF84(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  v11 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return v12;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = v4(&v13, v8);
    if (v3)
    {
      v10 = v12;

      return v10;
    }

    ++v5;
    v8 += 40;
    if (v13)
    {
      MEMORY[0x26D616770](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v12 = v14;
      v5 = v9;
      v7 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2683700C8(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 288) = a1;
  v4 = sub_2683CEBD8();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64);
  *(v3 + 128) = OUTLINED_FUNCTION_15_1();
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_23(Type);
  v9 = *(v8 + 64);
  *(v3 + 136) = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  *(v3 + 144) = OUTLINED_FUNCTION_15_1();
  v13 = type metadata accessor for LocationQuery(0);
  *(v3 + 152) = v13;
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  *(v3 + 160) = OUTLINED_FUNCTION_15_1();
  v16 = type metadata accessor for IntentTriggerModel(0);
  *(v3 + 168) = v16;
  OUTLINED_FUNCTION_23(v16);
  v18 = *(v17 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268370244, 0, 0);
}

uint64_t sub_268370244()
{
  v119 = v0;
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  LOBYTE(v7) = (*(v8 + 24))(v7, v8);
  v9 = type metadata accessor for AddTasksIntentWrapper();
  v10 = *(v9 + 36);
  v11 = (v1 + *(v9 + 40));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = (*(v13 + 4))(v12, v13);
  v15 = sub_2681DB5EC(v4, v6, v7, v1 + v10, v14 & 1);

  if (v15)
  {
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    v16 = sub_268177814(v15, MEMORY[0x277D84F90], 0, 0, 0, 0);
  }

  else
  {
    v16 = 0;
  }

  *(v0 + 208) = v16;
  v17 = *(v0 + 200);
  v18 = *(v0 + 104);
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_1(v18, v1[3]);
  v20 = *(v19 + 32);
  v21 = OUTLINED_FUNCTION_114();
  v23 = v22(v21);
  v24 = swift_task_alloc();
  *(v24 + 16) = v18;
  *(v0 + 216) = sub_268152EA8(sub_268371E48, v24, v23);
  *(v0 + 224) = 0;

  v25 = v1[4];
  v26 = __swift_project_boxed_opaque_existential_1(v18, v1[3]);
  v27 = *(v25 + 40);
  v28 = v26;
  v29 = OUTLINED_FUNCTION_114();
  v30(v29);
  v31 = *v17;
  *(v0 + 232) = *v17;

  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v17, v32);
  if (v31)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 80), *(*(v0 + 104) + 104));
    v33 = qword_28024C960;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 192);
    v35 = *(v0 + 168);
    v36 = *(v0 + 104);
    v37 = sub_2683CE918();
    __swift_project_value_buffer(v37, qword_28027CAC8);
    v39 = v1[3];
    v38 = v1[4];
    __swift_project_boxed_opaque_existential_1(v36, v39);
    (*(v38 + 40))(v39, v38);
    v40 = *(v34 + *(v35 + 28));
    OUTLINED_FUNCTION_0_46();
    sub_26822F8E8(v34, v41);
    v42 = swift_task_alloc();
    *(v0 + 240) = v42;
    *v42 = v0;
    v42[1] = sub_268370B60;
    OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_26_18();

    __asm { BR              X3 }
  }

  *(v0 + 256) = 0;
  v45 = OUTLINED_FUNCTION_17_25();
  v46(v45);
  sub_2681340E8(v1 + v13[5], v17, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v1, v47);
  if (OUTLINED_FUNCTION_33_18(v17) == 1)
  {
    sub_26812D9E0(*(v0 + 144), &qword_28024EA58, &unk_2683DEB50);
    v113 = 0;
LABEL_14:
    OUTLINED_FUNCTION_35_14();
    if (!v13 && (*(v0 + 288) & 1) == 0)
    {
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_25_26();
      if (!v51)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v52 = sub_2683CF7E8();
      __swift_project_value_buffer(v52, qword_28027C958);
      v53 = sub_2683CF7C8();
      v54 = sub_2683CFE58();
      if (OUTLINED_FUNCTION_43(v54))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_33(&dword_2680EB000, v55, v56, "[AddTasksIntentWrapper] resolving targetTaskList from context");
        OUTLINED_FUNCTION_38();
      }
    }

    v57 = OUTLINED_FUNCTION_23_28();
    v112 = v58;
    v117 = OUTLINED_FUNCTION_15_35(v57);

    v116 = v13;
    v115 = v113;
    MEMORY[0](v1, v25);
    v59 = objc_allocWithZone(MEMORY[0x277CD3A18]);
    v60 = OUTLINED_FUNCTION_5_50();
    if (v112)
    {
      v61 = *(v0 + 96);
      sub_2683CF258();
      if (v62)
      {
        v13 = v62;
      }

      else
      {

        OUTLINED_FUNCTION_14_30();
      }

      if (sub_2681E73A0())
      {
        v75 = OUTLINED_FUNCTION_4_52();
        v76(v75);
        sub_2681340E8(v1 + MEMORY[0x18], v0 + 56, &qword_28024FD78, &qword_2683F5370);
        OUTLINED_FUNCTION_0_46();
        sub_26822F8E8(v1, v77);
        if (*(v0 + 80))
        {
          OUTLINED_FUNCTION_9_37();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
          v78 = swift_allocObject();
          OUTLINED_FUNCTION_28_19(v78, xmmword_2683D1EC0);
          v79 = OUTLINED_FUNCTION_11_40();

          if (v79)
          {
            v80 = objc_allocWithZone(MEMORY[0x277CD3B08]);
            v81 = v79;
            v79 = [v80 initWithTriggerContact_];
          }

          v82 = *(v0 + 216);

          [v60 setContactEventTrigger_];

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
          v103 = *(v0 + 216);

          sub_26812D9E0(v0 + 56, &qword_28024FD78, &qword_2683F5370);
        }

        v104 = OUTLINED_FUNCTION_7_34();
        if (v105(v104))
        {
          v106 = OUTLINED_FUNCTION_31_14();
          v107 = OUTLINED_FUNCTION_3_51(v106);
          sub_26836FF84(v107, v108, v109);

          v110 = OUTLINED_FUNCTION_114();
          sub_268213304(v110, v111);
LABEL_37:
          v84 = OUTLINED_FUNCTION_8_39();
          v86 = v85(v84);
          if ((v87 & 1) == 0)
          {
            [v60 setTaskReference_];
          }

          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v88 = sub_2683CF7E8();
          __swift_project_value_buffer(v88, qword_28027C958);
          v89 = v60;
          v90 = sub_2683CF7C8();
          v91 = sub_2683CFE98();

          v114 = v89;
          if (os_log_type_enabled(v90, v91))
          {
            swift_slowAlloc();
            v92 = OUTLINED_FUNCTION_30_16();
            v118 = v92;
            *v13 = 136315138;
            v93 = v89;
            v94 = [v93 description];
            v95 = sub_2683CFA78();
            v97 = v96;

            v98 = sub_2681610A0(v95, v97, &v118);

            *(v13 + 1) = v98;
            OUTLINED_FUNCTION_20_33(&dword_2680EB000, v99, v100, "⚙️ [AddTasksIntentWrapper] made intent: %s");
            __swift_destroy_boxed_opaque_existential_0(v92);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          OUTLINED_FUNCTION_10_33();
          sub_26821AD1C();

          OUTLINED_FUNCTION_37();
          OUTLINED_FUNCTION_26_18();

          __asm { BRAA            X2, X16 }
        }

LABEL_36:

        goto LABEL_37;
      }

      v83 = *(v0 + 216);
    }

    else
    {
      v63 = *(v0 + 216);
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_12_30();
  sub_26822F884(v28 + *(v17 + 20), v1);
  v48 = OUTLINED_FUNCTION_33_18(v1);
  v49 = *(v0 + 160);
  if (v48 == 1)
  {
    OUTLINED_FUNCTION_22_13();
    v113 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v1];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v49, v50);
    goto LABEL_14;
  }

  v64 = OUTLINED_FUNCTION_36_16();
  v65(v64);
  v66 = *v49;
  v67 = *(v49 + 8);
  v68 = swift_task_alloc();
  *(v0 + 264) = v68;
  *v68 = v0;
  OUTLINED_FUNCTION_6_39(v68);
  OUTLINED_FUNCTION_26_18();

  return sub_2681DAB90(v69, v70, v71, v72);
}

uint64_t sub_268370B60()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v6 + 248) = v5;

  return MEMORY[0x2822009F8](sub_268370C78, 0, 0);
}

uint64_t sub_268370C78()
{
  v82 = v0;
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  if (v4)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
  }

  else
  {
    v7 = *(v0 + 232);

    v6 = 0;
  }

  *(v0 + 256) = v6;
  v8 = OUTLINED_FUNCTION_17_25();
  v9(v8);
  sub_2681340E8(v4 + v3[5], v1, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v4, v10);
  if (OUTLINED_FUNCTION_33_18(v1) == 1)
  {
    sub_26812D9E0(*(v0 + 144), &qword_28024EA58, &unk_2683DEB50);
    v76 = 0;
LABEL_8:
    OUTLINED_FUNCTION_35_14();
    if (!v3 && (*(v0 + 288) & 1) == 0)
    {
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_25_26();
      if (!v14)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v15 = sub_2683CF7E8();
      __swift_project_value_buffer(v15, qword_28027C958);
      v16 = sub_2683CF7C8();
      v17 = sub_2683CFE58();
      if (OUTLINED_FUNCTION_43(v17))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_33(&dword_2680EB000, v18, v19, "[AddTasksIntentWrapper] resolving targetTaskList from context");
        OUTLINED_FUNCTION_38();
      }
    }

    v20 = OUTLINED_FUNCTION_23_28();
    v75 = v21;
    v80 = OUTLINED_FUNCTION_15_35(v20);

    v79 = v3;
    v78 = v76;
    v6(v4, v2);
    v22 = objc_allocWithZone(MEMORY[0x277CD3A18]);
    v23 = OUTLINED_FUNCTION_5_50();
    if (v75)
    {
      v24 = *(v0 + 96);
      sub_2683CF258();
      if (v25)
      {
        v3 = v25;
      }

      else
      {

        OUTLINED_FUNCTION_14_30();
      }

      if (sub_2681E73A0())
      {
        v38 = OUTLINED_FUNCTION_4_52();
        v39(v38);
        sub_2681340E8(v4 + *(v6 + 6), v0 + 56, &qword_28024FD78, &qword_2683F5370);
        OUTLINED_FUNCTION_0_46();
        sub_26822F8E8(v4, v40);
        if (*(v0 + 80))
        {
          OUTLINED_FUNCTION_9_37();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
          v41 = swift_allocObject();
          OUTLINED_FUNCTION_28_19(v41, xmmword_2683D1EC0);
          v42 = OUTLINED_FUNCTION_11_40();

          if (v42)
          {
            v43 = objc_allocWithZone(MEMORY[0x277CD3B08]);
            v44 = v42;
            v42 = [v43 initWithTriggerContact_];
          }

          v45 = *(v0 + 216);

          [v23 setContactEventTrigger_];

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
          v66 = *(v0 + 216);

          sub_26812D9E0(v0 + 56, &qword_28024FD78, &qword_2683F5370);
        }

        v67 = OUTLINED_FUNCTION_7_34();
        if (v68(v67))
        {
          v69 = OUTLINED_FUNCTION_31_14();
          v70 = OUTLINED_FUNCTION_3_51(v69);
          sub_26836FF84(v70, v71, v72);

          v73 = OUTLINED_FUNCTION_114();
          sub_268213304(v73, v74);
LABEL_31:
          v47 = OUTLINED_FUNCTION_8_39();
          v49 = v48(v47);
          if ((v50 & 1) == 0)
          {
            [v23 setTaskReference_];
          }

          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v51 = sub_2683CF7E8();
          __swift_project_value_buffer(v51, qword_28027C958);
          v52 = v23;
          v53 = sub_2683CF7C8();
          v54 = sub_2683CFE98();

          v77 = v52;
          if (os_log_type_enabled(v53, v54))
          {
            swift_slowAlloc();
            v55 = OUTLINED_FUNCTION_30_16();
            v81 = v55;
            *v3 = 136315138;
            v56 = v52;
            v57 = [v56 description];
            v58 = sub_2683CFA78();
            v60 = v59;

            v61 = sub_2681610A0(v58, v60, &v81);

            *(v3 + 1) = v61;
            OUTLINED_FUNCTION_20_33(&dword_2680EB000, v62, v63, "⚙️ [AddTasksIntentWrapper] made intent: %s");
            __swift_destroy_boxed_opaque_existential_0(v55);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          OUTLINED_FUNCTION_10_33();
          sub_26821AD1C();

          OUTLINED_FUNCTION_37();
          OUTLINED_FUNCTION_26_18();

          __asm { BRAA            X2, X16 }
        }

LABEL_30:

        goto LABEL_31;
      }

      v46 = *(v0 + 216);
    }

    else
    {
      v26 = *(v0 + 216);
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_12_30();
  sub_26822F884(v5 + *(v1 + 20), v4);
  v11 = OUTLINED_FUNCTION_33_18(v4);
  v12 = *(v0 + 160);
  if (v11 == 1)
  {
    OUTLINED_FUNCTION_22_13();
    v76 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v4];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v12, v13);
    goto LABEL_8;
  }

  v27 = OUTLINED_FUNCTION_36_16();
  v28(v27);
  v29 = *v12;
  v30 = *(v12 + 8);
  v31 = swift_task_alloc();
  *(v0 + 264) = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_6_39(v31);
  OUTLINED_FUNCTION_26_18();

  return sub_2681DAB90(v32, v33, v34, v35);
}

uint64_t sub_2683712AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v4[34] = v1;

  if (v1)
  {
    v8 = v4[27];

    v9 = sub_2683718C8;
  }

  else
  {
    v4[35] = a1;
    v9 = sub_2683713D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2683713D4()
{
  v65 = v1;
  v3 = *(v1 + 160);
  (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));
  OUTLINED_FUNCTION_1_37();
  sub_26822F8E8(v3, v4);
  v5 = *(v1 + 280);
  v57 = *(v1 + 272);
  v6 = *(v1 + 208);
  if (!v6 && (*(v1 + 288) & 1) == 0)
  {
    OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_25_26();
    if (!v7)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE58();
    if (OUTLINED_FUNCTION_43(v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_33(&dword_2680EB000, v11, v12, "[AddTasksIntentWrapper] resolving targetTaskList from context");
      OUTLINED_FUNCTION_38();
    }
  }

  v13 = OUTLINED_FUNCTION_23_28();
  v59 = v14;
  v63 = OUTLINED_FUNCTION_15_35(v13);

  v62 = v6;
  v61 = v5;
  (v0)(0x28024C000, v2);
  v15 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v16 = OUTLINED_FUNCTION_5_50();
  if (!v59)
  {
    v19 = *(v1 + 216);
LABEL_19:

LABEL_20:

    goto LABEL_21;
  }

  v17 = *(v1 + 96);
  sub_2683CF258();
  if (v18)
  {
    v6 = v18;
  }

  else
  {

    OUTLINED_FUNCTION_14_30();
  }

  if ((sub_2681E73A0() & 1) == 0)
  {
    v28 = *(v1 + 216);
    goto LABEL_19;
  }

  v20 = OUTLINED_FUNCTION_4_52();
  v21(v20);
  sub_2681340E8(*(v0 + 24) + 0x28024C000, v1 + 56, &qword_28024FD78, &qword_2683F5370);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(0x28024C000, v22);
  if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_9_37();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_28_19(v23, xmmword_2683D1EC0);
    v24 = OUTLINED_FUNCTION_11_40();

    if (v24)
    {
      v25 = objc_allocWithZone(MEMORY[0x277CD3B08]);
      v26 = v24;
      v24 = [v25 initWithTriggerContact_];
    }

    v27 = *(v1 + 216);

    [v16 setContactEventTrigger_];

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  else
  {
    v48 = *(v1 + 216);

    sub_26812D9E0(v1 + 56, &qword_28024FD78, &qword_2683F5370);
  }

  v49 = OUTLINED_FUNCTION_7_34();
  if (!v50(v49))
  {
    goto LABEL_20;
  }

  v51 = OUTLINED_FUNCTION_31_14();
  v52 = OUTLINED_FUNCTION_3_51(v51);
  sub_26836FF84(v52, v53, v54);

  v55 = OUTLINED_FUNCTION_114();
  sub_268213304(v55, v56);
LABEL_21:
  v29 = OUTLINED_FUNCTION_8_39();
  v31 = v30(v29);
  if ((v32 & 1) == 0)
  {
    [v16 setTaskReference_];
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v33 = sub_2683CF7E8();
  __swift_project_value_buffer(v33, qword_28027C958);
  v34 = v16;
  v35 = sub_2683CF7C8();
  v36 = sub_2683CFE98();

  v60 = v34;
  if (os_log_type_enabled(v35, v36))
  {
    swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_30_16();
    v64 = v37;
    *v6 = 136315138;
    v38 = v34;
    v39 = [v38 description];
    v40 = sub_2683CFA78();
    v42 = v41;

    v43 = sub_2681610A0(v40, v42, &v64);

    *(v6 + 1) = v43;
    OUTLINED_FUNCTION_20_33(&dword_2680EB000, v44, v45, "⚙️ [AddTasksIntentWrapper] made intent: %s");
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_10_33();
  v58 = sub_26821AD1C();

  OUTLINED_FUNCTION_37();

  return v46(v58);
}

uint64_t sub_2683718C8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v14 = *(v0 + 144);
  v15 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);

  (*(v7 + 8))(v8, v9);
  OUTLINED_FUNCTION_1_37();
  sub_26822F8E8(v6, v10);

  v11 = *(v0 + 8);
  v12 = *(v0 + 272);

  return v11();
}

id sub_2683719D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v7 = type metadata accessor for AddTasksIntentWrapper();
  sub_268129D44(a2 + *(v7 + 36));
  result = sub_26835E5F8();
  *a3 = result;
  return result;
}

uint64_t sub_268371A58@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D1EC0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;

  v14 = sub_268176D1C(a2, (a3 + 160), v13, v11, v12);

  *a6 = v14;
  return result;
}

uint64_t sub_268371B28()
{
  v1 = type metadata accessor for IntentTriggerModel(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  v7 = OUTLINED_FUNCTION_23(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = v0[3];
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v12);
  (*(v13 + 40))(v12, v13);
  sub_2681340E8(&v5[*(v2 + 28)], v11, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v5, v14);
  v15 = type metadata accessor for LocationQuery(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    sub_26812D9E0(v11, &qword_28024EA58, &unk_2683DEB50);
    return 2;
  }

  else
  {
    v16 = v11[*(v15 + 24)];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v11, v17);
  }

  return v16;
}

uint64_t sub_268371CAC(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268371D50;

  return sub_2683700C8(a1, a2);
}

uint64_t sub_268371D50(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_268371E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_268371EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*OUTLINED_FUNCTION_3_51(void *a1))@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v4;
  a1[5] = v3;
  return sub_268371E68;
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[13];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 40);
  return v4;
}

id OUTLINED_FUNCTION_5_50()
{

  return sub_268213240(v2, v4, v1, v3, v0);
}

uint64_t OUTLINED_FUNCTION_6_39(uint64_t a1)
{
  *(a1 + 8) = sub_2683712AC;
  v3 = *(v2 + 128);
  return v1 + 120;
}

uint64_t OUTLINED_FUNCTION_7_34()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 64);
  return v2;
}

uint64_t OUTLINED_FUNCTION_8_39()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 56);
  return v2;
}

void *OUTLINED_FUNCTION_9_37()
{
  v1 = *(v0 + 104);
  sub_268128148((v0 + 56), v0 + 16);
  v2 = *(v0 + 48);
  return __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
}

void OUTLINED_FUNCTION_10_33()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
}

id OUTLINED_FUNCTION_11_40()
{

  return sub_268176D1C(v3, (v2 + 160), v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_12_30()
{
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[20];

  return sub_268371E88(v3, v6, type metadata accessor for LocationQuery);
}

id OUTLINED_FUNCTION_15_35(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = *(v2 + 48);

  return v1;
}

uint64_t OUTLINED_FUNCTION_17_25()
{
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[13];
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 40);
  return v6;
}

void OUTLINED_FUNCTION_18_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_20_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_28()
{
  v1 = v0[32];
  v2 = v0[27];
  v4 = v0[12];
  return v0[13];
}

void OUTLINED_FUNCTION_26_24()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 40), *(*(v0 + 104) + 64));

  sub_268170B28();
}

uint64_t OUTLINED_FUNCTION_28_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
}

uint64_t OUTLINED_FUNCTION_30_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_14()
{
  v2 = *(v0 + 104);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_36_16()
{
  result = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  v5 = *(v0[15] + 32);
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26837230C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 57))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 56);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268372348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_268372398(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_2683723D4()
{
  sub_26813A144(v0, v8);
  v1 = 2;
  switch(v9)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      sub_26813A1A0(v8);
      break;
    case 7:
      return v1;
    default:
      sub_268128148(v8, v5);
      v2 = v6;
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      v1 = (*(*(v3 + 8) + 8))(v2);
      __swift_destroy_boxed_opaque_existential_0(v5);
      break;
  }

  return v1;
}

void sub_268372484()
{
  if (qword_28024CC48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for NotebookTaskParser();
  __swift_project_value_buffer(v0, qword_28027CE50);
  sub_268372510();
}

void sub_268372510()
{
  OUTLINED_FUNCTION_30_0();
  v99 = v0;
  LODWORD(v100) = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_2683CC718();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v91 = v8;
  v92 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_18();
  v90 = v11;
  OUTLINED_FUNCTION_3_8();
  v12 = sub_2683CCC68();
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v95 = v14;
  v96 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_18();
  v94 = v17;
  OUTLINED_FUNCTION_3_8();
  v18 = sub_2683CCBD8();
  v19 = OUTLINED_FUNCTION_0_3(v18);
  v97 = v20;
  v98 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  v26 = sub_2683CE448();
  v27 = OUTLINED_FUNCTION_0_3(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_3();
  v34 = v33 - v32;
  v35 = sub_2683CCC18();
  v36 = OUTLINED_FUNCTION_0_3(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_1();
  v87 = v41;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v42);
  v89 = &v86 - v43;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v86 - v45;
  v88 = v38[2];
  v88(&v86 - v45, v3, v35);
  v93 = v3;
  if (sub_2682206DC(v3, v100))
  {
    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    *(v5 + 56) = 7;
    v47 = v38[1];
    v48 = OUTLINED_FUNCTION_69();
    v49(v48);
    goto LABEL_18;
  }

  v100 = v5;
  v50 = v38[11];
  v51 = OUTLINED_FUNCTION_69();
  v53 = v52(v51);
  if (v53 == *MEMORY[0x277D5C128])
  {
    v54 = OUTLINED_FUNCTION_11_41();
    v55(v54);
    (*(v29 + 32))(v34, v46, v26);
    sub_268372DA0();
    (*(v29 + 8))(v34, v26);
    goto LABEL_18;
  }

  if (v53 == *MEMORY[0x277D5C150])
  {
    v56 = OUTLINED_FUNCTION_11_41();
    v57(v56);
    v59 = v97;
    v58 = v98;
    (*(v97 + 32))(v25, v46, v98);
    sub_268373A08();
    (*(v59 + 8))(v25, v58);
    goto LABEL_18;
  }

  if (v53 == *MEMORY[0x277D5C160])
  {
    v60 = OUTLINED_FUNCTION_11_41();
    v61(v60);
    v63 = v94;
    v62 = v95;
    v64 = OUTLINED_FUNCTION_32_18();
    v65 = v96;
    v66(v64);
    sub_268373D68();
LABEL_11:
    (*(v62 + 8))(v63, v65);
    goto LABEL_18;
  }

  v67 = v100;
  if (v53 == *MEMORY[0x277D5C138])
  {
    v68 = OUTLINED_FUNCTION_11_41();
    v69(v68);
    v63 = v90;
    v62 = v91;
    v70 = OUTLINED_FUNCTION_32_18();
    v65 = v92;
    v71(v70);
    sub_2683740A4();
    goto LABEL_11;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v72 = sub_2683CF7E8();
  __swift_project_value_buffer(v72, qword_28027C958);
  v73 = v88;
  v74 = v89;
  v88(v89, v93, v35);
  v75 = sub_2683CF7C8();
  v76 = sub_2683CFE78();
  if (OUTLINED_FUNCTION_45(v76))
  {
    v77 = OUTLINED_FUNCTION_49();
    v99 = OUTLINED_FUNCTION_53();
    v101 = v99;
    *v77 = 136315138;
    v73(v87, v74, v35);
    v78 = sub_2683CFAD8();
    v79 = v74;
    v81 = v80;
    v82 = v38[1];
    v82(v79, v35);
    v83 = sub_2681610A0(v78, v81, &v101);

    *(v77 + 4) = v83;
    v67 = v100;
    _os_log_impl(&dword_2680EB000, v75, v76, "[NotebookTask] got unsupported parse type: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v82 = v38[1];
    v82(v74, v35);
  }

  OUTLINED_FUNCTION_26_25();
  *(v67 + 56) = v84;
  v85 = OUTLINED_FUNCTION_69();
  (v82)(v85);
LABEL_18:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268372B10()
{
  v0 = type metadata accessor for NotebookTaskParser();
  __swift_allocate_value_buffer(v0, qword_28027CE50);
  v1 = __swift_project_value_buffer(v0, qword_28027CE50);
  return sub_268372B5C(v1);
}

uint64_t sub_268372B5C@<X0>(uint64_t *a1@<X8>)
{
  sub_2683CC078();
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v2 = *(type metadata accessor for NotebookTaskParser() + 36);
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v3 = type metadata accessor for NotebookDateTimeResolver();
  a1[3] = v3;
  a1[4] = &off_287904258;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  boxed_opaque_existential_0[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_0[4] = &off_28790C920;
  v5 = swift_allocObject();
  *boxed_opaque_existential_0 = v5;
  sub_268376270(v19, v5 + 16);
  v6 = *(v3 + 20);
  v7 = sub_2683CB668();
  v8 = *(*(v7 - 8) + 16);
  v8(boxed_opaque_existential_0 + v6, a1 + v2, v7);
  v9 = boxed_opaque_existential_0 + *(v3 + 24);
  sub_2683CE7E8();
  v10 = type metadata accessor for NotebookLocationResolver();
  a1[8] = v10;
  a1[9] = &off_28790BB08;
  v11 = __swift_allocate_boxed_opaque_existential_0(a1 + 5);
  v11[3] = &type metadata for AceUserLocationProvider;
  v11[4] = &off_28790C920;
  v12 = swift_allocObject();
  *v11 = v12;
  sub_268376270(v19, v12 + 16);
  v8(v11 + *(v10 + 20), a1 + v2, v7);
  a1[13] = &type metadata for NotebookReferenceResolver;
  a1[14] = &off_287900140;
  v13 = swift_allocObject();
  a1[10] = v13;
  v14 = sub_2683CF6C8();
  v15 = sub_2683CF6B8();
  v16 = MEMORY[0x277D5FDD8];
  v13[5] = v14;
  v13[6] = v16;
  v13[2] = v15;
  a1[18] = sub_2683CE4A8();
  a1[19] = &off_287902390;
  __swift_allocate_boxed_opaque_existential_0(a1 + 15);
  sub_2683CE498();
  result = sub_2683762CC(v19);
  a1[23] = &type metadata for NotebookFeatureManager;
  a1[24] = &protocol witness table for NotebookFeatureManager;
  return result;
}

void sub_268372DA0()
{
  OUTLINED_FUNCTION_30_0();
  v157 = v0;
  v2 = v1;
  v4 = v3;
  v149 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  v5 = OUTLINED_FUNCTION_1(v149);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_18();
  v148 = v8;
  OUTLINED_FUNCTION_3_8();
  v151 = type metadata accessor for SnoozeTasksNLv3IntentWrapper();
  v9 = OUTLINED_FUNCTION_1(v151);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_18();
  v150 = v12;
  OUTLINED_FUNCTION_3_8();
  v153 = type metadata accessor for SetTaskAttributeNLv3IntentWrapper();
  v13 = OUTLINED_FUNCTION_1(v153);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_18();
  v152 = v16;
  OUTLINED_FUNCTION_3_8();
  v155 = type metadata accessor for AddTasksNLv3IntentWrapper();
  v17 = OUTLINED_FUNCTION_1(v155);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_18();
  v154 = v20;
  OUTLINED_FUNCTION_3_8();
  NoteNLv3IntentWrapper = type metadata accessor for CreateNoteNLv3IntentWrapper();
  v22 = OUTLINED_FUNCTION_1(NoteNLv3IntentWrapper);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_18();
  v156 = v25;
  v26 = OUTLINED_FUNCTION_3_8();
  v27 = type metadata accessor for NotebookNLv3Intent(v26);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  OUTLINED_FUNCTION_2_1();
  v147 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  v160 = &v143 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v143 - v34;
  v36 = sub_2683CE448();
  v37 = OUTLINED_FUNCTION_0_3(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_1();
  v146 = v42;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v43);
  v45 = &v143 - v44;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v46 = sub_2683CF7E8();
  v47 = __swift_project_value_buffer(v46, qword_28027C958);
  v48 = *(v39 + 16);
  v163 = v2;
  v158 = v48;
  v159 = v39 + 16;
  v48(v45, v2, v36);
  v161 = v47;
  v49 = sub_2683CF7C8();
  v50 = sub_2683CFE98();
  v51 = os_log_type_enabled(v49, v50);
  v162 = v39;
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_49();
    v144 = v4;
    v53 = v52;
    v54 = OUTLINED_FUNCTION_53();
    v143 = NoteNLv3IntentWrapper;
    v55 = v54;
    v165[0] = v54;
    *v53 = 136315138;
    sub_268375F78();
    v56 = sub_2683D0568();
    v58 = v57;
    v59 = OUTLINED_FUNCTION_20_34();
    v60(v59);
    v61 = sub_2681610A0(v56, v58, v165);

    *(v53 + 4) = v61;
    _os_log_impl(&dword_2680EB000, v49, v50, "[NotebookTask] parsing nlv3 intent: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    NoteNLv3IntentWrapper = v143;
    OUTLINED_FUNCTION_38();
    v4 = v144;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v62 = OUTLINED_FUNCTION_20_34();
    v63(v62);
  }

  v64 = v163;
  sub_2683CE338();
  v65 = sub_2683CD628();
  if (__swift_getEnumTagSinglePayload(v35, 1, v65) == 1)
  {
    sub_26812D9E0(v35, &qword_2802535F8, &unk_2683F32E0);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v66 = sub_2683CD5E8();
    v67 = v68;
    v69 = *(*(v65 - 8) + 8);
    v70 = OUTLINED_FUNCTION_69();
    v71(v70);
  }

  if (qword_28024CB58 != -1)
  {
    swift_once();
  }

  v72 = sub_2683CCFA8();
  if (!v67)
  {

    goto LABEL_19;
  }

  if (v66 != v72 || v67 != v73)
  {
    v75 = sub_2683D0598();

    if (v75)
    {
      goto LABEL_24;
    }

LABEL_19:
    v76 = sub_2683CF7C8();
    v77 = sub_2683CFE98();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2680EB000, v76, v77, "[NotebookTask] NLIntent is not a notebook domain intent", v78, 2u);
      OUTLINED_FUNCTION_38();
    }

    goto LABEL_22;
  }

LABEL_24:
  v80 = v160;
  v81 = v158;
  v158(v160, v64, v39);
  if (sub_268356B84())
  {
    v82 = v156;
    sub_268375FD0(v80, v156);
    v83 = v157;
    sub_26813CA00(v157 + 80, v82 + *(NoteNLv3IntentWrapper + 20));
    v84 = *(type metadata accessor for NotebookTaskParser() + 36);
    v85 = *(NoteNLv3IntentWrapper + 24);
    v86 = sub_2683CB668();
    OUTLINED_FUNCTION_1(v86);
    (*(v87 + 16))(v82 + v85, v83 + v84);
    *(v4 + 24) = NoteNLv3IntentWrapper;
    *(v4 + 32) = &off_2878FE6C8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v82, boxed_opaque_existential_0, type metadata accessor for CreateNoteNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v80, v89);
    v79 = 2;
    goto LABEL_26;
  }

  if (sub_268357170())
  {
    v90 = v154;
    sub_268375FD0(v80, v154);
    v91 = v155;
    OUTLINED_FUNCTION_18_34();
    sub_26813CA00(v39 + 40, v90 + v91[6]);
    sub_26813CA00(v39 + 120, v90 + v91[7]);
    sub_26813CA00(v39 + 80, v90 + v91[8]);
    v92 = *(type metadata accessor for NotebookTaskParser() + 36);
    v93 = v91[9];
    v94 = sub_2683CB668();
    OUTLINED_FUNCTION_1(v94);
    (*(v95 + 16))(v90 + v93, v39 + v92);
    *(v4 + 24) = v91;
    *(v4 + 32) = &off_2879051B0;
    v96 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v90, v96, type metadata accessor for AddTasksNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v80, v97);
    *(v4 + 56) = 0;
    goto LABEL_27;
  }

  sub_268357270();
  if (v98)
  {
    v99 = v152;
    sub_268375FD0(v80, v152);
    v100 = v153;
    OUTLINED_FUNCTION_18_34();
    sub_26813CA00(v39 + 40, v99 + v100[6]);
    sub_26813CA00(v39 + 120, v99 + v100[7]);
    sub_26813CA00(v39 + 80, v99 + v100[8]);
    v101 = *(type metadata accessor for NotebookTaskParser() + 36);
    v102 = v100[9];
    v103 = sub_2683CB668();
    OUTLINED_FUNCTION_1(v103);
    (*(v104 + 16))(v99 + v102, v39 + v101);
    *(v4 + 24) = v100;
    *(v4 + 32) = &off_28790E430;
    v105 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v99, v105, type metadata accessor for SetTaskAttributeNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v80, v106);
    v79 = 4;
    goto LABEL_26;
  }

  if (sub_268357548())
  {
    v107 = v150;
    sub_268375FD0(v80, v150);
    v108 = v151;
    OUTLINED_FUNCTION_18_34();
    sub_26813CA00(v39 + 80, v107 + *(v108 + 24));
    v109 = *(type metadata accessor for NotebookTaskParser() + 36);
    v110 = *(v108 + 28);
    v111 = sub_2683CB668();
    OUTLINED_FUNCTION_1(v111);
    (*(v112 + 16))(v107 + v110, v39 + v109);
    *(v4 + 24) = v108;
    *(v4 + 32) = &off_287902AF0;
    v113 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v107, v113, type metadata accessor for SnoozeTasksNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v80, v114);
    v79 = 1;
    goto LABEL_26;
  }

  if (sub_268356870())
  {
    v115 = v148;
    sub_268375FD0(v80, v148);
    v116 = v149;
    v117 = v157;
    sub_26813CA00(v157, v115 + *(v149 + 20));
    sub_26813CA00(v117 + 40, v115 + *(v116 + 24));
    *(v4 + 24) = v116;
    *(v4 + 32) = &off_2878FEAA8;
    v118 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v115, v118, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v80, v119);
    v79 = 3;
    goto LABEL_26;
  }

  v120 = sub_2683569FC();
  switch(v120)
  {
    case 24:
      v123 = v146;
      v81(v146, v64, v39);
      v124 = sub_2683CF7C8();
      v125 = sub_2683CFE78();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = OUTLINED_FUNCTION_49();
        v127 = v123;
        v128 = OUTLINED_FUNCTION_53();
        v165[0] = v128;
        *v126 = 136315138;
        sub_268375F78();
        v129 = sub_2683D0568();
        v131 = v130;
        v145(v127, v39);
        sub_2681610A0(v129, v131, v165);
        OUTLINED_FUNCTION_33_19();

        *(v126 + 4) = v127;
        _os_log_impl(&dword_2680EB000, v124, v125, "[NotebookTask] unsupported nl intent: %s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v128);
        OUTLINED_FUNCTION_15_36();
        OUTLINED_FUNCTION_38();

        OUTLINED_FUNCTION_0_72();
        v133 = v160;
      }

      else
      {

        v145(v123, v39);
        OUTLINED_FUNCTION_0_72();
        v133 = v80;
      }

      break;
    case 10:
      *(v4 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(v4 + 32) = &off_2878FE8B8;
      v121 = 10;
      goto LABEL_41;
    case 9:
      *(v4 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(v4 + 32) = &off_2878FE8B8;
      v121 = 9;
LABEL_41:
      *v4 = v121;
      OUTLINED_FUNCTION_0_72();
      sub_2683761B8(v80, v122);
      v79 = 6;
      goto LABEL_26;
    default:
      v134 = v147;
      sub_268375FD0(v80, v147);
      v135 = sub_2683CF7C8();
      v136 = sub_2683CFE78();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = OUTLINED_FUNCTION_49();
        v138 = OUTLINED_FUNCTION_53();
        v165[0] = v138;
        *v137 = 136315138;
        v164 = sub_2683569FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253AF8, &unk_2683F54D0);
        v139 = sub_2683CFAD8();
        v140 = v80;
        v142 = v141;
        sub_2683761B8(v134, type metadata accessor for NotebookNLv3Intent);
        sub_2681610A0(v139, v142, v165);
        OUTLINED_FUNCTION_33_19();

        *(v137 + 4) = v139;
        _os_log_impl(&dword_2680EB000, v135, v136, "[NotebookTask] Un-implemented unsupported handler for: %s", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v138);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();

        v133 = v140;
      }

      else
      {

        sub_2683761B8(v134, type metadata accessor for NotebookNLv3Intent);
        v133 = v80;
      }

      v132 = type metadata accessor for NotebookNLv3Intent;
      break;
  }

  sub_2683761B8(v133, v132);
LABEL_22:
  OUTLINED_FUNCTION_26_25();
LABEL_26:
  *(v4 + 56) = v79;
LABEL_27:
  OUTLINED_FUNCTION_29_0();
}

void sub_268373A08()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CCBD8();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v15 = sub_2683CF7E8();
  __swift_project_value_buffer(v15, qword_28027C958);
  v41 = *(v7 + 16);
  v41(v14, v1, v4);
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_49();
    v39 = v1;
    v19 = v18;
    v20 = OUTLINED_FUNCTION_53();
    v38 = v12;
    v21 = v20;
    v46 = v20;
    *v19 = 136315138;
    v22 = sub_2683CCBB8();
    v40 = v3;
    v24 = v23;
    (*(v7 + 8))(v14, v4);
    v25 = sub_2681610A0(v22, v24, &v46);
    v3 = v40;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2680EB000, v16, v17, "[NotebookTask] parsing direct invocation with id: %s ", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v12 = v38;
    OUTLINED_FUNCTION_38();
    v1 = v39;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v7 + 8))(v14, v4);
  }

  v26 = v41;
  v41(v12, v1, v4);
  sub_26834C7E0(v12, &v46);
  v27 = v47;
  if (v47)
  {
    v28 = v50;
    v29 = BYTE8(v49);
    v30 = v49;
    v31 = v48;
    *v3 = v46;
    *(v3 + 8) = v27;
    *(v3 + 16) = v31;
    *(v3 + 32) = v30;
    *(v3 + 40) = v29 & 1;
    *(v3 + 48) = v28;
    v32 = 5;
  }

  else
  {
    v26(v12, v1, v4);
    sub_26834E04C(v12, &v42);
    if (v43 && (v51[0] = v42, v51[1] = v43, v52 = v44, v53 = v45, sub_26839E5C0(v51, &v46), v33 = v47, v47 != 1))
    {
      v34 = v46;
      *(v3 + 24) = &type metadata for SetTaskAttributeDirectInvocationIntentWrapper;
      *(v3 + 32) = &off_28790D6C0;
      OUTLINED_FUNCTION_166_1();
      v35 = swift_allocObject();
      *v3 = v35;
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      v36 = v49;
      *(v35 + 32) = v48;
      *(v35 + 48) = v36;
      *(v35 + 64) = v50;
      v32 = 4;
    }

    else
    {
      *(v3 + 48) = 0;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *v3 = 0u;
      v32 = -1;
    }
  }

  *(v3 + 56) = v32;
  OUTLINED_FUNCTION_29_0();
}

void sub_268373D68()
{
  OUTLINED_FUNCTION_30_0();
  v34 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_2683CCC68();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v16 = sub_2683CF7E8();
  v17 = __swift_project_value_buffer(v16, qword_28027C958);
  v35 = *(v8 + 16);
  v35(v15, v2, v5);
  v33 = v17;
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_49();
    v31 = v2;
    v21 = v20;
    v30 = OUTLINED_FUNCTION_53();
    *&v38[0] = v30;
    *v21 = 136315138;
    v22 = v12;
    v35(v12, v15, v5);
    v23 = sub_2683CFAD8();
    v32 = v4;
    v25 = v24;
    (*(v8 + 8))(v15, v5);
    v26 = sub_2681610A0(v23, v25, v38);
    v4 = v32;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2680EB000, v18, v19, "[NotebookTask] parsing USO parse: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_15_36();
    v2 = v31;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v8 + 8))(v15, v5);
    v22 = v12;
  }

  v35(v22, v2, v5);
  sub_2682DF700(v22, sub_268374770, &v36);
  if (*(&v37 + 1) == 1)
  {
    sub_26812D9E0(&v36, &qword_280251D68, &unk_2683E60D0);
    v27 = sub_2683CF7C8();
    v28 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2680EB000, v27, v28, "[NotebookTask] USO invalid parse", v29, 2u);
      OUTLINED_FUNCTION_15_36();
    }

    *(v4 + 48) = 0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *(v4 + 56) = -1;
  }

  else
  {
    v38[0] = v36;
    v38[1] = v37;
    sub_2683747A0();
    sub_26818F5C8(v38);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_2683740A4()
{
  OUTLINED_FUNCTION_30_0();
  v96 = v0;
  v2 = v1;
  v100 = v3;
  Note = type metadata accessor for CreateNoteShim.Wrapper();
  v4 = OUTLINED_FUNCTION_1(Note);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_18();
  v94 = v7;
  OUTLINED_FUNCTION_3_8();
  v101 = sub_2683CEE08();
  v8 = OUTLINED_FUNCTION_0_3(v101);
  v97 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v99 = v12;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v87 - v14;
  v16 = sub_2683CC718();
  v17 = OUTLINED_FUNCTION_0_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_1();
  v91 = v22;
  OUTLINED_FUNCTION_8_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v87 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v87 - v27;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v29 = sub_2683CF7E8();
  v30 = __swift_project_value_buffer(v29, qword_28027C958);
  v31 = *(v19 + 16);
  v98 = v2;
  v32 = v31;
  v31(v28, v2, v16);
  v90 = v30;
  v33 = sub_2683CF7C8();
  v34 = sub_2683CFE98();
  v35 = OUTLINED_FUNCTION_45(v34);
  v92 = v19;
  v93 = v16;
  v89 = v19 + 16;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_49();
    v37 = OUTLINED_FUNCTION_53();
    v88 = v15;
    v38 = v37;
    v102 = v37;
    *v36 = 136315138;
    v32(v26, v28, v16);
    v39 = v32;
    v40 = sub_2683CFAD8();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_31_15();
    (v19)(v43);
    v44 = sub_2681610A0(v40, v42, &v102);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_2680EB000, v33, v34, "[NotebookTask] parsing client action: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v15 = v88;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    v32 = v39;
  }

  else
  {

    v45 = OUTLINED_FUNCTION_31_15();
    (v19)(v45);
  }

  v46 = v98;
  sub_2683CC708();
  v47 = sub_2683CEDF8();
  v49 = v48;
  v50 = *(v97 + 8);
  v50(v15, v101);
  v51 = v47 == 0x725F657461657263 && v49 == 0xEF7265646E696D65;
  if (v51 || (sub_2683D0598() & 1) != 0)
  {

    v52 = v99;
    sub_2683CC708();
    v53 = sub_2683CEDE8();
    v50(v52, v101);
    v54 = *(type metadata accessor for NotebookTaskParser() + 36);
    Reminder = type metadata accessor for CreateReminderShim.Wrapper();
    v56 = v100;
    *(v100 + 24) = Reminder;
    *(v56 + 32) = &off_28790DC70;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
    v58 = *(Reminder + 20);
    v59 = sub_2683CB668();
    OUTLINED_FUNCTION_1(v59);
    v61 = boxed_opaque_existential_0 + v58;
    v62 = v96;
    (*(v60 + 16))(v61, v96 + v54);
    sub_26813CA00(v62 + 160, boxed_opaque_existential_0 + *(Reminder + 24));
    *boxed_opaque_existential_0 = v53;
    *(v56 + 56) = 0;
    goto LABEL_12;
  }

  if (v47 == 0x6E5F657461657263 && v49 == 0xEB0000000065746FLL)
  {

    goto LABEL_21;
  }

  v64 = sub_2683D0598();

  if (v64)
  {
LABEL_21:
    v77 = *(type metadata accessor for NotebookTaskParser() + 36);
    v78 = sub_2683CB668();
    OUTLINED_FUNCTION_1(v78);
    v80 = v94;
    (*(v79 + 16))(v94, v96 + v77);
    v81 = v99;
    sub_2683CC708();
    v82 = sub_2683CEDE8();
    v50(v81, v101);
    v83 = Note;
    *(v80 + *(Note + 20)) = v82;
    v84 = v100;
    *(v100 + 24) = v83;
    *(v84 + 32) = &off_287905458;
    v85 = __swift_allocate_boxed_opaque_existential_0(v84);
    sub_268376210(v80, v85, type metadata accessor for CreateNoteShim.Wrapper);
    *(v84 + 56) = 2;
    goto LABEL_12;
  }

  v97 = v19;
  v65 = v46;
  v66 = v99;
  v67 = v91;
  v68 = v93;
  v32(v91, v65, v93);
  v69 = sub_2683CF7C8();
  v70 = sub_2683CFE58();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_49();
    v72 = OUTLINED_FUNCTION_53();
    v102 = v72;
    *v71 = 136315138;
    sub_2683CC708();
    v98 = sub_2683CEDF8();
    v73 = v68;
    v75 = v74;
    v50(v66, v101);
    (v97)(v67, v73);
    v76 = sub_2681610A0(v98, v75, &v102);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_2680EB000, v69, v70, "[NotebookTask] got unsupported client action with tool id: %s, ignoring.", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_15_36();
  }

  else
  {

    (v97)(v67, v68);
  }

  v86 = v100;
  *(v100 + 48) = 0;
  *(v86 + 16) = 0u;
  *(v86 + 32) = 0u;
  *v86 = 0u;
  *(v86 + 56) = -1;
LABEL_12:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268374770(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

void sub_2683747A0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2683CB668();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v14 = v13 - v12;
  sub_26820316C(v3, v92);
  if (v92[3])
  {
    sub_26820316C(v92, v91);
    sub_2683CDBA8();
    if (OUTLINED_FUNCTION_8_40())
    {
      OUTLINED_FUNCTION_19_34();
      sub_268392494(&v93);
      *(&v89 + 1) = &unk_28790D068;
      v90 = &off_28790D2D0;
LABEL_4:
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v15);
      *(v16 + 48) = *&v94[16];
LABEL_12:
      sub_268375254(&v88, v5);
LABEL_13:

LABEL_14:
      v20 = &v88;
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v20);
      goto LABEL_16;
    }

    sub_2683CDF38();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CDDD8();

      if (v93)
      {
        v17 = sub_268161EA4();

        if (v17)
        {
          *(v5 + 24) = &type metadata for UnsupportedIntentWrapper;
          *(v5 + 32) = &off_2878FE8B8;

          *v5 = 10;
          *(v5 + 56) = 6;
LABEL_16:
          __swift_destroy_boxed_opaque_existential_0(v91);
          goto LABEL_79;
        }
      }

      sub_26839268C(&v93);
      *(&v89 + 1) = &unk_28790D0F8;
      v90 = &off_28790D320;
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v18);
      *(v19 + 48) = *&v94[16];
      goto LABEL_12;
    }

    sub_2683CDEF8();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      sub_268392938(&v93);
      *(&v89 + 1) = &unk_28790D188;
      v90 = &off_28790D370;
      goto LABEL_4;
    }

    sub_2683CE0C8();
    if (OUTLINED_FUNCTION_8_40())
    {
      v21 = type metadata accessor for NotebookTaskParser();
      v22 = OUTLINED_FUNCTION_24_20(v21);
      v23(v22);
      *&v94[8] = type metadata accessor for SetTaskAttributeIntentModelNLv4();
      *&v94[16] = &off_2879013D8;
      __swift_allocate_boxed_opaque_existential_0(&v93);
      OUTLINED_FUNCTION_33_19();

      sub_26819675C(v24, v14, v3);
LABEL_21:
      v28 = OUTLINED_FUNCTION_10_34();
      sub_268375714(v28, v29);
LABEL_22:

LABEL_23:
      v20 = &v93;
      goto LABEL_15;
    }

    sub_2683CDBE8();
    if (OUTLINED_FUNCTION_8_40())
    {
      v25 = type metadata accessor for NotebookTaskParser();
      v26 = OUTLINED_FUNCTION_24_20(v25);
      v27(v26);
      *&v94[8] = type metadata accessor for SetTaskAttributeIntentModelNLv4();
      *&v94[16] = &off_2879013D8;
      __swift_allocate_boxed_opaque_existential_0(&v93);
      OUTLINED_FUNCTION_33_19();

      sub_268196A78(v14, v3);
      goto LABEL_21;
    }

    sub_2683CD958();
    if (OUTLINED_FUNCTION_8_40())
    {

      v30 = *(type metadata accessor for NotebookTaskParser() + 36);
      v31 = type metadata accessor for SetTaskAttributeIntentModelNLv4();
      *&v94[8] = v31;
      *&v94[16] = &off_2879013D8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v93);
      (*(v9 + 16))(boxed_opaque_existential_0 + *(v31 + 32), v1 + v30, v6);
      *boxed_opaque_existential_0 = 0u;
      *(boxed_opaque_existential_0 + 1) = 0u;
      *(boxed_opaque_existential_0 + *(v31 + 36)) = 0;
      v33 = OUTLINED_FUNCTION_10_34();
      sub_268375714(v33, v34);
      goto LABEL_23;
    }

    sub_2683CDBD8();
    if (OUTLINED_FUNCTION_8_40())
    {

      v35 = sub_26816201C();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      *&v94[8] = &type metadata for SnoozeTasksIntentModelNLv4;
      *&v94[16] = &off_2878FFB38;
      v42 = swift_allocObject();
      *&v93 = v42;
      v42[2] = v35;
      v42[3] = v37;
      v42[4] = v39;
      v42[5] = v41;
      v43 = OUTLINED_FUNCTION_10_34();
      sub_268375B64(v43, v44);
      goto LABEL_22;
    }

    sub_2683CD8B8();
    if (OUTLINED_FUNCTION_3_52())
    {

      sub_268229538(&v93);
      *(&v89 + 1) = &type metadata for CreateNoteIntentModelNLv4;
      v90 = &off_287905A30;
      OUTLINED_FUNCTION_166_1();
      v45 = swift_allocObject();
      *&v88 = v45;

      v46 = *v94;
      v45[1] = v93;
      v45[2] = v46;
      v47 = v95;
      v45[3] = *&v94[16];
      v45[4] = v47;
      NoteIntentWrapper = type metadata accessor for CreateNoteIntentWrapper();
      *(v5 + 24) = NoteIntentWrapper;
      *(v5 + 32) = &off_287904088;
      v49 = __swift_allocate_boxed_opaque_existential_0(v5);
      sub_26813CA00(&v88, v49);
      sub_26813CA00(v1 + 80, (v49 + 5));
      v50 = type metadata accessor for NotebookTaskParser();
      (*(v9 + 16))(v49 + *(NoteIntentWrapper + 24), v1 + *(v50 + 36), v6);
      sub_26813CA00(v1 + 160, v49 + *(NoteIntentWrapper + 28));
      *(v5 + 56) = 2;
      goto LABEL_14;
    }

    sub_2683CDE68();
    if (OUTLINED_FUNCTION_3_52())
    {
      goto LABEL_31;
    }

    sub_2683CDAD8();
    if (OUTLINED_FUNCTION_3_52())
    {
      goto LABEL_35;
    }

    sub_2683CE0D8();
    if (OUTLINED_FUNCTION_3_52())
    {
      goto LABEL_40;
    }

    sub_2683CD9D8();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();

      v51 = OUTLINED_FUNCTION_30_17();
      v53 = 1;
      goto LABEL_33;
    }

    sub_2683CD728();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();

      v56 = OUTLINED_FUNCTION_30_17();
      v58 = 1;
      goto LABEL_37;
    }

    sub_2683CDD98();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CD8F8();

      v61 = v93;
      v62 = 1;
      goto LABEL_42;
    }

    sub_2683CDEE8();
    if (OUTLINED_FUNCTION_3_52())
    {
LABEL_35:
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();
LABEL_36:

      v56 = OUTLINED_FUNCTION_30_17();
      v58 = 0;
LABEL_37:
      sub_2683664F8(v56, v58, v57);
      *(&v89 + 1) = &unk_28790BCB8;
      v90 = &off_28790BF28;
      v59 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v59);
      *(v60 + 41) = *&v94[9];
      goto LABEL_38;
    }

    sub_2683CE108();
    if (OUTLINED_FUNCTION_3_52())
    {
LABEL_31:
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();
LABEL_32:

      v51 = OUTLINED_FUNCTION_30_17();
      v53 = 0;
LABEL_33:
      sub_268365D00(v51, v53, v52);
      *(&v89 + 1) = &unk_28790BD48;
      v90 = &off_28790BF88;
      v54 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v54);
      *(v55 + 48) = *&v94[16];
      *(v55 + 64) = v95;
LABEL_38:
      sub_268375C90(&v88, v5);
      goto LABEL_13;
    }

    sub_2683CE208();
    if (OUTLINED_FUNCTION_3_52())
    {
LABEL_40:
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CD8F8();
LABEL_41:

      v61 = v93;
      v62 = 0;
LABEL_42:
      sub_268366228(v61, v62, &v88);
      *&v94[8] = &unk_28790BDE0;
      *&v94[16] = &off_28790BFE8;
      v63 = swift_allocObject();
      *&v93 = v63;
      v64 = v89;
      *(v63 + 16) = v88;
      *(v63 + 32) = v64;
      *(v63 + 48) = v90;
      v65 = OUTLINED_FUNCTION_10_34();
      sub_268375C90(v65, v66);
      goto LABEL_22;
    }

    sub_2683CD948();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CDDC8();
      goto LABEL_36;
    }

    sub_2683CDC88();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CDDC8();
      goto LABEL_32;
    }

    sub_2683CDF48();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CDDC8();
      goto LABEL_41;
    }

    sub_2683CD8D8();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CCFF8();
      goto LABEL_36;
    }

    sub_2683CDBC8();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CCFF8();
      goto LABEL_32;
    }

    sub_2683CDF28();
    if (OUTLINED_FUNCTION_3_52())
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CCFF8();
      goto LABEL_41;
    }

    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  sub_26820316C(v3, &v93);
  v67 = sub_2683B62B0(&v93);
  if (v67 == 24)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v68 = sub_2683CF7E8();
    __swift_project_value_buffer(v68, qword_28027C958);
    sub_26818F56C(v3, &v93);
    v69 = sub_2683CF7C8();
    v70 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v70))
    {
      v71 = OUTLINED_FUNCTION_49();
      v72 = OUTLINED_FUNCTION_53();
      v91[0] = v72;
      *v71 = 136315138;
      sub_26818F56C(&v93, &v88);
      v73 = sub_2683CFAD8();
      v75 = v74;
      sub_26818F5C8(&v93);
      v76 = sub_2681610A0(v73, v75, v91);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_2680EB000, v69, v70, "[NotebookTask] NLv4 intent unsupported and not handled: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26818F5C8(&v93);
    }

    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    v87 = -1;
  }

  else
  {
    v77 = v67;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v78 = sub_2683CF7E8();
    __swift_project_value_buffer(v78, qword_28027C958);
    sub_26818F56C(v3, &v93);
    v79 = sub_2683CF7C8();
    v80 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v80))
    {
      v81 = OUTLINED_FUNCTION_49();
      v82 = OUTLINED_FUNCTION_53();
      v91[0] = v82;
      *v81 = 136315138;
      sub_26818F56C(&v93, &v88);
      v83 = sub_2683CFAD8();
      v85 = v84;
      sub_26818F5C8(&v93);
      v86 = sub_2681610A0(v83, v85, v91);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_2680EB000, v79, v80, "[NotebookTask] NLv4 intent recognized as unsupported: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26818F5C8(&v93);
    }

    *(v5 + 24) = &type metadata for UnsupportedIntentWrapper;
    *(v5 + 32) = &off_2878FE8B8;
    *v5 = v77;
    v87 = 6;
  }

  *(v5 + 56) = v87;
LABEL_79:
  sub_26812D9E0(v92, &qword_28024E370, &unk_2683D9AA0);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268375254@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AddTasksIntentWrapper();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2683CB668();
  v35 = *(v36 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IntentTriggerModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 40))(v16, v17);
  if (*&v15[*(v12 + 36)] && (sub_2683CDA18() || sub_2683CDA08()))
  {

    v18 = *__swift_project_boxed_opaque_existential_1(&v15[*(v12 + 32)], *&v15[*(v12 + 32) + 24]);
    LOBYTE(v18) = sub_2683ACB94();
    result = sub_2683761B8(v15, type metadata accessor for IntentTriggerModel);
    if (v18)
    {
      *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(a2 + 32) = &off_2878FE8B8;
      v20 = 23;
LABEL_9:
      *a2 = v20;
      v23 = 6;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2683761B8(v15, type metadata accessor for IntentTriggerModel);
  }

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  result = (*(v22 + 72))(v21, v22);
  if (result)
  {
    *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
    *(a2 + 32) = &off_2878FE8B8;
    v20 = 13;
    goto LABEL_9;
  }

  sub_26813CA00(a1, v42);
  sub_26813CA00(v3 + 80, v41);
  sub_26813CA00(v3, v40);
  sub_26813CA00(v3 + 40, v39);
  sub_26813CA00(v3 + 120, v38);
  sub_26813CA00(v3 + 160, v37);
  v24 = type metadata accessor for NotebookTaskParser();
  v25 = v35;
  v26 = *(v35 + 16);
  v27 = v34;
  v28 = v36;
  v26(v34, v3 + *(v24 + 36), v36);
  *(a2 + 24) = v6;
  *(a2 + 32) = &off_28790C1C8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_26813CA00(v42, v9);
  sub_26813CA00(v41, (v9 + 40));
  sub_26813CA00(v40, (v9 + 80));
  sub_26813CA00(v39, (v9 + 120));
  sub_26813CA00(v38, (v9 + 160));
  v26(&v9[*(v6 + 36)], v27, v28);
  sub_26813CA00(v37, &v9[*(v6 + 40)]);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v30 = sub_2683CF7E8();
  __swift_project_value_buffer(v30, qword_28027C958);
  v31 = sub_2683CF7C8();
  v32 = sub_2683CFE58();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2680EB000, v31, v32, "[AddTasksIntentWrapper] Created", v33, 2u);
    MEMORY[0x26D617A40](v33, -1, -1);
  }

  (*(v25 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v39);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  result = sub_268376210(v9, boxed_opaque_existential_0, type metadata accessor for AddTasksIntentWrapper);
  v23 = 0;
LABEL_15:
  *(a2 + 56) = v23;
  return result;
}

uint64_t sub_268375714@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SetTaskAttributeIntentWrapper();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CB668();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IntentTriggerModel(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3])[2];

  sub_2681C326C(v19, 0, v17);
  if (*(v17 + *(v14 + 36)) && (sub_2683CDA18() || sub_2683CDA08()))
  {

    v20 = *__swift_project_boxed_opaque_existential_1((v17 + *(v14 + 32)), *(v17 + *(v14 + 32) + 24));
    LOBYTE(v20) = sub_2683ACB94();
    result = sub_2683761B8(v17, type metadata accessor for IntentTriggerModel);
    if (v20)
    {
      *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(a2 + 32) = &off_2878FE8B8;
      v22 = 23;
LABEL_9:
      *a2 = v22;
      v23 = 6;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2683761B8(v17, type metadata accessor for IntentTriggerModel);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_268196F5C();
  if (result)
  {
    *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
    *(a2 + 32) = &off_2878FE8B8;
    v22 = 20;
    goto LABEL_9;
  }

  sub_26813CA00(a1, v38);
  sub_26813CA00(v3 + 80, v37);
  sub_26813CA00(v3, v36);
  sub_26813CA00(v3 + 40, v35);
  sub_26813CA00(v3 + 120, v34);
  v24 = type metadata accessor for NotebookTaskParser();
  v25 = v33;
  v26 = *(v33 + 16);
  v26(v13, v3 + *(v24 + 36), v10);
  *(a2 + 24) = v6;
  *(a2 + 32) = &off_287905B30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_26813CA00(v38, v9);
  sub_26813CA00(v37, (v9 + 40));
  sub_26813CA00(v36, (v9 + 80));
  sub_26813CA00(v35, (v9 + 120));
  sub_26813CA00(v34, (v9 + 160));
  v26(&v9[*(v6 + 36)], v13, v10);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v28 = sub_2683CF7E8();
  __swift_project_value_buffer(v28, qword_28027C958);
  v29 = sub_2683CF7C8();
  v30 = sub_2683CFE58();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2680EB000, v29, v30, "[SetTaskAttributeIntentWrapper] Created", v31, 2u);
    MEMORY[0x26D617A40](v31, -1, -1);
  }

  (*(v25 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  result = sub_268376210(v9, boxed_opaque_existential_0, type metadata accessor for SetTaskAttributeIntentWrapper);
  v23 = 4;
LABEL_15:
  *(a2 + 56) = v23;
  return result;
}

uint64_t sub_268375B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2683CB668();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26813CA00(a1, v14);
  sub_26813CA00(v2, v13);
  v10 = type metadata accessor for NotebookTaskParser();
  (*(v6 + 16))(v9, v2 + *(v10 + 36), v5);
  *(a2 + 24) = type metadata accessor for SnoozeTasksIntentWrapper();
  *(a2 + 32) = &off_2879024C0;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  result = sub_2681B6AB0(v14, v13, v9, boxed_opaque_existential_0);
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_268375C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SearchForNotebookItemsIntentWrapper();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CB668();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26813CA00(a1, v26);
  sub_26813CA00(v3, v25);
  sub_26813CA00(v3 + 40, v24);
  sub_26813CA00(v3 + 160, v23);
  v15 = type metadata accessor for NotebookTaskParser();
  v16 = *(v11 + 16);
  v16(v14, v3 + *(v15 + 36), v10);
  *(a2 + 24) = v6;
  *(a2 + 32) = &off_28790C178;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_26813CA00(v26, v9);
  sub_26813CA00(v25, (v9 + 40));
  sub_26813CA00(v24, (v9 + 80));
  v16(&v9[*(v6 + 32)], v14, v10);
  sub_26813CA00(v23, (v9 + 120));
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE58();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2680EB000, v19, v20, "[SearchForNotebookItemsIntentWrapper] Created", v21, 2u);
    MEMORY[0x26D617A40](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  result = sub_268376210(v9, boxed_opaque_existential_0, type metadata accessor for SearchForNotebookItemsIntentWrapper);
  *(a2 + 56) = 3;
  return result;
}

unint64_t sub_268375F78()
{
  result = qword_28024E980;
  if (!qword_28024E980)
  {
    sub_2683CE448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E980);
  }

  return result;
}

uint64_t sub_268375FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotebookNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NotebookTaskParser()
{
  result = qword_280253B00;
  if (!qword_280253B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  OUTLINED_FUNCTION_35_15();
  v2(v0[3]);
  v1(v0[4]);
  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_23_29();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_11Tm_0()
{
  OUTLINED_FUNCTION_35_15();
  v3 = v0[3];

  v2(v0[4]);
  v1(v0[5]);
  v2(v0[6]);
  v4 = v0[7];

  v5 = OUTLINED_FUNCTION_23_29();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t objectdestroy_14Tm(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[4];

  a1(v1[5]);
  v6 = v1[6];

  v7 = OUTLINED_FUNCTION_23_29();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_2683761B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268376210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_268376348()
{
  result = sub_26812EB34(319, &qword_28024D380);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D388);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024CDA0);
      if (v3 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F9E8);
        if (v4 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024F1C0);
          if (v5 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_40()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_9_38(uint64_t a1)
{
  *(v1 - 256) = a1;
  result = *(v1 - 144);
  v3 = *(v1 - 128);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void OUTLINED_FUNCTION_15_36()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_18_34()
{
  v4 = v1 + *(v0 + 20);
  v5 = *(v2 - 160);

  return sub_26813CA00(v5, v4);
}

uint64_t OUTLINED_FUNCTION_19_34()
{
  v2 = *(v0 - 216);
}

uint64_t OUTLINED_FUNCTION_20_34()
{
  result = v0;
  *(v2 - 256) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_20(uint64_t a1)
{
  v4 = *(v3 + 16);
  v5 = v1 + *(a1 + 36);
  return v2;
}

double OUTLINED_FUNCTION_26_25()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_15()
{
  v2 = *(v0 + 16);
}

uint64_t sub_26837662C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2683766AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_26837682C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_268376A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for IdentifiableItem();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

uint64_t sub_268376B58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = qword_28024CB80;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_2683CD158();

  return sub_2683CC258();
}

uint64_t sub_268376BF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_268376C40()
{
  v37[4] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277D5C220]);
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v1 = qword_2802540E0;
  v2 = unk_2802540E8;
  v37[0] = qword_2802540D0;
  v37[1] = *algn_2802540D8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v1, v2);
  v3 = sub_2683CFA68();

  v4 = [v0 initWithIdentifier_];

  v5 = sub_2683CB378();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2683CB368();
  sub_26837E490();
  sub_2683CB358();

  v23 = objc_opt_self();
  OUTLINED_FUNCTION_44_13();
  v24 = sub_2683CB448();
  v37[0] = 0;
  v25 = [v23 propertyListWithData:v24 options:0 format:0 error:v37];

  if (v25)
  {
    v26 = v37[0];
    sub_2683D0038();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC48, &qword_2683D4410);
    if (swift_dynamicCast())
    {
      sub_268160CEC(v36);

      v27 = sub_2683CF9B8();
    }

    else
    {
      v27 = 0;
    }

    [v4 setUserData_];
    v32 = OUTLINED_FUNCTION_44_13();
    sub_268143054(v32, v33);
  }

  else
  {
    v28 = v37[0];
    v29 = sub_2683CB388();

    swift_willThrow();
    v30 = OUTLINED_FUNCTION_44_13();
    sub_268143054(v30, v31);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v9 = v29;
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE78();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v12 = 136315650;
      v13 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v14 = sub_2683CFAD8();
      v16 = sub_2681610A0(v14, v15, v37);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_2683D0638();
      v19 = sub_2681610A0(v17, v18, v37);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2080;
      v20 = sub_2683CFAD8();
      v22 = sub_2681610A0(v20, v21, v37);

      *(v12 + 24) = v22;
      _os_log_impl(&dword_2680EB000, v10, v11, "Failed to serialize DirectInvocation with error: %s - %s. Object: %s", v12, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v4;
}

id sub_2683770B4(void *a1, uint64_t a2)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277D5C220]);
  if (qword_28024C890 != -1)
  {
    swift_once();
  }

  v5 = qword_28027C7D0;
  v6 = unk_28027C7D8;
  v40 = qword_28027C7C0;
  v41 = *algn_28027C7C8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v5, v6);
  v7 = sub_2683CFA68();

  v8 = [v4 initWithIdentifier_];

  v9 = sub_2683CB378();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_2683CB368();
  sub_26818ACE0();
  v28 = sub_2683CB358();
  v30 = v29;

  v31 = objc_opt_self();
  v32 = sub_2683CB448();
  v40 = 0;
  v33 = [v31 propertyListWithData:v32 options:0 format:0 error:&v40];

  v34 = v40;
  if (v33)
  {

    sub_2683D0038();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC48, &qword_2683D4410);
    if (swift_dynamicCast())
    {
      sub_268160CEC(v42[0]);

      v35 = sub_2683CF9B8();
    }

    else
    {
      v35 = 0;
    }

    [v8 setUserData_];
    sub_268143054(v28, v30);
  }

  else
  {
    v36 = v34;
    v37 = sub_2683CB388();

    swift_willThrow();
    sub_268143054(v28, v30);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = v37;

    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE78();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42[0] = v17;
      *v16 = 136315650;
      v40 = v37;
      v18 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v19 = sub_2683CFAD8();
      v21 = sub_2681610A0(v19, v20, v42);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_2683D0638();
      v24 = sub_2681610A0(v22, v23, v42);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2080;
      v40 = a1;
      v41 = a2;
      v25 = sub_2683CFAD8();
      v27 = sub_2681610A0(v25, v26, v42);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_2680EB000, v14, v15, "Failed to serialize DirectInvocation with error: %s - %s. Object: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v17, -1, -1);
      MEMORY[0x26D617A40](v16, -1, -1);
    }

    else
    {
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_26837757C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_2683CF168();
  OUTLINED_FUNCTION_1(v12);
  (*(v13 + 32))(a6, a1);
  v14 = type metadata accessor for SimpleDisambiguationItem();
  (*(*(a5 - 8) + 32))(a6 + v14[7], a2, a5);
  *(a6 + v14[8]) = a3;
  return sub_26812DA84(a4, a6 + v14[9], &qword_28024DD28, &qword_2683D4CF0);
}

uint64_t sub_268377670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253B90, &qword_2683F55B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v16 = a2;
    v17 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_26812DA38(v11, v8, &qword_280253B90, &qword_2683F55B0);
      v13 = *&v8[*(v4 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253B98, &qword_2683F55B8) + 28)];
      sub_2681433DC(v8, &qword_280253B90, &qword_2683F55B0);
      sub_2683D01F8();
      v14 = *(v17 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v11 += v12;
      --v9;
    }

    while (v9);
    a2 = v16;
    v10 = v17;
  }

  sub_26837D2BC(v10, a2);
}

uint64_t sub_26837781C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BC0, &qword_2683F55E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v16 = a2;
    v17 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_26812DA38(v11, v8, &qword_280253BC0, &qword_2683F55E0);
      v13 = *&v8[*(v4 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BC8, &qword_2683F55E8) + 28)];
      sub_2681433DC(v8, &qword_280253BC0, &qword_2683F55E0);
      sub_2683D01F8();
      v14 = *(v17 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v11 += v12;
      --v9;
    }

    while (v9);
    a2 = v16;
    v10 = v17;
  }

  sub_26837D0B0(v10, a2);
}

uint64_t sub_268377A30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(a2 + 128);
  sub_2683CF258();
  sub_268377C40(a1, a3, a4, v10);
  OUTLINED_FUNCTION_25_27();
  sub_2681E7490();
  if (OUTLINED_FUNCTION_58_6())
  {
    switch(a4)
    {
      case 1uLL:
      case 3uLL:
        break;
      case 2uLL:
        OUTLINED_FUNCTION_17_26();
        sub_268154220();
        goto LABEL_5;
      default:
        v8 = OUTLINED_FUNCTION_17_26();
        sub_268155728(v8);
LABEL_5:

        break;
    }
  }

  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_92_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268377B54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = *(a2 + 128);
  sub_2683CF258();
  a3(&v8, a1);
  OUTLINED_FUNCTION_25_27();
  sub_2681E7490();
  if (OUTLINED_FUNCTION_58_6())
  {
    switch(a3)
    {
      case 1uLL:
      case 3uLL:
        break;
      case 2uLL:
        OUTLINED_FUNCTION_17_26();
        sub_268154220();
        goto LABEL_5;
      default:
        v6 = OUTLINED_FUNCTION_17_26();
        sub_268155728(v6);
LABEL_5:

        break;
    }
  }

  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_92_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268377C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v24 = a4;
    v28 = MEMORY[0x277D84F90];
    sub_268390600(0, v12, 0);
    v13 = v28;
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v25 = *(v7 + 72);
    do
    {
      v15 = v27;
      sub_26812DA38(v14, v11, a2, v27);
      v16 = &v11[*(v26 + 28)];
      v17 = sub_2683CF158();
      v19 = v18;
      result = sub_2681433DC(v11, a2, v15);
      v28 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_268390600((v20 > 1), v21 + 1, 1);
        v13 = v28;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v14 += v25;
      --v12;
    }

    while (v12);
    a4 = v24;
  }

  *a4 = v13;
  *(a4 + 8) = 1;
  return result;
}

uint64_t sub_268377DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return OUTLINED_FUNCTION_1_1(sub_268377E18);
}

uint64_t sub_268377E18()
{
  OUTLINED_FUNCTION_7();
  sub_26813C7E0(*(v0 + 120) + 40, v0 + 16);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 1)
    {
      v1 = *(v0 + 128);
      v2 = *(v0 + 112);
      v3 = *(v0 + 16);
      *(v0 + 216) = v3;
      v4 = *(v1 + 16);
      OUTLINED_FUNCTION_30_18();
      OUTLINED_FUNCTION_47_3();
      sub_2683CC888();
      v5 = sub_2683CC878();
      *(v0 + 224) = v5;
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 232) = v6;
      *v6 = v7;
      v6[1] = sub_268378518;
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);
      v11 = *(v0 + 104);

      return sub_2683799A8(v11, v5, v3, v10, v8);
    }

    v26 = *(v0 + 112);
    v27 = *(*(v0 + 128) + 16);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_47_3();
    sub_2683CC888();
    v22 = sub_2683CC878();
    *(v0 + 144) = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 152) = v23;
    *v23 = v28;
    v25 = sub_268378170;
    goto LABEL_13;
  }

  v13 = *(v0 + 120);
  sub_268128148((v0 + 16), v0 + 64);
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  OUTLINED_FUNCTION_55_0();
  if (sub_2683CC0C8())
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2680EB000, v16, v17, "[SimpleParameterDisambiguationStrategy] using non-RF prompt for CarPlay regardless of feature flag due to rdar://91635513", v18, 2u);
      OUTLINED_FUNCTION_38();
    }

    v19 = *(v0 + 128);
    v20 = *(v0 + 112);

    v21 = *(v19 + 16);
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_47_3();
    sub_2683CC888();
    v22 = sub_2683CC878();
    *(v0 + 192) = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 200) = v23;
    *v23 = v24;
    v25 = sub_268378400;
LABEL_13:
    v23[1] = v25;
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = *(v0 + 104);

    return sub_2683787E8(v32, v22, v31, v29);
  }

  v33 = *(v0 + 112);
  v34 = *(*(v0 + 128) + 16);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_47_3();
  sub_2683CC888();
  v35 = sub_2683CC878();
  *(v0 + 168) = v35;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 176) = v36;
  *v36 = v37;
  v36[1] = sub_268378290;
  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v40 = *(v0 + 104);

  return sub_2683792F8(v40, v35, v0 + 64, v38);
}

uint64_t sub_268378170()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268378290()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *(v4 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2683783A8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  OUTLINED_FUNCTION_7_4();

  return v1();
}

uint64_t sub_268378400()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *(v4 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268378518()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268378618()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_7_4();

  return v2();
}

uint64_t sub_268378670()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);
  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2683786CC()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268378728()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268378784()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[27];
  v1 = v0[28];

  v3 = v0[30];
  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2683787E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[245] = v4;
  v5[244] = a4;
  v5[243] = a3;
  v5[237] = a2;
  v5[231] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v5[246] = swift_task_alloc();
  v7 = sub_2683CC598();
  v5[247] = v7;
  v8 = *(v7 - 8);
  v5[248] = v8;
  v9 = *(v8 + 64) + 15;
  v5[249] = swift_task_alloc();
  v5[250] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683788FC, 0, 0);
}

uint64_t sub_2683788FC()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1976);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1944);
  v6 = *(v0 + 1896);
  v7 = swift_allocObject();
  *(v0 + 2008) = v7;
  v8 = *(v4 + 16);
  *(v0 + 2016) = v8;
  v7[2] = v8;
  memcpy(v7 + 3, v3, 0xB0uLL);
  v7[25] = v6;
  (*(*(v4 - 8) + 16))(v0 + 1336, v3, v4);

  swift_asyncLet_begin();
  *(v0 + 1752) = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  type metadata accessor for SimpleDisambiguationItem();
  type metadata accessor for IdentifiableItem();
  OUTLINED_FUNCTION_47_3();
  v10 = sub_2683CFD28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253CF0, &unk_2683F6640);
  v12 = OUTLINED_FUNCTION_20_35();
  v14 = sub_268167FAC(sub_26837E314, v9, v10, v11, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);
  *(v0 + 2024) = v14;

  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  v17 = OUTLINED_FUNCTION_9_0();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v19 = sub_268129C00();
  *(v0 + 2032) = v19;
  sub_26813CA00(v5, v0 + 1512);
  v20 = swift_allocObject();
  *(v0 + 2040) = v20;
  *(v20 + 16) = v14;
  *(v20 + 24) = v19;
  sub_268128148((v0 + 1512), v20 + 32);

  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E450, &qword_2683D6CF0);
  swift_asyncLet_begin();
  v22 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200930](v22);
}

uint64_t sub_268378B84()
{
  *(v1 + 2048) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1800, sub_26837905C, v1 + 1552);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_268378BC0);
  }
}

uint64_t sub_268378BC0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1944);
  (*(*(v0 + 1984) + 16))(*(v0 + 1992), *(v0 + 2000), *(v0 + 1976));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_55_0();
  *(v0 + 2072) = sub_2683CC0A8() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
  inited = swift_initStackObject();
  *(v0 + 2056) = inited;
  *(inited + 16) = xmmword_2683D1EC0;
  v4 = OUTLINED_FUNCTION_33_20();

  return MEMORY[0x282200930](v4);
}

uint64_t sub_268378C94()
{
  OUTLINED_FUNCTION_14();
  v1[258] = v0;
  if (v0)
  {
    (*(v1[248] + 8))(v1[249], v1[247]);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_268378D20()
{
  v1 = *(v0 + 1800);
  *(*(v0 + 2056) + 32) = v1;
  v28 = MEMORY[0x277D84F90];
  v2 = v1;
  for (i = 0; (i & 1) == 0; i = 1)
  {
    v4 = *(*(v0 + 2056) + 32);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    MEMORY[0x26D616770]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2683CFCD8();
    }

    OUTLINED_FUNCTION_0_0();
    sub_2683CFD08();
  }

  v26 = *(v0 + 2072);
  v6 = *(v0 + 2016);
  v7 = *(v0 + 1984);
  v27 = *(v0 + 1976);
  v8 = *(v0 + 1968);
  v9 = *(v0 + 1960);
  v24 = *(v0 + 1944);
  v25 = *(v0 + 1992);
  v10 = *(v0 + 1896);
  v11 = *(v0 + 1848);
  swift_setDeallocating();
  sub_2681F5544();
  v12 = *(v9 + 56);
  v13 = *(v9 + 64);
  sub_26816954C();
  sub_2683CC528();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = sub_2683CCC98();
  *(v0 + 1672) = 0u;
  *(v0 + 1688) = 0u;
  *(v0 + 1704) = 0;
  v19 = MEMORY[0x277D5C1D8];
  v11[3] = v18;
  v11[4] = v19;
  __swift_allocate_boxed_opaque_existential_0(v11);
  sub_2683CC348();

  sub_2681433DC(v0 + 1672, &qword_28024D408, &qword_2683D2470);
  sub_2681433DC(v8, &qword_28024D400, &qword_2683D2460);
  (*(v7 + 8))(v25, v27);
  v20 = OUTLINED_FUNCTION_33_20();

  return MEMORY[0x282200920](v20, v21, v22, v0 + 1856);
}

uint64_t sub_268378F50()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  v3 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1904);
}

uint64_t sub_268378FCC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[255];
  v2 = v0[251];
  v3 = v0[250];
  v4 = v0[249];
  v5 = v0[246];

  OUTLINED_FUNCTION_7_4();

  return v6();
}

uint64_t sub_268379070()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  v3 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1632);
}

uint64_t sub_2683790EC()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2048);
  OUTLINED_FUNCTION_38_13();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268379174()
{
  OUTLINED_FUNCTION_14();
  *(*(v0 + 2056) + 16) = 0;
  swift_setDeallocating();
  sub_2681F5544();
  v1 = OUTLINED_FUNCTION_33_20();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 1760);
}

uint64_t sub_2683791F4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  v3 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1808);
}

uint64_t sub_268379270()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2064);
  OUTLINED_FUNCTION_38_13();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2683792F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_2683CC138() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683793EC, 0, 0);
}

uint64_t sub_2683793EC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  sub_2683CC118();
  v7 = swift_task_alloc();
  v7[2] = *(v4 + 16);
  v7[3] = v6;
  v7[4] = v3;
  sub_2683CC8E8();

  v8 = v5[3];
  v0[11] = v8;
  v0[12] = v5[4];
  v0[13] = __swift_project_boxed_opaque_existential_1(v5, v8);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = sub_26837B9C0(v6, v4);
  v0[14] = v11;
  v15 = (v9 + *v9);
  v12 = v9[1];
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_268379580;

  return v15(v11);
}

uint64_t sub_268379580()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *(v7 + 112);
  v10 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;
  v5[16] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v5[17] = v3;
    v15 = *(MEMORY[0x277D5BE50] + 4);
    v16 = swift_task_alloc();
    v5[18] = v16;
    *v16 = v10;
    v16[1] = sub_268379720;
    v17 = v5[12];
    v18 = v5[13];
    v19 = v5[10];
    v20 = v5[11];
    v21 = v5[2];

    return MEMORY[0x2821BB480](v21, v3, v19, v20, v17);
  }
}

uint64_t sub_268379720()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268379834()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_7_4();

  return v2();
}

uint64_t sub_2683798B0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 128);
  v2 = OUTLINED_FUNCTION_49_9();
  v3(v2);

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_26837992C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = OUTLINED_FUNCTION_49_9();
  v3(v2);

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2683799A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v9 = sub_2683CC9A8();
  v6[28] = v9;
  v10 = *(v9 - 8);
  v6[29] = v10;
  v11 = *(v10 + 64) + 15;
  v6[30] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v14 = sub_2683CC138();
  v6[33] = v14;
  v15 = *(v14 - 8);
  v6[34] = v15;
  v16 = *(v15 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v6[38] = v18;
  v6[39] = *(v18 + 64);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v19 = type metadata accessor for Snippet();
  v6[48] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v21 = swift_task_alloc();
  v6[54] = v21;
  *v21 = v6;
  v21[1] = sub_268379CE4;

  return sub_26837B124(a2, a5);
}

uint64_t sub_268379CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_42();
  v25 = v24;
  OUTLINED_FUNCTION_2_0();
  *v26 = v25;
  v28 = *(v27 + 432);
  *v26 = *v23;
  v25[55] = v29;

  if (v22)
  {
    v31 = v25[52];
    v30 = v25[53];
    v32 = v25[50];
    v33 = v25[51];
    v34 = v25[49];
    v36 = v25[46];
    v35 = v25[47];
    v62 = v22;
    v37 = v25[44];
    v38 = v25[45];
    v53 = v25[43];
    v54 = v25[42];
    v55 = v25[41];
    v56 = v25[40];
    v57 = v25[37];
    v58 = v25[36];
    v59 = v25[35];
    v60 = v25[32];
    v61 = v25[31];
    v39 = v25[30];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a20, a21, a22);
  }

  else
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_48_3();

    return MEMORY[0x2822009F8](v49, v50, v51);
  }
}

void sub_268379EE8()
{
  v1 = v0[53];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[37];
  v139 = v0[36];
  v6 = v0[32];
  v141 = v6;
  v143 = v0[55];
  v145 = v0[31];
  v7 = v0[27];
  v8 = *(v7 + 152);
  v9 = *(v0[26] + 16);
  (*(v7 + 144))(v0[23], v0[25]);
  sub_2681432C8(v1, v3);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
  v13 = *(v7 + 56);
  v14 = *(v7 + 64);
  sub_26816954C();
  sub_2683CC528();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_2683CC118();
  v19 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v141, 1, 1, v19);
  v20 = *MEMORY[0x277D5BC50];
  v21 = sub_2683CC1D8();
  OUTLINED_FUNCTION_1(v21);
  (*(v22 + 104))(v145, v20, v21);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v26 = swift_allocObject();
  v0[56] = v26;
  *(v26 + 16) = xmmword_2683D2250;
  *(v26 + 32) = v143;
  v27 = v143;
  if (sub_2683ABE58(v26))
  {
    sub_2683ABE60(0, (v26 & 0xC000000000000001) == 0, v26);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D616C90](0, v26);
    }

    else
    {
      v28 = *(v26 + 32);
    }

    v29 = v28;
    v30 = [v28 catId];

    v138 = sub_2683CFA78();
    v142 = v31;
  }

  else
  {
    v138 = 0;
    v142 = 0;
  }

  v144 = v0[48];
  v137 = v0[47];
  v33 = v0[45];
  v32 = v0[46];
  v34 = v0[44];
  v140 = v0[43];
  v36 = v0[38];
  v35 = v0[39];
  v132 = v0[36];
  v133 = v0[37];
  v37 = v0[34];
  v130 = v0[35];
  v131 = v0[33];
  v134 = v0[32];
  v135 = v0[31];
  v136 = v0[30];
  v38 = v0[24];
  OUTLINED_FUNCTION_48_11();
  sub_26812DA38(v39, v40, v41, v42);
  OUTLINED_FUNCTION_48_11();
  sub_26812DA38(v43, v44, v45, v46);
  v47 = *(v36 + 80);
  v48 = swift_allocObject();
  v0[57] = v48;
  *(v48 + 16) = v38;
  OUTLINED_FUNCTION_48_11();
  sub_26812DA84(v49, v50, v51, v52);
  OUTLINED_FUNCTION_48_11();
  sub_26812DA84(v53, v54, v55, v56);
  (*(v37 + 16))(v130, v132, v131);
  v57 = swift_task_alloc();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = v138;
  *(v57 + 48) = v142;
  *(v57 + 56) = v133;
  *(v57 + 64) = 1;
  *(v57 + 72) = sub_26814311C;
  *(v57 + 80) = v48;
  *(v57 + 88) = 0;
  *(v57 + 96) = v134;
  *(v57 + 104) = 2;
  *(v57 + 112) = v135;

  sub_2683CC8E8();

  sub_26812DA38(v137, v140, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v140, 1, v144) == 1)
  {
    v58 = v0 + 43;
  }

  else
  {
    v59 = v0[52];
    v60 = v0[48];
    v61 = v0[46];
    v63 = v0[42];
    v62 = v0[43];
    OUTLINED_FUNCTION_3_53();
    sub_26837E408(v64, v65, v66);
    v67 = OUTLINED_FUNCTION_55_0();
    sub_26812DA38(v67, v68, v69, v70);
    v71 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v71, v72, v60) != 1)
    {
      v103 = v0[51];
      v104 = v0[52];
      v105 = v0[48];
      v106 = v0[42];
      OUTLINED_FUNCTION_3_53();
      sub_26837E408(v107, v103, v108);
      v0[15] = v105;
      v109 = sub_268143270();
      v0[16] = v109;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      sub_2681432C8(v104, boxed_opaque_existential_0);
      v0[20] = v105;
      v0[21] = v109;
      __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      v111 = OUTLINED_FUNCTION_92_0();
      sub_2681432C8(v111, v112);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[58] = v113;
      *v113 = v114;
      v113[1] = sub_26837A61C;
      v115 = v0[30];
      v116 = v0[24];
      v117 = v0[22];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v58 = v0 + 42;
    sub_26814332C(v0[52]);
  }

  v73 = *v58;
  v74 = v0[47];
  v75 = v0[48];
  v76 = v0[41];
  sub_2681433DC(v73, &qword_28024E770, &qword_2683D80D0);
  v77 = OUTLINED_FUNCTION_55_0();
  sub_26812DA38(v77, v78, &qword_28024E770, &qword_2683D80D0);
  v79 = OUTLINED_FUNCTION_33_1();
  if (__swift_getEnumTagSinglePayload(v79, v80, v75) == 1)
  {
    v81 = v0[48];
    v82 = v0[46];
    v83 = v0[40];
    sub_2681433DC(v0[41], &qword_28024E770, &qword_2683D80D0);
    v84 = OUTLINED_FUNCTION_55_0();
    sub_26812DA38(v84, v85, &qword_28024E770, &qword_2683D80D0);
    v86 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v86, v87, v81) == 1)
    {
      sub_2681433DC(v0[40], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[61] = v88;
      *v88 = v89;
      v88[1] = sub_26837AE64;
      v90 = v0[30];
      v91 = v0[24];
      v92 = v0[22];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v120 = v0[48];
    v121 = v0[49];
    v122 = v0[40];
    OUTLINED_FUNCTION_3_53();
    sub_26837E408(v123, v121, v124);
    v0[5] = v120;
    v0[6] = sub_268143270();
    v125 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    sub_2681432C8(v121, v125);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[60] = v126;
    *v126 = v127;
    OUTLINED_FUNCTION_50_11(v126);
  }

  else
  {
    v95 = v0[50];
    v96 = v0[48];
    v97 = v0[41];
    OUTLINED_FUNCTION_3_53();
    sub_26837E408(v98, v95, v99);
    v0[10] = v96;
    v0[11] = sub_268143270();
    v100 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v95, v100);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[59] = v101;
    *v101 = v102;
    OUTLINED_FUNCTION_50_11(v101);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_26837A61C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 448);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26837A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22[57];
  v24 = v22[51];
  v25 = v22[52];
  v26 = v22[46];
  v44 = v22[47];
  v27 = v22[36];
  v28 = v22[33];
  v29 = v22[34];
  v30 = v22[29];
  v31 = v22[30];
  v32 = v22[28];

  sub_26814332C(v24);
  sub_26814332C(v25);
  (*(v30 + 8))(v31, v32);
  (*(v29 + 8))(v27, v28);
  v33 = OUTLINED_FUNCTION_44_13();
  sub_2681433DC(v33, v34, &qword_2683D80D0);
  sub_2681433DC(v44, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(&qword_2683D80D0, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v30 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(v26);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v44, a20, a21, a22);
}

uint64_t sub_26837A8FC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 448);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26837A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v29 = *(v24 + 456);
  v30 = *(v24 + 400);
  OUTLINED_FUNCTION_39_16();
  sub_26814332C(v30);
  (*(v28 + 8))(v25, v26);
  v31 = *(v27 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  sub_2681433DC(v23, &qword_28024E770, &qword_2683D80D0);
  v34 = OUTLINED_FUNCTION_9_0();
  sub_2681433DC(v34, v35, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(&qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26837ABB0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *(v4 + 448);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26837ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v29 = *(v24 + 456);
  v30 = *(v24 + 392);
  OUTLINED_FUNCTION_39_16();
  sub_26814332C(v30);
  (*(v28 + 8))(v25, v26);
  v31 = *(v27 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  sub_2681433DC(v23, &qword_28024E770, &qword_2683D80D0);
  v34 = OUTLINED_FUNCTION_9_0();
  sub_2681433DC(v34, v35, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(&qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26837AE64()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 488);
  v3 = *(v1 + 448);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26837AF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22[57];
  v24 = v22[46];
  v25 = v22[47];
  v26 = v22[36];
  v27 = v22[33];
  v28 = v22[34];
  v30 = v22[29];
  v29 = v22[30];
  v31 = v22[28];

  (*(v30 + 8))(v29, v31);
  (*(v28 + 8))(v26, v27);
  v32 = OUTLINED_FUNCTION_55_0();
  sub_2681433DC(v32, v33, &qword_2683D80D0);
  sub_2681433DC(v25, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(&qword_28024E770, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v31, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(&qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26837B124(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_26837B148, 0, 0);
}

uint64_t sub_26837B148()
{
  v1 = v0[14];
  v2 = *(v1 + 120);
  v0[15] = v2;
  v0[16] = *(v1 + 128);
  if (!*(v1 + 136))
  {
    v10 = v0[13];
    v0[11] = v0[12];
    v11 = swift_task_alloc();
    v12 = *(v10 + 16);
    *v11 = v12;
    KeyPath = swift_getKeyPath();

    type metadata accessor for SimpleDisambiguationItem();
    type metadata accessor for IdentifiableItem();
    OUTLINED_FUNCTION_47_3();
    v14 = sub_2683CFD28();

    v15 = OUTLINED_FUNCTION_20_35();
    v5 = sub_268167FAC(sub_26837E464, KeyPath, v14, v12, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
    v0[17] = v5;

    OUTLINED_FUNCTION_11_42();
    v22 = v17;
    v18 = v2[1];
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v9 = sub_26837B454;
    goto LABEL_5;
  }

  if (*(v1 + 136) == 1)
  {
    v4 = v0[12];
    v3 = v0[13];

    v5 = sub_26837B9C0(v4, v3);
    v0[20] = v5;
    OUTLINED_FUNCTION_11_42();
    v22 = v6;
    v7 = v2[1];
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v9 = sub_26837B55C;
LABEL_5:
    v8[1] = v9;

    return v22(v5);
  }

  v23 = (v2 + *v2);
  v20 = v2[1];
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v21[1] = sub_26837B664;

  return v23();
}

uint64_t sub_26837B454()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 144);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[19] = v0;

  if (!v0)
  {
    v10 = v3[17];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26837B55C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 168);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[22] = v0;

  if (!v0)
  {
    v10 = v3[20];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}