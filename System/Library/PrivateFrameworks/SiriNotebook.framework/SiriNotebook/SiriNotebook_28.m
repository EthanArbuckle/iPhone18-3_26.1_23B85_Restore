void *sub_2683915D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254088, &qword_2683F6638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253CF0, &unk_2683F6640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391724(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_24();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E30, &unk_2683F6600);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 112);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[14 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 112 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251640, &qword_2683E3D80);
    swift_arrayInitWithCopy();
  }
}

char *sub_268391848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254078, &qword_2683F6618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391950()
{
  OUTLINED_FUNCTION_8_41();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_15_24();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_19_36(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    OUTLINED_FUNCTION_11_44(v16 - 32);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[40 * v2 + 32] <= v15 + 32)
    {
      v18 = OUTLINED_FUNCTION_44();
      memmove(v18, v19, v20);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_44();
    swift_arrayInitWithCopy();
  }
}

void *sub_268391A48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D0, &unk_2683E3D00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391B78()
{
  OUTLINED_FUNCTION_8_41();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_15_24();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_19_36(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v15[2] = v2;
    v15[3] = 2 * ((v16 - 32) / 8);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[v2 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_44();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_44();
    swift_arrayInitWithCopy();
  }
}

char *sub_268391C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254060, &unk_2683F65E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_268391D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254030, &unk_2683F6430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268391E6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[168 * v8] <= v12)
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_268391F84()
{
  result = qword_280253FE8;
  if (!qword_280253FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253FE8);
  }

  return result;
}

uint64_t type metadata accessor for NotebookSuggestion.SignalDefinition()
{
  result = qword_280254040;
  if (!qword_280254040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26839204C()
{
  sub_268392130(319, &qword_280254050, MEMORY[0x277D612D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_268392130(319, &qword_280254058, MEMORY[0x277D61068], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268392130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26839219C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2683921DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268392244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_268392284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_33()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[5] + 16);
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_18_36()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_268392410()
{
  v0 = sub_2683CF7E8();
  __swift_allocate_value_buffer(v0, qword_28027CE90);
  __swift_project_value_buffer(v0, qword_28027CE90);
  return sub_2683CF7D8();
}

uint64_t sub_268392494@<X0>(void *a1@<X8>)
{
  sub_2683CD6F8();
  v2 = v14;
  if (!v14)
  {
    v11 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_17;
  }

  v3 = sub_2683CD7C8();

  v4 = sub_2683CD7D8();

  if (!v4)
  {
LABEL_15:
    v11 = sub_2683CD4E8();

LABEL_17:

    *a1 = v2;
    a1[1] = v4;
    a1[2] = v3;
    a1[3] = 0;
    a1[4] = v11;
    return result;
  }

  swift_getKeyPath();
  v12 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  result = sub_2683ABE58(v4);
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      v4 = v12;
      goto LABEL_15;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v7;
    if (v13)
    {
      MEMORY[0x26D616770](result);
      v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v10);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v12 = v15;
      v7 = v9;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_26839268C@<X0>(void *a1@<X8>)
{
  sub_2683CDDD8();
  v2 = v19;
  sub_2683CDDE8();
  v3 = v19;
  if (v19 && (v4 = sub_2683CD4E8()) != 0)
  {
    v5 = v4;
    v17 = v19;
  }

  else
  {
    if (!v19)
    {

      v14 = 0;
      v9 = 0;
LABEL_24:
      *a1 = v2;
      a1[1] = v3;
      a1[2] = 0;
      a1[3] = v14;
      a1[4] = 0;
      a1[5] = v9;
      return result;
    }

    v17 = v19;
    v5 = sub_2683CD4E8();
  }

  v18 = v5;

  v6 = sub_268161E50();
  swift_getKeyPath();
  v7 = sub_2683ABE58(v6);
  v8 = v6 & 0xC000000000000001;
  v9 = v6 & 0xFFFFFFFFFFFFFF8;
  swift_retain_n();
  v10 = 0;
  while (1)
  {
    if (v7 == v10)
    {
      goto LABEL_17;
    }

    if (v8)
    {
      MEMORY[0x26D616C90](v10, v6);
    }

    else
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v11 = *(v6 + 8 * v10 + 32);
    }

    v12 = sub_2683CD7C8();

    if (v12)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_26;
    }
  }

  v7 = v10;
LABEL_17:

  v9 = v18;
  if (v7 == sub_268394E6C())
  {

    v14 = 0;
LABEL_22:

    v3 = v17;
    v2 = v19;
    goto LABEL_24;
  }

  sub_2683ABE60(v7, v8 == 0, v6);
  if (!v8)
  {
    v15 = *(v6 + 32 + 8 * v7);

    goto LABEL_21;
  }

LABEL_27:
  MEMORY[0x26D616C90](v7, v6);
LABEL_21:

  v14 = sub_2683CD7C8();

  if (v14)
  {
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_268392938@<X0>(void *a1@<X8>)
{
  sub_2683CD6F8();
  if (v4)
  {

    v2 = sub_2683CD4E8();
  }

  else
  {
    v2 = 0;
  }

  *a1 = v4;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  return result;
}

uint64_t sub_2683929B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);

  return sub_2681C326C(v4, 0, a1);
}

uint64_t sub_2683929F4()
{
  v1 = *(v0 + 16);
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

uint64_t sub_268392A44()
{
  v1 = sub_2683CDB98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = sub_268393A2C();
  v26 = v18;
  if (!v18)
  {
LABEL_21:
    sub_268393BA0(v18, v19, v20, v21, v22, v23, v24, v25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    return (v26 | v35) & 1;
  }

  v37 = v0;
  result = sub_2683ABE58(v18);
  v28 = 0;
  v46 = v26 & 0xC000000000000001;
  v47 = result;
  v49 = v26;
  v45 = v26 & 0xFFFFFFFFFFFFFF8;
  HIDWORD(v44) = *MEMORY[0x277D5EE50];
  v38 = (v2 + 32);
  v42 = (v2 + 8);
  v43 = (v2 + 104);
  v29 = &qword_2683F6940;
  v41 = v17;
  while (1)
  {
    LOBYTE(v26) = v47 != v28;
    if (v47 == v28)
    {
      goto LABEL_20;
    }

    if (v46)
    {
      result = MEMORY[0x26D616C90](v28, v49);
    }

    else
    {
      if (v28 >= *(v45 + 16))
      {
        goto LABEL_23;
      }

      v30 = *(v49 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (sub_2683CD4F8())
    {
      sub_2683CDB88();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v1);
    }

    (*v43)(v15, HIDWORD(v44), v1);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v1);
    v31 = *(v48 + 48);
    sub_26822A08C(v17, v7);
    sub_26822A08C(v15, &v7[v31]);
    if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
    {

      sub_26812D9E0(v15, &qword_28024FD48, v29);
      sub_26812D9E0(v17, &qword_28024FD48, v29);
      if (__swift_getEnumTagSinglePayload(&v7[v31], 1, v1) == 1)
      {
        sub_26812D9E0(v7, &qword_28024FD48, &qword_2683F6940);
LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_16;
    }

    sub_26822A08C(v7, v12);
    if (__swift_getEnumTagSinglePayload(&v7[v31], 1, v1) == 1)
    {

      sub_26812D9E0(v15, &qword_28024FD48, v29);
      sub_26812D9E0(v17, &qword_28024FD48, v29);
      (*v42)(v12, v1);
LABEL_16:
      result = sub_26812D9E0(v7, &qword_28024FD40, &unk_2683DE830);
      goto LABEL_18;
    }

    v32 = v29;
    v33 = v39;
    (*v38)(v39, &v7[v31], v1);
    sub_26822A0FC();
    HIDWORD(v40) = sub_2683CFA58();

    v34 = *v42;
    (*v42)(v33, v1);
    sub_26812D9E0(v15, &qword_28024FD48, v32);
    sub_26812D9E0(v41, &qword_28024FD48, v32);
    v34(v12, v1);
    v29 = v32;
    v17 = v41;
    result = sub_26812D9E0(v7, &qword_28024FD48, v29);
    if ((v40 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    ++v28;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_268392F2C()
{
  v1 = sub_2683CDB98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v30 = v0;
  v18 = *(v0 + 24);
  if (v18)
  {
    result = sub_2683ABE58(v18);
    v20 = 0;
    v40 = v18 & 0xC000000000000001;
    v41 = result;
    v39 = v18 & 0xFFFFFFFFFFFFFF8;
    v38 = *MEMORY[0x277D5EE50];
    v36 = v18;
    v37 = (v2 + 104);
    v31 = (v2 + 32);
    v34 = v17;
    v35 = (v2 + 8);
    v21 = &qword_2683F6940;
    while (1)
    {
      v22 = v41 != v20;
      if (v41 == v20)
      {
        goto LABEL_21;
      }

      if (v40)
      {
        result = MEMORY[0x26D616C90](v20, v18);
      }

      else
      {
        if (v20 >= *(v39 + 16))
        {
          goto LABEL_23;
        }

        v23 = *(v18 + 8 * v20 + 32);
      }

      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      if (sub_2683CD4F8())
      {
        sub_2683CDB88();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v1);
      }

      (*v37)(v15, v38, v1);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v1);
      v24 = *(v42 + 48);
      sub_26822A08C(v17, v7);
      sub_26822A08C(v15, &v7[v24]);
      if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
      {
        break;
      }

      sub_26822A08C(v7, v12);
      if (__swift_getEnumTagSinglePayload(&v7[v24], 1, v1) == 1)
      {

        sub_26812D9E0(v15, &qword_28024FD48, v21);
        sub_26812D9E0(v17, &qword_28024FD48, v21);
        (*v35)(v12, v1);
LABEL_16:
        result = sub_26812D9E0(v7, &qword_28024FD40, &unk_2683DE830);
        goto LABEL_18;
      }

      v25 = v21;
      v26 = v32;
      (*v31)(v32, &v7[v24], v1);
      sub_26822A0FC();
      v33 = sub_2683CFA58();

      v27 = *v35;
      (*v35)(v26, v1);
      sub_26812D9E0(v15, &qword_28024FD48, v25);
      sub_26812D9E0(v34, &qword_28024FD48, v25);
      v27(v12, v1);
      v21 = v25;
      v17 = v34;
      result = sub_26812D9E0(v7, &qword_28024FD48, v21);
      if (v33)
      {
        goto LABEL_21;
      }

LABEL_18:
      ++v20;
      v18 = v36;
    }

    sub_26812D9E0(v15, &qword_28024FD48, v21);
    sub_26812D9E0(v17, &qword_28024FD48, v21);
    if (__swift_getEnumTagSinglePayload(&v7[v24], 1, v1) == 1)
    {
      sub_26812D9E0(v7, &qword_28024FD48, &qword_2683F6940);
      v22 = 1;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v22 = 0;
LABEL_21:
  sub_268394A28();
  return (v22 | v28) & 1;
}

uint64_t sub_268393410()
{
  v1 = sub_2683CDB98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v30 = v0;
  v18 = *(v0 + 32);
  if (v18)
  {
    result = sub_2683ABE58(v18);
    v20 = 0;
    v40 = v18 & 0xC000000000000001;
    v41 = result;
    v39 = v18 & 0xFFFFFFFFFFFFFF8;
    v38 = *MEMORY[0x277D5EE50];
    v36 = v18;
    v37 = (v2 + 104);
    v31 = (v2 + 32);
    v34 = v17;
    v35 = (v2 + 8);
    v21 = &qword_2683F6940;
    while (1)
    {
      v22 = v41 != v20;
      if (v41 == v20)
      {
        goto LABEL_21;
      }

      if (v40)
      {
        result = MEMORY[0x26D616C90](v20, v18);
      }

      else
      {
        if (v20 >= *(v39 + 16))
        {
          goto LABEL_23;
        }

        v23 = *(v18 + 8 * v20 + 32);
      }

      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      if (sub_2683CD4F8())
      {
        sub_2683CDB88();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v1);
      }

      (*v37)(v15, v38, v1);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v1);
      v24 = *(v42 + 48);
      sub_26822A08C(v17, v7);
      sub_26822A08C(v15, &v7[v24]);
      if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
      {
        break;
      }

      sub_26822A08C(v7, v12);
      if (__swift_getEnumTagSinglePayload(&v7[v24], 1, v1) == 1)
      {

        sub_26812D9E0(v15, &qword_28024FD48, v21);
        sub_26812D9E0(v17, &qword_28024FD48, v21);
        (*v35)(v12, v1);
LABEL_16:
        result = sub_26812D9E0(v7, &qword_28024FD40, &unk_2683DE830);
        goto LABEL_18;
      }

      v25 = v21;
      v26 = v32;
      (*v31)(v32, &v7[v24], v1);
      sub_26822A0FC();
      v33 = sub_2683CFA58();

      v27 = *v35;
      (*v35)(v26, v1);
      sub_26812D9E0(v15, &qword_28024FD48, v25);
      sub_26812D9E0(v34, &qword_28024FD48, v25);
      v27(v12, v1);
      v21 = v25;
      v17 = v34;
      result = sub_26812D9E0(v7, &qword_28024FD48, v21);
      if (v33)
      {
        goto LABEL_21;
      }

LABEL_18:
      ++v20;
      v18 = v36;
    }

    sub_26812D9E0(v15, &qword_28024FD48, v21);
    sub_26812D9E0(v17, &qword_28024FD48, v21);
    if (__swift_getEnumTagSinglePayload(&v7[v24], 1, v1) == 1)
    {
      sub_26812D9E0(v7, &qword_28024FD48, &qword_2683F6940);
      v22 = 1;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v22 = 0;
LABEL_21:
  sub_2683942C4();
  return (v22 | v28) & 1;
}

uint64_t sub_2683938F4()
{
  if (!*v0)
  {
    return 0;
  }

  if (!sub_2683CD7A8())
  {
    return 0;
  }

  v1 = sub_2683CDA98();

  return v1;
}

uint64_t sub_268393960()
{
  if (*v0 && sub_2683CD7A8())
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_2683939BC()
{
  if (!*v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_2683CD7B8();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  result = swift_allocObject();
  *(result + 16) = xmmword_2683D1EC0;
  *(result + 32) = v3;
  *(result + 40) = v4;
  return result;
}

uint64_t sub_268393A2C()
{
  v1 = *v0;
  if (!v1)
  {
    return v1;
  }

  v2 = sub_2683CD768();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_getKeyPath();
  v1 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  result = sub_2683ABE58(v3);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return v1;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = OUTLINED_FUNCTION_7_37();
      result = MEMORY[0x26D616C90](v10);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v6;
    if (v11)
    {
      MEMORY[0x26D616770](result);
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v9);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v12;
      v6 = v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_268393BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v23;
  a20 = v24;
  v25 = sub_2683CDB98();
  v26 = OUTLINED_FUNCTION_2_31(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &a9 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &a9 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v44);
  v46 = &a9 - v45;
  if (*v21 && sub_2683CD4F8())
  {
    sub_2683CDB88();
  }

  else
  {
    OUTLINED_FUNCTION_23_24(v46);
  }

  (*(v28 + 104))(v22, *MEMORY[0x277D5EE50], v20);
  OUTLINED_FUNCTION_4_28();
  v47 = *(v33 + 48);
  sub_26822A08C(v46, v38);
  sub_26822A08C(v22, &v38[v47]);
  OUTLINED_FUNCTION_2_6(v38);
  if (!v48)
  {
    sub_26822A08C(v38, v43);
    OUTLINED_FUNCTION_2_6(&v38[v47]);
    if (!v48)
    {
      (*(v28 + 32))(v32, &v38[v47], v20);
      sub_26822A0FC();
      sub_2683CFA58();
      v52 = *(v28 + 8);
      v52(v32, v20);
      sub_26812D9E0(v22, &qword_28024FD48, &qword_2683F6940);
      sub_26812D9E0(v46, &qword_28024FD48, &qword_2683F6940);
      v53 = OUTLINED_FUNCTION_7_37();
      (v52)(v53);
      sub_26812D9E0(v38, &qword_28024FD48, &qword_2683F6940);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_9_12(v22);
    OUTLINED_FUNCTION_9_12(v46);
    v49 = *(v28 + 8);
    v50 = OUTLINED_FUNCTION_7_37();
    v51(v50);
LABEL_13:
    sub_26812D9E0(v38, &qword_28024FD40, &unk_2683DE830);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_12(v22);
  OUTLINED_FUNCTION_9_12(v46);
  OUTLINED_FUNCTION_2_6(&v38[v47]);
  if (!v48)
  {
    goto LABEL_13;
  }

  sub_26812D9E0(v38, &qword_28024FD48, &qword_2683F6940);
LABEL_14:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268393F20(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_268393F7C()
{
  if (!*(v1 + 8))
  {
    return 0;
  }

  sub_2683CDA98();
  if (!v2)
  {
    if (sub_2683CDAA8())
    {
      sub_2683CDE18();
      OUTLINED_FUNCTION_24_22();

      return v0;
    }

    return 0;
  }

  OUTLINED_FUNCTION_24_22();
  return v0;
}

void sub_268393FE8()
{
  OUTLINED_FUNCTION_30_0();
  if (*v0)
  {
    v6 = sub_268161E50();
    sub_2683ABE58(v6);
    OUTLINED_FUNCTION_26_26();
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v2)
      {

        goto LABEL_16;
      }

      if (v4)
      {
        v11 = OUTLINED_FUNCTION_7_37();
        MEMORY[0x26D616C90](v11);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v2 + 32);
      }

      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_2683CD7B8();
      OUTLINED_FUNCTION_30_21();
      ++v2;
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = OUTLINED_FUNCTION_1_65();
          sub_2682E4728(v12, v13, v14, v15);
          v7 = v16;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        v2 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v9);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4728(v17, v18, v19, v20);
          v7 = v21;
        }

        OUTLINED_FUNCTION_27_19();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_2683940FC()
{
  if (*(v0 + 8) && (v4 = sub_2683CDA78()) != 0)
  {
    v5 = v4;
    swift_getKeyPath();
    sub_2683ABE58(v5);
    result = OUTLINED_FUNCTION_31_17();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v7)
      {

        return v8;
      }

      if (v2)
      {
        v21 = OUTLINED_FUNCTION_7_37();
        result = MEMORY[0x26D616C90](v21);
        v9 = result;
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v30[0] = v9;

      swift_getAtKeyPath();

      if (v23)
      {
        v10 = sub_2683CD6E8();
        OUTLINED_FUNCTION_34_19(v10, v11);
      }

      else
      {
        v31 = 0;
        memset(v30, 0, sizeof(v30));
      }

      OUTLINED_FUNCTION_21_26();
      if (v29)
      {
        sub_268128148(&v28, v30);
        sub_268128148(v30, &v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_1_65();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v20 = *(v8 + 24);
        if (*(v8 + 16) >= v20 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v20);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        result = OUTLINED_FUNCTION_20_37(isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26, v27, v28);
      }

      else
      {
        result = sub_26812D9E0(&v28, &qword_28024FD78, &qword_2683F5370);
      }

      ++v7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_2683942C4()
{
  OUTLINED_FUNCTION_30_0();
  v5 = sub_2683CDB98();
  v6 = OUTLINED_FUNCTION_2_31(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_45(v11, v35);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v12 = OUTLINED_FUNCTION_1(v42);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_29_22();
  if (!v0)
  {
LABEL_25:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v21 = sub_268161E50();
  v22 = sub_2683ABE58(v21);
  OUTLINED_FUNCTION_10_37(v22);
  OUTLINED_FUNCTION_13_39(*MEMORY[0x277D5EE50]);
  v37 = v3;
  while (1)
  {
    if (v41 == v1)
    {
      goto LABEL_24;
    }

    if (v40)
    {
      v8 = MEMORY[0x26D616C90](v1, v43);
    }

    else
    {
      if (v1 >= *(v39 + 16))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_33_21();
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    v23 = v8;
    v24 = sub_2683CD4F8();
    if (v24)
    {
      v23 = v24;
      sub_2683CDB88();
    }

    else
    {
      OUTLINED_FUNCTION_23_24(v3);
    }

    v25 = OUTLINED_FUNCTION_14_32();
    v26(v25);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_32_19();
    sub_26822A08C(v2, &v16[v23]);
    OUTLINED_FUNCTION_2_6(v16);
    if (v27)
    {

      v8 = &qword_28024FD48;
      OUTLINED_FUNCTION_37_12(v2);
      OUTLINED_FUNCTION_37_12(v3);
      OUTLINED_FUNCTION_2_6(&v16[v23]);
      if (v27)
      {
        sub_26812D9E0(v16, &qword_28024FD48, &qword_2683F6940);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    sub_26822A08C(v16, v4);
    OUTLINED_FUNCTION_2_6(&v16[v23]);
    if (v27)
    {

      OUTLINED_FUNCTION_35_20(v2);
      OUTLINED_FUNCTION_35_20(v3);
      v28 = *v38;
      v29 = OUTLINED_FUNCTION_25_29();
      v30(v29);
LABEL_19:
      sub_26812D9E0(v16, &qword_28024FD40, &unk_2683DE830);
      goto LABEL_21;
    }

    v31 = OUTLINED_FUNCTION_6_40();
    v32(v31);
    sub_26822A0FC();
    v36 = OUTLINED_FUNCTION_16_33();

    v33 = OUTLINED_FUNCTION_28_22();
    (v8)(v33);
    OUTLINED_FUNCTION_38_16(v2);
    OUTLINED_FUNCTION_38_16(v37);
    v34 = OUTLINED_FUNCTION_25_29();
    (v8)(v34);
    OUTLINED_FUNCTION_19_37();
    if (v36)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_268394624@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_2683929B4(a1);
}

uint64_t sub_268394660()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_2683929F4();
}

uint64_t sub_26839469C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_268393410();
}

uint64_t sub_2683946E0()
{
  if (!*v1)
  {
    return 0;
  }

  sub_2683CDA98();
  if (!v2)
  {
    if (sub_2683CDAA8())
    {
      sub_2683CDE18();
      OUTLINED_FUNCTION_24_22();

      return v0;
    }

    return 0;
  }

  OUTLINED_FUNCTION_24_22();
  return v0;
}

void sub_26839474C()
{
  OUTLINED_FUNCTION_30_0();
  if (*v0)
  {
    v6 = sub_268161CE4();
    sub_2683ABE58(v6);
    OUTLINED_FUNCTION_26_26();
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v2)
      {

        goto LABEL_16;
      }

      if (v4)
      {
        v11 = OUTLINED_FUNCTION_7_37();
        MEMORY[0x26D616C90](v11);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v2 + 32);
      }

      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_2683CD7B8();
      OUTLINED_FUNCTION_30_21();
      ++v2;
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = OUTLINED_FUNCTION_1_65();
          sub_2682E4728(v12, v13, v14, v15);
          v7 = v16;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        v2 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v9);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4728(v17, v18, v19, v20);
          v7 = v21;
        }

        OUTLINED_FUNCTION_27_19();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_268394860()
{
  if (*v0 && (v4 = sub_2683CDA78()) != 0)
  {
    v5 = v4;
    swift_getKeyPath();
    sub_2683ABE58(v5);
    result = OUTLINED_FUNCTION_31_17();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v7)
      {

        return v8;
      }

      if (v2)
      {
        v21 = OUTLINED_FUNCTION_7_37();
        result = MEMORY[0x26D616C90](v21);
        v9 = result;
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v30[0] = v9;

      swift_getAtKeyPath();

      if (v23)
      {
        v10 = sub_2683CD6E8();
        OUTLINED_FUNCTION_34_19(v10, v11);
      }

      else
      {
        v31 = 0;
        memset(v30, 0, sizeof(v30));
      }

      OUTLINED_FUNCTION_21_26();
      if (v29)
      {
        sub_268128148(&v28, v30);
        sub_268128148(v30, &v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_1_65();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v20 = *(v8 + 24);
        if (*(v8 + 16) >= v20 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v20);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        result = OUTLINED_FUNCTION_20_37(isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26, v27, v28);
      }

      else
      {
        result = sub_26812D9E0(&v28, &qword_28024FD78, &qword_2683F5370);
      }

      ++v7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_268394A28()
{
  OUTLINED_FUNCTION_30_0();
  v5 = sub_2683CDB98();
  v6 = OUTLINED_FUNCTION_2_31(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_45(v11, v35);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v12 = OUTLINED_FUNCTION_1(v42);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_29_22();
  if (!v0)
  {
LABEL_25:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v21 = sub_268161CE4();
  v22 = sub_2683ABE58(v21);
  OUTLINED_FUNCTION_10_37(v22);
  OUTLINED_FUNCTION_13_39(*MEMORY[0x277D5EE50]);
  v37 = v3;
  while (1)
  {
    if (v41 == v1)
    {
      goto LABEL_24;
    }

    if (v40)
    {
      v8 = MEMORY[0x26D616C90](v1, v43);
    }

    else
    {
      if (v1 >= *(v39 + 16))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_33_21();
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    v23 = v8;
    v24 = sub_2683CD4F8();
    if (v24)
    {
      v23 = v24;
      sub_2683CDB88();
    }

    else
    {
      OUTLINED_FUNCTION_23_24(v3);
    }

    v25 = OUTLINED_FUNCTION_14_32();
    v26(v25);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_32_19();
    sub_26822A08C(v2, &v16[v23]);
    OUTLINED_FUNCTION_2_6(v16);
    if (v27)
    {

      v8 = &qword_28024FD48;
      OUTLINED_FUNCTION_37_12(v2);
      OUTLINED_FUNCTION_37_12(v3);
      OUTLINED_FUNCTION_2_6(&v16[v23]);
      if (v27)
      {
        sub_26812D9E0(v16, &qword_28024FD48, &qword_2683F6940);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    sub_26822A08C(v16, v4);
    OUTLINED_FUNCTION_2_6(&v16[v23]);
    if (v27)
    {

      OUTLINED_FUNCTION_35_20(v2);
      OUTLINED_FUNCTION_35_20(v3);
      v28 = *v38;
      v29 = OUTLINED_FUNCTION_25_29();
      v30(v29);
LABEL_19:
      sub_26812D9E0(v16, &qword_28024FD40, &unk_2683DE830);
      goto LABEL_21;
    }

    v31 = OUTLINED_FUNCTION_6_40();
    v32(v31);
    sub_26822A0FC();
    v36 = OUTLINED_FUNCTION_16_33();

    v33 = OUTLINED_FUNCTION_28_22();
    (v8)(v33);
    OUTLINED_FUNCTION_38_16(v2);
    OUTLINED_FUNCTION_38_16(v37);
    v34 = OUTLINED_FUNCTION_25_29();
    (v8)(v34);
    OUTLINED_FUNCTION_19_37();
    if (v36)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

BOOL sub_268394D7C()
{
  sub_26839474C();
  v1 = *(v0 + 16);

  return v1 == 0;
}

uint64_t sub_268394E24(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268394E60(uint64_t result)
{
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_268394E6C()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *v0;
  }

  return sub_2683D00A8();
}

uint64_t sub_268394E9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268394E60(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268394EDC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_268394F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_268394F9C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_268394FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_37(uint64_t result)
{
  *(v2 - 112) = v1 & 0xC000000000000001;
  *(v2 - 104) = result;
  *(v2 - 88) = v1;
  *(v2 - 120) = v1 & 0xFFFFFFFFFFFFFF8;
  return result;
}

void OUTLINED_FUNCTION_13_39(int a1@<W8>)
{
  *(v2 - 124) = a1;
  *(v2 - 176) = v1 + 32;
  *(v2 - 144) = v1 + 8;
  *(v2 - 136) = v1 + 104;
}

uint64_t OUTLINED_FUNCTION_14_32()
{
  v2 = **(v1 - 136);
  result = v0;
  v4 = *(v1 - 124);
  return result;
}

__n128 OUTLINED_FUNCTION_15_38()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_33()
{

  return sub_2683CFA58();
}

uint64_t OUTLINED_FUNCTION_19_37()
{
  v5 = v1;
  v6 = v2;
  v7 = *(v3 - 152);

  return sub_26812D9E0(v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_20_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v15 + 16) = v17;

  return sub_268128148(&a15, v15 + 40 * v16 + 32);
}

uint64_t OUTLINED_FUNCTION_21_26()
{
}

void OUTLINED_FUNCTION_27_19()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_30_21()
{
}

uint64_t OUTLINED_FUNCTION_31_17()
{
}

uint64_t OUTLINED_FUNCTION_32_19()
{
  v4 = *(*(v2 - 96) + 48);

  return sub_26822A08C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_33_21()
{
  v3 = *(*(v1 - 88) + 8 * v0 + 32);
}

uint64_t OUTLINED_FUNCTION_34_19(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  *(&v6 + 1) = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v9 = a1;
  v10 = v3;
  *&v6 = v2;

  return sub_268128148(va, va1);
}

uint64_t OUTLINED_FUNCTION_35_20(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_16(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}

uint64_t type metadata accessor for NotebookReadingCATsSimple()
{
  result = qword_280254098;
  if (!qword_280254098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683953C8()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000019, 0x8000000268401C60, v2);
}

uint64_t sub_268395478()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812BEB4;
  v2 = OUTLINED_FUNCTION_7_38();

  return v3(v2);
}

uint64_t sub_268395518()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = OUTLINED_FUNCTION_7_38();

  return v3(v2);
}

uint64_t sub_2683955B8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268395658, 0, 0);
}

uint64_t sub_268395658()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_2683D2890;
  *(v3 + 32) = 0x6C7469547473696CLL;
  *(v3 + 40) = 0xE900000000000065;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = *(v0 + 72);
  *(v3 + 80) = 0x6E756F436B736174;
  *(v3 + 88) = 0xE900000000000074;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  v11 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_268395854;
  v12 = *(v0 + 32);

  return v14(0xD000000000000024, 0x8000000268401BD0, v3);
}

uint64_t sub_268395854()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v4[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268183D9C, 0, 0);
  }

  else
  {
    v11 = v4[5];
    v10 = v4[6];

    v12 = *(v8 + 8);

    return v12(v1);
  }
}

uint64_t sub_268395994(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683959A8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 1702129518;
  *(v2 + 40) = 0xE400000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookNoteConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_11_46(v4);

  return v6(0xD000000000000018);
}

uint64_t sub_268395AC8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26812C3D4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    v10 = OUTLINED_FUNCTION_5();

    return v11(v10);
  }
}

uint64_t sub_268395BF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268395C0C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 1802723700;
  *(v2 + 40) = 0xE400000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookReminderConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_11_46(v4);

  return v6(0xD00000000000001CLL);
}

uint64_t sub_268395D2C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26812B8E8, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    v10 = OUTLINED_FUNCTION_5();

    return v11(v10);
  }
}

uint64_t sub_268395E5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268395EB0(a1, a2);
}

uint64_t sub_268395EB0(uint64_t a1, uint64_t a2)
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
  sub_26812C2A8(a1, &v18 - v15, &qword_28024D258, &unk_2683D1F60);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v16;
}

uint64_t sub_26839602C(uint64_t a1, uint64_t a2)
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

uint64_t OUTLINED_FUNCTION_11_46(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t type metadata accessor for NotebookSuggestionsCATs()
{
  result = qword_2814B1D50;
  if (!qword_2814B1D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683961EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268396240(a1, a2);
}

uint64_t sub_268396240(uint64_t a1, uint64_t a2)
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

uint64_t sub_2683963B4@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v57) = a3;
  v55 = a4;
  v6 = sub_2683CAEE8();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v58 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = sub_2683CB438();
  v22 = OUTLINED_FUNCTION_0_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024CC58 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v21, qword_2802540A8);
  v52 = v28;
  v53 = v24;
  v30 = *(v24 + 16);
  v54 = v21;
  v30(v28, v29, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540C0, &qword_2683F6A40);
  v31 = *(v14 + 72);
  v32 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2683D2890;
  v51 = v33;
  v34 = v33 + v32;
  sub_268396AA4(a1, a2);
  if (v35)
  {
    sub_2683CAEB8();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v6);
  }

  if (v57 == 2)
  {
    v36 = 1;
  }

  else
  {
    sub_2683CAEB8();

    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34 + v31, v36, 1, v6);
  v37 = 0;
  v38 = 0;
  v39 = (v58 + 32);
  v40 = MEMORY[0x277D84F90];
  v56 = v34;
  v57 = v12;
  do
  {
    v41 = v37;
    sub_268396FF4(v34 + v38 * v31, v20);
    sub_268397064(v20, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
    {
      sub_26812C310(v18, &qword_28024F340, &qword_2683DB820);
    }

    else
    {
      v42 = v31;
      v43 = *v39;
      (*v39)(v12, v18, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v40 + 16);
        sub_2682E53DC();
        v40 = v47;
      }

      v44 = *(v40 + 16);
      if (v44 >= *(v40 + 24) >> 1)
      {
        sub_2682E53DC();
        v40 = v48;
      }

      *(v40 + 16) = v44 + 1;
      v45 = v40 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44;
      v12 = v57;
      v43(v45, v57, v6);
      v31 = v42;
      v34 = v56;
    }

    v37 = 1;
    v38 = 1;
  }

  while ((v41 & 1) == 0);
  swift_setDeallocating();
  sub_2681F5654();
  v49 = v52;
  sub_2683CB428();

  return (*(v53 + 8))(v49, v54);
}

uint64_t sub_268396884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_2683CB438();
  __swift_allocate_value_buffer(v4, qword_2802540A8);
  v5 = __swift_project_value_buffer(v4, qword_2802540A8);
  sub_2683CB418();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_268396994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_2683CB438();
  __swift_allocate_value_buffer(v4, qword_28027CEB8);
  v5 = __swift_project_value_buffer(v4, qword_28027CEB8);
  sub_2683CB418();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void (**sub_268396AA4(void (**a1)(char *, uint64_t), uint64_t a2))(char *, uint64_t)
{
  v4 = sub_2683CAEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v52 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540C8, &qword_2683F6A48);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = sub_2683CAF48();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_29;
  }

  sub_2683CAF38();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {

    sub_26812C310(v17, &qword_2802540C8, &qword_2683F6A48);
LABEL_29:

    return a1;
  }

  v47 = v13;
  v48 = v19;
  (*(v19 + 32))(v22, v17, v18);
  v49 = v22;
  v23 = sub_2683CAF28();
  v25 = v24;
  if (qword_28024CC58 != -1)
  {
LABEL_36:
    swift_once();
  }

  v26 = sub_2683CB438();
  __swift_project_value_buffer(v26, qword_2802540A8);
  v27 = sub_2683CB408();
  if (!v25)
  {
    if (!v28)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!v28)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v23 == v27 && v25 == v28)
  {

    goto LABEL_17;
  }

  v30 = sub_2683D0598();

  if ((v30 & 1) == 0)
  {
LABEL_15:

    (*(v48 + 8))(v49, v18);
    goto LABEL_29;
  }

LABEL_17:
  v31 = v49;
  v32 = sub_2683CAF18();
  if (!v32)
  {
    (*(v48 + 8))(v31, v18);

    goto LABEL_29;
  }

  v23 = v32;
  v45 = a1;
  v46 = v18;
  v18 = 0;
  v25 = 0x696669746E656469;
  v33 = *(v32 + 16);
  v50 = v5 + 16;
  v51 = v33;
  a1 = (v5 + 8);
  while (1)
  {
    if (v51 == v18)
    {

      (*(v48 + 8))(v49, v46);
      a1 = v45;
      goto LABEL_29;
    }

    if (v18 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    (*(v5 + 16))(v9, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v4);
    if (sub_2683CAEC8() == v25 && v34 == 0xEA00000000007265)
    {
      break;
    }

    v36 = v25;
    v37 = sub_2683D0598();

    if (v37)
    {
      goto LABEL_32;
    }

    (*a1)(v9, v4);
    ++v18;
    v25 = v36;
  }

LABEL_32:

  v39 = *(v5 + 32);
  v40 = v52;
  v39(v52, v9, v4);
  v41 = v47;
  v39(v47, v40, v4);
  v42 = sub_2683CAED8();
  v44 = v43;
  (*(v5 + 8))(v41, v4);
  (*(v48 + 8))(v49, v46);
  if (!v44)
  {
    return v45;
  }

  return v42;
}

uint64_t sub_268396FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268397064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683970D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_2683ABE58(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
LABEL_13:

      return v4 != i;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](i, v3);
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = v7;
    v8 = sub_2683971D8(&v9, a1);

    if (v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2683971D8(uint64_t *a1, uint64_t a2)
{
  v46 = sub_2683CD1F8();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_2683CD508();
  if (v10)
  {
    v38 = a2;
    v11 = *(v10 + 16);
    if (v11)
    {
      v37[2] = v9;
      v37[3] = v2;
      v13 = *(v5 + 16);
      v12 = v5 + 16;
      v14 = *(v12 + 64);
      v37[1] = v10;
      v15 = v10 + ((v14 + 32) & ~v14);
      v39 = *(v12 + 56);
      v40 = v13;
      v41 = v12;
      v16 = (v12 - 8);
      v17 = MEMORY[0x277D84F90];
      do
      {
        v18 = v46;
        v40(v8, v15, v46);
        v19 = sub_2683CD1D8();
        v21 = v20;
        (*v16)(v8, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2682E4728(0, *(v17 + 16) + 1, 1, v17);
          v17 = v25;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2682E4728(v22 > 1, v23 + 1, 1, v17);
          v17 = v26;
        }

        *(v17 + 16) = v23 + 1;
        v24 = v17 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v15 += v39;
        --v11;
      }

      while (v11);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v29 = 0xE400000000000000;
    v30 = 1734437990;
    LOBYTE(a2) = v38;
    switch(v38)
    {
      case 1:
        v29 = 0xE700000000000000;
        v30 = 0x64656767616C66;
        break;
      case 2:
        v29 = 0xE300000000000000;
        v30 = 7105633;
        break;
      case 3:
        v29 = 0xE500000000000000;
        v30 = 0x6C6562616CLL;
        break;
      default:
        break;
    }

    v44 = v30;
    v45 = v29;
    MEMORY[0x28223BE20](v27);
    v37[-2] = &v44;
    v28 = sub_2681A073C(sub_2681A12C0, &v37[-4], v17);
  }

  else
  {
    v28 = 0;
  }

  v31 = sub_2683CD708();
  if (v32)
  {
    v44 = v31;
    v45 = v32;
    v33 = 0xE400000000000000;
    v34 = 1734437990;
    switch(a2)
    {
      case 0:
        break;
      case 1:
        v33 = 0xE700000000000000;
        v34 = 0x64656767616C66;
        break;
      case 2:
        v33 = 0xE300000000000000;
        v34 = 7105633;
        break;
      case 3:
        v33 = 0xE500000000000000;
        v34 = 0x6C6562616CLL;
        break;
      default:
        JUMPOUT(0);
    }

    v42 = v34;
    v43 = v33;
    sub_26812A1AC();
    v35 = sub_2683D0008();

    v28 |= v35 == 0;
  }

  return v28 & 1;
}

uint64_t *sub_268397584(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v82 = &v79 - v6;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v81 = &v79 - v8;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v79 = &v79 - v10;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  sub_2683B9E1C();
  v86 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v25 = sub_2683CFA38();
  v27 = v26;

  v28 = type metadata accessor for NotebookNoteConcept.Builder(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_26835A848();
  v85 = a1;
  v32 = [a1 title];
  sub_2683CFEA8();

  v33 = sub_2683CF168();
  v34 = 1;
  v35 = OUTLINED_FUNCTION_0_74();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  v38 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title;
  OUTLINED_FUNCTION_2_63();
  sub_268163BC8(v23, v31 + v38);
  swift_endAccess();
  sub_26812C310(v23, &unk_28024E7C0, &unk_2683D6CA0);
  v83 = v25;
  v84 = v27;
  if (sub_26812A050(v25, v27))
  {
    sub_2683CFB38();
    v34 = 0;
  }

  v39 = 1;
  __swift_storeEnumTagSinglePayload(v21, v34, 1, v33);
  v40 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent;
  OUTLINED_FUNCTION_2_63();
  sub_268163BC8(v21, v31 + v40);
  swift_endAccess();
  sub_26812C310(v21, &unk_28024E7C0, &unk_2683D6CA0);
  v41 = v85;
  v42 = [v85 groupName];
  if (v42)
  {
    v43 = v42;
    sub_2683CFEA8();

    v39 = 0;
  }

  v44 = v82;
  v45 = 1;
  __swift_storeEnumTagSinglePayload(v18, v39, 1, v33);
  v46 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName;
  OUTLINED_FUNCTION_2_63();
  sub_268163BC8(v18, v31 + v46);
  swift_endAccess();
  sub_26812C310(v18, &unk_28024E7C0, &unk_2683D6CA0);
  v47 = [v41 createdDateComponents];
  if (v47)
  {
    v48 = v47;
    v49 = v79;
    sub_2683CAFE8();

    v45 = 0;
  }

  else
  {
    v49 = v79;
  }

  v50 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v49, v45, 1, v50);
  sub_268176BC8(v49, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v50) == 1)
  {
    sub_26812C310(v13, &qword_28024D4B0, &unk_2683D26E0);
    v51 = 0;
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_1_66();
    v53 = v52;
    v55 = v81;
    (*(v54 + 16))(v81, v13, v50);
    v56 = OUTLINED_FUNCTION_0_74();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v50);
    v51 = sub_268216C78(v55);
    (*(v53 + 8))(v13, v50);
  }

  v59 = v80;
  sub_26835A8DC(v51);

  v60 = [v41 modifiedDateComponents];
  if (v60)
  {
    v61 = v60;
    sub_2683CAFE8();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  __swift_storeEnumTagSinglePayload(v59, v62, 1, v50);
  sub_268176BC8(v59, v44);
  if (__swift_getEnumTagSinglePayload(v44, 1, v50) == 1)
  {
    sub_26812C310(v44, &qword_28024D4B0, &unk_2683D26E0);
    v63 = 0;
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_1_66();
    v65 = v64;
    v67 = v81;
    (*(v66 + 16))(v81, v44, v50);
    v68 = OUTLINED_FUNCTION_0_74();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v50);
    v63 = sub_268216C78(v67);
    (*(v65 + 8))(v44, v50);
  }

  v71 = sub_26835A8E8(v63);

  v72 = sub_268397C30();

  v73 = v71 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount;
  *v73 = v72;
  *(v73 + 8) = 0;
  v74 = type metadata accessor for NotebookNoteConcept(0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v77 = sub_26835A990(v71);

  return v77;
}

double sub_268397C30()
{

  v0 = 0.0;
  while (1)
  {
    v1 = sub_2683CFBB8();
    if (!v2)
    {
      break;
    }

    if (v1 == 12369903 && v2 == 0xA300000000000000)
    {

      goto LABEL_10;
    }

    v4 = sub_2683D0598();

    if (v4)
    {
LABEL_10:
      v0 = v0 + 1.0;
    }
  }

  return v0;
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return swift_beginAccess();
}

void sub_268397D54()
{
  qword_2802540D0 = 0xD000000000000028;
  *algn_2802540D8 = 0x80000002683FD670;
  qword_2802540E0 = 0xD000000000000014;
  unk_2802540E8 = 0x8000000268401CF0;
}

uint64_t static DIConfirmationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v2 = *algn_2802540D8;
  v3 = qword_2802540E0;
  v4 = unk_2802540E8;
  *a1 = qword_2802540D0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_268397E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

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

uint64_t sub_268397F34(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_268397F8C(uint64_t a1)
{
  v2 = sub_2683984EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268397FC8(uint64_t a1)
{
  v2 = sub_2683984EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26839800C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268397E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268398034(uint64_t a1)
{
  v2 = sub_268398498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268398070(uint64_t a1)
{
  v2 = sub_268398498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2683980AC(uint64_t a1)
{
  v2 = sub_268398594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683980E8(uint64_t a1)
{
  v2 = sub_268398594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268398124(uint64_t a1)
{
  v2 = sub_268398540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268398160(uint64_t a1)
{
  v2 = sub_268398540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIConfirmationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540F0, &qword_2683F6A60);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540F8, &qword_2683F6A68);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v41 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254100, &qword_2683F6A70);
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v39 = v19;
  v40 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254108, &qword_2683F6A78);
  OUTLINED_FUNCTION_0_3(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v38 - v31;
  v33 = *v1;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268398498();
  sub_2683D0718();
  if (v33)
  {
    if (v33 == 1)
    {
      v48 = 1;
      sub_268398540();
      v24 = v41;
      OUTLINED_FUNCTION_2_64();
      v36 = v42;
      v35 = v43;
    }

    else
    {
      v49 = 2;
      sub_2683984EC();
      v24 = v44;
      OUTLINED_FUNCTION_2_64();
      v36 = v45;
      v35 = v46;
    }
  }

  else
  {
    v47 = 0;
    sub_268398594();
    OUTLINED_FUNCTION_2_64();
    v36 = v39;
    v35 = v40;
  }

  (*(v36 + 8))(v24, v35);
  return (*(v27 + 8))(v32, v25);
}

unint64_t sub_268398498()
{
  result = qword_280254110;
  if (!qword_280254110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254110);
  }

  return result;
}

unint64_t sub_2683984EC()
{
  result = qword_280254118;
  if (!qword_280254118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254118);
  }

  return result;
}

unint64_t sub_268398540()
{
  result = qword_280254120;
  if (!qword_280254120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254120);
  }

  return result;
}

unint64_t sub_268398594()
{
  result = qword_280254128;
  if (!qword_280254128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254128);
  }

  return result;
}

uint64_t DIConfirmationResponse.hashValue.getter()
{
  v1 = *v0;
  sub_2683D0698();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

uint64_t DIConfirmationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254130, &qword_2683F6A80);
  OUTLINED_FUNCTION_0_3(v71);
  v68 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254138, &qword_2683F6A88);
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254140, &qword_2683F6A90);
  OUTLINED_FUNCTION_0_3(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254148, &unk_2683F6A98);
  OUTLINED_FUNCTION_0_3(v23);
  v69 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268398498();
  v31 = v72;
  sub_2683D06F8();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v61 = v16;
  v62 = v22;
  v63 = v15;
  v33 = v70;
  v32 = v71;
  v72 = a1;
  v34 = sub_2683D04B8();
  result = sub_268151B7C(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v60 = 0;
  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v39) = *(v36 + v37);
    sub_268151B68(v37 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v68;
    if (!v44)
    {
LABEL_9:
      v50 = sub_2683D01D8();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
      *v52 = &type metadata for DIConfirmationResponse;
      sub_2683D0428();
      sub_2683D01C8();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v29, v23);
      a1 = v72;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    if (v39)
    {
      if (v39 == 1)
      {
        v74 = 1;
        sub_268398540();
        v46 = v63;
        OUTLINED_FUNCTION_4_55();
        v47 = v67;
        v48 = v23;
        v49 = v69;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v46, v66);
        (*(v49 + 8))(v29, v48);
      }

      else
      {
        LODWORD(v66) = v39;
        v75 = 2;
        sub_2683984EC();
        v55 = v60;
        sub_2683D0418();
        v47 = v67;
        v39 = v23;
        v56 = v69;
        if (v55)
        {
          (*(v69 + 8))(v29, v39);
          swift_unknownObjectRelease();
          a1 = v72;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        swift_unknownObjectRelease();
        (*(v45 + 8))(v33, v32);
        (*(v56 + 8))(v29, v39);
        LOBYTE(v39) = v66;
      }
    }

    else
    {
      v73 = 0;
      sub_268398594();
      v54 = v62;
      OUTLINED_FUNCTION_4_55();
      swift_unknownObjectRelease();
      (*(v64 + 8))(v54, v61);
      v57 = OUTLINED_FUNCTION_3_55();
      v58(v57);
      v47 = v67;
    }

    *v47 = v39;
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  return result;
}

unint64_t sub_268398C54()
{
  result = qword_280254150;
  if (!qword_280254150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254150);
  }

  return result;
}

unint64_t sub_268398CA8(void *a1)
{
  a1[1] = sub_26834F750();
  a1[2] = sub_26837E490();
  result = sub_268398C54();
  a1[3] = result;
  return result;
}

_BYTE *sub_268398CF0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268398E00()
{
  result = qword_280254158;
  if (!qword_280254158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254158);
  }

  return result;
}

unint64_t sub_268398E58()
{
  result = qword_280254160;
  if (!qword_280254160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254160);
  }

  return result;
}

unint64_t sub_268398EB0()
{
  result = qword_280254168;
  if (!qword_280254168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254168);
  }

  return result;
}

unint64_t sub_268398F08()
{
  result = qword_280254170;
  if (!qword_280254170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254170);
  }

  return result;
}

unint64_t sub_268398F60()
{
  result = qword_280254178;
  if (!qword_280254178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254178);
  }

  return result;
}

unint64_t sub_268398FB8()
{
  result = qword_280254180;
  if (!qword_280254180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254180);
  }

  return result;
}

unint64_t sub_268399010()
{
  result = qword_280254188;
  if (!qword_280254188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254188);
  }

  return result;
}

unint64_t sub_268399068()
{
  result = qword_280254190;
  if (!qword_280254190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254190);
  }

  return result;
}

unint64_t sub_2683990C0()
{
  result = qword_280254198;
  if (!qword_280254198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254198);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_64()
{

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_4_55()
{
  v2 = *(v0 - 184);

  return sub_2683D0418();
}

id sub_268399170(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_allocWithZone(MEMORY[0x277D47250]);
  v6 = v4;
  v7 = [v5 init];
  sub_2681C3150(a1, a2, v7);
  v8 = v7;
  [v6 setDecoratedBodyText_];

  return v6;
}

void sub_268399224()
{
  OUTLINED_FUNCTION_30_0();
  v109 = v4;
  v6 = v5;
  v101 = v7;
  v105 = v8;
  v10 = v9;
  v106 = sub_2683CEDC8();
  v11 = OUTLINED_FUNCTION_0_3(v106);
  v108 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_18();
  v107 = v15;
  OUTLINED_FUNCTION_3_8();
  v102 = sub_2683CEDA8();
  v16 = OUTLINED_FUNCTION_0_3(v102);
  v104 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_18();
  v103 = v20;
  OUTLINED_FUNCTION_3_8();
  v21 = sub_2683CF948();
  v22 = OUTLINED_FUNCTION_0_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  v29 = v28 - v27;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  v30 = OUTLINED_FUNCTION_1(v99);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v98 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_27_20();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_38();
  v100 = v10;
  v39 = sub_2683B2A68(v10);
  sub_2682DFB6C(v39, v40, v6);
  OUTLINED_FUNCTION_53_8();
  if (v6)
  {
    sub_2682B2AF0(v6);
  }

  else
  {
    v41 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v41);
  }

  OUTLINED_FUNCTION_52_8();
  v42 = sub_2683CEDD8();
  OUTLINED_FUNCTION_35_21(v42);
  if (!v43)
  {
    OUTLINED_FUNCTION_51_9();
    OUTLINED_FUNCTION_1_7();
    v45 = v44;
    v47 = *(v46 + 88);
    v48 = OUTLINED_FUNCTION_18_37();
    v50 = v49(v48);
    if (v50 == *MEMORY[0x277D1C680])
    {
      v51 = OUTLINED_FUNCTION_5_53();
      v52(v51);
      v53 = OUTLINED_FUNCTION_6_41(v24);
      v54(v53);
      v110 = v109(v29);
      v111 = v55;
      v56 = OUTLINED_FUNCTION_40_16();
LABEL_10:
      v57(v56);
LABEL_14:
      sub_26839B7DC(v1);
      goto LABEL_15;
    }

    if (v50 == *MEMORY[0x277D1C670])
    {
      v58 = OUTLINED_FUNCTION_5_53();
      v59(v58);
      v60 = OUTLINED_FUNCTION_6_41(v108);
      v61(v60);
      if (v105)
      {

        v62 = sub_2683CEDB8();
        v105(&v110, v62);
        OUTLINED_FUNCTION_54_7();
        v63 = OUTLINED_FUNCTION_12_35();
        v64(v63);
        goto LABEL_14;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v72 = sub_2683CF7E8();
      v73 = OUTLINED_FUNCTION_14_33(v72, qword_28027C958);
      sub_26839B76C(v73, v3);
      v74 = sub_2683CF7C8();
      v75 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v75))
      {
        OUTLINED_FUNCTION_35_8();
        v110 = OUTLINED_FUNCTION_21_27();
        *v2 = 136315394;
        v76 = sub_2683B2A68(v100);
        sub_2681610A0(v76, v77, &v110);
        OUTLINED_FUNCTION_50_12();
        OUTLINED_FUNCTION_15_39();
        sub_26839B76C(v3, v98);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_42_15();
        sub_26839B7DC(v3);
        v78 = OUTLINED_FUNCTION_11_37();
        v81 = sub_2681610A0(v78, v79, v80);

        *(v2 + 14) = v81;
        OUTLINED_FUNCTION_22_25(&dword_2680EB000, v82, v75, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3_16();

        (*(v108 + 8))(v107, v106);
      }

      else
      {

        sub_26839B7DC(v3);
        v94 = OUTLINED_FUNCTION_12_35();
        v95(v94);
      }
    }

    else
    {
      if (v50 != *MEMORY[0x277D1C668])
      {
        sub_26839B7DC(v1);
        v69 = *(v45 + 8);
        v70 = OUTLINED_FUNCTION_18_37();
        v71(v70);
        goto LABEL_7;
      }

      v65 = OUTLINED_FUNCTION_5_53();
      v66(v65);
      v67 = OUTLINED_FUNCTION_17_27(v104);
      v68(v67);
      if (v101)
      {

        v101(&v110, v103);
        sub_268128194(v101);
        v56 = OUTLINED_FUNCTION_9_40();
        goto LABEL_10;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v83 = sub_2683CF7E8();
      v84 = OUTLINED_FUNCTION_14_33(v83, qword_28027C958);
      sub_26839B76C(v84, v2);
      v85 = sub_2683CF7C8();
      v86 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v86))
      {
        OUTLINED_FUNCTION_35_8();
        v110 = OUTLINED_FUNCTION_43_12();
        *v104 = 136315394;
        v87 = sub_2683B2A68(v100);
        v89 = sub_2681610A0(v87, v88, &v110);

        v90 = OUTLINED_FUNCTION_29_23();
        sub_26839B76C(v90, v98);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_44_15();
        v91 = sub_2681610A0(v98, v89, &v110);

        *(v104 + 14) = v91;
        OUTLINED_FUNCTION_36_17(&dword_2680EB000, v92, v93, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_25_0();

        (*(v104 + 8))(v103, v102);
      }

      else
      {

        sub_26839B7DC(v2);
        v96 = OUTLINED_FUNCTION_9_40();
        v97(v96);
      }
    }
  }

  sub_26839B7DC(v1);
LABEL_7:
  v110 = 0;
  v111 = 0;
LABEL_15:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_268399904()
{
  OUTLINED_FUNCTION_30_0();
  v108 = v4;
  v6 = v5;
  v100 = v7;
  v104 = v8;
  v10 = v9;
  v105 = sub_2683CEDC8();
  v11 = OUTLINED_FUNCTION_0_3(v105);
  v107 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_18();
  v106 = v15;
  OUTLINED_FUNCTION_3_8();
  v101 = sub_2683CEDA8();
  v16 = OUTLINED_FUNCTION_0_3(v101);
  v103 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_18();
  v102 = v20;
  OUTLINED_FUNCTION_3_8();
  v21 = sub_2683CF948();
  v22 = OUTLINED_FUNCTION_0_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  v29 = v28 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  v30 = OUTLINED_FUNCTION_1(v98);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v97 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_27_20();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_38();
  v99 = v10;
  v39 = sub_2683B2A68(v10);
  sub_2682DFB6C(v39, v40, v6);
  OUTLINED_FUNCTION_53_8();
  if (v6)
  {
    sub_2682B2AF0(v6);
  }

  else
  {
    v41 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v41);
  }

  OUTLINED_FUNCTION_52_8();
  v42 = sub_2683CEDD8();
  OUTLINED_FUNCTION_35_21(v42);
  if (!v43)
  {
    OUTLINED_FUNCTION_51_9();
    OUTLINED_FUNCTION_1_7();
    v45 = v44;
    v47 = *(v46 + 88);
    v48 = OUTLINED_FUNCTION_18_37();
    v50 = v49(v48);
    if (v50 == *MEMORY[0x277D1C680])
    {
      v51 = OUTLINED_FUNCTION_5_53();
      v52(v51);
      v53 = OUTLINED_FUNCTION_6_41(v24);
      v54(v53);
      LOBYTE(v109) = v108(v29);
      v55 = OUTLINED_FUNCTION_40_16();
LABEL_10:
      v56(v55);
LABEL_14:
      sub_26839B7DC(v1);
      goto LABEL_15;
    }

    if (v50 == *MEMORY[0x277D1C670])
    {
      v57 = OUTLINED_FUNCTION_5_53();
      v58(v57);
      v59 = OUTLINED_FUNCTION_6_41(v107);
      v60(v59);
      if (v104)
      {

        v61 = sub_2683CEDB8();
        v104(&v109, v61);
        OUTLINED_FUNCTION_54_7();
        v62 = OUTLINED_FUNCTION_12_35();
        v63(v62);
        goto LABEL_14;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v71 = sub_2683CF7E8();
      v72 = OUTLINED_FUNCTION_14_33(v71, qword_28027C958);
      sub_26839B76C(v72, v3);
      v73 = sub_2683CF7C8();
      v74 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v74))
      {
        OUTLINED_FUNCTION_35_8();
        v109 = OUTLINED_FUNCTION_21_27();
        *v2 = 136315394;
        v75 = sub_2683B2A68(v99);
        sub_2681610A0(v75, v76, &v109);
        OUTLINED_FUNCTION_50_12();
        OUTLINED_FUNCTION_15_39();
        sub_26839B76C(v3, v97);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_42_15();
        sub_26839B7DC(v3);
        v77 = OUTLINED_FUNCTION_11_37();
        v80 = sub_2681610A0(v77, v78, v79);

        *(v2 + 14) = v80;
        OUTLINED_FUNCTION_22_25(&dword_2680EB000, v81, v74, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3_16();

        (*(v107 + 8))(v106, v105);
      }

      else
      {

        sub_26839B7DC(v3);
        v93 = OUTLINED_FUNCTION_12_35();
        v94(v93);
      }
    }

    else
    {
      if (v50 != *MEMORY[0x277D1C668])
      {
        sub_26839B7DC(v1);
        v68 = *(v45 + 8);
        v69 = OUTLINED_FUNCTION_18_37();
        v70(v69);
        goto LABEL_7;
      }

      v64 = OUTLINED_FUNCTION_5_53();
      v65(v64);
      v66 = OUTLINED_FUNCTION_17_27(v103);
      v67(v66);
      if (v100)
      {

        v100(&v109, v102);
        sub_268128194(v100);
        v55 = OUTLINED_FUNCTION_9_40();
        goto LABEL_10;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v82 = sub_2683CF7E8();
      v83 = OUTLINED_FUNCTION_14_33(v82, qword_28027C958);
      sub_26839B76C(v83, v2);
      v84 = sub_2683CF7C8();
      v85 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v85))
      {
        OUTLINED_FUNCTION_35_8();
        v109 = OUTLINED_FUNCTION_43_12();
        *v103 = 136315394;
        v86 = sub_2683B2A68(v99);
        v88 = sub_2681610A0(v86, v87, &v109);

        v89 = OUTLINED_FUNCTION_29_23();
        sub_26839B76C(v89, v97);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_44_15();
        v90 = sub_2681610A0(v97, v88, &v109);

        *(v103 + 14) = v90;
        OUTLINED_FUNCTION_36_17(&dword_2680EB000, v91, v92, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_25_0();

        (*(v103 + 8))(v102, v101);
      }

      else
      {

        sub_26839B7DC(v2);
        v95 = OUTLINED_FUNCTION_9_40();
        v96(v95);
      }
    }
  }

  sub_26839B7DC(v1);
LABEL_7:
  LOBYTE(v109) = 2;
LABEL_15:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_268399FE8()
{
  OUTLINED_FUNCTION_30_0();
  v111 = v4;
  v6 = v5;
  v102 = v7;
  v107 = v8;
  v108 = OUTLINED_FUNCTION_45_8();
  v9 = OUTLINED_FUNCTION_0_3(v108);
  v110 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_18();
  v109 = v13;
  OUTLINED_FUNCTION_3_8();
  v14 = sub_2683CEDA8();
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v103 = v16;
  v104 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_18();
  v106 = v19;
  OUTLINED_FUNCTION_3_8();
  v20 = sub_2683CF948();
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v28 = v27 - v26;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  v29 = OUTLINED_FUNCTION_1(v101);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_1();
  v105 = v32;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v100 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_56_3();
  v99 = v36;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_38();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_41_12();
      break;
    case 2:
      OUTLINED_FUNCTION_55_5();
      break;
    default:
      break;
  }

  v40 = OUTLINED_FUNCTION_11_37();
  v42 = sub_2682DFB6C(v40, v41, v6);

  if (v42)
  {
    sub_2682B2AF0(v42);
  }

  else
  {
    v43 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v43);
  }

  OUTLINED_FUNCTION_52_8();
  v44 = sub_2683CEDD8();
  if (__swift_getEnumTagSinglePayload(v0, 1, v44) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_51_9();
  OUTLINED_FUNCTION_1_7();
  v46 = v45;
  v48 = *(v47 + 88);
  v49 = OUTLINED_FUNCTION_41_6();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D1C680])
  {
    v52 = OUTLINED_FUNCTION_10_38();
    v53(v52);
    v54 = OUTLINED_FUNCTION_17_27(v23);
    v55(v54);
    *&v112 = v111(v28);
    *(&v112 + 1) = v56;
    v113 = v57;
    v114 = v58;
    (*(v23 + 8))(v28, v20);
LABEL_18:
    sub_26839B7DC(v2);
    goto LABEL_19;
  }

  if (v51 == *MEMORY[0x277D1C670])
  {
    v59 = OUTLINED_FUNCTION_10_38();
    v60(v59);
    v61 = OUTLINED_FUNCTION_6_41(v110);
    v62(v61);
    if (v107)
    {

      v63 = sub_2683CEDB8();
      v107(&v112, v63);
      sub_268128194(v107);

      v64 = OUTLINED_FUNCTION_30_22();
      v65(v64);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v73 = sub_2683CF7E8();
    v74 = OUTLINED_FUNCTION_14_33(v73, qword_28027C958);
    sub_26839B76C(v74, v105);
    v75 = sub_2683CF7C8();
    v76 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v76))
    {
      OUTLINED_FUNCTION_35_8();
      *&v112 = OUTLINED_FUNCTION_21_27();
      *v105 = 136315394;
      v77 = 0xE500000000000000;
      v78 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v77 = 0xE700000000000000;
          v78 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v77 = 0xE600000000000000;
          v78 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v77 = 0xE300000000000000;
          v78 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      sub_2681610A0(v78, v77, &v112);
      OUTLINED_FUNCTION_50_12();
      OUTLINED_FUNCTION_15_39();
      sub_26839B76C(v105, v100);
      sub_2683CFAD8();
      OUTLINED_FUNCTION_42_15();
      sub_26839B7DC(v105);
      v89 = OUTLINED_FUNCTION_11_37();
      sub_2681610A0(v89, v90, v91);
      OUTLINED_FUNCTION_53_8();
      *(v105 + 14) = v100;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v92, v20, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_59_6();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      (*(v110 + 8))(v109, v108);
    }

    else
    {

      sub_26839B7DC(v105);
      v85 = OUTLINED_FUNCTION_30_22();
      v86(v85);
    }
  }

  else
  {
    if (v51 != *MEMORY[0x277D1C668])
    {
      sub_26839B7DC(v2);
      v70 = *(v46 + 8);
      v71 = OUTLINED_FUNCTION_41_6();
      v72(v71);
      goto LABEL_9;
    }

    v66 = OUTLINED_FUNCTION_10_38();
    v67(v66);
    (*(v103 + 32))(v106, v1, v104);
    if (v102)
    {

      v102(&v112, v106);
      sub_268128194(v102);
      v68 = OUTLINED_FUNCTION_58_7();
      v69(v68, v104);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v79 = sub_2683CF7E8();
    v80 = OUTLINED_FUNCTION_14_33(v79, qword_28027C958);
    sub_26839B76C(v80, v99);
    v81 = sub_2683CF7C8();
    v82 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v82))
    {
      OUTLINED_FUNCTION_35_8();
      *&v112 = OUTLINED_FUNCTION_21_27();
      *v106 = 136315394;
      v83 = 0xE500000000000000;
      v84 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v83 = 0xE700000000000000;
          v84 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v83 = 0xE600000000000000;
          v84 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v83 = 0xE300000000000000;
          v84 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      v93 = sub_2681610A0(v84, v83, &v112);

      *(v106 + 4) = v93;
      *(v106 + 12) = 2080;
      sub_26839B76C(v99, v100);
      v94 = sub_2683CFAD8();
      v96 = v95;
      sub_26839B7DC(v99);
      v97 = sub_2681610A0(v94, v96, &v112);

      *(v106 + 14) = v97;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v98, OS_LOG_TYPE_DEFAULT, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_59_6();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      v88 = *(v103 + 8);
      v87 = v106;
    }

    else
    {

      sub_26839B7DC(v99);
      v87 = OUTLINED_FUNCTION_58_7();
    }

    v88(v87, v104);
  }

LABEL_8:
  sub_26839B7DC(v2);
LABEL_9:
  v112 = xmmword_2683D4200;
  v113 = 0;
  v114 = 0;
LABEL_19:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_26839A824()
{
  OUTLINED_FUNCTION_30_0();
  v111 = v4;
  v6 = v5;
  v103 = v7;
  v107 = v8;
  v10 = v9;
  v108 = sub_2683CEDC8();
  v11 = OUTLINED_FUNCTION_0_3(v108);
  v110 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_18();
  v109 = v15;
  OUTLINED_FUNCTION_3_8();
  v104 = sub_2683CEDA8();
  v16 = OUTLINED_FUNCTION_0_3(v104);
  v106 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_18();
  v105 = v20;
  OUTLINED_FUNCTION_3_8();
  v21 = sub_2683CF948();
  v22 = OUTLINED_FUNCTION_0_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  v29 = v28 - v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  v30 = OUTLINED_FUNCTION_1(v101);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v100 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_27_20();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_38();
  v102 = v10;
  v39 = sub_2683B2A68(v10);
  sub_2682DFB6C(v39, v40, v6);
  OUTLINED_FUNCTION_53_8();
  if (v6)
  {
    sub_2682B2AF0(v6);
  }

  else
  {
    v41 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v41);
  }

  OUTLINED_FUNCTION_52_8();
  v42 = sub_2683CEDD8();
  OUTLINED_FUNCTION_35_21(v42);
  if (!v43)
  {
    OUTLINED_FUNCTION_51_9();
    OUTLINED_FUNCTION_1_7();
    v45 = v44;
    v47 = *(v46 + 88);
    v48 = OUTLINED_FUNCTION_18_37();
    v50 = v49(v48);
    if (v50 == *MEMORY[0x277D1C680])
    {
      v51 = OUTLINED_FUNCTION_5_53();
      v52(v51);
      v53 = OUTLINED_FUNCTION_6_41(v24);
      v54(v53);
      *&v112 = v111(v29);
      *(&v112 + 1) = v55;
      v113 = v56;
      v114 = v57;
      v58 = OUTLINED_FUNCTION_40_16();
LABEL_10:
      v59(v58);
LABEL_14:
      sub_26839B7DC(v1);
      goto LABEL_15;
    }

    if (v50 == *MEMORY[0x277D1C670])
    {
      v60 = OUTLINED_FUNCTION_5_53();
      v61(v60);
      v62 = OUTLINED_FUNCTION_6_41(v110);
      v63(v62);
      if (v107)
      {

        v64 = sub_2683CEDB8();
        v107(&v112, v64);
        OUTLINED_FUNCTION_54_7();
        v65 = OUTLINED_FUNCTION_12_35();
        v66(v65);
        goto LABEL_14;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v74 = sub_2683CF7E8();
      v75 = OUTLINED_FUNCTION_14_33(v74, qword_28027C958);
      sub_26839B76C(v75, v3);
      v76 = sub_2683CF7C8();
      v77 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v77))
      {
        OUTLINED_FUNCTION_35_8();
        *&v112 = OUTLINED_FUNCTION_21_27();
        *v2 = 136315394;
        v78 = sub_2683B2A68(v102);
        sub_2681610A0(v78, v79, &v112);
        OUTLINED_FUNCTION_50_12();
        OUTLINED_FUNCTION_15_39();
        sub_26839B76C(v3, v100);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_42_15();
        sub_26839B7DC(v3);
        v80 = OUTLINED_FUNCTION_11_37();
        v83 = sub_2681610A0(v80, v81, v82);

        *(v2 + 14) = v83;
        OUTLINED_FUNCTION_22_25(&dword_2680EB000, v84, v77, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3_16();

        (*(v110 + 8))(v109, v108);
      }

      else
      {

        sub_26839B7DC(v3);
        v96 = OUTLINED_FUNCTION_12_35();
        v97(v96);
      }
    }

    else
    {
      if (v50 != *MEMORY[0x277D1C668])
      {
        sub_26839B7DC(v1);
        v71 = *(v45 + 8);
        v72 = OUTLINED_FUNCTION_18_37();
        v73(v72);
        goto LABEL_7;
      }

      v67 = OUTLINED_FUNCTION_5_53();
      v68(v67);
      v69 = OUTLINED_FUNCTION_17_27(v106);
      v70(v69);
      if (v103)
      {

        v103(&v112, v105);
        sub_268128194(v103);
        v58 = OUTLINED_FUNCTION_9_40();
        goto LABEL_10;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v85 = sub_2683CF7E8();
      v86 = OUTLINED_FUNCTION_14_33(v85, qword_28027C958);
      sub_26839B76C(v86, v2);
      v87 = sub_2683CF7C8();
      v88 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v88))
      {
        OUTLINED_FUNCTION_35_8();
        *&v112 = OUTLINED_FUNCTION_43_12();
        *v106 = 136315394;
        v89 = sub_2683B2A68(v102);
        v91 = sub_2681610A0(v89, v90, &v112);

        v92 = OUTLINED_FUNCTION_29_23();
        sub_26839B76C(v92, v100);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_44_15();
        v93 = sub_2681610A0(v100, v91, &v112);

        *(v106 + 14) = v93;
        OUTLINED_FUNCTION_36_17(&dword_2680EB000, v94, v95, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_25_0();

        (*(v106 + 8))(v105, v104);
      }

      else
      {

        sub_26839B7DC(v2);
        v98 = OUTLINED_FUNCTION_9_40();
        v99(v98);
      }
    }
  }

  sub_26839B7DC(v1);
LABEL_7:
  v112 = xmmword_2683D4200;
  v113 = 0;
  v114 = 0;
LABEL_15:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_26839AF18()
{
  OUTLINED_FUNCTION_30_0();
  v109 = v4;
  v6 = v5;
  v100 = v7;
  v105 = v8;
  v106 = OUTLINED_FUNCTION_45_8();
  v9 = OUTLINED_FUNCTION_0_3(v106);
  v108 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_18();
  v107 = v13;
  OUTLINED_FUNCTION_3_8();
  v14 = sub_2683CEDA8();
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v101 = v16;
  v102 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_18();
  v104 = v19;
  OUTLINED_FUNCTION_3_8();
  v20 = sub_2683CF948();
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v28 = v27 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  v29 = OUTLINED_FUNCTION_1(v99);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_1();
  v103 = v32;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v98 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_56_3();
  v97 = v36;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_38();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_41_12();
      break;
    case 2:
      OUTLINED_FUNCTION_55_5();
      break;
    default:
      break;
  }

  v40 = OUTLINED_FUNCTION_11_37();
  v42 = sub_2682DFB6C(v40, v41, v6);

  if (v42)
  {
    sub_2682B2AF0(v42);
  }

  else
  {
    v43 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v43);
  }

  OUTLINED_FUNCTION_52_8();
  v44 = sub_2683CEDD8();
  if (__swift_getEnumTagSinglePayload(v0, 1, v44) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_51_9();
  OUTLINED_FUNCTION_1_7();
  v46 = v45;
  v48 = *(v47 + 88);
  v49 = OUTLINED_FUNCTION_41_6();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D1C680])
  {
    v52 = OUTLINED_FUNCTION_10_38();
    v53(v52);
    v54 = OUTLINED_FUNCTION_17_27(v23);
    v55(v54);
    v110 = v109(v28);
    v111 = v56;
    (*(v23 + 8))(v28, v20);
LABEL_18:
    sub_26839B7DC(v2);
    goto LABEL_19;
  }

  if (v51 == *MEMORY[0x277D1C670])
  {
    v57 = OUTLINED_FUNCTION_10_38();
    v58(v57);
    v59 = OUTLINED_FUNCTION_6_41(v108);
    v60(v59);
    if (v105)
    {

      v61 = sub_2683CEDB8();
      v105(&v110, v61);
      sub_268128194(v105);

      v62 = OUTLINED_FUNCTION_30_22();
      v63(v62);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v71 = sub_2683CF7E8();
    v72 = OUTLINED_FUNCTION_14_33(v71, qword_28027C958);
    sub_26839B76C(v72, v103);
    v73 = sub_2683CF7C8();
    v74 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v74))
    {
      OUTLINED_FUNCTION_35_8();
      v110 = OUTLINED_FUNCTION_21_27();
      *v103 = 136315394;
      v75 = 0xE500000000000000;
      v76 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v75 = 0xE700000000000000;
          v76 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v75 = 0xE600000000000000;
          v76 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v75 = 0xE300000000000000;
          v76 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      sub_2681610A0(v76, v75, &v110);
      OUTLINED_FUNCTION_50_12();
      OUTLINED_FUNCTION_15_39();
      sub_26839B76C(v103, v98);
      sub_2683CFAD8();
      OUTLINED_FUNCTION_42_15();
      sub_26839B7DC(v103);
      v87 = OUTLINED_FUNCTION_11_37();
      sub_2681610A0(v87, v88, v89);
      OUTLINED_FUNCTION_53_8();
      *(v103 + 14) = v98;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v90, v20, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      (*(v108 + 8))(v107, v106);
    }

    else
    {

      sub_26839B7DC(v103);
      v83 = OUTLINED_FUNCTION_30_22();
      v84(v83);
    }
  }

  else
  {
    if (v51 != *MEMORY[0x277D1C668])
    {
      sub_26839B7DC(v2);
      v68 = *(v46 + 8);
      v69 = OUTLINED_FUNCTION_41_6();
      v70(v69);
      goto LABEL_9;
    }

    v64 = OUTLINED_FUNCTION_10_38();
    v65(v64);
    (*(v101 + 32))(v104, v1, v102);
    if (v100)
    {

      v100(&v110, v104);
      sub_268128194(v100);
      v66 = OUTLINED_FUNCTION_58_7();
      v67(v66, v102);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v77 = sub_2683CF7E8();
    v78 = OUTLINED_FUNCTION_14_33(v77, qword_28027C958);
    sub_26839B76C(v78, v97);
    v79 = sub_2683CF7C8();
    v80 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v80))
    {
      OUTLINED_FUNCTION_35_8();
      v110 = OUTLINED_FUNCTION_21_27();
      *v104 = 136315394;
      v81 = 0xE500000000000000;
      v82 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v81 = 0xE700000000000000;
          v82 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v81 = 0xE600000000000000;
          v82 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v81 = 0xE300000000000000;
          v82 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      v91 = sub_2681610A0(v82, v81, &v110);

      *(v104 + 4) = v91;
      *(v104 + 12) = 2080;
      sub_26839B76C(v97, v98);
      v92 = sub_2683CFAD8();
      v94 = v93;
      sub_26839B7DC(v97);
      v95 = sub_2681610A0(v92, v94, &v110);

      *(v104 + 14) = v95;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v96, OS_LOG_TYPE_DEFAULT, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      v86 = *(v101 + 8);
      v85 = v104;
    }

    else
    {

      sub_26839B7DC(v97);
      v85 = OUTLINED_FUNCTION_58_7();
    }

    v86(v85, v102);
  }

LABEL_8:
  sub_26839B7DC(v2);
LABEL_9:
  v110 = 0;
  v111 = 0;
LABEL_19:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26839B76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26839B7DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26839B844()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_19_38(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_22_25(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_29_23()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  return v0;
}

void OUTLINED_FUNCTION_36_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_15()
{

  return sub_26839B7DC(v0);
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return sub_2683CEDC8();
}

uint64_t OUTLINED_FUNCTION_46_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_50_12()
{
}

uint64_t OUTLINED_FUNCTION_51_9()
{

  return sub_26839B76C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_52_8()
{

  return sub_26839B76C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_8()
{
}

uint64_t OUTLINED_FUNCTION_54_7()
{
  sub_268128194(v0);
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  v2 = *(v0 - 136);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v2 = *(v0 - 112);

  return swift_arrayDestroy();
}

uint64_t sub_26839BC14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Snippet();
  if (__swift_getEnumTagSinglePayload(a2, 1, v3) != 1)
  {
    return 2;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v4 = sub_2683CF7E8();
  __swift_project_value_buffer(v4, qword_28027C958);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    MEMORY[0x26D617A40](v7, -1, -1);
  }

  return 1;
}

uint64_t sub_26839BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, unsigned __int8 (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v58 = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v59 = &v51 - v19;
  v60 = sub_2683CC1D8();
  v20 = OUTLINED_FUNCTION_0_3(v60);
  v56 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_1();
  v55 = v24;
  MEMORY[0x28223BE20](v25);
  v54 = &v51 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v51 - v29;
  v31 = sub_2683CED08();
  v32 = OUTLINED_FUNCTION_0_3(v31);
  v53 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v52 = v36;
  MEMORY[0x28223BE20](v37);
  v51 = &v51 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v51 - v41;
  sub_2683CC928();
  if (!a4)
  {
  }

  v57 = a13;

  sub_2683CC918();
  sub_26812C2A8(v58, v42, &qword_28024D400, &qword_2683D2460);
  sub_2683CC938();
  if (a8 == 2)
  {
    sub_2683CC958();
  }

  v43 = sub_2683CC968();
  if (a9 == 2 && a10(v43) == 2)
  {
    sub_2683CC988();
  }

  sub_2683CC998();

  sub_2683CC948();
  sub_26812C2A8(v57, v30, &qword_28024D588, &unk_2683D8DB0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_26812C310(v30, &qword_28024D588, &unk_2683D8DB0);
  }

  else
  {
    v44 = v53;
    v45 = v51;
    (*(v53 + 32))(v51, v30, v31);
    (*(v44 + 16))(v52, v45, v31);
    sub_2683CC8F8();
    (*(v44 + 8))(v45, v31);
  }

  v46 = v60;
  if (a14 != 2)
  {
    sub_2683CC978();
  }

  v47 = v59;
  sub_26812C2A8(a15, v59, &unk_28024E760, &unk_2683D2BF0);
  if (__swift_getEnumTagSinglePayload(v47, 1, v46) == 1)
  {
    return sub_26812C310(v47, &unk_28024E760, &unk_2683D2BF0);
  }

  v49 = v56;
  v50 = v54;
  (*(v56 + 32))(v54, v47, v46);
  (*(v49 + 16))(v55, v50, v46);
  sub_2683CC908();
  return (*(v49 + 8))(v50, v46);
}

uint64_t sub_26839C208()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_2683CC598();
  v1[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26839C2AC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 16) + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 48) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_16_34(v2);

  return sub_268195ED4();
}

uint64_t sub_26839C338()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_26832FE78;
  }

  else
  {
    v9 = sub_26839C434;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26839C434()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2681A1544();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_18_38();

  return v7(v4, v6);
}

uint64_t sub_26839C4D4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_2683CC598();
  v1[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26839C578()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 16) + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 48) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_16_34(v2);

  return sub_26819642C();
}

uint64_t sub_26839C604()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_26839E544;
  }

  else
  {
    v9 = sub_26839E540;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26839C700()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_2683CC598();
  v1[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26839C7A4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 16) + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 48) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_16_34(v2);

  return sub_268196380();
}

uint64_t sub_26839C830()
{
  OUTLINED_FUNCTION_14();
  v1[199] = v0;
  v1[193] = v2;
  v1[187] = v3;
  v4 = type metadata accessor for SnippetFormatter();
  OUTLINED_FUNCTION_3_1(v4);
  v1[205] = v5;
  v1[211] = *(v6 + 64);
  v1[217] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26839C8F4()
{
  v1 = v0[223];
  v2 = v0[217];
  v3 = v0[211];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[193];
  v7 = v0[187];
  v8 = [v7 temporalEventTrigger];
  v9 = sub_26839D0D0(v8);
  v20 = v10;
  v21 = v9;
  v11 = v10;

  v0[224] = v11;
  sub_268203294(v5, v1);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v0[225] = v14;
  sub_26839DA30(v1, v14 + v12);
  *(v14 + v13) = v7;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  swift_asyncLet_begin();
  sub_268203294(v5, v2);
  v16 = swift_allocObject();
  v0[226] = v16;
  sub_26839DA30(v2, v16 + v12);
  *(v16 + v13) = v6;
  v17 = v6;
  swift_asyncLet_begin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  v0[227] = inited;
  *(inited + 16) = xmmword_2683D1ED0;
  *(inited + 32) = v21;
  *(inited + 40) = v20;

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_26839CAFC()
{
  *(v1 + 1824) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CE60);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CB28);
  }
}

uint64_t sub_26839CB28()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[227];
  v2 = v0[177];
  v3 = v0[178];
  v0[229] = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200930](v4);
}

uint64_t sub_26839CB98()
{
  *(v1 + 1840) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CF94);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CBC4);
  }
}

uint64_t sub_26839CBC4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[227];
  v2 = v0[180];
  *(v1 + 64) = v0[179];
  *(v1 + 72) = v2;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v7 - 1;
  v10 = 16 * v7;
  while (v9 != 2)
  {
    if (++v9 > 2)
    {
      __break(1u);
      return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v4, v5, v6);
    }

    v11 = v10 + 16;
    v12 = v0[227];
    v13 = *(v12 + v10 + 40);
    v10 += 16;
    if (v13)
    {
      v14 = *(v12 + v11 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E4728(0, *(v8 + 16) + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2682E4728(v15 > 1, v16 + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v7 = v9 + 1;
      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      goto LABEL_2;
    }
  }

  v18 = v0[227];
  swift_setDeallocating();
  sub_2681F55E4();
  v0[181] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v19 = sub_2683CFA38();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    v19 = 0;
    v21 = 0;
  }

  v0[232] = v21;
  v0[231] = v19;
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_8_42();
  v6 = v0 + 212;

  return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v4, v5, v6);
}

uint64_t sub_26839CDD0()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[226];
  v2 = v0[225];
  v3 = v0[223];
  v4 = v0[217];

  OUTLINED_FUNCTION_18_38();
  v6 = v0[232];
  v7 = v0[231];

  return v5(v7, v6);
}

uint64_t sub_26839CE60()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1792);

  *(v1 + 16) = 0;
  swift_setDeallocating();
  sub_2681F55E4();
  v3 = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1456);
}

uint64_t sub_26839CF1C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1824);
  OUTLINED_FUNCTION_22_26();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26839CF94()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1816);

  v3 = *(v2 + 40);

  *(v2 + 16) = 0;
  swift_setDeallocating();
  sub_2681F55E4();
  v4 = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200920](v4, v5, v6, v0 + 1600);
}

uint64_t sub_26839D058()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1840);
  OUTLINED_FUNCTION_22_26();

  OUTLINED_FUNCTION_40();

  return v2();
}

void *sub_26839D0D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = sub_2683CB528();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    v14 = [v13 dateComponentsRange];
    sub_26836116C();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {

      sub_2681433DC(v7, &qword_28024DB08, qword_2683D5760);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v15 = type metadata accessor for SnippetFormatter();
      v16 = *(v2 + v15[8]);
      v17 = v2 + v15[7];
      v18 = sub_2683CB5D8();
      [v16 setLocale_];

      v19 = v15[9];
      if (sub_2683CB688() & 1) != 0 || (sub_2683CB6F8() & 1) != 0 || (v20 = sub_2683CB708(), (v20))
      {
        v28 = [v16 setDateStyle_];
        sub_2683623F0(v28, v29, v30, v31, v32, v33, v34, v35, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
        [v16 setTimeStyle_];
        [v16 setDoesRelativeDateFormatting_];
      }

      else
      {
        sub_2683623F0(v20, v21, v22, v23, v24, v25, v26, v27, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
        v41 = (v40 & 1) == 0;
        if (v40)
        {
          v42 = 0x61206D6D3A6820;
        }

        else
        {
          v42 = 0;
        }

        if (v41)
        {
          v43 = 0xE000000000000000;
        }

        else
        {
          v43 = 0xE700000000000000;
        }

        v45 = 0x64642F4D4DLL;
        v46 = 0xE500000000000000;
        MEMORY[0x26D616690](v42, v43);

        v44 = sub_2683CFA68();

        [v16 setLocalizedDateFormatFromTemplate_];
      }

      v37 = sub_2683CB4A8();
      v38 = [v16 stringFromDate_];

      a1 = sub_2683CFA78();
      (*(v9 + 8))(v12, v8);
    }
  }

  return a1;
}

uint64_t type metadata accessor for SnippetFormatter()
{
  result = qword_280254228;
  if (!qword_280254228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26839D48C()
{
  type metadata accessor for NotebookBaseCATs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NotebookLabelsV2CATs();
    if (v1 <= 0x3F)
    {
      sub_26839D570();
      if (v2 <= 0x3F)
      {
        sub_2683CB668();
        if (v3 <= 0x3F)
        {
          sub_26839D5C8();
          if (v4 <= 0x3F)
          {
            sub_2683CB7A8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26839D570()
{
  if (!qword_280254238)
  {
    sub_2683CF098();
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_280254238);
    }
  }
}

unint64_t sub_26839D5C8()
{
  result = qword_280254240;
  if (!qword_280254240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280254240);
  }

  return result;
}

uint64_t sub_26839D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2683CC598();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26839D6D0, 0, 0);
}

uint64_t sub_26839D6D0()
{
  OUTLINED_FUNCTION_7();
  v1 = [*(v0 + 32) spatialEventTrigger];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    v3 = sub_268163274(v1);
    *(v0 + 72) = v3;
    v4 = *v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 80) = v5;
    *v5 = v6;
    v5[1] = sub_26839D7F8;
    v7 = *(v0 + 56);

    return sub_26815F788(v7, v3);
  }

  else
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 16);
    *v10 = 0;
    v10[1] = 0;

    OUTLINED_FUNCTION_40();

    return v11();
  }
}

uint64_t sub_26839D7F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    v9 = sub_26839D9B4;
  }

  else
  {
    v9 = sub_26839D8F4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26839D8F4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = sub_2681A1544();
  v8 = v7;

  (*(v4 + 8))(v3, v5);
  v9 = v0[7];
  v10 = v0[2];
  *v10 = v6;
  v10[1] = v8;

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_26839D9B4()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  OUTLINED_FUNCTION_40();
  v5 = v0[11];

  return v4();
}

uint64_t sub_26839DA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetFormatter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26839DA94()
{
  OUTLINED_FUNCTION_7();
  v0 = type metadata accessor for SnippetFormatter();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  OUTLINED_FUNCTION_21_28(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_39(v5);

  return sub_26839D60C(v7, v8, v9);
}

uint64_t sub_26839DB74(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26839DC14;

  return sub_26839DFB0();
}

uint64_t sub_26839DC14()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_42();
  v7 = v6;
  v8 = *(v6 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;

    return MEMORY[0x2822009F8](sub_26839DD60, 0, 0);
  }
}

uint64_t sub_26839DD60()
{
  *v0[1].i64[0] = vextq_s8(v0[2], v0[2], 8uLL);
  OUTLINED_FUNCTION_40();
  return v1();
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for SnippetFormatter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v5 + 8);

  v8 = v1[9];
  v9 = sub_2683CB668();
  OUTLINED_FUNCTION_0_9(v9);
  (*(v10 + 8))(v5 + v8);

  v11 = v1[11];
  v12 = sub_2683CB7A8();
  OUTLINED_FUNCTION_0_9(v12);
  (*(v13 + 8))(v5 + v11);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_26839DED0()
{
  OUTLINED_FUNCTION_7();
  v0 = type metadata accessor for SnippetFormatter();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  OUTLINED_FUNCTION_21_28(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_39(v5);

  return sub_26839DB74(v7);
}

uint64_t sub_26839DFB0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2683CC598();
  v1[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_15_1();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64);
  v1[7] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CB668();
  v1[8] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v12 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26839E0D0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  if (v1 && (v2 = [v1 triggerContact], (v0[11] = v2) != 0))
  {
    v3 = v2;
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = v0[3];
    sub_2683CEF98();
    v8 = type metadata accessor for SnippetFormatter();
    (*(v5 + 16))(v4, v7 + *(v8 + 28), v6);
    v9 = v3;
    v10 = sub_2683CEF78();
    v0[12] = v10;
    v11 = v0[7];
    if (v10)
    {
      v12 = *(v0[3] + 16);

      sub_2683CEF68();

      sub_2683CEF88();
    }

    else
    {
      v18 = sub_2683CF168();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
    }

    v19 = *v0[3];
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[13] = v20;
    *v20 = v21;
    v20[1] = sub_26839E2B8;
    v22 = v0[6];
    v23 = v0[7];

    return sub_26815F10C();
  }

  else
  {
    v13 = v0[10];
    v14 = v0[6];
    v15 = v0[7];

    OUTLINED_FUNCTION_18_38();

    return v16(0, 0);
  }
}

uint64_t sub_26839E2B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  if (v0)
  {
    v9 = sub_26839E49C;
  }

  else
  {
    v9 = sub_26839E3B4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26839E3B4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_2681A1544();
  v9 = v8;

  (*(v6 + 8))(v3, v5);
  sub_2681433DC(v4, &unk_28024E7C0, &unk_2683D6CA0);
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[7];

  OUTLINED_FUNCTION_18_38();

  return v13(v7, v9);
}

uint64_t sub_26839E49C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_2681433DC(v3, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_40();
  v6 = *(v0 + 112);

  return v5();
}

uint64_t OUTLINED_FUNCTION_22_26()
{
  v2 = v0[226];
  v3 = v0[225];
  v4 = v0[223];
  v5 = v0[217];
}

void sub_26839E5C0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v10 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      v22 = a1[1];

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v23 = sub_2683CF7E8();
      __swift_project_value_buffer(v23, qword_28027C958);
      v18 = sub_2683CF7C8();
      v19 = sub_2683CFE78();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_24;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "[SetTaskAttributeDirectInvocationIntentWrapper] Need either task title or task ID! Returning nil";
      goto LABEL_23;
    }
  }

  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v16 = a1[1];

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C958);
    v18 = sub_2683CF7C8();
    v19 = sub_2683CFE78();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[SetTaskAttributeDirectInvocationIntentWrapper] No appId! Returning nil";
LABEL_23:
    _os_log_impl(&dword_2680EB000, v18, v19, v21, v20, 2u);
    OUTLINED_FUNCTION_38();
LABEL_24:

    v4 = 0;
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
    v3 = 1;
    goto LABEL_25;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);
  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2680EB000, v13, v14, "[SetTaskAttributeDirectInvocationIntentWrapper] Created", v15, 2u);
    OUTLINED_FUNCTION_38();
  }

  v25[0] = v4;
  v25[1] = v3;
  v25[2] = v6;
  v25[3] = v5;
  v25[4] = v8;
  v25[5] = v7;
  v25[6] = 0;
  v25[7] = 0;
  v26[0] = v4;
  v26[1] = v3;
  v26[2] = v6;
  v26[3] = v5;
  v26[4] = v8;
  v26[5] = v7;
  v26[6] = 0;
  v26[7] = 0;
  sub_26839E898(v25, v24);
  sub_26839E8D0(v26);
LABEL_25:
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v8;
  a2[5] = v7;
  a2[6] = 0;
  a2[7] = 0;
}

uint64_t sub_26839E900()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26839E9A8, 0, 0);
}

uint64_t sub_26839E9A8()
{
  v40 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v4 = *v3;
  v5 = v3[1];

  sub_2681BABB8(v4, v5);
  v6 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  v8 = v3[2];
  v7 = v3[3];

  v9 = OUTLINED_FUNCTION_1_67();
  sub_26835E66C(v9, v10, v11, v12, v13, v1, v2, v8, v38, 0, 0, 0, 0, 0);
  v14 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v15 = OUTLINED_FUNCTION_1_67();
  v20 = sub_2683882E8(v15, v16, v17, v18, v19, 0);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v21 = sub_2683CF7E8();
  __swift_project_value_buffer(v21, qword_28027C958);
  v22 = v20;
  v23 = sub_2683CF7C8();
  v24 = sub_2683CFE58();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    v27 = v22;
    v28 = [v27 description];
    v29 = sub_2683CFA78();
    v31 = v30;

    v32 = sub_2681610A0(v29, v31, &v39);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_2680EB000, v23, v24, "[SetTaskAttributeDirectInvocationIntentWrapper] Intent: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v34 = v0[3];
  v33 = v0[4];
  v35 = sub_26821AD1C();

  v36 = v0[1];

  return v36(v35);
}

uint64_t sub_26839EC64()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_26839ED08;

  return sub_26839E900();
}

uint64_t sub_26839ED08(uint64_t a1)
{
  v4 = *(*v2 + 80);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_26839EE08()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  sub_26839EE8C(v1, v2);
  return v1;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook5NLAppVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26839EE8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_26839EEEC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v6 = a2 + 32;
    do
    {
      sub_26813CA00(v6, v19);
      v7 = v20;
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v19);
      sub_2683D01F8();
      v9 = *(v22 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v6 += 40;
      --v3;
    }

    while (v3);
    v4 = v22;
  }

  v10 = sub_268229348(v4);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_15:
    sub_26839F748(v11, a1, &qword_280254268, 0x277D4C1A0, &selRef_setCommands_);
    v19[0] = v4;

    sub_2682C01E0(v17);
    v18 = a1;
    return a1;
  }

  v19[0] = MEMORY[0x277D84F90];
  result = sub_2683D0228();
  if (v10 < 0)
  {
    goto LABEL_18;
  }

  v13 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D616C90](v13, v4);
      goto LABEL_13;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v14 = *(v4 + 8 * v13 + 32);
LABEL_13:
    v15 = v14;
    ++v13;
    sub_2683CC218();

    sub_2683D01F8();
    v16 = *(v19[0] + 16);
    sub_2683D0238();
    sub_2683D0248();
    result = sub_2683D0208();
    if (v10 == v13)
    {
      v11 = v19[0];
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id sub_26839F0F8(uint64_t a1)
{
  v2 = sub_2683CB598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v7 = sub_2683CF7E8();
  __swift_project_value_buffer(v7, qword_28027C958);

  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v29 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x26D6167A0](a1, &type metadata for CasinoCards.SectionData);
    v14 = sub_2681610A0(v12, v13, &v29);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2680EB000, v8, v9, "Making casino card with sections: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D617A40](v11, -1, -1);
    MEMORY[0x26D617A40](v10, -1, -1);
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    *&v29 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v18 = (a1 + 32);
    do
    {
      v19 = *v18;
      v18 += 2;
      v20 = v19;
      sub_2683D01F8();
      v21 = *(v29 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      --v16;
    }

    while (v16);
    v17 = v29;
  }

  sub_26839F748(v17, v15, &qword_280254260, 0x277D4C238, &selRef_setCardSections_);
  sub_2683CB588();
  v22 = sub_2683CB548();
  v24 = v23;
  (*(v3 + 8))(v6, v2);
  sub_26839F7CC(v22, v24, v15);
  v28[1] = &type metadata for CasinoCards;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254248, &qword_2683F7160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254250, &qword_2683F7168);
  if (swift_dynamicCast())
  {
    v25 = *(&v30 + 1);
    v26 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    sub_26839F45C(v15, v25, v26);
    __swift_destroy_boxed_opaque_existential_0(&v29);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_26839F830(&v29);
  }

  return v15;
}

void sub_26839F45C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v7 = v6(a2, a3);
  v8 = [v7 backingStore];

  v9 = [v8 data];
  if (v9)
  {
    v10 = sub_2683CB468();
    v12 = v11;

    v9 = sub_2683CB448();
    sub_268143054(v10, v12);
  }

  [a1 setIntentMessageData_];

  v13 = v6(a2, a3);
  v14 = [v13 typeName];

  if (!v14)
  {
    sub_2683CFA78();
    v14 = sub_2683CFA68();
  }

  [a1 setIntentMessageName_];

  v15 = *(a3 + 40);
  v16 = v15(a2, a3);
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = [v17 data];

    if (v18)
    {
      v19 = sub_2683CB468();
      v21 = v20;

      v22 = sub_2683CB448();
      sub_268143054(v19, v21);
    }

    else
    {
      v22 = 0;
    }

    [a1 setIntentResponseMessageData_];

    v23 = v15(a2, a3);
    v24 = [v23 _payloadResponseTypeName];

    [a1 setIntentResponseMessageName_];
  }

  else
  {
    __break(1u);
  }
}

id sub_26839F6D0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  if (a2)
  {
    a2 = sub_2683CFA68();
  }

  [v3 setApplicationBundleIdentifier_];

  return v3;
}

void sub_26839F748(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_268129504(0, a3, a4);
  v7 = sub_2683CFC98();

  [a2 *a5];
}

void sub_26839F7CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setCardId_];
}

uint64_t sub_26839F830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254258, &qword_2683F7170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ViewCreationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_26839F968()
{
  result = qword_280254270;
  if (!qword_280254270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254270);
  }

  return result;
}

void Entity<A>.init(_:)()
{
  OUTLINED_FUNCTION_30_0();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v12 = OUTLINED_FUNCTION_23(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_78_3(v16, v17, v18, v19, v20, v21, v22, v23, v439);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252BB0, &qword_2683EBA68);
  v25 = OUTLINED_FUNCTION_23(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_156_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_157_2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v30 = OUTLINED_FUNCTION_23(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_29_18();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v35 = OUTLINED_FUNCTION_23(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_38();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v40 = OUTLINED_FUNCTION_23(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_106_4();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v45 = OUTLINED_FUNCTION_23(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_1();
  v466 = v48;
  OUTLINED_FUNCTION_8_0();
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_67_6(v50, v51, v52, v53, v54, v55, v56, v57, v440);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252978, &qword_2683E8A08);
  v59 = OUTLINED_FUNCTION_23(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_1();
  v463 = v62;
  OUTLINED_FUNCTION_8_0();
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_37_13(v64, v65, v66, v67, v68, v69, v70, v71, v441);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F0, &qword_2683E91D8);
  v73 = OUTLINED_FUNCTION_23(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_2_1();
  v460 = v76;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_105_2();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v79 = OUTLINED_FUNCTION_23(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_2_1();
  v457 = v82;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_98_5();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v85 = OUTLINED_FUNCTION_23(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2_1();
  v453 = v88;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_128_2();
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_0_3(v471);
  v468 = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_5_0();
  v469 = v94;
  v95 = [v8 temporalEventTrigger];
  v474 = v0;
  v470 = v3;
  v467 = v6;
  v472 = v4;
  v450 = v8;
  if (v95)
  {
    v96 = v95;
    Entity<A>.init(_:)(v96, v97, v98, v99, v100, v101, v102, v103, v442, v443, v444, v96, v2, v5, v8, v453, v457, v460, v463, v466);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
    v104 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v108 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
    v112 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
    v116 = OUTLINED_FUNCTION_35_22();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    v120 = [v8 title];
    v121 = [v120 spokenPhrase];

    sub_2683CFA78();
    (*(v468 + 16))(v476, v469, v471);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v471);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v125 = v1;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v130 = OUTLINED_FUNCTION_47_8();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    v134 = OUTLINED_FUNCTION_43_13();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v137);
    v138 = v6;
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
    v140 = OUTLINED_FUNCTION_40_17();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v139);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v143 = OUTLINED_FUNCTION_34_20();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
    if (qword_28024CAD8 != -1)
    {
      OUTLINED_FUNCTION_242_0();
    }

    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
    OUTLINED_FUNCTION_72_3(v147, qword_280252380);
    v148 = OUTLINED_FUNCTION_256_0();
    type metadata accessor for Common.Reminder(v148);
    OUTLINED_FUNCTION_164_1();
    swift_getKeyPath();
    sub_26831A8D8(v2, v454, &qword_280252718, &qword_2683E71B0);
    OUTLINED_FUNCTION_8_43();
    sub_2683ABDA4(v149, v150);
    OUTLINED_FUNCTION_5_54();
    sub_2683ABDA4(v151, v152);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v138, v458, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v153, v154);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_34();
    sub_2683ABDA4(v155, v156);
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    sub_26831A8D8(v472, v461, &qword_2802529F0, &qword_2683E91D8);
    OUTLINED_FUNCTION_59_7();
    sub_2683ABDA4(v157, v158);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v475, v464, &qword_280252978, &qword_2683E8A08);
    OUTLINED_FUNCTION_13_40();
    sub_2683ABDA4(v159, v160);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_185_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    OUTLINED_FUNCTION_185_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_40();
    sub_2683ABDA4(v161, v162);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v163, v164, v165, v166);
    OUTLINED_FUNCTION_27_21();
    sub_2683CE2B8();
    swift_getKeyPath();
    v167 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v167, v168, v169, v170);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v171, v172);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_69_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_123_3();
    sub_26831A8D8(v173, v174, v175, v176);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v177, v178);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_69_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_183_1(v3, v179, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v180, v181);
    OUTLINED_FUNCTION_36_14();
    OUTLINED_FUNCTION_69_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_182_1(v448, v182, &qword_280252BB0, &qword_2683EBA68);
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_149_1();
    sub_26831A8D8(v183, v184, v185, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v186, v187);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();

    OUTLINED_FUNCTION_102_2();
    sub_26812C310(v188, v189, v190);
    sub_26812C310(v448, &qword_280252BB0, &qword_2683EBA68);
    sub_26812C310(v3, &qword_280252690, &qword_2683E6E68);
    v191 = v125;
    goto LABEL_14;
  }

  v192 = [v8 spatialEventTrigger];
  if (v192)
  {
    v193 = v192;
    Entity<A>.init(_:)(v193, v194, v195, v196, v197, v198, v199, v200, v442, v1, v193, v10, v2, v5, v8, v453, v457, v460, v463, v466);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
    v201 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v201, v202, v203, v204);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v205 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
    v209 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
    v213 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v216);
    v217 = [v8 title];
    v218 = [v217 spokenPhrase];

    sub_2683CFA78();
    v219 = OUTLINED_FUNCTION_137_2();
    v220(v219);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v221, v222, v223, v218);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v224 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v224, v225, v226, v227);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v228 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v232, v233, v234, v235);
    v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
    v237 = OUTLINED_FUNCTION_40_17();
    __swift_storeEnumTagSinglePayload(v237, v238, v239, v236);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v240 = OUTLINED_FUNCTION_34_20();
    __swift_storeEnumTagSinglePayload(v240, v241, v242, v243);
    if (qword_28024CAD8 != -1)
    {
      OUTLINED_FUNCTION_242_0();
    }

    v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
    OUTLINED_FUNCTION_72_3(v244, qword_280252380);
    v245 = OUTLINED_FUNCTION_256_0();
    type metadata accessor for Common.Reminder(v245);
    OUTLINED_FUNCTION_172_2();
    OUTLINED_FUNCTION_150_2(v246);
    sub_2683CE298();
    swift_getKeyPath();
    sub_26831A8D8(v2, v455, &qword_280252718, &qword_2683E71B0);
    OUTLINED_FUNCTION_8_43();
    sub_2683ABDA4(v247, v248);
    OUTLINED_FUNCTION_5_54();
    sub_2683ABDA4(v249, v250);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    v251 = v467;
LABEL_13:
    sub_26831A8D8(v251, v459, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v312, v313);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_34();
    sub_2683ABDA4(v314, v315);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    sub_26831A8D8(v472, v462, &qword_2802529F0, &qword_2683E91D8);
    OUTLINED_FUNCTION_59_7();
    sub_2683ABDA4(v316, v317);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v475, v465, &qword_280252978, &qword_2683E8A08);
    OUTLINED_FUNCTION_13_40();
    sub_2683ABDA4(v318, v319);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_185_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    OUTLINED_FUNCTION_185_1();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_40();
    sub_2683ABDA4(v320, v321);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v322, v323, v324, v325);
    OUTLINED_FUNCTION_27_21();
    sub_2683CE2B8();
    swift_getKeyPath();
    v326 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v326, v327, v328, v329);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v330, v331);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2B8();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_123_3();
    sub_26831A8D8(v333, v334, v335, v336);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v337, v338);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_169_1();
    OUTLINED_FUNCTION_163_2();
    sub_26831A8D8(v339, v340, v341, v342);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v343, v344);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_182_1(v449, v345, &qword_280252BB0, &qword_2683EBA68);
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_149_1();
    sub_26831A8D8(v346, v347, v348, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v349, v350);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();

    OUTLINED_FUNCTION_102_2();
    sub_26812C310(v351, v352, v353);
    sub_26812C310(v449, &qword_280252BB0, &qword_2683EBA68);
    sub_26812C310(KeyPath, &qword_280252690, &qword_2683E6E68);
    v191 = OUTLINED_FUNCTION_134_1();
LABEL_14:
    sub_26812C310(v191, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v474, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v476, &qword_280252A68, &qword_2683E9B98);
    sub_26812C310(v475, &qword_280252978, &qword_2683E8A08);
    sub_26812C310(v472, &qword_2802529F0, &qword_2683E91D8);
    sub_26812C310(v467, &qword_280252838, &qword_2683E7D00);
    sub_26812C310(v447, &qword_280252718, &qword_2683E71B0);
    (*(v468 + 8))(v469, v471);
    goto LABEL_15;
  }

  v252 = [v8 contactEventTrigger];
  if (v252)
  {
    v253 = v252;
    Entity<A>.init(_:)(v253, v254, v255, v256, v257, v258, v259, v260, v442, v1, v253, v10, v2, v5, v8, v453, v457, v460, v463, v466);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
    v261 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v261, v262, v263, v264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v265 = v6;
    v266 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v266, v267, v268, v269);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
    v270 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v270, v271, v272, v273);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
    v274 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v274, v275, v276, v277);
    v278 = [v8 title];
    v279 = [v278 spokenPhrase];

    sub_2683CFA78();
    v280 = OUTLINED_FUNCTION_137_2();
    v281(v280);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v282, v283, v284, v279);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v285 = OUTLINED_FUNCTION_48_12();
    __swift_storeEnumTagSinglePayload(v285, v286, v287, v288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v289 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v289, v290, v291, v292);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v293, v294, v295, v296);
    v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
    v298 = OUTLINED_FUNCTION_40_17();
    __swift_storeEnumTagSinglePayload(v298, v299, v300, v297);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v301 = OUTLINED_FUNCTION_34_20();
    __swift_storeEnumTagSinglePayload(v301, v302, v303, v304);
    if (qword_28024CAD8 != -1)
    {
      OUTLINED_FUNCTION_242_0();
    }

    v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
    OUTLINED_FUNCTION_72_3(v305, qword_280252380);
    v306 = OUTLINED_FUNCTION_256_0();
    type metadata accessor for Common.Reminder(v306);
    OUTLINED_FUNCTION_172_2();
    OUTLINED_FUNCTION_150_2(v307);
    sub_2683CE298();
    swift_getKeyPath();
    sub_26831A8D8(v2, v456, &qword_280252718, &qword_2683E71B0);
    OUTLINED_FUNCTION_8_43();
    sub_2683ABDA4(v308, v309);
    OUTLINED_FUNCTION_5_54();
    sub_2683ABDA4(v310, v311);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    v251 = v265;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v354 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v354, v355, v356, v357);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v358 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v358, v359, v360, v361);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
  v362 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v362, v363, v364, v365);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
  v366 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v366, v367, v368, v369);
  v370 = [v8 title];
  v371 = [v370 spokenPhrase];

  sub_2683CFA78();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v372, v373, v374, v471);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v375 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v375, v376, v377, v378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v379 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v379, v380, v381, v382);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v383 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v383, v384, v385, v386);
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
  v388 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v388, v389, v390, v387);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v391 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v391, v392, v393, v394);
  if (qword_28024CAD8 != -1)
  {
    OUTLINED_FUNCTION_242_0();
  }

  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
  OUTLINED_FUNCTION_72_3(v395, qword_280252380);
  v396 = OUTLINED_FUNCTION_155_2();
  type metadata accessor for Common.Reminder(v396);
  OUTLINED_FUNCTION_172_2();
  v398 = *(v397 - 256);
  sub_2683CE298();
  swift_getKeyPath();
  sub_26831A8D8(v2, v453, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_8_43();
  sub_2683ABDA4(v399, v400);
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v401, v402);
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v6, v457, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v403, v404);
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_34();
  sub_2683ABDA4(v405, v406);
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v4, v460, &qword_2802529F0, &qword_2683E91D8);
  OUTLINED_FUNCTION_59_7();
  sub_2683ABDA4(v407, v408);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v475, v463, &qword_280252978, &qword_2683E8A08);
  OUTLINED_FUNCTION_13_40();
  sub_2683ABDA4(v409, v410);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v411, v412);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_120_4();
  sub_26831A8D8(v413, v414, v415, v416);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  v417 = OUTLINED_FUNCTION_87_5();
  sub_26831A8D8(v417, v418, v419, v420);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v421, v422);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_123_3();
  sub_26831A8D8(v423, v424, v425, v426);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v427, v428);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183_1(v470, v429, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v430, v431);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_70_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_182_1(v5, v432, &qword_280252BB0, &qword_2683EBA68);
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_149_1();
  sub_26831A8D8(v433, v434, v435, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v436, v437);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();

  sub_26812C310(v473, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v5, &qword_280252BB0, &qword_2683EBA68);
  sub_26812C310(v470, &qword_280252690, &qword_2683E6E68);
  v438 = OUTLINED_FUNCTION_134_1();
  sub_26812C310(v438, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v474, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v476, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v475, &qword_280252978, &qword_2683E8A08);
  sub_26812C310(v4, &qword_2802529F0, &qword_2683E91D8);
  sub_26812C310(v6, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v2, &qword_280252718, &qword_2683E71B0);
LABEL_15:
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v142 = v3;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
  OUTLINED_FUNCTION_0_3(v147);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = v132 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v12 = OUTLINED_FUNCTION_23(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_1();
  v141 = v15;
  OUTLINED_FUNCTION_8_0();
  v17 = MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_67_6(v17, v18, v19, v20, v21, v22, v23, v24, v132[0]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252978, &qword_2683E8A08);
  v26 = OUTLINED_FUNCTION_23(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_1();
  v137 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_17();
  v140 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v33 = OUTLINED_FUNCTION_23(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_1();
  v136 = v36;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15_17();
  v139 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v40 = OUTLINED_FUNCTION_23(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_1();
  v135 = v43;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_17();
  v138 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v47 = OUTLINED_FUNCTION_23(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_1();
  v134 = v50;
  OUTLINED_FUNCTION_8_0();
  v52 = MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_37_13(v52, v53, v54, v55, v56, v57, v58, v59, v132[0]);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v61 = OUTLINED_FUNCTION_23(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_1();
  v133 = v64;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_159_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v144 = v0;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = [v2 title];
  v71 = [v70 spokenPhrase];

  v72 = sub_2683CFA78();
  v132[1] = v73;
  v132[2] = v72;

  v143 = v2;
  v74 = [v2 tasks];
  sub_268186108();
  v75 = sub_2683CFCA8();

  v76 = sub_2682228F8(v75);
  v77 = 0;
  v78 = v75 & 0xC000000000000001;
  v79 = MEMORY[0x277D84F90];
  while (v76 != v77)
  {
    sub_2683ABC70(v77, v78 == 0, v75);
    if (v78)
    {
      MEMORY[0x26D616C90](v77, v75);
    }

    else
    {
      v80 = *(v75 + 8 * v77 + 32);
    }

    if (__OFADD__(v77, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    Entity<A>.init(_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = *(v79 + 16);
      sub_2682E465C();
      v79 = v83;
    }

    v81 = *(v79 + 16);
    if (v81 >= *(v79 + 24) >> 1)
    {
      sub_2682E465C();
      v79 = v84;
    }

    *(v79 + 16) = v81 + 1;
    (*(v5 + 32))(v79 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v81, v10, v147);
    ++v77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v85 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v75 = v138;
  v89 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v78 = v139;
  v93 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
  v77 = v140;
  v98 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  if (qword_28024CAE0 == -1)
  {
    goto LABEL_13;
  }

LABEL_15:
  swift_once();
LABEL_13:
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252550, &qword_2683E6D28);
  OUTLINED_FUNCTION_133_1(v105, qword_280252398);
  type metadata accessor for Common.ReminderList(0);
  sub_2683CE298();
  swift_getKeyPath();
  sub_26831A8D8(v144, v133, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_13_40();
  sub_2683ABDA4(v106, v107);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v108, v109);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_43();
  sub_2683ABDA4(v110, v111);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_110_3();
  sub_2683ABDA4(v112, v113);
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_163_2();
  sub_26831A8D8(v114, v115, v116, v117);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v118, v119);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_182_1(v75, v120, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v121, v122);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v78, v136, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v123, v124);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_179_2();
  sub_26831A8D8(v125, v126, v127, v128);
  OUTLINED_FUNCTION_102_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  v129 = v146;
  sub_26831A8D8(v146, v141, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v130, v131);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_102_2();
  sub_2683CE2B8();

  sub_26812C310(v129, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v77, &qword_280252978, &qword_2683E8A08);
  sub_26812C310(v78, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v75, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v145, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v144, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252828, &qword_2683E7CF0);
  v9 = OUTLINED_FUNCTION_23(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_1();
  v170 = v12;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_29_18();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v15 = OUTLINED_FUNCTION_23(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_1();
  v177 = v18;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_98_5();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v21 = OUTLINED_FUNCTION_23(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_1();
  v176 = v24;
  OUTLINED_FUNCTION_8_0();
  v26 = MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_67_6(v26, v27, v28, v29, v30, v31, v32, v33, v167);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v35 = OUTLINED_FUNCTION_23(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_1();
  v174 = v38;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_158_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v41 = OUTLINED_FUNCTION_23(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_1();
  v173 = v44;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15_17();
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v49 = OUTLINED_FUNCTION_23(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_1();
  v180 = v52;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_56_3();
  v169 = v54;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7_30();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252830, &qword_2683E7CF8);
  v57 = OUTLINED_FUNCTION_23(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_1();
  v179 = v60;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_178_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_80_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_56_3();
  v172 = v64;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_105_2();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B80, &qword_2683EB1A0);
  v67 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
  v178 = v7;
  v70 = [v7 groupName];
  v175 = v2;
  if (v70)
  {
    v71 = v70;
    v72 = [v70 spokenPhrase];

    sub_2683CFA78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v73 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v81 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v92 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    if (qword_28024CA70 != -1)
    {
      swift_once();
    }

    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252638, &qword_2683E6E10);
    OUTLINED_FUNCTION_72_3(v96, qword_280252248);
    type metadata accessor for Common.NoteFolder(0);
    sub_2683CE298();
    swift_getKeyPath();
    sub_26831A8D8(v3, v169, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_118_3();
    sub_2683ABDA4(v97, v98);
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v99, v100);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_117_4();
    sub_2683ABDA4(v101, v102);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2D8();
    swift_getKeyPath();
    sub_26831A8D8(v47, v173, &qword_2802526A0, &qword_2683E6E78);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v103, v104);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v5, v174, &qword_280252698, &qword_2683E6E70);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v105, v106);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v181, v176, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v107, v108);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v171, v0, &qword_280252830, &qword_2683E7CF8);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v4, v177, &qword_280252680, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v109, v110);
    sub_2683CE2B8();
    sub_26812C310(v4, &qword_280252680, &qword_2683E6E58);
    sub_26812C310(v171, &qword_280252830, &qword_2683E7CF8);
    sub_26812C310(v181, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v5, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v47, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v3, &qword_280252838, &qword_2683E7D00);
    v2 = v175;
    sub_26812C310(v175, &qword_280252830, &qword_2683E7CF8);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v66);
    sub_2683ABD34(v172, v175);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v114 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
  sub_26831A8D8(v2, v179, &qword_280252830, &qword_2683E7CF8);
  v118 = [v178 title];
  v119 = [v118 spokenPhrase];

  sub_2683CFA78();
  sub_2683B9E1C();
  if (v120[2])
  {
    v121 = v120[5];
    v168 = v120[4];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v126 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v130 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252840, &qword_2683E7D30);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v138 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v141);
  if (qword_28024CA68 != -1)
  {
    swift_once();
  }

  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252510, &qword_2683E6CE8);
  OUTLINED_FUNCTION_72_3(v142, qword_280252230);
  v143 = OUTLINED_FUNCTION_256_0();
  type metadata accessor for Common.Note(v143);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  sub_26831A8D8(v180, v3, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_117_4();
  sub_2683ABDA4(v144, v145);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v146, v147);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_34();
  sub_2683ABDA4(v148, v149);
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183_1(v179, v150, &qword_280252830, &qword_2683E7CF8);
  OUTLINED_FUNCTION_118_3();
  sub_2683ABDA4(v151, v152);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_110_3();
  sub_2683ABDA4(v153, v154);
  OUTLINED_FUNCTION_36_13();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v47, v173, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v155, v156);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_145_2();
  sub_26831A8D8(v157, v158, v159, v160);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v161, v162);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v181, v176, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v163, v164);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v1, v170, &qword_280252828, &qword_2683E7CF0);
  OUTLINED_FUNCTION_9_39();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v4, v177, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v165, v166);
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();

  sub_26812C310(v4, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v1, &qword_280252828, &qword_2683E7CF0);
  sub_26812C310(v181, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v5, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v47, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v179, &qword_280252830, &qword_2683E7CF8);
  sub_26812C310(v180, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_7_13(v175);
  OUTLINED_FUNCTION_29_0();
}

void Entity<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v29;
  a20 = v30;
  v268 = v31;
  v261 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v34 = OUTLINED_FUNCTION_23(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_1();
  v262 = v37;
  OUTLINED_FUNCTION_8_0();
  v39 = MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_78_3(v39, v40, v41, v42, v43, v44, v45, v46, v241);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v48 = OUTLINED_FUNCTION_23(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_1();
  v259 = v51;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_175_2(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v55 = OUTLINED_FUNCTION_23(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_1();
  v257 = v58;
  OUTLINED_FUNCTION_8_0();
  v60 = MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_77_3(v60, v61, v62, v63, v64, v65, v66, v67, v242);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v69 = OUTLINED_FUNCTION_23(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_1();
  v255 = v72;
  OUTLINED_FUNCTION_8_0();
  v74 = MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_67_6(v74, v75, v76, v77, v78, v79, v80, v81, v243);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v83 = OUTLINED_FUNCTION_23(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_2_1();
  v253 = v86;
  OUTLINED_FUNCTION_8_0();
  v88 = MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_37_13(v88, v89, v90, v91, v92, v93, v94, v95, v244);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v97 = OUTLINED_FUNCTION_23(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_2_1();
  v251 = v100;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_29_18();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v103 = OUTLINED_FUNCTION_23(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_128_2();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v108 = OUTLINED_FUNCTION_23(v107);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_23_14();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_20_38();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v114 = OUTLINED_FUNCTION_23(v113);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_106_4();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v119 = OUTLINED_FUNCTION_23(v118);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_158_2();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v124 = OUTLINED_FUNCTION_23(v123);
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_98_5();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v129 = OUTLINED_FUNCTION_23(v128);
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_159_2();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A70, &qword_2683E9BA0);
  v134 = OUTLINED_FUNCTION_23(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_19_3();
  v139 = v137 - v138;
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_157_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AC8, &qword_2683EA1E8);
  v141 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
  v149 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
  v153 = [v268 dateComponentsRange];
  Entity<A>.init(_:)(v153, v154, v155, v156, v157, v158, v159, v160, v245, v246, v247, v248, v249, v250, v251, v253, v255, v257, v259, v261);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v263 = v21;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v264 = v22;
  v170 = v25;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  v174 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
  v178 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
  v182 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v185 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v197);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v201 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v201, v202, v203, v204);
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_75_4();
  }

  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_72_3(v205, qword_280252188);
  v206 = OUTLINED_FUNCTION_155_2();
  type metadata accessor for Common.EventTrigger(v206);
  sub_2683CE298();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v207, v208);
  OUTLINED_FUNCTION_64_5();
  sub_2683ABDA4(v209, v210);
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v26, v139, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_63_6();
  sub_2683ABDA4(v211, v212);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v20, &qword_2802527D8, &qword_2683E7978, &a13);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v213, v214);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v27, &qword_280252880, &qword_2683E7ED8, &a14);
  OUTLINED_FUNCTION_9_41();
  sub_2683ABDA4(v215, v216);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v28, &qword_280252838, &qword_2683E7D00, &a15);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v217, v218);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v263, &qword_280252710, &qword_2683E71A8, &a16);
  OUTLINED_FUNCTION_18_39();
  sub_2683ABDA4(v219, v220);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2(&a18);
  sub_26831A8D8(v221, v222, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v223, v224);
  OUTLINED_FUNCTION_31_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_174_1(&a17);
  sub_26831A8D8(v225, v226, v227, v228);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v229, v230);
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v24, v252, &qword_280252900, &qword_2683E8538);
  OUTLINED_FUNCTION_16_35();
  sub_2683ABDA4(v231, v232);
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v170, v24, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_31_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v269, v254, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v233, v234);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v270, v256, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v235, v236);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v265, v258, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v237, v238);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v266, v260, &qword_280252A68, &qword_2683E9B98);
  OUTLINED_FUNCTION_31_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v267, v262, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v239, v240);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();

  sub_26812C310(v267, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v266, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v265, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v270, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v269, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v170, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v24, &qword_280252900, &qword_2683E8538);
  sub_26812C310(v23, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_7_13(v264);
  sub_26812C310(v263, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v28, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v27, &qword_280252880, &qword_2683E7ED8);
  sub_26812C310(v20, &qword_2802527D8, &qword_2683E7978);
  sub_26812C310(v26, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v27;
  a20 = v28;
  v267 = v29;
  v255 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v32 = OUTLINED_FUNCTION_23(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v256 = v35;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_175_2(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v39 = OUTLINED_FUNCTION_23(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_1();
  v254 = v42;
  OUTLINED_FUNCTION_8_0();
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_77_3(v44, v45, v46, v47, v48, v49, v50, v51, v245[0]);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v53 = OUTLINED_FUNCTION_23(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_2_1();
  v253 = v56;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15_17();
  v265 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v60 = OUTLINED_FUNCTION_23(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_1();
  v252 = v63;
  OUTLINED_FUNCTION_8_0();
  v65 = MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_67_6(v65, v66, v67, v68, v69, v70, v71, v72, v245[0]);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v74 = OUTLINED_FUNCTION_23(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_2_1();
  v251 = v77;
  OUTLINED_FUNCTION_8_0();
  v79 = MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_37_13(v79, v80, v81, v82, v83, v84, v85, v86, v245[0]);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v88 = OUTLINED_FUNCTION_23(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v92 = MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_79_5(v92, v93, v94, v95, v96, v97, v98, v99, v245[0]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v101 = OUTLINED_FUNCTION_23(v100);
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_7_30();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v106 = OUTLINED_FUNCTION_23(v105);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_56_3();
  v257 = v110;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_105_2();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v113 = OUTLINED_FUNCTION_23(v112);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_106_4();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v118 = OUTLINED_FUNCTION_23(v117);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_159_2();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v123 = OUTLINED_FUNCTION_23(v122);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_157_2();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v128 = OUTLINED_FUNCTION_23(v127);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_20_38();
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A70, &qword_2683E9BA0);
  v133 = OUTLINED_FUNCTION_23(v132);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_29_18();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  OUTLINED_FUNCTION_0_3(v137);
  v139 = v138;
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v142);
  v144 = v245 - v143;
  v145 = [v267 placemark];
  Entity<A>.init(_:)(v145, v146, v147, v148, v149, v150, v151, v152, v245[0], v245[1], v245[2], v245[3], v245[4], v245[5], v245[6], v246, v247, v248, v249, v250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AC8, &qword_2683EA1E8);
  v258 = v23;
  v153 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  v259 = v22;
  v157 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
  v260 = v26;
  v161 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v261 = v20;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v262 = v21;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v263 = v24;
  v174 = v257;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v173);
  v249 = v139;
  v178 = *(v139 + 16);
  v248 = v144;
  v178(v25, v144, v137);
  v264 = v25;
  OUTLINED_FUNCTION_10_0();
  v250 = v137;
  __swift_storeEnumTagSinglePayload(v179, v180, v181, v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
  v182 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v185);
  v186 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v173);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v189 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v196);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v202, v203, v204, v201);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v205, v206, v207, v208);
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_75_4();
  }

  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_72_3(v209, qword_280252188);
  v210 = OUTLINED_FUNCTION_256_0();
  type metadata accessor for Common.EventTrigger(v210);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v211, v212);
  OUTLINED_FUNCTION_64_5();
  sub_2683ABDA4(v213, v214);
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v258, &qword_280252A70, &qword_2683E9BA0, &v271);
  OUTLINED_FUNCTION_63_6();
  sub_2683ABDA4(v215, v216);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v259, &qword_2802527D8, &qword_2683E7978, &a9);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v217, v218);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v260, &qword_280252880, &qword_2683E7ED8, &a10);
  OUTLINED_FUNCTION_9_41();
  sub_2683ABDA4(v219, v220);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v261, &qword_280252838, &qword_2683E7D00, &a11);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v221, v222);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v262, &qword_280252710, &qword_2683E71A8, &a12);
  OUTLINED_FUNCTION_18_39();
  sub_2683ABDA4(v223, v224);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  v225 = v246;
  sub_26831A8D8(v263, v246, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v226, v227);
  OUTLINED_FUNCTION_54_8();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_142_2(v264, &qword_280252708, &qword_2683E71A0, &a13);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v228, v229);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_142_2(v268, &qword_280252900, &qword_2683E8538, &a15);
  OUTLINED_FUNCTION_16_35();
  sub_2683ABDA4(v230, v231);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v174, v225, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_54_8();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v269, v251, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v232, v233);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v270, v252, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v234, v235);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  v236 = v265;
  sub_26831A8D8(v265, v253, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v237, v238);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_181_2(KeyPath, v240, &qword_280252A68, &qword_2683E9B98);
  OUTLINED_FUNCTION_54_8();
  sub_2683CE2B8();
  swift_getKeyPath();
  v241 = v266;
  sub_26831A8D8(v266, v256, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v242, v243);
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2B8();

  sub_26812C310(v241, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v22, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v236, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v270, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v269, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v257, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v268, &qword_280252900, &qword_2683E8538);
  sub_26812C310(v264, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_7_13(v263);
  sub_26812C310(v262, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v261, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v260, &qword_280252880, &qword_2683E7ED8);
  sub_26812C310(v259, &qword_2802527D8, &qword_2683E7978);
  sub_26812C310(v258, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_12_15(&a17);
  v244(v248, v250);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v27;
  a20 = v28;
  v270 = v29;
  v261 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v32 = OUTLINED_FUNCTION_23(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v262 = v35;
  OUTLINED_FUNCTION_8_0();
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_78_3(v37, v38, v39, v40, v41, v42, v43, v44, v253[0]);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v46 = OUTLINED_FUNCTION_23(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_1();
  v260 = v49;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_175_2(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v53 = OUTLINED_FUNCTION_23(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_2_1();
  v259 = v56;
  OUTLINED_FUNCTION_8_0();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_77_3(v58, v59, v60, v61, v62, v63, v64, v65, v253[0]);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v67 = OUTLINED_FUNCTION_23(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_1();
  v258 = v70;
  OUTLINED_FUNCTION_8_0();
  v72 = MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_67_6(v72, v73, v74, v75, v76, v77, v78, v79, v253[0]);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v81 = OUTLINED_FUNCTION_23(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_2_1();
  v257 = v84;
  OUTLINED_FUNCTION_8_0();
  v86 = MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_37_13(v86, v87, v88, v89, v90, v91, v92, v93, v253[0]);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v95 = OUTLINED_FUNCTION_23(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v99 = MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_79_5(v99, v100, v101, v102, v103, v104, v105, v106, v253[0]);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v108 = OUTLINED_FUNCTION_23(v107);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_98_5();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v113 = OUTLINED_FUNCTION_23(v112);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_80_4();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_158_2();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v119 = OUTLINED_FUNCTION_23(v118);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_29_18();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v124 = OUTLINED_FUNCTION_23(v123);
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_20_38();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v129 = OUTLINED_FUNCTION_23(v128);
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_7_30();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v134 = OUTLINED_FUNCTION_23(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_128_2();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A70, &qword_2683E9BA0);
  v139 = OUTLINED_FUNCTION_23(v138);
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_106_4();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  OUTLINED_FUNCTION_0_3(v143);
  v145 = v144;
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v148);
  v150 = v253 - v149;
  v151 = v270;
  Entity<A>.init(_:)(v151, v152, v153, v154, v155, v156, v157, v158, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v151, v253[8], v253[9], v254, v255);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AC8, &qword_2683EA1E8);
  v264 = v20;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  v265 = v22;
  v163 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
  v266 = v24;
  v167 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v267 = v21;
  v171 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v268 = v23;
  v175 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  v255 = v145;
  v179 = *(v145 + 16);
  v254 = v150;
  v179(v26, v150, v143);
  v269 = v26;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  v270 = v25;
  v183 = v263;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
  v188 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
  v192 = OUTLINED_FUNCTION_31_18();
  v256 = v143;
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v195 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v211 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_75_4();
  }

  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_72_3(v215, qword_280252188);
  v216 = OUTLINED_FUNCTION_155_2();
  type metadata accessor for Common.EventTrigger(v216);
  sub_2683CE298();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v217, v218);
  OUTLINED_FUNCTION_64_5();
  sub_2683ABDA4(v219, v220);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v264, &qword_280252A70, &qword_2683E9BA0, &v276);
  OUTLINED_FUNCTION_63_6();
  sub_2683ABDA4(v221, v222);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v265, &qword_2802527D8, &qword_2683E7978, &a9);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v223, v224);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v266, &qword_280252880, &qword_2683E7ED8, &a10);
  OUTLINED_FUNCTION_9_41();
  sub_2683ABDA4(v225, v226);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v267, &qword_280252838, &qword_2683E7D00, &a11);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v227, v228);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v268, &qword_280252710, &qword_2683E71A8, &a12);
  OUTLINED_FUNCTION_18_39();
  sub_2683ABDA4(v229, v230);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_174_1(&a15);
  sub_26831A8D8(v231, v232, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  v235 = sub_2683ABDA4(v233, v234);
  OUTLINED_FUNCTION_42_16();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v270, &qword_280252708, &qword_2683E71A0, &a13);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v236, v237);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v273, &qword_280252900, &qword_2683E8538, &a16);
  OUTLINED_FUNCTION_16_35();
  sub_2683ABDA4(v238, v239);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v183, v22, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_42_16();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v274, v257, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v240, v241);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v275, v258, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v242, v243);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_181_2(KeyPath, v245, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v246, v247);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  v248 = v271;
  sub_26831A8D8(v271, v260, &qword_280252A68, &qword_2683E9B98);
  OUTLINED_FUNCTION_42_16();
  sub_2683CE2B8();
  swift_getKeyPath();
  v249 = v272;
  sub_26831A8D8(v272, v262, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v250, v251);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();

  sub_26812C310(v249, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v248, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v235, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v275, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v274, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v263, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v273, &qword_280252900, &qword_2683E8538);
  sub_26812C310(v270, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_7_13(v269);
  sub_26812C310(v268, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v267, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v266, &qword_280252880, &qword_2683E7ED8);
  sub_26812C310(v265, &qword_2802527D8, &qword_2683E7978);
  sub_26812C310(v264, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_12_15(&a18);
  v252(v254, v256);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v734 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A48, &qword_2683E98B0);
  v31 = OUTLINED_FUNCTION_23(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v35);
  v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A50, &qword_2683E98E0);
  OUTLINED_FUNCTION_0_3(v749);
  v732 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_175_2(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v42 = OUTLINED_FUNCTION_23(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252908, &qword_2683E8540);
  v48 = OUTLINED_FUNCTION_23(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252910, &qword_2683E8548);
  v55 = OUTLINED_FUNCTION_23(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252768, &qword_2683E7458);
  v61 = OUTLINED_FUNCTION_23(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_56_3();
  v758 = v65;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_56_3();
  v756 = v67;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252918, &qword_2683E8550);
  v71 = OUTLINED_FUNCTION_23(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_1();
  v759 = v74;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_98_5();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252920, &qword_2683E8558);
  v77 = OUTLINED_FUNCTION_23(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252928, &qword_2683E8588);
  OUTLINED_FUNCTION_0_3(v82);
  v731 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v89 = OUTLINED_FUNCTION_23(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_2_1();
  v755 = v92;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_20_38();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v95 = OUTLINED_FUNCTION_23(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_2_1();
  v754 = v98;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_29_18();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v101 = OUTLINED_FUNCTION_23(v100);
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_2_1();
  v753 = v104;
  OUTLINED_FUNCTION_8_0();
  v106 = MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_79_5(v106, v107, v108, v109, v110, v111, v112, v113, v718);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v115 = OUTLINED_FUNCTION_23(v114);
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_2_1();
  v752 = v118;
  OUTLINED_FUNCTION_8_0();
  v120 = MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_37_13(v120, v121, v122, v123, v124, v125, v126, v127, v718);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252870, &qword_2683E7EC8);
  v129 = OUTLINED_FUNCTION_23(v128);
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_7_30();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252878, &qword_2683E7ED0);
  v134 = OUTLINED_FUNCTION_23(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_15_17();
  v751 = v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v140 = OUTLINED_FUNCTION_23(v139);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_105_2();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v146 = OUTLINED_FUNCTION_23(v145);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v150 = MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_78_3(v150, v151, v152, v153, v154, v155, v156, v157, v718);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252750, &qword_2683E7358);
  v159 = OUTLINED_FUNCTION_23(v158);
  v161 = *(v160 + 64);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_15_17();
  v750 = v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252888, &qword_2683E7EE0);
  v165 = OUTLINED_FUNCTION_23(v164);
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v169 = MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_77_3(v169, v170, v171, v172, v173, v174, v175, v176, v718);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_23(v177);
  v179 = *(v178 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v180);
  v182 = &v718 - v181;
  v183 = sub_2683CB0D8();
  v184 = OUTLINED_FUNCTION_0_3(v183);
  v186 = v185;
  v188 = *(v187 + 64);
  MEMORY[0x28223BE20](v184);
  v748 = &v718 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  v735 = v28;
  sub_2683615B0(v182);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v182, 1, v183);
  v760 = v20;
  v761 = v21;
  v757 = v23;
  v747 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v182, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252758, &qword_2683E7388);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
    v198 = v764;
    v199 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v204 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v204, v205, v206, v203);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A08, &qword_2683E9300);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v207, v208, v209, v210);
    v211 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v211, v212, v213, v749);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v214 = OUTLINED_FUNCTION_35_22();
    __swift_storeEnumTagSinglePayload(v214, v215, v216, v217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v218 = v765;
    v219 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v219, v220, v221, v222);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    v223 = OUTLINED_FUNCTION_43_13();
    __swift_storeEnumTagSinglePayload(v223, v224, v225, v226);
    v227 = OUTLINED_FUNCTION_73_5(&a18);
    __swift_storeEnumTagSinglePayload(v227, v228, v229, v203);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v230 = OUTLINED_FUNCTION_47_8();
    __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
    if (qword_28024C9F8 != -1)
    {
      OUTLINED_FUNCTION_229_0();
    }

    v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252518, &qword_2683E6CF0);
    OUTLINED_FUNCTION_72_3(v234, qword_2802520E0);
    v235 = OUTLINED_FUNCTION_92_3();
    type metadata accessor for Common.DateTime(v235);
    sub_2683CE298();
    swift_getKeyPath();
    v771 = 1;
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v236, v237);
    OUTLINED_FUNCTION_55_6();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v762, &qword_280252888, &qword_2683E7EE0, &a12);
    OUTLINED_FUNCTION_62_4();
    sub_2683ABDA4(v238, v239);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v750, &qword_280252750, &qword_2683E7358, &v754);
    OUTLINED_FUNCTION_115_4();
    sub_2683ABDA4(v240, v241);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v198, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_9_41();
    sub_2683ABDA4(v242, v243);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_174_1(&v758);
    sub_26831A8D8(v244, v245, v246, v247);
    OUTLINED_FUNCTION_55_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v751, &qword_280252878, &qword_2683E7ED0, &v756);
    OUTLINED_FUNCTION_114_3();
    sub_2683ABDA4(v248, v249);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v23, &qword_280252870, &qword_2683E7EC8, &a13);
    OUTLINED_FUNCTION_113_5();
    sub_2683ABDA4(v250, v251);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v766, v752, &qword_2802526A0, &qword_2683E6E78);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v252, v253);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v218, v753, &qword_280252698, &qword_2683E6E70);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v254, v255);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    v256 = v761;
    sub_26831A8D8(v761, v754, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v257, v258);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    v259 = v746;
    sub_26831A8D8(v746, 1, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_55_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    v260 = v760;
    OUTLINED_FUNCTION_163_2();
    sub_26831A8D8(v261, v262, &qword_280252680, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v263, v264);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();

    sub_26812C310(v260, &qword_280252680, &qword_2683E6E58);
    sub_26812C310(v259, &qword_280252838, &qword_2683E7D00);
    sub_26812C310(v256, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v765, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v757, &qword_280252870, &qword_2683E7EC8);
    sub_26812C310(v751, &qword_280252878, &qword_2683E7ED0);
    OUTLINED_FUNCTION_7_13(v747);
    sub_26812C310(v764, &qword_280252880, &qword_2683E7ED8);
    sub_26812C310(v750, &qword_280252750, &qword_2683E7358);
    sub_26812C310(v762, &qword_280252888, &qword_2683E7EE0);
  }

  else
  {
    v722 = v186;
    v265 = *(v186 + 32);
    v723 = v183;
    v265(v748, v182, v183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A40, &qword_2683E97E0);
    v266 = v729;
    v267 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v267, v268, v269, v270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A90, &qword_2683E9E28);
    v271 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v271, v272, v273, v274);
    v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252770, &qword_2683E7488);
    v276 = v745;
    v277 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v275);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B10, &qword_2683EA810);
    v280 = OUTLINED_FUNCTION_73_5(&a9);
    __swift_storeEnumTagSinglePayload(v280, v281, v282, v283);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B08, &qword_2683EA6F0);
    v284 = OUTLINED_FUNCTION_73_5(&a14);
    v720 = v285;
    __swift_storeEnumTagSinglePayload(v284, v286, v287, v285);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
    v288 = OUTLINED_FUNCTION_34_20();
    v725 = v289;
    __swift_storeEnumTagSinglePayload(v288, v290, v291, v289);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
    v292 = OUTLINED_FUNCTION_73_5(&a10);
    __swift_storeEnumTagSinglePayload(v292, v293, v294, v295);
    v296 = v756;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v297, v298, v299, v275);
    OUTLINED_FUNCTION_4_0();
    v726 = v275;
    __swift_storeEnumTagSinglePayload(v300, v301, v302, v275);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v303 = OUTLINED_FUNCTION_35_22();
    v739 = v304;
    __swift_storeEnumTagSinglePayload(v303, v305, v306, v304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v307 = OUTLINED_FUNCTION_48_12();
    v738 = v308;
    __swift_storeEnumTagSinglePayload(v307, v309, v310, v308);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    v311 = OUTLINED_FUNCTION_43_13();
    v737 = v312;
    __swift_storeEnumTagSinglePayload(v311, v313, v314, v312);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v315, v316, v317, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v318 = OUTLINED_FUNCTION_47_8();
    v736 = v319;
    __swift_storeEnumTagSinglePayload(v318, v320, v321, v319);
    if (qword_28024C9F0 != -1)
    {
      swift_once();
    }

    v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252538, &qword_2683E6D10);
    OUTLINED_FUNCTION_133_1(v322, qword_2802520C8);
    v323 = OUTLINED_FUNCTION_61_3();
    type metadata accessor for Common.Date(v323);
    OUTLINED_FUNCTION_9_0();
    sub_2683CE298();
    swift_getKeyPath();
    v770 = 5;
    OUTLINED_FUNCTION_62_4();
    v326 = sub_2683ABDA4(v324, v325);
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v266, &qword_280252920, &qword_2683E8558, &v762);
    sub_2683ABDA4(&qword_280252930, type metadata accessor for Common.CalendarEra);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v24, v759, &qword_280252918, &qword_2683E8550);
    sub_2683ABDA4(&qword_280252938, type metadata accessor for Common.CalendarSystem);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_2683ABDA4(&qword_2802527C8, type metadata accessor for Common.DateType);
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2D8();
    swift_getKeyPath();
    v327 = v730;
    sub_26831A8D8(v276, v730, &qword_280252768, &qword_2683E7458);
    v328 = sub_2683ABDA4(&qword_280252778, type metadata accessor for Common.Integer);
    v721 = v24;
    v329 = v328;
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v740, &qword_280252910, &qword_2683E8548, &v763);
    sub_2683ABDA4(&qword_280252940, type metadata accessor for Common.DayOfWeek);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    v330 = OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_139_1(v330, v331, v332, &v750);
    sub_2683ABDA4(&qword_280252948, type metadata accessor for Common.MonthOfYear);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v333, &v742);
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v764, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_9_41();
    sub_2683ABDA4(v334, v335);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v336, &v747);
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v741, &qword_280252900, &qword_2683E8538, &v764);
    OUTLINED_FUNCTION_16_35();
    sub_2683ABDA4(v337, v338);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v296, v327, &qword_280252768, &qword_2683E7458);
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v758, v327, &qword_280252768, &qword_2683E7458);
    OUTLINED_FUNCTION_45_9();
    v759 = v329;
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v339, v340, v341, v342);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v343, v344);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v345, &v764);
    swift_getKeyPath();
    v346 = v82;
    v347 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v347, v348, v349, v350);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v351, v352);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v353, &v763);
    KeyPath = swift_getKeyPath();
    v355 = v761;
    OUTLINED_FUNCTION_123_3();
    sub_26831A8D8(v356, v357, v358, v359);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v360, v361);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v362, &v762);
    swift_getKeyPath();
    v363 = v762;
    OUTLINED_FUNCTION_142_2(v762, &qword_280252888, &qword_2683E7EE0, &a12);
    OUTLINED_FUNCTION_9_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    v364 = OUTLINED_FUNCTION_171_2();
    sub_26831A8D8(v364, v365, &qword_280252680, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v366, v367);
    OUTLINED_FUNCTION_119_1();
    v368 = v765;
    v728 = v346;
    v724 = v326;
    OUTLINED_FUNCTION_166_2(v369, &v761);
    sub_26812C310(KeyPath, &qword_280252680, &qword_2683E6E58);
    v370 = v745;
    sub_26812C310(v363, &qword_280252888, &qword_2683E7EE0);
    sub_26812C310(v355, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v368, &qword_280252698, &qword_2683E6E70);
    v371 = v766;
    sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v758, &qword_280252768, &qword_2683E7458);
    OUTLINED_FUNCTION_107_3();
    sub_26812C310(v372, v373, v374);
    sub_26812C310(v741, &qword_280252900, &qword_2683E8538);
    v375 = v764;
    sub_26812C310(v764, &qword_280252880, &qword_2683E7ED8);
    v376 = OUTLINED_FUNCTION_134_1();
    sub_26812C310(v376, &qword_280252908, &qword_2683E8540);
    sub_26812C310(v740, &qword_280252910, &qword_2683E8548);
    OUTLINED_FUNCTION_107_3();
    sub_26812C310(v377, v378, v379);
    sub_26812C310(v721, &qword_280252918, &qword_2683E8550);
    sub_26812C310(v729, &qword_280252920, &qword_2683E8558);
    sub_2683CAFF8();
    v380 = KeyPath;
    if ((v381 & 1) == 0)
    {
      v382 = sub_2683CB048();
      if ((v383 & 1) == 0)
      {
        v384 = v382;
        v385 = sub_2683CB038();
        if ((v386 & 1) == 0)
        {
          v718 = v384;
          v721 = v385;
          v719 = swift_getKeyPath();
          OUTLINED_FUNCTION_23_30(v371);
          v387 = OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_153_2(v387, v388, v389);
          v390 = v756;
          v391 = OUTLINED_FUNCTION_30_23();
          OUTLINED_FUNCTION_167_1(v391, v392, v393);
          v394 = OUTLINED_FUNCTION_43_13();
          OUTLINED_FUNCTION_146_1(v394, v395, v396);
          if (qword_28024CA48 != -1)
          {
            OUTLINED_FUNCTION_243_0();
          }

          v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524D8, &qword_2683E6CB0);
          v740 = __swift_project_value_buffer(v741, qword_2802521D0);
          sub_2683CD188();
          v397 = OUTLINED_FUNCTION_92_3();
          v729 = type metadata accessor for Common.Integer(v397);
          sub_2683CE298();
          swift_getKeyPath();
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v398, v399, v400, v401);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          v402 = OUTLINED_FUNCTION_87_5();
          sub_26831A8D8(v402, v403, v404, v405);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v406, v407, v408, v409);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_145_2();
          sub_26831A8D8(v410, v411, v412, v413);
          OUTLINED_FUNCTION_21_29();
          sub_2683CE2B8();
          swift_getKeyPath();
          v414 = v380;
          v415 = v370;
          OUTLINED_FUNCTION_135_2();
          v417 = v416;
          sub_26831A8D8(v418, v419, v416, &qword_2683E6E58);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          sub_26812C310(v414, v417, &qword_2683E6E58);
          sub_26812C310(v390, &qword_280252768, &qword_2683E7458);
          sub_26812C310(v355, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v765, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
          v420 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v420, v421, v422, v375);
          OUTLINED_FUNCTION_125_3();
          sub_2683CE2B8();
          v719 = swift_getKeyPath();
          v423 = OUTLINED_FUNCTION_50_13();
          __swift_storeEnumTagSinglePayload(v423, v424, v425, v739);
          v426 = OUTLINED_FUNCTION_58_8();
          __swift_storeEnumTagSinglePayload(v426, v427, v428, v738);
          v429 = v414;
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_153_2(v430, v431, v432);
          v433 = OUTLINED_FUNCTION_30_23();
          __swift_storeEnumTagSinglePayload(v433, v434, v435, v375);
          v436 = OUTLINED_FUNCTION_47_8();
          OUTLINED_FUNCTION_100_4(v436, v437, v438);
          sub_2683CE298();
          swift_getKeyPath();
          v439 = v753;
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v440, v441, &qword_2802526A0, &qword_2683E6E78);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v765, v439, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v442, v443, &qword_280252690, &qword_2683E6E68);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_145_2();
          sub_26831A8D8(v444, v445, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_21_29();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_135_2();
          sub_26831A8D8(v446, v447, &qword_280252680, &qword_2683E6E58);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          v449 = v765;
          v448 = v766;
          sub_26812C310(v429, &qword_280252680, &qword_2683E6E58);
          sub_26812C310(v390, &qword_280252768, &qword_2683E7458);
          sub_26812C310(v761, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v449, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v448, &qword_2802526A0, &qword_2683E6E78);
          v450 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v450, v451, v452, v375);
          v453 = OUTLINED_FUNCTION_47_8();
          __swift_storeEnumTagSinglePayload(v453, v454, v455, v739);
          v456 = OUTLINED_FUNCTION_53_9();
          __swift_storeEnumTagSinglePayload(v456, v457, v458, v738);
          v459 = OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_153_2(v459, v460, v461);
          v462 = OUTLINED_FUNCTION_73_5(&v750);
          v463 = v720;
          __swift_storeEnumTagSinglePayload(v462, v464, v465, v720);
          v466 = OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_146_1(v466, v467, v468);
          if (qword_28024CA60 != -1)
          {
            swift_once();
          }

          v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525F0, &qword_2683E6DC8);
          OUTLINED_FUNCTION_133_1(v469, qword_280252218);
          v470 = OUTLINED_FUNCTION_61_3();
          type metadata accessor for Common.MonthOfYear(v470);
          OUTLINED_FUNCTION_9_0();
          sub_2683CE298();
          swift_getKeyPath();
          v767 = 12;
          sub_2683CE2A8();
          swift_getKeyPath();
          sub_26831A8D8(v415, v756, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_44_16();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v471, v472, v473, v474);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v449, v753, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v475, v476, v477, v478);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          v479 = v727;
          OUTLINED_FUNCTION_139_1(v727, &qword_280252908, &qword_2683E8540, &v745);
          OUTLINED_FUNCTION_44_16();
          sub_2683CE2B8();
          swift_getKeyPath();
          v480 = v760;
          OUTLINED_FUNCTION_107_3();
          sub_26831A8D8(v481, v482, v483, &qword_2683E6E58);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          sub_26812C310(v480, &qword_280252680, &qword_2683E6E58);
          sub_26812C310(v479, &qword_280252908, &qword_2683E8540);
          v484 = OUTLINED_FUNCTION_169_1();
          sub_26812C310(v484, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v765, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
          sub_26812C310(v415, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v485, v486, v487, v463);
          OUTLINED_FUNCTION_125_3();
          sub_2683CE2B8();
          v743 = swift_getKeyPath();
          v488 = OUTLINED_FUNCTION_50_13();
          __swift_storeEnumTagSinglePayload(v488, v489, v490, v739);
          v491 = OUTLINED_FUNCTION_58_8();
          __swift_storeEnumTagSinglePayload(v491, v492, v493, v738);
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_153_2(v494, v495, v496);
          v497 = v756;
          v498 = OUTLINED_FUNCTION_47_8();
          OUTLINED_FUNCTION_167_1(v498, v499, v500);
          v501 = v760;
          v502 = OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_100_4(v502, v503, v504);
          sub_2683CE298();
          swift_getKeyPath();
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v505, v506, &qword_2802526A0, &qword_2683E6E78);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          v507 = OUTLINED_FUNCTION_87_5();
          sub_26831A8D8(v507, v508, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v509, v510, &qword_280252690, &qword_2683E6E68);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v497, v758, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_136_2();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_135_2();
          sub_26831A8D8(v511, v512, &qword_280252680, &qword_2683E6E58);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          v371 = v766;
          sub_26812C310(v501, &qword_280252680, &qword_2683E6E58);
          sub_26812C310(v497, &qword_280252768, &qword_2683E7458);
          v513 = OUTLINED_FUNCTION_169_1();
          sub_26812C310(v513, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v765, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v371, &qword_2802526A0, &qword_2683E6E78);
          v514 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v514, v515, v516, v480);
          OUTLINED_FUNCTION_125_3();
          sub_2683CE2B8();
        }
      }
    }

    v517 = OUTLINED_FUNCTION_0_51();
    v518 = v726;
    __swift_storeEnumTagSinglePayload(v517, v519, v520, v726);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v521, v522, v523, v518);
    v524 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v524, v525, v526, v725);
    v527 = OUTLINED_FUNCTION_47_8();
    __swift_storeEnumTagSinglePayload(v527, v528, v529, v518);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B58, &qword_2683EADC0);
    v530 = OUTLINED_FUNCTION_73_5(&a11);
    __swift_storeEnumTagSinglePayload(v530, v531, v532, v533);
    OUTLINED_FUNCTION_23_30(v371);
    v534 = OUTLINED_FUNCTION_40_17();
    OUTLINED_FUNCTION_153_2(v534, v535, v536);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v537, v538, v539, v749);
    v540 = OUTLINED_FUNCTION_43_13();
    OUTLINED_FUNCTION_146_1(v540, v541, v542);
    if (qword_28024CB18 != -1)
    {
      swift_once();
    }

    v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525A8, &qword_2683E6D80);
    OUTLINED_FUNCTION_133_1(v543, qword_280252440);
    v544 = OUTLINED_FUNCTION_61_3();
    type metadata accessor for Common.Time(v544);
    OUTLINED_FUNCTION_9_0();
    sub_2683CE298();
    swift_getKeyPath();
    v769 = 5;
    OUTLINED_FUNCTION_113_5();
    v547 = sub_2683ABDA4(v545, v546);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_136_2();
    sub_26831A8D8(v548, v549, v550, v551);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_136_2();
    sub_26831A8D8(v552, v553, v554, v555);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v764, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_136_2();
    sub_26831A8D8(v556, v557, v558, v559);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v742, &qword_280252A48, &qword_2683E98B0, &v746);
    sub_2683ABDA4(&qword_280252A58, type metadata accessor for Common.TimeZone);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v560, v561, v562, v563);
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_111_5();
    sub_2683CE2B8();
    v564 = swift_getKeyPath();
    v565 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v565, v566, v567, v568);
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_126_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v761, v754, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_127_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_162_2(&a13);
    sub_26831A8D8(v569, v570, &qword_280252870, &qword_2683E7EC8);
    OUTLINED_FUNCTION_107_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_171_2();
    OUTLINED_FUNCTION_119_3();
    sub_26831A8D8(v571, v572, v573, v574);
    v575 = v765;
    OUTLINED_FUNCTION_107_3();
    v743 = v547;
    OUTLINED_FUNCTION_124_4();
    sub_2683CE2B8();
    v576 = v757;
    sub_26812C310(v564, &qword_280252680, &qword_2683E6E58);
    v577 = v761;
    sub_26812C310(v576, &qword_280252870, &qword_2683E7EC8);
    sub_26812C310(v577, &qword_280252690, &qword_2683E6E68);
    v578 = v763;
    sub_26812C310(v575, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v742, &qword_280252A48, &qword_2683E98B0);
    sub_26812C310(v758, &qword_280252768, &qword_2683E7458);
    sub_26812C310(v764, &qword_280252880, &qword_2683E7ED8);
    v579 = OUTLINED_FUNCTION_93_4();
    sub_26812C310(v579, v580, &qword_2683E7458);
    OUTLINED_FUNCTION_107_3();
    sub_26812C310(v581, v582, v583);
    sub_2683CB028();
    if ((v584 & 1) == 0)
    {
      v742 = swift_getKeyPath();
      v585 = v766;
      OUTLINED_FUNCTION_23_30(v766);
      v586 = OUTLINED_FUNCTION_0_51();
      OUTLINED_FUNCTION_153_2(v586, v587, v588);
      v589 = OUTLINED_FUNCTION_52_9();
      v590 = v726;
      __swift_storeEnumTagSinglePayload(v589, v591, v592, v726);
      OUTLINED_FUNCTION_51_10();
      __swift_storeEnumTagSinglePayload(v594, v595, v596, *(v593 - 256));
      if (qword_28024CA48 != -1)
      {
        OUTLINED_FUNCTION_243_0();
      }

      v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524D8, &qword_2683E6CB0);
      v598 = __swift_project_value_buffer(v597, qword_2802521D0);
      v741 = v597;
      v740 = v598;
      sub_2683CD188();
      type metadata accessor for Common.Integer(0);
      OUTLINED_FUNCTION_172_2();
      v600 = *(v599 - 256);
      v730 = v601;
      sub_2683CE298();
      swift_getKeyPath();
      OUTLINED_FUNCTION_152_1();
      sub_2683CE2F8();
      swift_getKeyPath();
      OUTLINED_FUNCTION_28_24();
      sub_2683CE2C8();
      swift_getKeyPath();
      sub_26831A8D8(v585, v752, &qword_2802526A0, &qword_2683E6E78);
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_111_5();
      sub_2683CE2B8();
      swift_getKeyPath();
      sub_26831A8D8(v575, v753, &qword_280252698, &qword_2683E6E70);
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_126_3();
      sub_2683CE2B8();
      swift_getKeyPath();
      sub_26831A8D8(v577, v754, &qword_280252690, &qword_2683E6E68);
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_127_3();
      sub_2683CE2B8();
      swift_getKeyPath();
      v602 = v756;
      OUTLINED_FUNCTION_179_2();
      sub_26831A8D8(v603, v604, v605, &qword_2683E7458);
      OUTLINED_FUNCTION_49_10();
      sub_2683CE2B8();
      swift_getKeyPath();
      v606 = v760;
      sub_26831A8D8(v760, v755, &qword_280252680, &qword_2683E6E58);
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_124_4();
      sub_2683CE2B8();
      sub_26812C310(v606, &qword_280252680, &qword_2683E6E58);
      v607 = v765;
      sub_26812C310(v602, &qword_280252768, &qword_2683E7458);
      sub_26812C310(v577, &qword_280252690, &qword_2683E6E68);
      sub_26812C310(v607, &qword_280252698, &qword_2683E6E70);
      sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
      v608 = OUTLINED_FUNCTION_48_9();
      __swift_storeEnumTagSinglePayload(v608, v609, v610, v590);
      OUTLINED_FUNCTION_96_4();
      v578 = v763;
      sub_2683CE2B8();
      sub_2683CB068();
      v576 = v757;
      if ((v611 & 1) == 0)
      {
        v742 = swift_getKeyPath();
        OUTLINED_FUNCTION_23_30(v766);
        v612 = OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_153_2(v612, v613, v614);
        v615 = OUTLINED_FUNCTION_31_18();
        OUTLINED_FUNCTION_167_1(v615, v616, v617);
        v618 = v760;
        OUTLINED_FUNCTION_51_10();
        __swift_storeEnumTagSinglePayload(v620, v621, v622, *(v619 - 256));
        sub_2683CD188();
        sub_2683CE298();
        swift_getKeyPath();
        OUTLINED_FUNCTION_152_1();
        sub_2683CE2F8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_28_24();
        sub_2683CE2C8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_120_4();
        sub_26831A8D8(v623, v624, v625, v626);
        OUTLINED_FUNCTION_27_21();
        OUTLINED_FUNCTION_111_5();
        sub_2683CE2B8();
        swift_getKeyPath();
        sub_26831A8D8(v607, v753, &qword_280252698, &qword_2683E6E70);
        OUTLINED_FUNCTION_27_21();
        OUTLINED_FUNCTION_126_3();
        sub_2683CE2B8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_123_3();
        sub_26831A8D8(v627, v628, v629, v630);
        OUTLINED_FUNCTION_27_21();
        OUTLINED_FUNCTION_127_3();
        sub_2683CE2B8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_145_2();
        sub_26831A8D8(v631, v632, &qword_280252768, &qword_2683E7458);
        OUTLINED_FUNCTION_27_21();
        sub_2683CE2B8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_107_3();
        sub_26831A8D8(v633, v634, v635, &qword_2683E6E58);
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_124_4();
        sub_2683CE2B8();
        sub_26812C310(v618, &qword_280252680, &qword_2683E6E58);
        v636 = v765;
        sub_26812C310(v602, &qword_280252768, &qword_2683E7458);
        v576 = v757;
        v578 = v763;
        sub_26812C310(v761, &qword_280252690, &qword_2683E6E68);
        sub_26812C310(v636, &qword_280252698, &qword_2683E6E70);
        sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
        v637 = OUTLINED_FUNCTION_48_9();
        __swift_storeEnumTagSinglePayload(v637, v638, v639, v602);
        OUTLINED_FUNCTION_96_4();
        OUTLINED_FUNCTION_165_1();
        sub_2683CB078();
        if ((v640 & 1) == 0)
        {
          v742 = swift_getKeyPath();
          v641 = v766;
          OUTLINED_FUNCTION_23_30(v766);
          v642 = OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_153_2(v642, v643, v644);
          v645 = OUTLINED_FUNCTION_52_9();
          v646 = v726;
          __swift_storeEnumTagSinglePayload(v645, v647, v648, v726);
          v649 = v760;
          v650 = OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_100_4(v650, v651, v652);
          sub_2683CE298();
          swift_getKeyPath();
          OUTLINED_FUNCTION_152_1();
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          sub_26831A8D8(v641, v752, &qword_2802526A0, &qword_2683E6E78);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v636, v753, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v761, v754, &qword_280252690, &qword_2683E6E68);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_179_2();
          sub_26831A8D8(v653, v654, &qword_280252768, v655);
          OUTLINED_FUNCTION_61_6();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_163_2();
          sub_26831A8D8(v656, v657, &qword_280252680, &qword_2683E6E58);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          v658 = v765;
          sub_26812C310(v649, &qword_280252680, &qword_2683E6E58);
          v578 = v763;
          sub_26812C310(v602, &qword_280252768, &qword_2683E7458);
          v576 = v757;
          sub_26812C310(v761, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v658, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
          v659 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v659, v660, v661, v646);
          OUTLINED_FUNCTION_96_4();
          sub_2683CE2B8();
        }
      }
    }

    v662 = v762;
    v663 = v728;
    (*(v731 + 16))(v762, v744, v728);
    v664 = v662;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v665, v666, v667, v663);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252758, &qword_2683E7388);
    v668 = v750;
    v669 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v669, v670, v671, v672);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v673, v674, v675, v725);
    v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v677, v678, v679, v676);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A08, &qword_2683E9300);
    v680 = v751;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v681, v682, v683, v684);
    v685 = v749;
    (*(v732 + 16))(v576, v578, v749);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v686, v687, v688, v685);
    OUTLINED_FUNCTION_23_30(v766);
    v689 = OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_153_2(v689, v690, v691);
    v692 = OUTLINED_FUNCTION_73_5(&a18);
    __swift_storeEnumTagSinglePayload(v692, v693, v694, v676);
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v696, v697, v698, *(v695 - 256));
    if (qword_28024C9F8 != -1)
    {
      OUTLINED_FUNCTION_229_0();
    }

    v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252518, &qword_2683E6CF0);
    OUTLINED_FUNCTION_72_3(v699, qword_2802520E0);
    v700 = OUTLINED_FUNCTION_92_3();
    type metadata accessor for Common.DateTime(v700);
    OUTLINED_FUNCTION_150_2(&v759);
    sub_2683CE298();
    swift_getKeyPath();
    v768 = 1;
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v701, v702);
    OUTLINED_FUNCTION_29_24();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v664, &qword_280252888, &qword_2683E7EE0, &a12);
    OUTLINED_FUNCTION_26_27();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v668, &qword_280252750, &qword_2683E7358, &v754);
    OUTLINED_FUNCTION_115_4();
    sub_2683ABDA4(v703, v704);
    OUTLINED_FUNCTION_15_40();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v764, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_26_27();
    sub_2683CE2B8();
    swift_getKeyPath();
    v705 = v733;
    sub_26831A8D8(v747, v733, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_29_24();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v680, &qword_280252878, &qword_2683E7ED0, &v756);
    OUTLINED_FUNCTION_114_3();
    sub_2683ABDA4(v706, v707);
    OUTLINED_FUNCTION_15_40();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v576, &qword_280252870, &qword_2683E7EC8, &a13);
    OUTLINED_FUNCTION_26_27();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v766, v752, &qword_2802526A0, &qword_2683E6E78);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_111_5();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v765, v753, &qword_280252698, &qword_2683E6E70);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_126_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    v708 = v761;
    sub_26831A8D8(v761, v754, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_127_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    v709 = v746;
    sub_26831A8D8(v746, v705, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_29_24();
    sub_2683CE2B8();
    swift_getKeyPath();
    v710 = v760;
    OUTLINED_FUNCTION_163_2();
    OUTLINED_FUNCTION_92_5();
    sub_26831A8D8(v711, v712, v713, v714);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_124_4();
    sub_2683CE2B8();

    sub_26812C310(v710, &qword_280252680, &qword_2683E6E58);
    sub_26812C310(v709, &qword_280252838, &qword_2683E7D00);
    sub_26812C310(v708, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v765, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v766, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v757, &qword_280252870, &qword_2683E7EC8);
    sub_26812C310(v751, &qword_280252878, &qword_2683E7ED0);
    OUTLINED_FUNCTION_7_13(v747);
    sub_26812C310(v764, &qword_280252880, &qword_2683E7ED8);
    sub_26812C310(v750, &qword_280252750, &qword_2683E7358);
    sub_26812C310(v762, &qword_280252888, &qword_2683E7EE0);
    OUTLINED_FUNCTION_12_15(&v757);
    v715(v763, v749);
    OUTLINED_FUNCTION_12_15(&v755);
    v716(v744, v728);
    OUTLINED_FUNCTION_12_15(&v743);
    v717(v748, v723);
  }

  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v27;
  a20 = v28;
  v244 = v29;
  v227 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v32 = OUTLINED_FUNCTION_23(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v234 = v35;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_38();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v38 = OUTLINED_FUNCTION_23(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_1();
  v233 = v41;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15_17();
  v243 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v45 = OUTLINED_FUNCTION_23(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_1();
  v232 = v48;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15_17();
  v242 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v52 = OUTLINED_FUNCTION_23(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_1();
  v231 = v55;
  OUTLINED_FUNCTION_8_0();
  v57 = MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_37_13(v57, v58, v59, v60, v61, v62, v63, v64, v223);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v66 = OUTLINED_FUNCTION_23(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_2_1();
  v230 = v69;
  OUTLINED_FUNCTION_8_0();
  v71 = MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_79_5(v71, v72, v73, v74, v75, v76, v77, v78, v223);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v80 = OUTLINED_FUNCTION_23(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_2_1();
  v229 = v83;
  OUTLINED_FUNCTION_8_0();
  v85 = MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_78_3(v85, v86, v87, v88, v89, v90, v91, v92, v223);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A98, &qword_2683E9EF8);
  v94 = OUTLINED_FUNCTION_23(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_56_3();
  v245 = v98;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_15_17();
  v240 = v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252798, &qword_2683E7680);
  v102 = OUTLINED_FUNCTION_23(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_29_18();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A10, &qword_2683E9420);
  v107 = OUTLINED_FUNCTION_23(v106);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_105_2();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AE0, &qword_2683EA3B8);
  v112 = OUTLINED_FUNCTION_23(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_156_2();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_7_30();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252888, &qword_2683E7EE0);
  v117 = OUTLINED_FUNCTION_23(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_19_3();
  v121 = MEMORY[0x28223BE20](v120);
  v123 = &v223 - v122;
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_128_2();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AE8, &qword_2683EA3C0);
  v125 = OUTLINED_FUNCTION_23(v124);
  v127 = *(v126 + 64);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_19_3();
  v130 = v128 - v129;
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_106_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252BA8, &qword_2683EB920);
  v235 = v20;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252928, &qword_2683E8588);
  v237 = v22;
  v137 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B50, &qword_2683EAC78);
  v238 = v25;
  v140 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
  v236 = v123;
  v144 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A18, &qword_2683E9450);
  v239 = v24;
  v147 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B98, &qword_2683EB6E0);
  v241 = v23;
  v151 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v154);
  v155 = [v244 triggerContact];
  if (v155)
  {
    v156 = v155;
    v157 = [v155 displayName];

    v225 = sub_2683CFA78();
    v224 = v158;
  }

  else
  {
    v225 = 0;
    v224 = 0;
  }

  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AA0, &qword_2683E9F28);
  v160 = v240;
  v161 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  v164 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v171 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v175 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v179, v180, v181, v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v187 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
  v226 = v21;
  if (qword_28024CA98 != -1)
  {
    swift_once();
  }

  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525E8, &qword_2683E6DC0);
  OUTLINED_FUNCTION_72_3(v191, qword_2802522C0);
  type metadata accessor for Common.Person(0);
  sub_2683CE298();
  swift_getKeyPath();
  v249 = 1;
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v192, v193);
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2A8();
  swift_getKeyPath();
  sub_26831A8D8(v235, v130, &qword_280252AE8, &qword_2683EA3C0);
  sub_2683ABDA4(&qword_280252AF8, type metadata accessor for Common.Age);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_5();
  sub_26831A8D8(v194, v195, v196, v197);
  OUTLINED_FUNCTION_62_4();
  sub_2683ABDA4(v198, v199);
  OUTLINED_FUNCTION_65_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v238, v26, &qword_280252AE0, &qword_2683EA3B8);
  sub_2683ABDA4(&qword_280252B00, type metadata accessor for Common.Organization);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683ABDA4(&qword_2802526B0, type metadata accessor for CommonContact.Attribute);
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_5();
  sub_26831A8D8(v200, v201, v202, v203);
  OUTLINED_FUNCTION_65_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v239, &qword_280252A10, &qword_2683E9420, &a15);
  sub_2683ABDA4(&qword_280252A20, type metadata accessor for Common.PersonRelationship);
  OUTLINED_FUNCTION_71_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v241, &qword_280252798, &qword_2683E7680, &a16);
  OUTLINED_FUNCTION_116_4();
  sub_2683ABDA4(v204, v205);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  sub_2683CE2C8();
  swift_getKeyPath();
  v206 = v228;
  sub_26831A8D8(v160, v228, &qword_280252A98, &qword_2683E9EF8);
  sub_2683ABDA4(&qword_280252AA8, type metadata accessor for Common.PersonName);
  OUTLINED_FUNCTION_71_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v246, v229, &qword_2802527D8, &qword_2683E7978);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v207, v208);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v245, v206, &qword_280252A98, &qword_2683E9EF8);
  OUTLINED_FUNCTION_71_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v247, v230, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v209, v210);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v248, v231, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v211, v212);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  KeyPath = swift_getKeyPath();
  v214 = v242;
  sub_26831A8D8(v242, v232, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v215, v216);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  v217 = OUTLINED_FUNCTION_169_1();
  sub_26831A8D8(v217, v233, v218, v219);
  OUTLINED_FUNCTION_65_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  v220 = v226;
  sub_26831A8D8(v226, v234, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v221, v222);
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();

  sub_26812C310(v220, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(KeyPath, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v214, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v248, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v247, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v245, &qword_280252A98, &qword_2683E9EF8);
  sub_26812C310(v246, &qword_2802527D8, &qword_2683E7978);
  OUTLINED_FUNCTION_7_13(v240);
  sub_26812C310(v241, &qword_280252798, &qword_2683E7680);
  sub_26812C310(v239, &qword_280252A10, &qword_2683E9420);
  sub_26812C310(v236, &qword_280252888, &qword_2683E7EE0);
  sub_26812C310(v238, &qword_280252AE0, &qword_2683EA3B8);
  OUTLINED_FUNCTION_7_13(v237);
  sub_26812C310(v235, &qword_280252AE8, &qword_2683EA3C0);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v25;
  a20 = v26;
  v375 = v27;
  v358 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v30 = OUTLINED_FUNCTION_23(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252798, &qword_2683E7680);
  v36 = OUTLINED_FUNCTION_23(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_15_17();
  v373 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v42 = OUTLINED_FUNCTION_23(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_1();
  v369 = v45;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_17();
  v372 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v49 = OUTLINED_FUNCTION_23(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_1();
  v381 = v52;
  OUTLINED_FUNCTION_8_0();
  v54 = MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_79_5(v54, v55, v56, v57, v58, v59, v60, v61, v352[0]);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252720, &qword_2683E71B8);
  v63 = OUTLINED_FUNCTION_23(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_15_17();
  v374 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v69 = OUTLINED_FUNCTION_23(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_1();
  v376 = v72;
  OUTLINED_FUNCTION_8_0();
  v74 = MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_37_13(v74, v75, v76, v77, v78, v79, v80, v81, v352[0]);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v83 = OUTLINED_FUNCTION_23(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_2_1();
  v379 = v86;
  OUTLINED_FUNCTION_8_0();
  v88 = MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_77_3(v88, v89, v90, v91, v92, v93, v94, v95, v352[0]);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v97 = OUTLINED_FUNCTION_23(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_2_1();
  v378 = v100;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_98_5();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v103 = OUTLINED_FUNCTION_23(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_178_2();
  v108 = MEMORY[0x28223BE20](v107);
  v110 = v352 - v109;
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_23_14();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_156_2();
  v113 = MEMORY[0x28223BE20](v112);
  v115 = v352 - v114;
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_29_18();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B90, &qword_2683EB458);
  OUTLINED_FUNCTION_0_3(v116);
  v363 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_5_0();
  v377 = v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v123 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v122);
  v385 = v115;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v122);
  v382 = v24;
  v129 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v122);
  v371 = v22;
  v132 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v122);
  v359 = v110;
  v135 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v122);
  v360 = v20;
  v138 = OUTLINED_FUNCTION_47_8();
  v356 = v122;
  v139 = v387;
  __swift_storeEnumTagSinglePayload(v138, v140, v141, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v384 = v23;
  v142 = OUTLINED_FUNCTION_31_18();
  v368 = v143;
  __swift_storeEnumTagSinglePayload(v142, v144, v145, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  v367 = v146;
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v150 = OUTLINED_FUNCTION_30_23();
  v366 = v151;
  __swift_storeEnumTagSinglePayload(v150, v152, v153, v151);
  OUTLINED_FUNCTION_4_0();
  v380 = v116;
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v157 = OUTLINED_FUNCTION_48_12();
  v365 = v158;
  __swift_storeEnumTagSinglePayload(v157, v159, v160, v158);
  if (qword_28024CAB8 != -1)
  {
    swift_once();
  }

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252648, &qword_2683E6E20);
  OUTLINED_FUNCTION_133_1(v161, qword_280252320);
  v162 = OUTLINED_FUNCTION_61_3();
  type metadata accessor for Common.PostalAddress(v162);
  OUTLINED_FUNCTION_9_0();
  sub_2683CE298();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v21);
  v163 = sub_2683ABDA4(&qword_280252738, type metadata accessor for Common.PostalAddress);
  OUTLINED_FUNCTION_18_39();
  v166 = sub_2683ABDA4(v164, v165);
  v370 = v21;
  v167 = v166;
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_165_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v385);
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v382);
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v371);
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v359);
  OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v360);
  OUTLINED_FUNCTION_66_3();
  v362 = v167;
  OUTLINED_FUNCTION_165_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2();
  swift_getKeyPath();
  sub_26831A8D8(v384, v378, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v168, v169);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_184_2(v170, &a15);
  swift_getKeyPath();
  v171 = v383;
  OUTLINED_FUNCTION_179_2();
  sub_26831A8D8(v172, v173, v174, v175);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v176, v177);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_184_2(v178, &a14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_183_1(v139, v179, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v180, v181);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_184_2(v182, &a13);
  swift_getKeyPath();
  v183 = v374;
  OUTLINED_FUNCTION_174_1(&a9);
  sub_26831A8D8(v184, v185, v186, v187);
  OUTLINED_FUNCTION_66_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  v188 = v139;
  v189 = v386;
  v190 = v171;
  sub_26831A8D8(v386, v381, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v191, v192);
  OUTLINED_FUNCTION_136_0();
  v361 = v163;
  OUTLINED_FUNCTION_184_2(v193, &a12);
  sub_26812C310(v189, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v183, &qword_280252720, &qword_2683E71B8);
  sub_26812C310(v188, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v171, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v384, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v360, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v194, v195, v196);
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v197, v198, v199);
  v200 = OUTLINED_FUNCTION_93_4();
  sub_26812C310(v200, v201, &qword_2683E71A8);
  v202 = v385;
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v203, v204, v205);
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v206, v207, v208);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v209 = v372;
  v210 = OUTLINED_FUNCTION_47_8();
  v360 = v211;
  __swift_storeEnumTagSinglePayload(v210, v212, v213, v211);
  v214 = OUTLINED_FUNCTION_43_13();
  v215 = v356;
  __swift_storeEnumTagSinglePayload(v214, v216, v217, v356);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B98, &qword_2683EB6E0);
  v218 = OUTLINED_FUNCTION_53_9();
  v355 = v219;
  __swift_storeEnumTagSinglePayload(v218, v220, v221, v219);
  v352[1] = sub_26815E30C(v375, &selRef_thoroughfare);
  v352[0] = v222;
  v223 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v368);
  v226 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v226, v227, v228, v367);
  v229 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v366);
  v232 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v215);
  v235 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v365);
  v238 = v202;
  v239 = v215;
  if (qword_28024CA38 != -1)
  {
    swift_once();
  }

  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524E8, &qword_2683E6CC0);
  v352[4] = __swift_project_value_buffer(v353, qword_2802521A0);
  sub_2683CD188();
  v240 = OUTLINED_FUNCTION_256_0();
  v352[3] = type metadata accessor for Common.GeographicArea(v240);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  v388[7] = 2;
  sub_2683CE2A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_186_1();
  swift_getKeyPath();
  sub_26831A8D8(v209, v369, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  v359 = sub_2683ABDA4(v241, v242);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  v243 = v371;
  sub_26831A8D8(v238, v371, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2(&v389);
  sub_26831A8D8(v244, v245, v246, v247);
  OUTLINED_FUNCTION_116_4();
  v352[2] = sub_2683ABDA4(v248, v249);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_186_1();
  swift_getKeyPath();
  sub_26831A8D8(v384, v378, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(&a15);
  swift_getKeyPath();
  OUTLINED_FUNCTION_145_2();
  sub_26831A8D8(v250, v251, v252, v253);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(&a14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_135_2();
  sub_26831A8D8(v254, v255, v256, v257);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(&a13);
  swift_getKeyPath();
  v258 = v382;
  sub_26831A8D8(v382, v243, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_180_1();
  swift_getKeyPath();
  v259 = OUTLINED_FUNCTION_173_2();
  sub_26831A8D8(v259, v260, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(&a12);
  sub_26812C310(v243, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v258, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v387, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v190, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v384, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v373, &qword_280252798, &qword_2683E7680);
  OUTLINED_FUNCTION_7_13(v385);
  v261 = v372;
  sub_26812C310(v372, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v262, v263, v264, v215);
  sub_2683CE2B8();
  swift_getKeyPath();
  v265 = v375;
  sub_26815E30C(v375, &selRef_subThoroughfare);
  sub_2683CE2C8();
  KeyPath = swift_getKeyPath();
  v266 = v261;
  OUTLINED_FUNCTION_51_10();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, *(v267 - 256));
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v215);
  v274 = v373;
  v275 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v275, v276, v277, v355);
  sub_26815E30C(v265, &selRef_locality);
  v355 = v278;
  v279 = v384;
  v280 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v280, v281, v282, v368);
  v283 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v283, v284, v285, v367);
  v286 = OUTLINED_FUNCTION_50_13();
  __swift_storeEnumTagSinglePayload(v286, v287, v288, v366);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v289, v290, v291, v215);
  v292 = OUTLINED_FUNCTION_58_8();
  __swift_storeEnumTagSinglePayload(v292, v293, v294, v365);
  sub_2683CD188();
  sub_2683CE298();
  swift_getKeyPath();
  v388[6] = 2;
  sub_2683CE2A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_186_1();
  swift_getKeyPath();
  sub_26831A8D8(v266, v369, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_95_5();
  OUTLINED_FUNCTION_111_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  v295 = v371;
  sub_26831A8D8(v385, v371, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2(&v389);
  sub_26831A8D8(v296, v297, &qword_280252798, &qword_2683E7680);
  OUTLINED_FUNCTION_95_5();
  OUTLINED_FUNCTION_138_2(&v376);
  swift_getKeyPath();
  OUTLINED_FUNCTION_186_1();
  swift_getKeyPath();
  sub_26831A8D8(v279, v378, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_138_2(&a15);
  swift_getKeyPath();
  OUTLINED_FUNCTION_145_2();
  sub_26831A8D8(v298, v299, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(&a14);
  swift_getKeyPath();
  v300 = v387;
  OUTLINED_FUNCTION_135_2();
  sub_26831A8D8(v301, v302, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(&a13);
  swift_getKeyPath();
  v303 = v382;
  sub_26831A8D8(v382, v295, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_180_1();
  swift_getKeyPath();
  v304 = OUTLINED_FUNCTION_173_2();
  sub_26831A8D8(v304, v305, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_138_2(&a12);
  sub_26812C310(v274, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v303, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v300, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v383, &qword_280252698, &qword_2683E6E70);
  v306 = v384;
  sub_26812C310(v384, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v373, &qword_280252798, &qword_2683E7680);
  OUTLINED_FUNCTION_7_13(v385);
  v307 = v372;
  sub_26812C310(v372, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v308, v309, v310, v215);
  v311 = v380;
  v312 = v377;
  sub_2683CE2B8();
  swift_getKeyPath();
  v313 = v375;
  sub_26815E30C(v375, &selRef_postalCode);
  sub_2683CE2C8();
  (*(v363 + 16))(v374, v312, v311);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v314, v315, v316, v311);
  v317 = OUTLINED_FUNCTION_43_13();
  OUTLINED_FUNCTION_146_1(v317, v318, v319);
  v320 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v320, v321, v322, v239);
  v382 = sub_26815E30C(v313, &selRef_name);
  v373 = v323;
  v324 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v324, v325, v326, v368);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v367);
  v330 = OUTLINED_FUNCTION_50_13();
  __swift_storeEnumTagSinglePayload(v330, v331, v332, v366);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  v334 = OUTLINED_FUNCTION_73_5(&a11);
  __swift_storeEnumTagSinglePayload(v334, v335, v336, v333);
  v337 = OUTLINED_FUNCTION_58_8();
  __swift_storeEnumTagSinglePayload(v337, v338, v339, v365);
  if (qword_28024CAB0 != -1)
  {
    swift_once();
  }

  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524C8, &qword_2683E6CA0);
  OUTLINED_FUNCTION_72_3(v340, qword_280252308);
  v341 = OUTLINED_FUNCTION_256_0();
  type metadata accessor for Common.PointOfInterest(v341);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2(&a9);
  sub_26831A8D8(v342, v343, v344, v345);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v346, v347);
  OUTLINED_FUNCTION_29_24();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v307, v369, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_111_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2E8();
  swift_getKeyPath();
  sub_26831A8D8(v370, v385, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(v388);
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  sub_26831A8D8(v306, v378, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(&a15);
  swift_getKeyPath();
  v348 = v383;
  sub_26831A8D8(v383, v379, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(&a14);
  swift_getKeyPath();
  sub_26831A8D8(v387, v376, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(&a13);
  swift_getKeyPath();
  v349 = v364;
  sub_26831A8D8(v364, v357, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_29_24();
  sub_2683CE2B8();
  swift_getKeyPath();
  v350 = v386;
  sub_26831A8D8(v386, v381, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(&a12);

  sub_26812C310(v350, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v349, &qword_280252708, &qword_2683E71A0);
  sub_26812C310(v387, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v348, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v384, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v370, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v372, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v374, &qword_280252720, &qword_2683E71B8);
  OUTLINED_FUNCTION_12_15(&a10);
  v351(v377, v380);
  OUTLINED_FUNCTION_29_0();
}

unint64_t sub_2683ABC70(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t (*sub_2683ABCD0(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_103_4(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_39();
    v7 = MEMORY[0x26D616C90](v9);
  }

  *v3 = v7;
  return sub_2683ABE5C;
}

uint64_t sub_2683ABD34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252830, &qword_2683E7CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683ABDA4(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_2683ABDEC(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_103_4(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_39();
    v7 = MEMORY[0x26D616C90](v9);
  }

  *v3 = v7;
  return sub_2683ABE50;
}

uint64_t OUTLINED_FUNCTION_23_30(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, *(v2 - 344));
  v3 = *(v2 - 352);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_5()
{
  result = *(v0 - 112);
  v2 = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_96_4()
{
  result = v0;
  v3 = *(v1 - 320);
  v4 = *(v1 - 240);
  v5 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, *(v3 - 368));
  v4 = *(v3 - 328);
  v5 = *(v3 - 336);

  return sub_2683CD188();
}

unint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2681238C4(a3);

  return sub_2683ABC70(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1)
{

  return sub_26831A8D8(a1, v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_137_2()
{
  v1 = *(*(v0 - 160) + 16);
  result = *(v0 - 96);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_139_1@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26831A8D8(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_142_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26831A8D8(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_146_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 368);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_147_1@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26831A8D8(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_153_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 360);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_164_1()
{

  return sub_2683CE298();
}

uint64_t OUTLINED_FUNCTION_165_1()
{

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_166_2@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_167_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 496);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_168_2()
{

  return sub_2683CE2C8();
}

uint64_t OUTLINED_FUNCTION_171_2()
{
  result = *(v0 - 152);
  v2 = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_173_2()
{
  result = *(v0 - 112);
  v2 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_180_1()
{

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 232);

  return sub_26831A8D8(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_182_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 184);

  return sub_26831A8D8(a1, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_183_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 192);

  return sub_26831A8D8(a1, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_184_2@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return sub_2683CE2C8();
}

uint64_t OUTLINED_FUNCTION_186_1()
{

  return sub_2683CE2C8();
}

uint64_t sub_2683AC9B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2683AC9F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2683ACA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2683ACAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B578] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268195F80;

  return MEMORY[0x2821B9F10](a1, a2, a3, a4);
}

uint64_t sub_2683ACB94()
{
  v0 = sub_2683CED28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2683CEC88();
  sub_2683CEC78();
  sub_2683CEC68();

  sub_2683CED38();

  (*(v1 + 104))(v5, *MEMORY[0x277D61DD0], v0);
  v8 = sub_2683CED18();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_2683ACD20(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2683ACDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = *(a3 - 8);
  v39 = a2;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeatureSupportState();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v34 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = OUTLINED_FUNCTION_0_3(TupleTypeMetadata2);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v34 - v23;
  v25 = *(v22 + 48);
  v37 = v11;
  v26 = *(v11 + 16);
  v26(&v34 - v23, a1, v8);
  v26(&v24[v25], v39, v8);
  OUTLINED_FUNCTION_4_6(v24);
  if (v28)
  {
    v27 = 1;
    OUTLINED_FUNCTION_4_6(&v24[v25]);
    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v26(v15, v24, v8);
    OUTLINED_FUNCTION_4_6(&v24[v25]);
    if (!v28)
    {
      v29 = v38;
      v30 = &v24[v25];
      v31 = v35;
      (*(v38 + 32))(v35, v30, a3);
      v27 = sub_2683CFA58();
      v32 = *(v29 + 8);
      v32(v31, a3);
      v32(v15, a3);
LABEL_10:
      v19 = v37;
      goto LABEL_11;
    }

    (*(v38 + 8))(v15, a3);
  }

  v27 = 0;
  v8 = TupleTypeMetadata2;
LABEL_11:
  (*(v19 + 8))(v24, v8);
  return v27 & 1;
}

uint64_t sub_2683AD0A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return MEMORY[0x26D617190](0);
  }

  (*(v3 + 32))(v7, v11, v2);
  MEMORY[0x26D617190](1);
  sub_2683CFA08();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2683AD24C(uint64_t a1)
{
  sub_2683D0698();
  sub_2683AD0A0(v3, a1);
  return sub_2683D06D8();
}

uint64_t sub_2683AD2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2683D0698();
  sub_2683AD0A0(v6, a2);
  return sub_2683D06D8();
}

uint64_t sub_2683AD314()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v3 = *v0;
  OUTLINED_FUNCTION_21_16();
  v1[10] = *(v4 + 88);
  OUTLINED_FUNCTION_21_16();
  v1[11] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[12] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_0_3(AssociatedTypeWitness);
  v1[13] = v7;
  v1[14] = *(v8 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = *(*(type metadata accessor for FeatureSupportState() - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683AD454, 0, 0);
}

uint64_t sub_2683AD454()
{
  v70 = v0;
  v1 = v0[9].i64[0];
  v2 = v0[6].i64[0];
  v3 = *(*v0[4].i64[1] + 104);
  (*(v0[5].i64[0] + 24))(v0[5].i64[1]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = v0[4].i64[1];
    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);

    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE98();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[5].i64[0];
      v8 = v0[5].i64[1];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v69 = v11;
      *v10 = 136315138;
      v12 = (*(v9 + 16))(v8, v9);
      v14 = sub_2681610A0(v12, v13, &v69);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2680EB000, v6, v7, "[FeatureSupportGuardFlow] %s is supported.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v15 = v0[4].i64[0];
    *(v0[4].i64[1] + 16) = 0;
    sub_2683CC3F8();
  }

  else
  {
    v67 = (v0[6].i64[1] + 32);
    v66 = *v67;
    (*v67)(v0[8].i64[1], v0[9].i64[0], v0[6].i64[0]);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v16 = v0[8].i64[0];
    v17 = v0[8].i64[1];
    v18 = v0[6].i64[0];
    v19 = v0[6].i64[1];
    v20 = v0[4].i64[1];
    v21 = sub_2683CF7E8();
    __swift_project_value_buffer(v21, qword_28027C958);
    v68 = *(v19 + 16);
    v68(v16, v17, v18);

    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE98();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[8].i64[0];
    if (v24)
    {
      v27 = v0[6].i64[0];
      v26 = v0[6].i64[1];
      v28 = v0[5].i64[0];
      v61 = v0[5].i64[1];
      v62 = v0[7].i64[1];
      v29 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v29 = 136315394;
      v63 = v23;
      v30 = (*(v28 + 16))(v61, v28);
      v32 = sub_2681610A0(v30, v31, &v69);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v68(v62, v25, v27);
      v33 = sub_2683CFAD8();
      v35 = v34;
      v36 = OUTLINED_FUNCTION_5_55();
      v65 = v37;
      v37(v36, v27);
      v38 = sub_2681610A0(v33, v35, &v69);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_2680EB000, v22, v63, "[FeatureSupportGuardFlow] %s is unsupported with reason: %s.", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v39 = v0[6].i64[0];
      v40 = v0[6].i64[1];

      v41 = OUTLINED_FUNCTION_5_55();
      v65 = v42;
      v42(v41, v39);
    }

    v43 = v0[8].i64[1];
    v45 = v0[7].i64[0];
    v44 = v0[7].i64[1];
    v46 = v0[6].i64[0];
    v47 = v0[6].i64[1];
    v49 = v0[4].i64[0];
    v48 = v0[4].i64[1];
    v64 = v0[5];
    sub_26813CA00(v48 + *(*v48 + 112), v0[1].i64);
    v68(v44, v43, v46);
    v50 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v51 = swift_allocObject();
    v51[1] = vextq_s8(v64, v64, 8uLL);
    v51[2].i64[0] = v48;
    v66(v51->i64 + v50, v44, v46);
    v52 = sub_2683CB948();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();

    v0[3].i64[1] = sub_2683CB938();
    sub_2683CC3D8();
    v65(v43, v46);
  }

  v56 = v0[8].i64[1];
  v55 = v0[9].i64[0];
  v58 = v0[7].i64[1];
  v57 = v0[8].i64[0];

  OUTLINED_FUNCTION_40();

  return v59();
}

uint64_t sub_2683AD9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 88);
  v8 = *(v7 + 32);
  v9 = *(*a2 + 80);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_268133EC8;

  return v13(a1, a3, v9, v7);
}

uint64_t sub_2683ADB3C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_21_16();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_21_16();
  v5 = *(v4 + 88);
  type metadata accessor for FeatureSupportGuardFlow();
  swift_getWitnessTable();
  return sub_2683CBF48();
}

uint64_t *sub_2683ADBD8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_21_16();
  (*(*(*(v3 + 80) - 8) + 8))(v0 + *(v2 + 104));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t sub_2683ADC60()
{
  sub_2683ADBD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2683ADCF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268133EC8;

  return sub_2683AD314();
}

uint64_t sub_2683ADE00(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_268133EC8;

  return sub_2683AD9C0(a1, v8, v1 + v7);
}

uint64_t sub_2683ADF00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2683ADF5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2683AE0D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t static Snippet.Contact.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2683D0598(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_9_0();

      return sub_2683D0598();
    }
  }

  return result;
}

uint64_t Snippet.Contact.init(identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Snippet.Contact.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Contact.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Contact.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Contact.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2683AE4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_2683AE58C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2683AE5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2683AE4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2683AE5F0(uint64_t a1)
{
  v2 = sub_2683AE7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683AE62C(uint64_t a1)
{
  v2 = sub_2683AE7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Contact.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254400, &qword_2683F9040);
  OUTLINED_FUNCTION_0_3(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2683AE7C4();
  sub_2683D0718();
  sub_2683D0518();
  if (!v1)
  {
    sub_2683D0518();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_2683AE7C4()
{
  result = qword_280254408;
  if (!qword_280254408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254408);
  }

  return result;
}

uint64_t Snippet.Contact.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2683CFB48();

  return sub_2683CFB48();
}

uint64_t Snippet.Contact.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.Contact.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254410, &qword_2683F9048);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2683AE7C4();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v14 = sub_2683D0478();
    v16 = v15;
    v17 = sub_2683D0478();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v12, v5);
    *v4 = v14;
    v4[1] = v16;
    v4[2] = v22;
    v4[3] = v19;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_62();
}

unint64_t sub_2683AEAEC()
{
  result = qword_280254418;
  if (!qword_280254418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254418);
  }

  return result;
}

unint64_t sub_2683AEB64()
{
  result = qword_280254420;
  if (!qword_280254420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254420);
  }

  return result;
}

unint64_t sub_2683AEBBC()
{
  result = qword_280254428;
  if (!qword_280254428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254428);
  }

  return result;
}

unint64_t sub_2683AEC14()
{
  result = qword_280254430;
  if (!qword_280254430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254430);
  }

  return result;
}

uint64_t sub_2683AEC68(void *a1, void *a2)
{
  sub_2683AECC8(a1);
  if (!v3 && a2[2])
  {
    v4 = a2[4];
    v5 = a2[5];
  }

  return OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2683AECC8(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];
  v3 = objc_allocWithZone(MEMORY[0x277CBDB70]);

  v4 = sub_2683CFA68();
  v5 = [v3 initWithStringValue_];

  v6 = v5;
  v7 = [v6 formattedStringValue];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2683CFA78();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

uint64_t sub_2683AEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_26814BEB4(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_26814BEB4(a2, a4);
}

uint64_t sub_2683AEE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656E6F6870 && a2 == 0xE600000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000)
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

uint64_t sub_2683AEED0(char a1)
{
  if (a1)
  {
    return 0x736C69616D65;
  }

  else
  {
    return 0x73656E6F6870;
  }
}

void sub_2683AEEF8()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254478, &qword_2683F93D0);
  OUTLINED_FUNCTION_0_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2683AFC50();
  sub_2683D0718();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2682DECB8(&qword_280254480);
  OUTLINED_FUNCTION_3_57();
  if (!v0)
  {
    v13 = 1;
    OUTLINED_FUNCTION_3_57();
  }

  (*(v5 + 8))(v10, v3);
  OUTLINED_FUNCTION_62();
}

void sub_2683AF06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26814E9C0(a1, a2);

  sub_26814E9C0(a1, a3);
}

uint64_t sub_2683AF0AC(uint64_t a1, uint64_t a2)
{
  sub_2683D0698();
  sub_26814E9C0(v5, a1);
  sub_26814E9C0(v5, a2);
  return sub_2683D06D8();
}

void sub_2683AF104()
{
  OUTLINED_FUNCTION_63_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254458, &unk_2683F93C0);
  OUTLINED_FUNCTION_0_3(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2683AFC50();
  sub_2683D06F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  v12 = 0;
  sub_2682DECB8(&qword_280254470);
  OUTLINED_FUNCTION_2_66();
  v12 = 1;
  OUTLINED_FUNCTION_2_66();
  (*(v4 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2683AF2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2683AEE08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2683AF2F8(uint64_t a1)
{
  v2 = sub_2683AFC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683AF334(uint64_t a1)
{
  v2 = sub_2683AFC50();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2683AF370(void *a1@<X8>)
{
  sub_2683AF104();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_2683AF39C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2683AEEF8();
}

uint64_t sub_2683AF3C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2683D0698();
  sub_26814E9C0(v4, v1);
  sub_26814E9C0(v4, v2);
  return sub_2683D06D8();
}

id sub_2683AF42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D2250;
  result = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 32) = result;
  qword_28027CED0 = v0;
  return result;
}

void sub_2683AF4A8(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v60 = a2;

  sub_2682BFDDC(v9);
  v10 = sub_2683CFC98();

  v11 = [v8 predicateForContactsMatchingHandleStrings_];

  if (qword_28024CC70 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2C0, &unk_2683F9280);
  v12 = sub_2683CFC98();
  v60 = 0;
  v13 = [a3 unifiedContactsMatchingPredicate:v11 keysToFetch:v12 error:&v60];

  v14 = v60;
  if (!v13)
  {
    v36 = v60;
    v37 = sub_2683CB388();

    swift_willThrow();
LABEL_17:
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v38 = sub_2683CF7E8();
    __swift_project_value_buffer(v38, qword_28027C988);

    v39 = sub_2683CF7C8();
    v40 = sub_2683CFE78();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61 = a2;
      v62[0] = v42;
      *v41 = 136315138;
      v60 = a1;

      v43 = sub_2683CFAD8();
      v45 = sub_2681610A0(v43, v44, v62);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2680EB000, v39, v40, "[Snippet.ContactResolver] Could not find contact matching handles: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    goto LABEL_21;
  }

  sub_2683AFB9C();
  v15 = sub_2683CFCA8();
  v16 = v14;

  if (!sub_2683ABE58(v15))
  {

    goto LABEL_17;
  }

  sub_2683ABE60(0, (v15 & 0xC000000000000001) == 0, v15);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x26D616C90](0, v15);
  }

  else
  {
    v17 = *(v15 + 32);
  }

  v18 = v17;
  v19 = sub_268229348(v15);

  if (v19 >= 2)
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v20 = sub_2683CF7E8();
    __swift_project_value_buffer(v20, qword_28027C988);

    v21 = sub_2683CF7C8();
    v22 = sub_2683CFE78();

    if (os_log_type_enabled(v21, v22))
    {
      v59 = a4;
      v23 = swift_slowAlloc();
      v58 = v11;
      v24 = swift_slowAlloc();
      v61 = a2;
      v62[0] = v24;
      *v23 = 136315138;
      v60 = a1;

      v25 = sub_2683CFAD8();
      v27 = sub_2681610A0(v25, v26, v62);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2680EB000, v21, v22, "[Snippet.ContactResolver] Found multiple contacts when expecting only one. Taking first result matching: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v11 = v58;
      OUTLINED_FUNCTION_38();
      a4 = v59;
      OUTLINED_FUNCTION_38();
    }
  }

  v28 = sub_2683AFAE4(v18, a1, a2);
  if (!v29)
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v47 = sub_2683CF7E8();
    __swift_project_value_buffer(v47, qword_28027C988);
    v48 = v18;
    v39 = sub_2683CF7C8();
    v49 = sub_2683CFE78();

    if (os_log_type_enabled(v39, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v60 = v51;
      *v50 = 136315138;
      v52 = v48;
      v53 = [v52 description];
      v54 = sub_2683CFA78();
      v56 = v55;

      v57 = sub_2681610A0(v54, v56, &v60);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_2680EB000, v39, v49, "[Snippet.ContactResolver] Could not get name from contact %s)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      goto LABEL_22;
    }

LABEL_21:
LABEL_22:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    goto LABEL_23;
  }

  v30 = v28;
  v31 = v29;
  v32 = [v18 identifier];
  v33 = sub_2683CFA78();
  v35 = v34;

  *a4 = v33;
  *(a4 + 8) = v35;
  *(a4 + 16) = v30;
  *(a4 + 24) = v31;
LABEL_23:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2683AFAE4(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v6 setStyle_];
  v7 = [v6 stringFromContact_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2683CFA78();
  }

  else
  {
    v9 = sub_2683AEC68(a2, a3);
  }

  return v9;
}

unint64_t sub_2683AFB9C()
{
  result = qword_280254440;
  if (!qword_280254440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280254440);
  }

  return result;
}

unint64_t sub_2683AFBFC()
{
  result = qword_280254450;
  if (!qword_280254450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254450);
  }

  return result;
}

unint64_t sub_2683AFC50()
{
  result = qword_280254460;
  if (!qword_280254460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254460);
  }

  return result;
}

_BYTE *sub_2683AFCA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2683AFD84()
{
  result = qword_280254488;
  if (!qword_280254488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254488);
  }

  return result;
}

unint64_t sub_2683AFDDC()
{
  result = qword_280254490;
  if (!qword_280254490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254490);
  }

  return result;
}

unint64_t sub_2683AFE34()
{
  result = qword_280254498;
  if (!qword_280254498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254498);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_66()
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_3_57()
{

  return sub_2683D0548();
}

uint64_t type metadata accessor for CreateReminderShim.Wrapper()
{
  result = qword_2802544A0;
  if (!qword_2802544A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2683AFF60()
{
  result = sub_2683CB668();
  if (v1 <= 0x3F)
  {
    result = sub_2683AFFF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2683AFFF4()
{
  result = qword_28024F1C0;
  if (!qword_28024F1C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024F1C0);
  }

  return result;
}

uint64_t sub_2683B0060@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v5 = type metadata accessor for Snippet.Reminder(0);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_2681340E8(v2, &v18 - v14, &qword_28024DBC8, &qword_2683E3D30);
  v16 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a2, v16, 1, v5);
  }

  sub_26821F2C8(v15, v11);
  v19(v11);
  if (!v3)
  {
    sub_26815E454(v11);
    v16 = 0;
    return __swift_storeEnumTagSinglePayload(a2, v16, 1, v5);
  }

  result = sub_26815E454(v11);
  __break(1u);
  return result;
}

uint64_t sub_2683B01D0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_2683CF918();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544B0, &qword_2683F9578);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_2681340E8(v1, &v13 - v10, &qword_2802544B0, &qword_2683F9578);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_2683B03A0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v18 = a1;
  v3 = sub_2683CB528();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v17 - v14;
  sub_2681340E8(v1, &v17 - v14, &qword_28024DB08, qword_2683D5760);
  if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
  {
    return 2;
  }

  (*(v6 + 32))(v11, v15, v3);
  v18(&v19, v11);
  if (v2)
  {
    result = (*(v6 + 8))(v11, v3);
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v11, v3);
    return v19;
  }

  return result;
}

uint64_t sub_2683B055C@<X0>(int a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void (*)(uint64_t), uint64_t), void (*a11)(void (*)(uint64_t), uint64_t), void (*a12)(void))
{
  v116 = a7;
  v117 = a6;
  v121 = a5;
  v122 = a4;
  v126 = a3;
  v127 = a2;
  v129 = a9;
  v128 = a12;
  v123 = sub_2683CEDC8();
  v14 = OUTLINED_FUNCTION_0_3(v123);
  v125 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_3();
  v124 = v19 - v18;
  OUTLINED_FUNCTION_3_8();
  v20 = sub_2683CEDA8();
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v119 = v22;
  v120 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v118 = v26 - v25;
  OUTLINED_FUNCTION_3_8();
  v27 = sub_2683CF948();
  v28 = OUTLINED_FUNCTION_0_3(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_3();
  v35 = v34 - v33;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  v36 = OUTLINED_FUNCTION_1(v114);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19_3();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_56_3();
  v113 = v43;
  OUTLINED_FUNCTION_8_0();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v112 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v112 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v112 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v112 - v54;
  v115 = a1;
  v56 = sub_2683B2A68(a1);
  v58 = sub_2682DFB6C(v56, v57, a8);

  if (v58)
  {
    sub_2682B2AF0(v58);
  }

  else
  {
    v59 = sub_2683CEDD8();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v59);
  }

  v60 = OUTLINED_FUNCTION_69();
  sub_2681340E8(v60, v61, v62, v63);
  v64 = sub_2683CEDD8();
  if (__swift_getEnumTagSinglePayload(v53, 1, v64) != 1)
  {
    sub_2681340E8(v53, v50, qword_2802541A0, &qword_2683F6EF0);
    v70 = *(v64 - 8);
    v71 = (*(v70 + 88))(v50, v64);
    if (v71 == *MEMORY[0x277D1C680])
    {
      v72 = OUTLINED_FUNCTION_9_42();
      v73(v72);
      (*(v30 + 32))(v35, v50, v27);
      v127(v35);
      (*(v30 + 8))(v35, v27);
LABEL_16:
      sub_26812D9E0(v55, qword_2802541A0, &qword_2683F6EF0);
      return sub_26812D9E0(v53, qword_2802541A0, &qword_2683F6EF0);
    }

    if (v71 == *MEMORY[0x277D1C670])
    {
      v74 = OUTLINED_FUNCTION_9_42();
      v75(v74);
      v77 = v124;
      v76 = v125;
      v78 = v123;
      (*(v125 + 32))(v124, v50, v123);
      if (v122)
      {
        v79 = v121;
        v80 = v122;

        v81 = sub_2683CEDB8();
        v80(v81);
        a11(v80, v79);

        (*(v76 + 8))(v77, v78);
        goto LABEL_16;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v90 = sub_2683CF7E8();
      __swift_project_value_buffer(v90, qword_28027C958);
      sub_2681340E8(v55, v41, qword_2802541A0, &qword_2683F6EF0);
      v91 = sub_2683CF7C8();
      v92 = sub_2683CFE78();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v130[0] = v127;
        *v93 = 136315394;
        v94 = sub_2683B2A68(v115);
        v96 = sub_2681610A0(v94, v95, v130);

        *(v93 + 4) = v96;
        *(v93 + 12) = 2080;
        sub_2681340E8(v41, v113, qword_2802541A0, &qword_2683F6EF0);
        v97 = sub_2683CFAD8();
        v99 = v98;
        sub_26812D9E0(v41, qword_2802541A0, &qword_2683F6EF0);
        v100 = sub_2681610A0(v97, v99, v130);

        *(v93 + 14) = v100;
        _os_log_impl(&dword_2680EB000, v91, v92, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s", v93, 0x16u);
        OUTLINED_FUNCTION_8_44();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_36();
        OUTLINED_FUNCTION_38();

        (*(v125 + 8))(v124, v78);
        v65 = v55;
        goto LABEL_6;
      }

      sub_26812D9E0(v41, qword_2802541A0, &qword_2683F6EF0);
      (*(v76 + 8))(v77, v78);
    }

    else
    {
      if (v71 != *MEMORY[0x277D1C668])
      {
        sub_26812D9E0(v55, qword_2802541A0, &qword_2683F6EF0);
        (*(v70 + 8))(v50, v64);
        goto LABEL_7;
      }

      v82 = OUTLINED_FUNCTION_9_42();
      v83(v82);
      v85 = v118;
      v84 = v119;
      v86 = v120;
      (*(v119 + 32))(v118, v50, v120);
      v87 = v117;
      if (v117)
      {
        v88 = v116;

        v87(v85);
        a10(v87, v88);
        (*(v84 + 8))(v85, v86);
        goto LABEL_16;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v101 = sub_2683CF7E8();
      __swift_project_value_buffer(v101, qword_28027C958);
      sub_2681340E8(v55, v47, qword_2802541A0, &qword_2683F6EF0);
      v102 = sub_2683CF7C8();
      v103 = sub_2683CFE78();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v130[0] = v127;
        *v104 = 136315394;
        v105 = sub_2683B2A68(v115);
        v107 = sub_2681610A0(v105, v106, v130);

        *(v104 + 4) = v107;
        *(v104 + 12) = 2080;
        sub_2681340E8(v47, v113, qword_2802541A0, &qword_2683F6EF0);
        v108 = sub_2683CFAD8();
        v110 = v109;
        sub_26812D9E0(v47, qword_2802541A0, &qword_2683F6EF0);
        v111 = sub_2681610A0(v108, v110, v130);

        *(v104 + 14) = v111;
        _os_log_impl(&dword_2680EB000, v102, v103, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s", v104, 0x16u);
        OUTLINED_FUNCTION_8_44();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_36();
        OUTLINED_FUNCTION_38();

        (*(v119 + 8))(v118, v120);
        v65 = v55;
        goto LABEL_6;
      }

      sub_26812D9E0(v47, qword_2802541A0, &qword_2683F6EF0);
      (*(v84 + 8))(v85, v86);
    }

    v65 = v55;
    goto LABEL_6;
  }

  v65 = v55;
LABEL_6:
  sub_26812D9E0(v65, qword_2802541A0, &qword_2683F6EF0);
LABEL_7:
  v128(0);
  v66 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  return sub_26812D9E0(v53, qword_2802541A0, &qword_2683F6EF0);
}

uint64_t sub_2683B0F0C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v52 = sub_2683CF958();
  v3 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF928();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CF948();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v47 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v47 - v20);
  v22 = *(v11 + 16);
  v22(&v47 - v20, a1, v10);
  if ((*(v11 + 88))(v21, v10) == *MEMORY[0x277D72A58])
  {
    (*(v11 + 96))(v21, v10);
    v23 = *v21;
    v24 = swift_projectBox();
    (*(v6 + 16))(v9, v24, v5);
    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D72988])
    {
      (*(v6 + 96))(v9, v5);
      v25 = *v9;

      return v25;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v11 + 8))(v21, v10);
  }

  v26 = v53;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v27 = sub_2683CF7E8();
  __swift_project_value_buffer(v27, qword_28027C958);
  v22(v19, a1, v10);
  v22(v26, a1, v10);
  v28 = sub_2683CF7C8();
  v29 = sub_2683CFE78();
  if (os_log_type_enabled(v28, v29))
  {
    v48 = v29;
    v30 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v30 = 136315650;
    v31 = 0xE300000000000000;
    v32 = 7368801;
    switch(v49)
    {
      case 1:
        v31 = 0xE500000000000000;
        v32 = 0x656C746974;
        break;
      case 2:
        v31 = 0xE900000000000065;
        v32 = 0x6C7469547473696CLL;
        break;
      case 3:
        v31 = 0xEE00726569666974;
        v32 = 0x6E6564497473696CLL;
        break;
      case 4:
        v31 = 0xED0000797265636FLL;
        v32 = 0x724773497473696CLL;
        break;
      case 5:
        v31 = 0xE400000000000000;
        v32 = 1701669236;
        break;
      case 6:
        v31 = 0xE800000000000000;
        v32 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v31 = 0x80000002683FCFB0;
        v32 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v34 = sub_2681610A0(v32, v31, &v54);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    sub_2683CF938();
    v35 = sub_2683CFAD8();
    v37 = v36;
    v38 = *(v11 + 8);
    v38(v19, v10);
    v39 = sub_2681610A0(v35, v37, &v54);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    v40 = v53;
    v22(v50, v53, v10);
    v41 = sub_2683CFAD8();
    v43 = v42;
    v38(v40, v10);
    v44 = sub_2681610A0(v41, v43, &v54);

    *(v30 + 24) = v44;
    _os_log_impl(&dword_2680EB000, v28, v48, "Shim parameter %s type mismatch. Expected BOOL, got: %s - %s", v30, 0x20u);
    v45 = v47;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v45, -1, -1);
    MEMORY[0x26D617A40](v30, -1, -1);
  }

  else
  {

    v33 = *(v11 + 8);
    v33(v26, v10);
    v33(v19, v10);
  }

  return 2;
}

uint64_t sub_2683B1584(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v90 = sub_2683CF958();
  v3 = OUTLINED_FUNCTION_1(v90);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v89 = v7 - v6;
  OUTLINED_FUNCTION_3_8();
  v8 = sub_2683CF928();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = sub_2683CF948();
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_3();
  v88 = v23 - v24;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_56_3();
  v94 = v26;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_56_3();
  v93 = v28;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  v31 = (&v84 - v30);
  v32 = sub_2683CF8F8();
  v33 = OUTLINED_FUNCTION_0_3(v32);
  v85 = v34;
  v86 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19_3();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v84 - v41;
  v43 = v20[2];
  v91 = a1;
  v92 = v43;
  v43(v31, a1, v17);
  v44 = v20[11];
  v45 = OUTLINED_FUNCTION_10_40();
  if (v46(v45) == *MEMORY[0x277D72A58])
  {
    v47 = v20[12];
    v48 = OUTLINED_FUNCTION_10_40();
    v49(v48);
    v50 = *v31;
    v51 = swift_projectBox();
    (*(v11 + 16))(v16, v51, v8);
    if ((*(v11 + 88))(v16, v8) == *MEMORY[0x277D72970])
    {
      (*(v11 + 96))(v16, v8);
      v53 = v85;
      v52 = v86;
      (*(v85 + 32))(v42, v16, v86);

      (*(v53 + 16))(v39, v42, v52);
      v54 = sub_2681E6B5C(v39);
      (*(v53 + 8))(v42, v52);
      return v54;
    }

    (*(v11 + 8))(v16, v8);
  }

  else
  {
    v55 = v20[1];
    v56 = OUTLINED_FUNCTION_10_40();
    v57(v56);
  }

  v59 = v93;
  v58 = v94;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v60 = sub_2683CF7E8();
  v61 = __swift_project_value_buffer(v60, qword_28027C958);
  v63 = v91;
  v62 = v92;
  v92(v59, v91, v17);
  v62(v58, v63, v17);
  v64 = v61;
  v65 = sub_2683CF7C8();
  v66 = sub_2683CFE78();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v95 = v91;
    *v67 = 136315650;
    v68 = OUTLINED_FUNCTION_11_47();
    switch(v87)
    {
      case 1:
        v64 = 0xE700000000000000;
        v68 = 0x746E65746E6F63;
        break;
      case 2:
        v64 = 0xE600000000000000;
        v68 = 0x7265646C6F66;
        break;
      case 3:
        v64 = 0xE300000000000000;
        v68 = 7368801;
        break;
      default:
        break;
    }

    v71 = sub_2681610A0(v68, v64, &v95);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    v72 = v93;
    sub_2683CF938();
    v73 = sub_2683CFAD8();
    v75 = v74;
    v76 = v20[1];
    v76(v72, v17);
    v77 = sub_2681610A0(v73, v75, &v95);

    *(v67 + 14) = v77;
    *(v67 + 22) = 2080;
    v92(v88, v94, v17);
    v78 = sub_2683CFAD8();
    v80 = v79;
    v81 = OUTLINED_FUNCTION_10_40();
    (v76)(v81);
    v82 = sub_2681610A0(v78, v80, &v95);

    *(v67 + 24) = v82;
    _os_log_impl(&dword_2680EB000, v65, v66, "Shim parameter %s type mismatch. Expected app, got: %s - %s", v67, 0x20u);
    OUTLINED_FUNCTION_8_44();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v69 = v20[1];
    v69(v58, v17);
    v70 = OUTLINED_FUNCTION_10_40();
    (v69)(v70);
  }

  return 0;
}

uint64_t sub_2683B1BF4(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = sub_2683CF958();
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF928();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CF948();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = (&v61 - v19);
  v21 = sub_2683CF8F8();
  v62 = *(v21 - 8);
  v63 = v21;
  v22 = *(v62 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  v28 = *(v11 + 16);
  v68 = a1;
  v69 = v28;
  v28(v20, a1, v10);
  if ((*(v11 + 88))(v20, v10) == *MEMORY[0x277D72A58])
  {
    (*(v11 + 96))(v20, v10);
    v29 = *v20;
    v30 = swift_projectBox();
    (*(v6 + 16))(v9, v30, v5);
    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D72970])
    {
      (*(v6 + 96))(v9, v5);
      v32 = v62;
      v31 = v63;
      (*(v62 + 32))(v27, v9, v63);

      (*(v32 + 16))(v25, v27, v31);
      v33 = sub_2681E6B5C(v25);
      (*(v32 + 8))(v27, v31);
      return v33;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v11 + 8))(v20, v10);
  }

  v34 = v11;
  v36 = v70;
  v35 = v71;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v37 = sub_2683CF7E8();
  __swift_project_value_buffer(v37, qword_28027C958);
  v39 = v68;
  v38 = v69;
  v69(v36, v68, v10);
  v38(v35, v39, v10);
  v40 = sub_2683CF7C8();
  v41 = sub_2683CFE78();
  if (os_log_type_enabled(v40, v41))
  {
    LODWORD(v68) = v41;
    v42 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v72 = v63;
    *v42 = 136315650;
    v43 = 0xE300000000000000;
    v44 = 7368801;
    v45 = v34;
    switch(v64)
    {
      case 1:
        v43 = 0xE500000000000000;
        v44 = 0x656C746974;
        break;
      case 2:
        v43 = 0xE900000000000065;
        v44 = 0x6C7469547473696CLL;
        break;
      case 3:
        v43 = 0xEE00726569666974;
        v44 = 0x6E6564497473696CLL;
        break;
      case 4:
        v43 = 0xED0000797265636FLL;
        v44 = 0x724773497473696CLL;
        break;
      case 5:
        v43 = 0xE400000000000000;
        v44 = 1701669236;
        break;
      case 6:
        v43 = 0xE800000000000000;
        v44 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v43 = 0x80000002683FCFB0;
        v44 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v47 = sub_2681610A0(v44, v43, &v72);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = v70;
    sub_2683CF938();
    v49 = sub_2683CFAD8();
    v51 = v50;
    v52 = *(v45 + 8);
    v52(v48, v10);
    v53 = sub_2681610A0(v49, v51, &v72);

    *(v42 + 14) = v53;
    *(v42 + 22) = 2080;
    v54 = v71;
    v69(v65, v71, v10);
    v55 = sub_2683CFAD8();
    v57 = v56;
    v52(v54, v10);
    v58 = sub_2681610A0(v55, v57, &v72);

    *(v42 + 24) = v58;
    _os_log_impl(&dword_2680EB000, v40, v68, "Shim parameter %s type mismatch. Expected app, got: %s - %s", v42, 0x20u);
    v59 = v63;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v59, -1, -1);
    MEMORY[0x26D617A40](v42, -1, -1);
  }

  else
  {

    v46 = *(v34 + 8);
    v46(v35, v10);
    v46(v36, v10);
  }

  return 0;
}

uint64_t sub_2683B239C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26839B730();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_2683B23C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t (*a4)(void)@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a5;
  v84 = a3;
  v85 = a4;
  v86 = a6;
  v79 = a2;
  v82 = sub_2683CF958();
  v7 = OUTLINED_FUNCTION_1(v82);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v81 = v11 - v10;
  OUTLINED_FUNCTION_3_8();
  v12 = sub_2683CF928();
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  v21 = sub_2683CF948();
  v22 = OUTLINED_FUNCTION_0_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19_3();
  v80 = (v27 - v28);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_56_3();
  v87 = v30;
  OUTLINED_FUNCTION_8_0();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v77 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = (&v77 - v35);
  v37 = *(v24 + 16);
  v37(&v77 - v35, a1, v21);
  if ((*(v24 + 88))(v36, v21) == *MEMORY[0x277D72A58])
  {
    (*(v24 + 96))(v36, v21);
    v38 = *v36;
    v39 = swift_projectBox();
    (*(v15 + 16))(v20, v39, v12);
    v40 = *(v15 + 88);
    v41 = OUTLINED_FUNCTION_69();
    v43 = v42(v41);
    if (v43 == *v84)
    {
      v44 = *(v15 + 96);
      v45 = OUTLINED_FUNCTION_69();
      v46(v45);
      v47 = v85(0);
      OUTLINED_FUNCTION_1(v47);
      v49 = v86;
      (*(v48 + 32))(v86, v20, v47);

      v50 = v49;
      v51 = 0;
      v52 = 1;
      v53 = v47;
      return __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    }

    v54 = *(v15 + 8);
    v55 = OUTLINED_FUNCTION_69();
    v56(v55);
  }

  else
  {
    (*(v24 + 8))(v36, v21);
  }

  v57 = v87;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v58 = sub_2683CF7E8();
  __swift_project_value_buffer(v58, qword_28027C958);
  v37(v34, a1, v21);
  v37(v57, a1, v21);
  v59 = sub_2683CF7C8();
  v60 = sub_2683CFE78();
  if (os_log_type_enabled(v59, v60))
  {
    LODWORD(v84) = v60;
    v61 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88 = v78;
    *v61 = 136315650;
    v62 = 0xE300000000000000;
    v63 = 7368801;
    switch(v79)
    {
      case 1:
        v63 = OUTLINED_FUNCTION_11_47();
        break;
      case 2:
        v62 = 0xE900000000000065;
        v63 = 0x6C7469547473696CLL;
        break;
      case 3:
        v62 = 0xEE00726569666974;
        v63 = 0x6E6564497473696CLL;
        break;
      case 4:
        v62 = 0xED0000797265636FLL;
        v63 = 0x724773497473696CLL;
        break;
      case 5:
        v62 = 0xE400000000000000;
        v63 = 1701669236;
        break;
      case 6:
        v62 = 0xE800000000000000;
        v63 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v62 = 0x80000002683FCFB0;
        v63 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v65 = sub_2681610A0(v63, v62, &v88);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    sub_2683CF938();
    v66 = sub_2683CFAD8();
    v68 = v67;
    v69 = *(v24 + 8);
    v69(v34, v21);
    v70 = sub_2681610A0(v66, v68, &v88);

    *(v61 + 14) = v70;
    *(v61 + 22) = 2080;
    v71 = v87;
    v37(v80, v87, v21);
    v72 = sub_2683CFAD8();
    v74 = v73;
    v69(v71, v21);
    v75 = sub_2681610A0(v72, v74, &v88);

    *(v61 + 24) = v75;
    _os_log_impl(&dword_2680EB000, v59, v84, v83, v61, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_15_36();
  }

  else
  {

    v64 = *(v24 + 8);
    v64(v57, v21);
    v64(v34, v21);
  }

  v85(0);
  v50 = OUTLINED_FUNCTION_35_22();
  return __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
}

uint64_t sub_2683B2A1C()
{
  v0 = sub_2683D0408();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2683B2A68(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6C7469547473696CLL;
      break;
    case 3:
      result = 0x6E6564497473696CLL;
      break;
    case 4:
      result = 0x724773497473696CLL;
      break;
    case 5:
      result = 1701669236;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2683B2B7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683B2A1C();
  *a2 = result;
  return result;
}

unint64_t sub_2683B2BAC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2683B2A68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2683B2C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544B0, &qword_2683F9578);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8[-v3];
  v5 = *v0;
  v12 = 6;
  v11 = &v12;
  sub_2683B055C(6, sub_2683B3A84, v10, 0, 0, 0, 0, v5, &v8[-v3], sub_2683B3C10, sub_2683B3C10, MEMORY[0x277D72930]);
  v9 = v0;
  v6 = sub_2683B01D0(sub_2683B3A8C);
  sub_26812D9E0(v4, &qword_2802544B0, &qword_2683F9578);
  return v6;
}

void sub_2683B2D98(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_2683CF908();
  v5 = *a1;
  sub_268399904();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v4 event:v7];

  *a2 = v8;
}

uint64_t sub_2683B2E6C()
{
  v1 = sub_2683CB528();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  v13 = *v0;
  LOBYTE(v17) = 5;
  v16 = &v17;
  sub_2683B055C(5, sub_2683B3A7C, v15, 0, 0, 0, 0, v13, &v15[-v11], sub_2683B3C10, sub_2683B3C10, MEMORY[0x277CC9578]);
  sub_2681340E8(v12, v10, &qword_28024DB08, qword_2683D5760);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    sub_26812D9E0(v12, &qword_28024DB08, qword_2683D5760);
    return 0;
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    sub_2683B30F4(v5, &v17);
    (*(v2 + 8))(v5, v1);
    sub_26812D9E0(v12, &qword_28024DB08, qword_2683D5760);
    return v17;
  }
}

uint64_t sub_2683B30F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27[1] = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v27[0] = sub_2683CB7D8();
  v8 = *(v27[0] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27[0]);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2683CB7A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2683CB0D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CB768();
  sub_2683CB7C8();
  sub_2683CB6A8();
  (*(v8 + 8))(v11, v27[0]);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 16))(v7, v21, v17);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v17);
  v22 = v28;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v17);
  v23 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v24 = sub_2681D2B74(v7, v22);
  v25 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

  result = (*(v18 + 8))(v21, v17);
  *v29 = v25;
  return result;
}

uint64_t sub_2683B3424()
{
  v1 = *v0;
  sub_268399224();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2683D2250;
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);

  *(v3 + 32) = sub_26835E5F8();

  return v3;
}

id sub_2683B3520()
{
  v1 = v0;
  v2 = *v0;
  sub_268399224();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v3 = sub_26812A050(v3, v4);
    if ((v3 & 1) == 0)
    {

      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x28223BE20](v3);
  sub_268399904();
  v8 = v7 != 2 && (v7 & 1) != 0;
  Reminder = type metadata accessor for CreateReminderShim.Wrapper();
  v10 = *(Reminder + 20);
  v11 = (v1 + *(Reminder + 24));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = (*(v13 + 32))(v12, v13);
  v15 = sub_2681DB5EC(v6, v5, v8, v1 + v10, v14 & 1);

  return v15;
}

id sub_2683B36BC()
{
  v1 = *v0;
  sub_268399224();
  v3 = v2;
  v5 = v4;
  v6 = sub_2683B3520();
  if (!v6)
  {
    if (!v5)
    {
      return 0;
    }

    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v6 = sub_26835E5F8();
  }

  v7 = v6;
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  return sub_268177814(v7, MEMORY[0x277D84F90], 0, 0, v3, v5);
}

id sub_2683B37B4()
{
  v0 = sub_2683B36BC();
  v1 = sub_2683B3424();
  v2 = sub_2683B2C44();
  v3 = sub_2683B2E6C();
  v4 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v5 = sub_268213240(v0, v1, v2, v3, 0);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = v5;
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_2683CFA78();
    v16 = v15;

    v17 = sub_2681610A0(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2680EB000, v8, v9, "⚙️ [CreateReminderShimWrapper] made intent: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v18 = sub_26821AD1C();
  return v18;
}

uint64_t sub_2683B3984()
{
  v1 = sub_2683B37B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

_BYTE *storeEnumTagSinglePayload for CreateReminderShim.Parameters.ParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683B3BBC()
{
  result = qword_2802544B8;
  if (!qword_2802544B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802544B8);
  }

  return result;
}

uint64_t sub_2683B3C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_2683CE448();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544C0, &qword_2683F9630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544C8, &qword_2683F9638);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = (v51 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v51 - v18;
  v20 = sub_2683CD628();
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CE438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC0, &qword_2683E6550);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
    v61 = v27;
    v62 = v23;
    (*(v23 + 32))(v27, v19, v20);
    v69 = v20;
    v70 = MEMORY[0x277D5E728];
    __swift_allocate_boxed_opaque_existential_0(v68);
    sub_268174A2C();
    v60 = sub_2683CE3E8();
    v57 = v28;
    v29 = sub_2683CE368();
    v58 = v30;
    v59 = v29;
    v56 = sub_2683CE378();
    v55 = sub_2683CE408();
    v54 = sub_2683CE3A8();
    v53 = sub_2683CE348();
    v51[2] = v31;
    v51[3] = sub_2683CE388();
    v52 = sub_2683CE418();
    sub_2683CE3F8();
    sub_2683CE3D8();
    sub_2683CE3B8();
    sub_2683CE3C8();
    sub_2683CE358();
    sub_2683CE398();
    sub_2683CE428();
    return (*(v62 + 8))(v61, v20);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    sub_2683B4234(v19);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v33 = sub_2683CF7E8();
    __swift_project_value_buffer(v33, qword_28027C958);
    v34 = *(v6 + 16);
    v34(v10, v1, v3);
    v35 = v3;
    v36 = sub_2683CF7C8();
    v37 = sub_2683CFE88();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v34;
      v40 = v39;
      v67 = v39;
      *v38 = 136315138;
      v62 = v35;
      sub_2683CE438();
      __swift_project_boxed_opaque_existential_1(v68, v69);
      DynamicType = swift_getDynamicType();
      v42 = v70;
      __swift_destroy_boxed_opaque_existential_0(v68);
      v65 = DynamicType;
      v66 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC8, &qword_2683D5758);
      v43 = sub_2683CFAD8();
      v45 = v44;
      v46 = v10;
      v47 = v62;
      (*(v6 + 8))(v46, v62);
      v48 = sub_2681610A0(v43, v45, &v67);

      *(v38 + 4) = v48;
      _os_log_impl(&dword_2680EB000, v36, v37, "Root node of intent was not a NonTerminalIntentNode, was: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v49 = v40;
      v50 = v63;
      MEMORY[0x26D617A40](v49, -1, -1);
      MEMORY[0x26D617A40](v38, -1, -1);

      return v50(v64, v2, v47);
    }

    else
    {

      (*(v6 + 8))(v10, v35);
      return (v34)(v64, v2, v35);
    }
  }
}

uint64_t sub_2683B4234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2683B429C@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  v50 = sub_2683CB668();
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2683CCBA8();
  OUTLINED_FUNCTION_1_7();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_1();
  v54 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  type metadata accessor for AppSelectionTrainingLogger();
  v22 = sub_26821714C();
  v55 = v21;
  v56 = v14;
  v23 = *(v14 + 16);
  v57 = v12;
  v52 = v23;
  v53 = v14 + 16;
  v23(v21, a1, v12);
  sub_268134034(a2, v77);
  OUTLINED_FUNCTION_19_11();
  v24 = swift_allocObject();
  sub_268128148(v77, v24 + 16);
  v51 = v24;
  *(v24 + 56) = v22;
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v76[3] = v25;
  v76[4] = *(v26 + 8);
  __swift_allocate_boxed_opaque_existential_0(v76);
  OUTLINED_FUNCTION_23_0(v25);
  (*(v27 + 16))();
  *&v71 = sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  v58 = v22;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544D0, &qword_2683F9698);
  v28 = sub_2683CFAD8();
  v49 = v29;
  v30 = sub_2683CF6C8();
  v31 = sub_2683CF6B8();
  v75[3] = v30;
  v75[4] = MEMORY[0x277D5FDD8];
  v75[0] = v31;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_2683CC088();
  sub_2681840DC(v75, &v71, &qword_28024E2C0, &unk_2683D66D0);
  if (*(&v72 + 1))
  {
    OUTLINED_FUNCTION_20_2();
    v32 = swift_allocObject();
    v33 = v72;
    *(v32 + 16) = v71;
    *(v32 + 32) = v33;
    *(v32 + 48) = v73;
    v34 = &off_287900140;
    v35 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_268184140(&v71, &qword_28024E2C0, &unk_2683D66D0);
    v32 = 0;
    v35 = 0;
    v34 = 0;
    v60[1] = 0;
    v60[2] = 0;
  }

  v60[0] = v32;
  v60[3] = v35;
  v60[4] = v34;
  v36 = type metadata accessor for InstalledAppProvider();
  v70[3] = v36;
  v70[4] = &off_2879042B8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  v38 = *(v6 + 16);
  v39 = v50;
  v38(boxed_opaque_existential_0 + *(v36 + 20), v11, v50);
  *boxed_opaque_existential_0 = 0;
  v40 = type metadata accessor for RegexAppSearcher();
  v74[3] = v40;
  v74[4] = &off_28790BB20;
  v41 = __swift_allocate_boxed_opaque_existential_0(v74);
  sub_268134034(v70, v41);
  v38(v41 + *(v40 + 20), v11, v39);
  v74[8] = &type metadata for InferredAppResolver;
  v74[9] = &off_287902D60;
  v42 = swift_allocObject();
  v74[5] = v42;
  sub_268134034(v70, v42 + 32);
  sub_2681840DC(v60, v42 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v42 + 16) = 0xD000000000000015;
  *(v42 + 24) = 0x80000002683FCFF0;
  (*(v6 + 8))(v11, v39);
  sub_268134034(v70, &v71);
  sub_268184140(v60, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0(v70);
  v74[10] = v58;
  __swift_destroy_boxed_opaque_existential_0(v61);
  v62 = &type metadata for AppResolver;
  v63 = &off_28790B8A0;
  v61[0] = swift_allocObject();
  sub_26818CE54(&v71, v61[0] + 16);
  sub_2681840DC(v76, &v69, &qword_28024E2D0, &qword_2683D66E0);
  v64 = v28;
  v65 = v49;
  v66 = 1;
  v67 = &unk_2683F9680;
  v68 = 0;
  sub_26818CEB0(v61, v60);
  v43 = v54;
  v44 = v55;
  v45 = v57;
  v52(v54, v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544D8, &qword_2683F96A0);
  swift_allocObject();
  v46 = sub_2681E518C(v60, v43, &unk_2683F9690, v51);
  (*(v56 + 8))(v44, v45);
  sub_268184140(v76, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v61);
  sub_26818DAF4(&v71);
  sub_268184140(v75, &qword_28024E2C0, &unk_2683D66D0);
  *&v71 = v46;
  sub_26818A0C8(&qword_2802544E0, &qword_2802544D8, &qword_2683F96A0);
  v47 = sub_2683CBF28();

  *v59 = v47;
  return result;
}

uint64_t sub_2683B48FC()
{
  v0 = sub_2683D0408();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2683B4948(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x746E65746E6F63;
  }

  return 0x6D614E70756F7267;
}

uint64_t sub_2683B49A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2681EA3B4();
}

uint64_t sub_2683B49C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2683B48FC();
  *a2 = result;
  return result;
}

uint64_t sub_2683B49F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2683B4948(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2683B4A20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a3;
  v50 = a2;
  v51 = a1;
  v53 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544F8, &qword_2683F96B0);
  OUTLINED_FUNCTION_1_7();
  v52 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v42 - v9;
  v10 = sub_2683CF238();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254500, &qword_2683F96B8);
  OUTLINED_FUNCTION_1_7();
  v55 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_1();
  v49 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  sub_2683CCC48();
  type metadata accessor for CreateNoteCATPatternsExecutor(0);
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v21 = sub_2683CF0B8();
  v95 = v4;
  v96 = &off_28790B0A0;
  v94[0] = v21;
  type metadata accessor for NotebookLabelsV2CATs();
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v22 = sub_2683CF0B8();
  v93[3] = &type metadata for TCCTemplateProvider;
  v93[4] = &off_287902CB8;
  v23 = sub_2683CC548();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_2683CC538();
  v92[3] = v23;
  v92[4] = MEMORY[0x277D5BD58];
  v92[0] = v26;
  type metadata accessor for CreateNoteCATs();
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v27 = sub_2683CF0B8();
  type metadata accessor for CreateNoteCATsSimple();
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v28 = sub_2683CF198();
  v91[3] = &type metadata for NotebookFeatureManager;
  v91[4] = &protocol witness table for NotebookFeatureManager;
  v54 = sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  v46 = sub_268129504(0, &qword_280251F30, 0x277CD3B38);
  sub_2683CBEB8();
  sub_268134034(v97, v89);
  sub_268134034(v93, &v90);
  v89[5] = v22;
  v29 = *(v23 + 48);
  v30 = *(v23 + 52);
  swift_allocObject();
  v31 = sub_2683CC538();
  v32 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v88[5] = &off_28790DB88;
  v88[4] = &unk_28790DB70;
  v88[1] = v32;
  v88[0] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  sub_268134034(v97, v87);
  v87[5] = v28;
  v87[6] = v31;
  v47 = sub_268372484;
  v87[7] = sub_268372484;
  v87[8] = 0;
  sub_2683B5D94();

  sub_2683CBD98();
  sub_2683CBE38();
  v76 = v28;
  v77 = v31;
  v45 = sub_2681B86A4;
  v78[0] = sub_2681B86A4;
  v78[1] = 0;
  sub_2683B5DE8();

  sub_2683CBDD8();
  sub_2683CBE88();
  sub_268134034(v94, v78);
  v78[5] = v31;
  v79 = 1;
  sub_268134034(v97, &v80);
  v82 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v83 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v81 = swift_allocObject();
  sub_26818EE34(v88, v81 + 16);
  v85 = &type metadata for NotebookDisambiguationFlowProducer;
  v86 = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v84 = swift_allocObject();
  sub_268134034(v97, v84 + 16);
  v76 = v27;
  v77 = v28;
  sub_26813C83C(&v76, v75);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v75, 0xE0uLL);

  sub_2683CBE98();
  sub_268134034(v94, v75);
  sub_268134034(v92, &v75[5]);
  sub_268134034(v97, &v75[12]);
  sub_268134034(v91, &v75[18]);
  v75[10] = v27;
  v75[11] = v28;
  v75[17] = v48;
  v75[23] = v31;
  sub_2683B5E44();

  sub_2683CBDA8();
  sub_2683CBE48();
  sub_268134034(v97, v67);
  sub_268134034(v93, &v68);
  v70 = &type metadata for NotebookButtonProvider;
  v71 = &off_287902C78;
  v69 = swift_allocObject();
  sub_26818EE98(v89, v69 + 16);
  v72 = v54;
  v73 = v45;
  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254520, &qword_2683F96C0);
  sub_26818A0C8(&qword_280254528, &qword_280254520, &qword_2683F96C0);
  sub_2683CBDF8();
  sub_2683CBEA8();
  sub_268134034(v97, v58);
  v60 = &type metadata for NotebookButtonProvider;
  v61 = &off_287902C78;
  v59 = swift_allocObject();
  sub_26818EE98(v89, v59 + 16);
  v63 = &type metadata for CommonResponseGenerator;
  v64 = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v62 = swift_allocObject();
  sub_268134034(v97, v62 + 16);
  v65 = &type metadata for CommonLabelGenerator;
  v66 = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254530, &qword_2683F96C8);
  sub_26818A0C8(&qword_280254538, &qword_280254530, &qword_2683F96C8);
  sub_2683CBDC8();
  sub_268184140(v58, &qword_280254530, &qword_2683F96C8);
  sub_2683CBE68();

  sub_2683B5E98(v75);
  sub_2683B5EEC(v87);
  sub_26818F000(v89);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  sub_268184140(v67, &qword_280254520, &qword_2683F96C0);
  sub_2683B5F40(&v76);
  sub_26818F1A8(v88);
  v34 = v50;
  sub_2683CBDB8();
  v43 = v12;
  v44 = v20;
  sub_2683CBE58();
  (*(v55 + 16))(v49, v20, v12);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254540, &qword_2683F96D0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v54 = sub_2683CBEC8();
  v76 = v47;
  v77 = 0;
  sub_2683B5F94();

  sub_2683CC2E8();
  v38 = v51[3];
  v39 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v38);
  v51 = sub_268344A8C(v38, v39);
  v76 = sub_2683CC2D8();
  v75[0] = sub_26818FF98(v34, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254550, &qword_2683F96D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  sub_26818A0C8(&qword_280254558, &qword_280254550, &qword_2683F96D8);
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80);
  v40 = sub_2683CBF68();

  (*(v52 + 8))(v56, v57);
  result = (*(v55 + 8))(v44, v43);
  *v53 = v40;
  return result;
}

uint64_t sub_2683B5434()
{
  v1 = type metadata accessor for StringLocalizer();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683B54C4, 0, 0);
}

uint64_t sub_2683B54C4()
{
  v1 = v0[8];
  sub_2683CCC48();
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v3 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2683B55FC;
  v6 = v0[8];

  return sub_2681E5AB8();
}

uint64_t sub_2683B55FC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v9 = *v2;

  sub_2683B5FE8(v6);

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t sub_2683B5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2683B5754, 0, 0);
}

uint64_t sub_2683B5754()
{
  v5 = v0;
  sub_2683B4A20(*(v0 + 32), *(v0 + 24), *(v0 + 40), &v4);
  *(v0 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544E8, &qword_2683F96A8);
  sub_26818A0C8(&qword_2802544F0, &qword_2802544E8, &qword_2683F96A8);
  v1 = sub_2683CBF28();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2683B583C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_28024CBC0 != -1)
      {
        swift_once();
      }

      v3 = &qword_28027CD00;
    }

    else
    {
      if (qword_28024CBE8 != -1)
      {
        swift_once();
      }

      v3 = &qword_28027CD28;
    }
  }

  else
  {
    if (qword_28024CBD0 != -1)
    {
      swift_once();
    }

    v3 = &qword_28027CD10;
  }

  v4 = *v3;
  *(v2 + 32) = sub_2681E1F9C();
  *(v2 + 40) = v5;
  return v2;
}

uint64_t sub_2683B5960(uint64_t a1, char a2)
{
  v3 = OUTLINED_FUNCTION_10_10();
  sub_2681840DC(v3, v4, v5, v6);
  if (v30)
  {
    sub_2683CD8B8();
    if (OUTLINED_FUNCTION_0_33())
    {

      sub_2683CD6F8();

      if (v29[0])
      {
LABEL_9:

        v11 = sub_2683CD1A8();

        return v11;
      }
    }
  }

  else
  {
    sub_268184140(v29, &qword_28024E370, &unk_2683D9AA0);
  }

  v7 = OUTLINED_FUNCTION_10_10();
  sub_2681840DC(v7, v8, v9, v10);
  if (v30)
  {
    sub_2683CD938();
    if (OUTLINED_FUNCTION_0_33())
    {

      sub_2683CCFF8();

      if (v29[0])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_268184140(v29, &qword_28024E370, &unk_2683D9AA0);
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);
  v13 = OUTLINED_FUNCTION_10_10();
  sub_26818F56C(v13, v14);
  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315394;
    if (a2)
    {
      if (a2 == 1)
      {
        v19 = 0x746E65746E6F63;
      }

      else
      {
        v19 = 0x6D614E70756F7267;
      }

      if (a2 == 1)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE900000000000065;
      }
    }

    else
    {
      v20 = 0xE500000000000000;
      v19 = 0x656C746974;
    }

    v21 = sub_2681610A0(v19, v20, &v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_2681840DC(v29, v27, &qword_28024E370, &unk_2683D9AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    v22 = sub_2683CFAD8();
    v24 = v23;
    sub_26818F5C8(v29);
    v25 = sub_2681610A0(v22, v24, &v28);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2680EB000, v15, v16, "[CreateNote resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v18, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);
  }

  else
  {

    sub_26818F5C8(v29);
  }

  return 0;
}

uint64_t sub_2683B5CEC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681B7480;

  return sub_2683B5730(a1, v1 + 16, v4);
}

unint64_t sub_2683B5D94()
{
  result = qword_280254508;
  if (!qword_280254508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254508);
  }

  return result;
}

unint64_t sub_2683B5DE8()
{
  result = qword_280254510;
  if (!qword_280254510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254510);
  }

  return result;
}

unint64_t sub_2683B5E44()
{
  result = qword_280254518;
  if (!qword_280254518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254518);
  }

  return result;
}

unint64_t sub_2683B5F94()
{
  result = qword_280254548;
  if (!qword_280254548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254548);
  }

  return result;
}

uint64_t sub_2683B5FE8(uint64_t a1)
{
  v2 = type metadata accessor for StringLocalizer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CreateNote.Errors(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CreateNote.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2683B61E0()
{
  result = qword_280254560;
  if (!qword_280254560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254560);
  }

  return result;
}

unint64_t sub_2683B6238()
{
  result = qword_280254568;
  if (!qword_280254568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254568);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_45()
{

  return sub_2683CF228();
}

uint64_t sub_2683B62B0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    goto LABEL_34;
  }

  sub_26820316C(a1, v4);
  sub_2683CDBB8();
  if (!swift_dynamicCast())
  {
    sub_2683CDC78();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 18;
      goto LABEL_35;
    }

    sub_2683CE118();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 19;
      goto LABEL_35;
    }

    sub_2683CDF08();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 16;
      goto LABEL_35;
    }

    sub_2683CDEF8();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 13;
      goto LABEL_35;
    }

    sub_2683CDF18();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 8;
      goto LABEL_35;
    }

    sub_2683CDE48();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 7;
      goto LABEL_35;
    }

    sub_2683CD738();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 21;
      goto LABEL_35;
    }

    sub_2683CD8E8();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 6;
      goto LABEL_35;
    }

    sub_2683CD8C8();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 9;
      goto LABEL_35;
    }

    sub_2683CE1D8();
    if (OUTLINED_FUNCTION_0_76() || (sub_2683CDD88(), OUTLINED_FUNCTION_0_76()) || (sub_2683CDE58(), OUTLINED_FUNCTION_0_76()) || (sub_2683CDF58(), OUTLINED_FUNCTION_0_76()))
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 1;
      goto LABEL_35;
    }

    sub_2683CDD68();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 2;
      goto LABEL_35;
    }

    sub_2683CDD78();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 4;
      goto LABEL_35;
    }

    sub_2683CDDB8();
    if (OUTLINED_FUNCTION_0_76())
    {

      __swift_destroy_boxed_opaque_existential_0(v4);
      v2 = 3;
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_0(v4);
LABEL_34:
    v2 = 24;
    goto LABEL_35;
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  v2 = 10;
LABEL_35:
  sub_2682DF06C(a1);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return swift_dynamicCast();
}

id sub_2683B65A4()
{
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  qword_28027CED8 = result;
  return result;
}

uint64_t sub_2683B65D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus;
  if (!*(v0 + OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus))
  {
    if (qword_28024CC50 != -1)
    {
      swift_once();
    }

    v3 = sub_2683CF7E8();
    __swift_project_value_buffer(v3, qword_28027CE90);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE88();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2680EB000, v4, v5, "[LocationManager] Failed to determine location services authorization for reminders.", v6, 2u);
      MEMORY[0x26D617A40](v6, -1, -1);
    }
  }

  return *(v1 + v2);
}

id sub_2683B66CC()
{
  v13 = sub_2683CFEC8();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CFEB8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2683CF998();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *&v0[OBJC_IVAR____TtC12SiriNotebook15LocationManager_locationManager] = 0;
  *&v0[OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus] = 0;
  v12 = OBJC_IVAR____TtC12SiriNotebook15LocationManager_locationQueue;
  sub_2683B6A70();
  sub_2683CF988();
  v15 = MEMORY[0x277D84F90];
  sub_2683B6AB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254600, &unk_2683F9860);
  sub_2683B6B0C();
  sub_2683D0058();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13);
  *&v0[v12] = sub_2683CFED8();
  v9 = type metadata accessor for LocationManager();
  v14.receiver = v0;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_2683B6938(void *a1)
{
  result = [a1 authorizationStatus];
  *(v1 + OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus) = result;
  return result;
}

id sub_2683B69CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2683B6A70()
{
  result = qword_2802545F0;
  if (!qword_2802545F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802545F0);
  }

  return result;
}

unint64_t sub_2683B6AB4()
{
  result = qword_2802545F8;
  if (!qword_2802545F8)
  {
    sub_2683CFEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802545F8);
  }

  return result;
}

unint64_t sub_2683B6B0C()
{
  result = qword_280254608;
  if (!qword_280254608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280254600, &unk_2683F9860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254608);
  }

  return result;
}

uint64_t type metadata accessor for CreateNoteCATs()
{
  result = qword_280254610;
  if (!qword_280254610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683B6C0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6C24()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v3 = *MEMORY[0x277D55BF0];
  v4 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();

  return v8();
}

uint64_t sub_2683B6D30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6D48()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v3 = *MEMORY[0x277D55BF0];
  v4 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();

  return v8();
}

uint64_t sub_2683B6E54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6E6C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v3 = *MEMORY[0x277D55BF0];
  v4 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_8(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2_12(v6);
  OUTLINED_FUNCTION_6_12();

  return v8();
}

uint64_t sub_2683B6F78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6F94()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2683D1ED0;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  if (v1)
  {
    v3 = sub_2683CF138();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 72);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x80000002683FD0D0;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 1702129518;
  *(v2 + 136) = 0xE400000000000000;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for NotebookNoteConcept(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v9 = *MEMORY[0x277D55BF0];
  v10 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_2683B7148;
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);

  return v15(v13, 0xD000000000000027, 0x80000002683FD0F0, v2);
}

uint64_t sub_2683B7148()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26837BF74, 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);

    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_2683B7268(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2683B72BC(a1, a2);
}

uint64_t sub_2683B72BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_2683B7440()
{
  OUTLINED_FUNCTION_14();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippet();
  v1[25] = v4;
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_55();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v1[30] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CC138();
  v1[33] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[34] = v12;
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_55();
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v1[37] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v24);
  v1[40] = v25;
  v1[41] = *(v26 + 64);
  v1[42] = OUTLINED_FUNCTION_55();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v27);
  v29 = *(v28 + 64);
  v1[50] = OUTLINED_FUNCTION_15_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F9A0, &qword_2683DD888);
  v1[51] = v30;
  OUTLINED_FUNCTION_3_1(v30);
  v1[52] = v31;
  v33 = *(v32 + 64);
  v1[53] = OUTLINED_FUNCTION_55();
  v1[54] = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_2683B774C()
{
  v45 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[23];
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[54];
  if (v9)
  {
    v11 = v0[52];
    v12 = v0[53];
    v13 = v0[51];
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2683CFAD8();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2681610A0(v15, v17, &v44);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v7, v8, "[SnoozeTasks HandleIntentStrategy] Making intent handled response for: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x26D617A40](v43, -1, -1);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  else
  {
    v19 = v0[51];
    v20 = v0[52];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[51];
  v23 = v0[23];
  v22 = v0[24];
  v24 = sub_2683CC818();
  v25 = sub_2683B9A40(v24);
  v26 = *v22;
  if (!v25)
  {
    goto LABEL_13;
  }

  v27 = v25;
  if (sub_268229348(v25) != 1 || !sub_2683ABE58(v27))
  {

LABEL_13:
    v32 = 1;
    goto LABEL_14;
  }

  sub_2683ABE60(0, (v27 & 0xC000000000000001) == 0, v27);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x26D616C90](0, v27);
  }

  else
  {
    v28 = *(v27 + 32);
  }

  v29 = v28;
  v30 = v0[50];

  v31 = [v29 title];

  sub_2683CFEA8();
  v32 = 0;
LABEL_14:
  v34 = v0[50];
  v33 = v0[51];
  v35 = v0[23];
  v36 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v34, v32, 1, v36);
  v37 = sub_2683CC848();
  v38 = [v37 nextTriggerTime];

  if (v38)
  {
    v39 = sub_268360738();
  }

  else
  {
    v39 = 0;
  }

  v0[55] = v39;
  v40 = swift_task_alloc();
  v0[56] = v40;
  *v40 = v0;
  v40[1] = sub_2683B7AD0;
  v41 = v0[50];

  return sub_2681839DC();
}

uint64_t sub_2683B7AD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = v4[56];
  v6 = v4[55];
  v7 = v4[50];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v11 + 456) = v10;
  *(v11 + 464) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);

  if (v0)
  {
    v12 = sub_2683B8EB0;
  }

  else
  {
    v12 = sub_2683B7C28;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2683B7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = *(v24 + 464);
  v26 = *(*(v24 + 192) + 48);
  sub_2683B9004(*(v24 + 184), *(v24 + 392));
  v27 = *(v24 + 456);
  if (v25)
  {

    v29 = *(v24 + 424);
    v28 = *(v24 + 432);
    v31 = *(v24 + 392);
    v30 = *(v24 + 400);
    v33 = *(v24 + 376);
    v32 = *(v24 + 384);
    v35 = *(v24 + 360);
    v34 = *(v24 + 368);
    v36 = *(v24 + 352);
    v146 = *(v24 + 344);
    v148 = *(v24 + 336);
    v150 = *(v24 + 312);
    v152 = *(v24 + 304);
    v154 = *(v24 + 296);
    v156 = *(v24 + 288);
    v158 = *(v24 + 280);
    v160 = *(v24 + 256);
    v162 = *(v24 + 232);
    v164 = *(v24 + 224);
    v166 = *(v24 + 216);
    v168 = *(v24 + 208);

    v37 = *(v24 + 8);
    OUTLINED_FUNCTION_24_3();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, a21, a22, a23, a24);
  }

  v48 = *(v24 + 304);
  v47 = *(v24 + 312);
  v50 = *(v24 + 288);
  v49 = *(v24 + 296);
  __swift_storeEnumTagSinglePayload(*(v24 + 384), 1, 1, *(v24 + 200));
  v51 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v51);
  sub_2683CED08();
  v52 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
  v55 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v55);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v56 = swift_allocObject();
  *(v24 + 472) = v56;
  *(v56 + 16) = xmmword_2683D2250;
  *(v56 + 32) = v27;
  v57 = v27;
  v167 = v56;
  if (sub_2683ABE58(v56))
  {
    sub_2683ABE60(0, (v56 & 0xC000000000000001) == 0, v56);
    if ((v56 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x26D616C90](0, v56);
    }

    else
    {
      v58 = *(v56 + 32);
    }

    v59 = v58;
    v60 = [v58 catId];

    v159 = sub_2683CFA78();
    v165 = v61;
  }

  else
  {
    v159 = 0;
    v165 = 0;
  }

  v62 = *(v24 + 392);
  v64 = *(v24 + 368);
  v63 = *(v24 + 376);
  v65 = *(v24 + 320);
  v66 = *(v24 + 328);
  v149 = *(v24 + 312);
  v151 = *(v24 + 304);
  v153 = *(v24 + 296);
  v147 = *(v24 + 288);
  v67 = *(v24 + 272);
  v68 = *(v24 + 280);
  v69 = *(v24 + 264);
  v155 = *(v24 + 256);
  v157 = v62;
  v161 = *(v24 + 200);
  v163 = *(v24 + 360);
  sub_2681BED1C(*(v24 + 384), v63);
  sub_2681BED1C(v62, v64);
  v70 = *(v65 + 80);
  v71 = (v70 + 24) & ~v70;
  v72 = (v66 + v70 + v71) & ~v70;
  v73 = swift_allocObject();
  *(v24 + 480) = v73;
  *(v73 + 16) = v26;
  sub_2681430AC(v63, v73 + v71);
  sub_2681430AC(v64, v73 + v72);
  (*(v67 + 16))(v68, v147, v69);
  v74 = swift_task_alloc();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = 0;
  *(v74 + 40) = v159;
  *(v74 + 48) = v165;
  *(v74 + 56) = v149;
  *(v74 + 64) = 514;
  *(v74 + 72) = sub_26814311C;
  *(v74 + 80) = v73;
  *(v74 + 88) = 0;
  *(v74 + 96) = v151;
  *(v74 + 104) = 2;
  *(v74 + 112) = v153;

  sub_2683CC8E8();

  sub_2681BED1C(v157, v163);
  if (__swift_getEnumTagSinglePayload(v163, 1, v161) == 1)
  {
    v75 = (v24 + 360);
  }

  else
  {
    v76 = *(v24 + 384);
    v77 = *(v24 + 352);
    v78 = *(v24 + 200);
    sub_26814320C(*(v24 + 360), *(v24 + 232));
    sub_2681BED1C(v76, v77);
    if (OUTLINED_FUNCTION_88_0() != 1)
    {
      v110 = *(v24 + 224);
      v111 = *(v24 + 232);
      v112 = *(v24 + 200);
      sub_26814320C(*(v24 + 352), v110);
      *(v24 + 120) = v112;
      v113 = sub_268143270();
      *(v24 + 128) = v113;
      __swift_allocate_boxed_opaque_existential_0((v24 + 96));
      OUTLINED_FUNCTION_3_58();
      v115 = v114;
      sub_2683B9AA8(v111, v116, v114);
      *(v24 + 160) = v112;
      *(v24 + 168) = v113;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 136));
      sub_2683B9AA8(v110, boxed_opaque_existential_0, v115);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      *(v24 + 488) = v118;
      *v118 = v119;
      v118[1] = sub_2683B839C;
      v120 = *(v24 + 256);
      v121 = *(v24 + 176);
      OUTLINED_FUNCTION_24_3();

      return v127(v122, v123, v124, v125, v126, v127, v128, v129, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v26, a21, a22, a23, a24);
    }

    v75 = (v24 + 352);
    v79 = *(v24 + 232);
    OUTLINED_FUNCTION_3_42();
    sub_2682EF7D4(v80, v81);
  }

  v82 = *v75;
  v83 = *(v24 + 392);
  v84 = *(v24 + 344);
  v85 = *(v24 + 200);
  sub_2681433DC(v82, &qword_28024E770, &qword_2683D80D0);
  sub_2681BED1C(v83, v84);
  v86 = OUTLINED_FUNCTION_88_0();
  v87 = *(v24 + 344);
  v88 = *(v24 + 200);
  if (v86 == 1)
  {
    v89 = *(v24 + 384);
    v90 = *(v24 + 336);
    sub_2681433DC(v87, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v89, v90);
    if (OUTLINED_FUNCTION_88_0() == 1)
    {
      sub_2681433DC(*(v24 + 336), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      *(v24 + 512) = v91;
      *v91 = v92;
      v91[1] = sub_2683B8BFC;
      v93 = *(v24 + 256);
      v94 = *(v24 + 176);
      OUTLINED_FUNCTION_24_3();

      return v98(v95, v96, v97, v98, v99, v100, v101, v102, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v26, a21, a22, a23, a24);
    }

    v130 = *(v24 + 200);
    v131 = *(v24 + 208);
    sub_26814320C(*(v24 + 336), v131);
    *(v24 + 40) = v130;
    *(v24 + 48) = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0((v24 + 16));
    OUTLINED_FUNCTION_3_58();
    sub_2683B9AA8(v131, v132, v133);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    *(v24 + 504) = v134;
    *v134 = v135;
    v134[1] = sub_2683B8948;
    v136 = *(v24 + 256);
    v137 = *(v24 + 176);
  }

  else
  {
    v103 = *(v24 + 216);
    sub_26814320C(v87, v103);
    *(v24 + 80) = v88;
    *(v24 + 88) = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0((v24 + 56));
    OUTLINED_FUNCTION_3_58();
    sub_2683B9AA8(v103, v104, v105);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    *(v24 + 496) = v106;
    *v106 = v107;
    v106[1] = sub_2683B8694;
    v108 = *(v24 + 256);
    v109 = *(v24 + 176);
  }

  OUTLINED_FUNCTION_24_3();

  return v142(v138, v139, v140, v141, v142, v143, v144, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v26, a21, a22, a23, a24);
}

uint64_t sub_2683B839C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *(v4 + 472);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683B84A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = v24[60];
  v50 = v24[49];
  v49 = v24[48];
  v26 = v24[36];
  v28 = v24[33];
  v27 = v24[34];
  v29 = v24[31];
  v30 = v24[32];
  v32 = v24[29];
  v31 = v24[30];
  v33 = v24[28];

  sub_2682EF7D4(v33, type metadata accessor for Snippet);
  sub_2682EF7D4(v32, type metadata accessor for Snippet);
  v34 = *(v29 + 8);
  v35 = OUTLINED_FUNCTION_32_3();
  v36(v35);
  v37 = *(v27 + 8);
  v38 = OUTLINED_FUNCTION_74_0();
  v39(v38);
  OUTLINED_FUNCTION_33_6(v49);
  OUTLINED_FUNCTION_33_6(v50);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v33, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(type metadata accessor for Snippet, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v27 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v49, v50, a22, a23, a24);
}

uint64_t sub_2683B8694()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *(v4 + 472);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683B8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_19_41();
  v29 = *(v26 + 216);

  OUTLINED_FUNCTION_3_42();
  sub_2682EF7D4(v29, v30);
  v31 = *(v28 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  OUTLINED_FUNCTION_33_6(v24);
  OUTLINED_FUNCTION_33_6(v25);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2683B8948()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 472);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683B8A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_19_41();
  v29 = *(v26 + 208);

  OUTLINED_FUNCTION_3_42();
  sub_2682EF7D4(v29, v30);
  v31 = *(v28 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  OUTLINED_FUNCTION_33_6(v24);
  OUTLINED_FUNCTION_33_6(v25);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2683B8BFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 512);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2683B8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[60];
  v27 = v24[48];
  v28 = v24[49];
  v29 = v24[36];
  v30 = v24[33];
  v31 = v24[34];
  v33 = v24[31];
  v32 = v24[32];
  v34 = v24[30];

  v35 = *(v33 + 8);
  v36 = OUTLINED_FUNCTION_32_3();
  v37(v36);
  v38 = *(v31 + 8);
  v39 = OUTLINED_FUNCTION_74_0();
  v40(v39);
  OUTLINED_FUNCTION_33_6(v27);
  OUTLINED_FUNCTION_33_6(v28);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v33 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2683B8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v56 = v24[58];
  v26 = v24[53];
  v25 = v24[54];
  v28 = v24[49];
  v27 = v24[50];
  v30 = v24[47];
  v29 = v24[48];
  v32 = v24[45];
  v31 = v24[46];
  v34 = v24[43];
  v33 = v24[44];
  v45 = v24[42];
  v46 = v24[39];
  v47 = v24[38];
  v48 = v24[37];
  v49 = v24[36];
  v50 = v24[35];
  v51 = v24[32];
  v52 = v24[29];
  v53 = v24[28];
  v54 = v24[27];
  v55 = v24[26];

  v35 = v24[1];
  OUTLINED_FUNCTION_24_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, a22, a23, a24);
}

uint64_t sub_2683B9004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &__dst[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v12 = &__dst[-v11 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F9A0, &qword_2683DD888);
  v13 = sub_2683CC818();
  v14 = sub_2683B9A40(v13);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (sub_2683ABE58(v15))
  {
    v31 = a2;
    sub_2683ABE60(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D616C90](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;

    __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
    v18 = v17;
    sub_26834A288(v18, v10);
    sub_268154F90();
    sub_2682EF7D4(v10, type metadata accessor for Snippet.Reminder);
    memcpy(__dst, __src, 0x61uLL);
    sub_2683CC828();
    v19 = sub_2681E73A0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
    v20 = *(v34 + 72);
    v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2683D1EC0;
    sub_2683B9AA8(v12, v22 + v21, type metadata accessor for Snippet.Reminder);
    if (v19)
    {

      sub_2682EF7D4(v12, type metadata accessor for Snippet.Reminder);
      v23 = v31;
      v24 = v31;
      *v31 = v22;
      memcpy(v24 + 1, __dst, 0x61uLL);
      v25 = type metadata accessor for Snippet();
      swift_storeEnumTagMultiPayload();
      v26 = v23;
      v27 = 0;
      v28 = v25;
    }

    else
    {
      memcpy(__src, __dst, 0x61uLL);
      v29 = v31;
      sub_26820FD00(v22, __src, a1, v31);

      sub_26814F740(__dst);

      sub_2682EF7D4(v12, type metadata accessor for Snippet.Reminder);
      v28 = type metadata accessor for Snippet();
      v26 = v29;
      v27 = 0;
    }
  }

  else
  {

    v28 = type metadata accessor for Snippet();
    v26 = a2;
    v27 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
}

uint64_t sub_2683B935C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2683B9388()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 8), *(v0[4] + 32));
  v3 = sub_2682B28A0(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2683B9404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193F14;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2683B94C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193F14;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_2683B958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193F14;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_2683B9650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268193F14;

  return sub_2683B7440();
}

uint64_t sub_2683B96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193F14;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_2683B97BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193F14;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_2683B9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193D88;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2683B9944(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26813F058;

  return sub_2683B935C(a1, a2);
}

unint64_t sub_2683B99EC()
{
  result = qword_280254620;
  if (!qword_280254620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254620);
  }

  return result;
}

uint64_t sub_2683B9A40(void *a1)
{
  v2 = [a1 snoozedTasks];

  if (!v2)
  {
    return 0;
  }

  sub_268186108();
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2683B9AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_1_69()
{
  v2 = v0[57];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[49];
  v6 = v0[50];
  v7 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v13 = v0[45];
  v14 = v0[44];
  v15 = v0[43];
  v16 = v0[42];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  *(v1 - 80) = v0[26];
}

uint64_t OUTLINED_FUNCTION_19_41()
{
  result = v0[60];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  return result;
}

id sub_2683B9B90(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  if (a1)
  {
    v16 = a1;
  }

  else
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v16 = sub_26835E5F8();
  }

  sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v17 = a1;
  v18 = sub_2683CFC98();

  v25 = a4;
  sub_268176AE4(a4, v15);
  v19 = sub_2683CB0D8();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) != 1)
  {
    v20 = sub_2683CAFD8();
    (*(*(v19 - 8) + 8))(v15, v19);
  }

  sub_268176AE4(a5, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v19) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_2683CAFD8();
    (*(*(v19 - 8) + 8))(v13, v19);
  }

  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v16 contents:v18 groupName:a3 createdDateComponents:v20 modifiedDateComponents:v21 identifier:0];

  sub_2681D9984(a5);
  sub_2681D9984(v25);
  return v22;
}

void sub_2683B9E1C()
{
  v1 = [v0 contents];
  sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v2 = sub_2683CFCA8();

  v3 = sub_2683ABE58(v2);
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D616C90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = sub_2683BA16C(v9);
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v10;
      v13 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v5 + 16) + 1, 1, v5);
        v5 = v18;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_2682E4728(v14 > 1, v15 + 1, 1, v5);
        v16 = v15 + 1;
        v5 = v19;
      }

      *(v5 + 16) = v16;
      v17 = v5 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      v4 = v8;
    }

    else
    {

LABEL_15:
      ++v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2683B9FCC()
{
  v1 = [v0 contents];
  sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v2 = sub_2683CFCA8();

  v9 = MEMORY[0x277D84F90];
  v3 = sub_2683ABE58(v2);
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D616C90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 image];

      if (!v8)
      {
        goto LABEL_13;
      }

      MEMORY[0x26D616770]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      ++v4;
    }

    else
    {

LABEL_13:
      ++v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_2683BA16C(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

void INTask.asDynamicEntity.getter()
{
  v1 = v0;

  Entity<A>.init(_:)();
}

void INTaskList.asDynamicEntity.getter()
{
  v1 = v0;

  Entity<A>.init(_:)();
}

void INNote.asDynamicEntity.getter()
{
  v1 = v0;

  Entity<A>.init(_:)();
}

void INSpatialEventTrigger.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void INTemporalEventTrigger.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void INContactEventTrigger.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void INDateComponentsRange.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BA500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2683BA558()
{
  OUTLINED_FUNCTION_14();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippet();
  v1[25] = v4;
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v1[30] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  v1[33] = OUTLINED_FUNCTION_15_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v14);
  v16 = *(v15 + 64);
  v1[34] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CC138();
  v1[35] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[36] = v18;
  v20 = *(v19 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v24);
  v1[40] = v25;
  v1[41] = *(v26 + 64);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_2683BA7EC()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = type metadata accessor for DefaultUnsupportedIntentStrategy();
  v0[50] = *(v4 + *(v6 + 24));
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  static Snippet.appPunchout(to:siriLocale:)(v5, v4 + *(v6 + 20), v1);
  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_2683BA8D8;
  v8 = v0[24];

  return sub_2683BBC48();
}

uint64_t sub_2683BA8D8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 408);
  *v4 = *v1;
  v3[52] = v7;
  v3[53] = v0;

  if (v0)
  {
    v8 = v3[49];
    sub_2681433DC(v3[48], &qword_28024E770, &qword_2683D80D0);
    sub_2681433DC(v8, &qword_28024E770, &qword_2683D80D0);
    v9 = sub_2683BBAD8;
  }

  else
  {
    v9 = sub_2683BAA1C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_2683BAA1C()
{
  v1 = v0[52];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[33];
  v4 = v0[34];
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  sub_2683CC108();
  sub_2683CED08();
  v7 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  v10 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v11 = swift_allocObject();
  v0[54] = v11;
  *(v11 + 16) = xmmword_2683D2250;
  *(v11 + 32) = v1;
  v12 = v1;
  if (sub_2683ABE58(v11))
  {
    sub_2683ABE60(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D616C90](0, v11);
    }

    else
    {
      v13 = *(v11 + 32);
    }

    v14 = v13;
    v15 = [v13 catId];

    v84 = sub_2683CFA78();
    v87 = v16;
  }

  else
  {
    v84 = 0;
    v87 = 0;
  }

  v17 = v0[49];
  v18 = v0[50];
  v19 = v0[47];
  v20 = v0[46];
  v22 = v0[40];
  v21 = v0[41];
  v79 = v0[38];
  v80 = v0[39];
  v23 = v0[36];
  v24 = v0[37];
  v25 = v0[35];
  v81 = v0[34];
  v82 = v0[33];
  v83 = v17;
  v85 = v0[25];
  v86 = v0[45];
  sub_2681BED1C(v0[48], v19);
  sub_2681BED1C(v17, v20);
  v26 = *(v22 + 80);
  v27 = (v26 + 24) & ~v26;
  v28 = (v21 + v26 + v27) & ~v26;
  v29 = swift_allocObject();
  v0[55] = v29;
  *(v29 + 16) = v18;
  sub_2681430AC(v19, v29 + v27);
  sub_2681430AC(v20, v29 + v28);
  (*(v23 + 16))(v24, v79, v25);
  v30 = swift_task_alloc();
  *(v30 + 16) = 1;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = v84;
  *(v30 + 48) = v87;
  *(v30 + 56) = v80;
  *(v30 + 64) = 258;
  *(v30 + 72) = sub_26814311C;
  *(v30 + 80) = v29;
  *(v30 + 88) = 0;
  *(v30 + 96) = v81;
  *(v30 + 104) = 2;
  *(v30 + 112) = v82;

  sub_2683CC8E8();

  sub_2681BED1C(v83, v86);
  if (__swift_getEnumTagSinglePayload(v86, 1, v85) == 1)
  {
    v31 = v0 + 45;
  }

  else
  {
    v32 = v0[48];
    v33 = v0[44];
    v34 = v0[25];
    sub_26814320C(v0[45], v0[29]);
    sub_2681BED1C(v32, v33);
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
    {
      v58 = v0[28];
      v59 = v0[29];
      v60 = v0[25];
      sub_26814320C(v0[44], v58);
      v0[15] = v60;
      v61 = sub_268143270();
      v0[16] = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      sub_2681432C8(v59, boxed_opaque_existential_0);
      v0[20] = v60;
      v0[21] = v61;
      v63 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v58, v63);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[56] = v64;
      *v64 = v65;
      OUTLINED_FUNCTION_28_25(v64);
      v66 = v0[32];
      v67 = v0[22];
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X5 }
    }

    v31 = v0 + 44;
    sub_26814332C(v0[29]);
  }

  v35 = *v31;
  v36 = v0[49];
  v37 = v0[43];
  v38 = v0[25];
  sub_2681433DC(v35, &qword_28024E770, &qword_2683D80D0);
  sub_2681BED1C(v36, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
  v40 = v0[43];
  v41 = v0[25];
  if (EnumTagSinglePayload == 1)
  {
    v42 = v0[48];
    v43 = v0[42];
    sub_2681433DC(v40, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v42, v43);
    v44 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v44, v45, v41) == 1)
    {
      sub_2681433DC(v0[42], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[59] = v46;
      *v46 = v47;
      OUTLINED_FUNCTION_28_25(v46);
      v48 = v0[32];
      v49 = v0[22];
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X3 }
    }

    v70 = v0[25];
    v71 = v0[26];
    sub_26814320C(v0[42], v71);
    v0[5] = v70;
    v0[6] = sub_268143270();
    v72 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    sub_2681432C8(v71, v72);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[58] = v73;
    *v73 = v74;
    OUTLINED_FUNCTION_28_25(v73);
    v75 = v0[32];
    v76 = v0[22];
  }

  else
  {
    v52 = v0[27];
    sub_26814320C(v40, v52);
    v0[10] = v41;
    v0[11] = sub_268143270();
    v53 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v52, v53);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[57] = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_28_25(v54);
    v56 = v0[32];
    v57 = v0[22];
  }

  OUTLINED_FUNCTION_48_3();

  __asm { BR              X4 }
}

uint64_t sub_2683BB044()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 432);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683BB150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[55];
  v22 = v20[52];
  v46 = v20[48];
  v47 = v20[49];
  v23 = v20[38];
  v25 = v20[35];
  v24 = v20[36];
  v26 = v20[31];
  v27 = v20[32];
  v29 = v20[29];
  v28 = v20[30];
  v30 = v20[28];

  sub_26814332C(v30);
  sub_26814332C(v29);
  v31 = *(v26 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v24 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  OUTLINED_FUNCTION_33_6(v46);
  OUTLINED_FUNCTION_33_6(v47);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v28, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v29, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, v46, v47, a18, a19, a20);
}

uint64_t sub_2683BB308()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 432);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683BB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_14_35();
  v26 = *(v22 + 216);

  sub_26814332C(v26);
  v27 = *(v21 + 8);
  v28 = OUTLINED_FUNCTION_32_3();
  v29(v28);
  v30 = *(v25 + 8);
  v31 = OUTLINED_FUNCTION_74_0();
  v32(v31);
  OUTLINED_FUNCTION_33_6(v20);
  OUTLINED_FUNCTION_33_6(a17);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v23, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v21 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BB5A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 432);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683BB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_14_35();
  v26 = *(v22 + 208);

  sub_26814332C(v26);
  v27 = *(v21 + 8);
  v28 = OUTLINED_FUNCTION_32_3();
  v29(v28);
  v30 = *(v25 + 8);
  v31 = OUTLINED_FUNCTION_74_0();
  v32(v31);
  OUTLINED_FUNCTION_33_6(v20);
  OUTLINED_FUNCTION_33_6(a17);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v23, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v21 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BB838()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 472);
  v3 = *(v1 + 432);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2683BB938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[55];
  v22 = v20[52];
  v23 = v20[48];
  v24 = v20[49];
  v25 = v20[38];
  v26 = v20[35];
  v27 = v20[36];
  v29 = v20[31];
  v28 = v20[32];
  v30 = v20[30];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  OUTLINED_FUNCTION_33_6(v23);
  OUTLINED_FUNCTION_33_6(v24);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v30, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v22, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BBAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v22 = v20[48];
  v21 = v20[49];
  v24 = v20[46];
  v23 = v20[47];
  v26 = v20[44];
  v25 = v20[45];
  v27 = v20[42];
  v28 = v20[43];
  v30 = v20[38];
  v29 = v20[39];
  v42 = v20[37];
  v43 = v20[34];
  v44 = v20[33];
  v45 = v20[32];
  v46 = v20[29];
  v47 = v20[28];
  v48 = v20[27];
  v49 = v20[26];

  v31 = v20[1];
  v32 = v20[53];
  OUTLINED_FUNCTION_26_18();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t type metadata accessor for DefaultUnsupportedIntentStrategy()
{
  result = qword_280254628;
  if (!qword_280254628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683BBC48()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2683BBC70()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for DefaultUnsupportedIntentStrategy() + 28));
  v3 = *v1;
  if (v2 == 23)
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_26813C350;

    return sub_268367D74();
  }

  else if (v2 == 20)
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_268384D48;

    return sub_268367E18();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_268384E38;

    return sub_268367B88();
  }
}

uint64_t sub_2683BBE10()
{
  result = type metadata accessor for NotebookCommonCATsSimple();
  if (v1 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_70()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v10 = v0[43];
  v11 = v0[42];
  v7 = v0[39];
  v12 = v0[38];
  v13 = v0[37];
  v8 = v0[33];
  v9 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[26];
}

uint64_t OUTLINED_FUNCTION_14_35()
{
  result = v0[55];
  v2 = v0[52];
  v3 = v0[48];
  v10 = v0[49];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[31];
  v8 = v0[32];
  v9 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_25(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 400);
  return result;
}

uint64_t sub_2683BBF2C()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_2683CCB88();
  v7(v48, v5, 1);
  (*(v2 + 8))(v5, v1);
  sub_268167C34(v48, v47);
  if (v47[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v47, v43);
  if (v46 != 3)
  {
    if (v46 == 7)
    {
      v8 = vorrq_s8(v44, v45);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v43[2] | v43[1] | v43[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v36 = sub_2683CF7E8();
        __swift_project_value_buffer(v36, qword_28027C958);
        v37 = sub_2683CF7C8();
        v38 = sub_2683CFE98();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_2680EB000, v37, v38, "[SFNI.NeedsValueStrategy] Returning .cancel().", v39, 2u);
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v43);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v48, v43);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_49();
      v13 = OUTLINED_FUNCTION_53();
      v40[0] = v13;
      *v12 = 136315138;
      sub_268167C34(v43, v42);
      v14 = OUTLINED_FUNCTION_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v16 = sub_2683CFAD8();
      v18 = v17;
      sub_26812C310(v43, &qword_28024D460, &qword_2683D5050);
      v19 = sub_2681610A0(v16, v18, v40);

      *(v12 + 4) = v19;
      OUTLINED_FUNCTION_65(&dword_2680EB000, v20, v21, "[SFNI.NeedsValueStrategy] Returning .ignore() for task: %s.");
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26812C310(v43, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_26812C310(v48, &qword_28024D460, &qword_2683D5050);
    return sub_26812C310(v47, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v22 = sub_2683CF7E8();
  __swift_project_value_buffer(v22, qword_28027C958);
  sub_268167C34(v48, v42);
  v23 = sub_2683CF7C8();
  v24 = sub_2683CFE98();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_49();
    v26 = OUTLINED_FUNCTION_53();
    v41 = v26;
    *v25 = 136315138;
    sub_268167C34(v42, v40);
    v27 = OUTLINED_FUNCTION_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    v29 = sub_2683CFAD8();
    v31 = v30;
    sub_26812C310(v42, &qword_28024D460, &qword_2683D5050);
    v32 = sub_2681610A0(v29, v31, &v41);

    *(v25 + 4) = v32;
    OUTLINED_FUNCTION_65(&dword_2680EB000, v33, v34, "[SFNI.NeedsValueStrategy] Returning .handle() for task: %s.");
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_26812C310(v42, &qword_28024D460, &qword_2683D5050);
  }

  sub_2683CC2A8();
  sub_26812C310(v48, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v43);
  return sub_26812C310(v47, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_2683BC42C()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCC18();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_2683BC4DC, 0, 0);
}

uint64_t sub_2683BC4DC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v7 = *(v3 + 48);
  v6 = *(v3 + 56);
  sub_2683CCB88();
  v7(v1, 0);
  (*(v2 + 8))(v1, v4);
  v8 = *(v0 + 72);
  if (v8 == 3)
  {
    sub_268128148((v0 + 16), v0 + 80);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1((v0 + 80), v9);
    v11 = *(v10 + 40);
    v19 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_2683BC700;

    return v19(1, v9, v10);
  }

  else
  {
    if (v8 == 255)
    {
      sub_26812C310(v0 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 16);
    }

    sub_26812C6B8();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_29_9(v15, v16);
    v17 = *(v0 + 168);

    OUTLINED_FUNCTION_40();

    return v18();
  }
}

uint64_t sub_2683BC700()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 176);
  v8 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    v6 = sub_2682E9600;
  }

  else
  {
    v6 = sub_2683BC80C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2683BC80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_41();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[23];
  v28 = v24[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v29 = sub_2683CC9C8();
  v30 = sub_268175B40(v27);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v31 = sub_2683CF7E8();
  __swift_project_value_buffer(v31, qword_28027C958);
  v32 = v30;
  v33 = sub_2683CF7C8();
  v34 = sub_2683CFE98();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_49();
    a9 = OUTLINED_FUNCTION_53();
    a10 = a9;
    *v35 = 136315138;
    v36 = v32;
    v37 = [v36 description];
    v38 = sub_2683CFA78();
    v40 = v39;

    v41 = sub_2681610A0(v38, v40, &a10);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_2680EB000, v33, v34, "[SFNI.NeedsValueStrategy] Parsed response and updated intent: %s.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v42 = v24[23];
  v43 = v24[21];
  v44 = v24[17];
  v45 = v24[15];
  v46 = sub_2683CC9D8();
  [v46 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_2683BDBE8();
  sub_2683CC618();

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254640, &unk_2683F9D80);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v47);
  __swift_destroy_boxed_opaque_existential_0(v24 + 10);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2683BCA78()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC598();
  v1[16] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC748();
  v1[19] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[20] = v10;
  v12 = *(v11 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v1[23] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[24] = v14;
  v16 = *(v15 + 64);
  v1[25] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_2683BCC10, 0, 0);
}

uint64_t sub_2683BCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_41();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v28 = *(v24 + 192);
  v27 = *(v24 + 200);
  v29 = *(v24 + 184);
  v30 = *(v24 + 104);
  v31 = sub_2683CF7E8();
  __swift_project_value_buffer(v31, qword_28027C958);
  (*(v28 + 16))(v27, v30, v29);
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v24 + 192);
  v36 = *(v24 + 200);
  v37 = *(v24 + 184);
  if (v34)
  {
    v38 = *(v24 + 176);
    v39 = *(v24 + 160);
    a9 = *(v24 + 152);
    v40 = OUTLINED_FUNCTION_49();
    a11 = OUTLINED_FUNCTION_53();
    a12 = a11;
    *v40 = 136315138;
    HIDWORD(a10) = v33;
    sub_2683CC9E8();
    v41 = sub_2683CC738();
    v43 = v42;
    (*(v39 + 8))(v38, a9);
    v44 = *(v35 + 8);
    v45 = OUTLINED_FUNCTION_44();
    v46(v45);
    v47 = sub_2681610A0(v41, v43, &a12);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_2680EB000, v32, BYTE4(a10), "[SFNI.NeedsValueStrategy] Making prompt for %s.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v48 = *(v35 + 8);
    v49 = OUTLINED_FUNCTION_44();
    v50(v49);
  }

  v51 = *(v24 + 184);
  v53 = *(v24 + 160);
  v52 = *(v24 + 168);
  v54 = *(v24 + 152);
  v55 = *(v24 + 104);
  sub_2683CC9E8();
  v56 = sub_2683CC738();
  v58 = v57;
  (*(v53 + 8))(v52, v54);

  v59 = sub_26818CD7C();
  *(v24 + 224) = v59;
  if (v59 == 10)
  {
    sub_26812C6B8();
    swift_allocError();
    *v60 = v56;
    *(v60 + 8) = v58;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = 1;
    swift_willThrow();
    v61 = *(v24 + 200);
    v62 = *(v24 + 168);
    v63 = *(v24 + 176);
    v64 = *(v24 + 144);
    v65 = *(v24 + 120);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v24 + 208) = v75;
    *v75 = v76;
    v75[1] = sub_2683BCF48;
    v77 = *(v24 + 144);
    v78 = *(v24 + 112);
    OUTLINED_FUNCTION_64();

    return sub_2683BD2B0(v79, v80);
  }
}

uint64_t sub_2683BCF48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 208);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_2683BD214;
  }

  else
  {
    v7 = sub_2683BD04C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2683BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_13_41();
  v17 = *(v16 + 224);
  v37 = *(v16 + 200);
  v38 = *(v16 + 176);
  v39 = *(v16 + 168);
  v19 = *(v16 + 136);
  v18 = *(v16 + 144);
  v20 = *(v16 + 120);
  v36 = *(v16 + 128);
  v21 = *(v16 + 112);
  v22 = *(v16 + 96);
  v23 = v21[5];
  __swift_project_boxed_opaque_existential_1(v21 + 1, v21[4]);
  sub_2683CC0A8();
  *(v16 + 40) = &type metadata for SearchForNotebookItems.Parameter;
  *(v16 + 48) = &off_287900F98;
  *(v16 + 16) = v17;
  sub_2681687C8();
  __swift_destroy_boxed_opaque_existential_0((v16 + 16));
  v24 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v24);
  v25 = sub_2683CCC98();
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0;
  *(v16 + 56) = 0u;
  v26 = MEMORY[0x277D5C1D8];
  v22[3] = v25;
  v22[4] = v26;
  __swift_allocate_boxed_opaque_existential_0(v22);
  sub_2683CC348();
  sub_26812C310(v16 + 56, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v20, &qword_28024D400, &qword_2683D2460);
  (*(v19 + 8))(v18, v36);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v16 + 56, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_2683BD214()
{
  v1 = v0[27];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[15];

  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_2683BD2B0(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2683BD2D4, 0, 0);
}

uint64_t sub_2683BD2D4()
{
  switch(*(v0 + 96))
  {
    case 1:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 40) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_2_67(v14);

      result = sub_26819F62C();
      break;
    case 2:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 48) = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_2_67(v6);

      result = sub_26819F178();
      break;
    case 3:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 56) = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_2_67(v10);

      result = sub_26819F4D4();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 64) = v1;
      *v1 = v2;
      OUTLINED_FUNCTION_2_67(v1);

      result = sub_26819F428();
      break;
    case 6:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 72) = v16;
      *v16 = v17;
      OUTLINED_FUNCTION_2_67(v16);

      result = sub_26819F2D0();
      break;
    case 7:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 80) = v8;
      *v8 = v9;
      OUTLINED_FUNCTION_2_67(v8);

      result = sub_26819F224();
      break;
    case 8:
      sub_26812C6B8();
      v18 = swift_allocError();
      OUTLINED_FUNCTION_29_9(v18, v19);
      OUTLINED_FUNCTION_40();

      result = v20();
      break;
    case 9:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 88) = v4;
      *v4 = v5;
      OUTLINED_FUNCTION_2_67(v4);

      result = sub_26819F580();
      break;
    default:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 32) = v12;
      *v12 = v13;
      OUTLINED_FUNCTION_2_67(v12);

      result = sub_26819F37C();
      break;
  }

  return result;
}

uint64_t sub_2683BD6B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2683BD794()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2683BD874()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2683BD954()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2683BDA38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2683BC42C();
}

uint64_t sub_2683BDAE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2683BCA78();
}

unint64_t sub_2683BDB94()
{
  result = qword_280254638;
  if (!qword_280254638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254638);
  }

  return result;
}

unint64_t sub_2683BDBE8()
{
  result = qword_28024D340;
  if (!qword_28024D340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D340);
  }

  return result;
}

uint64_t sub_2683BDC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2683BDC8C, 0, 0);
}

uint64_t sub_2683BDC8C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v0[8] = v6;
  sub_2683BE394(v5, v4, v6);
  sub_2683BE3EC(v3, v1, v6);
  sub_268129504(0, &qword_28024F970, 0x277CCABB0);
  v7 = sub_2683CFF48();
  [v6 setSupportsSpokenNotifications_];

  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  v10 = *(MEMORY[0x277D5BFA0] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = sub_268129504(0, &qword_280254648, 0x277D47620);
  *v11 = v0;
  v11[1] = sub_2683BDDFC;

  return MEMORY[0x2821BB670](v6, 1, v12, v8, v9);
}

uint64_t sub_2683BDDFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_2683BE1E0;
  }

  else
  {
    v5 = sub_2683BDF10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

char *sub_2683BDF10()
{
  if (qword_28024C8E0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v1 = v0[10];
    v2 = sub_2683CF7E8();
    __swift_project_value_buffer(v2, qword_28027C958);
    v3 = v1;
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[10];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = [v6 dictionary];
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_2680EB000, v4, v5, "[NotificationProvider] Notification search completed: %@", v7, 0xCu);
      sub_2683BE4B4(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v10 = v0[10];

    v11 = sub_2683BE444(v10);
    v12 = MEMORY[0x277D84F90];
    v13 = v11 ? v11 : MEMORY[0x277D84F90];
    v14 = sub_268229348(v13);
    if (!v14)
    {
      break;
    }

    v15 = v14;
    result = sub_268390600(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v0;
    v17 = 0;
    v0 = &selRef_setIntentResponse_;
    while (1)
    {
      v18 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x26D616C90](v17, v13) : *(v13 + 8 * v17 + 32);
      v19 = v18;
      v20 = [v19 notificationId];
      if (v20)
      {
        v21 = v20;
        v22 = sub_2683CFA78();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      if (!v24)
      {
        break;
      }

      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_268390600((v25 > 1), v26 + 1, 1);
      }

      ++v17;
      *(v12 + 16) = v26 + 1;
      v27 = v12 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      if (v15 == v17)
      {
        v0 = v33;
        v28 = v33[10];
        v29 = v33[8];

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_0_5();
  }

  v30 = v0[10];
  v31 = v0[8];

  v12 = MEMORY[0x277D84F90];
LABEL_22:
  v32 = v0[1];

  return (v32)(v12);
}

uint64_t sub_2683BE1E0()
{
  v18 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = *(v0 + 88);
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v10 = sub_2683CFAD8();
    v12 = sub_2681610A0(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2680EB000, v4, v5, "[NotificationProvider] Got error when searching notifications: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 8);
  v15 = MEMORY[0x277D84F90];

  return v14(v15);
}

void sub_2683BE394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setSourceAppId_];
}

void sub_2683BE3EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setAfterNotificationId_];
}

uint64_t sub_2683BE444(void *a1)
{
  v1 = [a1 notifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268129504(0, &qword_280254650, 0x277D47608);
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2683BE4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCD8, &qword_2683D5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2683BE52C()
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_2683CF688();
  v2 = OUTLINED_FUNCTION_0_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v4 + 16);
  v9 = *(v4 + 16);
  (v9)(v7, v0, v1);
  (*(v4 + 88))(v7, v1);
  if (MEMORY[0x277D45C08])
  {
    OUTLINED_FUNCTION_3_59(MEMORY[0x277D45C08]);
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_2_68();
      v12(v11);
      v13 = *v7;
      v14 = *(v7 + 1);
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      OUTLINED_FUNCTION_47_0();
      v17 = _s14descr2878F8F29V11ListContentOMa();
      OUTLINED_FUNCTION_0_77(v17);
      v19 = *(v18 + 72);
      OUTLINED_FUNCTION_9_43();
      v22 = v21 & ~v20;
      v23 = OUTLINED_FUNCTION_14_36();
      *(v23 + 16) = xmmword_2683D1EC0;
      v24 = (v23 + v22);
      v25 = sub_2683BF58C(v15);

      *v24 = v14;
      v24[1] = v16;
      v24[2] = v25;
      OUTLINED_FUNCTION_69();
      goto LABEL_5;
    }
  }

  if (MEMORY[0x277D45BD0])
  {
    OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BD0]);
    if (v10)
    {
      v26 = OUTLINED_FUNCTION_2_68();
      v27(v26);
      v28 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254670, &qword_2683F9E48) + 48)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      OUTLINED_FUNCTION_47_0();
      v29 = _s14descr2878F8F29V11ListContentOMa();
      OUTLINED_FUNCTION_0_77(v29);
      v31 = *(v30 + 72);
      OUTLINED_FUNCTION_9_43();
      v34 = v33 & ~v32;
      v23 = OUTLINED_FUNCTION_14_36();
      *(v23 + 16) = xmmword_2683D1EC0;
      v35 = sub_2683BF58C(v28);

      *(v23 + v34) = v35;
      swift_storeEnumTagMultiPayload();
      v36 = sub_2683CB398();
      (*(*(v36 - 8) + 8))(v7, v36);
      return v23;
    }
  }

  if (MEMORY[0x277D45BE8])
  {
    OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BE8]);
    if (v10)
    {
      v37 = OUTLINED_FUNCTION_2_68();
      v38(v37);
      v39 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254668, &qword_2683F9E40) + 48)];
      v40 = sub_2683CF628();
      v41 = *(v40 - 8);
      (*(v41 + 88))(v7, v40);
      if (!MEMORY[0x277D45BB0] || (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BB0]), !v10))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
        OUTLINED_FUNCTION_47_0();
        v132 = _s14descr2878F8F29V11ListContentOMa();
        OUTLINED_FUNCTION_0_77(v132);
        v134 = *(v133 + 72);
        OUTLINED_FUNCTION_9_43();
        v137 = v136 & ~v135;
        v23 = OUTLINED_FUNCTION_14_36();
        *(v23 + 16) = xmmword_2683D1EC0;
        v138 = sub_2683BF58C(v39);

        *(v23 + v137) = v138;
        swift_storeEnumTagMultiPayload();
        (*(v41 + 8))(v7, v40);
        return v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      v42 = _s14descr2878F8F29V11ListContentOMa();
      OUTLINED_FUNCTION_0_77(v42);
      v44 = *(v43 + 72);
      OUTLINED_FUNCTION_9_43();
      v23 = OUTLINED_FUNCTION_12_37();
      *(v23 + 16) = xmmword_2683D1EC0;
      v45 = sub_2683BF58C(v39);

      *(v23 + v0) = v45;
      goto LABEL_5;
    }
  }

  if (MEMORY[0x277D45C00])
  {
    OUTLINED_FUNCTION_3_59(MEMORY[0x277D45C00]);
    if (v10)
    {
      v46 = OUTLINED_FUNCTION_2_68();
      v47(v46);
      v48 = sub_2683CF618();
      v49 = OUTLINED_FUNCTION_0_3(v48);
      v51 = v50;
      v53 = *(v52 + 64);
      MEMORY[0x28223BE20](v49);
      OUTLINED_FUNCTION_14_3();
      v56 = v55 - v54;
      v57 = *(v51 + 32);
      v58 = OUTLINED_FUNCTION_93_2();
      v59(v58);
      v23 = sub_2683BFA18(v56);
      v60 = *(v51 + 8);
      v61 = OUTLINED_FUNCTION_69();
      v62(v61);
      return v23;
    }
  }

  if (MEMORY[0x277D45BF8])
  {
    OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BF8]);
    if (v10)
    {
      v63 = OUTLINED_FUNCTION_2_68();
      v64(v63);
      v65 = sub_2683CF608();
      v66 = OUTLINED_FUNCTION_0_3(v65);
      v68 = v67;
      v70 = *(v69 + 64);
      MEMORY[0x28223BE20](v66);
      OUTLINED_FUNCTION_14_3();
      v73 = (v72 - v71);
      v74 = *(v68 + 32);
      v75 = OUTLINED_FUNCTION_93_2();
      v76(v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      v77 = _s14descr2878F8F29V11ListContentOMa();
      OUTLINED_FUNCTION_0_77(v77);
      v79 = *(v78 + 72);
      OUTLINED_FUNCTION_9_43();
      v23 = OUTLINED_FUNCTION_12_37();
      *(v23 + 16) = xmmword_2683D1EC0;
      v80 = sub_2683C07D4(v73);
      v81 = sub_2683BF58C(v80);

      *(v23 + v0) = v81;
      swift_storeEnumTagMultiPayload();
      v82 = *(v68 + 8);
      v83 = OUTLINED_FUNCTION_69();
      v84(v83);
      return v23;
    }
  }

  if (!MEMORY[0x277D45BF0] || (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BF0]), !v10))
  {
    if (MEMORY[0x277D45BD8])
    {
      OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BD8]);
      if (v10)
      {
        v110 = OUTLINED_FUNCTION_2_68();
        v111(v110);
        v179 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254658, &qword_2683F9E30) + 48)];
        v112 = sub_2683CF678();
        v180 = &v165;
        v113 = *(v112 - 8);
        v114 = *(v113 + 64);
        MEMORY[0x28223BE20](v112);
        v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
        v177 = (&v165 - v115);
        v117 = v116;
        (*(v113 + 32))();
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
        v178 = _s14descr2878F8F29V11ListContentOMa();
        OUTLINED_FUNCTION_0_77(v178);
        v119 = *(v118 + 72);
        v121 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v23 = swift_allocObject();
        v175 = xmmword_2683D1EC0;
        *(v23 + 16) = xmmword_2683D1EC0;
        v122 = v23 + v121;
        MEMORY[0x28223BE20](v23);
        v123 = &v165 - v115;
        v124 = &v165 - v115;
        v125 = v177;
        (*(v113 + 16))(v124, v177, v117);
        v126 = sub_2683C01E0(v123);
        v174 = v127;
        LODWORD(v173) = v128;
        v129 = swift_allocObject();
        *(v129 + 16) = v175;
        v130 = sub_2683BF58C(v179);

        *(v129 + v121) = v130;
        swift_storeEnumTagMultiPayload();
        v131 = v174;
        *v122 = v126;
        *(v122 + 8) = v131;
        *(v122 + 16) = v173;
        *(v122 + 24) = v129;
        swift_storeEnumTagMultiPayload();
        (*(v113 + 8))(v125, v117);
        return v23;
      }
    }

    if (!MEMORY[0x277D45BE0] || (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BE0]), !v10))
    {
      if (qword_28024C8F0 == -1)
      {
LABEL_52:
        v149 = sub_2683CF7E8();
        v150 = __swift_project_value_buffer(v149, qword_28027C988);
        v180 = &v165;
        MEMORY[0x28223BE20](v150);
        v151 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
        (v9)(&v165 - v151, v0, v1);
        v152 = sub_2683CF7C8();
        v153 = sub_2683CFE88();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          LODWORD(v178) = v153;
          v155 = v154;
          v156 = swift_slowAlloc();
          v179 = v156;
          v177 = &v165;
          v181 = v156;
          *v155 = 136315138;
          MEMORY[0x28223BE20](v156);
          (v9)(&v165 - v151, &v165 - v151, v1);
          OUTLINED_FUNCTION_69();
          v157 = sub_2683CFAD8();
          v159 = v158;
          v160 = OUTLINED_FUNCTION_11_48();
          v8(v160);
          v161 = sub_2681610A0(v157, v159, &v181);

          *(v155 + 4) = v161;
          _os_log_impl(&dword_2680EB000, v152, v178, "Unknown ListGrouping type: %s", v155, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v179);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        else
        {

          v162 = OUTLINED_FUNCTION_11_48();
          v8(v162);
        }

        (v8)(v7, v1);
        return MEMORY[0x277D84F90];
      }

LABEL_63:
      OUTLINED_FUNCTION_0_11();
      goto LABEL_52;
    }

    v139 = OUTLINED_FUNCTION_2_68();
    v140(v139);
    v141 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
    OUTLINED_FUNCTION_47_0();
    v142 = _s14descr2878F8F29V11ListContentOMa();
    OUTLINED_FUNCTION_0_77(v142);
    v144 = *(v143 + 72);
    OUTLINED_FUNCTION_9_43();
    v147 = v146 & ~v145;
    v23 = OUTLINED_FUNCTION_14_36();
    *(v23 + 16) = xmmword_2683D1EC0;
    v148 = sub_2683BF58C(v141);

    *(v23 + v147) = v148;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return v23;
  }

  v179 = v9;
  v180 = (v4 + 16);
  (*(v4 + 96))(&v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v174 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254660, &qword_2683F9E38) + 48)];
  v85 = sub_2683CF678();
  v173 = &v165;
  v86 = OUTLINED_FUNCTION_0_3(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  v178 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v165 - v178;
  (*(v88 + 32))(&v165 - v178, &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
  OUTLINED_FUNCTION_47_0();
  v177 = _s14descr2878F8F29V11ListContentOMa();
  OUTLINED_FUNCTION_0_77(v177);
  v93 = *(v92 + 72);
  v176 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  *&v175 = v93;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2683D1EC0;
  MEMORY[0x28223BE20](v23);
  v95 = &v165 - v178;
  v170 = v91;
  v171 = v88;
  v96 = *(v88 + 16);
  v172 = v85;
  v96(&v165 - v178, v91, v85);
  v97 = sub_2683C01E0(v95);
  v99 = v98;
  v101 = v100;
  MEMORY[0x28223BE20](v97);
  v102 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v174 + 16);
  if (v7)
  {
    v165 = &v165;
    v166 = v101;
    v167 = v99;
    v168 = v97;
    v169 = v23;
    v9 = (v174 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v178 = *(v4 + 72);
    v103 = (v4 + 8);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      (v179)(v102, v9, v1);
      v104 = sub_2683BE52C(v102);
      (*v103)(v102, v1);
      v105 = *(v104 + 16);
      v0 = *(v6 + 16);
      v8 = (v0 + v105);
      if (__OFADD__(v0, v105))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v8 > *(v6 + 24) >> 1)
      {
        sub_2682E4C00();
        v6 = v106;
      }

      if (*(v104 + 16))
      {
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v105)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v105)
        {
          v107 = *(v6 + 16);
          v108 = __OFADD__(v107, v105);
          v109 = v107 + v105;
          if (v108)
          {
            goto LABEL_62;
          }

          *(v6 + 16) = v109;
        }
      }

      else
      {

        if (v105)
        {
          goto LABEL_60;
        }
      }

      v9 = (v9 + v178);
      if (!--v7)
      {

        v97 = v168;
        v23 = v169;
        v99 = v167;
        LOBYTE(v101) = v166;
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_57:
  v163 = v23 + v176;
  *v163 = v97;
  *(v163 + 8) = v99;
  *(v163 + 16) = v101;
  *(v163 + 24) = v6;
  swift_storeEnumTagMultiPayload();
  (*(v171 + 8))(v170, v172);
  return v23;
}

uint64_t sub_2683BF510@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2683CF5F8();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279C3A548 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_2683BF58C(uint64_t a1)
{
  v59 = sub_2683CB598();
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v6 = sub_2683CF5E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = v9;
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v57 = v14;
    v43 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v48 = a1 + v43;
    v15 = *(v13 + 56);
    v55 = (v2 + 8);
    v56 = v15;
    v54 = (v13 - 8);
    v47 = xmmword_2683D1EC0;
    v51 = v13;
    v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v11;
    do
    {
      v57(v10, v48 + v56 * v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E20, &qword_2683E6580);
      inited = swift_initStackObject();
      *(inited + 16) = v47;
      v17 = sub_2683CF5C8();
      v18 = [v17 uuid];
      v19 = v58;
      sub_2683CB578();

      v20 = sub_2683CB548();
      v22 = v21;

      v53 = *v55;
      v53(v19, v59);
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v23 = sub_2683CF5D8();
      if (v23)
      {
        v49 = v12;
        v24 = *(v23 + 16);
        v25 = v50;
        if (v24)
        {
          v46 = inited;
          v61 = v5;
          v26 = v23;
          v27 = sub_268390888(0, v24, 0);
          v28 = v61;
          v45 = v26;
          v29 = v26 + v43;
          do
          {
            v60 = &v43;
            MEMORY[0x28223BE20](v27);
            v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
            v57(v31, v29, v6);
            v32 = v6;
            v33 = sub_2683CF5C8();
            v34 = [v33 uuid];
            v35 = v58;
            sub_2683CB578();

            v36 = sub_2683CB548();
            v38 = v37;

            v6 = v32;
            v53(v35, v59);
            v27 = (*v54)(v31, v32);
            v61 = v28;
            v40 = *(v28 + 16);
            v39 = *(v28 + 24);
            if (v40 >= v39 >> 1)
            {
              v27 = sub_268390888((v39 > 1), v40 + 1, 1);
              v28 = v61;
            }

            *(v28 + 16) = v40 + 1;
            v41 = v28 + 16 * v40;
            *(v41 + 32) = v36;
            *(v41 + 40) = v38;
            v29 += v56;
            --v24;
          }

          while (v24);

          v5 = MEMORY[0x277D84F90];
          v10 = v44;
          v12 = v49;
          v25 = v50;
          inited = v46;
        }

        else
        {

          v28 = v5;
          v12 = v49;
        }
      }

      else
      {
        v28 = v5;
        v25 = v50;
      }

      ++v12;
      v61 = inited;
      sub_2682C0138(v28);
      (*v54)(v10, v6);
      sub_2682C0138(v61);
    }

    while (v12 != v25);
    return v62;
  }

  return v5;
}

uint64_t sub_2683BFA18(uint64_t a1)
{
  v2 = _s14descr2878F8F29V11ListContentOMa();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = v65[8];
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2683CF618();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (MEMORY[0x277D45BA8] && v11 == *MEMORY[0x277D45BA8])
  {
    (*(v7 + 96))(&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v12 = *v9;
  }

  else
  {
    if (!MEMORY[0x277D45B88] || v11 != *MEMORY[0x277D45B88])
    {
      if (MEMORY[0x277D45B90] && v11 == *MEMORY[0x277D45B90])
      {
        (*(v7 + 96))(&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v13 = sub_2683CF668();
        v14 = *(v13 - 8);
        v15 = *(v14 + 64);
        MEMORY[0x28223BE20](v13);
        v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 32))(v17, v9, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
        v18 = v65[9];
        v19 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_2683D1EC0;
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515F8, &qword_2683F9E50) + 48);
        sub_2683CF648();
        v22 = sub_2683CF658();
        v23 = sub_2683BF58C(v22);

        *(v20 + v19 + v21) = v23;
        swift_storeEnumTagMultiPayload();
        (*(v14 + 8))(v17, v13);
        return v20;
      }

      if ((!MEMORY[0x277D45BA0] || v11 != *MEMORY[0x277D45BA0]) && (!MEMORY[0x277D45B98] || v11 != *MEMORY[0x277D45B98]))
      {
        if (qword_28024C8F0 != -1)
        {
          swift_once();
        }

        v40 = sub_2683CF7E8();
        v41 = __swift_project_value_buffer(v40, qword_28027C988);
        v66 = &v58;
        MEMORY[0x28223BE20](v41);
        v42 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
        v10((&v58 - v42), a1, v6);
        v43 = sub_2683CF7C8();
        v44 = sub_2683CFE78();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v64 = v43;
          v46 = v45;
          v47 = swift_slowAlloc();
          v65 = v47;
          v63 = &v58;
          v67 = v47;
          *v46 = 136315138;
          MEMORY[0x28223BE20](v47);
          v10((&v58 - v42), &v58 - v42, v6);
          v48 = sub_2683CFAD8();
          v50 = v49;
          v51 = *(v7 + 8);
          v51(&v58 - v42, v6);
          v52 = sub_2681610A0(v48, v50, &v67);

          v53 = v46;
          *(v46 + 4) = v52;
          v54 = v64;
          v55 = v53;
          _os_log_impl(&dword_2680EB000, v64, v44, "Unknown ScheduledGroup type: %s", v53, 0xCu);
          v56 = v65;
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x26D617A40](v56, -1, -1);
          MEMORY[0x26D617A40](v55, -1, -1);
        }

        else
        {

          v51 = *(v7 + 8);
          v51(&v58 - v42, v6);
        }

        v51(v9, v6);
        return MEMORY[0x277D84F90];
      }
    }

    (*(v7 + 96))(&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254678, &unk_2683F9E58) + 48));
    v24 = sub_2683CB528();
    (*(*(v24 - 8) + 8))(&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  }

  v25 = *(v12 + 16);
  if (!v25)
  {

    return MEMORY[0x277D84F90];
  }

  v67 = MEMORY[0x277D84F90];
  sub_2683908A8(0, v25, 0);
  v20 = v67;
  v26 = sub_2683CF668();
  v64 = v26;
  isa = v26[-1].isa;
  v28 = *(isa + 2);
  v62 = isa + 16;
  v63 = v28;
  v29 = v12 + ((*(isa + 80) + 32) & ~*(isa + 80));
  v30 = *(isa + 8);
  v60 = *(isa + 9);
  v61 = v30;
  v58 = v12;
  v59 = (isa + 8);
  do
  {
    MEMORY[0x28223BE20](v26);
    v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v64;
    (v63)(v32, v29, v64);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515F8, &qword_2683F9E50) + 48);
    sub_2683CF648();
    v35 = sub_2683CF658();
    v36 = v5;
    v37 = sub_2683BF58C(v35);

    (*v59)(v32, v33);
    *(v36 + v34) = v37;
    swift_storeEnumTagMultiPayload();
    v67 = v20;
    v39 = *(v20 + 16);
    v38 = *(v20 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_2683908A8(v38 > 1, v39 + 1, 1);
      v20 = v67;
    }

    *(v20 + 16) = v39 + 1;
    v26 = sub_2683C0F1C(v36, v20 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + v65[9] * v39);
    v29 += v60;
    --v25;
    v5 = v36;
  }

  while (v25);

  return v20;
}

uint64_t sub_2683C01E0(char *a1)
{
  v2 = sub_2683CB598();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = sub_2683CF678();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v14 + 16);
  v19 = OUTLINED_FUNCTION_69();
  v18(v19);
  v20 = *(v14 + 88);
  v21 = OUTLINED_FUNCTION_93_2();
  v22(v21);
  if (MEMORY[0x277D45BC8] && (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BC8]), v23) || MEMORY[0x277D45BB8] && (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BB8]), v23))
  {
    v24 = *(v14 + 96);
    v25 = OUTLINED_FUNCTION_93_2();
    v26(v25);
    v27 = *v17;
    v28 = [v27 uuid];

    sub_2683CB578();
    v29 = sub_2683CB548();
    (*(v14 + 8))(a1, v11);
    (*(v5 + 8))(v10, v2);
  }

  else if (MEMORY[0x277D45BC0] && (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45BC0]), v23))
  {
    (*(v14 + 8))(a1, v11);
    v30 = *(v14 + 96);
    v31 = OUTLINED_FUNCTION_93_2();
    v32(v31);
    v33 = sub_2683CF5F8();
    v34 = OUTLINED_FUNCTION_0_3(v33);
    v36 = v35;
    v38 = *(v37 + 64);
    MEMORY[0x28223BE20](v34);
    OUTLINED_FUNCTION_14_3();
    v41 = v40 - v39;
    (*(v36 + 32))(v40 - v39, v17, v33);
    (*(v36 + 88))(v41, v33);
    if (MEMORY[0x277D45B38] && (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45B38]), v23))
    {
      OUTLINED_FUNCTION_6_43();
      return 4;
    }

    else
    {
      if (!MEMORY[0x277D45B58] || (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45B58]), !v23))
      {
        if (!MEMORY[0x277D45B30] || (OUTLINED_FUNCTION_3_59(MEMORY[0x277D45B30]), !v23))
        {
          if (MEMORY[0x277D45B40])
          {
            OUTLINED_FUNCTION_3_59(MEMORY[0x277D45B40]);
            if (v23)
            {
              OUTLINED_FUNCTION_6_43();
              return 2;
            }
          }

          if (MEMORY[0x277D45B48])
          {
            OUTLINED_FUNCTION_3_59(MEMORY[0x277D45B48]);
            if (v23)
            {
              OUTLINED_FUNCTION_6_43();
              return 5;
            }
          }

          if (MEMORY[0x277D45B50])
          {
            OUTLINED_FUNCTION_3_59(MEMORY[0x277D45B50]);
            if (v23)
            {
              return 1;
            }
          }

          (*(v36 + 8))(v41, v33);
        }

        return 0;
      }

      OUTLINED_FUNCTION_6_43();
      return 3;
    }
  }

  else
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v42 = sub_2683CF7E8();
    v43 = __swift_project_value_buffer(v42, qword_28027C988);
    v62 = &v58;
    MEMORY[0x28223BE20](v43);
    v44 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    (v18)(&v58 - v44, a1, v11);
    v45 = sub_2683CF7C8();
    v60 = sub_2683CFE78();
    v61 = v45;
    if (os_log_type_enabled(v45, v60))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58 = &v58;
      v59 = v47;
      v63 = v47;
      *v46 = 136315138;
      MEMORY[0x28223BE20](v47);
      (v18)(&v58 - v44, &v58 - v44, v11);
      v48 = sub_2683CFAD8();
      v50 = v49;
      v51 = *(v14 + 8);
      v51(&v58 - v44, v11);
      v52 = sub_2681610A0(v48, v50, &v63);

      v53 = v46;
      *(v46 + 4) = v52;
      v54 = v61;
      _os_log_impl(&dword_2680EB000, v61, v60, "Unsupported RemSiriUtils.ListID: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v55 = a1;
    }

    else
    {

      v51 = *(v14 + 8);
      v51(a1, v11);
      v55 = &v58 - v44;
    }

    v51(v55, v11);
    v56 = OUTLINED_FUNCTION_93_2();
    (v51)(v56);
    return 0;
  }

  return v29;
}

uint64_t sub_2683C07D4(char *a1)
{
  v2 = sub_2683CF608();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  (v6)(v5, a1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (MEMORY[0x277D45B70] && v7 == *MEMORY[0x277D45B70])
  {
    (*(v3 + 96))(&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v8 = sub_2683CF668();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 32))(v12, &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v4 = sub_2683CF658();
    (*(v9 + 8))(v12, v8);
    return v4;
  }

  if (MEMORY[0x277D45B60] && v7 == *MEMORY[0x277D45B60] || MEMORY[0x277D45B68] && v7 == *MEMORY[0x277D45B68] || MEMORY[0x277D45B80] && v7 == *MEMORY[0x277D45B80] || MEMORY[0x277D45B78] && v7 == *MEMORY[0x277D45B78])
  {
    (*(v3 + 96))(&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254678, &unk_2683F9E58) + 48)];
    v14 = sub_2683CB528();
    (*(*(v14 - 8) + 8))(&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v54 = sub_2683CF668();
    v15 = *(*(v54 - 1) + 64);
    MEMORY[0x28223BE20](v54);
    a1 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = v13[2];
    if (!v3)
    {

      return MEMORY[0x277D84F90];
    }

    v50 = &v50;
    v51 = v13;
    v19 = *(v16 + 16);
    v18 = (v16 + 16);
    v20 = v13 + ((v18[64] + 32) & ~v18[64]);
    v52 = *(v18 + 7);
    v53 = v19;
    v6 = v18 - 8;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v54;
      v5 = v18;
      (v53)(a1, v20, v54);
      v22 = sub_2683CF658();
      (*v6)(a1, v21);
      v23 = *(v22 + 16);
      v24 = *(v4 + 16);
      v2 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v4 + 24) >> 1)
      {
        sub_2682E4CF8();
        v4 = v25;
      }

      if (*(v22 + 16))
      {
        v2 = (*(v4 + 24) >> 1) - *(v4 + 16);
        v26 = *(sub_2683CF5E8() - 8);
        if (v2 < v23)
        {
          goto LABEL_35;
        }

        v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v28 = *(v26 + 72);
        swift_arrayInitWithCopy();

        if (v23)
        {
          v29 = *(v4 + 16);
          v30 = __OFADD__(v29, v23);
          v31 = v29 + v23;
          if (v30)
          {
            goto LABEL_36;
          }

          *(v4 + 16) = v31;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_34;
        }
      }

      v20 = v52 + v20;
      --v3;
      v18 = v5;
      if (!v3)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (qword_28024C8F0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v33 = sub_2683CF7E8();
  v34 = __swift_project_value_buffer(v33, qword_28027C988);
  v54 = &v50;
  MEMORY[0x28223BE20](v34);
  v35 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  (v6)(&v50 - v35, a1, v2);
  v36 = sub_2683CF7C8();
  v37 = sub_2683CFE78();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v52 = v36;
    v39 = v38;
    v40 = swift_slowAlloc();
    v53 = v40;
    v51 = &v50;
    v55 = v40;
    *v39 = 136315138;
    MEMORY[0x28223BE20](v40);
    (v6)(&v50 - v35, &v50 - v35, v2);
    v41 = sub_2683CFAD8();
    v43 = v42;
    v44 = *(v3 + 8);
    v44(&v50 - v35, v2);
    v45 = sub_2681610A0(v41, v43, &v55);

    v46 = v39;
    *(v39 + 4) = v45;
    v47 = v52;
    v48 = v46;
    _os_log_impl(&dword_2680EB000, v52, v37, "Unknown CompletedGroup type: %s", v46, 0xCu);
    v49 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x26D617A40](v49, -1, -1);
    MEMORY[0x26D617A40](v48, -1, -1);
  }

  else
  {

    v44 = *(v3 + 8);
    v44(&v50 - v35, v2);
  }

  v44(v5, v2);
  return MEMORY[0x277D84F90];
}

uint64_t _s14descr2878F8F29V11ListContentOMa()
{
  result = qword_280254680;
  if (!qword_280254680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683C0F1C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2878F8F29V11ListContentOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683C0F90()
{
  sub_2683C1044();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2683C1094();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2683C110C();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_2683C1198();
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2683C1044()
{
  if (!qword_280254690)
  {
    v0 = sub_2683CFD28();
    if (!v1)
    {
      atomic_store(v0, &qword_280254690);
    }
  }
}

void sub_2683C1094()
{
  if (!qword_280254698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546A0, &qword_2683F9EA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280254698);
    }
  }
}

void sub_2683C110C()
{
  if (!qword_2802546A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546B0, &qword_2683F9EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546B8, &qword_2683F9EB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802546A8);
    }
  }
}

void sub_2683C1198()
{
  if (!qword_2802546C0)
  {
    sub_2683CB528();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546A0, &qword_2683F9EA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802546C0);
    }
  }
}

_BYTE *_s14descr2878F8F29V19SystemSmartListTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683C1310()
{
  result = qword_2802546C8;
  if (!qword_2802546C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802546C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_37()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return swift_allocObject();
}

uint64_t type metadata accessor for SetTaskAttributeNLv3IntentWrapper()
{
  result = qword_2802546D0;
  if (!qword_2802546D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683C1474()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2683C14FC()
{
  v1 = v0[5];
  sub_2681340E8(v0[2], v1, &qword_28024D398, &qword_2683D22F0);
  v2 = sub_2683CD358();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v0[5], &qword_28024D398, &qword_2683D22F0);
    v5 = 0;
  }

  else
  {
    v6 = v0[5];
    v5 = sub_2683CD2E8();
    (*(*(v2 - 8) + 8))(v4, v2);
  }

  v0[6] = v5;
  v7 = OUTLINED_FUNCTION_6(&dword_2683D2350);
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_2683C164C;
  v8 = v0[3];
  v9 = v0[4];

  return v11(v5, v8, 0);
}

uint64_t sub_2683C164C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2683C1754()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2683C17E8()
{
  v0 = type metadata accessor for AppIntentNode(0);
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v10 = OUTLINED_FUNCTION_23(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_268356630();
  sub_2681340E8(v17, v15, &qword_28024CE28, &qword_2683D1870);
  if (__swift_getEnumTagSinglePayload(v15, 1, v0) == 1)
  {
    sub_26812D9E0(v17, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_2683C32A8(v15, v8);
    sub_2683C3304(v8, v6);
    sub_2683533F0();
    v18 = v19;
    sub_2683CD078();
    sub_2683CD058();
    sub_2681C18A0(&qword_28024CE30, type metadata accessor for AppIntentNode);
    sub_2683CD5C8();

    sub_2683C3360(v6, type metadata accessor for AppIntentNode);
    sub_2683C3360(v8, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v17, &qword_28024CE28, &qword_2683D1870);
  }

  return v18;
}

uint64_t sub_2683C1A5C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 864) = v0;
  *(v1 + 1080) = v2;
  v3 = type metadata accessor for SetTaskAttributeNLv3IntentWrapper();
  *(v1 + 872) = v3;
  OUTLINED_FUNCTION_3_1(v3);
  *(v1 + 880) = v4;
  *(v1 + 888) = *(v5 + 64);
  *(v1 + 896) = OUTLINED_FUNCTION_15_1();
  v6 = type metadata accessor for IntentTriggerTemporalModelNLv3();
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  *(v1 + 904) = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CB668();
  *(v1 + 912) = v9;
  OUTLINED_FUNCTION_3_1(v9);
  *(v1 + 920) = v10;
  v12 = *(v11 + 64);
  *(v1 + 928) = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  *(v1 + 936) = OUTLINED_FUNCTION_15_1();
  v16 = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 944) = v16;
  OUTLINED_FUNCTION_3_1(v16);
  *(v1 + 952) = v17;
  *(v1 + 960) = *(v18 + 64);
  *(v1 + 968) = swift_task_alloc();
  *(v1 + 976) = swift_task_alloc();
  *(v1 + 984) = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2683C1C18()
{
  OUTLINED_FUNCTION_80();
  v30 = v0;
  if (*(v0 + 1080) == 1)
  {
    v1 = *(v0 + 864);
    sub_2683B3C5C(*(v0 + 984));
  }

  else
  {
    sub_2683C3304(*(v0 + 864), *(v0 + 984));
  }

  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = sub_2683CF7E8();
  *(v0 + 992) = v4;
  __swift_project_value_buffer(v4, qword_28027C940);
  sub_2683C3304(v2, v3);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE68();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 976);
  if (v7)
  {
    v9 = *(v0 + 944);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    OUTLINED_FUNCTION_0_29();
    sub_2681C18A0(v12, v13);
    v14 = sub_2683D0568();
    v16 = v15;
    OUTLINED_FUNCTION_0_78();
    sub_2683C3360(v8, v17);
    v18 = sub_2681610A0(v14, v16, &v29);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SetTaskAttributeNLv3IntentWrapper] attempting to parse %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    OUTLINED_FUNCTION_0_78();
    sub_2683C3360(v8, v19);
  }

  v20 = *(v0 + 984);
  v21 = *(v0 + 936);
  v22 = (*(v0 + 864) + *(*(v0 + 872) + 20));
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_268352A2C();
  if (qword_28024C960 != -1)
  {
    swift_once();
  }

  v23 = sub_2683CE918();
  v24 = __swift_project_value_buffer(v23, qword_28027CAC8);
  v25 = OUTLINED_FUNCTION_6(&dword_2683FA020);
  *(v0 + 1000) = v25;
  *v25 = v0;
  v25[1] = sub_2683C1F04;
  v26 = *(v0 + 936);

  return v28(v26, v24);
}

uint64_t sub_2683C1F04()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 1000);
  v3 = *(v1 + 936);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 1008) = v6;

  sub_26812D9E0(v3, &qword_28024D398, &qword_2683D22F0);
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2683C201C()
{
  v1 = *(v0 + 1080);
  (*(*(v0 + 920) + 16))(*(v0 + 928), *(v0 + 864) + *(*(v0 + 872) + 36), *(v0 + 912));
  if (v1 == 1)
  {
    *(v0 + 728) = 0;
    *(v0 + 696) = 0u;
    *(v0 + 712) = 0u;
  }

  else
  {
    sub_26813CA00(*(v0 + 864) + *(*(v0 + 872) + 32), v0 + 696);
  }

  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = sub_26836C418(*(v0 + 984), v2, v0 + 696);
  *(v0 + 1016) = v5;
  sub_26812D9E0(v0 + 696, &qword_28024E2C8, &unk_2683D6950);
  (*(v3 + 8))(v2, v4);
  v6 = [v5 temporalEventTrigger];
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1008);
  v8 = *(v0 + 984);
  v9 = *(v0 + 968);
  v42 = *(v0 + 952);
  v43 = *(v0 + 960);
  v10 = *(v0 + 944);
  v11 = *(v0 + 904);
  v12 = *(v0 + 896);
  v44 = *(v0 + 888);
  v41 = *(v0 + 880);
  v13 = *(v0 + 864);
  OUTLINED_FUNCTION_0_29();
  sub_2681C18A0(v14, v15);
  sub_2683CD5C8();
  *(v0 + 1024) = sub_26838858C(v6, v7, v11);

  sub_2683C3360(v11, type metadata accessor for IntentTriggerTemporalModelNLv3);
  sub_2683C3304(v8, v9);
  sub_2683C3304(v13, v12);
  v16 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v17 = (v43 + *(v41 + 80) + v16) & ~*(v41 + 80);
  v18 = swift_allocObject();
  *(v0 + 1032) = v18;
  sub_2683C32A8(v9, v18 + v16);
  sub_2683C32A8(v12, v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F9F8, qword_2683FA040);
  swift_asyncLet_begin();
  *(v0 + 1040) = sub_26836D6B8();
  if (qword_28024CBF8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 984);
  v20 = *(v0 + 944);
  v21 = sub_2683CD5D8();
  v22 = *(v21 + 16);
  v23 = (v21 + 32);
  v24 = 2;
  v25 = (v21 + 32);
  while (v22)
  {
    switch(*v25)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        v24 = 2;
        goto LABEL_108;
      case 5:
        OUTLINED_FUNCTION_24_10();
        break;
      case 6:
        OUTLINED_FUNCTION_17_14();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_20_17();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v26 = sub_2683D0598();

    ++v25;
    --v22;
    if (v26)
    {
      goto LABEL_54;
    }
  }

  v27 = *(v21 + 16);
  v24 = 1;
  while (2)
  {
    if (v27)
    {
      switch(*v23)
      {
        case 1:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_7_0();
          goto LABEL_51;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_51;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_51;
        case 5:
          v24 = 1;
LABEL_108:

          goto LABEL_54;
        case 6:
          OUTLINED_FUNCTION_17_14();
          goto LABEL_51;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_51;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_51;
        case 9:
          OUTLINED_FUNCTION_14_0();
          goto LABEL_51;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_51;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_51;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_51;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_51;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_51;
        case 0x10:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_13_0();
          goto LABEL_51;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_51;
        case 0x12:
          OUTLINED_FUNCTION_20_17();
          goto LABEL_51;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_51;
        default:
LABEL_51:
          v28 = sub_2683D0598();

          ++v23;
          --v27;
          if (v28)
          {
            goto LABEL_54;
          }

          continue;
      }
    }

    break;
  }

  v24 = 0;
LABEL_54:
  *(v0 + 1048) = v24;
  v29 = *(v0 + 984);
  v30 = *(v0 + 944);

  v31 = sub_2683CD5D8();
  v32 = *(v31 + 16);
  v33 = (v31 + 32);
  v34 = 2;
  v35 = (v31 + 32);
  while (v32)
  {
    switch(*v35)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 5:
        OUTLINED_FUNCTION_24_10();
        break;
      case 6:
        OUTLINED_FUNCTION_17_14();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        v34 = 2;
        goto LABEL_106;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_20_17();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v36 = sub_2683D0598();

    ++v35;
    --v32;
    if (v36)
    {
      goto LABEL_100;
    }
  }

  v37 = *(v31 + 16);
  v34 = 1;
  while (2)
  {
    if (v37)
    {
      switch(*v33)
      {
        case 1:
          OUTLINED_FUNCTION_7_0();
          goto LABEL_97;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_97;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_97;
        case 5:
          OUTLINED_FUNCTION_24_10();
          goto LABEL_97;
        case 6:
          OUTLINED_FUNCTION_17_14();
          goto LABEL_97;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_97;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_97;
        case 9:
          v34 = 1;
LABEL_106:

          goto LABEL_100;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_97;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_97;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_97;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_97;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_97;
        case 0x10:
          OUTLINED_FUNCTION_13_0();
          goto LABEL_97;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_97;
        case 0x12:
          OUTLINED_FUNCTION_20_17();
          goto LABEL_97;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_97;
        default:
LABEL_97:
          v38 = sub_2683D0598();

          ++v33;
          --v37;
          if (v38)
          {
            goto LABEL_100;
          }

          continue;
      }
    }

    break;
  }

  v34 = 0;
LABEL_100:
  *(v0 + 1056) = v34;

  v39 = OUTLINED_FUNCTION_26_28();

  return MEMORY[0x282200930](v39);
}

uint64_t sub_2683C29D0()
{
  *(v1 + 1064) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_2683C2DB0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_2683C29FC);
  }
}

uint64_t sub_2683C2CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v15 = *(v13 + 1032);
  v16 = *(v13 + 1016);
  OUTLINED_FUNCTION_24_23(*(v13 + 1024));

  OUTLINED_FUNCTION_0_78();
  sub_2683C3360(v12, v17);

  v18 = *(v13 + 8);
  v19 = *(v13 + 1072);
  OUTLINED_FUNCTION_77();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2683C2DB0()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_26_28();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 736);
}

uint64_t sub_2683C2E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v15 = *(v13 + 1032);
  v16 = *(v13 + 1024);
  OUTLINED_FUNCTION_24_23(*(v13 + 1016));

  OUTLINED_FUNCTION_0_78();
  sub_2683C3360(v12, v17);

  v18 = *(v13 + 8);
  v19 = *(v13 + 1064);
  OUTLINED_FUNCTION_77();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2683C2EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = *(type metadata accessor for SetTaskAttributeNLv3IntentWrapper() + 24);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2683C2F9C;

  return sub_26836C788(a2, a3 + v6);
}

uint64_t sub_2683C2F9C(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = a1;

    return MEMORY[0x2822009F8](sub_268212F2C, 0, 0);
  }
}

uint64_t sub_2683C30DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2683C1A5C();
}

uint64_t sub_2683C3178(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for SetTaskAttributeNLv3IntentWrapper();
  OUTLINED_FUNCTION_23(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_268193D88;

  return sub_2683C2EE8(a1, v1 + v7, v1 + v12);
}

uint64_t sub_2683C32A8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2683C3304(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2683C3360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_24_23(void *a1@<X8>)
{
  v3 = v1[126];
  v4 = v1[123];
  v5 = v1[122];
  v6 = v1[121];
  v7 = v1[117];
  v8 = v1[116];
  v9 = v1[113];
  v10 = v1[112];
}

uint64_t sub_2683C3468(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x2822009F8](sub_2683C34B0, 0, 0);
}

uint64_t sub_2683C34B0()
{
  v60 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 48);
  *(v0 + 64) = v2;
  v3 = *(v1 + 56);
  *(v0 + 88) = v3;
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = v2;
      if (v3)
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v5 = sub_2683CF7E8();
        __swift_project_value_buffer(v5, qword_28027C958);
        v6 = v2;
        v7 = sub_2683CF7C8();
        v8 = sub_2683CFE98();
        if (!OUTLINED_FUNCTION_6_44(v8))
        {
          goto LABEL_30;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v59 = v10;
        *v9 = 136446210;
        *(v0 + 24) = v2;
        v11 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v12 = sub_2683CFAD8();
        v14 = sub_2681610A0(v12, v13, &v59);

        *(v9 + 4) = v14;
        v15 = "[AppResolutionFlow] App resolution resulted in a handled error of %{public}s";
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v33 = sub_2683CF7E8();
        __swift_project_value_buffer(v33, qword_28027C958);
        v34 = v2;
        v7 = sub_2683CF7C8();
        v35 = sub_2683CFE78();
        if (!OUTLINED_FUNCTION_6_44(v35))
        {
          goto LABEL_30;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v59 = v10;
        *v9 = 136446210;
        *(v0 + 16) = v2;
        v36 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v37 = sub_2683CFAD8();
        v39 = sub_2681610A0(v37, v38, &v59);

        *(v9 + 4) = v39;
        v15 = "[AppResolutionFlow] App resolution resulted in an unhandled error of %{public}s";
      }

      _os_log_impl(&dword_2680EB000, v7, v1, v15, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
LABEL_30:

      v40 = *(v0 + 40);
      sub_2683CC3F8();
      sub_2683C4324(v2, v3);
LABEL_42:
      v57 = *(v0 + 8);

      return v57();
    }

    if (!(v2 | v3 ^ 0x80))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v41 = sub_2683CF7E8();
      __swift_project_value_buffer(v41, qword_28027C958);
      v42 = sub_2683CF7C8();
      v43 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v43))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v44, v45, "[AppResolutionFlow] Starting app resolution.");
        OUTLINED_FUNCTION_38();
      }

      v46 = *(v0 + 48);
      v47 = *(v0 + 56);
      v48 = *(v0 + 40);

      v49 = *(v46 + 24);
      v50 = (*(v46 + 16))();
      v51 = *(v1 + 48);
      *(v1 + 48) = 8;
      v52 = *(v1 + 56);
      *(v1 + 56) = 0x80;
      sub_2683C4324(v51, v52);
      *(v0 + 32) = v50;
      sub_2683C3C74();
      v53 = *(v47 + 80);
      sub_2683CB9C8();
      swift_getWitnessTable();
      sub_2683CC398();

      goto LABEL_42;
    }

    if (v3 == 128 && v2 == 8)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v27 = sub_2683CF7E8();
      __swift_project_value_buffer(v27, qword_28027C958);
      v28 = sub_2683CF7C8();
      v29 = sub_2683CFE88();
      if (!OUTLINED_FUNCTION_43(v29))
      {
        goto LABEL_41;
      }

      *OUTLINED_FUNCTION_21_5() = 0;
      v32 = "[AppResolutionFlow] Execute called durning app resolution flow";
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v54 = sub_2683CF7E8();
      __swift_project_value_buffer(v54, qword_28027C958);
      v28 = sub_2683CF7C8();
      v55 = sub_2683CFE98();
      if (!OUTLINED_FUNCTION_43(v55))
      {
        goto LABEL_41;
      }

      *OUTLINED_FUNCTION_21_5() = 0;
      v32 = "[AppResolutionFlow] User cancelled app resolution.";
    }

    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v30, v31, v32);
    OUTLINED_FUNCTION_38();
LABEL_41:
    v56 = *(v0 + 40);

    sub_2683CC3F8();
    goto LABEL_42;
  }

  v16 = qword_28024C8E0;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_21_5();
    *v20 = 0;
    _os_log_impl(&dword_2680EB000, v18, v19, "[AppResolutionFlow] App resolution completed successfully, pushing the main flow", v20, 2u);
    OUTLINED_FUNCTION_38();
  }

  v21 = *(v0 + 48);

  v22 = *(v21 + 40);
  v58 = (*(v21 + 32) + **(v21 + 32));
  v23 = *(*(v21 + 32) + 4);
  v24 = swift_task_alloc();
  *(v0 + 72) = v24;
  *v24 = v0;
  v24[1] = sub_2683C3AE8;

  return v58(v2);
}

uint64_t sub_2683C3AE8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_2683C3BE8, 0, 0);
}

uint64_t sub_2683C3BE8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  sub_2683CC3E8();

  sub_2683C4324(v2, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2683C3CB4()
{
  v1 = *(*v0 + 80);
  type metadata accessor for NotebookAppResolutionFlow();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

void sub_2683C3D3C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2683CB978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(v5 + 88);
  v10 = OUTLINED_FUNCTION_0_0();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D5B410])
  {
    v13 = *(v5 + 96);
    v14 = OUTLINED_FUNCTION_0_0();
    v15(v14);
    v16 = v1[6];
    v1[6] = *v8;
LABEL_5:
    v21 = *(v1 + 56);
    *(v1 + 56) = 0;
    goto LABEL_6;
  }

  if (v12 == *MEMORY[0x277D5B400])
  {
    v17 = *(v5 + 96);
    v18 = OUTLINED_FUNCTION_0_0();
    v19(v18);
    v20 = *v8;

    v16 = v1[6];
    v1[6] = v20;
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x277D5B408])
  {
    v22 = *(v5 + 96);
    v23 = OUTLINED_FUNCTION_0_0();
    v24(v23);
    v25 = *(v8 + 8) | 0x40;
    v16 = v1[6];
    v1[6] = *v8;
    v21 = *(v1 + 56);
    *(v1 + 56) = v25;
  }

  else
  {
    if (v12 != *MEMORY[0x277D5B418])
    {
      v26 = *(v3 + 80);
      type metadata accessor for NotebookAppResolutionFlow.Errors();
      swift_getWitnessTable();
      v27 = swift_allocError();
      v28 = v1[6];
      v1[6] = v27;
      v29 = *(v1 + 56);
      *(v1 + 56) = 64;
      sub_2683C4324(v28, v29);
      v30 = *(v5 + 8);
      v31 = OUTLINED_FUNCTION_0_0();
      v32(v31);
      return;
    }

    v16 = v1[6];
    v1[6] = 16;
    v21 = *(v1 + 56);
    *(v1 + 56) = 0x80;
  }

LABEL_6:
  sub_2683C4324(v16, v21);
}

uint64_t sub_2683C3FB0()
{
  sub_2683D0698();
  sub_26812816C();
  return sub_2683D06D8();
}

uint64_t sub_2683C3FEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_2683C4324(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t sub_2683C4020()
{
  sub_2683C3FEC();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_2683C406C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B17AppResolutionFlowC5State33_365B6DD027163EB04DF6B546BCFF474ALLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2683C40CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 9))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
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

uint64_t sub_2683C4138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_2683C41B8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 8) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_2683C4230(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268195F80;

  return sub_2683C3468(a1);
}

uint64_t sub_2683C42CC(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for NotebookAppResolutionFlow();

  return sub_2683CBF88();
}

void sub_2683C4324(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
  }
}

_BYTE *sub_2683C4344(_BYTE *result, int a2, int a3)
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

BOOL OUTLINED_FUNCTION_6_44(os_log_type_t a1)
{
  sub_2683C4324(v1, v3);

  return os_log_type_enabled(v2, a1);
}

uint64_t sub_2683C4444@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a3;
  v3 = sub_2683CCC18();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2683CC748();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9E8();
  v19 = sub_2683CC738();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  sub_2683CCB88();
  v24(v26, v10, v19, v21);

  (*(v6 + 8))(v10, v3);
  sub_268139D80();
  return sub_2681433DC(v26, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_2683C4620()
{
  OUTLINED_FUNCTION_14();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v0[45] = v5;
  v6 = sub_2683CCBA8();
  v0[50] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[51] = v7;
  v9 = *(v8 + 64);
  v0[52] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v0[53] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CCC18();
  v0[54] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[55] = v14;
  v16 = *(v15 + 64);
  v0[56] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CC748();
  v0[57] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v0[58] = v18;
  v20 = *(v19 + 64);
  v0[59] = OUTLINED_FUNCTION_55();
  v0[60] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2683C479C()
{
  v94 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v90 = *(v0 + 392);
  v91 = *(v0 + 432);
  v89 = *(v0 + 384);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9E8();
  v8 = sub_2683CC738();
  v10 = v9;
  v88 = *(v3 + 8);
  v88(v1, v2);
  sub_2683CCB88();
  v89(v4, v8, v10);

  (*(v5 + 8))(v4, v91);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v11 = *(v0 + 88);
  *(v0 + 488) = v11;
  if (v11 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v11 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    v14 = *(v0 + 400);
    v15 = *(v0 + 368);
    v16 = sub_2683CF7E8();
    __swift_project_value_buffer(v16, qword_28027C958);
    v17 = OUTLINED_FUNCTION_32_1();
    v18(v17);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 448);
      v22 = *(v0 + 432);
      v24 = *(v0 + 408);
      v23 = *(v0 + 416);
      v25 = *(v0 + 400);
      swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_34_1();
      v93[0] = v26;
      *v2 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v24 + 8))(v23, v25);
      v27 = OUTLINED_FUNCTION_44();
      v30 = sub_2681610A0(v27, v28, v29);

      *(v2 + 4) = v30;
      _os_log_impl(&dword_2680EB000, v19, v20, "[SFNI NeedsConfirmation] Did not get ConfirmationTask from parse: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v32 = *(v0 + 408);
      v31 = *(v0 + 416);
      v33 = *(v0 + 400);

      (*(v32 + 8))(v31, v33);
    }

    sub_26812C6B8();
    v34 = OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_29_9(v34, v35);
    goto LABEL_16;
  }

  v36 = *(v0 + 472);
  v37 = *(v0 + 456);
  v38 = *(v0 + 376);
  v39 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v39;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v40 = sub_2683CC738();
  v42 = v41;
  v88(v36, v37);

  v43 = sub_26818CD7C();
  if (v43 == 10)
  {
    sub_26812C6B8();
    v44 = OUTLINED_FUNCTION_59_1();
    *v45 = v40;
    v45[1] = v42;
    OUTLINED_FUNCTION_16_1(v44, v45);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
    v54 = *(v0 + 472);
    v53 = *(v0 + 480);
    v55 = *(v0 + 448);
    v57 = *(v0 + 416);
    v56 = *(v0 + 424);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v58();
  }

  v46 = v43;
  v47 = *(v0 + 376);

  v48 = sub_2683CC9C8();
  if (v11)
  {
    v49 = sub_2681753A0(v46);
  }

  else
  {
    v50 = *(v0 + 376);
    v51 = sub_2683CC9D8();
    v52 = [v51 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v49 = sub_2681758A8(v46, (v0 + 328));
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 496) = v49;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v60 = sub_2683CF7E8();
  *(v0 + 504) = __swift_project_value_buffer(v60, qword_28027C958);
  v61 = sub_2683CF7C8();
  v62 = sub_2683CFE98();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v63 = 136315394;
    *(v0 + 81) = v11 & 1;
    v64 = sub_2683CFAD8();
    v66 = sub_2681610A0(v64, v65, v93);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    v67 = v49;
    v68 = [v67 description];
    v69 = sub_2683CFA78();
    v71 = v70;

    v72 = sub_2681610A0(v69, v71, v93);

    *(v63 + 14) = v72;
    _os_log_impl(&dword_2680EB000, v61, v62, "[SFNI NeedsConfirmation] Parsed response as %s. Updated intent: %s", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  v73 = *(v0 + 280);
  if (v73 != 3)
  {
    if (v73 == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    v79 = OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_1(v79);
    v81 = *(v80 + 104);
    v82 = OUTLINED_FUNCTION_36_8();
    v83(v82);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v79);
    sub_2683BDBE8();
    v87 = v49;
    OUTLINED_FUNCTION_0_0();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  sub_268128148((v0 + 224), v0 + 288);
  v74 = *(v0 + 312);
  v75 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v74);
  v76 = *(v75 + 40);
  v92 = (v76 + *v76);
  v77 = v76[1];
  v78 = swift_task_alloc();
  *(v0 + 512) = v78;
  *v78 = v0;
  v78[1] = sub_2683C5000;

  return v92(1, v74, v75);
}

uint64_t sub_2683C5000()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 512);
  *v3 = *v1;
  *(v2 + 520) = v6;
  *(v2 + 528) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2683C5104()
{
  v30 = v0;
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 496);
  v5 = sub_268175B40(v2);

  v6 = v5;
  v7 = v6;
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();

  if (os_log_type_enabled(v8, v9))
  {
    v28 = *(v0 + 520);
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_34_1();
    v29 = v10;
    *v1 = 136315138;
    v11 = v7;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v29);

    *(v1 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v8, v9, "[SFNI NeedsConfirmation] Merged intent from secondary task: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  v17 = OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_36_8();
  v21(v20);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  sub_2683BDBE8();
  v25 = v7;
  OUTLINED_FUNCTION_0_0();
  sub_2683CC8D8();
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v26();
}

uint64_t sub_2683C5388()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = v0[62];
  sub_2681433DC((v0 + 20), &qword_28024D460, &qword_2683D5050);
  sub_2681433DC((v0 + 2), &qword_28024D458, &unk_2683D2C60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);

  v2 = v0[66];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[56];
  v7 = v0[52];
  v6 = v0[53];

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2683C5454()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet();
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v11 = sub_2683CC9A8();
  v0[39] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[40] = v12;
  v14 = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_15_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC138();
  v0[44] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[45] = v22;
  v24 = *(v23 + 64);
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v25);
  v27 = *(v26 + 64);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v28);
  v0[49] = v29;
  v0[50] = *(v30 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v31 = sub_2683CC528();
  v0[59] = v31;
  OUTLINED_FUNCTION_3_1(v31);
  v0[60] = v32;
  v34 = *(v33 + 64);
  v0[61] = OUTLINED_FUNCTION_15_1();
  v35 = sub_2683CC748();
  v0[62] = v35;
  OUTLINED_FUNCTION_3_1(v35);
  v0[63] = v36;
  v38 = *(v37 + 64);
  v0[64] = OUTLINED_FUNCTION_55();
  v0[65] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v0[66] = v39;
  OUTLINED_FUNCTION_3_1(v39);
  v0[67] = v40;
  v42 = *(v41 + 64);
  v0[68] = OUTLINED_FUNCTION_15_1();
  v43 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_2683C57D4()
{
  v66 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[29];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = OUTLINED_FUNCTION_32_1();
  v8(v7);
  v9 = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  if (v11)
  {
    v15 = v0[65];
    v16 = v0[63];
    v61 = v0[62];
    swift_slowAlloc();
    v63 = OUTLINED_FUNCTION_34_1();
    v65 = v63;
    *v1 = 136315138;
    v62 = v10;
    sub_2683CC9E8();
    v17 = sub_2683CC738();
    v19 = v18;
    (*(v16 + 8))(v15, v61);
    v20 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_44();
    v22(v21);
    v23 = sub_2681610A0(v17, v19, &v65);

    *(v1 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v9, v62, "[SFNI NeedsConfirmation] making prompt for confirming %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v24 = *(v13 + 8);
    v25 = OUTLINED_FUNCTION_44();
    v26(v25);
  }

  v27 = v0[66];
  v29 = v0[63];
  v28 = v0[64];
  v30 = v0[62];
  v31 = v0[29];
  sub_2683CC9E8();
  v32 = sub_2683CC738();
  v34 = v33;
  (*(v29 + 8))(v28, v30);

  v35 = sub_26818CD7C();
  if (v35 == 10)
  {
    sub_26812C6B8();
    v64 = OUTLINED_FUNCTION_59_1();
    *v36 = v32;
    v36[1] = v34;
    OUTLINED_FUNCTION_16_1(v64, v36);
    v37 = v0[68];
    v38 = v0[65];
    v39 = v0[64];
    v40 = v0[61];
    v42 = v0[57];
    v41 = v0[58];
    v44 = v0[55];
    v43 = v0[56];
    v46 = v0[53];
    v45 = v0[54];
    OUTLINED_FUNCTION_13_5();

    OUTLINED_FUNCTION_40();

    return v47();
  }

  else
  {
    v49 = v35;
    v50 = v0[66];
    v51 = v0[61];
    v52 = v0[29];

    v0[5] = &type metadata for SearchForNotebookItems.Parameter;
    v0[6] = &off_287900F98;
    *(v0 + 16) = v49;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v53 = sub_2683CC9D8();
    v54 = [v53 confirmationReason];

    v55 = swift_task_alloc();
    v0[69] = v55;
    *v55 = v0;
    v55[1] = sub_2683C5C10;
    v56 = v0[32];
    v57 = v0[33];
    v58 = v0[30];
    v59 = v0[31];
    v60 = v0[28];

    return sub_2683C63F4(v60, v49, v54, v58);
  }
}

uint64_t sub_2683C5C10()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 552);
  *v3 = *v1;
  *(v2 + 560) = v6;
  *(v2 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2683C5D14()
{
  v1 = v0[70];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[57];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[43];
  v94 = v0[42];
  v9 = v0[34];
  __swift_storeEnumTagSinglePayload(v0[58], 1, 1, v9);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  sub_2683CC118();
  v16 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  v17 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v18 = swift_allocObject();
  v0[72] = v18;
  *(v18 + 16) = xmmword_2683D2250;
  *(v18 + 32) = v1;
  v19 = v1;
  if (sub_2683ABE58(v18))
  {
    sub_2683ABE60(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D616C90](0, v18);
    }

    else
    {
      v20 = *(v18 + 32);
    }

    v21 = v20;
    v22 = [v20 catId];

    v90 = sub_2683CFA78();
    v93 = v23;
  }

  else
  {
    v90 = 0;
    v93 = 0;
  }

  v24 = v0[58];
  v89 = v24;
  v26 = v0[55];
  v25 = v0[56];
  v28 = v0[49];
  v27 = v0[50];
  v84 = v0[47];
  v85 = v0[48];
  v29 = v0[45];
  v82 = v0[46];
  v83 = v0[44];
  v86 = v0[43];
  v87 = v0[42];
  v88 = v0[41];
  v91 = v0[34];
  v92 = v0[54];
  v30 = v0[31];
  sub_2681340E8(v0[57], v25, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v24, v26, &qword_28024E770, &qword_2683D80D0);
  v31 = *(v28 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v27 + v31 + v32) & ~v31;
  v34 = swift_allocObject();
  v0[73] = v34;
  *(v34 + 16) = v30;
  sub_2681430AC(v25, v34 + v32);
  sub_2681430AC(v26, v34 + v33);
  (*(v29 + 16))(v82, v84, v83);
  v35 = swift_task_alloc();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = v90;
  *(v35 + 48) = v93;
  *(v35 + 56) = v85;
  *(v35 + 64) = 257;
  *(v35 + 72) = sub_26814311C;
  *(v35 + 80) = v34;
  *(v35 + 88) = 0;
  *(v35 + 96) = v86;
  *(v35 + 104) = 2;
  *(v35 + 112) = v87;

  sub_2683CC8E8();

  sub_2681340E8(v89, v92, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    v36 = v0 + 54;
  }

  else
  {
    v37 = v0[57];
    v38 = v0[53];
    v39 = v0[34];
    sub_26814320C(v0[54], v0[38]);
    sub_2681340E8(v37, v38, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      v62 = v0[37];
      v63 = v0[38];
      v64 = v0[34];
      sub_26814320C(v0[53], v62);
      v0[20] = v64;
      v65 = sub_268143270();
      v0[21] = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v63, boxed_opaque_existential_0);
      v0[25] = v64;
      v0[26] = v65;
      v67 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v62, v67);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[74] = v68;
      *v68 = v69;
      v68[1] = sub_2682154B8;
      v70 = v0[41];
      v71 = v0[31];
      v72 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v36 = v0 + 53;
    sub_26814332C(v0[38]);
  }

  v40 = *v36;
  v41 = v0[58];
  v42 = v0[52];
  v43 = v0[34];
  sub_2681433DC(v40, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v41, v42, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
  v45 = v0[52];
  v46 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    v47 = v0[57];
    v48 = v0[51];
    sub_2681433DC(v45, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v47, v48, &qword_28024E770, &qword_2683D80D0);
    v49 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
    {
      sub_2681433DC(v0[51], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[77] = v51;
      *v51 = v52;
      v51[1] = sub_268141D90;
      v53 = v0[41];
      v54 = v0[31];
      v55 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v75 = v0[34];
    v76 = v0[35];
    sub_26814320C(v0[51], v76);
    v0[10] = v75;
    v0[11] = sub_268143270();
    v77 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v76, v77);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[76] = v78;
    *v78 = v79;
    OUTLINED_FUNCTION_40_0(v78);
  }

  else
  {
    v58 = v0[36];
    sub_26814320C(v45, v58);
    v0[15] = v46;
    v0[16] = sub_268143270();
    v59 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v58, v59);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[75] = v60;
    *v60 = v61;
    OUTLINED_FUNCTION_40_0(v60);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_2683C63F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a2;
  *(v4 + 88) = a1;
  *(v4 + 96) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683C64C4, 0, 0);
}

uint64_t sub_2683C64C4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  switch(*(v1 + 296))
  {
    case 1:
      v33 = OUTLINED_FUNCTION_25_31();
      *(v1 + 160) = sub_2681DF4C8(v33);
      if (v0)
      {
        goto LABEL_28;
      }

      v34 = *(v1 + 128);
      sub_2683CFEA8();
      sub_2683CF168();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      v39 = swift_task_alloc();
      *(v1 + 168) = v39;
      *v39 = v1;
      v39[1] = sub_2683C6AE4;
      OUTLINED_FUNCTION_22_27(*(v1 + 128));
      OUTLINED_FUNCTION_20_9();

      return sub_2681FF07C();
    case 2:
      v12 = OUTLINED_FUNCTION_25_31();
      sub_2681DF800(v12);
      if (v0)
      {
        goto LABEL_28;
      }

      v13 = *(v1 + 120);
      sub_2683CFB38();

      sub_2683CF168();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      v18 = swift_task_alloc();
      *(v1 + 184) = v18;
      *v18 = v1;
      v18[1] = sub_2683C6C98;
      OUTLINED_FUNCTION_22_27(*(v1 + 120));
      OUTLINED_FUNCTION_20_9();

      return sub_2681FE764();
    case 3:
      OUTLINED_FUNCTION_25_31();
      v26 = sub_2681DF7D4();
      if (v0)
      {
        goto LABEL_28;
      }

      sub_2681BA96C(v26, *(v1 + 112));
      v27 = swift_task_alloc();
      *(v1 + 200) = v27;
      *v27 = v1;
      v27[1] = sub_2683C6E0C;
      OUTLINED_FUNCTION_22_27(*(v1 + 112));
      OUTLINED_FUNCTION_20_9();

      return sub_2681FEEC4();
    case 4:
      v4 = OUTLINED_FUNCTION_25_31();
      v5 = sub_2681DF79C(v4);
      *(v1 + 216) = v5;
      if (v0)
      {
        goto LABEL_28;
      }

      v6 = v5;
      sub_2683CF088();
      v7 = v6;
      *(v1 + 224) = sub_26812E314(v6);
      v8 = swift_task_alloc();
      *(v1 + 232) = v8;
      *v8 = v1;
      OUTLINED_FUNCTION_52_10(v8);
      OUTLINED_FUNCTION_20_9();

      return sub_2681FEDA8(v9);
    case 5:
    case 8:
    case 9:
      sub_26812C6B8();
      v2 = OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_29_9(v2, v3);
      goto LABEL_28;
    case 6:
      v41 = OUTLINED_FUNCTION_25_31();
      *(v1 + 248) = sub_2681DF614(v41);
      if (v0)
      {
        goto LABEL_28;
      }

      *(v1 + 256) = sub_2683608FC();
      v50 = swift_task_alloc();
      *(v1 + 264) = v50;
      *v50 = v1;
      OUTLINED_FUNCTION_52_10(v50);
      OUTLINED_FUNCTION_20_9();

      result = sub_2681FEAD4(v51);
      break;
    case 7:
      v20 = OUTLINED_FUNCTION_25_31();
      v21 = sub_2681DF724(v20);
      if (v0)
      {
        goto LABEL_28;
      }

      sub_26831EE18(v21, *(v1 + 104));
      v22 = swift_task_alloc();
      *(v1 + 280) = v22;
      *v22 = v1;
      v22[1] = sub_2683C72A0;
      v24 = *(v1 + 96);
      v23 = *(v1 + 104);
      OUTLINED_FUNCTION_20_9();

      result = sub_2681FE91C();
      break;
    default:
      v29 = OUTLINED_FUNCTION_25_31();
      v30 = sub_2681DF8FC(v29);
      if (v0)
      {
LABEL_28:
        OUTLINED_FUNCTION_12_38();

        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_20_9();

        result = v43(v42, v43, v44, v45, v46, v47, v48, v49);
      }

      else
      {
        sub_268320CB0(v30, *(v1 + 136));
        v31 = swift_task_alloc();
        *(v1 + 144) = v31;
        *v31 = v1;
        v31[1] = sub_2683C6970;
        OUTLINED_FUNCTION_22_27(*(v1 + 136));
        OUTLINED_FUNCTION_20_9();

        result = sub_2681FEBF0();
      }

      break;
  }

  return result;
}

uint64_t sub_2683C6970()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *(v5 + 136);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v3 + 152) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_2683C6AE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 168);
  v7 = *(v5 + 128);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 176) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2683C6C10()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_20_9();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C6C98()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *(v5 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v3 + 192) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_2683C6E0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *(v5 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v3 + 208) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_2683C6F80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 232);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[30] = v0;

  if (!v0)
  {
    v10 = v3[28];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2683C7088()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_20_9();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C7110()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  v7 = *(v6 + 264);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[34] = v0;

  if (!v0)
  {
    v10 = v3[32];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2683C7218()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_20_9();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C72A0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *(v5 + 104);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v3 + 288) = v0;

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_2683C7414()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C7494()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C751C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C759C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C761C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 224);

  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2683C76AC()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 256);

  v2 = *(v0 + 272);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2683C773C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C77C4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2681342AC;

  return sub_2683C4620();
}

uint64_t sub_2683C7888()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2681342AC;

  return sub_2683C5454();
}

uint64_t sub_2683C7960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268133EC8;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

unint64_t sub_2683C7A28()
{
  result = qword_280254860;
  if (!qword_280254860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254860);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_38()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
}

uint64_t OUTLINED_FUNCTION_29_25()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
}

uint64_t OUTLINED_FUNCTION_52_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 96);
  return v2;
}

uint64_t sub_2683C7AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2 || a1 == 1)
    {
      sub_2683CFB38();
      v4 = 0;
      goto LABEL_11;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = INSpatialEvent.description.getter(a1);
      v12 = sub_2681610A0(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2680EB000, v6, v7, "[INSpatialEvent catEnumValue] Got unknown value: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26D617A40](v9, -1, -1);
      MEMORY[0x26D617A40](v8, -1, -1);
    }
  }

  v4 = 1;
LABEL_11:
  v13 = sub_2683CF168();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v13);
}

uint64_t sub_2683C7C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_2683CD038();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_2683C810C(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2683C817C(a1);
    sub_2683C817C(v5);
    return 0;
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v11, v13, v6);
  v15 = (*(v7 + 88))(v11, v6);
  if (v15 == *MEMORY[0x277D5E3B8])
  {
    goto LABEL_5;
  }

  if (v15 != *MEMORY[0x277D5E3C0])
  {
    if (v15 == *MEMORY[0x277D5E3C8])
    {
LABEL_5:
      sub_2683C817C(a1);
      (*(v7 + 8))(v13, v6);
      return 1;
    }

    if (v15 != *MEMORY[0x277D5E3D0])
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v16 = sub_2683CF7E8();
      __swift_project_value_buffer(v16, qword_28027C958);
      v17 = sub_2683CF7C8();
      v18 = sub_2683CFE78();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2680EB000, v17, v18, "[INSpatialEvent] Got unknown eventTriggerAttribute value", v19, 2u);
        MEMORY[0x26D617A40](v19, -1, -1);
      }

      sub_2683C817C(a1);
      v20 = *(v7 + 8);
      v20(v13, v6);
      v20(v11, v6);
      return 0;
    }
  }

  sub_2683C817C(a1);
  (*(v7 + 8))(v13, v6);
  return 2;
}

uint64_t sub_2683C7FD0(char a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  else
  {
    return qword_2683FA438[a1];
  }
}

uint64_t INSpatialEvent.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x7472617065642ELL;
    case 1:
      return 0x6576697272612ELL;
  }

  sub_2683D0178();

  v2 = sub_2683D0568();
  MEMORY[0x26D616690](v2);

  MEMORY[0x26D616690](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2683C810C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683C817C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2683C81F4(uint64_t a1, void (*a2)(void *__return_ptr, char *, void))
{
  v3 = sub_2683CBCE8();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2683CCC18();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCB88();
  a2(v22, v18, 0);
  (*(v14 + 8))(v18, v11);
  if (v23 == 255)
  {
    sub_268167CA4(v22);
    return 0;
  }

  v19 = sub_2683723D4();
  sub_26813A1A0(v22);
  if (v19 == 2)
  {
    return 0;
  }

  sub_268348D40(v19);
  v20 = sub_2683CBC98();
  (*(v6 + 8))(v10, v3);
  return v20;
}

void sub_2683C83CC()
{
  qword_280254868 = 0xD000000000000028;
  unk_280254870 = 0x80000002683FD670;
  qword_280254878 = 0x656761507478656ELL;
  unk_280254880 = 0xE800000000000000;
}

uint64_t static NextPageInvocation.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024CC80 != -1)
  {
    swift_once();
  }

  v2 = unk_280254870;
  v3 = qword_280254878;
  v4 = unk_280254880;
  *a1 = qword_280254868;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_2683C8498(uint64_t a1)
{
  v2 = sub_2683C8624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683C84D4(uint64_t a1)
{
  v2 = sub_2683C8624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NextPageInvocation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254888, &qword_2683FA4C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683C8624();
  sub_2683D0718();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2683C8624()
{
  result = qword_280254890;
  if (!qword_280254890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254890);
  }

  return result;
}

unint64_t sub_2683C86A4(void *a1)
{
  a1[1] = sub_2683C86DC();
  a1[2] = sub_2683C8730();
  result = sub_2683C8784();
  a1[3] = result;
  return result;
}

unint64_t sub_2683C86DC()
{
  result = qword_280254898;
  if (!qword_280254898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254898);
  }

  return result;
}

unint64_t sub_2683C8730()
{
  result = qword_2802548A0;
  if (!qword_2802548A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548A0);
  }

  return result;
}

unint64_t sub_2683C8784()
{
  result = qword_2802548A8;
  if (!qword_2802548A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextPageInvocation(_BYTE *result, int a2, int a3)
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

unint64_t sub_2683C88C8()
{
  result = qword_2802548B0;
  if (!qword_2802548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548B0);
  }

  return result;
}

unint64_t sub_2683C8920()
{
  result = qword_2802548B8;
  if (!qword_2802548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548B8);
  }

  return result;
}

uint64_t type metadata accessor for SnoozeTasksCATs()
{
  result = qword_2802548C0;
  if (!qword_2802548C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683C8A00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2683C8A24, 0, 0);
}

uint64_t sub_2683C8A24()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v8 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2683C8B70;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, 0xD00000000000001DLL, 0x80000002683FD900, v2);
}

uint64_t sub_2683C8B70()
{
  OUTLINED_FUNCTION_14();
  v3 = *(*v1 + 48);
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00, 0, 0);
  }

  else
  {
    v5 = *(v2 + 40);

    OUTLINED_FUNCTION_40();

    return v6();
  }
}

uint64_t sub_2683C8C9C()
{
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D99FC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000024);
}

uint64_t sub_2683C8D50()
{
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D933C;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD00000000000001ALL);
}

uint64_t sub_2683C8E04()
{
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D99FC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000026);
}

uint64_t sub_2683C8EB8()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683C8F54, 0, 0);
}

uint64_t sub_2683C8F54()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_2683D2890;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x80000002683FDA70;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v0[6], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = v0[4];
  *(v3 + 80) = 7368801;
  *(v3 + 88) = 0xE300000000000000;
  v9 = 0;
  if (v8)
  {
    v9 = sub_2683CF138();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v8;
  *(v3 + 120) = v9;
  v10 = *(MEMORY[0x277D55BF0] + 4);
  v15 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2683C9164;
  v12 = v0[5];
  v13 = v0[2];

  return v15(v13, 0xD000000000000028, 0x8000000268401EB0, v3);
}

uint64_t sub_2683C9164()
{
  OUTLINED_FUNCTION_14();
  v3 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v2;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2683C929C, 0, 0);
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_2683C929C()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_40();
  v4 = v0[9];

  return v3();
}

uint64_t sub_2683C9300(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2683C9354(a1, a2);
}

uint64_t sub_2683C9354(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v14 - v11, &qword_28024D258, &unk_2683D1F60);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v12;
}

uint64_t sub_2683C94E8@<X0>(uint64_t a1@<X8>)
{
  v347 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D280, &qword_2683D20F8);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v346 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D288, &qword_2683D2100);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v345 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D290, &qword_2683D2108);
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v352 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D298, &qword_2683D2110);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v351 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A0, &qword_2683D2118);
  OUTLINED_FUNCTION_23(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_0();
  v344 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A8, &qword_2683D2120);
  OUTLINED_FUNCTION_23(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v343 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B0, &qword_2683D2128);
  OUTLINED_FUNCTION_23(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_0();
  v342 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B8, &qword_2683D2130);
  OUTLINED_FUNCTION_23(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_0();
  v341 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C0, &qword_2683D2138);
  OUTLINED_FUNCTION_23(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_0();
  v348 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C8, &qword_2683D2140);
  OUTLINED_FUNCTION_23(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_0();
  v356 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D0, &qword_2683D2148);
  OUTLINED_FUNCTION_23(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_0();
  v355 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D8, &qword_2683D2150);
  OUTLINED_FUNCTION_23(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_5_0();
  v340 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D328, &qword_2683D2198);
  OUTLINED_FUNCTION_23(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E0, &qword_2683D2158);
  OUTLINED_FUNCTION_23(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F0, &qword_2683D2160);
  OUTLINED_FUNCTION_23(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F8, &qword_2683D2168);
  OUTLINED_FUNCTION_23(v78);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D300, &qword_2683D2170);
  OUTLINED_FUNCTION_23(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D308, &qword_2683D2178);
  OUTLINED_FUNCTION_23(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D310, &qword_2683D2180);
  OUTLINED_FUNCTION_23(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v97);
  v331 = sub_2683CE528();
  v98 = OUTLINED_FUNCTION_0_3(v331);
  v330 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v102);
  v327 = sub_2683CE768();
  v103 = OUTLINED_FUNCTION_0_3(v327);
  v326 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v107);
  v108 = sub_2683CDC48();
  v109 = OUTLINED_FUNCTION_0_3(v108);
  v357 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v113);
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D0, &qword_2683FA678);
  v114 = OUTLINED_FUNCTION_1(v349);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v117);
  v119 = &v319[-v118];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D8, &unk_2683FA680);
  v121 = OUTLINED_FUNCTION_23(v120);
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_56_3();
  v337 = v127;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_20_39();
  MEMORY[0x28223BE20](v129);
  v131 = &v319[-v130];
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D320, &qword_2683D2190);
  OUTLINED_FUNCTION_23(v132);
  v134 = *(v133 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D330, &qword_2683D21A0);
  v137 = OUTLINED_FUNCTION_23(v136);
  v139 = *(v138 + 64);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_2_1();
  v354 = v140;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v142);
  v144 = &v319[-v143];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D338, &qword_2683D21A8);
  v146 = OUTLINED_FUNCTION_23(v145);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_2_1();
  v338 = v149;
  OUTLINED_FUNCTION_8_0();
  v151 = MEMORY[0x28223BE20](v150);
  MEMORY[0x28223BE20](v151);
  v153 = &v319[-v152];
  v154 = sub_2683CE658();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v154);
  sub_2683CEA48();
  v350 = v144;
  OUTLINED_FUNCTION_4_0();
  v323 = v158;
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v158);
  v353 = v1;
  sub_2683CDC68();
  if (v162)
  {
    sub_2683CE648();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
    sub_2683CE638();
    OUTLINED_FUNCTION_17_29(v153);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v154);
    OUTLINED_FUNCTION_10_16();
    sub_2683CADC0(v170, v171, v172, v173);
  }

  v339 = v153;
  sub_2683CDC38();
  v174 = *(v357 + 104);
  v174(v2, *MEMORY[0x277D5EFA0], v108);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v108);
  v178 = *(v349 + 48);
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v179, v180, v181, v182);
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v183, v184, v185, v186);
  OUTLINED_FUNCTION_3_5(v119);
  if (v191)
  {
    v187 = OUTLINED_FUNCTION_7_37();
    sub_26812D9E0(v187, v188, &unk_2683FA680);
    OUTLINED_FUNCTION_17_29(v131);
    OUTLINED_FUNCTION_3_5(&v119[v178]);
    v189 = v348;
    if (v191)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v190 = v337;
    sub_2683CAD70(v119, v337, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_3_5(&v119[v178]);
    v189 = v348;
    if (!v191)
    {
      v221 = v357;
      v222 = &v119[v178];
      v223 = v322;
      (*(v357 + 32))(v322, v222, v108);
      sub_2683CAD18();
      v320 = sub_2683CFA58();
      v224 = *(v221 + 8);
      v224(v223, v108);
      sub_26812D9E0(v2, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v131, &qword_2802548D8, &unk_2683FA680);
      v224(v337, v108);
      v189 = v348;
      v225 = OUTLINED_FUNCTION_93_4();
      sub_26812D9E0(v225, v226, &unk_2683FA680);
      if (v320)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    v192 = OUTLINED_FUNCTION_7_37();
    sub_26812D9E0(v192, v193, &unk_2683FA680);
    OUTLINED_FUNCTION_17_29(v131);
    (*(v357 + 8))(v190, v108);
  }

  sub_26812D9E0(v119, &qword_2802548D0, &qword_2683FA678);
LABEL_12:
  v194 = v335;
  sub_2683CDC38();
  v195 = v334;
  v174(v334, *MEMORY[0x277D5EFA8], v108);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v108);
  v199 = *(v349 + 48);
  v200 = v336;
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v201, v202, v203, v204);
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v205, v206, v207, v208);
  OUTLINED_FUNCTION_3_5(v200);
  if (!v191)
  {
    v214 = v321;
    sub_2683CAD70(v200, v321, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_3_5(v200 + v199);
    if (!v215)
    {
      v227 = v195;
      v228 = v357;
      v229 = v200 + v199;
      v230 = v322;
      (*(v357 + 32))(v322, v229, v108);
      sub_2683CAD18();
      v231 = sub_2683CFA58();
      v232 = *(v228 + 8);
      v232(v230, v108);
      v233 = v227;
      v189 = v348;
      sub_26812D9E0(v233, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v194, &qword_2802548D8, &unk_2683FA680);
      v232(v214, v108);
      sub_26812D9E0(v200, &qword_2802548D8, &unk_2683FA680);
      if (v231)
      {
        goto LABEL_26;
      }

      v349 = 0;
      v357 = 0;
      v219 = v340;
      v218 = v341;
      v212 = v355;
      v211 = v356;
      v213 = v354;
LABEL_22:
      v220 = v350;
      goto LABEL_27;
    }

    v216 = OUTLINED_FUNCTION_7_37();
    sub_26812D9E0(v216, v217, &unk_2683FA680);
    OUTLINED_FUNCTION_17_29(v194);
    (*(v357 + 8))(v214, v108);
    v212 = v355;
    v211 = v356;
    v213 = v354;
LABEL_21:
    sub_26812D9E0(v200, &qword_2802548D0, &qword_2683FA678);
    v349 = 0;
    v357 = 0;
    v219 = v340;
    v218 = v341;
    goto LABEL_22;
  }

  v209 = OUTLINED_FUNCTION_7_37();
  sub_26812D9E0(v209, v210, &unk_2683FA680);
  OUTLINED_FUNCTION_17_29(v194);
  OUTLINED_FUNCTION_3_5(v200 + v199);
  v212 = v355;
  v211 = v356;
  v213 = v354;
  if (!v191)
  {
    goto LABEL_21;
  }

  v119 = v200;
LABEL_17:
  sub_26812D9E0(v119, &qword_2802548D8, &unk_2683FA680);
LABEL_26:
  v234 = *MEMORY[0x277D560C8];
  v235 = v326;
  v236 = *(v326 + 104);
  v237 = v325;
  v238 = v327;
  v236(v325, v234, v327);
  v349 = sub_2683CE758();
  v357 = v239;
  v240 = *(v235 + 8);
  v241 = OUTLINED_FUNCTION_21_30();
  v240(v241);
  v236(v237, v234, v238);
  sub_2683CE758();
  v242 = OUTLINED_FUNCTION_21_30();
  v240(v242);
  v243 = sub_2683CE798();
  OUTLINED_FUNCTION_0_2(v328, v244, v245, v243);
  sub_2683CE788();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v246, v247, v248, v249);
  sub_2683CE778();
  sub_2683CE7A8();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v250, v251, v252, v253);
  v254 = sub_2683CE518();
  OUTLINED_FUNCTION_0_2(v332, v255, v256, v254);
  sub_2683CEBF8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v260);
  v261 = v329;
  OUTLINED_FUNCTION_93_4();
  sub_2683CE508();
  sub_2683CE8D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v262, v263, v264, v265);
  v266 = v330;
  v267 = v331;
  (*(v330 + 16))(v333, v261, v331);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v267);
  v271 = v324;
  sub_2683CEA38();
  (*(v266 + 8))(v261, v267);
  v220 = v350;
  v272 = OUTLINED_FUNCTION_93_4();
  sub_26812D9E0(v272, v273, &qword_2683D21A0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v274, v275, v276, v323);
  sub_2683CADC0(v271, v220, &qword_28024D330, &qword_2683D21A0);
  v219 = v340;
  v218 = v341;
  v212 = v355;
  v211 = v356;
  v213 = v354;
LABEL_27:
  v277 = sub_2683CEA78();
  OUTLINED_FUNCTION_0_2(v219, v278, v279, v277);
  v280 = sub_2683CEA88();
  OUTLINED_FUNCTION_0_2(v212, v281, v282, v280);
  v283 = sub_2683CEAB8();
  OUTLINED_FUNCTION_0_2(v211, v284, v285, v283);
  v286 = sub_2683CEA58();
  OUTLINED_FUNCTION_0_2(v189, v287, v288, v286);
  v289 = sub_2683CEA28();
  OUTLINED_FUNCTION_0_2(v218, v290, v291, v289);
  sub_2683CEAC8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v292, v293, v294, v295);
  sub_2683CAD70(v220, v213, &qword_28024D330, &qword_2683D21A0);
  v296 = sub_2683CEC08();
  OUTLINED_FUNCTION_0_2(v343, v297, v298, v296);
  v299 = sub_2683CEB88();
  OUTLINED_FUNCTION_0_2(v344, v300, v301, v299);
  v302 = sub_2683CE708();
  OUTLINED_FUNCTION_0_2(v351, v303, v304, v302);
  v305 = sub_2683CE6D8();
  OUTLINED_FUNCTION_0_2(v352, v306, v307, v305);
  sub_2683CE7C8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v308, v309, v310, v311);
  v312 = v339;
  sub_2683CAD70(v339, v338, &qword_28024D338, &qword_2683D21A8);
  if (!v357)
  {
    v349 = sub_2683CDC68();
    v357 = v313;
  }

  sub_2683CEA68();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v314, v315, v316, v317);
  sub_2683CEBC8();
  sub_26812D9E0(v350, &qword_28024D330, &qword_2683D21A0);
  return sub_26812D9E0(v312, &qword_28024D338, &qword_2683D21A8);
}

BOOL sub_2683CA724()
{
  v2 = sub_2683CDC48();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_18();
  v71 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D0, &qword_2683FA678);
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_1();
  v77 = v13;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v68[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D8, &unk_2683FA680);
  v18 = OUTLINED_FUNCTION_23(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_1();
  v70 = v21;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_56_3();
  v75 = v23;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_56_3();
  v76 = v25;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_39();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v68[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v68[-v31];
  v74 = v0;
  sub_2683CDC38();
  v33 = *MEMORY[0x277D5EFA0];
  v78 = v5;
  v72 = *(v5 + 104);
  v72(v30, v33, v2);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v2);
  v73 = v9;
  v37 = *(v9 + 48);
  sub_2683CAD70(v32, v16, &qword_2802548D8, &unk_2683FA680);
  sub_2683CAD70(v30, &v16[v37], &qword_2802548D8, &unk_2683FA680);
  OUTLINED_FUNCTION_2_6(v16);
  if (v41)
  {
    v38 = OUTLINED_FUNCTION_93_4();
    sub_26812D9E0(v38, v39, &unk_2683FA680);
    sub_26812D9E0(v32, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_2_6(&v16[v37]);
    if (v41)
    {
      v40 = v16;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2683CAD70(v16, v1, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_2_6(&v16[v37]);
    if (!v41)
    {
      v59 = v78;
      v60 = v71;
      (*(v78 + 32))(v71, &v16[v37], v2);
      sub_2683CAD18();
      v69 = sub_2683CFA58();
      v61 = *(v59 + 8);
      v61(v60, v2);
      sub_26812D9E0(v30, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v32, &qword_2802548D8, &unk_2683FA680);
      v62 = OUTLINED_FUNCTION_7_37();
      (v61)(v62);
      sub_26812D9E0(v16, &qword_2802548D8, &unk_2683FA680);
      if (v69)
      {
        return 1;
      }

      goto LABEL_10;
    }

    v42 = OUTLINED_FUNCTION_93_4();
    sub_26812D9E0(v42, v43, &unk_2683FA680);
    sub_26812D9E0(v32, &qword_2802548D8, &unk_2683FA680);
    v44 = *(v78 + 8);
    v45 = OUTLINED_FUNCTION_7_37();
    v46(v45);
  }

  sub_26812D9E0(v16, &qword_2802548D0, &qword_2683FA678);
LABEL_10:
  v47 = v76;
  sub_2683CDC38();
  v48 = v75;
  v72(v75, *MEMORY[0x277D5EFA8], v2);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v2);
  v52 = *(v73 + 48);
  v53 = v77;
  sub_2683CAD70(v47, v77, &qword_2802548D8, &unk_2683FA680);
  sub_2683CAD70(v48, v53 + v52, &qword_2802548D8, &unk_2683FA680);
  OUTLINED_FUNCTION_2_6(v53);
  if (!v41)
  {
    sub_2683CAD70(v53, v70, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_2_6(v53 + v52);
    if (!v54)
    {
      v63 = v78;
      v64 = v71;
      (*(v78 + 32))(v71, v53 + v52, v2);
      sub_2683CAD18();
      v65 = sub_2683CFA58();
      v66 = *(v63 + 8);
      v66(v64, v2);
      sub_26812D9E0(v48, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v47, &qword_2802548D8, &unk_2683FA680);
      v67 = OUTLINED_FUNCTION_21_30();
      (v66)(v67);
      sub_26812D9E0(v53, &qword_2802548D8, &unk_2683FA680);
      return (v65 & 1) != 0;
    }

    OUTLINED_FUNCTION_9_12(v48);
    OUTLINED_FUNCTION_9_12(v47);
    v55 = *(v78 + 8);
    v56 = OUTLINED_FUNCTION_21_30();
    v57(v56);
LABEL_19:
    sub_26812D9E0(v53, &qword_2802548D0, &qword_2683FA678);
    return 0;
  }

  OUTLINED_FUNCTION_9_12(v48);
  OUTLINED_FUNCTION_9_12(v47);
  OUTLINED_FUNCTION_2_6(v53 + v52);
  if (!v41)
  {
    goto LABEL_19;
  }

  v40 = v53;
LABEL_15:
  sub_26812D9E0(v40, &qword_2802548D8, &unk_2683FA680);
  return 1;
}

unint64_t sub_2683CAD18()
{
  result = qword_2802548E0;
  if (!qword_2802548E0)
  {
    sub_2683CDC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548E0);
  }

  return result;
}

uint64_t sub_2683CAD70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2683CADC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_17_29(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}