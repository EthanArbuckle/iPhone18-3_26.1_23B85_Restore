void sub_2310CBE28()
{
  OUTLINED_FUNCTION_13_13();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD68, &unk_231165E50);
      v9 = OUTLINED_FUNCTION_15_8();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 8);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_15();
        sub_23104C794(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
    OUTLINED_FUNCTION_6_10();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for TaskBuilder(_BYTE *result, int a2, int a3)
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

void sub_2310CBFB8()
{
  OUTLINED_FUNCTION_13_13();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD40, &qword_231165E10);
      v9 = OUTLINED_FUNCTION_15_8();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_5_11();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_15();
        sub_23104C774(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD48, &qword_231165E18);
    OUTLINED_FUNCTION_6_10();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC0AC()
{
  OUTLINED_FUNCTION_17_10();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 56);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_21_11();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC1EC()
{
  OUTLINED_FUNCTION_17_10();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = OUTLINED_FUNCTION_15_8();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_5_11();
      v12[2] = v10;
      v12[3] = v13;
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_21_11();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC2B0()
{
  OUTLINED_FUNCTION_13_13();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C190, &unk_2311632B0);
      v9 = OUTLINED_FUNCTION_15_8();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_5_11();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_2_15();
        sub_23104C774(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC36C()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD78, &unk_231165E90);
      v8 = OUTLINED_FUNCTION_14_11();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_4_14(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_15();
        sub_23104C874(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA60, qword_231164E50);
    OUTLINED_FUNCTION_6_10();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC430()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C290, &unk_231165E70);
      v8 = OUTLINED_FUNCTION_14_11();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_4_14(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_15();
        sub_23104D8B8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C1C0, &qword_2311633B8);
    OUTLINED_FUNCTION_6_10();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC4F4()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD70, &unk_231165E80);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_4_14(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_15();
        sub_23104C898(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC5C8()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3BC20, &qword_231161B00);
  OUTLINED_FUNCTION_16_8();
  v9 = sub_231159228();
  OUTLINED_FUNCTION_19_9(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_11_13(v12);
    sub_23104C8D8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void sub_2310CC690()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_16(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CBE0, &unk_231165E60);
      v8 = OUTLINED_FUNCTION_14_11();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_4_14(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_15();
        sub_23104D8B8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B8, &qword_2311633B0);
    OUTLINED_FUNCTION_6_10();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC754()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3CD58, &unk_231165E30);
  OUTLINED_FUNCTION_16_8();
  v9 = type metadata accessor for ToolKitIndexingQueue.Message();
  OUTLINED_FUNCTION_19_9(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_11_13(v12);
    sub_23104C8F0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void sub_2310CC81C()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3CD50, &unk_231165E20);
  OUTLINED_FUNCTION_16_8();
  v9 = sub_231157F88();
  OUTLINED_FUNCTION_19_9(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_11_13(v12);
    sub_23104C908(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void sub_2310CC8E4()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3BC38, &qword_231161B18);
  OUTLINED_FUNCTION_16_8();
  v9 = sub_231157F28();
  OUTLINED_FUNCTION_19_9(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_11_13(v12);
    sub_23104C8C0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void *sub_2310CC9AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v4 = OUTLINED_FUNCTION_15_8();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_5_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_2310CCA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_3_16(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return swift_arrayInitWithCopy();
}

size_t OUTLINED_FUNCTION_22_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2310CCA14(v5, a2, a3, a4, v4);
}

uint64_t sub_2310CCCDC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23106044C;

  return sub_2310CCD80();
}

uint64_t sub_2310CCD80()
{
  v1[2] = v0;
  v2 = sub_231157F18();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_231157E88();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_231157F28();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_231158258();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CCF54, 0, 0);
}

uint64_t sub_2310CD160()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *(v4 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v9 + 136) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310CD278()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_14_12();
  v1(v0);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310CD304()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_14_12();
  v2(v1);

  OUTLINED_FUNCTION_1();
  v4 = *(v0 + 136);

  return v3();
}

uint64_t sub_2310CD390()
{
  v1[2] = v0;
  v2 = sub_231157F18();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_231157E88();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_231157F28();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_231158258();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CD564, 0, 0);
}

uint64_t sub_2310CD770()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *(v4 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v9 + 136) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310CD888()
{
  v1[2] = v0;
  v2 = sub_231157F18();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_231157E88();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_231157F28();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_231158258();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CDA5C, 0, 0);
}

uint64_t sub_2310CDC68()
{
  v1 = sub_231158258();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_21_12();
  v7 = *MEMORY[0x277D7A4D8];
  sub_2311581C8();

  v8 = sub_231158238();
  v9 = sub_2311592D8();
  if (os_log_type_enabled(v8, v9))
  {
    v20 = v1;
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = *v0;
    v12 = sub_231159998();
    v14 = v13;

    v15 = sub_2310488F8(v12, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = sub_231158E68();
    v18 = sub_2310488F8(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_23103C000, v8, v9, "background indexing task: %s is being told to cancel indexing with reason '%s'", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7_16();

    (*(v4 + 8))(v0, v20);
  }

  else
  {

    (*(v4 + 8))(v0, v1);
  }

  if (qword_280CCB3B8 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  if (qword_280CCBC80 != -1)
  {
    swift_once();
  }

  return sub_2310D46FC();
}

uint64_t sub_2310CDF30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23106044C;

  return sub_2310CD888();
}

uint64_t sub_2310CE000()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23106044C;

  return sub_2310CD390();
}

uint64_t sub_2310CE0A4()
{
  OUTLINED_FUNCTION_4_1();
  v1 = sub_231158258();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310CE158()
{
  v1 = v0[4];
  v2 = *MEMORY[0x277D7A4D8];
  sub_2311581C8();
  v3 = sub_231158238();
  v4 = sub_2311592C8();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v5, v6, "Running ToolKitDatabaseMaintenanceTask");
    OUTLINED_FUNCTION_16();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v10 = *(v8 + 8);
  v11 = OUTLINED_FUNCTION_17();
  v12(v11);
  sub_231158888();
  v0[5] = sub_231158868();
  sub_231158638();
  sub_231158628();
  v13 = *(MEMORY[0x277D72720] + 4);
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_2310CE300;
  v15 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2821DAC18](v15);
}

uint64_t sub_2310CE300()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310CE3FC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[7];
  v2 = v0[5];
  sub_2311586F8();

  v3 = v0[4];

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310CE480()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310CE4E4(char *a1)
{
  v3 = sub_231158258();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_12();
  v9 = *a1;
  v10 = *MEMORY[0x277D7A4D8];
  sub_2311581C8();
  v11 = sub_231158238();
  v12 = sub_2311592D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_45_1();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = sub_231158E68();
    v17 = sub_2310488F8(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_23103C000, v11, v12, "ToolKitDatabaseMaintenanceTask is being told to cancel indexing with reason '%s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_16();
  }

  return (*(v6 + 8))(v1, v3);
}

uint64_t sub_2310CE6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23105FDEC;

  return sub_2310CE0A4();
}

uint64_t sub_2310CE778()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310CE818();
}

uint64_t sub_2310CE818()
{
  v1 = sub_231158258();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CE8D4, 0, 0);
}

uint64_t sub_2310CE8D4()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[4];
  v2 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  v3 = sub_231158238();
  v4 = sub_2311592C8();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v5, v6, "Running SpotlightShortcutsIndexingTask");
    OUTLINED_FUNCTION_16();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v10 = *(v8 + 8);
  v11 = OUTLINED_FUNCTION_17();
  v12(v11);
  if (qword_280CCB3B8 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  v13 = *(off_280CCB3C0 + 19);
  v0[5] = v13;
  if (v13)
  {
    v13;
    v14 = swift_task_alloc();
    v0[6] = v14;
    *v14 = v0;
    v14[1] = sub_2310CEA74;

    return sub_2310AB220();
  }

  else
  {
    v16 = v0[4];

    OUTLINED_FUNCTION_1();

    return v17();
  }
}

uint64_t sub_2310CEA74()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_1();

    return v13();
  }
}

uint64_t sub_2310CEB9C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_2310CEC08(uint64_t a1)
{
  result = sub_2310CED68(&unk_27DD3CBB8, type metadata accessor for SpotlightHighPriorityDeferredIndexingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CEC60(uint64_t a1)
{
  result = sub_2310CED68(&unk_27DD3CBC8, type metadata accessor for ToolKitHighPriorityDeferredFullIndexingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CECB8(uint64_t a1)
{
  result = sub_2310CED68(&unk_280CCB530, type metadata accessor for ToolKitHighPriorityDeferredDeltaIndexingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CED10(uint64_t a1)
{
  result = sub_2310CED68(&qword_27DD3CBD8, type metadata accessor for ToolKitLowPriorityDeferredFullIndexingTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CED68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2310CEDAC(char a1)
{
  v2 = sub_231158C58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_231158B68();
  sub_231158B58();
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_231159588();
  MEMORY[0x231924980](0xD00000000000004DLL, 0x800000023116A800);
  v10[15] = a1 & 1;
  v7 = sub_231158E68();
  MEMORY[0x231924980](v7);

  MEMORY[0x231924980](39, 0xE100000000000000);
  v8 = v12;
  *v6 = v11;
  v6[1] = v8;
  (*(v3 + 104))(v6, *MEMORY[0x277D73290], v2);
  sub_231158B48();

  return (*(v3 + 8))(v6, v2);
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_12()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
}

void OUTLINED_FUNCTION_7_16()
{

  JUMPOUT(0x2319267C0);
}

void OUTLINED_FUNCTION_8_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_12()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = *(v0[10] + 8);
  return v0[11];
}

void OUTLINED_FUNCTION_16_9()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
}

BOOL OUTLINED_FUNCTION_22_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2310488F8(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_24_6()
{
}

void OUTLINED_FUNCTION_29_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_2310CF10C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_23104CDF4(0, v5, 0);
  v6 = v17;
  v9 = *(type metadata accessor for ToolKitIndexingQueue.Message() - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(&v16, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = v16;
    v17 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_23104CDF4((v13 > 1), v14 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v12;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2310CF274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2310D52D8(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_2310D5318(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_231158A68();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t sub_2310CF30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_231157F88();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2310CF3B4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    return sub_231159058();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);

    return sub_231159068();
  }
}

uint64_t sub_2310CF430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_2310D5050(a1, v22 - v11, &qword_27DD3C1D0, &qword_231162D50);
  v13 = sub_2311590C8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_231051B38(v12, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    v14 = *(a3 + 24);
    v15 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_231159048();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v4;
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v19;
  swift_task_create();
}

uint64_t sub_2310CF608()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2310CF70C;

  return MEMORY[0x282200830]();
}

uint64_t sub_2310CF70C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[6] = v0;

  if (!v0)
  {
    v10 = v3[3];
    v9 = v3[4];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310CF818()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[3];
  v1 = v0[4];

  OUTLINED_FUNCTION_1();
  v4 = v0[6];

  return v3();
}

uint64_t sub_2310CF87C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2310CF89C, 0, 0);
}

uint64_t sub_2310CF89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_21();
  v17 = v16[3];
  v18 = swift_task_alloc();
  v16[4] = v18;
  *(v18 + 16) = v17;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  v16[5] = v20;
  *v20 = v16;
  v20[1] = sub_2310CF990;
  v21 = v16[2];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v22, v23, v24, 0xD000000000000010, v25, v26, v18, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310CF990()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_1();

    return v13();
  }
}

void sub_2310CFAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCC14VoiceShortcuts20ToolKitIndexingQueue22WorkflowRunnerDelegate_continuation);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_2310D49E4(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_2310CFB50(uint64_t a1, uint64_t a2)
{
  sub_231051B38(a1, &unk_27DD3CE00, &qword_2311637F0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

void sub_2310CFD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_77();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  v28 = OUTLINED_FUNCTION_19(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = *(v20 + OBJC_IVAR____TtCC14VoiceShortcuts20ToolKitIndexingQueue22WorkflowRunnerDelegate_continuation);
  v38 = *(*v37 + *MEMORY[0x277D841D0] + 16);
  v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v37 + v39));
  OUTLINED_FUNCTION_15_9();
  sub_2310D4C24(v40, v41, v42, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  os_unfair_lock_unlock((v37 + v39));
  OUTLINED_FUNCTION_15_9();
  sub_2310D5050(v48, v49, v50, v51);
  if (__swift_getEnumTagSinglePayload(v33, 1, v44) == 1)
  {
    sub_231051B38(v36, &unk_27DD3CE00, &qword_2311637F0);
    sub_231051B38(v33, &unk_27DD3CE00, &qword_2311637F0);
  }

  else
  {
    sub_2310CF3B4(v26, v24 & 1);
    sub_231051B38(v36, &unk_27DD3CE00, &qword_2311637F0);
    (*(*(v44 - 8) + 8))(v33, v44);
  }

  OUTLINED_FUNCTION_78();
}

id sub_2310CFF38()
{
  v1 = OUTLINED_FUNCTION_17();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtCC14VoiceShortcuts20ToolKitIndexingQueue22WorkflowRunnerDelegate_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE10, &unk_2311661D8);
  v15 = *(v14 + 52);
  v16 = (*(v14 + 48) + 3) & 0x1FFFFFFFCLL;
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2310D5050(v8, v17 + *(*v17 + *MEMORY[0x277D841D0] + 16), &unk_27DD3CE00, &qword_2311637F0);
  sub_231051B38(v8, &unk_27DD3CE00, &qword_2311637F0);
  *&v0[v9] = v17;
  v18 = type metadata accessor for ToolKitIndexingQueue.WorkflowRunnerDelegate();
  v20.receiver = v0;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_2310D0108(uint64_t a1)
{
  sub_231086060();
  v3 = *(*v1 + 16);
  sub_231086134(v3);
  v4 = *v1;
  *(*v1 + 16) = v3 + 1;
  v5 = *(type metadata accessor for ToolKitIndexingQueue.Message() - 8);
  result = sub_2310D4B64(a1, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3);
  *v1 = v4;
  return result;
}

uint64_t sub_2310D01B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231158258();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  v13 = *v2;
  v14 = [objc_allocWithZone(MEMORY[0x277D7A080]) initWithEnvironment:0 runningContext:0 presentationMode:0];
  v15 = *(v13 + 16);

  v17 = sub_2310D0398(v16);
  v18 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v19 = sub_231158238();
  v20 = sub_2311592F8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = v15;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v17;
    _os_log_impl(&dword_23103C000, v19, v20, "Kicked off indexing for %ld waiting requests, average wait time: %fs", v21, 0x16u);
    OUTLINED_FUNCTION_16();
  }

  (*(v7 + 8))(v12, v4);
  v22 = v2[3];
  sub_2310D4D14(v2[1], v2[2]);
  v2[1] = v13;
  v2[2] = v14;
  v2[3] = a1;

  *v2 = MEMORY[0x277D84F90];
  return result;
}

double sub_2310D0398(uint64_t a1)
{
  v2 = sub_231157A08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = 0.0;
  if (!*(a1 + 16))
  {
    v8 = sub_2311579F8();
    MEMORY[0x28223BE20](v8);
    *&v15[-16] = v6;
    v9 = sub_2310CF10C(sub_2310D4D5C, &v15[-32], a1);
    v10 = *(v9 + 16);
    v11 = 0.0;
    if (v10)
    {
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        v11 = v11 + v13;
        --v10;
      }

      while (v10);
    }

    v7 = v11 / 0.0;
    (*(v3 + 8))(v6, v2);
  }

  return v7;
}

void sub_2310D04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_77();
  a19 = v21;
  a20 = v22;
  v23 = sub_231158258();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  if (v20[1])
  {
    v36 = v20[2];
    v35 = v20[3];
    v37 = *MEMORY[0x277D7A4E8];

    v38 = v36;

    sub_2311581C8();
    v39 = sub_231158238();
    v40 = sub_2311592D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_53();
      *v41 = 0;
      _os_log_impl(&dword_23103C000, v39, v40, "Asked to cancel indexing, tearing down runner", v41, 2u);
      OUTLINED_FUNCTION_16();
    }

    (*(v26 + 8))(v34, v23);
    [v38 stop];
  }

  else
  {
    v42 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v43 = sub_231158238();
    v44 = sub_2311592D8();
    if (OUTLINED_FUNCTION_20_10(v44))
    {
      v45 = OUTLINED_FUNCTION_53();
      *v45 = 0;
      _os_log_impl(&dword_23103C000, v43, OS_LOG_TYPE_DEFAULT, "Asked to cancel indexing, but there's nothing to cancel", v45, 2u);
      OUTLINED_FUNCTION_16();
    }

    (*(v26 + 8))(v31, v23);
  }

  OUTLINED_FUNCTION_78();
}

void sub_2310D0704()
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v2 = sub_231158258();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = v1[1];
  if (v11)
  {
    v13 = v1[2];
    v12 = v1[3];
    v14 = *MEMORY[0x277D7A4E8];
    sub_2310D4DB4(v1[1], v13);

    sub_2311581C8();
    v15 = sub_231158238();
    v16 = sub_2311592F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_53();
      *v17 = 0;
      _os_log_impl(&dword_23103C000, v15, v16, "retriable indexing: creating fresh runner", v17, 2u);
      OUTLINED_FUNCTION_16();
    }

    (*(v5 + 8))(v10, v2);
    v18 = [objc_allocWithZone(MEMORY[0x277D7A080]) initWithEnvironment:0 runningContext:0 presentationMode:0];

    v19 = v18;
    sub_2310D4D14(v11, v13);
    v1[1] = v11;
    v1[2] = v19;
    v1[3] = v12;
    OUTLINED_FUNCTION_78();
  }

  else
  {
    __break(1u);
  }
}

id sub_2310D08B8()
{
  result = [objc_allocWithZone(type metadata accessor for ToolKitIndexingQueue()) init];
  qword_280CCDFA0 = result;
  return result;
}

uint64_t sub_2310D08E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310D08FC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_2310D09E4;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2310D09E4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310D0AE8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 48);

  return v2();
}

void sub_2310D0B44()
{
  OUTLINED_FUNCTION_77();
  v66 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  v63 = v10;
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v64 = &v57 - v17;
  v68 = sub_231157E88();
  v18 = OUTLINED_FUNCTION_4(v68);
  v62 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v24 = v23 - v22;
  v25 = sub_231157F28();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_0();
  v33 = v32 - v31;
  v34 = sub_231157FD8();
  v35 = *(v34 + 16);
  if (v35)
  {
    v58 = v4;
    v59 = v7;
    v60 = v5;
    v61 = v2;
    v37 = *(v28 + 16);
    v36 = v28 + 16;
    v67 = v37;
    v38 = *(v36 + 64);
    v57 = v34;
    v39 = v34 + ((v38 + 32) & ~v38);
    v40 = *(v36 + 56);
    v41 = (v62 + 8);
    v42 = (v36 - 8);
    v43 = v36;
    do
    {
      v44 = v43;
      v67(v33, v39, v25);
      sub_231157EA8();
      v45 = sub_231157E78();
      (*v41)(v24, v68);
      if ((v45 & 1) == 0)
      {
        sub_2311589E8();
        sub_2311589D8();
        sub_2311589A8();
      }

      (*v42)(v33, v25);
      v39 += v40;
      --v35;
      v43 = v44;
    }

    while (v35);

    v46 = v66;
    v5 = v60;
    v2 = v61;
    v4 = v58;
    v7 = v59;
  }

  else
  {

    v46 = v66;
  }

  sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = v65;
  (*(v7 + 16))(v65, v4, v5);
  v52 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v53 = (v63 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  *(v54 + 4) = v2;
  (*(v7 + 32))(&v54[v52], v51, v5);
  *&v54[v53] = v46;
  v55 = v2;
  v56 = v46;
  sub_2310798FC();

  OUTLINED_FUNCTION_78();
}

uint64_t sub_2310D0EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_231157FF8();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = sub_231157A18();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = sub_231158258();
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v16 = sub_231157F18();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D10D4, 0, 0);
}

uint64_t sub_2310D10D4()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[3];
  sub_231157AA8();
  v2 = v1;
  v0[20] = sub_231157A98();
  v3 = *(MEMORY[0x277D7BE20] + 4);
  v7 = (*MEMORY[0x277D7BE20] + MEMORY[0x277D7BE20]);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_2310D11A0;
  v5 = v0[18];

  return v7(v5, 0);
}

uint64_t sub_2310D11A0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2310D12A4()
{
  v47 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 32))(v0[19], v0[18], v3);
  (*(v2 + 104))(v1, *MEMORY[0x277D79C50], v3);
  sub_2310D5238();
  v4 = sub_231158E18();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_17();
  v5(v6);
  if (v4)
  {
    v45 = v5;
    v7 = v0[14];
    v8 = v0[3];
    v9 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v10 = v8;
    v11 = sub_231158238();
    v12 = sub_2311592F8();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    if (v13)
    {
      v17 = v0[3];
      v43 = v0[12];
      v18 = OUTLINED_FUNCTION_45_1();
      v19 = v14;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v18 = 136315138;
      v21 = [v17 debugDescription];
      v22 = sub_231158E58();
      v24 = v23;

      v25 = sub_2310488F8(v22, v24, &v46);

      *(v18 + 4) = v25;
      OUTLINED_FUNCTION_8_14(&dword_23103C000, v26, v27, "Client set needs indexing with request %s but effective changeset requires no changes");
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();

      (*(v15 + 8))(v19, v43);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v33 = v0[10];
    v32 = v0[11];
    v34 = v0[9];
    v40 = v0[8];
    v41 = v0[19];
    v35 = v0[7];
    v39 = v0[6];
    v36 = v0[3];
    v42 = v0[4];
    v44 = v0[15];
    sub_2311589E8();
    sub_2311589D8();
    sub_2311589B8();

    sub_2311589D8();
    sub_231157FA8();
    sub_231158998();

    v37 = *(v33 + 8);
    v37(v32, v34);
    sub_2311589D8();
    (*(v35 + 104))(v40, *MEMORY[0x277D79CB0], v39);
    sub_231157FA8();
    sub_2311589C8();

    v37(v32, v34);
    (*(v35 + 8))(v40, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    sub_231159068();
    (v45)(v41, v44);
  }

  else
  {
    v28 = v0[22];
    v29 = v0[5];
    v30 = *(v29 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    v31 = swift_task_alloc();
    *(v31 + 16) = *(v0 + 3);
    *(v31 + 32) = v29;
    os_unfair_lock_lock(v30 + 12);
    sub_2310D5290(&v30[4]);
    os_unfair_lock_unlock(v30 + 12);
    if (v28)
    {
      return;
    }

    (v5)(v0[19], v0[15]);
  }

  OUTLINED_FUNCTION_27_6();

  OUTLINED_FUNCTION_1();

  v38();
}

uint64_t sub_2310D16E0()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v7 = v0[3];
  v6 = v0[4];

  sub_2311589E8();
  sub_2311589D8();
  sub_2311589B8();

  sub_2311589D8();
  sub_231157FA8();
  sub_231158988();

  (*(v4 + 8))(v3, v5);
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  sub_231159058();
  OUTLINED_FUNCTION_27_6();

  OUTLINED_FUNCTION_1();

  return v8();
}

void sub_2310D182C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v7 = type metadata accessor for ToolKitIndexingQueue.Message();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231158258();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v16 = a2;
  v17 = sub_231158238();
  v18 = sub_2311592F8();
  v40 = v16;

  v37 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a4;
    v20 = v19;
    v33 = swift_slowAlloc();
    v41 = v33;
    *v20 = 136315138;
    v21 = [v40 debugDescription];
    v35 = a1;
    v22 = v21;
    v23 = sub_231158E58();
    v34 = v11;
    v24 = v23;
    v26 = v25;

    v27 = sub_2310488F8(v24, v26, &v41);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_23103C000, v17, v37, "Client set needs indexing with request %s", v20, 0xCu);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x2319267C0](v28, -1, -1);
    MEMORY[0x2319267C0](v20, -1, -1);

    (*(v39 + 8))(v14, v34);
  }

  else
  {

    (*(v39 + 8))(v14, v11);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  (*(*(v29 - 8) + 16))(v10, v38, v29);
  v30 = v40;
  *&v10[*(v7 + 20)] = v40;
  v31 = v30;
  sub_2310D0108(v10);
  sub_2310D4BC8(v10);
  sub_2310D1B28();
}

void sub_2310D1B28()
{
  OUTLINED_FUNCTION_77();
  v105 = v0;
  v2 = v1;
  v113 = sub_231157F88();
  v3 = OUTLINED_FUNCTION_4(v113);
  v107 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  v104 = &v103 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE20, &qword_2311661E8);
  v16 = OUTLINED_FUNCTION_19(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v112 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v103 - v22;
  v23 = type metadata accessor for ToolKitIndexingQueue.Message();
  v24 = OUTLINED_FUNCTION_4(v23);
  v114 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v111 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  v33 = sub_231158258();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_1();
  v41 = (v39 - v40);
  v43 = MEMORY[0x28223BE20](v42);
  v110 = &v103 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v103 - v45;
  v47 = *MEMORY[0x277D7A4D8];
  sub_2311581C8();
  v48 = sub_231158238();
  v49 = sub_2311592C8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_53();
    v109 = v41;
    *v50 = 0;
    _os_log_impl(&dword_23103C000, v48, v49, "Checking if we should be indexing", v50, 2u);
    v41 = v109;
    OUTLINED_FUNCTION_16();
  }

  v51 = *(v36 + 8);
  v51(v46, v33);
  if (v2[1])
  {
    v52 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v53 = sub_231158238();
    v54 = sub_2311592F8();
    if (!OUTLINED_FUNCTION_20_10(v54))
    {
LABEL_7:

      v51(v41, v33);
      goto LABEL_36;
    }

    v55 = OUTLINED_FUNCTION_53();
    *v55 = 0;
    v56 = "Not kicking off a new indexing, we're already indexing";
LABEL_6:
    _os_log_impl(&dword_23103C000, v53, v32, v56, v55, 2u);
    OUTLINED_FUNCTION_16();
    goto LABEL_7;
  }

  v103 = v2;
  v57 = *v2;
  v58 = *(*v2 + 16);
  if (!v58)
  {
    v90 = *MEMORY[0x277D7A4E8];
    v41 = v110;
    sub_2311581C8();
    v53 = sub_231158238();
    v91 = sub_2311592F8();
    if (!OUTLINED_FUNCTION_20_10(v91))
    {
      goto LABEL_7;
    }

    v55 = OUTLINED_FUNCTION_53();
    *v55 = 0;
    v56 = "Not kicking off a new indexing, nobody is waiting in the message queue";
    goto LABEL_6;
  }

  v106 = v9;
  v109 = v23;
  v110 = v57;
  v59 = *(v23 + 20);
  v60 = &v57[(*(v114 + 80) + 32) & ~*(v114 + 80)];
  v114 = *(v114 + 72);
  v61 = MEMORY[0x277D84F90];
  v62 = v60;
  do
  {
    sub_2310D4B64(v62, v32);
    v63 = *&v32[v59];
    v64 = sub_231157FD8();
    sub_2310D4BC8(v32);
    v65 = *(v64 + 16);
    v66 = *(v61 + 16);
    if (__OFADD__(v66, v65))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v66 + v65 > *(v61 + 24) >> 1)
    {
      sub_2310CC8E4();
      v61 = v67;
    }

    if (*(v64 + 16))
    {
      v68 = (*(v61 + 24) >> 1) - *(v61 + 16);
      v69 = *(sub_231157F28() - 8);
      if (v68 < v65)
      {
        goto LABEL_39;
      }

      v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v71 = *(v69 + 72);
      swift_arrayInitWithCopy();

      if (v65)
      {
        v72 = *(v61 + 16);
        v73 = __OFADD__(v72, v65);
        v74 = v72 + v65;
        if (v73)
        {
          goto LABEL_40;
        }

        *(v61 + 16) = v74;
      }
    }

    else
    {

      if (v65)
      {
        goto LABEL_38;
      }
    }

    v62 += v114;
    --v58;
  }

  while (v58);
  v75 = *(v110 + 2);
  v76 = v106;
  if (v75)
  {
    v77 = v108;
    v78 = *(v109 + 20);
    v109 = v107 + 32;
    v110 = v78;
    v79 = MEMORY[0x277D84F90];
    do
    {
      v80 = v111;
      sub_2310D4B64(v60, v111);
      v81 = *&v110[v80];
      sub_231157F98();
      v82 = v112;
      sub_2310D4C24(v77, v112, &unk_27DD3CE20, &qword_2311661E8);
      sub_2310D4BC8(v80);
      v83 = v113;
      if (__swift_getEnumTagSinglePayload(v82, 1, v113) == 1)
      {
        sub_231051B38(v82, &unk_27DD3CE20, &qword_2311661E8);
      }

      else
      {
        v84 = *v109;
        (*v109)(v76, v82, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v79 + 16);
          sub_2310CC81C();
          v79 = v88;
        }

        v85 = *(v79 + 16);
        if (v85 >= *(v79 + 24) >> 1)
        {
          sub_2310CC81C();
          v79 = v89;
        }

        *(v79 + 16) = v85 + 1;
        v86 = v79 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v85;
        v76 = v106;
        v84(v86, v106, v83);
        v77 = v108;
      }

      v60 += v114;
      --v75;
    }

    while (v75);
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
    v77 = v108;
  }

  sub_231158018();
  sub_2310CF30C(v79, v77);

  v92 = sub_231157FB8();
  sub_2311589E8();
  sub_2311589D8();
  sub_2311589B8();

  sub_2311590C8();
  v93 = v104;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = swift_allocObject();
  v98[2] = 0;
  v98[3] = 0;
  v99 = v105;
  v98[4] = v92;
  v98[5] = v99;
  v100 = v92;
  v101 = v99;
  v102 = sub_23105ED1C(0, 0, v93, &unk_2311661F8, v98);
  sub_2310D01B8(v102);

LABEL_36:
  OUTLINED_FUNCTION_78();
}

uint64_t sub_2310D2304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_231158258();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_231157A18();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_231157FF8();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D247C, 0, 0);
}

uint64_t sub_2310D247C()
{
  OUTLINED_FUNCTION_4_1();
  v0[13] = os_transaction_create();
  v0[14] = 0;
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_15(v1);

  return sub_2310D2A98(v2, 0, v3, v4);
}

uint64_t sub_2310D24FC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2310D25F8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v17 = v0[7];
  v18 = v0[16];
  v6 = v0[2];
  v7 = v0[3];
  sub_2311589E8();
  sub_2311589D8();
  (*(v2 + 104))(v1, *MEMORY[0x277D79CA8], v3);
  sub_231157FA8();
  sub_2311589C8();

  (*(v5 + 8))(v4, v17);
  (*(v2 + 8))(v1, v3);
  v8 = *(v7 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
  *(swift_task_alloc() + 16) = v7;
  os_unfair_lock_lock((v8 + 48));
  sub_2310D4D98((v8 + 16));
  if (!v18)
  {
    v11 = v0[13];
    os_unfair_lock_unlock((v8 + 48));

    swift_unknownObjectRelease();
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[6];

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_10();

  os_unfair_lock_unlock(v9);
}

uint64_t sub_2310D27A0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);
  v3 = sub_2310D3E30(*(v0 + 128), v1);
  v4 = *(v0 + 128);
  if ((v3 & 1) == 0 || v1 == 2)
  {
    v12 = *(v0 + 48);
    v13 = *(v0 + 128);
    swift_willThrow();
    v14 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v15 = v4;
    v16 = sub_231158238();
    v17 = sub_2311592D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 128);
      v19 = OUTLINED_FUNCTION_45_1();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v18;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_23103C000, v16, v17, "Error in indexing: %@", v19, 0xCu);
      sub_231051B38(v20, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }

    v23 = *(v0 + 128);
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    v26 = *(v0 + 48);
    v41 = *(v0 + 56);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    v30 = *(v0 + 16);
    v29 = *(v0 + 24);

    (*(v28 + 8))(v26, v27);
    sub_2311589E8();
    sub_2311589D8();
    sub_231157FA8();
    v31 = v23;
    sub_231158988();

    (*(v25 + 8))(v24, v41);
    v32 = *(v29 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    v33 = swift_task_alloc();
    *(v33 + 16) = v31;
    *(v33 + 24) = v29;
    os_unfair_lock_lock((v32 + 48));
    sub_2310D4D7C((v32 + 16));
    v34 = *(v0 + 128);
    v35 = *(v0 + 104);
    os_unfair_lock_unlock((v32 + 48));
    swift_unknownObjectRelease();

    v36 = *(v0 + 96);
    v37 = *(v0 + 72);
    v38 = *(v0 + 48);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 112) + 1;

  *(v0 + 112) = v5;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_10();

  return sub_2310D2A98(v7, v8, v9, v10);
}

uint64_t sub_2310D2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_231158258();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D2B68, 0, 0);
}

uint64_t sub_2310D2B68()
{
  v37 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_231157FE8();
  v0[9] = v3;
  if (v2)
  {
    v4 = v0[8];
    v5 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v6 = sub_231158238();
    v7 = sub_2311592F8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[2];
      v9 = OUTLINED_FUNCTION_45_1();
      *v9 = 134217984;
      *(v9 + 4) = v8 - 1;
      OUTLINED_FUNCTION_8_14(&dword_23103C000, v10, v11, "retriable indexing: tearing down runner from previous attempt (attempt=#%lu)");
      OUTLINED_FUNCTION_16();
    }

    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[4];

    (*(v14 + 8))(v12, v13);
    v16 = *(v15 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    os_unfair_lock_lock(v16 + 12);
    sub_2310D0704();
    v18 = v17;
    os_unfair_lock_unlock(v16 + 12);
  }

  else
  {
    v34 = *(v0[4] + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    os_unfair_lock_lock(v34 + 12);
    sub_2310D30EC(&v34[4], &v36);
    os_unfair_lock_unlock(v34 + 12);
    v18 = v36;
    v5 = *MEMORY[0x277D7A4E8];
  }

  v0[10] = v18;
  v19 = v0[7];
  v20 = objc_allocWithZone(type metadata accessor for ToolKitIndexingQueue.WorkflowRunnerDelegate());
  v21 = v18;
  v22 = [v20 init];
  v0[11] = v22;
  [v21 setDelegate_];
  sub_2311581C8();
  v23 = sub_231158238();
  v24 = sub_2311592F8();
  if (OUTLINED_FUNCTION_20_10(v24))
  {
    v25 = v0[2];
    v26 = OUTLINED_FUNCTION_45_1();
    *v26 = 134217984;
    *(v26 + 4) = v25;
    _os_log_impl(&dword_23103C000, v23, v5, "retriable indexing: starting indexing (attempt=#%lu)", v26, 0xCu);
    OUTLINED_FUNCTION_16();
  }

  v28 = v0[6];
  v27 = v0[7];
  v29 = v0[5];
  v30 = v0[2];

  (*(v28 + 8))(v27, v29);
  v31 = swift_task_alloc();
  v0[12] = v31;
  v31[2] = v21;
  v31[3] = v3;
  v31[4] = v30;
  v31[5] = v22;
  v32 = *(MEMORY[0x277D859B8] + 4);
  v33 = swift_task_alloc();
  v0[13] = v33;
  *v33 = v0;
  v33[1] = sub_2310D2EBC;
  v39 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740]();
}

uint64_t sub_2310D2EBC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[10];
  v8 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;
  *(v10 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310D2FF4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_46_0();

  return v5();
}

uint64_t sub_2310D3074()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = *(v0 + 112);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_1();

  return v6();
}

id sub_2310D30EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    v9 = *(a1 + 16);
    *a2 = v9;
    return v9;
  }

  else
  {
    v11 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v12 = sub_231158238();
    v13 = sub_2311592D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23103C000, v12, v13, "bad state: missing active indexing task, failing", v14, 2u);
      MEMORY[0x2319267C0](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_2310D50A8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_2310D327C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = a3;

  return MEMORY[0x2822009F8](sub_2310D332C, 0, 0);
}

uint64_t sub_2310D332C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v6;
  v11[5] = v3;
  v11[6] = v4;
  v12 = v3;
  sub_2310CF430(v1, &unk_231166230, v11);
  sub_231051B38(v1, &qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  v16[5] = v4;
  v17 = v2;
  sub_2310CF430(v1, &unk_231166240, v16);
  sub_231051B38(v1, &qword_27DD3C1D0, &qword_231162D50);
  v18 = *(MEMORY[0x277D85818] + 4);
  v19 = swift_task_alloc();
  v0[8] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAB0, &unk_2311652F8);
  *v19 = v0;
  v19[1] = sub_2310D34F0;
  v20 = v0[2];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822004D0]();
}

uint64_t sub_2310D34F0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310D35EC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 56);
  v2 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159138();

  OUTLINED_FUNCTION_46_0();

  return v3();
}

uint64_t sub_2310D3684()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_2310D36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_231158258();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D37A4, 0, 0);
}

uint64_t sub_2310D37A4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_2310D38C0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23106FF5C;
  v0[13] = &block_descriptor_18;
  v0[14] = v3;
  [v2 reindexToolKitDatabaseWithRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2310D38C0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310D39C0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[23];
  v2 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v3 = sub_231158238();
  v4 = sub_2311592F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = OUTLINED_FUNCTION_45_1();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    OUTLINED_FUNCTION_33_4(&dword_23103C000, v7, v8, "finished indexing (attempt=#%lu)");
    OUTLINED_FUNCTION_16();
  }

  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];

  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_17();
  v14(v13);

  OUTLINED_FUNCTION_46_0();

  return v15();
}

uint64_t sub_2310D3AB0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  v4 = *(v0 + 192);

  return v3();
}

uint64_t sub_2310D3B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_231158258();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_2310D3C0C;

  return sub_2310CF5F4();
}

uint64_t sub_2310D3C0C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 40);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_2310D3D40()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[5];
  v2 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v3 = sub_231158238();
  v4 = sub_2311592F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = OUTLINED_FUNCTION_45_1();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    OUTLINED_FUNCTION_33_4(&dword_23103C000, v7, v8, "workflow controller finished (attempt=#%lu)");
    OUTLINED_FUNCTION_16();
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];

  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_17();
  v14(v13);

  OUTLINED_FUNCTION_46_0();

  return v15();
}

uint64_t sub_2310D3E30(void *a1, uint64_t a2)
{
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = sub_2310D40EC();
  v13 = *MEMORY[0x277D7A4E8];
  if (v12)
  {
    sub_2311581C8();
    v14 = a1;
    v15 = sub_231158238();
    v16 = sub_2311592D8();

    if (!os_log_type_enabled(v15, v16))
    {
      v9 = v11;
      goto LABEL_8;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    v19 = a1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a2;
    _os_log_impl(&dword_23103C000, v15, v16, "retriable indexing: caught error during indexing, but it's retriable, re-trying indexing attempt (err=%@, attempt=#%lu)", v17, 0x16u);
    v9 = v11;
    goto LABEL_6;
  }

  sub_2311581C8();
  v21 = a1;
  v15 = sub_231158238();
  v22 = sub_2311592D8();

  if (os_log_type_enabled(v15, v22))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v24;
    *v18 = v24;
    _os_log_impl(&dword_23103C000, v15, v22, "retriable indexing: caught non-retriable error during indexing, failing (err=%@", v17, 0xCu);
LABEL_6:
    sub_231051B38(v18, &unk_27DD3CC40, &qword_231162750);
    MEMORY[0x2319267C0](v18, -1, -1);
    MEMORY[0x2319267C0](v17, -1, -1);
  }

LABEL_8:

  (*(v5 + 8))(v9, v4);
  return v12 & 1;
}

uint64_t sub_2310D40EC()
{
  v0 = sub_231157928();
  v1 = [v0 userInfo];
  v2 = sub_231158D98();

  v3 = sub_231158028();
  sub_23104AE54(v3, v4, v2, &v7);

  if (v8)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v6;
    }
  }

  else
  {
    sub_231051B38(&v7, &unk_27DD3CE30, &qword_231166210);
    return 0;
  }

  return result;
}

void sub_2310D41D4(void *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ToolKitIndexingQueue.Message();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + 1;
  v18 = a1[1];
  if (v18)
  {
    v36 = v8;
    v19 = a1[2];
    v20 = a1[3];
    v38 = a1 + 1;
    v21 = *(v18 + 16);
    if (v21)
    {
      v33 = a1;
      v34 = a3;
      v35 = v3;
      v22 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = v18;
      v31 = v20;
      v32 = v19;
      sub_2310D4DB4(v18, v19);
      v23 = *(v13 + 72);
      v24 = (v36 + 16);
      v25 = (v36 + 8);

      do
      {
        sub_2310D4B64(v22, v16);
        (*v24)(v11, v16, v7);
        sub_2310D4BC8(v16);
        v39 = a2;
        v26 = a2;
        sub_231159058();
        (*v25)(v11, v7);
        v22 += v23;
        --v21;
      }

      while (v21);

      v27 = v32;

      v28 = v37;
      swift_bridgeObjectRelease_n();
      sub_2310D4D14(v28, v27);
    }

    else
    {
      v29 = v18;
      v30 = v19;
      sub_2310D4DB4(v18, v19);

      sub_2310D4D14(v29, v30);
    }

    v17 = v38;
  }

  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  sub_2310D1B28();
}

void sub_2310D4474(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ToolKitIndexingQueue.Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + 1;
  v15 = a1[1];
  if (v15)
  {
    v34 = v6;
    v17 = a1[2];
    v18 = a1[3];
    v19 = *(v15 + 16);
    if (v19)
    {
      v31 = a1;
      v32 = a2;
      v33 = v2;
      v20 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v35 = v15;
      v29 = v18;
      v30 = v17;
      sub_2310D4DB4(v15, v17);
      v21 = *(v11 + 72);
      v22 = (v34 + 16);
      v23 = (v34 + 8);

      do
      {
        sub_2310D4B64(v20, v14);
        (*v22)(v9, v14, v5);
        sub_2310D4BC8(v14);
        sub_231159068();
        (*v23)(v9, v5);
        v20 += v21;
        --v19;
      }

      while (v19);

      v24 = v30;

      v25 = v35;
      swift_bridgeObjectRelease_n();
      sub_2310D4D14(v25, v24);
    }

    else
    {
      v26 = v15;
      v27 = a1[2];
      v28 = a1[3];
      sub_2310D4DB4(v15, v17);

      sub_2310D4D14(v26, v27);
    }
  }

  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  sub_2310D1B28();
}

id sub_2310D4748()
{
  v1 = OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE50, &qword_231166260);
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ToolKitIndexingQueue();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2310D4800(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts20ToolKitIndexingQueueC13InternalStateV06ActiveE4TaskVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2310D48B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2310D48F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2310D4940()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;

  return sub_2310CF87C(v2, v3);
}

double sub_2310D4A00@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_231157A08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311579C8();
  v10 = v9;
  v11 = *(a1 + *(type metadata accessor for ToolKitIndexingQueue.Message() + 20));
  sub_231158008();
  sub_2311579C8();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  result = v10 - v13;
  *a2 = v10 - v13;
  return result;
}

uint64_t type metadata accessor for ToolKitIndexingQueue.Message()
{
  result = qword_280CCBC70;
  if (!qword_280CCBC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2310D4B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexingQueue.Message();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310D4BC8(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitIndexingQueue.Message();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2310D4C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_32_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2310D4C74()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_16(v6);

  return sub_2310D2304(v8, v9, v10, v11, v3);
}

uint64_t sub_2310D4D14(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2310D4DB4(uint64_t result, void *a2)
{
  if (result)
  {

    v3 = a2;
  }

  return result;
}

uint64_t sub_2310D4DFC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v6[1] = sub_23106044C;
  OUTLINED_FUNCTION_15_9();

  return sub_2310D327C(v8, v9, v10, v11, v4, v3);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2310D4F08()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_2_16(v7);

  return sub_2310D36E0(v9, v10, v11, v12, v4, v5);
}

uint64_t sub_2310D4FB0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_16(v6);

  return sub_2310D3B1C(v8, v9, v10, v11, v3);
}

uint64_t sub_2310D5050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_32_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_2310D50A8()
{
  result = qword_27DD3CE40;
  if (!qword_27DD3CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CE40);
  }

  return result;
}

uint64_t sub_2310D50FC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680) - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_15_9();

  return sub_2310D0EE4(v8, v9, v10, v11, v12, v6);
}

unint64_t sub_2310D5238()
{
  result = qword_280CCB140;
  if (!qword_280CCB140)
  {
    sub_231157F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB140);
  }

  return result;
}

void sub_2310D52B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2310D0B44();
}

uint64_t sub_2310D52D8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2311594A8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2310D5318@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_231158A68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingQueue.QueueError(_BYTE *result, int a2, int a3)
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

void sub_2310D54BC()
{
  sub_2310D5540();
  if (v0 <= 0x3F)
  {
    sub_231158018();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2310D5540()
{
  if (!qword_280CCAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C880, &qword_231162D80);
    v0 = sub_231159078();
    if (!v1)
    {
      atomic_store(v0, &qword_280CCAFB0);
    }
  }
}

unint64_t sub_2310D55BC()
{
  result = qword_27DD3CE60;
  if (!qword_27DD3CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CE60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t result)
{
  *(result + 8) = sub_2310D24FC;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return result;
}

BOOL OUTLINED_FUNCTION_20_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_6()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_33_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_2310D56EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF78, &unk_2311664A0);
  OUTLINED_FUNCTION_19(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = sub_2311586B8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  v27 = [a1 userInfo];
  if (!v27 || (v28 = v27, v29 = sub_231158D98(), v28, !v29))
  {
    v49 = 0u;
    v50 = 0u;
LABEL_8:
    v30 = &unk_27DD3CE30;
    v31 = &qword_231166210;
    v32 = &v49;
    goto LABEL_9;
  }

  v45 = 0x656372756F73;
  v46 = 0xE600000000000000;

  sub_231159528();
  sub_23104ADA0(&v47, v29, &v49);

  sub_231086718(&v47);
  if (!*(&v50 + 1))
  {

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_72_1() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_231158698();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    (*(v19 + 32))(v26, v15, v16);
    (*(v19 + 104))(v24, *MEMORY[0x277D72738], v16);
    sub_2310DC194(&qword_280CCB098, MEMORY[0x277D72748]);
    OUTLINED_FUNCTION_64_2();
    sub_231158F18();
    OUTLINED_FUNCTION_64_2();
    sub_231158F18();
    v38 = *(v19 + 8);
    v38(v24, v16);
    if (v47 == v49)
    {
      v45 = 0x657365676E616863;
      v46 = 0xE900000000000074;
      sub_231159528();
      sub_23104ADA0(&v47, v29, &v49);

      sub_231086718(&v47);
      if (*(&v50 + 1))
      {
        if (OUTLINED_FUNCTION_72_1())
        {
          v39 = v48;
          if (v48 >> 60 != 15)
          {
            v40 = v47;
            sub_231157EE8();
            sub_231054A4C(v40, v39);
            v38(v26, v16);
            v42 = sub_231157F18();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v42);
            if (EnumTagSinglePayload != 1)
            {
              (*(*(v42 - 8) + 32))(a2, v9, v42);
LABEL_24:
              sub_231157F18();
              v33 = a2;
              v34 = 0;
              v35 = 1;
              v36 = v42;
              return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
            }

LABEL_22:
            v41 = *MEMORY[0x277D79C48];
            sub_231157F18();
            (*(*(v42 - 8) + 104))(a2, v41, v42);
            if (__swift_getEnumTagSinglePayload(v9, 1, v42) != 1)
            {
              sub_231051B38(v9, &unk_27DD3CE70, &qword_2311626F0);
            }

            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_231051B38(&v49, &unk_27DD3CE30, &qword_231166210);
      }

      v38(v26, v16);
      v42 = sub_231157F18();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v42);
      goto LABEL_22;
    }

    v38(v26, v16);
LABEL_19:

    goto LABEL_10;
  }

  v30 = &qword_27DD3CF78;
  v31 = &unk_2311664A0;
  v32 = v15;
LABEL_9:
  sub_231051B38(v32, v30, v31);
LABEL_10:
  sub_231157F18();
  v33 = OUTLINED_FUNCTION_27_7();
  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

uint64_t sub_2310D5C80()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 113) = v2;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  v5 = sub_231158258();
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_5(v5);
  *(v1 + 48) = v6;
  v8 = *(v7 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_21_0();
  v9 = sub_231157E58();
  *(v1 + 64) = v9;
  OUTLINED_FUNCTION_5(v9);
  *(v1 + 72) = v10;
  v12 = *(v11 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2310D5DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v15 = *(v13 + 72);
  v14 = *(v13 + 80);
  v16 = *(v13 + 64);
  v17 = *MEMORY[0x277D79BE0];
  v18 = OUTLINED_FUNCTION_30_6();
  v19(v18);
  sub_231157E48();
  v20 = OUTLINED_FUNCTION_29_6();
  v21(v20);
  if (v12)
  {
    v22 = *(v13 + 32);
    v23 = *(v13 + 113);
    v24 = *(v13 + 112);
    v25 = *(v13 + 16);
    v26 = *(*(v13 + 24) + 16);
    v27 = swift_allocObject();
    *(v13 + 88) = v27;
    *(v27 + 16) = v25;
    *(v27 + 24) = v24;
    *(v27 + 25) = v23;
    *(v27 + 32) = v22;
    v28 = *(MEMORY[0x277D79D60] + 4);

    v29 = swift_task_alloc();
    *(v13 + 96) = v29;
    *v29 = v13;
    v29[1] = sub_2310D5FB8;
    OUTLINED_FUNCTION_65_2();
    v36 = v35 | 0x6C6C0000u;

    return MEMORY[0x2821E1890](v30, v36, 0xE400000000000000, v31, v27, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v37 = *(v13 + 56);
    v38 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v39 = sub_231158238();
    v40 = sub_2311592B8();
    v41 = os_log_type_enabled(v39, v40);
    v43 = *(v13 + 48);
    v42 = *(v13 + 56);
    v44 = *(v13 + 40);
    if (v41)
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_46_4();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_7_16();
    }

    v50 = *(v43 + 8);
    v51 = OUTLINED_FUNCTION_17();
    v52(v51);
    v53 = *(v13 + 80);
    v54 = *(v13 + 56);

    OUTLINED_FUNCTION_46_0();

    return v55();
  }
}

uint64_t sub_2310D5FB8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310D60B8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_46_0();

  return v3();
}

uint64_t sub_2310D611C()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  OUTLINED_FUNCTION_1();
  v5 = v0[13];

  return v4();
}

uint64_t sub_2310D618C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_9();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310D61B8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF70, &qword_231166498);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_231161B80;
  v8 = (v1 + *v1);
  v3 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_2310D62E0;
  v6 = v0[3];
  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t sub_2310D62E0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v7 + 8);
    v13 = *(v3 + 32);

    return v12(v13);
  }
}

uint64_t sub_2310D63FC()
{
  OUTLINED_FUNCTION_4_1();
  *(*(v0 + 32) + 16) = 0;

  OUTLINED_FUNCTION_1();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_2310D645C()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 136) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_231158258();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_5(v4);
  *(v1 + 40) = v5;
  v7 = *(v6 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_21_0();
  v8 = sub_231157F18();
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_5(v8);
  *(v1 + 64) = v9;
  *(v1 + 72) = *(v10 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_21_0();
  v11 = sub_231157E58();
  *(v1 + 88) = v11;
  OUTLINED_FUNCTION_5(v11);
  *(v1 + 96) = v12;
  v14 = *(v13 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2310D65A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(v13 + 96);
  v14 = *(v13 + 104);
  v16 = *(v13 + 88);
  v17 = *MEMORY[0x277D79BE0];
  v18 = OUTLINED_FUNCTION_30_6();
  v19(v18);
  sub_231157E48();
  v20 = OUTLINED_FUNCTION_29_6();
  v21(v20);
  if (v12)
  {
    v22 = *(v13 + 80);
    v23 = *(v13 + 56);
    v24 = *(v13 + 64);
    v25 = *(v13 + 136);
    v26 = *(*(v13 + 24) + 16);
    (*(v24 + 16))(v22, *(v13 + 16), v23);
    v27 = (*(v24 + 80) + 17) & ~*(v24 + 80);
    v28 = swift_allocObject();
    *(v13 + 112) = v28;
    *(v28 + 16) = v25;
    (*(v24 + 32))(v28 + v27, v22, v23);
    v29 = *(MEMORY[0x277D79D60] + 4);
    v30 = swift_task_alloc();
    *(v13 + 120) = v30;
    *v30 = v13;
    v30[1] = sub_2310D6804;
    OUTLINED_FUNCTION_65_2();
    v37 = v36 | 0x68730000u;

    return MEMORY[0x2821E1890](v31, v37, 0xE400000000000000, v32, v28, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    v38 = *(v13 + 48);
    v39 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v40 = sub_231158238();
    v41 = sub_2311592B8();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v13 + 40);
    v43 = *(v13 + 48);
    v45 = *(v13 + 32);
    if (v42)
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_46_4();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_7_16();
    }

    v51 = *(v44 + 8);
    v52 = OUTLINED_FUNCTION_17();
    v53(v52);
    v54 = *(v13 + 104);
    v55 = *(v13 + 80);
    v56 = *(v13 + 48);

    OUTLINED_FUNCTION_46_0();

    return v57();
  }
}

uint64_t sub_2310D6804()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v9 = *(v3 + 112);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310D6904()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[6];

  OUTLINED_FUNCTION_46_0();

  return v4();
}

uint64_t sub_2310D6974()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[6];

  OUTLINED_FUNCTION_1();
  v6 = v0[16];

  return v5();
}

BOOL sub_2310D6A0C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t ToolKitCascadeSyncEngine.__allocating_init(xpcEventHandler:)(void *a1)
{
  OUTLINED_FUNCTION_0_7();
  v2 = swift_allocObject();
  ToolKitCascadeSyncEngine.init(xpcEventHandler:)(a1);
  return v2;
}

uint64_t sub_2310D6A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  sub_2311590C8();
  v4 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();
}

uint64_t sub_2310D6B6C()
{
  result = sub_231158E28();
  qword_280CCB9C0 = result;
  return result;
}

id static ToolKitCascadeSyncEngine.cascadeUseCase.getter()
{
  if (qword_280CCB9B8 != -1)
  {
    OUTLINED_FUNCTION_31_6();
  }

  v1 = qword_280CCB9C0;

  return v1;
}

void *ToolKitCascadeSyncEngine.init(xpcEventHandler:)(void *a1)
{
  v19 = sub_231159328();
  v2 = OUTLINED_FUNCTION_4(v19);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = sub_231159318();
  v11 = OUTLINED_FUNCTION_13_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v14 = sub_231158D48();
  v15 = OUTLINED_FUNCTION_19(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  sub_2311581B8();
  v1[2] = sub_2311581A8();
  sub_23104CA2C();
  sub_231158D08();
  sub_2310DC194(&unk_280CCAF10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  (*(v4 + 104))(v9, *MEMORY[0x277D85260], v19);
  v1[3] = sub_231159358();
  v1[4] = 0;
  sub_2310D6E30(a1);

  return v1;
}

uint64_t sub_2310D6E30(void *a1)
{
  v2 = v1;
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  [a1 addObserver:v2 selector:sel_handleToolKitDatabaseChangedNotificationWithNotification_ name:@"TKToolkitDatabaseChangedNotification"];
  v12 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  v13 = sub_231158238();
  v14 = sub_2311592F8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23103C000, v13, v14, "push: registered for database changed notification", v15, 2u);
    MEMORY[0x2319267C0](v15, -1, -1);
  }

  v16 = *(v5 + 8);
  v30 = v4;
  v16(v11, v4);
  v17 = *(v2 + 32);
  *(v2 + 32) = 0;

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v2 + 24);
  v20 = qword_280CCB9B8;

  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_280CCB9C0;
  objc_allocWithZone(MEMORY[0x277CF94F8]);
  v23 = sub_2310DBD6C(0xD00000000000001BLL, 0x800000023116AA10, sub_2310DC1DC, v18, v21, v22);

  v24 = *(v2 + 32);
  *(v2 + 32) = v23;

  sub_2311581C8();
  v25 = sub_231158238();
  v26 = sub_2311592F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23103C000, v25, v26, "pull: registered for cascade changed notification", v27, 2u);
    MEMORY[0x2319267C0](v27, -1, -1);
  }

  return (v16)(v9, v30);
}

uint64_t ToolKitCascadeSyncEngine.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ToolKitCascadeSyncEngine.__deallocating_deinit()
{
  ToolKitCascadeSyncEngine.deinit();
  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2310D7200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = sub_231157F18();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v19 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  sub_2310D56EC(a1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_231051B38(v11, &unk_27DD3CE70, &qword_2311626F0);
  }

  v31 = *(v15 + 32);
  v31(v21, v11, v12);
  sub_2311590C8();
  v23 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(v19, v21, v12);
  v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v31((v29 + v28), v19, v12);
  *(v29 + ((v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();

  return (*(v15 + 8))(v21, v12);
}

uint64_t sub_2310D74A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_231158258();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_231157F18();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D75C8, 0, 0);
}

uint64_t sub_2310D75C8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[10];
  OUTLINED_FUNCTION_41_6();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    (*(v0[16] + 104))(v0[17], *MEMORY[0x277D79C48], v0[15]);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_2310D7760;
    v4 = v0[17];

    return sub_2310D645C();
  }

  else
  {
    v6 = v0[14];
    v7 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v8 = sub_231158238();
    v9 = sub_2311592F8();
    if (OUTLINED_FUNCTION_20_2(v9))
    {
      v10 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v10);
      OUTLINED_FUNCTION_29_5(&dword_23103C000, v11, v12, "pull: preemptively enumerating sets and merging them into toolkit");
      OUTLINED_FUNCTION_16();
    }

    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[12];

    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_17();
    v18(v17);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[21] = v19;
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_0_23(v19);

    return sub_2310D7D04(v21, v22, v23, v24);
  }
}

uint64_t sub_2310D7760()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[15];
  v10 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v11 = v10;
  *(v12 + 160) = v0;

  (*(v8 + 8))(v7, v9);

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2310D78D4()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[14];
  v2 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  v3 = sub_231158238();
  v4 = sub_2311592F8();
  if (OUTLINED_FUNCTION_20_2(v4))
  {
    v5 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v5);
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v6, v7, "pull: preemptively enumerating sets and merging them into toolkit");
    OUTLINED_FUNCTION_16();
  }

  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];

  v11 = *(v10 + 8);
  v12 = OUTLINED_FUNCTION_17();
  v13(v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[21] = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_0_23(v14);

  return sub_2310D7D04(v16, v17, v18, v19);
}

uint64_t sub_2310D79B8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = *(v2 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310D7ABC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310D7B28()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[20];
  v2 = v0[13];
  v3 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  v4 = v1;
  v5 = sub_231158238();
  v6 = sub_2311592F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_45_1();
    v10 = OUTLINED_FUNCTION_38_2();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_46_4();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_231051B38(v10, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_7_16();
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);
  v18 = v0[14];
  sub_2311581C8();
  v19 = sub_231158238();
  v20 = sub_2311592F8();
  if (OUTLINED_FUNCTION_20_2(v20))
  {
    v21 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v21);
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v22, v23, "pull: preemptively enumerating sets and merging them into toolkit");
    OUTLINED_FUNCTION_16();
  }

  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[12];

  v27 = *(v26 + 8);
  v28 = OUTLINED_FUNCTION_17();
  v29(v28);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[21] = v30;
  *v30 = v31;
  v32 = OUTLINED_FUNCTION_0_23(v30);

  return sub_2310D7D04(v32, v33, v34, v35);
}

uint64_t sub_2310D7D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = sub_231158258();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D7DD4, 0, 0);
}

uint64_t sub_2310D7DD4()
{
  v29 = v0;
  v1 = v0[11];
  v2 = v0[6];
  v0[12] = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v3 = sub_231158238();
  v4 = sub_2311592F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  if (v5)
  {
    v10 = v0[5];
    v9 = v0[6];
    OUTLINED_FUNCTION_45_1();
    v11 = OUTLINED_FUNCTION_22_3();
    v28 = v11;
    *v6 = 136315138;
    v12 = v9 == 0;
    if (v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0x746C7561666564;
    }

    if (v12)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = v2;
    }

    v15 = sub_2310488F8(v13, v14, &v28);

    *(v6 + 4) = v15;
    OUTLINED_FUNCTION_70_2(&dword_23103C000, v16, v17, "pull: fetching initial changes from cascade (persona: %s)");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[13] = v18;
  v19 = v0[7];
  OUTLINED_FUNCTION_40_5();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v25 = v0[10];
    v24 = v0[11];

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_67_1(v21);
  OUTLINED_FUNCTION_10();

  return sub_2310D5C80();
}

uint64_t sub_2310D7FE8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[14];

    v14 = v3[10];
    v13 = v3[11];

    OUTLINED_FUNCTION_46_0();

    return v15();
  }
}

uint64_t sub_2310D8114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v17 = v16[16];
  v18 = v16[14];
  v19 = v16[12];
  v20 = v16[10];
  v21 = v16[6];

  sub_2311581C8();

  v22 = v17;
  v23 = sub_231158238();
  sub_2311592F8();

  v24 = OUTLINED_FUNCTION_26_4();
  v25 = v16[16];
  v26 = v16[13];
  v28 = v16[9];
  v27 = v16[10];
  v29 = v16[8];
  if (v24)
  {
    a12 = v16[13];
    v30 = v16[5];
    v31 = v16[6];
    a11 = v16[8];
    v32 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_38_2();
    a10 = v28;
    a13 = swift_slowAlloc();
    *v32 = 136315394;
    a9 = v27;

    v34 = OUTLINED_FUNCTION_17();
    sub_2310488F8(v34, v35, v36);

    OUTLINED_FUNCTION_73_0();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v37;
    *v33 = v37;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    sub_231051B38(v33, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    a12(v27, a11);
  }

  else
  {

    v26(v27, v29);
  }

  v44 = v16[10];
  v43 = v16[11];

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310D8320(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v4 + 177) = a4;
  *(v4 + 176) = a3;
  *(v4 + 24) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF40, &qword_231166450) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  v6 = sub_231158258();
  *(v4 + 40) = v6;
  v7 = *(v6 - 8);
  *(v4 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2310D8470, 0, 0);
}

uint64_t sub_2310D8470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_24();
  a22 = v26;
  a23 = v27;
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a12 = *MEMORY[0x277D85DE8];
  if (!*(v23 + 24))
  {
    v29 = objc_opt_self();
    if (qword_280CCB9B8 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  v28 = *(v23 + 24);
  while (1)
  {
    v35 = *(v23 + 80);
    v36 = *MEMORY[0x277D7A4F0];
    *(v23 + 88) = v28;
    *(v23 + 96) = v36;

    sub_2311581C8();

    v37 = sub_231158238();
    sub_2311592F8();

    v38 = OUTLINED_FUNCTION_26_4();
    *&a9 = *(v23 + 80);
    v40 = *(v23 + 40);
    v39 = *(v23 + 48);
    if (v38)
    {
      v41 = *(v23 + 177);
      v42 = *(v23 + 176);
      swift_slowAlloc();
      v43 = OUTLINED_FUNCTION_22_3();
      a11 = v43;
      *v24 = 67109634;
      *(v24 + 1) = v42;
      *(v24 + 4) = 1024;
      *(v24 + 10) = v41;
      *(v24 + 7) = 2080;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF48, &qword_231166458);
      v45 = MEMORY[0x231924A30](v28, v44);
      v25 = v46;
      v47 = sub_2310488F8(v45, v46, &a11);

      v24[2] = v47;
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v48, v49, v50, v51, v52, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_9_7();
    }

    v53 = *(v39 + 8);
    v53(a9, v40);
    *(v23 + 104) = v53;
    v54 = sub_23106FF58(v28);
    *(v23 + 112) = v54;
    if (!v54)
    {

      OUTLINED_FUNCTION_59_3();

      OUTLINED_FUNCTION_1();
      v96 = *MEMORY[0x277D85DE8];
      goto LABEL_22;
    }

    sub_231158888();
    v55 = sub_231158878();
    *(v23 + 120) = v55;
    if ((*(v23 + 177) & 1) == 0)
    {
      v57 = *(v23 + 32);
      v58 = sub_2311585F8();
      __swift_storeEnumTagSinglePayload(v57, 1, 1, v58);
      sub_231158688();
      v55 = sub_231051B38(*(v23 + 32), &qword_27DD3CF40, &qword_231166450);
    }

    v29 = 0;
    *&v56 = 138412290;
    a9 = v56;
    v24 = &qword_231162750;
    v66 = *(v23 + 88);
    if ((v66 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x231925080](0);
LABEL_16:
      v70 = v67;
      *(v23 + 128) = v67;
      *(v23 + 136) = 1;
      OUTLINED_FUNCTION_57_3();
      v71 = v70;
      v72 = sub_231158238();
      v73 = sub_2311592F8();

      if (OUTLINED_FUNCTION_60_3())
      {
        v74 = OUTLINED_FUNCTION_45_1();
        v75 = OUTLINED_FUNCTION_38_2();
        OUTLINED_FUNCTION_48_3(v75, v76, v77, v78, v79, v80, v81, v82, v83);
        *(v74 + 4) = v71;
        *v84 = v71;
        v85 = v71;
        OUTLINED_FUNCTION_77_1(&dword_23103C000, v72, v73, "pull: enumerating over set %@");
        sub_231051B38(v25, &unk_27DD3CC40, &qword_231162750);
        OUTLINED_FUNCTION_16_10();
        OUTLINED_FUNCTION_11_15();
      }

      v86 = *(v23 + 104);
      v87 = *(v23 + 72);
      v89 = *(v23 + 40);
      v88 = *(v23 + 48);

      OUTLINED_FUNCTION_50_4(v88 + 8);
      v86(v87, v89);
      _s16PullStateMachineCMa();
      swift_allocObject();
      *(v23 + 152) = sub_2310875F4(v71);
      v90 = swift_task_alloc();
      v91 = OUTLINED_FUNCTION_53_2(v90);
      *v91 = v92;
      OUTLINED_FUNCTION_1_17(v91);
      v93 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_23_0();

      return sub_231087C30();
    }

    OUTLINED_FUNCTION_47_5(v55, v66);
    if (!v69)
    {
      v67 = *(v68 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_31_6();
LABEL_4:
    v30 = [v29 setEnumeratorWithUseCase_];
    *(v23 + 16) = 0;
    v31 = [v30 allSetsWithOptions:1 itemType:29397 error:v23 + 16];
    swift_unknownObjectRelease();
    v32 = *(v23 + 16);
    if (!v31)
    {
      break;
    }

    v33 = *(v23 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF48, &qword_231166458);
    v28 = sub_231158F48();
    v34 = v32;
  }

  v59 = v32;
  sub_231157938();

  swift_willThrow();
  v61 = *(v23 + 72);
  v60 = *(v23 + 80);
  v63 = *(v23 + 56);
  v62 = *(v23 + 64);
  v64 = *(v23 + 32);

  OUTLINED_FUNCTION_1();
  v65 = *MEMORY[0x277D85DE8];
LABEL_22:
  OUTLINED_FUNCTION_23_0();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15);
}

uint64_t sub_2310D8B6C()
{
  OUTLINED_FUNCTION_4_1();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v9 + 168) = v0;

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310D8C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v96 = *MEMORY[0x277D85DE8];
  v18 = v17[19];

  v19 = v17[21];
  *&v20 = 138412290;
  v95 = v20;
  while (1)
  {
    OUTLINED_FUNCTION_42_5();
    v21 = v16;
    v22 = sub_231158238();
    v23 = sub_2311592F8();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v17[16];
    if (v24)
    {
      OUTLINED_FUNCTION_45_1();
      v26 = OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_63_3(v26, v27, v28, v29, v30, v31, v32, v33, v34);
      *(v21 + 4) = v25;
      *v35 = v25;
      v36 = v25;
      OUTLINED_FUNCTION_56_2(&dword_23103C000, v22, v23, "pull: finished enumerating over set %@");
      sub_231051B38(v26, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_29_2();
      v37 = v17[16];
    }

    else
    {
      v37 = v22;
      v22 = v17[16];
    }

    v39 = v17[17];
    v38 = v17[18];
    v41 = v17[13];
    v40 = v17[14];
    v42 = v17[8];
    v43 = v17[5];

    v44 = OUTLINED_FUNCTION_64_2();
    v45 = v41(v44);
    if (v39 == v40)
    {
      break;
    }

    v46 = v17[17];
    v47 = v17[11];
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x231925080](v17[17]);
    }

    else
    {
      OUTLINED_FUNCTION_47_5(v45, v47);
      if (v50)
      {
        goto LABEL_25;
      }

      v48 = *(v49 + 8 * v46 + 32);
    }

    v51 = v48;
    v17[16] = v48;
    v17[17] = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    OUTLINED_FUNCTION_57_3();
    v52 = v51;
    v53 = sub_231158238();
    v54 = sub_2311592F8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_45_1();
      v56 = OUTLINED_FUNCTION_38_2();
      *v55 = v95;
      *(v55 + 4) = v52;
      *v56 = v52;
      v57 = v52;
      OUTLINED_FUNCTION_77_1(&dword_23103C000, v53, v54, "pull: enumerating over set %@");
      sub_231051B38(v56, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_11_15();
    }

    v58 = v17[13];
    v59 = v17[9];
    v60 = v17[5];
    v16 = v17[6];

    OUTLINED_FUNCTION_50_4(v16 + 8);
    v61 = OUTLINED_FUNCTION_64_2();
    v58(v61);
    _s16PullStateMachineCMa();
    swift_allocObject();
    v17[19] = sub_2310875F4(v52);
    if (!v19)
    {
      v90 = swift_task_alloc();
      v91 = OUTLINED_FUNCTION_53_2(v90);
      *v91 = v92;
      OUTLINED_FUNCTION_1_17();
      v93 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_23_0();

      return sub_231087C30();
    }

    OUTLINED_FUNCTION_58_3();
    v62 = v19;
    v63 = sub_231158238();
    v64 = sub_2311592D8();

    if (OUTLINED_FUNCTION_60_3())
    {
      OUTLINED_FUNCTION_45_1();
      v65 = OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_63_3(v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v74 = v19;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v75;
      *v65 = v75;
      OUTLINED_FUNCTION_56_2(&dword_23103C000, v63, v64, "pull: error pulling down from Cascade: %@");
      sub_231051B38(v65, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
    }

    v76 = OUTLINED_FUNCTION_33_5();
    v77(v76);
    v19 = 0;
  }

  v78 = v17[15];
  v79 = v17[11];

  OUTLINED_FUNCTION_59_3();

  OUTLINED_FUNCTION_1();
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_0();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, v95, *(&v95 + 1), a11, a12, v96, a14, a15, a16);
}

uint64_t sub_2310D9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v96 = *MEMORY[0x277D85DE8];
  v19 = v17[19];

  v20 = v17[21];
  *&v21 = 138412290;
  v95 = v21;
  OUTLINED_FUNCTION_58_3();
  v22 = v20;
  v23 = sub_231158238();
  v24 = sub_2311592D8();

  if (OUTLINED_FUNCTION_60_3())
  {
    OUTLINED_FUNCTION_45_1();
    v25 = OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_63_3(v25, v26, v27, v28, v29, v30, v31, v32, v33);
    v34 = v20;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v35;
    *v25 = v35;
    OUTLINED_FUNCTION_56_2(&dword_23103C000, v23, v24, "pull: error pulling down from Cascade: %@");
    sub_231051B38(v25, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v36 = OUTLINED_FUNCTION_33_5();
  v37(v36);
  OUTLINED_FUNCTION_42_5();
  v38 = v16;
  v39 = sub_231158238();
  v40 = sub_2311592F8();

  v41 = OUTLINED_FUNCTION_62_4();
  v42 = v17[16];
  if (v41)
  {
    OUTLINED_FUNCTION_45_1();
    v43 = OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_63_3(v43, v44, v45, v46, v47, v48, v49, v50, v51);
    *(v38 + 4) = v42;
    *v52 = v42;
    v53 = v42;
    OUTLINED_FUNCTION_56_2(&dword_23103C000, v39, v40, "pull: finished enumerating over set %@");
    sub_231051B38(v43, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_29_2();
    v54 = v17[16];
  }

  else
  {
    v54 = v39;
    v39 = v17[16];
  }

  v56 = v17[17];
  v55 = v17[18];
  v58 = v17[13];
  v57 = v17[14];
  v59 = v17[8];
  v60 = v17[5];

  v61 = v58(v59, v60);
  if (v56 != v57)
  {
    v62 = v17[17];
    v63 = v17[11];
    if ((v63 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x231925080](v17[17]);
    }

    else
    {
      OUTLINED_FUNCTION_47_5(v61, v63);
      if (v66)
      {
        goto LABEL_22;
      }

      v64 = *(v65 + 8 * v62 + 32);
    }

    v67 = v64;
    v17[16] = v64;
    v17[17] = v62 + 1;
    if (!__OFADD__(v62, 1))
    {
      OUTLINED_FUNCTION_57_3();
      v68 = v67;
      v69 = sub_231158238();
      v70 = sub_2311592F8();

      if (OUTLINED_FUNCTION_60_3())
      {
        v71 = OUTLINED_FUNCTION_45_1();
        v72 = OUTLINED_FUNCTION_38_2();
        *v71 = v95;
        *(v71 + 4) = v68;
        *v72 = v68;
        v73 = v68;
        _os_log_impl(&dword_23103C000, v69, v70, "pull: enumerating over set %@", v71, 0xCu);
        sub_231051B38(v72, &unk_27DD3CC40, &qword_231162750);
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_16_10();
      }

      v74 = v17[13];
      v75 = v17[9];
      v77 = v17[5];
      v76 = v17[6];

      OUTLINED_FUNCTION_50_4(v76 + 8);
      v74(v75, v77);
      _s16PullStateMachineCMa();
      swift_allocObject();
      v17[19] = sub_2310875F4(v68);
      v78 = swift_task_alloc();
      v79 = OUTLINED_FUNCTION_53_2(v78);
      *v79 = v80;
      OUTLINED_FUNCTION_1_17();
      v81 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_23_0();

      return sub_231087C30();
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  v84 = v17[15];
  v85 = v17[11];

  OUTLINED_FUNCTION_59_3();

  OUTLINED_FUNCTION_1();
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23_0();

  return v88(v87, v88, v89, v90, v91, v92, v93, v94, v95, *(&v95 + 1), a11, a12, v96, a14, a15, a16);
}

uint64_t sub_2310D9484(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 176) = a2;
  v4 = sub_231158708();
  *(v3 + 24) = v4;
  v5 = *(v4 - 8);
  *(v3 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CF50, &unk_231166470);
  *(v3 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEA0, &unk_231162788) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v10 = sub_231157F18();
  *(v3 + 88) = v10;
  v11 = *(v10 - 8);
  *(v3 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v13 = sub_231158258();
  *(v3 + 112) = v13;
  v14 = *(v13 - 8);
  *(v3 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D9698, 0, 0);
}

uint64_t sub_2310D9698()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 16);
  v67 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  (*(v2 + 16))(v3, v5, v4);
  v6 = sub_231158238();
  v7 = sub_2311592F8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  if (v8)
  {
    v65 = *(v0 + 136);
    v14 = *(v0 + 176);
    v64 = v7;
    v15 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = v14;
    *(v15 + 8) = 2080;
    sub_231157EC8();
    (*(v12 + 8))(v11, v13);
    v16 = OUTLINED_FUNCTION_17();
    v19 = sub_2310488F8(v16, v17, v18);

    *(v15 + 10) = v19;
    _os_log_impl(&dword_23103C000, v6, v64, "push: donating ToolKit database to Cascade (force: %{BOOL}d, changeset: %s)", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v69);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_11_15();

    v20 = *(v10 + 8);
    v20(v65, v9);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    v20 = *(v10 + 8);
    v21 = OUTLINED_FUNCTION_17();
    v20(v21, v22);
  }

  sub_231158888();
  v23 = sub_231158868();
  *(v0 + 144) = v23;
  v24 = v23;
  v25 = *(v0 + 80);
  sub_2311585D8();
  sub_2310DC194(&qword_27DD3CF60, MEMORY[0x277D72708]);
  OUTLINED_FUNCTION_71_2();
  v26 = *(v0 + 72);
  OUTLINED_FUNCTION_71_2();
  v28 = *(v0 + 72);
  v29 = *(v0 + 56);
  v30 = *(v0 + 24);
  v31 = *(*(v0 + 48) + 48);
  sub_2310DC074(*(v0 + 80), v29);
  sub_2310DC074(v28, v29 + v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  if (EnumTagSinglePayload != 1)
  {
    v34 = *(v0 + 24);
    sub_2310DC074(*(v0 + 56), *(v0 + 64));
    v35 = __swift_getEnumTagSinglePayload(v29 + v31, 1, v34);
    v36 = *(v0 + 64);
    if (v35 != 1)
    {
      v42 = *(v0 + 56);
      v44 = *(v0 + 32);
      v43 = *(v0 + 40);
      v45 = *(v0 + 24);
      v66 = *(v0 + 176);
      (*(v44 + 32))(v43, v29 + v31, v45);
      sub_2310DC194(&qword_27DD3CF68, MEMORY[0x277D72758]);
      v46 = sub_231158E18();
      v47 = *(v44 + 8);
      v47(v43, v45);
      v47(v36, v45);
      sub_231051B38(v42, &qword_27DD3BEA0, &unk_231162788);
      if ((v46 & 1) != 0 && (v66 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    (*(*(v0 + 32) + 8))(*(v0 + 64), *(v0 + 24));
LABEL_14:
    sub_231051B38(*(v0 + 56), &unk_27DD3CF50, &unk_231166470);
    goto LABEL_15;
  }

  if (__swift_getEnumTagSinglePayload(v29 + v31, 1, *(v0 + 24)) != 1)
  {
    goto LABEL_14;
  }

  v33 = *(v0 + 176);
  sub_231051B38(*(v0 + 56), &qword_27DD3BEA0, &unk_231162788);
  if (v33 != 1)
  {
LABEL_20:
    v48 = *(v0 + 128);
    sub_2311581C8();
    v49 = sub_231158238();
    v50 = sub_2311592B8();
    v51 = os_log_type_enabled(v49, v50);
    v53 = *(v0 + 120);
    v52 = *(v0 + 128);
    v54 = *(v0 + 112);
    if (v51)
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      OUTLINED_FUNCTION_9_7();
    }

    v60 = OUTLINED_FUNCTION_17();
    (v20)(v60);
    v61 = *(v0 + 128);
    v62 = *(v0 + 136);
    OUTLINED_FUNCTION_49_2();
    v68 = *(v0 + 40);
    OUTLINED_FUNCTION_74_0(v50);
    OUTLINED_FUNCTION_74_0(v24);

    OUTLINED_FUNCTION_46_0();

    return v63();
  }

LABEL_15:
  v37 = *(v0 + 16);
  v38 = swift_task_alloc();
  *(v0 + 152) = v38;
  *(v38 + 16) = v24;
  *(v38 + 24) = v37;
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_53_2(v39);
  *v40 = v41;
  v40[1] = sub_2310D9CD8;

  return sub_2310D618C(&unk_231166488, v38);
}

uint64_t sub_2310D9CD8()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 152);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310D9E14()
{
  v3 = v0[18];

  v4 = v0[16];
  v5 = v0[17];
  OUTLINED_FUNCTION_49_2();
  v8 = v0[5];
  OUTLINED_FUNCTION_74_0(v2);
  OUTLINED_FUNCTION_74_0(v1);

  OUTLINED_FUNCTION_46_0();

  return v6();
}

uint64_t sub_2310D9F00()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];

  v4 = OUTLINED_FUNCTION_17();
  sub_231051B38(v4, v5, &unk_231162788);
  sub_231051B38(v3, &qword_27DD3BEA0, &unk_231162788);
  v6 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  OUTLINED_FUNCTION_49_2();
  v9 = v0[5];

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_2310D9FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_231158258();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DA0CC, 0, 0);
}

uint64_t sub_2310DA0CC()
{
  v29 = v0;
  v2 = v0[10];
  v3 = v0[3];
  v0[11] = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v4 = sub_231158238();
  v5 = sub_2311592F8();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = v0[10];
    v7 = v0[6];
    v6 = v0[7];
    v9 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_45_1();
    v10 = OUTLINED_FUNCTION_22_3();
    v28 = v10;
    *v1 = 136315138;
    v11 = v8 == 0;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x746C7561666564;
    }

    if (v11)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v3;
    }

    v14 = sub_2310488F8(v12, v13, &v28);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_70_2(&dword_23103C000, v15, v16, "push: starting donating changes (persona: %s)");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    v17 = *(v6 + 8);
    v17(v27, v7);
  }

  else
  {
    v18 = v0[10];
    v19 = v0[6];
    v20 = v0[7];

    v17 = *(v20 + 8);
    v21 = OUTLINED_FUNCTION_17();
    (v17)(v21);
  }

  v0[12] = v17;
  _s16PushStateMachineCMa();
  swift_allocObject();
  v0[13] = sub_231058530();
  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_2310DA2C4;
  v24 = v0[4];
  v23 = v0[5];
  OUTLINED_FUNCTION_10();

  return sub_231058800();
}

uint64_t sub_2310DA2C4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310DA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_87();
  a22 = v24;
  v28 = v24[11];
  v29 = v24[9];
  v30 = v24[3];
  sub_2311581C8();

  v31 = sub_231158238();
  sub_2311592F8();

  if (OUTLINED_FUNCTION_26_4())
  {
    v32 = v24[13];
    a11 = v24[9];
    a12 = v24[12];
    v33 = v24[7];
    a10 = v24[6];
    v34 = v24[2];
    v35 = v24[3];
    OUTLINED_FUNCTION_45_1();
    v36 = OUTLINED_FUNCTION_22_3();
    a13 = v36;
    *v25 = 136315138;
    if (v35)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0x746C7561666564;
    }

    if (v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0xE700000000000000;
    }

    v39 = sub_2310488F8(v37, v38, &a13);

    *(v25 + 4) = v39;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_9_7();

    a12(a11, a10);
  }

  else
  {
    v46 = v24[12];
    v45 = v24[13];
    v47 = v24[9];
    v48 = v24[6];
    v49 = v24[7];

    v50 = OUTLINED_FUNCTION_17();
    v46(v50);
  }

  v52 = v24[9];
  v51 = v24[10];
  v53 = v24[8];

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310DA568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v17 = *(v16 + 120);
  v18 = *(v16 + 104);
  v19 = *(v16 + 88);
  v20 = *(v16 + 64);
  v21 = *(v16 + 24);

  sub_2311581C8();

  v22 = v17;
  v23 = sub_231158238();
  sub_2311592D8();

  if (OUTLINED_FUNCTION_26_4())
  {
    v24 = *(v16 + 120);
    a11 = *(v16 + 64);
    a12 = *(v16 + 96);
    a9 = *(v16 + 56);
    a10 = *(v16 + 48);
    v25 = *(v16 + 16);
    v26 = *(v16 + 24);
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_38_2();
    a13 = swift_slowAlloc();
    *v27 = 136315394;

    v29 = OUTLINED_FUNCTION_17();
    sub_2310488F8(v29, v30, v31);

    OUTLINED_FUNCTION_73_0();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v32;
    *v28 = v32;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    sub_231051B38(v28, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    a12(a11, a10);
  }

  else
  {
    v38 = *(v16 + 96);
    v40 = *(v16 + 56);
    v39 = *(v16 + 64);
    v41 = *(v16 + 48);

    v42 = OUTLINED_FUNCTION_17();
    v38(v42);
  }

  v44 = *(v16 + 72);
  v43 = *(v16 + 80);
  v45 = *(v16 + 64);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310DA780(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v51 - v8;
  v10 = sub_231158258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  if (a1)
  {
    v54 = a3;
    v18 = *MEMORY[0x277D7A4F0];
    v19 = a1;
    sub_2311581C8();
    v20 = v19;
    v21 = a2;
    v22 = sub_231158238();
    v23 = sub_2311592F8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v55[0] = v26;
      *v25 = 136315394;
      v56 = a1;
      v27 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF88, &unk_2311664C8);
      v28 = sub_231158E68();
      v30 = sub_2310488F8(v28, v29, v55);
      v53 = v20;
      v31 = v9;
      v32 = v30;

      *(v25 + 4) = v32;
      *(v25 + 12) = 2080;
      v56 = a2;
      v33 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF80, &qword_2311664B0);
      v34 = sub_231158E68();
      v36 = sub_2310488F8(v34, v35, v55);
      v9 = v31;
      v20 = v53;

      *(v25 + 14) = v36;
      _os_log_impl(&dword_23103C000, v22, v23, "pull: got set change: %s, error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319267C0](v26, -1, -1);
      MEMORY[0x2319267C0](v25, -1, -1);

      (*(v11 + 8))(v17, v52);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v48 = sub_2311590C8();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v48);
    v49 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v49;
    v50[5] = v20;
    sub_2310798FC();
  }

  else
  {
    v37 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v38 = a2;
    v39 = sub_231158238();
    v40 = sub_2311592E8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55[0] = v42;
      *v41 = 136315138;
      v56 = a2;
      v43 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF80, &qword_2311664B0);
      v44 = sub_231158E68();
      v46 = sub_2310488F8(v44, v45, v55);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_23103C000, v39, v40, "pull: error listening to Cascade set changes: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2319267C0](v42, -1, -1);
      MEMORY[0x2319267C0](v41, -1, -1);
    }

    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_2310DAC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_231158258();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DAD20, 0, 0);
}

uint64_t sub_2310DAD20()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[5];
  OUTLINED_FUNCTION_40_5();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
    v4 = swift_allocObject();
    v0[11] = v4;
    *(v4 + 16) = xmmword_231161E80;
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_2310DAE54;

    return sub_2310D5C80();
  }

  else
  {
    v8 = v0[9];

    OUTLINED_FUNCTION_1();

    return v9();
  }
}

uint64_t sub_2310DAE54()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];

    v14 = v3[9];

    OUTLINED_FUNCTION_1();

    return v15();
  }
}

uint64_t sub_2310DAF80()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  v7 = v2;
  v8 = sub_231158238();
  sub_2311592D8();

  v9 = OUTLINED_FUNCTION_62_4();
  v10 = v0[13];
  if (v9)
  {
    OUTLINED_FUNCTION_45_1();
    v11 = OUTLINED_FUNCTION_22_10();
    *v1 = 138412290;
    v12 = v10;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v14, v15, "pull: error enumerating sets %@");
    sub_231051B38(v11, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v16 = v0[9];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_2310DB0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_231158258();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = sub_231157F18();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DB1FC, 0, 0);
}

uint64_t sub_2310DB1FC()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = *MEMORY[0x277D79C48];
  v6 = OUTLINED_FUNCTION_30_6();
  v7(v6);
  sub_231157ED8();
  v8 = OUTLINED_FUNCTION_29_6();
  v9(v8);
  if (v4)
  {
    v10 = v0[15];
    v0[19] = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v11 = sub_231158238();
    v12 = sub_2311592F8();
    if (OUTLINED_FUNCTION_20_2(v12))
    {
      v13 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v13);
      OUTLINED_FUNCTION_29_5(&dword_23103C000, v14, v15, "pull: re-ingest from cascade bc full index");
      OUTLINED_FUNCTION_16();
    }

    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[13];

    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_17();
    v21(v20);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[20] = v22;
    *v22 = v23;
    v22[1] = sub_2310DB400;
    v24 = v0[11];
    OUTLINED_FUNCTION_9();

    return sub_2310DB98C(v25, v26, v27, v28);
  }

  else
  {
    v30 = v0[11];
    OUTLINED_FUNCTION_41_6();
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {
      v32 = swift_task_alloc();
      v0[23] = v32;
      *v32 = v0;
      OUTLINED_FUNCTION_12_8(v32);

      return sub_2310D645C();
    }

    else
    {
      OUTLINED_FUNCTION_75_1();

      OUTLINED_FUNCTION_1();

      return v33();
    }
  }
}

uint64_t sub_2310DB400()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310DB4FC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[11];
  OUTLINED_FUNCTION_41_6();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_12_8(v3);

    return sub_2310D645C();
  }

  else
  {
    OUTLINED_FUNCTION_75_1();

    OUTLINED_FUNCTION_1();

    return v5();
  }
}

uint64_t sub_2310DB5C4()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  sub_2311581C8();
  v5 = v2;
  v6 = sub_231158238();
  sub_2311592D8();

  if (OUTLINED_FUNCTION_62_4())
  {
    OUTLINED_FUNCTION_45_1();
    v7 = OUTLINED_FUNCTION_22_10();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v10, v11, "push: error donating sets %@");
    sub_231051B38(v7, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2310DB704()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[22];

    v13 = v3[18];
    v16 = v3 + 14;
    v14 = v3[14];
    v15 = v16[1];

    OUTLINED_FUNCTION_1();

    return v17();
  }
}

uint64_t sub_2310DB83C()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[22];

  v3 = *MEMORY[0x277D7A4F0];
  v4 = v0[24];
  v5 = v0[14];
  sub_2311581C8();
  v6 = v4;
  v7 = sub_231158238();
  sub_2311592D8();

  if (OUTLINED_FUNCTION_62_4())
  {
    OUTLINED_FUNCTION_45_1();
    v8 = OUTLINED_FUNCTION_22_10();
    *v1 = 138412290;
    v9 = v4;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v11, v12, "push: error donating sets %@");
    sub_231051B38(v8, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_2310DB98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2310DB9AC, 0, 0);
}

uint64_t sub_2310DB9AC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_40_5();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_67_1(v3);

    return sub_2310D5C80();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_1();

    return v5();
  }
}

uint64_t sub_2310DBA88()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310DBB88()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_46_0();
  return v1();
}

uint64_t sub_2310DBBBC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_2310DBC68()
{
  OUTLINED_FUNCTION_22_0();
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_5(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23105FDEC;
  v10 = OUTLINED_FUNCTION_3_7();

  return sub_2310DB0D4(v10, v11, v5, v12, v6);
}

id sub_2310DBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v12 = sub_231158E28();

  v16[4] = a3;
  v16[5] = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2310DBE68;
  v16[3] = &block_descriptor_19;
  v13 = _Block_copy(v16);
  v14 = [v7 initWithIdentifier:v12 handlerBlock:v13 queue:a5 useCase:a6];

  _Block_release(v13);

  return v14;
}

void sub_2310DBE68(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2310DBEF4()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v6[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_62();

  return sub_2310D8320(v8, v9, v10, v11);
}

uint64_t sub_2310DBFA0()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = sub_231157F18();
  OUTLINED_FUNCTION_19(v3);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23106044C;

  return sub_2310D9484(v2, v6, v0 + v5);
}

uint64_t sub_2310DC074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEA0, &unk_231162788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310DC0E4()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23106044C;
  OUTLINED_FUNCTION_62();

  return sub_2310D9FF0(v6, v7, v8, v9, v10);
}

uint64_t sub_2310DC194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2310DC1EC()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v6[1] = sub_23106044C;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_62();

  return sub_2310DAC60(v8, v9, v10, v11, v12);
}

uint64_t sub_2310DC290()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;
  v7 = OUTLINED_FUNCTION_3_7();

  return sub_2310D74A0(v7, v8, v2, v3);
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{
  *(a1 + 8) = sub_2310D79B8;
  v2 = *(v1 + 80);
  return v1 + 48;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t result)
{
  *(result + 8) = sub_2310D8B6C;
  v2 = *(v1 + 177);
  return result;
}

void OUTLINED_FUNCTION_11_15()
{

  JUMPOUT(0x2319267C0);
}

void OUTLINED_FUNCTION_16_10()
{

  JUMPOUT(0x2319267C0);
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_5()
{
  v1 = v0[18];
  v2 = v0[13];
  result = v0[7];
  v4 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[8];

  return sub_2311581C8();
}

__n128 OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v9 = a9.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_49_2()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
}

void OUTLINED_FUNCTION_56_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_3()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_58_3()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_59_3()
{
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
}

BOOL OUTLINED_FUNCTION_60_3()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_62_4()
{

  return os_log_type_enabled(v0, v1);
}

__n128 OUTLINED_FUNCTION_63_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v9 = a9.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_70_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return MEMORY[0x2821DAC70](v0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_73_0()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1)
{

  return sub_231051B38(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
}

void OUTLINED_FUNCTION_77_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t static FSEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t FSEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t FSEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCFSEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231157DF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2310DC794(uint64_t a1)
{
  result = sub_2310DC7BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310DC7BC()
{
  result = qword_27DD3CFF0;
  if (!qword_27DD3CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CFF0);
  }

  return result;
}

unint64_t sub_2310DC814()
{
  result = qword_27DD3CFF8;
  if (!qword_27DD3CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CFF8);
  }

  return result;
}

uint64_t sub_2310DC868(uint64_t a1)
{
  result = sub_2310DC9B4(&qword_27DD3CB40, MEMORY[0x277D79B78]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310DC8C4()
{
  result = qword_27DD3D000;
  if (!qword_27DD3D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3D000);
  }

  return result;
}

uint64_t sub_2310DC930(uint64_t a1)
{
  v2 = MEMORY[0x277D79B98];
  *(a1 + 8) = sub_2310DC9B4(&unk_280CCB148, MEMORY[0x277D79B98]);
  result = sub_2310DC9B4(qword_280CCB158, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2310DC9B4(unint64_t *a1, void (*a2)(uint64_t))
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

void *DaemonTask.init<A>(id:event:priority:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a5;
  OUTLINED_FUNCTION_32_1();
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a10;
  v16[4] = a3;
  v16[5] = a4;
  a9[2] = sub_2310DD228;
  a9[3] = v16;
  OUTLINED_FUNCTION_32_1();
  result = swift_allocObject();
  result[2] = a8;
  result[3] = a10;
  result[4] = a6;
  result[5] = a7;
  a9[5] = &unk_231166630;
  a9[6] = result;
  return result;
}

double DaemonTask.init<A>(id:event:priority:perform:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v18, v19);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  (*(v15 + 32))(v21 + v20, v17, a7);
  v22 = type metadata accessor for DaemonEventStream.EventSource();
  WitnessTable = swift_getWitnessTable();
  DaemonTask.init<A>(id:event:priority:perform:)(a1, a2, sub_2310DD984, v21, v27, v28, v29, v22, &v30, WitnessTable);
  (*(v15 + 8))(a3, a7);
  v24 = v32;
  v25 = v33;
  *a9 = v30;
  *(a9 + 8) = v31;
  *(a9 + 24) = v24;
  *(a9 + 32) = v25;
  result = *&v34;
  *(a9 + 40) = v34;
  return result;
}

uint64_t DaemonTask.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2310DCCFC(uint64_t *a1)
{
  v9 = *a1;
  v1 = DaemonEventStream.event<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  swift_allocObject();

  v2 = sub_231158F78();
  *v3 = v1;
  v4 = type metadata accessor for DaemonEventStream.EventSource();
  v5 = sub_2310C106C(v2);

  WitnessTable = swift_getWitnessTable();
  v7 = static EventNodeBuilder.buildBlock(_:)(v5, v4, WitnessTable);

  return v7;
}

uint64_t sub_2310DCDF8(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D7A338];
  v4 = sub_231158E58();
  v6 = v5;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  sub_23107F530();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8D8, &unk_231166700);
  OUTLINED_FUNCTION_32_1();
  swift_allocObject();
  sub_23109C7E0();
  OUTLINED_FUNCTION_26_1();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF50, &qword_231162A80);
  OUTLINED_FUNCTION_32_1();
  swift_allocObject();
  sub_23109BE3C();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_231161E80;
  *(v10 + 32) = v9;
  result = sub_23106FF58(v10);
  if (!result)
  {
LABEL_8:
    sub_231061478();
    v19 = v18;

    return v19;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x231925080](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ++v13;
      OUTLINED_FUNCTION_26_1();
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;
      swift_beginAccess();
      v16 = *(v14 + 32);
      v17 = *(v14 + 40);
      *(v14 + 32) = sub_2310DDA6C;
      *(v14 + 40) = v15;

      sub_2310646D4(v16);
    }

    while (v12 != v13);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2310DD064(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a1;

  v11 = a3(&v20);

  v12 = sub_231158F58();
  v20 = v12;
  if (v12 != sub_231158FF8())
  {
    v15 = *(a6 + 32);
    do
    {
      v16 = sub_231158FD8();
      sub_231158F88();
      if (v16)
      {
        v17 = *(v11 + 32 + 8 * v12);
        swift_unknownObjectRetain();
      }

      else
      {
        sub_2311595A8();
      }

      sub_231159028();
      v18 = swift_allocObject();
      v18[2] = a5;
      v18[3] = a6;
      v18[4] = a1;
      v18[5] = a2;

      v15(sub_2310DDA74, v18, a5, a6);
      swift_unknownObjectRelease();
      v19 = sub_231158FF8();
      v12 = v20;
    }

    while (v20 != v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC10, &qword_231161AF0);
  v13 = sub_231159678();

  return v13;
}

uint64_t sub_2310DD234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_23107EC20(a3, a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2310DD2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v5 = sub_231159448();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = *(AssociatedTypeWitness - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DD42C, 0, 0);
}

uint64_t sub_2310DD42C()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_2310548A0(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  v3 = swift_dynamicCast();
  v4 = v0[10];
  if (v3)
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[8];
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v0[10]);
    (*(v6 + 32))(v5, v7, v4);
    v21 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_2310DD6C8;
    v11 = v0[15];
    v12 = v0[9];

    return v21(v11);
  }

  else
  {
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    v17 = v0[7];
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    (*(v15 + 8))(v14, v16);
    sub_231159588();
    MEMORY[0x231924980](0xD000000000000017, 0x80000002311686C0);
    v18 = sub_231159998();
    MEMORY[0x231924980](v18);

    MEMORY[0x231924980](0x20746F6720, 0xE500000000000000);
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_0(v17, v17[3]);
    v20 = *(v19 + 8);
    sub_2311597E8();
    return sub_2311596C8();
  }
}

uint64_t sub_2310DD6C8()
{
  OUTLINED_FUNCTION_4_1();
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2310DD850;
  }

  else
  {
    v3 = sub_2310DD7D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2310DD7D8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_1_18();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2310DD850()
{
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_1_18();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 136);

  return v3();
}

uint64_t sub_2310DD8C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2310C984C;

  return sub_2310DD2E4(a1, v7, v6);
}

uint64_t sub_2310DD984(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(*(*(v1 + 16) - 8) + 80);
  return sub_2310DCCFC(a1);
}

uint64_t sub_2310DD9C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2310DDA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2310DDA5C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2310DEEE4(a1);
}

uint64_t sub_2310DDA74(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2310DD234(a1, v1[4], v1[5]);
}

uint64_t OUTLINED_FUNCTION_1_18()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = *(v0[14] + 8);
  return v0[15];
}

uint64_t WFSiriWorkflowVocabularyUpdater.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2310DDCE4;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2311666A8;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000030;
  *(inited + 40) = 0x800000023116AA50;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v3;
  *(inited + 64) = 1;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_231161B80;
  *(v6 + 32) = inited;
  v7 = v0;
  v8 = static TaskBuilder.buildBlock(_:)(v6);
  swift_setDeallocating();
  sub_2310639FC();
  return v8;
}

double sub_2310DDC24(uint64_t *a1, void *a2)
{
  v2 = sub_2310DDCEC(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  sub_23109C3D0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_231161E80;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2310DDCEC(uint64_t a1, void *a2)
{
  v18 = a1;
  v3 = sub_2310A0BF0(&unk_2845D7AC0);
  v4 = [a2 databaseProvider];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2310E07F4(v3, v4, &v18);

  swift_unknownObjectRelease_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C6B0();
  v6 = v5;
  v7 = *MEMORY[0x277D7A338];
  v8 = sub_231158E58();
  v10 = v9;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  swift_allocObject();

  sub_23107F530();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8D8, &unk_231166700);
  swift_allocObject();
  sub_23109C7E0();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF50, &qword_231162A80);
  swift_allocObject();
  sub_23109BE3C();
  swift_allocObject();
  sub_23109CA40();
  v13 = v12;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C820, &unk_2311649E0);
  swift_allocObject();

  sub_23107F5EC();
  swift_allocObject();
  sub_23109C9A4();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_231166690;
  *(v16 + 32) = v6;
  *(v16 + 40) = v13;
  *(v16 + 48) = v15;

  return v16;
}

uint64_t sub_2310DE05C()
{
  [*(v0 + 16) updateIfPossible];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310DE0C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2310A4E78;

  return sub_2310DE03C(a1, v4);
}

uint64_t sub_2310DE1A0(uint64_t a1, char a2)
{
  sub_231159918();
  sub_2310512BC(v4, a2);
  return sub_231159948();
}

uint64_t sub_2310DE1E4()
{
  sub_231159918();
  sub_231158EA8();

  return sub_231159948();
}

uint64_t sub_2310DE298()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_2310DE304(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_231159918();
  a3(a2);
  sub_231158EA8();

  return sub_231159948();
}

uint64_t sub_2310DE36C(uint64_t a1, uint64_t a2)
{
  sub_231159918();
  MEMORY[0x2319253F0](a2);
  return sub_231159948();
}

uint64_t sub_2310DE3B0(uint64_t a1)
{
  strcpy(v5, "isPlaceholder");
  HIWORD(v5[1]) = -4864;
  sub_231159528();
  sub_23104ADA0(v6, a1, &v7);
  sub_231086718(v6);
  if (v8)
  {
    sub_231054A0C(0, &qword_280CCAE60, 0x277CCABB0);
    if (OUTLINED_FUNCTION_3_18())
    {
      v2 = [v5[0] BOOLValue];

      if (v2)
      {
        return MEMORY[0x277D84FA0];
      }
    }
  }

  else
  {
    sub_231040EC8(&v7);
  }

  OUTLINED_FUNCTION_0_24();
  sub_231159528();
  sub_23104ADA0(v6, a1, &v7);
  sub_231086718(v6);
  if (!v8)
  {
    sub_231040EC8(&v7);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  if ((OUTLINED_FUNCTION_3_18() & 1) == 0)
  {
LABEL_10:
    v4 = MEMORY[0x277D84F90];
    return sub_2310BE194(v4);
  }

  v4 = v5[0];
  return sub_2310BE194(v4);
}

BOOL sub_2310DE514(int a1, id a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v2 = [a2 databaseWithError_];
  if (v2)
  {
    v3 = v8[0];
  }

  else
  {
    v4 = v8[0];
    v5 = sub_231157938();

    swift_willThrow();
  }

  result = v2 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2310DE5D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v4 = sub_2310DEC64();
  v5 = [v4 updatedDescriptors];

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  OUTLINED_FUNCTION_4_15();
  v6 = sub_231159178();

  v7 = sub_2310DEC64();
  v8 = [v7 insertedDescriptors];

  OUTLINED_FUNCTION_4_15();
  v9 = sub_231159178();

  sub_2310DEA7C(v9, v6);
  v11 = v10;

  v12 = sub_2310DEC64();
  v13 = [v12 deletedDescriptors];

  OUTLINED_FUNCTION_4_15();
  v14 = sub_231159178();

  sub_2310DEA7C(v14, v11);
  if ((v15 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2311594C8();
    OUTLINED_FUNCTION_4_15();
    sub_2311591A8();
    v17 = v36;
    v16 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
  }

  else
  {
    v21 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v15 + 56);
    v19 = 0;
  }

  v24 = (v18 + 64) >> 6;
  while (v17 < 0)
  {
    if (!sub_2311594F8() || (swift_dynamicCast(), v28 = v35, v27 = v20, !v35))
    {
LABEL_25:
      sub_231043ED0();
      goto LABEL_26;
    }

LABEL_17:
    if (!*(a2 + 16))
    {
LABEL_24:
      sub_231043ED0();

LABEL_26:

      return;
    }

    v29 = [v28 objectType];
    if (*(a2 + 16))
    {
      v30 = v29;
      v31 = *(a2 + 40);
      sub_231159918();
      MEMORY[0x2319253F0](v30);
      v32 = sub_231159948();
      v33 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v34 = v32 & v33;
        if (((*(a2 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {
          break;
        }

        v32 = v34 + 1;
        if (*(*(a2 + 48) + 8 * v34) == v30)
        {
          goto LABEL_24;
        }
      }
    }

    v20 = v27;
  }

  v25 = v19;
  v26 = v20;
  if (v20)
  {
LABEL_13:
    v27 = (v26 - 1) & v26;
    v28 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v28)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_25;
    }

    v26 = *(v16 + 8 * v19);
    ++v25;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2310DE978(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2310DF3EC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2310DEA7C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2311594C8();
    sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
    sub_2310A431C();
    sub_2311591A8();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_231043ED0();
      return;
    }

    while (1)
    {
      sub_2310DF538(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2311594F8())
      {
        sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2310DEC64()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231158D88();

  v2 = [v0 initWithDictionaryRepresentation_];

  return v2;
}

unint64_t sub_2310DECEC()
{
  OUTLINED_FUNCTION_7_17();
  sub_231159588();

  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v0 = sub_2310DEC64();
  v1 = [v0 description];
  v2 = sub_231158E58();
  v4 = v3;

  MEMORY[0x231924980](v2, v4);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_2310DEDCC()
{
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v0 = sub_2310DEC64();

  v1 = sub_2310DEC64();
  v2 = [v0 notificationByMergingChangesFromNotification_];

  v3 = [v2 dictionaryRepresentation];
  v4 = sub_231158D98();

  return v4;
}

uint64_t sub_2310DEEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = sub_2310DEDCC();
  *a2 = result;
  return result;
}

BOOL sub_2310DEEE4(uint64_t *a1)
{
  v1 = sub_2310DE3B0(*a1);
  v2 = OUTLINED_FUNCTION_8_16(v1);

  return v2;
}

uint64_t sub_2310DEF2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158108();
  if (!result)
  {
    result = sub_231158DB8();
  }

  *a1 = result;
  return result;
}

uint64_t sub_2310DEF84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = sub_2310DE3B0(*a1);
  v4 = OUTLINED_FUNCTION_8_16(v3);

  return v4;
}

unint64_t sub_2310DEFD8()
{
  OUTLINED_FUNCTION_7_17();
  sub_231159588();

  sub_2310DE3B0(v0);
  v1 = sub_231159188();
  v3 = v2;

  MEMORY[0x231924980](v1, v3);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_2310DF090(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C338, &unk_231163B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  OUTLINED_FUNCTION_0_24();
  sub_231159528();
  v5 = sub_2310DE3B0(a2);
  v6 = sub_2310DE3B0(a1);
  v7 = sub_2310DE978(v6, v5);
  v8 = sub_231092834(v7);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  *(inited + 72) = v8;
  return sub_231158DB8();
}

uint64_t sub_2310DF174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2310DF090(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2310DF1AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C840, &qword_2311649F0);
  swift_allocObject();
  swift_retain_n();
  sub_23107F6A8();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C830, &unk_231166780);
  OUTLINED_FUNCTION_2_17();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_6_11();
  sub_23109C0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_5_13();
  sub_23109CAD4();
  v4 = v3;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C820, &unk_2311649E0);
  swift_allocObject();

  sub_23107F5EC();
  OUTLINED_FUNCTION_2_17();
  sub_23109C9A4();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v7 = OUTLINED_FUNCTION_2_17();
  *(v7 + 16) = xmmword_231162950;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  return v7;
}

uint64_t sub_2310DF388(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231166710;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_2310DF3EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_231159918();
  sub_231158EA8();
  v9 = sub_231159948();
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
    if (v14 || (sub_231159818() & 1) != 0)
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

  sub_2310DFE3C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2310DF538(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2311594E8();

    if (v9)
    {

      sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_2311594D8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2310DF75C(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2310DFB94(v18 + 1);
        }

        v19 = v8;
        sub_2310DFDB8(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
    v11 = *(v6 + 40);
    v12 = sub_231159408();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_2310DFFA4(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_231159418();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_2310DF75C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
    v2 = sub_231159558();
    v16 = v2;
    sub_2311594C8();
    while (1)
    {
      if (!sub_2311594F8())
      {

        return v2;
      }

      sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2310DFB94(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_231159408();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2310DF938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  result = sub_231159548();
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
      sub_2310DF388(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_231159918();
    sub_231158EA8();
    result = sub_231159948();
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

uint64_t sub_2310DFB94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
  result = sub_231159548();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_2310DF388(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_231159408();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2310DFDB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_231159408();
  v5 = -1 << *(a2 + 32);
  result = sub_2311594B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2310DFE3C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2310DF938(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2310E03B0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_231159918();
      sub_231158EA8();
      result = sub_231159948();
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
        if (v19 || (sub_231159818() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2310E0108();
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
    result = sub_231159878();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2310DFFA4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2310DFB94(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_2310E05E4(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_231159408();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_231159418();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2310E0260();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_231159878();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

void *sub_2310E0108()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  v2 = *v0;
  v3 = sub_231159538();
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

id sub_2310E0260()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
  v2 = *v0;
  v3 = sub_231159538();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_2310E03B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  result = sub_231159548();
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
        sub_231159918();

        sub_231158EA8();
        result = sub_231159948();
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

uint64_t sub_2310E05E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
  result = sub_231159548();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_231159408();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

void sub_2310E07F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  swift_allocObject();

  sub_23107F530();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C7E0, &unk_231166790);
  OUTLINED_FUNCTION_2_17();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_6_11();
  sub_23109BDA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D020, &qword_2311649D0);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_5_13();
  sub_23109C61C();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C770, qword_2311649B0);
  OUTLINED_FUNCTION_2_17();

  sub_23109BD08();
}

unint64_t sub_2310E09A4(uint64_t a1)
{
  result = sub_2310E09CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310E09CC()
{
  result = qword_27DD3D028;
  if (!qword_27DD3D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3D028);
  }

  return result;
}

unint64_t sub_2310E0A20(uint64_t a1)
{
  result = sub_2310E0A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310E0A48()
{
  result = qword_27DD3D030;
  if (!qword_27DD3D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3D030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_8_16(uint64_t a1)
{

  return sub_23106EED8(v2, v1, a1);
}

void sub_2310E11CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLLogTimeSensitiveRegisteredEventSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PowerLogLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2788FDEB8;
    v8 = 0;
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PowerLogLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFTriggerEventRunner.m" lineNumber:27 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PLLogTimeSensitiveRegisteredEvent");
  *(*(a1[4] + 8) + 24) = result;
  getPLLogTimeSensitiveRegisteredEventSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id VCVoiceShortcutClientArchingError(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  if (v4)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [v5 if_dictionaryByAddingEntriesFromDictionary:v6];

    v5 = v7;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7A358] code:1000 userInfo:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id WFHomescreenFastPathRunShortcutEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277D7C828];
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(v6);
  [v9 setKey:v7];
  [v9 setActionCount:1];
  v10 = [v8 source];
  [v9 setShortcutSource:v10];

  [v9 setRunSource:*MEMORY[0x277D7A848]];
  [v9 setAutomationType:0];
  v11 = [v8 galleryIdentifier];

  [v9 setGalleryIdentifier:v11];
  [v9 setDidRunRemotely:0];
  [v9 setIsFromAutomationSuggestion:0];
  [v9 setAutomationSuggestionsTrialIdentifier:0];
  LODWORD(v8) = [v7 isEqualToString:*MEMORY[0x277D7CC88]];

  if (v8)
  {
    [v9 setCompleted:{objc_msgSend(v5, "appIsInstalled")}];
  }

  return v9;
}

id WFHomescreenFastPathRunActionEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277D7C820];
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(v6);
  [v9 setKey:v7];
  [v9 setActionIdentifier:*MEMORY[0x277D7CDB8]];
  [v9 setExternalBundleIdentifier:@"is.workflow.actions"];
  [v9 setExternalActionIdentifier:@"openapp"];
  v10 = [v8 source];

  [v9 setShortcutSource:v10];
  [v9 setRunSource:*MEMORY[0x277D7A848]];
  [v9 setAutomationType:0];
  [v9 setDidRunRemotely:0];
  LODWORD(v8) = [v7 isEqualToString:@"RunActionFinish"];

  if (v8)
  {
    [v9 setCompleted:{objc_msgSend(v5, "appIsInstalled")}];
  }

  return v9;
}

void sub_2310E7574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HMHomeManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHMHomeManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManager.m" lineNumber:36 description:{@"Unable to find class %s", "HMHomeManager"}];

    __break(1u);
  }
}